-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 23, 2020 at 10:41 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amarsheba`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `account_name`, `created_at`, `updated_at`) VALUES
(1, 'Bkash', '2020-09-21 23:08:42', '2020-09-21 23:08:42'),
(2, 'DBBL', '2020-09-21 23:08:50', '2020-09-21 23:08:50'),
(3, 'SBL', '2020-09-21 23:08:59', '2020-09-21 23:08:59');

-- --------------------------------------------------------

--
-- Table structure for table `account_histories`
--

CREATE TABLE `account_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `debit_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credit_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_histories`
--

INSERT INTO `account_histories` (`id`, `date`, `month`, `account_id`, `account_name`, `debit_amount`, `credit_amount`, `created_at`, `updated_at`) VALUES
(1, '2020-09-22', 'September-2020', '1', 'Bkash', '600', NULL, '2020-09-21 23:17:25', '2020-09-21 23:17:25'),
(2, '2020-09-23', 'September-2020', '1', 'Bkash', '100', NULL, '2020-09-23 00:49:43', '2020-09-23 00:49:43'),
(3, '2020-09-23', 'September-2020', '1', 'Bkash', '600', NULL, '2020-09-23 02:13:27', '2020-09-23 02:13:27'),
(4, '2020-09-23', 'September-2020', '2', 'Bkash', '400', NULL, '2020-09-23 02:13:54', '2020-09-23 02:13:54');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opening_balance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credit_limit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_term` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_alt_mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_name`, `business_name`, `contact_id`, `tax_no`, `opening_balance`, `credit_limit`, `pay_term`, `customer_email`, `customer_mobile`, `customer_alt_mobile`, `customer_city`, `customer_state`, `customer_country`, `customer_address`, `created_at`, `updated_at`) VALUES
(1, 'Rahim Mia', NULL, NULL, NULL, NULL, NULL, NULL, 'rahim@gmail.com', '123456', NULL, NULL, NULL, NULL, 'dhaka-1326', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_histories`
--

CREATE TABLE `customer_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credit_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `debit_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_histories`
--

INSERT INTO `customer_histories` (`id`, `date`, `month`, `customer_id`, `customer_name`, `invoice_no`, `credit_amount`, `debit_amount`, `created_by`, `created_at`, `updated_at`) VALUES
(1, '2020-09-22', 'September-2020', 1, 'Rahim Mia', 'sale_71600751845', '3600', '600', 'Admin', '2020-09-21 23:17:25', '2020-09-21 23:17:25'),
(2, '2020-09-23', 'September-2020', 1, 'Rahim Mia', 'sale_71600843783', '6100', '100', 'Admin', '2020-09-23 00:49:43', '2020-09-23 00:49:43'),
(3, '2020-09-23', 'September-2020', 1, 'Rahim Mia', 'sale_61600847841', '3600', '0', 'Admin', '2020-09-23 01:57:21', '2020-09-23 01:57:21'),
(4, '2020-09-23', 'September-2020', 1, 'Rahim Mia', 'payment_91600848794', '0', '600', 'Admin', '2020-09-23 02:13:14', '2020-09-23 02:13:14'),
(5, '2020-09-23', 'September-2020', 1, 'Rahim Mia', 'payment_01600848807', '0', '600', 'Admin', '2020-09-23 02:13:27', '2020-09-23 02:13:27'),
(6, '2020-09-23', 'September-2020', 1, 'Rahim Mia', 'payment_61600848834', '0', '400', 'Admin', '2020-09-23 02:13:54', '2020-09-23 02:13:54');

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `date`, `month`, `invoice_no`, `discount_type`, `discount_amount`, `created_at`, `updated_at`) VALUES
(1, '2020-09-23', 'September-2020', 'sale_71600843783', 'flat', '20', '2020-09-23 00:49:43', '2020-09-23 00:49:43');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `incomes`
--

CREATE TABLE `incomes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `incomes`
--

INSERT INTO `incomes` (`id`, `date`, `month`, `notation`, `amount`, `created_at`, `updated_at`) VALUES
(1, '2020-09-22', 'September-2020', 'Income from  Sale', '600', '2020-09-21 23:17:25', '2020-09-21 23:17:25'),
(2, '2020-09-23', 'September-2020', 'Income from  Sale', '100', '2020-09-23 00:49:43', '2020-09-23 00:49:43'),
(3, '2020-09-23', 'September-2020', 'Income from  payment', '600', '2020-09-23 02:13:27', '2020-09-23 02:13:27'),
(4, '2020-09-23', 'September-2020', 'Income from  payment', '400', '2020-09-23 02:13:54', '2020-09-23 02:13:54');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_09_09_061405_create_nurses_table', 1),
(5, '2020_09_09_065348_create_nurse_qualifications_table', 1),
(6, '2020_09_12_051703_create_products_table', 1),
(7, '2020_09_12_051933_create_stocks_table', 1),
(8, '2020_09_12_052809_create_stock_histories_table', 1),
(9, '2020_09_12_052824_create_suppliers_table', 1),
(10, '2020_09_12_052833_create_customers_table', 1),
(11, '2020_09_12_054508_create_customer_histories_table', 1),
(12, '2020_09_12_055100_create_nurse_experiences_table', 1),
(13, '2020_09_19_041141_create_references_table', 1),
(14, '2020_09_20_055548_create_sales_masters_table', 1),
(15, '2020_09_20_055636_create_sales_invoices_table', 1),
(16, '2020_09_20_064308_create_discounts_table', 1),
(17, '2020_09_20_071011_create_incomes_table', 1),
(18, '2020_09_20_071720_create_accounts_table', 1),
(19, '2020_09_20_075459_create_account_histories_table', 1),
(20, '2020_09_22_091417_create_websettings_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `nurses`
--

CREATE TABLE `nurses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maritual_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nurses`
--

INSERT INTO `nurses` (`id`, `name`, `mobile`, `photo`, `father_name`, `mother_name`, `dob`, `maritual_status`, `gender`, `nationality`, `religion`, `permanent_address`, `present_address`, `status`, `salary`, `refer_name`, `created_at`, `updated_at`) VALUES
(1, 'Md.Ruhin Mia', '+8801717444644', '1624903074_1600845957_download (1).jpeg', 'abacd', 'mother', '2020-09-18', 'Unmarried', 'Male', 'Bangladesh', 'Islam', 'N/A', 'AnandaRoad, Mirpur-14,Dhaka-1216', '1', '34324', 'Dr Rafiqul islam', '2020-09-23 01:25:57', '2020-09-23 01:25:57'),
(2, 'Md.Ruhin Mia', '+8801717444644', '1618912098_1600846056_download (1).jpeg', 'abacd', 'mother', '2020-09-18', 'Unmarried', 'Male', 'Bangladesh', 'Islam', 'N/A', 'AnandaRoad, Mirpur-14,Dhaka-1216', '1', '34324', 'Dr Rafiqul islam', '2020-09-23 01:27:36', '2020-09-23 01:27:36'),
(3, 'Md.Ruhin Mia', '+8801717444644', '1576398672_1600846083_download (1).jpeg', 'abacd', 'mother', '2020-09-18', 'Unmarried', 'Male', 'Bangladesh', 'Islam', 'N/A', 'AnandaRoad, Mirpur-14,Dhaka-1216', '1', '34324', 'Dr Rafiqul islam', '2020-09-23 01:28:03', '2020-09-23 01:28:03'),
(4, 'Md.Ruhin Mia', '+8801717444644', '330358289_1600846145_download (1).jpeg', 'abacd', 'mother', '2020-09-18', 'Unmarried', 'Male', 'Bangladesh', 'Islam', 'N/A', 'AnandaRoad, Mirpur-14,Dhaka-1216', '1', '34324', 'Dr Rafiqul islam', '2020-09-23 01:29:05', '2020-09-23 01:29:05'),
(5, 'Md.Ruhin Mia', '+8801717444644', '1395975979_1600846182_download (1).jpeg', 'abacd', 'mother', '2020-09-18', 'Unmarried', 'Male', 'Bangladesh', 'Islam', 'N/A', 'AnandaRoad, Mirpur-14,Dhaka-1216', '1', '34324', 'Dr Rafiqul islam', '2020-09-23 01:29:42', '2020-09-23 01:29:42'),
(6, 'Md.Ruhin Mia', '+8801717444644', '1186996735_1600846206_download (1).jpeg', 'abacd', 'mother', '2020-09-18', 'Unmarried', 'Male', 'Bangladesh', 'Islam', 'N/A', 'AnandaRoad, Mirpur-14,Dhaka-1216', '1', '34324', 'Dr Rafiqul islam', '2020-09-23 01:30:06', '2020-09-23 01:30:06'),
(7, 'Md.Ruhin Mia', '01717 444644', '1010277921_1600846263_download (1).jpeg', 'abacd', 'abacd', '2020-10-03', 'Unmarried', 'Male', 'Bangladesh', 'Islam', 'N/A', 'AnandaRoad, Mirpur-14,Dhaka-1216', '1', '34324', NULL, '2020-09-23 01:31:03', '2020-09-23 01:31:03'),
(8, 'Md.Ruhin Mia', '01717 444644', '747673527_1600846283_download (1).jpeg', 'abacd', 'abacd', '2020-10-03', 'Unmarried', 'Male', 'Bangladesh', 'Islam', 'N/A', 'AnandaRoad, Mirpur-14,Dhaka-1216', '1', '34324', NULL, '2020-09-23 01:31:23', '2020-09-23 01:31:23'),
(9, 'Md.Ruhin Mia', '01717 444644', '1960412097_1600846337_download (1).jpeg', 'abacd', 'abacd', '2020-10-03', 'Unmarried', 'Male', 'Bangladesh', 'Islam', 'N/A', 'AnandaRoad, Mirpur-14,Dhaka-1216', '1', '34324', NULL, '2020-09-23 01:32:17', '2020-09-23 01:32:17'),
(10, 'Md.Ruhin Mia', '01717 444644', '1648109390_1600846355_download (1).jpeg', 'abacd', 'abacd', '2020-10-03', 'Unmarried', 'Male', 'Bangladesh', 'Islam', 'N/A', 'AnandaRoad, Mirpur-14,Dhaka-1216', '1', '34324', NULL, '2020-09-23 01:32:35', '2020-09-23 01:32:35');

-- --------------------------------------------------------

--
-- Table structure for table `nurse_experiences`
--

CREATE TABLE `nurse_experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nurse_id` int(11) NOT NULL,
  `org_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_exp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `starting_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ending_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nurse_experiences`
--

INSERT INTO `nurse_experiences` (`id`, `nurse_id`, `org_name`, `total_exp`, `starting_date`, `ending_date`, `created_at`, `updated_at`) VALUES
(1, 7, 'Xeroxsoft', '2021', '2020-09-12', '2020-09-28', '2020-09-23 01:31:03', '2020-09-23 01:31:03'),
(2, 7, 'Xeroxsoft2', '2021', '2020-09-12', '2020-09-28', '2020-09-23 01:31:03', '2020-09-23 01:31:03'),
(3, 7, 'Xeroxsoft21', '2021', '2020-09-12', '2020-09-28', '2020-09-23 01:31:03', '2020-09-23 01:31:03');

-- --------------------------------------------------------

--
-- Table structure for table `nurse_qualifications`
--

CREATE TABLE `nurse_qualifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nurse_id` int(11) NOT NULL,
  `exam_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grade` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `board` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nurse_qualifications`
--

INSERT INTO `nurse_qualifications` (`id`, `nurse_id`, `exam_name`, `group`, `year`, `grade`, `board`, `created_at`, `updated_at`) VALUES
(1, 1, 'HSC', 'Science', '2021', 'A+', 'Dhaka', '2020-09-23 01:25:57', '2020-09-23 01:25:57'),
(2, 1, 'Ssc', 'Science', '2021', 'A+', 'Dhaka', '2020-09-23 01:25:58', '2020-09-23 01:25:58'),
(3, 1, 'jsc', 'Science', '2021', 'A+', 'Dhaka', '2020-09-23 01:25:58', '2020-09-23 01:25:58'),
(4, 3, 'HSC', 'Science', '2021', 'A+', 'Dhaka', '2020-09-23 01:28:03', '2020-09-23 01:28:03'),
(5, 3, 'Ssc', 'Science', '2021', 'A+', 'Dhaka', '2020-09-23 01:28:03', '2020-09-23 01:28:03'),
(6, 3, 'jsc', 'Science', '2021', 'A+', 'Dhaka', '2020-09-23 01:28:03', '2020-09-23 01:28:03'),
(7, 4, 'HSC', 'Science', '2021', 'A+', 'Dhaka', '2020-09-23 01:29:05', '2020-09-23 01:29:05'),
(8, 4, 'Ssc', 'Science', '2021', 'A+', 'Dhaka', '2020-09-23 01:29:05', '2020-09-23 01:29:05'),
(9, 4, 'jsc', 'Science', '2021', 'A+', 'Dhaka', '2020-09-23 01:29:05', '2020-09-23 01:29:05'),
(10, 5, 'HSC', 'Science', '2021', 'A+', 'Dhaka', '2020-09-23 01:29:42', '2020-09-23 01:29:42'),
(11, 5, 'Ssc', 'Science', '2021', 'A+', 'Dhaka', '2020-09-23 01:29:42', '2020-09-23 01:29:42'),
(12, 5, 'jsc', 'Science', '2021', 'A+', 'Dhaka', '2020-09-23 01:29:42', '2020-09-23 01:29:42'),
(13, 6, 'HSC', 'Science', '2021', 'A+', 'Dhaka', '2020-09-23 01:30:07', '2020-09-23 01:30:07'),
(14, 6, 'Ssc', 'Science', '2021', 'A+', 'Dhaka', '2020-09-23 01:30:07', '2020-09-23 01:30:07'),
(15, 6, 'jsc', 'Science', '2021', 'A+', 'Dhaka', '2020-09-23 01:30:07', '2020-09-23 01:30:07'),
(16, 7, 'HSC', 'Science', '2021', 'A+', 'Dhaka', '2020-09-23 01:31:03', '2020-09-23 01:31:03'),
(17, 7, 'SSC', 'Science', '2021', 'A+', 'Dhaka', '2020-09-23 01:31:03', '2020-09-23 01:31:03'),
(18, 7, 'PSC', 'Science', '2021', 'A+', 'Dhaka', '2020-09-23 01:31:03', '2020-09-23 01:31:03');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sales_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `purchase_price`, `sales_price`, `photo`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Oxygen Cylinder', '180', '180', '313474939_1600751560_download.jpg', NULL, '2020-09-21 23:12:40', '2020-09-21 23:12:40'),
(3, 'Oxygen Refil', '1700', '1800', '905853124_1600751757_oxygen-cylinder-500x500.jpg', NULL, '2020-09-21 23:15:57', '2020-09-21 23:15:57');

-- --------------------------------------------------------

--
-- Table structure for table `references`
--

CREATE TABLE `references` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nurse_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referral_user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral_user_designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral_user_mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral_user_relation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral_user_address` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `references`
--

INSERT INTO `references` (`id`, `nurse_id`, `referral_user_name`, `referral_user_designation`, `referral_user_mobile_no`, `referral_user_relation`, `referral_user_address`, `created_at`, `updated_at`) VALUES
(1, '1', 'Dr Karim', 'Junior Software Engineer', '+8801717444644', 'Uncle', 'AnandaRoad, Mirpur-14,Dhaka-1216', '2020-09-23 01:25:57', '2020-09-23 01:25:57'),
(2, '1', 'Dr Karim', 'Junior Software Engineer', '+8801717444644', 'Uncle', 'AnandaRoad, Mirpur-14,Dhaka-1216', '2020-09-23 01:25:57', '2020-09-23 01:25:57'),
(3, '1', 'Dr Karim', 'Junior Software Engineer', '+8801717444644', 'Uncle', 'AnandaRoad, Mirpur-14,Dhaka-1216', '2020-09-23 01:25:57', '2020-09-23 01:25:57'),
(4, '2', 'Dr Karim', 'Junior Software Engineer', '+8801717444644', 'Uncle', 'AnandaRoad, Mirpur-14,Dhaka-1216', '2020-09-23 01:27:36', '2020-09-23 01:27:36'),
(5, '2', 'Dr Karim', 'Junior Software Engineer', '+8801717444644', 'Uncle', 'AnandaRoad, Mirpur-14,Dhaka-1216', '2020-09-23 01:27:37', '2020-09-23 01:27:37'),
(6, '2', 'Dr Karim', 'Junior Software Engineer', '+8801717444644', 'Uncle', 'AnandaRoad, Mirpur-14,Dhaka-1216', '2020-09-23 01:27:37', '2020-09-23 01:27:37'),
(7, '3', 'Dr Karim', 'Junior Software Engineer', '+8801717444644', 'Uncle', 'AnandaRoad, Mirpur-14,Dhaka-1216', '2020-09-23 01:28:03', '2020-09-23 01:28:03'),
(8, '3', 'Dr Karim', 'Junior Software Engineer', '+8801717444644', 'Uncle', 'AnandaRoad, Mirpur-14,Dhaka-1216', '2020-09-23 01:28:03', '2020-09-23 01:28:03'),
(9, '3', 'Dr Karim', 'Junior Software Engineer', '+8801717444644', 'Uncle', 'AnandaRoad, Mirpur-14,Dhaka-1216', '2020-09-23 01:28:03', '2020-09-23 01:28:03'),
(10, '4', 'Dr Karim', 'Junior Software Engineer', '+8801717444644', 'Uncle', 'AnandaRoad, Mirpur-14,Dhaka-1216', '2020-09-23 01:29:05', '2020-09-23 01:29:05'),
(11, '4', 'Dr Karim', 'Junior Software Engineer', '+8801717444644', 'Uncle', 'AnandaRoad, Mirpur-14,Dhaka-1216', '2020-09-23 01:29:05', '2020-09-23 01:29:05'),
(12, '4', 'Dr Karim', 'Junior Software Engineer', '+8801717444644', 'Uncle', 'AnandaRoad, Mirpur-14,Dhaka-1216', '2020-09-23 01:29:05', '2020-09-23 01:29:05'),
(13, '5', 'Dr Karim', 'Junior Software Engineer', '+8801717444644', 'Uncle', 'AnandaRoad, Mirpur-14,Dhaka-1216', '2020-09-23 01:29:42', '2020-09-23 01:29:42'),
(14, '5', 'Dr Karim', 'Junior Software Engineer', '+8801717444644', 'Uncle', 'AnandaRoad, Mirpur-14,Dhaka-1216', '2020-09-23 01:29:42', '2020-09-23 01:29:42'),
(15, '5', 'Dr Karim', 'Junior Software Engineer', '+8801717444644', 'Uncle', 'AnandaRoad, Mirpur-14,Dhaka-1216', '2020-09-23 01:29:42', '2020-09-23 01:29:42'),
(16, '6', 'Dr Karim', 'Junior Software Engineer', '+8801717444644', 'Uncle', 'AnandaRoad, Mirpur-14,Dhaka-1216', '2020-09-23 01:30:06', '2020-09-23 01:30:06'),
(17, '6', 'Dr Karim', 'Junior Software Engineer', '+8801717444644', 'Uncle', 'AnandaRoad, Mirpur-14,Dhaka-1216', '2020-09-23 01:30:06', '2020-09-23 01:30:06'),
(18, '6', 'Dr Karim', 'Junior Software Engineer', '+8801717444644', 'Uncle', 'AnandaRoad, Mirpur-14,Dhaka-1216', '2020-09-23 01:30:06', '2020-09-23 01:30:06'),
(19, '7', 'Dr Karim', 'Junior Software Engineer', '+8801717444644', 'Uncle', 'AnandaRoad, Mirpur-14,Dhaka-1216', '2020-09-23 01:31:03', '2020-09-23 01:31:03'),
(20, '7', 'Dr Karim', 'Junior Software Engineer', '+8801717444644', 'Uncle', 'AnandaRoad, Mirpur-14,Dhaka-1216', '2020-09-23 01:31:03', '2020-09-23 01:31:03'),
(21, '7', 'Dr Karim', 'Junior Software Engineer', '+8801717444644', 'Uncle', 'AnandaRoad, Mirpur-14,Dhaka-1216', '2020-09-23 01:31:03', '2020-09-23 01:31:03'),
(22, '8', 'Dr Karim', 'Junior Software Engineer', '+8801717444644', 'Uncle', 'AnandaRoad, Mirpur-14,Dhaka-1216', '2020-09-23 01:31:23', '2020-09-23 01:31:23'),
(23, '9', 'Dr Karim', 'Junior Software Engineer', '+8801717444644', 'Uncle', 'AnandaRoad, Mirpur-14,Dhaka-1216', '2020-09-23 01:32:17', '2020-09-23 01:32:17'),
(24, '10', 'Dr Karim', 'Junior Software Engineer', '+8801717444644', 'Uncle', 'AnandaRoad, Mirpur-14,Dhaka-1216', '2020-09-23 01:32:35', '2020-09-23 01:32:35'),
(25, '11', 'Dr Karim', 'Junior Software Engineer', '+8801717444644', 'Uncle', 'AnandaRoad, Mirpur-14,Dhaka-1216', '2020-09-23 01:33:22', '2020-09-23 01:33:22'),
(26, '11', 'Dr Karim', 'Junior Software Engineer', '+8801717444644', 'Uncle', 'AnandaRoad, Mirpur-14,Dhaka-1216', '2020-09-23 01:33:22', '2020-09-23 01:33:22'),
(27, '11', 'Dr Karim', 'Junior Software Engineer', '+8801717444644', 'Uncle', 'AnandaRoad, Mirpur-14,Dhaka-1216', '2020-09-23 01:33:22', '2020-09-23 01:33:22');

-- --------------------------------------------------------

--
-- Table structure for table `sales_invoices`
--

CREATE TABLE `sales_invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_qty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_invoices`
--

INSERT INTO `sales_invoices` (`id`, `date`, `month`, `invoice_no`, `product_id`, `product_name`, `product_qty`, `product_price`, `total`, `created_at`, `updated_at`) VALUES
(1, '2020-09-22', 'September-2020', 'sale_71600751845', '3', 'Oxygen Refil', '2', '1800', '3600', '2020-09-21 23:17:25', '2020-09-21 23:17:25'),
(2, '2020-09-23', 'September-2020', 'sale_71600843783', '3', 'Oxygen Refil', '3', '1800', '5400', '2020-09-23 00:49:43', '2020-09-23 00:49:43'),
(3, '2020-09-23', 'September-2020', 'sale_71600843783', '1', 'Oxygen Cylinder', '4', '180', '720', '2020-09-23 00:49:43', '2020-09-23 00:49:43'),
(4, '2020-09-23', 'September-2020', 'sale_61600847841', '3', 'Oxygen Refil', '2', '1800', '3600', '2020-09-23 01:57:21', '2020-09-23 01:57:21');

-- --------------------------------------------------------

--
-- Table structure for table `sales_masters`
--

CREATE TABLE `sales_masters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `due` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_masters`
--

INSERT INTO `sales_masters` (`id`, `date`, `month`, `invoice_no`, `customer_id`, `customer_name`, `total_amount`, `discount_amount`, `payment`, `due`, `account_id`, `account_name`, `created_at`, `updated_at`) VALUES
(1, '2020-09-22', 'September-2020', 'sale_71600751845', '1', 'Rahim Mia', '3600', '0', '600', '3000', '1', 'Bkash', '2020-09-21 23:17:25', '2020-09-21 23:17:25'),
(2, '2020-09-23', 'September-2020', 'sale_71600843783', '1', 'Rahim Mia', '6120', '20', '100', '6000', '1', 'Bkash', '2020-09-23 00:49:43', '2020-09-23 00:49:43'),
(3, '2020-09-23', 'September-2020', 'sale_61600847841', '1', 'Rahim Mia', '3600', '0', NULL, '3600', NULL, NULL, '2020-09-23 01:57:21', '2020-09-23 01:57:21');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_in_qty` int(11) DEFAULT NULL,
  `product_out_qty` int(11) DEFAULT NULL,
  `created_by` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `date`, `month`, `invoice_no`, `product_id`, `product_in_qty`, `product_out_qty`, `created_by`, `created_at`, `updated_at`) VALUES
(2, '2020-09-22', 'Sep-2020', 'opng_1600751757', 3, 100, NULL, 'Admin', '2020-09-21 23:15:57', '2020-09-21 23:15:57'),
(3, '2020-09-22', 'September-2020', 'sale_71600751845', 3, NULL, 2, 'Admin', '2020-09-21 23:17:25', '2020-09-21 23:17:25'),
(4, '2020-09-23', 'September-2020', 'sale_71600843783', 3, NULL, 3, 'Admin', '2020-09-23 00:49:43', '2020-09-23 00:49:43'),
(5, '2020-09-23', 'September-2020', 'sale_71600843783', 1, NULL, 4, 'Admin', '2020-09-23 00:49:43', '2020-09-23 00:49:43'),
(6, '2020-09-23', 'September-2020', 'sale_61600847841', 3, NULL, 2, 'Admin', '2020-09-23 01:57:21', '2020-09-23 01:57:21');

-- --------------------------------------------------------

--
-- Table structure for table `stock_histories`
--

CREATE TABLE `stock_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opening_balance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credit_limit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_term` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_alt_mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile_no`, `address`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '26262626', 'Dhaka-1216', NULL, '$2y$10$uoLMO4a7Y1LkSdULKx.fde0.Joyn8mHSMh9.dmfLOApWV249wbanm', NULL, '2020-09-21 23:01:28', '2020-09-21 23:01:28');

-- --------------------------------------------------------

--
-- Table structure for table `websettings`
--

CREATE TABLE `websettings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `org_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fav_icon` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `websettings`
--

INSERT INTO `websettings` (`id`, `org_name`, `address`, `mobile_no`, `telephone_no`, `logo`, `fav_icon`, `created_at`, `updated_at`) VALUES
(1, 'amarSheba Hospital', 'Mirpur-1,Dhaka-1216', '123456', '8899', '90146972_1600771992_favicon.ico', '477989928_1600771263_favicon.ico', NULL, '2020-09-22 04:53:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_histories`
--
ALTER TABLE `account_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_histories`
--
ALTER TABLE `customer_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `incomes`
--
ALTER TABLE `incomes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nurses`
--
ALTER TABLE `nurses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nurse_experiences`
--
ALTER TABLE `nurse_experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nurse_qualifications`
--
ALTER TABLE `nurse_qualifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `references`
--
ALTER TABLE `references`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_invoices`
--
ALTER TABLE `sales_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_masters`
--
ALTER TABLE `sales_masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_histories`
--
ALTER TABLE `stock_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `websettings`
--
ALTER TABLE `websettings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `account_histories`
--
ALTER TABLE `account_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer_histories`
--
ALTER TABLE `customer_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `incomes`
--
ALTER TABLE `incomes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `nurses`
--
ALTER TABLE `nurses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `nurse_experiences`
--
ALTER TABLE `nurse_experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nurse_qualifications`
--
ALTER TABLE `nurse_qualifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `references`
--
ALTER TABLE `references`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `sales_invoices`
--
ALTER TABLE `sales_invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sales_masters`
--
ALTER TABLE `sales_masters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `stock_histories`
--
ALTER TABLE `stock_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `websettings`
--
ALTER TABLE `websettings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
