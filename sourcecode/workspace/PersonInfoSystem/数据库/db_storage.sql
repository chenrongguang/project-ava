# MySQL-Front 5.0  (Build 1.0)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;


# Host: localhost    Database: db_storage
# ------------------------------------------------------
# Server version 5.0.67-community-nt

#
# Table structure for table actionmaster
#

DROP TABLE IF EXISTS `actionmaster`;
CREATE TABLE `actionmaster` (
  `action_id` varchar(20) NOT NULL,
  `action_desc` varchar(45) NOT NULL,
  `action_group` varchar(45) default NULL,
  PRIMARY KEY  (`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

#
# Table structure for table classcode
#

DROP TABLE IF EXISTS `classcode`;
CREATE TABLE `classcode` (
  `prod_id` varchar(10) NOT NULL,
  `prod_desc` varchar(45) default NULL,
  PRIMARY KEY  (`prod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
INSERT INTO `classcode` VALUES ('0124','̨ʽ��');
INSERT INTO `classcode` VALUES ('0125','�ʼǱ�����');
INSERT INTO `classcode` VALUES ('0126','һ���');
INSERT INTO `classcode` VALUES ('0127','iPAD');

#
# Table structure for table currency
#

DROP TABLE IF EXISTS `currency`;
CREATE TABLE `currency` (
  `cur_id` varchar(10) NOT NULL,
  `cur_desc` varchar(45) default NULL,
  PRIMARY KEY  (`cur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
INSERT INTO `currency` VALUES ('AUD','�Ĵ�����Ԫ');
INSERT INTO `currency` VALUES ('CNY','�����Ԫ');
INSERT INTO `currency` VALUES ('DEM','���');
INSERT INTO `currency` VALUES ('GBP','Ӣ��');
INSERT INTO `currency` VALUES ('HKD','��Ԫ');
INSERT INTO `currency` VALUES ('INR','¬��');
INSERT INTO `currency` VALUES ('JPY','��Բ ');
INSERT INTO `currency` VALUES ('KPW','����Բ');
INSERT INTO `currency` VALUES ('LAK','����');
INSERT INTO `currency` VALUES ('MOP','����Ԫ');
INSERT INTO `currency` VALUES ('MYR','��Ԫ ');
INSERT INTO `currency` VALUES ('THP','̩��');
INSERT INTO `currency` VALUES ('VND','Խ�϶�');

#
# Table structure for table currencyrate
#

DROP TABLE IF EXISTS `currencyrate`;
CREATE TABLE `currencyrate` (
  `cur_id` varchar(10) NOT NULL,
  `cur_id1` varchar(10) NOT NULL,
  `Mouth1` smallint(6) NOT NULL,
  `Cur_rate` double NOT NULL,
  PRIMARY KEY  (`cur_id`,`cur_id1`,`Mouth1`,`Cur_rate`),
  KEY `FK3BF8CC7178BBFD9` (`cur_id`),
  KEY `FK3BF8CC719B192056` (`cur_id1`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

#
# Table structure for table eceipt
#

DROP TABLE IF EXISTS `eceipt`;
CREATE TABLE `eceipt` (
  `Key_id` int(11) NOT NULL,
  `Item_id` varchar(10) NOT NULL,
  `Loca_id` varchar(10) NOT NULL COMMENT '�?�?',
  `Ware_id` varchar(10) NOT NULL,
  `Reas_code` varchar(10) NOT NULL COMMENT '??��????????',
  `Re_type` varchar(1) NOT NULL COMMENT '??��??类�??',
  `Qty` double NOT NULL COMMENT '??��????��??',
  `Bill_no` varchar(20) NOT NULL,
  `Actual_Qty` double NOT NULL,
  `AdJu_amt` double NOT NULL COMMENT '�?�?�???��??�?',
  `Trans_date` datetime default NULL,
  PRIMARY KEY  (`Key_id`),
  KEY `FKB1FC0F46BB2534FC` (`Loca_id`),
  KEY `FKB1FC0F46EC2CA92E` (`Item_id`),
  KEY `FKB1FC0F46BB541A13` (`Reas_code`),
  KEY `FKB1FC0F464B87AE52` (`Ware_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

#
# Table structure for table eceipt_bill
#

DROP TABLE IF EXISTS `eceipt_bill`;
CREATE TABLE `eceipt_bill` (
  `bill_no` varchar(20) NOT NULL,
  `create_emp` varchar(10) NOT NULL COMMENT '??��??�?',
  `handle_emp` varchar(10) default NULL COMMENT '�????�?',
  `bill_desc` varchar(200) default NULL COMMENT '???�?',
  `createDate` datetime NOT NULL COMMENT '??��????��??',
  `lastHandleDate` datetime default NULL COMMENT '??????�??????��??',
  `SourceCompany` varchar(45) NOT NULL COMMENT '�???��??�?',
  `cert_no` varchar(20) NOT NULL COMMENT '???票�??',
  `status` varchar(1) NOT NULL COMMENT '??��??',
  PRIMARY KEY  (`bill_no`),
  KEY `FK41116960CE6E6A01` (`create_emp`),
  KEY `FK41116960F348C12D` (`handle_emp`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

#
# Table structure for table employee
#

DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `emp_id` varchar(10) NOT NULL,
  `emp_desc` varchar(45) default NULL,
  `birth` datetime default NULL,
  `password` varchar(45) NOT NULL,
  `folk` varchar(45) default NULL COMMENT '�????',
  `marri` varchar(45) default NULL COMMENT '�?�?',
  `family` varchar(45) default NULL COMMENT '�?�?',
  `collage` varchar(45) default NULL,
  `speci` varchar(45) default NULL COMMENT '�?�?',
  `wage` bigint(20) NOT NULL,
  PRIMARY KEY  (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
INSERT INTO `employee` VALUES ('1','����ΰ',NULL,'111',NULL,NULL,NULL,NULL,NULL,1);

#
# Table structure for table employeerole
#

DROP TABLE IF EXISTS `employeerole`;
CREATE TABLE `employeerole` (
  `employeeRole_id` int(11) NOT NULL,
  `employee_id` varchar(10) NOT NULL,
  `role_id` varchar(10) NOT NULL,
  PRIMARY KEY  (`employeeRole_id`),
  KEY `FK99096024491CBCAA` (`role_id`),
  KEY `FK99096024B348D348` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

#
# Table structure for table inventorytag
#

DROP TABLE IF EXISTS `inventorytag`;
CREATE TABLE `inventorytag` (
  `Lable` int(11) NOT NULL,
  `Warehouse` varchar(10) NOT NULL,
  `Audi_man` varchar(10) default NULL,
  `Fr_loca` varchar(10) NOT NULL,
  `Fr_Item` varchar(10) NOT NULL,
  `Inc_zero` varchar(1) NOT NULL,
  `Inc_nega` varchar(1) NOT NULL,
  PRIMARY KEY  (`Lable`),
  KEY `FK99F8D8BEB6F11AD0` (`Audi_man`),
  KEY `FK99F8D8BE82AB38B7` (`Fr_loca`),
  KEY `FK99F8D8BE49BA360D` (`Fr_Item`),
  KEY `FK99F8D8BE917576F8` (`Warehouse`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

#
# Table structure for table itemgeneral
#

DROP TABLE IF EXISTS `itemgeneral`;
CREATE TABLE `itemgeneral` (
  `Item_id` varchar(10) NOT NULL,
  `Sale_Emp_id` varchar(10) default NULL COMMENT '?????????',
  `PO_Emp_id` varchar(10) default NULL COMMENT '???�????',
  `Um_id` varchar(10) NOT NULL COMMENT '计�?????�?',
  `Prod_code` varchar(10) NOT NULL COMMENT '???�?',
  `Item_desc` varchar(45) default NULL,
  `Color` varchar(20) default NULL,
  `Tax_rate` bigint(20) NOT NULL COMMENT '0.0',
  `Sale_Pic` double default NULL COMMENT '0.0',
  `Whol_Pic` double default NULL COMMENT '0.0',
  `Status` varchar(1) NOT NULL,
  PRIMARY KEY  (`Item_id`),
  KEY `FK782D8275B95DC52E` (`PO_Emp_id`),
  KEY `FK782D8275CC1071E6` (`Sale_Emp_id`),
  KEY `FK782D8275FBCBAB6A` (`Um_id`),
  KEY `FK782D82753F221EAC` (`Prod_code`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
INSERT INTO `itemgeneral` VALUES ('BH123','1','1','0100','0125','����ʼǱ�����','��ɫ',18,4800,4800000,'0');
INSERT INTO `itemgeneral` VALUES ('LH121','1','1','0100','0125','���ձʼǱ�����','��ɫ',18,3900,3900000,'1');
INSERT INTO `itemgeneral` VALUES ('NB198','1','1','0100','0125','��˶�ʼǱ�����','��ɫ',18,3500,3500000,'1');

#
# Table structure for table itemlocation
#

DROP TABLE IF EXISTS `itemlocation`;
CREATE TABLE `itemlocation` (
  `Ware_id` varchar(10) NOT NULL,
  `Item_id` varchar(10) NOT NULL,
  `Loca_id` varchar(10) NOT NULL,
  `Rank` int(11) NOT NULL,
  `Loca_qty` double NOT NULL,
  PRIMARY KEY  (`Ware_id`,`Item_id`,`Loca_id`,`Rank`,`Loca_qty`),
  KEY `FK92EA57C8BB2534FC` (`Loca_id`),
  KEY `FK92EA57C84B87AE52` (`Ware_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

#
# Table structure for table iusse
#

DROP TABLE IF EXISTS `iusse`;
CREATE TABLE `iusse` (
  `Key_id` int(11) NOT NULL,
  `Item_id` varchar(10) NOT NULL,
  `Loca_id` varchar(10) NOT NULL,
  `Ware_id` varchar(10) NOT NULL,
  `Reas_code` varchar(10) NOT NULL,
  `Is_type` varchar(1) NOT NULL,
  `Qty` double NOT NULL COMMENT '??��????��??',
  `Actual_Qty` double NOT NULL,
  `AdJu_amt` double NOT NULL,
  `Trans_date` datetime default NULL COMMENT '�??????��??',
  `Bill_no` varchar(20) NOT NULL,
  PRIMARY KEY  (`Key_id`),
  KEY `FK5FE9159BB2534FC` (`Loca_id`),
  KEY `FK5FE9159EC2CA92E` (`Item_id`),
  KEY `FK5FE9159BB541A13` (`Reas_code`),
  KEY `FK5FE91594B87AE52` (`Ware_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

#
# Table structure for table iusse_bill
#

DROP TABLE IF EXISTS `iusse_bill`;
CREATE TABLE `iusse_bill` (
  `bill_no` varchar(20) NOT NULL,
  `create_emp` varchar(10) NOT NULL COMMENT '??��??�?',
  `handle_emp` varchar(10) default NULL COMMENT '�????�?',
  `bill_desc` varchar(200) default NULL,
  `createDate` datetime NOT NULL,
  `lastHandleDate` datetime default NULL,
  `DestCompany` varchar(45) NOT NULL,
  `cert_no` varchar(20) NOT NULL COMMENT '???票�??',
  `status` varchar(1) NOT NULL,
  PRIMARY KEY  (`bill_no`),
  KEY `FK14BC3B2DCE6E6A01` (`create_emp`),
  KEY `FK14BC3B2DF348C12D` (`handle_emp`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

#
# Table structure for table location
#

DROP TABLE IF EXISTS `location`;
CREATE TABLE `location` (
  `Loca_id` varchar(10) NOT NULL,
  `Loca_desc` varchar(45) default NULL,
  PRIMARY KEY  (`Loca_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
INSERT INTO `location` VALUES ('FH0123512','����-��ֱ��վ-3H');
INSERT INTO `location` VALUES ('FH0123513','����-��ֱ��վ-4H');
INSERT INTO `location` VALUES ('FH0123514','����-��ֱ��վ-5D');
INSERT INTO `location` VALUES ('FH0123515','����-��ֱ��վ-5H');
INSERT INTO `location` VALUES ('FH0123516','����-�ϵ�վ-1A');
INSERT INTO `location` VALUES ('FH0123517','����-�ϵ�վ-3F');
INSERT INTO `location` VALUES ('FH0123518','����-�ϵ�վ-6B');

#
# Table structure for table physicsdata
#

DROP TABLE IF EXISTS `physicsdata`;
CREATE TABLE `physicsdata` (
  `Key_id` int(11) NOT NULL,
  `Item_id` varchar(10) NOT NULL,
  `Loca_id` varchar(10) NOT NULL,
  `Ware_id` varchar(10) NOT NULL,
  `Statue` varchar(1) NOT NULL,
  `Cutoff` double NOT NULL COMMENT '?????��?��??',
  `Act_qty` double NOT NULL COMMENT '�??????��??',
  PRIMARY KEY  (`Key_id`),
  KEY `FK82455A71BB2534FC` (`Loca_id`),
  KEY `FK82455A71EC2CA92E` (`Item_id`),
  KEY `FK82455A714B87AE52` (`Ware_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

#
# Table structure for table roleaction
#

DROP TABLE IF EXISTS `roleaction`;
CREATE TABLE `roleaction` (
  `roleActionID` int(11) NOT NULL auto_increment,
  `actionID` varchar(20) NOT NULL,
  `roleID` varchar(10) NOT NULL,
  PRIMARY KEY  (`roleActionID`),
  KEY `FK6F644E2CE830AF37` (`actionID`),
  KEY `FK6F644E2CBFE26F37` (`roleID`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

#
# Table structure for table rolemaster
#

DROP TABLE IF EXISTS `rolemaster`;
CREATE TABLE `rolemaster` (
  `role_id` varchar(10) NOT NULL,
  `role_name` varchar(45) default NULL,
  PRIMARY KEY  (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

#
# Table structure for table shipaddr
#

DROP TABLE IF EXISTS `shipaddr`;
CREATE TABLE `shipaddr` (
  `ship_id` varchar(10) NOT NULL,
  `ship_dec` varchar(100) default NULL,
  `ship_city` varchar(45) default NULL,
  `state` varchar(45) default NULL,
  PRIMARY KEY  (`ship_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

#
# Table structure for table shipvin
#

DROP TABLE IF EXISTS `shipvin`;
CREATE TABLE `shipvin` (
  `Shipvia_id` varchar(10) NOT NULL,
  `Shipvia_desc` varchar(45) NOT NULL,
  PRIMARY KEY  (`Shipvia_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
INSERT INTO `shipvin` VALUES ('011111','�𳵳�Ƥ');
INSERT INTO `shipvin` VALUES ('0111112','ˮ��');
INSERT INTO `shipvin` VALUES ('0111113','����');
INSERT INTO `shipvin` VALUES ('0111114','������');

#
# Table structure for table stockreason
#

DROP TABLE IF EXISTS `stockreason`;
CREATE TABLE `stockreason` (
  `Rea_code` varchar(10) NOT NULL,
  `Rea_desc` varchar(45) NOT NULL,
  PRIMARY KEY  (`Rea_code`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

#
# Table structure for table ummaster
#

DROP TABLE IF EXISTS `ummaster`;
CREATE TABLE `ummaster` (
  `um_id` varchar(10) NOT NULL,
  `um_desc` varchar(45) default NULL,
  PRIMARY KEY  (`um_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
INSERT INTO `ummaster` VALUES ('0100','̨');
INSERT INTO `ummaster` VALUES ('0200','����');
INSERT INTO `ummaster` VALUES ('0201','����');
INSERT INTO `ummaster` VALUES ('0202','����');
INSERT INTO `ummaster` VALUES ('0203','��');
INSERT INTO `ummaster` VALUES ('0204','ʮ��');
INSERT INTO `ummaster` VALUES ('0205','����');
INSERT INTO `ummaster` VALUES ('0206','ǧ��');

#
# Table structure for table vendermaster
#

DROP TABLE IF EXISTS `vendermaster`;
CREATE TABLE `vendermaster` (
  `Vend_id` varchar(10) NOT NULL,
  `Vend_type` varchar(10) default NULL,
  `Vend_Shipvia` varchar(10) default NULL COMMENT '???货�??�?',
  `Vend_desc` varchar(45) default NULL,
  `Vend_addr` varchar(100) default NULL,
  `Vend_city` varchar(45) default NULL,
  `Vend_nati` varchar(45) default NULL,
  `Vend_phone` varchar(20) default NULL,
  `Vend_post` varchar(10) default NULL,
  `Vend_Email` varchar(30) default NULL,
  `TradeAmount` bigint(20) default NULL COMMENT '交�??�?',
  `Cont_man` varchar(45) default NULL,
  PRIMARY KEY  (`Vend_id`),
  KEY `FK7650F8F476A4FD09` (`Vend_Shipvia`),
  KEY `FK7650F8F4761C2441` (`Vend_type`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

#
# Table structure for table vendtype
#

DROP TABLE IF EXISTS `vendtype`;
CREATE TABLE `vendtype` (
  `Vendtype_id` varchar(10) NOT NULL,
  `Vendtype_desc` varchar(45) default NULL,
  PRIMARY KEY  (`Vendtype_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
INSERT INTO `vendtype` VALUES ('0100','����ֱ��');
INSERT INTO `vendtype` VALUES ('0101','��Ȩ����');
INSERT INTO `vendtype` VALUES ('0102','��������');

#
# Table structure for table warehouse
#

DROP TABLE IF EXISTS `warehouse`;
CREATE TABLE `warehouse` (
  `Ware_id` varchar(10) NOT NULL,
  `Ware_desc` varchar(45) default NULL,
  `Ware_adrr` varchar(130) default NULL,
  `Val_emp` varchar(20) default NULL COMMENT '???ϵ��',
  `Fax` varchar(15) default NULL,
  `Phone` varchar(15) default NULL,
  PRIMARY KEY  (`Ware_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
INSERT INTO `warehouse` VALUES ('0102010','����-�����','�����������','������','789456123','789456123');
INSERT INTO `warehouse` VALUES ('010203','����-��ֱ��վ','��������ֱ��','������','123456789','123456789');
INSERT INTO `warehouse` VALUES ('010204','����-��ֱ��վ','������ֱ��','������','123456','123456');
INSERT INTO `warehouse` VALUES ('010205','����-�ϵ�վ','�������ϵ�','������','123456123','123456123');
INSERT INTO `warehouse` VALUES ('010206','����-�����','�����������','������','789456123','789456123');
INSERT INTO `warehouse` VALUES ('010207','����-������','�����л�����','������','789456123','789456123');
INSERT INTO `warehouse` VALUES ('010208','����-��Ӫ','�����л�Ӫ','ţ����','789456123','789456123');
INSERT INTO `warehouse` VALUES ('010209','����-������','������������','������','789456123','789456123');

#
# Table structure for table warehouse_item
#

DROP TABLE IF EXISTS `warehouse_item`;
CREATE TABLE `warehouse_item` (
  `Item_id` varchar(10) NOT NULL,
  `Ware_id` varchar(10) NOT NULL,
  `Safe_stock` bigint(20) NOT NULL,
  `Last_count` datetime NOT NULL,
  PRIMARY KEY  (`Item_id`,`Ware_id`,`Safe_stock`,`Last_count`),
  KEY `FKFFB23B0FEC2CA92E` (`Item_id`),
  KEY `FKFFB23B0F4B87AE52` (`Ware_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

#
#  Foreign keys for table currencyrate
#

ALTER TABLE `currencyrate`
ADD CONSTRAINT `FK3BF8CC7178BBFD9` FOREIGN KEY (`cur_id`) REFERENCES `currency` (`cur_id`),
  ADD CONSTRAINT `FK3BF8CC719B192056` FOREIGN KEY (`cur_id1`) REFERENCES `currency` (`cur_id`);

#
#  Foreign keys for table eceipt
#

ALTER TABLE `eceipt`
ADD CONSTRAINT `FKB1FC0F464B87AE52` FOREIGN KEY (`Ware_id`) REFERENCES `warehouse` (`Ware_id`),
  ADD CONSTRAINT `FKB1FC0F46BB2534FC` FOREIGN KEY (`Loca_id`) REFERENCES `location` (`Loca_id`),
  ADD CONSTRAINT `FKB1FC0F46BB541A13` FOREIGN KEY (`Reas_code`) REFERENCES `stockreason` (`Rea_code`),
  ADD CONSTRAINT `FKB1FC0F46EC2CA92E` FOREIGN KEY (`Item_id`) REFERENCES `itemgeneral` (`Item_id`);

#
#  Foreign keys for table eceipt_bill
#

ALTER TABLE `eceipt_bill`
ADD CONSTRAINT `FK41116960CE6E6A01` FOREIGN KEY (`create_emp`) REFERENCES `employee` (`emp_id`),
  ADD CONSTRAINT `FK41116960F348C12D` FOREIGN KEY (`handle_emp`) REFERENCES `employee` (`emp_id`);

#
#  Foreign keys for table employeerole
#

ALTER TABLE `employeerole`
ADD CONSTRAINT `FK99096024491CBCAA` FOREIGN KEY (`role_id`) REFERENCES `rolemaster` (`role_id`),
  ADD CONSTRAINT `FK99096024B348D348` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`emp_id`);

#
#  Foreign keys for table inventorytag
#

ALTER TABLE `inventorytag`
ADD CONSTRAINT `FK99F8D8BE49BA360D` FOREIGN KEY (`Fr_Item`) REFERENCES `itemgeneral` (`Item_id`),
  ADD CONSTRAINT `FK99F8D8BE82AB38B7` FOREIGN KEY (`Fr_loca`) REFERENCES `location` (`Loca_id`),
  ADD CONSTRAINT `FK99F8D8BE917576F8` FOREIGN KEY (`Warehouse`) REFERENCES `warehouse` (`Ware_id`),
  ADD CONSTRAINT `FK99F8D8BEB6F11AD0` FOREIGN KEY (`Audi_man`) REFERENCES `employee` (`emp_id`);

#
#  Foreign keys for table itemgeneral
#

ALTER TABLE `itemgeneral`
ADD CONSTRAINT `FK782D82753F221EAC` FOREIGN KEY (`Prod_code`) REFERENCES `classcode` (`prod_id`),
  ADD CONSTRAINT `FK782D8275B95DC52E` FOREIGN KEY (`PO_Emp_id`) REFERENCES `employee` (`emp_id`),
  ADD CONSTRAINT `FK782D8275CC1071E6` FOREIGN KEY (`Sale_Emp_id`) REFERENCES `employee` (`emp_id`),
  ADD CONSTRAINT `FK782D8275FBCBAB6A` FOREIGN KEY (`Um_id`) REFERENCES `ummaster` (`um_id`);

#
#  Foreign keys for table itemlocation
#

ALTER TABLE `itemlocation`
ADD CONSTRAINT `FK92EA57C84B87AE52` FOREIGN KEY (`Ware_id`) REFERENCES `warehouse` (`Ware_id`),
  ADD CONSTRAINT `FK92EA57C8BB2534FC` FOREIGN KEY (`Loca_id`) REFERENCES `location` (`Loca_id`);

#
#  Foreign keys for table iusse
#

ALTER TABLE `iusse`
ADD CONSTRAINT `FK5FE91594B87AE52` FOREIGN KEY (`Ware_id`) REFERENCES `warehouse` (`Ware_id`),
  ADD CONSTRAINT `FK5FE9159BB2534FC` FOREIGN KEY (`Loca_id`) REFERENCES `location` (`Loca_id`),
  ADD CONSTRAINT `FK5FE9159BB541A13` FOREIGN KEY (`Reas_code`) REFERENCES `stockreason` (`Rea_code`),
  ADD CONSTRAINT `FK5FE9159EC2CA92E` FOREIGN KEY (`Item_id`) REFERENCES `itemgeneral` (`Item_id`);

#
#  Foreign keys for table iusse_bill
#

ALTER TABLE `iusse_bill`
ADD CONSTRAINT `FK14BC3B2DCE6E6A01` FOREIGN KEY (`create_emp`) REFERENCES `employee` (`emp_id`),
  ADD CONSTRAINT `FK14BC3B2DF348C12D` FOREIGN KEY (`handle_emp`) REFERENCES `employee` (`emp_id`);

#
#  Foreign keys for table physicsdata
#

ALTER TABLE `physicsdata`
ADD CONSTRAINT `FK82455A714B87AE52` FOREIGN KEY (`Ware_id`) REFERENCES `warehouse` (`Ware_id`),
  ADD CONSTRAINT `FK82455A71BB2534FC` FOREIGN KEY (`Loca_id`) REFERENCES `location` (`Loca_id`),
  ADD CONSTRAINT `FK82455A71EC2CA92E` FOREIGN KEY (`Item_id`) REFERENCES `itemgeneral` (`Item_id`);

#
#  Foreign keys for table roleaction
#

ALTER TABLE `roleaction`
ADD CONSTRAINT `FK6F644E2CBFE26F37` FOREIGN KEY (`roleID`) REFERENCES `rolemaster` (`role_id`),
  ADD CONSTRAINT `FK6F644E2CE830AF37` FOREIGN KEY (`actionID`) REFERENCES `actionmaster` (`action_id`);

#
#  Foreign keys for table vendermaster
#

ALTER TABLE `vendermaster`
ADD CONSTRAINT `FK7650F8F4761C2441` FOREIGN KEY (`Vend_type`) REFERENCES `vendtype` (`Vendtype_id`),
  ADD CONSTRAINT `FK7650F8F476A4FD09` FOREIGN KEY (`Vend_Shipvia`) REFERENCES `shipvin` (`Shipvia_id`);

#
#  Foreign keys for table warehouse_item
#

ALTER TABLE `warehouse_item`
ADD CONSTRAINT `FKFFB23B0F4B87AE52` FOREIGN KEY (`Ware_id`) REFERENCES `warehouse` (`Ware_id`),
  ADD CONSTRAINT `FKFFB23B0FEC2CA92E` FOREIGN KEY (`Item_id`) REFERENCES `itemgeneral` (`Item_id`);


/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
