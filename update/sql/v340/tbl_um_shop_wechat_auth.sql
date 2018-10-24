ALTER TABLE `tbl_um_shop_wechat_auth`
ADD COLUMN `authorizer_type` varchar(32) NOT NULL DEFAULT 'service_account' COMMENT '授权类型  service_account 服务号  mini_app 小程序',
DROP PRIMARY KEY,
ADD PRIMARY KEY (`authorizer_type`, `shop_id`) USING BTREE;

ALTER TABLE `tbl_um_shop_wechat_auth`
ADD COLUMN `status` smallint(1) NOT NULL DEFAULT 1 COMMENT '当前授权状态， 1 生效  -1  失效' AFTER `authorizer_type`;