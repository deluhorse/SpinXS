# -*- coding:utf-8 -*-
# WEB 入口文件
# 通过web/conf/route.py文件来配置路由
from __future__ import absolute_import
import json
import sys;sys.path.append("../")
import tornado.web

# 设置环境，根据项目目录结构设置相对路径
from route import route, power
import source.controller as controller
from conf.config import CONF

print('server started, version: ' + CONF['version'])

if __name__ == '__main__':
    controller.server().start(route, CONF)
else:
    app = tornado.web.Application(route, **CONF)
