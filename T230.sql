/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t230`;
CREATE DATABASE IF NOT EXISTS `t230` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t230`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-04-18 07:16:37'),
	(2, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-04-18 07:16:37'),
	(3, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-04-18 07:16:37'),
	(4, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-04-18 07:16:37'),
	(5, 'shangxia_types', '是否展示', 1, '展示', NULL, NULL, '2022-04-18 07:16:37'),
	(6, 'shangxia_types', '是否展示', 2, '不展示', NULL, NULL, '2022-04-18 07:16:37'),
	(7, 'zhiwu_types', '职务', 1, '职务1', NULL, NULL, '2022-04-18 07:16:37'),
	(8, 'zhiwu_types', '职务', 2, '职务2', NULL, NULL, '2022-04-18 07:16:37'),
	(9, 'zhiwu_types', '职务', 3, '职务3', NULL, NULL, '2022-04-18 07:16:37'),
	(10, 'xueyuan_types', '学院', 1, '学院1', NULL, NULL, '2022-04-18 07:16:37'),
	(11, 'xueyuan_types', '学院', 2, '学院2', NULL, NULL, '2022-04-18 07:16:37'),
	(12, 'xueyuan_types', '学院', 3, '学院3', NULL, NULL, '2022-04-18 07:16:37'),
	(13, 'bangongshi_types', '办公室', 1, '办公室1', NULL, NULL, '2022-04-18 07:16:37'),
	(14, 'bangongshi_types', '办公室', 2, '办公室2', NULL, NULL, '2022-04-18 07:16:37'),
	(15, 'bangongshi_types', '办公室', 3, '办公室3', NULL, NULL, '2022-04-18 07:16:37'),
	(16, 'kecheng_types', '课程', 1, '语文', NULL, NULL, '2022-04-18 07:16:37'),
	(17, 'kecheng_types', '课程', 2, '数学', NULL, NULL, '2022-04-18 07:16:37'),
	(18, 'kecheng_types', '课程', 3, '英语', NULL, NULL, '2022-04-18 07:16:37'),
	(19, 'mingpian_types', '名片类型', 1, '名片类型1', NULL, NULL, '2022-04-18 07:16:37'),
	(20, 'mingpian_types', '名片类型', 2, '名片类型2', NULL, NULL, '2022-04-18 07:16:37'),
	(21, 'mingpian_types', '名片类型', 3, '名片类型3', NULL, NULL, '2022-04-18 07:16:37'),
	(22, 'mingpian_types', '名片类型', 4, '名片类型4', NULL, NULL, '2022-04-18 07:16:37'),
	(23, 'mingpian_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-04-18 07:16:37'),
	(24, 'shangxia_types', '是否展示', 1, '展示', NULL, NULL, '2022-04-18 07:16:37'),
	(25, 'shangxia_types', '是否展示', 2, '不展示', NULL, NULL, '2022-04-18 07:16:37'),
	(26, 'keyanchengguo_types', '科研成果类型', 1, '科研成果类型1', NULL, NULL, '2022-04-18 07:16:37'),
	(27, 'keyanchengguo_types', '科研成果类型', 2, '科研成果类型2', NULL, NULL, '2022-04-18 07:16:37'),
	(28, 'keyanchengguo_types', '科研成果类型', 3, '科研成果类型3', NULL, NULL, '2022-04-18 07:16:37'),
	(29, 'keyanchengguo_types', '科研成果类型', 4, '科研成果类型4', NULL, NULL, '2022-04-18 07:16:38'),
	(30, 'keyanchengguo_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-04-18 07:16:38'),
	(31, 'zhiwu_types', '职务', 4, '职务4', NULL, '', '2022-04-18 08:10:06');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/gonggao1.jpg', 2, '2022-04-18 07:18:16', '公告详情1', '2022-04-18 07:18:16'),
	(2, '公告名称2', 'http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/gonggao2.jpg', 1, '2022-04-18 07:18:16', '公告详情2', '2022-04-18 07:18:16'),
	(3, '公告名称3', 'http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/gonggao3.jpg', 1, '2022-04-18 07:18:16', '公告详情3', '2022-04-18 07:18:16'),
	(4, '公告名称4', 'http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/gonggao4.jpg', 1, '2022-04-18 07:18:16', '公告详情4', '2022-04-18 07:18:16'),
	(5, '公告名称5', 'http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/gonggao5.jpg', 1, '2022-04-18 07:18:16', '公告详情5', '2022-04-18 07:18:16');

DROP TABLE IF EXISTS `jiaoshi`;
CREATE TABLE IF NOT EXISTS `jiaoshi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_uuid_number` varchar(200) DEFAULT NULL COMMENT '教师编号 Search111 ',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师姓名 Search111 ',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '教师手机号',
  `jiaoshi_id_number` varchar(200) DEFAULT NULL COMMENT '教师身份证号',
  `jiaoshi_photo` varchar(200) DEFAULT NULL COMMENT '教师头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `jiaoshi_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='教师';

DELETE FROM `jiaoshi`;
INSERT INTO `jiaoshi` (`id`, `username`, `password`, `jiaoshi_uuid_number`, `jiaoshi_name`, `jiaoshi_phone`, `jiaoshi_id_number`, `jiaoshi_photo`, `sex_types`, `jiaoshi_email`, `create_time`) VALUES
	(1, '教师1', '123456', '165026629674120', '教师姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/jiaoshi1.jpg', 2, '1@qq.com', '2022-04-18 07:18:16'),
	(2, '教师2', '123456', '16502662967414', '教师姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/jiaoshi2.jpg', 2, '2@qq.com', '2022-04-18 07:18:16'),
	(3, '教师3', '123456', '16502662967415', '教师姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/jiaoshi3.jpg', 1, '3@qq.com', '2022-04-18 07:18:16');

DROP TABLE IF EXISTS `keyanchengguo`;
CREATE TABLE IF NOT EXISTS `keyanchengguo` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiaoshi_id` int DEFAULT NULL COMMENT '教师',
  `keyanchengguo_name` varchar(200) DEFAULT NULL COMMENT '科研成果名称  Search111 ',
  `keyanchengguo_uuid_number` varchar(200) DEFAULT NULL COMMENT '科研成果编号 Search111 ',
  `keyanchengguo_file` varchar(200) DEFAULT NULL COMMENT '科研成果相关文件',
  `keyanchengguo_photo` varchar(200) DEFAULT NULL COMMENT '科研成果照片',
  `keyanchengguo_types` int DEFAULT NULL COMMENT '科研成果类型 Search111',
  `keyanchengguo_clicknum` int DEFAULT NULL COMMENT '科研成果热度 ',
  `keyanchengguo_content` text COMMENT '科研成果详细介绍 ',
  `shangxia_types` int DEFAULT NULL COMMENT '是否展示',
  `keyanchengguo_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='科研成果';

DELETE FROM `keyanchengguo`;
INSERT INTO `keyanchengguo` (`id`, `jiaoshi_id`, `keyanchengguo_name`, `keyanchengguo_uuid_number`, `keyanchengguo_file`, `keyanchengguo_photo`, `keyanchengguo_types`, `keyanchengguo_clicknum`, `keyanchengguo_content`, `shangxia_types`, `keyanchengguo_delete`, `create_time`) VALUES
	(1, 2, '科研成果名称1', '16502662967289', 'http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/file.rar', 'http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/xuesheng1.jpg', 4, 372, '科研成果详细介绍1', 1, 1, '2022-04-18 07:18:16'),
	(2, 3, '科研成果名称2', '165026629672810', 'http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/file.rar', 'http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/xuesheng2.jpg', 1, 265, '科研成果详细介绍2', 1, 2, '2022-04-18 07:18:16'),
	(3, 1, '科研成果名称3', '16502662967288', 'http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/file.rar', 'http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/xuesheng3.jpg', 4, 240, '科研成果详细介绍3', 1, 1, '2022-04-18 07:18:16'),
	(4, 1, '科研成果名称4', '16502662967285', 'http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/file.rar', 'http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/xuesheng1.jpg', 1, 383, '科研成果详细介绍4', 1, 2, '2022-04-18 07:18:16'),
	(5, 3, '科研成果名称5', '16502662967293', 'http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/file.rar', 'http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/xuesheng2.jpg', 1, 430, '科研成果详细介绍5', 1, 1, '2022-04-18 07:18:16'),
	(6, 1, '成果111', '1650269621948', 'http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/1650269631941.rar', 'http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/1650269635494.jpg', 3, 4, '<p>的经历了丧</p>', 1, 1, '2022-04-18 08:14:00');

DROP TABLE IF EXISTS `keyanchengguo_collection`;
CREATE TABLE IF NOT EXISTS `keyanchengguo_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `keyanchengguo_id` int DEFAULT NULL COMMENT '科研成果',
  `xuesheng_id` int DEFAULT NULL COMMENT '学生',
  `keyanchengguo_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='科研成果收藏';

DELETE FROM `keyanchengguo_collection`;
INSERT INTO `keyanchengguo_collection` (`id`, `keyanchengguo_id`, `xuesheng_id`, `keyanchengguo_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 2, 1, '2022-04-18 07:18:16', '2022-04-18 07:18:16'),
	(2, 2, 2, 1, '2022-04-18 07:18:16', '2022-04-18 07:18:16'),
	(3, 3, 2, 1, '2022-04-18 07:18:16', '2022-04-18 07:18:16'),
	(4, 4, 3, 1, '2022-04-18 07:18:16', '2022-04-18 07:18:16'),
	(5, 5, 3, 1, '2022-04-18 07:18:16', '2022-04-18 07:18:16'),
	(6, 5, 1, 1, '2022-04-18 08:08:33', '2022-04-18 08:08:33'),
	(7, 6, 1, 1, '2024-06-10 05:50:00', '2024-06-10 05:50:00');

DROP TABLE IF EXISTS `mingpian`;
CREATE TABLE IF NOT EXISTS `mingpian` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiaoshi_id` int DEFAULT NULL COMMENT '教师',
  `mingpian_name` varchar(200) DEFAULT NULL COMMENT '名片名称  Search111 ',
  `mingpian_uuid_number` varchar(200) DEFAULT NULL COMMENT '名片编号',
  `mingpian_xingming` varchar(200) DEFAULT NULL COMMENT '姓名  Search111 ',
  `mingpian_phone` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `mingpian_file` varchar(200) DEFAULT NULL COMMENT '名片文件',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `zhiwu_types` int DEFAULT NULL COMMENT '职务 Search111',
  `mingpian_photo` varchar(200) DEFAULT NULL COMMENT '名片照片',
  `mingpian_types` int DEFAULT NULL COMMENT '名片类型 Search111',
  `xueyuan_types` int DEFAULT NULL COMMENT '学院 Search111',
  `bangongshi_types` int DEFAULT NULL COMMENT '办公室 Search111',
  `kecheng_types` int DEFAULT NULL COMMENT '主修课程 Search111',
  `mingpian_clicknum` int DEFAULT NULL COMMENT '名片热度 ',
  `mingpian_content` text COMMENT '名片详细介绍 ',
  `shangxia_types` int DEFAULT NULL COMMENT '是否展示',
  `mingpian_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='名片';

DELETE FROM `mingpian`;
INSERT INTO `mingpian` (`id`, `jiaoshi_id`, `mingpian_name`, `mingpian_uuid_number`, `mingpian_xingming`, `mingpian_phone`, `mingpian_file`, `sex_types`, `zhiwu_types`, `mingpian_photo`, `mingpian_types`, `xueyuan_types`, `bangongshi_types`, `kecheng_types`, `mingpian_clicknum`, `mingpian_content`, `shangxia_types`, `mingpian_delete`, `create_time`) VALUES
	(1, 1, '名片名称1', '16502662967348', '姓名1', '17703786901', 'http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/file.rar', 1, 1, 'http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/xuesheng1.jpg', 1, 1, 1, 2, 459, '名片详细介绍1', 1, 2, '2022-04-18 07:18:16'),
	(2, 1, '名片名称2', '165026629673418', '姓名2', '17703786902', 'http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/file.rar', 2, 3, 'http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/xuesheng2.jpg', 3, 2, 2, 3, 248, '名片详细介绍2', 1, 2, '2022-04-18 07:18:16'),
	(3, 1, '名片名称3', '16502662967348', '姓名3', '17703786903', 'http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/file.rar', 2, 1, 'http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/xuesheng3.jpg', 1, 2, 1, 3, 194, '名片详细介绍3', 1, 1, '2022-04-18 07:18:16'),
	(5, 3, '名片名称5', '16502662967354', '姓名5', '17703786905', 'http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/file.rar', 1, 2, 'http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/xuesheng2.jpg', 1, 1, 3, 2, 370, '名片详细介绍5', 1, 1, '2022-04-18 07:18:16');

DROP TABLE IF EXISTS `mingpian_collection`;
CREATE TABLE IF NOT EXISTS `mingpian_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `mingpian_id` int DEFAULT NULL COMMENT '名片',
  `xuesheng_id` int DEFAULT NULL COMMENT '学生',
  `mingpian_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='名片收藏';

DELETE FROM `mingpian_collection`;
INSERT INTO `mingpian_collection` (`id`, `mingpian_id`, `xuesheng_id`, `mingpian_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, 1, '2022-04-18 07:18:16', '2022-04-18 07:18:16'),
	(2, 2, 2, 1, '2022-04-18 07:18:16', '2022-04-18 07:18:16'),
	(3, 3, 1, 1, '2022-04-18 07:18:16', '2022-04-18 07:18:16'),
	(4, 4, 3, 1, '2022-04-18 07:18:16', '2022-04-18 07:18:16'),
	(5, 5, 3, 1, '2022-04-18 07:18:16', '2022-04-18 07:18:16'),
	(6, 5, 1, 1, '2022-04-18 08:08:46', '2022-04-18 08:08:46');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 6, 'admin', 'users', '管理员', '9lo3xwrpl0rq39qusee52mkmemsq4jvu', '2022-04-18 07:39:25', '2024-06-10 06:47:54'),
	(2, 1, 'a1', 'xuesheng', '学生', 'emx1boo295z32o0z2m2674pxjnd8p4ws', '2022-04-18 08:05:29', '2024-06-10 06:49:42'),
	(3, 1, 'a1', 'jiaoshi', '教师', '3ygu1a2r3fu36sp2rpq5x2zrngzw657w', '2022-04-18 08:13:27', '2024-06-10 06:49:13');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(6, 'admin', '123456', '管理员', '2022-05-02 06:51:13');

DROP TABLE IF EXISTS `xuesheng`;
CREATE TABLE IF NOT EXISTS `xuesheng` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `xuesheng_uuid_number` varchar(200) DEFAULT NULL COMMENT '学号 Search111 ',
  `xuesheng_name` varchar(200) DEFAULT NULL COMMENT '学生姓名 Search111 ',
  `xuesheng_phone` varchar(200) DEFAULT NULL COMMENT '学生手机号',
  `xuesheng_id_number` varchar(200) DEFAULT NULL COMMENT '学生身份证号',
  `xuesheng_photo` varchar(200) DEFAULT NULL COMMENT '学生头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `xuesheng_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='学生';

DELETE FROM `xuesheng`;
INSERT INTO `xuesheng` (`id`, `username`, `password`, `xuesheng_uuid_number`, `xuesheng_name`, `xuesheng_phone`, `xuesheng_id_number`, `xuesheng_photo`, `sex_types`, `xuesheng_email`, `create_time`) VALUES
	(1, '学生1', '123456', '16502662967409', '学生姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/xuesheng1.jpg', 2, '1@qq.com', '2022-04-18 07:18:16'),
	(2, '学生2', '123456', '16502662967404', '学生姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/xuesheng2.jpg', 2, '2@qq.com', '2022-04-18 07:18:16'),
	(3, '学生3', '123456', '165026629674013', '学生姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/xuesheng3.jpg', 1, '3@qq.com', '2022-04-18 07:18:16');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
