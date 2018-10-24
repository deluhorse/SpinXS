delete from `tbl_um_buyer_id_card`
where `id_card` in (
    select `id_card` from (
        select *, count(1) as cnt from `tbl_um_buyer_id_card`
        GROUP BY `buyer_id`, `id_card`
        HAVING cnt > 1
    ) tmp
) and `buyer_id` in (
    select `buyer_id` from (
        select *, count(1) as cnt from `tbl_um_buyer_id_card`
        GROUP BY `buyer_id`, `id_card`
        HAVING cnt > 1
    ) tmp
);
ALTER TABLE `tbl_um_buyer_id_card`
ADD COLUMN `valid` tinyint(1) NOT NULL DEFAULT 0 COMMENT '身份证是否经过验证：0、未认证 , 1、通过认证' AFTER `last_update_time`,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`buyer_id`, `id_card`) USING BTREE;