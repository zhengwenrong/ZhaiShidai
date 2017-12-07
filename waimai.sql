/*
Navicat MySQL Data Transfer

Source Server         : db
Source Server Version : 50022
Source Host           : localhost:3306
Source Database       : waimai

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2017-05-09 18:03:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for addresss
-- ----------------------------
DROP TABLE IF EXISTS `addresss`;
CREATE TABLE `addresss` (
  `id` varchar(50) NOT NULL,
  `area` varchar(100) NOT NULL,
  `homeaddress` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `receiver` varchar(15) NOT NULL,
  `user_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `addresss_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of addresss
-- ----------------------------
INSERT INTO `addresss` VALUES ('43985e89-c6b3-4bcc-bfc8-9b58d3e17eef', '江门市蓬江区', '江门职业技术学院1栋710', '15018159367', '郑文荣', '3');
INSERT INTO `addresss` VALUES ('6abb69d7-0eb9-40aa-aabd-325d59624dbc', '阳江市阳东区', '三北小区c5区12号', '15018159367', '郑文荣', '2');
INSERT INTO `addresss` VALUES ('8a845019-dfbf-4e6d-843b-95e70af8b52f', '阳江市阳东区', '三北小区c5区12号', '15018159367', '郑文荣', '2');
INSERT INTO `addresss` VALUES ('afd0f98f-0d70-43a9-bd70-1214dd852370', '江门市蓬江区', '江门职业技术学院1栋710', '15018159367', '郑文荣', '4');

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL auto_increment,
  `account` varchar(40) default NULL,
  `password` varchar(40) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `account` (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `admins` VALUES ('3', 'wenrong', 'e10adc3949ba59abbe56e057f20f883e');

-- ----------------------------
-- Table structure for memus
-- ----------------------------
DROP TABLE IF EXISTS `memus`;
CREATE TABLE `memus` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) default NULL,
  `price` double default NULL,
  `category` varchar(50) default NULL,
  `imageurl` varchar(100) default NULL,
  `description` varchar(255) default NULL,
  `count` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of memus
-- ----------------------------
INSERT INTO `memus` VALUES ('04e51065-f7f2-481b-93e9-fee395f64aa9', '茶树菇无花果老鸭汤', '16', '丰富主食-老火靓汤', '/uploadimages/9/14/cfe3fbc8-fa7f-466c-9fee-01e1d5aea869.jpg', '茶树菇无花果老鸭汤，由于其滋润又降火，所以非常适合在秋冬季节，', '0');
INSERT INTO `memus` VALUES ('0b8d558d-fa78-4011-899d-9e016a634f74', '蛋黄饼干', '5', '西方饮食-饼干', '/uploadimages/4/6/5a3ebe7d-803c-4be9-8df1-e0d9f214ad6d.jpg', '蛋黄饼干用低筋面粉，鸡蛋黄做主料，加以食盐、白砂糖、香草精等辅料糅合烤制而成，奶香四溢。', '0');
INSERT INTO `memus` VALUES ('0df9b342-5a90-4740-a35a-3e242a864461', '极道冬菇粥', '3.5', '精美早餐-粥', '/uploadimages/10/13/061d8309-0999-4ef6-a58a-34315b9a8b5f.jpg', '混合谷类、蔬菜等健康食材，与香冬菇一同入锅，糙米粒充分吸收各式食材鲜味，美味满点。', '0');
INSERT INTO `memus` VALUES ('14fe0179-882c-4ae2-8180-991c5934cd50', '双莓小蛋糕', '3', '小吃夜宵-糕点', '/uploadimages/13/6/9adebe82-88f2-42b1-aaf4-8cb941603c91.jpg', '双莓小蛋糕可以说是适合聚会是吃的小吃了，双莓小蛋糕不但好吃，并且还有缓解压力的功效哦，', '0');
INSERT INTO `memus` VALUES ('1940dfed-cc1e-472a-b5eb-f4d3d43c0ed0', '轻乳酪蛋糕', '3', '精美早餐-包点', '/uploadimages/3/10/0f5a732d-4ddb-4af8-b71c-6e8d8b0d1af3.jpg', '乳酪蛋糕主要是由奶酪做成的，奶酪是由牛奶发酵，浓缩而制成的，还有奶酪还富有极高的蛋白质，维生素，对身体所需的营养有极大的帮助!', '1');
INSERT INTO `memus` VALUES ('1e7cef44-7133-45a4-9a2b-a8a14d85073d', '冰糖柠檬薄荷饮', '3', '丰富主食-饮品', '/uploadimages/12/1/243add88-e8b2-44f5-8125-6f294ba2a2ce.jpg', '姜汁红茶能不能减肥我不知道，不过我肯定柠檬和薄荷能减肥，因为2者都具有抑制食欲和调整消化肠胃的功效。加在一起泡茶，饭后来一杯，能消滞哦。如果肚子饿了也来一杯，抑制冬日猛烈的食欲！加上冰糖，就更滋润皮肤和喉咙了。', '1');
INSERT INTO `memus` VALUES ('1f6f368a-fe89-43c5-bf11-2bb95e921e09', '黄玫瑰花', '5', '日韩料理-甜点', '/uploadimages/3/11/0b3040f3-b56a-43e9-83b5-3cde4aa68e56.jpg', '冰糖可以用于肺燥、肺虚、风寒劳累所致的咳喘、小儿疟疾、噤口痢、口疮、风火牙痛。还可用于高级食品甜味剂，配制药品浸渍酒类和滋补佐药等。但是一旦食量过多就可能造成肥胖症，还有糖尿病患者尽量不要食用冰糖哦', '0');
INSERT INTO `memus` VALUES ('2882c666-de3a-4183-a0a0-7efdaeacd2c7', '夏日清爽牛油果橙汁', '5', '精美早餐-饮品', '/uploadimages/0/9/11250105-14c5-45d2-b89e-0a82b5b65cea.jpg', '口感灰常清爽，还带着微微的酸甜和浓浓的奶香哦！', '0');
INSERT INTO `memus` VALUES ('2c526575-0ea4-4409-b512-0af60ac4ffe9', '阿嬷口味散寿司', '8', '日韩料理-寿司', '/uploadimages/11/11/18908e6f-d94c-40e6-b41c-843c77cd1f28.jpg', '简易食材就完成。 热热吃、冷冷吃都可以！', '1');
INSERT INTO `memus` VALUES ('2ed299a7-c696-4cb6-9f1f-ca9d652d5db0', '自制乌冬面', '6', '精美早餐-米粉、米线', '/uploadimages/11/8/7a9fcbbd-182b-430f-9007-402dbc8ec84c.jpg', '乌冬面本身几乎不含脂肪、反式脂肪酸为零、并且含有很多高质量的碳水化合物。通过配合不同的佐料、汤料、调味料可以尝到各种不同的口味。', '0');
INSERT INTO `memus` VALUES ('2ef3c0eb-1cd3-4d1d-ae98-a4391b68a365', '凉拌红薯粉条', '6', '丰富主食-米粉、米线', '/uploadimages/3/8/592f94c5-0490-4b41-861d-870d021f2b4f.jpg', '红薯粉条之所以深受大家的欢迎和喜爱，就是因为其少了红薯的那股土味，而且又保留了红薯原有的营养物质。红薯粉的做法多种多样，无论哪种做法都能很好地呈现红薯粉的鲜嫩爽滑的口感，比如今天给大家推荐的这款凉拌红薯粉条，做法简单，非常值得大家一试。', '0');
INSERT INTO `memus` VALUES ('30388674-2e70-4aa2-87aa-c9f5257af38e', '三味美颜汁', '5', '丰富主食-饮品', '/uploadimages/7/4/6fee12ff-83c8-49e8-85a3-9b8bc902ba88.jpg', '藕含有大量的磷、钾及多种维生素;维生素食品，胡萝卜、苹果所含的果酸、胡萝卜素可使皮肤得以营养，使之光泽、细腻、柔嫩。以冷开水兑服;冬天用温水，可使皮肤变得娇嫩、润滑，还可防治雀斑、黑斑。', '1');
INSERT INTO `memus` VALUES ('35a38d48-7b5c-43f6-b4ae-e95d1a1186bd', '鲜虾方便面', '7.5', '精美早餐-米粉、米线', '/uploadimages/10/1/37afbe1b-16ee-421c-b4ac-66e5ecb6d5ee.jpg', '鸡蛋营养丰富，深受广大主妇喜爱，经常吃鸡蛋可以滋阴润燥，目赤咽痛，胎动不安，养血发胎；\r\n鸡蛋的药用价值，主热病烦闷，烫伤，皮炎，燥咳声哑，产后口渴，下痢，疟疾虚人赢弱；\r\n鸡蛋还有丰富铁元素，经常吃能美容养颜；\r\n', '0');
INSERT INTO `memus` VALUES ('3844d706-4791-4405-b0f3-949d1557085e', '奇异果蜂蜜汁', '4.5', '精美早餐-饮品', '/uploadimages/15/5/4436ddb6-bf25-4da1-ba20-b401657fd419.jpg', '\r\n超高量维他命C，不仅可以变美美，还有润喉护嗓及保肝窈窕功效喔！', '0');
INSERT INTO `memus` VALUES ('38c535f7-f621-4373-9e59-0415a094ddb2', '绿豆粥', '3.5', '精美早餐-粥', '/uploadimages/13/13/163bea05-5f8f-405d-8acb-cf7bc9f87e6c.jpg', '随着天气越来越热，人们开始注重起饮食来了。太过油腻的食物反而不会受到人们的欢迎。而具有清凉解暑功效的绿豆，在一年四季中，夏季最受欢迎。不管是绿豆粥，绿豆冰棒，还是绿豆汤，都将成为夏日餐桌上最好的消暑佳品。', '0');
INSERT INTO `memus` VALUES ('3c8384c5-30d6-46bb-bf33-daf7a0f6c0ce', '川贝枇杷叶炖鹌鹑', '15', '健康食疗-汤', '/uploadimages/1/0/3717bf4f-eef3-40bb-8c9e-d700c870cdc7.jpg', '用川贝枇杷煲水、煲汤是化痰止咳的良方。现在天冷干燥，容易感冒，而且咳嗽不断手尾长，煲点川贝枇杷喝就最合适不过了。虽然现在不是枇杷果上市的时节，但用枇杷叶（干、鲜都可）代替，一样有清肺胃热、降气化痰之效。', '0');
INSERT INTO `memus` VALUES ('3d723e57-995e-42c4-9f21-2538c6cdce31', '咖喱饭', '8.5', '丰富主食-主食', '/uploadimages/7/6/19f2dfd2-dfc0-4136-a9e8-3996f6a53688.jpg', '咖喱饭还具有很高的营养价值，具有很好的食疗作用，增进食欲，促进血液循环，改善便秘，有益于肠道健康；咖喱还具有协助伤口愈合、预防老年痴呆症的作用。', '1');
INSERT INTO `memus` VALUES ('42ba1149-1f8a-4e9c-8dbf-e6bb50749d6f', '川贝冰糖雪梨膏', '6', '小吃夜宵-糖水', '/uploadimages/8/10/39fa9ebb-b6a7-4ba1-8748-19674b491f17.jpg', '这款对于大人小孩来说都是温和的。尤其是小孩子，多吃美味不伤身。小孩子咳嗽不能盲目吃药，可以看舌苔，白的话是寒', '0');
INSERT INTO `memus` VALUES ('4372d43a-a535-45f8-a934-9704f7f5cbe8', '日式三文鱼生鱼片', '9', '日韩料理-生鱼片', '/uploadimages/3/10/460882e0-e305-4e14-b840-817b66d3ba66.jpg', '三文鱼净肉切成厚约３毫米的片，呈扇形叠摆在铺有紫苏叶的盘中；\r\n', '7');
INSERT INTO `memus` VALUES ('439f7d45-689e-4043-9314-7e73f3bef6ab', '香葱苏打饼', '8', '西方饮食-饼干', '/uploadimages/7/11/042de3ca-7652-4cba-950f-727feb9abef6.jpg', '香葱苏打，0糖，吃了不胖^^', '0');
INSERT INTO `memus` VALUES ('4758a415-011d-4e8a-bc13-b087df5ba6e2', '皮蛋瘦肉粥', '5', '精美早餐-粥', '/uploadimages/1/8/9bbc12ec-4bbb-4d7c-bcfd-37536e4c1dcf.jpg', '咸粥有咸粥的魅力。这种魅力，是在吃过咸粥以后慢慢的体会到的，或许在当时，并不以为然，可是，味道有着自己的记忆，会怀想那种舒服绵密的熨帖。', '0');
INSERT INTO `memus` VALUES ('496d177b-98cd-455d-9817-81e2fe784c8d', '苹果玫瑰花', '8', '日韩料理-甜点', '/uploadimages/4/5/08f57617-d5de-4a1c-a601-53ffb09c4f17.jpg', '黄油营养价值丰富，香甜美味，深受广大人喜爱；黄油富含脂肪，因此不能和高脂肪的食物一起吃，同食可能会引起消化不良。', '0');
INSERT INTO `memus` VALUES ('4a718c68-d93b-430d-9c2e-f2ea9a8d964f', '苹果玫瑰花', '5', '西方饮食-甜点', '/uploadimages/15/12/6a03daa9-25b7-4cc4-babb-8fd97130a4ad.jpg', '黄油营养价值丰富，香甜美味，深受广大人喜爱；黄油富含脂肪，因此不能和高脂肪的食物一起吃，同食可能会引起消化不良。', '0');
INSERT INTO `memus` VALUES ('4b2f6586-93f5-4bb5-a8d3-d4d36234f69c', '沙县拌面', '6', '丰富主食-米粉、米线', '/uploadimages/2/10/6a64a7cd-2a3c-43cb-8600-0ed59d026b4c.jpg', '沙县拌面香味浓，色泽鲜，口味咸甜，油而不腻，早餐的时候来一碗沙县拌面，再搭配一碗清汤，吃得满足哦。', '0');
INSERT INTO `memus` VALUES ('4b57d770-e415-4acb-8fe1-8452de6f1110', '木瓜酸汤米凉粉', '5', '丰富主食-米粉、米线', '/uploadimages/14/8/aa5e8d58-2cfe-4c0a-85d2-0c70bf141c3e.jpg', '夏天就是一个吃凉粉的日子，解暑有美味', '0');
INSERT INTO `memus` VALUES ('51ff69b1-6df0-4b3a-92b9-0def50aa0771', '奶油葡萄干吐司', '12', '西方饮食-蛋糕', '/uploadimages/10/7/c2306d54-0de6-40a8-87b2-51a251688804.jpg', '5℃冰种是让面团在低温环境下慢慢发酵的一种方法，它可以让酵母有充足的时间酝酿出好味道，经过低温发酵的面包香气与口感都会特别的好，用它做伴手礼是再合适不过了', '0');
INSERT INTO `memus` VALUES ('546bc46e-2004-4282-87d7-62a2fcb85c65', '木瓜酸汤米凉粉', '7.5', '精美早餐-米粉、米线', '/uploadimages/14/6/ec1cccd3-e82a-4a16-9b8c-2ab055c1a9eb.jpg', '夏天就是一个吃凉粉的日子，解暑有美味', '0');
INSERT INTO `memus` VALUES ('55ca2f04-286d-4766-af56-41e8dcb385f8', '南瓜瘦身蒟蒻锅', '8', '健康食疗-其他', '/uploadimages/0/5/355745f0-0c64-4e6c-9064-9afc93342a07.jpg', '要在短时间内极速瘦身，宜减少进食米饭面食，以热量低又饱肚的蒟蒻锅作为主食，有助保持饱腹感之余，亦可促进肠胃消化、排毒瘦身。', '1');
INSERT INTO `memus` VALUES ('5d760877-8b23-4d2c-9a85-11ca29272ffb', '川贝枇杷叶炖鹌鹑', '15', '日韩料理-汤', '/uploadimages/9/6/06b38925-f941-4427-82c6-cb90ec495e9c.jpg', '用川贝枇杷煲水、煲汤是化痰止咳的良方。现在天冷干燥，容易感冒，而且咳嗽不断手尾长，煲点川贝枇杷喝就最合适不过了。虽然现在不是枇杷果上市的时节，但用枇杷叶（干、鲜都可）代替，一样有清肺胃热、降气化痰之效。', '0');
INSERT INTO `memus` VALUES ('5f1c8098-cbab-48d9-8d1b-cd3ae99dd8d9', '轻乳酪蛋糕', '3', '小吃夜宵-包点', '/uploadimages/10/11/00612717-10c2-49e3-af66-7e889dcce591.jpg', '乳酪蛋糕主要是由奶酪做成的，奶酪是由牛奶发酵，浓缩而制成的，还有奶酪还富有极高的蛋白质，维生素，对身体所需的营养有极大的帮助!', '0');
INSERT INTO `memus` VALUES ('61af5c58-6e01-4a72-8500-1b8f7c1a61e8', '寿司', '8', '日韩料理-寿司', '/uploadimages/3/7/803ea17f-9971-4fbf-ac0f-89b772040471.jpg', '炎热的夏天.不喜欢在火炉前...来个简易的寿司吧!!', '0');
INSERT INTO `memus` VALUES ('61fcb947-72d0-4a8f-933f-8c3f677981bb', '川贝枇杷叶炖鹌鹑', '15', '日韩料理-汤', '/uploadimages/11/7/dd151831-dc38-4c86-8359-00ff3ee5ae2a.jpg', '用川贝枇杷煲水、煲汤是化痰止咳的良方。现在天冷干燥，容易感冒，而且咳嗽不断手尾长，煲点川贝枇杷喝就最合适不过了。虽然现在不是枇杷果上市的时节，但用枇杷叶（干、鲜都可）代替，一样有清肺胃热、降气化痰之效。', '0');
INSERT INTO `memus` VALUES ('64724678-82ea-463e-abf1-cb23794773dd', '凉拌红薯粉条', '6.5', '精美早餐-米粉、米线', '/uploadimages/13/14/497fd05e-1c7b-4821-9dfc-436672e855cb.jpg', '红薯粉条之所以深受大家的欢迎和喜爱，就是因为其少了红薯的那股土味，而且又保留了红薯原有的营养物质。红薯粉的做法多种多样，无论哪种做法都能很好地呈现红薯粉的鲜嫩爽滑的口感，比如今天给大家推荐的这款凉拌红薯粉条，做法简单，非常值得大家一试。', '0');
INSERT INTO `memus` VALUES ('673e888f-e64c-47cb-b0f1-41ab09061741', '润肤美白汤', '8', '健康食疗-汤', '/uploadimages/2/12/31d7bb75-6d51-4e58-80df-09ec9e3f9d76.jpg', '夏天快过去了，想要弥补毒辣的太阳所造成的伤害吗？快来品尝吧？', '0');
INSERT INTO `memus` VALUES ('67fa7689-5eca-4f7d-b3f6-df7a59c5f672', '当归春笋乌鸡汤', '12', '丰富主食-老火靓汤', '/uploadimages/4/10/57359003-e272-432d-b7f9-64249d021cc6.jpg', '乌鸡是我国的一种传统滋补食材，我国的中医认为，乌鸡具有一定的补血益气之功效，特别适合女性朋友来多多食用。', '0');
INSERT INTO `memus` VALUES ('6b8d9819-4c89-4163-94fd-b962c253f8fa', '山药粥', '4.5', '精美早餐-粥', '/uploadimages/3/4/a666aa8d-643b-4d41-be2c-68f8021e4250.jpg', '山药健脾养胃，滋补肺肾。早晚空腹食用最好，也可当作点心，四季皆宜。也可在这道粥膳中加入薏仁或数枚红枣。', '0');
INSERT INTO `memus` VALUES ('6ba0abd5-2f06-4fb3-a87a-e57c7fbe8250', '柠檬汁醃生鱼丁', '7.5', '日韩料理-生鱼片', '/uploadimages/5/1/4bf60d74-e16f-4b81-92aa-794327268f09.jpg', '生鱼 可以是开胃菜、沙拉、小点… 这道料理处理起来很快， 基本醃鱼的酱汁之外，可以做许多搭配变化！ 视现有食材、自已喜好、季节蔬果… 话别多说，赶快上菜^^', '0');
INSERT INTO `memus` VALUES ('785f77af-1146-4027-aa43-05b56f49030c', '辣味虾仁培根香肠披萨', '35', '西方饮食-披萨', '/uploadimages/5/5/9c89d764-790d-4973-b89c-a28d01878ff6.jpg', '辣味虾仁培根香肠披萨', '0');
INSERT INTO `memus` VALUES ('7e664b3e-54c7-4838-912b-3797c8366525', '养生明目茶', '5', '健康食疗-茶', '/uploadimages/10/3/106c4ae9-7bd2-41f6-b3c8-dff0c246502f.jpg', '菊花：含氨基酸等成分，有抗病毒、增强毛细血管抵抗力的作用，对于视力下降和头昏头痛有很好的效果，有清肝明目的作用。 枸杞：含有丰富的β胡萝卜素、维生素B1、维生素C、钙、铁，具有补肝、益肾、明目的作用。 决明子：有清热、明目、补脑髓、镇肝气、益筋骨的作用，若有便秘的人还可以在晚餐饭后饮用，对于治疗便秘很有效果。', '0');
INSERT INTO `memus` VALUES ('7f447598-a053-4180-be84-52a6c509d9fc', '自制乌冬面', '6.5', '丰富主食-米粉、米线', '/uploadimages/6/8/0c9a330a-5b0b-4fdf-a3bb-6f6c33b96e34.jpg', '乌冬面本身几乎不含脂肪、反式脂肪酸为零、并且含有很多高质量的碳水化合物。通过配合不同的佐料、汤料、调味料可以尝到各种不同的口味。', '0');
INSERT INTO `memus` VALUES ('7f6498e3-3351-4c50-b7ca-ad9f4e27b3db', '三文鱼', '6', '日韩料理-三文鱼', '/uploadimages/0/11/23889ef8-eddf-4b14-b1f5-3a9e159589d5.jpg', '夏季养生菜谱 柠汁配玫瑰风情三文鱼', '8');
INSERT INTO `memus` VALUES ('7fe1ef06-3edf-460e-a8cb-4baf1c5c06e1', '蜜奶感冒茶', '6', '健康食疗-茶', '/uploadimages/14/6/f193ecc6-0705-4aa2-ab89-0c9feaa90386.jpg', '牛奶有丰富的养分且能舒缓精神，而蜂蜜则可有消肿润喉的效用，对于感冒初期稍微的不适，喝点营养的蜜奶，可以加快恢復的脚步。', '0');
INSERT INTO `memus` VALUES ('81af11f0-bbaa-4ad6-af4b-b4613aafa8ca', '菠萝饭', '7.5', '丰富主食-主食', '/uploadimages/15/14/42e7f9e2-d537-4063-8f62-395cd9566b84.jpg', '气味芳香，酸甜可口，熟着吃更健康更营养，', '1');
INSERT INTO `memus` VALUES ('87ffe86c-cf90-42f7-8a21-c4a9f09cb0c4', '中空蔓越莓戚风蛋糕', '18', '西方饮食-蛋糕', '/uploadimages/3/4/52591ca9-4180-41d9-a40e-2493b626e15e.jpg', '中空蔓越莓戚风蛋糕', '0');
INSERT INTO `memus` VALUES ('8b84fb40-14b6-4c93-a533-766aaba4335c', '明太子鲑鱼寿司卷', '9', '日韩料理-寿司', '/uploadimages/5/2/214463e9-c490-4dc1-ad68-1b74cd520841.jpg', '明太子鲑鱼寿司卷', '0');
INSERT INTO `memus` VALUES ('8cadfd60-b106-4730-a564-c865312e6245', '炒方便面', '5', '丰富主食-米粉、米线', '/uploadimages/14/8/77924655-a010-4a5f-91ec-be4f7531c217.jpg', '该道美食还具备平肝降压和镇静安神等神奇功效。', '0');
INSERT INTO `memus` VALUES ('9325332b-3354-41ce-b5b6-bd33f2e1ead9', '八珍汤', '15', '丰富主食-老火靓汤', '/uploadimages/11/15/50ad90c9-fd26-4794-9d97-7c801fa1ba13.jpg', '这款汤味道鲜美，做法简单，最重要的是其营养丰富，滋补养身，特别适合女性朋友们在秋冬季节来多多服用哦。', '0');
INSERT INTO `memus` VALUES ('9892e19e-20e8-4ca1-8d16-cd82618c55f8', '炒方便面', '6', '精美早餐-米粉、米线', '/uploadimages/6/11/9bb1f5ea-ca8d-4662-bb5f-eb1e9fa6c470.jpg', '该道美食还具备平肝降压和镇静安神等神奇功效。', '0');
INSERT INTO `memus` VALUES ('9952b987-79b7-4070-ba7e-ab1fb475db6f', '烤翅', '3.5', '小吃夜宵-烧烤', '/uploadimages/6/12/5113e2ef-5da1-4202-bf19-4362098f3ad6.jpg', '鸡翅色泽金黄，味道鲜美\r\n,简简单单的调料和做法，如此美味、诱人', '0');
INSERT INTO `memus` VALUES ('9e361f15-7c9d-47a7-9cf6-0b8dc7ca061b', '益智核桃羹', '12', '健康食疗-汤', '/uploadimages/11/15/a9571cf9-d730-4e0f-956e-86042bbc425a.jpg', '核桃具有补肾益智之功，配以滋补肝肾的枸杞、葡萄干等，突出补益气血、强肾益智之功效，是恢复脑力的首选之品', '0');
INSERT INTO `memus` VALUES ('a393b3d3-bd54-4806-89bf-581599226e2a', '荸荠百合羹 ', '5', '小吃夜宵-糖水', '/uploadimages/11/8/4897a21e-60dc-4134-b18f-aa80a331de11.jpg', '各位吃货们又有口福拉。在这里要解释一下，虽然水果是新鲜吃比较好，不适当的加热会让梨的抗氧分子氧化，营养分子链也会断，但是这次的组合拳当然是深思熟虑的。', '0');
INSERT INTO `memus` VALUES ('a3a0ae40-66ca-409f-9ef4-1255c2bd50e6', '鸡肉盖饭', '9', '丰富主食-主食', '/uploadimages/0/10/d8399cda-14ad-46be-ab69-d00b426cd6b8.jpg', '汤汁融在米饭里，有味有料，营养丰富。', '0');
INSERT INTO `memus` VALUES ('a5d010d0-1cdd-4158-a6e4-594d586f0ebb', '泡菜五花肉披萨', '25', '西方饮食-披萨', '/uploadimages/12/10/a4fb2d8f-c313-4868-ad03-1be8b15aedca.jpg', '白糖是一种甜品也算是一种调料，但是要是食用过多的话，就会生虫牙，还会造成肥胖的，所以大家适量食用就好。', '0');
INSERT INTO `memus` VALUES ('a67720da-8bcb-4e91-9111-2751e6b7d973', '可可蛋糕', '12', '西方饮食-蛋糕', '/uploadimages/2/1/dadc58e3-0e07-41b7-9e0d-699e56e0bc77.jpg', '这个配方整体口感湿润柔软，带着巧克力香，有时间可以试一试，没时间更要试一试，从备料到放进烤箱不用10分钟就能搞定，唯一的难度就是不要搅拌过度，超级新手也可以完全胜任。', '0');
INSERT INTO `memus` VALUES ('a719ed53-eeda-4aaf-b6e5-fc6e4c2e3961', '烤栗子', '5', '小吃夜宵-烧烤', '/uploadimages/12/0/ff8eab36-34a1-4202-9701-a017f32ddc27.jpg', '栗子，不仅含有大量淀粉，而且含有蛋白质、脂肪、B族维生素等多种营养成分，有“干果之王”的美称。栗子可代粮，与枣、柿子并称为“铁杆庄稼”、“木本粮食”，是一种价廉物美、富有营养的滋补品及补养良药。', '0');
INSERT INTO `memus` VALUES ('a7aa64c6-00a5-4031-8fba-47b5df230932', '双莓小蛋糕', '5', '精美早餐-包点', '/uploadimages/5/9/95ec0f0d-0890-467d-a019-fd0f6b3d27a0.jpg', '双莓小蛋糕可以说是适合聚会是吃的小吃了，双莓小蛋糕不但好吃，并且还有缓解压力的功效哦，', '0');
INSERT INTO `memus` VALUES ('a9456f06-69dd-4e98-90bb-cb7effab018f', '大枣百汤', '5.5', '小吃夜宵-糖水', '/uploadimages/7/14/3fc859f1-3380-4866-99d0-bf52f9d3e37c.jpg', ' 汤水清澈，味甘。注意小火且不要煲得太久，否则大枣会变的酸酸的，用蜜枣也是可以的。具有补脾胃，益气血，安心神，调营卫，和药性的功效，在和止咳润肺的百合搭配在一起，变成暖暖身子的一款靓汤，快来试试吧。', '0');
INSERT INTO `memus` VALUES ('b2206343-64c2-412f-b689-6788e147dc4d', '彩虹冰饮', '4', '精美早餐-饮品', '/uploadimages/3/10/17e2d702-c3df-4cff-bc24-bc6bdeb43deb.jpg', '\r\n常饮能抗衰老，有益健康', '0');
INSERT INTO `memus` VALUES ('b2210d98-e076-443b-92a6-d546f1dbf6b9', '黄玫瑰花', '6', '西方饮食-甜点', '/uploadimages/8/4/75a84d44-748a-4a74-b079-8b0bd64f3582.jpg', '冰糖可以用于肺燥、肺虚、风寒劳累所致的咳喘、小儿疟疾、噤口痢、口疮、风火牙痛。还可用于高级食品甜味剂，配制药品浸渍酒类和滋补佐药等。但是一旦食量过多就可能造成肥胖症，还有糖尿病患者尽量不要食用冰糖哦', '0');
INSERT INTO `memus` VALUES ('b8ef1f02-25d0-40e4-b829-59a5ccbea491', '夏威夷披萨', '30', '西方饮食-披萨', '/uploadimages/4/7/6ebbae9a-e318-4295-bc99-aa2fb7fc5562.jpg', '夏威夷披萨最主要的特点就是加了饼皮里加了葡萄干，馅料里加了菠萝和火腿，味道香浓可口，老少适宜。', '0');
INSERT INTO `memus` VALUES ('b981364e-29d1-4ef4-9f4c-ab5cbb18fbbc', '茄子香肠盖饭', '7', '丰富主食-主食', '/uploadimages/4/7/7daf1daf-0f82-4122-b428-8cab3ffb8b96.jpg', '这套盖饭有汤有饭，食用方便，精心的搭配很适合小朋友的口味。', '0');
INSERT INTO `memus` VALUES ('c2f6244c-6cca-43f4-9ee3-249513b201b7', '黄油曲奇', '6', '西方饮食-饼干', '/uploadimages/6/3/c7bbfd4d-a96a-43f2-8a7d-a71595e0268b.jpg', '黄油曲奇烤好后，不要急于食用，令其彻底放凉后，吃起来口感才够酥脆。', '0');
INSERT INTO `memus` VALUES ('c3bc3d72-2b8f-4b22-bd6a-15a376ec0aee', '海苔梅香寿司', '12', '日韩料理-寿司', '/uploadimages/12/15/441b6508-6af4-4659-97d6-91cab15d1a4d.jpg', '不爱醋饭的我，改用冰梅肉与米饭一起蒸煮，让米饭多了梅子的香气，再运用煎的香酥的虱目鱼皮与海苔来做寿司饭，洒些风味盐，再摆上蒸过的冰梅肉，一点都不浪费喔~ 在凉凉的春日午后，泡杯热梅茶，享用着梅香鱼片寿司', '0');
INSERT INTO `memus` VALUES ('c8997e7a-f0df-4ba0-beb1-5b464d063992', '手工阿胶糕', '9', '健康食疗-其他', '/uploadimages/10/14/0bbbfd9b-49f0-42a3-a91a-df559bb95c0e.jpg', '阿胶糕具有补血养血、美容养颜、润肠通便、提高免疫力的综合保健功效，是老少皆宜的具有复合保健价值的补品。', '0');
INSERT INTO `memus` VALUES ('cd57ca70-0a85-4968-af28-0de9a8021844', '芝麻枸杞乌鸡汤', '12', '丰富主食-老火靓汤', '/uploadimages/12/3/38e5e4e5-767e-4679-afa7-5d372f2c41ae.jpg', '芝麻枸杞乌鸡汤是一款非常传统又地道的养生汤了，我国的传统医学认为芝麻有助于补血益气，养发美容，枸杞呢又是补肾之良品，再加上乌鸡一起来炖制，不仅使得其汤鲜味美，而且最重要的是这款汤有了养生保健之功效，', '0');
INSERT INTO `memus` VALUES ('ce2cfd6f-3e4d-4b9f-9e18-0c266a4cbd3e', '清补凉糖水', '4.5', '小吃夜宵-糖水', '/uploadimages/0/15/8382c3e4-3f16-4269-b13f-a7ed1a7c2e75.jpg', '所谓的“清补凉”是由薏米、茨实、沙参、玉竹等等祛湿材料慢火熬制而成\r\n煮好的清补凉具有清热、润肺、健脾去湿等种种功效\r\n因此是夏季经典的消暑饮品', '0');
INSERT INTO `memus` VALUES ('d2bc30c0-7153-4b30-b768-b962d647bb24', '皇家蓝调', '4', '丰富主食-饮品', '/uploadimages/12/2/ab49037a-277a-4db2-9d10-9ddd033daf94.jpg', '传说这款浓浓的咖啡中掺入了烈酒皇家咖啡，是不喜欢奶味却偏好白兰地的拿破仑的最爱；这款咖啡最大的特点是将浸透着白兰地的方糖点燃，淡蓝色的火焰燃起白兰地的醇交织着焦糖的香，混入咖啡后，苦涩中又带着丝丝的甜，在舌尖味蕾间演绎出一段人生百味', '0');
INSERT INTO `memus` VALUES ('d4031743-7890-48e2-a4b8-25596a0ad698', '奥尔良风味烤鸡腿', '5', '小吃夜宵-烧烤', '/uploadimages/15/15/d12e6ad8-7dab-4f4f-bbd7-ca60d4d9059a.jpg', '鸡腿解冻，撕去表面的筋膜，用刀背拍一拍，可使鸡肉更好的入味儿,将烤肉料、蚝油、料酒、生姜末和大蒜末放入鸡腿中,将腌制好的鸡腿放在锡箔纸上,烤好的鸡肉稍微放凉，拿出来切块即可', '0');
INSERT INTO `memus` VALUES ('d5216fc7-40e4-491b-942c-9cbe20a3c630', '玫瑰冻饮', '5.5', '丰富主食-饮品', '/uploadimages/2/15/e2843905-d70a-43b0-bb44-52ce4161721a.jpg', '玫瑰茄（又称洛神花）有清凉降火、生津止渴的功效，而玫瑰花则是美颜的佳品，所以用它们做成的冻则兼具去暑热美肌肤的双重功效，最适合爱美的女士了。', '0');
INSERT INTO `memus` VALUES ('db7dcdf3-2e8e-4942-b2f3-6f9f1b2b126b', '奶油酥饼', '6', '西方饮食-饼干', '/uploadimages/12/7/c4a57cd8-2824-4b29-a926-7d9f5afbd379.jpg', '美味好吃的奶油酥饼', '0');
INSERT INTO `memus` VALUES ('de1a8459-c7c9-45f1-95f5-f47e30575357', '黑鲔鱼生鱼片', '8', '日韩料理-生鱼片', '/uploadimages/8/13/52991967-bdf7-4c84-9022-e6d5d708d75c.jpg', '超懒人无敌料理', '0');
INSERT INTO `memus` VALUES ('dfbe15e0-9e32-4c10-b907-c7586ac50ecb', '虾滑小米粥', '5', '精美早餐-粥', '/uploadimages/13/5/a02fb518-3ecf-41fc-8edd-8075eb8bc8ad.jpg', '仅味道鲜美，营养价值很高，包含蛋白质、脂肪，还有维生素A、D各种氨基酸及磷、铁、钙等营养成分。', '0');
INSERT INTO `memus` VALUES ('e1376555-b97a-4fd1-ad9b-ce5ceafcc890', '松软水蒸蛋糕', '3', '小吃夜宵-糕点', '/uploadimages/2/15/6b027641-5721-472e-82c0-69ec1fb970cd.jpg', '水蒸蛋糕是一种松软甜香，非常容易消化的一种休闲小吃，非常适合老年人和小朋友们，', '0');
INSERT INTO `memus` VALUES ('e36db975-4ec7-4f39-a2f5-2ac323713c73', '水玉抹茶夹心蛋糕卷', '15', '西方饮食-蛋糕', '/uploadimages/2/12/fadf8e11-b603-4e20-98d8-1c0a6ef4c44c.jpg', '这款蛋糕卷，用了小20克的箬竹，好任性有木有。', '0');
INSERT INTO `memus` VALUES ('e37807ec-5f16-4429-b9b5-d8337616c0f1', '小米南瓜粥', '5.5', '精美早餐-粥', '/uploadimages/7/10/baa5b83b-8dbd-4a93-b99d-5cf73ec52b3e.jpg', '眼下正是南瓜成熟的季节，南瓜可以说是全世界都在流行的一款食材之一了吧。由于其香甜软糯的口感特别受到人们的欢迎。今天给大家推荐的这款粥的名字叫做小米南瓜粥，两者都是金黄色彩十足的食材，所以制成后的粥也是十分的好看，再加上枸杞的点缀，就使得其色泽更加丰富了，让人一看就食指大动。', '0');
INSERT INTO `memus` VALUES ('e8bb62c7-c468-4f98-a378-f9661a8cfb69', '鲜虾方便面', '6', '丰富主食-米粉、米线', '/uploadimages/8/8/0bc2cf57-d898-4acf-ab00-b152a63c3973.jpg', '鸡蛋营养丰富，深受广大主妇喜爱，经常吃鸡蛋可以滋阴润燥，目赤咽痛，胎动不安，养血发胎；\r\n鸡蛋的药用价值，主热病烦闷，烫伤，皮炎，燥咳声哑，产后口渴，下痢，疟疾虚人赢弱；\r\n鸡蛋还有丰富铁元素，经常吃能美容养颜；\r\n', '0');
INSERT INTO `memus` VALUES ('ea092118-203a-4162-a833-da015f963a22', '三文鱼刺身', '8', '日韩料理-三文鱼', '/uploadimages/14/4/45bf11c7-55cb-4420-b9d4-21cb3ef7c9a4.jpg', '挪威三文鱼营养最全面的吃法，莫过于是三文鱼刺身了。加上辣味的芥末和极品的生抽，再有着三文鱼爽滑的口感。那真是极品了。', '0');
INSERT INTO `memus` VALUES ('eef6583b-0c5b-4706-8dd5-0c533b7c4cae', '包子', '1.5', '精美早餐-包点', '/uploadimages/8/9/83638d13-3d58-4383-b554-3c1490cdd5b1.jpg', '这不但是一道可口的美食，也许你不知道的是这更是一道具备养心益肾、健脾厚肠和除热止渴功效的养生食谱。', '1');
INSERT INTO `memus` VALUES ('f0c8714a-a7e8-4fdb-a6bf-3b58fdea970c', '松软水蒸蛋糕', '4.5', '精美早餐-包点', '/uploadimages/10/15/0da89208-d8d8-4393-ae57-47020110d230.jpg', '水蒸蛋糕是一种松软甜香，非常容易消化的一种休闲小吃，非常适合老年人和小朋友们，', '0');
INSERT INTO `memus` VALUES ('f2bf9643-18cc-4efa-9bd8-d698fbeac425', '沙县拌面', '6.5', '精美早餐-米粉、米线', '/uploadimages/4/11/b54f0a75-be0e-4601-beda-da377ad3a8a2.jpg', '沙县拌面香味浓，色泽鲜，口味咸甜，油而不腻，早餐的时候来一碗沙县拌面，再搭配一碗清汤，吃得满足哦。', '0');
INSERT INTO `memus` VALUES ('f54ff8c1-96d8-4123-850e-af7ec97b042a', '夏日人气养生饮品-黑木耳露', '4.5', '精美早餐-饮品', '/uploadimages/13/5/02f81b62-bccb-4da3-acb3-3fdd74ea114b.jpg', '黑木耳的膳食纤维、多糖体和抗凝血物质三种成分，加上黑木耳的热量低，含有植物性胶质,也能用来控制体重，成为女性们爱美食品呦。', '0');
INSERT INTO `memus` VALUES ('f5f20f9a-6dfb-4810-bb6e-356be7413365', '轻乳酪蛋糕', '3', '小吃夜宵-糕点', '/uploadimages/2/5/413b9231-5fc3-4c15-a6c1-f5eb15bde1e4.jpg', '双莓小蛋糕可以说是适合聚会是吃的小吃了，双莓小蛋糕不但好吃，并且还有缓解压力的功效哦，', '0');
INSERT INTO `memus` VALUES ('f7215ebd-6745-46d4-ab3b-1502e8b58549', '包子', '1.55', '小吃夜宵-包点', '/uploadimages/15/10/2f424972-34bd-425c-bc8d-f2cd4a0675c3.jpg', '这不但是一道可口的美食，也许你不知道的是这更是一道具备养心益肾、健脾厚肠和除热止渴功效的养生食谱。', '0');
INSERT INTO `memus` VALUES ('f77dc8f8-6d08-4ecb-a167-79709da0bf68', '甜梦粥', '5', '健康食疗-其他', '/uploadimages/1/7/4304da1b-131f-4628-9c65-c393831c984c.jpg', '甜梦粥天天作早餐服用，适合心血不足，易惊、易心慌用以助眠及改善失眠问题。', '0');
INSERT INTO `memus` VALUES ('f7ee416b-cdef-4487-9686-9c6a83a2bb63', '杂菜排骨汤', '8', '丰富主食-老火靓汤', '/uploadimages/7/13/f41b0f92-9662-44b5-90ea-3ac3bc69ffc0.jpg', '炎炎夏日，喝清淡一点的汤对健康大有益处，排骨蔬菜汤含有丰富的膳食纤维以及多种微量元素，营养均衡，汤味鲜美。', '0');
INSERT INTO `memus` VALUES ('f86c9719-a7a7-4e67-855f-b6be59fb32de', '烤牛排', '20', '小吃夜宵-烧烤', '/uploadimages/0/3/68b06ed7-b29c-4e33-b6ff-bcb33b8e9de4.jpg', '牛排适宜于孩童生长发育和病后调养的人 也适于中气下隐、气短体虚、筋骨酸软、贫血久病及面黄目眩之人食用，但患有肝病、肾病的人要慎食。', '0');
INSERT INTO `memus` VALUES ('fbab7107-2dcf-44b7-a4c8-402062053bbc', '青苹果芦荟糖水', '5', '小吃夜宵-糖水', '/uploadimages/15/13/8a584d53-fe41-413e-a9b6-315e2305a8cc.jpg', '青苹果芦荟糖水：  (养颜养生,减肥瘦身，补中益气,生津健胃，清肝热的功效）', '0');

-- ----------------------------
-- Table structure for orderitems
-- ----------------------------
DROP TABLE IF EXISTS `orderitems`;
CREATE TABLE `orderitems` (
  `order_id` varchar(50) default NULL,
  `memu_id` varchar(50) default NULL,
  `buynum` int(11) default NULL,
  KEY `order_id` (`order_id`),
  KEY `memu_id` (`memu_id`),
  CONSTRAINT `orderitems_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `orderitems_ibfk_2` FOREIGN KEY (`memu_id`) REFERENCES `memus` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderitems
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` varchar(50) NOT NULL,
  `money` double default NULL,
  `ordertime` datetime default NULL,
  `receiverinfo` varchar(255) default NULL,
  `paystate` int(11) default NULL,
  `user_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `account` varchar(40) default NULL,
  `password` varchar(40) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `account` (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', '123');
INSERT INTO `users` VALUES ('2', 'zhangsan', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `users` VALUES ('3', 'alonso', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `users` VALUES ('4', 'zhengwenrong', 'e10adc3949ba59abbe56e057f20f883e');
