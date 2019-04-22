
/*
Navicat MySQL Data Transfer

Source Server         : wsk
Source Server Version : 50640
Source Host           : localhost:3306
Source Database       : c2c

Target Server Type    : MYSQL
Target Server Version : 50640
File Encoding         : 65001

Date: 2018-10-17 09:41:51
*/
DROP DATABASE IF EXISTS `c2c`;
CREATE DATABASE `c2c`;

USE `c2c`;

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admininformation
-- ----------------------------
DROP TABLE IF EXISTS `admininformation`;
CREATE TABLE `admininformation` (
  `id` int(11) NOT NULL,
  `ano` char(12) NOT NULL,
  `password` char(24) NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admininformation
-- ----------------------------

-- ----------------------------
-- Table structure for adminoperation
-- ----------------------------
DROP TABLE IF EXISTS `adminoperation`;
CREATE TABLE `adminoperation` (
  `id` int(11) NOT NULL,
  `aid` int(11) NOT NULL,
  `modified` datetime DEFAULT NULL,
  `operation` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adminoperation
-- ----------------------------

-- ----------------------------
-- Table structure for allkinds
-- ----------------------------
DROP TABLE IF EXISTS `allkinds`;
CREATE TABLE `allkinds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of allkinds
-- ----------------------------
INSERT INTO `allkinds` VALUES ('1', '数码科技', '2017-05-14 13:28:20');
INSERT INTO `allkinds` VALUES ('2', '影音家电', '2017-05-14 13:28:23');
INSERT INTO `allkinds` VALUES ('3', '鞋服配饰', '2017-05-14 13:28:26');
INSERT INTO `allkinds` VALUES ('4', '运动代步', '2017-05-14 13:28:28');
INSERT INTO `allkinds` VALUES ('5', '书籍文具', '2017-05-14 13:28:31');
INSERT INTO `allkinds` VALUES ('6', '其他', '2017-05-14 13:28:41');

-- ----------------------------
-- Table structure for boughtshop
-- ----------------------------
DROP TABLE IF EXISTS `boughtshop`;
CREATE TABLE `boughtshop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime DEFAULT NULL,
  `state` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of boughtshop
-- ----------------------------

-- ----------------------------
-- Table structure for classification
-- ----------------------------
DROP TABLE IF EXISTS `classification`;
CREATE TABLE `classification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `modified` datetime DEFAULT NULL,
  `aid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classification
-- ----------------------------
INSERT INTO `classification` VALUES ('1', '手机', null, '1');
INSERT INTO `classification` VALUES ('2', '相机', null, '1');
INSERT INTO `classification` VALUES ('3', '电脑', null, '1');
INSERT INTO `classification` VALUES ('4', '家电', null, '2');
INSERT INTO `classification` VALUES ('5', '影音', null, '2');
INSERT INTO `classification` VALUES ('6', '女装', null, '3');
INSERT INTO `classification` VALUES ('7', '男装', null, '3');
INSERT INTO `classification` VALUES ('8', '女鞋', null, '3');
INSERT INTO `classification` VALUES ('9', '男鞋', null, '3');
INSERT INTO `classification` VALUES ('10', '箱包', null, '3');
INSERT INTO `classification` VALUES ('11', '手表', null, '3');
INSERT INTO `classification` VALUES ('12', '器材', null, '4');
INSERT INTO `classification` VALUES ('13', '代步', null, '4');
INSERT INTO `classification` VALUES ('14', '修养', null, '5');
INSERT INTO `classification` VALUES ('15', '专业', null, '5');
INSERT INTO `classification` VALUES ('16', '文具', null, '5');
INSERT INTO `classification` VALUES ('17', '其他', null, '6');

-- ----------------------------
-- Table structure for goodscar
-- ----------------------------
DROP TABLE IF EXISTS `goodscar`;
CREATE TABLE `goodscar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime DEFAULT NULL,
  `sid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `display` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodscar
-- ----------------------------
INSERT INTO `goodscar` VALUES ('1', '2017-05-22 21:57:31', '2', '7', '2', '1');
INSERT INTO `goodscar` VALUES ('2', '2017-05-23 11:45:09', '92', '7', '1', '1');
INSERT INTO `goodscar` VALUES ('3', '2017-05-26 14:23:29', '1095', '7', '1', '1');
INSERT INTO `goodscar` VALUES ('4', '2018-09-09 15:35:13', '1097', '9', '1', '1');

-- ----------------------------
-- Table structure for goodsoforderform
-- ----------------------------
DROP TABLE IF EXISTS `goodsoforderform`;
CREATE TABLE `goodsoforderform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ofid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `modified` datetime DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `display` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodsoforderform
-- ----------------------------

-- ----------------------------
-- Table structure for orderform
-- ----------------------------
DROP TABLE IF EXISTS `orderform`;
CREATE TABLE `orderform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime DEFAULT NULL,
  `display` int(11) NOT NULL DEFAULT '1',
  `uid` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `context` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderform
-- ----------------------------

-- ----------------------------
-- Table structure for shopcar
-- ----------------------------
DROP TABLE IF EXISTS `shopcar`;
CREATE TABLE `shopcar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime DEFAULT NULL,
  `display` int(11) NOT NULL DEFAULT '1',
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopcar
-- ----------------------------

-- ----------------------------
-- Table structure for shopcontext
-- ----------------------------
DROP TABLE IF EXISTS `shopcontext`;
CREATE TABLE `shopcontext` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime DEFAULT NULL,
  `sid` int(11) NOT NULL,
  `context` varchar(255) NOT NULL,
  `display` int(11) NOT NULL DEFAULT '1',
  `uid` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopcontext
-- ----------------------------
INSERT INTO `shopcontext` VALUES ('1', '2017-05-11 16:09:35', '92', '今天是个哈日子', '1', '1');
INSERT INTO `shopcontext` VALUES ('2', '2017-05-21 16:38:44', '92', 'test', '1', '1');
INSERT INTO `shopcontext` VALUES ('3', '2017-05-21 19:29:25', '92', '好的东西就要积累', '1', '7');
INSERT INTO `shopcontext` VALUES ('4', '2017-05-21 19:30:12', '92', '好的东西就要积累', '1', '7');
INSERT INTO `shopcontext` VALUES ('5', '2017-05-21 19:33:48', '92', '好的东西', '1', '7');
INSERT INTO `shopcontext` VALUES ('6', '2017-05-21 19:47:02', '5', '111111', '1', '7');
INSERT INTO `shopcontext` VALUES ('7', '2017-05-21 19:47:50', '5', '1111', '1', '7');
INSERT INTO `shopcontext` VALUES ('8', '2017-05-21 19:48:49', '5', '就看见看看', '1', '7');
INSERT INTO `shopcontext` VALUES ('9', '2017-05-21 19:50:41', '92', '嘻嘻', '1', '7');
INSERT INTO `shopcontext` VALUES ('10', '2017-05-22 22:07:14', '88', '1111', '1', '7');
INSERT INTO `shopcontext` VALUES ('11', '2017-05-23 22:19:19', '69', '11111', '1', '7');
INSERT INTO `shopcontext` VALUES ('12', '2017-05-26 13:54:13', '1096', '11111', '1', '7');
INSERT INTO `shopcontext` VALUES ('13', '2018-09-09 15:52:52', '1095', 'test', '1', '9');
INSERT INTO `shopcontext` VALUES ('14', '2018-09-09 15:54:07', '1095', 'test44', '1', '9');

-- ----------------------------
-- Table structure for shopinformation
-- ----------------------------
DROP TABLE IF EXISTS `shopinformation`;
CREATE TABLE `shopinformation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `level` int(11) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `sort` int(11) NOT NULL,
  `display` int(11) NOT NULL DEFAULT '1',
  `quantity` int(11) NOT NULL,
  `transaction` int(11) NOT NULL DEFAULT '1',
  `sales` int(11) DEFAULT '0',
  `uid` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `thumbnails` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_uid` (`uid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1098 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopinformation
-- ----------------------------
INSERT INTO `shopinformation` VALUES ('1', null, 'c', '4', 'sdf', '12.00', '33', '1', '3', '0', '1', '1', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('2', '2017-05-12 16:45:36', '算法导论', '9', '很好的一本书', '70.00', '86', '1', '1', '1', '2', '1', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('3', '2017-05-14 15:31:26', '爱我的人', '3', '来自wsk的爱', '12.00', '3', '1', '3', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('4', '2017-05-14 15:33:27', '729乒乓球拍', '5', '来自wsk的爱,QQtest', '77.56', '67', '1', '3', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('5', '2017-05-14 15:34:33', '苹果6S', '5', '来自wsk的爱,QQtest', '5000.00', '1', '1', '3', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('6', '2017-05-14 15:35:19', '三星5A', '5', '来自wsk的爱,QQtest', '4000.12', '2', '1', '3', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('7', '2017-05-14 15:36:09', '小米6', '7', '来自wsk的爱,QQtest', '3000.56', '3', '1', '3', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('8', '2017-05-14 15:36:38', '华为8', '7', '来自wsk的爱,QQtest', '3000.57', '4', '1', '3', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('9', '2017-05-14 15:37:08', '中兴8', '7', '来自wsk的爱,QQtest', '3000.57', '5', '1', '3', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('10', '2017-05-14 15:37:31', '联系9', '7', '来自wsk的爱,QQtest', '4654.00', '6', '1', '3', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('11', '2017-05-14 15:37:51', '魅族7S', '7', '来自wsk的爱,QQtest', '4434.00', '7', '1', '3', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('12', '2017-05-14 15:38:19', '索爱8', '7', '来自wsk的爱,QQtest', '4434.33', '8', '1', '3', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('13', '2017-05-14 15:38:42', '苹果耳机', '7', '来自wsk的爱,QQtest', '100.00', '9', '1', '34', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('14', '2017-05-14 15:39:06', '普通相机10', '7', '来自wsk的爱,QQtest', '5100.00', '10', '1', '34', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('15', '2017-05-14 15:39:30', '贾尼单反', '5', '来自wsk的爱,QQtest', '5100.00', '11', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('16', '2017-05-14 15:39:49', '其他东东', '5', '来自wsk的爱,QQtest', '5100.00', '12', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('17', '2017-05-14 15:40:10', '笔记本宏碁13', '8', '来自wsk的爱,QQtest', '5100.00', '13', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('18', '2017-05-14 15:40:37', '苹果平板5', '8', '来自wsk的爱,QQtest', '5100.00', '14', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('19', '2017-05-14 15:41:02', 'HP台式电脑', '8', '来自wsk的爱,QQtest', '4100.00', '15', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('20', '2017-05-14 15:41:26', '戴尔显示器', '8', '来自wsk的爱,QQtest', '1100.00', '16', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('21', '2017-05-14 15:49:33', '雷蛇鼠标', '8', '来自wsk的爱,QQtest', '1100.00', '17', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('22', '2017-05-14 15:49:47', '雷神键盘', '8', '来自wsk的爱,QQtest', '1100.00', '18', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('23', '2017-05-14 15:50:33', 'U盘金士顿64G', '8', '来自wsk的爱,QQtest', '200.00', '19', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('24', '2017-05-14 15:51:02', '爱国者移动硬盘1T', '8', '来自wsk的爱,QQtest', '500.90', '20', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('25', '2017-05-14 15:51:22', '爱？', '8', '来自wsk的爱,QQtest', '500.90', '21', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('26', '2017-05-14 15:52:02', '小天鹅洗衣机', '8', '来自wsk的爱,QQtest', '700.00', '22', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('27', '2017-05-14 15:52:17', '饮水机', '8', '来自wsk的爱,QQtest', '700.00', '23', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('28', '2017-05-14 15:52:34', '吹风机', '8', '来自wsk的爱,QQtest', '40.00', '24', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('29', '2017-05-14 15:52:44', '剃须刀', '8', '来自wsk的爱,QQtest', '40.00', '25', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('30', '2017-05-14 15:53:01', '小型风扇', '8', '来自wsk的爱,QQtest', '40.00', '26', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('31', '2017-05-14 15:53:11', '煮蛋器', '8', '来自wsk的爱,QQtest', '40.00', '27', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('32', '2017-05-14 15:53:34', '电磁炉 美的', '8', '来自wsk的爱,QQtest', '100.00', '28', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('33', '2017-05-14 15:53:50', '电饭煲格力', '8', '来自wsk的爱,QQtest', '100.00', '29', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('34', '2017-05-14 15:54:02', '超级耳机', '8', '来自wsk的爱,QQtest', '100.00', '30', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('35', '2017-05-14 15:54:27', '很好的音响', '8', '来自wsk的爱,QQtest', '120.58', '31', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('36', '2017-05-14 15:55:01', '功放？', '8', '来自wsk的爱,QQtest', '120.58', '32', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('37', '2017-05-14 15:55:15', '低音炮', '8', '来自wsk的爱,QQtest', '120.58', '33', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('38', '2017-05-14 15:55:25', '麦克风', '8', '来自wsk的爱,QQtest', '120.58', '34', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('39', '2017-05-14 15:56:12', '超好看的上衣', '8', '来自wsk的爱,QQtest', '120.58', '35', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('40', '2017-05-14 15:56:28', '炫酷短裤', '8', '来自wsk的爱,QQtest', '120.58', '36', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('41', '2017-05-14 15:56:46', '百褶裙', '8', '来自wsk的爱,QQtest', '55.00', '37', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('42', '2017-05-14 15:57:06', '短上衣', '8', '来自wsk的爱,QQtest', '55.00', '38', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('43', '2017-05-14 15:57:20', '长裤', '8', '来自wsk的爱,QQtest', '55.00', '39', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('44', '2017-05-14 15:57:49', '运动鞋耐克', '8', '来自wsk的爱,QQtest', '1200.00', '40', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('45', '2017-05-14 15:58:06', '皮鞋安踏', '8', '来自wsk的爱,QQtest', '200.00', '41', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('46', '2017-05-14 15:58:43', '帆布鞋', '8', '来自wsk的爱,QQtest', '200.00', '45', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('47', '2017-05-14 15:59:26', '球鞋', '8', '来自wsk的爱,QQtest', '200.00', '46', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('48', '2017-05-14 15:59:35', '板鞋', '8', '来自wsk的爱,QQtest', '200.00', '47', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('49', '2017-05-14 15:59:50', '男生运动鞋', '8', '来自wsk的爱,QQtest', '200.00', '49', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('50', '2017-05-14 16:00:07', '男生皮鞋', '8', '来自wsk的爱,QQtest', '500.00', '50', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('51', '2017-05-14 16:00:20', '男生帆布鞋', '8', '来自wsk的爱,QQtest', '10.00', '51', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('52', '2017-05-14 16:00:36', '男生球鞋', '8', '来自wsk的爱,QQtest', '1000.00', '52', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('53', '2017-05-14 16:00:58', '背包VL', '8', '来自wsk的爱,QQtest', '1000.00', '55', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('54', '2017-05-14 16:01:13', '超级旅行包', '8', '来自wsk的爱,QQtest', '200.00', '56', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('55', '2017-05-14 16:01:40', '呆板机械表', '8', '来自wsk的爱,QQtest', '400.00', '58', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('56', '2017-05-14 16:01:58', '好看的石英表', '8', '来自wsk的爱,QQtest', '400.00', '59', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('57', '2017-05-14 16:02:10', '一般电子版', '8', '来自wsk的爱,QQtest', '100.00', '60', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('58', '2017-05-14 16:03:08', '足球', '8', '来自wsk的爱,QQtest', '100.00', '62', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('59', '2017-05-14 16:03:19', '羽毛球拍', '8', '来自wsk的爱,QQtest', '100.00', '63', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('60', '2017-05-14 16:03:29', '网球拍', '8', '来自wsk的爱,QQtest', '100.00', '64', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('61', '2017-05-14 16:03:37', '篮球', '8', '来自wsk的爱,QQtest', '100.00', '65', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('62', '2017-05-14 16:03:46', '滑轮', '8', '来自wsk的爱,QQtest', '100.00', '66', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('63', '2017-05-14 16:04:01', '乒乓球拍', '8', '来自wsk的爱,QQtest', '100.00', '67', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('64', '2017-05-14 16:04:15', '滑板', '8', '来自wsk的爱,QQtest', '100.00', '68', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('65', '2017-05-14 16:04:28', '自行车', '8', '来自wsk的爱,QQtest', '300.00', '70', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('66', '2017-05-14 16:04:45', '电动车', '8', '来自wsk的爱,QQtest', '800.85', '71', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('67', '2017-05-14 16:05:02', '傲慢与偏见', '8', '来自wsk的爱,QQtest', '20.00', '73', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('68', '2017-05-14 16:05:22', '海贼王漫画', '8', '来自wsk的爱,QQtest', '20.00', '74', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('69', '2017-05-14 16:05:49', '爱尔兰的野马', '8', '来自wsk的爱,QQtest', '20.00', '75', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('70', '2017-05-14 16:06:10', '生命的起源', '8', '来自wsk的爱,QQtest', '25.00', '77', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('71', '2017-05-14 16:06:35', '神奇的化学变化', '8', '来自wsk的爱,QQtest', '25.00', '78', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('72', '2017-05-14 16:06:59', '黑洞与白洞', '8', '来自wsk的爱,QQtest', '51.00', '79', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('73', '2017-05-14 16:07:17', '诗经全集', '8', '来自wsk的爱,QQtest', '51.00', '80', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('74', '2017-05-14 16:07:40', '小语种-莫拉语', '8', '来自wsk的爱,QQtest', '51.00', '81', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('75', '2017-05-14 16:08:20', '真：五元十次方程详细解法', '8', '来自wsk的爱,QQtest', '51.00', '82', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('76', '2017-05-14 16:08:35', '国家的安定', '8', '来自wsk的爱,QQtest', '51.00', '83', '1', '4', '1', '0', '4', '\\image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('77', '2017-05-14 16:09:22', '曼陀罗消亡史', '8', '来自wsk的爱,QQtest', '51.00', '84', '1', '4', '1', '0', '4', '\\image/978P2M7w0ExYqmzci0aX20170105.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('78', '2017-05-14 16:09:38', '神奇的广东', '8', '来自wsk的爱,QQtest', '51.00', '85', '1', '4', '1', '0', '4', '\\image/978P2M7w0ExYqmzci0aX20170105.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('79', '2017-05-14 16:10:11', 'Spring实战', '8', '来自wsk的爱,QQtest', '51.00', '86', '1', '4', '1', '0', '4', '\\image/1.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('80', '2017-05-14 16:10:29', 'ACD画图', '8', '来自wsk的爱,QQtest', '51.00', '87', '1', '4', '1', '0', '4', '\\image/aug1NiTT40tXd3Zy1ZWL20161215.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('81', '2017-05-14 16:10:51', '怎么建房子容易倒塌', '8', '来自wsk的爱,QQtest', '51.00', '88', '1', '4', '1', '0', '4', '\\image/bvmE7d8698C3VdjSMjHm20161225.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('82', '2017-05-14 16:11:07', '算法的艺术', '8', '来自wsk的爱,QQtest', '51.00', '89', '1', '4', '1', '0', '4', '\\image/rzNz7r8XkK8Q97Ki42FB20161214.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('83', '2017-05-14 16:11:38', '狼毫笔', '8', '来自wsk的爱,QQtest，机械，这个容易受欧尚的', '51.00', '91', '1', '4', '1', '0', '4', '\\image/langhaobi.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('84', '2017-05-14 16:12:06', '景德镇陶瓷', '8', '来自wsk的爱,QQtest，机械，这个容易受欧尚的', '522225.50', '92', '1', '4', '1', '0', '4', '\\image/jingdezheng.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('87', '2017-05-14 20:04:41', '华为P10', '8', '来自wsk的爱,QQtest，机械，这个容易受欧尚的', '525.50', '1', '1', '4', '1', '0', '4', '\\image/huawei.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('88', '2017-05-14 20:07:48', '苹果6SPLUS', '8', '来自wsk的爱,QQtest，机械，这个容易受欧尚的？', '525.50', '1', '1', '4', '1', '0', '4', '\\image/apple6s.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('89', '2017-05-14 20:14:10', '小米5', '8', '来自wsk的爱,QQtest，机械，这个容易受欧尚的？', '525.50', '1', '1', '4', '1', '0', '4', 'image/xiaomi5.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('90', '2017-05-14 20:15:29', '苹果6S', '8', '来自wsk的爱,QQtest，机械，这个容易受欧尚的？', '5525.50', '1', '1', '4', '1', '0', '4', 'image/apple6s.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('91', '2017-05-20 15:53:11', '月球下的人', '7', 'wsk1103', '34.00', '73', '1', '1', '1', '0', '7', 'image/yourname.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('92', '2017-05-20 19:06:57', '傲慢与偏见', '9', '来自wsk的爱', '24.00', '73', '1', '1', '1', '0', '7', 'image\\PorRmD0JDZ1495278394532.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('93', '2017-05-25 16:05:48', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '203.45', '1', '1', '9', '1', '0', '19', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('94', '2017-05-25 16:06:27', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '124.70', '1', '1', '8', '1', '0', '87', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('95', '2017-05-25 16:08:34', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '80.46', '1', '1', '8', '1', '0', '61', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('96', '2017-05-25 16:08:40', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '504.64', '2', '1', '7', '1', '0', '50', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('97', '2017-05-25 16:08:40', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '121.53', '3', '1', '8', '1', '0', '18', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('98', '2017-05-25 16:08:40', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '657.34', '4', '1', '10', '1', '0', '29', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('99', '2017-05-25 16:08:40', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '958.19', '5', '1', '9', '1', '0', '38', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('100', '2017-05-25 16:08:40', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '364.47', '6', '1', '7', '1', '0', '44', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('101', '2017-05-25 16:08:40', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '973.03', '7', '1', '5', '1', '0', '14', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('102', '2017-05-25 16:08:40', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '997.94', '8', '1', '1', '1', '0', '52', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('103', '2017-05-25 16:08:40', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '104.93', '9', '1', '2', '1', '0', '37', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('104', '2017-05-25 16:08:40', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '565.97', '10', '1', '4', '1', '0', '43', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('105', '2017-05-25 16:08:40', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '547.88', '11', '1', '4', '1', '0', '52', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('106', '2017-05-25 16:08:40', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '130.96', '12', '1', '7', '1', '0', '61', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('107', '2017-05-25 16:08:40', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '242.63', '13', '1', '5', '1', '0', '31', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('108', '2017-05-25 16:08:40', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '827.44', '14', '1', '9', '1', '0', '51', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('109', '2017-05-25 16:08:40', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '119.94', '15', '1', '6', '1', '0', '63', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('110', '2017-05-25 16:08:41', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '628.32', '16', '1', '8', '1', '0', '29', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('111', '2017-05-25 16:08:41', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '674.01', '17', '1', '6', '1', '0', '37', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('112', '2017-05-25 16:08:41', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '434.30', '18', '1', '7', '1', '0', '16', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('113', '2017-05-25 16:08:41', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '275.81', '19', '1', '7', '1', '0', '38', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('114', '2017-05-25 16:08:41', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '702.66', '20', '1', '1', '1', '0', '65', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('115', '2017-05-25 16:08:41', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '189.56', '21', '1', '2', '1', '0', '15', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('116', '2017-05-25 16:08:41', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '611.12', '22', '1', '7', '1', '0', '61', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('117', '2017-05-25 16:08:41', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '928.97', '23', '1', '10', '1', '0', '54', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('118', '2017-05-25 16:08:41', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '107.63', '24', '1', '9', '1', '0', '73', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('119', '2017-05-25 16:08:41', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '924.40', '25', '1', '7', '1', '0', '74', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('120', '2017-05-25 16:08:41', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '333.02', '26', '1', '5', '1', '0', '46', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('121', '2017-05-25 16:08:41', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '397.74', '27', '1', '9', '1', '0', '98', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('122', '2017-05-25 16:08:41', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '39.27', '28', '1', '4', '1', '0', '50', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('123', '2017-05-25 16:08:41', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '430.29', '29', '1', '10', '1', '0', '92', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('124', '2017-05-25 16:08:41', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '247.15', '30', '1', '9', '1', '0', '60', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('125', '2017-05-25 16:08:41', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '922.01', '31', '1', '2', '1', '0', '21', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('126', '2017-05-25 16:08:41', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '495.11', '32', '1', '1', '1', '0', '79', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('127', '2017-05-25 16:08:41', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '80.27', '33', '1', '2', '1', '0', '71', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('128', '2017-05-25 16:08:41', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '391.62', '34', '1', '7', '1', '0', '90', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('129', '2017-05-25 16:08:41', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '237.04', '35', '1', '5', '1', '0', '64', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('130', '2017-05-25 16:08:41', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '579.14', '36', '1', '8', '1', '0', '89', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('131', '2017-05-25 16:08:41', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '807.62', '37', '1', '1', '1', '0', '55', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('132', '2017-05-25 16:08:41', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '696.93', '38', '1', '1', '1', '0', '29', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('133', '2017-05-25 16:08:41', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '596.87', '39', '1', '10', '1', '0', '34', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('134', '2017-05-25 16:08:41', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '55.13', '40', '1', '1', '1', '0', '92', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('135', '2017-05-25 16:08:41', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '95.67', '41', '1', '10', '1', '0', '32', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('136', '2017-05-25 16:08:41', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '834.19', '42', '1', '2', '1', '0', '89', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('137', '2017-05-25 16:08:41', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '945.59', '43', '1', '7', '1', '0', '65', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('138', '2017-05-25 16:08:41', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '44.62', '44', '1', '1', '1', '0', '91', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('139', '2017-05-25 16:08:41', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '81.05', '45', '1', '6', '1', '0', '40', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('140', '2017-05-25 16:08:41', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '834.70', '46', '1', '7', '1', '0', '55', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('141', '2017-05-25 16:08:41', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '771.73', '47', '1', '6', '1', '0', '6', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('142', '2017-05-25 16:08:41', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '142.70', '48', '1', '10', '1', '0', '88', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('143', '2017-05-25 16:08:41', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '611.11', '49', '1', '6', '1', '0', '45', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('144', '2017-05-25 16:08:41', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '47.07', '50', '1', '4', '1', '0', '11', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('145', '2017-05-25 16:08:41', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '549.10', '51', '1', '2', '1', '0', '32', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('146', '2017-05-25 16:08:41', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '381.29', '52', '1', '8', '1', '0', '61', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('147', '2017-05-25 16:08:41', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '104.30', '53', '1', '10', '1', '0', '44', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('148', '2017-05-25 16:08:41', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '420.93', '54', '1', '8', '1', '0', '86', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('149', '2017-05-25 16:08:41', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '566.79', '55', '1', '1', '1', '0', '30', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('150', '2017-05-25 16:08:41', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '408.43', '56', '1', '6', '1', '0', '84', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('151', '2017-05-25 16:08:41', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '102.95', '57', '1', '1', '1', '0', '90', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('152', '2017-05-25 16:08:41', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '810.45', '58', '1', '8', '1', '0', '73', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('153', '2017-05-25 16:08:41', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '381.81', '59', '1', '6', '1', '0', '16', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('154', '2017-05-25 16:08:41', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '971.80', '60', '1', '8', '1', '0', '61', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('155', '2017-05-25 16:08:41', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '478.87', '61', '1', '5', '1', '0', '21', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('156', '2017-05-25 16:08:41', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '976.05', '62', '1', '6', '1', '0', '92', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('157', '2017-05-25 16:08:41', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '89.69', '63', '1', '6', '1', '0', '44', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('158', '2017-05-25 16:08:41', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '295.51', '64', '1', '9', '1', '0', '11', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('159', '2017-05-25 16:08:41', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '354.66', '65', '1', '6', '1', '0', '76', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('160', '2017-05-25 16:08:41', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '229.41', '66', '1', '6', '1', '0', '31', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('161', '2017-05-25 16:08:41', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '101.62', '67', '1', '1', '1', '0', '18', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('162', '2017-05-25 16:08:41', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '221.66', '68', '1', '4', '1', '0', '9', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('163', '2017-05-25 16:08:41', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '937.75', '69', '1', '7', '1', '0', '42', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('164', '2017-05-25 16:08:41', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '214.91', '70', '1', '8', '1', '0', '92', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('165', '2017-05-25 16:08:41', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '140.91', '71', '1', '5', '1', '0', '5', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('166', '2017-05-25 16:08:41', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '51.37', '72', '1', '2', '1', '0', '57', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('167', '2017-05-25 16:08:41', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '628.85', '73', '1', '7', '1', '0', '81', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('168', '2017-05-25 16:08:41', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '149.26', '74', '1', '9', '1', '0', '39', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('169', '2017-05-25 16:08:41', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '727.45', '75', '1', '1', '1', '0', '57', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('170', '2017-05-25 16:08:41', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '864.97', '76', '1', '4', '1', '0', '16', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('171', '2017-05-25 16:08:41', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '963.00', '77', '1', '3', '1', '0', '95', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('172', '2017-05-25 16:08:41', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '951.97', '78', '1', '6', '1', '0', '95', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('173', '2017-05-25 16:08:41', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '505.72', '79', '1', '4', '1', '0', '68', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('174', '2017-05-25 16:08:41', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '726.81', '80', '1', '4', '1', '0', '56', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('175', '2017-05-25 16:08:41', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '168.94', '81', '1', '1', '1', '0', '82', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('176', '2017-05-25 16:08:41', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '90.54', '82', '1', '1', '1', '0', '44', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('177', '2017-05-25 16:08:41', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '389.85', '83', '1', '4', '1', '0', '81', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('178', '2017-05-25 16:08:41', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '587.54', '84', '1', '7', '1', '0', '32', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('179', '2017-05-25 16:08:41', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '391.17', '85', '1', '8', '1', '0', '90', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('180', '2017-05-25 16:08:41', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '637.32', '86', '1', '2', '1', '0', '22', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('181', '2017-05-25 16:08:41', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '648.99', '87', '1', '9', '1', '0', '84', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('182', '2017-05-25 16:08:41', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '885.04', '88', '1', '5', '1', '0', '71', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('183', '2017-05-25 16:08:41', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '909.35', '89', '1', '6', '1', '0', '36', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('184', '2017-05-25 16:08:41', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '988.80', '90', '1', '6', '1', '0', '80', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('185', '2017-05-25 16:08:41', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '736.60', '91', '1', '9', '1', '0', '86', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('186', '2017-05-25 16:08:41', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '815.06', '92', '1', '10', '1', '0', '35', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('187', '2017-05-25 16:08:41', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '10.57', '93', '1', '2', '1', '0', '13', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('188', '2017-05-25 16:08:41', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '933.94', '94', '1', '2', '1', '0', '4', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('189', '2017-05-25 16:14:12', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '330.94', '1', '1', '6', '1', '0', '36', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('190', '2017-05-25 16:14:12', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '32.48', '2', '1', '4', '1', '0', '18', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('191', '2017-05-25 16:14:12', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '964.70', '3', '1', '8', '1', '0', '70', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('192', '2017-05-25 16:14:12', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '952.51', '4', '1', '2', '1', '0', '78', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('193', '2017-05-25 16:14:12', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '299.50', '5', '1', '2', '1', '0', '8', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('194', '2017-05-25 16:14:12', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '941.67', '6', '1', '10', '1', '0', '1', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('195', '2017-05-25 16:14:12', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '573.57', '7', '1', '6', '1', '0', '9', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('196', '2017-05-25 16:14:12', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '601.29', '8', '1', '8', '1', '0', '50', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('197', '2017-05-25 16:14:12', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '64.00', '9', '1', '2', '1', '0', '3', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('198', '2017-05-25 16:14:12', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '324.60', '10', '1', '4', '1', '0', '75', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('199', '2017-05-25 16:14:12', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '205.27', '11', '1', '5', '1', '0', '75', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('200', '2017-05-25 16:14:12', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '353.98', '12', '1', '1', '1', '0', '39', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('201', '2017-05-25 16:14:12', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '88.22', '13', '1', '10', '1', '0', '32', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('202', '2017-05-25 16:14:12', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '434.91', '14', '1', '2', '1', '0', '51', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('203', '2017-05-25 16:14:12', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '520.51', '15', '1', '7', '1', '0', '30', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('204', '2017-05-25 16:14:12', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '292.36', '16', '1', '6', '1', '0', '34', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('205', '2017-05-25 16:14:12', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '128.81', '17', '1', '3', '1', '0', '31', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('206', '2017-05-25 16:14:12', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '949.28', '18', '1', '6', '1', '0', '72', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('207', '2017-05-25 16:14:12', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '369.12', '19', '1', '1', '1', '0', '53', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('208', '2017-05-25 16:14:12', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '790.69', '20', '1', '6', '1', '0', '97', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('209', '2017-05-25 16:14:12', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '294.63', '21', '1', '5', '1', '0', '15', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('210', '2017-05-25 16:14:12', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '172.82', '22', '1', '9', '1', '0', '12', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('211', '2017-05-25 16:14:12', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '908.68', '23', '1', '2', '1', '0', '57', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('212', '2017-05-25 16:14:12', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '724.98', '24', '1', '5', '1', '0', '70', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('213', '2017-05-25 16:14:12', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '444.56', '25', '1', '3', '1', '0', '58', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('214', '2017-05-25 16:14:12', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '494.44', '26', '1', '2', '1', '0', '31', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('215', '2017-05-25 16:14:12', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '894.29', '27', '1', '2', '1', '0', '24', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('216', '2017-05-25 16:14:12', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '962.72', '28', '1', '1', '1', '0', '89', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('217', '2017-05-25 16:14:12', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '126.60', '29', '1', '8', '1', '0', '91', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('218', '2017-05-25 16:14:12', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '200.41', '30', '1', '2', '1', '0', '43', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('219', '2017-05-25 16:14:12', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '452.11', '31', '1', '2', '1', '0', '93', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('220', '2017-05-25 16:14:12', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '27.04', '32', '1', '8', '1', '0', '6', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('221', '2017-05-25 16:14:12', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '113.34', '33', '1', '10', '1', '0', '40', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('222', '2017-05-25 16:14:12', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '770.86', '34', '1', '8', '1', '0', '45', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('223', '2017-05-25 16:14:12', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '892.34', '35', '1', '1', '1', '0', '76', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('224', '2017-05-25 16:14:12', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '861.16', '36', '1', '6', '1', '0', '93', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('225', '2017-05-25 16:14:12', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '472.91', '37', '1', '1', '1', '0', '18', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('226', '2017-05-25 16:14:12', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '81.81', '38', '1', '2', '1', '0', '2', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('227', '2017-05-25 16:14:12', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '891.75', '39', '1', '6', '1', '0', '32', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('228', '2017-05-25 16:14:12', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '432.84', '40', '1', '4', '1', '0', '65', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('229', '2017-05-25 16:14:12', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '29.37', '41', '1', '7', '1', '0', '67', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('230', '2017-05-25 16:14:12', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '514.56', '42', '1', '1', '1', '0', '4', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('231', '2017-05-25 16:14:12', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '681.49', '43', '1', '7', '1', '0', '31', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('232', '2017-05-25 16:14:13', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '512.99', '44', '1', '10', '1', '0', '9', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('233', '2017-05-25 16:14:13', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '12.83', '45', '1', '9', '1', '0', '10', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('234', '2017-05-25 16:14:13', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '834.49', '46', '1', '8', '1', '0', '60', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('235', '2017-05-25 16:14:13', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '712.96', '47', '1', '7', '1', '0', '6', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('236', '2017-05-25 16:14:13', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '338.64', '48', '1', '6', '1', '0', '83', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('237', '2017-05-25 16:14:13', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '677.33', '49', '1', '6', '1', '0', '54', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('238', '2017-05-25 16:14:13', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '842.94', '50', '1', '1', '1', '0', '81', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('239', '2017-05-25 16:14:13', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '642.51', '51', '1', '7', '1', '0', '94', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('240', '2017-05-25 16:14:13', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '27.84', '52', '1', '3', '1', '0', '81', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('241', '2017-05-25 16:14:13', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '672.87', '53', '1', '2', '1', '0', '77', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('242', '2017-05-25 16:14:13', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '228.78', '54', '1', '2', '1', '0', '8', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('243', '2017-05-25 16:14:13', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '375.23', '55', '1', '3', '1', '0', '94', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('244', '2017-05-25 16:14:13', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '552.42', '56', '1', '10', '1', '0', '88', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('245', '2017-05-25 16:14:13', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '998.57', '57', '1', '3', '1', '0', '80', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('246', '2017-05-25 16:14:13', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '750.19', '58', '1', '4', '1', '0', '6', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('247', '2017-05-25 16:14:13', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '338.87', '59', '1', '3', '1', '0', '3', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('248', '2017-05-25 16:14:13', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '794.10', '60', '1', '6', '1', '0', '5', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('249', '2017-05-25 16:14:13', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '434.69', '61', '1', '2', '1', '0', '28', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('250', '2017-05-25 16:14:13', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '862.84', '62', '1', '2', '1', '0', '76', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('251', '2017-05-25 16:14:13', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '120.58', '63', '1', '5', '1', '0', '54', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('252', '2017-05-25 16:14:13', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '710.87', '64', '1', '8', '1', '0', '28', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('253', '2017-05-25 16:14:13', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '454.18', '65', '1', '3', '1', '0', '96', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('254', '2017-05-25 16:14:13', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '176.87', '66', '1', '7', '1', '0', '66', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('255', '2017-05-25 16:14:13', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '92.57', '67', '1', '7', '1', '0', '30', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('256', '2017-05-25 16:14:13', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '922.25', '68', '1', '5', '1', '0', '38', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('257', '2017-05-25 16:14:13', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '748.05', '69', '1', '2', '1', '0', '10', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('258', '2017-05-25 16:14:13', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '673.27', '70', '1', '6', '1', '0', '39', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('259', '2017-05-25 16:14:13', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '677.09', '71', '1', '8', '1', '0', '99', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('260', '2017-05-25 16:14:13', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '85.96', '72', '1', '4', '1', '0', '39', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('261', '2017-05-25 16:14:13', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '663.79', '73', '1', '9', '1', '0', '4', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('262', '2017-05-25 16:14:13', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '439.06', '74', '1', '7', '1', '0', '5', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('263', '2017-05-25 16:14:13', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '456.87', '75', '1', '5', '1', '0', '38', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('264', '2017-05-25 16:14:13', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '282.96', '76', '1', '5', '1', '0', '99', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('265', '2017-05-25 16:14:13', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '52.71', '77', '1', '3', '1', '0', '42', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('266', '2017-05-25 16:14:13', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '791.42', '78', '1', '9', '1', '0', '60', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('267', '2017-05-25 16:14:13', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '423.85', '79', '1', '2', '1', '0', '23', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('268', '2017-05-25 16:14:13', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '253.95', '80', '1', '10', '1', '0', '65', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('269', '2017-05-25 16:14:13', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '249.06', '81', '1', '1', '1', '0', '93', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('270', '2017-05-25 16:14:13', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '51.94', '82', '1', '1', '1', '0', '57', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('271', '2017-05-25 16:14:13', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '277.60', '83', '1', '8', '1', '0', '32', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('272', '2017-05-25 16:14:13', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '737.63', '84', '1', '5', '1', '0', '18', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('273', '2017-05-25 16:14:13', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '163.20', '85', '1', '6', '1', '0', '19', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('274', '2017-05-25 16:14:13', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '905.69', '86', '1', '4', '1', '0', '1', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('275', '2017-05-25 16:14:13', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '833.83', '87', '1', '9', '1', '0', '45', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('276', '2017-05-25 16:14:13', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '349.40', '88', '1', '4', '1', '0', '49', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('277', '2017-05-25 16:14:13', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '760.65', '89', '1', '1', '1', '0', '84', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('278', '2017-05-25 16:14:13', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '233.26', '90', '1', '7', '1', '0', '9', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('279', '2017-05-25 16:14:13', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '284.25', '91', '1', '6', '1', '0', '10', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('280', '2017-05-25 16:14:13', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '409.03', '92', '1', '6', '1', '0', '72', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('281', '2017-05-25 16:14:13', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '520.29', '93', '1', '3', '1', '0', '37', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('282', '2017-05-25 16:14:13', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '539.85', '94', '1', '1', '1', '0', '49', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('283', '2017-05-25 16:14:13', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '261.07', '1', '1', '10', '1', '0', '31', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('284', '2017-05-25 16:14:13', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '876.80', '2', '1', '7', '1', '0', '67', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('285', '2017-05-25 16:14:13', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '817.74', '3', '1', '10', '1', '0', '86', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('286', '2017-05-25 16:14:13', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '621.61', '4', '1', '1', '1', '0', '41', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('287', '2017-05-25 16:14:13', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '402.28', '5', '1', '10', '1', '0', '48', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('288', '2017-05-25 16:14:13', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '89.66', '6', '1', '5', '1', '0', '5', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('289', '2017-05-25 16:14:13', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '563.21', '7', '1', '5', '1', '0', '9', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('290', '2017-05-25 16:14:13', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '907.63', '8', '1', '9', '1', '0', '3', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('291', '2017-05-25 16:14:13', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '388.55', '9', '1', '10', '1', '0', '76', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('292', '2017-05-25 16:14:13', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '302.68', '10', '1', '1', '1', '0', '24', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('293', '2017-05-25 16:14:13', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '838.88', '11', '1', '1', '1', '0', '88', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('294', '2017-05-25 16:14:13', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '994.85', '12', '1', '7', '1', '0', '75', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('295', '2017-05-25 16:14:13', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '228.16', '13', '1', '2', '1', '0', '12', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('296', '2017-05-25 16:14:13', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '135.62', '14', '1', '4', '1', '0', '26', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('297', '2017-05-25 16:14:13', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '726.37', '15', '1', '5', '1', '0', '10', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('298', '2017-05-25 16:14:13', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '253.69', '16', '1', '8', '1', '0', '58', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('299', '2017-05-25 16:14:13', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '903.17', '17', '1', '6', '1', '0', '67', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('300', '2017-05-25 16:14:13', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '900.53', '18', '1', '4', '1', '0', '26', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('301', '2017-05-25 16:14:13', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '993.10', '19', '1', '1', '1', '0', '33', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('302', '2017-05-25 16:14:13', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '23.65', '20', '1', '6', '1', '0', '62', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('303', '2017-05-25 16:14:13', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '358.44', '21', '1', '4', '1', '0', '32', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('304', '2017-05-25 16:14:13', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '443.41', '22', '1', '6', '1', '0', '42', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('305', '2017-05-25 16:14:13', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '814.60', '23', '1', '2', '1', '0', '77', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('306', '2017-05-25 16:14:13', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '841.11', '24', '1', '2', '1', '0', '55', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('307', '2017-05-25 16:14:13', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '214.26', '25', '1', '3', '1', '0', '92', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('308', '2017-05-25 16:14:13', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '571.52', '26', '1', '3', '1', '0', '2', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('309', '2017-05-25 16:14:13', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '250.22', '27', '1', '8', '1', '0', '45', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('310', '2017-05-25 16:14:13', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '345.51', '28', '1', '5', '1', '0', '70', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('311', '2017-05-25 16:14:13', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '514.27', '29', '1', '9', '1', '0', '73', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('312', '2017-05-25 16:14:13', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '357.62', '30', '1', '7', '1', '0', '50', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('313', '2017-05-25 16:14:13', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '760.78', '31', '1', '3', '1', '0', '41', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('314', '2017-05-25 16:14:13', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '995.63', '32', '1', '10', '1', '0', '79', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('315', '2017-05-25 16:14:13', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '282.02', '33', '1', '4', '1', '0', '68', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('316', '2017-05-25 16:14:13', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '613.44', '34', '1', '9', '1', '0', '21', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('317', '2017-05-25 16:14:13', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '659.28', '35', '1', '9', '1', '0', '55', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('318', '2017-05-25 16:14:13', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '494.19', '36', '1', '6', '1', '0', '82', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('319', '2017-05-25 16:14:13', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '652.87', '37', '1', '9', '1', '0', '73', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('320', '2017-05-25 16:14:13', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '606.84', '38', '1', '8', '1', '0', '86', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('321', '2017-05-25 16:14:13', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '19.72', '39', '1', '9', '1', '0', '43', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('322', '2017-05-25 16:14:13', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '866.71', '40', '1', '1', '1', '0', '59', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('323', '2017-05-25 16:14:13', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '872.28', '41', '1', '2', '1', '0', '89', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('324', '2017-05-25 16:14:13', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '660.61', '42', '1', '5', '1', '0', '73', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('325', '2017-05-25 16:14:13', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '233.87', '43', '1', '7', '1', '0', '9', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('326', '2017-05-25 16:14:13', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '469.98', '44', '1', '1', '1', '0', '55', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('327', '2017-05-25 16:14:13', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '507.17', '45', '1', '10', '1', '0', '17', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('328', '2017-05-25 16:14:13', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '615.70', '46', '1', '10', '1', '0', '70', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('329', '2017-05-25 16:14:13', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '102.29', '47', '1', '5', '1', '0', '17', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('330', '2017-05-25 16:14:13', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '815.60', '48', '1', '4', '1', '0', '34', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('331', '2017-05-25 16:14:13', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '803.98', '49', '1', '5', '1', '0', '40', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('332', '2017-05-25 16:14:13', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '267.41', '50', '1', '3', '1', '0', '70', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('333', '2017-05-25 16:14:13', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '73.48', '51', '1', '9', '1', '0', '83', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('334', '2017-05-25 16:14:13', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '985.66', '52', '1', '7', '1', '0', '42', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('335', '2017-05-25 16:14:13', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '245.25', '53', '1', '6', '1', '0', '61', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('336', '2017-05-25 16:14:13', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '790.60', '54', '1', '1', '1', '0', '6', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('337', '2017-05-25 16:14:13', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '3.61', '55', '1', '10', '1', '0', '88', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('338', '2017-05-25 16:14:13', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '590.63', '56', '1', '8', '1', '0', '3', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('339', '2017-05-25 16:14:13', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '5.85', '57', '1', '7', '1', '0', '81', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('340', '2017-05-25 16:14:13', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '858.12', '58', '1', '6', '1', '0', '65', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('341', '2017-05-25 16:14:13', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '599.58', '59', '1', '6', '1', '0', '70', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('342', '2017-05-25 16:14:13', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '673.54', '60', '1', '3', '1', '0', '10', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('343', '2017-05-25 16:14:13', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '190.82', '61', '1', '4', '1', '0', '98', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('344', '2017-05-25 16:14:13', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '626.76', '62', '1', '2', '1', '0', '31', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('345', '2017-05-25 16:14:13', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '529.27', '63', '1', '3', '1', '0', '41', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('346', '2017-05-25 16:14:13', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '699.77', '64', '1', '3', '1', '0', '77', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('347', '2017-05-25 16:14:13', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '448.54', '65', '1', '5', '1', '0', '54', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('348', '2017-05-25 16:14:13', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '15.62', '66', '1', '8', '1', '0', '8', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('349', '2017-05-25 16:14:13', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '35.42', '67', '1', '1', '1', '0', '63', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('350', '2017-05-25 16:14:13', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '788.65', '68', '1', '10', '1', '0', '97', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('351', '2017-05-25 16:14:13', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '796.19', '69', '1', '4', '1', '0', '22', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('352', '2017-05-25 16:14:13', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '734.31', '70', '1', '5', '1', '0', '8', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('353', '2017-05-25 16:14:13', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '773.48', '71', '1', '10', '1', '0', '50', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('354', '2017-05-25 16:14:13', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '640.67', '72', '1', '8', '1', '0', '90', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('355', '2017-05-25 16:14:13', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '268.84', '73', '1', '6', '1', '0', '100', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('356', '2017-05-25 16:14:13', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '331.73', '74', '1', '9', '1', '0', '96', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('357', '2017-05-25 16:14:13', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '508.51', '75', '1', '9', '1', '0', '84', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('358', '2017-05-25 16:14:13', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '193.23', '76', '1', '7', '1', '0', '95', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('359', '2017-05-25 16:14:13', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '309.22', '77', '1', '7', '1', '0', '40', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('360', '2017-05-25 16:14:13', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '130.98', '78', '1', '3', '1', '0', '63', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('361', '2017-05-25 16:14:13', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '253.01', '79', '1', '8', '1', '0', '48', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('362', '2017-05-25 16:14:13', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '898.43', '80', '1', '4', '1', '0', '69', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('363', '2017-05-25 16:14:13', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '652.13', '81', '1', '2', '1', '0', '92', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('364', '2017-05-25 16:14:13', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '291.77', '82', '1', '10', '1', '0', '35', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('365', '2017-05-25 16:14:13', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '404.50', '83', '1', '10', '1', '0', '97', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('366', '2017-05-25 16:14:13', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '657.68', '84', '1', '4', '1', '0', '23', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('367', '2017-05-25 16:14:13', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '825.49', '85', '1', '9', '1', '0', '21', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('368', '2017-05-25 16:14:13', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '399.21', '86', '1', '9', '1', '0', '58', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('369', '2017-05-25 16:14:13', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '450.90', '87', '1', '9', '1', '0', '48', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('370', '2017-05-25 16:14:13', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '871.05', '88', '1', '2', '1', '0', '85', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('371', '2017-05-25 16:14:13', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '289.68', '89', '1', '5', '1', '0', '51', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('372', '2017-05-25 16:14:13', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '916.01', '90', '1', '8', '1', '0', '45', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('373', '2017-05-25 16:14:13', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '851.65', '91', '1', '10', '1', '0', '51', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('374', '2017-05-25 16:14:13', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '763.14', '92', '1', '2', '1', '0', '58', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('375', '2017-05-25 16:14:13', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '667.25', '93', '1', '8', '1', '0', '19', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('376', '2017-05-25 16:14:13', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '555.12', '94', '1', '5', '1', '0', '62', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('377', '2017-05-25 16:14:13', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '773.74', '1', '1', '7', '1', '0', '67', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('378', '2017-05-25 16:14:13', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '132.88', '2', '1', '3', '1', '0', '32', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('379', '2017-05-25 16:14:13', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '477.11', '3', '1', '1', '1', '0', '63', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('380', '2017-05-25 16:14:13', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '130.67', '4', '1', '6', '1', '0', '100', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('381', '2017-05-25 16:14:13', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '464.50', '5', '1', '10', '1', '0', '2', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('382', '2017-05-25 16:14:13', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '940.86', '6', '1', '6', '1', '0', '70', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('383', '2017-05-25 16:14:13', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '280.51', '7', '1', '8', '1', '0', '18', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('384', '2017-05-25 16:14:13', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '727.22', '8', '1', '6', '1', '0', '24', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('385', '2017-05-25 16:14:13', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '176.59', '9', '1', '1', '1', '0', '100', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('386', '2017-05-25 16:14:13', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '696.21', '10', '1', '7', '1', '0', '93', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('387', '2017-05-25 16:14:13', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '170.40', '11', '1', '7', '1', '0', '71', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('388', '2017-05-25 16:14:13', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '91.17', '12', '1', '3', '1', '0', '100', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('389', '2017-05-25 16:14:13', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '725.91', '13', '1', '4', '1', '0', '33', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('390', '2017-05-25 16:14:13', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '433.49', '14', '1', '5', '1', '0', '69', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('391', '2017-05-25 16:14:13', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '91.61', '15', '1', '7', '1', '0', '5', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('392', '2017-05-25 16:14:13', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '992.32', '16', '1', '9', '1', '0', '12', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('393', '2017-05-25 16:14:13', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '959.24', '17', '1', '8', '1', '0', '13', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('394', '2017-05-25 16:14:13', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '181.07', '18', '1', '6', '1', '0', '51', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('395', '2017-05-25 16:14:13', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '565.93', '19', '1', '5', '1', '0', '90', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('396', '2017-05-25 16:14:13', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '930.20', '20', '1', '9', '1', '0', '67', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('397', '2017-05-25 16:14:13', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '636.10', '21', '1', '1', '1', '0', '32', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('398', '2017-05-25 16:14:13', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '213.48', '22', '1', '1', '1', '0', '51', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('399', '2017-05-25 16:14:13', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '14.75', '23', '1', '9', '1', '0', '17', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('400', '2017-05-25 16:14:13', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '966.43', '24', '1', '8', '1', '0', '1', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('401', '2017-05-25 16:14:13', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '487.91', '25', '1', '1', '1', '0', '67', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('402', '2017-05-25 16:14:13', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '53.49', '26', '1', '6', '1', '0', '100', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('403', '2017-05-25 16:14:13', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '20.85', '27', '1', '2', '1', '0', '82', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('404', '2017-05-25 16:14:13', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '653.32', '28', '1', '1', '1', '0', '38', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('405', '2017-05-25 16:14:13', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '507.91', '29', '1', '4', '1', '0', '87', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('406', '2017-05-25 16:14:13', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '143.68', '30', '1', '1', '1', '0', '80', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('407', '2017-05-25 16:14:13', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '551.93', '31', '1', '2', '1', '0', '60', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('408', '2017-05-25 16:14:13', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '998.25', '32', '1', '7', '1', '0', '89', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('409', '2017-05-25 16:14:13', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '846.16', '33', '1', '9', '1', '0', '26', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('410', '2017-05-25 16:14:13', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '342.31', '34', '1', '9', '1', '0', '80', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('411', '2017-05-25 16:14:13', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '380.35', '35', '1', '3', '1', '0', '85', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('412', '2017-05-25 16:14:13', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '154.75', '36', '1', '2', '1', '0', '27', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('413', '2017-05-25 16:14:13', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '36.90', '37', '1', '5', '1', '0', '92', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('414', '2017-05-25 16:14:13', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '915.45', '38', '1', '7', '1', '0', '17', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('415', '2017-05-25 16:14:13', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '676.52', '39', '1', '8', '1', '0', '70', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('416', '2017-05-25 16:14:13', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '62.93', '40', '1', '8', '1', '0', '74', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('417', '2017-05-25 16:14:13', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '668.98', '41', '1', '4', '1', '0', '13', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('418', '2017-05-25 16:14:13', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '494.72', '42', '1', '7', '1', '0', '55', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('419', '2017-05-25 16:14:13', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '28.03', '43', '1', '9', '1', '0', '65', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('420', '2017-05-25 16:14:13', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '576.00', '44', '1', '5', '1', '0', '98', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('421', '2017-05-25 16:14:13', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '25.38', '45', '1', '9', '1', '0', '68', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('422', '2017-05-25 16:14:13', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '549.21', '46', '1', '3', '1', '0', '87', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('423', '2017-05-25 16:14:13', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '942.10', '47', '1', '2', '1', '0', '18', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('424', '2017-05-25 16:14:13', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '703.71', '48', '1', '8', '1', '0', '18', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('425', '2017-05-25 16:14:13', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '663.96', '49', '1', '1', '1', '0', '76', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('426', '2017-05-25 16:14:13', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '280.73', '50', '1', '9', '1', '0', '63', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('427', '2017-05-25 16:14:13', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '225.95', '51', '1', '3', '1', '0', '35', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('428', '2017-05-25 16:14:13', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '479.99', '52', '1', '5', '1', '0', '77', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('429', '2017-05-25 16:14:13', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '389.20', '53', '1', '7', '1', '0', '71', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('430', '2017-05-25 16:14:13', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '492.76', '54', '1', '9', '1', '0', '16', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('431', '2017-05-25 16:14:13', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '507.81', '55', '1', '7', '1', '0', '32', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('432', '2017-05-25 16:14:13', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '619.14', '56', '1', '7', '1', '0', '88', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('433', '2017-05-25 16:14:13', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '573.45', '57', '1', '9', '1', '0', '84', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('434', '2017-05-25 16:14:13', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '906.65', '58', '1', '4', '1', '0', '53', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('435', '2017-05-25 16:14:13', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '560.67', '59', '1', '8', '1', '0', '26', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('436', '2017-05-25 16:14:13', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '563.26', '60', '1', '2', '1', '0', '37', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('437', '2017-05-25 16:14:13', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '326.23', '61', '1', '1', '1', '0', '92', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('438', '2017-05-25 16:14:13', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '602.52', '62', '1', '2', '1', '0', '86', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('439', '2017-05-25 16:14:13', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '21.67', '63', '1', '4', '1', '0', '10', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('440', '2017-05-25 16:14:13', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '743.58', '64', '1', '3', '1', '0', '6', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('441', '2017-05-25 16:14:13', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '581.54', '65', '1', '9', '1', '0', '27', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('442', '2017-05-25 16:14:13', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '747.78', '66', '1', '5', '1', '0', '32', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('443', '2017-05-25 16:14:13', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '561.70', '67', '1', '7', '1', '0', '47', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('444', '2017-05-25 16:14:13', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '879.10', '68', '1', '1', '1', '0', '87', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('445', '2017-05-25 16:14:13', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '775.40', '69', '1', '10', '1', '0', '73', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('446', '2017-05-25 16:14:13', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '542.71', '70', '1', '6', '1', '0', '22', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('447', '2017-05-25 16:14:13', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '553.30', '71', '1', '6', '1', '0', '62', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('448', '2017-05-25 16:14:13', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '918.47', '72', '1', '1', '1', '0', '58', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('449', '2017-05-25 16:14:13', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '419.96', '73', '1', '4', '1', '0', '100', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('450', '2017-05-25 16:14:13', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '360.44', '74', '1', '7', '1', '0', '81', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('451', '2017-05-25 16:14:13', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '808.86', '75', '1', '10', '1', '0', '15', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('452', '2017-05-25 16:14:13', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '794.03', '76', '1', '8', '1', '0', '44', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('453', '2017-05-25 16:14:13', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '545.29', '77', '1', '5', '1', '0', '37', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('454', '2017-05-25 16:14:13', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '387.77', '78', '1', '8', '1', '0', '2', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('455', '2017-05-25 16:14:13', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '17.42', '79', '1', '6', '1', '0', '21', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('456', '2017-05-25 16:14:13', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '502.26', '80', '1', '4', '1', '0', '5', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('457', '2017-05-25 16:14:13', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '676.50', '81', '1', '7', '1', '0', '8', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('458', '2017-05-25 16:14:13', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '683.56', '82', '1', '8', '1', '0', '18', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('459', '2017-05-25 16:14:13', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '94.72', '83', '1', '1', '1', '0', '29', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('460', '2017-05-25 16:14:13', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '150.41', '84', '1', '10', '1', '0', '50', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('461', '2017-05-25 16:14:13', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '741.05', '85', '1', '1', '1', '0', '92', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('462', '2017-05-25 16:14:13', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '463.14', '86', '1', '8', '1', '0', '36', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('463', '2017-05-25 16:14:13', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '779.54', '87', '1', '2', '1', '0', '88', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('464', '2017-05-25 16:14:13', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '516.43', '88', '1', '1', '1', '0', '83', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('465', '2017-05-25 16:14:13', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '60.24', '89', '1', '7', '1', '0', '64', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('466', '2017-05-25 16:14:13', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '589.89', '90', '1', '2', '1', '0', '43', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('467', '2017-05-25 16:14:13', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '458.90', '91', '1', '4', '1', '0', '31', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('468', '2017-05-25 16:14:13', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '357.93', '92', '1', '9', '1', '0', '1', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('469', '2017-05-25 16:14:13', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '368.69', '93', '1', '5', '1', '0', '60', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('470', '2017-05-25 16:14:13', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '709.45', '94', '1', '9', '1', '0', '70', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('471', '2017-05-25 16:14:13', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '385.19', '1', '1', '10', '1', '0', '9', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('472', '2017-05-25 16:14:13', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '175.45', '2', '1', '1', '1', '0', '98', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('473', '2017-05-25 16:14:13', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '627.07', '3', '1', '3', '1', '0', '28', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('474', '2017-05-25 16:14:13', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '197.07', '4', '1', '6', '1', '0', '20', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('475', '2017-05-25 16:14:13', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '160.20', '5', '1', '1', '1', '0', '5', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('476', '2017-05-25 16:14:14', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '386.38', '6', '1', '9', '1', '0', '55', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('477', '2017-05-25 16:14:14', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '245.56', '7', '1', '4', '1', '0', '45', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('478', '2017-05-25 16:14:14', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '105.51', '8', '1', '7', '1', '0', '5', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('479', '2017-05-25 16:14:14', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '604.28', '9', '1', '7', '1', '0', '49', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('480', '2017-05-25 16:14:14', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '898.14', '10', '1', '7', '1', '0', '75', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('481', '2017-05-25 16:14:14', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '219.84', '11', '1', '5', '1', '0', '81', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('482', '2017-05-25 16:14:14', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '598.66', '12', '1', '6', '1', '0', '39', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('483', '2017-05-25 16:14:14', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '903.32', '13', '1', '5', '1', '0', '75', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('484', '2017-05-25 16:14:14', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '882.57', '14', '1', '3', '1', '0', '97', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('485', '2017-05-25 16:14:14', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '595.92', '15', '1', '1', '1', '0', '24', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('486', '2017-05-25 16:14:14', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '934.96', '16', '1', '7', '1', '0', '71', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('487', '2017-05-25 16:14:14', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '231.70', '17', '1', '4', '1', '0', '51', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('488', '2017-05-25 16:14:14', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '148.32', '18', '1', '3', '1', '0', '65', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('489', '2017-05-25 16:14:14', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '626.68', '19', '1', '4', '1', '0', '81', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('490', '2017-05-25 16:14:14', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '925.36', '20', '1', '7', '1', '0', '7', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('491', '2017-05-25 16:14:14', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '886.44', '21', '1', '3', '1', '0', '10', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('492', '2017-05-25 16:14:14', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '884.04', '22', '1', '4', '1', '0', '96', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('493', '2017-05-25 16:14:14', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '960.59', '23', '1', '2', '1', '0', '46', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('494', '2017-05-25 16:14:14', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '931.97', '24', '1', '4', '1', '0', '21', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('495', '2017-05-25 16:14:14', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '335.93', '25', '1', '2', '1', '0', '62', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('496', '2017-05-25 16:14:14', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '702.19', '26', '1', '4', '1', '0', '14', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('497', '2017-05-25 16:14:14', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '211.59', '27', '1', '10', '1', '0', '69', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('498', '2017-05-25 16:14:14', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '896.42', '28', '1', '9', '1', '0', '83', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('499', '2017-05-25 16:14:14', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '485.99', '29', '1', '4', '1', '0', '10', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('500', '2017-05-25 16:14:14', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '852.08', '30', '1', '10', '1', '0', '34', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('501', '2017-05-25 16:14:14', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '299.48', '31', '1', '7', '1', '0', '64', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('502', '2017-05-25 16:14:14', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '591.07', '32', '1', '2', '1', '0', '86', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('503', '2017-05-25 16:14:14', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '896.66', '33', '1', '1', '1', '0', '1', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('504', '2017-05-25 16:14:14', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '190.18', '34', '1', '4', '1', '0', '96', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('505', '2017-05-25 16:14:14', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '21.21', '35', '1', '7', '1', '0', '61', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('506', '2017-05-25 16:14:14', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '271.63', '36', '1', '1', '1', '0', '25', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('507', '2017-05-25 16:14:14', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '645.14', '37', '1', '2', '1', '0', '3', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('508', '2017-05-25 16:14:14', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '996.87', '38', '1', '6', '1', '0', '51', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('509', '2017-05-25 16:14:14', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '416.04', '39', '1', '5', '1', '0', '83', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('510', '2017-05-25 16:14:14', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '176.21', '40', '1', '2', '1', '0', '18', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('511', '2017-05-25 16:14:14', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '23.23', '41', '1', '9', '1', '0', '73', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('512', '2017-05-25 16:14:14', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '11.02', '42', '1', '9', '1', '0', '38', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('513', '2017-05-25 16:14:14', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '621.58', '43', '1', '7', '1', '0', '97', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('514', '2017-05-25 16:14:14', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '863.82', '44', '1', '6', '1', '0', '16', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('515', '2017-05-25 16:14:14', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '282.42', '45', '1', '2', '1', '0', '75', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('516', '2017-05-25 16:14:14', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '117.26', '46', '1', '4', '1', '0', '1', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('517', '2017-05-25 16:14:14', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '82.31', '47', '1', '1', '1', '0', '73', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('518', '2017-05-25 16:14:14', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '214.31', '48', '1', '1', '1', '0', '53', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('519', '2017-05-25 16:14:14', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '194.97', '49', '1', '9', '1', '0', '91', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('520', '2017-05-25 16:14:14', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '965.46', '50', '1', '10', '1', '0', '5', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('521', '2017-05-25 16:14:14', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '168.87', '51', '1', '2', '1', '0', '32', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('522', '2017-05-25 16:14:14', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '22.19', '52', '1', '5', '1', '0', '3', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('523', '2017-05-25 16:14:14', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '286.72', '53', '1', '1', '1', '0', '44', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('524', '2017-05-25 16:14:14', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '428.00', '54', '1', '10', '1', '0', '93', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('525', '2017-05-25 16:14:14', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '493.78', '55', '1', '5', '1', '0', '84', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('526', '2017-05-25 16:14:14', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '508.34', '56', '1', '9', '1', '0', '74', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('527', '2017-05-25 16:14:14', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '215.04', '57', '1', '9', '1', '0', '49', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('528', '2017-05-25 16:14:14', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '207.58', '58', '1', '1', '1', '0', '37', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('529', '2017-05-25 16:14:14', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '467.96', '59', '1', '4', '1', '0', '59', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('530', '2017-05-25 16:14:14', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '746.48', '60', '1', '8', '1', '0', '76', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('531', '2017-05-25 16:14:14', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '915.27', '61', '1', '10', '1', '0', '45', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('532', '2017-05-25 16:14:14', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '96.92', '62', '1', '8', '1', '0', '88', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('533', '2017-05-25 16:14:14', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '932.71', '63', '1', '4', '1', '0', '77', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('534', '2017-05-25 16:14:14', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '955.23', '64', '1', '6', '1', '0', '25', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('535', '2017-05-25 16:14:14', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '819.11', '65', '1', '4', '1', '0', '5', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('536', '2017-05-25 16:14:14', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '361.12', '66', '1', '7', '1', '0', '2', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('537', '2017-05-25 16:14:14', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '22.77', '67', '1', '1', '1', '0', '93', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('538', '2017-05-25 16:14:14', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '842.32', '68', '1', '4', '1', '0', '19', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('539', '2017-05-25 16:14:14', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '660.88', '69', '1', '3', '1', '0', '81', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('540', '2017-05-25 16:14:14', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '464.86', '70', '1', '3', '1', '0', '24', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('541', '2017-05-25 16:14:14', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '768.95', '71', '1', '4', '1', '0', '13', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('542', '2017-05-25 16:14:14', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '703.59', '72', '1', '1', '1', '0', '25', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('543', '2017-05-25 16:14:14', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '130.27', '73', '1', '10', '1', '0', '63', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('544', '2017-05-25 16:14:14', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '898.52', '74', '1', '9', '1', '0', '91', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('545', '2017-05-25 16:14:14', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '332.29', '75', '1', '2', '1', '0', '91', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('546', '2017-05-25 16:14:14', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '777.74', '76', '1', '9', '1', '0', '13', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('547', '2017-05-25 16:14:14', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '904.90', '77', '1', '9', '1', '0', '65', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('548', '2017-05-25 16:14:14', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '170.83', '78', '1', '4', '1', '0', '5', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('549', '2017-05-25 16:14:14', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '177.10', '79', '1', '5', '1', '0', '55', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('550', '2017-05-25 16:14:14', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '436.58', '80', '1', '4', '1', '0', '75', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('551', '2017-05-25 16:14:14', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '401.63', '81', '1', '5', '1', '0', '98', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('552', '2017-05-25 16:14:14', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '130.51', '82', '1', '3', '1', '0', '15', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('553', '2017-05-25 16:14:14', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '936.12', '83', '1', '7', '1', '0', '80', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('554', '2017-05-25 16:14:14', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '151.09', '84', '1', '1', '1', '0', '21', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('555', '2017-05-25 16:14:14', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '922.30', '85', '1', '3', '1', '0', '21', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('556', '2017-05-25 16:14:14', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '655.27', '86', '1', '5', '1', '0', '32', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('557', '2017-05-25 16:14:14', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '198.98', '87', '1', '9', '1', '0', '96', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('558', '2017-05-25 16:14:14', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '814.95', '88', '1', '5', '1', '0', '99', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('559', '2017-05-25 16:14:14', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '737.99', '89', '1', '4', '1', '0', '6', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('560', '2017-05-25 16:14:14', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '403.65', '90', '1', '6', '1', '0', '51', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('561', '2017-05-25 16:14:14', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '963.57', '91', '1', '5', '1', '0', '9', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('562', '2017-05-25 16:14:14', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '930.48', '92', '1', '7', '1', '0', '47', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('563', '2017-05-25 16:14:14', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '55.21', '93', '1', '1', '1', '0', '58', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('564', '2017-05-25 16:14:14', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '763.90', '94', '1', '2', '1', '0', '68', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('565', '2017-05-25 16:14:14', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '30.28', '1', '1', '9', '1', '0', '53', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('566', '2017-05-25 16:14:14', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '365.44', '2', '1', '7', '1', '0', '54', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('567', '2017-05-25 16:14:14', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '737.91', '3', '1', '2', '1', '0', '58', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('568', '2017-05-25 16:14:14', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '353.61', '4', '1', '10', '1', '0', '82', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('569', '2017-05-25 16:14:14', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '190.08', '5', '1', '3', '1', '0', '60', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('570', '2017-05-25 16:14:14', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '875.01', '6', '1', '10', '1', '0', '21', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('571', '2017-05-25 16:14:14', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '121.49', '7', '1', '8', '1', '0', '4', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('572', '2017-05-25 16:14:14', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '424.87', '8', '1', '8', '1', '0', '25', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('573', '2017-05-25 16:14:14', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '660.24', '9', '1', '1', '1', '0', '69', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('574', '2017-05-25 16:14:14', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '349.74', '10', '1', '7', '1', '0', '3', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('575', '2017-05-25 16:14:14', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '247.75', '11', '1', '5', '1', '0', '30', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('576', '2017-05-25 16:14:14', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '311.93', '12', '1', '9', '1', '0', '98', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('577', '2017-05-25 16:14:14', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '854.94', '13', '1', '4', '1', '0', '55', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('578', '2017-05-25 16:14:14', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '797.73', '14', '1', '4', '1', '0', '1', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('579', '2017-05-25 16:14:14', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '374.52', '15', '1', '2', '1', '0', '87', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('580', '2017-05-25 16:14:14', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '621.90', '16', '1', '8', '1', '0', '39', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('581', '2017-05-25 16:14:14', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '243.42', '17', '1', '2', '1', '0', '72', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('582', '2017-05-25 16:14:14', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '399.14', '18', '1', '6', '1', '0', '79', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('583', '2017-05-25 16:14:14', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '668.94', '19', '1', '10', '1', '0', '48', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('584', '2017-05-25 16:14:14', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '213.65', '20', '1', '10', '1', '0', '25', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('585', '2017-05-25 16:14:14', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '744.27', '21', '1', '9', '1', '0', '97', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('586', '2017-05-25 16:14:14', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '580.70', '22', '1', '1', '1', '0', '38', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('587', '2017-05-25 16:14:14', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '580.79', '23', '1', '2', '1', '0', '48', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('588', '2017-05-25 16:14:14', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '136.00', '24', '1', '3', '1', '0', '90', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('589', '2017-05-25 16:14:14', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '832.31', '25', '1', '7', '1', '0', '96', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('590', '2017-05-25 16:14:14', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '950.02', '26', '1', '5', '1', '0', '47', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('591', '2017-05-25 16:14:14', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '509.93', '27', '1', '2', '1', '0', '13', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('592', '2017-05-25 16:14:14', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '603.79', '28', '1', '2', '1', '0', '69', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('593', '2017-05-25 16:14:14', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '293.01', '29', '1', '1', '1', '0', '67', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('594', '2017-05-25 16:14:14', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '102.20', '30', '1', '3', '1', '0', '23', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('595', '2017-05-25 16:14:14', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '31.65', '31', '1', '1', '1', '0', '36', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('596', '2017-05-25 16:14:14', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '778.50', '32', '1', '4', '1', '0', '1', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('597', '2017-05-25 16:14:14', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '349.73', '33', '1', '6', '1', '0', '5', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('598', '2017-05-25 16:14:14', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '765.26', '34', '1', '9', '1', '0', '63', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('599', '2017-05-25 16:14:14', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '124.32', '35', '1', '1', '1', '0', '52', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('600', '2017-05-25 16:14:14', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '590.13', '36', '1', '3', '1', '0', '5', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('601', '2017-05-25 16:14:14', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '709.99', '37', '1', '3', '1', '0', '67', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('602', '2017-05-25 16:14:14', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '486.29', '38', '1', '2', '1', '0', '87', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('603', '2017-05-25 16:14:14', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '555.54', '39', '1', '9', '1', '0', '50', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('604', '2017-05-25 16:14:14', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '87.97', '40', '1', '8', '1', '0', '54', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('605', '2017-05-25 16:14:14', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '930.00', '41', '1', '1', '1', '0', '85', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('606', '2017-05-25 16:14:14', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '76.98', '42', '1', '1', '1', '0', '30', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('607', '2017-05-25 16:14:14', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '826.36', '43', '1', '1', '1', '0', '88', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('608', '2017-05-25 16:14:14', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '839.92', '44', '1', '5', '1', '0', '47', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('609', '2017-05-25 16:14:14', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '379.89', '45', '1', '5', '1', '0', '50', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('610', '2017-05-25 16:14:14', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '334.79', '46', '1', '10', '1', '0', '60', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('611', '2017-05-25 16:14:14', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '847.23', '47', '1', '9', '1', '0', '76', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('612', '2017-05-25 16:14:14', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '713.77', '48', '1', '1', '1', '0', '38', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('613', '2017-05-25 16:14:14', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '7.70', '49', '1', '7', '1', '0', '82', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('614', '2017-05-25 16:14:14', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '135.37', '50', '1', '3', '1', '0', '31', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('615', '2017-05-25 16:14:14', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '825.46', '51', '1', '6', '1', '0', '12', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('616', '2017-05-25 16:14:14', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '968.37', '52', '1', '6', '1', '0', '96', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('617', '2017-05-25 16:14:14', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '46.01', '53', '1', '2', '1', '0', '96', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('618', '2017-05-25 16:14:14', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '851.95', '54', '1', '4', '1', '0', '74', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('619', '2017-05-25 16:14:14', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '680.40', '55', '1', '5', '1', '0', '85', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('620', '2017-05-25 16:14:14', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '958.76', '56', '1', '4', '1', '0', '62', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('621', '2017-05-25 16:14:14', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '782.94', '57', '1', '1', '1', '0', '22', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('622', '2017-05-25 16:14:14', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '199.20', '58', '1', '4', '1', '0', '40', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('623', '2017-05-25 16:14:14', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '671.02', '59', '1', '1', '1', '0', '61', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('624', '2017-05-25 16:14:14', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '916.37', '60', '1', '8', '1', '0', '31', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('625', '2017-05-25 16:14:14', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '527.82', '61', '1', '8', '1', '0', '77', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('626', '2017-05-25 16:14:14', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '21.91', '62', '1', '2', '1', '0', '61', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('627', '2017-05-25 16:14:14', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '820.00', '63', '1', '3', '1', '0', '47', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('628', '2017-05-25 16:14:14', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '204.03', '64', '1', '7', '1', '0', '23', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('629', '2017-05-25 16:14:14', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '942.09', '65', '1', '1', '1', '0', '77', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('630', '2017-05-25 16:14:14', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '252.77', '66', '1', '3', '1', '0', '26', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('631', '2017-05-25 16:14:14', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '148.86', '67', '1', '7', '1', '0', '6', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('632', '2017-05-25 16:14:14', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '165.25', '68', '1', '3', '1', '0', '67', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('633', '2017-05-25 16:14:14', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '977.07', '69', '1', '7', '1', '0', '45', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('634', '2017-05-25 16:14:14', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '249.10', '70', '1', '2', '1', '0', '15', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('635', '2017-05-25 16:14:14', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '700.80', '71', '1', '6', '1', '0', '65', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('636', '2017-05-25 16:14:14', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '188.06', '72', '1', '8', '1', '0', '99', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('637', '2017-05-25 16:14:14', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '762.85', '73', '1', '5', '1', '0', '99', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('638', '2017-05-25 16:14:14', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '984.80', '74', '1', '8', '1', '0', '7', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('639', '2017-05-25 16:14:14', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '820.97', '75', '1', '1', '1', '0', '98', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('640', '2017-05-25 16:14:14', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '886.14', '76', '1', '3', '1', '0', '73', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('641', '2017-05-25 16:14:14', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '926.51', '77', '1', '3', '1', '0', '60', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('642', '2017-05-25 16:14:14', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '121.77', '78', '1', '8', '1', '0', '67', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('643', '2017-05-25 16:14:14', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '188.45', '79', '1', '10', '1', '0', '96', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('644', '2017-05-25 16:14:14', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '363.19', '80', '1', '10', '1', '0', '15', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('645', '2017-05-25 16:14:14', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '982.53', '81', '1', '9', '1', '0', '23', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('646', '2017-05-25 16:14:14', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '814.11', '82', '1', '2', '1', '0', '9', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('647', '2017-05-25 16:14:14', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '649.59', '83', '1', '9', '1', '0', '79', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('648', '2017-05-25 16:14:14', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '371.58', '84', '1', '10', '1', '0', '7', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('649', '2017-05-25 16:14:14', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '635.02', '85', '1', '5', '1', '0', '8', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('650', '2017-05-25 16:14:14', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '208.72', '86', '1', '5', '1', '0', '72', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('651', '2017-05-25 16:14:14', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '989.62', '87', '1', '10', '1', '0', '49', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('652', '2017-05-25 16:14:14', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '801.84', '88', '1', '6', '1', '0', '80', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('653', '2017-05-25 16:14:14', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '58.51', '89', '1', '4', '1', '0', '68', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('654', '2017-05-25 16:14:14', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '997.53', '90', '1', '3', '1', '0', '65', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('655', '2017-05-25 16:14:14', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '397.38', '91', '1', '3', '1', '0', '64', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('656', '2017-05-25 16:14:14', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '347.17', '92', '1', '1', '1', '0', '97', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('657', '2017-05-25 16:14:14', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '483.10', '93', '1', '2', '1', '0', '28', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('658', '2017-05-25 16:14:14', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '49.55', '94', '1', '1', '1', '0', '37', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('659', '2017-05-25 16:14:14', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '527.47', '1', '1', '2', '1', '0', '47', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('660', '2017-05-25 16:14:14', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '375.40', '2', '1', '2', '1', '0', '23', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('661', '2017-05-25 16:14:14', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '699.75', '3', '1', '9', '1', '0', '16', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('662', '2017-05-25 16:14:14', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '104.92', '4', '1', '7', '1', '0', '81', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('663', '2017-05-25 16:14:14', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '744.88', '5', '1', '7', '1', '0', '41', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('664', '2017-05-25 16:14:14', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '10.71', '6', '1', '7', '1', '0', '67', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('665', '2017-05-25 16:14:14', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '422.63', '7', '1', '5', '1', '0', '62', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('666', '2017-05-25 16:14:14', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '748.41', '8', '1', '9', '1', '0', '14', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('667', '2017-05-25 16:14:14', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '348.95', '9', '1', '6', '1', '0', '24', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('668', '2017-05-25 16:14:14', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '178.16', '10', '1', '2', '1', '0', '97', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('669', '2017-05-25 16:14:14', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '798.28', '11', '1', '2', '1', '0', '72', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('670', '2017-05-25 16:14:14', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '396.74', '12', '1', '2', '1', '0', '47', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('671', '2017-05-25 16:14:14', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '316.72', '13', '1', '9', '1', '0', '75', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('672', '2017-05-25 16:14:14', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '896.69', '14', '1', '7', '1', '0', '93', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('673', '2017-05-25 16:14:14', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '734.79', '15', '1', '6', '1', '0', '95', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('674', '2017-05-25 16:14:14', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '831.51', '16', '1', '9', '1', '0', '98', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('675', '2017-05-25 16:14:14', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '380.26', '17', '1', '10', '1', '0', '60', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('676', '2017-05-25 16:14:14', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '419.18', '18', '1', '4', '1', '0', '36', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('677', '2017-05-25 16:14:14', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '139.53', '19', '1', '6', '1', '0', '77', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('678', '2017-05-25 16:14:14', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '889.04', '20', '1', '10', '1', '0', '24', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('679', '2017-05-25 16:14:14', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '57.97', '21', '1', '9', '1', '0', '69', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('680', '2017-05-25 16:14:14', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '913.62', '22', '1', '2', '1', '0', '96', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('681', '2017-05-25 16:14:14', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '600.05', '23', '1', '9', '1', '0', '86', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('682', '2017-05-25 16:14:14', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '278.49', '24', '1', '6', '1', '0', '96', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('683', '2017-05-25 16:14:14', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '597.02', '25', '1', '9', '1', '0', '78', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('684', '2017-05-25 16:14:14', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '254.56', '26', '1', '4', '1', '0', '36', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('685', '2017-05-25 16:14:14', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '520.44', '27', '1', '8', '1', '0', '55', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('686', '2017-05-25 16:14:14', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '141.29', '28', '1', '5', '1', '0', '26', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('687', '2017-05-25 16:14:14', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '652.13', '29', '1', '5', '1', '0', '75', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('688', '2017-05-25 16:14:14', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '152.01', '30', '1', '3', '1', '0', '50', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('689', '2017-05-25 16:14:14', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '234.14', '31', '1', '7', '1', '0', '84', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('690', '2017-05-25 16:14:14', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '887.92', '32', '1', '9', '1', '0', '26', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('691', '2017-05-25 16:14:14', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '925.33', '33', '1', '10', '1', '0', '85', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('692', '2017-05-25 16:14:14', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '282.93', '34', '1', '6', '1', '0', '99', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('693', '2017-05-25 16:14:14', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '154.27', '35', '1', '3', '1', '0', '48', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('694', '2017-05-25 16:14:14', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '51.97', '36', '1', '5', '1', '0', '55', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('695', '2017-05-25 16:14:14', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '921.98', '37', '1', '6', '1', '0', '32', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('696', '2017-05-25 16:14:14', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '310.44', '38', '1', '9', '1', '0', '98', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('697', '2017-05-25 16:14:14', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '593.90', '39', '1', '8', '1', '0', '59', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('698', '2017-05-25 16:14:14', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '386.88', '40', '1', '2', '1', '0', '46', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('699', '2017-05-25 16:14:14', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '440.34', '41', '1', '6', '1', '0', '99', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('700', '2017-05-25 16:14:14', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '676.70', '42', '1', '5', '1', '0', '75', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('701', '2017-05-25 16:14:14', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '491.00', '43', '1', '1', '1', '0', '32', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('702', '2017-05-25 16:14:14', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '197.32', '44', '1', '5', '1', '0', '52', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('703', '2017-05-25 16:14:14', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '404.93', '45', '1', '5', '1', '0', '40', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('704', '2017-05-25 16:14:14', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '837.71', '46', '1', '1', '1', '0', '3', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('705', '2017-05-25 16:14:14', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '906.95', '47', '1', '4', '1', '0', '37', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('706', '2017-05-25 16:14:14', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '945.02', '48', '1', '1', '1', '0', '56', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('707', '2017-05-25 16:14:14', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '178.66', '49', '1', '7', '1', '0', '14', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('708', '2017-05-25 16:14:14', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '171.81', '50', '1', '9', '1', '0', '96', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('709', '2017-05-25 16:14:14', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '832.20', '51', '1', '5', '1', '0', '89', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('710', '2017-05-25 16:14:14', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '498.12', '52', '1', '2', '1', '0', '44', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('711', '2017-05-25 16:14:14', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '544.03', '53', '1', '7', '1', '0', '9', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('712', '2017-05-25 16:14:14', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '138.30', '54', '1', '5', '1', '0', '29', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('713', '2017-05-25 16:14:14', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '529.04', '55', '1', '10', '1', '0', '57', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('714', '2017-05-25 16:14:14', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '3.02', '56', '1', '2', '1', '0', '83', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('715', '2017-05-25 16:14:14', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '130.92', '57', '1', '9', '1', '0', '62', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('716', '2017-05-25 16:14:14', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '388.53', '58', '1', '7', '1', '0', '23', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('717', '2017-05-25 16:14:14', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '369.31', '59', '1', '8', '1', '0', '67', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('718', '2017-05-25 16:14:15', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '249.96', '60', '1', '1', '1', '0', '79', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('719', '2017-05-25 16:14:15', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '186.30', '61', '1', '4', '1', '0', '45', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('720', '2017-05-25 16:14:15', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '439.23', '62', '1', '9', '1', '0', '52', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('721', '2017-05-25 16:14:15', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '882.97', '63', '1', '3', '1', '0', '40', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('722', '2017-05-25 16:14:15', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '575.80', '64', '1', '6', '1', '0', '100', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('723', '2017-05-25 16:14:15', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '231.08', '65', '1', '1', '1', '0', '95', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('724', '2017-05-25 16:14:15', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '206.11', '66', '1', '10', '1', '0', '42', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('725', '2017-05-25 16:14:15', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '524.27', '67', '1', '1', '1', '0', '36', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('726', '2017-05-25 16:14:15', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '801.93', '68', '1', '9', '1', '0', '56', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('727', '2017-05-25 16:14:15', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '329.50', '69', '1', '1', '1', '0', '60', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('728', '2017-05-25 16:14:15', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '165.64', '70', '1', '8', '1', '0', '1', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('729', '2017-05-25 16:14:15', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '483.05', '71', '1', '4', '1', '0', '44', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('730', '2017-05-25 16:14:15', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '440.54', '72', '1', '3', '1', '0', '55', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('731', '2017-05-25 16:14:15', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '408.70', '73', '1', '10', '1', '0', '54', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('732', '2017-05-25 16:14:15', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '163.80', '74', '1', '3', '1', '0', '37', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('733', '2017-05-25 16:14:15', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '721.27', '75', '1', '5', '1', '0', '71', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('734', '2017-05-25 16:14:15', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '418.95', '76', '1', '5', '1', '0', '71', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('735', '2017-05-25 16:14:15', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '309.09', '77', '1', '4', '1', '0', '1', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('736', '2017-05-25 16:14:15', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '922.90', '78', '1', '4', '1', '0', '59', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('737', '2017-05-25 16:14:15', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '299.02', '79', '1', '3', '1', '0', '98', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('738', '2017-05-25 16:14:15', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '869.67', '80', '1', '9', '1', '0', '54', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('739', '2017-05-25 16:14:15', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '20.73', '81', '1', '9', '1', '0', '28', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('740', '2017-05-25 16:14:15', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '110.96', '82', '1', '10', '1', '0', '95', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('741', '2017-05-25 16:14:15', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '968.73', '83', '1', '3', '1', '0', '23', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('742', '2017-05-25 16:14:15', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '112.97', '84', '1', '4', '1', '0', '8', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('743', '2017-05-25 16:14:15', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '866.42', '85', '1', '4', '1', '0', '16', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('744', '2017-05-25 16:14:15', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '432.93', '86', '1', '9', '1', '0', '59', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('745', '2017-05-25 16:14:15', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '963.21', '87', '1', '1', '1', '0', '78', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('746', '2017-05-25 16:14:15', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '819.00', '88', '1', '4', '1', '0', '56', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('747', '2017-05-25 16:14:15', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '229.13', '89', '1', '4', '1', '0', '36', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('748', '2017-05-25 16:14:15', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '578.97', '90', '1', '9', '1', '0', '4', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('749', '2017-05-25 16:14:15', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '880.19', '91', '1', '4', '1', '0', '24', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('750', '2017-05-25 16:14:15', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '478.12', '92', '1', '4', '1', '0', '64', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('751', '2017-05-25 16:14:15', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '789.84', '93', '1', '1', '1', '0', '84', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('752', '2017-05-25 16:14:15', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '22.29', '94', '1', '7', '1', '0', '9', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('753', '2017-05-25 16:14:15', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '575.01', '1', '1', '10', '1', '0', '48', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('754', '2017-05-25 16:14:15', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '731.14', '2', '1', '7', '1', '0', '4', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('755', '2017-05-25 16:14:15', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '140.74', '3', '1', '1', '1', '0', '35', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('756', '2017-05-25 16:14:15', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '597.44', '4', '1', '1', '1', '0', '53', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('757', '2017-05-25 16:14:15', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '13.27', '5', '1', '3', '1', '0', '51', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('758', '2017-05-25 16:14:15', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '814.91', '6', '1', '10', '1', '0', '91', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('759', '2017-05-25 16:14:15', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '70.01', '7', '1', '4', '1', '0', '93', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('760', '2017-05-25 16:14:15', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '509.76', '8', '1', '2', '1', '0', '45', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('761', '2017-05-25 16:14:15', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '106.35', '9', '1', '8', '1', '0', '75', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('762', '2017-05-25 16:14:15', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '364.41', '10', '1', '3', '1', '0', '36', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('763', '2017-05-25 16:14:15', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '775.87', '11', '1', '8', '1', '0', '41', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('764', '2017-05-25 16:14:15', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '927.57', '12', '1', '4', '1', '0', '20', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('765', '2017-05-25 16:14:15', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '655.31', '13', '1', '9', '1', '0', '13', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('766', '2017-05-25 16:14:15', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '78.85', '14', '1', '7', '1', '0', '93', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('767', '2017-05-25 16:14:15', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '760.86', '15', '1', '3', '1', '0', '65', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('768', '2017-05-25 16:14:15', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '591.07', '16', '1', '10', '1', '0', '40', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('769', '2017-05-25 16:14:15', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '662.43', '17', '1', '1', '1', '0', '5', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('770', '2017-05-25 16:14:15', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '307.30', '18', '1', '8', '1', '0', '15', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('771', '2017-05-25 16:14:15', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '181.96', '19', '1', '3', '1', '0', '84', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('772', '2017-05-25 16:14:15', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '935.16', '20', '1', '10', '1', '0', '57', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('773', '2017-05-25 16:14:15', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '434.91', '21', '1', '9', '1', '0', '95', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('774', '2017-05-25 16:14:15', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '438.35', '22', '1', '2', '1', '0', '18', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('775', '2017-05-25 16:14:15', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '987.48', '23', '1', '10', '1', '0', '22', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('776', '2017-05-25 16:14:15', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '68.38', '24', '1', '6', '1', '0', '62', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('777', '2017-05-25 16:14:15', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '101.16', '25', '1', '3', '1', '0', '8', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('778', '2017-05-25 16:14:15', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '88.73', '26', '1', '7', '1', '0', '85', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('779', '2017-05-25 16:14:15', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '258.69', '27', '1', '6', '1', '0', '7', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('780', '2017-05-25 16:14:15', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '575.96', '28', '1', '10', '1', '0', '47', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('781', '2017-05-25 16:14:15', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '388.00', '29', '1', '3', '1', '0', '34', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('782', '2017-05-25 16:14:15', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '477.36', '30', '1', '7', '1', '0', '73', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('783', '2017-05-25 16:14:15', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '792.59', '31', '1', '2', '1', '0', '64', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('784', '2017-05-25 16:14:15', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '522.22', '32', '1', '1', '1', '0', '82', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('785', '2017-05-25 16:14:15', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '765.64', '33', '1', '10', '1', '0', '77', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('786', '2017-05-25 16:14:15', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '44.24', '34', '1', '9', '1', '0', '10', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('787', '2017-05-25 16:14:15', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '111.02', '35', '1', '9', '1', '0', '28', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('788', '2017-05-25 16:14:15', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '216.16', '36', '1', '5', '1', '0', '54', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('789', '2017-05-25 16:14:15', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '357.52', '37', '1', '8', '1', '0', '87', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('790', '2017-05-25 16:14:15', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '327.63', '38', '1', '5', '1', '0', '26', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('791', '2017-05-25 16:14:15', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '762.78', '39', '1', '5', '1', '0', '71', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('792', '2017-05-25 16:14:15', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '273.58', '40', '1', '10', '1', '0', '85', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('793', '2017-05-25 16:14:15', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '333.27', '41', '1', '8', '1', '0', '3', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('794', '2017-05-25 16:14:15', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '348.23', '42', '1', '5', '1', '0', '6', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('795', '2017-05-25 16:14:15', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '996.52', '43', '1', '1', '1', '0', '61', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('796', '2017-05-25 16:14:15', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '260.42', '44', '1', '10', '1', '0', '23', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('797', '2017-05-25 16:14:15', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '855.58', '45', '1', '7', '1', '0', '62', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('798', '2017-05-25 16:14:15', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '265.96', '46', '1', '9', '1', '0', '92', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('799', '2017-05-25 16:14:15', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '626.01', '47', '1', '5', '1', '0', '89', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('800', '2017-05-25 16:14:15', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '733.66', '48', '1', '1', '1', '0', '71', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('801', '2017-05-25 16:14:15', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '35.66', '49', '1', '4', '1', '0', '82', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('802', '2017-05-25 16:14:15', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '872.42', '50', '1', '8', '1', '0', '84', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('803', '2017-05-25 16:14:15', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '183.38', '51', '1', '5', '1', '0', '88', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('804', '2017-05-25 16:14:15', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '810.31', '52', '1', '4', '1', '0', '15', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('805', '2017-05-25 16:14:15', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '766.95', '53', '1', '7', '1', '0', '41', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('806', '2017-05-25 16:14:15', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '561.49', '54', '1', '10', '1', '0', '81', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('807', '2017-05-25 16:14:15', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '261.75', '55', '1', '5', '1', '0', '50', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('808', '2017-05-25 16:14:15', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '489.09', '56', '1', '9', '1', '0', '61', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('809', '2017-05-25 16:14:15', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '752.97', '57', '1', '4', '1', '0', '79', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('810', '2017-05-25 16:14:15', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '780.78', '58', '1', '3', '1', '0', '63', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('811', '2017-05-25 16:14:15', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '285.60', '59', '1', '3', '1', '0', '22', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('812', '2017-05-25 16:14:15', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '825.76', '60', '1', '6', '1', '0', '25', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('813', '2017-05-25 16:14:15', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '522.85', '61', '1', '6', '1', '0', '24', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('814', '2017-05-25 16:14:15', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '608.19', '62', '1', '8', '1', '0', '73', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('815', '2017-05-25 16:14:15', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '815.26', '63', '1', '3', '1', '0', '23', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('816', '2017-05-25 16:14:15', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '720.25', '64', '1', '3', '1', '0', '98', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('817', '2017-05-25 16:14:15', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '736.81', '65', '1', '2', '1', '0', '86', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('818', '2017-05-25 16:14:15', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '20.88', '66', '1', '1', '1', '0', '45', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('819', '2017-05-25 16:14:15', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '891.60', '67', '1', '8', '1', '0', '62', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('820', '2017-05-25 16:14:15', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '512.06', '68', '1', '7', '1', '0', '44', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('821', '2017-05-25 16:14:15', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '623.90', '69', '1', '5', '1', '0', '18', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('822', '2017-05-25 16:14:15', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '627.72', '70', '1', '7', '1', '0', '60', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('823', '2017-05-25 16:14:15', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '857.24', '71', '1', '5', '1', '0', '13', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('824', '2017-05-25 16:14:15', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '800.24', '72', '1', '8', '1', '0', '40', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('825', '2017-05-25 16:14:15', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '965.54', '73', '1', '5', '1', '0', '25', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('826', '2017-05-25 16:14:15', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '122.06', '74', '1', '2', '1', '0', '69', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('827', '2017-05-25 16:14:15', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '552.87', '75', '1', '4', '1', '0', '77', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('828', '2017-05-25 16:14:15', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '905.28', '76', '1', '9', '1', '0', '98', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('829', '2017-05-25 16:14:15', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '641.19', '77', '1', '4', '1', '0', '93', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('830', '2017-05-25 16:14:15', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '477.86', '78', '1', '7', '1', '0', '50', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('831', '2017-05-25 16:14:15', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '780.42', '79', '1', '6', '1', '0', '17', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('832', '2017-05-25 16:14:15', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '172.29', '80', '1', '10', '1', '0', '64', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('833', '2017-05-25 16:14:15', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '385.81', '81', '1', '10', '1', '0', '18', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('834', '2017-05-25 16:14:15', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '960.38', '82', '1', '8', '1', '0', '5', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('835', '2017-05-25 16:14:15', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '448.83', '83', '1', '9', '1', '0', '64', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('836', '2017-05-25 16:14:15', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '878.56', '84', '1', '1', '1', '0', '80', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('837', '2017-05-25 16:14:15', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '74.34', '85', '1', '1', '1', '0', '81', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('838', '2017-05-25 16:14:15', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '351.57', '86', '1', '10', '1', '0', '49', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('839', '2017-05-25 16:14:15', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '874.45', '87', '1', '8', '1', '0', '61', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('840', '2017-05-25 16:14:15', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '853.16', '88', '1', '6', '1', '0', '90', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('841', '2017-05-25 16:14:15', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '544.31', '89', '1', '7', '1', '0', '80', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('842', '2017-05-25 16:14:15', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '400.64', '90', '1', '3', '1', '0', '96', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('843', '2017-05-25 16:14:15', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '294.50', '91', '1', '7', '1', '0', '58', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('844', '2017-05-25 16:14:15', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '42.10', '92', '1', '2', '1', '0', '40', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('845', '2017-05-25 16:14:15', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '695.42', '93', '1', '8', '1', '0', '96', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('846', '2017-05-25 16:14:15', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '401.98', '94', '1', '5', '1', '0', '3', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('847', '2017-05-25 16:14:15', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '770.41', '1', '1', '1', '1', '0', '3', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('848', '2017-05-25 16:14:15', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '160.29', '2', '1', '9', '1', '0', '31', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('849', '2017-05-25 16:14:15', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '363.67', '3', '1', '8', '1', '0', '43', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('850', '2017-05-25 16:14:15', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '975.49', '4', '1', '6', '1', '0', '53', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('851', '2017-05-25 16:14:15', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '307.31', '5', '1', '4', '1', '0', '89', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('852', '2017-05-25 16:14:15', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '259.30', '6', '1', '10', '1', '0', '67', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('853', '2017-05-25 16:14:15', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '257.71', '7', '1', '1', '1', '0', '13', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('854', '2017-05-25 16:14:15', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '578.23', '8', '1', '4', '1', '0', '69', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('855', '2017-05-25 16:14:15', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '196.47', '9', '1', '2', '1', '0', '40', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('856', '2017-05-25 16:14:15', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '510.27', '10', '1', '3', '1', '0', '85', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('857', '2017-05-25 16:14:15', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '66.29', '11', '1', '1', '1', '0', '71', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('858', '2017-05-25 16:14:15', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '11.98', '12', '1', '10', '1', '0', '71', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('859', '2017-05-25 16:14:15', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '299.46', '13', '1', '9', '1', '0', '65', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('860', '2017-05-25 16:14:15', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '751.97', '14', '1', '6', '1', '0', '85', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('861', '2017-05-25 16:14:15', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '698.22', '15', '1', '4', '1', '0', '40', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('862', '2017-05-25 16:14:15', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '207.66', '16', '1', '8', '1', '0', '5', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('863', '2017-05-25 16:14:15', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '236.06', '17', '1', '2', '1', '0', '36', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('864', '2017-05-25 16:14:15', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '386.30', '18', '1', '8', '1', '0', '75', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('865', '2017-05-25 16:14:15', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '500.18', '19', '1', '4', '1', '0', '16', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('866', '2017-05-25 16:14:15', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '865.50', '20', '1', '5', '1', '0', '16', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('867', '2017-05-25 16:14:15', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '212.19', '21', '1', '6', '1', '0', '66', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('868', '2017-05-25 16:14:15', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '17.02', '22', '1', '7', '1', '0', '65', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('869', '2017-05-25 16:14:15', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '212.68', '23', '1', '6', '1', '0', '11', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('870', '2017-05-25 16:14:15', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '109.10', '24', '1', '1', '1', '0', '22', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('871', '2017-05-25 16:14:15', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '529.91', '25', '1', '4', '1', '0', '27', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('872', '2017-05-25 16:14:15', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '822.31', '26', '1', '4', '1', '0', '31', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('873', '2017-05-25 16:14:15', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '370.54', '27', '1', '8', '1', '0', '42', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('874', '2017-05-25 16:14:15', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '171.39', '28', '1', '4', '1', '0', '96', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('875', '2017-05-25 16:14:15', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '658.46', '29', '1', '2', '1', '0', '12', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('876', '2017-05-25 16:14:15', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '27.44', '30', '1', '5', '1', '0', '10', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('877', '2017-05-25 16:14:15', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '832.28', '31', '1', '6', '1', '0', '65', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('878', '2017-05-25 16:14:15', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '272.83', '32', '1', '1', '1', '0', '36', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('879', '2017-05-25 16:14:15', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '113.40', '33', '1', '1', '1', '0', '52', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('880', '2017-05-25 16:14:15', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '1.49', '34', '1', '8', '1', '0', '63', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('881', '2017-05-25 16:14:15', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '131.10', '35', '1', '1', '1', '0', '5', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('882', '2017-05-25 16:14:15', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '274.34', '36', '1', '4', '1', '0', '75', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('883', '2017-05-25 16:14:15', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '290.37', '37', '1', '7', '1', '0', '13', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('884', '2017-05-25 16:14:15', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '440.16', '38', '1', '9', '1', '0', '51', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('885', '2017-05-25 16:14:15', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '380.59', '39', '1', '10', '1', '0', '84', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('886', '2017-05-25 16:14:15', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '392.00', '40', '1', '2', '1', '0', '57', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('887', '2017-05-25 16:14:15', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '830.70', '41', '1', '3', '1', '0', '3', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('888', '2017-05-25 16:14:15', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '816.64', '42', '1', '8', '1', '0', '29', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('889', '2017-05-25 16:14:15', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '539.13', '43', '1', '7', '1', '0', '16', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('890', '2017-05-25 16:14:15', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '245.77', '44', '1', '2', '1', '0', '15', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('891', '2017-05-25 16:14:15', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '57.81', '45', '1', '8', '1', '0', '97', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('892', '2017-05-25 16:14:15', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '783.45', '46', '1', '3', '1', '0', '61', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('893', '2017-05-25 16:14:15', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '940.06', '47', '1', '10', '1', '0', '62', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('894', '2017-05-25 16:14:15', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '780.94', '48', '1', '2', '1', '0', '31', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('895', '2017-05-25 16:14:15', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '516.96', '49', '1', '9', '1', '0', '95', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('896', '2017-05-25 16:14:15', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '490.28', '50', '1', '9', '1', '0', '24', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('897', '2017-05-25 16:14:15', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '127.93', '51', '1', '8', '1', '0', '41', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('898', '2017-05-25 16:14:15', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '149.28', '52', '1', '7', '1', '0', '12', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('899', '2017-05-25 16:14:15', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '674.60', '53', '1', '3', '1', '0', '7', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('900', '2017-05-25 16:14:15', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '846.58', '54', '1', '9', '1', '0', '16', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('901', '2017-05-25 16:14:15', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '206.57', '55', '1', '7', '1', '0', '70', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('902', '2017-05-25 16:14:15', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '465.33', '56', '1', '2', '1', '0', '20', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('903', '2017-05-25 16:14:15', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '390.08', '57', '1', '8', '1', '0', '83', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('904', '2017-05-25 16:14:15', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '602.01', '58', '1', '10', '1', '0', '97', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('905', '2017-05-25 16:14:15', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '100.81', '59', '1', '1', '1', '0', '94', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('906', '2017-05-25 16:14:15', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '464.39', '60', '1', '4', '1', '0', '70', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('907', '2017-05-25 16:14:15', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '858.66', '61', '1', '2', '1', '0', '41', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('908', '2017-05-25 16:14:15', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '744.30', '62', '1', '1', '1', '0', '35', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('909', '2017-05-25 16:14:15', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '361.25', '63', '1', '3', '1', '0', '30', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('910', '2017-05-25 16:14:15', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '479.53', '64', '1', '6', '1', '0', '61', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('911', '2017-05-25 16:14:15', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '343.40', '65', '1', '6', '1', '0', '8', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('912', '2017-05-25 16:14:15', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '120.78', '66', '1', '4', '1', '0', '23', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('913', '2017-05-25 16:14:15', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '400.41', '67', '1', '5', '1', '0', '71', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('914', '2017-05-25 16:14:15', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '828.67', '68', '1', '3', '1', '0', '11', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('915', '2017-05-25 16:14:15', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '162.64', '69', '1', '4', '1', '0', '11', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('916', '2017-05-25 16:14:15', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '378.83', '70', '1', '1', '1', '0', '9', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('917', '2017-05-25 16:14:15', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '338.31', '71', '1', '3', '1', '0', '3', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('918', '2017-05-25 16:14:15', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '656.07', '72', '1', '3', '1', '0', '12', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('919', '2017-05-25 16:14:15', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '80.73', '73', '1', '9', '1', '0', '39', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('920', '2017-05-25 16:14:15', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '289.79', '74', '1', '7', '1', '0', '48', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('921', '2017-05-25 16:14:15', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '957.27', '75', '1', '10', '1', '0', '33', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('922', '2017-05-25 16:14:15', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '508.50', '76', '1', '1', '1', '0', '99', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('923', '2017-05-25 16:14:15', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '461.21', '77', '1', '9', '1', '0', '1', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('924', '2017-05-25 16:14:15', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '272.09', '78', '1', '3', '1', '0', '45', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('925', '2017-05-25 16:14:15', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '617.82', '79', '1', '2', '1', '0', '58', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('926', '2017-05-25 16:14:15', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '442.68', '80', '1', '1', '1', '0', '2', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('927', '2017-05-25 16:14:15', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '285.16', '81', '1', '10', '1', '0', '62', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('928', '2017-05-25 16:14:15', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '461.65', '82', '1', '2', '1', '0', '78', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('929', '2017-05-25 16:14:15', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '371.62', '83', '1', '7', '1', '0', '4', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('930', '2017-05-25 16:14:15', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '258.50', '84', '1', '9', '1', '0', '47', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('931', '2017-05-25 16:14:15', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '411.68', '85', '1', '8', '1', '0', '16', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('932', '2017-05-25 16:14:15', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '990.70', '86', '1', '2', '1', '0', '39', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('933', '2017-05-25 16:14:15', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '922.43', '87', '1', '9', '1', '0', '20', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('934', '2017-05-25 16:14:15', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '531.71', '88', '1', '7', '1', '0', '43', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('935', '2017-05-25 16:14:15', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '263.02', '89', '1', '4', '1', '0', '10', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('936', '2017-05-25 16:14:15', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '231.46', '90', '1', '3', '1', '0', '91', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('937', '2017-05-25 16:14:15', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '532.15', '91', '1', '6', '1', '0', '99', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('938', '2017-05-25 16:14:15', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '479.89', '92', '1', '10', '1', '0', '91', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('939', '2017-05-25 16:14:15', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '454.17', '93', '1', '5', '1', '0', '36', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('940', '2017-05-25 16:14:15', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '636.51', '94', '1', '8', '1', '0', '65', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('941', '2017-05-25 16:14:15', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '446.79', '1', '1', '6', '1', '0', '16', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('942', '2017-05-25 16:14:15', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '337.44', '2', '1', '2', '1', '0', '70', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('943', '2017-05-25 16:14:15', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '754.35', '3', '1', '10', '1', '0', '85', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('944', '2017-05-25 16:14:15', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '465.41', '4', '1', '7', '1', '0', '59', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('945', '2017-05-25 16:14:15', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '925.83', '5', '1', '5', '1', '0', '78', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('946', '2017-05-25 16:14:15', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '837.89', '6', '1', '6', '1', '0', '4', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('947', '2017-05-25 16:14:15', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '167.81', '7', '1', '5', '1', '0', '58', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('948', '2017-05-25 16:14:15', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '125.24', '8', '1', '6', '1', '0', '96', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('949', '2017-05-25 16:14:15', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '498.64', '9', '1', '10', '1', '0', '94', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('950', '2017-05-25 16:14:15', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '606.11', '10', '1', '10', '1', '0', '86', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('951', '2017-05-25 16:14:15', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '851.47', '11', '1', '2', '1', '0', '36', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('952', '2017-05-25 16:14:15', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '72.67', '12', '1', '6', '1', '0', '9', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('953', '2017-05-25 16:14:15', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '642.61', '13', '1', '8', '1', '0', '97', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('954', '2017-05-25 16:14:15', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '748.30', '14', '1', '1', '1', '0', '75', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('955', '2017-05-25 16:14:15', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '49.38', '15', '1', '3', '1', '0', '85', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('956', '2017-05-25 16:14:15', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '226.01', '16', '1', '5', '1', '0', '49', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('957', '2017-05-25 16:14:15', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '680.61', '17', '1', '7', '1', '0', '37', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('958', '2017-05-25 16:14:15', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '694.11', '18', '1', '6', '1', '0', '76', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('959', '2017-05-25 16:14:15', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '216.75', '19', '1', '5', '1', '0', '24', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('960', '2017-05-25 16:14:15', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '618.12', '20', '1', '9', '1', '0', '70', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('961', '2017-05-25 16:14:15', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '328.86', '21', '1', '9', '1', '0', '21', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('962', '2017-05-25 16:14:15', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '393.47', '22', '1', '6', '1', '0', '41', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('963', '2017-05-25 16:14:15', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '30.75', '23', '1', '1', '1', '0', '28', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('964', '2017-05-25 16:14:15', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '584.20', '24', '1', '3', '1', '0', '21', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('965', '2017-05-25 16:14:15', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '991.37', '25', '1', '5', '1', '0', '83', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('966', '2017-05-25 16:14:15', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '299.24', '26', '1', '10', '1', '0', '39', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('967', '2017-05-25 16:14:15', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '41.33', '27', '1', '4', '1', '0', '32', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('968', '2017-05-25 16:14:15', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '123.61', '28', '1', '2', '1', '0', '11', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('969', '2017-05-25 16:14:15', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '593.60', '29', '1', '7', '1', '0', '33', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('970', '2017-05-25 16:14:15', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '177.77', '30', '1', '10', '1', '0', '50', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('971', '2017-05-25 16:14:15', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '301.58', '31', '1', '9', '1', '0', '72', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('972', '2017-05-25 16:14:15', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '200.51', '32', '1', '3', '1', '0', '14', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('973', '2017-05-25 16:14:15', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '475.27', '33', '1', '8', '1', '0', '56', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('974', '2017-05-25 16:14:15', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '680.43', '34', '1', '4', '1', '0', '91', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('975', '2017-05-25 16:14:15', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '435.95', '35', '1', '3', '1', '0', '7', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('976', '2017-05-25 16:14:15', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '655.47', '36', '1', '1', '1', '0', '66', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('977', '2017-05-25 16:14:15', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '621.23', '37', '1', '1', '1', '0', '53', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('978', '2017-05-25 16:14:15', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '782.71', '38', '1', '4', '1', '0', '63', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('979', '2017-05-25 16:14:15', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '253.66', '39', '1', '4', '1', '0', '45', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('980', '2017-05-25 16:14:15', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '88.81', '40', '1', '5', '1', '0', '76', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('981', '2017-05-25 16:14:15', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '299.24', '41', '1', '8', '1', '0', '89', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('982', '2017-05-25 16:14:15', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '650.84', '42', '1', '6', '1', '0', '23', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('983', '2017-05-25 16:14:15', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '195.36', '43', '1', '5', '1', '0', '9', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('984', '2017-05-25 16:14:15', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '545.80', '44', '1', '6', '1', '0', '50', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('985', '2017-05-25 16:14:15', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '994.82', '45', '1', '9', '1', '0', '41', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('986', '2017-05-25 16:14:15', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '231.92', '46', '1', '1', '1', '0', '32', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('987', '2017-05-25 16:14:16', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '613.28', '47', '1', '1', '1', '0', '69', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('988', '2017-05-25 16:14:16', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '85.33', '48', '1', '6', '1', '0', '58', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('989', '2017-05-25 16:14:16', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '385.94', '49', '1', '1', '1', '0', '59', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('990', '2017-05-25 16:14:16', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '879.70', '50', '1', '3', '1', '0', '76', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('991', '2017-05-25 16:14:16', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '127.77', '51', '1', '2', '1', '0', '58', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('992', '2017-05-25 16:14:16', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '345.30', '52', '1', '7', '1', '0', '48', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('993', '2017-05-25 16:14:16', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '983.88', '53', '1', '9', '1', '0', '93', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('994', '2017-05-25 16:14:16', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '626.11', '54', '1', '8', '1', '0', '11', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('995', '2017-05-25 16:14:16', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '78.10', '55', '1', '7', '1', '0', '10', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('996', '2017-05-25 16:14:16', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '32.04', '56', '1', '9', '1', '0', '7', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('997', '2017-05-25 16:14:16', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '982.03', '57', '1', '6', '1', '0', '28', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('998', '2017-05-25 16:14:16', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '287.94', '58', '1', '5', '1', '0', '56', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('999', '2017-05-25 16:14:16', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '390.69', '59', '1', '9', '1', '0', '16', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1000', '2017-05-25 16:14:16', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '855.29', '60', '1', '7', '1', '0', '67', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1001', '2017-05-25 16:14:16', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '800.28', '61', '1', '10', '1', '0', '45', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1002', '2017-05-25 16:14:16', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '458.11', '62', '1', '1', '1', '0', '100', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1003', '2017-05-25 16:14:16', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '24.85', '63', '1', '2', '1', '0', '28', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1004', '2017-05-25 16:14:16', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '806.67', '64', '1', '8', '1', '0', '6', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1005', '2017-05-25 16:14:16', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '790.40', '65', '1', '4', '1', '0', '32', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1006', '2017-05-25 16:14:16', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '572.77', '66', '1', '2', '1', '0', '48', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1007', '2017-05-25 16:14:16', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '524.62', '67', '1', '3', '1', '0', '88', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1008', '2017-05-25 16:14:16', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '836.47', '68', '1', '2', '1', '0', '90', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1009', '2017-05-25 16:14:16', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '576.61', '69', '1', '4', '1', '0', '9', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1010', '2017-05-25 16:14:16', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '668.32', '70', '1', '2', '1', '0', '91', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1011', '2017-05-25 16:14:16', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '104.25', '71', '1', '10', '1', '0', '38', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1012', '2017-05-25 16:14:16', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '922.23', '72', '1', '8', '1', '0', '26', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1013', '2017-05-25 16:14:16', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '545.44', '73', '1', '3', '1', '0', '28', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1014', '2017-05-25 16:14:16', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '146.40', '74', '1', '10', '1', '0', '55', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1015', '2017-05-25 16:14:16', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '125.90', '75', '1', '8', '1', '0', '47', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1016', '2017-05-25 16:14:16', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '242.28', '76', '1', '1', '1', '0', '37', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1017', '2017-05-25 16:14:16', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '70.51', '77', '1', '3', '1', '0', '44', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1018', '2017-05-25 16:14:16', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '850.48', '78', '1', '6', '1', '0', '38', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1019', '2017-05-25 16:14:16', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '789.75', '79', '1', '9', '1', '0', '22', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1020', '2017-05-25 16:14:16', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '668.46', '80', '1', '1', '1', '0', '95', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1021', '2017-05-25 16:14:16', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '160.05', '81', '1', '7', '1', '0', '73', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1022', '2017-05-25 16:14:16', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '24.01', '82', '1', '10', '1', '0', '69', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1023', '2017-05-25 16:14:16', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '350.24', '83', '1', '5', '1', '0', '96', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1024', '2017-05-25 16:14:16', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '74.22', '84', '1', '10', '1', '0', '28', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1025', '2017-05-25 16:14:16', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '349.13', '85', '1', '3', '1', '0', '79', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1026', '2017-05-25 16:14:16', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '268.16', '86', '1', '6', '1', '0', '1', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1027', '2017-05-25 16:14:16', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '196.16', '87', '1', '7', '1', '0', '8', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1028', '2017-05-25 16:14:16', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '18.11', '88', '1', '4', '1', '0', '36', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1029', '2017-05-25 16:14:16', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '823.43', '89', '1', '9', '1', '0', '88', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1030', '2017-05-25 16:14:16', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '446.22', '90', '1', '10', '1', '0', '14', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1031', '2017-05-25 16:14:16', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '688.26', '91', '1', '10', '1', '0', '19', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1032', '2017-05-25 16:14:16', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '207.14', '92', '1', '1', '1', '0', '16', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1033', '2017-05-25 16:14:16', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '957.51', '93', '1', '1', '1', '0', '74', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1034', '2017-05-25 16:14:16', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '591.95', '94', '1', '4', '1', '0', '16', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1035', '2017-05-25 16:14:16', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '734.92', '1', '1', '8', '1', '0', '33', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1036', '2017-05-25 16:14:16', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '770.54', '2', '1', '2', '1', '0', '79', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1037', '2017-05-25 16:14:16', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '678.56', '3', '1', '5', '1', '0', '25', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1038', '2017-05-25 16:14:16', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '271.07', '4', '1', '6', '1', '0', '81', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1039', '2017-05-25 16:14:16', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '704.46', '5', '1', '9', '1', '0', '46', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1040', '2017-05-25 16:14:16', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '781.84', '6', '1', '1', '1', '0', '1', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1041', '2017-05-25 16:14:16', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '324.79', '7', '1', '7', '1', '0', '1', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1042', '2017-05-25 16:14:16', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '517.56', '8', '1', '5', '1', '0', '61', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1043', '2017-05-25 16:14:16', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '422.21', '9', '1', '8', '1', '0', '76', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1044', '2017-05-25 16:14:16', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '655.29', '10', '1', '1', '1', '0', '61', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1045', '2017-05-25 16:14:16', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '958.18', '11', '1', '2', '1', '0', '95', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1046', '2017-05-25 16:14:16', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '420.83', '12', '1', '8', '1', '0', '58', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1047', '2017-05-25 16:14:16', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '681.08', '13', '1', '2', '1', '0', '26', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1048', '2017-05-25 16:14:16', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '12.83', '14', '1', '3', '1', '0', '3', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1049', '2017-05-25 16:14:16', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '412.25', '15', '1', '2', '1', '0', '70', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1050', '2017-05-25 16:14:16', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '675.08', '16', '1', '8', '1', '0', '68', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1051', '2017-05-25 16:14:16', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '906.30', '17', '1', '3', '1', '0', '75', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1052', '2017-05-25 16:14:16', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '368.40', '18', '1', '10', '1', '0', '48', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1053', '2017-05-25 16:14:16', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '708.26', '19', '1', '7', '1', '0', '5', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1054', '2017-05-25 16:14:16', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '918.66', '20', '1', '10', '1', '0', '77', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1055', '2017-05-25 16:14:16', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '358.14', '21', '1', '3', '1', '0', '13', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1056', '2017-05-25 16:14:16', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '508.84', '22', '1', '9', '1', '0', '81', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1057', '2017-05-25 16:14:16', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '856.93', '23', '1', '9', '1', '0', '4', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1058', '2017-05-25 16:14:16', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '489.36', '24', '1', '3', '1', '0', '94', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1059', '2017-05-25 16:14:16', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '530.75', '25', '1', '5', '1', '0', '38', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1060', '2017-05-25 16:14:16', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '764.05', '26', '1', '5', '1', '0', '100', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1061', '2017-05-25 16:14:16', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '477.83', '27', '1', '8', '1', '0', '21', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1062', '2017-05-25 16:14:16', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '300.31', '28', '1', '10', '1', '0', '97', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1063', '2017-05-25 16:14:16', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '211.23', '29', '1', '1', '1', '0', '36', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1064', '2017-05-25 16:14:16', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '453.73', '30', '1', '8', '1', '0', '98', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1065', '2017-05-25 16:14:16', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '114.90', '31', '1', '4', '1', '0', '48', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1066', '2017-05-25 16:14:16', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '901.87', '32', '1', '4', '1', '0', '47', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1067', '2017-05-25 16:14:16', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '999.54', '33', '1', '10', '1', '0', '44', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1068', '2017-05-25 16:14:16', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '674.15', '34', '1', '6', '1', '0', '75', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1069', '2017-05-25 16:14:16', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '604.11', '35', '1', '8', '1', '0', '15', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1070', '2017-05-25 16:14:16', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '436.16', '36', '1', '7', '1', '0', '94', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1071', '2017-05-25 16:14:16', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '958.29', '37', '1', '4', '1', '0', '37', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1072', '2017-05-25 16:14:16', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '245.47', '38', '1', '4', '1', '0', '43', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1073', '2017-05-25 16:14:16', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '357.96', '39', '1', '8', '1', '0', '21', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1074', '2017-05-25 16:14:16', '百年孤独', '4', '看上的请联系我，QQ：test，微信：test', '114.07', '40', '1', '1', '1', '0', '16', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1075', '2017-05-25 16:14:16', '百年孤独', '3', '看上的请联系我，QQ：test，微信：test', '460.87', '41', '1', '10', '1', '0', '72', '/image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1076', '2017-05-25 16:14:16', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '78.65', '42', '1', '10', '1', '0', '65', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1077', '2017-05-25 16:14:16', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '971.77', '43', '1', '8', '1', '0', '77', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1078', '2017-05-25 16:14:16', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '48.44', '44', '1', '6', '1', '0', '72', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1079', '2017-05-25 16:14:16', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '236.87', '45', '1', '3', '1', '0', '77', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1080', '2017-05-25 16:14:16', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '440.86', '46', '1', '6', '1', '0', '43', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1081', '2017-05-25 16:14:16', '百年孤独', '9', '看上的请联系我，QQ：test，微信：test', '127.71', '47', '1', '6', '1', '0', '100', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1082', '2017-05-25 16:14:16', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '762.47', '48', '1', '2', '1', '0', '42', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1083', '2017-05-25 16:14:16', '百年孤独', '7', '看上的请联系我，QQ：test，微信：test', '75.82', '49', '1', '2', '1', '0', '32', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1084', '2017-05-25 16:14:16', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '599.05', '50', '1', '8', '1', '0', '61', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1085', '2017-05-25 16:14:16', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '375.34', '51', '1', '10', '1', '0', '32', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1086', '2017-05-25 16:14:16', '百年孤独', '10', '看上的请联系我，QQ：test，微信：test', '459.19', '52', '1', '3', '1', '0', '51', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1087', '2017-05-25 16:14:16', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '643.33', '53', '1', '8', '1', '0', '10', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1088', '2017-05-25 16:14:16', '百年孤独', '5', '看上的请联系我，QQ：test，微信：test', '103.63', '54', '1', '3', '1', '0', '61', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1089', '2017-05-25 16:14:16', '百年孤独', '2', '看上的请联系我，QQ：test，微信：test', '1.00', '55', '1', '7', '1', '0', '15', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1090', '2017-05-25 16:14:16', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '185.54', '56', '1', '9', '1', '0', '66', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1091', '2017-05-25 16:14:16', '百年孤独', '1', '看上的请联系我，QQ：test，微信：test', '388.31', '57', '1', '1', '1', '0', '34', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1092', '2017-05-25 16:14:16', '百年孤独', '6', '看上的请联系我，QQ：test，微信：test', '537.97', '58', '1', '10', '1', '0', '43', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1093', '2017-05-25 16:14:16', '百年孤独', '8', '看上的请联系我，QQ：test，微信：test', '863.60', '59', '1', '5', '1', '0', '92', '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1094', '2017-05-25 16:17:15', '算法导论', '7', '看上的请联系我，QQ：test，微信：test', '89.00', '86', '1', '1', '1', '0', '7', 'image\\hPWMF78VWv1495700233684.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1095', '2017-05-25 16:18:14', '意林', '10', '看上的请联系我，QQ：test，微信：test', '45.00', '73', '1', '1', '1', '0', '7', 'image\\lXQypgCAQa1495700291317.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1096', '2017-05-25 16:24:45', '苹果6', '7', '看上的请联系我，QQ：test，微信：test', '4500.50', '1', '1', '1', '1', '0', '7', 'image\\2Y9gArO60W1495700684738.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('1097', '2017-06-02 10:00:59', 'wsk的爱', '7', '有意者联系QQtest', '4422.00', '94', '1', '1', '1', '0', '7', 'image\\zrTpmZACwf1496368854318.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');

-- ----------------------------
-- Table structure for shoppicture
-- ----------------------------
DROP TABLE IF EXISTS `shoppicture`;
CREATE TABLE `shoppicture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime DEFAULT NULL,
  `sid` int(11) NOT NULL,
  `picture` varchar(200) NOT NULL,
  `display` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shoppicture
-- ----------------------------
INSERT INTO `shoppicture` VALUES ('1', null, '1', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('2', null, '2', '/image/01.jpg', '1');
INSERT INTO `shoppicture` VALUES ('3', null, '3', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('4', null, '4', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('5', null, '5', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('6', null, '6', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('7', null, '7', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('8', null, '8', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('9', null, '9', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('10', null, '10', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('11', null, '11', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('12', null, '12', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('13', null, '13', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('14', null, '14', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('15', null, '15', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('16', null, '16', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('17', null, '17', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('18', null, '18', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('19', null, '19', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('20', null, '20', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('21', null, '21', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('22', null, '22', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('23', null, '23', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('24', null, '24', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('25', null, '25', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('26', null, '26', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('27', null, '27', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('28', null, '28', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('29', null, '29', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('30', null, '30', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('31', null, '31', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('32', null, '32', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('33', null, '33', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('34', null, '34', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('35', null, '35', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('36', null, '36', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('37', null, '37', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('38', null, '38', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('39', null, '39', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('40', null, '40', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('41', null, '41', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('42', null, '42', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('43', null, '43', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('44', null, '44', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('45', null, '45', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('46', null, '46', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('47', null, '47', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('48', null, '48', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('49', null, '49', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('50', null, '50', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('51', null, '51', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('52', null, '52', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('53', null, '53', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('54', null, '54', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('55', null, '55', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('56', null, '56', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('57', null, '57', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('58', null, '58', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('59', null, '59', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('60', null, '60', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('61', null, '61', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('62', null, '62', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('63', null, '63', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('64', null, '64', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('65', null, '65', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('66', null, '66', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('67', null, '67', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('68', null, '68', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('69', null, '69', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('70', null, '70', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('71', null, '71', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('72', null, '72', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('73', null, '73', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('74', null, '74', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('75', null, '75', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('76', null, '76', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('77', null, '77', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('78', null, '78', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('79', null, '79', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('80', null, '80', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('81', null, '81', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('82', null, '82', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('83', null, '83', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('84', null, '84', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('85', '2017-05-14 20:04:48', '87', '\\image/eW5NE6CM121494763475193.jpg', '1');
INSERT INTO `shoppicture` VALUES ('86', '2017-05-14 20:07:50', '88', '\\image/02.jpg', '1');
INSERT INTO `shoppicture` VALUES ('87', '2017-05-14 20:14:14', '89', '\\image\\htEZLneu1d1494764039225.jpg', '1');
INSERT INTO `shoppicture` VALUES ('88', '2017-05-14 20:15:30', '90', '\\image\\OAkysrUmZs1494764129394.jpg', '1');

-- ----------------------------
-- Table structure for specifickinds
-- ----------------------------
DROP TABLE IF EXISTS `specifickinds`;
CREATE TABLE `specifickinds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `modified` datetime DEFAULT NULL,
  `cid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of specifickinds
-- ----------------------------
INSERT INTO `specifickinds` VALUES ('1', '苹果', null, '1');
INSERT INTO `specifickinds` VALUES ('2', '三星', null, '1');
INSERT INTO `specifickinds` VALUES ('3', '小米', null, '1');
INSERT INTO `specifickinds` VALUES ('4', '华为', null, '1');
INSERT INTO `specifickinds` VALUES ('5', '中兴', null, '1');
INSERT INTO `specifickinds` VALUES ('6', '联想', null, '1');
INSERT INTO `specifickinds` VALUES ('7', '魅族', null, '1');
INSERT INTO `specifickinds` VALUES ('8', '其他', null, '1');
INSERT INTO `specifickinds` VALUES ('9', '耳机', null, '1');
INSERT INTO `specifickinds` VALUES ('10', '普通相机', null, '2');
INSERT INTO `specifickinds` VALUES ('11', '单反', null, '2');
INSERT INTO `specifickinds` VALUES ('12', '其他', null, '2');
INSERT INTO `specifickinds` VALUES ('13', '笔记本', null, '3');
INSERT INTO `specifickinds` VALUES ('14', '平板电脑', null, '3');
INSERT INTO `specifickinds` VALUES ('15', '台式机', null, '3');
INSERT INTO `specifickinds` VALUES ('16', '显示器', null, '3');
INSERT INTO `specifickinds` VALUES ('17', '鼠标', null, '3');
INSERT INTO `specifickinds` VALUES ('18', '硬盘', null, '3');
INSERT INTO `specifickinds` VALUES ('19', 'U盘', null, '3');
INSERT INTO `specifickinds` VALUES ('20', '移动硬盘', null, '3');
INSERT INTO `specifickinds` VALUES ('21', '其他', null, '3');
INSERT INTO `specifickinds` VALUES ('22', '洗衣机', null, '4');
INSERT INTO `specifickinds` VALUES ('23', '饮水机', null, '4');
INSERT INTO `specifickinds` VALUES ('24', '吹风机', null, '4');
INSERT INTO `specifickinds` VALUES ('25', '剃须刀', null, '4');
INSERT INTO `specifickinds` VALUES ('26', '风扇', null, '4');
INSERT INTO `specifickinds` VALUES ('27', '煮蛋器', null, '4');
INSERT INTO `specifickinds` VALUES ('28', '电磁炉', null, '4');
INSERT INTO `specifickinds` VALUES ('29', '电饭煲', null, '4');
INSERT INTO `specifickinds` VALUES ('30', '其他', null, '4');
INSERT INTO `specifickinds` VALUES ('31', '耳机', null, '5');
INSERT INTO `specifickinds` VALUES ('32', '音响', null, '5');
INSERT INTO `specifickinds` VALUES ('33', '功放', null, '5');
INSERT INTO `specifickinds` VALUES ('34', '低音炮', null, '5');
INSERT INTO `specifickinds` VALUES ('35', '麦克风', null, '5');
INSERT INTO `specifickinds` VALUES ('36', '上衣', null, '6');
INSERT INTO `specifickinds` VALUES ('37', '裤子', null, '6');
INSERT INTO `specifickinds` VALUES ('38', '裙子', null, '6');
INSERT INTO `specifickinds` VALUES ('39', '其他', null, '6');
INSERT INTO `specifickinds` VALUES ('40', '上衣', null, '7');
INSERT INTO `specifickinds` VALUES ('41', '裤子', null, '7');
INSERT INTO `specifickinds` VALUES ('42', '其他', null, '7');
INSERT INTO `specifickinds` VALUES ('43', '运动鞋', null, '8');
INSERT INTO `specifickinds` VALUES ('44', '皮鞋', null, '8');
INSERT INTO `specifickinds` VALUES ('45', '帆布鞋', null, '8');
INSERT INTO `specifickinds` VALUES ('46', '球鞋', null, '8');
INSERT INTO `specifickinds` VALUES ('47', '板鞋', null, '8');
INSERT INTO `specifickinds` VALUES ('48', '其他', null, '8');
INSERT INTO `specifickinds` VALUES ('49', '运动鞋', null, '9');
INSERT INTO `specifickinds` VALUES ('50', '皮鞋', '2017-05-10 21:53:20', '9');
INSERT INTO `specifickinds` VALUES ('51', '帆布鞋', '2017-05-10 21:53:23', '9');
INSERT INTO `specifickinds` VALUES ('52', '球鞋', '2017-05-10 21:53:26', '9');
INSERT INTO `specifickinds` VALUES ('53', '板鞋', '2017-05-10 21:53:28', '9');
INSERT INTO `specifickinds` VALUES ('54', '其他', '2017-05-10 21:53:30', '9');
INSERT INTO `specifickinds` VALUES ('55', '背包', null, '10');
INSERT INTO `specifickinds` VALUES ('56', '旅行箱', null, '10');
INSERT INTO `specifickinds` VALUES ('57', '其他', null, '10');
INSERT INTO `specifickinds` VALUES ('58', '机械表', null, '11');
INSERT INTO `specifickinds` VALUES ('59', '石英表', null, '11');
INSERT INTO `specifickinds` VALUES ('60', '电子表', null, '11');
INSERT INTO `specifickinds` VALUES ('61', '其他', null, '11');
INSERT INTO `specifickinds` VALUES ('62', '足球', null, '12');
INSERT INTO `specifickinds` VALUES ('63', '羽毛球拍', null, '12');
INSERT INTO `specifickinds` VALUES ('64', '网球拍', null, '12');
INSERT INTO `specifickinds` VALUES ('65', '篮球', null, '12');
INSERT INTO `specifickinds` VALUES ('66', '滑轮', null, '12');
INSERT INTO `specifickinds` VALUES ('67', '乒乓球拍', null, '12');
INSERT INTO `specifickinds` VALUES ('68', '滑板', null, '12');
INSERT INTO `specifickinds` VALUES ('69', '其他', null, '12');
INSERT INTO `specifickinds` VALUES ('70', '自行车', null, '13');
INSERT INTO `specifickinds` VALUES ('71', '电动车', null, '13');
INSERT INTO `specifickinds` VALUES ('72', '其他', null, '13');
INSERT INTO `specifickinds` VALUES ('73', '文学', null, '14');
INSERT INTO `specifickinds` VALUES ('74', '漫画', null, '14');
INSERT INTO `specifickinds` VALUES ('75', '小说', null, '14');
INSERT INTO `specifickinds` VALUES ('76', '其他', null, '14');
INSERT INTO `specifickinds` VALUES ('77', '生物', null, '15');
INSERT INTO `specifickinds` VALUES ('78', '化学', null, '15');
INSERT INTO `specifickinds` VALUES ('79', '物理', null, '15');
INSERT INTO `specifickinds` VALUES ('80', '语文', null, '15');
INSERT INTO `specifickinds` VALUES ('81', '外语', null, '15');
INSERT INTO `specifickinds` VALUES ('82', '数学', null, '15');
INSERT INTO `specifickinds` VALUES ('83', '政治', null, '15');
INSERT INTO `specifickinds` VALUES ('84', '历史', null, '15');
INSERT INTO `specifickinds` VALUES ('85', '地理', null, '15');
INSERT INTO `specifickinds` VALUES ('86', '计算机', null, '15');
INSERT INTO `specifickinds` VALUES ('87', '机械', null, '15');
INSERT INTO `specifickinds` VALUES ('88', '土木', null, '15');
INSERT INTO `specifickinds` VALUES ('89', '艺术', null, '15');
INSERT INTO `specifickinds` VALUES ('90', '其他', null, '15');
INSERT INTO `specifickinds` VALUES ('91', '笔', null, '16');
INSERT INTO `specifickinds` VALUES ('92', '其他', null, '16');
INSERT INTO `specifickinds` VALUES ('93', '其他', null, '5');
INSERT INTO `specifickinds` VALUES ('94', '其他', null, '17');

-- ----------------------------
-- Table structure for usercollection
-- ----------------------------
DROP TABLE IF EXISTS `usercollection`;
CREATE TABLE `usercollection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `display` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usercollection
-- ----------------------------

-- ----------------------------
-- Table structure for userinformation
-- ----------------------------
DROP TABLE IF EXISTS `userinformation`;
CREATE TABLE `userinformation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `phone` char(11) NOT NULL,
  `realname` varchar(50) DEFAULT NULL,
  `clazz` varchar(50) DEFAULT NULL,
  `sno` char(12) DEFAULT NULL,
  `dormitory` varchar(50) DEFAULT NULL,
  `gender` char(2) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_id` (`id`) USING BTREE,
  KEY `selectByPhone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinformation
-- ----------------------------
INSERT INTO `userinformation` VALUES ('1', '2017-05-14 13:56:04', 'wsk', '123', null, null, null, null, null, '2017-05-14 13:56:04', null);
INSERT INTO `userinformation` VALUES ('2', '2017-05-14 14:00:13', '111', '1234', null, null, null, null, null, '2017-05-14 14:00:14', null);
INSERT INTO `userinformation` VALUES ('3', '2017-05-14 14:55:28', '111', '122', null, null, null, null, null, '2017-05-14 14:55:28', null);
INSERT INTO `userinformation` VALUES ('4', '2017-05-14 15:00:11', '爱我的人1', '124', null, null, null, null, null, '2017-05-14 15:00:11', null);
INSERT INTO `userinformation` VALUES ('5', '2017-05-14 15:00:45', '爱我的人2', '125', null, null, null, null, null, '2017-05-14 15:00:45', null);
INSERT INTO `userinformation` VALUES ('6', '2017-05-14 15:01:13', '爱我的人3', '126', null, null, null, null, null, '2017-05-14 15:01:13', null);
INSERT INTO `userinformation` VALUES ('7', '2017-05-19 14:43:01', 'wsk1103', '127', '吴树楷', '信计142', '3', '9407', '男', '2017-05-20 15:14:14', '');
INSERT INTO `userinformation` VALUES ('8', '2017-05-20 22:31:08', 'wsk1103', '128', null, null, null, null, null, '2017-05-20 22:31:03', null);
INSERT INTO `userinformation` VALUES ('9', '2018-09-09 15:34:18', 'test', '129', null, null, null, null, null, '2018-09-09 15:34:17', null);

-- ----------------------------
-- Table structure for userpassword
-- ----------------------------
DROP TABLE IF EXISTS `userpassword`;
CREATE TABLE `userpassword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime DEFAULT NULL,
  `password` varchar(24) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userpassword
-- ----------------------------
INSERT INTO `userpassword` VALUES ('1', '2017-05-14 13:56:05', 'qq12345', '1');
INSERT INTO `userpassword` VALUES ('2', '2017-05-20 22:00:49', 'xMpCOKC5I4INzFCab3WEmw==', '2');
INSERT INTO `userpassword` VALUES ('3', '2017-05-14 14:55:29', 'xEvruXPhT+U5Z24OkVWxIQ==', '3');
INSERT INTO `userpassword` VALUES ('4', '2017-05-14 15:00:11', 'xEvruXPhT+U5Z24OkVWxIQ==', '4');
INSERT INTO `userpassword` VALUES ('5', '2017-05-14 15:00:45', 'xEvruXPhT+U5Z24OkVWxIQ==', '5');
INSERT INTO `userpassword` VALUES ('6', '2017-05-14 15:01:13', 'QXS66gM33hU5x/b2PrUHRA==', '6');
INSERT INTO `userpassword` VALUES ('7', '2017-05-26 13:33:49', 'QXS66gM33hU5x/b2PrUHRA==', '7');
INSERT INTO `userpassword` VALUES ('8', '2017-05-20 22:31:17', 'xMpCOKC5I4INzFCab3WEmw==', '8');
INSERT INTO `userpassword` VALUES ('9', '2018-09-09 15:34:23', 'wgrU12/pd1mqJ6DJm/9nEA==', '9');

-- ----------------------------
-- Table structure for userrelease
-- ----------------------------
DROP TABLE IF EXISTS `userrelease`;
CREATE TABLE `userrelease` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime DEFAULT NULL,
  `display` int(11) NOT NULL DEFAULT '1',
  `uid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1006 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userrelease
-- ----------------------------
INSERT INTO `userrelease` VALUES ('1', '2017-05-20 15:55:37', '1', '7', '91');
INSERT INTO `userrelease` VALUES ('2', '2017-05-20 19:07:34', '1', '7', '92');
INSERT INTO `userrelease` VALUES ('3', '2017-05-25 16:08:37', '1', '61', '95');
INSERT INTO `userrelease` VALUES ('4', '2017-05-25 16:08:40', '1', '50', '96');
INSERT INTO `userrelease` VALUES ('5', '2017-05-25 16:08:40', '1', '18', '97');
INSERT INTO `userrelease` VALUES ('6', '2017-05-25 16:08:40', '1', '29', '98');
INSERT INTO `userrelease` VALUES ('7', '2017-05-25 16:08:40', '1', '38', '99');
INSERT INTO `userrelease` VALUES ('8', '2017-05-25 16:08:40', '1', '44', '100');
INSERT INTO `userrelease` VALUES ('9', '2017-05-25 16:08:40', '1', '14', '101');
INSERT INTO `userrelease` VALUES ('10', '2017-05-25 16:08:40', '1', '52', '102');
INSERT INTO `userrelease` VALUES ('11', '2017-05-25 16:08:40', '1', '37', '103');
INSERT INTO `userrelease` VALUES ('12', '2017-05-25 16:08:40', '1', '43', '104');
INSERT INTO `userrelease` VALUES ('13', '2017-05-25 16:08:40', '1', '52', '105');
INSERT INTO `userrelease` VALUES ('14', '2017-05-25 16:08:40', '1', '61', '106');
INSERT INTO `userrelease` VALUES ('15', '2017-05-25 16:08:40', '1', '31', '107');
INSERT INTO `userrelease` VALUES ('16', '2017-05-25 16:08:40', '1', '51', '108');
INSERT INTO `userrelease` VALUES ('17', '2017-05-25 16:08:40', '1', '63', '109');
INSERT INTO `userrelease` VALUES ('18', '2017-05-25 16:08:41', '1', '29', '110');
INSERT INTO `userrelease` VALUES ('19', '2017-05-25 16:08:41', '1', '37', '111');
INSERT INTO `userrelease` VALUES ('20', '2017-05-25 16:08:41', '1', '16', '112');
INSERT INTO `userrelease` VALUES ('21', '2017-05-25 16:08:41', '1', '38', '113');
INSERT INTO `userrelease` VALUES ('22', '2017-05-25 16:08:41', '1', '65', '114');
INSERT INTO `userrelease` VALUES ('23', '2017-05-25 16:08:41', '1', '15', '115');
INSERT INTO `userrelease` VALUES ('24', '2017-05-25 16:08:41', '1', '61', '116');
INSERT INTO `userrelease` VALUES ('25', '2017-05-25 16:08:41', '1', '54', '117');
INSERT INTO `userrelease` VALUES ('26', '2017-05-25 16:08:41', '1', '73', '118');
INSERT INTO `userrelease` VALUES ('27', '2017-05-25 16:08:41', '1', '74', '119');
INSERT INTO `userrelease` VALUES ('28', '2017-05-25 16:08:41', '1', '46', '120');
INSERT INTO `userrelease` VALUES ('29', '2017-05-25 16:08:41', '1', '98', '121');
INSERT INTO `userrelease` VALUES ('30', '2017-05-25 16:08:41', '1', '50', '122');
INSERT INTO `userrelease` VALUES ('31', '2017-05-25 16:08:41', '1', '92', '123');
INSERT INTO `userrelease` VALUES ('32', '2017-05-25 16:08:41', '1', '60', '124');
INSERT INTO `userrelease` VALUES ('33', '2017-05-25 16:08:41', '1', '21', '125');
INSERT INTO `userrelease` VALUES ('34', '2017-05-25 16:08:41', '1', '79', '126');
INSERT INTO `userrelease` VALUES ('35', '2017-05-25 16:08:41', '1', '71', '127');
INSERT INTO `userrelease` VALUES ('36', '2017-05-25 16:08:41', '1', '90', '128');
INSERT INTO `userrelease` VALUES ('37', '2017-05-25 16:08:41', '1', '64', '129');
INSERT INTO `userrelease` VALUES ('38', '2017-05-25 16:08:41', '1', '89', '130');
INSERT INTO `userrelease` VALUES ('39', '2017-05-25 16:08:41', '1', '55', '131');
INSERT INTO `userrelease` VALUES ('40', '2017-05-25 16:08:41', '1', '29', '132');
INSERT INTO `userrelease` VALUES ('41', '2017-05-25 16:08:41', '1', '34', '133');
INSERT INTO `userrelease` VALUES ('42', '2017-05-25 16:08:41', '1', '92', '134');
INSERT INTO `userrelease` VALUES ('43', '2017-05-25 16:08:41', '1', '32', '135');
INSERT INTO `userrelease` VALUES ('44', '2017-05-25 16:08:41', '1', '89', '136');
INSERT INTO `userrelease` VALUES ('45', '2017-05-25 16:08:41', '1', '65', '137');
INSERT INTO `userrelease` VALUES ('46', '2017-05-25 16:08:41', '1', '91', '138');
INSERT INTO `userrelease` VALUES ('47', '2017-05-25 16:08:41', '1', '40', '139');
INSERT INTO `userrelease` VALUES ('48', '2017-05-25 16:08:41', '1', '55', '140');
INSERT INTO `userrelease` VALUES ('49', '2017-05-25 16:08:41', '1', '6', '141');
INSERT INTO `userrelease` VALUES ('50', '2017-05-25 16:08:41', '1', '88', '142');
INSERT INTO `userrelease` VALUES ('51', '2017-05-25 16:08:41', '1', '45', '143');
INSERT INTO `userrelease` VALUES ('52', '2017-05-25 16:08:41', '1', '11', '144');
INSERT INTO `userrelease` VALUES ('53', '2017-05-25 16:08:41', '1', '32', '145');
INSERT INTO `userrelease` VALUES ('54', '2017-05-25 16:08:41', '1', '61', '146');
INSERT INTO `userrelease` VALUES ('55', '2017-05-25 16:08:41', '1', '44', '147');
INSERT INTO `userrelease` VALUES ('56', '2017-05-25 16:08:41', '1', '86', '148');
INSERT INTO `userrelease` VALUES ('57', '2017-05-25 16:08:41', '1', '30', '149');
INSERT INTO `userrelease` VALUES ('58', '2017-05-25 16:08:41', '1', '84', '150');
INSERT INTO `userrelease` VALUES ('59', '2017-05-25 16:08:41', '1', '90', '151');
INSERT INTO `userrelease` VALUES ('60', '2017-05-25 16:08:41', '1', '73', '152');
INSERT INTO `userrelease` VALUES ('61', '2017-05-25 16:08:41', '1', '16', '153');
INSERT INTO `userrelease` VALUES ('62', '2017-05-25 16:08:41', '1', '61', '154');
INSERT INTO `userrelease` VALUES ('63', '2017-05-25 16:08:41', '1', '21', '155');
INSERT INTO `userrelease` VALUES ('64', '2017-05-25 16:08:41', '1', '92', '156');
INSERT INTO `userrelease` VALUES ('65', '2017-05-25 16:08:41', '1', '44', '157');
INSERT INTO `userrelease` VALUES ('66', '2017-05-25 16:08:41', '1', '11', '158');
INSERT INTO `userrelease` VALUES ('67', '2017-05-25 16:08:41', '1', '76', '159');
INSERT INTO `userrelease` VALUES ('68', '2017-05-25 16:08:41', '1', '31', '160');
INSERT INTO `userrelease` VALUES ('69', '2017-05-25 16:08:41', '1', '18', '161');
INSERT INTO `userrelease` VALUES ('70', '2017-05-25 16:08:41', '1', '9', '162');
INSERT INTO `userrelease` VALUES ('71', '2017-05-25 16:08:41', '1', '42', '163');
INSERT INTO `userrelease` VALUES ('72', '2017-05-25 16:08:41', '1', '92', '164');
INSERT INTO `userrelease` VALUES ('73', '2017-05-25 16:08:41', '1', '5', '165');
INSERT INTO `userrelease` VALUES ('74', '2017-05-25 16:08:41', '1', '57', '166');
INSERT INTO `userrelease` VALUES ('75', '2017-05-25 16:08:41', '1', '81', '167');
INSERT INTO `userrelease` VALUES ('76', '2017-05-25 16:08:41', '1', '39', '168');
INSERT INTO `userrelease` VALUES ('77', '2017-05-25 16:08:41', '1', '57', '169');
INSERT INTO `userrelease` VALUES ('78', '2017-05-25 16:08:41', '1', '16', '170');
INSERT INTO `userrelease` VALUES ('79', '2017-05-25 16:08:41', '1', '95', '171');
INSERT INTO `userrelease` VALUES ('80', '2017-05-25 16:08:41', '1', '95', '172');
INSERT INTO `userrelease` VALUES ('81', '2017-05-25 16:08:41', '1', '68', '173');
INSERT INTO `userrelease` VALUES ('82', '2017-05-25 16:08:41', '1', '56', '174');
INSERT INTO `userrelease` VALUES ('83', '2017-05-25 16:08:41', '1', '82', '175');
INSERT INTO `userrelease` VALUES ('84', '2017-05-25 16:08:41', '1', '44', '176');
INSERT INTO `userrelease` VALUES ('85', '2017-05-25 16:08:41', '1', '81', '177');
INSERT INTO `userrelease` VALUES ('86', '2017-05-25 16:08:41', '1', '32', '178');
INSERT INTO `userrelease` VALUES ('87', '2017-05-25 16:08:41', '1', '90', '179');
INSERT INTO `userrelease` VALUES ('88', '2017-05-25 16:08:41', '1', '22', '180');
INSERT INTO `userrelease` VALUES ('89', '2017-05-25 16:08:41', '1', '84', '181');
INSERT INTO `userrelease` VALUES ('90', '2017-05-25 16:08:41', '1', '71', '182');
INSERT INTO `userrelease` VALUES ('91', '2017-05-25 16:08:41', '1', '36', '183');
INSERT INTO `userrelease` VALUES ('92', '2017-05-25 16:08:41', '1', '80', '184');
INSERT INTO `userrelease` VALUES ('93', '2017-05-25 16:08:41', '1', '86', '185');
INSERT INTO `userrelease` VALUES ('94', '2017-05-25 16:08:41', '1', '35', '186');
INSERT INTO `userrelease` VALUES ('95', '2017-05-25 16:08:41', '1', '13', '187');
INSERT INTO `userrelease` VALUES ('96', '2017-05-25 16:08:41', '1', '4', '188');
INSERT INTO `userrelease` VALUES ('97', '2017-05-25 16:08:41', '1', '68', '189');
INSERT INTO `userrelease` VALUES ('98', '2017-05-25 16:08:41', '1', '30', '190');
INSERT INTO `userrelease` VALUES ('99', '2017-05-25 16:08:41', '1', '80', '191');
INSERT INTO `userrelease` VALUES ('100', '2017-05-25 16:08:41', '1', '16', '192');
INSERT INTO `userrelease` VALUES ('101', '2017-05-25 16:08:41', '1', '52', '193');
INSERT INTO `userrelease` VALUES ('102', '2017-05-25 16:08:41', '1', '53', '194');
INSERT INTO `userrelease` VALUES ('103', '2017-05-25 16:08:41', '1', '61', '195');
INSERT INTO `userrelease` VALUES ('104', '2017-05-25 16:08:41', '1', '85', '196');
INSERT INTO `userrelease` VALUES ('105', '2017-05-25 16:08:41', '1', '89', '197');
INSERT INTO `userrelease` VALUES ('106', '2017-05-25 16:08:41', '1', '21', '198');
INSERT INTO `userrelease` VALUES ('107', '2017-05-25 16:08:41', '1', '57', '199');
INSERT INTO `userrelease` VALUES ('108', '2017-05-25 16:08:41', '1', '4', '200');
INSERT INTO `userrelease` VALUES ('109', '2017-05-25 16:08:41', '1', '37', '201');
INSERT INTO `userrelease` VALUES ('110', '2017-05-25 16:08:41', '1', '36', '202');
INSERT INTO `userrelease` VALUES ('111', '2017-05-25 16:08:41', '1', '47', '203');
INSERT INTO `userrelease` VALUES ('112', '2017-05-25 16:08:41', '1', '89', '204');
INSERT INTO `userrelease` VALUES ('113', '2017-05-25 16:08:41', '1', '96', '205');
INSERT INTO `userrelease` VALUES ('114', '2017-05-25 16:08:41', '1', '17', '206');
INSERT INTO `userrelease` VALUES ('115', '2017-05-25 16:08:41', '1', '57', '207');
INSERT INTO `userrelease` VALUES ('116', '2017-05-25 16:08:41', '1', '4', '208');
INSERT INTO `userrelease` VALUES ('117', '2017-05-25 16:08:41', '1', '100', '209');
INSERT INTO `userrelease` VALUES ('118', '2017-05-25 16:08:41', '1', '97', '210');
INSERT INTO `userrelease` VALUES ('119', '2017-05-25 16:08:41', '1', '56', '211');
INSERT INTO `userrelease` VALUES ('120', '2017-05-25 16:08:41', '1', '55', '212');
INSERT INTO `userrelease` VALUES ('121', '2017-05-25 16:08:41', '1', '51', '213');
INSERT INTO `userrelease` VALUES ('122', '2017-05-25 16:08:41', '1', '29', '214');
INSERT INTO `userrelease` VALUES ('123', '2017-05-25 16:08:41', '1', '61', '215');
INSERT INTO `userrelease` VALUES ('124', '2017-05-25 16:08:41', '1', '78', '216');
INSERT INTO `userrelease` VALUES ('125', '2017-05-25 16:08:41', '1', '26', '217');
INSERT INTO `userrelease` VALUES ('126', '2017-05-25 16:08:41', '1', '77', '218');
INSERT INTO `userrelease` VALUES ('127', '2017-05-25 16:08:41', '1', '89', '219');
INSERT INTO `userrelease` VALUES ('128', '2017-05-25 16:08:41', '1', '91', '220');
INSERT INTO `userrelease` VALUES ('129', '2017-05-25 16:08:41', '1', '80', '221');
INSERT INTO `userrelease` VALUES ('130', '2017-05-25 16:08:41', '1', '31', '222');
INSERT INTO `userrelease` VALUES ('131', '2017-05-25 16:08:41', '1', '8', '223');
INSERT INTO `userrelease` VALUES ('132', '2017-05-25 16:08:41', '1', '41', '224');
INSERT INTO `userrelease` VALUES ('133', '2017-05-25 16:08:41', '1', '51', '225');
INSERT INTO `userrelease` VALUES ('134', '2017-05-25 16:08:41', '1', '74', '226');
INSERT INTO `userrelease` VALUES ('135', '2017-05-25 16:08:41', '1', '39', '227');
INSERT INTO `userrelease` VALUES ('136', '2017-05-25 16:08:41', '1', '80', '228');
INSERT INTO `userrelease` VALUES ('137', '2017-05-25 16:08:41', '1', '59', '229');
INSERT INTO `userrelease` VALUES ('138', '2017-05-25 16:08:41', '1', '90', '230');
INSERT INTO `userrelease` VALUES ('139', '2017-05-25 16:08:42', '1', '47', '231');
INSERT INTO `userrelease` VALUES ('140', '2017-05-25 16:08:42', '1', '64', '232');
INSERT INTO `userrelease` VALUES ('141', '2017-05-25 16:08:42', '1', '24', '233');
INSERT INTO `userrelease` VALUES ('142', '2017-05-25 16:08:42', '1', '19', '234');
INSERT INTO `userrelease` VALUES ('143', '2017-05-25 16:08:42', '1', '42', '235');
INSERT INTO `userrelease` VALUES ('144', '2017-05-25 16:08:42', '1', '87', '236');
INSERT INTO `userrelease` VALUES ('145', '2017-05-25 16:08:42', '1', '51', '237');
INSERT INTO `userrelease` VALUES ('146', '2017-05-25 16:08:42', '1', '74', '238');
INSERT INTO `userrelease` VALUES ('147', '2017-05-25 16:08:42', '1', '53', '239');
INSERT INTO `userrelease` VALUES ('148', '2017-05-25 16:08:42', '1', '90', '240');
INSERT INTO `userrelease` VALUES ('149', '2017-05-25 16:08:42', '1', '93', '241');
INSERT INTO `userrelease` VALUES ('150', '2017-05-25 16:08:42', '1', '68', '242');
INSERT INTO `userrelease` VALUES ('151', '2017-05-25 16:08:42', '1', '68', '243');
INSERT INTO `userrelease` VALUES ('152', '2017-05-25 16:08:42', '1', '32', '244');
INSERT INTO `userrelease` VALUES ('153', '2017-05-25 16:08:42', '1', '60', '245');
INSERT INTO `userrelease` VALUES ('154', '2017-05-25 16:08:42', '1', '91', '246');
INSERT INTO `userrelease` VALUES ('155', '2017-05-25 16:08:42', '1', '11', '247');
INSERT INTO `userrelease` VALUES ('156', '2017-05-25 16:08:42', '1', '61', '248');
INSERT INTO `userrelease` VALUES ('157', '2017-05-25 16:08:42', '1', '35', '249');
INSERT INTO `userrelease` VALUES ('158', '2017-05-25 16:08:42', '1', '41', '250');
INSERT INTO `userrelease` VALUES ('159', '2017-05-25 16:08:42', '1', '17', '251');
INSERT INTO `userrelease` VALUES ('160', '2017-05-25 16:08:42', '1', '8', '252');
INSERT INTO `userrelease` VALUES ('161', '2017-05-25 16:08:42', '1', '97', '253');
INSERT INTO `userrelease` VALUES ('162', '2017-05-25 16:08:42', '1', '39', '254');
INSERT INTO `userrelease` VALUES ('163', '2017-05-25 16:08:42', '1', '47', '255');
INSERT INTO `userrelease` VALUES ('164', '2017-05-25 16:08:42', '1', '79', '256');
INSERT INTO `userrelease` VALUES ('165', '2017-05-25 16:08:42', '1', '93', '257');
INSERT INTO `userrelease` VALUES ('166', '2017-05-25 16:08:42', '1', '15', '258');
INSERT INTO `userrelease` VALUES ('167', '2017-05-25 16:08:42', '1', '3', '259');
INSERT INTO `userrelease` VALUES ('168', '2017-05-25 16:08:42', '1', '94', '260');
INSERT INTO `userrelease` VALUES ('169', '2017-05-25 16:08:42', '1', '62', '261');
INSERT INTO `userrelease` VALUES ('170', '2017-05-25 16:08:42', '1', '96', '262');
INSERT INTO `userrelease` VALUES ('171', '2017-05-25 16:08:42', '1', '16', '263');
INSERT INTO `userrelease` VALUES ('172', '2017-05-25 16:08:42', '1', '20', '264');
INSERT INTO `userrelease` VALUES ('173', '2017-05-25 16:08:42', '1', '78', '265');
INSERT INTO `userrelease` VALUES ('174', '2017-05-25 16:08:42', '1', '22', '266');
INSERT INTO `userrelease` VALUES ('175', '2017-05-25 16:08:42', '1', '59', '267');
INSERT INTO `userrelease` VALUES ('176', '2017-05-25 16:08:42', '1', '87', '268');
INSERT INTO `userrelease` VALUES ('177', '2017-05-25 16:08:42', '1', '49', '269');
INSERT INTO `userrelease` VALUES ('178', '2017-05-25 16:08:42', '1', '12', '270');
INSERT INTO `userrelease` VALUES ('179', '2017-05-25 16:08:42', '1', '18', '271');
INSERT INTO `userrelease` VALUES ('180', '2017-05-25 16:08:42', '1', '55', '272');
INSERT INTO `userrelease` VALUES ('181', '2017-05-25 16:08:42', '1', '24', '273');
INSERT INTO `userrelease` VALUES ('182', '2017-05-25 16:08:42', '1', '42', '274');
INSERT INTO `userrelease` VALUES ('183', '2017-05-25 16:08:42', '1', '76', '275');
INSERT INTO `userrelease` VALUES ('184', '2017-05-25 16:08:42', '1', '48', '276');
INSERT INTO `userrelease` VALUES ('185', '2017-05-25 16:08:42', '1', '23', '277');
INSERT INTO `userrelease` VALUES ('186', '2017-05-25 16:08:42', '1', '42', '278');
INSERT INTO `userrelease` VALUES ('187', '2017-05-25 16:08:42', '1', '1', '279');
INSERT INTO `userrelease` VALUES ('188', '2017-05-25 16:08:42', '1', '29', '280');
INSERT INTO `userrelease` VALUES ('189', '2017-05-25 16:08:42', '1', '60', '281');
INSERT INTO `userrelease` VALUES ('190', '2017-05-25 16:08:42', '1', '2', '282');
INSERT INTO `userrelease` VALUES ('191', '2017-05-25 16:08:42', '1', '53', '283');
INSERT INTO `userrelease` VALUES ('192', '2017-05-25 16:08:42', '1', '85', '284');
INSERT INTO `userrelease` VALUES ('193', '2017-05-25 16:08:42', '1', '83', '285');
INSERT INTO `userrelease` VALUES ('194', '2017-05-25 16:08:42', '1', '10', '286');
INSERT INTO `userrelease` VALUES ('195', '2017-05-25 16:08:42', '1', '86', '287');
INSERT INTO `userrelease` VALUES ('196', '2017-05-25 16:08:42', '1', '98', '288');
INSERT INTO `userrelease` VALUES ('197', '2017-05-25 16:08:42', '1', '36', '289');
INSERT INTO `userrelease` VALUES ('198', '2017-05-25 16:08:42', '1', '32', '290');
INSERT INTO `userrelease` VALUES ('199', '2017-05-25 16:08:42', '1', '54', '291');
INSERT INTO `userrelease` VALUES ('200', '2017-05-25 16:08:42', '1', '9', '292');
INSERT INTO `userrelease` VALUES ('201', '2017-05-25 16:08:42', '1', '64', '293');
INSERT INTO `userrelease` VALUES ('202', '2017-05-25 16:08:42', '1', '49', '294');
INSERT INTO `userrelease` VALUES ('203', '2017-05-25 16:08:42', '1', '6', '295');
INSERT INTO `userrelease` VALUES ('204', '2017-05-25 16:08:42', '1', '76', '296');
INSERT INTO `userrelease` VALUES ('205', '2017-05-25 16:08:42', '1', '7', '297');
INSERT INTO `userrelease` VALUES ('206', '2017-05-25 16:08:42', '1', '8', '298');
INSERT INTO `userrelease` VALUES ('207', '2017-05-25 16:08:42', '1', '1', '299');
INSERT INTO `userrelease` VALUES ('208', '2017-05-25 16:08:42', '1', '32', '300');
INSERT INTO `userrelease` VALUES ('209', '2017-05-25 16:08:42', '1', '45', '301');
INSERT INTO `userrelease` VALUES ('210', '2017-05-25 16:08:42', '1', '79', '302');
INSERT INTO `userrelease` VALUES ('211', '2017-05-25 16:08:42', '1', '33', '303');
INSERT INTO `userrelease` VALUES ('212', '2017-05-25 16:08:42', '1', '18', '304');
INSERT INTO `userrelease` VALUES ('213', '2017-05-25 16:08:42', '1', '21', '305');
INSERT INTO `userrelease` VALUES ('214', '2017-05-25 16:08:42', '1', '14', '306');
INSERT INTO `userrelease` VALUES ('215', '2017-05-25 16:08:42', '1', '37', '307');
INSERT INTO `userrelease` VALUES ('216', '2017-05-25 16:08:42', '1', '37', '308');
INSERT INTO `userrelease` VALUES ('217', '2017-05-25 16:08:42', '1', '95', '309');
INSERT INTO `userrelease` VALUES ('218', '2017-05-25 16:08:42', '1', '40', '310');
INSERT INTO `userrelease` VALUES ('219', '2017-05-25 16:08:42', '1', '8', '311');
INSERT INTO `userrelease` VALUES ('220', '2017-05-25 16:08:42', '1', '39', '312');
INSERT INTO `userrelease` VALUES ('221', '2017-05-25 16:08:42', '1', '16', '313');
INSERT INTO `userrelease` VALUES ('222', '2017-05-25 16:08:42', '1', '28', '314');
INSERT INTO `userrelease` VALUES ('223', '2017-05-25 16:08:42', '1', '53', '315');
INSERT INTO `userrelease` VALUES ('224', '2017-05-25 16:08:42', '1', '17', '316');
INSERT INTO `userrelease` VALUES ('225', '2017-05-25 16:08:42', '1', '89', '317');
INSERT INTO `userrelease` VALUES ('226', '2017-05-25 16:08:42', '1', '92', '318');
INSERT INTO `userrelease` VALUES ('227', '2017-05-25 16:08:42', '1', '92', '319');
INSERT INTO `userrelease` VALUES ('228', '2017-05-25 16:08:42', '1', '81', '320');
INSERT INTO `userrelease` VALUES ('229', '2017-05-25 16:08:42', '1', '26', '321');
INSERT INTO `userrelease` VALUES ('230', '2017-05-25 16:08:42', '1', '57', '322');
INSERT INTO `userrelease` VALUES ('231', '2017-05-25 16:08:42', '1', '85', '323');
INSERT INTO `userrelease` VALUES ('232', '2017-05-25 16:08:42', '1', '6', '324');
INSERT INTO `userrelease` VALUES ('233', '2017-05-25 16:08:42', '1', '34', '325');
INSERT INTO `userrelease` VALUES ('234', '2017-05-25 16:08:42', '1', '63', '326');
INSERT INTO `userrelease` VALUES ('235', '2017-05-25 16:08:42', '1', '76', '327');
INSERT INTO `userrelease` VALUES ('236', '2017-05-25 16:08:42', '1', '31', '328');
INSERT INTO `userrelease` VALUES ('237', '2017-05-25 16:08:42', '1', '43', '329');
INSERT INTO `userrelease` VALUES ('238', '2017-05-25 16:08:42', '1', '30', '330');
INSERT INTO `userrelease` VALUES ('239', '2017-05-25 16:08:42', '1', '65', '331');
INSERT INTO `userrelease` VALUES ('240', '2017-05-25 16:08:42', '1', '13', '332');
INSERT INTO `userrelease` VALUES ('241', '2017-05-25 16:08:42', '1', '92', '333');
INSERT INTO `userrelease` VALUES ('242', '2017-05-25 16:08:42', '1', '19', '334');
INSERT INTO `userrelease` VALUES ('243', '2017-05-25 16:08:42', '1', '66', '335');
INSERT INTO `userrelease` VALUES ('244', '2017-05-25 16:08:42', '1', '8', '336');
INSERT INTO `userrelease` VALUES ('245', '2017-05-25 16:08:42', '1', '68', '337');
INSERT INTO `userrelease` VALUES ('246', '2017-05-25 16:08:42', '1', '64', '338');
INSERT INTO `userrelease` VALUES ('247', '2017-05-25 16:08:42', '1', '76', '339');
INSERT INTO `userrelease` VALUES ('248', '2017-05-25 16:08:42', '1', '98', '340');
INSERT INTO `userrelease` VALUES ('249', '2017-05-25 16:08:42', '1', '10', '341');
INSERT INTO `userrelease` VALUES ('250', '2017-05-25 16:08:42', '1', '89', '342');
INSERT INTO `userrelease` VALUES ('251', '2017-05-25 16:08:42', '1', '3', '343');
INSERT INTO `userrelease` VALUES ('252', '2017-05-25 16:08:42', '1', '62', '344');
INSERT INTO `userrelease` VALUES ('253', '2017-05-25 16:08:42', '1', '40', '345');
INSERT INTO `userrelease` VALUES ('254', '2017-05-25 16:08:42', '1', '43', '346');
INSERT INTO `userrelease` VALUES ('255', '2017-05-25 16:08:42', '1', '61', '347');
INSERT INTO `userrelease` VALUES ('256', '2017-05-25 16:08:42', '1', '51', '348');
INSERT INTO `userrelease` VALUES ('257', '2017-05-25 16:08:43', '1', '12', '349');
INSERT INTO `userrelease` VALUES ('258', '2017-05-25 16:08:43', '1', '20', '350');
INSERT INTO `userrelease` VALUES ('259', '2017-05-25 16:08:43', '1', '46', '351');
INSERT INTO `userrelease` VALUES ('260', '2017-05-25 16:08:43', '1', '29', '352');
INSERT INTO `userrelease` VALUES ('261', '2017-05-25 16:08:43', '1', '93', '353');
INSERT INTO `userrelease` VALUES ('262', '2017-05-25 16:08:43', '1', '83', '354');
INSERT INTO `userrelease` VALUES ('263', '2017-05-25 16:08:43', '1', '86', '355');
INSERT INTO `userrelease` VALUES ('264', '2017-05-25 16:08:43', '1', '90', '356');
INSERT INTO `userrelease` VALUES ('265', '2017-05-25 16:08:43', '1', '51', '357');
INSERT INTO `userrelease` VALUES ('266', '2017-05-25 16:08:43', '1', '27', '358');
INSERT INTO `userrelease` VALUES ('267', '2017-05-25 16:08:43', '1', '60', '359');
INSERT INTO `userrelease` VALUES ('268', '2017-05-25 16:08:43', '1', '42', '360');
INSERT INTO `userrelease` VALUES ('269', '2017-05-25 16:08:43', '1', '62', '361');
INSERT INTO `userrelease` VALUES ('270', '2017-05-25 16:08:43', '1', '2', '362');
INSERT INTO `userrelease` VALUES ('271', '2017-05-25 16:08:43', '1', '44', '363');
INSERT INTO `userrelease` VALUES ('272', '2017-05-25 16:08:43', '1', '20', '364');
INSERT INTO `userrelease` VALUES ('273', '2017-05-25 16:08:43', '1', '26', '365');
INSERT INTO `userrelease` VALUES ('274', '2017-05-25 16:08:43', '1', '83', '366');
INSERT INTO `userrelease` VALUES ('275', '2017-05-25 16:08:43', '1', '91', '367');
INSERT INTO `userrelease` VALUES ('276', '2017-05-25 16:08:43', '1', '1', '368');
INSERT INTO `userrelease` VALUES ('277', '2017-05-25 16:08:43', '1', '38', '369');
INSERT INTO `userrelease` VALUES ('278', '2017-05-25 16:08:43', '1', '100', '370');
INSERT INTO `userrelease` VALUES ('279', '2017-05-25 16:08:43', '1', '15', '371');
INSERT INTO `userrelease` VALUES ('280', '2017-05-25 16:08:43', '1', '67', '372');
INSERT INTO `userrelease` VALUES ('281', '2017-05-25 16:08:43', '1', '25', '373');
INSERT INTO `userrelease` VALUES ('282', '2017-05-25 16:08:43', '1', '31', '374');
INSERT INTO `userrelease` VALUES ('283', '2017-05-25 16:08:43', '1', '54', '375');
INSERT INTO `userrelease` VALUES ('284', '2017-05-25 16:08:43', '1', '47', '376');
INSERT INTO `userrelease` VALUES ('285', '2017-05-25 16:08:43', '1', '49', '377');
INSERT INTO `userrelease` VALUES ('286', '2017-05-25 16:08:43', '1', '24', '378');
INSERT INTO `userrelease` VALUES ('287', '2017-05-25 16:08:43', '1', '13', '379');
INSERT INTO `userrelease` VALUES ('288', '2017-05-25 16:08:43', '1', '65', '380');
INSERT INTO `userrelease` VALUES ('289', '2017-05-25 16:08:43', '1', '15', '381');
INSERT INTO `userrelease` VALUES ('290', '2017-05-25 16:08:43', '1', '84', '382');
INSERT INTO `userrelease` VALUES ('291', '2017-05-25 16:08:43', '1', '3', '383');
INSERT INTO `userrelease` VALUES ('292', '2017-05-25 16:08:43', '1', '33', '384');
INSERT INTO `userrelease` VALUES ('293', '2017-05-25 16:08:43', '1', '100', '385');
INSERT INTO `userrelease` VALUES ('294', '2017-05-25 16:08:43', '1', '85', '386');
INSERT INTO `userrelease` VALUES ('295', '2017-05-25 16:08:43', '1', '2', '387');
INSERT INTO `userrelease` VALUES ('296', '2017-05-25 16:08:43', '1', '39', '388');
INSERT INTO `userrelease` VALUES ('297', '2017-05-25 16:08:43', '1', '60', '389');
INSERT INTO `userrelease` VALUES ('298', '2017-05-25 16:08:43', '1', '81', '390');
INSERT INTO `userrelease` VALUES ('299', '2017-05-25 16:08:43', '1', '50', '391');
INSERT INTO `userrelease` VALUES ('300', '2017-05-25 16:08:43', '1', '80', '392');
INSERT INTO `userrelease` VALUES ('301', '2017-05-25 16:08:43', '1', '77', '393');
INSERT INTO `userrelease` VALUES ('302', '2017-05-25 16:08:43', '1', '18', '394');
INSERT INTO `userrelease` VALUES ('303', '2017-05-25 16:08:43', '1', '28', '395');
INSERT INTO `userrelease` VALUES ('304', '2017-05-25 16:08:43', '1', '40', '396');
INSERT INTO `userrelease` VALUES ('305', '2017-05-25 16:08:43', '1', '66', '397');
INSERT INTO `userrelease` VALUES ('306', '2017-05-25 16:08:43', '1', '20', '398');
INSERT INTO `userrelease` VALUES ('307', '2017-05-25 16:08:43', '1', '79', '399');
INSERT INTO `userrelease` VALUES ('308', '2017-05-25 16:08:43', '1', '76', '400');
INSERT INTO `userrelease` VALUES ('309', '2017-05-25 16:08:43', '1', '37', '401');
INSERT INTO `userrelease` VALUES ('310', '2017-05-25 16:08:43', '1', '47', '402');
INSERT INTO `userrelease` VALUES ('311', '2017-05-25 16:08:43', '1', '3', '403');
INSERT INTO `userrelease` VALUES ('312', '2017-05-25 16:08:43', '1', '20', '404');
INSERT INTO `userrelease` VALUES ('313', '2017-05-25 16:08:43', '1', '99', '405');
INSERT INTO `userrelease` VALUES ('314', '2017-05-25 16:08:43', '1', '8', '406');
INSERT INTO `userrelease` VALUES ('315', '2017-05-25 16:08:43', '1', '10', '407');
INSERT INTO `userrelease` VALUES ('316', '2017-05-25 16:08:43', '1', '82', '408');
INSERT INTO `userrelease` VALUES ('317', '2017-05-25 16:08:43', '1', '32', '409');
INSERT INTO `userrelease` VALUES ('318', '2017-05-25 16:08:43', '1', '82', '410');
INSERT INTO `userrelease` VALUES ('319', '2017-05-25 16:08:43', '1', '16', '411');
INSERT INTO `userrelease` VALUES ('320', '2017-05-25 16:08:43', '1', '18', '412');
INSERT INTO `userrelease` VALUES ('321', '2017-05-25 16:08:43', '1', '3', '413');
INSERT INTO `userrelease` VALUES ('322', '2017-05-25 16:08:43', '1', '98', '414');
INSERT INTO `userrelease` VALUES ('323', '2017-05-25 16:08:43', '1', '19', '415');
INSERT INTO `userrelease` VALUES ('324', '2017-05-25 16:08:43', '1', '14', '416');
INSERT INTO `userrelease` VALUES ('325', '2017-05-25 16:08:43', '1', '4', '417');
INSERT INTO `userrelease` VALUES ('326', '2017-05-25 16:08:43', '1', '71', '418');
INSERT INTO `userrelease` VALUES ('327', '2017-05-25 16:08:43', '1', '61', '419');
INSERT INTO `userrelease` VALUES ('328', '2017-05-25 16:08:43', '1', '38', '420');
INSERT INTO `userrelease` VALUES ('329', '2017-05-25 16:08:43', '1', '1', '421');
INSERT INTO `userrelease` VALUES ('330', '2017-05-25 16:08:43', '1', '53', '422');
INSERT INTO `userrelease` VALUES ('331', '2017-05-25 16:08:43', '1', '82', '423');
INSERT INTO `userrelease` VALUES ('332', '2017-05-25 16:08:43', '1', '86', '424');
INSERT INTO `userrelease` VALUES ('333', '2017-05-25 16:08:43', '1', '14', '425');
INSERT INTO `userrelease` VALUES ('334', '2017-05-25 16:08:43', '1', '90', '426');
INSERT INTO `userrelease` VALUES ('335', '2017-05-25 16:08:43', '1', '10', '427');
INSERT INTO `userrelease` VALUES ('336', '2017-05-25 16:08:43', '1', '97', '428');
INSERT INTO `userrelease` VALUES ('337', '2017-05-25 16:08:43', '1', '69', '429');
INSERT INTO `userrelease` VALUES ('338', '2017-05-25 16:08:43', '1', '18', '430');
INSERT INTO `userrelease` VALUES ('339', '2017-05-25 16:08:43', '1', '63', '431');
INSERT INTO `userrelease` VALUES ('340', '2017-05-25 16:08:43', '1', '25', '432');
INSERT INTO `userrelease` VALUES ('341', '2017-05-25 16:08:43', '1', '99', '433');
INSERT INTO `userrelease` VALUES ('342', '2017-05-25 16:08:43', '1', '60', '434');
INSERT INTO `userrelease` VALUES ('343', '2017-05-25 16:08:43', '1', '56', '435');
INSERT INTO `userrelease` VALUES ('344', '2017-05-25 16:08:43', '1', '49', '436');
INSERT INTO `userrelease` VALUES ('345', '2017-05-25 16:08:43', '1', '90', '437');
INSERT INTO `userrelease` VALUES ('346', '2017-05-25 16:08:43', '1', '13', '438');
INSERT INTO `userrelease` VALUES ('347', '2017-05-25 16:08:43', '1', '42', '439');
INSERT INTO `userrelease` VALUES ('348', '2017-05-25 16:08:43', '1', '58', '440');
INSERT INTO `userrelease` VALUES ('349', '2017-05-25 16:08:43', '1', '35', '441');
INSERT INTO `userrelease` VALUES ('350', '2017-05-25 16:08:43', '1', '34', '442');
INSERT INTO `userrelease` VALUES ('351', '2017-05-25 16:08:43', '1', '52', '443');
INSERT INTO `userrelease` VALUES ('352', '2017-05-25 16:08:43', '1', '90', '444');
INSERT INTO `userrelease` VALUES ('353', '2017-05-25 16:08:43', '1', '84', '445');
INSERT INTO `userrelease` VALUES ('354', '2017-05-25 16:08:43', '1', '27', '446');
INSERT INTO `userrelease` VALUES ('355', '2017-05-25 16:08:43', '1', '3', '447');
INSERT INTO `userrelease` VALUES ('356', '2017-05-25 16:08:43', '1', '79', '448');
INSERT INTO `userrelease` VALUES ('357', '2017-05-25 16:08:43', '1', '71', '449');
INSERT INTO `userrelease` VALUES ('358', '2017-05-25 16:08:43', '1', '26', '450');
INSERT INTO `userrelease` VALUES ('359', '2017-05-25 16:08:43', '1', '71', '451');
INSERT INTO `userrelease` VALUES ('360', '2017-05-25 16:08:43', '1', '88', '452');
INSERT INTO `userrelease` VALUES ('361', '2017-05-25 16:08:43', '1', '13', '453');
INSERT INTO `userrelease` VALUES ('362', '2017-05-25 16:08:43', '1', '26', '454');
INSERT INTO `userrelease` VALUES ('363', '2017-05-25 16:08:43', '1', '85', '455');
INSERT INTO `userrelease` VALUES ('364', '2017-05-25 16:08:43', '1', '47', '456');
INSERT INTO `userrelease` VALUES ('365', '2017-05-25 16:08:43', '1', '27', '457');
INSERT INTO `userrelease` VALUES ('366', '2017-05-25 16:08:43', '1', '4', '458');
INSERT INTO `userrelease` VALUES ('367', '2017-05-25 16:08:43', '1', '22', '459');
INSERT INTO `userrelease` VALUES ('368', '2017-05-25 16:08:43', '1', '62', '460');
INSERT INTO `userrelease` VALUES ('369', '2017-05-25 16:08:43', '1', '87', '461');
INSERT INTO `userrelease` VALUES ('370', '2017-05-25 16:08:43', '1', '5', '462');
INSERT INTO `userrelease` VALUES ('371', '2017-05-25 16:08:43', '1', '1', '463');
INSERT INTO `userrelease` VALUES ('372', '2017-05-25 16:08:43', '1', '73', '464');
INSERT INTO `userrelease` VALUES ('373', '2017-05-25 16:08:43', '1', '11', '465');
INSERT INTO `userrelease` VALUES ('374', '2017-05-25 16:08:43', '1', '63', '466');
INSERT INTO `userrelease` VALUES ('375', '2017-05-25 16:08:43', '1', '81', '467');
INSERT INTO `userrelease` VALUES ('376', '2017-05-25 16:08:43', '1', '38', '468');
INSERT INTO `userrelease` VALUES ('377', '2017-05-25 16:08:43', '1', '18', '469');
INSERT INTO `userrelease` VALUES ('378', '2017-05-25 16:08:43', '1', '66', '470');
INSERT INTO `userrelease` VALUES ('379', '2017-05-25 16:08:43', '1', '39', '471');
INSERT INTO `userrelease` VALUES ('380', '2017-05-25 16:08:43', '1', '87', '472');
INSERT INTO `userrelease` VALUES ('381', '2017-05-25 16:08:43', '1', '4', '473');
INSERT INTO `userrelease` VALUES ('382', '2017-05-25 16:08:43', '1', '62', '474');
INSERT INTO `userrelease` VALUES ('383', '2017-05-25 16:08:43', '1', '11', '475');
INSERT INTO `userrelease` VALUES ('384', '2017-05-25 16:08:43', '1', '20', '476');
INSERT INTO `userrelease` VALUES ('385', '2017-05-25 16:08:43', '1', '30', '477');
INSERT INTO `userrelease` VALUES ('386', '2017-05-25 16:08:43', '1', '98', '478');
INSERT INTO `userrelease` VALUES ('387', '2017-05-25 16:08:43', '1', '70', '479');
INSERT INTO `userrelease` VALUES ('388', '2017-05-25 16:08:43', '1', '9', '480');
INSERT INTO `userrelease` VALUES ('389', '2017-05-25 16:08:43', '1', '82', '481');
INSERT INTO `userrelease` VALUES ('390', '2017-05-25 16:08:43', '1', '61', '482');
INSERT INTO `userrelease` VALUES ('391', '2017-05-25 16:08:43', '1', '87', '483');
INSERT INTO `userrelease` VALUES ('392', '2017-05-25 16:08:43', '1', '43', '484');
INSERT INTO `userrelease` VALUES ('393', '2017-05-25 16:08:43', '1', '57', '485');
INSERT INTO `userrelease` VALUES ('394', '2017-05-25 16:08:43', '1', '58', '486');
INSERT INTO `userrelease` VALUES ('395', '2017-05-25 16:08:43', '1', '55', '487');
INSERT INTO `userrelease` VALUES ('396', '2017-05-25 16:08:43', '1', '84', '488');
INSERT INTO `userrelease` VALUES ('397', '2017-05-25 16:08:43', '1', '67', '489');
INSERT INTO `userrelease` VALUES ('398', '2017-05-25 16:08:43', '1', '22', '490');
INSERT INTO `userrelease` VALUES ('399', '2017-05-25 16:08:43', '1', '64', '491');
INSERT INTO `userrelease` VALUES ('400', '2017-05-25 16:08:43', '1', '85', '492');
INSERT INTO `userrelease` VALUES ('401', '2017-05-25 16:08:43', '1', '11', '493');
INSERT INTO `userrelease` VALUES ('402', '2017-05-25 16:08:43', '1', '57', '494');
INSERT INTO `userrelease` VALUES ('403', '2017-05-25 16:08:44', '1', '60', '495');
INSERT INTO `userrelease` VALUES ('404', '2017-05-25 16:08:44', '1', '100', '496');
INSERT INTO `userrelease` VALUES ('405', '2017-05-25 16:08:44', '1', '65', '497');
INSERT INTO `userrelease` VALUES ('406', '2017-05-25 16:08:44', '1', '48', '498');
INSERT INTO `userrelease` VALUES ('407', '2017-05-25 16:08:44', '1', '88', '499');
INSERT INTO `userrelease` VALUES ('408', '2017-05-25 16:08:44', '1', '67', '500');
INSERT INTO `userrelease` VALUES ('409', '2017-05-25 16:08:44', '1', '57', '501');
INSERT INTO `userrelease` VALUES ('410', '2017-05-25 16:08:44', '1', '67', '502');
INSERT INTO `userrelease` VALUES ('411', '2017-05-25 16:08:44', '1', '100', '503');
INSERT INTO `userrelease` VALUES ('412', '2017-05-25 16:08:44', '1', '18', '504');
INSERT INTO `userrelease` VALUES ('413', '2017-05-25 16:08:44', '1', '94', '505');
INSERT INTO `userrelease` VALUES ('414', '2017-05-25 16:08:44', '1', '16', '506');
INSERT INTO `userrelease` VALUES ('415', '2017-05-25 16:08:44', '1', '79', '507');
INSERT INTO `userrelease` VALUES ('416', '2017-05-25 16:08:44', '1', '18', '508');
INSERT INTO `userrelease` VALUES ('417', '2017-05-25 16:08:44', '1', '52', '509');
INSERT INTO `userrelease` VALUES ('418', '2017-05-25 16:08:44', '1', '69', '510');
INSERT INTO `userrelease` VALUES ('419', '2017-05-25 16:08:44', '1', '56', '511');
INSERT INTO `userrelease` VALUES ('420', '2017-05-25 16:08:44', '1', '51', '512');
INSERT INTO `userrelease` VALUES ('421', '2017-05-25 16:08:44', '1', '54', '513');
INSERT INTO `userrelease` VALUES ('422', '2017-05-25 16:08:44', '1', '20', '514');
INSERT INTO `userrelease` VALUES ('423', '2017-05-25 16:08:44', '1', '79', '515');
INSERT INTO `userrelease` VALUES ('424', '2017-05-25 16:08:44', '1', '89', '516');
INSERT INTO `userrelease` VALUES ('425', '2017-05-25 16:08:44', '1', '25', '517');
INSERT INTO `userrelease` VALUES ('426', '2017-05-25 16:08:44', '1', '67', '518');
INSERT INTO `userrelease` VALUES ('427', '2017-05-25 16:08:44', '1', '70', '519');
INSERT INTO `userrelease` VALUES ('428', '2017-05-25 16:08:44', '1', '56', '520');
INSERT INTO `userrelease` VALUES ('429', '2017-05-25 16:08:44', '1', '22', '521');
INSERT INTO `userrelease` VALUES ('430', '2017-05-25 16:08:44', '1', '75', '522');
INSERT INTO `userrelease` VALUES ('431', '2017-05-25 16:08:44', '1', '88', '523');
INSERT INTO `userrelease` VALUES ('432', '2017-05-25 16:08:44', '1', '93', '524');
INSERT INTO `userrelease` VALUES ('433', '2017-05-25 16:08:44', '1', '54', '525');
INSERT INTO `userrelease` VALUES ('434', '2017-05-25 16:08:44', '1', '29', '526');
INSERT INTO `userrelease` VALUES ('435', '2017-05-25 16:08:44', '1', '81', '527');
INSERT INTO `userrelease` VALUES ('436', '2017-05-25 16:08:44', '1', '25', '528');
INSERT INTO `userrelease` VALUES ('437', '2017-05-25 16:08:44', '1', '85', '529');
INSERT INTO `userrelease` VALUES ('438', '2017-05-25 16:08:44', '1', '48', '530');
INSERT INTO `userrelease` VALUES ('439', '2017-05-25 16:08:44', '1', '64', '531');
INSERT INTO `userrelease` VALUES ('440', '2017-05-25 16:08:44', '1', '36', '532');
INSERT INTO `userrelease` VALUES ('441', '2017-05-25 16:08:44', '1', '89', '533');
INSERT INTO `userrelease` VALUES ('442', '2017-05-25 16:08:44', '1', '83', '534');
INSERT INTO `userrelease` VALUES ('443', '2017-05-25 16:08:44', '1', '85', '535');
INSERT INTO `userrelease` VALUES ('444', '2017-05-25 16:08:44', '1', '7', '536');
INSERT INTO `userrelease` VALUES ('445', '2017-05-25 16:08:44', '1', '49', '537');
INSERT INTO `userrelease` VALUES ('446', '2017-05-25 16:08:44', '1', '44', '538');
INSERT INTO `userrelease` VALUES ('447', '2017-05-25 16:08:44', '1', '62', '539');
INSERT INTO `userrelease` VALUES ('448', '2017-05-25 16:08:44', '1', '11', '540');
INSERT INTO `userrelease` VALUES ('449', '2017-05-25 16:08:44', '1', '98', '541');
INSERT INTO `userrelease` VALUES ('450', '2017-05-25 16:08:44', '1', '82', '542');
INSERT INTO `userrelease` VALUES ('451', '2017-05-25 16:08:44', '1', '46', '543');
INSERT INTO `userrelease` VALUES ('452', '2017-05-25 16:08:44', '1', '6', '544');
INSERT INTO `userrelease` VALUES ('453', '2017-05-25 16:08:44', '1', '74', '545');
INSERT INTO `userrelease` VALUES ('454', '2017-05-25 16:08:44', '1', '59', '546');
INSERT INTO `userrelease` VALUES ('455', '2017-05-25 16:08:44', '1', '90', '547');
INSERT INTO `userrelease` VALUES ('456', '2017-05-25 16:08:44', '1', '36', '548');
INSERT INTO `userrelease` VALUES ('457', '2017-05-25 16:08:44', '1', '68', '549');
INSERT INTO `userrelease` VALUES ('458', '2017-05-25 16:08:44', '1', '53', '550');
INSERT INTO `userrelease` VALUES ('459', '2017-05-25 16:08:44', '1', '49', '551');
INSERT INTO `userrelease` VALUES ('460', '2017-05-25 16:08:44', '1', '76', '552');
INSERT INTO `userrelease` VALUES ('461', '2017-05-25 16:08:44', '1', '100', '553');
INSERT INTO `userrelease` VALUES ('462', '2017-05-25 16:08:44', '1', '71', '554');
INSERT INTO `userrelease` VALUES ('463', '2017-05-25 16:08:44', '1', '77', '555');
INSERT INTO `userrelease` VALUES ('464', '2017-05-25 16:08:44', '1', '26', '556');
INSERT INTO `userrelease` VALUES ('465', '2017-05-25 16:08:44', '1', '32', '557');
INSERT INTO `userrelease` VALUES ('466', '2017-05-25 16:08:44', '1', '30', '558');
INSERT INTO `userrelease` VALUES ('467', '2017-05-25 16:08:44', '1', '39', '559');
INSERT INTO `userrelease` VALUES ('468', '2017-05-25 16:08:44', '1', '48', '560');
INSERT INTO `userrelease` VALUES ('469', '2017-05-25 16:08:44', '1', '72', '561');
INSERT INTO `userrelease` VALUES ('470', '2017-05-25 16:08:44', '1', '78', '562');
INSERT INTO `userrelease` VALUES ('471', '2017-05-25 16:08:44', '1', '92', '563');
INSERT INTO `userrelease` VALUES ('472', '2017-05-25 16:08:44', '1', '49', '564');
INSERT INTO `userrelease` VALUES ('473', '2017-05-25 16:08:44', '1', '38', '565');
INSERT INTO `userrelease` VALUES ('474', '2017-05-25 16:08:44', '1', '99', '566');
INSERT INTO `userrelease` VALUES ('475', '2017-05-25 16:08:44', '1', '55', '567');
INSERT INTO `userrelease` VALUES ('476', '2017-05-25 16:08:44', '1', '33', '568');
INSERT INTO `userrelease` VALUES ('477', '2017-05-25 16:08:44', '1', '58', '569');
INSERT INTO `userrelease` VALUES ('478', '2017-05-25 16:08:44', '1', '12', '570');
INSERT INTO `userrelease` VALUES ('479', '2017-05-25 16:08:44', '1', '41', '571');
INSERT INTO `userrelease` VALUES ('480', '2017-05-25 16:08:44', '1', '39', '572');
INSERT INTO `userrelease` VALUES ('481', '2017-05-25 16:08:44', '1', '22', '573');
INSERT INTO `userrelease` VALUES ('482', '2017-05-25 16:08:44', '1', '26', '574');
INSERT INTO `userrelease` VALUES ('483', '2017-05-25 16:08:44', '1', '20', '575');
INSERT INTO `userrelease` VALUES ('484', '2017-05-25 16:08:44', '1', '5', '576');
INSERT INTO `userrelease` VALUES ('485', '2017-05-25 16:08:44', '1', '50', '577');
INSERT INTO `userrelease` VALUES ('486', '2017-05-25 16:08:44', '1', '51', '578');
INSERT INTO `userrelease` VALUES ('487', '2017-05-25 16:08:44', '1', '83', '579');
INSERT INTO `userrelease` VALUES ('488', '2017-05-25 16:08:44', '1', '58', '580');
INSERT INTO `userrelease` VALUES ('489', '2017-05-25 16:08:44', '1', '47', '581');
INSERT INTO `userrelease` VALUES ('490', '2017-05-25 16:08:44', '1', '98', '582');
INSERT INTO `userrelease` VALUES ('491', '2017-05-25 16:08:44', '1', '41', '583');
INSERT INTO `userrelease` VALUES ('492', '2017-05-25 16:08:44', '1', '99', '584');
INSERT INTO `userrelease` VALUES ('493', '2017-05-25 16:08:44', '1', '70', '585');
INSERT INTO `userrelease` VALUES ('494', '2017-05-25 16:08:44', '1', '47', '586');
INSERT INTO `userrelease` VALUES ('495', '2017-05-25 16:08:44', '1', '85', '587');
INSERT INTO `userrelease` VALUES ('496', '2017-05-25 16:08:44', '1', '88', '588');
INSERT INTO `userrelease` VALUES ('497', '2017-05-25 16:08:44', '1', '4', '589');
INSERT INTO `userrelease` VALUES ('498', '2017-05-25 16:08:44', '1', '64', '590');
INSERT INTO `userrelease` VALUES ('499', '2017-05-25 16:08:44', '1', '15', '591');
INSERT INTO `userrelease` VALUES ('500', '2017-05-25 16:08:44', '1', '59', '592');
INSERT INTO `userrelease` VALUES ('501', '2017-05-25 16:08:44', '1', '88', '593');
INSERT INTO `userrelease` VALUES ('502', '2017-05-25 16:08:44', '1', '43', '594');
INSERT INTO `userrelease` VALUES ('503', '2017-05-25 16:08:44', '1', '50', '595');
INSERT INTO `userrelease` VALUES ('504', '2017-05-25 16:08:44', '1', '70', '596');
INSERT INTO `userrelease` VALUES ('505', '2017-05-25 16:08:44', '1', '70', '597');
INSERT INTO `userrelease` VALUES ('506', '2017-05-25 16:08:44', '1', '19', '598');
INSERT INTO `userrelease` VALUES ('507', '2017-05-25 16:08:44', '1', '70', '599');
INSERT INTO `userrelease` VALUES ('508', '2017-05-25 16:08:44', '1', '89', '600');
INSERT INTO `userrelease` VALUES ('509', '2017-05-25 16:08:44', '1', '59', '601');
INSERT INTO `userrelease` VALUES ('510', '2017-05-25 16:08:44', '1', '26', '602');
INSERT INTO `userrelease` VALUES ('511', '2017-05-25 16:08:44', '1', '76', '603');
INSERT INTO `userrelease` VALUES ('512', '2017-05-25 16:08:44', '1', '26', '604');
INSERT INTO `userrelease` VALUES ('513', '2017-05-25 16:08:44', '1', '90', '605');
INSERT INTO `userrelease` VALUES ('514', '2017-05-25 16:08:44', '1', '93', '606');
INSERT INTO `userrelease` VALUES ('515', '2017-05-25 16:08:44', '1', '36', '607');
INSERT INTO `userrelease` VALUES ('516', '2017-05-25 16:08:44', '1', '33', '608');
INSERT INTO `userrelease` VALUES ('517', '2017-05-25 16:08:44', '1', '6', '609');
INSERT INTO `userrelease` VALUES ('518', '2017-05-25 16:08:44', '1', '75', '610');
INSERT INTO `userrelease` VALUES ('519', '2017-05-25 16:08:44', '1', '88', '611');
INSERT INTO `userrelease` VALUES ('520', '2017-05-25 16:08:44', '1', '86', '612');
INSERT INTO `userrelease` VALUES ('521', '2017-05-25 16:08:44', '1', '66', '613');
INSERT INTO `userrelease` VALUES ('522', '2017-05-25 16:08:44', '1', '72', '614');
INSERT INTO `userrelease` VALUES ('523', '2017-05-25 16:08:44', '1', '64', '615');
INSERT INTO `userrelease` VALUES ('524', '2017-05-25 16:08:44', '1', '2', '616');
INSERT INTO `userrelease` VALUES ('525', '2017-05-25 16:08:44', '1', '6', '617');
INSERT INTO `userrelease` VALUES ('526', '2017-05-25 16:08:44', '1', '58', '618');
INSERT INTO `userrelease` VALUES ('527', '2017-05-25 16:08:44', '1', '82', '619');
INSERT INTO `userrelease` VALUES ('528', '2017-05-25 16:08:44', '1', '75', '620');
INSERT INTO `userrelease` VALUES ('529', '2017-05-25 16:08:44', '1', '79', '621');
INSERT INTO `userrelease` VALUES ('530', '2017-05-25 16:08:44', '1', '31', '622');
INSERT INTO `userrelease` VALUES ('531', '2017-05-25 16:08:44', '1', '76', '623');
INSERT INTO `userrelease` VALUES ('532', '2017-05-25 16:08:44', '1', '75', '624');
INSERT INTO `userrelease` VALUES ('533', '2017-05-25 16:08:44', '1', '87', '625');
INSERT INTO `userrelease` VALUES ('534', '2017-05-25 16:08:44', '1', '21', '626');
INSERT INTO `userrelease` VALUES ('535', '2017-05-25 16:08:44', '1', '64', '627');
INSERT INTO `userrelease` VALUES ('536', '2017-05-25 16:08:44', '1', '91', '628');
INSERT INTO `userrelease` VALUES ('537', '2017-05-25 16:08:44', '1', '71', '629');
INSERT INTO `userrelease` VALUES ('538', '2017-05-25 16:08:44', '1', '75', '630');
INSERT INTO `userrelease` VALUES ('539', '2017-05-25 16:08:44', '1', '88', '631');
INSERT INTO `userrelease` VALUES ('540', '2017-05-25 16:08:44', '1', '30', '632');
INSERT INTO `userrelease` VALUES ('541', '2017-05-25 16:08:44', '1', '90', '633');
INSERT INTO `userrelease` VALUES ('542', '2017-05-25 16:08:44', '1', '65', '634');
INSERT INTO `userrelease` VALUES ('543', '2017-05-25 16:08:44', '1', '51', '635');
INSERT INTO `userrelease` VALUES ('544', '2017-05-25 16:08:44', '1', '88', '636');
INSERT INTO `userrelease` VALUES ('545', '2017-05-25 16:08:44', '1', '91', '637');
INSERT INTO `userrelease` VALUES ('546', '2017-05-25 16:08:44', '1', '75', '638');
INSERT INTO `userrelease` VALUES ('547', '2017-05-25 16:08:44', '1', '17', '639');
INSERT INTO `userrelease` VALUES ('548', '2017-05-25 16:08:45', '1', '62', '640');
INSERT INTO `userrelease` VALUES ('549', '2017-05-25 16:08:45', '1', '22', '641');
INSERT INTO `userrelease` VALUES ('550', '2017-05-25 16:08:45', '1', '95', '642');
INSERT INTO `userrelease` VALUES ('551', '2017-05-25 16:08:45', '1', '79', '643');
INSERT INTO `userrelease` VALUES ('552', '2017-05-25 16:08:45', '1', '71', '644');
INSERT INTO `userrelease` VALUES ('553', '2017-05-25 16:08:45', '1', '88', '645');
INSERT INTO `userrelease` VALUES ('554', '2017-05-25 16:08:45', '1', '77', '646');
INSERT INTO `userrelease` VALUES ('555', '2017-05-25 16:08:45', '1', '69', '647');
INSERT INTO `userrelease` VALUES ('556', '2017-05-25 16:08:45', '1', '65', '648');
INSERT INTO `userrelease` VALUES ('557', '2017-05-25 16:08:45', '1', '50', '649');
INSERT INTO `userrelease` VALUES ('558', '2017-05-25 16:08:45', '1', '96', '650');
INSERT INTO `userrelease` VALUES ('559', '2017-05-25 16:08:45', '1', '78', '651');
INSERT INTO `userrelease` VALUES ('560', '2017-05-25 16:08:45', '1', '19', '652');
INSERT INTO `userrelease` VALUES ('561', '2017-05-25 16:08:45', '1', '33', '653');
INSERT INTO `userrelease` VALUES ('562', '2017-05-25 16:08:45', '1', '34', '654');
INSERT INTO `userrelease` VALUES ('563', '2017-05-25 16:08:45', '1', '10', '655');
INSERT INTO `userrelease` VALUES ('564', '2017-05-25 16:08:45', '1', '87', '656');
INSERT INTO `userrelease` VALUES ('565', '2017-05-25 16:08:45', '1', '8', '657');
INSERT INTO `userrelease` VALUES ('566', '2017-05-25 16:08:45', '1', '50', '658');
INSERT INTO `userrelease` VALUES ('567', '2017-05-25 16:08:45', '1', '27', '659');
INSERT INTO `userrelease` VALUES ('568', '2017-05-25 16:08:45', '1', '32', '660');
INSERT INTO `userrelease` VALUES ('569', '2017-05-25 16:08:45', '1', '77', '661');
INSERT INTO `userrelease` VALUES ('570', '2017-05-25 16:08:45', '1', '27', '662');
INSERT INTO `userrelease` VALUES ('571', '2017-05-25 16:08:45', '1', '15', '663');
INSERT INTO `userrelease` VALUES ('572', '2017-05-25 16:08:45', '1', '25', '664');
INSERT INTO `userrelease` VALUES ('573', '2017-05-25 16:08:45', '1', '74', '665');
INSERT INTO `userrelease` VALUES ('574', '2017-05-25 16:08:45', '1', '29', '666');
INSERT INTO `userrelease` VALUES ('575', '2017-05-25 16:08:45', '1', '94', '667');
INSERT INTO `userrelease` VALUES ('576', '2017-05-25 16:08:45', '1', '81', '668');
INSERT INTO `userrelease` VALUES ('577', '2017-05-25 16:08:45', '1', '24', '669');
INSERT INTO `userrelease` VALUES ('578', '2017-05-25 16:08:45', '1', '67', '670');
INSERT INTO `userrelease` VALUES ('579', '2017-05-25 16:08:45', '1', '8', '671');
INSERT INTO `userrelease` VALUES ('580', '2017-05-25 16:08:45', '1', '47', '672');
INSERT INTO `userrelease` VALUES ('581', '2017-05-25 16:08:45', '1', '95', '673');
INSERT INTO `userrelease` VALUES ('582', '2017-05-25 16:08:45', '1', '60', '674');
INSERT INTO `userrelease` VALUES ('583', '2017-05-25 16:08:45', '1', '49', '675');
INSERT INTO `userrelease` VALUES ('584', '2017-05-25 16:08:45', '1', '87', '676');
INSERT INTO `userrelease` VALUES ('585', '2017-05-25 16:08:45', '1', '86', '677');
INSERT INTO `userrelease` VALUES ('586', '2017-05-25 16:08:45', '1', '70', '678');
INSERT INTO `userrelease` VALUES ('587', '2017-05-25 16:08:45', '1', '97', '679');
INSERT INTO `userrelease` VALUES ('588', '2017-05-25 16:08:45', '1', '27', '680');
INSERT INTO `userrelease` VALUES ('589', '2017-05-25 16:08:45', '1', '61', '681');
INSERT INTO `userrelease` VALUES ('590', '2017-05-25 16:08:45', '1', '26', '682');
INSERT INTO `userrelease` VALUES ('591', '2017-05-25 16:08:45', '1', '71', '683');
INSERT INTO `userrelease` VALUES ('592', '2017-05-25 16:08:45', '1', '72', '684');
INSERT INTO `userrelease` VALUES ('593', '2017-05-25 16:08:45', '1', '85', '685');
INSERT INTO `userrelease` VALUES ('594', '2017-05-25 16:08:45', '1', '2', '686');
INSERT INTO `userrelease` VALUES ('595', '2017-05-25 16:08:45', '1', '14', '687');
INSERT INTO `userrelease` VALUES ('596', '2017-05-25 16:08:45', '1', '96', '688');
INSERT INTO `userrelease` VALUES ('597', '2017-05-25 16:08:45', '1', '3', '689');
INSERT INTO `userrelease` VALUES ('598', '2017-05-25 16:08:45', '1', '13', '690');
INSERT INTO `userrelease` VALUES ('599', '2017-05-25 16:08:45', '1', '20', '691');
INSERT INTO `userrelease` VALUES ('600', '2017-05-25 16:08:45', '1', '33', '692');
INSERT INTO `userrelease` VALUES ('601', '2017-05-25 16:08:45', '1', '14', '693');
INSERT INTO `userrelease` VALUES ('602', '2017-05-25 16:08:45', '1', '30', '694');
INSERT INTO `userrelease` VALUES ('603', '2017-05-25 16:08:45', '1', '7', '695');
INSERT INTO `userrelease` VALUES ('604', '2017-05-25 16:08:45', '1', '13', '696');
INSERT INTO `userrelease` VALUES ('605', '2017-05-25 16:08:45', '1', '11', '697');
INSERT INTO `userrelease` VALUES ('606', '2017-05-25 16:08:45', '1', '3', '698');
INSERT INTO `userrelease` VALUES ('607', '2017-05-25 16:08:45', '1', '49', '699');
INSERT INTO `userrelease` VALUES ('608', '2017-05-25 16:08:45', '1', '33', '700');
INSERT INTO `userrelease` VALUES ('609', '2017-05-25 16:08:45', '1', '82', '701');
INSERT INTO `userrelease` VALUES ('610', '2017-05-25 16:08:45', '1', '58', '702');
INSERT INTO `userrelease` VALUES ('611', '2017-05-25 16:08:45', '1', '63', '703');
INSERT INTO `userrelease` VALUES ('612', '2017-05-25 16:08:45', '1', '60', '704');
INSERT INTO `userrelease` VALUES ('613', '2017-05-25 16:08:45', '1', '52', '705');
INSERT INTO `userrelease` VALUES ('614', '2017-05-25 16:08:45', '1', '89', '706');
INSERT INTO `userrelease` VALUES ('615', '2017-05-25 16:08:45', '1', '82', '707');
INSERT INTO `userrelease` VALUES ('616', '2017-05-25 16:08:45', '1', '36', '708');
INSERT INTO `userrelease` VALUES ('617', '2017-05-25 16:08:45', '1', '36', '709');
INSERT INTO `userrelease` VALUES ('618', '2017-05-25 16:08:45', '1', '94', '710');
INSERT INTO `userrelease` VALUES ('619', '2017-05-25 16:08:45', '1', '92', '711');
INSERT INTO `userrelease` VALUES ('620', '2017-05-25 16:08:45', '1', '84', '712');
INSERT INTO `userrelease` VALUES ('621', '2017-05-25 16:08:45', '1', '87', '713');
INSERT INTO `userrelease` VALUES ('622', '2017-05-25 16:08:45', '1', '99', '714');
INSERT INTO `userrelease` VALUES ('623', '2017-05-25 16:08:45', '1', '14', '715');
INSERT INTO `userrelease` VALUES ('624', '2017-05-25 16:08:45', '1', '38', '716');
INSERT INTO `userrelease` VALUES ('625', '2017-05-25 16:08:45', '1', '72', '717');
INSERT INTO `userrelease` VALUES ('626', '2017-05-25 16:08:45', '1', '23', '718');
INSERT INTO `userrelease` VALUES ('627', '2017-05-25 16:08:45', '1', '55', '719');
INSERT INTO `userrelease` VALUES ('628', '2017-05-25 16:08:45', '1', '85', '720');
INSERT INTO `userrelease` VALUES ('629', '2017-05-25 16:08:45', '1', '72', '721');
INSERT INTO `userrelease` VALUES ('630', '2017-05-25 16:08:45', '1', '51', '722');
INSERT INTO `userrelease` VALUES ('631', '2017-05-25 16:08:45', '1', '69', '723');
INSERT INTO `userrelease` VALUES ('632', '2017-05-25 16:08:45', '1', '90', '724');
INSERT INTO `userrelease` VALUES ('633', '2017-05-25 16:08:45', '1', '55', '725');
INSERT INTO `userrelease` VALUES ('634', '2017-05-25 16:08:45', '1', '1', '726');
INSERT INTO `userrelease` VALUES ('635', '2017-05-25 16:08:45', '1', '15', '727');
INSERT INTO `userrelease` VALUES ('636', '2017-05-25 16:08:45', '1', '7', '728');
INSERT INTO `userrelease` VALUES ('637', '2017-05-25 16:08:45', '1', '41', '729');
INSERT INTO `userrelease` VALUES ('638', '2017-05-25 16:08:45', '1', '78', '730');
INSERT INTO `userrelease` VALUES ('639', '2017-05-25 16:08:45', '1', '51', '731');
INSERT INTO `userrelease` VALUES ('640', '2017-05-25 16:08:45', '1', '12', '732');
INSERT INTO `userrelease` VALUES ('641', '2017-05-25 16:08:45', '1', '29', '733');
INSERT INTO `userrelease` VALUES ('642', '2017-05-25 16:08:45', '1', '84', '734');
INSERT INTO `userrelease` VALUES ('643', '2017-05-25 16:08:45', '1', '41', '735');
INSERT INTO `userrelease` VALUES ('644', '2017-05-25 16:08:45', '1', '86', '736');
INSERT INTO `userrelease` VALUES ('645', '2017-05-25 16:08:45', '1', '80', '737');
INSERT INTO `userrelease` VALUES ('646', '2017-05-25 16:08:45', '1', '90', '738');
INSERT INTO `userrelease` VALUES ('647', '2017-05-25 16:08:45', '1', '50', '739');
INSERT INTO `userrelease` VALUES ('648', '2017-05-25 16:08:45', '1', '80', '740');
INSERT INTO `userrelease` VALUES ('649', '2017-05-25 16:08:45', '1', '25', '741');
INSERT INTO `userrelease` VALUES ('650', '2017-05-25 16:08:45', '1', '36', '742');
INSERT INTO `userrelease` VALUES ('651', '2017-05-25 16:08:45', '1', '12', '743');
INSERT INTO `userrelease` VALUES ('652', '2017-05-25 16:08:45', '1', '45', '744');
INSERT INTO `userrelease` VALUES ('653', '2017-05-25 16:08:45', '1', '80', '745');
INSERT INTO `userrelease` VALUES ('654', '2017-05-25 16:08:45', '1', '43', '746');
INSERT INTO `userrelease` VALUES ('655', '2017-05-25 16:08:45', '1', '19', '747');
INSERT INTO `userrelease` VALUES ('656', '2017-05-25 16:08:45', '1', '65', '748');
INSERT INTO `userrelease` VALUES ('657', '2017-05-25 16:08:45', '1', '21', '749');
INSERT INTO `userrelease` VALUES ('658', '2017-05-25 16:08:45', '1', '69', '750');
INSERT INTO `userrelease` VALUES ('659', '2017-05-25 16:08:45', '1', '66', '751');
INSERT INTO `userrelease` VALUES ('660', '2017-05-25 16:08:45', '1', '71', '752');
INSERT INTO `userrelease` VALUES ('661', '2017-05-25 16:08:45', '1', '56', '753');
INSERT INTO `userrelease` VALUES ('662', '2017-05-25 16:08:45', '1', '35', '754');
INSERT INTO `userrelease` VALUES ('663', '2017-05-25 16:08:45', '1', '35', '755');
INSERT INTO `userrelease` VALUES ('664', '2017-05-25 16:08:45', '1', '44', '756');
INSERT INTO `userrelease` VALUES ('665', '2017-05-25 16:08:45', '1', '11', '757');
INSERT INTO `userrelease` VALUES ('666', '2017-05-25 16:08:45', '1', '84', '758');
INSERT INTO `userrelease` VALUES ('667', '2017-05-25 16:08:45', '1', '43', '759');
INSERT INTO `userrelease` VALUES ('668', '2017-05-25 16:08:45', '1', '2', '760');
INSERT INTO `userrelease` VALUES ('669', '2017-05-25 16:08:45', '1', '80', '761');
INSERT INTO `userrelease` VALUES ('670', '2017-05-25 16:08:45', '1', '42', '762');
INSERT INTO `userrelease` VALUES ('671', '2017-05-25 16:08:45', '1', '90', '763');
INSERT INTO `userrelease` VALUES ('672', '2017-05-25 16:08:45', '1', '30', '764');
INSERT INTO `userrelease` VALUES ('673', '2017-05-25 16:08:45', '1', '4', '765');
INSERT INTO `userrelease` VALUES ('674', '2017-05-25 16:08:45', '1', '57', '766');
INSERT INTO `userrelease` VALUES ('675', '2017-05-25 16:08:45', '1', '27', '767');
INSERT INTO `userrelease` VALUES ('676', '2017-05-25 16:08:45', '1', '81', '768');
INSERT INTO `userrelease` VALUES ('677', '2017-05-25 16:08:45', '1', '81', '769');
INSERT INTO `userrelease` VALUES ('678', '2017-05-25 16:08:45', '1', '7', '770');
INSERT INTO `userrelease` VALUES ('679', '2017-05-25 16:08:45', '1', '73', '771');
INSERT INTO `userrelease` VALUES ('680', '2017-05-25 16:08:45', '1', '50', '772');
INSERT INTO `userrelease` VALUES ('681', '2017-05-25 16:08:45', '1', '66', '773');
INSERT INTO `userrelease` VALUES ('682', '2017-05-25 16:08:45', '1', '35', '774');
INSERT INTO `userrelease` VALUES ('683', '2017-05-25 16:08:45', '1', '27', '775');
INSERT INTO `userrelease` VALUES ('684', '2017-05-25 16:08:45', '1', '86', '776');
INSERT INTO `userrelease` VALUES ('685', '2017-05-25 16:08:45', '1', '28', '777');
INSERT INTO `userrelease` VALUES ('686', '2017-05-25 16:08:45', '1', '30', '778');
INSERT INTO `userrelease` VALUES ('687', '2017-05-25 16:08:45', '1', '90', '779');
INSERT INTO `userrelease` VALUES ('688', '2017-05-25 16:08:45', '1', '65', '780');
INSERT INTO `userrelease` VALUES ('689', '2017-05-25 16:08:45', '1', '38', '781');
INSERT INTO `userrelease` VALUES ('690', '2017-05-25 16:08:45', '1', '60', '782');
INSERT INTO `userrelease` VALUES ('691', '2017-05-25 16:08:45', '1', '66', '783');
INSERT INTO `userrelease` VALUES ('692', '2017-05-25 16:08:45', '1', '89', '784');
INSERT INTO `userrelease` VALUES ('693', '2017-05-25 16:08:45', '1', '53', '785');
INSERT INTO `userrelease` VALUES ('694', '2017-05-25 16:08:45', '1', '25', '786');
INSERT INTO `userrelease` VALUES ('695', '2017-05-25 16:08:45', '1', '82', '787');
INSERT INTO `userrelease` VALUES ('696', '2017-05-25 16:08:46', '1', '37', '788');
INSERT INTO `userrelease` VALUES ('697', '2017-05-25 16:08:46', '1', '28', '789');
INSERT INTO `userrelease` VALUES ('698', '2017-05-25 16:08:46', '1', '67', '790');
INSERT INTO `userrelease` VALUES ('699', '2017-05-25 16:08:46', '1', '48', '791');
INSERT INTO `userrelease` VALUES ('700', '2017-05-25 16:08:46', '1', '75', '792');
INSERT INTO `userrelease` VALUES ('701', '2017-05-25 16:08:46', '1', '25', '793');
INSERT INTO `userrelease` VALUES ('702', '2017-05-25 16:08:46', '1', '20', '794');
INSERT INTO `userrelease` VALUES ('703', '2017-05-25 16:08:46', '1', '84', '795');
INSERT INTO `userrelease` VALUES ('704', '2017-05-25 16:08:46', '1', '87', '796');
INSERT INTO `userrelease` VALUES ('705', '2017-05-25 16:08:46', '1', '32', '797');
INSERT INTO `userrelease` VALUES ('706', '2017-05-25 16:08:46', '1', '8', '798');
INSERT INTO `userrelease` VALUES ('707', '2017-05-25 16:08:46', '1', '24', '799');
INSERT INTO `userrelease` VALUES ('708', '2017-05-25 16:08:46', '1', '64', '800');
INSERT INTO `userrelease` VALUES ('709', '2017-05-25 16:08:46', '1', '62', '801');
INSERT INTO `userrelease` VALUES ('710', '2017-05-25 16:08:46', '1', '45', '802');
INSERT INTO `userrelease` VALUES ('711', '2017-05-25 16:08:46', '1', '99', '803');
INSERT INTO `userrelease` VALUES ('712', '2017-05-25 16:08:46', '1', '30', '804');
INSERT INTO `userrelease` VALUES ('713', '2017-05-25 16:08:46', '1', '78', '805');
INSERT INTO `userrelease` VALUES ('714', '2017-05-25 16:08:46', '1', '72', '806');
INSERT INTO `userrelease` VALUES ('715', '2017-05-25 16:08:46', '1', '65', '807');
INSERT INTO `userrelease` VALUES ('716', '2017-05-25 16:08:46', '1', '46', '808');
INSERT INTO `userrelease` VALUES ('717', '2017-05-25 16:08:46', '1', '28', '809');
INSERT INTO `userrelease` VALUES ('718', '2017-05-25 16:08:46', '1', '61', '810');
INSERT INTO `userrelease` VALUES ('719', '2017-05-25 16:08:46', '1', '63', '811');
INSERT INTO `userrelease` VALUES ('720', '2017-05-25 16:08:46', '1', '50', '812');
INSERT INTO `userrelease` VALUES ('721', '2017-05-25 16:08:46', '1', '76', '813');
INSERT INTO `userrelease` VALUES ('722', '2017-05-25 16:08:46', '1', '55', '814');
INSERT INTO `userrelease` VALUES ('723', '2017-05-25 16:08:46', '1', '79', '815');
INSERT INTO `userrelease` VALUES ('724', '2017-05-25 16:08:46', '1', '65', '816');
INSERT INTO `userrelease` VALUES ('725', '2017-05-25 16:08:46', '1', '65', '817');
INSERT INTO `userrelease` VALUES ('726', '2017-05-25 16:08:46', '1', '33', '818');
INSERT INTO `userrelease` VALUES ('727', '2017-05-25 16:08:46', '1', '69', '819');
INSERT INTO `userrelease` VALUES ('728', '2017-05-25 16:08:46', '1', '86', '820');
INSERT INTO `userrelease` VALUES ('729', '2017-05-25 16:08:46', '1', '63', '821');
INSERT INTO `userrelease` VALUES ('730', '2017-05-25 16:08:46', '1', '69', '822');
INSERT INTO `userrelease` VALUES ('731', '2017-05-25 16:08:46', '1', '93', '823');
INSERT INTO `userrelease` VALUES ('732', '2017-05-25 16:08:46', '1', '13', '824');
INSERT INTO `userrelease` VALUES ('733', '2017-05-25 16:08:46', '1', '58', '825');
INSERT INTO `userrelease` VALUES ('734', '2017-05-25 16:08:46', '1', '94', '826');
INSERT INTO `userrelease` VALUES ('735', '2017-05-25 16:08:46', '1', '91', '827');
INSERT INTO `userrelease` VALUES ('736', '2017-05-25 16:08:46', '1', '92', '828');
INSERT INTO `userrelease` VALUES ('737', '2017-05-25 16:08:46', '1', '61', '829');
INSERT INTO `userrelease` VALUES ('738', '2017-05-25 16:08:46', '1', '18', '830');
INSERT INTO `userrelease` VALUES ('739', '2017-05-25 16:08:46', '1', '13', '831');
INSERT INTO `userrelease` VALUES ('740', '2017-05-25 16:08:46', '1', '24', '832');
INSERT INTO `userrelease` VALUES ('741', '2017-05-25 16:08:46', '1', '4', '833');
INSERT INTO `userrelease` VALUES ('742', '2017-05-25 16:08:46', '1', '91', '834');
INSERT INTO `userrelease` VALUES ('743', '2017-05-25 16:08:46', '1', '48', '835');
INSERT INTO `userrelease` VALUES ('744', '2017-05-25 16:08:46', '1', '32', '836');
INSERT INTO `userrelease` VALUES ('745', '2017-05-25 16:08:46', '1', '55', '837');
INSERT INTO `userrelease` VALUES ('746', '2017-05-25 16:08:46', '1', '15', '838');
INSERT INTO `userrelease` VALUES ('747', '2017-05-25 16:08:46', '1', '28', '839');
INSERT INTO `userrelease` VALUES ('748', '2017-05-25 16:08:46', '1', '66', '840');
INSERT INTO `userrelease` VALUES ('749', '2017-05-25 16:08:46', '1', '83', '841');
INSERT INTO `userrelease` VALUES ('750', '2017-05-25 16:08:46', '1', '82', '842');
INSERT INTO `userrelease` VALUES ('751', '2017-05-25 16:08:46', '1', '50', '843');
INSERT INTO `userrelease` VALUES ('752', '2017-05-25 16:08:46', '1', '21', '844');
INSERT INTO `userrelease` VALUES ('753', '2017-05-25 16:08:46', '1', '38', '845');
INSERT INTO `userrelease` VALUES ('754', '2017-05-25 16:08:46', '1', '39', '846');
INSERT INTO `userrelease` VALUES ('755', '2017-05-25 16:08:46', '1', '18', '847');
INSERT INTO `userrelease` VALUES ('756', '2017-05-25 16:08:46', '1', '55', '848');
INSERT INTO `userrelease` VALUES ('757', '2017-05-25 16:08:46', '1', '19', '849');
INSERT INTO `userrelease` VALUES ('758', '2017-05-25 16:08:46', '1', '8', '850');
INSERT INTO `userrelease` VALUES ('759', '2017-05-25 16:08:46', '1', '34', '851');
INSERT INTO `userrelease` VALUES ('760', '2017-05-25 16:08:46', '1', '87', '852');
INSERT INTO `userrelease` VALUES ('761', '2017-05-25 16:08:46', '1', '92', '853');
INSERT INTO `userrelease` VALUES ('762', '2017-05-25 16:08:46', '1', '55', '854');
INSERT INTO `userrelease` VALUES ('763', '2017-05-25 16:08:46', '1', '6', '855');
INSERT INTO `userrelease` VALUES ('764', '2017-05-25 16:08:46', '1', '53', '856');
INSERT INTO `userrelease` VALUES ('765', '2017-05-25 16:08:46', '1', '49', '857');
INSERT INTO `userrelease` VALUES ('766', '2017-05-25 16:08:46', '1', '30', '858');
INSERT INTO `userrelease` VALUES ('767', '2017-05-25 16:08:46', '1', '69', '859');
INSERT INTO `userrelease` VALUES ('768', '2017-05-25 16:08:46', '1', '83', '860');
INSERT INTO `userrelease` VALUES ('769', '2017-05-25 16:08:46', '1', '50', '861');
INSERT INTO `userrelease` VALUES ('770', '2017-05-25 16:08:46', '1', '7', '862');
INSERT INTO `userrelease` VALUES ('771', '2017-05-25 16:08:46', '1', '81', '863');
INSERT INTO `userrelease` VALUES ('772', '2017-05-25 16:08:46', '1', '40', '864');
INSERT INTO `userrelease` VALUES ('773', '2017-05-25 16:08:46', '1', '49', '865');
INSERT INTO `userrelease` VALUES ('774', '2017-05-25 16:08:46', '1', '97', '866');
INSERT INTO `userrelease` VALUES ('775', '2017-05-25 16:08:46', '1', '24', '867');
INSERT INTO `userrelease` VALUES ('776', '2017-05-25 16:08:46', '1', '47', '868');
INSERT INTO `userrelease` VALUES ('777', '2017-05-25 16:08:46', '1', '26', '869');
INSERT INTO `userrelease` VALUES ('778', '2017-05-25 16:08:46', '1', '31', '870');
INSERT INTO `userrelease` VALUES ('779', '2017-05-25 16:08:46', '1', '67', '871');
INSERT INTO `userrelease` VALUES ('780', '2017-05-25 16:08:46', '1', '93', '872');
INSERT INTO `userrelease` VALUES ('781', '2017-05-25 16:08:46', '1', '84', '873');
INSERT INTO `userrelease` VALUES ('782', '2017-05-25 16:08:46', '1', '84', '874');
INSERT INTO `userrelease` VALUES ('783', '2017-05-25 16:08:46', '1', '51', '875');
INSERT INTO `userrelease` VALUES ('784', '2017-05-25 16:08:46', '1', '24', '876');
INSERT INTO `userrelease` VALUES ('785', '2017-05-25 16:08:46', '1', '98', '877');
INSERT INTO `userrelease` VALUES ('786', '2017-05-25 16:08:46', '1', '28', '878');
INSERT INTO `userrelease` VALUES ('787', '2017-05-25 16:08:46', '1', '66', '879');
INSERT INTO `userrelease` VALUES ('788', '2017-05-25 16:08:46', '1', '100', '880');
INSERT INTO `userrelease` VALUES ('789', '2017-05-25 16:08:46', '1', '63', '881');
INSERT INTO `userrelease` VALUES ('790', '2017-05-25 16:08:46', '1', '36', '882');
INSERT INTO `userrelease` VALUES ('791', '2017-05-25 16:08:46', '1', '84', '883');
INSERT INTO `userrelease` VALUES ('792', '2017-05-25 16:08:46', '1', '69', '884');
INSERT INTO `userrelease` VALUES ('793', '2017-05-25 16:08:46', '1', '6', '885');
INSERT INTO `userrelease` VALUES ('794', '2017-05-25 16:08:46', '1', '29', '886');
INSERT INTO `userrelease` VALUES ('795', '2017-05-25 16:08:46', '1', '84', '887');
INSERT INTO `userrelease` VALUES ('796', '2017-05-25 16:08:46', '1', '23', '888');
INSERT INTO `userrelease` VALUES ('797', '2017-05-25 16:08:46', '1', '53', '889');
INSERT INTO `userrelease` VALUES ('798', '2017-05-25 16:08:46', '1', '52', '890');
INSERT INTO `userrelease` VALUES ('799', '2017-05-25 16:08:46', '1', '91', '891');
INSERT INTO `userrelease` VALUES ('800', '2017-05-25 16:08:46', '1', '17', '892');
INSERT INTO `userrelease` VALUES ('801', '2017-05-25 16:08:46', '1', '37', '893');
INSERT INTO `userrelease` VALUES ('802', '2017-05-25 16:08:46', '1', '3', '894');
INSERT INTO `userrelease` VALUES ('803', '2017-05-25 16:08:46', '1', '64', '895');
INSERT INTO `userrelease` VALUES ('804', '2017-05-25 16:08:46', '1', '93', '896');
INSERT INTO `userrelease` VALUES ('805', '2017-05-25 16:08:46', '1', '31', '897');
INSERT INTO `userrelease` VALUES ('806', '2017-05-25 16:08:46', '1', '11', '898');
INSERT INTO `userrelease` VALUES ('807', '2017-05-25 16:08:46', '1', '90', '899');
INSERT INTO `userrelease` VALUES ('808', '2017-05-25 16:08:46', '1', '21', '900');
INSERT INTO `userrelease` VALUES ('809', '2017-05-25 16:08:46', '1', '94', '901');
INSERT INTO `userrelease` VALUES ('810', '2017-05-25 16:08:46', '1', '74', '902');
INSERT INTO `userrelease` VALUES ('811', '2017-05-25 16:08:46', '1', '71', '903');
INSERT INTO `userrelease` VALUES ('812', '2017-05-25 16:08:46', '1', '68', '904');
INSERT INTO `userrelease` VALUES ('813', '2017-05-25 16:08:47', '1', '73', '905');
INSERT INTO `userrelease` VALUES ('814', '2017-05-25 16:08:47', '1', '96', '906');
INSERT INTO `userrelease` VALUES ('815', '2017-05-25 16:08:47', '1', '66', '907');
INSERT INTO `userrelease` VALUES ('816', '2017-05-25 16:08:47', '1', '100', '908');
INSERT INTO `userrelease` VALUES ('817', '2017-05-25 16:08:47', '1', '97', '909');
INSERT INTO `userrelease` VALUES ('818', '2017-05-25 16:08:47', '1', '74', '910');
INSERT INTO `userrelease` VALUES ('819', '2017-05-25 16:08:47', '1', '24', '911');
INSERT INTO `userrelease` VALUES ('820', '2017-05-25 16:08:47', '1', '23', '912');
INSERT INTO `userrelease` VALUES ('821', '2017-05-25 16:08:47', '1', '73', '913');
INSERT INTO `userrelease` VALUES ('822', '2017-05-25 16:08:47', '1', '80', '914');
INSERT INTO `userrelease` VALUES ('823', '2017-05-25 16:08:47', '1', '90', '915');
INSERT INTO `userrelease` VALUES ('824', '2017-05-25 16:08:47', '1', '18', '916');
INSERT INTO `userrelease` VALUES ('825', '2017-05-25 16:08:47', '1', '30', '917');
INSERT INTO `userrelease` VALUES ('826', '2017-05-25 16:08:47', '1', '55', '918');
INSERT INTO `userrelease` VALUES ('827', '2017-05-25 16:08:47', '1', '47', '919');
INSERT INTO `userrelease` VALUES ('828', '2017-05-25 16:08:47', '1', '74', '920');
INSERT INTO `userrelease` VALUES ('829', '2017-05-25 16:08:47', '1', '34', '921');
INSERT INTO `userrelease` VALUES ('830', '2017-05-25 16:08:47', '1', '6', '922');
INSERT INTO `userrelease` VALUES ('831', '2017-05-25 16:08:47', '1', '54', '923');
INSERT INTO `userrelease` VALUES ('832', '2017-05-25 16:08:47', '1', '66', '924');
INSERT INTO `userrelease` VALUES ('833', '2017-05-25 16:08:47', '1', '7', '925');
INSERT INTO `userrelease` VALUES ('834', '2017-05-25 16:08:47', '1', '22', '926');
INSERT INTO `userrelease` VALUES ('835', '2017-05-25 16:08:47', '1', '31', '927');
INSERT INTO `userrelease` VALUES ('836', '2017-05-25 16:08:47', '1', '22', '928');
INSERT INTO `userrelease` VALUES ('837', '2017-05-25 16:08:47', '1', '80', '929');
INSERT INTO `userrelease` VALUES ('838', '2017-05-25 16:08:47', '1', '26', '930');
INSERT INTO `userrelease` VALUES ('839', '2017-05-25 16:08:47', '1', '20', '931');
INSERT INTO `userrelease` VALUES ('840', '2017-05-25 16:08:47', '1', '9', '932');
INSERT INTO `userrelease` VALUES ('841', '2017-05-25 16:08:47', '1', '49', '933');
INSERT INTO `userrelease` VALUES ('842', '2017-05-25 16:08:47', '1', '70', '934');
INSERT INTO `userrelease` VALUES ('843', '2017-05-25 16:08:47', '1', '30', '935');
INSERT INTO `userrelease` VALUES ('844', '2017-05-25 16:08:47', '1', '2', '936');
INSERT INTO `userrelease` VALUES ('845', '2017-05-25 16:08:47', '1', '86', '937');
INSERT INTO `userrelease` VALUES ('846', '2017-05-25 16:08:47', '1', '4', '938');
INSERT INTO `userrelease` VALUES ('847', '2017-05-25 16:08:47', '1', '38', '939');
INSERT INTO `userrelease` VALUES ('848', '2017-05-25 16:08:47', '1', '41', '940');
INSERT INTO `userrelease` VALUES ('849', '2017-05-25 16:08:47', '1', '87', '941');
INSERT INTO `userrelease` VALUES ('850', '2017-05-25 16:08:47', '1', '1', '942');
INSERT INTO `userrelease` VALUES ('851', '2017-05-25 16:08:47', '1', '3', '943');
INSERT INTO `userrelease` VALUES ('852', '2017-05-25 16:08:47', '1', '49', '944');
INSERT INTO `userrelease` VALUES ('853', '2017-05-25 16:08:47', '1', '9', '945');
INSERT INTO `userrelease` VALUES ('854', '2017-05-25 16:08:47', '1', '1', '946');
INSERT INTO `userrelease` VALUES ('855', '2017-05-25 16:08:47', '1', '46', '947');
INSERT INTO `userrelease` VALUES ('856', '2017-05-25 16:08:47', '1', '84', '948');
INSERT INTO `userrelease` VALUES ('857', '2017-05-25 16:08:47', '1', '59', '949');
INSERT INTO `userrelease` VALUES ('858', '2017-05-25 16:08:47', '1', '65', '950');
INSERT INTO `userrelease` VALUES ('859', '2017-05-25 16:08:47', '1', '50', '951');
INSERT INTO `userrelease` VALUES ('860', '2017-05-25 16:08:47', '1', '30', '952');
INSERT INTO `userrelease` VALUES ('861', '2017-05-25 16:08:47', '1', '8', '953');
INSERT INTO `userrelease` VALUES ('862', '2017-05-25 16:08:47', '1', '62', '954');
INSERT INTO `userrelease` VALUES ('863', '2017-05-25 16:08:47', '1', '28', '955');
INSERT INTO `userrelease` VALUES ('864', '2017-05-25 16:08:47', '1', '79', '956');
INSERT INTO `userrelease` VALUES ('865', '2017-05-25 16:08:47', '1', '39', '957');
INSERT INTO `userrelease` VALUES ('866', '2017-05-25 16:08:47', '1', '87', '958');
INSERT INTO `userrelease` VALUES ('867', '2017-05-25 16:08:47', '1', '58', '959');
INSERT INTO `userrelease` VALUES ('868', '2017-05-25 16:08:47', '1', '68', '960');
INSERT INTO `userrelease` VALUES ('869', '2017-05-25 16:08:47', '1', '42', '961');
INSERT INTO `userrelease` VALUES ('870', '2017-05-25 16:08:47', '1', '25', '962');
INSERT INTO `userrelease` VALUES ('871', '2017-05-25 16:08:47', '1', '48', '963');
INSERT INTO `userrelease` VALUES ('872', '2017-05-25 16:08:47', '1', '27', '964');
INSERT INTO `userrelease` VALUES ('873', '2017-05-25 16:08:47', '1', '88', '965');
INSERT INTO `userrelease` VALUES ('874', '2017-05-25 16:08:47', '1', '88', '966');
INSERT INTO `userrelease` VALUES ('875', '2017-05-25 16:08:47', '1', '40', '967');
INSERT INTO `userrelease` VALUES ('876', '2017-05-25 16:08:47', '1', '84', '968');
INSERT INTO `userrelease` VALUES ('877', '2017-05-25 16:08:47', '1', '61', '969');
INSERT INTO `userrelease` VALUES ('878', '2017-05-25 16:08:47', '1', '91', '970');
INSERT INTO `userrelease` VALUES ('879', '2017-05-25 16:08:47', '1', '29', '971');
INSERT INTO `userrelease` VALUES ('880', '2017-05-25 16:08:47', '1', '28', '972');
INSERT INTO `userrelease` VALUES ('881', '2017-05-25 16:08:47', '1', '75', '973');
INSERT INTO `userrelease` VALUES ('882', '2017-05-25 16:08:47', '1', '60', '974');
INSERT INTO `userrelease` VALUES ('883', '2017-05-25 16:08:47', '1', '43', '975');
INSERT INTO `userrelease` VALUES ('884', '2017-05-25 16:08:47', '1', '14', '976');
INSERT INTO `userrelease` VALUES ('885', '2017-05-25 16:08:47', '1', '75', '977');
INSERT INTO `userrelease` VALUES ('886', '2017-05-25 16:08:47', '1', '93', '978');
INSERT INTO `userrelease` VALUES ('887', '2017-05-25 16:08:47', '1', '54', '979');
INSERT INTO `userrelease` VALUES ('888', '2017-05-25 16:08:47', '1', '33', '980');
INSERT INTO `userrelease` VALUES ('889', '2017-05-25 16:08:47', '1', '55', '981');
INSERT INTO `userrelease` VALUES ('890', '2017-05-25 16:08:47', '1', '26', '982');
INSERT INTO `userrelease` VALUES ('891', '2017-05-25 16:08:47', '1', '37', '983');
INSERT INTO `userrelease` VALUES ('892', '2017-05-25 16:08:47', '1', '84', '984');
INSERT INTO `userrelease` VALUES ('893', '2017-05-25 16:08:47', '1', '3', '985');
INSERT INTO `userrelease` VALUES ('894', '2017-05-25 16:08:47', '1', '99', '986');
INSERT INTO `userrelease` VALUES ('895', '2017-05-25 16:08:47', '1', '69', '987');
INSERT INTO `userrelease` VALUES ('896', '2017-05-25 16:08:47', '1', '46', '988');
INSERT INTO `userrelease` VALUES ('897', '2017-05-25 16:08:47', '1', '54', '989');
INSERT INTO `userrelease` VALUES ('898', '2017-05-25 16:08:47', '1', '59', '990');
INSERT INTO `userrelease` VALUES ('899', '2017-05-25 16:08:47', '1', '43', '991');
INSERT INTO `userrelease` VALUES ('900', '2017-05-25 16:08:47', '1', '82', '992');
INSERT INTO `userrelease` VALUES ('901', '2017-05-25 16:08:47', '1', '96', '993');
INSERT INTO `userrelease` VALUES ('902', '2017-05-25 16:08:47', '1', '89', '994');
INSERT INTO `userrelease` VALUES ('903', '2017-05-25 16:08:47', '1', '63', '995');
INSERT INTO `userrelease` VALUES ('904', '2017-05-25 16:08:47', '1', '55', '996');
INSERT INTO `userrelease` VALUES ('905', '2017-05-25 16:08:47', '1', '91', '997');
INSERT INTO `userrelease` VALUES ('906', '2017-05-25 16:08:47', '1', '64', '998');
INSERT INTO `userrelease` VALUES ('907', '2017-05-25 16:08:47', '1', '96', '999');
INSERT INTO `userrelease` VALUES ('908', '2017-05-25 16:08:47', '1', '45', '1000');
INSERT INTO `userrelease` VALUES ('909', '2017-05-25 16:08:47', '1', '15', '1001');
INSERT INTO `userrelease` VALUES ('910', '2017-05-25 16:08:47', '1', '45', '1002');
INSERT INTO `userrelease` VALUES ('911', '2017-05-25 16:08:47', '1', '25', '1003');
INSERT INTO `userrelease` VALUES ('912', '2017-05-25 16:08:47', '1', '95', '1004');
INSERT INTO `userrelease` VALUES ('913', '2017-05-25 16:08:47', '1', '69', '1005');
INSERT INTO `userrelease` VALUES ('914', '2017-05-25 16:08:47', '1', '100', '1006');
INSERT INTO `userrelease` VALUES ('915', '2017-05-25 16:08:47', '1', '21', '1007');
INSERT INTO `userrelease` VALUES ('916', '2017-05-25 16:08:47', '1', '61', '1008');
INSERT INTO `userrelease` VALUES ('917', '2017-05-25 16:08:47', '1', '56', '1009');
INSERT INTO `userrelease` VALUES ('918', '2017-05-25 16:08:47', '1', '43', '1010');
INSERT INTO `userrelease` VALUES ('919', '2017-05-25 16:08:47', '1', '7', '1011');
INSERT INTO `userrelease` VALUES ('920', '2017-05-25 16:08:47', '1', '39', '1012');
INSERT INTO `userrelease` VALUES ('921', '2017-05-25 16:08:47', '1', '87', '1013');
INSERT INTO `userrelease` VALUES ('922', '2017-05-25 16:08:47', '1', '59', '1014');
INSERT INTO `userrelease` VALUES ('923', '2017-05-25 16:08:47', '1', '64', '1015');
INSERT INTO `userrelease` VALUES ('924', '2017-05-25 16:08:47', '1', '32', '1016');
INSERT INTO `userrelease` VALUES ('925', '2017-05-25 16:08:47', '1', '36', '1017');
INSERT INTO `userrelease` VALUES ('926', '2017-05-25 16:08:47', '1', '34', '1018');
INSERT INTO `userrelease` VALUES ('927', '2017-05-25 16:08:47', '1', '67', '1019');
INSERT INTO `userrelease` VALUES ('928', '2017-05-25 16:08:47', '1', '36', '1020');
INSERT INTO `userrelease` VALUES ('929', '2017-05-25 16:08:47', '1', '47', '1021');
INSERT INTO `userrelease` VALUES ('930', '2017-05-25 16:08:47', '1', '86', '1022');
INSERT INTO `userrelease` VALUES ('931', '2017-05-25 16:08:47', '1', '36', '1023');
INSERT INTO `userrelease` VALUES ('932', '2017-05-25 16:08:47', '1', '5', '1024');
INSERT INTO `userrelease` VALUES ('933', '2017-05-25 16:08:47', '1', '98', '1025');
INSERT INTO `userrelease` VALUES ('934', '2017-05-25 16:08:47', '1', '52', '1026');
INSERT INTO `userrelease` VALUES ('935', '2017-05-25 16:08:47', '1', '85', '1027');
INSERT INTO `userrelease` VALUES ('936', '2017-05-25 16:08:47', '1', '53', '1028');
INSERT INTO `userrelease` VALUES ('937', '2017-05-25 16:08:47', '1', '1', '1029');
INSERT INTO `userrelease` VALUES ('938', '2017-05-25 16:08:47', '1', '89', '1030');
INSERT INTO `userrelease` VALUES ('939', '2017-05-25 16:08:47', '1', '26', '1031');
INSERT INTO `userrelease` VALUES ('940', '2017-05-25 16:08:47', '1', '50', '1032');
INSERT INTO `userrelease` VALUES ('941', '2017-05-25 16:08:48', '1', '9', '1033');
INSERT INTO `userrelease` VALUES ('942', '2017-05-25 16:08:48', '1', '71', '1034');
INSERT INTO `userrelease` VALUES ('943', '2017-05-25 16:08:48', '1', '47', '1035');
INSERT INTO `userrelease` VALUES ('944', '2017-05-25 16:08:48', '1', '3', '1036');
INSERT INTO `userrelease` VALUES ('945', '2017-05-25 16:08:48', '1', '79', '1037');
INSERT INTO `userrelease` VALUES ('946', '2017-05-25 16:08:48', '1', '37', '1038');
INSERT INTO `userrelease` VALUES ('947', '2017-05-25 16:08:48', '1', '76', '1039');
INSERT INTO `userrelease` VALUES ('948', '2017-05-25 16:08:48', '1', '11', '1040');
INSERT INTO `userrelease` VALUES ('949', '2017-05-25 16:08:48', '1', '47', '1041');
INSERT INTO `userrelease` VALUES ('950', '2017-05-25 16:08:48', '1', '95', '1042');
INSERT INTO `userrelease` VALUES ('951', '2017-05-25 16:08:48', '1', '29', '1043');
INSERT INTO `userrelease` VALUES ('952', '2017-05-25 16:08:48', '1', '24', '1044');
INSERT INTO `userrelease` VALUES ('953', '2017-05-25 16:08:48', '1', '26', '1045');
INSERT INTO `userrelease` VALUES ('954', '2017-05-25 16:08:48', '1', '16', '1046');
INSERT INTO `userrelease` VALUES ('955', '2017-05-25 16:08:48', '1', '36', '1047');
INSERT INTO `userrelease` VALUES ('956', '2017-05-25 16:08:48', '1', '89', '1048');
INSERT INTO `userrelease` VALUES ('957', '2017-05-25 16:08:48', '1', '10', '1049');
INSERT INTO `userrelease` VALUES ('958', '2017-05-25 16:08:48', '1', '26', '1050');
INSERT INTO `userrelease` VALUES ('959', '2017-05-25 16:08:48', '1', '41', '1051');
INSERT INTO `userrelease` VALUES ('960', '2017-05-25 16:08:48', '1', '82', '1052');
INSERT INTO `userrelease` VALUES ('961', '2017-05-25 16:08:48', '1', '56', '1053');
INSERT INTO `userrelease` VALUES ('962', '2017-05-25 16:08:48', '1', '84', '1054');
INSERT INTO `userrelease` VALUES ('963', '2017-05-25 16:08:48', '1', '81', '1055');
INSERT INTO `userrelease` VALUES ('964', '2017-05-25 16:08:48', '1', '24', '1056');
INSERT INTO `userrelease` VALUES ('965', '2017-05-25 16:08:48', '1', '81', '1057');
INSERT INTO `userrelease` VALUES ('966', '2017-05-25 16:08:48', '1', '88', '1058');
INSERT INTO `userrelease` VALUES ('967', '2017-05-25 16:08:48', '1', '39', '1059');
INSERT INTO `userrelease` VALUES ('968', '2017-05-25 16:08:48', '1', '21', '1060');
INSERT INTO `userrelease` VALUES ('969', '2017-05-25 16:08:48', '1', '87', '1061');
INSERT INTO `userrelease` VALUES ('970', '2017-05-25 16:08:48', '1', '29', '1062');
INSERT INTO `userrelease` VALUES ('971', '2017-05-25 16:08:48', '1', '15', '1063');
INSERT INTO `userrelease` VALUES ('972', '2017-05-25 16:08:48', '1', '22', '1064');
INSERT INTO `userrelease` VALUES ('973', '2017-05-25 16:08:48', '1', '22', '1065');
INSERT INTO `userrelease` VALUES ('974', '2017-05-25 16:08:48', '1', '80', '1066');
INSERT INTO `userrelease` VALUES ('975', '2017-05-25 16:08:48', '1', '24', '1067');
INSERT INTO `userrelease` VALUES ('976', '2017-05-25 16:08:48', '1', '61', '1068');
INSERT INTO `userrelease` VALUES ('977', '2017-05-25 16:08:48', '1', '15', '1069');
INSERT INTO `userrelease` VALUES ('978', '2017-05-25 16:08:48', '1', '42', '1070');
INSERT INTO `userrelease` VALUES ('979', '2017-05-25 16:08:48', '1', '89', '1071');
INSERT INTO `userrelease` VALUES ('980', '2017-05-25 16:08:48', '1', '71', '1072');
INSERT INTO `userrelease` VALUES ('981', '2017-05-25 16:08:48', '1', '76', '1073');
INSERT INTO `userrelease` VALUES ('982', '2017-05-25 16:08:48', '1', '14', '1074');
INSERT INTO `userrelease` VALUES ('983', '2017-05-25 16:08:48', '1', '4', '1075');
INSERT INTO `userrelease` VALUES ('984', '2017-05-25 16:08:48', '1', '22', '1076');
INSERT INTO `userrelease` VALUES ('985', '2017-05-25 16:08:48', '1', '70', '1077');
INSERT INTO `userrelease` VALUES ('986', '2017-05-25 16:08:48', '1', '53', '1078');
INSERT INTO `userrelease` VALUES ('987', '2017-05-25 16:08:48', '1', '45', '1079');
INSERT INTO `userrelease` VALUES ('988', '2017-05-25 16:08:48', '1', '20', '1080');
INSERT INTO `userrelease` VALUES ('989', '2017-05-25 16:08:48', '1', '20', '1081');
INSERT INTO `userrelease` VALUES ('990', '2017-05-25 16:08:48', '1', '95', '1082');
INSERT INTO `userrelease` VALUES ('991', '2017-05-25 16:08:48', '1', '51', '1083');
INSERT INTO `userrelease` VALUES ('992', '2017-05-25 16:08:48', '1', '42', '1084');
INSERT INTO `userrelease` VALUES ('993', '2017-05-25 16:08:48', '1', '30', '1085');
INSERT INTO `userrelease` VALUES ('994', '2017-05-25 16:08:48', '1', '85', '1086');
INSERT INTO `userrelease` VALUES ('995', '2017-05-25 16:08:48', '1', '37', '1087');
INSERT INTO `userrelease` VALUES ('996', '2017-05-25 16:08:48', '1', '80', '1088');
INSERT INTO `userrelease` VALUES ('997', '2017-05-25 16:08:48', '1', '59', '1089');
INSERT INTO `userrelease` VALUES ('998', '2017-05-25 16:08:48', '1', '17', '1090');
INSERT INTO `userrelease` VALUES ('999', '2017-05-25 16:08:48', '1', '75', '1091');
INSERT INTO `userrelease` VALUES ('1000', '2017-05-25 16:08:48', '1', '75', '1092');
INSERT INTO `userrelease` VALUES ('1001', '2017-05-25 16:08:48', '1', '68', '1093');
INSERT INTO `userrelease` VALUES ('1002', '2017-05-25 16:17:15', '1', '7', '1094');
INSERT INTO `userrelease` VALUES ('1003', '2017-05-25 16:18:14', '1', '7', '1095');
INSERT INTO `userrelease` VALUES ('1004', '2017-05-25 16:24:46', '1', '7', '1096');
INSERT INTO `userrelease` VALUES ('1005', '2017-06-02 10:00:59', '1', '7', '1097');

-- ----------------------------
-- Table structure for userstate
-- ----------------------------
DROP TABLE IF EXISTS `userstate`;
CREATE TABLE `userstate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `credit` int(11) NOT NULL DEFAULT '80',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00',
  `modified` datetime DEFAULT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userstate
-- ----------------------------

-- ----------------------------
-- Table structure for userwant
-- ----------------------------
DROP TABLE IF EXISTS `userwant`;
CREATE TABLE `userwant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime DEFAULT NULL,
  `display` int(11) NOT NULL DEFAULT '1',
  `name` varchar(50) NOT NULL,
  `sort` int(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userwant
-- ----------------------------
INSERT INTO `userwant` VALUES ('1', '2017-05-21 21:03:38', '1', '龙年限定', '1', '1', '1.00', '好东西哟，一般来说，好的东西都是需要很多很多人来抢着买的，一万年太久，只争朝夕', '7');
INSERT INTO `userwant` VALUES ('2', '2017-05-21 21:03:38', '1', '龙年限定d', '2', '1', '1.00', '好东西哟，一般来说，好的东西都是需要很多很多人来抢着买的，一万年太久，只争朝夕', '7');
INSERT INTO `userwant` VALUES ('3', '2017-05-21 21:03:38', '1', '龙年限定c', '5', '1', '1.00', '好东西哟，一般来说，好的东西都是需要很多很多人来抢着买的，一万年太久，只争朝夕', '2');
INSERT INTO `userwant` VALUES ('4', '2017-05-21 21:03:38', '1', '龙年限定c', '79', '1', '1.00', '好东西哟，一般来说，好的东西都是需要很多很多人来抢着买的，一万年太久，只争朝夕', '3');
INSERT INTO `userwant` VALUES ('5', '2017-05-21 21:03:38', '1', '龙年限定c', '1', '1', '1.00', '好东西哟，一般来说，好的东西都是需要很多很多人来抢着买的，一万年太久，只争朝夕', '1');
INSERT INTO `userwant` VALUES ('6', '2017-05-21 21:03:38', '1', '龙年限定x', '50', '1', '1.00', '好东西哟，一般来说，好的东西都是需要很多很多人来抢着买的，一万年太久，只争朝夕', '7');
INSERT INTO `userwant` VALUES ('7', '2017-05-21 21:03:38', '1', '龙年限定c', '1', '1', '1.00', '好东西哟，一般来说，好的东西都是需要很多很多人来抢着买的，一万年太久，只争朝夕', '7');
INSERT INTO `userwant` VALUES ('8', '2017-05-21 21:03:38', '1', '龙年限定g', '44', '1', '1.00', '好东西哟，一般来说，好的东西都是需要很多很多人来抢着买的，一万年太久，只争朝夕', '4');
INSERT INTO `userwant` VALUES ('9', '2017-05-21 21:03:38', '1', '龙年限定 d', '33', '1', '1.00', '好东西哟，一般来说，好的东西都是需要很多很多人来抢着买的，一万年太久，只争朝夕', '7');
INSERT INTO `userwant` VALUES ('10', '2017-05-21 21:03:38', '1', '龙年限定b', '78', '1', '1.00', '好东西哟，一般来说，好的东西都是需要很多很多人来抢着买的，一万年太久，只争朝夕', '5');
INSERT INTO `userwant` VALUES ('11', '2017-05-21 21:03:38', '1', '龙年限定g', '36', '1', '1.00', '好东西哟，一般来说，好的东西都是需要很多很多人来抢着买的，一万年太久，只争朝夕', '6');
INSERT INTO `userwant` VALUES ('12', '2017-05-21 21:03:38', '1', '龙年限定j', '66', '1', '1.00', '好东西哟，一般来说，好的东西都是需要很多很多人来抢着买的，一万年太久，只争朝夕', '7');

-- ----------------------------
-- Table structure for wantcontext
-- ----------------------------
DROP TABLE IF EXISTS `wantcontext`;
CREATE TABLE `wantcontext` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime DEFAULT NULL,
  `uwid` int(11) NOT NULL,
  `context` varchar(255) NOT NULL,
  `display` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wantcontext
-- ----------------------------
