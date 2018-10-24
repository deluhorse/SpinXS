# -*- coding:utf-8 -*-

"""
@author: delu
@file: create.py
@time: 18/10/23 15:04
"""
from base.base import Base
import tornado.gen


class Controller(Base):
    auth = (None, False)

    @tornado.gen.coroutine
    def post(self):
        params = self.params()
        res = yield self.do_service('user.service', 'create_user', params=params)

        if res['code'] == 0:
            # 写cookie
            yield self.create_token(res['data'])
        self.out(res)
