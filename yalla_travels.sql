-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2025 at 11:38 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yalla_travels`
--

-- --------------------------------------------------------

--
-- Table structure for table `airline`
--

CREATE TABLE `airline` (
  `AirLineID` int(11) NOT NULL,
  `AirLineName` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `airline`
--

INSERT INTO `airline` (`AirLineID`, `AirLineName`) VALUES
(1, 'AKBAR TRAVEL'),
(2, 'AIR BLUE'),
(3, 'AL DIYAFA');

-- --------------------------------------------------------

--
-- Table structure for table `airlines`
--

CREATE TABLE `airlines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `country` varchar(255) DEFAULT '',
  `code` varchar(255) DEFAULT '',
  `description` text DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `airlines`
--

INSERT INTO `airlines` (`id`, `name`, `country`, `code`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 'American Airlines', 'AA', '001', NULL, 1, '2025-10-12 04:18:02', NULL),
(3, 'CargoItalia (alternate)', '2G', '002', NULL, 1, '2025-10-12 04:18:02', NULL),
(4, 'Continental Airlines', 'CO', '005', NULL, 1, '2025-10-12 04:18:02', NULL),
(5, 'Delta Air Lines', 'DL', '006', NULL, 1, '2025-10-12 04:18:02', NULL),
(6, 'Northwest Airlines (alternate site)', 'NW', '012', NULL, 1, '2025-10-12 04:18:02', NULL),
(7, 'Air Canada', 'AC', '014', NULL, 1, '2025-10-12 04:18:02', NULL),
(8, 'United Airlines Cargo', 'UA', '016', NULL, 1, '2025-10-12 04:18:02', NULL),
(9, 'Canadian Airlines Int´l', 'CP', '018', NULL, 1, '2025-10-12 04:18:02', NULL),
(10, 'Lufthansa Cargo AG', 'LH', '020', NULL, 1, '2025-10-12 04:18:02', NULL),
(11, 'Fedex', 'FX', '023', NULL, 1, '2025-10-12 04:18:02', NULL),
(12, 'Alaska Airlines', 'AS', '027', NULL, 1, '2025-10-12 04:18:02', NULL),
(13, 'USAirways', 'US', '037', NULL, 1, '2025-10-12 04:18:02', NULL),
(14, 'VARIG Brazilian Airlines', 'RG', '042', NULL, 1, '2025-10-12 04:18:02', NULL),
(15, 'Dragonair', 'KA', '043', NULL, 1, '2025-10-12 04:18:02', NULL),
(16, 'LAN Chile', 'LA', '045', NULL, 1, '2025-10-12 04:18:02', NULL),
(17, 'TAP Air Portugal', 'TP', '047', NULL, 1, '2025-10-12 04:18:02', NULL),
(18, 'Cyprus Airways', 'CY', '048', NULL, 1, '2025-10-12 04:18:02', NULL),
(19, 'Olympic Airways', 'OA', '050', NULL, 1, '2025-10-12 04:18:02', NULL),
(20, 'Aer Lingus Cargo', 'EI', '053', NULL, 1, '2025-10-12 04:18:02', NULL),
(21, 'Alitalia', 'AZ', '055', NULL, 1, '2025-10-12 04:18:02', NULL),
(22, 'Air France', 'AF', '057', NULL, 1, '2025-10-12 04:18:02', NULL),
(23, 'Indian Airlines', 'IC', '058', NULL, 1, '2025-10-12 04:18:02', NULL),
(24, 'Air Seychelles', 'HM', '061', NULL, 1, '2025-10-12 04:18:02', NULL),
(25, 'Czech Airlines', 'OK', '064', NULL, 1, '2025-10-12 04:18:02', NULL),
(26, 'Saudi Arabian Airlines', 'SV', '065', NULL, 1, '2025-10-12 04:18:02', NULL),
(27, 'Syrian Arab Airlines', 'RB', '070', NULL, 1, '2025-10-12 04:18:02', NULL),
(28, 'Ethiopian Airlines', 'ET', '071', NULL, 1, '2025-10-12 04:18:02', NULL),
(29, 'Gulf Air', 'GF', '072', NULL, 1, '2025-10-12 04:18:02', NULL),
(30, 'KLM Cargo', 'KL', '074', NULL, 1, '2025-10-12 04:18:02', NULL),
(31, 'Iberia', 'IB', '075', NULL, 1, '2025-10-12 04:18:02', NULL),
(32, 'Middle East Airlines', 'ME', '076', NULL, 1, '2025-10-12 04:18:02', NULL),
(33, 'Egyptair', 'MS', '077', NULL, 1, '2025-10-12 04:18:02', NULL),
(34, 'Philippine Airlines', 'PR', '079', NULL, 1, '2025-10-12 04:18:02', NULL),
(35, 'Air France', 'AF', '057', NULL, 1, '2025-10-12 04:18:02', NULL),
(36, 'LOT Polish Airlines', 'LO', '080', NULL, 1, '2025-10-12 04:18:02', NULL),
(37, 'Qantas Airways', 'QF', '081', NULL, 1, '2025-10-12 04:18:02', NULL),
(38, 'Brussels Airlines', 'SN', '082', NULL, 1, '2025-10-12 04:18:02', NULL),
(39, 'South African Airways', 'SA', '083', NULL, 1, '2025-10-12 04:18:02', NULL),
(40, 'Air New Zealand', 'NZ', '086', NULL, 1, '2025-10-12 04:18:02', NULL),
(41, 'Kingfisher Airlines', 'IT', '090', NULL, 1, '2025-10-12 04:18:02', NULL),
(42, 'KD Avia', 'KD', '093', NULL, 1, '2025-10-12 04:18:02', NULL),
(43, 'Iran Air', 'IR', '096', NULL, 1, '2025-10-12 04:18:02', NULL),
(44, 'Air India', 'AI', '098', NULL, 1, '2025-10-12 04:18:02', NULL),
(45, 'Finnair', 'AY', '105', NULL, 1, '2025-10-12 04:18:02', NULL),
(46, 'Caribbean Airlines', 'BW', '106', NULL, 1, '2025-10-12 04:18:02', NULL),
(47, 'Icelandair', 'FI', '108', NULL, 1, '2025-10-12 04:18:02', NULL),
(48, 'China Cargo Airlines', 'CK', '112', NULL, 1, '2025-10-12 04:18:02', NULL),
(49, 'EL AL', 'LY', '114', NULL, 1, '2025-10-12 04:18:02', NULL),
(50, 'JAT Airways', 'JU', '115', NULL, 1, '2025-10-12 04:18:02', NULL),
(51, 'SAS-Scandinavian Airlines System', 'SK', '117', NULL, 1, '2025-10-12 04:18:02', NULL),
(52, 'TAAG Angola Airlines', 'DT', '118', NULL, 1, '2025-10-12 04:18:02', NULL),
(53, 'Air ALM', 'LM', '119', NULL, 1, '2025-10-12 04:18:02', NULL),
(54, 'Air Algerie', 'AH', '124', NULL, 1, '2025-10-12 04:18:02', NULL),
(55, 'British Airways', 'BA', '125', NULL, 1, '2025-10-12 04:18:02', NULL),
(56, 'Garuda Indonesia', 'GA', '126', NULL, 1, '2025-10-12 04:18:02', NULL),
(57, 'Martinair Cargo', 'MP', '129', NULL, 1, '2025-10-12 04:18:02', NULL),
(58, 'Japan Airlines', 'JL', '131', NULL, 1, '2025-10-12 04:18:02', NULL),
(59, 'LACSA Airlines of Costa Rica', 'LR', '133', NULL, 1, '2025-10-12 04:18:02', NULL),
(60, 'Aeromexico Cargo', 'AM', '139', NULL, 1, '2025-10-12 04:18:02', NULL),
(61, 'LIAT Airlines', 'LI', '140', NULL, 1, '2025-10-12 04:18:02', NULL),
(62, 'Royal Air Maroc', 'AT', '147', NULL, 1, '2025-10-12 04:18:02', NULL),
(63, 'Libyan Airlines', 'LN', '148', NULL, 1, '2025-10-12 04:18:02', NULL),
(64, 'Qatar Airways', 'QR', '157', NULL, 1, '2025-10-12 04:18:02', NULL),
(65, 'Cathay Pacific Airways', 'CX', '160', NULL, 1, '2025-10-12 04:18:02', NULL),
(66, 'TNT Airways', '3V', '163', NULL, 1, '2025-10-12 04:18:02', NULL),
(67, 'Adria Airways', 'JP', '165', NULL, 1, '2025-10-12 04:18:02', NULL),
(68, 'Cargolux Airlines', 'CV', '172', NULL, 1, '2025-10-12 04:18:02', NULL),
(69, 'Emirates', 'EK', '176', NULL, 1, '2025-10-12 04:18:02', NULL),
(70, 'Korean Air', 'KE', '180', NULL, 1, '2025-10-12 04:18:02', NULL),
(71, 'Malev Hungarian Airlines', 'MA', '182', NULL, 1, '2025-10-12 04:18:02', NULL),
(72, 'VARIG Brazilian Airlines', 'RG', '183', NULL, 1, '2025-10-12 04:18:02', NULL),
(73, 'Jade Cargo International', 'JI', '189', NULL, 1, '2025-10-12 04:18:02', NULL),
(74, 'Air Jamaica', 'JM', '201', NULL, 1, '2025-10-12 04:18:02', NULL),
(75, 'TACA', 'TA', '202', NULL, 1, '2025-10-12 04:18:02', NULL),
(76, 'ANA All Nippon Cargo', 'NH', '205', NULL, 1, '2025-10-12 04:18:02', NULL),
(77, 'Pakistan Int´l Airlines', 'PK', '214', NULL, 1, '2025-10-12 04:18:02', NULL),
(78, 'Thai Airways', 'TG', '217', NULL, 1, '2025-10-12 04:18:02', NULL),
(79, 'Kuwait Airways', 'KU', '229', NULL, 1, '2025-10-12 04:18:02', NULL),
(80, 'Copa Airlines Cargo', 'CM', '230', NULL, 1, '2025-10-12 04:18:02', NULL),
(81, 'Lauda Air', 'NG', '231', NULL, 1, '2025-10-12 04:18:02', NULL),
(82, 'Malaysian Airline System', 'MH', '232', NULL, 1, '2025-10-12 04:18:02', NULL),
(83, ' ', 'MH', '232', NULL, 1, '2025-10-12 04:18:02', NULL),
(84, 'Homepage', 'MH', '232', NULL, 1, '2025-10-12 04:18:02', NULL),
(85, 'Japan Air System', 'JD', '234', NULL, 1, '2025-10-12 04:18:02', NULL),
(86, 'Turkish Airlines', 'TK', '235', NULL, 1, '2025-10-12 04:18:02', NULL),
(87, 'British Midland Airways', 'BD', '236', NULL, 1, '2025-10-12 04:18:02', NULL),
(88, 'Air Mauritius', 'MK', '239', NULL, 1, '2025-10-12 04:18:02', NULL),
(89, 'Austrian Cargo', 'OS', '257', NULL, 1, '2025-10-12 04:18:02', NULL),
(90, 'Air Madagascar', 'MD', '258', NULL, 1, '2025-10-12 04:18:02', NULL),
(91, 'Far Eastern Air Transport', 'EF', '265', NULL, 1, '2025-10-12 04:18:02', NULL),
(92, 'LTU (Leisure Cargo)', 'LT', '266', NULL, 1, '2025-10-12 04:18:02', NULL),
(93, 'Trans Mediterranean Airways', 'TL', '270', NULL, 1, '2025-10-12 04:18:02', NULL),
(94, 'Kalitta Air', 'K4', '272', NULL, 1, '2025-10-12 04:18:02', NULL),
(95, 'Air Hong Kong', 'LD', '288', NULL, 1, '2025-10-12 04:18:02', NULL),
(96, 'China Airlines', 'CI', '297', NULL, 1, '2025-10-12 04:18:02', NULL),
(97, 'Global Aviation and Services', '5S', '301', NULL, 1, '2025-10-12 04:18:02', NULL),
(98, 'Sky West Airlines', 'OO', '302', NULL, 1, '2025-10-12 04:18:02', NULL),
(99, 'Centurion Air Cargo', 'WE', '307', NULL, 1, '2025-10-12 04:18:02', NULL),
(100, 'Shandong Airlines (Chinese)', 'SC', '324', NULL, 1, '2025-10-12 04:18:02', NULL),
(101, 'Florida West International Airways', 'RF', '330', NULL, 1, '2025-10-12 04:18:02', NULL),
(102, 'Northern Air Cargo', 'NC', '345', NULL, 1, '2025-10-12 04:18:02', NULL),
(103, 'Cargolux Italia', 'C8', '356', NULL, 1, '2025-10-12 04:18:02', NULL),
(104, 'Atlas Air', '5Y', '369', NULL, 1, '2025-10-12 04:18:02', NULL),
(105, 'Cayman Airways', 'KX', '378', NULL, 1, '2025-10-12 04:18:02', NULL),
(106, 'Aegean Airlines', 'A3', '390', NULL, 1, '2025-10-12 04:18:02', NULL),
(107, 'Polar Air Cargo', 'PO', '403', NULL, 1, '2025-10-12 04:18:02', NULL),
(108, 'Arrow Air', 'JW', '404', NULL, 1, '2025-10-12 04:18:02', NULL),
(109, 'UPS Air Cargo', '5X', '406', NULL, 1, '2025-10-12 04:18:02', NULL),
(110, 'National Air Cargo', 'N8', '416', NULL, 1, '2025-10-12 04:18:02', NULL),
(111, 'Siberia Airlines', 'S7', '421', NULL, 1, '2025-10-12 04:18:02', NULL),
(112, 'DHL Aviation/DHL Airways', 'ER', '423', NULL, 1, '2025-10-12 04:18:02', NULL),
(113, 'Air Astana', 'KC', '465', NULL, 1, '2025-10-12 04:18:02', NULL),
(114, 'Shenzhen Airlines (Chinese)', 'ZH', '479', NULL, 1, '2025-10-12 04:18:02', NULL),
(115, 'Aeroflot', 'SU', '507', NULL, 1, '2025-10-12 04:18:02', NULL),
(116, 'Royal Jordanian', 'RJ', '512', NULL, 1, '2025-10-12 04:18:02', NULL),
(117, 'Southwest Airlines', 'WN', '526', NULL, 1, '2025-10-12 04:18:02', NULL),
(118, 'Cielos Airlines', 'A2', '529', NULL, 1, '2025-10-12 04:18:02', NULL),
(119, 'ABSA Aerolinhas Brasileiras', 'M3', '549', NULL, 1, '2025-10-12 04:18:02', NULL),
(120, 'Mario’s Air', 'M2', '552', NULL, 1, '2025-10-12 04:18:02', NULL),
(121, 'Sun Express', 'XQ', '564', NULL, 1, '2025-10-12 04:18:02', NULL),
(122, 'Ukraine Int´l Airlines', 'PS', '566', NULL, 1, '2025-10-12 04:18:02', NULL),
(123, 'Air Moldova', '9U', '572', NULL, 1, '2025-10-12 04:18:02', NULL),
(124, 'Coyne Airways', '7C', '575', NULL, 1, '2025-10-12 04:18:02', NULL),
(125, 'AirBridge Cargo', 'RU', '580', NULL, 1, '2025-10-12 04:18:02', NULL),
(126, 'Jet Airways', '9W', '589', NULL, 1, '2025-10-12 04:18:02', NULL),
(127, 'SriLankan Cargo', 'UL', '603', NULL, 1, '2025-10-12 04:18:02', NULL),
(128, 'more AWB tracking', 'UL', '603', NULL, 1, '2025-10-12 04:18:02', NULL),
(129, 'Cameroon Airlines', 'UY', '604', NULL, 1, '2025-10-12 04:18:02', NULL),
(130, 'ETIHAD Airways', 'EY', '607', NULL, 1, '2025-10-12 04:18:02', NULL),
(131, 'DHL Aviation / European Air Transport', 'QY', '615', NULL, 1, '2025-10-12 04:18:02', NULL),
(132, 'Singapore Airlines', 'SQ', '618', NULL, 1, '2025-10-12 04:18:02', NULL),
(133, 'Bulgaria Air', 'FB', '623', NULL, 1, '2025-10-12 04:18:02', NULL),
(134, 'Air Greenland', 'GL', '631', NULL, 1, '2025-10-12 04:18:02', NULL),
(135, 'Yemenia Yemen Airways', 'IY', '635', NULL, 1, '2025-10-12 04:18:02', NULL),
(136, 'Air Malta', 'KM', '643', NULL, 1, '2025-10-12 04:18:02', NULL),
(137, 'Air Niugini', 'PX', '656', NULL, 1, '2025-10-12 04:18:02', NULL),
(138, 'Air Baltic', 'BT', '657', NULL, 1, '2025-10-12 04:18:02', NULL),
(139, 'Royal Brunei Airlines', 'BI', '672', NULL, 1, '2025-10-12 04:18:02', NULL),
(140, 'Air Macau', 'NX', '675', NULL, 1, '2025-10-12 04:18:02', NULL),
(141, 'Eva Airways', 'BR', '695', NULL, 1, '2025-10-12 04:18:02', NULL),
(142, 'CAL Cargo Air Lines', '5C', '700', NULL, 1, '2025-10-12 04:18:02', NULL),
(143, 'Kenya Airways', 'KQ', '706', NULL, 1, '2025-10-12 04:18:02', NULL),
(144, 'MNG Airlines', 'MB', '716', NULL, 1, '2025-10-12 04:18:02', NULL),
(145, 'Swiss', 'LX', '724', NULL, 1, '2025-10-12 04:18:02', NULL),
(146, 'Tampa Airlines', 'QT', '729', NULL, 1, '2025-10-12 04:18:02', NULL),
(147, 'Xiamen Airlines', 'MF', '731', NULL, 1, '2025-10-12 04:18:02', NULL),
(148, 'SATA Air Acores', 'SP', '737', NULL, 1, '2025-10-12 04:18:02', NULL),
(149, 'Vietnam Airlines', 'VN', '738', NULL, 1, '2025-10-12 04:18:02', NULL),
(150, 'Avient', 'SM', '757', NULL, 1, '2025-10-12 04:18:02', NULL),
(151, 'Azerbaijan Airlines', 'J2', '771', NULL, 1, '2025-10-12 04:18:02', NULL),
(152, 'Shanghai Airlines', 'FM', '774', NULL, 1, '2025-10-12 04:18:02', NULL),
(153, 'China Eastern Airlines', 'MU', '781', NULL, 1, '2025-10-12 04:18:02', NULL),
(154, 'China Southern Airlines', 'CZ', '784', NULL, 1, '2025-10-12 04:18:02', NULL),
(155, 'Grandstar Cargo', 'GD', '800', NULL, 1, '2025-10-12 04:18:02', NULL),
(156, 'Mandarin Airlines', 'AE', '803', NULL, 1, '2025-10-12 04:18:02', NULL),
(157, 'Amerijet International', 'M6', '810', NULL, 1, '2025-10-12 04:18:02', NULL),
(158, 'SAC South American Airways', 'S6', '817', NULL, 1, '2025-10-12 04:18:02', NULL),
(159, 'Shanghai Airlines Cargo', 'F4', '825', NULL, 1, '2025-10-12 04:18:02', NULL),
(160, 'Croatia Airlines', 'OU', '831', NULL, 1, '2025-10-12 04:18:02', NULL),
(161, 'Hong Kong Airlines', 'N8', '851', NULL, 1, '2025-10-12 04:18:02', NULL),
(162, 'Africa West', 'FK', '858', NULL, 1, '2025-10-12 04:18:02', NULL),
(163, 'Atlantic Southeast Airlines', 'EV', '862', NULL, 1, '2025-10-12 04:18:02', NULL),
(164, 'MASAir', 'MY', '865', NULL, 1, '2025-10-12 04:18:02', NULL),
(165, 'Aerosvit', 'VV', '870', NULL, 1, '2025-10-12 04:18:02', NULL),
(166, 'Yangtze River Express Airlines', 'Y8', '871', NULL, 1, '2025-10-12 04:18:02', NULL),
(167, 'AeroUnion', '6R', '873', NULL, 1, '2025-10-12 04:18:02', NULL),
(168, 'Sichuan Airlines', '3U', '876', NULL, 1, '2025-10-12 04:18:02', NULL),
(169, 'Hainan Airlines (Chinese)', 'HU', '880', NULL, 1, '2025-10-12 04:18:02', NULL),
(170, 'Condor Flugdienst', 'DE', '881', NULL, 1, '2025-10-12 04:18:02', NULL),
(171, 'Comair', 'OH', '886', NULL, 1, '2025-10-12 04:18:02', NULL),
(172, 'TAB Cargo', 'B1', '901', NULL, 1, '2025-10-12 04:18:02', NULL),
(173, 'Air Armenia', 'QN', '907', NULL, 1, '2025-10-12 04:18:02', NULL),
(174, 'Buraq Air Transport (Arabic only)', 'UZ', '928', NULL, 1, '2025-10-12 04:18:02', NULL),
(175, 'Virgin Atlantic', 'VS', '932', NULL, 1, '2025-10-12 04:18:02', NULL),
(176, 'Nippon Cargo Airlines', 'KZ', '933', NULL, 1, '2025-10-12 04:18:02', NULL),
(177, 'TAM Brazilian Airlines', 'JJ', '957', NULL, 1, '2025-10-12 04:18:02', NULL),
(178, 'Insel Air Cargo', '7I', '958', NULL, 1, '2025-10-12 04:18:02', NULL),
(179, 'Estonian Air', 'OV', '960', NULL, 1, '2025-10-12 04:18:02', NULL),
(180, 'Aeromexpress Cargo', 'QO', '976', NULL, 1, '2025-10-12 04:18:02', NULL),
(181, 'Asiana Airlines', 'OZ', '988', NULL, 1, '2025-10-12 04:18:02', NULL),
(182, 'Great Wall Airlines', 'IJ', '989', NULL, 1, '2025-10-12 04:18:02', NULL),
(183, 'Air Europa Cargo', 'UX', '996', NULL, 1, '2025-10-12 04:18:02', NULL),
(184, 'Biman Bangladesh', 'BG', '997', NULL, 1, '2025-10-12 04:18:02', NULL),
(185, 'Air China', 'CA', '999', NULL, 1, '2025-10-12 04:18:02', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `ajax_invoice`
-- (See below for the actual view)
--
CREATE TABLE `ajax_invoice` (
`ItemCode` varchar(5)
,`ItemName` varchar(55)
,`VisaType` varchar(35)
,`PaxName` varchar(35)
,`PNR` varchar(35)
,`Sector` varchar(35)
,`Fare` double(8,2)
,`RefNo` varchar(55)
,`Taxable` double(8,2)
,`Service` double(8,2)
,`OPVAT` double(8,2)
,`IPVAT` double(8,2)
,`Discount` double(8,2)
,`InvoiceDetailID` int(8)
,`InvoiceMasterID` int(8)
,`ItemID` int(8)
,`SupplierID` int(8)
,`SupplierName` varchar(35)
,`Date` date
,`InvoiceTypeID` int(8)
,`InvoiceTypeCode` varchar(35)
,`UserID` int(8)
,`PartyName` varchar(255)
,`Total` int(8)
,`PartyID` int(8)
,`Phone` varchar(255)
,`InvoiceType` varchar(35)
,`SalemanName` varchar(55)
,`Voucher` varchar(15)
,`PaymentMode` varchar(25)
,`Passport` varchar(255)
,`DepartureDate` date
,`Contact` varchar(255)
,`UmrahFare` double(14,2)
,`RoomType` varchar(255)
,`PickPoint` varchar(255)
,`Paid` int(8)
,`BankCharges` decimal(15,3)
,`BankName` varchar(255)
,`Balance` int(8)
);

-- --------------------------------------------------------

--
-- Table structure for table `attachment`
--

CREATE TABLE `attachment` (
  `AttachmentID` int(11) NOT NULL,
  `InvoiceNo` varchar(25) DEFAULT NULL,
  `FileName` varchar(75) DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `lead_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `users_id` int(11) DEFAULT NULL,
  `agent_name` varchar(255) DEFAULT NULL,
  `PartyID` varchar(255) DEFAULT NULL,
  `client_contact` varchar(255) DEFAULT NULL,
  `client_address` varchar(255) DEFAULT NULL,
  `SupplierID` varchar(255) DEFAULT NULL,
  `vendor_cost` double(12,2) DEFAULT NULL,
  `input_vat` double(12,2) DEFAULT NULL,
  `cnc_cost` double(14,2) DEFAULT NULL,
  `output_vat` double(14,2) DEFAULT NULL,
  `profit` double(14,2) DEFAULT NULL,
  `net_invoice` double(14,2) DEFAULT NULL,
  `services` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `collected_by` varchar(255) DEFAULT NULL,
  `amount` double(12,2) DEFAULT NULL,
  `remarks` longtext DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `invoice_file` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `BranchID` int(8) NOT NULL,
  `BranchCode` varchar(155) DEFAULT NULL,
  `BranchName` varchar(155) DEFAULT NULL,
  `BranchLogo` varchar(155) DEFAULT NULL,
  `BranchContact` varchar(155) DEFAULT NULL,
  `BranchEmail` varchar(155) DEFAULT NULL,
  `Website` varchar(155) DEFAULT NULL,
  `BranchAddress` longtext DEFAULT NULL,
  `POBox` varchar(155) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`BranchID`, `BranchCode`, `BranchName`, `BranchLogo`, `BranchContact`, `BranchEmail`, `Website`, `BranchAddress`, `POBox`) VALUES
(1, 'EITS', 'EITS', NULL, '+971-43303554', NULL, NULL, NULL, '#14019');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name`, `location`, `tel`, `created_at`, `updated_at`) VALUES
(1, 'Falak Travel and Tourism LLC', 'Al Ameed Plaza Al Qouz 4', '+9715555751344', '2024-07-13 18:04:28', '2024-07-13 18:04:28');

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Test Campaign', '2024-02-15 14:30:01', '2024-04-21 06:57:13'),
(3, 'tes222', '2024-02-21 15:33:01', '2024-04-17 13:51:34'),
(4, 'asdsad', '2024-02-21 15:33:11', '2024-02-21 15:33:11'),
(7, 'office april 2024', '2024-04-23 08:19:23', '2024-04-23 08:19:23'),
(8, 'may-2024', '2024-05-11 04:11:47', '2024-05-11 04:11:47');

-- --------------------------------------------------------

--
-- Table structure for table `challan_type`
--

CREATE TABLE `challan_type` (
  `ChallanTypeID` int(8) NOT NULL,
  `ChallanTypeName` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `challan_type`
--

INSERT INTO `challan_type` (`ChallanTypeID`, `ChallanTypeName`) VALUES
(2, 'Supply of Goods'),
(3, 'Job Work'),
(4, 'Supply on Approval'),
(5, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `channel`
--

CREATE TABLE `channel` (
  `id` int(11) NOT NULL,
  `ChannelName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `channel`
--

INSERT INTO `channel` (`id`, `ChannelName`) VALUES
(1, 'WhatsApp'),
(2, 'Facebook'),
(3, 'Instagram'),
(4, 'Google'),
(5, 'Website'),
(6, 'TitTok'),
(7, 'TitTok');

-- --------------------------------------------------------

--
-- Table structure for table `chartofaccount`
--

CREATE TABLE `chartofaccount` (
  `ChartOfAccountID` int(12) NOT NULL,
  `CODE` varchar(15) DEFAULT NULL,
  `ChartOfAccountName` varchar(75) DEFAULT NULL,
  `OpenDebit` int(12) DEFAULT NULL,
  `OpenCredit` int(12) DEFAULT NULL,
  `L1` int(10) DEFAULT NULL,
  `L2` int(10) DEFAULT NULL,
  `L3` int(10) DEFAULT NULL,
  `Category` varchar(55) DEFAULT NULL,
  `Level` int(5) DEFAULT NULL,
  `Status` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `chartofaccount`
--

INSERT INTO `chartofaccount` (`ChartOfAccountID`, `CODE`, `ChartOfAccountName`, `OpenDebit`, `OpenCredit`, `L1`, `L2`, `L3`, `Category`, `Level`, `Status`) VALUES
(100000, 'A', 'ASSETS', NULL, NULL, 100000, 100000, 100000, NULL, 1, NULL),
(110000, 'A', 'CURRENT ASSETS', NULL, NULL, 100000, 110000, 110000, NULL, 2, NULL),
(110100, 'A', 'CASH Account', NULL, NULL, 100000, 110000, 110100, NULL, 3, NULL),
(110101, 'A', 'CASH IN HAND', NULL, NULL, 100000, 110000, 110100, 'CASH', 3, NULL),
(110200, 'A', 'BANK DEPOSITS', NULL, NULL, 100000, 110000, 110200, NULL, 3, NULL),
(110201, 'A', 'ENBD BANK', NULL, NULL, 100000, 110000, 110200, 'BANK', 3, NULL),
(110202, 'A', 'ADCB BANK', NULL, NULL, 100000, 110000, 110200, 'BANK', 3, NULL),
(110203, 'A', 'NOMOD', NULL, NULL, 100000, 110000, 110200, 'BANK', 3, NULL),
(110204, 'A', 'TABBY', NULL, NULL, 100000, 110000, 110200, 'BANK', 3, NULL),
(110250, 'A', 'Credit Card ACCOUNT.', NULL, NULL, 100000, 110000, 110200, '0', 3, NULL),
(110300, 'A', 'Sidra Iqbal', NULL, NULL, 100000, 110000, 110200, NULL, 3, NULL),
(110400, 'A', 'A/C RECEIVABLE.', NULL, NULL, 100000, 110000, 110400, 'A/R', 3, NULL),
(110401, 'A', 'PARTY A/C.', NULL, NULL, 100000, 110000, 110400, NULL, 3, NULL),
(110402, 'A', 'OTHER RECEIVABLES...', NULL, NULL, 100000, 110000, 110400, '0', 3, NULL),
(110420, 'A', 'STAFF ADVANCES.', NULL, NULL, 100000, 110000, 110400, NULL, 3, NULL),
(110430, 'A', 'NOOR AL FALAK', NULL, NULL, 100000, 110000, 110400, '0', 3, NULL),
(110490, 'A', 'BAD DEBTS', NULL, NULL, 100000, 110000, 110400, NULL, 3, NULL),
(110500, 'A', 'INVENTORY', NULL, NULL, 100000, 110000, 110500, NULL, 3, NULL),
(110501, 'A', 'STOCK IN HAND', NULL, NULL, 100000, 110000, 110500, NULL, 3, NULL),
(110600, 'A', 'MISC. ADJUSTMENTS', NULL, NULL, 100000, 110000, 110600, NULL, 3, NULL),
(110601, 'A', 'Security Deposit..', NULL, NULL, 100000, 110000, 110601, '0', 3, NULL),
(110602, 'A', 'Petty Cash Cordinator', NULL, NULL, 100000, 110000, 110602, 'CASH', 3, NULL),
(110603, 'A', 'Pettycash - sales', NULL, NULL, 100000, 110000, 110603, 'BANK', 3, NULL),
(110604, 'A', 'Asim UBL Bank PK', NULL, NULL, 100000, 110000, 110604, 'BANK', 3, NULL),
(110605, 'A', 'TAMARA', NULL, NULL, 100000, 110000, 110605, 'BANK', 3, NULL),
(110607, 'A', 'Botim Bank', NULL, NULL, 100000, 110000, 110607, 'BANK', 3, NULL),
(120000, 'A', 'FIXED ASSETS', NULL, NULL, 100000, 120000, 120000, NULL, 2, NULL),
(120100, 'A', 'FIXED ASSETS', NULL, NULL, 100000, 120000, 120100, NULL, 3, NULL),
(120125, 'A', 'VEHICLES', NULL, NULL, 100000, 120000, 120100, NULL, 3, NULL),
(120127, 'A', 'PREMISES(SHOP)', NULL, NULL, 100000, 120000, 120100, NULL, 3, NULL),
(130000, 'A', 'OTHER ASSETS', NULL, NULL, 100000, 130000, 130000, NULL, 2, NULL),
(130100, 'A', 'PREPAID EXPENSES', NULL, NULL, 100000, 130000, 130100, NULL, 3, NULL),
(130200, 'A', 'LONG TERM INVESTMENTS', NULL, NULL, 100000, 130000, 130200, NULL, 3, NULL),
(140000, 'A', 'DEFERRED ASSETS', NULL, NULL, 100000, 140000, 140000, NULL, 2, NULL),
(140100, 'A', 'DEFERRED ASSETS', NULL, NULL, 100000, 140000, 140100, NULL, 3, NULL),
(140200, 'A', 'DEPOSITS', NULL, NULL, 100000, 140000, 140200, NULL, 3, NULL),
(140300, 'A', 'LEASEHOLD IMPROV.NET', NULL, NULL, 100000, 140000, 140300, NULL, 3, NULL),
(150000, 'A', 'PREPAID EXPENSE', NULL, NULL, 100000, 150000, 150000, '0', 2, NULL),
(150002, 'A', 'PRO Anne', NULL, NULL, 100000, 150000, 150002, '0', 3, NULL),
(200000, 'L', 'LIABILITIES', NULL, NULL, 200000, 200000, 200000, NULL, 1, NULL),
(210000, 'L', 'ACCOUNTS PAYABLE', NULL, NULL, 200000, 210000, 210000, NULL, 2, NULL),
(210100, 'L', 'A/C PAYABLE', NULL, NULL, 200000, 210000, 210100, 'A/P', 3, NULL),
(210101, 'L', 'ADVANCE PAYMENT', NULL, NULL, 200000, 210000, 210100, NULL, 3, NULL),
(210102, 'L', 'OTHER PAYABLES', NULL, NULL, 200000, 210000, 210100, NULL, 3, NULL),
(210103, 'L', 'BALANCE ADJUSTMENT', NULL, NULL, 200000, 210000, 210100, NULL, 3, NULL),
(210300, 'L', 'TAX PAYABLES...', NULL, NULL, 200000, 210000, 210300, '0', 3, NULL),
(210301, 'L', 'Telecom Payable', NULL, NULL, 200000, 210000, 210300, '0', 3, NULL),
(210302, 'L', 'MARKETING COMMISSION PAYABLE.', NULL, NULL, 200000, 210000, 210300, NULL, 3, NULL),
(210303, 'L', 'TAKAFAL PAYABLE.', NULL, NULL, 200000, 210000, 210300, NULL, 3, NULL),
(210304, 'L', 'Payable to Asim Jan', NULL, NULL, 200000, 210000, 210304, '0', 3, NULL),
(210305, 'L', 'Payable to Babar', NULL, NULL, 200000, 210000, 210305, '0', 3, NULL),
(210306, 'L', 'Utilities Payable', NULL, NULL, 200000, 210000, 210306, '0', 3, NULL),
(210307, 'L', 'PDC Payable', NULL, NULL, 200000, 210000, 210307, '0', 3, NULL),
(210308, 'L', 'Rent Payable', NULL, NULL, 200000, 210000, 210308, '0', 3, NULL),
(210309, 'L', 'Friends Mktg Mngt LLC', NULL, NULL, 200000, 210000, 210309, '0', 3, NULL),
(210310, 'L', 'Salary Payable', NULL, NULL, 200000, 210000, 210310, '0', 3, NULL),
(210311, 'L', 'GACB', NULL, NULL, 200000, 210000, 210311, '0', 3, NULL),
(210312, 'L', 'Annual Leave Payable', NULL, NULL, 200000, 210000, 210312, '0', 3, NULL),
(210313, 'L', 'Gratuity/ End of Service Payable', NULL, NULL, 200000, 210000, 210313, '0', 3, NULL),
(210314, 'L', 'Ticket Payable', NULL, NULL, 200000, 210000, 210314, '0', 3, NULL),
(210315, 'L', 'Accrued Payable', NULL, NULL, 200000, 210000, 210315, '0', 3, NULL),
(210316, 'L', 'Golden Pearl', NULL, NULL, 200000, 210000, 210316, '0', 3, NULL),
(210317, 'L', 'Payable to Kaleem', NULL, NULL, 200000, 210000, 210317, '0', 3, NULL),
(210318, 'L', 'Bank Charges Recovery', NULL, NULL, 200000, 210000, 210318, '0', 3, NULL),
(220000, 'L', 'SECURITIES', NULL, NULL, 200000, 220000, 220000, NULL, 2, NULL),
(220100, 'L', 'SECURITY DESPOITS', NULL, NULL, 200000, 220000, 220100, '0', 3, NULL),
(300000, 'C', 'STOCKHOLDERS EQUITY', NULL, NULL, 300000, 300000, 300000, NULL, 1, NULL),
(310000, 'C', 'STOCKHOLDERS EQUITY', NULL, NULL, 300000, 310000, 310000, NULL, 2, NULL),
(310100, 'C', 'CAPITAL STOCK.', NULL, NULL, 300000, 310000, 310100, NULL, 3, NULL),
(310101, 'C', 'CAPITAL A/C.', NULL, NULL, 300000, 310000, 310100, NULL, 3, NULL),
(310102, 'C', 'PROFIT AND LOSS A/C.', NULL, NULL, 300000, 310000, 310100, NULL, 3, NULL),
(310103, 'C', 'CURRENT PERIOD PROF/LOSS.', NULL, NULL, 300000, 310000, 310100, NULL, 3, NULL),
(310104, 'C', 'MUHAMMAD ASIM JAN', NULL, NULL, 300000, 310000, 310100, NULL, 3, NULL),
(310105, 'C', 'MUHAMMAD FAISAL', NULL, NULL, 300000, 310000, 310100, NULL, 3, NULL),
(320000, 'C', 'CAPITAL WITHDRAWALS', NULL, NULL, 300000, 320000, 320000, NULL, 2, NULL),
(320100, 'C', 'CAPITAL WITHDRAWALS', NULL, NULL, 300000, 320000, 320100, NULL, 3, NULL),
(330000, 'C', NULL, NULL, NULL, 300000, 330000, 330000, NULL, 2, NULL),
(400000, 'R', 'REVENUES', NULL, NULL, 400000, 400000, 400000, NULL, 1, NULL),
(410000, 'R', 'SALES:-', NULL, NULL, 400000, 410000, 410000, NULL, 2, NULL),
(410100, 'R', 'SALES:-', NULL, NULL, 400000, 410000, 410100, NULL, 3, NULL),
(410101, 'R', 'COMMISSION.', NULL, NULL, 400000, 410000, 410100, NULL, 3, NULL),
(410150, 'R', 'SALE OF TICKET', NULL, NULL, 400000, 410000, 410100, NULL, 3, NULL),
(410151, 'R', 'INCOME FROM REPAIR', NULL, NULL, 400000, 410000, 410100, NULL, 3, NULL),
(410152, 'R', 'DISCOUNT RECEIVED', NULL, NULL, 400000, 410000, 410100, NULL, 3, NULL),
(410155, 'R', 'SALES DISCOUNTS', NULL, NULL, 400000, 410000, 410100, NULL, 3, NULL),
(410172, 'R', 'FREIGHT CHARGES', NULL, NULL, 400000, 410000, 410100, NULL, 3, NULL),
(410173, 'R', 'INCOME SALE COMMISSION.', NULL, NULL, 400000, 410000, 410100, NULL, 3, NULL),
(410175, 'R', 'SALE RETURNS.', NULL, NULL, 400000, 410000, 410100, NULL, 3, NULL),
(410180, 'R', 'SALE RETURN DISCOUNT.', NULL, NULL, 400000, 410000, 410100, NULL, 3, NULL),
(410185, 'R', 'SALE RETURN FREIGHT', NULL, NULL, 400000, 410000, 410100, NULL, 3, NULL),
(410200, 'R', 'OTHER INCOME', NULL, NULL, 400000, 410000, 410200, NULL, 3, NULL),
(410201, 'R', 'MISC. INCOME', NULL, NULL, 400000, 410000, 410200, NULL, 3, NULL),
(410205, 'R', 'OTHER SALES.', NULL, NULL, 400000, 410000, 410200, NULL, 3, NULL),
(410206, 'R', 'Bank Charges Recovery Income comes', NULL, NULL, 400000, 410000, 410206, '0', 3, NULL),
(420000, 'R', 'OTHER REVENUES', NULL, NULL, 400000, 420000, 420000, NULL, 2, NULL),
(420104, 'R', 'PENDING/TARGET INCOME', NULL, NULL, 400000, 420000, 420100, NULL, 3, NULL),
(420105, 'R', 'SERVICE CHARGES', NULL, NULL, 400000, 420000, 420100, NULL, 3, NULL),
(500000, 'E', 'TOTAL EXPENSES', NULL, NULL, 500000, 500000, 500000, NULL, 1, NULL),
(510000, 'E', 'COST OF GOODS SOLD.', NULL, NULL, 500000, 510000, 510000, NULL, 2, NULL),
(510100, 'E', 'MATERIAL INVENTORY', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510101, 'E', 'OPENING STOCK.', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510102, 'E', 'PURCHASES', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510103, 'E', 'PURCHASE OF TICKET', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510104, 'E', 'DISCOUNT ALLOWED', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510105, 'E', 'PURCHASE DISCOUNTS', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510107, 'E', 'PURCHASE LOADING', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510109, 'E', 'PURCHASE UNLOADING', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510110, 'E', 'PURCHASE RETURN.', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510117, 'E', 'ZAKAT ACCOUNT.', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510120, 'E', 'PURCHASES MISC. ADJ.', NULL, NULL, 500000, 510000, 510100, NULL, NULL, NULL),
(510122, 'E', 'PURCHASE BENDING', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510140, 'E', 'ADNAN PAY.', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510145, 'E', 'STOCK EXPENSES', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510200, 'E', 'PACKING MATERIAL EXPENS.', NULL, NULL, 500000, 510000, 510200, NULL, 3, NULL),
(510300, 'E', 'Whatsapp API', NULL, NULL, 500000, 510000, 510300, '0', 3, NULL),
(510400, 'E', 'MARKETING EXPENSES', NULL, NULL, 500000, 510000, 510400, NULL, 3, NULL),
(510441, 'E', 'MARKETING SALARIES', NULL, NULL, 500000, 510000, 510400, NULL, 3, NULL),
(510451, 'E', 'MARKETING PHONE/MOB EXP.', NULL, NULL, 500000, 510000, 510400, NULL, 3, NULL),
(510461, 'E', 'ENTERTAINMENT', NULL, NULL, 500000, 510000, 510400, NULL, 3, NULL),
(510462, 'E', 'Whatsapp Marketing', NULL, NULL, 500000, 510000, 510462, '0', 3, NULL),
(520000, 'E', 'GEN & ADMIN EXPENSES', NULL, NULL, 500000, 520000, 520000, NULL, 2, NULL),
(520100, 'E', ' PAYROLL EXPENSES', NULL, NULL, 500000, 520000, 520100, NULL, 3, NULL),
(520200, 'E', 'MAINTENANCE', NULL, NULL, 500000, 520000, 520200, NULL, 3, NULL),
(520201, 'E', 'VISA & OTHER DOCUMENTS EXPENSE', NULL, NULL, 500000, 520000, 520201, '0', 3, NULL),
(520202, 'E', 'STAFF INSURANCE', NULL, NULL, 500000, 520000, 520202, '0', 3, NULL),
(520203, 'E', 'Water & Electric Expense', NULL, NULL, 500000, 520000, 520203, '0', 3, NULL),
(520204, 'E', 'Annual Leave Expense', NULL, NULL, 500000, 520000, 520204, '0', 3, NULL),
(520205, 'E', 'Accrued Expense', NULL, NULL, 500000, 520000, 520205, '0', 3, NULL),
(520206, 'E', 'Gratuity/ End of Service', NULL, NULL, 500000, 520000, 520206, '0', 3, NULL),
(530000, 'E', 'ORGANISATION EXPENSE.', NULL, NULL, 500000, 530000, 530000, NULL, 2, NULL),
(530100, 'E', 'PAYROLL EXPENSES', NULL, NULL, 500000, 530000, 530100, NULL, 3, NULL),
(530106, 'E', 'JAYLINE SALARY', NULL, NULL, 500000, 530000, 530100, NULL, 3, NULL),
(530107, 'E', 'GM PAY:-', NULL, NULL, 500000, 530000, 530100, NULL, 3, NULL),
(530108, 'E', 'YASEEN SALARY', NULL, NULL, 500000, 530000, 530100, NULL, 3, NULL),
(530109, 'E', 'BABAR SALARY', NULL, NULL, 500000, 530000, 530100, NULL, 3, NULL),
(530200, 'E', 'ASSETS INSURANCE', NULL, NULL, 500000, 530000, 530200, NULL, 3, NULL),
(540000, 'E', 'REPAIR & MAINTENANCE', NULL, NULL, 500000, 540000, 540000, NULL, 2, NULL),
(540100, 'E', 'REPAIR & MAINTENANCE', NULL, NULL, 500000, 540000, 540100, NULL, 3, NULL),
(540110, 'E', 'R/M VEHICLE.', NULL, NULL, 500000, 540000, 540100, NULL, 3, NULL),
(540111, 'E', 'R/M FURNITURE & FIXTURE', NULL, NULL, 500000, 540000, 540100, NULL, 3, NULL),
(540112, 'E', 'R/M EQUIPMENT / COMPUTER', NULL, NULL, 500000, 540000, 540100, NULL, 3, NULL),
(540130, 'E', 'GIFT ACCOUNT.', NULL, NULL, 500000, 540000, 540100, NULL, 3, NULL),
(550000, 'E', 'OFFICE EXPENSES', NULL, NULL, 500000, 550000, 550000, NULL, 3, NULL),
(550100, 'E', 'OFFICE EXPENSES', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550110, 'E', 'PRINTING & STATIONARY', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550114, 'E', 'VEHICLE EXP.', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550115, 'E', 'LICENCE EXPENSE.', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550116, 'E', 'TELEPHONE BILLS', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550120, 'E', 'WATER BILLS', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550121, 'E', 'ELECTRIC BILL.', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550123, 'E', 'HOME EXPENSES', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550124, 'E', 'ROOM RENT.', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550125, 'E', 'TRAVELLING EXP.', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550126, 'E', 'TEA & FOOD EXPENSES', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550130, 'E', 'POL VEHICLE.', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550132, 'E', 'LEGAL & PROFESSIONAL', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550134, 'E', 'MISC. EXPENSES', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550136, 'E', 'CHARITY & DONATIONS', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550138, 'E', 'NEWS PAPERS', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550140, 'E', 'MEMBERSHIP FEE', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(560000, 'E', 'FINANCIAL EXPENSES', NULL, NULL, 500000, 560000, 560000, NULL, 2, NULL),
(560100, 'E', 'FINANCIAL EXPENSES', NULL, NULL, 500000, 560000, 560100, NULL, 3, NULL),
(560110, 'E', 'BANK CHARGES', NULL, NULL, 500000, 560000, 560100, NULL, 3, NULL),
(560111, 'E', 'Telecom Expense', NULL, NULL, 500000, 560000, 560100, '0', 3, NULL),
(570000, 'E', 'DEPRICIATION', NULL, NULL, 500000, 570000, 570000, NULL, 2, NULL),
(570100, 'E', 'DEPRICIATION', NULL, NULL, 500000, 570000, 570100, NULL, 3, NULL),
(580000, 'E', 'TAXES:-', NULL, NULL, 500000, 580000, 580000, NULL, 2, NULL),
(580100, 'E', 'TAXES:-', NULL, NULL, 500000, 580000, 580100, NULL, 3, NULL),
(580120, 'E', 'TAX PAYABLE', NULL, NULL, 500000, 580000, 580120, NULL, 3, NULL),
(580130, 'E', 'SALES TAX.', NULL, NULL, 500000, 580000, 580100, NULL, 3, NULL),
(580135, 'E', 'INCOME TAX.', NULL, NULL, 500000, 580000, 580100, NULL, 3, NULL),
(580140, 'E', 'PROFESSIONAL TAX (EXCISE)', NULL, NULL, 500000, 580000, 580100, NULL, 3, NULL),
(580145, 'E', 'TOLL TAX.', NULL, NULL, 500000, 580000, 580100, NULL, 3, NULL),
(590000, 'E', 'OTHER EXPENSES', NULL, NULL, 500000, 590000, 590000, NULL, 2, NULL),
(590101, 'E', 'OTHER EXPENSES..', NULL, NULL, 500000, 590000, 590100, '0', 3, NULL),
(590104, 'E', 'OFFICE EXPENSE..', NULL, NULL, 500000, 590000, 590100, '0', 3, NULL),
(590105, 'E', 'Office Rent Expense', NULL, NULL, 500000, 590000, 590100, '0', 3, NULL),
(590106, 'E', 'COMPUTER EXPENSES', NULL, NULL, 500000, 590000, 590100, NULL, 3, NULL),
(590107, 'E', 'BAD DEBTS ', NULL, NULL, 500000, 590000, 590100, NULL, 3, NULL),
(590108, 'E', 'CASH SHORT /EXCESS', NULL, NULL, 500000, 590000, 590100, NULL, 3, NULL),
(590109, 'E', 'PREVIOUS PERIOD P&L.', NULL, NULL, 500000, 590000, 590100, NULL, 3, NULL),
(590110, 'E', 'Casualty Loss', NULL, NULL, 500000, 590000, 590110, '0', 3, NULL),
(590111, 'E', 'Commission Expenses', NULL, NULL, 500000, 590000, 590111, '0', 3, NULL),
(590112, 'E', 'LOCAL PENSION GPSSA', NULL, NULL, 500000, 590000, 590112, '0', 3, NULL),
(590113, 'E', 'Video Editor EXP', NULL, NULL, 500000, 590000, 590113, '0', 3, NULL),
(600000, 'S', 'SUSPENSE', NULL, NULL, 600000, 600000, 600000, NULL, 1, NULL),
(610000, 'S', 'SUSPENSE', NULL, NULL, 600000, 610000, 610000, NULL, 2, NULL),
(610100, 'S', 'SUSPENSE', NULL, NULL, 600000, 610000, 610100, NULL, 3, NULL),
(610101, 'S', 'SUSPENSE', NULL, NULL, 600000, 610000, 610100, NULL, 3, NULL),
(610102, 'S', 'CLEARING ACCOUNT.', NULL, NULL, 600000, 610000, 610100, NULL, 3, NULL),
(610103, 'S', 'CHEQUE ACCOUNT.', NULL, NULL, 600000, 610000, 610100, NULL, 3, NULL),
(610104, 'S', 'EXCESS & SHORT ACCOUNT.', NULL, NULL, 600000, 610000, 610100, NULL, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `CompanyID` int(8) NOT NULL,
  `Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `Name2` varchar(255) DEFAULT NULL,
  `TRN` varchar(150) DEFAULT NULL COMMENT 'tax registration no',
  `Currency` varchar(3) DEFAULT NULL,
  `Mobile` varchar(75) DEFAULT NULL,
  `Contact` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Website` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Logo` varchar(255) DEFAULT NULL,
  `BackgroundLogo` varchar(255) DEFAULT NULL,
  `CreatedDate` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `UpdatedDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Signature` varchar(255) DEFAULT NULL,
  `DigitalSignature` varchar(255) DEFAULT NULL,
  `EstimateInvoiceTitle` varchar(150) DEFAULT NULL,
  `SaleInvoiceTitle` varchar(150) DEFAULT NULL,
  `DeliveryChallanTitle` varchar(150) DEFAULT NULL,
  `CreditNoteTitle` varchar(150) DEFAULT NULL,
  `PurchaseInvoiceTitle` varchar(150) DEFAULT NULL,
  `DebitNoteTitle` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`CompanyID`, `Name`, `Name2`, `TRN`, `Currency`, `Mobile`, `Contact`, `Email`, `Website`, `Address`, `Logo`, `BackgroundLogo`, `CreatedDate`, `UpdatedDate`, `Signature`, `DigitalSignature`, `EstimateInvoiceTitle`, `SaleInvoiceTitle`, `DeliveryChallanTitle`, `CreditNoteTitle`, `PurchaseInvoiceTitle`, `DebitNoteTitle`) VALUES
(1, 'FALAK TAVEL AND TOURISM LLC ', NULL, '100535182800003', 'AED', '+971 55 575 1344', '+971 4 880 7551', 'info@falaktravel.com', 'www.falaktravel.com', 'Shop #89 Al Ameed Plaza Alqouz 4,Dubai U.A.E', 'ft.png', 'blank.jpg', '2025-11-19 09:03:06', '2025-11-19 09:03:06', 'blank.jpg', '<h2><strong>Finance Director,</strong></h2>\r\n\r\n<p><strong>Kashif</strong></p>', 'Quotation', 'Sale Inoice by', 'Delivery Note', 'Credit Note', 'Purchase Bill', 'Debit Note');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_enName` varchar(100) NOT NULL DEFAULT '',
  `country_arName` varchar(100) NOT NULL DEFAULT '',
  `country_enNationality` varchar(100) NOT NULL DEFAULT '',
  `country_arNationality` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_enName`, `country_arName`, `country_enNationality`, `country_arNationality`) VALUES
(1, 'AF', 'Afghanistan', 'أفغانستان', 'Afghan', 'أفغانستاني'),
(2, 'AL', 'Albania', 'ألبانيا', 'Albanian', 'ألباني'),
(3, 'AX', 'Aland Islands', 'جزر آلاند', 'Aland Islander', 'آلاندي'),
(4, 'DZ', 'Algeria', 'الجزائر', 'Algerian', 'جزائري'),
(5, 'AS', 'American Samoa', 'ساموا-الأمريكي', 'American Samoan', 'أمريكي سامواني'),
(6, 'AD', 'Andorra', 'أندورا', 'Andorran', 'أندوري'),
(7, 'AO', 'Angola', 'أنغولا', 'Angolan', 'أنقولي'),
(8, 'AI', 'Anguilla', 'أنغويلا', 'Anguillan', 'أنغويلي'),
(9, 'AQ', 'Antarctica', 'أنتاركتيكا', 'Antarctican', 'أنتاركتيكي'),
(10, 'AG', 'Antigua and Barbuda', 'أنتيغوا وبربودا', 'Antiguan', 'بربودي'),
(11, 'AR', 'Argentina', 'الأرجنتين', 'Argentinian', 'أرجنتيني'),
(12, 'AM', 'Armenia', 'أرمينيا', 'Armenian', 'أرميني'),
(13, 'AW', 'Aruba', 'أروبه', 'Aruban', 'أوروبهيني'),
(14, 'AU', 'Australia', 'أستراليا', 'Australian', 'أسترالي'),
(15, 'AT', 'Austria', 'النمسا', 'Austrian', 'نمساوي'),
(16, 'AZ', 'Azerbaijan', 'أذربيجان', 'Azerbaijani', 'أذربيجاني'),
(17, 'BS', 'Bahamas', 'الباهاماس', 'Bahamian', 'باهاميسي'),
(18, 'BH', 'Bahrain', 'البحرين', 'Bahraini', 'بحريني'),
(19, 'BD', 'Bangladesh', 'بنغلاديش', 'Bangladeshi', 'بنغلاديشي'),
(20, 'BB', 'Barbados', 'بربادوس', 'Barbadian', 'بربادوسي'),
(21, 'BY', 'Belarus', 'روسيا البيضاء', 'Belarusian', 'روسي'),
(22, 'BE', 'Belgium', 'بلجيكا', 'Belgian', 'بلجيكي'),
(23, 'BZ', 'Belize', 'بيليز', 'Belizean', 'بيليزي'),
(24, 'BJ', 'Benin', 'بنين', 'Beninese', 'بنيني'),
(25, 'BL', 'Saint Barthelemy', 'سان بارتيلمي', 'Saint Barthelmian', 'سان بارتيلمي'),
(26, 'BM', 'Bermuda', 'جزر برمودا', 'Bermudan', 'برمودي'),
(27, 'BT', 'Bhutan', 'بوتان', 'Bhutanese', 'بوتاني'),
(28, 'BO', 'Bolivia', 'بوليفيا', 'Bolivian', 'بوليفي'),
(29, 'BA', 'Bosnia and Herzegovina', 'البوسنة و الهرسك', 'Bosnian / Herzegovinian', 'بوسني/هرسكي'),
(30, 'BW', 'Botswana', 'بوتسوانا', 'Botswanan', 'بوتسواني'),
(31, 'BV', 'Bouvet Island', 'جزيرة بوفيه', 'Bouvetian', 'بوفيهي'),
(32, 'BR', 'Brazil', 'البرازيل', 'Brazilian', 'برازيلي'),
(33, 'IO', 'British Indian Ocean Territory', 'إقليم المحيط الهندي البريطاني', 'British Indian Ocean Territory', 'إقليم المحيط الهندي البريطاني'),
(34, 'BN', 'Brunei Darussalam', 'بروني', 'Bruneian', 'بروني'),
(35, 'BG', 'Bulgaria', 'بلغاريا', 'Bulgarian', 'بلغاري'),
(36, 'BF', 'Burkina Faso', 'بوركينا فاسو', 'Burkinabe', 'بوركيني'),
(37, 'BI', 'Burundi', 'بوروندي', 'Burundian', 'بورونيدي'),
(38, 'KH', 'Cambodia', 'كمبوديا', 'Cambodian', 'كمبودي'),
(39, 'CM', 'Cameroon', 'كاميرون', 'Cameroonian', 'كاميروني'),
(40, 'CA', 'Canada', 'كندا', 'Canadian', 'كندي'),
(41, 'CV', 'Cape Verde', 'الرأس الأخضر', 'Cape Verdean', 'الرأس الأخضر'),
(42, 'KY', 'Cayman Islands', 'جزر كايمان', 'Caymanian', 'كايماني'),
(43, 'CF', 'Central African Republic', 'جمهورية أفريقيا الوسطى', 'Central African', 'أفريقي'),
(44, 'TD', 'Chad', 'تشاد', 'Chadian', 'تشادي'),
(45, 'CL', 'Chile', 'شيلي', 'Chilean', 'شيلي'),
(46, 'CN', 'China', 'الصين', 'Chinese', 'صيني'),
(47, 'CX', 'Christmas Island', 'جزيرة عيد الميلاد', 'Christmas Islander', 'جزيرة عيد الميلاد'),
(48, 'CC', 'Cocos (Keeling) Islands', 'جزر كوكوس', 'Cocos Islander', 'جزر كوكوس'),
(49, 'CO', 'Colombia', 'كولومبيا', 'Colombian', 'كولومبي'),
(50, 'KM', 'Comoros', 'جزر القمر', 'Comorian', 'جزر القمر'),
(51, 'CG', 'Congo', 'الكونغو', 'Congolese', 'كونغي'),
(52, 'CK', 'Cook Islands', 'جزر كوك', 'Cook Islander', 'جزر كوك'),
(53, 'CR', 'Costa Rica', 'كوستاريكا', 'Costa Rican', 'كوستاريكي'),
(54, 'HR', 'Croatia', 'كرواتيا', 'Croatian', 'كوراتي'),
(55, 'CU', 'Cuba', 'كوبا', 'Cuban', 'كوبي'),
(56, 'CY', 'Cyprus', 'قبرص', 'Cypriot', 'قبرصي'),
(57, 'CW', 'Curaçao', 'كوراساو', 'Curacian', 'كوراساوي'),
(58, 'CZ', 'Czech Republic', 'الجمهورية التشيكية', 'Czech', 'تشيكي'),
(59, 'DK', 'Denmark', 'الدانمارك', 'Danish', 'دنماركي'),
(60, 'DJ', 'Djibouti', 'جيبوتي', 'Djiboutian', 'جيبوتي'),
(61, 'DM', 'Dominica', 'دومينيكا', 'Dominican', 'دومينيكي'),
(62, 'DO', 'Dominican Republic', 'الجمهورية الدومينيكية', 'Dominican', 'دومينيكي'),
(63, 'EC', 'Ecuador', 'إكوادور', 'Ecuadorian', 'إكوادوري'),
(64, 'EG', 'Egypt', 'مصر', 'Egyptian', 'مصري'),
(65, 'SV', 'El Salvador', 'إلسلفادور', 'Salvadoran', 'سلفادوري'),
(66, 'GQ', 'Equatorial Guinea', 'غينيا الاستوائي', 'Equatorial Guinean', 'غيني'),
(67, 'ER', 'Eritrea', 'إريتريا', 'Eritrean', 'إريتيري'),
(68, 'EE', 'Estonia', 'استونيا', 'Estonian', 'استوني'),
(69, 'ET', 'Ethiopia', 'أثيوبيا', 'Ethiopian', 'أثيوبي'),
(70, 'FK', 'Falkland Islands (Malvinas)', 'جزر فوكلاند', 'Falkland Islander', 'فوكلاندي'),
(71, 'FO', 'Faroe Islands', 'جزر فارو', 'Faroese', 'جزر فارو'),
(72, 'FJ', 'Fiji', 'فيجي', 'Fijian', 'فيجي'),
(73, 'FI', 'Finland', 'فنلندا', 'Finnish', 'فنلندي'),
(74, 'FR', 'France', 'فرنسا', 'French', 'فرنسي'),
(75, 'GF', 'French Guiana', 'غويانا الفرنسية', 'French Guianese', 'غويانا الفرنسية'),
(76, 'PF', 'French Polynesia', 'بولينيزيا الفرنسية', 'French Polynesian', 'بولينيزيي'),
(77, 'TF', 'French Southern and Antarctic Lands', 'أراض فرنسية جنوبية وأنتارتيكية', 'French', 'أراض فرنسية جنوبية وأنتارتيكية'),
(78, 'GA', 'Gabon', 'الغابون', 'Gabonese', 'غابوني'),
(79, 'GM', 'Gambia', 'غامبيا', 'Gambian', 'غامبي'),
(80, 'GE', 'Georgia', 'جيورجيا', 'Georgian', 'جيورجي'),
(81, 'DE', 'Germany', 'ألمانيا', 'German', 'ألماني'),
(82, 'GH', 'Ghana', 'غانا', 'Ghanaian', 'غاني'),
(83, 'GI', 'Gibraltar', 'جبل طارق', 'Gibraltar', 'جبل طارق'),
(84, 'GG', 'Guernsey', 'غيرنزي', 'Guernsian', 'غيرنزي'),
(85, 'GR', 'Greece', 'اليونان', 'Greek', 'يوناني'),
(86, 'GL', 'Greenland', 'جرينلاند', 'Greenlandic', 'جرينلاندي'),
(87, 'GD', 'Grenada', 'غرينادا', 'Grenadian', 'غرينادي'),
(88, 'GP', 'Guadeloupe', 'جزر جوادلوب', 'Guadeloupe', 'جزر جوادلوب'),
(89, 'GU', 'Guam', 'جوام', 'Guamanian', 'جوامي'),
(90, 'GT', 'Guatemala', 'غواتيمال', 'Guatemalan', 'غواتيمالي'),
(91, 'GN', 'Guinea', 'غينيا', 'Guinean', 'غيني'),
(92, 'GW', 'Guinea-Bissau', 'غينيا-بيساو', 'Guinea-Bissauan', 'غيني'),
(93, 'GY', 'Guyana', 'غيانا', 'Guyanese', 'غياني'),
(94, 'HT', 'Haiti', 'هايتي', 'Haitian', 'هايتي'),
(95, 'HM', 'Heard and Mc Donald Islands', 'جزيرة هيرد وجزر ماكدونالد', 'Heard and Mc Donald Islanders', 'جزيرة هيرد وجزر ماكدونالد'),
(96, 'HN', 'Honduras', 'هندوراس', 'Honduran', 'هندوراسي'),
(97, 'HK', 'Hong Kong', 'هونغ كونغ', 'Hongkongese', 'هونغ كونغي'),
(98, 'HU', 'Hungary', 'المجر', 'Hungarian', 'مجري'),
(99, 'IS', 'Iceland', 'آيسلندا', 'Icelandic', 'آيسلندي'),
(100, 'IN', 'India', 'الهند', 'Indian', 'هندي'),
(101, 'IM', 'Isle of Man', 'جزيرة مان', 'Manx', 'ماني'),
(102, 'ID', 'Indonesia', 'أندونيسيا', 'Indonesian', 'أندونيسيي'),
(103, 'IR', 'Iran', 'إيران', 'Iranian', 'إيراني'),
(104, 'IQ', 'Iraq', 'العراق', 'Iraqi', 'عراقي'),
(105, 'IE', 'Ireland', 'إيرلندا', 'Irish', 'إيرلندي'),
(106, 'IL', 'Israel', 'إسرائيل', 'Israeli', 'إسرائيلي'),
(107, 'IT', 'Italy', 'إيطاليا', 'Italian', 'إيطالي'),
(108, 'CI', 'Ivory Coast', 'ساحل العاج', 'Ivory Coastian', 'ساحل العاج'),
(109, 'JE', 'Jersey', 'جيرزي', 'Jersian', 'جيرزي'),
(110, 'JM', 'Jamaica', 'جمايكا', 'Jamaican', 'جمايكي'),
(111, 'JP', 'Japan', 'اليابان', 'Japanese', 'ياباني'),
(112, 'JO', 'Jordan', 'الأردن', 'Jordanian', 'أردني'),
(113, 'KZ', 'Kazakhstan', 'كازاخستان', 'Kazakh', 'كازاخستاني'),
(114, 'KE', 'Kenya', 'كينيا', 'Kenyan', 'كيني'),
(115, 'KI', 'Kiribati', 'كيريباتي', 'I-Kiribati', 'كيريباتي'),
(116, 'KP', 'Korea(North Korea)', 'كوريا الشمالية', 'North Korean', 'كوري'),
(117, 'KR', 'Korea(South Korea)', 'كوريا الجنوبية', 'South Korean', 'كوري'),
(118, 'XK', 'Kosovo', 'كوسوفو', 'Kosovar', 'كوسيفي'),
(119, 'KW', 'Kuwait', 'الكويت', 'Kuwaiti', 'كويتي'),
(120, 'KG', 'Kyrgyzstan', 'قيرغيزستان', 'Kyrgyzstani', 'قيرغيزستاني'),
(121, 'LA', 'Lao PDR', 'لاوس', 'Laotian', 'لاوسي'),
(122, 'LV', 'Latvia', 'لاتفيا', 'Latvian', 'لاتيفي'),
(123, 'LB', 'Lebanon', 'لبنان', 'Lebanese', 'لبناني'),
(124, 'LS', 'Lesotho', 'ليسوتو', 'Basotho', 'ليوسيتي'),
(125, 'LR', 'Liberia', 'ليبيريا', 'Liberian', 'ليبيري'),
(126, 'LY', 'Libya', 'ليبيا', 'Libyan', 'ليبي'),
(127, 'LI', 'Liechtenstein', 'ليختنشتين', 'Liechtenstein', 'ليختنشتيني'),
(128, 'LT', 'Lithuania', 'لتوانيا', 'Lithuanian', 'لتوانيي'),
(129, 'LU', 'Luxembourg', 'لوكسمبورغ', 'Luxembourger', 'لوكسمبورغي'),
(130, 'LK', 'Sri Lanka', 'سريلانكا', 'Sri Lankian', 'سريلانكي'),
(131, 'MO', 'Macau', 'ماكاو', 'Macanese', 'ماكاوي'),
(132, 'MK', 'Macedonia', 'مقدونيا', 'Macedonian', 'مقدوني'),
(133, 'MG', 'Madagascar', 'مدغشقر', 'Malagasy', 'مدغشقري'),
(134, 'MW', 'Malawi', 'مالاوي', 'Malawian', 'مالاوي'),
(135, 'MY', 'Malaysia', 'ماليزيا', 'Malaysian', 'ماليزي'),
(136, 'MV', 'Maldives', 'المالديف', 'Maldivian', 'مالديفي'),
(137, 'ML', 'Mali', 'مالي', 'Malian', 'مالي'),
(138, 'MT', 'Malta', 'مالطا', 'Maltese', 'مالطي'),
(139, 'MH', 'Marshall Islands', 'جزر مارشال', 'Marshallese', 'مارشالي'),
(140, 'MQ', 'Martinique', 'مارتينيك', 'Martiniquais', 'مارتينيكي'),
(141, 'MR', 'Mauritania', 'موريتانيا', 'Mauritanian', 'موريتانيي'),
(142, 'MU', 'Mauritius', 'موريشيوس', 'Mauritian', 'موريشيوسي'),
(143, 'YT', 'Mayotte', 'مايوت', 'Mahoran', 'مايوتي'),
(144, 'MX', 'Mexico', 'المكسيك', 'Mexican', 'مكسيكي'),
(145, 'FM', 'Micronesia', 'مايكرونيزيا', 'Micronesian', 'مايكرونيزيي'),
(146, 'MD', 'Moldova', 'مولدافيا', 'Moldovan', 'مولديفي'),
(147, 'MC', 'Monaco', 'موناكو', 'Monacan', 'مونيكي'),
(148, 'MN', 'Mongolia', 'منغوليا', 'Mongolian', 'منغولي'),
(149, 'ME', 'Montenegro', 'الجبل الأسود', 'Montenegrin', 'الجبل الأسود'),
(150, 'MS', 'Montserrat', 'مونتسيرات', 'Montserratian', 'مونتسيراتي'),
(151, 'MA', 'Morocco', 'المغرب', 'Moroccan', 'مغربي'),
(152, 'MZ', 'Mozambique', 'موزمبيق', 'Mozambican', 'موزمبيقي'),
(153, 'MM', 'Myanmar', 'ميانمار', 'Myanmarian', 'ميانماري'),
(154, 'NA', 'Namibia', 'ناميبيا', 'Namibian', 'ناميبي'),
(155, 'NR', 'Nauru', 'نورو', 'Nauruan', 'نوري'),
(156, 'NP', 'Nepal', 'نيبال', 'Nepalese', 'نيبالي'),
(157, 'NL', 'Netherlands', 'هولندا', 'Dutch', 'هولندي'),
(158, 'AN', 'Netherlands Antilles', 'جزر الأنتيل الهولندي', 'Dutch Antilier', 'هولندي'),
(159, 'NC', 'New Caledonia', 'كاليدونيا الجديدة', 'New Caledonian', 'كاليدوني'),
(160, 'NZ', 'New Zealand', 'نيوزيلندا', 'New Zealander', 'نيوزيلندي'),
(161, 'NI', 'Nicaragua', 'نيكاراجوا', 'Nicaraguan', 'نيكاراجوي'),
(162, 'NE', 'Niger', 'النيجر', 'Nigerien', 'نيجيري'),
(163, 'NG', 'Nigeria', 'نيجيريا', 'Nigerian', 'نيجيري'),
(164, 'NU', 'Niue', 'ني', 'Niuean', 'ني'),
(165, 'NF', 'Norfolk Island', 'جزيرة نورفولك', 'Norfolk Islander', 'نورفوليكي'),
(166, 'MP', 'Northern Mariana Islands', 'جزر ماريانا الشمالية', 'Northern Marianan', 'ماريني'),
(167, 'NO', 'Norway', 'النرويج', 'Norwegian', 'نرويجي'),
(168, 'OM', 'Oman', 'عمان', 'Omani', 'عماني'),
(169, 'PK', 'Pakistan', 'باكستان', 'Pakistani', 'باكستاني'),
(170, 'PW', 'Palau', 'بالاو', 'Palauan', 'بالاوي'),
(171, 'PS', 'Palestine', 'فلسطين', 'Palestinian', 'فلسطيني'),
(172, 'PA', 'Panama', 'بنما', 'Panamanian', 'بنمي'),
(173, 'PG', 'Papua New Guinea', 'بابوا غينيا الجديدة', 'Papua New Guinean', 'بابوي'),
(174, 'PY', 'Paraguay', 'باراغواي', 'Paraguayan', 'بارغاوي'),
(175, 'PE', 'Peru', 'بيرو', 'Peruvian', 'بيري'),
(176, 'PH', 'Philippines', 'الفليبين', 'Filipino', 'فلبيني'),
(177, 'PN', 'Pitcairn', 'بيتكيرن', 'Pitcairn Islander', 'بيتكيرني'),
(178, 'PL', 'Poland', 'بولندا', 'Polish', 'بولندي'),
(179, 'PT', 'Portugal', 'البرتغال', 'Portuguese', 'برتغالي'),
(180, 'PR', 'Puerto Rico', 'بورتو ريكو', 'Puerto Rican', 'بورتي'),
(181, 'QA', 'Qatar', 'قطر', 'Qatari', 'قطري'),
(182, 'RE', 'Reunion Island', 'ريونيون', 'Reunionese', 'ريونيوني'),
(183, 'RO', 'Romania', 'رومانيا', 'Romanian', 'روماني'),
(184, 'RU', 'Russian', 'روسيا', 'Russian', 'روسي'),
(185, 'RW', 'Rwanda', 'رواندا', 'Rwandan', 'رواندا'),
(186, 'KN', 'Saint Kitts and Nevis', 'سانت كيتس ونيفس,', 'Kittitian/Nevisian', 'سانت كيتس ونيفس'),
(187, 'MF', 'Saint Martin (French part)', 'ساينت مارتن فرنسي', 'St. Martian(French)', 'ساينت مارتني فرنسي'),
(188, 'SX', 'Sint Maarten (Dutch part)', 'ساينت مارتن هولندي', 'St. Martian(Dutch)', 'ساينت مارتني هولندي'),
(189, 'LC', 'Saint Pierre and Miquelon', 'سان بيير وميكلون', 'St. Pierre and Miquelon', 'سان بيير وميكلوني'),
(190, 'VC', 'Saint Vincent and the Grenadines', 'سانت فنسنت وجزر غرينادين', 'Saint Vincent and the Grenadines', 'سانت فنسنت وجزر غرينادين'),
(191, 'WS', 'Samoa', 'ساموا', 'Samoan', 'ساموي'),
(192, 'SM', 'San Marino', 'سان مارينو', 'Sammarinese', 'ماريني'),
(193, 'ST', 'Sao Tome and Principe', 'ساو تومي وبرينسيبي', 'Sao Tomean', 'ساو تومي وبرينسيبي'),
(194, 'SA', 'Saudi Arabia', 'المملكة العربية السعودية', 'Saudi Arabian', 'سعودي'),
(195, 'SN', 'Senegal', 'السنغال', 'Senegalese', 'سنغالي'),
(196, 'RS', 'Serbia', 'صربيا', 'Serbian', 'صربي'),
(197, 'SC', 'Seychelles', 'سيشيل', 'Seychellois', 'سيشيلي'),
(198, 'SL', 'Sierra Leone', 'سيراليون', 'Sierra Leonean', 'سيراليوني'),
(199, 'SG', 'Singapore', 'سنغافورة', 'Singaporean', 'سنغافوري'),
(200, 'SK', 'Slovakia', 'سلوفاكيا', 'Slovak', 'سولفاكي'),
(201, 'SI', 'Slovenia', 'سلوفينيا', 'Slovenian', 'سولفيني'),
(202, 'SB', 'Solomon Islands', 'جزر سليمان', 'Solomon Island', 'جزر سليمان'),
(203, 'SO', 'Somalia', 'الصومال', 'Somali', 'صومالي'),
(204, 'ZA', 'South Africa', 'جنوب أفريقيا', 'South African', 'أفريقي'),
(205, 'GS', 'South Georgia and the South Sandwich', 'المنطقة القطبية الجنوبية', 'South Georgia and the South Sandwich', 'لمنطقة القطبية الجنوبية'),
(206, 'SS', 'South Sudan', 'السودان الجنوبي', 'South Sudanese', 'سوادني جنوبي'),
(207, 'ES', 'Spain', 'إسبانيا', 'Spanish', 'إسباني'),
(208, 'SH', 'Saint Helena', 'سانت هيلانة', 'St. Helenian', 'هيلاني'),
(209, 'SD', 'Sudan', 'السودان', 'Sudanese', 'سوداني'),
(210, 'SR', 'Suriname', 'سورينام', 'Surinamese', 'سورينامي'),
(211, 'SJ', 'Svalbard and Jan Mayen', 'سفالبارد ويان ماين', 'Svalbardian/Jan Mayenian', 'سفالبارد ويان ماين'),
(212, 'SZ', 'Swaziland', 'سوازيلند', 'Swazi', 'سوازيلندي'),
(213, 'SE', 'Sweden', 'السويد', 'Swedish', 'سويدي'),
(214, 'CH', 'Switzerland', 'سويسرا', 'Swiss', 'سويسري'),
(215, 'SY', 'Syria', 'سوريا', 'Syrian', 'سوري'),
(216, 'TW', 'Taiwan', 'تايوان', 'Taiwanese', 'تايواني'),
(217, 'TJ', 'Tajikistan', 'طاجيكستان', 'Tajikistani', 'طاجيكستاني'),
(218, 'TZ', 'Tanzania', 'تنزانيا', 'Tanzanian', 'تنزانيي'),
(219, 'TH', 'Thailand', 'تايلندا', 'Thai', 'تايلندي'),
(220, 'TL', 'Timor-Leste', 'تيمور الشرقية', 'Timor-Lestian', 'تيموري'),
(221, 'TG', 'Togo', 'توغو', 'Togolese', 'توغي'),
(222, 'TK', 'Tokelau', 'توكيلاو', 'Tokelaian', 'توكيلاوي'),
(223, 'TO', 'Tonga', 'تونغا', 'Tongan', 'تونغي'),
(224, 'TT', 'Trinidad and Tobago', 'ترينيداد وتوباغو', 'Trinidadian/Tobagonian', 'ترينيداد وتوباغو'),
(225, 'TN', 'Tunisia', 'تونس', 'Tunisian', 'تونسي'),
(226, 'TR', 'Turkey', 'تركيا', 'Turkish', 'تركي'),
(227, 'TM', 'Turkmenistan', 'تركمانستان', 'Turkmen', 'تركمانستاني'),
(228, 'TC', 'Turks and Caicos Islands', 'جزر توركس وكايكوس', 'Turks and Caicos Islands', 'جزر توركس وكايكوس'),
(229, 'TV', 'Tuvalu', 'توفالو', 'Tuvaluan', 'توفالي'),
(230, 'UG', 'Uganda', 'أوغندا', 'Ugandan', 'أوغندي'),
(231, 'UA', 'Ukraine', 'أوكرانيا', 'Ukrainian', 'أوكراني'),
(232, 'AE', 'United Arab Emirates', 'الإمارات العربية المتحدة', 'Emirati', 'إماراتي'),
(233, 'GB', 'United Kingdom', 'المملكة المتحدة', 'British', 'بريطاني'),
(234, 'US', 'United States', 'الولايات المتحدة', 'American', 'أمريكي'),
(235, 'UM', 'US Minor Outlying Islands', 'قائمة الولايات والمناطق الأمريكية', 'US Minor Outlying Islander', 'أمريكي'),
(236, 'UY', 'Uruguay', 'أورغواي', 'Uruguayan', 'أورغواي'),
(237, 'UZ', 'Uzbekistan', 'أوزباكستان', 'Uzbek', 'أوزباكستاني'),
(238, 'VU', 'Vanuatu', 'فانواتو', 'Vanuatuan', 'فانواتي'),
(239, 'VE', 'Venezuela', 'فنزويلا', 'Venezuelan', 'فنزويلي'),
(240, 'VN', 'Vietnam', 'فيتنام', 'Vietnamese', 'فيتنامي'),
(241, 'VI', 'Virgin Islands (U.S.)', 'الجزر العذراء الأمريكي', 'American Virgin Islander', 'أمريكي'),
(242, 'VA', 'Vatican City', 'فنزويلا', 'Vatican', 'فاتيكاني'),
(243, 'WF', 'Wallis and Futuna Islands', 'والس وفوتونا', 'Wallisian/Futunan', 'فوتوني'),
(244, 'EH', 'Western Sahara', 'الصحراء الغربية', 'Sahrawian', 'صحراوي'),
(245, 'YE', 'Yemen', 'اليمن', 'Yemeni', 'يمني'),
(246, 'ZM', 'Zambia', 'زامبيا', 'Zambian', 'زامبياني'),
(247, 'ZW', 'Zimbabwe', 'زمبابوي', 'Zimbabwean', 'زمبابوي');

-- --------------------------------------------------------

--
-- Table structure for table `estimate_detail`
--

CREATE TABLE `estimate_detail` (
  `EstimateDetailID` int(8) NOT NULL,
  `EstimateMasterID` int(8) NOT NULL,
  `EstimateNo` varchar(10) DEFAULT NULL,
  `EstimateDate` date DEFAULT NULL,
  `ItemID` int(8) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Qty` int(12) DEFAULT NULL,
  `Rate` double(12,2) DEFAULT NULL,
  `TaxPer` double(12,2) DEFAULT NULL,
  `Tax` double(12,2) DEFAULT NULL,
  `Discount` double(12,2) DEFAULT NULL,
  `DiscountType` double(12,2) DEFAULT NULL,
  `Gross` double(12,2) DEFAULT NULL,
  `Total` double(12,2) DEFAULT NULL,
  `DiscountAmountItem` double(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `estimate_master`
--

CREATE TABLE `estimate_master` (
  `EstimateMasterID` int(8) NOT NULL,
  `EstimateNo` varchar(10) DEFAULT NULL,
  `PartyID` int(8) DEFAULT NULL,
  `WalkinCustomerName` varchar(55) DEFAULT NULL,
  `PlaceOfSupply` varchar(25) DEFAULT NULL,
  `ReferenceNo` varchar(25) DEFAULT NULL,
  `EstimateDate` date DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `ExpiryDate` date DEFAULT NULL,
  `SubTotal` double(10,2) DEFAULT NULL,
  `TaxPer` double(10,2) DEFAULT NULL,
  `Tax` double(10,2) DEFAULT NULL,
  `TaxType` varchar(25) DEFAULT NULL,
  `Total` double(10,2) DEFAULT NULL,
  `DiscountPer` double(10,2) DEFAULT NULL,
  `Discount` double(10,2) DEFAULT NULL,
  `Shipping` double(10,2) DEFAULT NULL,
  `GrandTotal` double(10,2) DEFAULT NULL,
  `CustomerNotes` varchar(255) DEFAULT NULL,
  `DescriptionNotes` varchar(255) DEFAULT NULL,
  `TermAndCondition` varchar(255) DEFAULT NULL,
  `File` varchar(75) DEFAULT NULL,
  `UserID` int(8) DEFAULT NULL,
  `Subject` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_detail`
--

CREATE TABLE `expense_detail` (
  `ExpenseDetailID` int(8) NOT NULL,
  `ExpenseMasterID` int(8) DEFAULT NULL,
  `ChartOfAccountID` int(10) DEFAULT NULL,
  `Notes` varchar(255) DEFAULT NULL,
  `TaxPer` double(8,2) DEFAULT NULL,
  `Tax` double(8,2) DEFAULT NULL,
  `Amount` double(8,2) DEFAULT NULL,
  `AmountAfterTax` double(14,4) DEFAULT NULL,
  `Date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_master`
--

CREATE TABLE `expense_master` (
  `ExpenseMasterID` int(14) NOT NULL,
  `ExpenseNo` varchar(55) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `ChartOfAccountID` int(9) DEFAULT NULL,
  `SupplierID` int(8) DEFAULT NULL,
  `ReferenceNo` varchar(155) DEFAULT '',
  `SubTotal` double(14,4) DEFAULT NULL,
  `Tax` double(14,4) DEFAULT NULL,
  `GrantTotal` double(14,4) DEFAULT NULL,
  `Paid` double(8,2) DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Triggers `expense_master`
--
DELIMITER $$
CREATE TRIGGER `after delete expense` AFTER DELETE ON `expense_master` FOR EACH ROW begin

delete from expense_detail where ExpenseMasterID = old.ExpenseMasterID;
delete from journal where ExpenseMasterID = old.ExpenseMasterID;

end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_detail`
--

CREATE TABLE `invoice_detail` (
  `InvoiceDetailID` int(8) NOT NULL,
  `InvoiceMasterID` int(8) DEFAULT NULL,
  `ItemID` int(8) DEFAULT NULL,
  `SupplierID` int(8) DEFAULT NULL,
  `VisaType` varchar(35) DEFAULT NULL,
  `PaxName` varchar(35) DEFAULT NULL,
  `PaxContact` varchar(255) DEFAULT NULL,
  `Contact` varchar(255) DEFAULT NULL,
  `Passport` varchar(255) DEFAULT NULL,
  `Nationality` varchar(255) DEFAULT NULL,
  `TicketNo` varchar(255) DEFAULT NULL,
  `AirlineName` varchar(255) DEFAULT NULL,
  `DepartureDate` date DEFAULT NULL,
  `PickPoint` varchar(255) DEFAULT NULL,
  `RoomType` varchar(255) DEFAULT NULL,
  `PNR` varchar(35) DEFAULT NULL,
  `Sector` varchar(35) DEFAULT NULL,
  `UmrahFare` double(14,2) DEFAULT NULL,
  `Fare` double(8,2) DEFAULT NULL,
  `RefNo` varchar(55) DEFAULT NULL,
  `Taxable` double(8,2) DEFAULT NULL,
  `Service` double(8,2) DEFAULT NULL,
  `OPVAT` double(8,2) DEFAULT NULL,
  `IPVAT` double(8,2) DEFAULT NULL,
  `Discount` double(8,2) DEFAULT NULL,
  `Deduction` double(14,2) DEFAULT NULL,
  `Total` double(8,2) DEFAULT NULL,
  `Paid` double(14,2) DEFAULT NULL,
  `PaymentInBus` double(14,2) DEFAULT NULL,
  `PassportFile` varchar(255) DEFAULT NULL,
  `EmirateIDFileFront` varchar(255) DEFAULT NULL,
  `EmirateIDFileBack` varchar(255) DEFAULT NULL,
  `PictureFile` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `invoice_detail`
--

INSERT INTO `invoice_detail` (`InvoiceDetailID`, `InvoiceMasterID`, `ItemID`, `SupplierID`, `VisaType`, `PaxName`, `PaxContact`, `Contact`, `Passport`, `Nationality`, `TicketNo`, `AirlineName`, `DepartureDate`, `PickPoint`, `RoomType`, `PNR`, `Sector`, `UmrahFare`, `Fare`, `RefNo`, `Taxable`, `Service`, `OPVAT`, `IPVAT`, `Discount`, `Deduction`, `Total`, `Paid`, `PaymentInBus`, `PassportFile`, `EmirateIDFileFront`, `EmirateIDFileBack`, `PictureFile`) VALUES
(10, 1, 7, 1030, NULL, 'Habib', NULL, NULL, '123123123', NULL, NULL, '', '2025-12-05', NULL, NULL, 'ISL-KAS', '123', NULL, 1000.00, NULL, 9.52, 190.48, NULL, NULL, NULL, NULL, 1200.00, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 1, 7, 1030, NULL, 'Hamza', NULL, NULL, '23123', NULL, NULL, '', NULL, NULL, NULL, 'ISL-KAS', '3321', NULL, 1000.00, NULL, 9.52, 190.48, NULL, NULL, NULL, NULL, 1200.00, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_master`
--

CREATE TABLE `invoice_master` (
  `InvoiceMasterID` int(8) NOT NULL,
  `InvoiceTypeID` int(8) DEFAULT NULL,
  `LeadID` int(14) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `DueDate` date DEFAULT NULL,
  `PartyID` int(8) DEFAULT NULL,
  `UserID` int(8) DEFAULT NULL,
  `Source` varchar(255) DEFAULT NULL,
  `PaymentMode` varchar(25) DEFAULT NULL,
  `Voucher` varchar(15) DEFAULT NULL,
  `Note` varchar(255) DEFAULT NULL,
  `Total` int(8) DEFAULT NULL,
  `BankName` varchar(255) DEFAULT NULL,
  `Percentage` decimal(15,3) DEFAULT NULL,
  `BankCharges` decimal(15,3) DEFAULT NULL,
  `GrandTotal` decimal(15,3) DEFAULT NULL,
  `Paid` int(8) DEFAULT NULL,
  `Paid1` double(14,2) DEFAULT NULL,
  `Document` varchar(255) DEFAULT NULL,
  `Balance` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `invoice_master`
--

INSERT INTO `invoice_master` (`InvoiceMasterID`, `InvoiceTypeID`, `LeadID`, `Date`, `DueDate`, `PartyID`, `UserID`, `Source`, `PaymentMode`, `Voucher`, `Note`, `Total`, `BankName`, `Percentage`, `BankCharges`, `GrandTotal`, `Paid`, `Paid1`, `Document`, `Balance`) VALUES
(1, 1, NULL, '2025-12-05', '2025-12-05', 1, 4, NULL, NULL, NULL, NULL, 2400, 'Nomod', 8.330, 199.920, 2599.920, 0, NULL, NULL, 2600);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_type`
--

CREATE TABLE `invoice_type` (
  `InvoiceTypeID` int(8) NOT NULL,
  `InvoiceTypeCode` varchar(35) DEFAULT NULL,
  `InvoiceType` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `invoice_type`
--

INSERT INTO `invoice_type` (`InvoiceTypeID`, `InvoiceTypeCode`, `InvoiceType`) VALUES
(1, 'SI', 'Sales Invoice'),
(2, 'SR', 'Sales Refund'),
(3, 'UI', 'Umrah Invoice'),
(4, 'TI', 'Travel Invoice'),
(5, 'UR', 'Umrah Return'),
(6, 'TR', 'Travel Return');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `ItemID` int(8) NOT NULL,
  `ItemType` varchar(55) DEFAULT 'I',
  `ItemCode` varchar(5) DEFAULT NULL,
  `ItemName` varchar(55) DEFAULT NULL,
  `Taxable` varchar(10) DEFAULT NULL,
  `Percentage` double(8,2) DEFAULT NULL,
  `is_active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`ItemID`, `ItemType`, `ItemCode`, `ItemName`, `Taxable`, `Percentage`, `is_active`) VALUES
(7, 'I', 'AP', 'APPROVAL', 'Yes', 5.00, 1),
(8, 'I', 'CO', 'COVID TEST', 'Yes', 5.00, 1),
(9, 'I', 'V1', 'DUBAI VISA 1 MONTH', 'Yes', 5.00, 1),
(10, 'I', 'V2', 'DUBAI VISA 3 MONTHS', 'Yes', 5.00, 1),
(11, 'I', 'V3', 'DUBAI VISA 30 DAYS INSIDE', 'Yes', 5.00, 1),
(12, 'I', 'V4', 'DUBAI VISA 90 DAYS INSIDE', 'Yes', 5.00, 1),
(13, 'I', 'FR', 'FREELANCE', 'No', NULL, 1),
(14, 'I', 'H', 'HOTEL BOOKING', 'Yes', 5.00, 1),
(15, 'I', 'KS', 'KSA', 'Yes', 5.00, 1),
(16, 'I', 'S', 'SAFARI', 'Yes', 5.00, 1),
(17, 'I', 'T', 'TICKET BOOKING', 'Yes', 5.00, 1),
(18, 'I', 'V', 'VISA 30 DAYS', 'Yes', 5.00, 0),
(19, 'U', 'UB', 'UMRAH', 'Yes', 5.00, 1),
(20, 'I', 'V5', 'VISIT VISA 2 MONTH OUTSIDE', 'Yes', 5.00, 1),
(21, 'I', 'V6', 'VISIT VISA 2 MONTHS INSIDE', 'Yes', 5.00, 1),
(24, 'I', 's1', 'SAUDI MULTI ENTRY VISA', 'Yes', 5.00, 1),
(25, 'I', 'GT', 'GEORGIA TRIP', 'Yes', 5.00, 1),
(26, 'I', 'T V', 'TRANSIT VISA', 'Yes', 5.00, 1),
(27, 'I', 'SK', 'SKYDIVING', 'Yes', 5.00, 1),
(28, 'I', 'DF', 'DUBAI FRAME', 'Yes', 5.00, 1),
(29, 'I', '101', 'CAR BOOKING', 'Yes', 5.00, 1),
(30, 'U', 'UA', 'UMRAH BY AIR', 'Yes', 5.00, 1),
(31, 'I', '1022', 'Saudi Bus Ticket', 'Yes', NULL, 1),
(32, 'I', '2000', 'Dependant Visa Application', 'No', NULL, 1),
(33, 'I', '2001', 'Indian E-Visa', 'Yes', 5.00, 1),
(34, 'I', 'SD', 'Security Desposite', 'Yes', 0.00, 1),
(35, 'I', 'UV001', 'UMRAH VISA ONLY', 'Yes', 5.00, 1),
(36, 'I', 'BC', 'Bank Charges', 'Yes', 0.00, 1),
(37, 'I', 'SV', 'Schengen Visa Application', 'Yes', NULL, 1),
(38, 'I', 'TC', 'TICKET MODIFICATION', 'Yes', 5.00, 1),
(39, 'I', 'BKV', 'E-VISA AZERBAIJAN', 'Yes', 5.00, 1),
(40, 'I', 'SBV', 'Serbia Application', 'No', NULL, 1),
(41, 'I', '5V IC', '5 year multi entry visa ICP', 'Yes', 5.00, 1),
(42, 'I', 'BL V', 'Belarus work Permit', 'No', NULL, 1),
(43, 'I', 'MU', 'MUSANDAM DAY TRIP', 'Yes', 5.00, 1),
(44, 'I', 'thai ', 'Thailand E Visa', 'Yes', NULL, 1),
(45, 'I', 'TV', 'Travel Voucher', 'Yes', 5.00, NULL),
(46, 'I', 'EV001', 'AZERBAIJAN E-VISA', 'Yes', NULL, NULL),
(47, 'I', 'KSATV', 'SAUDI TOURIST VISA', 'Yes', 5.00, NULL),
(48, 'I', 'CHINA', 'CHINA VISIT VISA', 'Yes', 5.00, NULL),
(49, 'I', '1001', 'Oman Visit Visa', 'No', NULL, NULL),
(50, 'I', 'HTT', 'HRMAIN TRAIN TICKET', 'No', NULL, NULL),
(51, 'I', 'FUMBU', 'FAIMLY BOOKING', 'Yes', 5.00, NULL),
(52, 'I', 'BAKU0', 'BAKU 3 NIGHTS WITHOUT TICKETS', 'Yes', 5.00, NULL),
(53, 'I', 'SDV', 'Security Deposit', 'Yes', 5.00, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `journal`
--

CREATE TABLE `journal` (
  `JournalID` int(10) NOT NULL,
  `VHNO` varchar(15) DEFAULT NULL,
  `JournalType` varchar(10) DEFAULT NULL,
  `ChartOfAccountID` int(8) DEFAULT NULL,
  `PartyID` int(8) DEFAULT NULL,
  `SupplierID` int(8) DEFAULT NULL,
  `VoucherMstID` int(12) DEFAULT NULL,
  `PettyMstID` int(12) DEFAULT NULL,
  `ExpenseMasterID` int(12) DEFAULT NULL,
  `InvoiceMasterID` int(12) DEFAULT NULL,
  `Narration` varchar(255) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Dr` double(10,2) DEFAULT NULL,
  `Cr` double(10,2) DEFAULT NULL,
  `Trace` int(10) NOT NULL,
  `BankReconcile` varchar(150) DEFAULT NULL,
  `UserID` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `journal`
--

INSERT INTO `journal` (`JournalID`, `VHNO`, `JournalType`, `ChartOfAccountID`, `PartyID`, `SupplierID`, `VoucherMstID`, `PettyMstID`, `ExpenseMasterID`, `InvoiceMasterID`, `Narration`, `Date`, `Dr`, `Cr`, `Trace`, `BankReconcile`, `UserID`, `created_at`) VALUES
(69, 'SI1', 'SI', 110400, 1, 1030, NULL, NULL, NULL, 1, 'Habib', '2025-12-05', 1200.00, NULL, 305, NULL, NULL, NULL),
(70, 'SI1', 'SI', 510103, 1, 1030, NULL, NULL, NULL, 1, 'Habib', '2025-12-05', NULL, 1000.00, 306, NULL, NULL, NULL),
(71, 'SI1', 'SI', 410101, 1, 1030, NULL, NULL, NULL, 1, 'Habib', '2025-12-05', NULL, 190.48, 307, NULL, NULL, NULL),
(72, 'SI1', 'SI', 510103, 1, 1030, NULL, NULL, NULL, 1, 'Habib', '2025-12-05', 1000.00, NULL, 308, NULL, NULL, NULL),
(73, 'SI1', 'SI', 210100, 1, 1030, NULL, NULL, NULL, 1, 'Habib', '2025-12-05', NULL, 1000.00, 309, NULL, NULL, NULL),
(74, 'SI1', 'SI', 210300, 1, 1030, NULL, NULL, NULL, 1, 'Habib', '2025-12-05', NULL, 9.52, 310, NULL, NULL, NULL),
(75, 'SI1', 'SI', 110400, 1, 1030, NULL, NULL, NULL, 1, 'Hamza', '2025-12-05', 1200.00, NULL, 305, NULL, NULL, NULL),
(76, 'SI1', 'SI', 510103, 1, 1030, NULL, NULL, NULL, 1, 'Hamza', '2025-12-05', NULL, 1000.00, 306, NULL, NULL, NULL),
(77, 'SI1', 'SI', 410101, 1, 1030, NULL, NULL, NULL, 1, 'Hamza', '2025-12-05', NULL, 190.48, 307, NULL, NULL, NULL),
(78, 'SI1', 'SI', 510103, 1, 1030, NULL, NULL, NULL, 1, 'Hamza', '2025-12-05', 1000.00, NULL, 308, NULL, NULL, NULL),
(79, 'SI1', 'SI', 210100, 1, 1030, NULL, NULL, NULL, 1, 'Hamza', '2025-12-05', NULL, 1000.00, 309, NULL, NULL, NULL),
(80, 'SI1', 'SI', 210300, 1, 1030, NULL, NULL, NULL, 1, 'Hamza', '2025-12-05', NULL, 9.52, 310, NULL, NULL, NULL),
(81, 'SI1', 'SI', 110400, 1, NULL, NULL, NULL, NULL, 1, 'Bank Charges Applied from Nomod at rate of 8.33%', '2025-12-05', 199.92, NULL, 1203, NULL, NULL, NULL),
(82, 'SI1', 'SI', 210318, 1, NULL, NULL, NULL, NULL, 1, 'Bank Charges Applied from Nomod at rate of 8.33%', '2025-12-05', NULL, 199.92, 1204, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `partyid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `other_tel` varchar(255) DEFAULT NULL,
  `business_details` varchar(255) DEFAULT NULL,
  `service` varchar(255) DEFAULT NULL,
  `channel` varchar(255) DEFAULT NULL,
  `campaign_id` bigint(20) DEFAULT NULL,
  `branch_id` bigint(20) DEFAULT NULL,
  `agent_id` bigint(20) DEFAULT NULL,
  `service_id` bigint(20) DEFAULT NULL,
  `sub_service_id` bigint(20) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `amount` double(18,3) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Pending',
  `approved_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_activities`
--

CREATE TABLE `lead_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lead_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_details`
--

CREATE TABLE `lead_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lead_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `status_from` varchar(255) DEFAULT NULL,
  `status_to` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `follow_up_date` date DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `LogID` int(14) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `UserName` varchar(255) DEFAULT NULL,
  `Amount` double(14,2) DEFAULT NULL,
  `Date` timestamp NULL DEFAULT NULL,
  `Section` varchar(255) DEFAULT NULL,
  `VHNO` varchar(255) DEFAULT NULL,
  `Narration` varchar(255) DEFAULT NULL,
  `Trace` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`LogID`, `UserID`, `UserName`, `Amount`, `Date`, `Section`, `VHNO`, `Narration`, `Trace`) VALUES
(1, 4, 'Admin', 1200.00, '2025-12-05 05:18:47', 'Invoice Create', '1', 'Invoice Created', '101'),
(6, 4, 'Admin', 1200.00, '2025-12-05 05:21:25', 'Invoice updated', '1', 'Invoice updated, invoice detail item deleted as programming and journal enteries deleted except the payment rec from voucher against this invoice', '101'),
(7, 4, 'Admin', 2400.00, '2025-12-05 05:22:16', 'Invoice updated', '1', 'Invoice updated, invoice detail item deleted as programming and journal enteries deleted except the payment rec from voucher against this invoice', '101'),
(8, 4, 'Admin', 2400.00, '2025-12-05 05:22:28', 'Invoice updated', '1', 'Invoice updated, invoice detail item deleted as programming and journal enteries deleted except the payment rec from voucher against this invoice', '101');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_10_10_143303_create_attendances_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `party`
--

CREATE TABLE `party` (
  `PartyID` int(8) NOT NULL,
  `SupplierCatID` int(8) DEFAULT NULL,
  `Category` varchar(255) DEFAULT NULL,
  `PartyName` varchar(255) DEFAULT NULL,
  `TRN` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  `Mobile` varchar(255) DEFAULT NULL,
  `Website` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Active` varchar(3) DEFAULT NULL,
  `InvoiceDueDays` int(10) DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `party`
--

INSERT INTO `party` (`PartyID`, `SupplierCatID`, `Category`, `PartyName`, `TRN`, `Address`, `Phone`, `Mobile`, `Website`, `Email`, `Active`, `InvoiceDueDays`, `eDate`) VALUES
(1, NULL, NULL, 'Habib', NULL, NULL, '1234', NULL, NULL, NULL, NULL, NULL, '2025-12-05 10:18:44'),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-05 10:18:47');

-- --------------------------------------------------------

--
-- Table structure for table `pettycash_detail`
--

CREATE TABLE `pettycash_detail` (
  `PettyDetID` int(10) NOT NULL,
  `PettyMstID` int(10) DEFAULT NULL,
  `PettyVoucher` varchar(12) DEFAULT NULL,
  `SupplierID` int(8) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `ChOfAcc` int(8) DEFAULT NULL,
  `Narration` varchar(255) DEFAULT NULL,
  `Invoice` varchar(35) DEFAULT NULL,
  `RefNo` varchar(35) DEFAULT NULL,
  `Debit` double(10,2) DEFAULT NULL,
  `FromChOfAcc` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pettycash_detail`
--

INSERT INTO `pettycash_detail` (`PettyDetID`, `PettyMstID`, `PettyVoucher`, `SupplierID`, `Date`, `ChOfAcc`, `Narration`, `Invoice`, `RefNo`, `Debit`, `FromChOfAcc`) VALUES
(5, 2, 'PC22050001', NULL, '2022-05-11', 110100, '11', NULL, NULL, 1.00, 110100);

--
-- Triggers `pettycash_detail`
--
DELIMITER $$
CREATE TRIGGER `delete` AFTER DELETE ON `pettycash_detail` FOR EACH ROW begin
delete from journal where PettyMstID = old.PettyMstID;
end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `journal` AFTER INSERT ON `pettycash_detail` FOR EACH ROW begin
declare chart_name varchar(25);
select ChartOfAccountName into chart_name from chartofaccount where ChartOfAccountID=new.ChOfAcc;

INSERT INTO journal (VHNO,JournalType,ChartOfAccountID,PettyMstID,Narration,Date,Cr)
values (new.PettyVoucher,SUBSTRING(new.PettyVoucher,1,2),new.FromChOfAcc,new.PettyMstID,concat(new.Narration,' (', chart_name,') '),new.Date,new.Debit);


INSERT INTO journal (VHNO,JournalType,ChartOfAccountID,PettyMstID,Narration,Date,Dr)
values (new.PettyVoucher,SUBSTRING(new.PettyVoucher,1,2),new.ChOfAcc,new.PettyMstID,new.Narration,new.Date,new.Debit);


end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `pettycash_master`
--

CREATE TABLE `pettycash_master` (
  `PettyMstID` int(12) NOT NULL,
  `PettyVoucher` varchar(11) DEFAULT NULL,
  `ChOfAcc` int(8) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Narration` varchar(255) DEFAULT NULL,
  `Credit` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pettycash_master`
--

INSERT INTO `pettycash_master` (`PettyMstID`, `PettyVoucher`, `ChOfAcc`, `Date`, `Narration`, `Credit`) VALUES
(2, 'PC22050001', 110100, '2022-05-11', NULL, 1.00);

-- --------------------------------------------------------

--
-- Table structure for table `qualified_statuses`
--

CREATE TABLE `qualified_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qualified_statuses`
--

INSERT INTO `qualified_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Not Contacted', '2024-01-06 03:00:16', '2024-01-06 03:02:46'),
(3, 'Contacted', '2024-01-06 03:02:53', '2024-01-06 03:02:53'),
(4, 'Did Not Respond', '2024-01-06 03:03:14', '2024-01-06 03:03:14'),
(5, 'Future Prospect', '2024-01-06 03:03:24', '2024-01-06 03:03:24'),
(6, 'Pending', '2024-01-06 03:03:39', '2024-04-30 22:32:43'),
(7, 'Closed Won', '2024-01-06 03:03:47', '2024-04-30 22:32:53'),
(8, 'Closed Lost', '2024-01-06 03:03:55', '2024-04-30 22:33:00');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `RoleID` int(8) NOT NULL,
  `Table` varchar(55) DEFAULT NULL,
  `Action` varchar(55) DEFAULT NULL,
  `Allow` varchar(1) DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`RoleID`, `Table`, `Action`, `Allow`) VALUES
(1, 'Invoice', 'List', 'Y'),
(12, 'Invoice', 'Create', 'Y'),
(13, 'Invoice', 'Update', 'Y'),
(14, 'Invoice', 'Delete', 'Y'),
(15, 'Invoice', 'View', 'Y'),
(16, 'Invoice', 'PDF', 'Y'),
(63, 'Voucher', 'List', 'Y'),
(64, 'Voucher', 'Create', 'Y'),
(65, 'Voucher', 'Update', 'Y'),
(66, 'Voucher', 'Delete', 'Y'),
(67, 'Voucher', 'View', 'Y'),
(68, 'Petty Cash', 'List', 'Y'),
(69, 'Petty Cash', 'Create', 'Y'),
(70, 'Petty Cash', 'Update', 'Y'),
(71, 'Petty Cash', 'Delete', 'Y'),
(72, 'Petty Cash', 'View', 'Y'),
(73, 'Adjustment Balance', 'Create', 'Y'),
(74, 'Chart of Account', 'List / Create', 'Y'),
(75, 'Chart of Account', 'Update', 'Y'),
(76, 'Chart of Account', 'Delete', 'Y'),
(77, 'Item/Inventory', 'List / Create', 'Y'),
(78, 'Item/Inventory', 'Update', 'Y'),
(79, 'Item/Inventory', 'Delete', 'Y'),
(80, 'Party / Customers', 'List / Create', 'Y'),
(81, 'Party / Customers', 'Update', 'Y'),
(82, 'Party / Customers', 'Delete', 'Y'),
(83, 'Supplier', 'List / Create', 'Y'),
(84, 'Supplier', 'Update', 'Y'),
(85, 'Supplier', 'Delete', 'Y'),
(86, 'User', 'List / Create', 'Y'),
(87, 'User', 'Update', 'Y'),
(88, 'User', 'Delete', 'Y'),
(89, 'User Rights', 'Assign', 'Y'),
(90, 'Party Ledger', 'View', 'Y'),
(91, 'Party Ledger', 'PDF', 'Y'),
(92, 'Party Balance', 'View', 'Y'),
(93, 'Party Balance', 'PDF', 'Y'),
(94, 'Yearly Report', 'View', 'Y'),
(95, 'Yearly Report', 'PDF', 'Y'),
(96, 'Ageing Report', 'View', 'Y'),
(97, 'Ageing Report', 'PDF', 'Y'),
(98, 'Party Analysis', 'View', 'Y'),
(99, 'Party Analysis', 'PDF', 'Y'),
(100, 'Party List', 'View', 'Y'),
(101, 'Party List', 'PDF', 'Y'),
(102, 'Outstanding Invoices', 'View', 'Y'),
(103, 'Outstanding Invoices', 'PDF', 'Y'),
(104, 'Supplier Ledger', 'View', 'Y'),
(105, 'Supplier Ledger', 'PDF', 'Y'),
(106, 'Supplier Balance', 'View', 'Y'),
(107, 'Supplier Balance', 'PDF', 'Y'),
(108, 'Sale Invoice', 'View', 'Y'),
(109, 'Sale Invoice', 'PDF', 'Y'),
(110, 'Ticket Register', 'View', 'Y'),
(111, 'Ticket Register', 'PDF', 'Y'),
(112, 'Airline Summary', 'View', 'Y'),
(113, 'Airline Summary', 'PDF', 'Y'),
(114, 'Sale Man Report', 'View', 'Y'),
(115, 'Sale Man Report', 'PDF', 'Y'),
(116, 'Tax Report', 'View', 'Y'),
(117, 'Tax Report', 'PDF', 'Y'),
(118, 'Sales Report', 'View', 'Y'),
(119, 'Sales Report', 'PDF', 'Y'),
(120, 'Voucher Report', 'View', 'Y'),
(121, 'Voucher Report', 'PDF', 'Y'),
(122, 'Cash Book', 'View', 'Y'),
(123, 'Cash Book', 'PDF', 'Y'),
(124, 'Day Book', 'View', 'Y'),
(125, 'Day Book', 'PDF', 'Y'),
(126, 'General Ledger', 'View', 'Y'),
(127, 'General Ledger', 'PDF', 'Y'),
(128, 'Trial Balance', 'View', 'Y'),
(129, 'Trial Balance', 'PDF', 'Y'),
(130, 'Trial with Activity', 'View', 'Y'),
(131, 'Trial with Activity', 'PDF', 'Y'),
(132, 'Yearly Summary', 'View', 'Y'),
(133, 'Yearly Summary', 'PDF', 'Y'),
(134, 'Profit & Loss ', 'View', 'Y'),
(135, 'Profit & Loss ', 'PDF', 'Y'),
(136, 'Balance Sheet', 'View', 'Y'),
(137, 'Balance Sheet', 'PDF', 'Y'),
(138, 'Invoice Summary', 'View', 'Y'),
(139, 'Invoice Summary', 'PDF', 'Y'),
(140, 'Party Wise Sale', 'View', 'Y'),
(141, 'Party Wise Sale', 'PDF', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `runtotaltestdata`
--

CREATE TABLE `runtotaltestdata` (
  `id` int(8) NOT NULL,
  `value` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `runtotaltestdata`
--

INSERT INTO `runtotaltestdata` (`id`, `value`) VALUES
(1, 1),
(2, 2),
(3, 4),
(4, 7),
(5, 9),
(6, 12),
(7, 13),
(8, 16),
(9, 22),
(10, 42),
(11, 57),
(12, 58),
(13, 59),
(14, 60);

-- --------------------------------------------------------

--
-- Table structure for table `saleman`
--

CREATE TABLE `saleman` (
  `SalemanID` int(8) NOT NULL,
  `SalemanName` varchar(35) DEFAULT NULL,
  `Mobile` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `saleman`
--

INSERT INTO `saleman` (`SalemanID`, `SalemanName`, `Mobile`, `Address`) VALUES
(1, 'Yasin', NULL, NULL),
(2, 'Kanwal', NULL, NULL),
(3, 'Ali Gohar', NULL, NULL),
(4, 'Babar', NULL, NULL),
(5, 'Sir Asim', NULL, NULL),
(6, 'Neena Shibu', '0522869428', 'dubai'),
(7, 'Ismail', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `branch_id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'A', 'Ticket Booking', '2024-07-13 18:04:55', '2024-08-02 17:36:50'),
(3, 1, 'U', 'Umrah By Bus', '2024-07-13 18:06:42', '2024-08-02 17:36:59'),
(4, 1, 'A', 'Hotel Booking', '2024-07-13 18:07:01', '2024-08-02 17:35:49'),
(5, 1, 'A', 'Visit Visa', '2024-08-02 17:35:24', '2024-08-02 17:35:24'),
(6, 1, 'A', 'Saudi Multi Entry Visa', '2024-08-02 17:35:40', '2024-08-02 17:35:40'),
(7, 1, 'A', 'A2A', '2024-08-02 17:36:11', '2024-08-02 17:36:11'),
(8, 1, 'A', 'Georgia Trip', '2024-08-02 17:36:31', '2024-08-02 17:36:31'),
(9, 1, 'U', 'Umrah By Air', '2024-08-02 17:36:43', '2024-08-02 17:36:43'),
(10, 1, 'A', 'Desert Safari', '2024-08-02 17:37:11', '2024-08-02 17:37:11');

-- --------------------------------------------------------

--
-- Table structure for table `staff_type`
--

CREATE TABLE `staff_type` (
  `StaffTypeID` int(8) NOT NULL,
  `StaffType` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `staff_type`
--

INSERT INTO `staff_type` (`StaffTypeID`, `StaffType`) VALUES
(4, 'Regular'),
(5, 'HR'),
(6, 'GM'),
(7, 'OM'),
(8, 'Inactive'),
(10, 'Admin'),
(11, 'Sales');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Pending', '2024-01-06 02:41:27', '2024-01-06 02:48:50'),
(3, 'Rejected', '2024-01-06 02:48:58', '2024-01-06 02:48:58'),
(4, 'Disqualified', '2024-01-06 02:51:08', '2024-01-06 02:51:08'),
(5, 'Qualified', '2024-01-06 02:51:15', '2024-01-06 02:51:15'),
(8, 'Assigned', '2024-04-30 22:31:28', '2024-04-30 22:31:28');

-- --------------------------------------------------------

--
-- Table structure for table `sub_services`
--

CREATE TABLE `sub_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_services`
--

INSERT INTO `sub_services` (`id`, `service_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'DXB-PEW', '2024-07-13 18:10:29', '2024-07-13 18:10:29');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `SupplierID` int(8) NOT NULL,
  `SupplierCatID` int(8) DEFAULT NULL,
  `Category` varchar(35) DEFAULT NULL,
  `SupplierName` varchar(35) DEFAULT NULL,
  `Address` varchar(75) DEFAULT NULL,
  `TRN` varchar(255) DEFAULT NULL,
  `Phone` varchar(25) DEFAULT NULL,
  `Email` varchar(25) DEFAULT NULL,
  `Active` varchar(3) DEFAULT NULL,
  `InvoiceDueDays` int(10) DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`SupplierID`, `SupplierCatID`, `Category`, `SupplierName`, `Address`, `TRN`, `Phone`, `Email`, `Active`, `InvoiceDueDays`, `eDate`) VALUES
(1030, 2, 'AIR LINE', 'AKBAR TRAVEL', NULL, NULL, NULL, NULL, 'No', NULL, '2022-01-16 17:57:57'),
(1032, 6, 'AIR LINE', 'PIA', NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-16 17:59:36'),
(1033, 6, 'AIR LINE', 'AIR BLUE', NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-16 17:57:49'),
(1053, 2, 'AIR-CUSTOMER', 'SADAF TRAVELS', NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-16 17:59:46'),
(1076, 6, 'AIR LINE', 'FCB LOAN AC', NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-16 17:58:29'),
(1309, 6, 'AIR LINE', 'FREELANCE VISAS', NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-16 17:58:33'),
(1410, 6, 'AIR LINE', 'HOTEL BOOKINGS', NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-16 17:58:49'),
(1666, 6, 'AIR LINE', 'MARSHAL TRAVEL', NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-16 17:59:26'),
(1790, 6, 'AIR LINE', 'ISB TRV', NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-16 17:58:53'),
(2211, 6, 'AIR LINE', 'DUMMY TICS', NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-16 17:58:26'),
(2213, 2, NULL, 'ALDIYAFA', NULL, NULL, NULL, NULL, 'Yes', NULL, '2022-04-03 08:55:17'),
(2214, 6, NULL, 'UMRAH', NULL, NULL, NULL, NULL, 'Yes', NULL, '2022-08-11 08:34:58'),
(2215, 2, NULL, 'SALAR TOURISM', NULL, NULL, NULL, NULL, 'Yes', NULL, '2022-09-21 09:22:18'),
(2216, NULL, NULL, 'Walk In', NULL, NULL, NULL, NULL, 'Yes', NULL, '2024-02-27 10:51:51'),
(2217, NULL, NULL, 'Falak Travels', NULL, NULL, NULL, NULL, 'Yes', NULL, '2024-03-22 12:01:40'),
(2218, NULL, NULL, 'Waqas Desert', NULL, NULL, NULL, NULL, 'Yes', NULL, '2024-03-23 11:25:28'),
(2219, 2, NULL, 'Top Travel trip', NULL, NULL, NULL, NULL, 'Yes', NULL, '2024-04-15 08:36:25'),
(2220, 6, NULL, 'KSA Visa', NULL, NULL, NULL, NULL, 'Yes', NULL, '2024-04-16 06:13:45'),
(2221, 6, NULL, 'Cozmo Travel', NULL, NULL, NULL, NULL, 'Yes', NULL, '2024-05-07 05:55:50'),
(2222, NULL, NULL, 'Emirates NBD', NULL, NULL, NULL, NULL, 'Yes', NULL, '2024-05-07 13:36:17'),
(2223, NULL, NULL, 'Serene Air', NULL, NULL, NULL, NULL, 'Yes', NULL, '2024-05-18 08:26:06'),
(2224, NULL, NULL, 'Emirates Telecommunications Group C', NULL, NULL, NULL, NULL, 'Yes', NULL, '2024-05-25 05:57:37'),
(2225, 1, NULL, 'DEWA', NULL, NULL, NULL, NULL, 'Yes', NULL, '2024-05-25 07:01:32'),
(2226, 6, NULL, 'Insta World Travel', 'Dubai', NULL, NULL, NULL, 'Yes', NULL, '2024-05-30 05:33:15'),
(2227, 6, NULL, 'White Ink Advertising', 'Al Ghurair Center Dubai', NULL, 'TRN: 10445585810003', NULL, 'Yes', NULL, '2024-07-16 08:15:51'),
(2228, 3, NULL, 'Al Rasheed travels', NULL, NULL, '0547236777', NULL, 'Yes', NULL, '2024-08-04 09:35:56'),
(2229, 6, NULL, 'al mignas travel', NULL, NULL, '0509113306', NULL, 'Yes', NULL, '2024-08-09 08:09:23'),
(2230, 3, NULL, 'MARHABA ZIARAT TOURISM LLC', NULL, NULL, '0559817104', NULL, 'Yes', NULL, '2024-08-10 14:52:06'),
(2231, 6, NULL, 'D2W TRAVELS', NULL, NULL, NULL, NULL, 'Yes', NULL, '2024-08-22 11:24:48'),
(2232, NULL, NULL, 'al malik travels', NULL, NULL, NULL, NULL, 'Yes', NULL, '2024-08-26 08:18:15'),
(2233, 2, NULL, 'ADCB', NULL, NULL, NULL, NULL, 'Yes', NULL, '2024-08-31 07:56:17'),
(2234, 6, NULL, 'FARHAN VISA PROVIDER', NULL, NULL, NULL, NULL, 'Yes', NULL, '2024-08-31 08:40:27'),
(2235, NULL, NULL, 'jay jasani', NULL, NULL, '0585878225', NULL, 'Yes', NULL, '2024-09-03 12:42:09'),
(2236, NULL, NULL, 'Dream Goal Tourism', NULL, NULL, NULL, NULL, 'Yes', NULL, '2024-09-05 12:20:58'),
(2237, 3, NULL, 'Markhor Travels', 'Office #2 Al khaja Building Deira', NULL, NULL, NULL, 'Yes', NULL, '2024-09-07 15:06:08'),
(2238, 3, NULL, 'KISWA', NULL, NULL, NULL, NULL, 'Yes', NULL, '2024-09-09 11:25:45'),
(2239, NULL, NULL, 'zeeshan desert safari', NULL, NULL, NULL, NULL, 'Yes', NULL, '2024-09-12 12:36:43'),
(2240, 6, NULL, 'Al madinah', NULL, NULL, '0507575854', NULL, 'Yes', NULL, '2024-09-13 13:13:42'),
(2241, 3, NULL, 'Al Fares Hajj and Umrah', NULL, NULL, NULL, NULL, 'Yes', NULL, '2024-09-21 10:36:11'),
(2242, 2, NULL, 'SIDRA TRIPS', NULL, NULL, NULL, NULL, 'Yes', NULL, '2024-09-25 10:18:28'),
(2243, 3, NULL, 'ZIARAT TRAVEL', 'dubai', NULL, NULL, NULL, 'Yes', NULL, '2024-10-09 10:00:41'),
(2244, NULL, NULL, 'Go Kite travel', 'dubai', NULL, NULL, NULL, 'Yes', NULL, '2024-10-15 06:29:22'),
(2245, 2, NULL, 'Falak Travels & Tourism LLC', NULL, NULL, NULL, NULL, 'Yes', NULL, '2024-10-19 09:34:45'),
(2246, 2, NULL, 'Visa Supplier Moiz', 'Dubai', NULL, '0507865206', NULL, 'Yes', NULL, '2024-11-19 06:41:58'),
(2247, 3, NULL, 'Al NAFRAH', NULL, NULL, '0551412504', NULL, 'Yes', NULL, '2024-12-06 09:03:50'),
(2248, 6, NULL, 'ASIM MOFA FEE', 'DUBAI', NULL, '0505485478', NULL, 'Yes', NULL, '2024-12-21 06:33:31'),
(2249, 2, NULL, 'SAFDAR DESER SAFARI', 'DUBAI', NULL, '+971553960268', NULL, 'Yes', NULL, '2024-12-30 09:00:01'),
(2250, 2, NULL, 'UNIVERSAL TOURISM', 'Dubai', NULL, '+971 52 286 7778', NULL, 'Yes', NULL, '2025-01-02 11:17:43'),
(2251, NULL, NULL, 'White Ink Advertising', NULL, NULL, NULL, NULL, 'Yes', NULL, '2025-03-05 05:01:14'),
(2252, 2, NULL, 'AL HIND TOURS & TRAVELS', NULL, NULL, NULL, NULL, 'Yes', NULL, '2025-03-06 06:59:55'),
(2253, 6, NULL, 'Zam Zam Visa Services', 'dubai', NULL, NULL, NULL, 'Yes', NULL, '2025-04-29 08:06:04'),
(2254, 6, NULL, 'ANNE PRO', 'DUBAI', NULL, NULL, NULL, 'Yes', NULL, '2025-04-30 13:26:55'),
(2255, 6, NULL, 'ICP Al Noqodi', NULL, NULL, NULL, NULL, 'Yes', NULL, '2025-05-06 08:00:11'),
(2256, 2, NULL, 'Great Luxury Travel', NULL, NULL, NULL, NULL, 'Yes', NULL, '2025-05-06 09:54:56'),
(2257, 2, NULL, 'INDUS TRAVEL', NULL, NULL, NULL, NULL, 'Yes', NULL, '2025-05-08 14:14:51'),
(2258, 6, NULL, 'ARAB EXP', 'DUBAI', NULL, NULL, NULL, 'Yes', NULL, '2025-05-11 11:04:20'),
(2259, 6, NULL, 'DAHR TOURS', 'DUBAI', NULL, NULL, NULL, 'Yes', NULL, '2025-05-23 14:34:30'),
(2260, 2, NULL, 'Choudhary Travels', 'Plot 689 Shop 1, Muhaisanah Second, Dubai.', NULL, '+971 52 293 9928', NULL, 'Yes', NULL, '2025-06-27 13:03:08'),
(2261, 3, NULL, 'ZENITH TRAVEL & TOURS L.L.C', 'Saif Bin Abdul Rahman Saleh Bldg. Plot No.587- 0, Muraqabat, Deira, Dubai,', NULL, '+971509049573', NULL, 'Yes', NULL, '2025-07-07 11:05:52'),
(2262, NULL, NULL, 'Trip Trails', NULL, NULL, NULL, NULL, 'Yes', NULL, '2025-07-08 06:52:12'),
(2263, 3, NULL, 'Choudhary Travels Umrah', 'dubai', NULL, NULL, NULL, 'Yes', NULL, '2025-07-17 12:09:22'),
(2264, 3, NULL, 'Al jaran Umrah Services', NULL, NULL, NULL, NULL, 'Yes', NULL, '2025-07-31 09:43:03'),
(2265, 2, NULL, 'AIR SIAL', NULL, NULL, NULL, NULL, 'Yes', NULL, '2025-08-15 12:21:10'),
(2266, 2, NULL, 'AZERBAIJAN VISA PORTAL', NULL, NULL, NULL, NULL, 'Yes', NULL, '2025-09-02 12:49:11'),
(2267, 3, NULL, 'Basma Travels Umrah', 'dubai', NULL, NULL, NULL, 'Yes', NULL, '2025-09-14 11:27:52'),
(2268, 2, NULL, 'IRFAN ABBAS', NULL, NULL, '+971562239513', NULL, 'Yes', NULL, '2025-09-22 13:55:22'),
(2269, NULL, NULL, 'Kabeer Ismail Stationery Trading', NULL, NULL, '04 2677991', NULL, 'Yes', NULL, '2025-09-26 07:29:35'),
(2270, 3, NULL, 'Najma Al Shammar Travel & Tourism L', NULL, NULL, '12641461920001', NULL, 'Yes', NULL, '2025-09-27 08:53:33'),
(2271, 2, NULL, 'HARMAIN TRAIN', NULL, NULL, NULL, NULL, 'Yes', NULL, '2025-10-04 10:13:43'),
(2272, NULL, NULL, 'Areena Infosolution', NULL, NULL, '8094351234', NULL, 'Yes', NULL, '2025-10-10 09:49:52'),
(2273, NULL, NULL, 'AB Printing House', NULL, NULL, '043805599', NULL, 'Yes', NULL, '2025-10-22 09:39:53'),
(2274, 3, NULL, 'Flying Zone', NULL, NULL, '0562803922', NULL, 'Yes', NULL, '2025-11-08 09:42:36'),
(2275, 2, NULL, 'MEHRI BAKU', NULL, NULL, NULL, NULL, 'Yes', NULL, '2025-11-17 16:45:44'),
(2276, NULL, NULL, 'Wadi Al Nakheel Advertising', NULL, NULL, '045858950', NULL, 'Yes', NULL, '2025-11-22 07:28:56');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_category`
--

CREATE TABLE `supplier_category` (
  `SupplierCatID` int(8) NOT NULL,
  `SupplierCode` varchar(10) DEFAULT NULL,
  `SupplierCategory` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `supplier_category`
--

INSERT INTO `supplier_category` (`SupplierCatID`, `SupplierCode`, `SupplierCategory`) VALUES
(1, 'C', 'Customer'),
(2, 'VC', 'Airline Customer'),
(3, 'U', 'Umrah'),
(4, 'X', 'Discontinued'),
(5, 'XC', 'Bad Debds'),
(6, 'VS', 'Supplier'),
(7, 'BC', 'Old Bad Debts');

-- --------------------------------------------------------

--
-- Table structure for table `tax`
--

CREATE TABLE `tax` (
  `TaxID` int(255) NOT NULL,
  `TaxPer` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Section` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tax`
--

INSERT INTO `tax` (`TaxID`, `TaxPer`, `Description`, `Section`) VALUES
(5, '5', '5%', NULL),
(6, '0', '0%', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` int(8) NOT NULL,
  `FullName` varchar(55) DEFAULT NULL,
  `Email` varchar(55) DEFAULT NULL,
  `Password` varchar(75) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `UserType` varchar(25) DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Active` varchar(5) DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `FullName`, `Email`, `Password`, `branch_id`, `UserType`, `eDate`, `Active`) VALUES
(1, 'User', 'user@extbooks.com', '123456', 1, 'User', '2025-12-05 09:53:18', 'No'),
(2, 'saleman', 'saleman@extbooks.com', '123456', 1, 'Saleman', '2025-12-05 09:53:34', 'No'),
(4, 'Admin', 'admin@extbooks.com', '123456', 1, 'Admin', '2025-12-05 09:56:23', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `RoleId` int(8) NOT NULL,
  `UserID` int(8) DEFAULT NULL,
  `Table` varchar(55) DEFAULT NULL,
  `Action` varchar(55) DEFAULT NULL,
  `Allow` varchar(10) DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`RoleId`, `UserID`, `Table`, `Action`, `Allow`) VALUES
(1, 1, 'Invoice', 'List', 'Y'),
(2, 1, 'Invoice', 'Create', 'Y'),
(3, 1, 'Invoice', 'Update', 'Y'),
(4, 1, 'Invoice', 'Delete', 'Y'),
(5, 1, 'Invoice', 'View', 'Y'),
(6, 1, 'Invoice', 'PDF', 'Y'),
(7, 1, 'Voucher', 'List', 'Y'),
(8, 1, 'Voucher', 'Create', 'Y'),
(9, 1, 'Voucher', 'Update', 'Y'),
(10, 1, 'Voucher', 'Delete', 'Y'),
(11, 1, 'Voucher', 'View', 'Y'),
(12, 1, 'Petty Cash', 'List', 'Y'),
(13, 1, 'Petty Cash', 'Create', 'Y'),
(14, 1, 'Petty Cash', 'Update', 'Y'),
(15, 1, 'Petty Cash', 'Delete', 'Y'),
(16, 1, 'Petty Cash', 'View', 'Y'),
(17, 1, 'Adjustment Balance', 'Create', 'Y'),
(18, 1, 'Chart of Account', 'List / Create', 'Y'),
(19, 1, 'Chart of Account', 'Update', 'Y'),
(20, 1, 'Chart of Account', 'Delete', 'Y'),
(21, 1, 'Item/Inventory', 'List / Create', 'Y'),
(22, 1, 'Item/Inventory', 'Update', 'Y'),
(23, 1, 'Item/Inventory', 'Delete', 'Y'),
(24, 1, 'Party / Customers', 'List / Create', 'Y'),
(25, 1, 'Party / Customers', 'Update', 'Y'),
(26, 1, 'Party / Customers', 'Delete', 'Y'),
(27, 1, 'Supplier', 'List / Create', 'Y'),
(28, 1, 'Supplier', 'Update', 'Y'),
(29, 1, 'Supplier', 'Delete', 'Y'),
(30, 1, 'User', 'List / Create', 'Y'),
(31, 1, 'User', 'Update', 'Y'),
(32, 1, 'User', 'Delete', 'Y'),
(33, 1, 'User Rights', 'Assign', 'Y'),
(34, 1, 'Party Ledger', 'View', 'Y'),
(35, 1, 'Party Ledger', 'PDF', 'Y'),
(36, 1, 'Party Balance', 'View', 'Y'),
(37, 1, 'Party Balance', 'PDF', 'Y'),
(38, 1, 'Yearly Report', 'View', 'Y'),
(39, 1, 'Yearly Report', 'PDF', 'Y'),
(40, 1, 'Ageing Report', 'View', 'Y'),
(41, 1, 'Ageing Report', 'PDF', 'Y'),
(42, 1, 'Party Analysis', 'View', 'Y'),
(43, 1, 'Party Analysis', 'PDF', 'Y'),
(44, 1, 'Party List', 'View', 'Y'),
(45, 1, 'Party List', 'PDF', 'Y'),
(46, 1, 'Outstanding Invoices', 'View', 'Y'),
(47, 1, 'Outstanding Invoices', 'PDF', 'Y'),
(48, 1, 'Supplier Ledger', 'View', 'Y'),
(49, 1, 'Supplier Ledger', 'PDF', 'Y'),
(50, 1, 'Supplier Balance', 'View', 'Y'),
(51, 1, 'Supplier Balance', 'PDF', 'Y'),
(52, 1, 'Sale Invoice', 'View', 'Y'),
(53, 1, 'Sale Invoice', 'PDF', 'Y'),
(54, 1, 'Ticket Register', 'View', 'Y'),
(55, 1, 'Ticket Register', 'PDF', 'Y'),
(56, 1, 'Airline Summary', 'View', 'Y'),
(57, 1, 'Airline Summary', 'PDF', 'Y'),
(58, 1, 'Sale Man Report', 'View', 'Y'),
(59, 1, 'Sale Man Report', 'PDF', 'Y'),
(60, 1, 'Tax Report', 'View', 'Y'),
(61, 1, 'Tax Report', 'PDF', 'Y'),
(62, 1, 'Sales Report', 'View', 'Y'),
(63, 1, 'Sales Report', 'PDF', 'Y'),
(64, 1, 'Voucher Report', 'View', 'Y'),
(65, 1, 'Voucher Report', 'PDF', 'Y'),
(66, 1, 'Cash Book', 'View', 'Y'),
(67, 1, 'Cash Book', 'PDF', 'Y'),
(68, 1, 'Day Book', 'View', 'Y'),
(69, 1, 'Day Book', 'PDF', 'Y'),
(70, 1, 'General Ledger', 'View', 'Y'),
(71, 1, 'General Ledger', 'PDF', 'Y'),
(72, 1, 'Trial Balance', 'View', 'Y'),
(73, 1, 'Trial Balance', 'PDF', 'Y'),
(74, 1, 'Trial with Activity', 'View', 'Y'),
(75, 1, 'Trial with Activity', 'PDF', 'Y'),
(76, 1, 'Yearly Summary', 'View', 'Y'),
(77, 1, 'Yearly Summary', 'PDF', 'Y'),
(78, 1, 'Profit & Loss', 'View', 'Y'),
(79, 1, 'Profit & Loss', 'PDF', 'Y'),
(80, 1, 'Balance Sheet', 'View', 'Y'),
(81, 1, 'Balance Sheet', 'PDF', 'Y'),
(82, 1, 'Invoice Summary', 'View', 'Y'),
(83, 1, 'Invoice Summary', 'PDF', 'Y'),
(84, 1, 'Party Wise Sale', 'View', 'Y'),
(85, 1, 'Party Wise Sale', 'PDF', 'Y'),
(256, 4, 'Invoice', 'List', 'Y'),
(257, 4, 'Invoice', 'Create', 'Y'),
(258, 4, 'Invoice', 'Update', 'Y'),
(259, 4, 'Invoice', 'Delete', 'Y'),
(260, 4, 'Invoice', 'View', 'Y'),
(261, 4, 'Invoice', 'PDF', 'Y'),
(262, 4, 'Voucher', 'List', 'Y'),
(263, 4, 'Voucher', 'Create', 'Y'),
(264, 4, 'Voucher', 'Update', 'Y'),
(265, 4, 'Voucher', 'Delete', 'Y'),
(266, 4, 'Voucher', 'View', 'Y'),
(267, 4, 'Petty Cash', 'List', 'Y'),
(268, 4, 'Petty Cash', 'Create', 'Y'),
(269, 4, 'Petty Cash', 'Update', 'Y'),
(270, 4, 'Petty Cash', 'Delete', 'Y'),
(271, 4, 'Petty Cash', 'View', 'Y'),
(272, 4, 'Adjustment Balance', 'Create', 'Y'),
(273, 4, 'Chart of Account', 'List / Create', 'Y'),
(274, 4, 'Chart of Account', 'Update', 'Y'),
(275, 4, 'Chart of Account', 'Delete', 'Y'),
(276, 4, 'Item/Inventory', 'List / Create', 'Y'),
(277, 4, 'Item/Inventory', 'Update', 'Y'),
(278, 4, 'Item/Inventory', 'Delete', 'Y'),
(279, 4, 'Party / Customers', 'List / Create', 'Y'),
(280, 4, 'Party / Customers', 'Update', 'Y'),
(281, 4, 'Party / Customers', 'Delete', 'Y'),
(282, 4, 'Supplier', 'List / Create', 'Y'),
(283, 4, 'Supplier', 'Update', 'Y'),
(284, 4, 'Supplier', 'Delete', 'Y'),
(285, 4, 'User', 'List / Create', 'Y'),
(286, 4, 'User', 'Update', 'Y'),
(287, 4, 'User', 'Delete', 'Y'),
(288, 4, 'User Rights', 'Assign', 'Y'),
(289, 4, 'Party Ledger', 'View', 'Y'),
(290, 4, 'Party Ledger', 'PDF', 'Y'),
(291, 4, 'Party Balance', 'View', 'Y'),
(292, 4, 'Party Balance', 'PDF', 'Y'),
(293, 4, 'Yearly Report', 'View', 'Y'),
(294, 4, 'Yearly Report', 'PDF', 'Y'),
(295, 4, 'Ageing Report', 'View', 'Y'),
(296, 4, 'Ageing Report', 'PDF', 'Y'),
(297, 4, 'Party Analysis', 'View', 'Y'),
(298, 4, 'Party Analysis', 'PDF', 'Y'),
(299, 4, 'Party List', 'View', 'Y'),
(300, 4, 'Party List', 'PDF', 'Y'),
(301, 4, 'Outstanding Invoices', 'View', 'Y'),
(302, 4, 'Outstanding Invoices', 'PDF', 'Y'),
(303, 4, 'Supplier Ledger', 'View', 'Y'),
(304, 4, 'Supplier Ledger', 'PDF', 'Y'),
(305, 4, 'Supplier Balance', 'View', 'Y'),
(306, 4, 'Supplier Balance', 'PDF', 'Y'),
(307, 4, 'Sale Invoice', 'View', 'Y'),
(308, 4, 'Sale Invoice', 'PDF', 'Y'),
(309, 4, 'Ticket Register', 'View', 'Y'),
(310, 4, 'Ticket Register', 'PDF', 'Y'),
(311, 4, 'Airline Summary', 'View', 'Y'),
(312, 4, 'Airline Summary', 'PDF', 'Y'),
(313, 4, 'Sale Man Report', 'View', 'Y'),
(314, 4, 'Sale Man Report', 'PDF', 'Y'),
(315, 4, 'Tax Report', 'View', 'Y'),
(316, 4, 'Tax Report', 'PDF', 'Y'),
(317, 4, 'Sales Report', 'View', 'Y'),
(318, 4, 'Sales Report', 'PDF', 'Y'),
(319, 4, 'Voucher Report', 'View', 'Y'),
(320, 4, 'Voucher Report', 'PDF', 'Y'),
(321, 4, 'Cash Book', 'View', 'Y'),
(322, 4, 'Cash Book', 'PDF', 'Y'),
(323, 4, 'Day Book', 'View', 'Y'),
(324, 4, 'Day Book', 'PDF', 'Y'),
(325, 4, 'General Ledger', 'View', 'Y'),
(326, 4, 'General Ledger', 'PDF', 'Y'),
(327, 4, 'Trial Balance', 'View', 'Y'),
(328, 4, 'Trial Balance', 'PDF', 'Y'),
(329, 4, 'Trial with Activity', 'View', 'Y'),
(330, 4, 'Trial with Activity', 'PDF', 'Y'),
(331, 4, 'Yearly Summary', 'View', 'Y'),
(332, 4, 'Yearly Summary', 'PDF', 'Y'),
(333, 4, 'Profit & Loss', 'View', 'Y'),
(334, 4, 'Profit & Loss', 'PDF', 'Y'),
(335, 4, 'Balance Sheet', 'View', 'Y'),
(336, 4, 'Balance Sheet', 'PDF', 'Y'),
(337, 4, 'Invoice Summary', 'View', 'Y'),
(338, 4, 'Invoice Summary', 'PDF', 'Y'),
(339, 4, 'Party Wise Sale', 'View', 'Y'),
(340, 4, 'Party Wise Sale', 'PDF', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `voucher_detail`
--

CREATE TABLE `voucher_detail` (
  `VoucherDetID` int(12) NOT NULL,
  `VoucherMstID` int(12) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Voucher` varchar(15) DEFAULT NULL,
  `ChOfAcc` int(10) DEFAULT NULL,
  `PartyID` int(8) DEFAULT NULL,
  `SupplierID` int(12) DEFAULT NULL,
  `Narration` varchar(255) DEFAULT NULL,
  `InvoiceNo` varchar(75) DEFAULT NULL,
  `RefNo` varchar(75) DEFAULT NULL,
  `Debit` double(10,2) DEFAULT NULL,
  `Credit` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Triggers `voucher_detail`
--
DELIMITER $$
CREATE TRIGGER `beforeinsert` AFTER INSERT ON `voucher_detail` FOR EACH ROW begin
 
INSERT INTO journal (VHNO,JournalType,ChartOfAccountID,SupplierID,VoucherMstID,Narration,Date,Dr,Cr,PartyID,InvoiceMasterID) 
values (new.Voucher,SUBSTRING(new.Voucher,1,2),new.ChOfAcc,new.SupplierID,new.VoucherMstID,new.Narration,new.Date,new.Debit,new.Credit,new.PartyID,new.InvoiceNo);
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `voucher_master`
--

CREATE TABLE `voucher_master` (
  `VoucherMstID` int(12) NOT NULL,
  `VoucherCodeID` int(10) DEFAULT NULL,
  `Voucher` varchar(15) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `voucher_type`
--

CREATE TABLE `voucher_type` (
  `VoucherTypeID` int(8) NOT NULL,
  `VoucherCode` varchar(35) DEFAULT NULL,
  `VoucherTypeName` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `voucher_type`
--

INSERT INTO `voucher_type` (`VoucherTypeID`, `VoucherCode`, `VoucherTypeName`) VALUES
(1, 'BP', 'BANK PAYMENT'),
(2, 'BR', 'BANK RECEIPT'),
(3, 'CN', 'CREDIT NOTE'),
(4, 'CP', 'CASH PAYMENT'),
(5, 'CR', 'CASH RECEIPT'),
(6, 'DN', 'DEBIT NOTES'),
(7, 'JV', 'JOURNAL VOUCHER');

-- --------------------------------------------------------

--
-- Table structure for table `v_bookings_admin`
--

CREATE TABLE `v_bookings_admin` (
  `id` int(11) DEFAULT NULL,
  `lead_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `start` varchar(10) DEFAULT NULL,
  `end` varchar(10) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `users_id` int(11) DEFAULT NULL,
  `agent_name` varchar(255) DEFAULT NULL,
  `PartyID` varchar(255) DEFAULT NULL,
  `client_contact` varchar(255) DEFAULT NULL,
  `client_address` varchar(255) DEFAULT NULL,
  `SupplierID` varchar(255) DEFAULT NULL,
  `vendor_cost` double(12,2) DEFAULT NULL,
  `input_vat` double(12,2) DEFAULT NULL,
  `cnc_cost` double(14,2) DEFAULT NULL,
  `output_vat` double(14,2) DEFAULT NULL,
  `profit` double(14,2) DEFAULT NULL,
  `net_invoice` double(14,2) DEFAULT NULL,
  `services` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `collected_by` varchar(255) DEFAULT NULL,
  `amount` double(12,2) DEFAULT NULL,
  `remarks` longtext DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `invoice_file` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `PartyName` varchar(255) DEFAULT NULL,
  `SupplierName` varchar(150) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_cashflow`
-- (See below for the actual view)
--
CREATE TABLE `v_cashflow` (
`Dr` double(19,2)
,`Cr` double(19,2)
,`Balance` double(19,2)
,`MonthName` varchar(69)
,`mMonthName` varchar(7)
,`Year` varchar(4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_chartofaccount`
-- (See below for the actual view)
--
CREATE TABLE `v_chartofaccount` (
`ChartOfAccountID` int(12)
,`ChartOfAccountName` varchar(75)
,`CODE` varchar(15)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_estimate_detail`
-- (See below for the actual view)
--
CREATE TABLE `v_estimate_detail` (
`EstimateDetailID` int(8)
,`EstimateMasterID` int(8)
,`EstimateNo` varchar(10)
,`EstimateDate` date
,`ItemID` int(8)
,`ItemName` varchar(55)
,`Qty` int(12)
,`Rate` double(12,2)
,`Total` double(12,2)
,`Description` varchar(255)
,`TaxPer` double(12,2)
,`Tax` double(12,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_estimate_master`
-- (See below for the actual view)
--
CREATE TABLE `v_estimate_master` (
`EstimateMasterID` int(8)
,`EstimateNo` varchar(10)
,`PartyID` int(8)
,`PartyName` varchar(255)
,`PlaceOfSupply` varchar(25)
,`ReferenceNo` varchar(25)
,`EstimateDate` date
,`Total` double(10,2)
,`CustomerNotes` varchar(255)
,`TermAndCondition` varchar(255)
,`File` varchar(75)
,`UserID` int(8)
,`Subject` varchar(255)
,`Address` varchar(255)
,`Phone` varchar(255)
,`Email` varchar(255)
,`Date` date
,`SubTotal` double(10,2)
,`TaxPer` double(10,2)
,`Tax` double(10,2)
,`DiscountPer` double(10,2)
,`Discount` double(10,2)
,`WalkinCustomerName` varchar(55)
,`Shipping` double(10,2)
,`DescriptionNotes` varchar(255)
,`ExpiryDate` date
,`GrandTotal` double(10,2)
,`TRN` varchar(255)
,`Mobile` varchar(255)
,`Website` varchar(255)
,`Active` varchar(3)
,`InvoiceDueDays` int(10)
,`eDate` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_expense`
-- (See below for the actual view)
--
CREATE TABLE `v_expense` (
`ExpenseMasterID` int(14)
,`Date` date
,`Date1` varchar(10)
,`ChartOfAccountID` int(9)
,`ChartOfAccountName` varchar(75)
,`SupplierID` int(8)
,`SupplierName` varchar(35)
,`ReferenceNo` varchar(155)
,`ExpenseNo` varchar(55)
,`GrantTotal` double(14,4)
,`SubTotal` double(14,4)
,`Tax` double(14,4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_expense_chart`
-- (See below for the actual view)
--
CREATE TABLE `v_expense_chart` (
`MonthName` varchar(69)
,`Balance` double(19,2)
,`ChartOfAccountName` varchar(75)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_expense_detail`
-- (See below for the actual view)
--
CREATE TABLE `v_expense_detail` (
`ExpenseNo` varchar(55)
,`Date` date
,`ChartOfAccountName` varchar(75)
,`ExpenseDetailID` int(8)
,`ExpenseMasterID` int(8)
,`ChartOfAccountID` int(10)
,`Notes` varchar(255)
,`TaxPer` double(8,2)
,`Tax` double(8,2)
,`Amount` double(8,2)
,`SupplierName` varchar(35)
,`AmountAfterTax` double(14,4)
,`ReferenceNo` varchar(155)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_exp_rev_1`
-- (See below for the actual view)
--
CREATE TABLE `v_exp_rev_1` (
`Dr` double(10,2)
,`Cr` double(10,2)
,`code` varchar(15)
,`Date` varchar(69)
,`mDate` varchar(7)
,`yDate` varchar(4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_followup`
-- (See below for the actual view)
--
CREATE TABLE `v_followup` (
`id` bigint(20) unsigned
,`name` varchar(255)
,`tel` varchar(255)
,`other_tel` varchar(255)
,`business_details` varchar(255)
,`service` varchar(255)
,`follow_up_date` date
,`notes` text
,`ServiceName` varchar(255)
,`FullName` varchar(55)
,`created_at` timestamp
,`agent_id` bigint(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_income_expense`
-- (See below for the actual view)
--
CREATE TABLE `v_income_expense` (
`Rev` double(19,2)
,`Exp` double(19,2)
,`Date` varchar(69)
,`mDate` varchar(7)
,`yDate` varchar(4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_invoice_balance`
-- (See below for the actual view)
--
CREATE TABLE `v_invoice_balance` (
`Balance` double(19,2)
,`InvoiceMasterID` int(12)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_invoice_detail`
-- (See below for the actual view)
--
CREATE TABLE `v_invoice_detail` (
`ItemCode` varchar(5)
,`ItemName` varchar(55)
,`VisaType` varchar(35)
,`PaxName` varchar(35)
,`PNR` varchar(35)
,`Sector` varchar(35)
,`Fare` double(8,2)
,`RefNo` varchar(55)
,`Taxable` double(9,2)
,`Service` double(9,2)
,`OPVAT` double(8,2)
,`IPVAT` double(8,2)
,`Discount` double(8,2)
,`InvoiceDetailID` int(8)
,`InvoiceMasterID` int(8)
,`ItemID` int(8)
,`SupplierID` int(8)
,`SupplierName` varchar(35)
,`Date` date
,`InvoiceTypeID` int(8)
,`InvoiceTypeCode` varchar(35)
,`UserID` int(8)
,`PartyName` varchar(255)
,`Total` double(8,2)
,`PartyID` int(8)
,`Phone` varchar(255)
,`InvoiceType` varchar(35)
,`SalemanName` varchar(55)
,`Voucher` varchar(15)
,`PaymentMode` varchar(25)
,`Passport` varchar(255)
,`DepartureDate` date
,`Contact` varchar(255)
,`UmrahFare` double(14,2)
,`RoomType` varchar(255)
,`PickPoint` varchar(255)
,`Paid` int(8)
,`TicketNo` varchar(255)
,`AirlineName` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_invoice_detail1`
-- (See below for the actual view)
--
CREATE TABLE `v_invoice_detail1` (
`ItemCode` varchar(5)
,`ItemName` varchar(55)
,`VisaType` varchar(35)
,`PaxName` varchar(35)
,`PNR` varchar(35)
,`Sector` varchar(35)
,`Fare` double(8,2)
,`RefNo` varchar(55)
,`Taxable` double(9,2)
,`Service` double(9,2)
,`OPVAT` double(8,2)
,`IPVAT` double(8,2)
,`Discount` double(8,2)
,`Total` double(8,2)
,`InvoiceDetailID` int(8)
,`InvoiceMasterID` int(8)
,`ItemID` int(8)
,`SupplierID` int(8)
,`SupplierName` varchar(35)
,`Date` date
,`InvoiceTypeID` int(8)
,`InvoiceTypeCode` varchar(35)
,`UserID` int(8)
,`PartyName` varchar(255)
,`SalemanName` varchar(55)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_invoice_detail2`
-- (See below for the actual view)
--
CREATE TABLE `v_invoice_detail2` (
`ItemID` int(8)
,`ItemType` varchar(55)
,`ItemCode` varchar(5)
,`ItemName` varchar(55)
,`InvoiceDetailID` int(8)
,`InvoiceMasterID` int(8)
,`SupplierID` int(8)
,`VisaType` varchar(35)
,`PaxName` varchar(35)
,`PNR` varchar(35)
,`Sector` varchar(35)
,`Fare` double(8,2)
,`RefNo` varchar(55)
,`Taxable` double(8,2)
,`Service` double(8,2)
,`Discount` double(8,2)
,`Total` double(8,2)
,`Passport` varchar(255)
,`TicketNo` varchar(255)
,`AirlineName` varchar(255)
,`DepartureDate` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_invoice_detail22`
-- (See below for the actual view)
--
CREATE TABLE `v_invoice_detail22` (
`ItemCode` varchar(5)
,`ItemName` varchar(55)
,`VisaType` varchar(35)
,`PaxName` varchar(35)
,`PNR` varchar(35)
,`Sector` varchar(35)
,`Fare` double(8,2)
,`RefNo` varchar(55)
,`Taxable` double(8,2)
,`Service` double(8,2)
,`OPVAT` double(8,2)
,`IPVAT` double(8,2)
,`Discount` double(8,2)
,`InvoiceDetailID` int(8)
,`InvoiceMasterID` int(8)
,`ItemID` int(8)
,`SupplierID` int(8)
,`SupplierName` varchar(35)
,`Date` date
,`InvoiceTypeID` int(8)
,`InvoiceTypeCode` varchar(35)
,`UserID` int(8)
,`PartyName` varchar(255)
,`PartyID` int(8)
,`Phone` varchar(255)
,`InvoiceType` varchar(35)
,`SalemanName` varchar(55)
,`Voucher` varchar(15)
,`PaymentMode` varchar(25)
,`Total` double(8,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_invoice_detail_copy`
-- (See below for the actual view)
--
CREATE TABLE `v_invoice_detail_copy` (
`ItemCode` varchar(5)
,`ItemName` varchar(55)
,`VisaType` varchar(35)
,`PaxName` varchar(35)
,`PNR` varchar(35)
,`Sector` varchar(35)
,`Fare` double(8,2)
,`RefNo` varchar(55)
,`Taxable` double(8,2)
,`Service` double(8,2)
,`OPVAT` double(8,2)
,`IPVAT` double(8,2)
,`Discount` double(8,2)
,`Total` double(8,2)
,`InvoiceDetailID` int(8)
,`InvoiceMasterID` int(8)
,`ItemID` int(8)
,`SupplierID` int(8)
,`SupplierName` varchar(35)
,`Date` date
,`InvoiceTypeID` int(8)
,`InvoiceTypeCode` varchar(35)
,`UserID` int(8)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_invoice_detail_umrah`
-- (See below for the actual view)
--
CREATE TABLE `v_invoice_detail_umrah` (
`ItemCode` varchar(5)
,`ItemName` varchar(55)
,`VisaType` varchar(35)
,`PaxName` varchar(35)
,`PNR` varchar(35)
,`Sector` varchar(35)
,`Fare` double(8,2)
,`RefNo` varchar(55)
,`Taxable` double(8,2)
,`Service` double(8,2)
,`OPVAT` double(8,2)
,`IPVAT` double(8,2)
,`Discount` double(8,2)
,`InvoiceDetailID` int(8)
,`InvoiceMasterID` int(8)
,`ItemID` int(8)
,`SupplierID` int(8)
,`SupplierName` varchar(35)
,`DepartureDate` date
,`Date` date
,`InvoiceTypeID` int(8)
,`InvoiceTypeCode` varchar(35)
,`UserID` int(8)
,`PartyName` varchar(255)
,`PartyID` int(8)
,`Phone` varchar(255)
,`InvoiceType` varchar(35)
,`SalemanName` varchar(55)
,`Voucher` varchar(15)
,`PaymentMode` varchar(25)
,`UmrahFare` double(14,2)
,`Total` double(8,2)
,`PaxContact` varchar(255)
,`PickPoint` varchar(255)
,`RoomType` varchar(255)
,`Paid` double(14,2)
,`PaymentInBus` double(14,2)
,`Contact` varchar(255)
,`Passport` varchar(255)
,`PassportFile` varchar(255)
,`EmirateIDFileFront` varchar(255)
,`EmirateIDFileBack` varchar(255)
,`PictureFile` varchar(255)
,`Nationality` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_invoice_detial_umrah`
-- (See below for the actual view)
--
CREATE TABLE `v_invoice_detial_umrah` (
`ItemCode` varchar(5)
,`ItemName` varchar(55)
,`VisaType` varchar(35)
,`PaxName` varchar(35)
,`PNR` varchar(35)
,`Sector` varchar(35)
,`Fare` double(8,2)
,`RefNo` varchar(55)
,`Taxable` double(8,2)
,`Service` double(8,2)
,`OPVAT` double(8,2)
,`IPVAT` double(8,2)
,`Discount` double(8,2)
,`InvoiceDetailID` int(8)
,`InvoiceMasterID` int(8)
,`ItemID` int(8)
,`SupplierID` int(8)
,`SupplierName` varchar(35)
,`DepartureDate` date
,`Date` date
,`InvoiceTypeID` int(8)
,`InvoiceTypeCode` varchar(35)
,`UserID` int(8)
,`PartyName` varchar(255)
,`PartyID` int(8)
,`Phone` varchar(255)
,`InvoiceType` varchar(35)
,`SalemanName` varchar(55)
,`Voucher` varchar(15)
,`PaymentMode` varchar(25)
,`UmrahFare` double(14,2)
,`Total` double(8,2)
,`PaxContact` varchar(255)
,`PickPoint` varchar(255)
,`RoomType` varchar(255)
,`Paid` double(14,2)
,`PaymentInBus` double(14,2)
,`Contact` varchar(255)
,`Passport` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_invoice_master`
-- (See below for the actual view)
--
CREATE TABLE `v_invoice_master` (
`InvoiceMasterID` int(8)
,`InvoiceTypeID` int(8)
,`InvoiceTypeCode` varchar(35)
,`InvoiceCode` varchar(47)
,`InvoiceType` varchar(35)
,`Date` date
,`UserID` int(8)
,`PaymentMode` varchar(25)
,`Total` int(8)
,`Paid` int(8)
,`DueDate` date
,`Note` varchar(255)
,`PartyName` varchar(255)
,`Address` varchar(255)
,`Phone` varchar(255)
,`Email` varchar(255)
,`PartyID` int(8)
,`TRN` varchar(255)
,`FullName` varchar(55)
,`Balance` double(19,2)
,`LeadID` int(14)
,`Document` varchar(255)
,`Paid1` double(14,2)
,`BankName` varchar(255)
,`Percentage` decimal(15,3)
,`BankCharges` decimal(15,3)
,`GrandTotal` decimal(15,3)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_invoice_master_copy`
-- (See below for the actual view)
--
CREATE TABLE `v_invoice_master_copy` (
`InvoiceMasterID` int(8)
,`InvoiceTypeID` int(8)
,`InvoiceTypeCode` varchar(35)
,`InvoiceCode` varchar(47)
,`InvoiceType` varchar(35)
,`Date` date
,`UserID` int(8)
,`PaymentMode` varchar(25)
,`Total` int(8)
,`Paid` int(8)
,`Balance` int(8)
,`DueDate` date
,`Note` varchar(255)
,`PartyName` varchar(255)
,`Address` varchar(255)
,`Phone` varchar(255)
,`Email` varchar(255)
,`PartyID` int(8)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_inv_detail_umrah`
-- (See below for the actual view)
--
CREATE TABLE `v_inv_detail_umrah` (
`ItemCode` varchar(5)
,`ItemName` varchar(55)
,`VisaType` varchar(35)
,`PaxName` varchar(35)
,`PNR` varchar(35)
,`Sector` varchar(35)
,`Fare` double(8,2)
,`RefNo` varchar(55)
,`Taxable` double(8,2)
,`Service` double(8,2)
,`OPVAT` double(8,2)
,`IPVAT` double(8,2)
,`Discount` double(8,2)
,`InvoiceDetailID` int(8)
,`InvoiceMasterID` int(8)
,`ItemID` int(8)
,`SupplierID` int(8)
,`SupplierName` varchar(35)
,`DepartureDate` date
,`Date` date
,`InvoiceTypeID` int(8)
,`InvoiceTypeCode` varchar(35)
,`UserID` int(8)
,`PartyName` varchar(255)
,`PartyID` int(8)
,`Phone` varchar(255)
,`InvoiceType` varchar(35)
,`SalemanName` varchar(55)
,`Voucher` varchar(15)
,`PaymentMode` varchar(25)
,`UmrahFare` double(14,2)
,`Total` double(8,2)
,`PaxContact` varchar(255)
,`PickPoint` varchar(255)
,`RoomType` varchar(255)
,`Paid` double(14,2)
,`PaymentInBus` double(14,2)
,`Contact` varchar(255)
,`Passport` varchar(255)
,`PassportFile` varchar(255)
,`EmirateIDFileFront` varchar(255)
,`EmirateIDFileBack` varchar(255)
,`PictureFile` varchar(255)
,`Nationality` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_inv_paid`
-- (See below for the actual view)
--
CREATE TABLE `v_inv_paid` (
`InvoiceMasterID` int(8)
,`Total` decimal(15,3)
,`InvoiceNo` varchar(75)
,`Paid` double(19,2)
,`Balance` double(20,3)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_inv_paid_refund`
-- (See below for the actual view)
--
CREATE TABLE `v_inv_paid_refund` (
`InvoiceMasterID` int(8)
,`Total` decimal(15,3)
,`InvoiceNo` varchar(75)
,`Paid` double(19,2)
,`Balance` double(20,3)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_journal`
-- (See below for the actual view)
--
CREATE TABLE `v_journal` (
`VHNO` varchar(15)
,`JournalType` varchar(10)
,`ChartOfAccountID` int(8)
,`ChartOfAccountName` varchar(75)
,`SupplierID` int(8)
,`VoucherMstID` int(12)
,`PettyMstID` int(12)
,`InvoiceMasterID` int(12)
,`Date` date
,`Dr` double(10,2)
,`Cr` double(10,2)
,`PartyID` int(8)
,`Narration` varchar(255)
,`L1` int(10)
,`L2` int(10)
,`L3` int(10)
,`CODE` varchar(15)
,`Trace` int(10)
,`BankReconcile` varchar(150)
,`JournalID` int(10)
,`Category` varchar(55)
,`Level` int(5)
,`ExpenseMasterID` int(12)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_journal_copy`
-- (See below for the actual view)
--
CREATE TABLE `v_journal_copy` (
`VHNO` varchar(15)
,`JournalType` varchar(10)
,`ChartOfAccountID` int(8)
,`ChartOfAccountName` varchar(75)
,`SupplierID` int(8)
,`VoucherMstID` int(12)
,`PettyMstID` int(12)
,`InvoiceMasterID` int(12)
,`Date` date
,`Dr` double(19,2)
,`Cr` double(19,2)
,`PartyID` int(8)
,`Narration` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_lead_summary`
-- (See below for the actual view)
--
CREATE TABLE `v_lead_summary` (
`Total` bigint(21)
,`Rejected` decimal(22,0)
,`Pending` decimal(22,0)
,`leads_won` decimal(22,0)
,`leads_lost` decimal(22,0)
,`leads_not_assigned` decimal(22,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_lead_summary_user`
-- (See below for the actual view)
--
CREATE TABLE `v_lead_summary_user` (
`Total` bigint(21)
,`Rejected` decimal(22,0)
,`Pending` decimal(22,0)
,`leads_won` decimal(22,0)
,`leads_lost` decimal(22,0)
,`leads_not_assigned` decimal(22,0)
,`agent_id` bigint(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_partywise_sale`
-- (See below for the actual view)
--
CREATE TABLE `v_partywise_sale` (
`PartyID` int(8)
,`PartyName` varchar(255)
,`Qty` bigint(21)
,`Fare` double(19,2)
,`Total` double(19,2)
,`Service` double(19,2)
,`InvoiceTypeID` int(8)
,`Discount` double(19,2)
,`InvoiceTypeCode` varchar(35)
,`InvoiceType` varchar(35)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_partywise_sale_copy`
-- (See below for the actual view)
--
CREATE TABLE `v_partywise_sale_copy` (
`PartyID` int(8)
,`PartyName` varchar(255)
,`Qty` bigint(21)
,`Fare` double(19,2)
,`Total` double(19,2)
,`Service` double(19,2)
,`InvoiceTypeID` int(8)
,`Discount` double(19,2)
,`InvoiceTypeCode` varchar(35)
,`InvoiceType` varchar(35)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_party_bal`
-- (See below for the actual view)
--
CREATE TABLE `v_party_bal` (
`Balance` double(19,2)
,`PartyID` int(8)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_party_balance`
-- (See below for the actual view)
--
CREATE TABLE `v_party_balance` (
`VHNO` varchar(15)
,`JournalType` varchar(10)
,`ChartOfAccountID` int(8)
,`ChartOfAccountName` varchar(75)
,`SupplierID` int(8)
,`VoucherMstID` int(12)
,`PettyMstID` int(12)
,`InvoiceMasterID` int(12)
,`Date` date
,`Dr` double(10,2)
,`Cr` double(10,2)
,`PartyID` int(8)
,`Narration` varchar(255)
,`PartyName` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_party_balance_1`
-- (See below for the actual view)
--
CREATE TABLE `v_party_balance_1` (
`PartyID` int(8)
,`Balance` double(19,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_party_balance_copy`
-- (See below for the actual view)
--
CREATE TABLE `v_party_balance_copy` (
`VHNO` varchar(15)
,`JournalType` varchar(10)
,`ChartOfAccountID` int(8)
,`ChartOfAccountName` varchar(75)
,`SupplierID` int(8)
,`VoucherMstID` int(12)
,`PettyMstID` int(12)
,`InvoiceMasterID` int(12)
,`Date` date
,`Dr` double(10,2)
,`Cr` double(10,2)
,`PartyID` int(8)
,`Narration` varchar(255)
,`PartyName` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_party_debitor`
-- (See below for the actual view)
--
CREATE TABLE `v_party_debitor` (
`PartyID` int(8)
,`Balance` double(19,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_party_montly_balance`
-- (See below for the actual view)
--
CREATE TABLE `v_party_montly_balance` (
`Date` varchar(37)
,`Dr` double(19,2)
,`Cr` double(19,2)
,`Balance` double(19,2)
,`PartyID` int(8)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_pettycash_master`
-- (See below for the actual view)
--
CREATE TABLE `v_pettycash_master` (
`PettyMstID` int(12)
,`PettyVoucher` varchar(11)
,`ChartOfAccountID` int(12)
,`CODE` varchar(15)
,`ChartOfAccountName` varchar(75)
,`Date` date
,`Narration` varchar(255)
,`Credit` double(10,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_rev_exp`
-- (See below for the actual view)
--
CREATE TABLE `v_rev_exp` (
`Rev` double(19,2)
,`Exp` int(1)
,`DATE_FORMAT(date,'%M-%Y')` varchar(69)
,`date_format(``v_journal``.``Date``,'%m-%Y')` varchar(7)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_rev_exp_chart`
-- (See below for the actual view)
--
CREATE TABLE `v_rev_exp_chart` (
`Rev` double(17,0)
,`Exp` decimal(32,0)
,`MonthName` varchar(69)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_sub_service`
-- (See below for the actual view)
--
CREATE TABLE `v_sub_service` (
`service_id` bigint(20)
,`service_name` varchar(255)
,`sub_service_id` bigint(20) unsigned
,`sub_service_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_supplier`
-- (See below for the actual view)
--
CREATE TABLE `v_supplier` (
`SupplierID` int(8)
,`SupplierCatID` int(8)
,`SupplierCategory` varchar(66)
,`Category` varchar(35)
,`SupplierName` varchar(35)
,`Address` varchar(75)
,`Phone` varchar(25)
,`Email` varchar(25)
,`Active` varchar(3)
,`InvoiceDueDays` int(10)
,`eDate` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_supplier_balance`
-- (See below for the actual view)
--
CREATE TABLE `v_supplier_balance` (
`SupplierID` int(8)
,`Date` varchar(37)
,`Dr` double(19,2)
,`Cr` double(19,2)
,`Balance` double(19,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_user`
-- (See below for the actual view)
--
CREATE TABLE `v_user` (
`UserID` int(8)
,`FullName` varchar(55)
,`Email` varchar(55)
,`Password` varchar(75)
,`UserType` varchar(25)
,`eDate` timestamp
,`Active` varchar(5)
,`BranchName` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_voucher`
-- (See below for the actual view)
--
CREATE TABLE `v_voucher` (
`VoucherMstID` int(12)
,`VoucherCode` varchar(35)
,`VoucherTypeName` varchar(35)
,`Voucher` varchar(15)
,`Date` date
,`Narration` varchar(255)
,`Amount` double(19,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_voucher_amount`
-- (See below for the actual view)
--
CREATE TABLE `v_voucher_amount` (
`Amount` double(19,2)
,`VoucherMstID` int(12)
,`Voucher` varchar(15)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_voucher_detail`
-- (See below for the actual view)
--
CREATE TABLE `v_voucher_detail` (
`VoucherMstID` int(12)
,`VoucherCodeID` int(10)
,`Voucher` varchar(15)
,`NarrationMaster` varchar(255)
,`Date` date
,`ChOfAcc` int(10)
,`ChartOfAccountName` varchar(75)
,`Debit` double(10,2)
,`Credit` double(10,2)
,`InvoiceNo` varchar(75)
,`Narration` varchar(255)
,`SupplierID` int(12)
,`PartyID` int(8)
,`RefNo` varchar(75)
,`PartyName` varchar(255)
,`SupplierName` varchar(35)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_voucher_master`
-- (See below for the actual view)
--
CREATE TABLE `v_voucher_master` (
`VoucherMstID` int(12)
,`VoucherCodeID` int(10)
,`Voucher` varchar(15)
,`Date` date
,`Narration` varchar(255)
,`VoucherTypeID` int(8)
,`VoucherCode` varchar(35)
,`VoucherTypeName` varchar(35)
);

-- --------------------------------------------------------

--
-- Structure for view `ajax_invoice`
--
DROP TABLE IF EXISTS `ajax_invoice`;

CREATE OR REPLACE VIEW `ajax_invoice`  AS SELECT `item`.`ItemCode` AS `ItemCode`, `item`.`ItemName` AS `ItemName`, `invoice_detail`.`VisaType` AS `VisaType`, `invoice_detail`.`PaxName` AS `PaxName`, `invoice_detail`.`PNR` AS `PNR`, `invoice_detail`.`Sector` AS `Sector`, `invoice_detail`.`Fare` AS `Fare`, `invoice_detail`.`RefNo` AS `RefNo`, `invoice_detail`.`Taxable` AS `Taxable`, if(`invoice_master`.`InvoiceTypeID` = 1 or `invoice_master`.`InvoiceTypeID` = 3,`invoice_detail`.`Service`,`invoice_detail`.`Discount`) AS `Service`, `invoice_detail`.`OPVAT` AS `OPVAT`, `invoice_detail`.`IPVAT` AS `IPVAT`, if(`invoice_master`.`InvoiceTypeID` = 1 or `invoice_master`.`InvoiceTypeID` = 3,`invoice_detail`.`Discount`,0) AS `Discount`, `invoice_detail`.`InvoiceDetailID` AS `InvoiceDetailID`, `invoice_detail`.`InvoiceMasterID` AS `InvoiceMasterID`, `invoice_detail`.`ItemID` AS `ItemID`, `invoice_detail`.`SupplierID` AS `SupplierID`, `supplier`.`SupplierName` AS `SupplierName`, `invoice_master`.`Date` AS `Date`, `invoice_master`.`InvoiceTypeID` AS `InvoiceTypeID`, `invoice_type`.`InvoiceTypeCode` AS `InvoiceTypeCode`, `invoice_master`.`UserID` AS `UserID`, `party`.`PartyName` AS `PartyName`, `invoice_master`.`Total` AS `Total`, `invoice_master`.`PartyID` AS `PartyID`, `party`.`Phone` AS `Phone`, `invoice_type`.`InvoiceType` AS `InvoiceType`, `user`.`FullName` AS `SalemanName`, `invoice_master`.`Voucher` AS `Voucher`, `invoice_master`.`PaymentMode` AS `PaymentMode`, `invoice_detail`.`Passport` AS `Passport`, `invoice_detail`.`DepartureDate` AS `DepartureDate`, `invoice_detail`.`Contact` AS `Contact`, `invoice_detail`.`UmrahFare` AS `UmrahFare`, `invoice_detail`.`RoomType` AS `RoomType`, `invoice_detail`.`PickPoint` AS `PickPoint`, `invoice_master`.`Paid` AS `Paid`, `invoice_master`.`BankCharges` AS `BankCharges`, `invoice_master`.`BankName` AS `BankName`, `invoice_master`.`Balance` AS `Balance` FROM ((((((`invoice_detail` join `item` on(`invoice_detail`.`ItemID` = `item`.`ItemID`)) join `supplier` on(`invoice_detail`.`SupplierID` = `supplier`.`SupplierID`)) join `invoice_master` on(`invoice_detail`.`InvoiceMasterID` = `invoice_master`.`InvoiceMasterID`)) join `invoice_type` on(`invoice_master`.`InvoiceTypeID` = `invoice_type`.`InvoiceTypeID`)) join `party` on(`invoice_master`.`PartyID` = `party`.`PartyID`)) join `user` on(`invoice_master`.`UserID` = `user`.`UserID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_cashflow`
--
DROP TABLE IF EXISTS `v_cashflow`;

CREATE OR REPLACE VIEW `v_cashflow`  AS SELECT sum(ifnull(`journal`.`Dr`,0)) AS `Dr`, sum(ifnull(`journal`.`Cr`,0)) AS `Cr`, sum(ifnull(`journal`.`Dr`,0)) - sum(ifnull(`journal`.`Cr`,0)) AS `Balance`, date_format(`journal`.`Date`,'%M-%Y') AS `MonthName`, date_format(`journal`.`Date`,'%m-%Y') AS `mMonthName`, date_format(`journal`.`Date`,'%Y') AS `Year` FROM `journal` WHERE `journal`.`ChartOfAccountID` in (110201,110250,110101,110200) GROUP BY date_format(`journal`.`Date`,'%M-%Y'), date_format(`journal`.`Date`,'%m-%Y'), date_format(`journal`.`Date`,'%Y') ;

-- --------------------------------------------------------

--
-- Structure for view `v_chartofaccount`
--
DROP TABLE IF EXISTS `v_chartofaccount`;

CREATE OR REPLACE VIEW `v_chartofaccount`  AS SELECT `chartofaccount`.`ChartOfAccountID` AS `ChartOfAccountID`, `chartofaccount`.`ChartOfAccountName` AS `ChartOfAccountName`, `chartofaccount`.`CODE` AS `CODE` FROM `chartofaccount` WHERE right(`chartofaccount`.`ChartOfAccountID`,5) = 0 AND `chartofaccount`.`ChartOfAccountName` is not null ;

-- --------------------------------------------------------

--
-- Structure for view `v_estimate_detail`
--
DROP TABLE IF EXISTS `v_estimate_detail`;

CREATE OR REPLACE VIEW `v_estimate_detail`  AS SELECT `estimate_detail`.`EstimateDetailID` AS `EstimateDetailID`, `estimate_detail`.`EstimateMasterID` AS `EstimateMasterID`, `estimate_detail`.`EstimateNo` AS `EstimateNo`, `estimate_detail`.`EstimateDate` AS `EstimateDate`, `estimate_detail`.`ItemID` AS `ItemID`, `item`.`ItemName` AS `ItemName`, `estimate_detail`.`Qty` AS `Qty`, `estimate_detail`.`Rate` AS `Rate`, `estimate_detail`.`Total` AS `Total`, `estimate_detail`.`Description` AS `Description`, `estimate_detail`.`TaxPer` AS `TaxPer`, `estimate_detail`.`Tax` AS `Tax` FROM (`estimate_detail` join `item` on(`estimate_detail`.`ItemID` = `item`.`ItemID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_estimate_master`
--
DROP TABLE IF EXISTS `v_estimate_master`;

CREATE OR REPLACE VIEW `v_estimate_master`  AS SELECT `estimate_master`.`EstimateMasterID` AS `EstimateMasterID`, `estimate_master`.`EstimateNo` AS `EstimateNo`, `estimate_master`.`PartyID` AS `PartyID`, `party`.`PartyName` AS `PartyName`, `estimate_master`.`PlaceOfSupply` AS `PlaceOfSupply`, `estimate_master`.`ReferenceNo` AS `ReferenceNo`, `estimate_master`.`EstimateDate` AS `EstimateDate`, `estimate_master`.`Total` AS `Total`, `estimate_master`.`CustomerNotes` AS `CustomerNotes`, `estimate_master`.`TermAndCondition` AS `TermAndCondition`, `estimate_master`.`File` AS `File`, `estimate_master`.`UserID` AS `UserID`, `estimate_master`.`Subject` AS `Subject`, `party`.`Address` AS `Address`, `party`.`Phone` AS `Phone`, `party`.`Email` AS `Email`, `estimate_master`.`Date` AS `Date`, `estimate_master`.`SubTotal` AS `SubTotal`, `estimate_master`.`TaxPer` AS `TaxPer`, `estimate_master`.`Tax` AS `Tax`, `estimate_master`.`DiscountPer` AS `DiscountPer`, `estimate_master`.`Discount` AS `Discount`, `estimate_master`.`WalkinCustomerName` AS `WalkinCustomerName`, `estimate_master`.`Shipping` AS `Shipping`, `estimate_master`.`DescriptionNotes` AS `DescriptionNotes`, `estimate_master`.`ExpiryDate` AS `ExpiryDate`, `estimate_master`.`GrandTotal` AS `GrandTotal`, `party`.`TRN` AS `TRN`, `party`.`Mobile` AS `Mobile`, `party`.`Website` AS `Website`, `party`.`Active` AS `Active`, `party`.`InvoiceDueDays` AS `InvoiceDueDays`, `party`.`eDate` AS `eDate` FROM (`estimate_master` join `party` on(`estimate_master`.`PartyID` = `party`.`PartyID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_expense`
--
DROP TABLE IF EXISTS `v_expense`;

CREATE OR REPLACE VIEW `v_expense`  AS SELECT `expense_master`.`ExpenseMasterID` AS `ExpenseMasterID`, `expense_master`.`Date` AS `Date`, date_format(`expense_master`.`Date`,'%d-%m-%Y') AS `Date1`, `expense_master`.`ChartOfAccountID` AS `ChartOfAccountID`, `chartofaccount`.`ChartOfAccountName` AS `ChartOfAccountName`, `expense_master`.`SupplierID` AS `SupplierID`, `supplier`.`SupplierName` AS `SupplierName`, `expense_master`.`ReferenceNo` AS `ReferenceNo`, `expense_master`.`ExpenseNo` AS `ExpenseNo`, `expense_master`.`GrantTotal` AS `GrantTotal`, `expense_master`.`SubTotal` AS `SubTotal`, `expense_master`.`Tax` AS `Tax` FROM ((`expense_master` join `chartofaccount` on(`expense_master`.`ChartOfAccountID` = `chartofaccount`.`ChartOfAccountID`)) join `supplier` on(`expense_master`.`SupplierID` = `supplier`.`SupplierID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_expense_chart`
--
DROP TABLE IF EXISTS `v_expense_chart`;

CREATE OR REPLACE VIEW `v_expense_chart`  AS SELECT date_format(`v_journal`.`Date`,'%M-%Y') AS `MonthName`, sum(if(`v_journal`.`Dr` is null,0,`v_journal`.`Dr`)) - sum(if(`v_journal`.`Cr` is null,0,`v_journal`.`Cr`)) AS `Balance`, `v_journal`.`ChartOfAccountName` AS `ChartOfAccountName` FROM `v_journal` WHERE `v_journal`.`CODE` = 'E' GROUP BY date_format(`v_journal`.`Date`,'%M-%Y'), `v_journal`.`ChartOfAccountName` ;

-- --------------------------------------------------------

--
-- Structure for view `v_expense_detail`
--
DROP TABLE IF EXISTS `v_expense_detail`;

CREATE OR REPLACE VIEW `v_expense_detail`  AS SELECT `expense_master`.`ExpenseNo` AS `ExpenseNo`, `expense_master`.`Date` AS `Date`, `chartofaccount`.`ChartOfAccountName` AS `ChartOfAccountName`, `expense_detail`.`ExpenseDetailID` AS `ExpenseDetailID`, `expense_detail`.`ExpenseMasterID` AS `ExpenseMasterID`, `expense_detail`.`ChartOfAccountID` AS `ChartOfAccountID`, `expense_detail`.`Notes` AS `Notes`, `expense_detail`.`TaxPer` AS `TaxPer`, `expense_detail`.`Tax` AS `Tax`, `expense_detail`.`Amount` AS `Amount`, `supplier`.`SupplierName` AS `SupplierName`, `expense_detail`.`AmountAfterTax` AS `AmountAfterTax`, `expense_master`.`ReferenceNo` AS `ReferenceNo` FROM (((`expense_detail` join `expense_master` on(`expense_master`.`ExpenseMasterID` = `expense_detail`.`ExpenseMasterID`)) join `chartofaccount` on(`expense_detail`.`ChartOfAccountID` = `chartofaccount`.`ChartOfAccountID`)) join `supplier` on(`expense_master`.`SupplierID` = `supplier`.`SupplierID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_exp_rev_1`
--
DROP TABLE IF EXISTS `v_exp_rev_1`;

CREATE OR REPLACE VIEW `v_exp_rev_1`  AS SELECT if(`v_journal`.`Dr` is null,0,`v_journal`.`Dr`) AS `Dr`, if(`v_journal`.`Cr` is null,0,`v_journal`.`Cr`) AS `Cr`, `v_journal`.`CODE` AS `code`, date_format(`v_journal`.`Date`,'%M-%Y') AS `Date`, date_format(`v_journal`.`Date`,'%m-%Y') AS `mDate`, date_format(`v_journal`.`Date`,'%Y') AS `yDate` FROM `v_journal` WHERE `v_journal`.`CODE` in ('R','E') AND `v_journal`.`ChartOfAccountID` <> 410200 ;

-- --------------------------------------------------------

--
-- Structure for view `v_followup`
--
DROP TABLE IF EXISTS `v_followup`;

CREATE OR REPLACE VIEW `v_followup`  AS SELECT `leads`.`id` AS `id`, `leads`.`name` AS `name`, `leads`.`tel` AS `tel`, `leads`.`other_tel` AS `other_tel`, `leads`.`business_details` AS `business_details`, `leads`.`service` AS `service`, `lead_details`.`follow_up_date` AS `follow_up_date`, `lead_details`.`notes` AS `notes`, `services`.`name` AS `ServiceName`, `user`.`FullName` AS `FullName`, `lead_details`.`created_at` AS `created_at`, `leads`.`agent_id` AS `agent_id` FROM (((`leads` join `lead_details` on(`leads`.`id` = `lead_details`.`lead_id`)) join `services` on(`leads`.`service_id` = `services`.`id`)) join `user` on(`leads`.`agent_id` = `user`.`UserID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_income_expense`
--
DROP TABLE IF EXISTS `v_income_expense`;

CREATE OR REPLACE VIEW `v_income_expense`  AS SELECT sum(if(`v_exp_rev_1`.`code` = 'R',`v_exp_rev_1`.`Cr`,0)) - sum(if(`v_exp_rev_1`.`code` = 'R',`v_exp_rev_1`.`Dr`,0)) AS `Rev`, sum(if(`v_exp_rev_1`.`code` = 'E',`v_exp_rev_1`.`Dr`,0)) - sum(if(`v_exp_rev_1`.`code` = 'E',`v_exp_rev_1`.`Cr`,0)) AS `Exp`, `v_exp_rev_1`.`Date` AS `Date`, `v_exp_rev_1`.`mDate` AS `mDate`, `v_exp_rev_1`.`yDate` AS `yDate` FROM `v_exp_rev_1` GROUP BY `v_exp_rev_1`.`mDate`, `v_exp_rev_1`.`Date` ORDER BY `v_exp_rev_1`.`mDate` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `v_invoice_balance`
--
DROP TABLE IF EXISTS `v_invoice_balance`;

CREATE OR REPLACE VIEW `v_invoice_balance`  AS SELECT sum(ifnull(`journal`.`Dr`,0) - ifnull(`journal`.`Cr`,0)) AS `Balance`, `journal`.`InvoiceMasterID` AS `InvoiceMasterID` FROM `journal` WHERE `journal`.`ChartOfAccountID` = 110400 AND `journal`.`JournalType` in ('UI','SI','CR','BR','JV') AND `journal`.`InvoiceMasterID` is not null GROUP BY `journal`.`InvoiceMasterID`union select sum(ifnull(`journal`.`Cr`,0) - ifnull(`journal`.`Dr`,0)) AS `Balance`,`journal`.`InvoiceMasterID` AS `InvoiceMasterID` from `journal` where `journal`.`ChartOfAccountID` = 110400 and `journal`.`JournalType` in ('UR','SR','CP','BP','JV') and `journal`.`InvoiceMasterID` is not null group by `journal`.`InvoiceMasterID` order by `InvoiceMasterID` desc  ;

-- --------------------------------------------------------

--
-- Structure for view `v_invoice_detail`
--
DROP TABLE IF EXISTS `v_invoice_detail`;

CREATE OR REPLACE VIEW `v_invoice_detail`  AS SELECT `item`.`ItemCode` AS `ItemCode`, `item`.`ItemName` AS `ItemName`, `invoice_detail`.`VisaType` AS `VisaType`, `invoice_detail`.`PaxName` AS `PaxName`, `invoice_detail`.`PNR` AS `PNR`, `invoice_detail`.`Sector` AS `Sector`, `invoice_detail`.`Fare` AS `Fare`, `invoice_detail`.`RefNo` AS `RefNo`, if(`invoice_master`.`InvoiceTypeID` = 1 or `invoice_master`.`InvoiceTypeID` = 3,`invoice_detail`.`Taxable`,-`invoice_detail`.`Taxable`) AS `Taxable`, if(`invoice_master`.`InvoiceTypeID` = 1 or `invoice_master`.`InvoiceTypeID` = 3,`invoice_detail`.`Service`,-`invoice_detail`.`Service`) AS `Service`, `invoice_detail`.`OPVAT` AS `OPVAT`, `invoice_detail`.`IPVAT` AS `IPVAT`, if(`invoice_master`.`InvoiceTypeID` = 1 or `invoice_master`.`InvoiceTypeID` = 3,`invoice_detail`.`Discount`,0) AS `Discount`, `invoice_detail`.`InvoiceDetailID` AS `InvoiceDetailID`, `invoice_detail`.`InvoiceMasterID` AS `InvoiceMasterID`, `invoice_detail`.`ItemID` AS `ItemID`, `invoice_detail`.`SupplierID` AS `SupplierID`, `supplier`.`SupplierName` AS `SupplierName`, `invoice_master`.`Date` AS `Date`, `invoice_master`.`InvoiceTypeID` AS `InvoiceTypeID`, `invoice_type`.`InvoiceTypeCode` AS `InvoiceTypeCode`, `invoice_master`.`UserID` AS `UserID`, `party`.`PartyName` AS `PartyName`, `invoice_detail`.`Total` AS `Total`, `invoice_master`.`PartyID` AS `PartyID`, `party`.`Phone` AS `Phone`, `invoice_type`.`InvoiceType` AS `InvoiceType`, `user`.`FullName` AS `SalemanName`, `invoice_master`.`Voucher` AS `Voucher`, `invoice_master`.`PaymentMode` AS `PaymentMode`, `invoice_detail`.`Passport` AS `Passport`, `invoice_detail`.`DepartureDate` AS `DepartureDate`, `invoice_detail`.`Contact` AS `Contact`, `invoice_detail`.`UmrahFare` AS `UmrahFare`, `invoice_detail`.`RoomType` AS `RoomType`, `invoice_detail`.`PickPoint` AS `PickPoint`, `invoice_master`.`Paid` AS `Paid`, `invoice_detail`.`TicketNo` AS `TicketNo`, `invoice_detail`.`AirlineName` AS `AirlineName` FROM ((((((`invoice_detail` join `item` on(`invoice_detail`.`ItemID` = `item`.`ItemID`)) join `supplier` on(`invoice_detail`.`SupplierID` = `supplier`.`SupplierID`)) join `invoice_master` on(`invoice_detail`.`InvoiceMasterID` = `invoice_master`.`InvoiceMasterID`)) join `invoice_type` on(`invoice_master`.`InvoiceTypeID` = `invoice_type`.`InvoiceTypeID`)) join `party` on(`invoice_master`.`PartyID` = `party`.`PartyID`)) join `user` on(`invoice_master`.`UserID` = `user`.`UserID`)) ORDER BY `invoice_detail`.`InvoiceMasterID` DESC ;

-- --------------------------------------------------------

--
-- Structure for view `v_invoice_detail1`
--
DROP TABLE IF EXISTS `v_invoice_detail1`;

CREATE OR REPLACE VIEW `v_invoice_detail1`  AS SELECT `v_invoice_detail`.`ItemCode` AS `ItemCode`, `v_invoice_detail`.`ItemName` AS `ItemName`, `v_invoice_detail`.`VisaType` AS `VisaType`, `v_invoice_detail`.`PaxName` AS `PaxName`, `v_invoice_detail`.`PNR` AS `PNR`, `v_invoice_detail`.`Sector` AS `Sector`, ifnull(`v_invoice_detail`.`Fare`,0) AS `Fare`, `v_invoice_detail`.`RefNo` AS `RefNo`, `v_invoice_detail`.`Taxable` AS `Taxable`, ifnull(`v_invoice_detail`.`Service`,0) AS `Service`, `v_invoice_detail`.`OPVAT` AS `OPVAT`, `v_invoice_detail`.`IPVAT` AS `IPVAT`, ifnull(`v_invoice_detail`.`Discount`,0) AS `Discount`, ifnull(`v_invoice_detail`.`Total`,0) AS `Total`, `v_invoice_detail`.`InvoiceDetailID` AS `InvoiceDetailID`, `v_invoice_detail`.`InvoiceMasterID` AS `InvoiceMasterID`, `v_invoice_detail`.`ItemID` AS `ItemID`, `v_invoice_detail`.`SupplierID` AS `SupplierID`, `v_invoice_detail`.`SupplierName` AS `SupplierName`, `v_invoice_detail`.`Date` AS `Date`, `v_invoice_detail`.`InvoiceTypeID` AS `InvoiceTypeID`, `v_invoice_detail`.`InvoiceTypeCode` AS `InvoiceTypeCode`, `v_invoice_detail`.`UserID` AS `UserID`, `v_invoice_detail`.`PartyName` AS `PartyName`, `v_invoice_detail`.`SalemanName` AS `SalemanName` FROM `v_invoice_detail` ;

-- --------------------------------------------------------

--
-- Structure for view `v_invoice_detail2`
--
DROP TABLE IF EXISTS `v_invoice_detail2`;

CREATE OR REPLACE VIEW `v_invoice_detail2`  AS SELECT `item`.`ItemID` AS `ItemID`, `item`.`ItemType` AS `ItemType`, `item`.`ItemCode` AS `ItemCode`, `item`.`ItemName` AS `ItemName`, `invoice_detail`.`InvoiceDetailID` AS `InvoiceDetailID`, `invoice_detail`.`InvoiceMasterID` AS `InvoiceMasterID`, `invoice_detail`.`SupplierID` AS `SupplierID`, `invoice_detail`.`VisaType` AS `VisaType`, `invoice_detail`.`PaxName` AS `PaxName`, `invoice_detail`.`PNR` AS `PNR`, `invoice_detail`.`Sector` AS `Sector`, `invoice_detail`.`Fare` AS `Fare`, `invoice_detail`.`RefNo` AS `RefNo`, `invoice_detail`.`Taxable` AS `Taxable`, `invoice_detail`.`Service` AS `Service`, `invoice_detail`.`Discount` AS `Discount`, `invoice_detail`.`Total` AS `Total`, `invoice_detail`.`Passport` AS `Passport`, `invoice_detail`.`TicketNo` AS `TicketNo`, `invoice_detail`.`AirlineName` AS `AirlineName`, `invoice_detail`.`DepartureDate` AS `DepartureDate` FROM (`item` join `invoice_detail` on(`item`.`ItemID` = `invoice_detail`.`ItemID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_invoice_detail22`
--
DROP TABLE IF EXISTS `v_invoice_detail22`;

CREATE OR REPLACE VIEW `v_invoice_detail22`  AS SELECT `item`.`ItemCode` AS `ItemCode`, `item`.`ItemName` AS `ItemName`, `invoice_detail`.`VisaType` AS `VisaType`, `invoice_detail`.`PaxName` AS `PaxName`, `invoice_detail`.`PNR` AS `PNR`, `invoice_detail`.`Sector` AS `Sector`, `invoice_detail`.`Fare` AS `Fare`, `invoice_detail`.`RefNo` AS `RefNo`, `invoice_detail`.`Taxable` AS `Taxable`, if(`invoice_master`.`InvoiceTypeID` = 1 or `invoice_master`.`InvoiceTypeID` = 3,`invoice_detail`.`Service`,`invoice_detail`.`Discount`) AS `Service`, `invoice_detail`.`OPVAT` AS `OPVAT`, `invoice_detail`.`IPVAT` AS `IPVAT`, if(`invoice_master`.`InvoiceTypeID` = 1 or `invoice_master`.`InvoiceTypeID` = 3,`invoice_detail`.`Discount`,0) AS `Discount`, `invoice_detail`.`InvoiceDetailID` AS `InvoiceDetailID`, `invoice_detail`.`InvoiceMasterID` AS `InvoiceMasterID`, `invoice_detail`.`ItemID` AS `ItemID`, `invoice_detail`.`SupplierID` AS `SupplierID`, `supplier`.`SupplierName` AS `SupplierName`, `invoice_master`.`Date` AS `Date`, `invoice_master`.`InvoiceTypeID` AS `InvoiceTypeID`, `invoice_type`.`InvoiceTypeCode` AS `InvoiceTypeCode`, `invoice_master`.`UserID` AS `UserID`, `party`.`PartyName` AS `PartyName`, `invoice_master`.`PartyID` AS `PartyID`, `party`.`Phone` AS `Phone`, `invoice_type`.`InvoiceType` AS `InvoiceType`, `user`.`FullName` AS `SalemanName`, `invoice_master`.`Voucher` AS `Voucher`, `invoice_master`.`PaymentMode` AS `PaymentMode`, `invoice_detail`.`Total` AS `Total` FROM ((((((`invoice_detail` join `item` on(`invoice_detail`.`ItemID` = `item`.`ItemID`)) join `supplier` on(`invoice_detail`.`SupplierID` = `supplier`.`SupplierID`)) join `invoice_master` on(`invoice_detail`.`InvoiceMasterID` = `invoice_master`.`InvoiceMasterID`)) join `invoice_type` on(`invoice_master`.`InvoiceTypeID` = `invoice_type`.`InvoiceTypeID`)) join `party` on(`invoice_master`.`PartyID` = `party`.`PartyID`)) join `user` on(`invoice_master`.`UserID` = `user`.`UserID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_invoice_detail_copy`
--
DROP TABLE IF EXISTS `v_invoice_detail_copy`;

CREATE OR REPLACE VIEW `v_invoice_detail_copy`  AS SELECT `item`.`ItemCode` AS `ItemCode`, `item`.`ItemName` AS `ItemName`, `invoice_detail`.`VisaType` AS `VisaType`, `invoice_detail`.`PaxName` AS `PaxName`, `invoice_detail`.`PNR` AS `PNR`, `invoice_detail`.`Sector` AS `Sector`, `invoice_detail`.`Fare` AS `Fare`, `invoice_detail`.`RefNo` AS `RefNo`, `invoice_detail`.`Taxable` AS `Taxable`, `invoice_detail`.`Service` AS `Service`, `invoice_detail`.`OPVAT` AS `OPVAT`, `invoice_detail`.`IPVAT` AS `IPVAT`, `invoice_detail`.`Discount` AS `Discount`, `invoice_detail`.`Total` AS `Total`, `invoice_detail`.`InvoiceDetailID` AS `InvoiceDetailID`, `invoice_detail`.`InvoiceMasterID` AS `InvoiceMasterID`, `invoice_detail`.`ItemID` AS `ItemID`, `invoice_detail`.`SupplierID` AS `SupplierID`, `supplier`.`SupplierName` AS `SupplierName`, `invoice_master`.`Date` AS `Date`, `invoice_master`.`InvoiceTypeID` AS `InvoiceTypeID`, `invoice_type`.`InvoiceTypeCode` AS `InvoiceTypeCode`, `invoice_master`.`UserID` AS `UserID` FROM ((((`invoice_detail` join `item` on(`invoice_detail`.`ItemID` = `item`.`ItemID`)) join `supplier` on(`invoice_detail`.`SupplierID` = `supplier`.`SupplierID`)) join `invoice_master` on(`invoice_detail`.`InvoiceMasterID` = `invoice_master`.`InvoiceMasterID`)) join `invoice_type` on(`invoice_master`.`InvoiceTypeID` = `invoice_type`.`InvoiceTypeID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_invoice_detail_umrah`
--
DROP TABLE IF EXISTS `v_invoice_detail_umrah`;

CREATE OR REPLACE VIEW `v_invoice_detail_umrah`  AS SELECT `item`.`ItemCode` AS `ItemCode`, `item`.`ItemName` AS `ItemName`, `invoice_detail`.`VisaType` AS `VisaType`, `invoice_detail`.`PaxName` AS `PaxName`, `invoice_detail`.`PNR` AS `PNR`, `invoice_detail`.`Sector` AS `Sector`, `invoice_detail`.`Fare` AS `Fare`, `invoice_detail`.`RefNo` AS `RefNo`, `invoice_detail`.`Taxable` AS `Taxable`, if(`invoice_master`.`InvoiceTypeID` = 1 or `invoice_master`.`InvoiceTypeID` = 3,`invoice_detail`.`Service`,`invoice_detail`.`Discount`) AS `Service`, `invoice_detail`.`OPVAT` AS `OPVAT`, `invoice_detail`.`IPVAT` AS `IPVAT`, if(`invoice_master`.`InvoiceTypeID` = 1 or `invoice_master`.`InvoiceTypeID` = 3,`invoice_detail`.`Discount`,0) AS `Discount`, `invoice_detail`.`InvoiceDetailID` AS `InvoiceDetailID`, `invoice_detail`.`InvoiceMasterID` AS `InvoiceMasterID`, `invoice_detail`.`ItemID` AS `ItemID`, `invoice_detail`.`SupplierID` AS `SupplierID`, `supplier`.`SupplierName` AS `SupplierName`, `invoice_detail`.`DepartureDate` AS `DepartureDate`, `invoice_master`.`Date` AS `Date`, `invoice_master`.`InvoiceTypeID` AS `InvoiceTypeID`, `invoice_type`.`InvoiceTypeCode` AS `InvoiceTypeCode`, `invoice_master`.`UserID` AS `UserID`, `party`.`PartyName` AS `PartyName`, `invoice_master`.`PartyID` AS `PartyID`, `party`.`Phone` AS `Phone`, `invoice_type`.`InvoiceType` AS `InvoiceType`, `user`.`FullName` AS `SalemanName`, `invoice_master`.`Voucher` AS `Voucher`, `invoice_master`.`PaymentMode` AS `PaymentMode`, `invoice_detail`.`UmrahFare` AS `UmrahFare`, `invoice_detail`.`Total` AS `Total`, `invoice_detail`.`PaxContact` AS `PaxContact`, `invoice_detail`.`PickPoint` AS `PickPoint`, `invoice_detail`.`RoomType` AS `RoomType`, `invoice_detail`.`Paid` AS `Paid`, `invoice_detail`.`PaymentInBus` AS `PaymentInBus`, `invoice_detail`.`Contact` AS `Contact`, `invoice_detail`.`Passport` AS `Passport`, `invoice_detail`.`PassportFile` AS `PassportFile`, `invoice_detail`.`EmirateIDFileFront` AS `EmirateIDFileFront`, `invoice_detail`.`EmirateIDFileBack` AS `EmirateIDFileBack`, `invoice_detail`.`PictureFile` AS `PictureFile`, `invoice_detail`.`Nationality` AS `Nationality` FROM ((((((`invoice_detail` join `item` on(`invoice_detail`.`ItemID` = `item`.`ItemID`)) join `supplier` on(`invoice_detail`.`SupplierID` = `supplier`.`SupplierID`)) join `invoice_master` on(`invoice_detail`.`InvoiceMasterID` = `invoice_master`.`InvoiceMasterID`)) join `invoice_type` on(`invoice_master`.`InvoiceTypeID` = `invoice_type`.`InvoiceTypeID`)) join `party` on(`invoice_master`.`PartyID` = `party`.`PartyID`)) join `user` on(`invoice_master`.`UserID` = `user`.`UserID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_invoice_detial_umrah`
--
DROP TABLE IF EXISTS `v_invoice_detial_umrah`;

CREATE OR REPLACE VIEW `v_invoice_detial_umrah`  AS SELECT `item`.`ItemCode` AS `ItemCode`, `item`.`ItemName` AS `ItemName`, `invoice_detail`.`VisaType` AS `VisaType`, `invoice_detail`.`PaxName` AS `PaxName`, `invoice_detail`.`PNR` AS `PNR`, `invoice_detail`.`Sector` AS `Sector`, `invoice_detail`.`Fare` AS `Fare`, `invoice_detail`.`RefNo` AS `RefNo`, `invoice_detail`.`Taxable` AS `Taxable`, if(`invoice_master`.`InvoiceTypeID` = 1,`invoice_detail`.`Service`,`invoice_detail`.`Discount`) AS `Service`, `invoice_detail`.`OPVAT` AS `OPVAT`, `invoice_detail`.`IPVAT` AS `IPVAT`, if(`invoice_master`.`InvoiceTypeID` = 1,`invoice_detail`.`Discount`,0) AS `Discount`, `invoice_detail`.`InvoiceDetailID` AS `InvoiceDetailID`, `invoice_detail`.`InvoiceMasterID` AS `InvoiceMasterID`, `invoice_detail`.`ItemID` AS `ItemID`, `invoice_detail`.`SupplierID` AS `SupplierID`, `supplier`.`SupplierName` AS `SupplierName`, `invoice_detail`.`DepartureDate` AS `DepartureDate`, `invoice_master`.`Date` AS `Date`, `invoice_master`.`InvoiceTypeID` AS `InvoiceTypeID`, `invoice_type`.`InvoiceTypeCode` AS `InvoiceTypeCode`, `invoice_master`.`UserID` AS `UserID`, `party`.`PartyName` AS `PartyName`, `invoice_master`.`PartyID` AS `PartyID`, `party`.`Phone` AS `Phone`, `invoice_type`.`InvoiceType` AS `InvoiceType`, `user`.`FullName` AS `SalemanName`, `invoice_master`.`Voucher` AS `Voucher`, `invoice_master`.`PaymentMode` AS `PaymentMode`, `invoice_detail`.`UmrahFare` AS `UmrahFare`, `invoice_detail`.`Total` AS `Total`, `invoice_detail`.`PaxContact` AS `PaxContact`, `invoice_detail`.`PickPoint` AS `PickPoint`, `invoice_detail`.`RoomType` AS `RoomType`, `invoice_detail`.`Paid` AS `Paid`, `invoice_detail`.`PaymentInBus` AS `PaymentInBus`, `invoice_detail`.`Contact` AS `Contact`, `invoice_detail`.`Passport` AS `Passport` FROM ((((((`invoice_detail` join `item` on(`invoice_detail`.`ItemID` = `item`.`ItemID`)) join `supplier` on(`invoice_detail`.`SupplierID` = `supplier`.`SupplierID`)) join `invoice_master` on(`invoice_detail`.`InvoiceMasterID` = `invoice_master`.`InvoiceMasterID`)) join `invoice_type` on(`invoice_master`.`InvoiceTypeID` = `invoice_type`.`InvoiceTypeID`)) join `party` on(`invoice_master`.`PartyID` = `party`.`PartyID`)) join `user` on(`invoice_master`.`UserID` = `user`.`UserID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_invoice_master`
--
DROP TABLE IF EXISTS `v_invoice_master`;

CREATE OR REPLACE VIEW `v_invoice_master`  AS SELECT `invoice_master`.`InvoiceMasterID` AS `InvoiceMasterID`, `invoice_master`.`InvoiceTypeID` AS `InvoiceTypeID`, `invoice_type`.`InvoiceTypeCode` AS `InvoiceTypeCode`, concat(`invoice_type`.`InvoiceTypeCode`,'-',`invoice_master`.`InvoiceMasterID`) AS `InvoiceCode`, `invoice_type`.`InvoiceType` AS `InvoiceType`, `invoice_master`.`Date` AS `Date`, `invoice_master`.`UserID` AS `UserID`, `invoice_master`.`PaymentMode` AS `PaymentMode`, `invoice_master`.`Total` AS `Total`, `invoice_master`.`Paid` AS `Paid`, `invoice_master`.`DueDate` AS `DueDate`, `invoice_master`.`Note` AS `Note`, `party`.`PartyName` AS `PartyName`, `party`.`Address` AS `Address`, `party`.`Phone` AS `Phone`, `party`.`Email` AS `Email`, `party`.`PartyID` AS `PartyID`, `party`.`TRN` AS `TRN`, `user`.`FullName` AS `FullName`, `v_invoice_balance`.`Balance` AS `Balance`, `invoice_master`.`LeadID` AS `LeadID`, `invoice_master`.`Document` AS `Document`, `invoice_master`.`Paid1` AS `Paid1`, `invoice_master`.`BankName` AS `BankName`, `invoice_master`.`Percentage` AS `Percentage`, `invoice_master`.`BankCharges` AS `BankCharges`, `invoice_master`.`GrandTotal` AS `GrandTotal` FROM ((((`invoice_master` join `invoice_type` on(`invoice_master`.`InvoiceTypeID` = `invoice_type`.`InvoiceTypeID`)) join `party` on(`invoice_master`.`PartyID` = `party`.`PartyID`)) join `user` on(`invoice_master`.`UserID` = `user`.`UserID`)) left join `v_invoice_balance` on(`invoice_master`.`InvoiceMasterID` = `v_invoice_balance`.`InvoiceMasterID`)) ORDER BY `invoice_master`.`InvoiceMasterID` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `v_invoice_master_copy`
--
DROP TABLE IF EXISTS `v_invoice_master_copy`;

CREATE OR REPLACE VIEW `v_invoice_master_copy`  AS SELECT `invoice_master`.`InvoiceMasterID` AS `InvoiceMasterID`, `invoice_master`.`InvoiceTypeID` AS `InvoiceTypeID`, `invoice_type`.`InvoiceTypeCode` AS `InvoiceTypeCode`, concat(`invoice_type`.`InvoiceTypeCode`,'-',`invoice_master`.`InvoiceMasterID`) AS `InvoiceCode`, `invoice_type`.`InvoiceType` AS `InvoiceType`, `invoice_master`.`Date` AS `Date`, `invoice_master`.`UserID` AS `UserID`, `invoice_master`.`PaymentMode` AS `PaymentMode`, `invoice_master`.`Total` AS `Total`, `invoice_master`.`Paid` AS `Paid`, `invoice_master`.`Balance` AS `Balance`, `invoice_master`.`DueDate` AS `DueDate`, `invoice_master`.`Note` AS `Note`, `party`.`PartyName` AS `PartyName`, `party`.`Address` AS `Address`, `party`.`Phone` AS `Phone`, `party`.`Email` AS `Email`, `party`.`PartyID` AS `PartyID` FROM (((`invoice_master` join `invoice_detail` on(`invoice_master`.`InvoiceMasterID` = `invoice_detail`.`InvoiceMasterID`)) join `invoice_type` on(`invoice_master`.`InvoiceTypeID` = `invoice_type`.`InvoiceTypeID`)) join `party` on(`invoice_master`.`PartyID` = `party`.`PartyID`)) ORDER BY `invoice_master`.`InvoiceMasterID` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `v_inv_detail_umrah`
--
DROP TABLE IF EXISTS `v_inv_detail_umrah`;

CREATE OR REPLACE VIEW `v_inv_detail_umrah`  AS SELECT `item`.`ItemCode` AS `ItemCode`, `item`.`ItemName` AS `ItemName`, `invoice_detail`.`VisaType` AS `VisaType`, `invoice_detail`.`PaxName` AS `PaxName`, `invoice_detail`.`PNR` AS `PNR`, `invoice_detail`.`Sector` AS `Sector`, `invoice_detail`.`Fare` AS `Fare`, `invoice_detail`.`RefNo` AS `RefNo`, `invoice_detail`.`Taxable` AS `Taxable`, if(`invoice_master`.`InvoiceTypeID` = 1 or `invoice_master`.`InvoiceTypeID` = 3,`invoice_detail`.`Service`,`invoice_detail`.`Discount`) AS `Service`, `invoice_detail`.`OPVAT` AS `OPVAT`, `invoice_detail`.`IPVAT` AS `IPVAT`, if(`invoice_master`.`InvoiceTypeID` = 1 or `invoice_master`.`InvoiceTypeID` = 3,`invoice_detail`.`Discount`,0) AS `Discount`, `invoice_detail`.`InvoiceDetailID` AS `InvoiceDetailID`, `invoice_detail`.`InvoiceMasterID` AS `InvoiceMasterID`, `invoice_detail`.`ItemID` AS `ItemID`, `invoice_detail`.`SupplierID` AS `SupplierID`, `supplier`.`SupplierName` AS `SupplierName`, `invoice_detail`.`DepartureDate` AS `DepartureDate`, `invoice_master`.`Date` AS `Date`, `invoice_master`.`InvoiceTypeID` AS `InvoiceTypeID`, `invoice_type`.`InvoiceTypeCode` AS `InvoiceTypeCode`, `invoice_master`.`UserID` AS `UserID`, `party`.`PartyName` AS `PartyName`, `invoice_master`.`PartyID` AS `PartyID`, `party`.`Phone` AS `Phone`, `invoice_type`.`InvoiceType` AS `InvoiceType`, `user`.`FullName` AS `SalemanName`, `invoice_master`.`Voucher` AS `Voucher`, `invoice_master`.`PaymentMode` AS `PaymentMode`, `invoice_detail`.`UmrahFare` AS `UmrahFare`, `invoice_detail`.`Total` AS `Total`, `invoice_detail`.`PaxContact` AS `PaxContact`, `invoice_detail`.`PickPoint` AS `PickPoint`, `invoice_detail`.`RoomType` AS `RoomType`, `invoice_detail`.`Paid` AS `Paid`, `invoice_detail`.`PaymentInBus` AS `PaymentInBus`, `invoice_detail`.`Contact` AS `Contact`, `invoice_detail`.`Passport` AS `Passport`, `invoice_detail`.`PassportFile` AS `PassportFile`, `invoice_detail`.`EmirateIDFileFront` AS `EmirateIDFileFront`, `invoice_detail`.`EmirateIDFileBack` AS `EmirateIDFileBack`, `invoice_detail`.`PictureFile` AS `PictureFile`, `invoice_detail`.`Nationality` AS `Nationality` FROM ((((((`invoice_detail` join `item` on(`invoice_detail`.`ItemID` = `item`.`ItemID`)) join `supplier` on(`invoice_detail`.`SupplierID` = `supplier`.`SupplierID`)) join `invoice_master` on(`invoice_detail`.`InvoiceMasterID` = `invoice_master`.`InvoiceMasterID`)) join `invoice_type` on(`invoice_master`.`InvoiceTypeID` = `invoice_type`.`InvoiceTypeID`)) join `party` on(`invoice_master`.`PartyID` = `party`.`PartyID`)) join `user` on(`invoice_master`.`UserID` = `user`.`UserID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_inv_paid`
--
DROP TABLE IF EXISTS `v_inv_paid`;

CREATE OR REPLACE VIEW `v_inv_paid`  AS SELECT `invoice_master`.`InvoiceMasterID` AS `InvoiceMasterID`, `invoice_master`.`GrandTotal` AS `Total`, `voucher_detail`.`InvoiceNo` AS `InvoiceNo`, sum(ifnull(`voucher_detail`.`Credit`,0)) AS `Paid`, `invoice_master`.`GrandTotal`- sum(ifnull(`voucher_detail`.`Credit`,0)) AS `Balance` FROM (`invoice_master` left join `voucher_detail` on(`invoice_master`.`InvoiceMasterID` = `voucher_detail`.`InvoiceNo`)) WHERE `voucher_detail`.`InvoiceNo` is not null AND `voucher_detail`.`ChOfAcc` = '110400' GROUP BY `invoice_master`.`InvoiceMasterID`, `invoice_master`.`Total`, `voucher_detail`.`InvoiceNo`, `invoice_master`.`GrandTotal` ;

-- --------------------------------------------------------

--
-- Structure for view `v_inv_paid_refund`
--
DROP TABLE IF EXISTS `v_inv_paid_refund`;

CREATE OR REPLACE VIEW `v_inv_paid_refund`  AS SELECT `invoice_master`.`InvoiceMasterID` AS `InvoiceMasterID`, `invoice_master`.`GrandTotal` AS `Total`, `voucher_detail`.`InvoiceNo` AS `InvoiceNo`, sum(ifnull(`voucher_detail`.`Debit`,0)) AS `Paid`, `invoice_master`.`GrandTotal`- sum(ifnull(`voucher_detail`.`Debit`,0)) AS `Balance` FROM (`invoice_master` left join `voucher_detail` on(`invoice_master`.`InvoiceMasterID` = `voucher_detail`.`InvoiceNo`)) WHERE `voucher_detail`.`InvoiceNo` is not null AND `voucher_detail`.`ChOfAcc` = '110400' GROUP BY `invoice_master`.`InvoiceMasterID`, `invoice_master`.`Total`, `voucher_detail`.`InvoiceNo` ;

-- --------------------------------------------------------

--
-- Structure for view `v_journal`
--
DROP TABLE IF EXISTS `v_journal`;

CREATE OR REPLACE VIEW `v_journal`  AS SELECT `journal`.`VHNO` AS `VHNO`, `journal`.`JournalType` AS `JournalType`, `journal`.`ChartOfAccountID` AS `ChartOfAccountID`, `chartofaccount`.`ChartOfAccountName` AS `ChartOfAccountName`, `journal`.`SupplierID` AS `SupplierID`, `journal`.`VoucherMstID` AS `VoucherMstID`, `journal`.`PettyMstID` AS `PettyMstID`, `journal`.`InvoiceMasterID` AS `InvoiceMasterID`, `journal`.`Date` AS `Date`, `journal`.`Dr` AS `Dr`, `journal`.`Cr` AS `Cr`, `journal`.`PartyID` AS `PartyID`, `journal`.`Narration` AS `Narration`, `chartofaccount`.`L1` AS `L1`, `chartofaccount`.`L2` AS `L2`, `chartofaccount`.`L3` AS `L3`, `chartofaccount`.`CODE` AS `CODE`, `journal`.`Trace` AS `Trace`, `journal`.`BankReconcile` AS `BankReconcile`, `journal`.`JournalID` AS `JournalID`, `chartofaccount`.`Category` AS `Category`, `chartofaccount`.`Level` AS `Level`, `journal`.`ExpenseMasterID` AS `ExpenseMasterID` FROM (`chartofaccount` join `journal` on(`chartofaccount`.`ChartOfAccountID` = `journal`.`ChartOfAccountID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_journal_copy`
--
DROP TABLE IF EXISTS `v_journal_copy`;

CREATE OR REPLACE VIEW `v_journal_copy`  AS SELECT `journal`.`VHNO` AS `VHNO`, `journal`.`JournalType` AS `JournalType`, `journal`.`ChartOfAccountID` AS `ChartOfAccountID`, `chartofaccount`.`ChartOfAccountName` AS `ChartOfAccountName`, `journal`.`SupplierID` AS `SupplierID`, `journal`.`VoucherMstID` AS `VoucherMstID`, `journal`.`PettyMstID` AS `PettyMstID`, `journal`.`InvoiceMasterID` AS `InvoiceMasterID`, `journal`.`Date` AS `Date`, sum(`journal`.`Dr`) AS `Dr`, sum(`journal`.`Cr`) AS `Cr`, `journal`.`PartyID` AS `PartyID`, `journal`.`Narration` AS `Narration` FROM (`chartofaccount` join `journal` on(`chartofaccount`.`ChartOfAccountID` = `journal`.`ChartOfAccountID`)) GROUP BY `journal`.`VHNO`, `journal`.`JournalType`, `journal`.`ChartOfAccountID`, `chartofaccount`.`ChartOfAccountName`, `journal`.`SupplierID`, `journal`.`VoucherMstID`, `journal`.`PettyMstID`, `journal`.`InvoiceMasterID`, `journal`.`Date`, `journal`.`PartyID`, `journal`.`Narration` ;

-- --------------------------------------------------------

--
-- Structure for view `v_lead_summary`
--
DROP TABLE IF EXISTS `v_lead_summary`;

CREATE OR REPLACE VIEW `v_lead_summary`  AS SELECT count(0) AS `Total`, sum(if(`leads`.`status` = 'Rejected',1,0)) AS `Rejected`, sum(if(`leads`.`status` = 'Pending',1,0)) AS `Pending`, sum(if(`leads`.`approved_status` = 'Closed Won',1,0)) AS `leads_won`, sum(if(`leads`.`approved_status` = 'Closed Lost',1,0)) AS `leads_lost`, sum(if(`leads`.`agent_id` is null,1,0)) AS `leads_not_assigned` FROM `leads` ;

-- --------------------------------------------------------

--
-- Structure for view `v_lead_summary_user`
--
DROP TABLE IF EXISTS `v_lead_summary_user`;

CREATE OR REPLACE VIEW `v_lead_summary_user`  AS SELECT count(0) AS `Total`, sum(if(`leads`.`status` = 'Rejected',1,0)) AS `Rejected`, sum(if(`leads`.`status` = 'Pending',1,0)) AS `Pending`, sum(if(`leads`.`approved_status` = 'Closed Won',1,0)) AS `leads_won`, sum(if(`leads`.`approved_status` = 'Closed Lost',1,0)) AS `leads_lost`, sum(if(`leads`.`agent_id` is null,1,0)) AS `leads_not_assigned`, `leads`.`agent_id` AS `agent_id` FROM `leads` WHERE `leads`.`agent_id` is not null GROUP BY `leads`.`agent_id` ;

-- --------------------------------------------------------

--
-- Structure for view `v_partywise_sale`
--
DROP TABLE IF EXISTS `v_partywise_sale`;

CREATE OR REPLACE VIEW `v_partywise_sale`  AS SELECT `invoice_master`.`PartyID` AS `PartyID`, `party`.`PartyName` AS `PartyName`, count(`invoice_detail`.`InvoiceDetailID`) AS `Qty`, sum(`invoice_detail`.`Fare`) AS `Fare`, sum(`invoice_detail`.`Total`) AS `Total`, sum(`invoice_detail`.`Service`) AS `Service`, `invoice_master`.`InvoiceTypeID` AS `InvoiceTypeID`, sum(`invoice_detail`.`Discount`) AS `Discount`, `invoice_type`.`InvoiceTypeCode` AS `InvoiceTypeCode`, `invoice_type`.`InvoiceType` AS `InvoiceType` FROM (((`invoice_detail` join `invoice_master` on(`invoice_detail`.`InvoiceMasterID` = `invoice_master`.`InvoiceMasterID`)) join `party` on(`invoice_master`.`PartyID` = `party`.`PartyID`)) join `invoice_type` on(`invoice_type`.`InvoiceTypeID` = `invoice_master`.`InvoiceTypeID`)) GROUP BY `invoice_master`.`PartyID`, `party`.`PartyID`, `party`.`PartyName`, `invoice_master`.`InvoiceTypeID`, `invoice_type`.`InvoiceTypeCode`, `invoice_type`.`InvoiceType` ;

-- --------------------------------------------------------

--
-- Structure for view `v_partywise_sale_copy`
--
DROP TABLE IF EXISTS `v_partywise_sale_copy`;

CREATE OR REPLACE VIEW `v_partywise_sale_copy`  AS SELECT `invoice_master`.`PartyID` AS `PartyID`, `party`.`PartyName` AS `PartyName`, count(`invoice_detail`.`InvoiceDetailID`) AS `Qty`, sum(`invoice_detail`.`Fare`) AS `Fare`, sum(`invoice_detail`.`Total`) AS `Total`, sum(`invoice_detail`.`Service`) AS `Service`, `invoice_master`.`InvoiceTypeID` AS `InvoiceTypeID`, sum(`invoice_detail`.`Discount`) AS `Discount`, `invoice_type`.`InvoiceTypeCode` AS `InvoiceTypeCode`, `invoice_type`.`InvoiceType` AS `InvoiceType` FROM (((`invoice_detail` join `invoice_master` on(`invoice_detail`.`InvoiceMasterID` = `invoice_master`.`InvoiceMasterID`)) join `party` on(`invoice_master`.`PartyID` = `party`.`PartyID`)) join `invoice_type` on(`invoice_type`.`InvoiceTypeID` = `invoice_master`.`InvoiceTypeID`)) GROUP BY `invoice_master`.`PartyID`, `party`.`PartyID`, `party`.`PartyName`, `invoice_master`.`InvoiceTypeID`, `invoice_type`.`InvoiceTypeCode`, `invoice_type`.`InvoiceType` ;

-- --------------------------------------------------------

--
-- Structure for view `v_party_bal`
--
DROP TABLE IF EXISTS `v_party_bal`;

CREATE OR REPLACE VIEW `v_party_bal`  AS SELECT sum(if(`v_journal`.`Dr` is null,0,`v_journal`.`Dr`)) - sum(if(`v_journal`.`Cr` is null,0,`v_journal`.`Cr`)) AS `Balance`, `v_journal`.`PartyID` AS `PartyID` FROM `v_journal` WHERE `v_journal`.`ChartOfAccountID` = 110400 AND `v_journal`.`PartyID` is not null GROUP BY `v_journal`.`PartyID` HAVING `Balance` > 0 ;

-- --------------------------------------------------------

--
-- Structure for view `v_party_balance`
--
DROP TABLE IF EXISTS `v_party_balance`;

CREATE OR REPLACE VIEW `v_party_balance`  AS SELECT `v_journal`.`VHNO` AS `VHNO`, `v_journal`.`JournalType` AS `JournalType`, `v_journal`.`ChartOfAccountID` AS `ChartOfAccountID`, `v_journal`.`ChartOfAccountName` AS `ChartOfAccountName`, `v_journal`.`SupplierID` AS `SupplierID`, `v_journal`.`VoucherMstID` AS `VoucherMstID`, `v_journal`.`PettyMstID` AS `PettyMstID`, `v_journal`.`InvoiceMasterID` AS `InvoiceMasterID`, `v_journal`.`Date` AS `Date`, `v_journal`.`Dr` AS `Dr`, `v_journal`.`Cr` AS `Cr`, `v_journal`.`PartyID` AS `PartyID`, `v_journal`.`Narration` AS `Narration`, `party`.`PartyName` AS `PartyName` FROM (`v_journal` join `party` on(`v_journal`.`PartyID` = `party`.`PartyID`)) WHERE `v_journal`.`ChartOfAccountID` = 110400 ;

-- --------------------------------------------------------

--
-- Structure for view `v_party_balance_1`
--
DROP TABLE IF EXISTS `v_party_balance_1`;

CREATE OR REPLACE VIEW `v_party_balance_1`  AS SELECT `journal`.`PartyID` AS `PartyID`, sum(if(`journal`.`Dr` is null,0,`journal`.`Dr`)) - sum(if(`journal`.`Cr` is null,0,`journal`.`Cr`)) AS `Balance` FROM `journal` WHERE `journal`.`ChartOfAccountID` = 110400 GROUP BY `journal`.`PartyID` ;

-- --------------------------------------------------------

--
-- Structure for view `v_party_balance_copy`
--
DROP TABLE IF EXISTS `v_party_balance_copy`;

CREATE OR REPLACE VIEW `v_party_balance_copy`  AS SELECT `v_journal`.`VHNO` AS `VHNO`, `v_journal`.`JournalType` AS `JournalType`, `v_journal`.`ChartOfAccountID` AS `ChartOfAccountID`, `v_journal`.`ChartOfAccountName` AS `ChartOfAccountName`, `v_journal`.`SupplierID` AS `SupplierID`, `v_journal`.`VoucherMstID` AS `VoucherMstID`, `v_journal`.`PettyMstID` AS `PettyMstID`, `v_journal`.`InvoiceMasterID` AS `InvoiceMasterID`, `v_journal`.`Date` AS `Date`, `v_journal`.`Dr` AS `Dr`, `v_journal`.`Cr` AS `Cr`, `v_journal`.`PartyID` AS `PartyID`, `v_journal`.`Narration` AS `Narration`, `party`.`PartyName` AS `PartyName` FROM (`v_journal` join `party` on(`v_journal`.`PartyID` = `party`.`PartyID`)) WHERE `v_journal`.`ChartOfAccountID` = 110400 ;

-- --------------------------------------------------------

--
-- Structure for view `v_party_debitor`
--
DROP TABLE IF EXISTS `v_party_debitor`;

CREATE OR REPLACE VIEW `v_party_debitor`  AS SELECT `v_party_balance`.`PartyID` AS `PartyID`, sum(if(`v_party_balance`.`Dr` is null,0,`v_party_balance`.`Dr`)) - sum(if(`v_party_balance`.`Cr` is null,0,`v_party_balance`.`Cr`)) AS `Balance` FROM `v_party_balance` GROUP BY `v_party_balance`.`PartyID` HAVING sum(if(`v_party_balance`.`Dr` is null,0,`v_party_balance`.`Dr`)) - sum(if(`v_party_balance`.`Cr` is null,0,`v_party_balance`.`Cr`)) > 0 ;

-- --------------------------------------------------------

--
-- Structure for view `v_party_montly_balance`
--
DROP TABLE IF EXISTS `v_party_montly_balance`;

CREATE OR REPLACE VIEW `v_party_montly_balance`  AS SELECT date_format(`journal`.`Date`,'%b-%Y') AS `Date`, sum(ifnull(`journal`.`Dr`,0)) AS `Dr`, sum(ifnull(`journal`.`Cr`,0)) AS `Cr`, sum(ifnull(`journal`.`Dr`,0)) - sum(ifnull(`journal`.`Cr`,0)) AS `Balance`, `journal`.`PartyID` AS `PartyID` FROM `journal` WHERE `journal`.`ChartOfAccountID` = 110400 AND `journal`.`PartyID` is not null GROUP BY `journal`.`PartyID`, date_format(`journal`.`Date`,'%b-%Y') ;

-- --------------------------------------------------------

--
-- Structure for view `v_pettycash_master`
--
DROP TABLE IF EXISTS `v_pettycash_master`;

CREATE OR REPLACE VIEW `v_pettycash_master`  AS SELECT `pettycash_master`.`PettyMstID` AS `PettyMstID`, `pettycash_master`.`PettyVoucher` AS `PettyVoucher`, `chartofaccount`.`ChartOfAccountID` AS `ChartOfAccountID`, `chartofaccount`.`CODE` AS `CODE`, `chartofaccount`.`ChartOfAccountName` AS `ChartOfAccountName`, `pettycash_master`.`Date` AS `Date`, `pettycash_master`.`Narration` AS `Narration`, `pettycash_master`.`Credit` AS `Credit` FROM (`chartofaccount` join `pettycash_master` on(`chartofaccount`.`ChartOfAccountID` = `pettycash_master`.`ChOfAcc`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_rev_exp`
--
DROP TABLE IF EXISTS `v_rev_exp`;

CREATE OR REPLACE VIEW `v_rev_exp`  AS SELECT sum(if(`v_journal`.`Cr` is null,0,`v_journal`.`Cr`)) - sum(if(`v_journal`.`Dr` is null,0,`v_journal`.`Dr`)) AS `Rev`, 0 AS `Exp`, date_format(`v_journal`.`Date`,'%M-%Y') AS `DATE_FORMAT(date,'%M-%Y')`, date_format(`v_journal`.`Date`,'%m-%Y') AS `date_format(``v_journal``.``Date``,'%m-%Y')` FROM `v_journal` WHERE `v_journal`.`CODE` = 'r' GROUP BY date_format(`v_journal`.`Date`,'%M-%Y'), date_format(`v_journal`.`Date`,'%m-%Y'), `v_journal`.`CODE` ;

-- --------------------------------------------------------

--
-- Structure for view `v_rev_exp_chart`
--
DROP TABLE IF EXISTS `v_rev_exp_chart`;

CREATE OR REPLACE VIEW `v_rev_exp_chart`  AS SELECT abs(round(sum(`v_rev_exp`.`Rev`),0)) AS `Rev`, abs(round(sum(`v_rev_exp`.`Exp`),0)) AS `Exp`, `v_rev_exp`.`DATE_FORMAT(date,'%M-%Y')` AS `MonthName` FROM `v_rev_exp` GROUP BY `v_rev_exp`.`DATE_FORMAT(date,'%M-%Y')` ORDER BY `v_rev_exp`.`DATE_FORMAT(date,'%M-%Y')` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `v_sub_service`
--
DROP TABLE IF EXISTS `v_sub_service`;

CREATE OR REPLACE VIEW `v_sub_service`  AS SELECT `sub_services`.`service_id` AS `service_id`, `services`.`name` AS `service_name`, `sub_services`.`id` AS `sub_service_id`, `sub_services`.`name` AS `sub_service_name` FROM (`services` join `sub_services` on(`services`.`id` = `sub_services`.`service_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_supplier`
--
DROP TABLE IF EXISTS `v_supplier`;

CREATE OR REPLACE VIEW `v_supplier`  AS SELECT `supplier`.`SupplierID` AS `SupplierID`, `supplier`.`SupplierCatID` AS `SupplierCatID`, concat(`supplier_category`.`SupplierCode`,'-',`supplier_category`.`SupplierCategory`) AS `SupplierCategory`, `supplier`.`Category` AS `Category`, `supplier`.`SupplierName` AS `SupplierName`, `supplier`.`Address` AS `Address`, `supplier`.`Phone` AS `Phone`, `supplier`.`Email` AS `Email`, `supplier`.`Active` AS `Active`, `supplier`.`InvoiceDueDays` AS `InvoiceDueDays`, `supplier`.`eDate` AS `eDate` FROM (`supplier_category` join `supplier` on(`supplier_category`.`SupplierCatID` = `supplier`.`SupplierCatID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_supplier_balance`
--
DROP TABLE IF EXISTS `v_supplier_balance`;

CREATE OR REPLACE VIEW `v_supplier_balance`  AS SELECT `journal`.`SupplierID` AS `SupplierID`, date_format(`journal`.`Date`,'%b-%Y') AS `Date`, sum(if(`journal`.`Dr` is null,0,`journal`.`Dr`)) AS `Dr`, sum(if(`journal`.`Cr` is null,0,`journal`.`Cr`)) AS `Cr`, sum(if(`journal`.`Dr` is null,0,`journal`.`Dr`) - if(`journal`.`Cr` is null,0,`journal`.`Cr`)) AS `Balance` FROM `journal` WHERE `journal`.`ChartOfAccountID` = 210100 GROUP BY `journal`.`SupplierID`, date_format(`journal`.`Date`,'%b-%Y') ;

-- --------------------------------------------------------

--
-- Structure for view `v_user`
--
DROP TABLE IF EXISTS `v_user`;

CREATE OR REPLACE VIEW `v_user`  AS SELECT `user`.`UserID` AS `UserID`, `user`.`FullName` AS `FullName`, `user`.`Email` AS `Email`, `user`.`Password` AS `Password`, `user`.`UserType` AS `UserType`, `user`.`eDate` AS `eDate`, `user`.`Active` AS `Active`, `branches`.`name` AS `BranchName` FROM (`user` left join `branches` on(`branches`.`id` = `user`.`branch_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_voucher`
--
DROP TABLE IF EXISTS `v_voucher`;

CREATE OR REPLACE VIEW `v_voucher`  AS SELECT `voucher_master`.`VoucherMstID` AS `VoucherMstID`, `voucher_type`.`VoucherCode` AS `VoucherCode`, `voucher_type`.`VoucherTypeName` AS `VoucherTypeName`, `voucher_master`.`Voucher` AS `Voucher`, `voucher_master`.`Date` AS `Date`, `voucher_master`.`Narration` AS `Narration`, `v_voucher_amount`.`Amount` AS `Amount` FROM ((`voucher_master` join `voucher_type` on(`voucher_master`.`VoucherCodeID` = `voucher_type`.`VoucherTypeID`)) join `v_voucher_amount` on(`voucher_master`.`VoucherMstID` = `v_voucher_amount`.`VoucherMstID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_voucher_amount`
--
DROP TABLE IF EXISTS `v_voucher_amount`;

CREATE OR REPLACE VIEW `v_voucher_amount`  AS SELECT CASE WHEN left(`voucher_detail`.`Voucher`,2) = 'BR' THEN sum(`voucher_detail`.`Debit`) WHEN left(`voucher_detail`.`Voucher`,2) = 'CR' THEN sum(`voucher_detail`.`Debit`) WHEN left(`voucher_detail`.`Voucher`,2) = 'BP' THEN sum(`voucher_detail`.`Credit`) WHEN left(`voucher_detail`.`Voucher`,2) = 'CP' THEN sum(`voucher_detail`.`Credit`) ELSE sum(`voucher_detail`.`Debit`) END AS `Amount`, `voucher_detail`.`VoucherMstID` AS `VoucherMstID`, `voucher_detail`.`Voucher` AS `Voucher` FROM `voucher_detail` GROUP BY `voucher_detail`.`VoucherMstID`, `voucher_detail`.`Voucher` ;

-- --------------------------------------------------------

--
-- Structure for view `v_voucher_detail`
--
DROP TABLE IF EXISTS `v_voucher_detail`;

CREATE OR REPLACE VIEW `v_voucher_detail`  AS SELECT `voucher_master`.`VoucherMstID` AS `VoucherMstID`, `voucher_master`.`VoucherCodeID` AS `VoucherCodeID`, `voucher_master`.`Voucher` AS `Voucher`, `voucher_master`.`Narration` AS `NarrationMaster`, `voucher_detail`.`Date` AS `Date`, `voucher_detail`.`ChOfAcc` AS `ChOfAcc`, `chartofaccount`.`ChartOfAccountName` AS `ChartOfAccountName`, `voucher_detail`.`Debit` AS `Debit`, `voucher_detail`.`Credit` AS `Credit`, `voucher_detail`.`InvoiceNo` AS `InvoiceNo`, `voucher_detail`.`Narration` AS `Narration`, `voucher_detail`.`SupplierID` AS `SupplierID`, `voucher_detail`.`PartyID` AS `PartyID`, `voucher_detail`.`RefNo` AS `RefNo`, `party`.`PartyName` AS `PartyName`, `supplier`.`SupplierName` AS `SupplierName` FROM ((((`voucher_detail` join `voucher_master` on(`voucher_master`.`VoucherMstID` = `voucher_detail`.`VoucherMstID`)) join `chartofaccount` on(`chartofaccount`.`ChartOfAccountID` = `voucher_detail`.`ChOfAcc`)) left join `party` on(`voucher_detail`.`PartyID` = `party`.`PartyID`)) left join `supplier` on(`voucher_detail`.`SupplierID` = `supplier`.`SupplierID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_voucher_master`
--
DROP TABLE IF EXISTS `v_voucher_master`;

CREATE OR REPLACE VIEW `v_voucher_master`  AS SELECT `voucher_master`.`VoucherMstID` AS `VoucherMstID`, `voucher_master`.`VoucherCodeID` AS `VoucherCodeID`, `voucher_master`.`Voucher` AS `Voucher`, `voucher_master`.`Date` AS `Date`, `voucher_master`.`Narration` AS `Narration`, `voucher_type`.`VoucherTypeID` AS `VoucherTypeID`, `voucher_type`.`VoucherCode` AS `VoucherCode`, `voucher_type`.`VoucherTypeName` AS `VoucherTypeName` FROM (`voucher_master` join `voucher_type` on(`voucher_master`.`VoucherCodeID` = `voucher_type`.`VoucherTypeID`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airline`
--
ALTER TABLE `airline`
  ADD PRIMARY KEY (`AirLineID`);

--
-- Indexes for table `airlines`
--
ALTER TABLE `airlines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attachment`
--
ALTER TABLE `attachment`
  ADD PRIMARY KEY (`AttachmentID`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`BranchID`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaigns_name_unique` (`name`);

--
-- Indexes for table `challan_type`
--
ALTER TABLE `challan_type`
  ADD PRIMARY KEY (`ChallanTypeID`);

--
-- Indexes for table `channel`
--
ALTER TABLE `channel`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `chartofaccount`
--
ALTER TABLE `chartofaccount`
  ADD PRIMARY KEY (`ChartOfAccountID`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`CompanyID`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estimate_detail`
--
ALTER TABLE `estimate_detail`
  ADD PRIMARY KEY (`EstimateDetailID`);

--
-- Indexes for table `estimate_master`
--
ALTER TABLE `estimate_master`
  ADD PRIMARY KEY (`EstimateMasterID`);

--
-- Indexes for table `expense_detail`
--
ALTER TABLE `expense_detail`
  ADD PRIMARY KEY (`ExpenseDetailID`);

--
-- Indexes for table `expense_master`
--
ALTER TABLE `expense_master`
  ADD PRIMARY KEY (`ExpenseMasterID`);

--
-- Indexes for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  ADD PRIMARY KEY (`InvoiceDetailID`);

--
-- Indexes for table `invoice_master`
--
ALTER TABLE `invoice_master`
  ADD PRIMARY KEY (`InvoiceMasterID`),
  ADD KEY `InvoiceTypeID` (`InvoiceTypeID`),
  ADD KEY `invoice_master_ibfk_2` (`PartyID`);

--
-- Indexes for table `invoice_type`
--
ALTER TABLE `invoice_type`
  ADD PRIMARY KEY (`InvoiceTypeID`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`ItemID`);

--
-- Indexes for table `journal`
--
ALTER TABLE `journal`
  ADD PRIMARY KEY (`JournalID`),
  ADD KEY `VoucherMstID` (`VoucherMstID`),
  ADD KEY `PettyMstID` (`PettyMstID`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lead_activities`
--
ALTER TABLE `lead_activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lead_details`
--
ALTER TABLE `lead_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`LogID`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `party`
--
ALTER TABLE `party`
  ADD PRIMARY KEY (`PartyID`);

--
-- Indexes for table `pettycash_detail`
--
ALTER TABLE `pettycash_detail`
  ADD PRIMARY KEY (`PettyDetID`),
  ADD KEY `PettyMstID` (`PettyMstID`);

--
-- Indexes for table `pettycash_master`
--
ALTER TABLE `pettycash_master`
  ADD PRIMARY KEY (`PettyMstID`);

--
-- Indexes for table `qualified_statuses`
--
ALTER TABLE `qualified_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `qualified_statuses_name_unique` (`name`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`RoleID`);

--
-- Indexes for table `runtotaltestdata`
--
ALTER TABLE `runtotaltestdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saleman`
--
ALTER TABLE `saleman`
  ADD PRIMARY KEY (`SalemanID`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_type`
--
ALTER TABLE `staff_type`
  ADD PRIMARY KEY (`StaffTypeID`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `statuses_name_unique` (`name`);

--
-- Indexes for table `sub_services`
--
ALTER TABLE `sub_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SupplierID`);

--
-- Indexes for table `supplier_category`
--
ALTER TABLE `supplier_category`
  ADD PRIMARY KEY (`SupplierCatID`);

--
-- Indexes for table `tax`
--
ALTER TABLE `tax`
  ADD PRIMARY KEY (`TaxID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`RoleId`);

--
-- Indexes for table `voucher_detail`
--
ALTER TABLE `voucher_detail`
  ADD PRIMARY KEY (`VoucherDetID`),
  ADD KEY `VoucherMstID` (`VoucherMstID`);

--
-- Indexes for table `voucher_master`
--
ALTER TABLE `voucher_master`
  ADD PRIMARY KEY (`VoucherMstID`);

--
-- Indexes for table `voucher_type`
--
ALTER TABLE `voucher_type`
  ADD PRIMARY KEY (`VoucherTypeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airline`
--
ALTER TABLE `airline`
  MODIFY `AirLineID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `airlines`
--
ALTER TABLE `airlines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT for table `attachment`
--
ALTER TABLE `attachment`
  MODIFY `AttachmentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `BranchID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `challan_type`
--
ALTER TABLE `challan_type`
  MODIFY `ChallanTypeID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `channel`
--
ALTER TABLE `channel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `estimate_detail`
--
ALTER TABLE `estimate_detail`
  MODIFY `EstimateDetailID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estimate_master`
--
ALTER TABLE `estimate_master`
  MODIFY `EstimateMasterID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_detail`
--
ALTER TABLE `expense_detail`
  MODIFY `ExpenseDetailID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_master`
--
ALTER TABLE `expense_master`
  MODIFY `ExpenseMasterID` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  MODIFY `InvoiceDetailID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `invoice_master`
--
ALTER TABLE `invoice_master`
  MODIFY `InvoiceMasterID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoice_type`
--
ALTER TABLE `invoice_type`
  MODIFY `InvoiceTypeID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `ItemID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `journal`
--
ALTER TABLE `journal`
  MODIFY `JournalID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_activities`
--
ALTER TABLE `lead_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_details`
--
ALTER TABLE `lead_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `LogID` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `party`
--
ALTER TABLE `party`
  MODIFY `PartyID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pettycash_detail`
--
ALTER TABLE `pettycash_detail`
  MODIFY `PettyDetID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pettycash_master`
--
ALTER TABLE `pettycash_master`
  MODIFY `PettyMstID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `qualified_statuses`
--
ALTER TABLE `qualified_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `RoleID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `runtotaltestdata`
--
ALTER TABLE `runtotaltestdata`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `saleman`
--
ALTER TABLE `saleman`
  MODIFY `SalemanID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sub_services`
--
ALTER TABLE `sub_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `SupplierID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2277;

--
-- AUTO_INCREMENT for table `supplier_category`
--
ALTER TABLE `supplier_category`
  MODIFY `SupplierCatID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tax`
--
ALTER TABLE `tax`
  MODIFY `TaxID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `RoleId` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=341;

--
-- AUTO_INCREMENT for table `voucher_detail`
--
ALTER TABLE `voucher_detail`
  MODIFY `VoucherDetID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `voucher_master`
--
ALTER TABLE `voucher_master`
  MODIFY `VoucherMstID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `voucher_type`
--
ALTER TABLE `voucher_type`
  MODIFY `VoucherTypeID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoice_master`
--
ALTER TABLE `invoice_master`
  ADD CONSTRAINT `invoice_master_ibfk_1` FOREIGN KEY (`InvoiceTypeID`) REFERENCES `invoice_type` (`InvoiceTypeID`),
  ADD CONSTRAINT `invoice_master_ibfk_2` FOREIGN KEY (`PartyID`) REFERENCES `party` (`PartyID`);

--
-- Constraints for table `journal`
--
ALTER TABLE `journal`
  ADD CONSTRAINT `journal_ibfk_1` FOREIGN KEY (`VoucherMstID`) REFERENCES `voucher_master` (`VoucherMstID`) ON DELETE CASCADE,
  ADD CONSTRAINT `journal_ibfk_2` FOREIGN KEY (`PettyMstID`) REFERENCES `pettycash_master` (`PettyMstID`) ON DELETE CASCADE;

--
-- Constraints for table `pettycash_detail`
--
ALTER TABLE `pettycash_detail`
  ADD CONSTRAINT `pettycash_detail_ibfk_1` FOREIGN KEY (`PettyMstID`) REFERENCES `pettycash_master` (`PettyMstID`) ON DELETE CASCADE;

--
-- Constraints for table `voucher_detail`
--
ALTER TABLE `voucher_detail`
  ADD CONSTRAINT `voucher_detail_ibfk_1` FOREIGN KEY (`VoucherMstID`) REFERENCES `voucher_master` (`VoucherMstID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
