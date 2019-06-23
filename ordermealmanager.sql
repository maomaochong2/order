/*
Navicat MySQL Data Transfer

Source Server         : ccs
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : ordermealmanager

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2019-06-23 21:42:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_foodtypeinfo
-- ----------------------------
DROP TABLE IF EXISTS `tb_foodtypeinfo`;
CREATE TABLE `tb_foodtypeinfo` (
  `foodid` int(11) NOT NULL AUTO_INCREMENT COMMENT '食品ID',
  `foodname` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `spicydegree` int(11) NOT NULL COMMENT '麻辣程度',
  `ispackage` int(11) NOT NULL COMMENT '是否打包',
  `hotlevel` int(11) NOT NULL DEFAULT '0' COMMENT '好评程度',
  `selectedcount` int(11) NOT NULL DEFAULT '0' COMMENT '已售数量',
  `note` varchar(100) DEFAULT '',
  PRIMARY KEY (`foodid`)
) ENGINE=InnoDB AUTO_INCREMENT=1005 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_foodtypeinfo
-- ----------------------------
INSERT INTO `tb_foodtypeinfo` VALUES ('1001', '番茄炒蛋', '甜食点心 ', '11', '1', '1', '0', '0', '1');
INSERT INTO `tb_foodtypeinfo` VALUES ('1002', '番茄炒蛋', '面食米线 ', '12', '1', '1', '0', '0', null);
INSERT INTO `tb_foodtypeinfo` VALUES ('1003', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tb_foodtypeinfo` VALUES ('1004', 'w', '234', '234', '24', '24', '2342', '42', '42341');

-- ----------------------------
-- Table structure for tb_ordermealinfo
-- ----------------------------
DROP TABLE IF EXISTS `tb_ordermealinfo`;
CREATE TABLE `tb_ordermealinfo` (
  `orderid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'd订单编号',
  `foodid` int(11) NOT NULL,
  `ordertime` datetime NOT NULL COMMENT '订餐时间',
  `orderuser` varchar(100) NOT NULL COMMENT '订餐人 ',
  `count` int(11) NOT NULL DEFAULT '1' COMMENT '份数 ',
  `totalPrice` double NOT NULL COMMENT '总价',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=2002 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_ordermealinfo
-- ----------------------------
INSERT INTO `tb_ordermealinfo` VALUES ('2001', '1001', '2019-06-06 00:11:24', '马云', '1', '11', null);
