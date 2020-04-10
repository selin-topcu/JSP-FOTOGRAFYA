# Host: localhost  (Version 5.6.20)
# Date: 2019-01-10 21:18:04
# Generator: MySQL-Front 6.1  (Build 1.26)


#
# Structure for table "admin"
#

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `A_AD` varchar(50) DEFAULT NULL,
  `A_SIFRE` varchar(50) DEFAULT NULL,
  `A_KAD` varchar(255) DEFAULT NULL,
  `A_SOYAD` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "admin"
#

INSERT INTO `admin` VALUES (1,'Selin','selin123','selindayioglu','Dayıoğlu');

#
# Structure for table "kullanici"
#

DROP TABLE IF EXISTS `kullanici`;
CREATE TABLE `kullanici` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `AD` varchar(50) DEFAULT NULL,
  `SIFRE` varchar(50) DEFAULT NULL,
  `KAD` varchar(50) DEFAULT NULL,
  `SOYAD` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

#
# Data for table "kullanici"
#

INSERT INTO `kullanici` VALUES (1,'Selin','1','selin','Dayıoğlu'),(2,'Sami','acar2353','samiacar','Acar'),(44,'Ahmet','ahmet123','ahmetkılıc','Kılıç'),(45,'Sevinç','123','sevinc1','Aslan');

#
# Structure for table "mail"
#

DROP TABLE IF EXISTS `mail`;
CREATE TABLE `mail` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `mail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "mail"
#

INSERT INTO `mail` VALUES (1,'boteakademi17@gmail.com');
