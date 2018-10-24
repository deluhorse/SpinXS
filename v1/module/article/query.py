# -*- coding:utf-8 -*-

"""
@author: delu
@file: query.py
@time: 18/10/24 11:25
"""
from base.base import Base
import tornado.gen


class Controller(Base):
    auth = (('user',), False)

    @tornado.gen.coroutine
    def get(self):
        params = self.params()
        params['user_id'] = self.user_data['user_id']
        res = yield self.do_service('article.service', 'query_article', params=params)
        self.out(res)
