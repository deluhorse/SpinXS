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
    def login(self, params={}):
        """
        用户登录
        :param params: 
        :return: 
        """
        if self.common_utils.is_empty(['account', 'password'], params):
            raise self._gre('PARAMS_NOT_EXIST')

        user_result = yield self.user_model.query_account(params['account'])

        if not user_result:

            raise self._gre('USER_ACCOUNT_NOT_EXIST')

        if self.md5(params['password'] + user_result['salt']) != user_result['password']:

            raise self._gre('USER_PASSWORD_ERROR')

        raise self._grs({
            'account': user_result['account'],
            'user_id': user_result['user_id'],
            'nick_name': user_result['nick_name']
        })
