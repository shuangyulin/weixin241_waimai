/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - waimaixiaochengxu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`waimaixiaochengxu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `waimaixiaochengxu`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,2,'收货人1','17703786901','地址1',1,'2022-04-19 09:31:53','2022-04-19 09:31:53','2022-04-19 09:31:53'),(2,2,'收货人2','17703786902','地址2',1,'2022-04-19 09:31:53','2022-04-19 09:31:53','2022-04-19 09:31:53'),(3,2,'收货人3','17703786903','地址3',1,'2022-04-19 09:31:53','2022-04-19 09:31:53','2022-04-19 09:31:53'),(4,3,'收货人4','17703786904','地址4',1,'2022-04-19 09:31:53','2022-04-19 09:31:53','2022-04-19 09:31:53'),(5,1,'收货人5','17703786905','地址5',1,'2022-04-19 09:31:53','2022-04-19 09:31:53','2022-04-19 09:31:53'),(6,1,'张先生','13311441231','在地图选择',2,'2022-04-19 10:07:34','2022-04-19 10:07:33','2022-04-19 10:07:34');

/*Table structure for table `caipin` */

DROP TABLE IF EXISTS `caipin`;

CREATE TABLE `caipin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `caipin_uuid_number` varchar(200) DEFAULT NULL COMMENT '菜品编号  Search111 ',
  `caipin_name` varchar(200) DEFAULT NULL COMMENT '菜品名称  Search111 ',
  `caipin_photo` varchar(200) DEFAULT NULL COMMENT '菜品照片',
  `caipin_types` int(11) DEFAULT NULL COMMENT '菜品类型 Search111',
  `caipin_kucun_number` int(11) DEFAULT NULL COMMENT '菜品库存',
  `caipin_price` int(11) DEFAULT NULL COMMENT '购买获得积分 ',
  `caipin_old_money` decimal(10,2) DEFAULT NULL COMMENT '菜品原价 ',
  `caipin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价/积分 ',
  `caipin_clicknum` int(11) DEFAULT NULL COMMENT '点击次数 ',
  `caipin_content` text COMMENT '菜品介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `caipin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='菜品';

/*Data for the table `caipin` */

insert  into `caipin`(`id`,`caipin_uuid_number`,`caipin_name`,`caipin_photo`,`caipin_types`,`caipin_kucun_number`,`caipin_price`,`caipin_old_money`,`caipin_new_money`,`caipin_clicknum`,`caipin_content`,`shangxia_types`,`caipin_delete`,`create_time`) values (1,'165033191360616','菜品名称1','http://localhost:8080/waimaixiaochengxu/upload/caipin1.jpg',1,101,198,'631.88','245.19',387,'菜品介绍1',1,1,'2022-04-19 09:31:53'),(2,'16503319136062','菜品名称2','http://localhost:8080/waimaixiaochengxu/upload/caipin2.jpg',2,101,341,'821.16','130.57',361,'菜品介绍2',1,1,'2022-04-19 09:31:53'),(3,'16503319136069','菜品名称3','http://localhost:8080/waimaixiaochengxu/upload/caipin3.jpg',3,102,382,'611.21','377.21',421,'菜品介绍3',1,1,'2022-04-19 09:31:53'),(4,'16503319136062','菜品名称4','http://localhost:8080/waimaixiaochengxu/upload/caipin4.jpg',2,102,253,'567.53','327.32',272,'菜品介绍4',1,1,'2022-04-19 09:31:53'),(5,'16503319136073','菜品名称5','http://localhost:8080/waimaixiaochengxu/upload/caipin5.jpg',3,99,28,'798.49','465.84',195,'菜品介绍5',1,1,'2022-04-19 09:31:53');

/*Table structure for table `caipin_collection` */

DROP TABLE IF EXISTS `caipin_collection`;

CREATE TABLE `caipin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `caipin_id` int(11) DEFAULT NULL COMMENT '菜品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `caipin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='菜品收藏';

/*Data for the table `caipin_collection` */

insert  into `caipin_collection`(`id`,`caipin_id`,`yonghu_id`,`caipin_collection_types`,`insert_time`,`create_time`) values (2,2,3,1,'2022-04-19 09:31:53','2022-04-19 09:31:53'),(3,3,3,1,'2022-04-19 09:31:53','2022-04-19 09:31:53'),(4,4,1,1,'2022-04-19 09:31:53','2022-04-19 09:31:53');

/*Table structure for table `caipin_commentback` */

DROP TABLE IF EXISTS `caipin_commentback`;

CREATE TABLE `caipin_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `caipin_id` int(11) DEFAULT NULL COMMENT '菜品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `caipin_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='菜品评价';

/*Data for the table `caipin_commentback` */

insert  into `caipin_commentback`(`id`,`caipin_id`,`yonghu_id`,`caipin_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'评价内容1','2022-04-19 09:31:53','回复信息1','2022-04-19 09:31:53','2022-04-19 09:31:53'),(2,2,2,'评价内容2','2022-04-19 09:31:53','回复信息2','2022-04-19 09:31:53','2022-04-19 09:31:53'),(3,3,1,'评价内容3','2022-04-19 09:31:53','回复信息3','2022-04-19 09:31:53','2022-04-19 09:31:53'),(4,4,3,'评价内容4','2022-04-19 09:31:53','回复信息4','2022-04-19 09:31:53','2022-04-19 09:31:53'),(6,5,1,'评论内容1111','2022-04-19 10:07:57',NULL,NULL,'2022-04-19 10:07:57');

/*Table structure for table `caipin_order` */

DROP TABLE IF EXISTS `caipin_order`;

CREATE TABLE `caipin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `caipin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `caipin_id` int(11) DEFAULT NULL COMMENT '菜品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `caipin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `caipin_order_courier_name` varchar(200) DEFAULT NULL COMMENT '配送员',
  `caipin_order_courier_number` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `caipin_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `caipin_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `caipin_order_text` text COMMENT '订单备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='菜品订单';

/*Data for the table `caipin_order` */

insert  into `caipin_order`(`id`,`caipin_order_uuid_number`,`address_id`,`caipin_id`,`yonghu_id`,`buy_number`,`caipin_order_true_price`,`caipin_order_courier_name`,`caipin_order_courier_number`,`caipin_order_types`,`caipin_order_payment_types`,`caipin_order_text`,`insert_time`,`create_time`) values (1,'1650332674742',5,2,1,1,'130.57','李四','17748855961',3,1,'无备注','2022-04-19 09:44:35','2022-04-19 09:44:35'),(2,'1650332674742',5,5,1,1,'465.84','张三','131212312311412',5,1,'无备注','2022-04-19 09:44:35','2022-04-19 09:44:35'),(3,'1650333783593',5,4,1,1,'327.32',NULL,NULL,1,1,'无备注','2022-04-19 10:03:04','2022-04-19 10:03:04'),(4,'1650333783593',5,3,1,1,'377.21','王五','13311441211',5,1,'无备注','2022-04-19 10:03:04','2022-04-19 10:03:04'),(5,'1650334132562',6,5,1,1,'465.84',NULL,NULL,1,1,'请尽快送餐 ！！！！！！','2022-04-19 10:08:53','2022-04-19 10:08:53'),(6,'1650334132562',6,4,1,1,'327.32',NULL,NULL,1,1,'请尽快送餐 ！！！！！！','2022-04-19 10:08:53','2022-04-19 10:08:53');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `caipin_id` int(11) DEFAULT NULL COMMENT '菜品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/waimaixiaochengxu/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/waimaixiaochengxu/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/waimaixiaochengxu/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2022-04-19 09:31:45'),(2,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2022-04-19 09:31:45'),(3,'shangxia_types','上下架',1,'上架',NULL,NULL,'2022-04-19 09:31:45'),(4,'shangxia_types','上下架',2,'下架',NULL,NULL,'2022-04-19 09:31:45'),(5,'caipin_types','菜品类型',1,'菜品类型1',NULL,NULL,'2022-04-19 09:31:45'),(6,'caipin_types','菜品类型',2,'菜品类型2',NULL,NULL,'2022-04-19 09:31:45'),(7,'caipin_types','菜品类型',3,'菜品类型3',NULL,NULL,'2022-04-19 09:31:45'),(8,'caipin_order_types','订单类型',1,'已支付',NULL,NULL,'2022-04-19 09:31:45'),(9,'caipin_order_types','订单类型',2,'退款',NULL,NULL,'2022-04-19 09:31:45'),(10,'caipin_order_types','订单类型',3,'已配送',NULL,NULL,'2022-04-19 09:31:45'),(11,'caipin_order_types','订单类型',4,'已取餐',NULL,NULL,'2022-04-19 09:31:45'),(12,'caipin_order_types','订单类型',5,'已评价',NULL,NULL,'2022-04-19 09:31:45'),(13,'caipin_order_payment_types','订单支付类型',1,'现金',NULL,NULL,'2022-04-19 09:31:45'),(14,'caipin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-04-19 09:31:45'),(15,'sex_types','性别类型',1,'男',NULL,NULL,'2022-04-19 09:31:45'),(16,'sex_types','性别类型',2,'女',NULL,NULL,'2022-04-19 09:31:45'),(17,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-04-19 09:31:45'),(18,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-04-19 09:31:45'),(19,'news_types','公告类型',3,'活动信息',NULL,NULL,'2022-04-19 09:31:45'),(20,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-04-19 09:31:45'),(21,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-04-19 09:31:45');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',3,NULL,'发布内容1',NULL,1,'2022-04-19 09:31:53','2022-04-19 09:31:53','2022-04-19 09:31:53'),(2,'帖子标题2',3,NULL,'发布内容2',NULL,1,'2022-04-19 09:31:53','2022-04-19 09:31:53','2022-04-19 09:31:53'),(3,'帖子标题3',3,NULL,'发布内容3',NULL,1,'2022-04-19 09:31:53','2022-04-19 09:31:53','2022-04-19 09:31:53'),(4,'帖子标题4',1,NULL,'发布内容4',NULL,1,'2022-04-19 09:31:53','2022-04-19 09:31:53','2022-04-19 09:31:53'),(5,'帖子标题5',2,NULL,'发布内容5',NULL,1,'2022-04-19 09:31:53','2022-04-19 09:31:53','2022-04-19 09:31:53'),(6,NULL,NULL,1,'管理评论23',5,2,'2022-04-19 10:04:27',NULL,'2022-04-19 10:04:27'),(7,NULL,1,NULL,'评论23123',5,2,'2022-04-19 10:07:02',NULL,'2022-04-19 10:07:02');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',3,'http://localhost:8080/waimaixiaochengxu/upload/news1.jpg','2022-04-19 09:31:53','公告详情1','2022-04-19 09:31:53'),(2,'公告标题2',2,'http://localhost:8080/waimaixiaochengxu/upload/news2.jpg','2022-04-19 09:31:53','公告详情2','2022-04-19 09:31:53'),(3,'公告标题3',1,'http://localhost:8080/waimaixiaochengxu/upload/news3.jpg','2022-04-19 09:31:53','公告详情3','2022-04-19 09:31:53'),(4,'公告标题4',1,'http://localhost:8080/waimaixiaochengxu/upload/news4.jpg','2022-04-19 09:31:53','公告详情4','2022-04-19 09:31:53'),(5,'公告标题5',3,'http://localhost:8080/waimaixiaochengxu/upload/news5.jpg','2022-04-19 09:31:53','公告详情5','2022-04-19 09:31:53');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','je8pujxyvuz3xmfl1l5qopfbuvufdqft','2022-04-19 09:29:23','2022-04-19 11:23:57'),(2,1,'a1','yonghu','用户','t08jz23g60fnzrf4p5erdw55x97qhiww','2022-04-19 09:41:55','2022-04-19 11:06:24');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199610232001','http://localhost:8080/waimaixiaochengxu/upload/yonghu1.jpg',1,'1@qq.com','899406.84','2022-04-19 09:31:53'),(2,'a2','123456','用户姓名2','17703786902','410224199610232002','http://localhost:8080/waimaixiaochengxu/upload/yonghu2.jpg',2,'2@qq.com','549.93','2022-04-19 09:31:53'),(3,'a3','123456','用户姓名3','17703786903','410224199610232003','http://localhost:8080/waimaixiaochengxu/upload/yonghu3.jpg',2,'3@qq.com','324.40','2022-04-19 09:31:53');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
