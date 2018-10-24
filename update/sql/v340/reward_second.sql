alter table tbl_pm_phlit_code add `reward_rate` smallint(6) NOT NULL DEFAULT '0' COMMENT ' 首笔订单奖励金比率';
alter table tbl_pm_phlit_code add `non_first_rate` smallint(6) NOT NULL DEFAULT '0' COMMENT '非首笔订单奖励金比率';
alter table tbl_pm_phlit_code add `order_nums` int(11) NOT NULL DEFAULT '0' COMMENT '付款订单数';

alter table tbl_pm_phlit add `non_first_rate` smallint(6) NOT NULL DEFAULT '0' COMMENT ' 非首笔订单奖励金比率';

alter table tbl_fm_buyer_balance_record add `reward_rate` smallint(6) NOT NULL DEFAULT '0' COMMENT '奖励金比例';