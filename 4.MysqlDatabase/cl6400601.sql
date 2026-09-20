-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl6400601
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `cl6400601`
--

/*!40000 DROP DATABASE IF EXISTS `cl6400601`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl6400601` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl6400601`;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) DEFAULT NULL COMMENT '收货人',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `isdefault` varchar(200) DEFAULT NULL COMMENT '是否默认地址',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1706706382704 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2024-01-31 13:02:09','地址1','张三','19819881111','是',11),(2,'2024-01-31 13:02:09','地址2','李四','19819882222','是',12),(3,'2024-01-31 13:02:09','地址3','王五','19819883333','是',13),(4,'2024-01-31 13:02:09','地址4','赵六','19819884444','是',14),(5,'2024-01-31 13:02:09','地址5','孙七','19819885555','是',15),(6,'2024-01-31 13:02:09','地址6','周八','19819886666','是',16),(1706706382703,'2024-01-31 13:06:22','广州大道2号','小王','13512312312','是',1706706350210);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT NULL COMMENT '商品表名',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `buynumber` int(11) DEFAULT NULL COMMENT '购买数量',
  `price` double DEFAULT NULL COMMENT '单价',
  `discountprice` double DEFAULT NULL COMMENT '折扣价',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodtype` varchar(200) DEFAULT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1706706686840 DEFAULT CHARSET=utf8 COMMENT='购物车';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1706706390367,'2024-01-31 13:06:29','tejiashangpin',112,'商品名称2','file/tejiashangpinShangpintupian2.jpg',1,99.9,NULL,1706706350210,NULL),(1706706686839,'2024-01-31 13:11:25','shangpinxinxi',1706706519473,'饼干','file/1706706482831.jpg',1,59,NULL,1706706350210,'零食类');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg'),(2,'swiper2','file/1706706622644.jpg'),(3,'swiper3','file/swiperPicture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshangpinxinxi`
--

DROP TABLE IF EXISTS `discussshangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1706706950316 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshangpinxinxi`
--

LOCK TABLES `discussshangpinxinxi` WRITE;
/*!40000 ALTER TABLE `discussshangpinxinxi` DISABLE KEYS */;
INSERT INTO `discussshangpinxinxi` VALUES (1706706950315,'2024-01-31 13:15:49',1706706519473,1706706350210,'file/1706706344896.jpeg','1','购买完才能评论',NULL);
/*!40000 ALTER TABLE `discussshangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusstejiashangpin`
--

DROP TABLE IF EXISTS `discusstejiashangpin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusstejiashangpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='特价商品评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusstejiashangpin`
--

LOCK TABLES `discusstejiashangpin` WRITE;
/*!40000 ALTER TABLE `discusstejiashangpin` DISABLE KEYS */;
/*!40000 ALTER TABLE `discusstejiashangpin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-01-31 13:02:09','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"查看评论\"],\"menu\":\"特价商品\",\"menuJump\":\"列表\",\"tableName\":\"tejiashangpin\"},{\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"商品类型\",\"menuJump\":\"列表\",\"tableName\":\"shangpinleixing\"},{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"查看评论\"],\"menu\":\"商品信息\",\"menuJump\":\"列表\",\"tableName\":\"shangpinxinxi\"}],\"fontClass\":\"icon-common40\",\"menu\":\"商品信息管理\",\"unicode\":\"&#xeebb;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"已发货订单\",\"menuJump\":\"已发货\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\",\"删除\",\"销售统计\"],\"menu\":\"已完成订单\",\"menuJump\":\"已完成\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"商品订单\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"已取消订单\",\"menuJump\":\"已取消\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"未支付订单\",\"menuJump\":\"未支付\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"已退款订单\",\"menuJump\":\"已退款\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"已支付订单\",\"menuJump\":\"已支付\",\"tableName\":\"orders\"}],\"menu\":\"订单管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-camera\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\"],\"menu\":\"商家\",\"menuJump\":\"列表\",\"tableName\":\"shangjia\"}],\"fontClass\":\"icon-user8\",\"menu\":\"商家管理\",\"unicode\":\"&#xef9e;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"商品资讯\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"fontClass\":\"icon-common50\",\"menu\":\"商品资讯管理\",\"unicode\":\"&#xef96;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"轮播图\",\"menuJump\":\"列表\",\"tableName\":\"config\"}],\"fontClass\":\"icon-common27\",\"menu\":\"轮播图管理\",\"unicode\":\"&#xee2c;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-form\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"申请\"],\"menu\":\"摊位信息\",\"menuJump\":\"列表\",\"tableName\":\"tanweixinxi\"},{\"appFrontIcon\":\"cuIcon-send\",\"buttons\":[\"查看\",\"删除\",\"审核\"],\"menu\":\"摊位申请调整\",\"menuJump\":\"列表\",\"tableName\":\"tanweishenqingdiaozheng\"}],\"fontClass\":\"icon-common28\",\"menu\":\"摊位信息管理\",\"unicode\":\"&#xee2d;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-cardboard\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"用户\",\"menuJump\":\"列表\",\"tableName\":\"yonghu\"}],\"fontClass\":\"icon-user5\",\"menu\":\"用户管理\",\"unicode\":\"&#xef9b;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"查看\"],\"menu\":\"商品资讯\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"商品资讯管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"查看\"],\"menu\":\"特价商品\",\"menuJump\":\"列表\",\"tableName\":\"tejiashangpin\"}],\"menu\":\"特价商品管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"购物车\",\"menuJump\":\"列表\",\"tableName\":\"cart\"}],\"menu\":\"购物车管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"查看\"],\"menu\":\"商品信息\",\"menuJump\":\"列表\",\"tableName\":\"shangpinxinxi\"}],\"menu\":\"商品信息管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\",\"删除\",\"确认收货\"],\"menu\":\"已发货订单\",\"menuJump\":\"已发货\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"已完成订单\",\"menuJump\":\"已完成\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"商品订单\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"已取消订单\",\"menuJump\":\"已取消\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"未支付订单\",\"menuJump\":\"未支付\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"已退款订单\",\"menuJump\":\"已退款\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"已支付订单\",\"menuJump\":\"已支付\",\"tableName\":\"orders\"}],\"menu\":\"订单管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"查看\"],\"menu\":\"我的收藏\",\"menuJump\":\"1\",\"tableName\":\"storeup\"}],\"fontClass\":\"icon-common1\",\"menu\":\"我的收藏管理\",\"unicode\":\"&#xeda3;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"地址\",\"menuJump\":\"列表\",\"tableName\":\"address\"}],\"fontClass\":\"icon-common4\",\"menu\":\"地址管理\",\"unicode\":\"&#xedab;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"查看\"],\"menu\":\"商品资讯\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"商品资讯管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"查看\"],\"menu\":\"特价商品\",\"menuJump\":\"列表\",\"tableName\":\"tejiashangpin\"}],\"menu\":\"特价商品管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"购物车\",\"menuJump\":\"列表\",\"tableName\":\"cart\"}],\"menu\":\"购物车管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"查看\"],\"menu\":\"商品信息\",\"menuJump\":\"列表\",\"tableName\":\"shangpinxinxi\"}],\"menu\":\"商品信息管理\"}],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"用户\",\"tableName\":\"yonghu\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-send\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"摊位申请调整\",\"menuJump\":\"列表\",\"tableName\":\"tanweishenqingdiaozheng\"},{\"appFrontIcon\":\"cuIcon-form\",\"buttons\":[\"查看\",\"申请\"],\"menu\":\"摊位信息\",\"menuJump\":\"列表\",\"tableName\":\"tanweixinxi\"}],\"fontClass\":\"icon-common28\",\"menu\":\"摊位信息管理\",\"unicode\":\"&#xee2d;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\"],\"menu\":\"商品信息\",\"menuJump\":\"列表\",\"tableName\":\"shangpinxinxi\"},{\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\"],\"menu\":\"特价商品\",\"menuJump\":\"列表\",\"tableName\":\"tejiashangpin\"},{\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"商品类型\",\"menuJump\":\"列表\",\"tableName\":\"shangpinleixing\"}],\"fontClass\":\"icon-common40\",\"menu\":\"商品信息管理\",\"unicode\":\"&#xeebb;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"已退款订单\",\"menuJump\":\"已退款\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\",\"删除\",\"发货\"],\"menu\":\"已支付订单\",\"menuJump\":\"已支付\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"已发货订单\",\"menuJump\":\"已发货\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\",\"删除\",\"销售统计\"],\"menu\":\"已完成订单\",\"menuJump\":\"已完成\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"商品订单\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"已取消订单\",\"menuJump\":\"已取消\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"未支付订单\",\"menuJump\":\"未支付\",\"tableName\":\"orders\"}],\"menu\":\"订单管理\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"查看\"],\"menu\":\"商品资讯\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"商品资讯管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"查看\"],\"menu\":\"特价商品\",\"menuJump\":\"列表\",\"tableName\":\"tejiashangpin\"}],\"menu\":\"特价商品管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"购物车\",\"menuJump\":\"列表\",\"tableName\":\"cart\"}],\"menu\":\"购物车管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"查看\"],\"menu\":\"商品信息\",\"menuJump\":\"列表\",\"tableName\":\"shangpinxinxi\"}],\"menu\":\"商品信息管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"是\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"商家\",\"tableName\":\"shangjia\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1706706613502 DEFAULT CHARSET=utf8 COMMENT='商品资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (101,'2024-01-31 13:02:09','青花瓷','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起','file/newsPicture1.jpg','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起， 隔江千万里，在瓶底书前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起， 晕开了局，如传世的青花瓷自顾自美丽，你眼带笑意，色白花青的锦鲤跃然于碗底，临摹宋体落款时却惦记着你，你隐藏在窑烧里千年的秘密，极细腻犹如绣花针落地，帘外芭蕉惹骤雨门环惹铜绿，而我路过那江南小镇惹了你，在泼墨山水画里，你从墨色深处被隐去，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天色等烟雨 ，而我在等你，月色被打捞起， 晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起 ，晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意。'),(102,'2024-01-31 13:02:09','理想三旬','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在','file/newsPicture2.jpg','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在，青春又醉倒在，籍籍无名的怀，靠嬉笑来虚度，聚散得慷慨，辗转却去不到，对的站台，如果漂泊是成长，必经的路牌，你迷醒岁月中，那贫瘠的未来，像遗憾季节里，未结果的爱，弄脏了每一页诗，吻最疼痛的告白，而风声吹到这，已不需要释怀，就老去吧，孤独别醒来，渴望的离开只是无处停摆就歌唱吧，眼睛眯起来而热泪的崩坏，只是没抵达的存在，就甜蜜地忍耐，繁星润湿窗台，光影跳动着像在，困倦里说爱，再无谓的感慨，以为明白，梦倒塌的地方，今已爬满青苔。'),(103,'2024-01-31 13:02:09','七里香','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠','file/newsPicture3.jpg','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，雨下整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，你是我唯一想要的了解，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，那饱满的稻穗幸福了这个季节，而你的脸颊像田里熟透的番茄，你突然对我说七里香的名字很美，我此刻却只想亲吻你倔强的嘴，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，是我唯一想要的了解。'),(104,'2024-01-31 13:02:09','江南','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸','file/newsPicture4.jpg','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天 抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，相信爱一天抵过永远。在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂。'),(105,'2024-01-31 13:02:09','那些你很冒险的梦','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落','file/newsPicture5.jpg','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心有多执着就加倍心痛，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，我不想放手 你松开的左手，你爱的放纵 我白不回天空，我输了 累了，但你再也 不回头，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，你真的不懂 我的爱已降落。'),(106,'2024-01-31 13:02:09','孤勇者','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望','file/newsPicture6.jpg','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望，不肯哭一场，爱你破烂的衣裳，却敢堵命运的枪，爱你和我那么像，缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，他们说 要戒了你的狂，就像擦掉了污垢，他们说 要顺台阶而上，而代价是低头，那就让我 不可 乘风，你一样骄傲着 那种孤勇，谁说对弈平凡的不算英雄，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你破烂的衣裳 却敢堵命运的枪，爱你和我那么像 缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，你的斑驳 与众不同 与众不同，你的沉默 震耳欲聋 震耳欲聋，You Are The Hero，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你来自于蛮荒 一生不借谁的光，你将造你的城邦 在废墟之上，去吗 去啊 以最卑微的梦，战吗 战啊 以最孤高的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄。'),(1706706613501,'2024-01-31 13:10:12','新品','简述','file/1706706607535.jpg','<p>详情</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT NULL COMMENT '商品表名',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `buynumber` int(11) DEFAULT NULL COMMENT '购买数量',
  `price` double DEFAULT NULL COMMENT '单价',
  `discountprice` double DEFAULT NULL COMMENT '折扣价',
  `total` double DEFAULT NULL COMMENT '总价',
  `discounttotal` double DEFAULT NULL COMMENT '折扣总价格',
  `type` varchar(200) DEFAULT NULL COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '订单状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `logistics` longtext COMMENT '物流',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodtype` varchar(200) DEFAULT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1706706838190 DEFAULT CHARSET=utf8 COMMENT='商品订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1706706691199,'2024-01-31 13:11:30','2024131211130806','shangpinxinxi',1706706519473,'饼干','file/1706706482831.jpg',1,59,59,59,59,'1','已退款','广州大道2号','13512312312','小王','',NULL,1706706350210,'零食类'),(1706706744907,'2024-01-31 13:12:24','2024131211224356','tejiashangpin',1706706573678,'番茄','file/1706706538180.jpg',2,15,15,30,30,'1','已支付','广州大道2号','13512312312','小王','',NULL,1706706350210,NULL),(1706706754158,'2024-01-31 13:12:33','2024131211233766','tejiashangpin',112,'商品名称2','file/tejiashangpinShangpintupian2.jpg',1,99.9,99.9,99.9,99.9,'1','已取消','广州大道2号','13512312312','小王','',NULL,1706706350210,NULL),(1706706754743,'2024-01-31 13:12:33','2024131211233772','shangpinxinxi',1706706519473,'饼干','file/1706706482831.jpg',1,59,59,59,59,'1','已取消','广州大道2号','13512312312','小王','',NULL,1706706350210,'零食类'),(1706706797569,'2024-01-31 13:13:16','2024131211316764','shangpinxinxi',1706706519473,'饼干','file/1706706482831.jpg',2,59,59,118,118,'1','已取消','广州大道2号','13512312312','小王','',NULL,1706706350210,'零食类'),(1706706838189,'2024-01-31 13:13:57','2024131211357313','shangpinxinxi',1706706519473,'饼干','file/1706706482831.jpg',2,59,59,118,118,'1','已完成','广州大道2号','13512312312','小王','',NULL,1706706350210,'零食类');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangjia`
--

DROP TABLE IF EXISTS `shangjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiazhanghao` varchar(200) NOT NULL COMMENT '商家账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `shangjiamingcheng` varchar(200) NOT NULL COMMENT '商家名称',
  `tupian` longtext COMMENT '图片',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shangjiadizhi` varchar(200) DEFAULT NULL COMMENT '商家地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangjiazhanghao` (`shangjiazhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1706706422638 DEFAULT CHARSET=utf8 COMMENT='商家';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangjia`
--

LOCK TABLES `shangjia` WRITE;
/*!40000 ALTER TABLE `shangjia` DISABLE KEYS */;
INSERT INTO `shangjia` VALUES (131,'2024-01-31 13:02:09','商家账号1','123456','商家名称1','file/shangjiaTupian1.jpg','负责人1','010-21500991','商家地址1'),(132,'2024-01-31 13:02:09','商家账号2','123456','商家名称2','file/shangjiaTupian2.jpg','负责人2','010-21500992','商家地址2'),(133,'2024-01-31 13:02:09','商家账号3','123456','商家名称3','file/shangjiaTupian3.jpg','负责人3','010-21500993','商家地址3'),(134,'2024-01-31 13:02:09','商家账号4','123456','商家名称4','file/shangjiaTupian4.jpg','负责人4','010-21500994','商家地址4'),(135,'2024-01-31 13:02:09','商家账号5','123456','商家名称5','file/shangjiaTupian5.jpg','负责人5','010-21500995','商家地址5'),(136,'2024-01-31 13:02:09','商家账号6','123456','商家名称6','file/shangjiaTupian6.jpg','负责人6','010-21500996','商家地址6'),(1706706422637,'2024-01-31 13:07:02','2','2','2','file/1706706406330.jpg','小王','020-2345678','广州大道2号');
/*!40000 ALTER TABLE `shangjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinleixing`
--

DROP TABLE IF EXISTS `shangpinleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinleixing` varchar(200) NOT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinleixing` (`shangpinleixing`)
) ENGINE=InnoDB AUTO_INCREMENT=1706706455344 DEFAULT CHARSET=utf8 COMMENT='商品类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinleixing`
--

LOCK TABLES `shangpinleixing` WRITE;
/*!40000 ALTER TABLE `shangpinleixing` DISABLE KEYS */;
INSERT INTO `shangpinleixing` VALUES (51,'2024-01-31 13:02:09','商品类型1'),(52,'2024-01-31 13:02:09','商品类型2'),(53,'2024-01-31 13:02:09','商品类型3'),(54,'2024-01-31 13:02:09','商品类型4'),(55,'2024-01-31 13:02:09','商品类型5'),(56,'2024-01-31 13:02:09','商品类型6'),(1706706438684,'2024-01-31 13:07:17','零食类'),(1706706455343,'2024-01-31 13:07:34','水果类');
/*!40000 ALTER TABLE `shangpinleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinxinxi`
--

DROP TABLE IF EXISTS `shangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpintupian` longtext COMMENT '商品图片',
  `shangpinleixing` varchar(200) NOT NULL COMMENT '商品类型',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `onelimittimes` int(11) DEFAULT NULL COMMENT '单限',
  `alllimittimes` int(11) DEFAULT NULL COMMENT '库存',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  `clicknum` int(11) DEFAULT NULL COMMENT '点击次数',
  `price` double DEFAULT NULL COMMENT '价格',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangjiamingcheng` varchar(200) DEFAULT NULL COMMENT '商家名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1706706519474 DEFAULT CHARSET=utf8 COMMENT='商品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinxinxi`
--

LOCK TABLES `shangpinxinxi` WRITE;
/*!40000 ALTER TABLE `shangpinxinxi` DISABLE KEYS */;
INSERT INTO `shangpinxinxi` VALUES (61,'2024-01-31 13:02:09','商品名称1','file/shangpinxinxiShangpintupian1.jpg,file/shangpinxinxiShangpintupian2.jpg,file/shangpinxinxiShangpintupian3.jpg','商品类型1','规格1','品牌1','商品详情1',1,99,1,1,99.9,'2024-01-31 21:02:09','商家账号1','商家名称1'),(62,'2024-01-31 13:02:09','商品名称2','file/shangpinxinxiShangpintupian2.jpg,file/shangpinxinxiShangpintupian3.jpg,file/shangpinxinxiShangpintupian4.jpg','商品类型2','规格2','品牌2','商品详情2',2,99,2,2,99.9,'2024-01-31 21:02:09','商家账号2','商家名称2'),(63,'2024-01-31 13:02:09','商品名称3','file/shangpinxinxiShangpintupian3.jpg,file/shangpinxinxiShangpintupian4.jpg,file/shangpinxinxiShangpintupian5.jpg','商品类型3','规格3','品牌3','商品详情3',3,99,3,3,99.9,'2024-01-31 21:02:09','商家账号3','商家名称3'),(64,'2024-01-31 13:02:09','商品名称4','file/shangpinxinxiShangpintupian4.jpg,file/shangpinxinxiShangpintupian5.jpg,file/shangpinxinxiShangpintupian6.jpg','商品类型4','规格4','品牌4','商品详情4',4,99,4,4,99.9,'2024-01-31 21:02:09','商家账号4','商家名称4'),(65,'2024-01-31 13:02:09','商品名称5','file/shangpinxinxiShangpintupian5.jpg,file/shangpinxinxiShangpintupian6.jpg,file/shangpinxinxiShangpintupian7.jpg','商品类型5','规格5','品牌5','商品详情5',5,99,5,5,99.9,'2024-01-31 21:02:09','商家账号5','商家名称5'),(66,'2024-01-31 13:02:09','商品名称6','file/shangpinxinxiShangpintupian6.jpg,file/shangpinxinxiShangpintupian7.jpg,file/shangpinxinxiShangpintupian8.jpg','商品类型6','规格6','品牌6','商品详情6',6,99,6,6,99.9,'2024-01-31 21:02:09','商家账号6','商家名称6'),(1706706519473,'2024-01-31 13:08:38','饼干','file/1706706482831.jpg','零食类','250克','爱恋','<p><span style=\"color: rgb(96, 98, 102); background-color: rgb(245, 247, 250); font-size: 14px;\">流动摊位管理系统流动摊位管理系统流动摊位管理系统流动摊位管理系统流动摊位管理系统流动摊位管理系统流动摊位管理系统</span><img src=\"http://localhost:8080/cl6400601/file/1706706515263.jpg\" alt=\"\" data-href=\"\" style=\"\"/></p>',2,0,0,14,59,'2024-01-31 21:15:38','2','2');
/*!40000 ALTER TABLE `shangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) DEFAULT NULL COMMENT 'refid',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT NULL COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1706706678674 DEFAULT CHARSET=utf8 COMMENT='我的收藏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1706706389192,'2024-01-31 13:06:28',112,'tejiashangpin','商品名称2','file/tejiashangpinShangpintupian2.jpg','1',NULL,NULL,1706706350210),(1706706678673,'2024-01-31 13:11:18',1706706573678,'tejiashangpin','番茄','file/1706706538180.jpg','1',NULL,NULL,1706706350210);
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tanweishenqingdiaozheng`
--

DROP TABLE IF EXISTS `tanweishenqingdiaozheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tanweishenqingdiaozheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tanweimingcheng` varchar(200) DEFAULT NULL COMMENT '原摊位名称',
  `tanweiweizhi` varchar(200) DEFAULT NULL COMMENT '摊位位置',
  `yuezujin` double DEFAULT NULL COMMENT '月租金',
  `mianji` double DEFAULT NULL COMMENT '面积',
  `shenqingyuanyin` longtext COMMENT '申请原因',
  `shenqingleixing` varchar(200) DEFAULT NULL COMMENT '申请类型',
  `shenqingshijian` datetime DEFAULT NULL COMMENT '申请时间',
  `xintanweimingcheng` varchar(200) DEFAULT NULL COMMENT '新摊位名称',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangjiamingcheng` varchar(200) DEFAULT NULL COMMENT '商家名称',
  `sfsh` varchar(200) DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1706706880474 DEFAULT CHARSET=utf8 COMMENT='摊位申请调整';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tanweishenqingdiaozheng`
--

LOCK TABLES `tanweishenqingdiaozheng` WRITE;
/*!40000 ALTER TABLE `tanweishenqingdiaozheng` DISABLE KEYS */;
INSERT INTO `tanweishenqingdiaozheng` VALUES (141,'2024-01-31 13:02:09','原摊位名称1','摊位位置1',1,1,'申请原因1','新申请','2024-01-31 21:02:09','新摊位名称1','商家账号1','商家名称1','是',''),(142,'2024-01-31 13:02:09','原摊位名称2','摊位位置2',2,2,'申请原因2','新申请','2024-01-31 21:02:09','新摊位名称2','商家账号2','商家名称2','是',''),(143,'2024-01-31 13:02:09','原摊位名称3','摊位位置3',3,3,'申请原因3','新申请','2024-01-31 21:02:09','新摊位名称3','商家账号3','商家名称3','是',''),(144,'2024-01-31 13:02:09','原摊位名称4','摊位位置4',4,4,'申请原因4','新申请','2024-01-31 21:02:09','新摊位名称4','商家账号4','商家名称4','是',''),(145,'2024-01-31 13:02:09','原摊位名称5','摊位位置5',5,5,'申请原因5','新申请','2024-01-31 21:02:09','新摊位名称5','商家账号5','商家名称5','是',''),(146,'2024-01-31 13:02:09','原摊位名称6','摊位位置6',6,6,'申请原因6','新申请','2024-01-31 21:02:09','新摊位名称6','商家账号6','商家名称6','是',''),(1706706880473,'2024-01-31 13:14:40','203','2排',1500,20,'原因','调换','2024-01-31 21:14:32','303','2','2','是','通过');
/*!40000 ALTER TABLE `tanweishenqingdiaozheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tanweixinxi`
--

DROP TABLE IF EXISTS `tanweixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tanweixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tanweimingcheng` varchar(200) DEFAULT NULL COMMENT '摊位名称',
  `fengmian` longtext COMMENT '封面',
  `tanweiweizhi` varchar(200) DEFAULT NULL COMMENT '摊位位置',
  `yuezujin` double DEFAULT NULL COMMENT '月租金',
  `mianji` double DEFAULT NULL COMMENT '面积',
  `tanweizhuangtai` varchar(200) DEFAULT NULL COMMENT '摊位状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1706706653048 DEFAULT CHARSET=utf8 COMMENT='摊位信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tanweixinxi`
--

LOCK TABLES `tanweixinxi` WRITE;
/*!40000 ALTER TABLE `tanweixinxi` DISABLE KEYS */;
INSERT INTO `tanweixinxi` VALUES (121,'2024-01-31 13:02:09','摊位名称1','file/tanweixinxiFengmian1.jpg,file/tanweixinxiFengmian2.jpg,file/tanweixinxiFengmian3.jpg','摊位位置1',1,1,'已出租'),(122,'2024-01-31 13:02:09','摊位名称2','file/tanweixinxiFengmian2.jpg,file/tanweixinxiFengmian3.jpg,file/tanweixinxiFengmian4.jpg','摊位位置2',2,2,'已出租'),(123,'2024-01-31 13:02:09','摊位名称3','file/tanweixinxiFengmian3.jpg,file/tanweixinxiFengmian4.jpg,file/tanweixinxiFengmian5.jpg','摊位位置3',3,3,'已出租'),(124,'2024-01-31 13:02:09','摊位名称4','file/tanweixinxiFengmian4.jpg,file/tanweixinxiFengmian5.jpg,file/tanweixinxiFengmian6.jpg','摊位位置4',4,4,'已出租'),(125,'2024-01-31 13:02:09','摊位名称5','file/tanweixinxiFengmian5.jpg,file/tanweixinxiFengmian6.jpg,file/tanweixinxiFengmian7.jpg','摊位位置5',5,5,'已出租'),(126,'2024-01-31 13:02:09','摊位名称6','file/tanweixinxiFengmian6.jpg,file/tanweixinxiFengmian7.jpg,file/tanweixinxiFengmian8.jpg','摊位位置6',6,6,'已出租'),(1706706653047,'2024-01-31 13:10:52','203','file/1706706644308.webp','2排',1500,20,'已出租');
/*!40000 ALTER TABLE `tanweixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tejiashangpin`
--

DROP TABLE IF EXISTS `tejiashangpin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tejiashangpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpintupian` longtext COMMENT '商品图片',
  `shangpinleixing` varchar(200) NOT NULL COMMENT '商品类型',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `onelimittimes` int(11) DEFAULT NULL COMMENT '单限',
  `alllimittimes` int(11) DEFAULT NULL COMMENT '库存',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  `price` double DEFAULT NULL COMMENT '价格',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangjiamingcheng` varchar(200) DEFAULT NULL COMMENT '商家名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1706706573679 DEFAULT CHARSET=utf8 COMMENT='特价商品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tejiashangpin`
--

LOCK TABLES `tejiashangpin` WRITE;
/*!40000 ALTER TABLE `tejiashangpin` DISABLE KEYS */;
INSERT INTO `tejiashangpin` VALUES (111,'2024-01-31 13:02:09','商品名称1','file/tejiashangpinShangpintupian1.jpg,file/tejiashangpinShangpintupian2.jpg,file/tejiashangpinShangpintupian3.jpg','商品类型1','规格1','品牌1','商品详情1',1,99,1,99.9,'商家账号1','商家名称1'),(112,'2024-01-31 13:02:09','商品名称2','file/tejiashangpinShangpintupian2.jpg,file/tejiashangpinShangpintupian3.jpg,file/tejiashangpinShangpintupian4.jpg','商品类型2','规格2','品牌2','商品详情2',2,99,3,99.9,'商家账号2','商家名称2'),(113,'2024-01-31 13:02:09','商品名称3','file/tejiashangpinShangpintupian3.jpg,file/tejiashangpinShangpintupian4.jpg,file/tejiashangpinShangpintupian5.jpg','商品类型3','规格3','品牌3','商品详情3',3,99,3,99.9,'商家账号3','商家名称3'),(114,'2024-01-31 13:02:09','商品名称4','file/tejiashangpinShangpintupian4.jpg,file/tejiashangpinShangpintupian5.jpg,file/tejiashangpinShangpintupian6.jpg','商品类型4','规格4','品牌4','商品详情4',4,99,4,99.9,'商家账号4','商家名称4'),(115,'2024-01-31 13:02:09','商品名称5','file/tejiashangpinShangpintupian5.jpg,file/tejiashangpinShangpintupian6.jpg,file/tejiashangpinShangpintupian7.jpg','商品类型5','规格5','品牌5','商品详情5',5,99,5,99.9,'商家账号5','商家名称5'),(116,'2024-01-31 13:02:09','商品名称6','file/tejiashangpinShangpintupian6.jpg,file/tejiashangpinShangpintupian7.jpg,file/tejiashangpinShangpintupian8.jpg','商品类型6','规格6','品牌6','商品详情6',6,99,6,99.9,'商家账号6','商家名称6'),(1706706573678,'2024-01-31 13:09:33','番茄','file/1706706538180.jpg','水果类','斤','自产','<p>详情<span style=\"color: rgb(96, 98, 102); background-color: rgb(245, 247, 250); font-size: 14px;\">流动摊位管理系统流动摊位管理系统流动摊位管理系统流动摊位管理系统流动摊位管理系统</span></p>',2,1,1,15,'2','2');
/*!40000 ALTER TABLE `tejiashangpin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,31,'用户账号1','yonghu','用户','umvd28xxi1bk15s5gi2f42m649mqahyc','2024-01-31 13:04:57','2024-01-31 14:04:58'),(2,1706706350210,'1','yonghu','用户','i4sso5fhev0i259j7qxl4dhcb09vecvq','2024-01-31 13:05:55','2024-01-31 14:15:26'),(3,1706706422637,'2','shangjia','管理员','9joj3f2luve6qwttznm8srnnk8owu4b1','2024-01-31 13:07:08','2024-01-31 14:16:48'),(4,1,'admin','users','管理员','5am8p6r0t9cs8abxmsvi5dsz3cnw2j51','2024-01-31 13:09:49','2024-01-31 14:16:21');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-01-31 13:02:09','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghumima` varchar(200) NOT NULL COMMENT '用户密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `money` double DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1706706350211 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (31,'2024-01-31 13:02:09','用户账号1','123456','用户姓名1','file/yonghuTouxiang1.jpg','男','19819881111',200),(32,'2024-01-31 13:02:09','用户账号2','123456','用户姓名2','file/yonghuTouxiang2.jpg','男','19819881112',200),(33,'2024-01-31 13:02:09','用户账号3','123456','用户姓名3','file/yonghuTouxiang3.jpg','男','19819881113',200),(34,'2024-01-31 13:02:09','用户账号4','123456','用户姓名4','file/yonghuTouxiang4.jpg','男','19819881114',200),(35,'2024-01-31 13:02:09','用户账号5','123456','用户姓名5','file/yonghuTouxiang5.jpg','男','19819881115',200),(36,'2024-01-31 13:02:09','用户账号6','123456','用户姓名6','file/yonghuTouxiang6.jpg','男','19819881116',200),(1706706350210,'2024-01-31 13:05:50','1','1','1','file/1706706344896.jpeg','女','13512312312',1993);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-07 13:53:12
