/*
Navicat MySQL Data Transfer

Source Server         : DESKTOP-PIBMRD4
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : spring

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-07-24 14:31:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `good_name` varchar(255) DEFAULT NULL,
  `good_id` int(11) DEFAULT NULL,
  `color_id` int(11) DEFAULT NULL,
  `color_name` varchar(255) DEFAULT NULL,
  `traffic` varchar(255) DEFAULT NULL,
  `buy_count` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk1[user_good]` (`user_name`),
  KEY `fk2[user_good]` (`good_name`),
  KEY `fk3[user_good]` (`user_id`),
  KEY `fk4[user_good]` (`good_id`),
  CONSTRAINT `fk3[user_good]` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk4[user_good]` FOREIGN KEY (`good_id`) REFERENCES `good` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES ('14', '2', 'jingyu', '拜仁球帽', '9', null, null, '申通', '1');
INSERT INTO `car` VALUES ('15', '2', 'jingyu', '拜仁球帽', '9', null, null, '申通', '1');
INSERT INTO `car` VALUES ('16', '2', 'jingyu', '拜仁足球', '1', '1', '白色', '申通', '1');
INSERT INTO `car` VALUES ('17', '2', 'jingyu', '拜仁足球', '1', '1', null, '顺丰', '1');
INSERT INTO `car` VALUES ('18', '2', 'jingyu', '拜仁足球', '1', '1', '白色', '顺丰', '4');
INSERT INTO `car` VALUES ('19', '2', 'jingyu', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for color
-- ----------------------------
DROP TABLE IF EXISTS `color`;
CREATE TABLE `color` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `color_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `color_name` (`color_name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of color
-- ----------------------------
INSERT INTO `color` VALUES ('2', '橙色');
INSERT INTO `color` VALUES ('9', '白色');
INSERT INTO `color` VALUES ('1', '红色');
INSERT INTO `color` VALUES ('5', '蓝色');
INSERT INTO `color` VALUES ('7', '金色');
INSERT INTO `color` VALUES ('8', '银色');
INSERT INTO `color` VALUES ('6', '青色');
INSERT INTO `color` VALUES ('3', '黄色');
INSERT INTO `color` VALUES ('4', '黑色');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `good_id` int(11) DEFAULT NULL,
  `good_name` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk1[comment]` (`good_id`),
  KEY `fk2[comment]` (`good_name`),
  KEY `fk3[comment]` (`user_id`),
  KEY `fk4[comment]` (`user_name`),
  CONSTRAINT `fk1[comment]` FOREIGN KEY (`good_id`) REFERENCES `good` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk3[comment]` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '1', '2017/18 全新赛季 拜仁 Teamline 红色长袖运动衫', '可以', '1', 'zhoujingyu');
INSERT INTO `comment` VALUES ('2', '1', '2017/18 全新赛季 拜仁 Teamline 红色长袖运动衫', '我很喜欢', '6', 'jingjing');
INSERT INTO `comment` VALUES ('3', '1', '2017/18 全新赛季 拜仁 Teamline 红色长袖运动衫', '11', null, null);
INSERT INTO `comment` VALUES ('4', '1', '2017/18 全新赛季 拜仁 Teamline 红色长袖运动衫', '东西不错，', '3', 'zhoujingyu');
INSERT INTO `comment` VALUES ('5', '1', '拜仁足球', 'wa', '2', 'jingyu');

-- ----------------------------
-- Table structure for good
-- ----------------------------
DROP TABLE IF EXISTS `good`;
CREATE TABLE `good` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `good_name` varchar(255) DEFAULT NULL,
  `good_price` varchar(255) DEFAULT NULL,
  `good_product` varchar(255) DEFAULT NULL,
  `good_picture` varchar(255) DEFAULT NULL,
  `good_rating` varchar(255) DEFAULT NULL,
  `good_count` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `good_name` (`good_name`)
) ENGINE=InnoDB AUTO_INCREMENT=657 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of good
-- ----------------------------
INSERT INTO `good` VALUES ('1', '拜仁足球', '150', '拜仁慕尼黑海外旗舰店', '拜仁6.jpg', '6', '775');
INSERT INTO `good` VALUES ('3', '拜仁冠军水杯', '40', '拜仁慕尼黑海外旗舰店', '拜仁4.jpg', '4', '332');
INSERT INTO `good` VALUES ('4', '拜仁新款围巾', '30', '拜仁慕尼黑海外旗舰店', '拜仁5.jpg', '2', '454');
INSERT INTO `good` VALUES ('9', '拜仁球帽', '144', '拜仁慕尼黑海外旗舰店', '拜仁8.jpg', '4.5', '602');
INSERT INTO `good` VALUES ('11', '拜仁T恤', '150', '拜仁慕尼黑海外旗舰店', '拜仁3.jpg', '5', '176');
INSERT INTO `good` VALUES ('56', '拜仁足球', '1576', '拜仁慕尼黑海外旗舰店', '拜仁6.jpg', '5', '153');
INSERT INTO `good` VALUES ('67', '拜仁钥匙扣', '30', '拜仁慕尼黑海外旗舰店', '拜仁7.jpg', '5', '186');
INSERT INTO `good` VALUES ('656', '拜仁足球', '150', '拜仁慕尼黑海外旗舰店', '拜仁2.jpg', '6', '153');

-- ----------------------------
-- Table structure for good_color
-- ----------------------------
DROP TABLE IF EXISTS `good_color`;
CREATE TABLE `good_color` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `good_id` int(11) DEFAULT NULL,
  `good_name` varchar(255) DEFAULT NULL,
  `color_name` varchar(255) DEFAULT NULL,
  `color_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk1[good_color]` (`good_name`),
  KEY `fk2[good_color]` (`color_name`),
  KEY `fk3[good_color]` (`good_id`),
  KEY `fk4[good_color]` (`color_id`),
  CONSTRAINT `fk3[good_color]` FOREIGN KEY (`good_id`) REFERENCES `good` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk4[good_color]` FOREIGN KEY (`color_id`) REFERENCES `color` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of good_color
-- ----------------------------
INSERT INTO `good_color` VALUES ('1', '1', '2017/18 全新赛季 拜仁 Teamline 红色长袖运动衫', '红色', '1');
INSERT INTO `good_color` VALUES ('2', '1', '2017/18 全新赛季 拜仁 Teamline 红色长袖运动衫', '白色', '1');
INSERT INTO `good_color` VALUES ('3', '3', '拜仁冠军水杯', '白色', '8');
INSERT INTO `good_color` VALUES ('4', '3', '拜仁冠军水杯', '红色', '7');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `E-mall` varchar(255) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'zhoujingyu', '222', '1624723643@qq.com', '11367780611');
INSERT INTO `user` VALUES ('2', 'jingyu', '111', '1624723643@qq.com', '11367780611');
INSERT INTO `user` VALUES ('3', 'jy', '444', '1624723643@qq.com', '11367780611');
INSERT INTO `user` VALUES ('4', 'jingjing', '333', '1624723643@qq.com', '11367780611');
INSERT INTO `user` VALUES ('5', 'jing', '999', '1624723643@qq.com', '11367780611');
INSERT INTO `user` VALUES ('6', 'waha', '123', '1624723643@qq.com', '11367780611');
