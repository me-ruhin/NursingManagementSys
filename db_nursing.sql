-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 28, 2020 at 04:41 AM
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
(4, '2020-09-23', 'September-2020', '2', 'Bkash', '400', NULL, '2020-09-23 02:13:54', '2020-09-23 02:13:54'),
(5, '2020-09-23', 'September-2020', '1', 'Bkash', NULL, '400', '2020-09-23 07:23:16', '2020-09-23 07:23:16'),
(6, '2020-09-23', 'September-2020', '1', 'Bkash', NULL, '900', '2020-09-23 07:23:57', '2020-09-23 07:23:57'),
(7, '2020-09-23', 'September-2020', '1', 'Bkash', '900', '500', '2020-09-23 07:33:46', '2020-09-23 07:33:46'),
(8, '2020-09-23', 'September-2020', '1', 'Bkash', '400', '20', '2020-09-23 07:34:30', '2020-09-23 07:34:30'),
(9, '2020-09-23', 'September-2020', '1', 'Bkash', '500', NULL, '2020-09-23 07:37:03', '2020-09-23 07:37:03'),
(10, '2020-09-23', 'September-2020', '1', 'Bkash', '20', NULL, '2020-09-23 07:37:13', '2020-09-23 07:37:13'),
(11, '2020-09-23', 'September-2020', '1', 'Bkash', NULL, '500', '2020-09-23 07:38:47', '2020-09-23 07:38:47'),
(12, '2020-09-23', 'September-2020', '1', 'Bkash', '500', '700', '2020-09-23 07:39:10', '2020-09-23 07:39:10'),
(13, '2020-09-27', 'September-2020', '1', 'Bkash', '2000', NULL, '2020-09-27 00:47:35', '2020-09-27 00:47:35'),
(14, '2020-09-27', 'September-2020', '1', 'Bkash', '2000', NULL, '2020-09-27 00:48:00', '2020-09-27 00:48:00'),
(15, '2020-09-27', 'September-2020', '1', 'Bkash', '300', NULL, '2020-09-27 00:49:05', '2020-09-27 00:49:05'),
(16, '2020-09-27', 'September-2020', '3', 'Bkash', '500', NULL, '2020-09-27 07:08:32', '2020-09-27 07:08:32'),
(17, '2020-09-28', 'September-2020', '3', 'SBL', NULL, '500', '2020-09-27 22:03:29', '2020-09-27 22:03:29'),
(18, '2020-09-28', 'September-2020', '3', 'SBL', '500', NULL, '2020-09-27 22:03:54', '2020-09-27 22:03:54'),
(19, '2020-09-28', 'September-2020', '3', 'SBL', NULL, '500', '2020-09-27 22:04:21', '2020-09-27 22:04:21');

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
(1, 'Rahim Mia', NULL, NULL, NULL, NULL, NULL, NULL, 'rahim@gmail.com', '123456', NULL, NULL, NULL, NULL, 'Dhaka-1326', NULL, '2020-09-23 22:27:15'),
(2, 'Rrasdfdsfdsf', NULL, NULL, NULL, NULL, NULL, NULL, 'ruhinm3@gmail.com', '34324', NULL, NULL, NULL, NULL, 'AnandaRoad, Mirpur-14,Dhaka-1216', NULL, NULL);

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
(6, '2020-09-23', 'September-2020', 1, 'Rahim Mia', 'payment_61600848834', '0', '400', 'Admin', '2020-09-23 02:13:54', '2020-09-23 02:13:54'),
(7, '2020-09-24', 'September-2020', 1, 'Rahim Mia', 'sale_61600921149', '4140', '0', 'Admin', '2020-09-23 22:19:10', '2020-09-23 22:19:10');

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
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(2, 'Test2', NULL, NULL),
(4, 'Hello', '2020-09-23 06:36:30', '2020-09-23 06:36:30'),
(5, 'Test]\\', '2020-09-23 23:46:46', '2020-09-23 23:46:46');

-- --------------------------------------------------------

--
-- Table structure for table `expense_lists`
--

CREATE TABLE `expense_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expense_notation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expense_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_lists`
--

INSERT INTO `expense_lists` (`id`, `date`, `month`, `category_id`, `category_name`, `expense_notation`, `expense_amount`, `account_id`, `account_name`, `created_at`, `updated_at`) VALUES
(4, '2020-09-23', 'September-2020', '4', 'Hello', 'From Rahim Mia', '700', '1', 'Bkash', '2020-09-23 07:38:47', '2020-09-23 07:39:10'),
(6, '2020-09-28', 'September-2020', '4', 'Hello', 'From Rahim Mia', '500', '3', 'SBL', '2020-09-27 22:04:20', '2020-09-27 22:04:20');

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
(4, '2020-09-23', 'September-2020', 'Income from  payment', '400', '2020-09-23 02:13:54', '2020-09-23 02:13:54'),
(5, '2020-09-27', 'September-2020', 'Income from  Patient Payment', '2000', '2020-09-27 00:48:00', '2020-09-27 00:48:00'),
(6, '2020-09-27', 'September-2020', 'Income from  Patient Payment', '300', '2020-09-27 00:49:05', '2020-09-27 00:49:05'),
(7, '2020-09-27', 'September-2020', 'Income from  Patient Payment', '500', '2020-09-27 07:08:32', '2020-09-27 07:08:32');

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
(20, '2020_09_22_091417_create_websettings_table', 2),
(22, '2020_09_23_105750_create_expense_categories_table', 3),
(24, '2020_09_23_121915_create_expense_lists_table', 4),
(25, '2020_09_24_044255_create_nurse_salaries_table', 5),
(26, '2020_09_26_095749_create_patients_table', 6),
(27, '2020_09_26_140459_create_nurse_histories_table', 7),
(28, '2020_09_27_052955_create_patient_histories_table', 8);

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
(6, 'Md.Ruhin Mia', '+8801717444644', '1969235807_1600926153_download (1).jpeg', 'abacd', 'abacd', '2020-10-02', 'Unmarried', 'Male', 'Bangladesh', 'Islam', 'N/A', 'AnandaRoad, Mirpur-14,Dhaka-1216', '1', '15000', 'Dr Rafiqul islam', '2020-09-23 23:42:33', '2020-09-23 23:42:33');

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
(1, 67, 'Xeroxsoft', '2', '2020-09-24', '2020-09-25', '2020-09-23 23:42:33', '2020-09-23 23:42:33');

-- --------------------------------------------------------

--
-- Table structure for table `nurse_histories`
--

CREATE TABLE `nurse_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nurse_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nurse_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nurse_histories`
--

INSERT INTO `nurse_histories` (`id`, `date`, `month`, `patient_id`, `nurse_id`, `nurse_name`, `amount`, `created_at`, `updated_at`) VALUES
(1, '2020-09-27', 'September-2020', '2', '6', 'Md.Ruhin Mia', '500', '2020-09-26 22:45:09', '2020-09-26 22:45:09'),
(3, '2020-09-27', 'September-2020', '3', '6', 'Md.Ruhin Mia', '500', '2020-09-27 00:05:31', '2020-09-27 00:05:31'),
(4, '2020-09-27', 'September-2020', '1', '6', 'Md.Ruhin Mia', '500', '2020-09-27 00:50:34', '2020-09-27 00:50:34');

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
(10, 6, 'HSC', 'Science', '2021', 'A+', 'Dhaka', '2020-09-23 01:29:42', '2020-09-23 01:29:42'),
(11, 6, 'Ssc', 'Science', '2021', 'A+', 'Dhaka', '2020-09-23 01:29:42', '2020-09-23 01:29:42'),
(12, 6, 'jsc', 'Science', '2021', 'A+', 'Dhaka', '2020-09-23 01:29:42', '2020-09-23 01:29:42'),
(13, 6, 'PSC', 'Science', '2021', 'A+', 'Dhaka', '2020-09-23 23:42:33', '2020-09-23 23:42:33');

-- --------------------------------------------------------

--
-- Table structure for table `nurse_salaries`
--

CREATE TABLE `nurse_salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nurse_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nurse_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_age` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_gurdian_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_gurdian_age` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_gurdian_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_gurdian_nid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_gurdian_boc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_gurdian_passport` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_gurdian_mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_budget` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nurse_budget` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assign_nurse_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nurse_name` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `date`, `month`, `patient_name`, `patient_age`, `patient_gender`, `patient_mobile`, `patient_address`, `patient_gurdian_name`, `patient_gurdian_age`, `patient_gurdian_address`, `patient_gurdian_nid`, `patient_gurdian_boc`, `patient_gurdian_passport`, `patient_gurdian_mobile`, `total_budget`, `nurse_budget`, `assign_nurse_id`, `nurse_name`, `status`, `created_at`, `updated_at`) VALUES
(1, '2020-09-26', 'September-2020', 'Ruhin Mia', '23', 'Male', '01717 444644', 'AnandaRoad, Mirpur-14,Dhaka-1216', 'Md.Ruhin Mia', '33', 'AnandaRoad, Mirpur-14,Dhaka-1216', '23213213', NULL, '6565656', '01717 444644', '45000', '500', '6', 'Md.Ruhin Mia', '0', '2020-09-26 07:03:53', '2020-09-26 08:36:27'),
(2, '2020-09-26', 'September-2020', 'Karim Mia', '23', 'Male', '+8801717444644', 'AnandaRoad, Mirpur-14,Dhaka-1216', 'Md.Ruhin Mia', '33', 'AnandaRoad, Mirpur-14,Dhaka-1216', 'Dhaka', '017445', '6565656', '01717 444644', '500', '500', '6', 'Md.Ruhin Mia', '0', '2020-09-26 08:18:58', '2020-09-27 00:00:13'),
(3, '2020-09-27', 'September-2020', 'Abidulllah Kham', '12', 'Male', '1222', 'Dhaka', 'Badder', 'sdf', 'fsd', 'dfds', 'sdf', 'fdss', 'fsf', '5000', '500', '6', 'Md.Ruhin Mia', '0', '2020-09-26 23:41:57', '2020-09-27 00:06:28');

-- --------------------------------------------------------

--
-- Table structure for table `patient_histories`
--

CREATE TABLE `patient_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `patient_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credit_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `debit_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patient_histories`
--

INSERT INTO `patient_histories` (`id`, `date`, `month`, `patient_id`, `patient_name`, `invoice_no`, `credit_amount`, `debit_amount`, `created_by`, `created_at`, `updated_at`) VALUES
(16, '2020-09-27', 'September-2020', 2, 'Karim Mia', NULL, '500', NULL, 'Admin', '2020-09-27 00:00:13', '2020-09-27 00:00:13'),
(18, '2020-09-27', 'September-2020', 3, 'Abidulllah Kham', NULL, '5000', NULL, 'Admin', '2020-09-27 00:06:28', '2020-09-27 00:06:28'),
(22, '2020-09-27', 'September-2020', 3, 'Abidulllah Kham', NULL, '0', '300', 'Admin', '2020-09-27 00:49:05', '2020-09-27 00:49:05'),
(23, '2020-09-27', 'September-2020', 3, 'Abidulllah Kham', NULL, '0', '500', 'Admin', '2020-09-27 07:08:32', '2020-09-27 07:08:32');

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
(3, 'Oxygen Refil', '1700', '1800', '905853124_1600751757_oxygen-cylinder-500x500.jpg', NULL, '2020-09-21 23:15:57', '2020-09-21 23:15:57'),
(4, 'Test Product', '150', '180', '1155368153_1600926202_download (1).jpeg', NULL, '2020-09-23 23:43:22', '2020-09-23 23:43:22');

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
(18, '6', 'Dr Karim', 'Junior Software Engineer', '+8801717444644', 'Uncle', 'AnandaRoad, Mirpur-14,Dhaka-1216', '2020-09-23 01:30:06', '2020-09-23 01:30:06'),
(19, '7', 'Dr Karim', 'Junior Software Engineer', '+8801717444644', 'Uncle', 'AnandaRoad, Mirpur-14,Dhaka-1216', '2020-09-23 01:31:03', '2020-09-23 01:31:03'),
(20, '7', 'Dr Karim', 'Junior Software Engineer', '+8801717444644', 'Uncle', 'AnandaRoad, Mirpur-14,Dhaka-1216', '2020-09-23 01:31:03', '2020-09-23 01:31:03'),
(21, '7', 'Dr Karim', 'Junior Software Engineer', '+8801717444644', 'Uncle', 'AnandaRoad, Mirpur-14,Dhaka-1216', '2020-09-23 01:31:03', '2020-09-23 01:31:03'),
(22, '8', 'Dr Karim', 'Junior Software Engineer', '+8801717444644', 'Uncle', 'AnandaRoad, Mirpur-14,Dhaka-1216', '2020-09-23 01:31:23', '2020-09-23 01:31:23'),
(23, '9', 'Dr Karim', 'Junior Software Engineer', '+8801717444644', 'Uncle', 'AnandaRoad, Mirpur-14,Dhaka-1216', '2020-09-23 01:32:17', '2020-09-23 01:32:17'),
(24, '10', 'Dr Karim', 'Junior Software Engineer', '+8801717444644', 'Uncle', 'AnandaRoad, Mirpur-14,Dhaka-1216', '2020-09-23 01:32:35', '2020-09-23 01:32:35'),
(25, '11', 'Dr Karim', 'Junior Software Engineer', '+8801717444644', 'Uncle', 'AnandaRoad, Mirpur-14,Dhaka-1216', '2020-09-23 01:33:22', '2020-09-23 01:33:22'),
(26, '11', 'Dr Karim', 'Junior Software Engineer', '+8801717444644', 'Uncle', 'AnandaRoad, Mirpur-14,Dhaka-1216', '2020-09-23 01:33:22', '2020-09-23 01:33:22'),
(27, '11', 'Dr Karim', 'Junior Software Engineer', '+8801717444644', 'Uncle', 'AnandaRoad, Mirpur-14,Dhaka-1216', '2020-09-23 01:33:22', '2020-09-23 01:33:22'),
(28, '6', 'Dr Karim', 'Junior Software Engineer', '+8801717444644', 'Uncle', 'AnandaRoad, Mirpur-14,Dhaka-1216', '2020-09-23 23:42:33', '2020-09-23 23:42:33'),
(29, '6', 'Dr Karim', 'Junior Software Engineer', '+8801717444644', 'Uncle', 'AnandaRoad, Mirpur-14,Dhaka-1216', '2020-09-23 23:42:33', '2020-09-23 23:42:33');

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
(4, '2020-09-23', 'September-2020', 'sale_61600847841', '3', 'Oxygen Refil', '2', '1800', '3600', '2020-09-23 01:57:21', '2020-09-23 01:57:21'),
(5, '2020-09-24', 'September-2020', 'sale_61600921149', '3', 'Oxygen Refil', '02', '1800', '3600', '2020-09-23 22:19:09', '2020-09-23 22:19:09'),
(6, '2020-09-24', 'September-2020', 'sale_61600921149', '1', 'Oxygen Cylinder', '3', '180', '540', '2020-09-23 22:19:09', '2020-09-23 22:19:09');

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
(3, '2020-09-23', 'September-2020', 'sale_61600847841', '1', 'Rahim Mia', '3600', '0', NULL, '3600', NULL, NULL, '2020-09-23 01:57:21', '2020-09-23 01:57:21'),
(4, '2020-09-24', 'September-2020', 'sale_61600921149', '1', 'Rahim Mia', '4140', '0', NULL, '4140', NULL, NULL, '2020-09-23 22:19:10', '2020-09-23 22:19:10');

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
(6, '2020-09-23', 'September-2020', 'sale_61600847841', 3, NULL, 2, 'Admin', '2020-09-23 01:57:21', '2020-09-23 01:57:21'),
(7, '2020-09-24', 'September-2020', 'sale_61600921149', 3, NULL, 2, 'Admin', '2020-09-23 22:19:09', '2020-09-23 22:19:09'),
(8, '2020-09-24', 'September-2020', 'sale_61600921149', 1, NULL, 3, 'Admin', '2020-09-23 22:19:09', '2020-09-23 22:19:09'),
(9, '2020-09-24', 'Sep-2020', 'opng_1600926202', 4, 100, NULL, 'Admin', '2020-09-23 23:43:22', '2020-09-23 23:43:22'),
(10, '2020-09-24', 'Sep-2020', 'opng_1600926213', 4, 100, NULL, 'Admin', '2020-09-23 23:43:33', '2020-09-23 23:43:33'),
(11, '2020-09-24', 'Sep-2020', 'opng_1600926224', 3, 100, NULL, 'Admin', '2020-09-23 23:43:44', '2020-09-23 23:43:44'),
(12, '2020-09-24', 'Sep-2020', 'opng_1600926230', 1, 100, NULL, 'Admin', '2020-09-23 23:43:50', '2020-09-23 23:43:50');

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
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_lists`
--
ALTER TABLE `expense_lists`
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
-- Indexes for table `nurse_histories`
--
ALTER TABLE `nurse_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nurse_qualifications`
--
ALTER TABLE `nurse_qualifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nurse_salaries`
--
ALTER TABLE `nurse_salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_histories`
--
ALTER TABLE `patient_histories`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_histories`
--
ALTER TABLE `customer_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `expense_lists`
--
ALTER TABLE `expense_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `incomes`
--
ALTER TABLE `incomes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `nurses`
--
ALTER TABLE `nurses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `nurse_experiences`
--
ALTER TABLE `nurse_experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nurse_histories`
--
ALTER TABLE `nurse_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nurse_qualifications`
--
ALTER TABLE `nurse_qualifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `nurse_salaries`
--
ALTER TABLE `nurse_salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `patient_histories`
--
ALTER TABLE `patient_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `references`
--
ALTER TABLE `references`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `sales_invoices`
--
ALTER TABLE `sales_invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sales_masters`
--
ALTER TABLE `sales_masters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
