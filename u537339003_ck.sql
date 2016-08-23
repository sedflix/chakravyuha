-- phpMyAdmin SQL Dump
-- version 4.4.15
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 10, 2016 at 08:58 PM
-- Server version: 5.6.25-73.1-log
-- PHP Version: 5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iiitd_chak`
--

-- --------------------------------------------------------

--
-- Table structure for table `attempt`
--

CREATE TABLE IF NOT EXISTS `attempt` (
  `id` int(11) NOT NULL,
  `level` smallint(6) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `answer` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE IF NOT EXISTS `email` (
  `id` int(11) NOT NULL,
  `website_name` varchar(100) NOT NULL,
  `smtp_server` varchar(100) NOT NULL,
  `smtp_port` int(10) NOT NULL,
  `email_login` varchar(150) NOT NULL,
  `email_pass` varchar(100) NOT NULL,
  `from_name` varchar(100) NOT NULL,
  `from_email` varchar(150) NOT NULL,
  `transport` varchar(255) NOT NULL,
  `verify_url` varchar(255) NOT NULL,
  `email_act` int(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id`, `website_name`, `smtp_server`, `smtp_port`, `email_login`, `email_pass`, `from_name`, `from_email`, `transport`, `verify_url`, `email_act`) VALUES
(1, 'Chakravyuha - Esya | IIIT D', 'smtp.mail.yahoo.com', 587, 'siddharth.yadav_98@yahoo.in', '[Sid123]', 'Siddharth Yadav', 'siddharth.yadav_98@yahoo.in', 'tls', 'http://theexplorer.xyz/', 0);

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE IF NOT EXISTS `keys` (
  `id` int(11) NOT NULL,
  `stripe_ts` varchar(255) NOT NULL,
  `stripe_tp` varchar(255) NOT NULL,
  `stripe_ls` varchar(255) NOT NULL,
  `stripe_lp` varchar(255) NOT NULL,
  `recap_pub` varchar(100) NOT NULL,
  `recap_pri` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leaderboard`
--

CREATE TABLE IF NOT EXISTS `leaderboard` (
  `id` int(11) NOT NULL,
  `level` smallint(6) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL,
  `page` varchar(100) NOT NULL,
  `private` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page`, `private`) VALUES
(1, 'index.php', 0),
(2, 'z_us_root.php', 0),
(3, 'users/account.php', 1),
(4, 'users/admin.php', 1),
(5, 'users/admin_page.php', 1),
(6, 'users/admin_pages.php', 1),
(7, 'users/admin_permission.php', 1),
(8, 'users/admin_permissions.php', 1),
(9, 'users/admin_user.php', 1),
(10, 'users/admin_users.php', 1),
(11, 'users/edit_profile.php', 1),
(12, 'users/email_settings.php', 1),
(13, 'users/email_test.php', 1),
(14, 'users/forgot_password.php', 0),
(15, 'users/forgot_password_reset.php', 0),
(16, 'users/index.php', 0),
(17, 'users/init.php', 0),
(18, 'users/join.php', 0),
(19, 'users/joinThankYou.php', 0),
(20, 'users/login.php', 0),
(21, 'users/logout.php', 0),
(22, 'users/profile.php', 1),
(23, 'users/times.php', 0),
(24, 'users/user_settings.php', 1),
(25, 'users/verify.php', 0),
(26, 'users/verify_resend.php', 0),
(27, 'users/view_all_users.php', 1),
(28, 'usersc/empty.php', 0);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`) VALUES
(1, 'User'),
(2, 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `permission_page_matches`
--

CREATE TABLE IF NOT EXISTS `permission_page_matches` (
  `id` int(11) NOT NULL,
  `permission_id` int(15) NOT NULL,
  `page_id` int(15) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permission_page_matches`
--

INSERT INTO `permission_page_matches` (`id`, `permission_id`, `page_id`) VALUES
(2, 2, 27),
(3, 1, 24),
(4, 1, 22),
(5, 2, 13),
(6, 2, 12),
(7, 1, 11),
(8, 2, 10),
(9, 2, 9),
(10, 2, 8),
(11, 2, 7),
(12, 2, 6),
(13, 2, 5),
(14, 2, 4),
(15, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE IF NOT EXISTS `profiles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bio` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=187 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `bio`) VALUES
(1, 1, '<h1>This is the Admin''s bio.efwedf fkjsdghkj, svhckajhkh a;;&nbsp;</h1>\r\n<p>thois asud;kc fk;dsnvm e''fojpk;v''k; ljvnkl.vm&nbsp;</p>\r\n<p>djvnkl;dskd''</p>\r\n<p>&nbsp;,ddvlnkm;s;a</p>\r\n<p>d'''' jknvnmld;s'' k vnlnsdl;fk .n</p>'),
(2, 2, '<p>This is your biovc vsdv fgf sgs fbd fg bbbd bbxcdst rfbbcvdrg hf</p>'),
(18, 18, 'This is your bio'),
(19, 19, 'This is your bio'),
(20, 20, 'This is your bio'),
(21, 21, 'This is your bio'),
(22, 22, 'This is your bio'),
(23, 23, 'This is your bio'),
(24, 24, 'This is your bio'),
(25, 25, 'This is your bio'),
(26, 26, 'This is your bio'),
(27, 27, 'This is your bio'),
(28, 28, 'This is your bio'),
(29, 29, 'This is your bio'),
(30, 30, 'This is your bio'),
(31, 31, 'This is your bio'),
(32, 32, 'This is your bio'),
(33, 33, 'This is your bio'),
(34, 34, 'This is your bio'),
(35, 35, 'This is your bio'),
(36, 36, 'This is your bio'),
(37, 37, 'This is your bio'),
(38, 38, 'This is your bio'),
(39, 39, 'This is your bio'),
(40, 40, 'This is your bio'),
(41, 41, 'This is your bio'),
(42, 42, '<p>.</p>'),
(43, 43, '<p>My name is Abhishek Jain I done my schooling&nbsp;from DAV Dayanand vihar and now pursuing bcom(h) from VIPS,pitampura.</p>\r\n<p>I writes blogges on mobile phone reviews but now thinking for something more to explore and work on it.</p>\r\n<p>&nbsp;</p>'),
(44, 44, 'This is your bio'),
(45, 45, 'This is your bio'),
(46, 46, '<p>Hello!</p>\r\n<p>I represent Vishwa Bharati Public School, Noida.&nbsp;</p>'),
(47, 47, 'This is your bio'),
(48, 48, 'This is your bio'),
(49, 49, '<p>Got Tech. Will Thrive.</p>'),
(50, 50, '<p>Darte toh ham apne <strong>abbu</strong> se bhi nahi hai.&nbsp;</p>'),
(51, 51, '<p style="text-align: center;"><code>Programmer at heart</code></p>'),
(52, 52, 'This is your bio'),
(53, 53, 'This is your bio'),
(54, 54, 'This is your bio'),
(55, 55, 'This is your bio'),
(56, 56, 'This is your bio'),
(57, 57, 'This is your bio'),
(58, 58, 'This is your bio'),
(59, 59, 'This is your bio'),
(60, 60, 'This is your bio'),
(61, 61, 'This is your bio'),
(62, 62, 'This is your bio'),
(63, 63, 'This is your bio'),
(64, 64, 'This is your bio'),
(65, 65, 'This is your bio'),
(66, 66, 'This is your bio'),
(67, 67, '<p>Graphic Designer||Programmer||Musician||Engineer</p>\r\n<p>&nbsp;</p>'),
(68, 68, '<p>This is your bio</p>'),
(69, 69, 'This is your bio'),
(70, 70, '<p>Bhai nahi hoga mujhseeeeeeeeeeeeee</p>'),
(71, 71, '<p>Wanna know me?</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>I will write a book on myself till then Talk with me you will come to know about me</p>'),
(72, 72, 'This is your bio'),
(73, 73, 'This is your bio'),
(74, 74, 'This is your bio'),
(75, 75, 'This is your bio'),
(76, 76, '<p>BOSS B|&nbsp;</p>'),
(77, 77, 'This is your bio'),
(78, 78, 'This is your bio'),
(79, 79, 'This is your bio'),
(80, 80, 'This is your bio'),
(81, 81, 'This is your bio'),
(82, 82, 'This is your bio'),
(83, 83, 'This is your bio'),
(84, 84, 'This is your bio'),
(85, 85, 'This is your bio'),
(86, 86, 'This is your bio'),
(87, 87, 'This is your bio'),
(88, 88, 'This is your bio'),
(89, 89, 'This is your bio'),
(90, 90, '<p>This is your bio</p>'),
(91, 91, 'This is your bio'),
(92, 92, 'This is your bio'),
(93, 93, 'This is your bio'),
(94, 94, 'This is your bio'),
(95, 95, '<p><strong>DO NOT MESS WITH ME</strong></p>'),
(96, 96, 'This is your bio'),
(97, 97, 'This is your bio'),
(98, 98, 'This is your bio'),
(99, 99, 'This is your bio'),
(100, 100, 'This is your bio'),
(101, 101, 'This is your bio'),
(102, 102, '<p>I m fun loving person and love adventures.&nbsp;</p>\r\n<p>&nbsp;</p>'),
(103, 103, 'This is your bio'),
(104, 104, 'This is your bio'),
(105, 105, 'This is your bio'),
(106, 106, 'This is your bio'),
(107, 107, 'This is your bio'),
(108, 108, 'This is your bio'),
(109, 109, 'This is your bio'),
(110, 110, 'This is your bio'),
(111, 111, 'This is your bio'),
(112, 112, 'This is your bio'),
(113, 113, '<p>IIT Roorkee se hain hum.</p>\r\n<p>Enough said!</p>'),
(114, 114, 'This is your bio'),
(115, 115, 'This is your bio'),
(116, 116, 'This is your bio'),
(117, 117, 'This is your bio'),
(118, 118, 'This is your bio'),
(119, 119, 'This is your bio'),
(120, 120, 'This is your bio'),
(121, 121, 'This is your bio'),
(122, 122, 'This is your bio'),
(123, 123, '<p>"See, I''m not a monster. I''m just ahead of the curve!" I AM BATMAN! Barca Lover, Football is Life. Tech Follower and Gamer. &lt;3 </p>'),
(124, 124, 'This is your bio'),
(125, 125, 'This is your bio'),
(126, 126, 'This is your bio'),
(127, 127, 'This is your bio'),
(128, 128, 'This is your bio'),
(129, 129, 'This is your bio'),
(130, 130, 'This is your bio'),
(131, 131, 'This is your bio'),
(132, 132, 'This is your bio'),
(133, 133, 'This is your bio'),
(134, 134, '<p>Front End web dev. Studies.&nbsp;Maths. Chess.</p>'),
(135, 135, 'This is your bio'),
(136, 136, 'This is your bio'),
(137, 137, '<p>I hate bio.</p>'),
(138, 138, 'This is your bio'),
(139, 139, 'This is your bio'),
(140, 140, 'This is your bio'),
(141, 141, 'This is your bio'),
(142, 142, 'This is your bio'),
(143, 143, 'This is your bio'),
(144, 144, 'This is your bio'),
(145, 145, 'This is your bio'),
(146, 146, 'This is your bio'),
(147, 147, 'This is your bio'),
(148, 148, 'This is your bio'),
(149, 149, 'This is your bio'),
(150, 150, '<p>Tech Geek</p>\r\n<p>lakshaykapoor.tk</p>'),
(151, 151, 'This is your bio'),
(152, 152, 'This is your bio'),
(153, 153, 'This is your bio'),
(154, 154, 'This is your bio'),
(155, 155, 'This is your bio'),
(156, 156, 'This is your bio'),
(157, 157, 'This is your bio'),
(158, 158, 'This is your bio'),
(159, 159, 'This is your bio'),
(160, 160, 'This is your bio'),
(161, 161, 'This is your bio'),
(162, 162, '<p>Student.</p>'),
(163, 163, 'This is your bio'),
(164, 164, 'This is your bio'),
(165, 165, 'This is your bio'),
(166, 166, '<p style="text-align: center;">#Here_We_Go</p>'),
(167, 167, 'This is your bio'),
(168, 168, 'This is your bio'),
(169, 169, 'This is your bio'),
(170, 170, 'This is your bio'),
(171, 171, 'This is your bio'),
(172, 172, 'This is your bio'),
(173, 173, 'This is your bio'),
(174, 174, 'This is your bio'),
(175, 175, 'This is your bio'),
(176, 176, 'This is your bio'),
(177, 177, 'This is your bio'),
(178, 178, '<p>This is my bio</p>'),
(179, 179, 'This is your bio'),
(180, 180, 'This is your bio'),
(181, 181, '<p>I''m not what you''re looking for.</p>'),
(182, 182, 'This is your bio'),
(183, 183, 'This is your bio'),
(184, 184, '<p>Hi i am currently persuing civil engineering in one if the prestigious institutions of Kolkata. A passionate football player and a passionate blogger. Have great niche towards creating the best of articles and playing the best of games on field</p>'),
(185, 185, 'This is your bio'),
(186, 186, 'This is your bio');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(50) NOT NULL,
  `recaptcha` int(1) NOT NULL DEFAULT '0',
  `force_ssl` int(1) NOT NULL,
  `login_type` varchar(20) NOT NULL,
  `css_sample` int(1) NOT NULL,
  `us_css1` varchar(255) NOT NULL,
  `us_css2` varchar(255) NOT NULL,
  `us_css3` varchar(255) NOT NULL,
  `css1` varchar(255) NOT NULL,
  `css2` varchar(255) NOT NULL,
  `css3` varchar(255) NOT NULL,
  `site_name` varchar(100) NOT NULL,
  `language` varchar(255) NOT NULL,
  `track_guest` int(1) NOT NULL,
  `site_offline` int(1) NOT NULL,
  `force_pr` int(1) NOT NULL,
  `reserved1` varchar(100) NOT NULL,
  `reserverd2` varchar(100) NOT NULL,
  `custom1` varchar(100) NOT NULL,
  `custom2` varchar(100) NOT NULL,
  `custom3` varchar(100) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `recaptcha`, `force_ssl`, `login_type`, `css_sample`, `us_css1`, `us_css2`, `us_css3`, `css1`, `css2`, `css3`, `site_name`, `language`, `track_guest`, `site_offline`, `force_pr`, `reserved1`, `reserverd2`, `custom1`, `custom2`, `custom3`) VALUES
(1, 0, 0, '', 1, '../users/css/color_schemes/bootstrap.min.css', '../usersc/css/custom.css', '../users/css/custom.css', '', '', '', 'Chakravyuha - Esya | IIIT - D', 'en', 1, 0, 0, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `email` varchar(155) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `permissions` int(11) NOT NULL,
  `logins` int(100) NOT NULL,
  `account_owner` tinyint(4) NOT NULL DEFAULT '0',
  `account_id` int(11) NOT NULL DEFAULT '0',
  `company` varchar(255) NOT NULL,
  `stripe_cust_id` varchar(255) NOT NULL,
  `billing_phone` varchar(20) NOT NULL,
  `billing_srt1` varchar(255) NOT NULL,
  `billing_srt2` varchar(255) NOT NULL,
  `billing_city` varchar(255) NOT NULL,
  `billing_state` varchar(255) NOT NULL,
  `billing_zip_code` varchar(255) NOT NULL,
  `join_date` datetime NOT NULL,
  `last_login` datetime NOT NULL,
  `email_verified` tinyint(4) NOT NULL DEFAULT '0',
  `vericode` varchar(15) NOT NULL,
  `title` varchar(100) NOT NULL,
  `active` int(1) NOT NULL,
  `level` smallint(6) NOT NULL DEFAULT '0',
  `lastAnswerTime` timestamp NULL DEFAULT NULL,
  `custom3` varchar(255) NOT NULL,
  `custom4` varchar(255) NOT NULL,
  `custom5` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=187 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`, `fname`, `lname`, `permissions`, `logins`, `account_owner`, `account_id`, `company`, `stripe_cust_id`, `billing_phone`, `billing_srt1`, `billing_srt2`, `billing_city`, `billing_state`, `billing_zip_code`, `join_date`, `last_login`, `email_verified`, `vericode`, `title`, `active`, `level`, `lastAnswerTime`, `custom3`, `custom4`, `custom5`) VALUES
(1, 'siddharth16268@iiitd.ac.in', 'admin', '$2y$12$QgCDFu5KiZ8qCRbAae8FiunuS60.x4ImqhZJuo2dRC8llDAfLQ7JO', 'Admin', 'User', 1, 22, 1, 0, 'UserSpice', '', '', '', '', '', '', '', '2016-01-01 00:00:00', '2016-08-10 13:59:55', 1, '322418', '', 0, 0, '0000-00-00 00:00:00', '', '', ''),
(33, 'sharmistha1999@gmail.com', 'Sharmistha', '$2y$12$5yA.0lCvPu31IOglIWBSd.o.aOq5FUumAmkAij3XezB49Q0Dp5Q0i', 'Sharmistha', 'Gupta', 1, 0, 1, 0, 'IIIT Delhi', '', '', '', '', '', '', '', '2016-08-08 12:13:58', '0000-00-00 00:00:00', 1, '192381', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(34, 'ashutosh@hack.iiitd.in', 'ashutosh', '$2y$12$Vd91DCkndrjPngXMwxIZsev1iDl7AJ.Pt8c3sL2S9BGujhvaScegK', 'Ashutosh', 'Kumar', 1, 1, 1, 0, 'IIIT-Delhi', '', '', '', '', '', '', '', '2016-08-09 03:12:46', '2016-08-09 03:12:59', 1, '678437', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(35, 'siddhupagi97@gmail.com', 'siddharth', '$2y$12$1d9cAWU5UHi3nrjEQFYGhefWl30T6OwLtjEJ6z9zzjlrpw1eJRGUW', 'Siddahrth', 'Yadav', 1, 0, 1, 0, 'IIIT D', '', '', '', '', '', '', '', '2016-08-09 03:47:21', '0000-00-00 00:00:00', 1, '797936', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(36, 'shreyansm97@gmail.com', 'shrawnz', '$2y$12$VzAAppki5pIdwuEAwldJZ.MUpeDZ5m.MpFa7Nif/sU2mxvOfBbV5G', 'Shreyans', 'Mongia', 1, 1, 1, 0, 'IIIT Delhi', '', '', '', '', '', '', '', '2016-08-09 04:27:43', '2016-08-09 04:28:09', 1, '634847', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(37, 'abhi4iitkgp2012@gmail.com', 'kstew', '$2y$12$Ei5JiJKjUXK6HefTtU55keQjDMdnSxD8wDhI4hXuRTgMXbBckuIdu', 'Abhilash', 'Paduru', 1, 4, 1, 0, 'IIT Kharagpur', '', '', '', '', '', '', '', '2016-08-09 04:34:26', '2016-08-10 07:33:22', 1, '772962', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(38, 'pmor16@gmail.com', '@papa', '$2y$12$gRTN/Qr6XAvlEYfOCMeGceu09kZm9TGOH2bqVsH9.SFwzcBru0BEi', 'Prikankshit', 'Mor', 1, 0, 1, 0, 'IIIT Delhi', '', '', '', '', '', '', '', '2016-08-09 04:51:17', '0000-00-00 00:00:00', 1, '163049', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(39, 'techhunter3@gmail.com', 'shivansh', '$2y$12$e4HZGkcuAgy7ST.v8WlXk.17R596dc3OedawFtndxB8kgqA015p4K', 'Shivansh', 'Yadav', 1, 3, 1, 0, 'Vivekanand School', '', '', '', '', '', '', '', '2016-08-09 04:58:13', '2016-08-09 16:50:06', 1, '722750', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(40, 'aditya15124@iiitd.ac.in', '@_did', '$2y$12$MFxmRlNsq/cpqSQ2gLmFrO.YoZonDeNj9xKJyjxS.jxdQCmvkDYwG', 'Aditya', 'Diundi', 1, 0, 1, 0, 'Indraprastha Institute of Information Technology', '', '', '', '', '', '', '', '2016-08-09 05:08:44', '0000-00-00 00:00:00', 1, '405454', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(41, 'akhilbajaj65@gmail.com', 'akhilbajaj65', '$2y$12$9SFA2NqqOliIOYKDXo..yOh4gXCdJJFj/oTZ6uNrG7b1G.43meRN2', 'Akhil', 'Bajaj', 1, 1, 1, 0, 'DTU', '', '', '', '', '', '', '', '2016-08-09 06:07:00', '2016-08-09 06:33:43', 1, '981268', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(42, 'tripler340@gmail.com', 'errwar', '$2y$12$JIqw3iML8GKRg2n22yku0u1ZEHR0FePIqD1WA.W8nSyq55dnafhva', '*****', '****', 1, 2, 1, 0, 'IIITD', '', '', '', '', '', '', '', '2016-08-09 06:20:18', '2016-08-09 06:31:37', 1, '941623', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(43, 'Jabhishek.06@gmail.com', 'Jabhishek006', '$2y$12$ZEXTEUs4OucxfFRbPXfDe.Z1soUm7g1vFzwEc9r0CtVPM7whVf0gu', 'Abhishek', 'Jain', 1, 4, 1, 0, 'VIPS', '', '', '', '', '', '', '', '2016-08-09 08:14:58', '2016-08-09 10:18:24', 1, '759880', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(44, 'Harshbandhey419@gmail.com', 'Raptor', '$2y$12$YrbwiW7hF/T5HBN1EypCTeYot1vREJBofE43SKiLnjgCuSqky161K', 'Harsh', 'Bandhey', 1, 3, 1, 0, 'Delhi Public School, Bhilai', '', '', '', '', '', '', '', '2016-08-09 08:39:33', '2016-08-10 05:17:45', 1, '700500', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(45, 'ishbirw@gmail.com', 'Ishbir', '$2y$12$SBckBC/pCny1fFSXQsgswunj8GhTHLxsdona45YPXYte2BJ.SKxzi', 'Ishbir', 'Walia', 1, 0, 1, 0, 'IIITD', '', '', '', '', '', '', '', '2016-08-09 09:01:46', '0000-00-00 00:00:00', 1, '446356', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(46, 'dhruv.noida175@gmail.com', 'dhruv.noida175', '$2y$12$APnW9Eod9PYl0OVgl2zi5efnzCMqcONXECGPw97NU2V45M4SgvbQu', 'Dhruv', 'Rawat', 1, 5, 1, 0, 'Vishwa Bharati Public School, Noida', '', '', '', '', '', '', '', '2016-08-09 09:50:27', '2016-08-10 10:56:42', 1, '732131', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(47, 'gagannagpal68@gmail.com', 'Gagan', '$2y$12$3wcggUOt2OMCH8LDFd44G.eUCUUK2vOQRD6YK00oMbGK11OUwiH92', 'Gagandeep', 'Nagpal', 1, 1, 1, 0, 'USICT', '', '', '', '', '', '', '', '2016-08-09 09:59:17', '2016-08-09 10:00:21', 1, '448745', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(48, 'mittal0404@gmail.com', 'ash01', '$2y$12$gS6x.NFLwKzctedOWT6HgueKNSQNP3KKiaBYd9yQdtY7PRIlKsWay', 'ash', 'mittal', 1, 2, 1, 0, 'IIITD', '', '', '', '', '', '', '', '2016-08-09 10:09:20', '2016-08-09 15:04:07', 1, '810274', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(49, 'khatri.sagar.sk@gmail.com', 'Sagar', '$2y$12$YsFtgrx.Gg8Q3bX.6tc8W.RM16Iyh/Xh8XIbfSkDR2LP03g6UsVzu', 'Sagar', 'Khatri', 1, 2, 1, 0, 'D.P.S. Sonepat', '', '', '', '', '', '', '', '2016-08-09 11:05:35', '2016-08-09 23:59:46', 1, '593643', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(50, 'abhiroopdey@gmail.com', 'metalheadabhi', '$2y$12$6ZQovj3l4z6D.SwLdvELRujnKetxxSNmRUQmrU8nDXY1dClV75yXS', 'Abhiroop', 'Dey', 1, 1, 1, 0, 'Delhi Technological University', '', '', '', '', '', '', '', '2016-08-09 12:20:37', '2016-08-09 12:40:44', 1, '284530', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(51, 'bavejam99@gmail.com', 'maddyb_99', '$2y$12$BtTEoW6FcknYCRwjBKyhGukCSB8EM4P5Ja2xra0IGcy7icctbJXsy', 'Madhav', 'Baveja', 1, 1, 1, 0, 'Montfort School, Delhi', '', '', '', '', '', '', '', '2016-08-09 12:38:05', '2016-08-09 12:39:13', 1, '955241', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(52, 'harshaggarwal2002@gmail.com', 'harsh aggarwal', '$2y$12$4c6VMWDimzhQ4Ekkid7pCurMqomdQPNoqmAz8H/rBjruUn0AID/XC', 'harsh', 'aggarwal', 1, 2, 1, 0, 'shaheed rajpal dav public school', '', '', '', '', '', '', '', '2016-08-09 12:38:16', '2016-08-10 06:22:49', 1, '297797', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(53, 'vrinda16279@iiitd.ac.in', 'fireflies', '$2y$12$J5QdLzFLOTY95uaGiHdeS.IMl9yGCtqzSNxZCXkTEmO3S6elUU9NW', 'Vrinda', 'Mittal', 1, 1, 1, 0, 'iiitd', '', '', '', '', '', '', '', '2016-08-09 12:39:06', '2016-08-09 12:45:32', 1, '637113', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(54, 'aaditya207cgupta@gmail.com', 'DAVAADITYAGUPTA09', '$2y$12$RU3SBE9Mzo2eZ4MQFqSbeONflumENylyMjOZ7VO6akUncg.lXK0e2', 'AADITYA', 'GUPTA', 1, 1, 1, 0, 'Shaheed Rajpal DAV Public school, Dayanand vihar', '', '', '', '', '', '', '', '2016-08-09 12:47:35', '2016-08-09 12:48:08', 1, '378651', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(55, 'mihee20@gmail.com', 'Cryptic Unicorn', '$2y$12$/3r6fgN1BxSNrbC.bU9H7eKrVyqIYC/dXwFOsgbCVkRkpOcUh1Izu', 'Mihir', 'Rajora', 1, 0, 1, 0, 'Ryan International School, Vasant Kunj', '', '', '', '', '', '', '', '2016-08-09 13:02:01', '0000-00-00 00:00:00', 1, '581415', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(56, 'kunal14054@iiitd.ac.in', 'muzikworm', '$2y$12$FrR9cXjzVisEuFXkYlAiQelP8OwktBiOPfH3ANnXUmYKIfHHkTPp.', 'Kunal', 'Sharma', 1, 1, 1, 0, 'IIIT Delhi', '', '', '', '', '', '', '', '2016-08-09 13:11:31', '2016-08-09 13:11:43', 1, '323034', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(57, 'dhruvtuli@gmail.com', 'dhruvtuli', '$2y$12$52AOQ3TW6obspM2I1mZbderm9oCk5WVxduKPLSg/m4HqZyLhRRpr2', 'Dhruv', 'Tuli', 1, 1, 1, 0, 'Modern School, Barakhamba Road', '', '', '', '', '', '', '', '2016-08-09 13:20:01', '2016-08-09 13:20:11', 1, '621436', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(58, 'shiven15094@iiitd.ac.in', 'shiven15094', '$2y$12$q6MFnn5uqK1ocQOZZPVOO.crtizFLYiIrQQlFmdAOCDCL8ZjhzYnG', 'Shiven', 'Mian', 1, 1, 1, 0, 'IIITD', '', '', '', '', '', '', '', '2016-08-09 13:25:28', '2016-08-09 13:25:57', 1, '306640', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(59, 'hanitbanga@gmail.com', 'Cerberus', '$2y$12$dt0aEoYg8TXL7Q/Jk3E9t.rtjS8CGWkZww.M5xijGKKLxikqhe4xK', 'Hanit', 'Banga', 1, 1, 1, 0, 'IIIT Delhi', '', '', '', '', '', '', '', '2016-08-09 13:31:54', '2016-08-09 13:35:11', 1, '486825', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(60, 'adityeah42@gmail.com', 'ChadZ', '$2y$12$IRlUuw0GOgRu0veJ52jeoO3tL0TbVgN3yrBi..5Fhmqh.sv3N6gOq', 'Aditya', 'Chadha', 1, 2, 1, 0, 'NIEC', '', '', '', '', '', '', '', '2016-08-09 13:32:12', '2016-08-09 13:32:53', 1, '401599', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(61, 'i@ananayarora.com', 'ananay', '$2y$12$rPopeD.y9DTE08V3q6HMuOATeJmsDLLfAeN6T.rcfMZd42Q0KTm.O', 'Ananay', 'Arora', 1, 1, 1, 0, 'Delhi Public School, R.K. Puram', '', '', '', '', '', '', '', '2016-08-09 13:32:45', '2016-08-09 13:32:56', 1, '627612', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(62, 'shiven.exun97@gmail.com', 'shiven1234', '$2y$12$MtKL8ixih1x/wRn3BQ5Nd.wrKTnFJDd8Zq3laVITOUvoGdgteB5Ee', 'Shiven', 'Mian', 1, 0, 1, 0, 'IIITD', '', '', '', '', '', '', '', '2016-08-09 13:37:36', '0000-00-00 00:00:00', 1, '523345', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(63, 'yashgandhi32@Gmail.com', 'yashgandhi32', '$2y$12$f3nyfslUPj/vXodDKFFrUeFisBU3bVfZJwgQpVt8RtdoZXEFfo4T.', 'yash', 'gandhi', 1, 1, 1, 0, 'gtbit', '', '', '', '', '', '', '', '2016-08-09 13:41:29', '2016-08-09 13:41:40', 1, '786802', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(64, 'akshaytuli@gmail.com', 'akshaytuli', '$2y$12$/GedP3ZwTTCNco/vvBIX7O2i4PcCLRQ345Ym2M0bVOmmUvCX2R2AO', 'Akshay', 'Tuli', 1, 1, 1, 0, 'DPS Dwarka', '', '', '', '', '', '', '', '2016-08-09 13:43:44', '2016-08-09 13:43:59', 1, '358465', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(65, 'shubhankar.a31@gmail.com', 'astronights', '$2y$12$Rcu9B7G3dgX1d9sLxcpkcOgGw8diHFhCl5ViCsP3z5rKkiWT2i1VG', 'Shubhankar', 'Agrawal', 1, 1, 1, 0, 'hku', '', '', '', '', '', '', '', '2016-08-09 13:43:57', '2016-08-09 13:44:59', 1, '528218', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(66, 'divyansh1199@gmail.com', 'Senpai', '$2y$12$qjIgeFWpuxfSxa/LzCBYbOz.JicOycsfIluaDKbd960J8KJaTmHS2', 'Divyansh', 'Agarwal', 1, 2, 1, 0, 'DAV Sreshtha Vihar', '', '', '', '', '', '', '', '2016-08-09 13:45:17', '2016-08-09 13:50:06', 1, '908460', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(67, 'gauravloothra97@gmail.com', 'gauravloothra', '$2y$12$BNjdGFEnJbxVjC5kNvp/d.YVMe0FneVYHE/TEndHJyLVEoFNuVDqm', 'Gaurav', 'Loothra', 1, 1, 1, 0, 'ASET, Amity University Noida', '', '', '', '', '', '', '', '2016-08-09 13:45:36', '2016-08-09 13:46:01', 1, '913608', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(68, 'akansh97531@gmail.com', 'akansh97531', '$2y$12$zfAmg0TRflbV2P8PJ0rlG..g6iBXxKu/yH7iglNi/da1IhRb8msW.', 'akansh', 'jain', 1, 5, 1, 0, 'Jaypee institute of information technology', '', '', '', '', '', '', '', '2016-08-09 13:45:50', '2016-08-09 14:58:20', 1, '498428', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(69, 'ovalpearl@gmail.com', 'wista', '$2y$12$/BARsxQFXFmgnt2GyDb4HuVRfCjMt/DmqRKh4IY/k9LqkyKem3Zw.', 'Swati', 'Hegde', 1, 1, 1, 0, 'Delhi University', '', '', '', '', '', '', '', '2016-08-09 13:46:40', '2016-08-09 13:47:03', 1, '881041', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(70, 'parth15156@iiitd.ac.in', 'hum_se_na_hoga', '$2y$12$SZW8W83YCGOLS28iCIouxeYOVmV4FfP8bL3X2ymsNsD0k.pH3PIsq', 'Parth', 'Tiwari', 1, 1, 1, 0, 'IIITD', '', '', '', '', '', '', '', '2016-08-09 13:48:48', '2016-08-09 13:51:29', 1, '343439', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(71, 'Tarunyadav45500@gmail.com', 'Tarun1510', '$2y$12$up5X2gmsMC8gva1XdbpWN.yPl41F1vpZXlKdoU2dXO1m1XK91dr/2', 'Tarun', 'Yadav', 1, 1, 1, 0, 'ANDC , (DU)', '', '', '', '', '', '', '', '2016-08-09 13:51:46', '2016-08-09 13:52:15', 1, '559184', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(72, 'dhruv_agarwal@icloud.com', 'agdhruv', '$2y$12$yycUIF7qXcJAW34O8MnNa.5jDoDIhGeITg9eEMLV69WNFR1caO.pC', 'Dhruv', 'Agarwal', 1, 2, 1, 0, 'Ashoka University', '', '', '', '', '', '', '', '2016-08-09 13:52:06', '2016-08-10 04:54:52', 1, '577531', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(73, 'bhriguchopra619@gmail.com', 'Bhrigu', '$2y$12$/WKbtYhk4gYw.AvPGQIdUupBVSSqNW1pRLSEh9Yw6XcKKboP0MZSO', 'Bhrigu', 'Chopra', 1, 1, 1, 0, 'Deen dayal upadhyaya college', '', '', '', '', '', '', '', '2016-08-09 13:53:35', '2016-08-09 13:59:31', 1, '921813', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(74, 'vaibhav011yadav@gmail.com', 'vaibhav011yadav', '$2y$12$7PQC6oDTg7TRxW0uiV/57uYE7C4KOcSt2gFSBKZ4KX4eLjblRPPjG', 'Vaibhav', 'Yadav', 1, 1, 1, 0, 'Netaji subhas institute of technology', '', '', '', '', '', '', '', '2016-08-09 13:55:23', '2016-08-09 13:56:00', 1, '312124', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(75, 'vaibhavpundir254@yahoo.in', 'UncleIroh', '$2y$12$8B1XaN9CltEFdam403kVZOnVoPpN2M7KuLV7.jc0zEF2N432cOmkO', 'Vaibhav', 'Pundir', 1, 0, 1, 0, 'UPES', '', '', '', '', '', '', '', '2016-08-09 13:56:10', '0000-00-00 00:00:00', 1, '695732', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(76, 'mayur.somerville18@gmail.com', 'Mayur', '$2y$12$n8Qq6u27LBLbFfLpTWJykuLafcZAQB1XwSDAXJ/qSlk2BxcKynZvy', 'Mayur', 'Raj', 1, 1, 1, 0, 'Somerville NOIDA', '', '', '', '', '', '', '', '2016-08-09 13:59:47', '2016-08-09 14:01:28', 1, '647872', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(77, 'ojasnirula@rediffmail.com', 'Ojasnirula', '$2y$12$/TyXTOQo9ESg9QT8xvJ5UusZ3647vAEg0jJYc8vGEGAUsV30ZLqhi', 'Ojas', 'Nirula', 1, 1, 1, 0, 'VIPS , Pitampura', '', '', '', '', '', '', '', '2016-08-09 14:03:09', '2016-08-09 14:03:43', 1, '882023', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(78, 'nikhilmehalawat@gmail.com', 'Nikhil', '$2y$12$2hS98f8szdVvXUGWpPwpaeYIVPygrQtUJgRwtSyp66Kpcu6OH0taG', 'Nikhil', 'Mehalawat', 1, 1, 1, 0, 'Amity School Of Engineering And Technology,Noida', '', '', '', '', '', '', '', '2016-08-09 14:05:02', '2016-08-09 14:08:37', 1, '322662', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(79, 'jatin_gupta7@yahoo.co.in', 'swagie', '$2y$12$QE3NvpXQ2n6pMKFlU70FUuLQWv2wVPIOVDTmwypV8PBWiW42GkZi.', 'Jatin', 'Gupta', 1, 1, 1, 0, 'BVCOE', '', '', '', '', '', '', '', '2016-08-09 14:10:10', '2016-08-09 14:10:44', 1, '167733', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(80, 'ranjini.one@gmail.com', 'rb12345', '$2y$12$JOHp0R7qWa2ijMovDD81suQLMKeYnrMxsfz41vTF4/5XCBE2ts4UG', 'Ranjini', 'Bhattacharya', 1, 1, 1, 0, 'Modern Vidya Niketan', '', '', '', '', '', '', '', '2016-08-09 14:22:53', '2016-08-09 14:23:41', 1, '946330', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(81, 'nandhini.sreekumar@gmail.com', 'Nandhini', '$2y$12$VlZVh0qlJcFouZdz6T/BO.uRM/VvildS8mJj9BgsjfvBcrnAUJhpO', 'Nandhini', 'Sreekumar', 1, 0, 1, 0, 'Bits Pilani, Dubai', '', '', '', '', '', '', '', '2016-08-09 14:24:24', '0000-00-00 00:00:00', 1, '551530', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(82, 'sidjain2901@gmail.com', 'sid_jain', '$2y$12$lhpNQne8PXIzWz3vY4ZX4u0WZwlZqLFkofc6TpfJmRn9nQDB3kd3i', 'siddharth', 'jain', 1, 1, 1, 0, 'JSS Academy of technical education, noida', '', '', '', '', '', '', '', '2016-08-09 14:26:25', '2016-08-09 14:32:49', 1, '686600', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(83, 'd.narwal180@gmail.com', 'Iron Man', '$2y$12$.mW9QuV4ap4eFjMdYnQvlOuPvqKXHFW1fxPo8FvYs9IVeB3c2y52a', 'Dev', 'Narwal', 1, 1, 1, 0, 'IGRUA', '', '', '', '', '', '', '', '2016-08-09 14:30:23', '2016-08-09 14:30:52', 1, '331215', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(84, 'carolynerosangliani@gmail.com', 'BlazerBeam', '$2y$12$xErdtAWhLYj1KVVA2Usc2OrLBzIziJctH5ddCbvzkevvvqLVsJ6mu', 'Carolyne', 'Rosangliani', 1, 1, 1, 0, 'Shri Ram College of Commerce', '', '', '', '', '', '', '', '2016-08-09 14:33:27', '2016-08-09 14:33:58', 1, '193098', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(85, 'Yash9710@gmail.com', 'Dungeon_master', '$2y$12$iFyEzW9ZLfLYrRLefx4bg.CICHwA1MWXbGO1cE2ONv2jKYSDUcYmu', 'Yash', 'Gupta', 1, 1, 1, 0, 'Maharaja Agrasen Institute of Technology', '', '', '', '', '', '', '', '2016-08-09 14:34:20', '2016-08-09 14:35:09', 1, '220571', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(86, 'ankur.mhj@gmail.com', 'ankurmahajan', '$2y$12$ULhE2PLhIM0Uhg60B2DMGONqd3bgcJ46CmRS5AZfJ1jK.hvJOcsFS', 'Ankur', 'Mahajan', 1, 0, 1, 0, 'MIET, Jammu', '', '', '', '', '', '', '', '2016-08-09 14:37:29', '0000-00-00 00:00:00', 1, '495096', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(87, 'Jyotimangal04@gmail.com', 'Jyotimangal', '$2y$12$uSaievY6ycI3kXEKp71qM.p3G7oelNTTX3FK6K2mrW6uWvWadkP22', 'Jyoti', 'Mangal', 1, 0, 1, 0, 'IIT-Delhi', '', '', '', '', '', '', '', '2016-08-09 14:39:18', '0000-00-00 00:00:00', 1, '169405', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(88, 'sarthaknavaria21@gmail.com', 'Sarthak21', '$2y$12$3P8zs1AF1EziIbGGMMwNn.Vqjs07qMMKJjF/qQqAU.kRbJRFbVFg.', 'Sarthak', 'navaria', 1, 1, 1, 0, 'st columbas school', '', '', '', '', '', '', '', '2016-08-09 14:47:48', '2016-08-09 14:48:19', 1, '503369', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(89, 'khulbe.vaibhav@gmail.com', 'vibhu', '$2y$12$xACBo5abuHd7RsVAO01frO8Rc4uwXtumfeL6Ska97i/WH4kQgSFIS', 'vaibhav', 'khulbe', 1, 2, 1, 0, 'jaypee institute of information technology, noida', '', '', '', '', '', '', '', '2016-08-09 14:55:57', '2016-08-09 14:57:33', 1, '960541', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(90, 'soumyac19@gmail.com', 'ASTRO', '$2y$12$8RbedAdvOwUFSSi/.V/NnO9PrBLB47igKCR1E4M44fWJyfvDzwH2O', 'Soumya', 'Chaudhary', 1, 2, 1, 0, 'Tagore International School( Vasant Vihar)', '', '', '', '', '', '', '', '2016-08-09 14:59:27', '2016-08-09 15:02:54', 1, '527911', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(91, 'sanchitagarwal25@gmail.com', 'Sanchit1609', '$2y$12$LRh9i7/xauZmN0Ru.kciR.en7UnQ7LdROln58mU./av/lQp0JFVRi', 'Sanchit', 'Agarwal', 1, 0, 1, 0, 'Netaji Subhas Institute of Technology', '', '', '', '', '', '', '', '2016-08-09 15:02:26', '0000-00-00 00:00:00', 1, '169689', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(92, 'indrankur97@gmail.com', 'chintu_isg', '$2y$12$xjdYT8bdhCqzT4cD9SbDmO3EVllxCRHmA03NLxpvoBbFUCcBfpTWO', 'Indrankur', 'Sen Gupta', 1, 0, 1, 0, 'Netaji Subhas Institute of Technology', '', '', '', '', '', '', '', '2016-08-09 15:11:58', '0000-00-00 00:00:00', 1, '486006', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(93, 'Umang350@gmail.com', 'Umang350', '$2y$12$2WmrFGhmBN.SUrWFWKrloeyT.V9oUjsunSCpFXI3hlhNZKkqydfeC', 'Umang', 'Chauhan', 1, 1, 1, 0, 'DTU', '', '', '', '', '', '', '', '2016-08-09 15:16:22', '2016-08-09 15:16:51', 1, '898357', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(94, 'gokulasha.s@gmail.com', 'Gokuls', '$2y$12$7haL1zxsbot3Vuyg1b87.OnGCJVZHD/bom06AfTuvTmOOhFs7Swmy', 'Gokul', 'Sarath', 1, 1, 1, 0, 'College of engineering chengannur', '', '', '', '', '', '', '', '2016-08-09 15:28:15', '2016-08-09 15:28:50', 1, '861442', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(95, 'ari0997@gmail.com', 'laid_to_rest', '$2y$12$4.ZW2nerG0ZJgzf5AOL0yeAwj.9bG89aZl8hHHzxerOpsliquVRlq', 'Arvind', 'Rachuri', 1, 3, 1, 0, 'ABV IIITM, GWALIOR', '', '', '', '', '', '', '', '2016-08-09 15:28:44', '2016-08-10 03:51:56', 1, '124031', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(96, 'bhargavi1996@ymail.com', 'Brainy1757', '$2y$12$fqkai1hvWwK0WlG7k9hLLuArs29Om2YKmZq/yA9/zPBPUtNsezh2G', 'Bhargavi', 'Parthasarathy', 1, 2, 1, 0, 'IISER, Pune', '', '', '', '', '', '', '', '2016-08-09 15:56:26', '2016-08-09 15:59:18', 1, '942559', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(97, 'sandeepkumar100696@gmail.com', 'Sandy@00786', '$2y$12$fLjDOcA6qq9a4BWcxk6J8eGefuuTSRBLMj29YKZi8t46SzctjRc6C', 'Sandeep', 'Kumar', 1, 1, 1, 0, 'AIT', '', '', '', '', '', '', '', '2016-08-09 16:13:07', '2016-08-09 16:14:12', 1, '951025', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(98, 'Yashcc19@gmail.com', 'Yash__chhabra', '$2y$12$I1vk71XiCKWP.ccYO2d3fu9eiYdQJnCh3QDGZ4/TLviF42.3jCIq6', 'Yash', 'Chhabra', 1, 1, 1, 0, 'R.a.n public school', '', '', '', '', '', '', '', '2016-08-09 17:59:44', '2016-08-09 18:00:43', 1, '150842', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(99, 'singh.bharat8850@gmail.com', 'Wayne', '$2y$12$xhlxg3LkmOeTa0mxCiNS6u7kUqXVjVJE8HY7JNzbuEu8imQL1m6ra', 'Bharat', 'Singh', 1, 1, 1, 0, 'GIT', '', '', '', '', '', '', '', '2016-08-09 19:34:22', '2016-08-09 19:35:01', 1, '980886', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(100, 'sirjatindersrt@gmail.com', 'Kira1', '$2y$12$3FRvNItQVh1vAPrR303fvedWDb6aYLIlONQDd9dJEx3mbwX7.Wh9y', 'Jatinder Pal', 'Singh', 1, 0, 1, 0, 'ANDC', '', '', '', '', '', '', '', '2016-08-09 22:15:58', '0000-00-00 00:00:00', 1, '482359', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(101, 'sampreetbharali@gmail.com', 'sam4301', '$2y$12$DE38CdFBZMo1ipcrsUoLd.RkljwpBXaOHX1sB0P4jOvPs49.hnI72', 'Sampreet', 'Bharali', 1, 1, 1, 0, 'vishwa bharati public school, noida', '', '', '', '', '', '', '', '2016-08-09 23:02:50', '2016-08-09 23:03:21', 1, '289949', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(102, 'Prateekvishnoi1996@gmail.com', 'Prateek123', '$2y$12$TAU/Z6SDEYD83nHo671dZe9qzzzvf228vrBNq7Bd/Gt63SDVr9aQe', 'Prateek', 'Vishnoi', 1, 2, 1, 0, 'Moradabad Institute of technology', '', '', '', '', '', '', '', '2016-08-09 23:52:17', '2016-08-09 23:53:46', 1, '496407', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(103, 'Rishab1goel@gmail.com', 'Rishab1goel', '$2y$12$iHIRL6/TQh2HnmqMgnlkfeTJA4Hk6f8LkaHtIGn6eoCzjwK1SS.He', 'Rishab', 'Goel', 1, 0, 1, 0, 'MAIT', '', '', '', '', '', '', '', '2016-08-10 00:02:51', '0000-00-00 00:00:00', 1, '723827', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(104, 'anushka16798@gmail.com', 'walkington', '$2y$12$V5/2TwvFIGTviLu7LO9z7uImmesddllft9BUEJsrRuJBjaPiokJum', 'Anushka', 'Trivedi', 1, 1, 1, 0, 'Jain University', '', '', '', '', '', '', '', '2016-08-10 00:03:47', '2016-08-10 00:04:19', 1, '879649', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(105, 'cool_tarun110@yahoo.com', 'tarun_bathwal1', '$2y$12$8gHjEtgeAEmZ6tl7iHIomuKp7fvXswGB8ibsu7Ag46prj/4Wu9kt2', 'tarun', 'bathwal', 1, 1, 1, 0, 'abv-iiitm , gwalior', '', '', '', '', '', '', '', '2016-08-10 00:24:26', '2016-08-10 00:24:55', 1, '974268', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(106, 'bkgurnaney@gmail.com', 'darkchutney', '$2y$12$do1LLWRHkPLP6n7qe/Xu4.6OBZwl9V.zI75nCH4hf1kxJCB9AdyvW', 'Bhaskar', 'Gurnaney', 1, 2, 1, 0, 'NSIT', '', '', '', '', '', '', '', '2016-08-10 01:05:48', '2016-08-10 13:11:58', 1, '308513', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(107, 'kartik15142@iiitd.ac.in', 'kman649', '$2y$12$kZaWpfSKfLeBK9MOvDH6HeWA.INq2APwDQNbYRCt4Tz7rrdLkMrDe', 'Kartik', 'Mathur', 1, 1, 1, 0, 'IIIT Delhi', '', '', '', '', '', '', '', '2016-08-10 01:14:11', '2016-08-10 01:14:34', 1, '816850', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(108, 'adi.malhotra02@gmail.com', 'aditya.malhotra', '$2y$12$uycgXQbelEkfaBHQ3hycwej/1IKiIdefMLcZU8veYeZXBKWe/6K8q', 'Aditya', 'Malhotra', 1, 1, 1, 0, 'Delhi Technological University', '', '', '', '', '', '', '', '2016-08-10 01:17:02', '2016-08-10 01:19:09', 1, '501231', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(109, 'vibhugarg1994@gmail.com', 'guptavaibhavv', '$2y$12$ecivUPu/0FrBp0nKyLtMMeTvQf59NTjm45brqEsnyDYVSTpsvom3q', 'Vaibhav', 'Gupta', 1, 1, 1, 0, 'KNIT Sultanpur', '', '', '', '', '', '', '', '2016-08-10 01:17:25', '2016-08-10 01:17:45', 1, '592018', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(110, 'prashantjain.pro@gmail.com', 'prashant1024', '$2y$12$vp0g/Wr.USyN8lB2gnyzHuJvNFpWMFP.WwNBQuv3DGziggUtvZSmu', 'Prashant', 'Jain', 1, 0, 1, 0, 'GTBIT', '', '', '', '', '', '', '', '2016-08-10 01:35:12', '0000-00-00 00:00:00', 1, '294502', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(111, 'anshbajaj6@gmail.com', 'dunjinmaster', '$2y$12$LK8tF.T97u0mZFlQ7xkhpeP0AbrSgstR8gdj4vJBrfw0XiBcNIraK', 'ANSH', 'BAJAJ', 1, 1, 1, 0, 'KIIT WORLD SCHOOL', '', '', '', '', '', '', '', '2016-08-10 02:01:42', '2016-08-10 02:02:06', 1, '136208', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(112, 'sivanesa007@gmail.com', 'SIVANESA', '$2y$12$r9fL1gFV9z/lW1NmaoOmQOmzUgPkmqCmhqVXHV0ExsiHouoxToo4G', 'Sivanesa', 'Perumal', 1, 1, 1, 0, 'College Of Engineering Guindy', '', '', '', '', '', '', '', '2016-08-10 02:31:31', '2016-08-10 02:33:29', 1, '382562', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(113, 'soumay14@gmail.com', 'falcon', '$2y$12$zKQYre3K.q8BG7AFwafTtOXo2uGdO7SjSb8EpfbCY/cqZDxS01OZa', 'Soumay', 'Gupta', 1, 1, 1, 0, 'IIT Roorkee', '', '', '', '', '', '', '', '2016-08-10 04:23:05', '2016-08-10 04:23:27', 1, '371068', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(114, 'shobhitrathi10@gmail.com', 'Shobhit_Rathi', '$2y$12$vAoJImiAYl2bAzyCziCqJeoPoF4IuEXkX0PRvzuwViRbXnmTlW/7u', 'Shobhit', 'Rathi', 1, 4, 1, 0, 'DPS Dwarka', '', '', '', '', '', '', '', '2016-08-10 05:11:25', '2016-08-10 13:56:14', 1, '528505', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(115, '1297pav@gmail.com', 'pps1297', '$2y$12$7GYXgf0BieUmz.vxQIX9IuHxwAHdOkbt/2sAhRgSj5F1nh6i8McVO', 'Pranav Pratap', 'Singh', 1, 1, 1, 0, 'Thapar university', '', '', '', '', '', '', '', '2016-08-10 05:51:48', '2016-08-10 05:52:23', 1, '435308', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(116, 'shubhang.sati.1998@gmail.com', 'shubhang16198', '$2y$12$5aATFtw9Z6.skOphJuMls.lCcYBpM.yuGoF9YonoLz8KUKhp.Vmui', 'Shubhang', 'Sati', 1, 0, 1, 0, 'IIIT DELHI', '', '', '', '', '', '', '', '2016-08-10 05:55:23', '0000-00-00 00:00:00', 1, '615592', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(117, 'adityabhatt4444@gmail.com', 'TheSoulstirrer', '$2y$12$DwoGvDUU0eer0yBkRNOD0.LAMCpv3LweanXbe22OW6QOQX/wnFlpS', 'Aditya', 'Bhatt', 1, 1, 1, 0, 'DPS Dwarka', '', '', '', '', '', '', '', '2016-08-10 05:56:39', '2016-08-10 05:57:03', 1, '757882', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(118, 'apoorva14jain@gmail.com', 'apoorva14jain', '$2y$12$ds7w3//LIorCjldxg1H4ZuKdngfvKu2GPwhsr5wwXbDr5w/sJVu2i', 'apoorva', 'jain', 1, 4, 1, 0, 'Ryan International School TY', '', '', '', '', '', '', '', '2016-08-10 06:28:16', '2016-08-10 07:33:13', 1, '434042', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(119, 'ayushpanipat@gmail.com', 'mindbuster', '$2y$12$9T19SYiux8.g4q4m.qcTfuUxe.WHFL/EPvslObB.S.Hg/23OL20q.', 'Ayush', 'Gupta', 1, 1, 1, 0, 'Thapar university', '', '', '', '', '', '', '', '2016-08-10 06:30:51', '2016-08-10 14:21:24', 1, '639269', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(120, 'siddhartha16269@iiitd.ac.in', 'reddy', '$2y$12$iF4zNLrrnfEBs2oHawWvie2uZff.4EE0Cza1BlatWwUfP2f1sTiKC', 'Siddhartha', 'Jain', 1, 1, 1, 0, 'IIITD', '', '', '', '', '', '', '', '2016-08-10 06:37:38', '2016-08-10 06:37:51', 1, '780937', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(121, 'srishti22@yahoo.co.in', 'srishti.singh', '$2y$12$IGiXQuz.7s8dwyCvVGQ12.c8846P2whv5cORONK1DkR5jo7bzDGAW', 'Srishti', 'Singh', 1, 1, 1, 0, 'BITS Pilani Dubai Campus', '', '', '', '', '', '', '', '2016-08-10 06:46:11', '2016-08-10 06:46:32', 1, '770288', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(122, 'nachantani@yahoo.in', '420blazeit', '$2y$12$GNZ08BRG3jIlKCKWGRCoJu07aNOj8NEfVnUCfZQMLVmUfHgj4VHl6', 'navya', 'achantani', 1, 1, 1, 0, 'college of vocational studies', '', '', '', '', '', '', '', '2016-08-10 06:46:53', '2016-08-10 06:49:13', 1, '530152', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(123, 'utkarsh10sharma@outlook.com', 'skhiearth', '$2y$12$dWeeOGYRbAZYIl8u4hjPpeH8kp/io8.yvlMrHrLTAEfFKJqscsmJ.', 'Utkarsh', 'Sharma', 1, 2, 1, 0, 'Rukmini Devi Public School', '', '', '', '', '', '', '', '2016-08-10 07:06:39', '2016-08-10 07:13:12', 1, '518689', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(124, 'neelam.nimish@gmail.com', 'Nimish Mishra', '$2y$12$fOLZUpeKfQxM2VLV0duEAu2vfKPxeLAHgkKdah2HQR/r9tnM/PPUK', 'Nimish', 'Mishra', 1, 2, 1, 0, 'City montessori school', '', '', '', '', '', '', '', '2016-08-10 07:08:14', '2016-08-10 07:09:32', 1, '860827', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(125, 'yash210798@gmail.com', 'yash210798', '$2y$12$nV0lM7k/M4sTsYncQgyLDegtK1rcSt0.iGrs/bniYphSruW6ECrtS', 'YASH', 'GARG', 1, 1, 1, 0, 'Indian Institute of Technology', '', '', '', '', '', '', '', '2016-08-10 07:17:31', '2016-08-10 07:22:03', 1, '762422', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(126, 'kunwarpreet@live.com', 'Kunwarpreet', '$2y$12$IlLyNQV5bzVNBXKPgqp17ugXfR3moqjRK8Q6Gx4yvGyaISmOmN4Du', 'Kunwarpreet', 'Singh', 1, 0, 1, 0, 'St. Joseph&#039;s College Bangalore', '', '', '', '', '', '', '', '2016-08-10 07:42:41', '0000-00-00 00:00:00', 1, '685914', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(127, 'simran0807@gmail.com', 'Simran', '$2y$12$2d4cNXJJ9yb5xNprL8Qyr.eXRz7bBnzxahhKsvgZWUBYKJDuUHANK', 'Simran', 'Kohli', 1, 1, 1, 0, 'Delhi University', '', '', '', '', '', '', '', '2016-08-10 07:47:50', '2016-08-10 07:48:53', 1, '551653', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(128, 'akashmurali626@gmail.com', 'therehecomes', '$2y$12$uZmiXRQyELpDRSqCxl5dmeT8Du/Y0FyfhlifjF1aqSV5oY4DdZsHq', 'Akash', 'Murali', 1, 0, 1, 0, 'Sharda University', '', '', '', '', '', '', '', '2016-08-10 08:09:08', '0000-00-00 00:00:00', 1, '193901', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(129, 'achintya.2000dob@gmail.com', 'qwerty', '$2y$12$RmeXtyvoCPgPTCQJOXtO5eDN9zqSWiaoOHAUuLLCbbM8kXvnucHSS', 'Abcd', 'Efgh', 1, 2, 1, 0, 'Somerville School, NOIDA', '', '', '', '', '', '', '', '2016-08-10 08:25:52', '2016-08-10 08:32:32', 1, '950375', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(130, 'abhishek.saroha67@gmail.com', 'abhirf', '$2y$12$jX5KIE051GU4tvFYwFdtxekuy33lu9FodvqYUYQJZYmexG7kmqyue', 'Abhishek', 'Saroha', 1, 1, 1, 0, 'NIT Delhi', '', '', '', '', '', '', '', '2016-08-10 08:33:17', '2016-08-10 09:35:16', 1, '712338', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(131, 'matrix_mayank@yahoo.co.in', 'mayank', '$2y$12$.rH3f2KyhIwAS4yXu4G4augjgq0qg6AVEtPFLXQPUs7vVT/b3m7Uy', 'Mayank', 'Sharma', 1, 2, 1, 0, 'Delhi Technological University', '', '', '', '', '', '', '', '2016-08-10 08:59:57', '2016-08-10 11:29:02', 1, '131329', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(132, 'sinha.animesh20@gmail.com', 'deniedhash', '$2y$12$Qo5bVjm53bt79zimG8WWpe/9XwxXN3TCwh3wPQ4.VfUskV7S5v.ca', 'Animesh', 'Sinha', 1, 1, 1, 0, 'Gyan Bharati School', '', '', '', '', '', '', '', '2016-08-10 09:16:31', '2016-08-10 09:18:25', 1, '597845', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(133, 'mehrajayant@gmail.com', 'Jayant', '$2y$12$70V3VI9wfx5zWtXEDumXre5wbrujXSd7P4RnqiUqYhIXSoDVhuN9S', 'Jayan', 'Mehra', 1, 1, 1, 0, 'DPS RKP', '', '', '', '', '', '', '', '2016-08-10 09:40:51', '2016-08-10 09:41:09', 1, '699378', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(134, '1gaurangtandon@gmail.com', 'SigmaG', '$2y$12$epcCbi25PeiBtSSG7eJeCeVUGcetwWiUGV8W/zhsNnhMih2uTzkv.', 'Gaurang', 'Tandon', 1, 1, 1, 0, 'City Montessori Inter College', '', '', '', '', '', '', '', '2016-08-10 09:48:03', '2016-08-10 09:54:18', 1, '226546', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(135, 'raghav12153@iiitd.ac.in', 'raghavs', '$2y$12$i/Y9pdB7X9LhBfOFj6.YJOYiliAAUCimqMK1ylxVn8ekQ62wCHtxS', 'raghav', 'sehgal', 1, 1, 1, 0, 'IIITD', '', '', '', '', '', '', '', '2016-08-10 09:58:03', '2016-08-10 09:58:44', 1, '534605', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(136, 'ttjmaxx@gmail.com', 'Tanya Jain', '$2y$12$7HIhylYLDObaYiiGOVglJu.ovX4eZoPcqIP5CUE9RVyd2XFZhSA72', 'Tanya', 'Jain', 1, 2, 1, 0, 'Amity University, Noida', '', '', '', '', '', '', '', '2016-08-10 10:04:56', '2016-08-10 13:56:29', 1, '222950', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(137, 'rahul46940@gmail.com', 'r4hul2k', '$2y$12$Omj94.ef8EHUmdsvIFEtl.QSTqB7EaH1SlXp7Qz1fu5O1DGUx0qVm', 'Rahul', '...', 1, 1, 1, 0, 'The Air Force School', '', '', '', '', '', '', '', '2016-08-10 10:20:29', '2016-08-10 10:21:42', 1, '601119', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(138, 'nahalehushan@gmail.com', 'Luffy', '$2y$12$W80HC84KYre4SStWmmOcGucKXaf0ZIpNcBo8zTvL2DGE4R4sVPBWC', 'bhushan', 'nakhale', 1, 1, 1, 0, 'pict', '', '', '', '', '', '', '', '2016-08-10 10:27:14', '2016-08-10 10:27:33', 1, '217622', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(139, 'nikhil.hassija@gmail.com', 'nikhilhassija', '$2y$12$kLUXPaT9Ewg1Cn9HMjE/hOK9LvqV/289dSYMA7HxXJ/TOQT/0LpmO', 'Nikhil', 'Hassija', 1, 1, 1, 0, 'IIITD', '', '', '', '', '', '', '', '2016-08-10 10:35:26', '2016-08-10 10:35:57', 1, '900565', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(140, 'atul13025@iiitd.ac.in', 'raptt', '$2y$12$VDbOFlpQVK4r8026ZazlruPvJu7KioWkRE5X9pLwvzStJjeYRF2K6', 'Atul', 'Jain', 1, 1, 1, 0, 'IIIT-Delhi', '', '', '', '', '', '', '', '2016-08-10 10:44:50', '2016-08-10 10:45:17', 1, '161230', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(141, 'mohitgarg2219@gmail.com', 'mohitgarg2219', '$2y$12$C1bvq8dWgHMQ8MnX4.OQP.ADE1dmZqWnNsDGzodEpdrZaTipbjmyu', 'Mohit', 'Garg', 1, 1, 1, 0, 'Shaheed Rajpal DAV Public School', '', '', '', '', '', '', '', '2016-08-10 10:54:25', '2016-08-10 10:54:54', 1, '393005', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(142, 'singhgalus@gmail.com', 'windtalker', '$2y$12$Q7CaTEnv5d.uu9RhPciPKuGXwG.sZhJZ9o2akurgndUDEEepZgsYi', 'Varun', 'Singh', 1, 0, 1, 0, 'City Montessori School AG1', '', '', '', '', '', '', '', '2016-08-10 11:05:01', '0000-00-00 00:00:00', 1, '122434', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(143, 'renukaarjunan@yahoo.com', 'renukaarj', '$2y$12$zpQ73ZocYAAt8daShW63VuikRWppSq4fAwq9l8Srhg5ECeuD8bT/y', 'Renuka', 'Arjunan', 1, 1, 1, 0, 'Amity Business School', '', '', '', '', '', '', '', '2016-08-10 11:06:27', '2016-08-10 11:07:31', 1, '588595', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(144, 'sreeenath124@gmail.com', 'pikapika', '$2y$12$xn4t/D9lOyg7yUqPsLMoce.xeHzGRS9rVsKi9SfzZYnOOpP/JusNq', 'sreenath', 'pillai', 1, 0, 1, 0, 'Rit', '', '', '', '', '', '', '', '2016-08-10 11:10:12', '0000-00-00 00:00:00', 1, '260640', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(145, 'saini.sneha97@gmail.com', 'sneha Saini', '$2y$12$le8g4afYzrDPDQw3H5I.geCbJzPav9FYYedHLwNuLZ6w93gTc0HT2', 'sneha', 'saini', 1, 0, 1, 0, 'Gargi college', '', '', '', '', '', '', '', '2016-08-10 11:21:45', '0000-00-00 00:00:00', 1, '638902', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(146, 'sreerajsree123@gmail.com', 'Sreeraj', '$2y$12$FW1kmtjOPX16PggAn8y/ze8f0X3EafVVDtkGKPT5k7wS4AJyKxksS', 'Sree', 'Raj', 1, 1, 1, 0, 'CET', '', '', '', '', '', '', '', '2016-08-10 11:42:36', '2016-08-10 11:44:07', 1, '111436', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(147, 'mishu.arad@gmail.com', 'MishuAnubis', '$2y$12$MH3iMkxas6n74DH1LpZYV.ey1ncOr8ARWJNGJKImtFejhZgUPxTqS', 'Popescu', 'Mihai', 1, 1, 1, 0, 'Romania', '', '', '', '', '', '', '', '2016-08-10 12:05:00', '2016-08-10 12:06:58', 1, '726258', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(148, 'ayushkenhi@gmail.com', 'BlahBah', '$2y$12$gzHRkZuZm/jKiyNmRStE9u5cBgBwg1Ey6Aq69lGem5na0zNl0JD/u', 'Ayush', 'Kenhi', 1, 1, 1, 0, 'The Air Force School', '', '', '', '', '', '', '', '2016-08-10 12:18:28', '2016-08-10 12:20:31', 1, '856096', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(149, 'adarsh.ardram1729@gmail.com', 'Adarsh Adz', '$2y$12$L3nVzx71J4fiS0oUEi/K5uTtbeZNLDIfaxNwLb4mBYAa0qy0AYV.a', 'Adarsh', 'Adz', 1, 1, 1, 0, 'College of engineering Trivandrum', '', '', '', '', '', '', '', '2016-08-10 12:18:51', '2016-08-10 12:19:20', 1, '914859', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(150, 'lk.techmaxus@gmail.com', 'Lakshay', '$2y$12$9v04uqeaPjoAew9F2NJ6NOzjGqL2nYHx8.7HDWY.i5ika6YjtEWYi', 'Lakshay', 'Kapoor', 1, 1, 1, 0, 'St. Cecilia&#039;s Public School', '', '', '', '', '', '', '', '2016-08-10 12:31:54', '2016-08-10 12:33:34', 1, '904598', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(151, 'vsirpal123@gmail.com', 'varun_sirpal', '$2y$12$w67lzKCToX18QGqEGzeWUejJPTt/ntVsgMd6jPkv/dt6tbZegifwq', 'Varun', 'Sirpal', 1, 2, 1, 0, 'Ahlcon Public School', '', '', '', '', '', '', '', '2016-08-10 12:33:01', '2016-08-10 12:41:16', 1, '683842', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(152, 'yepatil@gmail.com', 'YogeshPatil', '$2y$12$aLDrE4uRrxuhxzrE1Bqmv.TbOddibBcTrbxbG4B/Fql5U03YHA4ky', 'Yogesh', 'Patil', 1, 1, 1, 0, 'BITS Pilani', '', '', '', '', '', '', '', '2016-08-10 12:36:24', '2016-08-10 12:37:37', 1, '943630', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(153, 'nikhil.npti28@gmail.com', 'nikhil9795', '$2y$12$SWMLnUpZdEHzYnK0dCfwPOlg04esIUOXhDvhqmiHGCyFbJf7QJkxC', 'nikhil', 'dhingra', 1, 1, 1, 0, 'npti', '', '', '', '', '', '', '', '2016-08-10 12:45:35', '2016-08-10 12:46:17', 1, '793462', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(154, 'sarthikadhawan@gmail.com', 'sarthika', '$2y$12$NPcWgX41H0iBUV6vZDDC4OVCA150htPzF0v0vNjB31YGf6nOuH9x6', 'sarthika', 'dhawan', 1, 1, 1, 0, 'IIITD', '', '', '', '', '', '', '', '2016-08-10 12:50:14', '2016-08-10 12:50:42', 1, '737752', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(155, 'varshita15187@iiitd.ac.in', 'varshita', '$2y$12$iNUP0Jskj3bBhQAiXYBMgOHJjQFTrFRpwgYe8POv2dHhnTcrX6TeG', 'varshita', 'gupta', 1, 1, 1, 0, 'IIIT Delhi', '', '', '', '', '', '', '', '2016-08-10 12:50:34', '2016-08-10 12:50:54', 1, '987412', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(156, 'yadav.mukul28@gmail.com', 'MUKUL YADAV', '$2y$12$5vHGmYDFjiLYQ3ZASimtzur8UXsHvBnuYFi3sHIlPJuWwzra5wO6O', 'MUKUL', 'YADAV', 1, 1, 1, 0, 'NSIT', '', '', '', '', '', '', '', '2016-08-10 12:50:37', '2016-08-10 12:51:24', 1, '293491', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(157, 'lakshay1648@gmail.com', 'LAKSHAY YADAV', '$2y$12$EgSLawbk0cun6PwODXE9H.wCXwO4Q3Pd9da3VT5cPbz8P2yJY/miW', 'LAKSHAY', 'YADAV', 1, 0, 1, 0, 'NSIT', '', '', '', '', '', '', '', '2016-08-10 12:52:57', '0000-00-00 00:00:00', 1, '651407', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(158, 'vipul98gupta@gmail.com', 'vipul98gupta', '$2y$12$I0wkKZz/7vW5w5G5L0SxN.OVVcvFjkVADIvsJcw7OzkuKeCXsVNwa', 'Vipul', 'Gupta', 1, 2, 1, 0, 'IIT Delhi', '', '', '', '', '', '', '', '2016-08-10 13:02:31', '2016-08-10 13:04:17', 1, '122533', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(159, 'swaroop008_hot@yahoo.co.in', 'swaroooooooop', '$2y$12$8YQiuPE5S.Os.h6/3KO6oeewseMtFe3Iy8vnAMcg433t/Z9yS1BlS', 'swaroop', 'sahoo', 1, 1, 1, 0, 'nsit', '', '', '', '', '', '', '', '2016-08-10 13:06:25', '2016-08-10 13:06:57', 1, '789169', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(160, 'suryansh.tibarewal@gmail.com', 'suryansh', '$2y$12$At3Y.4MGuGs4ItsIjDIS2uzPI1BfhNLrMd6o8Tk/gmjWGO2UUROwW', 'Suryansh', 'Tibarewala', 1, 0, 1, 0, 'Netaji Subhas Institute of Technology', '', '', '', '', '', '', '', '2016-08-10 13:15:19', '0000-00-00 00:00:00', 1, '676131', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(161, 'ragesh10ten@gmail.com', 'ragesh', '$2y$12$yWjyLkbxXyfEaWEXyNu0EOpM6qHOYK2BaUWJbfZxe1BCcgOeP1OIS', 'ragesh', 'vr', 1, 2, 1, 0, 'saintgits', '', '', '', '', '', '', '', '2016-08-10 13:18:26', '2016-08-10 13:22:50', 1, '180352', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(162, 'shivam98gupta26@gmail.com', 'chashma', '$2y$12$pLVyL1jQ0irLDz/GitACoemD/SBrIYdT4ot.LWF5i0rOu1kwbrGtK', 'Shivam', 'Gupta', 1, 1, 1, 0, 'NSIT', '', '', '', '', '', '', '', '2016-08-10 13:20:27', '2016-08-10 13:21:29', 1, '676279', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(163, 'jithukm72@gmail.com', 'jithukm', '$2y$12$mBAWXkAfVPx0Z3bqoNjYGO9jQbWcMe0YjVqbCzDi5Ae/FQ2FoUKJK', 'jithu', 'km', 1, 1, 1, 0, 'CET', '', '', '', '', '', '', '', '2016-08-10 13:23:19', '2016-08-10 13:23:55', 1, '975031', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(164, 'savithasuresh2410@gmail.com', 'savitha_suresh', '$2y$12$2el40cQqaaT6MPdTxHLRk.pvDZDYDkCkLDxKHEGRKyzd5FYw3LXAu', 'Savitha', 'Suresh', 1, 0, 1, 0, 'MIT', '', '', '', '', '', '', '', '2016-08-10 13:59:53', '0000-00-00 00:00:00', 1, '728070', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(165, 'rajan121095@gmail.com', 'rajan121095', '$2y$12$YqZ9ejc/Hoa50w/CuTZueePH0HEu7meSvS4SNEIaUX2u.D/qtZBAS', 'Rajan', 'Agarwal', 1, 1, 1, 0, 'Maharaja Agrasen Institute of Technology', '', '', '', '', '', '', '', '2016-08-10 14:05:02', '2016-08-10 14:05:32', 1, '238474', '', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(166, 'shwetank16095@iiitd.ac.in', 'shwetankshrey', '$2y$12$e4rFma/3mTaNfKVAJDoFf.UxocPPHAsrGSkDSDlb6ee2ktvkv6Qny', 'Shwetank', 'Shrey', 1, 1, 1, 0, 'IIIT Delhi', '', '', '', '', '', '', '', '2016-08-10 14:18:27', '2016-08-10 14:18:41', 1, '528916', '', 1, 0, NULL, '', '', ''),
(167, 'aruneshsingh.tis@gmail.com', 'PhoenixAlpha99', '$2y$12$P1IZhuUH8XyheGdygP2KC.F05A5TbieXJ0kDAO.CP6M3CYqeDpvlm', 'Arunesh', 'Singh', 1, 1, 1, 0, 'Tagore International School, Vasant Vihar', '', '', '', '', '', '', '', '2016-08-10 14:19:33', '2016-08-10 14:19:55', 1, '531623', '', 1, 0, NULL, '', '', ''),
(168, 'nirmalya.gh24@gmail.com', 'nirmalbaba', '$2y$12$VP1lEWYLrsVIHjylSMI1GeAOmtz4ybL43b0FFL4ozHD/1xmaxg74i', 'nirmalya', 'ghosh', 1, 0, 1, 0, 'University of Washington', '', '', '', '', '', '', '', '2016-08-10 14:19:42', '0000-00-00 00:00:00', 1, '394611', '', 1, 0, NULL, '', '', ''),
(169, 'tg170889@yahoo.com', 'battlemonger', '$2y$12$Ew2uPfzt8MSOlzpzXYS1M.D6d1DhdzPYHe0A00QvI9QavJsBWnOAi', 'Tushar', 'Gupta', 1, 1, 1, 0, 'IIML', '', '', '', '', '', '', '', '2016-08-10 14:20:46', '2016-08-10 14:21:11', 1, '201014', '', 1, 0, NULL, '', '', ''),
(170, 'sidhantt2310@gmail.com', 'Tiber_Sid', '$2y$12$a9TUMjo1mMBBR2afJgewS.Vt5A6YKI7aSunkEDkeqkKtw60X4.Uh.', 'Sidhant', 'Tibrewal', 1, 0, 1, 0, 'Mit, Manipal', '', '', '', '', '', '', '', '2016-08-10 14:21:39', '0000-00-00 00:00:00', 1, '361125', '', 1, 0, NULL, '', '', ''),
(171, 'snehagemmathew@gmail.com', 'SNEHA', '$2y$12$qpDdIugNuJhXgj97bHKGlOatpgJ5vpEkRa.La6wk.IlM5hUTxM7OO', 'Sneha', 'Gem Mathew', 1, 2, 1, 0, 'IIST', '', '', '', '', '', '', '', '2016-08-10 14:23:06', '2016-08-10 14:24:33', 1, '607124', '', 1, 0, NULL, '', '', ''),
(172, 'manvender16243@iiitd.ac.in', 'Manvender', '$2y$12$pcQvbtwxnqEb5SNSa/i4QeQIMtQ5unHU0Fm0ZWteNZEk8s0ZdhaTe', 'Manvender', 'Nara', 1, 1, 1, 0, 'IIITD', '', '', '', '', '', '', '', '2016-08-10 14:26:58', '2016-08-10 14:27:10', 1, '407093', '', 1, 0, NULL, '', '', ''),
(173, 'IMAMALJITH@GMAIL.COM', 'AMALJITH', '$2y$12$f9sG2jz39zXeltKsFj9tIeuXhHEr/96bwrR9JFDeuV.L9nJSse1fu', 'AMALJITH', 'EV', 1, 1, 1, 0, 'COLLEGE OF ENGINEERING, TRIVANDRUM', '', '', '', '', '', '', '', '2016-08-10 14:27:20', '2016-08-10 14:27:47', 1, '853457', '', 1, 0, NULL, '', '', ''),
(174, 'raghavsood98@gmail.com', 'raghavsood98', '$2y$12$AIqoPjX.aANsJjSe.Eerdub/x3ik89rPpNLv2.JJq5AbH2HFLu3Ke', 'Raghav', 'Sood', 1, 1, 1, 0, 'IIIT-Delhi', '', '', '', '', '', '', '', '2016-08-10 14:30:32', '2016-08-10 14:30:54', 1, '540305', '', 1, 0, NULL, '', '', ''),
(175, 'mariyadirchi@gmail.com', 'Marbidirchi123', '$2y$12$xLTz0uceo.WbEfZhOyHTnuFIEstdLRH1vcW.dZt66YoJ1BctlzZSi', 'Marbi', 'Dirchi', 1, 1, 1, 0, 'Amity univiersity', '', '', '', '', '', '', '', '2016-08-10 14:36:27', '2016-08-10 14:37:00', 1, '103555', '', 1, 0, NULL, '', '', ''),
(176, 'sahil16184@iiitd.ac.in', 'sahil16184', '$2y$12$buy7Ose1fYmuaktv/1Jy6uoWjAJzLTp6O4DPXGCwRSfuHpeRHDMPm', 'sahil', 'yadav', 1, 0, 1, 0, 'iiitd', '', '', '', '', '', '', '', '2016-08-10 14:39:30', '0000-00-00 00:00:00', 1, '351392', '', 1, 0, NULL, '', '', ''),
(177, 'apurvrochan1296@gmail.com', 'apurv1312', '$2y$12$SaY/J4njCfXEOW0HAEp2cucxjzRdx8MWiSdWmt2.ZWjDoAp9qytAy', 'APURV', 'ROCHAN', 1, 1, 1, 0, 'IIT DELHI', '', '', '', '', '', '', '', '2016-08-10 14:40:41', '2016-08-10 14:40:53', 1, '796283', '', 1, 0, NULL, '', '', ''),
(178, 'rasik966573@gmail.com', 'rasikraj', '$2y$12$gIX.wY2jbObKdFHQTiNIZufT/7gAPdqv5wDYZ.uOqsYZLPWELJtZC', 'rasik', 'raj', 1, 1, 1, 0, 'MAIT', '', '', '', '', '', '', '', '2016-08-10 14:48:13', '2016-08-10 14:48:36', 1, '592820', '', 1, 0, NULL, '', '', ''),
(179, 'jai16154@iiitd.ac.in', 'jai_mahajan', '$2y$12$Lf57ZNEf5cOP8jzdA7QVbOXtyEFt1HOCmQT4Atb1RF7.fudArl8EO', 'Jai', 'Mahajan', 1, 1, 1, 0, 'IIIT Delhi', '', '', '', '', '', '', '', '2016-08-10 14:57:18', '2016-08-10 14:57:42', 1, '258609', '', 1, 0, NULL, '', '', ''),
(180, 'charvigupta20@gmail.com', 'cgupta20', '$2y$12$Hx9mOrkAAr.Yx7CFqp4sW.tECvEZoSCSgzeIHa4IZSK6tTI1n1BCO', 'Charvi', 'Gupta', 1, 1, 1, 0, 'Pune Institute Of Computer Technology', '', '', '', '', '', '', '', '2016-08-10 15:00:20', '2016-08-10 15:00:55', 1, '577782', '', 1, 0, NULL, '', '', ''),
(181, 'achintyakumar5@gmail.com', 'achintyakumar', '$2y$12$DeGG0n982vQaFDOhowC.Z.O535k3V60ZNb3K7rvNSg/.L1zu8U7KW', 'Achintya', 'Kumar', 1, 1, 1, 0, 'DPS Vasant Kunj', '', '', '', '', '', '', '', '2016-08-10 15:07:20', '2016-08-10 15:08:02', 1, '307768', '', 1, 0, NULL, '', '', ''),
(182, 'shantanujha4@gmail.com', 'shanu_viking', '$2y$12$fTR4Q6ket0ZF4DMgRfQr/ed5wR1d.vBogl.T7bgZ.eCu9ZmNovViK', 'Shantanu', 'Jha', 1, 1, 1, 0, 'Purdue University', '', '', '', '', '', '', '', '2016-08-10 15:25:17', '2016-08-10 15:25:49', 1, '144727', '', 1, 0, NULL, '', '', ''),
(183, 'pulkit.beware3@gmail.com', 'Madaan', '$2y$12$MukNkwKZycQAZWmhcanjAOZ22JtTuhLqFi2qLgLnFUkHsaZBHabQm', 'Pulkit', 'Madaan', 1, 1, 1, 0, 'IIIT-D', '', '', '', '', '', '', '', '2016-08-10 15:49:34', '2016-08-10 15:50:21', 1, '377503', '', 1, 0, NULL, '', '', ''),
(184, 'Subirdas4u@gmail.com', 'Anuraag09', '$2y$12$/NwXwzp/AddZ6XgsgzmxxevdFCyeoET.ddqbm8gkqXLljCnjiCWxS', 'Subir', 'Das', 1, 1, 1, 0, 'Meghnad saha institute of technology', '', '', '', '', '', '', '', '2016-08-10 15:57:08', '2016-08-10 15:57:53', 1, '920530', '', 1, 0, NULL, '', '', ''),
(185, 'arjunmayilvaganan@gmail.com', 'arjunmayilvaganan', '$2y$12$6sigKfotiWqDZKfbSv1Ch.aRgWTtmnJu0/6enH6rVTICD2r5QsYwK', 'Arjun', 'Mayilvaganan', 1, 1, 1, 0, 'College of Engineering, Guindy.', '', '', '', '', '', '', '', '2016-08-10 16:11:59', '2016-08-10 16:12:21', 1, '311154', '', 1, 0, NULL, '', '', ''),
(186, 'ashutosh15017@iiitd.ac.in', 'ashu_101', '$2y$12$mRUC1eLD0Vedf3W5sE6Hh.yCDMVhPc2mFLxKygHJF1PLypEOlwE6m', 'Ashutosh', 'Batabyal', 1, 1, 1, 0, 'IIITD', '', '', '', '', '', '', '', '2016-08-10 16:51:31', '2016-08-10 16:51:51', 1, '158787', '', 1, 0, NULL, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE IF NOT EXISTS `users_online` (
  `id` int(10) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `timestamp` varchar(15) NOT NULL,
  `user_id` int(10) NOT NULL,
  `session` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=164 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`id`, `ip`, `timestamp`, `user_id`, `session`) VALUES
(28, '103.25.231.2', '1470854727', 1, ''),
(130, '111.92.51.162', '1470846015', 149, ''),
(129, '82.137.12.14', '1470845239', 147, ''),
(128, '111.92.50.255', '1470843858', 146, ''),
(127, '122.162.101.224', '1470842087', 143, ''),
(126, '163.53.215.212', '1470840917', 141, ''),
(125, '122.177.30.114', '1470841460', 46, ''),
(124, '103.25.231.104,', '1470840350', 140, ''),
(39, '203.110.242.7', '1470828835', 37, ''),
(40, '157.119.81.245', '1470775806', 39, ''),
(123, '103.25.231.102', '1470839798', 139, ''),
(122, '1.22.65.160', '1470839354', 138, ''),
(44, '117.229.66.228', '1470827471', 44, ''),
(121, '182.69.126.118', '1470838928', 137, ''),
(120, '122.180.163.18', '1470851806', 136, ''),
(47, '103.25.231.102', '1470769471', 48, ''),
(48, '61.16.138.10', '1470801609', 49, ''),
(49, '122.177.91.48', '1470824635', 52, ''),
(65, '14.139.238.98', '1470769211', 68, ''),
(69, '163.47.152.74', '1470819312', 72, ''),
(163, '103.25.231.102', '1470862311', 186, ''),
(162, '14.139.161.4,45', '1470859994', 185, ''),
(161, '103.242.196.58', '1470859225', 184, ''),
(160, '103.25.231.2,10', '1470858622', 183, ''),
(159, '178.61.173.139', '1470857201', 182, ''),
(158, '120.56.163.91', '1470856172', 181, ''),
(157, '182.70.59.82', '1470855656', 180, ''),
(156, '223.179.140.33,', '1470855488', 179, ''),
(155, '112.196.133.160', '1470855019', 178, ''),
(81, '116.202.38.82', '1470768519', 88, ''),
(82, '14.139.238.98', '1470769277', 89, ''),
(83, '219.65.32.218', '1470769488', 90, ''),
(84, '1.39.27.206', '1470770219', 93, ''),
(85, '116.68.123.181', '1470770980', 94, ''),
(86, '192.168.65.89,1', '1470815531', 95, ''),
(87, '14.139.123.36', '1470772797', 96, ''),
(88, '14.142.19.86', '1470773814', 97, ''),
(89, '49.32.48.88', '1470780096', 98, ''),
(90, '14.139.162.2', '1470785716', 99, ''),
(91, '122.177.122.147', '1470798228', 101, ''),
(92, '49.202.139.82', '1470801386', 102, ''),
(93, '122.163.222.1,6', '1470801892', 104, ''),
(94, '192.168.65.125,', '1470803096', 105, ''),
(95, '182.69.37.63', '1470849143', 106, ''),
(96, '103.25.231.102', '1470806075', 107, ''),
(97, '59.96.128.106', '1470806309', 109, ''),
(98, '14.139.251.107', '1470806422', 108, ''),
(99, '110.227.191.11', '1470808984', 111, ''),
(100, '122.252.253.130', '1470810890', 112, ''),
(101, '103.37.201.75', '1470817574', 113, ''),
(102, '122.161.72.183', '1470851827', 114, ''),
(103, '14.139.242.99,6', '1470822745', 115, ''),
(104, '122.161.21.238', '1470823050', 117, ''),
(105, '103.16.28.236', '1470828800', 118, ''),
(106, '103.25.231.2', '1470825519', 120, ''),
(107, '5.32.57.218', '1470826028', 121, ''),
(108, '122.162.22.172', '1470827518', 122, ''),
(109, '1.39.50.46', '1470829774', 124, ''),
(110, '122.162.119.250', '1470827599', 123, ''),
(111, '10.201.136.204,', '1470828260', 125, ''),
(112, '110.235.25.255', '1470829786', 127, ''),
(113, '122.177.36.208', '1470832352', 129, ''),
(114, '59.178.56.75', '1470843043', 131, ''),
(115, '120.56.162.220', '1470835185', 132, ''),
(116, '103.27.9.253', '1470836120', 130, ''),
(117, '122.161.251.114', '1470836481', 133, ''),
(118, '117.197.16.117', '1470837333', 134, ''),
(119, '60.254.73.185', '1470837541', 135, ''),
(131, '117.247.166.9', '1470846292', 148, ''),
(132, '103.211.13.165,', '1470846934', 150, ''),
(133, '117.204.163.247', '1470847068', 152, ''),
(134, '14.98.30.13', '1470847276', 151, ''),
(135, '146.196.37.189', '1470847612', 153, ''),
(136, '103.25.231.102', '1470847868', 154, ''),
(137, '103.25.231.102', '1470847886', 155, ''),
(138, '1.22.29.106', '1470847885', 156, ''),
(139, '10.249.209.187,', '1470852318', 158, ''),
(140, '59.180.54.143', '1470849005', 159, ''),
(141, '1.39.20.254', '1470849772', 161, ''),
(142, '1.39.27.248', '1470849737', 162, ''),
(143, '111.92.49.249,1', '1470849865', 163, ''),
(144, '120.57.151.68', '1470853270', 165, ''),
(145, '103.25.231.2', '1470853283', 166, ''),
(146, '59.178.46.56', '1470853317', 167, ''),
(147, '115.97.154.21', '1470853293', 169, ''),
(148, '115.248.20.13', '1470853900', 119, ''),
(149, '14.139.185.181', '1470853481', 171, ''),
(150, '103.25.231.102', '1470853643', 172, ''),
(151, '111.92.49.16', '1470854032', 173, ''),
(152, '103.25.231.104,', '1470853873', 174, ''),
(153, '202.12.103.72', '1470854273', 175, ''),
(154, '10.203.149.152,', '1470854493', 177, '');

-- --------------------------------------------------------

--
-- Table structure for table `users_session`
--

CREATE TABLE IF NOT EXISTS `users_session` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `uagent` text
) ENGINE=MyISAM AUTO_INCREMENT=239 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_session`
--

INSERT INTO `users_session` (`id`, `user_id`, `hash`, `uagent`) VALUES
(38, 1, 'e5c284103ce354831561e3b447d1758976c799922d7e20743e9f8c290dfe078f', 'Mozilla (Windows NT 6.1; Win64; x64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(39, 19, 'c1e71bbb16fda4414d5d450a86a1c678d2b85275e1a7e8f5f48f8b2d4c80e3c1', 'Mozilla (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit (KHTML, like Gecko) Version Mobile Safari'),
(54, 1, '6c11a9878ea30ce70e997f6b179d008f3c338bb938baaede01413f65de75714a', 'Mozilla (Windows NT 10.0; WOW64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(56, 1, '5ed4d2d74fc283cf4cde33b8d0130c3e89577a3a14986b32fbe59c175f2cb041', 'Mozilla (Windows NT 10.0; WOW64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(57, 2, 'e7faa59808db299026a701ee90888954b7cc0526256a58e47471f3a6a5d627c3', 'Mozilla (X11; Ubuntu; Linux x86_64; rv:44.0) Gecko Firefox'),
(59, 24, '44a7d64032e5d85ba8af9457d0008ead8f2e123a8559551090379ae5a8c75dcf', 'Mozilla (X11; Ubuntu; Linux x86_64; rv:43.0) Gecko Firefox'),
(70, 2, 'fd3e63169c57b33fc90d8a0c6b198e1bc5e4770f4f51058b7a5667b28fe81197', 'Mozilla (Windows NT 10.0; Win64; x64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(74, 32, '35a1be5cc715a1a47c756a51edf1dd89179e0090937e903066c4d64a16cced09', 'Mozilla (Linux; U; Android 5.1.1; en-gb; Redmi Note 3 Build) AppleWebKit (KHTML, like Gecko) Version Chrome Mobile Safari XiaoMi'),
(76, 34, '30f197b583b778b14985de2d4cb17e96d4da1beaf94d839a617a214e1b2ccb83', 'Mozilla (Macintosh; Intel Mac OS X 10_11_3) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(78, 36, 'ca6e1590e8095e3ca19658bde3028ae28dcadfcb44802ae29c606ea369c0a974', 'Mozilla (Windows NT 10.0; Win64; x64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(80, 37, '0c3bb6b394e85ddf5095b048579eaf0a71dc81a794b2278d8f0b6ab6b1d1cf00', 'Mozilla (Windows NT 10.0; WOW64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(81, 39, '9c7b4f75aeb0c3123ca5bdec922cb746caea19748bcb984ffe34e3c6638257c0', 'Mozilla (Windows NT 10.0; Win64; x64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(82, 1, '30e5e69db54fda767f5ee8f277e171f21e70d2f1dbf771ee6660950400f21143', 'Mozilla (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko Firefox'),
(83, 42, 'f6d5e4b0fa0e443432473800fb7bf2aebb8eb9c2c2854e513a411c9949f28e37', 'Mozilla (Windows NT 6.3; WOW64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(84, 42, '39e48f8c8dd6c59f98784507e696f0678a07496314f68ed2ae46931a86c9cb60', 'Mozilla (Windows NT 6.3; WOW64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(85, 41, '329ae16e49d0838f4497a38577b263ed7a50ad3c86bdc73e5e8ebd2e995a1776', 'Mozilla (Linux; Android 4.3; C1904 Build) AppleWebKit (KHTML, like Gecko) Chrome Mobile Safari'),
(90, 44, '5791c019b1952c8ada5dd5e818cc070d6c3f70de6e87cd372dbbfdd812a7eca8', 'Mozilla (Linux; Android 5.0.2; A0001 Build) AppleWebKit (KHTML, like Gecko) Chrome Mobile Safari'),
(106, 56, '175eff5540a10d0cdcd802274472e974f8c83dbe02ef6edcfbeec1c8be031bc4', 'Mozilla (Windows NT 10.0; Win64; x64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(107, 57, '0626691a97461f013e11e9a0d151d0d69247e2326e25cba2462ae0cb332a3494', 'Mozilla (Windows NT 10.0; Win64; x64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(103, 50, '665d5edc160ea5f19d15f2ca6eb4a027191cd7e824fd2fe7912640ed8abf032a', 'Mozilla (Windows NT 10.0; Win64; x64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(96, 39, '78f11b905bd75637d4de3e3d8f1a11fe9479dc128c691f735d01c4e39a79b572', 'Mozilla (Windows NT 10.0; Win64; x64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(94, 47, '008dbb6dc8d7747df11fe4efe6f69652f9e9f91203b6c7196a7906692580fa44', 'Mozilla (Linux; Android 6.0; HTC Desire 816 dual sim Build) AppleWebKit (KHTML, like Gecko) Chrome Mobile Safari'),
(101, 52, '77cfe1a7c52b1c6de8ce4f18af46e605a4f689e41be43adf5743c218655f3023', 'Mozilla (Windows NT 10.0; WOW64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(108, 58, 'd28a07a1a70ab1b2baa724a065a130576b184b84ad9302dff306bbbd376f0d06', 'Mozilla (Macintosh; Intel Mac OS X 10_11_5) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(109, 60, 'c32d6e76f18620339661236c77b40919b901a172d3177ef612f1a12171e6b56a', 'Mozilla (Windows NT 10.0; WOW64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(110, 61, 'b023c6977a7b4d4d86127d03cac72c86906757f921f3a4586fe5b98021ec3f43', 'Mozilla (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(111, 59, 'ad1432e49bf0e61e400a34d18097e64960161c8f64160957eb99f7d8c4fbb045', 'Mozilla (Windows NT 6.1; WOW64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(112, 1, '14edb2475c33cd35f31b109f2eb647ca0887c6d5ff986da0aa7aa404aff97e33', 'Mozilla (Macintosh; Intel Mac OS X 10_11_5) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(113, 63, '02f76aae716a22af2df926952838adf43cd940d81a51a8f41b2b17480cbeff86', 'Mozilla (Windows NT 10.0; Win64; x64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(114, 64, '6a629b1a0608c9cac36efc971798747c65455740eebff0c79e79c909a5287b04', 'Mozilla (Linux; Android 6.0.1; A0001 Build; wv) AppleWebKit (KHTML, like Gecko) Version Chrome Mobile Safari [FB_IAB;FBAV;]'),
(115, 65, '238f6606ae8b50572b2f57ffcc4f224897a881cd032495d77f3a3e5ed6353f95', 'Mozilla (Linux; Android 4.4.4; XT1052 Build-L1.26) AppleWebKit (KHTML, like Gecko) Version Chrome Mobile Safari [FB_IAB;FBAV;]'),
(119, 70, '4abcce7b2146641a4128daabc95aaab1b9ad420d4bc356cac39cf1e07a58c029', 'Mozilla (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko Firefox'),
(140, 94, '39b4a12232ff7d4932572f60cc5fa121e3fee20d1eb89c724317cbf43934b2fd', 'Mozilla (Linux; U; Android 6.0.1; en-US; SM-J700F Build) AppleWebKit (KHTML, like Gecko) Version UCBrowser U3 Mobile Safari'),
(118, 69, '5b56b039c5e466fe06dbae9638b4a6b8af6c897f0c40e641d1470c788ecbd9bc', 'Mozilla (Macintosh; Intel Mac OS X 10_11_5) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(120, 71, 'e73a5d3d54f612c9cdedda6ffe9c365ed43a229ab85afb1cde74153d3b1000f3', 'Mozilla (Linux; Android 6.0.1; SM-J210F Build; wv) AppleWebKit (KHTML, like Gecko) Version Chrome Mobile Safari [FB_IAB;FBAV;]'),
(121, 73, '43d8e6f927adf9809223859b52d14cefee9e800f22bcac088340997d990c8f44', 'Mozilla (Linux; Android 6.0.1; MI 4W Build; wv) AppleWebKit (KHTML, like Gecko) Version Chrome Mobile Safari'),
(122, 76, 'a306750bafd67af3aaab106369948d4374aff54b968fdd3f174d101ca5bc439d', 'Mozilla (Windows NT 10.0; WOW64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(123, 77, 'cb57e16a226618a42f380c397d1e71d0b8bbccc12f7a54cf352a84012d5c9e8c', 'Mozilla (Linux; Android 6.0.1; SM-A800F Build) AppleWebKit (KHTML, like Gecko) Chrome Mobile Safari'),
(124, 78, 'f0e8729acc55e8d31010a551709ce590835f35ebb9ab62174d7ff3a9b5adbaad', 'Mozilla (Windows NT 10.0; Win64; x64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(125, 79, 'f74b50e7057c447676fd8bac3ba7bfad3fa61d0271a35b64f236decbc6cbcb46', 'Mozilla (X11; Linux x86_64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(126, 80, '42d39c53b617e67d6b57e8aee1799c13b5e90d9c0852424601f3862d93edb613', 'Mozilla (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko Firefox'),
(127, 83, 'f0293833e920661ff276f8199c87898ab4dfc7aeba6f892b008995d61d0acb27', 'Mozilla (Linux; Android 6.0.1; Le X526 Build) AppleWebKit (KHTML, like Gecko) Chrome Mobile Safari'),
(128, 82, 'fc099907630b0cf0a1167d80088b8abfb96bafe2baac26df78f3dea45017f9cd', 'Mozilla (Windows NT 10.0; WOW64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(129, 84, '75cc922766af4c6a2f9a070e6bae8ca7362ae20cb264f1b1a09c2d48dd45ceaf', 'Mozilla (Windows NT 6.3; WOW64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(132, 88, 'e3a9952e87dd81bc0c7d4a629ba4d77f786e1224f1642be648d42dffe2f76055', 'Mozilla (Linux; Android 5.1.1; AO5510 Build; wv) AppleWebKit (KHTML, like Gecko) Version Chrome Mobile Safari [FB_IAB;FBAV;]'),
(139, 93, '7761a99f18d8adf78bd9899afc32252f923972269feedb0e1ba7b5f45a0c0102', 'Mozilla (Linux; Android 6.0.1; ONEPLUS A3003 Build; wv) AppleWebKit (KHTML, like Gecko) Version Chrome Mobile Safari [FB_IAB;FBAV;]'),
(137, 68, '3b4c1e1f5c62e099322230bd0bf254f6e9e3a625989cf18dc5a411d63cd02193', 'Mozilla (Windows NT 6.3; WOW64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(135, 89, '02665bc56f422b96abfb16679a41acf24c700b4c0979307a19713c9aef3dccbd', 'Mozilla (Windows NT 10.0; Win64; x64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(136, 89, '9e284b10ddb15cb15c429a4ffa1266af6111a4dcaa91a899fc22be0758c33739', 'Mozilla (Windows NT 10.0; Win64; x64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(141, 95, '9f46663c1a472ee6571c0528cc36563d8b6395d9aefe4780b5f73da5bead227b', 'Mozilla (Windows NT 6.2; WOW64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(143, 97, 'a4606ae0c73e144bc6768d035f102c9e21e33de5cd73d2256b1200d5da78d4a0', 'Mozilla (Windows NT 6.3; WOW64) AppleWebKit (KHTML, like Gecko) Chrome UBrowser Safari'),
(144, 39, '817e22f658fb4f0eec2e0ee153d354d98128892776e6275b7ec956278f21f821', 'Mozilla (Linux; U; Android 4.4.2; en-US; Mi-508 Build) AppleWebKit (KHTML, like Gecko) Version UCBrowser U3 Mobile Safari'),
(145, 98, 'bc7e3bf738b211ab0f7e8e86da31cdfd05a54f8a5b82df68a1b6df353fcacd62', 'Mozilla (Linux; Android 5.1.1; LS-5014 Build; wv) AppleWebKit (KHTML, like Gecko) Version Chrome Mobile Safari [FB_IAB;FBAV;]'),
(146, 99, '62fc8c32ef182c2f6df52eb651bc878dbb28e22c103d5652015b36d5086efa7b', 'Mozilla (Linux; Android 6.0.1; MotoG3 Build-55; wv) AppleWebKit (KHTML, like Gecko) Version Chrome Mobile Safari [FB_IAB;FBAV;]'),
(147, 102, '542c759daf7d31152b4a9b53283e3d821edf0c6a3bf97ca4cb596a0989fb649b', 'Mozilla (Linux; Android 4.4.2; MicromaxP480 Build) AppleWebKit (KHTML, like Gecko) Version Chrome Safari'),
(148, 102, '0b193ccae3d0e4edc50dbd729d5e72da51cbaed0b33db141c9fd7899d59cf745', 'Mozilla (Linux; Android 4.4.2; MicromaxP480 Build) AppleWebKit (KHTML, like Gecko) Version Chrome Safari'),
(149, 104, '98e9cee3c9170eda1e19f29643bf07b7ceb125b8779b578282fb1a4f1c2620db', 'Mozilla (Linux; Android 4.4.4; 2014818 Build) AppleWebKit (KHTML, like Gecko) Chrome Mobile Safari'),
(150, 105, '29a8441f822e0ad82897840cd5761bc80b6d91df3a01e1cc97ad7d691030b298', 'Mozilla (Windows NT 10.0; WOW64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(151, 106, '86bc1954f93b9139a3de476c9dee7815dae909b20f3da421ef0678fcf278329f', 'Mozilla (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(152, 107, '872ec7e67970996811fdbf4d2706d98b8642e8b40e1b7d0a6f84393942553421', 'Mozilla (Windows NT 6.3; Win64; x64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(155, 112, 'ccb2929853b42eb132f3c0ddf609af00665104a31dd0f7dbe73e6dc433b499ed', 'Mozilla (Windows NT 10.0; Win64; x64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(156, 95, 'd8e14a1587b2a4423b192f27724f0bcdc0d2335d126e5d4b1882d1ef453bc8f9', 'Mozilla (Windows NT 6.2; WOW64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(157, 95, '9e0101dfce606923c24139d8f0b0993fd4d19f5756e7240fd5b6cc5ef91b3f39', 'Mozilla (Windows NT 6.2; WOW64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(158, 113, 'd8bcf95ecddfaa6b4023bdfcef368c11352c5f8324c84be63eb8fa665f9cd5f5', 'Mozilla (Windows NT 10.0; WOW64; rv:47.0) Gecko Firefox'),
(162, 114, 'a664e6bf0140e95e64f7a02f35d62788d5af8bd8ee2e038cd921f3b3774a2a71', 'Mozilla (Windows NT 10.0; Win64; x64) AppleWebKit (KHTML, like Gecko) Chrome Safari Edge'),
(160, 44, 'f6610d2a3274ed42fd76421553afa520b0453e64afc8fb4ac6e272216746bd12', 'Mozilla (Linux; Android 5.0.2; A0001 Build) AppleWebKit (KHTML, like Gecko) Chrome Mobile Safari'),
(161, 44, '7cca6435f937211a0bb1a338beb12bc5498478eb40f340c93ccd35a5d3656d73', 'Mozilla (Linux; Android 5.0.2; A0001 Build) AppleWebKit (KHTML, like Gecko) Chrome Mobile Safari'),
(163, 37, 'a67f6cf116290d9ec64ae49b2e624ac2db00acb11d01174462cd655d8b74cd3c', 'Mozilla (Windows NT 10.0; WOW64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(164, 115, '473756e6bf7a3127962354af4add98c9db1c65faae7e52af77ac2d1f1aec46f3', 'Mozilla (Linux; Android 5.1.1; Z1 Build) AppleWebKit (KHTML, like Gecko) Chrome Mobile Safari'),
(165, 117, '902f47e7604b74101ede4261552a4ada2c149f8daa860d39b6fa43898ab979da', 'Mozilla (Windows NT 10.0; Win64; x64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(166, 52, 'fcf6390b685ae8078569fe66372e5d02dd7d45c64ac48eac24d007d3d9dbbd83', 'Mozilla (Windows NT 10.0; WOW64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(167, 120, '36254b54b3c9beb4e010141213e201fcdd169033435ee15d80a872f98d3e157e', 'Mozilla (X11; Ubuntu; Linux x86_64; rv:48.0) Gecko Firefox'),
(169, 122, '68510e4d7f1d45dbd3e75782e3764b17589494486f2de1ea763e0d1280898c55', 'Mozilla (Windows NT 6.1) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(170, 124, 'd9e9c0bf0f35884ebdb3c4e6fb3bb6bb5dc1e625badc4afd8d688f3da7dc6cfa', 'Mozilla (Windows NT 10.0) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(171, 123, 'b7f0535d9e99e48fa2109af54db5f9bbc97a5ef6dcd1bebd78c82f6b1889db2f', 'Mozilla (Windows NT 6.3; WOW64; rv:47.0) Gecko Firefox'),
(172, 124, 'e9e697cd022d45d1fa5ba6717a383b34173ec69c95f1bd32aef460e9da25385b', 'Mozilla (Windows NT 10.0) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(173, 123, 'f23882acdd644778014fb1f0f99c0c5af0de86232af0f7024dd53898ad1f2cf6', 'Mozilla (Windows NT 6.3; WOW64; rv:47.0) Gecko Firefox'),
(174, 125, 'dcf2bc79f9d10c03355d42cf9f9105a39a71eb6fe31f8b73a0fd69eeb7fa7046', 'Mozilla (Windows NT 6.3; Win64; x64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(175, 37, '932ce16e1d7a06ca574dcd224d95bbd0476480120aea6c66eaca96010bb8df52', 'Mozilla (Windows NT 10.0; WOW64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(176, 129, '942204026a6945e965fd5c551091a5b1a6d6940ae831eb908db693c8204a4233', 'Mozilla (Windows NT 10.0; Win64; x64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(177, 129, 'c09e1fa22d36ed1835fee8b3697e6a709ffe2eaa6306a618ad7fea091a319a22', 'Mozilla (Windows NT 10.0; Win64; x64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(178, 131, '85d9606fde65724e68f8a236b19df6d6d8cbb37a1bcc9903013b91413c2ce6e8', 'Mozilla (Windows NT 10.0; WOW64) AppleWebKit (KHTML, like Gecko) Chrome Safari ASW'),
(179, 132, 'ed148836929e159d13052cea72b5ff291b3ffbac0822c80f1e3cc59bd97b6545', 'Mozilla (Mobile; Windows Phone 8.1; Android 4.0; ARM; Trident; Touch; rv:11.0; IEMobile; NOKIA; Lumia 630) like iPhone OS 7_0_3 Mac OS X AppleWebKit (KHTML, like Gecko) Mobile Safari'),
(180, 130, 'a0d02b8dd4028a029063ff863f17ca240ba566f9f2dd31932727d67a38802afa', 'Mozilla (Windows NT 10.0; WOW64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(181, 133, 'ccdd4cbd2db370cf943ae463725dbfae364f50b61281d937b98f527c71c1f4dd', 'Mozilla (iPhone; CPU iPhone OS 9_3_3 like Mac OS X) AppleWebKit (KHTML, like Gecko) Mobile [FBAN;FBAV;FBBV;FBRV;FBDV,1;FBMD;FBSN OS;FBSV;FBSS;FBCR;FBID;FBLC_GB;FBOP]'),
(182, 134, '9861347cdd34cced9ad6194b9603b7643a69e4f56fae545b62495c01fc233afe', 'Mozilla (Windows NT 10.0) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(183, 135, '638470087adc1621a2bf1ffed7a0334a4678d2e07f937632fd8a037a72661a91', 'Mozilla (Windows NT 6.1) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(232, 179, '2a6349eb8d1850a0571755f4f429cb7f2d7bd7a725db9405f2295244d83faf73', 'Mozilla (Linux; Android 6.0.1; Moto G (4) Build-23.1) AppleWebKit (KHTML, like Gecko) Chrome Mobile Safari'),
(185, 136, 'bebe88832bcee3204d98fa49da1cce50592286beac21e3b59c39b2c68c26ba00', 'Mozilla (iPhone; CPU iPhone OS 9_3_2 like Mac OS X) AppleWebKit (KHTML, like Gecko) Mobile [FBAN;FBAV;FBBV;FBRV;FBDV,2;FBMD;FBSN OS;FBSV;FBSS;FBCR;FBID;FBLC_US;FBOP]'),
(186, 1, 'b568582e870429ca9515d637a0caa22d8eef88e395861220ff5de4b45c315030', 'Mozilla (Windows NT 10.0; WOW64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(187, 137, '9a4ec4ba0053583e3fe10a4230f57ca7c420e9d39feb32d91fe6958112b4813f', 'Mozilla (Windows NT 6.1; Win64; x64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(188, 138, 'db4739df3aa7f7d5627e2aafe920a940f7509508d7b3c0663adb6e8bda0b2e02', 'Mozilla (Windows NT 6.3; WOW64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(189, 139, '8293f028958b3866c61be78312e445d7e3ac1afdaabbb18e4b544f3b7d54a9ad', 'Mozilla (X11; Linux x86_64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(190, 140, 'dd2887380c49a2d3f7ae06deccd1b34a46e7d36058e3d2844bb2ec11b560defc', 'Mozilla (Linux; Android 6.0.1; MotoG3 Build-55) AppleWebKit (KHTML, like Gecko) Chrome Mobile Safari'),
(193, 46, '1f23cde6732c96dc9e4fada6b19e3bc1b0a0b99f14b8af54311847d05503f919', 'Mozilla (Windows NT 6.1) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(194, 143, '3b7351d32be26829a1df2426ac9e760730d5a615a071f47f59cc99f8ebb958d8', 'Mozilla (Linux; Android 4.4.2; ASUS_T00J Build) AppleWebKit (KHTML, like Gecko) Version Chrome Mobile Safari'),
(195, 131, '7baf804e5d44fb27e10ad1a4157de5225bbd9f082740c206fe34c8dde3b246f3', 'Mozilla (Windows NT 10.0; WOW64) AppleWebKit (KHTML, like Gecko) Chrome Safari ASW'),
(196, 146, '990e6ef791378f03708f9aeedeba1f4437c0a05534b1cf16df85e4e4163cf6cb', 'Mozilla (Linux; Android 5.1.1; Redmi Note 3 Build) AppleWebKit (KHTML, like Gecko) Chrome Mobile Safari'),
(197, 147, '9357c75b652455ec51b38bccdf06e150a1e6d08997103d9b9237365950a084c0', 'Mozilla (Windows NT 6.1; WOW64; rv:48.0) Gecko Firefox'),
(198, 149, '6de8b3cb209a6a10a39a139c55a33d867243a94517f68dd8599679b1049a167a', 'Mozilla (Linux; Android 6.0; Lenovo K50a40 Build) AppleWebKit (KHTML, like Gecko) Chrome Mobile Safari'),
(199, 148, 'de521e26e3154448c0cd3dba01ca0fe88f307e226f45e126dd3cf96f065fadbb', 'Mozilla (Windows NT 6.1; Win64; x64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(200, 114, '708f611d4dbe8e41e125b8d9ca91b138ba3dd469bfb3fd9c9085531242f513d9', 'Mozilla (Windows NT 10.0; Win64; x64) AppleWebKit (KHTML, like Gecko) Chrome Safari Edge'),
(202, 152, '95e7e1b4e9b18bdeb0fc60b4509e9e9ad20543671e50321abbc63bf72c206888', 'Mozilla (Windows NT 6.3; WOW64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(204, 153, '66e8f54691a64ccf2e69d0909bdaadce27f208dd277b3978dec3b8fbc1974d74', 'Mozilla (Linux; Android 5.1.1; 2014818 Build) AppleWebKit (KHTML, like Gecko) Chrome Mobile Safari'),
(205, 154, 'd74cef84c89fa636740639bb2ac6fe95489fe48b4c5d0e90d346df5270cdbe1d', 'Mozilla (Windows NT 6.1; Win64; x64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(206, 155, '80c1a2afa09662365ef39674462675aa4fa56add1226d02638603871b2b627e0', 'Mozilla (Windows NT 6.3; WOW64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(208, 158, '7797c38d948f3fbb9530db1d5377d0fce422c9c88c51be3f63eefa2b8d2bdc34', 'Mozilla (Windows NT 6.1; WOW64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(209, 158, '45a663d37f33df8130246d3d16b01ad388443a2c110b917edbe6cfb6c420e6d7', 'Mozilla (Windows NT 6.1; WOW64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(210, 159, 'c0882cb2a442efe18f0a6fc54779e2eb52a5bf73aa23a518668472a6c389b4af', 'Mozilla (Windows NT 6.1) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(211, 106, 'a90a8ce31e78bca26b3cd81a329e2a8e705a25f78e4793823b05dd5080fc93af', 'Mozilla (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(212, 162, 'f220c09442d3d3e39d797bb60da724b49092fbb6d7b3ccbd4947fb815aadd17e', 'Mozilla (Linux; Android 6.0.1; Moto G (4) Build-23.1; wv) AppleWebKit (KHTML, like Gecko) Version Chrome Mobile Safari[FBAN;FBLC_US;FBAV;]'),
(214, 163, '2dc4803aa044e81bdb73e9b66d3b7482b8e47536e2197aa7a4fb1a2928ff7613', 'Opera (Android; Opera Mini; U; en) Presto Version'),
(215, 114, 'b66c29434160f16b687993a14785bcaa9ff3bc2f1d282223b96f75beb37bdfac', 'Mozilla (Windows NT 10.0; WOW64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(216, 136, 'b3f07b5fff965b4dc44c9f6edc9a8d190c683a4ba12fa9f2330cf6974ba9b46b', 'Mozilla (Windows NT 6.3; Win64; x64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(231, 178, 'cea151573db0ef6cc2d543a679ba1d53ced45ca651bd6b148462bf46fdd0c698', 'Mozilla (Windows NT 6.1; WOW64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(218, 1, 'ea6aa8fb023d34ed22c2b7a88d5919c807906138aa5351dcf19d29e790fb51aa', 'Mozilla (Macintosh; Intel Mac OS X 10_11_5) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(219, 165, '93d424a398c1b0e11ffd87a1e9ff911aa4c98f1b2aa419452a31fc6341fa6dc5', 'Mozilla (Windows NT 10.0; WOW64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(220, 166, '83030e8bb3f38ccb2911cb913d0dfc0c1e78ffd771587b429fc8a362e1908d90', 'Mozilla (X11; Ubuntu; Linux x86_64; rv:48.0) Gecko Firefox'),
(221, 167, 'bc6162d965d06eb229b6e88d03df67946d8065761cf9d9d603ff645f789fef93', 'Mozilla (Windows NT 10.0; WOW64) AppleWebKit (KHTML, like Gecko) Chrome Safari Vivaldi'),
(222, 169, 'c05ddd9d82983d08b802ab7553da6c4b8756fab451d4ec361cf3cb82a4700b4a', 'Mozilla (Windows NT 6.1; WOW64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(223, 119, 'c67fe97ae18fd975620aa8bf4aac74cefd46a79803e059096631c7891bb3b1a9', 'Mozilla (Linux; Android 4.2.2; GT-S7582 Build) AppleWebKit (KHTML, like Gecko) Chrome Mobile Safari'),
(224, 171, 'ee0cc99cd83e95676f184bbb9685932c4cae75cea780a82b260596c99522d4d5', 'Mozilla (Windows NT 6.1) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(225, 171, '898d836344e0ca01511407cf875b0a94e8294f55bc0fef86e0bfc354064d4174', 'Mozilla (Windows NT 6.1) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(226, 172, '36336ed70d1dd61db9fe18abde6e765a1848de138f35730a6d4f9af7b820d7e2', 'Mozilla (Windows NT 10.0; Win64; x64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(227, 173, '95fd35d8f18b6273bfb213bdfcc0568b95721ce117e30408c7955c271ba25657', 'Mozilla (Windows NT 10.0; WOW64; rv:47.0) Gecko Firefox'),
(228, 174, 'adfb9fadc69d044fb71adef3103660410ff3697f46e948cf23176c71d319881d', 'Mozilla (Linux; Android 5.1.1; Redmi Note 3 Build) AppleWebKit (KHTML, like Gecko) Chrome Mobile Safari'),
(229, 175, 'b226fd8477e988a5ce5782057f43d3f7df9eb69f65498bafa4120fdd6d2686a0', 'Mozilla (Linux; Android 6.0.1; SM-J700F Build; wv) AppleWebKit (KHTML, like Gecko) Version Chrome Mobile Safari [FB_IAB;FBAV;]'),
(230, 177, '1acd90479b13f139643416c5a44dabd2d1fb5dfd6b171e7498aff95b7ea4d6e5', 'Mozilla (Windows NT 6.3; Win64; x64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(233, 180, '291d065debf927a6307d5f4f5dc7e92b7167a4d92f402225c2ab35e65e0e3b03', 'Mozilla (Linux; Android 5.0.2; HTC Desire 816 dual sim Build; wv) AppleWebKit (KHTML, like Gecko) Version Chrome Mobile Safari [FB_IAB;FBAV;]'),
(234, 181, 'dffaacc07696dee33b850adacc6613db781fae1f51d77b00b30d0fe542f69c48', 'Mozilla (Windows NT 6.1; WOW64) AppleWebKit (KHTML, like Gecko) Chrome Safari'),
(235, 182, '3f413d99d42ee101b9d74f1b8ac8660e899bee10db6ebecddb75f905d1fffb3f', 'Mozilla (Macintosh; Intel Mac OS X 10_11_5) AppleWebKit (KHTML, like Gecko) Version Safari'),
(236, 184, '1906ecbdc5ec3970f57aad38f92ec316749f3106de9c1f6893734e1e7c1b3f17', 'Mozilla (Linux; Android 5.1.1; Redmi Note 3 Build; wv) AppleWebKit (KHTML, like Gecko) Version Chrome Mobile Safari [FB_IAB;FBAV;]'),
(237, 185, '50c49e8fc87a36d150a4c659ec822cb4c1cbbd58d1413ed2aea80cecc7c89b68', 'Mozilla (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit (KHTML, like Gecko) Version Safari'),
(238, 186, 'b80a2789d4fd1534f14f24a59f92148eeca63605518f3e067120d2403d35d36f', 'Mozilla (Windows NT 10.0; WOW64) AppleWebKit (KHTML, like Gecko) Chrome Safari');

-- --------------------------------------------------------

--
-- Table structure for table `user_permission_matches`
--

CREATE TABLE IF NOT EXISTS `user_permission_matches` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=273 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_permission_matches`
--

INSERT INTO `user_permission_matches` (`id`, `user_id`, `permission_id`) VALUES
(100, 1, 1),
(101, 1, 2),
(102, 2, 1),
(104, 19, 1),
(105, 20, 1),
(106, 21, 1),
(107, 22, 1),
(108, 23, 1),
(109, 24, 1),
(110, 25, 1),
(111, 26, 1),
(112, 26, 2),
(113, 27, 1),
(114, 28, 1),
(115, 29, 1),
(116, 30, 1),
(117, 31, 1),
(118, 32, 1),
(119, 33, 1),
(120, 34, 1),
(121, 35, 1),
(122, 36, 1),
(123, 37, 1),
(124, 38, 1),
(125, 39, 1),
(126, 40, 1),
(127, 41, 1),
(128, 42, 1),
(129, 43, 1),
(130, 44, 1),
(131, 45, 1),
(132, 46, 1),
(133, 47, 1),
(134, 48, 1),
(135, 49, 1),
(136, 50, 1),
(137, 51, 1),
(138, 52, 1),
(139, 53, 1),
(140, 54, 1),
(141, 55, 1),
(142, 56, 1),
(143, 57, 1),
(144, 58, 1),
(145, 59, 1),
(146, 60, 1),
(147, 61, 1),
(148, 62, 1),
(149, 63, 1),
(150, 64, 1),
(151, 65, 1),
(152, 66, 1),
(153, 67, 1),
(154, 68, 1),
(155, 69, 1),
(156, 70, 1),
(157, 71, 1),
(158, 72, 1),
(159, 73, 1),
(160, 74, 1),
(161, 75, 1),
(162, 76, 1),
(163, 77, 1),
(164, 78, 1),
(165, 79, 1),
(166, 80, 1),
(167, 81, 1),
(168, 82, 1),
(169, 83, 1),
(170, 84, 1),
(171, 85, 1),
(172, 86, 1),
(173, 87, 1),
(174, 88, 1),
(175, 89, 1),
(176, 90, 1),
(177, 91, 1),
(178, 92, 1),
(179, 93, 1),
(180, 94, 1),
(181, 95, 1),
(182, 96, 1),
(183, 97, 1),
(184, 98, 1),
(185, 99, 1),
(186, 100, 1),
(187, 101, 1),
(188, 102, 1),
(189, 103, 1),
(190, 104, 1),
(191, 105, 1),
(192, 106, 1),
(193, 107, 1),
(194, 108, 1),
(195, 109, 1),
(196, 110, 1),
(197, 111, 1),
(198, 112, 1),
(199, 113, 1),
(200, 114, 1),
(201, 115, 1),
(202, 116, 1),
(203, 117, 1),
(204, 118, 1),
(205, 119, 1),
(206, 120, 1),
(207, 121, 1),
(208, 122, 1),
(209, 123, 1),
(210, 124, 1),
(211, 125, 1),
(212, 126, 1),
(213, 127, 1),
(214, 128, 1),
(215, 129, 1),
(216, 130, 1),
(217, 131, 1),
(218, 132, 1),
(219, 133, 1),
(220, 134, 1),
(221, 135, 1),
(222, 136, 1),
(223, 137, 1),
(224, 138, 1),
(225, 139, 1),
(226, 140, 1),
(227, 141, 1),
(228, 142, 1),
(229, 143, 1),
(230, 144, 1),
(231, 145, 1),
(232, 146, 1),
(233, 147, 1),
(234, 148, 1),
(235, 149, 1),
(236, 150, 1),
(237, 151, 1),
(238, 152, 1),
(239, 153, 1),
(240, 154, 1),
(241, 155, 1),
(242, 156, 1),
(243, 157, 1),
(244, 158, 1),
(245, 159, 1),
(246, 160, 1),
(247, 161, 1),
(248, 162, 1),
(249, 163, 1),
(250, 164, 1),
(251, 165, 1),
(252, 166, 1),
(253, 167, 1),
(254, 168, 1),
(255, 169, 1),
(256, 170, 1),
(257, 171, 1),
(258, 172, 1),
(259, 173, 1),
(260, 174, 1),
(261, 175, 1),
(262, 176, 1),
(263, 177, 1),
(264, 178, 1),
(265, 179, 1),
(266, 180, 1),
(267, 181, 1),
(268, 182, 1),
(269, 183, 1),
(270, 184, 1),
(271, 185, 1),
(272, 186, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_page_matches`
--
ALTER TABLE `permission_page_matches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EMAIL` (`email`) USING BTREE;

--
-- Indexes for table `users_online`
--
ALTER TABLE `users_online`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_session`
--
ALTER TABLE `users_session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_permission_matches`
--
ALTER TABLE `user_permission_matches`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `permission_page_matches`
--
ALTER TABLE `permission_page_matches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=187;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=187;
--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=164;
--
-- AUTO_INCREMENT for table `users_session`
--
ALTER TABLE `users_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=239;
--
-- AUTO_INCREMENT for table `user_permission_matches`
--
ALTER TABLE `user_permission_matches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=273;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
