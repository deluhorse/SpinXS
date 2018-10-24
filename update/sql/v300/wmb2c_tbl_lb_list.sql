ALTER TABLE tbl_lb_list ADD COLUMN order_type TINYINT(1) NOT NULL DEFAULT '0' COMMENT '文件排序';
UPDATE tbl_lb_list SET order_type=1 WHERE data_type=0;
UPDATE tbl_lb_list SET order_type=2 WHERE data_type=2;