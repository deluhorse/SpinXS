# -*- coding:utf-8 -*-

"""
@author: delu
@file: service.py
@time: 18/10/23 15:04
"""
from base.service import ServiceBase
import tornado.gen


class Service(ServiceBase):
    """
    service
    """

    user_model = None

    def __init__(self):
        """
        对象初始化方法
        添加你需要使用的model
        格式 项目model文件夹下的文件名或者 包名1.包名2.文件名 (无.py后缀)
        """
        self.user_model = self.import_model('user.model')

    @tornado.gen.coroutine
    def create_user(self, params={}):
        """
        创建用户
        :param params: 
        :return: 
        """
        if self.common_utils.is_empty(['account', 'password', 'nick_name'], params):
            raise self._gre('PARAMS_NOT_EXIST')

        user_result = yield self.query_user(params)

        if user_result['code'] == 0:
            raise self._gre('USER_EXIST')

        user_id = self.create_uuid()

        salt = self.salt(salt_len=6)

        params['password'] = self.md5(params['password'] + salt)

        params['salt'] = salt

        params['user_id'] = user_id

        params['logo_url'] = params.get('logo_url', 'www.google.com')

        result = yield self.user_model.create_user(params)

        if not result:
            raise self._gre('SQL_EXECUTE_ERROR')

        raise self._grs({
            'account': params['account'],
            'user_id': params['user_id'],
            'nick_name': params['nick_name']
        })

    @tornado.gen.coroutine
    def query_user(self, params):
        """
        查询用户
        :param params: 
        :return: 
        """
        if self.common_utils.is_empty(['account'], params):
            raise self._gre('PARAMS_NOT_EXIST')

        result = yield self.user_model.query_account(params)

        if not result:

            raise self._gre('USER_ACCOUNT_NOT_EXIST')

        raise self._grs(result)
