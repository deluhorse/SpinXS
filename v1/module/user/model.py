# -*- coding:utf-8 -*-

"""
@author: delu
@file: model.py
@time: 18/10/23 15:04
"""

from source.async_model import AsyncModelBase
import tornado.gen


class Model(AsyncModelBase):
    @tornado.gen.coroutine
    def create_user(self, params):
        """
        创建用户
        """
        sql_list = []

        user_key = 'user_id, nick_name, logo_url'
        user_value_tuple = (params['user_id'], params['nick_name'], params['logo_url'])

        sql_list.append({
            self.sql_constants.SQL_TYPE: self.sql_constants.INSERT,
            self.sql_constants.TABLE_NAME: 'tbl_um_user',
            self.sql_constants.DICT_DATA: {
                self.sql_constants.KEY: user_key
            },
            self.sql_constants.VALUE_TUPLE: user_value_tuple
        })

        account_key = 'account, user_id, password, salt'
        account_value_tuple = (params['account'], params['user_id'], params['password'], params['salt'])

        sql_list.append({
            self.sql_constants.SQL_TYPE: self.sql_constants.INSERT,
            self.sql_constants.TABLE_NAME: 'tbl_um_account',
            self.sql_constants.DICT_DATA: {
                self.sql_constants.KEY: account_key
            },
            self.sql_constants.VALUE_TUPLE: account_value_tuple
        })

        result = yield self.do_sqls(sql_list)

        raise self._gr(result)

    @tornado.gen.coroutine
    def query_account(self, params):
        """
        查询用户
        :param params: 
        :return: 
        """
        fields = [
            'user.*',
            'account.account',
            'account.password',
            'account.salt'
        ]
        condition = ' 1=1 '
        value_list = []

        if 'account' in params and params['account']:

            condition += ' and account.account = %s '
            value_list.append(params['account'])

        join = [{
            self.sql_constants.TABLE_NAME: 'tbl_um_user as user',
            self.sql_constants.JOIN_CONDITION: ' account.user_id = user.user_id '
        }]

        result = yield self.find(
            'tbl_um_account as account',
            {
                self.sql_constants.FIELDS: fields,
                self.sql_constants.CONDITION: condition,
                self.sql_constants.JOIN: join
            },
            tuple(value_list)
        )

        raise self._gr(result)
