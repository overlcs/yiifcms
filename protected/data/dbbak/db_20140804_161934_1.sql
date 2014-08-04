# your database backup
# version:5.5.37-log
# time:2014-08-04 16:19:34
# --------------------------------------------------------


DROP TABLE IF EXISTS `yiif_ad`;
CREATE TABLE `yiif_ad` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `position_id` int(10) unsigned NOT NULL COMMENT '广告位ID',
  `title` varchar(50) NOT NULL COMMENT '广告名称',
  `title_alias` char(40) NOT NULL DEFAULT '' COMMENT '标识',
  `link_url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `image_url` varchar(255) NOT NULL DEFAULT '' COMMENT '图片地址',
  `width` varchar(10) NOT NULL DEFAULT '' COMMENT '图片宽',
  `height` varchar(10) NOT NULL DEFAULT '' COMMENT '图片高',
  `intro` text COMMENT '广告描述',
  `click_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `attach_file` varchar(100) NOT NULL DEFAULT '' COMMENT '附件',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status_is` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='广告';

INSERT INTO `yiif_ad` VALUES('2','4','香港云服务器(尊云)','index_top_banner','http://www.zun.com/zthk.html','','1170','100','','0','uploads/images/201408/3d54c1075c2.jpg','1','Y','1407138989');
INSERT INTO `yiif_ad` VALUES('3','5','Tera(神域之战)','index_bottom_banner','http://tera.kunlun.com/index.html','','1170','220','','0','uploads/images/201408/5b470116af1.png','2','Y','1407140035');
INSERT INTO `yiif_ad` VALUES('4','3','阿里云0元拥抱云计算','index_mid_banner','http://free.aliyun.com/?tracelog=buy','','1170','40','','0','uploads/images/201408/369f04c0386.jpg','0','Y','1407137817');

DROP TABLE IF EXISTS `yiif_ad_position`;
CREATE TABLE `yiif_ad_position` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `position` varchar(100) NOT NULL DEFAULT '' COMMENT '广告位名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='广告位管理表 ';

INSERT INTO `yiif_ad_position` VALUES('1','首页banner幻灯片');
INSERT INTO `yiif_ad_position` VALUES('2','底部幻灯片');
INSERT INTO `yiif_ad_position` VALUES('3','首页中部banner');
INSERT INTO `yiif_ad_position` VALUES('4','首页头部banner');
INSERT INTO `yiif_ad_position` VALUES('5','首页底部banner');

DROP TABLE IF EXISTS `yiif_catalog`;
CREATE TABLE `yiif_catalog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '栏目类型',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类',
  `catalog_name` varchar(100) NOT NULL COMMENT '名称',
  `content` text COMMENT '详细介绍',
  `seo_title` varchar(100) NOT NULL DEFAULT '' COMMENT 'seo标题',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo关键字',
  `seo_description` text COMMENT 'seo描述',
  `attach_file` varchar(100) DEFAULT '' COMMENT '附件',
  `attach_thumb` varchar(100) DEFAULT '' COMMENT '缩略图',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `data_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '数据量',
  `status` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '是否显示',
  `redirect_url` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转地址',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(10) unsigned DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='全局分类';

INSERT INTO `yiif_catalog` VALUES('1','1','0','精品阅读','','','','','','','0','0','Y','','1379545020','1407122058');
INSERT INTO `yiif_catalog` VALUES('2','1','1','业界讯息','公司动态栏目介绍','','','','','','2','0','Y','','1379545199','1404109846');
INSERT INTO `yiif_catalog` VALUES('3','1','1','服务器与运维','行业新闻栏目介绍','','','','','','1','0','Y','','1379545248','1407122169');
INSERT INTO `yiif_catalog` VALUES('4','5','0','产品','产品栏目介绍','','','','','','0','0','N','','1379545330','1394517482');
INSERT INTO `yiif_catalog` VALUES('5','5','4','新品上市','新品上市栏目介绍','','','','','','1','0','N','','1379545388','1394517482');
INSERT INTO `yiif_catalog` VALUES('6','5','4','特价商品','特价商品栏目介绍','','','','','','0','0','N','','1379545435','1394517482');
INSERT INTO `yiif_catalog` VALUES('8','2','0','图集','','','','','','','0','0','Y','','0','1399616730');
INSERT INTO `yiif_catalog` VALUES('9','2','8','最新热图','最新热图','最新热图','最新热图','最新热图','','','0','0','Y','','0','1399616723');
INSERT INTO `yiif_catalog` VALUES('10','3','0','本站下载','','','','','','','0','0','Y','','1400489000','1407117706');
INSERT INTO `yiif_catalog` VALUES('11','3','10','CMS版本','网站软件','','','','','','0','0','Y','','1400489069','1407117714');
INSERT INTO `yiif_catalog` VALUES('12','4','0','视频专区','','','','','','','0','0','Y','','1400828336','1407120434');
INSERT INTO `yiif_catalog` VALUES('13','4','12','YII教程','','','','','','','0','0','Y','','1400828453','1407120377');
INSERT INTO `yiif_catalog` VALUES('14','2','8','网络美女','','','','','','','0','0','Y','','1404111907','1404111907');
INSERT INTO `yiif_catalog` VALUES('15','3','10','建站工具','','','','','','','0','0','Y','','1407115842','1407115842');
INSERT INTO `yiif_catalog` VALUES('16','4','12','最新电影','','','','','','','0','0','Y','','1407120456','1407120456');
INSERT INTO `yiif_catalog` VALUES('17','1','1','PHP','','','','','','','0','0','Y','','1407122137','1407122137');
INSERT INTO `yiif_catalog` VALUES('18','1','1','mysql','','','','','','','0','0','Y','','1407122149','1407122149');
INSERT INTO `yiif_catalog` VALUES('19','3','10','手册大全','','','php手册,mysql手册,jquery手册,yii权威指南','','','','0','0','Y','','1407122452','1407122504');
INSERT INTO `yiif_catalog` VALUES('20','1','1','Yii','','','','','','','0','0','Y','','1407136673','1407136682');

DROP TABLE IF EXISTS `yiif_comment`;
CREATE TABLE `yiif_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `topic_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '主题id',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `content` text NOT NULL COMMENT '评论内容',
  `status` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '状态',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '评论类型',
  `client_ip` varchar(15) NOT NULL DEFAULT '127' COMMENT '评论ip',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='评论表';

INSERT INTO `yiif_comment` VALUES('31','1','31','第三张亮了！<img src=\"/static/public/emoticons/images/13.gif\" alt=\"\" border=\"0\" />','Y','2','127.0.0.1','1402628120');
INSERT INTO `yiif_comment` VALUES('32','16','31','内容排版 不太好吧 <img src=\"/public/emoticons/images/1.gif\" alt=\"\" border=\"0\" /><br />','Y','1','127.0.0.1','1402882240');
INSERT INTO `yiif_comment` VALUES('33','16','31','再试一次','Y','1','127.0.0.1','1402889690');
INSERT INTO `yiif_comment` VALUES('34','4','31','旺旺还不错 <img src=\"/static/public/emoticons/images/65.gif\" alt=\"\" border=\"0\" /><br />','Y','3','127.0.0.1','1403055802');
INSERT INTO `yiif_comment` VALUES('35','23','31','这篇文章很不错','Y','1','127.0.0.1','1403515888');
INSERT INTO `yiif_comment` VALUES('36','23','31','asdf','Y','1','127.0.0.1','1403515940');
INSERT INTO `yiif_comment` VALUES('37','15','31','<pre class=\"prettyprint lang-js\">&lt;script&gt;&lt;/script&gt;</pre>
<pre class=\"prettyprint lang-js\">&lt;script&gt;
alert(\'bb\');
&lt;/script&gt;</pre>','Y','1','101.36.77.42','1404444825');

DROP TABLE IF EXISTS `yiif_goods`;
CREATE TABLE `yiif_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(100) DEFAULT NULL COMMENT '商品名称',
  `catalog_id` int(10) unsigned DEFAULT NULL COMMENT '栏目id',
  `price` decimal(10,2) unsigned DEFAULT NULL,
  `default_image` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `default_thumb` varchar(200) DEFAULT NULL COMMENT '商品缩略图',
  `image_list` varchar(255) DEFAULT NULL COMMENT '商品组图',
  `content` text COMMENT '商品内容',
  `views` int(10) unsigned DEFAULT '0' COMMENT '浏览次数',
  `sales` int(10) unsigned DEFAULT '0' COMMENT '销售次数',
  `create_time` int(10) unsigned DEFAULT NULL COMMENT '添加时间',
  `update_time` int(10) unsigned DEFAULT NULL COMMENT '更新时间',
  `status` enum('Y','N') DEFAULT 'Y' COMMENT '显示状态',
  `recom_id` int(10) DEFAULT '0' COMMENT '推荐位id',
  `sort_order` mediumint(10) unsigned DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='商品表';

INSERT INTO `yiif_goods` VALUES('1','小米手机','5','799.00','uploads/images/201405/3fdd860df5d.jpg','uploads/thumbs/201405/small_3fdd860df5d.jpg','a:1:{i:0;a:5:{s:6:\"fileId\";s:2:\"45\";s:4:\"file\";s:37:\"uploads/images/201405/6bf7dd586e7.jpg\";s:5:\"thumb\";N;s:4:\"desc\";N;s:3:\"url\";N;}}','','9','0','1401076650','1405307616','Y','0','0');

DROP TABLE IF EXISTS `yiif_image`;
CREATE TABLE `yiif_image` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '用户',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `title_second` varchar(255) NOT NULL DEFAULT '' COMMENT '副标题',
  `title_style` varchar(255) NOT NULL DEFAULT '' COMMENT '标题样式',
  `html_path` varchar(100) NOT NULL DEFAULT '' COMMENT 'html路径',
  `html_file` varchar(100) NOT NULL DEFAULT '' COMMENT 'html文件名',
  `catalog_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '分类',
  `special_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '专题编号',
  `intro` text COMMENT '摘要',
  `image_list` text COMMENT '组图',
  `seo_title` varchar(255) NOT NULL DEFAULT '' COMMENT 'SEO标题',
  `seo_description` text COMMENT 'SEO描述',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '' COMMENT 'SEO关键字',
  `content` mediumtext NOT NULL COMMENT '内容',
  `copy_from` varchar(100) NOT NULL DEFAULT '' COMMENT '来源',
  `copy_url` varchar(255) NOT NULL DEFAULT '' COMMENT '来源url',
  `redirect_url` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转URL',
  `tags` varchar(255) NOT NULL DEFAULT '' COMMENT 'tags',
  `view_count` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '查看次数',
  `commend` enum('Y','N') NOT NULL DEFAULT 'N' COMMENT '推荐',
  `attach_status` enum('Y','N') NOT NULL DEFAULT 'N' COMMENT '是否上传附件',
  `attach_file` varchar(255) NOT NULL DEFAULT '' COMMENT '附件名称',
  `attach_thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '附件缩略图',
  `favorite_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏数量',
  `attention_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '关注次数',
  `top_line` enum('Y','N') NOT NULL DEFAULT 'N' COMMENT '头条',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后更新时间',
  `reply_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '回复次数',
  `reply_allow` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '允许评论',
  `sort_desc` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '是否显示',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='内容管理';

INSERT INTO `yiif_image` VALUES('2','1','图览2014巴西世界杯','图览2014巴西世界杯','','','','9','0','世界杯来啦，为了帮助大家更轻松更愉悦地观看世界杯，小编制作了《图览世界杯》，大家可及时围观赛况和花边消息，方便彼此切磋，迎来人生比翼齐飞的新高度，更有机会参与【百度图片竞猜世界杯】的活动哦！我们的奖品已经到位，猜对比分，并@百度图片@两位好友，就有机会赢取【高端手表】哦亲~动动手指，为世界杯加油！更多消息请密切关注【@百度图片】新浪微博官方账号吧。','a:3:{i:0;a:5:{s:6:\"fileId\";s:2:\"77\";s:4:\"file\";s:37:\"uploads/images/201407/2d8af2a52c9.jpg\";s:5:\"thumb\";s:43:\"uploads/thumbs/201407/small_2d8af2a52c9.jpg\";s:4:\"desc\";s:0:\"\";s:3:\"url\";s:0:\"\";}i:1;a:5:{s:6:\"fileId\";s:2:\"78\";s:4:\"file\";s:37:\"uploads/images/201407/830c15efce6.jpg\";s:5:\"thumb\";s:43:\"uploads/thumbs/201407/small_830c15efce6.jpg\";s:4:\"desc\";s:0:\"\";s:3:\"url\";s:0:\"\";}i:2;a:5:{s:6:\"fileId\";s:2:\"79\";s:4:\"file\";s:37:\"uploads/images/201407/8068f3a90b7.jpg\";s:5:\"thumb\";s:43:\"uploads/thumbs/201407/small_8068f3a90b7.jpg\";s:4:\"desc\";s:0:\"\";s:3:\"url\";s:0:\"\";}}','','','','<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\">世界杯来啦，为了帮助大家更轻松更愉悦地观看世界杯，小编制作了《图览世界杯》，大家可及时围观赛况和花边消息，方便彼此切磋，迎来人生比翼齐飞的新高度，更有机会参与【百度图片竞猜世界杯】的活动哦！我们的奖品已经到位，猜对比分，并@百度图片@两位好友，就有机会赢取【高端手表】哦亲~动动手指，为世界杯加油！更多消息请密切关注【@<a target=\"_blank\" href=\"http://www.baidu.com\">百度</a>图片】新浪微博官方账号吧。</span> 
</p>','百度图片','http://image.baidu.com/infopage/tpl?id=8&mode=viewer','','巴西,世界杯,美女','33','N','N','uploads/images/201406/1f6228399a3.jpg','uploads/thumbs/201406/small_1f6228399a3.jpg','0','0','N','1407119085','0','Y','0','Y','1404111213');
INSERT INTO `yiif_image` VALUES('3','1','小清新','','','','','14','0','','','','','','小清新','','','','美女','3','N','N','uploads/images/201406/2980725e720.jpg','uploads/thumbs/201406/small_2980725e720.jpg','0','0','N','1404111946','0','Y','0','Y','1404111946');
INSERT INTO `yiif_image` VALUES('4','1','游戏唯美','','','','','14','0','','a:1:{i:0;a:5:{s:6:\"fileId\";s:2:\"93\";s:4:\"file\";s:37:\"uploads/images/201407/2c48ccb19e2.jpg\";s:5:\"thumb\";s:43:\"uploads/thumbs/201407/small_2c48ccb19e2.jpg\";s:4:\"desc\";s:0:\"\";s:3:\"url\";s:0:\"\";}}','','','','游戏唯美','','','','美女','2','N','N','uploads/images/201406/8b571b7725d.jpg','uploads/thumbs/201406/small_8b571b7725d.jpg','0','0','N','1404304930','0','Y','0','Y','1404112171');
INSERT INTO `yiif_image` VALUES('5','1','游戏唯美','','','','','14','0','','a:3:{i:0;a:5:{s:6:\"fileId\";s:2:\"89\";s:4:\"file\";s:37:\"uploads/images/201407/2e13e0a3ed9.jpg\";s:5:\"thumb\";s:43:\"uploads/thumbs/201407/small_2e13e0a3ed9.jpg\";s:4:\"desc\";s:0:\"\";s:3:\"url\";s:0:\"\";}i:1;a:5:{s:6:\"fileId\";s:2:\"90\";s:4:\"file\";s:37:\"uploads/images/201407/2a2d8e16cb0.jpg\";s:5:\"thumb\";s:43:\"uploads/thumbs/201407/small_2a2d8e16cb0.jpg\";s:4:\"desc\";s:0:\"\";s:3:\"url\";s:0:\"\";}i:2;a:5:{s:6:\"fileId\";s:2:\"91\";s:4:\"file\";s:37:\"uploads/images/201407/825a8ac9d80.jpg\";s:5:\"thumb\";s:43:\"uploads/thumbs/201407/small_825a8ac9d80.jpg\";s:4:\"desc\";s:0:\"\";s:3:\"url\";s:0:\"\";}}','','','','游戏唯美','','','','美女','8','N','N','uploads/images/201406/d7d79134e6d.jpg','uploads/thumbs/201406/small_d7d79134e6d.jpg','0','0','N','1404184873','0','Y','0','Y','1404114260');
INSERT INTO `yiif_image` VALUES('6','1','明星海景','','','','','14','0','','a:1:{i:0;a:5:{s:6:\"fileId\";s:2:\"88\";s:4:\"file\";s:37:\"uploads/images/201407/b0d4552362e.jpg\";s:5:\"thumb\";s:43:\"uploads/thumbs/201407/small_b0d4552362e.jpg\";s:4:\"desc\";s:0:\"\";s:3:\"url\";s:0:\"\";}}','','','','明星海景','','','','美女','2','N','N','uploads/images/201406/fe41fcc37ac.jpg','uploads/thumbs/201406/small_fe41fcc37ac.jpg','0','0','N','1404184847','0','Y','0','Y','1404114318');
INSERT INTO `yiif_image` VALUES('7','1','靓丽女孩','','','','','14','0','','a:2:{i:0;a:5:{s:6:\"fileId\";s:2:\"86\";s:4:\"file\";s:37:\"uploads/images/201407/4efea9bddd1.jpg\";s:5:\"thumb\";s:43:\"uploads/thumbs/201407/small_4efea9bddd1.jpg\";s:4:\"desc\";s:0:\"\";s:3:\"url\";s:0:\"\";}i:1;a:5:{s:6:\"fileId\";s:2:\"87\";s:4:\"file\";s:37:\"uploads/images/201407/9706bae28d1.jpg\";s:5:\"thumb\";s:43:\"uploads/thumbs/201407/small_9706bae28d1.jpg\";s:4:\"desc\";s:0:\"\";s:3:\"url\";s:0:\"\";}}','','','','靓丽女孩','','','','美女','4','N','N','uploads/images/201406/15b9aedad1b.jpg','uploads/thumbs/201406/small_15b9aedad1b.jpg','0','0','N','1404184809','0','Y','0','Y','1404114395');
INSERT INTO `yiif_image` VALUES('8','1','漂亮女神','','','','','14','0','','a:3:{i:0;a:5:{s:6:\"fileId\";s:2:\"83\";s:4:\"file\";s:37:\"uploads/images/201407/cef6cf4f134.jpg\";s:5:\"thumb\";s:43:\"uploads/thumbs/201407/small_cef6cf4f134.jpg\";s:4:\"desc\";s:0:\"\";s:3:\"url\";s:0:\"\";}i:1;a:5:{s:6:\"fileId\";s:2:\"84\";s:4:\"file\";s:37:\"uploads/images/201407/8a0a9d8cb7b.jpg\";s:5:\"thumb\";s:43:\"uploads/thumbs/201407/small_8a0a9d8cb7b.jpg\";s:4:\"desc\";s:0:\"\";s:3:\"url\";s:0:\"\";}i:2;a:5:{s:6:\"fileId\";s:2:\"85\";s:4:\"file\";s:37:\"uploads/images/201407/4464b4046d1.jpg\";s:5:\"thumb\";s:43:\"uploads/thumbs/201407/small_4464b4046d1.jpg\";s:4:\"desc\";s:0:\"\";s:3:\"url\";s:0:\"\";}}','','','','漂亮女神','','','','美女','2','N','N','uploads/images/201406/bb6aa6ad2c7.jpg','uploads/thumbs/201406/small_bb6aa6ad2c7.jpg','0','0','N','1404184778','0','Y','0','Y','1404114458');
INSERT INTO `yiif_image` VALUES('9','1','气质美女','','','','','8','0','','a:2:{i:0;a:5:{s:6:\"fileId\";s:2:\"81\";s:4:\"file\";s:37:\"uploads/images/201407/ed5693e7e2d.jpg\";s:5:\"thumb\";s:43:\"uploads/thumbs/201407/small_ed5693e7e2d.jpg\";s:4:\"desc\";s:0:\"\";s:3:\"url\";s:0:\"\";}i:1;a:5:{s:6:\"fileId\";s:2:\"82\";s:4:\"file\";s:37:\"uploads/images/201407/f60eb1cfb67.jpg\";s:5:\"thumb\";s:43:\"uploads/thumbs/201407/small_f60eb1cfb67.jpg\";s:4:\"desc\";s:0:\"\";s:3:\"url\";s:0:\"\";}}','','','','气质美女','','','','美女','10','N','N','uploads/images/201406/ba6b6e35743.jpg','uploads/thumbs/201406/small_ba6b6e35743.jpg','0','0','N','1404184756','0','Y','0','Y','1404114497');
INSERT INTO `yiif_image` VALUES('10','1','淑女形象','','','','','8','0','','a:1:{i:0;a:5:{s:6:\"fileId\";s:2:\"80\";s:4:\"file\";s:37:\"uploads/images/201407/4be229705ba.jpg\";s:5:\"thumb\";s:43:\"uploads/thumbs/201407/small_4be229705ba.jpg\";s:4:\"desc\";s:0:\"\";s:3:\"url\";s:0:\"\";}}','','','','淑女形象','','','','美女','8','N','N','uploads/images/201406/5348209384d.jpg','uploads/thumbs/201406/small_5348209384d.jpg','0','0','N','1404184732','0','Y','0','Y','1404114535');
INSERT INTO `yiif_image` VALUES('11','1','足球宝贝','','','','','14','0','','a:1:{i:0;a:5:{s:6:\"fileId\";s:2:\"92\";s:4:\"file\";s:37:\"uploads/images/201407/e62833cd62c.jpg\";s:5:\"thumb\";s:43:\"uploads/thumbs/201407/small_e62833cd62c.jpg\";s:4:\"desc\";s:0:\"\";s:3:\"url\";s:0:\"\";}}','','','','世界杯足球宝贝是个大美女','','','','美女,世界杯','4','N','N','uploads/images/201407/20d46ac94c7.jpg','uploads/thumbs/201407/small_20d46ac94c7.jpg','0','0','N','1405306203','0','Y','0','Y','1404287913');

DROP TABLE IF EXISTS `yiif_link`;
CREATE TABLE `yiif_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '名称',
  `link` varchar(100) DEFAULT NULL COMMENT '链接',
  `logo` varchar(255) DEFAULT NULL COMMENT 'LOGO图标',
  `sortorder` smallint(10) DEFAULT '255' COMMENT '排序',
  `status_is` enum('Y','N') DEFAULT 'Y' COMMENT '状态Y-显示N-隐藏',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='链接表';

INSERT INTO `yiif_link` VALUES('3','站长之家','http://www.chinaz.com','','2','Y');
INSERT INTO `yiif_link` VALUES('4','PHPChina','http://www.phpchina.com','','3','Y');
INSERT INTO `yiif_link` VALUES('5','Discuz动力社区','http://www.discuz.net','','4','Y');
INSERT INTO `yiif_link` VALUES('6','DNSPod','http://www.dnspod.cn','','255','Y');
INSERT INTO `yiif_link` VALUES('7','PHP100中文网','http://www.php100.com/','','255','Y');
INSERT INTO `yiif_link` VALUES('8','  WEB技术开发','http://www.itokit.com/','','255','Y');
INSERT INTO `yiif_link` VALUES('9','源码爱好者 ','http://www.codefans.net/','','255','Y');
INSERT INTO `yiif_link` VALUES('10','PHPCMS','http://bbs.phpcms.cn/','','255','Y');
INSERT INTO `yiif_link` VALUES('11',' PHPwind论坛','http://www.phpwind.net/','','255','Y');
INSERT INTO `yiif_link` VALUES('12','Drupal中国  ','http://drupalchina.cn/','','255','Y');
INSERT INTO `yiif_link` VALUES('13','德问编程','http://www.dewen.org/','','255','Y');
INSERT INTO `yiif_link` VALUES('14','stackoverflow','http://stackoverflow.com/','','255','Y');
INSERT INTO `yiif_link` VALUES('15','Linux课程学习','http://itercast.com/','','255','Y');
INSERT INTO `yiif_link` VALUES('16','ThinkPHP','http://www.thinkphp.cn/','','255','Y');
INSERT INTO `yiif_link` VALUES('17','CakePHP','http://cakephp.org/','','255','Y');
INSERT INTO `yiif_link` VALUES('18','站长之家','http://www.chinaz.com','uploads/images/201404/d7ab0fba105.png','255','Y');
INSERT INTO `yiif_link` VALUES('19','百度一下','http://www.baidu.com','uploads/images/201406/4b467a28eb4.gif','255','Y');
INSERT INTO `yiif_link` VALUES('20','谷歌搜索','http://www.google.com.hk','uploads/images/201406/feb4a98a27f.jpg','255','Y');
INSERT INTO `yiif_link` VALUES('21','天空软件','http://www.skycn.com/','uploads/images/201406/5321e9f13e8.png','255','Y');
INSERT INTO `yiif_link` VALUES('22','迅雷看看','http://www.kankan.com','uploads/images/201406/a34f66be52a.jpg','255','Y');
INSERT INTO `yiif_link` VALUES('23','懒人图库','http://www.lanrentuku.com','uploads/images/201406/94f3cb56750.png','255','Y');

DROP TABLE IF EXISTS `yiif_mail_log`;
CREATE TABLE `yiif_mail_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `accept` varchar(50) DEFAULT NULL COMMENT '收件人邮箱',
  `subject` varchar(100) DEFAULT NULL COMMENT '邮件标题',
  `message` text COMMENT '邮件内容',
  `sendtime` int(10) unsigned DEFAULT NULL COMMENT '发送时间',
  `status` enum('waiting','success','failed') DEFAULT 'waiting' COMMENT '当前邮件状态(待发送、发送成功、发送失败)',
  `level` enum('1','2','3') DEFAULT '3' COMMENT '邮件优先级(越小越优先)',
  `times` tinyint(2) unsigned DEFAULT '0' COMMENT '发送次数',
  `error` varchar(100) DEFAULT NULL COMMENT '错误信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='发送邮件日志';

INSERT INTO `yiif_mail_log` VALUES('7','326196998@qq.com','测试邮件标题','测试邮件内容','1405053583','failed','3','1','SMTP 错误：无法连接到 SMTP 主机。');
INSERT INTO `yiif_mail_log` VALUES('8','326196998@qq.com','测试邮件标题','测试邮件内容','1405053614','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('9','326196998@qq.com','测试邮件标题','测试邮件内容','1405057618','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('10','326196998@qq.com','测试邮件标题','测试邮件内容','1405057700','failed','3','1','发送地址错误：YiifCMS官方<p>SMTP server error: Invalid User
</p>
');
INSERT INTO `yiif_mail_log` VALUES('11','326196998@qq.com','测试邮件标题','测试邮件内容','1405057900','failed','3','1','发送地址错误：YiifCMS官方<p>SMTP server error: Invalid User
</p>
');
INSERT INTO `yiif_mail_log` VALUES('12','326196998@qq.com','测试邮件标题','测试邮件内容','1405057974','failed','3','1','发送地址错误：ROOT<p>SMTP server error: Invalid User
</p>
');
INSERT INTO `yiif_mail_log` VALUES('13','326196998@qq.com','测试邮件标题','测试邮件内容','1405058020','failed','3','1','发送地址错误：YiifCMS官方<xb_zjh@126.com><p>SMTP server error: Invalid User
</p>
');
INSERT INTO `yiif_mail_log` VALUES('14','326196998@qq.com','测试邮件标题','测试邮件内容','1405058040','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('15','326196998@qq.com','测试邮件标题','测试邮件内容','1405058061','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('16','326196998@qq.com','测试邮件标题','测试邮件内容','1405058408','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('17','326196998@qq.com','测试邮件标题','测试邮件内容','1405058655','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('18','xb_zjh@126.com','测试邮件标题','测试邮件内容','1405059546','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('19','xb_zjh@126.com','测试邮件标题','测试邮件内容','1405059586','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('20','xb_zjh@126.com','测试邮件标题','测试邮件内容','1405128267','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('21','admin','yii内容管理系统 重置密码','
			<p>尊敬的用户：admin 您好，您已经申请找回密码服务，请点击下面链接进行密码重置：<br/><br/>
			<a href=\"http://www.yii.local/?r=user/resetPwd&id=1&authcode=ODl0bivszkTuY\">http://www.yii.local/?r=user/resetPwd&id=1&authcode=ODl0bivszkTuY</a><br/><br/>(如果上面链接不能点击，请复制到浏览器地址栏中进行访问。)<br/><br/>
			==================<br/><br/>请确保是本人操作，如果有其他疑问，
			请联系本网站的管理员：<a href=\"mailto:\"></a>。</p>
	','1405478217','failed','3','1','必须提供至少一个收件人地址。');
INSERT INTO `yiif_mail_log` VALUES('22','xb_zjh@126.com','yii内容管理系统 重置密码','
			<p>尊敬的用户：admin 您好，您已经申请找回密码服务，请点击下面链接进行密码重置：<br/><br/>
			<a href=\"http://www.yii.local/?r=user/resetPwd&id=1&authcode=NTFyW%2FPRv9k3Q\">http://www.yii.local/?r=user/resetPwd&id=1&authcode=NTFyW%2FPRv9k3Q</a><br/><br/>(如果上面链接不能点击，请复制到浏览器地址栏中进行访问。)<br/><br/>
			==================<br/><br/>请确保是本人操作，如果有其他疑问，
			请联系本网站的管理员：<a href=\"mailto:\"></a>。</p>
	','1405478290','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('23','xb_zjh@126.com','重置密码','
			<p>尊敬的用户：admin 您好，您已经申请找回密码服务，请点击下面链接进行密码重置：<br/><br/>
			<a href=\"http://www.yii.local/?r=user/resetPwd&id=1&authcode=MTwa0QO0xDn6o\">http://www.yii.local/?r=user/resetPwd&id=1&authcode=MTwa0QO0xDn6o</a><br/><br/>(如果上面链接不能点击，请复制到浏览器地址栏中进行访问。)<br/><br/>
			==================<br/><br/>请确保是本人操作，如果有其他疑问，
			请联系本网站的管理员：<a href=\"mailto:\"></a>。</p>
	','1405480338','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('24','xb_zjh@126.com','重置密码','
			<p>尊敬的用户：admin 您好，您已经申请找回密码服务，请点击下面链接进行密码重置：<br/><br/>
			<a href=\"http://www.yii.local/?r=user/resetPwd&id=1&authcode=OTD0.f9bMDAL.\">http://www.yii.local/?r=user/resetPwd&id=1&authcode=OTD0.f9bMDAL.</a><br/><br/>(如果上面链接不能点击，请复制到浏览器地址栏中进行访问。)<br/><br/>
			==================<br/><br/>请确保是本人操作，如果有其他疑问，
			请联系本网站的管理员：<a href=\"mailto:\"></a>。</p>
	','1405481428','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('25','xb_zjh@126.com','重置密码','
			<p>尊敬的用户：admin 您好，您已经申请找回密码服务，请点击下面链接进行密码重置：<br/><br/>
			<a href=\"http://www.yii.local/?r=user/resetPwd&id=1&authcode=NzZEF%2Fof9kzBU\">http://www.yii.local/?r=user/resetPwd&id=1&authcode=NzZEF%2Fof9kzBU</a><br/><br/>(如果上面链接不能点击，请复制到浏览器地址栏中进行访问。)<br/><br/>
			==================<br/><br/>请确保是本人操作，如果有其他疑问，
			请联系本网站的管理员：<a href=\"mailto:\"></a>。</p>
	','1405481945','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('26','xb_zjh@126.com','重置密码','
			<p>尊敬的用户：admin 您好，您已经申请找回密码服务，请点击下面链接进行密码重置：<br/><br/>
			<a href=\"http://www.yii.local/?r=user/resetPwd&id=1&authcode=OTD0.f9bMDAL.\">http://www.yii.local/?r=user/resetPwd&id=1&authcode=OTD0.f9bMDAL.</a><br/><br/>(如果上面链接不能点击，请复制到浏览器地址栏中进行访问。)<br/><br/>
			==================<br/><br/>请确保是本人操作，如果有其他疑问，
			请联系本网站的管理员：<a href=\"mailto:xb_zjh@126.com\">xb_zjh@126.com</a>。</p>
	','1405495294','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('27','xb_zjh@126.com','测试邮件标题','测试邮件内容','1405495713','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('28','xb_zjh@126.com','测试邮件标题','测试邮件内容','1405495877','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('29','376685457@qq.com','账号激活','<p>尊敬的新用户：没那么简单 您好，欢迎注册YiifCMS官网，为了更好的为您服务，请尽快点击下面链接进行账号激活：<br/><br/>
						<a href=\"http://www.yii.local/?r=user/authEmail&id=2&authcode=MjQoTWN0lj0JE\">http://www.yii.local/?r=user/authEmail&id=2&authcode=MjQoTWN0lj0JE</a><br/><br/>(如果上面链接不能点击，请复制到浏览器地址栏中进行访问。)<br/><br/>
						==================<br/><br/>再次感谢您的光顾，如果有其他疑问，
						请联系本网站的管理员：<a href=\"mailto:xb_zjh@126.com\">xb_zjh@126.com</a>。</p>','1405503421','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('30','376685457@qq.com','账号激活','<p>尊敬的新用户：没那么简单 您好，欢迎注册YiifCMS官网，为了更好的为您服务，请尽快点击下面链接进行账号激活：<br/><br/>
						<a href=\"http://www.yii.local/?r=user/authEmail&id=2&authcode=NT3iantGg.og.\">http://www.yii.local/?r=user/authEmail&id=2&authcode=NT3iantGg.og.</a><br/><br/>(如果上面链接不能点击，请复制到浏览器地址栏中进行访问。)<br/><br/>
						==================<br/><br/>再次感谢您的光顾，如果有其他疑问，
						请联系本网站的管理员：<a href=\"mailto:xb_zjh@126.com\">xb_zjh@126.com</a>。</p>','1405503820','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('31','k_tatsuguchi@toyo-tos.com','测试邮件标题','测试邮件内容','1405565459','success','3','1','');

DROP TABLE IF EXISTS `yiif_menu`;
CREATE TABLE `yiif_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(30) DEFAULT NULL COMMENT '导航菜单',
  `menu_link` varchar(50) DEFAULT NULL COMMENT '导航链接',
  `unique` varchar(20) DEFAULT NULL COMMENT '唯一标示',
  `status_is` enum('Y','N') DEFAULT 'Y' COMMENT '是否显示',
  `parent_id` int(10) unsigned DEFAULT '0' COMMENT '上级菜单',
  `sort_order` int(10) unsigned DEFAULT '0' COMMENT '排序',
  `target` enum('Y','N') DEFAULT 'N' COMMENT '新窗口打开',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='导航菜单表';

INSERT INTO `yiif_menu` VALUES('1','首页','index.php','index','Y','0','0','N');
INSERT INTO `yiif_menu` VALUES('2','精品阅读','?r=post/index','post','Y','0','0','N');
INSERT INTO `yiif_menu` VALUES('3','精品图集','?r=image/index','image','Y','0','0','N');
INSERT INTO `yiif_menu` VALUES('4','下载','?r=soft/index','soft','Y','0','0','N');
INSERT INTO `yiif_menu` VALUES('5','教程TV','?r=video/index','video','Y','0','0','N');
INSERT INTO `yiif_menu` VALUES('6','关于我','?r=page&id=about','about','Y','0','0','N');
INSERT INTO `yiif_menu` VALUES('7','反馈','?r=question/index','question','Y','0','0','N');

DROP TABLE IF EXISTS `yiif_model_type`;
CREATE TABLE `yiif_model_type` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT '模型id',
  `type_key` varchar(20) NOT NULL COMMENT '类型标示(英文字母)',
  `type_name` varchar(50) NOT NULL COMMENT '模型名称',
  `model` varchar(50) NOT NULL DEFAULT '' COMMENT '内容模型',
  `status` enum('Y','N') DEFAULT 'Y',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='内容模型表';

INSERT INTO `yiif_model_type` VALUES('1','post','文章','Post','Y');
INSERT INTO `yiif_model_type` VALUES('2','image','图集','Image','Y');
INSERT INTO `yiif_model_type` VALUES('3','soft','软件','Soft','Y');
INSERT INTO `yiif_model_type` VALUES('4','video','视频','Video','Y');
INSERT INTO `yiif_model_type` VALUES('5','goods','商品','Goods','Y');

DROP TABLE IF EXISTS `yiif_oauth`;
CREATE TABLE `yiif_oauth` (
  `id` varchar(30) NOT NULL DEFAULT '',
  `apiname` varchar(50) DEFAULT NULL COMMENT 'api名称',
  `apikey` varchar(100) DEFAULT NULL COMMENT '接口key',
  `status` enum('Y','N') DEFAULT 'Y' COMMENT '是否启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='第三方登录授权表';

INSERT INTO `yiif_oauth` VALUES('qq','QQ','2821796254','Y');
INSERT INTO `yiif_oauth` VALUES('sinawb','新浪微博','2821796254','Y');
INSERT INTO `yiif_oauth` VALUES('weixin','微信','2821796254','Y');
INSERT INTO `yiif_oauth` VALUES('renren','人人网','2821796254','Y');

DROP TABLE IF EXISTS `yiif_oauth_qq`;
CREATE TABLE `yiif_oauth_qq` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned DEFAULT NULL COMMENT '本地用户ID',
  `qq_uid` int(10) unsigned DEFAULT NULL COMMENT 'qq用户uid',
  `qq_token` varchar(100) DEFAULT NULL COMMENT 'qq令牌',
  `qq_info` text COMMENT 'qq用户信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='qq绑定表';


DROP TABLE IF EXISTS `yiif_oauth_renren`;
CREATE TABLE `yiif_oauth_renren` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned DEFAULT NULL COMMENT '本地用户ID',
  `renren_uid` int(10) unsigned DEFAULT NULL COMMENT '人人网用户uid',
  `renren_token` varchar(100) DEFAULT NULL COMMENT '人人网令牌',
  `renren_info` text COMMENT '人人网用户信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='人人网绑定表';


DROP TABLE IF EXISTS `yiif_oauth_sinawb`;
CREATE TABLE `yiif_oauth_sinawb` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned DEFAULT NULL COMMENT '本地用户ID',
  `sinawb_uid` int(10) unsigned DEFAULT NULL COMMENT '新浪微博用户uid',
  `sinawb_token` varchar(100) DEFAULT NULL COMMENT '新浪微博令牌',
  `sinawb_info` text COMMENT '新浪微博用户信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='新浪微博绑定表';


DROP TABLE IF EXISTS `yiif_oauth_weixin`;
CREATE TABLE `yiif_oauth_weixin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned DEFAULT NULL COMMENT '本地用户ID',
  `weixin_uid` int(10) unsigned DEFAULT NULL COMMENT '微信用户uid',
  `weixin_token` varchar(100) DEFAULT NULL COMMENT '微信令牌',
  `weixin_info` text COMMENT '微信用户信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信绑定表';


DROP TABLE IF EXISTS `yiif_page`;
CREATE TABLE `yiif_page` (
  `id` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL COMMENT '标题',
  `intro` text COMMENT '简单描述',
  `content` mediumtext NOT NULL COMMENT '内容',
  `seo_title` varchar(255) NOT NULL DEFAULT '' COMMENT 'SEO标题',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '' COMMENT 'SEO KEYWORDS',
  `seo_description` text COMMENT 'SEO DESCRIPTION',
  `template` varchar(30) NOT NULL DEFAULT '' COMMENT '模板',
  `link` varchar(100) DEFAULT NULL COMMENT '外部链接',
  `attach_file` varchar(60) NOT NULL DEFAULT '' COMMENT '附件',
  `attach_thumb` varchar(60) NOT NULL DEFAULT '' COMMENT '附件小图',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `view_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '查看次数',
  `status` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '是否显示',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '时间',
  `update_time` int(10) unsigned DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='单页';

INSERT INTO `yiif_page` VALUES('about','关于我','','<p style=\"text-indent:2em;\">
	<span style=\"font-size:16px;\">yiifcms是个人开发的内容管理系统 不存在版权纠纷</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:16px;\">如果您想要联系我，请</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:16px;\">致邮：xb_zjh@126.com</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:16px;\">QQ：326196998</span> 
</p>','','','','','','','','1','31','Y','1322999570','1407118540');
INSERT INTO `yiif_page` VALUES('goods','特色介绍','','<p style=\"text-indent:2em;\">
	<br />
</p>
<p style=\"text-indent:2em;\">
	<strong><span style=\"font-family:Microsoft YaHei;font-size:16px;\" id=\"free\">开源、免费</span></strong> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">yiifcms是基于yiiframework开发的内容管理系统，它开源、免费，用户可以自由下载、使用、修改、学习交流。</span> 
</p>
<p style=\"text-indent:2em;\">
	<br />
</p>
<p style=\"text-indent:2em;\">
	<br />
</p>
<p style=\"text-indent:2em;\">
	<br />
</p>
<hr />
<p>
	<br />
</p>
<p style=\"text-indent:2em;\">
	<br />
</p>
<p style=\"text-indent:2em;\">
	<strong><span style=\"font-family:Microsoft YaHei;font-size:16px;\" id=\"safe\">安全、高效</span></strong> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">yiiframework本身是一个很安全的高性能的开源框架，使用它您不用担心安全问题，它会使您的网站运行的很良好。</span> 
</p>
<p style=\"text-indent:2em;\">
	<br />
</p>
<p style=\"text-indent:2em;\">
	<br />
</p>
<hr />
<p>
	<br />
</p>
<p style=\"text-indent:2em;\">
	<br />
</p>
<p style=\"text-indent:2em;\">
	<br />
</p>
<p style=\"text-indent:2em;\">
	<strong><span style=\"font-size:16px;font-family:Microsoft YaHei;\" id=\"handy\">简洁、方便</span></strong> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">yiifcms有简洁、方便的后台管理，用户不需要了解复杂的逻辑关系，就可以很快速的发布内容，优化管理。</span> 
</p>
<p style=\"text-indent:2em;\">
	<br />
</p>
<p style=\"text-indent:2em;\">
	<br />
</p>
<hr />
<p>
	<br />
</p>
<p style=\"text-indent:2em;\">
	<br />
</p>
<p style=\"text-indent:2em;\">
	<br />
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-family:Microsoft YaHei;font-size:16px;\" id=\"stable\">轻松、稳定</span> 
</p>
<p style=\"text-indent:2em;\">
	<br />
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">yiifcms架构合理、布局优美，是您轻松建站和学习的不二之选。</span> 
</p>
<p style=\"text-indent:2em;\">
	<br />
</p>
<hr />
<p>
	<br />
</p>
<p style=\"text-indent:2em;\">
	<br />
</p>','','','','','','','','2','11','Y','1322999588','1407118550');
INSERT INTO `yiif_page` VALUES('register','注册流程','','<div>
	<div>
		<span style=\"font-size:16px;\">用户需要填写用户名，密码，邮箱 然后进行账号激活 即可完成全部注册</span><br />
	</div>
</div>
<div>
</div>','','','','','','','','4','10','Y','1331877791','1407118576');
INSERT INTO `yiif_page` VALUES('disclaimer','免责声明','','<p style=\"text-indent:2em;\">
	<br />
</p>
<ol>
	<li>
		<span style=\"font-size:16px;\">本站点的所有内容 均来自个人和互联网 不存在版权纠纷</span> 
	</li>
	<li>
		<span style=\"font-size:16px;\">对于特殊的评论仅仅代表个人观点，和本站无关</span> 
	</li>
	<li>
		<span style=\"font-size:16px;\">如果对于转载的内容侵犯了您的权益，请告知于我<br />
</span> 
	</li>
</ol>
<p>
	<br />
</p>','','','','','','','','5','6','Y','1407118521','1407118583');
INSERT INTO `yiif_page` VALUES('comment','评论审核','','<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">对内容的评论或者回复需要审核通过后 才可以看到</span> 
</p>
<span style=\"font-size:14px;\"></span>','','','','','','','','6','4','Y','1407120050','1407120061');
INSERT INTO `yiif_page` VALUES('guide','新手指南','','<div>
	<p>
		<span style=\"font-size:16px;\">用户可以无需登录 即可浏览内容 下载CMS版本</span> 
	</p>
	<p>
		<span style=\"font-size:16px;\">如果您想对内容进行评论，请先<a target=\"_blank\" href=\"http://www.yiifcms/?r=user/register\">注册</a>并<a target=\"_blank\" href=\"http://www.yiifcms.com/?r=user/login\">登录</a></span> 
	</p>
	<p>
		<span style=\"font-size:16px;\">注册请查阅<a target=\"_blank\" href=\"http://www.yiifcms.com/?r=page&id=register\">注册流程</a></span> 
	</p>
</div>
<div>
</div>','','','','','','','','3','16','Y','1379392484','1407118569');

DROP TABLE IF EXISTS `yiif_post`;
CREATE TABLE `yiif_post` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '用户',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `title_second` varchar(255) NOT NULL DEFAULT '' COMMENT '副标题',
  `title_style` varchar(255) NOT NULL DEFAULT '' COMMENT '标题样式',
  `html_path` varchar(100) NOT NULL DEFAULT '' COMMENT 'html路径',
  `html_file` varchar(100) NOT NULL DEFAULT '' COMMENT 'html文件名',
  `catalog_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '分类',
  `special_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '专题编号',
  `intro` text COMMENT '摘要',
  `image_list` text COMMENT '组图',
  `seo_title` varchar(255) NOT NULL DEFAULT '' COMMENT 'SEO标题',
  `seo_description` text COMMENT 'SEO描述',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '' COMMENT 'SEO关键字',
  `content` mediumtext NOT NULL COMMENT '内容',
  `copy_from` varchar(100) NOT NULL DEFAULT '' COMMENT '来源',
  `copy_url` varchar(255) NOT NULL DEFAULT '' COMMENT '来源url',
  `redirect_url` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转URL',
  `tags` varchar(255) NOT NULL DEFAULT '' COMMENT 'tags',
  `view_count` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '查看次数',
  `commend` enum('Y','N') NOT NULL DEFAULT 'N' COMMENT '推荐',
  `attach_status` enum('Y','N') NOT NULL DEFAULT 'N' COMMENT '是否上传附件',
  `attach_file` varchar(255) NOT NULL DEFAULT '' COMMENT '附件名称',
  `attach_thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '附件缩略图',
  `favorite_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏数量',
  `attention_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '关注次数',
  `top_line` enum('Y','N') NOT NULL DEFAULT 'N' COMMENT '头条',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后更新时间',
  `reply_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '回复次数',
  `reply_allow` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '允许评论',
  `sort_desc` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '是否显示',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `tags_index` (`tags`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='内容管理';

INSERT INTO `yiif_post` VALUES('14','1','天河二号以每秒3.3亿亿次的速度再居世界超算榜首 上演帽子戏法','','','','','2','1','据外媒报道，23日在德国莱比锡市发布的第43届世界超级计算机500强排行榜上，中国超级计算机系统“天河二号”以每秒3.386亿亿次的浮点运算速度稳居榜首，获得世界超算“三连冠”。 ','','','','','<p style=\"text-indent:2em;\">
	<img src=\"http://www.yii.local/uploads/images/201406/5e7d89999bb.jpg\" alt=\"\" height=\"418\" width=\"772\" /> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">北京时间6月24日消息，据美国科技网站</span><a href=\"http://www.cnet.com/news/top500-supercomputer-race-hits-a-slow-patch/\" target=\"_blank\"><span style=\"font-size:14px;\">CNET</span></a><span style=\"font-size:14px;\">报道，23日在德国莱比锡市发布的</span><a href=\"http://top500.org/blog/lists/2014/06/press-release/\" target=\"_blank\"><span style=\"font-size:14px;\">第43届世界超级计算机500强排行榜</span></a><span style=\"font-size:14px;\">上，中国超级计算机系统“天河二号”以每秒3.386亿亿次的浮点运算速度稳居榜首，获得世界超算“三连冠”。美国能源部下属橡树岭国家实验室的“泰坦”则连续3次屈居亚军，其浮点运算速度为每秒1.759亿亿次。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">2010年，由国防科技大学研制的天河一号在超算排行榜上首次夺冠，2013年，天河二号又两度位列榜首，昨天，天河二号第3次被评为全球最快的计算机，获得世界超算三连冠。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">据悉，国际TOP500组织是发布全球已安装的超级计算机系统排名的权威机构，每年发布两次，其目的是促进国际超级计算机领域的交流和合作，促进超级计算机的推广应用。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">超级计算机是计算机中功能最强、运算速度最快、存储容量最大的一类计算机，多用于国家高科技领域和尖端技术研究。如：模拟核武器爆炸、模拟地球的气候、分析飞机的空气动力学和研究生物的大脑等。这些机器通常占用很大的橱柜和消耗大量的电力。</span> 
</p>
<p style=\"text-align:center;\">
	<img src=\"/uploads/attached/image/201406/f6cf41e3649.jpg\" alt=\"\" /> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">世界上最快的计算机的性能在过去的二十年中一直在稳步的提升，最新数据显示，这个增长趋势在放缓。从2013年11月至今，排行榜前500的所有超级计算机的性能总和从25亿亿次提高到了27.4亿亿次。相关分析人士认为这是一个明显的增长放缓。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">另外，在过去的五年内，排行榜最后一位的超级计算机以每年55%的速度提升，而1994年至2008年间，性能曾以每年90%的速度增长。</span> 
</p>','csdn','http://www.csdn.net/article/2014-06-24/2820355','','超级计算机,中国','27','N','Y','uploads/images/201406/5e7d89999bb.jpg','uploads/thumbs/201406/small_5e7d89999bb.jpg','0','0','N','1404120867','0','Y','0','Y','1379554460');
INSERT INTO `yiif_post` VALUES('15','1','国产操作系统厂商中科红旗宣布拍卖旗下资产','','','','','2','1','6月27日，中科红旗发布公告，宣布拟以公开竞价方式转让公司全部注册商标、全部软件著作权等资产。至此，处于解散清算状态的国产操作系统厂商中科红旗正式开始启动资产出售进程。　　 ','','','','','<p align=\"center\">
	<img src=\"/uploads/attached/image/201406/3078e9f0bff.jpg\" alt=\"\" /> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">北京时间6月30日消息，国产操作系统厂商中科红旗日前已经开始启动资产出售进程。中科红旗今年2月宣布解散清算。有消息称，中科红旗当时的债务总
额约为2000多万元，其中绝大部分是员工的拖欠工资。6月27日，中科红旗发布公告称拟以公开竞价方式转让公司全部注册商标、全部软件著作权等资产。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">中科红旗为资产竞买人提出了四项条件，并要求有意向的竞买人在2014年7月8日前提交书面竞买意向书。而后续公开竞价转让安排则会另行通知竞买人。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">中科红旗表示竞买人需要满足四项条件，包括：</span> 
</p>
<p style=\"text-indent:2em;\">
	<br />
</p>
<ul>
	<li>
		<span style=\"font-size:14px;\">有志于从事国产操作系统产品研发和应用推广的内资企业法人；</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">具有能够研发完善本公司产品的技术团队和雄厚的经济实力；</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">有意且有能力承接本公司所有承诺用户的产品后续运维和升级等服务；</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">有意且有能力代为完成本公司所承担的核高基等政府项目的后续验收、跟踪等工作。</span> 
	</li>
</ul>
<p>
	<br />
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">同时，中科红旗表示，如果竞买人能够完全收购中科红旗公司，则可以优先收购上述资产。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">目前，除明确提出四项竞买人条件之外，中科红旗对于资产价格、竞价日期等细节信息未作披露。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">新浪科技引用了解此事的中科红旗前员工消息称，本次资产拍卖的底价可能约为1800万元。这位要求匿名的前员工表示，由于价格不高，有几家公司有意向展开竞购，其中呼声较高的包括中国电子科技集团公司、曙光公司等。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">在
几家可能接盘的企业中，有中科红旗员工表示中国电子科技集团公司旗下的普华基础软件有限公司最有可能接盘中科红旗。其实早在本月初，普华基础软件已经宣布
接盘中科红旗破产之后的客户技术服务工作。同时，该公司还接收了数十名中科红旗研发、技术支持和销售的核心员工。这些动作被外界和中科红旗的前员工们看作
是，整体接盘中科红旗的前奏。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">员工们表述，就普华基础软件而言，接盘中科红旗确实有着很强的合理性。一方面，这家公司一直在从事Linux相关的业务；另外一方面，这家公司从公司总裁赵晓亮到员工有不少人曾就职中科红旗，也非常熟悉这家企业的业务及文化。其中，赵晓亮还曾担任过中科红旗的执行总裁。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">中科红旗工会主席贺唯佳告诉新浪科技，普华基础软件若收购中科红旗，将可以实现业务上的平滑过渡。不过，他也不确认，这家公司的母公司是否会正式发起竞购。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">据贺唯佳透露，此前与中科红旗有合作关系的部分硬件厂商也有意竞购中科红旗的资产。据悉，在解散清算之前，中科红旗开发的PC操作系统和服务器操作系统被一些PC厂商和服务器厂商使用，其中有些企业希望接盘，继续提供相关产品和服务。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">实际上，也有部分中科红旗的前员工指出，中科院软件所旗下的中科方德也可能是中科红旗的接盘方。中科方德和中科红旗同属中科院软件所旗下企业，两家企业曾联合申请过国家核高基项目，在业务上有很多重叠性。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">不过，由于很多员工认为，中科红旗进行解散清算正是因为“祸起”中科方德，部分股东可能会提出异议，阻碍中科方德接盘。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">此前，中科红旗的员工们指责中科院软件所设立中科方德公司与中科红旗展开竞争，同时通过派驻的管理层，要求中科红旗的员工为中科方德做项目，严重影响公司的正常运营。但中科院软件所否认这些指责。</span> 
</p>','csdn','http://www.csdn.net/article/2014-06-30/2820440','','操作系统,国产,中科','37','Y','Y','uploads/201309/523a54c220262.jpg','uploads/201309/thumb_523a54c220262.jpg','0','0','N','1404120862','0','Y','0','Y','1379554498');
INSERT INTO `yiif_post` VALUES('16','1','程序员必须知道的10大基础实用算法及其讲解','','a:3:{s:4:\"bold\";s:1:\"Y\";s:9:\"underline\";s:1:\"Y\";s:5:\"color\";s:6:\"FF2969\";}','','','2','1','在手机解锁上，美国消费者和运营商展开持久战，美国政府和白宫逐渐站在消费者一边。	近日美国电信和信息管理局（NTIA）正式向联邦通信委员会（FCC）发函，要求修改规定，未来移动运营商销售给用户的手机、平板...','a:2:{i:0;a:4:{s:6:\"fileId\";s:2:\"36\";s:4:\"file\";s:37:\"uploads/images/201405/21e1adee63a.png\";s:4:\"desc\";s:2:\"04\";s:3:\"url\";s:5:\"04url\";}i:1;a:4:{s:6:\"fileId\";s:2:\"37\";s:4:\"file\";s:37:\"uploads/images/201405/f23850e09dc.png\";s:4:\"desc\";s:2:\"05\";s:3:\"url\";s:5:\"05url\";}}','','','','<p>
	<a href=\"http://geek.csdn.net/news/detail/12027\"><span style=\"font-size:14px;\">程序员必须知道的10大基础实用算法及其讲解</span></a><span style=\"font-size:14px;\">，包括：</span> 
</p>
<blockquote>
	<ol>
		<li>
			<span style=\"font-size:14px;\">堆排序算法（Heapsort）：是指利用堆这种数据结构所设计的一种排序算法；</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">归并排序（Merge sort，台湾译作：合并排序）：是建立在归并操作上的一种有效的排序算法；</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">二分查找(线性查找算法)：是一种在有序数组中查找某一特定元素的搜索算法；</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">BFPRT算法解决的问题十分经典，即从某n个元素的序列中选出第k大（第k小）的元素，通过巧妙的分析，BFPRT可以保证在最坏情况下仍为线性时</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">快速排序算法；</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">间复杂度；</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">深度优先搜索算法（Depth-First-Search）：是搜索算法的一种；</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">广度优先搜索算法（Breadth-First-Search）：是一种图形搜索算法；</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">戴克斯特拉算法（Dijkstra’s algorithm）；</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">动态规划算法（Dynamic programming）；</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">朴素贝叶斯分类算法是一种基于贝叶斯定理的简单概率分类算法。</span> 
		</li>
	</ol>
</blockquote>
<p>
	<span style=\"font-size:14px;\">上面的这篇文章为本周的热门文章，有着不错的评论。具体的算法步骤详情请移步</span><a href=\"http://geek.csdn.net/news/detail/12027\"><span style=\"font-size:14px;\">原文</span></a><span style=\"font-size:14px;\">阅读并可参与讨论。</span> 
</p>
<h2>
	<span style=\"font-size:14px;\">一、 </span><a href=\"http://geek.csdn.net/news/detail/12327\"><span style=\"font-size:14px;\">Eclipse 4.4 将于 6 月 25 日发布，代号 Luna</span></a> 
</h2>
<p>
	<span style=\"font-size:14px;\">代号为 Luna 的下一个 Eclipse 的主要版本 4.4 将于 6月25日 发布。新版本值得关注的特性包括：</span> 
</p>
<blockquote>
	<ul>
		<li>
			<span style=\"font-size:14px;\">完全支持 Java™ 8</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">提供全新的黑色主题，默认显示行号，允许隐藏 quick access 工具条</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">Sirius allows architects to easily create their own graphical 
modeling workbenches by leveraging the Eclipse modeling technologies, 
including Eclipse Modeling Framework (EMF) and Graphical Modeling 
Framework (GMF)</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">Equinox includes a full implementation of the R6 Core Framework as well as several compendium service implementations</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">ECF\'s implementation of OSGi Remote Service/Remote Service Admin 
standard has been enhanced to use Java 8\'s CompleteableFuture for 
asynchronous remote services.</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">Code Recommenders integrates the Snipmatch code snippet search 
engine and adds the ability to easily contribute new snippets to a 
shared repository.</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">The new QVTi debugger extends the new OCL debugger.</span> 
		</li>
	</ul>
</blockquote>
<h2>
	<span style=\"font-size:14px;\">二、 </span><a href=\"http://geek.csdn.net/news/detail/12801\"><span style=\"font-size:14px;\">Java 8新特性终极指南</span></a> 
</h2>
<p>
	<span style=\"font-size:14px;\">Java 8已经公布有一段时间了，种种迹象表明Java 8是一个有重大改变的发行版。文章把所有Java 8的重要特性收集整理成一篇单独的文章，主要有以下几个方面：</span> 
</p>
<blockquote>
	<ul>
		<li>
			<span style=\"font-size:14px;\">Java语言的新特性——Lambdas表达式与Functional接口、接口的默认与静态方法、方法引用、重复注解、更好的类型推测机制、扩展注解的支持</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">Java编译器的新特性——参数名字</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">Java 类库的新特性——Optional、Streams、Date/Time API (JSR 310)、JavaScript引擎Nashorn、Base64、并行（parallel）数组、并发（Concurrency）</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">新增的Java工具——Nashorn引擎: jjs、类依赖分析器: jdeps</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">Java虚拟机（JVM）的新特性</span> 
		</li>
	</ul>
</blockquote>
<h2>
	<span style=\"font-size:14px;\">三、</span><a href=\"http://geek.csdn.net/news/detail/12808\"><span style=\"font-size:14px;\">程序员长期保持身心健康的几点建议</span></a> 
</h2>
<blockquote>
	<ol>
		<li>
			<span style=\"font-size:14px;\">要学会走开</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">在家少编程</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">少叫外卖，中午出去吃</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">有一个或几个非技术的兴趣爱好，或者体育锻炼项目</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">休假</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">最最最最关键，要有一个妹子</span> 
		</li>
	</ol>
</blockquote>
<h2>
	<span style=\"font-size:14px;\">四、 </span><a href=\"http://geek.csdn.net/news/detail/12349\"><span style=\"font-size:14px;\">程序员自我提高的几点建议 很实诚</span></a> 
</h2>
<p>
	<span style=\"font-size:14px;\">中国程序员的成长是与其学习环境相关，据统计，现时做计算机软件开发的人员65%是大专及本科学历，15%是来自于其他的培训机构。可见一个开发人员大致的学习经历和初步经验来自于大学。下面是针对程序员自我提高的几点建议：</span> 
</p>
<ol>
	<li>
		<span style=\"font-size:14px;\">提高文档编写能力</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">养成好的编码规范和编码习惯</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">提高对软件需求的理解</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">复用性和模块化思想</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">锻炼自己的测试能力</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">问题是最好的学习机会</span> 
	</li>
</ol>
<h2>
	<span style=\"font-size:14px;\">五、 </span><a href=\"http://geek.csdn.net/news/detail/11885\"><span style=\"font-size:14px;\">Java 8中几个不易察觉的错误</span></a> 
</h2>
<ul>
	<li>
		<span style=\"font-size:14px;\">不小心重用了流</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">不小心创建了一个“无限”流</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">不小心创建了一个“隐藏的”无限流</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">不小心创建了一个”隐藏”的并行无限流</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">操作的顺序错误</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">使用过滤器来遍历文件系统</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">修改流内部的集合</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">忘了去消费流</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">并行流死锁</span> 
	</li>
</ul>
<p>
	<span style=\"font-size:14px;\">引入了流和函数式编程之后，我们开始会碰到许多新的难以发现的BUG。这些BUG很难避免，除非你见过并且还时刻保持警惕。你必须去考虑操作的顺序，还得注意流是不是无限的。</span> 
</p>
<p>
	<span style=\"font-size:14px;\">流是一个非常强大的工具，但也是一个首先得去熟练掌握的工具。</span> 
</p>
<h2>
	<span style=\"font-size:14px;\">六、 </span><a href=\"http://geek.csdn.net/news/detail/12354\"><span style=\"font-size:14px;\">Google I/O 2014大会很有可能发布的10大惊喜</span></a> 
</h2>
<p>
	<span style=\"font-size:14px;\">一年一度的谷歌 Google I/O 开发者年会将在本月的 25 日和 26 日在美国的旧金山举行，今年的 Google I/O 大会又将带给大家什么惊喜呢？请看：</span> 
</p>
<ul>
	<li>
		<span style=\"font-size:14px;\">Nexus 8</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">安卓5.0</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">谷歌眼镜正式上市</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">Android Wear</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">Silver项目</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">Project Ara模块化手机</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">Android车载系统</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">Google Fit服务</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">Nest——Nest或许会带来修复另一款烟雾探测器Protect的相关消息</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">Google Fiber</span> 
	</li>
</ul>','','','','程序员','594','Y','Y','uploads/201309/523a54f7d9591.jpg','uploads/201309/thumb_523a54f7d9591.jpg','1','2','Y','1404120856','4','N','5','Y','1379554552');
INSERT INTO `yiif_post` VALUES('23','1','Facebook POP，迈向大师操作之路','','','','','3','0','Facebook发布Paper后，不满足于将其作为一个概念性产品，反而更进一步开源了其背后的动画引擎POP。POP的开发者是Kimon Tsinteris，曾致力于创造出逼真的、充满物力效应的体验。POP也是在这个理念下催生出来的结果。 ','','','','','<p style=\"text-indent:2em;\">
	Facebook发布Paper之后，似乎还不满足于只是将其作为一个概念性产品，反而更进一步开源了其背后的动画引擎POP（https://github.com/facebook/pop），此举大有三年前发布的iOS&nbsp;UI框架Three20（https://github.com/facebookarchive/three20）的意味。而POP开源后不负Facebook的厚望，在GitHub上不足一个月的时间，就已拥有了6000多个Star，非常火爆。
</p>
<p style=\"text-indent:2em;\">
	POP背后的开发者是Kimon&nbsp;Tsinteris，他是Push&nbsp;Pop&nbsp;Press的联合创始人，曾在苹果担任高级工程师，并参与了iPhone和iPad上的软件研发（iPhone的指南针及地图）。2011年，Facebook收购了他的公司，此后他便加入了Facebook负责Facebook&nbsp;iOS版本的开发。
</p>
<p style=\"text-indent:2em;\">
	如果你打开Push&nbsp;Pop&nbsp;Press开发的《AI&nbsp;Gore》这款App，就会发现它的交互和动画与Paper几乎如出一辙，原因就在于，它们都是由Kimon&nbsp;Tsinteris开发的。由于不满足于苹果自身动画框架的单调，Push&nbsp;Pop&nbsp;Press致力于创造一个逼真的、充满物理效应的体验。POP就是在这个理念下催生出来的新一代成果。
</p>
<p style=\"text-indent:2em;\">
	POP使用Objective-C++编写。Objective-C++是对C++的扩展，就像Objective-C是C的扩展一样。而至于为什么他们用Objective-C++而不是纯粹的Objective-C，原因在于他们更喜欢Objective-C++的语法特性所提供的便利。
</p>
<p style=\"text-indent:2em;\">
	<b>POP的架构</b> 
</p>
<p style=\"text-indent:2em;\">
	POP目前由四个部分组成（如图1所示），即Animations、Engine、Utility、WebCore。
</p>
<p style=\"text-align:center;\">
	<a href=\"http://cms.csdnimg.cn/article/201406/04/538edd54d9240.jpg\" target=\"_blank\"><img src=\"http://cms.csdnimg.cn/article/201406/04/538edd54d9240.jpg\" border=\"0\" /></a> 
</p>
<p style=\"text-align:center;text-indent:2em;\">
	图1 &nbsp;POP架构图
</p>
<p style=\"text-indent:2em;\">
	POP动画极为流畅，其秘密就在于这个引擎中的POPAnimator。POP通过CADisplayLink让动画实现了60&nbsp;FPS的流畅效果，打造了一个游戏级的动画引擎。
</p>
<p style=\"text-indent:2em;\">
	CADisplayLink是类似NSTimer的定时器，不同之处在于，NSTimer用于我们定义任务的执行周期及资料的更新周期，它的执行受CPU的阻塞所影响。而CADisplayLink则用于定义画面的重绘和动画的演变，它的执行是基于Frames的间隔。通过CADisplayLink，苹果允许开发者将App的重绘速度设定到与屏幕刷新频率一致。因此开发者可以获得非常流畅的交互动画，这项技术的应用在游戏中非常常见，著名的Cocos-2d引擎也用到了这个重要的技术。
</p>
<p style=\"text-indent:2em;\">
	WebCore里包含了一些从苹果的开源的网页渲染引擎里拿到的源文件（http://opensource.apple.com/source/WebCore），它与Utility里的组件一并为POP的各项复杂计算提供了基本支持。因此，通过Engine、Utility、WebCore三个基石，打造了Animations。
</p>
<p style=\"text-indent:2em;\">
	POPAnimation有着与CALayer非常相似的API。如果你知道CALayer的动画API，那么你对下面的接口一定非常熟悉。说到这里，想必你一定开始迫不及待地想试试POP了（因篇幅所限，下面的代码并不是完整代码，你可以到https://github.com/kevinzhow/pop-handapp获取示例App）。
</p>
<p style=\"text-indent:2em;\">
	<b>基本类型</b> 
</p>
<p style=\"text-indent:2em;\">
	<b>·</b> Spring&nbsp;Animation
</p>
<p style=\"text-align:center;\">
	<a href=\"http://cms.csdnimg.cn/article/201406/04/538edd87c1b25.jpg\" target=\"_blank\"><img src=\"http://cms.csdnimg.cn/article/201406/04/538edd87c1b25.jpg\" border=\"0\" /></a> 
</p>
<p style=\"text-align:center;text-indent:2em;\">
	图2 &nbsp; 默认的两种动画模式以及他们的动画节奏
</p>
<p style=\"text-indent:2em;\">
	POP默认提供了两个非常特别的动画模式，第一个就是Spring&nbsp;Animation（如图2所示），另一个是Decay&nbsp;Animation。让我们先来看看Spring&nbsp;Animation，控制其动画效果的主要参数包括：
</p>
<p style=\"text-indent:2em;\">
	<span>&nbsp; &nbsp;&nbsp;<b>·</b>&nbsp;Bounciness反弹，影响动画作用的参数的变化幅度；</span> 
</p>
<p style=\"text-indent:2em;\">
	<b>·</b>&nbsp;Speed速度；
</p>
<p style=\"text-indent:2em;\">
	<b>·</b>&nbsp;Tension拉力，影响回弹力度及速度；
</p>
<p style=\"text-indent:2em;\">
	<b>·</b>&nbsp;Friction摩擦力，开启后，动画会不断重复，并且幅度逐渐削弱，直到停止；
</p>
<p style=\"text-indent:2em;\">
	<b>·</b>&nbsp;Mass质量，细微地影响动画的回弹力度和速度。
</p>
<p style=\"text-indent:2em;\">
	实际上，Tension、Friction、Mass这三个参数的作用很微妙，需要在示例程序中仔细体会。使用&nbsp;Spring&nbsp;Animation的方式非常简单，如代码1所示。
</p>
<p style=\"text-align:center;\">
	<a href=\"http://cms.csdnimg.cn/article/201406/04/538eddc2a11c8.jpg\" target=\"_blank\"><img src=\"http://cms.csdnimg.cn/article/201406/04/538eddc2a11c8.jpg\" border=\"0\" /></a> 
</p>
<p style=\"text-align:center;text-indent:2em;\">
	代码1
</p>
<p style=\"text-indent:2em;\">
	通过[POPSpringAnimation&nbsp;animationWithPropertyNamed:kPOPLayerScaleXY]我们创建了一个在二维平面上分别沿着X轴和Y轴进行缩放的动画。
</p>
<p style=\"text-indent:2em;\">
	下面我们介绍三个重要的参数。
</p>
<p style=\"text-indent:2em;\">
	<b>&nbsp; &nbsp; ·</b>&nbsp;fromValue将告诉POP物体被动画操作的属性从什么数值开始运行。如果不提供fromValue，那么POP将默认使用当前数值。在这个例子中，就默认使用当前的比例。
</p>
<p style=\"text-indent:2em;\">
	<b>&nbsp; &nbsp; ·</b>&nbsp;toValue是我们希望动画结束后，物体被动画操作的属性停留在什么值上，在这个例子中，toValue告诉了POP，我们希望沿着X轴和Y轴各缩放几倍。
</p>
<p style=\"text-indent:2em;\">
	<b>&nbsp; &nbsp; ·</b>&nbsp;completionBlock提供了一个Callback，动画的执行过程会不断调用这个block，finished这个布尔变量可以用来做动画完成与否的判断。
</p>
<p style=\"text-indent:2em;\">
	值得一提的是，这里toValue和fromValue的值应该和动画所作用的属性是一样的数据结构。例如，如果我们的操作对象是bounds，那么这里的toValue则应该是[NSValue&nbsp;valueWithCGRect:]&nbsp;。
</p>
<p style=\"text-indent:2em;\">
	最后，我们使用pop_addAnimation来让动画开始生效，如果想删除动画的话，那么需要调用pop_removeAllAnimations。
</p>
<p style=\"text-indent:2em;\">
	与iOS自带的动画不同，如果你在动画的执行过程中删除了物体的动画，那么物体会停在动画状态的最后一个瞬间，而不是闪回开始前的状态。
</p>
<p style=\"text-indent:2em;\">
	<b>·</b>&nbsp;Decay&nbsp;Animation
</p>
<p style=\"text-indent:2em;\">
	Decay&nbsp;Animation可以实现衰减的动画效果。这个动画有一个重要的参数即velocity（速率），这个参数一般并不用于物体的自发动画，而是与用户的交互共生。这和iOS&nbsp;7引入的UIDynamic非常相似，如果你想实现一些物理效果，Decay&nbsp;Animation也是不错的选择。
</p>
<p style=\"text-indent:2em;\">
	Decay的动画没有toValue只有fromValue，以fromValue作为原始值，按照velocity来做衰减操作。如果我们想做一个刹车效果，则可以像代码2这样操作：
</p>
<p style=\"text-align:center;\">
	<a href=\"http://cms.csdnimg.cn/article/201406/04/538eddf5e19dd.jpg\" target=\"_blank\"><img src=\"http://cms.csdnimg.cn/article/201406/04/538eddf5e19dd.jpg\" border=\"0\" /></a> 
</p>
<p style=\"text-align:center;text-indent:2em;\">
	代码2
</p>
<p style=\"text-indent:2em;\">
	这个动画会使得物体从X坐标的25.0开始做100点/秒的减速运动。如果velocity里的数字是负值，那么你的动画就会反方向执行动画效果。这里非常值得一提的是，velocity也是必须和你操作的属性有相同的数据结构，如果你操作的是bounds，想实现一个水滴滴到桌面的扩散效果，那么velocity则应该是[NSValue&nbsp;valueWithRect:CGRectMake(0,&nbsp;0,&nbsp;20,&nbsp;20)]。
</p>
<p style=\"text-indent:2em;\">
	deceleration（负加速度）是一个很少用到的值，它影响动画被重力影响的效果。默认值就是我们地球的重力加速度0.998。如果你程序里的动画开发给火星人看，那么使用0.376这个值会更合适。
</p>
<p style=\"text-indent:2em;\">
	<b>·</b>&nbsp;Property&nbsp;Animation和Basic&nbsp;Animation
</p>
<p style=\"text-indent:2em;\">
	POP号称可以对物体的任何属性进行动画，其背后就是这个Property&nbsp;Animation驱动。Spring&nbsp;Animation和Decay&nbsp;Animation都是继承自这个类，接下来我们通过一个Counting&nbsp;Label的例子来演示Property&nbsp;Animation的神奇能力。在这个动画中，我们也使用了Basic&nbsp;Animation，动画模式是经典的ease-in-out，不使用Spring&nbsp;Animation是因为我们并不需要计数器的数值进行回弹，如代码3所示。
</p>
<p style=\"text-align:center;\">
	<a href=\"http://cms.csdnimg.cn/article/201406/04/538ede19813c2.jpg\" target=\"_blank\"><img src=\"http://cms.csdnimg.cn/article/201406/04/538ede19813c2.jpg\" border=\"0\" /></a> 
</p>
<p style=\"text-align:center;text-indent:2em;\">
	代码3
</p>
<p style=\"text-indent:2em;\">
	通过POPBasicAnimation的timingFunction我们定义了动画的展现方式——渐入渐出。随后通过POPAnimatableProperty来定义POP如何操作Label上的数值。
</p>
<p style=\"text-indent:2em;\">
	这里我们需要注意两个函数，readBlock和writeBlock。readBlock定义了动画如何获取要操作的属性数值，writeBlock定义了动画如何修改要操作的属性数值。在这两个函数中，obj就是我们的Label，values是动画所操作的属性数组，其值必须是CGFloat。
</p>
<p style=\"text-indent:2em;\">
	你可能会问，什么是动画所操作的属性数组？回顾之前我们在Decay&nbsp;Animation中操作的bounds内容，可以看出values[0]、values[1]、values[2]、values[3]分别对应了CGRectMake（0,&nbsp;0,&nbsp;20.0,&nbsp;20.0）的0、0、20.0、20.0。这里我们需要操作Label上显示的文字，所以只需要一个values[0]属性即可。
</p>
<p style=\"text-indent:2em;\">
	通过values[0]=[[obj&nbsp;description]&nbsp;floatValue]我们告诉POP如何获取这个值。相应地，我们通过[obj&nbsp;setText:[NSString&nbsp;stringWithFormat:@\"%.2f\",values[0]]]，告诉POP如何改变Label的属性。
</p>
<p style=\"text-indent:2em;\">
	threshold定义了动画的变化阀值，如果这里使用1，那么我们就不会看到动画执行时小数点后面的数字变化。
</p>
<p style=\"text-indent:2em;\">
	到这里，我们的Counting&nbsp;Label就完成了，是不是超简单？
</p>
<p style=\"text-indent:2em;\">
	<b>实战</b> 
</p>
<p style=\"text-indent:2em;\">
	<b>·</b>&nbsp;PopUp和Decay&nbsp;Move
</p>
<p style=\"text-indent:2em;\">
	这个实例中，我将介绍一下如何将Decay动画和用户的手势操作结合起来，实现一个推冰壶的效果。手势的处理方式如代码4所示。
</p>
<p style=\"text-align:center;\">
	<a href=\"http://cms.csdnimg.cn/article/201406/04/538ede3db962b.jpg\" target=\"_blank\"><img src=\"http://cms.csdnimg.cn/article/201406/04/538ede3db962b.jpg\" border=\"0\" /></a> 
</p>
<p style=\"text-align:center;text-indent:2em;\">
	代码4
</p>
<p style=\"text-indent:2em;\">
	当用户触摸这个冰壶时，所有动画会立刻停止，然后冰壶会跟随用户的手指移动。在用户松开冰壶时，通过[pan&nbsp;velocityInView:self.view]我们获取了用户手指移动的速率，在addDecayPositionAnimationWithVelocity中生成动画，如代码5所示。
</p>
<p style=\"text-align:center;\">
	<a href=\"http://cms.csdnimg.cn/article/201406/04/538ede58dd45e.jpg\" target=\"_blank\"><img src=\"http://cms.csdnimg.cn/article/201406/04/538ede58dd45e.jpg\" border=\"0\" /></a> 
</p>
<p style=\"text-align:center;text-indent:2em;\">
	代码5
</p>
<p style=\"text-indent:2em;\">
	动画生效后，冰壶就会在低摩擦的状态下前进并逐渐停止。如果想增大摩擦力，则可以将速率乘以摩擦系数。
</p>
<p style=\"text-indent:2em;\">
	<b>·</b>&nbsp;Fly&nbsp;In
</p>
<p style=\"text-indent:2em;\">
	在这个实例中，我将介绍一下如何将两个动画相结合，实现一个像Path中卡片飞入的效果。如代码6所示。
</p>
<p style=\"text-align:center;\">
	<a href=\"http://cms.csdnimg.cn/article/201406/04/538ede7de353c.jpg\" target=\"_blank\"><img src=\"http://cms.csdnimg.cn/article/201406/04/538ede7de353c.jpg\" border=\"0\" /></a> 
</p>
<p style=\"text-align:center;text-indent:2em;\">
	代码6
</p>
<p style=\"text-indent:2em;\">
	第一个Spring&nbsp;Animation实现了卡片下落的效果，第二个Basic&nbsp;Animation实现了卡片的渐入效果，而最后的一个Basic&nbsp;Animation则实现了卡片倾斜的效果。
</p>
<p style=\"text-indent:2em;\">
	这里需要注意的是，我们使用了duration来定义Basic&nbsp;Animation的执行时间，并用beginTime来定义动画的开始时间。beginTime接受的是一个以秒为单位的时间，所以我们使用了&nbsp;CACurrentMediaTime()来获取当前的时间，在此之上增加上了期望动画延迟的时间。
</p>
<p style=\"text-indent:2em;\">
	<b>·</b>&nbsp;Transform
</p>
<p style=\"text-indent:2em;\">
	这个实例真的酷极了，我们将实现一个用户点击后播放按钮转换为进度条容器的变形效果。首先创建一个进度条，通过lineCap&nbsp;lineWidth调整进度条的样式，然后使用UIBezierPath来定义进度条的走向，如代码7所示。
</p>
<p style=\"text-align:center;\">
	<a href=\"http://cms.csdnimg.cn/article/201406/04/538edea238f76.jpg\" target=\"_blank\"><img src=\"http://cms.csdnimg.cn/article/201406/04/538edea238f76.jpg\" border=\"0\" /></a> 
</p>
<p style=\"text-align:center;text-indent:2em;\">
	代码7
</p>
<p style=\"text-indent:2em;\">
	代码8就是实现变形的代码。从这段代码不难看出，scale和bounds的变化效果是一起进行的。这时，播放按钮将缩小，然后改变外形成为进度条的容器。在变形结束后，将触发进度条的动画。
</p>
<p style=\"text-align:center;\">
	<a href=\"http://cms.csdnimg.cn/article/201406/04/538edebc1ae26.jpg\" target=\"_blank\"><img src=\"http://cms.csdnimg.cn/article/201406/04/538edebc1ae26.jpg\" border=\"0\" /></a> 
</p>
<p style=\"text-align:center;text-indent:2em;\">
	代码8
</p>
<p style=\"text-indent:2em;\">
	这里我们使用UIGraphicsBeginImageContext-WithOptions()去开启绘画上下文，动画结束后使用UIGraphicsEndImageContext()来清空绘画的上下文。这两个函数主要是影响画板的大小。
</p>','csdn','http://www.csdn.net/article/2014-06-04/2820077-Facebook-POP-Practice','','Facebook,国际业务','49','N','N','uploads/images/201406/1053bfe806b.png','uploads/thumbs/201406/small_1053bfe806b.png','0','0','N','1404120848','0','Y','0','Y','1401955341');
INSERT INTO `yiif_post` VALUES('24','1','传闻微软计划用Lumia品牌取代Surface','','','','','2','0','传闻微软计划用诺基亚Lumia品牌取代Surface品牌，且让未来Windows Phone手机打上“微软旗下诺基亚”（Nokia by Microsoft）的品牌烙印，最终的目的是实现推广销售“Nokia by Microsoft”品牌。','','','','','<p align=\"center\">
	<img src=\"/uploads/attached/image/201406/468a9574708.jpg\" alt=\"\" /> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">北京时间6月30日消息，据美国科技网站ZDNet报道，微软计划用诺基亚Lumia品牌取代Surface品牌，且让未来Windows 
Phone手机打上“微软旗下诺基亚”（Nokia by Microsoft）的品牌烙印，最终的目的是实现推广销售“Nokia by 
Microsoft”品牌。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">微软针对诺基亚移动业务部门的收购已经完成一段时间了，但是关于如何调整使用诺基亚旗下品牌的问题仍然处于悬而未决的状态。如今看来，马上就会有相关结果出来了。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">企业中途更换品牌相当困难，而且代价不菲，有时甚至是不明智的。但据爆料大神</span><a href=\"http://evleaks.at/2014/06/28/pretty-exciting-microsoft-reportedly-final-stages-licensing-nokia-brand-purpose-calling-handsets-nokia-microsoft-furthermore-say-goodbye-surface/\" target=\"_blank\"><span style=\"font-size:14px;\">@evleaks称</span></a><span style=\"font-size:14px;\">，微软可能会这样做：</span> 
</p>
<blockquote style=\"margin-left:3em ! important;font-style:normal ! important;color:#777777;text-indent:2em;\">
	<p>
		<span style=\"font-size:14px;\">This
 is pretty exciting: Microsoft is reportedly in the final stages of 
licensing the Nokia brand, for the purpose of calling the handsets 
“Nokia by Microsoft.” Furthermore, say goodbye to Surface, and hello to 
Lumia, as the tablet lineup faces brand streamlining.</span> 
	</p>
</blockquote>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">另外，@evleaks也在早前也透露了</span><a href=\"http://evleaks.at/2014/06/11/goodbye-pure-hello-segoe-near-term-post-transition-guidance-ex-nokians-regarding-branded-future/\" target=\"_blank\"><span style=\"font-size:14px;\">微软将在Lumia手机上取消诺基亚品牌名</span></a><span style=\"font-size:14px;\">：</span> 
</p>
<blockquote style=\"margin-left:3em ! important;font-style:normal ! important;color:#777777;text-indent:2em;\">
	<p>
		<span style=\"font-size:14px;\">Limua智能手机将继续使用诺基亚品牌18个月，Nokia X手机对诺基亚品牌的使用权将延续至2015年12月31日，而诺基亚功能手机Asha则可以继续使用10年诺基亚品牌。</span> 
	</p>
</blockquote>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">此外，@evleaks还表示，微软可能在与诺基亚谈判，延长Lumia品牌的使用时间，以便使其未来的手机和其他设备能继续使用这一品牌。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">尽管如此，还有一个令人惊讶的消息是，微软已经投资了太多的钱在Surface品牌上（在今年巴西世界杯期间，微软也在Surface Pro 3广告宣传方面投入了大量资金），而且最近也推出了受欢迎的Surface Pro 3平板电脑。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">不
过，在谈到Windows 
Phone手机时，人们常常想到的是Lumia或诺基亚，微软作为手机制造商的地位尚未得到认可。微软此举也在情理之中，当用户开始意识到微软与诺基亚品
牌的关系后，微软的受信任度也会提升。其实，在美国之外的市场上，诺基亚和Lumia有更高的品牌知名度；而且微软Windows 
Phone手机在海外市场的销售要好于美国。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">融合Surface和Lumia品牌符合微软</span><a href=\"http://www.zdnet.com/microsoft-3-0-a-meaner-leaner-devices-and-services-machine-7000017931/\" target=\"_blank\"><span style=\"font-size:14px;\">“一个微软”（One Microsoft）的营销策略</span></a><span style=\"font-size:14px;\">。据悉，微软在2015年春季将发布一个重要版本Windows Threshold，一个能同时支持手机和触控屏平板电脑的Windows版本。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">微软能从改变Surface品牌中受益，例如与</span><a href=\"http://www.zdnet.com/microsofts-900-million-surface-rt-write-down-how-did-this-happen-7000018275/\" target=\"_blank\"><span style=\"font-size:14px;\">Surface之前的历史</span></a><span style=\"font-size:14px;\">以及Surface销售不如预期的观念“划清界线”。</span> 
</p>
<p style=\"text-indent:2em;\">
	<br />
</p>','csdn','http://www.csdn.net/article/2014-06-30/2820438-microsoft-rumored-to-be-planning-to-replace-surface-branding-with-lumia','','微软,计划','4','N','N','','','0','0','N','1404120838','0','Y','0','Y','1404110540');
INSERT INTO `yiif_post` VALUES('25','1','简洁的代码，强悍的代码，你的选择是…？','','','','','3','0','我最近常常和其他开发人员关于如何写代码展开一些有趣的讨论。不可否认，现在有很多程序员过于注重代码的整齐干净，先别曲解我的意思，我也是注重代
码整洁的，并且关于强调这方面的重要性已经写过一箩筐帖子了。但是，我写代码的时候，整洁的代码只是我的第二目标，而且它从来没有取代过第一目标的地位：
使程序正常运作。或者可以这么说，第一永远是强悍的代码。


	


	一旦涉及如何写整洁的代码，很多程序员就口若悬河...','','','','','<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">我最近常常和其他开发人员关于如何写代码展开一些有趣的讨论。不可否认，现在有很多程序员过于注重代码的整齐干净，先别曲解我的意思，我也是注重代
码整洁的，并且关于强调这方面的重要性已经写过一箩筐帖子了。但是，我写代码的时候，整洁的代码只是我的第二目标，而且它从来没有取代过第一目标的地位：
使程序正常运作。或者可以这么说，第一永远是强悍的代码。</span> 
</p>
<p>
	<img class=\"alignnone size-full wp-image-397 aligncenter\" title=\"clean-code-vs-great-code\" src=\"http://news.html5tricks.com/wp-content/uploads/2014/06/clean-code-vs-great-code.jpg\" alt=\"\" height=\"628\" width=\"972\" /> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">一旦涉及如何写整洁的代码，很多程序员就口若悬河、滔滔不绝。他们不断强调他们对于这方面的努力有多么多么尽心竭力，精益求精。甚至在某些特殊情况
下，还会在编程时穿上Uncle 
Bob的绿色标志T恤，以提醒自己不要忘记他们心中最最要紧的一件事：代码一定要写得干净整洁。但是也因此，很多程序员竟然把代码的功用给抛之脑后，这真
是拣了芝麻丢了西瓜。比如，他们更喜欢使用如Automapper这样的工具，可以将实体映射到DTO（数据传输对象），即使Automapper与简单
的搜索映射数据相比，效率低下得多。他们并不在乎调用多个远程需要多大的花费，也不在乎通过网络需要发送多么庞大的数据。就因为如此，使得这些可怜的逗比
不得不一遍又一遍的完善代码，否则数据库就会陷入死循环。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">整洁的代码不一定是强悍的代码，而强悍的代码也并非一定就是整洁的代码。强悍的代码意味着它能快速工作、有效运行、易于理解、便于修改。而在这四个
功能中，易于理解的重要性不言而喻，特别是对于那些首次研读代码的，理解代码之后才能轻松安全地做出相应的改动。但是不管这些代码有多么地“一见就懂”，
如果不能正常运行（包括不能覆盖所有条件），或者写这些代码的时间远远超过正常值，那么这就算不上好的代码了。或许这样的代码看上去整洁干净，但是没用，
不是吗？</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">我也不建议过早的优化。除非你有和《骇客帝国》中的Neo一样的本领，否则你那些被过早优化的程序里至少肯定有四分之一是不正确的。这里有一些指导
原则，有助于我们避免一些最常见的性能问题。大多数情况下不影响理解的代码可以选择忽略，除非这对于解决瓶颈问题大有裨益。对于要“打扫”的代码，首先得
弄清楚这些代码是否真的对运作程序有用，或者值不值得我们去一行行“摆放”整洁。如果整洁的代码从正确性和性能角度出发更有意义，那么不用犹豫，立马开工
吧。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">写出整洁的代码固然好，但是如果需要牺牲性能作用，那么请三思而后行。各位，你的选择呢？</span> 
</p>
<p style=\"text-indent:2em;\">
	<br />
</p>','html5tricks','http://news.html5tricks.com/clean-code-vs-great-code.html','','代码,美女','3','N','N','','','0','0','N','1404136039','0','Y','0','Y','1404110691');
INSERT INTO `yiif_post` VALUES('26','1','微软偷了我的创意 狂赚几十亿美元','','','','','2','0','一位开发人员近日宣称，微软剽窃了自己的创意，并利用它在浏览器大战中取得胜利，现在，微软又用这项专利来从 Android 身上赚钱，每位 Android 用户都要被他们搜刮一下，这位开发人员呼吁大家共同谴责微软的行为。','','','','','<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">一位开发人员近日宣称，微软剽窃了自己的创意，并利用它在浏览器大战中取得胜利，现在，微软又用这项专利来从 Android 身上赚钱，每位 Android 用户都要被他们搜刮一下，这位开发人员呼吁大家共同谴责微软的行为。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">美国开发人员 Rob Morris 表示，自己曾经创建了软件开发公司V_Graph，并开发了一个浏览器组件，名为“web 
widgets”，它允许开发人员将 Web 内容添加到自己的应用程序中。1996 年，V_Graph 曾接触微软，并打算将“web 
widgets”卖给微软，但后来由于种种原因，双方未达成交易。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">但是，几个月后，微软发布了 IE3.0，在这款浏览器中使用了类似V_Graph 的技术。据 Morris 回忆，微软在 1997 年无耻地递交了这款浏览器组件的专利申请，并在 2000 年 8 月获得了美国专利6,101,510。</span> 
</p>
<p>
	<img class=\"aligncenter\" src=\"http://news.html5tricks.com/wp-content/uploads/2014/06/8db0ec3b1d20bacba1226799e3a8bb4a.jpg\" alt=\"开发人员：微软偷了我的创意狂赚几十亿美元\" /> 
</p>
<p style=\"text-align:center;text-indent:2em;\">
	<span style=\"font-size:14px;\">IE3</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">V_Graph 瞬间垮掉，不仅是V_Graph，Morris 表示，这个浏览器组件还让微软取得了与 AOL 的合作，打败了网景导航者（Netscape Navigator）。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">现在，同样的技术也被用在其它应用程序中，包括 Android，因为微软授权给 Google 使用该技术，并获取了数十亿美元的版权税。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">Morris 说：“我们认为这个坏专利目前影响每一个智能手机和平板机用户。微软将这项技术作为他们操作系统的一部分开卖时，我们虽然觉得十分可恶，但还只是伤害了我的公司。然而现如今，微软靠着专利授权获得了数十亿暴利，而这些都出自 Android 用户。”</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">Morris 在网上发起了请愿书，称之为“自由浏览器”(Free the 
Browser)，希望公众能帮助他。“我们想为这个专利而战，虽然不能弥补过去，但最起码我们可以共同努力，阻止他们再对此收费。”根据请愿书中所
说，Morris 并不是为了钱，只是想为 Android 用户讨回公道，不再被搜刮。</span> 
</p>
<p align=\"center\">
	<img class=\"aligncenter\" src=\"http://news.html5tricks.com/wp-content/uploads/2014/06/228f6a15d932e0094cd996e86892fd8e.jpg\" alt=\"开发人员：微软偷了我的创意狂赚几十亿美元\" /> 
</p>
<p style=\"text-align:left;text-indent:2em;\" align=\"center\">
	<span style=\"font-size:14px;\">来源：</span><a href=\"http://news.mydrivers.com/1/310/310144.htm\" target=\"_blank\"><span style=\"font-size:14px;\">驱动之家</span></a> 
</p>
<p style=\"text-indent:2em;\">
	<br />
</p>','html5tricks','http://news.html5tricks.com/microsoft-stole-my-idea.html','','微软,创意','1','N','N','','','0','0','N','1404120826','0','Y','0','Y','1404110844');
INSERT INTO `yiif_post` VALUES('27','1','谷歌I/O大会或发布新机顶盒 挑战苹果亚马逊','','','','','2','0','新浪科技  北京时间6月25日晚间消息，《华尔街日报》今日援引知情人士的消息称，在周三的谷歌(564.62, -0.33, -0.06%)I/O开发者大会上，谷歌将至少发布一款小型机顶盒设备，类似于Roku、亚马逊(324.16, -3.88, -1.19%)Fire TV和Apple TV等机顶盒产品。','','','','','<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">北京时间6月25日晚间消息，《华尔街日报》今日援引知情人士的消息称，在周三的谷歌(</span><span style=\"color:red;font-size:14px;\">564.62</span><span style=\"font-size:14px;\">,&nbsp;</span><span style=\"color:red;font-size:14px;\">-0.33</span><span style=\"font-size:14px;\">,&nbsp;</span><span style=\"color:red;font-size:14px;\">-0.06%</span><span style=\"font-size:14px;\">)I/O开发者大会上，谷歌将至少发布一款小型机顶盒设备，类似于Roku、亚马逊(</span><span style=\"color:red;font-size:14px;\">324.16</span><span style=\"font-size:14px;\">,&nbsp;</span><span style=\"color:red;font-size:14px;\">-3.88</span><span style=\"font-size:14px;\">,&nbsp;</span><span style=\"color:red;font-size:14px;\">-1.19%</span><span style=\"font-size:14px;\">)Fire TV和Apple TV等机顶盒产品。</span> 
</p>
<p>
	<a href=\"http://news.html5tricks.com/wp-content/uploads/2014/06/google-io-new-machine.jpg\"><img class=\"alignnone size-full wp-image-306\" title=\"google-io-new-machine\" src=\"http://news.html5tricks.com/wp-content/uploads/2014/06/google-io-new-machine.jpg\" alt=\"\" height=\"142\" width=\"553\" /></a> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">该知情人士称，谷歌机顶盒将采用谷歌最新的Android TV软件，支持电影、游戏和其他内容。有趣的是，该机顶盒将采用其他公司品牌，而不是谷歌品牌。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">当前，微软(</span><span style=\"color:red;font-size:14px;\">41.74</span><span style=\"font-size:14px;\">,&nbsp;</span><span style=\"color:red;font-size:14px;\">-0.24</span><span style=\"font-size:14px;\">,&nbsp;</span><span style=\"color:red;font-size:14px;\">-0.58%</span><span style=\"font-size:14px;\">)、亚马逊和苹果(</span><span style=\"color:red;font-size:14px;\">90.28</span><span style=\"font-size:14px;\">,&nbsp;</span><span style=\"color:red;font-size:14px;\">-0.55</span><span style=\"font-size:14px;\">,&nbsp;</span><span style=\"color:red;font-size:14px;\">-0.61%</span><span style=\"font-size:14px;\">)等科技公司均推出了自己的机顶盒产品。其中亚马逊Fire TV售价99美元，支持视频和游戏等功能，希望长期推动自己的在线零售业务。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">去年12月，谷歌将自己的机顶盒制造部门Motorola Home以23.5亿美元出售给Arris Group。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">除了机顶盒，业界还预计谷歌在今年的I/O开发者大会上还可能展示基于Android Wear平台的可穿戴设备、发布新版Android系统，以及展示Android车载系统等。(李明)</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\"></span> 
</p>','html5tricks','http://news.html5tricks.com/google-io-new-machine.html','','亚马逊,谷歌,机顶盒,苹果','2','N','N','','','0','0','N','1404121102','0','Y','0','Y','1404110940');
INSERT INTO `yiif_post` VALUES('28','1','告别公用云，Instagram已将服务迁至Facebook数据中心','','','','','3','0','据悉，Instagram已基本完成AWS到Facebook数据中心的迁移。整个过程中，任务的难点在于服务可用性的保持，从而解决Facebook内部数据中心与EC2上的IP冲突成为关键，最小化基础设施级改变避免操作复杂性同样至关重要。 ','','','','','<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">据 </span><a href=\"http://instagram-engineering.tumblr.com/post/89992572022/migrating-aws-fb\" target=\"_blank\"><span style=\"font-size:14px;\">Instagram</span></a><span style=\"font-size:14px;\">消
息，该公司已基本完成AWS到Facebook基础设施的迁移。听到这个消息，笔者并不惊讶。首先，社交巨头拥有自己的大规模数据中心；其次，作为风头正
劲的互联网公司之一，社交巨头拥有着大量的服务，其技术堆栈及API可以轻易满足Instagram的架构需求；再次，在Facebook规模，不管是从
成本，还是从性能及可用性上看，迁移都是上上之选。最后，避免平台的约束和锁定，Instagram将有更大的发展空间。</span><b><span style=\"font-size:14px;\">言归正传，下面我们看一些博文摘译：</span></b> 
</p>
<blockquote style=\"margin-left:3em ! important;font-style:normal ! important;color:#777777;text-indent:2em;\">
	<p>
		<span style=\"font-size:14px;\">在2012年加入Facebook之后，我们就发现了多个与Facebook基础设施的集成点，这将允许我们更加快速的开发产品，同时还能提高社区的安全性。开始时，我们使用的是ad-hoc端点接入，但是随后就发现这限制了我们的敏捷性及Facebook服务的利用率。</span> 
	</p>
	<p>
		<span style=\"font-size:14px;\">在2013年4月后，我们开始大规模的迁移到Facebook数据中心，其中的重点是服务可用性的平稳过渡，以及最小化基础设施级改变来避免其中的操作复杂性。开始时非常简单，在EC2和Facebook的一个数据中心之间建立连接，然后一块一块的迁移。</span> 
	</p>
	<p>
		<span style=\"font-size:14px;\">但是随后就发现事情并非那么容易，主要的问题就是Facebook私有IP空间和EC2的冲突。我们的方法是，首先使用Amazon的
Virtual&nbsp;Private&nbsp;Cloud（VPC），随后使用Amazon&nbsp;Direct&nbsp;Connect将之与Facebook连接。</span> 
	</p>
	<p>
		<span style=\"font-size:14px;\">鉴于每天都会开启新的EC2实例，这个任务看起来非常艰巨。为了最小化服务停机时间以及操作复杂性，EC2和VPC实例是否在同一个网络至关重要。AWS并没有提供安全组或者私有EC2与VPC网络的共享方式，公共地址空间成为两个私有网络的唯一通信渠道。</span> 
	</p>
	<p>
		<span style=\"font-size:14px;\">因此，我们发明了Neti，一个动态的iptables操作守护进程，使用Python编写，通过ZooKeeper支撑。Neti不仅提
供了缺少的安全组功能，还为每个实例都提供了单独的地址，不管是EC2还是VPC。Neti管理了数千个NAT以及实例上的过滤规则，从而保证了独立的、
flat&nbsp;“overlay”安全通信。NAT规则会为实例选择一个最有效的通信途径，跨越VPC和EC2边界时会选择公共网络，内部通信则会选择私有网
络。这些对我们的应用和后端系统都是透明的，因为Neti会提供一个恰当的iptables规则。</span> 
	</p>
	<p>
		<span style=\"font-size:14px;\">从EC2到VPC花费了大约3周时间，随后所有实例就运行在一个兼容的地址空间，下一个阶段无疑就是迁移到Facebook数据中心。</span> 
	</p>
	<p>
		<span style=\"font-size:14px;\">多来以来，Instagram围绕EC2建立了一整套生产系统管理工具，其中包括配置管理脚本，用于服务开通的Chef，以及服务于运营任务的Fabric，从应用到数据库，这些针对EC2环境的工具都将不适用于数据中心环境。</span> 
	</p>
	<p>
		<span style=\"font-size:14px;\">为了给这些工具提供可移植性，我们使用了LXC。配置工具用于建立基础系统，Chef则运行在container中，用以安装和配置
Instagram特定软件。为了支撑横跨EC2及Facebook数据中心的基础设施，当下的Chef加入了新的逻辑用以支撑Facebook内部使用
的CentOS，之前在EC2上使用的是Ubuntu。同时，用于基础任务的EC2命令行工具也被一个全新的工具代替，它被设计成了一个抽象层，提供了类
似EC2工作流中的环境，为技术和人们使用方式做过渡。在这些都完成后，VPC到数据中心的迁移只花费了两周。</span> 
	</p>
</blockquote>
<p style=\"text-indent:2em;\">
	<b><span style=\"font-size:14px;\">写在最后</span></b> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">对于Instagram来说，迁移可以带来显而易见的好处，同时，我们也相信会有更多这个类型的应用被收购后会做出类似的举措，比如未来我们可能会
看到WhatsApp迁离SoftLayer。然而对于云服务提供商来说，这绝对不是件想看到的事情，Instagram之类的到还好说，如果是
Netflix这样的合作伙伴，撇开直接收入，生态圈受到的影响显然更加深远。</span> 
</p>
<p style=\"text-indent:2em;\">
	<br />
</p>','','','','facebook','5','N','N','','','0','0','N','1405306037','0','Y','0','Y','1404183197');
INSERT INTO `yiif_post` VALUES('29','1','Yii 框架创建自己的 web 应用','','','','','1','0','Yii 是当今国内外最为流行的 PHP 框架。由于它高性能的特性，被公认为是“最有效率的 PHP 框架”。Yii 提供了今日 Web 2.0 应用开发所需要的几乎一切功能。它可以通过一个简单的命令 yiic 来快速创建一个 Web 应用程序的代码框架，开发人员通过在生成的代码框架上编写自己的业务逻辑，来实现 Web 应用的快速开发。本文将通过具体的实例对 Yii 框架进行阐述，使读者在真实的案例中去学习如何使用 Yii 框架创建自己的 Web 应用，从而对这个优秀的 PHP 框架有个更真实的体验。','','','','','<h2 style=\"text-indent:2em;\" id=\"major1\">
	Yii 框架概述
</h2>
<h3 style=\"text-indent:2em;\" id=\"minor1.1\">
	Yii 是什么？
</h3>
<p style=\"text-indent:2em;\">
	Yii 是一个高性能的、基于组件的 PHP 框架，用于 Web 应用程序的快速开发。
</p>
<p style=\"text-indent:2em;\">
	Yii 的名字来源于“Yes It Is”的字母缩写。这句话肯定地回答了众多关于这个框架的疑问：“它是否快速？是否安全？是否强大？是否适合我们的项目？”
</p>
<h3 style=\"text-indent:2em;\" id=\"minor1.2\">
	Yii 适合做什么？
</h3>
<p style=\"text-indent:2em;\">
	Yii 是一个通用的轻量级 Web 编程框架，可以用于开发几乎所有的 Web 应用。具备它成熟的缓存机制，特别适用于开发高流量的应用，例如门户网站，论坛，内容管理系统（CMS），电子商务系统等等。
</p>
<h3 style=\"text-indent:2em;\" id=\"minor1.3\">
	Yii 和其他软件相比有哪些优势？
</h3>
<p style=\"text-indent:2em;\">
	和大多数 PHP 框架类似，Yii 是一个 MVC 框架，通过分离业务逻辑和用户界面，使开发者可以很容易地进行修改而不影响其它部分。
</p>
<p style=\"text-indent:2em;\">
	Yii 在设计时借鉴和集成了很多其他著名 Web 编程框架和应用，最大程度地考虑了 Web 应用开发的各种需要。所以 Yii 无论是在优异的性能上，还是丰富的功能和清晰的文档上，都使得它从众多 PHP 框架中脱颖而出。
</p>
<p style=\"text-indent:2em;\" class=\"ibm-ind-link ibm-back-to-top\">
	<br />
</p>
<h2 style=\"text-indent:2em;\" id=\"major2\">
	Yii 的安装及配置
</h2>
<h3 style=\"text-indent:2em;\" id=\"minor2.1\">
	安装前的准备
</h3>
<p style=\"text-indent:2em;\">
	在
安装和使用 Yii 之前，你需要有一个安装好 PHP 和 Web 
服务器的环境。目前，有很多集成环境软件可以轻松的实现这部分的安装。比如我们在这里使用的 WampServer。你可以从 WampServer 
的官方网站上下载和安装。WampServer 的安装非常简单，双击执行就可以了。安装过程中，它会自动为你安装 Apache， MySQL 和 
PHP，不需要任何额外的配置，一切都完成得既轻松又简单。
</p>
<h3 style=\"text-indent:2em;\" id=\"minor2.2\">
	Yii 的安装
</h3>
<p style=\"text-indent:2em;\">
	Yii 的安装更是简单得让你难以想象，只需要执行下面两个步骤，就可以开始使用了。
</p>
<p style=\"text-indent:2em;\">
	一：从 Yii 的官方网站下载 Yii 框架
</p>
<p style=\"text-indent:2em;\">
	二：把下载的文件解压缩到一个 Web 可以访问的文件夹里
</p>
<p style=\"text-indent:2em;\">
	如果想验证 Yii 是否安装成功，只需要在浏览器中输入下面的 URL 就可以了。
</p>
<div class=\"codesection\">
<pre class=\"displaycode\">
<pre class=\"prettyprint lang-php\">http://hostname/path/to/yii/requirements/index.php</pre>
<br />
</pre>
</div>
<p style=\"text-indent:2em;\">
	下面是我们从浏览器里看到的页面显示。
</p>
<h5 style=\"text-indent:2em;\" id=\"fig1\">
	图 1. Yii 安装成功的页面显示
</h5>
<p style=\"text-indent:2em;\">
	<img alt=\"图 1. Yii 安装成功的页面显示\" src=\"http://www.ibm.com/developerworks/cn/opensource/os-cn-yii/images/image001.jpg\" width=\"581\" /> 
</p>
<p style=\"text-indent:2em;\" class=\"ibm-ind-link ibm-back-to-top\">
	<br />
</p>
<h2 style=\"text-indent:2em;\" id=\"major3\">
	如何使用 Yii 创建 Web 应用
</h2>
<h3 style=\"text-indent:2em;\" id=\"minor3.1\">
	使用命令行工具 yiic 创建 web 应用
</h3>
<p style=\"text-indent:2em;\">
	Yiic 是一个命令行工具，通过它，你可以通过简单的使用一条命令，来创建一个完整的应用。
</p>
<p style=\"text-indent:2em;\">
	YiiRoot/framework/yiic webapp WebRoot/testdrive
</p>
<p style=\"text-indent:2em;\">
	比如：C:\\wamp\\www\\yii\\framework&gt;yiic.bat webapp c:\\wamp\\www\\abc
</p>
<p style=\"text-indent:2em;\">
	这条命令在 www 目录下面自动为你创建了一个名为 abc 的 Yii 的代码框架。你可以通过下面这个 URL 在本地访问这个刚刚创建的应用。
</p>
<p style=\"text-indent:2em;\">
	http://localhost/abc/index.php
</p>
<p style=\"text-indent:2em;\">
	下图就是我们刚刚创建的 Web 应用
</p>
<h5 style=\"text-indent:2em;\" id=\"fig2\">
	图 2. 使用 yiic 创建的 Web 应用
</h5>
<p style=\"text-indent:2em;\">
	<img alt=\"图 2. 使用 yiic 创建的 Web 应用\" src=\"http://www.ibm.com/developerworks/cn/opensource/os-cn-yii/images/image002.jpg\" width=\"582\" /> 
</p>
<p style=\"text-indent:2em;\" class=\"ibm-ind-link ibm-back-to-top\">
	<br />
</p>
<h2 style=\"text-indent:2em;\" id=\"major4\">
	实例讲解基于 Yii 的测试数据维护系统的实现
</h2>
<p style=\"text-indent:2em;\">
	我们通过一个简单的测试数据维护系统来向大家演示如何使用 Yii framework 快速开发一个 Web 应用，来满足我们工作上的需要。
</p>
<p style=\"text-indent:2em;\">
	下面我来简要介绍一下这个 web 应用的基本需求：
</p>
<p style=\"text-indent:2em;\">
	这个 Web 应用主要实现对测试数据的维护和存储，包括增删改查等基本的功能。测试数据由两个二维表组成，两个表之间是“头 - 明细”的关系。所有数据存放在关系型数据库中，方便统计查询和日后的扩展。
</p>
<h3 style=\"text-indent:2em;\" id=\"minor4.1\">
	应用程序的设计和准备
</h3>
<p style=\"text-indent:2em;\">
	<strong>功能需求</strong> 
</p>
<p style=\"text-indent:2em;\">
	最基本的功能就是“增删改查”。这里就是分别对测试数据的主表和明细表两个表的进行增删改查的操作。
</p>
<p style=\"text-indent:2em;\">
	要求使用者用各自的用户登录使用，并记录最近修改人和日期。
</p>
<p style=\"text-indent:2em;\">
	<strong>数据库的选择和设计</strong> 
</p>
<p style=\"text-indent:2em;\">
	选用 SQLite 进行数据的存储。
</p>
<p style=\"text-indent:2em;\">
	SQLite 是一种小型的嵌入式数据库，它小巧灵活，资源占用少，处理速度快，非常适合中小型应用的数据存储。由于其各方面的出色表现，得到越来越多的开发人员的青睐。
</p>
<p style=\"text-indent:2em;\">
	<strong>创建表：</strong> 
</p>
<p style=\"text-indent:2em;\">
	根据应用程序的需要，我们将测试数据分别存放在两张表中。一个是主表，存放文件信息（file）；另一个是明细表，存在文件中的内容信息（pii）。两个表之间是“头 - 明细”的关系。
</p>
<h5 style=\"text-indent:2em;\" id=\"listing1\">
	<span style=\"font-size:14px;\">清单 1. 创建表 pii 和 file 的 SQL 语句</span>
</h5>
<div class=\"codesection\">
<pre class=\"displaycode\"> 

<pre class=\"prettyprint\">CREATE TABLE file ( 
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, 
    Package VARCHAR(50) NOT NULL, 
    PiiFile VARCHAR(255) NOT NULL, 
    FileInServer VARCHAR(255), 
    Comment VARCHAR(255) 
 ) 
 CREATE TABLE \"pii\" ( 
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, 
    PiiFileId INTEGER NOT NULL, 
    PiiStr VARCHAR(1000) NOT NULL, 
    CaseNo VARCHAR(18) default \'-\', 
    Category VARCHAR(50), 
    Shipment INTEGER, 
    UpdatedAt DATETIME, 
    ModifiedBy VARCHAR(30), 
    Comment VARCHAR(255) 
 )</pre>
</pre>
</div>
<p style=\"text-indent:2em;\">
	<strong>数据初始化：</strong> 
</p>
<p style=\"text-indent:2em;\">
	使用 SQLite Manager 导入数据。SQLite Manager 是一个 Firefox 的插件，可以方便的管理和维护 SQLite 数据库。
</p>
<p style=\"text-indent:2em;\">
	将
准备好的测试数据整理成 csv, txt 等格式，通过 SQLite Manager 
进行导入。数据即可快速准备就绪。所有的数据都存放在嵌入式数据库 SQLite 中。在应用程序框架建立后，我们将准备好的数据库文件复制到目录 
C:\\wamp\\www\\pii\\protected\\data 下。
</p>
<h3 style=\"text-indent:2em;\" id=\"minor4.2\">
	创建应用程序框架
</h3>
<p style=\"text-indent:2em;\">
	在上面我们提到“使用命令行工具 yiic 创建 web 应用”，这里，我们就演示一下如何通过命令行的方式来创建一个应用程序。
</p>
<div class=\"codesection\">
<pre class=\"displaycode\"> C:\\wamp\\www\\yii\\framework&gt;yiic.bat webapp c:\\wamp\\www\\pii</pre>
</div>
<p style=\"text-indent:2em;\">
	这条命令在 www 目录下面自动为你创建了一个名为 pii 的 Yii 的代码框架。你可以通过下面这个 URL 在本地访问这个刚刚创建的应用。
</p>
<p style=\"text-indent:2em;\">
	http://localhost/pii/index.php
</p>
<p style=\"text-indent:2em;\">
	这时，我们看到 web 页面上有 4 个缺省的 tab：“Home”，“About”，“Contact”和“Login”。下面我们将在页面上加入一些基本功能的实现。
</p>
<h3 style=\"text-indent:2em;\" id=\"minor4.3\">
	加入基本功能
</h3>
<p style=\"text-indent:2em;\">
	<strong>实现表的 CRUD 功能</strong> 
</p>
<p style=\"text-indent:2em;\">
	首先，我们需要实现对文件信息的增删改查，即对表 file 中的数据进行操作和维护。
</p>
<p style=\"text-indent:2em;\">
	<strong>1. 连接数据库：</strong> 
</p>
<p style=\"text-indent:2em;\">
	将准备好的数据库文件 pii.sqlite 放置在 C:\\wamp\\www\\pii\\protected\\data 目录下。
</p>
<p style=\"text-indent:2em;\">
	在文件 C:\\wamp\\www\\pii\\protected\\config\\main.php 中，定义使用的数据库文件。
</p>
<h5 style=\"text-indent:2em;\" id=\"listing2\">
	<span style=\"font-size:14px;\">清单 2. 定义数据库文件</span>
</h5>
<div class=\"codesection\">
<pre class=\"displaycode\">
<pre class=\"prettyprint lang-php\">\'db\'=&gt;array( 
 \'connectionString\' =&gt; \'sqlite:\'.dirname(__FILE__).\'/../data/pii.sqlite\', 
     ),</pre>
<br />
</pre>
</div>
<p style=\"text-indent:2em;\">
	<strong>2. 配置 Gii 代码生成器</strong> 
</p>
<p style=\"text-indent:2em;\">
	Gii 是一个强大 web 应用代码生成器，可以取代或者简化开发者的工作量，自动生成代码实现标准的功能模块。在使用前，我们需要对文件 C:\\wamp\\www\\pii\\protected\\config\\main.php 做些定义。
</p>
<h5 style=\"text-indent:2em;\" id=\"listing3\">
	<span style=\"font-size:14px;\">清单 3. 配置 Gii 代码生成器</span>
</h5>
<div class=\"codesection\">
<pre class=\"displaycode\">
<pre class=\"prettyprint lang-php\">\'import\'=&gt;array( 
    \'application.models.*\', 
    \'application.components.*\', 
     ), 
  \'modules\'=&gt;array( 
    \'gii\'=&gt;array( 
      \'class\'=&gt;\'system.gii.GiiModule\', 
      \'password\'=&gt;\'password\', 
       ), 
     ),</pre>
<br />
</pre>
</div>
<p style=\"text-indent:2em;\">
	定义之后，我们可以通过 URL http://hostname/pii/index.php?r=gii 来访问 Gii。
</p>
<h5 style=\"text-indent:2em;\" id=\"fig3\">
	<span style=\"font-size:14px;\">图 3. Gii 代码生成器</span>
</h5>
<p style=\"text-indent:2em;\">
	<img alt=\"图 3. Gii 代码生成器\" src=\"http://www.ibm.com/developerworks/cn/opensource/os-cn-yii/images/image003.jpg\" width=\"503\" /> 
</p>
<h3 style=\"text-indent:2em;\" id=\"listing4\">
	3. 使用 Gii 为数据表建模
</h3>
<p style=\"text-indent:2em;\">
	在 Gii 中，我们将使用 Model Generator 为数据库中的表建模。我们选择 Model Generator 之后，可以看到下面的页面。
</p>
<h5 style=\"text-indent:2em;\" id=\"fig4\">
	图 4. 使用 Model Generator 生成模块代码
</h5>
<p style=\"text-indent:2em;\">
	<img alt=\"图 4. 使用 Model Generator 生成模块代码\" src=\"http://www.ibm.com/developerworks/cn/opensource/os-cn-yii/images/image004.jpg\" width=\"517\" /> 
</p>
<p style=\"text-indent:2em;\">
	预览并生成代码，这个生成器会在 protected/models 生成模块文件 File.php。
</p>
<p style=\"text-indent:2em;\">
	<strong>4. 为表创建 CRUD 代码</strong> 
</p>
<p style=\"text-indent:2em;\">
	有了模块文件，我们需要使用 Gii 中的 Crud Generator 为这个模块生成 CRUD 代码。
</p>
<h5 style=\"text-indent:2em;\" id=\"fig5\">
	图 5. 使用 CRUD 生成器生成代码
</h5>
<p style=\"text-indent:2em;\">
	<img alt=\"图 5. 使用 CRUD 生成器生成代码\" src=\"http://www.ibm.com/developerworks/cn/opensource/os-cn-yii/images/image005.jpg\" width=\"582\" /> 
</p>
<p style=\"text-indent:2em;\">
	这时，通过 http://localhost/pii/index.php?r=file，你就可以看到 File 的维护界面了。
</p>
<h5 style=\"text-indent:2em;\" id=\"fig6\">
	图 6. 生成的 Files 维护界面
</h5>
<p style=\"text-indent:2em;\">
	<img alt=\"图 6. 生成的 Files 维护界面\" src=\"http://www.ibm.com/developerworks/cn/opensource/os-cn-yii/images/image006.jpg\" width=\"582\" /> 
</p>
<p style=\"text-indent:2em;\">
	使用同样的方法，我们也可以为明细表 pii 创建了相应的 php 文件和维护页面。
</p>
<p style=\"text-indent:2em;\">
	<strong>5. 将创建的功能加入到 Web 应用中</strong> 
</p>
<p style=\"text-indent:2em;\">
	下面，我们要介绍如何把刚刚创建的功能加入到 Web 应用中。首先，我们需要对文件 C:\\wamp\\www\\pii_OK\\protected\\views\\layouts\\main.php 进行一点修改。
</p>
<p style=\"text-indent:2em;\">
	在
这个文件里，我们可以根据自己的需要来定制将要显示的页面。比如，看下面的代码，我们做了两处改动：第一是取消了 Home 和 Contact 两个 
tab 的显示，我们通过加“//”注释了这两行代码。第二是增加了两个 tab：Files 和 
PIIs，新增加的两行代码实现了显示上面步骤里我们创建的两个页面。
</p>
<h5 style=\"text-indent:2em;\" id=\"listing5\">
	<span style=\"font-size:14px;\">清单 4. 自定义标签页</span>
</h5>
<div class=\"codesection\">
<pre class=\"displaycode\"> 

<pre class=\"prettyprint lang-html\">&lt;div id=\"mainmenu\"&gt; 
   &lt;?php $this-&gt;widget(\'zii.widgets.CMenu\',array( 
    \'items\'=&gt;array( 
       // array(\'label\'=&gt;\'Home\', \'url\'=&gt;array(\'/site/index\')), 
       array(\'label\'=&gt;\'Files\', \'url\'=&gt;array(\'/file/admin\')),  // new added
	   array(\'label\'=&gt;\'PIIs\', \'url\'=&gt;array(\'/pii/admin\')),   // new added
       array(\'label\'=&gt;\'About\', \'url\'=&gt;array(\'/site/page\', \'view\'=&gt;\'about\')), 
       // array(\'label\'=&gt;\'Contact\', \'url\'=&gt;array(\'/site/contact\')), 
       array(\'label\'=&gt;\'Login\', \'url\'=&gt;array(\'/site/login\'), 
       \'visible\'=&gt;Yii::app()-&gt;user-&gt;isGuest), 
       array(\'label\'=&gt;\'Logout (\'.Yii::app()-&gt;user-&gt;name.\')\', 
       \'url\'=&gt;array(\'/site/logout\'), \'visible\'=&gt;!Yii::app()-&gt;user-&gt;isGuest)
     ), 
   )); ?&gt; 
 &lt;/div&gt;&lt;!-- mainmenu --&gt;</pre>
</pre>
</div>
<p style=\"text-indent:2em;\">
	现在来看看效果吧。果然，Home 和 Contact 页面不见了，取代它们的是 Files 和 PIIs 页面。
</p>
<h5 style=\"text-indent:2em;\" id=\"fig7\">
	<span style=\"font-size:14px;\">图 7. 加入了 Files 和 PIIs 的 Web 应用</span>
</h5>
<p style=\"text-indent:2em;\">
	<img alt=\"图 7. 加入了 Files 和 PIIs 的 Web 应用\" src=\"http://www.ibm.com/developerworks/cn/opensource/os-cn-yii/images/image007.jpg\" width=\"581\" /> 
</p>
<p style=\"text-indent:2em;\">
	通过这一步，我们将新创建的两个数据表 DRUD 的应用就添加到我们的网页中了。我们已经可以直接通过这两个页面来维护表里面的数据了。
</p>
<h3 style=\"text-indent:2em;\" id=\"minor4.4\">
	完善功能
</h3>
<p style=\"text-indent:2em;\">
	到
目前为止，一个关于数据表维护的 Web 
应用的主要功能就基本实现了。当然，我们经常会根据自己使用上的需要对现有的功能做一些完善。比如，我们需要对最后一个修改数据的人和日期做一个记录，我
们需要隐藏一些字段的显示，调整一些字段的显示顺序，我们可能还需要增加一些用户来使用这个系统。因为大部分的代码框架已经通过 Gii 
实现了，我们只需要在此基础上做一些简单的添加和修改，就可以实现我们所需要的功能。现在，我们用记录最后修改人和修改日期为例，看看我们如何通过修改一
些代码来完善想要的功能的。
</p>
<p style=\"text-indent:2em;\">
	比如，我们需要记录对 Pii 数据表最后做修改的用户和日期信息。我们首先要找到维护 Pii 表的那个 PHP 文件。在这个例子中，是文件 C:\\wamp\\www\\pii\\protected\\models\\Pii.php。我们在文件的最后增加下面的代码：
</p>
<h5 style=\"text-indent:2em;\" id=\"listing6\">
	<span style=\"font-size:14px;\">清单 5. 记录修改日期和用户名</span>
</h5>
<p>
<pre class=\"prettyprint lang-php\"> public function beforeSave() 
   { 
     date_default_timezone_set(\"Asia/Shanghai\"); 
     $this-&gt;UpdatedAt=date(\'Y-m-d H:i:s\'); 
     $this-&gt;ModifiedBy=Yii::app()-&gt;user-&gt;name; 
     return parent::beforeSave(); 
   }</pre>
</p>
<p style=\"text-indent:2em;\">
	这段代码在保存数据前为 UpdateAt 和 ModifiedBy 
字段设置了用户名和修改日期，然后调用了父类的 beforeSave 方法。保存之后，你会发现，在页面上修改 Pii 数据之后，Updated 
At 和 Modified By 字段的值被自动填入了默认的内容。
</p>
<h5 style=\"text-indent:2em;\" id=\"fig8\">
	图 8. 自动填写 Updated At 和 Modified By 字段
</h5>
<p style=\"text-indent:2em;\">
	<img alt=\"图 8. 自动填写 Updated At 和 Modified By 字段\" src=\"http://www.ibm.com/developerworks/cn/opensource/os-cn-yii/images/image008.jpg\" width=\"582\" /> 
</p>
<p style=\"text-indent:2em;\" class=\"ibm-ind-link ibm-back-to-top\">
	<br />
</p>
<h2 style=\"text-indent:2em;\" id=\"major5\">
	结束语
</h2>
<p style=\"text-indent:2em;\">
	通
过这篇文章，我们了解了 Yii 这个当今最为流行的 PHP 框架，并通过搭建一个测试数据维护系统的具体实例，学习了如何使用 Yii 
框架来创建一个 Web 应用。在这个实例中，我们还通过使用 Gii 代码生成器为应用自动创建代码框架，更好地体会到 Yii 在创建 Web 
应用上的快捷优势。我们期待这篇文章能起到一个“抛砖引玉”的作用，希望更多的人了解和使用这个框架，并开发出更多更好的应用。
</p>
<p style=\"text-indent:2em;\">
	<br />
</p>','developworks','http://www.ibm.com/developerworks/cn/opensource/os-cn-yii/','','web,yii','3','N','N','','','0','0','N','1407137088','0','Y','0','Y','1407136800');
INSERT INTO `yiif_post` VALUES('30','1','阅读jQuery源代码带给我们的18个惊喜','','','','','2','0','相信大家都非常熟悉jQuery类库，绝对最受欢迎的JS框架，如果你也有兴趣阅读v源代码的话，或者你也会有同感。以下便是阅读jQuery源代码后挖掘的18条令人惊奇的信息：1. sizzle的大小Sizzle是用来帮助jQuery实现','','','','','<p>
	相信大家都非常熟悉jQuery类库，绝对最受欢迎的JS框架，如果你也有兴趣阅读v源代码的话，或者你也会有同感。
</p>
<p>
	以下便是阅读jQuery源代码后挖掘的18条令人惊奇的信息：
</p>
<h2>
	1. sizzle的大小
</h2>
<p>
	Sizzle是用来帮助jQuery实现DOM查询操作的引擎，可能你不知道它占用了jQuery源代码的22%。
</p>
<p>
	其次最大的特性是$.ajax，占用了jQuery源代码中的8%。
</p>
<h2>
	2. $.grep
</h2>
<p>
	这个方法类似underscore中的_.filter方法，使用两个参数，一个数组变量和一个回调函数，返回通过回调函数为true的元素。
</p>
<h2>
	3. 冒泡提醒
</h2>
<p>
	jQuery特意的阻止了一个事件类型的气泡。这就是load事件，jQuery传递了一个特别的noBubble:true来阻止事件冒泡到window对象（这可能导致错误的匹配了window.load事件）
</p>
<h2>
	4. 缺省的动画速度
</h2>
<p>
	jQuery通过快速的变化元素样式属性来实现动画。每一个变化被叫做一个\"滴答\"。缺省的动画速度是每13毫秒滴答一次，你可以通过重写jQuery.fx.interval来修改缺省的值
</p>
<h2>
	5. $.fn.addClass接受一个方法
</h2>
<p>
	我们通常提供$.fn.addClass一个class定义名称。但是它同样可以支持方法。你只需要方法返回一个空格分隔的字符串class定义即可。这个方法甚至接受元素的索引为参数，这样我们可以构建自己的只能class名。
</p>
<h2>
	6. $.fn.removeClass同样支持
</h2>
<p>
	这个方法也可以支持接受方法为参数，和$.fn.addClass一样。
</p>
<h2>
	7. :empty伪选择器
</h2>
<p>
	这个伪选择器可以匹配所有没有子元素的元素
</p>
<h2>
	8. :lt和:gt伪选择器
</h2>
<p>
	这些伪选择器基于索引来匹配。例如，$(\'div:gt(2)\')将会返回所有的div除了前３个元素（基于０索引）。如果你提供一个负值，那么就从末尾算起。
</p>
<h2>
	9. $(document.ready()使用了promise
</h2>
<p>
	jQuery内部使用了jQuery的deferred来保证DOM完整被加载
</p>
<h2>
	10. $.type
</h2>
<p>
	大家可能都熟悉typeof来判断数据类型，但是你是否知道jQuery提供了.type()方法？这个方法比浏览器本地版本更智能。
</p>
<p>
	例如，typeof(new Number(3))返回了“object”，然而$.type(new Number(3))放回数字。
</p>
<p>
	更确切的说$.type告诉你返回对象的值类型
</p>
<h2>
	11. $.fn.queue
</h2>
<p>
	你可以使用$(\'div\').queue()来检查一个元素的特效队列。这对于你想了解多少个特效还保持在对象元素很有好处。
</p>
<p>
	更有用的在于，你可以直接操作队列来添加自己的特效，如下：<br />
<br />
<img alt=\"\\\" src=\"http://www.php100.com/uploadfile/2014/0804/20140804100813484.jpg\" style=\"width:774px;height:397px;\" />
</p>
<div>
	<div>
		<div>
			<div>
				<div>
					&nbsp;
				</div>
			</div>
		</div>
	</div>
</div>
<h2>
	12. Click事件针对禁用元素将失效
</h2>
<p>
	jQuery针对禁用的元素自动中断点击事件，这样可以有效优化保证让你不用书写更多代码来检测这种情况
</p>
<h2>
	13. $.fn.on 接受多个对象
</h2>
<p>
	你是否知道$.fn.on方法接受对象来添加多个事件？下面是例子：<br />
<br />
<img alt=\"\\\" src=\"http://www.php100.com/uploadfile/2014/0804/20140804100859826.jpg\" style=\"width:792px;height:277px;\" />
</p>
<div>
	<div>
		<div>
			<div>
				<div>
					&nbsp;
				</div>
				<div>
					&nbsp;
				</div>
			</div>
		</div>
	</div>
</div>
<h2>
	14. $.camelCase
</h2>
<p>
	这个方法帮助你将破折号风格字符串转化为驼峰拼写方式，如下：
</p>
<p>
	background-color 转化为 backgroundColor
</p>
<h2>
	15. $.active
</h2>
<p>
	调用$.active返回活动的XHR查询数量。这个可以用来强制限制同时处理多少个ajax请求
</p>
<h2>
	16. $.fn.parentsUntil/$.fn.nextUntil/$.fn.prevUntil
</h2>
<p>
	我过去非常熟悉.parents()，.next()和.prev()方法，但是不知道其它版本。
</p>
<p>
	他们匹配所有父层/下一个元素/上一个元素直到遇到了停止条件元素
</p>
<h2>
	17. $.fn.clone参数
</h2>
<p>
	这个方法带的参数可以通过传递参数true来帮助你确认拷贝数据属性和事件
</p>
<h2>
	18. 更多$.fn.clone参数
</h2>
<p>
	除了上面参数，你也可以通过传递另外一个参数true来克隆子元素的数据属性和事件，这叫做深层次克隆。
</p>
<p>
	第二参数缺省使用第一个参数值。如果你第一个参数为true，那么第二个参数也为true的话，就可以省略
</p>
<p>
	&nbsp;
</p>','php100','http://www.php100.com','','php,js,jquery','1','N','N','','','0','0','N','1407140334','0','Y','0','Y','1407140334');

DROP TABLE IF EXISTS `yiif_question`;
CREATE TABLE `yiif_question` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户',
  `realname` varchar(50) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `email` varchar(60) NOT NULL DEFAULT '' COMMENT '邮箱',
  `telephone` varchar(20) NOT NULL DEFAULT '' COMMENT '电话',
  `qq` varchar(12) DEFAULT NULL COMMENT 'qq',
  `question` text NOT NULL COMMENT '内容',
  `client_ip` varchar(15) DEFAULT NULL COMMENT 'ip',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='留言反馈表';

INSERT INTO `yiif_question` VALUES('1','0','zjh','326196998@qq.com','','','yiiCms是一款基于php5+mysql5开发的多功能开源的网站内容管理系统。使用高性能的PHP5的web应用程序开发框架YII构建，具有操作简单、稳定、安全、高效、跨平台等特点。采用MVC设计模式，模板定制方便灵活，内置小挂工具，方便制作各类功能和效果，yiicms可用于企业建站、个人博客、资讯门户、图片站等各类型站点。','','1379546643');

DROP TABLE IF EXISTS `yiif_recommend`;
CREATE TABLE `yiif_recommend` (
  `id` int(10) unsigned NOT NULL COMMENT '推荐位id',
  `content_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '推荐内容id',
  `sort_order` int(10) unsigned DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`,`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='推荐内容表';

INSERT INTO `yiif_recommend` VALUES('1','15','0');
INSERT INTO `yiif_recommend` VALUES('1','16','1');

DROP TABLE IF EXISTS `yiif_recommend_position`;
CREATE TABLE `yiif_recommend_position` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '推荐位id',
  `recommend_name` varchar(100) DEFAULT NULL COMMENT '推荐位名称',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '栏目类型',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='推荐位表';

INSERT INTO `yiif_recommend_position` VALUES('1','首页资讯推荐','1');
INSERT INTO `yiif_recommend_position` VALUES('2','首页图集推荐','2');
INSERT INTO `yiif_recommend_position` VALUES('3','首页软件推荐','3');
INSERT INTO `yiif_recommend_position` VALUES('4','图集视频推荐','4');
INSERT INTO `yiif_recommend_position` VALUES('5','首页商品推荐','5');

DROP TABLE IF EXISTS `yiif_reply`;
CREATE TABLE `yiif_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '回复id',
  `user_id` int(10) unsigned DEFAULT NULL COMMENT '用户id',
  `cid` int(10) unsigned DEFAULT NULL COMMENT '评论id',
  `reply_id` int(10) unsigned DEFAULT NULL COMMENT '上级回复的id',
  `content` text COMMENT '回复内容',
  `status` enum('Y','N') DEFAULT 'Y' COMMENT '显示状态',
  `create_time` int(10) unsigned DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='评论回复表';

INSERT INTO `yiif_reply` VALUES('2','1','33','0','正好五个字','Y','1402993685');
INSERT INTO `yiif_reply` VALUES('3','31','33','2','太没营养了吧 <img src=\"/static/public/emoticons/images/13.gif\" alt=\"\" border=\"0\" /><br />','Y','1402997219');
INSERT INTO `yiif_reply` VALUES('4','31','33','2','<pre class=\"prettyprint lang-php\">  phpinfo();</pre>','Y','1402998048');
INSERT INTO `yiif_reply` VALUES('5','31','33','2','<pre class=\"prettyprint lang-html\">&lt;link type=\"text/css\" rel=\"stylesheet\" href=\"./kindeditor/plugins/code/prettify.css\"/&gt;</pre>','Y','1402998870');
INSERT INTO `yiif_reply` VALUES('6','1','33','5','<pre class=\"prettyprint lang-php\">echo \"&lt;pre&gt;\";

echo \"谁说代码不能换行！！\";

</pre>','Y','1403184353');

DROP TABLE IF EXISTS `yiif_session`;
CREATE TABLE `yiif_session` (
  `id` char(32) NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` longblob,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='session表';

INSERT INTO `yiif_session` VALUES('8uq5b194mf1l23qqo24gkkko65','1407142511','');
INSERT INTO `yiif_session` VALUES('6asimlr9p2db62ecffk22itrl7','1407143972','admin__returnUrl|s:25:\"/www.yiifcms.com/?r=admin\";Yii.CCaptchaAction.8eb7a1e1.admin/default.captcha|s:4:\"hr3e\";Yii.CCaptchaAction.8eb7a1e1.admin/default.captchacount|i:5;admin__id|s:1:\"1\";admin__name|s:9:\"zjh_admin\";adminstatus|s:1:\"1\";adminnickname|s:9:\"zjh_admin\";admingroupid|s:2:\"10\";admingroupname|s:15:\"系统管理员\";adminemail|s:14:\"xb_zjh@126.com\";admin__states|a:5:{s:6:\"status\";b:1;s:8:\"nickname\";b:1;s:7:\"groupid\";b:1;s:9:\"groupname\";b:1;s:5:\"email\";b:1;}Yii.CCaptchaAction.8eb7a1e1.question.captcha|s:6:\"eb99rb\";Yii.CCaptchaAction.8eb7a1e1.question.captchacount|i:1;');
INSERT INTO `yiif_session` VALUES('5efu4j7kopihnv7sh5mv607d04','1407143879','');
INSERT INTO `yiif_session` VALUES('ua73nenchlmf8d9d0mr53v5hu6','1407140999','');
INSERT INTO `yiif_session` VALUES('6rjipuam2dpo9e6b8js6smp6m6','1407141719','');
INSERT INTO `yiif_session` VALUES('ec7934kqjdq47agr25n172a3m4','1407142024','');
INSERT INTO `yiif_session` VALUES('7pai743scjr1rgidpl885p8uh1','1407143159','');
INSERT INTO `yiif_session` VALUES('r1vogh7oiahno3fe29qfirqpj3','1407143104','');
INSERT INTO `yiif_session` VALUES('5jhaemvrmdam50rh9lm06k9b65','1407142871','');
INSERT INTO `yiif_session` VALUES('2867edlnjv5g7crbslvtga42a2','1407142744','');
INSERT INTO `yiif_session` VALUES('mk4icvjtp8uht2nt377v06hfu7','1407142799','');
INSERT INTO `yiif_session` VALUES('jelu2t3u6tfsm51u856mqgjbi0','1407142439','');
INSERT INTO `yiif_session` VALUES('rf1qeiqkhrdn40nn2fekdvq6i4','1407142078','');
INSERT INTO `yiif_session` VALUES('7utc56kh92es34s70atuk4q503','1407142151','');
INSERT INTO `yiif_session` VALUES('j79sakc77amniokb29rldqvmk2','1407141664','');
INSERT INTO `yiif_session` VALUES('pdmqrmsgnrqkbn7j0l3b6olca7','1407141791','');
INSERT INTO `yiif_session` VALUES('ndtmd3h7jtm2vr0aa28gpj0ri7','1407141431','');
INSERT INTO `yiif_session` VALUES('6bifbcu50q615fcinfl68vk371','1407142384','');
INSERT INTO `yiif_session` VALUES('hg5mtognnaarpqa4vqdh3rhki1','1407141071','');
INSERT INTO `yiif_session` VALUES('2m98ri1ihicmdh0pdbuec61h40','1407141359','');
INSERT INTO `yiif_session` VALUES('7v3n1jit2fk8oauvfjo3jpbtj2','1407140944','');
INSERT INTO `yiif_session` VALUES('l2cl722gbmj6fgg8fudhjijvg0','1407141304','');
INSERT INTO `yiif_session` VALUES('i2pkfq7edsi6eq3gooo0g2ikq4','1407143231','');
INSERT INTO `yiif_session` VALUES('4imbbs5c0kj57mtefa9q1n0k02','1407143591','');
INSERT INTO `yiif_session` VALUES('h9cdnvtbm71i3ft31887856n97','1407143519','');
INSERT INTO `yiif_session` VALUES('rfh2kdkgdulsg2emm2f00cmf06','1407140638','');
INSERT INTO `yiif_session` VALUES('3q4bv7d0cr4o9pv1vdl4lok8d2','1407143464','');
INSERT INTO `yiif_session` VALUES('n2jlth6epromg5of64h9k1k0f6','1407143951','');
INSERT INTO `yiif_session` VALUES('36t7tknt2si5103lgrui665d15','1407140584','');
INSERT INTO `yiif_session` VALUES('vdj30v7gmibs4mrktpu7in3u64','1407140710','');
INSERT INTO `yiif_session` VALUES('klsiuls6ms9tv0uf9mu3shs0m2','1407143824','');

DROP TABLE IF EXISTS `yiif_setting`;
CREATE TABLE `yiif_setting` (
  `scope` varchar(30) NOT NULL DEFAULT '' COMMENT '范围',
  `variable` varchar(50) NOT NULL COMMENT '变量',
  `value` text COMMENT '值',
  PRIMARY KEY (`variable`,`scope`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='系统配置';

INSERT INTO `yiif_setting` VALUES('base','admin_email','xb_zjh@126.com');
INSERT INTO `yiif_setting` VALUES('base','admin_logger','open');
INSERT INTO `yiif_setting` VALUES('base','admin_telephone','180000000');
INSERT INTO `yiif_setting` VALUES('email','email_fromname','YiifCMS官网');
INSERT INTO `yiif_setting` VALUES('email','email_host','smtp.mxhichina.com');
INSERT INTO `yiif_setting` VALUES('email','email_password','mima2007');
INSERT INTO `yiif_setting` VALUES('email','email_port','25');
INSERT INTO `yiif_setting` VALUES('email','email_timeout','2');
INSERT INTO `yiif_setting` VALUES('email','email_totest','xb_zjh@126.com');
INSERT INTO `yiif_setting` VALUES('email','email_username','postmaster@yiifcms.com');
INSERT INTO `yiif_setting` VALUES('base','safe_str','!(*&%$$');
INSERT INTO `yiif_setting` VALUES('seo','seo_description','yiifcms是个人开发的内容管理系统，方便学习yii，了解MVC架构, 也可以当做交流的平台。');
INSERT INTO `yiif_setting` VALUES('seo','seo_keywords','yii,php,html,web');
INSERT INTO `yiif_setting` VALUES('seo','seo_title','yii好学好用');
INSERT INTO `yiif_setting` VALUES('base','site_closed_summary','系统维护中，请稍候......');
INSERT INTO `yiif_setting` VALUES('base','site_copyright','Copyright @ 2014-2015');
INSERT INTO `yiif_setting` VALUES('base','site_domain','/');
INSERT INTO `yiif_setting` VALUES('base','site_icp','暂无');
INSERT INTO `yiif_setting` VALUES('base','site_name','yii好学好用');
INSERT INTO `yiif_setting` VALUES('base','site_stats','');
INSERT INTO `yiif_setting` VALUES('base','site_status','open');
INSERT INTO `yiif_setting` VALUES('base','site_status_intro','网站目前正在备案，请稍后访问，谢谢....');
INSERT INTO `yiif_setting` VALUES('template','template','default');
INSERT INTO `yiif_setting` VALUES('template','theme','default');
INSERT INTO `yiif_setting` VALUES('upload','upload_allow_ext','jpg,gif,bmp,jpeg,png,doc,zip,rar,7z,txt,sql,pdf,chm');
INSERT INTO `yiif_setting` VALUES('upload','upload_max_size','51200');
INSERT INTO `yiif_setting` VALUES('upload','upload_water_alpha','50');
INSERT INTO `yiif_setting` VALUES('upload','upload_water_pic','public/watermark.png');
INSERT INTO `yiif_setting` VALUES('upload','upload_water_scope','100x100');
INSERT INTO `yiif_setting` VALUES('upload','upload_water_size','100x100');
INSERT INTO `yiif_setting` VALUES('upload','upload_water_status','open');
INSERT INTO `yiif_setting` VALUES('base','user_mail_verify','open');
INSERT INTO `yiif_setting` VALUES('base','user_status','open');
INSERT INTO `yiif_setting` VALUES('custom','_address','北京市朝阳区');
INSERT INTO `yiif_setting` VALUES('custom','_fax','传真:XXXXXX');
INSERT INTO `yiif_setting` VALUES('custom','_mobile','180000000');
INSERT INTO `yiif_setting` VALUES('custom','_telephone','XXXXXXXXXXX');

DROP TABLE IF EXISTS `yiif_soft`;
CREATE TABLE `yiif_soft` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT '' COMMENT '软件标题',
  `catalog_id` smallint(5) unsigned DEFAULT '0' COMMENT '分类id ',
  `soft_icon` varchar(100) DEFAULT NULL COMMENT '软件图标',
  `cover_image` varchar(100) DEFAULT '' COMMENT '封面图片',
  `fileid` varchar(255) DEFAULT NULL COMMENT '文件id',
  `filetype` varchar(10) NOT NULL DEFAULT '' COMMENT '文件类型',
  `language` varchar(10) NOT NULL DEFAULT '' COMMENT '软件语言',
  `softtype` varchar(10) NOT NULL DEFAULT '' COMMENT '软件类型',
  `os` varchar(100) NOT NULL DEFAULT '' COMMENT '操作系统',
  `softrank` enum('5','4','3','2','1') NOT NULL DEFAULT '5' COMMENT '软件等级',
  `softsize` varchar(10) NOT NULL DEFAULT '' COMMENT '软件大小',
  `softlink` varchar(100) DEFAULT '' COMMENT '软件外部下载链接',
  `introduce` text COMMENT '软件简介',
  `pay` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '支付费用',
  `update_time` int(10) unsigned DEFAULT NULL COMMENT '最近更新时间',
  `create_time` int(10) unsigned DEFAULT NULL COMMENT '发布时间',
  `view_count` int(10) unsigned DEFAULT '0' COMMENT '浏览次数',
  `down_count` smallint(8) unsigned DEFAULT '0' COMMENT '下载次数',
  `status` enum('Y','N') DEFAULT 'Y' COMMENT '是否显示',
  `seo_title` varchar(255) NOT NULL DEFAULT '' COMMENT 'SEO标题',
  `seo_description` text COMMENT 'SEO描述',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '' COMMENT 'SEO关键字',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='软件管理表';

INSERT INTO `yiif_soft` VALUES('6','PHP手册','19','uploads/images/201408/73dfcb3485a.png','uploads/images/201408/03997c899d4.jpg','97','','zh_cn','domestic','Linux,Win2003,WinXP,Win8','5','','','','0.00','1407132752','1407122953','3','1','Y','','','php,手册');
INSERT INTO `yiif_soft` VALUES('7','Yii手册','19','uploads/images/201408/60b1ea65393.jpg','uploads/images/201408/967aa8df981.jpg','98','','zh_cn','domestic','','5','','','','0.00','1407132737','1407132737','0','0','Y','','','yii,手册');
INSERT INTO `yiif_soft` VALUES('8','smarty完全中文手册','19','uploads/images/201408/39932dbe29c.png','uploads/images/201408/6d084c027a9.png','99','','zh_cn','domestic','','5','','','','0.00','1407134329','1407134329','0','0','Y','','','smarty,手册');
INSERT INTO `yiif_soft` VALUES('9','正则表达式手册','19','uploads/images/201408/ed56bd2b151.png','uploads/images/201408/3a66d1eb329.png','100','','zh_cn','domestic','','5','','','','0.00','1407134793','1407134780','0','0','Y','','','正则表达式,手册');
INSERT INTO `yiif_soft` VALUES('10','w3cscholl手册','19','uploads/images/201408/d03c775d1aa.png','uploads/images/201408/ed526c07fda.jpg','101','','zh_cn','domestic','','5','','','','0.00','1407135406','1407135406','0','0','Y','','','w3cscholl,手册');
INSERT INTO `yiif_soft` VALUES('11','jquery1.8.3手册','19','uploads/images/201408/f3726027223.png','uploads/images/201408/4ccb775793b.jpg','102','','zh_cn','domestic','','5','','','','0.00','1407135673','1407135653','0','0','Y','','','jquery,手册');
INSERT INTO `yiif_soft` VALUES('12','xampp集成安装包','15','uploads/images/201408/78d6575b09b.jpg','uploads/images/201408/c708dd2645c.jpg','','','zh_cn','foreign','Linux,Win2003,WinXP,Win8','5','','https://www.apachefriends.org/zh_cn/index.html','<p style=\"text-indent:2em;\">
	<span style=\"font-size:16px;\">软件官网：</span><a target=\"_blank\" href=\"https://www.apachefriends.org/zh_cn/index.html\"><span style=\"font-size:16px;\">https://www.apachefriends.org/zh_cn/index.html</span></a>
</p>','0.00','1407136388','1407136237','2','0','Y','','','xampp');
INSERT INTO `yiif_soft` VALUES('5','YiifCMS1.2版本安装包','11','uploads/images/201407/252fd6459ae.jpg','','','','zh_cn','domestic','Linux,Win2003,WinXP,Win8','5','','http://yun.baidu.com/s/1hq67qyK','','0.00','1407132883','1404715423','8','0','Y','','','yii,cms');

DROP TABLE IF EXISTS `yiif_special`;
CREATE TABLE `yiif_special` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `title_alias` varchar(255) NOT NULL DEFAULT '' COMMENT '标题别名',
  `intro` text COMMENT '描述',
  `content` text COMMENT '详细介绍',
  `attach_thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '附件缩略图',
  `attach_file` varchar(255) NOT NULL DEFAULT '' COMMENT '附件名称',
  `seo_title` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo标题',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo关键字',
  `seo_description` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo描述',
  `template` varchar(50) NOT NULL DEFAULT '' COMMENT '模板',
  `status` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '状态',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `view_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击次数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '入库时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='专题';

INSERT INTO `yiif_special` VALUES('1','专题二','special2','美国特斯拉电动汽车公司（Tesla Motors）首席执行官艾伦•马斯克（Elon Musk）周二表示，该公司力争在未来三年里推出能够“自动驾驶”的汽车，从而正式加入到拥有谷歌(微博)和多家汽车厂商的无人驾驶汽车市场的争夺之中','<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">	美国特斯拉电动汽车公司（Tesla Motors）首席执行官艾伦•马斯克（Elon Musk）周二表示，该公司力争在未来三年里推出能够“自动驾驶”的汽车，从而正式加入到拥有<a class=\"a-tips-Article-QQ\" href=\"http://stockhtm.finance.qq.com/astock/ggcx/GOOG.OQ.htm\" target=\"_blank\">谷歌</a>(<a href=\"http://t.qq.com/googlechina#pref=qqcom.keyword\" target=\"_blank\">微博</a>)和多家汽车厂商的无人驾驶汽车市场的争夺之中。</p><p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">	马斯克在接受英国《金融时报》的采访时表示，特斯拉自动驾驶汽车将会让司机把90%的驾驶权转交给汽车的电脑系统，而全自动无人驾驶汽车则需要更长的研发时间。</p><p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">	马斯克指出，特斯拉的自动驾驶汽车将由该公司采用自有技术进行内部研发，并不会外包给其他公司。这一点也得到了该公司一位新闻发言人的证实。</p><p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">	特斯拉官网近日发布了一个招聘“高级驾驶员辅助系统控制工程师”的启示，负责帮助“特斯拉成为自动驾驶汽车市场的领导者”。</p>','uploads/thumbs/201403/small_8e9e89a2e6a.png','uploads/images/201403/8e9e89a2e6a.png','','','','','Y','0','4','1379547110');
INSERT INTO `yiif_special` VALUES('2','专题一','special1','','<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">	随着移动科技的不断发展，人们生活的方方面面都感受到了新科技所带来的巨大影响，餐饮领域自然也不例外。无论是在餐馆的餐桌上放置平板电脑、还是推出可互动的点菜、买单应用都是餐饮企业为进一步促进消费者来店消费所想出的妙招。其中，美国知名餐厅运营商Brinker International.Inc旗下Chili\'s Grill &amp; Bar最近做出的动作便是移动化大潮来袭下的一个最好示范。</p><p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">	<img src=\"/cms/uploads/201309/523a380d1d4c0.jpg\" alt=\"\" /> </p><p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">	目前，该公司已经在旗下部分餐厅中测试由Ziosk研发的桌面服务系统，该系统可以使消费者在无需服务员出现的情况完成点菜、买单等操作，甚至还可以利用该系统玩游戏。对此，Chili\'s Grill &amp; Bar品牌战略高级副总裁表示，“由于消费者更倾向于在配备了这类桌面系统的餐厅花费更多金钱，因此这一科技可以帮助公司有效提高销售额。”</p><p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">	事实上，由于桌面服务系统会时不时的显示一些甜品的图片，Chili\'s Grill &amp; Bar餐厅的甜品销量已经迎来了大约20%的提升。因此我们不难想象，如果Chili\'s Grill &amp; Bar未来将这一图片展示的范围扩大到酒精类饮品和其他拥有更大利润率的菜品时能够取得怎样的效果。</p><p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">	与此同时，桌面服务设备中自带的那些看似不起眼的小游戏也有望为餐厅带来额外收入。比如，Chili\'s Grill &amp; Bar会向每位需要使用游戏服务的消费者收取0.99美元的费用，其中Chili\'s Grill &amp; Bar将可以拿到50%的分成，而另一半则由Ziosk收取。考虑到Chili\'s Grill &amp; Bar目前仅仅是从Ziosk处以租赁的形式拿到这些设备的这一事实，这样的分成比例还算比较公平。</p>','uploads/thumbs/201403/small_9e6fac7a8c2.png','uploads/images/201403/9e6fac7a8c2.png','','','','','Y','0','24','1379547152');

DROP TABLE IF EXISTS `yiif_tag`;
CREATE TABLE `yiif_tag` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(100) NOT NULL COMMENT 'tag名称',
  `data_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '数据总数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COMMENT='新闻标签';

INSERT INTO `yiif_tag` VALUES('23','国际业务','1');
INSERT INTO `yiif_tag` VALUES('37','程序员','1');
INSERT INTO `yiif_tag` VALUES('39','Facebook','2');
INSERT INTO `yiif_tag` VALUES('41','操作系统','1');
INSERT INTO `yiif_tag` VALUES('42','国产','1');
INSERT INTO `yiif_tag` VALUES('43','中科','1');
INSERT INTO `yiif_tag` VALUES('44','超级计算机','1');
INSERT INTO `yiif_tag` VALUES('45','中国','1');
INSERT INTO `yiif_tag` VALUES('46','微软','2');
INSERT INTO `yiif_tag` VALUES('47','计划','1');
INSERT INTO `yiif_tag` VALUES('48','代码','1');
INSERT INTO `yiif_tag` VALUES('49','创意','1');
INSERT INTO `yiif_tag` VALUES('50','亚马逊','1');
INSERT INTO `yiif_tag` VALUES('57','美女','11');
INSERT INTO `yiif_tag` VALUES('62','机顶盒','1');
INSERT INTO `yiif_tag` VALUES('63','苹果','1');
INSERT INTO `yiif_tag` VALUES('67','谷歌','1');
INSERT INTO `yiif_tag` VALUES('68','巴西','1');
INSERT INTO `yiif_tag` VALUES('69','世界杯','2');
INSERT INTO `yiif_tag` VALUES('77','web','1');
INSERT INTO `yiif_tag` VALUES('78','yii','1');
INSERT INTO `yiif_tag` VALUES('79','php','1');
INSERT INTO `yiif_tag` VALUES('80','js','1');
INSERT INTO `yiif_tag` VALUES('81','jquery','1');

DROP TABLE IF EXISTS `yiif_tag_data`;
CREATE TABLE `yiif_tag_data` (
  `tag_id` int(10) unsigned NOT NULL DEFAULT '0',
  `content_id` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned DEFAULT '1' COMMENT '栏目类型',
  `status` enum('Y','N') DEFAULT 'Y' COMMENT '是否显示',
  PRIMARY KEY (`tag_id`,`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='内容标签关联表';

INSERT INTO `yiif_tag_data` VALUES('23','23','1','Y');
INSERT INTO `yiif_tag_data` VALUES('37','16','1','Y');
INSERT INTO `yiif_tag_data` VALUES('39','23','1','Y');
INSERT INTO `yiif_tag_data` VALUES('39','28','1','Y');
INSERT INTO `yiif_tag_data` VALUES('41','15','1','Y');
INSERT INTO `yiif_tag_data` VALUES('42','15','1','Y');
INSERT INTO `yiif_tag_data` VALUES('43','15','1','Y');
INSERT INTO `yiif_tag_data` VALUES('44','14','1','Y');
INSERT INTO `yiif_tag_data` VALUES('45','14','1','Y');
INSERT INTO `yiif_tag_data` VALUES('46','24','1','Y');
INSERT INTO `yiif_tag_data` VALUES('46','26','1','Y');
INSERT INTO `yiif_tag_data` VALUES('47','24','1','Y');
INSERT INTO `yiif_tag_data` VALUES('48','25','1','Y');
INSERT INTO `yiif_tag_data` VALUES('49','26','1','Y');
INSERT INTO `yiif_tag_data` VALUES('50','27','1','Y');
INSERT INTO `yiif_tag_data` VALUES('57','2','2','Y');
INSERT INTO `yiif_tag_data` VALUES('57','4','2','Y');
INSERT INTO `yiif_tag_data` VALUES('57','5','2','Y');
INSERT INTO `yiif_tag_data` VALUES('57','6','2','Y');
INSERT INTO `yiif_tag_data` VALUES('57','7','2','Y');
INSERT INTO `yiif_tag_data` VALUES('57','8','2','Y');
INSERT INTO `yiif_tag_data` VALUES('57','9','2','Y');
INSERT INTO `yiif_tag_data` VALUES('57','10','2','Y');
INSERT INTO `yiif_tag_data` VALUES('57','11','2','Y');
INSERT INTO `yiif_tag_data` VALUES('57','25','1','Y');
INSERT INTO `yiif_tag_data` VALUES('62','27','1','Y');
INSERT INTO `yiif_tag_data` VALUES('63','27','1','Y');
INSERT INTO `yiif_tag_data` VALUES('67','27','1','Y');
INSERT INTO `yiif_tag_data` VALUES('68','2','2','Y');
INSERT INTO `yiif_tag_data` VALUES('69','2','2','Y');
INSERT INTO `yiif_tag_data` VALUES('69','11','2','Y');
INSERT INTO `yiif_tag_data` VALUES('70','28','1','Y');
INSERT INTO `yiif_tag_data` VALUES('71','28','1','Y');
INSERT INTO `yiif_tag_data` VALUES('72','28','1','Y');
INSERT INTO `yiif_tag_data` VALUES('73','28','1','Y');
INSERT INTO `yiif_tag_data` VALUES('74','28','1','Y');
INSERT INTO `yiif_tag_data` VALUES('75','28','1','Y');
INSERT INTO `yiif_tag_data` VALUES('76','28','1','Y');
INSERT INTO `yiif_tag_data` VALUES('77','29','1','Y');
INSERT INTO `yiif_tag_data` VALUES('78','29','1','Y');
INSERT INTO `yiif_tag_data` VALUES('79','30','1','Y');
INSERT INTO `yiif_tag_data` VALUES('80','30','1','Y');
INSERT INTO `yiif_tag_data` VALUES('81','30','1','Y');

DROP TABLE IF EXISTS `yiif_upload`;
CREATE TABLE `yiif_upload` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户名',
  `real_name` varchar(255) NOT NULL DEFAULT '' COMMENT '原始文件名称',
  `file_name` varchar(100) NOT NULL DEFAULT '' COMMENT '带路径文件名',
  `thumb_name` varbinary(255) NOT NULL DEFAULT '' COMMENT '缩略图',
  `file_ext` varchar(5) NOT NULL DEFAULT 'jpg' COMMENT '扩展名称',
  `file_mime` varchar(50) NOT NULL DEFAULT '' COMMENT '文件头信息',
  `file_size` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `down_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COMMENT='附件';

INSERT INTO `yiif_upload` VALUES('45','1','xiaomi_note.jpg','uploads/images/201405/6bf7dd586e7.jpg','','jpg','application/octet-stream','245509','0','1401092533');
INSERT INTO `yiif_upload` VALUES('68','1','AliIM2014_taobao(8.00.34C).exe','uploads/files/201406/AliIM2014_taobao(8.00.34C).exe','','exe','application/octet-stream','41074080','0','1403082064');
INSERT INTO `yiif_upload` VALUES('69','1','111.jpg','uploads/attached/image/201406/3078e9f0bff.jpg','','jpg','image/jpeg','13633','0','1404109948');
INSERT INTO `yiif_upload` VALUES('70','1','223.jpg','uploads/attached/image/201406/f6cf41e3649.jpg','','jpg','image/jpeg','155671','0','1404110187');
INSERT INTO `yiif_upload` VALUES('71','1','111.jpg','uploads/attached/image/201406/468a9574708.jpg','','jpg','image/jpeg','22855','0','1404110527');
INSERT INTO `yiif_upload` VALUES('77','1','121.jpg','uploads/images/201407/2d8af2a52c9.jpg','uploads/thumbs/201407/small_2d8af2a52c9.jpg','jpg','application/octet-stream','71454','0','1404181897');
INSERT INTO `yiif_upload` VALUES('78','1','122.jpg','uploads/images/201407/830c15efce6.jpg','uploads/thumbs/201407/small_830c15efce6.jpg','jpg','application/octet-stream','39486','0','1404182170');
INSERT INTO `yiif_upload` VALUES('79','1','123.jpg','uploads/images/201407/8068f3a90b7.jpg','uploads/thumbs/201407/small_8068f3a90b7.jpg','jpg','application/octet-stream','193075','0','1404182633');
INSERT INTO `yiif_upload` VALUES('80','1','121.jpg','uploads/images/201407/4be229705ba.jpg','uploads/thumbs/201407/small_4be229705ba.jpg','jpg','application/octet-stream','124344','0','1404184718');
INSERT INTO `yiif_upload` VALUES('81','1','122.jpg','uploads/images/201407/ed5693e7e2d.jpg','uploads/thumbs/201407/small_ed5693e7e2d.jpg','jpg','application/octet-stream','67515','0','1404184749');
INSERT INTO `yiif_upload` VALUES('82','1','121.jpg','uploads/images/201407/f60eb1cfb67.jpg','uploads/thumbs/201407/small_f60eb1cfb67.jpg','jpg','application/octet-stream','124344','0','1404184753');
INSERT INTO `yiif_upload` VALUES('83','1','123.jpg','uploads/images/201407/cef6cf4f134.jpg','uploads/thumbs/201407/small_cef6cf4f134.jpg','jpg','application/octet-stream','127531','0','1404184775');
INSERT INTO `yiif_upload` VALUES('84','1','121.jpg','uploads/images/201407/8a0a9d8cb7b.jpg','uploads/thumbs/201407/small_8a0a9d8cb7b.jpg','jpg','application/octet-stream','124344','0','1404184775');
INSERT INTO `yiif_upload` VALUES('85','1','122.jpg','uploads/images/201407/4464b4046d1.jpg','uploads/thumbs/201407/small_4464b4046d1.jpg','jpg','application/octet-stream','67515','0','1404184775');
INSERT INTO `yiif_upload` VALUES('86','1','124.jpg','uploads/images/201407/4efea9bddd1.jpg','uploads/thumbs/201407/small_4efea9bddd1.jpg','jpg','application/octet-stream','84725','0','1404184803');
INSERT INTO `yiif_upload` VALUES('87','1','123.jpg','uploads/images/201407/9706bae28d1.jpg','uploads/thumbs/201407/small_9706bae28d1.jpg','jpg','application/octet-stream','127531','0','1404184806');
INSERT INTO `yiif_upload` VALUES('88','1','125.jpg','uploads/images/201407/b0d4552362e.jpg','uploads/thumbs/201407/small_b0d4552362e.jpg','jpg','application/octet-stream','279084','0','1404184834');
INSERT INTO `yiif_upload` VALUES('89','1','126.jpg','uploads/images/201407/2e13e0a3ed9.jpg','uploads/thumbs/201407/small_2e13e0a3ed9.jpg','jpg','application/octet-stream','75536','0','1404184865');
INSERT INTO `yiif_upload` VALUES('90','1','122.jpg','uploads/images/201407/2a2d8e16cb0.jpg','uploads/thumbs/201407/small_2a2d8e16cb0.jpg','jpg','application/octet-stream','67515','0','1404184869');
INSERT INTO `yiif_upload` VALUES('91','1','125.jpg','uploads/images/201407/825a8ac9d80.jpg','uploads/thumbs/201407/small_825a8ac9d80.jpg','jpg','application/octet-stream','279084','0','1404184870');
INSERT INTO `yiif_upload` VALUES('92','1','112.jpg','uploads/images/201407/e62833cd62c.jpg','uploads/thumbs/201407/small_e62833cd62c.jpg','jpg','application/octet-stream','25932','0','1404287877');
INSERT INTO `yiif_upload` VALUES('93','1','11.jpg','uploads/images/201407/2c48ccb19e2.jpg','uploads/thumbs/201407/small_2c48ccb19e2.jpg','jpg','application/octet-stream','39452','0','1404304925');
INSERT INTO `yiif_upload` VALUES('99','1','smarty完全中文手册.chm','uploads/files/201408/smarty完全中文手册.chm','','chm','application/octet-stream','374731','0','1407134216');
INSERT INTO `yiif_upload` VALUES('97','1','php_enhanced_zh.chm','uploads/files/201408/php_enhanced_zh.chm','','chm','application/octet-stream','27746126','0','1407125246');
INSERT INTO `yiif_upload` VALUES('98','1','Yii.chm','uploads/files/201408/Yii.chm','','chm','application/octet-stream','2643912','0','1407132699');
INSERT INTO `yiif_upload` VALUES('100','1','正则表达式.CHM','uploads/files/201408/正则表达式.CHM','','chm','application/octet-stream','42863','0','1407134758');
INSERT INTO `yiif_upload` VALUES('101','1','W3CSchool全套Web开发手册.chm','uploads/files/201408/W3CSchool全套Web开发手册.chm','','chm','application/octet-stream','11818410','0','1407135396');
INSERT INTO `yiif_upload` VALUES('102','1','jquery1.8.3.chm','uploads/files/201408/jquery1.8.3.chm','','chm','application/octet-stream','401443','0','1407135640');

DROP TABLE IF EXISTS `yiif_user`;
CREATE TABLE `yiif_user` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `groupid` int(10) unsigned DEFAULT '0' COMMENT '用户组id',
  `status` tinyint(2) DEFAULT '1' COMMENT '-1待审核 0 -禁用  1-通过',
  `addtime` int(10) DEFAULT NULL COMMENT '注册时间',
  `avatar` varchar(100) DEFAULT NULL COMMENT '头像',
  `nickname` varchar(50) DEFAULT NULL COMMENT '昵称',
  `sign` varchar(100) DEFAULT NULL COMMENT '个性签名',
  `web` varchar(100) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL COMMENT '手机号码',
  `qq` varchar(11) DEFAULT NULL COMMENT 'qq号码',
  `last_login_ip` varchar(15) DEFAULT NULL COMMENT '上次登录ip',
  `logins` int(10) unsigned DEFAULT '0' COMMENT '登录次数',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 DELAY_KEY_WRITE=1 COMMENT='用户表';

INSERT INTO `yiif_user` VALUES('1','zjh_admin','$2a$08$prWSKt8Hkfd.NNXMbdyYxuWEWkRdUiykiSKPnJ6TjWEA8A7dBlROy','xb_zjh@126.com','10','1','1404712097','','','','','','','127.0.0.1','9');
INSERT INTO `yiif_user` VALUES('2','没那么简单','$2a$13$5HFLakgTxQyyfzcZFQElWOk5W.OHhPnfwKXLAYwokPNVsZSyW4Tqy','376685457@qq.com','9','1','1379091600','uploads/avatar/201407/small_2_cc2e86cc790.jpg','','','','','','127.0.0.1','4');
INSERT INTO `yiif_user` VALUES('31','testUser','$2a$08$QuvI8Ory.KMdKvmaCV/g9O8AoVTQMMvDrS.wvkOnEWBIBJwm3kLsq','1441044277@qq.com','1','1','1399346040','uploads/avatar/201405/small_31_c696db73478.jpg','nicename','这个家伙很懒，什么都不写','http://www.baidu.com','','','127.0.0.1','45');
INSERT INTO `yiif_user` VALUES('32','test123','$2a$08$IrFpdJZKlMTUoiLS/D79kOiFfy9MInvsRQuoNc5hiCSL9qSISQxIm','test123@qq.com','1','1','1399346280','','','','','','','','0');
INSERT INTO `yiif_user` VALUES('33','test001','$2a$08$mmxLn6zpboN/Q2BnDfk4MesW4qbcIRD0ONmiuJ/gwv1X1kuinCTge','326196999@qq.com','1','1','1400462626','uploads/avatar/201405/small_33_0681827b824.png','','','','','','127.0.0.1','8');

DROP TABLE IF EXISTS `yiif_user_group`;
CREATE TABLE `yiif_user_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(30) DEFAULT '' COMMENT '用户组名称',
  `acl` varchar(255) DEFAULT '' COMMENT '权限控制',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='用户组';

INSERT INTO `yiif_user_group` VALUES('1','普通用户','');
INSERT INTO `yiif_user_group` VALUES('2','VIP①用户','');
INSERT INTO `yiif_user_group` VALUES('3','VIP②用户','');
INSERT INTO `yiif_user_group` VALUES('4','VIP④用户','');
INSERT INTO `yiif_user_group` VALUES('5','VIP⑤用户','');
INSERT INTO `yiif_user_group` VALUES('6','VIP⑥用户','');
INSERT INTO `yiif_user_group` VALUES('7','VIP⑦用户','');
INSERT INTO `yiif_user_group` VALUES('8','VIP⑧用户','');
INSERT INTO `yiif_user_group` VALUES('9','网站编辑','default|login,catalog|index,catalog|create,all,link|index,link|create,link|update,link|delete,link|batch');
INSERT INTO `yiif_user_group` VALUES('10','系统管理员','Administrator');

DROP TABLE IF EXISTS `yiif_video`;
CREATE TABLE `yiif_video` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT '' COMMENT '视频名称',
  `catalog_id` smallint(5) unsigned DEFAULT '0' COMMENT '分类id ',
  `cover_image` varchar(100) DEFAULT '' COMMENT '封面图片',
  `fileid` varchar(255) DEFAULT NULL COMMENT '文件id',
  `language` varchar(10) NOT NULL DEFAULT '' COMMENT '视频语言',
  `video_type` varchar(10) NOT NULL DEFAULT '' COMMENT '视频类型',
  `video_score` decimal(3,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '视频评分',
  `video_size` varchar(10) NOT NULL DEFAULT '' COMMENT '视频大小',
  `download` varchar(100) DEFAULT '' COMMENT '下载链接',
  `introduce` text COMMENT '软件简介',
  `pay` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '支付费用',
  `update_time` int(10) unsigned DEFAULT NULL COMMENT '最近更新时间',
  `create_time` int(10) unsigned DEFAULT NULL COMMENT '发布时间',
  `view_count` smallint(8) unsigned DEFAULT NULL COMMENT '观看次数',
  `down_count` smallint(8) unsigned DEFAULT '0' COMMENT '下载次数',
  `voted` varchar(100) DEFAULT NULL COMMENT '投票结果',
  `status` enum('Y','N') DEFAULT 'Y' COMMENT '是否显示',
  `seo_title` varchar(255) NOT NULL DEFAULT '' COMMENT 'SEO标题',
  `seo_description` text COMMENT 'SEO描述',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '' COMMENT 'SEO关键字',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='软件管理表';

INSERT INTO `yiif_video` VALUES('1','美国队长','16','uploads/images/201406/827a03cb8cb.jpg','','englise','science','8.6','','','美国队长','0.00','1407120508','1400834656','79','0','{\"t\":10,\"s\":[0,1,1,2,6]}','Y','','','');
INSERT INTO `yiif_video` VALUES('2','钢铁侠','16','uploads/images/201406/bf941705b16.jpg','','chinese','comedy','0.0','','','','0.00','1407120502','1403148128','4','0','','Y','','','');
INSERT INTO `yiif_video` VALUES('3','明日边缘','16','uploads/images/201406/4cc06a97d5a.jpg','','chinese','comedy','0.0','','','','0.00','1407120495','1403148264','1','0','','Y','','','');
INSERT INTO `yiif_video` VALUES('4','窃听风云3','16','uploads/images/201406/a02a34ce432.jpg','','chinese','comedy','9.0','','','','0.00','1407120487','1403148306','12','0','{\"t\":2,\"s\":[0,0,0,1,1]}','Y','','','');
INSERT INTO `yiif_video` VALUES('5','终结者4','16','uploads/images/201406/0bb513c708b.jpg','','chinese','comedy','0.0','','','','0.00','1407120480','1403148363','4','0','','Y','','','');
INSERT INTO `yiif_video` VALUES('6','孤胆保镖','16','uploads/images/201406/566eb360159.jpg','','chinese','active','8.0','','','电影','0.00','1407120471','1403148418','26','0','{\"t\":2,\"s\":[0,0,1,0,1]}','Y','','','电影');

