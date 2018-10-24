ALTER TABLE `tbl_um_bind_phone`
DROP PRIMARY KEY,
ADD PRIMARY KEY (`buyer_id`, `shop_id`, `scene_type`) USING BTREE,
ADD INDEX `index_mobile`(`mobile`) USING BTREE;