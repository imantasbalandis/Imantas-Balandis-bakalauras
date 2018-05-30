-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2018 at 07:43 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `taksi`
--

-- --------------------------------------------------------

--
-- Table structure for table `automobilis`
--

CREATE TABLE `automobilis` (
  `Valst_nr` varchar(6) COLLATE utf8_lithuanian_ci NOT NULL,
  `Rida_pirkta` int(7) NOT NULL,
  `Sav_tipas` tinyint(1) NOT NULL,
  `Sav_id` int(9) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `automobilis`
--

INSERT INTO `automobilis` (`Valst_nr`, `Rida_pirkta`, `Sav_tipas`, `Sav_id`) VALUES
('FZH123', 2010, 0, 1),
('ALI123', 123000, 0, 2),
('KOR123', 258794, 0, 3),
('IMN000', 123456, 1, 1),
('Ima123', 95587, 0, 1),
('IAU126', 45678912, 1, 1),
('ALI456', 9876548, 1, 2),
('TST123', 1234568, 0, 11),
('ABC555', 20000, 0, 1),
('ABC222', 5000, 0, 1),
('AAA111', 99585, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `auto_panauda`
--

CREATE TABLE `auto_panauda` (
  `Data_Pan` date NOT NULL,
  `Auto_valst` varchar(6) COLLATE utf8_lithuanian_ci NOT NULL,
  `Vairuot_nr` int(11) NOT NULL,
  `Panaud_nr` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `auto_panauda`
--

INSERT INTO `auto_panauda` (`Data_Pan`, `Auto_valst`, `Vairuot_nr`, `Panaud_nr`) VALUES
('2017-12-01', 'ALI123', 2, 1),
('2017-12-02', 'FZH123', 1, 2),
('2017-12-06', 'FZH123', 1, 3),
('2017-01-04', 'FZH123', 1, 5),
('2017-01-01', 'KOR123', 3, 6),
('2018-05-04', 'AHA454', 7, 7),
('2018-05-27', 'TST123', 11, 8),
('2018-04-28', 'FZH123', 1, 9),
('2018-03-04', 'ABC555', 1, 10),
('2018-02-03', 'ABC222', 1, 11),
('2018-05-20', 'AAA111', 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `imone`
--

CREATE TABLE `imone` (
  `Imones_Id` int(9) NOT NULL,
  `Pavadinimas` varchar(50) COLLATE utf8_lithuanian_ci NOT NULL,
  `Im_kodas` int(9) NOT NULL,
  `Slaptazodis` varchar(20) COLLATE utf8_lithuanian_ci NOT NULL,
  `PVM` varchar(14) COLLATE utf8_lithuanian_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `imone`
--

INSERT INTO `imone` (`Imones_Id`, `Pavadinimas`, `Im_kodas`, `Slaptazodis`, `PVM`) VALUES
(1, 'ImantoAuto', 123456789, '123456789', 'LT123456789123'),
(2, 'Rent2Go', 302696789, '1', 'LT228965789123'),
(3, 'Rent2Go', 302696748, '302696748', 'LT302696748666'),
(4, ' UAB "Dallis"', 302626080, '302626080', 'LT100006555419'),
(5, 'JazzExpress', 301687689, '301687689', 'LT100006296810'),
(6, 'eTaksi', 300625108, '300625108', 'LT100008382313'),
(7, 'A2B', 304066851, '304066851', 'LT100009526613'),
(8, 'Uber Lithuania', 304151903, '304151903', 'LT100010017315');

-- --------------------------------------------------------

--
-- Table structure for table `islaidos`
--

CREATE TABLE `islaidos` (
  `Data_islaidu` date NOT NULL,
  `Rusies_id` int(11) NOT NULL,
  `Islaidu_id` int(11) NOT NULL,
  `Suma` decimal(8,2) NOT NULL,
  `Auto_valst_nr` varchar(6) COLLATE utf8_lithuanian_ci NOT NULL,
  `Vairuotas` int(9) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `islaidos`
--

INSERT INTO `islaidos` (`Data_islaidu`, `Rusies_id`, `Islaidu_id`, `Suma`, `Auto_valst_nr`, `Vairuotas`) VALUES
('2018-01-01', 2, 3, '200.00', 'ALI123', 2),
('2017-01-01', 5, 5, '100.00', 'KOR123', 3),
('2018-01-01', 1, 4, '100.00', 'FZH123', 1),
('2018-01-02', 1, 13, '150.00', 'FZH172', 1),
('2018-10-13', 4, 99, '20.00', 'FZH123', 1),
('2018-08-01', 1, 8, '100.10', 'FZH123', 1),
('2018-03-02', 1, 9, '100.00', 'FZH123', 1),
('2017-01-01', 1, 10, '200.00', 'KOR123', 3),
('2017-02-01', 1, 11, '100.10', 'KOR123', 3),
('2017-03-01', 1, 12, '100.00', 'KOR123', 3),
('2018-01-01', 1, 14, '100.00', 'FZH123', 1),
('2018-02-01', 1, 15, '20.00', 'FZH123', 1),
('2018-03-01', 1, 16, '30.00', 'FZH123', 1),
('2018-04-01', 1, 17, '40.00', 'FZH123', 1),
('2018-05-01', 2, 18, '50.00', 'FZH123', 1),
('2018-06-01', 1, 19, '60.00', 'FZH123', 1),
('2018-05-17', 2, 36, '100.00', 'AHA454', 7),
('2018-08-01', 1, 21, '80.00', 'FZH123', 1),
('2018-09-01', 3, 22, '10.00', 'FZH123', 1),
('2017-04-01', 1, 26, '150.00', 'KOR123', 3),
('2018-03-04', 2, 100, '200.00', 'TST123', 11),
('2018-12-01', 3, 97, '58.00', 'FZH123', 1),
('2017-05-01', 1, 27, '150.00', 'KOR123', 3),
('2017-06-01', 3, 28, '100.00', 'KOR123', 3),
('2017-07-01', 4, 29, '66.55', 'KOR123', 3),
('2017-08-01', 2, 30, '45.60', 'KOR123', 3),
('2017-09-01', 3, 31, '98.56', 'KOR123', 3),
('2017-10-01', 1, 32, '99.44', 'KOR123', 3),
('2017-10-01', 1, 33, '125.10', 'KOR123', 3),
('2017-12-01', 1, 34, '10.00', 'KOR123', 3),
('2017-11-01', 1, 35, '125.00', 'KOR123', 3);

-- --------------------------------------------------------

--
-- Table structure for table `keliones_lapas`
--

CREATE TABLE `keliones_lapas` (
  `Lapo_Nr` int(11) NOT NULL,
  `Data_darbo` date NOT NULL,
  `Km_prad` int(7) DEFAULT NULL,
  `Km_pab` int(7) DEFAULT NULL,
  `uzdarbis` decimal(8,2) NOT NULL,
  `Pelnas_proc` tinyint(2) DEFAULT '0',
  `Panaudos_Nr` int(11) DEFAULT NULL,
  `Vairuot_Id` int(11) NOT NULL,
  `imones_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `keliones_lapas`
--

INSERT INTO `keliones_lapas` (`Lapo_Nr`, `Data_darbo`, `Km_prad`, `Km_pab`, `uzdarbis`, `Pelnas_proc`, `Panaudos_Nr`, `Vairuot_Id`, `imones_id`) VALUES
(1, '2018-11-11', NULL, NULL, '100.00', 10, 3, 1, 2),
(13, '2018-02-01', NULL, NULL, '200.00', 30, 3, 1, 2),
(9, '2018-11-08', NULL, NULL, '100.00', 30, 3, 1, 2),
(4, '2018-03-06', NULL, NULL, '100.00', 70, 3, 1, 2),
(6, '2018-12-31', NULL, NULL, '50.00', 50, 3, 1, 2),
(7, '2018-01-01', NULL, NULL, '300.00', 10, 3, 1, NULL),
(8, '2018-06-04', NULL, NULL, '250.00', 70, 3, 1, 2),
(10, '2018-01-01', NULL, NULL, '200.00', 30, 6, 3, 2),
(11, '2018-02-01', NULL, NULL, '200.00', 30, 6, 3, 2),
(12, '2018-03-01', NULL, NULL, '111.00', 30, 6, 3, 2),
(14, '2018-03-01', NULL, NULL, '300.00', 30, 3, 1, 2),
(15, '2018-04-07', NULL, NULL, '400.00', 30, 3, 1, 2),
(16, '2018-05-01', NULL, NULL, '300.00', 30, 3, 1, 2),
(17, '2018-06-07', NULL, NULL, '600.00', 30, 3, 1, 2),
(18, '2018-07-01', NULL, NULL, '700.00', 30, 3, 1, 2),
(19, '2018-08-07', NULL, NULL, '800.00', 30, 3, 1, 2),
(20, '2018-09-01', NULL, NULL, '900.00', 30, 3, 1, 2),
(21, '2018-10-07', NULL, NULL, '100.00', 30, 3, 1, 2),
(22, '2018-11-01', NULL, NULL, '110.00', 30, 3, 1, 2),
(60, '2018-01-04', NULL, NULL, '100.00', 70, 8, 11, 5),
(24, '2017-04-01', NULL, NULL, '400.00', 30, 6, 3, NULL),
(25, '2017-05-01', NULL, NULL, '555.00', 30, 6, 3, NULL),
(26, '2017-06-01', NULL, NULL, '708.00', 30, 6, 3, NULL),
(27, '2017-07-01', NULL, NULL, '535.00', 30, 6, 3, NULL),
(28, '2018-08-01', NULL, NULL, '782.00', 30, 6, 3, 2),
(29, '2017-09-01', NULL, NULL, '235.00', 30, 6, 3, NULL),
(30, '2017-10-01', NULL, NULL, '102.00', 30, 6, 3, NULL),
(31, '2017-11-01', NULL, NULL, '556.00', 30, 6, 3, NULL),
(32, '2017-12-01', NULL, NULL, '992.00', 30, 6, 3, NULL),
(33, '2017-12-22', NULL, NULL, '125.00', 90, 3, 1, NULL),
(34, '2017-12-22', NULL, NULL, '125.00', 65, 2, 1, NULL),
(39, '2018-06-05', NULL, NULL, '525.00', 15, 2, 1, NULL),
(36, '2018-05-09', NULL, NULL, '1541.00', 15, 7, 7, NULL),
(38, '2018-05-20', NULL, NULL, '456.00', 30, 2, 1, NULL),
(40, '2018-05-20', NULL, NULL, '45.00', 30, 2, 1, 0),
(41, '2018-01-18', NULL, NULL, '100.00', 70, 3, 1, 2),
(42, '2018-05-23', NULL, NULL, '999.00', 70, 2, 1, NULL),
(43, '2018-08-06', NULL, NULL, '999.00', 70, 2, 1, 0),
(44, '2018-04-20', NULL, NULL, '500.00', 70, 2, 1, 2),
(45, '2018-12-12', NULL, NULL, '500.00', 70, 2, 1, 2),
(46, '2018-04-04', NULL, NULL, '500.00', 70, 2, 1, 2),
(47, '2018-05-22', NULL, NULL, '500.00', 70, 2, 1, 2),
(48, '2018-05-23', NULL, NULL, '500.00', 70, 2, 1, 2),
(61, '2018-03-05', NULL, NULL, '500.00', 70, 8, 11, 5),
(50, '2018-02-01', NULL, NULL, '500.00', 20, 7, 7, NULL),
(59, '2018-01-01', NULL, NULL, '100.00', 70, 8, 11, 5),
(53, '2001-02-02', NULL, NULL, '500.00', 0, 7, 7, NULL),
(63, '2018-05-21', NULL, NULL, '60.00', 70, 12, 1, 2),
(56, '2018-02-02', NULL, NULL, '45.00', 0, 2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `rusys`
--

CREATE TABLE `rusys` (
  `Rusies_ID` int(11) NOT NULL,
  `Rusies_pavad` varchar(50) COLLATE utf8_lithuanian_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `rusys`
--

INSERT INTO `rusys` (`Rusies_ID`, `Rusies_pavad`) VALUES
(1, 'Kuras'),
(2, 'Servisas'),
(3, 'Plovimas'),
(4, 'Padangų keitimas'),
(5, 'Kita');

-- --------------------------------------------------------

--
-- Table structure for table `sutartis`
--

CREATE TABLE `sutartis` (
  `Vairuot_Id` int(9) NOT NULL,
  `imones_Id` int(9) NOT NULL,
  `Proc_atiduot` tinyint(2) NOT NULL,
  `Sutarties_ID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `sutartis`
--

INSERT INTO `sutartis` (`Vairuot_Id`, `imones_Id`, `Proc_atiduot`, `Sutarties_ID`) VALUES
(6, 2, 70, 1),
(1, 2, 70, 4),
(2, 2, 45, 3),
(3, 2, 50, 6),
(11, 5, 70, 9),
(8, 2, 30, 8),
(13, 2, 70, 11);

-- --------------------------------------------------------

--
-- Table structure for table `vairuotojas`
--

CREATE TABLE `vairuotojas` (
  `Vardas` varchar(30) COLLATE utf8_lithuanian_ci NOT NULL,
  `Pavarde` varchar(35) COLLATE utf8_lithuanian_ci NOT NULL,
  `Gim_data` date NOT NULL,
  `Stazas_nuo` int(4) NOT NULL,
  `Vairuot_veikl` varchar(11) COLLATE utf8_lithuanian_ci NOT NULL,
  `Slaptazodis` varchar(20) COLLATE utf8_lithuanian_ci NOT NULL,
  `Pazymejimo_nr` varchar(10) COLLATE utf8_lithuanian_ci NOT NULL,
  `Vairuot_Id` int(9) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `vairuotojas`
--

INSERT INTO `vairuotojas` (`Vardas`, `Pavarde`, `Gim_data`, `Stazas_nuo`, `Vairuot_veikl`, `Slaptazodis`, `Pazymejimo_nr`, `Vairuot_Id`) VALUES
('Vardenis', 'Pavardenis', '1995-04-29', 2012, 'ABC12345678', '1', 'R123456789', 1),
('Vardenė', 'Pavardenė', '1995-05-18', 2006, 'Ali12345678', 'Ali12345678', 'A123456789', 2),
('Jonas', 'Jonaitis', '1995-06-12', 2015, 'KOR12345678', 'KOR12345678', 'K123456789', 3),
('Petras', 'Petraitis', '1995-05-05', 2015, 'EMI59863218', 'EMI59863218', '000258746', 5),
('Birutė', 'Birutytė', '1996-06-15', 2016, 'Dan12369854', 'Dan12369854', '025869475', 6),
('Vytas', 'Vytauskas', '2018-05-02', 2018, 'ABC12345688', 'krabas', 'K123456777', 7),
('Eglė', 'Egliauskienė', '2018-05-12', 2016, 'ALI256256', 'alisa', '2562564', 8),
('Imantas', 'Balandis', '1995-04-29', 2010, 'Testas', '1', 'Testas', 13),
('Testas', 'Testuolis', '2010-01-01', 1995, 'TEST123456', '1', 'T123456', 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `automobilis`
--
ALTER TABLE `automobilis`
  ADD PRIMARY KEY (`Valst_nr`);

--
-- Indexes for table `auto_panauda`
--
ALTER TABLE `auto_panauda`
  ADD PRIMARY KEY (`Panaud_nr`);

--
-- Indexes for table `imone`
--
ALTER TABLE `imone`
  ADD PRIMARY KEY (`Imones_Id`),
  ADD UNIQUE KEY `Im_kodas` (`Im_kodas`);

--
-- Indexes for table `islaidos`
--
ALTER TABLE `islaidos`
  ADD PRIMARY KEY (`Islaidu_id`);

--
-- Indexes for table `keliones_lapas`
--
ALTER TABLE `keliones_lapas`
  ADD PRIMARY KEY (`Lapo_Nr`);

--
-- Indexes for table `rusys`
--
ALTER TABLE `rusys`
  ADD PRIMARY KEY (`Rusies_ID`);

--
-- Indexes for table `sutartis`
--
ALTER TABLE `sutartis`
  ADD PRIMARY KEY (`Sutarties_ID`);

--
-- Indexes for table `vairuotojas`
--
ALTER TABLE `vairuotojas`
  ADD PRIMARY KEY (`Vairuot_Id`),
  ADD UNIQUE KEY `Vairuot_veikl` (`Vairuot_veikl`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auto_panauda`
--
ALTER TABLE `auto_panauda`
  MODIFY `Panaud_nr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `imone`
--
ALTER TABLE `imone`
  MODIFY `Imones_Id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `islaidos`
--
ALTER TABLE `islaidos`
  MODIFY `Islaidu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `keliones_lapas`
--
ALTER TABLE `keliones_lapas`
  MODIFY `Lapo_Nr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `rusys`
--
ALTER TABLE `rusys`
  MODIFY `Rusies_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sutartis`
--
ALTER TABLE `sutartis`
  MODIFY `Sutarties_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `vairuotojas`
--
ALTER TABLE `vairuotojas`
  MODIFY `Vairuot_Id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
