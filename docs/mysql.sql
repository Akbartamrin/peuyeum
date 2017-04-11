-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 06 Jan 2017 pada 00.24
-- Versi Server: 5.6.14
-- Versi PHP: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `iocv1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `oc_clndr_objects`
--

CREATE TABLE IF NOT EXISTS `oc_clndr_objects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `calendarid` int(10) unsigned NOT NULL DEFAULT '0',
  `objecttype` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `startdate` datetime DEFAULT '1970-01-01 00:00:00',
  `enddate` datetime DEFAULT '1970-01-01 00:00:00',
  `repeating` int(11) DEFAULT '0',
  `summary` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `calendardata` longtext COLLATE utf8_bin,
  `uri` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lastmodified` int(11) DEFAULT '0',
  `firstuser` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `instruksi` text COLLATE utf8_bin,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=16 ;

--
-- Dumping data untuk tabel `oc_clndr_objects`
--

INSERT INTO `oc_clndr_objects` (`id`, `calendarid`, `objecttype`, `startdate`, `enddate`, `repeating`, `summary`, `calendardata`, `uri`, `lastmodified`, `firstuser`, `instruksi`) VALUES
(2, 1, 'VEVENT', '2015-11-10 00:00:00', '2015-11-11 00:00:00', 0, 'tes2', 'BEGIN:VCALENDAR\r\nVERSION:2.0\r\nPRODID:ownCloud Calendar\r\nBEGIN:VEVENT\r\nCREATED;VALUE=DATE-TIME:20151125T094648Z\r\nUID:02485b86f3\r\nLAST-MODIFIED;VALUE=DATE-TIME:20151125T095246Z\r\nDTSTAMP;VALUE=DATE-TIME:20151125T095246Z\r\nSUMMARY:tes2\r\nDTSTART;VALUE=DATE:20151110\r\nDTEND;VALUE=DATE:20151111\r\nLOCATION:jakarta\r\nDESCRIPTION:hadi|tes2||\r\nCATEGORIES:Call\r\nCLASS:PUBLIC\r\nEND:VEVENT\r\nEND:VCALENDAR\r\n', 'owncloud-1fe74d64abcae4513d952bd532248f55.ics', 1448445166, 'hadi', NULL),
(3, 3, 'VEVENT', '2015-12-02 00:00:00', '2015-12-05 00:00:00', 0, 'tes90', 'BEGIN:VCALENDAR\r\nVERSION:2.0\r\nPRODID:ownCloud Calendar\r\nBEGIN:VEVENT\r\nCREATED;VALUE=DATE-TIME:20151211T175834Z\r\nUID:8448aa3a87\r\nLAST-MODIFIED;VALUE=DATE-TIME:20151211T180051Z\r\nDTSTAMP;VALUE=DATE-TIME:20151211T180051Z\r\nSUMMARY:tes90\r\nDTSTART;VALUE=DATE:20151202\r\nDTEND;VALUE=DATE:20151205\r\nLOCATION:jakarta\r\nDESCRIPTION:tes1|tes memo\\n||\r\nCATEGORIES:Birthday\r\nCLASS:PUBLIC\r\nEND:VEVENT\r\nEND:VCALENDAR\r\n', 'owncloud-47a2df0ebf49a285cbc6760986dd51d0.ics', 1449856851, 'tes1', NULL),
(4, 1, 'VEVENT', '2015-12-24 00:00:00', '2015-12-28 00:00:00', 0, 'tes1', 'BEGIN:VCALENDAR\r\nVERSION:2.0\r\nPRODID:ownCloud Calendar\r\nBEGIN:VEVENT\r\nCREATED;VALUE=DATE-TIME:20151213T232725Z\r\nUID:dc5fd228c3\r\nLAST-MODIFIED;VALUE=DATE-TIME:20151213T232924Z\r\nDTSTAMP;VALUE=DATE-TIME:20151213T232924Z\r\nSUMMARY:tes1\r\nDTSTART;VALUE=DATE:20151224\r\nDTEND;VALUE=DATE:20151228\r\nLOCATION:lemsaneg\r\nDESCRIPTION:hadi|tes memo 1\\n||\r\nCATEGORIES:Birthday\r\nCLASS:PUBLIC\r\nEND:VEVENT\r\nEND:VCALENDAR\r\n', 'owncloud-4f8081a6f669fde50f9c7807da5c9331.ics', 1450049364, 'hadi', NULL),
(12, 5, 'VEVENT', '2016-12-14 00:00:00', '2016-12-15 00:00:00', 0, 'dq', 'BEGIN:VCALENDAR\r\nVERSION:2.0\r\nPRODID:ownCloud Calendar\r\nBEGIN:VEVENT\r\nCREATED;VALUE=DATE-TIME:20161218T214421Z\r\nUID:78b00a838e\r\nLAST-MODIFIED;VALUE=DATE-TIME:20161218T214421Z\r\nDTSTAMP;VALUE=DATE-TIME:20161218T214421Z\r\nSUMMARY:dq\r\nDTSTART;VALUE=DATE:20161214\r\nDTEND;VALUE=DATE:20161215\r\nLOCATION:33|7|JAWA TENGAH|WONOSOBO\r\nDESCRIPTION:CEO|eed||\r\nCATEGORIES:Business\r\nINSTRUKSI:tes instruksi\r\nEND:VEVENT\r\nEND:VCALENDAR\r\n', 'owncloud-77cb9348bb1d11104001592f8b4ffc1a.ics', 1482097461, 'CEO', 'tes instruksi'),
(13, 5, 'VEVENT', '2016-12-09 00:00:00', '2016-12-10 00:00:00', 0, 'tes folder', 'BEGIN:VCALENDAR\r\nVERSION:2.0\r\nPRODID:ownCloud Calendar\r\nBEGIN:VEVENT\r\nCREATED;VALUE=DATE-TIME:20161218T214921Z\r\nUID:13d5e4d001\r\nLAST-MODIFIED;VALUE=DATE-TIME:20161218T215211Z\r\nDTSTAMP;VALUE=DATE-TIME:20161218T215211Z\r\nSUMMARY:tes folder\r\nDTSTART;VALUE=DATE:20161209\r\nDTEND;VALUE=DATE:20161210\r\nLOCATION:94|27|PAPUA|SUPIORI\r\nDESCRIPTION:CEO|es||\r\nCATEGORIES:Business\r\nINSTRUKSI:tes23131\r\nCLASS:PUBLIC\r\nEND:VEVENT\r\nEND:VCALENDAR\r\n', 'owncloud-4f490eefee934a7877039569db085c3e.ics', 1482097931, 'CEO', 'tes23131'),
(14, 5, 'VEVENT', '2016-12-14 00:00:00', '2016-12-15 00:00:00', 0, 'tes parsing', 'BEGIN:VCALENDAR\r\nVERSION:2.0\r\nPRODID:ownCloud Calendar\r\nBEGIN:VEVENT\r\nCREATED;VALUE=DATE-TIME:20161227T231248Z\r\nUID:916b8c91b3\r\nLAST-MODIFIED;VALUE=DATE-TIME:20161227T231248Z\r\nDTSTAMP;VALUE=DATE-TIME:20161227T231248Z\r\nSUMMARY:tes parsing\r\nDTSTART;VALUE=DATE:20161214\r\nDTEND;VALUE=DATE:20161215\r\nLOCATION:ACEH ACEH SINGKIL\r\nEND:VEVENT\r\nEND:VCALENDAR\r\n', 'owncloud-d8bd911b0eba7e8be9edf5ced0123835.ics', 1482880368, 'CEO', NULL),
<<<<<<< HEAD
(15, 5, 'VEVENT', '2017-01-17 00:00:00', '2017-01-18 00:00:00', 0, 'tes lokasi', 'BEGIN:VCALENDAR\r\nVERSION:2.0\r\nPRODID:ownCloud Calendar\r\nBEGIN:VEVENT\r\nCREATED;VALUE=DATE-TIME:20170105T225528Z\r\nUID:a55541fdf4\r\nLAST-MODIFIED;VALUE=DATE-TIME:20170105T232233Z\r\nDTSTAMP;VALUE=DATE-TIME:20170105T232233Z\r\nSUMMARY:tes lokasi\r\nDTSTART;VALUE=DATE:20170117\r\nDTEND;VALUE=DATE:20170118\r\nLOCATION:71|1\r\nDESCRIPTION:CEO|asdadsa||\r\nCATEGORIES:Business\r\nINSTRUKSI:rgfdasd\r\nCLASS:PUBLIC\r\nEND:VEVENT\r\nEND:VCALENDAR\r\n', 'owncloud-b5501a1a5fac6125bff98e3f2cc701a0.ics', 1483658553, 'CEO', 'rgfdasd');
(16, 5, 'VEVENT', '2017-01-17 00:00:00', '2017-01-18 00:00:00', 0, 'tes lokasi', 'BEGIN:VCALENDAR\r\nVERSION:2.0\r\nPRODID:ownCloud Calendar\r\nBEGIN:VEVENT\r\nCREATED;VALUE=DATE-TIME:20170105T225528Z\r\nUID:a55541fdf4\r\nLAST-MODIFIED;VALUE=DATE-TIME:20170105T232233Z\r\nDTSTAMP;VALUE=DATE-TIME:20170105T232233Z\r\nSUMMARY:tes lokasi\r\nDTSTART;VALUE=DATE:20170117\r\nDTEND;VALUE=DATE:20170118\r\nLOCATION:82|2\r\nDESCRIPTION:CEO|asdadsa||\r\nCATEGORIES:Business\r\nINSTRUKSI:rgfdasd\r\nCLASS:PUBLIC\r\nEND:VEVENT\r\nEND:VCALENDAR\r\n', 'owncloud-b5501a1a5fac6125bff98e3f2cc701a0.ics', 1483658553, 'LAri', 'maluku');
(17, 5, 'VEVENT', '2017-01-17 00:00:00', '2017-01-18 00:00:00', 0, 'tes lokasi', 'BEGIN:VCALENDAR\r\nVERSION:2.0\r\nPRODID:ownCloud Calendar\r\nBEGIN:VEVENT\r\nCREATED;VALUE=DATE-TIME:20170105T225528Z\r\nUID:a55541fdf4\r\nLAST-MODIFIED;VALUE=DATE-TIME:20170105T232233Z\r\nDTSTAMP;VALUE=DATE-TIME:20170105T232233Z\r\nSUMMARY:tes lokasi\r\nDTSTART;VALUE=DATE:20170117\r\nDTEND;VALUE=DATE:20170118\r\nLOCATION:82|2\r\nDESCRIPTION:CEO|asdadsa||\r\nCATEGORIES:Business\r\nINSTRUKSI:rgfdasd\r\nCLASS:PUBLIC\r\nEND:VEVENT\r\nEND:VCALENDAR\r\n', 'owncloud-b5501a1a5fac6125bff98e3f2cc701a0.ics', 1483658553, 'Jalan', 'maluku');
(18, 5, 'VEVENT', '2017-01-17 00:00:00', '2017-01-18 00:00:00', 0, 'tes lokasi', 'BEGIN:VCALENDAR\r\nVERSION:2.0\r\nPRODID:ownCloud Calendar\r\nBEGIN:VEVENT\r\nCREATED;VALUE=DATE-TIME:20170105T225528Z\r\nUID:a55541fdf4\r\nLAST-MODIFIED;VALUE=DATE-TIME:20170105T232233Z\r\nDTSTAMP;VALUE=DATE-TIME:20170105T232233Z\r\nSUMMARY:tes lokasi\r\nDTSTART;VALUE=DATE:20170117\r\nDTEND;VALUE=DATE:20170118\r\nLOCATION:82|2\r\nDESCRIPTION:CEO|asdadsa||\r\nCATEGORIES:Business\r\nINSTRUKSI:rgfdasd\r\nCLASS:PUBLIC\r\nEND:VEVENT\r\nEND:VCALENDAR\r\n', 'owncloud-b5501a1a5fac6125bff98e3f2cc701a0.ics', 1483658553, 'Travelling', 'maluku')
(19, 5, 'VEVENT', '2017-01-17 00:00:00', '2017-01-18 00:00:00', 0, 'tes lokasi', 'BEGIN:VCALENDAR\r\nVERSION:2.0\r\nPRODID:ownCloud Calendar\r\nBEGIN:VEVENT\r\nCREATED;VALUE=DATE-TIME:20170105T225528Z\r\nUID:a55541fdf4\r\nLAST-MODIFIED;VALUE=DATE-TIME:20170105T232233Z\r\nDTSTAMP;VALUE=DATE-TIME:20170105T232233Z\r\nSUMMARY:tes lokasi\r\nDTSTART;VALUE=DATE:20170117\r\nDTEND;VALUE=DATE:20170118\r\nLOCATION:82|2\r\nDESCRIPTION:CEO|asdadsa||\r\nCATEGORIES:Business\r\nINSTRUKSI:rgfdasd\r\nCLASS:PUBLIC\r\nEND:VEVENT\r\nEND:VCALENDAR\r\n', 'owncloud-b5501a1a5fac6125bff98e3f2cc701a0.ics', 1483658553, 'kota', 'kalimantan');

=======
(15, 5, 'VEVENT', '2017-01-17 00:00:00', '2017-01-18 00:00:00', 0, 'tes lokasi', 'BEGIN:VCALENDAR\r\nVERSION:2.0\r\nPRODID:ownCloud Calendar\r\nBEGIN:VEVENT\r\nCREATED;VALUE=DATE-TIME:20170105T225528Z\r\nUID:a55541fdf4\r\nLAST-MODIFIED;VALUE=DATE-TIME:20170105T232233Z\r\nDTSTAMP;VALUE=DATE-TIME:20170105T232233Z\r\nSUMMARY:tes lokasi\r\nDTSTART;VALUE=DATE:20170117\r\nDTEND;VALUE=DATE:20170118\r\nLOCATION:71|1\r\nDESCRIPTION:CEO|asdadsa||\r\nCATEGORIES:Business\r\nINSTRUKSI:rgfdasd\r\nCLASS:PUBLIC\r\nEND:VEVENT\r\nEND:VCALENDAR\r\n', 'owncloud-b5501a1a5fac6125bff98e3f2cc701a0.ics', 1483658553, 'CEO', 'rgfdasd'),
(16, 5, 'VEVENT', '2017-01-17 00:00:00', '2017-01-18 00:00:00', 0, 'tes lokasi', 'BEGIN:VCALENDAR\r\nVERSION:2.0\r\nPRODID:ownCloud Calendar\r\nBEGIN:VEVENT\r\nCREATED;VALUE=DATE-TIME:20170105T225528Z\r\nUID:a55541fdf4\r\nLAST-MODIFIED;VALUE=DATE-TIME:20170105T232233Z\r\nDTSTAMP;VALUE=DATE-TIME:20170105T232233Z\r\nSUMMARY:tes lokasi\r\nDTSTART;VALUE=DATE:20170117\r\nDTEND;VALUE=DATE:20170118\r\nLOCATION:82|2\r\nDESCRIPTION:CEO|asdadsa||\r\nCATEGORIES:Business\r\nINSTRUKSI:rgfdasd\r\nCLASS:PUBLIC\r\nEND:VEVENT\r\nEND:VCALENDAR\r\n', 'owncloud-b5501a1a5fac6125bff98e3f2cc701a0.ics', 1483658553, 'LAri', 'maluku'),
(17, 5, 'VEVENT', '2017-01-17 00:00:00', '2017-01-18 00:00:00', 0, 'tes lokasi', 'BEGIN:VCALENDAR\r\nVERSION:2.0\r\nPRODID:ownCloud Calendar\r\nBEGIN:VEVENT\r\nCREATED;VALUE=DATE-TIME:20170105T225528Z\r\nUID:a55541fdf4\r\nLAST-MODIFIED;VALUE=DATE-TIME:20170105T232233Z\r\nDTSTAMP;VALUE=DATE-TIME:20170105T232233Z\r\nSUMMARY:tes lokasi\r\nDTSTART;VALUE=DATE:20170117\r\nDTEND;VALUE=DATE:20170118\r\nLOCATION:82|2\r\nDESCRIPTION:CEO|asdadsa||\r\nCATEGORIES:Business\r\nINSTRUKSI:rgfdasd\r\nCLASS:PUBLIC\r\nEND:VEVENT\r\nEND:VCALENDAR\r\n', 'owncloud-b5501a1a5fac6125bff98e3f2cc701a0.ics', 1483658553, 'Jalan', 'maluku'),
(18, 5, 'VEVENT', '2017-01-17 00:00:00', '2017-01-18 00:00:00', 0, 'tes lokasi', 'BEGIN:VCALENDAR\r\nVERSION:2.0\r\nPRODID:ownCloud Calendar\r\nBEGIN:VEVENT\r\nCREATED;VALUE=DATE-TIME:20170105T225528Z\r\nUID:a55541fdf4\r\nLAST-MODIFIED;VALUE=DATE-TIME:20170105T232233Z\r\nDTSTAMP;VALUE=DATE-TIME:20170105T232233Z\r\nSUMMARY:tes lokasi\r\nDTSTART;VALUE=DATE:20170117\r\nDTEND;VALUE=DATE:20170118\r\nLOCATION:82|2\r\nDESCRIPTION:CEO|asdadsa||\r\nCATEGORIES:Business\r\nINSTRUKSI:rgfdasd\r\nCLASS:PUBLIC\r\nEND:VEVENT\r\nEND:VCALENDAR\r\n', 'owncloud-b5501a1a5fac6125bff98e3f2cc701a0.ics', 1483658553, 'Travelling', 'maluku'),
(400, 5, 'VEVENT', '2017-01-17 00:00:00', '2017-01-18 00:00:00', 0, 'tes lokasi', 'BEGIN:VCALENDAR\r\nVERSION:2.0\r\nPRODID:ownCloud Calendar\r\nBEGIN:VEVENT\r\nCREATED;VALUE=DATE-TIME:20170105T225528Z\r\nUID:a55541fdf4\r\nLAST-MODIFIED;VALUE=DATE-TIME:20170105T232233Z\r\nDTSTAMP;VALUE=DATE-TIME:20170105T232233Z\r\nSUMMARY:tes lokasi\r\nDTSTART;VALUE=DATE:20170117\r\nDTEND;VALUE=DATE:20170118\r\nLOCATION:94|71\r\nDESCRIPTION:CEO|asdadsa||\r\nCATEGORIES:Business\r\nINSTRUKSI:rgfdasd\r\nCLASS:PUBLIC\r\nEND:VEVENT\r\nEND:VCALENDAR\r\n', 'owncloud-b5501a1a5fac6125bff98e3f2cc701a0.ics', 1483658553, 'CEO', 'rgfdasd'),
(401, 5, 'VEVENT', '2017-01-17 00:00:00', '2017-01-18 00:00:00', 0, 'tes lokasi', 'BEGIN:VCALENDAR\r\nVERSION:2.0\r\nPRODID:ownCloud Calendar\r\nBEGIN:VEVENT\r\nCREATED;VALUE=DATE-TIME:20170105T225528Z\r\nUID:a55541fdf4\r\nLAST-MODIFIED;VALUE=DATE-TIME:20170105T232233Z\r\nDTSTAMP;VALUE=DATE-TIME:20170105T232233Z\r\nSUMMARY:tes lokasi\r\nDTSTART;VALUE=DATE:20170117\r\nDTEND;VALUE=DATE:20170118\r\nLOCATION:94|71\r\nDESCRIPTION:berenang|asdadsa||\r\nCATEGORIES:Business\r\nINSTRUKSI:rgfdasd\r\nCLASS:PUBLIC\r\nEND:VEVENT\r\nEND:VCALENDAR\r\n', 'owncloud-b5501a1a5fac6125bff98e3f2cc701a0.ics', 1483658553, 'berenang', 'rgfdasd'),
(402, 5, 'VEVENT', '2017-01-17 00:00:00', '2017-01-18 00:00:00', 0, 'tes lokasi', 'BEGIN:VCALENDAR\r\nVERSION:2.0\r\nPRODID:ownCloud Calendar\r\nBEGIN:VEVENT\r\nCREATED;VALUE=DATE-TIME:20170105T225528Z\r\nUID:a55541fdf4\r\nLAST-MODIFIED;VALUE=DATE-TIME:20170105T232233Z\r\nDTSTAMP;VALUE=DATE-TIME:20170105T232233Z\r\nSUMMARY:tes lokasi\r\nDTSTART;VALUE=DATE:20170117\r\nDTEND;VALUE=DATE:20170118\r\nLOCATION:94|71\r\nDESCRIPTION:yoga|asdadsa||\r\nCATEGORIES:Business\r\nINSTRUKSI:rgfdasd\r\nCLASS:PUBLIC\r\nEND:VEVENT\r\nEND:VCALENDAR\r\n', 'owncloud-b5501a1a5fac6125bff98e3f2cc701a0.ics', 1483658553, 'yoga', 'rgfdasd');
>>>>>>> 9281f531bbb0bfbb6c0079cf768d03c1f33523b4

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
