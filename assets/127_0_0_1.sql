-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2022 at 01:31 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `neoflex`
--
CREATE DATABASE IF NOT EXISTS `eMax_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `eMax_db`;

-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

CREATE TABLE `actor` (
  `actor_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `actor`
--

INSERT INTO `actor` (`actor_id`, `name`) VALUES
(1, 'Tom Holland'),
(2, 'Tobey Maguire'),
(3, 'Andrew Garfield'),
(4, 'Adjetey Anang'),
(5, 'Kalybos'),
(6, 'Fella Makafui'),
(7, 'Charles Nii Armah'),
(8, 'Beverly Afaglo'),
(9, 'Majid Michel'),
(10, 'Salma Mumin'),
(11, 'Fred Amugi');

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `unique_identifier` varchar(255) NOT NULL,
  `version` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `about` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('0bte6jpu8pae3dkt2ah0v33451od2nl0', '::1', 1652352465, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323335323436353b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2235223b6c6f67696e5f747970657c733a313a2230223b),
('0oshf2uerugea9a1omcu6u48ljojoecp', '::1', 1652360413, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323336303431313b),
('0uv7ptkt09hojmjaapdu31rqi8d4pc4b', '::1', 1652622529, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323632323532393b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b6163746976655f757365727c733a353a2261646d696e223b),
('0vnissbdek63l15m96ujjg26cqobh0hh', '::1', 1652345854, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323334353835343b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2235223b6c6f67696e5f747970657c733a313a2230223b),
('27iqqt2pgr5e1tfefqtaiushseuhqm9p', '::1', 1652353863, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323335333836333b),
('2msjrr1411pr2laqgfp33hddab8bcf2o', '::1', 1652619493, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323631393439333b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2235223b6c6f67696e5f747970657c733a313a2230223b),
('31nrh4v4oqe4e2i85tlpvk2cqu2pfa67', '::1', 1652347186, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323334373138363b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2235223b6c6f67696e5f747970657c733a313a2230223b),
('3ods2skvldnpevtpt0mvifsc36a4v6v8', '::1', 1652622864, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323632323836343b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b6163746976655f757365727c733a353a2261646d696e223b),
('4pnv94qhjtia73gu4s1cgdk3g849aska', '::1', 1652447762, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323434373736323b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2233223b6c6f67696e5f747970657c733a313a2230223b6163746976655f757365727c733a353a227573657231223b757365725f656e746572696e675f74696d657374616d707c693a313635323434373539363b),
('4qbq6hdvl7ia3fgfvkve7maq68mj9441', '::1', 1652624143, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323632343134333b),
('66v3rc17p02srd679qen5ucrabj0uccg', '::1', 1652623252, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323632333235323b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2235223b6c6f67696e5f747970657c733a313a2230223b),
('6o2d3uaq24odgt06k96r9jbt8n5n2m5f', '::1', 1652352906, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323335323930363b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2235223b6c6f67696e5f747970657c733a313a2230223b),
('6o9qod9j2jav6hjea64ss94b8km0vtb9', '::1', 1652616263, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323631363236333b),
('6uu844annkbe2foj0ie3bjkvdrhe38s4', '::1', 1652357848, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323335373834383b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2235223b6c6f67696e5f747970657c733a313a2230223b),
('710lv0vkdjq99je1srg4k8a2r9im1m7n', '::1', 1652448303, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323434383330333b),
('72tfoh8s3hupstpi9j6cqs0q8u6130bc', '::1', 1652350458, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323335303435383b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2235223b6c6f67696e5f747970657c733a313a2230223b),
('7a5feoskp0nnecl9sfp6oj0jcho7jb40', '::1', 1652357520, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323335373532303b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2235223b6c6f67696e5f747970657c733a313a2230223b),
('7edv4g6m3s0atblgon4madgmg35venoj', '::1', 1652700115, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323730303130303b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b6163746976655f757365727c733a353a2261646d696e223b),
('8bla51ntovmeu69mteca1tvb54t4frl9', '::1', 1652351153, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323335313135333b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2235223b6c6f67696e5f747970657c733a313a2230223b),
('8bp9cnvla2eu648lsu1hciikbq3mio54', '::1', 1652358495, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323335383439353b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2235223b6c6f67696e5f747970657c733a313a2230223b),
('8brrk3m6jurpisqsqbscao6is5v75tna', '::1', 1652617462, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323631373436323b),
('8e5c0fov5q4bcdn2evrtt57cp68d9mft', '::1', 1652618403, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323631383430333b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b6163746976655f757365727c733a353a2261646d696e223b6c6173745f706167657c733a31363a227061796d656e745f73657474696e6773223b),
('8fnjn7gf4pi71e52abh0l9p16lji04cp', '::1', 1652450260, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323435303235393b),
('8r1oq24f48veuf49jv5qf5b4d0r4l508', '::1', 1652429722, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323432393732323b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b6163746976655f757365727c733a353a2261646d696e223b),
('92mvgcip0gjb27mum7mptcvd51v83tlf', '::1', 1652618716, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323631383731363b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b6163746976655f757365727c733a353a2261646d696e223b6c6173745f706167657c733a31363a227061796d656e745f73657474696e6773223b),
('9jv3t2rcb0hj2jna8bnspslff2p6k5rr', '::1', 1652700669, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323730303636373b),
('9ovh4g7co2a08jv7mn80hi85i9tl0o7o', '::1', 1652448941, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323434383934313b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2233223b6c6f67696e5f747970657c733a313a2230223b6163746976655f757365727c733a353a227573657231223b757365725f656e746572696e675f74696d657374616d707c693a313635323434383637323b),
('9sufjkl15fs7h1nbna9m4403o9ue2kl1', '::1', 1652428385, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323432383338353b),
('bgt719bbfm9eak4de3glrbnn6011jmta', '::1', 1652358824, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323335383832343b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2235223b6c6f67696e5f747970657c733a313a2230223b),
('blecm5b5qgrsqa72dj4doernagji531i', '::1', 1652621565, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323632313536353b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2235223b6c6f67696e5f747970657c733a313a2230223b),
('ci2upge9e7dbaoik0k6fhq3qsdf3j71o', '::1', 1652430315, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323433303237343b),
('cnrukbjsl13dgbkuogr47rolcbfo29nc', '::1', 1652357199, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323335373139393b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2235223b6c6f67696e5f747970657c733a313a2230223b),
('cnv5q0k88rgmbtt5rmf507iaetgqo5vg', '::1', 1652348302, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323334383330323b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2235223b6c6f67696e5f747970657c733a313a2230223b),
('di0p2dm22our5pnrgpdri6466eirgskk', '::1', 1652351474, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323335313437343b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2235223b6c6f67696e5f747970657c733a313a2230223b),
('e0u1b96i8c56mkrprp21l1lj28bvfrmn', '::1', 1652620749, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323632303734393b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2235223b6c6f67696e5f747970657c733a313a2230223b),
('eo11d0vlmro8kvu408rqneri9q6ntmh2', '::1', 1652618089, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323631383038393b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b6163746976655f757365727c733a353a2261646d696e223b),
('etm9stvqdshg0afh3eo1f2lqads1tk0u', '::1', 1652354489, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323335343438393b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2235223b6c6f67696e5f747970657c733a313a2230223b),
('g7ska1itts9rbhovmfu9ci1vrnaoo0t0', '::1', 1652351791, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323335313739313b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2235223b6c6f67696e5f747970657c733a313a2230223b),
('h6ev3ujjtoddq2k8unvibbm43k2iaiv6', '::1', 1652450259, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323435303235393b),
('h73q174p360h0tuc8mmhdt5tnvq9ssjl', '::1', 1652621053, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323632313035333b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2235223b6c6f67696e5f747970657c733a313a2230223b),
('hbig7fd1prm76k3c2dghvisac44df7la', '::1', 1652359256, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323335393235363b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2235223b6c6f67696e5f747970657c733a313a2230223b),
('hm5grm3abbu8ru11cq0siubr0p4kdp51', '::1', 1652430274, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323433303237343b),
('hvjtlci9565co8ikloj02osuekplrmdf', '::1', 1652624143, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323632343134333b),
('i9i1a9e900pl8snf93p05i5i2uia8ll4', '::1', 1652345481, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323334353438313b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2235223b6c6f67696e5f747970657c733a313a2230223b),
('ia956pi68ou5ngjjgecldifacp98mv6j', '::1', 1652355543, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323335353534333b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2235223b6c6f67696e5f747970657c733a313a2230223b),
('ic2ud76fup4t8bjalsg1pbpq2gi85fhc', '::1', 1652446294, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323434363239343b),
('it5ekq8ir8h2ca9a6pnnki8d6u9if4k6', '::1', 1652619809, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323631393830393b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2235223b6c6f67696e5f747970657c733a313a2230223b),
('j3jtai6g4fo3t0csi1tiabjojf5kn0ja', '::1', 1652353255, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323335333235353b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2235223b6c6f67696e5f747970657c733a313a2230223b),
('jilefgsbaoqr6nrlrr7egjp6tpcf9gm7', '::1', 1652429419, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323432393431393b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b6163746976655f757365727c733a353a2261646d696e223b),
('kikotburn53498kaafe6quc0ncpdoao6', '::1', 1652354860, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323335343836303b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2235223b6c6f67696e5f747970657c733a313a2230223b),
('kj2m20teksva4ulp6t2qkl3md19ojht1', '::1', 1652428818, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323432383831383b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b6163746976655f757365727c733a353a2261646d696e223b),
('kqm539clc77j49299jaocdfu81tbjvl4', '::1', 1652347770, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323334373737303b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2235223b6c6f67696e5f747970657c733a313a2230223b),
('krsffbniek6v0tooige8rgu3u84mura9', '::1', 1652346820, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323334363832303b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2235223b6c6f67696e5f747970657c733a313a2230223b),
('l7ddfb38ohkfnk02uq84q74adkch5pns', '::1', 1652616564, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323631363536343b),
('m8ms7tnf0pql7sa6vqinpv2hi5u5b0ho', '::1', 1652348641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323334383634313b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2235223b6c6f67696e5f747970657c733a313a2230223b),
('mh303d19p7rp92p2afvh9tvaja3ouilj', '::1', 1652355941, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323335353934313b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2235223b6c6f67696e5f747970657c733a313a2230223b),
('mspkkp1t175qo6nb3et3mp30i3kvan65', '::1', 1652700100, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323730303130303b),
('olpjv80m5fgsoq7tsqei2edeprdqid2i', '::1', 1652621919, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323632313931393b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2235223b6c6f67696e5f747970657c733a313a2230223b),
('onicsa7rsqpagulc5gms3ockjncb0g5n', '::1', 1652360194, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323336303139343b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2235223b6c6f67696e5f747970657c733a313a2230223b),
('orgsuis0mbqde0p7imbe51b20v4vcjpn', '::1', 1652390942, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323339303933393b),
('qaujnu24mps0c89j38p0suj757sdmuus', '::1', 1652350778, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323335303737383b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2235223b6c6f67696e5f747970657c733a313a2230223b),
('qcvkphih0k3c5d218umbtr616aj1bhbk', '::1', 1652344426, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323334343432363b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2235223b6c6f67696e5f747970657c733a313a2230223b),
('qm6mk5o6tifktrvplhkase0lia2kllkr', '::1', 1652616874, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323631363837343b),
('rfsneq9oealcomlacegi536f8d8982ct', '::1', 1652354166, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323335343136363b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2235223b6c6f67696e5f747970657c733a313a2230223b),
('roariqr334g0tki7mlinfhegou048028', '::1', 1652617776, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323631373737363b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b6163746976655f757365727c733a353a2261646d696e223b),
('s1184nc7sskr123buncc5ojcf3vpqj6g', '::1', 1652356884, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323335363838343b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2235223b6c6f67696e5f747970657c733a313a2230223b),
('st5hauun25c220u8t2neelqi9eb94uq9', '::1', 1652359868, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323335393836383b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2235223b6c6f67696e5f747970657c733a313a2230223b),
('stk5acd8vgb99341c2qumpnd3abifeuo', '::1', 1652446897, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323434363839373b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2233223b6c6f67696e5f747970657c733a313a2230223b6163746976655f757365727c733a353a227573657231223b757365725f656e746572696e675f74696d657374616d707c693a313635323434363537343b),
('t6r900h37lbsdv2vioqdbcfldmsi6mmd', '::1', 1652355207, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323335353230373b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2235223b6c6f67696e5f747970657c733a313a2230223b),
('u8otmn66rkve7kl28p2obdhesoas7ff4', '::1', 1652619148, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323631393134383b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2235223b6c6f67696e5f747970657c733a313a2230223b),
('ulaelsr25ca0v9sqgi3dsvi2cmmthhcg', '::1', 1652620384, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323632303338343b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2235223b6c6f67696e5f747970657c733a313a2230223b),
('um72nrho2si9mml1fneu8qrh9g4ue3sr', '::1', 1652352092, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323335323039323b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2235223b6c6f67696e5f747970657c733a313a2230223b),
('vc8gl4rkqviabbmrcc5q7iuo9gb3lges', '::1', 1652449415, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323434393431353b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b6163746976655f757365727c733a353a2261646d696e223b),
('vemnv6tj8nimd26ie97g193ihn6g5bm6', '::1', 1652447291, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323434373239313b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b6163746976655f757365727c733a353a2261646d696e223b6c6173745f706167657c733a31363a227061796d656e745f73657474696e6773223b),
('vevijhmr9e3bnak719l63iv8285kf5lu', '::1', 1652356266, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323335363236363b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2235223b6c6f67696e5f747970657c733a313a2230223b);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `name`, `status`) VALUES
(1, 'United States of America', NULL),
(2, 'Ghana', NULL),
(3, 'Nigeria', NULL),
(4, 'Spain', NULL),
(5, 'India', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `paypal_supported` int(11) DEFAULT NULL,
  `stripe_supported` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES
(1, 'Leke', 'ALL', 'Lek', 0, 1),
(2, 'Dollars', 'USD', '$', 1, 1),
(3, 'Naira', 'NGN', '₦', 1, 0),
(4, 'Pesos', 'ARS', '$', 0, 1),
(5, 'South African Rand', 'ZAR', 'R', 1, 1),
(6, 'Dollars', 'AUD', '$', 1, 1),
(7, 'New Manats', 'AZN', 'ман', 0, 1),
(8, 'Dollars', 'BSD', '$', 0, 1),
(9, 'Dollars', 'BBD', '$', 0, 1),
(10, 'Rubles', 'BYR', 'p.', 0, 0),
(11, 'Euro', 'EUR', '€', 1, 1),
(12, 'Dollars', 'BZD', 'BZ$', 0, 1),
(13, 'Dollars', 'BMD', '$', 0, 1),
(14, 'Bolivianos', 'BOB', '$b', 0, 1),
(15, 'Convertible Marka', 'BAM', 'KM', 0, 1),
(16, 'Pula', 'BWP', 'P', 0, 1),
(17, 'Leva', 'BGN', 'лв', 0, 1),
(18, 'Reais', 'BRL', 'R$', 1, 1),
(19, 'Pounds', 'GBP', '£', 1, 1),
(20, 'Dollars', 'BND', '$', 0, 1),
(21, 'Riels', 'KHR', '៛', 0, 1),
(22, 'Dollars', 'CAD', '$', 1, 1),
(23, 'Dollars', 'KYD', '$', 0, 1),
(24, 'Pesos', 'CLP', '$', 0, 1),
(25, 'Ghana Cedi', 'GH₵', '₵', 1, 1),
(26, 'Pesos', 'COP', '$', 0, 1),
(27, 'Colón', 'CRC', '₡', 0, 1),
(28, 'Kuna', 'HRK', 'kn', 0, 1),
(29, 'Pesos', 'CUP', '₱', 0, 0),
(30, 'Koruny', 'CZK', 'Kč', 1, 1),
(31, 'Kroner', 'DKK', 'kr', 1, 1),
(32, 'Pesos', 'DOP ', 'RD$', 0, 1),
(33, 'Dollars', 'XCD', '$', 0, 1),
(34, 'Pounds', 'EGP', '£', 0, 1),
(35, 'Colones', 'SVC', '$', 0, 0),
(36, 'Pounds', 'FKP', '£', 0, 1),
(37, 'Dollars', 'FJD', '$', 0, 1),
(38, 'Cedis', 'GHC', '¢', 0, 0),
(39, 'Pounds', 'GIP', '£', 0, 1),
(40, 'Quetzales', 'GTQ', 'Q', 0, 1),
(41, 'Pounds', 'GGP', '£', 0, 0),
(42, 'Dollars', 'GYD', '$', 0, 1),
(43, 'Lempiras', 'HNL', 'L', 0, 1),
(44, 'Dollars', 'HKD', '$', 1, 1),
(45, 'Forint', 'HUF', 'Ft', 1, 1),
(46, 'Kronur', 'ISK', 'kr', 0, 1),
(47, 'Rupees', 'INR', 'Rp', 0, 1),
(48, 'Rupiahs', 'IDR', 'Rp', 0, 1),
(49, 'Rials', 'IRR', '﷼', 0, 0),
(50, 'Pounds', 'IMP', '£', 0, 0),
(51, 'New Shekels', 'ILS', '₪', 1, 1),
(52, 'Dollars', 'JMD', 'J$', 0, 1),
(53, 'Yen', 'JPY', '¥', 1, 1),
(54, 'Pounds', 'JEP', '£', 0, 0),
(55, 'Tenge', 'KZT', 'лв', 0, 1),
(56, 'Won', 'KPW', '₩', 0, 0),
(57, 'Won', 'KRW', '₩', 0, 1),
(58, 'Soms', 'KGS', 'лв', 0, 1),
(59, 'Kips', 'LAK', '₭', 0, 1),
(60, 'Lati', 'LVL', 'Ls', 0, 0),
(61, 'Pounds', 'LBP', '£', 0, 1),
(62, 'Dollars', 'LRD', '$', 0, 1),
(63, 'Switzerland Francs', 'CHF', 'CHF', 1, 1),
(64, 'Litai', 'LTL', 'Lt', 0, 0),
(65, 'Denars', 'MKD', 'ден', 0, 1),
(66, 'Ringgits', 'MYR', 'RM', 1, 1),
(67, 'Rupees', 'MUR', '₨', 0, 1),
(68, 'Pesos', 'MXN', '$', 1, 1),
(69, 'Tugriks', 'MNT', '₮', 0, 1),
(70, 'Meticais', 'MZN', 'MT', 0, 1),
(71, 'Dollars', 'NAD', '$', 0, 1),
(72, 'Rupees', 'NPR', '₨', 0, 1),
(73, 'Guilders', 'ANG', 'ƒ', 0, 1),
(74, 'Dollars', 'NZD', '$', 1, 1),
(75, 'Cordobas', 'NIO', 'C$', 0, 1),
(76, 'Nairas', 'NGN', '₦', 0, 1),
(77, 'Krone', 'NOK', 'kr', 1, 1),
(78, 'Rials', 'OMR', '﷼', 0, 0),
(79, 'Rupees', 'PKR', '₨', 0, 1),
(80, 'Balboa', 'PAB', 'B/.', 0, 1),
(81, 'Guarani', 'PYG', 'Gs', 0, 1),
(82, 'Nuevos Soles', 'PEN', 'S/.', 0, 1),
(83, 'Pesos', 'PHP', 'Php', 1, 1),
(84, 'Zlotych', 'PLN', 'zł', 1, 1),
(85, 'Rials', 'QAR', '﷼', 0, 1),
(86, 'New Lei', 'RON', 'lei', 0, 1),
(87, 'Rubles', 'RUB', 'руб', 0, 1),
(88, 'Pounds', 'SHP', '£', 0, 1),
(89, 'Riyals', 'SAR', '﷼', 0, 1),
(90, 'Dinars', 'RSD', 'Дин.', 0, 1),
(91, 'Rupees', 'SCR', '₨', 0, 1),
(92, 'Dollars', 'SGD', '$', 1, 1),
(93, 'Dollars', 'SBD', '$', 0, 1),
(94, 'Shillings', 'SOS', 'S', 0, 1),
(95, 'Rand', 'ZAR', 'R', 0, 1),
(96, 'Rupees', 'LKR', '₨', 0, 1),
(97, 'Kronor', 'SEK', 'kr', 1, 1),
(98, 'Dollars', 'SRD', '$', 0, 1),
(99, 'Pounds', 'SYP', '£', 0, 0),
(100, 'New Dollars', 'TWD', 'NT$', 1, 1),
(101, 'Baht', 'THB', '฿', 1, 1),
(102, 'Dollars', 'TTD', 'TT$', 0, 1),
(103, 'Lira', 'TRY', 'TL', 0, 1),
(104, 'Liras', 'TRL', '£', 0, 0),
(105, 'Dollars', 'TVD', '$', 0, 0),
(106, 'Hryvnia', 'UAH', '₴', 0, 1),
(107, 'Pesos', 'UYU', '$U', 0, 1),
(108, 'Sums', 'UZS', 'лв', 0, 1),
(109, 'Bolivares Fuertes', 'VEF', 'Bs', 0, 0),
(110, 'Dong', 'VND', '₫', 0, 1),
(111, 'Rials', 'YER', '﷼', 0, 1),
(112, 'Zimbabwe Dollars', 'ZWD', 'Z$', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `director`
--

CREATE TABLE `director` (
  `director_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `director`
--

INSERT INTO `director` (`director_id`, `name`) VALUES
(1, 'Jon Watts'),
(2, 'Kofi Asamoah'),
(3, 'Adu Iddris');

-- --------------------------------------------------------

--
-- Table structure for table `episode`
--

CREATE TABLE `episode` (
  `episode_id` int(11) NOT NULL,
  `season_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `faq_id` int(11) NOT NULL,
  `question` text COLLATE utf8_unicode_ci NOT NULL,
  `answer` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `genre_id` int(11) NOT NULL,
  `name` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`genre_id`, `name`) VALUES
(1, 'Horror'),
(2, 'Action'),
(3, 'Romantic'),
(4, 'Sci-Fi (Comic)'),
(5, 'Sci-Fi');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `movie_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description_short` text COLLATE utf8_unicode_ci NOT NULL,
  `description_long` longtext COLLATE utf8_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `actors` longtext COLLATE utf8_unicode_ci NOT NULL,
  `director` text COLLATE utf8_unicode_ci NOT NULL,
  `featured` int(11) NOT NULL,
  `kids_restriction` int(11) NOT NULL DEFAULT 0,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `trailer_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`movie_id`, `title`, `description_short`, `description_long`, `year`, `country_id`, `rating`, `genre_id`, `actors`, `director`, `featured`, `kids_restriction`, `url`, `trailer_url`, `duration`) VALUES
(1, 'Spiderman: No way Home', 'Peter Parker seeks Doctor Strange\'s help to make people forget about Spiderman\'s identity. However, when the spell he casts gets corrupted, several unwanted guests enter their universe.', 'Peter Parker seeks Doctor Strange\'s help to make people forget about Spiderman\'s identity. However, when the spell he casts gets corrupted, several unwanted guests enter their universe.', 2021, 1, 4, 5, '[\"1\",\"2\",\"3\"]', '1', 0, 0, 'https://youtu.be/OyAjCDQ50-E', 'https://youtu.be/JfVOs4VSpmA', '8959'),
(2, 'Away Bus', 'Away Bus - Two sisters need to raise money to save their dying mother. All attempts to help fail, so they decide to do the unthinkable, a highway bus robbery. While it turns out to be a successful robbery and they gather enough to save their mother, this robbery has a twist, leaving the sisters to make quick decisions. Can they still save their mother\'s life, after all?', 'Away Bus - Two sisters need to raise money to save their dying mother. All attempts to help fail, so they decide to do the unthinkable, a highway bus robbery. While it turns out to be a successful robbery and they gather enough to save their mother, this robbery has a twist, leaving the sisters to make quick decisions. Can they still save their mother\'s life, after all?\r\n', 2019, 2, 4, 2, '[\"5\",\"6\",\"10\"]', '2', 1, 0, 'https://youtu.be/ysD_B1C0BVw', 'https://youtu.be/_bJpuHnrfHQ', '4851'),
(3, 'Terminus', 'Terminus showcases the ingenious ways by which women can showcase their skills, drive intellect and vision to disrupt the male-dominated industry. Terminus isdesigned to see women lead and tackle even more challenging events. It introduces to audiences, the first and independent Ghanaian female president whose government faces the toughest of test any nation can survive, a female director of operations at the organized crimes in Ghana.', 'Terminus showcases the ingenious ways by which women can showcase their skills, drive intellect and vision to disrupt the male-dominated industry. Terminus isdesigned to see women lead and tackle even more challenging events. It introduces to audiences, the first and independent Ghanaian female president whose government faces the toughest of test any nation can survive, a female director of operations at the organized crimes in Ghana.', 2015, 2, 5, 2, '[\"4\",\"7\",\"8\",\"9\",\"11\"]', '3', 1, 0, 'https://youtu.be/pi-larO7OD0', 'https://youtu.be/pOSfsqgg4iY', '5817');

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `plan_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `screens` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL COMMENT '1 active, 0 inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`plan_id`, `name`, `screens`, `price`, `status`) VALUES
(1, 'basic', '1', '10.99', 1),
(2, 'standard', '2', '24.99', 1),
(3, 'premium', '4', '50.99', 1);

-- --------------------------------------------------------

--
-- Table structure for table `progress`
--

CREATE TABLE `progress` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `active_user` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `movie_id` int(11) NOT NULL,
  `progress_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `season`
--

CREATE TABLE `season` (
  `season_id` int(11) NOT NULL,
  `series_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `series`
--

CREATE TABLE `series` (
  `series_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description_short` text COLLATE utf8_unicode_ci NOT NULL,
  `description_long` text COLLATE utf8_unicode_ci NOT NULL,
  `genre_id` int(11) NOT NULL,
  `actors` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'comma separated actor_id',
  `director` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `featured` int(11) NOT NULL,
  `kids_restriction` int(11) NOT NULL,
  `episodes` text COLLATE utf8_unicode_ci NOT NULL,
  `trailer_url` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `settings_id` int(11) NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES
(1, 'site_name', 'Enjoy the Latest Ghanaian Movies and TV Shows Online '),
(2, 'site_email', 'noreply@netflex.com'),
(3, 'paypal_merchant_email', ''),
(4, 'invoice_address', 'Ayeduase, KNUST, Kumasi'),
(5, 'language', 'english'),
(6, 'purchase_code', 'your-product-purchase-code-goes-here'),
(7, 'privacy_policy', '<hr />\r\n<p>Effective date: November 02, 2018</p>\r\n\r\n<p>Netflex (&quot;us&quot;, &quot;we&quot;, or &quot;our&quot;) operates the http://netflex.com website (the &quot;Service&quot;).</p>\r\n\r\n<p>This page informs you of our policies regarding the collection, use, and disclosure of personal data when you use our Service and the choices you have associated with that data. Our Privacy Policy for Netflex is managed through <a href=\"https://www.freeprivacypolicy.com/free-privacy-policy-generator.php\">Free Privacy Policy</a>.</p>\r\n\r\n<p>We use your data to provide and improve the Service. By using the Service, you agree to the collection and use of information in accordance with this policy. Unless otherwise defined in this Privacy Policy, terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, accessible from http://netflex.com</p>\r\n\r\n<h2>Information Collection And Use</h2>\r\n\r\n<p>We collect several different types of information for various purposes to provide and improve our Service to you.</p>\r\n\r\n<h3>Types of Data Collected</h3>\r\n\r\n<p>Personal Data</p>\r\n\r\n<p>While using our Service, we may ask you to provide us with certain personally identifiable information that can be used to contact or identify you (&quot;Personal Data&quot;). Personally identifiable information may include, but is not limited to:</p>\r\n\r\n<ul>\r\n	<li>Email address</li>\r\n	<li>First name and last name</li>\r\n	<li>Cookies and Usage Data</li>\r\n</ul>\r\n\r\n<p>Usage Data</p>\r\n\r\n<p>We may also collect information how the Service is accessed and used (&quot;Usage Data&quot;). This Usage Data may include information such as your computer&#39;s Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Service that you visit, the time and date of your visit, the time spent on those pages, unique device identifiers and other diagnostic data.</p>\r\n\r\n<p>Tracking &amp; Cookies Data</p>\r\n\r\n<p>We use cookies and similar tracking technologies to track the activity on our Service and hold certain information.</p>\r\n\r\n<p>Cookies are files with small amount of data which may include an anonymous unique identifier. Cookies are sent to your browser from a website and stored on your device. Tracking technologies also used are beacons, tags, and scripts to collect and track information and to improve and analyze our Service.</p>\r\n\r\n<p>You can instruct your browser to refuse all cookies or to indicate when a cookie is being sent. However, if you do not accept cookies, you may not be able to use some portions of our Service.</p>\r\n\r\n<p>Examples of Cookies we use:</p>\r\n\r\n<ul>\r\n	<li><strong>Session Cookies.</strong> We use Session Cookies to operate our Service.</li>\r\n	<li><strong>Preference Cookies.</strong> We use Preference Cookies to remember your preferences and various settings.</li>\r\n	<li><strong>Security Cookies.</strong> We use Security Cookies for security purposes.</li>\r\n</ul>\r\n\r\n<h2>Use of Data</h2>\r\n\r\n<p>Netflex uses the collected data for various purposes:</p>\r\n\r\n<ul>\r\n	<li>To provide and maintain the Service</li>\r\n	<li>To notify you about changes to our Service</li>\r\n	<li>To allow you to participate in interactive features of our Service when you choose to do so</li>\r\n	<li>To provide customer care and support</li>\r\n	<li>To provide analysis or valuable information so that we can improve the Service</li>\r\n	<li>To monitor the usage of the Service</li>\r\n	<li>To detect, prevent and address technical issues</li>\r\n</ul>\r\n\r\n<h2>Transfer Of Data</h2>\r\n\r\n<p>Your information, including Personal Data, may be transferred to &mdash; and maintained on &mdash; computers located outside of your state, province, country or other governmental jurisdiction where the data protection laws may differ than those from your jurisdiction.</p>\r\n\r\n<p>If you are located outside Australia and choose to provide information to us, please note that we transfer the data, including Personal Data, to Australia and process it there.</p>\r\n\r\n<p>Your consent to this Privacy Policy followed by your submission of such information represents your agreement to that transfer.</p>\r\n\r\n<p>Netflex will take all steps reasonably necessary to ensure that your data is treated securely and in accordance with this Privacy Policy and no transfer of your Personal Data will take place to an organization or a country unless there are adequate controls in place including the security of your data and other personal information.</p>\r\n\r\n<h2>Disclosure Of Data</h2>\r\n\r\n<h3>Legal Requirements</h3>\r\n\r\n<p>Netflex may disclose your Personal Data in the good faith belief that such action is necessary to:</p>\r\n\r\n<ul>\r\n	<li>To comply with a legal obligation</li>\r\n	<li>To protect and defend the rights or property of Netflex</li>\r\n	<li>To prevent or investigate possible wrongdoing in connection with the Service</li>\r\n	<li>To protect the personal safety of users of the Service or the public</li>\r\n	<li>To protect against legal liability</li>\r\n</ul>\r\n\r\n<h2>Security Of Data</h2>\r\n\r\n<p>The security of your data is important to us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While we strive to use commercially acceptable means to protect your Personal Data, we cannot guarantee its absolute security.</p>\r\n\r\n<h2>Service Providers</h2>\r\n\r\n<p>We may employ third party companies and individuals to facilitate our Service (&quot;Service Providers&quot;), to provide the Service on our behalf, to perform Service-related services or to assist us in analyzing how our Service is used.</p>\r\n\r\n<p>These third parties have access to your Personal Data only to perform these tasks on our behalf and are obligated not to disclose or use it for any other purpose.</p>\r\n\r\n<h2>Links To Other Sites</h2>\r\n\r\n<p>Our Service may contain links to other sites that are not operated by us. If you click on a third party link, you will be directed to that third party&#39;s site. We strongly advise you to review the Privacy Policy of every site you visit.</p>\r\n\r\n<p>We have no control over and assume no responsibility for the content, privacy policies or practices of any third party sites or services.</p>\r\n\r\n<h2>Children&#39;s Privacy</h2>\r\n\r\n<p>Our Service does not address anyone under the age of 18 (&quot;Children&quot;).</p>\r\n\r\n<p>We do not knowingly collect personally identifiable information from anyone under the age of 18. If you are a parent or guardian and you are aware that your Children has provided us with Personal Data, please contact us. If we become aware that we have collected Personal Data from children without verification of parental consent, we take steps to remove that information from our servers.</p>\r\n\r\n<h2>Changes To This Privacy Policy</h2>\r\n\r\n<p>We may update our Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page.</p>\r\n\r\n<p>We will let you know via email and/or a prominent notice on our Service, prior to the change becoming effective and update the &quot;effective date&quot; at the top of this Privacy Policy.</p>\r\n\r\n<p>You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.</p>\r\n\r\n<h2>Contact Us</h2>\r\n\r\n<p>If you have any questions about this Privacy Policy, please contact us:</p>\r\n\r\n<ul>\r\n	<li>By email: support@netflex.com</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n'),
(23, 'cookie_note', 'This Website Uses Cookies To Personalize Content And Analyse Traffic In Order To Offer You A Better Experience.'),
(8, 'refund_policy', '<h1>Returns and Refunds Policy</h1>\r\n\r\n<p>Thank you for shopping at Netflex.</p>\r\n\r\n<p>Please read this policy carefully. This is the Return and Refund Policy of Netflex. This Return and Refund Policy for Netflex is managed by <a href=\"https://termsfeed.com/return-refund-policy/generator/\">the Return Refund Policy Generator</a>.</p>\r\n\r\n<h2>Digital products</h2>\r\n\r\n<p>We do not issue refunds for digital products once the order is confirmed and the product is sent.</p>\r\n\r\n<p>We recommend contacting us for assistance if you experience any issues receiving or downloading our products.</p>\r\n\r\n<h2>Contact us</h2>\r\n\r\n<p>If you have any questions about our Returns and Refunds Policy, please contact us:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>By email: support@netflex.com</p>\r\n	</li>\r\n</ul>\r\n'),
(22, 'cookie_status', 'active'),
(9, 'stripe_publishable_key', ''),
(10, 'stripe_secret_key', ''),
(11, 'trial_period', 'off'),
(12, 'trial_period_days', '30'),
(13, 'theme', 'flixer'),
(14, 'currency_position', 'left'),
(15, 'system_currency', 'GH₵'),
(16, 'paypal_currency', 'GH₵'),
(17, 'stripe_currency', 'GH₵'),
(18, 'paypal', '[{\"active\":\"1\",\"mode\":\"sandbox\",\"sandbox_client_id\":\"AZDxjDScFpQtjWTOUtWKbyN_bDt4OgqaF4eYXlewfBP4-8aqX3PiV8e1GWU6liB2CUXlkA59kJXE7M6R\",\"production_client_id\":\"1234\",\"sandbox_secret_key\":\"EMa5pCTuOpmHkhHaCGibGhVUcKg0yt5-C3CzJw-OWJCzaXXzTlyD17SICob_BkfM_0Nlk7TWnN42cbGz\",\"production_secret_key\":\"12345\"}]'),
(19, 'stripe_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"public_key\":\"pk_test_LnMXAA8Rox0ITcpDgkIjbcR600u09yZlhQ\",\"secret_key\":\"sk_test_9iN1igv6l9R5tolcyZLrIgMP00rcDJMVnJ\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}]'),
(20, 'purchase_code', 'your-product-purchase-code-goes-here'),
(21, 'version', '2.4'),
(24, 'cookie_policy', '<h1>Cookie policy</h1>\r\n\r\n<ol>\r\n	<li>Cookies are small text files that can be used by websites to make a user&#39;s experience more efficient.</li>\r\n	<li>The law states that we can store cookies on your device if they are strictly necessary for the operation of this site. For all other types of cookies we need your permission.</li>\r\n	<li>This site uses different types of cookies. Some cookies are placed by third party services that appear on our pages.</li>\r\n</ol>\r\n'),
(25, 'protocol', 'smtp'),
(26, 'smtp_host', 'ssl://smtp.googlemail.com'),
(27, 'smtp_port', '465'),
(28, 'smtp_user', 'your-email-address'),
(29, 'smtp_pass', ''),
(30, 'email_verification', '0'),
(31, 'recaptcha', '0'),
(32, 'recaptcha_secretkey', 'recaptcha-secretkey'),
(33, 'recaptcha_sitekey', 'recaptcha-sitekey');

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `subscription_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `price_amount` int(11) NOT NULL,
  `paid_amount` float NOT NULL,
  `timestamp_from` int(11) NOT NULL,
  `timestamp_to` int(11) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_details` text COLLATE utf8_unicode_ci NOT NULL,
  `payment_timestamp` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 active, 0 cancelled',
  `currency` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`subscription_id`, `plan_id`, `user_id`, `price_amount`, `paid_amount`, `timestamp_from`, `timestamp_to`, `payment_method`, `payment_details`, `payment_timestamp`, `status`, `currency`) VALUES
(1, 3, 3, 0, 0, 1652212188, 1654804188, 'FREE', '', 1652212188, 1, ''),
(2, 3, 4, 0, 0, 1652255844, 1654847844, 'FREE', '', 1652255844, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `subtitle`
--

CREATE TABLE `subtitle` (
  `id` int(11) UNSIGNED NOT NULL,
  `movie_id` int(11) NOT NULL,
  `language` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subtitle`
--

INSERT INTO `subtitle` (`id`, `movie_id`, `language`, `file`) VALUES
(1, 1, 'English', 'English-1.vtt');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1 admin, 0 customer',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user1` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user 1',
  `user2` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user 2',
  `user3` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user 3',
  `user4` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user 4',
  `user1_session` text COLLATE utf8_unicode_ci NOT NULL,
  `user2_session` text COLLATE utf8_unicode_ci NOT NULL,
  `user3_session` text COLLATE utf8_unicode_ci NOT NULL,
  `user4_session` text COLLATE utf8_unicode_ci NOT NULL,
  `user1_movielist` text COLLATE utf8_unicode_ci NOT NULL,
  `user2_movielist` text COLLATE utf8_unicode_ci NOT NULL,
  `user3_movielist` text COLLATE utf8_unicode_ci NOT NULL,
  `user4_movielist` text COLLATE utf8_unicode_ci NOT NULL,
  `user1_serieslist` text COLLATE utf8_unicode_ci NOT NULL,
  `user2_serieslist` text COLLATE utf8_unicode_ci NOT NULL,
  `user3_serieslist` text COLLATE utf8_unicode_ci NOT NULL,
  `user4_serieslist` text COLLATE utf8_unicode_ci NOT NULL,
  `verification_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plan_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 banned'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `type`, `name`, `email`, `password`, `user1`, `user2`, `user3`, `user4`, `user1_session`, `user2_session`, `user3_session`, `user4_session`, `user1_movielist`, `user2_movielist`, `user3_movielist`, `user4_movielist`, `user1_serieslist`, `user2_serieslist`, `user3_serieslist`, `user4_serieslist`, `verification_code`, `plan_id`, `status`) VALUES
(1, 1, 'Owura', 'owurakuagyena5@gmail.com', '9bc34549d565d9505b287de0cd20ac77be1d3f2c', 'user 1', 'user 2', 'user 3', 'user 4', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 0, 1),
(3, 0, '', 'stevkky@gmail.com', 'a6c9523bef8789af443e486911d9fd2c5f431e64', 'Sandra', 'user 2', 'user 3', 'user 4', '1652448672', '1652446954', '', '', '[\"2\",\"3\"]', '', '', '', '', '', '', '', NULL, 0, 1),
(4, 0, '', 'seth@gmail.com', 'a6c9523bef8789af443e486911d9fd2c5f431e64', 'user 1', 'user 2', 'user 3', 'user 4', '', '1652269464', '', '', '', '[\"1\"]', '', '', '', '', '', '', NULL, 0, 1),
(5, 0, '', 'samuelgyamfi@yahoo.com', 'a6c9523bef8789af443e486911d9fd2c5f431e64', 'user 1', 'user 2', 'user 3', 'user 4', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`actor_id`);

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`director_id`);

--
-- Indexes for table `episode`
--
ALTER TABLE `episode`
  ADD PRIMARY KEY (`episode_id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`plan_id`);

--
-- Indexes for table `progress`
--
ALTER TABLE `progress`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `season`
--
ALTER TABLE `season`
  ADD PRIMARY KEY (`season_id`);

--
-- Indexes for table `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`series_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`subscription_id`);

--
-- Indexes for table `subtitle`
--
ALTER TABLE `subtitle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actor`
--
ALTER TABLE `actor`
  MODIFY `actor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `director`
--
ALTER TABLE `director`
  MODIFY `director_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `episode`
--
ALTER TABLE `episode`
  MODIFY `episode_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `plan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `progress`
--
ALTER TABLE `progress`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `season`
--
ALTER TABLE `season`
  MODIFY `season_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `series`
--
ALTER TABLE `series`
  MODIFY `series_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `subscription_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subtitle`
--
ALTER TABLE `subtitle`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
