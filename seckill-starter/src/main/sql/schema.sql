-- 数据库初始化
-- 创建数据库
CREATE DATABASE seckill;
-- 使用数据库
use seckill;
-- 创建表
CREATE TABLE seckill(
`seckill_id` bigint not null AUTO_INCREMENT COMMENT '商品库存id',
   `name` varchar(120) not null comment '商品名称',
   `number` int not NULL comment '库存数量',
   `start_time` TIMESTAMP not NULL comment '秒杀开始时间',
   `end_time` TIMESTAMP not NULL comment '秒杀开始时间',
   `create_time` TIMESTAMP not null DEFAULT current_timestamp comment '创建时间',
PRIMARY key (seckill_id),
key idx_start_time (start_time),
 key idx_end_time(end_time),
key idx_create_time(create_time)
)ENGINE=InnoDB auto_increment=1000 DEFAULT CHARSET=utf8 COMMENT='秒杀库存表';

-- 初始化数据
insert into seckill (name,number,start_time,end_time)
   VALUES
      ('1000元秒杀iPhone X',10,'2018-04-23 00:00:00','2018-04-24 00:00:00'),
      ('500元秒杀Beats',20,'2018-04-23 00:00:00','2018-04-24 00:00:00'),
      ('200元秒杀iPad',30,'2018-04-23 00:00:00','2018-04-24 00:00:00'),
      ('100元秒杀小猪佩奇',40,'2018-04-23 00:00:00','2018-04-24 00:00:00');

-- 秒杀成功明细表
-- 用户认证相关信息
CREATE TABLE success_killed(
`seckill_id` bigint not null auto_increment comment '秒杀商品id',
`user_phone` bigint  not null comment '用户手机号',
`state` TINYINT not NULL DEFAULT -1 comment '状态标识:-1:无效 0:成功 1:已付款',
`create_time` TIMESTAMP not null  comment '创建时间',
PRIMARY key (seckill_id,user_phone),/*联合主键*/
key idx_create_time(create_time)
)ENGINE=InnoDB auto_increment=1000 DEFAULT CHARSET=utf8 COMMENT='秒杀成功明细表';

-- 连接数据库控制台

-- mysql -uroot -P

