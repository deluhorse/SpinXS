# -*- coding:utf-8 -*-

"""
@author: delu
@file: service.py
@time: 18/10/24 10:33
"""
from base.service import ServiceBase
import tornado.gen


class Service(ServiceBase):
    """
    service
    """

    article_model = None

    def __init__(self):
        """
        对象初始化方法
        添加你需要使用的model
        格式 项目model文件夹下的文件名或者 包名1.包名2.文件名 (无.py后缀)
        """
        self.article_model = self.import_model('article.model')

    @tornado.gen.coroutine
    def create_article(self, params={}):
        """
        创建文章
        :param params: 
        :return: 
        """
        if self.common_utils.is_empty(['url', 'word', 'user_id'], params):
            raise self._gre('PARAMS_NOT_EXIST')

        article_result = yield self.article_model.query_article(params)

        if article_result is False:

            raise self._gre('SQL_EXECUTE_ERROR')

        article_id = self.salt(salt_len=10)
        if article_result:

            # 文章不存在，则新建
            article_id = article_result['article_id']

        result = yield self.article_model.create_article({
            'article_id': article_id,
            'user_id': params['user_id'],
            'url': params['url'],
            'word': params['word'],
            'title': params.get('title', '无标题')
        })

        if not result:
            raise self._gre('SQL_EXECUTE_ERROR')

        raise self._grs()

    @tornado.gen.coroutine
    def query_article(self, params):
        """
        查询文章
        :param params: 
        :return: 
        """
        if self.common_utils.is_empty(['url', 'user_id'], params):
            raise self._gre('PARAMS_NOT_EXIST')

        result = yield self.article_model.query_article(params)

        if not result:

            raise self._gre('ARTICLE_NOT_FOUND')

        raise self._grs(result)
