/*
Navicat MySQL Data Transfer

Source Server         : yang
Source Server Version : 50739
Source Host           : localhost:3306
Source Database       : you163

Target Server Type    : MYSQL
Target Server Version : 50739
File Encoding         : 65001

Date: 2023-06-13 02:22:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `carts`
-- ----------------------------
DROP TABLE IF EXISTS `carts`;
CREATE TABLE `carts` (
  `cId` int(11) NOT NULL AUTO_INCREMENT COMMENT '购物车id',
  `pId` int(11) NOT NULL COMMENT '产品id',
  `uId` int(11) NOT NULL COMMENT '购买用户id',
  `pImg` varchar(64) NOT NULL COMMENT '产品图片',
  `pName` varchar(64) NOT NULL COMMENT '产品名称',
  `pYh` varchar(64) NOT NULL COMMENT '产品优惠日期',
  `pGg` varchar(64) NOT NULL COMMENT '产品规格',
  `pPrice` float NOT NULL COMMENT '产品单价',
  `pPriceCount` float NOT NULL COMMENT '产品总价',
  `pCount` int(11) NOT NULL COMMENT '产品数量',
  `cStatus` int(1) NOT NULL DEFAULT '1' COMMENT '产品状态',
  PRIMARY KEY (`cId`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of carts
-- ----------------------------
INSERT INTO `carts` VALUES ('24', '3', '86', './images/sss1.png', '素颜神器，一次性3D立体防护口罩', '2天08时09分', '规格暂时固定死,无法选择', '35.9', '179.5', '5', '0');
INSERT INTO `carts` VALUES ('25', '2', '86', './images/ss1.png', '西餐厅主厨级经典番茄肉酱意面270克/盒', '1天02时03分', '规格暂时固定死,无法选择', '29.9', '59.8', '2', '0');
INSERT INTO `carts` VALUES ('26', '2', '86', './images/ss1.png', '西餐厅主厨级经典番茄肉酱意面270克/盒', '1天02时03分', '规格暂时固定死,无法选择', '29.9', '59.8', '2', '0');
INSERT INTO `carts` VALUES ('27', '3', '86', './images/sss1.png', '素颜神器，一次性3D立体防护口罩', '2天08时09分', '规格暂时固定死,无法选择', '35.9', '35.9', '1', '0');
INSERT INTO `carts` VALUES ('28', '1', '86', './images/s1.png', '日本制造 隅田川意式手冲特浓挂耳咖啡', '3天09时09分', '规格暂时固定死,无法选择', '29.9', '209.3', '7', '1');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `phone` varchar(11) NOT NULL COMMENT '用户手机号',
  `pwd` varchar(50) NOT NULL COMMENT '用户密码',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '1启用0禁用',
  `date` varchar(32) NOT NULL COMMENT '用户注册日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `QNIQUE_PHONE` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('86', '15269999999', 'a782d40c479e18b2ef6d4d04f4bb8fff', '1', '2023-06-09 22:37:03');
INSERT INTO `user` VALUES ('87', '15322222222', 'bec7ce627a1f8c5ef53c24cdf2e5d62a', '1', '2023-06-10 17:05:53');
