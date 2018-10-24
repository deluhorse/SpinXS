CREATE TABLE `tbl_sys_task_queue_failed` (
  `auto_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL COMMENT '处理人id',
  `path` varchar(300) NOT NULL DEFAULT '' COMMENT '方法路径',
  `method` varchar(100) DEFAULT '' COMMENT '方法名',
  `task_data` text NOT NULL COMMENT '队列json数据',
  `remark` varchar(300) NOT NULL DEFAULT '' COMMENT '错误原因',
  `create_time` datetime NOT NULL DEFAULT '2018-08-01 00:00:00' COMMENT '任务开始执行的时间',
  `process_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '管理员处理的时间',
  PRIMARY KEY (`auto_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
