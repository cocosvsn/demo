/*
Navicat MySQL Data Transfer

Source Server         : demo@172.23.17.163
Source Server Version : 50077
Source Host           : 172.23.17.163:3306
Source Database       : demo

Target Server Type    : MYSQL
Target Server Version : 50077
File Encoding         : 65001

Date: 2013-12-02 13:37:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL auto_increment COMMENT 'The id of the category',
  `ckey` varchar(45) default NULL COMMENT 'The key of the category',
  `cval` varchar(255) default NULL COMMENT 'The value of the category',
  `last_update` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT 'The last update time of the category',
  `remark` varchar(255) default NULL COMMENT 'The remark of the category',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='the categorys table';

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', 'Style', 'tile', '2013-11-28 22:39:42', null);
INSERT INTO `category` VALUES ('2', 'Style', 'wrap', '2013-11-28 22:39:51', null);
INSERT INTO `category` VALUES ('3', 'FileType', 'Content', '2013-11-28 22:40:08', null);
INSERT INTO `category` VALUES ('4', 'FileType', 'Poster', '2013-11-28 22:40:20', null);
INSERT INTO `category` VALUES ('5', 'FileType', 'Subtitle', '2013-11-28 22:40:28', null);

-- ----------------------------
-- Table structure for file
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file` (
  `id` int(11) NOT NULL auto_increment COMMENT 'The id of the file',
  `film_id` varchar(20) NOT NULL COMMENT 'The id of the film',
  `file_name` varchar(255) default NULL COMMENT 'The name of the file',
  `file_size` bigint(20) default NULL COMMENT 'The size of the file',
  `last_update` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT 'The last update time of the file',
  `remark` varchar(255) default NULL COMMENT 'The remark of the file',
  `category_film` int(11) default NULL COMMENT 'The file type of the film',
  PRIMARY KEY  (`id`,`film_id`),
  KEY `fk_file_category_film` (`category_film`),
  KEY `fk_film_file` (`film_id`),
  CONSTRAINT `fk_film_file` FOREIGN KEY (`film_id`) REFERENCES `film` (`id`),
  CONSTRAINT `fk_file_category_film` FOREIGN KEY (`category_film`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='the film file table';

-- ----------------------------
-- Records of file
-- ----------------------------
INSERT INTO `file` VALUES ('1', 'FM00000001', 'upload/FM00000001.mov', null, '2013-11-28 22:54:42', null, '3');
INSERT INTO `file` VALUES ('2', 'FM00000001', 'upload/FM00000001.jpg', null, '2013-11-28 22:55:12', null, '4');
INSERT INTO `file` VALUES ('3', 'FM00000002', 'upload/FM00000001.mov', null, '2013-11-28 22:55:26', null, '3');
INSERT INTO `file` VALUES ('4', 'FM00000002', 'upload/FM00000002.jpg', null, '2013-11-28 22:55:51', null, '4');
INSERT INTO `file` VALUES ('5', 'FM00000003', 'upload/FM00000003.mov', null, '2013-11-28 22:56:11', null, '3');
INSERT INTO `file` VALUES ('6', 'FM00000003', 'upload/FM00000003.jpg', null, '2013-11-28 22:56:26', null, '4');
INSERT INTO `file` VALUES ('7', 'FM00000004', 'upload/FM00000004.mov', null, '2013-11-28 22:56:52', null, '3');
INSERT INTO `file` VALUES ('8', 'FM00000004', 'upload/FM00000004.jpg', null, '2013-11-28 22:57:10', null, '4');
INSERT INTO `file` VALUES ('9', 'FM00000005', 'upload/FM00000005.mov', null, '2013-11-28 22:57:23', null, '3');
INSERT INTO `file` VALUES ('10', 'FM00000005', 'upload/FM00000005.jpg', null, '2013-11-28 22:57:33', null, '4');

-- ----------------------------
-- Table structure for film
-- ----------------------------
DROP TABLE IF EXISTS `film`;
CREATE TABLE `film` (
  `id` varchar(20) NOT NULL COMMENT 'The id of the film',
  `title` varchar(255) default NULL COMMENT 'The title of the film',
  `ratings` varchar(45) default NULL COMMENT 'The ratings of the film',
  `release_year` varchar(4) default NULL COMMENT 'The release year of the film',
  `language` varchar(255) default NULL COMMENT 'The language of the film',
  `genre` varchar(255) default NULL COMMENT 'The genre of the film',
  `actor` varchar(255) default NULL COMMENT 'The actor of the film',
  `director` varchar(255) default NULL COMMENT 'The director of the film',
  `country` varchar(45) default NULL COMMENT 'The country of the film',
  `length` smallint(6) default NULL COMMENT 'The length of the film (unit: min)',
  `last_update` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT 'The last update time of the film',
  `description` text COMMENT 'The description of the film',
  `remark` varchar(255) default NULL COMMENT 'The remark of the film',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='the film table';

-- ----------------------------
-- Records of film
-- ----------------------------
INSERT INTO `film` VALUES ('FM00000001', 'G.I. Joe: Retaliation', '5.9/10 from 66,019 users', '2013', 'English', null, null, null, '美国', '123', '2013-11-28 22:46:03', '眼镜蛇这群恐怖分子又一次又有了新的目标，在控制住了所有国家的元首之后，他们终于开始要向美国总统动手了', null);
INSERT INTO `film` VALUES ('FM00000002', 'Iron Man 3', '7.5/10 from 245,915 users', '2013', 'English', null, null, null, '美国', '134', '2013-11-28 22:46:15', '在《钢铁侠3》中，托尼·斯塔克将遭遇到一个能力似乎没有界限的强敌的挑战。这个人毁坏了斯塔克的生活，而斯塔克只有依靠着自己精良的高科技的装备才能去寻找究竟是谁才是幕后的元凶。在寻找的过程中，斯塔克非常依赖自己的钢铁服，每一次转折都在测试着他的勇气。当他最终找到强敌，并且准备展开反戈一击的时候，斯塔克顿时发现了自己一直以来都面对着一个巨大的问题：到底是战衣造就了一个男人，还是这个男人成就了一套衣服！他必须揭发恐怖袭击背后的危机，与终极狂徒决一死战。　　托尼·斯塔克（小罗伯特·唐尼', null);
INSERT INTO `film` VALUES ('FM00000003', '2 Guns', '6.9/10 from 30,816 users', '2013', 'English', null, null, null, '美国', '109', '2013-11-28 22:46:21', '     影片讲述的是美国缉毒局某探员和一位卧底海军军官之间的故事，在他们调查某个案件的时候发现自己都中了圈套……　　斯汀和鲍比是互不相识的两个特工，因为一次任务，这两个人偶遇了一起，并且有了一段让他们无法互相信任的过往。其实，鲍比是美国毒品管制所的特工，斯汀是海军所管辖的犯罪打击机构的特工。在一次抢劫案中，这两个特工莫名其妙的相遇了。　　其实，他们的相遇并不是偶然的，而是一次精心设计的圈套。这个圈套让两个特工都陷入了\"抢劫\"的案件中无法自拔，所涉及到的金额高达4000万美元。如此煞费苦心设计这个大圈套的幕后操手是CIA。而现在，斯汀和鲍比陷入到了CIA的追捕之中。为了证明自己的清白，他们只有把这笔巨款还到CIA，并找出幕后黑手。　　但是要做到这一切，还有一个最首要的附加条件--那就是保持活命。', null);
INSERT INTO `film` VALUES ('FM00000004', '致我们终将逝去的青春', '6.3/10 from 641 users', '2013', 'chinese', null, null, '赵微', '中国', '131', '2013-11-28 22:47:37', '18岁的郑微（杨子姗饰）满怀期冀地步入大学校园，开始她的追爱之旅。原来，郑微从小便与邻家的林静（韩庚饰）大哥哥青梅竹马，此次终于如愿考上林静所在学校的邻校，可以开诚布公地与之交往了。谁想迎接她的不是心上人的怀抱，而是命运的捉弄－－林静出国留学，杳无音信。郑微倍受打击，患难时刻却与室友阮莞（江疏影饰）、朱小北（刘雅瑟饰）、黎维娟（张瑶饰）及师哥老张（包贝尔饰）结下深厚友谊，在他们陪伴下慢慢走出心结。　　崭新的大学生活正式开启，在这个男多女少的理工院校，郑微和阮莞两大美女很受瞩目。富家公子许开阳（郑恺饰）便是郑微众多追求者中很有实力的一位，而阮莞用她特有的清冷守护着对于爱情的忠贞。一次偶然的误会使郑微与老张室友陈孝正（赵又廷饰）结为死敌，在一次次地反击中，郑微惊讶地发现自己爱上了这个表面冷酷、内心善良的高材生，于是疯狂地反击演变为死缠烂打地追求，而陈孝正也终于在强攻之下缴械投降，欢喜冤家终成甜蜜恋人。　　大学四年时光匆匆流逝，毕业在即的郑微憧憬着美好的未来，却再一次遭遇晴天霹雳：陈孝正迫于家庭压力选择出国留学，却迟迟不敢告诉郑微。感觉再次被欺骗的郑微痛苦地离开陈孝正，却遇到搂着新欢的许开阳，两下对比更觉世界的荒凉。但大家终于四散。　　多年以后的新世纪，郑微已蜕变为职场上的白领丽人，竟再次品尝命运的无常：带着悔意和爱意的林静和陈孝正同时回到她的生活里！郑微，这个昔日的玉面小飞龙，将怎样面对生活和青春赐予她的迷雾和抉择…', null);
INSERT INTO `film` VALUES ('FM00000005', 'Fast & Furious 6', '7.3/10 from 134,955 users', '2013', 'English', null, null, null, '美国', '130', '2013-11-28 22:47:50', '饰）率领，犯案手法残暴冷血，而且接连向军方物资下手。在追捕过程中，阿当更发现组织其中一个要员，竟是死去的女友莱蒂（米歇尔·罗德里格兹 Michelle Rodriguez 饰）！“死而复生”的莱蒂行事变得心狠手辣，更向阿当开枪，狠下毒手…', null);

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL auto_increment COMMENT 'The id of the menu',
  `parent` int(11) default NULL COMMENT 'The parent of the menu',
  `category_style` int(11) default NULL COMMENT 'The terminal display style of the menu',
  `name` varchar(45) default NULL COMMENT 'The name of the menu',
  `display_order` int(11) default NULL COMMENT 'The display sub menu order of the parent menu',
  `path` varchar(45) default NULL COMMENT 'The path of the menu',
  `has_child` tinyint(1) default NULL COMMENT 'Has child of the menu',
  `valid` tinyint(1) default NULL COMMENT 'Is valid of menu',
  `level` int(11) default NULL COMMENT 'The level of the menu',
  `icon` varchar(255) default NULL COMMENT 'The icon of the menu',
  `focus_icon` varchar(255) default NULL COMMENT 'The  focus icon of the menu',
  `last_update` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT 'The last update time of the menu',
  `remark` varchar(255) default NULL COMMENT 'The remark of the menu',
  PRIMARY KEY  (`id`),
  KEY `fk_menu_parent` (`parent`),
  KEY `fk_menu_style` (`category_style`),
  CONSTRAINT `fk_menu_style` FOREIGN KEY (`category_style`) REFERENCES `category` (`id`),
  CONSTRAINT `fk_menu_parent` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='terminal display menu';

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', null, '1', 'ROOT', '0', '/1', '1', '1', '1', 'img/1.png', 'img/1.png', '2013-11-28 22:41:05', null);
INSERT INTO `menu` VALUES ('2', '1', '2', 'Action', '1', '/1/2', '0', '1', '2', 'img/2.png', 'img/2.png', '2013-11-28 22:41:42', null);
INSERT INTO `menu` VALUES ('3', '1', '1', 'Adventure', '2', '/1/3', '0', '1', '2', 'img/3.png', 'img/3.png', '2013-11-28 22:42:10', null);
INSERT INTO `menu` VALUES ('4', '1', '1', 'Sci-Fi', '3', '/1/4', '0', '1', '2', 'img/4.png', 'img/4.png', '2013-11-28 22:43:35', null);
INSERT INTO `menu` VALUES ('5', '1', '1', 'Comedy', '4', '/1/5', '0', '1', '2', 'img/5.png', 'img/5.png', '2013-11-28 22:44:19', null);
INSERT INTO `menu` VALUES ('6', '1', '1', 'Animation', '5', '/1/6', '0', '1', '2', 'img/6.png', 'img/6.png', '2013-11-28 22:44:54', null);
INSERT INTO `menu` VALUES ('7', '1', '2', 'HD', '6', '/1/7', '1', '1', '2', 'img/7.png', 'img/7.png', '2013-12-02 11:14:26', null);
INSERT INTO `menu` VALUES ('8', '7', '2', 'Action', '1', '/1/7/8', '0', '1', '3', 'img/1.png', 'img/1.png', '2013-12-02 11:15:20', null);
INSERT INTO `menu` VALUES ('9', '7', '2', 'Sci-Fi', '2', '/1/7/9', '0', '1', '3', 'img/2.png', 'img/2.png', '2013-12-02 11:17:36', null);

-- ----------------------------
-- Table structure for menu_film
-- ----------------------------
DROP TABLE IF EXISTS `menu_film`;
CREATE TABLE `menu_film` (
  `menu_id` int(11) NOT NULL COMMENT 'The id of the menu',
  `film_id` varchar(20) NOT NULL COMMENT 'The id of the film',
  `display_order` int(11) default NULL COMMENT 'The display film order of the menu',
  `icon` varchar(255) default NULL COMMENT 'The icon of the menu film',
  `last_update` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT 'The last update time of the menu film',
  `remark` varchar(255) default NULL COMMENT 'The remark of the menu film',
  PRIMARY KEY  (`menu_id`,`film_id`),
  KEY `fk_fim_menu` (`film_id`),
  CONSTRAINT `fk_menu_film` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`),
  CONSTRAINT `fk_fim_menu` FOREIGN KEY (`film_id`) REFERENCES `film` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='the menu film table';

-- ----------------------------
-- Records of menu_film
-- ----------------------------
INSERT INTO `menu_film` VALUES ('2', 'FM00000001', '1', null, '2013-11-28 22:53:17', null);
INSERT INTO `menu_film` VALUES ('2', 'FM00000002', '2', null, '2013-11-28 22:53:25', null);
INSERT INTO `menu_film` VALUES ('2', 'FM00000003', '3', null, '2013-11-28 22:53:35', null);
INSERT INTO `menu_film` VALUES ('2', 'FM00000004', null, null, '2013-11-29 18:29:39', null);
INSERT INTO `menu_film` VALUES ('2', 'FM00000005', '4', null, '2013-11-28 22:53:49', null);
INSERT INTO `menu_film` VALUES ('3', 'FM00000001', null, null, '2013-11-29 12:58:14', null);
INSERT INTO `menu_film` VALUES ('3', 'FM00000002', '1', null, '2013-11-28 23:08:31', null);
INSERT INTO `menu_film` VALUES ('4', 'FM00000003', '1', null, '2013-11-28 23:08:54', null);
INSERT INTO `menu_film` VALUES ('5', 'FM00000003', null, null, '2013-11-29 18:36:06', null);
INSERT INTO `menu_film` VALUES ('5', 'FM00000005', '1', null, '2013-11-28 23:09:07', null);
INSERT INTO `menu_film` VALUES ('6', 'FM00000001', null, null, '2013-11-29 18:36:53', null);
INSERT INTO `menu_film` VALUES ('6', 'FM00000003', null, null, '2013-12-02 11:04:03', null);
INSERT INTO `menu_film` VALUES ('6', 'FM00000004', '1', null, '2013-11-28 23:08:17', null);
INSERT INTO `menu_film` VALUES ('8', 'FM00000001', null, null, '2013-12-02 11:16:14', null);
INSERT INTO `menu_film` VALUES ('8', 'FM00000002', null, null, '2013-12-02 11:16:14', null);
INSERT INTO `menu_film` VALUES ('8', 'FM00000003', null, null, '2013-12-02 11:16:14', null);
INSERT INTO `menu_film` VALUES ('8', 'FM00000004', null, null, '2013-12-02 11:16:14', null);
INSERT INTO `menu_film` VALUES ('8', 'FM00000005', null, null, '2013-12-02 11:16:15', null);
