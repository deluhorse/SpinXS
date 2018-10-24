# -*- coding: utf-8 -*-

"""
更新数据库脚本
@author: Yuiitsu
@file: update_sql
@time: 2018/7/10 16:21
"""
import sys;sys.path.append("../")
import asyncio
from update.update_sql import Model


def run():
    # 获取参数
    arguments = sys.argv
    for k, v in enumerate(arguments):
        if v == '-t':
            loop_num = arguments[k + 1]

        if v == '-c':
            config_file = arguments[k + 1]

    event_loop = asyncio.get_event_loop()
    event_loop.run_until_complete(Model().execute_sql())


if __name__ == '__main__':
    run()
