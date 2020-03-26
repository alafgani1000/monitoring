/*
Navicat MySQL Data Transfer

Source Server         : yasunagaphp5
Source Server Version : 50137
Source Host           : localhost:3306
Source Database       : monitoring

Target Server Type    : MYSQL
Target Server Version : 50137
File Encoding         : 65001

Date: 2020-03-26 09:40:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `m_bulan`
-- ----------------------------
DROP TABLE IF EXISTS `m_bulan`;
CREATE TABLE `m_bulan` (
  `id_bln` int(5) NOT NULL DEFAULT '0',
  `nm_bulan` varchar(5) DEFAULT NULL,
  `bulan` varchar(20) DEFAULT NULL,
  `bln` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_bln`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_bulan
-- ----------------------------
INSERT INTO `m_bulan` VALUES ('1', 'Jan', 'JANUARI', 'Januari');
INSERT INTO `m_bulan` VALUES ('2', 'Feb', 'FEBRUARI', 'Februari');
INSERT INTO `m_bulan` VALUES ('3', 'Mar', 'MARET', 'Maret');
INSERT INTO `m_bulan` VALUES ('4', 'Apr', 'APRIL', 'April');
INSERT INTO `m_bulan` VALUES ('5', 'May', 'MEI', 'Mei');
INSERT INTO `m_bulan` VALUES ('6', 'Jun', 'JUNI', 'Juni');
INSERT INTO `m_bulan` VALUES ('7', 'Jul', 'JULI', 'Juli');
INSERT INTO `m_bulan` VALUES ('8', 'Aug', 'AGUSTUS', 'Agustus');
INSERT INTO `m_bulan` VALUES ('9', 'Sep', 'SEPTEMBER', 'September');
INSERT INTO `m_bulan` VALUES ('10', 'Oct', 'OKTOBER', 'Oktober');
INSERT INTO `m_bulan` VALUES ('11', 'Nov', 'NOVEMBER', 'November');
INSERT INTO `m_bulan` VALUES ('12', 'Des', 'DESEMBER', 'Desember');

-- ----------------------------
-- Table structure for `m_line`
-- ----------------------------
DROP TABLE IF EXISTS `m_line`;
CREATE TABLE `m_line` (
  `id_line` int(10) NOT NULL AUTO_INCREMENT,
  `nm_line` varchar(50) DEFAULT NULL,
  `line` varchar(100) DEFAULT NULL,
  `tgl_entry` date DEFAULT NULL,
  `user_posting` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_line`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_line
-- ----------------------------
INSERT INTO `m_line` VALUES ('1', 'Line Produksi 1', 'Line CU 1', '2019-07-11', 'gea');
INSERT INTO `m_line` VALUES ('2', 'Line Produksi 2', 'Line CU 2', '2019-07-11', 'gea');
INSERT INTO `m_line` VALUES ('3', 'Line Sub Assy', 'Line Chamber Assy', '2019-07-11', 'gea');

-- ----------------------------
-- Table structure for `m_line_sub`
-- ----------------------------
DROP TABLE IF EXISTS `m_line_sub`;
CREATE TABLE `m_line_sub` (
  `id_subline` int(10) NOT NULL AUTO_INCREMENT,
  `line_prod` varchar(50) DEFAULT NULL,
  `sub_line` varchar(30) DEFAULT NULL,
  `nm_line` varchar(30) DEFAULT NULL,
  `tgl_entry` date DEFAULT NULL,
  `user_posting` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_subline`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_line_sub
-- ----------------------------
INSERT INTO `m_line_sub` VALUES ('1', 'Line Coil Assy 1', 'Line Coil 1', 'Line 1', '2019-07-11', 'gea');
INSERT INTO `m_line_sub` VALUES ('2', 'Line Du Assy 1', 'Line DU 1', 'Line 1', '2019-07-11', 'gea');
INSERT INTO `m_line_sub` VALUES ('3', 'Line Cu Assy 1', 'Line CU 1', 'Line 1', '2019-07-11', 'gea');
INSERT INTO `m_line_sub` VALUES ('4', 'Line Packing 1', 'Packing 1', 'Line 1', '2019-07-11', 'gea');
INSERT INTO `m_line_sub` VALUES ('5', 'Line Coil Assy 2', 'Line Coil 2', 'Line 2', '2019-07-11', 'gea');
INSERT INTO `m_line_sub` VALUES ('6', 'Line Du Assy 2', 'Line DU 2', 'Line 2', '2019-07-11', 'gea');
INSERT INTO `m_line_sub` VALUES ('7', 'Line Cu Assy 2', 'Line CU 2', 'Line 2', '2019-07-11', 'gea');
INSERT INTO `m_line_sub` VALUES ('8', 'Line Packing 2', 'Packing 2', 'Line 2', '2019-07-11', 'gea');
INSERT INTO `m_line_sub` VALUES ('9', 'Line Casing Assy', 'Casing Assy', 'Line Sub Assy', '2019-07-11', 'gea');
INSERT INTO `m_line_sub` VALUES ('10', 'Line Diaphram Assy', 'Diaphram Assy', 'Line Sub Assy', '2019-07-11', 'gea');
INSERT INTO `m_line_sub` VALUES ('11', 'Line Manual Assy', 'Manual Assy', 'Line Sub Assy', '2019-07-11', 'gea');
INSERT INTO `m_line_sub` VALUES ('12', 'Coverplate & Rod Assy', 'coverplate Assy', 'Line Sub Assy', '2019-07-11', 'gea');

-- ----------------------------
-- Table structure for `m_pro`
-- ----------------------------
DROP TABLE IF EXISTS `m_pro`;
CREATE TABLE `m_pro` (
  `id_pr` int(11) NOT NULL AUTO_INCREMENT,
  `type_pro` varchar(50) DEFAULT NULL,
  `cycletime` int(10) DEFAULT NULL,
  `rasiohit` varchar(10) DEFAULT NULL,
  `rasio` int(10) DEFAULT NULL,
  `dtk_pro` time DEFAULT NULL,
  `cycletimeunit` time DEFAULT NULL,
  `dtk_run` int(11) DEFAULT NULL,
  `tgl_entry` date DEFAULT NULL,
  `user_posting` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_pr`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_pro
-- ----------------------------
INSERT INTO `m_pro` VALUES ('1', 'AP0030P', '80', '1.05', '95', '00:01:20', '00:01:20', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('2', 'AP0030PCH', '80', '1.05', '95', '00:01:20', '00:01:20', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('6', 'AP0040P', '80', '1.05', '95', '00:01:20', '00:01:20', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('7', 'AP0040PCH', '80', '1.05', '95', '00:01:20', '00:01:20', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('8', 'AP0040PHC', '80', '1.05', '95', '00:01:20', '00:01:20', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('9', 'AP0040PTY', '80', '1.05', '95', '00:01:20', '00:01:20', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('10', 'AP0050F1', '90', '1.05', '95', '00:01:30', '00:01:30', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('11', 'AP0060F', '90', '1.05', '95', '00:01:30', '00:01:30', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('12', 'AP0060FTY', '90', '1.05', '95', '00:01:30', '00:01:30', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('13', 'AP0060FHC', '90', '1.05', '95', '00:01:30', '00:01:30', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('14', 'AP0060FCH', '90', '1.05', '95', '00:01:30', '00:01:30', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('15', 'AP0080F', '90', '1.05', '95', '00:01:30', '00:01:30', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('16', 'AP0080FTY', '90', '1.05', '95', '00:01:30', '00:01:30', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('17', 'AP0080FHC', '90', '1.05', '95', '00:01:30', '00:01:30', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('18', 'AP0080FCH', '90', '1.05', '95', '00:01:30', '00:01:30', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('19', 'AP0080H', '90', '1.05', '95', '00:01:30', '00:01:30', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('20', 'AP0080HTY', '90', '1.05', '95', '00:01:30', '00:01:30', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('21', 'AP0080HHC', '90', '1.05', '95', '00:01:30', '00:01:30', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('22', 'AP0080HCH', '90', '1.05', '95', '00:01:30', '00:01:30', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('23', 'AP0100F', '90', '1.05', '95', '00:01:30', '00:01:30', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('24', 'AP0100FHC', '90', '1.05', '95', '00:01:30', '00:01:30', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('25', 'AP0100FTY', '90', '1.05', '95', '00:01:30', '00:01:30', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('26', 'AP0070WCYHT', '175', '1.05', '95', '00:02:55', '00:02:55', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('27', 'AP0100WCYHT', '175', '1.05', '95', '00:02:55', '00:02:55', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('28', 'AP070WCYHTA', '175', '1.05', '95', '00:02:55', '00:02:55', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('29', 'AP0100WCYHTA', '175', '1.05', '95', '00:02:55', '00:02:55', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('30', 'AP0070WCYHTB', '175', '1.05', '95', '00:02:55', '00:02:55', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('31', 'AP0100WCYHTB', '175', '1.05', '95', '00:02:55', '00:02:55', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('32', 'AP0070WCYP', '175', '1.05', '95', '00:02:55', '00:02:55', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('33', 'KSB550HTID', '90', '1.05', '95', '00:01:30', '00:01:30', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('34', 'KSB550SSID', '90', '1.05', '95', '00:01:30', '00:01:30', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('35', 'KSB560HTID', '90', '1.05', '95', '00:01:30', '00:01:30', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('36', 'KSB560SSID', '90', '1.05', '95', '00:01:30', '00:01:30', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('37', 'KSB7HTID', '90', '1.05', '95', '00:01:30', '00:01:30', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('38', 'KSB7SSID', '90', '1.05', '95', '00:01:30', '00:01:30', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('39', 'AP004012UEN', '100', '1.05', '95', '00:01:40', '00:01:40', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('41', 'AP006012UEN', '100', '1.05', '95', '00:01:40', '00:01:40', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('42', 'AP006012UGD', '100', '1.05', '95', '00:01:40', '00:01:40', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('43', 'AP008012UEN', '100', '1.05', '95', '00:01:40', '00:01:40', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('44', 'AP008012UGD', '100', '1.05', '95', '00:01:40', '00:01:40', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('45', 'AP008012UGDAB', '124', '1.05', '95', '00:02:04', '00:02:04', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('46', 'AP006012UGDAB', '124', '1.05', '95', '00:02:04', '00:02:04', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('47', 'AP004012UGDAB', '124', '1.05', '95', '00:02:04', '00:02:04', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('49', 'AP006012UENAB', '124', '1.05', '95', '00:02:04', '00:02:04', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('50', 'AP008012UENAB', '124', '1.05', '95', '00:02:04', '00:02:04', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('51', 'AP0120NHT', '100', '1.05', '95', '00:01:40', '00:01:40', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('52', 'AP0120NHT', '100', '1.05', '95', '00:01:40', '00:01:40', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('53', 'AP0060N23E', '100', '1.05', '95', '00:01:40', '00:01:40', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('54', 'AP0080N23E', '100', '1.05', '95', '00:01:40', '00:01:40', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('55', 'AP0080H23E', '100', '1.05', '95', '00:01:40', '00:01:40', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('56', 'AP0080H23E4', '100', '1.05', '95', '00:01:40', '00:01:40', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('57', 'AP008024A1', '100', '1.05', '95', '00:01:40', '00:01:40', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('58', 'AP0100F23E', '100', '1.05', '95', '00:01:40', '00:01:40', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('59', 'AP0120F23E', '100', '1.05', '95', '00:01:40', '00:01:40', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('60', 'AP006012UPE', '100', '1.05', '95', '00:01:40', '00:01:40', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('61', 'AP008012UPE', '100', '1.05', '95', '00:01:40', '00:01:40', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('62', 'AP010012UGD', '100', '1.05', '95', '00:01:40', '00:01:40', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('63', 'AP012012UGD', '100', '1.05', '95', '00:01:40', '00:01:40', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('64', 'AP006023MTU', '100', '1.05', '95', '00:01:40', '00:01:40', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('65', 'AP008023MTU', '100', '1.05', '95', '00:01:40', '00:01:40', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('66', 'AP0080H23R', '100', '1.05', '95', '00:01:40', '00:01:40', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('67', 'AP0100F23R', '100', '1.05', '95', '00:01:40', '00:01:40', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('68', 'AP0120F23R', '100', '1.05', '95', '00:01:40', '00:01:40', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('69', 'AP0120FID', '90', '1.05', '95', '00:01:30', '00:01:30', '60', '2020-03-25', 'Admin');
INSERT INTO `m_pro` VALUES ('70', 'AP0120NHTID', '90', '1.05', '95', '00:01:30', '00:01:30', '60', '2020-03-25', 'Admin');

-- ----------------------------
-- Table structure for `m_shift`
-- ----------------------------
DROP TABLE IF EXISTS `m_shift`;
CREATE TABLE `m_shift` (
  `id_shift` int(11) NOT NULL AUTO_INCREMENT,
  `shift` varchar(30) DEFAULT NULL,
  `start_kerja` time DEFAULT NULL,
  `end_kerja` time DEFAULT NULL,
  `break` int(11) DEFAULT NULL,
  `breaf` int(11) DEFAULT NULL,
  `n1` int(11) DEFAULT NULL,
  `clean` int(11) DEFAULT NULL,
  `ttl_jam_real` varchar(12) DEFAULT NULL,
  `ttl_menit_real` int(12) DEFAULT NULL,
  `ttl_detik_real` int(12) DEFAULT NULL,
  `ttl_jam_actual` varchar(12) DEFAULT NULL,
  `ttl_mnt_actual` int(12) DEFAULT NULL,
  `ttl_dtk_actual` int(12) DEFAULT NULL,
  `ttl_jam_plan` varchar(12) DEFAULT NULL,
  `user_posting` varchar(50) DEFAULT NULL,
  `tgl_entry` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_shift`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_shift
-- ----------------------------
INSERT INTO `m_shift` VALUES ('1', 'Shift 1', '07:50:00', '16:20:00', '60', '6', '0', '6', '8:30', '510', '30600', '7.30', '438', '26280', '6.50', 'gea', '2020-03-23 00:00:00');
INSERT INTO `m_shift` VALUES ('2', 'Shift 2', '16:10:00', '00:10:00', '60', '15', '10', '10', '8:0 ', '480', '28800', '6.42', '385', '23100', '6.50', 'admin', '2019-05-21 14:04:27');
INSERT INTO `m_shift` VALUES ('3', 'Shift 3', '23:50:00', '07:50:00', '60', '15', '10', '10', '8:0', '480', '28800', '6.42', '385', '23100', '6.50', 'admin', '2019-05-21 14:05:48');
INSERT INTO `m_shift` VALUES ('4', 'Shift 1 Jumat', '07:30:00', '16:30:00', '80', '10', '10', '10', '9:0', '540', '32400', '7.20', '430', '25800', '7.50', 'admin', '2019-05-21 14:07:13');
INSERT INTO `m_shift` VALUES ('5', 'Long Shift 1', '07:30:00', '20:00:00', '90', '15', '10', '10', '12:30', '750', '45000', '10.42', '625', '37500', '10.50', 'admin', '2019-05-21 14:08:42');
INSERT INTO `m_shift` VALUES ('6', 'Long Shift 3', '19:50:00', '07:50:00', '120', '15', '10', '10', '12:0', '720', '43200', '9.92', '565', '33900', '10.00', 'admin', '2019-05-21 14:10:05');
INSERT INTO `m_shift` VALUES ('7', 'Long Shift 1 J', '07:30:00', '20:00:00', '115', '15', '10', '10', '12:30', '750', '45000', '10.0', '600', '36000', '10.08', 'admin', '2019-05-21 14:19:00');

-- ----------------------------
-- Table structure for `plan_dtl`
-- ----------------------------
DROP TABLE IF EXISTS `plan_dtl`;
CREATE TABLE `plan_dtl` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `no_plan` varchar(50) DEFAULT NULL,
  `itemno` varchar(100) DEFAULT NULL,
  `type_pro` varchar(100) DEFAULT NULL,
  `plant_date` date DEFAULT NULL,
  `qty_plan` int(20) DEFAULT NULL,
  `statusid` varchar(20) DEFAULT NULL,
  `id_bulan` varchar(20) DEFAULT NULL,
  `tahun` int(20) DEFAULT NULL,
  `tgl_bln` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of plan_dtl
-- ----------------------------

-- ----------------------------
-- Table structure for `plan_req`
-- ----------------------------
DROP TABLE IF EXISTS `plan_req`;
CREATE TABLE `plan_req` (
  `no_plan` varchar(50) NOT NULL,
  `plan_date` date DEFAULT NULL,
  `nm_plan` varchar(100) DEFAULT NULL,
  `line_ap` varchar(50) DEFAULT NULL,
  `bln_plan` varchar(30) DEFAULT NULL,
  `tahun_plan` int(5) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `user_posting` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`no_plan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of plan_req
-- ----------------------------

-- ----------------------------
-- Table structure for `team`
-- ----------------------------
DROP TABLE IF EXISTS `team`;
CREATE TABLE `team` (
  `id_team` int(11) NOT NULL AUTO_INCREMENT,
  `teams` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_team`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of team
-- ----------------------------
INSERT INTO `team` VALUES ('1', 'A');
INSERT INTO `team` VALUES ('2', 'B');
INSERT INTO `team` VALUES ('3', 'C');

-- ----------------------------
-- Table structure for `user_login`
-- ----------------------------
DROP TABLE IF EXISTS `user_login`;
CREATE TABLE `user_login` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(10) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `nm_jabatan` varchar(20) DEFAULT NULL,
  `level` varchar(15) NOT NULL,
  `poto` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_login
-- ----------------------------
INSERT INTO `user_login` VALUES ('1', 'gea', '200916', 'Administrator', 'admin', 'gea');
INSERT INTO `user_login` VALUES ('2', 'ani', 'yasunaga', 'Administrator', 'adminprod', null);
INSERT INTO `user_login` VALUES ('3', 'ipung', 'yasunaga', 'Administrator', 'admineng', null);
INSERT INTO `user_login` VALUES ('4', 'projo', 'yasunaga', 'Administrator', 'adminppic', null);
INSERT INTO `user_login` VALUES ('5', 'nurdin', 'yasunaga', 'Administrator', 'adminprod', null);
INSERT INTO `user_login` VALUES ('6', 'nurdin', 'yasunaga', 'Administrator', 'adminprod', null);
