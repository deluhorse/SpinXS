# -*- coding:utf-8 -*-

"""
@author: delu
@file: create.py
@time: 18/10/24 10:33
"""
from base.base import Base
import tornado.gen


class Controller(Base):
    auth = (('user',), False)

    @tornado.gen.coroutine
    def post(self):
        params = self.params()
        params['user_id'] = self.user_data['user_id']
        res = yield self.do_service('article.service', 'create_article', params=params)
        self.out(res)
