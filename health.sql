/*
 Navicat Premium Data Transfer

 Source Server         : 本地mysql
 Source Server Type    : MySQL
 Source Server Version : 80032
 Source Host           : localhost:3306
 Source Schema         : health-manager

 Target Server Type    : MySQL
 Target Server Version : 80032
 File Encoding         : 65001

 Date: 22/05/2024 17:57:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for health
-- ----------------------------
DROP TABLE IF EXISTS `health`;
CREATE TABLE `health`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `step_number` varchar(255) NULL DEFAULT NULL COMMENT '运动步数',
  `calorie` varchar(255) NULL DEFAULT NULL COMMENT '卡路里',
  `temperature` varchar(255) NULL DEFAULT NULL COMMENT '温度',
  `weight` varchar(255) NULL DEFAULT NULL COMMENT '体重',
  `blood_pressure_min` varchar(255)  NULL DEFAULT NULL COMMENT '最小压力',
  `blood_pressure_max` varchar(255)  NULL DEFAULT NULL COMMENT '最大压力',
  `sleep_start` varchar(255) NULL DEFAULT NULL COMMENT '睡眠开始',
  `sleep_end` varchar(255) NULL DEFAULT NULL COMMENT '结束',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `user_id` bigint(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of health
-- ----------------------------
INSERT INTO `health` VALUES (3, 'cesi', '150', '30', '140', '60', '120', '22:29', '08:29', '2024-03-16 19:03:25', 1);

-- ----------------------------
-- Table structure for level
-- ----------------------------
DROP TABLE IF EXISTS `level`;
CREATE TABLE `level`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `min_score` bigint(0) NULL DEFAULT NULL COMMENT '最小分数',
  `max_score` bigint(0) NULL DEFAULT NULL COMMENT '最大分数',
  `level_name` varchar(255) NULL DEFAULT NULL COMMENT '对应等级名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of level
-- ----------------------------
INSERT INTO `level` VALUES (1, 0, 1000, '小白');
INSERT INTO `level` VALUES (2, 1001, 2000, '萌新');
INSERT INTO `level` VALUES (3, 2001, 3000, '菜鸟');

-- ----------------------------
-- Table structure for plan
-- ----------------------------
DROP TABLE IF EXISTS `plan`;
CREATE TABLE `plan`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) NULL DEFAULT NULL COMMENT '计划内容',
  `due_time` datetime(0) NULL DEFAULT NULL COMMENT '提醒时间',
  `score` bigint(0) NULL DEFAULT NULL COMMENT '对应分数',
  `delete_status` tinyint(0) NULL DEFAULT 0 COMMENT '删除0：否 1：是',
  `complete_status` tinyint(0) NULL DEFAULT 0 COMMENT '完成 0：否 1：是',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `user_id` bigint(0) NULL DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of plan
-- ----------------------------
INSERT INTO `plan` VALUES (1, '4.9 图书馆学习', '2024-03-16 18:18:18', 100, 0, 1, '2024-03-16 18:29:01', 1);
INSERT INTO `plan` VALUES (2, '27日下午2.30招聘会', '2024-03-16 18:29:18', 150, 0, 1, '2024-03-16 18:30:04', 1);
INSERT INTO `plan` VALUES (3, '跑图', '2024-03-16 18:29:18', 200, 0, 1, '2024-03-16 18:29:18', 1);
INSERT INTO `plan` VALUES (4, '6.3 18:40测试', '2024-03-16 18:29:18', 200, 0, 1, '2024-03-16 18:29:18', 1);
INSERT INTO `plan` VALUES (5, '6.1 8:00云计算考试南教307', '2024-03-16 18:29:18', 100, 0, 1, '2024-03-16 18:29:18', 1);
INSERT INTO `plan` VALUES (6, '5.17 网课考试', '2024-03-16 18:29:18', 150, 0, 0, '2024-03-16 18:29:18', 1);
INSERT INTO `plan` VALUES (7, '5.7 专业英语考试10-12南教104', '2024-03-16 18:29:18', 200, 0, 0, '2024-03-16 18:29:18', 1);
INSERT INTO `plan` VALUES (8, '5.5 四级10点22', '2024-03-16 18:29:18', 100, 0, 0, '2024-03-16 18:29:18', 1);
INSERT INTO `plan` VALUES (9, '学习', '2024-03-16 18:29:18', 100, 0, 0, '2024-04-09 15:40:21', 1);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NULL DEFAULT NULL,
  `password` varchar(255) NULL DEFAULT NULL,
  `avatar` varchar(255) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `score` bigint(0) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', '123456', '123.png', '2024-03-16 18:03:07', 2050);
INSERT INTO `users` VALUES (2, 'user1', '123456', NULL, '2024-04-07 11:42:12', 0);
INSERT INTO `users` VALUES (3, 'user2', '123456', NULL, '2024-04-07 11:44:00', 0);
INSERT INTO `users` VALUES (4, 'user3', '123456', NULL, '2024-04-07 11:45:26', 0);

SET FOREIGN_KEY_CHECKS = 1;
