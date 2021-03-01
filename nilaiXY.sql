-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for pemsim
CREATE DATABASE IF NOT EXISTS `pemsim` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `pemsim`;

-- Dumping structure for table pemsim.x
CREATE TABLE IF NOT EXISTS `x` (
  `id_nilaiX` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nilaix` float DEFAULT NULL,
  PRIMARY KEY (`id_nilaiX`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table pemsim.x_y
CREATE TABLE IF NOT EXISTS `x_y` (
  `id_xy` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_nilaiX` int(10) unsigned NOT NULL,
  `id_nilaiY` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_xy`),
  KEY `FK_x_y_x` (`id_nilaiX`),
  KEY `FK_x_y_y` (`id_nilaiY`),
  CONSTRAINT `FK_x_y_x` FOREIGN KEY (`id_nilaiX`) REFERENCES `x` (`id_nilaiX`),
  CONSTRAINT `FK_x_y_y` FOREIGN KEY (`id_nilaiY`) REFERENCES `y` (`id_nilaiY`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table pemsim.y
CREATE TABLE IF NOT EXISTS `y` (
  `id_nilaiY` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nilaiY` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_nilaiY`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
