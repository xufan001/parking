/*
 Navicat Premium Data Transfer

 Source Server         : 本地mysql
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : localhost:3306
 Source Schema         : smart-parking

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 15/02/2022 16:56:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for app_car_manage
-- ----------------------------
DROP TABLE IF EXISTS `app_car_manage`;
CREATE TABLE `app_car_manage`  (
                                   `id` bigint NOT NULL AUTO_INCREMENT,
                                   `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                   `gmt_create` datetime NULL DEFAULT NULL,
                                   `gmt_modified` datetime NULL DEFAULT NULL,
                                   `name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                   `nickname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                   `org_id` bigint NOT NULL,
                                   `org_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                   `park_manage_id` bigint NOT NULL,
                                   `park_manage_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                   `parking_lot` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                   `plate_number` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                   `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                   `status` smallint NULL DEFAULT NULL,
                                   `type` smallint NULL DEFAULT NULL,
                                   `user_id_create` bigint NULL DEFAULT NULL,
                                   `validity_time` datetime NULL DEFAULT NULL,
                                   `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                   PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_car_manage
-- ----------------------------
INSERT INTO `app_car_manage` VALUES (2, '1', '2022-02-15 16:35:17', '2022-02-15 16:35:17', NULL, '徐凯军', 36, '郑州金地置业', 3, '郑州二七广场地下停车场', '02', '豫AD33816', NULL, 1, 1, NULL, '2022-03-24 00:00:00', '1346182969');

-- ----------------------------
-- Table structure for app_car_park_manage
-- ----------------------------
DROP TABLE IF EXISTS `app_car_park_manage`;
CREATE TABLE `app_car_park_manage`  (
                                        `id` bigint NOT NULL AUTO_INCREMENT,
                                        `free_time` int NULL DEFAULT NULL,
                                        `gmt_create` datetime NULL DEFAULT NULL,
                                        `gmt_modified` datetime NULL DEFAULT NULL,
                                        `max_money` decimal(18, 2) NULL DEFAULT NULL,
                                        `name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                        `org_id` bigint NOT NULL,
                                        `org_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                        `parking_space_number` int NULL DEFAULT NULL,
                                        `parking_residue_number` int NULL DEFAULT NULL COMMENT '剩余车位',
                                        `status` smallint NULL DEFAULT NULL,
                                        `time_unit` int NULL DEFAULT NULL,
                                        `unit_cost` decimal(18, 2) NULL DEFAULT NULL,
                                        `user_id_create` bigint NULL DEFAULT NULL,
                                        PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_car_park_manage
-- ----------------------------
INSERT INTO `app_car_park_manage` VALUES (3, 60, '2022-02-15 14:08:18', '2022-02-15 14:08:18', 200.00, '郑州二七广场地下停车场', 38, '郑州金地置业', 320, 318, 1, 1, 5.00, NULL);
INSERT INTO `app_car_park_manage` VALUES (4, 60, '2022-02-15 16:03:35', '2022-02-15 16:03:35', 300.00, '郑州东站', 36, '郑州金地置业', 650, 649, 1, 1, 10.00, NULL);

-- ----------------------------
-- Table structure for app_car_parking_record
-- ----------------------------
DROP TABLE IF EXISTS `app_car_parking_record`;
CREATE TABLE `app_car_parking_record`  (
                                           `id` bigint NOT NULL AUTO_INCREMENT,
                                           `cost` decimal(18, 2) NULL DEFAULT NULL,
                                           `gmt_into` datetime NULL DEFAULT NULL,
                                           `gmt_out` datetime NULL DEFAULT NULL,
                                           `org_id` bigint NOT NULL,
                                           `org_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                           `park_manage_id` bigint NOT NULL,
                                           `park_manage_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                           `plate_number` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                           `type` smallint NULL DEFAULT NULL,
                                           `order_no` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                           PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_car_parking_record
-- ----------------------------
INSERT INTO `app_car_parking_record` VALUES (4, 0.00, '2022-02-15 16:03:51', '2022-02-15 16:04:11', 36, '郑州金地置业', 4, '郑州东站', '陕JAQ358', 2, NULL);
INSERT INTO `app_car_parking_record` VALUES (5, 0.00, '2022-02-15 16:04:40', '2022-02-15 16:06:46', 36, '郑州金地置业', 4, '郑州东站', '陕JAQ358', 2, NULL);
INSERT INTO `app_car_parking_record` VALUES (6, NULL, '2022-02-15 16:06:56', NULL, 36, '郑州金地置业', 4, '郑州东站', '陕JAQ358', 2, NULL);
INSERT INTO `app_car_parking_record` VALUES (7, NULL, '2022-02-15 16:33:36', NULL, 38, '郑州金地置业', 3, '郑州二七广场地下停车场', '陕JAQ358', 2, NULL);
INSERT INTO `app_car_parking_record` VALUES (8, NULL, '2022-02-15 16:34:10', NULL, 38, '郑州金地置业', 3, '郑州二七广场地下停车场', '豫ABS098', 2, NULL);
INSERT INTO `app_car_parking_record` VALUES (9, 0.00, '2022-02-15 16:35:24', '2022-02-15 16:35:37', 38, '郑州金地置业', 3, '郑州二七广场地下停车场', '豫AD33816', 1, NULL);

-- ----------------------------
-- Table structure for app_order
-- ----------------------------
DROP TABLE IF EXISTS `app_order`;
CREATE TABLE `app_order`  (
                              `id` bigint NOT NULL AUTO_INCREMENT,
                              `body` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                              `gmt_create` datetime NULL DEFAULT NULL,
                              `order_no` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                              `org_Id` bigint NOT NULL,
                              `park_manage_id` bigint NOT NULL,
                              `plate_number` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                              `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                              `status` smallint NULL DEFAULT NULL,
                              `total_Fee` decimal(18, 2) NULL DEFAULT NULL,
                              `type` smallint NULL DEFAULT NULL,
                              `user_create` bigint NULL DEFAULT NULL,
                              `validity_time` datetime NULL DEFAULT NULL,
                              PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 203 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_order
-- ----------------------------
INSERT INTO `app_order` VALUES (203, '临时车辆', '2022-02-15 16:35:37', '32022021516353735960227509', 38, 3, '豫AD33816', NULL, 0, 0.00, NULL, -1, NULL);

-- ----------------------------
-- Table structure for app_pay_config
-- ----------------------------
DROP TABLE IF EXISTS `app_pay_config`;
CREATE TABLE `app_pay_config`  (
                                   `id` bigint NOT NULL AUTO_INCREMENT,
                                   `car_park_id` bigint NULL DEFAULT NULL,
                                   `gmt_create` datetime NULL DEFAULT NULL,
                                   `gmt_modified` datetime NULL DEFAULT NULL,
                                   `mch_id` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                   `secret_key` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                   `user_id_create` bigint NULL DEFAULT NULL,
                                   PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_pay_config
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
                               `id` bigint NOT NULL AUTO_INCREMENT COMMENT '自增主键',
                               `config_key` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '唯一标识',
                               `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '值',
                               `config_remark` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '备注',
                               `user_id_create` bigint NOT NULL COMMENT '创建人',
                               `gmt_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
                               `gmt_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
                               `status` tinyint NOT NULL COMMENT '状态 0 禁用 1 可用',
                               PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '基础配置' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_config
-- ----------------------------

-- ----------------------------
-- Table structure for sys_interface
-- ----------------------------
DROP TABLE IF EXISTS `sys_interface`;
CREATE TABLE `sys_interface`  (
                                  `id` bigint NOT NULL AUTO_INCREMENT,
                                  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                  `gmt_create` datetime NULL DEFAULT NULL,
                                  `gmt_modified` datetime NULL DEFAULT NULL,
                                  `params` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                  `query` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
                                  `status` smallint NULL DEFAULT NULL,
                                  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                  `user_id_create` bigint NULL DEFAULT NULL,
                                  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_interface
-- ----------------------------

-- ----------------------------
-- Table structure for sys_landing_records
-- ----------------------------
DROP TABLE IF EXISTS `sys_landing_records`;
CREATE TABLE `sys_landing_records`  (
                                        `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
                                        `user_id` bigint UNSIGNED NOT NULL COMMENT '用户ID',
                                        `login_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最近登录时间',
                                        `place` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '最近登录地点',
                                        `ip` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '最近登录IP',
                                        `login_way` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录方式',
                                        PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户登录日志' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_landing_records
-- ----------------------------

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
                            `id` bigint NOT NULL AUTO_INCREMENT COMMENT '自增主键',
                            `user_id` bigint NULL DEFAULT NULL COMMENT '用户id',
                            `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
                            `operation` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户操作',
                            `time` int NULL DEFAULT NULL COMMENT '响应时间',
                            `method` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求方法',
                            `params` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '请求参数',
                            `ip` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
                            `device_type` tinyint NOT NULL DEFAULT 0 COMMENT '访问方式 0:PC 1:手机 2:未知',
                            `log_type` tinyint NOT NULL DEFAULT 0 COMMENT '类型 0: 一般日志记录 1: 异常错误日志',
                            `exception_detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '异常详细信息',
                            `gmt_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                            PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES (1, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-03-08 19:58:39');
INSERT INTO `sys_log` VALUES (2, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-03-16 20:26:27');
INSERT INTO `sys_log` VALUES (3, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-03-26 20:51:14');
INSERT INTO `sys_log` VALUES (4, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-03-26 21:10:51');
INSERT INTO `sys_log` VALUES (5, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-04-11 20:45:05');
INSERT INTO `sys_log` VALUES (6, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-04-13 20:15:18');
INSERT INTO `sys_log` VALUES (7, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-04-13 20:15:21');
INSERT INTO `sys_log` VALUES (8, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-04-19 19:47:39');
INSERT INTO `sys_log` VALUES (9, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-04-19 20:17:24');
INSERT INTO `sys_log` VALUES (10, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-04-19 20:46:12');
INSERT INTO `sys_log` VALUES (11, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-02-11 18:38:29');
INSERT INTO `sys_log` VALUES (12, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-02-11 18:38:29');
INSERT INTO `sys_log` VALUES (13, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-02-15 13:37:23');
INSERT INTO `sys_log` VALUES (14, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-02-15 13:57:07');
INSERT INTO `sys_log` VALUES (15, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-02-15 14:07:26');
INSERT INTO `sys_log` VALUES (16, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-02-15 15:53:55');
INSERT INTO `sys_log` VALUES (17, 2, '收费员小莉', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-02-15 16:01:03');
INSERT INTO `sys_log` VALUES (18, 2, '收费员小莉', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-02-15 16:01:30');
INSERT INTO `sys_log` VALUES (19, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-02-15 16:01:55');
INSERT INTO `sys_log` VALUES (20, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-02-15 16:06:26');
INSERT INTO `sys_log` VALUES (21, 2, '收费员小莉', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-02-15 16:09:44');
INSERT INTO `sys_log` VALUES (22, 2, '收费员小莉', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-02-15 16:13:31');
INSERT INTO `sys_log` VALUES (23, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-02-15 16:15:59');
INSERT INTO `sys_log` VALUES (24, 2, '收费员小莉', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-02-15 16:16:28');
INSERT INTO `sys_log` VALUES (25, 2, '收费员小莉', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-02-15 16:17:43');
INSERT INTO `sys_log` VALUES (26, 2, '收费员小莉', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-02-15 16:27:32');
INSERT INTO `sys_log` VALUES (27, 2, '收费员小莉', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-02-15 16:30:17');
INSERT INTO `sys_log` VALUES (28, 2, '收费员小莉', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-02-15 16:31:26');
INSERT INTO `sys_log` VALUES (29, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-02-15 16:36:41');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
                             `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单id',
                             `parent_id` bigint NULL DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
                             `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
                             `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单URL',
                             `perms` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
                             `type` int NULL DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
                             `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
                             `order_num` int NULL DEFAULT NULL COMMENT '排序',
                             `gmt_create` timestamp NULL DEFAULT NULL COMMENT '创建时间',
                             `gmt_modified` timestamp NULL DEFAULT NULL COMMENT '修改时间',
                             PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 306 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, 0, '系统管理', NULL, '', 0, 'layui-icon layui-icon-template-1', 5, '2017-08-09 22:49:47', '2017-09-11 17:25:22');
INSERT INTO `sys_menu` VALUES (2, 1, '系统菜单', 'sys/menu/list.html', NULL, 1, 'layui-icon layui-icon-spread-left', 10, '2017-08-09 22:55:15', '2017-08-17 10:00:12');
INSERT INTO `sys_menu` VALUES (6, 299, '用户管理', 'sys/user/list.html', '', 1, 'layui-icon layui-icon-username', 2, '2017-08-10 14:12:11', '2017-09-05 12:57:42');
INSERT INTO `sys_menu` VALUES (7, 1, '角色管理', 'sys/role/list.html', '', 1, 'layui-icon layui-icon-tree', 1, '2017-08-10 14:13:19', '2017-09-05 12:57:30');
INSERT INTO `sys_menu` VALUES (11, 6, '刷新', '/sys/user/list', 'sys:user:list', 2, NULL, 0, '2017-08-14 10:51:05', '2017-09-05 12:47:23');
INSERT INTO `sys_menu` VALUES (12, 6, '新增', '/sys/user/save', 'sys:user:save', 2, NULL, 0, '2017-08-14 10:51:35', '2017-09-05 12:47:34');
INSERT INTO `sys_menu` VALUES (13, 6, '编辑', '/sys/user/update', 'sys:user:edit', 2, NULL, 0, '2017-08-14 10:52:06', '2017-09-05 12:47:46');
INSERT INTO `sys_menu` VALUES (14, 6, '删除', '/sys/user/remove', 'sys:user:remove', 2, NULL, 0, '2017-08-14 10:52:24', '2017-09-05 12:48:03');
INSERT INTO `sys_menu` VALUES (15, 7, '刷新', '/sys/role/list', 'sys:role:list', 2, NULL, 0, '2017-08-14 10:56:37', '2017-09-05 12:44:04');
INSERT INTO `sys_menu` VALUES (16, 7, '新增', '/sys/role/save', 'sys:role:save', 2, NULL, 0, '2017-08-14 10:57:02', '2017-09-05 12:44:23');
INSERT INTO `sys_menu` VALUES (17, 7, '编辑', '/sys/role/update', 'sys:role:edit', 2, NULL, 0, '2017-08-14 10:57:31', '2017-09-05 12:44:48');
INSERT INTO `sys_menu` VALUES (18, 7, '删除', '/sys/role/remove', 'sys:role:remove', 2, NULL, 0, '2017-08-14 10:57:50', '2017-09-05 12:45:02');
INSERT INTO `sys_menu` VALUES (19, 7, '操作权限', '/sys/role/authorize/opt', 'sys:role:authorizeOpt', 2, NULL, 0, '2017-08-14 10:58:55', '2017-09-05 12:45:29');
INSERT INTO `sys_menu` VALUES (20, 2, '刷新', '/sys/menu/list', 'sys:menu:list', 2, NULL, 0, '2017-08-14 10:59:32', '2017-09-05 13:06:24');
INSERT INTO `sys_menu` VALUES (21, 2, '新增', '/sys/menu/save', 'sys:menu:save', 2, NULL, 0, '2017-08-14 10:59:56', '2017-09-05 13:06:35');
INSERT INTO `sys_menu` VALUES (22, 2, '编辑', '/sys/menu/update', 'sys:menu:edit', 2, NULL, 0, '2017-08-14 11:00:26', '2017-09-05 13:06:48');
INSERT INTO `sys_menu` VALUES (23, 2, '删除', '/sys/menu/remove', 'sys:menu:remove', 2, NULL, 0, '2017-08-14 11:00:58', '2017-09-05 13:07:00');
INSERT INTO `sys_menu` VALUES (24, 6, '启用', '/sys/user/enable', 'sys:user:enable', 2, NULL, 0, '2017-08-14 17:27:18', '2017-09-05 12:48:30');
INSERT INTO `sys_menu` VALUES (25, 6, '停用', '/sys/user/disable', 'sys:user:disable', 2, NULL, 0, '2017-08-14 17:27:43', '2017-09-05 12:48:49');
INSERT INTO `sys_menu` VALUES (26, 6, '重置密码', '/sys/user/rest', 'sys:user:resetPassword', 2, NULL, 0, '2017-08-14 17:28:34', '2017-09-05 12:49:17');
INSERT INTO `sys_menu` VALUES (27, 267, '系统日志', 'sys/log/list.html', NULL, 1, 'fa fa-warning', 3, '2017-08-14 22:11:53', '2017-08-17 09:55:19');
INSERT INTO `sys_menu` VALUES (28, 27, '刷新', '/sys/log/list', 'sys:log:list', 2, NULL, 0, '2017-08-14 22:30:22', '2017-09-05 13:05:24');
INSERT INTO `sys_menu` VALUES (29, 27, '删除', '/sys/log/remove', 'sys:log:remove', 2, NULL, 0, '2017-08-14 22:30:43', '2017-09-05 13:05:37');
INSERT INTO `sys_menu` VALUES (30, 27, '清空', '/sys/log/clear', 'sys:log:clear', 2, NULL, 0, '2017-08-14 22:31:02', '2017-09-05 13:05:53');
INSERT INTO `sys_menu` VALUES (42, 261, '刷新', '/sys/org/list', 'sys:org:list', 2, NULL, 0, '2017-08-17 10:03:36', '2017-09-05 11:47:37');
INSERT INTO `sys_menu` VALUES (43, 261, '新增', '/sys/org/save', 'sys:org:save', 2, NULL, 0, '2017-08-17 10:03:54', '2017-09-05 12:40:55');
INSERT INTO `sys_menu` VALUES (44, 261, '编辑', '/sys/org/update', 'sys:org:edit', 2, NULL, 0, '2017-08-17 10:04:11', '2017-09-05 12:43:06');
INSERT INTO `sys_menu` VALUES (45, 261, '删除', '/sys/org/remove', 'sys:org:remove', 2, NULL, 0, '2017-08-17 10:04:30', '2017-09-05 12:42:19');
INSERT INTO `sys_menu` VALUES (46, 7, '数据权限', '/sys/role/authorize/data', 'sys:role:authorizeData', 2, NULL, 0, '2017-08-17 13:48:11', '2017-09-05 12:45:54');
INSERT INTO `sys_menu` VALUES (261, 299, '合作单位', '/sys/org/list.html', NULL, 1, 'layui-icon layui-icon-friends', 3, NULL, NULL);
INSERT INTO `sys_menu` VALUES (264, 1, '全局配置', 'sys/config/list.html', NULL, 1, 'layui-icon layui-icon-templeate-1', 40, NULL, NULL);
INSERT INTO `sys_menu` VALUES (267, 0, '系统监控', NULL, NULL, 0, 'layui-icon layui-icon-camera', 40, NULL, NULL);
INSERT INTO `sys_menu` VALUES (295, 0, '停车场管理', NULL, NULL, 0, 'layui-icon layui-icon-diamond', 0, NULL, NULL);
INSERT INTO `sys_menu` VALUES (296, 295, '停车场管理', 'car/parkManage/list.html', NULL, 1, 'layui-icon layui-icon-set', 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (299, 0, '账户管理', NULL, NULL, 0, 'layui-icon layui-icon-username', 10, NULL, NULL);
INSERT INTO `sys_menu` VALUES (300, 0, '车场管理', NULL, NULL, 0, 'layui-icon layui-icon-release', 3, NULL, NULL);
INSERT INTO `sys_menu` VALUES (301, 300, '车辆管理', 'car/carManage/list.html', NULL, 1, 'layui-icon layui-icon-release', 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (302, 0, '停车记录', NULL, NULL, 0, 'layui-icon layui-icon-file-b', 4, NULL, NULL);
INSERT INTO `sys_menu` VALUES (303, 302, '停车记录', 'car/parkingRecord/list.html', NULL, 1, 'layui-icon layui-icon-location', 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (304, 0, '车牌识别', '', NULL, 0, 'layui-icon layui-icon-camera-fill', 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (305, 304, '车牌识别', 'car/distinguish/list.html', NULL, 1, 'layui-icon layui-icon-camera-fill', 1, NULL, NULL);

-- ----------------------------
-- Table structure for sys_org
-- ----------------------------
DROP TABLE IF EXISTS `sys_org`;
CREATE TABLE `sys_org`  (
                            `org_id` bigint NOT NULL AUTO_INCREMENT COMMENT '机构id',
                            `parent_id` bigint NULL DEFAULT NULL COMMENT '上级机构ID，一级机构为0',
                            `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构编码',
                            `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构名称',
                            `full_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构名称(全称)',
                            `director` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构负责人',
                            `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系邮箱',
                            `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
                            `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
                            `order_num` int NULL DEFAULT NULL COMMENT '排序',
                            `status` tinyint NULL DEFAULT 1 COMMENT '可用标识  1：可用  0：不可用',
                            `gmt_create` timestamp NULL DEFAULT NULL COMMENT '创建时间',
                            `gmt_modified` timestamp NULL DEFAULT NULL COMMENT '修改时间',
                            PRIMARY KEY (`org_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '机构管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_org
-- ----------------------------
INSERT INTO `sys_org` VALUES (36, 0, '00006', '郑州金地置业', '郑州金地', '李小莉', NULL, NULL, NULL, NULL, 1, '2020-05-08 22:06:58', '2020-05-08 22:07:03');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
                             `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色id',
                             `org_id` bigint NULL DEFAULT NULL COMMENT '所属机构',
                             `role_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
                             `role_sign` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色标识',
                             `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
                             `user_id_create` bigint NULL DEFAULT NULL COMMENT '创建用户id',
                             `gmt_create` timestamp NULL DEFAULT NULL COMMENT '创建时间',
                             `gmt_modified` timestamp NULL DEFAULT NULL COMMENT '创建时间',
                             PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统角色' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, 17, '超级管理员', 'admin', '【系统内置】', 2, '2017-08-12 00:43:52', '2017-11-21 10:19:08');
INSERT INTO `sys_role` VALUES (2, 17, '收费员', 'admin', '收费管理员', 1, '2022-02-15 15:55:06', '2022-02-15 15:55:06');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
                                  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '记录id',
                                  `role_id` bigint NULL DEFAULT NULL COMMENT '角色ID',
                                  `menu_id` bigint NULL DEFAULT NULL COMMENT '菜单ID',
                                  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14891 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色与菜单对应关系' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (14850, 1, 295);
INSERT INTO `sys_role_menu` VALUES (14851, 1, 296);
INSERT INTO `sys_role_menu` VALUES (14852, 1, 304);
INSERT INTO `sys_role_menu` VALUES (14853, 1, 305);
INSERT INTO `sys_role_menu` VALUES (14854, 1, 300);
INSERT INTO `sys_role_menu` VALUES (14855, 1, 301);
INSERT INTO `sys_role_menu` VALUES (14856, 1, 302);
INSERT INTO `sys_role_menu` VALUES (14857, 1, 303);
INSERT INTO `sys_role_menu` VALUES (14858, 1, 1);
INSERT INTO `sys_role_menu` VALUES (14859, 1, 7);
INSERT INTO `sys_role_menu` VALUES (14860, 1, 15);
INSERT INTO `sys_role_menu` VALUES (14861, 1, 16);
INSERT INTO `sys_role_menu` VALUES (14862, 1, 17);
INSERT INTO `sys_role_menu` VALUES (14863, 1, 18);
INSERT INTO `sys_role_menu` VALUES (14864, 1, 19);
INSERT INTO `sys_role_menu` VALUES (14865, 1, 46);
INSERT INTO `sys_role_menu` VALUES (14866, 1, 2);
INSERT INTO `sys_role_menu` VALUES (14867, 1, 20);
INSERT INTO `sys_role_menu` VALUES (14868, 1, 21);
INSERT INTO `sys_role_menu` VALUES (14869, 1, 22);
INSERT INTO `sys_role_menu` VALUES (14870, 1, 23);
INSERT INTO `sys_role_menu` VALUES (14871, 1, 264);
INSERT INTO `sys_role_menu` VALUES (14872, 1, 299);
INSERT INTO `sys_role_menu` VALUES (14873, 1, 6);
INSERT INTO `sys_role_menu` VALUES (14874, 1, 11);
INSERT INTO `sys_role_menu` VALUES (14875, 1, 12);
INSERT INTO `sys_role_menu` VALUES (14876, 1, 13);
INSERT INTO `sys_role_menu` VALUES (14877, 1, 14);
INSERT INTO `sys_role_menu` VALUES (14878, 1, 24);
INSERT INTO `sys_role_menu` VALUES (14879, 1, 25);
INSERT INTO `sys_role_menu` VALUES (14880, 1, 26);
INSERT INTO `sys_role_menu` VALUES (14881, 1, 261);
INSERT INTO `sys_role_menu` VALUES (14882, 1, 42);
INSERT INTO `sys_role_menu` VALUES (14883, 1, 43);
INSERT INTO `sys_role_menu` VALUES (14884, 1, 44);
INSERT INTO `sys_role_menu` VALUES (14885, 1, 45);
INSERT INTO `sys_role_menu` VALUES (14886, 1, 267);
INSERT INTO `sys_role_menu` VALUES (14887, 1, 27);
INSERT INTO `sys_role_menu` VALUES (14888, 1, 28);
INSERT INTO `sys_role_menu` VALUES (14889, 1, 29);
INSERT INTO `sys_role_menu` VALUES (14890, 1, 30);
INSERT INTO `sys_role_menu` VALUES (15850, 2, 295);
INSERT INTO `sys_role_menu` VALUES (15851, 2, 296);
INSERT INTO `sys_role_menu` VALUES (15852, 2, 304);
INSERT INTO `sys_role_menu` VALUES (15853, 2, 305);
INSERT INTO `sys_role_menu` VALUES (15854, 2, 300);
INSERT INTO `sys_role_menu` VALUES (15855, 2, 301);
INSERT INTO `sys_role_menu` VALUES (15856, 2, 302);
INSERT INTO `sys_role_menu` VALUES (15857, 2, 303);
INSERT INTO `sys_role_menu` VALUES (15860, 2, 15);
INSERT INTO `sys_role_menu` VALUES (15861, 2, 16);
INSERT INTO `sys_role_menu` VALUES (15862, 2, 17);
INSERT INTO `sys_role_menu` VALUES (15863, 2, 18);
INSERT INTO `sys_role_menu` VALUES (15864, 2, 19);
INSERT INTO `sys_role_menu` VALUES (15865, 2, 46);
INSERT INTO `sys_role_menu` VALUES (15867, 2, 20);
INSERT INTO `sys_role_menu` VALUES (15868, 2, 21);
INSERT INTO `sys_role_menu` VALUES (15869, 2, 22);
INSERT INTO `sys_role_menu` VALUES (15870, 2, 23);
INSERT INTO `sys_role_menu` VALUES (15871, 2, 264);
INSERT INTO `sys_role_menu` VALUES (15874, 2, 11);
INSERT INTO `sys_role_menu` VALUES (15875, 2, 12);
INSERT INTO `sys_role_menu` VALUES (15876, 2, 13);
INSERT INTO `sys_role_menu` VALUES (15877, 2, 14);
INSERT INTO `sys_role_menu` VALUES (15878, 2, 24);
INSERT INTO `sys_role_menu` VALUES (15879, 2, 25);
INSERT INTO `sys_role_menu` VALUES (15880, 2, 26);
INSERT INTO `sys_role_menu` VALUES (15882, 2, 42);
INSERT INTO `sys_role_menu` VALUES (15883, 2, 43);
INSERT INTO `sys_role_menu` VALUES (15884, 2, 44);
INSERT INTO `sys_role_menu` VALUES (15885, 2, 45);
INSERT INTO `sys_role_menu` VALUES (15888, 2, 28);
INSERT INTO `sys_role_menu` VALUES (15889, 2, 29);
INSERT INTO `sys_role_menu` VALUES (15890, 2, 30);

-- ----------------------------
-- Table structure for sys_role_org
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_org`;
CREATE TABLE `sys_role_org`  (
                                 `id` bigint NOT NULL AUTO_INCREMENT COMMENT '记录id',
                                 `role_id` bigint NULL DEFAULT NULL COMMENT '角色ID',
                                 `org_id` bigint NULL DEFAULT NULL COMMENT '机构ID',
                                 PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色与机构对应关系' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_org
-- ----------------------------
INSERT INTO `sys_role_org` VALUES (17, 1, 17);
INSERT INTO `sys_role_org` VALUES (18, 2, 17);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
                             `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户id',
                             `org_id` bigint NOT NULL COMMENT '所属机构',
                             `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
                             `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
                             `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名(昵称)',
                             `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
                             `mobile` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
                             `status` tinyint NULL DEFAULT NULL COMMENT '状态 0:禁用，1:正常',
                             `avatar_status` tinyint NOT NULL DEFAULT 0 COMMENT '头像上传 0:未上传 1:上传',
                             `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
                             `user_id_create` bigint NULL DEFAULT NULL COMMENT '创建用户id',
                             `gmt_create` timestamp NULL DEFAULT NULL COMMENT '创建时间',
                             `gmt_modified` timestamp NULL DEFAULT NULL COMMENT '修改时间',
                             `is_modify_pwd` tinyint NULL DEFAULT 0 COMMENT '是否修改过初始密码',
                             PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统用户' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 36, 'admin', '4cf28b576b2af52c9441d653e5a79917', 'admin', '100000@qq.com', '17788888888', 1, 0, NULL, 1, '2017-08-15 21:40:39', '2021-03-08 21:04:16', 1);
INSERT INTO `sys_user` VALUES (2, 36, 'xiaoli', '9b8832e12daa531411c027708b79ba35', '收费员小莉', '225366625@qq.com', '17531693353', 1, 0, NULL, 1, '2022-02-15 15:58:55', '2022-02-15 15:58:55', NULL);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
                                  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '记录id',
                                  `user_id` bigint NULL DEFAULT NULL COMMENT '用户ID',
                                  `role_id` bigint NULL DEFAULT NULL COMMENT '角色ID',
                                  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 266 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与角色对应关系' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (265, 1, 1);
INSERT INTO `sys_user_role` VALUES (266, 2, 2);

SET FOREIGN_KEY_CHECKS = 1;
