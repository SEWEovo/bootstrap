/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-12-25 14:19:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `concern`
-- ----------------------------
DROP TABLE IF EXISTS `concern`;
CREATE TABLE `concern` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `concerner_id` int(11) DEFAULT NULL,
  `concerned_id` int(11) DEFAULT NULL,
  `concern_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `concerner_id` (`concerner_id`),
  KEY `concerned_id` (`concerned_id`),
  CONSTRAINT `concern_ibfk_1` FOREIGN KEY (`concerner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `concern_ibfk_2` FOREIGN KEY (`concerned_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of concern
-- ----------------------------
INSERT INTO `concern` VALUES ('1', '1', '2', '2017-12-20 09:44:15');
INSERT INTO `concern` VALUES ('2', '1', '3', '2017-12-15 09:44:24');
INSERT INTO `concern` VALUES ('5', '1', '3', '2017-12-26 13:29:50');

-- ----------------------------
-- Table structure for `picture`
-- ----------------------------
DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `intro` varchar(300) DEFAULT NULL,
  `tags` varchar(50) DEFAULT NULL,
  `upload_time` datetime DEFAULT NULL,
  `click_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `picture_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of picture
-- ----------------------------
INSERT INTO `picture` VALUES ('2', '小可爱', '2', '1', '1', '风景', '2017-12-26 18:49:18', '2');
INSERT INTO `picture` VALUES ('3', '啊哈', '3', '2', '3', '和山', '2017-12-19 22:55:36', '5');
INSERT INTO `picture` VALUES ('4', '和善', '5', '3', '1', '和山', '2017-12-12 20:14:30', '5');
INSERT INTO `picture` VALUES ('5', '美丽', '6', '1', '美丽啊', '和山', '2017-12-11 20:20:30', '10');
INSERT INTO `picture` VALUES ('6', '可爱的东西', '1', '4', '超级可爱的', '可爱', '2017-12-27 13:24:02', '3');
INSERT INTO `picture` VALUES ('7', '哈哈哈哈或', '7', '2', '很好看的', '动漫', '2017-12-14 13:27:02', '4');
INSERT INTO `picture` VALUES ('8', '大萨达撒多撒多', '8', '3', '法第三方士大夫', '沟通', '2018-01-18 13:28:16', '12');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `intro` varchar(300) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `province` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `regist_time` datetime DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `QQ` bigint(20) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `head_pic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1', '1', '我是小爱', '>小时代', '女', '浙江省', '杭州市', '2017-12-14 19:52:59', '1', '1', '1', '1', '1', '1');
INSERT INTO `user` VALUES ('2', '2', '2', '我是侠女', '我超厉害的', '男', '浙江省', '绍兴市', '2017-12-25 18:47:26', '2', '2', '2', '2', '2', '2');
INSERT INTO `user` VALUES ('3', '3', '3', '我是帝王', '我是老大哈哈哈哈或', '男', '浙江省', '宁波市', '2017-12-19 18:47:42', '3', '3', '3', '3', '3', '3');
INSERT INTO `user` VALUES ('4', '4', '4', '想不到吧', '保持高冷', '女', '浙江省', '嘉兴市', '2017-10-24 18:48:28', '4', '4', '4', '4', '4', '4');
INSERT INTO `user` VALUES ('5', '5', '5', '我是天才', '我是天才啊', '男', '浙江省', '金华市', '2017-12-12 16:28:54', '5', '5', '5', '5', '5', '5');
