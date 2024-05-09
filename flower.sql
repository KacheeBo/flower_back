/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : flower

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 06/04/2024 21:47:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for discount
-- ----------------------------
DROP TABLE IF EXISTS `discount`;
CREATE TABLE `discount`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `discount_score` float NULL DEFAULT NULL COMMENT '折扣价',
  `f_id` int(11) NULL DEFAULT NULL COMMENT '花朵id',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '入库时间',
  `current_price` float(10, 2) NULL DEFAULT NULL COMMENT '目前价格',
  `u_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `f_name` char(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '花朵名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discount
-- ----------------------------
INSERT INTO `discount` VALUES (47, 0.5, 8, '2024-04-04 18:15:00', 7.00, 3, '金盏花');
INSERT INTO `discount` VALUES (49, 0.5, 10, '2024-04-04 18:15:00', 1.50, 6, '牵牛花');
INSERT INTO `discount` VALUES (50, 0.5, 11, '2024-04-04 18:15:00', 7.50, 6, '仙人掌');
INSERT INTO `discount` VALUES (51, 0.5, 12, '2024-04-04 18:15:00', 8.50, 6, '郁金香');
INSERT INTO `discount` VALUES (52, 0.5, 13, '2024-04-04 18:15:00', 9.50, 6, '龙舌兰');
INSERT INTO `discount` VALUES (53, 0.5, 14, '2024-04-04 18:15:00', 10.50, 6, '君子兰');
INSERT INTO `discount` VALUES (54, 0.5, 15, '2024-04-04 18:15:00', 16.50, 6, '马蹄莲');
INSERT INTO `discount` VALUES (55, 0.5, 16, '2024-04-04 18:15:00', 2.50, 6, '玫瑰花');
INSERT INTO `discount` VALUES (56, 0.5, 17, '2024-04-04 18:15:00', 2.50, 6, '菊花');
INSERT INTO `discount` VALUES (63, 0.5, 18, '2024-04-04 18:30:00', 61.50, 3, 'undefined');
INSERT INTO `discount` VALUES (64, 0.5, 19, '2024-04-04 18:30:00', 21.50, 3, 'dfs');
INSERT INTO `discount` VALUES (65, 0.5, 6, '2024-04-04 20:06:00', 10.50, 3, '向日葵');
INSERT INTO `discount` VALUES (66, 0.5, 7, '2024-04-04 20:06:00', 5.50, 3, '小雏菊');
INSERT INTO `discount` VALUES (68, 0.5, 21, '2024-04-05 04:43:00', 61.50, 3, '喇叭花');
INSERT INTO `discount` VALUES (69, 0.5, 22, '2024-04-05 04:44:00', 61.55, 3, '喇叭花123');
INSERT INTO `discount` VALUES (70, 0.5, 6, '2024-04-05 05:36:16', 11.00, 0, '向日葵');
INSERT INTO `discount` VALUES (71, 0.5, 6, '2024-04-05 05:37:21', 11.00, 0, '向日葵');
INSERT INTO `discount` VALUES (72, 0.5, 6, '2024-04-05 05:38:19', 11.00, 0, '向日葵');
INSERT INTO `discount` VALUES (73, 0.5, 6, '2024-04-05 05:39:44', 11.00, 0, '向日葵');
INSERT INTO `discount` VALUES (74, 0.7, 22, '2024-04-05 05:46:57', 123.00, 0, '喇叭花123');
INSERT INTO `discount` VALUES (75, 0.1, 22, '2024-04-05 05:47:20', 223.00, 0, '喇叭花123');
INSERT INTO `discount` VALUES (76, 12, 6, '2024-04-05 05:48:04', 123.00, 0, '向日葵');
INSERT INTO `discount` VALUES (77, 123, 6, '2024-04-05 05:53:00', 123.00, 0, '向日葵');
INSERT INTO `discount` VALUES (78, 1, 7, '2024-04-05 05:54:16', 123.00, 3, '小雏菊');
INSERT INTO `discount` VALUES (79, 0.5, 8, '2024-04-05 05:54:35', 123.00, 3, '金盏花');
INSERT INTO `discount` VALUES (80, 0.6, 21, '2024-04-05 05:54:58', 111.00, 3, '喇叭花');
INSERT INTO `discount` VALUES (81, 0.5, 23, '2024-04-05 08:02:03', 16.50, 3, '333');
INSERT INTO `discount` VALUES (82, 0.5, 22, '2024-04-05 08:18:42', 123.00, 3, '喇叭花123');
INSERT INTO `discount` VALUES (84, 0.5, 20, '2024-04-05 08:37:00', 61.50, 3, '123');
INSERT INTO `discount` VALUES (86, 0.5, 9, '2024-04-05 08:40:00', 3.00, 3, '牡丹');
INSERT INTO `discount` VALUES (98, 0.1, 26, '2024-04-05 12:38:01', 12.30, 2, '测试花朵');
INSERT INTO `discount` VALUES (99, 0.1, 27, '2024-04-05 12:38:01', 12.30, 2, '测试一下');
INSERT INTO `discount` VALUES (100, 0.1, 28, '2024-04-06 06:29:00', 12.30, 1, '紫色的花');
INSERT INTO `discount` VALUES (101, 0.5, 9, '2024-04-06 06:40:29', 123.00, 1, '牡丹');

-- ----------------------------
-- Table structure for flower_table
-- ----------------------------
DROP TABLE IF EXISTS `flower_table`;
CREATE TABLE `flower_table`  (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` float(11, 2) NOT NULL,
  `num` int(11) NOT NULL,
  `u_id` int(11) NULL DEFAULT NULL COMMENT '商家id',
  `f_url` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '花朵图片地址',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`f_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '模拟器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of flower_table
-- ----------------------------
INSERT INTO `flower_table` VALUES (9, '牡丹', 6.00, 19, 1, 'http://localhost:8080/2024/04/06/5f8cff12-a2db-4c40-a82d-d21ecc7f9f48.png', '2024-04-02 20:44:17');
INSERT INTO `flower_table` VALUES (10, '牵牛花', 3.00, 51, 1, 'http://localhost:8080/2024/04/06/c8003337-2a46-4f59-b346-0947069c38f2.png', '2024-04-02 20:44:17');
INSERT INTO `flower_table` VALUES (11, '仙人掌', 15.00, 32, 1, 'http://localhost:8080/2024/04/06/c1ee9603-d5b1-4a0c-9efc-08fe1c1134cd.png', '2024-04-02 20:44:17');
INSERT INTO `flower_table` VALUES (12, '郁金香', 17.00, -1, 1, 'http://localhost:8080/2024/04/06/b47df717-2dd1-47b0-afeb-8e7ce6e262fc.png', '2024-04-02 20:44:17');
INSERT INTO `flower_table` VALUES (13, '龙舌兰', 19.00, 62, 1, 'http://localhost:8080/2024/04/06/2e492b29-1d58-4f0f-9d09-f8d1f9824bd0.png', '2024-04-02 20:44:17');
INSERT INTO `flower_table` VALUES (14, '君子兰', 21.00, 9, 1, 'http://localhost:8080/2024/04/06/7042ad9c-e6ed-480f-99b1-751759c75353.png', '2024-04-02 20:44:17');
INSERT INTO `flower_table` VALUES (15, '马蹄莲', 33.00, 51, 1, 'http://localhost:8080/2024/04/06/63f36791-636e-4241-b4ce-766a010ffdc3.png', '2024-04-02 20:44:17');
INSERT INTO `flower_table` VALUES (16, '玫瑰花', 5.00, 3, 1, 'http://localhost:8080/2024/04/06/9f6f63b9-1fd2-4d66-a6ca-300aca617b42.png', '2024-04-02 20:44:17');
INSERT INTO `flower_table` VALUES (17, '菊花', 5.00, 38, 1, 'http://localhost:8080/2024/04/06/6c466fba-6e79-4232-ba64-1ce3193e2e39.png', '2024-04-02 20:44:17');

-- ----------------------------
-- Table structure for input_table
-- ----------------------------
DROP TABLE IF EXISTS `input_table`;
CREATE TABLE `input_table`  (
  `i_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_id` int(11) NOT NULL,
  `i_num` int(11) NOT NULL,
  `i_date` date NOT NULL,
  `u_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  PRIMARY KEY (`i_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '模拟器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of input_table
-- ----------------------------
INSERT INTO `input_table` VALUES (1, 1, 40, '2023-06-30', 1, 1);
INSERT INTO `input_table` VALUES (2, 6, 23, '2023-06-30', 3, 3);

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_id` int(11) NULL DEFAULT NULL COMMENT '花朵id',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '下单时间',
  `u_id` int(11) NULL DEFAULT NULL COMMENT '用户id(卖家id)',
  `price` float(10, 2) NULL DEFAULT NULL COMMENT '下单金额',
  `num` int(11) NULL DEFAULT NULL COMMENT '下单数',
  `order_u_id` int(11) NULL DEFAULT NULL COMMENT '当前用户下单id',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话号码',
  `to_ship` tinyint(1) UNSIGNED ZEROFILL NULL DEFAULT 0 COMMENT '是否发货',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (13, 14, '2024-04-02 00:00:00', 1, 21.00, 3, 6, '四川省成都市', '17323530833', 0);
INSERT INTO `order` VALUES (23, 14, '2024-04-03 00:00:00', 1, 21.00, 3, 6, '四川省成都市', '17323530833', 0);
INSERT INTO `order` VALUES (29, 26, '2024-04-05 00:00:00', 1, 123.00, 2, 6, '四川省成都市', '17323530833', 0);
INSERT INTO `order` VALUES (30, 27, '2024-04-05 00:00:00', 1, 123.00, 3, 6, '四川省成都市', '17323530833', 0);
INSERT INTO `order` VALUES (31, 17, '2024-04-06 00:00:00', 1, 2.50, 4, 6, '四川省成都市', '17323530833', 1);
INSERT INTO `order` VALUES (32, 10, '2024-04-06 00:00:00', 1, 3.00, 3, 6, '四川省成都市', '17323530833', 1);
INSERT INTO `order` VALUES (33, 14, '2024-04-06 00:00:00', 1, 21.00, 3, 6, '四川省成都市', '17323530833', 0);
INSERT INTO `order` VALUES (34, 11, '2024-04-06 00:00:00', 1, 15.00, 1, 6, '四川省成都市', '17323530833', 0);
INSERT INTO `order` VALUES (35, 12, '2024-04-06 00:00:00', 6, 8.50, 23, 6, '四川省成都市', '17323530833', 0);
INSERT INTO `order` VALUES (36, 15, '2024-04-06 07:49:16', 1, 33.00, 2, 6, '四川省成都市', '17323530833', 0);
INSERT INTO `order` VALUES (37, 11, '2024-04-06 07:49:46', 1, 15.00, 1, 6, '四川省成都市', '17323530833', 1);
INSERT INTO `order` VALUES (38, 9, '2024-04-06 08:12:49', 1, 6.00, 2, 6, '四川省成都市', '12345567', 1);
INSERT INTO `order` VALUES (39, 10, '2024-04-06 12:08:14', 1, 3.00, 1, 6, 'ccc', '123', 1);
INSERT INTO `order` VALUES (40, 28, '2024-04-06 12:17:33', 1, 123.00, 12, 6, '湖南长沙', '1231321321', 0);

-- ----------------------------
-- Table structure for order_copy1
-- ----------------------------
DROP TABLE IF EXISTS `order_copy1`;
CREATE TABLE `order_copy1`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_id` int(11) NULL DEFAULT NULL COMMENT '花朵id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '下单时间',
  `u_id` int(11) NULL DEFAULT NULL COMMENT '用户id(卖家id)',
  `price` float(10, 2) NULL DEFAULT NULL COMMENT '下单金额',
  `num` int(11) NULL DEFAULT NULL COMMENT '下单数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_copy1
-- ----------------------------
INSERT INTO `order_copy1` VALUES (2, 7, '2024-04-04 17:28:36', 3, 11.00, 2);
INSERT INTO `order_copy1` VALUES (3, 7, '2024-04-04 17:30:30', 3, 11.00, 2);
INSERT INTO `order_copy1` VALUES (4, 7, '2024-04-04 17:32:33', 3, 11.00, 2);
INSERT INTO `order_copy1` VALUES (5, 7, '2024-04-04 17:35:02', 3, 11.00, 3);
INSERT INTO `order_copy1` VALUES (6, 6, '2024-04-04 19:54:02', 3, 21.00, 0);
INSERT INTO `order_copy1` VALUES (7, 6, '2024-04-04 19:55:34', 6, 21.00, 1);
INSERT INTO `order_copy1` VALUES (8, 6, '2024-04-04 19:56:57', 6, 21.00, 2);
INSERT INTO `order_copy1` VALUES (9, 6, '2024-04-05 19:58:45', 6, 21.00, 2);
INSERT INTO `order_copy1` VALUES (10, 6, '2024-04-05 19:58:45', 3, 21.00, 2);
INSERT INTO `order_copy1` VALUES (11, 6, '2024-04-05 19:58:45', 3, 21.00, 0);
INSERT INTO `order_copy1` VALUES (12, 6, '2024-04-05 19:58:45', 3, 21.00, 1);
INSERT INTO `order_copy1` VALUES (13, 6, '2024-04-05 19:58:45', 3, 21.00, 1);
INSERT INTO `order_copy1` VALUES (14, 8, '2024-04-05 06:25:14', 3, 123.00, 2);
INSERT INTO `order_copy1` VALUES (15, 8, '2024-04-06 06:25:14', 3, 123.00, 6);
INSERT INTO `order_copy1` VALUES (16, 8, '2024-04-03 06:25:14', 3, 123.00, 6);
INSERT INTO `order_copy1` VALUES (18, 8, '2024-04-01 06:25:14', 3, 123.00, 6);
INSERT INTO `order_copy1` VALUES (19, 6, '2024-04-05 07:24:48', 6, 21.00, 0);
INSERT INTO `order_copy1` VALUES (20, 7, '2024-04-05 07:25:41', 6, 11.00, 2);
INSERT INTO `order_copy1` VALUES (21, 10, '2024-04-05 07:26:08', 6, 1.50, 0);
INSERT INTO `order_copy1` VALUES (22, 8, '2024-04-05 07:28:03', 6, 123.00, 2);
INSERT INTO `order_copy1` VALUES (23, 16, '2024-04-05 07:28:32', 6, 2.50, 2);
INSERT INTO `order_copy1` VALUES (24, 9, '2024-04-05 08:27:57', 6, 6.00, 1);
INSERT INTO `order_copy1` VALUES (25, 13, '2024-04-05 08:29:46', 6, 9.50, 2);
INSERT INTO `order_copy1` VALUES (26, 26, '2024-04-05 12:12:53', 6, 123.00, 2);
INSERT INTO `order_copy1` VALUES (27, 26, '2024-04-05 12:15:21', 6, 123.00, 2);
INSERT INTO `order_copy1` VALUES (28, 26, '2024-04-05 12:15:31', 6, 123.00, 2);

-- ----------------------------
-- Table structure for output_table
-- ----------------------------
DROP TABLE IF EXISTS `output_table`;
CREATE TABLE `output_table`  (
  `o_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_id` int(11) NOT NULL,
  `o_num` int(11) NOT NULL,
  `o_date` date NOT NULL,
  `u_id` int(11) NOT NULL,
  `buyer` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`o_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '模拟器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of output_table
-- ----------------------------
INSERT INTO `output_table` VALUES (1, 6, 23, '2023-06-30', 3, '吉首大学');

-- ----------------------------
-- Table structure for provider_table
-- ----------------------------
DROP TABLE IF EXISTS `provider_table`;
CREATE TABLE `provider_table`  (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `p_tel` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `p_add` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`p_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '模拟器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of provider_table
-- ----------------------------
INSERT INTO `provider_table` VALUES (1, '花好月圆', '8233289', '湖南吉首');
INSERT INTO `provider_table` VALUES (2, '金玉良缘', '8377201', '湖南吉首');
INSERT INTO `provider_table` VALUES (3, '玫瑰花店', '8399207', '湖南吉首');
INSERT INTO `provider_table` VALUES (4, '维纳斯花店', '8633920', '湖南吉首');
INSERT INTO `provider_table` VALUES (5, '百灵鸟花店', '8533028', '湖南吉首');
INSERT INTO `provider_table` VALUES (6, '丘比特花店', '8633027', '湖南吉首');
INSERT INTO `provider_table` VALUES (7, '碧玉花店', '8633908', '湖南吉首');
INSERT INTO `provider_table` VALUES (8, '吉首大学花店', '86672862', '湖南吉首');

-- ----------------------------
-- Table structure for user_table
-- ----------------------------
DROP TABLE IF EXISTS `user_table`;
CREATE TABLE `user_table`  (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `u_tel` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `u_password` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `u_au` int(11) NOT NULL COMMENT '角色信息(0:买家, 1:卖家)',
  `u_url` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户图片',
  PRIMARY KEY (`u_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '模拟器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_table
-- ----------------------------
INSERT INTO `user_table` VALUES (1, '李家玺1', '13807310321', 'ljx111', 1, 'http://localhost:8080/2024/04/01/91ff3f37-9532-4e48-9c59-e4c898fbc8b8.png');
INSERT INTO `user_table` VALUES (2, '李祉颐', '123456', 'lzy222', 1, 'http://localhost:8080/2024/04/01/91ff3f37-9532-4e48-9c59-e4c898fbc8b8.png');
INSERT INTO `user_table` VALUES (3, '黄卓君1', '13765977852', 'hzj333', 1, 'http://localhost:8080/2024/04/05/415d5649-7c61-44dc-9bb8-506189879027.png');
INSERT INTO `user_table` VALUES (4, '朱媚', '17696538622', 'zm444', 0, 'http://localhost:8080/2024/04/01/91ff3f37-9532-4e48-9c59-e4c898fbc8b8.png');
INSERT INTO `user_table` VALUES (5, '毛泓丁', '19867552833', 'mhd555', 0, 'http://localhost:8080/2024/04/01/91ff3f37-9532-4e48-9c59-e4c898fbc8b8.png');
INSERT INTO `user_table` VALUES (6, '谢敏', '13877529755', 'xm666', 0, 'http://localhost:8080/2024/04/05/4da26d3d-f072-4abb-adcf-0ce902221cb4.png');
INSERT INTO `user_table` VALUES (7, '李家玺', '19510194510', 'ljx111', 0, 'http://localhost:8080/2024/04/01/91ff3f37-9532-4e48-9c59-e4c898fbc8b8.png');
INSERT INTO `user_table` VALUES (8, '123', '123', '123', 0, 'http://localhost:8080/2024/04/01/91ff3f37-9532-4e48-9c59-e4c898fbc8b8.png');
INSERT INTO `user_table` VALUES (9, 'xxxx', '123123', '123', 1, 'http://localhost:8080/2024/04/01/91ff3f37-9532-4e48-9c59-e4c898fbc8b8.png');
INSERT INTO `user_table` VALUES (10, '333', '333', '333', 1, 'http://localhost:8080/2024/04/05/43853e4f-8327-4a04-a089-51e94468ead9.jpg');
INSERT INTO `user_table` VALUES (11, '22', '22', '22', 1, 'http://localhost:8080/2024/04/05/e5ee7e2f-8314-4719-9488-80e91b73ff95.png');
INSERT INTO `user_table` VALUES (12, '66', '66', '66', 1, 'http://localhost:8080/2024/04/05/fb65c04a-d5b4-44b0-b3b3-a8385810d9fb.png');

SET FOREIGN_KEY_CHECKS = 1;
