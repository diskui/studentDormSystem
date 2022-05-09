/*
 Navicat MySQL Data Transfer

 Source Server         : FirstConnect
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : sds

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 07/05/2022 23:57:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admincomplain
-- ----------------------------
DROP TABLE IF EXISTS `admincomplain`;
CREATE TABLE `admincomplain`  (
  `admin` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admincomplain
-- ----------------------------
INSERT INTO `admincomplain` VALUES ('杨浩', '就知道睡觉', '18837006811', '584470487@qq.com');

-- ----------------------------
-- Table structure for adminlist
-- ----------------------------
DROP TABLE IF EXISTS `adminlist`;
CREATE TABLE `adminlist`  (
  `adminnumber` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `adminname` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `area` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `build` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`adminnumber`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of adminlist
-- ----------------------------
INSERT INTO `adminlist` VALUES ('1024240036', '谢昊宸', '东苑', '23', '18837006811');

-- ----------------------------
-- Table structure for adminlogin
-- ----------------------------
DROP TABLE IF EXISTS `adminlogin`;
CREATE TABLE `adminlogin`  (
  `adminnumber` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`adminnumber`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of adminlogin
-- ----------------------------
INSERT INTO `adminlogin` VALUES ('1024240036', 'xhc123');

-- ----------------------------
-- Table structure for dormchange
-- ----------------------------
DROP TABLE IF EXISTS `dormchange`;
CREATE TABLE `dormchange`  (
  `area` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `build` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `room` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `toarea` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tobuild` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `toroom` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dormchange
-- ----------------------------
INSERT INTO `dormchange` VALUES ('北苑', '12', '136', '东苑', '23', '149', '想和杨浩一个宿舍', '18837006811');
INSERT INTO `dormchange` VALUES ('华苑', '15', '201', '东苑', '23', '149', '听说149宿舍不错，慕名而来', '15938588385');

-- ----------------------------
-- Table structure for dormcomplain
-- ----------------------------
DROP TABLE IF EXISTS `dormcomplain`;
CREATE TABLE `dormcomplain`  (
  `area` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `build` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `room` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dormheader` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dormcomplain
-- ----------------------------
INSERT INTO `dormcomplain` VALUES ('东苑', '23', '001', '张三', '半夜大吼大叫！捣乱别人睡觉', '18837006811', '584470487@qq.com');
INSERT INTO `dormcomplain` VALUES ('东苑', '23', '002', '李四', '殴打舍友！情节恶劣', '15938588385', '456156546@qq.com');

-- ----------------------------
-- Table structure for dormelectricity
-- ----------------------------
DROP TABLE IF EXISTS `dormelectricity`;
CREATE TABLE `dormelectricity`  (
  `area` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `build` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `room` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dormheader` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `money` int NULL DEFAULT NULL,
  `week1` int NULL DEFAULT NULL,
  `week2` int NULL DEFAULT NULL,
  `week3` int NULL DEFAULT NULL,
  `week4` int NULL DEFAULT NULL,
  `week5` int NULL DEFAULT NULL,
  `week6` int NULL DEFAULT NULL,
  `week7` int NULL DEFAULT NULL,
  `week8` int NULL DEFAULT NULL,
  `week9` int NULL DEFAULT NULL,
  `week10` int NULL DEFAULT NULL,
  `week11` int NULL DEFAULT NULL,
  `week12` int NULL DEFAULT NULL,
  `week13` int NULL DEFAULT NULL,
  `week14` int NULL DEFAULT NULL,
  `week15` int NULL DEFAULT NULL,
  `week16` int NULL DEFAULT NULL,
  `week17` int NULL DEFAULT NULL,
  `week18` int NULL DEFAULT NULL,
  PRIMARY KEY (`area`, `build`, `room`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dormelectricity
-- ----------------------------
INSERT INTO `dormelectricity` VALUES ('东苑', '23', '149', '孟子归', 55, 12, 13, 12, 14, 15, 12, 12, 13, 14, 12, 14, 12, 13, 15, 15, 14, 14, 13);
INSERT INTO `dormelectricity` VALUES ('东苑', '23', '150', '王炜龙', 25, 13, 12, 12, 13, 15, 12, 12, 14, 13, 13, 14, 12, 15, 13, 13, 14, 15, 12);

-- ----------------------------
-- Table structure for dormlist
-- ----------------------------
DROP TABLE IF EXISTS `dormlist`;
CREATE TABLE `dormlist`  (
  `studentnumber` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `studentname` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `area` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `build` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `room` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dormheader` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dormnumber` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dormtype` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dormheaderphone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`studentnumber`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dormlist
-- ----------------------------
INSERT INTO `dormlist` VALUES ('1924240017', '杨浩', '东苑', '23', '149', '孟子归', '4', '男寝', '18837006811', '15615165165');
INSERT INTO `dormlist` VALUES ('1924240036', '谢昊宸', '东苑', '23', '149', '孟子归', '4', '男寝', '18837006811', '15938588385');
INSERT INTO `dormlist` VALUES ('1924240041', '孟子归', '东苑', '23', '149', '孟子归', '4', '男寝', '18837006811', '15165156132');
INSERT INTO `dormlist` VALUES ('1924240073', '戚文豪', '东苑', '23', '149', '孟子归', '4', '男寝', '18837006811', '13803707584');
INSERT INTO `dormlist` VALUES ('1924240084', '刘佳奇', '东苑', '23', '150', '王炜龙', '4', '男寝', '15463548255', '15654561885');

-- ----------------------------
-- Table structure for dormwater
-- ----------------------------
DROP TABLE IF EXISTS `dormwater`;
CREATE TABLE `dormwater`  (
  `area` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `build` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `room` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dormheader` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `money` int NULL DEFAULT NULL,
  `week1` int NULL DEFAULT NULL,
  `week2` int NULL DEFAULT NULL,
  `week3` int NULL DEFAULT NULL,
  `week4` int NULL DEFAULT NULL,
  `week5` int NULL DEFAULT NULL,
  `week6` int NULL DEFAULT NULL,
  `week7` int NULL DEFAULT NULL,
  `week8` int NULL DEFAULT NULL,
  `week9` int NULL DEFAULT NULL,
  `week10` int NULL DEFAULT NULL,
  `week11` int NULL DEFAULT NULL,
  `week12` int NULL DEFAULT NULL,
  `week13` int NULL DEFAULT NULL,
  `week14` int NULL DEFAULT NULL,
  `week15` int NULL DEFAULT NULL,
  `week16` int NULL DEFAULT NULL,
  `week17` int NULL DEFAULT NULL,
  `week18` int NULL DEFAULT NULL,
  PRIMARY KEY (`area`, `build`, `room`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dormwater
-- ----------------------------
INSERT INTO `dormwater` VALUES ('东苑', '23', '149', '孟子归', 31, 2, 3, 2, 3, 4, 2, 2, 3, 4, 2, 3, 2, 3, 3, 2, 4, 2, 3);
INSERT INTO `dormwater` VALUES ('东苑', '23', '150', '王炜龙', 30, 3, 2, 2, 3, 4, 2, 2, 4, 3, 3, 4, 2, 3, 5, 4, 3, 4, 2);

-- ----------------------------
-- Table structure for electricapp
-- ----------------------------
DROP TABLE IF EXISTS `electricapp`;
CREATE TABLE `electricapp`  (
  `area` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `build` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `room` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dormheader` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of electricapp
-- ----------------------------
INSERT INTO `electricapp` VALUES ('东苑', '23', '149', '孟子归', '空调不制冷！');
INSERT INTO `electricapp` VALUES ('东苑', '23', '150', '王炜龙', '插座漏电！');

-- ----------------------------
-- Table structure for floorwall
-- ----------------------------
DROP TABLE IF EXISTS `floorwall`;
CREATE TABLE `floorwall`  (
  `area` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `build` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `room` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dormheader` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of floorwall
-- ----------------------------
INSERT INTO `floorwall` VALUES ('东苑', '23', '149', '孟子归', '墙体开裂！');
INSERT INTO `floorwall` VALUES ('东苑', '23', '150', '王炜龙', '地板碎了一块！');

-- ----------------------------
-- Table structure for furniture
-- ----------------------------
DROP TABLE IF EXISTS `furniture`;
CREATE TABLE `furniture`  (
  `area` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `build` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `room` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dormheader` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of furniture
-- ----------------------------
INSERT INTO `furniture` VALUES ('东苑', '23', '149', '孟子归', '床板坏了！');
INSERT INTO `furniture` VALUES ('东苑', '23', '150', '王炜龙', '椅子腿坏了！');

-- ----------------------------
-- Table structure for pipeline
-- ----------------------------
DROP TABLE IF EXISTS `pipeline`;
CREATE TABLE `pipeline`  (
  `area` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `build` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `room` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dormheader` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pipeline
-- ----------------------------
INSERT INTO `pipeline` VALUES ('东苑', '23', '150', '王炜龙', '水管漏水！');

-- ----------------------------
-- Table structure for studentlogin
-- ----------------------------
DROP TABLE IF EXISTS `studentlogin`;
CREATE TABLE `studentlogin`  (
  `studentnumber` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`studentnumber`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of studentlogin
-- ----------------------------
INSERT INTO `studentlogin` VALUES ('1924240017', 'yh123');
INSERT INTO `studentlogin` VALUES ('1924240036', 'xhc123');
INSERT INTO `studentlogin` VALUES ('1924240041', 'mzg123');
INSERT INTO `studentlogin` VALUES ('1924240073', 'qwh123');
INSERT INTO `studentlogin` VALUES ('1924240084', 'ljq123');

SET FOREIGN_KEY_CHECKS = 1;
