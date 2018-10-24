# -*- coding:utf-8 -*-

"""
@author: delu
@file: service_manager.py
@time: 17/4/18 下午5:21
service 服务模块
"""
import importlib

from tools.httputils import HttpUtils
from tools.logs import Logs
from .system_constants import SystemConstants

logger = Logs().logger


class ServiceManager(object):

    @staticmethod
    def do_local_service(service_path, method, params={}, version='', power=[]):
        """
        执行本地服务
        :param service_path: 
        :param method: 
        :param params: 
        :param version: 
        :return: 
        """
        model = importlib.import_module(version + '.module.' + service_path)

        service = model.Service()

        service.power_tree = power

        func = getattr(service, method)

        result = func(params)

        return result

    @staticmethod
    def do_remote_service(url, params, http_type='get'):
        """
        执行远程服务
        :param url: 
        :param params: 
        :return: 
        """
        try:
            if http_type == 'post':
                # 发送post请求
                HttpUtils.do_post(url, params)
            else:
                # 发送get请求
                HttpUtils.do_get(url, params)
        except Exception as e:
            logger.exception(e)
            return SystemConstants.REMOTE_SERVICE_ERROR

    @staticmethod
    def do_service(service_path='', method='', params={}, version='', power=[]):
        """
        执行服务
        :param service_path: 
        :param method: 
        :param params: 
        :param version: 
        :return: 
        """
        return ServiceManager.do_local_service(service_path, method, params, version, power)

    @staticmethod
    def get_fun(service_path, method, params, version='v1'):
        """
        根据方法路径获取方法实例
        :param service_path:
        :param method:
        :param params:
        :param version:
        :return:
        """
        model = importlib.import_module(version + '.module.' + service_path)
        service = model.Service()

        # 如果语言不存在，则默认为中文
        if 'language' not in params or not params['language']:
            params['language'] = 'cn'
        language_module = importlib.import_module('language.' + params['language'])
        setattr(service, 'language_code', language_module.Code)
        func = getattr(service, method)
        return func
