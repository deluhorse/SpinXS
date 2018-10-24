#!/usr/bin/env python
# -*- coding:utf-8 -*-
# 路由配置
# 增加控制器, 导入控制器文件引用类，并修改route list

import importlib
import os

import v1.base.error as error
from v1.conf.config import CONF
from tools.logs import Logs


logger = Logs().logger
version = CONF['version']
host_path = CONF['host_path']
route_path = host_path + version
root_dir = '../' + version + '/module'
root_path = version + '.module'
route = []
controller_list = []
power = []


def init(dir_name):
    """
    加载控制器
    遍历module目录下所有文件，将文件名带有_co的文件导入并建立访问地址
    :param dir_name:
    :return:
    """
    controller_num = 0

    for parent, dir_names, file_names in os.walk(dir_name):
        for file_name in file_names:
            controller_path = parent.replace(root_dir, '').replace('\\', '/') + '/' + file_name.replace('.py', '')
            controller_key = root_path + controller_path.replace('/', '.').replace('\\', '.')
            if not (file_name.endswith('.pyc') or file_name.endswith('.DS_Store') or file_name.startswith('__')
                    or file_name.startswith('base') or 'service' in file_name or 'model' in file_name):
                try:
                    controller_module = importlib.import_module(controller_key)
                    if hasattr(controller_module, 'Controller'):
                        controller_item = controller_module.Controller
                        controller_list.append(controller_path)
                        controller_path = r"" + route_path + controller_path + "/*"
                        route.append((controller_path, controller_item))
                        controller_num += 1
                        print('register controller: ' + controller_path)
                except Exception as e:
                    logger.exception(e)
    route.append((r".*", error.Error))
    print('controller num: ' + str(controller_num))


init(root_dir)
