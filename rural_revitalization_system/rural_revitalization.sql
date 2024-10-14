/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80034
 Source Host           : localhost:3306
 Source Schema         : rural_revitalization

 Target Server Type    : MySQL
 Target Server Version : 80034
 File Encoding         : 65001

 Date: 14/10/2024 21:59:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for policy
-- ----------------------------
DROP TABLE IF EXISTS `policy`;
CREATE TABLE `policy`  (
  `policy_id` int NOT NULL AUTO_INCREMENT COMMENT '政策ID，主键，自动递增',
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '政策标题',
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '政策内容',
  `issued_by` int NOT NULL COMMENT '发布者ID，关联User表中的用户ID',
  `issued_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '政策发布时间',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '政策最后更新时间',
  `status` enum('active','archived') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT 'active' COMMENT '政策状态，active表示有效，archived表示归档',
  `is_featured` tinyint(1) NULL DEFAULT 0 COMMENT '标识该政策是否在首页走马灯展示',
  `image_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '政策相关的图片URL',
  PRIMARY KEY (`policy_id`) USING BTREE,
  INDEX `fk_issued_by`(`issued_by`) USING BTREE,
  CONSTRAINT `fk_issued_by` FOREIGN KEY (`issued_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '政策宣传表，用于存储政府发布的政策信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of policy
-- ----------------------------
INSERT INTO `policy` VALUES (1, '农业补贴政策', '为了推动农业现代化发展，政府决定启动新一轮的农业补贴政策。该政策旨在帮助小型农场和家庭农场提高生产能力，并采用现代化技术进行农作物种植和牲畜养殖。\r\n补贴范围涵盖了从农机购买、种子选购到肥料和饲料的购买支出，鼓励农民采用环保、可持续的种植方式。\r\n政府将建立专门的申报渠道，农民可通过线上平台提交申请材料，审核通过后即可领取补贴款项。此外，政策还特别针对贫困地区的农户给予更多的扶持力度，确保他们能够顺利转型。', 6, '2024-09-22 18:30:23', '2024-09-22 21:07:00', 'active', 1, 'https://picsum.photos/800/400?image=1050');
INSERT INTO `policy` VALUES (2, '农村基础设施建设政策', '随着乡村振兴战略的全面实施，农村基础设施建设被列为政府的重点工作之一。该政策计划在未来五年内，投入大量资金用于改造和升级农村的道路、水电、网络等基础设施。\r\n政策内容指出，政府将优先改造偏远山区和交通不便的地区，确保这些地区的农村居民能够享有便捷的出行和生活条件。同时，农村宽带网络的普及也被纳入该政策，计划在未来三年内实现所有农村地区的网络覆盖。\r\n政策强调，农村基础设施建设不仅仅是提升农村居民的生活质量，还旨在促进农村与城市之间的经济往来，推动乡村旅游业和电子商务的发展。', 7, '2024-09-22 18:30:23', '2024-09-22 21:07:06', 'active', 1, 'https://picsum.photos/800/400?image=1042');
INSERT INTO `policy` VALUES (3, '农业环保政策', '为应对日益严峻的环境问题，政府推出了新的农业环保政策。该政策的核心目标是减少农业生产中的化学污染物排放，倡导绿色生产方式，保护土壤和水源的生态环境。\r\n根据该政策，未来将对化肥、农药等化学物质的使用进行严格管控，农民必须遵守新的用量标准。同时，政府鼓励农民采用有机肥料、生态种植技术，并为参与绿色生产的农户提供一定的经济补助。\r\n此外，政策还规定，所有农业生产基地必须定期进行环保检查，未通过环保标准的农场将面临罚款或停产整改。该政策的实施，标志着政府在推动绿色农业发展和生态保护方面迈出了重要一步。', 7, '2024-09-22 18:30:23', '2024-09-22 18:30:23', 'active', 0, NULL);
INSERT INTO `policy` VALUES (4, '乡村振兴计划', '乡村振兴计划是政府为进一步推动农村地区经济、文化、生态全面发展的重要战略。根据计划内容，政府将通过政策引导、资金支持、技术培训等多种措施，帮助农村发展现代农业、乡村旅游、生态农业等新兴产业。\r\n该计划特别强调乡村文化的传承与创新，鼓励各地通过挖掘乡村特色文化和自然资源，打造具有地方特色的旅游品牌。与此同时，政府将进一步加强农村基础设施建设，为乡村发展提供良好的环境和条件。\r\n此外，乡村振兴计划还包括教育和医疗服务的均衡化，计划在未来五年内缩小城乡教育和医疗资源差距，提高农村居民的幸福感和生活质量。', 6, '2024-09-22 18:30:23', '2024-09-22 21:07:12', 'active', 1, 'https://picsum.photos/800/400?image=1039');
INSERT INTO `policy` VALUES (5, '新冠疫情防控政策', '针对农村地区的新冠疫情防控，政府发布了专项政策，确保在全球疫情形势下，农村地区的生产和生活能够得到有效保障。政策要求各级政府加强对农村地区的疫情监控，设置专门的疫情防控小组，对外来人员和返乡人员进行严格的登记和管理。\r\n同时，政策鼓励农村地区进行分散种植和分散养殖，减少人群聚集，降低疫情传播风险。政府还通过补贴政策支持农村电子商务的发展，确保农产品能够通过网络渠道顺利销售，避免线下交易的风险。\r\n在医疗保障方面，政策要求农村地区的医疗机构备足防疫物资，并对村民进行防疫知识的普及，确保每个村民都能有效应对疫情挑战。', 6, '2024-09-22 18:30:23', '2024-09-22 18:30:23', 'active', 0, NULL);
INSERT INTO `policy` VALUES (6, '农村医疗改革政策', '为了提高农村地区医疗服务的可及性和质量，政府推出了农村医疗改革政策。该政策的主要目标是提升乡村医疗设施水平，增加医疗资源的投入，并对基层医务人员进行更好的培训和激励。\r\n未来三年内，政府将计划在每个乡村地区建设标准化的乡镇医院，同时加强远程医疗服务，使偏远地区的村民能够通过网络获得城市大医院的专家会诊服务。\r\n通过这一政策，政府希望能够有效缓解农村地区的医疗资源短缺问题，减少病患因交通不便无法及时就医的现象。', 7, '2024-09-22 18:57:34', '2024-09-22 21:07:18', 'active', 1, 'https://picsum.photos/800/400?image=1037');
INSERT INTO `policy` VALUES (7, '农业机械化发展政策', '为推动农业现代化，政府发布了农业机械化发展政策，鼓励农民使用先进的农业机械进行大规模生产。政策内容包括对购买农业机械的农户进行补贴，最高可达购买金额的30%。\r\n此外，政府还将设立专项基金，用于农业机械的研发和推广，确保农民能够获得适应当地生产条件的现代化设备。\r\n通过该政策，政府希望提高农业生产效率，减少农民的劳动强度，并推动农业产业结构的转型升级。', 6, '2024-09-22 18:57:34', '2024-09-22 18:57:34', 'active', 0, NULL);
INSERT INTO `policy` VALUES (8, '农村教育资源均衡发展政策', '为缩小城乡教育差距，政府发布了农村教育资源均衡发展政策。该政策规定，在未来五年内，政府将加大对农村学校的资金投入，改善教学环境，提升师资力量。\r\n政府还将通过“支教计划”吸引城市教师到农村地区工作，并提供额外的经济补贴和晋升机会。同时，利用信息化手段，推动城乡学校资源共享，确保农村学生能够接触到最新的教育资源。\r\n通过这一政策，政府期望在未来十年内，实现农村与城市教育资源的基本均衡，提升农村地区的教育水平。', 6, '2024-09-22 18:57:34', '2024-09-22 18:57:34', 'active', 0, NULL);
INSERT INTO `policy` VALUES (9, '农村电商发展支持政策', '为推动农村电商发展，政府出台了农村电商发展支持政策。该政策旨在帮助农民通过电子商务平台销售农产品，拓展市场渠道。\r\n政府将设立专项资金，帮助农村地区建设物流网络和电商平台，提供培训课程，提升农民对互联网和电商操作的熟练度。\r\n同时，政策还鼓励大型电商企业与农村合作社合作，推动农产品品牌化和标准化，使更多农村产品能够走向全国市场。', 7, '2024-09-22 18:57:34', '2024-09-22 21:44:34', 'active', 1, 'https://picsum.photos/800/400?image=1027');
INSERT INTO `policy` VALUES (10, '农村住房改造政策', '为了改善农村居民的居住条件，政府发布了农村住房改造政策，计划在未来三年内对老旧房屋进行全面改造升级。\r\n该政策主要针对农村地区的危房和老旧房屋，政府将提供补贴，支持农民对房屋进行加固、翻修或重建。补贴标准根据房屋改造的规模和类型有所不同，最低补贴额度为房屋总改造费用的20%。\r\n通过这一政策，政府希望改善农村居民的居住环境，提升农村生活质量，打造宜居、现代化的乡村。', 6, '2024-09-22 18:57:34', '2024-09-22 18:57:34', 'active', 0, NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int NOT NULL AUTO_INCREMENT COMMENT '用户ID，主键，自动递增',
  `username` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名，唯一',
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户密码',
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户电子邮箱，唯一',
  `phone_number` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户联系电话',
  `role` enum('customer','merchant','government','admin') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户角色：customer=普通用户，merchant=商家，government=政府机关，admin=管理员',
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户地址信息，通常用于商家和普通用户',
  `company_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '公司或机构名称，用于商家和政府机关',
  `avatar_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户头像的URL地址',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '用户注册时间，自动生成',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户表，用于存储平台用户的基本信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '张三', 'password123', 'zhangsan@example.com', '13800138000', 'customer', '北京市', NULL, 'http://example.com/avatar1.jpg', '2024-09-22 17:53:56');
INSERT INTO `user` VALUES (2, '李四', 'password123', 'lisi@example.com', '13800138001', 'customer', '上海市', NULL, 'http://example.com/avatar2.jpg', '2024-09-22 17:53:56');
INSERT INTO `user` VALUES (3, '王五', 'password123', 'wangwu@example.com', '13800138002', 'merchant', '广州市', '王五农产品公司', 'http://example.com/avatar3.jpg', '2024-09-22 17:53:56');
INSERT INTO `user` VALUES (4, '赵六', 'password123', 'zhaoliu@example.com', '13800138003', 'merchant', '深圳市', '赵六农产品公司', 'http://example.com/avatar4.jpg', '2024-09-22 17:53:56');
INSERT INTO `user` VALUES (5, '孙七', 'password123', 'sunqi@example.com', '13800138004', 'customer', '杭州市', NULL, 'http://example.com/avatar5.jpg', '2024-09-22 17:53:56');
INSERT INTO `user` VALUES (6, '周八', 'password123', 'zhouba@example.com', '13800138005', 'government', '重庆市', '重庆市农业局', 'http://example.com/avatar6.jpg', '2024-09-22 17:53:56');
INSERT INTO `user` VALUES (7, '吴九', 'password123', 'wujin@example.com', '13800138006', 'government', '成都市', '成都市农业局', 'http://example.com/avatar7.jpg', '2024-09-22 17:53:56');
INSERT INTO `user` VALUES (8, '郑十', 'password123', 'zhengshi@example.com', '13800138007', 'merchant', '南京市', '郑十农产品公司', 'http://example.com/avatar8.jpg', '2024-09-22 17:53:56');
INSERT INTO `user` VALUES (9, '陈一', 'password123', 'chenyi@example.com', '13800138008', 'customer', '苏州市', NULL, 'http://example.com/avatar9.jpg', '2024-09-22 17:53:56');
INSERT INTO `user` VALUES (10, '黄胜', 'adminpassword', 'admin@example.com', '13800138009', 'admin', '北京市', NULL, 'http://example.com/avatar10.jpg', '2024-09-22 17:53:56');

SET FOREIGN_KEY_CHECKS = 1;
