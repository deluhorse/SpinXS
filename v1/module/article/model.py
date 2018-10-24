# -*- coding:utf-8 -*-

"""
@author: delu
@file: model.py
@time: 18/10/24 10:33
"""

from source.async_model import AsyncModelBase
import tornado.gen


class Model(AsyncModelBase):
    @tornado.gen.coroutine
    def create_article(self, params):
        """
        创建文章
        """
        sql_list = []

        article_key = 'article_id, user_id, title, url'
        article_value_tuple = (params['article_id'], params['user_id'], params['title'], params['url'], params['title'])
        article_duplicate_key = [
            'title=%s'
        ]

        sql_list.append({
            self.sql_constants.SQL_TYPE: self.sql_constants.INSERT,
            self.sql_constants.TABLE_NAME: 'tbl_article',
            self.sql_constants.DICT_DATA: {
                self.sql_constants.KEY: article_key,
                self.sql_constants.DUPLICATE_KEY_UPDATE: article_duplicate_key
            },
            self.sql_constants.VALUE_TUPLE: article_value_tuple
        })

        word_key = 'article_id, user_id, word'
        word_value_tuple = (params['article_id'], params['user_id'], params['word'], params['word'])
        word_duplicate_key = [
            'word=%s'
        ]

        sql_list.append({
            self.sql_constants.SQL_TYPE: self.sql_constants.INSERT,
            self.sql_constants.TABLE_NAME: 'tbl_word',
            self.sql_constants.DICT_DATA: {
                self.sql_constants.KEY: word_key,
                self.sql_constants.DUPLICATE_KEY_UPDATE: word_duplicate_key
            },
            self.sql_constants.VALUE_TUPLE: word_value_tuple
        })

        result = yield self.do_sqls(sql_list)

        raise self._gr(result)

    @tornado.gen.coroutine
    def query_article(self, params):
        """
        查询文章
        :param params: 
        :return: 
        """
        condition = ' 1=1 '
        value_list = []

        if 'url' in params and params['url']:

            condition += ' and url = %s '
            value_list.append(params['url'])

        if 'user_id' in params and params['user_id']:

            condition += ' and user_id = %s '
            value_list.append(params['user_id'])

        result = yield self.find(
            'tbl_article',
            {
                self.sql_constants.CONDITION: condition
            },
            tuple(value_list)
        )

        if result:

            word_list = yield self.query_word_list(result['article_id'])

            result['word_list'] = word_list

        raise self._gr(result)

    @tornado.gen.coroutine
    def query_word_list(self, article_id):

        condition = ' article_id = %s '

        value_tuple = (article_id,)

        result = yield self.find(
            'tbl_word',
            {
                self.sql_constants.CONDITION: condition
            },
            value_tuple,
            self.sql_constants.LIST
        )

        raise self._gr(result)
