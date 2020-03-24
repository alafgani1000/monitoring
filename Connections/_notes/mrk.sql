/*
Navicat MySQL Data Transfer

Source Server         : yasunaga
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : mrk

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-05-12 16:27:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cost_ng`
-- ----------------------------
DROP TABLE IF EXISTS `cost_ng`;
CREATE TABLE `cost_ng` (
  `no_price_ng` varchar(50) NOT NULL DEFAULT '',
  `man_cost` varchar(100) DEFAULT NULL,
  `un_cost` varchar(30) DEFAULT NULL,
  `syms` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`no_price_ng`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cost_ng
-- ----------------------------

-- ----------------------------
-- Table structure for `invoice`
-- ----------------------------
DROP TABLE IF EXISTS `invoice`;
CREATE TABLE `invoice` (
  `id_inv` int(20) NOT NULL AUTO_INCREMENT,
  `no_inv` varchar(50) DEFAULT NULL,
  `dt_inv` date DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `freight` varchar(30) DEFAULT NULL,
  `customer_dn` varchar(200) DEFAULT NULL,
  `terms` varchar(50) DEFAULT NULL,
  `vassel` varchar(50) DEFAULT NULL,
  `dt_dev` date DEFAULT NULL,
  `dt_arr` date DEFAULT NULL,
  `no_mdfo` longtext,
  `no_po` varchar(50) DEFAULT NULL,
  `nm_dept` varchar(50) DEFAULT NULL,
  `nm_cus` varchar(30) DEFAULT NULL,
  `ship_to` longtext,
  `sold_to` longtext,
  `sym` varchar(20) DEFAULT NULL,
  `kurs` varchar(50) DEFAULT NULL,
  `bank` varchar(100) DEFAULT NULL,
  `no_rek` varchar(50) DEFAULT NULL,
  `nm_com` varchar(40) DEFAULT NULL,
  `loct` varchar(100) DEFAULT NULL,
  `type_kurs` varchar(25) DEFAULT NULL,
  `total` varchar(30) DEFAULT NULL,
  `vat` varchar(30) DEFAULT NULL,
  `gr_total` varchar(50) DEFAULT NULL,
  `note` longtext,
  `alamat` longtext,
  `stamp` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_inv`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of invoice
-- ----------------------------
INSERT INTO `invoice` VALUES ('1', '2018-C0001', '2018-04-13', 'Indonesia', 'Collect', '463646262626\r\n562352365823\r\n635925932593\r\n785362865320', 'One Month After Delivery', 'Box Car', '2018-04-13', '2018-04-14', '212555535351351351515', '40823977531', 'Connecting Rod', 'TMMIN', 'PT. Toyota Motor Manufacturing Indonesia Plant #3\r\nJl.Transheksa,KJIE\r\nKarawang - Jawa Barat Indonesia, 41361', 'PT. Toyota Motor Manufacturing Indonesia\r\n Jl. Laks. Yos Sudarso, Sunter II Sungai Bambu\r\nTanjung Priok  Jakarta Utara ,Jakarta 14330', 'Â¥', '128.5250', 'PT. BANK SUMITOMO MITSUI INDONESIA', '111765-0103', 'PT. Yasunaga Indonesia', 'Jakarta Branch', 'JPY', '679645341.00', '67964534.10000001', '747615875.1', 'Trail Aplikasi', 'Sumitmas II, 10th Floor Jl. Jend. Sudirman Kav 61 - 62 Jakarta', '6000');
INSERT INTO `invoice` VALUES ('2', '2018-C0002', '2018-04-20', 'Indonesia', 'Prepaid', '532525252525\r\n436464363643\r\n235353267363\r\n247244757869', 'One  Month After Delivery', 'Box Car', '2018-04-13', '2018-04-04', 'ETEWTEWW46WDSYTS', '4632646462', 'Connecting Rod', 'TMMIN', 'PT. Toyota Motor Manufacturing Indonesia Plant #3\r\nJl.Transheksa,KJIE\r\nKarawang - Jawa Barat Indonesia, 41361', 'PT. Toyota Motor Manufacturing Indonesia\r\n Jl. Laks. Yos Sudarso, Sunter II Sungai Bambu\r\nTanjung Priok  Jakarta Utara ,Jakarta 14330', '$', '13770.0000', 'PT. BANK SUMITOMO MITSUI INDONESIA', '111765-0102', 'PT. Yasunaga Indonesia', 'Jakarta Branch', 'USD', '5345514000.00', '534551400', '5880071400', 'Trail aplikasi Marketing Dept.', 'Sumitmas II, 10th Floor Jl. Jend. Sudirman Kav 61 - 62 Jakarta', '6000');
INSERT INTO `invoice` VALUES ('3', '8008080', '2018-04-04', 'Indonesia', 'wwwwwwwwwwwwwww', 'eggdsgds', 'gsrhrshrh', 'hdfhgfdhfd', '2018-04-23', '2018-04-23', 'dshgsddhshshsh', 'hdedshdshshs', 'Connecting Rod', 'ADM', 'PT. Astra Daihatsu Motor - Engine Plant\r\n Jl. Maligi VI/M6 Kawasan Industri KIIC\r\nTol. Jakarta - Cikampek Km 47,5', 'PT. Astra Daihatsu Motor\r\n Jl. Gaya Motor III No. 5, Sunter II\r\n Jakarta Utara 14350', 'Rp', '1', 'BANK NEGARA INDONESIA', '1450288', 'PT. Yasunaga Indonesia', 'Cab Kragilan- Serang', 'IDR', '439200000.00', '43920000', '483126000', '643436436432272747', 'Jl. Raya Jakarta - Serang KM. 74 Kragilan - Serang', '');
INSERT INTO `invoice` VALUES ('4', '12234', '2018-03-04', 'rewrewrewrw', 'ewrewrwrwr', 'rewq252535325235\r\nip869076060\r\n-79-7866-7-87', 'One Month After Delivery', '6utuufdgj', '2018-04-17', '2018-04-17', 'dududjhfututuigkfgkj\r\nfkfkjfkjfk', 'f4575737537', 'Connecting Rod', 'TMMIN', 'PT. Toyota Motor Manufacturing Indonesia Plant #3\r\nJl.Transheksa,KJIE\r\nKarawang - Jawa Barat Indonesia, 41361', 'PT. Toyota Motor Manufacturing Indonesia\r\n Jl. Laks. Yos Sudarso, Sunter II Sungai Bambu\r\nTanjung Priok  Jakarta Utara ,Jakarta 14330', 'Â¥', '128.5250', 'PT. BANK SUMITOMO MITSUI INDONESIA', '111765-0103', 'PT. Yasunaga Indonesia', 'Jakarta Branch', 'JPY', '1433908184.20', '143390818.42000002', '1577305002.6200001', 'gdhdhhdhdjdgggggggggggtudtuuru', 'Sumitmas II, 10th Floor Jl. Jend. Sudirman Kav 61 - 62 Jakarta', '6000');
INSERT INTO `invoice` VALUES ('5', '909090', '2018-04-04', 'hfdhfhdfh', 'fdhfhfxhfdh', 'fhfhfhfhfdhfdhfxh', 'hshfhfshh', 'hfdhfdhfdhfdhd', '2018-04-12', '2018-04-12', 'fdhfhfhfhfhfhhfdh', 'ryrysys', 'Connecting Rod', 'TMMIN', 'PT. Toyota Motor Manufacturing Indonesia Plant #3\r\nJl.Transheksa,KJIE\r\nKarawang - Jawa Barat Indonesia, 41361', 'PT. Toyota Motor Manufacturing Indonesia\r\n Jl. Laks. Yos Sudarso, Sunter II Sungai Bambu\r\nTanjung Priok  Jakarta Utara ,Jakarta 14330', 'Â¥', '128.5250', 'PT. BANK SUMITOMO MITSUI INDONESIA', '111765-0103', 'PT. Yasunaga Indonesia', 'Jakarta Branch', 'JPY', '1514178730.00', '151417873', '1665602603', 'fhsfhshs', 'Sumitmas II, 10th Floor Jl. Jend. Sudirman Kav 61 - 62 Jakarta', '6000');

-- ----------------------------
-- Table structure for `line`
-- ----------------------------
DROP TABLE IF EXISTS `line`;
CREATE TABLE `line` (
  `id_line` varchar(10) NOT NULL DEFAULT '',
  `nm_line` varchar(50) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `years` int(5) DEFAULT NULL,
  `month` varchar(20) DEFAULT NULL,
  `tgl_entry` date DEFAULT NULL,
  `user_posting` varchar(30) DEFAULT NULL,
  `kd_dept` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_line`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of line
-- ----------------------------
INSERT INTO `line` VALUES ('AIR PUMP 1', 'LINE - 1', 'AIR PUMP', '1996', 'SEPTEMBER', '1996-09-20', 'admin', 'YI-016');
INSERT INTO `line` VALUES ('AIR PUMP 2', 'LINE - 2', 'AIR PUMP', '2011', 'JANUARI', '2011-01-25', 'admin', 'YI-016');
INSERT INTO `line` VALUES ('FX-1', 'FLEXIBLE -1', 'Connecting Rod', '1999', 'JANUARI', '2017-11-01', 'admin', 'YI-014');
INSERT INTO `line` VALUES ('FX-11', 'FLEXIBLE -11', 'Connecting Rod', '2011', 'MARET', '2017-11-01', 'admin', 'YI-014');
INSERT INTO `line` VALUES ('FX-2', 'FLEXIBLE -2', 'Connecting Rod', '1999', 'FEBRUARI', '2017-11-01', 'admin', 'YI-014');
INSERT INTO `line` VALUES ('FX-3', 'FLEXIBLE -3', 'Connecting Rod', '2000', 'MARET', '2017-11-01', 'admin', 'YI-014');
INSERT INTO `line` VALUES ('FX-4', 'FLEXIBLE -4', 'Connecting Rod', '2001', 'APRIL', '2017-11-01', 'admin', 'YI-014');
INSERT INTO `line` VALUES ('FX-5', 'FLEXIBLE -5', 'Connecting Rod', '2002', 'MEI', '2017-11-01', 'admin', 'YI-014');
INSERT INTO `line` VALUES ('FX-6', 'FLEXIBLE -6', 'Connecting Rod', '2003', 'JUNI', '2017-11-01', 'admin', 'YI-014');
INSERT INTO `line` VALUES ('FX-7', 'FLEXIBLE -7', 'Connecting Rod', '2005', 'AGUSTUS', '2017-11-01', 'admin', 'YI-014');
INSERT INTO `line` VALUES ('FX-8', 'FLEXIBLE -8', 'Connecting Rod', '2006', 'SEPTEMNER', '2017-11-01', 'admin', 'YI-014');
INSERT INTO `line` VALUES ('FX-9', 'FLEXIBLE -9', 'Connecting Rod', '2007', 'OKTOBER', '2017-11-01', 'admin', 'YI-014');
INSERT INTO `line` VALUES ('FX-SLN', 'FLEXIBLE -SLN', 'Connecting Rod', '2009', 'NOVEMBER', '2017-11-01', 'admin', 'YI-014');

-- ----------------------------
-- Table structure for `linecr`
-- ----------------------------
DROP TABLE IF EXISTS `linecr`;
CREATE TABLE `linecr` (
  `id_line` varchar(10) NOT NULL DEFAULT '',
  `nm_line` varchar(50) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `years` int(5) DEFAULT NULL,
  `month` varchar(20) DEFAULT NULL,
  `tgl_entry` date DEFAULT NULL,
  `user_posting` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_line`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of linecr
-- ----------------------------
INSERT INTO `linecr` VALUES ('FX-1', 'FLEXIBLE -1', 'PRODUCTION CON-ROD', '1999', 'JANUARI', '2017-11-01', 'admin');
INSERT INTO `linecr` VALUES ('FX-11', 'FLEXIBLE -11', 'PRODUCTION CON-ROD', '2011', 'MARET', '2017-11-01', 'admin');
INSERT INTO `linecr` VALUES ('FX-2', 'FLEXIBLE -2', 'PRODUCTION CON-ROD', '1999', 'FEBRUARI', '2017-11-01', 'admin');
INSERT INTO `linecr` VALUES ('FX-3', 'FLEXIBLE -3', 'PRODUCTION CON-ROD', '2000', 'MARET', '2017-11-01', 'admin');
INSERT INTO `linecr` VALUES ('FX-4', 'FLEXIBLE -4', 'PRODUCTION CON-ROD', '2001', 'APRIL', '2017-11-01', 'admin');
INSERT INTO `linecr` VALUES ('FX-5', 'FLEXIBLE -5', 'PRODUCTION CON-ROD', '2002', 'MEI', '2017-11-01', 'admin');
INSERT INTO `linecr` VALUES ('FX-6', 'FLEXIBLE -6', 'PRODUCTION CON-ROD', '2003', 'JUNI', '2017-11-01', 'admin');
INSERT INTO `linecr` VALUES ('FX-7', 'FLEXIBLE -7', 'PRODUCTION CON-ROD', '2005', 'AGUSTUS', '2017-11-01', 'admin');
INSERT INTO `linecr` VALUES ('FX-8', 'FLEXIBLE -8', 'PRODUCTION CON-ROD', '2006', 'SEPTEMNER', '2017-11-01', 'admin');
INSERT INTO `linecr` VALUES ('FX-9', 'FLEXIBLE -9', 'PRODUCTION CON-ROD', '2007', 'OKTOBER', '2017-11-01', 'admin');
INSERT INTO `linecr` VALUES ('FX-SLN', 'FLEXIBLE -SLN', 'PRODUCTION CON-ROD', '2009', 'NOVEMBER', '2017-11-01', 'admin');

-- ----------------------------
-- Table structure for `m_banking`
-- ----------------------------
DROP TABLE IF EXISTS `m_banking`;
CREATE TABLE `m_banking` (
  `id_bank` varchar(10) NOT NULL DEFAULT '',
  `nm_bank` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `alamat` longtext,
  `account_nm` varchar(50) DEFAULT NULL,
  `no_rek` varchar(50) DEFAULT NULL,
  `type_mt` varchar(20) DEFAULT NULL,
  `nm_cus` varchar(30) DEFAULT NULL,
  `tgl_entry` date DEFAULT NULL,
  `user_posting` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_bank`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_banking
-- ----------------------------
INSERT INTO `m_banking` VALUES ('BK-01', 'PT. BANK SUMITOMO MITSUI INDONESIA', 'Jakarta Branch', 'Sumitmas II, 10th Floor Jl. Jend. Sudirman Kav 61 - 62 Jakarta', 'PT. Yasunaga Indonesia', '111765-0101', 'IDR', 'TMMIN', '2018-04-03', 'rissa');
INSERT INTO `m_banking` VALUES ('BK-02', 'PT. BANK SUMITOMO MITSUI INDONESIA', 'Jakarta Branch', 'Sumitmas II, 10th Floor Jl. Jend. Sudirman Kav 61 - 62 Jakarta', 'PT. Yasunaga Indonesia', '111765-0102', 'USD', 'TMMIN', '2018-04-03', 'rissa');
INSERT INTO `m_banking` VALUES ('BK-03', 'PT. BANK SUMITOMO MITSUI INDONESIA', 'Jakarta Branch', 'Sumitmas II, 10th Floor Jl. Jend. Sudirman Kav 61 - 62 Jakarta', 'PT. Yasunaga Indonesia', '111765-0103', 'JPY', 'TMMIN', '2018-04-03', 'rissa');
INSERT INTO `m_banking` VALUES ('BK-04', 'BANK NEGARA INDONESIA', 'Cab Kragilan- Serang', 'Jl. Raya Jakarta - Serang KM. 74 Kragilan - Serang', 'PT. Yasunaga Indonesia', '1450288', 'IDR', 'ADM', '2018-04-03', 'rissa');
INSERT INTO `m_banking` VALUES ('BK-05', 'BANK NEGARA INDONESIA', 'Cab Kragilan- Serang', 'Jl. Raya Jakarta - Serang KM. 74 Kragilan - Serang', 'PT. Yasunaga Indonesia', '0199299024', 'USD', 'ADM', '2018-04-03', 'rissa');
INSERT INTO `m_banking` VALUES ('BK-06', 'BANK NEGARA INDONESIA', 'Cab Kragilan- Serang', 'Jl. Raya Jakarta - Serang KM. 74 Kragilan - Serang', 'PT. Yasunaga Indonesia', '11773003', 'DPKK', 'ADM', '2018-04-03', 'rissa');
INSERT INTO `m_banking` VALUES ('BK-07', 'BANK NEGARA INDONESIA', 'Cab Kragilan- Serang', 'Jl. Raya Jakarta - Serang KM. 74 Kragilan - Serang', 'PT. Yasunaga Indonesia', '1450299', 'Guarantee Bank', 'ADM', '2018-04-03', 'rissa');
INSERT INTO `m_banking` VALUES ('BK-08', 'PT. BANK SUMITOMO MITSUI INDONESIA', 'Jakarta Branch', 'Sumitmas II, 10th Floor Jl. Jend. Sudirman Kav 61 - 62 Jakarta', 'PT. Yasunaga Indonesia', '111765-0101', 'IDR', 'MKM', '2018-04-03', 'rissa');
INSERT INTO `m_banking` VALUES ('BK-09', 'PT. BANK SUMITOMO MITSUI INDONESIA', 'Jakarta Branch', 'Sumitmas II, 10th Floor Jl. Jend. Sudirman Kav 61 - 62 Jakarta', 'PT. Yasunaga Indonesia', '111765-0102', 'USD', 'MKM', '2018-04-03', 'rissa');
INSERT INTO `m_banking` VALUES ('BK-10', 'BANK CENTRAL ASIA', 'Kcp Cikande - Serang', '-', 'PT. Yasunaga Indonesia', '492.3300.280', 'IDR', 'KI', '2018-04-03', 'rissa');
INSERT INTO `m_banking` VALUES ('BK-11', 'BANK MANDIRI', 'Cab Cikande - Serang', '-', 'PT. Yasunaga Indonesia', '116-0004941200', 'IDR', 'NMI', '2018-04-03', 'rissa');

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
-- Table structure for `m_customer`
-- ----------------------------
DROP TABLE IF EXISTS `m_customer`;
CREATE TABLE `m_customer` (
  `id_customer` varchar(10) NOT NULL DEFAULT '',
  `nm_customer` varchar(10) DEFAULT NULL,
  `cs_detail` varchar(100) DEFAULT NULL,
  `ship` longtext,
  `sold` longtext,
  PRIMARY KEY (`id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_customer
-- ----------------------------
INSERT INTO `m_customer` VALUES ('C-001', 'TMMIN', 'Toyota Motor Manufacturing Indonesia', 'PT. Toyota Motor Manufacturing Indonesia Plant #3\r\nJl.Transheksa,KJIE\r\nKarawang - Jawa Barat Indonesia, 41361', 'PT. Toyota Motor Manufacturing Indonesia\r\n Jl. Laks. Yos Sudarso, Sunter II Sungai Bambu\r\nTanjung Priok  Jakarta Utara ,Jakarta 14330');
INSERT INTO `m_customer` VALUES ('C-002', 'ADM', 'Astra Daihatsu Motor', 'PT. Astra Daihatsu Motor - Engine Plant\r\n Jl. Maligi VI/M6 Kawasan Industri KIIC\r\nTol. Jakarta - Cikampek Km 47,5', 'PT. Astra Daihatsu Motor\r\n Jl. Gaya Motor III No. 5, Sunter II\r\n Jakarta Utara 14350');
INSERT INTO `m_customer` VALUES ('C-003', 'KI', 'Kubota Indonesia', 'PT. KUBOTA INDONESIA                  \r\nJapanese SMEs Center,Kawasan Industri  Delta Silicon 6\r\nJl Kenari Raya Blok G6-01 Kav 08A,\r\nCikarang,Bekasi 17530', 'PT. KUBOTA INDONESIA\r\nTaman Industri Bukit Semarang Baru(BSB)Blok D.1 Kav 8\r\nKel Jatibarang-Kec Mijen-Kota Semarang');
INSERT INTO `m_customer` VALUES ('C-004', 'MKM', 'Mitsubishi Krama Yudha Motors And Manufacturing', 'PT. Mitsubishi Krama Yudha Motor And  Manufacturing\r\n Petukangan III, Jl. Raya Bekasi KM. 21\r\n Pulogadung  Jakarta Timur', 'PT. Mitsubishi Krama Yudha Motor And  Manufacturing\r\n Petukangan III, Jl. Raya Bekasi KM. 21\r\n Pulogadung  Jakarta Timur');
INSERT INTO `m_customer` VALUES ('C-005', 'NMI', 'Nissan Motor Indonesia', 'PT. Nissan Motor Indonesia\r\nKawasan Industri Kota Bukit Indah  Block A-III\r\nLot 1-14 ,Dangdeur,Bungursari ,Purwakarta \r\n Jawa Barat 41181', 'PT. Nissan Motor Indonesia\r\nNissan TB.Simatupang 5th Floor\r\nJl.R.A Kartini Kav.II-S No.7,TB.Simatupang\r\nJakarta 12310,Indonesia');
INSERT INTO `m_customer` VALUES ('C-006', 'MTU', 'Maha Tirta Utama', null, null);
INSERT INTO `m_customer` VALUES ('C-007', 'YAPI', 'Yasunaga AIR Pump Inc.', null, null);
INSERT INTO `m_customer` VALUES ('C-008', 'YC', 'Yasunaga Corporate', null, null);
INSERT INTO `m_customer` VALUES ('C-009', 'SKC', 'Senkai', null, null);

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
INSERT INTO `m_dept` VALUES ('1', 'YI-001', 'ACCOUNTING & TAX', '2017-11-27', 'resha');
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
-- Table structure for `m_dept_pro`
-- ----------------------------
DROP TABLE IF EXISTS `m_dept_pro`;
CREATE TABLE `m_dept_pro` (
  `id_dept` int(20) NOT NULL AUTO_INCREMENT,
  `kd_dept` varchar(10) DEFAULT NULL,
  `nm_dept` varchar(20) DEFAULT NULL,
  `tgl_entry` date DEFAULT NULL,
  `user_posting` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_dept`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_dept_pro
-- ----------------------------
INSERT INTO `m_dept_pro` VALUES ('1', 'YI-014', 'Connecting Rod', '2018-04-05', 'rissa');
INSERT INTO `m_dept_pro` VALUES ('2', 'YI-16', 'Air Pump', '2018-04-10', 'rissa');

-- ----------------------------
-- Table structure for `m_item`
-- ----------------------------
DROP TABLE IF EXISTS `m_item`;
CREATE TABLE `m_item` (
  `id_ex` varchar(10) NOT NULL DEFAULT '',
  `nm_item` varchar(20) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_ex`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_item
-- ----------------------------
INSERT INTO `m_item` VALUES ('E-001', 'CRFX', 'EXPORT');
INSERT INTO `m_item` VALUES ('E-002', 'CRFG', 'LOCAL');

-- ----------------------------
-- Table structure for `m_pac`
-- ----------------------------
DROP TABLE IF EXISTS `m_pac`;
CREATE TABLE `m_pac` (
  `id_pac` varchar(10) NOT NULL,
  `nm_pac` varchar(20) DEFAULT NULL,
  `kett` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_pac`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_pac
-- ----------------------------
INSERT INTO `m_pac` VALUES ('001', 'Box', '@Box');
INSERT INTO `m_pac` VALUES ('002', 'Pcs', 'Pcs');
INSERT INTO `m_pac` VALUES ('003', 'Set', 'Set');
INSERT INTO `m_pac` VALUES ('004', 'Packages', 'Packages');

-- ----------------------------
-- Table structure for `m_product`
-- ----------------------------
DROP TABLE IF EXISTS `m_product`;
CREATE TABLE `m_product` (
  `id_pro` varchar(10) NOT NULL DEFAULT '',
  `pro` varchar(30) DEFAULT NULL,
  `nm_pro` varchar(30) DEFAULT NULL,
  `part_num` varchar(30) DEFAULT NULL,
  `kd_accpac` varchar(30) DEFAULT NULL,
  `kd_line` varchar(10) DEFAULT NULL,
  `kd_dept` varchar(10) DEFAULT NULL,
  `kd_part` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_pro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_product
-- ----------------------------
INSERT INTO `m_product` VALUES ('P-001', 'EA8', '01-EA8', '01-11131-22055', '#F01-K01-002', 'FX-1', 'YI-014', '11131-22055');
INSERT INTO `m_product` VALUES ('P-002', 'E9', '01-E9', '01-14921-22054', '#F01-K01-004', 'FX-1', 'YI-014', '14921-22054');
INSERT INTO `m_product` VALUES ('P-003', 'ER100', '01-ER100', '01-19517-22052', '#F01-K01-001', 'FX-1', 'YI-014', '19517-22052');
INSERT INTO `m_product` VALUES ('P-004', '12R', '01-12R', '01-13201-31010YIG', '#F01-T01-002', 'FX-1', 'YI-014', '13201-31010YIG');
INSERT INTO `m_product` VALUES ('P-005', '18R', '01-18R', '01-13201-34012', '#F01-T01-001', 'FX-1', 'YI-014', '13201-34012');
INSERT INTO `m_product` VALUES ('P-006', '3 SG', '01-3 SG', '01-13201-74080', '#F01-A01-002', 'FX-1', 'YI-014', '13201-74080');
INSERT INTO `m_product` VALUES ('P-007', '3 SG Hoyo', '01-3 SG Hoyo', '01-13201-74050', '#F01-A01-003', 'FX-1', 'YI-014', '13201-74050');
INSERT INTO `m_product` VALUES ('P-008', '3S', '01-3S', '01-13201-74070UYI', '#F01-A01-005', 'FX-1', 'YI-014', '13201-74070UYI');
INSERT INTO `m_product` VALUES ('P-009', '5S', '01-5S', '01-13201-74032YI', '#F01-A01-006', 'FX-1', 'YI-014', '13201-74032YI');
INSERT INTO `m_product` VALUES ('P-010', '22 R', '01-22 R', '01-13201-35020YI', '#F01-A01-008', 'FX-1', 'YI-014', '13201-35020YI');
INSERT INTO `m_product` VALUES ('P-011', '1GZ', '01-1GZ (R)', '01-13201-32010YI', '#F01-A01-009', 'FX-1', 'YI-014', '13201-32010YI');
INSERT INTO `m_product` VALUES ('P-012', '1GZ', '01-1GZ (L)', '01-13209-32010YI ', '#F01-A01-009', 'FX-1', 'YI-014', '13209-32010YI ');
INSERT INTO `m_product` VALUES ('P-013', '3VZ', '01-3VZ', '01-13201-62020YI', '#F01-T01-006', 'FX-1', 'YI-014', '13201-62020YI');
INSERT INTO `m_product` VALUES ('P-014', '3RZ', '01-3RZ', '01-13201-75020YI', '#F01-A01-030', 'FX-1', 'YI-014', '13201-75020YI');
INSERT INTO `m_product` VALUES ('P-015', 'RT 100/120', '01-RT 100/120', '01-1T051-220511', '#F01-A01-028', 'FX-1', 'YI-014', '1T051-220511');
INSERT INTO `m_product` VALUES ('P-016', 'RT 140', '01-RT 140', '01-1T071-220512', '#F01-A01-029', 'FX-1', 'YI-014', '1T071-220512');
INSERT INTO `m_product` VALUES ('P-017', 'RT 140 ( KBT INA )', '01-RT 140 ( KBT INA ', '01-1T071-22052', '#F01-K01-005', 'FX-1', 'YI-014', '1T071-22052');
INSERT INTO `m_product` VALUES ('P-018', 'SL-L', '02-SL-L', '02-31A1901022G', '#F02-S01-001', 'FX-2', 'YI-014', '31A1901022G');
INSERT INTO `m_product` VALUES ('P-019', 'SL-S', '02-SL-S', '02-31A1910023G', '#F02-S01-002', 'FX-2', 'YI-014', '31A1910023G');
INSERT INTO `m_product` VALUES ('P-020', 'ED JPN', '02-ED JPN', '02-13201-2040MYI', '#F02-A02-002', 'FX-2', 'YI-014', '13201-2040MYI');
INSERT INTO `m_product` VALUES ('P-021', 'EF JPN', '02-EF JPN', '02-13201-B2030MYI', '#F02-A03-003', 'FX-2', 'YI-014', '13201-B2030MYI');
INSERT INTO `m_product` VALUES ('P-022', 'HC ADM', '02-HC ADM', '02--', '#F02-H03-001', 'FX-2', 'YI-014', '--');
INSERT INTO `m_product` VALUES ('P-023', 'ED', '02-ED ADM', '02-13201-BZ070', '#F02-A02-003', 'FX-2', 'YI-014', '13201-BZ070');
INSERT INTO `m_product` VALUES ('P-024', 'EF ', '02-EF ADM', '02-13201-BZ080', '#F02-A03-004', 'FX-2', 'YI-014', '13201-BZ080');
INSERT INTO `m_product` VALUES ('P-025', 'E7/8 ', '02-E7/8 ', '02-14911-22054', '#F02-S01-005', 'FX-2', 'YI-014', '14911-22054');
INSERT INTO `m_product` VALUES ('P-026', 'RT80/90 ', '02-RT80/90 ', '02-1T021-220511', '#F02-S01-006', 'FX-2', 'YI-014', '1T021-220511');
INSERT INTO `m_product` VALUES ('P-027', '4D5', '02-4D5', '02-MD050006V', '#F02-S01-007', 'FX-2', 'YI-014', 'MD050006V');
INSERT INTO `m_product` VALUES ('P-028', 'HR12 MAI', '02-HR12 MAI', '02-1210A 4LC0A', '#F02-A05-005', 'FX-2', 'YI-014', '1210A 4LC0A');
INSERT INTO `m_product` VALUES ('P-029', '2TR EXPORT', '02-2TR EXPORT', '02-13201-0C020YI', '#F04-R05-005', 'FX-2', 'YI-014', '13201-0C020YI');
INSERT INTO `m_product` VALUES ('P-030', '604F ', '03-604F ', '03-13201-21051DYI', '#F03-A03-003', 'FX-3', 'YI-014', '13201-21051DYI');
INSERT INTO `m_product` VALUES ('P-031', 'KR / D26F', '03-KR / D26F', '03-13201-BZ040', '#F03-A06-006', 'FX-3', 'YI-014', '13201-BZ040');
INSERT INTO `m_product` VALUES ('P-032', '1NR ', '3T-1NR', '3T-13201-0Y070', '#F03-A01-005', 'FX-3', 'YI-014', '13201-0Y070');
INSERT INTO `m_product` VALUES ('P-033', '2NR ', '3T-2NR', '3T-13201-0Y080', '#F03-A01-006', 'FX-3', 'YI-014', '13201-0Y080');
INSERT INTO `m_product` VALUES ('P-034', '1NR ', '3A-1NR', '3A-13201-0Y070', '#F03-A02-003', 'FX-3', 'YI-014', '13201-0Y070');
INSERT INTO `m_product` VALUES ('P-035', '2NR ', '3A-2NR', '3A-13201-0Y080', '#F03-A02-004', 'FX-3', 'YI-014', '13201-0Y080');
INSERT INTO `m_product` VALUES ('P-036', 'KR YI', '03-KR YI', '03-13201-BZ040YIS', '#F03-A01-002', 'FX-3', 'YI-014', '13201-BZ040YIS');
INSERT INTO `m_product` VALUES ('P-037', 'KR', '03-KR', '03-13201-BZ040YI', '#F03-A01-010', 'FX-3', 'YI-014', '13201-BZ040YI');
INSERT INTO `m_product` VALUES ('P-038', '1TR', '04-1TR', '04-13201-0C010', '#F04-R01-001', 'FX-4', 'YI-014', '13201-0C010');
INSERT INTO `m_product` VALUES ('P-039', '2TR', '04-2TR', '04-13201-0C020', '#F04-R01-002', 'FX-4', 'YI-014', '13201-0C020');
INSERT INTO `m_product` VALUES ('P-040', '1ND', '05-1ND', '05-13201-33030YIGG', '#F05-A01-002', 'FX-5', 'YI-014', '13201-33030YIGG');
INSERT INTO `m_product` VALUES ('P-041', '2JZ', '05-2JZ', '05-13201-46061YI', '#F05-A01-004', 'FX-5', 'YI-014', '13201-46061YI');
INSERT INTO `m_product` VALUES ('P-042', '1NZ ', '05-1NZ ', '05-13201-21051YI', '#F05-A01-001', 'FX-5', 'YI-014', '13201-21051YI');
INSERT INTO `m_product` VALUES ('P-043', '4N13', '05-4N13', '05-1115A384YI', '#F05-A05-005', 'FX-5', 'YI-014', '1115A384YI');
INSERT INTO `m_product` VALUES ('P-044', '604F', '05-604F', '05-13201-21051DYI', '#F05-A03-001', 'FX-5', 'YI-014', '13201-21051DYI');
INSERT INTO `m_product` VALUES ('P-045', '2JZ T', '05-2JZ T', '05-13201-46040YI', '#F05-A01-006', 'FX-5', 'YI-014', '13201-46040YI');
INSERT INTO `m_product` VALUES ('P-046', '4N14 NEW CAP', '05-4N14 NEW CAP', '05-1115A529TAYI', '#F05-A09-010', 'FX-5', 'YI-014', '1115A529TAYI');
INSERT INTO `m_product` VALUES ('P-047', '4N14-4X45', '05-4N14-4X45', '05-1115A481-YI', '#F05-A09-012', 'FX-5', 'YI-014', '1115A481-YI');
INSERT INTO `m_product` VALUES ('P-048', '4N14-4X45 new', '05-4N14-4X45 new', '05-1115A481-XYI', '#F05-A09-013', 'FX-5', 'YI-014', '1115A481-XYI');
INSERT INTO `m_product` VALUES ('P-049', '2NZ ', '05-2NZ ', '05-13201-21040YI', '#F05-A04-004', 'FX-5', 'YI-014', '13201-21040YI');
INSERT INTO `m_product` VALUES ('P-050', '4N14-4X45 ', '05-4N14-4X45 jpn', '05-1115A481NBD6X-YI', '#F05-A09-014', 'FX-5', 'YI-014', '1115A481NBD6X-YI');
INSERT INTO `m_product` VALUES ('P-051', '2NZ', '05-2NZ-CKD ', '05-13201-21040CKDYI', '#F05-A02-005', 'FX-5', 'YI-014', '13201-21040CKDYI');
INSERT INTO `m_product` VALUES ('P-052', 'K3 ', '06-K3', '06-13201-BZ010', '#F06-A01-001', 'FX-6', 'YI-014', '13201-BZ010');
INSERT INTO `m_product` VALUES ('P-053', '3SZ-SGI ', '06-3SZ-SGI ', '06-13201-BZ060', '#F06-A01-004', 'FX-6', 'YI-014', '13201-BZ060');
INSERT INTO `m_product` VALUES ('P-054', '1NR', '7T-1NR', '7T-13201-0Y070', '#F07-A02-003', 'FX-7', 'YI-014', '13201-0Y070');
INSERT INTO `m_product` VALUES ('P-055', '2NR ', '7T-2NR', '7T-13201-0Y080', '#F07-A02-004', 'FX-7', 'YI-014', '13201-0Y080');
INSERT INTO `m_product` VALUES ('P-056', 'D81F ( 2NR ADM )', '07-D81F ( 2NR ADM )', '07-13201-0Y080-00-87', '#F07-A05-005', 'FX-7', 'YI-014', '13201-0Y080-00-87');
INSERT INTO `m_product` VALUES ('P-057', '1NR', '7A-1NR ADM-07', '7A-13201-0Y070', '#F07-A01-006', 'FX-7', 'YI-014', '13201-0Y070');
INSERT INTO `m_product` VALUES ('P-058', '2NR ', '7A-2NR  ADM-07', '7A-13201-0Y080', '#F07-A01-007', 'FX-7', 'YI-014', '13201-0Y080');
INSERT INTO `m_product` VALUES ('P-059', '3SZ SGI ', '07-3SZ SGI ', '07-13201-BZ060', '#F07-A01-002', 'FX-7', 'YI-014', '13201-BZ060');
INSERT INTO `m_product` VALUES ('P-060', '3SZ ', '07-3SZ YI', '07-13201-BZ060YI', '#F06-A01-005', 'FX-7', 'YI-014', '13201-BZ060YI');
INSERT INTO `m_product` VALUES ('P-061', '3SZ ', '07-3SZ JPN', '07-13201-BZ060YIS', '#F06-A04-004', 'FX-7', 'YI-014', '13201-BZ060YIS');
INSERT INTO `m_product` VALUES ('P-062', '3UR', '08-3UR', '08-13201-38020YI', '#F08-A01-001', 'FX-8', 'YI-014', '13201-38020YI');
INSERT INTO `m_product` VALUES ('P-063', '2UR', '08-2UR', '08-13201-38042YI', '#F08-A01-002', 'FX-8', 'YI-014', '13201-38042YI');
INSERT INTO `m_product` VALUES ('P-064', 'MZ ', '08-MZ ', '08-13201-20040YI', '#F08-A01-003', 'FX-8', 'YI-014', '13201-20040YI');
INSERT INTO `m_product` VALUES ('P-065', '2URGSE', '08-2URGSE', '08-13201-38050YI', '#F08-A01-004', 'FX-8', 'YI-014', '13201-38050YI');
INSERT INTO `m_product` VALUES ('P-066', '4GR', '08-4GR', '08-13201-31040YI', '#F08-A01-005', 'FX-8', 'YI-014', '13201-31040YI');
INSERT INTO `m_product` VALUES ('P-067', '1NR', '9A-1NR', '9A-13201-0Y070', '#F09-A02-003', 'FX-9', 'YI-014', '13201-0Y070');
INSERT INTO `m_product` VALUES ('P-068', '2NR', '9A-2NR', '9A-13201-0Y080', '#F09-A02-004', 'FX-9', 'YI-014', '13201-0Y080');
INSERT INTO `m_product` VALUES ('P-069', '1NR', '9T-1NR', '9T-13201-0Y070', '#F09-A02-005', 'FX-9', 'YI-014', '13201-0Y070');
INSERT INTO `m_product` VALUES ('P-070', '2NR', '9T-2NR', '9T-13201-0Y080', '#F09-A02-006', 'FX-9', 'YI-014', '13201-0Y080');
INSERT INTO `m_product` VALUES ('P-071', 'D81F ( 2NR ADM )', '09-D81F ( 2NR ADM )', '09-13201-0Y080-00-87', '#F09-A06-006', 'FX-9', 'YI-014', '13201-0Y080-00-87');
INSERT INTO `m_product` VALUES ('P-072', '1NR', '1A-1NR', '1A-13201-0Y070', '#F11-A02-003', 'FX-11', 'YI-014', '13201-0Y070');
INSERT INTO `m_product` VALUES ('P-073', '2NR', '1A-2NR', '1A-13201-0Y080', '#F11-A02-004', 'FX-11', 'YI-014', '13201-0Y080');
INSERT INTO `m_product` VALUES ('P-074', '1NR', '1T-1NR', '1T-13201-0Y070', '#F11-A02-005', 'FX-11', 'YI-014', '13201-0Y070');
INSERT INTO `m_product` VALUES ('P-075', '2NR', '1T-2NR', '1T-13201-0Y080', '#F11-A02-006', 'FX-11', 'YI-014', '13201-0Y080');
INSERT INTO `m_product` VALUES ('P-076', 'D81F  ( 2NR ADM )', '11-D81F  ( 2NR ADM )', '11-13201-0Y080-00-87', '#F11-A03-003', 'FX-11', 'YI-014', '13201-0Y080-00-87');
INSERT INTO `m_product` VALUES ('P-077', 'AP 40 HC', 'AP 40 HC', 'AP-AP0040HC1', '#F21-AP-004', 'AIR PUMP 1', 'YI-016', 'AP0040HC1');
INSERT INTO `m_product` VALUES ('P-078', 'D46T', '06-D46T', '06-13201-BZ060-00-77', '#F06-A02-004', 'FX-6', 'YI-014', '13201-BZ060-00-77');
INSERT INTO `m_product` VALUES ('P-079', 'K3 HL (D40G)', '06-K3 HL (D40G)', '06-13202 - BZ011', '#F06-A01-006', 'FX-6', 'YI-014', '13202 - BZ011');

-- ----------------------------
-- Table structure for `m_prod_pack`
-- ----------------------------
DROP TABLE IF EXISTS `m_prod_pack`;
CREATE TABLE `m_prod_pack` (
  `id_pro` varchar(10) NOT NULL DEFAULT '',
  `pro` varchar(20) DEFAULT NULL,
  `dimensi` varchar(30) DEFAULT NULL,
  `part_num` varchar(30) DEFAULT NULL,
  `netto` varchar(10) DEFAULT NULL,
  `box` varchar(10) DEFAULT NULL,
  `quant` varchar(30) DEFAULT NULL,
  `cus` varchar(20) DEFAULT NULL,
  `stn` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_pro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_prod_pack
-- ----------------------------
INSERT INTO `m_prod_pack` VALUES ('P-001', '1TR', '34 X 34 X 10', '13201 - 0C010', '0.502', '0.94', '24', 'TMMIN', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-002', '2TR', '34 X 34 X 10', '13201 - 0C020', '0.53', '0.94', '24', 'TMMIN', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-003', '1NR', '34 X 34 X 10', '13201 - 0Y070', '0.363', '0.97', '24', 'TMMIN', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-004', '2NR', '34 X 34 X 10', '13201 - 0Y080', '0.358', '0.97', '24', 'TMMIN', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-005', '1TR', '37 X 28 X 17', '13202 - 0C010', '0.502', '0.36', '30', 'TMMIN', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-006', '2TR', '37 X 28 X 17', '13202 - 0C020', '0.53', '0.36', '30', 'TMMIN', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-007', '1NR', '37 X 28 X 17', '13202 - 0Y070', '0.363', '0.36', '30', 'TMMIN', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-008', '2NR', '37 X 28 X 17', '13202 - 0Y080', '0.358', '0.36', '30', 'TMMIN', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-009', 'KR/D26F', '34 X 34 X 10', '13201 - BZ040', '0.352', '0.834', '24', 'ADM', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-010', 'K3 ', '34 X 34 X 10', '13201 - BZ010', '0.349', '0.97', '24', 'ADM', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-011', 'K3 HL (D40G)', '34 X 34 X 10', '13202 - BZ011', '0.349', '0.97', '24', 'ADM', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-012', '3SZ', '34 X 34 X 10', '13201 - BZ060', '0.371', '0.97', '24', 'ADM', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-013', 'ED', '34 X 34 X 10', '13201 - BZ070', '0.405', '0.834', '24', 'ADM', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-014', '1NR', '34 X 34 X 10', '13201 - 0Y070', '0.363', '0.97', '24', 'ADM', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-015', '2NR', '34 X 34 X 10', '13201 - 0Y080', '0.358', '0.97', '24', 'ADM', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-016', 'D46T', '35 X 28 X 9', '13201 - BZ060-00-77', '0.371', '0.44', '24', 'ADM', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-017', 'D81F', '36 X 28 X 9', '13201 - 0Y080 -00-87', '0.358', '0.44', '24', 'ADM', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-018', 'KR/D26F', '37 X 28 X 17', '13201 - BZ040', '0.352', '0.36', '30', 'ADM', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-019', 'K3', '37 X 28 X 17', '13201 - BZ010', '0.349', '0.36', '30', 'ADM', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-020', '3SZ', '37 X 28 X 17', '13201 - BZ060', '0.371', '0.36', '30', 'ADM', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-021', 'ED', '37 X 28 X 17', '13201 - BZ070', '0.405', '0.36', '30', 'ADM', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-022', '1NR', '37 X 28 X 17', '13201 - 0Y070', '0.363', '0.36', '30', 'ADM', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-023', '2NR', '37 X 28 X 17', '13201 - 0Y080', '0.358', '0.36', '30', 'ADM', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-024', '4D5', '42 X 29 X 16', 'MD050006V', '0.98', '1.46', '12', 'MKM', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-025', 'EA8', '34 X 34 X 10', '11131 - 22055', '0.49', '0.885', '18', 'KI', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-026', 'E78', '34 X 34 X 10', '14911 - 22054', '0.635', '0.885', '12', 'KI', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-027', 'E9', '34 X 34 X 10', '14921 - 22054', '0.767', '0.885', '6', 'KI', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-028', 'RT140', '37 X 28 X 17', '1T071 - 22052', '0.81', '1.36', '16', 'KI', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-029', 'HR12', '34 X 34 X 10', '1210A - 4LC0A', '0.368', '0.97', '24', 'NMI', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-030', '3S - FE', '', '13201 - 74070UYI', '', '', '', 'YC', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-031', '5S - FE ', '', '13201 - 74032YI', '', '', '', 'YC', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-032', '22R', '', '13201 - 74020YI', '', '', '', 'YC', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-033', '1GZ L', '', '13209 - 32010YI', '', '', '', 'YC', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-034', '1GZ R', '', '13201 - 32010YI', '', '', '', 'YC', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-035', '3RZ', '', '13201 - 75020YI', '', '', '', 'YC', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-036', '12R', '', '13201 - 31010YI', '', '', '', 'YC', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-037', '3VZ', '', '13201 - 62020YI', '', '', '', 'YC', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-038', '5K', '', '13201 - 13010YI', '', '', '', 'YC', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-039', 'ED', '', '13201 - B2040MYI', '', '', '', 'YC', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-040', 'EF', '', '13201 - 13010YI', '', '', '', 'YC', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-041', 'SL-L', '', '31A1901022G', '', '', '', 'YC', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-042', 'SL-S', '', '31A1910023G', '', '', '', 'YC', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-043', '2NZ', '', '13201 - 21010YI', '', '', '', 'YC', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-044', '2NZ CKD', '', '13201 - 21040CKDYI', '', '', '', 'YC', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-045', '604F', '', '13201 - 21051DYI', '', '', '', 'YC', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-046', '1ND', '', '1320133030YIGG', '', '', '', 'YC', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-047', '4N13', '', '1115A384YI', '', '', '', 'YC', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-048', '4N14 (OLD)', '', '1115A529YI', '', '', '', 'YC', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-049', '4N14 (NEW)', '', '1115A529TAYI', '', '', '', 'YC', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-050', '1JZ', '', '13201 - 46051JTYI', '', '', '', 'YC', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-051', '2JZ', '', '13201 - 46061JTYI', '', '', '', 'YC', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-052', '2JZ-T', '', '13201 - 46040YI', '', '', '', 'YC', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-053', '4N14 - 4X45', '', '1115A481', '', '', '', 'YC', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-054', '3SZ', '', '13201 - B1021YIG', '', '', '', 'YC', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-055', '3UR/551F', '', '13201 - 38020YI', '', '', '', 'YC', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-056', '2UR/506F', '', '13201 - 38042YI', '', '', '', 'YC', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-057', 'MZ', '', '13201 - 20040YI', '', '', '', 'YC', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-058', '2UR-GSE/822F', '', '13201 - 38050YI', '', '', '', 'YC', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-059', '4GR-FSE', '', '13201 - 31040YI', '', '', '', 'YC', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-060', 'RT100/120', '', '1T051220511', '', '', '', 'SKC', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-061', 'RT140', '', '1T071 - 220512', '', '', '', 'SKC', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-062', 'RT140 NAKAYAMA', '', '1T071 - 220512', '', '', '', 'SKC', 'Pcs');
INSERT INTO `m_prod_pack` VALUES ('P-063', 'RT80/90 (E7/8)', '', '1T021 - 220511', '', '', '', 'SKC', 'Pcs');

-- ----------------------------
-- Table structure for `m_suplier`
-- ----------------------------
DROP TABLE IF EXISTS `m_suplier`;
CREATE TABLE `m_suplier` (
  `id_suplier` varchar(10) NOT NULL DEFAULT '',
  `nm_suplier` varchar(20) DEFAULT NULL,
  `sp_detail` varchar(50) DEFAULT NULL,
  `ship` longtext,
  `sold` longtext,
  PRIMARY KEY (`id_suplier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_suplier
-- ----------------------------
INSERT INTO `m_suplier` VALUES ('Sp-001', 'MAI', 'Metal Astra Indonesia', null, null);
INSERT INTO `m_suplier` VALUES ('Sp-002', 'AFI', 'Achi Forging Indonesia', null, null);
INSERT INTO `m_suplier` VALUES ('Sp-003', 'TAIHO', 'Taiho Nusantara', null, null);
INSERT INTO `m_suplier` VALUES ('Sp-004', 'SKF', 'SKF Indonesia', null, null);
INSERT INTO `m_suplier` VALUES ('Sp-005', 'SGI', 'Sankei Goshu Indonesia', null, null);
INSERT INTO `m_suplier` VALUES ('Sp-006', 'TTI', '-', null, null);

-- ----------------------------
-- Table structure for `m_tahun`
-- ----------------------------
DROP TABLE IF EXISTS `m_tahun`;
CREATE TABLE `m_tahun` (
  `id_thn` varchar(10) NOT NULL,
  `tahun` int(4) DEFAULT NULL,
  `thn` int(2) DEFAULT NULL,
  PRIMARY KEY (`id_thn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_tahun
-- ----------------------------
INSERT INTO `m_tahun` VALUES ('THN-001', '2017', '17');
INSERT INTO `m_tahun` VALUES ('THN-002', '2018', '18');
INSERT INTO `m_tahun` VALUES ('THN-003', '2019', '19');
INSERT INTO `m_tahun` VALUES ('THN-004', '2020', '20');

-- ----------------------------
-- Table structure for `m_uang`
-- ----------------------------
DROP TABLE IF EXISTS `m_uang`;
CREATE TABLE `m_uang` (
  `id_money` varchar(10) NOT NULL DEFAULT '',
  `mata_uang` varchar(50) DEFAULT NULL,
  `konversi` varchar(50) DEFAULT NULL,
  `type_mu` varchar(20) DEFAULT NULL,
  `nominal` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_money`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_uang
-- ----------------------------
INSERT INTO `m_uang` VALUES ('MU-01', 'Rp', '1', 'IDR', '1');
INSERT INTO `m_uang` VALUES ('MU-02', '$', '1', 'USD', '13770.0000');
INSERT INTO `m_uang` VALUES ('MU-03', 'Â¥', '1', 'JPY', '128.5250');

-- ----------------------------
-- Table structure for `m_useaccount`
-- ----------------------------
DROP TABLE IF EXISTS `m_useaccount`;
CREATE TABLE `m_useaccount` (
  `id_use` int(10) NOT NULL AUTO_INCREMENT,
  `kd_dept` varchar(50) DEFAULT NULL,
  `nik` varchar(8) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `st_kar` varchar(20) DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT NULL,
  `position` varchar(30) DEFAULT NULL,
  `umur` int(10) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `jenis` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_use`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_useaccount
-- ----------------------------
INSERT INTO `m_useaccount` VALUES ('1', 'YI-001', '05089341', 'AHMAD JAZULI', 'PERMANENT', 'Asst. Supervisor', 'OFFICE ROOM', '37', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('2', 'YI-001', '15016008', 'CICI RATNAWATI', 'PERMANENT', 'Staff', 'OFFICE ROOM', '26', 'Female', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('3', 'YI-001', '12099192', 'ETWAN ADYAPUTRA', 'PERMANENT', 'Staff', 'OFFICE ROOM', '29', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('4', 'YI-001', '15056063', 'IHAH MUSLIHAH', 'PERMANENT', 'Staff', 'OFFICE ROOM', '25', 'Female', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('5', 'YI-001', '01046080', 'IMTICHANAH', 'PERMANENT', 'Manager', 'OFFICE ROOM', '45', 'Female', 'Pakai', 'Laptop');
INSERT INTO `m_useaccount` VALUES ('6', 'YI-001', '03076131', 'LILIS RUSILAWATI', 'PERMANENT', 'Staff', 'OFFICE ROOM', '35', 'Female', 'Pakai', 'Laptop');
INSERT INTO `m_useaccount` VALUES ('7', 'YI-001', '01116088', 'RISMAWATI ULFAH', 'PERMANENT', 'Senior Supervisor', 'OFFICE ROOM', '39', 'Female', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('8', 'YI-001', '17109122', 'RONI EMRIALDI', 'CONTRACT', 'Staff', 'OFFICE ROOM', '25', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('9', 'YI-001', '15016008', 'CICI RATNAWATI', 'PERMANENT', 'Staff Tax', 'OFFICE ROOM', '26', 'Female', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('10', 'YI-002', '11046056', 'MAYA NUNINGSIH', 'PERMANENT', 'Staff', 'OFFICE ROOM', '26', 'Female', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('11', 'YI-002', '12019015', 'MOHAMAD AGUS SUPRIANTO', 'PERMANENT', 'Staff', 'OFFICE ROOM', '24', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('12', 'YI-002', '15106145', 'RATU DEVI PRATIWI', 'PERMANENT', 'Staff', 'OFFICE ROOM', '23', 'Female', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('13', 'YI-002', '03089145', 'RUDI SUGIANTO', 'PERMANENT', 'Supervisor', 'OFFICE ROOM', '37', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('14', 'YI-002', '03089145', 'RUDI SUGIANTO', 'PERMANENT', 'Supervisor', 'OFFICE ROOM', '37', 'Male', 'Pinjam', 'Laptop');
INSERT INTO `m_useaccount` VALUES ('15', 'YI-003', '17059071', 'AHKMAD HADY', 'CONTRACT', 'Staff', 'OFFICE ROOM', '26', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('16', 'YI-003', '17059071', 'AHKMAD HADY', 'CONTRACT', 'Staff', 'OFFICE ROOM', '26', 'Male', 'Pinjam', 'Laptop');
INSERT INTO `m_useaccount` VALUES ('17', 'YI-003', '06019370', 'GEA CINDRA KODRAT', 'PERMANENT', 'Staff', 'OFFICE ROOM', '30', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('18', 'YI-003', '06019370', 'GEA CINDRA KODRAT', 'PERMANENT', 'Staff', 'OFFICE ROOM', '30', 'Male', 'Pinjam', 'Laptop');
INSERT INTO `m_useaccount` VALUES ('19', 'YI-003', '06019370', 'GEA CINDRA KODRAT', 'PERMANENT', 'Staff', 'OFFICE ROOM', '30', 'Male', 'Pinjam', 'PC');
INSERT INTO `m_useaccount` VALUES ('20', 'YI-003', '17056072', 'RESHA Y.C RACHMAWATI', 'CONTRACT', 'Staff', 'OFFICE ROOM', '21', 'Female', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('21', 'YI-003', '06019370', 'GEA CINDRA K', 'PERMANENT', 'Staff', 'OFFICE ROOM', '30', 'Male', 'Pinjam', 'Laptop');
INSERT INTO `m_useaccount` VALUES ('22', 'YI-003', '08119135', 'YOSQUIN PRO', 'PERMANENT', 'Asst. Supervisor', 'OFFICE ROOM', '43', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('23', 'YI-003', '17056072', 'RESHA Y.C R', 'CONTRACT', 'Staff', 'OFFICE ROOM', '21', 'Female', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('24', 'YI-003', '08119135', 'YOSQUIN', 'PERMANENT', 'Asst. Supervisor', 'OFFICE ROOM', '43', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('25', 'YI-004', '8079071', 'EKO SANTOSO', 'PERMANENT', 'Asst. Foreman', 'OFFICE ROOM', '28', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('26', 'YI-004', '17079091', 'JAKA PERMANA', 'CONTRACT', 'Staff', 'OFFICE ROOM', '34', 'Male', 'Pakai', 'Laptop');
INSERT INTO `m_useaccount` VALUES ('27', 'YI-004', '15036048', 'RISSA QUR RAMAH', 'PERMANENT', 'Staff', 'OFFICE ROOM', '23', 'Female', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('28', 'YI-004', '16126157', 'TATY MAYLINE', 'PERMANENT', 'Staff', 'OFFICE ROOM', '30', 'Female', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('29', 'YI-005', '96086003', 'SUWARTI', 'PERMANENT', 'Foreman', 'OFFICE ROOM', '40', 'Female', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('30', 'YI-005', '99069040', 'TEDI HARYONO', 'PERMANENT', 'Asst. Foreman', 'OFFICE ROOM', '38', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('31', 'YI-005', '99029024', 'WARTOYO', 'PERMANENT', 'Manager', 'OFFICE ROOM', '47', 'Male', 'Pakai', 'Laptop');
INSERT INTO `m_useaccount` VALUES ('32', 'YI-006', '08079084', 'AGUS SETIYADI', 'PERMANENT', 'Staff', 'OFFICE ROOM', '27', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('33', 'YI-006', '03039121', 'RENDRA SUTIFA', 'PERMANENT', 'Asst. Manager', 'OFFICE ROOM', '40', 'Male', 'Pakai', 'Laptop');
INSERT INTO `m_useaccount` VALUES ('34', 'YI-006', '16089107', 'Tb. REYNALDI MAULANA SANDJADIRDJA', 'CONTRACT', 'Staff', 'OFFICE ROOM', '24', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('35', 'YI-007', '10119148', 'DENI', 'PERMANENT', 'Staff', 'OFFICE ROOM 2', '25', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('36', 'YI-007', '16096123', 'YUNI ADITYA', 'CONTRACT', 'Staff', 'OFFICE ROOM 2', '22', 'Female', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('37', 'YI-007', '00049065', 'WAWAN RIDWAN', 'PERMANENT', 'Supervisor', 'OFFICE ROOM 2', '38', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('38', 'YI-008', '99079044', 'SUPRIYANTO', 'PERMANENT', 'Manager', 'OFFICE ROOM', '41', 'Male', 'Pakai', 'Laptop');
INSERT INTO `m_useaccount` VALUES ('39', 'YI-008', '99079045', 'NURAHMAN', 'PERMANENT', 'Supervisor', 'OFFICE ROOM', '38', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('40', 'YI-008', '12119237', 'ARIF RIFKI', 'PERMANENT', 'Staff', 'OFFICE ROOM', '24', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('41', 'YI-008', '99099049', 'NUNUNG NURMAN', 'PERMANENT', 'Asst. Foreman', 'OFFICE ROOM 3', '39', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('42', 'YI-008', '04019202', 'SISWANTO', 'PERMANENT', 'Asst. Foreman', 'OFFICE ROOM 3', '33', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('43', 'YI-008', '11099162', 'DAYAT HIDAYAT', 'PERMANENT', 'Staff', 'OFFICE ROOM 3', '26', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('44', 'YI-009', '02029100', 'HARI SETIAWAN', 'PERMANENT', 'Senior Supervisor', 'OFFICE ROOM', '38', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('45', 'YI-009', '10126172', 'RISNAWATI', 'PERMANENT', 'Staff', 'OFFICE ROOM', '25', 'Female', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('46', 'YI-009', '12039076', 'ARUM PERMANA HASAN', 'PERMANENT', 'Staff', 'OFFICE ROOM', '31', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('47', 'YI-010', '03099175', 'AHMAD MUHTADIR', 'PERMANENT', 'Supervisor', 'OFFICE ROOM', '36', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('48', 'YI-010', '12059104', 'AL AZHAR', 'PERMANENT', 'Staff', 'OFFICE ROOM', '37', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('49', 'YI-010', '12069113', 'WENDY FAJAR IQBAL', 'PERMANENT', 'Staff', 'OFFICE ROOM', '33', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('50', 'YI-010', '03019118', 'IBNU AFFAN', 'PERMANENT', 'Asst. Foreman', 'OFFICE ROOM', '43', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('51', 'YI-010', '17106124', 'ERYANTHI DWIRAHAYU M.', 'CONTRACT', 'Staff', 'OFFICE ROOM', '23', 'Female', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('52', 'YI-010', '12069113', 'WENDY FAJAR IQBAL', 'PERMANENT', 'Staff', 'BEA CUKAI', '33', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('53', 'YI-010', '03019118', 'IBNU AFFAN', 'PERMANENT', 'Asst. Foreman', 'BEA CUKAI', '43', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('54', 'YI-011', '99129058', 'JUWANDI', 'PERMANENT', 'Manager', 'OFFICE ROOM QC', '44', 'Male', 'Pakai', 'Laptop');
INSERT INTO `m_useaccount` VALUES ('55', 'YI-011', '04049221', 'SAPARUDIN', 'PERMANENT', 'Asst. Supervisor', 'OFFICE ROOM QC', '37', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('56', 'YI-011', '98079013', 'AGUNG TAOFIK', 'PERMANENT', 'Asst. Manager', 'OFFICE ROOM QC', '41', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('57', 'YI-011', '99029025', 'DARYONO', 'PERMANENT', 'Asst. Supervisor', 'OFFICE ROOM QC', '48', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('58', 'YI-011', '12106217', 'DWINA SEPTIANI PUTRI', 'PERMANENT', 'Staff', 'OFFICE ROOM QC', '23', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('59', 'YI-011', '99099051', 'SONI AGUNG DWI SAPUTRO', 'PERMANENT', 'Asst. Supervisor', 'OFFICE ROOM QC', '40', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('60', 'YI-011', '03089138', 'TB ALWAN JOKO', 'PERMANENT', 'Inspector', 'OFFICE ROOM QC', '32', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('61', 'YI-011', '99099050', 'SAPARDI', 'PERMANENT', 'Foreman', 'OFFICE ROOM 3', '38', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('62', 'YI-011', '04129302', 'CECEP SUPRIADI', 'PERMANENT', 'Asst. Foreman', 'OFFICE ROOM QC', '33', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('63', 'YI-011', '07059038', 'MUHAMAD', 'PERMANENT', 'Inspector', 'OFFICE ROOM QC', '35', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('64', 'YI-011', '13109149', 'OKTA KURNIAWAN', 'PERMANENT', 'Inspector', 'OFFICE ROOM QC', '30', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('65', 'YI-012', '02029096', 'AGUS KUSUMANTO', 'PERMANENT', 'Asst. Manager', 'OFFICE ROOM C/R', '44', 'Male', 'Pakai', 'Laptop');
INSERT INTO `m_useaccount` VALUES ('66', 'YI-012', '99079042', 'SUHERMAN', 'PERMANENT', 'Asst. Supervisor', 'OFFICE ROOM C/R', '36', 'Male', 'Pakai', 'Laptop');
INSERT INTO `m_useaccount` VALUES ('67', 'YI-012', '15109143', 'CHRISTANTO AGUS SANTOSO', 'PERMANENT', 'Staff', 'OFFICE ROOM C/R', '21', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('68', 'YI-012', '99059035', 'WALUYO', 'PERMANENT', 'Supervisor', 'OFFICE ROOM C/R', '41', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('69', 'YI-012', '14099086', 'DONI PRASETYO', 'PERMANENT', 'Staff', 'OFFICE ROOM C/R', '24', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('70', 'YI-012', '01029079', 'PANUT PUJIONO', 'PERMANENT', 'Foreman', 'OFFICE ROOM C/R', '35', 'Male', 'Pakai', 'Laptop');
INSERT INTO `m_useaccount` VALUES ('71', 'YI-012', '99049028', 'AGUS FADILAH', 'PERMANENT', 'Supervisor', 'OFFICE ROOM C/R', '40', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('72', 'YI-012', '00059066', 'SUMARDI', 'PERMANENT', 'Asst. Supervisor', 'OFFICE ROOM C/R', '38', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('73', 'YI-012', '05039330', 'MARYADI', 'PERMANENT', 'Staff', 'OFFICE ROOM C/R', '33', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('74', 'YI-012', '03119186', 'TAUFIQQUR RAHMAN NURAFIEF', 'PERMANENT', 'Asst. Foreman', 'OFFICE ROOM C/R', '35', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('75', 'YI-012', '03129189', 'MARGANA DWI SANTOSA', 'PERMANENT', 'Staff', 'OFFICE ROOM C/R', '37', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('76', 'YI-012', '10109133', 'HAPID', 'PERMANENT', 'Staff', 'OFFICE ROOM C/R', '27', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('77', 'YI-012', '00069068', 'EDDY FERDYANSYAH', 'PERMANENT', 'Foreman', 'OFFICE ROOM C/R', '37', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('78', 'YI-013', '98079014', 'ARIEF RACHMAN', 'PERMANENT', 'Manager', 'OFFICE ROOM MTC', '46', 'Male', 'Pinjam', 'Laptop');
INSERT INTO `m_useaccount` VALUES ('79', 'YI-013', '99049029', 'IIM IBRAHIM', 'PERMANENT', 'Asst. Manager', 'OFFICE ROOM MTC', '48', 'Male', 'Pakai', 'Laptop');
INSERT INTO `m_useaccount` VALUES ('80', 'YI-013', '17059057', 'ZADID IHSANI', 'CONTRACT', 'Mechanic', 'OFFICE ROOM MTC', '24', 'Male', 'Pinjam', 'Laptop');
INSERT INTO `m_useaccount` VALUES ('81', 'YI-013', '17059058', 'DIDIK BASUKI', 'CONTRACT', 'Mechanic', 'OFFICE ROOM MTC', '26', 'Male', 'Pinjam', 'Laptop');
INSERT INTO `m_useaccount` VALUES ('82', 'YI-013', '07039011', 'UMAR WIRANATA', 'PERMANENT', 'Foreman', 'OFFICE ROOM MTC', '21', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('83', 'YI-013', '03039122', 'HENDI SUGIANA', 'PERMANENT', 'Foreman', 'OFFICE ROOM MTC', '37', 'Male', 'Pakai', 'Laptop');
INSERT INTO `m_useaccount` VALUES ('84', 'YI-013', '04039209', 'WALUYO', 'PERMANENT', 'Asst. Foreman', 'OFFICE ROOM MTC', '45', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('85', 'YI-013', '99059034', 'TRI PRABOWO EDI SANTO', 'PERMANENT', 'Supervisor', 'OFFICE ROOM MTC', '39', 'Male', 'Pakai', 'Laptop');
INSERT INTO `m_useaccount` VALUES ('86', 'YI-014', '99029026', 'SYAFRIL', 'PERMANENT', 'Manager', 'OFFICE ROOM C/R', '43', 'Male', 'Pakai', 'Laptop');
INSERT INTO `m_useaccount` VALUES ('87', 'YI-014', '99069036', 'SAPRUDIN', 'PERMANENT', 'Senior Supervisor', 'OFFICE ROOM C/R', '43', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('88', 'YI-014', '15036055', 'ADE DIAN JUNIARSIH', 'PERMANENT', 'Staff', 'OFFICE ROOM C/R', '24', 'Female', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('89', 'YI-014', '96096007', 'ENENG ERNA FARLINA', 'PERMANENT', 'Staff', 'OFFICE ROOM C/R', '40', 'Female', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('90', 'YI-014', '00019060', 'SUPRAPTO', 'PERMANENT', 'Supervisor', 'OFFICE ROOM C/R', '38', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('91', 'YI-014', '02109109', 'ATEP SUPRIATNA', 'PERMANENT', 'Asst. Supervisor', 'OFFICE ROOM C/R', '39', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('92', 'YI-014', '03109183', 'DASEP', 'PERMANENT', 'Foreman', 'OFFICE ROOM C/R', '33', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('93', 'YI-014', '03089137', 'NASRULLOH', 'PERMANENT', 'Foreman', 'OFFICE ROOM C/R', '35', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('94', 'YI-014', '98119018', 'JAENUDIN', 'PERMANENT', 'Asst. Supervisor', 'OFFICE ROOM C/R', '42', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('95', 'YI-014', '98079012', 'ERIK HERLANDIKA', 'PERMANENT', 'Supervisor', 'OFFICE ROOM C/R', '39', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('96', 'YI-014', '03089136', 'ISMAIL', 'PERMANENT', 'Supervisor', 'OFFICE ROOM C/R', '39', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('97', 'YI-014', '08109127', 'NUR WAHYUDIN', 'PERMANENT', 'Operator', 'OFFICE ROOM C/R', '28', 'Male', 'Pinjam', 'Laptop');
INSERT INTO `m_useaccount` VALUES ('98', 'YI-014', '99079043', 'SUPENDI', 'PERMANENT', 'Operator', 'OFFICE ROOM C/R', '38', 'Male', 'Pinjam', 'Laptop');
INSERT INTO `m_useaccount` VALUES ('99', 'YI-015', '96079002', 'RISTO JUANSYAH', 'PERMANENT', 'Asst. Manager', 'OFFICE ROOM A/P', '42', 'Male', 'Pakai', 'Laptop');
INSERT INTO `m_useaccount` VALUES ('100', 'YI-015', '03109182', 'HABIBI', 'PERMANENT', 'Asst. Foreman', 'OFFICE ROOM A/P', '33', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('101', 'YI-015', '07129259', 'MAHMUDI', 'PERMANENT', 'Staff', 'OFFICE ROOM A/P', '29', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('102', 'YI-016', '98099015', 'AMIR FUADI', 'PERMANENT', 'Asst. Manager', 'OFFICE ROOM A/P', '38', 'Male', 'Pakai', 'Laptop');
INSERT INTO `m_useaccount` VALUES ('103', 'YI-016', '96126009', 'YANI MARYANI', 'PERMANENT', 'Foreman', 'OFFICE ROOM A/P', '41', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('104', 'YI-016', '03126196', 'RUSTIANI', 'PERMANENT', 'Staff', 'OFFICE ROOM A/P', '36', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('105', 'YI-016', '03079130', 'MOH. NURDIN', 'PERMANENT', 'Foreman', 'OFFICE ROOM A/P', '39', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('106', 'YI-017', '04099270', 'HERLAM SIREGAR', 'PERMANENT', 'Foreman', 'OFFICE ROOM A/P', '36', 'Male', 'Pakai', 'Laptop');
INSERT INTO `m_useaccount` VALUES ('107', 'YI-017', '17049040', 'ILMAN', 'PERMANENT', 'Staff', 'OFFICE ROOM A/P', '27', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('108', 'YI-017', '02129111', 'BUSTOMI', 'PERMANENT', 'Staff', 'OFFICE ROOM A/P', '34', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('109', 'YI-018', '16079093', 'TOSHIHISA TANIMOTO', 'CONTRACT', 'Direktur', 'OFFICE ROOM', '55', 'Male', 'Pakai', 'Laptop');
INSERT INTO `m_useaccount` VALUES ('110', 'YI-018', '16109095', 'T. HORIE', 'CONTRACT', 'Pres Dir', 'OFFICE ROOM', null, 'Male', 'Pakai', 'Laptop');
INSERT INTO `m_useaccount` VALUES ('111', 'YI-018', '17109123', 'TADASHI KOBAYASHI', 'CONTRACT', 'Manager JPN', 'OFFICE ROOM', '65', 'Male', 'Pakai', 'Laptop');
INSERT INTO `m_useaccount` VALUES ('112', 'YI-018', '14029047', 'TAKEYUKI IKEZAWA', 'PERMANENT', 'Manager JPN', 'OFFICE ROOM C/R', '46', 'Male', 'Pakai', 'Laptop');
INSERT INTO `m_useaccount` VALUES ('113', 'YI-018', '13059076', 'TSUYOSHI ISHIGURO', 'PERMANENT', 'Advisor', 'OFFICE ROOM C/R', '47', 'Male', 'Pakai', 'Laptop');
INSERT INTO `m_useaccount` VALUES ('114', 'YI-018', '13129170', 'T.KONO', 'PERMANENT', 'Advisor', 'OFFICE ROOM C/R', '47', 'Male', 'Pakai', 'Laptop');
INSERT INTO `m_useaccount` VALUES ('115', 'YI-019', '08119135', 'YOSQUIN', 'PERMANENT', 'Asst. Supervisor', 'SERVER ROOM', '43', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('116', 'YI-019', '08119135', 'YOSQUIN', 'PERMANENT', 'Asst. Supervisor', 'SERVER ROOM', '43', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('117', 'YI-019', '08119135', 'YOSQUIN', 'PERMANENT', 'Asst. Supervisor', 'SERVER ROOM', '43', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('118', 'YI-019', '08119135', 'YOSQUIN', 'PERMANENT', 'Asst. Supervisor', 'SERVER ROOM', '43', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('119', 'YI-019', '08119135', 'YOSQUIN', 'PERMANENT', 'Asst. Supervisor', 'SERVER ROOM', '43', 'Male', 'Pakai', 'PC');
INSERT INTO `m_useaccount` VALUES ('120', 'YI-019', '08119135', 'YOSQUIN', 'PERMANENT', 'Asst. Supervisor', 'SERVER ROOM', '43', 'Male', 'Pakai', 'PC');

-- ----------------------------
-- Table structure for `packing_list`
-- ----------------------------
DROP TABLE IF EXISTS `packing_list`;
CREATE TABLE `packing_list` (
  `id_pack` int(100) NOT NULL AUTO_INCREMENT,
  `no_pack` varchar(20) DEFAULT NULL,
  `no_invoice` varchar(20) DEFAULT NULL,
  `nm_dept` varchar(30) DEFAULT NULL,
  `pro` varchar(30) DEFAULT NULL,
  `part_num` varchar(30) DEFAULT NULL,
  `jumlh` int(20) DEFAULT NULL,
  `dimensi` varchar(30) DEFAULT NULL,
  `hsl_dimensi` varchar(20) DEFAULT NULL,
  `netto` varchar(20) DEFAULT NULL,
  `quant` varchar(10) DEFAULT NULL,
  `stn` varchar(10) DEFAULT NULL,
  `gross` varchar(20) DEFAULT NULL,
  `cus` varchar(20) DEFAULT NULL,
  `tgl_entri` date DEFAULT NULL,
  `user_posting` varchar(30) NOT NULL DEFAULT '',
  `tahun` int(5) DEFAULT NULL,
  PRIMARY KEY (`id_pack`,`user_posting`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of packing_list
-- ----------------------------
INSERT INTO `packing_list` VALUES ('1', '1-162', '2018-C0001', 'Connecting Rod', '1TR ', '13201 - 0C010 ', '3888', ' 34 X 34 X 10', '162', '1951.776', '24 ', 'Pcs ', '3654.72', ' TMMIN', '2018-04-26', 'rissa', '2018');
INSERT INTO `packing_list` VALUES ('2', '163-198', '2018-C0001', 'Connecting Rod', '2TR ', '13201 - 0C020 ', '864', ' 34 X 34 X 10', '36', '457.92', '24 ', 'Pcs ', '812.16', ' TMMIN', '2018-04-26', 'rissa', '2018');
INSERT INTO `packing_list` VALUES ('3', '1-100 ', '2018-C0002', 'Connecting Rod', '1NR ', '13201 - 0Y070 ', '2400', ' 34 X 34 X 10', '100', '871.1999999999999', '24 ', 'Pcs ', '2328', ' TMMIN', '2018-04-26', 'rissa', '2018');
INSERT INTO `packing_list` VALUES ('4', '101-200 ', '2018-C0002', 'Connecting Rod', '2NR ', '13201 - 0Y080 ', '3000', ' 37 X 28 X 17', '100', '1074', '30 ', 'Pcs ', '1080', ' TMMIN', '2018-04-26', 'rissa', '2018');
INSERT INTO `packing_list` VALUES ('5', '1 -  106', '8008080', 'Connecting Rod', '1NR ', '13201 - 0Y070 ', '3200', ' 37 X 28 X 17', '106.66666666666667', '1161.6', '30 ', 'Pcs ', '1152', ' ADM', '2018-04-28', 'rissa', '2018');
INSERT INTO `packing_list` VALUES ('6', '107 - 206 ', '8008080', 'Connecting Rod', '2NR ', '13201 - 0Y080 ', '2400', ' 34 X 34 X 10', '100', '859.1999999999999', '24 ', 'Pcs ', '2328', ' ADM', '2018-04-28', 'rissa', '2018');
INSERT INTO `packing_list` VALUES ('7', '1-162', '12234', 'Connecting Rod', '1NR ', '13201 - 0Y070 ', '3888', ' 34 X 34 X 10', '162', '1411.344', '24 ', 'Pcs ', '3771.3599999999997', ' TMMIN', '2018-04-28', 'rissa', '2018');
INSERT INTO `packing_list` VALUES ('8', ' 163 - 262', '12234', 'Connecting Rod', '2NR ', '13202 - 0Y080 ', '3000', ' 37 X 28 X 17', '100', '1074', '30 ', 'Pcs ', '1080', ' TMMIN', '2018-04-28', 'rissa', '2018');
INSERT INTO `packing_list` VALUES ('9', '1-29 ', '909090', 'Connecting Rod', '1NR ', '13201 - 0Y070 ', '700', ' 34 X 34 X 10', '29.166666666666668', '254.1', '24 ', 'Pcs ', '679', ' TMMIN', '2018-05-11', 'rissa', '2018');
INSERT INTO `packing_list` VALUES ('10', ' 30-67', '909090', 'Connecting Rod', '2NR ', '13201 - 0Y080 ', '900', ' 34 X 34 X 10', '37.5', '322.2', '24 ', 'Pcs ', '873', ' TMMIN', '2018-05-11', 'rissa', '2018');

-- ----------------------------
-- Table structure for `price`
-- ----------------------------
DROP TABLE IF EXISTS `price`;
CREATE TABLE `price` (
  `id_cus` int(10) NOT NULL AUTO_INCREMENT,
  `no_price` varchar(50) DEFAULT NULL,
  `dt_awal` varchar(20) DEFAULT NULL,
  `dt_akhir` varchar(20) DEFAULT NULL,
  `nm_customer` varchar(20) DEFAULT NULL,
  `id_line` varchar(10) DEFAULT NULL,
  `nm_pro` varchar(30) DEFAULT NULL,
  `part_num` varchar(30) DEFAULT NULL,
  `kd_accpac` varchar(50) DEFAULT NULL,
  `harga_beli` int(10) DEFAULT NULL,
  `nm_dept` varchar(50) DEFAULT NULL,
  `tgl_entri` date DEFAULT NULL,
  `user_posting` varchar(20) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  `note` longtext,
  PRIMARY KEY (`id_cus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of price
-- ----------------------------

-- ----------------------------
-- Table structure for `price_list`
-- ----------------------------
DROP TABLE IF EXISTS `price_list`;
CREATE TABLE `price_list` (
  `id_ps` int(100) NOT NULL AUTO_INCREMENT,
  `no_invoice` varchar(20) DEFAULT NULL,
  `nm_dept` varchar(30) DEFAULT NULL,
  `cus` varchar(30) DEFAULT NULL,
  `id_line` varchar(20) DEFAULT NULL,
  `nm_pro` varchar(30) DEFAULT NULL,
  `part_num` varchar(30) DEFAULT NULL,
  `kd_accp` varchar(40) DEFAULT NULL,
  `nm_item` varchar(10) DEFAULT NULL,
  `jumlah` int(20) DEFAULT NULL,
  `harga_beli` int(20) DEFAULT NULL,
  `sub_total` int(20) DEFAULT NULL,
  `tgl_entri` date DEFAULT NULL,
  `user_posting` varchar(30) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  PRIMARY KEY (`id_ps`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of price_list
-- ----------------------------
INSERT INTO `price_list` VALUES ('1', '2018-C0001', 'Connecting Rod', 'TMMIN', 'FX-4', '04-1TR', '13201 - 0C010 ', '13201-0C010', 'CRFG', '3888', '1200', '599646240', '2018-04-26', 'rissa', '2018');
INSERT INTO `price_list` VALUES ('2', '2018-C0001', 'Connecting Rod', 'TMMIN', 'FX-4', '04-2TR', '13201 - 0C020 ', '13201-0C020', 'CRFG', '684', '910', '79999101', '2018-04-26', 'rissa', '2018');
INSERT INTO `price_list` VALUES ('3', '2018-C0002', 'Connecting Rod', 'TMMIN', 'FX-7', '7T-1NR', '13201 - 0Y070 ', '13201-0Y070', 'CRFX', '2400', '78', '2147483647', '2018-04-26', 'rissa', '2018');
INSERT INTO `price_list` VALUES ('4', '2018-C0002', 'Connecting Rod', 'TMMIN', 'FX-7', '7T-2NR', '13201 - 0Y080 ', '13201-0Y080', 'CRFX', '3000', '67', '2147483647', '2018-04-26', 'rissa', '2018');
INSERT INTO `price_list` VALUES ('5', '8008080', 'Connecting Rod', 'ADM', 'FX-3', '3A-1NR', '13201 - 0Y070 ', '13201-0Y070', 'CRFX', '3200', '87000', '278400000', '2018-04-28', 'rissa', '2018');
INSERT INTO `price_list` VALUES ('6', '8008080', 'Connecting Rod', 'ADM', 'FX-3', '3A-2NR', '13201 - 0Y080 ', '13201-0Y080', 'CRFX', '2400', '67000', '160800000', '2018-04-28', 'rissa', '2018');
INSERT INTO `price_list` VALUES ('7', '12234', 'Connecting Rod', ' TMMIN', 'FX-3', '3T-1NR', '13201 - 0Y070 ', '#F03-A01-005', 'CRFX', '6585', '777', '657603946', '2018-04-28', 'rissa', '2018');
INSERT INTO `price_list` VALUES ('8', '12234', 'Connecting Rod', ' TMMIN', 'FX-3', '3T-2NR', '13202 - 0Y080 ', '#F03-A01-006', 'CRFX', '757', '7979', '776304238', '2018-04-28', 'rissa', '2018');
INSERT INTO `price_list` VALUES ('10', '909090', 'Connecting Rod', ' TMMIN', 'FX-11', '1T-1NR', '13201 - 0Y070 ', '#F11-A02-005', 'CRFX', '700', '8000', '719740000', '2018-05-11', 'rissa', '2018');
INSERT INTO `price_list` VALUES ('11', '909090', 'Connecting Rod', ' TMMIN', 'FX-11', '1T-2NR', '13201 - 0Y080 ', '#F11-A02-006', 'CRFX', '900', '6868', '794438730', '2018-05-11', 'rissa', '2018');

-- ----------------------------
-- Table structure for `price_ng`
-- ----------------------------
DROP TABLE IF EXISTS `price_ng`;
CREATE TABLE `price_ng` (
  `id_sup` int(10) NOT NULL AUTO_INCREMENT,
  `no_price` varchar(50) DEFAULT NULL,
  `dt_awal` varchar(20) DEFAULT NULL,
  `dt_akhir` varchar(20) DEFAULT NULL,
  `nm_suplier` varchar(20) DEFAULT NULL,
  `id_line` varchar(10) DEFAULT NULL,
  `nm_pro` varchar(20) DEFAULT NULL,
  `part_num` varchar(30) DEFAULT NULL,
  `kd_accpac` varchar(50) DEFAULT NULL,
  `harga_beli` int(10) DEFAULT NULL,
  `nm_dept` varchar(50) DEFAULT NULL,
  `tgl_entri` date DEFAULT NULL,
  `user_posting` varchar(20) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  `note` longtext,
  `nm_customer` varchar(30) DEFAULT NULL,
  `man_cost` varchar(100) DEFAULT NULL,
  `un_cost` int(30) DEFAULT NULL,
  PRIMARY KEY (`id_sup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of price_ng
-- ----------------------------

-- ----------------------------
-- Table structure for `price_pack`
-- ----------------------------
DROP TABLE IF EXISTS `price_pack`;
CREATE TABLE `price_pack` (
  `id_pk` int(10) NOT NULL AUTO_INCREMENT,
  `inv_no` varchar(20) DEFAULT NULL,
  `hsl_box` int(30) DEFAULT NULL,
  `byk` int(30) DEFAULT NULL,
  `ttl_netto` varchar(30) DEFAULT NULL,
  `ttl_gross` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of price_pack
-- ----------------------------
INSERT INTO `price_pack` VALUES ('1', '2018-C0001', '198', '4752', '2409.70', '4466.88');
INSERT INTO `price_pack` VALUES ('2', '2018-C0002', '200', '5400', '1945.20', '3408.00');
INSERT INTO `price_pack` VALUES ('3', '8008080', '207', '5600', '2020.80', '3480.00');
INSERT INTO `price_pack` VALUES ('4', '12234', '262', '6888', '2485.34', '4851.36');
INSERT INTO `price_pack` VALUES ('5', '909090', '67', '1600', '576.30', '1552.00');

-- ----------------------------
-- Table structure for `price_part`
-- ----------------------------
DROP TABLE IF EXISTS `price_part`;
CREATE TABLE `price_part` (
  `id_cus` int(10) NOT NULL AUTO_INCREMENT,
  `no_price` varchar(50) DEFAULT NULL,
  `dt_awal` varchar(20) DEFAULT NULL,
  `dt_akhir` varchar(20) DEFAULT NULL,
  `nm_customer` varchar(20) DEFAULT NULL,
  `id_line` varchar(10) DEFAULT NULL,
  `nm_pro` varchar(20) DEFAULT NULL,
  `part_num` varchar(30) DEFAULT NULL,
  `kd_accpac` varchar(50) DEFAULT NULL,
  `harga_beli` int(10) DEFAULT NULL,
  `nm_dept` varchar(50) DEFAULT NULL,
  `tgl_entri` date DEFAULT NULL,
  `user_posting` varchar(20) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  PRIMARY KEY (`id_cus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of price_part
-- ----------------------------

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
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_login
-- ----------------------------
INSERT INTO `user_login` VALUES ('1', 'admin', '200916', 'Administrator', 'admin');
INSERT INTO `user_login` VALUES ('2', 'ghea', 'yasunaga11', 'Administrator', 'admin');
INSERT INTO `user_login` VALUES ('3', 'rissa', 'yasunaga', 'Marketing', 'adminmark');
INSERT INTO `user_login` VALUES ('4', 'Juwandi', 'yasunaga11', 'Manager', 'adminmark');
INSERT INTO `user_login` VALUES ('5', 'jaka', 'yasunaga', 'Marketing', 'salesbook');

-- ----------------------------
-- View structure for `v_salesbook`
-- ----------------------------
DROP VIEW IF EXISTS `v_salesbook`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_salesbook` AS select distinct `b`.`nm_item` AS `GRP`,`b`.`no_invoice` AS `no_invoice`,date_format(`a`.`dt_inv`,'%d - %b - %Y') AS `dt_inv`,date_format(`a`.`dt_dev`,'%d - %b - %Y') AS `dt_dev`,date_format(`a`.`dt_arr`,'%d - %b - %Y') AS `dt_arr`,`b`.`cus` AS `cus`,`b`.`kd_accp` AS `kd_accp`,concat(substr(`b`.`nm_pro`,4),'   ',`b`.`id_line`) AS `pro_line`,`b`.`part_num` AS `part_num`,`b`.`jumlah` AS `jumlah`,`b`.`harga_beli` AS `harga_beli`,`b`.`sub_total` AS `sub_total`,(`b`.`sub_total` * 1.1) AS `TAX`,`a`.`total` AS `total`,`a`.`gr_total` AS `gr_total`,`a`.`ship_to` AS `ship_to`,`a`.`no_po` AS `no_po`,`a`.`freight` AS `freight`,`a`.`customer_dn` AS `customer_dn` from (`invoice` `a` join `price_list` `b` on((`a`.`no_inv` = `b`.`no_invoice`))) ;
