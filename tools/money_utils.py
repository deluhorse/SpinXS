# coding: utf-8
"""
@author: xly
@file: money_utils
@time: 2018/5/30 下午4:34

"""


class MoneyUtils(object):

    @staticmethod
    def to_cent(value, is_cent=False):
        """
        把金额转化为分
        :param value: 需要转化的值
        :param is_cent: 值的单位 元／分
        :return:
        """
        # 转化成字符来计算
        if not isinstance(value, str):
            value = str(value)
        num = 0
        if value:
            if is_cent:
                return int(value.split('.')[0])
            else:
                num_list = value.split('.')
                num += int(num_list[0]) * 100
                if len(num_list) >= 2:
                    deci = num_list[1] + '00'
                    deci = deci[0: 2]
                    num += int(deci)
            return num
        return False

    @staticmethod
    def to_yuan(value, is_cent=False):
        """
        把金额转化成元
        :param value: 需要转化的值
        :param is_cent: 值的单位 元／分
        :return:
        """
        pass


if __name__ == '__main__':
    s = MoneyUtils()
    # print s.money2int(1.134, to_cent=False)
    print(s.to_cent('12'))
    print(s.to_cent('12.3'))
    print(s.to_cent('12.34'))
    print(s.to_cent('12.345'))
    print(s.to_cent(12))
    print(s.to_cent(12.3))
    print(s.to_cent(12.34))
    print(s.to_cent(12.345))
    print(s.to_cent(12.345, True))
    print(s.to_cent('12.345', True))
    print(s.to_cent(12345, True))
    print(s.to_cent('12345', True))
