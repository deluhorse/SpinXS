
CREATE TABLE `tbl_gm_goods_comments` (
`comment_id` varchar(32) NOT NULL,
`goods_id` varchar(20) NOT NULL,
`shop_id` char(16) NOT NULL,
`buyer_id` varchar(50) NOT NULL,
`content` varchar(1000) NOT NULL COMMENT '评论内容，最多1000个字符',
`status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '评论状态，1为正常，0为锁定，默认为1',
`is_delete` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否逻辑删除，0否，1是，默认0',
`create_time` datetime NOT NULL DEFAULT 2018-10-22 00:00:00 COMMENT '创建时间',
`last_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
PRIMARY KEY (`comment_id`) ,
INDEX `goods_id` (`goods_id` ASC),
INDEX `shop_id` (`shop_id` ASC),
INDEX `buyer_id` (`buyer_id` ASC)
);
