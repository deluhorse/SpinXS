# -*- coding:utf-8 -*-

"""
@author: delu
@file: service.py
@time: 18/10/23 15:50
"""
import sys
from test.tester import Tester
from v1.base.service import ServiceBase


class MyTest(Tester):
    """
    service
    """

    def create_user(self):
        self.path = 'user.service'
        self.method = 'create_user'
        self.params = {
            'account': '18616148439',
            'password': '123456',
            'nick_name': '迪路兽',
            'logo_url': 'http://www.baidu.com'
        }


if __name__ == '__main__':
    my_test = MyTest()
    my_test.run('create_user')
