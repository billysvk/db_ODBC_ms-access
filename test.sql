-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 08, 2014 at 12:03 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `cpc_errors`
--

CREATE TABLE IF NOT EXISTS `cpc_errors` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Κατηγορία_βλάβης_CPC` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `cpc_errors`
--

INSERT INTO `cpc_errors` (`ID`, `Κατηγορία_βλάβης_CPC`) VALUES
(1, 'Μη εμφάνιση χαρακτηριστικής'),
(2, 'Μεγάλες διακυμάνσεις'),
(3, 'Πολύ μικρές τιμές χαρακτηριστικής'),
(4, 'Πολύ μεγάλες τιμές χαρακτηριστικής'),
(5, 'Μηδενικές τιμές χαρακτηριστικής'),
(8, '*');

-- --------------------------------------------------------

--
-- Table structure for table `db_errors`
--

CREATE TABLE IF NOT EXISTS `db_errors` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Ενδείξεις_βάσης_δεδομένων` varchar(50) CHARACTER SET utf32 NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `db_errors`
--

INSERT INTO `db_errors` (`ID`, `Ενδείξεις_βάσης_δεδομένων`) VALUES
(1, 'Υψηλή  τιμή του HPIC'),
(2, 'Χαμηλή τιμή του HPIC'),
(3, 'Χαμηλή τάση  μπαταρίας'),
(4, 'Μεγάλη  τιμή   υψηλής τάσης'),
(5, 'Μικρή τιμή  υψηλής τάσης'),
(6, 'Μεγάλες διακυμάνσεις στο HPIC'),
(7, 'Δεν επιστρέφει  τιμή στο HPIC'),
(8, 'Δεν επιστρέφει  τιμή στην υψηλή τάση'),
(9, 'Δεν επιστρέφει  τιμή μπαταρίας'),
(10, 'Δεν επιστρέφει  καμία τιμή'),
(11, '*');

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis`
--

CREATE TABLE IF NOT EXISTS `diagnosis` (
  `ID` int(12) NOT NULL AUTO_INCREMENT,
  `Σταθμός` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Ημερομηνία` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cpc` varchar(50) CHARACTER SET utf8 NOT NULL,
  `cpc1` varchar(50) CHARACTER SET utf8 NOT NULL,
  `cpc2` varchar(50) CHARACTER SET utf8 NOT NULL,
  `gsmlink` varchar(50) CHARACTER SET utf8 NOT NULL,
  `gsmlink1` varchar(50) CHARACTER SET utf8 NOT NULL,
  `gsmlink2` varchar(50) CHARACTER SET utf8 NOT NULL,
  `dBerr` varchar(50) CHARACTER SET utf8 NOT NULL,
  `dBerr1` varchar(50) CHARACTER SET utf8 NOT NULL,
  `dBerr2` varchar(50) CHARACTER SET utf8 NOT NULL,
  `repair` varchar(50) CHARACTER SET utf8 NOT NULL,
  `repair1` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Σχόλια` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Βλάβη H/W` varchar(20) NOT NULL,
  `Κατάσταση` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `diagnosis`
--

INSERT INTO `diagnosis` (`ID`, `Σταθμός`, `Ημερομηνία`, `cpc`, `cpc1`, `cpc2`, `gsmlink`, `gsmlink1`, `gsmlink2`, `dBerr`, `dBerr1`, `dBerr2`, `repair`, `repair1`, `Σχόλια`, `Βλάβη H/W`, `Κατάσταση`) VALUES
(1, 'Ηράκλειο', '01/03/2014', 'Μη εμφάνιση χαρακτηριστικής', '', '', '', '', '', 'Υψηλή  τιμή του HPIC', '', '', 'Αντικατάσταση πλακέτας', '', '111', '', ''),
(2, 'Δρόμος', '02/03/2014', 'Μη εμφάνιση χαρακτηριστικής', '', '', '', '', '', 'Χαμηλή τιμή του HPIC', '', '', 'Αντικατάσταση Επεξεργαστή', '', '222', '', ''),
(3, 'Αλεξανδρούπολη', '03/03/2014', 'Πολύ μεγάλες τιμές χαρακτηριστικής', '', '', 'Χαμηλή τάση τηλεφωνικής γραμμής (Ρ5)', '', '', '', '', '', 'Αντικατάσταση Επεξεργαστή', 'Αντικατάσταση πλακέτας', '333', '', ''),
(4, 'Κομοτηνή', '04/03/2014', 'Πολύ μικρές τιμές χαρακτηριστικής', '', '', 'Αποτυχία On/Off', '', '', '', '', '', 'Αντικατάσταση Επεξεργαστή', '', '4444', '', ''),
(5, 'Κομοτηνή', '05/03/2014', 'Πολύ μικρές τιμές χαρακτηριστικής', '', '', 'Χαμηλή τάση πλακέτας (Ρ6)', '', '', '', '', '', 'Αντικατάσταση Επεξεργαστή', '', '5555', '', ''),
(6, 'Σέρρες', '06/03/2014', 'Πολύ μεγάλες τιμές χαρακτηριστικής', '', '', 'Χαμηλή τάση τηλεφωνικής γραμμής (Ρ5)', '', '', '', '', '', 'Αντικατάσταση Επεξεργαστή', '', '6666', '', ''),
(7, 'Θεσσαλονίκη', '07/03/2014', 'Μεγάλες διακυμάνσεις', '', '', 'Χαμηλή τάση τηλεφωνικής γραμμής (Ρ5)', '', '', '', '', '', 'Αντικατάσταση του μετρητή', '', '7777', '', ''),
(8, 'Αλεξανδρούπολη', '08/03/2014', 'Πολύ μικρές τιμές χαρακτηριστικής', '', '', 'Χαμηλή τάση τηλεφωνικής γραμμής (Ρ5)', '', '', 'Δεν επιστρέφει  τιμή στο HPIC', '', '', 'Αντικατάσταση πλακέτας', 'Αντικατάσταση Επεξεργαστή', '8888', '', ''),
(9, 'Ηράκλειο', '09/03/2014', 'Πολύ μεγάλες τιμές χαρακτηριστικής', '', '', 'Αποτυχία On/Off', '', '', '', '', '', 'Αντικατάσταση πλακέτας', '', '9999', '', ''),
(10, 'Αλεξανδρούπολη', '10/03/2014', 'Πολύ μεγάλες τιμές χαρακτηριστικής', '', '', 'Χαμηλή τάση τηλεφωνικής γραμμής (Ρ5)', '', '', '', '', '', 'Αντικατάσταση Επεξεργαστή', '', '101010', '', ''),
(43, 'Σέρρες', '', 'Πολύ μεγάλες τιμές χαρακτηριστικής', '', '', '', '', '', '', '', '', '', '', 'aa', 'MODEM', '-1');

-- --------------------------------------------------------

--
-- Table structure for table `gsmlink_errors`
--

CREATE TABLE IF NOT EXISTS `gsmlink_errors` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `βλάβες_GSMLink` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `gsmlink_errors`
--

INSERT INTO `gsmlink_errors` (`ID`, `βλάβες_GSMLink`) VALUES
(1, 'Αποτυχία σύνδεσης'),
(2, 'Αποτυχία On/Off'),
(3, 'Χαμηλή τάση τηλεφωνικής γραμμής (Ρ5)'),
(4, 'Χαμηλή τάση πλακέτας (Ρ6)'),
(5, '*');

-- --------------------------------------------------------

--
-- Table structure for table `h/w problems`
--

CREATE TABLE IF NOT EXISTS `h/w problems` (
  `ID` int(255) NOT NULL AUTO_INCREMENT,
  `Κατηγορία βλάβης` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `h/w problems`
--

INSERT INTO `h/w problems` (`ID`, `Κατηγορία βλάβης`) VALUES
(1, 'MODEM'),
(2, 'CPU'),
(3, 'Οξείδωση'),
(4, 'Τροφοδοτικό'),
(5, 'Υλικά Μ/Β'),
(6, '*');

-- --------------------------------------------------------

--
-- Table structure for table `repairs`
--

CREATE TABLE IF NOT EXISTS `repairs` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Διαδικασία Επισκευής` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `repairs`
--

INSERT INTO `repairs` (`ID`, `Διαδικασία Επισκευής`) VALUES
(2, 'Αντικατάσταση πλακέτας'),
(3, 'Αντικατάσταση Επεξεργαστή'),
(4, 'Αντικατάσταση του μετρητή'),
(5, '*');

-- --------------------------------------------------------

--
-- Table structure for table `stations`
--

CREATE TABLE IF NOT EXISTS `stations` (
  `ID` int(12) NOT NULL AUTO_INCREMENT,
  `Όνομα` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `SerNo` int(10) NOT NULL,
  `telNum` varchar(255) NOT NULL,
  `CoordinatesLat` varchar(15) NOT NULL,
  `CoordinatesLong` varchar(15) NOT NULL,
  `Height (m)` int(4) NOT NULL,
  `Fuse` varchar(16) CHARACTER SET utf8 NOT NULL,
  `Firmware` varchar(10) NOT NULL,
  `Board` varchar(10) CHARACTER SET utf8 NOT NULL,
  `Battery` varchar(12) CHARACTER SET utf8 NOT NULL,
  `CPU` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `stations`
--

INSERT INTO `stations` (`ID`, `Όνομα`, `SerNo`, `telNum`, `CoordinatesLat`, `CoordinatesLong`, `Height (m)`, `Fuse`, `Firmware`, `Board`, `Battery`, `CPU`) VALUES
(1, 'Ελληνικό', 0, '0', '', '', 0, '', '', '', '', ''),
(2, 'Δρόμος', 58, '6706', '', '', 0, 'F1', '2.8.1G', '', '17.12.2002', ''),
(3, 'Αλεξανδρούπολη', 160, '2551045434', '40  51,33''', '25  53,89''', 0, '', '2.8.1G', '', '16.12.2002', ''),
(4, 'Κομοτηνή', 67, '2531072540', '41  08.05''', '25  24.81''', 77, '  16.02.2000', '2.8.1G', '', '16.12.2002', ''),
(5, 'Σέρρες', 150, '2321035523', '41  04.60''', '23  31.73''', 0, 'F 17.2.2000', '2.8.1G', '', '15.03.2003', ''),
(6, 'Καβάλα', 60, '2591053345', '40 55.24''', '24 37.27''', 55, 'F 21.3.2000', '2.8.1G', '', '15.05.2003', ''),
(7, 'Θεσσαλονίκη', 71, '2310420387', '40 37.91''', '22 57.45''', 30, 'F 24.3.2000', '2.8.1G', '', '10.12.2002', ''),
(8, 'Άργος', 69, '2751067501', '37 37.97''', '22. 45.61''', 11, 'F1 13.4.2000', '2.8.1G', '', '23.12.2002', ''),
(9, 'Μεγαλόπολης', 157, '2791024870', '', '', 0, 'F1 25.4.2000', '2.8.1G', '', '24.12.2002', ''),
(10, 'Ιωάννινα', 152, '2651049650', '39 37.33''', '20 50.81''', 476, 'F 3.5.2000', '2.8.1G', '', '15.01.2003', ''),
(11, 'Πτολεμαΐδα', 786, '2463082286', '40 28.82''', '21 43.83''', 640, 'F1 26.6.2000', '2.8.1G', '', '16.01.2003', ''),
(12, 'Λάρισσα', 161, '2410537577', '39 38.77''', '22 27.61''', 77, 'F 26.6.2000', '2.8.1G', '', '10.12.2002', ''),
(13, 'Σούδα', 146, '2821063727', '35 29.81''', '24 08.41''', 2, 'F1 28.7.2000', '2.8.1G', '', '17.12.2002', ''),
(14, 'Λήμνος', 70, '2254092369', '39 55.49''', '25 15.06''', 15, 'F1 21.9.2000', '2.8.1G', '', '', ''),
(15, 'Λαμία', 159, '2231093090', '38 52.38''', '22 28.27''', 14, 'F1 1.11.2000', '2.8.1G', '', '27.11.2002', ''),
(16, 'Κέρκυρα', 18, '2661046102', '39 36.488''', '19 54.833''', 0, 'F1 23.11.2000', '2.8.1G', '', '21.01.2003', ''),
(17, 'Ρόδος', 64, '2241082440', '36 24.14''', '28 05.29''', 8, 'F1 2.3.2001', '2.8.1G', '', '23.01.2003', ''),
(18, 'Κεφαλονιά', 156, '2671042260', '38 07.21''', '20 30.30''', 18, 'F1 21.3.2001', '2.8.1G', '', '15.01.2003', ''),
(19, 'Λέσβος', 145, '2251061649', '39 03.24', '26 36.23', 5, 'F1', '2.8.1G', '', '30.01.2003', ''),
(20, 'Βόλος', 63, '2421095046', '', '', 0, 'F1', '2.8.1G', '', '09.12.2002', ''),
(21, 'Σαλαμίνα', 913, '2104649362', '37 59.098''', '23 32.168''', 2, '20.08.2002', '2.8.1G', '99Q015', '29.11.2002', ''),
(22, 'Πεδίο Βολής', 914, '2821063560', '35 54.320''', '24 10.307''', 327, '', '2.8.1G', '', '2001', ''),
(23, 'Σάμος', 61, '2273022959', '37 44.716''', '26 58.453''', 130, 'F1', '2.8.1G', '99Q019', '13.01.2003', ''),
(24, 'Πάτρα', 62, '2693052028', '38 08.95''', '21 25.33''', 3, 'F1 26.9.2000', '2.8.1G', '', '17.12.2002', ''),
(25, '*EEAE*', 796, '0', '', '', 0, '', '', '', '', ''),
(26, '*EEAE*', 153, '0', '', '', 0, '', '', '', '', ''),
(27, '*EEAE*', 151, '0', '', '', 0, '', '', '', '', ''),
(28, '*EEAE*', 162, '0', '', '', 0, '', '', '', '', ''),
(29, 'Νέα Φιλαδέλφεια', 59, '2102581221', '38 02.73', '23 44.80', 0, 'F', '2.8.1G', '', '09.01.2003', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
