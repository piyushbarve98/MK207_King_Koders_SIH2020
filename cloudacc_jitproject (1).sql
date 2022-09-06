-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 01, 2020 at 12:27 PM
-- Server version: 5.6.47-log
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cloudacc_jitproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_city`
--

CREATE TABLE `tbl_city` (
  `id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = active, 0 = inactive',
  `is_deleted` tinyint(1) NOT NULL COMMENT '1= deleted',
  `created_at` datetime NOT NULL,
  `created_by` int(4) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_city`
--

INSERT INTO `tbl_city` (`id`, `state_id`, `name`, `status`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 23, 'INDORE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(2, 2, 'AGRA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_languages`
--

CREATE TABLE `tbl_languages` (
  `lang_id` int(11) NOT NULL,
  `lang` longtext NOT NULL,
  `english` longtext NOT NULL,
  `bengali` longtext NOT NULL,
  `arabic` longtext NOT NULL,
  `german` longtext NOT NULL,
  `greek` longtext NOT NULL,
  `spanish` longtext NOT NULL,
  `french` longtext NOT NULL,
  `hindi` longtext NOT NULL,
  `hungarian` longtext NOT NULL,
  `indonesian` longtext NOT NULL,
  `italian` longtext NOT NULL,
  `japanese` longtext NOT NULL,
  `korean` longtext NOT NULL,
  `portuguese` longtext NOT NULL,
  `russian` longtext NOT NULL,
  `thai` longtext NOT NULL,
  `turkish` longtext NOT NULL,
  `chinese` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_languages`
--

INSERT INTO `tbl_languages` (`lang_id`, `lang`, `english`, `bengali`, `arabic`, `german`, `greek`, `spanish`, `french`, `hindi`, `hungarian`, `indonesian`, `italian`, `japanese`, `korean`, `portuguese`, `russian`, `thai`, `turkish`, `chinese`) VALUES
(1, 'Dashboard', '', '', '', '', '', '', '', 'डैशबोर्ड', '', '', '', '', '', '', '', '', '', ''),
(3, 'Total Products', '', '', '', '', '', '', '', 'टोटल प्रोडक्ट', '', '', '', '', '', '', '', '', '', ''),
(4, 'Total Orders', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 'Total New Order', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 'Total Pending Order', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 'Total Handover Order', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, 'Total Delivered Orders', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, 'Home', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, 'Product Management', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, 'Product List View', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(12, 'SNo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(13, 'Product Name', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, 'Company Name', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(15, 'Unit', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(16, 'Action', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(17, 'Qty', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(18, 'Price per Unit', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(19, 'Order Management', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20, 'Order List View', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21, 'User Name', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(22, 'Mobile', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(23, 'Address', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(24, 'Total Amount', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(25, 'Date', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(26, 'Delivery user', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(27, 'Status', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(28, 'Discount(%)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(29, 'Discounted Price', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(30, 'First Name', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(31, 'Last Name', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(32, 'Email', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(33, 'User Registration', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(34, 'One Nation-One Citizen-One Pension', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(35, 'Submit', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(36, 'Login?', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(37, 'AAdhar', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(38, 'Aadhar Number', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(39, 'Aadhar Photo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(40, 'Pan Number', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(41, 'Pan Photo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(42, 'Dob', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(43, 'State', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(44, 'Select State', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(45, 'Gender', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(46, 'Male', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(47, 'Female', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(48, 'City', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(49, 'Scheme for', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(50, 'select Scheme for', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(51, 'Password', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(52, 'Congratulations India for One Nation-One Citizen-One Pension', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(53, 'Read more', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(54, 'Schemes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(55, 'news', '', '', '', '', '', '', '', ' समाचार', '', '', '', '', '', '', '', '', '', ''),
(56, 'Login', '', '', '', '', '', '', '', ' लॉग इन करें', '', '', '', '', '', '', '', '', '', ''),
(57, 'Register', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(58, 'Users Guide', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(59, 'Guide us', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(60, 'Contact us', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(61, 'Get to know us', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(62, 'Terms of use', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(63, 'Privacy policy', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(64, 'Press', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(65, 'Book Scheme', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(66, 'Registration', '', '', '', '', '', '', '', ' रजिस्टर करें', '', '', '', '', '', '', '', '', '', ''),
(67, 'We Are Social', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(68, 'Copyrights © 2020 One Nation-One Citizen-One Pension - All rights reserved.', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(69, 'User Login', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(70, 'User ID', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(71, 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(72, 'Hindi', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(73, 'Scheme List', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(74, 'Scheme Name', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(75, 'Scheme Amount', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(76, 'Scheme Charges', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(77, 'Scheme Charges(INR)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(78, 'Scheme Charges(In INR)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_schemes`
--

CREATE TABLE `tbl_schemes` (
  `id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `schemes_type` int(11) NOT NULL COMMENT '1 for center,2 for state ',
  `name` varchar(200) NOT NULL,
  `amount` int(11) NOT NULL,
  `scheme_for` text NOT NULL,
  `scheme_charges` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = active, 0 = inactive',
  `is_deleted` tinyint(1) NOT NULL COMMENT '1 = deleted',
  `created_at` datetime NOT NULL,
  `created_by` int(4) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_schemes`
--

INSERT INTO `tbl_schemes` (`id`, `state_id`, `schemes_type`, `name`, `amount`, `scheme_for`, `scheme_charges`, `status`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 6, 1, 'gov scheme 1', 1500, '60,unemployed', 10, 1, 0, '2020-07-14 21:28:50', 1, '2020-07-14 21:28:50', 1),
(2, 11, 3, 'nps', 1500, 'labour', 0, 1, 1, '2020-07-14 21:28:50', 1, '2020-07-25 16:26:45', 1),
(3, 23, 4, 'NSAP', 1500, '60', 0, 1, 1, '2020-07-26 12:59:56', 1, '2020-07-26 13:54:32', 41),
(4, 12, 2, 'old age pension', 3000, '60', 0, 1, 0, '2020-07-26 13:55:08', 41, '2020-07-26 13:55:08', 41),
(5, 50, 2, 'old age pension', 3000, '60', 0, 1, 0, '2020-07-26 13:55:08', 41, '2020-07-26 13:55:08', 41),
(6, 12, 5, 'senior citizen help', 1200, '60', 0, 1, 0, '2020-07-26 13:55:08', 41, '2020-07-26 13:55:08', 41),
(7, 50, 5, 'senior citizen help', 1200, '60', 0, 1, 0, '2020-07-26 13:55:08', 41, '2020-07-26 13:55:08', 41);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_schemes_apply`
--

CREATE TABLE `tbl_schemes_apply` (
  `id` int(11) NOT NULL,
  `scheme_id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = active, 0 = inactive',
  `is_deleted` tinyint(1) NOT NULL COMMENT '1 = deleted',
  `created_at` datetime NOT NULL,
  `created_by` int(4) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_schemes_apply`
--

INSERT INTO `tbl_schemes_apply` (`id`, `scheme_id`, `user_id`, `status`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(2, 1, 45, 1, 0, '0000-00-00 00:00:00', 0, '2020-07-23 11:14:46', 0),
(3, 2, 45, 1, 0, '0000-00-00 00:00:00', 0, '2020-07-25 13:17:35', 0),
(4, 4, 50, 1, 0, '0000-00-00 00:00:00', 0, '2020-07-28 16:14:34', 0),
(5, 1, 50, 1, 0, '0000-00-00 00:00:00', 0, '2020-07-28 16:43:20', 0),
(6, 4, 46, 1, 0, '0000-00-00 00:00:00', 0, '2020-07-28 19:29:35', 0),
(7, 6, 50, 1, 0, '0000-00-00 00:00:00', 0, '2020-07-28 16:43:20', 0),
(8, 7, 50, 1, 0, '0000-00-00 00:00:00', 0, '2020-07-28 16:43:20', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_states`
--

CREATE TABLE `tbl_states` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = active, 0 = inactive',
  `is_deleted` tinyint(1) NOT NULL COMMENT '1= deleted',
  `created_at` datetime NOT NULL,
  `created_by` int(4) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_states`
--

INSERT INTO `tbl_states` (`id`, `name`, `status`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'ANDAMAN AND NICOBAR ISLANDS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(2, 'ANDHRA PRADESH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(3, 'ARUNACHAL PRADESH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(4, 'ASSAM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(5, 'BIHAR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(6, 'CHATTISGARH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(7, 'CHANDIGARH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(8, 'DAMAN AND DIU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(9, 'DELHI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(10, 'DADRA AND NAGAR HAVELI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(11, 'GOA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(12, 'GUJARAT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(13, 'HIMACHAL PRADESH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(14, 'HARYANA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(15, 'JAMMU AND KASHMIR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(16, 'JHARKHAND', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(17, 'KERALA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(18, 'KARNATAKA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(19, 'LAKSHADWEEP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(20, 'MEGHALAYA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(21, 'MAHARASHTRA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(22, 'MANIPUR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(23, 'MADHYA PRADESH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(24, 'MIZORAM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(25, 'NAGALAND', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(26, 'ORISSA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(27, 'PUNJAB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(28, 'PONDICHERRY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(29, 'RAJASTHAN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(30, 'SIKKIM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(31, 'TAMIL NADU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(32, 'TRIPURA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(33, 'UTTARAKHAND', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(34, 'UTTAR PRADESH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(35, 'WEST BENGAL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(36, 'TELANGANA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(50, 'All', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `user_type_id` int(11) NOT NULL DEFAULT '2',
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(20) NOT NULL,
  `aadhar_number` varchar(100) NOT NULL,
  `aadhar` varchar(100) NOT NULL,
  `pan_number` varchar(100) NOT NULL,
  `pan` varchar(100) NOT NULL,
  `scheme_for` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = active, 0 = inactive',
  `is_first_login` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL COMMENT '1 = deleted',
  `created_at` datetime NOT NULL,
  `created_by` int(4) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `user_id`, `state_id`, `city_id`, `user_type_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address`, `dob`, `gender`, `aadhar_number`, `aadhar`, `pan_number`, `pan`, `scheme_for`, `status`, `is_first_login`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, '', 0, 0, 1, 'Super', 'Admin', 'administrator@gmail.com', 'ab10ecd36ff8beeda952df46c216065f', '7845845845', 'asdAFF', '1995-12-20', 'M', '', '', '', '', '', 1, 0, 0, '2020-04-06 11:54:42', 0, '2020-07-14 22:25:41', 42),
(39, '', 1, 0, 2, 'pradeep', 'patidar', 'pradeep@gmail.com', '5422c2c0a64354ea3758e6302f03ad65', '9977004451', 'mumbai', '0000-00-00', 'M', '', '1594528287.png', '', '', '', 1, 0, 0, '2020-07-12 10:01:27', 1, '2020-08-01 17:03:45', 1),
(41, '', 1, 0, 3, 'shiv', 'kumar', 'shiv@gmail.com', '5422c2c0a64354ea3758e6302f03ad65', '7845120784', 'indore', '0000-00-00', 'M', '', '1594646907.jpg', '', '', '', 1, 0, 0, '2020-07-13 18:58:27', 1, '2020-07-13 19:05:37', 1),
(42, 'TESVIS073116', 0, 0, 4, 'test', 'vishwakarma', 'testind@gmail.com', '', '8458455485', '', '2019-02-27', '', 'safasf', '', 'asfasf', '', '', 1, 0, 0, '2020-07-18 17:21:55', 0, '2020-07-18 17:21:55', 0),
(43, 'TESVIS073147', 0, 0, 4, 'test', 'vishwakarma', 'testind@gmail.com', '', '8458455485', '', '2019-02-27', '', 'safasf', '', 'asfasf', '', '', 1, 0, 0, '2020-07-18 17:22:27', 0, '2020-07-18 17:22:27', 0),
(44, 'TESVIS073686', 16, 2, 4, 'test', 'vishwakarma', 'testind@gmail.com', '', '5478425145', '', '2019-02-27', '', '3252356223', '1595073685.jpg', '226236', '1595073685.jpg', '', 1, 0, 0, '2020-07-18 17:31:25', 0, '2020-07-18 17:31:25', 0),
(45, 'TESVIS134447', 13, 13, 4, 'test', 'vishwakarma', 'asssssdministrator@gmail.com', 'ab10ecd36ff8beeda952df46c216065f', '8458455485', '', '2019-02-27', 'M', 'ss', '1595134446.jpg', 'asfasf', '1595134446.jpg', '60', 1, 0, 0, '2020-07-19 10:24:06', 0, '2020-07-25 10:32:18', 45),
(46, 'AAABBB653053', 23, 6, 4, 'Rajesh', 'Mahajan', 'aaa@gmail.com', '5422c2c0a64354ea3758e6302f03ad65', '8965475623', 'Plot no. 52, Madhusudan Colony, Indore, Madhya Pradesh', '1999-09-04', 'M', '123412341234', '1595653053.png', '123456789', '1595653053.png', '60', 1, 0, 0, '2020-07-25 10:27:33', 0, '2020-07-29 10:39:55', 46),
(47, 'CCCDDD911975', 23, 1, 4, 'cccc', 'ddd', 'ccc@gmail.com', '5422c2c0a64354ea3758e6302f03ad65', '4564564564', '', '2008-02-21', '', '123456', '1595911974.jpg', '456456', '1595911974.jpg', 'labour', 1, 0, 0, '2020-07-28 10:22:54', 0, '2020-07-28 10:22:54', 0),
(48, 'HTEHTE931700', 2, 2, 4, 'htest', 'htest', 'htest@gmail.com', '5422c2c0a64354ea3758e6302f03ad65', '8458455485', '', '2019-02-27', '', '', '', '', '', 'labour', 1, 0, 0, '2020-07-28 15:51:40', 0, '2020-07-28 15:51:40', 0),
(49, 'HTEHTE931972', 2, 2, 4, 'htest', 'htest', 'htest@yopmail.com', '5422c2c0a64354ea3758e6302f03ad65', '8458455485', '', '2011-03-02', '', '', '', '', '', 'labour', 1, 0, 0, '2020-07-28 15:56:12', 0, '2020-07-28 15:56:12', 0),
(50, 'PRAPAT004451', 2, 2, 4, 'pradeep', 'patidar', 'pradeep.mp09@gmail.com', '5422c2c0a64354ea3758e6302f03ad65', '1234567890', '', '2019-02-27', '', '', '', '', '', '60', 1, 0, 0, '2020-07-28 16:05:30', 0, '2020-07-28 16:05:30', 0),
(51, '', 9, 0, 2, 'dhruv', 'gole', 'dhruvgole@gmail.com', '5422c2c0a64354ea3758e6302f03ad65', '7909802698', '123 delhi', '0000-00-00', 'M', '', '1596276544.jpg', '', '', '', 1, 0, 0, '2020-08-01 15:39:04', 1, '2020-08-01 16:35:11', 1),
(52, '', 2, 0, 2, 'Gourav', 'Verma', 'gourav.verma@gmail.com', '5422c2c0a64354ea3758e6302f03ad65', '8765489365', 'Rajwada,Indore', '0000-00-00', 'M', '', '1596280143.png', '', '', '', 1, 0, 0, '2020-08-01 16:39:03', 1, '2020-08-01 16:39:20', 1),
(53, '', 23, 0, 2, 'Shivani', 'laad', 'laadshivani02@gmail.com', '5422c2c0a64354ea3758e6302f03ad65', '6264620590', 'sanawad', '0000-00-00', 'F', '', '1596280400.png', '', '', '', 0, 0, 1, '2020-08-01 16:43:20', 1, '2020-08-01 17:06:21', 1),
(54, '', 23, 0, 3, 'ramesh', 'apte', 'apteramesh@gmail.com', 'a01d43f13d65a7bb1f4ff229f3e5616e', '9988777700', 'indore,mp', '0000-00-00', 'M', '', '1596280416.jpg', '', '', '', 0, 0, 1, '2020-08-01 16:43:36', 1, '2020-08-01 16:58:33', 1),
(55, '', 23, 0, 3, 'rahul', 'kumar', 'rahulkumar@gmail.com', '4af8116b1d2ba4c211203beea5d09ab6', '9988776655', 'indore mp', '0000-00-00', 'M', '', '1596281397.jpg', '', '', '', 0, 0, 0, '2020-08-01 16:59:57', 1, '2020-08-01 16:59:57', 1),
(56, '', 14, 0, 2, 'sam', 'jones', 'samjones@gmail.com', '5422c2c0a64354ea3758e6302f03ad65', '8828832381', 'haryana', '0000-00-00', 'M', '', '1596281587.jpg', '', '', '', 0, 0, 1, '2020-08-01 17:03:07', 1, '2020-08-01 17:04:01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users_history`
--

CREATE TABLE `tbl_users_history` (
  `id` int(11) NOT NULL,
  `tbl_users_id` int(10) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `user_type` tinyint(2) NOT NULL,
  `ip_address` varchar(100) NOT NULL,
  `last_login` datetime NOT NULL,
  `expiry_date` datetime NOT NULL,
  `created_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `device_type` enum('Web','Android','iPhone','Office') NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=Not deleted,1=Deleted'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users_history`
--

INSERT INTO `tbl_users_history` (`id`, `tbl_users_id`, `user_id`, `user_type`, `ip_address`, `last_login`, `expiry_date`, `created_date`, `modify_date`, `device_type`, `is_deleted`) VALUES
(1, 1, 'SUPADM130819', 1, '182.75.195.46', '2020-08-01 16:23:03', '2020-09-05 12:29:33', '2019-08-13 11:58:54', '2020-08-01 16:23:45', 'Web', 0),
(2, 4, 'TESUSE276249', 8, '106.202.14.16', '2019-08-20 10:32:52', '2019-11-20 10:32:52', '2019-08-20 10:32:53', '2019-08-20 10:41:51', 'Web', 0),
(3, 5, 'REFTES287181', 8, '223.184.147.33', '2019-08-20 13:20:29', '2019-11-20 13:20:29', '2019-08-20 13:20:30', '2019-08-20 13:23:21', 'Web', 0),
(4, 7, 'OFFADM298338', 5, '171.49.142.110', '2020-05-28 16:48:59', '2020-08-15 16:14:23', '2019-09-03 10:14:36', '2020-05-28 19:23:21', 'Web', 0),
(5, 26, 'ANAKLI198831', 5, '122.168.156.3', '2020-03-17 11:10:03', '2020-03-17 15:18:20', '2019-09-12 16:32:12', '2020-03-17 11:17:34', 'Web', 0),
(6, 36, 'ANNTYA394628', 10, '188.113.201.14', '2019-10-09 01:00:13', '2020-01-09 01:00:13', '2019-10-09 01:00:15', '2019-10-09 01:00:15', 'Web', 0),
(7, 37, 'SHASAI433545', 10, '213.230.114.80', '2019-10-12 20:14:32', '2020-01-09 17:03:47', '2019-10-09 17:03:48', '2019-10-12 20:28:21', 'Web', 0),
(8, 35, 'SHORAV375045', 10, '37.110.210.55', '2019-10-11 15:05:37', '2020-01-11 15:06:28', '2019-10-11 15:05:39', '2019-10-11 15:06:28', 'Web', 0),
(9, 33, 'EVGBIR212298', 10, '37.110.215.58', '2019-10-11 18:58:01', '2020-01-11 18:58:01', '2019-10-11 18:58:02', '2019-10-11 18:58:02', 'Web', 0),
(10, 31, 'SERALI203389', 10, '37.110.210.3', '2019-10-11 19:08:44', '2020-01-11 19:08:44', '2019-10-11 19:08:45', '2019-10-11 19:08:45', 'Web', 0),
(11, 39, 'DMIKOV622813', 10, '157.34.14.191', '2020-07-28 14:47:46', '2020-01-11 19:41:57', '2019-10-11 19:41:58', '2020-07-28 14:48:19', 'Web', 0),
(12, 32, 'DMIKAN209157', 10, '213.230.84.165', '2019-10-11 20:35:34', '2020-01-11 20:35:34', '2019-10-11 20:35:35', '2019-10-11 20:35:35', 'Web', 0),
(13, 40, 'ELEMIT809236', 10, '84.54.114.224', '2019-10-12 09:45:15', '2020-01-12 09:45:15', '2019-10-12 09:45:16', '2019-10-12 09:45:16', 'Web', 0),
(14, 15, 'DJAORA819341', 1, '95.46.80.98', '2019-10-12 12:49:35', '2020-01-12 12:49:35', '2019-10-12 12:49:37', '2019-10-12 12:49:37', 'Web', 0),
(15, 44, 'SANSAI814835', 10, '37.110.215.235', '2019-11-10 14:59:00', '2020-01-12 12:58:46', '2019-10-12 12:53:09', '2019-11-10 14:59:56', 'Web', 0),
(16, 44, 'SANSAI814835', 10, '37.110.210.10', '2019-10-12 12:53:08', '2020-01-12 12:53:08', '2019-10-12 13:03:42', '2019-10-12 13:03:42', 'Web', 0),
(17, 45, 'MUKSAI815733', 10, '37.110.210.54', '2019-10-13 14:57:35', '2020-01-12 13:06:08', '2019-10-12 13:04:13', '2019-10-13 14:58:27', 'Web', 0),
(18, 16, 'KAYSHU982287', 10, '213.230.70.58', '2019-10-12 13:14:10', '2020-01-12 14:05:49', '2019-10-12 13:14:11', '2019-10-12 14:05:49', 'Web', 0),
(19, 41, 'DIYYUL811463', 10, '122.168.6.208', '2020-07-29 17:20:30', '2020-01-12 13:53:12', '2019-10-12 13:53:13', '2020-07-29 19:17:05', 'Web', 0),
(20, 48, 'AZIZIK859377', 10, '185.163.26.74', '2019-10-12 18:12:17', '2020-01-12 18:12:17', '2019-10-12 18:12:18', '2019-10-12 18:12:18', 'Web', 0),
(21, 52, 'OMOANN872083', 10, '37.110.215.250', '2019-10-12 19:33:25', '2020-01-12 19:33:25', '2019-10-12 19:33:26', '2019-10-12 19:33:26', 'Web', 0),
(22, 50, 'KARSAR867596', 10, '37.110.215.74', '2019-10-12 19:38:03', '2020-01-12 19:38:03', '2019-10-12 19:38:05', '2019-10-12 19:38:05', 'Web', 0),
(23, 54, 'ASKMUH877882', 10, '37.110.215.200', '2019-10-12 19:38:43', '2020-01-12 19:38:43', '2019-10-12 19:38:44', '2019-10-12 19:38:44', 'Web', 0),
(24, 51, 'MARAKB869202', 10, '37.110.215.118', '2019-10-12 19:56:26', '2020-01-12 19:56:26', '2019-10-12 19:56:28', '2019-10-12 19:56:28', 'Web', 0),
(25, 34, 'ANTPOD359085', 10, '89.146.120.176', '2019-10-13 16:04:19', '2020-01-13 16:04:19', '2019-10-13 16:04:20', '2019-10-13 16:04:20', 'Web', 0),
(26, 43, 'OLGYAK813419', 10, '185.163.27.146', '2019-10-13 16:13:05', '2020-01-13 16:13:05', '2019-10-13 16:13:06', '2019-10-13 16:13:06', 'Web', 0),
(27, 60, 'KHAABD959202', 10, '185.139.136.71', '2019-10-13 16:41:05', '2020-01-13 16:41:05', '2019-10-13 16:41:06', '2019-10-13 16:41:06', 'Web', 0),
(28, 57, 'ANDZVE892243', 10, '91.229.163.250', '2019-10-13 19:25:18', '2020-01-13 19:25:18', '2019-10-13 19:25:19', '2019-10-13 19:25:19', 'Web', 0),
(29, 57, 'ANDZVE892243', 10, '91.229.163.250', '2019-10-13 19:25:18', '2020-01-13 19:25:18', '2019-10-13 19:25:38', '2019-10-13 19:25:38', 'Web', 0),
(30, 57, 'ANDZVE892243', 10, '91.229.163.250', '2019-10-13 19:25:18', '2020-01-13 19:25:18', '2019-10-13 19:25:39', '2019-10-13 19:25:39', 'Web', 0),
(31, 56, 'MAKMUT888353', 10, '213.230.116.71', '2019-10-14 09:00:48', '2020-01-14 09:00:48', '2019-10-14 09:00:49', '2019-10-14 09:00:49', 'Web', 0),
(32, 30, 'KRAMAK200553', 10, '213.230.86.170', '2019-10-14 14:50:59', '2020-01-14 14:52:37', '2019-10-14 14:51:00', '2019-10-14 14:52:37', 'Web', 0),
(33, 47, 'NURYUS848420', 10, '37.110.215.137', '2019-11-06 22:16:26', '2020-01-14 18:35:18', '2019-10-14 18:35:19', '2019-11-06 23:55:04', 'Web', 0),
(34, 59, 'TIMRAK899512', 10, '185.163.26.158', '2019-10-14 18:37:26', '2020-01-14 18:37:26', '2019-10-14 18:37:27', '2019-10-14 18:37:27', 'Web', 0),
(35, 58, 'LYUVOL892268', 10, '185.139.136.87', '2019-10-14 18:48:00', '2020-01-14 18:48:00', '2019-10-14 18:48:02', '2019-10-14 18:48:02', 'Web', 0),
(36, 49, 'ILOFIN860871', 10, '84.54.77.223', '2019-11-05 21:58:17', '2020-01-14 22:36:30', '2019-10-14 22:36:31', '2019-11-05 21:58:44', 'Web', 0),
(37, 42, 'DIMVER813105', 10, '185.139.136.78', '2019-10-15 11:30:44', '2020-01-15 11:30:44', '2019-10-15 11:30:45', '2019-10-15 11:30:45', 'Web', 0),
(38, 63, 'ASIUSM123799', 10, '37.110.215.94', '2019-10-17 13:37:12', '2020-01-17 13:39:01', '2019-10-17 13:37:14', '2019-10-17 13:39:01', 'Web', 0),
(39, 65, 'ANDREZ136673', 10, '95.46.80.5', '2019-10-18 02:55:17', '2020-01-18 02:55:17', '2019-10-18 02:55:18', '2019-10-18 02:55:18', 'Web', 0),
(40, 2, 'ADMADM130819', 2, '122.175.233.51', '2020-05-26 10:44:30', '2020-06-05 12:22:33', '2019-10-18 17:28:31', '2020-05-26 11:00:06', 'Web', 0),
(41, 66, 'ANDTRY239011', 10, '89.146.125.156', '2019-10-18 20:32:56', '2020-01-18 20:32:56', '2019-10-18 20:32:57', '2019-10-18 20:32:57', 'Web', 0),
(42, 68, 'NIKIBR413007', 10, '89.146.72.225', '2019-10-21 09:41:16', '2020-01-21 09:42:43', '2019-10-21 09:41:17', '2019-10-21 09:42:43', 'Web', 0),
(43, 67, 'ANYERS404262', 10, '37.110.210.143', '2019-10-23 23:38:48', '2020-01-23 23:38:48', '2019-10-23 23:38:49', '2019-10-23 23:38:49', 'Web', 0),
(44, 21, 'BOTSAP249694', 10, '37.110.210.143', '2019-10-23 23:52:49', '2020-01-23 23:52:49', '2019-10-23 23:52:50', '2019-10-23 23:52:50', 'Web', 0),
(45, 69, 'KODOYD735897', 10, '37.110.210.16', '2019-10-24 13:42:32', '2020-01-24 13:42:32', '2019-10-24 13:42:33', '2019-10-24 13:42:33', 'Web', 0),
(46, 64, 'YURLUB129189', 10, '94.230.229.248', '2019-10-24 16:37:13', '2020-01-24 16:37:13', '2019-10-24 16:37:14', '2019-10-24 16:37:14', 'Web', 0),
(47, 72, 'LAZDJA025552', 10, '185.163.27.140', '2019-11-06 19:58:22', '2020-01-26 17:16:25', '2019-10-26 17:16:28', '2019-11-06 19:59:03', 'Web', 0),
(48, 76, 'ELITRE094977', 10, '94.141.85.19', '2019-10-26 18:49:05', '2020-01-26 18:49:05', '2019-10-26 18:49:06', '2019-10-26 18:49:06', 'Web', 0),
(49, 75, 'GENNIZ094545', 10, '94.141.85.19', '2019-10-26 18:52:04', '2020-01-26 18:52:04', '2019-10-26 18:52:05', '2019-10-26 18:52:05', 'Web', 0),
(50, 70, 'SANYUM810573', 10, '84.54.84.28', '2019-10-26 23:21:54', '2020-01-26 23:21:54', '2019-10-26 23:21:55', '2019-10-26 23:21:55', 'Web', 0),
(51, 55, 'RUSAKB884047', 10, '185.4.160.164', '2019-11-09 00:00:18', '2020-02-06 11:58:30', '2019-11-06 11:58:31', '2019-11-09 00:00:24', 'Web', 0),
(52, 55, 'RUSAKB884047', 10, '195.158.30.166', '2019-11-06 11:58:30', '2020-02-06 11:58:30', '2019-11-06 12:00:30', '2019-11-06 12:00:30', 'Web', 0),
(53, 84, 'SHOSHO024249', 10, '91.203.175.131', '2019-11-06 20:24:33', '2020-02-06 20:23:13', '2019-11-06 20:23:14', '2019-11-06 20:27:55', 'Web', 0),
(54, 84, 'SHOSHO024249', 10, '91.203.175.131', '2019-11-06 20:23:13', '2020-02-06 20:23:13', '2019-11-06 20:23:29', '2019-11-06 20:23:29', 'Web', 0),
(55, 83, 'VIKKAR971408', 10, '91.203.175.131', '2019-11-06 20:28:07', '2020-02-06 20:28:07', '2019-11-06 20:28:08', '2019-11-06 20:28:08', 'Web', 0),
(56, 83, 'VIKKAR971408', 10, '91.203.175.131', '2019-11-06 20:28:07', '2020-02-06 20:28:07', '2019-11-06 20:28:23', '2019-11-06 20:28:23', 'Web', 0),
(57, 86, 'ASIUSM065064', 10, '37.110.210.70', '2019-11-07 19:35:06', '2020-02-07 19:35:06', '2019-11-07 19:35:07', '2019-11-07 19:35:07', 'Web', 0),
(58, 88, 'POLMER196597', 10, '213.230.87.204', '2019-11-08 14:28:02', '2020-02-08 14:28:02', '2019-11-08 14:28:03', '2019-11-08 14:28:03', 'Web', 0),
(59, 89, 'NIGAZA223737', 10, '37.110.215.102', '2019-11-09 09:14:09', '2020-02-09 09:14:09', '2019-11-09 09:14:11', '2019-11-09 09:14:11', 'Web', 0),
(60, 92, 'NASAKH370775', 10, '185.163.26.126', '2019-11-10 15:20:49', '2020-02-10 15:20:49', '2019-11-10 15:20:50', '2019-11-10 15:20:50', 'Web', 0),
(61, 91, 'RUDAVA299097', 10, '37.110.215.209', '2019-11-10 18:58:32', '2020-02-10 18:58:32', '2019-11-10 18:58:34', '2019-11-10 18:58:34', 'Web', 0),
(62, 94, 'ALIGAZ443062', 10, '195.158.30.166', '2019-11-11 09:22:43', '2020-02-11 09:26:48', '2019-11-11 09:22:44', '2019-11-11 09:26:48', 'Web', 0),
(63, 90, 'ALEKIM225418', 10, '84.54.115.62', '2019-11-11 21:38:16', '2020-02-11 21:38:16', '2019-11-11 21:38:17', '2019-11-11 21:38:17', 'Web', 0),
(64, 81, 'JASAKH897074', 10, '195.158.30.166', '2019-11-12 10:52:11', '2020-02-12 10:52:11', '2019-11-12 10:52:12', '2019-11-12 10:52:12', 'Web', 0),
(65, 77, 'DONTAD578440', 10, '213.230.117.177', '2019-11-12 15:07:27', '2020-02-12 15:07:27', '2019-11-12 15:07:28', '2019-11-12 15:07:28', 'Web', 0),
(66, 96, 'SHOERG570876', 10, '37.110.215.56', '2019-11-12 21:51:49', '2020-02-12 21:51:49', '2019-11-12 21:51:50', '2019-11-12 21:51:50', 'Web', 0),
(67, 79, 'FAROCH610567', 10, '188.113.213.181', '2019-11-15 15:04:13', '2020-02-15 14:57:31', '2019-11-15 14:57:32', '2019-11-15 15:06:21', 'Web', 0),
(68, 79, 'FAROCH610567', 10, '188.113.213.183', '2019-11-15 14:57:31', '2020-02-15 14:57:31', '2019-11-15 14:58:37', '2019-11-15 14:58:37', 'Web', 0),
(69, 79, 'FAROCH610567', 10, '188.113.213.183', '2019-11-15 14:57:31', '2020-02-15 14:57:31', '2019-11-15 15:02:02', '2019-11-15 15:02:02', 'Web', 0),
(70, 79, 'FAROCH610567', 10, '188.113.213.183', '2019-11-15 14:57:31', '2020-02-15 14:57:31', '2019-11-15 15:02:02', '2019-11-15 15:02:02', 'Web', 0),
(71, 97, 'VALVOR663692', 10, '188.113.230.116', '2019-11-16 18:39:39', '2020-02-16 18:39:39', '2019-11-16 18:39:40', '2019-11-16 18:39:40', 'Web', 0),
(72, 103, 'ULURAK065949', 10, '94.141.72.36', '2019-11-18 17:20:06', '2020-02-18 17:20:06', '2019-11-18 17:20:07', '2019-11-18 17:20:07', 'Web', 0),
(73, 100, 'GAYABI974111', 10, '37.110.215.25', '2019-11-19 09:14:17', '2020-02-19 09:14:17', '2019-11-19 09:14:18', '2019-11-19 09:14:18', 'Web', 0),
(74, 107, 'MERESP638467', 10, '213.230.84.75', '2020-01-04 21:56:57', '2020-04-04 21:58:05', '2020-01-04 21:56:58', '2020-01-04 21:58:05', 'Web', 0),
(75, 111, 'MAKKRA479521', 10, '213.230.95.57', '2020-01-09 12:57:01', '2020-04-09 12:59:23', '2020-01-09 12:57:02', '2020-01-09 12:59:23', 'Web', 0),
(76, 116, 'MALABD626362', 5, '122.175.163.54', '2020-03-20 17:55:05', '2020-04-12 15:21:44', '2020-01-12 15:21:45', '2020-03-20 18:29:37', 'Web', 0),
(77, 117, 'AAMADM130819', 14, '182.70.232.165', '2020-03-07 13:35:56', '2020-06-07 13:35:56', '2020-03-05 12:23:27', '2020-03-07 15:30:22', 'Web', 0),
(78, 6, 'SDAVIS779742', 2, '182.70.218.80', '2020-06-03 13:28:01', '2020-09-02 13:05:23', '2020-06-01 16:50:24', '2020-06-03 13:29:47', 'Web', 0),
(79, 27, '', 2, '122.175.227.106', '2020-06-25 09:37:53', '2020-09-07 19:57:26', '2020-06-07 21:07:47', '2020-06-25 09:38:25', 'Web', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users_type`
--

CREATE TABLE `tbl_users_type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-Not deleted,1-Deleted'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users_type`
--

INSERT INTO `tbl_users_type` (`id`, `name`, `is_deleted`) VALUES
(1, 'Super Admin', 0),
(2, 'Admin', 0),
(3, 'Operator', 0),
(4, 'End user', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_city`
--
ALTER TABLE `tbl_city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_languages`
--
ALTER TABLE `tbl_languages`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `tbl_schemes`
--
ALTER TABLE `tbl_schemes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_schemes_apply`
--
ALTER TABLE `tbl_schemes_apply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_states`
--
ALTER TABLE `tbl_states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users_history`
--
ALTER TABLE `tbl_users_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users_type`
--
ALTER TABLE `tbl_users_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_city`
--
ALTER TABLE `tbl_city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_languages`
--
ALTER TABLE `tbl_languages`
  MODIFY `lang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `tbl_schemes`
--
ALTER TABLE `tbl_schemes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_schemes_apply`
--
ALTER TABLE `tbl_schemes_apply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_states`
--
ALTER TABLE `tbl_states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `tbl_users_history`
--
ALTER TABLE `tbl_users_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `tbl_users_type`
--
ALTER TABLE `tbl_users_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;