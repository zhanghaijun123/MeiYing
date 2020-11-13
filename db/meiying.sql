/*
 Navicat Premium Data Transfer

 Source Server         : 本地mysql
 Source Server Type    : MySQL
 Source Server Version : 50649
 Source Host           : localhost:3306
 Source Schema         : meiying

 Target Server Type    : MySQL
 Target Server Version : 50649
 File Encoding         : 65001

 Date: 13/11/2020 18:41:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作 sub主子表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_esperanto_ci COMMENT = '代码生成业务表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gen_table
-- ----------------------------

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_esperanto_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  `blob_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_esperanto_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_esperanto_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  `cron_expression` varchar(200) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  `time_zone_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_esperanto_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  `entry_id` varchar(95) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_esperanto_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL,
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_esperanto_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  `lock_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_esperanto_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_esperanto_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_esperanto_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'LAPTOP-SP8G30I31601185623905', 1601193143972, 15000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_esperanto_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  `str_prop_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL,
  `str_prop_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL,
  `str_prop_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL,
  `int_prop_1` int(11) NULL DEFAULT NULL,
  `int_prop_2` int(11) NULL DEFAULT NULL,
  `long_prop_1` bigint(20) NULL DEFAULT NULL,
  `long_prop_2` bigint(20) NULL DEFAULT NULL,
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL,
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL,
  `bool_prop_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL,
  `bool_prop_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_esperanto_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL,
  `next_fire_time` bigint(13) NULL DEFAULT NULL,
  `prev_fire_time` bigint(13) NULL DEFAULT NULL,
  `priority` int(11) NULL DEFAULT NULL,
  `trigger_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  `trigger_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) NULL DEFAULT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL,
  `misfire_instr` smallint(2) NULL DEFAULT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_esperanto_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1601185630000, -1, 5, 'PAUSED', 'CRON', 1601185624000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1601185635000, -1, 5, 'PAUSED', 'CRON', 1601185624000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1601185640000, -1, 5, 'PAUSED', 'CRON', 1601185624000, 0, NULL, 2, '');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_esperanto_ci COMMENT = '参数配置表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2020-11-05 15:18:34', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2020-11-05 15:18:34', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2020-11-05 15:18:34', '', NULL, '深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');
INSERT INTO `sys_config` VALUES (4, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2020-11-05 15:18:34', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '用户管理-密码字符范围', 'sys.account.chrtype', '0', 'Y', 'admin', '2020-11-05 15:18:34', '', NULL, '默认任意字符范围，0任意（密码可以输入任意字符），1数字（密码只能为0-9数字），2英文字母（密码只能为a-z和A-Z字母），3字母和数字（密码必须包含字母，数字）,4字母数字和特殊字符（目前支持的特殊字符包括：~!@#$%^&*()-=_+）');
INSERT INTO `sys_config` VALUES (6, '用户管理-初始密码修改策略', 'sys.account.initPasswordModify', '1', 'Y', 'admin', '2020-11-05 15:18:34', '', NULL, '0：初始密码修改策略关闭，没有任何提示，1：提醒用户，如果未修改初始密码，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES (7, '用户管理-账号密码更新周期', 'sys.account.passwordValidateDays', '0', 'Y', 'admin', '2020-11-05 15:18:34', '', NULL, '密码更新周期（填写数字，数据初始化值为0不限制，若修改必须为大于0小于365的正整数），如果超过这个周期登录系统时，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES (8, '主框架页-菜单导航显示风格', 'sys.index.menuStyle', 'default', 'Y', 'admin', '2020-11-05 15:18:34', '', NULL, '菜单导航显示风格（default为左侧导航菜单，topnav为顶部导航菜单）');
INSERT INTO `sys_config` VALUES (9, '主框架页-是否开启页脚', 'sys.index.ignoreFooter', 'true', 'Y', 'admin', '2020-11-05 15:18:34', '', NULL, '是否开启底部页脚显示（true显示，false隐藏）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL COMMENT '部门id',
  `parent_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(200) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_esperanto_ci COMMENT = '部门表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('1', '0', '0', '魅影科技', 0, '魅影', '15888888888', 'meiying@qq.com', '0', '0', 'admin', '2020-11-05 15:18:34', 'admin', '2020-11-13 16:09:16');
INSERT INTO `sys_dept` VALUES ('1eaa8e80258611eba7c2002b6767e8f8', 'cbb77421258511eba7c2002b6767e8f8', '0,1,cbb77421258511eba7c2002b6767e8f8', '人力资源部', 1, '茗君', '15382782932', 'mingjun@qq.com', '0', '0', 'admin', '2020-11-13 15:59:07', 'admin', '2020-11-13 16:09:16');
INSERT INTO `sys_dept` VALUES ('bb718794258511eba7c2002b6767e8f8', '1', '0,1', '北京分公司', 1, '魅影', '15210925782', 'meiying@163.com', '0', '0', 'admin', '2020-11-13 15:56:21', '', NULL);
INSERT INTO `sys_dept` VALUES ('cbb77421258511eba7c2002b6767e8f8', '1', '0,1', '太原分公司', 2, '魅影', '15287267329', 'meiying@163.com', '0', '0', 'admin', '2020-11-13 15:56:48', 'admin', '2020-11-13 16:09:16');
INSERT INTO `sys_dept` VALUES ('e43aa521258511eba7c2002b6767e8f8', 'bb718794258511eba7c2002b6767e8f8', '0,1,bb718794258511eba7c2002b6767e8f8', '研发部门', 1, '张三', '15987763623', 'zhangsan@qq.com', '0', '0', 'admin', '2020-11-13 15:57:29', '', NULL);
INSERT INTO `sys_dept` VALUES ('fe91b598258511eba7c2002b6767e8f8', 'bb718794258511eba7c2002b6767e8f8', '0,1,bb718794258511eba7c2002b6767e8f8', '财务部门', 2, '卫庄', '15287628932', 'weizhuang@qq.com', '0', '0', 'admin', '2020-11-13 15:58:13', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_esperanto_ci COMMENT = '字典数据表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别男');
INSERT INTO `sys_dict_data` VALUES ('10', 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '默认分组');
INSERT INTO `sys_dict_data` VALUES ('11', 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统分组');
INSERT INTO `sys_dict_data` VALUES ('12', 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('13', 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('14', 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知');
INSERT INTO `sys_dict_data` VALUES ('15', 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '公告');
INSERT INTO `sys_dict_data` VALUES ('16', 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('17', 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('18', 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '其他操作');
INSERT INTO `sys_dict_data` VALUES ('19', 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO `sys_dict_data` VALUES ('2', 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别女');
INSERT INTO `sys_dict_data` VALUES ('20', 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '修改操作');
INSERT INTO `sys_dict_data` VALUES ('21', 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '删除操作');
INSERT INTO `sys_dict_data` VALUES ('22', 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '授权操作');
INSERT INTO `sys_dict_data` VALUES ('23', 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导出操作');
INSERT INTO `sys_dict_data` VALUES ('24', 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导入操作');
INSERT INTO `sys_dict_data` VALUES ('25', 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '强退操作');
INSERT INTO `sys_dict_data` VALUES ('26', 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '生成操作');
INSERT INTO `sys_dict_data` VALUES ('27', 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '清空操作');
INSERT INTO `sys_dict_data` VALUES ('28', 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('29', 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES ('3', 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别未知');
INSERT INTO `sys_dict_data` VALUES ('4', 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_esperanto_ci COMMENT = '字典类型表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('10', '系统状态', 'sys_common_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录状态列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '任务分组', 'sys_job_group', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务分组列表');
INSERT INTO `sys_dict_type` VALUES ('6', '系统是否', 'sys_yes_no', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('8', '通知状态', 'sys_notice_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('9', '操作类型', 'sys_oper_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作类型列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_esperanto_ci COMMENT = '定时任务调度表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_esperanto_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL COMMENT '访问ID',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_esperanto_ci COMMENT = '系统访问记录' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES ('52a99bb7259211eba7c2002b6767e8f8', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-13 17:26:28');
INSERT INTO `sys_logininfor` VALUES ('6ae1d2e1258f11eba7c2002b6767e8f8', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-11-13 17:05:40');
INSERT INTO `sys_logininfor` VALUES ('6df0df23258f11eba7c2002b6767e8f8', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-13 17:05:46');
INSERT INTO `sys_logininfor` VALUES ('d63ca4b5258f11eba7c2002b6767e8f8', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-11-13 17:08:41');
INSERT INTO `sys_logininfor` VALUES ('d94a0d18258f11eba7c2002b6767e8f8', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-13 17:08:46');
INSERT INTO `sys_logininfor` VALUES ('e09d7fb0259b11eba7c2002b6767e8f8', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-13 18:34:52');
INSERT INTO `sys_logininfor` VALUES ('e6a56371258e11eba7c2002b6767e8f8', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-11-13 17:01:59');
INSERT INTO `sys_logininfor` VALUES ('e86ccc1b258e11eba7c2002b6767e8f8', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-13 17:02:02');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL COMMENT '菜单名称',
  `parent_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_esperanto_ci COMMENT = '菜单权限表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('027123dfa5fb41c7f96eeaeaa38d8cb3', '部门新增', '6bdd7dfa258a11eba7c2002b6767e8f8', 2, '#', '', 'F', '0', 'system:dept:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('05676421258c11eba7c2002b6767e8f8', '若依官网', '0', 4, 'http://ruoyi.vip', 'menuBlank', 'C', '0', '', 'fa fa-location-arrow', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '若依官网地址');
INSERT INTO `sys_menu` VALUES ('07ca4806f4f656f934fa3c043e1a05d9', '任务删除', 'd058d620258b11eba7c2002b6767e8f8', 4, '#', '', 'F', '0', 'monitor:job:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('0a40ed552c8efaa037278923fcc341a8', '操作删除', '2e59ba26258c11eba7c2002b6767e8f8', 2, '#', '', 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1af5e424dd64932fc0b344ac21403a3d', '岗位查询', '79289efc258a11eba7c2002b6767e8f8', 1, '#', '', 'F', '0', 'system:post:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1ff1f333de852c77332528eefde009c8', '登录查询', '3ce2eb88258c11eba7c2002b6767e8f8', 1, '#', '', 'F', '0', 'monitor:logininfor:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('2088170c317d701bd60957dbc963bb2d', '部门修改', '6bdd7dfa258a11eba7c2002b6767e8f8', 3, '#', '', 'F', '0', 'system:dept:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('2295b80a258a11eba7c2002b6767e8f8', '角色管理', '9f638e08258911eba7c2002b6767e8f8', 2, '/system/role', '', 'C', '0', 'system:role:view', 'fa fa-user-secret', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('2e59ba26258c11eba7c2002b6767e8f8', '操作日志', 'a8c0ec36258b11eba7c2002b6767e8f8', 1, '/monitor/operlog', '', 'C', '0', 'monitor:operlog:view', 'fa fa-address-book', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作日志菜单');
INSERT INTO `sys_menu` VALUES ('2ee8c1bf5bdfc67bb23ad321fefe223f', '日志导出', '2e59ba26258c11eba7c2002b6767e8f8', 4, '#', '', 'F', '0', 'monitor:operlog:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('31e853a50f79b33d931b68f5f3f02a79', '角色查询', '2295b80a258a11eba7c2002b6767e8f8', 1, '#', '', 'F', '0', 'system:role:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('3cb52148c5fea255f9283037619b3a2a', '登录删除', '3ce2eb88258c11eba7c2002b6767e8f8', 2, '#', '', 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('3ce2eb88258c11eba7c2002b6767e8f8', '登录日志', 'a8c0ec36258b11eba7c2002b6767e8f8', 2, '/monitor/logininfor', '', 'C', '0', 'monitor:logininfor:view', 'fa fa-file-image-o', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录日志菜单');
INSERT INTO `sys_menu` VALUES ('402913fd1fc2ddd004be503263eb04b2', '生成删除', 'dc7c5ec3258b11eba7c2002b6767e8f8', 3, '#', '', 'F', '0', 'tool:gen:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('40f0aa1466bebed764160dd312179df2', '部门删除', '6bdd7dfa258a11eba7c2002b6767e8f8', 4, '#', '', 'F', '0', 'system:dept:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('414e181c908e9b035425e6c057c288e5', '账户解锁', '3ce2eb88258c11eba7c2002b6767e8f8', 4, '#', '', 'F', '0', 'monitor:logininfor:unlock', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('434d94a7d0ef8d3ae29cc5a86cc600b8', '详细信息', '2e59ba26258c11eba7c2002b6767e8f8', 3, '#', '', 'F', '0', 'monitor:operlog:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('4a8dbfd8f56e34f24591f4aa663d66db', '角色导出', '2295b80a258a11eba7c2002b6767e8f8', 5, '#', '', 'F', '0', 'system:role:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('4aef376e58e281c25354b4d4e06c4b0f', '状态修改', 'd058d620258b11eba7c2002b6767e8f8', 5, '#', '', 'F', '0', 'monitor:job:changeStatus', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('51ab564e39312f4623c08f7f5133b771', '字典导出', '9416bb4b258a11eba7c2002b6767e8f8', 5, '#', '', 'F', '0', 'system:dict:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('5697ca5c1f129e1c634c9016cce74e62', '生成修改', 'dc7c5ec3258b11eba7c2002b6767e8f8', 2, '#', '', 'F', '0', 'tool:gen:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('5b5245ce57f7e9bbe367d330b6c2a2ee', '参数查询', '904bb2ae258b11eba7c2002b6767e8f8', 1, '#', 'menuItem', 'F', '0', 'system:config:list', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2020-11-13 16:36:24', '');
INSERT INTO `sys_menu` VALUES ('5de75e508e9b7fe07e43d6ff4bc75a7a', '角色修改', '2295b80a258a11eba7c2002b6767e8f8', 3, '#', '', 'F', '0', 'system:role:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('5f68532b258a11eba7c2002b6767e8f8', '菜单管理', '9f638e08258911eba7c2002b6767e8f8', 3, '/system/menu', '', 'C', '0', 'system:menu:view', 'fa fa-th-list', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES ('654d1d298fb7becffb166676366209a2', '角色删除', '2295b80a258a11eba7c2002b6767e8f8', 4, '#', '', 'F', '0', 'system:role:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('66a727574ac53db6dbd2001a5b0e188b', '参数导出', '904bb2ae258b11eba7c2002b6767e8f8', 5, '#', 'menuItem', 'F', '0', 'system:config:export', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2020-11-13 16:37:38', '');
INSERT INTO `sys_menu` VALUES ('66cf85cdda8b0b0156c25c0dd5761a68', '批量强退', 'b458ad13258b11eba7c2002b6767e8f8', 2, '#', '', 'F', '0', 'monitor:online:batchForceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('6800a2ffc5c13ab2cd05c0251f39a974', '参数修改', '904bb2ae258b11eba7c2002b6767e8f8', 3, '#', 'menuItem', 'F', '0', 'system:config:edit', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2020-11-13 16:35:54', '');
INSERT INTO `sys_menu` VALUES ('6bdd7dfa258a11eba7c2002b6767e8f8', '部门管理', '9f638e08258911eba7c2002b6767e8f8', 4, '/system/dept', '', 'C', '0', 'system:dept:view', 'fa fa-outdent', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '部门管理菜单');
INSERT INTO `sys_menu` VALUES ('731dd64315d4f09c342f665d2a84d57d', '公告查询', 'a8a89aa6258a11eba7c2002b6767e8f8', 1, '#', '', 'F', '0', 'system:notice:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('77355589b8b70a3a9baab613a929299d', '菜单新增', '5f68532b258a11eba7c2002b6767e8f8', 2, '#', '', 'F', '0', 'system:menu:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('7883ddf4e6f705ad2a21c5e8b013ecba', '任务详细', 'd058d620258b11eba7c2002b6767e8f8', 6, '#', '', 'F', '0', 'monitor:job:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('79289efc258a11eba7c2002b6767e8f8', '岗位管理', '9f638e08258911eba7c2002b6767e8f8', 5, '/system/post', '', 'C', '0', 'system:post:view', 'fa fa-address-card-o', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES ('7969892fb66654af3c4556597c2912bb', '部门查询', '6bdd7dfa258a11eba7c2002b6767e8f8', 1, '#', '', 'F', '0', 'system:dept:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('7c271f20cac5566400bf513c3d22945a', '任务新增', 'd058d620258b11eba7c2002b6767e8f8', 2, '#', '', 'F', '0', 'monitor:job:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('7e5878d1746c69c0ac1f9b86dfcc5ed9', '单条强退', 'b458ad13258b11eba7c2002b6767e8f8', 3, '#', '', 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('8226ba04e5c6ad3f638934fc0927241e', '参数新增', '904bb2ae258b11eba7c2002b6767e8f8', 2, '#', 'menuItem', 'F', '0', 'system:config:add', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2020-11-13 16:36:58', '');
INSERT INTO `sys_menu` VALUES ('83408c3113cccffe2e065ab7f8e210db', '字典查询', '9416bb4b258a11eba7c2002b6767e8f8', 1, '#', '', 'F', '0', 'system:dict:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('8649ebf7561b276f2ec2cf12f9e147ae', '系统接口', 'fa1a78df258b11eba7c2002b6767e8f8', 3, '/tool/swagger', '', 'C', '0', 'tool:swagger:view', 'fa fa-gg', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统接口菜单');
INSERT INTO `sys_menu` VALUES ('892fd67cd220133aaff1c1121b9111fc', '角色新增', '2295b80a258a11eba7c2002b6767e8f8', 2, '#', '', 'F', '0', 'system:role:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('8ea58478c5ce853c6443b0e64b363a01', '岗位修改', '79289efc258a11eba7c2002b6767e8f8', 3, '#', '', 'F', '0', 'system:post:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('904bb2ae258b11eba7c2002b6767e8f8', '参数设置', '9f638e08258911eba7c2002b6767e8f8', 7, '/system/config', '', 'C', '0', 'system:config:view', 'fa fa-sun-o', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '参数设置菜单');
INSERT INTO `sys_menu` VALUES ('913488e757404d49cc55b890614e9d12', '任务导出', 'd058d620258b11eba7c2002b6767e8f8', 7, '#', '', 'F', '0', 'monitor:job:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('9416bb4b258a11eba7c2002b6767e8f8', '字典管理', '9f638e08258911eba7c2002b6767e8f8', 6, '/system/dict', '', 'C', '0', 'system:dict:view', 'fa fa-bookmark-o', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '字典管理菜单');
INSERT INTO `sys_menu` VALUES ('969e91131ecf88e82725cbf578af3334', '用户删除', 'dce7cf2c258911eba7c2002b6767e8f8', 4, '#', '', 'F', '0', 'system:user:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('979facc602492823805be07a2a824ff4', '预览代码', 'dc7c5ec3258b11eba7c2002b6767e8f8', 4, '#', '', 'F', '0', 'tool:gen:preview', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('97db2d42cfe08ecb22db9d7de9077203', '字典删除', '9416bb4b258a11eba7c2002b6767e8f8', 4, '#', '', 'F', '0', 'system:dict:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('9e08c2c3e81ecdef462606235c792c2c', '生成代码', 'dc7c5ec3258b11eba7c2002b6767e8f8', 5, '#', '', 'F', '0', 'tool:gen:code', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('9e5ae082258a11eba7c2002b6767e8f8', '重置密码', 'dce7cf2c258911eba7c2002b6767e8f8', 7, '#', '', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('9f638e08258911eba7c2002b6767e8f8', '系统管理', '0', 1, '#', '', 'M', '0', '', 'fa fa-gear', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统管理目录');
INSERT INTO `sys_menu` VALUES ('a2c2763b16ed9f71793e5573b8c9406a', '岗位删除', '79289efc258a11eba7c2002b6767e8f8', 4, '#', '', 'F', '0', 'system:post:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('a8a7752edfb1587c4436b55ee6b43d2e', '在线查询', 'b458ad13258b11eba7c2002b6767e8f8', 1, '#', '', 'F', '0', 'monitor:online:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('a8a89aa6258a11eba7c2002b6767e8f8', '通知公告', '9f638e08258911eba7c2002b6767e8f8', 8, '/system/notice', '', 'C', '0', 'system:notice:view', 'fa fa-bullhorn', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知公告菜单');
INSERT INTO `sys_menu` VALUES ('a8c0ec36258b11eba7c2002b6767e8f8', '日志管理', '9f638e08258911eba7c2002b6767e8f8', 9, '#', '', 'M', '0', '', 'fa fa-pencil-square-o', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '日志管理菜单');
INSERT INTO `sys_menu` VALUES ('af6660ae740ad69dd57a7eb05e98b8b6', '服务监控', 'eb26e1c8258b11eba7c2002b6767e8f8', 3, '/monitor/server', '', 'C', '0', 'monitor:server:view', 'fa fa-server', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '服务监控菜单');
INSERT INTO `sys_menu` VALUES ('b3e498c5e3b40f02270243a8ae02f6f6', '用户导入', 'dce7cf2c258911eba7c2002b6767e8f8', 6, '#', '', 'F', '0', 'system:user:import', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('b458ad13258b11eba7c2002b6767e8f8', '在线用户', 'eb26e1c8258b11eba7c2002b6767e8f8', 1, '/monitor/online', '', 'C', '0', 'monitor:online:view', 'fa fa-user-circle', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '在线用户菜单');
INSERT INTO `sys_menu` VALUES ('b6028c60c05f2c37199b5c5f18c25979', '用户新增', 'dce7cf2c258911eba7c2002b6767e8f8', 2, '#', '', 'F', '0', 'system:user:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('bc99984bfe0b7f401f016a4c93f50255', '公告新增', 'a8a89aa6258a11eba7c2002b6767e8f8', 2, '#', '', 'F', '0', 'system:notice:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('bfa1750025850ced6f5a206bfc84a34c', '操作查询', '2e59ba26258c11eba7c2002b6767e8f8', 1, '#', '', 'F', '0', 'monitor:operlog:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('c1f7b3224b603ba5989692c0cf9ffec3', '公告修改', 'a8a89aa6258a11eba7c2002b6767e8f8', 3, '#', '', 'F', '0', 'system:notice:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('c922c22cb7f7223c1a2d9c07b279ad0e', '用户导出', 'dce7cf2c258911eba7c2002b6767e8f8', 5, '#', '', 'F', '0', 'system:user:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('ca774fe61906537930f07c81bdc38729', '任务查询', 'd058d620258b11eba7c2002b6767e8f8', 1, '#', '', 'F', '0', 'monitor:job:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('cad27c5e49469ae16b51d47577e6c3cc', '岗位导出', '79289efc258a11eba7c2002b6767e8f8', 5, '#', '', 'F', '0', 'system:post:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('d058d620258b11eba7c2002b6767e8f8', '定时任务', 'eb26e1c8258b11eba7c2002b6767e8f8', 2, '/monitor/job', '', 'C', '0', 'monitor:job:view', 'fa fa-tasks', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '定时任务菜单');
INSERT INTO `sys_menu` VALUES ('d0a1dad5255b11eba7c2002b6767e8f8', '沧海横流', 'f033d065255a11eba7c2002b6767e8f8', 1, '/module/seaAcross', 'menuItem', 'C', '0', 'module:seaAcross:list', 'fa fa-at', 'admin', '2020-11-13 10:56:17', 'admin', '2020-11-13 11:33:42', '');
INSERT INTO `sys_menu` VALUES ('d5f86dc6581f8d3c11d1583167b1d1ad', '表单构建', 'fa1a78df258b11eba7c2002b6767e8f8', 1, '/tool/build', '', 'C', '0', 'tool:build:view', 'fa fa-wpforms', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '表单构建菜单');
INSERT INTO `sys_menu` VALUES ('d80f1be34efb80bbeff2dc7473922957', '用户查询', 'dce7cf2c258911eba7c2002b6767e8f8', 1, '#', '', 'F', '0', 'system:user:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('d87582d55db4364e9103b585be56f65c', '菜单修改', '5f68532b258a11eba7c2002b6767e8f8', 3, '#', '', 'F', '0', 'system:menu:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('d9bd2469555d8ed232d435ac9979cc5a', '公告删除', 'a8a89aa6258a11eba7c2002b6767e8f8', 4, '#', '', 'F', '0', 'system:notice:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('dc7c5ec3258b11eba7c2002b6767e8f8', '代码生成', 'fa1a78df258b11eba7c2002b6767e8f8', 2, '/tool/gen', '', 'C', '0', 'tool:gen:view', 'fa fa-code', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代码生成菜单');
INSERT INTO `sys_menu` VALUES ('dce7cf2c258911eba7c2002b6767e8f8', '用户管理', '9f638e08258911eba7c2002b6767e8f8', 1, '/system/user', 'menuItem', 'C', '0', 'system:user:view', 'fa fa-user-o', 'admin', '2018-03-16 11:33:00', 'admin', '2020-11-13 13:54:54', '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('dd6e61fff0da1eac4334189e3d5e740b', '字典新增', '9416bb4b258a11eba7c2002b6767e8f8', 2, '#', '', 'F', '0', 'system:dict:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('dfc70ef17d37337f8ea36eebce0cf168', '数据监控', 'eb26e1c8258b11eba7c2002b6767e8f8', 3, '/monitor/data', '', 'C', '0', 'monitor:data:view', 'fa fa-bug', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '数据监控菜单');
INSERT INTO `sys_menu` VALUES ('e12c177dbda2af367b610ba076f55265', '用户修改', 'dce7cf2c258911eba7c2002b6767e8f8', 3, '#', '', 'F', '0', 'system:user:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('e586003fa78cfb821943de01964d2132', '岗位新增', '79289efc258a11eba7c2002b6767e8f8', 2, '#', '', 'F', '0', 'system:post:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('e5921a80ed7efb78f3d10d363639f8d4', '任务修改', 'd058d620258b11eba7c2002b6767e8f8', 3, '#', '', 'F', '0', 'monitor:job:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('eb10cc80ea8e110269badb89dca6722e', '菜单删除', '5f68532b258a11eba7c2002b6767e8f8', 4, '#', '', 'F', '0', 'system:menu:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('eb26e1c8258b11eba7c2002b6767e8f8', '系统监控', '0', 2, '#', '', 'M', '0', '', 'fa fa-video-camera', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统监控目录');
INSERT INTO `sys_menu` VALUES ('eecb241ed464c89bfb3af1021a98aded', '生成查询', 'dc7c5ec3258b11eba7c2002b6767e8f8', 1, '#', '', 'F', '0', 'tool:gen:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('f033d065255a11eba7c2002b6767e8f8', '百步飞剑', '0', 4, '#', 'menuItem', 'M', '0', '', 'fa fa-automobile', 'admin', '2020-11-13 10:50:01', 'admin', '2020-11-13 11:21:03', '');
INSERT INTO `sys_menu` VALUES ('f195ac149d9ee19c91cd0905f30c206f', '字典修改', '9416bb4b258a11eba7c2002b6767e8f8', 3, '#', '', 'F', '0', 'system:dict:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('f65232b6f6641966d743ea5a0dc44afe', '日志导出', '3ce2eb88258c11eba7c2002b6767e8f8', 3, '#', '', 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('f9d92a464a55df67c032c0d1d2fc77a1', '参数删除', '904bb2ae258b11eba7c2002b6767e8f8', 4, '#', 'menuItem', 'F', '0', 'system:config:remove', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2020-11-13 16:37:21', '');
INSERT INTO `sys_menu` VALUES ('fa1a78df258b11eba7c2002b6767e8f8', '系统工具', '0', 3, '#', '', 'M', '0', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统工具目录');
INSERT INTO `sys_menu` VALUES ('fd267405255b11eba7c2002b6767e8f8', '新增', 'd0a1dad5255b11eba7c2002b6767e8f8', 1, '#', 'menuItem', 'F', '0', 'module:seaAcross:add', '#', 'admin', '2020-11-13 10:57:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES ('ffc22b7a6c6becc3490d1c543d98a57d', '菜单查询', '5f68532b258a11eba7c2002b6767e8f8', 1, '#', '', 'F', '0', 'system:menu:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_esperanto_ci COMMENT = '通知公告表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_esperanto_ci COMMENT = '操作日志记录' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES ('0029b1bd64394b0c9ab40314f8481f82', '角色管理', 4, 'com.meiying.web.controller.system.SysRoleController.selectAuthUserAll()', 'POST', 1, 'admin', NULL, '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":[\"44a66d05258911eba7c2002b6767e8f8\"],\"userIds\":[\"1e7fd7ca258911eba7c2002b6767e8f8\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-13 16:22:02');
INSERT INTO `sys_oper_log` VALUES ('095314372c9048638e919145df5121b0', '岗位管理', 5, 'com.meiying.web.controller.system.SysPostController.export()', 'POST', 1, 'admin', NULL, '/system/post/export', '127.0.0.1', '内网IP', '{\"postCode\":[\"\"],\"postName\":[\"\"],\"status\":[\"\"],\"orderByColumn\":[\"postSort\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"3f6366c2-4243-4111-a49e-76c34e1009aa_岗位数据.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-13 18:25:02');
INSERT INTO `sys_oper_log` VALUES ('0c1b989a160b4586b693ce54851a2504', '菜单管理', 2, 'com.meiying.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', NULL, '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1031\"],\"parentId\":[\"106\"],\"menuType\":[\"F\"],\"menuName\":[\"参数新增\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"system:config:add\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-13 16:34:16');
INSERT INTO `sys_oper_log` VALUES ('16bc1fce797f4597a15ed05198dfc356', '岗位管理', 2, 'com.meiying.web.controller.system.SysPostController.editSave()', 'POST', 1, 'admin', NULL, '/system/post/edit', '127.0.0.1', '内网IP', '{\"postId\":[\"90f40318259911eba7c2002b6767e8f8\"],\"postName\":[\"主管\"],\"postCode\":[\"supervisor\"],\"postSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"主管\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-13 18:21:59');
INSERT INTO `sys_oper_log` VALUES ('257617d0c4194ca0b705ebf78e38f4ee', '岗位管理', 1, 'com.meiying.web.controller.system.SysPostController.addSave()', 'POST', 1, 'admin', NULL, '/system/post/add', '127.0.0.1', '内网IP', '{\"postName\":[\"总经理\"],\"postCode\":[\"manager\"],\"postSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"总经理\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-13 18:17:31');
INSERT INTO `sys_oper_log` VALUES ('26b0fb0c3287405289a6b26da3b4ec5f', '岗位管理', 1, 'com.meiying.web.controller.system.SysPostController.addSave()', 'POST', 1, 'admin', NULL, '/system/post/add', '127.0.0.1', '内网IP', '{\"postName\":[\"主管\"],\"postCode\":[\"Supervisor\"],\"postSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"主管\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-13 18:18:19');
INSERT INTO `sys_oper_log` VALUES ('308875c5abb94ad7b609ab9056d2590c', '菜单管理', 2, 'com.meiying.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', NULL, '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1034\"],\"parentId\":[\"106\"],\"menuType\":[\"F\"],\"menuName\":[\"参数导出\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"system:config:export\"],\"orderNum\":[\"5\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-13 16:37:38');
INSERT INTO `sys_oper_log` VALUES ('309604cabc2f404aa347cdcb05860438', '岗位管理', 2, 'com.meiying.web.controller.system.SysPostController.editSave()', 'POST', 1, 'admin', NULL, '/system/post/edit', '127.0.0.1', '内网IP', '{\"postId\":[\"a5d3cc26259911eba7c2002b6767e8f8\"],\"postName\":[\"董事长\"],\"postCode\":[\"chairman\"],\"postSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-13 18:22:10');
INSERT INTO `sys_oper_log` VALUES ('31906cf2afc44154b7019609992ad83c', '岗位管理', 2, 'com.meiying.web.controller.system.SysPostController.editSave()', 'POST', 1, 'admin', NULL, '/system/post/edit', '127.0.0.1', '内网IP', '{\"postId\":[\"743eabd5259911eba7c2002b6767e8f8\"],\"postName\":[\"总经理\"],\"postCode\":[\"manager\"],\"postSort\":[\"0\"],\"status\":[\"0\"],\"remark\":[\"总经理\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-13 18:22:27');
INSERT INTO `sys_oper_log` VALUES ('3f8f1446c43440bf8ccf5212410e248e', '菜单管理', 2, 'com.meiying.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', NULL, '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1033\"],\"parentId\":[\"106\"],\"menuType\":[\"F\"],\"menuName\":[\"参数删除\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"system:config:remove\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-13 16:37:21');
INSERT INTO `sys_oper_log` VALUES ('4699cf59f61348aaaf36c209b27cb3b6', '岗位管理', 3, 'com.meiying.web.controller.system.SysPostController.remove()', 'POST', 1, 'admin', '魅影科技', '/system/post/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"d4c429d3259911eba7c2002b6767e8f8\"]}', '{\r\n  \"msg\" : \"java.lang.String cannot be cast to java.lang.Integer\",\r\n  \"code\" : 500\r\n}', 0, NULL, '2020-11-13 18:35:15');
INSERT INTO `sys_oper_log` VALUES ('46b2d61e56844abe8a679c0900294811', '岗位管理', 3, 'com.meiying.web.controller.system.SysPostController.remove()', 'POST', 1, 'admin', NULL, '/system/post/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"d4c429d3259911eba7c2002b6767e8f8\"]}', '{\r\n  \"msg\" : \"java.lang.String cannot be cast to java.lang.Integer\",\r\n  \"code\" : 500\r\n}', 0, NULL, '2020-11-13 18:28:45');
INSERT INTO `sys_oper_log` VALUES ('4820a690ed3c44ffa1dee026518dd78e', '岗位管理', 3, 'com.meiying.web.controller.system.SysPostController.remove()', 'POST', 1, 'admin', NULL, '/system/post/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"d4c429d3259911eba7c2002b6767e8f8\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-13 18:38:27');
INSERT INTO `sys_oper_log` VALUES ('5a2f02b8a4f2460895322360fef61a15', '角色管理', 1, 'com.meiying.web.controller.system.SysRoleController.addSave()', 'POST', 1, 'admin', NULL, '/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"普通用户\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通用户\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,114,1057,1058,1059,1060,1061,115,f033d065255a11eba7c2002b6767e8f8,d0a1dad5255b11eba7c2002b6767e8f8,fd267405255b11eba7c2002b6767e8f8\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-13 16:21:39');
INSERT INTO `sys_oper_log` VALUES ('5cc8d9c2019c46f7be84370df3ab3e17', '岗位管理', 3, 'com.meiying.web.controller.system.SysPostController.remove()', 'POST', 1, 'admin', '魅影科技', '/system/post/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"d4c429d3259911eba7c2002b6767e8f8\"]}', '{\r\n  \"msg\" : \"java.lang.String cannot be cast to java.lang.Integer\",\r\n  \"code\" : 500\r\n}', 0, NULL, '2020-11-13 18:34:58');
INSERT INTO `sys_oper_log` VALUES ('61895c5c7694444691ac029c54ade67d', '岗位管理', 3, 'com.meiying.web.controller.system.SysPostController.remove()', 'POST', 1, 'admin', NULL, '/system/post/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"d4c429d3259911eba7c2002b6767e8f8\"]}', '{\r\n  \"msg\" : \"java.lang.String cannot be cast to java.lang.Integer\",\r\n  \"code\" : 500\r\n}', 0, NULL, '2020-11-13 18:34:23');
INSERT INTO `sys_oper_log` VALUES ('657179d93ad14e11884a08082f875af7', '岗位管理', 3, 'com.meiying.web.controller.system.SysPostController.remove()', 'POST', 1, 'admin', NULL, '/system/post/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"d4c429d3259911eba7c2002b6767e8f8\"]}', '{\r\n  \"msg\" : \"java.lang.String cannot be cast to java.lang.Integer\",\r\n  \"code\" : 500\r\n}', 0, NULL, '2020-11-13 18:34:15');
INSERT INTO `sys_oper_log` VALUES ('86703a86c0a34caf9b83588e020d57f8', '岗位管理', 5, 'com.meiying.web.controller.system.SysPostController.export()', 'POST', 1, 'admin', NULL, '/system/post/export', '127.0.0.1', '内网IP', '{\"postCode\":[\"\"],\"postName\":[\"工\"],\"status\":[\"\"],\"orderByColumn\":[\"postSort\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"9cc7418d-3131-43f4-a5b8-90fba287482d_岗位数据.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-13 18:28:11');
INSERT INTO `sys_oper_log` VALUES ('94e2c0eeb567487983f1966a08758e59', '菜单管理', 2, 'com.meiying.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', NULL, '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1032\"],\"parentId\":[\"106\"],\"menuType\":[\"F\"],\"menuName\":[\"参数修改\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"system:config:edit\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-13 16:35:54');
INSERT INTO `sys_oper_log` VALUES ('9fc2475f55b843158c6622ed34a1ebb6', '岗位管理', 1, 'com.meiying.web.controller.system.SysPostController.addSave()', 'POST', 1, 'admin', NULL, '/system/post/add', '127.0.0.1', '内网IP', '{\"postName\":[\"工程师\"],\"postCode\":[\"engineer\"],\"postSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-13 18:19:33');
INSERT INTO `sys_oper_log` VALUES ('9ff9b04342e1459c9d4482509ef28f0f', '岗位管理', 1, 'com.meiying.web.controller.system.SysPostController.addSave()', 'POST', 1, 'admin', NULL, '/system/post/add', '127.0.0.1', '内网IP', '{\"postName\":[\"22\"],\"postCode\":[\"22\"],\"postSort\":[\"2\"],\"status\":[\"1\"],\"remark\":[\"22\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-13 18:38:47');
INSERT INTO `sys_oper_log` VALUES ('a646d6750d764ca7834556fb9d70d950', '用户管理', 5, 'com.meiying.web.controller.system.SysUserController.export()', 'POST', 1, 'admin', NULL, '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"],\"orderByColumn\":[\"createTime\"],\"isAsc\":[\"desc\"]}', '{\r\n  \"msg\" : \"3bfe7775-45a0-408c-9278-a4f3489f71a3_用户数据.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-13 18:27:27');
INSERT INTO `sys_oper_log` VALUES ('a8d38087d72d4429b3b7cca241f3db17', '菜单管理', 2, 'com.meiying.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', NULL, '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1030\"],\"parentId\":[\"106\"],\"menuType\":[\"F\"],\"menuName\":[\"参数查询\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"system:config:list\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-13 16:36:24');
INSERT INTO `sys_oper_log` VALUES ('b0241c00f12a4b01b767b8580a78cf47', '岗位管理', 3, 'com.meiying.web.controller.system.SysPostController.remove()', 'POST', 1, 'admin', NULL, '/system/post/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"68ac11a1259c11eba7c2002b6767e8f8,6c98922c259c11eba7c2002b6767e8f8\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-13 18:38:54');
INSERT INTO `sys_oper_log` VALUES ('bbcc768161ad470da083456a10ea8a7f', '角色管理', 2, 'com.meiying.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', NULL, '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"44a66d05258911eba7c2002b6767e8f8\"],\"roleName\":[\"普通用户\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通用户\"],\"menuIds\":[\"9f638e08258911eba7c2002b6767e8f8,dce7cf2c258911eba7c2002b6767e8f8,d80f1be34efb80bbeff2dc7473922957,b6028c60c05f2c37199b5c5f18c25979,e12c177dbda2af367b610ba076f55265,969e91131ecf88e82725cbf578af3334,c922c22cb7f7223c1a2d9c07b279ad0e,b3e498c5e3b40f02270243a8ae02f6f6,9e5ae082258a11eba7c2002b6767e8f8,2295b80a258a11eba7c2002b6767e8f8,31e853a50f79b33d931b68f5f3f02a79,892fd67cd220133aaff1c1121b9111fc,5de75e508e9b7fe07e43d6ff4bc75a7a,654d1d298fb7becffb166676366209a2,4a8dbfd8f56e34f24591f4aa663d66db,5f68532b258a11eba7c2002b6767e8f8,ffc22b7a6c6becc3490d1c543d98a57d,77355589b8b70a3a9baab613a929299d,d87582d55db4364e9103b585be56f65c,eb10cc80ea8e110269badb89dca6722e,6bdd7dfa258a11eba7c2002b6767e8f8,7969892fb66654af3c4556597c2912bb,027123dfa5fb41c7f96eeaeaa38d8cb3,2088170c317d701bd60957dbc963bb2d,40f0aa1466bebed764160dd312179df2,79289efc258a11eba7c2002b6767e8f8,1af5e424dd64932fc0b344ac21403a3d,e586003fa78cfb821943de01964d2132,8ea58478c5ce853c6443b0e64b363a01,a2c2763b16ed9f71793e5573b8c9406a,cad27c5e49469ae16b51d47577e6c3cc,9416bb4b258a11eba7c2002b6767e8f8,83408c3113cccffe2e065ab7f8e210db,dd6e61fff0da1eac4334189e3d5e740b,f195ac149d9ee19c91cd0905f30c206f,97db2d42cfe08ecb22db9d7de9077203,51ab564e39312f4623c08f7f5133b771,904bb2ae258b11eba7c2002b6767e8f8,5b5245ce57f7e9bbe367d330b6c2a2ee,8226ba04e5c6ad3f638934fc0927241e,6800a2ffc5c13ab2cd05c0251f39a974,f9d92a464a55df67c032c0d1d2fc77a1,66a727574ac53db6dbd2001a5b0e188b,a8a89aa6258a11eba7c2002b6767e8f8,731dd64315d4f09c342f665d2a84d57d,bc99984bfe0b7f401f016a4c93f50255,c1f7b3224b603ba5989692c0cf9ffec3,d9bd2469555d8ed232d435ac9979cc5a,a8c0ec36258b11eba7c2002b6767e8f8,2e59ba26258c11eba7c2002b6767e8f8,bfa1750025850ced6f5a206bfc84a34c,0a40ed552c8efaa037278923fcc341a8,434d94a7d0ef8d3ae29cc5a86cc600b8,2ee8c1bf5bdfc67bb23ad321fefe223f,3ce2eb88258c11eba7c2002b6767e8f8,1ff1f333de852c77332528eefde009c8,3c', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-13 16:56:42');
INSERT INTO `sys_oper_log` VALUES ('bfd25a00f85b449081ffc78c8f167eb0', '岗位管理', 1, 'com.meiying.web.controller.system.SysPostController.addSave()', 'POST', 1, 'admin', NULL, '/system/post/add', '127.0.0.1', '内网IP', '{\"postName\":[\"董事长\"],\"postCode\":[\"chairman\"],\"postSort\":[\"0\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-13 18:18:54');
INSERT INTO `sys_oper_log` VALUES ('c4f3665ec33b4d48abda36c518515ac7', '岗位管理', 5, 'com.meiying.web.controller.system.SysPostController.export()', 'POST', 1, 'admin', NULL, '/system/post/export', '127.0.0.1', '内网IP', '{\"postCode\":[\"\"],\"postName\":[\"\"],\"status\":[\"\"],\"orderByColumn\":[\"postSort\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"67678dce-af87-4ace-84be-65be15b0ab00_岗位数据.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-13 18:25:28');
INSERT INTO `sys_oper_log` VALUES ('c6f7ec4934a1490cb0d7051895999479', '岗位管理', 1, 'com.meiying.web.controller.system.SysPostController.addSave()', 'POST', 1, 'admin', NULL, '/system/post/add', '127.0.0.1', '内网IP', '{\"postName\":[\"普通员工\"],\"postCode\":[\"general \"],\"postSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-13 18:20:13');
INSERT INTO `sys_oper_log` VALUES ('caaf95763f32418ba66441e34da709c1', '菜单管理', 2, 'com.meiying.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', NULL, '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1031\"],\"parentId\":[\"106\"],\"menuType\":[\"F\"],\"menuName\":[\"参数新增\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"system:config:add\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-13 16:36:58');
INSERT INTO `sys_oper_log` VALUES ('cb7d758fab004fc5893e88d81196c541', '岗位管理', 1, 'com.meiying.web.controller.system.SysPostController.addSave()', 'POST', 1, 'admin', NULL, '/system/post/add', '127.0.0.1', '内网IP', '{\"postName\":[\"111\"],\"postCode\":[\"111\"],\"postSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-13 18:38:40');
INSERT INTO `sys_oper_log` VALUES ('d3f39da53a4d4aca9980e5151aaa3903', '用户管理', 1, 'com.meiying.web.controller.system.SysUserController.addSave()', 'POST', 1, 'admin', NULL, '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"bb718794258511eba7c2002b6767e8f8\"],\"userName\":[\"魅影\"],\"deptName\":[\"北京分公司\"],\"phonenumber\":[\"15210925372\"],\"email\":[\"meiying123@163.com\"],\"loginName\":[\"zhj\"],\"sex\":[\"0\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"\"],\"postIds\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-13 16:20:35');
INSERT INTO `sys_oper_log` VALUES ('d6a89b9d19a6477e91d7e82ebe43436d', '岗位管理', 2, 'com.meiying.web.controller.system.SysPostController.editSave()', 'POST', 1, 'admin', NULL, '/system/post/edit', '127.0.0.1', '内网IP', '{\"postId\":[\"743eabd5259911eba7c2002b6767e8f8\"],\"postName\":[\"总经理\"],\"postCode\":[\"manager\"],\"postSort\":[\"0\"],\"status\":[\"1\"],\"remark\":[\"总经理1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-13 18:22:21');
INSERT INTO `sys_oper_log` VALUES ('d911c4e71a4d40f2b36030cafcc2e446', '菜单管理', 2, 'com.meiying.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', NULL, '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1030\"],\"parentId\":[\"106\"],\"menuType\":[\"F\"],\"menuName\":[\"参数查询\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"system:config:list\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-13 16:33:48');
INSERT INTO `sys_oper_log` VALUES ('e53705917dcc4fafb01febe253b7c21d', '角色管理', 1, 'com.meiying.web.controller.system.SysRoleController.addSave()', 'POST', 1, 'admin', NULL, '/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"安全管理员\"],\"roleKey\":[\"security\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"安全管理员\"],\"menuIds\":[\"9f638e08258911eba7c2002b6767e8f8,dce7cf2c258911eba7c2002b6767e8f8,d80f1be34efb80bbeff2dc7473922957,b6028c60c05f2c37199b5c5f18c25979,e12c177dbda2af367b610ba076f55265,969e91131ecf88e82725cbf578af3334,c922c22cb7f7223c1a2d9c07b279ad0e,b3e498c5e3b40f02270243a8ae02f6f6,9e5ae082258a11eba7c2002b6767e8f8,2295b80a258a11eba7c2002b6767e8f8,31e853a50f79b33d931b68f5f3f02a79,892fd67cd220133aaff1c1121b9111fc,5de75e508e9b7fe07e43d6ff4bc75a7a,654d1d298fb7becffb166676366209a2,4a8dbfd8f56e34f24591f4aa663d66db,5f68532b258a11eba7c2002b6767e8f8,ffc22b7a6c6becc3490d1c543d98a57d,77355589b8b70a3a9baab613a929299d,d87582d55db4364e9103b585be56f65c,eb10cc80ea8e110269badb89dca6722e,6bdd7dfa258a11eba7c2002b6767e8f8,7969892fb66654af3c4556597c2912bb,027123dfa5fb41c7f96eeaeaa38d8cb3,2088170c317d701bd60957dbc963bb2d,40f0aa1466bebed764160dd312179df2,79289efc258a11eba7c2002b6767e8f8,1af5e424dd64932fc0b344ac21403a3d,e586003fa78cfb821943de01964d2132,8ea58478c5ce853c6443b0e64b363a01,a2c2763b16ed9f71793e5573b8c9406a,cad27c5e49469ae16b51d47577e6c3cc,9416bb4b258a11eba7c2002b6767e8f8,83408c3113cccffe2e065ab7f8e210db,dd6e61fff0da1eac4334189e3d5e740b,f195ac149d9ee19c91cd0905f30c206f,97db2d42cfe08ecb22db9d7de9077203,51ab564e39312f4623c08f7f5133b771,904bb2ae258b11eba7c2002b6767e8f8,5b5245ce57f7e9bbe367d330b6c2a2ee,8226ba04e5c6ad3f638934fc0927241e,6800a2ffc5c13ab2cd05c0251f39a974,f9d92a464a55df67c032c0d1d2fc77a1,66a727574ac53db6dbd2001a5b0e188b,a8a89aa6258a11eba7c2002b6767e8f8,731dd64315d4f09c342f665d2a84d57d,bc99984bfe0b7f401f016a4c93f50255,c1f7b3224b603ba5989692c0cf9ffec3,d9bd2469555d8ed232d435ac9979cc5a,a8c0ec36258b11eba7c2002b6767e8f8,2e59ba26258c11eba7c2002b6767e8f8,bfa1750025850ced6f5a206bfc84a34c,0a40ed552c8efaa037278923fcc341a8,434d94a7d0ef8d3ae29cc5a86cc600b8,2ee8c1bf5bdfc67bb23ad321fefe223f,3ce2eb88258c11eba7c2002b6767e8f8,1ff1f333de852c77332528eefde009c8,3cb52148c5fea255f9283037619b3a2a,f65232b6f66', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-13 16:55:26');
INSERT INTO `sys_oper_log` VALUES ('e71c709efb354cf291c9bd50cb227ddc', '岗位管理', 3, 'com.meiying.web.controller.system.SysPostController.remove()', 'POST', 1, 'admin', NULL, '/system/post/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"d4c429d3259911eba7c2002b6767e8f8\"]}', '{\r\n  \"msg\" : \"java.lang.String cannot be cast to java.lang.Integer\",\r\n  \"code\" : 500\r\n}', 0, NULL, '2020-11-13 18:38:01');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_esperanto_ci COMMENT = '岗位信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES ('743eabd5259911eba7c2002b6767e8f8', 'manager', '总经理', 0, '0', 'admin', '2020-11-13 18:17:31', 'admin', '2020-11-13 18:22:27', '总经理');
INSERT INTO `sys_post` VALUES ('90f40318259911eba7c2002b6767e8f8', 'supervisor', '主管', 2, '0', 'admin', '2020-11-13 18:18:19', 'admin', '2020-11-13 18:21:59', '主管');
INSERT INTO `sys_post` VALUES ('a5d3cc26259911eba7c2002b6767e8f8', 'chairman', '董事长', 1, '0', 'admin', '2020-11-13 18:18:54', 'admin', '2020-11-13 18:22:10', '');
INSERT INTO `sys_post` VALUES ('bca06b68259911eba7c2002b6767e8f8', 'engineer', '工程师', 4, '0', 'admin', '2020-11-13 18:19:33', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_esperanto_ci COMMENT = '角色信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', 'admin', 1, '1', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '超级管理员');
INSERT INTO `sys_role` VALUES ('44a66d05258911eba7c2002b6767e8f8', '普通用户', 'common', 2, '1', '0', '0', 'admin', '2020-11-13 16:21:39', 'admin', '2020-11-13 16:56:42', '普通用户');
INSERT INTO `sys_role` VALUES ('fc8d2bc5258d11eba7c2002b6767e8f8', '安全管理员', 'security', 3, '1', '0', '0', 'admin', '2020-11-13 16:55:26', '', NULL, '安全管理员');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL COMMENT '角色ID',
  `dept_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_esperanto_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL COMMENT '角色ID',
  `menu_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_esperanto_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '027123dfa5fb41c7f96eeaeaa38d8cb3');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '07ca4806f4f656f934fa3c043e1a05d9');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '0a40ed552c8efaa037278923fcc341a8');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '1af5e424dd64932fc0b344ac21403a3d');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '1ff1f333de852c77332528eefde009c8');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '2088170c317d701bd60957dbc963bb2d');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '2295b80a258a11eba7c2002b6767e8f8');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '2e59ba26258c11eba7c2002b6767e8f8');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '2ee8c1bf5bdfc67bb23ad321fefe223f');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '31e853a50f79b33d931b68f5f3f02a79');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '3cb52148c5fea255f9283037619b3a2a');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '3ce2eb88258c11eba7c2002b6767e8f8');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '402913fd1fc2ddd004be503263eb04b2');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '40f0aa1466bebed764160dd312179df2');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '414e181c908e9b035425e6c057c288e5');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '434d94a7d0ef8d3ae29cc5a86cc600b8');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '4a8dbfd8f56e34f24591f4aa663d66db');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '4aef376e58e281c25354b4d4e06c4b0f');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '51ab564e39312f4623c08f7f5133b771');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '5697ca5c1f129e1c634c9016cce74e62');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '5b5245ce57f7e9bbe367d330b6c2a2ee');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '5de75e508e9b7fe07e43d6ff4bc75a7a');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '5f68532b258a11eba7c2002b6767e8f8');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '654d1d298fb7becffb166676366209a2');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '66a727574ac53db6dbd2001a5b0e188b');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '66cf85cdda8b0b0156c25c0dd5761a68');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '6800a2ffc5c13ab2cd05c0251f39a974');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '6bdd7dfa258a11eba7c2002b6767e8f8');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '731dd64315d4f09c342f665d2a84d57d');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '77355589b8b70a3a9baab613a929299d');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '7883ddf4e6f705ad2a21c5e8b013ecba');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '79289efc258a11eba7c2002b6767e8f8');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '7969892fb66654af3c4556597c2912bb');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '7c271f20cac5566400bf513c3d22945a');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '7e5878d1746c69c0ac1f9b86dfcc5ed9');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '8226ba04e5c6ad3f638934fc0927241e');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '83408c3113cccffe2e065ab7f8e210db');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '8649ebf7561b276f2ec2cf12f9e147ae');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '892fd67cd220133aaff1c1121b9111fc');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '8ea58478c5ce853c6443b0e64b363a01');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '904bb2ae258b11eba7c2002b6767e8f8');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '913488e757404d49cc55b890614e9d12');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '9416bb4b258a11eba7c2002b6767e8f8');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '969e91131ecf88e82725cbf578af3334');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '979facc602492823805be07a2a824ff4');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '97db2d42cfe08ecb22db9d7de9077203');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '9e08c2c3e81ecdef462606235c792c2c');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '9e5ae082258a11eba7c2002b6767e8f8');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', '9f638e08258911eba7c2002b6767e8f8');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', 'a2c2763b16ed9f71793e5573b8c9406a');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', 'a8a7752edfb1587c4436b55ee6b43d2e');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', 'a8a89aa6258a11eba7c2002b6767e8f8');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', 'a8c0ec36258b11eba7c2002b6767e8f8');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', 'af6660ae740ad69dd57a7eb05e98b8b6');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', 'b3e498c5e3b40f02270243a8ae02f6f6');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', 'b458ad13258b11eba7c2002b6767e8f8');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', 'b6028c60c05f2c37199b5c5f18c25979');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', 'bc99984bfe0b7f401f016a4c93f50255');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', 'bfa1750025850ced6f5a206bfc84a34c');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', 'c1f7b3224b603ba5989692c0cf9ffec3');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', 'c922c22cb7f7223c1a2d9c07b279ad0e');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', 'ca774fe61906537930f07c81bdc38729');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', 'cad27c5e49469ae16b51d47577e6c3cc');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', 'd058d620258b11eba7c2002b6767e8f8');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', 'd0a1dad5255b11eba7c2002b6767e8f8');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', 'd5f86dc6581f8d3c11d1583167b1d1ad');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', 'd80f1be34efb80bbeff2dc7473922957');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', 'd87582d55db4364e9103b585be56f65c');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', 'd9bd2469555d8ed232d435ac9979cc5a');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', 'dc7c5ec3258b11eba7c2002b6767e8f8');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', 'dce7cf2c258911eba7c2002b6767e8f8');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', 'dd6e61fff0da1eac4334189e3d5e740b');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', 'dfc70ef17d37337f8ea36eebce0cf168');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', 'e12c177dbda2af367b610ba076f55265');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', 'e586003fa78cfb821943de01964d2132');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', 'e5921a80ed7efb78f3d10d363639f8d4');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', 'eb10cc80ea8e110269badb89dca6722e');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', 'eb26e1c8258b11eba7c2002b6767e8f8');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', 'eecb241ed464c89bfb3af1021a98aded');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', 'f033d065255a11eba7c2002b6767e8f8');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', 'f195ac149d9ee19c91cd0905f30c206f');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', 'f65232b6f6641966d743ea5a0dc44afe');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', 'f9d92a464a55df67c032c0d1d2fc77a1');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', 'fa1a78df258b11eba7c2002b6767e8f8');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', 'fd267405255b11eba7c2002b6767e8f8');
INSERT INTO `sys_role_menu` VALUES ('44a66d05258911eba7c2002b6767e8f8', 'ffc22b7a6c6becc3490d1c543d98a57d');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL COMMENT '用户ID',
  `dept_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '盐加密',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `pwd_update_date` datetime(0) NULL DEFAULT NULL COMMENT '密码最后更新时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_esperanto_ci COMMENT = '用户信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '1', 'admin', '魅影', '00', 'meiying@163.com', '15812345678', '0', '/profile/avatar/2020/11/05/602145ca-abcb-46df-9fa0-a5971c51678d.png', '1794c1796e757bbc4f36913f3fb302ff', 'fcf1c9', '0', '0', '127.0.0.1', '2020-11-13 18:34:52', '2020-11-05 18:00:21', 'admin', '2018-03-16 11:33:00', 'ry', '2020-11-13 18:34:52', '管理员');
INSERT INTO `sys_user` VALUES ('1e7fd7ca258911eba7c2002b6767e8f8', 'bb718794258511eba7c2002b6767e8f8', 'zhj', '魅影', '00', 'meiying123@163.com', '15210925372', '0', '', '6a5bd4beaf62c2bd2ae18036787c5151', '4db016', '0', '0', '', NULL, NULL, 'admin', '2020-11-13 16:20:35', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online`  (
  `sessionId` varchar(50) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NULL DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime(0) NULL DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime(0) NULL DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) NULL DEFAULT 0 COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_esperanto_ci COMMENT = '在线用户记录' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
INSERT INTO `sys_user_online` VALUES ('dee0ee38-177c-4da0-bb21-e3b603ada6a8', 'admin', '魅影科技', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', 'on_line', '2020-11-13 18:34:48', '2020-11-13 18:34:52', 1800000);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL COMMENT '用户ID',
  `post_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_esperanto_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL COMMENT '用户ID',
  `role_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_esperanto_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('1e7fd7ca258911eba7c2002b6767e8f8', '44a66d05258911eba7c2002b6767e8f8');

SET FOREIGN_KEY_CHECKS = 1;
