-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server Version:               10.4.21-MariaDB - mariadb.org binary distribution
-- Server Betriebssystem:        Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Exportiere Datenbank Struktur für mitgliederverwaltung
CREATE DATABASE IF NOT EXISTS `mitgliederverwaltung` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `mitgliederverwaltung`;

-- Exportiere Struktur von Tabelle mitgliederverwaltung.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `adminNr` int(11) NOT NULL AUTO_INCREMENT,
  `personendatenNr` int(11) NOT NULL,
  PRIMARY KEY (`adminNr`),
  KEY `personendatenNr` (`personendatenNr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Exportiere Daten aus Tabelle mitgliederverwaltung.admin: ~0 rows (ungefähr)
DELETE FROM `admin`;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle mitgliederverwaltung.kurs
CREATE TABLE IF NOT EXISTS `kurs` (
  `stunden` int(11) NOT NULL,
  `level` varchar(50) NOT NULL,
  `kursNr` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`kursNr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Exportiere Daten aus Tabelle mitgliederverwaltung.kurs: ~0 rows (ungefähr)
DELETE FROM `kurs`;
/*!40000 ALTER TABLE `kurs` DISABLE KEYS */;
/*!40000 ALTER TABLE `kurs` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle mitgliederverwaltung.mitglied
CREATE TABLE IF NOT EXISTS `mitglied` (
  `adresse` varchar(50) NOT NULL,
  `mitgliedNr` int(11) NOT NULL AUTO_INCREMENT,
  `stundenanzahl` int(11) DEFAULT NULL,
  `personendatenNr` int(11) NOT NULL,
  PRIMARY KEY (`mitgliedNr`),
  KEY `personendatenNr` (`personendatenNr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Exportiere Daten aus Tabelle mitgliederverwaltung.mitglied: ~0 rows (ungefähr)
DELETE FROM `mitglied`;
/*!40000 ALTER TABLE `mitglied` DISABLE KEYS */;
/*!40000 ALTER TABLE `mitglied` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle mitgliederverwaltung.ort_bezeichnung
CREATE TABLE IF NOT EXISTS `ort_bezeichnung` (
  `ortNr` int(11) NOT NULL AUTO_INCREMENT,
  `bezeichnung` varchar(50) NOT NULL,
  PRIMARY KEY (`ortNr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Exportiere Daten aus Tabelle mitgliederverwaltung.ort_bezeichnung: ~0 rows (ungefähr)
DELETE FROM `ort_bezeichnung`;
/*!40000 ALTER TABLE `ort_bezeichnung` DISABLE KEYS */;
/*!40000 ALTER TABLE `ort_bezeichnung` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle mitgliederverwaltung.ort_loc
CREATE TABLE IF NOT EXISTS `ort_loc` (
  `ort_bezeichnungNr` int(11) NOT NULL,
  `plz` int(11) NOT NULL,
  PRIMARY KEY (`plz`),
  KEY `ort_bezeichnungNr` (`ort_bezeichnungNr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Exportiere Daten aus Tabelle mitgliederverwaltung.ort_loc: ~0 rows (ungefähr)
DELETE FROM `ort_loc`;
/*!40000 ALTER TABLE `ort_loc` DISABLE KEYS */;
/*!40000 ALTER TABLE `ort_loc` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle mitgliederverwaltung.personendaten
CREATE TABLE IF NOT EXISTS `personendaten` (
  `vorname` varchar(50) NOT NULL DEFAULT '',
  `nachname` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `geburtsdatum` int(11) NOT NULL,
  `personenNr` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`personenNr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Exportiere Daten aus Tabelle mitgliederverwaltung.personendaten: ~0 rows (ungefähr)
DELETE FROM `personendaten`;
/*!40000 ALTER TABLE `personendaten` DISABLE KEYS */;
/*!40000 ALTER TABLE `personendaten` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle mitgliederverwaltung.sportart
CREATE TABLE IF NOT EXISTS `sportart` (
  `sporttyp` varchar(50) NOT NULL,
  `sportartNr` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sportartNr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Exportiere Daten aus Tabelle mitgliederverwaltung.sportart: ~0 rows (ungefähr)
DELETE FROM `sportart`;
/*!40000 ALTER TABLE `sportart` DISABLE KEYS */;
/*!40000 ALTER TABLE `sportart` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle mitgliederverwaltung.strasse
CREATE TABLE IF NOT EXISTS `strasse` (
  `strassenNr` int(11) NOT NULL AUTO_INCREMENT,
  `ort_locNr` int(11) NOT NULL,
  `bezeichnung` varchar(50) NOT NULL,
  PRIMARY KEY (`strassenNr`),
  KEY `ort_locNr` (`ort_locNr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Exportiere Daten aus Tabelle mitgliederverwaltung.strasse: ~0 rows (ungefähr)
DELETE FROM `strasse`;
/*!40000 ALTER TABLE `strasse` DISABLE KEYS */;
/*!40000 ALTER TABLE `strasse` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle mitgliederverwaltung.trainer
CREATE TABLE IF NOT EXISTS `trainer` (
  `adresse` varchar(50) NOT NULL,
  `personendatenNr` int(11) NOT NULL DEFAULT 0,
  `trainerNr` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`trainerNr`),
  KEY `personendatenNr` (`personendatenNr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Exportiere Daten aus Tabelle mitgliederverwaltung.trainer: ~0 rows (ungefähr)
DELETE FROM `trainer`;
/*!40000 ALTER TABLE `trainer` DISABLE KEYS */;
/*!40000 ALTER TABLE `trainer` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
