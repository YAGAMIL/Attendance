/*
 Navicat Premium Data Transfer

 Source Server         : Tablo
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : dev

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 03/04/2019 16:42:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for announcement
-- ----------------------------
DROP TABLE IF EXISTS `announcement`;
CREATE TABLE `announcement`  (
  `announcement_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '公告id',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告内容',
  `manager_id` bigint(20) NULL DEFAULT NULL COMMENT '发布人id',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `create_user` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_user` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `is_delete` int(11) UNSIGNED NULL DEFAULT 1 COMMENT '是否有效0无效，1有效',
  PRIMARY KEY (`announcement_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of announcement
-- ----------------------------
INSERT INTO `announcement` VALUES (1, '柯莱特', '柯莱特强', NULL, '2019-01-21 13:50:27', '刘波', NULL, '2019-01-21 15:52:06', 1);
INSERT INTO `announcement` VALUES (3, '吴文龙', '吴文龙玩石头人', NULL, '2019-01-09 09:49:50', '吴文龙', NULL, NULL, 1);
INSERT INTO `announcement` VALUES (4, '吴文龙', '吴文龙玩诺手', NULL, '2019-01-16 09:50:16', '吴文龙', NULL, NULL, 1);
INSERT INTO `announcement` VALUES (6, '柯莱特', '柯莱特真厉害', NULL, '2019-01-23 09:50:50', '柯莱特', NULL, NULL, 1);
INSERT INTO `announcement` VALUES (7, '柯莱特 22', '柯莱特太厉害了   niubi', NULL, '2019-01-23 09:51:05', '柯莱特', NULL, '2019-01-22 14:31:51', 1);
INSERT INTO `announcement` VALUES (94, '陈锦磊', '陈锦磊玩盖伦', NULL, '2019-01-22 14:32:58', NULL, NULL, NULL, 1);
INSERT INTO `announcement` VALUES (96, '测试专用', '测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用测试专用', NULL, '2019-01-23 17:02:26', NULL, NULL, NULL, 1);
INSERT INTO `announcement` VALUES (103, '早上好', '今天忘记打卡了', NULL, '2019-01-25 10:55:45', NULL, NULL, NULL, 1);
INSERT INTO `announcement` VALUES (104, '777', '666', NULL, '2019-03-16 11:27:16', NULL, NULL, NULL, 1);

-- ----------------------------
-- Table structure for approval
-- ----------------------------
DROP TABLE IF EXISTS `approval`;
CREATE TABLE `approval`  (
  `approval_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '审批id',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '实习生id',
  `tutor_id` bigint(20) NULL DEFAULT NULL COMMENT '导师id',
  `attendance_record_id` bigint(20) NULL DEFAULT NULL COMMENT '考勤记录id',
  `forget_time` datetime(0) NULL DEFAULT NULL COMMENT '忘打卡时间',
  `forget_type` int(255) NULL DEFAULT NULL COMMENT '0签到，1签退，忘打卡类型',
  `apply_time` datetime(0) NULL DEFAULT NULL COMMENT '申请时间',
  `approval_status` int(11) NULL DEFAULT NULL COMMENT '审批状态0未处理，1已处理',
  `approval_type` int(11) NULL DEFAULT NULL COMMENT '审批类型 0忘打卡，1月度审批',
  `confirm` int(255) UNSIGNED NULL DEFAULT 1 COMMENT '是否已经处理 0 该实习生处理了 1  该导师处理了',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `create_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `update_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_delete` int(11) UNSIGNED NULL DEFAULT 1 COMMENT '是否有效，0无效1有效',
  PRIMARY KEY (`approval_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 389 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '审批状态：0表示未审批、1表示已审批、2表示已驳回\r\n审批类型：0表示忘打卡审批、1表示月考勤审批' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of approval
-- ----------------------------
INSERT INTO `approval` VALUES (266, 7, 3, NULL, '2019-01-21 08:59:15', 0, '2019-01-22 09:54:06', 1, 0, 1, '2019-01-22 09:54:06', '董瑞', NULL, NULL, 1);
INSERT INTO `approval` VALUES (267, 7, 3, NULL, '2019-01-21 20:09:15', 1, '2019-01-22 09:54:44', 1, 0, 1, '2019-01-22 09:54:44', '董瑞', NULL, NULL, 1);
INSERT INTO `approval` VALUES (268, 7, 3, NULL, '2019-01-16 00:01:00', 0, '2019-01-22 10:21:18', 1, 0, 1, '2019-01-22 10:21:18', '董瑞', NULL, NULL, 1);
INSERT INTO `approval` VALUES (269, 7, 3, NULL, '2019-01-24 02:04:00', 0, '2019-01-22 11:08:43', 1, 0, 1, '2019-01-22 11:08:43', '董瑞', NULL, NULL, 1);
INSERT INTO `approval` VALUES (270, 2, 3, NULL, '2019-01-21 02:02:00', 0, '2019-01-22 11:28:18', 0, 0, 1, '2019-01-22 11:28:18', '董瑞', NULL, NULL, 1);
INSERT INTO `approval` VALUES (271, 1, 1, 251, '2019-01-10 08:58:14', 1, '2019-01-11 09:58:31', 1, 0, 1, '2019-01-11 09:59:26', '苏文文', '2019-01-22 15:04:37', '刘威', 1);
INSERT INTO `approval` VALUES (272, 1, 1, 251, '2019-01-10 19:59:53', 1, '2019-01-22 19:00:04', 1, 0, 1, '2019-01-11 19:00:24', '苏文文', '2019-01-24 17:53:18', '刘威', 1);
INSERT INTO `approval` VALUES (273, 3, 2, 376, '2019-01-08 20:10:53', 1, '2019-01-22 19:00:04', 1, 0, 1, '2019-01-22 19:00:04', '吴文龙', '2019-01-23 10:14:18', '杨智', 1);
INSERT INTO `approval` VALUES (274, 2, 1, 341, '2018-12-28 19:35:44', 1, '2019-01-06 10:59:22', 0, 0, 1, '2019-01-06 10:59:22', '程慧茹', NULL, NULL, 1);
INSERT INTO `approval` VALUES (282, 3, 2, NULL, '2018-12-23 09:00:00', 0, '2019-01-06 11:11:11', 0, 0, 0, '2019-01-06 11:11:11', '程慧茹', NULL, NULL, 1);
INSERT INTO `approval` VALUES (290, 3, 1, NULL, '2019-01-22 15:22:44', 1, '2019-01-22 15:24:33', 0, 0, 1, '2019-01-22 15:24:33', '吴文龙', '2019-01-22 15:24:33', NULL, 1);
INSERT INTO `approval` VALUES (291, 3, 1, NULL, '2019-01-22 15:22:48', 0, '2019-01-22 15:24:37', 0, 0, 0, '2019-01-22 15:24:37', '吴文龙', '2019-01-22 15:24:37', NULL, 1);
INSERT INTO `approval` VALUES (292, 3, 1, NULL, '2019-01-22 15:31:31', 0, '2019-01-22 15:33:19', 0, 0, 1, '2019-01-22 15:33:19', '吴文龙', '2019-01-22 15:33:19', NULL, 1);
INSERT INTO `approval` VALUES (293, 2, 1, 3452, NULL, NULL, '2019-01-22 14:36:26', 1, 1, 1, '2019-01-22 17:44:27', 'admin', NULL, NULL, 1);
INSERT INTO `approval` VALUES (294, 3, 1, 3453, NULL, NULL, '2019-01-22 14:36:26', 1, 1, 0, '2019-01-22 17:44:27', 'admin', NULL, NULL, 1);
INSERT INTO `approval` VALUES (295, 4, 2, 3454, NULL, NULL, '2019-01-22 14:36:26', 0, 1, 0, '2019-01-22 17:44:27', 'admin', NULL, NULL, 1);
INSERT INTO `approval` VALUES (296, 6, 1, 3455, NULL, NULL, '2019-01-22 14:36:26', 1, 1, 1, '2019-01-22 17:44:27', 'admin', NULL, NULL, 1);
INSERT INTO `approval` VALUES (297, 8, 2, 3456, NULL, NULL, '2019-01-22 14:36:26', 1, 1, 1, '2019-01-22 17:44:27', 'admin', NULL, NULL, 1);
INSERT INTO `approval` VALUES (298, 9, 3, 3457, NULL, NULL, '2019-01-22 14:36:26', 0, 1, 1, '2019-01-22 17:44:27', 'admin', NULL, NULL, 1);
INSERT INTO `approval` VALUES (299, 1, 67, 3459, NULL, NULL, '2019-01-22 14:36:56', 0, 1, 1, '2019-01-22 17:44:27', 'admin', NULL, NULL, 1);
INSERT INTO `approval` VALUES (311, 7, 3, NULL, '2019-01-23 01:01:00', 0, '2019-01-23 10:16:39', 1, 0, 1, '2019-01-22 00:00:00', '董瑞', NULL, NULL, 1);
INSERT INTO `approval` VALUES (312, 3, 2, 376, '2019-01-08 07:10:53', 0, '2019-01-22 19:00:04', 1, 0, 1, '2019-01-22 19:00:04', '吴文龙', '2019-01-23 10:36:18', '杨智', 1);
INSERT INTO `approval` VALUES (326, 7, 3, NULL, '2019-01-18 00:00:00', 0, '2019-01-23 19:27:08', 1, 0, 1, '2019-01-23 19:27:08', '董瑞', NULL, NULL, 1);
INSERT INTO `approval` VALUES (327, 7, 3, NULL, '2019-01-18 00:00:00', 0, '2019-01-23 19:27:13', 1, 0, 1, '2019-01-23 19:27:13', '董瑞', NULL, NULL, 1);
INSERT INTO `approval` VALUES (328, 7, 3, NULL, '2019-01-11 00:01:00', 0, '2019-01-24 10:20:16', 0, 0, 1, '2019-01-24 10:20:16', '董瑞', NULL, NULL, 1);
INSERT INTO `approval` VALUES (329, 7, 3, NULL, '2019-01-23 00:00:00', 0, '2019-01-24 14:04:14', 0, 0, 1, '2019-01-24 14:04:14', '董瑞', NULL, NULL, 1);
INSERT INTO `approval` VALUES (330, 7, 3, NULL, '2019-01-23 00:00:00', 0, '2019-01-24 14:04:20', 0, 0, 1, '2019-01-24 14:04:20', '董瑞', NULL, NULL, 1);
INSERT INTO `approval` VALUES (331, 7, 3, NULL, '2019-01-18 00:00:00', 0, '2019-01-24 14:05:30', 0, 0, 1, '2019-01-24 14:05:30', '董瑞', NULL, NULL, 1);
INSERT INTO `approval` VALUES (332, 9, 67, NULL, '2019-01-12 00:01:00', 0, '2019-01-24 16:08:13', 0, 0, 1, '2019-01-24 16:08:13', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval` VALUES (333, 9, 2, NULL, '2019-01-18 00:00:00', 0, '2019-01-24 16:51:06', 0, 0, 1, '2019-01-24 16:51:06', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval` VALUES (334, 9, 2, NULL, '2019-01-18 00:00:00', 0, '2019-01-24 16:51:07', 0, 0, 1, '2019-01-24 16:51:07', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval` VALUES (335, 9, 4, NULL, '2019-01-18 00:00:00', 0, '2019-01-24 16:51:08', 0, 0, 1, '2019-01-24 16:51:08', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval` VALUES (336, 9, 4, NULL, '2019-01-18 00:00:00', 0, '2019-01-24 16:51:08', 0, 0, 1, '2019-01-24 16:51:08', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval` VALUES (337, 9, 4, NULL, '2019-01-18 00:00:00', 0, '2019-01-24 16:51:08', 0, 0, 1, '2019-01-24 16:51:08', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval` VALUES (338, 9, 1, NULL, '2019-01-18 00:00:00', 0, '2019-01-24 16:51:08', 0, 0, 1, '2019-01-24 16:51:08', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval` VALUES (339, 9, 67, NULL, '2019-01-18 00:00:00', 0, '2019-01-24 16:51:09', 0, 0, 1, '2019-01-24 16:51:09', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval` VALUES (340, 9, 1, NULL, '2019-01-18 00:00:00', 0, '2019-01-24 16:51:09', 0, 0, 1, '2019-01-24 16:51:09', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval` VALUES (341, 9, 67, NULL, '2019-01-18 00:00:00', 0, '2019-01-24 16:51:09', 0, 0, 1, '2019-01-24 16:51:09', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval` VALUES (342, 9, 1, NULL, '2019-01-17 00:00:00', 0, '2019-01-24 16:52:55', 0, 0, 1, '2019-01-24 16:52:55', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval` VALUES (343, 9, 1, NULL, '2019-01-23 00:00:00', 0, '2019-01-24 16:56:19', 0, 0, 1, '2019-01-24 16:56:19', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval` VALUES (344, 9, 67, NULL, '2019-01-23 00:00:00', 0, '2019-01-24 16:56:50', 0, 0, 1, '2019-01-24 16:56:50', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval` VALUES (345, 9, 1, NULL, '2019-01-15 00:00:00', 0, '2019-01-24 16:58:04', 0, 0, 1, '2019-01-24 16:58:04', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval` VALUES (346, 9, 67, NULL, '2019-01-15 00:00:00', 0, '2019-01-24 16:58:10', 0, 0, 1, '2019-01-24 16:58:10', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval` VALUES (347, 9, 1, NULL, '2019-01-16 00:00:00', 0, '2019-01-24 16:58:46', 0, 0, 1, '2019-01-24 16:58:46', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval` VALUES (348, 9, 2, NULL, '2019-01-16 00:00:00', 0, '2019-01-24 16:58:49', 0, 0, 1, '2019-01-24 16:58:49', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval` VALUES (349, 9, 67, NULL, '2019-01-16 00:00:00', 0, '2019-01-24 16:59:35', 0, 0, 1, '2019-01-24 16:59:35', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval` VALUES (350, 9, 67, NULL, '2019-01-16 00:00:00', 0, '2019-01-24 17:00:25', 0, 0, 1, '2019-01-24 17:00:25', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval` VALUES (351, 9, 2, NULL, '2019-01-22 00:00:00', 0, '2019-01-24 17:01:42', 0, 0, 1, '2019-01-24 17:01:42', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval` VALUES (352, 9, 2, NULL, '2019-01-08 00:00:00', 0, '2019-01-24 17:03:50', 0, 0, 1, '2019-01-24 17:03:50', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval` VALUES (353, 9, 2, NULL, '2019-01-15 00:00:00', 0, '2019-01-24 17:04:45', 0, 0, 1, '2019-01-24 17:04:45', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval` VALUES (354, 9, 2, NULL, '2019-01-10 00:00:00', 0, '2019-01-24 17:12:36', 0, 0, 1, '2019-01-24 17:12:36', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval` VALUES (355, 9, 2, NULL, '2019-01-16 00:00:00', 0, '2019-01-24 17:14:27', 0, 0, 1, '2019-01-24 17:14:27', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval` VALUES (356, 9, 2, NULL, '2019-01-16 00:00:00', 0, '2019-01-24 17:14:28', 0, 0, 1, '2019-01-24 17:14:28', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval` VALUES (357, 9, 2, NULL, '2019-01-16 00:00:00', 0, '2019-01-24 17:14:34', 0, 0, 1, '2019-01-24 17:14:34', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval` VALUES (358, 9, 2, NULL, '2019-01-16 00:00:00', 0, '2019-01-24 17:14:37', 0, 0, 1, '2019-01-24 17:14:37', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval` VALUES (359, 9, 2, NULL, '2019-01-16 00:00:00', 0, '2019-01-24 17:16:06', 0, 0, 1, '2019-01-24 17:16:06', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval` VALUES (371, 7, 3, NULL, '2019-01-10 02:03:00', 0, '2019-01-24 19:20:59', 0, 0, 1, '2019-01-24 19:20:59', '董瑞', NULL, NULL, 1);
INSERT INTO `approval` VALUES (372, 7, 3, NULL, '2019-01-10 02:01:00', 0, '2019-01-24 19:22:51', 0, 0, 1, '2019-01-24 19:22:51', '董瑞', NULL, NULL, 1);
INSERT INTO `approval` VALUES (373, 7, 3, NULL, '2019-01-17 02:01:00', 0, '2019-01-24 19:23:55', 0, 0, 1, '2019-01-24 19:23:55', '董瑞', NULL, NULL, 1);
INSERT INTO `approval` VALUES (374, 7, 3, NULL, '2019-01-03 02:02:00', 0, '2019-01-24 19:25:28', 0, 0, 1, '2019-01-24 19:25:28', '董瑞', NULL, NULL, 1);
INSERT INTO `approval` VALUES (375, 7, 68, NULL, '2019-01-10 00:02:00', 0, '2019-01-24 19:48:20', 0, 0, 1, '2019-01-24 19:48:20', '董瑞', NULL, NULL, 1);
INSERT INTO `approval` VALUES (376, 7, 68, NULL, '2019-01-17 02:02:00', 0, '2019-01-24 19:49:11', 0, 0, 1, '2019-01-24 19:49:11', '董瑞', NULL, NULL, 1);
INSERT INTO `approval` VALUES (377, 7, 68, NULL, '2019-01-12 02:02:00', 0, '2019-01-24 19:53:50', 0, 0, 1, '2019-01-24 19:53:50', '董瑞', NULL, NULL, 1);
INSERT INTO `approval` VALUES (378, 7, 68, NULL, '2019-01-18 03:02:00', 0, '2019-01-24 19:54:09', 0, 0, 1, '2019-01-24 19:54:09', '董瑞', NULL, NULL, 1);
INSERT INTO `approval` VALUES (379, 7, 68, NULL, '2019-01-23 02:02:00', 0, '2019-01-24 19:54:40', 0, 0, 1, '2019-01-24 19:54:40', '董瑞', NULL, NULL, 1);
INSERT INTO `approval` VALUES (380, 7, 68, NULL, '2019-01-18 01:02:00', 0, '2019-01-24 19:54:58', 0, 0, 1, '2019-01-24 19:54:58', '董瑞', NULL, NULL, 1);
INSERT INTO `approval` VALUES (381, 7, 68, NULL, '2019-01-19 02:02:00', 0, '2019-01-24 19:56:18', 0, 0, 1, '2019-01-24 19:56:18', '董瑞', NULL, NULL, 1);
INSERT INTO `approval` VALUES (382, 7, 68, NULL, '2019-01-23 00:02:00', 0, '2019-01-24 19:56:33', 0, 0, 1, '2019-01-24 19:56:33', '董瑞', NULL, NULL, 1);
INSERT INTO `approval` VALUES (383, 7, 68, NULL, '2019-01-16 02:02:00', 0, '2019-01-24 19:57:50', 0, 0, 1, '2019-01-24 19:57:50', '董瑞', NULL, NULL, 1);
INSERT INTO `approval` VALUES (384, 7, 68, NULL, '2019-01-10 02:02:00', 0, '2019-01-24 19:58:13', 0, 0, 1, '2019-01-24 19:58:13', '董瑞', NULL, NULL, 1);
INSERT INTO `approval` VALUES (385, 7, 68, NULL, '2019-01-18 02:02:00', 0, '2019-01-24 19:58:49', 0, 0, 1, '2019-01-24 19:58:49', '董瑞', NULL, NULL, 1);
INSERT INTO `approval` VALUES (386, 7, 68, NULL, '2019-01-23 02:02:00', 0, '2019-01-25 09:27:50', 0, 0, 1, '2019-01-25 09:27:50', '董瑞', NULL, NULL, 1);
INSERT INTO `approval` VALUES (387, 7, 68, NULL, '2019-01-23 02:02:00', 0, '2019-01-25 09:28:07', 0, 0, 1, '2019-01-25 09:28:07', '董瑞', NULL, NULL, 1);
INSERT INTO `approval` VALUES (388, 7, 68, NULL, '2019-01-01 02:02:00', 0, '2019-01-25 09:33:44', 0, 0, 1, '2019-01-25 09:33:44', '董瑞', NULL, NULL, 1);
INSERT INTO `approval` VALUES (389, 7, 68, NULL, '2019-01-01 02:02:00', 0, '2019-01-25 09:34:02', 0, 0, 1, '2019-01-25 09:34:02', '董瑞', NULL, NULL, 1);

-- ----------------------------
-- Table structure for approval_record
-- ----------------------------
DROP TABLE IF EXISTS `approval_record`;
CREATE TABLE `approval_record`  (
  `approval_record_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '审批记录id',
  `approval_id` bigint(20) NULL DEFAULT NULL COMMENT '审批id',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请描述',
  `reply_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '回复详情',
  `approval_status` int(11) NULL DEFAULT NULL COMMENT '-1驳回，0申请，1通过，2回复',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `create_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `update_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_delete` int(11) UNSIGNED NULL DEFAULT 1 COMMENT '是否有效，0无效，1有效',
  PRIMARY KEY (`approval_record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 579 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '审批记录表：存放每一条审批的数据，包括驳回说明，一个实习生导师可以对应多条数据还说审批、相当于一次会话' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of approval_record
-- ----------------------------
INSERT INTO `approval_record` VALUES (411, 266, '我一天都忘记打卡了', NULL, 0, '2019-01-22 09:54:06', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (412, 267, '我部下午的卡', NULL, 0, '2019-01-22 09:54:44', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (415, 270, '·123456', NULL, 0, '2019-01-22 11:28:18', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (416, 271, NULL, '不给你通过', -1, '2019-01-22 13:47:09', '刘威', '2019-01-22 00:00:00', NULL, 1);
INSERT INTO `approval_record` VALUES (417, 271, '已经核实', '', 2, '2019-01-22 14:42:19', '苏文文', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (418, 271, NULL, '就不给你通过', -1, '2019-01-22 15:00:39', '刘威', '2019-01-22 15:00:39', NULL, 1);
INSERT INTO `approval_record` VALUES (419, 271, '我错了，下次好好打卡', '', 2, '2019-01-22 14:59:35', '苏文文', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (420, 271, NULL, '成功通过', 1, '2019-01-22 15:04:37', '刘威', '2019-01-22 15:04:37', NULL, 1);
INSERT INTO `approval_record` VALUES (439, 291, '你在说啥呢', NULL, 2, '2019-01-22 16:04:50', '杨鹏', '2019-01-22 16:04:50', NULL, 1);
INSERT INTO `approval_record` VALUES (440, 291, '你在说啥呢', NULL, 2, '2019-01-22 16:06:38', '杨鹏', '2019-01-22 16:06:38', NULL, 1);
INSERT INTO `approval_record` VALUES (455, 299, NULL, '我不知道啊', -1, '2019-01-22 17:53:27', '刘威', '2019-01-22 17:53:27', NULL, 1);
INSERT INTO `approval_record` VALUES (457, 267, '累了', '', 2, '2019-01-22 20:17:48', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (458, 267, NULL, '去', 2, '2019-01-22 20:18:08', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (460, 266, NULL, '数据有问题', 2, '2019-01-22 20:19:06', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (463, 305, NULL, '成功通过', 1, '2019-01-23 09:39:32', '刘威', '2019-01-23 09:39:32', NULL, 1);
INSERT INTO `approval_record` VALUES (469, 299, '已经沟通过了', NULL, 2, '2019-01-23 10:13:10', '苏文文', '2019-01-23 10:13:10', NULL, 1);
INSERT INTO `approval_record` VALUES (471, 273, NULL, '数据异常', -1, '2019-01-23 10:13:48', '杨智', '2019-01-23 10:13:48', NULL, 1);
INSERT INTO `approval_record` VALUES (472, 273, NULL, '成功通过', 1, '2019-01-23 10:14:17', '杨智', '2019-01-23 10:14:17', NULL, 1);
INSERT INTO `approval_record` VALUES (473, 266, NULL, '早上好', 2, '2019-01-23 10:13:11', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (474, 311, '我忘记打卡了，我告诉了你那个的确可以的', NULL, 0, '2019-01-23 10:16:39', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (475, 312, NULL, '有问题', -1, '2019-01-23 10:35:50', '杨智', '2019-01-23 10:35:50', NULL, 1);
INSERT INTO `approval_record` VALUES (476, 312, NULL, '成功通过', 1, '2019-01-23 10:36:18', '杨智', '2019-01-23 10:36:18', NULL, 1);
INSERT INTO `approval_record` VALUES (477, 294, NULL, '2019年1月16日数据异常', -1, '2019-01-23 10:36:39', '杨智', '2019-01-23 10:36:39', NULL, 1);
INSERT INTO `approval_record` VALUES (479, 295, NULL, '2019-01-10,2019-01-18,2019-01-1722222', -1, '2019-01-23 12:11:29', '杨智', '2019-01-23 12:11:29', NULL, 1);
INSERT INTO `approval_record` VALUES (480, 269, NULL, '申请未通过，已关闭', 2, '2019-01-23 13:38:05', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (481, 282, NULL, '数据异常', -1, '2019-01-23 15:10:36', '杨智', '2019-01-23 15:10:36', NULL, 1);
INSERT INTO `approval_record` VALUES (485, 267, '申请未通过，已关闭', NULL, 2, '2019-01-23 15:35:11', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (495, 276, '申请未通过，已关闭', NULL, 2, '2019-01-23 15:47:31', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (500, 311, NULL, '数据异常', -1, '2019-01-23 15:55:20', '张泽祥', '2019-01-23 15:55:20', NULL, 1);
INSERT INTO `approval_record` VALUES (501, 268, '申请未通过，已关闭', NULL, 2, '2019-01-23 15:57:05', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (502, 268, '申请未通过，已关闭', NULL, 2, '2019-01-23 16:27:26', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (503, 266, '申请未通过，已关闭', NULL, 2, '2019-01-23 16:27:49', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (504, 311, NULL, '早上好', 2, '2019-01-23 19:26:20', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (505, 326, '晚上好', NULL, 0, '2019-01-23 19:27:08', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (506, 327, '晚上好', NULL, 0, '2019-01-23 19:27:13', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (507, 299, '1.24测试1', NULL, 2, '2019-01-24 09:30:23', '杨鹏', '2019-01-24 09:30:23', NULL, 1);
INSERT INTO `approval_record` VALUES (508, 350, '1.24测试1', NULL, 2, '2019-01-24 09:31:26', '杨鹏', '2019-01-24 09:31:26', NULL, 1);
INSERT INTO `approval_record` VALUES (509, 311, '申请未通过，已关闭', NULL, 2, '2019-01-24 10:06:07', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (510, 326, '申请未通过，已关闭', NULL, 2, '2019-01-24 10:13:35', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (511, 327, '申请未通过，已关闭', NULL, 2, '2019-01-24 10:14:33', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (512, 328, '早上你', NULL, 0, '2019-01-24 10:20:16', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (513, 327, '1.24早上好', NULL, 2, '2019-01-24 10:36:49', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (514, 329, '中午好', NULL, 0, '2019-01-24 14:04:14', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (515, 330, '中午好', NULL, 0, '2019-01-24 14:04:20', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (516, 331, '早上好', NULL, 0, '2019-01-24 14:05:30', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (517, 297, NULL, '成功通过', 1, '2019-01-24 14:40:49', '杨智', '2019-01-24 14:40:49', NULL, 1);
INSERT INTO `approval_record` VALUES (530, 344, '早上好', NULL, 0, '2019-01-24 16:56:50', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (531, 345, '早上好', NULL, 0, '2019-01-24 16:58:04', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (532, 346, '早上好', NULL, 0, '2019-01-24 16:58:10', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (533, 347, '下午好', NULL, 0, '2019-01-24 16:58:46', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (534, 348, '下午好', NULL, 0, '2019-01-24 16:58:49', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (535, 349, '咋颇深', NULL, 0, '2019-01-24 16:59:35', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (536, 350, '咋说', NULL, 0, '2019-01-24 17:00:25', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (537, 351, '早上', NULL, 0, '2019-01-24 17:01:42', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (538, 352, '说说', NULL, 0, '2019-01-24 17:03:50', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (539, 353, 'ww', NULL, 0, '2019-01-24 17:04:45', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (540, 354, '122', NULL, 0, '2019-01-24 17:12:36', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (541, 355, '早上好', NULL, 0, '2019-01-24 17:14:27', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (542, 356, '早上好', NULL, 0, '2019-01-24 17:14:28', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (543, 357, '早上好', NULL, 0, '2019-01-24 17:14:34', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (544, 358, '早上好', NULL, 0, '2019-01-24 17:14:37', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (545, 359, '早上好', NULL, 0, '2019-01-24 17:16:06', '杨鹏', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (547, 360, '早上', NULL, 0, '2019-01-24 17:43:28', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (548, 361, '早上', NULL, 0, '2019-01-24 17:43:37', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (549, 362, '早上好', NULL, 0, '2019-01-24 17:45:24', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (550, 272, NULL, '成功通过', 1, '2019-01-24 17:53:17', '刘威', '2019-01-24 17:53:17', NULL, 1);
INSERT INTO `approval_record` VALUES (559, 371, '晚上好，同学们', NULL, 0, '2019-01-24 19:20:59', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (560, 372, '阿什顿飞', NULL, 0, '2019-01-24 19:22:51', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (561, 373, '阿什顿飞更好， 把', NULL, 0, '2019-01-24 19:23:55', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (562, 374, 'qwe45', NULL, 0, '2019-01-24 19:25:28', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (563, 375, '1234567', NULL, 0, '2019-01-24 19:48:20', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (564, 376, '早上明晚上把我的完成 ', NULL, 0, '2019-01-24 19:49:11', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (565, 377, '早上好', NULL, 0, '2019-01-24 19:53:50', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (566, 378, '晚上好', NULL, 0, '2019-01-24 19:54:09', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (567, 379, 'dnewidb', NULL, 0, '2019-01-24 19:54:40', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (568, 380, '123456', NULL, 0, '2019-01-24 19:54:58', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (569, 381, '1234567', NULL, 0, '2019-01-24 19:56:18', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (570, 382, '·1234567', NULL, 0, '2019-01-24 19:56:33', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (571, 383, '123456', NULL, 0, '2019-01-24 19:57:50', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (572, 384, '请23456', NULL, 0, '2019-01-24 19:58:13', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (573, 385, '123456789', NULL, 0, '2019-01-24 19:58:49', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (574, 386, '早上好', NULL, 0, '2019-01-25 09:27:50', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (575, 387, '早上是', NULL, 0, '2019-01-25 09:28:07', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (576, 388, '起来不', NULL, 0, '2019-01-25 09:33:44', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (577, 389, '123457以防', NULL, 0, '2019-01-25 09:34:02', '董瑞', NULL, NULL, 1);
INSERT INTO `approval_record` VALUES (578, 291, NULL, 'asdsadasd', -1, '2019-01-25 10:02:30', '杨智', '2019-01-25 10:02:30', NULL, 1);
INSERT INTO `approval_record` VALUES (579, 296, NULL, '成功通过', 1, '2019-01-25 11:18:11', '刘威', '2019-01-25 11:18:11', NULL, 1);

-- ----------------------------
-- Table structure for attendance_record
-- ----------------------------
DROP TABLE IF EXISTS `attendance_record`;
CREATE TABLE `attendance_record`  (
  `record_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `sign_in_id` bigint(20) NULL DEFAULT NULL COMMENT '签到id',
  `sign_out_id` bigint(20) NULL DEFAULT NULL COMMENT '签退id',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '签到人id',
  `sign_type` int(11) NULL DEFAULT NULL COMMENT '打卡状态，非正常-1、正常1，外出正常2，外出异常-2，出差3，出差异常-3',
  `supply` int(4) NULL DEFAULT NULL COMMENT '是否补卡0为正常，1补卡',
  `workhours` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '工时',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `create_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `update_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_delete` int(11) UNSIGNED NULL DEFAULT 1 COMMENT '是否有效0无效，1有效',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 382 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '是否正常打卡：normal：1表示正常打卡，签到表中没有迟到、签退表中没有早退置1\r\n           0' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of attendance_record
-- ----------------------------
INSERT INTO `attendance_record` VALUES (1, 1, 1, 4, 1, 0, 8, '2018-12-01 11:24:40', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (3, 3, 3, 4, 2, 0, 8, '2018-12-03 11:24:40', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (4, 4, 4, 4, 3, 1, 4, '2018-12-04 11:26:35', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (5, 5, 5, 4, -2, 1, 4, '2018-12-05 11:24:40', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (7, 7, 7, 4, 1, 0, 8, '2018-12-07 11:24:40', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (8, 8, 8, 4, 1, 0, 8, '2018-12-08 11:24:40', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (9, 9, 9, 4, 1, 0, 8, '2018-12-09 11:24:40', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (10, 10, 10, 4, 1, 0, 8, '2018-12-10 11:24:40', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (11, 11, 11, 4, 1, 0, 4, '2018-12-11 11:24:40', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (12, 12, 12, 4, 1, 0, 8, '2018-12-12 11:24:40', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (13, 13, 13, 4, 1, 0, 4, '2018-12-13 11:24:40', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (14, 14, 14, 4, 1, 0, 8, '2018-12-14 11:24:40', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (15, 15, 15, 4, 1, 1, 4, '2018-12-15 11:24:40', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (16, 16, 16, 4, 2, 0, 8, '2018-12-16 11:24:40', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (17, 17, 17, 4, 3, 0, 8, '2018-12-17 11:24:40', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (18, 18, 18, 4, 1, 0, 4, '2018-12-18 11:24:40', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (19, 19, 19, 4, 1, 1, 4, '2018-12-19 11:24:40', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (20, 20, 20, 4, 1, 0, 8, '2018-12-20 11:24:40', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (21, 21, 21, 4, 1, 0, 8, '2018-12-21 11:24:40', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (24, 24, 24, 4, 1, 0, 8, '2018-12-24 11:24:40', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (25, 25, 25, 4, 1, 0, 4, '2018-12-25 11:24:40', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (26, 26, 26, 4, 1, 0, 8, '2018-12-26 11:24:40', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (27, 27, 27, 4, 1, 0, 8, '2018-12-27 11:24:40', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (28, 28, 28, 4, 1, 0, 8, '2018-12-28 11:24:40', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (238, 506, 74, 8, 1, 0, 8, '2018-12-01 20:01:28', '蒲勇', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (239, 508, 76, 8, 1, 0, 8, '2018-12-02 20:01:28', '蒲勇', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (240, 514, 78, 8, 1, 0, 8, '2018-12-03 19:36:28', '蒲勇', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (241, 517, NULL, 8, -1, 0, 0, NULL, '蒲勇', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (242, 628, 170, 1, 1, 0, 8, '2019-01-01 20:21:05', '苏文文', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (243, 640, 171, 1, 1, 0, 8, '2019-01-02 20:22:07', '苏文文', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (244, 642, 172, 1, 1, 0, 4, '2019-01-03 20:24:10', '苏文文', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (245, 519, 80, 8, 1, 0, 8, '2018-12-06 18:36:28', '蒲勇', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (246, 647, 177, 1, 1, 0, 4, '2019-01-04 20:25:59', '苏文文', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (247, 650, 180, 1, 2, 0, 8, '2019-01-05 19:28:17', '苏文文', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (248, 653, NULL, 1, -1, 0, 0, '2019-01-07 20:28:25', '苏文文', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (249, 656, 185, 1, 1, 0, 8, '2019-01-08 19:29:54', '苏文文', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (250, 661, 186, 1, 1, 0, 8, '2019-01-09 19:30:01', '苏文文', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (251, NULL, 187, 1, 1, 1, 0, '2019-01-10 19:31:17', '苏文文', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (252, 663, 188, 1, 1, 0, 8, '2019-01-11 19:31:33', '苏文文', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (253, 664, 191, 1, 2, 0, 8, '2019-01-12 19:34:04', '苏文文', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (254, 665, 193, 1, 3, 0, 8, '2019-01-14 19:34:13', '苏文文', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (255, 666, NULL, 1, -3, 0, 0, '2019-01-15 19:35:32', '苏文文', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (256, 667, 195, 1, 1, 0, 8, '2019-01-16 19:35:39', '苏文文', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (257, 668, 196, 1, 1, 0, 8, '2019-01-17 19:37:20', '苏文文', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (258, 669, 197, 1, 1, 0, 8, '2019-01-18 19:37:31', '苏文文', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (259, 670, 198, 1, 1, 0, 8, '2019-01-19 19:37:37', '苏文文', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (260, 671, 233, 1, 2, 0, 8, '2019-01-21 19:37:44', '苏文文', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (261, 672, NULL, 1, -2, 0, 0, '2019-01-22 19:37:51', '苏文文', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (262, 507, 75, 6, 1, 0, 8, '2018-12-01 18:02:23', '陈锦磊', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (263, 673, 200, 1, 2, 0, 8, '2019-01-23 19:38:02', '苏文文', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (264, 509, 77, 6, 1, 0, 8, '2018-12-02 18:02:23', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (265, 510, 101, 6, 1, 0, 8, '2018-12-03 18:02:23', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (266, 511, 102, 6, 1, 0, 8, '2018-12-04 18:02:23', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (267, 675, 202, 1, 3, 0, 8, '2019-01-24 19:41:56', '苏文文', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (268, 512, 103, 6, 1, 0, 8, '2018-12-05 18:02:23', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (269, 676, 205, 1, 3, 0, 8, '2019-01-25 19:42:02', '苏文文', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (270, 513, 104, 6, -1, 0, 8, '2018-12-06 18:02:23', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (271, 515, 105, 6, 2, 0, 8, '2018-12-07 18:02:23', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (272, 518, 106, 6, -2, 0, 0, '2018-12-08 18:02:23', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (273, 678, 203, 1, 1, 0, 8, '2019-01-26 19:45:35', '苏文文', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (274, 679, 206, 1, 1, 0, 8, '2019-01-28 19:45:42', '苏文文', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (275, 520, 107, 6, 1, 0, 8, '2018-12-09 18:02:23', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (276, 523, 108, 6, 1, 0, 8, '2018-12-10 18:02:23', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (277, 525, 109, 6, 1, 0, 8, '2018-12-11 18:02:23', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (278, 529, 110, 6, 1, 0, 8, '2018-12-12 18:02:23', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (279, 680, 208, 1, 1, 0, 8, '2019-01-29 19:46:50', '苏文文', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (280, 681, 209, 1, 1, 0, 8, '2019-01-30 19:46:57', '苏文文', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (281, 532, 111, 6, 1, 0, 8, '2018-12-13 18:02:23', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (282, 533, 113, 6, 1, 0, 8, '2018-12-14 18:02:23', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (283, 685, 210, 1, 1, 0, 8, '2019-01-31 19:47:38', '苏文文', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (284, 540, 114, 6, 3, 0, 8, '2018-12-15 18:02:23', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (285, 544, 115, 6, -3, 0, 0, '2018-12-16 18:02:23', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (286, 545, 116, 6, 1, 0, 8, '2018-12-17 18:02:23', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (287, 546, 117, 6, 1, 0, 8, '2018-12-18 18:02:23', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (288, 551, 118, 6, 1, 0, 8, '2018-12-19 18:02:23', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (289, 552, 119, 6, 1, 0, 8, '2018-12-20 18:02:23', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (290, 553, 120, 6, 1, 0, 8, '2018-12-21 18:02:23', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (291, 554, 154, 6, 1, 0, 8, '2018-12-22 18:02:23', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (292, 555, 156, 6, 1, 0, 8, '2018-12-23 18:02:23', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (293, 524, 84, 8, 1, 0, 8, '2018-12-09 20:36:28', '蒲勇', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (294, NULL, 84, 8, -1, 0, 0, '2018-12-10 20:36:28', '蒲勇', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (295, 556, 176, 6, 1, 0, 8, '2018-12-24 18:02:23', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (296, 557, 179, 6, 1, 0, 8, '2018-12-25 18:02:23', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (297, 558, 182, 6, 1, 0, 8, '2018-12-26 18:02:23', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (298, 559, 183, 6, 1, 0, 8, '2018-12-27 18:02:23', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (299, 560, 184, 6, 1, 0, 8, '2018-12-28 18:02:23', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (300, 561, 190, 6, 1, 0, 8, '2018-12-29 18:02:23', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (301, 562, 192, 6, 1, 0, 8, '2018-12-30 18:02:23', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (302, 563, 218, 6, 1, 0, 8, '2018-12-31 18:02:23', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (303, 568, NULL, 3, -1, 0, 0, '2018-12-01 10:26:41', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (304, 573, 221, 3, 1, 0, 8, '2018-12-02 19:54:43', '吴文龙', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (305, 566, 211, 2, 1, NULL, 8, '2018-12-01 18:56:46', '程慧茹', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (306, 581, 121, 9, -1, 0, 4, '2018-12-01 19:32:15', '杨鹏', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (307, 564, 201, 2, 1, 0, 8, '2018-12-02 18:56:46', '程慧茹', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (308, 565, 207, 2, 1, 0, 8, '2018-12-03 18:56:46', '', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (309, 567, NULL, 2, -1, 0, 0, '2018-12-04 18:56:46', '', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (310, 582, 122, 9, 1, 0, 8, '2018-12-02 19:32:15', '杨鹏', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (311, 583, 124, 9, 1, 0, 8, '2018-12-03 19:32:15', '杨鹏', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (313, 569, 212, 2, 1, 0, 8, '2018-12-05 18:56:46', '', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (314, 570, 213, 2, 1, 0, 8, '2018-12-06 18:56:46', '', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (315, 571, 214, 2, 1, 0, 8, '2018-12-07 18:56:46', '', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (316, 580, 215, 2, 1, 0, 4, '2018-12-08 18:56:46', '', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (317, 591, 249, 2, 1, 0, 4, '2018-12-18 18:56:46', '', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (320, 593, 239, 2, 1, 0, 8, '2018-12-10 18:56:46', '', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (321, 598, 241, 2, 1, 0, 4, '2018-12-11 18:56:46', '', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (322, 619, 244, 2, 1, 0, 8, '2018-12-12 18:56:46', '', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (323, 627, 245, 2, 1, 0, 8, '2018-12-13 18:56:46', '', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (325, 641, 246, 2, 1, 0, 8, '2018-12-14 18:56:46', '', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (326, 649, 247, 2, 1, 0, 8, '2018-12-15 18:56:46', '', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (327, 655, 248, 2, 1, 0, 8, '2018-12-17 18:56:46', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (329, 674, 251, 2, 1, 0, 8, '2018-12-19 18:56:46', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (330, 575, 222, 3, 1, 0, 8, '2018-12-03 19:54:43', '吴文龙', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (331, 577, 223, 3, 1, 0, 8, '2018-12-04 19:54:43', '吴文龙', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (332, 677, 257, 2, 1, 0, 8, '2018-12-20 18:56:46', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (333, 682, 258, 2, 1, 0, 8, '2018-12-21 18:56:46', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (334, 686, 259, 2, 1, 0, 8, '2018-12-22 18:56:46', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (335, 578, 224, 3, 1, 0, 8, '2018-12-05 19:54:43', '吴文龙', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (336, 689, 260, 2, 1, 0, 8, '2018-12-24 18:56:46', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (337, 691, 261, 2, 1, 0, 8, '2018-12-25 18:56:46', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (338, 579, 225, 3, 1, 0, 8, '2018-12-06 19:54:43', '吴文龙', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (339, 692, 262, 2, 1, 0, 8, '2018-12-26 18:56:46', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (340, 694, 263, 2, 1, 0, 4, '2018-12-27 18:56:46', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (341, 696, NULL, 2, -1, 0, 0, '2018-12-28 09:34:55', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (342, 699, NULL, 2, -1, 0, 0, '2018-12-29 09:34:55', NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (343, 586, 125, 9, 1, 0, 8, '2018-12-05 19:32:15', '杨鹏', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (345, 588, 227, 3, 1, 0, 8, '2018-12-08 19:54:43', '吴文龙', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (346, 589, 228, 3, 1, 0, 8, '2018-12-09 19:54:43', '吴文龙', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (347, 590, NULL, 3, -1, 0, 0, '2018-12-10 10:26:41', '吴文龙', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (348, 596, 126, 9, 1, 0, 8, '2018-12-06 19:32:15', '杨鹏', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (349, 597, 230, 3, 1, 0, 8, '2018-12-11 19:54:43', '吴文龙', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (350, 602, 231, 3, 1, 0, 8, '2018-12-12 19:54:43', '吴文龙', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (351, 618, 232, 3, 1, 0, 8, '2018-12-13 19:54:43', '吴文龙', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (352, 620, 234, 3, 1, 0, 8, '2018-12-14 19:54:43', '吴文龙', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (353, 626, 235, 3, 1, 0, 8, '2018-12-15 19:54:43', '吴文龙', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (354, 634, 236, 3, 1, 0, 8, '2018-12-16 19:54:43', '吴文龙', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (355, 684, NULL, 3, 1, 0, 0, '2018-12-18 10:26:41', '吴文龙', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (356, 609, 127, 9, 1, 0, 8, '2018-12-20 10:26:41', '杨鹏', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (358, 621, 148, 9, 1, 0, 8, '2018-12-08 17:36:28', '杨鹏', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (359, 622, 149, 9, 1, 0, 8, '2018-12-09 17:36:28', '杨鹏', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (360, 623, 150, 9, 1, 0, 8, '2018-12-10 17:36:28', '杨鹏', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (361, 624, 151, 9, 1, 0, 8, '2018-12-11 17:36:28', '杨鹏', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (362, 625, 152, 9, 1, 0, 8, '2018-12-12 17:36:28', '杨鹏', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (363, 629, 153, 9, 1, 0, 8, '2018-12-13 17:36:28', '杨鹏', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (364, 687, 242, 3, 1, 0, 8, '2018-12-20 10:26:41', '吴文龙', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (365, 630, 157, 9, 1, 0, 8, '2018-12-14 18:52:54', '杨鹏', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (366, 631, 158, 9, 1, 0, 8, '2018-12-15 18:52:54', '杨鹏', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (367, 632, 159, 9, 1, 0, 8, '2018-12-16 18:52:54', '杨鹏', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (368, 633, 160, 9, 1, 0, 8, '2018-12-17 18:52:54', '杨鹏', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (369, 688, 243, 3, 1, 0, 8, '2018-12-21 10:26:41', '吴文龙', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (370, 690, 250, 3, 1, 0, 8, '2018-12-22 10:26:41', '吴文龙', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (371, 693, 252, 3, 1, 0, 8, '2018-12-25 10:26:41', '吴文龙', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (372, 697, 254, 3, 1, 0, 8, '2018-12-27 10:26:41', '吴文龙', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (373, 698, 255, 3, 1, 0, 8, '2018-12-28 10:26:41', '吴文龙', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (374, 700, 256, 3, 1, 0, 8, '2018-12-29 10:26:41', '吴文龙', NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (376, 730, 278, 3, 1, 1, 8, '2019-01-08 20:10:53', '吴文龙', NULL, '杨智', 1);
INSERT INTO `attendance_record` VALUES (377, 745, NULL, NULL, -2, 0, 0, NULL, NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (378, 746, NULL, NULL, -1, 0, 0, NULL, NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (379, 747, NULL, NULL, -3, 0, 0, NULL, NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (380, 748, NULL, NULL, -3, 0, 0, NULL, NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (381, 749, NULL, NULL, -1, 0, 0, NULL, NULL, NULL, NULL, 1);
INSERT INTO `attendance_record` VALUES (382, 585, 226, 3, 1, 0, 8, '2018-12-07 19:54:43', '吴文龙', NULL, NULL, 1);

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company`  (
  `company_id` bigint(255) NOT NULL AUTO_INCREMENT COMMENT '公司id',
  `company_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司名称',
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司图标',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `create_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `update_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_delete` int(11) UNSIGNED NULL DEFAULT 1 COMMENT '是否有效0无效1有效',
  PRIMARY KEY (`company_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 77 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES (1, '北京柯莱特信息有限公司', 'upload/bd7fcb6e-eabf-4363-b8bb-c0a9fb6e1ca9.jpg', '2019-01-21 15:19:40', '标哥', NULL, NULL, 1);
INSERT INTO `company` VALUES (72, '北京柯莱特有限公司北京柯莱特有限公司北京柯莱特有限公司北京柯', '524cd82f-ba0f-4641-b30b-5d73d3bf718e.txt', '2019-01-24 20:10:48', 'admin', NULL, NULL, 1);
INSERT INTO `company` VALUES (73, '北京柯莱特信息有限公司', '56174b7a-af24-4d46-97b5-65da2a3c9e0a.jpeg', '2019-01-25 10:21:36', 'admin', NULL, NULL, 1);
INSERT INTO `company` VALUES (74, '柯莱特', 'd339d193-836b-4c9d-96f0-731ec426aad7.jpeg', '2019-01-25 10:22:04', 'admin', '2019-01-25 11:18:44', 'admin', 1);
INSERT INTO `company` VALUES (75, '北京柯莱特信息有限公司', 'b1b7d60d-042b-4fa0-aedd-6040d3e4f0d3.jpeg', '2019-01-25 11:12:50', 'admin', NULL, NULL, 1);
INSERT INTO `company` VALUES (76, '北京柯莱特信息有限公司', '47ce58ae-d99e-40e4-97bb-4a5ad00c2eb9.jpeg', '2019-01-25 11:50:52', 'admin', NULL, NULL, 1);
INSERT INTO `company` VALUES (77, '北京柯莱特信息有限公司', '9707f0d1-53d4-404d-b471-0831bf32b4fa.png', '2019-03-14 19:58:10', 'admin', NULL, NULL, 1);

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `company_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '公司id',
  `company_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司名称',
  `manager_name` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理员姓名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `identify` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份证号',
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '盐值',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机',
  `gender` int(11) NULL DEFAULT NULL COMMENT '性别0女，1男',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `workarea_id` bigint(20) NULL DEFAULT NULL COMMENT '工作区域id',
  `workarea_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作区域地址',
  `is_super` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '是否超级管理员，1超管2普管',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `create_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `update_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_delete` int(11) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否有效0无效，1有效',
  PRIMARY KEY (`id`, `is_delete`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES (1, 1, '柯莱特', '郭标', '01B2EDD6023F3252E95FEAE4A78E172B', '123@camelot.com', '612731199107777777', '180e8c65-cd31-4028-a4db-5f6c2715b2ae', '10987654321', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1);
INSERT INTO `manager` VALUES (2, 1, '柯莱特', '刘威', '482652725493B0065FEA03C0B26AD5AE', '111@qq.com', '111111111111111111', 'c80d17c5-9e09-4568-91da-f8475a3f8b43', '11111111111', NULL, NULL, 1, '延安', 2, NULL, 'suwenwen', NULL, NULL, 1);
INSERT INTO `manager` VALUES (3, 1, '北京柯莱特技术股份有限公司', '张明新', 'F62A8F39EB9D76F19DABF21FD4AE7575', '100@qq.com', '430723199602240060', '7bfbaeda-e1a7-498e-a08a-2621ac582922', '18670699866', NULL, NULL, 2, '河南', 2, '2019-01-18 16:03:59', 'admin', NULL, NULL, 1);

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '用户id',
  `role` int(255) NULL DEFAULT NULL COMMENT '角色',
  `is_read` int(255) UNSIGNED NULL DEFAULT 0 COMMENT '是否已读，1已读，0未读，默认0',
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消息：时间+发起人名字',
  `create_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `is_delete` int(255) UNSIGNED NULL DEFAULT 1 COMMENT '是否有效1有效，0无效',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 385 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES (112, 3, 1, 0, '2019年01月21日您收到一条董瑞2019年01月21日的忘打卡申请的申请，请及时处理', '董瑞', '2019-01-22 09:55:56', NULL, NULL, 1);
INSERT INTO `message` VALUES (113, 3, 1, 0, '2019年01月21日您收到一条董瑞2019年01月21日的忘打卡申请的申请，请及时处理', '董瑞', '2019-01-22 09:56:34', NULL, NULL, 1);
INSERT INTO `message` VALUES (114, 3, 1, 0, '2019年01月16日您收到一条董瑞2019年01月16日的忘打卡申请的申请，请及时处理', '董瑞', '2019-01-22 10:23:08', NULL, NULL, 1);
INSERT INTO `message` VALUES (118, 3, 1, 0, '2019年01月21日您收到一条董瑞2019年01月21日的忘打卡申请的申请，请及时处理', '董瑞', '2019-01-22 11:30:07', NULL, NULL, 1);
INSERT INTO `message` VALUES (125, 3, 1, 0, '2019年01月22日11:57:49, 您收到一条董瑞2019年01月21日的忘打卡申请的催办消息，请及时处理', '董瑞', '2019-01-22 11:59:38', NULL, NULL, 1);
INSERT INTO `message` VALUES (126, 3, 1, 0, '2019年01月22日12:00:03, 您收到一条董瑞2019年01月21日的忘打卡申请的催办消息，请及时处理', '董瑞', '2019-01-22 12:01:52', NULL, NULL, 1);
INSERT INTO `message` VALUES (127, 3, 1, 0, '2019年01月22日12:04:31, 您收到一条董瑞2019年01月的月度考勤申请的催办消息，请及时处理', '董瑞', '2019-01-22 12:06:20', NULL, NULL, 1);
INSERT INTO `message` VALUES (128, 3, 1, 0, '2019年01月22日13:07:58, 您收到一条董瑞2019年01月21日的忘打卡申请的催办消息，请及时处理', '董瑞', '2019-01-22 13:09:47', NULL, NULL, 1);
INSERT INTO `message` VALUES (129, 3, 1, 0, '2019年01月22日13:08:04, 您收到一条董瑞2019年01月21日的忘打卡申请的催办消息，请及时处理', '董瑞', '2019-01-22 13:09:53', NULL, NULL, 1);
INSERT INTO `message` VALUES (130, 3, 1, 0, '2019年01月22日13:11:22, 您收到一条董瑞2019年01月21日的忘打卡申请的催办消息，请及时处理', '董瑞', '2019-01-22 13:13:11', NULL, NULL, 1);
INSERT INTO `message` VALUES (131, 3, 1, 0, '2019年01月22日13:20:20, 您收到一条董瑞2019年01月21日的忘打卡申请的催办消息，请及时处理', '董瑞', '2019-01-22 13:22:09', NULL, NULL, 1);
INSERT INTO `message` VALUES (132, 3, 1, 0, '2019年01月22日13:20:42, 您收到一条董瑞2019年01月21日的忘打卡申请的催办消息，请及时处理', '董瑞', '2019-01-22 13:22:31', NULL, NULL, 1);
INSERT INTO `message` VALUES (133, 3, 1, 0, '2019年01月22日13:20:51, 您收到一条董瑞2019年01月21日的忘打卡申请的催办消息，请及时处理', '董瑞', '2019-01-22 13:22:40', NULL, NULL, 1);
INSERT INTO `message` VALUES (134, 3, 1, 0, '2019年01月22日13:22:37, 您收到一条董瑞2019年01月21日的忘打卡申请的催办消息，请及时处理', '董瑞', '2019-01-22 13:24:26', NULL, NULL, 1);
INSERT INTO `message` VALUES (135, 3, 1, 0, '2019年01月22日13:22:41, 您收到一条董瑞2019年01月21日的忘打卡申请的催办消息，请及时处理', '董瑞', '2019-01-22 13:24:30', NULL, NULL, 1);
INSERT INTO `message` VALUES (136, 3, 1, 0, '2019年01月22日13:22:59, 您收到一条董瑞2019年01月21日的忘打卡申请的催办消息，请及时处理', '董瑞', '2019-01-22 13:24:48', NULL, NULL, 1);
INSERT INTO `message` VALUES (137, 3, 1, 0, '2019年01月22日13:35:22, 您收到一条董瑞2019年01月21日的忘打卡申请的催办消息，请及时处理', '董瑞', '2019-01-22 13:37:11', NULL, NULL, 1);
INSERT INTO `message` VALUES (138, 3, 1, 0, '2019年01月22日13:36:06, 您收到一条董瑞2019年01月21日的忘打卡申请的催办消息，请及时处理', '董瑞', '2019-01-22 13:37:55', NULL, NULL, 1);
INSERT INTO `message` VALUES (139, 3, 1, 0, '2019年01月22日13:36:12, 您收到一条董瑞2019年01月21日的忘打卡申请的催办消息，请及时处理', '董瑞', '2019-01-22 13:38:01', NULL, NULL, 1);
INSERT INTO `message` VALUES (140, 3, 1, 0, '2019年01月22日13:36:25, 您收到一条董瑞2019年01月21日的忘打卡申请的催办消息，请及时处理', '董瑞', '2019-01-22 13:38:14', NULL, NULL, 1);
INSERT INTO `message` VALUES (141, 1, 3, 0, '2019年01月22日13:45您收到一条刘威2019年01月10日的忘打卡申请的回复，请及时处理', '刘威', '2019-01-22 13:47:09', NULL, NULL, 1);
INSERT INTO `message` VALUES (142, 1, 3, 0, '2019年01月22日14:58您收到一条刘威2019年01月10日的忘打卡申请的回复，请及时处理', '刘威', '2019-01-22 15:00:39', NULL, NULL, 1);
INSERT INTO `message` VALUES (143, 1, 3, 0, '2019年01月22日15:02您收到一条刘威2019年01月10日的忘打卡申请的回复，请及时处理', '刘威', '2019-01-22 15:04:37', NULL, NULL, 1);
INSERT INTO `message` VALUES (144, 1, 3, 0, '2019年01月22日15:04您收到一条刘威2018年12月的月度考勤申请的回复，请及时处理', '刘威', '2019-01-22 15:06:03', NULL, NULL, 1);
INSERT INTO `message` VALUES (146, 1, 1, 0, '2019年01月22日15:36:43, 您收到一条苏文文2019年01月的月度考勤申请的催办消息，请及时处理', '苏文文', '2019-01-22 15:38:34', NULL, NULL, 1);
INSERT INTO `message` VALUES (151, 2, 1, 0, '2019年01月22日15:41:49, 您收到一条杨鹏2019年01月的月度考勤申请的催办消息，请及时处理', '杨鹏', '2019-01-22 15:43:38', NULL, NULL, 1);
INSERT INTO `message` VALUES (152, 2, 1, 0, '2019年01月22日15:43:04, 您收到一条杨鹏2019年01月的月度考勤申请的催办消息，请及时处理', '杨鹏', '2019-01-22 15:44:54', NULL, NULL, 1);
INSERT INTO `message` VALUES (153, 2, 1, 0, '2019年01月22日15:43:30, 您收到一条杨鹏2019年01月的月度考勤申请的催办消息，请及时处理', '杨鹏', '2019-01-22 15:45:20', NULL, NULL, 1);
INSERT INTO `message` VALUES (154, 2, 1, 0, '2019年01月22日15:45:27, 您收到一条杨鹏2019年01月的月度考勤申请的催办消息，请及时处理', '杨鹏', '2019-01-22 15:47:17', NULL, NULL, 1);
INSERT INTO `message` VALUES (157, 2, 1, 0, '2019年01月22日15:59:38, 您收到一条杨鹏2019年01月的月度考勤申请的催办消息，请及时处理', '杨鹏', '2019-01-22 16:01:28', NULL, NULL, 1);
INSERT INTO `message` VALUES (158, 2, 1, 0, '2019年01月22日16:00:02, 您收到一条杨鹏2019年01月的月度考勤申请的催办消息，请及时处理', '杨鹏', '2019-01-22 16:01:51', NULL, NULL, 1);
INSERT INTO `message` VALUES (159, 2, 1, 0, '2019年01月22日16:03:00, 您收到一条杨鹏2019年01月的月度考勤申请的催办消息，请及时处理', '杨鹏', '2019-01-22 16:04:50', NULL, NULL, 1);
INSERT INTO `message` VALUES (162, 2, 1, 0, '2019年01月22日16:11:18, 您收到一条杨鹏2019年01月的月度考勤申请的催办消息，请及时处理', '杨鹏', '2019-01-22 16:13:08', NULL, NULL, 1);
INSERT INTO `message` VALUES (163, 1, 1, 0, '2019年01月22日16:13:35, 您收到一条苏文文2019年01月10日的忘打卡申请的催办消息，请及时处理', '苏文文', '2019-01-22 16:15:26', NULL, NULL, 1);
INSERT INTO `message` VALUES (164, 1, 1, 0, '2019年01月22日16:13:42, 您收到一条苏文文2019年01月10日的忘打卡申请的催办消息，请及时处理', '苏文文', '2019-01-22 16:15:33', NULL, NULL, 1);
INSERT INTO `message` VALUES (166, 2, 1, 0, '2019年01月22日16:19:56, 您收到一条杨鹏2019年01月的月度考勤申请的催办消息，请及时处理', '杨鹏', '2019-01-22 16:21:46', NULL, NULL, 1);
INSERT INTO `message` VALUES (167, 1, 1, 0, '2019年01月22日16:26:06, 您收到一条苏文文2019年01月10日的忘打卡申请的催办消息，请及时处理', '苏文文', '2019-01-22 16:27:57', NULL, NULL, 1);
INSERT INTO `message` VALUES (168, 1, 1, 0, '2019年01月22日16:26:16, 您收到一条苏文文2019年01月10日的忘打卡申请的催办消息，请及时处理', '苏文文', '2019-01-22 16:28:07', NULL, NULL, 1);
INSERT INTO `message` VALUES (170, 1, 1, 0, '2019年01月22日16:26:41, 您收到一条苏文文2019年01月10日的忘打卡申请的催办消息，请及时处理', '苏文文', '2019-01-22 16:28:33', NULL, NULL, 1);
INSERT INTO `message` VALUES (171, 1, 1, 0, '2019年01月22日16:26:45, 您收到一条苏文文2019年01月10日的忘打卡申请的催办消息，请及时处理', '苏文文', '2019-01-22 16:28:36', NULL, NULL, 1);
INSERT INTO `message` VALUES (172, 2, 1, 1, '2019年01月22日16:27:22, 您收到一条杨鹏2019年01月的月度考勤申请的催办消息，请及时处理', '杨鹏', '2019-01-22 16:29:12', NULL, NULL, 1);
INSERT INTO `message` VALUES (174, 1, 1, 0, '2019年01月22日16:30:41, 您收到一条苏文文2019年01月10日的忘打卡申请的催办消息，请及时处理', '苏文文', '2019-01-22 16:32:32', NULL, NULL, 1);
INSERT INTO `message` VALUES (175, 1, 1, 0, '2019年01月22日16:30:45, 您收到一条苏文文2019年01月10日的忘打卡申请的催办消息，请及时处理', '苏文文', '2019-01-22 16:32:37', NULL, NULL, 1);
INSERT INTO `message` VALUES (176, 1, 1, 0, '2019年01月22日16:30:50, 您收到一条苏文文2019年01月10日的忘打卡申请的催办消息，请及时处理', '苏文文', '2019-01-22 16:32:42', NULL, NULL, 1);
INSERT INTO `message` VALUES (177, 1, 1, 0, '2019年01月22日16:31:01, 您收到一条苏文文2019年01月10日的忘打卡申请的催办消息，请及时处理', '苏文文', '2019-01-22 16:32:52', NULL, NULL, 1);
INSERT INTO `message` VALUES (178, 1, 1, 0, '2019年01月22日16:31:05, 您收到一条苏文文2019年01月10日的忘打卡申请的催办消息，请及时处理', '苏文文', '2019-01-22 16:32:56', NULL, NULL, 1);
INSERT INTO `message` VALUES (179, 1, 1, 0, '2019年01月22日16:31:10, 您收到一条苏文文2019年01月10日的忘打卡申请的催办消息，请及时处理', '苏文文', '2019-01-22 16:33:01', NULL, NULL, 1);
INSERT INTO `message` VALUES (180, 1, 1, 0, '2019年01月22日16:31:34, 您收到一条苏文文2019年01月10日的忘打卡申请的催办消息，请及时处理', '苏文文', '2019-01-22 16:33:25', NULL, NULL, 1);
INSERT INTO `message` VALUES (181, 1, 1, 0, '2019年01月22日16:31:35, 您收到一条苏文文2019年01月10日的忘打卡申请的催办消息，请及时处理', '苏文文', '2019-01-22 16:33:26', NULL, NULL, 1);
INSERT INTO `message` VALUES (182, 1, 1, 0, '2019年01月22日16:31:35, 您收到一条苏文文2019年01月10日的忘打卡申请的催办消息，请及时处理', '苏文文', '2019-01-22 16:33:27', NULL, NULL, 1);
INSERT INTO `message` VALUES (183, 1, 1, 0, '2019年01月22日16:31:36, 您收到一条苏文文2019年01月10日的忘打卡申请的催办消息，请及时处理', '苏文文', '2019-01-22 16:33:27', NULL, NULL, 1);
INSERT INTO `message` VALUES (184, 1, 1, 0, '2019年01月22日16:31:36, 您收到一条苏文文2019年01月10日的忘打卡申请的催办消息，请及时处理', '苏文文', '2019-01-22 16:33:27', NULL, NULL, 1);
INSERT INTO `message` VALUES (185, 1, 1, 0, '2019年01月22日16:31:36, 您收到一条苏文文2019年01月10日的忘打卡申请的催办消息，请及时处理', '苏文文', '2019-01-22 16:33:27', NULL, NULL, 1);
INSERT INTO `message` VALUES (186, 1, 1, 1, '2019年01月22日16:32:16, 您收到一条苏文文2019年01月10日的忘打卡申请的催办消息，请及时处理', '苏文文', '2019-01-22 16:34:07', NULL, NULL, 1);
INSERT INTO `message` VALUES (188, 1, 1, 0, '2019年01月22日16:36:09, 您收到一条苏文文2019年01月10日的忘打卡申请的催办消息，请及时处理', '苏文文', '2019-01-22 16:38:00', NULL, NULL, 1);
INSERT INTO `message` VALUES (190, 1, 1, 0, '2019年01月22日16:39:33, 您收到一条苏文文2019年01月10日的忘打卡申请的催办消息，请及时处理', '苏文文', '2019-01-22 16:41:24', NULL, NULL, 1);
INSERT INTO `message` VALUES (191, 1, 1, 0, '2019年01月22日16:42:12, 您收到一条苏文文2019年01月10日的忘打卡申请的催办消息，请及时处理', '苏文文', '2019-01-22 16:44:04', NULL, NULL, 1);
INSERT INTO `message` VALUES (192, 1, 1, 0, '2019年01月22日16:42:49, 您收到一条苏文文2019年01月10日的忘打卡申请的催办消息，请及时处理', '苏文文', '2019-01-22 16:44:40', NULL, NULL, 1);
INSERT INTO `message` VALUES (193, 1, 1, 0, '2019年01月22日16:43:57, 您收到一条苏文文2019年01月10日的忘打卡申请的催办消息，请及时处理', '苏文文', '2019-01-22 16:45:48', NULL, NULL, 1);
INSERT INTO `message` VALUES (198, 3, 3, 0, '2019年01月22日17:35您收到一条杨智2019年01月08日的忘打卡申请的回复，请及时处理', '杨智', '2019-01-22 17:37:24', NULL, NULL, 1);
INSERT INTO `message` VALUES (199, 1, 3, 0, '2019年01月22日17:46您收到一条刘威2018年12月的月度考勤申请的回复，请及时处理', '刘威', '2019-01-22 17:48:12', NULL, NULL, 1);
INSERT INTO `message` VALUES (200, 1, 3, 0, '2019年01月22日17:51您收到一条刘威2018年12月的月度考勤申请的回复，请及时处理', '刘威', '2019-01-22 17:53:27', NULL, NULL, 1);
INSERT INTO `message` VALUES (201, 3, 1, 0, '2019年01月22日17:56:41, 您收到一条董瑞2019年01月的月度考勤申请的回复消息，请及时处理', '董瑞', '2019-01-22 17:58:31', NULL, NULL, 1);
INSERT INTO `message` VALUES (202, 3, 1, 0, '2019年01月22日18:12:29, 您收到一条董瑞2019年01月21日的忘打卡申请的催办消息，请及时处理', '董瑞', '2019-01-22 18:14:19', NULL, NULL, 1);
INSERT INTO `message` VALUES (203, 3, 1, 0, '2019年01月22日18:12:34, 您收到一条董瑞2019年01月21日的忘打卡申请的催办消息，请及时处理', '董瑞', '2019-01-22 18:14:24', NULL, NULL, 1);
INSERT INTO `message` VALUES (204, 3, 1, 0, '2019年01月22日20:17:49, 您收到一条董瑞2019年01月21日的忘打卡申请的催办消息，请及时处理', '董瑞', '2019-01-22 20:19:38', NULL, NULL, 1);
INSERT INTO `message` VALUES (205, 3, 1, 0, '2019年01月22日20:17:51, 您收到一条董瑞2019年01月21日的忘打卡申请的催办消息，请及时处理', '董瑞', '2019-01-22 20:19:40', NULL, NULL, 1);
INSERT INTO `message` VALUES (206, 3, 3, 0, '2019年01月23日09:33您收到一条杨智2019年01月08日的忘打卡申请的回复，请及时处理', '杨智', '2019-01-23 09:35:32', NULL, NULL, 1);
INSERT INTO `message` VALUES (207, 3, 3, 0, '2019年01月23日09:33您收到一条杨智2019年01月08日的忘打卡申请的回复，请及时处理', '杨智', '2019-01-23 09:35:45', NULL, NULL, 1);
INSERT INTO `message` VALUES (208, 3, 3, 0, '2019年01月23日09:37您收到一条刘威2018年12月的月度考勤申请的回复，请及时处理', '刘威', '2019-01-23 09:39:32', NULL, NULL, 1);
INSERT INTO `message` VALUES (212, 3, 3, 0, '2019年01月23日10:00您收到一条杨智2019年01月08日的忘打卡申请的回复，请及时处理', '杨智', '2019-01-23 10:02:25', NULL, NULL, 1);
INSERT INTO `message` VALUES (214, 1, 1, 0, '2019年01月23日10:11:20, 您收到一条苏文文2019年01月的月度考勤申请的回复消息，请及时处理', '苏文文', '2019-01-23 10:13:10', NULL, NULL, 1);
INSERT INTO `message` VALUES (215, 1, 1, 1, '2019年01月23日10:11:38, 您收到一条苏文文2019年01月的月度考勤申请的回复消息，请及时处理', '苏文文', '2019-01-23 10:13:28', NULL, NULL, 1);
INSERT INTO `message` VALUES (216, 3, 3, 0, '2019年01月23日10:11您收到一条杨智2019年01月08日的忘打卡申请的回复，请及时处理', '杨智', '2019-01-23 10:13:48', NULL, NULL, 1);
INSERT INTO `message` VALUES (217, 3, 3, 0, '2019年01月23日10:12您收到一条杨智2019年01月08日的忘打卡申请的回复，请及时处理', '杨智', '2019-01-23 10:14:17', NULL, NULL, 1);
INSERT INTO `message` VALUES (218, 3, 1, 0, '2019年01月23日10:12:29, 您收到一条董瑞2019年01月21日的忘打卡申请的催办消息，请及时处理', '董瑞', '2019-01-23 10:14:19', NULL, NULL, 1);
INSERT INTO `message` VALUES (219, 3, 1, 0, '2019年01月23日您收到一条董瑞2019年01月23日的忘打卡申请的申请，请及时处理', '董瑞', '2019-01-23 10:18:29', NULL, NULL, 1);
INSERT INTO `message` VALUES (220, 3, 3, 0, '2019年01月23日10:34您收到一条杨智2019年01月08日的忘打卡申请的回复，请及时处理', '杨智', '2019-01-23 10:35:50', NULL, NULL, 1);
INSERT INTO `message` VALUES (221, 3, 3, 0, '2019年01月23日10:34您收到一条杨智2019年01月08日的忘打卡申请的回复，请及时处理', '杨智', '2019-01-23 10:36:17', NULL, NULL, 1);
INSERT INTO `message` VALUES (222, 3, 3, 0, '2019年01月23日10:34您收到一条杨智2018年12月的月度考勤申请的回复，请及时处理', '杨智', '2019-01-23 10:36:39', NULL, NULL, 1);
INSERT INTO `message` VALUES (223, 2, 1, 0, '2019年01月23日11:08:20, 您收到一条杨鹏2019年01月的月度考勤申请的回复消息，请及时处理', '杨鹏', '2019-01-23 11:10:09', NULL, NULL, 1);
INSERT INTO `message` VALUES (224, 4, 1, 0, '月度考勤审批', '方策', '2019-01-23 11:41:01', NULL, NULL, 1);
INSERT INTO `message` VALUES (225, 3, 1, 0, '2019年01月23日12:00:13, 您收到一条董瑞2019年01月21日的忘打卡申请的催办消息，请及时处理', '董瑞', '2019-01-23 12:02:04', NULL, NULL, 1);
INSERT INTO `message` VALUES (226, 3, 1, 0, '2019年01月23日12:03:04, 您收到一条董瑞2019年01月21日的忘打卡申请的催办消息，请及时处理', '董瑞', '2019-01-23 12:04:54', NULL, NULL, 1);
INSERT INTO `message` VALUES (227, 3, 1, 0, '2019年01月23日12:03:29, 您收到一条董瑞2019年01月21日的忘打卡申请的催办消息，请及时处理', '董瑞', '2019-01-23 12:05:19', NULL, NULL, 1);
INSERT INTO `message` VALUES (228, 4, 3, 0, '2019年01月23日12:09您收到一条杨智2018年12月的月度考勤申请的回复，请及时处理', '杨智', '2019-01-23 12:11:28', NULL, NULL, 1);
INSERT INTO `message` VALUES (229, 3, 1, 0, '2019年01月23日12:10:35, 您收到一条董瑞2019年01月21日的忘打卡申请的催办消息，请及时处理', '董瑞', '2019-01-23 12:12:26', NULL, NULL, 1);
INSERT INTO `message` VALUES (230, 3, 1, 0, '2019年01月23日13:43:05, 您收到一条董瑞2019年01月21日的忘打卡申请的催办消息，请及时处理', '董瑞', '2019-01-23 13:44:55', NULL, NULL, 1);
INSERT INTO `message` VALUES (231, 3, 1, 0, '2019年01月23日13:43:41, 您收到一条董瑞2019年01月21日的忘打卡申请的催办消息，请及时处理', '董瑞', '2019-01-23 13:45:32', NULL, NULL, 1);
INSERT INTO `message` VALUES (232, 3, 1, 0, '2019年01月23日13:59:18, 您收到一条董瑞2019年01月21日的忘打卡申请的催办消息，请及时处理', '董瑞', '2019-01-23 14:01:08', NULL, NULL, 1);
INSERT INTO `message` VALUES (233, 3, 1, 0, '2019年01月23日13:59:42, 您收到一条董瑞2019年01月21日的忘打卡申请的催办消息，请及时处理', '董瑞', '2019-01-23 14:01:33', NULL, NULL, 1);
INSERT INTO `message` VALUES (234, 3, 1, 0, '2019年01月23日14:03:07, 您收到一条董瑞2019年01月21日的忘打卡申请的催办消息，请及时处理', '董瑞', '2019-01-23 14:04:58', NULL, NULL, 1);
INSERT INTO `message` VALUES (235, 3, 1, 0, '2019年01月23日14:03:16, 您收到一条董瑞2019年01月21日的忘打卡申请的催办消息，请及时处理', '董瑞', '2019-01-23 14:05:07', NULL, NULL, 1);
INSERT INTO `message` VALUES (236, 3, 1, 0, '2019年01月23日14:03:39, 您收到一条董瑞2019年01月21日的忘打卡申请的催办消息，请及时处理', '董瑞', '2019-01-23 14:05:29', NULL, NULL, 1);
INSERT INTO `message` VALUES (237, 3, 1, 0, '2019年01月23日14:04:31, 您收到一条董瑞2019年01月21日的忘打卡申请的催办消息，请及时处理', '董瑞', '2019-01-23 14:06:22', NULL, NULL, 1);
INSERT INTO `message` VALUES (238, 3, 1, 0, '2019年01月23日14:05:11, 您收到一条董瑞2019年01月21日的忘打卡申请的催办消息，请及时处理', '董瑞', '2019-01-23 14:07:01', NULL, NULL, 1);
INSERT INTO `message` VALUES (239, 3, 1, 0, '2019年01月23日14:11:58, 您收到一条董瑞2019年01月21日的忘打卡申请的催办消息，请及时处理', '董瑞', '2019-01-23 14:13:49', NULL, NULL, 1);
INSERT INTO `message` VALUES (240, 3, 1, 0, '2019年01月23日14:12:18, 您收到一条董瑞2019年01月21日的忘打卡申请的催办消息，请及时处理', '董瑞', '2019-01-23 14:14:09', NULL, NULL, 1);
INSERT INTO `message` VALUES (241, 3, 1, 0, '2019年01月23日14:13:01, 您收到一条董瑞2019年01月21日的忘打卡申请的催办消息，请及时处理', '董瑞', '2019-01-23 14:14:51', NULL, NULL, 1);
INSERT INTO `message` VALUES (242, 3, 1, 0, '2019年01月23日14:13:44, 您收到一条董瑞2019年01月21日的忘打卡申请的催办消息，请及时处理', '董瑞', '2019-01-23 14:15:34', NULL, NULL, 1);
INSERT INTO `message` VALUES (243, 3, 1, 0, '2019年01月23日14:13:57, 您收到一条董瑞2019年01月21日的忘打卡申请的催办消息，请及时处理', '董瑞', '2019-01-23 14:15:47', NULL, NULL, 1);
INSERT INTO `message` VALUES (244, 4, 1, 0, '您收到一条系统的月度考勤申请的消息，请及时处理', '方策', '2019-01-23 14:16:30', NULL, NULL, 1);
INSERT INTO `message` VALUES (253, 3, 1, 0, '您收到一条系统的月度考勤申请的消息，请及时处理', '吴文龙', '2019-01-23 14:26:12', NULL, NULL, 1);
INSERT INTO `message` VALUES (254, 4, 1, 0, '您收到一条系统的月度考勤申请的消息，请及时处理', '方策', '2019-01-23 14:26:12', NULL, NULL, 1);
INSERT INTO `message` VALUES (255, 6, 1, 0, '您收到一条系统的月度考勤申请的消息，请及时处理', '陈锦磊', '2019-01-23 14:26:12', NULL, NULL, 1);
INSERT INTO `message` VALUES (256, 8, 1, 0, '您收到一条系统的月度考勤申请的消息，请及时处理', '蒲勇', '2019-01-23 14:26:12', NULL, NULL, 1);
INSERT INTO `message` VALUES (257, 9, 1, 0, '您收到一条系统的月度考勤申请的消息，请及时处理', '杨鹏', '2019-01-23 14:26:12', NULL, NULL, 1);
INSERT INTO `message` VALUES (258, 1, 1, 1, '您收到一条系统的月度考勤申请的消息，请及时处理', '苏文文', '2019-01-23 14:26:12', NULL, NULL, 1);
INSERT INTO `message` VALUES (266, 3, 1, 0, '2019年01月23日14:34:59, 您收到一条董瑞2019年01月21日的忘打卡申请的催办消息，请及时处理', '董瑞', '2019-01-23 14:36:59', NULL, NULL, 1);
INSERT INTO `message` VALUES (267, 3, 1, 0, '2019年01月23日14:35:04, 您收到一条董瑞2019年01月21日的忘打卡申请的催办消息，请及时处理', '董瑞', '2019-01-23 14:37:03', NULL, NULL, 1);
INSERT INTO `message` VALUES (268, 3, 1, 0, '2019年01月23日14:35:04, 您收到一条董瑞2019年01月21日的忘打卡申请的催办消息，请及时处理', '董瑞', '2019-01-23 14:37:03', NULL, NULL, 1);
INSERT INTO `message` VALUES (269, 2, 2, 0, '2019年01月23日14:48:52, 您收到一条程慧茹2019年01月的月度考勤申请的催办消息，请及时处理', 'admin', '2019-01-23 14:50:42', NULL, NULL, 1);
INSERT INTO `message` VALUES (270, 3, 3, 0, '2019年01月23日15:08您收到一条杨智2018年12月23日的忘打卡申请的回复，请及时处理', '杨智', '2019-01-23 15:10:36', NULL, NULL, 1);
INSERT INTO `message` VALUES (271, 3, 1, 0, '2019年01月23日15:16:14, 您收到一条董瑞2019年01月21日的忘打卡申请的催办消息，请及时处理', '董瑞', '2019-01-23 15:18:04', NULL, NULL, 1);
INSERT INTO `message` VALUES (272, 3, 1, 0, '2019年01月23日15:18:35, 您收到一条董瑞2019年01月21日的忘打卡申请的催办消息，请及时处理', '董瑞', '2019-01-23 15:20:26', NULL, NULL, 1);
INSERT INTO `message` VALUES (273, 2, 2, 0, '2019年01月23日15:27:51, 您收到一条程慧茹2019年01月的月度考勤申请的催办消息，请及时处理', 'admin', '2019-01-23 15:29:40', NULL, NULL, 1);
INSERT INTO `message` VALUES (274, 7, 3, 1, '2019年01月23日15:53您收到一条张泽祥2019年01月23日的忘打卡申请的回复，请及时处理', '张泽祥', '2019-01-23 15:55:20', NULL, NULL, 1);
INSERT INTO `message` VALUES (275, 3, 1, 0, '2019年01月18日您收到一条董瑞2019年01月18日的忘打卡申请的申请，请及时处理', '董瑞', '2019-01-23 19:28:58', NULL, NULL, 1);
INSERT INTO `message` VALUES (276, 3, 1, 0, '2019年01月18日您收到一条董瑞2019年01月18日的忘打卡申请的申请，请及时处理', '董瑞', '2019-01-23 19:29:03', NULL, NULL, 1);
INSERT INTO `message` VALUES (277, 2, 1, 0, '2019年01月24日09:28:34, 您收到一条杨鹏2019年01月的月度考勤申请的回复消息，请及时处理', '杨鹏', '2019-01-24 09:30:23', NULL, NULL, 1);
INSERT INTO `message` VALUES (278, 2, 1, 1, '2019年01月24日09:29:37, 您收到一条杨鹏2019年01月的月度考勤申请的回复消息，请及时处理', '杨鹏', '2019-01-24 09:31:26', NULL, NULL, 1);
INSERT INTO `message` VALUES (280, 3, 1, 0, '2019年01月11日您收到一条董瑞2019年01月11日的忘打卡申请的申请，请及时处理', '董瑞', '2019-01-24 10:22:06', NULL, NULL, 1);
INSERT INTO `message` VALUES (281, 2, 1, 1, '2019年01月24日10:35:00, 您收到一条杨鹏2019年01月的月度考勤申请的回复消息，请及时处理', '杨鹏', '2019-01-24 10:36:49', NULL, NULL, 1);
INSERT INTO `message` VALUES (282, 2, 2, 0, '2019年01月24日11:35:53, 您收到一条程慧茹2019年01月的月度考勤申请的催办消息，请及时处理', 'admin', '2019-01-24 11:37:44', NULL, NULL, 1);
INSERT INTO `message` VALUES (283, 3, 1, 0, '2019年01月24日13:44:17, 您收到一条董瑞2019年01月的月度考勤申请的催办消息，请及时处理', '董瑞', '2019-01-24 13:46:07', NULL, NULL, 1);
INSERT INTO `message` VALUES (284, 3, 1, 0, '2019年01月24日13:44:27, 您收到一条董瑞2019年01月的月度考勤申请的催办消息，请及时处理', '董瑞', '2019-01-24 13:46:18', NULL, NULL, 1);
INSERT INTO `message` VALUES (285, 3, 1, 0, '2019年01月24日13:46:41, 您收到一条董瑞2019年01月的月度考勤申请的催办消息，请及时处理', '董瑞', '2019-01-24 13:48:31', NULL, NULL, 1);
INSERT INTO `message` VALUES (286, 3, 1, 0, '2019年01月24日13:49:18, 您收到一条董瑞2019年01月的月度考勤申请的催办消息，请及时处理', '董瑞', '2019-01-24 13:51:09', NULL, NULL, 1);
INSERT INTO `message` VALUES (287, 3, 1, 0, '2019年01月24日13:51:38, 您收到一条董瑞2019年01月的月度考勤申请的催办消息，请及时处理', '董瑞', '2019-01-24 13:53:28', NULL, NULL, 1);
INSERT INTO `message` VALUES (288, 3, 1, 0, '2019年01月24日13:52:02, 您收到一条董瑞2019年01月的月度考勤申请的催办消息，请及时处理', '董瑞', '2019-01-24 13:53:52', NULL, NULL, 1);
INSERT INTO `message` VALUES (289, 3, 1, 0, '2019年01月24日13:52:18, 您收到一条董瑞2019年01月的月度考勤申请的催办消息，请及时处理', '董瑞', '2019-01-24 13:54:08', NULL, NULL, 1);
INSERT INTO `message` VALUES (290, 3, 1, 0, '2019年01月24日13:54:43, 您收到一条董瑞2019年01月的月度考勤申请的催办消息，请及时处理', '董瑞', '2019-01-24 13:56:33', NULL, NULL, 1);
INSERT INTO `message` VALUES (291, 3, 1, 0, '2019年01月24日13:55:18, 您收到一条董瑞2019年01月的月度考勤申请的催办消息，请及时处理', '董瑞', '2019-01-24 13:57:08', NULL, NULL, 1);
INSERT INTO `message` VALUES (292, 3, 1, 0, '2019年01月24日13:55:53, 您收到一条董瑞2019年01月的月度考勤申请的催办消息，请及时处理', '董瑞', '2019-01-24 13:57:44', NULL, NULL, 1);
INSERT INTO `message` VALUES (293, 3, 1, 0, '2019年01月24日13:56:21, 您收到一条董瑞2019年01月的月度考勤申请的催办消息，请及时处理', '董瑞', '2019-01-24 13:58:11', NULL, NULL, 1);
INSERT INTO `message` VALUES (294, 3, 1, 0, '2019年01月24日13:58:24, 您收到一条董瑞2019年01月的月度考勤申请的催办消息，请及时处理', '董瑞', '2019-01-24 14:00:14', NULL, NULL, 1);
INSERT INTO `message` VALUES (295, 3, 1, 0, '2019年01月24日14:01:25, 您收到一条董瑞2019年01月的月度考勤申请的催办消息，请及时处理', '董瑞', '2019-01-24 14:03:16', NULL, NULL, 1);
INSERT INTO `message` VALUES (296, 3, 1, 0, '2019年01月24日14:01:32, 您收到一条董瑞2019年01月的月度考勤申请的催办消息，请及时处理', '董瑞', '2019-01-24 14:03:22', NULL, NULL, 1);
INSERT INTO `message` VALUES (297, 3, 1, 0, '2019年01月24日14:02:40, 您收到一条董瑞2019年01月的月度考勤申请的催办消息，请及时处理', '董瑞', '2019-01-24 14:04:31', NULL, NULL, 1);
INSERT INTO `message` VALUES (298, 3, 1, 0, '2019年01月24日14:03:16, 您收到一条董瑞2019年01月的月度考勤申请的催办消息，请及时处理', '董瑞', '2019-01-24 14:05:06', NULL, NULL, 1);
INSERT INTO `message` VALUES (299, 3, 1, 0, '2019年01月23日您收到一条董瑞2019年01月23日的忘打卡申请的申请，请及时处理', '董瑞', '2019-01-24 14:06:04', NULL, NULL, 1);
INSERT INTO `message` VALUES (300, 3, 1, 0, '2019年01月23日您收到一条董瑞2019年01月23日的忘打卡申请的申请，请及时处理', '董瑞', '2019-01-24 14:06:10', NULL, NULL, 1);
INSERT INTO `message` VALUES (301, 3, 1, 0, '2019年01月18日您收到一条董瑞2019年01月18日的忘打卡申请的申请，请及时处理', '董瑞', '2019-01-24 14:07:20', NULL, NULL, 1);
INSERT INTO `message` VALUES (302, 3, 1, 0, '2019年01月24日14:07:30, 您收到一条董瑞2019年01月的月度考勤申请的催办消息，请及时处理', '董瑞', '2019-01-24 14:09:21', NULL, NULL, 1);
INSERT INTO `message` VALUES (303, 3, 1, 0, '2019年01月24日14:07:36, 您收到一条董瑞2019年01月的月度考勤申请的催办消息，请及时处理', '董瑞', '2019-01-24 14:09:26', NULL, NULL, 1);
INSERT INTO `message` VALUES (304, 3, 1, 0, '2019年01月24日14:08:09, 您收到一条董瑞2019年01月的月度考勤申请的催办消息，请及时处理', '董瑞', '2019-01-24 14:09:59', NULL, NULL, 1);
INSERT INTO `message` VALUES (305, 3, 1, 0, '2019年01月24日14:14:06, 您收到一条董瑞2019年01月的月度考勤申请的催办消息，请及时处理', '董瑞', '2019-01-24 14:15:56', NULL, NULL, 1);
INSERT INTO `message` VALUES (306, 3, 1, 0, '2019年01月24日14:14:12, 您收到一条董瑞2019年01月的月度考勤申请的催办消息，请及时处理', '董瑞', '2019-01-24 14:16:02', NULL, NULL, 1);
INSERT INTO `message` VALUES (307, 3, 1, 0, '2019年01月24日14:15:27, 您收到一条董瑞2019年01月的月度考勤申请的催办消息，请及时处理', '董瑞', '2019-01-24 14:17:18', NULL, NULL, 1);
INSERT INTO `message` VALUES (308, 3, 1, 0, '2019年01月24日14:15:34, 您收到一条董瑞2019年01月的月度考勤申请的催办消息，请及时处理', '董瑞', '2019-01-24 14:17:24', NULL, NULL, 1);
INSERT INTO `message` VALUES (309, 3, 1, 0, '2019年01月24日14:16:41, 您收到一条董瑞2019年01月的月度考勤申请的催办消息，请及时处理', '董瑞', '2019-01-24 14:18:32', NULL, NULL, 1);
INSERT INTO `message` VALUES (310, 3, 1, 0, '2019年01月24日14:16:57, 您收到一条董瑞2019年01月的月度考勤申请的催办消息，请及时处理', '董瑞', '2019-01-24 14:18:47', NULL, NULL, 1);
INSERT INTO `message` VALUES (311, 3, 1, 0, '2019年01月24日14:21:13, 您收到一条董瑞2019年01月的月度考勤申请的催办消息，请及时处理', '董瑞', '2019-01-24 14:23:03', NULL, NULL, 1);
INSERT INTO `message` VALUES (312, 3, 1, 0, '2019年01月24日14:22:04, 您收到一条董瑞2019年01月的月度考勤申请的催办消息，请及时处理', '董瑞', '2019-01-24 14:23:54', NULL, NULL, 1);
INSERT INTO `message` VALUES (313, 3, 1, 0, '2019年01月24日14:22:47, 您收到一条董瑞2019年01月的月度考勤申请的催办消息，请及时处理', '董瑞', '2019-01-24 14:24:37', NULL, NULL, 1);
INSERT INTO `message` VALUES (314, 3, 1, 0, '2019年01月24日14:24:00, 您收到一条董瑞2019年01月的月度考勤申请的催办消息，请及时处理', '董瑞', '2019-01-24 14:25:50', NULL, NULL, 1);
INSERT INTO `message` VALUES (315, 3, 1, 0, '2019年01月24日14:27:03, 您收到一条董瑞2019年01月的月度考勤申请的催办消息，请及时处理', '董瑞', '2019-01-24 14:28:54', NULL, NULL, 1);
INSERT INTO `message` VALUES (316, 3, 1, 0, '2019年01月24日14:27:11, 您收到一条董瑞2019年01月的月度考勤申请的催办消息，请及时处理', '董瑞', '2019-01-24 14:29:01', NULL, NULL, 1);
INSERT INTO `message` VALUES (317, 8, 3, 0, '2019年01月24日14:38您收到一条杨智2018年12月的月度考勤申请的回复，请及时处理', '杨智', '2019-01-24 14:40:48', NULL, NULL, 1);
INSERT INTO `message` VALUES (318, 2, 1, 0, '2019年01月24日15:33:06, 您收到一条杨鹏2019年01月的月度考勤申请的催办消息，请及时处理', '杨鹏', '2019-01-24 15:34:56', NULL, NULL, 1);
INSERT INTO `message` VALUES (319, 2, 1, 0, '2019年01月24日16:07:42, 您收到一条杨鹏2019年01月的月度考勤申请的催办消息，请及时处理', '杨鹏', '2019-01-24 16:09:32', NULL, NULL, 1);
INSERT INTO `message` VALUES (320, 2, 1, 0, '2019年01月12日您收到一条杨鹏2019年01月12日的忘打卡申请的申请，请及时处理', '杨鹏', '2019-01-24 16:10:03', NULL, NULL, 1);
INSERT INTO `message` VALUES (321, 2, 1, 0, '2019年01月18日您收到一条杨鹏2019年01月18日的忘打卡申请的申请，请及时处理', '杨鹏', '2019-01-24 16:52:56', NULL, NULL, 1);
INSERT INTO `message` VALUES (322, 2, 1, 0, '2019年01月18日您收到一条杨鹏2019年01月18日的忘打卡申请的申请，请及时处理', '杨鹏', '2019-01-24 16:52:57', NULL, NULL, 1);
INSERT INTO `message` VALUES (323, 2, 1, 0, '2019年01月18日您收到一条杨鹏2019年01月18日的忘打卡申请的申请，请及时处理', '杨鹏', '2019-01-24 16:52:57', NULL, NULL, 1);
INSERT INTO `message` VALUES (324, 2, 1, 0, '2019年01月18日您收到一条杨鹏2019年01月18日的忘打卡申请的申请，请及时处理', '杨鹏', '2019-01-24 16:52:58', NULL, NULL, 1);
INSERT INTO `message` VALUES (325, 2, 1, 0, '2019年01月18日您收到一条杨鹏2019年01月18日的忘打卡申请的申请，请及时处理', '杨鹏', '2019-01-24 16:52:58', NULL, NULL, 1);
INSERT INTO `message` VALUES (326, 2, 1, 0, '2019年01月18日您收到一条杨鹏2019年01月18日的忘打卡申请的申请，请及时处理', '杨鹏', '2019-01-24 16:52:58', NULL, NULL, 1);
INSERT INTO `message` VALUES (327, 2, 1, 0, '2019年01月18日您收到一条杨鹏2019年01月18日的忘打卡申请的申请，请及时处理', '杨鹏', '2019-01-24 16:52:58', NULL, NULL, 1);
INSERT INTO `message` VALUES (328, 2, 1, 0, '2019年01月18日您收到一条杨鹏2019年01月18日的忘打卡申请的申请，请及时处理', '杨鹏', '2019-01-24 16:52:59', NULL, NULL, 1);
INSERT INTO `message` VALUES (329, 2, 1, 0, '2019年01月18日您收到一条杨鹏2019年01月18日的忘打卡申请的申请，请及时处理', '杨鹏', '2019-01-24 16:52:59', NULL, NULL, 1);
INSERT INTO `message` VALUES (330, 2, 1, 0, '2019年01月17日您收到一条杨鹏2019年01月17日的忘打卡申请的申请，请及时处理', '杨鹏', '2019-01-24 16:54:45', NULL, NULL, 1);
INSERT INTO `message` VALUES (331, 2, 1, 0, '2019年01月23日您收到一条杨鹏2019年01月23日的忘打卡申请的申请，请及时处理', '杨鹏', '2019-01-24 16:58:09', NULL, NULL, 1);
INSERT INTO `message` VALUES (332, 2, 1, 0, '2019年01月23日您收到一条杨鹏2019年01月23日的忘打卡申请的申请，请及时处理', '杨鹏', '2019-01-24 16:58:40', NULL, NULL, 1);
INSERT INTO `message` VALUES (333, 2, 1, 0, '2019年01月15日您收到一条杨鹏2019年01月15日的忘打卡申请的申请，请及时处理', '杨鹏', '2019-01-24 16:59:54', NULL, NULL, 1);
INSERT INTO `message` VALUES (334, 2, 1, 0, '2019年01月15日您收到一条杨鹏2019年01月15日的忘打卡申请的申请，请及时处理', '杨鹏', '2019-01-24 17:00:00', NULL, NULL, 1);
INSERT INTO `message` VALUES (335, 2, 1, 0, '2019年01月16日您收到一条杨鹏2019年01月16日的忘打卡申请的申请，请及时处理', '杨鹏', '2019-01-24 17:00:36', NULL, NULL, 1);
INSERT INTO `message` VALUES (336, 2, 1, 0, '2019年01月16日您收到一条杨鹏2019年01月16日的忘打卡申请的申请，请及时处理', '杨鹏', '2019-01-24 17:00:39', NULL, NULL, 1);
INSERT INTO `message` VALUES (337, 2, 1, 0, '2019年01月16日您收到一条杨鹏2019年01月16日的忘打卡申请的申请，请及时处理', '杨鹏', '2019-01-24 17:01:25', NULL, NULL, 1);
INSERT INTO `message` VALUES (338, 2, 1, 0, '2019年01月16日您收到一条杨鹏2019年01月16日的忘打卡申请的申请，请及时处理', '杨鹏', '2019-01-24 17:02:15', NULL, NULL, 1);
INSERT INTO `message` VALUES (339, 2, 1, 0, '2019年01月22日您收到一条杨鹏2019年01月22日的忘打卡申请的申请，请及时处理', '杨鹏', '2019-01-24 17:03:31', NULL, NULL, 1);
INSERT INTO `message` VALUES (340, 2, 1, 0, '2019年01月08日您收到一条杨鹏2019年01月08日的忘打卡申请的申请，请及时处理', '杨鹏', '2019-01-24 17:05:40', NULL, NULL, 1);
INSERT INTO `message` VALUES (341, 2, 1, 0, '2019年01月15日您收到一条杨鹏2019年01月15日的忘打卡申请的申请，请及时处理', '杨鹏', '2019-01-24 17:06:35', NULL, NULL, 1);
INSERT INTO `message` VALUES (342, 2, 1, 0, '2019年01月10日您收到一条杨鹏2019年01月10日的忘打卡申请的申请，请及时处理', '杨鹏', '2019-01-24 17:14:26', NULL, NULL, 1);
INSERT INTO `message` VALUES (343, 2, 1, 0, '2019年01月16日您收到一条杨鹏2019年01月16日的忘打卡申请的申请，请及时处理', '杨鹏', '2019-01-24 17:16:17', NULL, NULL, 1);
INSERT INTO `message` VALUES (344, 2, 1, 0, '2019年01月16日您收到一条杨鹏2019年01月16日的忘打卡申请的申请，请及时处理', '杨鹏', '2019-01-24 17:16:18', NULL, NULL, 1);
INSERT INTO `message` VALUES (345, 2, 1, 1, '2019年01月16日您收到一条杨鹏2019年01月16日的忘打卡申请的申请，请及时处理', '杨鹏', '2019-01-24 17:16:24', NULL, NULL, 1);
INSERT INTO `message` VALUES (346, 2, 1, 1, '2019年01月16日您收到一条杨鹏2019年01月16日的忘打卡申请的申请，请及时处理', '杨鹏', '2019-01-24 17:16:27', NULL, NULL, 1);
INSERT INTO `message` VALUES (347, 2, 1, 1, '2019年01月16日您收到一条杨鹏2019年01月16日的忘打卡申请的申请，请及时处理', '杨鹏', '2019-01-24 17:17:56', NULL, NULL, 1);
INSERT INTO `message` VALUES (348, 2, 1, 1, '2019年01月24日17:16:59, 您收到一条杨鹏2019年01月的月度考勤申请的催办消息，请及时处理', '杨鹏', '2019-01-24 17:18:50', NULL, NULL, 1);
INSERT INTO `message` VALUES (349, 3, 1, 0, '2019年01月18日您收到一条董瑞2019年01月18日的忘打卡申请的申请，请及时处理', '董瑞', '2019-01-24 17:45:18', NULL, NULL, 1);
INSERT INTO `message` VALUES (350, 3, 1, 0, '2019年01月18日您收到一条董瑞2019年01月18日的忘打卡申请的申请，请及时处理', '董瑞', '2019-01-24 17:45:27', NULL, NULL, 1);
INSERT INTO `message` VALUES (351, 3, 1, 0, '2019年01月24日17:43:51, 您收到一条董瑞2019年01月的月度考勤申请的催办消息，请及时处理', '董瑞', '2019-01-24 17:45:42', NULL, NULL, 1);
INSERT INTO `message` VALUES (352, 3, 1, 0, '2019年01月17日您收到一条董瑞2019年01月17日的忘打卡申请的申请，请及时处理', '董瑞', '2019-01-24 17:47:13', NULL, NULL, 1);
INSERT INTO `message` VALUES (353, 1, 3, 0, '2019年01月24日17:51您收到一条刘威2019年01月10日的忘打卡申请的回复，请及时处理', '刘威', '2019-01-24 17:53:17', NULL, NULL, 1);
INSERT INTO `message` VALUES (354, 8, 2, 0, '2019年01月24日18:01:00, 您收到一条蒲勇2019年01月的月度考勤申请的催办消息，请及时处理', 'admin', '2019-01-24 18:02:49', NULL, NULL, 1);
INSERT INTO `message` VALUES (355, 3, 1, 0, '2019年01月09日您收到一条董瑞2019年01月09日的忘打卡申请的申请，请及时处理', '董瑞', '2019-01-24 18:50:15', NULL, NULL, 1);
INSERT INTO `message` VALUES (356, 3, 1, 0, '2019年01月18日您收到一条董瑞2019年01月18日的忘打卡申请的申请，请及时处理', '董瑞', '2019-01-24 19:18:47', NULL, NULL, 1);
INSERT INTO `message` VALUES (357, 3, 1, 0, '2019年01月18日您收到一条董瑞2019年01月18日的忘打卡申请的申请，请及时处理', '董瑞', '2019-01-24 19:19:05', NULL, NULL, 1);
INSERT INTO `message` VALUES (358, 3, 1, 0, '2019年01月18日您收到一条董瑞2019年01月18日的忘打卡申请的申请，请及时处理', '董瑞', '2019-01-24 19:19:36', NULL, NULL, 1);
INSERT INTO `message` VALUES (359, 3, 1, 0, '2019年01月18日您收到一条董瑞2019年01月18日的忘打卡申请的申请，请及时处理', '董瑞', '2019-01-24 19:19:53', NULL, NULL, 1);
INSERT INTO `message` VALUES (360, 3, 1, 0, '2019年01月18日您收到一条董瑞2019年01月18日的忘打卡申请的申请，请及时处理', '董瑞', '2019-01-24 19:19:53', NULL, NULL, 1);
INSERT INTO `message` VALUES (361, 3, 1, 0, '2019年01月18日您收到一条董瑞2019年01月18日的忘打卡申请的申请，请及时处理', '董瑞', '2019-01-24 19:20:03', NULL, NULL, 1);
INSERT INTO `message` VALUES (362, 3, 1, 0, '2019年01月18日您收到一条董瑞2019年01月18日的忘打卡申请的申请，请及时处理', '董瑞', '2019-01-24 19:20:03', NULL, NULL, 1);
INSERT INTO `message` VALUES (363, 3, 1, 0, '2019年01月10日您收到一条董瑞2019年01月10日的忘打卡申请的申请，请及时处理', '董瑞', '2019-01-24 19:22:49', NULL, NULL, 1);
INSERT INTO `message` VALUES (364, 3, 1, 0, '2019年01月10日您收到一条董瑞2019年01月10日的忘打卡申请的申请，请及时处理', '董瑞', '2019-01-24 19:24:41', NULL, NULL, 1);
INSERT INTO `message` VALUES (365, 3, 1, 0, '2019年01月17日您收到一条董瑞2019年01月17日的忘打卡申请的申请，请及时处理', '董瑞', '2019-01-24 19:25:45', NULL, NULL, 1);
INSERT INTO `message` VALUES (366, 3, 1, 0, '2019年01月03日您收到一条董瑞2019年01月03日的忘打卡申请的申请，请及时处理', '董瑞', '2019-01-24 19:27:18', NULL, NULL, 1);
INSERT INTO `message` VALUES (367, 68, 1, 0, '2019年01月10日您收到一条董瑞2019年01月10日的忘打卡申请的申请，请及时处理', '董瑞', '2019-01-24 19:50:09', NULL, NULL, 1);
INSERT INTO `message` VALUES (368, 68, 1, 0, '2019年01月17日您收到一条董瑞2019年01月17日的忘打卡申请的申请，请及时处理', '董瑞', '2019-01-24 19:51:01', NULL, NULL, 1);
INSERT INTO `message` VALUES (369, 68, 1, 0, '2019年01月12日您收到一条董瑞2019年01月12日的忘打卡申请的申请，请及时处理', '董瑞', '2019-01-24 19:55:40', NULL, NULL, 1);
INSERT INTO `message` VALUES (370, 68, 1, 0, '2019年01月18日您收到一条董瑞2019年01月18日的忘打卡申请的申请，请及时处理', '董瑞', '2019-01-24 19:55:58', NULL, NULL, 1);
INSERT INTO `message` VALUES (371, 68, 1, 0, '2019年01月23日您收到一条董瑞2019年01月23日的忘打卡申请的申请，请及时处理', '董瑞', '2019-01-24 19:56:30', NULL, NULL, 1);
INSERT INTO `message` VALUES (372, 68, 1, 0, '2019年01月18日您收到一条董瑞2019年01月18日的忘打卡申请的申请，请及时处理', '董瑞', '2019-01-24 19:56:48', NULL, NULL, 1);
INSERT INTO `message` VALUES (373, 68, 1, 0, '2019年01月19日您收到一条董瑞2019年01月19日的忘打卡申请的申请，请及时处理', '董瑞', '2019-01-24 19:58:08', NULL, NULL, 1);
INSERT INTO `message` VALUES (374, 68, 1, 0, '2019年01月23日您收到一条董瑞2019年01月23日的忘打卡申请的申请，请及时处理', '董瑞', '2019-01-24 19:58:22', NULL, NULL, 1);
INSERT INTO `message` VALUES (375, 68, 1, 0, '2019年01月16日您收到一条董瑞2019年01月16日的忘打卡申请的申请，请及时处理', '董瑞', '2019-01-24 19:59:40', NULL, NULL, 1);
INSERT INTO `message` VALUES (376, 68, 1, 0, '2019年01月10日您收到一条董瑞2019年01月10日的忘打卡申请的申请，请及时处理', '董瑞', '2019-01-24 20:00:03', NULL, NULL, 1);
INSERT INTO `message` VALUES (377, 68, 1, 0, '2019年01月18日您收到一条董瑞2019年01月18日的忘打卡申请的申请，请及时处理', '董瑞', '2019-01-24 20:00:39', NULL, NULL, 1);
INSERT INTO `message` VALUES (378, 8, 2, 0, '2019年01月25日09:14:40, 您收到一条蒲勇2019年01月的月度考勤申请的催办消息，请及时处理', 'admin', '2019-01-25 09:16:32', NULL, NULL, 1);
INSERT INTO `message` VALUES (379, 68, 1, 0, '2019年01月25日09:27:13, 您收到一条董瑞2019年01月的月度考勤申请的催办消息，请及时处理', '董瑞', '2019-01-25 09:29:02', NULL, NULL, 1);
INSERT INTO `message` VALUES (380, 68, 1, 0, '2019年01月23日您收到一条董瑞2019年01月23日的忘打卡申请的申请，请及时处理', '董瑞', '2019-01-25 09:29:38', NULL, NULL, 1);
INSERT INTO `message` VALUES (381, 68, 1, 0, '2019年01月23日您收到一条董瑞2019年01月23日的忘打卡申请的申请，请及时处理', '董瑞', '2019-01-25 09:29:55', NULL, NULL, 1);
INSERT INTO `message` VALUES (382, 68, 1, 0, '2019年01月01日您收到一条董瑞2019年01月01日的忘打卡申请的申请，请及时处理', '董瑞', '2019-01-25 09:35:32', NULL, NULL, 1);
INSERT INTO `message` VALUES (383, 68, 1, 0, '2019年01月01日您收到一条董瑞2019年01月01日的忘打卡申请的申请，请及时处理', '董瑞', '2019-01-25 09:35:51', NULL, NULL, 1);
INSERT INTO `message` VALUES (384, 3, 3, 0, '2019年01月25日10:02您收到一条杨智2019年01月22日的忘打卡申请的回复，请及时处理', '杨智', '2019-01-25 10:02:30', NULL, NULL, 1);
INSERT INTO `message` VALUES (385, 6, 3, 0, '2019年01月25日11:18您收到一条刘威2018年12月的月度考勤申请的回复，请及时处理', '刘威', '2019-01-25 11:18:11', NULL, NULL, 1);

-- ----------------------------
-- Table structure for monthatte
-- ----------------------------
DROP TABLE IF EXISTS `monthatte`;
CREATE TABLE `monthatte`  (
  `month_atte_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '月度考勤id',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '实习生id',
  `tutor_id` bigint(20) NULL DEFAULT NULL COMMENT '导师id',
  `workday` decimal(10, 1) NULL DEFAULT NULL COMMENT '出勤天数',
  `forgetday` decimal(10, 1) NULL DEFAULT NULL COMMENT '忘打卡天数',
  `latecount` int(11) NULL DEFAULT NULL COMMENT '迟到次数',
  `earlycount` int(11) NULL DEFAULT NULL COMMENT '早退次数',
  `approval_type` int(12) NULL DEFAULT NULL,
  `approval_status` int(11) NULL DEFAULT NULL COMMENT '审批状态0未审批，1已审批',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `create_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `update_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_delete` int(11) UNSIGNED NULL DEFAULT 1 COMMENT '是否有效，0无效，1有效',
  PRIMARY KEY (`month_atte_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3462 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '审批状态：0表示为审批、1表示已审批' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of monthatte
-- ----------------------------
INSERT INTO `monthatte` VALUES (3452, 2, 1, 23.0, 0.0, 0, 0, 1, 0, '2019-01-22 14:36:26', 'admin', NULL, NULL, 1);
INSERT INTO `monthatte` VALUES (3453, 3, 2, 15.0, 0.0, 0, 0, 1, 0, '2019-01-22 14:36:26', 'admin', NULL, NULL, 1);
INSERT INTO `monthatte` VALUES (3454, 4, 2, 19.0, 4.0, 2, 3, 1, 0, '2019-01-23 14:36:26', 'admin', NULL, NULL, 1);
INSERT INTO `monthatte` VALUES (3455, 6, 4, 23.0, 0.0, 2, 2, 1, 1, '2019-01-22 14:36:26', 'admin', '2019-01-25 11:18:11', '刘威', 1);
INSERT INTO `monthatte` VALUES (3456, 8, 2, 5.0, 0.0, 0, 0, 1, 1, '2019-01-22 14:36:26', 'admin', '2019-01-24 14:40:48', '杨智', 1);
INSERT INTO `monthatte` VALUES (3457, 9, 2, 15.0, 0.0, 0, 0, 1, 0, '2019-01-22 14:36:26', 'admin', NULL, NULL, 1);
INSERT INTO `monthatte` VALUES (3459, 1, 1, 16.0, 1.0, 4, 5, 1, 1, '2019-01-22 14:36:56', 'admin', '2019-01-22 17:48:11', '刘威', 1);
INSERT INTO `monthatte` VALUES (3460, 2, 1, 23.0, 0.0, 0, 0, 1, 0, '2019-01-25 10:54:31', 'admin', NULL, NULL, 1);
INSERT INTO `monthatte` VALUES (3461, 3, 3, 22.0, 0.0, 0, 0, 1, 0, '2019-01-25 10:54:31', 'admin', NULL, NULL, 1);
INSERT INTO `monthatte` VALUES (3462, 4, 4, 19.0, 4.0, 2, 3, 1, 0, '2019-01-25 10:54:31', 'admin', NULL, NULL, 1);

-- ----------------------------
-- Table structure for rule
-- ----------------------------
DROP TABLE IF EXISTS `rule`;
CREATE TABLE `rule`  (
  `rule_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '规则id',
  `sign_in_time` time(0) NULL DEFAULT NULL COMMENT '应签到时间',
  `sign_out_time` time(0) NULL DEFAULT NULL COMMENT '应签退时间',
  `half_day` int(11) NULL DEFAULT NULL COMMENT '半天考勤标准',
  `all_day` int(11) NULL DEFAULT NULL COMMENT '一天考勤标准',
  `min_unit` double NULL DEFAULT NULL COMMENT '最小考勤单位',
  `submit_time` int(11) NULL DEFAULT NULL COMMENT '提交时间,表示每个月的几号',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `create_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `update_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_delete` int(11) UNSIGNED NULL DEFAULT 1 COMMENT '是否有效0无效，1有效',
  PRIMARY KEY (`rule_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '月考勤自动提交时间：每个月生成的月考勤数据，提交到导师审批' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rule
-- ----------------------------
INSERT INTO `rule` VALUES (1, '09:00:00', '18:00:00', 4, 8, NULL, 20, '2019-01-11 17:30:59', 'admin', '2019-01-25 10:54:30', 'admin', 1);

-- ----------------------------
-- Table structure for sign_in
-- ----------------------------
DROP TABLE IF EXISTS `sign_in`;
CREATE TABLE `sign_in`  (
  `sign_in_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '签到id',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '签到人id',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '签到人姓名',
  `sign_in_time` datetime(0) NULL DEFAULT NULL COMMENT '签到时间',
  `late` int(4) NULL DEFAULT NULL COMMENT '是否迟到',
  `workarea` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作区域名称/打卡地址',
  `workarea_id` bigint(20) NULL DEFAULT NULL COMMENT '工作区域id',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `create_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `update_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_delete` int(4) UNSIGNED NULL DEFAULT 1 COMMENT '是否有效0无效，1有效',
  PRIMARY KEY (`sign_in_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 753 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sign_in
-- ----------------------------
INSERT INTO `sign_in` VALUES (1, 4, '方策', '2018-12-01 09:52:53', 1, '迈科国际', 3, '2018-12-01 09:53:21', 'admin', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (2, 4, '方策', '2018-12-02 09:55:11', 0, '迈科国际', 3, '2018-12-02 09:55:28', 'admin', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (3, 4, '方策', '2018-12-03 09:56:10', 1, '迈科国际', 3, '2018-12-03 09:56:41', 'admin', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (4, 4, '方策', '2018-12-04 09:57:46', NULL, '迈科国际', 3, '2018-12-04 09:57:59', 'admin', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (5, 4, '方策', '2018-12-05 09:58:55', NULL, '迈科国际', 3, '2018-12-05 09:59:12', 'admin', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (6, 4, '方策', '2018-12-06 10:01:22', NULL, '迈科国际', 3, '2018-12-06 10:01:41', 'admin', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (7, 4, '方策', '2018-12-07 10:02:00', NULL, '迈科国际', 3, '2018-12-07 10:02:30', 'admin', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (8, 4, '方策', '2018-12-08 10:03:09', NULL, '迈科国际', 3, '2018-12-08 10:03:21', 'admin', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (9, 4, '方策', '2018-12-09 10:03:39', NULL, '迈科国际', 3, '2018-12-09 10:04:33', 'admin', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (10, 4, '方策', '2018-12-10 10:05:11', NULL, '迈科国际', 3, '2018-12-10 10:05:24', 'admin', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (11, 4, '方策', '2018-12-11 10:06:31', NULL, '迈科国际', 3, '2018-12-11 10:06:41', 'admin', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (12, 4, '方策', '2018-12-12 10:07:07', NULL, '迈科国际', 3, '2018-12-12 10:07:21', 'admin', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (13, 4, '方策', '2018-12-13 10:07:55', NULL, '迈科国际', 3, '2018-12-13 10:08:10', 'admin', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (14, 4, '方策', '2018-12-14 10:09:01', NULL, '迈科国际', 3, '2018-12-14 10:09:12', 'admin', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (15, 4, '方策', '2018-12-15 10:09:32', NULL, '迈科国际', 3, '2018-12-15 10:09:44', 'admin', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (16, 4, '方策', '2018-12-16 10:10:07', NULL, '迈科国际', 3, '2018-12-16 10:10:27', 'admin', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (17, 4, '方策', '2018-12-17 10:11:41', NULL, '迈科国际', 3, '2018-12-17 10:11:51', 'admin', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (18, 4, '方策', '2018-12-18 10:12:13', NULL, '迈科国际', 3, '2018-12-18 10:12:22', 'admin', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (19, 4, '方策', '2018-12-19 10:13:08', NULL, '迈科国际', 3, '2018-12-19 10:13:24', 'admin', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (20, 4, '方策', '2018-12-20 10:14:09', NULL, '迈科国际', 3, '2018-12-20 10:14:20', 'admin', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (21, 4, '方策', '2018-12-21 10:14:43', NULL, '迈科国际', 3, '2018-12-21 10:14:50', 'admin', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (22, 4, '方策', '2018-12-24 10:15:04', NULL, '迈科国际', 3, '2018-12-24 10:15:18', 'admin', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (23, 4, '方策', '2018-12-25 10:15:38', NULL, '迈科国际', 3, '2018-12-25 10:16:05', 'admin', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (24, 4, '方策', '2018-12-26 10:16:37', NULL, '迈科国际', 3, '2018-12-26 10:16:48', 'admin', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (25, 4, '方策', '2018-12-27 10:17:48', NULL, '迈科国际', 3, '2018-12-27 10:17:57', 'admin', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (26, 4, '方策', '2018-12-28 10:17:07', NULL, '迈科国际', 3, '2018-12-28 10:17:29', 'admin', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (506, 8, '蒲勇', '2018-12-01 08:54:29', NULL, '迈科国际', 1, '2018-12-01 08:54:29', '蒲勇', '2019-01-22 08:57:02', NULL, 1);
INSERT INTO `sign_in` VALUES (507, 6, '陈锦磊', '2018-12-01 08:54:37', NULL, '天安门广场', NULL, '2018-12-01 08:54:37', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (508, 8, '蒲勇', '2018-12-02 08:57:23', NULL, '迈科国际', 1, '2018-12-02 08:57:38', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (509, 6, '陈锦磊', '2018-12-02 08:58:01', NULL, '中南海', NULL, '2018-12-02 08:58:01', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (510, 6, '陈锦磊', '2018-12-03 08:59:35', NULL, '迈科国际一楼', NULL, '2018-12-03 08:59:35', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (511, 6, '陈锦磊', '2018-12-04 07:59:59', NULL, '网鱼网咖', NULL, '2018-12-04 07:59:59', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (512, 6, '陈锦磊', '2018-12-05 08:01:25', NULL, '大熊猫基地', NULL, '2018-12-05 08:01:25', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (513, 6, '陈锦磊', '2018-12-06 08:02:01', NULL, '迈科国际二楼', NULL, '2018-12-06 08:02:01', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (514, 8, '蒲勇', '2018-12-03 09:00:21', NULL, '迈科国际', 1, '2018-12-03 09:00:21', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (515, 6, '陈锦磊', '2018-12-07 08:05:57', NULL, '迈科国际三楼', NULL, '2018-12-07 08:05:57', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (516, 8, '蒲勇', '2018-12-04 09:00:21', NULL, '迈科国际', 1, '2018-12-04 09:00:21', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (517, 8, '蒲勇', '2018-12-05 09:04:21', NULL, '迈科国际', 1, '2018-12-05 09:04:21', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (518, 6, '陈锦磊', '2018-12-08 07:06:29', NULL, '迈科国际四楼', NULL, '2018-12-08 07:06:29', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (519, 8, '蒲勇', '2018-12-06 09:04:21', NULL, '迈科国际', 1, '2018-12-06 09:04:21', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (520, 6, '陈锦磊', '2018-12-09 08:06:58', NULL, '迈科国际五楼', NULL, '2018-12-09 08:06:58', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (521, 8, '蒲勇', '2018-12-07 09:04:21', NULL, '迈科国际', 1, '2018-12-07 09:04:21', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (522, 8, '蒲勇', '2018-12-08 09:04:21', NULL, '迈科国际', 1, '2018-12-08 09:04:21', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (523, 6, '陈锦磊', '2018-12-10 10:07:48', NULL, '迈科国际六楼', NULL, '2018-12-10 10:07:48', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (524, 8, '蒲勇', '2018-12-09 08:04:21', NULL, '迈科国际', 1, '2018-12-09 08:04:21', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (525, 6, '陈锦磊', '2018-12-11 10:08:16', NULL, '迈科国际七楼', NULL, '2018-12-11 10:08:16', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (526, 8, '蒲勇', '2018-12-11 08:04:21', NULL, '迈科国际', 1, '2018-12-11 08:04:21', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (527, 8, '蒲勇', '2018-12-12 08:04:21', NULL, '迈科国际', 1, '2018-12-12 08:04:21', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (529, 6, '陈锦磊', '2018-12-12 08:08:36', NULL, '迈科国际八楼', NULL, '2018-12-12 08:08:36', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (530, 8, '蒲勇', '2018-12-13 08:04:21', NULL, '迈科国际', 1, '2018-12-13 08:04:21', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (531, 8, '蒲勇', '2018-12-14 09:08:21', NULL, '迈科国际', 1, '2018-12-14 08:08:21', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (532, 6, '陈锦磊', '2018-12-13 10:09:02', NULL, '迈科国际九楼', NULL, '2018-12-13 10:09:02', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (533, 6, '陈锦磊', '2018-12-14 08:09:31', NULL, '麦克国际十楼', NULL, '2018-12-14 08:09:31', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (534, 8, '蒲勇', '2018-12-15 09:08:21', NULL, '迈科国际', 1, '2018-12-15 09:08:21', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (535, 8, '蒲勇', '2018-12-16 09:08:21', NULL, '迈科国际', 1, '2018-12-16 09:08:21', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (536, 8, '蒲勇', '2018-12-17 09:08:21', NULL, '迈科国际', 1, '2018-12-17 09:08:21', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (537, 8, '蒲勇', '2018-12-19 09:08:21', NULL, '迈科国际', 1, '2018-12-19 09:08:21', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (538, 8, '蒲勇', '2018-12-20 08:58:21', NULL, '迈科国际', 1, '2018-12-20 08:58:21', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (539, 8, '蒲勇', '2018-12-21 08:58:21', NULL, '迈科国际', 1, '2018-12-21 08:58:21', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (540, 6, '陈锦磊', '2018-12-15 08:10:17', NULL, '迈科国际十一楼', NULL, '2018-12-15 08:10:17', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (541, 8, '蒲勇', '2018-12-23 08:58:21', NULL, '迈科国际', 1, '2018-12-23 08:58:21', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (542, 8, '蒲勇', '2018-12-26 08:58:21', NULL, '迈科国际', 1, '2018-12-26 08:58:21', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (543, 8, '蒲勇', '2018-12-27 08:58:21', NULL, '迈科国际', 1, '2018-12-27 08:58:21', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (544, 6, '陈锦磊', '2018-12-16 08:11:19', NULL, '迈科国际十二楼', NULL, '2018-12-16 08:11:19', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (545, 6, '陈锦磊', '2018-12-17 08:11:36', NULL, '迈科国际十三楼', NULL, '2018-12-17 08:11:36', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (546, 6, '陈锦磊', '2018-12-18 08:11:44', NULL, '迈科国际十四楼', NULL, '2018-12-18 08:11:44', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (547, 8, '蒲勇', '2018-12-28 09:58:21', NULL, '迈科国际', 1, '2018-12-28 09:58:21', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (548, 8, '蒲勇', '2018-12-29 09:58:21', NULL, '迈科国际', 1, '2018-12-29 09:58:21', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (549, 8, '蒲勇', '2018-12-30 09:58:21', NULL, '迈科国际', 1, '2018-12-30 09:58:21', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (550, 8, '蒲勇', '2018-12-31 09:58:21', NULL, '迈科国际', 1, '2018-12-31 09:58:21', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (551, 6, '陈锦磊', '2018-12-19 08:12:49', NULL, '麦克国际十五楼', NULL, '2018-12-19 08:12:49', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (552, 6, '陈锦磊', '2018-12-20 08:13:18', NULL, '迈科国际十六楼', NULL, '2018-12-20 08:13:18', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (553, 6, '陈锦磊', '2018-12-21 08:13:52', NULL, '迈科国际十七楼', NULL, '2018-12-21 08:13:52', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (554, 6, '陈锦磊', '2018-12-22 08:15:46', NULL, '迈科国际十八楼', NULL, '2018-12-22 08:15:46', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (555, 6, '陈锦磊', '2018-12-23 08:14:31', NULL, '迈科国际十九楼', NULL, '2018-12-23 08:14:31', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (556, 6, '陈锦磊', '2018-12-24 08:16:06', NULL, '麦克国际二十楼', NULL, '2018-12-24 08:16:06', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (557, 6, '陈锦磊', '2018-12-25 08:15:10', NULL, '妙可国际二十一楼', NULL, '2018-12-25 08:15:10', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (558, 6, '陈锦磊', '2018-12-26 08:15:31', NULL, '麦克国际二十二楼', NULL, '2018-12-26 08:15:31', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (559, 6, '陈锦磊', '2018-12-27 08:16:53', NULL, '麦克国际二十三楼', NULL, '2018-12-27 08:16:53', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (560, 6, '陈锦磊', '2018-12-28 08:17:18', NULL, '迈科国际二十四楼', NULL, '2018-12-28 08:17:18', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (561, 6, '陈锦磊', '2018-12-29 08:17:41', NULL, '迈科国际二十五楼', NULL, '2018-12-29 08:17:41', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (562, 6, '陈锦磊', '2018-12-30 08:18:03', NULL, '麦克国际二十六楼', NULL, '2018-12-30 08:18:03', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (563, 6, '陈锦磊', '2018-12-31 10:18:43', NULL, '麦克国际二十七楼', NULL, '2018-12-31 10:18:43', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (564, 2, '程慧茹', '2018-12-01 08:15:31', NULL, '迈科国际', 3, '2018-12-01 08:15:31', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (565, 2, '程慧茹', '2018-12-02 08:34:22', NULL, '迈科国际一层', 3, '2018-12-02 08:34:22', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (566, 2, '程慧茹', '2018-12-03 09:34:22', NULL, '迈科国际', 3, '2018-12-03 09:34:22', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (567, 2, '程慧茹', '2018-12-04 09:18:00', NULL, '迈科国际', 3, '2018-12-04 09:18:00', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (568, 3, '吴文龙', '2018-12-01 10:26:41', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 1, '2018-12-01 10:26:41', '吴文龙', NULL, '', 1);
INSERT INTO `sign_in` VALUES (569, 2, '程慧茹', '2018-12-05 08:23:44', NULL, '迈科国际二层', 3, '2018-12-05 08:23:44', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (570, 2, '程慧茹', '2018-12-06 08:09:55', NULL, '迈科国际四层', 3, '2018-12-06 08:09:55', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (571, 2, '程慧茹', '2018-12-07 08:45:22', NULL, '迈科国际', 3, '2018-12-07 08:45:22', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (573, 3, '吴文龙', '2018-12-02 10:26:41', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 1, '2018-12-02 10:26:41', '吴文龙', '2018-12-02 10:36:34', '吴文龙', 1);
INSERT INTO `sign_in` VALUES (575, 3, '吴文龙', '2018-12-03 10:26:41', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 1, '2018-12-03 10:26:41', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (577, 3, '吴文龙', '2018-12-04 10:26:41', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 1, '2018-12-04 10:26:41', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (578, 3, '吴文龙', '2018-12-05 10:26:41', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 1, '2018-12-05 10:26:41', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (579, 3, '吴文龙', '2018-12-06 10:26:41', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 1, '2018-12-06 10:26:41', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (580, 2, '程慧茹', '2018-12-08 09:08:00', NULL, '迈科国际', 3, '2018-12-08 09:08:00', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (581, 9, '杨鹏', '2018-12-01 09:08:00', NULL, '迈克国际九层', 1, '2018-12-01 09:08:00', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (582, 9, '杨鹏', '2018-12-02 08:34:22', NULL, '迈克国际九层', 1, '2018-12-02 08:34:22', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (583, 9, '杨鹏', '2018-12-03 08:58:21', NULL, '迈克国际九层', 1, '2018-12-03 08:58:21', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (585, 3, '吴文龙', '2018-12-07 10:26:41', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 1, '2018-12-07 10:26:41', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (586, 9, '杨鹏', '2018-12-05 08:58:21', NULL, '迈克国际九层', 1, '2018-12-05 08:58:21', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (587, 7, '董瑞', '2018-12-03 08:58:21', NULL, '迈克国际九层', 3, '2018-12-03 08:58:21', '董瑞', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (588, 3, '吴文龙', '2018-12-08 10:26:41', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 1, '2018-12-08 10:26:41', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (589, 3, '吴文龙', '2018-12-09 10:26:41', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 1, '2018-12-09 10:26:41', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (590, 3, '吴文龙', '2018-12-10 10:26:41', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 1, '2018-12-10 10:26:41', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (591, 2, '程慧茹', '2018-12-18 10:23:45', NULL, '迈科国际十一层', 3, '2018-12-18 10:23:45', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (592, 7, '董瑞', '2018-12-04 10:58:21', NULL, '迈克国际九层', 3, '2018-12-04 08:58:21', '董瑞', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (593, 2, '程慧茹', '2018-12-10 09:23:57', NULL, '迈科国际', 3, '2018-12-10 09:23:57', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (594, 7, '董瑞', '2018-12-05 08:58:21', NULL, '迈克国际九层', 3, '2018-12-05 08:58:21', '董瑞', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (595, 7, '董瑞', '2018-12-06 08:58:21', NULL, '迈克国际九层', 3, '2018-12-06 08:58:21', '董瑞', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (596, 9, '杨鹏', '2018-12-06 08:48:41', NULL, '迈克国际九层', 1, '2018-12-06 08:48:41', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (597, 3, '吴文龙', '2018-12-11 10:26:41', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 1, '2018-12-11 10:26:41', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (598, 2, '程慧茹', '2018-12-11 08:45:54', NULL, '迈科国际五层', 3, '2018-12-11 08:45:54', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (599, 7, '董瑞', '2018-12-07 08:58:21', NULL, '迈克国际九层', 3, '2018-12-07 08:58:21', '董瑞', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (601, 7, '董瑞', '2018-12-10 08:58:21', NULL, '迈克国际九层', 3, '2018-12-10 08:58:21', '董瑞', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (602, 3, '吴文龙', '2018-12-12 10:26:41', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 1, '2018-12-12 10:26:41', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (603, 7, '董瑞', '2018-12-11 08:58:21', NULL, '迈克国际九层', 1, '2018-12-11 08:58:21', '董瑞', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (604, 7, '董瑞', '2018-12-12 09:58:21', NULL, '迈克国际九层', 3, '2018-12-12 08:58:21', '董瑞', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (605, 7, '董瑞', '2018-12-13 09:58:21', NULL, '迈克国际九层', 3, '2018-12-13 08:58:21', '董瑞', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (606, 7, '董瑞', '2018-12-14 09:58:21', NULL, '迈克国际九层', 3, '2018-12-14 08:58:21', '董瑞', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (607, 7, '董瑞', '2018-12-17 09:58:21', NULL, '迈克国际九层', 3, '2018-12-17 08:58:21', '董瑞', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (608, 7, '董瑞', '2018-12-18 09:58:21', NULL, '迈克国际九层', 3, '2018-12-18 08:58:21', '董瑞', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (609, 9, '杨鹏', '2018-12-07 09:48:41', NULL, '迈克国际九层', 1, '0018-12-07 09:48:41', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (610, 7, '董瑞', '2018-12-19 08:58:21', NULL, '迈克国际九层', 3, '2018-12-19 08:58:21', '董瑞', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (611, 7, '董瑞', '2018-12-20 08:58:21', NULL, '迈克国际九层', 3, '2018-12-20 08:58:21', '董瑞', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (612, 7, '董瑞', '2018-12-21 08:58:21', NULL, '迈克国际九层', 3, '2018-12-21 08:58:21', '董瑞', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (613, 7, '董瑞', '2018-12-24 08:58:21', NULL, '迈克国际九层', 3, '2018-12-24 08:58:21', '董瑞', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (614, 7, '董瑞', '2018-12-25 07:58:21', NULL, '迈克国际九层', 3, '2018-12-25 08:58:21', '董瑞', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (615, 7, '董瑞', '2018-12-26 09:58:21', NULL, '迈克国际九层', 3, '2018-12-26 08:58:21', '董瑞', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (618, 3, '吴文龙', '2018-12-13 10:26:41', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 1, '2018-12-13 10:26:41', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (619, 2, '程慧茹', '2018-12-12 08:12:34', NULL, '旺座现代城', 3, '2018-12-12 08:12:34', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (620, 3, '吴文龙', '2018-12-14 10:26:41', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 1, '2018-12-14 10:26:41', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (621, 9, '杨鹏', '2019-12-08 10:26:41', NULL, '迈克国际九层', 1, '2019-12-08 10:26:41', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (622, 9, '杨鹏', '2019-12-09 10:26:41', NULL, '迈克国际九层', 1, '0019-12-09 10:26:41', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (623, 9, '杨鹏', '2019-12-10 10:26:41', NULL, '迈克国际九层', 1, '2019-12-10 10:26:41', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (624, 9, '杨鹏', '2019-12-11 10:26:41', NULL, '迈克国际九层', 1, '2019-12-11 10:26:41', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (625, 9, '杨鹏', '2019-12-12 10:26:41', NULL, '迈克国际九层', 1, '2019-12-12 10:26:41', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (626, 3, '吴文龙', '2018-12-15 10:26:41', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 1, '2018-12-15 10:26:41', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (627, 2, '程慧茹', '2018-12-13 09:56:12', NULL, '迈科国际', 3, '2018-12-13 09:56:12', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (628, 1, '苏文文', '2019-01-01 08:43:42', NULL, '河南', 2, '2019-01-01 08:47:16', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (629, 9, '杨鹏', '2018-12-13 09:56:12', NULL, '迈克国际九层', 1, '2018-12-13 09:56:12', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (630, 9, '杨鹏', '2018-12-14 09:56:12', NULL, '迈克国际九层', 1, '2018-12-14 09:56:12', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (631, 9, '杨鹏', '2018-12-15 09:56:12', NULL, '迈克国际九层', 1, '2018-12-15 09:56:01', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (632, 9, '杨鹏', '2018-12-16 09:56:12', NULL, '迈克国际九层', 1, '2018-12-16 09:56:12', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (633, 9, '杨鹏', '2018-12-17 09:56:12', NULL, '迈克国际九层', 1, '2018-12-17 09:56:12', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (634, 3, '吴文龙', '2018-12-16 10:26:41', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 1, '2018-12-16 10:26:41', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (635, 9, '杨鹏', '2018-12-18 10:26:41', NULL, '迈克国际九层', 1, '2018-12-18 10:26:41', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (636, 9, '杨鹏', '2018-12-19 10:26:41', NULL, '迈克国际九层', 1, '2018-12-19 10:26:41', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (637, 9, '杨鹏', '2018-12-20 10:26:41', NULL, '迈克国际九层', 1, '2018-12-20 10:26:41', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (638, 9, '杨鹏', '2018-12-21 10:26:41', NULL, '迈克国际九层', 1, '2018-12-21 10:26:41', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (639, 9, '杨鹏', '2018-12-22 10:26:41', NULL, '迈克国际九层', 1, '0019-12-22 10:26:41', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (640, 1, '苏文文', '2019-01-02 08:47:47', NULL, '河南', 2, '2019-01-02 10:48:11', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (641, 2, '程慧茹', '2018-12-14 08:59:59', NULL, '迈科国际', 3, '2018-12-14 08:59:59', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (642, 1, '苏文文', '2019-01-03 09:48:29', NULL, '河南', 2, '2019-01-03 10:48:48', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (643, 9, '杨鹏', '2018-12-23 08:59:59', NULL, '迈克国际九层', 1, '2018-12-23 08:59:59', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (644, 9, '杨鹏', '2018-12-24 08:59:59', NULL, '迈克国际九层', 1, '2018-12-24 08:59:59', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (645, 9, '杨鹏', '2018-12-25 08:59:59', NULL, '迈克国际九层', 1, '2018-12-25 08:59:59', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (646, 9, '杨鹏', '2018-12-26 08:59:59', NULL, '迈克国际九层', 1, '2018-12-26 08:59:59', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (647, 1, '苏文文', '2019-01-04 10:49:18', NULL, '河南', 2, '2019-01-04 10:49:28', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (648, 9, '杨鹏', '2018-12-27 08:59:59', NULL, '迈克国际九层', 1, '2018-12-27 08:59:59', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (649, 2, '程慧茹', '2018-12-15 11:09:34', NULL, '迈科国际', 3, '2018-12-15 11:09:34', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (650, 1, '苏文文', '2019-01-05 08:49:42', NULL, '河南', 2, '2019-01-05 08:49:55', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (651, 7, '董瑞', '2018-12-27 09:58:21', NULL, '迈克国际九层', 3, '2018-12-20 08:58:21', '董瑞', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (653, 1, '苏文文', '2019-01-07 08:51:02', NULL, '河南', 2, '2019-01-07 08:51:19', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (654, 7, '董瑞', '2018-12-28 09:58:21', NULL, '迈克国际九层', 3, '2018-12-28 08:58:21', '董瑞', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (655, 2, '程慧茹', '2018-12-17 08:22:33', NULL, '迈科国际', 3, '2018-12-17 08:22:33', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (656, 1, '苏文文', '2019-01-08 07:51:38', NULL, '河南', 2, '2019-01-08 07:51:57', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (657, 9, '杨鹏', '2018-12-28 08:22:33', NULL, '迈克国际九层', 1, '2018-12-28 08:22:33', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (658, 9, '杨鹏', '2018-12-29 08:22:33', NULL, '迈克国际九层', 1, '2018-12-29 08:22:33', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (659, 9, '杨鹏', '2018-12-30 08:22:33', NULL, '迈克国际九层', 1, '2018-12-30 08:22:33', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (660, 9, '杨鹏', '2018-12-31 08:22:33', NULL, '迈克国际九层', 1, '2018-12-31 08:22:33', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (661, 1, '苏文文', '2019-01-09 08:53:36', NULL, '河南', 2, '2019-01-09 07:53:46', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (662, 1, '苏文文', '2019-01-10 07:54:02', NULL, '河南', 2, '2019-01-10 07:54:18', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (663, 1, '苏文文', '2019-01-11 08:55:00', NULL, '河南', 2, '2019-01-11 08:55:18', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (664, 1, '苏文文', '2019-01-12 08:56:13', NULL, '河南', 2, '2019-01-12 08:56:24', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (665, 1, '苏文文', '2019-01-14 08:56:39', NULL, '河南', 2, '2019-01-14 08:56:53', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (666, 1, '苏文文', '2019-01-15 08:57:06', NULL, '河南', 2, '2019-01-15 08:57:18', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (667, 1, '苏文文', '2019-01-16 08:57:36', NULL, '河南', 2, '2019-01-16 08:57:45', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (668, 1, '苏文文', '2019-01-17 08:57:58', NULL, '河南', 2, '2019-01-17 08:58:11', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (669, 1, '苏文文', '2019-01-18 08:58:33', NULL, '河南', 2, '2019-01-22 08:58:44', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (670, 1, '苏文文', '2019-01-19 08:58:57', NULL, '河南', 2, '2019-01-19 08:59:05', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (671, 1, '苏文文', '2019-01-21 08:59:28', NULL, '河南', 2, '2019-01-21 10:59:37', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (672, 1, '苏文文', '2019-01-22 07:59:59', NULL, '河南', 2, '2019-01-22 08:00:11', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (673, 1, '苏文文', '2019-01-23 08:00:31', NULL, '河南', 2, '2019-01-23 08:00:44', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (674, 2, '程慧茹', '2018-12-19 08:12:12', NULL, '迈科国际', 3, '2018-12-19 08:12:12', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (675, 1, '苏文文', '2019-01-24 08:01:00', NULL, '河南', 2, '2019-01-24 08:01:09', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (676, 1, '苏文文', '2019-01-25 08:01:23', NULL, '河南', 2, '2019-01-25 08:01:33', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (677, 2, '程慧茹', '2018-12-20 08:55:59', NULL, '迈科国际三层', 3, '2018-12-20 08:55:59', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (678, 1, '苏文文', '2019-01-26 08:01:53', NULL, '河南', 2, '2019-01-26 08:02:10', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (679, 1, '苏文文', '2019-01-28 08:02:26', NULL, '河南', 2, '2019-01-28 08:02:39', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (680, 1, '苏文文', '2019-01-29 08:02:51', NULL, '河南', 2, '2019-01-29 08:03:03', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (681, 1, '苏文文', '2019-01-30 08:03:16', NULL, '河南', 2, '2019-01-30 08:03:29', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (682, 2, '程慧茹', '2018-12-21 09:23:56', NULL, '迈科国际', 3, '2018-12-21 09:23:56', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (684, 3, '吴文龙', '2018-12-18 10:26:41', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 1, '2018-12-18 10:26:41', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (685, 1, '苏文文', '2019-01-31 08:03:44', NULL, '河南', 2, '2019-01-31 08:03:53', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (686, 2, '程慧茹', '2018-12-22 10:23:34', NULL, '迈科国际', 3, '2018-12-22 10:23:34', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (687, 3, '吴文龙', '2018-12-20 10:26:41', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 1, '2018-12-20 10:26:41', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (688, 3, '吴文龙', '2018-12-21 10:26:41', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 1, '2018-12-21 10:26:41', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (689, 2, '程慧茹', '2018-12-24 08:22:44', NULL, '迈科国际', 3, '2018-12-24 08:22:44', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (690, 3, '吴文龙', '2018-12-22 10:26:41', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 1, '2018-12-22 10:26:41', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (691, 2, '程慧茹', '2018-12-25 09:00:09', NULL, '迈科国际', 3, '2018-12-25 09:00:09', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (692, 2, '程慧茹', '2018-12-26 08:11:22', NULL, '迈科国际', 3, '2018-12-26 08:11:22', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (693, 3, '吴文龙', '2018-12-25 10:26:41', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 1, '2018-12-25 10:26:41', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (694, 2, '程慧茹', '2018-12-27 10:33:55', NULL, '迈科国际', 3, '2018-12-27 10:33:55', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (695, 3, '吴文龙', '2018-12-26 10:26:41', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 1, '2018-12-26 10:26:41', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (696, 2, '程慧茹', '2018-12-28 08:44:36', NULL, '迈科国际', 3, '2018-12-28 08:44:36', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (697, 3, '吴文龙', '2018-12-27 10:26:41', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 1, '2018-12-27 10:26:41', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (698, 3, '吴文龙', '2018-12-28 10:26:41', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 1, '2018-12-28 10:26:41', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (699, 2, '程慧茹', '2018-12-29 08:38:56', NULL, '迈科国际', 3, '2018-12-29 08:38:56', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (700, 3, '吴文龙', '2018-12-29 10:26:41', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 1, '2018-12-29 10:26:41', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (730, 3, '吴文龙', '2019-01-08 07:10:53', NULL, NULL, NULL, '2019-01-23 10:36:18', '杨智', NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (731, 2, '吴文龙', '2019-01-23 11:39:19', 0, '迈克国际', NULL, '2019-01-23 11:41:10', NULL, NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (732, 1, NULL, '2019-01-23 11:39:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sign_in` VALUES (733, 2, '吴文龙', '2019-01-23 11:41:58', 0, '迈克国际', NULL, '2019-01-23 11:43:49', NULL, NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (734, 1, NULL, '2019-01-23 11:41:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sign_in` VALUES (735, 2, '吴文龙', '2019-01-23 01:42:30', 0, '迈克国际', NULL, '2019-01-23 13:44:18', NULL, NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (736, 1, NULL, '2019-01-23 13:42:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sign_in` VALUES (737, 2, '吴文龙', '2019-01-23 01:43:39', 0, '迈克国际', NULL, '2019-01-23 13:45:27', NULL, NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (738, 1, NULL, '2019-01-23 13:43:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sign_in` VALUES (739, 2, '吴文龙', '2019-01-23 01:45:16', 0, '迈克国际', NULL, '2019-01-23 13:47:05', NULL, NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (740, 1, NULL, '2019-01-23 13:45:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sign_in` VALUES (741, 2, '吴文龙', '2019-01-23 01:46:41', 0, '迈克国际', NULL, '2019-01-23 13:48:30', NULL, NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (742, 1, NULL, '2019-01-23 13:46:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sign_in` VALUES (743, 2, '吴文龙', '2019-01-23 01:47:46', 0, '迈克国际', NULL, '2019-01-23 13:49:35', NULL, NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (744, 1, NULL, '2019-01-23 13:47:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sign_in` VALUES (745, NULL, NULL, '2019-01-23 14:14:57', NULL, '', NULL, '2019-01-23 14:16:45', NULL, NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (746, NULL, NULL, '2019-01-23 14:16:15', NULL, '陕西省西安市雁塔区丈八沟街道CROSS万象汇', NULL, '2019-01-23 14:18:04', NULL, NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (747, NULL, NULL, '2019-01-23 14:18:30', NULL, '陕西省西安市雁塔区丈八沟街道CROSS万象汇', NULL, '2019-01-23 14:20:19', NULL, NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (748, NULL, NULL, '2019-01-23 14:20:28', NULL, '陕西省西安市雁塔区丈八沟街道CROSS万象汇', NULL, '2019-01-23 14:22:16', NULL, NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (749, NULL, NULL, '2019-01-23 14:22:28', NULL, '陕西省西安市雁塔区丈八沟街道CROSS万象汇', NULL, '2019-01-23 14:24:17', NULL, NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (750, 2, '吴文龙', '2019-01-23 03:26:21', 0, '迈克国际', NULL, '2019-01-23 15:28:10', NULL, NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (751, 1, NULL, '2019-01-23 15:26:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sign_in` VALUES (752, 2, '吴文龙', '2019-01-23 03:28:58', 0, '迈克国际', NULL, '2019-01-23 15:30:47', NULL, NULL, NULL, 1);
INSERT INTO `sign_in` VALUES (753, 1, NULL, '2019-01-23 15:28:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sign_out
-- ----------------------------
DROP TABLE IF EXISTS `sign_out`;
CREATE TABLE `sign_out`  (
  `sign_out_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '签退id',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '打卡人id',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '打卡人姓名',
  `sign_out_time` datetime(0) NULL DEFAULT NULL COMMENT '签退时间',
  `early` int(11) NULL DEFAULT NULL COMMENT '是否早退0正常，1早退',
  `workarea` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作区域名/打卡地址',
  `workarea_id` bigint(20) NULL DEFAULT NULL COMMENT '工作区域id',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `create_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `update_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_delete` int(4) UNSIGNED NULL DEFAULT 1 COMMENT '是否有效0无效，1有效',
  PRIMARY KEY (`sign_out_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 287 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '是否删除：作为逻辑删' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sign_out
-- ----------------------------
INSERT INTO `sign_out` VALUES (1, 4, '方策', '2018-12-01 19:32:15', NULL, '迈科国际', 3, '2018-12-01 19:32:15', 'admin', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (2, 4, '方策', '2018-12-02 19:32:15', NULL, '迈科国际', 3, '2018-12-02 19:32:15', 'admin', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (3, 4, '方策', '2018-12-03 19:32:15', NULL, '迈科国际', 3, '2018-12-03 19:32:15', 'admin', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (4, 4, '方策', '2018-12-04 18:32:15', NULL, '迈科国际', 3, '2018-12-04 18:32:15', 'admin', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (5, 4, '方策', '2018-12-05 18:32:15', NULL, '迈科国际', 3, '2018-12-05 18:32:15', 'admin', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (6, 4, '方策', '2018-12-06 18:32:15', NULL, '迈科国际', 3, '2018-12-06 18:32:15', 'admin', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (7, 4, '方策', '2018-12-07 18:32:15', NULL, '迈科国际', 3, '2018-12-07 18:32:15', 'admin', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (8, 4, '方策', '2018-12-08 19:32:15', NULL, '迈科国际', 3, '2018-12-08 19:32:15', 'admin', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (9, 4, '方策', '2018-12-09 19:32:15', NULL, '迈科国际', 3, '2018-12-09 19:32:15', 'admin', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (10, 4, '方策', '2018-12-10 19:32:15', NULL, '迈科国际', 3, '2018-12-10 19:32:15', 'admin', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (11, 4, '方策', '2018-12-11 19:32:15', NULL, '迈科国际', 3, '2018-12-11 19:32:15', 'admin', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (12, 4, '方策', '2018-12-12 19:32:15', NULL, '迈科国际', 3, '2018-12-12 19:32:15', 'admin', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (13, 4, '方策', '2018-12-13 19:32:15', NULL, '迈科国际', 3, '2018-12-13 19:32:15', 'admin', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (14, 4, '方策', '2018-12-14 19:32:15', NULL, '迈科国际', 3, '2018-12-14 19:32:15', 'admin', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (15, 4, '方策', '2018-12-15 19:32:15', NULL, '迈科国际', 3, '2018-12-15 19:32:15', 'admin', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (16, 4, '方策', '2018-12-16 19:32:15', NULL, '迈科国际', 3, '2018-12-16 19:32:15', 'admin', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (17, 4, '方策', '2018-12-17 19:32:15', NULL, '迈科国际', 3, '2018-12-17 19:32:15', 'admin', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (18, 4, '方策', '2018-12-18 19:32:15', NULL, '迈科国际', 3, '2018-12-18 19:32:15', 'admin', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (19, 4, '方策', '2018-12-19 19:32:15', NULL, '迈科国际', 3, '2018-12-19 19:32:15', 'admin', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (20, 4, '方策', '2018-12-20 19:32:15', NULL, '迈科国际', 3, '2018-12-20 19:32:15', 'admin', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (21, 4, '方策', '2018-12-21 19:32:15', NULL, '迈科国际', 3, '2018-12-21 19:32:15', 'admin', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (22, 4, '方策', '2018-12-24 19:32:15', NULL, '迈科国际', 3, '2018-12-24 19:32:15', 'admin', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (23, 4, '方策', '2018-12-25 19:32:15', NULL, '迈科国际', 3, '2018-12-25 19:32:15', 'admin', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (24, 4, '方策', '2018-12-26 19:32:15', NULL, '迈科国际', 3, '2018-12-26 19:32:15', 'admin', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (25, 4, '方策', '2018-12-27 19:32:15', NULL, '迈科国际', 3, '2018-12-27 19:32:15', 'admin', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (26, 4, '方策', '2018-12-28 19:32:15', NULL, '迈科国际', 3, '2018-12-28 19:32:15', 'admin', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (74, 8, '蒲勇', '2018-12-01 20:01:28', NULL, '迈科国际', 1, '2018-12-01 20:01:28', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (75, 6, '陈锦磊', '2018-12-01 18:22:47', NULL, '麦克国际一楼', 1, '2018-12-01 18:22:47', '陈锦磊', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (76, 8, '蒲勇', '2018-12-02 20:01:28', NULL, '迈科国际', 1, '2018-12-02 20:01:28', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (77, 6, '陈锦磊', '2018-12-02 18:23:28', NULL, '麦克国际二楼', 1, '2018-12-02 18:23:28', '陈锦磊', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (78, 8, '蒲勇', '2018-12-03 19:36:28', NULL, '迈科国际', 1, '2018-12-03 19:36:28', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (79, 8, '蒲勇', '2018-12-04 18:36:28', NULL, '迈科国际', 1, '2018-12-04 18:36:28', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (80, 8, '蒲勇', '2018-12-06 18:36:28', NULL, '迈科国际', 1, '2018-12-06 18:36:28', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (81, 8, '蒲勇', '2018-12-07 17:36:28', NULL, '迈科国际', 1, '2018-12-07 17:36:28', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (82, 8, '蒲勇', '2018-12-07 20:36:28', NULL, '迈科国际', 1, '2018-12-07 20:36:28', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (83, 8, '蒲勇', '2018-12-08 20:36:28', NULL, '迈科国际', 1, '2018-12-08 20:36:28', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (84, 8, '蒲勇', '2018-12-09 20:36:28', NULL, '迈科国际', 1, '2018-12-09 20:36:28', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (85, 8, '蒲勇', '2018-12-10 20:36:28', NULL, '迈科国际', 1, '2018-12-10 20:36:28', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (86, 8, '蒲勇', '2018-12-11 17:36:28', NULL, '迈科国际', 1, '2018-12-11 17:36:28', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (87, 8, '蒲勇', '2018-12-12 17:36:28', NULL, '迈科国际', 1, '2018-12-12 17:36:28', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (88, 8, '蒲勇', '2018-12-15 17:36:28', NULL, '迈科国际', 1, '2018-12-15 17:36:28', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (89, 8, '蒲勇', '2018-12-17 17:36:28', NULL, '迈科国际', 1, '2018-12-17 17:36:28', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (90, 8, '蒲勇', '2018-12-18 18:36:28', NULL, '迈科国际', 1, '2018-12-18 18:36:28', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (91, 8, '蒲勇', '2018-12-19 18:36:28', NULL, '迈科国际', 1, '2018-12-19 18:36:28', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (92, 8, '蒲勇', '2018-12-20 18:36:28', NULL, '迈科国际', 1, '2018-12-20 18:36:28', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (93, 8, '蒲勇', '2018-12-22 18:36:28', NULL, '迈科国际', 1, '2018-12-22 18:36:28', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (94, 8, '蒲勇', '2018-12-26 17:36:28', NULL, '迈科国际', 1, '2018-12-26 17:36:28', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (95, 8, '蒲勇', '2018-12-27 17:36:28', NULL, '迈科国际', 1, '2018-12-27 17:36:28', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (96, 8, '蒲勇', '2018-12-28 18:36:28', NULL, '迈科国际', 1, '2018-12-28 18:36:28', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (97, 8, '蒲勇', '2018-12-29 18:36:28', NULL, '迈科国际', 1, '2018-12-29 18:36:28', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (98, 8, '蒲勇', '2018-12-30 18:36:28', NULL, '迈科国际', 1, '2018-12-30 18:36:28', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (99, 8, '蒲勇', '2018-12-31 18:36:28', NULL, '迈科国际', 1, '2018-12-31 18:36:28', '蒲勇', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (101, 6, '陈锦磊', '2018-12-03 18:23:48', NULL, '麦克国际三楼', 1, '2018-12-03 18:23:48', '陈锦磊', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (102, 6, '陈锦磊', '2018-12-04 18:37:26', NULL, '麦克国际四楼', 1, '2018-12-04 18:37:26', '陈锦磊', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (103, 6, '陈锦磊', '2018-12-05 18:38:18', NULL, '麦克国际五楼', 1, '2018-12-05 18:38:18', '陈锦磊', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (104, 6, '陈锦磊', '2018-12-06 18:39:34', NULL, '麦克国际六楼', 1, '2018-12-06 18:39:34', '陈锦磊', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (105, 6, '陈锦磊', '2018-12-07 18:40:25', NULL, '麦克国际七楼', 1, '2018-12-07 18:40:25', '陈锦磊', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (106, 6, '陈锦磊', '2018-12-08 18:40:49', NULL, '麦克国际八楼', 1, '2018-12-08 18:40:49', '陈锦磊', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (107, 6, '陈锦磊', '2018-12-09 18:41:13', NULL, '迈科国际九楼', 1, '2018-12-09 18:41:13', '陈锦磊', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (108, 6, '陈锦磊', '2018-12-10 18:41:39', NULL, '麦克国际十楼', 1, '2018-12-10 18:41:39', '陈锦磊', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (109, 6, '陈锦磊', '2018-12-11 18:42:10', NULL, '麦克国际十一楼', 1, '2018-12-11 18:42:10', '陈锦磊', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (110, 6, '陈锦磊', '2018-12-12 18:42:43', NULL, '麦克国际十二楼', 1, '2018-12-12 18:42:43', '陈锦磊', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (111, 6, '陈锦磊', '2018-12-13 18:43:09', NULL, '麦克国际十三楼', 1, '2018-12-13 18:43:09', '陈锦磊', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (113, 6, '陈锦磊', '2018-12-14 18:43:52', NULL, '迈科国际十四楼', 1, '2018-12-14 18:43:52', '陈锦磊', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (114, 6, '陈锦磊', '2018-12-15 18:47:01', NULL, '迈科国际十五楼', 1, '2018-12-15 18:47:01', '陈锦磊', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (115, 6, '陈锦磊', '2018-12-16 18:47:29', NULL, '麦克国际十六楼', 1, '2018-12-16 18:47:29', '陈锦磊', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (116, 6, '陈锦磊', '2018-12-17 18:48:04', NULL, '迈科国际十七楼', 1, '2018-12-17 18:48:04', '陈锦磊', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (117, 6, '陈锦磊', '2018-12-18 18:49:32', NULL, '麦克国际十八楼', 1, '2018-12-18 18:49:32', '陈锦磊', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (118, 6, '陈锦磊', '2018-12-19 18:50:20', NULL, '麦克国际十九楼', 1, '2018-12-19 18:50:20', '陈锦磊', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (119, 6, '陈锦磊', '2018-12-20 18:51:41', NULL, '麦克国际二十楼', 1, '2018-12-20 18:51:41', '陈锦磊', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (120, 6, '陈锦磊', '2018-12-21 10:52:21', NULL, '麦克国际二十一楼', 1, '2018-12-21 10:52:21', '陈锦磊', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (121, 9, '杨鹏', '2018-12-01 19:32:15', NULL, '迈科国际九层', 1, '2018-12-01 19:32:15', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (122, 9, '杨鹏', '2018-12-02 19:32:15', NULL, '迈科国际九层', 1, '2018-12-02 19:32:15', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (123, 9, '杨鹏', '2018-12-03 19:32:15', NULL, '迈科国际九层', 1, '0018-12-03 19:32:15', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (124, 9, '杨鹏', '2018-12-04 19:32:15', NULL, '迈科国际九层', 1, '2018-12-04 19:32:15', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (125, 9, '杨鹏', '2018-12-05 19:32:15', NULL, '迈科国际九层', 1, '2018-12-05 19:32:15', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (126, 9, '杨鹏', '2018-12-06 19:32:15', NULL, '迈科国际九层', 1, '2018-12-06 19:32:15', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (127, 9, '杨鹏', '2018-12-07 17:36:28', NULL, '迈科国际九层', 1, '2018-12-07 17:36:28', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (128, 7, '董瑞', '2018-12-03 18:50:20', NULL, '迈科国际11楼', 3, '2018-12-03 18:50:20', '董瑞', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (129, 7, '董瑞', '2018-12-04 18:50:20', NULL, '迈科国际11楼', 3, '2018-12-04 18:50:20', '董瑞', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (130, 7, '董瑞', '2018-12-05 16:50:20', NULL, '迈科国际11楼', 3, '2018-12-05 16:50:20', '董瑞', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (131, 7, '董瑞', '2018-12-06 18:50:20', NULL, '迈科国际11楼', 3, '2018-12-06 18:50:20', '董瑞', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (132, 7, '董瑞', '2018-12-07 18:50:20', NULL, '迈科国际11楼', 3, '2018-12-07 18:50:20', '董瑞', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (133, 7, '董瑞', '2018-12-10 18:50:20', NULL, '迈科国际11楼', 3, '2018-12-10 18:50:20', '董瑞', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (134, 7, '董瑞', '2018-12-11 18:50:20', NULL, '迈科国际11楼', 3, '2018-12-11 18:50:20', '董瑞', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (135, 7, '董瑞', '2018-12-12 18:50:20', NULL, '迈科国际11楼', 3, '2018-12-12 18:50:20', '董瑞', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (136, 7, '董瑞', '2018-12-13 18:50:20', NULL, '迈科国际11楼', 3, '2018-12-13 18:50:20', '董瑞', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (137, 7, '董瑞', '2018-12-14 18:50:20', NULL, '迈科国际11楼', 3, '2018-12-14 18:50:20', '董瑞', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (138, 7, '董瑞', '2018-12-17 18:50:20', NULL, '迈科国际11楼', 3, '2018-12-17 18:50:20', '董瑞', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (139, 7, '董瑞', '2018-12-18 18:50:20', NULL, '迈科国际11楼', 3, '2018-12-18 18:50:20', '董瑞', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (140, 7, '董瑞', '2018-12-19 18:50:20', NULL, '迈科国际11楼', 3, '2018-12-19 18:50:20', '董瑞', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (141, 7, '董瑞', '2018-12-20 18:50:20', NULL, '迈科国际11楼', 3, '2018-12-20 18:50:20', '董瑞', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (142, 7, '董瑞', '2018-12-21 18:50:20', NULL, '迈科国际11楼', 3, '2018-12-21 18:50:20', '董瑞', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (143, 7, '董瑞', '2018-12-24 18:50:20', NULL, '迈科国际11楼', 3, '2018-12-24 18:50:20', '董瑞', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (144, 7, '董瑞', '2018-12-25 18:50:20', NULL, '迈科国际11楼', 3, '2018-12-25 18:50:20', '董瑞', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (145, 7, '董瑞', '2018-12-26 18:50:20', NULL, '迈科国际11楼', 3, '2018-12-26 18:50:20', '董瑞', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (146, 7, '董瑞', '2018-12-27 18:50:20', NULL, '迈科国际11楼', 3, '2018-12-27 18:50:20', '董瑞', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (147, 7, '董瑞', '2018-12-28 18:50:20', NULL, '迈科国际11楼', 3, '2018-12-28 18:50:20', '董瑞', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (148, 9, '杨鹏', '2018-12-08 17:36:28', NULL, '迈科国际九层', 1, '2018-12-08 17:36:28', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (149, 9, '杨鹏', '2018-12-09 17:36:28', NULL, '迈科国际九层', 1, '2018-12-09 17:36:28', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (150, 9, '杨鹏', '2018-12-10 17:36:28', NULL, '迈科国际九层', 1, '2018-12-10 17:36:28', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (151, 9, '杨鹏', '2018-12-11 17:36:28', NULL, '迈科国际九层', 1, '2018-12-11 17:36:28', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (152, 9, '杨鹏', '2018-12-12 17:36:28', NULL, '迈科国际九层', 1, '2018-12-12 17:36:28', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (153, 9, '杨鹏', '2018-12-13 17:36:28', NULL, '迈科国际九层', 1, '2018-12-13 17:36:28', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (154, 6, '陈锦磊', '2018-12-22 18:52:54', NULL, '麦克国际二十二楼', 1, '2018-12-22 18:52:54', '陈锦磊', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (155, 6, '陈锦磊', '2019-01-23 18:59:59', NULL, '麦克国际二十三楼', 1, '2019-01-23 18:59:59', '陈锦磊', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (156, 6, '陈锦磊', '2018-12-23 18:59:59', NULL, '麦克国际二十三楼', 1, '2018-12-23 18:59:59', '陈锦磊', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (157, 9, '杨鹏', '2018-12-14 18:52:54', NULL, '迈科国际九层', 1, '2018-01-14 18:52:54', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (158, 9, '杨鹏', '2018-12-15 18:52:54', NULL, '迈科国际九层', 1, '2018-01-15 18:52:54', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (159, 9, '杨鹏', '2018-12-16 18:52:54', NULL, '迈科国际九层', 1, '2018-01-16 18:52:54', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (160, 9, '杨鹏', '2018-12-17 18:52:54', NULL, '迈科国际九层', 1, '2018-01-17 18:52:54', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (161, 9, '杨鹏', '2018-12-18 18:52:54', NULL, '迈科国际九层', 1, '2018-01-18 18:52:54', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (162, 9, '杨鹏', '2018-12-20 18:52:54', NULL, '迈科国际九层', 1, '2018-01-20 18:52:54', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (163, 9, '杨鹏', '2018-12-21 18:52:54', NULL, '迈科国际九层', 1, '2018-01-21 18:52:54', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (164, 9, '杨鹏', '2018-12-22 18:50:20', NULL, '迈科国际九层', 1, '2018-12-22 18:50:20', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (165, 9, '杨鹏', '2018-12-23 18:50:20', NULL, '迈科国际九层', 1, '2018-12-23 18:50:20', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (166, 9, '杨鹏', '2018-12-24 18:50:20', NULL, '迈科国际九层', 1, '2018-12-24 18:50:20', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (167, 9, '杨鹏', '2018-12-25 18:50:20', NULL, '迈科国际九层', 1, '2018-12-25 18:50:20', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (168, 9, '杨鹏', '2018-12-26 18:50:20', NULL, '迈科国际九层', 1, '2018-12-26 18:50:20', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (169, 9, '杨鹏', '2018-12-27 18:50:20', NULL, '迈科国际九层', 1, '2018-12-27 18:50:20', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (170, 1, '苏文文', '2019-01-01 19:04:24', NULL, '河南', 2, '2019-01-01 19:04:48', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (171, 1, '苏文文', '2019-01-02 19:05:13', NULL, '河南', 2, '2019-01-02 19:05:40', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (172, 1, '苏文文', '2019-01-03 17:06:47', NULL, '河南', 2, '2019-01-03 19:07:04', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (173, 9, '杨鹏', '2018-12-28 18:50:20', NULL, '迈科国际九层', 1, '2018-12-28 18:50:02', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (174, 9, '杨鹏', '2018-12-29 18:50:20', NULL, '迈科国际九层', 1, '2018-12-29 18:50:20', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (175, 9, '杨鹏', '2018-12-30 18:50:20', NULL, '迈科国际九层', 1, '2018-12-30 18:50:20', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (176, 6, '陈锦磊', '2018-12-24 18:07:14', NULL, '麦克国际二十四楼', NULL, '2018-12-24 18:07:14', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (177, 1, '苏文文', '2019-01-04 17:07:23', NULL, '河南', 2, '2019-01-04 19:07:36', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (178, 9, '杨鹏', '2018-12-31 18:50:20', NULL, '迈科国际九层', 1, '2018-12-31 18:50:20', '杨鹏', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (179, 6, '陈锦磊', '2018-12-25 18:07:45', NULL, '麦克国际二十五楼', NULL, '2018-12-25 11:07:45', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (180, 1, '苏文文', '2019-01-05 19:07:52', NULL, '河南', 2, '2019-01-05 19:07:59', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (182, 6, '陈锦磊', '2018-12-26 18:07:45', NULL, '麦克国际二十六楼', NULL, '2018-12-26 18:07:45', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (183, 6, '陈锦磊', '2018-12-27 18:09:29', NULL, '麦克国际二十七楼', NULL, '2018-12-27 18:09:29', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (184, 6, '陈锦磊', '2018-12-28 18:10:22', NULL, '麦克国际二十八楼', NULL, '2018-12-28 18:10:22', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (185, 1, '苏文文', '2019-01-08 19:09:49', NULL, '河南', 2, '2019-01-08 19:10:03', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (186, 1, '苏文文', '2019-01-09 19:10:23', NULL, '河南', 2, '2019-01-09 19:10:34', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (187, 1, '苏文文', '2019-01-10 19:59:53', NULL, '河南', 2, '2019-01-10 19:11:00', '苏文文', NULL, '刘威', 1);
INSERT INTO `sign_out` VALUES (188, 1, '苏文文', '2019-01-11 19:11:12', NULL, '河南', 2, '2019-01-11 19:11:26', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (189, 6, '陈锦磊', '2018-12-29 18:10:50', NULL, '麦克国际二十九楼', NULL, '2018-12-29 18:10:50', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (190, 6, '陈锦磊', '2018-12-29 18:10:50', NULL, '麦克国际二十九楼', NULL, '2018-12-29 18:10:50', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (191, 1, '苏文文', '2019-01-12 19:11:41', NULL, '河南', 2, '2019-01-12 19:11:51', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (192, 6, '陈锦磊', '2018-12-30 18:11:47', NULL, '麦克国际三十楼', NULL, '2018-12-30 18:11:47', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (193, 1, '苏文文', '2019-01-14 19:12:03', NULL, '河南', 2, '2019-01-14 19:12:16', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (195, 1, '苏文文', '2019-01-16 19:13:04', NULL, '河南', 2, '2019-01-16 19:13:13', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (196, 1, '苏文文', '2019-01-17 20:13:34', NULL, '河南', 2, '2019-01-17 20:13:45', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (197, 1, '苏文文', '2019-01-18 19:14:04', NULL, '河南', 2, '2019-01-18 19:14:13', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (198, 1, '苏文文', '2019-01-19 20:14:27', NULL, '河南', 2, '2019-01-19 19:14:43', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (200, 1, '苏文文', '2019-01-23 19:15:08', NULL, '河南', 2, '2019-01-23 19:15:21', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (201, 2, '程慧茹', '2018-12-01 18:44:55', NULL, '迈科国际', 3, '2018-12-01 18:44:55', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (202, 1, '苏文文', '2019-01-24 19:15:08', NULL, '河南', 2, '2019-01-24 19:15:21', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (203, 1, '苏文文', '2019-01-26 19:15:08', NULL, '河南', 2, '2019-01-26 19:15:21', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (205, 1, '苏文文', '2019-01-25 19:15:08', NULL, '河南', 2, '2019-01-25 19:15:21', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (206, 1, '苏文文', '2019-01-28 19:15:08', NULL, '河南', 2, '2019-01-28 19:15:21', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (207, 2, '程慧茹', '2018-12-02 18:10:50', NULL, '迈科国际', 3, '2018-12-02 18:10:50', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (208, 1, '苏文文', '2019-01-29 19:15:08', NULL, '河南', 2, '2019-01-29 19:15:21', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (209, 1, '苏文文', '2019-01-30 19:15:08', NULL, '河南', 2, '2019-01-30 19:15:21', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (210, 1, '苏文文', '2019-01-31 19:15:08', NULL, '河南', 2, '2019-01-31 19:15:21', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (211, 2, '程慧茹', '2018-12-03 19:00:00', NULL, '迈科国际', 3, '2018-12-03 19:00:00', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (212, 2, '程慧茹', '2018-12-05 18:55:32', NULL, '迈科国际', 3, '2018-12-05 18:55:32', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (213, 2, '程慧茹', '2018-12-06 20:12:26', NULL, '迈科国际', 3, '2018-12-06 20:12:26', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (214, 2, '程慧茹', '2018-12-07 19:54:43', NULL, '迈科国际', 3, '2018-12-07 19:54:43', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (215, 2, '程慧茹', '2018-12-08 20:22:33', NULL, '迈科国际', 3, '2018-12-08 20:22:33', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (218, 6, '陈锦磊', '2018-12-31 18:12:13', NULL, '麦克国际三十一楼', NULL, '2018-12-31 18:12:13', '歪歪', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (219, 6, '陈锦磊', '2018-12-31 18:12:13', NULL, '麦克国际三十一楼', NULL, '2018-12-31 18:12:13', '歪歪', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (221, 3, '吴文龙', '2018-12-02 19:54:43', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 3, '2018-12-02 19:54:43', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (222, 3, '吴文龙', '2018-12-03 19:54:43', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 3, '2018-12-03 19:54:43', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (223, 3, '吴文龙', '2018-12-04 19:54:43', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 3, '2018-12-04 19:54:43', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (224, 3, '吴文龙', '2018-12-05 19:54:43', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 3, '2018-12-05 19:54:43', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (225, 3, '吴文龙', '2018-12-06 19:54:43', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 3, '2018-12-06 19:54:43', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (226, 3, '吴文龙', '2018-12-07 19:54:43', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 3, '2018-12-07 19:54:43', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (227, 3, '吴文龙', '2018-12-08 19:54:43', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 3, '2018-12-08 19:54:43', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (228, 3, '吴文龙', '2018-12-09 19:54:43', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 3, '2018-12-09 19:54:43', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (230, 3, '吴文龙', '2018-12-11 19:54:43', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 3, '2018-12-11 19:54:43', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (231, 3, '吴文龙', '2018-12-12 19:54:43', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 3, '2018-12-12 19:54:43', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (232, 3, '吴文龙', '2018-12-13 19:54:43', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 3, '2018-12-13 19:54:43', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (233, 1, '苏文文', '2019-01-21 19:40:20', NULL, '河南', 2, '2019-01-21 19:40:32', '苏文文', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (234, 3, '吴文龙', '2018-12-14 19:54:43', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 3, '2018-12-14 19:54:43', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (235, 3, '吴文龙', '2018-12-15 19:54:43', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 3, '2018-12-15 19:54:43', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (236, 3, '吴文龙', '2018-12-16 19:54:43', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 3, '2018-12-16 19:54:43', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (237, 3, '吴文龙', '2018-12-22 19:54:43', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 3, '2018-12-17 19:54:43', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (239, 2, '程慧茹', '2018-12-10 20:55:32', NULL, '迈科国际', 3, '2018-12-10 20:55:32', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (240, 3, '吴文龙', '2018-12-19 19:54:43', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 3, '2018-12-19 19:54:43', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (241, 2, '程慧茹', '2018-12-11 18:35:55', NULL, '迈科国际', 3, '2018-12-11 18:35:55', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (242, 3, '吴文龙', '2018-12-20 19:54:43', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 3, '2018-12-20 19:54:43', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (243, 3, '吴文龙', '2018-12-21 19:54:43', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 3, '2018-12-21 19:54:43', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (244, 2, '程慧茹', '2018-12-12 19:22:33', NULL, '迈科国际', 3, '2018-12-12 19:22:33', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (245, 2, '程慧茹', '2018-12-13 19:22:34', NULL, '迈科国际', 3, '2018-12-13 19:22:34', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (246, 2, '程慧茹', '2018-12-14 19:22:35', NULL, '迈科国际', 3, '2018-12-14 19:22:35', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (247, 2, '程慧茹', '2018-12-15 19:22:25', NULL, '迈科国际', 3, '2018-12-15 19:22:25', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (248, 2, '程慧茹', '2018-12-17 19:22:37', NULL, '迈科国际', 3, '2018-12-17 19:22:37', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (249, 2, '程慧茹', '2018-12-18 19:22:33', NULL, '迈科国际', 3, '2018-12-18 19:22:33', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (250, 3, '吴文龙', '2018-12-22 19:54:43', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 3, '2018-12-22 19:54:43', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (251, 2, '程慧茹', '2018-12-19 19:22:33', NULL, '迈科国际', 3, '2018-12-19 19:22:33', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (252, 3, '吴文龙', '2018-12-25 19:54:43', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 3, '2018-12-25 19:54:43', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (253, 3, '吴文龙', '2018-12-26 19:54:43', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 3, '2018-12-26 19:54:43', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (254, 3, '吴文龙', '2018-12-27 19:54:43', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 3, '2018-12-27 19:54:43', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (255, 3, '吴文龙', '2018-12-28 19:54:43', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 3, '2018-12-28 19:54:43', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (256, 3, '吴文龙', '2018-12-29 19:54:43', NULL, '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 3, '2018-12-29 19:54:43', '吴文龙', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (257, 2, '程慧茹', '2018-12-20 19:22:33', NULL, '迈科国际', 3, '2018-12-20 19:22:33', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (258, 2, '程慧茹', '2018-12-21 19:22:33', NULL, '迈科国际', 3, '2018-12-21 19:22:33', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (259, 2, '程慧茹', '2018-12-22 19:22:33', NULL, '迈科国际', 3, '2018-12-22 19:22:33', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (260, 2, '程慧茹', '2018-12-24 19:22:33', NULL, '迈科国际', 3, '2018-12-24 19:22:33', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (261, 2, '程慧茹', '2018-12-25 19:22:33', NULL, '迈科国际', 3, '2018-12-25 19:22:33', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (262, 2, '程慧茹', '2018-12-26 19:22:33', NULL, '迈科国际', 3, '2018-12-26 19:22:33', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (263, 2, '程慧茹', '2018-12-27 19:22:33', NULL, '迈科国际', 3, '2018-12-27 19:22:33', '程慧茹', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (278, 3, '吴文龙', '2019-01-08 20:10:53', NULL, NULL, NULL, '2019-01-23 10:14:18', '杨智', NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (279, 2, '吴文龙', '2019-01-23 11:39:19', 0, '迈克国际', NULL, '2019-01-23 11:41:10', NULL, NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (280, 2, '吴文龙', '2019-01-23 11:41:59', 0, '迈克国际', NULL, '2019-01-23 11:43:50', NULL, NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (281, 2, '吴文龙', '2019-01-23 01:42:30', 0, '迈克国际', NULL, '2019-01-23 13:44:19', NULL, NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (282, 2, '吴文龙', '2019-01-23 01:43:39', 0, '迈克国际', NULL, '2019-01-23 13:45:28', NULL, NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (283, 2, '吴文龙', '2019-01-23 01:45:16', 0, '迈克国际', NULL, '2019-01-23 13:47:05', NULL, NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (284, 2, '吴文龙', '2019-01-23 01:46:41', 0, '迈克国际', NULL, '2019-01-23 13:48:30', NULL, NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (285, 2, '吴文龙', '2019-01-23 01:47:46', 0, '迈克国际', NULL, '2019-01-23 13:49:35', NULL, NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (286, 2, '吴文龙', '2019-01-23 03:26:21', 0, '迈克国际', NULL, '2019-01-23 15:28:10', NULL, NULL, NULL, 1);
INSERT INTO `sign_out` VALUES (287, 2, '吴文龙', '2019-01-23 03:28:58', 0, '迈克国际', NULL, '2019-01-23 15:30:47', NULL, NULL, NULL, 1);

-- ----------------------------
-- Table structure for tutor
-- ----------------------------
DROP TABLE IF EXISTS `tutor`;
CREATE TABLE `tutor`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '导师id',
  `tutor_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '导师姓名',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `identify` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '盐值',
  `gender` int(11) NULL DEFAULT NULL COMMENT '性别0女，1男',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `workarea_id` bigint(20) NULL DEFAULT NULL COMMENT '工作区域id',
  `workarea_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作区域地址',
  `company_id` bigint(20) NULL DEFAULT NULL COMMENT '公司id',
  `company_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司名称',
  `join_time` date NULL DEFAULT NULL COMMENT '入职时间',
  `leave_time` date NULL DEFAULT NULL COMMENT '离职时间',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `create_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `update_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_delete` int(4) UNSIGNED NULL DEFAULT 1 COMMENT '是否有效 1有效，0无效',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 74 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tutor
-- ----------------------------
INSERT INTO `tutor` VALUES (1, '刘威', '13333333333', NULL, '111111111111111111', '71042701A070F86C4CC274E27BE44C68', 'A0CD854E-C504-4A80-8E48-6F82CE31F1E9', NULL, NULL, 1, '延安', 1, '北京柯莱特信息有限公司', NULL, NULL, '2019-01-21 15:21:25', 'admin', NULL, NULL, 1);
INSERT INTO `tutor` VALUES (2, '杨智', '13433333333', NULL, '888888888888888888', 'D34930CC5B3D18D0AB59048BAE755349', '914a620a-a82d-4f04-8b51-e6725eea19d2', NULL, NULL, 2, '河南', 1, '北京柯莱特信息有限公司', NULL, NULL, '2019-01-21 15:33:43', 'admin', NULL, NULL, 1);
INSERT INTO `tutor` VALUES (3, '张泽祥', '13433333335', NULL, '777777777777777788', '9A7D95DC02AB73AC07D3E7977B4C1EC4', '0c0f3f66-a85b-47e4-ad8e-4d16141478ac', NULL, NULL, 2, '河南', 1, '北京柯莱特信息有限公司', NULL, NULL, '2019-01-21 15:34:44', 'admin', NULL, NULL, 1);
INSERT INTO `tutor` VALUES (4, '党恒', '14444444444', NULL, '333333333333333333', 'AD3EB3C6AC668C0B9A7436C83EA784D9', 'a5ae8356-7fd3-4bf3-a07e-9af2c686969e', NULL, NULL, 3, '西安', 1, '北京柯莱特信息有限公司', NULL, NULL, '2019-01-21 15:36:02', 'admin', NULL, NULL, 1);
INSERT INTO `tutor` VALUES (66, '苏文文', '13388888888', NULL, '444444444444444444', '7F755733E152DE4136B27C985DD27268', '2b36d4b0-9e02-48f5-8204-b301c46f3ad3', NULL, NULL, 2, '西安邮电大学', 1, '北京柯莱特信息有限公司', '2019-01-23', NULL, '2019-01-23 17:56:26', 'admin', NULL, NULL, 0);
INSERT INTO `tutor` VALUES (67, '方策', '18799999999', NULL, '120110199009090909', '29F593A7133C110B8378959781446FD3', 'a39c781a-2d45-4761-9454-713020605bb4', NULL, NULL, 1, '江苏', 1, '北京柯莱特信息有限公司', '2019-01-24', NULL, '2019-01-24 14:59:58', 'admin', NULL, NULL, 1);
INSERT INTO `tutor` VALUES (68, '代虎', '18777777777', NULL, '120110199009090910', '85BF42CC3112FCE65DD7D1CD34E6DCCF', '913454f5-e9a6-4474-bc23-0a7298388f29', NULL, NULL, 2, '西安邮电大学', 1, '北京柯莱特信息有限公司', '2019-01-24', NULL, '2019-01-24 17:20:27', 'admin', NULL, NULL, 1);
INSERT INTO `tutor` VALUES (69, '董瑞', '18755555555', NULL, '120110199009090912', '2FB5F03D7E58CF3B1072C03ADC1D282A', '7c3a659e-2e38-4ab8-879d-d35093ec089e', NULL, NULL, 2, '西安邮电大学', 1, '北京柯莱特信息有限公司', '2019-01-24', NULL, '2019-01-24 17:21:09', 'admin', NULL, NULL, 1);
INSERT INTO `tutor` VALUES (72, NULL, NULL, NULL, NULL, 'C49F8ACE6D428074A3558431866D346E', '5be57cbf-44fb-4dcb-a1ec-7b1a3993b4fe', NULL, NULL, 1, '江苏', 1, '北京柯莱特信息有限公司', NULL, NULL, '2019-03-15 18:34:25', 'admin', '2019-03-15 18:34:25', 'admin', 1);
INSERT INTO `tutor` VALUES (73, NULL, '', NULL, NULL, '5A051FCEAFEB26CBBD92326F99F6BD7F', '8f3f180e-4ee9-45ec-a484-f58634848e90', NULL, NULL, 1, '江苏', 1, '北京柯莱特信息有限公司', NULL, NULL, '2019-03-15 18:34:25', 'admin', '2019-03-15 18:34:25', 'admin', 1);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '实习生id',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实习生姓名',
  `gender` int(4) NULL DEFAULT NULL COMMENT '性别0女，1男',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '盐值',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `identify` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `tutor_id` bigint(20) NULL DEFAULT NULL COMMENT '导师id',
  `tutor_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '导师姓名',
  `company_id` bigint(20) NULL DEFAULT NULL COMMENT '公司id',
  `company_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司名称',
  `workarea_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '工作区域id',
  `workarea_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作区域名称',
  `join_time` date NULL DEFAULT NULL COMMENT '入职日期',
  `leave_time` date NULL DEFAULT NULL COMMENT '离职日期',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '记录创建时间',
  `create_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '记录创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '记录修改时间',
  `update_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '记录修改人',
  `is_delete` int(4) UNSIGNED NULL DEFAULT 1 COMMENT '是否有效 1有效，0无效',
  `tutor_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 303 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '实习生表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '苏文文', NULL, NULL, '6BD5D9A0159225EF2E70C2D3524C6128', 'AB61A280-3121-4E7B-A636-5816650881F2', '13388888888', '444444444444444444', NULL, 2, '刘威', 1, '北京柯莱特信息有限公司', 2, '西安邮电大学', NULL, NULL, '2019-01-21 15:30:26', 'admin', '2019-01-23 17:54:06', 'admin', 0, '13333333333');
INSERT INTO `user` VALUES (2, '程慧茹', NULL, NULL, 'AAB7F0110C937BEBBCD55F7F8D23BF66', 'BF05B2F8-B8B7-4DA6-AE1A-7211FF7FF367', '15555555555', '123333333333333333', NULL, 1, '刘威', 1, '北京柯莱特信息有限公司', 2, '西安邮电大学', NULL, NULL, '2019-01-21 15:37:16', 'admin', '2019-01-23 17:58:25', 'admin', 1, '13333333333');
INSERT INTO `user` VALUES (3, '吴文龙', NULL, NULL, '8419FF1159E9D682360EFCE25B1FBBA2', 'f3351d3c-be1b-4229-9a2d-1fea01af42ee', '18733333333', '120110199009090908', NULL, 3, '张泽祥', 1, '北京柯莱特信息有限公司', 1, '延安', NULL, NULL, '2019-01-22 09:50:52', 'admin', '2019-01-22 09:50:52', 'admin', 1, '13433333333');
INSERT INTO `user` VALUES (4, '方策', NULL, NULL, '4B10A9A2C8CA795928785D35DD68E700', '86af38b5-042f-4e42-bd24-6ee9996ccd31', '18799999999', '120110199009090909', NULL, 4, '党恒', 1, '北京柯莱特信息有限公司', 1, '江苏', NULL, NULL, '2019-01-22 09:50:52', 'admin', '2019-01-24 14:44:21', 'admin', 0, '13433333333');
INSERT INTO `user` VALUES (5, '代虎', NULL, NULL, 'C58D8A1FDD71CC3AB3054227103117CE', 'b9137c1a-5023-4d11-9fa3-e475efa49d73', '18777777777', '120110199009090910', NULL, 4, '党恒', 1, '北京柯莱特信息有限公司', 1, '延安', NULL, NULL, '2019-01-22 09:50:53', 'admin', '2019-01-22 09:50:53', 'admin', 0, '14444444444');
INSERT INTO `user` VALUES (6, '陈锦磊', NULL, NULL, '6685BE26AE4F8C9A331348B6AEF58351', 'a88592e3-9437-4b7c-b37b-fa21e9eaeca8', '18766666666', '120110199009090911', NULL, 68, '代虎', 1, '北京柯莱特信息有限公司', 1, '延安', NULL, NULL, '2019-01-22 09:50:54', 'admin', '2019-01-22 09:50:54', 'admin', 1, '14444444444');
INSERT INTO `user` VALUES (7, '董瑞', NULL, NULL, 'A7C379DA52B5494027887FF174AC30D2', '12296cbe-8e28-4984-bc4c-0255f8b0ad1c', '18755555555', '120110199009090912', NULL, 68, '代虎', 1, '北京柯莱特信息有限公司', 1, '延安', NULL, NULL, '2019-01-22 09:50:54', 'admin', '2019-01-22 09:50:54', 'admin', 0, '13433333335');
INSERT INTO `user` VALUES (8, '蒲勇', NULL, NULL, '10C209873967E98AAB01DC34D5395A3E', '2f997806-0f17-4ee4-8278-b34ff57d1934', '15688888888', '120110199009090913', NULL, 2, '杨智', 1, '北京柯莱特信息有限公司', 1, '延安', NULL, NULL, '2019-01-22 09:50:55', 'admin', '2019-01-22 09:50:55', 'admin', 1, '13433333333');
INSERT INTO `user` VALUES (9, '杨鹏', NULL, NULL, 'A7F5F098D7186FB33654540A9AAE2265', 'cdad0df9-d4c7-430d-b946-c8f4c947afff', '15699999999', '120110199009090914', NULL, 68, '代虎', 1, '北京柯莱特信息有限公司', 1, '延安', NULL, NULL, '2019-01-22 09:50:55', 'admin', '2019-01-22 09:50:55', 'admin', 1, '13433333333');
INSERT INTO `user` VALUES (10, '刘波', NULL, NULL, 'D8E51BCF2B8201546FBBE52DBEF3C990', '30937928-60ac-4005-8b16-337d618791ba', '15633333333', '120110199009090915', NULL, 3, '张泽祥', 1, '北京柯莱特信息有限公司', 1, '延安', NULL, NULL, '2019-01-22 09:50:56', 'admin', '2019-01-22 09:50:56', 'admin', 1, '13433333335');
INSERT INTO `user` VALUES (301, '苏文文', NULL, NULL, '012068753CE1CE450953C9BB887744C7', 'B6B93D95-058E-4BA9-A144-9E6180A56427', '13388888888', '444444444444444444', NULL, 1, '刘威', 1, '北京柯莱特信息有限公司', 2, '西安邮电大学', '2019-01-23', NULL, '2019-01-23 17:56:51', 'admin', '2019-01-23 18:13:54', 'admin', 1, '13333333333');
INSERT INTO `user` VALUES (303, '六五', NULL, NULL, '8A63A98DA22C2D00253CA3C53FA34CD8', 'f8c7b323-2cd9-4d37-95c5-858765178871', '15592991875', '612731199999999999', NULL, 1, '李四', 1, '北京柯莱特信息有限公司', 1, '江苏', NULL, NULL, '2019-03-15 18:34:25', 'admin', '2019-03-15 18:34:25', 'admin', 1, '13333333333');

-- ----------------------------
-- Table structure for view
-- ----------------------------
DROP TABLE IF EXISTS `view`;
CREATE TABLE `view`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '查看表主键',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT '用户id',
  `role` int(255) UNSIGNED NOT NULL COMMENT '对应角色 1导师，2管理员，3实习生',
  `announcement_id` bigint(20) UNSIGNED NOT NULL COMMENT '公告id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `update_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_delete` int(255) UNSIGNED NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of view
-- ----------------------------
INSERT INTO `view` VALUES (9, 7, 3, 1, '2019-01-22 12:06:48', NULL, NULL, NULL, 1);
INSERT INTO `view` VALUES (10, 7, 3, 2, '2019-01-22 13:36:49', NULL, NULL, NULL, 1);
INSERT INTO `view` VALUES (11, 7, 3, 3, '2019-01-22 13:36:58', NULL, NULL, NULL, 1);
INSERT INTO `view` VALUES (12, 7, 3, 4, '2019-01-22 13:56:15', NULL, NULL, NULL, 1);
INSERT INTO `view` VALUES (13, 7, 3, 5, '2019-01-22 13:56:58', NULL, NULL, NULL, 1);
INSERT INTO `view` VALUES (14, 7, 3, 6, '2019-01-22 13:59:10', NULL, NULL, NULL, 1);
INSERT INTO `view` VALUES (15, 7, 3, 8, '2019-01-22 13:59:13', NULL, NULL, NULL, 1);
INSERT INTO `view` VALUES (16, 7, 3, 7, '2019-01-22 13:59:22', NULL, NULL, NULL, 1);
INSERT INTO `view` VALUES (17, 1, 1, 7, '2019-01-22 14:09:44', NULL, NULL, NULL, 1);
INSERT INTO `view` VALUES (18, 2, 3, 1, '2019-01-22 13:36:49', NULL, NULL, NULL, 1);
INSERT INTO `view` VALUES (19, 1, 1, 6, '2019-01-22 14:49:31', NULL, NULL, NULL, 1);
INSERT INTO `view` VALUES (20, 1, 1, 1, '2019-01-22 15:19:54', NULL, NULL, NULL, 1);
INSERT INTO `view` VALUES (21, 1, 3, 7, '2019-01-22 17:16:09', NULL, NULL, NULL, 1);
INSERT INTO `view` VALUES (22, 1, 3, 6, '2019-01-22 17:16:28', NULL, NULL, NULL, 1);
INSERT INTO `view` VALUES (23, 1, 1, 5, '2019-01-22 17:17:26', NULL, NULL, NULL, 1);
INSERT INTO `view` VALUES (24, 2, 1, 6, '2019-01-22 17:38:32', NULL, NULL, NULL, 1);
INSERT INTO `view` VALUES (25, 2, 1, 7, '2019-01-22 17:38:34', NULL, NULL, NULL, 1);
INSERT INTO `view` VALUES (26, 2, 1, 5, '2019-01-22 17:39:41', NULL, NULL, NULL, 1);
INSERT INTO `view` VALUES (27, 2, 1, 94, '2019-01-22 17:43:05', NULL, NULL, NULL, 1);
INSERT INTO `view` VALUES (28, 2, 1, 1, '2019-01-22 17:44:02', NULL, NULL, NULL, 1);
INSERT INTO `view` VALUES (29, 2, 1, 4, '2019-01-22 20:16:28', NULL, NULL, NULL, 1);
INSERT INTO `view` VALUES (30, 1, 1, 103, '2019-03-15 18:59:25', NULL, NULL, NULL, 1);

-- ----------------------------
-- Table structure for work_rest_status
-- ----------------------------
DROP TABLE IF EXISTS `work_rest_status`;
CREATE TABLE `work_rest_status`  (
  `status_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `record_status` int(4) NULL DEFAULT NULL COMMENT '0上班，1休息',
  `record_time` date NULL DEFAULT NULL COMMENT '每月日期',
  `update_time` datetime(0) NULL DEFAULT NULL,
  `update_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `is_delete` int(4) UNSIGNED NULL DEFAULT 1,
  PRIMARY KEY (`status_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1479 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '记录每一天的班休状态' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of work_rest_status
-- ----------------------------
INSERT INTO `work_rest_status` VALUES (879, 0, '2019-01-01', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (880, 0, '2019-01-02', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (881, 0, '2019-01-03', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (882, 0, '2019-01-04', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (883, 1, '2019-01-05', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (884, 0, '2019-01-06', '2019-01-23 17:22:32', NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (885, 0, '2019-01-07', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (886, 0, '2019-01-08', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (887, 0, '2019-01-09', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (888, 1, '2019-01-10', '2019-01-24 11:02:14', NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (889, 0, '2019-01-11', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (890, 1, '2019-01-12', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (891, 1, '2019-01-13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (892, 0, '2019-01-14', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (893, 0, '2019-01-15', '2019-01-24 17:33:29', NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (894, 0, '2019-01-16', '2019-01-25 11:37:46', NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (895, 0, '2019-01-17', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (896, 0, '2019-01-18', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (897, 1, '2019-01-19', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (898, 1, '2019-01-20', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (899, 0, '2019-01-21', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (900, 0, '2019-01-22', '2019-01-25 10:54:45', NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (901, 1, '2019-01-23', '2019-01-25 11:37:43', NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (902, 0, '2019-01-24', '2019-01-23 16:46:51', NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (903, 0, '2019-01-25', '2019-01-23 16:27:04', NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (904, 1, '2019-01-26', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (905, 1, '2019-01-27', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (906, 0, '2019-01-28', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (907, 0, '2019-01-29', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (908, 0, '2019-01-30', '2019-01-23 16:27:08', NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (909, 0, '2019-01-31', '2019-01-23 16:27:14', NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (910, 0, '2019-02-01', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (911, 1, '2019-02-02', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (912, 1, '2019-02-03', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (913, 0, '2019-02-04', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (914, 0, '2019-02-05', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (915, 0, '2019-02-06', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (916, 0, '2019-02-07', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (917, 0, '2019-02-08', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (918, 1, '2019-02-09', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (919, 1, '2019-02-10', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (920, 0, '2019-02-11', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (921, 0, '2019-02-12', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (922, 0, '2019-02-13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (923, 0, '2019-02-14', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (924, 0, '2019-02-15', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (925, 1, '2019-02-16', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (926, 1, '2019-02-17', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (927, 0, '2019-02-18', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (928, 0, '2019-02-19', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (929, 0, '2019-02-20', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (930, 0, '2019-02-21', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (931, 0, '2019-02-22', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (932, 1, '2019-02-23', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (933, 1, '2019-02-24', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (934, 0, '2019-02-25', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (935, 0, '2019-02-26', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (936, 0, '2019-02-27', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (937, 0, '2019-02-28', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (938, 0, '2019-03-01', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (939, 1, '2019-03-02', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (940, 1, '2019-03-03', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (941, 0, '2019-03-04', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (942, 0, '2019-03-05', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (943, 0, '2019-03-06', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (944, 0, '2019-03-07', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (945, 0, '2019-03-08', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (946, 1, '2019-03-09', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (947, 1, '2019-03-10', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (948, 0, '2019-03-11', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (949, 0, '2019-03-12', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (950, 0, '2019-03-13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (951, 0, '2019-03-14', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (952, 0, '2019-03-15', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (953, 1, '2019-03-16', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (954, 1, '2019-03-17', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (955, 0, '2019-03-18', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (956, 0, '2019-03-19', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (957, 0, '2019-03-20', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (958, 0, '2019-03-21', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (959, 0, '2019-03-22', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (960, 1, '2019-03-23', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (961, 1, '2019-03-24', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (962, 0, '2019-03-25', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (963, 0, '2019-03-26', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (964, 0, '2019-03-27', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (965, 0, '2019-03-28', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (966, 0, '2019-03-29', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (967, 1, '2019-03-30', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (968, 1, '2019-03-31', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (969, 0, '2019-04-01', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (970, 0, '2019-04-02', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (971, 0, '2019-04-03', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (972, 0, '2019-04-04', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (973, 0, '2019-04-05', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (974, 1, '2019-04-06', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (975, 1, '2019-04-07', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (976, 0, '2019-04-08', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (977, 0, '2019-04-09', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (978, 0, '2019-04-10', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (979, 0, '2019-04-11', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (980, 0, '2019-04-12', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (981, 1, '2019-04-13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (982, 1, '2019-04-14', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (983, 0, '2019-04-15', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (984, 0, '2019-04-16', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (985, 0, '2019-04-17', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (986, 0, '2019-04-18', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (987, 0, '2019-04-19', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (988, 1, '2019-04-20', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (989, 1, '2019-04-21', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (990, 0, '2019-04-22', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (991, 0, '2019-04-23', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (992, 0, '2019-04-24', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (993, 0, '2019-04-25', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (994, 0, '2019-04-26', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (995, 1, '2019-04-27', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (996, 1, '2019-04-28', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (997, 0, '2019-04-29', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (998, 0, '2019-04-30', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (999, 0, '2019-05-01', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1000, 0, '2019-05-02', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1001, 0, '2019-05-03', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1002, 1, '2019-05-04', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1003, 1, '2019-05-05', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1004, 0, '2019-05-06', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1005, 0, '2019-05-07', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1006, 0, '2019-05-08', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1007, 0, '2019-05-09', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1008, 0, '2019-05-10', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1009, 1, '2019-05-11', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1010, 1, '2019-05-12', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1011, 0, '2019-05-13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1012, 0, '2019-05-14', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1013, 0, '2019-05-15', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1014, 0, '2019-05-16', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1015, 0, '2019-05-17', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1016, 1, '2019-05-18', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1017, 1, '2019-05-19', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1018, 0, '2019-05-20', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1019, 0, '2019-05-21', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1020, 0, '2019-05-22', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1021, 0, '2019-05-23', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1022, 0, '2019-05-24', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1023, 1, '2019-05-25', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1024, 1, '2019-05-26', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1025, 0, '2019-05-27', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1026, 0, '2019-05-28', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1027, 0, '2019-05-29', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1028, 0, '2019-05-30', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1029, 0, '2019-05-31', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1030, 1, '2019-06-01', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1031, 1, '2019-06-02', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1032, 0, '2019-06-03', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1033, 0, '2019-06-04', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1034, 0, '2019-06-05', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1035, 0, '2019-06-06', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1036, 0, '2019-06-07', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1037, 1, '2019-06-08', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1038, 1, '2019-06-09', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1039, 0, '2019-06-10', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1040, 0, '2019-06-11', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1041, 0, '2019-06-12', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1042, 0, '2019-06-13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1043, 0, '2019-06-14', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1044, 1, '2019-06-15', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1045, 1, '2019-06-16', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1046, 0, '2019-06-17', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1047, 0, '2019-06-18', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1048, 0, '2019-06-19', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1049, 0, '2019-06-20', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1050, 0, '2019-06-21', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1051, 1, '2019-06-22', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1052, 1, '2019-06-23', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1053, 0, '2019-06-24', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1054, 0, '2019-06-25', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1055, 0, '2019-06-26', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1056, 0, '2019-06-27', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1057, 0, '2019-06-28', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1058, 1, '2019-06-29', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1059, 1, '2019-06-30', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1060, 0, '2019-07-01', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1061, 0, '2019-07-02', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1062, 0, '2019-07-03', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1063, 0, '2019-07-04', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1064, 0, '2019-07-05', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1065, 1, '2019-07-06', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1066, 1, '2019-07-07', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1067, 0, '2019-07-08', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1068, 0, '2019-07-09', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1069, 0, '2019-07-10', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1070, 0, '2019-07-11', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1071, 0, '2019-07-12', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1072, 1, '2019-07-13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1073, 1, '2019-07-14', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1074, 0, '2019-07-15', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1075, 0, '2019-07-16', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1076, 0, '2019-07-17', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1077, 0, '2019-07-18', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1078, 0, '2019-07-19', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1079, 1, '2019-07-20', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1080, 1, '2019-07-21', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1081, 0, '2019-07-22', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1082, 0, '2019-07-23', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1083, 0, '2019-07-24', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1084, 0, '2019-07-25', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1085, 0, '2019-07-26', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1086, 1, '2019-07-27', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1087, 1, '2019-07-28', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1088, 0, '2019-07-29', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1089, 0, '2019-07-30', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1090, 0, '2019-07-31', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1091, 0, '2019-08-01', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1092, 0, '2019-08-02', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1093, 1, '2019-08-03', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1094, 1, '2019-08-04', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1095, 0, '2019-08-05', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1096, 0, '2019-08-06', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1097, 0, '2019-08-07', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1098, 0, '2019-08-08', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1099, 0, '2019-08-09', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1100, 1, '2019-08-10', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1101, 1, '2019-08-11', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1102, 0, '2019-08-12', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1103, 0, '2019-08-13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1104, 0, '2019-08-14', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1105, 0, '2019-08-15', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1106, 0, '2019-08-16', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1107, 1, '2019-08-17', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1108, 1, '2019-08-18', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1109, 0, '2019-08-19', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1110, 0, '2019-08-20', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1111, 0, '2019-08-21', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1112, 0, '2019-08-22', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1113, 0, '2019-08-23', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1114, 1, '2019-08-24', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1115, 1, '2019-08-25', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1116, 0, '2019-08-26', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1117, 0, '2019-08-27', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1118, 0, '2019-08-28', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1119, 0, '2019-08-29', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1120, 0, '2019-08-30', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1121, 1, '2019-08-31', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1122, 1, '2019-09-01', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1123, 0, '2019-09-02', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1124, 0, '2019-09-03', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1125, 0, '2019-09-04', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1126, 0, '2019-09-05', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1127, 0, '2019-09-06', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1128, 1, '2019-09-07', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1129, 1, '2019-09-08', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1130, 0, '2019-09-09', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1131, 0, '2019-09-10', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1132, 0, '2019-09-11', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1133, 0, '2019-09-12', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1134, 0, '2019-09-13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1135, 1, '2019-09-14', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1136, 1, '2019-09-15', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1137, 0, '2019-09-16', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1138, 0, '2019-09-17', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1139, 0, '2019-09-18', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1140, 0, '2019-09-19', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1141, 0, '2019-09-20', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1142, 1, '2019-09-21', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1143, 1, '2019-09-22', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1144, 0, '2019-09-23', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1145, 0, '2019-09-24', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1146, 0, '2019-09-25', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1147, 0, '2019-09-26', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1148, 0, '2019-09-27', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1149, 1, '2019-09-28', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1150, 1, '2019-09-29', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1151, 0, '2019-09-30', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1152, 0, '2019-10-01', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1153, 0, '2019-10-02', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1154, 0, '2019-10-03', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1155, 0, '2019-10-04', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1156, 1, '2019-10-05', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1157, 1, '2019-10-06', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1158, 0, '2019-10-07', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1159, 0, '2019-10-08', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1160, 0, '2019-10-09', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1161, 0, '2019-10-10', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1162, 0, '2019-10-11', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1163, 1, '2019-10-12', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1164, 1, '2019-10-13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1165, 0, '2019-10-14', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1166, 0, '2019-10-15', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1167, 0, '2019-10-16', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1168, 0, '2019-10-17', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1169, 0, '2019-10-18', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1170, 1, '2019-10-19', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1171, 1, '2019-10-20', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1172, 0, '2019-10-21', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1173, 0, '2019-10-22', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1174, 0, '2019-10-23', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1175, 0, '2019-10-24', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1176, 0, '2019-10-25', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1177, 1, '2019-10-26', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1178, 1, '2019-10-27', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1179, 0, '2019-10-28', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1180, 0, '2019-10-29', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1181, 0, '2019-10-30', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1182, 0, '2019-10-31', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1183, 0, '2019-11-01', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1184, 1, '2019-11-02', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1185, 1, '2019-11-03', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1186, 0, '2019-11-04', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1187, 0, '2019-11-05', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1188, 0, '2019-11-06', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1189, 0, '2019-11-07', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1190, 0, '2019-11-08', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1191, 1, '2019-11-09', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1192, 1, '2019-11-10', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1193, 0, '2019-11-11', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1194, 0, '2019-11-12', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1195, 0, '2019-11-13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1196, 0, '2019-11-14', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1197, 0, '2019-11-15', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1198, 1, '2019-11-16', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1199, 1, '2019-11-17', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1200, 0, '2019-11-18', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1201, 0, '2019-11-19', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1202, 0, '2019-11-20', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1203, 0, '2019-11-21', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1204, 0, '2019-11-22', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1205, 1, '2019-11-23', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1206, 1, '2019-11-24', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1207, 0, '2019-11-25', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1208, 0, '2019-11-26', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1209, 0, '2019-11-27', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1210, 0, '2019-11-28', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1211, 0, '2019-11-29', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1212, 1, '2019-11-30', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1213, 1, '2019-12-01', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1214, 0, '2019-12-02', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1215, 0, '2019-12-03', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1216, 0, '2019-12-04', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1217, 0, '2019-12-05', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1218, 0, '2019-12-06', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1219, 1, '2019-12-07', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1220, 1, '2019-12-08', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1221, 0, '2019-12-09', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1222, 0, '2019-12-10', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1223, 0, '2019-12-11', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1224, 0, '2019-12-12', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1225, 0, '2019-12-13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1226, 1, '2019-12-14', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1227, 1, '2019-12-15', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1228, 0, '2019-12-16', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1229, 0, '2019-12-17', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1230, 0, '2019-12-18', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1231, 0, '2019-12-19', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1232, 0, '2019-12-20', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1233, 1, '2019-12-21', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1234, 1, '2019-12-22', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1235, 0, '2019-12-23', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1236, 0, '2019-12-24', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1237, 0, '2019-12-25', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1238, 0, '2019-12-26', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1239, 0, '2019-12-27', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1240, 1, '2019-12-28', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1241, 1, '2019-12-29', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1242, 0, '2019-12-30', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1243, 0, '2019-12-31', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1244, 0, '2020-01-01', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1245, 0, '2020-01-02', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1246, 0, '2020-01-03', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1247, 1, '2020-01-04', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1248, 1, '2020-01-05', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1249, 0, '2020-01-06', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1250, 0, '2020-01-07', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1251, 0, '2020-01-08', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1252, 0, '2020-01-09', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1253, 0, '2020-01-10', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1254, 1, '2020-01-11', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1255, 1, '2020-01-12', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1256, 0, '2020-01-13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1257, 0, '2020-01-14', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1258, 0, '2020-01-15', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1259, 0, '2020-01-16', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1260, 0, '2020-01-17', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1261, 1, '2020-01-18', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1262, 1, '2020-01-19', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1263, 0, '2020-01-20', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1264, 0, '2020-01-21', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1265, 0, '2020-01-22', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1266, 0, '2020-01-23', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1267, 0, '2020-01-24', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1268, 1, '2020-01-25', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1269, 1, '2020-01-26', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1270, 0, '2020-01-27', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1271, 0, '2020-01-28', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1272, 0, '2020-01-29', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1273, 0, '2020-01-30', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1274, 0, '2020-01-31', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1275, 1, '2018-12-01', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1276, 1, '2018-12-02', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1277, 0, '2018-12-03', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1278, 0, '2018-12-04', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1279, 0, '2018-12-05', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1280, 0, '2018-12-06', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1281, 0, '2018-12-07', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1282, 1, '2018-12-08', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1283, 1, '2018-12-09', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1284, 0, '2018-12-10', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1285, 0, '2018-12-11', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1286, 0, '2018-12-12', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1287, 0, '2018-12-13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1288, 0, '2018-12-14', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1289, 1, '2018-12-15', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1290, 1, '2018-12-16', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1291, 0, '2018-12-17', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1292, 0, '2018-12-18', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1293, 0, '2018-12-19', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1294, 0, '2018-12-20', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1295, 0, '2018-12-21', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1296, 1, '2018-12-22', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1297, 1, '2018-12-23', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1298, 0, '2018-12-24', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1299, 0, '2018-12-25', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1300, 0, '2018-12-26', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1301, 0, '2018-12-27', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1302, 0, '2018-12-28', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1303, 1, '2018-12-29', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1304, 1, '2018-12-30', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1305, 0, '2018-12-31', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1306, 0, '2022-02-01', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1307, 0, '2022-02-02', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1308, 0, '2022-02-03', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1309, 0, '2022-02-04', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1310, 1, '2022-02-05', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1311, 1, '2022-02-06', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1312, 0, '2022-02-07', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1313, 0, '2022-02-08', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1314, 0, '2022-02-09', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1315, 0, '2022-02-10', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1316, 0, '2022-02-11', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1317, 1, '2022-02-12', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1318, 1, '2022-02-13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1319, 0, '2022-02-14', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1320, 0, '2022-02-15', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1321, 0, '2022-02-16', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1322, 0, '2022-02-17', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1323, 0, '2022-02-18', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1324, 1, '2022-02-19', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1325, 1, '2022-02-20', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1326, 0, '2022-02-21', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1327, 0, '2022-02-22', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1328, 0, '2022-02-23', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1329, 0, '2022-02-24', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1330, 0, '2022-02-25', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1331, 1, '2022-02-26', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1332, 1, '2022-02-27', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1333, 0, '2022-02-28', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1334, 0, '2021-02-01', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1335, 0, '2021-02-02', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1336, 0, '2021-02-03', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1337, 0, '2021-02-04', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1338, 0, '2021-02-05', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1339, 1, '2021-02-06', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1340, 1, '2021-02-07', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1341, 0, '2021-02-08', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1342, 0, '2021-02-09', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1343, 0, '2021-02-10', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1344, 0, '2021-02-11', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1345, 0, '2021-02-12', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1346, 1, '2021-02-13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1347, 1, '2021-02-14', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1348, 0, '2021-02-15', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1349, 0, '2021-02-16', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1350, 0, '2021-02-17', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1351, 0, '2021-02-18', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1352, 0, '2021-02-19', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1353, 1, '2021-02-20', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1354, 1, '2021-02-21', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1355, 0, '2021-02-22', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1356, 0, '2021-02-23', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1357, 0, '2021-02-24', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1358, 0, '2021-02-25', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1359, 0, '2021-02-26', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1360, 1, '2021-02-27', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1361, 1, '2021-02-28', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1362, 1, '2020-02-01', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1363, 1, '2020-02-02', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1364, 0, '2020-02-03', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1365, 0, '2020-02-04', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1366, 0, '2020-02-05', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1367, 0, '2020-02-06', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1368, 0, '2020-02-07', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1369, 1, '2020-02-08', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1370, 1, '2020-02-09', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1371, 0, '2020-02-10', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1372, 0, '2020-02-11', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1373, 0, '2020-02-12', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1374, 0, '2020-02-13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1375, 0, '2020-02-14', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1376, 1, '2020-02-15', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1377, 1, '2020-02-16', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1378, 0, '2020-02-17', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1379, 0, '2020-02-18', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1380, 0, '2020-02-19', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1381, 0, '2020-02-20', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1382, 0, '2020-02-21', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1383, 1, '2020-02-22', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1384, 1, '2020-02-23', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1385, 0, '2020-02-24', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1386, 0, '2020-02-25', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1387, 0, '2020-02-26', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1388, 0, '2020-02-27', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1389, 0, '2020-02-28', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1390, 1, '2020-02-29', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1391, 0, '2018-02-01', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1392, 0, '2018-02-02', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1393, 1, '2018-02-03', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1394, 1, '2018-02-04', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1395, 0, '2018-02-05', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1396, 0, '2018-02-06', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1397, 0, '2018-02-07', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1398, 0, '2018-02-08', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1399, 0, '2018-02-09', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1400, 1, '2018-02-10', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1401, 1, '2018-02-11', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1402, 0, '2018-02-12', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1403, 0, '2018-02-13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1404, 0, '2018-02-14', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1405, 0, '2018-02-15', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1406, 0, '2018-02-16', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1407, 1, '2018-02-17', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1408, 1, '2018-02-18', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1409, 0, '2018-02-19', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1410, 0, '2018-02-20', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1411, 0, '2018-02-21', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1412, 0, '2018-02-22', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1413, 0, '2018-02-23', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1414, 1, '2018-02-24', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1415, 1, '2018-02-25', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1416, 0, '2018-02-26', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1417, 0, '2018-02-27', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1418, 0, '2018-02-28', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1419, 0, '2021-04-01', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1420, 0, '2021-04-02', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1421, 1, '2021-04-03', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1422, 1, '2021-04-04', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1423, 0, '2021-04-05', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1424, 0, '2021-04-06', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1425, 0, '2021-04-07', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1426, 0, '2021-04-08', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1427, 0, '2021-04-09', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1428, 1, '2021-04-10', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1429, 1, '2021-04-11', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1430, 0, '2021-04-12', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1431, 0, '2021-04-13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1432, 0, '2021-04-14', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1433, 0, '2021-04-15', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1434, 0, '2021-04-16', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1435, 1, '2021-04-17', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1436, 1, '2021-04-18', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1437, 0, '2021-04-19', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1438, 0, '2021-04-20', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1439, 0, '2021-04-21', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1440, 0, '2021-04-22', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1441, 0, '2021-04-23', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1442, 1, '2021-04-24', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1443, 1, '2021-04-25', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1444, 0, '2021-04-26', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1445, 0, '2021-04-27', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1446, 0, '2021-04-28', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1447, 0, '2021-04-29', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1448, 0, '2021-04-30', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1449, 0, '2021-03-01', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1450, 0, '2021-03-02', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1451, 0, '2021-03-03', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1452, 0, '2021-03-04', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1453, 0, '2021-03-05', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1454, 1, '2021-03-06', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1455, 1, '2021-03-07', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1456, 0, '2021-03-08', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1457, 0, '2021-03-09', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1458, 0, '2021-03-10', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1459, 0, '2021-03-11', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1460, 0, '2021-03-12', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1461, 1, '2021-03-13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1462, 1, '2021-03-14', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1463, 0, '2021-03-15', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1464, 0, '2021-03-16', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1465, 0, '2021-03-17', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1466, 0, '2021-03-18', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1467, 0, '2021-03-19', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1468, 1, '2021-03-20', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1469, 1, '2021-03-21', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1470, 0, '2021-03-22', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1471, 0, '2021-03-23', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1472, 0, '2021-03-24', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1473, 0, '2021-03-25', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1474, 0, '2021-03-26', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1475, 1, '2021-03-27', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1476, 1, '2021-03-28', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1477, 0, '2021-03-29', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1478, 0, '2021-03-30', NULL, NULL, NULL, NULL, 1);
INSERT INTO `work_rest_status` VALUES (1479, 0, '2021-03-31', NULL, NULL, NULL, NULL, 1);

-- ----------------------------
-- Table structure for workarea
-- ----------------------------
DROP TABLE IF EXISTS `workarea`;
CREATE TABLE `workarea`  (
  `workarea_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '办公区域id',
  `workarea_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '办公区域名称',
  `company_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '公司id',
  `latitude` decimal(10, 7) NOT NULL DEFAULT 0.0000000 COMMENT '纬度',
  `longitude` decimal(10, 7) NOT NULL DEFAULT 0.0000000 COMMENT '经度',
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省',
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '市',
  `region` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `scope` int(11) NULL DEFAULT NULL COMMENT '打卡范围设定--原来是range_setting',
  `create_time` datetime(0) NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  `create_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '修改时间',
  `update_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_delete` int(4) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否删除,0表示无效，1表示有效',
  `manager` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作区域的管理者',
  PRIMARY KEY (`workarea_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 126 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '办公区域表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of workarea
-- ----------------------------
INSERT INTO `workarea` VALUES (1, '江苏', 1, 109.4908100, 36.5965370, '陕西省', '延安市', '宝塔区', '陕西省延安市宝塔区凤凰山街道二道街23号中延国际购物中心', 123, '2019-01-18 11:59:42', '刘波', '2019-01-22 11:05:04', NULL, 1, '张明新');
INSERT INTO `workarea` VALUES (2, '西安邮电大学', 1, 113.6654120, 34.7579750, '河南省', '郑州市', '金水区', '河南省郑州市金水区杜岭街道二七路154号丹尼斯·大卫城', 100, '2019-01-18 15:16:16', '刘波', '2019-01-25 14:51:10', NULL, 1, '刘威');
INSERT INTO `workarea` VALUES (3, '西安', 1, 22.2222222, 11.1111110, '陕西省', '西安市', '高新区', '陕西省西安市长安区陕西省西安市高新区迈科国际', 100, '2019-01-21 12:00:06', '刘波', '2019-01-22 11:21:20', NULL, 1, '张明新');
INSERT INTO `workarea` VALUES (4, '大明宫', 1, 108.9714930, 34.2967860, '陕西省', '西安市', '未央区', '陕西省西安市未央区大明宫街道大明宫(地铁站)大明宫国家遗址公园', 100, '2019-01-21 15:47:34', '刘波', '2019-01-21 15:47:34', NULL, 0, '刘波');
INSERT INTO `workarea` VALUES (123, '西安北', 1, 108.9400250, 34.3743740, '陕西省', '西安市', '未央区', '陕西省西安市未央区汉城街道肯德基(西安北站)西安北站', 100, '2019-01-24 19:37:49', NULL, '2019-01-24 19:37:49', NULL, 0, NULL);
INSERT INTO `workarea` VALUES (124, '', 1, 108.9095310, 34.2258550, '陕西省', '西安市', '雁塔区电子城街道白沙路西安培华学院高新校区', '陕西省西安市雁塔区电子城街道白沙路西安培华学院高新校区', 100, '2019-01-24 20:38:36', NULL, '2019-01-24 20:38:36', NULL, 1, NULL);
INSERT INTO `workarea` VALUES (125, '环普', 1, 108.8404850, 34.2094240, '陕西省', '西安市', '雁塔区', '陕西省西安市雁塔区鱼化寨街道西安环普科技产业园西安环普科技产业园1期', 100, '2019-01-25 09:52:06', NULL, '2019-01-25 09:52:06', NULL, 1, NULL);
INSERT INTO `workarea` VALUES (126, '小寨', 1, 108.9394970, 34.2227910, '陕西省', '西安市', '雁塔区', '陕西省西安市雁塔区小寨路街道小寨西路95号东方大酒店', 100, '2019-01-25 14:18:28', NULL, '2019-01-25 14:18:28', NULL, 1, NULL);

SET FOREIGN_KEY_CHECKS = 1;
