/*
Navicat MySQL Data Transfer

Source Server         : Yasunaga
Source Server Version : 50137
Source Host           : localhost:3306
Source Database       : prod_ap

Target Server Type    : MYSQL
Target Server Version : 50137
File Encoding         : 65001

Date: 2020-02-27 07:50:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `dtl_suratjalan`
-- ----------------------------
DROP TABLE IF EXISTS `dtl_suratjalan`;
CREATE TABLE `dtl_suratjalan` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `no_sj` varchar(50) DEFAULT NULL,
  `kd_accp` varchar(50) DEFAULT NULL,
  `nm_part` varchar(100) DEFAULT NULL,
  `qty_brg` varchar(20) DEFAULT NULL,
  `satuan` varchar(10) DEFAULT NULL,
  `kett` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dtl_suratjalan
-- ----------------------------
INSERT INTO `dtl_suratjalan` VALUES ('1', '0084/AP - YI/10 - 19', '-', 'BOX PLASTIK', '10', 'Pcs', 'UNTUK DIKEMBALIKAN');

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
-- Table structure for `m_dept`
-- ----------------------------
DROP TABLE IF EXISTS `m_dept`;
CREATE TABLE `m_dept` (
  `id_dept` int(10) NOT NULL AUTO_INCREMENT,
  `kd_dept` varchar(250) DEFAULT NULL,
  `nm_dept` varchar(50) DEFAULT NULL,
  `tgl_entry` date DEFAULT NULL,
  `user_posting` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_dept`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_dept
-- ----------------------------
INSERT INTO `m_dept` VALUES ('1', 'YI-001', 'ACCOUNTING & TAX', '2019-07-10', 'gea');
INSERT INTO `m_dept` VALUES ('2', 'YI-002', 'HRD', '2017-11-27', 'resha');
INSERT INTO `m_dept` VALUES ('3', 'YI-003', 'Information Technologi', '2017-11-27', 'resha');
INSERT INTO `m_dept` VALUES ('4', 'YI-004', 'Marketing', '2017-11-27', 'resha');
INSERT INTO `m_dept` VALUES ('5', 'YI-005', 'General Affair', '2017-11-27', 'resha');
INSERT INTO `m_dept` VALUES ('6', 'YI-006', 'HSE & P2K3', '2017-11-27', 'resha');
INSERT INTO `m_dept` VALUES ('7', 'YI-007', 'PPIC A/P', '2017-11-27', 'resha');
INSERT INTO `m_dept` VALUES ('8', 'YI-008', 'PPIC Con/Rod', '2017-11-27', 'resha');
INSERT INTO `m_dept` VALUES ('9', 'YI-009', 'Purchasing', '2017-11-27', 'resha');
INSERT INTO `m_dept` VALUES ('10', 'YI-010', 'Exim', '2017-11-27', 'resha');
INSERT INTO `m_dept` VALUES ('11', 'YI-011', 'QC & QA', '2017-11-27', 'resha');
INSERT INTO `m_dept` VALUES ('12', 'YI-012', 'ENG CON/ROD', '2017-11-27', 'resha');
INSERT INTO `m_dept` VALUES ('13', 'YI-013', 'MTC', '2017-11-27', 'resha');
INSERT INTO `m_dept` VALUES ('14', 'YI-014', 'Production Con/Rod', '2017-11-27', 'resha');
INSERT INTO `m_dept` VALUES ('15', 'YI-015', 'ENG A/P', '2017-11-27', 'resha');
INSERT INTO `m_dept` VALUES ('16', 'YI-016', 'Production A/P', '2017-11-27', 'resha');
INSERT INTO `m_dept` VALUES ('17', 'YI-017', 'TPS', '2017-11-27', 'resha');
INSERT INTO `m_dept` VALUES ('18', 'YI-018', 'JAPAN EMP', '2017-11-27', 'resha');
INSERT INTO `m_dept` VALUES ('19', 'yi-019', 'Server & dll', '2017-11-28', 'resha');

-- ----------------------------
-- Table structure for `m_level`
-- ----------------------------
DROP TABLE IF EXISTS `m_level`;
CREATE TABLE `m_level` (
  `id_lvl` int(10) NOT NULL AUTO_INCREMENT,
  `level` varchar(30) DEFAULT NULL,
  `jobs` varchar(100) DEFAULT NULL,
  `dept` varchar(100) DEFAULT NULL,
  `user_posting` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_lvl`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_level
-- ----------------------------
INSERT INTO `m_level` VALUES ('1', 'adminprod', 'input data produksi harian', 'Production A/P', 'gea');
INSERT INTO `m_level` VALUES ('2', 'admineng', 'input data BOM', 'ENG A/P', 'gea');
INSERT INTO `m_level` VALUES ('3', 'adminppic', 'input data request dari produksi', 'PPIC A/P', 'gea');

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
INSERT INTO `m_line` VALUES ('1', 'Line Produksi 1', 'Line 1', '2019-07-11', 'gea');
INSERT INTO `m_line` VALUES ('2', 'Line Produksi 2', 'Line 2', '2019-07-11', 'gea');
INSERT INTO `m_line` VALUES ('3', 'Line Sub Assy', 'Line Sub Assy', '2019-07-11', 'gea');

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
-- Table structure for `m_mtppic`
-- ----------------------------
DROP TABLE IF EXISTS `m_mtppic`;
CREATE TABLE `m_mtppic` (
  `id_mt` int(10) NOT NULL AUTO_INCREMENT,
  `kd_mt` varchar(250) DEFAULT NULL,
  `cd_mt` varchar(2) DEFAULT NULL,
  `nm_mt` varchar(50) DEFAULT NULL,
  `tgl_entry` date DEFAULT NULL,
  `user_posting` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_mt`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_mtppic
-- ----------------------------
INSERT INTO `m_mtppic` VALUES ('1', 'Mt_001', '-', 'INNER BOX 50F', '2019-08-30', 'Gea Cindra');
INSERT INTO `m_mtppic` VALUES ('2', 'Mt_002', '-', 'KERANJANG BESI', '2019-08-30', 'Gea Cindra');
INSERT INTO `m_mtppic` VALUES ('3', 'Mt_003', '-', 'BOBBIN KOSONG PT-25', '2019-08-30', 'Gea Cindra');
INSERT INTO `m_mtppic` VALUES ('4', 'Mt_004', '-', 'BOX PLASTIK', '2019-08-30', 'Gea Cindra');
INSERT INTO `m_mtppic` VALUES ('5', 'Mt_005', '-', 'PETI KAYU', '2019-08-30', 'Gea Cindra');
INSERT INTO `m_mtppic` VALUES ('6', 'Mt_006', '-', 'PALET KAYU EWINDO ~ YI', '2019-08-30', 'Gea Cindra');
INSERT INTO `m_mtppic` VALUES ('7', 'Mt_007', '-', 'KARTON BOX', '2019-08-30', 'Gea Cindra');
INSERT INTO `m_mtppic` VALUES ('8', 'Mt_008', '-', 'PALLET KAYU', '2019-08-30', 'Gea Cindra');
INSERT INTO `m_mtppic` VALUES ('9', 'Mt_009', '-', 'BOX PLASTIK YI', '2019-08-30', 'Gea Cindra');
INSERT INTO `m_mtppic` VALUES ('10', 'Mt_010', '-', 'BOBBIN KOSONG PT-15', '2019-08-30', 'Gea Cindra');
INSERT INTO `m_mtppic` VALUES ('11', 'Mt_011', '-', 'AIR CLEANER PACKING AP30', '2019-08-30', 'Gea Cindra');
INSERT INTO `m_mtppic` VALUES ('12', 'Mt_012', '-', 'KERANJANG BESI (WIKA)', '2019-08-30', 'Gea Cindra');
INSERT INTO `m_mtppic` VALUES ('13', 'Mt_013', '-', 'BOBBIN KOSONG PT-10', '2019-08-30', 'Gea Cindra');
INSERT INTO `m_mtppic` VALUES ('14', 'Mt_014', '-', 'AIR CLEANER PACKING 100H', '2019-08-30', 'Gea Cindra');
INSERT INTO `m_mtppic` VALUES ('15', 'Mt_015', '-', 'BOBBIN KOSONG PT-10', '2019-08-30', 'Gea Cindra');
INSERT INTO `m_mtppic` VALUES ('16', 'Mt_016', '-', 'BOBBIN KOSONG PT-15', '2019-08-30', 'Gea Cindra');
INSERT INTO `m_mtppic` VALUES ('17', 'Mt_017', '-', 'KARTON BOX', '2019-08-30', 'Gea Cindra');
INSERT INTO `m_mtppic` VALUES ('18', 'Mt_018', '-', 'BOX PLASTIK YI', '2019-08-30', 'Gea Cindra');
INSERT INTO `m_mtppic` VALUES ('19', 'Mt_019', '-', 'PETI KAYU', '2019-08-30', 'Gea Cindra');
INSERT INTO `m_mtppic` VALUES ('20', 'Mt_020', '-', 'BOBBIN KOSONG PT-25', '2019-08-30', 'Gea Cindra');
INSERT INTO `m_mtppic` VALUES ('21', 'Mt_021', '-', 'PALET PLASTIK', '2019-08-30', 'Gea Cindra');
INSERT INTO `m_mtppic` VALUES ('22', 'Mt_022', '-', 'BOX PLASTIK KUNING', '2019-08-30', 'Gea Cindra');

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
INSERT INTO `m_shift` VALUES ('1', 'Shift 1', '07:30:00', '16:30:00', '60', '15', '10', '10', '9:0', '540', '32400', '7.42', '445', '26700', '7.50', 'admin', '2019-05-21 14:03:56');
INSERT INTO `m_shift` VALUES ('2', 'Shift 2', '16:10:00', '00:10:00', '60', '15', '10', '10', '8:0 ', '480', '28800', '6.42', '385', '23100', '6.50', 'admin', '2019-05-21 14:04:27');
INSERT INTO `m_shift` VALUES ('3', 'Shift 3', '23:50:00', '07:50:00', '60', '15', '10', '10', '8:0', '480', '28800', '6.42', '385', '23100', '6.50', 'admin', '2019-05-21 14:05:48');
INSERT INTO `m_shift` VALUES ('4', 'Shift 1 Jumat', '07:30:00', '16:30:00', '80', '10', '10', '10', '9:0', '540', '32400', '7.20', '430', '25800', '7.50', 'admin', '2019-05-21 14:07:13');
INSERT INTO `m_shift` VALUES ('5', 'Long Shift 1', '07:30:00', '20:00:00', '90', '15', '10', '10', '12:30', '750', '45000', '10.42', '625', '37500', '10.50', 'admin', '2019-05-21 14:08:42');
INSERT INTO `m_shift` VALUES ('6', 'Long Shift 3', '19:50:00', '07:50:00', '120', '15', '10', '10', '12:0', '720', '43200', '9.92', '565', '33900', '10.00', 'admin', '2019-05-21 14:10:05');
INSERT INTO `m_shift` VALUES ('7', 'Long Shift 1 J', '07:30:00', '20:00:00', '115', '15', '10', '10', '12:30', '750', '45000', '10.0', '600', '36000', '10.08', 'admin', '2019-05-21 14:19:00');

-- ----------------------------
-- Table structure for `m_suplier`
-- ----------------------------
DROP TABLE IF EXISTS `m_suplier`;
CREATE TABLE `m_suplier` (
  `id_suply` int(10) NOT NULL AUTO_INCREMENT,
  `kd_suply` varchar(250) DEFAULT NULL,
  `nm_suply` varchar(50) DEFAULT NULL,
  `almt_suply` varchar(250) DEFAULT NULL,
  `tgl_entry` date DEFAULT NULL,
  `user_posting` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_suply`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_suplier
-- ----------------------------
INSERT INTO `m_suplier` VALUES ('1', 'Sp_001', 'PT.EDIRAL', 'CIKANDE', '2019-08-29', 'Gea Cindra');
INSERT INTO `m_suplier` VALUES ('2', 'Sp_002', 'PT.EWINDO', 'BANDUNG', '2019-08-29', 'Gea Cindra');
INSERT INTO `m_suplier` VALUES ('3', 'Sp_003', 'PT.WIJAYA KARYA', 'CIBINONG', '2019-08-29', 'gea');
INSERT INTO `m_suplier` VALUES ('4', 'Sp_004', 'PT.IMC TEKNO', 'PURWAKARTA', '2019-08-29', 'Gea Cindra');
INSERT INTO `m_suplier` VALUES ('5', 'Sp_005', 'PT.NIKKATSU', 'BANDUNG', '2019-08-29', 'Gea Cindra');
INSERT INTO `m_suplier` VALUES ('6', 'Sp_006', 'PT.HASTA PRIMA INDUSTRY', 'KARAWANG', '2019-08-29', 'gea');
INSERT INTO `m_suplier` VALUES ('7', 'Sp_007', 'PT.SORAYA', 'TANGERANG', '2019-08-29', 'Gea Cindra');
INSERT INTO `m_suplier` VALUES ('8', 'Sp_008', 'PT.NESINAK', 'CIKARANG', '2019-08-29', 'Gea Cindra');
INSERT INTO `m_suplier` VALUES ('9', 'Sp_009', 'PT.FUJI SPRING', 'KARAWANG', '2019-08-29', 'Gea Cindra');
INSERT INTO `m_suplier` VALUES ('10', 'Sp_010', 'PT.SANSHO RUBBER INDONESIA', 'BEKASI', '2019-08-29', 'gea');
INSERT INTO `m_suplier` VALUES ('11', 'Sp_011', 'PT.YAHATA FASTENER', 'CIKARANG', '0000-00-00', 'PROJO');
INSERT INTO `m_suplier` VALUES ('12', 'Sp_012', 'PT.NITTO MATERIAL', 'BEKASI', '2019-08-29', 'gea');
INSERT INTO `m_suplier` VALUES ('13', 'Sp_013', 'PT.TACI', 'PULO GADUNG', '2019-08-29', 'Gea Cindra');
INSERT INTO `m_suplier` VALUES ('14', 'Sp-001', 'ytyutu', 'tuttttutttu', '2020-02-27', 'gea');

-- ----------------------------
-- Table structure for `req_all`
-- ----------------------------
DROP TABLE IF EXISTS `req_all`;
CREATE TABLE `req_all` (
  `id` int(22) NOT NULL AUTO_INCREMENT,
  `no_req` varchar(30) DEFAULT NULL,
  `req_date` date DEFAULT NULL,
  `nm_req` varchar(100) DEFAULT NULL,
  `line_ap` varchar(100) DEFAULT NULL,
  `shift` varchar(20) DEFAULT NULL,
  `jm_krj` varchar(10) DEFAULT NULL,
  `user_posting` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of req_all
-- ----------------------------

-- ----------------------------
-- Table structure for `suratjalan`
-- ----------------------------
DROP TABLE IF EXISTS `suratjalan`;
CREATE TABLE `suratjalan` (
  `id_sj` int(20) NOT NULL AUTO_INCREMENT,
  `no_sj` varchar(30) DEFAULT NULL,
  `nm_suplier` varchar(20) DEFAULT NULL,
  `almt_suplier` varchar(50) DEFAULT NULL,
  `sj_date` varchar(30) DEFAULT NULL,
  `jns_doc` varchar(50) DEFAULT NULL,
  `no_doc` varchar(50) DEFAULT NULL,
  `tgl_doc` varchar(30) DEFAULT NULL,
  `bag_gudang` varchar(50) DEFAULT NULL,
  `no_kendaraan` varchar(30) DEFAULT NULL,
  `jam_keluar` varchar(30) DEFAULT NULL,
  `nm_supir` varchar(50) DEFAULT NULL,
  `ttl_qty` varchar(20) DEFAULT NULL,
  `nm_atasan` varchar(30) DEFAULT NULL,
  `user_posting` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_sj`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of suratjalan
-- ----------------------------
INSERT INTO `suratjalan` VALUES ('1', '0084/AP - YI/10 - 19', 'PT.FUJI SPRING', 'KARAWANG', '17-October-2019', '-', '-', '-', 'IMA', 'T8843OY', '13:51:03', 'Dedy', '10', 'PROJO', 'PROJO');

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
