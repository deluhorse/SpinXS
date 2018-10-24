# -*- coding:utf-8 -*-

import datetime
import hashlib
import importlib
import json
import random
import time

import tornado.escape
import tornado.gen

import conf.config as config
import task
from constants.constants import Constants
from constants.error_code import Code
from source.async_redis import AsyncRedis
from source.properties import Properties
from source.service_manager import ServiceManager as serviceManager
from task import schedule
from tools.common_util import CommonUtil
from tools.date_json_encoder import CJsonEncoder
from tools.date_utils import DateUtils
from tools.httputils import HttpUtils
from tools.logs import Logs
from tools.string_util import StringUtils


class ServiceBase(object):
    dicConfig = config.CONF
    time = time
    datetime = datetime
    json = json
    hashlib = hashlib
    constants = Constants
    error_code = Code
    properties = Properties()
    redis = AsyncRedis()
    httputils = HttpUtils
    date_utils = DateUtils
    common_utils = CommonUtil
    string_utils = StringUtils
    date_encoder = CJsonEncoder
    logger = Logs().logger
    task = task
    schedule = schedule

    def md5(self, text):
        """
        md5加密
        :param text: 
        :return: 
        """
        result = hashlib.md5(text.encode(encoding='utf-8'))
        return result.hexdigest()

    def import_model(self, model_name):
        """
        加载数据类
        :param model_name: string 数据类名
        :return: 
        """
        try:
            model = importlib.import_module('module.' + model_name)
            return model.Model()
        except Exception as e:
            self.logger.exception(e)
            return None

    def salt(self, salt_len=6, is_num=False, chrset=''):
        """ 
        密码加密字符串
        生成一个固定位数的随机字符串，包含0-9a-z
        @:param salt_len 生成字符串长度
        """

        if is_num:
            chrset = '0123456789'
        else:
            if not chrset:
                chrset = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWSYZ'
        salt = []
        for i in range(salt_len):
            item = random.choice(chrset)
            salt.append(item)

        return ''.join(salt)

    def create_uuid(self):
        """
        创建随机字符串
        :return: 
        """
        text = str(time.time()) + self.salt(12)
        m = hashlib.md5()
        m.update(bytes(text.encode(encoding='utf-8')))
        return m.hexdigest()

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

    def _gre(self, data):
        """
        tornado.gen.Return
        :rtype:
        :param data: 数据
        :return: 
        """
        return tornado.gen.Return(self._e(data))

    def _grs(self, data={}):
        """
        成功返回
        :param data: 
        :return: 
        """
        result = self._e('SUCCESS')
        result['data'] = data
        return tornado.gen.Return(result)

    def _gr(self, data):
        """
        tornado.gen.Return
        :param data: 数据
        :return: 
        """
        return tornado.gen.Return(data)
