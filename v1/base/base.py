#!usr/bin/env python
# -*- coding:utf-8 -*-

import hashlib
import json
import random
import time

import tornado.gen

import conf.config as config
from constants.constants import Constants
from constants.error_code import Code
from source.async_redis import AsyncRedis
from source.controller import Controller
from source.properties import Properties
from source.service_manager import ServiceManager as serviceManager
from tools.date_json_encoder import CJsonEncoder
from tools.logs import Logs


class Base(Controller):

    json = json
    time = time
    logged_user = {}
    redis = AsyncRedis()
    user_data = {}
    version = config.CONF['version']
    error_code = Code
    constants = Constants
    properties = Properties()
    logger = Logs().logger
    auth = None
    _params = {}

    @tornado.gen.coroutine
    def prepare(self):
        """
        接受请求前置方法
            1.解析域名
            2.检查IP限制
            3.权限检查
        :return:
        """
        # 访问者身份标识
        self._params = self.get_params()

        user_data_dict = yield self.__get_login_user_data()
        if self.auth:
            if self.auth[0] is not None:
                auth_status = yield self.auth_check(user_data_dict)
                if not auth_status:
                    self.finish()

    @tornado.gen.coroutine
    def auth_check(self, user_data_dict):
        """
        登录认证
            根据控制器的权限设置，调用不同的权限检查
        """
        auth = self.auth
        # 如果没有设置权限，返回
        if not auth or not auth[0]:
            raise self._gr(True)

        is_auth_error = False
        is_login = True
        is_auth = True
        power_group = auth[0]
        # 2.根据控制器设置，进行检查
        for group in power_group:
            if group == 'user':
                # 买家
                user_data = user_data_dict.get('user', {})
                if user_data:
                    is_login = True
                    is_auth = True
                    break

        if is_auth_error:
            self.error_out(self._e('AUTH_SET_ERROR'))
            raise self._gr(False)

        if not is_login:
            self.error_out(self._e('NOT_LOGIN'))
            raise self._gr(False)

        if not is_auth:
            self.error_out(self._e('AUTH_ERROR'))
            raise self._gr(False)

        raise self._gr(True)

    @tornado.gen.coroutine
    def __get_login_user_data(self):
        """
        获取用户的登录信息
        :return:
        """
        result = {}
        # 买家
        user_token = self.params('user_token') if self.params('user_token') else self.get_cookie('user_token')
        if user_token:
            user_data = yield self.redis.hgetall(user_token)
            self.user_data = user_data
            result['user'] = user_data

        raise self._gr(result)

    @tornado.gen.coroutine
    def create_token(self, params):
        """
        创建token和cookie
        :param params:
        :return:
        """
        user_token = params['account'] + ':user:token:' + self.create_uuid()

        yield self.redis.hmset(user_token, params)

        self.set_cookie('user_token', user_token)

    def md5(self, text):
        """ 
        MD5加密
        @:param text 需加密字符串
        @return 加密后字符串
        """
        result = hashlib.md5(text.encode('utf-8'))
        return result.hexdigest()

    def create_uuid(self):
        """
        声称随机字符串
        :return: 
        """
        m = hashlib.md5()
        m.update(bytes(str(time.time()), encoding='utf-8'))
        return m.hexdigest()

    def salt(self, salt_len=6, is_num=False):
        """ 
        密码加密字符串
        生成一个固定位数的随机字符串，包含0-9a-z
        @:param salt_len 生成字符串长度
        """

        if is_num:
            chrset = '0123456789'
        else:
            chrset = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWSYZ'
        salt = []
        for i in range(salt_len):
            item = random.choice(chrset)
            salt.append(item)

        return ''.join(salt)

    def out(self, data):
        """ 
        输出结果
        :param data: 返回数据字典
        """
        self.set_header("Content-Type", "application/json; charset=UTF-8")
        self.write(self.json.dumps(data, cls=CJsonEncoder))

    def error_out(self, error, data=''):
        """
        错误输出
        :param error: 错误信息对象
        :param data: 返回数据字典
        :return: 
        """
        out = error
        if data:
            out['data'] = data

        self.write(out)

    @tornado.gen.coroutine
    def get(self):
        """
        重写父类get方法，接受GET请求
        如果执行到此方法，说明请求类型错误
        """
        self.error_out(self._e('REQUEST_TYPE_ERROR'))

    @tornado.gen.coroutine
    def post(self):
        """
        重写父类post方法，接受POST请求
        如果执行到此方法，说明请求类型错误
        """
        self.error_out(self._e('REQUEST_TYPE_ERROR'))

    def do_service(self, service_path, method, params={}):
        """
        调用服务
        :param service_path: 
        :param method: 
        :param params: 
        :return: 
        """
        return serviceManager.do_service(service_path, method, params=params, version=config.CONF['version'])

    def _e(self, error_key):
        """
        :param error_key:
        :return: 
        """
        data = {}
        for key in self.error_code[error_key]:
            data[key] = self.error_code[error_key][key]

        return data

    def _gr(self, data):
        """
        tornado.gen.Return
        :param data: 数据
        :return:
        """
        return tornado.gen.Return(data)

    def params(self, key=''):
        """
        获取参数中指定key的数据
        :param key:
        :return:
        """
        if not key:
            return self._params
        elif key not in self._params:
            return ''
        else:
            return self._params[key]
