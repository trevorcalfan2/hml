-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2025 at 11:31 PM
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
-- Database: `hml`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 - deactive, 1 - active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `role_id`, `username`, `email`, `first_name`, `last_name`, `image`, `password`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'admin', 'admin@gmail.com', 'admin', 'admin', '64b893b1375a9.jpg', '$2y$10$63DYZV88ryHmfvm0mLGKNuMo21XaEFvU6aXiWiOggVY0dNkzx0DVO', 1, NULL, '2023-11-04 07:26:02'),
(10, 7, 'delivery', 'delivery@gmail.com', 'Delivery', 'Manager', '5f6c395833e14.jpg', '$2y$10$658kJ38abUEn.d46DmYhQ.wNIy9fRE2TPDrNzeMODbxDWHWOwrqRS', 1, '2020-09-24 00:14:48', '2020-09-28 11:24:32'),
(11, 8, 'kitchen', 'kitchen@gmail.com', 'Kitchen', 'Manager', '60a934a18ff49.jpg', '$2y$10$PTTKwbg5AEHm4BBVUaes1uhlx1eZKeTJzD7M5pIQjPrDmGYaVzul2', 1, '2020-09-28 11:23:39', '2021-05-23 01:43:13'),
(12, 9, 'test', 'saifislamfci@gmail.com', 'Saiful Islam', 'Sharif', '6402c0c90904c.jpg', '$2y$10$7mmLn1fWdaYUkNQY8fEwY.QB6csIcv9WpFo5zLDvYy4UFZvuqq48W', 1, '2023-03-04 03:53:45', '2023-03-04 03:53:45'),
(13, 10, 'staff', 'ric@hotmail.com', 'staff', 'staff', '654a7ae8719fd.jpg', '$2y$10$PF5AQ8KjPS2r48AcYrSHS.QKVCu1mNL1D00z91k10LEv9PZjAKnpK', 1, '2023-11-07 19:59:04', '2024-06-05 20:19:38'),
(14, 10, 'Staff2', 'admin@rinconchami.pe', 'Staff2', 'Staff2', '658dd3f30f514.jpeg', '$2y$10$KtORo7v9KnDozQPxVqXtgOjzDZuMM18z5stH16Q17A6.FgIps2sNG', 1, '2023-12-28 22:00:51', '2023-12-28 22:00:51'),
(15, 10, 'rc', 'rinconchami@hotmail.com', 'rc', 'rc', '6660ac602a003.jpg', '$2y$10$JW6xjR3x504.osORugPuKu6AjLuAn.Kwru5oNocEr0oJFbM2cXXSy', 1, '2024-06-05 20:20:16', '2024-06-05 20:20:16'),
(16, 11, 'admin2', 'admin@gmail.com', 'admin2', 'admin2', '64b893b1375a9.jpg', '$2y$10$63DYZV88ryHmfvm0mLGKNuMo21XaEFvU6aXiWiOggVY0dNkzx0DVO', 1, '2020-09-24 00:14:48', '2020-09-28 11:24:32'),
(17, 7, 'admin3', 'admin@gmail.com', 'admin3', 'admin3', '64b893b1375a9.jpg', '$2y$10$63DYZV88ryHmfvm0mLGKNuMo21XaEFvU6aXiWiOggVY0dNkzx0DVO', 1, '2020-09-24 00:14:48', '2020-09-28 11:24:32');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role`
--

CREATE TABLE `admin_role` (
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `area_id` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`area_id`, `nombre`) VALUES
(1, 'Almacenaje de Carga '),
(2, 'Atención al Cliente'),
(3, 'Carga Internacional'),
(4, 'Gestión Aduanera'),
(5, 'Gestión Comercial'),
(6, 'Gestión de la Alta Dirección'),
(7, 'Gestión de la Seguridad'),
(8, 'Gestión de Mantenimiento'),
(9, 'Gestión de Sistemas Informaticos'),
(10, 'Gestión Humana'),
(11, 'Gestión Legal'),
(12, 'Sistema Integrado de Gestión');

-- --------------------------------------------------------

--
-- Table structure for table `backups`
--

CREATE TABLE `backups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backups`
--

INSERT INTO `backups` (`id`, `filename`, `created_at`, `updated_at`) VALUES
(3, '2022-04-24-121935-dump-superv.sql', '2022-04-24 06:19:35', '2022-04-24 06:19:35'),
(4, '2023-03-29-114729-dump-superv.sql', '2023-03-29 05:47:29', '2023-03-29 05:47:29'),
(5, '2023-03-29-115159-dump-superv.sql', '2023-03-29 05:51:59', '2023-03-29 05:51:59'),
(6, '2023-03-29-115326-dump-superv.sql', '2023-03-29 05:53:26', '2023-03-29 05:53:26'),
(7, '2023-03-29-115431-dump-superv.sql', '2023-03-29 05:54:32', '2023-03-29 05:54:32'),
(8, '2023-03-29-115433-dump-superv.sql', '2023-03-29 05:54:33', '2023-03-29 05:54:33'),
(9, '2023-07-13-003250-dump-superv.sql', '2023-07-13 05:32:50', '2023-07-13 05:32:50'),
(10, '2023-07-13-003526-dump-superv.sql', '2023-07-13 05:35:26', '2023-07-13 05:35:26');

-- --------------------------------------------------------

--
-- Table structure for table `basic_extendeds`
--

CREATE TABLE `basic_extendeds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `cookie_alert_status` tinyint(4) NOT NULL DEFAULT 1,
  `cookie_alert_text` blob DEFAULT NULL,
  `cookie_alert_button_text` varchar(255) DEFAULT NULL,
  `to_mail` varchar(255) DEFAULT NULL,
  `default_language_direction` varchar(20) NOT NULL DEFAULT 'ltr' COMMENT 'ltr / rtl',
  `blogs_meta_keywords` text DEFAULT NULL,
  `blogs_meta_description` text DEFAULT NULL,
  `is_facebook_pexel` tinyint(4) NOT NULL DEFAULT 0,
  `facebook_pexel_script` text DEFAULT NULL,
  `theme_version` varchar(70) DEFAULT 'default_service_category',
  `from_mail` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `is_smtp` tinyint(4) NOT NULL DEFAULT 0,
  `smtp_host` varchar(255) DEFAULT NULL,
  `smtp_port` varchar(30) DEFAULT NULL,
  `encryption` varchar(30) DEFAULT NULL,
  `smtp_username` varchar(255) DEFAULT NULL,
  `smtp_password` varchar(255) DEFAULT NULL,
  `slider_shape_img` varchar(255) DEFAULT NULL,
  `slider_bottom_img` varchar(255) DEFAULT NULL,
  `footer_bottom_img` varchar(255) DEFAULT NULL,
  `menu_section_title` varchar(255) DEFAULT NULL,
  `menu_section_subtitle` varchar(255) DEFAULT NULL,
  `menu_section_img` varchar(50) DEFAULT NULL,
  `special_section_title` varchar(255) DEFAULT NULL,
  `special_section_subtitle` varchar(255) DEFAULT NULL,
  `testimonial_bg_img` varchar(50) DEFAULT NULL,
  `table_section_title` varchar(255) NOT NULL,
  `table_section_subtitle` varchar(255) NOT NULL,
  `table_section_img` varchar(50) DEFAULT NULL,
  `base_currency_symbol` blob DEFAULT NULL,
  `base_currency_symbol_position` varchar(10) NOT NULL DEFAULT 'left',
  `base_currency_text` varchar(100) DEFAULT NULL,
  `base_currency_text_position` varchar(10) NOT NULL DEFAULT 'right',
  `base_currency_rate` decimal(8,2) NOT NULL DEFAULT 0.00,
  `hero_bg` varchar(50) DEFAULT NULL,
  `hero_section_bold_text` varchar(255) DEFAULT NULL,
  `hero_section_bold_text_font_size` int(11) NOT NULL DEFAULT 60,
  `hero_section_bold_text_color` varchar(20) NOT NULL DEFAULT 'FFFFFF',
  `hero_section_text` varchar(255) DEFAULT NULL,
  `hero_section_text_font_size` int(11) NOT NULL DEFAULT 18,
  `hero_section_text_color` varchar(20) NOT NULL DEFAULT 'FFFFFF',
  `hero_section_button_text` varchar(30) DEFAULT NULL,
  `hero_section_button_text_font_size` int(11) NOT NULL DEFAULT 14,
  `hero_section_button_color` varchar(20) NOT NULL DEFAULT 'FFFFFF',
  `hero_section_button_url` text DEFAULT NULL,
  `hero_section_button2_text` varchar(30) DEFAULT NULL,
  `hero_section_button2_text_font_size` int(11) DEFAULT 14,
  `hero_section_button2_url` text DEFAULT NULL,
  `hero_shape_img` varchar(50) DEFAULT NULL,
  `hero_bottom_img` varchar(50) DEFAULT NULL,
  `hero_section_video_link` varchar(255) DEFAULT NULL,
  `hero_side_img` varchar(50) DEFAULT NULL,
  `faq_title` varchar(255) DEFAULT NULL,
  `career_title` varchar(255) DEFAULT NULL,
  `career_details_title` varchar(255) DEFAULT NULL,
  `special_section_bg` varchar(50) DEFAULT NULL,
  `menu_version` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 - menu with col-6, 2 - menu with col-12',
  `qrcode_url` text DEFAULT NULL,
  `qrcode_color` text DEFAULT NULL,
  `pusher_app_id` varchar(15) DEFAULT NULL,
  `pusher_app_key` varchar(30) DEFAULT NULL,
  `pusher_app_secret` varchar(30) DEFAULT NULL,
  `pusher_app_cluster` varchar(10) DEFAULT NULL,
  `is_facebook_login` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 - Active, 0 - Deactive',
  `facebook_app_id` varchar(100) DEFAULT NULL,
  `facebook_app_secret` varchar(100) DEFAULT NULL,
  `is_google_login` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 - Active, 0 - Deactive',
  `google_client_id` varchar(150) DEFAULT NULL,
  `google_client_secret` varchar(70) DEFAULT NULL,
  `timezone` varchar(125) DEFAULT 'UTC',
  `delivery_date_time_status` tinyint(4) NOT NULL DEFAULT 0,
  `delivery_date_time_required` tinyint(4) NOT NULL DEFAULT 0,
  `qr_image` varchar(100) DEFAULT NULL,
  `qr_color` varchar(50) NOT NULL DEFAULT '0',
  `qr_size` int(11) NOT NULL DEFAULT 250,
  `qr_style` varchar(50) NOT NULL DEFAULT 'square',
  `qr_eye_style` varchar(50) NOT NULL DEFAULT 'square',
  `qr_margin` int(11) NOT NULL DEFAULT 0,
  `qr_text` varchar(255) DEFAULT NULL,
  `qr_text_color` varchar(50) NOT NULL DEFAULT '000000',
  `qr_text_size` int(11) NOT NULL DEFAULT 15,
  `qr_text_x` int(11) NOT NULL DEFAULT 50,
  `qr_text_y` int(11) NOT NULL DEFAULT 50,
  `qr_inserted_image` varchar(50) DEFAULT NULL,
  `qr_inserted_image_size` int(11) NOT NULL DEFAULT 20,
  `qr_inserted_image_x` int(11) NOT NULL DEFAULT 50,
  `qr_inserted_image_y` int(11) NOT NULL DEFAULT 50,
  `qr_type` varchar(50) NOT NULL DEFAULT 'default' COMMENT 'default, image, text',
  `order_close` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 - order closed, 0 - order open',
  `order_close_message` varchar(255) NOT NULL DEFAULT 'Order is closed now!',
  `testimonial_side_img` varchar(255) DEFAULT NULL,
  `feature_section_bg_image` varchar(50) DEFAULT NULL,
  `special_section_bg_image` varchar(50) DEFAULT NULL,
  `footer_section_bg_image` varchar(50) DEFAULT NULL,
  `hero_section_button_two_color` varchar(20) DEFAULT NULL,
  `hero_section_author_name` varchar(30) DEFAULT NULL,
  `hero_section_author_image` varchar(50) DEFAULT NULL,
  `hero_section_author_designation` varchar(30) DEFAULT NULL,
  `intro_bg_image` varchar(50) DEFAULT NULL,
  `testimonial_section_top_shape_image` varchar(50) DEFAULT NULL,
  `testimonial_section_bottom_shape_image` varchar(50) DEFAULT NULL,
  `blog_section_bg_image` varchar(50) DEFAULT NULL,
  `hero_section_water_shape_text` varchar(255) DEFAULT NULL,
  `hero_section_water_shape_text_font_size` int(11) DEFAULT NULL,
  `hero_section_water_shape_text_color` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `basic_extendeds`
--

INSERT INTO `basic_extendeds` (`id`, `language_id`, `cookie_alert_status`, `cookie_alert_text`, `cookie_alert_button_text`, `to_mail`, `default_language_direction`, `blogs_meta_keywords`, `blogs_meta_description`, `is_facebook_pexel`, `facebook_pexel_script`, `theme_version`, `from_mail`, `from_name`, `is_smtp`, `smtp_host`, `smtp_port`, `encryption`, `smtp_username`, `smtp_password`, `slider_shape_img`, `slider_bottom_img`, `footer_bottom_img`, `menu_section_title`, `menu_section_subtitle`, `menu_section_img`, `special_section_title`, `special_section_subtitle`, `testimonial_bg_img`, `table_section_title`, `table_section_subtitle`, `table_section_img`, `base_currency_symbol`, `base_currency_symbol_position`, `base_currency_text`, `base_currency_text_position`, `base_currency_rate`, `hero_bg`, `hero_section_bold_text`, `hero_section_bold_text_font_size`, `hero_section_bold_text_color`, `hero_section_text`, `hero_section_text_font_size`, `hero_section_text_color`, `hero_section_button_text`, `hero_section_button_text_font_size`, `hero_section_button_color`, `hero_section_button_url`, `hero_section_button2_text`, `hero_section_button2_text_font_size`, `hero_section_button2_url`, `hero_shape_img`, `hero_bottom_img`, `hero_section_video_link`, `hero_side_img`, `faq_title`, `career_title`, `career_details_title`, `special_section_bg`, `menu_version`, `qrcode_url`, `qrcode_color`, `pusher_app_id`, `pusher_app_key`, `pusher_app_secret`, `pusher_app_cluster`, `is_facebook_login`, `facebook_app_id`, `facebook_app_secret`, `is_google_login`, `google_client_id`, `google_client_secret`, `timezone`, `delivery_date_time_status`, `delivery_date_time_required`, `qr_image`, `qr_color`, `qr_size`, `qr_style`, `qr_eye_style`, `qr_margin`, `qr_text`, `qr_text_color`, `qr_text_size`, `qr_text_x`, `qr_text_y`, `qr_inserted_image`, `qr_inserted_image_size`, `qr_inserted_image_x`, `qr_inserted_image_y`, `qr_type`, `order_close`, `order_close_message`, `testimonial_side_img`, `feature_section_bg_image`, `special_section_bg_image`, `footer_section_bg_image`, `hero_section_button_two_color`, `hero_section_author_name`, `hero_section_author_image`, `hero_section_author_designation`, `intro_bg_image`, `testimonial_section_top_shape_image`, `testimonial_section_bottom_shape_image`, `blog_section_bg_image`, `hero_section_water_shape_text`, `hero_section_water_shape_text_font_size`, `hero_section_water_shape_text_color`) VALUES
(150, 179, 1, 0x3c6469763e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c3b223e5574696c697a616d6f7320636f6f6b6965732070726f706961732079206465207465726365726f732070617261206f6274656e6572206461746f73206573746164c3ad737469636f73206465206c61206e61766567616369c3b36e206465206e75657374726f73207573756172696f732079206d656a6f726172206e75657374726f7320736572766963696f732e203c2f7370616e3e3c2f6469763e3c6469763e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c3b223e536920616365707461206f20636f6e74696ec3ba61206e61766567616e646f2c20636f6e7369646572616d6f7320717565206163657074612073752075736f2ec2a05075656465206f6274656e6572206dc3a17320696e666f726d616369c3b36ec2a03c2f7370616e3e3c7370616e207374796c653d226261636b67726f756e642d636f6c6f723a726762283235352c3235352c323535293b223e3c6120687265663d2268747470733a2f2f72696e636f6e6368616d692e70652f636f6f6b6965732d706f6c6963792f31312f70616765223e617175c3ad3c2f613e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c3b666f6e742d73697a653a313770783b223e2e3c2f7370616e3e3c2f7370616e3e3c2f6469763e, 'Permitir Cookies', 'rinconchami@hotmail.com', 'ltr', 'lorem, dolor', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 1, '<!-- Facebook Pixel Code -->\r\n<script>\r\n!function(f,b,e,v,n,t,s)\r\n{if(f.fbq)return;n=f.fbq=function(){n.callMethod?\r\nn.callMethod.apply(n,arguments):n.queue.push(arguments)};\r\nif(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version=\'2.0\';\r\nn.queue=[];t=b.createElement(e);t.async=!0;\r\nt.src=v;s=b.getElementsByTagName(e)[0];\r\ns.parentNode.insertBefore(t,s)}(window, document,\'script\',\r\n\'https://connect.facebook.net/en_US/fbevents.js\');\r\nfbq(\'init\', \'2723323421236702\');\r\nfbq(\'track\', \'PageView\');\r\n</script>\r\n<noscript><img height=\"1\" width=\"1\" style=\"display:none\"\r\nsrc=\"https://www.facebook.com/tr?id=2723323421236702&ev=PageView&noscript=1\"\r\n/></noscript>\r\n<!-- End Facebook Pixel Code -->', 'default_service_category', 'admin@rinconchami.pe', 'Administracion', 1, 'smtpout.secureserver.net', '587', 'TLS', 'admin@rinconchami.pe', 'z$5ru94Xng', NULL, NULL, NULL, '\"La auténtica receta del Rincón Chami\"', NULL, '1687222739.jpg', 'Our Special Offered Items Price', 'VIEW ALL MENU LIST', '64ba036a70573.jpg', 'Reservación', 'Reserva tu Mesa', '1683098625.png', 0x532f2e, 'left', 'PEN', 'right', 1.00, '651cfeecf3b61.jpg', 'Lomo Saltado', 60, 'FFFFFF', 'suculento plato fuerte, salteado de lomo fino, cebolla, tomate, cilantro acompañado de arroz y papas fritas y el secreto de la casa desde hace 50 años, no hay otro igual.', 18, 'FFFFFF', 'Ver mas platos', 18, '000000', 'https://codecanyon8.kreativdev.com/superv/menus', 'Pedir Ahora', 14, 'https://codecanyon8.kreativdev.com/superv/reservation/form', NULL, NULL, 'https://www.youtube.com/watch?v=ZDQn-9cdx9Q', '64ac4656bd624.png', 'F.A.Q.', 'Career', 'Job Details', '1600010997.jpg', 2, 'https://codecanyon.kreativdev.com/superv/qr-menu', '3851FF', '1080494', 'bd457a6ed0c247922b06', '019547a8751eec9b83af', 'ap2', 0, '188100859706337', '73dc84a95f12657de1b1ebaa6cc7ba94', 1, '81856165251-cd0s41jcep43b3a33i3rc7pnp3jdvo0p.apps.googleusercontent.com', 'nLCYVG30u-bVIvhzSg-z52pi', 'America/Bogota', 1, 1, '64ae48bd2cb2f.png', '18173D', 297, 'square', 'square', 1, 'Kreativ', '114C05', 14, 50, 50, '60a92611aca0a.png', 7, 50, 50, 'image', 0, 'Order is closed now!', '1680940275.png', '6432711301a4f.jpg', '6432710879569.jpg', '64adf53bf223a.jpeg', 'D3A971', 'Hames Rodrigo', '642916deb895f.jpg', 'Founder & Ceo', '6412f4bbf028b.png', '1678963129.png', '1678948560.png', '641a9269c1419.png', 'Orange juccice', 50, 'FFD854');

-- --------------------------------------------------------

--
-- Table structure for table `basic_extras`
--

CREATE TABLE `basic_extras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `whatsapp_order_status_notification` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 - disable, 1 - enable',
  `whatsapp_home_delivery` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 - enabled, 1 - disabled',
  `whatsapp_pickup` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 - enabled, 1 - disabled',
  `whatsapp_on_table` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 - enabled, 1 - disabled',
  `twilio_sid` varchar(100) DEFAULT NULL,
  `twilio_token` varchar(100) DEFAULT NULL,
  `twilio_phone_number` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `basic_extras`
--

INSERT INTO `basic_extras` (`id`, `whatsapp_order_status_notification`, `whatsapp_home_delivery`, `whatsapp_pickup`, `whatsapp_on_table`, `twilio_sid`, `twilio_token`, `twilio_phone_number`) VALUES
(1, 1, 1, 1, 0, 'AC87db7baafc84b106f2d59eee812b8f7e', '8a938c87f06427109910fde8a5794b5f', '+14155238886');

-- --------------------------------------------------------

--
-- Table structure for table `basic_settings`
--

CREATE TABLE `basic_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `favicon` varchar(50) DEFAULT NULL,
  `logo` varchar(50) DEFAULT NULL,
  `preloader_status` tinyint(4) NOT NULL COMMENT '0 - deactive, 1 - active',
  `preloader` varchar(50) DEFAULT NULL,
  `website_title` varchar(255) DEFAULT NULL,
  `base_color` varchar(30) DEFAULT NULL,
  `secondary_base_color` varchar(20) DEFAULT NULL,
  `support_email` varchar(100) DEFAULT NULL,
  `support_phone` varchar(30) DEFAULT NULL,
  `breadcrumb` varchar(50) DEFAULT NULL,
  `footer_logo` varchar(50) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `newsletter_text` varchar(255) DEFAULT NULL,
  `copyright_text` blob DEFAULT NULL,
  `intro_section_title` varchar(50) DEFAULT NULL,
  `intro_title` varchar(255) DEFAULT NULL,
  `intro_text` text DEFAULT NULL,
  `intro_contact_text` varchar(255) DEFAULT NULL,
  `intro_contact_number` varchar(255) DEFAULT NULL,
  `intro_video_image` varchar(191) DEFAULT NULL,
  `intro_signature` varchar(191) DEFAULT NULL,
  `intro_video_link` varchar(191) DEFAULT NULL,
  `intro_main_image` varchar(191) DEFAULT NULL,
  `team_section_title` varchar(255) DEFAULT NULL,
  `team_section_subtitle` varchar(255) DEFAULT NULL,
  `contact_form_title` varchar(255) DEFAULT NULL,
  `contact_address` text DEFAULT NULL,
  `contact_number` text DEFAULT NULL,
  `contact_mails` text DEFAULT NULL,
  `contact_text` varchar(255) DEFAULT NULL,
  `latitude` varchar(191) DEFAULT NULL,
  `longitude` varchar(191) DEFAULT NULL,
  `map_zoom` int(11) NOT NULL DEFAULT 10,
  `contact_info_title` varchar(191) DEFAULT NULL,
  `tawk_to_script` text DEFAULT NULL,
  `google_analytics_script` text DEFAULT NULL,
  `is_recaptcha` tinyint(4) NOT NULL DEFAULT 0,
  `google_recaptcha_site_key` varchar(255) DEFAULT NULL,
  `google_recaptcha_secret_key` varchar(255) DEFAULT NULL,
  `is_tawkto` tinyint(4) NOT NULL DEFAULT 1,
  `is_disqus` tinyint(4) NOT NULL DEFAULT 1,
  `disqus_script` text DEFAULT NULL,
  `is_analytics` tinyint(4) NOT NULL DEFAULT 1,
  `maintenance_mode` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 - active, 0 - deactive',
  `maintenance_text` text DEFAULT NULL,
  `ips` text DEFAULT NULL,
  `testimonial_title` varchar(255) DEFAULT NULL,
  `blog_section_title` varchar(255) DEFAULT NULL,
  `blog_section_subtitle` varchar(191) DEFAULT NULL,
  `blog_title` varchar(255) DEFAULT NULL,
  `blog_details_title` varchar(255) DEFAULT NULL,
  `gallery_title` varchar(255) DEFAULT NULL,
  `team_title` varchar(255) DEFAULT NULL,
  `contact_title` varchar(255) DEFAULT NULL,
  `menu_title` varchar(191) DEFAULT NULL,
  `reservation_title` varchar(191) DEFAULT NULL,
  `items_title` varchar(191) DEFAULT NULL,
  `menu_details_title` varchar(191) DEFAULT NULL,
  `cart_title` varchar(191) DEFAULT NULL,
  `checkout_title` varchar(191) DEFAULT NULL,
  `error_title` varchar(255) DEFAULT NULL,
  `home_version` varchar(30) DEFAULT NULL,
  `feature_section` tinyint(4) NOT NULL DEFAULT 1,
  `intro_section` tinyint(4) NOT NULL DEFAULT 1,
  `testimonial_section` tinyint(4) NOT NULL DEFAULT 1,
  `team_section` tinyint(4) NOT NULL DEFAULT 1,
  `news_section` tinyint(4) NOT NULL DEFAULT 1,
  `menu_section` int(11) NOT NULL DEFAULT 1,
  `special_section` int(11) NOT NULL DEFAULT 1,
  `instagram_section` int(11) NOT NULL DEFAULT 1,
  `table_section` int(11) NOT NULL DEFAULT 1,
  `top_footer_section` tinyint(4) NOT NULL DEFAULT 1,
  `copyright_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_quote` tinyint(4) NOT NULL DEFAULT 1,
  `office_time` varchar(255) DEFAULT NULL,
  `is_appzi` tinyint(4) NOT NULL DEFAULT 0,
  `appzi_script` text DEFAULT NULL,
  `is_addthis` tinyint(4) NOT NULL DEFAULT 0,
  `addthis_script` text DEFAULT NULL,
  `token_no_start` int(11) NOT NULL DEFAULT 1,
  `token_no` int(11) NOT NULL DEFAULT 0,
  `postal_code` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 - enabled, 0 - disabled',
  `qr_call_waiter` tinyint(4) NOT NULL DEFAULT 1,
  `website_call_waiter` tinyint(4) NOT NULL DEFAULT 1,
  `is_whatsapp` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 - enable, 0 - disable',
  `whatsapp_number` varchar(255) DEFAULT NULL,
  `whatsapp_header_title` varchar(255) NOT NULL DEFAULT 'Chat with us on WhatsApp!',
  `whatsapp_popup_message` text DEFAULT NULL,
  `whatsapp_popup` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 - enable, 0 - disable',
  `feature_title` text DEFAULT NULL,
  `testimonial_section_text` text DEFAULT NULL,
  `category_section_title` varchar(255) DEFAULT NULL,
  `intro_section_button_url` text DEFAULT NULL,
  `intro_section_button_text` varchar(50) DEFAULT NULL,
  `intro_section_video_button_url` text DEFAULT NULL,
  `intro_section_video_button_text` varchar(100) DEFAULT NULL,
  `intro_section_video_button_title` varchar(100) DEFAULT NULL,
  `intro_section_highlight_text` text DEFAULT NULL,
  `intro_section_bg_image` varchar(50) DEFAULT NULL,
  `intro_section_author_image` varchar(50) DEFAULT NULL,
  `intro_section_author_name` varchar(30) DEFAULT NULL,
  `intro_section_author_designation` varchar(50) DEFAULT NULL,
  `intro_section_top_shape_image` varchar(50) DEFAULT NULL,
  `intro_section_bottom_shape_image` varchar(50) DEFAULT NULL,
  `features_section_bg_color` varchar(30) DEFAULT NULL,
  `features_section_top_shape_image` varchar(50) DEFAULT NULL,
  `features_section_bottom_shape_image` varchar(50) DEFAULT NULL,
  `theme` varchar(50) NOT NULL DEFAULT 'multipurpose'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `basic_settings`
--

INSERT INTO `basic_settings` (`id`, `language_id`, `favicon`, `logo`, `preloader_status`, `preloader`, `website_title`, `base_color`, `secondary_base_color`, `support_email`, `support_phone`, `breadcrumb`, `footer_logo`, `footer_text`, `newsletter_text`, `copyright_text`, `intro_section_title`, `intro_title`, `intro_text`, `intro_contact_text`, `intro_contact_number`, `intro_video_image`, `intro_signature`, `intro_video_link`, `intro_main_image`, `team_section_title`, `team_section_subtitle`, `contact_form_title`, `contact_address`, `contact_number`, `contact_mails`, `contact_text`, `latitude`, `longitude`, `map_zoom`, `contact_info_title`, `tawk_to_script`, `google_analytics_script`, `is_recaptcha`, `google_recaptcha_site_key`, `google_recaptcha_secret_key`, `is_tawkto`, `is_disqus`, `disqus_script`, `is_analytics`, `maintenance_mode`, `maintenance_text`, `ips`, `testimonial_title`, `blog_section_title`, `blog_section_subtitle`, `blog_title`, `blog_details_title`, `gallery_title`, `team_title`, `contact_title`, `menu_title`, `reservation_title`, `items_title`, `menu_details_title`, `cart_title`, `checkout_title`, `error_title`, `home_version`, `feature_section`, `intro_section`, `testimonial_section`, `team_section`, `news_section`, `menu_section`, `special_section`, `instagram_section`, `table_section`, `top_footer_section`, `copyright_section`, `is_quote`, `office_time`, `is_appzi`, `appzi_script`, `is_addthis`, `addthis_script`, `token_no_start`, `token_no`, `postal_code`, `qr_call_waiter`, `website_call_waiter`, `is_whatsapp`, `whatsapp_number`, `whatsapp_header_title`, `whatsapp_popup_message`, `whatsapp_popup`, `feature_title`, `testimonial_section_text`, `category_section_title`, `intro_section_button_url`, `intro_section_button_text`, `intro_section_video_button_url`, `intro_section_video_button_text`, `intro_section_video_button_title`, `intro_section_highlight_text`, `intro_section_bg_image`, `intro_section_author_image`, `intro_section_author_name`, `intro_section_author_designation`, `intro_section_top_shape_image`, `intro_section_bottom_shape_image`, `features_section_bg_color`, `features_section_top_shape_image`, `features_section_bottom_shape_image`, `theme`) VALUES
(156, 179, '651b6d9a40cb0.png', '651b6d58b2cbd.png', 1, '651b6bcf5bd72.png', 'Rincon Chami', 'FF6000', '0A3041', 'yi@hotmail.com', '(01) 4444511', '64b73c9c4eb5c.jpg', '651b6e10e7c94.png', '54 años sazonando generaciones.', 'Subscribe to gate Latest News, Offer and connect With Us.', 0x436f7079726967687420c2a920323032332e20546f646f73206c6f73206465726563686f732072657365727661646f732052696e636f6e204368616d6920532e522e4c2ec2a0207769746820e29da4efb88f204069736f6d65747269635f73, 'Our Story', 'RESTAURANTES CRIOLLOS ATENDIENDO DESDE HACE 54 AÑOS', 'Durante generaciones hemos satisfecho los paladares mas exigentes  con los mejores platos insignia de nuestro querido Perú.', 'Our 24/7 Phone Services', '555 666 999 00', '64607433ed3e4.jpg', '5f5b0ee606923.png', '', '64bf360a310cf.jpg', 'Our Team', 'Our Expert Members', 'Deja tus datos y nos pondremos en contacto', 'Calle Esperanza 154 - Miraflores |\r\nAv. Alfredo Benavides 2360 - Miraflores', '(01) 4444511,WhatsApp: 931 278 037', 'admin@rinconchami.pe', 'Tambien puedes acercarte a nuestros locales', '-12.120251384596678', '-77.02806355899732', 0, 'Información', '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5f5e445f4704467e89ee918d/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', '<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-137437974-2\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'UA-137437974-2\');\r\n</script>', 1, '6LckEBInAAAAAE2tipGbvMvekNMyeaB81gstqTGk', '6LckEBInAAAAAOdlmnVyBe-XudDwK4wh9343Qbgl', 0, 0, '<script>\r\n    /**\r\n    *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.\r\n    *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables    */\r\n    /*\r\n    var disqus_config = function () {\r\n    this.page.url = PAGE_URL;  // Replace PAGE_URL with your page\'s canonical URL variable\r\n    this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page\'s unique identifier variable\r\n    };\r\n    */\r\n    (function() { // DON\'T EDIT BELOW THIS LINE\r\n    var d = document, s = d.createElement(\'script\');\r\n    s.src = \'https://superv-1.disqus.com/embed.js\';\r\n    s.setAttribute(\'data-timestamp\', +new Date());\r\n    (d.head || d.body).appendChild(s);\r\n    })();\r\n</script>', 0, 0, 'El sitio se encuentra en mantenimiento, vuelve luego :)', 'check', 'Que dicen nuestros clientes', 'Novedades', 'Latest News Feeds', 'Blog', 'Detalles Blog', 'Galeria', 'Nuestro equipo', 'Contáctanos', 'La Carta', 'Reservación', 'Delivery Online', 'Detalles', 'Carrito', 'CheckOut', '404 Te perdiste!', 'video', 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 'Lunes a Domingo de  9AM - 11 PM', 0, '<!-- Appzi: Capture Insightful Feedback -->\r\n<script async src=\"https://w.appzi.io/w.js?token=p5cpm\"></script>\r\n<!-- End Appzi -->', 0, '<!-- Go to www.addthis.com/dashboard to customize your tools -->\r\n<script type=\"text/javascript\" src=\"//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5e74e0cf10c08cfa\"></script>', 1, 183, 0, 0, 0, 1, '+51931278037', 'Escribenos por WhatsApp!', NULL, 1, 'Nuestros Principales platos Criollos y Marinos', 'ssffffffffffffffff', 'Discover Your Favorite Bakery And Pastry Foods', '', '', NULL, '', 'fff', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', NULL, '640efc12b3d40.jpg', 'dfdff test', 'sdfdd test', '64313d1503aa7.png', '641ea69a4b116.png', '62401A', '64ae167458c2d.jpg', '64ae1acd66bd4.png', 'coffee');

-- --------------------------------------------------------

--
-- Table structure for table `bcategories`
--

CREATE TABLE `bcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `serial_number` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bcategories`
--

INSERT INTO `bcategories` (`id`, `language_id`, `name`, `status`, `serial_number`) VALUES
(13, 179, 'DIAS FESTIVOS', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `bcategory_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `main_image` varchar(255) DEFAULT NULL,
  `content` blob DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `language_id`, `bcategory_id`, `title`, `slug`, `main_image`, `content`, `tags`, `meta_keywords`, `meta_description`, `serial_number`, `created_at`, `updated_at`) VALUES
(75, 179, 13, 'Dia de la Cancion Criolla', 'Dia-de-la-Cancion-Criolla', '1689226106.png', 0x3c703e3c7370616e207374796c653d22636f6c6f723a7267622833322c33332c3334293b666f6e742d66616d696c793a73616e732d73657269663b223e4c612063656c656272616369c3b36e206675652065737461626c65636964612c20706f72207265736f6c756369c3b36e2073757072656d612064656c203138206465206f63747562726520646520313934342c2070617261207365722063656c65627261646120656cc2a03c2f7370616e3e3c6120687265663d2268747470733a2f2f65732e77696b6970656469612e6f72672f77696b692f33315f64655f6f63747562726522207469746c653d223331206465206f637475627265223e3331206465206f6374756272653c2f613e3c7370616e207374796c653d22636f6c6f723a7267622833322c33332c3334293b666f6e742d66616d696c793a73616e732d73657269663b223ec2a0646520636164612061c3b16f2c3c2f7370616e3e3c6120687265663d2268747470733a2f2f65732e77696b6970656469612e6f72672f77696b692f44254333254144615f64655f6c615f43616e63692543332542336e5f4372696f6c6c6123636974655f6e6f74652d31223e313c2f613e3c7370616e207374796c653d22636f6c6f723a7267622833322c33332c3334293b666f6e742d66616d696c793a73616e732d73657269663b223ee2808b3c2f7370616e3e3c6120687265663d2268747470733a2f2f65732e77696b6970656469612e6f72672f77696b692f44254333254144615f64655f6c615f43616e63692543332542336e5f4372696f6c6c6123636974655f6e6f74652d32223e323c2f613e3c7370616e207374796c653d22636f6c6f723a7267622833322c33332c3334293b666f6e742d66616d696c793a73616e732d73657269663b223ee2808b20646520666f726d612071756520636f696e6369646965726120636f6e206c6120666573746976696461642064656cc2a03c2f7370616e3e3c6120687265663d2268747470733a2f2f65732e77696b6970656469612e6f72672f77696b692f53652543332542316f725f64655f6c6f735f4d696c6167726f735f284c696d612922207469746c653d225365c3b16f72206465206c6f73204d696c6167726f7320284c696d6129223e5365c3b16f72206465206c6f73204d696c6167726f733c2f613e3c7370616e207374796c653d22636f6c6f723a7267622833322c33332c3334293b666f6e742d66616d696c793a73616e732d73657269663b223e2e3c2f7370616e3e3c6120687265663d2268747470733a2f2f65732e77696b6970656469612e6f72672f77696b692f44254333254144615f64655f6c615f43616e63692543332542336e5f4372696f6c6c6123636974655f6e6f74652d3a302d33223e333c2f613e3c7370616e207374796c653d22636f6c6f723a7267622833322c33332c3334293b666f6e742d66616d696c793a73616e732d73657269663b223ee2808b204c61206d69736d61206675652070726f6d756c6761646120706f7220656cc2a03c2f7370616e3e3c6120687265663d2268747470733a2f2f65732e77696b6970656469612e6f72672f77696b692f5072696d65725f676f626965726e6f5f64655f4d616e75656c5f507261646f5f55676172746563686522207469746c653d225072696d657220676f626965726e6f206465204d616e75656c20507261646f20556761727465636865223e707265736964656e74653c2f613e3c7370616e207374796c653d22636f6c6f723a7267622833322c33332c3334293b666f6e742d66616d696c793a73616e732d73657269663b223ec2a03c2f7370616e3e3c6120687265663d2268747470733a2f2f65732e77696b6970656469612e6f72672f77696b692f4d616e75656c5f507261646f5f55676172746563686522207469746c653d224d616e75656c20507261646f20556761727465636865223e4d616e75656c20507261646f205567617274656368653c2f613e3c7370616e207374796c653d22636f6c6f723a7267622833322c33332c3334293b666f6e742d66616d696c793a73616e732d73657269663b223ec2a07920656cc2a03c2f7370616e3e3c6120687265663d2268747470733a2f2f65732e77696b6970656469612e6f72672f77696b692f4d696e697374726f5f64655f456475636163692543332542336e5f64656c5f50657225433325424122207469746c653d224d696e697374726f2064652045647563616369c3b36e2064656c20506572c3ba223e4d696e697374726f2064652045647563616369c3b36e3c2f613e3c7370616e207374796c653d22636f6c6f723a7267622833322c33332c3334293b666f6e742d66616d696c793a73616e732d73657269663b223ec2a03c2f7370616e3e3c6120687265663d2268747470733a2f2f65732e77696b6970656469612e6f72672f77696b692f506564726f5f4d2e5f4f6c69766569726122207469746c653d22506564726f204d2e204f6c697665697261223e506564726f204d2e204f6c6976656972613c2f613e3c7370616e207374796c653d22636f6c6f723a7267622833322c33332c3334293b666f6e742d66616d696c793a73616e732d73657269663b223e2e3c2f7370616e3e3c6120687265663d2268747470733a2f2f65732e77696b6970656469612e6f72672f77696b692f44254333254144615f64655f6c615f43616e63692543332542336e5f4372696f6c6c6123636974655f6e6f74652d34223e343c2f613e3c7370616e207374796c653d22636f6c6f723a7267622833322c33332c3334293b666f6e742d66616d696c793a73616e732d73657269663b223ee2808b3c2f7370616e3e3c6120687265663d2268747470733a2f2f65732e77696b6970656469612e6f72672f77696b692f44254333254144615f64655f6c615f43616e63692543332542336e5f4372696f6c6c6123636974655f6e6f74652d35223e353c2f613e3c7370616e207374796c653d22636f6c6f723a7267622833322c33332c3334293b666f6e742d66616d696c793a73616e732d73657269663b223ee2808b204164656dc3a173206675652070726f6d6f7669646120706f72204361726c6f7320412e205361636f2c20717569656e20667565206469726563746f722064656c2064696172696fc2a03c2f7370616e3e3c693e3c6120687265663d2268747470733a2f2f65732e77696b6970656469612e6f72672f77696b692f456c5f436f6d657263696f5f285065722543332542412922207469746c653d22456c20436f6d657263696f2028506572c3ba29223e456c20436f6d657263696f3c2f613e3c2f693e3c7370616e207374796c653d22636f6c6f723a7267622833322c33332c3334293b666f6e742d66616d696c793a73616e732d73657269663b223e2e3c2f7370616e3e3c693e3c6120687265663d2268747470733a2f2f65732e77696b6970656469612e6f72672f77696b692f44254333254144615f64655f6c615f43616e63692543332542336e5f4372696f6c6c6123636974655f6e6f74652d3a33322d36223e363c2f613ee2808b3c2f693e3c62723e3c2f703e, NULL, NULL, NULL, 1, '2023-07-13 05:28:28', '2023-07-15 04:56:35');

-- --------------------------------------------------------

--
-- Table structure for table `bottomlinks`
--

CREATE TABLE `bottomlinks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bottomlinks`
--

INSERT INTO `bottomlinks` (`id`, `language_id`, `name`, `url`, `created_at`, `updated_at`) VALUES
(11, 169, 'Career', 'https://megasoft.biz/plusagency/services?category=9', NULL, NULL),
(12, 169, 'Terms of service', 'https://megasoft.biz/plusagency/services?category=9', NULL, NULL),
(13, 169, 'Refund policy', 'https://megasoft.biz/plusagency/services?category=9', NULL, NULL),
(14, 176, 'Privacy Policy', 'https://codecanyon.megasoft.biz/superv/Privacy-Policy/4/page', NULL, NULL),
(15, 176, 'Terms & Conditions', 'https://codecanyon.megasoft.biz/superv/Terms-&-Conditions/3/page', NULL, NULL),
(16, 176, 'About', 'https://codecanyon.megasoft.biz/superv/About-Us/1/page', NULL, NULL),
(17, 177, 'link 1', 'https://megasoft.biz/alphasoft/', NULL, NULL),
(18, 177, 'link 2', 'https://megasoft.biz/alphasoft/', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT 'percentage, fixed',
  `value` decimal(11,2) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `minimum_spend` decimal(11,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `code`, `type`, `value`, `start_date`, `end_date`, `minimum_spend`, `created_at`, `updated_at`) VALUES
(2, 'KHABO60', 'KHABO60', 'fixed', 60.00, '12/24/2020', '12/30/2020', 180.00, '2020-12-23 02:23:36', '2020-12-23 02:23:36'),
(3, 'Victory Day', 'BIJOY16', 'percentage', 16.00, '12/16/2020', '01/07/2021', 10.00, '2020-12-23 02:32:55', '2020-12-24 04:54:59'),
(4, 'Special', 'Special14', 'percentage', 14.00, '12/29/2020', '01/09/2021', 400.00, '2020-12-23 03:54:07', '2020-12-24 08:54:42'),
(5, 'Shop Manager', '123456789', 'percentage', 10.00, '04/01/2023', '05/31/2023', 1.00, '2023-05-04 04:33:42', '2023-05-04 04:33:42');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(15, 'qweqwe', 'trevorcalfan2@gmail.com', '946896855', NULL, '2023-07-22 04:52:41', '2023-07-22 05:02:29'),
(28, 'ewtwet', 'werwer@qwerwewe', '233333', NULL, '2023-07-31 15:50:34', '2023-07-31 15:50:34'),
(29, 'qwqqwd', 'qwrqwr@qwqwr', '588545', NULL, '2023-07-31 15:51:36', '2023-07-31 15:51:36'),
(30, 'kjjbhkbjkjbk', 'kjnjjnnv@lsklmdklmw', '39892389232', NULL, '2023-12-02 03:57:41', '2023-12-02 03:57:41'),
(31, 'wqeqwe', 'qweqw@wqwe', '3414134', NULL, '2023-12-02 05:55:28', '2023-12-02 05:55:28'),
(32, 'wqeqwe', 'qweqw@wqwe', '34141343333', NULL, '2023-12-02 06:39:05', '2023-12-02 06:39:05'),
(33, 'efqe', '32434234@qwq', '232343', NULL, '2023-12-02 06:42:02', '2023-12-02 06:42:02'),
(34, 'qwrqwr', 'wqrqrwqw@qwrqwr', '33333', NULL, '2023-12-02 06:42:47', '2023-12-02 06:42:47'),
(35, 'qwrqwr', 'wqrqwrqwr@rwqrqwr', '333333333', NULL, '2023-12-02 06:43:09', '2023-12-02 06:43:09');

-- --------------------------------------------------------

--
-- Table structure for table `doctype`
--

CREATE TABLE `doctype` (
  `doctype_id` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctype`
--

INSERT INTO `doctype` (`doctype_id`, `nombre`) VALUES
(1, 'Procedimiento'),
(2, 'Políticas'),
(3, 'Registro'),
(4, 'Documentos'),
(5, 'Instructivo'),
(6, 'Manual'),
(7, 'Plan'),
(8, 'Código');

-- --------------------------------------------------------

--
-- Table structure for table `documento_iso`
--

CREATE TABLE `documento_iso` (
  `id` bigint(20) NOT NULL,
  `doc_id` varchar(45) DEFAULT NULL,
  `estado` varchar(255) NOT NULL,
  `responsable` varchar(255) NOT NULL,
  `fecha_revision` date DEFAULT NULL,
  `fecha_aprobacion` date DEFAULT NULL,
  `aprobado_por` varchar(255) DEFAULT NULL,
  `archivo` varchar(255) DEFAULT NULL,
  `anio` int(11) DEFAULT NULL,
  `mes` varchar(20) DEFAULT NULL,
  `comentarios` text DEFAULT NULL,
  `process_id` bigint(20) DEFAULT NULL,
  `doctype_id` bigint(20) DEFAULT NULL,
  `estado_workflow` enum('Borrador','En revisión','Aprobado','Rechazado') DEFAULT 'Borrador',
  `aprobador_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fecha_aprobacion_workflow` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `documento_iso`
--

INSERT INTO `documento_iso` (`id`, `doc_id`, `estado`, `responsable`, `fecha_revision`, `fecha_aprobacion`, `aprobado_por`, `archivo`, `anio`, `mes`, `comentarios`, `process_id`, `doctype_id`, `estado_workflow`, `aprobador_id`, `fecha_aprobacion_workflow`, `created_by`) VALUES
(1, NULL, 'Vigente', 'Juan Perez', '2024-06-01', '2024-06-15', 'Maria Gomez', 'doc1.pdf', 2024, 'Junio', 'OK', 1, 1, 'Aprobado', 7, '2025-08-19 17:24:07', 0),
(2, NULL, 'Obsoleto', 'Ana Lopez', '2024-05-10', NULL, NULL, 'doc2.pdf', 2023, 'Mayo', 'OK', 2, 2, 'Borrador', NULL, NULL, 0),
(4, NULL, 'EN REVISIÓN', '16', NULL, NULL, '16', '1755808539_MODELO DE CARTA.docx', NULL, NULL, 'wqwewqe', 10, 2, 'Borrador', NULL, NULL, 0),
(5, NULL, 'EN REVISIÓN', '16', NULL, NULL, '16', '1755811832_MODELO DE CARTA.docx', NULL, NULL, 'EEEEEEE', 10, 1, 'Borrador', NULL, NULL, NULL),
(6, 'sig 12221', 'EN REVISIÓN', '16', NULL, NULL, '16', '1755812252_letter-3.pdf', NULL, NULL, 'pppppp', 10, 1, 'Borrador', NULL, NULL, NULL),
(7, 'sig 12221222', 'EN REVISIÓN', '16', NULL, NULL, '16', '1755815605_COTIZACION GRUPO HIDRAULICA.docx', NULL, NULL, 'rwqrqwrqwr', 10, 1, 'Borrador', NULL, NULL, 1),
(8, 'SIG- 344', 'OBSERVADO', '16', NULL, NULL, '16', '1755877641_INFORME INVETSA.pdf', NULL, NULL, 'JJTYK', 10, 1, 'Borrador', NULL, NULL, 17),
(9, 'SIG- 3445', 'EN REVISION', '17', NULL, '2025-08-22', '', '1755890997_INFORME DYNAMOWL.pdf', NULL, NULL, 'primera creacino iso 90010', 10, 1, 'Borrador', NULL, NULL, 17),
(10, 'SIG- 34456', 'VIGENTE', '17', NULL, '2025-08-22', '16', '1755895331_INFORME INVETSA.pdf', NULL, NULL, 'reviiiiSAAAAAAAARRRRRRRR', 10, 1, 'Borrador', NULL, NULL, 17);

-- --------------------------------------------------------

--
-- Table structure for table `documento_iso_logs`
--

CREATE TABLE `documento_iso_logs` (
  `id` bigint(20) NOT NULL,
  `documento_iso_id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `accion` varchar(255) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `documento_iso_logs`
--

INSERT INTO `documento_iso_logs` (`id`, `documento_iso_id`, `user_id`, `accion`, `descripcion`, `created_at`) VALUES
(4, 4, 1, 'Creación', 'Documento creado', '2025-08-21 15:35:39'),
(5, 5, 1, 'Creación', 'Documento creado', '2025-08-21 16:30:32'),
(6, 6, 1, 'Creación', 'Documento creado', '2025-08-21 16:37:32'),
(7, 7, 1, 'Creación', 'Documento creado', '2025-08-21 17:33:25'),
(8, 8, 17, 'Creación', 'Documento creado', '2025-08-22 09:35:57'),
(9, 8, 16, 'Observación', 'qwewqrqw', '2025-08-22 10:23:54'),
(10, 8, 17, 'Edición', 'Documento actualizado', '2025-08-22 10:30:11'),
(11, 8, 17, 'Edición', 'Documento actualizado', '2025-08-22 10:47:21'),
(12, 8, 16, 'Observación', 'esta bien pero puede mejorara en estos aspectos', '2025-08-22 11:08:11'),
(13, 8, 16, 'Edición', 'Documento actualizado', '2025-08-22 11:16:54'),
(14, 8, 16, 'Observación', 'debes modificar esto todavia', '2025-08-22 11:18:10'),
(15, 9, 17, 'Creación', 'Documento creado', '2025-08-22 13:01:39'),
(16, 9, 16, 'Observación', 'debe modificarse debido a observaciones', '2025-08-22 14:07:19'),
(17, 9, 17, 'Edición', 'Documento actualizado', '2025-08-22 14:29:57'),
(18, 9, 16, 'Aprobación', 'Documento aprobado', '2025-08-22 15:00:03'),
(19, 9, 16, 'Edición', 'Documento actualizado', '2025-08-22 15:00:03'),
(20, 10, 17, 'Creación', 'Documento creado', '2025-08-22 15:20:02'),
(21, 10, 16, 'Observación', 'PORAFVOR REISA BIEN PORQUE HAY DETALLER ADJUNTO DETALLES', '2025-08-22 15:21:27'),
(22, 10, 17, 'Edición', 'Nueva versión enviada para revisión', '2025-08-22 15:42:11'),
(23, 10, 16, 'Aprobación', 'Documento aprobado', '2025-08-22 16:14:00');

-- --------------------------------------------------------

--
-- Table structure for table `documento_iso_role`
--

CREATE TABLE `documento_iso_role` (
  `documento_iso_id` bigint(20) NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `documento_iso_role`
--

INSERT INTO `documento_iso_role` (`documento_iso_id`, `role_id`) VALUES
(1, 7),
(1, 8),
(2, 9);

-- --------------------------------------------------------

--
-- Table structure for table `documento_iso_versions`
--

CREATE TABLE `documento_iso_versions` (
  `id` bigint(20) NOT NULL,
  `documento_iso_id` bigint(20) NOT NULL,
  `archivo` varchar(255) NOT NULL,
  `comentario` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `documento_iso_versions`
--

INSERT INTO `documento_iso_versions` (`id`, `documento_iso_id`, `archivo`, `comentario`, `user_id`, `created_at`) VALUES
(4, 4, '1755808539_MODELO DE CARTA.docx', 'wqwewqe', 1, '2025-08-21 15:35:39'),
(5, 5, '1755811832_MODELO DE CARTA.docx', 'EEEEEEE', 1, '2025-08-21 16:30:32'),
(6, 6, '1755812252_letter-3.pdf', 'pppppp', 1, '2025-08-21 16:37:32'),
(7, 7, '1755815605_COTIZACION GRUPO HIDRAULICA.docx', 'rwqrqwrqwr', 1, '2025-08-21 17:33:25'),
(8, 8, '1755873357_INFORME DYNAMOWL.pdf', 'JJTYK', 17, '2025-08-22 09:35:57'),
(9, 8, '1755876611_INFORME INVETSA.pdf', 'se modifco por esto  esto etcetc', 17, '2025-08-22 10:30:11'),
(10, 8, '1755877641_INFORME INVETSA.pdf', 'se modifico esta operacion', 17, '2025-08-22 10:47:21'),
(11, 9, '1755885699_letter-3.pdf', 'primera creacino iso 90010', 17, '2025-08-22 13:01:39'),
(12, 9, '1755890997_INFORME DYNAMOWL.pdf', 'revisar porfavor cambios aplicados', 17, '2025-08-22 14:29:57'),
(13, 10, '1755894002_INFORME DYNAMOWL.pdf', 'reviiiiSAAAAAAAARRRRRRRR', 17, '2025-08-22 15:20:02'),
(14, 10, '1755895331_INFORME INVETSA.pdf', 'nueva actualizacion', 17, '2025-08-22 15:42:11');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email_type` varchar(100) DEFAULT NULL,
  `email_subject` text DEFAULT NULL,
  `email_body` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `email_type`, `email_subject`, `email_body`) VALUES
(2, 'email_verification', 'Verify Your Email', 0x3c70207374796c653d226c696e652d6865696768743a20312e363b223e48656c6c6f3c623e207b637573746f6d65725f6e616d657d3c2f623e2c3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e506c6561736520636c69636b20746865206c696e6b2062656c6f7720746f2076657269667920796f757220656d61696c2e3c2f703e3c703e7b766572696669636174696f6e5f6c696e6b7d3c2f703e3c703e3c62723e3c2f703e3c703e4265737420526567617264732c3c2f703e3c703e7b776562736974655f7469746c657d3c2f703e),
(3, 'order_received', 'Order Received', 0x3c70207374796c653d226c696e652d6865696768743a20312e363b223e48656c6c6f207b637573746f6d65725f6e616d657d2c3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e596f7572206f7264657220686173206265656e2072656365697665642e3c62723e4f72646572204e756d6265723a20237b6f726465725f6e756d6265727d3c2f703e3c703e3c62723e506c6561736520636c69636b206f6e207468652062656c6f77206c696e6b20746f2073656520796f7572206f726465722064657461696c732e3c62723e7b6f726465725f6c696e6b7d3c2f703e3c703e3c62723e3c2f703e3c703e4265737420526567617264732c3c62723e7b776562736974655f7469746c657d3c2f703e),
(4, 'order_preparing', 'Preparing Your Order', 0x3c70207374796c653d226c696e652d6865696768743a20312e363b223e48656c6c6f207b637573746f6d65725f6e616d657d2c3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e4368656620686173207374617274656420707265706172696e6720796f7572206f72646572656420666f6f64732e3c62723e4f72646572204e756d6265723a266e6273703b20237b6f726465725f6e756d6265727d3c2f703e3c703e3c62723e506c6561736520636c69636b206f6e207468652062656c6f77206c696e6b20746f2073656520796f7572206f726465722064657461696c732e3c62723e7b6f726465725f6c696e6b7d3c2f703e3c703e3c62723e3c2f703e3c703e4265737420526567617264732c3c62723e7b776562736974655f7469746c657d3c2f703e),
(5, 'order_ready_to_pickup', 'Your Order is Ready to Pickup', 0x3c70207374796c653d226c696e652d6865696768743a20312e363b223e48656c6c6f207b637573746f6d65725f6e616d657d2c3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e596f7572206f7264657220697320726561647920746f207069636b75702e204f75722064656c6976657279206d616e2077696c6c207069636b20757020746865206f7264657220736f6f6e2e3c62723e4f72646572204e756d6265723a266e6273703b20237b6f726465725f6e756d6265727d3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e506c6561736520636c69636b206f6e207468652062656c6f77206c696e6b20746f2073656520796f7572206f726465722064657461696c732e3c62723e7b6f726465725f6c696e6b7d3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e3c2f703e3c703e4265737420526567617264732c3c62723e7b776562736974655f7469746c657d3c2f703e),
(6, 'order_ready_to_pickup_pick_up', 'Your order is ready to pick up', 0x3c70207374796c653d226c696e652d6865696768743a20312e363b223e48656c6c6f207b637573746f6d65725f6e616d657d2c3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e596f7572206f7264657220697320726561647920746f207069636b75702e20506c65617365207069636b757020796f7572206f7264657220617420796f75722063686f73656e206461746520262074696d652e3c62723e4f72646572204e756d6265723a266e6273703b20237b6f726465725f6e756d6265727d3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e506c6561736520636c69636b206f6e207468652062656c6f77206c696e6b20746f2073656520796f7572206f726465722064657461696c732e3c62723e7b6f726465725f6c696e6b7d3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e3c2f703e3c703e4265737420526567617264732c3c62723e7b776562736974655f7469746c657d3c2f703e),
(7, 'order_pickedup', 'Order has been pickedup', 0x3c703e48656c6c6f207b637573746f6d65725f6e616d657d2c3c2f703e3c703e3c62723e596f7572206f72646572206973207069636b656420757020666f722064656c69766572792e2049742077696c6c206265206172726976656420696e206120666577206d6f6d656e74732e3c62723e4f72646572204e756d6265723a20237b6f726465725f6e756d6265727d3c2f703e3c703e3c62723e506c6561736520636c69636b206f6e207468652062656c6f77206c696e6b20746f2073656520796f7572206f726465722064657461696c732e3c62723e7b6f726465725f6c696e6b7d3c2f703e3c703e3c62723e3c2f703e3c703e4265737420526567617264732c3c62723e7b776562736974655f7469746c657d3c2f703e),
(8, 'order_pickedup_pick_up', 'You have picked up Ordered Food', 0x3c703e48656c6c6f207b637573746f6d65725f6e616d657d2c3c2f703e3c703e3c62723e596f75722068617665207069636b656420757020796f7572206f72646572656420466f6f642e3c62723e4f72646572204e756d6265723a20237b6f726465725f6e756d6265727d3c2f703e3c703e3c62723e506c6561736520636c69636b206f6e207468652062656c6f77206c696e6b20746f2073656520796f7572206f726465722064657461696c732e3c62723e7b6f726465725f6c696e6b7d3c2f703e3c703e3c62723e3c2f703e3c703e4265737420526567617264732c3c62723e7b776562736974655f7469746c657d3c2f703e),
(9, 'order_delivered', 'Order has been Delivered', 0x3c70207374796c653d226c696e652d6865696768743a20312e363b223e48656c6c6f207b637573746f6d65725f6e616d657d2c3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e596f7572206f7264657220686173206265656e2064656c6976657265642e3c62723e4f72646572204e756d6265723a20237b6f726465725f6e756d6265727d3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e506c6561736520636c69636b206f6e207468652062656c6f77206c696e6b20746f2073656520796f7572206f726465722064657461696c732e3c62723e7b6f726465725f6c696e6b7d3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e3c2f703e3c703e4265737420526567617264732c3c62723e7b776562736974655f7469746c657d3c2f703e),
(10, 'order_cancelled', 'Order is Cancelled', 0x3c70207374796c653d226c696e652d6865696768743a20312e363b223e48656c6c6f203c623e7b637573746f6d65725f6e616d657d3c2f623e2c3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e596f7572206f7264657220686173206265656e2063616e63656c6c65642e3c62723e4f72646572204e756d6265723a207b6f726465725f6e756d6265727d3c2f703e3c703e3c62723e506c6561736520636c69636b206f6e207468652062656c6f77206c696e6b20746f2073656520796f7572206f726465722064657461696c732e3c62723e7b6f726465725f6c696e6b7d3c2f703e3c703e3c62723e3c2f703e3c703e4265737420526567617264732c3c62723e3c623e7b776562736974655f7469746c657d3c2f623e3c2f703e),
(11, 'order_ready_to_serve', 'Your order is ready to serve on table', 0x3c703e48656c6c6f207b637573746f6d65725f6e616d657d2c3c2f703e3c703e3c62723e596f7572206f7264657220697320726561647920746f207365727665206f6e207461626c652e205761697465722077696c6c2073657276657220746865206f7264657220696e2061206d6f6d656e742e3c62723e4f72646572204e756d6265723a20237b6f726465725f6e756d6265727d3c2f703e3c703e3c62723e506c6561736520636c69636b206f6e207468652062656c6f77206c696e6b20746f2073656520796f7572206f726465722064657461696c732e3c62723e7b6f726465725f6c696e6b7d3c2f703e3c703e3c62723e3c2f703e3c703e4265737420526567617264732c3c62723e7b776562736974655f7469746c657d3c2f703e),
(12, 'order_served', 'You order is served on table', 0x3c703e48656c6c6f207b637573746f6d65725f6e616d657d2c3c2f703e3c703e3c62723e596f7572206f7264657220697320736572766564206f6e20796f7572207461626c652e20456e6a6f7920796f757220466f6f642e3c62723e4f72646572204e756d6265723a20237b6f726465725f6e756d6265727d3c2f703e3c703e3c62723e506c6561736520636c69636b206f6e207468652062656c6f77206c696e6b20746f2073656520796f7572206f726465722064657461696c732e3c62723e7b6f726465725f6c696e6b7d3c2f703e3c703e3c62723e3c2f703e3c703e4265737420526567617264732c3c62723e7b776562736974655f7469746c657d3c2f703e),
(13, 'food_checkout', 'Order has been placed', 0x3c70207374796c653d226c696e652d6865696768743a20312e363b223e48656c6c6f207b637573746f6d65725f6e616d657d2c3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e596f7572206f7264657220686173206265656e20706c61636564207375636365737366756c6c792e205765206861766520617474616368656420616e20696e766f69636520696e2074686973206d61696c2e3c62723e4f72646572204e756d6265723a20237b6f726465725f6e756d6265727d3c2f703e3c703e3c62723e506c6561736520636c69636b206f6e207468652062656c6f77206c696e6b20746f2073656520796f7572206f726465722064657461696c732e3c62723e7b6f726465725f6c696e6b7d3c2f703e3c703e3c62723e3c2f703e3c703e4265737420526567617264732c3c62723e7b776562736974655f7469746c657d3c2f703e),
(14, 'reservation_accept', 'Reservation Request Accepted', 0x3c703e48656c6c6f207b637573746f6d65725f6e616d657d2c3c2f703e3c703e3c62723e596f75207265736572766174696f6e207265717565737420686173206265656e2061636365707465642e3c2f703e3c703e3c62723e3c2f703e3c703e4265737420526567617264732c3c62723e7b776562736974655f7469746c657d3c2f703e),
(15, 'reservation_reject', 'Reservation Request Rejected', 0x3c70207374796c653d226c696e652d6865696768743a20312e363b223e48656c6c6f207b637573746f6d65725f6e616d657d2c3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e596f75207265736572766174696f6e207265717565737420686173206265656e2072656a65637465642e3c2f703e3c703e3c62723e3c2f703e3c703e4265737420526567617264732c3c62723e7b776562736974655f7469746c657d3c2f703e);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `question` varchar(255) DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `serial_number` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `language_id`, `image`, `title`, `serial_number`, `created_at`, `updated_at`) VALUES
(52, 179, '1689016158.png', 'Ensalada Chami', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guests`
--

CREATE TABLE `guests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `endpoint` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guests`
--

INSERT INTO `guests` (`id`, `endpoint`, `created_at`, `updated_at`) VALUES
(3, 'https://fcm.googleapis.com/fcm/send/dRDyV7OmiFg:APA91bHVyRIr4Fex43DVFIM_CC6Ldo9hieQFcgewtgoLNGfK_fpIzFgGAAP_INoOTjnmOzSjg5K1qJUKKLefZuz5uQBj3YFFuyREw5YqWVQt7AJTeAfo-bfiFEz6-BytS3JoYseML_wt', '2020-12-26 07:38:28', '2020-12-26 07:38:28'),
(4, 'https://fcm.googleapis.com/fcm/send/dt--VeNXQpk:APA91bEXROqytusuQiBN-WidokRxoe_IH7kR6Qi6zXD1Ajx-XyQ4EtEoJxg62WwI-j0RFq2xUjBe-Is7h17zlUMntaf4mgCUeDFtLiW98h8xoOfL3ynutkpMHmyqoldRHVZDZGOQY98X', '2020-12-26 10:04:17', '2020-12-26 10:04:17'),
(5, 'https://fcm.googleapis.com/fcm/send/fetLuDtmxNg:APA91bHqqBZBZzCuFd8Ae3hGHo5q972ktIjfZuRzek59nJXiwdn88UBtnuU9IwaxVznCJGxn1SdhlOFZ8sIsGyVBoK-GIm6KCk0iTuvwc1e3o0H4hfunWZe-o98HQpIXpYDAkan0DiAy', '2021-03-24 07:37:03', '2021-03-24 07:37:03'),
(6, 'https://updates.push.services.mozilla.com/wpush/v2/gAAAAABgXhAyYoUVkJ8ymIaucMN78o9LdNIJ2ZhWATCMTUa79O7Q_6IWuwZlWOkNi33elgKb73GjntPc0ErLR7FF9b0UU0BNiDpJdsEv0uqcGKdNWkiYlAdlmNPaR0rKI8VivAkeCPzjYhykXGdYpXVpR3TxceTSpWBzxivvTpCTLQlUq72QNO8', '2021-03-26 11:47:44', '2021-03-26 11:47:44'),
(7, 'https://fcm.googleapis.com/fcm/send/cmWvhqu3tv8:APA91bFobMGJpxJvuqHpFU7Y5vtVZNcvsykv_So9xDDoCqKLewXINW8QbmIkpha9i7CJZPAoaZjST1cJPnwwa0rbp-VCk8LOWRoxcuIyyUlsOIFCMCOwysBSFZm_1eBbVV9aeyLSENGc', '2021-04-03 00:02:31', '2021-04-03 00:02:31'),
(8, 'https://fcm.googleapis.com/fcm/send/eh4uTNYjL8g:APA91bEX1UoNIWd9wkORCAREAofoRcvvbmRdDNMQwd1d-EZ0lbfCU5CUXewaZucNBK81XO0z6h0LnUaBFPHRlEDrUGm90vu_GHDd5lrndy3l6Otqf5i921YWUa-Xwn4i0MSW5uoPAeMQ', '2021-04-16 11:36:28', '2021-04-16 11:36:28'),
(9, 'https://fcm.googleapis.com/fcm/send/dObB80OmAaw:APA91bFv7cirSdv3z2G0IU7AlDsIylsVt5C2Z3q53ZUNLMlvlOIfQiOshMF-xKknu8706NDLq9PJyhl7eCdOZlzw-pxRrgsW-p2PjU9N1bePkHnYSIPnTp5a4g1N1tDQQQQWNDjy9slX', '2021-05-06 09:40:57', '2021-05-06 09:40:57'),
(10, 'https://fcm.googleapis.com/fcm/send/eZKf01giLZc:APA91bH4tmbQ3s4Lv-B9nztPSZW3yd7Y2uXC-60sHsGIhKkOlUxP6oC68n37Vtq-FBk-OlTVlU76weuJ_vrW0BliQoqvrNRb8xstdCONgBIs47-5fgbphTiuONZgUp1nDtX8LfcFM-Iy', '2021-05-23 00:31:34', '2021-05-23 00:31:34'),
(11, 'https://fcm.googleapis.com/fcm/send/cPVrToqh8P0:APA91bEiMbgqN8bDAhr0mbdzXPcFOvc77t1WzG17LnxbEo7shs1OJ-UhjuXbKMj71Nx0_EjBlZNmj4Nl44WiksfgkV3COShKvj02S_ZpkTe5fD6WFwtIlPZ6LO-IrH57t-lVOinUQkHw', '2022-03-08 11:07:58', '2022-03-08 11:07:58'),
(12, 'https://fcm.googleapis.com/fcm/send/eSdjeQS-6ec:APA91bFUxeQX0vknYUYO5cF4Bau2chgFvbcNkVDiWxQzJFCC-koRWSuqHWlB-CNygN8YDUgGxCLD5EVEx8MpSGHTxkTpypT7lCxo9MiYVJdRjmLkxlLilJmyI2277FKumLhLbQM55CmZ', '2022-03-25 09:37:15', '2022-03-25 09:37:15'),
(13, 'https://fcm.googleapis.com/fcm/send/fVC8cace-fw:APA91bEWCMtj2rRSwKQ1q6JQKrdw5X4JAk8FKP6kbWS9Zr7koUH_yRlG7mVwaycVt20EO7UYs0xe3DP26Xba3xGo4tPhS3Rjapa3i-2MNewsDloDPsDppAFkm-X4FKqpWqS_Vk6L9XMS', '2022-03-25 15:10:08', '2022-03-25 15:10:08'),
(14, 'https://fcm.googleapis.com/fcm/send/eAFjl2NwK-s:APA91bEp8b2PiBhmwX_zmnbBUTHukeW5vNABILeBOl5rsDHvN95kgd_3ywilHH9NfNnYpm7a7aJgNPXUc0gJ_7uaFuYjitNc-QRbXz7ys5ZGdtfSKOnGpiuyegInmd4Gzk2SpknKc4wc', '2022-03-26 05:55:51', '2022-03-26 05:55:51'),
(15, 'https://fcm.googleapis.com/fcm/send/cYxO9t_xdXE:APA91bGQ1gBBBwp_ci8cdd_QyMhpiNn_YQHz5T7jYq_Rpy361fJn38T1n4_JepcLWvTVcWKS0_rKSxDZwj98j4tcKJ4WDTYftcpmHSOwzZ_wHMo-DbmOg7OCmo1H5bmM_qzs1JwSsKq3', '2022-03-26 06:11:44', '2022-03-26 06:11:44'),
(16, 'https://fcm.googleapis.com/fcm/send/fL9PPVT6jlM:APA91bF1dsI1uMzo_fGgOiP-6G_LSRBmOpdao8C9sSPUtd4Pu9bvcJbOcFmiCbEKxdD2TGk6elsRlMa44pw4m73kcZy1Z6dWdk4uFxoqwF542pO4ZgneVD6DT1-2cCiMcadxvdHmQAQv', '2022-03-26 06:11:59', '2022-03-26 06:11:59'),
(17, 'https://fcm.googleapis.com/fcm/send/dvFmtOYkKOE:APA91bHpWKVtET2wBSGnEvLtLXpy5S150lRksdlSMTIDfiUNahnnOsJErkgga8EjvraIjSHkSe_epQEiN7naxS7w8vz9PmnOURQi4Bu4dBQj--WhHTyH50BPXBF_ZIVKcaOIlo3KVadt', '2022-03-26 06:33:01', '2022-03-26 06:33:01'),
(18, 'https://fcm.googleapis.com/fcm/send/fVc8RLnHZ6M:APA91bG2us8fW833NzlJ1ilqh8kkVoNrbKck6JZezNXegKjw8NwAm8vDovgpLndAmHNJA6gRfznPD_Rc8vwJ7XXOE3pE0KBokTaozkMq5M4UbPp8MReZ3ho6_iyqx9FrnXjnpxR9wxpa', '2022-03-28 13:24:40', '2022-03-28 13:24:40'),
(19, 'https://fcm.googleapis.com/fcm/send/fgbnPkwsCU8:APA91bGJfLBxkTgEtJePLRIsyfSu2BIPQ22BYwHpAhVrA4whhAdsiHpOSOVr4Vcmp_pTLgRfP2PisJm_fG7so9YU0lNjbXEYHQJ24RkHcDf2eI3mP_5_BM9ALtjdM78nUxodMPYY4k5x', '2022-03-29 07:23:02', '2022-03-29 07:23:02'),
(20, 'https://fcm.googleapis.com/fcm/send/ePVbno9kWtA:APA91bHQi13UwmBnf_z9erJ2VBB78MK_hfeRvQ2tDeLiDgHC4Sl71dDktuhYtjOEamBq_w75T9_Nu0tJqw3YPRPqKW09ObMCn9LiA6pbQKWNYnJujatjDFL0VzZAhB_RLPo8KAdadkqz', '2022-03-29 07:26:21', '2022-03-29 07:26:21'),
(21, 'https://fcm.googleapis.com/fcm/send/dgvxW5cNw5g:APA91bH8Au63veVx1bkKpGB0g_MxoQICgJ3bWaP-QtyowdorZUGcayo5xASkTEFjJri6IjOyvRP7WKCv4jbr4RxT4PD_zr-3AwHlpG00d8rDd-bTvzyvTK2Aj0r59zpKtNSEw8a99VlZ', '2022-03-29 09:33:41', '2022-03-29 09:33:41'),
(22, 'https://fcm.googleapis.com/fcm/send/dH8KnORYEVQ:APA91bEJFuFWl1iloiH44Fuot4Gnoh5p0aUxs_mtrPVsm7O3Dkjd8vELa2DeW9ETdHFcSBkyZt8g0dERLI7jZU3sz5Kv0UP8S2UuDgkRGHC3hRIDp9PdYR8srv-7y_EitmUEY8kBhE9M', '2022-03-29 09:49:54', '2022-03-29 09:49:54'),
(23, 'https://fcm.googleapis.com/fcm/send/eV2Fy6cICFg:APA91bH64deQsEs8og6oMqWSN0IV80-6IJtBR0MmRHwpm6vNvyY1Q-mVU8IK9x_BvxPuTNje_k1Ur6G1WhNqi_kmlCXQZoikKjkeOuLzQ0JjcoT5enML53YCw__PX9i_yathf5ajux8x', '2022-03-29 11:31:26', '2022-03-29 11:31:26'),
(24, 'https://fcm.googleapis.com/fcm/send/fjhrX4tX4Cc:APA91bGSxATfx2askizSwnj_XEEe1dirC38jMXFsCL-Nip69CVioMNbApRMS8_A3RzlWDBXI1sUm2DdSq0-OnXsqO1fror-THjD3R107bF_OBsJWSy4YfrBCdlqD_KZVP_MO3FJbIyIO', '2022-04-04 14:22:56', '2022-04-04 14:22:56'),
(25, 'https://fcm.googleapis.com/fcm/send/dMfJBWeK59g:APA91bHVx8OoUaqqaZROwpYLGi0oL_hpP27-BHhKWcsb_Cf3JhO_0nfblhoeyZWsntig9h4yIv20-lwaiIUVaKQcZ_GtyC1P4DWizrLSkGtYLUtO1Erv9Q5SN1gPfGFy9BN9-J9M17Qi', '2022-04-06 14:45:27', '2022-04-06 14:45:27'),
(26, 'https://fcm.googleapis.com/fcm/send/eFLG-3oEzKI:APA91bF934GtVfeJ3I-0pekZ3k2uYGQyExkei8SLug9CuMb0uXNj8p0kkc_kGPuzAbW0oVt3hlOWdNKmChP2aAWkPRwfGtkxgnDodUhkEZamoo92yi50N6Q65AOOGJVrydcjfVmWFoWF', '2022-05-25 12:10:23', '2022-05-25 12:10:23'),
(27, 'https://fcm.googleapis.com/fcm/send/ddjYk0PfZN4:APA91bHrypeB-IsqioQhnJ5YUV1nZxv-bIK5tKRJppgC4q2mcmEib9ng0gFFlm3_xs8jiHbzQ_KnQPxthBm3qaMnEyRFuv2r-jjs_xE5ie6kVK1zCKjNL1wE0nDC8Ftu-vlA0qtCDYs7', '2023-04-10 05:35:33', '2023-04-10 05:35:33'),
(28, 'https://fcm.googleapis.com/fcm/send/c6z1jcd4ug8:APA91bHU62xxRJMvKKsE2hAVbIP5aHsYN5kNXcyMJ1MJ7LU16BG1IJiHmangsq9yWPlFoIpPhKB_uIzldr7lr4jh01AqC5NS4tZVHYBZn_zrkZuWh1uOWPxtQQGudUwEc5XGFv_M1THK', '2023-04-10 07:46:43', '2023-04-10 07:46:43'),
(29, 'https://fcm.googleapis.com/fcm/send/eZJp6IVs6lo:APA91bHggwA-gOtuZj-610cq9vO2dR3OuTKsklGG4bHXztdyX4tIQsDX--944xanSG3DWa2wkq6EflFM0i-r-OXQCsFa2nGloFQCyDvOwTWPGaXSbD3LCXAzvqJ-K2SFOvvsMSFq8h-7', '2023-05-30 10:54:57', '2023-05-30 10:54:57'),
(30, 'https://fcm.googleapis.com/fcm/send/crP6E_IuO4c:APA91bFsW-IbktnqNAViADCPpzJLw7EYAMjORIvVVvtaTBPXeTm2kEm5G4x2z6cNprJenoe1d0Yai1c41q3_D1cI7MhlK8_PBEfauBwObb6T6yeNV2G85ubC8TePDEA_hvFosKrZ7ETt', '2023-10-29 19:37:23', '2023-10-29 19:37:23'),
(31, 'https://fcm.googleapis.com/fcm/send/evAcN8u3UK8:APA91bHTb_z0TAkRj4Q1uwpoUIfAtYgiRmuIVDzb5efpYa7GztuOnwyAlSoX_Brr4a4e6-pVYHq-Y40PTxJPWU4baK3291phTOasnawOrrPMrUxMgPoWtEVHVH_9vQYpMFzfrXV-8E2q', '2023-10-29 20:15:58', '2023-10-29 20:15:58'),
(32, 'https://fcm.googleapis.com/fcm/send/cAZAhegjhEc:APA91bFYS33_Ychci-1EdB81WHWhYIh7zUbGTFdIvdurmYotPux48atGfwT0bKlfsrPhEfQ3xC0F4v4SZCgbTknY-ycC-tkY1fUrC6TV6qxgOg1QQFrRE8XdYle1EH27nTfm5m8_SnXU', '2023-10-31 18:47:41', '2023-10-31 18:47:41'),
(33, 'https://fcm.googleapis.com/fcm/send/dJCnGFY0Wug:APA91bFQEHNvNsILZRjDing5uzPav82gx9A3HyW6cTLw4w9zQ35H6ylG9vjY8bvjL33MOgyYuKh8DZb4Rza3acEuEVzJtlA0iQJ7ibK91EiypskeaV4Uf_9mqnr8Lmao3icQyGDjVNui', '2023-11-05 12:42:59', '2023-11-05 12:42:59'),
(34, 'https://fcm.googleapis.com/fcm/send/cea8v1kH_Cs:APA91bG3saed7qQgKVhhARjwRUbtPtvpRHb1JFrWX8l6x0Dh-rgT4LIrOBCSziSjMtoMck0F0LejQHiBjD-yHQMD1hBueSrixIjX7bAJSjBlbhUYkhRJkg9ScgR3iu-r-j0ByygSadOg', '2023-11-05 19:27:32', '2023-11-05 19:27:32'),
(35, 'https://fcm.googleapis.com/fcm/send/f6rwiho4X0E:APA91bGs2mSb_kA8QVqOskzQXaDW6cN_HcslWExa4lxGexFGmlTmgdsv0KTdIVGPWPCt-88dbK52TbcKytbHmmBbeJHSEFzg0HPwbkjn3mDe1wmThV4JzJv-NSww0Yyam2w59yWyZj5X', '2023-11-05 23:47:47', '2023-11-05 23:47:47'),
(36, 'https://fcm.googleapis.com/fcm/send/f9591y2brvg:APA91bFHsJCB_EfT55s0IkISThi_HOm73tvcc-R9x3nN1idWeA9ONkBfsFLnutLCGv4yrHkFX6V_EQL4RstHmorsOpHjosMOjIhBr29xYHKi196CN3ZPf6j-j2tEdsQ2ubSJLTGII9Z2', '2023-11-06 03:17:21', '2023-11-06 03:17:21'),
(37, 'https://fcm.googleapis.com/fcm/send/eyDvnxZdRr8:APA91bGM_fTm_SfGZmhP2owCbPuklkp4a12dwBAr1lyPHvnhSp3UGPcl4N4y1m_vK800qKX6g2LldAipXhWXMMLH_ZpwBjDj54_wff64QQScXPhkKPIVh2tBrX3JjrNcNR5sg39WUffw', '2023-11-07 17:49:32', '2023-11-07 17:49:32'),
(38, 'https://fcm.googleapis.com/fcm/send/fisV8TfYzs8:APA91bH4ulwG3WaWTF8y-nIZkkIlm5EvFe-IucHd5g2n3fOajMXYm4YE4TIdZmkoLvOaEWVCIwNVUeHAuoI-ZQMi9VfMkjy0wPP9ZepjKBophLfKNcqf0ZoWVHu_fD1dA1qJE3a83TEY', '2023-11-07 19:15:24', '2023-11-07 19:15:24'),
(39, 'https://fcm.googleapis.com/fcm/send/d0KaNlMOAq4:APA91bE-tm3MhOkC1hUWjdzkNCxkdpoeAYEWNyxio0D5P-9tENKtAO-6H8y4hgXsKrqFlDbzVu0LZJrqGT75EG0WX5wPM8i-K-spBjW6xHcKuzpqMrWXMVkRsRHUQJkFCRE9mDMWWJC7', '2023-11-08 18:06:11', '2023-11-08 18:06:11'),
(40, 'https://fcm.googleapis.com/fcm/send/eRd4y62m3r8:APA91bHVHJnwlt8Dt52gydu2Ik4qhXZ7U_BhuhI3aGethzn6sTpMgY_zq_4rC_xnQDqhkCIT_2ZXHCMZlePWLh0c5Ay_-Sw7jXkxoiWyJYsVb8PEjvVkdCFX5GQyY8O0jnSwWOKLQ3rG', '2023-11-10 23:25:37', '2023-11-10 23:25:37'),
(41, 'https://fcm.googleapis.com/fcm/send/cNyuGfn6tjo:APA91bF5BppQzQ2dnF_xH-85-iY3Sj-yF5y6HRxooirVbz5TW6zWDmuKi8XFyHJSaJJ0K9kvvaGOmwPHFNEEeqAgjUC4YrgeJth7PZKKplu2qRCVpejDLE11y5a_iCJUC159JOaNIK7D', '2023-11-11 03:03:13', '2023-11-11 03:03:13'),
(42, 'https://fcm.googleapis.com/fcm/send/dzmWJGlrBi8:APA91bH3Gx8HeGWufLjg-wnRhsMJeYBs1KB_KG29fcjbQaY3qY9S_-ygWTn0PPfmtKVvReCr569tpA8JFFQMab8S4QSH2p2bZLQXM0a80D6bX0tV46bGY7QsG7wDgXaeVZplh1HiqmpG', '2023-11-12 08:37:58', '2023-11-12 08:37:58'),
(43, 'https://fcm.googleapis.com/fcm/send/f1WuZlf5UeA:APA91bFXcFJCeKpg9gCbvdbIQ2H4Qjq3UQ_DconYxH81nAMGjIgSEd2zw8QHSgTnlTaJyAxi3W7uaENCImjuhpq6i9CTI5Vmg4U7Fad5AFpdtrJaPwlgD4rUzcX1JjylFV8m1Pz2LpCP', '2023-11-12 18:04:38', '2023-11-12 18:04:38'),
(44, 'https://fcm.googleapis.com/fcm/send/fS0B5q0kBPs:APA91bFrAVDHBpcEapDQLUB_obNF5hhq-RmWrWIEtHZ7smwkyJWlnibLNzk7OI94mze1m_1LGsElIhbt7Yu45XTvsf2U3Gnae-gxZElbX1YdOEwf4vm9xaSlRuLHUtoajoBGE7-1v5LU', '2023-11-13 19:37:07', '2023-11-13 19:37:07'),
(45, 'https://fcm.googleapis.com/fcm/send/fU7N2ufrtEk:APA91bF1lmm3Cu5YEWp3NG647Jail81mJDZIYvVTtiusEWg2SO72JaamlNABqEiXc7noerKcsKmcVQp2FMlM6QnT0IeCar3ByIKoFBZkUi_QfIWZHsGk4VWuk0_i5dToJwsUK_y3-Kud', '2023-11-15 19:43:07', '2023-11-15 19:43:07'),
(46, 'https://fcm.googleapis.com/fcm/send/ePj_Lr6M1Ms:APA91bEkwAJxpqkoDRCKt07GzJ7wzWGK-F31mwG-HeND4mR8uES3c3Sm7LB-gy4Uflwcw3t1bjeVldjc3phNuXXcs-UT5RBNRj6F6STcuX_zlv1vyPNL8VQCYXDwpyrlkEUBimMTqtXg', '2023-11-15 22:09:38', '2023-11-15 22:09:38'),
(47, 'https://fcm.googleapis.com/fcm/send/ck2htnQSI0k:APA91bErJI13dkITPeb5rQS2-7uvg6WQTUOPw2KjRUqv1_MJZy9PMR1ByRinZGK1CAv30k2d43jxH8mm2Jmbq-3D7iOLkwms6idHutAe3e6PImXtyiTva5dHsAsKPQqClEsoiHRliMWY', '2023-11-18 20:08:40', '2023-11-18 20:08:40'),
(48, 'https://fcm.googleapis.com/fcm/send/c4z9lGuw1vQ:APA91bETI49RRt2lB0Dv6mg3KmkI6o2_z84t0BRvTAeMaaJ6Ub8oO5ktcHZK_l_tzBtXExjVBiFNTgKx_55aVhUOrRV-Wo38xN7q8j9CtEzauI5loWN4ojRFOTpEcMcsQNsI3oTFfK7p', '2023-11-19 12:08:20', '2023-11-19 12:08:20'),
(49, 'https://fcm.googleapis.com/fcm/send/e_Lir-U6oZU:APA91bH8PA3Ko2dezxZ8w5CEz7qmJt_HSPbiIRlmlVePqSXoDJ3e2UII_e0GwIjFpaYCQSaJtQWsXZ0-F-FH0z8cDLkA07tbj6aOaozjquJwc0qFdl_-fFIQqmQekJUpLO4vyckVUQWn', '2023-11-19 19:51:54', '2023-11-19 19:51:54'),
(50, 'https://fcm.googleapis.com/fcm/send/fj6yXiV5rpU:APA91bHoU24xYLU5DWEPI3wb1ektWlE5Jm4TJa9fv5qimIJOigbhlSA5oFC8GH3vBRRoRSuSfDm9Mhi6bLHC-NQmPABw24hyKTdGdOHqVMSCM2eDNOHls7knChHd3J55nsHPaRn5UvTs', '2023-11-20 17:29:14', '2023-11-20 17:29:14'),
(51, 'https://fcm.googleapis.com/fcm/send/fUiABwm4_cg:APA91bGlvg0p28VmKQ0PwlvnHGXQJHb5YED8i_oI6_YTFICh4pC2ajZchhTZOIzykwI_seJ17vAJ6NwWhYNKJh0BGbrTKyJp79RFFS3RuWd3dNoJtpW8pes5FkNVzJiwcU1_Btkt59yP', '2023-11-20 18:36:46', '2023-11-20 18:36:46'),
(52, 'https://fcm.googleapis.com/fcm/send/d0h5SCcAfik:APA91bGQFeNAXC7LgzdHse864y_s7DBVErXZPgn1_BaPy1rTz-e31uE_VshWOxOTixqe4bE66xn3KN94Mb_95qr5rxJA9Bap3cfTeQrSFLaYja2DWwYJjM7D4GaYVlxTRs3EJNioJ1wa', '2023-11-22 20:49:12', '2023-11-22 20:49:12'),
(53, 'https://fcm.googleapis.com/fcm/send/fPqNICYjFPQ:APA91bEhZVQ1FVnmOBZl03bB5d3VSnEgO54WaBsWTEg_JeNrGJbJZaTVPFa80VyXkqrFbzr4CQnF14ms5oZTRimXH0l5r-h3561i2vbk9XEBfzbuzj4PQuT93Oy0aX1DPLITj90O_wPO', '2023-11-24 22:39:25', '2023-11-24 22:39:25'),
(54, 'https://fcm.googleapis.com/fcm/send/dPXlXOLtaVQ:APA91bGY_B9ZT7lrOd5hTxbIzzIpzQeKyq0ycrcuAMO_QjbXGthYgiG7Ib2ahYQL_wBSR16zgiv2zFAfxBreDIepxadmjjgUPI7cpEIpjg3zjN4ilEAgNvNWt_CpdLZ6Uv7UCATV-bk8', '2023-11-26 18:56:33', '2023-11-26 18:56:33'),
(55, 'https://fcm.googleapis.com/fcm/send/ei8-kQMbl4s:APA91bEpjUW__yeZo25EmpC8dhRZMfCUyYWxDCR7-oRuD6X1sJ3J3kz_94PowIdrDV6vux8gbuAX3vl-cOAPVgv-oW88OY065k4O_PQOJUNAVJG9B9oGmtXNq1yRFrtvaWKTaJAWZw8W', '2023-11-26 19:36:14', '2023-11-26 19:36:14'),
(56, 'https://fcm.googleapis.com/fcm/send/c6O8sLXA37M:APA91bHuBKdlMSj04e-uAGG8ONl8FgsY55h-DQ0xURyw1yhPLdZKkwYEWtUIu-OA_MF6c1LJLE2cGgBkPxUO_dpKDaCdAXumkMV1OxxMoW2cTLQdl-lM5xqVi_sNfotrckm4WwZ2kubN', '2023-11-27 19:40:39', '2023-11-27 19:40:39'),
(57, 'https://fcm.googleapis.com/fcm/send/c9v2GWxhSzc:APA91bHGSqHLUUPBW_IfdFSEgjimVq-BeP-s-AsYwyxe6_1Ge-AY_jhhNM2ppSx19iRbInCwDi_fc6LIt6_piURPBB4yZl1UVtAZx2piNLw4ly7LKRkTIEMCo_2kd2SlqZ3ZPG-tRhhk', '2023-11-29 21:00:40', '2023-11-29 21:00:40'),
(58, 'https://fcm.googleapis.com/fcm/send/doKkY4IIuWg:APA91bGl21jT0RwqbJxctQscNun4s13WDvRoPgimJdx2ev6PZCC8s0z0_2S3o23MUylYKR3rIxp6hvppBaXsps1h0Pw4VSHhhTU8V9eKBsoXNwlZj8uQD6AGhPE2ENx-gGGCIwkUuado', '2023-12-03 03:23:48', '2023-12-03 03:23:48'),
(59, 'https://fcm.googleapis.com/fcm/send/eZkY9GDh3-U:APA91bEDtcATSFGKUXOAlbpIrkhgRBJ45R13QvCWxeRy6BwdCJRGOnNLUy9LKRqBoKuxVutDEYP6Ia1jtBDJiBvDRD4CiN3wDdW-NMbj38ZxJQsuKPUgX-E97mW5J9ur6sgxbIYi8kXv', '2023-12-05 20:33:44', '2023-12-05 20:33:44'),
(60, 'https://fcm.googleapis.com/fcm/send/folDQKuVhNU:APA91bF_K7IheVg2kG5kOT_06GKHu1aqlIN_DARYRmVrPToWDcf1a2S93-YTgj7seVkKlvPEEL1RK90sYrDACuNnYjhaevrPMbESae7ykfplHFcE6DaManUCFLIW-2aRGytJySg6bfUo', '2023-12-06 02:27:04', '2023-12-06 02:27:04'),
(61, 'https://fcm.googleapis.com/fcm/send/ddOMEiyWu4s:APA91bGZrGuRrcfklkns4EKPzWVy4m-j5Bwh-8joVVeVNnjz9KAgw_WqBBxSTMYtrYIhBxefE8j_bBO22H3BmUe3sAQxQv0g8QI4oSXga3iImeRMC5_-mLgvHweulh_tJX-WX0LS6civ', '2023-12-06 18:45:52', '2023-12-06 18:45:52'),
(62, 'https://fcm.googleapis.com/fcm/send/dH414_dzK2Q:APA91bG__UMKDA39fZ4rRPG7q7ppZ6PWFZSYsrS5LnU6F-eZWxm5skk7WhrHUELbhHiNTVkJKwh4LdfdQ7b_YtdrDTcg8AVajMX4ETAVOd8EE69CeTeSAR7T-krXdQfk3GfxxKBaqQ8D', '2023-12-10 18:46:06', '2023-12-10 18:46:06'),
(63, 'https://fcm.googleapis.com/fcm/send/dvFxRwnFS1M:APA91bEO02JItQyfxgMSNtaHDdfBuwM6YBSssYaqH6Gp-9zM1W43pv-_fZlbtuJmo7kmNdcqK001l0ZQthkjPRHkFcL-7zF-Kb5OHTsgGEHOwoIbUwWsJJhsn3W1oByXJ3Kz1EXZ9GmY', '2023-12-12 15:14:55', '2023-12-12 15:14:55'),
(64, 'https://updates.push.services.mozilla.com/wpush/v2/gAAAAABlfHkOV-qLaqWIW8dMkg0ytixWwZiV6aEr2NF8VUT4pPxR5Bxf0SALps1bVU20sjuQO75BAtDt8VAr0ALPxlYDYGxkWBm-6S0UUKPPfCNEkWqxDtXhOlPk5-PD7T3H3G8MrEV3veki66hAHjmj6tsrVsImsU7ODp6mDBF1S8levC4unU8', '2023-12-15 18:04:30', '2023-12-15 18:04:30'),
(65, 'https://fcm.googleapis.com/fcm/send/epTA9usaLoY:APA91bEkBjlrIJI--lCzSMGdfuG6M1SB-8YHmPYjsqAHNeOdjCQ9QVGn1Wow0WmG0DfeSlYuOW0xnj6H-K_K6cEtCViXEdyOoQm4ngKhnW9ZXwKlAyjXx8kj_NLW3hsgJ2HBh0KPRpel', '2023-12-18 01:14:36', '2023-12-18 01:14:36'),
(66, 'https://fcm.googleapis.com/fcm/send/fGLN4BP17iU:APA91bGK7-ukpAaJVa3Hgfmr0CmleLW9pcFjFAaDEyhJACTOhtFEJxT_DvEdxcsxW7NBDPbxw8Rxf0bcvQJhOdAESwGvlaP1s_7K9mRA-1PHb0dar7ntlhDCgcDrq1XBciusgNBzQbsP', '2023-12-18 03:44:20', '2023-12-18 03:44:20'),
(67, 'https://fcm.googleapis.com/fcm/send/dS4mSBjkTkQ:APA91bFXHsFHvqMJMTPASeLEUG01H9BKOabyom4J4EU8PZOs7G1lJO1x_d-xXWgfnXThCTpBryyxN2LPdVL5NfZWxnin96MXX8nM5kryXVQNaXzim7wHXMRYYjUALCpOAUHZUWSY8m6B', '2023-12-20 00:02:07', '2023-12-20 00:02:07'),
(68, 'https://fcm.googleapis.com/fcm/send/faw0GJEAH8Q:APA91bGhzlF_9M07UVChfnWdvQg887QkZZbqZaRX98vownaPcEaUBuzh0PV5HwlJQxdukJEJVU1_QoJQUexCHqF3nwNYJuQ8zKAKTxSLxvXzrhrS9Q15EV8hwZeO0p_wClFe65pEqFdX', '2023-12-20 03:22:03', '2023-12-20 03:22:03'),
(69, 'https://fcm.googleapis.com/fcm/send/dWoHEAhvrGc:APA91bF_GVn6zBGjpM8MyT3YEReWDbjiEy6oYBg0sPhznZaW6blMUa0eXg4azWA15jqE-MgZsu8WoZpT67dPxpGH2ZvDxBgytVwwFPK8CChzF_lPrbkEy0rRSjNk8sM5VLZiS85yUp5W', '2023-12-26 23:25:16', '2023-12-26 23:25:16'),
(70, 'https://fcm.googleapis.com/fcm/send/cgZAut8niYE:APA91bFA47dqZr-D8yetUSy4EEiqR_p5wzfkDfhIfbCqqOiJZdMhbmnl0QRnJWlB-ez0eDSPa4KM8z3FbTUbQQ5Gf7KV700vGS3q-5cKPpFzq2fUvmi9yaR-3p73x1U1Rlix3B8V20oX', '2023-12-28 18:37:08', '2023-12-28 18:37:08'),
(71, 'https://fcm.googleapis.com/fcm/send/f8mkPdFC0D4:APA91bF7qdaxcj9hYfiOmfWXoMgBJ2cRHequvy83mIOJnFNDkQ51AJhP4A1NMLtWlpeX_UhVWyQh16dj353aXr4ETmSV3uWemm8nu50iv76Sh9moPf8cZ4YifnANyNXp8L7BcZA0wGbG', '2023-12-31 21:34:26', '2023-12-31 21:34:26'),
(72, 'https://fcm.googleapis.com/fcm/send/cu8Zta68XIY:APA91bFN_d6ZpOAnOGX9sclbmvuinPHlnPqutq6x5tiZqQaY0r9K2lWs182zWgGtaUlCe0QRvuNmEZH9jPfl85O2MgSlvUtl_nzCGA9-aNL8CfM2W_309F4HfGu-Kkq_42WDsGbOX30l', '2024-01-01 18:30:58', '2024-01-01 18:30:58'),
(73, 'https://fcm.googleapis.com/fcm/send/e547euHNWcQ:APA91bHv-6CxOIRWccQd8dQO3zdecoHFl4i5FddsEZ7G6B89lCJNCV4_4YOCQlA1p9Th4vxuwPlxzCP4taSgUbEM4VTCLpyEQwLZyT-Q1SNG0NaZqivJu39ATzph9Db-dTC8RCnkaJDq', '2024-01-01 22:18:42', '2024-01-01 22:18:42'),
(74, 'https://fcm.googleapis.com/fcm/send/caWweFf9Mz0:APA91bHaYGVS2F9zMlzrMXJ7Lr2sUMVrgqIrizALwUJGIFgcUVV5eF7uZTFlpXfpPI2KUkq92-5Ok9KhzN4Y3Fwc7-8EjUrENvpYNP5ItwraJpVdX0fLRKXFNvbxfIHGq_1CHdfEXBFj', '2024-01-02 19:45:57', '2024-01-02 19:45:57'),
(75, 'https://fcm.googleapis.com/fcm/send/cd59cwyCDiM:APA91bGner4LpZwTnzK58fCL57awMTW279u3BCH5igWpN5ts1MSlyOHQV_dsQBwFpyJBBTixvJWKjB2ecqmH4PINJBgdA3ZlztCztNLsAHKasS502iww0h8nTiSbjrMnpzC8vRxoEMBr', '2024-01-03 04:05:30', '2024-01-03 04:05:30'),
(76, 'https://fcm.googleapis.com/fcm/send/d_vSGMADCRo:APA91bGJWGJVaBEBYHbuPcCfH5ueaMM2eeKiMkpezmOAJP5vhZuX8b1gmQlAg6VrwSCeh-77GwpnApFmhQ9iPxKDl0tt8mUzi2pdB9qg3qBMmznpca_85suxIdrSarul0-ElluqUm7-j', '2024-01-03 05:16:30', '2024-01-03 05:16:30'),
(77, 'https://fcm.googleapis.com/fcm/send/fAYFe9pD07Q:APA91bF-UNcc06ihyoCPV3aXAvSi7DFM8rms4QWzeU3Q34TvIm4hYwGZpCw7kV3mpQdTklC9nPJraWGA06DZ6L-AQAqMK7KbmVeVJgZ0t3nedUoFvKElGxDuwWuWQezPSFtOqD87uRIq', '2024-01-04 17:25:07', '2024-01-04 17:25:07'),
(78, 'https://fcm.googleapis.com/fcm/send/f36S5iz_rgw:APA91bG6sVTjSirZJADFJ8yqSWyPTEAV02iJlG6XuGkR3s4Tdnqf0pat0SVlHpQsi8H6uFB1YmMNpYteqk2dWlP--4Yn0KeWpXim2LWL6F1Maqj9u42B5GoiLbm3pqpEh_lOtrA_e-XE', '2024-01-04 17:37:23', '2024-01-04 17:37:23'),
(79, 'https://fcm.googleapis.com/fcm/send/fkWsAp61KdQ:APA91bEjolrammCmwliJjzOZb5zy6fqVJRnFGKEsV7amohCQOOMpaTTN-8RdBVcm2BAQX34n4kXuplN-7ycwKYFyOzUoMPGDi5JnaRdkREGJa-44V3PUlPDxtP-0D75R7Rn9zoGLMhNr', '2024-01-05 20:55:36', '2024-01-05 20:55:36'),
(80, 'https://fcm.googleapis.com/fcm/send/c2V6_StNLzI:APA91bHAl3ZjN5XXEYcFoUpGavwSaRvU2PgHNXkMBEBSwW6SPVkzKs7Su54bXuPl-Cb-eHq3_w67-I1kNA9WmMi86jQnucH_v96uJXZmnObMZdvsprC5604TKv29VRKRKgrJsL0Cc6yZ', '2024-01-06 17:39:09', '2024-01-06 17:39:09'),
(81, 'https://fcm.googleapis.com/fcm/send/en3Loqjo29Q:APA91bF0navtBAQFg_mvSfxW12HzSMROmZIFvPgXR2YuZBD0FSC-11lO1VN_v5g04UZQSYw7GwAKEwU_M35G0BcIZlTKBuKeJ1jLXhVk-exW5y-47fv9U0hvDaEiFoTyXv6g_OAwapYx', '2024-01-07 00:00:19', '2024-01-07 00:00:19'),
(82, 'https://fcm.googleapis.com/fcm/send/cfDVd0qXrk4:APA91bFKF9jUbSLeJGqLIHESNda56DsckI7C1tJ-f7yZm3_mzock5txYUhmmxtl1YVRuZ6OzROGSOPFzs7JtEyPkudbyA8GrITergaDuuucbnR2x9jwvEMIOcTR1TWegFQftn9kgreBT', '2024-01-07 02:31:33', '2024-01-07 02:31:33'),
(83, 'https://fcm.googleapis.com/fcm/send/ep5yBWA4Rn8:APA91bE1s63M-szzRzHAKUtjzQRZppbWUDVu7Gca2rCRXfPqxO0c4xlhzPv7JQG32lbvdwTLnShu9tYVqPp_ihzi11-30VWslXjc3XYpcwfb0uoCPQiDUTweZ0dZq794xpIL22-IvTaS', '2024-01-07 15:33:06', '2024-01-07 15:33:06'),
(84, 'https://fcm.googleapis.com/fcm/send/emUmufIo2AQ:APA91bGgaiaqM4q3aQRJ9SAw5KRiBWEEBOWVl9SeDDoua2Rg-PwPNvH8KGCWFbd_q_tCNxubu7hCHge_ejY2e9XIabZ56wkEcwitRrS9MlvZJ5YtprANTUqN24OQutIbUka27HdEU5Dw', '2024-01-07 23:10:30', '2024-01-07 23:10:30'),
(85, 'https://fcm.googleapis.com/fcm/send/eF8Z34i_-io:APA91bGazcLm2LikHxvfMj8LkVbFTwBXiMqnLrrIyzRy2V0qbwQS3JCV1i99zC55YxAuClYKPsWkavC1h2UxPXLXLvHn0EEXdr3HxFWVvc0JsIN-adW_iJr7dgfJO8qFp-B1lOvyD0QY', '2024-01-08 03:51:54', '2024-01-08 03:51:54'),
(86, 'https://fcm.googleapis.com/fcm/send/eDdAzYZY5fQ:APA91bGb-9AphFIk8hyZxVvFS0ffc-pPEy-AtEHmJjJEW0QNfFWPT1vwgwTh39vBYBDhbyYF7X6_VunRzBRGKXrqWocgx_gm5gH1nkbgv0XITDmUeaLFCgnMbN0w73xBwtPLIVidlA3g', '2024-01-09 19:27:42', '2024-01-09 19:27:42'),
(87, 'https://fcm.googleapis.com/fcm/send/eLBM_lv7VMc:APA91bEsRa-31WNQD_tr8EWUndCi_FX4wlR1u5THkjGLBkY3SgFrQgiaD6EmQYg_s_pvP4pbHV-aWaBsp7bRdZRuE3DWJS6ohbtdpz9V7sxNi_IcrKz0TwmrmJu9LXBfy1NN_4PRuG5h', '2024-01-10 21:20:37', '2024-01-10 21:20:37'),
(88, 'https://fcm.googleapis.com/fcm/send/e1ysdhfMNjg:APA91bHggNNFR2V3Og7u-td8yRGTSCPI0h8wxXzPGxh6ebMuOhY2YZy_AOW28Z5kXpJM275zUKwL-W8o1tGytoKc4dwLO1-bJi6knU4W5MnjdWtAxj9Ee8PXx-6H81fOUZ98eh9w7Jwg', '2024-01-12 07:40:52', '2024-01-12 07:40:52'),
(89, 'https://fcm.googleapis.com/fcm/send/emdwQg-qm7U:APA91bGiVPwqLCVGxeSCpumf9VP4VR8g9O-zvdxMPwiG1yzhu2BEyNKhvY6NXV0-mf6blsP0LzlaQuJgZDm6Nqi2VCBf3c3KPsOnrkRp5CiYjJ_MVyUoCDyAv340ZddyrIM3YjCnN_R5', '2024-01-13 21:05:34', '2024-01-13 21:05:34'),
(90, 'https://fcm.googleapis.com/fcm/send/eax24QTw4Mc:APA91bH5Iuqv9kBJo3RUj0Zu5K0qePUnJcR2hJj5k6uMDuwZogVbZ0_Etg6_4HANtRAovdAlDXj3wV9qUt4z_Q3k4_GYON4nck8vRGjyWkYc-h9-XeHppgC1n3w3G4cdoYJVgEQQzc87', '2024-01-13 21:06:26', '2024-01-13 21:06:26'),
(91, 'https://fcm.googleapis.com/fcm/send/fot74bDs79o:APA91bHCV5kRIZ4ru-M9kzKIxvf0YvxxPMxIF_rEXisApG_Ae-mZLs8APUCSjPy37Yf4xBj5aYOHFF0enX1YuJxPwpbJi_RtoAeIVeGCoaZ4lo1lamsb3GWsRAULdXtCzfUE29qC7T9s', '2024-01-16 18:34:51', '2024-01-16 18:34:51'),
(92, 'https://fcm.googleapis.com/fcm/send/cUYsJfeQkB4:APA91bH3I-PXDKyd-ooNfuR80S8DwJNav2a5l5xXVaACuPm8rhIYcw_r6WmhLQOdjRpQYYLCt6R9f69VgLQ1awi0KtD3Na-_Qn-2vUgOJh5pSmn9Uo7oasuvWMzLUknWGcNq8eyJxbrp', '2024-01-16 21:49:26', '2024-01-16 21:49:26'),
(93, 'https://fcm.googleapis.com/fcm/send/esVGzuJ46pc:APA91bG0NJJayoSAbLDJcAB6YOLPpokaYAIsh-zhZOIqhL5U8M0ZB_RFnFjOjwYlWKxw1RzEDb72VgAyiDMOFnzHOwHNlKrvRbxBDfh3qgdMM8EHq20B_9XU4A_OZt_PDU1AeY56QVMq', '2024-01-17 13:45:50', '2024-01-17 13:45:50'),
(94, 'https://fcm.googleapis.com/fcm/send/f-qWL8NEqIg:APA91bGHrQeSim72A18ms0OWfkxXUCz6zhccUklivYkkvbfq7zT2G_x1viTUvcbWrdavcOThtoZIIaGFV_oxAAE-RQw__GTvrkH2qA8t2g9ImTu1v2OLXAIfHURlZyzxyOum8We8rJsv', '2024-01-18 00:13:46', '2024-01-18 00:13:46'),
(95, 'https://fcm.googleapis.com/fcm/send/ee_CB0AXUNE:APA91bG_aFnBFjf6IjAucfantnUniMA80gFunlzOCnI0AyumDWdS8vLTKDUSiVNMPhmfdPjpHLYJY8Ic1_obFSMqp-pmWryKR94IOes9PXI1OEmQ73uXwBczQyXNLO58hMWdvR1kPLSs', '2024-01-18 04:46:36', '2024-01-18 04:46:36'),
(96, 'https://fcm.googleapis.com/fcm/send/fInmfAmrBko:APA91bExIqgv5ngokVPFJwNe9hvpIuAPbiZCCHc52Iy-hrGiQBpgl0P6WaWh1fGlFCmbmM4PqBxmVGHXwBbQDYOiOLDrQNkVhgEAVKQoQjsNNc3yJL5TVcf_FvGJ0z3qlLK6KIT9yW1z', '2024-01-18 20:02:38', '2024-01-18 20:02:38'),
(97, 'https://fcm.googleapis.com/fcm/send/f21l03tAh7k:APA91bF0s4TWeHdkMIZ08sTS-5CB9NlOtTIzHscotJgEImLa603AMe39A28p4j4vggBnqJKllSz3P9m6HHOlQxESwXu0wL2sPIs8e79gTNw0EhUA1nM7yUf1OMZGOHgtdxh6ZntdAp9p', '2024-01-18 20:39:54', '2024-01-18 20:39:54'),
(98, 'https://fcm.googleapis.com/fcm/send/c6obllD5aoE:APA91bE8_vlBmx_vSrK1WMGa0TqR7hF9gGoQgXnD-nXAjs69TxtkjCY1LtYXkP60FbEDyQ_wcIRrUuZFtJeKkQ3izanKBRU2jwgp_H9fzG0HjZ806bacVm6F9EgfjEq_Bqq3r12J7WZB', '2024-01-20 23:41:35', '2024-01-20 23:41:35'),
(99, 'https://fcm.googleapis.com/fcm/send/eaTMQWhZtCM:APA91bHV-GQd82t2Vh3BbxAF6s9DD1DRsyT9UOeE8rmm-ijctE9Vtf_5ub28ppI02OxYP5OOHfI1Lx0aFj1rVDS42k2OkpGlCLxMVrPTK5vGSMtEYaccTq7rdR8JGL8ZL5EK9Rrdff2M', '2024-01-21 16:43:03', '2024-01-21 16:43:03'),
(100, 'https://fcm.googleapis.com/fcm/send/fzBL16iyrVw:APA91bH57BygNpEYQFxLvK0lr_gXrlVxravvscgiJ8xWV9R6P0Gz7jj96-QDX6WTIHjjC9o2z9jtScaPfae9yOocJvqjW4EF9gZn5fReQn98ekpEZBw5F3-1nvKdMkaZ41AJ6tA0L2KJ', '2024-01-21 18:59:50', '2024-01-21 18:59:50'),
(101, 'https://fcm.googleapis.com/fcm/send/cgpuanXE6eM:APA91bFPgbWqa2MJzRzvMxPZTsUWb5k59Unp8uSTn6AbHmKxJMwfhzQep_0pI41bmtgBElYiwwp2EY8jqjSpsoHdFMUyHw3xrLmj6rVoQzrK_Tdji8tMD-2RUpmBRaU544fiW5wUntd5', '2024-01-21 18:59:56', '2024-01-21 18:59:56'),
(102, 'https://fcm.googleapis.com/fcm/send/cuN_PEU77Ak:APA91bFV0z0t6OFLoyCEkpDz6K_zUqvuQpe5RZkosLr4EKEHz_6twyxklsCw5I7EhmM9IbWyDfTOaYsmNMy56wI6vusHrB-7w1QhiUGPH3UGF1kFXy1vxDI4-6ZebVAhnUtHFBEDCwvg', '2024-01-26 19:01:11', '2024-01-26 19:01:11'),
(103, 'https://fcm.googleapis.com/fcm/send/fUZ7JxPNlIc:APA91bGPedHV1dN7r-OrGMKrjaULPOZyoDynkixt-Kp60TICR1ys0kDJk0079bU-2n0PYIWYP4v6esqj8DuIvbeUS7snRN0GsjzkrvJh5QZkTL9oxcJ4ozpfWSOZS4X_qsKCM1kWSNpc', '2024-01-26 19:19:33', '2024-01-26 19:19:33'),
(104, 'https://fcm.googleapis.com/fcm/send/eHZlXhqltDQ:APA91bETT4ssdwJtbHLZsKIab9FVJk7T-oFwOvmScK6cXFh0VHF22FBLYbx1nQemfNzCWCwRSCYBe55OklGj0wthJu1izdey3OBY6ukrJyg_HKdNZGl4OkfRBo2RSJ_uFm-qINv8nUFI', '2024-01-27 16:57:13', '2024-01-27 16:57:13'),
(105, 'https://fcm.googleapis.com/fcm/send/fM1FaMWGtc8:APA91bFfWeA0M7g3jo-N2FPcs8U6NaAgCOc51u2VfL6lScmn6XelF0G94rKHNSv4FIHCjASPfn-H2_l_ZXJe62zX_zqNTjBkXJfdQO3bT4IdESzJSNrh4FBnUCJ7snD-KAoMr6wOUNX0', '2024-01-28 18:54:02', '2024-01-28 18:54:02'),
(106, 'https://fcm.googleapis.com/fcm/send/cF1A5FEONs8:APA91bGpaJtFowV2nZjAfJSTKQr125tkRa-dp-zKVS0jXz7SYpuMWCx5oBignLN6_7Rso9_2fFVH3yA3CdwbXS2VOCLEYhdaWtRwPZF1N9lrYZCxq8VXaX2Pe2ZGi6m3-NTNzcswoB0U', '2024-01-28 19:19:20', '2024-01-28 19:19:20'),
(107, 'https://fcm.googleapis.com/fcm/send/ctN2A4E7N4A:APA91bEgMgKAvpDI8lwISgx5Em7-ZHHHLYyMO9_nB7bUEYdU_WALehvLTZp5_EuIA7hrIWMc_iNFrUVIgkDqwjZKKcz3b95D2Ef9S-SU77TmrbGEEfjz963wdHbCFwSFgde6dxSD7pLd', '2024-01-28 19:19:57', '2024-01-28 19:19:57'),
(108, 'https://fcm.googleapis.com/fcm/send/fZiPZrtUkTc:APA91bHwnHCuwA5UQbiypZbBs9JXO09dyzBHetC8bG-OEjgA9HmQsWyug_E2zPm6UQGbnGqRMtQHmyi9nz45cxYSQwrJjEqZxvJO-IJ5SThnehCUCW5L8AD4DI0jqcpfPnlj68XP9Pld', '2024-01-28 21:20:23', '2024-01-28 21:20:23'),
(109, 'https://fcm.googleapis.com/fcm/send/cYE9V00FfWo:APA91bFUdkqDvA6_5SPQxgEQ-TE6YUHRcwUV_2zyh7dJCu4MYGbEi8zE2AOSrXoj-rSEF62vNOma8JwZ-EMFUlR_pSH8jwmuqT1GZnqr2dJBtQFVBmjlqMXkSXqcrj65sQ_u9YDccx3b', '2024-01-29 02:02:58', '2024-01-29 02:02:58'),
(110, 'https://fcm.googleapis.com/fcm/send/fY6Y0jft7vE:APA91bF1ov8zK6QaXc32qtwZoAv6Yq3aWobgDbT9-Bls01io7R3-pxiPrJSe40wgTZwQ4DsmtVqOPySH7YjSuOaLLBNqpuR2TAGRHtcNL7BTp-BfQXGWRpW4O3vMUbmzf75hto_W9Xi5', '2024-02-01 18:20:14', '2024-02-01 18:20:14'),
(111, 'https://fcm.googleapis.com/fcm/send/e2504MCOjic:APA91bGAWTEkRAIudo8gpwabmnvUB-QasD5R93NTmUYOZBfiXvh-t0rJwT2A8V_15tvOPoGxh--9Fftzhp60y-6A-vhQeOD7BoHKZ9RAuCCbfsFe504g1yD-Wncb8nS6cwW38Lici0sc', '2024-02-03 21:06:24', '2024-02-03 21:06:24'),
(112, 'https://fcm.googleapis.com/fcm/send/f85jyrj_15w:APA91bH_RBl7KmyebW_-gGEYQ7ngu8H688h5nvqr4gc_hsYGkPot1va56__nztem3aY21FEsl8mFB4DeK3KeM0z1ZrmhN3Y7PSOcH-Q_BWanmZnaZ0LQ6EXzrFyPfr7_zEc4_p-Z_arB', '2024-02-04 18:33:04', '2024-02-04 18:33:04'),
(113, 'https://fcm.googleapis.com/fcm/send/eEbsJWGQ5H4:APA91bE3OEI7G6kGNhDTDdopatkW99U9-x5cgjZ1WXSuYPeNmzKLRyLv1yLdX5IKcGlioAn8CvIHisiVnl_ZtFIDOEqasqS-3DCilltuyEOtHJyAX-Jj0ChmK76Wurm3xlP-IUWaZPZv', '2024-02-04 19:37:29', '2024-02-04 19:37:29'),
(114, 'https://fcm.googleapis.com/fcm/send/cKGnfVW_ldI:APA91bHaCdRqy14p668ES1eEPWtube2Njv7tr_JdRr_qNqhpOUbAfSXd9GlN5EZvWf92TAXs97XpO4eKV5l-EFUWed4xpvLpv5AXWKRY9RwLA_pAhwSW15Hp3jIXGcBbROi543ezpoVK', '2024-02-06 04:31:55', '2024-02-06 04:31:55'),
(115, 'https://fcm.googleapis.com/fcm/send/c93rrjVsMJI:APA91bEKEZ21xzk4dCA9j3Xiy6NWIVVlccuSVhiua_UK3wCn9oprFYgLo5tQmaFp68FhGFdpOpH46wvu2J7utJhrnSJYhXtcY9ilDTv9AZ6dtGp1dQuPPgbwoGXEs3-COea1_X-EgmMD', '2024-02-06 17:16:54', '2024-02-06 17:16:54'),
(116, 'https://fcm.googleapis.com/fcm/send/c59bx6kX_sI:APA91bH5kR1NZuRvjo8bhPaLJw4MNCvcptbykzydAIOByd2QDTuCbB5TigFF-KKz6AgknEYk3NsZMtxocoofuBQjY5jEhEztZkVlLJSAr-A3PWChf1iLTVN2BvqLc5DW0C9N_n9baC6l', '2024-02-06 17:49:03', '2024-02-06 17:49:03'),
(117, 'https://fcm.googleapis.com/fcm/send/eZFP0N2HwR4:APA91bEHdygcV1yJzRMqddC1YncWL4hKusU3zctrXBqxZWKqKU7c-3rl1xyyrt1JLviKLGUyndAedUkNumORrJltrT50Mp7O6OIK0JrTxjurhSufhJGuPt7lS99xyybn7GvyQTyNavg0', '2024-02-11 16:27:25', '2024-02-11 16:27:25'),
(119, 'https://fcm.googleapis.com/fcm/send/d7J_CUvQzRM:APA91bFDqeTwJ-QhzXpiqX-Qr2d3MDpuphe49sbWciOOtRw-BLn7Xn5iYItr1LhQpWH7PLOfz7kjJBvluS2EfbLJsUfpAmUPdYLX_aQbhUEJk81xIhb5pl03xIOl0r2YtBhkWfLIjs8I', '2024-02-14 00:20:03', '2024-02-14 00:20:03'),
(120, 'https://fcm.googleapis.com/fcm/send/e3e1xltk_SM:APA91bGW1HmQMBvzZKvZK1PH61v1_VjqJdUBaquVqEI1EpCJ19GR8lLIe8nKTxwnXOvEr6N6D42_AcrxpzHw1aAf_pvbAavBjE1xbFQD3DqChPWpeGACvfj4o6uS96m4UuLZ9cGOtV7Y', '2024-02-17 16:27:19', '2024-02-17 16:27:19'),
(121, 'https://fcm.googleapis.com/fcm/send/dvAuKqFEOl0:APA91bHGB7NVhsZED4swMbmsMcSrzRw0y4EhJpV-xKyNxrJwBCyMzszwyHtjTaCLDb9xxbZtC4Wwgoq8Ih98f7X8V3dijfZYU1HTbeocpczAKb3HiBfnFIudDkHcIPRVWQP3AlPvfGjw', '2024-02-18 19:46:47', '2024-02-18 19:46:47'),
(122, 'https://fcm.googleapis.com/fcm/send/eTE8UrQki48:APA91bH3_ubhQmi1gFFR5FOSBvAC3ayzQZE3R9C_Fv9OvJ-gdirt5WN5_ihMABOHJgnkCy4gSkkHrEeGXWmOiF6o3tC534T7yhEgx948K7-B_nvHVEzMb6bcW6pDzDNmjyhyuTf4jvPK', '2024-02-18 21:13:53', '2024-02-18 21:13:53'),
(123, 'https://fcm.googleapis.com/fcm/send/df-nqS76aPQ:APA91bGY1Hx8Wi8lflp00uJF45kdewRhao4UKNjwYXwVCCC1wuwbdscefcwARyJbUGHQDNWFvjyUtjno0UDAfKFkmlgGeRITE645oMJy6AEfqD-QgI42GoDiTlttM3qs0iDxYBJtgOfv', '2024-02-19 04:54:57', '2024-02-19 04:54:57'),
(124, 'https://fcm.googleapis.com/fcm/send/cAoXfXGSUKQ:APA91bGBxv2KDknC-PItGdU4w3KRNuEAlt7zV4Di9CsXDs__y1aX2C1nVdMChOBwFw4vKmIMzp5ypc_j2VxjOrf7AXZzcm6w2_PxpyBwlkJW9ay5vvlaHvGSDtwiuGJE1POMa0SFMgNJ', '2024-02-19 18:22:43', '2024-02-19 18:22:43'),
(125, 'https://fcm.googleapis.com/fcm/send/fWsJIP7If5k:APA91bHLYW8fSpOOP1bk-VAoApnRzghXT9r5iimtNgZeN-XWP5KIysmu4vwuSNgqvZ5X4iJZfGfX4C0sr7KReYDdmX3s9LmtWDyJTa3mw7QvTnHMfiXQqO3Mjn77NUmbnjfjc6FEqUZX', '2024-02-19 18:22:54', '2024-02-19 18:22:54'),
(126, 'https://fcm.googleapis.com/fcm/send/e2xMVJAo89k:APA91bGJXvFw05sKvRy7idowOvnfo59q3BxfhXPTSaAL9Jii8nFZEX8LMuwUgmgjhzs-iDOARcMGTOryFsUmF29tuxmxzT1JqngLvlB-qGlqHUOrNLQ0NcXEf2W_iCxzHtpGbFn8y7K7', '2024-02-19 22:11:58', '2024-02-19 22:11:58'),
(127, 'https://fcm.googleapis.com/fcm/send/cO1ar5TZWoA:APA91bExhWIlw9Wz8bEbGjn-BL3yzkDDP-jw4pU2nvEeKjhTbUsoKQ_mAeRHUojLyWQZp3NharhiBZ-tLJC6ql-7VrOPcuqko08U6-bjAXK7RL-m3ejZMdpzOlS1FkyP7jgo30bbfl1B', '2024-02-20 00:01:27', '2024-02-20 00:01:27'),
(128, 'https://fcm.googleapis.com/fcm/send/eTKqREC7nJ8:APA91bFDgTC31NGcD-RHJlSoSkhJoGoSwrmkZgwAe9PjdF6vbqsR1sANY65CLfTorPmn_0rk-Ov1pHGf9GJNqMbUJcY5Aa4ojrw2KpeiFOYSHO44FOiwqLUn9KFXlcXHjrDQm8eqsrUN', '2024-02-22 02:55:24', '2024-02-22 02:55:24'),
(129, 'https://fcm.googleapis.com/fcm/send/eQEXR58u4yM:APA91bGNcdJ1Eg59vsVfJka1f1c6SvB6aGOreF0nx1TBnmviiqc3usC-fL4tMr1ENApqIBRzYrJPveXSkfcKCMGdn74NHO3133rJLVXYCkqzUN_tbUSSHC2TluC1zU_NRGPRzR7fIA_P', '2024-02-23 00:27:48', '2024-02-23 00:27:48'),
(130, 'https://fcm.googleapis.com/fcm/send/fqVYzscSnIw:APA91bFhTodg2KnVAoIPwCzihcG3ZuUon52_WUTI6K2_VrxaetSM5LGxIXM0QJ6hStu7ivz5_TCesovzTqWoRw7ynRSJ1BUov2UmBCqsVgjZhEOKT_K1mV0T8kOVqmGgR6IT9wHS86Yu', '2024-02-24 18:07:05', '2024-02-24 18:07:05'),
(131, 'https://fcm.googleapis.com/fcm/send/dZG4S7_2-qA:APA91bFCCXieRVWsxCOgMURXfTa42vNOqkb6ruxaWJo-5CimNzYAfwS2IhZJdSzguejhCmsMU1fEu75cxoSctWs7UslqdiCet3KVUmC0gX2ftx4ainggz4oxmAR-DGfg8v21AgA2nIVL', '2024-02-25 17:11:27', '2024-02-25 17:11:27'),
(132, 'https://fcm.googleapis.com/fcm/send/eqA-sb3-zo4:APA91bH3DswiaKNQ36w8f5_JHGzMmDlfLx8dGBuHyOWRC9HGGYewU6RKOZ9S_BOCBDyzsdPMzt6f9d0CfuZteJNugYq4A0fLRzOXHRTCgUv0riQ8lZezgpM2HpDf2DdyhfV8PbIBvJQF', '2024-02-25 22:05:37', '2024-02-25 22:05:37'),
(133, 'https://fcm.googleapis.com/fcm/send/cPwDFE6uRWc:APA91bEGDqOxOgzXiWtH0jdYaofD_zrFQNMAC6A385aF7MgZBxuiKA0Sc-gierFQAmb0pF9K3002h7HvrYIcJ4INvyzPbVHzfBbty9y9_ULSMW74hB3GP-BR3BakBwA6xfF3Iv4CcjCH', '2024-02-25 22:07:12', '2024-02-25 22:07:12'),
(134, 'https://fcm.googleapis.com/fcm/send/cDUaBNgnw-U:APA91bF3uPZ382B1GSP7TatzQ6rtLjfiqZIuoOvIvEjnz04Vv7k64o2w4KbG9G4YybN7rpluikYXGJernEzmoVJgZtLUayhoZLEz85lPyrlBvxV55KCPVNSYmkBktAunGPVqQwsOe9H1', '2024-02-27 19:12:26', '2024-02-27 19:12:26'),
(135, 'https://fcm.googleapis.com/fcm/send/fyAj5MT2Ous:APA91bFFBU0hWnu-1TsxCFZRaWo4jjK93UZWYPututhLeeNrPc45ZoqBz6z3wL7oGP2cUrCbTc_QUQl-Xco5jrkHmPKVdqixRpayxvP1lBGCsWxKIszrWvhv9UsyVCh5Cb5Axiq5d48x', '2024-02-28 02:44:06', '2024-02-28 02:44:06'),
(136, 'https://fcm.googleapis.com/fcm/send/daRqMzLXEQM:APA91bHZyLwbf_pxKVwWyTlhfYvfDUqjx3876DQICyHolIoBioofzEEI6vmYt_VjKhZ1Y2BBk07ZOtBDwxtHcbnDJWtcq7M6Y-AB_XtEtM4UP1gL-21F5Uhb5j3OwZhMabPRWh5wjUx1', '2024-02-29 00:42:42', '2024-02-29 00:42:42'),
(137, 'https://fcm.googleapis.com/fcm/send/dSxSr7CIdsA:APA91bGBb3kb-eLapSZ4GxGgfFSsPrInYimN28njwnrPas5y5iP_kZt0FI6T12qJvzLVTcSha_EFap5ssLrh9sgb_JoBV3m7Z1AtDRxnfPUOSrmycEmRwIyh9kk4eM2jcXzoPzeA4jK7', '2024-02-29 18:59:06', '2024-02-29 18:59:06'),
(138, 'https://fcm.googleapis.com/fcm/send/fdo5DtLMPjU:APA91bHOe2OeUEVdiXIlc-ovVTLEdcfXKgo0ICXR6J7CpEbOys03yFBIA6_2kb7Jk7TdYzKzrkE9u78Enokx1HAa3Ow_FUpt-ML3N0AOEXmhBsltTJhWcrW26HKNcYPS7K43h20IETNn', '2024-02-29 21:23:27', '2024-02-29 21:23:27'),
(139, 'https://fcm.googleapis.com/fcm/send/edLbFdmiuqA:APA91bEVVApk6LOcRmJ8gaAXJ0aZT7BjWYoM29DsbdWPgxmWTpfE_W6ZZM45ZdMBzKWArp_3omm0Hy9fbd1VZtCMLCsBNmtDta67ugH3iM94otGZOunJaYG2sLp_oWqeav1UsdqYuAZC', '2024-03-03 03:43:26', '2024-03-03 03:43:26'),
(140, 'https://fcm.googleapis.com/fcm/send/e8Xn7NMSs-c:APA91bGK0g5QgzEP2CKm7Jt87meDiaqBzWJPbuNYqcRYLjjqfcDuq2Cptopa-1G8NLOXUtqBMDs0_7YyUyZLcRVLz-GjJgZTwISOaRbgXAfhPTSC54taD3my9NtL_448L_KVzYpu4wYA', '2024-03-03 18:48:42', '2024-03-03 18:48:42'),
(141, 'https://fcm.googleapis.com/fcm/send/fMl5C68NQI8:APA91bGBvPIzPQavMPqN9LDMLWM9_UWFHfbTxzdAq2A2P26VjxQKhdjrQZyxBruPaPMJVa4wwPDEG2eRHbaH81eadcfl97h2rTX-wWg5GRZQlWIgt3UGj-gbT0jkXDTYfTBBajWRemkM', '2024-03-04 05:24:50', '2024-03-04 05:24:50'),
(142, 'https://fcm.googleapis.com/fcm/send/deYmQciT1Nc:APA91bFi-tWoGtMOlRPI0NLMTsdO7PgH4A0dxNqB2YBXPEvOhhT6Ww3Ad4mUgCkbSsvMKNE-Ml15w5lCCftjUhtEGRHdqt1KxTsxwoEnsS-haOkT2O-Dos2l61H77ucnkEexCcNBI8lt', '2024-03-06 20:06:37', '2024-03-06 20:06:37'),
(143, 'https://fcm.googleapis.com/fcm/send/drQ8DNJkze4:APA91bEpeKR4zrIe8oNMJrpmG4MuwT91uaYQisZ87UhmT_t5hWkGeEJZS8Ti6tNzDAfddi1aMsXeAKfcBV3Fpn-Nn0TCKQReYag0m4QNUUwkie4ci39rFbJ4YIZbIDT59Ea32K8k1frZ', '2024-03-07 18:32:34', '2024-03-07 18:32:34'),
(144, 'https://fcm.googleapis.com/fcm/send/d1SitDfpKHo:APA91bENd-TAX9wZtDmrPrOjzeFeOxhqs_4OvULCXL6R7w121srGXD-Goa9bgQQWC2bEr0Gqzb3DUx2EQGH8N1xLgsDh4_FZIzuq8fNvw-jt_z0S2OjYIHjKscvQ-bo_SyrxL-BBKOh5', '2024-03-08 01:17:43', '2024-03-08 01:17:43'),
(145, 'https://fcm.googleapis.com/fcm/send/f24n5Ablg8U:APA91bHBr-E9Vdty86pquglK7u2erwHXddy87H___2Ilf9BMqmoohA5m6f_jdgB203Fr46phFopgX_cBssPmfAMdj-IToM8V6nWW_iDsER6yN0CwVgWI6XhlHVmyvOFSfbvaC30K2Evk', '2024-03-08 22:09:17', '2024-03-08 22:09:17'),
(146, 'https://fcm.googleapis.com/fcm/send/ep1Qt3RVAkc:APA91bEz_owHjHa9U71Vv1ls0YiL5IGuC-MLEIrGKaO9sl_hzp4eHU5sn7IX3dxOT_dyrLVRrAvIfBa-2WSDt7xHmmVd3gmpCCshaU3eS-tUhXjSMyrv0dfTANg093pfnMqm8rEy5qX4', '2024-03-09 04:48:18', '2024-03-09 04:48:18'),
(147, 'https://fcm.googleapis.com/fcm/send/e6bu24fRHNM:APA91bH573HT45_dZITzBOmjlwNTk3h2lqREXwupWFDCttmqIy0fs2Kq4gXzWEU3EQ8YX9t8nyGIA1qoHXT4MJ5IAf9P297BXfBP2FQ0dVOXWZK8iCA5ou_QtWXplhrDj9eAcvbcIdkf', '2024-03-09 04:51:10', '2024-03-09 04:51:10'),
(148, 'https://fcm.googleapis.com/fcm/send/c10jhpAWdrc:APA91bEqmJJydFzxuFJmWgy8koMMj96YVimqacTxXKxlZGZu8N3CMBclMNnMrQaLnc0uYNT5HF8H-1lH9a1sRNJbc6DOWULRLtyy9Ear57qN2oObcNtbZqeF25qEjPZ8IhMZEzjiA3Uv', '2024-03-09 22:59:23', '2024-03-09 22:59:23'),
(149, 'https://fcm.googleapis.com/fcm/send/e6Tc686R-qA:APA91bEEYX9ULgGzcOlLW7inQrEazIWKuSyi6C75yq-IyFNmlR_ybS1BKoG3lvQ4NUqT7XLqOXLDIFt-fnuaCxwSaZIVi31WXq86Rtrc3uOydR1bz1RNM-h_F0JoJCCs_vrub8UE6mhT', '2024-03-09 23:53:57', '2024-03-09 23:53:57'),
(150, 'https://fcm.googleapis.com/fcm/send/cMGKte2F0c0:APA91bFEnLXihFNKtHzpJ4y0Rwan9P9ADMAvUJAem4q4vR0uE8Qhllu9XfdCAvYKDkrUChPG4nmJgphCXO9CV09mnq45yJ4fRWNDroiXnICiEte2t6ZptT3c2CqJrkz9jdLg9e2lA-aV', '2024-03-10 00:05:30', '2024-03-10 00:05:30'),
(151, 'https://fcm.googleapis.com/fcm/send/fXv5FEo_5iM:APA91bHckC9R8WV1e9YWMnlpyFo8Iezk01Fzg1iWPfBXE7-LBQinja1zQxyUFO5Z2TaJT0wvSwF1JCnfg9hdQU5HuDcqFJxH34xuUu8JQw6bCUhe3DpbzcqHnwAsKLAEgxpMd1TbVJjB', '2024-03-10 19:27:23', '2024-03-10 19:27:23'),
(152, 'https://fcm.googleapis.com/fcm/send/dle94sGOHxQ:APA91bEAI9q8CUUArxV5Rf1K9yDItMhgSLioCQ3SzAkTxq5gO7XbUWSWnLMNp5qQr91yiNiWQnfilz_3ORgSdZegl-FiY4IXgNDggkTPqfQqIN5WuNxjE_ZMKOGI-lI0Z8tELY5dILfw', '2024-03-10 19:27:36', '2024-03-10 19:27:36'),
(153, 'https://fcm.googleapis.com/fcm/send/e0Pb-3DT7tg:APA91bEtW7uTDjomk9KU3YwPTCNCfn6qNK35fEjX2wODUpXo2XZ7tIldthSh75N3XidR5kAXl5q7Zo_36iIMMp1URFbVD0yJoHupvtvlF6u-a8kYc4AbiPBWiI3iw-ZxZcazJSf4VC_M', '2024-03-10 20:20:42', '2024-03-10 20:20:42'),
(154, 'https://fcm.googleapis.com/fcm/send/dowFQ6b8bwo:APA91bGogkNAd0sie_L7jqgxaXoaV_3ZhrREcTrlYG-CVJPKPVZ3OkKZ3WNte9f1rMSww11r_gJ8eq6JU8fCL_fxgzVh9Qq-6qF3ZhMkE80Qztr5Bfs3XE_6yuxV7VPhyp0EIAi2jqWA', '2024-03-10 20:20:56', '2024-03-10 20:20:56'),
(155, 'https://fcm.googleapis.com/fcm/send/dqB7XKWez7Q:APA91bFvBVRyl3Y3CdY86vJ00RlR0bmh5PmJIquTuy_MwQTbZYn90KPDV952Ztc5tLs631vCRi8IGoPcndjk8dBGwy3Rv7S4StFM8Ol5bOfFhu85kccgH_M16qMo_giCkNptM_7UWObK', '2024-03-11 19:35:04', '2024-03-11 19:35:04'),
(156, 'https://fcm.googleapis.com/fcm/send/eey8RjIAB7c:APA91bF6qhALbNpXjO6DOIfzeIOL-J0-LAAWELJauSnD9LNjEOYgPBe69D4lW66_MEjcx6y9jSpflSC6mtWj9lkUVo1PxPX52ggCfi4kh02uYUTYyk2yI0u1v6OzKr21sqGID3PDtjyd', '2024-03-11 19:59:08', '2024-03-11 19:59:08'),
(157, 'https://fcm.googleapis.com/fcm/send/cj8Aqwwr2qc:APA91bF6JdiFrLxYa26QmHh603dgeV76ux6F2f07ohLhEUnny0Hf3SD2Ej6hbL-lS5uP-NpfE1WvGyxobSWfh_-ml6Rka5h1kKZNE5JyZDi2Biwi8EWi-_iDFRPsJFY1jQCNaKP76znp', '2024-03-11 21:00:09', '2024-03-11 21:00:09'),
(158, 'https://fcm.googleapis.com/fcm/send/eed4dLpqRHo:APA91bERPtTYJKZXdg3iJqh0Xh3e2KL1hv9DcNpfK9GPEscMTaVwzE33JLZgjFHli52qRv_vI2K7wzZivlPswUqoexJuHdo5oNffVtXqp3THrDrBnfnIBUFD_JZt8lTdzVjXRtlfRTjp', '2024-03-12 03:43:27', '2024-03-12 03:43:27'),
(159, 'https://fcm.googleapis.com/fcm/send/fypbp7LasyA:APA91bE5L59gX2dXFp0lhUcM06yfaO-Hj2Tn_q5pP7fwQ9p6gQzvv22WfD0ouRhD48wOEul212dtB4PEZiRr-DyPZo25zKytaIM_TdUt03sEUjxCSpoy1cJwpDTq05kH19QQy1dp1gkw', '2024-03-13 03:36:39', '2024-03-13 03:36:39'),
(160, 'https://fcm.googleapis.com/fcm/send/f-anD4xTB8A:APA91bHrEGMiInd0eESAENLy-YOaiONmYvNEV34clRIqct3_Q3zfzbncJin4uZYAJkQmOAJxJOAtv9FoUZYgd8CLCMhyYNlg0I7lcMT6tIWs7HrfAgfeffwZXwfZBly4TkqxQiBtUoy-', '2024-03-15 19:44:13', '2024-03-15 19:44:13'),
(161, 'https://fcm.googleapis.com/fcm/send/eQbEfeMhTdA:APA91bH8Jxgq0lIxtmJ-qoodH4LGqlBgxfakgiUzV-XPkH1aBtAwOjNFIz70YsadlkkzmO0AONJxrbztY8UX80ufMzZmSNtTN7ABQSCUu2Vs8_x35DYJisxOUXWeK-yaKBwFIBEJKGRc', '2024-03-15 20:09:26', '2024-03-15 20:09:26'),
(162, 'https://fcm.googleapis.com/fcm/send/c3tUNe1jmXA:APA91bENqkouypUBEDaYrjfRQ8zaUE64Bzj1spKE6cmPMHslBWbNT8W7j5NRXLeq6NCsAJ-U-r8qjxnTsQP8WLUeNtQabuqydVKSNQQJMsq9jh7VZU_iZDLokpJMkemWL3hYMVCwxjdK', '2024-03-16 16:35:42', '2024-03-16 16:35:42'),
(163, 'https://fcm.googleapis.com/fcm/send/ePsI-zkGeG0:APA91bFs2rtiPUBg7LYjEgHp77mu1IxBY7ulI88T8VzOc8qM4GJAwNmPWLf_2tBwjLXZf4058TZD154nc4B4IZJ7jbdcBRFJdE4cdd3r7RfUQMXzjVAUjq9fc8rOc0tUpZl8ryL-XWi5', '2024-03-16 18:16:27', '2024-03-16 18:16:27'),
(164, 'https://fcm.googleapis.com/fcm/send/dZpQe1-JHnI:APA91bHj_Uoz-FqAu8wrPdMmCfemRt2i63Gtga_54Fh2hdXtr_Un8Rhze7A2DQNB4y1mTpeFOnrzIv4hFACna_Y-kFIe38rFIU1tDQxEA_xR_lO1XmLi_y9FC7bCLBQQ7O6DgGkutPPR', '2024-03-18 01:49:04', '2024-03-18 01:49:04'),
(165, 'https://fcm.googleapis.com/fcm/send/daDpWNNTvG4:APA91bEmZZh0Hm-3BBEW62TGUeDVi7Ke0yxd8DHTN-RVQsQADC6uBV7UBNT5w9z3BYF5bLiaUQgb8TIoT3nBtVNlPCoJe9u45jHIvKfNudhpJDgw1E5tj6hklIEFqROKeYr8aOG-Wvsu', '2024-03-18 18:08:43', '2024-03-18 18:08:43'),
(166, 'https://fcm.googleapis.com/fcm/send/cztepTe6rQA:APA91bEM9KhjSbXwmaRNKqQse_aCBjAyv41MiwzenHwtZJH-G-J7oNOXG_mhawwH2VBjdE6DgLrBWu55GF3fI3UHlNXYd8fd1ntuUpYmUlX4v_-gF5y0cWi4qAOfaveXzvEvMc8sB98G', '2024-03-18 20:56:30', '2024-03-18 20:56:30'),
(167, 'https://fcm.googleapis.com/fcm/send/eZW_0eKkP5I:APA91bFXHu4Mm3os_ZMglGofT-5mwRW7s7KnBMHVDjUKRL89u0SUPfethfmVg2uJ1exP2U-MQ8jAI1ufNC7PML3ex9KIaUQE-rRNbEMPHODc302AOnTK8Z5E53uJLZ4pcnSgFuEM_yQr', '2024-03-18 20:56:51', '2024-03-18 20:56:51'),
(168, 'https://fcm.googleapis.com/fcm/send/el_sLh6fcoo:APA91bGXqAihb7URO6QxyTJ3wCUMUvKkRakeXgDfzSi4-M-GFNNVH4FdBbYX1IH_xN30vLZCh_fVwuQ4A1WnAhW9ElCgaLoyspw2Do3h2Bfv2ofWw7TLbZw3nYxZf80snzXSnYksYset', '2024-03-19 03:55:11', '2024-03-19 03:55:11'),
(169, 'https://fcm.googleapis.com/fcm/send/eC7m-UV0sRY:APA91bG8rBMQGdJwRhYGV32IXCaL_m-kFrFTldFbQuI4bYyWYRumu7JTzeVeBZAenWi7soE0oOK8D6A-UT4T6sTZeck7hjC_fudFJ3Wt7aRJ06mUjQJI-f3o-C6AUdn1SYKGTOO35iAO', '2024-03-19 20:05:47', '2024-03-19 20:05:47'),
(170, 'https://fcm.googleapis.com/fcm/send/cZ2KG9CupHE:APA91bGRr2tuIc2mMkpP7iSNvvoGJ0BdRIXotwR_9ILkcoycJmjUcWSEzz38CVR_mClgLbuDlFoWrJP0F8qTFocwOd5my6uNkrEUbZg4Ot25rO3fU49USc5h2-KooUPp1RXkO6iufAl7', '2024-03-21 18:55:16', '2024-03-21 18:55:16'),
(171, 'https://fcm.googleapis.com/fcm/send/c6KKowp8Vww:APA91bHlqZTPvXSV1sj0rp0IWK-R_3iFBA9AGg2tZsG7SXfpEBIrmd05273jxy9u5XRuTNKcsuUZ2OtMihC-I9KRGsGR4Wk_JL7EwOw_HFItkU9CM50ESetC4iV5JuwvT70ImawCHvgt', '2024-03-21 21:08:40', '2024-03-21 21:08:40'),
(172, 'https://fcm.googleapis.com/fcm/send/fELDdZd501A:APA91bF6TAZZ-xYg4onzRLXnNPvWFaKRDHfGHkWo9Om_7M42Tehn5y6js11GzIWFYP3iiDNsriqOGJWBCkw726oR78iN8w7ogFdTESxs5t9Rtrg8eqCGVcQFs8_LeNkjAVVapK9nSgRh', '2024-03-22 21:20:14', '2024-03-22 21:20:14'),
(173, 'https://fcm.googleapis.com/fcm/send/fNasAcMZmps:APA91bGJRjdwe2T39rMp8FoKp0mh5vNSLgQNdkWE_0iiIH37TdnL4OTCCVyDUJU2X7Di-IBGVwg14SkDQMn9hYH-Dc7A1Ys1o6pyP4OQ8KZlm0BCWU7XoJxSoWDcVZXrJ0_X_r-ovWW8', '2024-03-24 18:13:10', '2024-03-24 18:13:10'),
(174, 'https://fcm.googleapis.com/fcm/send/eiPjiVlwtPk:APA91bFg46AtKuQXaVrgzC3i9H_eyI9Jw1Pyhhpy_qwO5nBdokzGcbMPQrXi1lgVYII-9_6RqGHjmKpu95YysQ3Er44cu32_Lz1GPYSf-wWk4K9PYHN6pAx2rxteBq3xV1yHpQXf042I', '2024-03-28 18:15:43', '2024-03-28 18:15:43'),
(175, 'https://fcm.googleapis.com/fcm/send/fWFTQ2GOe0s:APA91bG1RPGwCAMgM6BdcBx3ZfBlPCKbD0q9B2-lD7FyZqGUShJArl52T6t_3HGlvgYIhjNGlNTmOA28LegIScWidDClWjJdBrQx_FU7NkrXkpwR5nmZNUAAwESPLZs3T1pdDWYXg8iW', '2024-03-29 05:12:44', '2024-03-29 05:12:44'),
(176, 'https://fcm.googleapis.com/fcm/send/d75ZCMFrIV8:APA91bG3R6AqelkJ1ZtyuFxqf3pnZtv6s2JlLak_bFExAr6W0BqV5MeYNsfQxWAkgHLZ0wCp19TnALHiUUW2QgqqlV-lETUp2PD74oy2HoIshtMyNzfDdRUj0L_CoBQ7Wxh9l0eIvQoE', '2024-03-29 05:13:05', '2024-03-29 05:13:05'),
(177, 'https://fcm.googleapis.com/fcm/send/c8bCUA5tqNw:APA91bEkC4zmyB9MwOacKDnoFTqQrMUWut5klmco8HK5C2V65KCqW_kcC3jnDp9IpcFCR6YZQOuDBqVd7qHrQjPYkZgK1qERqL8nWHqAWv4ntRkBw4wjNtJJQGALcA7J8kVsEQTeg9s8', '2024-03-29 19:11:46', '2024-03-29 19:11:46'),
(178, 'https://fcm.googleapis.com/fcm/send/cHH_qsWRw08:APA91bE4PM5XuHVhVRFRsEqBKh1o_IE3vfNmqX0Z9qZ0b1Izkg2Vr-SRpIQPYii7oSBF1fwCzJNcGk8OGsCx_i2cmmqiBRb9p-uhZIUuJcgIcY0-uupSXgs2BFjuizQgUSqWG170Mkke', '2024-03-30 19:10:21', '2024-03-30 19:10:21'),
(179, 'https://fcm.googleapis.com/fcm/send/fF8vnvLIpyE:APA91bGZabRbD7uIRiIxkqE4LER3ragc6ZJZs9RI2aJ2P9vzBm7lCb5JjqS459eT8lhnlX80QTUVrYqxhHFCC8MrJ_s6JeKwmPJ4VIMD6DGLsF8RcRactFm76hZrdBny49RPLmbtJ76W', '2024-03-30 21:35:55', '2024-03-30 21:35:55'),
(180, 'https://fcm.googleapis.com/fcm/send/cJyIp2LM4sY:APA91bHmaArU0fU0nI_q_PGETXuYK8jiY9xnVE4VNhBGr2W1TCGg3jwS4T6cg0OIYjqfAiV8hhPpPZ2J3iATvGY9BJSLo4p0jXvVLvATM3OvEPQ-Cc76wGQJkjSxcKN6qL6WgYdZjYQ4', '2024-03-30 22:29:09', '2024-03-30 22:29:09'),
(181, 'https://fcm.googleapis.com/fcm/send/eGZXUh8kirg:APA91bG6cq29169wojJF-7c0XunFnjm-JOckNMLyQjqN73FIb1GjH8-mCfWDJGXRlF_vzbAHNQQhCM6kltIbAw_PuBzWBjD61Ud1A7kMe5zcdPeMYZWOViOmljH9u2LMJCtGE8Kkh9fT', '2024-04-01 13:06:21', '2024-04-01 13:06:21'),
(182, 'https://fcm.googleapis.com/fcm/send/e1ZIDI3B_mE:APA91bHQ4yVaqWN6gHVmLfihrOc7y4bfgVOxoW4WcKJgIi_wvxUtIsWfFBxZHYBk4VCdEddKND-wYOL3b2iRXxOg0-O81yxV61PE648t08US6pj7MOjqRTG3jUeC32e7cXJXytjx1D2U', '2024-04-02 01:44:54', '2024-04-02 01:44:54'),
(183, 'https://fcm.googleapis.com/fcm/send/dEjfupt1bYo:APA91bH6MXxJju6GAbYiJv2mPLpq5TF7Jkv4oC0ky3JOkfKuT2q0v-B5Jq7fEGiDgiRj87l0qi0HmD_HWpUwEIvdoTUW0BOon5wQ64avICwaVW6Fxc0rHBE9-QGY9vOn6aR81_33PJ7x', '2024-04-02 01:45:23', '2024-04-02 01:45:23'),
(184, 'https://fcm.googleapis.com/fcm/send/dUt9Ny20JeM:APA91bFqxpnQ_t3ZEcMIK-8wE6EuDIEEEl4f2Hfl5eaHgw33n2aKUH2svBuw0sQRhtoItG0UOcd7umkXLur46AQB8mLV8yu-WzC338jGSMh5ljOZkEvF3nYyXrR7571Yq06Qtl98ZOkE', '2024-04-02 05:21:11', '2024-04-02 05:21:11'),
(185, 'https://fcm.googleapis.com/fcm/send/eaE9fRxN3IE:APA91bGITwaPARLissBy7ZoKmF9rwVXH00LP3fi5lZtsuSAuZqQSZ8xbKh4nnsRHKA3oLt69KP1VdTsvw42YJMgKIQzcgVarufoL2MN7OJ4TbaMrT5LIiMw-hlm1s2ZuNeEZUZ9mmRNQ', '2024-04-03 18:29:00', '2024-04-03 18:29:00'),
(186, 'https://fcm.googleapis.com/fcm/send/eKVMbFrlIsc:APA91bF8CMVvxTP7FzB1SnT3Bng500-JCxHUdlQQh0jrJI1e9ya0sBc01uNEaBm0aKyMPv1E8Lzvic9hbtVyZtn5C0E9NoWl79MzkcQVBzWGK5j_ZXfjMQ2RSeelKGg9XqA691T7LIcQ', '2024-04-03 23:32:15', '2024-04-03 23:32:15'),
(187, 'https://fcm.googleapis.com/fcm/send/f_tlNmuBaa0:APA91bHm37WgKgJzCrVpwcFgcz1C7YxMYT4-2oCncLbA4AYjc7vo7gmCURqSiq69Sa5TgrxwifegIQgBtjWflK7Nx5s_ovYul3xonwV-VySEjUsbqosgThszT2XAeLkyGBZMKPZGN9Yl', '2024-04-06 20:49:12', '2024-04-06 20:49:12'),
(188, 'https://fcm.googleapis.com/fcm/send/fVrPdIO-wXQ:APA91bExhQdCHUK61_4TfNLY_x3MZHDzjWfVBE4oOxui52gGga6bgnd2nddDxWqp1XYhyitXNdreei_6TG3YRANqtoWcMnl8XVX7lo-f5r1krsF2rDgdTJgs7lW2UrwBgz695FX7OPAP', '2024-04-08 14:19:19', '2024-04-08 14:19:19'),
(189, 'https://fcm.googleapis.com/fcm/send/cqGH_UGaG8M:APA91bENZ_F4H5PU_W98SWDiCvuFyHdrjiuQpEmdeOi1tou0akXz60kV17ITBgvGZbfhRLrErFnoamByV6ToKab6V8uBL7Qs912_q_o6tAdW2Z12i5vf42QuDGu7nUklNdrKyzWyV49Q', '2024-04-08 23:32:55', '2024-04-08 23:32:55'),
(190, 'https://fcm.googleapis.com/fcm/send/df3dF2_iHjA:APA91bGk22PoIoseRr3L95ozYp07NkjPzWW0h4BeqKCW5XyLlUWkmCROxcm_gv_kL91QEF88NjunG5kGBG--DQMd7VGMSe5paWDpaQon_dmtELX38VSsQ9YV3a02sLrxe75jwuyAX2Wc', '2024-04-09 16:58:30', '2024-04-09 16:58:30'),
(191, 'https://fcm.googleapis.com/fcm/send/fFlV49IiZvQ:APA91bHIbviWvCf7kbXjx21BP3mHLX2PQPb2ymqmJnDbcB_HDN2C-zurtfnbtGRIp3Ve4fqW-K3WSqC7GS2PRm9LHm0Fx968VOmlK9hnhvMJKSWB7Kb2mmEs86wdo_sljY8hsjcr_a7w', '2024-04-10 18:07:49', '2024-04-10 18:07:49'),
(192, 'https://fcm.googleapis.com/fcm/send/eCFvbq18f7I:APA91bGpj0ybb1Lfw7ruYyTN1K0Z6a-B9e_TPHmXaHyyxrM1lpzkC_Ilp4aHNsd23b3pvS1nfmeU7XoynRyrR0CYIbnTHOL9c-RlUiPRKHLdGVJ9zkc1nYn_H3xmrKoTRPDEBy0nxuGT', '2024-04-11 18:06:07', '2024-04-11 18:06:07'),
(193, 'https://fcm.googleapis.com/fcm/send/fe2OOmdP7dg:APA91bHkdcfYMjPpJwdDKU37JX_5AjH5aAqSqpEj1elB-6-d6YkHalK2Yc9SnX9TuHVhQIEm-JeEcmmlR8mNoUB8IVYHqmYU0QbEdj_gq3d6ZSm3qfAwton6N3mwYeoYwcThTasn-u9K', '2024-04-12 17:50:27', '2024-04-12 17:50:27'),
(194, 'https://fcm.googleapis.com/fcm/send/fHColfYabmc:APA91bEZhDjveGsd7_DIYsCISLvJCmpOPsVSMgD8X4db6BAejiXiSRoJ3cqwO8h_JNK4qA-9u1uXVlZtPY0m1mcoh7OuOftmlstRzWYi_NSJw9FFeMLACYd00muv3B2h7FOG3fAd3BED', '2024-04-13 20:14:40', '2024-04-13 20:14:40'),
(195, 'https://fcm.googleapis.com/fcm/send/ewdCkO6S4bs:APA91bEOyEYRn60pWLKoAWJvajX6iUmyf62qSSMOaMChssCYEQyZgcGzL3iOFOyL5FUZDnN8UZaYYy25dvqhVt-JZfKLacNt0KIoT7PX4-mNE1w5VAyAOeoBzWgS92ZJ5SqPxZjk9q2M', '2024-04-14 21:35:46', '2024-04-14 21:35:46'),
(196, 'https://fcm.googleapis.com/fcm/send/cqDxriq2cEw:APA91bFWDc-u52YQTEArBMBm9pNOq4k_5R-u7hOK3BJPicjIlnbxwVKlbby662tJb4G0qeVFFTuB0T-cSaWlKP4OTG-dPx71c1amnYzpkKVMYI_Brlv63Bu8xxgdS4aNihwShYboviqb', '2024-04-16 21:57:56', '2024-04-16 21:57:56'),
(197, 'https://fcm.googleapis.com/fcm/send/c6gpsuEgvA0:APA91bEQZTgYBUcU1ziQVqUHf1N1vvB43n0f4SAcru8it72HIpWYcrBrdKHwyEzkwMRdTDIzRMDJJjnlPF-t_iGUmtWvueCct4Tnb4X7Eo4rmimFBATxu6Q61K85F2vJHFA0DHi9376a', '2024-04-17 18:31:23', '2024-04-17 18:31:23'),
(198, 'https://fcm.googleapis.com/fcm/send/fNuIy7SSJ3k:APA91bEXiHCmLdzMWL-10Y-vPEd62FCBvMfB12QfFv9hbkgx-hObFRwwphe33b7I9hkZnGpMuYl6WoZpNgyi91Cy6ERqYQFBgpGXFGuvMnf2o9B2lLxGQoEx5S_Jc5T9hrynCbiax03Z', '2024-04-18 19:31:05', '2024-04-18 19:31:05'),
(199, 'https://fcm.googleapis.com/fcm/send/cVv1LXuEWWo:APA91bFZO7YV3WmUQkne9h4D5BHGl528xPfZYjSBeLVUJGkAl2tvbTgTWwMy8WhF5WrBWOkYPTL9UorFYqmZIiebsR7hiqc_zlnMUJeEDI8xW5HnMDjLKqaEU9vzdF1xVamXE_U7tO6w', '2024-04-18 23:21:30', '2024-04-18 23:21:30'),
(200, 'https://fcm.googleapis.com/fcm/send/f3MdMOTnf8A:APA91bHBJUT2wLO9ld7YxgLZIpdafubIUNruGrDuqtZIXFPUtfMiMp-ctkzOhk0qJ9d4U1mCZ5p8Fb2V4KLgD8hSSIk1r05rKxSVQx9x4SMVaXb2QE-GDzstNvVOEFcg2XbNkTFBpS4r', '2024-04-20 19:06:04', '2024-04-20 19:06:04'),
(201, 'https://fcm.googleapis.com/fcm/send/cHlknIfa6mU:APA91bHKYzLIxewstWjWR5_u3gvn_T6qFgvv9OIFKcLEjff0dJDcB4waamCX7594saI5Fm08kCDkrvamnVHN52KBHvE9YEm5v2DPKUbn5LRqICGmtPbBF6IsqjHipAunuEdnlLf_rgkW', '2024-04-20 21:23:44', '2024-04-20 21:23:44'),
(202, 'https://fcm.googleapis.com/fcm/send/ds8P7Toi_JQ:APA91bGIpZyUBUz-sEsz5lplvkIFEd_dw3ZcZPRjGoVVbR8WWQVl9xO_M_3GKzuNUa3Zd9Tgi3MpSjraNJCDvb5En_lSmH1spU4LIc3t0zR6osDyWq6GWAg_vXWpjS9aT-TWyk7HENRD', '2024-04-21 00:43:08', '2024-04-21 00:43:08'),
(203, 'https://fcm.googleapis.com/fcm/send/ewbAy7SOb5I:APA91bH-CXd_OSxXgfN2RsECyyptBRud6cBNnntafnEDhIKDlVSdl6nX-EA5kouC3N0ug7Z0nE5rT0XH4OjlYzg_3EguObeeSXRJpNjhzMdYalZZ_HnVsn7XY_zo48sWACGvRG2dkqku', '2024-04-21 00:45:23', '2024-04-21 00:45:23'),
(204, 'https://fcm.googleapis.com/fcm/send/daQmlF68WJM:APA91bGu3bdtsqUHyMcTrnM7SHbyanlsIh5ZRs5jQ_ube9UEbgBHTiHXmTQYMFt1NikqG9OhvkAkRd4MHCXIBZzYbGiLI2KiluOjLoG2ssDZ2O-zQRvcrus7FOxnt0kNT65f9rdemTAg', '2024-04-21 01:37:51', '2024-04-21 01:37:51'),
(205, 'https://fcm.googleapis.com/fcm/send/dgyW7XF3ygM:APA91bHnU82JbHDvmbUb8Mb7osRm3xgtPm5kGohwlkLKOW08WMaj8q5bJl20PiNGQTxF7DgfQ97sN43rTVGYsfhqJefhaap0kJObPzKLyCigHmJELQkKx-dKYhPv_UabQl5pGw_ZSdCA', '2024-04-21 20:05:05', '2024-04-21 20:05:05'),
(206, 'https://fcm.googleapis.com/fcm/send/dH_-RkA_y4c:APA91bEb7-nNS6A1MG9amKTy8_o6Uu6spwqZf4esCyM1j5x3KwayWnjsT7nWDxKOxFhYFzGkVlg9MpXB6kMEHlwaWok7Iuk9Wq2P_jAnUzmw9QwhZ9e7sjjTgHPLcpvOle42klbtT71Y', '2024-04-22 19:40:28', '2024-04-22 19:40:28'),
(207, 'https://fcm.googleapis.com/fcm/send/erRhI1QGP_E:APA91bHkI4yqB7ir54y9xBfX8lW3gU1afUVCEaFFZmd5aPs1MpZ8OjIwyKl_kuXT5OBO5hFPAdEDIhdpRcJ5Z1ivV3svC0BxkrojYgRsEFK7ogg-lDM7j3ewecYL6vIdWadPi0z3NKNB', '2024-04-22 19:42:28', '2024-04-22 19:42:28'),
(208, 'https://fcm.googleapis.com/fcm/send/cJNIB-rymAk:APA91bGbqQYUncKojy35OoJ6-PfJzO0mjEz5dIwfs5egmGZRp7xr2k8y-d_Lw4kxboynYLKQrUNBUg0TpfAVGa7y-zBUEvrV1WrEJqsQv3ZIuAmsavV9WxltJpF3hOPydnZyPAR_des6', '2024-04-22 23:10:14', '2024-04-22 23:10:14');
INSERT INTO `guests` (`id`, `endpoint`, `created_at`, `updated_at`) VALUES
(209, 'https://fcm.googleapis.com/fcm/send/fCMdqRgQuY4:APA91bHJwCFQvtwd8OCEHdPNBGT2pgGhoD0QzV5h7zoEE5UtbGAxVdaDy_tiCPSWkTz72oIso2urYC29pk5Ibp0oTSgLna0mycv6HLBQucVL9AdZNdQF7NhMi7Nyf3MQGzTo2epqkXu_', '2024-04-24 01:23:26', '2024-04-24 01:23:26'),
(210, 'https://fcm.googleapis.com/fcm/send/cgwEN6RG2LM:APA91bFmmYSgy-EfrxUK5rfqm85nE_Pgr4mnqsdc_lUH1IMNg7oZ3ixvnDgXr6QDRaWt_Le7KHuYRlbKIY107Uyz-UKrYEeuxTrSYuEBycvcJKP7kEGHxNaJOKwS_fcHbA2AJPy9saNz', '2024-04-24 19:09:13', '2024-04-24 19:09:13'),
(211, 'https://fcm.googleapis.com/fcm/send/daNxIq2JhVI:APA91bH5lf3f7_uCTWV7lPp_f9or75SkzSECMl8w1d0TN5QzbGxrFQ0jKsXcuiK5FnqZVhamI5EzVx8Ho1VjnO93JRtpI0XdZNJgV7AUjp1LHaUud_99TfsyoQUValB_5ihdG16nazh1', '2024-04-25 16:01:29', '2024-04-25 16:01:29'),
(212, 'https://fcm.googleapis.com/fcm/send/dSi7cDmLIfk:APA91bFHO9hozpJOQJ4SWPwUyklFOdIR-nEm5muzMn2C1pEQzpw6-RxxV0dhpjL-3grWvTkb4BDUIgEkb_TPxFTRlmu6FdaA-lK63Qlw5vDqTgW8KSnFaj05BzIG8sJOWxMMzLJQh35f', '2024-04-26 00:00:34', '2024-04-26 00:00:34'),
(213, 'https://fcm.googleapis.com/fcm/send/d4zW9Jnb6bY:APA91bGSeAWVCPGzFs_HZ3Co6-6DSmLYU2DHN7XbOxZBKB1INtVd5hjZYNQhDtM4uTJJMI-o3Hb4vZ9-_WHbWCh9unlBv1oB4266_6xhPy34x_yqNAGaY_Jm0OBM9ULE3Z3HNptFqtkf', '2024-04-27 14:41:16', '2024-04-27 14:41:16'),
(214, 'https://fcm.googleapis.com/fcm/send/fHihaPG_D7s:APA91bGJN_2FW1iKeR6ACW7cykauz2xfTgUKWXi5-9JS93k7ksd7hz_yr1pqfgq5mxYIIU3YOShPJHJlb7ag5SSx2HNSUBvdRajiB8jGNsNH9-jSxBYvrBpuzty_6lLy4m6hW931yDp1', '2024-04-27 14:46:31', '2024-04-27 14:46:31'),
(215, 'https://fcm.googleapis.com/fcm/send/c2R_tOrSTgE:APA91bF--HSu7EB9iYXc64Lg3joNFztrLEed6wveP2XjTTeFZdb4ZQuvvLHpRqEgLqxGYB1ZUyDWNJ1gD_RsdFqatniQ4RedoyHp9CL_RkAR7eHaRZ_Qejx-MwBuxACTLL50mzQm94J1', '2024-04-28 23:53:20', '2024-04-28 23:53:20'),
(216, 'https://fcm.googleapis.com/fcm/send/euDtioH5Mlg:APA91bGW4ATkl_0DBQ2MOgrEe8OJbqOEyjXrV-YPfB2b6aktvEZgL7wvJSeHTcI39mNmGtIj_9Rf6TRGwoS1O0iJzJGGBWBHrtHrn7ZohOv8ZkhcLftKCcoemB20Ub-pK1k9dQfnyoSL', '2024-04-30 05:52:26', '2024-04-30 05:52:26'),
(217, 'https://fcm.googleapis.com/fcm/send/fnURjJ6gTHs:APA91bGhlJ1_8kUzs_k3jITJ2bTSGnV4gUt1_U-Ai2dsKPS_brY5UNzO7w0J9fRikLlnPwVfom2fVjbxC1E9qrZvOX8jOJO_f83l3FwHgQpPU9nuVCIIE7-pQTj2WZN4stuwAKcFfIhI', '2024-05-01 04:26:37', '2024-05-01 04:26:37'),
(218, 'https://fcm.googleapis.com/fcm/send/eQ1HaIiBQrE:APA91bFv5dlHQCGm0bqP9WBmH4aOC3xkR4LZioVNBCQ78dK_bw-Se8SUF7Ulvta2plBrcZsIthMa8W4tcp0taPhbk3_pBoDMmDs7ox8xhX6oQn_0oUAUowElEqwML7DZ6NuWegj6CLA4', '2024-05-04 20:15:31', '2024-05-04 20:15:31'),
(219, 'https://fcm.googleapis.com/fcm/send/e9_KkDV8bTk:APA91bGt1QREiE80Q4Wj2iYfFoUtyI0fuCmtoVPziLA4TTu0iouUHSt4gHA_17sTYz1WUqjBDjoYZc-_J7NT4AyV62lAnTCwgjcG71S8BS8o6EEVYtxvBSQCfkdGK3syh9QiG5bHw95I', '2024-05-05 00:30:56', '2024-05-05 00:30:56'),
(220, 'https://fcm.googleapis.com/fcm/send/cHdcTlAECKg:APA91bHlJdpGdsHGRknAa-HSWgeug0zM8bvQfY4ES49aiZ3m-1O72A0TTrz57naanJyO0LtEhOUz8nfAKLv9NvsopkkcmwN7keIdZ4HrtvTpQxg9dowA-0NiqtpL7M81m7AzLLKtGvJz', '2024-05-05 01:58:40', '2024-05-05 01:58:40'),
(221, 'https://fcm.googleapis.com/fcm/send/c175nomEfoE:APA91bECdarVYabIbvG2INxhNbt1_VjMtTlIb9oUUuFk5_QDc8FjB4ZX9QrnEfKxLL_K_QqppT9rqkvGaDl8H1vXZf6C3jQRHvmF-1wnpLqeeDNHHe7Fk42QyxzyaDXnbn5JMyXBuZpU', '2024-05-06 19:15:03', '2024-05-06 19:15:03'),
(222, 'https://fcm.googleapis.com/fcm/send/fkfCLX_PGns:APA91bEM3_YShMG-TDNDnhG_8wIFBDpKMag-IMbsQW3Y13UjbJET772wBJkz0mfqXF979EA8MPEkG3W1TxLJQg4Yl-O907vy3UnDRoxBl-o4Qz4GTkybOKGgYokXm-aPcdgXxOCitOfl', '2024-05-08 06:25:47', '2024-05-08 06:25:47'),
(223, 'https://fcm.googleapis.com/fcm/send/fa2ZN0kLVYA:APA91bFfilTehcrMQQteRJc3ZCj4Tx5L6PisWulATWl9XnbRknAQfn6YFfsZoXxnX8ZJmlGwP6qO3jHS3mmteLB8gr0CZ5EARxKjZWKjZVYUd-GaD1iUOrJNkUdvn6Tamgv-w2QBSN-Z', '2024-05-09 15:59:13', '2024-05-09 15:59:13'),
(224, 'https://fcm.googleapis.com/fcm/send/f65hJ2RAU1E:APA91bFghyxIuXE9YA4pRrVfgtiheMRMmZFAF40Wim3RYXRowGFaF5x2otYaWCPp6qDWM6E7JF8F4SgaD0yCW-govwRQb90Rlhc8qcggJJdEdFxXgacChAx9ljKXn84902PMQ_m793C4', '2024-05-09 16:46:39', '2024-05-09 16:46:39'),
(225, 'https://fcm.googleapis.com/fcm/send/ePbv4Cfp1Dk:APA91bFlLeXs10oOAvlLIf78u5JzODHDU9AY8cfG1IcOUZfPAV5Qg1G1KIdUsHzZz3BNYigEjcoiPdMtf2gvqZJTB2pWKccP8EjFqSAKzBOmntsWvVPWGx2utvUO3fkCH19GsTfh72Rk', '2024-05-09 19:00:36', '2024-05-09 19:00:36'),
(226, 'https://fcm.googleapis.com/fcm/send/fALGmpmiQJU:APA91bHYx9EfzhuIrbPFJoNhU0hzCeJZi37wVAwRwNo-xe_gt4w95XNzffnuWKAJzRit63m7h4vYDJcKxvgIhkZhN3-ZxctHm1pvo7hXbzgYVCrTf7KxGTvT-kAz6mUhUcEcHfMAf3DR', '2024-05-09 19:57:07', '2024-05-09 19:57:07'),
(227, 'https://fcm.googleapis.com/fcm/send/c8zkDJoBKlo:APA91bGHU1GN_ooDWOPVaPnvmKWeQt34XC0AhPl9_jiucM1Z7OsrtCEd5n6mc84aaNLZDsdLnj-TQHVj-iGTRPsW5aJDhxp8jLL2h2dq43uxBcOpbhGM3m2L-7EvMH4e0ugE6HtMkc_O', '2024-05-11 20:46:59', '2024-05-11 20:46:59'),
(228, 'https://fcm.googleapis.com/fcm/send/ckWxSweGTuo:APA91bEjWyjs1S68zMRPyysAiy4VVPF4RqfmJx9zQDYGMie2C9n1XOU4wLy9Blbp6o1rw2MkqDB0l7irZM9PHXv_n13vyQVsGjdxP2cvAslQweVNFrh_EuWGTchvtaFdCOg3OHQm4Zkm', '2024-05-12 19:39:27', '2024-05-12 19:39:27'),
(229, 'https://fcm.googleapis.com/fcm/send/dK3uauhGx0I:APA91bEvAU_KfbHxTyl-vSnts2Am7goOz9Lzlg08uqKnH4mjiXgz-PFBmMwXuzTLDcDJJtN19FeEyjgl7eSZrmT_RUIX6C9YvPXYeeRqsKLj0Y3QV49zV93p-CzW5v1ISupeRZaCrqrb', '2024-05-12 20:23:53', '2024-05-12 20:23:53'),
(230, 'https://fcm.googleapis.com/fcm/send/fsW0RMZ4dl0:APA91bGPUZ0zulBIaOkRKfxnF-EbNhIIN3egJTysVGT_Z9ZYJSyoDRpReizvVESJghJq3-lhUo_FL5btC-kYa6B_4QU3oq5gE0szqeskfKQSxzOrVoaiK3D4bW2bo_mDIEJTyxr2uyVx', '2024-05-12 20:48:53', '2024-05-12 20:48:53'),
(231, 'https://fcm.googleapis.com/fcm/send/fcTr0AS5WkA:APA91bHo0JkOV3bhibjWtMxpcyw8DuUIlJtmvNacVMCQdCChZgmTpv77aS3eSSjsphUJ4vucg6o-rP0C2-MbHYlJjlAfGx7Rna5C7dsUXPqAgUxQ0z9JDoYWUGb_crHb7MCOfG3s0cTS', '2024-05-13 00:42:46', '2024-05-13 00:42:46'),
(232, 'https://fcm.googleapis.com/fcm/send/fUBpuDYzD0w:APA91bHVlgAjccU9v1o13j98DPXmsN9BQCfJmO_ZES0ajjCc4MQkfyujP_8nS-fVTfcQP5ernw38vPp3X9rgsJHvqbXp2NuoNvAAqWD7yx8a-Fhn1De3lk7NdD16IvtVMpEi9sZ6vA1q', '2024-05-14 06:29:52', '2024-05-14 06:29:52'),
(233, 'https://fcm.googleapis.com/fcm/send/dY-RN_vQbN8:APA91bEaWweDGlaZF_Xlkkyt2VssM7JEAYFl3kwh0FPRKMsA7xBU6ERb4q4g5u-DYlq6iDTsDrsevNMQR79-rHRXFMSxIvgSn329GSubIoGCYkQ1XguMlBBeM3WLOSLtlkQQuKsk-t6m', '2024-05-14 06:30:48', '2024-05-14 06:30:48'),
(234, 'https://fcm.googleapis.com/fcm/send/ceHrPiuM1Ms:APA91bGHVpU72LN7uOssJB2TCbXOjdlXCMeWp41YtgOukPtYgK4GAP_q9T1W91vU2yr3R1e7gfXGYlaVcHGgLruDEkow59KfJNng8hw32OLBA-RU6euIWUXq78GWKPmrLUBxlVSx-paS', '2024-05-14 06:36:10', '2024-05-14 06:36:10'),
(235, 'https://fcm.googleapis.com/fcm/send/cN-ajBJs2Jw:APA91bEIem9h0y8BF4GG9yDtNHS3fjXuK6MIywJS_GpPkM9KT042OeqgCwg2xp3N4Tev5ciXwgj5NRF-vbnJfoi9TsQmQMlfndCO_0r2s7wAHJPfe255OvrzsvhcpRXZQ65PTxZbt519', '2024-05-14 06:37:16', '2024-05-14 06:37:16'),
(236, 'https://fcm.googleapis.com/fcm/send/cl9h4Xe6syA:APA91bEv0k_7i3l0jBjxsa9gOXpn2YIuwYfS5TyZdfmkIccfejm5G9o_Q3r0eKBqGDPik8z_LM2lUkV3oKVwIiXU7L8s_fSdmgYMgtE8AgyszEEGIY9JlcNo4NMfqb9f5E6I3griJ7__', '2024-05-14 07:05:13', '2024-05-14 07:05:13'),
(237, 'https://fcm.googleapis.com/fcm/send/fV12-wCxEvU:APA91bGRtud5zboJXempn7-id7ukr4RnXl3lhIK41gunZTZciK8gFdeuidGEi3n1_FL8Kpc0lvrI9lXW1v_3KwtKf44gm4X0JxzSr0dJ6oN2vICduMk4VtaEM3crFtDB_ZJaYlmA9OmO', '2024-05-14 07:05:37', '2024-05-14 07:05:37'),
(238, 'https://fcm.googleapis.com/fcm/send/edULBSw8pRc:APA91bECqcgucG5hw1L9nD7aH2PANy9IcFgMEqcmYzdrlenXBEctVIu0bCTrK8e6y2DoEihRuUcV2VOJTFKQPQ96mGAOFEzDTbtAcoSy7FZK2DHbNf-rp7AUYkeYKntE1EdVJ8OnULgQ', '2024-05-17 04:49:44', '2024-05-17 04:49:44'),
(239, 'https://fcm.googleapis.com/fcm/send/eQ0Pm3GXNtA:APA91bHgt7K-9RO1XOwaS5mKOLL1LHctLf1qXJwnQq3wACi0WF-lhmxHPyf2Pg6IBfDpeLL4jtW-1ge6hK-W80TBkrbKsMzhhQHjy2dmS7otPY2qTnIlyPk9CE7sUTZy20tsM20G7o9i', '2024-05-17 06:27:07', '2024-05-17 06:27:07'),
(240, 'https://fcm.googleapis.com/fcm/send/eTXcrkIXSRk:APA91bGYc1L3a6AzJo15HKtpp9BebzAxkOlkfv6WLAo2fCm16gBcs6_e-XaxujkB52jHOSMZShd9tPw8fxG2g-2HIGALjyBVJi6IulBtPGGi7Z2odKT4KYBU0HpIeo0_819khJHkHD6t', '2024-05-17 17:53:11', '2024-05-17 17:53:11'),
(241, 'https://fcm.googleapis.com/fcm/send/do8Mc0fQyHs:APA91bHh8tBASgHgHvQBLR29qJiWSxJ5fq0blk1UsxDUm6tPCQMaOd-mLbshOGujbyx62DGvvi-lFOEQGSkyMXO3BKY1YLDPiq_6wyVdqbgPIs_bWb9_1NZfUYIqKB33CFHYJSNKuBhy', '2024-05-18 13:05:12', '2024-05-18 13:05:12'),
(242, 'https://fcm.googleapis.com/fcm/send/djwD96rz9cY:APA91bEvi-yX3LidXZqm06sfINkqAmYLMX00-wcEM2Oxvy8pSctpXO9EgczBEgzaS0gpO_gYjVpkFel7j8FC-07snYDebIar1Y6bWbtXTSoK6cB-b6_vdstb5HUcU9gl7WBIa_JASOWn', '2024-05-19 05:23:19', '2024-05-19 05:23:19'),
(243, 'https://fcm.googleapis.com/fcm/send/dnhkhsYrzbY:APA91bHSC7_XvqpY2rN5qZVycaPOSPUGdwu94YQHJO45zuWW_YYKMdqtspmLlEQJCXDVdDGtSOuSvZOpmJbfifYQSXPMWcs8a_QlKDt9DR_aVxoj2NzOQ4XE5MgsqcVa77YiIe6hdRnI', '2024-05-19 05:24:06', '2024-05-19 05:24:06'),
(244, 'https://fcm.googleapis.com/fcm/send/dzZm3anvM-w:APA91bHPCgnv7irwdM4Tq66dD1m1V-4mUCRLOpWXAa0zrtNRawewwwK_ER5n353LpbUfHdYt9byTOLqkaD7t7InztbPNAlHlrF5MB6_bJ0_6nHK0rOUTo1NNrvftBVM75Fx6uSJDUuij', '2024-05-19 05:32:24', '2024-05-19 05:32:24'),
(245, 'https://fcm.googleapis.com/fcm/send/f0GSEt_IRBM:APA91bFVJf74cxHAZB_-npb-fo1loHU2AN9rvDQB0UhkSzxSaTnPXng9B1VvTWmPw1Jyc0dqdzmW4oBVXnC12umrikXq6ur-MxlK25UJGKWQaRXikA7eLW2ZzBeVRJPXGJlqCGNa9OI6', '2024-05-19 19:22:31', '2024-05-19 19:22:31'),
(246, 'https://fcm.googleapis.com/fcm/send/fcyzfrJtt7I:APA91bFvqJppndWJS-rW3wDGro75BQRg_4GXcLyxpAk0STmz3XlTeZyh_zd2JVc73yHE1ef456TdX_6M0uT-9Ip2HZchIh5LeFpY8LtoEXTH8kf4vSoygRmsdKg4FTDqVDj_oYvojdXn', '2024-05-21 00:35:10', '2024-05-21 00:35:10'),
(247, 'https://fcm.googleapis.com/fcm/send/dVWQ_geRUPA:APA91bE6r-n1OY_6MlQLFgDhS_gHHO4YhgWfERoJIYVDDRwaNYp46KaijWbN898kTYpM2fV0g35t9cIAOXNeJsXd71ifS9QQUCSQm_lAVVUSEw5QCV1Fs4yqENkI5Oj1mwJnEVU5I1-f', '2024-05-21 21:19:57', '2024-05-21 21:19:57'),
(248, 'https://fcm.googleapis.com/fcm/send/cfi5FR4sd0E:APA91bEw3JUgGZgBqF9i28Tr-xj9CXwoKpnetISP8GBt6NQ4PpXjLR9lWlcmTiHbAEtpOHz6byUTc9-FUf1KCsxkYKEGA8qQjTnsZwbz1aBl3GL9io5vLBdVrhpnLCrWuAs8WfzfB3Ek', '2024-05-22 21:15:59', '2024-05-22 21:15:59'),
(249, 'https://fcm.googleapis.com/fcm/send/e8xJ8hnIZ88:APA91bEKVbZW0I-FXuhGwwCZ0pOxzXaqUjDC2zzEzd7ai_Z6DCzez2MTT_dm3T64HejakyZTQnm9bkzgE-RS76c8Ypym_BZ0akxdo1FffsdG-RvEYsWia1E128xQs1zF0fHqng61BcMA', '2024-05-23 01:27:14', '2024-05-23 01:27:14'),
(250, 'https://fcm.googleapis.com/fcm/send/cYxXv-ZEi5k:APA91bHKyDd6AkZOFLlJBHrfW0Fn0QesYQX3KnFdrVvDoDPvYw8KkmWzcAYcS8FVCx6uDuhSEVLW5kYaH1GDtaclllvw_UzchYQNvW_dvnbkDllO3SMHYThT6aigzIqE82gX3Wf5fHLN', '2024-05-24 03:10:51', '2024-05-24 03:10:51'),
(251, 'https://fcm.googleapis.com/fcm/send/ewHU4Y5xUo0:APA91bGLpYuBybkW9NOfabH85gd4OahBqkt_eUuZNo3bXgidQJlVcexBcTJ4ok6aBCNQBPk54Y11JfC8IT6apfasWg7jG5QD8L40L2NpVd7vKpoXAXNJe3gyIkv462cT5IeWfUfr4PZz', '2024-05-24 15:44:15', '2024-05-24 15:44:15'),
(252, 'https://fcm.googleapis.com/fcm/send/fg3ppXDMPfQ:APA91bHSpTu_3b4aCtUjLYH-RuCovS1I7sz4ZRGBT9tH6M-BFqQUARhHlD_yMEc1Fbk3YvLJamjsvkG6QetmXASvH4rh5qceantfjkRAsseoXIlL-imfLnmW8L4x4BRA68hJMLAB46kv', '2024-05-25 07:28:55', '2024-05-25 07:28:55'),
(253, 'https://fcm.googleapis.com/fcm/send/eXc0wCTcq24:APA91bE4oKCUW6-VW-E8Pj0sjXZucuumUjQKJa6ns9O-4dXDT-m6zzRkL_fUHnjefOvIctpzwO90wavZazr_Ps8CPjgreInhmxbpRgkPjF4xtPJIH1pub4CGaU4GUYjmeLe-KOVZIHKz', '2024-05-25 17:27:53', '2024-05-25 17:27:53'),
(254, 'https://fcm.googleapis.com/fcm/send/fc6yc37DeMo:APA91bHGMgryioSGOpHgxP2P5q34Qr3_tKA5FMfnv-gE6Tuq_bO11t4T0X_otnMWzwISAeGCXau9UhNa_GMDGLMvCRkaB2uFI30-7ch3Dud7EaRPp1k1PjDHb_Jd-flUXFsMuENd3HJf', '2024-05-26 05:45:48', '2024-05-26 05:45:48'),
(255, 'https://fcm.googleapis.com/fcm/send/d1HOCY7THZg:APA91bF0BfESQiWiPi32wC321nPlHZcX_xNz7gQiK9fct0hSp_BsODed-JMN0UeUMOs9izHJr5QcTRDDZj1KC331fq8u1m345H_EAK_cWYLa0ZHSiDeEFvaTh5mXWOdXkwLEe0Ee8qWV', '2024-05-26 21:45:26', '2024-05-26 21:45:26'),
(256, 'https://fcm.googleapis.com/fcm/send/dvvMXIlbSSY:APA91bH17ICSibsubMo2182j4lWGNtfVnbmn3cTyDs1tdWxEsr9a4zCxehDXdr5lrGozrXUej0c_2DDAkssaTIKQdg-6CjykrMQw3m52Jk5TGvMabqlZGX6bf0NANLugZyBXk_rgFybK', '2024-05-27 18:26:18', '2024-05-27 18:26:18'),
(257, 'https://fcm.googleapis.com/fcm/send/cov1M8zFTDo:APA91bFyKSwp498K4GKn99ErZRNipkr09nE0YwDlzbR7KWUBNXriBMHUH4iXtK7jw05r3MFwzmpEeSpKTCMpRPGBtJWk4N7yzPVCCUsiQwll5SB4aE9Tq7p_dmpu7389mNtiSIh3MTkj', '2024-05-27 18:29:29', '2024-05-27 18:29:29'),
(258, 'https://fcm.googleapis.com/fcm/send/codQs3I9zAk:APA91bG0_FQH_Qq3SeeWil5vX83_TolumASLeblcDoWpUTNhWl3XYblkptKlzMuZX_OgoEd6NTkXg_vvOD_qWZXfFos8NBzJ4z8NkmYlLKUse2_9NheOafo7KhPUaN7mt0eDbTIqz8vV', '2024-05-27 21:02:01', '2024-05-27 21:02:01'),
(259, 'https://fcm.googleapis.com/fcm/send/cyH-6sf29YU:APA91bEOohSxyoeaFOIo13EvidxSbYaE-AdQV0d8L8fjHuHe7bPdTE2BvwVqTpoENjNuYnBVtxfoW2DUBZMIfMwy2VHq2WzuMiS7TDDpXOXcT2QL0Ub5gykzjLEuuYetwgEtkIbJR7tx', '2024-05-28 06:08:53', '2024-05-28 06:08:53'),
(260, 'https://fcm.googleapis.com/fcm/send/dgpAfCt1U64:APA91bE0xLIDlfyyHAxaHDHLK1MaER8Mu1TI6qwuZu-aFvYWuoC5sgU0GlTGARCK8bsaROeHbqI1u68lMOFo8cWlP2Psv3hLu43UkWrK1BdkgT8rk7mm9Qh2oq09HPhn5Pj_nFEArDof', '2024-05-31 19:01:04', '2024-05-31 19:01:04'),
(261, 'https://fcm.googleapis.com/fcm/send/eCUDRlmGwxo:APA91bFHZ_QGvhMeUpvyqN_ODG7rVLvgqyhkIaCGptcCfJbKUvHmUYdZw5xVKo-g1b0wbVrA3JK1apMehD87EME_Fgky3EjCDVP1ivChmhsQ8OLrmnhgUsasqYhNgss9A_vq6eRnu0f7', '2024-06-02 16:49:56', '2024-06-02 16:49:56'),
(262, 'https://fcm.googleapis.com/fcm/send/cnMKsdyhY2w:APA91bEWLU1KLpO0Y7OlTvblR1Ptb6w1W64KNTU94GMtWsqmWDCgZG_KgkUGbQrBW2mOsq4VhlNjXtnzuQ8QbFzWybEspPBcPoAdqIkd1b1xAO95stEcGj2sEiETxVYhj44QaE45vHyW', '2024-06-02 19:25:28', '2024-06-02 19:25:28'),
(263, 'https://fcm.googleapis.com/fcm/send/dBym-H4l-BI:APA91bFJy3f7pIiST35GycBHysztYZiem6eKkA-xgcYnJTXiCH3bYGynmgkhXt2vQj85Kq-4Nn0b6IK_o4G5qNx_m39Hiwgzxjrn-pvPsDEQLdHvDs5AOu_UyCxOYZR7n7qQ1kEySZar', '2024-06-02 19:34:47', '2024-06-02 19:34:47'),
(264, 'https://fcm.googleapis.com/fcm/send/e6NkqBYcwao:APA91bGbAiUMTSxD-ARrAQ5JhUBChvoZcoICzW8IXxB05m4XWbH5p4Lv6xqrQCUNq_mJVY5NkpInjJ7nSbcuBR3rPKQcDxRZfZ6cpTg_tB3QinwxF-7pLARornthsN17J0a9jnGL5FWR', '2024-06-02 21:36:10', '2024-06-02 21:36:10'),
(265, 'https://fcm.googleapis.com/fcm/send/do1WymovPno:APA91bF9vC4vkpeHpDBXV3xVVzDJ7sTQ7Ibp4p8CkYFTbNFgIkbt7q7iyrLd47hW_OMBjY_2pn3uVvfsFh3UhAS87lS_OmOrvUEAMTtyTQHNxI0sgtXEk9a9aYqTfeTRutYjasDydAmU', '2024-06-04 00:53:30', '2024-06-04 00:53:30'),
(266, 'https://fcm.googleapis.com/fcm/send/eE2-57COzgs:APA91bGL1WKcaQVHKu4WLshCAsHAAldkKqk3XYHXdku1uhuuXR0imgYPkwovd6uUXE5pd8n17k0tgnhxKE1Kg5JO8az8OOBkSsOIfRM3pO75MGqcY0_aaJliVHXmTBVTajwVZBROwFNT', '2024-06-05 19:53:35', '2024-06-05 19:53:35'),
(267, 'https://fcm.googleapis.com/fcm/send/e3HOUI7d_m0:APA91bHi_VXP_3Mt1AouRTyraZXbjTNwa6mCZqO6S1aKwDje2TyPcV4RmQRURobN08HcMZSe8td4qhCkFvWDBXtEStdsirTtP0z0uCqHU2NODwigm51RhHhA06XO7lULHP5p5ssrn5wK', '2024-06-07 02:19:02', '2024-06-07 02:19:02'),
(268, 'https://fcm.googleapis.com/fcm/send/c8D0zRmVVJk:APA91bFMLuQZOr0TiaC1qtnZc4rDactwiYJbfiyr9T9bKcVasF4mQN3YJTVQGdvaK9e9C7JYR0ZNfIa4tVuIobC_yno1qxbqwjPln1IJCI_P53cQHBVjSleJcJngVRejN5aJe_sdVA4v', '2024-06-07 20:19:01', '2024-06-07 20:19:01'),
(269, 'https://fcm.googleapis.com/fcm/send/edSqZvXyZrQ:APA91bFt1wbw95smJqExzTm1ifaH-50ffEoSW1LWJDnbpvdqukfRWoIDPmE-PEWamRPceHDSkiuR_ViaybQUychJE308GBVT2ljhOF3iY19oUOTce7aaFI6ylUZlrVYhEmDt29cMnZRd', '2024-06-09 20:50:40', '2024-06-09 20:50:40'),
(270, 'https://fcm.googleapis.com/fcm/send/cC_g673KwVI:APA91bF-3MQEDrxZT4-YaMz8nuUiUsR0084Jev3Zu0Kt8f09r25a6PHFeINthTaRyN6ulij7FHjbysRxJt9E37F9XG0MXA1imKq9cVcBpdfdYy-2by0syZMDF1_a4XzhAtJjheOGzmqw', '2024-06-11 19:56:47', '2024-06-11 19:56:47'),
(271, 'https://fcm.googleapis.com/fcm/send/c0uTOzg1oDc:APA91bE42xTxYDdWlqokSliKOCnKaIT2WAdmp8DTMEhat4xOU6l2HUy3Vte5qAgRtrqrEy2Xc_d7v4tntn1QJgrbuskq4rJE9o3PcV80qmQvPEDPQm9fALyokvDEMjx-akw7jyVZI3bm', '2024-06-12 21:01:07', '2024-06-12 21:01:07'),
(272, 'https://fcm.googleapis.com/fcm/send/c799qCB12Cw:APA91bEl89QHTtmHUp7JxCFszRUBRcC75kApIkkdrLiKMZRGhqSDS-krbrfqukRvjbZCjkBZDXakgZoYlcDkqsEAIeImJdijECuKfUW6JiaibNa7zxYpDP4OmbGqCpnLKe7E-J8GkSQK', '2024-06-13 00:54:17', '2024-06-13 00:54:17'),
(273, 'https://fcm.googleapis.com/fcm/send/eUyK1NSI-UQ:APA91bFV_Fw4tcSSIJa-FFrpGgObAvSs1pQpcY5sSE5UomsOQwNlMP4_GxxrwjbcGnQOd38tB1IlIZqFW8jjqq-YXekXNnZgitA0WHIcig59HQ2qqE7BpYokI0-KYK2PmRHHyGdIQuvA', '2024-06-13 05:37:31', '2024-06-13 05:37:31'),
(274, 'https://fcm.googleapis.com/fcm/send/cJAOIXBCy0Y:APA91bGQluP_wBq9mSiXM4uFmlPgrK2beqUQu-XZw82hpI0NLheu6nonOdzNccOoN1OrV_OLYSflEcuFWXM-DcTKesknpgdIzakHTjH9U9YtZt4fR5Uwq1lfqM7HrLXvJoIVtMqxPszI', '2024-06-13 18:10:28', '2024-06-13 18:10:28'),
(275, 'https://fcm.googleapis.com/fcm/send/cfUyw0ug_9s:APA91bFzgip294dbgkkIYZWU2rYudgYUF2uQx15tOJ-5OLql3Snt97jqXqRJeDZoYo1iuoyKcJ79lN-x8x8BkR6i94ObFrOA4BPuAIKeMd1Bzr20m9kDr9giz1Zi_BsZif-0ho65XklQ', '2024-06-14 22:24:18', '2024-06-14 22:24:18'),
(276, 'https://fcm.googleapis.com/fcm/send/eT3LlIOFGi8:APA91bHc7bP2nnuU4b5fJoGipFzyOlS_yPqkAhUNRsEpzmB-qjTm6kopmxP-yUzq93XT81aOEMFuw7MqZJvm7E2H5uNGHWYOKqK4N7Y_5C_1sIbWe02-gHE0LcnCd7mwzCJCnGQMke59', '2024-06-14 23:18:59', '2024-06-14 23:18:59'),
(277, 'https://fcm.googleapis.com/fcm/send/ev5f36vexCg:APA91bGgTx2vUqVc_Ye7CuTtDbKKAlAZXCzT2_bm7H_r1k3BQW8D4GEzqk5Rf7xhinX_1LXRegqZy7MUgoYwkoXQlnyarlYloOZIY0wzQsVA49U6v8X87MTLp0svj6AcghLWvzV-_FUd', '2024-06-15 05:37:40', '2024-06-15 05:37:40'),
(278, 'https://fcm.googleapis.com/fcm/send/fX8NX0ARdWU:APA91bG79xmDKK4pmr3ztsX5gTp7wfwGAX0R_AqgoDHU9ipSaCM48kq0TYLMO2tD3EwZEbY-JVdeDE1yYESiCLdnAB-_ThvDDboICa-NWANO-qaMwny7kRovgpopuu85NwaCJwQBHk5t', '2024-06-15 05:38:06', '2024-06-15 05:38:06'),
(279, 'https://fcm.googleapis.com/fcm/send/da0iojDB5Zk:APA91bEwOBgib2014hNPQ49abzGSDk1iOAy0UWyhag80cbK-tRsjWRzFMrYBQ3-mHOWI84x4tWu4U69UBAfE93P_SqzBVKg0h5QIFTIFxR2kXlE_lZMy_XXJTS1QFwc2noTLcCUFJgx3', '2024-06-15 21:24:54', '2024-06-15 21:24:54'),
(280, 'https://fcm.googleapis.com/fcm/send/cEngCMOTIgg:APA91bFOu_2AWNV4MBgzu86uhEpwyc01aiTBenEIzJcKU51v61S5PbDHGqnYsOXtRggP-BZpbHtQtGuSLWKR0y23STgBU9dYwbGKlq2ec72_L_6UIwXHDvcoRBobduV8EJM4LMSjvJ2b', '2024-06-15 22:39:56', '2024-06-15 22:39:56'),
(281, 'https://fcm.googleapis.com/fcm/send/cFKsFEIWM8M:APA91bEiRxqzhPtqVqKiwiKF4WKtquIIgSijr0CKZNrPlgYBdZl2xUVORSdkjRUNPM062kBCc_TMTWcSlALGGUl5WwQzjdC65_jETa7a8HRcPhSVY2tcnfFte9IFOjD856RerTCYkhgS', '2024-06-16 05:54:40', '2024-06-16 05:54:40'),
(282, 'https://fcm.googleapis.com/fcm/send/cqZRUSv3imE:APA91bHqyZEe3oAB3symuGaeVuiZTnZUy33jD5czmgrV-uJIsiDi5yleY_u4hufJWMrACRT9Rij9XSkvLsHAqPldN8deCCpvg2-EdEZc0ITUJle31gX07bE0xDrmK-kK-7M_JGCCLeF-', '2024-06-16 18:01:12', '2024-06-16 18:01:12'),
(283, 'https://fcm.googleapis.com/fcm/send/fAQjAnqPnms:APA91bHjJzzWzB2tWBRSZp_JM6FZAMCTPuW8YKfYL2fh6V0hWMU6PBflYNFapZVreZSLRBDkrtd2yiIj8ZT0rRDhwB4eCGX3YulfLsRjXFHKkUp3zSNvuIVe7yCRq8pC4IZ9MVqngwlh', '2024-06-16 22:57:59', '2024-06-16 22:57:59'),
(284, 'https://fcm.googleapis.com/fcm/send/cHwk6J2npbc:APA91bGTLzDTAyBEuJF5aqaEsvkLnYYcc0G1c5fIJsfQ4cCLx0EUL8e1Mz09Tyx8Ljht-Rci5qwKweGWtsZokks-_LyZ3ttIBUkchX0TmcNveuWiihDgIqNZRIpsSjf6Ubj2qQavL2Xs', '2024-06-16 22:58:45', '2024-06-16 22:58:45'),
(285, 'https://fcm.googleapis.com/fcm/send/c24n-NIFjeY:APA91bFkDtEqV80p_FahG9iF0n3UuIwRwqJ5ep3szeYYxzL6BHdpLfrnIWAtxGBkfl7-8FEZbkeAQOjCIIMWkTNzICucqqd89GmhCV6vj90LIWQio7USEF-6AA63ARRuLqh5m3xWIEWD', '2024-06-17 14:10:11', '2024-06-17 14:10:11'),
(286, 'https://fcm.googleapis.com/fcm/send/fa1ZVFtSmcQ:APA91bGtHOiSFQN0_CyboLOFigVBijh6sSMkvzzm9RQDJJgGnckBKJWQInzomRJTspcFwsg_YYK2Kk5zGOmnQeGQYtPp3jZANcVcSc8vRr0zR0iNXBgc18DFqKXhBcCZZNXxytN7NN2H', '2024-06-17 16:54:51', '2024-06-17 16:54:51'),
(287, 'https://fcm.googleapis.com/fcm/send/cQHPY_afvzY:APA91bFb7SxkRWaug2xqNdsUYZU1vYHX4_qtdO-ZHzOt9EKMoDN7WasJUQdCZEgMeSeLJ6HG0Q-t33_dXDgiXd8S1PxF9el7daioFmeGMk_yYbYuFRNsWZJKVxtAfOaxbZ1sq5xaD37u', '2024-06-18 07:53:19', '2024-06-18 07:53:19'),
(288, 'https://fcm.googleapis.com/fcm/send/eHYmyy0Cnog:APA91bGoh7f7GJQHg6XtDSVgSdhM1Iwe6SXs_B5AkP0a-7H3tMC5a1o6hFdp0e5co2LLWaZN16gp0HVsjd_SpluyxsOTNGQWiOBbFFBIn2rGh1tu0NPDnNOOF6qb8c8v60I0toMfgdt7', '2024-06-19 20:15:00', '2024-06-19 20:15:00'),
(289, 'https://fcm.googleapis.com/fcm/send/eKfKFzbI0mg:APA91bGP9vA024RYw3CVIiBBEIKgblFZeMF43FsWQNi-MtXT8pgi2ASG4eVxGEBO7G2K841UV8QbaNe2ag_2B0ey4ChowJTVsR4FcxI-cjTLDToXFPqXXYq3dLI6AbcM9cIpaocJLOm8', '2024-06-19 22:23:08', '2024-06-19 22:23:08'),
(290, 'https://fcm.googleapis.com/fcm/send/cXOv-efwWO4:APA91bF-vctInMP2epA5xavjxtJ2Joy8VAKAeugLU9z8NyaWq8ynm2FGjAq3-q9hDZcyi-qqPJ_nKqk-_HWCnfTX5B4yleIM8KhOwtuXpoimdBBf9cdEnq8ID9OacQJ92Xc0gcp0oeYq', '2024-06-20 06:33:15', '2024-06-20 06:33:15'),
(291, 'https://fcm.googleapis.com/fcm/send/cZXd332F8Ao:APA91bGJwRieahf_ahxHQIAjMHw44e23kItf-03DPNrUAww2Na8eqsxU_mkWdTXeT3bedgjfwvrecpIEGgISpg5Hp8JJlkyPrvo1FodQZZt9A7UBN8VWFvZt7oTBB5d_dMMCj2HJ9b8P', '2024-06-20 06:34:12', '2024-06-20 06:34:12'),
(292, 'https://fcm.googleapis.com/fcm/send/ea1jfQjg5d4:APA91bEb6UznDwKoxxED75VUjgC5HPdxOMi_7rlwgLAWgXVcJ6ObGFXhf-0hO2wiDQcfQh84xwcFUgsA8Eht51s_T4sP8VONH8M8rNVa9grTV4iy6QsdVhspU8kp8LLAVh1JK7yrmRPV', '2024-06-20 06:40:32', '2024-06-20 06:40:32'),
(293, 'https://fcm.googleapis.com/fcm/send/fyyJIbT_Dl4:APA91bHn_swO6-vlOto4Y8_mhmZgZdpLamEYh_T-VH5U19RtTBqU0RwHB7WC6UAqDw6mxkhc7utml3pyjrQVhnYRGQpWwgFW2_uqHHgWr5QzclOY2Gujk9Eh5UhF3NRxYYIKFxR2Jpma', '2024-06-20 06:47:55', '2024-06-20 06:47:55'),
(294, 'https://fcm.googleapis.com/fcm/send/erZO7WlWP04:APA91bHJMXwuF-roX-hqmvTPIyurQ7uEWyC-r7UgL5CqvURA2iFFswWfb_fZhjpcIZIjxh8cMXxYoN9GsXk7C51XLAgq6sFTflZitDJnNS39LGAwVPYEsgi8Sa8o-_Nv-XTRk6SfI8nc', '2024-06-20 06:52:04', '2024-06-20 06:52:04'),
(295, 'https://fcm.googleapis.com/fcm/send/d8ZTDPxiuFU:APA91bEEOB8UFgbOK7QXBSWFMKvdYQkatSleWZyyBcwfCpClzZKFsF85pQJ2biN20v7sBBeHB-xw57B41SzxvHbDI9anv4tN7rfCq8-DCBRXtGOuBohIhwRdoCskX2Zq4cVTrxbHVBL2', '2024-06-20 07:09:28', '2024-06-20 07:09:28'),
(296, 'https://fcm.googleapis.com/fcm/send/emEUPCrIpZ4:APA91bFZvsxdibm4oM32Vyc0IkUSqJ6JTs83VL6S_di--LOqcAIbY-u0WhQ_igiNXNmWPrq5FDg9bHeCTlFd7LnQb5Ku5Fi5nRunvfNu6gt38qOWB3TQFuh0HAK4fKYBJ1Phc1KKT1pV', '2024-06-20 19:32:41', '2024-06-20 19:32:41'),
(297, 'https://fcm.googleapis.com/fcm/send/f2onPGvml0I:APA91bEe0VjKXaBEOO2CtG9Ow6bF_SPdaS_JDiemh15J3dEQ9kK2MhxM51rUQt_9Oo1j6wkZITsrHRCdFbC0yDek0bIAfzmoxIC_2vivHM0-hBuW9scUe6Jvs0Zvnl-nQWMBseHv82SU', '2024-06-21 16:22:02', '2024-06-21 16:22:02'),
(298, 'https://updates.push.services.mozilla.com/wpush/v2/gAAAAABmdZZX6zRVrjp9erG7G_GgYsQaineTRgZAnIWriNnPfJY78HlS6CAHBCNXMkawrOd_6xtRzVIINFhZ36IHs916uLx1Lj2TCUQ5tQXgg4qCo8kpTaj96ovaqmu03APllhi2grhAnzG8DbTcTfZyRJLh19BRfLiFwRZccjwY-UU8v-UN7WU', '2024-06-21 17:03:52', '2024-06-21 17:03:52'),
(299, 'https://fcm.googleapis.com/fcm/send/cZH7PXvMre4:APA91bELnsXXLdfwJpOvaPjbaCTk9jvuLE94iFI_RoAyVbDgJlN6qT7XjPzhwJ-tmABrI3zbOvvzTvr1HiaX8_PBLVdtacm4hEbvx86JvV4mFGBEnKfcN-h9g8dOQjVNhIlc8HcWxhUb', '2024-06-22 03:09:10', '2024-06-22 03:09:10'),
(300, 'https://fcm.googleapis.com/fcm/send/ftDf3duu7Og:APA91bE7xTHxZ-KdnHLNZgVYwOmz7MMyvsL8Z4IyJl3t8v_ascCld4iUqTGLnJorgg0vVTL8Gjcab97fY30SmsbQXkQ5sE1KppNZ_Q2zJLPyyK2JMaPYvQLt6a939YBmjG0PK2pZTxQW', '2024-06-22 18:33:40', '2024-06-22 18:33:40'),
(301, 'https://fcm.googleapis.com/fcm/send/cApaqRzBNQw:APA91bFFV5UY9bTcqL7sVO-71hBw0Oh7KRvy1HK7FJHsK-qWyu9_F9uBzIFG9fr8L5Hrp0-DhgpN6tf-2XvnV6X9V2DGcHSeBG23Jto_3wBeI6cn19HNk-7AkHfRDFnbX6LM2DuGf8B0', '2024-06-22 20:38:51', '2024-06-22 20:38:51'),
(302, 'https://fcm.googleapis.com/fcm/send/eSWHQwUkfPQ:APA91bFxlQaJoVrHEbyXM6SDR-KdVDfgU0u9diQUuWnXPa2fKx_KON5VgsShslsk4vB1Fs0JaDNKwFEMqF5Pks7It-ixnVscA-g-_tNj99yFVIV9us9pis1ftGFVMgNQ1udm7VKjaqI_', '2024-06-22 20:46:05', '2024-06-22 20:46:05'),
(303, 'https://fcm.googleapis.com/fcm/send/dkwBsEUXJvg:APA91bE8Zy_5ZcyHj7MLw2XH85-ne2K6YK6bEf950L8Pyji2xi5i42Z_sGZqRC11BFbk3_HYPzmmHDkIqFrZLn-5w-ZvbChkGGmSlhmBKFCLeIq66QH3kqI7da_v8O2nzJlzn6cZowTE', '2024-06-23 14:18:04', '2024-06-23 14:18:04'),
(304, 'https://fcm.googleapis.com/fcm/send/dAxqqT5mlps:APA91bG7s4_-HRSwBFYUeiWPy06Pg967s8EvZhN9L4SYLkvqlfVU32d12dDpQlU-ELAi03rozwpiQmLMNrvpofJXaz_MmX2B22zs9Znpe-HDZ2mHrsN4G5594cnaIGLHI_cLFpcvntJx', '2024-06-24 01:03:37', '2024-06-24 01:03:37'),
(305, 'https://fcm.googleapis.com/fcm/send/dwpR-DXwOh0:APA91bF4RDTBKBfUcaXVmnjDkxVE_pYbYk3ByPyJ3r6cxkpd-f37sA7vtWAuwUDcbbjQM26yA3qjuj6D6Z60b_EAzn5KqUrBIGZnUijjNQmQ9zZ8vIZ9qn2C0MOqpiYEK1EcsqbER-YH', '2024-06-24 01:07:25', '2024-06-24 01:07:25'),
(306, 'https://fcm.googleapis.com/fcm/send/eKeArdeR9qQ:APA91bEf-yKn-4JV4E9xcSvb7JZ9kCrQqzsc_FQ4cTg5wKf406MfoAZwaDM9W6nrlIPapWZTxtgI9vgSDxKdvrH0v6jTA-r4QM4EArfStxUShjbpO8jT6DTKn3xKWPVz0cPcI9jsJBGX', '2024-06-24 19:28:45', '2024-06-24 19:28:45'),
(307, 'https://fcm.googleapis.com/fcm/send/e8Mc4naAJGg:APA91bEVWTjJzt6lYEXSoLfYFIG2qtRby_JSr6iDq9T0SwJV3Q-azZpTe1M_mZa8vvFYfxtyDrEzaIV5gCE53SNvEx9PFT-LMZu2951sYKgxmMyqGC0XKkxI7BhNM64NHRflCjH_h-z-', '2024-06-28 16:27:05', '2024-06-28 16:27:05'),
(308, 'https://fcm.googleapis.com/fcm/send/eFz9UzNkNaA:APA91bFw-of-jAga5BLKWgm5nYIeol1qDiwfbfxDmJap4nAW9r5H0QL3lW3COBdMqnfdMBN2KtMNb7XBBiTQHCnqs5uz327IVb9B24ihBRJKiT_7XzOI9xEmTHZ8ydGmJAQ_v87-Yz5Z', '2024-06-29 18:54:03', '2024-06-29 18:54:03'),
(309, 'https://fcm.googleapis.com/fcm/send/cI57NCRKqAM:APA91bF4940_zlDIOQ7wpK_DR3DayGzYH4D9RaZNaPDKimhf70oKtDCmqRFI1g3WvQ-Sn2CYl5J7dqxbKnQyBZceTzeTXz8NJ1OgUavlrVB8XrRwBnub868S-Vcbtq3SfTkUO13uCeij', '2024-06-29 21:01:06', '2024-06-29 21:01:06'),
(310, 'https://fcm.googleapis.com/fcm/send/dCspmr9s82o:APA91bGgfyUYMIs5CeP_WLMqS1odcxqUJpi8c4R3dDY9f_x_GGBDMYADNT-V7jEjwyjaGXRhsgFTvuR42bv1aRg55zVmYJMBF5N_2r_cF6JCigHP4ABPKZNA6uKMCOT91OzqqnoCh2CU', '2024-06-30 04:42:28', '2024-06-30 04:42:28'),
(311, 'https://fcm.googleapis.com/fcm/send/eqrkoGRbi-k:APA91bHQKnasS4-cbR8E0fD9gnO6s6g6pB_DDqnxTUtOZWCy6XTMzUs37yZN1po3oai20D41e-BzCGH9v3Tq6pDW4GDy3Dq9V8-6K8dEtV8ZtyyBAGFghu1wYDaC6jl_UkEr0-4ZTIoI', '2024-06-30 22:40:30', '2024-06-30 22:40:30'),
(312, 'https://fcm.googleapis.com/fcm/send/cZnxrLqxlOI:APA91bGBPhCtaExZAACz75xBQL03M3v74QoCSl8vY4EHbYF13v-OyvZQcf4VTaWCGGc-UaruPfoCVobKr50ARHXIlj9Saa7N8icAqjKVweVUuQYBpW1JqH3_9IrwJONcLfs2qcE9Nd06', '2024-07-01 22:40:18', '2024-07-01 22:40:18'),
(313, 'https://fcm.googleapis.com/fcm/send/dfKuL8rNBUY:APA91bEGv8N7-jviPDH9fnaLuoIsjPPpNoefP7xhXU9nvZPh4aN9f3vM5HqM4JrrQxPx7dMjTqeDnXbOJ11JLI00Nb6YOgV-rsNMNqb_Lsnvn9jOshPb7cURxqHuovnxJVgNj2Hu8cxt', '2024-07-03 16:53:29', '2024-07-03 16:53:29'),
(314, 'https://fcm.googleapis.com/fcm/send/dz8hgECaC4s:APA91bGw63HgcH_Hi_JfCNphNs6hu0xU-PeH33KyQKoqMLDRBeDSzp0fmFkBKaKdv18lF6YxwHPGeUe9uRJSKvGZJ9Yn1EQq29VbQKMMEhkZLvPwXO4hkdWBaLQqBq5R_wMD5israpob', '2024-07-03 19:20:39', '2024-07-03 19:20:39'),
(315, 'https://fcm.googleapis.com/fcm/send/eOG5dy8CBpQ:APA91bEBDKfj7Yw1Y2o9gTBIBAoarj7by1cla-k0KXGDiuEvIYrJj_aBQgWs1vYbTT2CwRCFXhJaKRKddZso8DeSNy954_kkvM12_6oWWV2DYr1MjT1QZHyL1VQYzhJM9wDeadirH6tI', '2024-07-03 21:36:02', '2024-07-03 21:36:02'),
(316, 'https://fcm.googleapis.com/fcm/send/ffG3dYAEHIs:APA91bEWEmyKjySVqhOf2ZY_3xh-GhVgva33RsOkEBUxQngqIcECXx3nVNr0C_cWb527Z2lpp_RghL9ISdTs7Z4Sbj17VILddipsUWqPuLWoVK6ve6BffAp-vsunl6imTGnnf_KBMbjw', '2024-07-03 21:42:26', '2024-07-03 21:42:26'),
(317, 'https://fcm.googleapis.com/fcm/send/e-hrk_vztOs:APA91bGHxNfdWRWqfGWsE_4kiCkj-roSs-f5Cm5tsbyc0DqjMERbftDJ-tOD89Yg125mxLw824BmVsEz30MlKZjNi_nDy1v4U2Ml1O5wJKTnfJz-0yNbW59JQrgbWMRCEq_VM0aEQwgt', '2024-07-05 02:05:41', '2024-07-05 02:05:41'),
(318, 'https://fcm.googleapis.com/fcm/send/eMqKXR5IJn8:APA91bGCErIZr9Vl5TpGNhJNoCMiaoZ2LOvsTA32b1biqRuPTo2ocFB-R726Vbkr--NWW4W5ifyuuOoeqH0GKHJZr3TuyrkHpM40-_S2q8OzehPwpwQO9nzF4GyVY1hk_WLQJibmh4yc', '2024-07-05 02:06:09', '2024-07-05 02:06:09'),
(319, 'https://fcm.googleapis.com/fcm/send/fouF-B_Uvr8:APA91bGRp80hopCWG3u3dE-2mMVkTAU4QF4NyjgunLn_u78oQaLezrjXJ_IBZG2zzBJto6iKZPYSHGcgO7WO5Ssv7yuB9DuRf9bnNQgzIOLQiERBSpoaCqHQwg19SHATpqCYEelSjXSE', '2024-07-05 04:55:46', '2024-07-05 04:55:46'),
(320, 'https://fcm.googleapis.com/fcm/send/fTuJA7RWu-w:APA91bHuVW6M8yO45oXjnokDyTkttf5b_YDWc_z8W9FYvdUjKwb1uP-6_6wRWj1KshiAca8ZaBPhbe35r7yYU9v9lP_-gvUr6dRATVmOV5ESFYnYrJbe--ElpZvcQCl81MRz12WATKRi', '2024-07-06 17:45:49', '2024-07-06 17:45:49'),
(321, 'https://fcm.googleapis.com/fcm/send/dTwo2nPWXNg:APA91bEdxA4HJledrBwxQwHqypMWFtHTS1FTK7iPUy-zmXzTOqHt6Qur0Lec7jP-_3V-gkSa7b_Ilx_crrOPPHnW4IL14dEtT8QsdiismuQwXzSxwrr9s7fJx6QF8rj8AplBNtg1adio', '2024-07-06 18:30:42', '2024-07-06 18:30:42'),
(322, 'https://fcm.googleapis.com/fcm/send/fzk_4Go_5Rc:APA91bEcCG1V7D-QJWZpEwfTjfLOEj-skXR0ax2bD95HWZ8aGpUZzOA2ROE9Zvgklr6M67XYqX5uVXaKeP4O8UGjUOUTZxXyRSpEWx7bfymEdakqTkQIRQsIuxnhh1Rrh3wWSUspT7Bs', '2024-07-07 02:47:27', '2024-07-07 02:47:27'),
(323, 'https://fcm.googleapis.com/fcm/send/ed06OVrvH78:APA91bGlUILv3FHm_1bWxImVUz7vzsJRVyMI--hQ1cCBelexfVbVUb1g8nXUHjIgB7aIwPtfOy22kQT0ZFRycueO4Y4W6wkJ8diyYfb6A5HMy5cWRMupFahs6CpWOrgj8HQuFH8kA1uk', '2024-07-07 18:46:23', '2024-07-07 18:46:23'),
(324, 'https://fcm.googleapis.com/fcm/send/cZCCqJWThDE:APA91bF1oI4SVwhbW6viKdsKbBPgL5OkDCZbEpoqOTfFbmBwxgRqG9jJoeEqcxD585gqmMmpurp9dVzrL_YpvwWb0_nmVBJ0zjDOvJVrXYXv6qAS-yww7UZiniUUi0HVLDqip-8z3SYL', '2024-07-08 19:00:21', '2024-07-08 19:00:21'),
(325, 'https://fcm.googleapis.com/fcm/send/fHC1C3gZBU8:APA91bGg-1TIIvQrXbuHeDtTvKUVjyr42U_9_ScGV5cJuI2d4toMuZarK0aOWS_XP7xD3-Jw3h58JUczQxrr5qC_ukIRQCFqmt8feyWWb0daivb4NyM41XcM8JzgEYszih_-62R2yyuv', '2024-07-08 19:18:16', '2024-07-08 19:18:16'),
(326, 'https://fcm.googleapis.com/fcm/send/fMW434TVSJc:APA91bFXV4lG63uGrGswvTr3t7bPxvaCFwg97suJIaKUqGHNvZp37AC2iMZ-BEpLAu6BagKAru711zejJmlmfSdFKXzaaVXQ03WDB7OzYBwpxUzz35_o5lz7G0ZmJYiRXVgALyrxyGfT', '2024-07-08 20:30:10', '2024-07-08 20:30:10'),
(327, 'https://fcm.googleapis.com/fcm/send/flBB-afNQP8:APA91bF_dgPdrojuN3ZwZxEGzt0ZMW-s0I2i3B5Iga3KIU9kgShxu4Dj9p7WqFrJETJMLcOOOe2-QYFPuVSvnLgeRnQdcP-_zVOjR37wUl2utTN8SfJV5a3JZhdhuDR0Z191-o_BLxms', '2024-07-09 03:11:45', '2024-07-09 03:11:45'),
(328, 'https://fcm.googleapis.com/fcm/send/fr2wiF94S9I:APA91bGEWfj0Fn0HxfbBJDtm6SqpTScT_AQFW11ESfXrG20W7zcVCFSJA8OUQISOPsYV1h7PVjPGOt2OkQKhdP0jJy689YWJv4Dou7CYr4rr72IzDtkrqcFNOisopfx6SI7b-TQRx7QP', '2024-07-10 21:59:02', '2024-07-10 21:59:02'),
(329, 'https://fcm.googleapis.com/fcm/send/eTXSVlTjub4:APA91bEeTTV2a_la4GtRCC5YsrlzthVjh_s0SquHlb1wC7mEKiBg6BNIQaURPPZPTDzt8vZooiZlzSt-jepXqjQ3j7ABkzKK1pZ3-PAoYoTA9oVgisKeHXz9EaoEtayq0lnBP2-28MAM', '2024-07-11 19:07:43', '2024-07-11 19:07:43'),
(330, 'https://fcm.googleapis.com/fcm/send/colU_tEQy4c:APA91bHD7MTDhfB_f0aCkO10Fn0gIkPZbDnTETe1xAFUDI9seTNndiMMof-rM9xsqMG_PMlOdlJivthefbNLeIRlpWDoIkDLfs4oV8bfy6jLqMV8KL60bdFrRJTx212443sO9GQBWgoP', '2024-07-13 19:28:45', '2024-07-13 19:28:45'),
(331, 'https://fcm.googleapis.com/fcm/send/e-vCSFQ58p4:APA91bHiNjRKMjqe5nvSomI4m3P0NDQSL94CM06tsmsdamII1mD6tiNzNNf6fUeAZkfb5PZrT5YS4V-m1FPn8hTO6b7JG6Ju6CVerNFCxLecq7fdhDwcJzY3uf7k_0B-tB33-AZ2XZZe', '2024-07-13 19:31:55', '2024-07-13 19:31:55'),
(332, 'https://fcm.googleapis.com/fcm/send/dJKfX5NjXug:APA91bFfc2dv_Jh8Jh4vRfn2ZkIoK5q2oCVOdpqgfKorSauUmtvKQMrVmMGjcAcqVaW5qq7wUxjun1zdjK9w7IAimhAHieRVL6-vFjYtzMe8mOeKpHg3uB24GmQhiAb7Z-KHrWYxq_86', '2024-07-14 03:49:08', '2024-07-14 03:49:08'),
(333, 'https://fcm.googleapis.com/fcm/send/cd0iPBPhE5U:APA91bHo4n3Za_Zybo-FWi9Hsvan2f9-wWxCtU0hSokhNropWKy1rzYE5dTqcCxpeIU6aqTNXiH39XToDo0QE8myi9y16bRx7qosKa4PqLnHeyLhovMHrPKtmu-_sDF0kGlwfyuiHETW', '2024-07-14 20:13:37', '2024-07-14 20:13:37'),
(334, 'https://fcm.googleapis.com/fcm/send/ed1eo9zYRII:APA91bHik2oTbb5mEfD6VdrqOcrpZfZSf-opJAYLeRd-x3nEJV-rsKrUR9Fi-7oJGxEi3oaixuW_ush5wyMWTA-0An15O7L3NBthB_Ytr7x5SnyNEA93708TY4ihfmPk1OkSP0asf0mS', '2024-07-16 20:49:25', '2024-07-16 20:49:25'),
(335, 'https://fcm.googleapis.com/fcm/send/fMNEmZLcGy0:APA91bH6m3bMb-OvMzIRwFmkhTiyquNmTd0GIkIbWNTqc4sZoTMHUeau0rNtA0X6lmO1_38mm8ZJoHnm83wlW9OqWKDfS9Gzib0zNvkoW67_fytkxO3QP4dkIqCnHQLsspM2FOW4i_am', '2024-07-16 20:50:27', '2024-07-16 20:50:27'),
(336, 'https://fcm.googleapis.com/fcm/send/eB3OW30-22E:APA91bEGl-kvK5utuy3uuzFY8cs-KSivVnqI3JHxDbYha3R2v8YYSQXuN8BKYd_zwInC24gu6wV42UTcd7qTLcVjoJ0moBsHrSn4tg9oQBSj3TGd_Sun1WWdKbI-HH9Aw-nyk74NpjWv', '2024-07-17 01:17:42', '2024-07-17 01:17:42'),
(337, 'https://fcm.googleapis.com/fcm/send/cnt7GTDsiSA:APA91bH3coynipiSJTcygU-fUOpZ_Y7CnkRRy0GJhp9CdBvz9jpyp0mRJFCzoBhI4fKU2wRxh5F6dQGjthHgv3ikbbgK6hde1a-Qy1u3bE4R585Y3tDjSQ2BXtetH3KoTBH4fd9IxVYV', '2024-07-17 18:49:14', '2024-07-17 18:49:14'),
(338, 'https://fcm.googleapis.com/fcm/send/cA8Qt7RbyiQ:APA91bGKee8-JVqmKuFi4WEZ3oRfLcZBnnglJptn5XFOnBLXycDPJULJW7onzO9BU577e0lamhztIbTNX6jeA3WWD5KYKd-i2NRHb3KRklrqUKn2vSIghQDPtOR9kykIAMCHpPVB09pc', '2024-07-18 18:26:55', '2024-07-18 18:26:55'),
(339, 'https://fcm.googleapis.com/fcm/send/f74PFQmFP1g:APA91bFenCvjERo0O9phF7qBri6TJwiySLNZvNl0Gg6SxK3oFdi2iuivRdkdGYjfAo9Gyp5tmL8SMEabf1dxuzl-cGfDyGkNwbnOhK14PM6ed-UatddLhVDkCKJrW-O8raCac447Oodd', '2024-07-19 18:32:22', '2024-07-19 18:32:22'),
(340, 'https://fcm.googleapis.com/fcm/send/cl-t2JB4e6M:APA91bHXCVG2fsrQK9JJHP04UUyvGYRMUVF58YuUHaMVIPEYtrulIOe308aAtsg56RkQ0J9VD11k3WWoJCLx8XAIGbandgWzqinkY4vnZ-gnkVDtEg9I6fy0kFt0pILnMlGRe78wSYO5', '2024-07-20 05:54:21', '2024-07-20 05:54:21'),
(341, 'https://fcm.googleapis.com/fcm/send/fjYUkLfLNdo:APA91bHGD8yWKWAh_mSHdVV5UF5Zhs9ieXPIgAvFJbqlGGHKdMWabl1CJG0-ThyHFiGD7Xa89WyedMdwyfL9n5EMGdUQoN7UVniDn2BpCSg1QYzc6INdjQ-p8JoLcUNAcYT0MfwYZPff', '2024-07-21 04:33:24', '2024-07-21 04:33:24'),
(342, 'https://fcm.googleapis.com/fcm/send/f3JWBDMfE28:APA91bFcRX00-iaO25f5qMsPXXZmmilAnOubAEjdE3VZ3x9QoVLqiM2BDaG7ZDihWtglo9MYHuFuWXXySA5gUJ3y2rJ-znma9Dedp-w9LrLvIi_7b8kRT9s6rjXf1Hm831743SpoKXOR', '2024-07-21 04:35:27', '2024-07-21 04:35:27'),
(343, 'https://fcm.googleapis.com/fcm/send/dSLzhkWzOKE:APA91bGf7U805a-TYAbrqO8yLwRKz6bR8shdhAzDUIvB0dl7yKuQpGJGE2cne2xtQ_cM3NF5jtIw0rlhMTP5W8ytRBofRbyHAcDDeWpt20337loL-AS7uPBorJ6kiIxrARPcBcQ_Y1h_', '2024-07-21 18:02:58', '2024-07-21 18:02:58'),
(344, 'https://fcm.googleapis.com/fcm/send/fs_c6aXZUiY:APA91bHwfZMdHLUS70dvH6a_sJ4PpNNtrYBz-daM3LFVgt1EpTeaRP2USuJ9HyHlt2zQaqj3zskR3d3BWxISgHAcNWI6LvzgkrbMS8jjnErNyhPRMiXorjSEEPVJLj-Ivi7qnshO-sgj', '2024-07-23 04:08:22', '2024-07-23 04:08:22'),
(345, 'https://fcm.googleapis.com/fcm/send/dtq-UZeUwZI:APA91bFTnJ9dlkmxG1b1Q0P3nPARg8aKJoQs5MjiMVERyry82dWZ-DIkZdXkrctm_00PEVCcwNkU4hqCHunwHhq16I0DxRMmvAOQQCokxSn-tou4UNzGRW-tIEPiZfK27t_sehKcT_iq', '2024-07-23 19:40:51', '2024-07-23 19:40:51'),
(346, 'https://fcm.googleapis.com/fcm/send/ctnNYzfOurU:APA91bE1mGxvtUN3CZ0DRFnjwDX1zzUtEGYTDouPU9WLnr3G3OZKWyRhR23Hno_UeDPxSCl0ht4Z5dT_4DgInpKu8MwvOckWSnHysDSGBU_FoufAS-SrEQgFetu2embXYNllW6CdzwV7', '2024-07-23 20:08:13', '2024-07-23 20:08:13'),
(347, 'https://fcm.googleapis.com/fcm/send/ed3gqIY-NJA:APA91bG_sB6X6hRLxQ0is47RABM3h13qCPo-55OPThI_7nXC87pk_qdhLSgncFrRd8YX4Fqf6xRGFkcaXzUVSXuPbjEHZnyzAgcehhuHYTJKj4HJxrzHM7uSoj75Nplns-FvRu-S4DEP', '2024-07-23 20:08:54', '2024-07-23 20:08:54'),
(348, 'https://fcm.googleapis.com/fcm/send/fgvz01qxRJc:APA91bFpf4S_9-YQrfHxV1VlQKCzDCu2cgqVq94A6o8_HgpSWxbgrQGYxPCHt_7gcIb3v3-UoLb_PZv9w6sjl9IwA2mRYoeiohDWEbYF12Qv9wGeN2ouTjqYQyhZgQKmc4q-01SX98RX', '2024-07-23 20:20:08', '2024-07-23 20:20:08'),
(349, 'https://fcm.googleapis.com/fcm/send/c044-pkl0Mk:APA91bGgthdo57njR4NslwKyduzxLPn1y9Jhyb6TLx4crLOVfDaDS5L8QfFpAq9IouCDiWJjUX8eCmxVjGvlf6WFRixEYmgSRbT76Yb4_R3-25c57tjEo798YBvWYubDBHyOB38gN_ji', '2024-07-24 20:45:23', '2024-07-24 20:45:23'),
(350, 'https://fcm.googleapis.com/fcm/send/ffWsSSwqJMc:APA91bGjHAclv0VlTOy-rmmsU3BrBtOEbUdm-Xa1hdIVRA5UN5yh_it6kShitzCFULzyKnRqMXN5nktLOCM9indNEhQKbVKvO4U11DGCf7FJjqSPVMU99Gb7krsK2R3u-_Fsw7NMCCjo', '2024-07-24 20:45:48', '2024-07-24 20:45:48'),
(351, 'https://fcm.googleapis.com/fcm/send/f-7Jjm7LDjw:APA91bG8WyGHgFqFkagJ9mZw0ZomksN9a8QtGeAHdutzUpO_XYZjvhi_RrfYWgkwJYpRWOyzRYk-h4lx2ROBso6JtlunBFuC22AwrHaBmOBAfZyg59ajZydHQk1QDP1icJPghMHhmBfO', '2024-07-25 01:20:49', '2024-07-25 01:20:49'),
(352, 'https://fcm.googleapis.com/fcm/send/dZHcnkz1gsc:APA91bGjEjHgCWqqpJENJYVhwkpDrSdlhB0CHc517ymwBiGpfz8bojyTovNi9C9OZ6FLImOQjFFM7c9gi4d2lgUL-xAnUN99dbuOXKSXfPEkX3pquljKIhUS3kgrC0eR76u4MuZzxlxU', '2024-07-26 17:48:02', '2024-07-26 17:48:02'),
(353, 'https://fcm.googleapis.com/fcm/send/eoRA1F53z54:APA91bHTPqRJykTThyV6gh_VTGxHAWcI_yIIm9J6_Td0E30rfz5FpaafVPvQZi7KqG0BeUbyNiUcw5C0yooJL4cU0e4WJGAYqHGcaNx8ZLPaiYnzThsDe431gndBcHStN5TfHV1sk5BR', '2024-07-26 18:50:37', '2024-07-26 18:50:37'),
(354, 'https://fcm.googleapis.com/fcm/send/eF8OMHADwKw:APA91bGEBHDQxiyKofMcFpOkSFCu0qm6m8n-4UDoJR6mn9Iz3SAQTdESe4Jc_-2t6NoP1rXIlG0Ec4oTYkYMZDurT5DSvhucgoKj1NbCiPr0ls3If6i-EvP9avdqgjGwl4u70BTideW2', '2024-07-29 20:19:25', '2024-07-29 20:19:25'),
(355, 'https://fcm.googleapis.com/fcm/send/fnrLkKDP9ys:APA91bHhwgVFqqjVDQvbut0a9b-IUHA4RoY6AwDWLzMGqNrGKV7LdbPc-XEugFT8wRGutwAnsEcqCn33WkHg5mtObGszc6dXgVNNiDQycQop7ls5zcLxvqXeNVgahgPm3ufggO8OvxM-', '2024-07-31 00:18:00', '2024-07-31 00:18:00'),
(356, 'https://fcm.googleapis.com/fcm/send/fqRrrQCPAlA:APA91bHVIe9MtkHYYCfyFBgEbCR7ULrvhQg6pPRMVqDcYQQohfFMCEG8FouB-PK2fbeDWbQg9GxQ9a_o6VEA5NKBrnyRT0ROKbrlcNUE21qlIkAOqdX9iPdm9VxE5YWIKPpZ75b1302y', '2024-07-31 20:03:00', '2024-07-31 20:03:00'),
(357, 'https://fcm.googleapis.com/fcm/send/cG3TUB_Bk2U:APA91bH1P-CWpQ6lhiv_SaoA7ojpi9Yiz22wcPBlnF_7AWQawSJG07OiwFb7QEgw3uiz8h1Ow8J17CGkTUopaQtX6LJPuKZ_6Ojyrt6uKE16xnqyyXxJImLxiOBW8bo17MaudcBd_hwz', '2024-08-02 12:36:00', '2024-08-02 12:36:00'),
(358, 'https://fcm.googleapis.com/fcm/send/eicEwbbTxiQ:APA91bGGZaDUn59KzpcH3jZjjtVC3BhfKgg7977nWqKM9Cxzb3wopihZURU183oG-QxTpncU9kB6sskPXEaG6v4y5TVubmJ_LTrU3yxw8Nqh6hifdiLFz6OOl2w-zebWXEyXYfUIakdb', '2024-08-02 15:40:06', '2024-08-02 15:40:06'),
(359, 'https://fcm.googleapis.com/fcm/send/clYpku-2rFk:APA91bGe6Gq1EbuMAfQtpfLeKCUis106R38ngBKrvG7ywMRPPcS-AcFbO1dUBK_qi3A06a5zaI8peDv8GA8ctvGG5FfTIaNpSsXvDlAZ-3vODb8FuNAiCRx2QZ7-VKZVN2mgYX3E2bK_', '2024-08-02 21:29:07', '2024-08-02 21:29:07'),
(360, 'https://fcm.googleapis.com/fcm/send/dGUEWncdcWc:APA91bEmGnhwwLkgvzSWRWqIQgZiiRvoONAbgUaZoW1zIhDpMT0PbGXUMzk2QplWtoor-0AqH2j2yY2Eaf0lMZSV9aFNlL-WJQUia7e0IAqrpdG6KJAI2UHm2AAq5xTnzxYGiitjslaB', '2024-08-04 19:19:51', '2024-08-04 19:19:51'),
(361, 'https://fcm.googleapis.com/fcm/send/fP0zspOv6iQ:APA91bFd5CSsxB6Fl2V_KGwhUkjM0XV-pqG41jG9d1BQaeoYNNKXXPDPaX_opAvi0VaSJU5ZgoviyCqWqqGh38_8qNhZmmgxwNy6FJFrFNFWl2JcUqyX3hYLJKm38Csnz9sPzQAnVIGO', '2024-08-04 19:59:07', '2024-08-04 19:59:07'),
(362, 'https://fcm.googleapis.com/fcm/send/dQ_9qSH3L_Q:APA91bEBn9v_n0Zvm7MXipNSv8jp-4-jwPU68Kvu1m_mHPvOcSIl1mCSFrFLu4ItONUjtl6BTotHVKDur8-Eim89EXs7wO4RqaHDFTXydiLtyo4wcHA_4EyhOeNHUf98jbpSJ0RGYREw', '2024-08-04 19:59:13', '2024-08-04 19:59:13'),
(363, 'https://fcm.googleapis.com/fcm/send/fY9h1pyQkmY:APA91bElZPWP4SBjV7HLI-qmUQedGQAkH89j-n34R8jTdlfkc4Dn34nIzIOAKiQ9HbE-9rN60w4hMN5e1W8XaRd8arODMyKwinh7T-7nPB1jaJGNV9CRBTPq-829jW14H_jyhd9lndmO', '2024-08-04 20:01:27', '2024-08-04 20:01:27'),
(364, 'https://fcm.googleapis.com/fcm/send/fC2V_74tGO8:APA91bEHci5mC9KPesu4v90iswGr1yeO1yzW-qzJf8HtdsNVP1P114RDG4WKuE7TL7dG0MUCSqtOw0CETA9da-Vy6coClxBNizIzqWnlb-_RG7nfTQ1ASNi6S3L-f56OtSVqI6qsiUoj', '2024-08-05 17:46:50', '2024-08-05 17:46:50'),
(365, 'https://fcm.googleapis.com/fcm/send/eApVBc22mq4:APA91bEOM3z8EwG3duPvd_djbV-qOO-oGXsEY_V2-_w8J5We_qxvxNzFqsXcjAuAXItc7d74tkK3P_EB3VNq36wCw1Nfw3fH4BE2iX7qk767mRE7V-0udpYoEt3D-lMQDJwIbAV04Sl8', '2024-08-06 13:52:59', '2024-08-06 13:52:59'),
(366, 'https://fcm.googleapis.com/fcm/send/evDJRGVcQIg:APA91bFgSFfw7Ggl22ZOv-h1P7F-MWBov_cKdqORGMtOOoiwTP_Gc_2tD42aqqew18V44BTtku8JkhRPX1043nB-oi9_U8md1sXbDIPybqnoUDeCe2pg0IgMN6IPNwXZc0RVDNZCrD4x', '2024-08-08 18:49:15', '2024-08-08 18:49:15'),
(367, 'https://fcm.googleapis.com/fcm/send/cUbiNZlsiME:APA91bG0IgBDyXNCVEW0RiMKPm8wKDs7ToAoWiaQZoQl2JvnAl43TCvU4l3om7DvLGKN1R-GhYlPMggidZs5r0avSxyc1lUFnCHJyeJ7pfiMCSLmXRD-iyJOzHA84yyfNA3e-xHQIXa9', '2024-08-09 11:20:17', '2024-08-09 11:20:17'),
(368, 'https://web.push.apple.com/QCsJ1H3Mu06QMM4GJ1ycDM_RlZlO9Irpxf1xLypzSYX9Qp8tTokLVIrW5WZTeHEA9PAdWxHX0QTvEs4g_YE3PgROHlY_nTiq9mPR7uno14zGzY6Nm9TGwZPa3eaD3tl4a98MBQQ6p-estf_ZfwTidZmMgtUtRQwL7z8dhFvOXPc', '2024-08-09 20:02:06', '2024-08-09 20:02:06'),
(369, 'https://fcm.googleapis.com/fcm/send/eav72T1QGpI:APA91bGdJ31VbbeNju7ASU0DJNYIUPeJIKwyqqyDtFFm5pqDiZK2SEgS1DLQYJjLlwl1skRqmo0zddJH--7q-D8EtqbCb_t2rNxv88W_1YyQ533VDlvxmeU7KN6heoHHOBx9QL2hg40n', '2024-08-10 05:04:08', '2024-08-10 05:04:08'),
(370, 'https://fcm.googleapis.com/fcm/send/eiSYeKQLe80:APA91bEGENu4hY6fUbvevOosyhItJibInhEpk9hwR1FokLSUg2W9BkscG4xxLq3yQTnCkks-qVoYeBnh0rIwHWegyT-Tf4a2D53Ah3X4E-HbrIk0mXY8hRJZf_gOv2rzUp6LvHBGh_wH', '2024-08-10 18:58:23', '2024-08-10 18:58:23'),
(371, 'https://fcm.googleapis.com/fcm/send/dc9Ht6K1X_4:APA91bEoWJzbiXzDU1gNDL4FnrVY2l3M35nvYRkOuPKAPJqWqHVzA1QAtDwEjfLADn9A7MiN0QTLXq9M9MzokLR8SdRh7rPtwUpnXSF5Xqq-7P4zd4HcVmaFIz_2t3X9YdeKPUDTnjYs', '2024-08-10 20:06:03', '2024-08-10 20:06:03'),
(372, 'https://fcm.googleapis.com/fcm/send/e8U56iE196g:APA91bGuCCSaANeMUQh5_0Q7yPCSJdn0W6OcVqY58DRN1v9zKDz4N2Vy-jtYdE24G73rEarYLGQHWkWcBTe5V4RKGUWV52LTbflOZW7fH02zHJalVgI9qtY9QUKuOJcHGhQ_x-_9lQQv', '2024-08-12 19:47:19', '2024-08-12 19:47:19'),
(373, 'https://fcm.googleapis.com/fcm/send/eZlxXCo9ZAo:APA91bGc_S20xohQRGPy__U8_lK76b_rtOzpRmOO_YxbTBfs412cR5g1FPAPsUgURwLe6Mp5FWUmo1PLKoIlcjGTO1CUQg5N7d6ydT4RRMliVL3sZNyyv6hcFPFXQVHqkY8fXb2GIkg0', '2024-08-12 20:07:01', '2024-08-12 20:07:01'),
(374, 'https://fcm.googleapis.com/fcm/send/e_7HteZPsRc:APA91bHm785alaq1vx8pustzPkNV4pczwm37hZBVBuwd_k3JRW32myo5jV2erKIkKGb7JMltx3kzekLAfs2WxcXNdljoIGsTsLhbU8dpNvIdjx581zOq8UucsFQzoT8N0Basbc7QJv9o', '2024-08-14 19:21:58', '2024-08-14 19:21:58'),
(375, 'https://fcm.googleapis.com/fcm/send/dxavQCghMgI:APA91bHKX-4LnhK8lcG4GseJpYAVoc_3dmCbv_JotnTU3DPsnSh4HzTn4jUk0f5wSVHPCGf458xsNSp3SPrRgvyZYM5ak3gOomZJCGhSJZBjFws5vmHguvhiKpB9qpx9Xr3_OY-NMvRu', '2024-08-14 20:10:16', '2024-08-14 20:10:16'),
(376, 'https://fcm.googleapis.com/fcm/send/dhT1DxyEMnY:APA91bEJHDtvCo7-QRDF4mRXu3hfuXOSuHQ23m7161MUOWwiP4O0nvpb_6HA87KhU4n3YckBwHqIdgMnpf13VBERf0yu0VUiWJlvOI7BneH_HWA-9P1136MvBphlJVk4ZHW0_NYHKmjS', '2024-08-14 20:13:27', '2024-08-14 20:13:27'),
(377, 'https://fcm.googleapis.com/fcm/send/e30rhWsIEaw:APA91bGLlF-ZJlgz4sJ3rPQ4oe9ydbvNhtiOXyWEpOPvM0GuWKZF6ZV71ORcxW5OV9eNcYkBRq5C8U9m6VgAYG1xQzp3HgE_Mpb4LrGPh6Tl4s3YoXqex4T8ZbfRTG-IlBlrEvntqF-v', '2024-08-15 03:58:46', '2024-08-15 03:58:46'),
(378, 'https://fcm.googleapis.com/fcm/send/dQvdtS43tO8:APA91bGOGmjNf4xpWwxTlQdmU011p2MBgCduLN-ucwJpHILNEVYmZ0Fz7xqn03ObcvsrLGbIZD0BwzMvSLDW2s8druD_4-S3Ggsv-0quh1yaS8KYUJ0K_Is_p3gBUoGOLXpdeXMnDCei', '2024-08-15 03:59:54', '2024-08-15 03:59:54'),
(379, 'https://fcm.googleapis.com/fcm/send/dfVReWHn0As:APA91bETWrcObJbhMVOxqtBX5e61jwwCrGkJ4wQFKIC3ki95kqps79OUvmiydh-72Z0wQ4EG4sxALImCsvAF7j_Bv2zhEy1u6Kp7gB12KYE9u6k3werDzLUZxywhzQfJdqthBtsZG0hH', '2024-08-15 18:11:43', '2024-08-15 18:11:43'),
(380, 'https://fcm.googleapis.com/fcm/send/dCBHRWc1eZI:APA91bG2aHpL4qz2d9ArjjYrZmZsPJRzuJV36JyGzQBID7D2XJqIysktnhKfrQlBVK6dn3CWqHesYyCol9CBaCvQ1OE4yEDXSr4pV4radHfzTfpXoFgu0HvXDWZTlxYl9YnyjDTwfXcv', '2024-08-18 21:59:04', '2024-08-18 21:59:04'),
(381, 'https://fcm.googleapis.com/fcm/send/cdAV7LlJ7-U:APA91bGpGyOdrLcEF7qXwtsEVTxDnNkAZGkY5o_1fEYLHkUzUfSqLs7wA03_yJhl1ksYvib1aAVLKUrX6KgrfXogbj1tJuzeUHfSup-gfnQyLmCxhgLO2jXahuBzHQCzqsLxLpty53fD', '2024-08-19 01:53:41', '2024-08-19 01:53:41'),
(382, 'https://fcm.googleapis.com/fcm/send/efMhGYVe6g8:APA91bGfkKcgbsgdXyHrjB_BIqvXFuCSSqi37LXuttHM3nRYBmrDzr8R71VIJDyahy8y6a0Fqf27TOTph-edlVjeqcl8DPK9YCjHSgB4IhABAMtIhYEULaapQe1cAp4JG9WgBtGFib2T', '2024-08-23 14:22:41', '2024-08-23 14:22:41'),
(383, 'https://fcm.googleapis.com/fcm/send/fY-HHSyW7Zo:APA91bHh-95qBphgViNSQkeXzbisYfsfoPP11nXdOEBOrWQkaG2k4D2ZO1x8o-wsnDslEf_rHJlVFoXKKGQzT4OyVR7HpUO7mbehknbH1sheo9iBlv-FaSFa6ezw8u9pb7Z8NY6vzh2A', '2024-08-23 15:11:43', '2024-08-23 15:11:43'),
(384, 'https://fcm.googleapis.com/fcm/send/cfAxbG_732Q:APA91bEmlmBY-CCbK6DgN6otT8fp484DE-L915YHG6AOJQLMTTUz6n3j-Qm8q0665dVjzbD1ZkVx5vNAv96sR6CuZg-VmPERn1l25G8SrbKAGRFYu4UYzUmjCpfUC-LLiGvoUqFfOQxg', '2024-08-23 16:52:41', '2024-08-23 16:52:41'),
(385, 'https://fcm.googleapis.com/fcm/send/c4CzpWg1q6Q:APA91bFa_pPwJ9k6tmRQ0P_sLcZFfvgBngR4z5WZCF9PxiJ31I55DDm2exAtGOcqr8Bt9HYgPzrI4SA-9seFmwDXItJP7dN5fBS_KoDMbcutW21AIgiFqmEy54nIepXZ4_Mgd2yRjjQm', '2024-08-23 17:51:09', '2024-08-23 17:51:09'),
(386, 'https://fcm.googleapis.com/fcm/send/ea1KkBBwK-s:APA91bEIcTn-mIn6FubGQ0Tce7NNQCy1KEonlxMWHx1Lz5xj5ibhxzTk0TEk3Fl-VdM3i9ppamEtzmlZhfpwuREKdHxJmvBKk_w3UYfMOoK1b-xonReCcwr6w7NGOJGNQnV3iul1lgRz', '2024-08-23 18:54:10', '2024-08-23 18:54:10'),
(387, 'https://fcm.googleapis.com/fcm/send/cSmc5bJ87t8:APA91bF2hZuIlHT-UOm-8X9EnsAUoHdu15bIdzuSh36M7zh5F5XEYM8d9dzx1zqXvj0KcIBfM1bbn7G8SHvGnvHpxj2fkgE4SMNzgzrzmaJflBlKjmLLe8f4qPK-nHIegdygR692izd1', '2024-08-24 00:08:48', '2024-08-24 00:08:48'),
(388, 'https://fcm.googleapis.com/fcm/send/c3ldq1BJaU0:APA91bFMWI3cE72bwxmwvKXW3RpfQ85p6lowDvVBr2NU5XP37mWsneoq9jkpGTkDcZiEQaqVFrqJR37S71Du6evQ3mnCnHRI_V7XJ6gPcPdTuVBBGtOrkzFFw_6lgUXXjl60bdVQtD48', '2024-08-24 22:05:18', '2024-08-24 22:05:18'),
(389, 'https://fcm.googleapis.com/fcm/send/esLi5RVxE6Y:APA91bGu4Po6g8YgJVYhVlpLPkXVftsYI2jRawlyz1KG8IgX5F8UJAcDGnr8ewKaCdqx7_fBYMuo_7jwyM3LJ6J8JCHH73GX9YZESJjsJyWDGuNFQ51GwdlU4IscBMdlt0p7MnwHIMjo', '2024-08-27 17:36:56', '2024-08-27 17:36:56'),
(390, 'https://fcm.googleapis.com/fcm/send/fqZXAqSMzQI:APA91bFY8HXK5zbKAO3p9GwrvE7XSycWU0JpnnmYg2k21SSRA1AFZnPmF8dw5NQd_qfxYgfy3rPVqqXOzMULPnofrhLI8oKZQHvdIRbLj8XUOiFb_kyJFLE5t6tgQdzULj0IB_VpGmH6', '2024-08-27 19:14:52', '2024-08-27 19:14:52'),
(391, 'https://fcm.googleapis.com/fcm/send/emaAJ4twVDs:APA91bEkxUHq431bNuKGFJv0WEGKh7ufrtISGmfmBQci-PokIlJSxl3vYrerBgXWiiRmqmTmsxCyH5T5V2szjcA4hLQIsQ5enUnhWTb19OeEy54IyL7aIRYNJQT56cRdK2OdIwtpskB1', '2024-08-30 21:54:46', '2024-08-30 21:54:46'),
(392, 'https://fcm.googleapis.com/fcm/send/dSRSAXctn-Y:APA91bGchv4dB1Ak3GQgM--xKjY3yT9RjRncu3F22Bq03mg9XT99QDknPA2Y6Bee7CxqBhRvORAVJRbOJbjwTdLGwGlOXqyuQnmpBonLOgt1VIKO_F-QMIAaJb5Q0HkVIWzSHzh-elVI', '2024-08-31 07:26:10', '2024-08-31 07:26:10'),
(393, 'https://fcm.googleapis.com/fcm/send/fDr_zhBtgOo:APA91bEm3GreJ_CtgM-8pmquEtLV1kERkNyxu_yQe0zP2i8BijFuEVXPL_NVexDHvyeN0VQZxrsxY5lSbR7wSUdueXu6YKd6dMSS3Xp283svQfnUxg36yZRFjYEEIDWxKluQ1uBrAdPA', '2024-08-31 17:02:21', '2024-08-31 17:02:21'),
(394, 'https://fcm.googleapis.com/fcm/send/eWOD0JQkTuY:APA91bHihAFMo2NwuF2EZyfFwxhABmLUzcrYRO7AqOvGTOajhM7Ef7qdcyNl1JPUBobYk6IsgNqD13wX1Z81n17MPZtC0NmV3zUW2-ilwtMWSoV--squvSDUWe3YDYO4aYKunFhwXmKU', '2024-08-31 22:17:37', '2024-08-31 22:17:37'),
(395, 'https://fcm.googleapis.com/fcm/send/d9Cc_eyRW7c:APA91bFKI6HI7tRiFXRacsmv8t_dOWFr3E31x6QIDzN4ixZBrV5NhGHdmSZ-M4XlrTmqJil9J2pLsAkgtIWFqJZWuiDq8kCLNWVYpm8NhGZYYRPrlRJRCDZB2QutAisB5yYTYMpVPU95', '2024-09-01 04:24:35', '2024-09-01 04:24:35'),
(396, 'https://fcm.googleapis.com/fcm/send/duocsdhW5WM:APA91bEBDwhQzYg6wLixcpdnEa3jWXFerWgzitnb6P2stE3NFdlYcY2qOsSr-bLKK0FspBM_G5-Vu0RQ9rUJxtVh2sCqkKHtedPlbPhZsCdqH2BdOXzwtiNvsuzcbpYZAhpo8fZeXZlr', '2024-09-01 04:25:01', '2024-09-01 04:25:01'),
(397, 'https://fcm.googleapis.com/fcm/send/cWn84mqT-3Q:APA91bFa5EgSmpboxahtjkGJr1_675jrf13a_nc9UUxHZOxQt8-UlukajV5sSQvRjcWDfAHFe4Ry6rXU2l0GcQoX9_nXJNjPcEI99D1ie0mys3014o3DPJMJ1B0msJ0AYoHWeRlX4TZK', '2024-09-01 07:57:22', '2024-09-01 07:57:22'),
(398, 'https://fcm.googleapis.com/fcm/send/ei79yTHSHAs:APA91bFYpZch7i2TUmDx8pgCFGBP9XHa2J_NKTPfrh1ZcgwldzW_xryHnROgH-NiFp1DvjurtGhw7-GIxkJIZc6iozr8elJAU0kzNp1W3gleJfvgG_lTWSWIr21BD7dhqZBwdueqkcYE', '2024-09-01 22:07:58', '2024-09-01 22:07:58'),
(399, 'https://fcm.googleapis.com/fcm/send/db3MsVsQsUg:APA91bESFKHTBU-fpPjeDY8SVfj9JuEYwv6ZuMp7OFFPOc25m1Vu7WMaIK-Gj2bid-MbKJZQpmIPR3l0Nj-UaaIl39Mr8Vf1EdmJqIo74Ahf1GZCyflcDvofJSxJXCXwmy7mdKGwrF4a', '2024-09-01 22:08:22', '2024-09-01 22:08:22'),
(400, 'https://fcm.googleapis.com/fcm/send/f_WxbnhrUCo:APA91bFlWlUxICeixAoYOb3uHk7JiePt0a2PUHRz_fveYi_ZbecqExl7SDdEsuiOEN-LLXl9Hzm-lH0kNzL-ZAqVBCje-bLH6qwuEbbppI8DjRAPqpgEPyguFTVeVk7DB62e9T2Ftqa0', '2024-09-02 01:57:24', '2024-09-02 01:57:24'),
(401, 'https://fcm.googleapis.com/fcm/send/fxB_3sNspUo:APA91bHLDRFqE0AX5YjwG-kjXCnSQhbPWya3QOGZB5T1TL2XYNmv86r6mKopEp82BTpLqOV5R58IducSCyClHOC5tqrNaaHDioVgVJhXanQA-UCFXP7h7e7mjY5r4fB0LXbD6LXckxJD', '2024-09-03 02:06:12', '2024-09-03 02:06:12'),
(402, 'https://fcm.googleapis.com/fcm/send/eUTW10Fw3gI:APA91bETp2ZPaoDHN6qoKNAvRGSuDJQX8KnWu5adedYaK8hJZjdYd1j1XKsAqWD6stvXGaFECapombyJPs6aYsGYcDsSEn5NSAzqBAr4x0Lf5mX1FcSuQpX_Mfu078iEyGP23Ra0HDC5', '2024-09-04 00:51:10', '2024-09-04 00:51:10'),
(403, 'https://fcm.googleapis.com/fcm/send/ebBu6YWpYHE:APA91bF56cRp4_GIkRrKwXK7WA5kf2t-OWpcOdij_bmrDbrcj0g9LJ6ErY-tYwDvaeCCysX1aQTlT2LeOLzl2P7KJeTF9zpxUdJQLEXsfF12YjndT5z35Y6tc454xjHM5nVpdGGPHfe4', '2024-09-04 21:00:06', '2024-09-04 21:00:06'),
(404, 'https://fcm.googleapis.com/fcm/send/dhrvqMV2_qM:APA91bEMV6Pe2BJinRplaPDtqStwKzZeRVE6tJNB6WQNklhD45AUecif-184czSOFPLn2ab5xKqt8WwXxDUZeu9Iuvr5YcIh2GLCRBQc3MUU5ySuHx_SHN5cP5nZTYA_SnknSGIY-5-u', '2024-09-05 00:52:35', '2024-09-05 00:52:35'),
(405, 'https://fcm.googleapis.com/fcm/send/fdEk9oBN1qQ:APA91bFJ7Eatv-oa6jBLtIbew1TwDmU3F-K4A1JHoQnuiGEOKAi5h7sPb-LyXaKK4PN71SX4t1j6blJPSDezBiyMc0kuuAT72J9PKZ7gIyQJru3k_bLaksW28zNajVJK2-lYFCY2nfms', '2024-09-12 16:29:16', '2024-09-12 16:29:16'),
(406, 'https://fcm.googleapis.com/fcm/send/diKAzKxcUKM:APA91bGnDdXsDN_yMhm2xmRhY2WNobtpgEsC5NqrlLAWy2yyrUnLsyoIW-ZAHlRw7k1TOJi2i2f4NygYbkZpia_LQbBngccPztxBwKcJHpm2oFq-iwfhhj-XxpijuAha1x7xFSz4g8z5', '2024-09-12 18:43:33', '2024-09-12 18:43:33'),
(407, 'https://fcm.googleapis.com/fcm/send/ebhd2SoTIcU:APA91bFo8unIH_Y8fOhtww-H7nsGwu3qeswsczzcfZFvfMvijMAchyORs-qdJPRwcFIXMp0v9Nb8putur0ri5SfTj6wbwGhUlc1rmy61CvnOpnCvKsDfjE1JHEeql7cKjtjzsCe6x8zJ', '2024-09-13 00:43:04', '2024-09-13 00:43:04'),
(408, 'https://fcm.googleapis.com/fcm/send/cAfDOBWBUdw:APA91bGUbNj81Uu0yzffXLycXhA3b5NT4wz52c8ksG6ySw5UwpoynhT_TOUdKOKUoY-WCHrllm_UMRRqeg2d-4eVBrK97aCB_u9HifI4UIsa8YA_WLHy1A6QnngNfGrBdEn2Pbsdg86z', '2024-09-15 00:57:50', '2024-09-15 00:57:50'),
(409, 'https://fcm.googleapis.com/fcm/send/e1wPP2CkLmw:APA91bE7g1gq_lrjNydJt69f8h-2t9sD2hTZjlhU55QGtS98eDI4L_0vDSfVZ3juYavfeQdKqYzmb1r7oVl3Sq2g0Qz2p8eP6VGITQ5oAOFvUNV8gXjhaNoB5gRNNPVpPrEsZBf5HQhh', '2024-09-15 19:16:22', '2024-09-15 19:16:22'),
(410, 'https://fcm.googleapis.com/fcm/send/cYLvT7HeyzU:APA91bHlid2edIKu_vG8B3Nj7pZcIylDbu--r5faKUdQMtu32jv2NnGUXCvB3s6q13M9DIJO1_r34u3Kco5VsEmjGjmrD5kLQ8NGaAeC5Bd4kF7oA4MTz1BtFk9FKJNKmfYXi8jBPokB', '2024-09-18 18:53:11', '2024-09-18 18:53:11'),
(411, 'https://fcm.googleapis.com/fcm/send/eqQegK4SmZk:APA91bH8R7XjGryaLNafyEhKTFBIn9f_au7q22Qxn0it7X0XyrCv2DsQiq5oUtiG84uUUrzio3a-3hx1RNGvz2GD20kpDHynCihI8T9ynUb1xnrgb-xFtwt1w7Hwwls8-AUVmbUCIDJi', '2024-09-23 22:33:35', '2024-09-23 22:33:35'),
(412, 'https://fcm.googleapis.com/fcm/send/fiXLWDMdjD8:APA91bHp-SKg10Zpbr5gm4uDxfK62LnxrRR3_j46J4ilPISi2jKWffYyJC1FthmW7_QEJ_KNnsuHTjQ_pyHSVFeG2TC4MzuSwQpFhx8fLKryejHFaqihc4zFd-q8cD3oI3O8c5FCycMf', '2024-09-24 20:42:42', '2024-09-24 20:42:42'),
(413, 'https://fcm.googleapis.com/fcm/send/fpsJcUh4oAk:APA91bEIQ2y_CApAjhedfbcwXK_R4DW2Vsxr_F2_b0mSDrFabJ1CAQUpvZyF4o1_D95NkWgcLPjMqjLl4FTUibdDHdGkrvBnKLONH32kOuDD3uV3WG62lPMMcCaB2a4_UYMQMaW8-qI1', '2024-09-25 03:44:14', '2024-09-25 03:44:14');
INSERT INTO `guests` (`id`, `endpoint`, `created_at`, `updated_at`) VALUES
(414, 'https://fcm.googleapis.com/fcm/send/f6q9zTRvGjw:APA91bEaJesM1iSgalcnlLmLNvcJDJS5l2kmBDB1ZS8AgCZ4zoniK7rEFva6ZZaN33RNfUFFstHchxjVjp-9ow25p4Ot0Dw2y9uKjUAQ5_8CMhG05DdwpxWXi9GqPF0oWQfBiVoiNXUD', '2024-09-25 21:27:20', '2024-09-25 21:27:20'),
(415, 'https://fcm.googleapis.com/fcm/send/fI98smzu6Qo:APA91bFpy5LMyGRaAXRTctFltFTg1lChnF6YumeAonq6M2_vUJSsDkxreVOX71CoeFiFSU9q_dPjMJAT2W7yw7zEJ1TKt_Z3Fkhg-Vhqs5G3nbTDgcB-Yot9cdjeF77WPZRLYhUvuOba', '2024-09-25 23:48:41', '2024-09-25 23:48:41'),
(416, 'https://fcm.googleapis.com/fcm/send/fCtDUqT1Ls8:APA91bE4nMo1z3exaRg9-TYiLIIo-X3CasxnkXBoylcFBlLUB9bYvJdvXaZYkb8gVmuSzDCHA9ouK6MgtN06_Y-KRzIzlkG-0ffd04vPtBJ1rX856i8EW6YV-zIjSunqS2cfwlCb1a-Y', '2024-10-01 07:55:37', '2024-10-01 07:55:37'),
(417, 'https://fcm.googleapis.com/fcm/send/ezufV3NzGWI:APA91bEV9qeAApt1ZSTHN-Zsk5r-oDOWuLLW7etiFTNrPw6XnXLyGoEl7SrOAGOpwjm9DxmB7wIXV42I1vYNewNYfAMh32mpZm05Vl0MvNxNM281ya7ejQ3h8lgW6ISZC0ZCys2QxvHf', '2024-10-01 17:32:27', '2024-10-01 17:32:27'),
(418, 'https://fcm.googleapis.com/fcm/send/cHSGW4XMo0A:APA91bHyTynEqgt82XRVre5PkuNfhIy2ODcMWNI8rC2fjJ2ZQoR35VE0PwaZ3dM7RTLPvI2w24Byg5n4A7cs9Ms7RPZJaJiZaC9xoeL1ixDDFjvnh_B_pDWIL554QktRUSP4DMiKCgc_', '2024-10-01 18:09:39', '2024-10-01 18:09:39'),
(419, 'https://fcm.googleapis.com/fcm/send/eol1mrH0UIo:APA91bFNPVBp8ksUZNaHhgNHh1r4AlVLxBeCaBvzC_N12Kcf9fEp0nDy8Ix-ugEZ1pGqgCj2riiwbSW-qpuv5_Tjc2-1B043WZcYSYQrh9szXAyrYinHwU2cZsxiqaVr9Kx1tUDKBDnJ', '2024-10-02 23:02:42', '2024-10-02 23:02:42'),
(420, 'https://fcm.googleapis.com/fcm/send/dDhbTm1GyUU:APA91bEv8fiByEyBfy6Vz-wekwCT0kwxdiVObkAlRGIw5jcfDJHRy1UsVtW6NNavUaLA9is5Ak-IqfBDaXNux0ip52tiwcWVRDvtHtRnYHZ5jAfGhxi8_ObPqHgG_nA5WA1-u0-RIq_1', '2024-10-02 23:04:09', '2024-10-02 23:04:09'),
(421, 'https://fcm.googleapis.com/fcm/send/dom73Jxh-FE:APA91bG3O4lXjp9VEp0cL-H1HX6dzAqmtzca9chE-mECqRvv9QXe3zeweKL3TOHfDrRXllcFMXDBXJgeUKJK05YsCm1irlq9-rtn7zQGV_l7zYxtUWz8eCtd1YxKrB15WqNKdGy3pirO', '2024-10-04 14:41:56', '2024-10-04 14:41:56'),
(422, 'https://fcm.googleapis.com/fcm/send/fKPX4782xg0:APA91bHIlcuHEn9fYN5iYtcA6lSop6At-Euyv0T9Bfaoo8KMftAoEGRCn14SnLwMNdWCHAsKRNdgPy9HbDaK3-SbeO4vg9apPD3LUITJsNS0o4HlO6Eh_XGA24-MzjVTZO6qH0qLh0ib', '2024-10-04 20:46:49', '2024-10-04 20:46:49'),
(423, 'https://fcm.googleapis.com/fcm/send/dbTABLLfWmY:APA91bEfe_PL8piU8CwvhnVo50iLT7NUm5zmEqEVSXFEC97M4KwHOwztmm9fixKjfAp4kEITMh465BF4tITDb1ghcWbAbUpw6NYu1MtBgodqPKt4GRgaQpdaJVu1PSrzlkDi2-skYZFo', '2024-10-05 20:16:45', '2024-10-05 20:16:45'),
(424, 'https://fcm.googleapis.com/fcm/send/cfNNxoZ3Sn0:APA91bH-5rS4bnJy07uaFDMsUmzkbXOhg-lRs-_G1j_zE6rJJ5zMOpeMz4yB3KfExjGSbumSC9xI3DFegY1cFwbv9lSpZHgPIiT9Z7kd3F9F1lp8BYUZtySwc3FDTVguOtbeiG5PFEkT', '2024-10-05 22:45:59', '2024-10-05 22:45:59'),
(425, 'https://fcm.googleapis.com/fcm/send/f_WL84QCVgs:APA91bErC2MqDS2VXUruNuzJxrsYMI6iUDF0I4pIVD4uJDGkuCNsqZEagalGhZgt1DsBJ5ArumFJgY3dgSp6EM-mgCRWxM-Ui6KszOm2EgxfKZFEq2Y2gPuQbGRK49wHcBAvC_ehmc5L', '2024-10-05 22:47:01', '2024-10-05 22:47:01'),
(426, 'https://fcm.googleapis.com/fcm/send/etcNzP6OvHo:APA91bELeyR-2DAP54K4aWymx6ulLViMTh8BMOsuJScWhuw-DuXvtGaw7_QgNPrJkUxQ3-KnE_58rEAjJ9OBtD-TXq1wU8lGwEJ-7K7LBhj0-k-j8RVxroIOchOUf_6cdRdv8CQxn6Sz', '2024-10-05 23:46:18', '2024-10-05 23:46:18'),
(427, 'https://fcm.googleapis.com/fcm/send/d-6JpAyUV9g:APA91bE-2a5SGm4qFlEQGhvpR5V4Ccr7rb6XOcHn5c6GCzYrGvIn1azCjo7Ho6_iiNdUS4534QPlPLlCETb-cXoQ8iSv72yQyUQseSmTAmaMjG56sM2RT6POXGmkcnXJEw00vYkWUQa3', '2024-10-06 16:14:54', '2024-10-06 16:14:54'),
(428, 'https://fcm.googleapis.com/fcm/send/ddFh-SCDFto:APA91bG_OlD5DWM-B7mhnmE1BTw744yt9l5Tq6WrYW0XqpNAQA_YjFK0DwqIjRndXXTQMPaLibw0SgJZCzWyCg5qMWqIu-dXIxSouPneoPGfE82kAY39AwG4B62kPDNimUQB3Mz7ZR52', '2024-10-06 20:32:34', '2024-10-06 20:32:34'),
(429, 'https://fcm.googleapis.com/fcm/send/eawry6DsIc8:APA91bH5lvnqKkDJzJ13xnw-Efv0hrIJxbvvACl8yyKCEOCeELvKorNAcNbeRGPAF6zLW54DD-J8ykUrj_54d3_3kCzliJA7Tw_mZ__3-BrNQUOLjP4aC2wFQPQPNNWxs1Rj9Vmx0xOj', '2024-10-06 21:23:48', '2024-10-06 21:23:48'),
(430, 'https://fcm.googleapis.com/fcm/send/dUbWtePSCro:APA91bG025BTaOwImgjvSSBZEkdFukvH75h-7dk9PiqhfMIY3ZzcYQe7N53_9V3exdYxf_gRncO3xpOf6EJ0ffnDG18d4-y_F0GPSgsgjvffZTpgTlnHksp6ObeXiNsLjlOzdvaCgjjQ', '2024-10-06 22:45:44', '2024-10-06 22:45:44'),
(431, 'https://fcm.googleapis.com/fcm/send/ew59knFhnJQ:APA91bFQeXehTHrCHbBD6FGZekuuz22HHYeO41zTo2FR8amBzcJakZsmRSRviLgKYPHJVFqrLZHXhOGFqLP282Lxho5RzdSPfPg-NpAXbgOgdIk8ynLxFa_f5NFHkp9Eq0j5trIB2Bos', '2024-10-07 11:47:27', '2024-10-07 11:47:27'),
(432, 'https://fcm.googleapis.com/fcm/send/cuhTA_XOEw4:APA91bFxLZfJNtyyYXXT27HgmwYjTJ_wRVDm9ZdyX6KeTMz8hIXvvdPbKwNXtKzFJoVbZei3_5PxXpVTwunziaOG8eMluWrjZ-NInYEyHyFWY7lyWQqNySgiW__mtUOiif5CY1W1cPsa', '2024-10-07 16:41:37', '2024-10-07 16:41:37'),
(433, 'https://fcm.googleapis.com/fcm/send/dHFHt3sVJ3g:APA91bFmNnHyNuFQEuBxYhHJnswDgcBGy-ZPsz2IobDS3WY389rShChrtkbbHnFFkg5lTksJjIACX9rlV7U86oErpyiF1-htK053YcPGtg5KCWSx8GkCsO-pSB3KEgoie5kySIlSk1X7', '2024-10-07 16:41:48', '2024-10-07 16:41:48'),
(434, 'https://fcm.googleapis.com/fcm/send/dO3X7phA_pQ:APA91bEiYW5HOqtvwMqC63QmEYWgvyLshdtsBIGDATRC6XO47KEsBi7-OMKRBFu_cwZEz4KlC5eVO5qXSIQSzSEtHk3PTvq8or3eTpDvOgq5yZmOEofhHkaS-GLhisLKTaUwCLvSEjzz', '2024-10-08 19:29:59', '2024-10-08 19:29:59'),
(435, 'https://fcm.googleapis.com/fcm/send/dWGylNmB3sc:APA91bFJK8OBwTMPU8cguhINFiGXcMT3BnYGAPal_0yCuHubJT6NIznC4q2vjd8sVonRDIGB09IWdZnqC29endSJXIHV-To0SQbtL5cif3sAvWYnPjBP605-NOHVzxwH8vvY3M398jXp', '2024-10-08 23:28:57', '2024-10-08 23:28:57'),
(436, 'https://fcm.googleapis.com/fcm/send/df7kgkHDOrY:APA91bF1QR_q8DC63hHyFGnXHLQHlzKnOzW_2PB5r8h2AQc-NL9LX5dGC-qJV9STs37F_9-7vR1Hagst_q3Ip9563lAMP38e7Fxq4BR6pNzgoq4veDAecnh0FCsmMrvh_9BIGY9mcgSo', '2024-10-09 23:02:29', '2024-10-09 23:02:29'),
(437, 'https://fcm.googleapis.com/fcm/send/c-aeFxsMCy8:APA91bEl1Gbf23xvclB6fSiYR-k8cewuGi-uwH7kTu7gAUKnGcXLkCHPW9zIbRPzhTdPRUaPGrOGDY_357CJNXETY7gbQPdat3gi5_77SORddOgUoqSDLCgTdDNYBellZEKehY6Q5MLy', '2024-10-10 21:13:49', '2024-10-10 21:13:49'),
(438, 'https://fcm.googleapis.com/fcm/send/fkke7aCMwqE:APA91bEXwxomlLNcSiZmyE8FCaHaL0ta5PfxqIwv6hJOJL8lzM0fN4QBvETeFhi5n0doxC4ekaimQewg3m5qgMUJqpG3xb3imi1ebckxPJHOQyRhtMTfbmn6OR6lVPhA2lsZtkTNAZVM', '2024-10-11 02:12:10', '2024-10-11 02:12:10'),
(439, 'https://fcm.googleapis.com/fcm/send/fC0xr4kq6yI:APA91bHXQSxOiYSCLm2dI9Di155MqLFQ_uDdKfJOXwB5nUTfKd_wG8OXkdGZox5bVqoOB20s7RZVYxLtOj5_0rqBlYhhIZEPF9LFgxhqzbg097mlVQd3nDYw2M3ioRho5r1zdcFs39k-', '2024-10-11 06:54:31', '2024-10-11 06:54:31'),
(440, 'https://fcm.googleapis.com/fcm/send/esqEvuYzFkE:APA91bHW4lyT35ZIY4o9MI8vYXJTFp78CBkcky2_3jVQIHjyzNxv9e_LnC5DTZ5nqbbMcEPfDyufabtvcyJY8M5U-dsXDwTW0_Q6xOE3n2ISXMsPnq6MaigArzwqVjcD-wYVKX4kESUx', '2024-10-12 04:39:32', '2024-10-12 04:39:32'),
(441, 'https://fcm.googleapis.com/fcm/send/fuCQjFDFuLE:APA91bFaTlcj8iHjCoJvja1RwXloAReIaERddK8dTz4_dJv7ENuLbbBIPeVp_okNH-OFFUg9RaWTx7kjQIqUsou5ph6ii0ruSFDULtKROsI-RmS-A2d6YBiaAWh5FwClJtnfz-cFbszT', '2024-10-12 20:39:30', '2024-10-12 20:39:30'),
(442, 'https://fcm.googleapis.com/fcm/send/c18N0q79SwY:APA91bFvPXludDXl-UEECHqwTYwMllEQ6l3T5ncygQ8w5ZqHiJ8eefCJbCaH-y6HyPzrPIOiRSHoIBo8IYRrvEIiDFneFdBMHqOpx_alwKazOHOBWIOVJAMB0Sou6-xU7NEBw5MYGpyf', '2024-10-12 20:58:24', '2024-10-12 20:58:24'),
(443, 'https://fcm.googleapis.com/fcm/send/ci4i-bzVIO0:APA91bGcybIi6YWJ8o9_r-f10Qh-eJHqhgX1BokXXGRi5SlSqdNUxTRFXyObsHtHg8vXnhROQpCbPRiOHAkF6nTQe84un9dBO035BiGGzO8g7jOq04lQeCEjykTrupPPqsFTXCeQMc0I', '2024-10-13 20:24:21', '2024-10-13 20:24:21'),
(444, 'https://fcm.googleapis.com/fcm/send/eNDBLfWesSg:APA91bGGl_uGs3PWWNw2IS-GZA3YtD4Yefd2Ht4oM4PBLaSf5XO2hBpN1CkLZlbzYdRnHhAkeh5Ef72dqkwWX2juRKLdm2OuEjoNtQBatIQCnqcTtKRrvUiTm7KaUD3vHyFFi82pXZjI', '2024-10-13 23:01:38', '2024-10-13 23:01:38'),
(445, 'https://fcm.googleapis.com/fcm/send/f1rkK6RDvqo:APA91bGUjrM5yer4DzDpZpl8xdcBsS5CrtdS-8Z9qvlV0FmoKgVW4LHprKoy6GQRqBqYzL2tGNCbOeB1IjTI645SuDfFTA2AFLB4FzObECLFlCSpq7AYV06b_VgekKM60Ea0iXbxJl3P', '2024-10-14 03:06:16', '2024-10-14 03:06:16'),
(446, 'https://fcm.googleapis.com/fcm/send/eUOiNbvsyN8:APA91bHvpc0vllo-vhEPvPahX1g6Y2dOK6wnWdOkXrt-WH-mQfEbNPFBjmbF7HVhIo1mHw6ciaG1eM_Npkvmhu3yUJyDbCl6KzlPa-M8TVoxoZn4XFuo05J5sY-2PH1uqw1wFd2fqnRg', '2024-10-15 19:15:22', '2024-10-15 19:15:22'),
(447, 'https://fcm.googleapis.com/fcm/send/f7fYnyE9BeY:APA91bFYz6kqf3eQ1O2UZH3pttag8XiHxLzEZbddGoT7HBb3mmR90uaGh5ILVjJD9lIVymvxF_ssM277JzcDQWkJo9LqUe7OJBinr01jdc-dT24SEHxLKpxb_g2Q8xerab1_IULVsRWQ', '2024-10-16 14:46:44', '2024-10-16 14:46:44'),
(448, 'https://fcm.googleapis.com/fcm/send/fBpOUowBabo:APA91bHJeuIT6vSVcXEffBAqpYJ_VyKAH54_iIqexqV5BM2sUcMHI0k1KBKmAAQj0MI-ecXZpd6ppt6FXYx5A78dox2lm6OhzzQz05c4_gcOH6XJlhNrRd4ILpbL61cAWpkyHRth4h8e', '2024-10-17 21:28:16', '2024-10-17 21:28:16'),
(449, 'https://fcm.googleapis.com/fcm/send/cRUxmo9HO80:APA91bEYd5_hjiXvFzre2QcqBu5_tzx7yRbPngjMe0E3Yg8Rq9xrr6O_c8XYZmNXfW1vj8IhKWvUju419heQEHhcZ26-jXhWlRgGxefCXps2AieBQkqk_7FeMBwTg-jk03Rj-BgtYCpd', '2024-10-17 23:01:17', '2024-10-17 23:01:17'),
(450, 'https://fcm.googleapis.com/fcm/send/fzKRofOF8lM:APA91bHlAybZY7DTbrejLbMRoOXXz1MBjtbGUA68bbMqmjGN10ZEEHuumetvh7jRJ8-U-zW6FaSHfIN7rqzNr9O6xfSl-26ATN80cH2VC_c4byEUl4EUkK4iFnc60WYqMwaBmBuOoO4g', '2024-10-18 00:40:16', '2024-10-18 00:40:16'),
(451, 'https://fcm.googleapis.com/fcm/send/eXX7ECG5q_k:APA91bEF9VgGU6dRi-322NsPcAYTbDRYIRxh7ur7mvy7PUC_5dsCsKaDnn0zPcGaJLVy6vPzONW9lTvUY1c5u2qlXevIxq264pw2x5qhwVNs5HXiZaoLXCWcX0MU2ypgEGTd7-la8dsh', '2024-10-18 23:34:41', '2024-10-18 23:34:41'),
(452, 'https://fcm.googleapis.com/fcm/send/fR8fLUaAPy8:APA91bE1I0t6uwj9gETOJuAf6XM64VH8FDmSvH9RSxch_jAoB47ueqwRJ05GfRTMfEKeR-9keThSkweVy6ClYUb9q_rEMb2qxYfIDREKFVndNLNqDu1FIisIaJ9TowuLajxG5CCJRjG9', '2024-10-20 03:07:34', '2024-10-20 03:07:34'),
(453, 'https://fcm.googleapis.com/fcm/send/dGllDujUWQM:APA91bGjUnOPjwUBMtavrz5g2shtBkCtWZlDTM81cpJGCiUnJE24IBegWepk-MC830aM_FwKsMoJN6mY_2q5F6cKVrhFkrx_9BaqzdKp_MJ5q4YZgl3zLMt3WVRURpLs0-VsdX7lorGW', '2024-10-20 19:59:30', '2024-10-20 19:59:30'),
(454, 'https://fcm.googleapis.com/fcm/send/caDuoecYkSQ:APA91bEXhX1JVsQJVkBn73_AgKEXDEqBuZn09ei2XqgrpkGBHA-Dfn9jaVC4x9PpkBRVMbHkfujkP8Vs0Zg7fIkLVplS29Jxn1nR5TA5S_uiy8BKDtJc7v1VsCs5cowjZ7lQSobrxccN', '2024-10-21 20:40:28', '2024-10-21 20:40:28'),
(455, 'https://fcm.googleapis.com/fcm/send/f8s8ZqSv37Y:APA91bGO2h70Aj1_gmahhQIwk9c5-_hLC3RaUteB9fsvmsF6VIO1HzISJR-B_t89u0gj856aWki_ww3j1Wsy0n4O0XTYN6zqRgjp1eUyaKgyWhS35-tRe6_67uhJm5u6fjFjcEE3Oihn', '2024-10-23 19:46:57', '2024-10-23 19:46:57'),
(456, 'https://fcm.googleapis.com/fcm/send/d9fsyBOMmzI:APA91bG8svdiyp4NLs0RUDBGwVy-nPP_pji-ZMhg5NET2XNJzFWDQAq6znthJtJ4ZLLoECRHyPA5X5W0xjjdxrrfP___FKv_LsTX2rA4H1vitZsRd-5mthKWcXT4rjrVVqr7U9zfZhhN', '2024-10-23 20:11:45', '2024-10-23 20:11:45'),
(457, 'https://fcm.googleapis.com/fcm/send/fPF7XcrS8Z4:APA91bFCqZBHerpb26KTJUCqbwl3swoKa11WF3hLuBVZXcPJfDa_2ONizCYPdq4uJ4YcF-FNGZscWa8UpZ1e-YVQQQ0-OqL5HfJd1fGfBz5hcT4CDnL8CNAuJFfAGe8yqCz5W1I1nSy-', '2024-10-24 11:37:17', '2024-10-24 11:37:17'),
(458, 'https://fcm.googleapis.com/fcm/send/exYxjjPh-G8:APA91bEyD2RGp18qE14pk0cEA5KceI1J9RFYUHbec4B_0QAl_GMvJd9ONFfPpgCwkzZNNVvPYrT1pRVejNaPYsAsP3YF2VfHeVkjD6CX1qHXBkUAFAF3RI4SclsPExh1DR0gXJX8x0WZ', '2024-10-25 17:54:40', '2024-10-25 17:54:40'),
(459, 'https://fcm.googleapis.com/fcm/send/ekTS_9xxG34:APA91bF4KAoRoWvuFDWQCdpxx_U3lZSMJB6Js86NjAO7RkRnumZ3kIl8hE50kT2MO5lHDfLcEBmwW9xeiac7ReyK47qVl7ie0mSygCb_cnilQdIVQxsyUkRZ8eeS4f3WNZIWuzSwDQiZ', '2024-10-25 21:20:36', '2024-10-25 21:20:36'),
(460, 'https://fcm.googleapis.com/fcm/send/cim_S2RE5sQ:APA91bFaee8xv6zhNaEy8nad07ruCS4jTcT0t94Tcg_wM62CjhIK4fb_HXTNneaKcmdBPR6o-smpkW8v5u_XMIdR4ZnrWI2l_bjMhRDtnesGSpBl1oZCDjXZcQ73MWXzuXpVssQofnbb', '2024-10-26 18:43:04', '2024-10-26 18:43:04'),
(461, 'https://fcm.googleapis.com/fcm/send/cIIv0oZGWOc:APA91bGkzDjdN4cwlK-0-sIIeN9mQA2X-DMI7lBRMmvkYHAHDoX301qkfSnykQOzq1Ygqrg5zdI2dyWz_DDMcRBDf5idv1f-vwWMUHoFJFDc6gZjmVFArXUdQHpRhMpv087rUr5xNGBi', '2024-10-27 11:45:54', '2024-10-27 11:45:54'),
(462, 'https://fcm.googleapis.com/fcm/send/dvF0-naVa4E:APA91bGWc6BhGKWgQwHXu2PmG7kenA4zsHHiFRo8rRfPkh7K-iqUEclVqbtu-FONKl5oBaqlo4_k4wquhK1CXNHjTrMNw8ct9FTM78QhTiHWfKi63mYw0w4Vpr86Vy0yBlUBEroV7S_A', '2024-10-27 16:46:27', '2024-10-27 16:46:27'),
(463, 'https://fcm.googleapis.com/fcm/send/d0T_MzmPbQ8:APA91bE5vcn8KWOVQXPl3nyVfJnmR478ZgN5svvLfWShPVvX4dr9wzuVx5Yhy8RP72lOzMGzKKDkl4LjKeoQbsQiPZmhTM0RQD2u5AQUo79NDZR_BaIvDT1StLGCYOOf44V7uXVYVTMA', '2024-10-27 19:17:57', '2024-10-27 19:17:57'),
(464, 'https://fcm.googleapis.com/fcm/send/eY3Yf3P9wyM:APA91bF0EPtTa6GAOQM_kjDM9BF8X45yaf4yLGGYOAdss9O9IMDdDQ6YRuUx0TXEDmZM2yFTt9UX3-Wwtn69bvnWl_4qb31Es8Op3oJwrQ7SWFklG-I-flxdu6CD-tIVIb501jpGPCW1', '2024-10-27 21:09:35', '2024-10-27 21:09:35'),
(465, 'https://fcm.googleapis.com/fcm/send/ci-TVLvIER0:APA91bH1uDsPeXigL2JyXgXkeoA-UH6rcvJS2cN5Ld0nB8uuQyBYFQkZjh63DNls5wbAQBwZvc2Bq35e23qNG0Qcntomr98-umFIrv6uyS7uDM08z6lS52snQa5oH4Ob5p_srLLh-Ud-', '2024-10-27 22:17:38', '2024-10-27 22:17:38'),
(466, 'https://fcm.googleapis.com/fcm/send/fXNyqoXIKSM:APA91bF4e59umEbOfFmhIc2c8IYaNTqnECtTeiQyyF7AuTC_vuw5zkph5Pmp27XsXb4v9MGLHmn3eIkj1-TMrrBbPffu9dnm6OxyjeHy90f7gmyITLIatCRVC-6fX8Tl_-rLL5e9knru', '2024-10-28 02:16:18', '2024-10-28 02:16:18'),
(467, 'https://fcm.googleapis.com/fcm/send/fwCmJESRtDI:APA91bHeFgMKDjB7MJxwQ3pyJRD4pA70UcHMMYDCR0htEgHg42ZlvBsDaHNhfIYtSVY0A4arDWK_gI1T5Fw2LR3McEV70L8vHRq4HPPW7AliJualLuR9M6VubJBtVljsHe6nRXNOg2r1', '2024-10-28 02:16:42', '2024-10-28 02:16:42'),
(468, 'https://fcm.googleapis.com/fcm/send/cH5p3zHs-Lc:APA91bGETIOona1RJF0PqBaaVUd96eXVGrrhcSHHJLf7XmLowHCZwHOtvIT3UdkqOm4Ktbh6Fmirge74yxxFIjS6tS0EfcJOsZ0d1djyyKb4h9L6BKbLrqliQjfMQpUgzhmKUpAZYeHw', '2024-10-30 05:24:19', '2024-10-30 05:24:19'),
(469, 'https://fcm.googleapis.com/fcm/send/e4xZTnCHXnE:APA91bH-rtvyPnPGBCuHjJxU5QtlcbiCSAWr2PpoDdDA6PeKKN2Q45d7f6Sb4vvceMT1eUfLyuger625gXdL8jf8UKMabJ3a9C-0XsZfgnCDLtpPOwvm5ZdRXdou1uMQdINWHIyKDb21', '2024-10-31 04:46:48', '2024-10-31 04:46:48'),
(470, 'https://fcm.googleapis.com/fcm/send/fCtFe7DrZOU:APA91bEa6EfNymSbcqlsJudJX-QcFxIqRWT-r9BtXsY5nKZTWr17MbNV6WwifrJxTlD8vPsUV3p7ANQ--UavY6I7Qc6jikEb1rcwCKA6-IZ_13SL6DhoXvu-TGA8_gvXBfuGEUzwOiDV', '2024-11-01 21:01:30', '2024-11-01 21:01:30'),
(471, 'https://fcm.googleapis.com/fcm/send/c2bVL3MDz8g:APA91bFgLJtu99Zd1czrbf074p4wUmhmUr6_Qxg0MstZQrybKdWyfCc18UHJWS-FdzK1q3WQ1Ai7923CjKKiiAK-FPSukcKYf_h4s09W1E0JJAhru2yucS2bQb59kDWyaTxppgxnwBDY', '2024-11-02 00:36:24', '2024-11-02 00:36:24'),
(472, 'https://fcm.googleapis.com/fcm/send/dPWupucW5G4:APA91bF33Sl345oB0Z-G2HHeYfz2nua0waQAuLPX9w7hDLuOxFsnP-hMJS7plXWZJrelxedxFMGshPr1ruQAXBB2Hmi9rssRZDBH8g9dg7cRJ4W96kAdueXFZTAurtphEtaWKurM_kpv', '2024-11-02 00:36:57', '2024-11-02 00:36:57'),
(473, 'https://fcm.googleapis.com/fcm/send/f0hKZWQIZ7U:APA91bFxuGUyldwduViI-zWCHoonBYf4mLGasRCGePOSXRz8nTcW5SWQSgNngfYJnsZwakv-EV6SRtlZ5JTWIqqzS7KFSLRq48fQXVy5PChiNnBkKh0RfyeWYS4ZVJpmunXnZlI7h7yK', '2024-11-02 21:16:23', '2024-11-02 21:16:23'),
(474, 'https://fcm.googleapis.com/fcm/send/dfbyu3z0cD0:APA91bG2TLo74SPqxalQmgkq_IqKTKmO184VMtagfvgv28oASHnE9U-AjvHrAspMafEKug4D5cThd4YaYxxrIrs76WSnYxm86FKw7qhDSsgTWKRw6PnaXktxkxGCUI1e1c3f76AQTB2P', '2024-11-02 21:16:41', '2024-11-02 21:16:41'),
(475, 'https://fcm.googleapis.com/fcm/send/dOm8-ZDmWkI:APA91bH0C6W5vCYhvaFX1C7lQdo62gck_PcEKn7Uhs8wTzgMs9Sb0cABsTrd2_VQs0zYnYSdxslCWj0bmCqrVJtE4Mjob-KX1zlqRbYTuwjN_mdU-Qc-rlal-RBWpvYpDwlYPgrKop7p', '2024-11-03 01:40:43', '2024-11-03 01:40:43'),
(476, 'https://fcm.googleapis.com/fcm/send/eMkA5aiJ9Kg:APA91bGNrtUihAeHT_84MzGrv6lrieZDWO5ecY605thxUc2V1qFjXTmhXkZsrfvqifnI2UdNCk8jx1GPE5inKO76nBVH6JJCD0GUleTiqG7JaIZt2sMdPmwMrr4v5CIglW74sDIclfjp', '2024-11-04 20:45:34', '2024-11-04 20:45:34'),
(477, 'https://fcm.googleapis.com/fcm/send/cD7spZDWEXo:APA91bF7nrMxZadjxTnk6jcIjVKHoWvcL_0nNK-XXZNO1kwLAM_gGbMaaY6yqeA2mKj0xUzJ9bi-m2id89JK-lwqb5lmEhlGOlTLLd3ZLHZ3wobDWBr47jOKgysYqFdTtYvNNARgT65W', '2024-11-04 21:08:53', '2024-11-04 21:08:53'),
(478, 'https://fcm.googleapis.com/fcm/send/ei-pVLFHTYc:APA91bGxUzaIOWfiX9dX5ptitLU61Aza6obkA3RViBSCWHERDQLQ7ttiAOWQ_wEc83Ur0O4EzqOC-y8NuIlhHmb6vUHnMrwQC00NESZMrpEaSEJaLtkPMbPAMRoBcRpja7KMYxedidDQ', '2024-11-05 23:07:33', '2024-11-05 23:07:33'),
(479, 'https://fcm.googleapis.com/fcm/send/e1QXNYuzgcE:APA91bEIVnYVx2NK5HknTGHmV3TADTGpJR54vGEhhEaAvqz8ARYgBzudemner_UuM59_fIWWPnBYd0J0VfakccD09YCYeatYF-4D4u6JvfD2qp6nHMrtY8cvI-OMeWW7_qiqxVW1S0W4', '2024-11-06 12:38:14', '2024-11-06 12:38:14'),
(480, 'https://fcm.googleapis.com/fcm/send/fknMnPNigBk:APA91bHaZjjnez_9PJGDTK5Aj5G5Dx43-UpQdkR2_dWQk9lWqdnwpTrGZ7WIZeAJBvIAd3ts5JMI1u9dNT5PQpeE7-LxaS-zOLu6YixumXYSI8nHH1Rn9A3Nhyagnd_ZwmWbxURnR7sD', '2024-11-06 18:30:16', '2024-11-06 18:30:16'),
(481, 'https://fcm.googleapis.com/fcm/send/egONHO23RY0:APA91bF-5SgwMwIybMwySvJDvCpqkq7OTl1Op98xeWUugZ542_y0GXo8SXlB233PzTu7jF_bPHHqZ1xPEmm5oYNCxZdiQdZghuOFnbzgVWrSzaqN7cSBv2PljGB3wi2LikYfAOdec4jM', '2024-11-06 18:41:11', '2024-11-06 18:41:11'),
(482, 'https://fcm.googleapis.com/fcm/send/cIk9txcxtSQ:APA91bFP2h_Ru4gC2vpYqYfFOHW6H-KlnqmNZflkTjp8uFv3sSIHo9fJEyBaF65MB52Q5tvj70ELyllUKd9nX7j7SW17y6nzKG6IpeQZcTfef9mjkXakDYU9D78SgiKLzoF7ZYk9TuAS', '2024-11-06 20:50:33', '2024-11-06 20:50:33'),
(483, 'https://fcm.googleapis.com/fcm/send/eAMcc929sQE:APA91bH5NIsMkyIyG4hGV6XWGijcl3mwrGs3bCU9Y8Nl0Tf4sfc5tBzC8D0o8zr7S8V9la8CqX4bu1Hx_2sHpiK5MGUsfyQA-1OlmbNqMpqYNxZK55gbqeT7z79itVZ0ZD5x3K3Hrp89', '2024-11-07 20:20:53', '2024-11-07 20:20:53'),
(484, 'https://fcm.googleapis.com/fcm/send/efPNF2mkTJA:APA91bHCFnY3sVOXMRZ7UXXAqRbo5FLns06NSRF37VueV8y9N9ctkr4cX2NubSGpUJaUeLKbqNXA1ebMbv5z8KPVdyYl5SuIJNJCGOaHw1FOguXZls0mOIbwCPfQvc-mVT8K76MWHlwo', '2024-11-08 04:11:17', '2024-11-08 04:11:17'),
(485, 'https://fcm.googleapis.com/fcm/send/d3ABffFUv88:APA91bHiDGNCtGsT9GvtkAQgrv0aWSDiid9lCCr1rhE-fqE13mji0mSwT20lbY3wKIvYwPptVs5Z7zp5435G1xSwM8FuUdtMDY9Bn1YCSBorgOzNB_W1PCjtHIiVQJhBBlSaGEmS0kU9', '2024-11-08 20:10:42', '2024-11-08 20:10:42'),
(486, 'https://fcm.googleapis.com/fcm/send/dhA4zXfemKo:APA91bGMr7hYOKf-x2UenyMvJJR2cSw2_GXIRlQGQM3E_msTxAi1LDGgwKnQph6fWrVTciMKi4JIialfRE5kEqk5osa1YtqN7Yw7MnYywvrbzanwD47BNyWR0dINYR03W6Gwzf_BmXzm', '2024-11-08 20:39:47', '2024-11-08 20:39:47'),
(487, 'https://fcm.googleapis.com/fcm/send/cmjJS2sxyhM:APA91bFPN3TSqBhHWPJfK-JvXS1NczC-Aa7X-fNzi8gunz89D_WPrbr4aDgy3HpmiV4XTAv_uyJS28cNy6l7XFFUPBNDbPzqgyv0zcz4p9hcITRmdrjKmn4DYfsd4Dlrj5XJUGfKw1M4', '2024-11-14 21:16:32', '2024-11-14 21:16:32'),
(488, 'https://fcm.googleapis.com/fcm/send/fIYPV2EEG2Y:APA91bEd87QuMz76SNproX9NX84p_O5WJUw-9zznOPjhkdTPRPREyNQF6zV8EjhVA8AYMzLF17mb82IsIRMzEpU4kj3jbdwOodsA7q4ZkchXtmegJa4zV5V0vu2xxlI3P9996zT6Xu70', '2024-11-15 16:34:22', '2024-11-15 16:34:22'),
(489, 'https://fcm.googleapis.com/fcm/send/cJOMz0C_CgY:APA91bHGWfihLJJZvXNXPq2iB3myo14KEzQlWxpZUQH4M_ikZ02Aw_sauCRN-aOneJ1mWKju3c_aTC-sk1y3AHqNG3m5DETThHfJSurDGY04BQLZylRc4y3Bwclo6rnV1Z1R4q3tProh', '2024-11-15 17:39:59', '2024-11-15 17:39:59'),
(490, 'https://fcm.googleapis.com/fcm/send/dmURR9Yctvs:APA91bEAUb91LkYaggtOWSjH-rFaYyBUxiAOfzSZTRAqGsHV3fAQuFazpORn0dq_Yin7Y4dlNrYxgK9t_BDYeuBYNhmz9tUuhLV_ukHjRfYoy6NFUxMB-dFnb4cGZsYiJ4oXbZJRg6iU', '2024-11-15 20:35:38', '2024-11-15 20:35:38'),
(491, 'https://fcm.googleapis.com/fcm/send/e3bXDTiFBvE:APA91bG4ti18SPR5o9DWtMzkxC9CDKhuqPgE0anNTZjBqAOrNdUFXys9n3jSu8Mx3vKX_vWA5mJwDcE50tpQCJdOrS8x2T7UzaUEb-BCCtM8BY8WDd2tZ9hnxZe1QTTEzNdl92qDaqNc', '2024-11-16 19:07:15', '2024-11-16 19:07:15'),
(492, 'https://fcm.googleapis.com/fcm/send/c4GHbBtczmk:APA91bE606zWl4TAzjpl7XD0-GmHajt6JJBJq1Umogp2vP6B6sy82qE5enT3r3pGVme6uCyozYCKsI88EbVOlIrlEGZWGUJ8wf9exKJqVsojXVdiBviLE5nqmC1oIAh2GTBMnC0fUldY', '2024-11-17 18:42:51', '2024-11-17 18:42:51'),
(493, 'https://fcm.googleapis.com/fcm/send/d7BIwcVTkx0:APA91bEym3zpejrNH3H6imiFSlU4OyyiPVKP5rPYmTDGUC2vZgLxhTQW1oha3PHv1rCKXJfpt8RWozfG55Z_AJC5HsaBCpB-d6biBecEJwcaHchBy5ORFjRVzXZOV8aAN0Tm3XCW1If8', '2024-11-17 18:52:01', '2024-11-17 18:52:01'),
(494, 'https://fcm.googleapis.com/fcm/send/fptyncMSmzI:APA91bFYO9MIdCSpmx3Sl45HKXJwKx6kLdX36VfUH6vugL4yJ5bdjaCwz3B6WVEJ094hNQJAJQ_bc07aOIlDaLimJlxE9ASMEAUycDytQH0JTF55RmP_q_2DjLmv6D7nwV6wkRv1kM1Z', '2024-11-17 21:07:13', '2024-11-17 21:07:13'),
(495, 'https://fcm.googleapis.com/fcm/send/fFypuXzAT04:APA91bHXxI5-u6hu4DNeHWW1ogbtLVsOh3hmSKceuhwZ2Bb1ORX2wIoUhTTKfTzzMUfxRB4EOEsqVI0gWAQfTeo7POTe59ckcxO26y7Dslb3JFxf9gZyp-qIthMUJmPwProSzcdtAKUO', '2024-11-18 18:27:26', '2024-11-18 18:27:26'),
(496, 'https://fcm.googleapis.com/fcm/send/fRLGyF8DHlY:APA91bGbLpk_lSZW442aramylRgPsIaCUmKnR7mpUeMKPKpXJP15E4Ma5FW8hIjsSSUzABv9RE0DB3fPv_Eokkjq-3hywOCB7srFQ1eVEX3LddaSW1WgmSpdB3ixzOM61lge_MqZAIzH', '2024-11-19 04:31:32', '2024-11-19 04:31:32'),
(497, 'https://fcm.googleapis.com/fcm/send/eCDqy4tGTJ4:APA91bGCpwF10bVQt_KCWhgBC0mdYZ7qduzf206vKdQrbi6wM-2vb6NZZkutRx-MB2-HhNsQhX6fD47-Y5n1GSH7x6xw2GmW7lu0BevEAgFWyt4i74HFVcb1Cd8oKjNHfHI6oe4F7FDm', '2024-11-19 15:23:46', '2024-11-19 15:23:46'),
(498, 'https://fcm.googleapis.com/fcm/send/ewHM_4kMdrw:APA91bFsz2LBHZj9EAwe2rl-NpHVpKus2X2gT2vz0rDGgZtm0wbAKkTDAuDJeuHn-YKVVs9JlTS_O1_-4_ylTHwt4vZTO6adwu66ZQicsstyFeAoV30oZkhIYUpvtEmu3ePQu948C2kL', '2024-11-20 23:31:11', '2024-11-20 23:31:11'),
(499, 'https://fcm.googleapis.com/fcm/send/cJ8d0NLc9ew:APA91bGXD1mimM1VtFUgf5qK3jq9r49lAgm2EWgpSQH-4TRHs1Q8FrhpInOahiLjsuBijXKMHfYQU2NNjKyI6Xsi_RNLR0HdkcUg5IlWgHC87NwSmTSqvwpijst1PgyqNync1Bh7uLLh', '2024-11-21 17:21:48', '2024-11-21 17:21:48'),
(500, 'https://fcm.googleapis.com/fcm/send/c7wGaDegvTI:APA91bGbzvS-eUmKMo341fuWihqP0YaY69sR4WF3heIVILU9qyTztTQid1RHh5mcdtOTyj1pehZLZErFtJBEP0gfRbzI0g1VN6F8IpObJzvvYg_l3tPZ9EU9n5hcrubsf7cKm18IIwgZ', '2024-11-21 21:05:59', '2024-11-21 21:05:59'),
(501, 'https://fcm.googleapis.com/fcm/send/fYqxlzdPrcA:APA91bGw4rE0eWW9AvGjqUZQsbl9rGoRkHEl4xC49o6G09h_yDjuO5zWi3pxMyTBsQnjecycesXM1Emw26FTLeoZv8kR8RjZwWm-94JncRRH7HeM-q5vta-bFV1Vky9tC93ASk7w9ycG', '2024-11-22 18:21:48', '2024-11-22 18:21:48'),
(502, 'https://fcm.googleapis.com/fcm/send/dXDMQVq_sgI:APA91bFIk71GdpSQCkg5IXdNkk8iybcs_FAiCSPCRIDM83JXrySiGK0SvIHd2bhCWu3EZnMZVrDBi9WzW-Udvalq9mzphDVyFAA69tY7qeIMzt8pXPnGJBLoO1X9i1wLOimNOw9ErSRp', '2024-11-23 18:39:52', '2024-11-23 18:39:52'),
(503, 'https://fcm.googleapis.com/fcm/send/dOs4TmHG4c0:APA91bFcsZCZg2FEMZIwtQ1GOG6i2qAuC7L1gxr-Crw38jcdT0Gx41SycMXTUrhMs-N9JK6ekIT5A8TtM0Dv2v5O0O6tqh3EwMKBApY0k3LbxQnDLoxbcYuNzdoZVDrI2MQ9nyk77A1h', '2024-11-24 03:55:12', '2024-11-24 03:55:12'),
(504, 'https://fcm.googleapis.com/fcm/send/d-iJQsxYoVc:APA91bEWxB-8mFGvfSWEejyoc8A6glt2igF7hl8OvIn614eRxwaPoLm0IcoG7aPrQV6t8jvx1l2O4-0bTPc0dftDf8RyA2R8Cl6j9vtbNRpUTOn2bBHEQa_7CY4vRWVrlx2orF1DjJfM', '2024-11-24 22:23:22', '2024-11-24 22:23:22'),
(505, 'https://fcm.googleapis.com/fcm/send/ehxqfFt2z2g:APA91bEepi0hTlGV-w7RKqdOmsbwV6B70e2JvSNMNc6QtvbufwPrqpysQ2BoAUgmPuyJnSqbAnpMilk9-9FE90WU_lTm-lIWXG8FqkIkhkyXaUND6drizlKbXP5enQXnXGTafmfWBRVw', '2024-11-24 22:23:41', '2024-11-24 22:23:41'),
(506, 'https://fcm.googleapis.com/fcm/send/cQVJZMQbHT4:APA91bFtAbltZvpig_ufBWNa173mTzGuDSRbIFo0kh_cAR0F9poEjiQf_QuFvlvVOFxlfJxi5h5Cx5A5S9mHxyqc7pqX6XfYGdKYejgpUOpioACCFExpDO_8XLRyq7rg6RNIU_U2ftoe', '2024-11-25 17:18:51', '2024-11-25 17:18:51'),
(507, 'https://fcm.googleapis.com/fcm/send/dCCXTYWsZmo:APA91bGuPJtuAqYvCFQc8P4HWVrEi3nGuaf7LD7abhH0MmSzn9sShJNRRitaVx9GMAtLrX8l6IC5T2FizEQqFGFd9aaugR1ZyeJQtsCSIVW259IbiLXMUFA77GBQ3ZTf5BY9Xyp17IM5', '2024-11-25 17:56:05', '2024-11-25 17:56:05'),
(508, 'https://fcm.googleapis.com/fcm/send/dtiLfTV4u-k:APA91bF55HdBe_LfjpiFU248QTQg5D_58F_4MyXhO84inCKElcnhdnTVMs7aOoAHJ7NkTh-OeDxbjiPvYi66zxO47Q4hodR9thgoXoMUZh2eU9_9WaxQ95kJ3QMBYrxJu9v9BtDcxsHY', '2024-11-26 03:11:51', '2024-11-26 03:11:51'),
(509, 'https://fcm.googleapis.com/fcm/send/eTva20qlVyo:APA91bEmyadSLyA6pXFlwY28c1oe7aNvT-w3apcCdlhQTLE3R7J48ecZbS41oQ6mQW0dcesmqHUGb-N5fV-ImqT2kbJszvYdx3Uwo3BudpWceH_WxeE1ivyWqxn9lg0fnOyNrDIwOiTD', '2024-11-29 21:11:28', '2024-11-29 21:11:28'),
(510, 'https://fcm.googleapis.com/fcm/send/etGpL-GMVVM:APA91bFjGIE5J-VvPYgZHmbxFhyY_EjlsAqbR_6Er8NljjAvHYUOCJ3G4Gw2epGpAHsDwiSGQ3k1KCJpC9ihgBWqiW2KwrE468uYx0iyOuFCRgB5DgWM1RAQUP7Oh2wCn150io4sTn4N', '2024-11-30 04:11:55', '2024-11-30 04:11:55'),
(511, 'https://fcm.googleapis.com/fcm/send/cKY6yVljEvk:APA91bExBKf8oIhTp4TPd-X1HplB6iyLNQJMaRPzYRJP9JEqKPYI4oUwGVqA_g0z_LJ1l_Wf5y07q0IjLWxC_MvFPTtF1st4yYSv66o6667X4OM4ynGvNTpo1ExUvLQOqIzvLQ1Kbmsy', '2024-11-30 04:13:09', '2024-11-30 04:13:09'),
(512, 'https://fcm.googleapis.com/fcm/send/f9MF2XzcRww:APA91bGTIZ6IXd6gOQvidncayBLSXQrYx3E5d26z_1FsodWrgcmf_PAnv3ebzPQyai7ZFYmi1s8u0OSrvJcztTVmbG1rPZ4u5ZpzqrvXof7jItyT0QkK7eV71IpNARM_lBrdppDbreEo', '2024-11-30 09:06:55', '2024-11-30 09:06:55'),
(513, 'https://fcm.googleapis.com/fcm/send/dVISXN-wjvM:APA91bGfJb-AKH1ESqt_nSGk-CPwb2MOJB7eO8-_U0ZNtgJEzhyJT4Zlbx3T43XxRjfxASHIsKlUxWMLxAZJJjrd_kpdMlq7KgyIxixvAyazs1esNsBiWGTUSp_V2ddZFKewLEaUCnnN', '2024-12-01 21:49:35', '2024-12-01 21:49:35'),
(514, 'https://fcm.googleapis.com/fcm/send/dPFKYeMMozU:APA91bHzYKHeKwEOeTh0OVtoWLrxBxWosz8G_WzJ2Q2GHSBMQDCLUN9Uz-E0LaORNh_xQc6XOKV6xLtUuqnk3m2bpoXr8ht3xlzLFg1a6Fk39KKqXWP5Wk3EB_rl6bvXdkV6Mth9EZyF', '2024-12-01 22:26:54', '2024-12-01 22:26:54'),
(515, 'https://fcm.googleapis.com/fcm/send/eiNicTPM4DA:APA91bH597izMeZAOEpFCKInSd1L7WyIFiPMq7g9gjFVL2LmIeuqUOZMTFw2u5q_0ocRo7ggUi-kb7Gwpvj4jJiWN_eRs_x7jW17OIQPekwvSDUyu86ymCf2ihLMhOqyH3EFKGRT8tpi', '2024-12-02 00:46:57', '2024-12-02 00:46:57'),
(516, 'https://fcm.googleapis.com/fcm/send/fWex6WcXXU0:APA91bEezH2y0v1cgVngQP6g7kDOSc6m2nLz03VPXGAGj9LqQBTvcrMRdmSXAacNMX5hdviir7SKqBzuU50bq0wZzb7-JZ87d2f3bGevRSR3vIC-eqnJIVR2l1Bkq88keQj_kMfdJG1m', '2024-12-02 02:18:30', '2024-12-02 02:18:30'),
(517, 'https://fcm.googleapis.com/fcm/send/dS8UBpE6TI8:APA91bHyliKMcl7WNuzwvV1_PF_Rm33hz503vfu4DGqrAPIN4BQYWVWURSLH9FEQpJi1EVZkb3v4zcJ9zBC-J78mJjMI28zIOiDUMqGLSO1ytJsfdIJLVYLpk2ElZg3WhSv0_ld6n7tK', '2024-12-02 18:16:39', '2024-12-02 18:16:39'),
(518, 'https://fcm.googleapis.com/fcm/send/ezU2_X8WGuU:APA91bGONsou39em3ARyd4iRBxL9On0U4ABNyBGAiAk0X7irMHiUWATOmHD4ddeX3KGnh6e5bWR2FEOHfr_hucUfZCoCBFuZ8bETiyAHqwYLq3Tiox8iHkim5PyPMKZJx-o_iQH8arda', '2024-12-02 20:43:05', '2024-12-02 20:43:05'),
(519, 'https://fcm.googleapis.com/fcm/send/c0yF2ls3JJY:APA91bE-3eJYY_BKtpIR2ZVW9ocso6oR0X28o38g-_vqTLnxSL6HFngGyWS6GC44gLl3Rl5jMCPDNd3wHi0i8oF3jhXIqE2OZub1kWHgJxK5FJ5C6-gdsRYV_ecE4Co78Ar2DM1flApf', '2024-12-02 23:46:11', '2024-12-02 23:46:11'),
(520, 'https://fcm.googleapis.com/fcm/send/ezYpfl11y1U:APA91bEOQftRHW9ojpQmvLYUbBq_3pcpQvmF0VGyqGWAjDqbZMscNrG9n9YEydxVFdCRZT_GqKesTA6Dpfx7N8WhOryV4bbfdlzVXZKaSrJaYxPObjOzIhpNzS-rVEfFCxubNlOZHLEP', '2024-12-03 19:04:47', '2024-12-03 19:04:47'),
(521, 'https://fcm.googleapis.com/fcm/send/dyqqOguJY5M:APA91bEKJTeTWCnCq6mxv5So_h-6uvlBvQTfqm1VNV24qXk-hkbMOmRT8f28zg1e_qDU9EjnYb2FWy8dW9XKDp1m8JTmx8zskY5QqQRTwEsI8Fzt_ONlxPjTHZx34BbolVh-rRDm36ed', '2024-12-03 20:02:37', '2024-12-03 20:02:37'),
(522, 'https://fcm.googleapis.com/fcm/send/emZw1bg3a-E:APA91bG_wrRi827Ri3MJIyxD4lJtpR2CAcZCCy46TEDRMKglmOOPcb5oZH-kDNejqHm6U8cmt_NCHBPOxolI4xxrwx-Jo8liAYQgwjxk4OeXdh95TVdfHgr7jqDWIipN6NeXiURtCAAt', '2024-12-04 13:05:18', '2024-12-04 13:05:18'),
(523, 'https://fcm.googleapis.com/fcm/send/eRE-Je-e4no:APA91bGD83FCHEKquS8dvvWXt7jQHEGCPOD2XRk92DO7NHkFqRGhkpEwi1rETx91FHuPxpgCQ5ZcjDFzhUHejwKEUMJWUB5isdo5E5TyKErLSm9TJcigXq2YwihHp2ImIASPYvGSTfnG', '2024-12-05 00:45:47', '2024-12-05 00:45:47'),
(524, 'https://fcm.googleapis.com/fcm/send/eYO9DxFgK_I:APA91bGJyesbVSo2Wg3ffwQ2G4zsg3G0eLOHDD1Hm9s8NJhOkFCg0ltbXrHIcja8PQesGsE-G6adWOvvhhP0nh_VqP74GT0wpls50cbvDeyJVZhHRYrxEipuFcRuk0_k29zkfz-x8eeq', '2024-12-05 15:35:37', '2024-12-05 15:35:37'),
(525, 'https://fcm.googleapis.com/fcm/send/fmvGNsTncsE:APA91bGbPi9ZiP23UzWWcBChOfUD9WMjozErjXIDrq0Ymx49XvL1BvtlDzaxSsRsTiD62tQp70PpygIm5VmjQueCidPk1nGoWDm-aHv67G3aED9GvvB_JLWCTlnR7CR8Z5qejERd56KC', '2024-12-05 18:44:52', '2024-12-05 18:44:52'),
(526, 'https://fcm.googleapis.com/fcm/send/fhtOIycHJOo:APA91bH_QLBM0Cp0VYaCWRuZWTZhVMisO4r4GCzrbM4tuX_SIe1MmAO6bF9rMctOamaR5yKRs4bLrOdV6Ehamf2JaLMQa0wmjPKXlI6R2VxLCAf1Sqc781hiaqPJmOkzZeFJRzQrC1HE', '2024-12-05 20:13:33', '2024-12-05 20:13:33'),
(527, 'https://fcm.googleapis.com/fcm/send/f2XqfBBt11o:APA91bE7EmT45rHWx4T2Uq637ALMb09NR4hdwq_OfWpAAGlPIOKPPp3Z9dIk1uf3l-KtJqzfXQ6uthie1PCbSX-LBkvYtAXgzXXnybgnRBOe3mTDQUIaRhNR2TVYBU8il5Q7fUUq-fVu', '2024-12-06 17:41:52', '2024-12-06 17:41:52'),
(528, 'https://fcm.googleapis.com/fcm/send/eYwT7uQD22c:APA91bF46t0r7l4TS_l855pHTX9no7LlY-XZsuffMoNPOsZuEwxhs0wgyLg0FyeRlVCw92PX0RpQEmPvWltkueUGx3fa9ch9W-sy-FWfuf6VAjLHPWfcmzjG5Z6BB3IgL0KoWeaYxqMn', '2024-12-06 22:59:25', '2024-12-06 22:59:25'),
(529, 'https://fcm.googleapis.com/fcm/send/cdFrT2M9kLU:APA91bFc5Enz-xujEVWQAQjlWYBiAkcAydHNWj4u55ILEJEOmOi6EG_WFlf-lEOmhsUgptSEfDnXPA68Ab-BeWJ5zeJ4Y2Tgq_C_Ujzgqm669kfiCBjF6NZHQmdYtvDHkZ7kuAdOiywh', '2024-12-07 08:58:43', '2024-12-07 08:58:43'),
(530, 'https://fcm.googleapis.com/fcm/send/etpAcxd7oXg:APA91bEBpmSXvrCINQCiUGXu9ha6ZDRZQ8Xkg3uIY-75eicp59BINuHi3yZXlU3_ZJ8zWxhwgusW910Z7Vc1TYr_dBuVXp3BSK8YfdFRlx4PxXmLt1U6M6Nod1CYk8h8oG2_G2LcH94i', '2024-12-07 22:30:21', '2024-12-07 22:30:21'),
(531, 'https://fcm.googleapis.com/fcm/send/em7lpvJqfTE:APA91bHAl0TMuA44VFfkP7_3lbr6fKrwgJ0a-UhLyd8D77P8Xa8AXbINg_BkGHY0v_BMglKW6vy1ZaqkflgS5ASRbUfmfYKBeeW8gdjJraqlbGivk4HULtZAMC84FQ3WvzZLNRqpAzfD', '2024-12-08 01:14:58', '2024-12-08 01:14:58'),
(532, 'https://fcm.googleapis.com/fcm/send/d1_o5K01ETQ:APA91bGnurB2KvB0YIEF9jxxaWyIKphug2lppGq3rudMGxXQyd0lLOGVtVxmD8N-UHPU0Q9YwzZJJ6Nmu4maymk4YunqNzenei0gxlkHXHx87e6c_roBr_b5lQ0lS2bFteBLLCjeUmfh', '2024-12-11 18:27:09', '2024-12-11 18:27:09'),
(533, 'https://fcm.googleapis.com/fcm/send/dWueubUxWrk:APA91bG_Aw57woO2PEveluCDSpijpFg2o-yD2O_zfkiA8eOb8eGJBr9UYok7onwk0w--8-nLc9oPFFUooQwr4dypoFrKM4oxwPOPPjOWth75kGJl8EbyUugaeH1-5emW-SqfjJ2XEIr0', '2024-12-12 19:52:53', '2024-12-12 19:52:53'),
(534, 'https://fcm.googleapis.com/fcm/send/e78nAUUcbe0:APA91bGB9l9ZtcQU75LTuJjLZMfI7sAY-d1u-sH8YMa-Y8KzDtrapxMvxLDQlE0JvNuTHX9BxXF0l6yEy210WPA0_BEyyzolqfBzE0H2G6Bh7FsDZ-avRALwfuk9qG_1IymbfZgPHddD', '2024-12-12 20:46:35', '2024-12-12 20:46:35'),
(535, 'https://fcm.googleapis.com/fcm/send/eaf1-ccqVmU:APA91bHi-kKncWygnrNX29u_tEfFFwaK5MOmjuyNiZ0q67X3vzh1lwGuQA_TnPhwjpYntCvRs0t3_YVC9rZWZg9wIqGyaRJbmoJj8WrQhyFsabb-JoVQheXaODnS6JJTIwUxh6ZDy3OO', '2024-12-13 16:15:52', '2024-12-13 16:15:52'),
(536, 'https://fcm.googleapis.com/fcm/send/dRREDWbldG4:APA91bFTNgubyzVdmMIy9Qsw8At38kNjuF1-Jpv2Sw1PHRWZbiM5Fw8PmhgUp_iDikNEpqGY7wRGHpuHADwBed4WUxoo9onEZKZSZhwbtvP3bZOXFlG9iXp07ovb_ybLk6dZjGG9Ennc', '2024-12-13 18:57:35', '2024-12-13 18:57:35'),
(537, 'https://fcm.googleapis.com/fcm/send/ezIIaNglAe4:APA91bFSmBnnrNCvi4Hvu2WMeJ2Zrb6WTyG9igHV38bKutwiSZaHUMyqhD6_cLLRjkwXOFSv8h_cWPUz9fZgwha1XW88FaU0TKwobLs8FYWH8_J6eY8eD9_VLUWWORMyaemfm1igH28e', '2024-12-13 23:03:49', '2024-12-13 23:03:49'),
(538, 'https://fcm.googleapis.com/fcm/send/cHPqWybhAiI:APA91bHxj2uoHEoDJhqrxBmG63dSPRdUxZ_o-LSffmIpTVlbBBRIGgLtbXkBV6Zech6i86k9x1uGnSj2k5x846kuyWSLXmhyrRbboeJTf4lFl5NkicTk-QmV_LcyUlmxM5N7ZyRaAuH_', '2024-12-14 14:03:05', '2024-12-14 14:03:05'),
(539, 'https://fcm.googleapis.com/fcm/send/cw98Bi-jjsI:APA91bFPNwERVpGLL54TCrgetw5KlJcpcuEsemjDCmBN2fe9WuTLaiWqEnD2k_UF8FXgTT62K30Qlyl57V8UMu4un0Mpc5j4eJu5TRtF1dn9a6gvt4Ba2OdbfPUsUriLZaGqgVoaemRs', '2024-12-14 20:13:07', '2024-12-14 20:13:07'),
(540, 'https://fcm.googleapis.com/fcm/send/elm1or-y3sw:APA91bGghr5pWL_T3NOEhplazxmsHQL8BUik_P3wbEENd_-x5MHZEH9KD7GNVaYs6i33kL7sa6BjVHQVFC0UgALwZ9eoOxICCdzyGs_BIM8VZTWfirpF9DyVHmrwU40s_lavg1hmpFoy', '2024-12-16 05:35:17', '2024-12-16 05:35:17'),
(541, 'https://fcm.googleapis.com/fcm/send/d2qGoEPG014:APA91bF347Oxz9AmdDKQIwodseEZw6lP4jaScY-JBkXZN2affUkF2kDWzQ_ZJcBohcnTS05-gm_RQM4kwUdPFmi9NNRzr8gi8GVfNfk2MJCoO3Sb_Y-SkZJcuZQRMa6jZUXw3wbXW9V8', '2024-12-16 16:26:38', '2024-12-16 16:26:38'),
(542, 'https://fcm.googleapis.com/fcm/send/eP_du240bZk:APA91bGTkaukSLDxt3rLHgBS8PC4wmRWKPxPZqpvsQtuund9HNvfjvSSF7Z0n91ZM_60dIRV_yTMPaZYRlxS4D9y_r65-6NYyxUC2Fq9z_vwKIAHmU-VzZJbEcuNAb53zs-mZbyg0DUh', '2024-12-16 19:27:29', '2024-12-16 19:27:29'),
(543, 'https://fcm.googleapis.com/fcm/send/dtl6O0cZ1Os:APA91bFZ9k_0pZtiyHuVnR_Dfla3-zbEekLYHHkmSM0Ntfpzo9lC4-QYu3dOI2LcMWjWKW4GIORGU-nC-X2-cFg7Xco4S0BSxpQhPr9CrblJhwPlP6WhQ7zZwpBUZ4Ggcd7t2bGYKXJn', '2024-12-18 02:50:07', '2024-12-18 02:50:07'),
(544, 'https://fcm.googleapis.com/fcm/send/f-N8_NzfwPk:APA91bFutSpfEMQhLDhodA3R1lGZyYDjEvue6eHHP_Ciw3z-M5YUNu4HC1FpuwuAL_RpoRz67w6Z7ieOaXFTMUyP8usHVrEa7Oz4K4QAyrsUxy02uzPKj5eT7W_RPEgsKTQodL8lmAM8', '2024-12-18 16:55:40', '2024-12-18 16:55:40'),
(545, 'https://fcm.googleapis.com/fcm/send/eRL5Sb8NVD0:APA91bFnjafVBrPqzyXXKcPQHLhO5Djr8vwZ4b5jiNdKHL88fPvUbCsHz0QQ1fc51QHwAtbZqaCCB0UXnKXmtfTE25GvX1ZiZtiuQQcyEFZCnBzdssZarwcIAsHAqS9yPnA9vpsky0QP', '2024-12-18 17:37:46', '2024-12-18 17:37:46'),
(546, 'https://fcm.googleapis.com/fcm/send/cS9tHNWcdHk:APA91bEia_X-Hnne7Dc-1TBxOWZdW3c7y6A39u8NTQ327Fp0TBl-cRfbP90Wd1Z1mjTca3HwmDL9oX7OSTE8zc6nu21NCAiRaSlsfCnJxmtEfxP3dxSZXtj7qHe7D1VNiELK2eTnZEGc', '2024-12-19 21:45:19', '2024-12-19 21:45:19'),
(547, 'https://fcm.googleapis.com/fcm/send/ccZjK-rf6PM:APA91bFt_rXmFnnnPwt0QfJKVIYWootZbsFnjQxD91h9l22_FKaG7uF1HCQfUAkWoAw9Kla-KjNP7luo2pO0YOiPm0AIqKcdyQscdVjce6KTJ9qesFNhBFg78PQ7OS_bcnrPJC9J79W4', '2024-12-19 21:46:37', '2024-12-19 21:46:37'),
(548, 'https://fcm.googleapis.com/fcm/send/fZTE55REnk8:APA91bGLQ9K7NWjRFJMwpIiB5pJqwl8T2PuQTa-386dQs6OQyz1vEAtX2NptGAUJ_ksUji5dtLy8V-0Whd4ZmxsbWtxXG5fpu6sKiUsS4oxGN9CE8SgL0TM7Rm2eqx8eR8MBPOWuabq8', '2024-12-22 13:57:04', '2024-12-22 13:57:04'),
(549, 'https://fcm.googleapis.com/fcm/send/e1FPWWoU4G0:APA91bGBxc_v2Y-KK_pO7c148DKPLzM9AgKELo2rC3m-juUqRdOwjN4Af8uQhtxVNmvwbB7Bx1NMhjd89RZcMYq0F7HPPXN3-2awxGCoGa0MY2Z0_vHUAOvL5iBfCHPMjqqmCaSyHm9O', '2024-12-23 21:24:25', '2024-12-23 21:24:25'),
(550, 'https://fcm.googleapis.com/fcm/send/ejvEMusWcto:APA91bETJ_8F6RhdrExdzNESfbbE_9PxJcq3UWjqtAT3vKwCYJ_THVD1VwjSkFXCLJSrrUefvutMaPQkP_AqUl_IOgqIig7nzNQjrqqRGUADLHXwNnDiOyXTKKdDwWfJXpgSr3e2EFRx', '2024-12-23 23:04:30', '2024-12-23 23:04:30'),
(551, 'https://fcm.googleapis.com/fcm/send/dYYsoj8A_LI:APA91bEm9x0cKAmWMjvDi8wC-05tVhuveucULZQs3yPd1zW5ZFhufOjVpTvaIvNK8ooF0De-5tAHiFAd7Rfc4S9W1PnKktPeeOgOxpiy8brvEe8S8-4qCrOuzYHasRfUeIv89Gtf9QZ3', '2024-12-25 21:00:12', '2024-12-25 21:00:12'),
(552, 'https://fcm.googleapis.com/fcm/send/cK9f0nUpR9s:APA91bHnGii64JzA7Pcj-IfsYpQvn8AXYdbDwc2C97hWttX4KGIdW1-G67nNiAW97XdPI6N_xmAJQVOYdjv6ebQFF-U9_BiXPIjzAijmaJeLnGFurfcD6Hc4dBgkJHVTp-GXtidrTMwX', '2024-12-26 20:43:41', '2024-12-26 20:43:41'),
(553, 'https://fcm.googleapis.com/fcm/send/fKEuyQMZQmo:APA91bFDQ_ljihqdV0gWIgmP-2VSNNNp7pKdH5wT28PFlaeORT1FW4APbmGfFNnWtPhAjPJ8k3-5unIH_2SEPpFnn-AhBo619wFiEBqOD2O8q0cr4FPD_ontgzjrzObPI_e_z7xpInLz', '2024-12-29 16:15:59', '2024-12-29 16:15:59'),
(554, 'https://fcm.googleapis.com/fcm/send/d1yS1Pil1ts:APA91bGhMpjct6oxBb7fm5BHCUng4RZOIvseMxDFahnEZ8a_gSJBTGX_IrOZ2U62demUWwluFcUogIT-tGvdrVDjKZpMhbewLuLFGUn7RZ_sngZT9ABzu9Gs4V1GDe2_Di1E6L8ZhNbp', '2024-12-30 14:28:39', '2024-12-30 14:28:39'),
(555, 'https://fcm.googleapis.com/fcm/send/d8gdrUFH7AE:APA91bEFE0mN7yPRZ1HNQF1xNOdp93Vd0w5WJqkVxT5vtJRWy9qnA8GpI690pHyJyFLgmEQtRGrdxelGVs3lgRUMkqwIftZ_F2I3cQThLVzN5xNb-Y7nI3JJC7Xnv3zvimtsfYPpAwaA', '2024-12-30 19:09:18', '2024-12-30 19:09:18'),
(556, 'https://fcm.googleapis.com/fcm/send/flpg0WZjpYk:APA91bGUU_l_Ajr8CqfgImjajCmS9JnPRZ9t0mLE-IouYQGsZEMg9prxAm0-o7veQ-8onmVOxiq_Dy3iVJB62Uy4NpotLj4nWipo9EeV-zWMp9F6fj3Sy7zHaB5GKz1RmtqR_YHKEBMT', '2024-12-30 19:14:56', '2024-12-30 19:14:56'),
(557, 'https://fcm.googleapis.com/fcm/send/dDBdeBASDkA:APA91bGN0TH2_jrSfLnEWId_ku2HTu7YU0ARUKBIHP_dS2sCxGbZqdeyllvvt_CsO-hRvP3qfQAhHHoxMox2i1YwTCId5SxJJA5Hiu4FyW3bVy_D1L-YA-SjnuxtevpxbOLcnUVlEBrX', '2024-12-31 20:19:42', '2024-12-31 20:19:42'),
(558, 'https://fcm.googleapis.com/fcm/send/foyisbp-Xxo:APA91bHkN7aiE-QU06rTC6X-OyzPInSpBH7MUEZF45zbU0lKXcizFRA1U7YNa8NPGO2olvO0ik7eNlXK7_j1GMJF-0Jk3suhZfF9fT8Dp0EK-JQOcV2KphqlI39EcpLYHJjgmhe1m722', '2025-01-01 20:06:25', '2025-01-01 20:06:25'),
(559, 'https://fcm.googleapis.com/fcm/send/exNnTAOzIB4:APA91bFzCfSUSo7nYcJcTNnND4Hn_rEol7gf887_0UWemek5PKlqF6qunkJ0EbKe7OagjYxqWTrOEvCXQ5sQ_Gf3DkuySL9bNRUtj182NUkeBGvYvggn4Mpd5cR_a2sws7xhs-jIMu_I', '2025-01-02 19:35:55', '2025-01-02 19:35:55'),
(560, 'https://fcm.googleapis.com/fcm/send/exGovE0d7qk:APA91bE0R4XwTz_QOiQNaLOU2n0MlyF-YlmOSEQ7S7B9Xp7uEwToO7c_nH2eljBk_2RqoasE693WhHfJ-pUpg2SinPfPxY4guabDGb1egmjfoLl8LW4WnFtvjGacGdVbnL7v8SFfinb3', '2025-01-05 18:44:15', '2025-01-05 18:44:15'),
(561, 'https://fcm.googleapis.com/fcm/send/ezirU2cDVrM:APA91bH3gLnrmRZrBTUiPCvHAJiFWXzph-YHVyBPyi2tODM0PE4HHhyVwLjV_lOpHAFVuc05iQMLtnnpJvRU_w2G4UmdwqqRWLDpADa-tmMp6atqp9zg_zsnx-UKfsfUNAJ4R7OYAZFj', '2025-01-05 19:41:12', '2025-01-05 19:41:12'),
(562, 'https://fcm.googleapis.com/fcm/send/c2jees2c9gg:APA91bHMlXYYpEa8BMF_h15u0ytegNaLhBlqOKtvJ1kUz2ZF2WV7nCMUspvuo51cEHcnm7bvR7p_vnBKTD9aq_uE4xxdfz4ImboxgT-X_Z7ux0yGoGlfXyyv0eywXeuGAK4ycUErSBJe', '2025-01-05 20:20:57', '2025-01-05 20:20:57'),
(563, 'https://fcm.googleapis.com/fcm/send/fIIeHbSWNTY:APA91bH2VlL32xINT_p7keWPQCzEJ3BVFIhbGFkzA4zBtrn4ueIcRlqVD4LBXrZ8y2eOUpwBeMt7h_QStJr_PfSM1lFxb8K1ERFaR6iPGDFpZ7DJBjJC8cZ2_hn9rC8zKeCJXmeGMIOp', '2025-01-07 19:36:25', '2025-01-07 19:36:25'),
(564, 'https://fcm.googleapis.com/fcm/send/fXroZZN3QYY:APA91bFvwrRMmys1_qgAffbvrB-Kok1qRNiEL8AECZ1PtfP7cwhB3UqlIymPTTohmwWCeWQ3KpZpz0f-qu0ktEpw0i-gTDQvJ6eILtBUmL0DXrL_j4ni6ALO_71G-tbVNM30ZF1Pe56C', '2025-01-09 20:21:20', '2025-01-09 20:21:20'),
(565, 'https://fcm.googleapis.com/fcm/send/ev7KoPZUqG4:APA91bH9M31PgFqIqC1GxfZ6UAiSECbMsBaLoIh3LxS0XJplxXX79gyb_98NvgdYwh4ZWqaIDf3aO4q8lRz7fniVGeeQ3TI4QTwNKQb3LY2c_dqGpbgHsfQBYeddIofk22RPGxDmGAsB', '2025-01-10 17:27:30', '2025-01-10 17:27:30'),
(566, 'https://fcm.googleapis.com/fcm/send/cpKlCfWL7jc:APA91bE92d372g0zNpcHePqPL_l0MRIAsO-0EhbCAY09dEb0neF2qQmgVxxotR9zlMO3j0DZupjfhTXLp9ltjxfHF8znCTcqD9hGc8HzQN1s3udvJUftHYymtzvMDpJ15DBRsE8McFAZ', '2025-01-10 19:38:45', '2025-01-10 19:38:45'),
(567, 'https://fcm.googleapis.com/fcm/send/cXf1FvVjS9w:APA91bGpGhfj2x2SB4BtFJszuMM5CP-uuJjO6f9zXLPClDwxdl5PrzX44EJZGp-gPym_-W_sLtrNbJBmnJTgUa546X9KDbIV9LEgdj0pXP8r7550_rRkuLjqdxdHLykF03PRoFWsc3HM', '2025-01-11 04:07:09', '2025-01-11 04:07:09'),
(568, 'https://fcm.googleapis.com/fcm/send/foYg_k-YfKg:APA91bEsEkdAfcZOR7PFMHLEOKUBlnvp7Vp8AdGwBthldoiV3g37MyaJEmsTIs7oiM3HQxerKNxAtj1_oXHE-Em1UhocXnG7jBmdYOPf4SyuS_P1fwozfaFPceYTO0lLGukwYxW53i3L', '2025-01-11 17:28:40', '2025-01-11 17:28:40'),
(569, 'https://fcm.googleapis.com/fcm/send/fp23EoiKdvU:APA91bEOuIBi04MK0GQ-VtUTVAGZ7_wU5StGb27Q963_2fX2y9f07R7HA2N2remFIstE2QcmybWZOc0TMIpVeGdTib8PK6I5KDCCv0akYdei-72Ob2hffAs1OJipwGtcQAOtaqkP5aif', '2025-01-11 17:42:22', '2025-01-11 17:42:22'),
(570, 'https://fcm.googleapis.com/fcm/send/eNarEMb0S-o:APA91bFQ9ms_OVfcCnlbyaFLLJw4gC9DhMZ8_174XolRTbT2vUqQu8iGXvEfheEHUlIb0nzzreqwVelMSxVlFGGAMX2qLGQAap4RtaWE_I-yPfUujcGE9M0kPsJMUN8S4R6iyhcWzEsU', '2025-01-11 22:07:11', '2025-01-11 22:07:11'),
(571, 'https://fcm.googleapis.com/fcm/send/eC1tdp0nFzI:APA91bGWwtGRa3D3rpw_Hoji9yA6wSXwN1aZjBNAtEs30AGC3bfsY0TYTMwjvH4z4zbhYp38BG47JlaSGQmKqYgvwsSd-YJ4xTHox_P8DMgxShm1Hxsg84j6Ibgq7Pbg9YYp-7fQpysz', '2025-01-12 13:05:41', '2025-01-12 13:05:41'),
(572, 'https://fcm.googleapis.com/fcm/send/emO6cQwZbww:APA91bF0ewbCCyODvtf4X9TXv80Z3adCy97T1Nq7dVSxKif51j3-1_6P2n-UTYeQ2SP93tStRt3TmBTGv5eKmht3kGqpQUVsjKkfGenAUyCHDTtD6L2JN_XNmjVFopO8MjoKOXByZRZt', '2025-01-13 19:23:58', '2025-01-13 19:23:58'),
(573, 'https://fcm.googleapis.com/fcm/send/eRAbP_jP1XA:APA91bEUjMQsWP-bMsPnydOliAHPuL3gGItgGBtA2TWaNzsDYxCQn0KMTtg2Pl7PIs4oZuxY8am2nLb2QyikHosjpU_RHKE27cEAPemXxyXHHToCkNwn38QpCQjHaD6MTlZBOFCW13_1', '2025-01-13 19:24:26', '2025-01-13 19:24:26'),
(574, 'https://fcm.googleapis.com/fcm/send/dfDkxkhAYhc:APA91bFUzfJAUo6a-cpY-lL0SPM10Ph_O0Njo_9pe919IKdzE21eTMaOL_H8QWGzxO7LwT4dX-9Bc_Zo8NUCrBsU49_qJ1txz394KbKvM-EwRl_J4UBZdu1r6QcINaVXI8IYS1qC9UUU', '2025-01-14 03:51:32', '2025-01-14 03:51:32'),
(575, 'https://fcm.googleapis.com/fcm/send/d3mTVQBPvKs:APA91bH-5hNxkK3nDa1WbXhaTCIbbabgUOzZ4vCDv17YzagkzQUipg9AofyR6IGTdfwk2JAHRk-4afAMPHyoxqx_aNACrvtDTd49FweVsyM42PcUKxh9j0uLPQrRViNzTlxIVfd18gLF', '2025-01-14 20:20:04', '2025-01-14 20:20:04'),
(576, 'https://fcm.googleapis.com/fcm/send/cl7NiiPzFBc:APA91bG_XxVVrmHeQh5BDrgtT0RVSQZivjWxCcpA6Z59Lgmn1SMdCTDyS6tQ0lBm0KQq2gRh5YBHRpHkGXL2F5oWU2b_mUyGAZHHIZ-nUhZH-peyqv70xXbd7P-JM9Fyp2vGsw9KEulW', '2025-01-15 19:20:07', '2025-01-15 19:20:07'),
(577, 'https://fcm.googleapis.com/fcm/send/eNrvOcylnmU:APA91bHim7oWhGXzxCstRtW6GgfUGO0sR-8iLsCod4xiHv9B4GC24PF7wWUEofnRCXUbTsoeDb95UkSq3dmlvpCkf8eig70uwTCR7mA8RcwrF22W4D1Ju-SikyzDeGusg6fhfNiqe_2t', '2025-01-16 02:11:49', '2025-01-16 02:11:49'),
(578, 'https://fcm.googleapis.com/fcm/send/e4vLf9Y47ek:APA91bGXRId2uaG1bZPjduuoQzI1t4ijFRO4AaUsIoEVU1zDwiOTILLL-ckacwLeG-0JJzdnXFaEErCii_dCVPDXxhIOZQ1cGgpmh8nWfvuVfvMGA2-ptAlFF0b_tEUfyY-dkzdvmMRz', '2025-01-17 23:12:09', '2025-01-17 23:12:09'),
(579, 'https://fcm.googleapis.com/fcm/send/c5gNUZrZKXA:APA91bGy5bgMjq1i9Jv6B1dgRHeRxdkbumEfRAPw9eNkknOLpNr1HC7Yx-BZQdnSlaTew9j8zjk7Ic5IXZhFVbREXU7v5VVplGkLhb7521TNMAWX1gmJZ88xFw6ARNXTwImh0T3NRZTc', '2025-01-18 04:26:49', '2025-01-18 04:26:49'),
(580, 'https://fcm.googleapis.com/fcm/send/dgtFR4oru0Q:APA91bGHAyblIQrLsLpDkBBWnSV6HbRSViCCb6lH_IZB4ryia_hWnEfe0xMB3d6r2JbFn9D0WIV-3VvaUtK5_YOCxF5E31Mv0spUZ3QQ3ssRqYn4eIrZ5f6CI9sCA55dOpY_vPhsUr2m', '2025-01-19 18:37:19', '2025-01-19 18:37:19'),
(581, 'https://fcm.googleapis.com/fcm/send/dFwQvfUChd4:APA91bFBhAWfJ4Am_FEevW81ta-ftNGOhe0ErqxF0e7vZVf3uJGyJQFTseTj_mYa9TpwxQhgf5h3qbScPHwnW9rOGVDOuspx37pfpzx9_bfjLR2b3-fisEwW-B_PWz_AAem9OkKeBbrF', '2025-01-22 16:59:51', '2025-01-22 16:59:51'),
(582, 'https://fcm.googleapis.com/fcm/send/cUUD8I4iMHc:APA91bFioW-f3fy_8zSArfkjZ4nq9i5eivt5H8LZW9HlsmLMxUt7rwrXxDknDQcL1SARoc9AQmJElnhyjlgX6sneyVGTXykBx-uQLIL6wbEVkjWSRXwuA_Diolc_v_yn9yRUSDWBbfcP', '2025-01-22 18:39:05', '2025-01-22 18:39:05'),
(583, 'https://fcm.googleapis.com/fcm/send/ebiYSE204LM:APA91bF1Yw2A7Sn61Oo41EwIRt6Kql2atR38y07vwCIyYpeZ6Y_uO1Cuo5eVx1JHDmnYIg7XhT2FJPLXAdEh2XPQSTpJvjITbyNiKLXMdsflccJXKrGJh1ueMknUfSpP6HZkXm5g7BNj', '2025-01-22 21:52:21', '2025-01-22 21:52:21'),
(584, 'https://updates.push.services.mozilla.com/wpush/v2/gAAAAABnkjp3Sw0IvQZvL6tmOHf0ebqCM2SpYHSg4LmnvJw8dS6WNNVk6niio-1AHzQBZSEkhGTsnKIoYQ6ohL8qL8mQEXQpAvhSgXE1ksPuicTRvCkYwuMyEpO2X5ghcloRBJHgd7tN-PesGkHt_hG1uX6J8tSflBAJ2R2QKtpCn6Flhtd2-yk', '2025-01-23 14:47:51', '2025-01-23 14:47:51'),
(585, 'https://fcm.googleapis.com/fcm/send/eOmDMN8nWLI:APA91bGnuZ7xI1fhZ_L_m5LWBdE0U0z_dblL1767YUFXjjpiNxjRtsv9YUkRPJ9zxP3GlGi48Me10lw13Xb6a6JviMZJ1bhs08jOHWt_vjtLHfWF1PZX2keB07ljSupgNBdczwcgLXdk', '2025-01-23 14:56:57', '2025-01-23 14:56:57'),
(586, 'https://fcm.googleapis.com/fcm/send/dgjfrS-MHgM:APA91bGaFXt3jxrT1siL1qFtUfi7vIqxfAUashVOeauYryWW1ZtgYxTdccmQG0LCm7H4Q_cTVm4LpB16fFdrLJa1A3WHVUaQogvjOBVFAFz_f9BbamVD8PZEXaTZqfPivgWqlaPRH_GR', '2025-01-23 17:28:14', '2025-01-23 17:28:14'),
(587, 'https://fcm.googleapis.com/fcm/send/dalBOIV5-U8:APA91bFqU_NMyFFGQS6HV2vLAbAQQFajRmA6UCO4q8nBg-FDHzGF4PrPv6WH9O3KhttCP3IBV8dzNj993kRFW2_UI833KKYqOtxiorv4sask2BbHtR_0mY_I7bnSd6XyhPBchgZd7wk9', '2025-01-24 12:07:36', '2025-01-24 12:07:36'),
(588, 'https://updates.push.services.mozilla.com/wpush/v2/gAAAAABnk7CecQRBlVKbYsSfYTF5yIqQtFel4F1kBkPP0ggT9uY9FGmwKd678fFavLRB7WeRHv9re23zt3p9iu1Ul3I-iDcQmJrIFvWW73_KK8P489fczJmjh6Tpz28mcGDS75_xjpdeFn2PzjnXbJM9bptd3jjmVA8P10J0M6flJEvP1GYj8YM', '2025-01-24 17:24:14', '2025-01-24 17:24:14'),
(589, 'https://fcm.googleapis.com/fcm/send/fuc02Lxl2FY:APA91bFU-UfwN_Bwt1kfSH7Vd4WgJjHMXsS4o-x2ybGBvxQbIbuJMvHOebPtDkon6uthdHHCMB8NM5vudSlIojWXHEl0BsMr6zRE7fuZgcmnYNlUPVIaRUs4RqFFuqXAy763E3rpZKrp', '2025-01-25 17:55:57', '2025-01-25 17:55:57'),
(590, 'https://fcm.googleapis.com/fcm/send/cHTrQ-rDFEc:APA91bGqb6U89VQtSqAXD3t0rjQn9_FVypzJpdNeDUpDwpzbx-HDhBcDrMtf0fQ2fsJLCiB7OAiBUmgHlTnSponlxgsIX8Xh71UyuZJdElG96MkG6X_YeehM1cJQ8aocOc_FnByxa5o0', '2025-01-25 18:41:43', '2025-01-25 18:41:43'),
(591, 'https://fcm.googleapis.com/fcm/send/dy2JNFEcwsY:APA91bFg-9SOeZYM9a4FD-C_PtoS3SzhntGVm1ISi0eXguyZoRCe-aLY9bTrXm5PqiA5lTj0wHF9Ge_wunlmYX8iRUWoGAuGWN0nuLdVro1tBeK6stKO_kjJKkoH6yPN6qQOnXCkw-Ky', '2025-01-25 20:11:10', '2025-01-25 20:11:10'),
(592, 'https://fcm.googleapis.com/fcm/send/dQLm3u5bPHE:APA91bF4tQd8mvjzVQth3x7RJrbiHK5kLZex3iJhC6rlXsKVsG81fKJnv7o0uisGOg7UKiozfQnFdfO0_5V1-DSKiz9FfycLGz4-F_Fm-n_zFbAsmRryJWOWDbNbjDZF0ry5olUb9YgO', '2025-01-25 20:18:57', '2025-01-25 20:18:57'),
(593, 'https://fcm.googleapis.com/fcm/send/e0nEy9bV3cs:APA91bFp7R_bVTSwO4Wz2dqC08GfNaGZARttMqM4iSAAvNQJrnM-XfSg7qwEgQ9yZWbmZ8AIQZbQslCPk25gGFgogcmVdUmArfVkJ5cDe_uy7Dl5dO2yFztSzj9g_3M90KiVQjMOnwhM', '2025-01-26 02:07:16', '2025-01-26 02:07:16'),
(594, 'https://fcm.googleapis.com/fcm/send/dsCoTn2Oaio:APA91bENam_3p1hJJCJNiCpy45BYplk34KxtQfJLfIUGT55GWsiYLwHE0bA183liQid9tCjnUx8lrhW_imswjkILo7CfmdARy6d8YSmT3eHdlr5cl7r_Y_6T3PV14_Lt0vCNBwfDa-tO', '2025-01-26 17:50:56', '2025-01-26 17:50:56'),
(595, 'https://fcm.googleapis.com/fcm/send/dmpL69fIe0g:APA91bGiEDs_dlAG3QkECV5mht1QMy6ObX0s5IhJ7bIfzR4TcLhSlsvy-1ewun9s1UY4yvGd4Xm-r4t309e7CXgHK6mXHfcXB49ZGi_VA2X11KL-k_3ZmD9Smp49k4jOJYKkMHbu9Dqd', '2025-01-28 22:22:17', '2025-01-28 22:22:17'),
(596, 'https://fcm.googleapis.com/fcm/send/e2NRC613nQ8:APA91bHVa9aT3xXMdccAzBqphe_nS3dlikyh0VVbqrvnA_-4DB_rBzuEcio-_09161qafEK-0TAFb5E7Yl-2FBvrtWGVO8_Bda2AiHB5y75bis3EqFDJn7cBe2KQkBAit8EIPYQmjROs', '2025-01-31 08:58:39', '2025-01-31 08:58:39'),
(597, 'https://fcm.googleapis.com/fcm/send/egCPevgmbfA:APA91bGZIJxsPL8sfrYERcBsVyRffQwFQdDRpBbUseKcMscFCbQcHT5INVk06_pfBuOAXyWr7k9AgBgDjVMOOx265FOec6g2BS_YHkVwQlyIJ6BB3GPnReCZUh7tb8resPmpXh4uKnn6', '2025-02-01 03:47:02', '2025-02-01 03:47:02'),
(598, 'https://fcm.googleapis.com/fcm/send/fRSVLkNq-7k:APA91bHZTn_xr-8jd9utiFJAf8R0vChrKC1esLDUvYYBtgktEvCbdymeniMY8D9AQfwtOJlZ7PPhLrMlKnnOVwARNgWpVKvcQaYtRZAHUnWQTHRAx3wPUj80bBfK1pMvC1S-T0mb9fVj', '2025-02-02 17:39:24', '2025-02-02 17:39:24'),
(599, 'https://fcm.googleapis.com/fcm/send/el8uPHWTqWE:APA91bG4zDH3C4oCal66arzsGqEzDHWbLNgv6CiFWVwbyZO5dcC12sMp1nLgQfxbMa9NzOO6GOlDr0ZnwRjbDL7MMTHY9_W05xAHehRBg-NY-Xl3xOww6Pwe9b05hxvgd-MRkCGS2nA0', '2025-02-02 18:49:02', '2025-02-02 18:49:02'),
(600, 'https://fcm.googleapis.com/fcm/send/eGm0jvn_fZ4:APA91bEMyWFb3ji--xHPjBX2tuCmn4sg-CoHBI_ve4Ne37iNv1tdZjb8IZ_IIgV6v9liRxjT8g85I-9B4W_b2HEAAY_TaLozrVD56imCz-N6tI1bqQpTPf08zhZSah_Bg1C4uzaFszT_', '2025-02-02 21:20:25', '2025-02-02 21:20:25'),
(601, 'https://fcm.googleapis.com/fcm/send/eS-ma-K5m1I:APA91bGbsdmDWmwqP_4cSUWCdMaQEMezN-L6VHsRS0PfhXgamHSiAIH2wk_wDgvnTIJ1gmXIePFu_oOQi22VZsw3BNyPDr6FiMoLRTUoZZG6Rq8CjqnAXpYTe-DJ8gQwFPw44kn_MNnJ', '2025-02-03 03:42:11', '2025-02-03 03:42:11'),
(602, 'https://fcm.googleapis.com/fcm/send/dgZT9eSrDH0:APA91bEvVvaOSGKYIjia3l4EE2r-Bchp-mJbIA_WgFJ8RDxzn41KGZIZOFA7Jed3MofnjzvJXUwgydj7H0fVd2Tk6B44vF7iAu_JYC5HoY-B1RKDyMX5lLc33M4VBe8QVjm76sSqfPjl', '2025-02-04 16:55:56', '2025-02-04 16:55:56'),
(603, 'https://fcm.googleapis.com/fcm/send/d-NWRuwTCAs:APA91bHx00B0PoQRMQjJNwrB5KjrpPFCXysBXFDbOHEyqTgN6evlav_SdzOXy3NWc3fvKCkfCm_7k0WhXo75wO0315NtmkGltIPZmdAF-4tpDViLLz-H9MeXjUD70lPhFT2VFBvGX4rr', '2025-02-04 20:12:56', '2025-02-04 20:12:56'),
(604, 'https://fcm.googleapis.com/fcm/send/f6lPA2Gji18:APA91bFCpWbWBNyhNohk12ZsiqpL-Pv8PZsRwxDOmY17AAoVX3LhDe-d5tEeAQ2kzWS4w85BSFUexrl6toe3NY6E2i2NCDL6QrHTe7GzlNpF7DKgILYhdkoXuUiaP6UVwGHp4L8sivdu', '2025-02-04 20:25:19', '2025-02-04 20:25:19'),
(605, 'https://fcm.googleapis.com/fcm/send/dIgObToPT4I:APA91bG_oAv12eCQ2ghuYdZU7QHI6GCyW_cpDbGAaWcheLqcRNSDH1aknkakpzRaTruYXR3kPCeUS0Nf0V_eLzgskaXl2K3xbNZ_Vswaly6PzqYfjcJtYrXznV7PCG_8nXwsWIGr8C3X', '2025-02-05 16:35:42', '2025-02-05 16:35:42'),
(606, 'https://fcm.googleapis.com/fcm/send/eUk2zTEW5Wc:APA91bESum8r6wsG7kV_FJrriNexgyGeRl7kN4Dny5AHoACT1QO5oOqS0jbp1ByIuUPcHUkDfxO1BGEv3oFkOW2kYVosX1PPJ9ftQ2p_o2t1F63pySHobx-1rTFWK7AKlN0EFUhNFes4', '2025-02-06 22:29:05', '2025-02-06 22:29:05'),
(607, 'https://fcm.googleapis.com/fcm/send/fjM_Cof8OSY:APA91bGKaedlhA6MCvhyhiZcdHdHn6wwc1fhg83SMwmGVLjukKi_B81KEpps6NZX6zBG7MWL7WYRN5B4bHmyu3L5fVsBJXoXH_7O_Diz40Q3Tz0TdE2TGFzXk1-N8SHjFJE9H9rsbWEW', '2025-02-07 00:51:18', '2025-02-07 00:51:18'),
(608, 'https://fcm.googleapis.com/fcm/send/f9FlhtIKIRE:APA91bH6oTwm_-0TNkD0hf1jzMzda-a_LORauXTg1O6jFkNLGrO_FlBS7QrMi4kip4sIalbTIyYfMl76ayaVwYO9x10EGPUlQQcaH47W19uoQCLjecGehTplqQwSAn857U21_AWKHDps', '2025-02-07 16:16:30', '2025-02-07 16:16:30'),
(609, 'https://fcm.googleapis.com/fcm/send/fpht9SOTXj0:APA91bENn_joHmtyP0FbY4m5b03OhcrpM-rtTsIlQZrTeeoZ4sQVPcSevn-V8zjoGm3wDxwc5MUZRKo7Wif7EmmU6o296714MFMbwWiAvJyEP6p3aZViisxPTLVCKiWy2GAtqEdC4C6v', '2025-02-07 22:58:35', '2025-02-07 22:58:35'),
(610, 'https://fcm.googleapis.com/fcm/send/c6tRCGtnfZA:APA91bGClsCA-olH-hyj8QrBrNFjK5tjtTIiftc1pE9qkbQahM7vtDfNQelbjnaPVCAStx8rbDed7V9-mRizZNjisKxcdcElj0oNaMQ00Af1wnap_cC_0hiO7mtJQ7X6y80VkTHxFjl_', '2025-02-08 00:42:18', '2025-02-08 00:42:18'),
(611, 'https://fcm.googleapis.com/fcm/send/e9f5tWk_iww:APA91bGmvtah3s5OqdPC36FCyLw9DZGScgDjxpRCFAmT56B6a_NJhHr2w1w5zkeG3_QNHC56IFsUefCJ92lHh8C6hlwNBy5pTRKvHWCrJ6wKR2bIvTY1tEXnnBzt0bBoEali2fIKwJ-0', '2025-02-08 01:10:41', '2025-02-08 01:10:41'),
(612, 'https://fcm.googleapis.com/fcm/send/c_TgKB6NgPQ:APA91bE8COicvAsu9xkvoi168osQTxb20mWNbmPFtL7EL_jgep7tqbnEH9wcyOhq2up8-keKqiTfBrLH2x4JtkgA0qqySQfdAlOM-Pn1z4BONGt-diUvE56yASqegkd9mxGaU2YOhh-a', '2025-02-08 02:49:51', '2025-02-08 02:49:51'),
(613, 'https://fcm.googleapis.com/fcm/send/f0glz32VQsc:APA91bHfN7JbZ5cLi0nFsD-KihhkwyGEb9LPU9zwj_lUc5QVlBr0yO9CS8ZYmsNW9bMNh2vUd1vUqZXue6KWtx-TcSppqn-F8k5ZJbv_iJvKY12vn3AoxFtoT9kO3vA0gF28mtf28Gae', '2025-02-08 19:08:54', '2025-02-08 19:08:54'),
(614, 'https://fcm.googleapis.com/fcm/send/fvqoI9o3lqE:APA91bFUOA7k4rurL0xjI7gOyJwXN93Wo4ApBqW1hZCZajbkwNT4MgsZ2VC_6ZkbbMxdvEw-tB_Z9Jk7T_ecUkarNIBRQensacr0cTsmfSmeD3mpAEjmvLmYQ8ppyabck5IlXDULM4Is', '2025-02-09 15:44:47', '2025-02-09 15:44:47'),
(615, 'https://fcm.googleapis.com/fcm/send/duDYTgqTPvA:APA91bHt7MDronNI0ijRf9W8Otc-UPaZ22iGROgeigvFGAXualcDCOFfaG0ZZm8G1FFKn4b4IBhlDlqhimgAWgt-se8BGeKsk8wC1j1HSoZr3whyA8iz8th3oKKH-1nprcN-J6NG2C01', '2025-02-09 19:13:53', '2025-02-09 19:13:53'),
(616, 'https://fcm.googleapis.com/fcm/send/daTX8vTWN94:APA91bGv6XyED1jn-_RdUZ1z5TNo4ztb3k4BGc-7Ao69pNdIuxUplt3xWJ7Z9fW0_z3EoyPgYGV7YkD7U95CqGks68vameBMD2sxXinGW-N8GbCTipD88e1G4_5AIcTU_JguYYspd4vB', '2025-02-09 20:07:53', '2025-02-09 20:07:53'),
(617, 'https://fcm.googleapis.com/fcm/send/fZV3iMsvU2E:APA91bEP_ULepmdVYv3484g_BCmkhbmCx1gHrbU8jKZqrfHlpgEb7ZVQlqWf048dvLq6YV3jtn2NRApW9bCZH6RUyG4dU0uwnSlfAOjyEDJYITkkVQdWkjvwjwy2kAsh9YBxpzTlv2y7', '2025-02-09 21:26:20', '2025-02-09 21:26:20'),
(618, 'https://fcm.googleapis.com/fcm/send/cc8mDzNfBdA:APA91bGDNbO2gV65kf75kz5So6PPXjGu-LYWwJCOAzepRgkTKxrCb8GovwQRojXLmEbN5MZs18Uh8Xzf9NAwhFWOVYYUgD3PhoID_WsU7Oq18YQbuFWJulGbxAkg9804ZexHHm4yvwwQ', '2025-02-09 21:31:51', '2025-02-09 21:31:51');
INSERT INTO `guests` (`id`, `endpoint`, `created_at`, `updated_at`) VALUES
(619, 'https://fcm.googleapis.com/fcm/send/dqZfcS6CKdg:APA91bGak0KMJD4Wa1hRvmss9-RM1pXvE9LeorVWsfpMo6giP-e3JQ8Kvt7DdtobQIF-UJiHoG5y4DdRDxTRXDdsGXKqdfj0Y6HD6HtSiGvp1xlUuK2yrUyk1ZgUwxsUVubTHnTgG2lC', '2025-02-09 23:05:51', '2025-02-09 23:05:51'),
(620, 'https://fcm.googleapis.com/fcm/send/cHi93n73r_4:APA91bHN20nh3wM9p_cL7O19KeaoRpD1jmuU3jIkC2JJiGghkEXg3sA64FNnr78yu-Fk_oThf1HZ9VFXyIvVt9JAWMY1g8mwC3cSSZKVSV88nz7gwf7npsIS8x3e-YMV8IAmZzpUm0s0', '2025-02-10 16:44:49', '2025-02-10 16:44:49'),
(621, 'https://fcm.googleapis.com/fcm/send/cqCGphC10cQ:APA91bHUCFcT-T0Qjx989jW0pDWi4JhvmyP8YEblMRfVmfIv5GMWMNcueug9x8C6Ii6s3BI8KnnCS_Zv8rZUtgo0a4L7210mvDCdyJuEEjHfEIuAIwLQKT4XIy0TYfmuYn2brtcjwEp1', '2025-02-11 22:39:53', '2025-02-11 22:39:53'),
(622, 'https://fcm.googleapis.com/fcm/send/cvRfkXetSrw:APA91bGB3EMkLXKCkepYQbeTLqNCrmKg2kVwKnzCFGYmbXnKYLtWEa7XiidGPlK3wfXP0hvubge0CJneeU_4JTG8lz6RR18iph48AokToGobi68ubr0PGjxRAwAfmjH-J16yoNDGMLSK', '2025-02-12 17:57:37', '2025-02-12 17:57:37'),
(623, 'https://fcm.googleapis.com/fcm/send/e6Y6JLSWA8s:APA91bF8m2mjuDhfTyA1KZyv-hUUUCq_KCscG3yx4EtHdCPoXvrIODGUtaSKc0Z0rCpoQ4CLRYQDPnGp5QCpHNdlWW9W4aH9NrBTX8EcXw_oofp_nwgJNrFg-SZ_fL0iiq2FV758za8f', '2025-02-12 22:09:43', '2025-02-12 22:09:43'),
(624, 'https://fcm.googleapis.com/fcm/send/eMyjacV8Zro:APA91bFl3ZmOpvUYi4tjTJn5xCa2ziHvWEu253yiU0GccMvcte7dRDcuHz22-YepDj-7NtAKLsMY1UYjHVOwTdj_ldKGdgd0QDmNz5E1oVahhsDY8FKUORSyaI-N0fcEdkayYUoBVL7D', '2025-02-12 22:10:43', '2025-02-12 22:10:43'),
(625, 'https://fcm.googleapis.com/fcm/send/esu5_Uh6v9o:APA91bGJPlUfoJqOx_V_PBxIBd-Zrow3Vn3Kwbrd4EqpgMcNw7o1CK9LsKpBdXifQd2Jp-yLYqhnkxIirEN4_keQ2TIsTrzEQvhOEAI7D-qzBRKm3rXOkGQcgHHopJoViCUzjB42Q5cJ', '2025-02-12 22:21:46', '2025-02-12 22:21:46'),
(626, 'https://fcm.googleapis.com/fcm/send/c_-mp1_RqYE:APA91bFgrJGmTflzze_RJXeqMyNy9tPd0UVBPvs0bFxjEGvDQRLd-OBgvTEcmtgpRDO2dSinrHbc_zUMqsPCUxnfdiMI_UFPbYUBFLBpx2wq78Uphsk2EDAuDe9EU46XigNAl68fxGxF', '2025-02-14 18:19:31', '2025-02-14 18:19:31'),
(627, 'https://fcm.googleapis.com/fcm/send/cBsn8JXc_eU:APA91bE13GQ_44jneaUye2AmYNsZMVBMwa4zS0B9cPbhj2cKXangPm5rr-gMDGwxKSLTA08mJDasfsPWklAEQ2pWZHk4DR2hHIYRQYdb4kUkAhGkjWXBJ6x48RQlA5K1EGg9YI3yO63V', '2025-02-14 18:19:37', '2025-02-14 18:19:37'),
(628, 'https://fcm.googleapis.com/fcm/send/fuRzK_9DLUw:APA91bGQ872miqtiLW4wRJcNL5crpLS_8_8dIXU_lCSTGiyVqCsmy__DTuGx38grnMbmI08r9rrs5-cH6_skYDyFmfIwPNH5CfU-Ion7h7ONecLHBN8Udimn41ThS7pva11--s-dr6GD', '2025-02-14 19:57:17', '2025-02-14 19:57:17'),
(629, 'https://fcm.googleapis.com/fcm/send/dEYntVVIq9s:APA91bFcJL3qhwxnNY5_6NNyWcF_wcRfyOAyh54Y5yDIU9EGM-PY5GVHpV6xkKpi-CQElLzqoV6flAfu50pWig31sw9HhYVVN0RIZfHyn7xvBazf-bYeAdCvFgg3XDxVpH90E7qCX_5o', '2025-02-16 22:01:59', '2025-02-16 22:01:59'),
(630, 'https://fcm.googleapis.com/fcm/send/c5EEIT2zLeE:APA91bHm47FHtPEprUHoI70WgEekpidLV-pMsAPhrFjHDhHjQiU5NPTXbLH-JUB0Z5pd76hZeS0a2XBxYoMXs4tVpeqeF0EkqxSI6OvPaTV1evENAi9SS14blAT56-UP-Ehx9mrngbhP', '2025-02-19 17:37:29', '2025-02-19 17:37:29'),
(631, 'https://fcm.googleapis.com/fcm/send/duC1UYTeLsQ:APA91bECoAKrKIpktwxGTm0T9f_MkFvaxWtuXtGSUWijavPJY_jm6ye0t4OJm2MbcSTpp2quxI0UQyO5unQ76oEtLke0e4E-1lTNfkL643GDwjmSYWI-sfW9pL1QqlgN6gyeBxU781oa', '2025-02-21 01:20:21', '2025-02-21 01:20:21'),
(632, 'https://fcm.googleapis.com/fcm/send/cW53DDxP6wI:APA91bG3Rt9Bzy3h4GbRKVxPXm0g2ZHmRAw4f2R0owCAO0LAXShiYVkB27mW7p59hnfQD5Dp2z_72A0Hs0ZPgi1fMkr36J4_b6X5LlC0oRrnTQKeunzzhwh8Dmp0H2OL-tiheDX3IaAY', '2025-02-21 19:35:29', '2025-02-21 19:35:29'),
(633, 'https://fcm.googleapis.com/fcm/send/fH0eCPhNHoE:APA91bECTOd-nYFVmn5Qn_AcJ2ogIILgXNdqdR2uHtOZ-BjdbadrhSJmyPP76R7fWdLH_ovxsFEZedSmxsgQmpl-PE-kRI2fU9gTyjIQHR6SnT8-dCsHCcgMmWHxMnJS1eS-nyWCzHBU', '2025-02-22 03:51:00', '2025-02-22 03:51:00'),
(634, 'https://fcm.googleapis.com/fcm/send/drecJ6OGALI:APA91bHh7NiTQT7aQSx7oWyP_BsFHi_C5t5oze_eBIeqoeTWGWtjMRdEQjwu2Lqa4weQIzm_S4j7S5elDjgVmf4ecyUNUCcL2wkeVJlQEz3hsSbNFqClofR3zEhRPqSGDQcFLI3trt11', '2025-02-22 06:48:45', '2025-02-22 06:48:45'),
(635, 'https://fcm.googleapis.com/fcm/send/exSETRkGJC8:APA91bEGPCc9a96z7YPzlMNgG6jlTSkgc3iPXG-xYR4z9dFZ9aGvh_i0oFUUIAEifM1rS6ROOVsrS7Pf72RH9pleRnZzqHZenZ1aq8umnrsrEYyj5dZ0_RTsbLGNHB5tbe9LtyVayhaG', '2025-02-22 06:48:56', '2025-02-22 06:48:56'),
(636, 'https://fcm.googleapis.com/fcm/send/c_aHuO9A7A8:APA91bGKsB9egWLoWks95cYuh8pfamKMyseTZ5tpKmjIhXAf1eAMBqBs1P0al0u72um7cH-rghfc5joHyNGnxorsbDhgqDW_BZiQYVU7-ORGsvzGlVNvevvvhX9DBjExgL_R04hwCzIv', '2025-02-22 20:05:56', '2025-02-22 20:05:56'),
(637, 'https://fcm.googleapis.com/fcm/send/cVTSNaQ63CE:APA91bEs7s4V4nuPyF-CjhSVOusJ6W7LXuZsSvricL-FgRF1QbevHVReXz6V7ck-IbkJGArqPIk2Ed3VJaahnTMSGmOZ5v_RMXZ9KEQcVjjT7zecWCUkmJiUUZLXxzHK-JgbV25YimO0', '2025-02-22 20:06:28', '2025-02-22 20:06:28'),
(638, 'https://fcm.googleapis.com/fcm/send/eq0XtiMZY0U:APA91bHbEqx0K9ChQM-oXjSwu_zuHvbwkX6MgWVK7qVWpWXiRcPoMOiN0gQSI_ddHK6cJN5EfusHHOf-6Vw6fkpW7zuvm59BwXfWfhlQfGUsmeHlhDLbqapvm_HjcO7eoXjGZ-xYf-S4', '2025-02-22 20:39:27', '2025-02-22 20:39:27'),
(639, 'https://fcm.googleapis.com/fcm/send/dM-WL-ZRckQ:APA91bHCrrPU5AnUaocR4SdC8ALF5qXNITTuLfbqGqjX43VPZW7OLJQNYSNy30wBi9G3Z9qgM7a3eqH2_y3oFdfi_x9VIW9_dMs8pKex1sQOURerFe-9ZGBQvJdeRjZ92BZTcU0zys57', '2025-02-22 20:40:46', '2025-02-22 20:40:46'),
(640, 'https://fcm.googleapis.com/fcm/send/fYvHEDr0vhw:APA91bECduo4ipjJp2h6cSAftUfnjNW_AqOi8SCNwXS-cxg_SjrSc9XWw8tFtqSeJZ6KcBl7tqo_nKd8JF40-XaUn7QwHONvqNYyr1w_qxyp-FJE14Y0-YsyyCSJOfPZCmc4ziH8u9jK', '2025-02-22 21:33:02', '2025-02-22 21:33:02'),
(641, 'https://fcm.googleapis.com/fcm/send/dTt9Jl2Rn8g:APA91bFu-53Qc5bvSdPeiQoVa-WRdvV21EMpzAX6bmpL1sg4lA6RcD0_qPz1XnIMEmbxGYOvlhhslDfnjbPk42CpM3YHE7d7c9KDQBvgdGEbCrHJXODsysIWOfgpaIR6_HhPbEM3CM0m', '2025-02-23 16:59:55', '2025-02-23 16:59:55'),
(642, 'https://fcm.googleapis.com/fcm/send/fgmz54CV48E:APA91bFR90KBdxeVNfaCm8_8Q4Eyfcr4MPXWB0t5IO3hZRO7moW86O9S5_GK3Zg4GQTRdjWmRqwUHkBA1gNYY6IBfTQGE4ChyAXhsNVMuswF1GEZ2ZxUs3vulVYA4ABs7Vt_mFiqFCjy', '2025-02-23 17:00:23', '2025-02-23 17:00:23'),
(643, 'https://fcm.googleapis.com/fcm/send/crgDcGT2DQg:APA91bFYkNLUf_1fQrHqpWuS94UV2rT1zVzh2QVzZQwPmV5gTL8_JTqe_LKqf_83ZXbGs3wH9dhUi_54AN9fCuamIFO40iTb2bHLqLjdtsCdKOhFbpTtI316MvPcXg-_VAPMOn7FSwRF', '2025-02-23 19:39:42', '2025-02-23 19:39:42'),
(644, 'https://fcm.googleapis.com/fcm/send/ePE091mMqfQ:APA91bFrEqUjqdmmZV6zFiAxqd5805ctWDWINQpmw3cjGBZB1cG1Svy1qXUPQwCDIjn71_nECvnRYjQI4fE6EKP-T-QZm8AeA8-7aaYkaLoWszi33ANlAYiuYIehyz7-ZVRzNNToUsMi', '2025-02-23 20:11:05', '2025-02-23 20:11:05'),
(645, 'https://fcm.googleapis.com/fcm/send/dUB3l-9o69I:APA91bGB50KZJuvorG1_cLvBzK9DGAY7Ynq4WM-k931HR9TCke5YQ0pbP4mzfSWZnNYWFj27pW2cT8SbVDJ97gRhD9LNQ5fhA4hGDuZz5YPAu0zQxNnN4ZbwRTmURaB8h0Ab8tSM2lCb', '2025-02-24 19:42:27', '2025-02-24 19:42:27'),
(646, 'https://fcm.googleapis.com/fcm/send/eseJsFjsXKI:APA91bFnayQrBEOssSYyQng5T13s_V3IM59bRi4BTbeIUrztWoqYgW7JUzaTsR_8vqaGEHyv_w6T_5a732u8v_NgJzdZIMZyqpRlUU0lgqygrySe7F9mzmBav1v6xTZtLyoGiga9kUdA', '2025-02-24 22:46:22', '2025-02-24 22:46:22'),
(647, 'https://fcm.googleapis.com/fcm/send/cbzPD3N66YI:APA91bESX3tADKwYNQEiTFYGK1XN4MDT2tY6NnWgZhRZQVPugimRB01JkBxENjzkrJXxHxx5wSB3CVOizEmNHRNC-DY3hTnSKLeqpFBR-qRIGsV3wVfCC7Lq5970PyI7IVYt7RVyrKiy', '2025-02-26 14:52:02', '2025-02-26 14:52:02'),
(648, 'https://fcm.googleapis.com/fcm/send/fLbUGJuvz8Y:APA91bGelhCrrlmaXFx9LbpZe1jHK2u6cjb04KfRD57r0NZ4y5tWwrZGitFWACEH7ev3UqxSi1_rrwUhX5Jo54mc2mbD_KmLRRd87Y1LZuxEX25ugOCajCfg-QkqC6ZDQMbXlCugBa9R', '2025-02-28 18:44:56', '2025-02-28 18:44:56'),
(649, 'https://fcm.googleapis.com/fcm/send/flk-nmi0Moc:APA91bGeZC8vj6Fim3ffyzo8taTCIRfYG_2S8Y8cPamCTXGwDzZ9ANbHDmBJKwm2xbsEP8AocGWMUwFikVjnk6sucjnOzqCXb9icXQrGymwtOYrTuJyeefWkW6XtbPdLU6_brNZVaYLm', '2025-03-01 15:30:46', '2025-03-01 15:30:46'),
(650, 'https://fcm.googleapis.com/fcm/send/eyocGT-Ldl8:APA91bH0YvQY1NpIkzGzutSFMyRmk3ST4LkJzf1c0ZNEZQfN4w-oIWO8ggcAgcqzEyo5mbzUFJbGgxUL4Kq6QanDPcMXLTCZtf1cCQqeT3XzE9-zLBY_Lcaa9l4kS1Eh3ns7HHQntAk6', '2025-03-04 03:15:08', '2025-03-04 03:15:08'),
(651, 'https://fcm.googleapis.com/fcm/send/fx_warwYlv8:APA91bGGcGcWidD8bGyFZbSTz5h5oWoxI94SW3TzPr_PsFPFs1WmMdgZk26dGARcMBHcBhnxNhUJRtBQHFhFqdPN4SXUK7UsRprzhlMwEOtcPTxDLbn1l0v0B6ZTMNsI78ss5P0q0cgh', '2025-03-04 04:35:05', '2025-03-04 04:35:05'),
(652, 'https://fcm.googleapis.com/fcm/send/fIAQIC_VTYQ:APA91bEQgGOigazF7bL-PUmzjsKaFSQsWnWQknqo1MukFWrQAWH8Zn_tyP3JUYA76i4HMFxfBXSb2i6vfoEIAJAhRwkdd4v04lrTv942zeoh98ATK8Fb2Sj9iWKGUW2EOSPCuSCrw8yb', '2025-03-08 21:37:12', '2025-03-08 21:37:12'),
(653, 'https://fcm.googleapis.com/fcm/send/caOrNJ4xqYE:APA91bGIJ2UhseTwSFwThB3xosVa0UnToWzRLMguR2pkiFFHb0pASmvFuCP5Jijsfvtbob4jrUA2JihtyZ3fiDiVDIPPGXN5rqCw7SXrC6qU_yWlWSeCeTj1QlHxYeeVUzSmJsvYLQYs', '2025-03-09 04:48:58', '2025-03-09 04:48:58'),
(654, 'https://fcm.googleapis.com/fcm/send/fLufogzZx_M:APA91bGhmEZamw-59xXz7ekbw_Px44fyisyfzn6p3HzL3GnrL2csOWz6PLA6ZNplVungEyhMtLY7pvTBrEgIIjbWXCbhta1kM7kWzlx9Ovmx4AnfH65BmQI51dlCgRWYL62zHMam1o2t', '2025-03-12 18:55:54', '2025-03-12 18:55:54'),
(655, 'https://fcm.googleapis.com/fcm/send/ceTRyWMG1h4:APA91bHDuuV46n10yRmrnxGbeiKL8wdOwvzq7UERFtTjzM7akRblDm0mq9dIY7zefx2x6VqTzuvHiuwCnWKXFbQAj_fp9X6Zfobq6rBpHgJ9MkaTq80yMHpSqx2-Y-k4A-Z1zZB_TGI7', '2025-03-12 18:57:07', '2025-03-12 18:57:07'),
(656, 'https://fcm.googleapis.com/fcm/send/cREL7SK_SdM:APA91bF7JwnM2IgeIBSKqqQ-z6y6O4CbVjyXtu093vmw5vE7lSqFDIRYZzCCvPLTEPjZovMYwiSpHOLaH8uQp0cBE6PBL41HpASO17OORMjQRijYDw8DZloyAn6I5bQts2Y1ElIyN9EF', '2025-03-13 19:46:55', '2025-03-13 19:46:55'),
(657, 'https://fcm.googleapis.com/fcm/send/dDkIM46weM0:APA91bE3iNM9M-4pwjwufC1G4IOsF55ejs3SrymskCMec3ITCmo-SASKqUTysBHL_eUilzee1eb210KwKACXTMBLnXWDUj4nOCMly_Ybkad-o3DZyUgL7AaYHOQ1-tqKsCf1CAi-7bBt', '2025-03-16 03:49:37', '2025-03-16 03:49:37'),
(658, 'https://fcm.googleapis.com/fcm/send/etFkbTLN2Rs:APA91bHn0QXtI6VGAB45VxAKMi-geQFD8qjK2AGNjepKIORGr6525nrq7HfUVl-eqCd2wWORMP1_fKRYqwyRLAUUgOw_BWNrOMJgYgqJQEwhWEIzM0WUtZaxuBAKdoQzDLNtNRbMP1ox', '2025-03-18 15:15:51', '2025-03-18 15:15:51'),
(659, 'https://fcm.googleapis.com/fcm/send/cUWHI0qhUKU:APA91bEcuSDFqhkpkfVAva22UaKcmFHO2ccSS8qS1rc-u5Yci-arDhql-fLf2XC8p-ZiWwl1Umu38sqJHazspamscq2dqY76m8S49zajBDUQwE3Hz0IiDRUKVg5VK9xftLAwQ0n7b2_3', '2025-03-18 23:43:18', '2025-03-18 23:43:18'),
(660, 'https://fcm.googleapis.com/fcm/send/d63PT7SqtXU:APA91bHbkxAKGtADzrwzS3SpycLi-tswzdgA6BefpLptiIUe9j9NoSLFlk-h33j8-RlBY4oKA6jcOOiA1uV15fDk7RB0s7ER60xGVRkUU2E_T-_B4QNxnR4RydVZZEzFRQOlvgQkS4HW', '2025-04-01 18:34:55', '2025-04-01 18:34:55'),
(661, 'https://fcm.googleapis.com/fcm/send/csuvK-Rv2D8:APA91bESrwOyp90y_Sl6YkckYpoUSG9WbLnQWXLfdsw4VsoaTkW_C7k2Mg0PznMkG2yUFx4TYZxuMSrxWIFSl6kZoZEawZARRF4aTOE3ngk0GvP0XTLgZaUdesjci6rH9Tn_B7I6K0ou', '2025-04-01 23:59:55', '2025-04-01 23:59:55'),
(662, 'https://fcm.googleapis.com/fcm/send/d9SRZJXGIkw:APA91bFJnTFsApq-seavFj-WEWo9sQ1fm_pDUxvt0LMZvY_dGAJPIPcUZ5exXclXsjYtPu0ypgAG_VetmTDxxrBAU-9pMEHCpVOZPUqNZskaLp11GkM0NG3anAlH6teb8v8G05MLvONK', '2025-04-02 18:39:54', '2025-04-02 18:39:54'),
(663, 'https://fcm.googleapis.com/fcm/send/fa-HR8fMBkE:APA91bFfHAZJ-4uobrKaJ234e-DE6HqfZIFv4ZYDYSQ42gW_RjLYwDRv3-C9yrVq7eokccVa23kwNPZeLk2FHGHsxg7LZPjcy0A3KZXbnCpMSkt4LsOJ6YZAtmI_dsPLWGG6cpTbFFVr', '2025-04-02 21:31:42', '2025-04-02 21:31:42'),
(664, 'https://fcm.googleapis.com/fcm/send/d0-G-UwaJpc:APA91bH3CWrqG2CMqdkxcwAvPk8xz24J6LHay8RRSJHubA-4iVhpAQuHCcXcuyaX5D30JKWUlJBQGeVS-mhhq2Uz6aqLtuvpmG_pTtiWLbpjpI_ggseTcDF-cMLxwtdRuuLKZ0EKZedF', '2025-04-02 22:52:13', '2025-04-02 22:52:13'),
(665, 'https://fcm.googleapis.com/fcm/send/enjvBLKKEaU:APA91bHLEAL6czvNftbLW8CFV_Itw5FR_Y4lGQ2Jq8qIyTfCcuS3gge923rk0dXiXQoZ5NjXbZMdje47vHA3cXa73ZGhqL_Siyb2pBI6xc8DGqCpOrtVAB2AcffH-1W2pUqXDRPvLnzC', '2025-04-03 18:32:48', '2025-04-03 18:32:48'),
(666, 'https://fcm.googleapis.com/fcm/send/e-qcszDYy9U:APA91bGrvLARHunhcV7ytY6XF8uc8pAB4aNwfgnxoW5qQSlBdLwye7gDaOWePS4WJxxe2_BN9aIt6qtUb-KYK8efK1Gdtu7eImQU2ZqFS9g8pN0xhmvsSwAuWfKLC3mwBgJs-nkT7wTc', '2025-04-04 17:49:41', '2025-04-04 17:49:41'),
(667, 'https://fcm.googleapis.com/fcm/send/drYkz7xp-KA:APA91bEYFYHGel6C82JtGdequM5Bmm-lE1Oz7TiWq8KGpoDIWdEC56cirWXgRRn5X-X3zS6GeHUqsJ_7_iy00u4328ZIKwNrzbvYz1iMNmN3tFBhGu_aJ0_3HRwjYRze87lqjxeZJTol', '2025-04-04 18:11:27', '2025-04-04 18:11:27'),
(668, 'https://fcm.googleapis.com/fcm/send/ekmn0TJgBzM:APA91bGlIZ5OkEBZV7q5Ep6nmUpRRkphIzawyIgQiTr6h5MlX5OPCqRJoDQDnXHWyoZh1I_HrfBa8kHM2hyKESPQKaL3HCqyY9sT06IlrAgTGg3iVRLL4RHY9HoIYvAzB4iM_iO4gtDm', '2025-04-04 20:03:31', '2025-04-04 20:03:31'),
(669, 'https://fcm.googleapis.com/fcm/send/dB-DuKtkCl8:APA91bHYqcYmYUiVRG5RvghUMpdaeDGvUU5BQqSyJcv_AJDE7i-bbARg00fCpHKifJ7dZdheLataU6hU4qK1MyPlCKT1jNZmENQVj7IyJKpveIQe3W75gNwVNJk0hENVM1h4VSJRBF6L', '2025-04-05 18:26:52', '2025-04-05 18:26:52'),
(670, 'https://fcm.googleapis.com/fcm/send/fvAjoz2yX6Q:APA91bH14c2d-LknDA4vrpiJNp0M7Ow8Zjh-VfOd3s-iwLuhnn_EinFgJX2DIeFYj245-I1DgpgHfmEVNTm95Iw3gidI7DCnpQHa_4xm2ti1_LVkH2nYCGh0xXbtTLEYz1F2fkebuh8L', '2025-04-05 19:25:11', '2025-04-05 19:25:11'),
(671, 'https://fcm.googleapis.com/fcm/send/dr845GS_FMo:APA91bEChSTwYJVdUo7-erL5VY1-wFjW-CWwa4reUtPJ2-eAWt5lfpcNDhc4xaQeJc8wxs71w71WWgAqDg7BeeaEfchHT6JfbQ8GW6irr-X-ulyrg-zuVEE2v2d_Cp89pdoK5HFhwK4e', '2025-04-06 02:39:41', '2025-04-06 02:39:41'),
(672, 'https://fcm.googleapis.com/fcm/send/fbkBbyjQIsE:APA91bHz2beRWGvipoKw7SQHWlGRvYNfpstYE9OG76tST51lmMNAuwdWSDAQLIupiGQ8e0guduHdo1pKnXLorJjALhcJFNeunXbPZD4gz56PDwNjiPYHbVAVsvyb5wOx-hXYWyh-1wKw', '2025-04-06 18:10:23', '2025-04-06 18:10:23'),
(673, 'https://fcm.googleapis.com/fcm/send/dcUml9-7YGg:APA91bF30AEmIjqTX6KOboreD3YTu9CN3sIGCaRYEU2Z1UIhICVisVlvWiJY6wBycbjQYohStd1YLq_UJLqwMjuV3JtnrK8FexBmi5IuJnate66ZvNtwaN2uOMAuff0KFptKv0ceuSy-', '2025-04-06 22:51:56', '2025-04-06 22:51:56'),
(674, 'https://fcm.googleapis.com/fcm/send/drgS_2wmsy0:APA91bFJXsug6Jhw9h3B_fO9ViFLaSv9qHoE2PrZ0mVVSt-jau3dwyai_MxGuvnQ9Aza2jzlcy3-BOvYBbTnai9xEiOGjMiTJaCedk340ZRCvwQfFi8dTHP9j0NvKwobbVUs2mPAkRUd', '2025-04-08 12:06:41', '2025-04-08 12:06:41'),
(675, 'https://fcm.googleapis.com/fcm/send/cjCsKJnhQlA:APA91bE8u03oDC06jKa651xmPQAyA95g0DrFB0wANDUDDGOjxMP7UR74f00-OVfuq6T4ApkyRmYTxXFvS7QDUtBBMfdFWFBc1nCofzXfn2dKli1Wfn6ESNTaDIAWFzu7l8gA_XvJNDIV', '2025-04-09 20:09:34', '2025-04-09 20:09:34'),
(676, 'https://fcm.googleapis.com/fcm/send/dbXe-LoILgQ:APA91bFTBcXIWIm5D9fd7zgzh5R3rlSieLoweSMdW9qMNMXahC0Jc7zPRyG7x6xeAYngayaQ2hKC7857iY1fJOxpdtsHN1PzDJHtpD20K3SEvfBbQoKY-dkopoqqNqu7PO-1hdWhO6fz', '2025-04-10 16:17:19', '2025-04-10 16:17:19'),
(677, 'https://fcm.googleapis.com/fcm/send/fXyLJUFgZf4:APA91bFLZiKOCUy8Ejrh22bsVS1XRp_ghDHzAikNTPmjCoZNmroAKOCEl8mWOSsLoSm5sebfF6UrIeoSfGLYdeca2j16NZtDedjCO7LG5owhs_9zEjRXeP9-Y8wN_coDHsNcfRbE-asA', '2025-04-13 19:43:03', '2025-04-13 19:43:03'),
(678, 'https://fcm.googleapis.com/fcm/send/fPw-xTUKpAA:APA91bFWsy-OmX0735hC-mfxu0G19nOYFLirS2xhkl90RLCKxE0Smd3ovXVT6EZaqnK4MyPT6YVfzgF4hsbKV7WGoPUo0DYd7AtroamKHqF1vPaD9C5RnNQW8NPxxG8KroJeE447Y53S', '2025-04-13 22:58:08', '2025-04-13 22:58:08'),
(679, 'https://fcm.googleapis.com/fcm/send/fYTN4yOqCcs:APA91bHqO7OZ2RZKvlEmvh3C0XdKYmqNwU58yRhuJh2pz1LUA_1uaBJhRHcgcyMrBOYOFXwXKRwXxxIlrbM5_1qf1JIbS9_G5RvV69ufiChVZWaR8Pa_bx0NhntwMDWe92RZdZNshPDh', '2025-04-15 07:02:08', '2025-04-15 07:02:08'),
(680, 'https://fcm.googleapis.com/fcm/send/fz6KC9Q809M:APA91bGO0fHbTyeNZKtAD8cWggVLfrmwweZ4dMnJZTX4DfCd-D3R-ELiQHCes2TWCN8t1-JJQDeuMt2DoWpv1ey68Gs_XNw3nM5vieLTyDjCwio4_oB2akmG_vEwyuEGjbdklMRLg5el', '2025-04-15 07:09:39', '2025-04-15 07:09:39'),
(681, 'https://fcm.googleapis.com/fcm/send/fzP0td4Q2TM:APA91bGpQwtT7u7-4bYRYfHBqH7Q3F76WWYn_ViRZVvv8jlNQZv2yZZ8NqR3HnTPmrlwwg0HYgIg8vEgFA51EPja6mQq0BgFpdLgdcIVEbnLwz1rX0ZWCetVLuT0XN_cxgFT7ZVYFF8e', '2025-04-15 19:31:04', '2025-04-15 19:31:04'),
(682, 'https://fcm.googleapis.com/fcm/send/cm-pbrrwfgA:APA91bF7hsHlY3DibtuyM5NCvXQFpZWnYD-OwHeOhUIp45xwxB-AkO3YjhPQDuyZG5ZxiwFLqeT72sjZ9Gg0LGwjpnxwNdLYm3AAAiCMTA3N6IjG0EReXPFkLklaoeDnBNJUgLfRQiaE', '2025-04-15 21:50:15', '2025-04-15 21:50:15'),
(683, 'https://fcm.googleapis.com/fcm/send/dOLNDA_hl-c:APA91bF5k3RWq-5Qfq9bfCN8V2gleLI3itv1ak7Ht_c2a4Y3uoVH92fg2pwSnTBVKwcRmardlH0k3P65dnIDHUnEaqyYLZif4lRdIFVUe_teIADU6e5dso1YGVTJ9i9P8Zy_cBGVenDr', '2025-04-16 02:47:26', '2025-04-16 02:47:26'),
(684, 'https://fcm.googleapis.com/fcm/send/d9136axqUuU:APA91bFknJ88vVYjrwB-LtXJ39lPz7YnJYwiP6AyCflyCy-cwWecfIkqhD56OLjqZ9mOal0nO4o-bNOfQ_ApmLSLCHBWjhF-Crr1y2QNJTVGMIlyo6n136uHHWgpaRAS9I9FW79NTMv3', '2025-04-17 21:33:20', '2025-04-17 21:33:20'),
(685, 'https://fcm.googleapis.com/fcm/send/dy7NlUD_Zn0:APA91bGo1nN-5GYvI3wm_Uf5W-FVLSg3X5ThuuMgPpMeBPUrLeSYKLFXZ7UgK-76ANv2Mw15n4e5OmU_lt_utcD2o252H9uYs1qtoFeRM6GBiAaOQBzbNsSlqTNvEtfgxR9b1yCDu9XQ', '2025-04-18 17:23:19', '2025-04-18 17:23:19'),
(686, 'https://fcm.googleapis.com/fcm/send/fXNwzVobt-E:APA91bF8ZqArkKU2QSICWJnc_ghYdDyWIw1ZYUt3Fozw9348P7ZjjERgctwf0E2WgSNXmGqxikny8SaJc6SexXqaGkOoKozr5h2q0PNvfLXFnZvHOwMKhjH44ydLMrY40S1V36vCIpqs', '2025-04-18 20:09:42', '2025-04-18 20:09:42'),
(687, 'https://fcm.googleapis.com/fcm/send/eyPPQ3NipuA:APA91bHt9qknMqay8NKt3rhbqVcymq8y1_VGanvRXkNkY4Oo2Zhi9RGWrSbwcjyZh4dkQQZEsmmC0Q88UnsrXXaL_yO-WpQZsoFDxb_n7fKwytCJ1K2wTRBmKkO4fjNdrowRqdqccBT2', '2025-04-19 20:39:53', '2025-04-19 20:39:53'),
(688, 'https://fcm.googleapis.com/fcm/send/fWQiVUNDQQQ:APA91bHlXHwo1TJnKXMXrQRjIkMwslcVJDXBOlgdILIMRK7oG2VPY2h86JDwnStnSABokIir_OWNlXn-CG7RFS0NJdJPUvUSO2mM8vKEwvqaAwiy1aMfcujXZzokU9fqtWXCmgLv4xi2', '2025-04-20 02:59:36', '2025-04-20 02:59:36'),
(689, 'https://fcm.googleapis.com/fcm/send/fbJ5WnDrVFQ:APA91bFrrLchcJY3dRsniJVABxdTG93LBlrlJ1cIkKAD9D1Kr1TzguuWwf0peBgBOQzbqz1nWtAZgTBSZ57_96jlmC-OBFkkMrmL18-s2kTx_pv6anzvOxUO0bwv92mZoYDbTgHH0Olu', '2025-04-21 21:17:33', '2025-04-21 21:17:33'),
(690, 'https://fcm.googleapis.com/fcm/send/cbQUrKTvBZY:APA91bFrLGXId2snB7T8YHMHatvKsSvOhnTuhWzmpBiC9tzC9QPNvYqZ3OdhR0xmrZKC5a57N8B1UwP4Nd4cOLAe5hahbpCphcpK0chruwH2pgmER6p6rlMwQ_BczkIFH74C51XulWjN', '2025-04-22 06:50:30', '2025-04-22 06:50:30'),
(691, 'https://fcm.googleapis.com/fcm/send/c95GF8zLCtI:APA91bFcGtbk-pAc2E0gjwTW_zhdaJgDOQHpUA3WtG1WAlTWDQ5ktbzvioyBXy6JlFsfpy7T4dgNXuny2KdyX9AjMqME392E4P-guBpgkpXcySfhyvMW1DHjf1JTUnmepRQkH9KU3jT8', '2025-04-22 06:50:54', '2025-04-22 06:50:54'),
(692, 'https://fcm.googleapis.com/fcm/send/dKjKMoxfK-U:APA91bEoihDgHRt0ZKDBZxUGfKu1IhVujoaqZnc3QVy4fNC-40mSXpSAMnkGu_sZ90vwPASnSEy9Rd2meccnnlk2A7HVbavt9aR8j0d7oIYl9AUp_k_nXE1Zi6CjroeWHYAN6J10b7ln', '2025-04-22 13:32:24', '2025-04-22 13:32:24'),
(693, 'https://fcm.googleapis.com/fcm/send/cvvjJe0BNgc:APA91bEpCmiUp7Imsye_9JuIlGry5xjtxbcqKhlrKI9gXgKp-9HGZO7awTQ7GWfv59GYFo_0lQ1tgTj67kxofT9IDi5McgB7d0r6334BCyaohEqC0Okoq5kJ7Jeua_os1qjBXjzHRm9x', '2025-04-24 19:57:24', '2025-04-24 19:57:24'),
(694, 'https://fcm.googleapis.com/fcm/send/eeiud89i4sM:APA91bFqB9-rEWNCKM1SEeIkTN0NeBk43bZpS7lE3J8u_rtFsz5NA4gtdwV3t-vzM_qr51gXl7ED-5mnc9nHxM1xRTYDxDaKbOGGQwYXDH_D8IheSNbJ9wDszJpMjapHmv85V-aFvT-M', '2025-04-26 17:02:23', '2025-04-26 17:02:23'),
(695, 'https://fcm.googleapis.com/fcm/send/cHvY1q1-pZE:APA91bFCWH3ddity5D6ltN-yZ7tNgbvq02VS8FByD2_1Vd_NENVTTQAtRmEKSOpqdgEFWMsZ7WpMn0_8UFiLwbNEnx9vA36WIMAU0kNu6acjJKsq_P2HDv8ABxvfQidMfgJy11MfCte7', '2025-04-26 19:29:01', '2025-04-26 19:29:01'),
(696, 'https://fcm.googleapis.com/fcm/send/dpvaT0jjVUM:APA91bFm8iwyX-wvDPmgl4osfghR6j4Gcf-Xhi_w2e2jOwHXRDcguHDce4-MidDsZf0NGOIXM9nfGwH-c0LUTXDRu3YL8Yjzua-DQZGy8zCXi-ItzM0uV1CM_7fh1ne5PiHfnDLkooT6', '2025-04-26 19:31:43', '2025-04-26 19:31:43'),
(697, 'https://fcm.googleapis.com/fcm/send/fPlTUNxHAXU:APA91bFhj_WaHdUpDJX5fyrm6daYJQrWYLoe8sV-6hn-7ljeFg-RPRs2PyaiPuh2LtxSdRwY60XrLs3XXefdRSrZz0nvzJcU_zL2OSz_0xgNN-BRxgAz9fgbIeFOIDJwoc24S5J_k4yt', '2025-04-26 21:43:25', '2025-04-26 21:43:25'),
(698, 'https://fcm.googleapis.com/fcm/send/dvmvyaJL86s:APA91bE4PEssMcxa4-4YQO8NAtHI-necWbcDjg3ZhpZsWqDtQKP-GdFVko3ktFx_auCwC0NitOVqYfFSN56zoUH-28laQ3JoXpMC5ZK_LmLKKYFWP0uZQzOJWmJdmPMqNsO04eQUL1z3', '2025-04-27 18:27:17', '2025-04-27 18:27:17'),
(699, 'https://fcm.googleapis.com/fcm/send/erpmcNPWl3U:APA91bGw8uG9bQhMAoANSvLYFDZx9meqkMGrNTNy6CxXyrw-4PYnAjXC1FEzVPn_AQLAi25X2ppfuaoZvNeEKA4RmnqCNyNr8fG-8-A3MxFuxRgWtMumvihQjxzj3tBtBx0Y8Uf7Kdco', '2025-04-30 16:14:44', '2025-04-30 16:14:44'),
(700, 'https://fcm.googleapis.com/fcm/send/eBMPRyWrxwU:APA91bEuOFfUvzbraqrNQy60mQ0aY_Qz-A_wwCvxT6qP19YJwAYpjddi5dcyclDuiCIVQKPel7OUQHz2UJ761YZs30yvvaGESo7Rzda4qddsMgQnvXzkTw97H4yHKLnCI_554CphVKyl', '2025-04-30 21:13:11', '2025-04-30 21:13:11'),
(701, 'https://fcm.googleapis.com/fcm/send/dZHvCdYbHqk:APA91bEMLlrkR7KvWbCP18APrL4rXuL9CubwD_cMnB0znLURRoiDl2EYpvQUFyJY4gYocULPTvUW7NG_Qtix_7wwQSaMLsuIVqRHH2qMvI48VOr1kLjcqJ1vNBcL0CMC27-CKNUH7Gej', '2025-05-01 16:22:25', '2025-05-01 16:22:25'),
(702, 'https://fcm.googleapis.com/fcm/send/fbakaKP_D9U:APA91bFohkRA-uoe0N-Y7TnRIuarZQ9u2YZ4MK8ypkkZ0uKO_pN4msJi4EL4XtAtexND8vlqyPe7xojZTMTQpaGOgKGgeUuDuJ02WUwdmwIaPWC_oedZ_PZ9pZ0QmSenECE_zEVzh8tu', '2025-05-01 17:46:15', '2025-05-01 17:46:15'),
(703, 'https://fcm.googleapis.com/fcm/send/cyWptqv8uIg:APA91bGUuuWSCCxAgTA0ugTWzpa5OLGbS9AmR0d8MgRdUODDTwcwnKkalFJzlMIuyOXp2SB2mt351dJVpq8dhT9b3aUhmw9JYLOmnhT1w0hK7nWS3vjtKcUy3t9QLI-lg6oGUvu_1T6C', '2025-05-01 17:46:55', '2025-05-01 17:46:55'),
(704, 'https://fcm.googleapis.com/fcm/send/eyZbwIEcvKs:APA91bHGC8HLHf0SWxp1c5wa-0YJpQPHajR_PzT9WG0exIAQlDMpWx0GxcPGXJ6vKGXkw_0t7cCMTzDFsM4C-HIokJCsHe6WZsXlqnpvcHTPwfHw_XaNeGtx36LSQI2hcEdZsi7BOEEB', '2025-05-01 22:34:06', '2025-05-01 22:34:06'),
(705, 'https://fcm.googleapis.com/fcm/send/dkPeBfauxVI:APA91bEUZlbrcXSwMHksrlePXYFK-qPsDI6e5X9ysGO_1Unnh6cN0hEmx5pRD4wlXATol50tWv5TPs_IVfpfVWh8tiJ9UQWRNBgYDzYOHPhcC-aaI0o2xGS_kP5gdmKZIn0BYokZkdDN', '2025-05-02 15:20:46', '2025-05-02 15:20:46'),
(706, 'https://fcm.googleapis.com/fcm/send/eFSqZBuc4bE:APA91bFk4bcA9ICDNNNBpb6Ygrt17NQlUm2O22nqgAGvSFs5QwMRZ75kGPWyEe-1vBzDrDUUtV8iAnT6eC2kNDTvRpx8BFTFbP6OSDzNkZEJKgTpbuDTm70hrNrQF2-Pr5UKAvdl096Q', '2025-05-06 03:30:00', '2025-05-06 03:30:00'),
(707, 'https://fcm.googleapis.com/fcm/send/fvF_TlktwUc:APA91bGsBBCOzWzrGBJNg6bKZlWGIk_6gVHQvKNMYXlhFbGviPBHbcOV0gYp3dNaiOPKzEdHKGyUbYOS8FZ0opuDR6luWsEJQj64Adx43eIS1goYG8Xs-iQ2n9-JneN8wblFVk9fjBHs', '2025-05-06 19:06:34', '2025-05-06 19:06:34'),
(708, 'https://fcm.googleapis.com/fcm/send/erEX-VIabWc:APA91bG8uzX6gfK3XHLNCxxxuZeLKL4OoD3FfkjU-8izW_gY64B-Fdw-zEawUPhBCGLojy8t6j4ZXToKPOtkNtzMWnE7lHiFuyqPmi5zZo58DqyFE4QkFBbRPbTZq9SfVdmPTWpS3bTG', '2025-05-07 02:30:07', '2025-05-07 02:30:07'),
(709, 'https://fcm.googleapis.com/fcm/send/fMrr57sWzmM:APA91bHrif71GYxFcfSLZfrdTcgwBDCQeaAnnS7JB3HgJi4ZwABS74XHPMHoA-_9D_Motkq_PfUjTlfVlMwyQLdS6cDlNoMZaApyANMX1aleLC8aS0EiSt2AuQMZCfSBjbfHcVRIidYL', '2025-05-08 00:44:38', '2025-05-08 00:44:38'),
(710, 'https://fcm.googleapis.com/fcm/send/ehLkeIAwPQc:APA91bEl0H0RvO1FmMOIkFitMdfWwSkMJRHhvml5tD_IsQgGDxz6sehiOXLIt2sKNLIjXLY20E5e9r-JNpFYJrOOiSc3yooHUcj20IeXnZxPNKFzWcgdM4VZGVnthQPCbd_gtf6a41ZG', '2025-05-09 19:50:53', '2025-05-09 19:50:53'),
(711, 'https://fcm.googleapis.com/fcm/send/d40fhPHjm8w:APA91bEJ6xS9LxEV1dlupBKC2TRwUIX5jifgQdP5WhPcB2nyfn36KJ6QLERpCyNCJl6xFie9iVKlTCGs9ylYiEwqwuIt6InDURFjNpKvn6RDxbEqpNfVoAuEFfih1jlHWViJ037Lpk1c', '2025-05-10 00:19:11', '2025-05-10 00:19:11'),
(712, 'https://fcm.googleapis.com/fcm/send/dYAm1I4Y__k:APA91bEhMuG1EevOcXfe2ttzv8P571UEUVfgWj_UfUnbHvwkb_SD0wYTb5kCbz9PhIqBSUlTupajUfeUGb6adrGLtrbLLxLMti8hlCk5c71jZAFZBn5eRKhpi1_XADNa5WUoftGGuRqe', '2025-05-11 06:10:03', '2025-05-11 06:10:03'),
(713, 'https://fcm.googleapis.com/fcm/send/f8xL4fVv6f8:APA91bEQpOdE8EnR-sTpkCGaVc3xauRQMhxA2TcOQwpfWmNaJZmfrjvTJqsQQR-R5mwUarQaQ1GrJ9VD4bwiAbW-HOg3uAH3JO3zwGmYjrcWsFN60AbAg5Z-f0yWcf6MAqnXMnqulWv0', '2025-05-11 21:04:32', '2025-05-11 21:04:32'),
(714, 'https://fcm.googleapis.com/fcm/send/e4H-rFhYO94:APA91bE5cpOlbPMPdyXXpSyT44jSt_8fZUJnqZE_w3Dj6zGECqpIgmQx3u05IeTqhewSUHiV0ukm6I0-M7kA5P3K-7uzKKWkrgnY_6SRViOU_QJ7qwy8HdqQXd4nbSrhmxcvfrUoVQJB', '2025-05-11 21:09:01', '2025-05-11 21:09:01'),
(715, 'https://fcm.googleapis.com/fcm/send/ejtKX-vjoco:APA91bESxzodLqMjnv7QyQTuWUru-SAVU-7V5lFm8g33BjmVP1Y_JjWlKOtcCjKdyrLCZcvhGQbjO7iLrBQq8HB9L-gftl-ayxOTPNjB71oFjEtkvOSN0M8RAe84R3A4Yvk7pN69r8ln', '2025-05-12 19:43:56', '2025-05-12 19:43:56'),
(716, 'https://fcm.googleapis.com/fcm/send/dIC8YAjYB2k:APA91bE_oLqoCjG1dP9jGpkS6vbcv9Wm44aSsmhxxmu7pSAHB7gtmJ-t8rCVx5D_z_YVdtzYXI-M2xrVthmVtTygTQqJs0dXv-XnxtAKDLF2JlxC780s-pc-2hn803PFU5MQTf2HjCmX', '2025-05-13 18:40:13', '2025-05-13 18:40:13'),
(717, 'https://fcm.googleapis.com/fcm/send/fuXF0UJCfp0:APA91bEUCqiVYlJpA1_9alzd19HJC8zGrLbpLLMVBpOhZNX32f_kDQzFG1okgzvm5J60EQJbJtWi1xbz9I6q85Q9gm7TVu4eR6YKMx6pq8JKKqboTORAR_7P1LXZiZgVwKa1XMm94Nwl', '2025-05-14 06:04:41', '2025-05-14 06:04:41'),
(718, 'https://fcm.googleapis.com/fcm/send/eB_QUBzgEM4:APA91bEFXIJAf-gelxUSX_Py0UsVSXsl4fSAfDUVpyqMbC3xHtFJ1TXxoLeA7KyxY5-VqqFz38cF5pMpEvu1YAJ4mdQ5e1xQRH_mN4TfRruA8UrXaNEPYtyZ8ndU_1DggwjGrg-8AMAO', '2025-05-15 17:53:12', '2025-05-15 17:53:12'),
(719, 'https://fcm.googleapis.com/fcm/send/eGuln8iOP6k:APA91bG7QncILcu5z4iUP8RBZFm0hV4bkRUoMHvc43lY-hqLgrV_zRVTwxL-g9FFxL0JN1cft8bT4zhONLpS14ayuKKt38tozNCgYbSH2gKi_l-7MqYVphTenGXx5E4tVx_8I9g5CWOK', '2025-05-15 19:58:08', '2025-05-15 19:58:08'),
(720, 'https://fcm.googleapis.com/fcm/send/dhsSLvCRynI:APA91bHB_32YzPybjoKuOg5fpNfOAt6jiXvCW7a8blwB_7kNb1tZ9RYHRsgdIs-XXq_vdaIdRlyv70HGjX7pEdEHQjUqcauIqw5MzPyslXM_XgJ7eat2ujEXneqczGE6xKmcTMc6IBeG', '2025-05-16 21:13:09', '2025-05-16 21:13:09'),
(721, 'https://fcm.googleapis.com/fcm/send/eSYpxLL07v4:APA91bGjBm_frMMoFLGPqncbWquFitPauRVDs2AvW9njlkCa-pyw7gGJ6Rabu-vnOkAbHrDxlURK9jENx8p0zdtgGZ8mDJCPN5NXirHLYfzxe4LdQVc6nU5tOP_R45EOBwRnwY_NDqmE', '2025-05-16 21:33:12', '2025-05-16 21:33:12'),
(722, 'https://fcm.googleapis.com/fcm/send/eQ_zINreEsM:APA91bFlhm1QqO08_T0KNNoXnldopaXUyGv03VBIDO8-R4alvNc20F9Eb8zSYY4tnkRuf5pMKuKkPzhnvRCUmeRv4_4nlaOfgy0WV0DQlV6coCTHhTGrwyWookw_Cuu_pbQ1PPCRuBoq', '2025-05-17 05:36:35', '2025-05-17 05:36:35'),
(723, 'https://fcm.googleapis.com/fcm/send/crnaHONzCnA:APA91bFYt_0KANcUoQaYrw5ExCyq7SM2mptLeAIq2OUcyxybmKFsYiiN_1_MVTmPpL-Y8puBcVLEEZIBwPp60uedcYNLwybdCRfqsq6PRX69WjX3-kPZG8dxyy9QWakSot6Xyt4Bvpj3', '2025-05-17 05:37:25', '2025-05-17 05:37:25'),
(724, 'https://fcm.googleapis.com/fcm/send/fPxl_Xdvg4Q:APA91bHLepBGfPQZC3CmzzHVBS5-ffk5i5eKSUr8fpCgbtsONTiK7FZp3gCsF9H57wlgJKqCuLrPzjE4SW1KcJRaC2X15Oi-eFFrSeyawJIcg1hBP-ZrH9igpR9vMZZHnvos8C3p2NLS', '2025-05-17 05:37:44', '2025-05-17 05:37:44'),
(725, 'https://fcm.googleapis.com/fcm/send/eVM_BQ4nO2I:APA91bEwDgl3Z58DOIE5GWQM95oyYI68S93eGlOWLGf5DgOiUg4a-45T9ZCuaXxcIMGnBcNoF87JWxKnS8vqK5hiCPVMGVHfWv0QItX5eOy8XfH7zp66b6IffErJsu-yDcv-WsGsLuRw', '2025-05-17 05:41:06', '2025-05-17 05:41:06'),
(726, 'https://fcm.googleapis.com/fcm/send/d0qHauK682U:APA91bFA4yRxaMQJAu6SXm6vK1Q5v4AJpMX-z4PxVWE4qWuz1BptsBZwV-n4X_c9P3nvw_Jvz3Ji0SoRYwwa1IcIzf63llrfspUmPe4FEYBSTNOWLPs8YBmOI4pjpeqUn5ZkrMa_Xm5m', '2025-05-17 05:42:42', '2025-05-17 05:42:42'),
(727, 'https://fcm.googleapis.com/fcm/send/fkA0uEMBb-w:APA91bFh2baIOAGbthHS0rsiSCP_FdGM4EXXA4gfFWxLetYZmdIF4_sOmK1AfGBIordiJYMivL6ZPpwooStkq02zI4rp888UofvI49OrboFZav8SiXsvIVSWpp8egYaAaLEC9Yl5qpT6', '2025-05-17 05:43:31', '2025-05-17 05:43:31'),
(728, 'https://fcm.googleapis.com/fcm/send/f-x4scEqVyk:APA91bGnEjZGoP5idoS84H0FHtdJA5yInKKWnOahrkW2Gm5KIGBQSDyCF3ECuM7aSBwENdS0Bv-D0W_wUTRJq8sxFhSl0lhs1kk8ImW7kOCqBeoiVtogq55NNJPfDIdV9wyX0ZtKFG3I', '2025-05-17 05:43:53', '2025-05-17 05:43:53'),
(729, 'https://fcm.googleapis.com/fcm/send/dlq6pKTiK04:APA91bFU9-63LvYDR46yMoIAzT-QyabQoZ0ki5tMfSi_Tcsa7BsROdNdJ75pflqFYnRN9z0cJIWzSlbmNrwG9fak8V8jSyy5AAMuTMH7jdHXzykNzK4IKFzRTooso3FRJrKjDoOanQuu', '2025-05-17 05:48:41', '2025-05-17 05:48:41'),
(730, 'https://fcm.googleapis.com/fcm/send/duv-2i0ya4E:APA91bGJ3mUE29vRdbFrUjtvI5hBARqw9M1N3Uq7KRsMr-I5TuoSiPx7s00i_QE5rEDe4ulhxB13QXPoi3gYOTPABxBZVB-weVFnXf6-PLcce2cFxwlmt9UsYtgfNH6vSWlpsy0m_Xle', '2025-05-17 05:54:49', '2025-05-17 05:54:49'),
(731, 'https://fcm.googleapis.com/fcm/send/fxVrz_ZfTus:APA91bHc_mrSi7mfWmCXVjX35As6Q-t73IReHdR6_VuITveebTzkpIP-XFthZOwZ--o0xh9EQschfaAqnHblU3jEQ7Y7T0kLz-TfS0PLvCdVvR-8pWIbhDoiB7fEgjiVViu63KXKNy98', '2025-05-17 13:43:52', '2025-05-17 13:43:52'),
(732, 'https://fcm.googleapis.com/fcm/send/cgRpfsxCXP8:APA91bFRDM_nhVIlxATsNUs1kuR0O9h_hkTIebG3BfRjDnosrw4QpNQu9MBmz_QUWioUKQ_2Qh82JSDJTvUn34FCWsBzMHayx1qex72TxubnA5_0w77Fb_4aUa-Cvc0Jq4QEn23ooX33', '2025-05-17 19:25:02', '2025-05-17 19:25:02'),
(733, 'https://fcm.googleapis.com/fcm/send/eGRhN6V0uYs:APA91bE7cWqQw3sqQi2vzkwa56TA8FSJGgddKiVf_5Lix6Juifjhrm5jUWvawpMyLmKjdaxkgsAGyGu-TqTNJCPa4SlZiUHsD1OrXYnwKthshcBOgxpAn2hK6VHLSQooShbLtbcrNV2q', '2025-05-17 19:25:24', '2025-05-17 19:25:24'),
(734, 'https://fcm.googleapis.com/fcm/send/eOzsYBSsk3M:APA91bHnf-9BtOOyHVpJ345YTrvo_zasa3aqik0HZOcN6T9272wknJd-D0kqN_-V2OVWef69UpfP9X95TnWmmOKhlpWMWDBOeiihu_qg_q20hieq22amEMOoKqCQPBZoKY15HSCHWCy7', '2025-05-17 21:59:17', '2025-05-17 21:59:17'),
(735, 'https://fcm.googleapis.com/fcm/send/cCwcWEoufio:APA91bEgMj3kShrS4jz8K9ncu5DoNGhworL4mt7rfs_kUkb4DLK_m81t6g9sl1XiWphG5xxkTqVfYx-cXPAcU3MZeC4xFDmbaktgTx-5LuNR3lqoRwfQzcmqkSO3o0fo-G57G_Kfk5a-', '2025-05-18 13:40:26', '2025-05-18 13:40:26'),
(736, 'https://fcm.googleapis.com/fcm/send/eYFGR8wP_kw:APA91bEERpow88mYOMMDcL8qhiSdbUOnxKvCyXPu1B2XriPLkeEadd2ttu6lp91VOwmiWknnUXglDoxohok2bcpwp6mZB39TdGJB4LNI_XC98NdzirHl4Z5SPmiXg_iElTUsuEU0TV8I', '2025-05-19 18:51:34', '2025-05-19 18:51:34'),
(737, 'https://fcm.googleapis.com/fcm/send/eWLJ1ZxQdks:APA91bG6EOm4cx1tYEcFcIJKjh7xXdACiS8agrn0WOTLNGEKHpK47Z3o9TXDQT8V2mwkLhEVKI8FFeRYeSv8T6v5Pcpph_UirJ1ArwdZW6EYW0xczHZyu8t5AMefHQr7FHjVlIQ40R57', '2025-05-20 18:38:01', '2025-05-20 18:38:01'),
(738, 'https://fcm.googleapis.com/fcm/send/fdAsd17A6EU:APA91bH6OUM-DX-Qq0sMELRr6aww3ARE_OqOlZt2QP29Am0EzDlSYaj668Op4bL3X6q5LI2j0QilizS78C0L0C8n64755mJLogM_uyerJsAbvdK9hF0mjA8jai3Obe05dKVccmJV4IlA', '2025-05-23 14:13:33', '2025-05-23 14:13:33'),
(739, 'https://fcm.googleapis.com/fcm/send/fLir3lN8Uy4:APA91bGdZRqVDN4N4CWr2i3z5kqzFsHAlFc9e7-P_6mQuvegHPFC5M5g42-Vnr6_1jGYa06zPKG9BAB1mjpj9J5laPlJE4L3pJKgC9z7y5y_SCfItV8oGhR5JX8G-ZYFtvzwuK6gFP57', '2025-05-23 20:07:39', '2025-05-23 20:07:39'),
(740, 'https://fcm.googleapis.com/fcm/send/fJXH4FjY_XU:APA91bF57ku1eCq7hsTemPDVWa9EM0AgBrSjEZpeNPiAV3wSb3n5VK1h403D-3C2ilFjWuRpPJlg5IYQp4BrHzxc45z7EuZZANo1Q2AViuzV2YDuU6qD-n_FWNzdPBU3hzUOJ38WRCcD', '2025-05-24 13:33:13', '2025-05-24 13:33:13'),
(741, 'https://fcm.googleapis.com/fcm/send/f-I60-CZNr4:APA91bEVWvETdfHMkwthnOKG8uKQ4Lrs4JnNrEiB70-NHUqvZtjuedcUYdzUwmgv5h8ZktfwFXU3hGEEFf7ipANhsfLulKD-v99W4owWRESrHLWZwYpLqdrxHkIfn4IKGqMhds_JFNl3', '2025-05-24 16:07:10', '2025-05-24 16:07:10'),
(742, 'https://fcm.googleapis.com/fcm/send/cnNbJO9tI4k:APA91bFAOa1ohyv-6iMiz3-PI9b8mGrTrCLHLbztbzC7-RfcAM0UgxbIxQBvXbExvWoQCOiMF23ztY0gKPZhTyAW3yqRDa1qfu563G7aXQ_p3wFLM3V6QwvK3g5O11aj2MGBrY403y4q', '2025-05-24 20:03:47', '2025-05-24 20:03:47'),
(743, 'https://fcm.googleapis.com/fcm/send/eIrTdsTGq-U:APA91bHGTTw5-zJYeFhNt9YzW6wyuBzQ1-stVNT61519lvNEMfRjBpEM4ZgXv-Qv-XsMUOSjbN-nSonhU_jCkU1R9ZgipB67y8k86YeW4wvF1OTh-M3gyAq-5b9XXyNITpjFfCUFbkRB', '2025-05-25 18:35:25', '2025-05-25 18:35:25'),
(744, 'https://fcm.googleapis.com/fcm/send/efDQfOznUkM:APA91bH8KhTCLnOP4uNRmthLY3U6ozZdfXslU4a6TYocwda0lysiwN_F8bsUGKUt8EJ2r4ANhx0kxcGlALCtEKlczIVH65iW_jN5bGkmVFQY-IgAh6EuVXCdes5HtrL24VTRiDsOFKHx', '2025-05-25 19:39:04', '2025-05-25 19:39:04'),
(745, 'https://fcm.googleapis.com/fcm/send/ch_76tJE7vQ:APA91bHi4SYLz8kn1rfk_N7XagyzWb14ivpu6cGc610wiTfNJeP5rZ5XiMIiJDnZ0sXkfgEudRY---X8TdcLW9xpGXZh1dv01Qi7TQy-6zm7sUNjoAy8aydISATVY86UngdfaMfnlivi', '2025-05-25 20:06:45', '2025-05-25 20:06:45'),
(746, 'https://fcm.googleapis.com/fcm/send/d2UPUCY5XlQ:APA91bEnufUF4jYQBU_f7onAikFuD9vh3s89GcMqGkTqaM-ikHAhMfL15PFLfN8_1J76MT6MdVxFdpQfsaUoNqoTxjk0bRJXIv_FC5BLIMkrafpHN8KtIPRt1_sP7Un7BoHeN_wqyNNC', '2025-05-26 04:21:25', '2025-05-26 04:21:25'),
(747, 'https://fcm.googleapis.com/fcm/send/c3oLhkJZiOg:APA91bG1jRJKYA1X-3txAk_Zi0KbpmEo_7WGp8IUociL_eYkNRLAcj8wgAOWba5-yDKyTaK9KtdEnycPHQqg19rKYIKwOMCK5EihF_EskS9BbxR98i28eN_I2HmehZ2FQK9_W1g1qjI0', '2025-05-26 06:11:24', '2025-05-26 06:11:24'),
(748, 'https://fcm.googleapis.com/fcm/send/c5vMqpr0310:APA91bEZyOawdqFdMUbkD-8c5g6CkXgmbE50tkmVVrrJDJstG6NAL8fQ0RHOqpGpE8c96InSWWFqt18EhqGZwrE0IygFkSNTiR1WQMSGv_CRj6l58GrwhAGAkh81pD1BzxQFmjb7f_T6', '2025-05-26 13:57:11', '2025-05-26 13:57:11'),
(749, 'https://fcm.googleapis.com/fcm/send/dmJ9SmWJW2Q:APA91bH-EtmVB_Bb7vXnjI-cKayBhGs-XFRuxf8myRVjzxor9jGKZ1pQnzrmWSWLOLY68Dj9d_AUWKWV7LiZPAQS4pc0veUa87HCW_-XagRKMwnclGcf7zstYUe8vcB9Fb6ufD8f1Qcp', '2025-05-26 15:28:31', '2025-05-26 15:28:31'),
(750, 'https://fcm.googleapis.com/fcm/send/ce_hfTi2EnM:APA91bF9PFhz1b5TyZQ3101TK28GJ9Pq9iXoVpWsoajz43PUE18a563l47G2t2BfIRNPzouqeXXlgLzYa9-TOuNE4_9Blc41dr_ARJWbkHYl0V7h4XJMOK4dRscM5sP4qGLYbVP4NySY', '2025-05-26 19:00:37', '2025-05-26 19:00:37'),
(751, 'https://fcm.googleapis.com/fcm/send/fiLyDGWsclc:APA91bGHztavaF6ZxLFxwEcDupKl1iClTQLzoqNXy6RavEHk3pjfr2Bt4bELU_SjKW6VfiABxhAb4c1v56qEFa4fr5uzA0njolOtJySCkZ3AzY3eUbPM1CIp5k4wTLlEWI8gJOo82eDY', '2025-05-27 04:56:00', '2025-05-27 04:56:00'),
(752, 'https://fcm.googleapis.com/fcm/send/eWZFKwsZjo0:APA91bHSgeKXlpWien1QCC_oCrQOWUzg7f2WJBgJYZWINa1V7DRxu42jOGinQAVHU3ko95UUvjAv1rmfvjyUweY5hQcBamoPrD0g6go2MpaL1G95lEh84u1itIdwP3j0l09xBMZtogA3', '2025-05-27 15:24:33', '2025-05-27 15:24:33'),
(753, 'https://fcm.googleapis.com/fcm/send/fXyeHfgaink:APA91bEZUf5pBdkExp61iglDWI_hhg1yAXtN1nrZJrl9NV-HQtIxo1T6aEmA2_B2hxtn_VgPE7GeuJmH_FPoZ71NU7C_jEgzxfBUigPVUkr__bn0qgKXQnRUmLHq5qufjmAirHld1WN7', '2025-05-27 17:39:22', '2025-05-27 17:39:22'),
(754, 'https://fcm.googleapis.com/fcm/send/eE0ScpjqrXA:APA91bEhSeSMo4W4P83DSI4tip4SKdZI2GsLMt5KoKUkgsg9IdfoPNKBE_91lHR-pJvBMLgJTEOwPGsGsglX2lHSDPjT-SQ2JO3mTZ5G5qsT_aWLYfByGQlAy94jMPA2bEGb4eN4UXVf', '2025-05-27 19:33:37', '2025-05-27 19:33:37'),
(755, 'https://fcm.googleapis.com/fcm/send/fAPGhlPAq0U:APA91bEV1tCAJnBr8aoHVsYLSrE1VLhaEyWe9VGuquRXM5dYTI1udMwYpIDqRY_8Cj45HHLenYhdpH8cvDrz-tmtY8RoRAFWLsQL0OQNsgTMOLpfAfcQ4V7LuCDIlL3TUhdU8ysnQ0R2', '2025-05-28 20:10:47', '2025-05-28 20:10:47'),
(756, 'https://fcm.googleapis.com/fcm/send/fHsKcPgndYE:APA91bFQqeVW311DEUrsH9oT4WAZ2w5G8_7TTOeE3XCcpL8IgEF0yhRNTiqBsFTdmQg0_BaUYC1yyEuZ_DxybyMedaw07noGz_F_p9bflxdnot5ZXuaQdFgf7TIernJAY1O35Vv9Groy', '2025-05-29 00:39:54', '2025-05-29 00:39:54'),
(757, 'https://fcm.googleapis.com/fcm/send/fqWXJ809iyU:APA91bH8BHsm4jddtqBNYe4wt7LjMDysa6pmFktLKL1QsDyZyp0DGDEaPKTxf6oaVmPzQ0_lzbJi4E7tAggg6TdNluzvnETZwOmnRSqodt0WAgZ7vDmRpYIOn9BLC2hkrqAil50xgmzH', '2025-05-29 15:34:56', '2025-05-29 15:34:56'),
(758, 'https://fcm.googleapis.com/fcm/send/exs5qoctJJQ:APA91bHNiAFUgYqQUj_C-T74eN0roYhPXnE_fjkafMn0mi7A83-nLS7RZw33aA9u9s2Xcqys_LHoe2EEE2CvI8UR7-apnuBfP6LzV0zCD9ZrCbB2mJRf4OmvWbvdaazZKk1rk_rd8E1y', '2025-05-29 16:21:17', '2025-05-29 16:21:17'),
(759, 'https://fcm.googleapis.com/fcm/send/fcsffYdQ_FU:APA91bE-Xqi6RD86WlfqUhMfVHnaFUkKWN7OJa2dVATcZBfpTU5JtbMCIsj4WysGuHmR44lx9sUnIFeY64x9LXSNlpOz6MJ0hpZWF_glVs_3YLkrY5g6DmNV4FytuUxoB4xgLUDWTwcA', '2025-05-29 18:58:13', '2025-05-29 18:58:13'),
(760, 'https://fcm.googleapis.com/fcm/send/fzwC5lnyORc:APA91bEbL0cEifceHf5THShCXeYNbHu5ao35WreMHeWqRvkAorFtG4YoWyfS6OcjvRrP7rOCxX4491i5PqlgSUG9ftXa9YBq8lEuKwCJLD9SM3gv3eB8idiSCejSVjIsmeosxc2JO3Nq', '2025-05-29 19:00:23', '2025-05-29 19:00:23'),
(761, 'https://fcm.googleapis.com/fcm/send/fee6nwt3KhE:APA91bGZZytKrBM2dZuuZM0m6kqUsJBjslImZjVODwmLZ_c2zPCSsr65-r4QFoKWoN-r0MturK8ao9NMM3TjLlju-mYNSEfPCFZO5XC6flqW0ld6Dlc8k02VZFgfbQnJDpiMIqaZY6KY', '2025-05-30 04:45:05', '2025-05-30 04:45:05'),
(762, 'https://fcm.googleapis.com/fcm/send/cEtXo6hpvic:APA91bFSKAYx4gl6ql0wYyKUbfnbr5NL-mMDUXkQLzo5bwvqJPhDZ6jbJj0pug2UxgDq8JC77-EGXU6Eo4NIrH4T6GSteKoVLE8yDcp4iUye_0WlbTldt2zgBBRrol-KjIpQbpwRV37t', '2025-06-01 19:57:18', '2025-06-01 19:57:18'),
(763, 'https://fcm.googleapis.com/fcm/send/dHtDWOgPhVQ:APA91bE17g5dPqNYBOxpLZcKDYAXlrQZuICQLUlzyaNFf_ZLXPK1UmNltcHrTayRWXwMHYWxyTSXY_LX1N3jZphLGIAYvgUxS0IAvkLKHNGTwxD5kPGkuTghM2ttRh78bwLeEs0hK5BR', '2025-06-01 21:08:08', '2025-06-01 21:08:08'),
(764, 'https://fcm.googleapis.com/fcm/send/cup08fOF3H8:APA91bGwio_dejFswLjeXR1yDFqZsRaNwINCargSNag145OR5MJSa_Ox7KyS7Qpgy-xc_M3qAq_rpWboMowzS5Khv4DwpzfSLTRaq7OvbxS-JL60mSeonCw_2zH7qc-P2bm0bADzbuN4', '2025-06-02 21:32:17', '2025-06-02 21:32:17'),
(765, 'https://fcm.googleapis.com/fcm/send/cLj2kmcp6tQ:APA91bGKGQcBtI7cyJYr_FvQwH9c5YpRCG2gwBUnMFDVMhySHCy2_kBzrZa5afk7A_hpWtft8L_sT1JhGWfkb3JEwvKbfLkJ7zKoY98-6hQ9Ee7HM90j66H2km-XZNa6RcjUavi49AJQ', '2025-06-02 22:02:59', '2025-06-02 22:02:59'),
(766, 'https://fcm.googleapis.com/fcm/send/fpd_XWAaCE4:APA91bEecTnEDayF1khewVEwXzLGKPkjr9df8XBRjP4upZoJ86mWH_tSoUO3ab8YUQU8xFfCHTGRSvrRVpwY_cdnFor9LXy2rs8PMp1savP5Nv84A7gSn89KWhfScdZE-gFeNchH0ITF', '2025-06-02 23:13:45', '2025-06-02 23:13:45'),
(767, 'https://fcm.googleapis.com/fcm/send/fmynP8MN4eM:APA91bEJZWdzLQEF-vYC33TlgaIytGdMz_j9oZU1C1Vn7scpZCIo1dCnwz5vGZQF_B8MXjD5J6NY1lVbbOBi5KKJr51NxiHIH-8-94zNlBB915gT1hqyZrWwX1KmJPlJV4kV7b3jk0-n', '2025-06-03 05:45:50', '2025-06-03 05:45:50'),
(768, 'https://fcm.googleapis.com/fcm/send/etvoh_q46AA:APA91bHVrJTwaP1YF3iIjDeXnf39BEsUP2ZEfdrJ_NV6gT9I2z0_67FDeXZr2vXJVqkK-gAtaCmmb0eqoaXC051BzD_t2M_2OXUaYny_j4ZqrDb0fx34gwES_HMctUq8JGOVh_JuSS0L', '2025-06-03 05:45:56', '2025-06-03 05:45:56'),
(769, 'https://fcm.googleapis.com/fcm/send/cKla3by7BI8:APA91bG_L8iGJ0ZY_1dtG4klL3pH37Mzv3BXji09cVba9huSq3HV79Y36Jl2eMT5dwsyprBHMgoAnVroXaj6-GDH9IUtPJQ2UxaSphrlKlWqeJAlTtGJ4US2Ckfrh_s-XYrrAarEig0A', '2025-06-03 19:57:26', '2025-06-03 19:57:26'),
(770, 'https://fcm.googleapis.com/fcm/send/d5reHagHKMk:APA91bHrq88y2XaV6UFhbdKPr6xZbq1Te_IUWtU5O4N5mhlVLHD6N2J6fAW7Or_X20YwdeEHOKlqAqlCg7rxKvLBO1bUVWN933EnDPQdhEgebtwQhTQAuqCuUP1Dq8rkoQOR-QwcOtz-', '2025-06-03 19:58:16', '2025-06-03 19:58:16'),
(771, 'https://fcm.googleapis.com/fcm/send/erw-5k5984w:APA91bGTfFT_7vBroM5PRvEkLHa7pWhFCAU-TY2PEfrYwzqnb0LpQVcJSxvZzFdVtfZnbrZSh3rADtmmQRd2xpOgcxi38OAXlwDYWxSnrekevkmMJDkiCCq1RINmw9_OYwtroQtpZxXp', '2025-06-04 05:04:12', '2025-06-04 05:04:12'),
(772, 'https://fcm.googleapis.com/fcm/send/c9iVtii1Vrk:APA91bHQEhlkOg_Nf2hCc1IJVDOK6WFkT9HVIyKRonIsyHASkKsCbrm949EHYHnI1ipuCE9ZkdGeGaw_xhQX6SypDtGfLSWvOmNsUqg3h0xPUBRHabQn_AwEasUP8xo7D0XYXuox8Fnf', '2025-06-04 20:24:59', '2025-06-04 20:24:59'),
(773, 'https://fcm.googleapis.com/fcm/send/fdzFvQYE5CY:APA91bH6Nxj-wmjlkwVq-Uo1rtxzFDpyR7PUpjXhsUb9bVtkBG4J8s2Fx1w00Im_pgrruS2oD-9hS7UMK7ZaVDXZOSUPTXvVNtKg98EjEFipv8mQ2xjQvNmr0wlXpEfaQEAPgxJz9qqT', '2025-06-05 17:24:39', '2025-06-05 17:24:39'),
(774, 'https://fcm.googleapis.com/fcm/send/fRslUjtKd0M:APA91bE4ep6xrMTpL01EJ7INz0EUkONV8gy4RmMt4QmloBRe01tsk6O-VH4UR919T2EtQ5lcX5iWkBbAWtGugFkl4gt_FvK-Hvt6ZeNROwNRvf6OmAMfEH8XD2g2EmqwwsJF-KJzED03', '2025-06-06 01:30:35', '2025-06-06 01:30:35'),
(775, 'https://fcm.googleapis.com/fcm/send/e4kgJ8seJ6k:APA91bF__96te8FS4KsTRc8N5742jZZDnDVXeA60URTicpaa7lj8DXvFezTla7Gr86Q8kyLVgnzDG74CFUPuAM6W-7y2x7NEO3RBcuZsNGxsUz7GMX2mePB9_EttW6z83pnYu8bYF78-', '2025-06-06 04:15:43', '2025-06-06 04:15:43'),
(776, 'https://fcm.googleapis.com/fcm/send/eiteQjmePiA:APA91bGhlKkxmF26H7zFKHbRRBh0K8zuhkMiAl1r9mAx6KnGgfTxmvAECeNT02dqW3hpLvdfSnHhPbQjSsT4C7RbXtp_dKvu8aLpLE3jT8CNnc6dGCQzi0JBRGzoA8XdwHEe2LKCZvKZ', '2025-06-07 15:01:02', '2025-06-07 15:01:02'),
(777, 'https://fcm.googleapis.com/fcm/send/dsmWrEBuTqE:APA91bHC8AwzdzT-6b1yHn8bl4aKrDhfxuZyYKuL5jzb5BxzSkXeIwpzrReoSTnrMydLIlw2GpYGMePJTVgcv-QFp6LH9N3sgmLrC1bzJzF8MpRU35_LwqOXkZxaQ_pgl3bKwCtAq3p8', '2025-06-07 20:42:12', '2025-06-07 20:42:12'),
(778, 'https://fcm.googleapis.com/fcm/send/ds86tGM1tdI:APA91bEv_oTiB84EOxtKrXHjbvp1buMoqoTNnGJ2rOgj3LNNa0hpXbQzZOyAT6CETwuGQF1Bd2ySGGQoVgaZtxyhVDpLVm5m9-96sPCiHdY5zDGqKpavMLw0mDFyPQwFxkU6-qxq_M7Q', '2025-06-07 22:20:37', '2025-06-07 22:20:37'),
(779, 'https://fcm.googleapis.com/fcm/send/cEj65MiyhEU:APA91bHcsIzcP_DG4FMpTHjWrvmjb9GeiwKzPNd6Xlmko-hpD9Nv67EuT5l5GqoSjol4o_xKTSBtNaQLLs3A-Fim2LTKbI_ztQx7Puq1RJdRSgHbgm58Y2M3n-x4fe8AGv6l0UL8I3_c', '2025-06-08 18:48:22', '2025-06-08 18:48:22'),
(780, 'https://fcm.googleapis.com/fcm/send/fQrhoTdfz8o:APA91bHRS0asSq2yrhRZSqjd8ivQrl_e4hJ-A1Io435wzUua8OLeL4hOnyZCh3grA0kFDoN4o9sUeetKZSfZDSN2tIB2jyifE1JXSBAER_CLvlfwr6JWGGkuE-m8orVbcxbaMoFLs1Zn', '2025-06-08 22:06:02', '2025-06-08 22:06:02'),
(781, 'https://fcm.googleapis.com/fcm/send/eg9pE4xmwJk:APA91bF_7yBzOjgxvJm6vU7Tk7q95r72H7bqXrU6Kzl94yS-AHwBqrmRjXSZ3GTmKCIWe8NiB5DzwclDn2vDLd8Ym_YGYo-yPai-E5UnHmFAMmO1BraB9M_Wgn2HUifOspMYFbyK_7Tn', '2025-06-10 22:01:16', '2025-06-10 22:01:16'),
(782, 'https://fcm.googleapis.com/fcm/send/fukl0C3WBeE:APA91bH76N3UkZh_BtwxYFH7H4Iry9dqkmSBX4TzMaPGTr3NL577Jc7aszBkcAj2ypcWmJ5WNCoxFbrcDRq0MLZVc4d0UsWvMWRJAdvfX_siRNuzILKAMdsVLKDt5gzyNdeMhzNo6c4Q', '2025-06-10 22:48:23', '2025-06-10 22:48:23'),
(783, 'https://fcm.googleapis.com/fcm/send/dEaUat7heyY:APA91bH62helXwIk6D5mxG4DhyeaNTezTioVQ6DHnEx26CMm2UtyHCk7MfMSr59wX-Q86CEGCQMtFfcK-GwU2bvOhO7Q40pqnh7tmzLytgj9WSfY-5LfbBVY4CRONi8t0MmNfw8J7sGv', '2025-06-11 02:34:24', '2025-06-11 02:34:24'),
(784, 'https://fcm.googleapis.com/fcm/send/d0cJ_VbochA:APA91bEVKMjDw3_RXj0jP5uPTPHi1ntyLOvCnxAhPhbL_rURcTM4HQu4xiNkrGHU5pnGj18wDLTvM3RlLuk067lyflzbOtYHLeYAqxo9Pfi_eSW8gfsfRCicKDrMpQ304HGffmi-Bi4Q', '2025-06-11 18:54:39', '2025-06-11 18:54:39'),
(785, 'https://fcm.googleapis.com/fcm/send/dnDwmC2Gk9M:APA91bG8mnisNWRyQM4wA_EH1lyoIdBzA1moilBP3x0F1B47IpmYV2uZCJoPmBu79Im0W3mR4t_clDGYoMrs5x-meOCuRYQnfkkhm6CoRYO-Oz79ByduzJh00KQJN4YOncyWs4kQSbW-', '2025-06-12 17:46:56', '2025-06-12 17:46:56'),
(786, 'https://fcm.googleapis.com/fcm/send/du-b4odUTa8:APA91bE0_um3_50JBECTi5yuFPPW08ctZv_ti-A0MmVRXPHGbhX5lbhuXsG5dUn6Dha2qXMLf47-b6-ZMTvnwXt5QMs1sSQKuXZzhapPYEE2R0n2tyaL4V6UGT6ryD3fgRYZVBqOK4jz', '2025-06-12 20:43:35', '2025-06-12 20:43:35'),
(787, 'https://fcm.googleapis.com/fcm/send/fkL03CXHopw:APA91bH68gov7rQQECO9Pm1oyMrWFRT60MTrSShXPsJAbibRanOSmSGQuYLf2xKV53afGIa5EZH4V-0iScz7zirXPNw424_BuWgTYHgUF60jdqRlOjnoPwXw9r3hWrTrqgqkBVR95vBR', '2025-06-13 13:24:38', '2025-06-13 13:24:38'),
(788, 'https://fcm.googleapis.com/fcm/send/dz5vZUC3Zlk:APA91bHMHEl7xtw6G9VglCvmgeMFZbHJEKrrvxL5Uv_BeH_PQm6wIe3WWMNKyKErIxoJ1kffohSGRRWIf86YRhaq5_PgZzoZ-nSAka5KFilsvHXjIOBiubnQ8YDgtwiUv1SdVZDWGPFa', '2025-06-13 15:29:09', '2025-06-13 15:29:09'),
(789, 'https://fcm.googleapis.com/fcm/send/dhUCK_WAyIo:APA91bF9rr0Zh4Tl6DKPgngtMpcAi7aQHo6e9DB71AD8A5DtLjYqm96l7uNbaBIL9DCYaHFl_AN5DznivuiKtbGsIKFdZhn4CqGHVrlxRudYZGiQHKF0f2LTTmRSL5Dj40_6pxvH2Cef', '2025-06-13 19:54:46', '2025-06-13 19:54:46'),
(790, 'https://fcm.googleapis.com/fcm/send/dkb0J2J28xU:APA91bGYXIOUBAEmebnsStw8RhdIEBC5LeHztVtu40MSTTCtwEwNsqF0cQzQhs8uubZpwqpERXdET_3TflK6HS-CFcDvR1RB4i6CZQ2OjA7z7yJXjyxRD5Uwa5ATJaJn1gfJuq3XGmmf', '2025-06-13 21:09:07', '2025-06-13 21:09:07'),
(791, 'https://fcm.googleapis.com/fcm/send/fhEn8OO3ydM:APA91bEfSIJemD_JsayaOvBPyY5nlnMtFX8cC0dT44xGTNKetUQvO8VeJGmKnmPInJ4HtJXvfZrhtWRO7oBqc4HF8ISYwPQaYzkQ_FpzrLlLTk17sbK2c5vWDwxiSA3RIpfu63JLT5J7', '2025-06-14 07:27:14', '2025-06-14 07:27:14'),
(792, 'https://fcm.googleapis.com/fcm/send/e3IE8e-PM08:APA91bHvI_0GhGA7qVxEd0uMpm020nzI05B3KKpwchqETAgA0KOlov47xSS15iyyjQ-h46W8JIJV85x3YdBRkK2TONoWHVbHoErNHgs11ykUmSkDkAE95WqfahInZf-p-k7WZjkFqI0s', '2025-06-14 19:23:33', '2025-06-14 19:23:33'),
(793, 'https://fcm.googleapis.com/fcm/send/cr27O-LhSUw:APA91bHHiCLPa_oFziPScsCQ8SO50grFsOWeMkMzfOhDA9tfyiwK_Q9AqwVnXdCIzLEph5byc5u3uCUKpbRdNOuGw3vdOlIo1keiECc1VsuUdwYOIwaIM4kkgCFlMmD8bDnhfvkUWmIL', '2025-06-14 19:45:34', '2025-06-14 19:45:34'),
(794, 'https://fcm.googleapis.com/fcm/send/eHmXs7HnUOM:APA91bHId75mof3enhnam58rKf0ln6GAwuWhuTvsvVcRWvCcCnI2QqteZtu2aO6PJfZx18rcyN6xlVz1SeLMcSXw7t6_mCUJ_AOJ4JVTvuy1DjzP6AUzCvXVqbqYQ6v-npaF-zpzGej7', '2025-06-15 04:28:22', '2025-06-15 04:28:22'),
(795, 'https://fcm.googleapis.com/fcm/send/dz7LaWzQVAM:APA91bF0QguFxkldr7Ge6ny3JrKnXaaxPxu2fu1CoofMBYgy4i_kh_eMfpa5bqA0Lg-Zjc48hyOTrjRa4m3-IfuNOqBvFgz1U_adMHCYxTjOWAIlDGWchG3FByr8SkfRnjB5i0YHX864', '2025-06-15 04:50:04', '2025-06-15 04:50:04'),
(796, 'https://fcm.googleapis.com/fcm/send/dK4IP7H7Gkg:APA91bE5e91sMRlqWTpJJFzXBnwItMy561aYYFhNSwvfkD0sZVZ8UusUPU4EkQgsdYIjD0EGx6h8JXmZdP7pyOtT15RDjTl6hImofsCWLiYTnhux09Ezu7YsYc9asUqfitPVACAzCAPN', '2025-06-15 12:57:10', '2025-06-15 12:57:10'),
(797, 'https://fcm.googleapis.com/fcm/send/fQb1hYHIe1A:APA91bGpgJiULQQ4kacGgV1hyVF5zA-TOWTiPzWXl2hRWgGd4SCYhIQJRElRCSSNa4m011et8qeibw0ss59qqvl7TcIAfX7UQHafy6pq0KtW8DqLKcsbRr2QCVWOXagKtxv0-VMDHCme', '2025-06-15 15:55:50', '2025-06-15 15:55:50'),
(798, 'https://fcm.googleapis.com/fcm/send/epk-ImToOC8:APA91bHJ4tfb_w6SvA1TU5txuG0U8mHyMIOP_Qzk113cwHu6TgosqsS0Lf4iE88VsBWffKQHX8x6GxVUm-AHmSm9graK3Lvr1KusPctpxJ7K6ds1S-dS7QmSzJr1DDa6PxShov3Ij2l1', '2025-06-16 02:30:03', '2025-06-16 02:30:03'),
(799, 'https://fcm.googleapis.com/fcm/send/fNP8p0832iY:APA91bHUrnW407Bb2KVRYUrjiA1Co8iM_VAO_8DY_non6nvdEwV7qtekC0Gnf7MN9orTAhL5pvZ2B8x04xvfDm5-FJlJ4rfTJZW3cJmvhtuI7Bc7YFCzSh3cw_uLevXDcEXWOOuzPqWN', '2025-06-16 05:16:00', '2025-06-16 05:16:00'),
(800, 'https://fcm.googleapis.com/fcm/send/cZ4cgHDoGpM:APA91bHWB6167AJjkxhi7qf98oLFXJoUJACe3nWaUMs3ecbjTyBaunxFx1c_SjwtmkiV0jhVKgVsk2ZwbeNb1-QijmWxDjJsqTjw6K5QYeppWqt6qHSTGPpRozpMe49GiAIJ93on2wPU', '2025-06-16 22:23:33', '2025-06-16 22:23:33'),
(801, 'https://fcm.googleapis.com/fcm/send/dkBEnJqeWHw:APA91bFxwbmkegpVO-fFVLPhZGwvpuYcXx4bP0_8TFBgkz55NZSGsVfQyQKQ3BvqxEM-oHameYx1OhNtv4bE6sZVVGEegsru6Y0SotGQkr7YXwyJJClYWpu6UPsoO-nc7AVNSGSVQqKW', '2025-06-17 00:41:29', '2025-06-17 00:41:29'),
(802, 'https://fcm.googleapis.com/fcm/send/fwv8YbECrGM:APA91bG69Szi7c8W9cjw1HyvsQCos6w3KNL0Dijcvauscp85KksP2LJWNeaN0Z7YB7QBhNCERjnytIYbk_YSZf28s23fiBOPLPehtFuvKDmHApWQjwK4h-v-IJjC0jTGfbMsZnYIyWNW', '2025-06-17 16:32:05', '2025-06-17 16:32:05'),
(803, 'https://fcm.googleapis.com/fcm/send/f9n7-UT2SW0:APA91bFDgZWunOmoINXPjWIH9RLAMKBo-EkS4A6Z8sipMZuDNu6tWSzj8E4EvUjxDhcWWea3NmjqZ__3lfaBBJ46w9Ru-LCrW99BFZUqQCqiYkl1dk766kkenzEpjPM0N7xLz0grgn1L', '2025-06-17 20:18:59', '2025-06-17 20:18:59'),
(804, 'https://fcm.googleapis.com/fcm/send/euJoBQeH1LA:APA91bFXHHHa8hRWOdIo1D0N9KgOoW9CtOUJjm-nXv2r7K9LmF3bGeePuUauIgVt4MRhp51qPwiZjm1B-2kxjommaMlB3VGUZLnOxowYIB9bzdFl1mlMFeHCewRGacB1pkgvN0OGMoe1', '2025-06-17 21:39:15', '2025-06-17 21:39:15'),
(805, 'https://fcm.googleapis.com/fcm/send/cvHLQMLvMVo:APA91bG1InVIBeLEFW_6XK3G92Fq84XJ91t7gEPHSMvfFv5UqvABLzvnX9_4W9ah2WYuxXHg-y96IJvur7FSco6A3KXwchybJb_yp-X53NogWIz1VjNFkceUMhayaLh9ItTTZNgwwOvf', '2025-06-19 04:46:11', '2025-06-19 04:46:11'),
(806, 'https://fcm.googleapis.com/fcm/send/eNgySlaV6-c:APA91bGYayTBPClH1RihCxKJcAcv0n4gRdchFPzAO1gF_ZWEYw3eGnnhXtmfogSFe_w4cp8_sPkeT2DpoHJF3tplA6_jL73bjX7wJBL802nYLDtR8B1hS71uTJXgzJGnXREX2np68KS-', '2025-06-19 15:38:31', '2025-06-19 15:38:31'),
(807, 'https://fcm.googleapis.com/fcm/send/e_bFbRaZUKk:APA91bGZisJuVE72Cj3dzdMKzTEM6cGTHKpBAA97AfPnDt8wlViwLcSgY4q5cjE05tkKVbp3VMS12F9irq0-veg2N5BH83Lvq9y7f-WNLgcQyuu5KCRnck-mFGCDqyTLunTkI7m9FFoW', '2025-06-19 15:43:12', '2025-06-19 15:43:12'),
(808, 'https://fcm.googleapis.com/fcm/send/chD2oybvzkc:APA91bFndLwTqlrLX8WjvmRr6jIUz6cYbkXjyylQO-ngarBMwahO0EsStbqKHivPsEH3_tMPPBxunP39z4FgvMMHqeZLdhD_CMopyhYIvJlZ3yLNnBMPzEkOlvnUK_skEGXOZeBtuZ-Z', '2025-06-19 21:44:00', '2025-06-19 21:44:00'),
(809, 'https://fcm.googleapis.com/fcm/send/dJCILgHXd10:APA91bEt5fsgBuzKUt5P3-SpL5JUpQOtQYNZ-YecXRchuQBuZllOIJdmWY3rzvn4icWf1oNjYzA8eKWwRp7VmTaQTDqchXQCeEOaZblCbOCbF__F4U8wNTXU6xQbpkXfh2OIIYv1hLzT', '2025-06-20 17:32:39', '2025-06-20 17:32:39'),
(810, 'https://fcm.googleapis.com/fcm/send/eTkX9r-pxgA:APA91bHsoOnGExHlVurnA97iLjaw2YikOrJ8iTZDc0M6Ck-xWQ4HN2aMQpfYZB1L3iJEoeny2XJo64ecS55IgaDLIgW9UFusM5KO0gpxfNNTKrmNjAhxEIiuoj25OPactxSKXmmAgGbQ', '2025-06-20 19:31:24', '2025-06-20 19:31:24'),
(811, 'https://fcm.googleapis.com/fcm/send/cJO-0eknTK0:APA91bFVit-o5aXCo-2gqQbvB8HubasW2RrnGgYOA8vHENaxVtRJyx8nOAVo7M_WF_DxcaHWHjnXO990WCOOwIx0N23nx3eVoAfkLsLPmriEcQE0ba70g-aBuNG7pt9xlKV1KKI4OtXz', '2025-06-20 20:42:35', '2025-06-20 20:42:35'),
(812, 'https://fcm.googleapis.com/fcm/send/c-syXG972aI:APA91bFoLiIzN4nJIozg1hpDWOjNxr7dNCZgyKgwDuI5K9175oMpxqvLHK62kTZy5IincQ4aG2_XZH4kjYgjMuSCTc5sUjkwE-rbfowh3EoeleqRtbdA80cJHGM97Q4QFEDLc8r8koQT', '2025-06-21 08:59:37', '2025-06-21 08:59:37'),
(813, 'https://fcm.googleapis.com/fcm/send/fEePJ3CmEDc:APA91bEV1sfDx3yfaWuRSJZiJ6uEo8_ENy4dkCf9yVK9VhzgcdwRFYMVLhkEyazo3UyvBPIIuRXatD80FRooaO0zG7e5-A4pD4NYw9KSV_hBFqBUyeqYiA1VCIozHfrl7fe_F-pqC1lG', '2025-06-21 19:11:37', '2025-06-21 19:11:37'),
(814, 'https://fcm.googleapis.com/fcm/send/fn4fo0TzXeo:APA91bGiHAfLr60gI2o6ppLR4HvGpaDWifFH1pgoOoyJjmQ0V9ykXN8wm1wcSo4LSYPYH2RJCTPLCJnkxDwsu7HNE1oiJ-m_AXMpI5oV6NK53I3XdFDfW6vbTE8DO60-vc_g0hbY-gTL', '2025-06-22 00:58:50', '2025-06-22 00:58:50'),
(815, 'https://fcm.googleapis.com/fcm/send/e84iQOP7UkQ:APA91bHgYv4ywB1EHe3s83CWcv1YNQ_fHlC4MVERTcsoSluuaLw9Qlo4Mk40SDYi9-SXpYfVjNwG6CNTuIuwHGBRpAFDRLdSBlvguJst1i_meiYR1XK5wUJBUzAxR7QLuUu1AUxxPl3m', '2025-06-22 18:35:24', '2025-06-22 18:35:24'),
(816, 'https://fcm.googleapis.com/fcm/send/czS88iCmMPg:APA91bEKpcEQi1nc3M_HfpwpJyYjGPOkhzxzj4cRmLMJCksVvgc7XSTQFlEy_8Muw_W1KpLmZg6KicuKRe-0cI2YQ3L5qBkK8Vvu9JClgcXpeYyjPC-F_W5cpYm1T76srov11tUcO3V7', '2025-06-22 19:41:07', '2025-06-22 19:41:07'),
(817, 'https://fcm.googleapis.com/fcm/send/dEz19TYnx-I:APA91bHdhYXOShqMnM-DQwVbfQjhKZKP7JGwMyDi4yZjxwOMJaGUD0vB-lNEh-RGCjdc0ycWezNErYPJ-Lk-hT-xgCLjQyaennWA1NT6uRK_znQ4mM2cClI4HPudnYgPEDjmH8LJTWr8', '2025-06-23 00:13:40', '2025-06-23 00:13:40'),
(818, 'https://fcm.googleapis.com/fcm/send/cN3gFm6MbbE:APA91bF8P3xn2Z9sZaBfSHHZ1ZasHPFk22DJ_9MVyXQymsqrKzSsqd6I7_hfRVGsSpB5OTJzZyM25dgB6G5RlPVP3U8ykQcitl44qkjGnNcyN9oeww41LHcQoOYki-guGd2f-j0Gd8u1', '2025-06-23 02:04:35', '2025-06-23 02:04:35'),
(819, 'https://fcm.googleapis.com/fcm/send/dorLtP-kXYo:APA91bF-GYrxp4gDy3Gwha2EjhTMIgaPch7oP2CUuN66xsBFCb2Asv9WTF6q7Gc_ArybEIxHOoN_SEAkBIROrTKJlsnrvxxKYT-1Ui4hAHek5VmHmPNZL7QMCwJ7zXoFoMxUbCt7SU-I', '2025-06-23 04:29:02', '2025-06-23 04:29:02'),
(820, 'https://fcm.googleapis.com/fcm/send/dLk69phDlog:APA91bEWSwZLhiOKIH19bgyUmqiXczODY0Fz6cX0IceiSSlejB2sDP_K4xFGATE9R7FTnjYlyBcqiwebhHOIoQhqAVwhN-CEBHJPU0GZwIC6cOQoFZjM7-qhYPuBuGEel1iEDC_uab-d', '2025-06-23 18:09:07', '2025-06-23 18:09:07'),
(821, 'https://fcm.googleapis.com/fcm/send/fPcW9J-frFs:APA91bFBedxtF0m67xXT2lpA_h5QrkY0TSLvzZ99Ye0_8Rd3ouoUYnfhjDrpuUjOmnYRfKv_Nu4YuaYVStJ0hZ0wGGONfNvLcfyjMUa7hy-hFMgEsnOvIqNY13J2y3--Qlj5XPoVT0m3', '2025-06-24 01:25:48', '2025-06-24 01:25:48'),
(822, 'https://fcm.googleapis.com/fcm/send/dDvb1yabCVI:APA91bFh6bYyZD315CLSsPk6qGr5qYZpqs0C6BGQ4E22QvBdLuAbVdob2ZGVyDQmBjL_gq9flyUtIrvmxr-HHENUzKpAS06oOCZR7djR1Q1lOU5p1uSEbEU-sMgzCMX4A5DZKaQd83_Y', '2025-06-24 19:01:38', '2025-06-24 19:01:38'),
(823, 'https://fcm.googleapis.com/fcm/send/cEIobceJ7vM:APA91bG9urCtgf2owvoQRCq8PASp8OM_boeL9gHqFIhg-D-k-1p-7QzSPVNDHLphYqckJmq1VD7AK4_EAe9sHwD8OBb6b4fFVrONTtXJUVpDLNiIvQ9f1UHZilCp5u9gWCGPKOL8P21f', '2025-06-25 02:37:34', '2025-06-25 02:37:34');
INSERT INTO `guests` (`id`, `endpoint`, `created_at`, `updated_at`) VALUES
(824, 'https://fcm.googleapis.com/fcm/send/cU9kki14rGk:APA91bGAKIq-Q-iS8lOGZKAGXLFl-gmokaD0D78Ihaan4cBnMLmikZ_65G2zHbDKwbzTLMEYJFoUETL6jrWEJFxzyqtm2oOGCHiZIQXV524p9HZNhmTUEJd9dKMkQdi2AS3jkD260hWN', '2025-06-25 02:40:42', '2025-06-25 02:40:42'),
(825, 'https://fcm.googleapis.com/fcm/send/eGAcdNKQZLY:APA91bFomelhWFsmxEo4RV4MU_v8ci15NSzw5R8KNl6FIuV8qZHp2r_Oo-Ok9VeXiVbdLNulmLhhzU3qVCNFwgddk_gnL6zPYug37ogT4LlIiiRXPsidXOU8_X3bVE5iJBKiWIHoi-tM', '2025-06-25 02:40:59', '2025-06-25 02:40:59'),
(826, 'https://fcm.googleapis.com/fcm/send/c8iDu2wOrtc:APA91bHc2oxnxOMORbfOvsxosJ604yLi9CyAEAbYiOrooqsv84TJeKYrUw_uVegZYw3nAksTk3Js8k7uzoRs1v22RiUTYHq_5OrtTINfo7fy0uW9iraGJoMUC6CRl_Q8HnYqdwDW9t-K', '2025-06-25 02:41:42', '2025-06-25 02:41:42'),
(827, 'https://fcm.googleapis.com/fcm/send/eNSgBJ1JaNQ:APA91bHnKYU-gwN2DGGV42akrjshWjiRVic35Ba4_EN-E0eXZPMpZGrP2Lur9luj-sHsUuckN8FExelQ6q09K7PIkg10J4r7vqw_U4uU7xsRK0evah05HYVXn20w8jm24lNosa24OA1p', '2025-06-25 02:42:17', '2025-06-25 02:42:17'),
(828, 'https://fcm.googleapis.com/fcm/send/dZQQvlcWCVE:APA91bHRsWc_3W4xiUoNPYU_bv8QAgx9_u94S8YQzlHJNkG60moWzCLn1wx4pmNxpkYfuSLnbbKr50fkrOL8hCPRhvblKkmZZbPBhJb5YHy-h20hz_ZdfA9gzjsZxJAPeYETGAdKMPXN', '2025-06-25 02:44:07', '2025-06-25 02:44:07'),
(829, 'https://fcm.googleapis.com/fcm/send/dfjwsTNdLwM:APA91bG9Bjn4lS5_olB6m6oBVyl-4LW-qUc2GMq4cAiVBQR1FjDtApwJkmQbj_8uyVBkpvPZAmXJZ5m7_zlcr_wjLLXfp4f8wRqqMqMiyVltAPjfNZ9UKs6EyB7Kktv9VCqjuiJUNknB', '2025-06-25 02:46:35', '2025-06-25 02:46:35'),
(830, 'https://fcm.googleapis.com/fcm/send/cN9gi1E5qjI:APA91bFWxKTjk8S9xvgQsdknSteDB_Jkm-GQxmzmUE6ve9u4wRh_yMadlRc8jCH23IenUdTVBc5jtoMZGmA7vegBx-lGKEEOJTAYiH311CWiRAqiKnnquJt7OFEidsP02MRtLJSCyAqp', '2025-06-25 04:44:16', '2025-06-25 04:44:16'),
(831, 'https://fcm.googleapis.com/fcm/send/eZAz5-WiFpw:APA91bGHHS70locxJOt1EOlm0tZf2a1qLcUoupmD3wK9fIh2mrF7xnA2ORDk3FhiAkMrD91pcOEb3OoaVcVMcefaU6Kebt3T5JRyFI3P8Zh2_C87aYkkTdDJKXtci0YmB2Wf2uz2u5Jm', '2025-06-25 04:45:30', '2025-06-25 04:45:30'),
(832, 'https://fcm.googleapis.com/fcm/send/d3dPIlggzAg:APA91bFiqEx03SsObJ1dAki6zve7h_o-j5IXz-s-3Yw6LGA9yKy9wIvzENRBZNcDNEmdu69HlPTAzGqA3bPes-J7EdAoW4h6j9fyKBvXsTsKjk3o3d12olUTCrvSZBV-fRuCGoEsPNXV', '2025-06-25 04:45:43', '2025-06-25 04:45:43'),
(833, 'https://fcm.googleapis.com/fcm/send/cyAqvUcf5K8:APA91bFpe-1IaAdpi9KQgjvtx1Gl1sSBtZanbKPmysjSfMW5ENLqKFtYhBqETbT1oeGcgjfhqVghYBRZjV5-yQAkCPNfiNk81PlJ2cuQ-DEtQ2CKaT8-AYa3OoAgqi9rOPvwmsiih3-j', '2025-06-25 04:46:50', '2025-06-25 04:46:50'),
(834, 'https://fcm.googleapis.com/fcm/send/c-IiZEpLtDg:APA91bGWbN3uihQhIkIIPFCTjKhO07GsgpivtUidaKZKhA19bhCJRsmLvStjDJPDLQm_CfhQoSq0ewPYZeGk46b7LpUx9rk4z1W0BsRfM651z3yYBJKsr8CXL_Gzs6EzMm0dWSDU-Rqa', '2025-06-25 04:55:52', '2025-06-25 04:55:52'),
(835, 'https://fcm.googleapis.com/fcm/send/fzAc0AH2vp0:APA91bHOq6tEx6Ik_3zk8a0WhcIEm-NUS00KSb0H2ouTi9QBYZ65Fa99OUHUrxTAY44go4YdTKHDhb1m0CSIVmhUKrFfrPNKdVB4IMRW09EUANXHueX8-GIWxhkebJVqgoDDBcewEozw', '2025-06-25 17:39:12', '2025-06-25 17:39:12'),
(836, 'https://fcm.googleapis.com/fcm/send/cWcI2Q_VUFc:APA91bFj3tz4gaP-4cloFAjLHpuhvIwD-RRRl6Hzccd6cT8QbTZ2t4tdUulYP6RgUb3jChukTlefPGi5gj6fCQEhZ97slHuhDuS05vMdEL47aOIifaaOxi6fZ0EbsaZFtl4p9jyKJn7n', '2025-06-25 17:42:25', '2025-06-25 17:42:25'),
(837, 'https://fcm.googleapis.com/fcm/send/dvDZ2OZKD0k:APA91bEUlw9J9ouYNPHMxdHSFPEZVbW2zaIKkgfvQiyJ7nH3w3gWvdzPc2enzLSZof2ip2LUedmpyqwfZxVlqQFAh9hfCtKSZxM0Zqu77P183JeM3dEH9SctNYbS6hSOEPnlZdPpi3Ea', '2025-06-25 18:49:22', '2025-06-25 18:49:22'),
(838, 'https://fcm.googleapis.com/fcm/send/edCxL4Bl9NQ:APA91bEK5dtP6yMbNmmfGeEiHR2zTZWmUU_LvIyxYCReZIvhpNjnYQu6PFTnbL1Np1nDoew1AoLbBc836yN0jTw27UPbVBywFOE8AGAqBpdmMGZ5wGP4-wZRGHKmib79ng4wZ-SDuJ1F', '2025-06-25 19:34:39', '2025-06-25 19:34:39'),
(839, 'https://fcm.googleapis.com/fcm/send/cOVTH9j7T2w:APA91bGTM04V4Cr9QCJ7Fb3pdFf1yJ6V9-PFkHpJpEtGtjfbU23Uyp_DTO7A5pMs4u6Peg-SsEtY2NaxoMUGO9AA24bKTbGPMdTB-ZfCDfxQlVRXflxAGu9sEA8oC1X2KfBltuOg4ykq', '2025-06-26 14:13:43', '2025-06-26 14:13:43'),
(840, 'https://fcm.googleapis.com/fcm/send/csIfAH39dAc:APA91bFT-sOS58ucTXTjGJuFUjZzxlu8lAHe2wFxJ9V8kBvuGIn-_6wi-TBJsVgtH7EcQ-Tt3-cQ7j0P--X9aK2qhyoZbxaw6nfjYkaB5Sw8feQdTf2vnd1LEtDl8UJJakx7qNmMyXa1', '2025-06-26 17:44:04', '2025-06-26 17:44:04'),
(841, 'https://fcm.googleapis.com/fcm/send/dHVwCOCEfI4:APA91bHyWkCKItZprBS3H7B-HZnnqOS8f9rciVFbTbZxsypbZRb1DOSr_t1uVDNehGm86hMjZW_jy13XgOeb1zDfoKQbL3HytgMbQiUCueLC_ibTbIRGdDUlIy_QR8l_Ph-HQgeaZaIi', '2025-06-26 17:44:29', '2025-06-26 17:44:29'),
(842, 'https://fcm.googleapis.com/fcm/send/cXBszTrOUFk:APA91bGy5DVBEc8k3WdAoba8qGJAfr5gMrqiLilBY-fJk0Y8x2P1rGB6Dh54eM-XNwDhOJ9_bNTLkE1B6BsSJKjFW1j1f9RrAHFhx_Ak7ZwMVFtJLIiZv_e9QSLDavUvSjPFtMt3Wymi', '2025-06-27 18:26:26', '2025-06-27 18:26:26'),
(843, 'https://fcm.googleapis.com/fcm/send/f83afFTToI0:APA91bFN0vnXqLTUUATmHVdoUKedRrpa8Y0DRDUJhWKZVqhq5G1el3rGl-u41sb0leKiOZ4wlZKY8az66rs4gJrk2o5dwr2Eat4zSog-cGqiJrBrBxDGECOiqgkp3nbiMviRdmashV-a', '2025-06-27 19:29:12', '2025-06-27 19:29:12'),
(844, 'https://fcm.googleapis.com/fcm/send/eDHIueeIsio:APA91bGHQzkd0fLi7bbqd61zYSPB1-6I_zpfdCZwgnWYN2Q8ouUXjGxJCK3jrqAmOODMc_HwqZJrPYTfhVMeNOixbV3UyNoa26mv7XqW1cllxndNbeUs-UeP100eTduPL1tYqKdiYo8V', '2025-06-27 21:18:04', '2025-06-27 21:18:04'),
(845, 'https://fcm.googleapis.com/fcm/send/dKkecf8ozko:APA91bGd08Q3q_nSguWbhCnU1M7Yn2y66dUoGYSyj8L8bl_bgMSSMncuJE0IdPOXI3_WFxn5SuX2CrwsDAkpPIUZ2ZcWVhuzmAROl-WN_cbPI6_uh9DSsuTyIYM_q3CS7i6DyyPfynWX', '2025-06-28 01:58:02', '2025-06-28 01:58:02'),
(846, 'https://fcm.googleapis.com/fcm/send/dyXCimhEXeY:APA91bHwz5IBfBKX0FE2ajEkOrNh9zWjJM4dPz5esbFIYPnb4DL0X7VMseZqPWMlNB4RVk7Y25RLa4mbsEn7SJ1n4Km_svfnTijKV-QXjHWnuSMzejM13ZZ4RWyqT6eE0xwOVyUBoR2k', '2025-06-28 02:51:37', '2025-06-28 02:51:37'),
(847, 'https://fcm.googleapis.com/fcm/send/d6MaGRbBjI8:APA91bGY_650aU1xmCdnhZuhikwLDucq2VjLwHJGGgAF7atijiGkdyfMbucIvDYnfQ5fvekSARwv9lSFwgjjA3LFgH9UNsTh4EoKB83zliNRwOKTWgG5Df5byQRo7_DNXyknvl8bOgOc', '2025-06-28 07:40:35', '2025-06-28 07:40:35'),
(848, 'https://fcm.googleapis.com/fcm/send/c7EUegqcyR0:APA91bEiSTdTmS20l6LQahLH_zBs3piZrX11XM2S7zQNlgD7HNgY9MTlffuw8Omk9hUEpP6C5r-CDbaxr9EcnCgewJ0C3QizacZ6_T1C-5I1mj63C5WF9fw96KwkBeT3Tbpl7arDAut_', '2025-06-28 07:41:10', '2025-06-28 07:41:10'),
(849, 'https://fcm.googleapis.com/fcm/send/fSE0SPciVVc:APA91bEKr56vG0yzLK-p1aANX_KrejsGc2HLv3t6fLQ9NLW-ccJHvS72jJAKgz1NoKpmVvAnOwN_NPWGmoZ0jVbV8sSP0rjrpUDZYGb2VsLR9WcaIPlxW3Zsq6EZglfZAW1du_pZQaMP', '2025-06-28 07:41:56', '2025-06-28 07:41:56'),
(850, 'https://fcm.googleapis.com/fcm/send/cMskS0TUhic:APA91bGnEhEg69MKudaPjFm4y93wLr9V5vpJrzberzFyvwsXnvhs2oxsdhcvUmv2CGMaMnoOsROZBPkGdlV38ITfXLYIdfl4Cv3nFPvIl7gyzbUDoMm3WmW9G5-1dnO_yua3eMbWG_1d', '2025-06-28 17:35:42', '2025-06-28 17:35:42'),
(851, 'https://fcm.googleapis.com/fcm/send/f9dhlYMfXcs:APA91bF8m-rfCpYBKi3KIJ4a-qj7iIl9YHrxdti-hns9J212XNig4xY6yh3xBORodwEjNGkDfWLcJ3mdXtsERHW0TQAW5kah_Z9uStLZ6EnPuM-nHfjUfjmk68G3xVWgWjozrAg-I86P', '2025-06-28 21:17:53', '2025-06-28 21:17:53'),
(852, 'https://fcm.googleapis.com/fcm/send/evR_O4s-TgA:APA91bHpXtABjtVBEdPRgBWvLGryLJP9UfjZClB7FFFRhBp8DtnajZr8zlDE4q56O78n5_oZtStKA2_db_tW3-m1PKWJPX3FPflomXrCMScgb-Z28gzBq84wjMIdfpPUw42jrOPA_fQc', '2025-06-28 21:22:15', '2025-06-28 21:22:15'),
(853, 'https://fcm.googleapis.com/fcm/send/fk-9LGzBGpM:APA91bEKasxyIVoo-q7yETR6ESumRfypxp05zbtewia21SdFr8o_Cn_ewVxs-fihLn1rnqgyhmTjRgk7OMSexhEQwT5T0qaEh2wm4XSLoy2EV64SJTWyb4FH_RtDx-H0HT4lEDdJTP7L', '2025-06-29 01:09:29', '2025-06-29 01:09:29'),
(854, 'https://fcm.googleapis.com/fcm/send/fxk_zZ6rJrE:APA91bHvh1f4CSOjmcDKYvqMgArCV6Kv0HJXMnREowOGbFweNwFWwfZeDSKIbMyF4UCs9btbK0knjUosSu9sbPvTayTfp7bFXuNFwUuasa6Yg4wLTsBu6rZBt0NO0L3e4oB9z2p6SV3e', '2025-06-29 01:10:29', '2025-06-29 01:10:29'),
(855, 'https://fcm.googleapis.com/fcm/send/dMp76OMfi3g:APA91bFkUsAR6xxMi18iojmqEZuygh2HX2arzovaeorM79ot9L00e-QWD8Y8lM4b432BqSMaEu00bnCgMNMaX1109Sb3FSBv8zNPjk8uQpAF59iIvHD8Wczb5QnYhjUxtySdwzcv84oC', '2025-06-29 01:13:08', '2025-06-29 01:13:08'),
(856, 'https://fcm.googleapis.com/fcm/send/fxU0Lv-N_QQ:APA91bFGRkmR3YSE75Oxl5XRqe1X48y40ZD26WWU3ic7CBWwFzNODE1YC6BLFlFSJarqR7AtnYdXWqTml96kOJxBhG5KgcuY1y2goLezOVFy1ezC4oXHv9hNQz9XUJihECdVKyHozS9z', '2025-06-29 04:37:53', '2025-06-29 04:37:53'),
(857, 'https://fcm.googleapis.com/fcm/send/dUPDzYvRjno:APA91bFJC8ThRoL1GGpyHVQ1rIv28CGmum5XyQAi97gRo9vVGZPgXtX8D642LtAyioFwf8FnDsY0lR2nPr_ijQSCRv4kgYn17e3otOovutml6fdqKgTx-s0NW3tPtmydhkCLin8H651e', '2025-06-29 04:40:18', '2025-06-29 04:40:18'),
(858, 'https://fcm.googleapis.com/fcm/send/d-j-9T3bvwk:APA91bH5SbpqA7W96CpEae9M2FjkjFhkETpOcs0v6UAA3FG_wzVrwEjbR2zmgEuvJ2dunDPwLo9ZXkdyFq6sK_UGJg7P-1oS51DvWunDb51c-LgmPp5GFjYEYyw-AibbTc9K08ZJI-_I', '2025-06-29 04:40:44', '2025-06-29 04:40:44'),
(859, 'https://fcm.googleapis.com/fcm/send/e5U1a-62LQE:APA91bEfmmbxMdS_WlQoRs-MvnsuIsA3V9hKB0tPEz_tJgUAML1pCv9wPcy29UYCZqyhgrbHcKSwCPy27h7u-I5NDgMOdVnLysSLxwYmg3TK4mFYw4cQFGZqK9BYS3eceSN6D70b7YzN', '2025-06-29 04:42:40', '2025-06-29 04:42:40'),
(860, 'https://fcm.googleapis.com/fcm/send/fguyYt0MKkg:APA91bGoqafyI4e5-pNIlp9ilsRSqngR_Tv-m6QFpoOc6Y391lSPpkPIlfht1QYSbqWrBLq131Z2vDhCDlIader9I6metuQuHXDG6Ks2jH98sPjHrgJG7kxV0hXXldYanNCe2AHqJRNr', '2025-06-29 04:45:38', '2025-06-29 04:45:38'),
(861, 'https://fcm.googleapis.com/fcm/send/e7B7ZtzKTyA:APA91bFvTTNs9LVvPg_yR94f5uQGCfGjCbDE-YbJuLf61Cb3Pzh16DPnMv17YZt1m463boH9wRmC25EbL7me_DzNFk7Jty-Qyrt-nBvw4dbPP9QyuuNQPt7W08IXtsfq4bLb_1T8n-K6', '2025-06-29 04:47:16', '2025-06-29 04:47:16'),
(862, 'https://fcm.googleapis.com/fcm/send/eQY4pHpk-1Q:APA91bHANJzZvaPil1AogLC32z4k2kuA_0vgy5AlJ1BJkDGaksQ1pAXDSD6n4-f62E4s59Foxq3QZtKlXuKBcKj677krYIl_xjk_sustkV3lcatoyVuQXtJ8uMBjZeo7iP4QWc6NS2yE', '2025-06-29 07:07:48', '2025-06-29 07:07:48'),
(863, 'https://fcm.googleapis.com/fcm/send/cJkT6D6NVbQ:APA91bGF1F_ioZqeTm4i-fVLLJTPwSjo_jyBCOfhBThzMZ2lw2DDslDqj9P16DW92N3USG18AoJlO7Xtj02ucZsZTioAlZsh7oip3r9vaiLNXffHgd3m0w-TfcVzahNVDEOrNX-b8ys8', '2025-06-29 07:11:43', '2025-06-29 07:11:43'),
(864, 'https://fcm.googleapis.com/fcm/send/fs1Kvg4Orkw:APA91bEyOwUrg9j9W8RLMLtTFbzePd922yOKadJPMETgT5jz9xgzY1os0cRik8T3COH_Dngdl9eOy_RmqdsCSZt9G-jQTncXFEJVngP4O8c56hgUhrzCAHgD8hx6-wO2Wld3rDM1JOEZ', '2025-06-29 18:51:30', '2025-06-29 18:51:30'),
(865, 'https://fcm.googleapis.com/fcm/send/eOBB9K2glAo:APA91bGpunw1vreKXJ01SaX1zO71jl-kX1B-umSVgN9CNLtRAsfE-Tb2n-2HkzgejE1Ilfaz6VtyQCbEWmtU4Z1n9JIQhpbBYKCIkLsPbTDvGMfm4NByOv69PJ6MbG9Fj2dNqWHvuI1X', '2025-06-29 19:53:24', '2025-06-29 19:53:24'),
(866, 'https://fcm.googleapis.com/fcm/send/ckuvyk5Fl2U:APA91bEmkzefjZ3TonRVz7d_MODMn5FpLQwr9ujnfcKnAeG-4RutArWBPLpi4IszCEkgi8srcX_2Gw2vEVerI5wF85vlDrfZuSH0Y_p1BfzwuJwz6-k2DjlM7eCKvz8xBZu4xLB8_Rve', '2025-06-29 21:16:56', '2025-06-29 21:16:56'),
(867, 'https://fcm.googleapis.com/fcm/send/fQcpj6G3BD0:APA91bGQIsAjOA_zIsIyvhUdlPB7RFInQ-b_oBqz1GPUAgs_3bhvGGLjXT2jPmC3fAme5Sqw7xjuCMl0Xafvmoh4VMcHT03VPG3-s3dXydss2j42FVFZwpusUeu0eAqem20eIHEmeWXi', '2025-06-29 21:17:12', '2025-06-29 21:17:12'),
(868, 'https://fcm.googleapis.com/fcm/send/egDnoniOsaI:APA91bEMbLiS3WuoHqGOGeRA3WRQyy5wz6YrTYVQIitODau2bxh5GKB9MCmsxbksfh6iZX1oyLdxvohLdDsH6XIhR0THpHqE7zEOKXrvVUDDc6wvCvZQHl465TYY_kKJKsCLcAgCPsve', '2025-06-29 21:19:42', '2025-06-29 21:19:42'),
(869, 'https://fcm.googleapis.com/fcm/send/fxO6wN38g_o:APA91bEaAONJ9CWujS7xix4n9Qim_3xAUguOtFcRwBMGun_L9II24_u6w3O2nDLvIPj8-KzuHlwIoatZ8tapiy0CB_1ZkfFvCw8QiJHNedrxz52iKE4Cg0hw0GquSfDJbtSK_22I9YYd', '2025-06-30 01:08:28', '2025-06-30 01:08:28'),
(870, 'https://fcm.googleapis.com/fcm/send/cTj_iQjlRj0:APA91bHJxpMmxbRIVL2CixExJP653dXY484GBqSOCcSXkDo8YYAjxIdtAwn3FhVIV83C3eSRxHscEwB3kONltsikfK_Hks1pFYKFC6beghuJ32gWL9-3Cz5X4c047JZKewufPNGWOWwP', '2025-06-30 01:10:12', '2025-06-30 01:10:12'),
(871, 'https://fcm.googleapis.com/fcm/send/cVcR5Yr_tG4:APA91bF0oIgK6TbMUuElGnWcp6RlxLzLy0iDlqyHaL4pVi8Qt2relOqpK5Gv6fKsCcJSFXuRyHZmdq7jfbbzbNkCBx1dYcnjpWjWfhZXqbpPZrLLflP5qNrdDbHb3xINClXTEu92XjRx', '2025-06-30 01:10:25', '2025-06-30 01:10:25'),
(872, 'https://fcm.googleapis.com/fcm/send/cQW1pyqalVw:APA91bF-BVhGC6E6hM9AQ-hti2_S0nMzYcFp6vVvFfQpBp5mCL287joRRri98rV9I0fXEPe537jIgGp0AOeq7NqS-wnnvkXcTcr0zoi153_ktYkm5GGM0C5oVt4sMbVNkhFYFz5s0rhz', '2025-06-30 01:12:09', '2025-06-30 01:12:09'),
(873, 'https://fcm.googleapis.com/fcm/send/cFcdCqoMaDU:APA91bFDEadHtCNHd1n4tts2QCl40P2WL1y3N8sKu4VAjsFDa6wRCW5k0KvLN_HtujTlWNeMYuKe8yyGEwZ9_Bn_odzcVUPYbjxeHpxknfUyLY3UBO5A2VdWqeiIcQ-orP8T1JnAHbbG', '2025-06-30 01:12:43', '2025-06-30 01:12:43'),
(874, 'https://fcm.googleapis.com/fcm/send/eRpuYy-BzLU:APA91bHktKA9bogkMf6XPhKP92x7BoN9piIWqEnHdeOw__XJzsTZD9pTA_koNHIpA26t2CKsmvs8KJKtsU83zUlFmAHR0i1gHZVokQaYKOOFSryiIwYqp1BsaMO0NnXhf14iWQ7H6Oua', '2025-06-30 04:37:08', '2025-06-30 04:37:08'),
(875, 'https://fcm.googleapis.com/fcm/send/cZf3birHA0w:APA91bFgGqMH0uocqNjRlIZAt7o8DL5K5L6pocCOOH7YzhKdY5QYxv91wKQcDwjHtX1p6dg_-mb3lnOr_iv7BsOUzCFE_GhbzpWp12rl3AF6eI5lgccUWu8aeoTSgtQYh5IReENXgUey', '2025-06-30 04:37:39', '2025-06-30 04:37:39'),
(876, 'https://fcm.googleapis.com/fcm/send/eeTfi8UMue0:APA91bHClWaPbVMoyGRKcHBvkcKJhVFZvm51-3NN3KYroHC_-jdrm1uBIoEUf_Lfb2K9-RmzrIym_eUiCMXwRvgMuk9pQ1vNNlWPuCv2BwJA9-_dorsPEe7tnTwPMO9Sw0-U2NFdOon4', '2025-06-30 04:41:13', '2025-06-30 04:41:13'),
(877, 'https://fcm.googleapis.com/fcm/send/fok3zgWJ0Wo:APA91bEEhVkHLq-Hk49Q0JtCX_TR0EbgoWrMR7ZkGqcj767dhAgwHHSdYS9vCujPlhuYhCkF_vV8o1NDWv0hix-tg6coPNOFnJ3DlhyboKzAlu_Z2vxQiMcJ59SUB6YbJG75eOEywqsR', '2025-06-30 04:41:18', '2025-06-30 04:41:18'),
(878, 'https://fcm.googleapis.com/fcm/send/ehEBjLs257g:APA91bE0VSdpuuzRMthrwUs0PiaYa9GTUD4PAw_klwE0CLrITcU2nGSej7sMgYj5ITFtfNb1IhPFo5chmRuHRRG_iJqcFrk_6tNjrdkeKKUOBpzFINUq5D2mSW-SGJdV6LFZMfhcbUTK', '2025-06-30 04:41:51', '2025-06-30 04:41:51'),
(879, 'https://fcm.googleapis.com/fcm/send/cH7AbiL5hTQ:APA91bHcgxXbcSii8_cqN_DF-e9NIY8jJlZovFOQ6s8aB8hanMoUC01nEx17CCgiO9waFLyTTJ1RxpM7U87_I2k3Nn1Xi1uuPR7vHrGIkXRw8Hk1qfsMN3ZJ_2JvWLDy6-lh6A-rkDT3', '2025-06-30 06:00:50', '2025-06-30 06:00:50'),
(880, 'https://fcm.googleapis.com/fcm/send/cRqB2hYmPZU:APA91bEyqwHpc6Py6XfYdcCEfZyRv_RNe1dILwOupxSrJbd2y-aKtFsgn8aD1mJOD2jAje335tV0k8YNRFBMLVOiMb9MA9nns8_XPJOiiqjYBocV4OJmzbXYlcztUapXomcKoNGawojZ', '2025-06-30 07:42:00', '2025-06-30 07:42:00'),
(881, 'https://fcm.googleapis.com/fcm/send/dDg-j9lqMHY:APA91bEXo7FEEDO1f8NqYcTO-xoyVQEeefYjQQcaGMD13FZm4E4oLohc5JfyncXt4eToYyXDC1r5R7RTGYCDVve5DOzldbDIkZtQshWxtYwuMsyngTsjNTk1o1JNqIVRKSTH1_UurTt2', '2025-06-30 17:49:01', '2025-06-30 17:49:01'),
(882, 'https://fcm.googleapis.com/fcm/send/dRAnSFO_iZ4:APA91bFtcM_GbG6UlrAsF0d1ADDXGV9cg6cjQGJbGYltfRuzgIhTkjMrR10u7gVLoQgn62axczL6SOSWYB3bXIOjuzC7KpQTWCvgB2VXusJz8DtDFNYLoMWjdSj2oRYj3GcWVIcbFEtw', '2025-06-30 23:28:29', '2025-06-30 23:28:29'),
(883, 'https://fcm.googleapis.com/fcm/send/fHdeIUYhg68:APA91bEw861drgbO2utRzrE0StkMHQEYQFcrYmCu7aFObtCA1xudFk8BgsnEpEv9oSqmRGRPOJspEw2vQKD6aoCYG_O6SlQQV7mT_F_bSF9l9FDNzw5ZYnEY74IZiykDHJpgcNDqZ0Zx', '2025-07-01 04:47:27', '2025-07-01 04:47:27'),
(884, 'https://fcm.googleapis.com/fcm/send/cHngHzEEGiA:APA91bE91uaRMMzUfSIn34pRRjOqYUnLFEbXDhz-rJxMjcjNKOb7PBaILMJcP-0wxRWweQpzDe5UoxtosF_lvp83eMDoJEK5UuemZwHCJd0WrixFNzNKxL9kII9ctX_x97a8QZ9hePxB', '2025-07-01 19:52:45', '2025-07-01 19:52:45'),
(885, 'https://fcm.googleapis.com/fcm/send/emK98_EVOYs:APA91bFjhJuk4hkWK7CGNBYGgu2o068-bXOQOSAceOFPsEfv9oOzbXm6R-VuuPcj_LcDY1RRN_E3SMG2BByD2yMCNy7DhUH_AWWiTZsBFVUh2GxxtoiH6DIRyB9vuJe06RPP-F16fp2f', '2025-07-02 02:36:24', '2025-07-02 02:36:24'),
(886, 'https://fcm.googleapis.com/fcm/send/cooR4pIDVRA:APA91bGLgxePns54El0WV60ZADZSMPrd2_F1lkW0BBSGfXpJpBbWmOGYd6KIYqT8C1i7xik1-W4DxaP28_SZUkSUEWbdoKvGRiMXpxk8YqH6Y82U06CKF68zT7_dDRbGP8Zkvld-0Pqp', '2025-07-02 02:38:49', '2025-07-02 02:38:49'),
(887, 'https://fcm.googleapis.com/fcm/send/co6P02nPktA:APA91bGCNlaQGCO3pB2HLb2tnnWgOi_J-kyEK2SJ0PTIRKxt9VkVv9Cnk6gjuNkenL1b0C0pQk--ytoRPvR1sMfER5pJvaO7QEHBdVkpg5KHfQbnFV_Jzo1nh3oQU94Wk9uWBo184Foi', '2025-07-02 02:40:51', '2025-07-02 02:40:51'),
(888, 'https://fcm.googleapis.com/fcm/send/fhiAC_0Qhek:APA91bHFE3VVc0cZ2RnOhp3VjwmIkT1yqENJJ8IO6UhmMB_ZYl7Ig4H9wxUPKNLd5ppuHZ_Yr_Fxiifu-ElFrG3fHnGW9CsuS4g1yTJyZSTtfp-VY9XLCkC8i3RCO4QsaKEL4koCqp82', '2025-07-02 02:43:14', '2025-07-02 02:43:14'),
(889, 'https://fcm.googleapis.com/fcm/send/fWoMRHusAoI:APA91bFNvpBi0xpUixiqO8UF9otIabQIGlteYb7LKC5F2POR3envvD6zPIMY645A-1W3Rg89knb440khUtFwgf0rn8u5TLNGDfuHqhJODwLaMOqQtSvUB60E36u5kYCrBd03Pv7X6SHn', '2025-07-02 02:43:28', '2025-07-02 02:43:28'),
(890, 'https://fcm.googleapis.com/fcm/send/eX7cT2rIInE:APA91bHgBTPAFgO8ICsyYio4zPcKcQ4UqJ76UeCj6_3S7RATmgfg1T6NdIMrojyiE_-CoAVaSZbgYisL9JWPcIQQh7yssuNATZYG_YeMESd8YhJJjaTrDhs2sloN7ugpSmVOzLTEIi8a', '2025-07-02 04:37:26', '2025-07-02 04:37:26'),
(891, 'https://fcm.googleapis.com/fcm/send/cYBROJth0WY:APA91bEoV7vHrLyrjHYo9RmZh21h93pyEnVvwducNQAj5eKOGl_bW3j6loJfs3k9zobeITQzcwnrVkHXGdM5-lnSytPw4y6d05pSQdPG689vBQ6EXe78FmfxAoDiRlBP81aMu7fWGQ1l', '2025-07-02 04:39:06', '2025-07-02 04:39:06'),
(892, 'https://fcm.googleapis.com/fcm/send/eaI8aJaPSNM:APA91bF-SXFZDNlL5tfxCgnAjzVW6DDSOtiqAZGhfiQxzfGwSy0lFa-olZSzRtRJHR0-9MNdwQ86mKBi3m295qiSGEUdufEDibolT4-qxFSOigQIZkQnNaz1adlY91GNYmCkrB_7290Z', '2025-07-02 04:43:44', '2025-07-02 04:43:44'),
(893, 'https://fcm.googleapis.com/fcm/send/fu5TFlE6OZg:APA91bF2OzhZ9HkydK-Clw5rOSeZTk3bKcKYpbFELnUhN1G77_RuuT-GGax-lyB2ELiUUz4PExhJvZcFgQ6p24AVEIy6Yl3EzluuqEnhjdzUz4DxC9e11FcXHwVwWAb3T45gfDtT6IkX', '2025-07-02 04:51:54', '2025-07-02 04:51:54'),
(894, 'https://fcm.googleapis.com/fcm/send/dbOP9i7tQJQ:APA91bHVNyd96AFMa5rgTKgjDHW0-6I23dWn4XJ0G74BViSivuTBfnQuul_LUPzJg2fQFKiCIQ3YDezbQmrXsdEQVZacQqLqH8f-ZVrBynBDrzWsQZxk6xMHhcM26oedKCoP1e2iGujV', '2025-07-02 08:41:52', '2025-07-02 08:41:52'),
(895, 'https://fcm.googleapis.com/fcm/send/cVMdTzFL_2M:APA91bHR8V1JSKa9eZqRp-Rb8t45ACA4nybtJmrlYMtNuNOAJjgRFqybJwnlKFIoT9_2wnKUTnGR0BjG6Q-ddZPhsc-eAHEhUR5NBooYBhLjjaYf4l4uVMFGdD1yptJb25OufJON1Dka', '2025-07-02 21:02:54', '2025-07-02 21:02:54'),
(896, 'https://fcm.googleapis.com/fcm/send/f9E0xSMD-OA:APA91bGPPoOCgfHRj1AvWSo-qiOhAvajH01N2mjqdwZd41eyM2fOSOCe1TbfDfen4e3AxBbhTyQaPlqH5ObumLQL_uEKLSZdVR2nA2t-MOutCO-C15mgMGqrksv4lLuFIMm_ZuErJ4pT', '2025-07-02 23:53:45', '2025-07-02 23:53:45'),
(897, 'https://fcm.googleapis.com/fcm/send/d1r9kQwuY18:APA91bFDnt8f8c0fNqO8z0KYDgUanHewvx37Z0E7Wgjl1mNBH5cVzbmuAzBtl947QDx8RsjFWA2WDbOeNrrm9zs7X49nbxIeQkFK8ir-G0Euwz75G2DPrNoRTQoyS-ozCTOdqgyjep21', '2025-07-03 17:32:35', '2025-07-03 17:32:35'),
(898, 'https://fcm.googleapis.com/fcm/send/eL309CcQFNI:APA91bHozT5jFsMv0v-UEe1yQpjjl5oucnD18TDycXDHQylScdc7kzg3hjSezNijKAWRwHFC5oPwfQpOttHLryudPHTzvL5lVgOkEepJdfs73BRTjhPPEr1JHB9T7E14k5G7pu-50cms', '2025-07-03 19:31:02', '2025-07-03 19:31:02'),
(899, 'https://fcm.googleapis.com/fcm/send/fT-6eRZD83Q:APA91bHdPfaRaVFpXVd9NwyMkzo0KznvYznZq85RRsPeLVhcrzZ7xh_0byE9ZccBW9cl-UvEsfuG9I0QdIWLgyt-ohqTGrbYL4Ir3bkGSnYQge2Me4qz3-aLtyWTHrE_QDickjyUT-2e', '2025-07-03 20:38:00', '2025-07-03 20:38:00'),
(900, 'https://fcm.googleapis.com/fcm/send/fCVXzPF7CmQ:APA91bGBR6vEPwplDCrlpJz9WxNbPjLCnenT-ykVRl3W_jZmb5s2JHlHiraODqJ1xuWpyin9YQclG_H7jjCV-oqszUnKmT4bX0KVMkHXSOmvNFQGsdBUnFGcosY_rYt3EKHWTjfZ0qZN', '2025-07-04 02:10:25', '2025-07-04 02:10:25'),
(901, 'https://fcm.googleapis.com/fcm/send/fKuO8NQOzX4:APA91bGlwj3Yq4bXXwXF1iETfvi0c_ZfyBEBTzGK88mOUI-0oPNYXd5KIsPVj-VQB3qi-1d33FR1asi11H4uVf5Tg7VDlQvfbN1OPeDLQhEwxXlf-j_ibo2gTZbj4A8A96gcJG00S2ye', '2025-07-04 02:56:04', '2025-07-04 02:56:04'),
(902, 'https://fcm.googleapis.com/fcm/send/fFyr8XQmxs0:APA91bGRqdqv_aO6sejxvYl3p7c00xoPaff5CCiTrbmBfnOJFQIpWONaJiK47hRfqLRMYpQYbmd_DYFdOnF-BdF47ksTnjrYzYU8ME3teyUjGRWBIjw7LfGUMD72MW2I9G9DHH8wQV40', '2025-07-04 04:14:22', '2025-07-04 04:14:22'),
(903, 'https://fcm.googleapis.com/fcm/send/dK1Rx0g0Qto:APA91bHeX0ESsJ5_Y57ZUMLOmEv9XIIsJeiz1qW-fGQCFrOHvwhxIhb8MW1LIGW8Ts9l4tkrIowrVpEA4rwblkQiRbWCZHk5fniZUOry6RqCzvcemDfyXmabtR1RLG0ExE0gaEdyKTRM', '2025-07-05 06:45:52', '2025-07-05 06:45:52'),
(904, 'https://fcm.googleapis.com/fcm/send/cFlyyhtYWBA:APA91bGFgDkrW4I9kNUARiakPGhFg4FeRa7hC6zhu-S4xvZfq10P4X96Q4hXeqL9LJ2KAIy_pmRAVz-7P-9XzsWcztZvAIiCQGm9kw_o63uGrieiDiEWf4sEDFK_MAzSAYXK_q_s4N5l', '2025-07-05 06:47:35', '2025-07-05 06:47:35'),
(905, 'https://fcm.googleapis.com/fcm/send/fDyllPgkPUY:APA91bHpkNglhvKm3oBMLk8ZQvjaCcNqmcdhzgCkm4nbqj97zgO6Z-w3ZkHfkM8ZtZ6G59QyiKIlpWODiPSbHVgS2LRVQySL6d0KIBab6zsjxNeXT5JB1g77dZtxAy3JrVSN9woirLYB', '2025-07-06 01:08:54', '2025-07-06 01:08:54'),
(906, 'https://fcm.googleapis.com/fcm/send/d6UY-JFbSv4:APA91bFNTzNK6Fax7bcNBIomXL7kVKjoPAcI8-uMp7zupzT8pvTM5EyUl8rT52ro3fgvqvhS10EbEm-DtiR9vajABNaLyYQszWFKBiN7HhWrP7_iUYxpBdGXW5eqw6qpfZvpSF1nSkrJ', '2025-07-06 01:10:03', '2025-07-06 01:10:03'),
(907, 'https://fcm.googleapis.com/fcm/send/eSZG-RsFkv8:APA91bEbMNr3VoNCpRp2bAxXJ_O8b-sem7mfgfw8j3L8Em2qSir_eKkWVO0kO9hrmOU-gTU5Vro8yHNMKOWN3E0pniLouBx3MVIO7g6WA7XFlYH7ED5ftjc-fM3UqW2hXVsliest3LMq', '2025-07-06 01:11:24', '2025-07-06 01:11:24'),
(908, 'https://fcm.googleapis.com/fcm/send/fg2Zo-ToCzg:APA91bGf40zfDQ1aAJofxYvBLLbO7W8zpcZ4o9Uw1V4OfR2Uk2QPtmZU_WHzxbATZHXlJ1Qz94YKvAR93zWfHYxI2cGLRDl4rfVK2_zALVJKki8cvD02EuRATk9U7sXjpt_HOhQBpqUD', '2025-07-06 01:11:52', '2025-07-06 01:11:52'),
(909, 'https://fcm.googleapis.com/fcm/send/f8qrp-IbGfg:APA91bH-1nYXWMgL9iHb5p-1u4cn60q47LAN9lj-09csViLqrQKnWxHJg6ENpJZhMm6iWrpkgET7le0WQQADfnFVHzBpdFk7ZHnWp4cJSm1hlXiHg6nwgF60X6MTkx4XYmyL2KfolV0G', '2025-07-06 01:14:13', '2025-07-06 01:14:13'),
(910, 'https://fcm.googleapis.com/fcm/send/cfrL727Af68:APA91bHyPIzMwMjirG4WF6nbTxCY7pXgZs3WDusSwnznfQl83Jua2rvpPdgbuT0O-Gh_sHunj6NEh9GA2XefGtcg8rHBraT95K1Y1Wz71InNvg6_xcxggjSkdA8vvFffM9hG-z73N9Z_', '2025-07-06 01:34:31', '2025-07-06 01:34:31'),
(911, 'https://fcm.googleapis.com/fcm/send/eeDbQR89NTs:APA91bHFaRdD4Nia5OZUmNLT3X6k1o8ati17eYfZ1P-Rbw6qFEO-Tjnxm4k6pfzIp3WypLUR4DBp5NaKoKKNMQNbLOySNbecXmbvSWovSYHgnF4QAuKx2sbZLKLDGXwQkl8RkLoi9Bzl', '2025-07-06 02:55:30', '2025-07-06 02:55:30'),
(912, 'https://fcm.googleapis.com/fcm/send/deusi9vnTzM:APA91bFo7_f64Jc97z4aoekKg7SCAEZAqdC7Ix4z6fgKrdj3F7lMAxdzOfcd2BwGFaWnU0Ep79a1JK2gU0IGNIWErlJlqeV92M7I2aapipmn0C8lDQrDMHlPQqDwOvK-K2aJXzC1KcU6', '2025-07-06 04:44:31', '2025-07-06 04:44:31'),
(913, 'https://fcm.googleapis.com/fcm/send/cUV4tF4YRuM:APA91bH91gPdTfJcFz9Btnt1hh-he4woqLBZfjRKuiGZ3pOaNn7wEcHOAGtKQyUZrdbxdHEzx39RRZkWN_D0b4JMvRCJ_U-dIJju8wd6ytOoSAX46iinNn3gYMmi1k0u_7WsbnMVkj2A', '2025-07-06 07:09:05', '2025-07-06 07:09:05'),
(914, 'https://fcm.googleapis.com/fcm/send/dEs-EZazGdo:APA91bF5uMHHW0KQ-9YlPNuHF7SgEOFVW88xUYXocA3hP5YdiF6iO1aDrCFWKqd4kYRuDrlIjsLtt0zs8_26vyXNgLaZnJYkUeT7s8xR46_Brmmej7C486bxY0FNLMkdy19RBUOoEelO', '2025-07-06 07:10:27', '2025-07-06 07:10:27'),
(915, 'https://fcm.googleapis.com/fcm/send/fgTqhc132JI:APA91bFnEGg2kUQ-RJvMMIZTP4VxEPX8xhSYbdQus3h21BqoDA26aLDXpKdpTs3lm7ntdfUxZSvqFg8R_nQoQkmr-B1dTHIdh4VDahMSKc1C2e1GIaaK58MjY78OVvmyNwvrf6r0O1vW', '2025-07-06 07:13:54', '2025-07-06 07:13:54'),
(916, 'https://fcm.googleapis.com/fcm/send/fFjANB5JJN4:APA91bEyepL4bGi2W1ddfMktdp0QBZbp-oW21Nj7_sQ7YANCw1XJnRxvB0xAMFiLVpOHvrgEkX3fcXgRkPYEQPdfoQgF0riiaszNfKOX8R_J6fNlAtwYVGB69EJpXkRzxw4W8v0La-4Z', '2025-07-06 19:12:30', '2025-07-06 19:12:30'),
(917, 'https://fcm.googleapis.com/fcm/send/fHIaIxEUFm0:APA91bETFykSqGJJ0Sj8FcWwkeTPkzYVKlQ1SJDpmKf1TUpAAKSKBySnSos3XKUGM0ox6uLsn9aOuJJYIFDjIbAgyz313ap2R08wxIJed65FFWol74SxcVzkh1bS6VYHyQtMVY-qdWad', '2025-07-06 20:21:09', '2025-07-06 20:21:09'),
(918, 'https://fcm.googleapis.com/fcm/send/fjpsI4-cy2w:APA91bF84ZMpno_jCmcqEG6EMo6xxluR47NuEqjHoqA6Uj9FxVei2mrQgYdQlOKHsF_kh6wFexXUj5KqbyUnz2yVECE9pqW74vttqZENmAyggVGged3SE-0sQqxQBEgg3_TJG0JKeIkH', '2025-07-06 21:15:32', '2025-07-06 21:15:32'),
(919, 'https://fcm.googleapis.com/fcm/send/fffxiBLGdUI:APA91bE28o52kAZlTB0pT-hVC4Rso8cZ9AD4gKEqQtYhcrGA9AS9GaJB4eIHLprVCqlm6WmBJxOyJC78Szwo72QyFJEcofc9FONf8FAS674BaPs5fXqbymaINwV4XXZBkYKGSdljXSG3', '2025-07-06 21:15:35', '2025-07-06 21:15:35'),
(920, 'https://fcm.googleapis.com/fcm/send/eyBKWbUBrdQ:APA91bH8pQm7Wmi32_XxJ42Mo2b-K3sIIW2GgQoExy-VZmZ7itBE2sAcFZxC8RBNrHmLFkK-IQTvNKxHVyPpPZSVYAIEHnha1yzWHuszJN2ZaWC76z7n4iQZLbygmEnFLBXtZpiF3ndn', '2025-07-06 21:15:43', '2025-07-06 21:15:43'),
(921, 'https://fcm.googleapis.com/fcm/send/dLI7BEipZuQ:APA91bFA2vDVlj0tz-r3QRGRb2b9gxTnpRglvH6-sbMki9QXiyytObUjK6A80TzAaC2hsztGfK8gsrqdBh8GxL1z5sCoiPfUUaP9iMhEnrr3fvTtAICgMW3JSylOGzrVXBy2u75uqEPb', '2025-07-06 21:16:04', '2025-07-06 21:16:04'),
(922, 'https://fcm.googleapis.com/fcm/send/ddoZ7Z-MQVI:APA91bEf_0ZPiHxieq3b8gPEnJsgH2Ds6lnX9kFwL1siDLJPh37QWbAFtecjJ0ztln7Gy8H3w8f7AZvTFlUWSMyb50jfxkyCJp00ZwChBJwnSRMf7eUIGpSLvE2BP3lOFZNT5iNTH92o', '2025-07-06 21:16:31', '2025-07-06 21:16:31'),
(923, 'https://fcm.googleapis.com/fcm/send/fWa_SnpE3xo:APA91bEkdUJQguap45nG2o7Od-xBW11mmIOVmwk-8cf8K0DCrj-YODVziQfnVaXinYjByzjmw5lM3zYlFAACGt5qsnzV-mnG3HO0k0goIkj5Ws98Qpz4HeemZIt0sUx-NNxkjyjzyJt-', '2025-07-07 01:06:11', '2025-07-07 01:06:11'),
(924, 'https://fcm.googleapis.com/fcm/send/crxNOYiNYic:APA91bHj5mmxScbSud3YtNNpeluc8KM-yXXsdhpweccPuL2VdW1rSBbLc8Sg3LQlH2mbF79TbG6G6XJNGTmU7ODRDhqxlGcRPbWGoA5zi1G3uxSQIdF4Ah_HCg1L3yO4kMsxcIqJL1X4', '2025-07-07 03:15:11', '2025-07-07 03:15:11'),
(925, 'https://fcm.googleapis.com/fcm/send/fTeXD_u3j2o:APA91bE4nztnfV8SSNhD7Aj90SGuf-ciLtqwTM5m1f7NI8UFtN6w2W3Pwi_uCXzqNSAWlH3RDYbnnUHyhRFMxKiyhgEXmUi08TpIS3M5c92mQC0_uLQ7rTYGAVTorUjSiamQXGbvm6Io', '2025-07-07 04:39:35', '2025-07-07 04:39:35'),
(926, 'https://fcm.googleapis.com/fcm/send/c3j_ySgWlZE:APA91bGsbfxqNjkR4Pe6DlLQJnsDzsm25nPoG8Q149vXLvsXbhc9DKW6C9k8CmRqQnDfUTFjddFFn9yQxwcII9xdlX3RWvgiak1W3aYEanFqGma6GHm1IX_jTlPIMa02kre6eCxRYHYx', '2025-07-07 04:41:46', '2025-07-07 04:41:46'),
(927, 'https://fcm.googleapis.com/fcm/send/djvLVqIvAf0:APA91bFH1GwXCsoqOW2icnPZL3eTprTsYZORUQdU0FakA4jXrOeYLzMtGvQPv_A5f6x9E76Fy5oKGauVWT2t8RbU_UP0xqJT8NaaKAwb8n9SvJpPeOtIhqIi5nlguF9iYnC8-zW5TXmi', '2025-07-07 04:42:33', '2025-07-07 04:42:33'),
(928, 'https://fcm.googleapis.com/fcm/send/f7LwFLhCqF4:APA91bHS3rUTXOLNedn3tgI7JfXbbKL_duHSf8Le9qKRzp6ys5M1EEAntsS0PgD1-Jelgt_tV3lJ79GNOasQr8DRA0W0h9ODsbORGTkgZFulq8Q_zbixR3Zl9oTfF8tvwyCU88woSAJp', '2025-07-07 17:40:56', '2025-07-07 17:40:56'),
(929, 'https://fcm.googleapis.com/fcm/send/dBgnmKUgxkg:APA91bG0wpX-gHm6_AxBBeRLAmjcYTqVbHfWs0sHLFeUccseimWNod49nvK2Lo-jRjhMR8IEBVGD8yv9cUtAv64WCffEvePvu-oT_XTeQXxSR9LpzYs93rfmQoFPMXwqvcDosUYcXtHa', '2025-07-07 20:21:52', '2025-07-07 20:21:52'),
(930, 'https://fcm.googleapis.com/fcm/send/chvyA-DfaaY:APA91bGV7OmY1TruaIityQZV2KeEzIG0PPraga6zsxzXh-Fe0-N6dpVZQCzQh4QRCSQeH8ZD1i4zDJX48uSb-57HaQFIcxQYB4COtbu0EOGO8cykRCQj_5sLZUV4veFM8U2K4ktElAzC', '2025-07-09 05:49:04', '2025-07-09 05:49:04'),
(931, 'https://fcm.googleapis.com/fcm/send/cNyQUCPpvjQ:APA91bFCvRFKBG6RudipSa1FyKYRXpFhXcH1pMWwupVlZ3Sw5EufoT7kcvc1au_UdGuxA6mmVZsyZf5Rf088ueu1-K2fZc9we8FDUXBCAqcD_U4ESxjLzlm4xVOSiTSlxy82LDvEu3dH', '2025-07-09 20:52:31', '2025-07-09 20:52:31'),
(932, 'https://fcm.googleapis.com/fcm/send/dcR9Fclbd5I:APA91bEFXm5J5oEH_YDIFEmnADoiaaZPUPBeMb7cOB3zrOL-bf9aE5sq2-i_Np4VwK3cuOhTNpEZD-YZIzST2FjHrNn_7aAui4tdZz52iOLTdUIx8fY-AhoS80ivI_uAtJGMUMI7QEhL', '2025-07-10 04:33:11', '2025-07-10 04:33:11'),
(933, 'https://fcm.googleapis.com/fcm/send/cTLigwPH42c:APA91bGOd5kPU_FVfU6U68zfPUFwIC_hHvYNDvhLcLgoK8FI9nxGxNiOjlrr627hr_etK8eCP2HMJbogfEiLx8P-xm_pq9tAWmHnZNYVErgWkyt8x_7gpzjLMFgCz_ZaO-_vJVIrkFc3', '2025-07-11 20:10:22', '2025-07-11 20:10:22'),
(934, 'https://fcm.googleapis.com/fcm/send/dh2JR0XUq2c:APA91bGZmuupOZN8-uWYotPCUV04ITFKvyu-u6fK-TPAvEIWup0cK_Nn_EWrC4HZj6Jy2Hhi3e8nh_7k6bMGtN3bkgq6E__l7J1QPXNfZLKclxkxu-BVZAQ1yNvpPVBOIM0U4mY1SQ-P', '2025-07-13 00:24:53', '2025-07-13 00:24:53'),
(935, 'https://fcm.googleapis.com/fcm/send/fxTmdzApAhY:APA91bHuve3Gr0S7bImIpOyxlDOLiNB19pTuEpsMzDc3H7PXdwfeQWdXKl2LmEt8VfJuH4Pnpfybrrr1rkOo2pZ_UfIPcj9fL5_G1DOnI9o5cyiEOvwz6egGf_ml6hvs5mC3hYrPhPRp', '2025-07-13 18:02:47', '2025-07-13 18:02:47'),
(936, 'https://fcm.googleapis.com/fcm/send/fPzbN2WE_rM:APA91bGr2z25BWwPVtKIaD-7lqgSa1AFBY9IiPgtSbSIms_s0MsEnZvzWOVp_nv2aaN0L24Qrf6c2YUlfq555DUsBQLIabAY4tfuQcuErMz_s27r2fwhrKAauLdGtT9DNwb7KjuK4Jxi', '2025-07-13 18:05:25', '2025-07-13 18:05:25'),
(937, 'https://fcm.googleapis.com/fcm/send/d2ifk11WtiQ:APA91bGIzKU5OCEZeSL5eso8GCoJOGdkGeVZr_UlWtnZptwfUkwEuUlDL5DNmdLWt1gBP-WTDxB3IxaQ5ALtVhKeMRMByYnCgrtKoH5Ua0X_rx8v7PcG9h7Mi4D2H3wlvQa7kiwnkKds', '2025-07-13 19:07:30', '2025-07-13 19:07:30'),
(938, 'https://fcm.googleapis.com/fcm/send/d3nYYoOsN8k:APA91bEeI2-ZotLaSjZBosslyCu06jLqjELJiFwLFKO-tyEGDcOkmpQMW95CUCDsBap1HjFdbX0cqdbmW-J5fo_iTy1fU2SxLkBY2meZzo0CP_8ytPgrKtJMNrdk3y-yWsDytXxblvX6', '2025-07-13 19:16:06', '2025-07-13 19:16:06'),
(939, 'https://fcm.googleapis.com/fcm/send/dTDIyeSuoYE:APA91bEl4yVmkAQUKCTyFpCNPIJuhMUin4bq05vDUVIZBQoLYFM3VAyl4Ane-0ApgqukfHpUKob9N2pu8SOdYCDSBLIl02JnHDAJUyGu8IwRyNxbLv0d1UjWGJVx-bb2YNnpeXwqcCrI', '2025-07-13 20:31:07', '2025-07-13 20:31:07'),
(940, 'https://fcm.googleapis.com/fcm/send/eTczmUmsewk:APA91bH3mrod--108YaNHqZJFnebyQhJdXCtEGdEwnkU4mHSRuK5b65BzP4LsYbmdNAA9hPRbzW-6n9JIcaBBw6dVe46JHhCo9V8eKfC2x_jIsy1aC0Bap8Xd2N20ruSRWCcqFXcX73g', '2025-07-13 23:15:53', '2025-07-13 23:15:53'),
(941, 'https://fcm.googleapis.com/fcm/send/fJy22e2gPyU:APA91bEyJlKI3D6JuXNGMuUI92d8yFPeVaStAZCj3Kp7LYTjyOsIkriUSAdUvACsHMPLPym6_yU0VhcgQSoVlUtcT6zW_W3LLty3xh3qppcai_3IuVZEFRSAyG0UQUz9XoLh-b_qQFmZ', '2025-07-14 01:58:34', '2025-07-14 01:58:34'),
(942, 'https://fcm.googleapis.com/fcm/send/cE15b4ARioo:APA91bGU19xGDfn10tqfQTCogoDIspYRA1HTyeuAVa0CBWzLrRzTsZhVnF3BLH9u8Rn5VzFR2FaODqHFKXlDepemGBJhYZrJrZrkLVHn19yroiSCUEcCUOCVqrxrbvRFyw21fvfPFE87', '2025-07-15 02:44:50', '2025-07-15 02:44:50'),
(943, 'https://fcm.googleapis.com/fcm/send/e2FbBqaiQmQ:APA91bHVr8_QjVWjfhgNUqsK20vjOxJeWEyvPyXZIaSup-bMvK_BgDBAFrplxDGpdNJBtrgQnIVU-owHX2s3DmmSY7gf2gZyf7lqxWlntfoi5KbnzKBJYzivepPtm-VXx3AUzraTf66C', '2025-07-16 00:51:02', '2025-07-16 00:51:02'),
(944, 'https://fcm.googleapis.com/fcm/send/d1jzjNlffuc:APA91bFG-4LZZdj3NDp_CCrZCcD8HPqf0kNdEsT2VHkVLZWh8cEepkIm-kS5QO2SAwDm3rajeqLYTcvxFmLIfDdS0Z0PYdcs0jPqKLQLBuZxTR656p9v-qrJe7osQzlUimcw6Tvgq7UJ', '2025-07-16 23:21:05', '2025-07-16 23:21:05'),
(945, 'https://fcm.googleapis.com/fcm/send/dvNs7viW0qU:APA91bF5xOnwxFnCM03nh8Aqg5pe7fuQ9mpRfvtPqByFy4Fho-zNwIl9PoC1NjiCS33TAuIMKpkbKX8tFeTUzcXMRI6lm1SqhnZctEhmWUuAtvQGRwLyAbMKjmySeqNhA7Laz8ygwEAj', '2025-07-17 19:06:48', '2025-07-17 19:06:48'),
(946, 'https://fcm.googleapis.com/fcm/send/fpFiKZS2SE8:APA91bELluzoSpRnnoDStnLFtoGlg0JmDARDmsSqHc8GjPp5IfLt1Etf-qQbfAyLp3ZdXk8syp3gauyhC2nSfi1k7zST0EPiUFJXkbjJ5bm7DdTQUYXhaK0CGBqk_SAHwuLctW0WzdCo', '2025-07-17 20:09:06', '2025-07-17 20:09:06'),
(947, 'https://fcm.googleapis.com/fcm/send/c8B4RI19QBw:APA91bExlxbBikxQd4EzYgrp8p0jrYKYzKz8fXJsdiTOV_VUdZRfj2Iu3lYzrJxxyKlPblVTNtYKH3Kl-GGp7yIiPnk29AdRu9rTSiqQtTY8zp-xX6V5Ybm1loUm5_ChVpXSLvnker0K', '2025-07-17 20:19:01', '2025-07-17 20:19:01'),
(948, 'https://fcm.googleapis.com/fcm/send/fko_4KH3vv4:APA91bFoSEKsdtNedG70JSk_7bIzOkIF4S_C7lDkL50wArXAkDuauMIAiXddvcFQQEQFbGVcy4avUl_KXepQ1M22iElflXvUDazB16RlSMbKRMIYE4tUx7yEmHAFLZSy1bOgulFla1E4', '2025-07-18 19:23:39', '2025-07-18 19:23:39'),
(949, 'https://fcm.googleapis.com/fcm/send/clYzU1Dxzpw:APA91bFah05YzghUpPQtYoEyKvMDWPwGJkNKTEakBQ0lOf_AwcpXq_8uoEsV3MyTezAjUii7GEpg-kRJjLXgIAVijlUzNBnOSDvGfmTCnJloJ5q1EuUde7JJ_Ht6c3jraZGD3Q_KBNKG', '2025-07-18 19:27:25', '2025-07-18 19:27:25'),
(950, 'https://fcm.googleapis.com/fcm/send/eAHmXFR2s9o:APA91bFQWQEaWCQU60VLjEQl9lUetbxyDtS9fGcL6PxI3y_mOO6tmO_X4IIp44h3Fq4eSF5_KcqWc8UzpLaCPsL_5u9mZP0LConlquTcht5aVhzLK_PTiRiAVTCbh17vFW1RsuZIHsin', '2025-07-18 21:57:22', '2025-07-18 21:57:22'),
(951, 'https://fcm.googleapis.com/fcm/send/ejRuxN20EDQ:APA91bFSgZQHDflEJSi1jsJTGEdkcdsp1TyBavR9DeJIEmkAxNA-ZTOzboMaNrusnn2Kv-8rTEa8HGq80qUQri1965LlBVnOn2BfbA5BG8bEaC4E76C8_41hGsYJfDljxK-R8VfjAqSf', '2025-07-19 03:17:18', '2025-07-19 03:17:18'),
(952, 'https://fcm.googleapis.com/fcm/send/dEb9-QwV2BU:APA91bHB9__jSmJ_ixVkF00474oeWktlu3WPipNN5Mxc5R86r3KHfWCPaIBGxYSwVf9HExVmry8P6hZrwpk0q3KypjRyLtjaiBklmQs-nAdHmWgq_X8O9Hd0rClM8AZrShzEUA078USB', '2025-07-19 19:11:55', '2025-07-19 19:11:55'),
(953, 'https://fcm.googleapis.com/fcm/send/d9_BNj29HGg:APA91bHsVV4dPo6p-gJ80JP4oN8YlqHIJItwfBYoMGhnb-qkAb59Jo8FXLINAJILXa4PSnf7VHopI8WlD2xJB-AZkBBBtb6v8fm_qY2UX2IFdLpfuI74LsAoKrnLDnjNCSCfpQ9-00_R', '2025-07-19 22:27:18', '2025-07-19 22:27:18'),
(954, 'https://fcm.googleapis.com/fcm/send/cF73FptPbF8:APA91bE-IPiPMXiu_D9-klGd_Uuj2Nt0gE4obLnbkDcHhBZAu3W2OIqqgLmHy5TSlfgDZuc6QXqMQMNTVplC0CuNhV5D3HTlgRvMU-C66wGwCgB1_qByHKjstNreFxDRv85dTmSlCGwz', '2025-07-20 21:38:10', '2025-07-20 21:38:10'),
(955, 'https://fcm.googleapis.com/fcm/send/d41vNsWqs94:APA91bG3WQDN08dIrCLzssLgBRF7Eo7ATeRacQdcWAPkERal_TUFN3w_hLnlbuwdWV3xKu-SYXyYbbKxUtXxNSEd-w32xo2JKnXkQ6GhEUpmgM7SvRqEQCiYCIAVvfZ-ANwFdTbeB_Ra', '2025-07-20 21:59:08', '2025-07-20 21:59:08'),
(956, 'https://fcm.googleapis.com/fcm/send/ek7I4uHW9oE:APA91bHx4u_NjfiJ-RM3MqDE0LfI9r9zH4KAyVYPrm4s16shldWaUAflqJrMMTn6LKGlwAoiq2S7kHgoh1ESB7Iudh3FpzKe7kaEKuXgiMdfC-RDQo5OvHqtrBmTg_z5wL9NydJnObly', '2025-07-20 23:26:12', '2025-07-20 23:26:12'),
(957, 'https://fcm.googleapis.com/fcm/send/ckcXI5AVrWQ:APA91bFkigkNtu_Jz7mLzNJvddpWrQWqusVRqPrjmJ9Id1cujs5LNO30hdeXOl5DPCCelkYjOCYfDxQwJYHE-6Jgq7Il7sTStNzgw2B3hgmePnXdVruoo-qis-U7FYzWRt8mr45o1mb5', '2025-07-22 05:18:19', '2025-07-22 05:18:19'),
(958, 'https://fcm.googleapis.com/fcm/send/cp-AnQeeMlQ:APA91bH_K8idlsF9gb0f7me-nki5pP_T1C5b0a9yig_IEkMDMdjTuizYjlFNR39gWTP8dstUXi5OoMdPCYbFQtj5FR3maFpukV-4Eau0-AuKJIXPrKgd6J5LPqrwxImIthTWlGH7x4lq', '2025-07-23 02:38:44', '2025-07-23 02:38:44'),
(959, 'https://fcm.googleapis.com/fcm/send/ctxE2VMtwmQ:APA91bHbMr_ebSbVU0kdvOGkOXhl_6bNQbv6eBiFWGzJVl4eQ-q1Y9F544jzntbp0uF-FY_gtEOOJDuaWx5evr9OrMOw4feeeJ_L5sMTcpXF0qfeZ92FrhLMya2uB3P2lKAKxIjF3ILD', '2025-07-23 03:36:26', '2025-07-23 03:36:26'),
(960, 'https://fcm.googleapis.com/fcm/send/dsCrAqOUWRU:APA91bGLNKK1CQlu1uzlxrMZJjrVbddk4vO1KsQeTGUVNvk_-mFaDMiQVzLqnGp7Tcf_L97mfyBJcHmLc_9dV-bbvJMd6JqoHSxx0cqwcwDD73P5fEERQdaOSIXE5gpubn6WGmNqJQ_f', '2025-07-23 05:22:30', '2025-07-23 05:22:30'),
(961, 'https://fcm.googleapis.com/fcm/send/dofRDxoee6o:APA91bFWXJf686NkF5IivOTYEcNiBTvWmU3hXvX-OpiXx37KV1efQi9uOUkqIAK-TEsbHCGawKgJrEOb0_Fbt-_sk7bOL35rPv9YeWUX41V6jsZIe5YMWqLQy3gHvxY3clhFcMYKGotb', '2025-07-23 19:26:41', '2025-07-23 19:26:41'),
(962, 'https://fcm.googleapis.com/fcm/send/fV_USU0ShtM:APA91bFL8C7nWOFBVsk_qg_uH4CcYrjT_Pptc_gMnXzywtumsxYGePWKUaHLIAsssj_e5ReobahODvFeMx81G4g9hiWeBiSMup1Y5h46jCHZPauoZA8elZeg-t3sgKTuUgKxDX0tKnut', '2025-07-23 20:37:04', '2025-07-23 20:37:04'),
(963, 'https://fcm.googleapis.com/fcm/send/dMcFq_4PFqA:APA91bGLvdvnKd10HgxCnmgtoi14QkvUV088jQu2VKImyk0WY1M3d5MB7D9Hh0w3GyWupabPqv1wVQ-CtTCw4npXNJMsofOdUtggN4QURt823w94BmcZ-DfKCmfGO6CWBrtS8M0mDR_J', '2025-07-24 15:50:05', '2025-07-24 15:50:05'),
(964, 'https://fcm.googleapis.com/fcm/send/cQvSTntJ35I:APA91bHgNmRme4wJ6zlRMmQE2vfpFaw2nAtQhjFe5ZidgkCTEavrJZWL-BZ-VY1HutwbQDEQgxnRMCdAdojt_UTHZmS8BCbzVNztkretpvoTQ6M1Tjiq4DKWEiNE8bCgJjKSRAgf22OP', '2025-07-24 16:27:50', '2025-07-24 16:27:50'),
(965, 'https://fcm.googleapis.com/fcm/send/eiCfnyjJHFE:APA91bHsFxFh3pNgZtHaFcNGJVIDYOhxQaDHsfqLdNKAE7M24-QH2N4yp9S2f5L7_R-gwAWWdcP9hjyBHB19KUDs6cySkEczavbbrJt-mSpnakRg2Ax_Rya-kCW2oTsbdzirFtmY_WiZ', '2025-07-24 21:17:20', '2025-07-24 21:17:20'),
(966, 'https://fcm.googleapis.com/fcm/send/e2S8P2ixDhI:APA91bFiY1sMU6cIX-Qg8qfO0VoWyyFbGJ59XMaglvEI2rR3mABr5STiVgFL32qlVDFGjABVcyaUm-72-fQtbYFnodOWk-QpgD-mk073G6jr-jGbsy-uA1HUZDAnlQzx_ph-Lsxq12dS', '2025-07-26 01:43:42', '2025-07-26 01:43:42'),
(967, 'https://fcm.googleapis.com/fcm/send/dh7VSlMsUNA:APA91bH-Ny1qRgLo0nSrA3JoD1ZCKQknc-I6pCFGYbJq7eeFSziVZC-Ln3LBG9LoYvwgSfy4ydDB_cyqn8tFNy8s7eUOxgnPr7rWr9zA2D5FQp8r9C2kqjoNi7Yp6svjLqVksTZBSWmF', '2025-07-27 18:21:04', '2025-07-27 18:21:04'),
(968, 'https://fcm.googleapis.com/fcm/send/fWlUGQevy5I:APA91bEfhopjmGPEgbm3uMBw0JPRNhJMaZyhluHT4nf-dqmib8k79_PLCNWaFfpKhYZMSk0HvPzkEFFz-TvBMNEFF8SxdG-9VgZH-rEorS-aNWiGVrQ5eN-2rTOzDntDKSLJC2ShVcub', '2025-07-27 19:35:42', '2025-07-27 19:35:42'),
(969, 'https://fcm.googleapis.com/fcm/send/d388kWG9zGI:APA91bHA-8MgeJLnFAaGfvSFUTWH_LXqVXALd9ZZBCx-JBuhqNNOrmeqf94ONz_a6nPseeIMsayGHzmeetYPD8hP6pSupvgmMKZBG9NqV4SrMfLlju-9mQ8DwNGOeJSwdJu6UwWgBCMU', '2025-07-27 19:43:12', '2025-07-27 19:43:12'),
(970, 'https://fcm.googleapis.com/fcm/send/eHKn11TKy3I:APA91bFKYaya-VkCE5iijgjLHUuYPaxiGtjYsh-H7YZL97phSSSBvIPMSn4cCs00zGEyFZ2YT8M12pNtNX2xIMpnJP3K-I-Z9at4HUyofP4ir1t5Xik0EtnlVrisFh4me5WdirOSw1BD', '2025-07-27 20:33:16', '2025-07-27 20:33:16'),
(971, 'https://fcm.googleapis.com/fcm/send/eADZme-Qpkg:APA91bFZSg4hpmI4pcylsoM0IygLJqq6MGMgzVfjdV2_Y_wWvM8C-CHLo8LpnYl4Sf3v3vvZ2auK1HJSqcz0v7WpCwK_oy7NzOLn3Ot388BTCgodREr3zk84kI5ejl71iGU4t--zmWEN', '2025-07-28 04:49:05', '2025-07-28 04:49:05'),
(972, 'https://fcm.googleapis.com/fcm/send/ebaMAV3c-ZI:APA91bHZXK0wXRX7Wooir6MAQixbiqsB3Fa0uB0oPX6iOYCX5hhzI0VsGnuxipHEzFnefQHicCwgjiO6KKJyQvPJJxthJQMJn6P_l4aDTtoJj5_mTFMTnoIX1GxT6tzo5kJHszGrodIh', '2025-07-28 17:52:16', '2025-07-28 17:52:16'),
(973, 'https://fcm.googleapis.com/fcm/send/cZVRBcgJl4M:APA91bGr1PIpDI_JS69bE7IJpFUdpKr6O4PQ117Sx57FEildPKC_w9WvqhnDf8QMRcDMwvw1qh6JdINdxuu9vJf_-uW4m7eAXQ2XHAbn4Bu6CwmgRd-QIVqO1dP13fdQlSQ1fPgWJg3-', '2025-07-28 18:01:57', '2025-07-28 18:01:57'),
(974, 'https://fcm.googleapis.com/fcm/send/dastfZPOQdU:APA91bE70IifbYpjb-i526lqxQZ9IzAMrNQeJwtM0SVojnb5gJBa0K-AsGuEviQ6aO8unxjVQWUAVXYCf0ijqdvw8BxBOMIj_4yKKEbGIOc2FkxLYz0TvRav4rPpUIDIFLLYYm4okREt', '2025-07-28 20:46:45', '2025-07-28 20:46:45'),
(975, 'https://fcm.googleapis.com/fcm/send/eBuhF32OIoc:APA91bGd4JqgYF2PF82NvD4M5cYkDxDGibyduAn64HBnOzSBc6cnIXQvsajKeq2M0SI5WQvyzRJ0FqoadXWzqkCHzLI9KSSzWQ8ivj7ZU9eXuzazX81aZAMEiOJn_T6ORWTPAz8cntOB', '2025-07-28 22:34:25', '2025-07-28 22:34:25'),
(976, 'https://fcm.googleapis.com/fcm/send/cbdBvZ-16IY:APA91bHmGUZFSOjED65UNdAf4CUMJ5cU6Az-a7K8najcicmFi6GwRwvXdKbt4sJozHCuXeJwc27iCeQBixaV577ZWBTuNUwdTb-2exvXo2EUd8n_uAgscKWyMJDC-1MT-yZVpH_C3Whf', '2025-07-29 00:51:33', '2025-07-29 00:51:33'),
(977, 'https://fcm.googleapis.com/fcm/send/cpJ3gKarYtc:APA91bHnMupqLUSajbXgUNQvejUiIxhik7TeBahUEyYeHwDEN-h0QTGdm-_R4_PiUzAnO4vF0UZWjDutrbTqRkMD-j2Rn81bmLBPlpNFRe8lFWcOp-ZKJZumgPJNeERb1aUVMh-9VssQ', '2025-07-29 07:08:27', '2025-07-29 07:08:27'),
(978, 'https://fcm.googleapis.com/fcm/send/eZ3N9r_Ojno:APA91bEK1DItxKjh47NkdLZ67r_E1SS4E9pjaKLZg-nfERQ77drkzZUsJR2T5ZjAsQQA7D02WVh9uhw51clywWdSllo-Aby-2gVSUEQoAr_Wv-RpA81jh8k9iK5O-jQdkMbn1g5wl1E4', '2025-07-29 11:02:27', '2025-07-29 11:02:27'),
(979, 'https://fcm.googleapis.com/fcm/send/efs7eFbmM9U:APA91bGBvQBgSNEl_jNOxxnRQVvjGR9FjbNJ3_x27QVvoa9PyntpnM5SooUo4JEHEmbERrKj1Vw9EmY15gY73yalakTjbJEX2sgD9oUTFS2T-WLzA8yjgUiTkEEpmYpr4hSqrZ75cYZY', '2025-07-30 22:04:47', '2025-07-30 22:04:47'),
(980, 'https://fcm.googleapis.com/fcm/send/fjEzkZdZkaA:APA91bH0GuEPol1d9RoaXwgptY7g92UXcwPtfE0lSG063xgdM6IrcfJLMjuCvuWQs4laYwjeSWXslnReNoGtosSBeb1fRC4m8VBciDUm7mFkskzpFBOH3rpa5kdWIq4tXn4A5_KAyom1', '2025-07-31 19:29:11', '2025-07-31 19:29:11'),
(981, 'https://fcm.googleapis.com/fcm/send/ecsMd4v58rs:APA91bGh1osaEbKqRq9r5vTzM2Rf-pZ4ggatBl5KlCelCy2KmCXzVlvGOEotlM0i6B1aq3oFBJLcA4WtxgAovG9_n4JeIyiRohVbaEsLt-MJwRxFt2ZZEmZd9eXaC5SDe_i5EZIV2Wpi', '2025-07-31 22:45:41', '2025-07-31 22:45:41'),
(982, 'https://fcm.googleapis.com/fcm/send/fK8zg9WrI4A:APA91bF6JQd61-W5w9Ofo-Hpb1ShHtOhRUpKP6F9Zx4Q2FP1llgzc3hVah6_47gm3ND53WaEr717KMpVGE8DWKW91OPy0nKO_wwNaIPD_u5KsVJkUeV-aFhaLK5ELxM-B2oa5dtjWGQ5', '2025-08-01 06:42:59', '2025-08-01 06:42:59'),
(983, 'https://fcm.googleapis.com/fcm/send/d0LAKlYiKC0:APA91bGiK2wx4uEr_52EIbjlGSowPRrsSDRYCcMxSBn2RD-7bs8GwdXfoHTF4on8siX4zoaCe6b5XbmCf0qXq-70MT7pW3Ai10pS-I3inIZ582SiY5WuG_Js0oUiV7KCxHOJIE4fY406', '2025-08-02 07:36:55', '2025-08-02 07:36:55'),
(984, 'https://fcm.googleapis.com/fcm/send/frCF8LubJMM:APA91bGYFp_MWTGWW9LY6sRiERXP6TQlYX7mNHJTFjc9Q2F6SNf1Gg3N1SPhMxK0Mv2qWA7J7ifIARl3Tsw9coa8t2mdU6ehs0DLaqH-0qimuhOEUoB9Jg2G9FiKhm__hEoPpmpYGL3v', '2025-08-03 04:34:37', '2025-08-03 04:34:37'),
(985, 'https://fcm.googleapis.com/fcm/send/dv1k9u6BEV4:APA91bGJgPY_gOuU99e509xZgqRexyDh0gbgmaPwsT6essEcMFnNfqhBNO5GvXI6zC_-hw3ZmKR06Z0P4qhWs0HdvP14LmEM3wRJz6ojopbu76xhOEH-SYub09k0PU-WAkx11hzpDOfz', '2025-08-03 17:57:30', '2025-08-03 17:57:30'),
(986, 'https://fcm.googleapis.com/fcm/send/fo7SzJiPhME:APA91bG2cmibjpM7yNlQQKK2ab_D8JHJgv3tt7FQAa_KhbKX3FDuUjpAOOjUqHABxR03i-XcEhxx5Xf16ca0eq1SwopRo7GbCC7OHzaw4v7h5YgIjGynl60MJo7iihNdL6l1mLa-tshD', '2025-08-03 21:53:50', '2025-08-03 21:53:50'),
(987, 'https://fcm.googleapis.com/fcm/send/d8LorWAwhBU:APA91bHDUTULa85m0QhfcGvNal4vYpAQtuyujN3VV_R06SNAJKoKc7O7DSyVn2jRicdUYVfCFHE2E5mG9wbzx6acgWjKQJC9A5nG_II9yhUQBSDqtzlzqBEQgDBt2bzl972zkw_pvpwt', '2025-08-04 19:21:03', '2025-08-04 19:21:03'),
(988, 'https://fcm.googleapis.com/fcm/send/fsotygI5CdM:APA91bGcwjtKhd0Ntbt7c58pB8OzmUJUMD76Qk_Bc-Rs5Y0FC-8Vll6wAf0uX_i02ZJsoII0N1wm67MxTUT6mwXyHJW-cz45Z53vcruxUockvHwW0oEe_VmgwZfJ-FV2rAI4J98efh3p', '2025-08-05 01:32:24', '2025-08-05 01:32:24'),
(989, 'https://fcm.googleapis.com/fcm/send/dX9_iTmwh5A:APA91bGLvkVi8NzvJp6qLM90GPpaT-FbtEPr7sU_lVU_javylvGsfO7Q_a1TUiLtuQJJ4yxSkBPiLDxqlDP3CPEaMPGkS9b5u38hfTjYYnTGfdhWbtvF0oMh-oc9vAmHiaq6H2aDKx7H', '2025-08-05 19:37:53', '2025-08-05 19:37:53'),
(990, 'https://fcm.googleapis.com/fcm/send/ctU0kMfKfqQ:APA91bH20A5VSejNI0_HB_-BCWvEsApUo0IFy-5gDJkG24pRzyamCx9_j4TceQYimXdlSAaGTyBXlOOUiybCSJSl8_YYJK8IB0tCijPCRxavQC3YT9CJKYjavayplBIhEj_hbmd-dDlQ', '2025-08-05 20:54:52', '2025-08-05 20:54:52'),
(991, 'https://fcm.googleapis.com/fcm/send/f5qw2zfX5qU:APA91bFDDJvDa6sHHuhAA5IYyl4eZxlqCHJ6CSij9p3LQ4T6ZSvZWJFKrsI0EdKLVjht7hawY_HiVVRVT1utUPtKq-D9O3-zqNz61gTXORDJia7BQK607IRloRW7RFIeW5UvUL8gsCOF', '2025-08-05 23:32:15', '2025-08-05 23:32:15'),
(992, 'https://fcm.googleapis.com/fcm/send/fx61NlIN_Ig:APA91bHQnb_2mdNZnnzrPDh99Jyd-tfrn8_EvEuR1DLA7aQGr9-WU5pqe9wYpyx-uLv6zmocQCeO_Q3DsNscYXE1OJ861qxVj7uPM2wy34q1avLvvH59rt-savvWIYCDx5H-xEXcd0zX', '2025-08-06 19:44:30', '2025-08-06 19:44:30'),
(993, 'https://fcm.googleapis.com/fcm/send/feIlLoVqhZk:APA91bE7JwyTMf5Gk_DT-wuu96ynJBmAmm2NlacMBIJS-mLYm1nr4yEsBeDdZOYUNfi-POemTkwmePKi9BdZcdLttY9R9OGzthwabIgbnjSgfi86p-sTjBnSguMR3TLVSWe2AJMpSJBL', '2025-08-07 03:05:01', '2025-08-07 03:05:01');

-- --------------------------------------------------------

--
-- Table structure for table `intro_points`
--

CREATE TABLE `intro_points` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `text` text DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `intro_section_rating_point` int(11) DEFAULT NULL,
  `intro_section_rating_symbol` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `intro_points`
--

INSERT INTO `intro_points` (`id`, `language_id`, `icon`, `title`, `text`, `serial_number`, `created_at`, `updated_at`, `intro_section_rating_point`, `intro_section_rating_symbol`) VALUES
(3, 176, 'fab fa-accessible-icon', '100% Pure Food', 'We provide 100& Pure & handmade foods', 2, NULL, NULL, 74, '%'),
(7, 177, 'fab fa-accusoft', 'اطلب الان', 'اطلب الاناطلب الانلصفح', 2, NULL, NULL, NULL, NULL),
(8, 177, 'fab fa-accessible-icon', 'اطلب الان', 'اطلب الاناطلب الاناطلب الان', 3, NULL, NULL, NULL, NULL),
(9, 176, 'fab fa-accusoft', '100% Pure Foods', 'We provide 100& Pure & handmade foods', 10, NULL, NULL, 100, '%'),
(19, 176, 'fab fa-accessible-icon', '111', NULL, 10, NULL, NULL, 10000, '%');

-- --------------------------------------------------------

--
-- Table structure for table `jcategories`
--

CREATE TABLE `jcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jcategory_id` int(11) DEFAULT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `vacancy` int(11) DEFAULT NULL,
  `deadline` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `job_responsibilities` blob DEFAULT NULL,
  `employment_status` varchar(255) DEFAULT NULL,
  `educational_requirements` blob DEFAULT NULL,
  `experience_requirements` blob DEFAULT NULL,
  `additional_requirements` blob DEFAULT NULL,
  `job_location` varchar(255) DEFAULT NULL,
  `salary` blob DEFAULT NULL,
  `benefits` blob DEFAULT NULL,
  `read_before_apply` blob DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `meta_keywords` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 1,
  `rtl` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 - LTR, 1- RTL',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `is_default`, `rtl`, `created_at`, `updated_at`) VALUES
(179, 'español', 'es', 1, 0, '2023-06-19 00:54:57', '2023-07-13 05:04:23');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rank` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `feature` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `menus` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `language_id`, `menus`, `created_at`, `updated_at`) VALUES
(152, 179, '[{\"text\":\"Cartas\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"menu_1\"},{\"text\":\"Historia\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"5\"},{\"text\":\"Locales\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"6\",\"children\":[{\"text\":\"Esperanza\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"13\"},{\"text\":\"Benavides\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"7\"}]},{\"text\":\"Galería\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"gallery\"},{\"text\":\"Rappi\",\"href\":\"https://www.rappi.com.pe/restaurantes/52373-rinconchami\",\"icon\":\"empty\",\"target\":\"_top\",\"title\":\"\",\"type\":\"custom\"},{\"text\":\"Contáctanos\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"contact\"},{\"text\":\"Únete\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"career\"}]', '2023-11-05 00:43:11', '2023-11-05 00:43:11');

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
(1, '2021_04_10_155226_add_pos_to_serving_methods', 1),
(5, '2021_04_10_161129_create_pos_payment_methods', 2),
(6, '2021_04_11_075502_create_customers_table', 3),
(7, '2021_04_11_151305_create_tables_table', 4),
(8, '2021_04_16_175547_add_qr_image_to_tables', 5),
(10, '2021_04_16_184950_add_qr_cols_to_table', 6),
(11, '2021_05_06_172702_add_image_to_tables', 7),
(12, '2021_05_06_182658_add_image_size_to_tables', 8),
(13, '2021_05_07_141846_change_defailt_image_size', 9),
(14, '2021_05_07_165729_drop_background_color_from_tables', 10),
(15, '2021_05_07_170622_add_image_position_cols_to_tables', 11),
(17, '2021_05_08_104914_add_type_and_text_cols_to_tables', 12),
(18, '2021_05_08_113457_add_default_value_to_text_color_in_tables', 13),
(19, '2021_05_08_174437_add_default_value_to_text_size_in_tables', 14),
(20, '2021_05_08_194033_add_qr_image_cols_to_basic_extendeds', 15),
(21, '2021_05_10_155349_add_gateway_type_to_product_orders', 16),
(24, '2021_05_11_180827_add_token_no_in_basic_settings', 17),
(25, '2021_05_11_181941_add_token_no_after_order_number_in_product_orders', 17),
(28, '2021_05_13_083313_create_postal_codes_table', 18),
(29, '2021_05_13_101831_add_postal_code_to_basic_settings', 19),
(32, '2021_05_16_105019_add_postal_code_to_product_orders', 20),
(33, '2021_05_18_130916_add_call_waiter_status_to_basic_settings', 21),
(34, '2021_05_18_194729_add_contact_infos_to_basic_settings', 22),
(36, '2021_05_19_081335_create_popups_table', 23),
(37, '2021_05_19_122217_drop_announcement_cols_from_basic_settings', 24),
(38, '2021_05_19_125220_drop_parent_link_col_from_basic_settings', 25),
(40, '2021_05_19_125534_add_whatsapp_chat_cols_to_basic_settings', 26),
(41, '2021_05_20_120604_add_order_close_cols_to_basic_extendeds', 27),
(42, '2022_03_13_165621_create_psub_categories_table', 28),
(43, '2022_03_13_180650_add_subcategory_id_to_products_table', 28),
(44, '2022_03_17_131144_add_free_delivery_amount_to_postal_codes', 29),
(45, '2022_03_17_194525_add_free_delivery_amount_to_shipping_charges', 30),
(46, '2022_04_18_133021_create_basic_extras', 31),
(49, '2022_04_19_155032_add_country_code_to_users_table', 32),
(51, '2022_04_21_120742_add_country_code_in_product_orders', 33),
(52, '2022_04_23_124847_add_whatsapp_order_notification_based_on_serving_methods', 34),
(53, '2022_04_23_144354_add_twilio_credentials_in_basic_extras', 35),
(54, '2022_05_25_195401_add_is_feature_in_psub_categories', 36),
(65, '2023_03_04_165637_create_intro_points_table', 37),
(66, '2023_03_05_124128_create_titles_table', 37),
(67, '2023_03_05_132538_add_column_to_basic_settings', 38),
(69, '2023_03_05_161748_add_column_testimonial_side_image_to_basic_extendeds', 39),
(71, '2023_03_05_171212_add_column_testimonial_section_text_to_basic_settings_table', 40),
(72, '2023_03_05_173430_add_column_category_section_title_and_special_section_title_to_basic_settings_table', 41),
(73, '2023_03_06_105842_add_column_background_image_to_basic_extendeds', 42),
(74, '2023_03_11_160511_add_column_hero_section_button_two_color_to_basic_extendeds', 43),
(76, '2023_03_11_163039_add_column_hero_section_autor_name_to_basic_extendeds', 44),
(77, '2023_03_13_103439_add_column_pricing_to_basic_extendeds', 45),
(84, '2023_03_13_130121_add_column_intro_to_basic_settings', 46),
(85, '2023_03_13_132216_add_column_rating_to_intro_points', 46),
(86, '2023_03_14_102250_add_column_intro_bg_image_to_basic_extendeds', 47),
(87, '2023_03_14_111304_alter_column_testimonial_bg_img_to_basic_extendeds', 48),
(89, '2023_03_14_130444_remove_column_special_section_title_to_basic_settings', 49),
(90, '2023_03_16_121332_add_column_top_bottom_shape_to_basic_extendeds', 50),
(91, '2023_03_16_161727_add_column_intro_section_shape_image_to_basic_settings', 51),
(93, '2023_03_20_110357_add_column_intro_section_coffee_theme_to_basic_settings', 52),
(94, '2023_03_22_111823_add_column_blog_section_bg_image_basic_extendeds', 53),
(95, '2023_03_25_145040_alter_column_hero_section_button_2_text_font_size_to_basic_extendeds', 54),
(96, '2023_03_30_130615_ad_column_water_shape_to_basic_extededs', 55),
(97, '2023_04_09_123201_alter_column_maintainance_to_basic_settings', 56),
(98, '2023_04_11_112615_delete_column_intro_section_button_font_size_and_intro_section_button_text_color_to_basic_settings', 57),
(99, '2023_04_11_124905_delete_column_to_hero_section_starting_price_and_hero_section_ending_price_to_basic_extendeds', 58),
(100, '2023_05_02_131139_alter_column_intro_title_to_basic_settings', 59),
(101, '2023_05_25_124230_add_colum_theme_to_basic_settings', 60);

-- --------------------------------------------------------

--
-- Table structure for table `offline_gateways`
--

CREATE TABLE `offline_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `instructions` blob DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `is_receipt` tinyint(4) NOT NULL DEFAULT 1,
  `receipt` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offline_gateways`
--

INSERT INTO `offline_gateways` (`id`, `name`, `short_description`, `instructions`, `status`, `serial_number`, `is_receipt`, `receipt`, `created_at`, `updated_at`) VALUES
(1, 'Offline Gateway 1', 'Please send your payment to the following account.\r\nBank Name: Lorem Ipsum.\r\nBeneficiary Name: John Doe.\r\nAccount Number/IBAN: 12345678', 0x3c70207374796c653d226c696e652d6865696768743a20312e383b223e3c666f6e7420666163653d2243697263756c61725374642d426f6f6b2c20417269616c2c2073616e732d7365726966223e43686173652042616e6b2069732074686520636f6e73756d65722062616e6b696e67206469766973696f6e206f66204a504d6f7267616e2043686173652e20556e6c696b652069747320636f6d70657469746f72732c2043686173652069732074616b696e6720737465707320746f20657870616e6420697473206272616e6368206e6574776f726b20696e206b6579206d61726b6574732e205468652062616e6b2063757272656e746c7920686173206e6561726c7920352c303030206272616e6368657320616e642031362c3030302041544d732e204163636f7264696e6720746f207468652062616e6b2c206e6561726c792068616c66206f662074686520636f756e747279e280997320686f757365686f6c64732061726520436861736520637573746f6d6572732e3c2f666f6e743e3c62723e3c2f703e, 0, 1, 1, NULL, '2020-09-17 01:06:39', '2023-07-23 03:06:24'),
(2, 'Offline Gateway 2', 'Please send your payment to the following account.\r\nBank Name: Lorem Ipsum.\r\nBeneficiary Name: John Doe.\r\nAccount Number/IBAN: 12345678', 0x3c70207374796c653d226c696e652d6865696768743a20312e383b223e3c7370616e207374796c653d22666f6e742d66616d696c793a2043697263756c61725374642d426f6f6b2c20417269616c2c2073616e732d73657269663b20666f6e742d73697a653a20313470783b223e42616e6b206f6620416d6572696361207365727665732061626f7574203636206d696c6c696f6e20636f6e73756d65727320616e6420736d616c6c20627573696e65737320636c69656e747320776f726c64776964652e204c696b65206d616e79206f662074686520626967676573742062616e6b732c2042616e6b206f6620416d6572696361206973206b6e6f776e20666f7220697473206469676974616c20696e6e6f766174696f6e2e20497420686173206d6f7265207468616e203337206d696c6c696f6e206469676974616c20636c69656e747320616e6420697320657870657269656e63696e67207375636365737320616674657220696e74726f647563696e6720697473207669727475616c20617373697374616e742c2045726963612c20746861742061737369737473206163636f756e7420686f6c64657273207769746820766172696f7573207461736b733c2f7370616e3e3c62723e3c2f703e, 0, 2, 0, NULL, '2020-09-17 01:07:37', '2023-07-23 03:06:26'),
(3, 'Cash On Delivery', NULL, 0x3c703e3c62723e3c2f703e, 0, 3, 0, NULL, '2020-09-17 02:05:36', '2023-07-23 03:06:22');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `variations` text DEFAULT NULL,
  `addons` text DEFAULT NULL,
  `variations_price` decimal(11,2) NOT NULL DEFAULT 0.00,
  `addons_price` decimal(11,2) NOT NULL,
  `product_price` decimal(11,2) NOT NULL,
  `total` decimal(11,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `product_order_id`, `product_id`, `user_id`, `title`, `qty`, `image`, `variations`, `addons`, `variations_price`, `addons_price`, `product_price`, `total`, `created_at`, `updated_at`) VALUES
(20, 20, 72, 20, 'Torta de Chocolate', 1, '1689828817.jpg', '\"\"', '\"\"', 0.00, 0.00, 10.00, 10.00, '2023-07-31 15:50:34', NULL),
(21, 21, 72, 20, 'Torta de Chocolate', 1, '1689828817.jpg', '\"\"', '\"\"', 0.00, 0.00, 10.00, 10.00, '2023-07-31 15:51:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_times`
--

CREATE TABLE `order_times` (
  `id` int(11) NOT NULL,
  `day` varchar(100) DEFAULT NULL,
  `start_time` varchar(100) DEFAULT NULL,
  `end_time` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_times`
--

INSERT INTO `order_times` (`id`, `day`, `start_time`, `end_time`) VALUES
(1, 'monday', '8:00 AM', '9:00 PM'),
(2, 'tuesday', '10:00 AM', '10:30 PM'),
(3, 'wednesday', '12:00 AM', '11:59 PM'),
(4, 'thursday', '8:00 AM', '11:59 PM'),
(5, 'friday', '4:00 PM', '11:55 PM'),
(6, 'saturday', '12:00 AM', '11:59 PM'),
(7, 'sunday', '2:21 PM', '4:19 PM');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `body` blob DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `meta_keywords` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `language_id`, `name`, `title`, `subtitle`, `slug`, `body`, `status`, `serial_number`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(5, 179, 'Historia', 'Nuestra Historia', 'desde hace 50 años', 'Historia', 0x686f6c612065737461206573206c6120686973746f7269612064656c206368616d69, 1, 4, 'historia,rincon chami', NULL, '2023-07-08 03:58:19', '2023-07-08 03:58:19'),
(6, 179, 'Locales', 'Visita nuestros Locales', 'con la misma sazón y cariño', 'Locales', 0x3c703e3c62723e3c2f703e, 1, 5, 'locales,rincon chami,lince,miraflores,benavides,calle esperanza', NULL, '2023-07-10 14:43:28', '2023-07-10 14:43:28'),
(7, 179, 'benavides', 'Local Benavides', 'Av. Alfredo Benavides 2360, Miraflores', 'benavides', 0x3c703e3c62723e3c2f703e, 1, 6, 'rincon chami,av alfredo benavides 2360,locales,comida criolla,miraflores', NULL, '2023-07-10 14:53:47', '2023-07-22 03:48:54'),
(8, 179, 'Lince', 'Local Lince', 'Jr. Francisco de Zela 1701, Lince', 'Lince', 0x3c703e3c62723e3c2f703e, 1, 7, 'rincon chami,lince,jr francisco de zela 1701,comida criolla', NULL, '2023-07-10 14:55:00', '2023-08-28 01:53:22'),
(9, 179, 'la carta', 'La Carta', 'Descubre nuestra carta', 'la-carta', 0x3c703e3c62723e3c2f703e, 1, 9, 'carta,rincon chami,lince,miraflores,benavides,comida criolla,delivery', NULL, '2023-07-10 21:34:00', '2023-07-12 02:53:17'),
(10, 179, 'librodereclamaciones', 'Libro de Reclamaciones', 'Libro de Reclamaciones', 'librodereclamaciones', 0x3c703e3c62723e3c2f703e, 1, 8, 'libro de reclamaciones,virtual,rincon chami', NULL, '2023-07-22 02:16:35', '2023-07-22 03:17:09'),
(11, 179, 'cookies policy', 'Politica de Cookies', 'Politica de Cookies', 'cookies-policy', 0x504f4cc38d5449434120444520505249564143494441442047454e4552414c3c70207374796c653d22636f6c6f723a7267622833332c33372c3431293b666f6e742d66616d696c793a272d6170706c652d73797374656d272c20426c696e6b4d616353797374656d466f6e742c20275365676f65205549272c20526f626f746f2c202748656c766574696361204e657565272c20417269616c2c20274e6f746f2053616e73272c2073616e732d73657269662c20274170706c6520436f6c6f7220456d6f6a69272c20275365676f6520554920456d6f6a69272c20275365676f652055492053796d626f6c272c20274e6f746f20436f6c6f7220456d6f6a69273b666f6e742d73697a653a313670783b223e506f72206d6564696f2064656c2070726573656e746520646f63756d656e746f2c20656c20477275706f20646520e2809c50756e746f20417a756ce2809d20706f6e65206120646973706f73696369c3b36e206465206c6f73207573756172696f7320737520506f6cc3ad7469636120646520507269766163696461642c206c61206375616c20736520656e6375656e74726120656e2061726d6f6ec3ad6120636f6e206c61206e6f726d617469766120766967656e746520736f6272652070726f7465636369c3b36e206465204461746f7320506572736f6e616c657320284c6579204ec2b02032393733332079204465637265746f2053757072656d6f203030332d323031332d4a5553292e204120636f6e74696e75616369c3b36e2c207365207365c3b1616c616e206c61732066696e616c6964616465732064652074726174616d69656e746f206465206c6120696e666f726d616369c3b36e20717565207573746564206e6f732068612073756d696e6973747261646f2c20717569c3a96e657320736f6e206c6f7320656e6361726761646f73206465207472617461726c612c20656c207469656d706f20646520616c6d6163656e616d69656e746f20656e206e75657374726173204261736573206465204461746f732c206c6173206d656469646173206465207365677572696461642c2079206c6f73206d6564696f73207061726120656a657263657220737573206465726563686f7320636f6d6f20746974756c6172206465206c6f73204461746f7320506572736f6e616c65732e3c2f703e3c6f6c3e3c6c693e3c7370616e207374796c653d22666f6e742d7765696768743a626f6c6465723b223ec2bf5175c3a920696e666f726d616369c3b36e207265636f70696c616d6f733f3c2f7370616e3e3c62723e3c62723e3c703e5265636f6c656374616d6f73206c61207369677569656e746520696e666f726d616369c3b36e20706572736f6e616c3a3c2f703e3c756c3e3c6c693e526573706563746f206465206c6f73206461746f7320706572736f6e616c6573206465206e75657374726f7320436c69656e7465733a206e6f6d6272652c206170656c6c69646f732c2074656cc3a9666f6e6f2c20636f7272656f20656c65637472c3b36e69636f20792064697265636369c3b36e2e3c2f6c693e3c6c693e526573706563746f2061206c6f73206461746f7320706572736f6e616c6573206465206e75657374726f73205573756172696f73205765623a206e6f6d6272652c206170656c6c69646f732c2074656cc3a9666f6e6f2c20636f7272656f20656c65637472c3b36e69636f20792064697265636369c3b36e2e3c2f6c693e3c6c693e526573706563746f206465206c6f73204461746f73206465205175656a61732079205265636c616d6f733a206e6f6d627265732c206170656c6c69646f732c20646f6d6963696c696f2c2074656cc3a9666f6e6f207920636f7272656f20656c65637472c3b36e69636f2e3c2f6c693e3c2f756c3e3c62723e3c703e4361626520726573616c74617220717565207061726120637265617220756e205573756172696f20656e206e7565737472612050c3a167696e612057656220c3ba6e6963616d656e746520686172c3a12066616c746120717565206c6120706572736f6e6120636f6e7369676e6520737520636f7272656f20656c65637472c3b36e69636f207920636f6e7472617365c3b1612e3c2f703e3c62723e3c2f6c693e3c6c693e3c7370616e207374796c653d22666f6e742d7765696768743a626f6c6465723b223ec2bf506f72206375c3a16e746f207469656d706f20616c6d6163656e616d6f7320737520696e666f726d616369c3b36e3f3c2f7370616e3e3c62723e3c62723e3c703e457320696d706f7274616e7465207365c3b1616c61722071756520656c20706c617a6f20646520616c6d6163656e616d69656e746f206465206461746f7320657320696e64657465726d696e61646f2e2053696e20656d626172676f2c20656e206c6120706f6cc3ad74696361206465207072697661636964616420636f72726573706f6e6469656e746520612063616461207365636369c3b36e20736520636f6e7369676e6120657374612070726563697369c3b36e2e3c2f703e3c62723e3c2f6c693e3c6c693e3c7370616e207374796c653d22666f6e742d7765696768743a626f6c6465723b223ec2bf43c3b36d6f2070726f746567656d6f7320737520696e666f726d616369c3b36e3f3c2f7370616e3e3c62723e3c62723e3c703e4c612050c3a167696e61205765622064652050756e746f20417a756c2068612061646f707461646f20746f646173206c6173206d6564696461732074c3a9636e696361732c206c6567616c65732079206f7267616e697a6163696f6e616c6573206e656365736172696173207061726120676172616e74697a6172206c6120736567757269646164207920656c20616465637561646f2070726f636573616d69656e746f20646520737573206461746f7320706572736f6e616c65733b206173c3ad20636f6d6f207061726120657669746172206375616c7175696572206d616e6970756c616369c3b36e20696e6465626964612c2070c3a97264696461206163636964656e74616c2c20646573747275636369c3b36e206f2061636365736f206e6f206175746f72697a61646f206465207465726365726f732e3c2f703e3c703e4173696d69736d6f2c2063756d706c696d6f7320636f6e20746f646173206c6173206d6564696461732065737472696374616d656e7465206e65636573617269617320726573706563746f2064656c20666c756a6f207472616e7366726f746572697a6f206465206461746f732c20636f6e666f726d6520616c20617274c3ad63756c6f203135206465206c61204c6579204ec2b02032393733332e3c2f703e3c703e486163656d6f7320646520737520636f6e6f63696d69656e746f2071756520737520696e666f726d616369c3b36e206e6f20736572c3a120636f6d65726369616c697a6164612c207472616e73666572696461206e6920636f6d706172746964612073696e207375206175746f72697a616369c3b36e207920706172612066696e657320616a656e6f732061206c6f73207175652073652064657363726962656e206120636f6e74696e75616369c3b36e2e3c2f703e3c62723e3c2f6c693e3c6c693e3c7370616e207374796c653d22666f6e742d7765696768743a626f6c6465723b223ec2bf436f6e207175c3a92066696e616c69646164207574696c697a616d6f7320737520696e666f726d616369c3b36e3f3c2f7370616e3e3c62723e3c62723e3c703e4c6f73206461746f7320706572736f6e616c657320717565207573746564206e6f732070726f706f7263696f6e6120736572c3a16e207574696c697a61646f732070617261206c6173207369677569656e7465732066696e616c6964616465733a3c2f703e3c756c3e3c6c693e526573706563746f206465206c6f73206461746f7320706572736f6e616c6573206465206e75657374726f7320436c69656e7465732f5573756172696f73205765623a3c756c3e3c6c693e50726f6365736172206c6120636f6d707261207265616c697a61646120656e20766972747564206465206c612072656c616369c3b36e20646520636f6e73756d6f20656e7461626c61646120636f6e2050756e746f20417a756c2e3c2f6c693e3c6c693e45737461626c6563657220756e2063616e616c20646520636f6d756e6963616369c3b36e20636f6e2050756e746f20417a756c207061726120696e666f726d61726c6520736f62726520656c2065737461646f2064652073752070656469646f2075206f74726120696e666f726d616369c3b36e2072656c6163696f6e616461206120657374652e3c2f6c693e3c6c693e496e636f7270c3b372616c6f20656e20656c20686973746f7269616c2064652076656e7461732064652050756e746f20417a756c20706172612066696e6573206573746164c3ad737469636f7320652068697374c3b37269636f732e3c2f6c693e3c6c693e45737461626c6563657220756e206d6564696f20646520636f6d756e6963616369c3b36e2070617261206174656e6465722073757320636f6e73756c7461732c2070726567756e7461732c207175656a61732c207265636c616d6f732e3c2f6c693e3c6c693e52656d697469722070726f6d6f63696f6e65732c2062656e65666963696f732c20636f6e637572736f732c206f66657274617320792c20656e2067656e6572616c2c207075626c69636964616420736f627265206c6f732070726f647563746f73207920736572766963696f732064652050756e746f20417a756c2e3c2f6c693e3c6c693e4f6274656e657220696e666f726d616369c3b36e206465206675656e7465732064652061636365736f2070c3ba626c69636173207920707269766164617320706172612066696e65732064652070657266696c616d69656e746f2e3c2f6c693e3c2f756c3e3c2f6c693e3c6c693e526573706563746f206465206c6f73204461746f73206465205175656a61732079205265636c616d6f733a3c756c3e3c6c693e45737461626c6563657220756e206d6564696f20646520636f6d756e6963616369c3b36e207061726120646172207265737075657374612061206c617320736f6c6963697475646573206465206765737469c3b36e2c207175656a61732079207265636c616d6f73207175652068616e207369646f207265676973747261646f20706f7220656c207573756172696f20792f6f20636f6e73756d69646f722e3c2f6c693e3c6c693e4c6c6576617220756e20726567697374726f206465206c617320706572736f6e6173207175652070726573656e74616e207265636c616d6f732079207175656a617320612074726176c3a9732064656c204c6962726f206465205265636c616d6163696f6e657320636f6e20656c2070726f70c3b37369746f2064652063756d706c697220636f6e206c6173206e6f726d61732064652070726f7465636369c3b36e20616c20636f6e73756d69646f722e3c2f6c693e3c2f756c3e3c2f6c693e3c2f756c3e3c62723e3c2f6c693e3c6c693e3c7370616e207374796c653d22666f6e742d7765696768743a626f6c6465723b223ec2bf517569c3a96e207469656e652061636365736f206120737520696e666f726d616369c3b36e3f3c2f7370616e3e3c62723e3c62723e3c703e5573746564206e6f73206175746f72697a6120612071756520706f64616d6f7320636f6d706172746972207920656e63617267617220656c2074726174616d69656e746f20646520737520696e666f726d616369c3b36e20706572736f6e616c20636f6e207465726365726f7320717565206e6f73207072657374616e20736572766963696f732070617261206d656a6f726172206e756573747261732061637469766964616465732e20456e206573746f73206361736f732c20676172616e74697a6172c3a12071756520656c2074726174616d69656e746f20646520737573206461746f73207365206c696d6974652061206c61732066696e616c69646164657320616e746573206175746f72697a61646173207920717565207365206d616e74656e676120636f6e666964656e6369616c69646164207920736520696d706c656d656e74656e206c6173206d65646964617320646520736567757269646164206164656375616461732e3c2f703e3c703e4361626520726563616c63617220717565206c612050c3a167696e61205765622064652050756e746f20417a756c2063756d706c6520636f6e20746f646173206c617320706f6cc3ad7469636173207920726567756c6163696f6e657320726573706563746f2064656c20666c756a6f207472616e7366726f6e746572697a6f206465206461746f7320706572736f6e616c65732c20636f6e666f726d652061206c61204c65792064652050726f7465636369c3b36e206465204461746f7320506572736f6e616c65732e3c2f703e3c62723e3c2f6c693e3c6c693e3c7370616e207374796c653d22666f6e742d7765696768743a626f6c6465723b223ec2bf43c3b36d6f20707565646520656a657263657220737573206465726563686f7320636f6d6f20746974756c6172206465204461746f7320506572736f6e616c65733f3c2f7370616e3e3c62723e3c62723e3c703e50756e746f20417a756c207265636f6e6f6365207920676172616e74697a6120656c20656a6572636963696f206465206c6f73206465726563686f732064652061636365736f2c207265637469666963616369c3b36e2c2063616e63656c616369c3b36e2c206f706f73696369c3b36e2c20696e666f726d616369c3b36e206f207265766f63616369c3b36e2071756520706f72206c6579206c65206173697374656e2e205061726120656a6572636572206c6f73206465726563686f7320616e746573206d656e63696f6e61646f7320706f6472c3a12072656d6974697220756e20636f7272656f20656c65637472c3b36e69636f20636f6e20656c206173756e746f20224465726563686f73204461746f7320506572736f6e616c6573222061206c61207369677569656e74652064697265636369c3b36e3a20736572766963696f616c636c69656e74654070756e746f617a756c72657374617572616e74652e636f6d2e3c2f703e3c703e456e20646963686f20636f7272656f206465626572c3a120636f6e7369676e6172206c61207369677569656e746520696e666f726d616369c3b36e3a3c2f703e3c756c3e3c6c693e4e6f6d6272652c206170656c6c69646f732c20646f63756d656e746f206e6163696f6e616c206465206964656e74696461642c20636f7272656f20656c65637472c3b36e69636f20792064697265636369c3b36e2e3c2f6c693e3c6c693e496e646963617220656c207469706f20646520736f6c69636974756420717565206465736561207265616c697a61723a2041636365736f2c205265637469666963616369c3b36e2c2043616e63656c616369c3b36e2075204f706f73696369c3b36e2e204173696d69736d6f2c207365c3b1616c617220636c6172616d656e7465206c6120696e666f726d616369c3b36e2061206c612071756520646573656120616363656465722c20726563746966696361722c2063616e63656c6172206f20726573706563746f206465206c61206375616c20646573656120666f726d756c6172206f706f73696369c3b36e2e3c2f6c693e3c6c693e506f6472c3a12061646a756e74617220756e20646f63756d656e746f20656e20656c206375616c206465736172726f6c6c6520737520736f6c6963697475642e2028666f726d61746f20706466293c2f6c693e3c2f756c3e3c703e456e206361736f2c20636f6e73696465726520717565206e6f206861207369646f206174656e6469646f2c20706f6472c3a12070726573656e74617220756e61207265636c616d616369c3b36e20616e7465206c61204175746f7269646164204e6163696f6e616c2064652050726f7465636369c3b36e206465204461746f7320506572736f6e616c65732c20646972696769c3a96e646f73652061206c61204d657361206465205061727465732064656c204d696e6973746572696f206465204a757374696369612079204465726563686f732048756d616e6f73207562696361646f20656e2043616c6c65205363697069c3b36e204c6c6f6e61204ec2b0203335302c204d697261666c6f7265732c204c696d612c20506572c3ba2e3c2f703e3c62723e3c2f6c693e3c6c693e3c7370616e207374796c653d22666f6e742d7765696768743a626f6c6465723b223ec2bf43c3b36d6f20657320656c2074726174616d69656e746f20646520436f6f6b69657320656e206e7565737472612050c3a167696e61205765623f3c2f7370616e3e3c62723e3c62723e3c703e4c612050c3a167696e61205765622064652050756e746f20417a756c20686163652075736f20646520636f6f6b69657320636f6e20656c2066696e206465206d656a6f72617220656c20736572766963696f206272696e6461646f20616c20636c69656e746520792f6f207573756172696f2071756520686163652075736f20646520656c6c612e3c2f703e3c703e456e206573746520736974696f20776562207573616d6f73206c617320636f6f6b69657320706172613a20612920617365677572617220717565206c612070c3a167696e61207765622070756564652066756e63696f6e617220636f7272656374616d656e74652079206229207265636f70696c617220696e666f726d616369c3b36e206573746164c3ad737469636120616ec3b36e696d612c20636f6d6f207175c3a92070c3a167696e61732068617320766973746f206f206375c3a16e746f207469656d706f206861732065737461646f20656e20656c20736974696f207765622e3c2f703e3c703e4c6120706f6cc3ad7469636120646520636f6f6b6965732071756520656d706c6561206e7565737472612050c3a167696e61205765622063756d706c6520656e2072696775726f736964616420636f6e206c61206e6f726d617469766120766967656e74652064652070726f7465636369c3b36e206465206461746f7320284c6579204ec2b02032393733332079204465637265746f2053757072656d6f203030332d323031332d4a5553292e3c2f703e3c62723e3c2f6c693e3c6c693e3c7370616e207374796c653d22666f6e742d7765696768743a626f6c6465723b223e41637475616c697a6163696f6e6573206465206c612070726573656e746520706f6cc3ad7469636120646520707269766163696461643c2f7370616e3e3c62723e3c62723e3c703e436f6e206d6f7469766f206465206c61206d656a6f726120636f6e74696e7561206465206e75657374726f732070726f6365736f732c206c612050c3a167696e61205765622064652050756e746f20417a756c20706f6472c3a1207265616c697a617220636f7272656363696f6e657320792061637475616c697a6163696f6e65732061206573746120506f6cc3ad7469636120646520507269766163696461642e20506f72206661766f722c20766572696669717565206573746f732074c3a9726d696e6f7320726567756c61726d656e7465207061726120636f6e73756c746172206c6f732063616d62696f73207175652070756564616e20686162657220657869737469646f2079206465207175c3a9206d616e657261206c652070756564656e20616665637461722e3c2f703e3c2f6c693e3c2f6f6c3e, 1, 3, 'politica de cookies,rincon chami', NULL, '2023-07-24 11:15:18', '2023-07-24 11:15:58'),
(12, 179, 'rappi', 'rappi', 'rappi', 'rappi', 0x3c703e3c62723e3c2f703e, 1, 10, 'rincon chami rappi', NULL, '2023-08-21 14:37:27', '2023-08-21 14:37:27'),
(13, 179, 'esperanza', 'Local Esperanza', 'Calle Esperanza 154 - Miraflores', 'esperanza', 0x3c703e4573706572616e7a613c2f703e, 1, 11, 'local esperanza,rincon chami,miraflores,comida criolla', NULL, '2023-10-23 01:03:35', '2023-10-23 01:03:35');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'manual',
  `information` mediumtext DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `subtitle`, `title`, `details`, `name`, `type`, `information`, `keyword`, `status`) VALUES
(6, NULL, NULL, NULL, 'Flutterwave', 'automatic', '{\"public_key\":\"FLWPUBK_TEST-54e1bcf960a5364fa3365240fe555615-X\",\"secret_key\":\"FLWSECK_TEST-85dc3d03f924083034da3af27ec45b39-X\",\"text\":\"Pay via your Flutterwave account.\"}', 'flutterwave', 0),
(9, NULL, NULL, NULL, 'Razorpay', 'automatic', '{\"key\":\"rzp_test_fV9dM9URYbqjm7\",\"secret\":\"nickxZ1du2ojPYVVRTDif2Xr\",\"text\":\"Pay via your Razorpay account.\"}', 'razorpay', 0),
(11, NULL, NULL, NULL, 'Paytm', 'automatic', '{\"merchant\":\"tkogux49985047638244\",\"secret\":\"LhNGUUKE9xCQ9xY8\",\"website\":\"WEBSTAGING\",\"industry\":\"Retail\",\"text\":\"Pay via your paytm account.\"}', 'paytm', 0),
(12, NULL, NULL, NULL, 'Paystack', 'automatic', '{\"key\":\"sk_test_45b0b207ffa006eeb5fc74ea35d01e673be15ade\",\"text\":\"Pay via your Paystack account.\"}', 'paystack', 0),
(13, NULL, NULL, NULL, 'Instamojo', 'automatic', '{\"key\":\"test_172371aa837ae5cad6047dc3052\",\"token\":\"test_4ac5a785e25fc596b67dbc5c267\",\"sandbox_check\":\"0\",\"text\":\"Pay via your Instamojo account.\"}', 'instamojo', 0),
(14, NULL, NULL, NULL, 'Stripe', 'automatic', '{\"key\":\"pk_test_UnU1Coi1p5qFGwtpjZMRMgJM\",\"secret\":\"sk_test_QQcg3vGsKRPlW6T3dXcNJsor\",\"text\":\"Pay via your Credit account.\"}', 'stripe', 0),
(15, NULL, NULL, NULL, 'Paypal', 'automatic', '{\"client_id\":\"AenxEIgRZHI4kLK0q6ZoewagBCzVQXURQQIMArI0EUN5x7nqMkJT8gwjDDiFtwCKEfSX4YRBAMBLDc61\",\"client_secret\":\"AenxEIgRZHI4kLK0q6ZoewagBCzVQXURQQIMArI0EUN5x7nqMkJT8gwjDDiFtwCKEfSX4YRBAMBLDc61\",\"sandbox_check\":\"1\",\"text\":\"Pay via your PayPal account.\"}', 'paypal', 1),
(17, NULL, NULL, NULL, 'Mollie Payment', 'automatic', '{\"key\":\"test_m6BAuk4mJ7asBP52AtCWn3WjpK4Tv3\",\"text\":\"Pay via your Mollie Payment account.\"}', 'mollie', 0),
(18, NULL, NULL, NULL, 'PayUmoney', 'automatic', '{\"key\":\"gtKFFx\",\"salt\":\"eCwWELxi\",\"text\":\"Pay via your PayUmoney account.\"}', 'payumoney', 1),
(19, NULL, NULL, NULL, 'Mercado Pago', 'automatic', '{\"token\":\"TEST-7693103109863431-072300-e19d75b5ae3b9c5a31a4c618f18c0434-668729168\",\"sandbox_check\":\"0\",\"text\":\"Pay via your Mercado Pago account.\"}', 'mercadopago', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pcategories`
--

CREATE TABLE `pcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `is_feature` int(11) DEFAULT NULL,
  `tax` decimal(11,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pcategories`
--

INSERT INTO `pcategories` (`id`, `language_id`, `name`, `slug`, `image`, `status`, `is_feature`, `tax`, `created_at`, `updated_at`) VALUES
(16, 179, 'Entradas', 'Entradas', '64b7765e38486.png', 1, 1, 0.00, '2023-06-19 04:33:13', '2023-07-19 05:36:30'),
(17, 179, 'Fondos', 'Fondos', '64b777e739319.png', 1, 1, 0.00, '2023-07-12 02:29:33', '2023-07-19 05:43:03'),
(18, 179, 'Postres', 'Postres', '64b777f2ed4fa.png', 1, 1, 0.00, '2023-07-12 02:31:04', '2023-07-19 05:43:14'),
(19, 179, 'Bebidas', 'Bebidas', '64b996d6eefad.png', 0, 1, 0.00, '2023-07-20 20:19:34', '2023-09-11 20:59:02');

-- --------------------------------------------------------

--
-- Table structure for table `popups`
--

CREATE TABLE `popups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `background_image` varchar(100) DEFAULT NULL,
  `background_color` varchar(100) DEFAULT NULL,
  `background_opacity` decimal(8,2) NOT NULL DEFAULT 1.00,
  `title` varchar(255) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `button_text` varchar(255) DEFAULT NULL,
  `button_url` text DEFAULT NULL,
  `button_color` varchar(20) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `delay` int(11) NOT NULL DEFAULT 1000 COMMENT 'in milisconds',
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `type` tinyint(4) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 - active, 0 - deactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `postal_codes`
--

CREATE TABLE `postal_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `postcode` varchar(50) DEFAULT NULL,
  `charge` decimal(11,2) NOT NULL DEFAULT 0.00,
  `free_delivery_amount` decimal(11,2) DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pos_payment_methods`
--

CREATE TABLE `pos_payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL COMMENT '1 - active, 0 - deactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pos_payment_methods`
--

INSERT INTO `pos_payment_methods` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(2, 'On Cash', 1, '2021-04-11 00:57:46', '2021-04-11 00:57:57'),
(4, 'Paypal', 1, '2021-05-10 11:30:28', '2021-05-10 11:30:28');

-- --------------------------------------------------------

--
-- Table structure for table `process`
--

CREATE TABLE `process` (
  `process_id` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `area_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `process`
--

INSERT INTO `process` (`process_id`, `nombre`, `area_id`) VALUES
(1, 'Almacenaje de Carga', 1),
(2, 'Atención al Cliente', 2),
(3, 'Carga Internacional', 3),
(4, 'Gestión Aduanera', 4),
(5, 'Gestión Comercial', 5),
(6, 'Gestión de la Alta Dirección', 6),
(7, 'Gestión de la Seguridad', 7),
(8, 'Gestión de Mantenimiento', 8),
(9, 'Gestión de Sistemas Informáticos', 9),
(10, 'Gestión Humana', 10),
(11, 'Gestión Legal', 11),
(12, 'Sistema Integrado de Gestión', 12);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `feature_image` varchar(255) DEFAULT NULL,
  `summary` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `variations` text DEFAULT NULL,
  `addons` text DEFAULT NULL,
  `current_price` decimal(11,2) NOT NULL DEFAULT 0.00,
  `previous_price` decimal(11,2) DEFAULT 0.00,
  `rating` decimal(11,2) NOT NULL DEFAULT 0.00,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_feature` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_special` tinyint(4) NOT NULL DEFAULT 0,
  `subcategory_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(191, NULL, '64ae26a0b6911.jpg', '2023-07-12 04:05:52', '2023-07-12 04:05:52');

-- --------------------------------------------------------

--
-- Table structure for table `product_orders`
--

CREATE TABLE `product_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `billing_country` varchar(255) DEFAULT NULL,
  `billing_fname` varchar(255) DEFAULT NULL,
  `billing_lname` varchar(255) DEFAULT NULL,
  `billing_address` varchar(255) DEFAULT NULL,
  `billing_city` varchar(255) DEFAULT NULL,
  `billing_email` varchar(255) DEFAULT NULL,
  `billing_country_code` varchar(10) DEFAULT NULL,
  `billing_number` varchar(255) DEFAULT NULL,
  `shpping_country` varchar(255) DEFAULT NULL,
  `shpping_fname` varchar(255) DEFAULT NULL,
  `shpping_lname` varchar(255) DEFAULT NULL,
  `shpping_address` varchar(255) DEFAULT NULL,
  `shpping_city` varchar(255) DEFAULT NULL,
  `shpping_email` varchar(255) DEFAULT NULL,
  `shpping_country_code` varchar(10) DEFAULT NULL,
  `shpping_number` varchar(255) DEFAULT NULL,
  `total` decimal(11,2) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `gateway_type` varchar(50) DEFAULT NULL,
  `currency_code` varchar(255) DEFAULT NULL,
  `currency_code_position` varchar(20) DEFAULT NULL,
  `currency_symbol` blob DEFAULT NULL,
  `currency_symbol_position` varchar(20) DEFAULT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `token_no` int(11) DEFAULT NULL,
  `shipping_method` varchar(255) DEFAULT NULL,
  `shipping_charge` decimal(11,2) DEFAULT NULL,
  `postal_code` text DEFAULT NULL,
  `postal_code_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 - post code based delivery enabled, 0 - post code based delivery disabled',
  `payment_status` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL DEFAULT 'pending',
  `txnid` varchar(255) DEFAULT NULL,
  `charge_id` varchar(255) DEFAULT NULL,
  `invoice_number` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `receipt` varchar(100) DEFAULT NULL,
  `order_notes` text DEFAULT NULL,
  `completed` varchar(20) NOT NULL DEFAULT 'no',
  `type` varchar(255) DEFAULT NULL,
  `serving_method` varchar(255) DEFAULT NULL,
  `pick_up_date` varchar(100) DEFAULT NULL,
  `pick_up_time` varchar(100) DEFAULT NULL,
  `waiter_name` varchar(255) DEFAULT NULL,
  `table_number` varchar(20) DEFAULT NULL,
  `tax` decimal(11,2) NOT NULL DEFAULT 0.00,
  `coupon` decimal(11,2) NOT NULL DEFAULT 0.00,
  `delivery_date` varchar(100) DEFAULT NULL,
  `delivery_time_start` varchar(100) DEFAULT NULL,
  `delivery_time_end` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_orders`
--

INSERT INTO `product_orders` (`id`, `user_id`, `billing_country`, `billing_fname`, `billing_lname`, `billing_address`, `billing_city`, `billing_email`, `billing_country_code`, `billing_number`, `shpping_country`, `shpping_fname`, `shpping_lname`, `shpping_address`, `shpping_city`, `shpping_email`, `shpping_country_code`, `shpping_number`, `total`, `method`, `gateway_type`, `currency_code`, `currency_code_position`, `currency_symbol`, `currency_symbol_position`, `order_number`, `token_no`, `shipping_method`, `shipping_charge`, `postal_code`, `postal_code_status`, `payment_status`, `order_status`, `txnid`, `charge_id`, `invoice_number`, `created_at`, `updated_at`, `receipt`, `order_notes`, `completed`, `type`, `serving_method`, `pick_up_date`, `pick_up_time`, `waiter_name`, `table_number`, `tax`, `coupon`, `delivery_date`, `delivery_time_start`, `delivery_time_end`) VALUES
(20, 20, NULL, 'ewtwet', NULL, NULL, NULL, 'werwer@qwerwewe', '+51', '233333', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10.00, 'mercadopago', 'online', 'PEN', 'right', 0x532f2e, 'left', 'nJsH-1690818634', NULL, NULL, NULL, NULL, 0, 'Pending', 'pending', 'txn_b7SSteqU1690818634', 'ch_z4YJUy2Bp1690818634', NULL, '2023-07-31 15:50:34', '2023-07-31 15:50:34', NULL, 'zsfdA', 'no', 'website', 'pick_up', '07/31/2023', '12:00 AM', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL),
(21, 20, NULL, 'qwqqwd', NULL, NULL, NULL, 'qwrqwr@qwqwr', '+51', '588545', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10.00, 'mercadopago', 'online', 'PEN', 'right', 0x532f2e, 'left', '8G2K-1690818696', NULL, NULL, NULL, NULL, 0, 'Pending', 'pending', 'txn_fESTUYaF1690818696', 'ch_r8le8gvIe1690818696', NULL, '2023-07-31 15:51:36', '2023-07-31 15:51:36', NULL, 'qw', 'no', 'website', 'pick_up', '07/31/2023', '12:00 AM', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL),
(22, NULL, NULL, 'kjjbhkbjkjbk', NULL, NULL, NULL, 'kjnjjnnv@lsklmdklmw', '+93', '39892389232', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2.00, 'paypal', 'online', 'PEN', 'right', 0x532f2e, 'left', 'XZli-1701482261', NULL, NULL, NULL, NULL, 0, 'Pending', 'pending', NULL, NULL, NULL, '2023-12-02 03:57:41', '2023-12-02 03:57:41', NULL, NULL, 'no', 'website', 'pick_up', '12/30/2023', '01:00 AM', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL),
(23, NULL, NULL, 'wqeqwe', NULL, NULL, NULL, 'qweqw@wqwe', '+213', '3414134', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2.00, 'paypal', 'online', 'PEN', 'right', 0x532f2e, 'left', 'bqqG-1701489328', NULL, NULL, NULL, NULL, 0, 'Pending', 'pending', NULL, NULL, NULL, '2023-12-02 05:55:28', '2023-12-02 05:55:28', NULL, 'qw', 'no', 'website', 'pick_up', '12/14/2023', '01:30 AM', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL),
(24, NULL, NULL, 'wqeqwe', NULL, NULL, NULL, 'qweqw@wqwe', '+355', '34141343333', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2.00, 'paypal', 'online', 'PEN', 'right', 0x532f2e, 'left', 'TBPJ-1701491945', NULL, NULL, NULL, NULL, 0, 'Pending', 'pending', NULL, NULL, NULL, '2023-12-02 06:39:05', '2023-12-02 06:39:05', NULL, 'wqwq', 'no', 'website', 'pick_up', '12/01/2023', '12:30 AM', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL),
(25, NULL, NULL, 'wqeqwe', NULL, NULL, NULL, 'qweqw@wqwe', '+355', '34141343333', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2.00, 'paypal', 'online', 'PEN', 'right', 0x532f2e, 'left', 'dLIf-1701491992', NULL, NULL, NULL, NULL, 0, 'Pending', 'pending', NULL, NULL, NULL, '2023-12-02 06:39:52', '2023-12-02 06:39:52', NULL, 'wqwq', 'no', 'website', 'pick_up', '12/01/2023', '12:30 AM', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL),
(26, NULL, NULL, 'wqeqwe', NULL, NULL, NULL, 'qweqw@wqwe', '+355', '34141343333', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2.00, 'paypal', 'online', 'PEN', 'right', 0x532f2e, 'left', 'QtTB-1701492085', NULL, NULL, NULL, NULL, 0, 'Pending', 'pending', NULL, NULL, NULL, '2023-12-02 06:41:25', '2023-12-02 06:41:25', NULL, NULL, 'no', 'website', 'pick_up', '12/01/2023', '01:00 AM', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL),
(27, NULL, NULL, 'wqeqwe', NULL, NULL, NULL, 'qweqw@wqwe', '+355', '34141343333', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2.00, 'paypal', 'online', 'PEN', 'right', 0x532f2e, 'left', 'AlSy-1701492089', NULL, NULL, NULL, NULL, 0, 'Pending', 'pending', NULL, NULL, NULL, '2023-12-02 06:41:29', '2023-12-02 06:41:29', NULL, NULL, 'no', 'website', 'pick_up', '12/01/2023', '01:00 AM', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL),
(28, NULL, NULL, 'efqe', NULL, NULL, NULL, '32434234@qwq', '+93', '232343', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2.00, 'paypal', 'online', 'PEN', 'right', 0x532f2e, 'left', 'Bjsq-1701492122', NULL, NULL, NULL, NULL, 0, 'Pending', 'pending', NULL, NULL, NULL, '2023-12-02 06:42:02', '2023-12-02 06:42:02', NULL, NULL, 'no', 'website', 'pick_up', '12/20/2023', '01:00 AM', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL),
(29, NULL, NULL, 'qwrqwr', NULL, NULL, NULL, 'wqrqrwqw@qwrqwr', '+355', '33333', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2.00, 'paypal', 'online', 'PEN', 'right', 0x532f2e, 'left', '2DYH-1701492167', NULL, NULL, NULL, NULL, 0, 'Pending', 'pending', NULL, NULL, NULL, '2023-12-02 06:42:47', '2023-12-02 06:42:47', NULL, 'qw', 'no', 'website', 'pick_up', '12/22/2023', '02:00 AM', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL),
(30, NULL, NULL, 'qwrqwr', NULL, NULL, NULL, 'wqrqwrqwr@rwqrqwr', '+355', '333333333', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2.00, 'mercadopago', 'online', 'PEN', 'right', 0x532f2e, 'left', '7GMN-1701492189', NULL, NULL, NULL, NULL, 0, 'Pending', 'pending', 'txn_Mj6he2rG1701492189', 'ch_mKtDSgNs71701492189', NULL, '2023-12-02 06:43:09', '2023-12-02 06:43:09', NULL, 'wqr', 'no', 'website', 'pick_up', '12/15/2023', '01:00 AM', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL),
(31, NULL, NULL, 'qwrqwr', NULL, NULL, NULL, 'wqrqwrqwr@rwqrqwr', '+355', '333333333', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2.00, 'mercadopago', 'online', 'PEN', 'right', 0x532f2e, 'left', 'VFJi-1701492212', NULL, NULL, NULL, NULL, 0, 'Pending', 'pending', 'txn_Hsjdbuzf1701492211', 'ch_JyzZvZ6Nl1701492211', NULL, '2023-12-02 06:43:32', '2023-12-02 06:43:32', NULL, 'wqr', 'no', 'website', 'pick_up', '12/15/2023', '01:00 AM', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `review` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `psub_categories`
--

CREATE TABLE `psub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `is_feature` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `push_subscriptions`
--

CREATE TABLE `push_subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `subscribable_id` int(11) DEFAULT NULL,
  `subscribable_type` varchar(255) DEFAULT NULL,
  `endpoint` varchar(500) NOT NULL,
  `public_key` varchar(255) DEFAULT NULL,
  `auth_token` varchar(255) DEFAULT NULL,
  `content_encoding` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `push_subscriptions`
--

INSERT INTO `push_subscriptions` (`id`, `subscribable_id`, `subscribable_type`, `endpoint`, `public_key`, `auth_token`, `content_encoding`, `created_at`, `updated_at`) VALUES
(3, 4, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dt--VeNXQpk:APA91bEXROqytusuQiBN-WidokRxoe_IH7kR6Qi6zXD1Ajx-XyQ4EtEoJxg62WwI-j0RFq2xUjBe-Is7h17zlUMntaf4mgCUeDFtLiW98h8xoOfL3ynutkpMHmyqoldRHVZDZGOQY98X', 'BEXtiHSUjJseqePlRDOqeeCDVSFvZdAyI8BupOIw0bIztqWL3W_pduNUd91A-3RzEHIYfmSfKjusX8B0JG1gOdk', 'GsDOuT4NTf6KGQt9RRVq0Q', NULL, '2020-12-26 10:04:17', '2020-12-26 10:04:17'),
(4, 5, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fetLuDtmxNg:APA91bHqqBZBZzCuFd8Ae3hGHo5q972ktIjfZuRzek59nJXiwdn88UBtnuU9IwaxVznCJGxn1SdhlOFZ8sIsGyVBoK-GIm6KCk0iTuvwc1e3o0H4hfunWZe-o98HQpIXpYDAkan0DiAy', 'BBBfXhMcnTWXOPHP4l2UObEUf7RGMkxoOK5_G4nGhLC8kkXcBdMWNcuhxk0BsSIEdw0jWcZTQ_i_569oZDqEnc0', 'k-yJKI5UjvvHbYQACv-Nrw', NULL, '2021-03-24 07:37:03', '2021-03-24 07:37:03'),
(5, 6, 'App\\Models\\Guest', 'https://updates.push.services.mozilla.com/wpush/v2/gAAAAABgXhAyYoUVkJ8ymIaucMN78o9LdNIJ2ZhWATCMTUa79O7Q_6IWuwZlWOkNi33elgKb73GjntPc0ErLR7FF9b0UU0BNiDpJdsEv0uqcGKdNWkiYlAdlmNPaR0rKI8VivAkeCPzjYhykXGdYpXVpR3TxceTSpWBzxivvTpCTLQlUq72QNO8', 'BP6E_WEMY_Gq-nWKfidLIo4fI4kDlWB3XgnAPevTYRa8niS4TB0_OknMpwML1r_i-dWxE69eDU6e_TnUgufsd5E', 'yzcj6vcUg0WgFcQH6kC7kA', NULL, '2021-03-26 11:47:44', '2021-03-26 11:47:44'),
(6, 7, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cmWvhqu3tv8:APA91bFobMGJpxJvuqHpFU7Y5vtVZNcvsykv_So9xDDoCqKLewXINW8QbmIkpha9i7CJZPAoaZjST1cJPnwwa0rbp-VCk8LOWRoxcuIyyUlsOIFCMCOwysBSFZm_1eBbVV9aeyLSENGc', 'BHKiK1CUzfBe51go0MhzpcrTdsa0qaLhyS4v-S-3U7p7piNG31Lv_awN0wHHqn4tK3KMACk1xiBS8d9vB1cgLKI', 'fgFmWWEiO9fQ1m-IDBOW3w', NULL, '2021-04-03 00:02:31', '2021-04-03 00:02:31'),
(7, 8, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eh4uTNYjL8g:APA91bEX1UoNIWd9wkORCAREAofoRcvvbmRdDNMQwd1d-EZ0lbfCU5CUXewaZucNBK81XO0z6h0LnUaBFPHRlEDrUGm90vu_GHDd5lrndy3l6Otqf5i921YWUa-Xwn4i0MSW5uoPAeMQ', 'BMH-f875_KRifObIrwG57s-C4FT-X6NaQ0s8rTDEOK5kxlS_eCYT77cJjM2UsxuR3xAT49H_2ErlUPE1YnRtBUQ', 'x5mQe5dLhNw2H_x6j4jaOA', NULL, '2021-04-16 11:36:28', '2021-04-16 11:36:28'),
(8, 9, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dObB80OmAaw:APA91bFv7cirSdv3z2G0IU7AlDsIylsVt5C2Z3q53ZUNLMlvlOIfQiOshMF-xKknu8706NDLq9PJyhl7eCdOZlzw-pxRrgsW-p2PjU9N1bePkHnYSIPnTp5a4g1N1tDQQQQWNDjy9slX', 'BD6AiJcjC3gwlLEYPJ2WBaozmaxp9-Q2XBtJOa9NvggCIhT2jN-cjkpGJS2uFMudkJJsvaxfQXpuhKjfYYrba3g', 'YywnXPOaIAiGmM_zru-29Q', NULL, '2021-05-06 09:40:57', '2021-05-06 09:40:57'),
(9, 10, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eZKf01giLZc:APA91bH4tmbQ3s4Lv-B9nztPSZW3yd7Y2uXC-60sHsGIhKkOlUxP6oC68n37Vtq-FBk-OlTVlU76weuJ_vrW0BliQoqvrNRb8xstdCONgBIs47-5fgbphTiuONZgUp1nDtX8LfcFM-Iy', 'BB27dE5e2Bm7GTRujTwXihSJFtX1rwSXl1BUgLLWwI3jFdV5m-gvmSmbsVURyhtmbFmJrdUOAB4T8aVXJrUQsVo', 'gl9nLuDpTn82DcL_hIjndw', NULL, '2021-05-23 00:31:34', '2021-05-23 00:31:34'),
(10, 11, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cPVrToqh8P0:APA91bEiMbgqN8bDAhr0mbdzXPcFOvc77t1WzG17LnxbEo7shs1OJ-UhjuXbKMj71Nx0_EjBlZNmj4Nl44WiksfgkV3COShKvj02S_ZpkTe5fD6WFwtIlPZ6LO-IrH57t-lVOinUQkHw', 'BFkWNoEXEsV0OhL7ry_yJngdJ9nSAuXv89yIgABu39xh53VUfgZqpaMNiz5w_yLqFcZ935BVRJ1h0tEm3QmqjaY', 'ozwxzjykXazMuvf1RxBK3w', NULL, '2022-03-08 11:07:58', '2022-03-08 11:07:58'),
(11, 12, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eSdjeQS-6ec:APA91bFUxeQX0vknYUYO5cF4Bau2chgFvbcNkVDiWxQzJFCC-koRWSuqHWlB-CNygN8YDUgGxCLD5EVEx8MpSGHTxkTpypT7lCxo9MiYVJdRjmLkxlLilJmyI2277FKumLhLbQM55CmZ', 'BCe9VF_iGITjvarsEaQ0f22fLX8lLZbXeQPscs4JQyT2iW_w6NallOMSkeiSk9tnEJc2Grzt4dvbOis9YS2GyFk', 'fVnvCzgIc24uKKVwF6b0rA', NULL, '2022-03-25 09:37:15', '2022-03-25 09:37:15'),
(12, 13, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fVC8cace-fw:APA91bEWCMtj2rRSwKQ1q6JQKrdw5X4JAk8FKP6kbWS9Zr7koUH_yRlG7mVwaycVt20EO7UYs0xe3DP26Xba3xGo4tPhS3Rjapa3i-2MNewsDloDPsDppAFkm-X4FKqpWqS_Vk6L9XMS', 'BLW-a2b-CPlH0E43datHyflA6OxN0IIpVKNh3_ITsz3H5XKsD_0GrS_JEW_CxnLnrFqO7SMjSAA7niVvvKzPwEw', 'IHXSSIH3ujQohnNsTkeqvw', NULL, '2022-03-25 15:10:08', '2022-03-25 15:10:08'),
(13, 14, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eAFjl2NwK-s:APA91bEp8b2PiBhmwX_zmnbBUTHukeW5vNABILeBOl5rsDHvN95kgd_3ywilHH9NfNnYpm7a7aJgNPXUc0gJ_7uaFuYjitNc-QRbXz7ys5ZGdtfSKOnGpiuyegInmd4Gzk2SpknKc4wc', 'BE0Jighn2izrgHO7NzhtdaOCAw9GMFmTGmRkx84bmXevQvLyG-60cF1XPDIVRhjI2AmaU5UkXQ21Tzey3isS_1E', 'U_cZTnEOkcCl-JNn74xpGg', NULL, '2022-03-26 05:55:51', '2022-03-26 05:55:51'),
(14, 15, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cYxO9t_xdXE:APA91bGQ1gBBBwp_ci8cdd_QyMhpiNn_YQHz5T7jYq_Rpy361fJn38T1n4_JepcLWvTVcWKS0_rKSxDZwj98j4tcKJ4WDTYftcpmHSOwzZ_wHMo-DbmOg7OCmo1H5bmM_qzs1JwSsKq3', 'BP7hrBFjwTu4WgVg2cRCQsTQqZWQVsNqqyaC1BOtpJreNbAHYy3_gY_UDojsdWqwiOnFEoNOoTcmTn13PxvR2cw', 'QumnEVX8v9ijINcYNHcXkg', NULL, '2022-03-26 06:11:44', '2022-03-26 06:11:44'),
(15, 16, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fL9PPVT6jlM:APA91bF1dsI1uMzo_fGgOiP-6G_LSRBmOpdao8C9sSPUtd4Pu9bvcJbOcFmiCbEKxdD2TGk6elsRlMa44pw4m73kcZy1Z6dWdk4uFxoqwF542pO4ZgneVD6DT1-2cCiMcadxvdHmQAQv', 'BAS6X7QsadHhhmu6d9Vw3EaCWJj2b2Wy9YITG0MFStEV4Gb8VDZFhiIm1qIE9Ni-OP3krftkgYTE6M4Bg4WOReQ', 'CxwoglDSONZr0rYK-AR4LA', NULL, '2022-03-26 06:11:59', '2022-03-26 06:11:59'),
(16, 17, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dvFmtOYkKOE:APA91bHpWKVtET2wBSGnEvLtLXpy5S150lRksdlSMTIDfiUNahnnOsJErkgga8EjvraIjSHkSe_epQEiN7naxS7w8vz9PmnOURQi4Bu4dBQj--WhHTyH50BPXBF_ZIVKcaOIlo3KVadt', 'BI33xxQv8EJZFF80Hyx-P4e8D8M5iMhPi6olDtwM_yQ2TXLuUMgoC2EK8fYfEsR2c32z0C2PssTuk14tEHAYHHY', 'bIvD5b7qsbv6mqcftsSyWQ', NULL, '2022-03-26 06:33:01', '2022-03-26 06:33:01'),
(17, 18, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fVc8RLnHZ6M:APA91bG2us8fW833NzlJ1ilqh8kkVoNrbKck6JZezNXegKjw8NwAm8vDovgpLndAmHNJA6gRfznPD_Rc8vwJ7XXOE3pE0KBokTaozkMq5M4UbPp8MReZ3ho6_iyqx9FrnXjnpxR9wxpa', 'BI4KhyzTEY70WmY4jZchN0M4klUqNIsbGos7lIk6SMhkweV5P5qtWdw2z5GXVFZn3vgkPbl-ozGZ6zgJBQIP_kA', 'mZDMBSqnZpW-X6OEWsdt1Q', NULL, '2022-03-28 13:24:40', '2022-03-28 13:24:40'),
(18, 19, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fgbnPkwsCU8:APA91bGJfLBxkTgEtJePLRIsyfSu2BIPQ22BYwHpAhVrA4whhAdsiHpOSOVr4Vcmp_pTLgRfP2PisJm_fG7so9YU0lNjbXEYHQJ24RkHcDf2eI3mP_5_BM9ALtjdM78nUxodMPYY4k5x', 'BMSdDc5maYAbAa8F3L-Vd1USadABzEWcUztaWRxgBk1Mz4ClvTrg8mQzXV_q7NUkYoCbC3vZ8CjfblbJlaVYDQg', 'JYpTiwRkwmPWtu0t5BEvng', NULL, '2022-03-29 07:23:02', '2022-03-29 07:23:02'),
(19, 20, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ePVbno9kWtA:APA91bHQi13UwmBnf_z9erJ2VBB78MK_hfeRvQ2tDeLiDgHC4Sl71dDktuhYtjOEamBq_w75T9_Nu0tJqw3YPRPqKW09ObMCn9LiA6pbQKWNYnJujatjDFL0VzZAhB_RLPo8KAdadkqz', 'BJYVyojs6MHZ322rE7rCQmoqeF9BHfOmbPG2c_U7Pv9BVTAiZM1IoUGw9gixoZuCaMHmuCO_GyrYsVDOHZ5bq1M', 'EbkcDvNrbLb31wyxyMgxyg', NULL, '2022-03-29 07:26:21', '2022-03-29 07:26:21'),
(20, 21, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dgvxW5cNw5g:APA91bH8Au63veVx1bkKpGB0g_MxoQICgJ3bWaP-QtyowdorZUGcayo5xASkTEFjJri6IjOyvRP7WKCv4jbr4RxT4PD_zr-3AwHlpG00d8rDd-bTvzyvTK2Aj0r59zpKtNSEw8a99VlZ', 'BMz4LqfWJZcdcEPgXJccF1ao7kxQ5176SUTI_nE6_2kcDGX2bHYeb1Q__2I8Vx0poSOvFSJhZckR28N5oc_XRII', 'FKpeggtAtAG-Fr2HYW1UDQ', NULL, '2022-03-29 09:33:41', '2022-03-29 09:33:41'),
(21, 22, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dH8KnORYEVQ:APA91bEJFuFWl1iloiH44Fuot4Gnoh5p0aUxs_mtrPVsm7O3Dkjd8vELa2DeW9ETdHFcSBkyZt8g0dERLI7jZU3sz5Kv0UP8S2UuDgkRGHC3hRIDp9PdYR8srv-7y_EitmUEY8kBhE9M', 'BGYGP4RPbx_ItA6mesKRIpYMuilij5XV7aKNj4u0VhWX2L5eL1PgV4qlS6Rp8ruvy04J0JA5nV8GfatnmkyxpEg', 'J13QxHa4fFtWFbcofgxp0Q', NULL, '2022-03-29 09:49:54', '2022-03-29 09:49:54'),
(22, 23, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eV2Fy6cICFg:APA91bH64deQsEs8og6oMqWSN0IV80-6IJtBR0MmRHwpm6vNvyY1Q-mVU8IK9x_BvxPuTNje_k1Ur6G1WhNqi_kmlCXQZoikKjkeOuLzQ0JjcoT5enML53YCw__PX9i_yathf5ajux8x', 'BJSRrN5bqx-Q0ZJAmPkZD6HraYwjGKo-Ls79nO-wTkiiJK4B87ocIw1xSGy4NplL7DPrviGevUPinoW95rH9FGo', 'wo-kNkXLQpNqbqUdvvxlRw', NULL, '2022-03-29 11:31:26', '2022-03-29 11:31:26'),
(23, 24, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fjhrX4tX4Cc:APA91bGSxATfx2askizSwnj_XEEe1dirC38jMXFsCL-Nip69CVioMNbApRMS8_A3RzlWDBXI1sUm2DdSq0-OnXsqO1fror-THjD3R107bF_OBsJWSy4YfrBCdlqD_KZVP_MO3FJbIyIO', 'BCv7R4fibTLn5GeBd9ItJtSk3pAXtoy0_vGdDcYqD1OAVqP-we7doNBGyb5kwmoFWuNrYcqcDK4j9nmqtat2jS8', 'F4Bh1BXCJ4ElCNUYhlYEpw', NULL, '2022-04-04 14:22:56', '2022-04-04 14:22:56'),
(24, 25, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dMfJBWeK59g:APA91bHVx8OoUaqqaZROwpYLGi0oL_hpP27-BHhKWcsb_Cf3JhO_0nfblhoeyZWsntig9h4yIv20-lwaiIUVaKQcZ_GtyC1P4DWizrLSkGtYLUtO1Erv9Q5SN1gPfGFy9BN9-J9M17Qi', 'BFnEhSqjkzRKNzObnvrebeVoy_RhIVnpxhKQ3H5ACaXK5gfbdkwxXhgLQtwTGypp6_stQ7xdXd5LlIQpv44YBZs', '8WigyorhUXnwfrUXwAi26A', NULL, '2022-04-06 14:45:27', '2022-04-06 14:45:27'),
(25, 26, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eFLG-3oEzKI:APA91bF934GtVfeJ3I-0pekZ3k2uYGQyExkei8SLug9CuMb0uXNj8p0kkc_kGPuzAbW0oVt3hlOWdNKmChP2aAWkPRwfGtkxgnDodUhkEZamoo92yi50N6Q65AOOGJVrydcjfVmWFoWF', 'BNhbs0yBnUjiWbiLhQsXjR4QKSL4XgnPG90SUs5gtkHD4FrOwn1V62gOUBO1bjIGj5oqR8j-3zKjGHLaPCEZuCI', 'NoxAW9LgVmrUxNOcIePDww', NULL, '2022-05-25 12:10:23', '2022-05-25 12:10:23'),
(26, 27, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ddjYk0PfZN4:APA91bHrypeB-IsqioQhnJ5YUV1nZxv-bIK5tKRJppgC4q2mcmEib9ng0gFFlm3_xs8jiHbzQ_KnQPxthBm3qaMnEyRFuv2r-jjs_xE5ie6kVK1zCKjNL1wE0nDC8Ftu-vlA0qtCDYs7', 'BMbq5BZB64P6zkalym9HtYBaHk_D2-HfF4cewQKD54CdVfmu-axKqPuBt1S6z2zKMOyxoTgamAJj_r68zAXkarY', '0L3fcWHSQ0EUNTPJ1U5o8w', NULL, '2023-04-10 05:35:33', '2023-04-10 05:35:33'),
(27, 28, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c6z1jcd4ug8:APA91bHU62xxRJMvKKsE2hAVbIP5aHsYN5kNXcyMJ1MJ7LU16BG1IJiHmangsq9yWPlFoIpPhKB_uIzldr7lr4jh01AqC5NS4tZVHYBZn_zrkZuWh1uOWPxtQQGudUwEc5XGFv_M1THK', 'BP8wsKuMUhGdPmNWoyMJVFcEEISFpqpb6q4GWjh_nXdqVrLhLMyjCYehZOa4zYwTPakUoFR9peaS2jt10fxQUHk', '_-t7eG5DZKzXwEcwoaA2xQ', NULL, '2023-04-10 07:46:43', '2023-04-10 07:46:43'),
(28, 29, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eZJp6IVs6lo:APA91bHggwA-gOtuZj-610cq9vO2dR3OuTKsklGG4bHXztdyX4tIQsDX--944xanSG3DWa2wkq6EflFM0i-r-OXQCsFa2nGloFQCyDvOwTWPGaXSbD3LCXAzvqJ-K2SFOvvsMSFq8h-7', 'BEbOX-LoYumTFSCNdDrIUg90a9SYUcom7clsKBbU00kKGtDfoLUoevn9GgLLuvsdYPkuAgoGkvAWhhJNhB8aK0o', 'AcUgE_pVVYgUXK8M0Uc2gw', NULL, '2023-05-30 10:54:57', '2023-05-30 10:54:57'),
(29, 30, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/crP6E_IuO4c:APA91bFsW-IbktnqNAViADCPpzJLw7EYAMjORIvVVvtaTBPXeTm2kEm5G4x2z6cNprJenoe1d0Yai1c41q3_D1cI7MhlK8_PBEfauBwObb6T6yeNV2G85ubC8TePDEA_hvFosKrZ7ETt', 'BF_uNVyrXQCaOJfkkiLVfuiONpfSHzwY0sY50y34cPGyfcSOfvV26SURANZWwWel3JmLkosZxQ96FrVeKcRHwmk', 'y7fvyjjCj9EPVR8fWDKdZw', NULL, '2023-10-29 19:37:23', '2023-10-29 19:37:23'),
(30, 31, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/evAcN8u3UK8:APA91bHTb_z0TAkRj4Q1uwpoUIfAtYgiRmuIVDzb5efpYa7GztuOnwyAlSoX_Brr4a4e6-pVYHq-Y40PTxJPWU4baK3291phTOasnawOrrPMrUxMgPoWtEVHVH_9vQYpMFzfrXV-8E2q', 'BN-wNbyfjALsQgWxpbxD8BJzJ-acqUrA8yr-e9Vg2-jQ8m5DRqLTdxK2b2fvNp0SgTLYLAKAlTHggp-Nx8PZPPs', 'ChZk9Rf7CY0phX0Zd3tXFg', NULL, '2023-10-29 20:15:58', '2023-10-29 20:15:58'),
(31, 32, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cAZAhegjhEc:APA91bFYS33_Ychci-1EdB81WHWhYIh7zUbGTFdIvdurmYotPux48atGfwT0bKlfsrPhEfQ3xC0F4v4SZCgbTknY-ycC-tkY1fUrC6TV6qxgOg1QQFrRE8XdYle1EH27nTfm5m8_SnXU', 'BGHTazm-VByeMf0CDGIn0Ue7jwCNZh_NeeiFGy3kS-0Bm8UyQFjeT5e-L6gDvEOsBb4gt5pIm68fcEUkX1ljtnw', '7_cG-JwadOLTUViKcPXXcw', NULL, '2023-10-31 18:47:41', '2023-10-31 18:47:41'),
(32, 33, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dJCnGFY0Wug:APA91bFQEHNvNsILZRjDing5uzPav82gx9A3HyW6cTLw4w9zQ35H6ylG9vjY8bvjL33MOgyYuKh8DZb4Rza3acEuEVzJtlA0iQJ7ibK91EiypskeaV4Uf_9mqnr8Lmao3icQyGDjVNui', 'BAzQ9zB4rwhB53g_MoVqoWAxGjxuTbHxAF3_of4weQLwSbh9dNIFJZveTDZcE-imRbqJcZrlWBSd1Gu1E-n5irQ', 'o7pCt9z53vwe7sZG1hxD-w', NULL, '2023-11-05 12:42:59', '2023-11-05 12:42:59'),
(33, 34, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cea8v1kH_Cs:APA91bG3saed7qQgKVhhARjwRUbtPtvpRHb1JFrWX8l6x0Dh-rgT4LIrOBCSziSjMtoMck0F0LejQHiBjD-yHQMD1hBueSrixIjX7bAJSjBlbhUYkhRJkg9ScgR3iu-r-j0ByygSadOg', 'BPhnb6tCOqaIkI7dPFG_SYB-tqdG7B0lojtfguljNFZuKwKg2tXdmFivwQ7qjnxJ-nL3wDK9NCvm8dbne8LMz44', 'VGO-jgfFIFSdyK8ChBzR2A', NULL, '2023-11-05 19:27:32', '2023-11-05 19:27:32'),
(34, 35, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/f6rwiho4X0E:APA91bGs2mSb_kA8QVqOskzQXaDW6cN_HcslWExa4lxGexFGmlTmgdsv0KTdIVGPWPCt-88dbK52TbcKytbHmmBbeJHSEFzg0HPwbkjn3mDe1wmThV4JzJv-NSww0Yyam2w59yWyZj5X', 'BDujSMjlbJzEkCCI__hJ1wXiryqOeXWHpB1g--_FEWV4t_pn702vkI8tcWMSpv_EvMKcRMN2KNqwFgt0CTQOVbQ', 'fy3nEhJ-DaPQdF0CnvsznQ', NULL, '2023-11-05 23:47:47', '2023-11-05 23:47:47'),
(35, 36, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/f9591y2brvg:APA91bFHsJCB_EfT55s0IkISThi_HOm73tvcc-R9x3nN1idWeA9ONkBfsFLnutLCGv4yrHkFX6V_EQL4RstHmorsOpHjosMOjIhBr29xYHKi196CN3ZPf6j-j2tEdsQ2ubSJLTGII9Z2', 'BGpizn69yPCB5iWjxOD55GRxIm-aw2GTkBpeAgu1uW6T8lrreJ9j1sSmrKMewIaBZcgiOmhjdJkiMiena3Rhfjk', 'B9eGtowN2hRbdlhdtYBqGg', NULL, '2023-11-06 03:17:21', '2023-11-06 03:17:21'),
(36, 37, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eyDvnxZdRr8:APA91bGM_fTm_SfGZmhP2owCbPuklkp4a12dwBAr1lyPHvnhSp3UGPcl4N4y1m_vK800qKX6g2LldAipXhWXMMLH_ZpwBjDj54_wff64QQScXPhkKPIVh2tBrX3JjrNcNR5sg39WUffw', 'BFtDcJoneETbiMJkxiC_wbp7-POVwxKAVX3d2ynHLRt3hFjyMxmR4KxKG7UOQzHvpnrN3sQBkjuFabUdgw3_70A', '0xxdGakPPsEhm8jbXDm2mw', NULL, '2023-11-07 17:49:32', '2023-11-07 17:49:32'),
(37, 38, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fisV8TfYzs8:APA91bH4ulwG3WaWTF8y-nIZkkIlm5EvFe-IucHd5g2n3fOajMXYm4YE4TIdZmkoLvOaEWVCIwNVUeHAuoI-ZQMi9VfMkjy0wPP9ZepjKBophLfKNcqf0ZoWVHu_fD1dA1qJE3a83TEY', 'BEykGs93KkBcjFH8m2Mb-ljYVYeyYSyapZpuEEq__la7oUA-KdhZkifR8M8s2TL-rJgzKY-V8Xi4FtwDfppYu2c', 'O6UkSzFD4xDudODubav2sA', NULL, '2023-11-07 19:15:24', '2023-11-07 19:15:24'),
(38, 39, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d0KaNlMOAq4:APA91bE-tm3MhOkC1hUWjdzkNCxkdpoeAYEWNyxio0D5P-9tENKtAO-6H8y4hgXsKrqFlDbzVu0LZJrqGT75EG0WX5wPM8i-K-spBjW6xHcKuzpqMrWXMVkRsRHUQJkFCRE9mDMWWJC7', 'BBq7cek7LPEOQ1f2dPrdmo0IjmH_o5W_lRMkDVImrKpXu6riBl6TkpZvwqO-7N2salj9QND_wl-_eR0wQYtTl4U', 'mtzX7WrJah5JK5A7nRcs6w', NULL, '2023-11-08 18:06:11', '2023-11-08 18:06:11'),
(39, 40, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eRd4y62m3r8:APA91bHVHJnwlt8Dt52gydu2Ik4qhXZ7U_BhuhI3aGethzn6sTpMgY_zq_4rC_xnQDqhkCIT_2ZXHCMZlePWLh0c5Ay_-Sw7jXkxoiWyJYsVb8PEjvVkdCFX5GQyY8O0jnSwWOKLQ3rG', 'BFBYfNG1BnXjTwsPr4zF7R_L79sDeD0oK63qM6Jq4I2AEsePf7Vy2gehRUxp-lCA1pLIHbiv4YiMFeDuzK60I14', '7cB_ajLW-dIrrCONDuXKFw', NULL, '2023-11-10 23:25:37', '2023-11-10 23:25:37'),
(40, 41, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cNyuGfn6tjo:APA91bF5BppQzQ2dnF_xH-85-iY3Sj-yF5y6HRxooirVbz5TW6zWDmuKi8XFyHJSaJJ0K9kvvaGOmwPHFNEEeqAgjUC4YrgeJth7PZKKplu2qRCVpejDLE11y5a_iCJUC159JOaNIK7D', 'BGfSX8CI10hdvRKIQhLeaMkd-fohT3YZ3gH8rT6xVD_yvGyFslb9pU7VW71W_ZeDurGgJp0-1O86vf-T2CbSW_0', 'M0B9sKus7jNISo4AHA16FA', NULL, '2023-11-11 03:03:13', '2023-11-11 03:03:13'),
(41, 42, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dzmWJGlrBi8:APA91bH3Gx8HeGWufLjg-wnRhsMJeYBs1KB_KG29fcjbQaY3qY9S_-ygWTn0PPfmtKVvReCr569tpA8JFFQMab8S4QSH2p2bZLQXM0a80D6bX0tV46bGY7QsG7wDgXaeVZplh1HiqmpG', 'BHGN1y8VqwCQo76ZnGbpxchM0uEQNzifmArsjt6Mb-AbEqjF41UlC0U_xXhisaRzJTwmL2lWhGbZr-AjVpTx68Y', 'nr5hvm7DFS46nkXc5W4GdQ', NULL, '2023-11-12 08:37:58', '2023-11-12 08:37:58'),
(42, 43, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/f1WuZlf5UeA:APA91bFXcFJCeKpg9gCbvdbIQ2H4Qjq3UQ_DconYxH81nAMGjIgSEd2zw8QHSgTnlTaJyAxi3W7uaENCImjuhpq6i9CTI5Vmg4U7Fad5AFpdtrJaPwlgD4rUzcX1JjylFV8m1Pz2LpCP', 'BKsjj8j7yy888MbVydr225EU65kseJ4A5fJJpxkVgFcZQRaN_qPlkKmLWSL5dNiE44BjnPtRiABn-zgjcnTw-xs', 'i9yk3D293EYrSB-rIBQjyA', NULL, '2023-11-12 18:04:38', '2023-11-12 18:04:38'),
(43, 44, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fS0B5q0kBPs:APA91bFrAVDHBpcEapDQLUB_obNF5hhq-RmWrWIEtHZ7smwkyJWlnibLNzk7OI94mze1m_1LGsElIhbt7Yu45XTvsf2U3Gnae-gxZElbX1YdOEwf4vm9xaSlRuLHUtoajoBGE7-1v5LU', 'BFnrZbVOwSzXceb2zxZLrSsvnlhNJQSy-EGnZ3KHKIQM-QvS1bSjNdYruUUby1fKqrZE9erBWBlAMF8cSB9S2W0', 'BLGcEPKleYwf5rbx_VJUBw', NULL, '2023-11-13 19:37:07', '2023-11-13 19:37:07'),
(44, 45, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fU7N2ufrtEk:APA91bF1lmm3Cu5YEWp3NG647Jail81mJDZIYvVTtiusEWg2SO72JaamlNABqEiXc7noerKcsKmcVQp2FMlM6QnT0IeCar3ByIKoFBZkUi_QfIWZHsGk4VWuk0_i5dToJwsUK_y3-Kud', 'BOaU3bUSpRuZmHH9g3lm1w9Z16MJ2gfpHiVd0HoWAc54aSCB3eEka3FT9iPHWtfae1iLPcVgKIWNvHhOfO7SvR4', 'aq4QXGCAZg8w5chP87yQLw', NULL, '2023-11-15 19:43:07', '2023-11-15 19:43:07'),
(45, 46, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ePj_Lr6M1Ms:APA91bEkwAJxpqkoDRCKt07GzJ7wzWGK-F31mwG-HeND4mR8uES3c3Sm7LB-gy4Uflwcw3t1bjeVldjc3phNuXXcs-UT5RBNRj6F6STcuX_zlv1vyPNL8VQCYXDwpyrlkEUBimMTqtXg', 'BDBNjX1EIXTW8YLKl9YGUOi81TVQ3vDUsat2gNF5zdPhN0VV0fnqcdk9VnalHrrL6tItz5rgaFziJsZ3uJ5cTXI', 'I6PyYOJ6AqrBKziPk2ju9Q', NULL, '2023-11-15 22:09:38', '2023-11-15 22:09:38'),
(46, 47, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ck2htnQSI0k:APA91bErJI13dkITPeb5rQS2-7uvg6WQTUOPw2KjRUqv1_MJZy9PMR1ByRinZGK1CAv30k2d43jxH8mm2Jmbq-3D7iOLkwms6idHutAe3e6PImXtyiTva5dHsAsKPQqClEsoiHRliMWY', 'BN5-itX2qB8suG6LLT3YFc5y4Fub2nm11uG9MPfzEVsRbCiyevn_fQanjiYLH5zS8StM3kBgXpN4uNM3Y3qSz2Y', 'plA9n1MIR90BYSEGlWbrVA', NULL, '2023-11-18 20:08:40', '2023-11-18 20:08:40'),
(47, 48, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c4z9lGuw1vQ:APA91bETI49RRt2lB0Dv6mg3KmkI6o2_z84t0BRvTAeMaaJ6Ub8oO5ktcHZK_l_tzBtXExjVBiFNTgKx_55aVhUOrRV-Wo38xN7q8j9CtEzauI5loWN4ojRFOTpEcMcsQNsI3oTFfK7p', 'BHeniCHR7LP51sI4LCnx08ncWSGvZV9761-x0RWDqNWjm6NGOqy9OWU_wuKB0ncOCDbWY_CoZ7oKHe6-6i-pBPQ', 'hBn4AlZ-s6HHaMv9CDsNkg', NULL, '2023-11-19 12:08:20', '2023-11-19 12:08:20'),
(48, 49, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/e_Lir-U6oZU:APA91bH8PA3Ko2dezxZ8w5CEz7qmJt_HSPbiIRlmlVePqSXoDJ3e2UII_e0GwIjFpaYCQSaJtQWsXZ0-F-FH0z8cDLkA07tbj6aOaozjquJwc0qFdl_-fFIQqmQekJUpLO4vyckVUQWn', 'BFYFsKpDq6EebWmmMxKOozqm9LXLhviqaKgyze2osONCk1a-Y1txBTg_LXl9UwIprjB0uN6lyFytuLneJ_sj8N4', 'xRwSGLZah88rMeEks9DzMA', NULL, '2023-11-19 19:51:54', '2023-11-19 19:51:54'),
(49, 50, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fj6yXiV5rpU:APA91bHoU24xYLU5DWEPI3wb1ektWlE5Jm4TJa9fv5qimIJOigbhlSA5oFC8GH3vBRRoRSuSfDm9Mhi6bLHC-NQmPABw24hyKTdGdOHqVMSCM2eDNOHls7knChHd3J55nsHPaRn5UvTs', 'BKqjvurM36SKWGqeybYD3tDEsCgpQ7fXkHnUci39Z5oHVxMnNe9LtRaiaK9b3z5PpevKhVTEd0-ECylTPARmAus', 'UWVBf8UBhpqKd6CClPl8nQ', NULL, '2023-11-20 17:29:14', '2023-11-20 17:29:14'),
(50, 51, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fUiABwm4_cg:APA91bGlvg0p28VmKQ0PwlvnHGXQJHb5YED8i_oI6_YTFICh4pC2ajZchhTZOIzykwI_seJ17vAJ6NwWhYNKJh0BGbrTKyJp79RFFS3RuWd3dNoJtpW8pes5FkNVzJiwcU1_Btkt59yP', 'BBvtxKRT0YJkt763V-HmxQdRPO7zJ9NadoYzwqxK_-ivEswFmw2JDDaNOGS6f_WdDoUVOUGNEztmRazlnlN2vIg', 'YicIPMJ64_0HGOKO5coPBw', NULL, '2023-11-20 18:36:46', '2023-11-20 18:36:46'),
(51, 52, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d0h5SCcAfik:APA91bGQFeNAXC7LgzdHse864y_s7DBVErXZPgn1_BaPy1rTz-e31uE_VshWOxOTixqe4bE66xn3KN94Mb_95qr5rxJA9Bap3cfTeQrSFLaYja2DWwYJjM7D4GaYVlxTRs3EJNioJ1wa', 'BM6zscjxSeE-pQcu5iWMYPHMEC6uEfIxLGmHoTRRLpx7LvocFBaP_K0HFAJyICyMfAO-w4I8FaZBqAfpIyRDOXk', 'mcLe0R8K4xIAN1nY_dYN4w', NULL, '2023-11-22 20:49:12', '2023-11-22 20:49:12'),
(52, 53, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fPqNICYjFPQ:APA91bEhZVQ1FVnmOBZl03bB5d3VSnEgO54WaBsWTEg_JeNrGJbJZaTVPFa80VyXkqrFbzr4CQnF14ms5oZTRimXH0l5r-h3561i2vbk9XEBfzbuzj4PQuT93Oy0aX1DPLITj90O_wPO', 'BHpSCx6jOWPAl1hKswKhGfo4tqzGr0zWVQr0mqHxHsJFgVkX1YBnxin9xCsryQYKFoePW6H5s-j9wQ6QfB5HR10', 'yIZAXrQWf39rcOKax6RtEQ', NULL, '2023-11-24 22:39:25', '2023-11-24 22:39:25'),
(53, 54, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dPXlXOLtaVQ:APA91bGY_B9ZT7lrOd5hTxbIzzIpzQeKyq0ycrcuAMO_QjbXGthYgiG7Ib2ahYQL_wBSR16zgiv2zFAfxBreDIepxadmjjgUPI7cpEIpjg3zjN4ilEAgNvNWt_CpdLZ6Uv7UCATV-bk8', 'BDTLbCZuuF0m5xgG89OwCKF2JsoDp5UozazjN8NIBeBiR3NG7icPEsh0fUnPgqgEjmlVm1Pyll_S3uotobLuKgM', 'pOqXWaOljcFIkuspl7QqOA', NULL, '2023-11-26 18:56:33', '2023-11-26 18:56:33'),
(54, 55, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ei8-kQMbl4s:APA91bEpjUW__yeZo25EmpC8dhRZMfCUyYWxDCR7-oRuD6X1sJ3J3kz_94PowIdrDV6vux8gbuAX3vl-cOAPVgv-oW88OY065k4O_PQOJUNAVJG9B9oGmtXNq1yRFrtvaWKTaJAWZw8W', 'BMYGUkuvUR5SuH72mjUv2BMKwV38aQhcH1OPs9PjcfFJ0-ZaYHXoNQAKfmulag6jKnLMfg9F0NkjFjNoIpCA7Uc', 'TH_DGQRZsiB12B7t6WkNcw', NULL, '2023-11-26 19:36:14', '2023-11-26 19:36:14'),
(55, 56, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c6O8sLXA37M:APA91bHuBKdlMSj04e-uAGG8ONl8FgsY55h-DQ0xURyw1yhPLdZKkwYEWtUIu-OA_MF6c1LJLE2cGgBkPxUO_dpKDaCdAXumkMV1OxxMoW2cTLQdl-lM5xqVi_sNfotrckm4WwZ2kubN', 'BL6bnYzq_OpHbg1aELlyr-6kVQ7rYZT9dZqjK8pY0HitqGfEYFTJbyQu6uQAHdNBw68ODj8kKwWNjwsdiK3VTHI', 'Rw1YuaBY6gf_H6Gc37J9JQ', NULL, '2023-11-27 19:40:39', '2023-11-27 19:40:39'),
(56, 57, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c9v2GWxhSzc:APA91bHGSqHLUUPBW_IfdFSEgjimVq-BeP-s-AsYwyxe6_1Ge-AY_jhhNM2ppSx19iRbInCwDi_fc6LIt6_piURPBB4yZl1UVtAZx2piNLw4ly7LKRkTIEMCo_2kd2SlqZ3ZPG-tRhhk', 'BHXFCO8MiGNbizE6NP2xoNjrKjgoaa2rpe8mEOG7FcjSlu1tD1rQnOMU-yX3tDvdQis_2s_I3f44BLeygY6Po4c', 'k7YKNgvyU1Rgin6cdWyhxA', NULL, '2023-11-29 21:00:40', '2023-11-29 21:00:40'),
(57, 58, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/doKkY4IIuWg:APA91bGl21jT0RwqbJxctQscNun4s13WDvRoPgimJdx2ev6PZCC8s0z0_2S3o23MUylYKR3rIxp6hvppBaXsps1h0Pw4VSHhhTU8V9eKBsoXNwlZj8uQD6AGhPE2ENx-gGGCIwkUuado', 'BFXw3Zf4g2w0wcRe5Okp2rDnr3u3vmjldDaHrK-hcPEkeKZzoUxQdZ15df3KilRzZRLgkWnyum1R0Ui4s98ZrR0', 'lKNWIA50C6g2GHxFtj-ZxA', NULL, '2023-12-03 03:23:48', '2023-12-03 03:23:48'),
(58, 59, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eZkY9GDh3-U:APA91bEDtcATSFGKUXOAlbpIrkhgRBJ45R13QvCWxeRy6BwdCJRGOnNLUy9LKRqBoKuxVutDEYP6Ia1jtBDJiBvDRD4CiN3wDdW-NMbj38ZxJQsuKPUgX-E97mW5J9ur6sgxbIYi8kXv', 'BG-ITwxzBIUdM0gaKItLyfRqGfpI6iSETjltY-3d4qCZxe35G5gzp3GLd6B1VwKWEGxkUxsDaqYE19DgbghqMHU', 'tzruloz8GXUJ1K-2GAPynQ', NULL, '2023-12-05 20:33:44', '2023-12-05 20:33:44'),
(59, 60, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/folDQKuVhNU:APA91bF_K7IheVg2kG5kOT_06GKHu1aqlIN_DARYRmVrPToWDcf1a2S93-YTgj7seVkKlvPEEL1RK90sYrDACuNnYjhaevrPMbESae7ykfplHFcE6DaManUCFLIW-2aRGytJySg6bfUo', 'BMVJeh0Dbi4oUKNTEAU6w-0jhdKc2eX73Mo8QGYr7105j1zrFNOC5zqcnea_OEAuQ2xJOSFf7j6cYsZK1C0gnv8', 'a2bNLzQNHw4J9akkE8Nnjw', NULL, '2023-12-06 02:27:04', '2023-12-06 02:27:04'),
(60, 61, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ddOMEiyWu4s:APA91bGZrGuRrcfklkns4EKPzWVy4m-j5Bwh-8joVVeVNnjz9KAgw_WqBBxSTMYtrYIhBxefE8j_bBO22H3BmUe3sAQxQv0g8QI4oSXga3iImeRMC5_-mLgvHweulh_tJX-WX0LS6civ', 'BCm2s9TsmwJSNOOSw-JVKMuss06lIcxNyOt4_fjB8xa922MAQgW7tU99Tq410BThiQv0l75G8BbbDxFoVxW6qYU', 'N4Hke7jz8u3wX5DIyWRdLw', NULL, '2023-12-06 18:45:52', '2023-12-06 18:45:52'),
(61, 62, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dH414_dzK2Q:APA91bG__UMKDA39fZ4rRPG7q7ppZ6PWFZSYsrS5LnU6F-eZWxm5skk7WhrHUELbhHiNTVkJKwh4LdfdQ7b_YtdrDTcg8AVajMX4ETAVOd8EE69CeTeSAR7T-krXdQfk3GfxxKBaqQ8D', 'BHK5MocHAL_71xiroarDl_IBXYASA1qHlfmcRG52pFkJAM_8bEIkD99nUY2s-mnRc0o3fHV5B46pwJJorZBGj_4', 'mfQCgRbS4e7sfMYGc0I6HQ', NULL, '2023-12-10 18:46:06', '2023-12-10 18:46:06'),
(62, 63, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dvFxRwnFS1M:APA91bEO02JItQyfxgMSNtaHDdfBuwM6YBSssYaqH6Gp-9zM1W43pv-_fZlbtuJmo7kmNdcqK001l0ZQthkjPRHkFcL-7zF-Kb5OHTsgGEHOwoIbUwWsJJhsn3W1oByXJ3Kz1EXZ9GmY', 'BJFCJyLLrckCqmy6yvy4zctlmd2XIkLpHTuUFOfOOOhYKvUgiPjsGqtnG0CZ1yJw_aGkp4As8b46RIgGELl_2SM', 'D-QV0fezHYtWImDpzQG8Sg', NULL, '2023-12-12 15:14:55', '2023-12-12 15:14:55'),
(63, 64, 'App\\Models\\Guest', 'https://updates.push.services.mozilla.com/wpush/v2/gAAAAABlfHkOV-qLaqWIW8dMkg0ytixWwZiV6aEr2NF8VUT4pPxR5Bxf0SALps1bVU20sjuQO75BAtDt8VAr0ALPxlYDYGxkWBm-6S0UUKPPfCNEkWqxDtXhOlPk5-PD7T3H3G8MrEV3veki66hAHjmj6tsrVsImsU7ODp6mDBF1S8levC4unU8', 'BKe67t6KtvEHQW-XNbywoHTWSWhopts0g5EeEjDxpUem7DR9Po6So0OHSVu_qhVz_Wpbr-uWhh0U4roxVd_42OY', 'r2vr9H9TFL1GhL9dUTbCxg', NULL, '2023-12-15 18:04:30', '2023-12-15 18:04:30'),
(64, 65, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/epTA9usaLoY:APA91bEkBjlrIJI--lCzSMGdfuG6M1SB-8YHmPYjsqAHNeOdjCQ9QVGn1Wow0WmG0DfeSlYuOW0xnj6H-K_K6cEtCViXEdyOoQm4ngKhnW9ZXwKlAyjXx8kj_NLW3hsgJ2HBh0KPRpel', 'BIfCZDKhKquPuNOLbu9wWv8maCpG3z37VYYYtBZMki8deZPlLj6NbRg81MMoQYoj8wB84SIxJGE6rWM5S9ikw1U', 'hjDV0I06Azc4snsBnpd2Rg', NULL, '2023-12-18 01:14:36', '2023-12-18 01:14:36'),
(65, 66, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fGLN4BP17iU:APA91bGK7-ukpAaJVa3Hgfmr0CmleLW9pcFjFAaDEyhJACTOhtFEJxT_DvEdxcsxW7NBDPbxw8Rxf0bcvQJhOdAESwGvlaP1s_7K9mRA-1PHb0dar7ntlhDCgcDrq1XBciusgNBzQbsP', 'BNMlX_2lvNF2qXNUmTsv_UtFSqO1TT1Blk-HAzcabuyjzbnBgHbHuaMY3nLyNtxpZypOJXZWT5cKZ66sC4WyWLs', 'XeOYqHKXGpyBSYnlzvQb-A', NULL, '2023-12-18 03:44:20', '2023-12-18 03:44:20'),
(66, 67, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dS4mSBjkTkQ:APA91bFXHsFHvqMJMTPASeLEUG01H9BKOabyom4J4EU8PZOs7G1lJO1x_d-xXWgfnXThCTpBryyxN2LPdVL5NfZWxnin96MXX8nM5kryXVQNaXzim7wHXMRYYjUALCpOAUHZUWSY8m6B', 'BNqniYYpxJiJ_5RsaRplk3MYWs0_oBK8QikSna_0KdMufGI54z1fCrFOJBxuX5sDOIbP7o4qQmSdT1skEmy0N-w', '6c4tYUTHp7x7lBbK9QnWpw', NULL, '2023-12-20 00:02:07', '2023-12-20 00:02:07'),
(67, 68, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/faw0GJEAH8Q:APA91bGhzlF_9M07UVChfnWdvQg887QkZZbqZaRX98vownaPcEaUBuzh0PV5HwlJQxdukJEJVU1_QoJQUexCHqF3nwNYJuQ8zKAKTxSLxvXzrhrS9Q15EV8hwZeO0p_wClFe65pEqFdX', 'BH7aBeSN9iBcEoRjY1q-5NxQZShEu9nJ3iODuZVRxacZ7Z-yQtf9hTriLKVSa0hPgKUrVIGhXEQdHWI_3ntbnxI', '8gikNh6HeaDstP3JPnqcYQ', NULL, '2023-12-20 03:22:03', '2023-12-20 03:22:03'),
(68, 69, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dWoHEAhvrGc:APA91bF_GVn6zBGjpM8MyT3YEReWDbjiEy6oYBg0sPhznZaW6blMUa0eXg4azWA15jqE-MgZsu8WoZpT67dPxpGH2ZvDxBgytVwwFPK8CChzF_lPrbkEy0rRSjNk8sM5VLZiS85yUp5W', 'BJO303hVpbGYasHJ8-XzScwadqo44jQ70cAktKcPBBPYpc58JrkjRfJhQKwG7y8s7DTfgf4AFdcryUYCaVPcoo8', '4r3PWIKpwQI9bZ1Ih0DuOQ', NULL, '2023-12-26 23:25:16', '2023-12-26 23:25:16'),
(69, 70, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cgZAut8niYE:APA91bFA47dqZr-D8yetUSy4EEiqR_p5wzfkDfhIfbCqqOiJZdMhbmnl0QRnJWlB-ez0eDSPa4KM8z3FbTUbQQ5Gf7KV700vGS3q-5cKPpFzq2fUvmi9yaR-3p73x1U1Rlix3B8V20oX', 'BFKnDWpNQ8E4rbSmIs9fasciDraMwQUWpPO2PjY_2ZWIRyV3GD5Kgkr37oNY0kM8oy_Dp7E02STPdEJwIgohV78', 'u5jPhwHckDR1ZAnEAwnIOA', NULL, '2023-12-28 18:37:08', '2023-12-28 18:37:08'),
(70, 71, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/f8mkPdFC0D4:APA91bF7qdaxcj9hYfiOmfWXoMgBJ2cRHequvy83mIOJnFNDkQ51AJhP4A1NMLtWlpeX_UhVWyQh16dj353aXr4ETmSV3uWemm8nu50iv76Sh9moPf8cZ4YifnANyNXp8L7BcZA0wGbG', 'BF9FYfCdikF_dStZiBc0GgPTESg2pgXenF4cRbGc5iyN69A_T5sbGH3aE1G1BU7_p6pOyMKKkwJMfQoy55Yr0xM', 'gIdzQ482fUKDA7QwYXAvAg', NULL, '2023-12-31 21:34:26', '2023-12-31 21:34:26'),
(71, 72, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cu8Zta68XIY:APA91bFN_d6ZpOAnOGX9sclbmvuinPHlnPqutq6x5tiZqQaY0r9K2lWs182zWgGtaUlCe0QRvuNmEZH9jPfl85O2MgSlvUtl_nzCGA9-aNL8CfM2W_309F4HfGu-Kkq_42WDsGbOX30l', 'BDK52GYTEdTS7sQg4v41aUM7E-Gy5G3dl8XcFPmxr_ikobrTevAEdJlHquuMR-hQ8DvKNENmetx60o_Ey1s68N4', 'kD35u3IItUpyImnXVTIu4g', NULL, '2024-01-01 18:30:58', '2024-01-01 18:30:58'),
(72, 73, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/e547euHNWcQ:APA91bHv-6CxOIRWccQd8dQO3zdecoHFl4i5FddsEZ7G6B89lCJNCV4_4YOCQlA1p9Th4vxuwPlxzCP4taSgUbEM4VTCLpyEQwLZyT-Q1SNG0NaZqivJu39ATzph9Db-dTC8RCnkaJDq', 'BCfWzXw6wcINJTVne_-1G-OICJD-kHZRqT3u2Ee9J93O9Id59-6hdLbXo-AXXur1f7aCRHIZkx5ROjx2cono_L8', '-BGSqwFFoBtrcBlptQE8iw', NULL, '2024-01-01 22:18:42', '2024-01-01 22:18:42'),
(73, 74, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/caWweFf9Mz0:APA91bHaYGVS2F9zMlzrMXJ7Lr2sUMVrgqIrizALwUJGIFgcUVV5eF7uZTFlpXfpPI2KUkq92-5Ok9KhzN4Y3Fwc7-8EjUrENvpYNP5ItwraJpVdX0fLRKXFNvbxfIHGq_1CHdfEXBFj', 'BG6OkVvwDfiMhAZYHb_MAXGtzTcBOmaxy6MpQWwTSh8aBm_fAJ3-_cLyVOWii9DN_bRyTzRyy3tVrzEUslgsK1k', 'RjrGOnrehRY3Dfvr4M4NvA', NULL, '2024-01-02 19:45:57', '2024-01-02 19:45:57'),
(74, 75, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cd59cwyCDiM:APA91bGner4LpZwTnzK58fCL57awMTW279u3BCH5igWpN5ts1MSlyOHQV_dsQBwFpyJBBTixvJWKjB2ecqmH4PINJBgdA3ZlztCztNLsAHKasS502iww0h8nTiSbjrMnpzC8vRxoEMBr', 'BO9Vn5Md0N7dw-ok7G6BjSKB510hljwp-Qxd_AXaRyFCVNFjJrW-OvOOTbdEnOVTRWo0o9AGqDn-8kTSXQ8G1HQ', 'SICfbsnrFO17bQXs9ImLhg', NULL, '2024-01-03 04:05:30', '2024-01-03 04:05:30'),
(75, 76, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d_vSGMADCRo:APA91bGJWGJVaBEBYHbuPcCfH5ueaMM2eeKiMkpezmOAJP5vhZuX8b1gmQlAg6VrwSCeh-77GwpnApFmhQ9iPxKDl0tt8mUzi2pdB9qg3qBMmznpca_85suxIdrSarul0-ElluqUm7-j', 'BEld0eyX7t8fCkk-ou13F2UNk8I9JLJ2ui6n3L42SlYgSoW2OqHofrjlE5uEcy3bbFBeieyaanrdcIp-dN7rjA0', 'nlxjbawyxuGTzB19Ha6H9g', NULL, '2024-01-03 05:16:30', '2024-01-03 05:16:30'),
(76, 77, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fAYFe9pD07Q:APA91bF-UNcc06ihyoCPV3aXAvSi7DFM8rms4QWzeU3Q34TvIm4hYwGZpCw7kV3mpQdTklC9nPJraWGA06DZ6L-AQAqMK7KbmVeVJgZ0t3nedUoFvKElGxDuwWuWQezPSFtOqD87uRIq', 'BMOzn_amyn5OyE2A_-i_jl9eZuDygGNMbij-Rgz0usSNW3KRn0hgzcOfK6r9e1aIzd6uTHAJPzKHF7OBRN-aDMk', 'dcYoWqpMmqADQE3go2kfcg', NULL, '2024-01-04 17:25:07', '2024-01-04 17:25:07'),
(77, 78, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/f36S5iz_rgw:APA91bG6sVTjSirZJADFJ8yqSWyPTEAV02iJlG6XuGkR3s4Tdnqf0pat0SVlHpQsi8H6uFB1YmMNpYteqk2dWlP--4Yn0KeWpXim2LWL6F1Maqj9u42B5GoiLbm3pqpEh_lOtrA_e-XE', 'BD9LaaZw1ILRGAetq4SiSBXcEjKwyRtEUXLlluR_5EyuwlLLLzpKg_XCYGkPOQtnQTU5RWjwzxOj93Mw36ZAEbM', 'rHgQLkywW95GHacAVNExFQ', NULL, '2024-01-04 17:37:23', '2024-01-04 17:37:23'),
(78, 79, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fkWsAp61KdQ:APA91bEjolrammCmwliJjzOZb5zy6fqVJRnFGKEsV7amohCQOOMpaTTN-8RdBVcm2BAQX34n4kXuplN-7ycwKYFyOzUoMPGDi5JnaRdkREGJa-44V3PUlPDxtP-0D75R7Rn9zoGLMhNr', 'BJxbNJrGhoSijYBuqVutcQvoexY6j-ulpamxvkL-sFIlf26Um9h8VX0NDp3LJe43NzKy_oHxzdopLiGle2oBrTM', 'RyL14X_nKKe_yjJ6sQjrfQ', NULL, '2024-01-05 20:55:36', '2024-01-05 20:55:36'),
(79, 80, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c2V6_StNLzI:APA91bHAl3ZjN5XXEYcFoUpGavwSaRvU2PgHNXkMBEBSwW6SPVkzKs7Su54bXuPl-Cb-eHq3_w67-I1kNA9WmMi86jQnucH_v96uJXZmnObMZdvsprC5604TKv29VRKRKgrJsL0Cc6yZ', 'BM2t9YPELhLwxm-xQboJL82e-gdvFRiHMu0sZuw0ryzpJNSVHVDTYmoxqyOS6bWYbWPdKe8YgXfXUys-K61YPP0', '3_qe7ceMs1XD3Z_101XLkA', NULL, '2024-01-06 17:39:09', '2024-01-06 17:39:09'),
(80, 81, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/en3Loqjo29Q:APA91bF0navtBAQFg_mvSfxW12HzSMROmZIFvPgXR2YuZBD0FSC-11lO1VN_v5g04UZQSYw7GwAKEwU_M35G0BcIZlTKBuKeJ1jLXhVk-exW5y-47fv9U0hvDaEiFoTyXv6g_OAwapYx', 'BAQ5VPsL0bXhNxYECpgR3lpzI-eai8fVJGau0HIZTrAmTOSGyZgyXRnRi2QVReLjSCuWWbwwieyNQEpTgyKryfw', 'a36cQNqFxqA7VtJvdZ3ZaA', NULL, '2024-01-07 00:00:19', '2024-01-07 00:00:19'),
(81, 82, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cfDVd0qXrk4:APA91bFKF9jUbSLeJGqLIHESNda56DsckI7C1tJ-f7yZm3_mzock5txYUhmmxtl1YVRuZ6OzROGSOPFzs7JtEyPkudbyA8GrITergaDuuucbnR2x9jwvEMIOcTR1TWegFQftn9kgreBT', 'BBKf_zGPUD45yxXjfsaAN63zGJJNyM1gAXikrPtSkkvcC9_4OPpvc1nTq5LtyNCGubSH51WrL-3U03Z5GyN9FB0', 'kQosJrwx08m7_IDYobdOtg', NULL, '2024-01-07 02:31:33', '2024-01-07 02:31:33'),
(82, 83, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ep5yBWA4Rn8:APA91bE1s63M-szzRzHAKUtjzQRZppbWUDVu7Gca2rCRXfPqxO0c4xlhzPv7JQG32lbvdwTLnShu9tYVqPp_ihzi11-30VWslXjc3XYpcwfb0uoCPQiDUTweZ0dZq794xpIL22-IvTaS', 'BLTx0DU1-Z1qMRvXjNp03pWfLSBWv4Q6JSUSPh2y7kZbpjMbyLoAgMkybpaeODwIsBAgjCkVdI-EYKKzl9DgKZY', 'neCM36_lwJMKGPZo4CQrwA', NULL, '2024-01-07 15:33:06', '2024-01-07 15:33:06'),
(83, 84, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/emUmufIo2AQ:APA91bGgaiaqM4q3aQRJ9SAw5KRiBWEEBOWVl9SeDDoua2Rg-PwPNvH8KGCWFbd_q_tCNxubu7hCHge_ejY2e9XIabZ56wkEcwitRrS9MlvZJ5YtprANTUqN24OQutIbUka27HdEU5Dw', 'BLvWXooviRgcQ_SyRVtWcI8aWTbMgABb7Bqd3-mt5XdrwY3ZHMi17j3SHvM4xCIQguNoL9GvvXqED5NeZxygO9I', 'TvkLQmlFq1Nml0aLtV4RDQ', NULL, '2024-01-07 23:10:30', '2024-01-07 23:10:30'),
(84, 85, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eF8Z34i_-io:APA91bGazcLm2LikHxvfMj8LkVbFTwBXiMqnLrrIyzRy2V0qbwQS3JCV1i99zC55YxAuClYKPsWkavC1h2UxPXLXLvHn0EEXdr3HxFWVvc0JsIN-adW_iJr7dgfJO8qFp-B1lOvyD0QY', 'BIaat9ZEILsjIKlSQr1p1s0xaOw_L89xBKOPusqjyykbAdCnGEdTZ6CgJ5YnyvU5Jv3WE_Y_QyXSshMwjrhrac0', 'ilxgVcRQvG97jnnHOM86-w', NULL, '2024-01-08 03:51:54', '2024-01-08 03:51:54'),
(85, 86, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eDdAzYZY5fQ:APA91bGb-9AphFIk8hyZxVvFS0ffc-pPEy-AtEHmJjJEW0QNfFWPT1vwgwTh39vBYBDhbyYF7X6_VunRzBRGKXrqWocgx_gm5gH1nkbgv0XITDmUeaLFCgnMbN0w73xBwtPLIVidlA3g', 'BE9erCG8NSsRFroW1bc2dCztoZJbu6t5-q4DRL-T7khF0fiZ-VaIAAtyPTkAeXMANI5H91zTZig-IJjZbaNPopQ', 'iribAN-JqkUBaB6NcO7VZg', NULL, '2024-01-09 19:27:42', '2024-01-09 19:27:42'),
(86, 87, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eLBM_lv7VMc:APA91bEsRa-31WNQD_tr8EWUndCi_FX4wlR1u5THkjGLBkY3SgFrQgiaD6EmQYg_s_pvP4pbHV-aWaBsp7bRdZRuE3DWJS6ohbtdpz9V7sxNi_IcrKz0TwmrmJu9LXBfy1NN_4PRuG5h', 'BJT1wFIc2fxeV8VAZHMOUj0sPHuCIwK0EyQ0JWXboMFwasAs660AlthKNMh35yAuV_LTtyaJwMD60wOBLLYrpCM', 'NANsbwAV5_izpo6oILqj1w', NULL, '2024-01-10 21:20:37', '2024-01-10 21:20:37'),
(87, 88, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/e1ysdhfMNjg:APA91bHggNNFR2V3Og7u-td8yRGTSCPI0h8wxXzPGxh6ebMuOhY2YZy_AOW28Z5kXpJM275zUKwL-W8o1tGytoKc4dwLO1-bJi6knU4W5MnjdWtAxj9Ee8PXx-6H81fOUZ98eh9w7Jwg', 'BP0EUSznKCQOCeliBC9hWVdmVpL6P40Wn7AD1JFyXPNWf7IEx0ziruzKfBrHLP-nAlk3vJOhcnafClC2R0GDvmY', 'JT8ECdbG214U73p0tL7-cQ', NULL, '2024-01-12 07:40:52', '2024-01-12 07:40:52'),
(88, 89, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/emdwQg-qm7U:APA91bGiVPwqLCVGxeSCpumf9VP4VR8g9O-zvdxMPwiG1yzhu2BEyNKhvY6NXV0-mf6blsP0LzlaQuJgZDm6Nqi2VCBf3c3KPsOnrkRp5CiYjJ_MVyUoCDyAv340ZddyrIM3YjCnN_R5', 'BOKAwaTJgWDoG8r5zB9IcJ_9p6W6HwoK41pvQInWJUsfoR5RBfkrZaQj5hsJy41hj7UPrYegyKrvEbOjfgpWSIQ', 'bVdBxDWUYuKxeuCIZaoitQ', NULL, '2024-01-13 21:05:34', '2024-01-13 21:05:34'),
(89, 90, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eax24QTw4Mc:APA91bH5Iuqv9kBJo3RUj0Zu5K0qePUnJcR2hJj5k6uMDuwZogVbZ0_Etg6_4HANtRAovdAlDXj3wV9qUt4z_Q3k4_GYON4nck8vRGjyWkYc-h9-XeHppgC1n3w3G4cdoYJVgEQQzc87', 'BMJwU3JmybYJlY0JnjxdautxW_TdbSfSGXcM3SL0UL-mi1YUYw7LIAKXuI59nLRtlwTteeeHpfhZymld1CVbksg', 'SK9KbEoYPzKz0zkVRqtd2Q', NULL, '2024-01-13 21:06:26', '2024-01-13 21:06:26'),
(90, 91, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fot74bDs79o:APA91bHCV5kRIZ4ru-M9kzKIxvf0YvxxPMxIF_rEXisApG_Ae-mZLs8APUCSjPy37Yf4xBj5aYOHFF0enX1YuJxPwpbJi_RtoAeIVeGCoaZ4lo1lamsb3GWsRAULdXtCzfUE29qC7T9s', 'BAiZiIrzWaY0JeZ3QRCxuVStOL11cK_6HTAdzB0uXj2ynyuttSUPZ_mCajM49MKEyNg87Pr-Ay2FoxyIUQaysl0', 'JpKpO1iuC38BQ7AP_6vhNw', NULL, '2024-01-16 18:34:51', '2024-01-16 18:34:51'),
(91, 92, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cUYsJfeQkB4:APA91bH3I-PXDKyd-ooNfuR80S8DwJNav2a5l5xXVaACuPm8rhIYcw_r6WmhLQOdjRpQYYLCt6R9f69VgLQ1awi0KtD3Na-_Qn-2vUgOJh5pSmn9Uo7oasuvWMzLUknWGcNq8eyJxbrp', 'BNiM1Wq9OeFXAgE_-8VYHU1ADrY6dH01Evsem-HXbI29J1xq-IJD-Vr-A05-nAoj5Os3vgsYDjR66ekzm6VOEvs', 'w3t7Nc4JqELBL-78SGS-og', NULL, '2024-01-16 21:49:26', '2024-01-16 21:49:26'),
(92, 93, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/esVGzuJ46pc:APA91bG0NJJayoSAbLDJcAB6YOLPpokaYAIsh-zhZOIqhL5U8M0ZB_RFnFjOjwYlWKxw1RzEDb72VgAyiDMOFnzHOwHNlKrvRbxBDfh3qgdMM8EHq20B_9XU4A_OZt_PDU1AeY56QVMq', 'BLgfEDkn8Qrm5rk8Lg_y7gniWrWdt_FHXkkKitJfHAuCmIhw3Boa9kZiprjtUa_NSZiE7VnS5eQ8gQdq9KwN7eQ', '3i26wq0Ux8maR_N-UAIL2g', NULL, '2024-01-17 13:45:50', '2024-01-17 13:45:50'),
(93, 94, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/f-qWL8NEqIg:APA91bGHrQeSim72A18ms0OWfkxXUCz6zhccUklivYkkvbfq7zT2G_x1viTUvcbWrdavcOThtoZIIaGFV_oxAAE-RQw__GTvrkH2qA8t2g9ImTu1v2OLXAIfHURlZyzxyOum8We8rJsv', 'BEWPf3HFZ-leg27frfc6nNZJzIcJJ7QBjO4cwPwZfv79XT06osgETdfRFPpEGk9T0JO-r8ZTcTipHMx_LqCKagU', '1u4802PDFskeoKXeuZEVag', NULL, '2024-01-18 00:13:46', '2024-01-18 00:13:46'),
(94, 95, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ee_CB0AXUNE:APA91bG_aFnBFjf6IjAucfantnUniMA80gFunlzOCnI0AyumDWdS8vLTKDUSiVNMPhmfdPjpHLYJY8Ic1_obFSMqp-pmWryKR94IOes9PXI1OEmQ73uXwBczQyXNLO58hMWdvR1kPLSs', 'BEETyYlWLvwl6QyMJtdDdKAXAcLCIn7NqGpXO5rlC_lAx7iXR7yagRKcfEHOdQzsX-93bfdlfQX2F0G5aPcQ5c0', 'wq9vEKe375sMICTCsGrk9g', NULL, '2024-01-18 04:46:36', '2024-01-18 04:46:36'),
(95, 96, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fInmfAmrBko:APA91bExIqgv5ngokVPFJwNe9hvpIuAPbiZCCHc52Iy-hrGiQBpgl0P6WaWh1fGlFCmbmM4PqBxmVGHXwBbQDYOiOLDrQNkVhgEAVKQoQjsNNc3yJL5TVcf_FvGJ0z3qlLK6KIT9yW1z', 'BORbj1EIyKAyo2b5XLUMNPlQKMO2Gz4jMCP9YvwlXxoQ8_c--YQgA4d_L_RpxprSUBh5dQ4KNzdxl2MtipmUxP8', 'ERUdHeCHdVm564ycgdtxmg', NULL, '2024-01-18 20:02:38', '2024-01-18 20:02:38'),
(96, 97, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/f21l03tAh7k:APA91bF0s4TWeHdkMIZ08sTS-5CB9NlOtTIzHscotJgEImLa603AMe39A28p4j4vggBnqJKllSz3P9m6HHOlQxESwXu0wL2sPIs8e79gTNw0EhUA1nM7yUf1OMZGOHgtdxh6ZntdAp9p', 'BLOk19p5VeoLJZafKQu4Rs6CYqznSwYhTkxIxz5hoOBA_a_E2alO43F0N-nmzNpjLHGbCscgNkNaetSF_7VcfIQ', '7-GDcgKkqnS3LDaSF1UTVQ', NULL, '2024-01-18 20:39:54', '2024-01-18 20:39:54'),
(97, 98, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c6obllD5aoE:APA91bE8_vlBmx_vSrK1WMGa0TqR7hF9gGoQgXnD-nXAjs69TxtkjCY1LtYXkP60FbEDyQ_wcIRrUuZFtJeKkQ3izanKBRU2jwgp_H9fzG0HjZ806bacVm6F9EgfjEq_Bqq3r12J7WZB', 'BFR14phj-iH6eelqAg2Jf7LQi25f2I3H8UMDQoxkCMCLFg-OMGf8_vUdyDz8RYLxSr75CRSXcETk33ovS4TAVdw', '_C2lSg9-RGKyE4te6drPNA', NULL, '2024-01-20 23:41:35', '2024-01-20 23:41:35'),
(98, 99, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eaTMQWhZtCM:APA91bHV-GQd82t2Vh3BbxAF6s9DD1DRsyT9UOeE8rmm-ijctE9Vtf_5ub28ppI02OxYP5OOHfI1Lx0aFj1rVDS42k2OkpGlCLxMVrPTK5vGSMtEYaccTq7rdR8JGL8ZL5EK9Rrdff2M', 'BIqZVKhCGei-DNsoH0n_orxSu7WNQT89bSMdqdMyYEh9lOut9PUjtNDsp-FJhocWcAJtfEqeWbVJ1iTobXp3_bs', 'p6JKuWWAJdliee943n6tUw', NULL, '2024-01-21 16:43:03', '2024-01-21 16:43:03'),
(99, 100, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fzBL16iyrVw:APA91bH57BygNpEYQFxLvK0lr_gXrlVxravvscgiJ8xWV9R6P0Gz7jj96-QDX6WTIHjjC9o2z9jtScaPfae9yOocJvqjW4EF9gZn5fReQn98ekpEZBw5F3-1nvKdMkaZ41AJ6tA0L2KJ', 'BGvAuj_qmOEBwMKvRh6hB7fLjAotmmTVj3zuO8olWfoHLvaNc3ZoviyA-sIyQ-NtJG13ov_fJGBDa9EmsdK4hCQ', 'ejBIM4yMdbruRTHp-BwPtw', NULL, '2024-01-21 18:59:50', '2024-01-21 18:59:50'),
(100, 101, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cgpuanXE6eM:APA91bFPgbWqa2MJzRzvMxPZTsUWb5k59Unp8uSTn6AbHmKxJMwfhzQep_0pI41bmtgBElYiwwp2EY8jqjSpsoHdFMUyHw3xrLmj6rVoQzrK_Tdji8tMD-2RUpmBRaU544fiW5wUntd5', 'BGkHczJdO3_cop5pGLyqvakLIHTwz6b0ymAEDtjFILymUTP65c_Ri1q5KcOmGdyGM1vLkE7OsXrBk0KWTkSJ7oY', 'yXsTcSksbltSwcCyEYJQQw', NULL, '2024-01-21 18:59:56', '2024-01-21 18:59:56'),
(101, 102, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cuN_PEU77Ak:APA91bFV0z0t6OFLoyCEkpDz6K_zUqvuQpe5RZkosLr4EKEHz_6twyxklsCw5I7EhmM9IbWyDfTOaYsmNMy56wI6vusHrB-7w1QhiUGPH3UGF1kFXy1vxDI4-6ZebVAhnUtHFBEDCwvg', 'BLyEw0W3TIxLjJLVidaHSVe1HHI_3gpRIX3bzRNLmq61dn1SVwYqlI9ISje_XnSY9zLtxyKDjf8aNl6hSNDJxjw', 'KDSmoVE8AaY4-XKSO8H04w', NULL, '2024-01-26 19:01:11', '2024-01-26 19:01:11'),
(102, 103, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fUZ7JxPNlIc:APA91bGPedHV1dN7r-OrGMKrjaULPOZyoDynkixt-Kp60TICR1ys0kDJk0079bU-2n0PYIWYP4v6esqj8DuIvbeUS7snRN0GsjzkrvJh5QZkTL9oxcJ4ozpfWSOZS4X_qsKCM1kWSNpc', 'BDLCeFA32q7fGJrwThF3hZlE8TozMOoxNOnIdopt5Qn5kXKrVkHpqgT2OitwKp4tDSSZniWAsWWkay8mffaA8pE', '8huDmApFN86RQWLI3Mrh1Q', NULL, '2024-01-26 19:19:33', '2024-01-26 19:19:33'),
(103, 104, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eHZlXhqltDQ:APA91bETT4ssdwJtbHLZsKIab9FVJk7T-oFwOvmScK6cXFh0VHF22FBLYbx1nQemfNzCWCwRSCYBe55OklGj0wthJu1izdey3OBY6ukrJyg_HKdNZGl4OkfRBo2RSJ_uFm-qINv8nUFI', 'BGPg2WEKd_MzbcMR6_5-tuG2MpM6neBarUtmRlwXiPn4mZW2ELhdO6eONG7oyIguAaOka46IOHiXb0quZL2_Rwg', 'EJFyXOAlLlKI34O5K6Z1Ww', NULL, '2024-01-27 16:57:13', '2024-01-27 16:57:13'),
(104, 105, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fM1FaMWGtc8:APA91bFfWeA0M7g3jo-N2FPcs8U6NaAgCOc51u2VfL6lScmn6XelF0G94rKHNSv4FIHCjASPfn-H2_l_ZXJe62zX_zqNTjBkXJfdQO3bT4IdESzJSNrh4FBnUCJ7snD-KAoMr6wOUNX0', 'BMYH_IrZhOiVAUhgR76qxCfr_91fyuDHsGrmyZSg10sqKm-6ubG4Rci3YaNvB2YyPpxXdtA3j1-UwFxyhmq-EXY', 'KHL9k0CuGUlIWxVGVwT-Bw', NULL, '2024-01-28 18:54:02', '2024-01-28 18:54:02'),
(105, 106, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cF1A5FEONs8:APA91bGpaJtFowV2nZjAfJSTKQr125tkRa-dp-zKVS0jXz7SYpuMWCx5oBignLN6_7Rso9_2fFVH3yA3CdwbXS2VOCLEYhdaWtRwPZF1N9lrYZCxq8VXaX2Pe2ZGi6m3-NTNzcswoB0U', 'BGni7LXCsbAVF964-29S1mj13yA8aDH8QzQcPVxyQxFMWG553fy8ys0-nEMpc36KNJXaHAo-qxL1s179fn2MVnQ', 'NlpBBxJG7TtdulajnGQMSg', NULL, '2024-01-28 19:19:20', '2024-01-28 19:19:20'),
(106, 107, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ctN2A4E7N4A:APA91bEgMgKAvpDI8lwISgx5Em7-ZHHHLYyMO9_nB7bUEYdU_WALehvLTZp5_EuIA7hrIWMc_iNFrUVIgkDqwjZKKcz3b95D2Ef9S-SU77TmrbGEEfjz963wdHbCFwSFgde6dxSD7pLd', 'BA5crPHvdPRALABFl1jbwpAzRUk1MRqKxhXog3BH22PfPiKndYZO2b2qyUpZalrF3L1kowcGNR_lv37KoD2vNCA', 'f9au_ydA8Z33IAocnAzaOg', NULL, '2024-01-28 19:19:57', '2024-01-28 19:19:57'),
(107, 108, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fZiPZrtUkTc:APA91bHwnHCuwA5UQbiypZbBs9JXO09dyzBHetC8bG-OEjgA9HmQsWyug_E2zPm6UQGbnGqRMtQHmyi9nz45cxYSQwrJjEqZxvJO-IJ5SThnehCUCW5L8AD4DI0jqcpfPnlj68XP9Pld', 'BCgjTIYvIKh_YeM4LW9KWg9Qj02mMEoiFfRgDjgH4Ber2zygS01YNPOEv2g6hvqj2W4yhm6EBpT7Pykby2YAANo', 'nRGdXWdKWb5JmvtJ50rmbg', NULL, '2024-01-28 21:20:23', '2024-01-28 21:20:23'),
(108, 109, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cYE9V00FfWo:APA91bFUdkqDvA6_5SPQxgEQ-TE6YUHRcwUV_2zyh7dJCu4MYGbEi8zE2AOSrXoj-rSEF62vNOma8JwZ-EMFUlR_pSH8jwmuqT1GZnqr2dJBtQFVBmjlqMXkSXqcrj65sQ_u9YDccx3b', 'BNn6O0LLfabU-r04f-xOitVboxj0SZm1HDg3POJGar2arjFO99F6uw2lL8ABQiOV-Se-iKCSC0W6PiBRmTzF4u8', 'IrNOWmdls72zIMTMCmKW9g', NULL, '2024-01-29 02:02:58', '2024-01-29 02:02:58'),
(109, 110, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fY6Y0jft7vE:APA91bF1ov8zK6QaXc32qtwZoAv6Yq3aWobgDbT9-Bls01io7R3-pxiPrJSe40wgTZwQ4DsmtVqOPySH7YjSuOaLLBNqpuR2TAGRHtcNL7BTp-BfQXGWRpW4O3vMUbmzf75hto_W9Xi5', 'BNkr0W_QiHo5CWsfDOTXbfP8ko4AMY4hz5DWgenelwEUNk0JQqiF5hxK9r_mK9pSmTHeMtKjI8vjX84xFElmgJs', 'IwlYKNjJdjSYDslvq07Xkg', NULL, '2024-02-01 18:20:14', '2024-02-01 18:20:14'),
(110, 111, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/e2504MCOjic:APA91bGAWTEkRAIudo8gpwabmnvUB-QasD5R93NTmUYOZBfiXvh-t0rJwT2A8V_15tvOPoGxh--9Fftzhp60y-6A-vhQeOD7BoHKZ9RAuCCbfsFe504g1yD-Wncb8nS6cwW38Lici0sc', 'BCmfuxlAdBIgovpAvMkQTCgkjn34cuE5qAlRVWGAPcYAI4Dmk5ADgXlZCYIfyEyhQTCcFVzl7WwOiKcFYRh5V_8', 'VlUP4ozovRw4n15jIXbgjQ', NULL, '2024-02-03 21:06:24', '2024-02-03 21:06:24'),
(111, 112, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/f85jyrj_15w:APA91bH_RBl7KmyebW_-gGEYQ7ngu8H688h5nvqr4gc_hsYGkPot1va56__nztem3aY21FEsl8mFB4DeK3KeM0z1ZrmhN3Y7PSOcH-Q_BWanmZnaZ0LQ6EXzrFyPfr7_zEc4_p-Z_arB', 'BIaTr1iSlOK4_-vHnRRlsBH0BT_PHhRq_DhlIpKLIvvrM48qyUb1qJojLYYax8XPL0c0GRtDyQ4FGldslsuFQps', 'Wd6-wS1DEn9ZDHG8YRM4Yg', NULL, '2024-02-04 18:33:04', '2024-02-04 18:33:04'),
(112, 113, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eEbsJWGQ5H4:APA91bE3OEI7G6kGNhDTDdopatkW99U9-x5cgjZ1WXSuYPeNmzKLRyLv1yLdX5IKcGlioAn8CvIHisiVnl_ZtFIDOEqasqS-3DCilltuyEOtHJyAX-Jj0ChmK76Wurm3xlP-IUWaZPZv', 'BE8APk2Sow333t4ig_jAOWqZHf-IOGpLrypVkYVzSkDl26x3pWGKdQrsA7GZEaPJ3Y2UBGixKCvNv8ggyx-hbI4', 'EqxbTu6Us4MMNjwYBEhhog', NULL, '2024-02-04 19:37:29', '2024-02-04 19:37:29'),
(113, 114, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cKGnfVW_ldI:APA91bHaCdRqy14p668ES1eEPWtube2Njv7tr_JdRr_qNqhpOUbAfSXd9GlN5EZvWf92TAXs97XpO4eKV5l-EFUWed4xpvLpv5AXWKRY9RwLA_pAhwSW15Hp3jIXGcBbROi543ezpoVK', 'BGqs9W2Jf3xOCFMg_3N0ZpyNVnWMtV-bFuFFQYdqRA4zv1HmW3vMjCNpqanyiwI5h00-nZUYybMBeqvWTU9bTiM', 'OmNXiJZSetLEllh25ioj2A', NULL, '2024-02-06 04:31:55', '2024-02-06 04:31:55'),
(114, 115, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c93rrjVsMJI:APA91bEKEZ21xzk4dCA9j3Xiy6NWIVVlccuSVhiua_UK3wCn9oprFYgLo5tQmaFp68FhGFdpOpH46wvu2J7utJhrnSJYhXtcY9ilDTv9AZ6dtGp1dQuPPgbwoGXEs3-COea1_X-EgmMD', 'BLhX7rrtf7peINiraL_eajk4tOEB42bMfSl7ilc2DXfdEcJCLre618fdZUH9gmAinWgNkJVzyNwCqcqnvWqaEHE', '_-p8QpTntrmASH3gSR_SGA', NULL, '2024-02-06 17:16:55', '2024-02-06 17:16:55'),
(115, 116, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c59bx6kX_sI:APA91bH5kR1NZuRvjo8bhPaLJw4MNCvcptbykzydAIOByd2QDTuCbB5TigFF-KKz6AgknEYk3NsZMtxocoofuBQjY5jEhEztZkVlLJSAr-A3PWChf1iLTVN2BvqLc5DW0C9N_n9baC6l', 'BBBOD4rsh5cl4Bb0H_-gg91t7cjC8YUYiDtTMpHweHmJ_pDoUJDx6_35CXsatEAZORsBPG0IPw0F8EIEw2a-Lxg', 'ZEy2bPLiEE2JaZRcpMq-mA', NULL, '2024-02-06 17:49:03', '2024-02-06 17:49:03'),
(116, 117, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eZFP0N2HwR4:APA91bEHdygcV1yJzRMqddC1YncWL4hKusU3zctrXBqxZWKqKU7c-3rl1xyyrt1JLviKLGUyndAedUkNumORrJltrT50Mp7O6OIK0JrTxjurhSufhJGuPt7lS99xyybn7GvyQTyNavg0', 'BH1xcJvWOS-XmPYOXdX0wRbrR8oGsW686wBFZsHUufWucMvs_j0brx3iYgWmIv3C10DjNbtImmUIzumUrDBjKOM', 'zn0fpeFZ1xEOHJX2i-lmWw', NULL, '2024-02-11 16:27:25', '2024-02-11 16:27:25'),
(117, 119, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d7J_CUvQzRM:APA91bFDqeTwJ-QhzXpiqX-Qr2d3MDpuphe49sbWciOOtRw-BLn7Xn5iYItr1LhQpWH7PLOfz7kjJBvluS2EfbLJsUfpAmUPdYLX_aQbhUEJk81xIhb5pl03xIOl0r2YtBhkWfLIjs8I', 'BBD4V2vKGzZnT-SH2hXFsoyqvaNLUelZwCsWAwxZLTlGYTEyIe4-x_cG0VQqHw_ZWVeQl9xAmI0zQNJA4FOXz8E', '1dO6Ql7o5YZeBGiBOy9P8Q', NULL, '2024-02-14 00:20:03', '2024-02-14 00:20:03'),
(118, 120, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/e3e1xltk_SM:APA91bGW1HmQMBvzZKvZK1PH61v1_VjqJdUBaquVqEI1EpCJ19GR8lLIe8nKTxwnXOvEr6N6D42_AcrxpzHw1aAf_pvbAavBjE1xbFQD3DqChPWpeGACvfj4o6uS96m4UuLZ9cGOtV7Y', 'BIR_IN0S4UF8Vte0Zm3NH6tiET0KqGuNT69D0ahSOpkYgV-Gl2KfPlMMQXPAbzTxb1PCL_68tbXf7NvPYb7oxdY', 'zU7aoU93A_H6tyeWnqpZng', NULL, '2024-02-17 16:27:19', '2024-02-17 16:27:19'),
(119, 121, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dvAuKqFEOl0:APA91bHGB7NVhsZED4swMbmsMcSrzRw0y4EhJpV-xKyNxrJwBCyMzszwyHtjTaCLDb9xxbZtC4Wwgoq8Ih98f7X8V3dijfZYU1HTbeocpczAKb3HiBfnFIudDkHcIPRVWQP3AlPvfGjw', 'BN8FWEy8Eg96wylzJCT4rZqCUoAtBfluM3Ar3rOxATJ7FL41zbynMGDOaqwzx8FJ8ufPYFqbbOctlFHT126rqD8', 'hhL0aMFnUvHYg7vIykOwiA', NULL, '2024-02-18 19:46:47', '2024-02-18 19:46:47'),
(120, 122, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eTE8UrQki48:APA91bH3_ubhQmi1gFFR5FOSBvAC3ayzQZE3R9C_Fv9OvJ-gdirt5WN5_ihMABOHJgnkCy4gSkkHrEeGXWmOiF6o3tC534T7yhEgx948K7-B_nvHVEzMb6bcW6pDzDNmjyhyuTf4jvPK', 'BE18IhA5CerR9sJwTinrj26_uaDw3ykfkGDdnIGKFgX38xVW_kr7hnIY5wy-ovpu2TUFoMGpHZvjIOwI4IZeYeQ', 'plpw2TwZT5GSA9oEvpOp7g', NULL, '2024-02-18 21:13:53', '2024-02-18 21:13:53'),
(121, 123, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/df-nqS76aPQ:APA91bGY1Hx8Wi8lflp00uJF45kdewRhao4UKNjwYXwVCCC1wuwbdscefcwARyJbUGHQDNWFvjyUtjno0UDAfKFkmlgGeRITE645oMJy6AEfqD-QgI42GoDiTlttM3qs0iDxYBJtgOfv', 'BBNi67uZGxzMdDuNJ8fMofqH89nSO2HP6Rl1ENk3BLQEGuq4g15hI3X9sOX1wnMIfDc4JCzCpG_RH640FIRG150', 'SwBY4hQgYBpAb5kHU469zw', NULL, '2024-02-19 04:54:57', '2024-02-19 04:54:57'),
(122, 124, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cAoXfXGSUKQ:APA91bGBxv2KDknC-PItGdU4w3KRNuEAlt7zV4Di9CsXDs__y1aX2C1nVdMChOBwFw4vKmIMzp5ypc_j2VxjOrf7AXZzcm6w2_PxpyBwlkJW9ay5vvlaHvGSDtwiuGJE1POMa0SFMgNJ', 'BHLWnwAUNtvrS-S7yTUbhI6forfMK-Y_aXG2yVTFK28NB-tzIO-jHPA2VyKeHeIipSwef2qKEy5t3Y1wVEmbNDs', 'PHQG8hQTQN8je4NvDnQDeQ', NULL, '2024-02-19 18:22:43', '2024-02-19 18:22:43'),
(123, 125, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fWsJIP7If5k:APA91bHLYW8fSpOOP1bk-VAoApnRzghXT9r5iimtNgZeN-XWP5KIysmu4vwuSNgqvZ5X4iJZfGfX4C0sr7KReYDdmX3s9LmtWDyJTa3mw7QvTnHMfiXQqO3Mjn77NUmbnjfjc6FEqUZX', 'BDnvY52Tp62OkGoLzT-uzNvyb27oTM7MDUY-I36jZmGe5TaWUjn3tXXX9HcksN05LZ8AGqiTTOO7-JRScIJFvz0', 'JYYjCme_scOLlx8mhUEMmQ', NULL, '2024-02-19 18:22:54', '2024-02-19 18:22:54'),
(124, 126, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/e2xMVJAo89k:APA91bGJXvFw05sKvRy7idowOvnfo59q3BxfhXPTSaAL9Jii8nFZEX8LMuwUgmgjhzs-iDOARcMGTOryFsUmF29tuxmxzT1JqngLvlB-qGlqHUOrNLQ0NcXEf2W_iCxzHtpGbFn8y7K7', 'BHVpEYRduuUpwpQJ9NZYSoOthceQH8Yoq2V1PuGd5-nf2cAC8bJGxxW80Alsh1EeBHh1GYns8ycG7Qeem9ZjkcU', 'gY2OnwJiXQy6ivMMK5xZLQ', NULL, '2024-02-19 22:11:58', '2024-02-19 22:11:58'),
(125, 127, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cO1ar5TZWoA:APA91bExhWIlw9Wz8bEbGjn-BL3yzkDDP-jw4pU2nvEeKjhTbUsoKQ_mAeRHUojLyWQZp3NharhiBZ-tLJC6ql-7VrOPcuqko08U6-bjAXK7RL-m3ejZMdpzOlS1FkyP7jgo30bbfl1B', 'BLoLShExg6FW5V5Dqvz1RahnXgEvT5iIkhx8oVSBwZoONjao8WoSDQPwRrDawDncvrzW6vFSGUHrF7XFJymlyhM', 'l2SuU3XmRwvqF8uS4bR7nA', NULL, '2024-02-20 00:01:27', '2024-02-20 00:01:27'),
(126, 128, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eTKqREC7nJ8:APA91bFDgTC31NGcD-RHJlSoSkhJoGoSwrmkZgwAe9PjdF6vbqsR1sANY65CLfTorPmn_0rk-Ov1pHGf9GJNqMbUJcY5Aa4ojrw2KpeiFOYSHO44FOiwqLUn9KFXlcXHjrDQm8eqsrUN', 'BB_DLRnrRm_ezq4ZeTsokFw_Jm8Jqs6dWoGpUjAaJZ6Nxe2wK4xKtUPmDKeXW2dJzEQwl3jwXP4llkIUQlKUIeY', 'acNEeT6WCISy2uNtqUDidQ', NULL, '2024-02-22 02:55:24', '2024-02-22 02:55:24'),
(127, 129, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eQEXR58u4yM:APA91bGNcdJ1Eg59vsVfJka1f1c6SvB6aGOreF0nx1TBnmviiqc3usC-fL4tMr1ENApqIBRzYrJPveXSkfcKCMGdn74NHO3133rJLVXYCkqzUN_tbUSSHC2TluC1zU_NRGPRzR7fIA_P', 'BPhNi8RlbCtTqa3OMr5aOgziErHUSaKzu0nAC7jLZZZtnnmSA-OSsGz91US8Jki_OGk6E5867po2nFRjWEyPOl8', 'x9RER9q9cGtiVmD4SurSSg', NULL, '2024-02-23 00:27:48', '2024-02-23 00:27:48'),
(128, 130, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fqVYzscSnIw:APA91bFhTodg2KnVAoIPwCzihcG3ZuUon52_WUTI6K2_VrxaetSM5LGxIXM0QJ6hStu7ivz5_TCesovzTqWoRw7ynRSJ1BUov2UmBCqsVgjZhEOKT_K1mV0T8kOVqmGgR6IT9wHS86Yu', 'BJobbe4Woxwel9V9EDov0qNFPY1xemWxHWfxr7oSv04gCX8kn3xsRLCkWrwAjWabIs__IhIL6WQJpo2e5dTxEI8', 'NNNxwv-P97EtslI0SYYwMg', NULL, '2024-02-24 18:07:05', '2024-02-24 18:07:05'),
(129, 131, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dZG4S7_2-qA:APA91bFCCXieRVWsxCOgMURXfTa42vNOqkb6ruxaWJo-5CimNzYAfwS2IhZJdSzguejhCmsMU1fEu75cxoSctWs7UslqdiCet3KVUmC0gX2ftx4ainggz4oxmAR-DGfg8v21AgA2nIVL', 'BOjCPg1G8s30NGHrbcrTeWi8lSdIuDrvtjEQUPwtt3Y3IVn4hgBRnX_z7auIvH3r72EPazaRjSGY1ZysRI8jecQ', 'k3ESb9H770kftOSCGIMTAw', NULL, '2024-02-25 17:11:27', '2024-02-25 17:11:27');
INSERT INTO `push_subscriptions` (`id`, `subscribable_id`, `subscribable_type`, `endpoint`, `public_key`, `auth_token`, `content_encoding`, `created_at`, `updated_at`) VALUES
(130, 132, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eqA-sb3-zo4:APA91bH3DswiaKNQ36w8f5_JHGzMmDlfLx8dGBuHyOWRC9HGGYewU6RKOZ9S_BOCBDyzsdPMzt6f9d0CfuZteJNugYq4A0fLRzOXHRTCgUv0riQ8lZezgpM2HpDf2DdyhfV8PbIBvJQF', 'BGcgmcJPU2yiVOzJuWyCJ5a5fWiQaj0pXp1hJAEoMffNhJZr2iaXSsyM6dxIpRZHczSctfatQ2mtJmIcqDTE-ao', 'aFSRV-cZqBtQXLKfcLy3EQ', NULL, '2024-02-25 22:05:37', '2024-02-25 22:05:37'),
(131, 133, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cPwDFE6uRWc:APA91bEGDqOxOgzXiWtH0jdYaofD_zrFQNMAC6A385aF7MgZBxuiKA0Sc-gierFQAmb0pF9K3002h7HvrYIcJ4INvyzPbVHzfBbty9y9_ULSMW74hB3GP-BR3BakBwA6xfF3Iv4CcjCH', 'BOSmJEcujF_NpctHJD9BZRMHpagEb7GF447d1pFAXnnz9syK9lBtgixL2L6qghmxY98c5dksmtYsfVB6FNlP0H0', '43NdS1BqK8x3qGTtXg5pFg', NULL, '2024-02-25 22:07:12', '2024-02-25 22:07:12'),
(132, 134, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cDUaBNgnw-U:APA91bF3uPZ382B1GSP7TatzQ6rtLjfiqZIuoOvIvEjnz04Vv7k64o2w4KbG9G4YybN7rpluikYXGJernEzmoVJgZtLUayhoZLEz85lPyrlBvxV55KCPVNSYmkBktAunGPVqQwsOe9H1', 'BMFMs7uAxJ0DavaY2TSuPnss_BhnN25vwnyfI4M4Ro34JjMOOiH8mtyAzsE5BqEzb4k5Y1Fz25WlK0GYn2ik4Nc', 'MA9qX8cbBWmC-K8KF7_FYw', NULL, '2024-02-27 19:12:26', '2024-02-27 19:12:26'),
(133, 135, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fyAj5MT2Ous:APA91bFFBU0hWnu-1TsxCFZRaWo4jjK93UZWYPututhLeeNrPc45ZoqBz6z3wL7oGP2cUrCbTc_QUQl-Xco5jrkHmPKVdqixRpayxvP1lBGCsWxKIszrWvhv9UsyVCh5Cb5Axiq5d48x', 'BPlaow5HRqffJfZKVDn8404XCZlcblQ-BmFZnPg6R8pzK0gMnxiJAlCtdIgMw7JIu5pV4rA2ITa50BOv4sZpIu4', 'AQHww6PxPoSQl-4d9espUg', NULL, '2024-02-28 02:44:06', '2024-02-28 02:44:06'),
(134, 136, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/daRqMzLXEQM:APA91bHZyLwbf_pxKVwWyTlhfYvfDUqjx3876DQICyHolIoBioofzEEI6vmYt_VjKhZ1Y2BBk07ZOtBDwxtHcbnDJWtcq7M6Y-AB_XtEtM4UP1gL-21F5Uhb5j3OwZhMabPRWh5wjUx1', 'BA1mU4QhFniN-6Gt6fjZwHU6fiFWqzlbJN861LdNIngITiZf-6fYuWIvmOfScoDLp4XKbFs_Z04y5tQnPpIvkhw', 'iIgVemu38Xt-e8q9YIYiMQ', NULL, '2024-02-29 00:42:42', '2024-02-29 00:42:42'),
(135, 137, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dSxSr7CIdsA:APA91bGBb3kb-eLapSZ4GxGgfFSsPrInYimN28njwnrPas5y5iP_kZt0FI6T12qJvzLVTcSha_EFap5ssLrh9sgb_JoBV3m7Z1AtDRxnfPUOSrmycEmRwIyh9kk4eM2jcXzoPzeA4jK7', 'BLQsZg3UUoamy3uktrjNeRfURizPv1qx5iX8cg_mFp7v1XBWCm66ZhmOwJe9lSRnG59FVLqBLPPqlF6IZUY_3_o', '4U1wGfFyePXqHH9CQCOKmw', NULL, '2024-02-29 18:59:06', '2024-02-29 18:59:06'),
(136, 138, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fdo5DtLMPjU:APA91bHOe2OeUEVdiXIlc-ovVTLEdcfXKgo0ICXR6J7CpEbOys03yFBIA6_2kb7Jk7TdYzKzrkE9u78Enokx1HAa3Ow_FUpt-ML3N0AOEXmhBsltTJhWcrW26HKNcYPS7K43h20IETNn', 'BItixpX9TjW3bkHTRmx5clIZHDo5qTDBuhc1Cktmx7EXO6PwJSksfQgzV2cv6g5pgSS4nmRzC7JYIkNGNUJa5BM', 'dEIO_ljNoXbg42Yyr24wgw', NULL, '2024-02-29 21:23:27', '2024-02-29 21:23:27'),
(137, 139, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/edLbFdmiuqA:APA91bEVVApk6LOcRmJ8gaAXJ0aZT7BjWYoM29DsbdWPgxmWTpfE_W6ZZM45ZdMBzKWArp_3omm0Hy9fbd1VZtCMLCsBNmtDta67ugH3iM94otGZOunJaYG2sLp_oWqeav1UsdqYuAZC', 'BMiDfLUnga36hr-sXv4393XkH5EFfQV_zn1cf_VEO0KbBB3xG8YZWhQCXOtkBD0srBdUKQS-3C5NbBS7PyOzJEY', '3bb2QnqgW_VymNreAW9utw', NULL, '2024-03-03 03:43:26', '2024-03-03 03:43:26'),
(138, 140, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/e8Xn7NMSs-c:APA91bGK0g5QgzEP2CKm7Jt87meDiaqBzWJPbuNYqcRYLjjqfcDuq2Cptopa-1G8NLOXUtqBMDs0_7YyUyZLcRVLz-GjJgZTwISOaRbgXAfhPTSC54taD3my9NtL_448L_KVzYpu4wYA', 'BMFA5zPNltVR5ZqWrXrKlezUNxzDp9TwV-rRTo5Ol0rsbl0cVQJ47dAF0S-NGhTYLCTF1_BfGixYFj464V80zFk', 'I3RVwn2OkO7WJzI2sSUgLg', NULL, '2024-03-03 18:48:42', '2024-03-03 18:48:42'),
(139, 141, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fMl5C68NQI8:APA91bGBvPIzPQavMPqN9LDMLWM9_UWFHfbTxzdAq2A2P26VjxQKhdjrQZyxBruPaPMJVa4wwPDEG2eRHbaH81eadcfl97h2rTX-wWg5GRZQlWIgt3UGj-gbT0jkXDTYfTBBajWRemkM', 'BMl5-txDQyt_We8xwpqvPjkxyHJtLmlfEjRFsn8wJQRlr0Qcp5Q-ILEO7rg68bKF03zAEWjEF0aKCWVkMg5_wIM', 'xDGmqm6iOp-Lf8mqTd91Iw', NULL, '2024-03-04 05:24:50', '2024-03-04 05:24:50'),
(140, 142, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/deYmQciT1Nc:APA91bFi-tWoGtMOlRPI0NLMTsdO7PgH4A0dxNqB2YBXPEvOhhT6Ww3Ad4mUgCkbSsvMKNE-Ml15w5lCCftjUhtEGRHdqt1KxTsxwoEnsS-haOkT2O-Dos2l61H77ucnkEexCcNBI8lt', 'BNJVEkLg2SdhBJdZq3VGSqySxYtDjI2qtYMzUDaapS_IMOihvZ34wbb1dpOPYIlcNFizmjPbTBoTzi67VlL2UxM', 'fVXPvF_CQqtFDFgLkeDsGA', NULL, '2024-03-06 20:06:37', '2024-03-06 20:06:37'),
(141, 143, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/drQ8DNJkze4:APA91bEpeKR4zrIe8oNMJrpmG4MuwT91uaYQisZ87UhmT_t5hWkGeEJZS8Ti6tNzDAfddi1aMsXeAKfcBV3Fpn-Nn0TCKQReYag0m4QNUUwkie4ci39rFbJ4YIZbIDT59Ea32K8k1frZ', 'BKxUtSrZENm8-uG8MPfGrsCLOdIS9J5SipcNN-8eZmNKPN3BlEguPQDwpjWJTC5HuC9_XXbgeiANVnM23vVXfR4', 'z1WOes8CTRvL8xv48CSuTw', NULL, '2024-03-07 18:32:34', '2024-03-07 18:32:34'),
(142, 144, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d1SitDfpKHo:APA91bENd-TAX9wZtDmrPrOjzeFeOxhqs_4OvULCXL6R7w121srGXD-Goa9bgQQWC2bEr0Gqzb3DUx2EQGH8N1xLgsDh4_FZIzuq8fNvw-jt_z0S2OjYIHjKscvQ-bo_SyrxL-BBKOh5', 'BGujyEV2LZuKdNi4hZHjEo0qL9sN3CczsZgzcTPg7-kq-1xyyUpFOjMy2h9BAO0plCxntte6c9tTPcRGa2YiomM', 'xx-Al-ixjWtVQa3_2Pb3yA', NULL, '2024-03-08 01:17:43', '2024-03-08 01:17:43'),
(143, 145, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/f24n5Ablg8U:APA91bHBr-E9Vdty86pquglK7u2erwHXddy87H___2Ilf9BMqmoohA5m6f_jdgB203Fr46phFopgX_cBssPmfAMdj-IToM8V6nWW_iDsER6yN0CwVgWI6XhlHVmyvOFSfbvaC30K2Evk', 'BHHXTa_c4UdlNlXNzvNMylUB1paku5Ecrs-M8d5j6ZGihOrJDhogjs8n40KmiZJ_HJrxeid8j2z8XVy1o3ojjZU', 'eVAb0dVj4915gsN8pPfxRA', NULL, '2024-03-08 22:09:17', '2024-03-08 22:09:17'),
(144, 146, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ep1Qt3RVAkc:APA91bEz_owHjHa9U71Vv1ls0YiL5IGuC-MLEIrGKaO9sl_hzp4eHU5sn7IX3dxOT_dyrLVRrAvIfBa-2WSDt7xHmmVd3gmpCCshaU3eS-tUhXjSMyrv0dfTANg093pfnMqm8rEy5qX4', 'BG24cBTcpt6aNcFAFBYyhDYH8bg4njWAM7avGtxI5YHe-ZXEHTMoy_NNvMeq0Eb8In_9ZhfGnZm3oz4CQkmjsdo', '8Tpbve0KQLnfOgn-jSW7mQ', NULL, '2024-03-09 04:48:18', '2024-03-09 04:48:18'),
(145, 147, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/e6bu24fRHNM:APA91bH573HT45_dZITzBOmjlwNTk3h2lqREXwupWFDCttmqIy0fs2Kq4gXzWEU3EQ8YX9t8nyGIA1qoHXT4MJ5IAf9P297BXfBP2FQ0dVOXWZK8iCA5ou_QtWXplhrDj9eAcvbcIdkf', 'BHfPVMrC3A5Rfd728agmhEZ1MH1dzyTBdIt_z1WokjO1rAY5eAbPrHxYU_UBJSaWCpax1XfxA5b72X_1nmupC7E', '-CgNmr81nn1oG4ocjS5fuA', NULL, '2024-03-09 04:51:10', '2024-03-09 04:51:10'),
(146, 148, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c10jhpAWdrc:APA91bEqmJJydFzxuFJmWgy8koMMj96YVimqacTxXKxlZGZu8N3CMBclMNnMrQaLnc0uYNT5HF8H-1lH9a1sRNJbc6DOWULRLtyy9Ear57qN2oObcNtbZqeF25qEjPZ8IhMZEzjiA3Uv', 'BPlh1eK7hJ0rSUQnIiYBEZxE6_WW7LYm46aJvI42NNwMW_0a04yRDDOHoIRL9jZ2mCegTfS8nVeWBvd6Fr0UH4E', 'u2aj5qnWuSOU9MO4-vjANA', NULL, '2024-03-09 22:59:24', '2024-03-09 22:59:24'),
(147, 149, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/e6Tc686R-qA:APA91bEEYX9ULgGzcOlLW7inQrEazIWKuSyi6C75yq-IyFNmlR_ybS1BKoG3lvQ4NUqT7XLqOXLDIFt-fnuaCxwSaZIVi31WXq86Rtrc3uOydR1bz1RNM-h_F0JoJCCs_vrub8UE6mhT', 'BLxfX1ExboscidFt9Vif8gN68JiaD5fbDup7nizbXne9r0_y5yunJvdd12bAyYPapBn7UolM8YkB9y52ECDuOV0', '0x1MjyYvZtKuQuBno4fSIA', NULL, '2024-03-09 23:53:57', '2024-03-09 23:53:57'),
(148, 150, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cMGKte2F0c0:APA91bFEnLXihFNKtHzpJ4y0Rwan9P9ADMAvUJAem4q4vR0uE8Qhllu9XfdCAvYKDkrUChPG4nmJgphCXO9CV09mnq45yJ4fRWNDroiXnICiEte2t6ZptT3c2CqJrkz9jdLg9e2lA-aV', 'BK2i4PhYco1ggsHnQwxTWSlQsUcQZNoTdnPm4x4gxiLE-pwWHoDHEwWmQ0BbVjSbYTC-UEb5NOiqDbSByZ7zp40', 'pFmebxrrgozOSR2WQFq-Yg', NULL, '2024-03-10 00:05:30', '2024-03-10 00:05:30'),
(149, 151, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fXv5FEo_5iM:APA91bHckC9R8WV1e9YWMnlpyFo8Iezk01Fzg1iWPfBXE7-LBQinja1zQxyUFO5Z2TaJT0wvSwF1JCnfg9hdQU5HuDcqFJxH34xuUu8JQw6bCUhe3DpbzcqHnwAsKLAEgxpMd1TbVJjB', 'BDXoFynge57Og_9iH9xqJ2NSUvfA5BWFoIvxsY9kS4JtB8RQ4oL79-7iV5sV9Y6EThT0KIWKxThNq5G9F_6W6Ms', 'uDDfxomRWlIMpX0K5I2qHg', NULL, '2024-03-10 19:27:23', '2024-03-10 19:27:23'),
(150, 152, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dle94sGOHxQ:APA91bEAI9q8CUUArxV5Rf1K9yDItMhgSLioCQ3SzAkTxq5gO7XbUWSWnLMNp5qQr91yiNiWQnfilz_3ORgSdZegl-FiY4IXgNDggkTPqfQqIN5WuNxjE_ZMKOGI-lI0Z8tELY5dILfw', 'BBELyjqep6AKua5QdjNS9OLYGVP0TuVvkDON8qAHFIFWq2FpA8NsjP5mHsJ-mUsspb-i7gR4TPGP9zS_yevcxbI', 'cQfjV_XLRnCWIzLFSU-iTQ', NULL, '2024-03-10 19:27:36', '2024-03-10 19:27:36'),
(151, 153, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/e0Pb-3DT7tg:APA91bEtW7uTDjomk9KU3YwPTCNCfn6qNK35fEjX2wODUpXo2XZ7tIldthSh75N3XidR5kAXl5q7Zo_36iIMMp1URFbVD0yJoHupvtvlF6u-a8kYc4AbiPBWiI3iw-ZxZcazJSf4VC_M', 'BNM1avIZroYlr1seiaguJG5slsS_IWEv4z0JsdQAx-fbW7XNcJTSF8hnmcUStqkf_xfyG0-Z571zpgoap1z1xwE', 'c3AfWTtwet-yTS_wTTqDbw', NULL, '2024-03-10 20:20:42', '2024-03-10 20:20:42'),
(152, 154, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dowFQ6b8bwo:APA91bGogkNAd0sie_L7jqgxaXoaV_3ZhrREcTrlYG-CVJPKPVZ3OkKZ3WNte9f1rMSww11r_gJ8eq6JU8fCL_fxgzVh9Qq-6qF3ZhMkE80Qztr5Bfs3XE_6yuxV7VPhyp0EIAi2jqWA', 'BK8tA7V5n33oWR5Q9hqP_Hb-6zJxv4Wwmf-iyeEfPZnlhfTHVoilZ5Fhi8zK_HoPNscOApoziEBc310bPt-1178', 'Yo4j-WVAvHBL_Yy3YAslSQ', NULL, '2024-03-10 20:20:56', '2024-03-10 20:20:56'),
(153, 155, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dqB7XKWez7Q:APA91bFvBVRyl3Y3CdY86vJ00RlR0bmh5PmJIquTuy_MwQTbZYn90KPDV952Ztc5tLs631vCRi8IGoPcndjk8dBGwy3Rv7S4StFM8Ol5bOfFhu85kccgH_M16qMo_giCkNptM_7UWObK', 'BB-RlCa5EGs0dTmw2mduOCimu1oBv1yk-f5PRgsm84Zoz6B3EjDm85hJzq8Fp2BzWC7n_HHAZzROUzd-EDMSoI0', 'qNLv0b9P7b5YXgK2PieDIA', NULL, '2024-03-11 19:35:04', '2024-03-11 19:35:04'),
(154, 156, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eey8RjIAB7c:APA91bF6qhALbNpXjO6DOIfzeIOL-J0-LAAWELJauSnD9LNjEOYgPBe69D4lW66_MEjcx6y9jSpflSC6mtWj9lkUVo1PxPX52ggCfi4kh02uYUTYyk2yI0u1v6OzKr21sqGID3PDtjyd', 'BPQjUZ5avVHt0WJlKBtwOm1W8S01XVuGzMOQE3r0LaOceLL2IEa-4t7pOSgkZuinPcQ5XKQr8A5rYqiPy3Ddz6k', '4-bqLmWFMMiRGUVlDyD1vA', NULL, '2024-03-11 19:59:08', '2024-03-11 19:59:08'),
(155, 157, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cj8Aqwwr2qc:APA91bF6JdiFrLxYa26QmHh603dgeV76ux6F2f07ohLhEUnny0Hf3SD2Ej6hbL-lS5uP-NpfE1WvGyxobSWfh_-ml6Rka5h1kKZNE5JyZDi2Biwi8EWi-_iDFRPsJFY1jQCNaKP76znp', 'BH-btUKBXfDj1tHUofnqqX3k-DPl2ZcTQ4_1LZctaRMPj9FtSvqZi571b2a_9hqsc9QbRNE6KiqKZOeYSyn0VvY', 'RE3JSHdt8e5-BV0G_YYFkQ', NULL, '2024-03-11 21:00:09', '2024-03-11 21:00:09'),
(156, 158, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eed4dLpqRHo:APA91bERPtTYJKZXdg3iJqh0Xh3e2KL1hv9DcNpfK9GPEscMTaVwzE33JLZgjFHli52qRv_vI2K7wzZivlPswUqoexJuHdo5oNffVtXqp3THrDrBnfnIBUFD_JZt8lTdzVjXRtlfRTjp', 'BNY8wzDql2F1qL8RKDnt3ujUn-l4XYJ4qVBenA02Qaav0nyHqu5HCeMeJu3NGuj60fMw6xqwPZQwi4ztZHJh0cs', 'i84XXoPNsULgxgq0Vm4iSw', NULL, '2024-03-12 03:43:27', '2024-03-12 03:43:27'),
(157, 159, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fypbp7LasyA:APA91bE5L59gX2dXFp0lhUcM06yfaO-Hj2Tn_q5pP7fwQ9p6gQzvv22WfD0ouRhD48wOEul212dtB4PEZiRr-DyPZo25zKytaIM_TdUt03sEUjxCSpoy1cJwpDTq05kH19QQy1dp1gkw', 'BDVWQ25douTPsWXZ0d-bfZ9F2sUqWkU4FSSxSeyaR0E4YC-gpnLrWs1wRIFIO1vsWnAJImAO0sMkR2i1fk8YJwA', 'SRQBFffZLi-V6HXNSNbEBA', NULL, '2024-03-13 03:36:39', '2024-03-13 03:36:39'),
(158, 160, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/f-anD4xTB8A:APA91bHrEGMiInd0eESAENLy-YOaiONmYvNEV34clRIqct3_Q3zfzbncJin4uZYAJkQmOAJxJOAtv9FoUZYgd8CLCMhyYNlg0I7lcMT6tIWs7HrfAgfeffwZXwfZBly4TkqxQiBtUoy-', 'BNvUGdfwxY9llkE0SjxWifg4QiPQDkmojNLxdHjUApfTZmm0S-EIso571YLogfM_qX15ujQk7uy0hytf7mIrwdQ', 'a677lWChzBoL0EqlTy0DBg', NULL, '2024-03-15 19:44:13', '2024-03-15 19:44:13'),
(159, 161, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eQbEfeMhTdA:APA91bH8Jxgq0lIxtmJ-qoodH4LGqlBgxfakgiUzV-XPkH1aBtAwOjNFIz70YsadlkkzmO0AONJxrbztY8UX80ufMzZmSNtTN7ABQSCUu2Vs8_x35DYJisxOUXWeK-yaKBwFIBEJKGRc', 'BLqpQ7onTY20xRSrHbYXckZr9tMgl9T5QFwSw8GD6OzyTWfXRM3T0mPbN6CWGZLdRDftDimMeYSyG0ULufw9lcs', '0DZb2RbjrfhPuUNkLc-m2Q', NULL, '2024-03-15 20:09:26', '2024-03-15 20:09:26'),
(160, 162, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c3tUNe1jmXA:APA91bENqkouypUBEDaYrjfRQ8zaUE64Bzj1spKE6cmPMHslBWbNT8W7j5NRXLeq6NCsAJ-U-r8qjxnTsQP8WLUeNtQabuqydVKSNQQJMsq9jh7VZU_iZDLokpJMkemWL3hYMVCwxjdK', 'BKyZaSSMpURaB9UZcoDd2FQ2YHwNuIkyJefQRTlv_2pH4yd06c-W-wom_rp0JGiy0zPT1Lh6eXTXm0nXR3guDMk', 'LQ6mx1O59vXZLjneHYskVw', NULL, '2024-03-16 16:35:42', '2024-03-16 16:35:42'),
(161, 163, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ePsI-zkGeG0:APA91bFs2rtiPUBg7LYjEgHp77mu1IxBY7ulI88T8VzOc8qM4GJAwNmPWLf_2tBwjLXZf4058TZD154nc4B4IZJ7jbdcBRFJdE4cdd3r7RfUQMXzjVAUjq9fc8rOc0tUpZl8ryL-XWi5', 'BIYyu63ud7h4ZkRxws3smpwepCV7KZVlymAxL_UTq1n1MDcSokkacT84N5KZRor4QPir8JhoQcTJKBvROqYEhlE', '5KbxmeQPW3a2UQxm-DZkXw', NULL, '2024-03-16 18:16:27', '2024-03-16 18:16:27'),
(162, 164, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dZpQe1-JHnI:APA91bHj_Uoz-FqAu8wrPdMmCfemRt2i63Gtga_54Fh2hdXtr_Un8Rhze7A2DQNB4y1mTpeFOnrzIv4hFACna_Y-kFIe38rFIU1tDQxEA_xR_lO1XmLi_y9FC7bCLBQQ7O6DgGkutPPR', 'BOzA9jEfqirqoFkCZb7nZqKnzOiwoNO0iaQ0BN7wtrQqIdmhlUeOSFueGiNfpyaUig_vq_k_gvXnID39lg8f25g', 'UCbHxmWR8xfps1ADk4snJw', NULL, '2024-03-18 01:49:04', '2024-03-18 01:49:04'),
(163, 165, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/daDpWNNTvG4:APA91bEmZZh0Hm-3BBEW62TGUeDVi7Ke0yxd8DHTN-RVQsQADC6uBV7UBNT5w9z3BYF5bLiaUQgb8TIoT3nBtVNlPCoJe9u45jHIvKfNudhpJDgw1E5tj6hklIEFqROKeYr8aOG-Wvsu', 'BPI1nL8rDSwE-enZYcN0VECZP_A19zDSreznPyhkzOTjj4sZsY8Z3EotETWEmLKx1nREpxgrQ11AYDwoac_pYck', 'E8P5YyJ98OLwjhT3Gmkobw', NULL, '2024-03-18 18:08:43', '2024-03-18 18:08:43'),
(164, 166, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cztepTe6rQA:APA91bEM9KhjSbXwmaRNKqQse_aCBjAyv41MiwzenHwtZJH-G-J7oNOXG_mhawwH2VBjdE6DgLrBWu55GF3fI3UHlNXYd8fd1ntuUpYmUlX4v_-gF5y0cWi4qAOfaveXzvEvMc8sB98G', 'BPAztiqh-EzhYk_kALle7Y7FNgNKn2KZYyODBUx2Mp3kinIxjA_PAK07kbh0TJO8l6HjoZzQskhpedDqwGgPxQQ', 'F5nK1K4k8YlMX3HXemRKSQ', NULL, '2024-03-18 20:56:30', '2024-03-18 20:56:30'),
(165, 167, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eZW_0eKkP5I:APA91bFXHu4Mm3os_ZMglGofT-5mwRW7s7KnBMHVDjUKRL89u0SUPfethfmVg2uJ1exP2U-MQ8jAI1ufNC7PML3ex9KIaUQE-rRNbEMPHODc302AOnTK8Z5E53uJLZ4pcnSgFuEM_yQr', 'BFRcLnfVGOVrOkZp8RAwuv2D8cCrXMrZuDcXou6h1eqeT3ocTdP1m9tBLM2rThxh7I2KAkT1fLXbT6e_0GNxHJ0', 'P3rKOT7b_k3rt4khogwurA', NULL, '2024-03-18 20:56:51', '2024-03-18 20:56:51'),
(166, 168, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/el_sLh6fcoo:APA91bGXqAihb7URO6QxyTJ3wCUMUvKkRakeXgDfzSi4-M-GFNNVH4FdBbYX1IH_xN30vLZCh_fVwuQ4A1WnAhW9ElCgaLoyspw2Do3h2Bfv2ofWw7TLbZw3nYxZf80snzXSnYksYset', 'BCQltKW1ziI2b8kNshpimvAsBvgyljtwYkOYZlQ5pO_jbyW-JzFHW-zvvf0M4xi2IG1bGo7mec-TcNKc8_0rDWk', 'O4nIsClKMfp3QEjsm3f0Uw', NULL, '2024-03-19 03:55:11', '2024-03-19 03:55:11'),
(167, 169, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eC7m-UV0sRY:APA91bG8rBMQGdJwRhYGV32IXCaL_m-kFrFTldFbQuI4bYyWYRumu7JTzeVeBZAenWi7soE0oOK8D6A-UT4T6sTZeck7hjC_fudFJ3Wt7aRJ06mUjQJI-f3o-C6AUdn1SYKGTOO35iAO', 'BIpb8iCJEU_YVy2Q3UG2BduBHSeN-L4Z1ka7SqwZjiWxzj-SlW3HY-VbS5dg3e2JCcEa-lpgZjoySvMqx6cGakw', 'CwTpjZXYrVzHq1QzerbO5A', NULL, '2024-03-19 20:05:47', '2024-03-19 20:05:47'),
(168, 170, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cZ2KG9CupHE:APA91bGRr2tuIc2mMkpP7iSNvvoGJ0BdRIXotwR_9ILkcoycJmjUcWSEzz38CVR_mClgLbuDlFoWrJP0F8qTFocwOd5my6uNkrEUbZg4Ot25rO3fU49USc5h2-KooUPp1RXkO6iufAl7', 'BIhvew9pE15G29NtVOXCkYUlbegmOev0QvKpZQ_QV3oMWbOYrH__r38P8SQkNV8M3eGj_CwE_rijDkXry8c76so', 'aa13d_770casMMzjFpqRQg', NULL, '2024-03-21 18:55:16', '2024-03-21 18:55:16'),
(169, 171, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c6KKowp8Vww:APA91bHlqZTPvXSV1sj0rp0IWK-R_3iFBA9AGg2tZsG7SXfpEBIrmd05273jxy9u5XRuTNKcsuUZ2OtMihC-I9KRGsGR4Wk_JL7EwOw_HFItkU9CM50ESetC4iV5JuwvT70ImawCHvgt', 'BExSO56NKMkKYCTEZ5aTpWoJSTb6NnSyzR1UdV8922jj9DDlvNjgraVZ7ZFiCA0Bx1I-2B2oLLVNZ-vPSNVjS_8', 'O6o7UhcEtBQVzgSWLPA15w', NULL, '2024-03-21 21:08:40', '2024-03-21 21:08:40'),
(170, 172, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fELDdZd501A:APA91bF6TAZZ-xYg4onzRLXnNPvWFaKRDHfGHkWo9Om_7M42Tehn5y6js11GzIWFYP3iiDNsriqOGJWBCkw726oR78iN8w7ogFdTESxs5t9Rtrg8eqCGVcQFs8_LeNkjAVVapK9nSgRh', 'BNyh6D1C8CQ6-j2L5doQfzOblHaeY7T6MjZZA98hnmfomBSJ3Lt-MfD2d4ivD2E6P1qCSdERXlMgKWhQJP-p4yo', 'Jtn2Vc1Ga91aXNpKx32VdQ', NULL, '2024-03-22 21:20:14', '2024-03-22 21:20:14'),
(171, 173, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fNasAcMZmps:APA91bGJRjdwe2T39rMp8FoKp0mh5vNSLgQNdkWE_0iiIH37TdnL4OTCCVyDUJU2X7Di-IBGVwg14SkDQMn9hYH-Dc7A1Ys1o6pyP4OQ8KZlm0BCWU7XoJxSoWDcVZXrJ0_X_r-ovWW8', 'BEcbdQOoax8618OSWZAkHXJXhjWmdui5RrkYtmezQC8j78Tn3sbGj-oYCoK7erRBEYmgWVz3GcU9Cc_635b0XOQ', 'mC9R3sNv2GvM3eXhTZonWw', NULL, '2024-03-24 18:13:10', '2024-03-24 18:13:10'),
(172, 174, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eiPjiVlwtPk:APA91bFg46AtKuQXaVrgzC3i9H_eyI9Jw1Pyhhpy_qwO5nBdokzGcbMPQrXi1lgVYII-9_6RqGHjmKpu95YysQ3Er44cu32_Lz1GPYSf-wWk4K9PYHN6pAx2rxteBq3xV1yHpQXf042I', 'BLcQ_lrSkQ4pwincUxazrfY_aqYw31HgDkr5WB1cPbRYHmvH9qxpMR6cfHz-aroidTK922yIH3UKuWITXXTetVA', '5mHSEKzEVSB4uxaSu5Xikw', NULL, '2024-03-28 18:15:43', '2024-03-28 18:15:43'),
(173, 175, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fWFTQ2GOe0s:APA91bG1RPGwCAMgM6BdcBx3ZfBlPCKbD0q9B2-lD7FyZqGUShJArl52T6t_3HGlvgYIhjNGlNTmOA28LegIScWidDClWjJdBrQx_FU7NkrXkpwR5nmZNUAAwESPLZs3T1pdDWYXg8iW', 'BBcxxqHfbp5LJVjauprtn3uQCvqUjNOWPMA5E6lW7giyUMFL6mbnSJ2S0BC_8mepuNa4pjc5cbl5qr-Ojvbf9wQ', 'cJmShGrRYLNaCI85YD5oPw', NULL, '2024-03-29 05:12:44', '2024-03-29 05:12:44'),
(174, 176, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d75ZCMFrIV8:APA91bG3R6AqelkJ1ZtyuFxqf3pnZtv6s2JlLak_bFExAr6W0BqV5MeYNsfQxWAkgHLZ0wCp19TnALHiUUW2QgqqlV-lETUp2PD74oy2HoIshtMyNzfDdRUj0L_CoBQ7Wxh9l0eIvQoE', 'BIEvdYG_Iqdx8W16bpgP10MkKGjHguweqB6u09feh54Pg-Uzq-pHzWo6jiYbIeUlfvjDbMO0EDoObvqDJKohH9E', 'pgLn8SnqCZnJ6gvAhQIsEA', NULL, '2024-03-29 05:13:05', '2024-03-29 05:13:05'),
(175, 177, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c8bCUA5tqNw:APA91bEkC4zmyB9MwOacKDnoFTqQrMUWut5klmco8HK5C2V65KCqW_kcC3jnDp9IpcFCR6YZQOuDBqVd7qHrQjPYkZgK1qERqL8nWHqAWv4ntRkBw4wjNtJJQGALcA7J8kVsEQTeg9s8', 'BIq93aBBlBubKACIJ3L7UzWRtopPbVTcFfy8hULkyT-UtXqfGqQPm_DiP9Y4wtI5ZaosiqTEV2t-i6fnNe3TCek', 'y8Ih8zPTX-0Hymdl7SP6bg', NULL, '2024-03-29 19:11:46', '2024-03-29 19:11:46'),
(176, 178, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cHH_qsWRw08:APA91bE4PM5XuHVhVRFRsEqBKh1o_IE3vfNmqX0Z9qZ0b1Izkg2Vr-SRpIQPYii7oSBF1fwCzJNcGk8OGsCx_i2cmmqiBRb9p-uhZIUuJcgIcY0-uupSXgs2BFjuizQgUSqWG170Mkke', 'BIYD2Pdi5qyqPSotPOTiXB7RWZllKtXE9dAKqs_BJ_M7cgk04nTVTRpQiLCqyxSKVUwrrpAWXuyuvEFuaaH3DD4', 's0f8THsMCa6b8bmcrhnhnA', NULL, '2024-03-30 19:10:21', '2024-03-30 19:10:21'),
(177, 179, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fF8vnvLIpyE:APA91bGZabRbD7uIRiIxkqE4LER3ragc6ZJZs9RI2aJ2P9vzBm7lCb5JjqS459eT8lhnlX80QTUVrYqxhHFCC8MrJ_s6JeKwmPJ4VIMD6DGLsF8RcRactFm76hZrdBny49RPLmbtJ76W', 'BIm_BK7cZhTmXl4F5eSKY9Br494QtuQdkk6SIpzrMOHYBreFJAPzCHwWtiZ8FZ7g1rnvOjCP_tWH7-t3KlX7xJU', 'DFvQN8XyCHBrIQtV1_u47g', NULL, '2024-03-30 21:35:55', '2024-03-30 21:35:55'),
(178, 180, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cJyIp2LM4sY:APA91bHmaArU0fU0nI_q_PGETXuYK8jiY9xnVE4VNhBGr2W1TCGg3jwS4T6cg0OIYjqfAiV8hhPpPZ2J3iATvGY9BJSLo4p0jXvVLvATM3OvEPQ-Cc76wGQJkjSxcKN6qL6WgYdZjYQ4', 'BANzsSWObONRdxMVcqcRyt-utv65U-vV3ZUSbCDYIciD82G0fgbuhFgHWczSQszHguKsWlyW1i3qBnwdOPNzhv4', '4XD0u1C84CQ9BmfXb6nnxw', NULL, '2024-03-30 22:29:09', '2024-03-30 22:29:09'),
(179, 181, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eGZXUh8kirg:APA91bG6cq29169wojJF-7c0XunFnjm-JOckNMLyQjqN73FIb1GjH8-mCfWDJGXRlF_vzbAHNQQhCM6kltIbAw_PuBzWBjD61Ud1A7kMe5zcdPeMYZWOViOmljH9u2LMJCtGE8Kkh9fT', 'BER94SFetFkmlpnwatwbxxWh260sKYlBoDLTVg8AsTZMglEbka4i24BDdnwGuCpu-fAXJKVDowoOGpB2bnkaLTE', '-TOZ3Bh2cSSGVz1LbG30ng', NULL, '2024-04-01 13:06:21', '2024-04-01 13:06:21'),
(180, 182, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/e1ZIDI3B_mE:APA91bHQ4yVaqWN6gHVmLfihrOc7y4bfgVOxoW4WcKJgIi_wvxUtIsWfFBxZHYBk4VCdEddKND-wYOL3b2iRXxOg0-O81yxV61PE648t08US6pj7MOjqRTG3jUeC32e7cXJXytjx1D2U', 'BKeh0AXLlmulAxLiSnYw3V9DKavKLWGEBskXLW7IWCUtHOYlUJc8Emw-9BQEeq-jfZwPlFsUQWadLqigu21iECg', 'rdbprKaCYOAdJqVY5WP3_g', NULL, '2024-04-02 01:44:54', '2024-04-02 01:44:54'),
(181, 183, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dEjfupt1bYo:APA91bH6MXxJju6GAbYiJv2mPLpq5TF7Jkv4oC0ky3JOkfKuT2q0v-B5Jq7fEGiDgiRj87l0qi0HmD_HWpUwEIvdoTUW0BOon5wQ64avICwaVW6Fxc0rHBE9-QGY9vOn6aR81_33PJ7x', 'BEyhscASj5zBCKI6hA9iNq5i0X130_0sTulsk1LRJLBP7t8_kQ3F8CEnZxgBNHDmGGNgl3groNZHqXUlRkFqLtc', '4AEeD6cCALkBuqqTpksdjA', NULL, '2024-04-02 01:45:23', '2024-04-02 01:45:23'),
(182, 184, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dUt9Ny20JeM:APA91bFqxpnQ_t3ZEcMIK-8wE6EuDIEEEl4f2Hfl5eaHgw33n2aKUH2svBuw0sQRhtoItG0UOcd7umkXLur46AQB8mLV8yu-WzC338jGSMh5ljOZkEvF3nYyXrR7571Yq06Qtl98ZOkE', 'BDznmNyiyphr0j_VXdCsWjdzEVhGf_E5O_i-rZPDLksGQe3XqSuwIm0vO7ks_0papYD4CPWa5v2mQ9RWQ7kswGo', 'o8aagLxmO8fNftXHjv4NTg', NULL, '2024-04-02 05:21:11', '2024-04-02 05:21:11'),
(183, 185, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eaE9fRxN3IE:APA91bGITwaPARLissBy7ZoKmF9rwVXH00LP3fi5lZtsuSAuZqQSZ8xbKh4nnsRHKA3oLt69KP1VdTsvw42YJMgKIQzcgVarufoL2MN7OJ4TbaMrT5LIiMw-hlm1s2ZuNeEZUZ9mmRNQ', 'BGdIh03B1hhS8HFCrkvtfh-pHMRe8bdOt1Gw_6MQoLuJDnHwvwj1Y1vIrcSsp2EHXQEmyqzCq3xJjSG5_x6tmaA', 'Ylqj3HiUxjPRIEfpzSTFgQ', NULL, '2024-04-03 18:29:00', '2024-04-03 18:29:00'),
(184, 186, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eKVMbFrlIsc:APA91bF8CMVvxTP7FzB1SnT3Bng500-JCxHUdlQQh0jrJI1e9ya0sBc01uNEaBm0aKyMPv1E8Lzvic9hbtVyZtn5C0E9NoWl79MzkcQVBzWGK5j_ZXfjMQ2RSeelKGg9XqA691T7LIcQ', 'BGAVG3MdaaUTPvHXz0OUa7t-2mDasmIzRAlH3aqugrY_pH2UJ8zD0GNT4qP5hM8TjrO9puFwc9Lbm9Mxk33R0ZE', '9olJrrqDmaS21Mm43kEd8g', NULL, '2024-04-03 23:32:15', '2024-04-03 23:32:15'),
(185, 187, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/f_tlNmuBaa0:APA91bHm37WgKgJzCrVpwcFgcz1C7YxMYT4-2oCncLbA4AYjc7vo7gmCURqSiq69Sa5TgrxwifegIQgBtjWflK7Nx5s_ovYul3xonwV-VySEjUsbqosgThszT2XAeLkyGBZMKPZGN9Yl', 'BOQWUJtJnLdvh7BWs-u027PQAjH256SS0GN9VqoPez2pOoWrpaUGF3jf1L2rbTG0kp9RCG75HSGXZW2ed200XPk', 'Gm4xdP4a55819f897I9lPw', NULL, '2024-04-06 20:49:12', '2024-04-06 20:49:12'),
(186, 188, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fVrPdIO-wXQ:APA91bExhQdCHUK61_4TfNLY_x3MZHDzjWfVBE4oOxui52gGga6bgnd2nddDxWqp1XYhyitXNdreei_6TG3YRANqtoWcMnl8XVX7lo-f5r1krsF2rDgdTJgs7lW2UrwBgz695FX7OPAP', 'BJEd-0oqGkRx9HKp1Cp3zA1zAh2-eL2cHy0mIFNHxVFq5UTmDtjbFHF5c7epsutFqgxSBJlVYmKvUYb7ShCn2rg', 'gdkj6Jy6PgdvGlGrH7pAIA', NULL, '2024-04-08 14:19:19', '2024-04-08 14:19:19'),
(187, 189, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cqGH_UGaG8M:APA91bENZ_F4H5PU_W98SWDiCvuFyHdrjiuQpEmdeOi1tou0akXz60kV17ITBgvGZbfhRLrErFnoamByV6ToKab6V8uBL7Qs912_q_o6tAdW2Z12i5vf42QuDGu7nUklNdrKyzWyV49Q', 'BAFQ-2QP6aTvXrkxWo6EiA6iikTCL00qZQbUk63spr-iFy5qEC2Q9UgVEvmOjZnaVweMpVjnLltZmscwsJWVsDQ', 'decw-23T75uy95_e4qXACw', NULL, '2024-04-08 23:32:55', '2024-04-08 23:32:55'),
(188, 190, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/df3dF2_iHjA:APA91bGk22PoIoseRr3L95ozYp07NkjPzWW0h4BeqKCW5XyLlUWkmCROxcm_gv_kL91QEF88NjunG5kGBG--DQMd7VGMSe5paWDpaQon_dmtELX38VSsQ9YV3a02sLrxe75jwuyAX2Wc', 'BPBlI5T_681QRnGDfkASqhjY5K5xZ7DLu_StBCD67GjyMGGVR5rI4SG8UHDoIcOrgbeq5LljgCZ9TPD92VDSWlU', '4qK2-inoRTBTycWjv2cnig', NULL, '2024-04-09 16:58:30', '2024-04-09 16:58:30'),
(189, 191, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fFlV49IiZvQ:APA91bHIbviWvCf7kbXjx21BP3mHLX2PQPb2ymqmJnDbcB_HDN2C-zurtfnbtGRIp3Ve4fqW-K3WSqC7GS2PRm9LHm0Fx968VOmlK9hnhvMJKSWB7Kb2mmEs86wdo_sljY8hsjcr_a7w', 'BK5aHuMHSB85bEz4ihgf9WupqV4zEqsfzYmnkOIalyszt9j9u1QG9L7IdWiZmMteAMNzHjxxh1CWmr3lGkm2QSY', '5nyKLGZRbWK9tvxK_c06jA', NULL, '2024-04-10 18:07:49', '2024-04-10 18:07:49'),
(190, 192, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eCFvbq18f7I:APA91bGpj0ybb1Lfw7ruYyTN1K0Z6a-B9e_TPHmXaHyyxrM1lpzkC_Ilp4aHNsd23b3pvS1nfmeU7XoynRyrR0CYIbnTHOL9c-RlUiPRKHLdGVJ9zkc1nYn_H3xmrKoTRPDEBy0nxuGT', 'BPOOI9d-mm2DtzTQvEdoQtmS2ljQwsXNBcAh79cVCEeCuOkSxSRTjTOVte4nzymbM55Alp_rYIql_SfMheyfhCw', '1CwoR7CGDAOxwKdyWg7YHg', NULL, '2024-04-11 18:06:07', '2024-04-11 18:06:07'),
(191, 193, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fe2OOmdP7dg:APA91bHkdcfYMjPpJwdDKU37JX_5AjH5aAqSqpEj1elB-6-d6YkHalK2Yc9SnX9TuHVhQIEm-JeEcmmlR8mNoUB8IVYHqmYU0QbEdj_gq3d6ZSm3qfAwton6N3mwYeoYwcThTasn-u9K', 'BMbqbrpH1bvMb9IeaFHG7petvGq_ElsCBGI9FCJp3z6mJSCYHEV1DsJkVqu11DM2MUWHKXrerEjOznNnaRlYrjg', '8EezgdWu5l7nv_Ht0CkCXQ', NULL, '2024-04-12 17:50:27', '2024-04-12 17:50:27'),
(192, 194, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fHColfYabmc:APA91bEZhDjveGsd7_DIYsCISLvJCmpOPsVSMgD8X4db6BAejiXiSRoJ3cqwO8h_JNK4qA-9u1uXVlZtPY0m1mcoh7OuOftmlstRzWYi_NSJw9FFeMLACYd00muv3B2h7FOG3fAd3BED', 'BGfhH9si1SH5EP9CiC5DbSTwx_Lk9hRB-hoKtsMQ4XlIzL3TZlOuieywC03YZw6SXakit9IjgS4qL59h4Y_yPvs', 'eCoadc4maKNnTBNovJWY5A', NULL, '2024-04-13 20:14:40', '2024-04-13 20:14:40'),
(193, 195, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ewdCkO6S4bs:APA91bEOyEYRn60pWLKoAWJvajX6iUmyf62qSSMOaMChssCYEQyZgcGzL3iOFOyL5FUZDnN8UZaYYy25dvqhVt-JZfKLacNt0KIoT7PX4-mNE1w5VAyAOeoBzWgS92ZJ5SqPxZjk9q2M', 'BAtTo97UngCxWaUmnrt2dTosuQqzBlWj9vw3v4izj-U-2j-vglciou5c9tonepqjDIqj3Ba5UHFbFFLE4I0eozk', 'n38BlRYlnerkh3YfQ8_urw', NULL, '2024-04-14 21:35:46', '2024-04-14 21:35:46'),
(194, 196, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cqDxriq2cEw:APA91bFWDc-u52YQTEArBMBm9pNOq4k_5R-u7hOK3BJPicjIlnbxwVKlbby662tJb4G0qeVFFTuB0T-cSaWlKP4OTG-dPx71c1amnYzpkKVMYI_Brlv63Bu8xxgdS4aNihwShYboviqb', 'BCXJMn8G98qfxmTv0xHyOzV6MrOZFgyZhtuKm-lUH9XlmvbDyvIvVj47AxKYShPwwwCRlZfZ4FnVcai84LwCpGI', 'LWsUlvuQ6zmqsW2ljAjIxg', NULL, '2024-04-16 21:57:56', '2024-04-16 21:57:56'),
(195, 197, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c6gpsuEgvA0:APA91bEQZTgYBUcU1ziQVqUHf1N1vvB43n0f4SAcru8it72HIpWYcrBrdKHwyEzkwMRdTDIzRMDJJjnlPF-t_iGUmtWvueCct4Tnb4X7Eo4rmimFBATxu6Q61K85F2vJHFA0DHi9376a', 'BG-epsPJU49p8bUrxp7VFdZG1FR_J7Rfeg8_c8R86iLcFCkxkk0RAlhDyrU6NH9kZIVh0yYYoJXtCA2bOv3mUfA', '3e5ZzmEmBgSwex04dCAwcw', NULL, '2024-04-17 18:31:23', '2024-04-17 18:31:23'),
(196, 198, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fNuIy7SSJ3k:APA91bEXiHCmLdzMWL-10Y-vPEd62FCBvMfB12QfFv9hbkgx-hObFRwwphe33b7I9hkZnGpMuYl6WoZpNgyi91Cy6ERqYQFBgpGXFGuvMnf2o9B2lLxGQoEx5S_Jc5T9hrynCbiax03Z', 'BKcwE-ox_Y7JyyUslmIC5ztgT6ocmAxuAQWVYslaeejLQaM6bFpMfjwmRIHlqRHbRpZW78LBTjjm3DTN86wzA74', 'BApxSR0xAbPYzfofTPuctg', NULL, '2024-04-18 19:31:06', '2024-04-18 19:31:06'),
(197, 199, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cVv1LXuEWWo:APA91bFZO7YV3WmUQkne9h4D5BHGl528xPfZYjSBeLVUJGkAl2tvbTgTWwMy8WhF5WrBWOkYPTL9UorFYqmZIiebsR7hiqc_zlnMUJeEDI8xW5HnMDjLKqaEU9vzdF1xVamXE_U7tO6w', 'BEprlUkPyH8XYvy405EpWH5cXj5M7cg2UBbxuZttZua-CtC-m7jQDKq7e2oYwCbY_RtUzgQXMjbjbt_zMyObuHg', 'YcoFBD7cwAMvnUfKiHcLWw', NULL, '2024-04-18 23:21:30', '2024-04-18 23:21:30'),
(198, 200, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/f3MdMOTnf8A:APA91bHBJUT2wLO9ld7YxgLZIpdafubIUNruGrDuqtZIXFPUtfMiMp-ctkzOhk0qJ9d4U1mCZ5p8Fb2V4KLgD8hSSIk1r05rKxSVQx9x4SMVaXb2QE-GDzstNvVOEFcg2XbNkTFBpS4r', 'BOwdST1PsAD_12XHmjNG6iOg_yAO4RaWtkhk-blzHT-5fDMdS2wwtYkdT-C-MYlZ8VNTCY3wkUb6d59JHOpHqEQ', '1uwaCUt5ksKHf0bgPRkOFQ', NULL, '2024-04-20 19:06:04', '2024-04-20 19:06:04'),
(199, 201, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cHlknIfa6mU:APA91bHKYzLIxewstWjWR5_u3gvn_T6qFgvv9OIFKcLEjff0dJDcB4waamCX7594saI5Fm08kCDkrvamnVHN52KBHvE9YEm5v2DPKUbn5LRqICGmtPbBF6IsqjHipAunuEdnlLf_rgkW', 'BKwpcylaxHQ9thUV_b0ptRjzAcAniqVWZu2jpuEBjU0DGkxeu4ybeH8TFPPri1LHemPSI3jrN5X0A9Hx0SfhVBI', 'kEY_lRJ3QeVyhslRr7iiXA', NULL, '2024-04-20 21:23:44', '2024-04-20 21:23:44'),
(200, 202, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ds8P7Toi_JQ:APA91bGIpZyUBUz-sEsz5lplvkIFEd_dw3ZcZPRjGoVVbR8WWQVl9xO_M_3GKzuNUa3Zd9Tgi3MpSjraNJCDvb5En_lSmH1spU4LIc3t0zR6osDyWq6GWAg_vXWpjS9aT-TWyk7HENRD', 'BNkdAN7Pmom0zA9pW2FLNZIhvm0_7YVsebgAnOciuMuJWbJ3CIfF3fTRHx9Tr582SE602OcO4rfLEV2URKcUF4k', '2iNKGOJg3c4jwUmShqo0BA', NULL, '2024-04-21 00:43:08', '2024-04-21 00:43:08'),
(201, 203, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ewbAy7SOb5I:APA91bH-CXd_OSxXgfN2RsECyyptBRud6cBNnntafnEDhIKDlVSdl6nX-EA5kouC3N0ug7Z0nE5rT0XH4OjlYzg_3EguObeeSXRJpNjhzMdYalZZ_HnVsn7XY_zo48sWACGvRG2dkqku', 'BPh2GEzec17rl0vZK8ni7h-8Qx0VacJDrN9PS8ScDHQ6lEZQS7F4yFFEtT5Dd8Dg4ISK4Ww4KO9YFHN2MHpU01I', 'KVF5z8pb4WKJ9j6lP4TJTQ', NULL, '2024-04-21 00:45:23', '2024-04-21 00:45:23'),
(202, 204, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/daQmlF68WJM:APA91bGu3bdtsqUHyMcTrnM7SHbyanlsIh5ZRs5jQ_ube9UEbgBHTiHXmTQYMFt1NikqG9OhvkAkRd4MHCXIBZzYbGiLI2KiluOjLoG2ssDZ2O-zQRvcrus7FOxnt0kNT65f9rdemTAg', 'BOQGYsAvZR2vESLwlCk_6sicGKYzTZC27xyCWG6N6a0E9IHEZsk1s1HLOo4whuIew_0-UYurSrJMwJ3YxMkpSdg', 'MmVR0sHHjQGpL9Eh_D7zNA', NULL, '2024-04-21 01:37:51', '2024-04-21 01:37:51'),
(203, 205, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dgyW7XF3ygM:APA91bHnU82JbHDvmbUb8Mb7osRm3xgtPm5kGohwlkLKOW08WMaj8q5bJl20PiNGQTxF7DgfQ97sN43rTVGYsfhqJefhaap0kJObPzKLyCigHmJELQkKx-dKYhPv_UabQl5pGw_ZSdCA', 'BOWeNEshTisDlbzZ7z7gFSK3VEyqWS2BupYGxCeMt99SZmG-bz8NizFya6sQz9uvfWGYef1AYsTwwJpIVW_TqKk', 'QjaJo35JrlZhhxSeu1zfEw', NULL, '2024-04-21 20:05:05', '2024-04-21 20:05:05'),
(204, 206, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dH_-RkA_y4c:APA91bEb7-nNS6A1MG9amKTy8_o6Uu6spwqZf4esCyM1j5x3KwayWnjsT7nWDxKOxFhYFzGkVlg9MpXB6kMEHlwaWok7Iuk9Wq2P_jAnUzmw9QwhZ9e7sjjTgHPLcpvOle42klbtT71Y', 'BH5TjmLXl-aRBnGXUx60HZ4wN51cvxbxl5K3XPV5yfZ0_C8ulYJxp9Y6FX4Dm97KumBxemLRNlDzkehouy9QhMw', '7Bw26xVHeT9W2eHPMXvcHg', NULL, '2024-04-22 19:40:28', '2024-04-22 19:40:28'),
(205, 207, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/erRhI1QGP_E:APA91bHkI4yqB7ir54y9xBfX8lW3gU1afUVCEaFFZmd5aPs1MpZ8OjIwyKl_kuXT5OBO5hFPAdEDIhdpRcJ5Z1ivV3svC0BxkrojYgRsEFK7ogg-lDM7j3ewecYL6vIdWadPi0z3NKNB', 'BId70pBdFC0L63dJQFCX_gY0raWu4iNZxa6vkxzBfEK3Z660uDCCuUBkNQgZ1iD0-N2koTR9X9KsxXj_x3tLEEw', 'WAP5IJ33mS8tpmdGXZ-UIA', NULL, '2024-04-22 19:42:28', '2024-04-22 19:42:28'),
(206, 208, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cJNIB-rymAk:APA91bGbqQYUncKojy35OoJ6-PfJzO0mjEz5dIwfs5egmGZRp7xr2k8y-d_Lw4kxboynYLKQrUNBUg0TpfAVGa7y-zBUEvrV1WrEJqsQv3ZIuAmsavV9WxltJpF3hOPydnZyPAR_des6', 'BMaW02e68hBPanYW-SSoHfdbuWmvqS1H-Q1UPLfNa1bMY5l6CW6GMGbIJ0Hccd5FKp8P87-_wolQPmPZHv4_X5I', 'XIBT8QWCJyCQuPHIuLkzEg', NULL, '2024-04-22 23:10:14', '2024-04-22 23:10:14'),
(207, 209, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fCMdqRgQuY4:APA91bHJwCFQvtwd8OCEHdPNBGT2pgGhoD0QzV5h7zoEE5UtbGAxVdaDy_tiCPSWkTz72oIso2urYC29pk5Ibp0oTSgLna0mycv6HLBQucVL9AdZNdQF7NhMi7Nyf3MQGzTo2epqkXu_', 'BJuhVyt625a7ZiAZD1gQkXIm2YBWjUlDYoi5qDBy7cCjNtP5arAScTSdsiEAoWKprecm5yvSWqUzkrag4AWjyXw', 'tfD5zJn5RKaNTmbqhY-vPQ', NULL, '2024-04-24 01:23:26', '2024-04-24 01:23:26'),
(208, 210, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cgwEN6RG2LM:APA91bFmmYSgy-EfrxUK5rfqm85nE_Pgr4mnqsdc_lUH1IMNg7oZ3ixvnDgXr6QDRaWt_Le7KHuYRlbKIY107Uyz-UKrYEeuxTrSYuEBycvcJKP7kEGHxNaJOKwS_fcHbA2AJPy9saNz', 'BAmIwV5fJke7Qz034PQObE3-ncgOqHrXoZ4vhTxS_76bjXn4IDfGKPiL7G30Dd7lx2snTV4iri1oa2InubOL_vY', 'DUde8EyMJNz5fM-aP48GKQ', NULL, '2024-04-24 19:09:13', '2024-04-24 19:09:13'),
(209, 211, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/daNxIq2JhVI:APA91bH5lf3f7_uCTWV7lPp_f9or75SkzSECMl8w1d0TN5QzbGxrFQ0jKsXcuiK5FnqZVhamI5EzVx8Ho1VjnO93JRtpI0XdZNJgV7AUjp1LHaUud_99TfsyoQUValB_5ihdG16nazh1', 'BPCBlp1OBpMg92uheT6TJd-MP8mvx56Ys3rVihE_Bad2y2Axkc3Lu1h9wRmIJttlpMSYtJ0JyrSWgSTvxm6vOEQ', '1pVFGmnVewoFJCOtZEcngQ', NULL, '2024-04-25 16:01:29', '2024-04-25 16:01:29'),
(210, 212, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dSi7cDmLIfk:APA91bFHO9hozpJOQJ4SWPwUyklFOdIR-nEm5muzMn2C1pEQzpw6-RxxV0dhpjL-3grWvTkb4BDUIgEkb_TPxFTRlmu6FdaA-lK63Qlw5vDqTgW8KSnFaj05BzIG8sJOWxMMzLJQh35f', 'BJ-RAEgWMbaIpuNZv0h4iRi_iwNeyLR96zRxsap3lChkJX7lAXRvuTG0B7tjhcSZJga1yiGX9kfMnAk04fS_28c', 'GUbfNKeMzIjeR4QtDmexYw', NULL, '2024-04-26 00:00:34', '2024-04-26 00:00:34'),
(211, 213, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d4zW9Jnb6bY:APA91bGSeAWVCPGzFs_HZ3Co6-6DSmLYU2DHN7XbOxZBKB1INtVd5hjZYNQhDtM4uTJJMI-o3Hb4vZ9-_WHbWCh9unlBv1oB4266_6xhPy34x_yqNAGaY_Jm0OBM9ULE3Z3HNptFqtkf', 'BAGE0pnMGpPbBnLaotTD2-QcPd76HiaIxhELwVdTUJ03KXtivDhP8vH-KPzjl38--Yb7jSQXCwKZ1TmCv3BX32c', 'jMfFnrwjeZH0n2_50W-l9g', NULL, '2024-04-27 14:41:16', '2024-04-27 14:41:16'),
(212, 214, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fHihaPG_D7s:APA91bGJN_2FW1iKeR6ACW7cykauz2xfTgUKWXi5-9JS93k7ksd7hz_yr1pqfgq5mxYIIU3YOShPJHJlb7ag5SSx2HNSUBvdRajiB8jGNsNH9-jSxBYvrBpuzty_6lLy4m6hW931yDp1', 'BMKomJQSWPnk0zVaBKNidDMTysAiElVAAhaqLkfOe5wycHjOQ5rfYahTDHWChBKA4AuNc1wdXrCeVZs-dGUKOzk', 'n3SB2sEaPU3QApfOnzJOcw', NULL, '2024-04-27 14:46:31', '2024-04-27 14:46:31'),
(213, 215, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c2R_tOrSTgE:APA91bF--HSu7EB9iYXc64Lg3joNFztrLEed6wveP2XjTTeFZdb4ZQuvvLHpRqEgLqxGYB1ZUyDWNJ1gD_RsdFqatniQ4RedoyHp9CL_RkAR7eHaRZ_Qejx-MwBuxACTLL50mzQm94J1', 'BO4yB4CwEsHJRmfL1gUfF8HfpaiMn3AwwmijVDfwvHgTx26D51ZFR24_HUXRwB6FunfzoE8Fe6foLo555LX7PZU', 'eQRKXImnYQrrXEnNGUtVcQ', NULL, '2024-04-28 23:53:20', '2024-04-28 23:53:20'),
(214, 216, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/euDtioH5Mlg:APA91bGW4ATkl_0DBQ2MOgrEe8OJbqOEyjXrV-YPfB2b6aktvEZgL7wvJSeHTcI39mNmGtIj_9Rf6TRGwoS1O0iJzJGGBWBHrtHrn7ZohOv8ZkhcLftKCcoemB20Ub-pK1k9dQfnyoSL', 'BCiSVPqk05tNRPBEplQkpxkMn75ko99QgEcdoyU9nidf7qEjkkaWxr8tw0EXAoeFqQ_KAUes6x_Gq0TuzJUeDcc', 'dxcz4Syu1RqX3svcRBnYsg', NULL, '2024-04-30 05:52:26', '2024-04-30 05:52:26'),
(215, 217, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fnURjJ6gTHs:APA91bGhlJ1_8kUzs_k3jITJ2bTSGnV4gUt1_U-Ai2dsKPS_brY5UNzO7w0J9fRikLlnPwVfom2fVjbxC1E9qrZvOX8jOJO_f83l3FwHgQpPU9nuVCIIE7-pQTj2WZN4stuwAKcFfIhI', 'BOZbJ2Obt9DjGWT8X1afKb4v6_s7I47hXQVhxx4SHFBzPzlSqEBiQRDrxjJ64mdbtwreDQ50LPShUNJgJ3TPcNA', 'Nt-QGSDCn-iar04jFNs6TQ', NULL, '2024-05-01 04:26:37', '2024-05-01 04:26:37'),
(216, 218, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eQ1HaIiBQrE:APA91bFv5dlHQCGm0bqP9WBmH4aOC3xkR4LZioVNBCQ78dK_bw-Se8SUF7Ulvta2plBrcZsIthMa8W4tcp0taPhbk3_pBoDMmDs7ox8xhX6oQn_0oUAUowElEqwML7DZ6NuWegj6CLA4', 'BBfTr1yVJHZ6XAK4RWxZVhJL69jeq7O44hDdq9jKr3cDkhwZ52qiDan7u9BD3Da4O7nDIf6BgCl75oJIBkn100c', 'la650zwk5f8_-KP4SEt_gA', NULL, '2024-05-04 20:15:31', '2024-05-04 20:15:31'),
(217, 219, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/e9_KkDV8bTk:APA91bGt1QREiE80Q4Wj2iYfFoUtyI0fuCmtoVPziLA4TTu0iouUHSt4gHA_17sTYz1WUqjBDjoYZc-_J7NT4AyV62lAnTCwgjcG71S8BS8o6EEVYtxvBSQCfkdGK3syh9QiG5bHw95I', 'BCnGgqK_ad0q6YHHSKl5rFFVeCIHUKcXMCDXOlBIC27FsDbBxekhvb3RWsweBa6TFA2SjjoEk7J6_nWYoRqkKVU', 'yGGQCllSDtnG7NqfEtsPYg', NULL, '2024-05-05 00:30:56', '2024-05-05 00:30:56'),
(218, 220, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cHdcTlAECKg:APA91bHlJdpGdsHGRknAa-HSWgeug0zM8bvQfY4ES49aiZ3m-1O72A0TTrz57naanJyO0LtEhOUz8nfAKLv9NvsopkkcmwN7keIdZ4HrtvTpQxg9dowA-0NiqtpL7M81m7AzLLKtGvJz', 'BMa1I6CSGh1rLl2HvNBN1WDj79kSFX6j6MuITukh4soz6kBd6cx5-LJ7LnXmoslZu85FeVSXoPqvQHLGu1CCfxo', 'kTPa3s31a-GEuUvDFOLi_Q', NULL, '2024-05-05 01:58:40', '2024-05-05 01:58:40'),
(219, 221, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c175nomEfoE:APA91bECdarVYabIbvG2INxhNbt1_VjMtTlIb9oUUuFk5_QDc8FjB4ZX9QrnEfKxLL_K_QqppT9rqkvGaDl8H1vXZf6C3jQRHvmF-1wnpLqeeDNHHe7Fk42QyxzyaDXnbn5JMyXBuZpU', 'BHdR3PZqXHjTS4FRc-5Yc5aKIqbqqB94-qk5DG2NxkPMiFNaxVC1oZB9AWAmFQqtacy4BMxZC3JRliaT1eJbeLg', 'T8iy8tiDymD0iFB1mjr1jg', NULL, '2024-05-06 19:15:03', '2024-05-06 19:15:03'),
(220, 222, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fkfCLX_PGns:APA91bEM3_YShMG-TDNDnhG_8wIFBDpKMag-IMbsQW3Y13UjbJET772wBJkz0mfqXF979EA8MPEkG3W1TxLJQg4Yl-O907vy3UnDRoxBl-o4Qz4GTkybOKGgYokXm-aPcdgXxOCitOfl', 'BIOwFj4SPlIwpSkO73T0wruugW5O0cFU9i9T5tIw10Z_3LcuZ473o_rPqSSEsVFxErh_3OGbOxwuCcRbQLfAl2c', 'KrTiCgKsbihCq2BnTb_SFQ', NULL, '2024-05-08 06:25:47', '2024-05-08 06:25:47'),
(221, 223, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fa2ZN0kLVYA:APA91bFfilTehcrMQQteRJc3ZCj4Tx5L6PisWulATWl9XnbRknAQfn6YFfsZoXxnX8ZJmlGwP6qO3jHS3mmteLB8gr0CZ5EARxKjZWKjZVYUd-GaD1iUOrJNkUdvn6Tamgv-w2QBSN-Z', 'BA1Bn1g8kux1s4RyDGtyMGNwSpV-PNUdVHaHl3e-yVHxQudAEyJBf7yuIe8OGi9VEJegd-ebdGDsTc24mb_iZ60', 'Pg1zpSRqTozZjzszqpsk5w', NULL, '2024-05-09 15:59:13', '2024-05-09 15:59:13'),
(222, 224, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/f65hJ2RAU1E:APA91bFghyxIuXE9YA4pRrVfgtiheMRMmZFAF40Wim3RYXRowGFaF5x2otYaWCPp6qDWM6E7JF8F4SgaD0yCW-govwRQb90Rlhc8qcggJJdEdFxXgacChAx9ljKXn84902PMQ_m793C4', 'BFRK5qA-sRC9AU7CkEb8se4nF_J-i-yJI51aaUWj25XimvHchy4qvC2i-VOmESMtLqJ5zdbUygjNW5G5BB_MbjQ', '7yz-hgOAe3MoiiO81ZkNmg', NULL, '2024-05-09 16:46:39', '2024-05-09 16:46:39'),
(223, 225, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ePbv4Cfp1Dk:APA91bFlLeXs10oOAvlLIf78u5JzODHDU9AY8cfG1IcOUZfPAV5Qg1G1KIdUsHzZz3BNYigEjcoiPdMtf2gvqZJTB2pWKccP8EjFqSAKzBOmntsWvVPWGx2utvUO3fkCH19GsTfh72Rk', 'BKJ0yt7eYX3S52AE59XH7itD7ArBrg4uQvMQjLx9hOozfUT4rJRczleXwJYvm_xZzeYnDBfnPWOdsEwcrgJ_2hM', 'Yko1FPU4rzSwpoiwqTf18w', NULL, '2024-05-09 19:00:36', '2024-05-09 19:00:36'),
(224, 226, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fALGmpmiQJU:APA91bHYx9EfzhuIrbPFJoNhU0hzCeJZi37wVAwRwNo-xe_gt4w95XNzffnuWKAJzRit63m7h4vYDJcKxvgIhkZhN3-ZxctHm1pvo7hXbzgYVCrTf7KxGTvT-kAz6mUhUcEcHfMAf3DR', 'BAy3llmxyg-8bS7brsqfprCh1p2eezAREyv4Nf41CufKt-Yy2oUS2IJPkS3ErOku64_WsO5Q97EkDJC2Z2pTxNQ', 'g_bY0DTacZQd5fAiydx38A', NULL, '2024-05-09 19:57:07', '2024-05-09 19:57:07'),
(225, 227, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c8zkDJoBKlo:APA91bGHU1GN_ooDWOPVaPnvmKWeQt34XC0AhPl9_jiucM1Z7OsrtCEd5n6mc84aaNLZDsdLnj-TQHVj-iGTRPsW5aJDhxp8jLL2h2dq43uxBcOpbhGM3m2L-7EvMH4e0ugE6HtMkc_O', 'BMO7BJA95esoIoPaSApexgrjyCx3_NjwK89SKbijG-JpCqGCcOEWuECMMLDv97LPdfgCt7hoasSBpzRBe7be43E', 'dMM5_DdW5faCjr1Jk-28rQ', NULL, '2024-05-11 20:46:59', '2024-05-11 20:46:59'),
(226, 228, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ckWxSweGTuo:APA91bEjWyjs1S68zMRPyysAiy4VVPF4RqfmJx9zQDYGMie2C9n1XOU4wLy9Blbp6o1rw2MkqDB0l7irZM9PHXv_n13vyQVsGjdxP2cvAslQweVNFrh_EuWGTchvtaFdCOg3OHQm4Zkm', 'BKLpQl_V_Ys6iYM7ur3bczKROanBVF-zcxyUvMZAxlVQCRsDxDhn1Bt4GTYgkZDK1G3o8mw4ulbpmCKSwH8zFcA', 'JMvWNec8dl015J83k82ikw', NULL, '2024-05-12 19:39:27', '2024-05-12 19:39:27'),
(227, 229, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dK3uauhGx0I:APA91bEvAU_KfbHxTyl-vSnts2Am7goOz9Lzlg08uqKnH4mjiXgz-PFBmMwXuzTLDcDJJtN19FeEyjgl7eSZrmT_RUIX6C9YvPXYeeRqsKLj0Y3QV49zV93p-CzW5v1ISupeRZaCrqrb', 'BLFhz_csQAIh2crqZ_iEuQocuKacZVvxLL5UD57y7r_3OABqgEP9utYcTVsWuiLy3_RPCPBcNEF67-327ZLY1q8', 'jiGi4dllvJG9ZIeKOSzRCg', NULL, '2024-05-12 20:23:53', '2024-05-12 20:23:53'),
(228, 230, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fsW0RMZ4dl0:APA91bGPUZ0zulBIaOkRKfxnF-EbNhIIN3egJTysVGT_Z9ZYJSyoDRpReizvVESJghJq3-lhUo_FL5btC-kYa6B_4QU3oq5gE0szqeskfKQSxzOrVoaiK3D4bW2bo_mDIEJTyxr2uyVx', 'BBe7yVhgs2OVdb74b_PNIbzPtoVDNEaGCg2pwjY1yzL045g8FV1gEm6CnrVQj3aKIcueopWTzlU5a0p20HCgAbE', 'Uh5dCmL4UE7xDTz5BNxvvA', NULL, '2024-05-12 20:48:53', '2024-05-12 20:48:53'),
(229, 231, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fcTr0AS5WkA:APA91bHo0JkOV3bhibjWtMxpcyw8DuUIlJtmvNacVMCQdCChZgmTpv77aS3eSSjsphUJ4vucg6o-rP0C2-MbHYlJjlAfGx7Rna5C7dsUXPqAgUxQ0z9JDoYWUGb_crHb7MCOfG3s0cTS', 'BFdM_vF3xke4fGR2gN0NGAvR3tmQY1hm0DFtVa5q6iaTg-U6B4zOW4SGQv4YL-uXadgV6A8VluPC5MFt_qhs1ig', '8UDZiinjHiVbeHv-SOKfSw', NULL, '2024-05-13 00:42:46', '2024-05-13 00:42:46'),
(230, 232, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fUBpuDYzD0w:APA91bHVlgAjccU9v1o13j98DPXmsN9BQCfJmO_ZES0ajjCc4MQkfyujP_8nS-fVTfcQP5ernw38vPp3X9rgsJHvqbXp2NuoNvAAqWD7yx8a-Fhn1De3lk7NdD16IvtVMpEi9sZ6vA1q', 'BPLsjxUYJJCyBnlhbGGa5H71v9pYIcPfQ_PtzxEDOUatDLxEeFV-nQKznRG7NHjRuFSAGndbhdhmUHExkFqPWrs', '47bWZc8-AynPS5MaJe0QNg', NULL, '2024-05-14 06:29:52', '2024-05-14 06:29:52'),
(231, 233, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dY-RN_vQbN8:APA91bEaWweDGlaZF_Xlkkyt2VssM7JEAYFl3kwh0FPRKMsA7xBU6ERb4q4g5u-DYlq6iDTsDrsevNMQR79-rHRXFMSxIvgSn329GSubIoGCYkQ1XguMlBBeM3WLOSLtlkQQuKsk-t6m', 'BFnffIUhqm6uSqriOGWivL1Y33WKtEMyvGNqFxSz48mlMlxSzQsh2xq29d1V3r9HA5wBqEMlKWsGTOYoUDCmHXo', 'q9KCa7KSWfjQll803HplGA', NULL, '2024-05-14 06:30:48', '2024-05-14 06:30:48'),
(232, 234, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ceHrPiuM1Ms:APA91bGHVpU72LN7uOssJB2TCbXOjdlXCMeWp41YtgOukPtYgK4GAP_q9T1W91vU2yr3R1e7gfXGYlaVcHGgLruDEkow59KfJNng8hw32OLBA-RU6euIWUXq78GWKPmrLUBxlVSx-paS', 'BKB-qalAWnaMxg34QEEYsevDQKCSPMDZbmDzBZLI9JNWfjPVnUxufdfVJH4meKfmrEuZ5sAl_WVP2mv4AImexUk', 'r3_2xYb1H1ZMlsrJxnmHxQ', NULL, '2024-05-14 06:36:10', '2024-05-14 06:36:10'),
(233, 235, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cN-ajBJs2Jw:APA91bEIem9h0y8BF4GG9yDtNHS3fjXuK6MIywJS_GpPkM9KT042OeqgCwg2xp3N4Tev5ciXwgj5NRF-vbnJfoi9TsQmQMlfndCO_0r2s7wAHJPfe255OvrzsvhcpRXZQ65PTxZbt519', 'BLFJISEhnLVo0cTsueFHx43qepqkhFy1K7qGI9Uh9lbmbnfwMGTJZLW9OwhWfPSaDW0qoejoTd-9SXN7Wy5D1us', 'GAxT_9nDHs8L13CCV08l3A', NULL, '2024-05-14 06:37:16', '2024-05-14 06:37:16'),
(234, 236, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cl9h4Xe6syA:APA91bEv0k_7i3l0jBjxsa9gOXpn2YIuwYfS5TyZdfmkIccfejm5G9o_Q3r0eKBqGDPik8z_LM2lUkV3oKVwIiXU7L8s_fSdmgYMgtE8AgyszEEGIY9JlcNo4NMfqb9f5E6I3griJ7__', 'BDJyHnaqfg-guA2r_bfgQGWNQDB7WBibt0gOSGAwXRZGYOliYeNMTqkSAW_jyAOtTz5CEdt0R0HW9-d3gFEGxSQ', 'SW9BHdjupr7MUpVxL9tjCg', NULL, '2024-05-14 07:05:13', '2024-05-14 07:05:13'),
(235, 237, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fV12-wCxEvU:APA91bGRtud5zboJXempn7-id7ukr4RnXl3lhIK41gunZTZciK8gFdeuidGEi3n1_FL8Kpc0lvrI9lXW1v_3KwtKf44gm4X0JxzSr0dJ6oN2vICduMk4VtaEM3crFtDB_ZJaYlmA9OmO', 'BGPLgFK8kW1cHYIdp5NADJL1L8A3qRn1uUJ4C-OZ7zNiREuw5RYWQw0Y53vGQRSFz5KEAihHvFnv22EFYYAOVwU', 'CsYr6qONw6sH7TNubAlIHA', NULL, '2024-05-14 07:05:37', '2024-05-14 07:05:37'),
(236, 238, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/edULBSw8pRc:APA91bECqcgucG5hw1L9nD7aH2PANy9IcFgMEqcmYzdrlenXBEctVIu0bCTrK8e6y2DoEihRuUcV2VOJTFKQPQ96mGAOFEzDTbtAcoSy7FZK2DHbNf-rp7AUYkeYKntE1EdVJ8OnULgQ', 'BJwsvhOdd1Ko6d7Qf5LrT_Sf5M2BjhIwgrvbB-OjNBlNpX11hr_qYLzjECj93YezTSE0FKDOnuVVe7x4oMnpv7U', 'lkWRhrzxkxdq8wE-cnwJRQ', NULL, '2024-05-17 04:49:44', '2024-05-17 04:49:44'),
(237, 239, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eQ0Pm3GXNtA:APA91bHgt7K-9RO1XOwaS5mKOLL1LHctLf1qXJwnQq3wACi0WF-lhmxHPyf2Pg6IBfDpeLL4jtW-1ge6hK-W80TBkrbKsMzhhQHjy2dmS7otPY2qTnIlyPk9CE7sUTZy20tsM20G7o9i', 'BPUadAp-AG_VyMBjKQllIaRh3H-2LC0ma6SycFIjaMxWDjZMgRNNhlmdQ2B51Y3H-HqIxEQgd5uAJUmDU-f_gJA', 'XdNAQPwJjhlnvtubJ-eOfw', NULL, '2024-05-17 06:27:07', '2024-05-17 06:27:07'),
(238, 240, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eTXcrkIXSRk:APA91bGYc1L3a6AzJo15HKtpp9BebzAxkOlkfv6WLAo2fCm16gBcs6_e-XaxujkB52jHOSMZShd9tPw8fxG2g-2HIGALjyBVJi6IulBtPGGi7Z2odKT4KYBU0HpIeo0_819khJHkHD6t', 'BPCct2WybqI7mhDSE8nshdc5GTu4E2051Ef8LmPTkeizAjrMNAwHVUgU_-yqBAgUvuRhjH3EErTgfgCL-xqno_A', 'VtSPPR3ChwfFy6Ao01no5w', NULL, '2024-05-17 17:53:11', '2024-05-17 17:53:11'),
(239, 241, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/do8Mc0fQyHs:APA91bHh8tBASgHgHvQBLR29qJiWSxJ5fq0blk1UsxDUm6tPCQMaOd-mLbshOGujbyx62DGvvi-lFOEQGSkyMXO3BKY1YLDPiq_6wyVdqbgPIs_bWb9_1NZfUYIqKB33CFHYJSNKuBhy', 'BNGH3wjSlxpmbM78NlrIJBa6EBSSx2Rhdu2tJ4cGmHXmdbTojVGccm7iIOhZgaJpIgXfykmmqtA8BYh08MvhBM4', 'tQkubPKlRsRb63hlMByUdQ', NULL, '2024-05-18 13:05:12', '2024-05-18 13:05:12'),
(240, 242, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/djwD96rz9cY:APA91bEvi-yX3LidXZqm06sfINkqAmYLMX00-wcEM2Oxvy8pSctpXO9EgczBEgzaS0gpO_gYjVpkFel7j8FC-07snYDebIar1Y6bWbtXTSoK6cB-b6_vdstb5HUcU9gl7WBIa_JASOWn', 'BIXiC620Ffs1_M0Pj_uRh6DNl5GqTzT25INH0FnSyRnjDSNRpbn4CZBob9yOKsmhyi7cZzJKVhPtpOiI-MJ_Yhg', 'ZLainOnD_IKfoVlWfW8OLA', NULL, '2024-05-19 05:23:19', '2024-05-19 05:23:19'),
(241, 243, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dnhkhsYrzbY:APA91bHSC7_XvqpY2rN5qZVycaPOSPUGdwu94YQHJO45zuWW_YYKMdqtspmLlEQJCXDVdDGtSOuSvZOpmJbfifYQSXPMWcs8a_QlKDt9DR_aVxoj2NzOQ4XE5MgsqcVa77YiIe6hdRnI', 'BO-dxqHDMcLBxuYKcInaG2XgHlMnBiRa9eg3c1KDZkNRUxjQqwJZ9SWw9CV5jTw12_OSW6nBkkbgjW7Kd9hC4_0', 'UPKEkJSUUgbE7T0txj51qA', NULL, '2024-05-19 05:24:06', '2024-05-19 05:24:06'),
(242, 244, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dzZm3anvM-w:APA91bHPCgnv7irwdM4Tq66dD1m1V-4mUCRLOpWXAa0zrtNRawewwwK_ER5n353LpbUfHdYt9byTOLqkaD7t7InztbPNAlHlrF5MB6_bJ0_6nHK0rOUTo1NNrvftBVM75Fx6uSJDUuij', 'BFw0biiqD2NZaLPERKUIceyln40L5eoy2XWFFxF5mYDkmXGbIrt0pM-qndtHBwzLBLYPCcRIIjpoDmCaepoxkyo', 'L7bZ4aTa45Z8kqFzK8-0Lg', NULL, '2024-05-19 05:32:24', '2024-05-19 05:32:24'),
(243, 245, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/f0GSEt_IRBM:APA91bFVJf74cxHAZB_-npb-fo1loHU2AN9rvDQB0UhkSzxSaTnPXng9B1VvTWmPw1Jyc0dqdzmW4oBVXnC12umrikXq6ur-MxlK25UJGKWQaRXikA7eLW2ZzBeVRJPXGJlqCGNa9OI6', 'BP-pwxIu3gPaXLunarvS-2Ac-q28zOMCX4lt6-dylgKw6SIEkLzkgIYSJiL2TAVHu-70ZJSLz4ZfRSMgL5WCzw0', 'rhqrgFUwB2Z_-Z-xrDZP0g', NULL, '2024-05-19 19:22:31', '2024-05-19 19:22:31'),
(244, 246, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fcyzfrJtt7I:APA91bFvqJppndWJS-rW3wDGro75BQRg_4GXcLyxpAk0STmz3XlTeZyh_zd2JVc73yHE1ef456TdX_6M0uT-9Ip2HZchIh5LeFpY8LtoEXTH8kf4vSoygRmsdKg4FTDqVDj_oYvojdXn', 'BMLW06nhJHQU_aJyyrE_gsDU2ilMVAHI0Z0uDHw3ASTNjDo6L2NCZN9HPQue6NBv58F5_H0glsB08jxQnhzVKzQ', 'ApsoS8O1VHQcLm4ROit0Zw', NULL, '2024-05-21 00:35:10', '2024-05-21 00:35:10'),
(245, 247, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dVWQ_geRUPA:APA91bE6r-n1OY_6MlQLFgDhS_gHHO4YhgWfERoJIYVDDRwaNYp46KaijWbN898kTYpM2fV0g35t9cIAOXNeJsXd71ifS9QQUCSQm_lAVVUSEw5QCV1Fs4yqENkI5Oj1mwJnEVU5I1-f', 'BKHjroHmGxmS4phNRP_oGYicSqr2pZ1wGimtGPlomVEJKaIAgeZ8ZsiZPhI4pL__8veJWDgIydqIbtN8esYFrBQ', 'QH9YGr0e3ayFk4XlZRSdsw', NULL, '2024-05-21 21:19:57', '2024-05-21 21:19:57'),
(246, 248, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cfi5FR4sd0E:APA91bEw3JUgGZgBqF9i28Tr-xj9CXwoKpnetISP8GBt6NQ4PpXjLR9lWlcmTiHbAEtpOHz6byUTc9-FUf1KCsxkYKEGA8qQjTnsZwbz1aBl3GL9io5vLBdVrhpnLCrWuAs8WfzfB3Ek', 'BBrHM1goiAiFaJWmQ62sWA1gS1yAuXoOwyz8tB1u9bPcXKW-1qdO881q-mgg2eg7xPIYa0yU_KuGkRoI3dHj5Mc', 'dmXADYPJiM9C0flX_fnhVA', NULL, '2024-05-22 21:15:59', '2024-05-22 21:15:59'),
(247, 249, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/e8xJ8hnIZ88:APA91bEKVbZW0I-FXuhGwwCZ0pOxzXaqUjDC2zzEzd7ai_Z6DCzez2MTT_dm3T64HejakyZTQnm9bkzgE-RS76c8Ypym_BZ0akxdo1FffsdG-RvEYsWia1E128xQs1zF0fHqng61BcMA', 'BNM7shEUsGohRpDE5nx5iUo5ECR5gdzZbQF1innavUruBLGXoTAw0ONC7p1fh_pxV7AMyq7beBJyBlBaIj7PeI0', 'VQZLaNUPKL-JcSj9dr3zug', NULL, '2024-05-23 01:27:14', '2024-05-23 01:27:14'),
(248, 250, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cYxXv-ZEi5k:APA91bHKyDd6AkZOFLlJBHrfW0Fn0QesYQX3KnFdrVvDoDPvYw8KkmWzcAYcS8FVCx6uDuhSEVLW5kYaH1GDtaclllvw_UzchYQNvW_dvnbkDllO3SMHYThT6aigzIqE82gX3Wf5fHLN', 'BFN3gjbBQZWNKKVRqm10DUO0oOjQFneoSWEmsy3RobQJJ7knopd-3V0PXwwcmN3F5z5LEEmrplDQt1NMR3Nx9vY', 'ogbaybRfMPzIXWOrA-61eA', NULL, '2024-05-24 03:10:51', '2024-05-24 03:10:51'),
(249, 251, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ewHU4Y5xUo0:APA91bGLpYuBybkW9NOfabH85gd4OahBqkt_eUuZNo3bXgidQJlVcexBcTJ4ok6aBCNQBPk54Y11JfC8IT6apfasWg7jG5QD8L40L2NpVd7vKpoXAXNJe3gyIkv462cT5IeWfUfr4PZz', 'BPpw6_BcauJxNACwOTyLmTyGK8hHSvzOzQH47mTaxe0uvPA-Fm2ShkNvU8Q-lPkGwPuuz3EdUyEiYqsymspD40A', 'PJfwwk68E3JU8npQrsV8Hg', NULL, '2024-05-24 15:44:15', '2024-05-24 15:44:15'),
(250, 252, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fg3ppXDMPfQ:APA91bHSpTu_3b4aCtUjLYH-RuCovS1I7sz4ZRGBT9tH6M-BFqQUARhHlD_yMEc1Fbk3YvLJamjsvkG6QetmXASvH4rh5qceantfjkRAsseoXIlL-imfLnmW8L4x4BRA68hJMLAB46kv', 'BNlWEzgH5Lt2OCNfDe_-b82fu-0EdNhviiKhcaEu6cJg5xOuJLS50EpxyxicaIqSDtcXx6we3o0s6nkENgu4kMY', '6Dz1zWeqACfy6kOGrCljqw', NULL, '2024-05-25 07:28:55', '2024-05-25 07:28:55'),
(251, 253, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eXc0wCTcq24:APA91bE4oKCUW6-VW-E8Pj0sjXZucuumUjQKJa6ns9O-4dXDT-m6zzRkL_fUHnjefOvIctpzwO90wavZazr_Ps8CPjgreInhmxbpRgkPjF4xtPJIH1pub4CGaU4GUYjmeLe-KOVZIHKz', 'BIVHSAY0NeUd7wIlCOXv3h-AtmKaejXNaulrA0za5huZxsEyVRTmWQIdjNQGRdn4ms-wSqK1Ex0bCDt4bkrNgjU', '-Mi5L0pPTcotDYEJoI1EjQ', NULL, '2024-05-25 17:27:53', '2024-05-25 17:27:53'),
(252, 254, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fc6yc37DeMo:APA91bHGMgryioSGOpHgxP2P5q34Qr3_tKA5FMfnv-gE6Tuq_bO11t4T0X_otnMWzwISAeGCXau9UhNa_GMDGLMvCRkaB2uFI30-7ch3Dud7EaRPp1k1PjDHb_Jd-flUXFsMuENd3HJf', 'BOrKpYuJl2ynQB_pMzuB68JQoNzBb-mF9j0naKUk90LjHEDfmwJakdHCoEDQuTDM-XrUeRVnKsmL7wYCS9qveUk', '-Odeqx1X61HMF_UHvd0hyA', NULL, '2024-05-26 05:45:48', '2024-05-26 05:45:48'),
(253, 255, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d1HOCY7THZg:APA91bF0BfESQiWiPi32wC321nPlHZcX_xNz7gQiK9fct0hSp_BsODed-JMN0UeUMOs9izHJr5QcTRDDZj1KC331fq8u1m345H_EAK_cWYLa0ZHSiDeEFvaTh5mXWOdXkwLEe0Ee8qWV', 'BC6vKovXJvuWSZiDVIXSNTEONrUfgQ7o_yZkPjalqgHvt7pwZQ6DQlhzKICnUi4WgzhcY3Rklhs8ELxlzYQ672k', 'U02Wz6F4WM3OkMKoDSGp7A', NULL, '2024-05-26 21:45:26', '2024-05-26 21:45:26'),
(254, 256, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dvvMXIlbSSY:APA91bH17ICSibsubMo2182j4lWGNtfVnbmn3cTyDs1tdWxEsr9a4zCxehDXdr5lrGozrXUej0c_2DDAkssaTIKQdg-6CjykrMQw3m52Jk5TGvMabqlZGX6bf0NANLugZyBXk_rgFybK', 'BFTWDhohJxwwkF6SmLa_niUzPq_OuTpOaB7wm2wjAqjt0KNxxBrCK9kXM6bJixeloSIU5-hSj4U1rydRDhwdRgg', 'RImlDS-vw22MN8IjxkJBeA', NULL, '2024-05-27 18:26:18', '2024-05-27 18:26:18'),
(255, 257, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cov1M8zFTDo:APA91bFyKSwp498K4GKn99ErZRNipkr09nE0YwDlzbR7KWUBNXriBMHUH4iXtK7jw05r3MFwzmpEeSpKTCMpRPGBtJWk4N7yzPVCCUsiQwll5SB4aE9Tq7p_dmpu7389mNtiSIh3MTkj', 'BEe2D7GA8NySrS_4l1nO4plUToN9nNGk9HY7jk_-AIPqsdFoJ7UNUtLAStLkeo54A_SncTPHVbib0lpBy-HCijg', 'iNJBkEFXqwD16HCQ8uv64Q', NULL, '2024-05-27 18:29:29', '2024-05-27 18:29:29');
INSERT INTO `push_subscriptions` (`id`, `subscribable_id`, `subscribable_type`, `endpoint`, `public_key`, `auth_token`, `content_encoding`, `created_at`, `updated_at`) VALUES
(256, 258, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/codQs3I9zAk:APA91bG0_FQH_Qq3SeeWil5vX83_TolumASLeblcDoWpUTNhWl3XYblkptKlzMuZX_OgoEd6NTkXg_vvOD_qWZXfFos8NBzJ4z8NkmYlLKUse2_9NheOafo7KhPUaN7mt0eDbTIqz8vV', 'BA-IBGwaKAeMsOppfvkWy0-SF4dn6iqv8lbbbOIvfg3X8dAlBOMN7m09KdT_tihfUUU2CoXy-p7vIJc2efnYvmY', 'hNmMBkgcrZ9jMIzyiPNkBQ', NULL, '2024-05-27 21:02:01', '2024-05-27 21:02:01'),
(257, 259, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cyH-6sf29YU:APA91bEOohSxyoeaFOIo13EvidxSbYaE-AdQV0d8L8fjHuHe7bPdTE2BvwVqTpoENjNuYnBVtxfoW2DUBZMIfMwy2VHq2WzuMiS7TDDpXOXcT2QL0Ub5gykzjLEuuYetwgEtkIbJR7tx', 'BHu028t4nBIBbo7nutgCyrG5UbFaUnHq70uhS8dLE2RVxmAUJ3JG8JRxXj-Y-xhRzMQmp5ru8IYy_4a3oKVerrg', 'ak0g95pA8Lgmms74RpIrQA', NULL, '2024-05-28 06:08:53', '2024-05-28 06:08:53'),
(258, 260, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dgpAfCt1U64:APA91bE0xLIDlfyyHAxaHDHLK1MaER8Mu1TI6qwuZu-aFvYWuoC5sgU0GlTGARCK8bsaROeHbqI1u68lMOFo8cWlP2Psv3hLu43UkWrK1BdkgT8rk7mm9Qh2oq09HPhn5Pj_nFEArDof', 'BMBGIDFt6qFoaZmOcxXke3gtfP5VkrNZFDZNmc1OwMiP2TEd9N6UWVgkCb4nOUttnXtRtc0R0zylgSF54o3SqEc', '4OxMTss7V2Bg6vi6l3O0hA', NULL, '2024-05-31 19:01:04', '2024-05-31 19:01:04'),
(259, 261, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eCUDRlmGwxo:APA91bFHZ_QGvhMeUpvyqN_ODG7rVLvgqyhkIaCGptcCfJbKUvHmUYdZw5xVKo-g1b0wbVrA3JK1apMehD87EME_Fgky3EjCDVP1ivChmhsQ8OLrmnhgUsasqYhNgss9A_vq6eRnu0f7', 'BJNM_mAknbD62L92QP8XEv96C2p6dFGVsc72lM-NpN4PcLiIRgXIf1XimIQQIOPSmTw5H4wLmK-jf-wP9iTkV9o', 'n5Q-Cb-IC_XnkxTzVC0ARA', NULL, '2024-06-02 16:49:56', '2024-06-02 16:49:56'),
(260, 262, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cnMKsdyhY2w:APA91bEWLU1KLpO0Y7OlTvblR1Ptb6w1W64KNTU94GMtWsqmWDCgZG_KgkUGbQrBW2mOsq4VhlNjXtnzuQ8QbFzWybEspPBcPoAdqIkd1b1xAO95stEcGj2sEiETxVYhj44QaE45vHyW', 'BPvnAT5KyrFLeS-qwMeVr3GsKYCI0y0o4TF1m1y7gdZjCnDSR6QJuktxoCO9qn5PTciBopgCLctcC-Uo0p6RRSE', 'AF1uwpmB9Dnc10xvaqZzkg', NULL, '2024-06-02 19:25:28', '2024-06-02 19:25:28'),
(261, 263, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dBym-H4l-BI:APA91bFJy3f7pIiST35GycBHysztYZiem6eKkA-xgcYnJTXiCH3bYGynmgkhXt2vQj85Kq-4Nn0b6IK_o4G5qNx_m39Hiwgzxjrn-pvPsDEQLdHvDs5AOu_UyCxOYZR7n7qQ1kEySZar', 'BHQZINsfoEbDaTMtAnr6R7jy7JEU9qijvTCSBC879S9U-p5E3TyoHceyd2PBf2fXxU2NttVNFs0PQFcy0ii6QUI', 'BR_igZsV7LERF_nmWIihqg', NULL, '2024-06-02 19:34:47', '2024-06-02 19:34:47'),
(262, 264, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/e6NkqBYcwao:APA91bGbAiUMTSxD-ARrAQ5JhUBChvoZcoICzW8IXxB05m4XWbH5p4Lv6xqrQCUNq_mJVY5NkpInjJ7nSbcuBR3rPKQcDxRZfZ6cpTg_tB3QinwxF-7pLARornthsN17J0a9jnGL5FWR', 'BPIXFdriyMseG5z4kChekNSSyorIxX-crqzSPfpdoFHHmvp2JNQsSAU2VqP7HFBXJSEyHX1q1l7HXLdlwzRR3m4', '3L-Te2TXq8sQ_IWE9J3SKQ', NULL, '2024-06-02 21:36:10', '2024-06-02 21:36:10'),
(263, 265, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/do1WymovPno:APA91bF9vC4vkpeHpDBXV3xVVzDJ7sTQ7Ibp4p8CkYFTbNFgIkbt7q7iyrLd47hW_OMBjY_2pn3uVvfsFh3UhAS87lS_OmOrvUEAMTtyTQHNxI0sgtXEk9a9aYqTfeTRutYjasDydAmU', 'BFSTwGktKS5JoFwEyRugiv0B03FbEgaKVrQfypAhdJBxniiY9gAVmrd8peWnUkH4o8fwsPf5PJBX5ow4eMz46u0', 'eh61sgNeFKIkh_hlK0YQeQ', NULL, '2024-06-04 00:53:30', '2024-06-04 00:53:30'),
(264, 266, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eE2-57COzgs:APA91bGL1WKcaQVHKu4WLshCAsHAAldkKqk3XYHXdku1uhuuXR0imgYPkwovd6uUXE5pd8n17k0tgnhxKE1Kg5JO8az8OOBkSsOIfRM3pO75MGqcY0_aaJliVHXmTBVTajwVZBROwFNT', 'BNRxgyIrnHbdMUFOqgpd39_ZbkZmJhtZD2Pt_iTd_nKoANczeM0VoKG8wO4XAXNAJ1w5bZGVKG9Bq50RT27UxDQ', '5RoHbOZOBU8VpZVJEVvBhA', NULL, '2024-06-05 19:53:35', '2024-06-05 19:53:35'),
(265, 267, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/e3HOUI7d_m0:APA91bHi_VXP_3Mt1AouRTyraZXbjTNwa6mCZqO6S1aKwDje2TyPcV4RmQRURobN08HcMZSe8td4qhCkFvWDBXtEStdsirTtP0z0uCqHU2NODwigm51RhHhA06XO7lULHP5p5ssrn5wK', 'BD28_SAFfDEa3RaTM59b52qTJqIBbCH0mB1y6GhcZGBCxK0LQmtJcbeNFO1jcKx03a5ldvrtwlXfr3RXa-zugU8', '18Z4n_ZKGwHC4FFG_y8klQ', NULL, '2024-06-07 02:19:02', '2024-06-07 02:19:02'),
(266, 268, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c8D0zRmVVJk:APA91bFMLuQZOr0TiaC1qtnZc4rDactwiYJbfiyr9T9bKcVasF4mQN3YJTVQGdvaK9e9C7JYR0ZNfIa4tVuIobC_yno1qxbqwjPln1IJCI_P53cQHBVjSleJcJngVRejN5aJe_sdVA4v', 'BCWCx4ZCR4ltIazmV_cWFQJlIAXV8hF0Tc5RN_P5uV3Y8sgMPjKxTFJjs7-LKYUcQ7MP9709CJF5cxprLmjDbfI', 'ZmA6I66ywR-2XlJRi1lNFg', NULL, '2024-06-07 20:19:01', '2024-06-07 20:19:01'),
(267, 269, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/edSqZvXyZrQ:APA91bFt1wbw95smJqExzTm1ifaH-50ffEoSW1LWJDnbpvdqukfRWoIDPmE-PEWamRPceHDSkiuR_ViaybQUychJE308GBVT2ljhOF3iY19oUOTce7aaFI6ylUZlrVYhEmDt29cMnZRd', 'BAiAYd9sod15cUF-F5RPr1Dy07w1CjLqxKa1Z8IKLPN_-DhZQmdSmoxIwhDOr4dDu2SiogJ8pK52OaWV-JUP8qc', 'QjzK-rnQ7rG_b6Tm7TjsIA', NULL, '2024-06-09 20:50:40', '2024-06-09 20:50:40'),
(268, 270, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cC_g673KwVI:APA91bF-3MQEDrxZT4-YaMz8nuUiUsR0084Jev3Zu0Kt8f09r25a6PHFeINthTaRyN6ulij7FHjbysRxJt9E37F9XG0MXA1imKq9cVcBpdfdYy-2by0syZMDF1_a4XzhAtJjheOGzmqw', 'BNyHSgfu1qU5oBsUgB6BxCf096KXBHkMZZzSgtfUZIPi20yNrmZ3N8MdEpoQ01P7NpIVmmZrAFOKerb_cj4A8_E', '2iEMFzRbdUvAnYDSaok4XA', NULL, '2024-06-11 19:56:47', '2024-06-11 19:56:47'),
(269, 271, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c0uTOzg1oDc:APA91bE42xTxYDdWlqokSliKOCnKaIT2WAdmp8DTMEhat4xOU6l2HUy3Vte5qAgRtrqrEy2Xc_d7v4tntn1QJgrbuskq4rJE9o3PcV80qmQvPEDPQm9fALyokvDEMjx-akw7jyVZI3bm', 'BNt1eVR2KttM1DfPoDRkMv0nVBlQM6BYdltb0XyJjEfPCNfLzQMTT6r419dqHMe9THagQsqPEEpc9h4IHoV282o', 'mdlsIrJj0kHQg1trUIw75Q', NULL, '2024-06-12 21:01:07', '2024-06-12 21:01:07'),
(270, 272, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c799qCB12Cw:APA91bEl89QHTtmHUp7JxCFszRUBRcC75kApIkkdrLiKMZRGhqSDS-krbrfqukRvjbZCjkBZDXakgZoYlcDkqsEAIeImJdijECuKfUW6JiaibNa7zxYpDP4OmbGqCpnLKe7E-J8GkSQK', 'BB0Tpd0-3UbMsz6M7A90vKDyTVe2SCnwl9jYC8r9bwf5TPsY5s5YldNGMnglQgMX69FapC3hBmgkv996Z_W0L7E', 'o1wsk9jZwCv7ka9vv0Am6Q', NULL, '2024-06-13 00:54:17', '2024-06-13 00:54:17'),
(271, 273, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eUyK1NSI-UQ:APA91bFV_Fw4tcSSIJa-FFrpGgObAvSs1pQpcY5sSE5UomsOQwNlMP4_GxxrwjbcGnQOd38tB1IlIZqFW8jjqq-YXekXNnZgitA0WHIcig59HQ2qqE7BpYokI0-KYK2PmRHHyGdIQuvA', 'BFZbBwN56NzfPI2CyunQbvhVBePyXHW00clyWZBjHMY2YGe5A4AjF4sHx5fWhKnqFjM4uVcn0YEHMoVM_tiXyaE', 'IABOHkgL95ipSAVVgrfmxA', NULL, '2024-06-13 05:37:31', '2024-06-13 05:37:31'),
(272, 274, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cJAOIXBCy0Y:APA91bGQluP_wBq9mSiXM4uFmlPgrK2beqUQu-XZw82hpI0NLheu6nonOdzNccOoN1OrV_OLYSflEcuFWXM-DcTKesknpgdIzakHTjH9U9YtZt4fR5Uwq1lfqM7HrLXvJoIVtMqxPszI', 'BMwRYwUh-GOOuQyyiev8gJiijv7tzLqHObtV8uPUi8yCPfT6NZli2rQ5L7k-q-3Zz24k0YMM_nLe52khAfIt6mA', 'yO42vbQfxmHvLpeGl755EQ', NULL, '2024-06-13 18:10:28', '2024-06-13 18:10:28'),
(273, 275, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cfUyw0ug_9s:APA91bFzgip294dbgkkIYZWU2rYudgYUF2uQx15tOJ-5OLql3Snt97jqXqRJeDZoYo1iuoyKcJ79lN-x8x8BkR6i94ObFrOA4BPuAIKeMd1Bzr20m9kDr9giz1Zi_BsZif-0ho65XklQ', 'BGK3kflgkvZztm29mHIzVmdWBHWGuTxoyFVJHzh08bUN42iutr29AVwZeGnPr3U38vm00RA8BZ899_mcE1RyAMs', 'sEKVqNOOrvGLxGui3POglA', NULL, '2024-06-14 22:24:18', '2024-06-14 22:24:18'),
(274, 276, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eT3LlIOFGi8:APA91bHc7bP2nnuU4b5fJoGipFzyOlS_yPqkAhUNRsEpzmB-qjTm6kopmxP-yUzq93XT81aOEMFuw7MqZJvm7E2H5uNGHWYOKqK4N7Y_5C_1sIbWe02-gHE0LcnCd7mwzCJCnGQMke59', 'BM7-YM4haLPs5WlAYb7DifmhEkdRQYsbhct2qJBKZ4idb8xI6pOAlsi-HXW39NE2Tjs7b1oi-IB-N31BrgGenmA', '6p25NOUAXI1viq5PjTTE8A', NULL, '2024-06-14 23:18:59', '2024-06-14 23:18:59'),
(275, 277, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ev5f36vexCg:APA91bGgTx2vUqVc_Ye7CuTtDbKKAlAZXCzT2_bm7H_r1k3BQW8D4GEzqk5Rf7xhinX_1LXRegqZy7MUgoYwkoXQlnyarlYloOZIY0wzQsVA49U6v8X87MTLp0svj6AcghLWvzV-_FUd', 'BLTWdNBceo7ZqpsNa86k1OvF8Vd5lm9rA8HwdtDgIS-ZNdWy0Is57t5UeOpnz0W3J_R6g5UIvNib_kPtP5ILXdM', 'co7xrOaJQfT3OYe6vMBENA', NULL, '2024-06-15 05:37:40', '2024-06-15 05:37:40'),
(276, 278, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fX8NX0ARdWU:APA91bG79xmDKK4pmr3ztsX5gTp7wfwGAX0R_AqgoDHU9ipSaCM48kq0TYLMO2tD3EwZEbY-JVdeDE1yYESiCLdnAB-_ThvDDboICa-NWANO-qaMwny7kRovgpopuu85NwaCJwQBHk5t', 'BEjSmWR-0DTL2j9d9u6pv5UGI-jI-xjrcjGDNWgxymKpkZux7XCz4c5ZpQoPGky34q8xOX-841U3Z85wKNWr2hU', '1YOyHu51CGVXTQJuWyDZbQ', NULL, '2024-06-15 05:38:06', '2024-06-15 05:38:06'),
(277, 279, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/da0iojDB5Zk:APA91bEwOBgib2014hNPQ49abzGSDk1iOAy0UWyhag80cbK-tRsjWRzFMrYBQ3-mHOWI84x4tWu4U69UBAfE93P_SqzBVKg0h5QIFTIFxR2kXlE_lZMy_XXJTS1QFwc2noTLcCUFJgx3', 'BK3YQFicaAPHzk3sbm37cEcbtR2UEM3aQmUo4M6ccRVJaEUKeYYGrGjVktxOigOGu5bB_EfLGhl6sSwVQSNRXwE', 'kBAa62OI-UDsFKeCIYqnxQ', NULL, '2024-06-15 21:24:54', '2024-06-15 21:24:54'),
(278, 280, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cEngCMOTIgg:APA91bFOu_2AWNV4MBgzu86uhEpwyc01aiTBenEIzJcKU51v61S5PbDHGqnYsOXtRggP-BZpbHtQtGuSLWKR0y23STgBU9dYwbGKlq2ec72_L_6UIwXHDvcoRBobduV8EJM4LMSjvJ2b', 'BF5rLRBJAyJna9BnY-Ofn4jPtfEirCjcqJ5M6LLTXMmVPF44E6p2uwzSz5mJEjbme7a6k1HpXBzH4xcheAdu04Y', '-MGRfdmN9jOWRYtERDMEUw', NULL, '2024-06-15 22:39:56', '2024-06-15 22:39:56'),
(279, 281, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cFKsFEIWM8M:APA91bEiRxqzhPtqVqKiwiKF4WKtquIIgSijr0CKZNrPlgYBdZl2xUVORSdkjRUNPM062kBCc_TMTWcSlALGGUl5WwQzjdC65_jETa7a8HRcPhSVY2tcnfFte9IFOjD856RerTCYkhgS', 'BPL9yiwQZv-yCqmRP9D_SvzPrje-gZFi3rbQtdr1ZTSsH3cXGdb5SuFuECe920moZMQA0fVfl5_Ry0VxD-2hNBA', 'po73HLBu8TnxwVss3FCQjw', NULL, '2024-06-16 05:54:40', '2024-06-16 05:54:40'),
(280, 282, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cqZRUSv3imE:APA91bHqyZEe3oAB3symuGaeVuiZTnZUy33jD5czmgrV-uJIsiDi5yleY_u4hufJWMrACRT9Rij9XSkvLsHAqPldN8deCCpvg2-EdEZc0ITUJle31gX07bE0xDrmK-kK-7M_JGCCLeF-', 'BHjVNWu1uikTgzxSPMjS5qA3tw3cUNtSOiDjDKQurNSCnyCATAguaKK7Fi0wacgo1fb7LcDUVI4-MfugDzmZ11I', 'qGk6E4zLl9YaIucHj5tdeA', NULL, '2024-06-16 18:01:12', '2024-06-16 18:01:12'),
(281, 283, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fAQjAnqPnms:APA91bHjJzzWzB2tWBRSZp_JM6FZAMCTPuW8YKfYL2fh6V0hWMU6PBflYNFapZVreZSLRBDkrtd2yiIj8ZT0rRDhwB4eCGX3YulfLsRjXFHKkUp3zSNvuIVe7yCRq8pC4IZ9MVqngwlh', 'BDFjkjAZb4qY0wICa_CoA56Q9Bz89zrREGiJzzg5zmvRJSs8-PlJxtOTpEBcdJ4llyNyb4-UX6WqvfbpWuhKicw', '3cPAYtx-xwVfFyFGbaJtGQ', NULL, '2024-06-16 22:57:59', '2024-06-16 22:57:59'),
(282, 284, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cHwk6J2npbc:APA91bGTLzDTAyBEuJF5aqaEsvkLnYYcc0G1c5fIJsfQ4cCLx0EUL8e1Mz09Tyx8Ljht-Rci5qwKweGWtsZokks-_LyZ3ttIBUkchX0TmcNveuWiihDgIqNZRIpsSjf6Ubj2qQavL2Xs', 'BIcOBsu17orNtn7UOImVugCD0cYunJINE09uq9tZJ_0VZHe1OJNDzPgu_xJqOufv0NuG-9-a7zxQtMC46MGlM1w', '7QeD1KDCJaDzcuuWuub3Jg', NULL, '2024-06-16 22:58:45', '2024-06-16 22:58:45'),
(283, 285, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c24n-NIFjeY:APA91bFkDtEqV80p_FahG9iF0n3UuIwRwqJ5ep3szeYYxzL6BHdpLfrnIWAtxGBkfl7-8FEZbkeAQOjCIIMWkTNzICucqqd89GmhCV6vj90LIWQio7USEF-6AA63ARRuLqh5m3xWIEWD', 'BElPFS_ftAkbQAmX0NDex_1rmurVYZlMhx4q70AXUIesyio4EClKoSy_1BY9Xdx4_QQGkpz4W4xstdoxZ4OeTFY', 'cogHvGlfwUt_lPA88jVr5g', NULL, '2024-06-17 14:10:11', '2024-06-17 14:10:11'),
(284, 286, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fa1ZVFtSmcQ:APA91bGtHOiSFQN0_CyboLOFigVBijh6sSMkvzzm9RQDJJgGnckBKJWQInzomRJTspcFwsg_YYK2Kk5zGOmnQeGQYtPp3jZANcVcSc8vRr0zR0iNXBgc18DFqKXhBcCZZNXxytN7NN2H', 'BP3ah3hnjHFrUeP2cuakHlUlktiJGMGoPfWCoRK6uUDnoO-PesERqT9U31o3_2c8SRFV8EqlzCHvUOkOdeL_dtM', 'xJIMJJoGCnDclMxZNy40Ew', NULL, '2024-06-17 16:54:51', '2024-06-17 16:54:51'),
(285, 287, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cQHPY_afvzY:APA91bFb7SxkRWaug2xqNdsUYZU1vYHX4_qtdO-ZHzOt9EKMoDN7WasJUQdCZEgMeSeLJ6HG0Q-t33_dXDgiXd8S1PxF9el7daioFmeGMk_yYbYuFRNsWZJKVxtAfOaxbZ1sq5xaD37u', 'BDxizRkRBZ3GElAydoLt7BHNPPLEbLIcpLGq51kWYB5GmViJ9wcpa6Wql6k_VJrZlUSLAytOGc2jx9WvbzqK9fM', '_UwWNIMddc4V1J7La2YEvg', NULL, '2024-06-18 07:53:19', '2024-06-18 07:53:19'),
(286, 288, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eHYmyy0Cnog:APA91bGoh7f7GJQHg6XtDSVgSdhM1Iwe6SXs_B5AkP0a-7H3tMC5a1o6hFdp0e5co2LLWaZN16gp0HVsjd_SpluyxsOTNGQWiOBbFFBIn2rGh1tu0NPDnNOOF6qb8c8v60I0toMfgdt7', 'BGUsTyKqQXz7ZPihNEA2djJwpJbOvuzash3SwJKo258Lq8yUYd3Q5ny9NsCm6_cBNHvUtM3ChpiWI_WuYbLzr4M', 'KJLexdQZy98L7IEG4qG2Ig', NULL, '2024-06-19 20:15:00', '2024-06-19 20:15:00'),
(287, 289, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eKfKFzbI0mg:APA91bGP9vA024RYw3CVIiBBEIKgblFZeMF43FsWQNi-MtXT8pgi2ASG4eVxGEBO7G2K841UV8QbaNe2ag_2B0ey4ChowJTVsR4FcxI-cjTLDToXFPqXXYq3dLI6AbcM9cIpaocJLOm8', 'BL9HRIKbLvisuX2F1vPgrocjxHPhDg6Shv5crcdcc1t_JOrRlWHus6m6lg_9GhruqXDStmKW7Eo7myT_fIiTiK8', 'X45V3tdO2hPi-ym93Jz0sA', NULL, '2024-06-19 22:23:08', '2024-06-19 22:23:08'),
(288, 290, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cXOv-efwWO4:APA91bF-vctInMP2epA5xavjxtJ2Joy8VAKAeugLU9z8NyaWq8ynm2FGjAq3-q9hDZcyi-qqPJ_nKqk-_HWCnfTX5B4yleIM8KhOwtuXpoimdBBf9cdEnq8ID9OacQJ92Xc0gcp0oeYq', 'BPO8GdFj2lHW77FaUmLarfX1uKkKzPiLzyZoTiSWNYVpu53wbCL_HT_t5M6MuRIP-ZfbxdQZnNbGygFzX15WWmY', 'UEJgFZNnYnG_vtGaLJce1w', NULL, '2024-06-20 06:33:15', '2024-06-20 06:33:15'),
(289, 291, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cZXd332F8Ao:APA91bGJwRieahf_ahxHQIAjMHw44e23kItf-03DPNrUAww2Na8eqsxU_mkWdTXeT3bedgjfwvrecpIEGgISpg5Hp8JJlkyPrvo1FodQZZt9A7UBN8VWFvZt7oTBB5d_dMMCj2HJ9b8P', 'BBQkWf9ookC-7EQOPt8AABVccMABOTrk78vN7NPXT0Rg3bhAtDZ-ozCbdkdebXgC_9OfdPOXeAmnLmfIraNh8Ho', 'BlCXwTPJFv7hkKINU1PXCA', NULL, '2024-06-20 06:34:12', '2024-06-20 06:34:12'),
(290, 292, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ea1jfQjg5d4:APA91bEb6UznDwKoxxED75VUjgC5HPdxOMi_7rlwgLAWgXVcJ6ObGFXhf-0hO2wiDQcfQh84xwcFUgsA8Eht51s_T4sP8VONH8M8rNVa9grTV4iy6QsdVhspU8kp8LLAVh1JK7yrmRPV', 'BPDHGMRP-a3TVh1UnX--p_DOh_NvFSpK4JQ0GrVc7v8ertXImkvgWXsIjJIp9IdR0q50kF1_kLddf7b1NtRV0SY', 'RpmoI1pxQVaYCEL816xCoQ', NULL, '2024-06-20 06:40:32', '2024-06-20 06:40:32'),
(291, 293, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fyyJIbT_Dl4:APA91bHn_swO6-vlOto4Y8_mhmZgZdpLamEYh_T-VH5U19RtTBqU0RwHB7WC6UAqDw6mxkhc7utml3pyjrQVhnYRGQpWwgFW2_uqHHgWr5QzclOY2Gujk9Eh5UhF3NRxYYIKFxR2Jpma', 'BBPnKTrUa_Agt84VW0-oHP0Eo8ZjnMYInlhFvNoV9E0OO_68bJpK_2n52njimYE-240u46o2LDDEu6Pizm69UGM', 'KfTNn-SayAlzqr0bS9K_lg', NULL, '2024-06-20 06:47:55', '2024-06-20 06:47:55'),
(292, 294, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/erZO7WlWP04:APA91bHJMXwuF-roX-hqmvTPIyurQ7uEWyC-r7UgL5CqvURA2iFFswWfb_fZhjpcIZIjxh8cMXxYoN9GsXk7C51XLAgq6sFTflZitDJnNS39LGAwVPYEsgi8Sa8o-_Nv-XTRk6SfI8nc', 'BFyrnpnchevTYrrfA-Q-omwm2AnixFrQlYnNLAG39M1iRvAaEApa-hQ8kDNxAgcK4U5nh2TY0gqXtEC0TzL4uYo', 'WQ8Z1-DkNocHbzPji3y3bA', NULL, '2024-06-20 06:52:04', '2024-06-20 06:52:04'),
(293, 295, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d8ZTDPxiuFU:APA91bEEOB8UFgbOK7QXBSWFMKvdYQkatSleWZyyBcwfCpClzZKFsF85pQJ2biN20v7sBBeHB-xw57B41SzxvHbDI9anv4tN7rfCq8-DCBRXtGOuBohIhwRdoCskX2Zq4cVTrxbHVBL2', 'BFXnq_IEhRUR5boEsP-LH7bAGfnjlcVVmyc7l5zcX6AAmNSDEv_9wRkboXWFBu3pXcqPVTirl8-OhHLeHJYWSs0', 'ZeUqAL5fPURQ8WUaDA_LGA', NULL, '2024-06-20 07:09:28', '2024-06-20 07:09:28'),
(294, 296, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/emEUPCrIpZ4:APA91bFZvsxdibm4oM32Vyc0IkUSqJ6JTs83VL6S_di--LOqcAIbY-u0WhQ_igiNXNmWPrq5FDg9bHeCTlFd7LnQb5Ku5Fi5nRunvfNu6gt38qOWB3TQFuh0HAK4fKYBJ1Phc1KKT1pV', 'BONIH8BVp9wUEGZw9felxTVvVo3Zupp7KviJs754YfSBqn7zQVB2QwY1cxjRUPrLNBo_jsm26XY5143n13TTDGE', 'qX45pAJuJSKdHpLiTugQqw', NULL, '2024-06-20 19:32:41', '2024-06-20 19:32:41'),
(295, 297, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/f2onPGvml0I:APA91bEe0VjKXaBEOO2CtG9Ow6bF_SPdaS_JDiemh15J3dEQ9kK2MhxM51rUQt_9Oo1j6wkZITsrHRCdFbC0yDek0bIAfzmoxIC_2vivHM0-hBuW9scUe6Jvs0Zvnl-nQWMBseHv82SU', 'BNbgKxomXMe2Hywuqf7RvHcP8bsSkg5deXoRYbMoyW9UbLtpAUb4IsbcCcJ6l17q9hk9gtR2UjE0LXxpxO5iEwQ', '8AxTImY2LRykANX7iAloSA', NULL, '2024-06-21 16:22:02', '2024-06-21 16:22:02'),
(296, 298, 'App\\Models\\Guest', 'https://updates.push.services.mozilla.com/wpush/v2/gAAAAABmdZZX6zRVrjp9erG7G_GgYsQaineTRgZAnIWriNnPfJY78HlS6CAHBCNXMkawrOd_6xtRzVIINFhZ36IHs916uLx1Lj2TCUQ5tQXgg4qCo8kpTaj96ovaqmu03APllhi2grhAnzG8DbTcTfZyRJLh19BRfLiFwRZccjwY-UU8v-UN7WU', 'BF495oFre36oAa-o5ODxFajg2w_Rj9ZIugQalB__RFqaqtWBxp9s-1zCg0q0zFLv2ne9IPM_k3YX-Y4zn52dpSw', 'KdarWLpifwGeZ2b3Z9ybKg', NULL, '2024-06-21 17:03:52', '2024-06-21 17:03:52'),
(297, 299, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cZH7PXvMre4:APA91bELnsXXLdfwJpOvaPjbaCTk9jvuLE94iFI_RoAyVbDgJlN6qT7XjPzhwJ-tmABrI3zbOvvzTvr1HiaX8_PBLVdtacm4hEbvx86JvV4mFGBEnKfcN-h9g8dOQjVNhIlc8HcWxhUb', 'BAojKg3BEHQ70pAHhBtlyZ8HbXhO518IKUYBwttg-nuu_wcAx7-HbJdJH418ZG6q2v9uokPUWwVcvNuwVa3Ih1A', 'WCU6MevHFoQEy14SUBdPLA', NULL, '2024-06-22 03:09:10', '2024-06-22 03:09:10'),
(298, 300, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ftDf3duu7Og:APA91bE7xTHxZ-KdnHLNZgVYwOmz7MMyvsL8Z4IyJl3t8v_ascCld4iUqTGLnJorgg0vVTL8Gjcab97fY30SmsbQXkQ5sE1KppNZ_Q2zJLPyyK2JMaPYvQLt6a939YBmjG0PK2pZTxQW', 'BKF0PuJ7MSXHIQG8XWPglA1jIf2KrYOXoJjmxAm45PdfMQv6Nq8pYVJ3xDqVuJ69NGG42_-PvfJKWugwhdZKoyE', '3uu2fgi7g6EudBNTqstAHA', NULL, '2024-06-22 18:33:40', '2024-06-22 18:33:40'),
(299, 301, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cApaqRzBNQw:APA91bFFV5UY9bTcqL7sVO-71hBw0Oh7KRvy1HK7FJHsK-qWyu9_F9uBzIFG9fr8L5Hrp0-DhgpN6tf-2XvnV6X9V2DGcHSeBG23Jto_3wBeI6cn19HNk-7AkHfRDFnbX6LM2DuGf8B0', 'BET6XrweSpvP4Xv8GgcAsHdy5jjjpMUku53SO677PxaTukdv4tZXxSDv9tXtrKMRTKklsH1ncSsrlWEsj0aogrs', 'bS5xalCLvqNa0095EnbVXA', NULL, '2024-06-22 20:38:51', '2024-06-22 20:38:51'),
(300, 302, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eSWHQwUkfPQ:APA91bFxlQaJoVrHEbyXM6SDR-KdVDfgU0u9diQUuWnXPa2fKx_KON5VgsShslsk4vB1Fs0JaDNKwFEMqF5Pks7It-ixnVscA-g-_tNj99yFVIV9us9pis1ftGFVMgNQ1udm7VKjaqI_', 'BG6UoSfPp0iBfg0_q5p4vxcUboRiyToe6TORNOxX0jCGVIft9yX26z_dgrxfS-yw9Trsov0jJv4J-9nLrxdMEh8', 'DXBbl61unIaRcpKjepBGZQ', NULL, '2024-06-22 20:46:05', '2024-06-22 20:46:05'),
(301, 303, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dkwBsEUXJvg:APA91bE8Zy_5ZcyHj7MLw2XH85-ne2K6YK6bEf950L8Pyji2xi5i42Z_sGZqRC11BFbk3_HYPzmmHDkIqFrZLn-5w-ZvbChkGGmSlhmBKFCLeIq66QH3kqI7da_v8O2nzJlzn6cZowTE', 'BOY80_-LFJIywE1VG3P4K8vTDUCH5NJnIKQ3MCwbyKjMa-Hm1KqJ7RG7Za-KuWA3nEOkXODlwSm_iQ1YGFMn3BQ', 'pSOEvkoAPgMjBitxP-0z0Q', NULL, '2024-06-23 14:18:04', '2024-06-23 14:18:04'),
(302, 304, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dAxqqT5mlps:APA91bG7s4_-HRSwBFYUeiWPy06Pg967s8EvZhN9L4SYLkvqlfVU32d12dDpQlU-ELAi03rozwpiQmLMNrvpofJXaz_MmX2B22zs9Znpe-HDZ2mHrsN4G5594cnaIGLHI_cLFpcvntJx', 'BODCJOa9VgC8cYFEvoah9_TE04K4avyfs7UijArF30J_OU9hJOE_OoDrAk6H9vxIGcQnnY5NMjOGiiXtDvK6Vi0', 'yZgpFU3mG78k3ngFR5Er0g', NULL, '2024-06-24 01:03:37', '2024-06-24 01:03:37'),
(303, 305, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dwpR-DXwOh0:APA91bF4RDTBKBfUcaXVmnjDkxVE_pYbYk3ByPyJ3r6cxkpd-f37sA7vtWAuwUDcbbjQM26yA3qjuj6D6Z60b_EAzn5KqUrBIGZnUijjNQmQ9zZ8vIZ9qn2C0MOqpiYEK1EcsqbER-YH', 'BG8vzSnRB1zC93xL98r0sPlfrWP2Li1CPwLW1V32DOC2F24Q9nD_gJSdsukr0HL05CRCDVEXQ01ZOttjrWey1OM', '_jhc96TyRU8288FESZc-mA', NULL, '2024-06-24 01:07:25', '2024-06-24 01:07:25'),
(304, 306, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eKeArdeR9qQ:APA91bEf-yKn-4JV4E9xcSvb7JZ9kCrQqzsc_FQ4cTg5wKf406MfoAZwaDM9W6nrlIPapWZTxtgI9vgSDxKdvrH0v6jTA-r4QM4EArfStxUShjbpO8jT6DTKn3xKWPVz0cPcI9jsJBGX', 'BJFP3Ih_YQJ_L6d4_Z2Ci2TVR3emA4PBL6S1CDBaBYRh_D76cvWaPkZey9UCk-iafy_wfhgY4ygBibtLUag2dX4', 'egf84Zr5-lJAeuKKpPsWJA', NULL, '2024-06-24 19:28:45', '2024-06-24 19:28:45'),
(305, 307, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/e8Mc4naAJGg:APA91bEVWTjJzt6lYEXSoLfYFIG2qtRby_JSr6iDq9T0SwJV3Q-azZpTe1M_mZa8vvFYfxtyDrEzaIV5gCE53SNvEx9PFT-LMZu2951sYKgxmMyqGC0XKkxI7BhNM64NHRflCjH_h-z-', 'BMYVNp_kpKlsthpzitYBmsiVomfzQh3OT_tBtQgUOeM-EHrgjqT24P7UhpnkiMkrWunwM1lQJiqh6fjK0nns5OU', 'purqchhVy-KzQRxnR_NZdg', NULL, '2024-06-28 16:27:05', '2024-06-28 16:27:05'),
(306, 308, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eFz9UzNkNaA:APA91bFw-of-jAga5BLKWgm5nYIeol1qDiwfbfxDmJap4nAW9r5H0QL3lW3COBdMqnfdMBN2KtMNb7XBBiTQHCnqs5uz327IVb9B24ihBRJKiT_7XzOI9xEmTHZ8ydGmJAQ_v87-Yz5Z', 'BKGWDwZY_IZMnBK8Dc9CQGhn2UCWbMWrDUKUoe2K68oYAiMarfDZknKhcBO19lVDHLg6sMb3MuqnPCuIWhdXizw', '2m5WTJpfQrFf4bJynOFCmg', NULL, '2024-06-29 18:54:03', '2024-06-29 18:54:03'),
(307, 309, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cI57NCRKqAM:APA91bF4940_zlDIOQ7wpK_DR3DayGzYH4D9RaZNaPDKimhf70oKtDCmqRFI1g3WvQ-Sn2CYl5J7dqxbKnQyBZceTzeTXz8NJ1OgUavlrVB8XrRwBnub868S-Vcbtq3SfTkUO13uCeij', 'BONzh5hH7t9zgV2sHTSIkm51QKd2eUBD7HbZ7jfk-2bgjkqhFC8I6Ug9tQsY2JwQAI1J6-XgrXjfJhgNxDjkGuM', 'eCvB7YvyRtCVvvrH4-lY1g', NULL, '2024-06-29 21:01:06', '2024-06-29 21:01:06'),
(308, 310, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dCspmr9s82o:APA91bGgfyUYMIs5CeP_WLMqS1odcxqUJpi8c4R3dDY9f_x_GGBDMYADNT-V7jEjwyjaGXRhsgFTvuR42bv1aRg55zVmYJMBF5N_2r_cF6JCigHP4ABPKZNA6uKMCOT91OzqqnoCh2CU', 'BIlCOjxfMCRk2d1WEjFSbsyO6qqkYiz-RZqrkEMpQV2bRmiVCHe58s3izPvsCtagP2rUeFUTETp-wUFiYa7ZMKc', 'dsaekKoYl78LgUgDO6Gmzg', NULL, '2024-06-30 04:42:28', '2024-06-30 04:42:28'),
(309, 311, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eqrkoGRbi-k:APA91bHQKnasS4-cbR8E0fD9gnO6s6g6pB_DDqnxTUtOZWCy6XTMzUs37yZN1po3oai20D41e-BzCGH9v3Tq6pDW4GDy3Dq9V8-6K8dEtV8ZtyyBAGFghu1wYDaC6jl_UkEr0-4ZTIoI', 'BGBgJNNHAp7apV154Fhhfh1bODz_oTXoGjbb2AFrMZC8bNxAbTBSGcsVoFNzS4rRsagofTfZsBhLqo5F5kB3ZFs', 'Uk9TGuWCvtWNy-T-wMnR8g', NULL, '2024-06-30 22:40:30', '2024-06-30 22:40:30'),
(310, 312, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cZnxrLqxlOI:APA91bGBPhCtaExZAACz75xBQL03M3v74QoCSl8vY4EHbYF13v-OyvZQcf4VTaWCGGc-UaruPfoCVobKr50ARHXIlj9Saa7N8icAqjKVweVUuQYBpW1JqH3_9IrwJONcLfs2qcE9Nd06', 'BH2rZMmWsfSDidjEW-4WrFKTWXgmzu90ULVa8eFNJn3pA1ya_JDs_ypoEgwX4VBuJma6GCudRFR3ESoeA1Ll9k4', 'JiLfF2ZeaaKIktdA1FjVLg', NULL, '2024-07-01 22:40:18', '2024-07-01 22:40:18'),
(311, 313, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dfKuL8rNBUY:APA91bEGv8N7-jviPDH9fnaLuoIsjPPpNoefP7xhXU9nvZPh4aN9f3vM5HqM4JrrQxPx7dMjTqeDnXbOJ11JLI00Nb6YOgV-rsNMNqb_Lsnvn9jOshPb7cURxqHuovnxJVgNj2Hu8cxt', 'BM0jO5jrkTFLSNfd6CHAMapZwAi85zHAQfiHQnxk-23AbyhM2NjJF8DwwQ2nJSPmwrSt5-2YsmBmOkcK1R9h0zw', 'MstNyXL1V_8wDfUQIisj4g', NULL, '2024-07-03 16:53:29', '2024-07-03 16:53:29'),
(312, 314, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dz8hgECaC4s:APA91bGw63HgcH_Hi_JfCNphNs6hu0xU-PeH33KyQKoqMLDRBeDSzp0fmFkBKaKdv18lF6YxwHPGeUe9uRJSKvGZJ9Yn1EQq29VbQKMMEhkZLvPwXO4hkdWBaLQqBq5R_wMD5israpob', 'BNyELAVVsXxGVk4XQKew2EY9hHLnFMVOFdTWA6Y6atXEDtb0C0X9M2amy8_DSHv_dv4-KlJxsUlGsQ1nJjMTxnE', '_ixMs7V3OBiIs7ChJLxuGA', NULL, '2024-07-03 19:20:39', '2024-07-03 19:20:39'),
(313, 315, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eOG5dy8CBpQ:APA91bEBDKfj7Yw1Y2o9gTBIBAoarj7by1cla-k0KXGDiuEvIYrJj_aBQgWs1vYbTT2CwRCFXhJaKRKddZso8DeSNy954_kkvM12_6oWWV2DYr1MjT1QZHyL1VQYzhJM9wDeadirH6tI', 'BEEWfMZ1Nd_0kFPBRNWhU6KXB5llsH9WLSsmRuTLTkzSJliTAXgobbKlam59MMulYwGkwjhvi03KdYvy5zumR0s', 'xYzON7GiCPaYwoaEt34gIg', NULL, '2024-07-03 21:36:02', '2024-07-03 21:36:02'),
(314, 316, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ffG3dYAEHIs:APA91bEWEmyKjySVqhOf2ZY_3xh-GhVgva33RsOkEBUxQngqIcECXx3nVNr0C_cWb527Z2lpp_RghL9ISdTs7Z4Sbj17VILddipsUWqPuLWoVK6ve6BffAp-vsunl6imTGnnf_KBMbjw', 'BGfYoHa52uhmJqCH8LCZT2ldDAHePKCURt3G7aHDGBynfGK4MgtITG2DX1RbGAMsDbOfL4nCudqytclvUuNP0dw', 'UZyTwBWaNp_4ad70raXT9w', NULL, '2024-07-03 21:42:26', '2024-07-03 21:42:26'),
(315, 317, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/e-hrk_vztOs:APA91bGHxNfdWRWqfGWsE_4kiCkj-roSs-f5Cm5tsbyc0DqjMERbftDJ-tOD89Yg125mxLw824BmVsEz30MlKZjNi_nDy1v4U2Ml1O5wJKTnfJz-0yNbW59JQrgbWMRCEq_VM0aEQwgt', 'BPRrpsENO_lKWiLJwZRBZmYHWdGYD5QxOpsSHfxLIZY3sIeAqgTAlDZo9e6Jy2n3rY8IDROZ70MZazev_Po6R14', '_OB2tAxsxlvri5zLdEJ1Pw', NULL, '2024-07-05 02:05:41', '2024-07-05 02:05:41'),
(316, 318, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eMqKXR5IJn8:APA91bGCErIZr9Vl5TpGNhJNoCMiaoZ2LOvsTA32b1biqRuPTo2ocFB-R726Vbkr--NWW4W5ifyuuOoeqH0GKHJZr3TuyrkHpM40-_S2q8OzehPwpwQO9nzF4GyVY1hk_WLQJibmh4yc', 'BBqWBtv4zsJjspwLXS8GxbtvQilMrt7dFHfYQK8kzRXfcAuqmdFGXDP6Qji8keb0leoftDRSBN49qrL8u_0u9yw', 'Xok7AKoIBRZhnEfoBDVP5w', NULL, '2024-07-05 02:06:09', '2024-07-05 02:06:09'),
(317, 319, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fouF-B_Uvr8:APA91bGRp80hopCWG3u3dE-2mMVkTAU4QF4NyjgunLn_u78oQaLezrjXJ_IBZG2zzBJto6iKZPYSHGcgO7WO5Ssv7yuB9DuRf9bnNQgzIOLQiERBSpoaCqHQwg19SHATpqCYEelSjXSE', 'BMtDQceIKS4rrPBONw22Qp7QAYjh4Pv6uABpNiPsLPHvHkeYd6VoqXoCvQkY7WU_Zq-Gs5QP43CHUY60BVDXzBo', 'S__OY-CDjwF2qWl3iPYN1Q', NULL, '2024-07-05 04:55:46', '2024-07-05 04:55:46'),
(318, 320, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fTuJA7RWu-w:APA91bHuVW6M8yO45oXjnokDyTkttf5b_YDWc_z8W9FYvdUjKwb1uP-6_6wRWj1KshiAca8ZaBPhbe35r7yYU9v9lP_-gvUr6dRATVmOV5ESFYnYrJbe--ElpZvcQCl81MRz12WATKRi', 'BG_iQ78Lj4rl1yxKBU40z7_F-dlNgEmvjvrcuXBHKP9lNstfw-rLTSg3GK4YFsxPEevIBRyplBlqvm17oKoOMcA', 'VeMwbvbXuZ0_1JX3PXXxFA', NULL, '2024-07-06 17:45:49', '2024-07-06 17:45:49'),
(319, 321, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dTwo2nPWXNg:APA91bEdxA4HJledrBwxQwHqypMWFtHTS1FTK7iPUy-zmXzTOqHt6Qur0Lec7jP-_3V-gkSa7b_Ilx_crrOPPHnW4IL14dEtT8QsdiismuQwXzSxwrr9s7fJx6QF8rj8AplBNtg1adio', 'BD4c6vPOZsbOX8DKShGyfIpq_VCr-8wewsUBF6m_rlgwR903LAmzpxmCYKXC83xARO8stNLtqtEtu1D7lMf_Wo4', 'OxhPBh1VLVRUJxdwxy5wFg', NULL, '2024-07-06 18:30:42', '2024-07-06 18:30:42'),
(320, 322, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fzk_4Go_5Rc:APA91bEcCG1V7D-QJWZpEwfTjfLOEj-skXR0ax2bD95HWZ8aGpUZzOA2ROE9Zvgklr6M67XYqX5uVXaKeP4O8UGjUOUTZxXyRSpEWx7bfymEdakqTkQIRQsIuxnhh1Rrh3wWSUspT7Bs', 'BNI822gu_rjZVE7tSpFSNIXBhEtnd32TYMmDs1iAuomTldYhOPp0o36fcqiF218NarkYyKkF0spPWWYlrTCL5p8', 'yJj6Soq3EFnQI478KqhN_A', NULL, '2024-07-07 02:47:27', '2024-07-07 02:47:27'),
(321, 323, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ed06OVrvH78:APA91bGlUILv3FHm_1bWxImVUz7vzsJRVyMI--hQ1cCBelexfVbVUb1g8nXUHjIgB7aIwPtfOy22kQT0ZFRycueO4Y4W6wkJ8diyYfb6A5HMy5cWRMupFahs6CpWOrgj8HQuFH8kA1uk', 'BB1TVjm1A1XSEJmb4u3u-57ldsp5de4f4C8_M3TYPb4RGtN0I3D5LBmZwzOBT4PzBKBYqDlWbfEPvsV1Cnny9vc', 'U8pWMhc7-793abzNJaEOtw', NULL, '2024-07-07 18:46:23', '2024-07-07 18:46:23'),
(322, 324, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cZCCqJWThDE:APA91bF1oI4SVwhbW6viKdsKbBPgL5OkDCZbEpoqOTfFbmBwxgRqG9jJoeEqcxD585gqmMmpurp9dVzrL_YpvwWb0_nmVBJ0zjDOvJVrXYXv6qAS-yww7UZiniUUi0HVLDqip-8z3SYL', 'BDTtUDbWxUKDAYLK5NgLjuCiH9mAQz5geGDqBUywjjddLBXNYVJtOd7k-63spLOhHYJ56tS9mhPZGxC1NQ9THKk', 'hn9juRbfM3uWI4VO5lCqKg', NULL, '2024-07-08 19:00:21', '2024-07-08 19:00:21'),
(323, 325, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fHC1C3gZBU8:APA91bGg-1TIIvQrXbuHeDtTvKUVjyr42U_9_ScGV5cJuI2d4toMuZarK0aOWS_XP7xD3-Jw3h58JUczQxrr5qC_ukIRQCFqmt8feyWWb0daivb4NyM41XcM8JzgEYszih_-62R2yyuv', 'BMRvoJLlCskScckjyHmWIjJoqQ5GMYBbM_Ak8EpVkWpVRlzlgFHfdob8d1tQooqH7x5GVGAKX7Z-gXmWEkCL4iM', 'K40A_HInzK0eHgr-HQdL8Q', NULL, '2024-07-08 19:18:16', '2024-07-08 19:18:16'),
(324, 326, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fMW434TVSJc:APA91bFXV4lG63uGrGswvTr3t7bPxvaCFwg97suJIaKUqGHNvZp37AC2iMZ-BEpLAu6BagKAru711zejJmlmfSdFKXzaaVXQ03WDB7OzYBwpxUzz35_o5lz7G0ZmJYiRXVgALyrxyGfT', 'BH2WUOdBzyh9p40bz4v8nI5W4nGqn3NrQt5ixY-MBNuSVjKsH_bzrtgs1lrLuh5PMhS27DhcxhcaCWd0T5jgXvc', '0TQ_6LQHj_jgJlHo0eqEGQ', NULL, '2024-07-08 20:30:10', '2024-07-08 20:30:10'),
(325, 327, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/flBB-afNQP8:APA91bF_dgPdrojuN3ZwZxEGzt0ZMW-s0I2i3B5Iga3KIU9kgShxu4Dj9p7WqFrJETJMLcOOOe2-QYFPuVSvnLgeRnQdcP-_zVOjR37wUl2utTN8SfJV5a3JZhdhuDR0Z191-o_BLxms', 'BGkB-D_4h-CeCIHUV-DOnCp4s9PrQGhOeoUw3Xl5Zi4sVCTjy5bwc5Mz9h79oaCOl6w5y5VyqR5Gq0IbYAUhD_k', '9AXUwF_2nt3pomsLZa8AfA', NULL, '2024-07-09 03:11:45', '2024-07-09 03:11:45'),
(326, 328, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fr2wiF94S9I:APA91bGEWfj0Fn0HxfbBJDtm6SqpTScT_AQFW11ESfXrG20W7zcVCFSJA8OUQISOPsYV1h7PVjPGOt2OkQKhdP0jJy689YWJv4Dou7CYr4rr72IzDtkrqcFNOisopfx6SI7b-TQRx7QP', 'BC5VhORV44CT-8b58wgWJawWHdw3D4H_KNeglSi2pSyLKy3vE1wMklxnjsKUzAhgM86PqPF3f2fa3HtJp3PXHRU', '6uiQA1UKCAD0J_3AS27ZQw', NULL, '2024-07-10 21:59:02', '2024-07-10 21:59:02'),
(327, 329, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eTXSVlTjub4:APA91bEeTTV2a_la4GtRCC5YsrlzthVjh_s0SquHlb1wC7mEKiBg6BNIQaURPPZPTDzt8vZooiZlzSt-jepXqjQ3j7ABkzKK1pZ3-PAoYoTA9oVgisKeHXz9EaoEtayq0lnBP2-28MAM', 'BBWWJuhEtWwcIySKUninEN5BLDcXMC4k6ftk3JFrtfi3lJeFIoRFb8AX3RD2FmSpDy5tr3Ps2xVTAd2UbDlb-IM', 'XIkgLb_kDCO5VOQPqVT8UQ', NULL, '2024-07-11 19:07:43', '2024-07-11 19:07:43'),
(328, 330, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/colU_tEQy4c:APA91bHD7MTDhfB_f0aCkO10Fn0gIkPZbDnTETe1xAFUDI9seTNndiMMof-rM9xsqMG_PMlOdlJivthefbNLeIRlpWDoIkDLfs4oV8bfy6jLqMV8KL60bdFrRJTx212443sO9GQBWgoP', 'BP0CCeIwU2qRhNbC-gjQoYGR0q3Pi_wUj87HgltcDpOk1rAn_ggrFcw0D8ysu5FwfB62-SmJiANKbkvrFEFlH04', '_DCip7kc7CPYo6OfPcYOYQ', NULL, '2024-07-13 19:28:45', '2024-07-13 19:28:45'),
(329, 331, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/e-vCSFQ58p4:APA91bHiNjRKMjqe5nvSomI4m3P0NDQSL94CM06tsmsdamII1mD6tiNzNNf6fUeAZkfb5PZrT5YS4V-m1FPn8hTO6b7JG6Ju6CVerNFCxLecq7fdhDwcJzY3uf7k_0B-tB33-AZ2XZZe', 'BMGBBGe2302GphWJBjEtZUqQxfSqDq4xe18YvG1LCsfJvPNcaCrBA4kT_eyowoE55yKOhaKf3fUkQ9OrUTQ829I', 'l0zax4p8lQ6b1aKKagGk-A', NULL, '2024-07-13 19:31:55', '2024-07-13 19:31:55'),
(330, 332, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dJKfX5NjXug:APA91bFfc2dv_Jh8Jh4vRfn2ZkIoK5q2oCVOdpqgfKorSauUmtvKQMrVmMGjcAcqVaW5qq7wUxjun1zdjK9w7IAimhAHieRVL6-vFjYtzMe8mOeKpHg3uB24GmQhiAb7Z-KHrWYxq_86', 'BIgxVhng4oLxJxb8OZ3fZVVJgDrv-yjIkzLTvvCVeSujYkZgfAdYxU1TtRXy2HX_EUpDoypwpalVD-o0pBxE7-Q', 'g0K2t18rz27CfOeEO8C4rw', NULL, '2024-07-14 03:49:08', '2024-07-14 03:49:08'),
(331, 333, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cd0iPBPhE5U:APA91bHo4n3Za_Zybo-FWi9Hsvan2f9-wWxCtU0hSokhNropWKy1rzYE5dTqcCxpeIU6aqTNXiH39XToDo0QE8myi9y16bRx7qosKa4PqLnHeyLhovMHrPKtmu-_sDF0kGlwfyuiHETW', 'BPpPpoB9y_U8PIYIX2SSdDbn5q7cByW23NNsfSvACzw25L5zqiSdRaO3zsL6MVFoOO3iHeK7cJEZplRQb8nPctQ', 'k1rxUYygYGoAEKpR51uphQ', NULL, '2024-07-14 20:13:37', '2024-07-14 20:13:37'),
(332, 334, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ed1eo9zYRII:APA91bHik2oTbb5mEfD6VdrqOcrpZfZSf-opJAYLeRd-x3nEJV-rsKrUR9Fi-7oJGxEi3oaixuW_ush5wyMWTA-0An15O7L3NBthB_Ytr7x5SnyNEA93708TY4ihfmPk1OkSP0asf0mS', 'BJOYoY7fR8HaHi4e-ivs0aPdmDOTSgbIk8QuTB805SQoVeId3v3jBIzbYYa1LLLzFf96NTkiBaz304snN-QyLxo', 'GJ5ujTv0Fna8-Nrrgn2mNg', NULL, '2024-07-16 20:49:25', '2024-07-16 20:49:25'),
(333, 335, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fMNEmZLcGy0:APA91bH6m3bMb-OvMzIRwFmkhTiyquNmTd0GIkIbWNTqc4sZoTMHUeau0rNtA0X6lmO1_38mm8ZJoHnm83wlW9OqWKDfS9Gzib0zNvkoW67_fytkxO3QP4dkIqCnHQLsspM2FOW4i_am', 'BACCuNEuDJGemQ4Hr25StrT0hcNMuHUVKyG8j_HI5eKfW3SBUjh_abBc2XHVXgzfTrDIXqU_NXBHZDyj8k6Io9U', '9-habWmI0NE2AdB_mzBdHQ', NULL, '2024-07-16 20:50:27', '2024-07-16 20:50:27'),
(334, 336, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eB3OW30-22E:APA91bEGl-kvK5utuy3uuzFY8cs-KSivVnqI3JHxDbYha3R2v8YYSQXuN8BKYd_zwInC24gu6wV42UTcd7qTLcVjoJ0moBsHrSn4tg9oQBSj3TGd_Sun1WWdKbI-HH9Aw-nyk74NpjWv', 'BGV_A6yHqzA1c-dkx4A7JAw4wVOrk4uLrIWz195LchYingXa3NdAnOMrelA9_yGWw7JtVn9Z3ZLW0ZQRvt1-G7Y', 'lum3BcJ4lT94gJRlfzrg-g', NULL, '2024-07-17 01:17:42', '2024-07-17 01:17:42'),
(335, 337, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cnt7GTDsiSA:APA91bH3coynipiSJTcygU-fUOpZ_Y7CnkRRy0GJhp9CdBvz9jpyp0mRJFCzoBhI4fKU2wRxh5F6dQGjthHgv3ikbbgK6hde1a-Qy1u3bE4R585Y3tDjSQ2BXtetH3KoTBH4fd9IxVYV', 'BMXIvcXqdCwmMH5n-cLn59uNteoignFcb5nzBPBPLXfe_KJ7Z6NDAOZy9PcBAMttVck1WCXzDw-pq21CLMPKjdU', 'tYKVdDDWjwhS_Pbdtgzu4w', NULL, '2024-07-17 18:49:14', '2024-07-17 18:49:14'),
(336, 338, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cA8Qt7RbyiQ:APA91bGKee8-JVqmKuFi4WEZ3oRfLcZBnnglJptn5XFOnBLXycDPJULJW7onzO9BU577e0lamhztIbTNX6jeA3WWD5KYKd-i2NRHb3KRklrqUKn2vSIghQDPtOR9kykIAMCHpPVB09pc', 'BD9t5xXuLHhqJ7E8ZURojEmfyV9ZT6c4N8PPruO2IIDUtjfYkcBo40GJrnQ5ZC4XLZ-iov2eRI7XRlZ5ZY3r8kM', 'L6XhuVXoMNoDmtWqe41zYQ', NULL, '2024-07-18 18:26:55', '2024-07-18 18:26:55'),
(337, 339, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/f74PFQmFP1g:APA91bFenCvjERo0O9phF7qBri6TJwiySLNZvNl0Gg6SxK3oFdi2iuivRdkdGYjfAo9Gyp5tmL8SMEabf1dxuzl-cGfDyGkNwbnOhK14PM6ed-UatddLhVDkCKJrW-O8raCac447Oodd', 'BMbo4Ixxu0lzXzWwsIV4O_77YM4i-eWMM-PzUyUjgmyNLs22Mh-n0pgWayiOwjWbN9ZFwBq21XJRbDrcbSYPBM8', 'YYzxOHvZhj7tuRQLFMOKyg', NULL, '2024-07-19 18:32:22', '2024-07-19 18:32:22'),
(338, 340, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cl-t2JB4e6M:APA91bHXCVG2fsrQK9JJHP04UUyvGYRMUVF58YuUHaMVIPEYtrulIOe308aAtsg56RkQ0J9VD11k3WWoJCLx8XAIGbandgWzqinkY4vnZ-gnkVDtEg9I6fy0kFt0pILnMlGRe78wSYO5', 'BHJw7jh8fYPEdBQ9Fa2M5oe7v9UMohbkrGHGZI2gwi9gEXUIjp7JBAW8FUTO4PvwyGQdvDJtmEBItOZWnSKEKms', 'lw5-QPvcpKotYj5KtrPS6Q', NULL, '2024-07-20 05:54:21', '2024-07-20 05:54:21'),
(339, 341, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fjYUkLfLNdo:APA91bHGD8yWKWAh_mSHdVV5UF5Zhs9ieXPIgAvFJbqlGGHKdMWabl1CJG0-ThyHFiGD7Xa89WyedMdwyfL9n5EMGdUQoN7UVniDn2BpCSg1QYzc6INdjQ-p8JoLcUNAcYT0MfwYZPff', 'BHMY3V1M6S_pN8GDurv7jC0VWCmUGcyMuIw4yp3fguHFkiVpYi67Ok-XJHqKCJ2hgSmxQ-chR8sjdpFn_NhoOXs', 'NXtFot7aCerSOp-5xZrRTA', NULL, '2024-07-21 04:33:24', '2024-07-21 04:33:24'),
(340, 342, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/f3JWBDMfE28:APA91bFcRX00-iaO25f5qMsPXXZmmilAnOubAEjdE3VZ3x9QoVLqiM2BDaG7ZDihWtglo9MYHuFuWXXySA5gUJ3y2rJ-znma9Dedp-w9LrLvIi_7b8kRT9s6rjXf1Hm831743SpoKXOR', 'BINjTBzxmorMZgyCevZS4XmH1W8GfOYk6yw56WBtRYe_DFuCXWca5DjzeArNBFz_iwL8a_uM-bKFqi3SkEpD9Lc', 'rfd6_67Cqrzxs0PYXR4y-w', NULL, '2024-07-21 04:35:27', '2024-07-21 04:35:27'),
(341, 343, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dSLzhkWzOKE:APA91bGf7U805a-TYAbrqO8yLwRKz6bR8shdhAzDUIvB0dl7yKuQpGJGE2cne2xtQ_cM3NF5jtIw0rlhMTP5W8ytRBofRbyHAcDDeWpt20337loL-AS7uPBorJ6kiIxrARPcBcQ_Y1h_', 'BBd2VuyaMuhDcAlZDztLA6tQiLxrJxB_RQKdTRrTLVx6-R4qDtmmKyxDtH7Te3U7Gmflk4UJDJtMxOxJwRrNG24', '4_k_Oa1BawI3N41rjmk6BA', NULL, '2024-07-21 18:02:58', '2024-07-21 18:02:58'),
(342, 344, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fs_c6aXZUiY:APA91bHwfZMdHLUS70dvH6a_sJ4PpNNtrYBz-daM3LFVgt1EpTeaRP2USuJ9HyHlt2zQaqj3zskR3d3BWxISgHAcNWI6LvzgkrbMS8jjnErNyhPRMiXorjSEEPVJLj-Ivi7qnshO-sgj', 'BEzaORuUzFIflMObDhSX6dekN9GkSJBQaeUfgCeAsKc9Kc4fefrpPOQfg-W8oUlRoN-87_TA33wopRSW9UvWtzI', 'entT6URCI9XSv6Ki5T6Rlw', NULL, '2024-07-23 04:08:22', '2024-07-23 04:08:22'),
(343, 345, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dtq-UZeUwZI:APA91bFTnJ9dlkmxG1b1Q0P3nPARg8aKJoQs5MjiMVERyry82dWZ-DIkZdXkrctm_00PEVCcwNkU4hqCHunwHhq16I0DxRMmvAOQQCokxSn-tou4UNzGRW-tIEPiZfK27t_sehKcT_iq', 'BBB6Pm3PfyZy1Y4Ebv9aQG9xuFyKqVbZk34eO6nT1-1aXK9IHsqZeRIUiNliHNiGtBVanv44OT-dsPnNhF2MGlE', 'jraN7Js24L4ltmiUxf6TXw', NULL, '2024-07-23 19:40:51', '2024-07-23 19:40:51'),
(344, 346, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ctnNYzfOurU:APA91bE1mGxvtUN3CZ0DRFnjwDX1zzUtEGYTDouPU9WLnr3G3OZKWyRhR23Hno_UeDPxSCl0ht4Z5dT_4DgInpKu8MwvOckWSnHysDSGBU_FoufAS-SrEQgFetu2embXYNllW6CdzwV7', 'BN5cw2P7q-PAwmRNDjbLvKP1itzHpfttNHl3I18FeBt_wSdM74-GF8YOGT5xVg94EiT7Gf_EfGju-ImA10VoD8s', 'iIg40O_IU4vWDNYE50Srcw', NULL, '2024-07-23 20:08:13', '2024-07-23 20:08:13'),
(345, 347, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ed3gqIY-NJA:APA91bG_sB6X6hRLxQ0is47RABM3h13qCPo-55OPThI_7nXC87pk_qdhLSgncFrRd8YX4Fqf6xRGFkcaXzUVSXuPbjEHZnyzAgcehhuHYTJKj4HJxrzHM7uSoj75Nplns-FvRu-S4DEP', 'BENuy-2Ax_6Y-qJJ0gv1o0DbVAg4gZlggF6zdZMRTvzkLPzCR3z-TaOln_jTclrHSI9UHdmIIVAuk-U1CVZ9uQI', 'NwzJ1HqlzfUkuMKtiQEMlg', NULL, '2024-07-23 20:08:54', '2024-07-23 20:08:54'),
(346, 348, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fgvz01qxRJc:APA91bFpf4S_9-YQrfHxV1VlQKCzDCu2cgqVq94A6o8_HgpSWxbgrQGYxPCHt_7gcIb3v3-UoLb_PZv9w6sjl9IwA2mRYoeiohDWEbYF12Qv9wGeN2ouTjqYQyhZgQKmc4q-01SX98RX', 'BOvrDCghx3QxaCPomTiNQLgPUM4KYKkSvQ7Jnbw8BsXhr5G9JFD6o3oRM9NgHT1EP98UHdIGJVDvVke4_hqe-DI', 'Pt5Zm0Om6EXCzOCYYK5ikA', NULL, '2024-07-23 20:20:08', '2024-07-23 20:20:08'),
(347, 349, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c044-pkl0Mk:APA91bGgthdo57njR4NslwKyduzxLPn1y9Jhyb6TLx4crLOVfDaDS5L8QfFpAq9IouCDiWJjUX8eCmxVjGvlf6WFRixEYmgSRbT76Yb4_R3-25c57tjEo798YBvWYubDBHyOB38gN_ji', 'BGVo2xUqrlTSkhzxoWF6RvgV1ILOB3CnLfyG3O5UyTXMNdH-sOcpb8icDQg_TizQCuQqJYuCNO8D-k3uV5b_Ks4', '9u99yZHm670LgUJGKyIj9A', NULL, '2024-07-24 20:45:23', '2024-07-24 20:45:23'),
(348, 350, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ffWsSSwqJMc:APA91bGjHAclv0VlTOy-rmmsU3BrBtOEbUdm-Xa1hdIVRA5UN5yh_it6kShitzCFULzyKnRqMXN5nktLOCM9indNEhQKbVKvO4U11DGCf7FJjqSPVMU99Gb7krsK2R3u-_Fsw7NMCCjo', 'BMb_cG5PJCnzmq6n_mHai7dTCBk5GTHxAKxAtcbpFAg_6YhCJdmLUcq_EfOykJKf3-rYliRgXZDWJBxTiUnw4DM', 'S5x0ISodS71Tm1TMwr3z0w', NULL, '2024-07-24 20:45:48', '2024-07-24 20:45:48'),
(349, 351, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/f-7Jjm7LDjw:APA91bG8WyGHgFqFkagJ9mZw0ZomksN9a8QtGeAHdutzUpO_XYZjvhi_RrfYWgkwJYpRWOyzRYk-h4lx2ROBso6JtlunBFuC22AwrHaBmOBAfZyg59ajZydHQk1QDP1icJPghMHhmBfO', 'BIm7jdYZy57aNp5CwVgTNdN39eBt5qZmSe9KkQ5pAFuGE_-sXxr3bK2ZU_ppCO3_W5eBtYMwwrFRSv6F8ml6d38', 'LkaiQW0FX3_7YDX58gCXHw', NULL, '2024-07-25 01:20:49', '2024-07-25 01:20:49'),
(350, 352, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dZHcnkz1gsc:APA91bGjEjHgCWqqpJENJYVhwkpDrSdlhB0CHc517ymwBiGpfz8bojyTovNi9C9OZ6FLImOQjFFM7c9gi4d2lgUL-xAnUN99dbuOXKSXfPEkX3pquljKIhUS3kgrC0eR76u4MuZzxlxU', 'BP_QwLzeJS_b7JtBawklyqYXnIHGzXdQ-3LkuoesB5DFPTtzxV3V3WVI8mnjemceqHK9rk3bNNPbwdBEcMXn_2Q', 'xsULPTBbhcCrs1_mJTaMIw', NULL, '2024-07-26 17:48:02', '2024-07-26 17:48:02'),
(351, 353, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eoRA1F53z54:APA91bHTPqRJykTThyV6gh_VTGxHAWcI_yIIm9J6_Td0E30rfz5FpaafVPvQZi7KqG0BeUbyNiUcw5C0yooJL4cU0e4WJGAYqHGcaNx8ZLPaiYnzThsDe431gndBcHStN5TfHV1sk5BR', 'BNjuUNS27_7bxcxWHi8InPTtDZE7jay4sPSLIXoA4pqJlKtHQlSSllJ7ceXcbr9GCGVvKIGWa4se_2euA9HsJn4', 'f6nwGGGKUFnyzWkyRDGHbA', NULL, '2024-07-26 18:50:37', '2024-07-26 18:50:37'),
(352, 354, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eF8OMHADwKw:APA91bGEBHDQxiyKofMcFpOkSFCu0qm6m8n-4UDoJR6mn9Iz3SAQTdESe4Jc_-2t6NoP1rXIlG0Ec4oTYkYMZDurT5DSvhucgoKj1NbCiPr0ls3If6i-EvP9avdqgjGwl4u70BTideW2', 'BCsiiLfzNlQbOTYFt1q82l6p8K0_eANq6xrqvXyQBoBWUQ3_L46tJ47SR9a8FhSNIRo6vFw1qEYFHccIIzrCbmY', 'rlM2zxUCloB6l6EI7zS2Kg', NULL, '2024-07-29 20:19:25', '2024-07-29 20:19:25'),
(353, 355, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fnrLkKDP9ys:APA91bHhwgVFqqjVDQvbut0a9b-IUHA4RoY6AwDWLzMGqNrGKV7LdbPc-XEugFT8wRGutwAnsEcqCn33WkHg5mtObGszc6dXgVNNiDQycQop7ls5zcLxvqXeNVgahgPm3ufggO8OvxM-', 'BBjXnJ9845o3fiVWKtvesBon42vec47RpzK2yXoVOdCdzjDgCXUSRH5IO0HeSyb5VMqpm9v6mvkUF2h7kBRRJgE', 'kFtw2dE4Td4FR62cccOP5g', NULL, '2024-07-31 00:18:00', '2024-07-31 00:18:00'),
(354, 356, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fqRrrQCPAlA:APA91bHVIe9MtkHYYCfyFBgEbCR7ULrvhQg6pPRMVqDcYQQohfFMCEG8FouB-PK2fbeDWbQg9GxQ9a_o6VEA5NKBrnyRT0ROKbrlcNUE21qlIkAOqdX9iPdm9VxE5YWIKPpZ75b1302y', 'BEHSxQzuC915_pmf_VAzoqpIhtDdrNUBhpOwLU1GilM0_twpS_vFuVhaPvuhntL-y8BtyNtEcKLBO8bAqP3xe_Q', 'IiV78_aAq3RX5SHnfqwW6A', NULL, '2024-07-31 20:03:00', '2024-07-31 20:03:00'),
(355, 357, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cG3TUB_Bk2U:APA91bH1P-CWpQ6lhiv_SaoA7ojpi9Yiz22wcPBlnF_7AWQawSJG07OiwFb7QEgw3uiz8h1Ow8J17CGkTUopaQtX6LJPuKZ_6Ojyrt6uKE16xnqyyXxJImLxiOBW8bo17MaudcBd_hwz', 'BASlb8hxMSMGHdlKG4ytG4fbwtPrmSmSXwHWQxbdNGHuzk4UDzTeHWgGcmF8WdQLD23pa9an27UcQpXHEgL3sCA', 'wk6SoA_m7V3fsYLT52NkIw', NULL, '2024-08-02 12:36:00', '2024-08-02 12:36:00'),
(356, 358, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eicEwbbTxiQ:APA91bGGZaDUn59KzpcH3jZjjtVC3BhfKgg7977nWqKM9Cxzb3wopihZURU183oG-QxTpncU9kB6sskPXEaG6v4y5TVubmJ_LTrU3yxw8Nqh6hifdiLFz6OOl2w-zebWXEyXYfUIakdb', 'BPQrMfbtbtqWsaK6pbwAKPe124qw4M0RBYHImgG4gAidqNptV1-XcqQo49fjSyAuovTR7bToyhHIKVZTNfaSFag', 'aP6rFm5Q5HmU0Btqh4Z1Dw', NULL, '2024-08-02 15:40:06', '2024-08-02 15:40:06'),
(357, 359, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/clYpku-2rFk:APA91bGe6Gq1EbuMAfQtpfLeKCUis106R38ngBKrvG7ywMRPPcS-AcFbO1dUBK_qi3A06a5zaI8peDv8GA8ctvGG5FfTIaNpSsXvDlAZ-3vODb8FuNAiCRx2QZ7-VKZVN2mgYX3E2bK_', 'BF6To7HU0xt10G44ijZdZKObxBTMXfRBB7-_Npak0HpQ2KCobh-JCExMzpzRuZ_HUqgqghBVHpKuB4CPuQlI11E', 'BEnGq_X_q3Z5abI9zJUSng', NULL, '2024-08-02 21:29:07', '2024-08-02 21:29:07'),
(358, 360, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dGUEWncdcWc:APA91bEmGnhwwLkgvzSWRWqIQgZiiRvoONAbgUaZoW1zIhDpMT0PbGXUMzk2QplWtoor-0AqH2j2yY2Eaf0lMZSV9aFNlL-WJQUia7e0IAqrpdG6KJAI2UHm2AAq5xTnzxYGiitjslaB', 'BOVQiwBYkb2SrNNv5pQ3Pcc7rteklcB_clTL5QjrEChUAWxmf5q4GOC4UzGwBkMDCrWJYfLYHhGLjZgGuCGPXXk', 'QMlDLAn1M2ZB4J7r0336Qw', NULL, '2024-08-04 19:19:51', '2024-08-04 19:19:51'),
(359, 361, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fP0zspOv6iQ:APA91bFd5CSsxB6Fl2V_KGwhUkjM0XV-pqG41jG9d1BQaeoYNNKXXPDPaX_opAvi0VaSJU5ZgoviyCqWqqGh38_8qNhZmmgxwNy6FJFrFNFWl2JcUqyX3hYLJKm38Csnz9sPzQAnVIGO', 'BPE0OgG5ttroPwBqmKjqaLBC1tUR08JyEjpP0aQwRHpAYETqaWv7gYiSHj7c9vHtKuNQExCXLYQJcTGKkDnGgS4', 'Cvv-IaUK7JaSd_J_FhRtbw', NULL, '2024-08-04 19:59:07', '2024-08-04 19:59:07'),
(360, 362, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dQ_9qSH3L_Q:APA91bEBn9v_n0Zvm7MXipNSv8jp-4-jwPU68Kvu1m_mHPvOcSIl1mCSFrFLu4ItONUjtl6BTotHVKDur8-Eim89EXs7wO4RqaHDFTXydiLtyo4wcHA_4EyhOeNHUf98jbpSJ0RGYREw', 'BGfTaSw8NnBe0fwsh6_YRyPOpVnArkCtTFa2sE2QCsL6u8riOrWKJ1QdQXrw1YNFFp6MhnihKk_eGcZfaTgbSEk', 'l-hM7YYWuVtDWZu4-LsL3g', NULL, '2024-08-04 19:59:13', '2024-08-04 19:59:13'),
(361, 363, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fY9h1pyQkmY:APA91bElZPWP4SBjV7HLI-qmUQedGQAkH89j-n34R8jTdlfkc4Dn34nIzIOAKiQ9HbE-9rN60w4hMN5e1W8XaRd8arODMyKwinh7T-7nPB1jaJGNV9CRBTPq-829jW14H_jyhd9lndmO', 'BCZFMZSDZBFTxfnAGCzo_2sTTa86Fb0xyBBfuzLx_1diKqTn9n9ksspSc5TdYwcVoRByDV0JLM9SskmN1Hg-qwo', 'fq-EIC1dOeJYcYYAYD0Sdg', NULL, '2024-08-04 20:01:27', '2024-08-04 20:01:27'),
(362, 364, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fC2V_74tGO8:APA91bEHci5mC9KPesu4v90iswGr1yeO1yzW-qzJf8HtdsNVP1P114RDG4WKuE7TL7dG0MUCSqtOw0CETA9da-Vy6coClxBNizIzqWnlb-_RG7nfTQ1ASNi6S3L-f56OtSVqI6qsiUoj', 'BDv050ajlm2zMsAdO9RN1klR3HVkVIfb025VNEL-AL6Te5a9_rBJWhuNKhxq8E8YGTZDlZ6l4vlCgdFoQbn1cF8', '92UCjEAXUCBiCWyNT-03dw', NULL, '2024-08-05 17:46:50', '2024-08-05 17:46:50'),
(363, 365, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eApVBc22mq4:APA91bEOM3z8EwG3duPvd_djbV-qOO-oGXsEY_V2-_w8J5We_qxvxNzFqsXcjAuAXItc7d74tkK3P_EB3VNq36wCw1Nfw3fH4BE2iX7qk767mRE7V-0udpYoEt3D-lMQDJwIbAV04Sl8', 'BA8HIe59w__dYWU7EYVACkEuDFT2DRS4cPQoVtYdm0hlv2uwCst70Tv0UuUVvJcAgR9jHBJC_8AXAR_k9XfaZY4', 'E6nqveFm0pt4OztI_VPYWQ', NULL, '2024-08-06 13:52:59', '2024-08-06 13:52:59'),
(364, 366, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/evDJRGVcQIg:APA91bFgSFfw7Ggl22ZOv-h1P7F-MWBov_cKdqORGMtOOoiwTP_Gc_2tD42aqqew18V44BTtku8JkhRPX1043nB-oi9_U8md1sXbDIPybqnoUDeCe2pg0IgMN6IPNwXZc0RVDNZCrD4x', 'BBTe6diWMf9g6EFe-QOcCACfiJF6NBFuiOwddcDsyC88iOwdJPm_RLq0aukGEbgXn9Eo7mszBcKQE1emxdHYA5U', 'qW_pMTGphd8dAsviWIKeIw', NULL, '2024-08-08 18:49:15', '2024-08-08 18:49:15'),
(365, 367, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cUbiNZlsiME:APA91bG0IgBDyXNCVEW0RiMKPm8wKDs7ToAoWiaQZoQl2JvnAl43TCvU4l3om7DvLGKN1R-GhYlPMggidZs5r0avSxyc1lUFnCHJyeJ7pfiMCSLmXRD-iyJOzHA84yyfNA3e-xHQIXa9', 'BFwOL-Xn77TMsPaOw4890N2aYvn0lmVwwDDTfvIfQkx6Q8XKl5npJE2GLeMxy8QrNFw1_YLh7Cv1IPpi02ll4SQ', 'a9Rj4aWOzrS1bAsZnCbCSg', NULL, '2024-08-09 11:20:17', '2024-08-09 11:20:17'),
(366, 368, 'App\\Models\\Guest', 'https://web.push.apple.com/QCsJ1H3Mu06QMM4GJ1ycDM_RlZlO9Irpxf1xLypzSYX9Qp8tTokLVIrW5WZTeHEA9PAdWxHX0QTvEs4g_YE3PgROHlY_nTiq9mPR7uno14zGzY6Nm9TGwZPa3eaD3tl4a98MBQQ6p-estf_ZfwTidZmMgtUtRQwL7z8dhFvOXPc', 'BKesDUaVUf_GhdFPXsq_PEu4qTn7usOsI-UNHfT3Yiz_B5gb8916sV4OnvaHYxS7GDekl9Vkw_9-LUclirpsSkM', 'Im4rEc3vE6hkL8xhMQlHcA', NULL, '2024-08-09 20:02:06', '2024-08-09 20:02:06'),
(367, 369, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eav72T1QGpI:APA91bGdJ31VbbeNju7ASU0DJNYIUPeJIKwyqqyDtFFm5pqDiZK2SEgS1DLQYJjLlwl1skRqmo0zddJH--7q-D8EtqbCb_t2rNxv88W_1YyQ533VDlvxmeU7KN6heoHHOBx9QL2hg40n', 'BJmImhe7wazhd9YONSx7H0N2Ji8Mjp1qxhFvyFN2Z8YGVckEFEEWraeGm7x2SGB7O1TjCKv0mtR0xmiXbdCKCgY', 'xBOgDl3gwjBYcryBWDKIHw', NULL, '2024-08-10 05:04:08', '2024-08-10 05:04:08'),
(368, 370, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eiSYeKQLe80:APA91bEGENu4hY6fUbvevOosyhItJibInhEpk9hwR1FokLSUg2W9BkscG4xxLq3yQTnCkks-qVoYeBnh0rIwHWegyT-Tf4a2D53Ah3X4E-HbrIk0mXY8hRJZf_gOv2rzUp6LvHBGh_wH', 'BFtlVfMqlqQWK1WQB1TEKrKr3eqHNJPKR0_jdoFmshPqCwVc6o3Uhp7bvJuKDaUpwBWKDJYPo6zTeO1eFrjrOvw', 'G_YylJCa_fFpe8YUyjuCrg', NULL, '2024-08-10 18:58:23', '2024-08-10 18:58:23'),
(369, 371, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dc9Ht6K1X_4:APA91bEoWJzbiXzDU1gNDL4FnrVY2l3M35nvYRkOuPKAPJqWqHVzA1QAtDwEjfLADn9A7MiN0QTLXq9M9MzokLR8SdRh7rPtwUpnXSF5Xqq-7P4zd4HcVmaFIz_2t3X9YdeKPUDTnjYs', 'BBzMNYLIHeFzcacPycutP6IoDn-0eBQBjWdHFdmbP9pgHAD1cKZ_WYw03wtKQuvw6ZanGUOmzHYT5a-iLXT4FAs', 'mz-_628yQYep3kw0jQdfNQ', NULL, '2024-08-10 20:06:03', '2024-08-10 20:06:03'),
(370, 372, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/e8U56iE196g:APA91bGuCCSaANeMUQh5_0Q7yPCSJdn0W6OcVqY58DRN1v9zKDz4N2Vy-jtYdE24G73rEarYLGQHWkWcBTe5V4RKGUWV52LTbflOZW7fH02zHJalVgI9qtY9QUKuOJcHGhQ_x-_9lQQv', 'BN02OT6IPDVrnh3UHQDqiPj9U8e-rugOL2NSjtPJLs7NjGhB9Wjss_caIpoisQDWMLUuB4y_vGklhR5RTylCg98', 'QEggaNZKjgt1XqUAht7Dxg', NULL, '2024-08-12 19:47:19', '2024-08-12 19:47:19'),
(371, 373, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eZlxXCo9ZAo:APA91bGc_S20xohQRGPy__U8_lK76b_rtOzpRmOO_YxbTBfs412cR5g1FPAPsUgURwLe6Mp5FWUmo1PLKoIlcjGTO1CUQg5N7d6ydT4RRMliVL3sZNyyv6hcFPFXQVHqkY8fXb2GIkg0', 'BDKCyNvnbQ4cjqQkA_NdM3UQHFe0PreIuRlFf_UcyN_hYCR0479Nrcbz6WEvTwL9_n3Ej5TgBFzvHHWBBPdXbJs', 'HEtkv-4Y6I_MfswP9TrQkg', NULL, '2024-08-12 20:07:01', '2024-08-12 20:07:01'),
(372, 374, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/e_7HteZPsRc:APA91bHm785alaq1vx8pustzPkNV4pczwm37hZBVBuwd_k3JRW32myo5jV2erKIkKGb7JMltx3kzekLAfs2WxcXNdljoIGsTsLhbU8dpNvIdjx581zOq8UucsFQzoT8N0Basbc7QJv9o', 'BBFyBodjTwjx01oTcFxOjNePXAenmXFNPNflb-ha-7omnPDb86iI_QP2D5k4Dx2EjPlESyt5SbUN0hMvnjtE4dU', 'hzEQ673LB4Aq-D6hOtZ3jA', NULL, '2024-08-14 19:21:58', '2024-08-14 19:21:58'),
(373, 375, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dxavQCghMgI:APA91bHKX-4LnhK8lcG4GseJpYAVoc_3dmCbv_JotnTU3DPsnSh4HzTn4jUk0f5wSVHPCGf458xsNSp3SPrRgvyZYM5ak3gOomZJCGhSJZBjFws5vmHguvhiKpB9qpx9Xr3_OY-NMvRu', 'BDrwFd2L05II97P_u8sX07hR2Pd_g9hRw0GXXNGMGpaWbzH_bnvKu4gsBBcpXaJEQ-YhygAgmY8bp7-u37c1Ev8', 'dM77Rb2N8KZvsHcSsLIbZQ', NULL, '2024-08-14 20:10:16', '2024-08-14 20:10:16'),
(374, 376, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dhT1DxyEMnY:APA91bEJHDtvCo7-QRDF4mRXu3hfuXOSuHQ23m7161MUOWwiP4O0nvpb_6HA87KhU4n3YckBwHqIdgMnpf13VBERf0yu0VUiWJlvOI7BneH_HWA-9P1136MvBphlJVk4ZHW0_NYHKmjS', 'BHZ3sXeE_l6Mn_wximXy6FP5AHW9XuLnXdmtdK8p5VByHeHPc5pwhBv8vv-QwSpYF5TgykxBCkX06iy4sql1NLk', 'RPw7aG5aMVjVSDlkVaaSdg', NULL, '2024-08-14 20:13:27', '2024-08-14 20:13:27'),
(375, 377, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/e30rhWsIEaw:APA91bGLlF-ZJlgz4sJ3rPQ4oe9ydbvNhtiOXyWEpOPvM0GuWKZF6ZV71ORcxW5OV9eNcYkBRq5C8U9m6VgAYG1xQzp3HgE_Mpb4LrGPh6Tl4s3YoXqex4T8ZbfRTG-IlBlrEvntqF-v', 'BDonIwF8XT8depAGeRmbp0PIPFrKH_KXjReu7pV1MHqxdG0t2eVrE3__BjpBoNOv7y7WXiJ-MKF6ldn58iIUDMw', 'r4BI6t87rUrBu6u9xRkduw', NULL, '2024-08-15 03:58:46', '2024-08-15 03:58:46'),
(376, 378, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dQvdtS43tO8:APA91bGOGmjNf4xpWwxTlQdmU011p2MBgCduLN-ucwJpHILNEVYmZ0Fz7xqn03ObcvsrLGbIZD0BwzMvSLDW2s8druD_4-S3Ggsv-0quh1yaS8KYUJ0K_Is_p3gBUoGOLXpdeXMnDCei', 'BJ-KzVEsGHVrylm6gplogqV_PEF3XSxA8v4j36CKn2vjkW32w3x7F4hL1ijlOrnLM6hpK13AXigSr8AKsnexAvk', 'aI6sZYF3LiEikwTFG07gJg', NULL, '2024-08-15 03:59:54', '2024-08-15 03:59:54'),
(377, 379, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dfVReWHn0As:APA91bETWrcObJbhMVOxqtBX5e61jwwCrGkJ4wQFKIC3ki95kqps79OUvmiydh-72Z0wQ4EG4sxALImCsvAF7j_Bv2zhEy1u6Kp7gB12KYE9u6k3werDzLUZxywhzQfJdqthBtsZG0hH', 'BA22GTasw1skDhq4S7sTTUf5V5qWV1rDH50k8MvyZxDUnKVB9qOpF6I63PAO1tD20HEDDkUVAs_wRoDoXaF7c_Q', 'g8ZZO7qr2CR_fkwdJnikGw', NULL, '2024-08-15 18:11:43', '2024-08-15 18:11:43'),
(378, 380, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dCBHRWc1eZI:APA91bG2aHpL4qz2d9ArjjYrZmZsPJRzuJV36JyGzQBID7D2XJqIysktnhKfrQlBVK6dn3CWqHesYyCol9CBaCvQ1OE4yEDXSr4pV4radHfzTfpXoFgu0HvXDWZTlxYl9YnyjDTwfXcv', 'BGooJlciUjLMnc1Xas8Np4k3c_QSl328xpoFUoRM_97-8MvMn2Wvng9ppTh2xRgsHGUJTPrZ1mGk2VzQm5slw3w', '_IX6jRhg316x1Vs37kbIsA', NULL, '2024-08-18 21:59:04', '2024-08-18 21:59:04'),
(379, 381, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cdAV7LlJ7-U:APA91bGpGyOdrLcEF7qXwtsEVTxDnNkAZGkY5o_1fEYLHkUzUfSqLs7wA03_yJhl1ksYvib1aAVLKUrX6KgrfXogbj1tJuzeUHfSup-gfnQyLmCxhgLO2jXahuBzHQCzqsLxLpty53fD', 'BIqyqBjvOa1h07uv8PLwTf0xClja_oB8pG9t7PORwYJUscZCCH3d97oy90kaAVAdw-XF8W6xt8U-GSTAdAXz0R0', 'OOVgW036T3ZorNtKR9e96Q', NULL, '2024-08-19 01:53:41', '2024-08-19 01:53:41'),
(380, 382, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/efMhGYVe6g8:APA91bGfkKcgbsgdXyHrjB_BIqvXFuCSSqi37LXuttHM3nRYBmrDzr8R71VIJDyahy8y6a0Fqf27TOTph-edlVjeqcl8DPK9YCjHSgB4IhABAMtIhYEULaapQe1cAp4JG9WgBtGFib2T', 'BH9-jM00mZUDUzVgy1TcWr-R9d-b2CE-AKEnbD1cARTqc45lpczpm7rLHN8vrNPYTEbgsEEw2KNF-4BbW_GEaVo', 'W58VXFoKTxsfFdJt1n_q2A', NULL, '2024-08-23 14:22:41', '2024-08-23 14:22:41'),
(381, 383, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fY-HHSyW7Zo:APA91bHh-95qBphgViNSQkeXzbisYfsfoPP11nXdOEBOrWQkaG2k4D2ZO1x8o-wsnDslEf_rHJlVFoXKKGQzT4OyVR7HpUO7mbehknbH1sheo9iBlv-FaSFa6ezw8u9pb7Z8NY6vzh2A', 'BDa47BIOX732_up_3T9kfXO0LN5CHvKmq4Y1hzu_mruBSMX0MHcsl4gYs89GXIlbdPcjCR4xqbeRRAypMoTG1dU', 'yFHhde_EJlNwCtApH-XEUw', NULL, '2024-08-23 15:11:43', '2024-08-23 15:11:43');
INSERT INTO `push_subscriptions` (`id`, `subscribable_id`, `subscribable_type`, `endpoint`, `public_key`, `auth_token`, `content_encoding`, `created_at`, `updated_at`) VALUES
(382, 384, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cfAxbG_732Q:APA91bEmlmBY-CCbK6DgN6otT8fp484DE-L915YHG6AOJQLMTTUz6n3j-Qm8q0665dVjzbD1ZkVx5vNAv96sR6CuZg-VmPERn1l25G8SrbKAGRFYu4UYzUmjCpfUC-LLiGvoUqFfOQxg', 'BFGzPbPMvnzAwHsd0XwXOTTZ3tSWOonkBZeJgxHJFSuRY_kxgYeiqz_88Mj5ZiFilC-nPuwfYqfpT3trYbJUiuo', 'nPjWagXfpQy-UTXvWlp_xw', NULL, '2024-08-23 16:52:41', '2024-08-23 16:52:41'),
(383, 385, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c4CzpWg1q6Q:APA91bFa_pPwJ9k6tmRQ0P_sLcZFfvgBngR4z5WZCF9PxiJ31I55DDm2exAtGOcqr8Bt9HYgPzrI4SA-9seFmwDXItJP7dN5fBS_KoDMbcutW21AIgiFqmEy54nIepXZ4_Mgd2yRjjQm', 'BKhgJolURuJAOGxPEiTp6cr4NSRhxC145cEa9IVU35mdLq7Cih8X_Wj1l0rjmPcU19eZE2K8yDBM3BmcX2TQQHI', 'BhSUSibvWEXMnStITh1QZg', NULL, '2024-08-23 17:51:09', '2024-08-23 17:51:09'),
(384, 386, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ea1KkBBwK-s:APA91bEIcTn-mIn6FubGQ0Tce7NNQCy1KEonlxMWHx1Lz5xj5ibhxzTk0TEk3Fl-VdM3i9ppamEtzmlZhfpwuREKdHxJmvBKk_w3UYfMOoK1b-xonReCcwr6w7NGOJGNQnV3iul1lgRz', 'BChZHphB_AYkI7Rl-MuajtBdiZtNpbCvte2Dxfr5vw8yBJtsRdVTNVLqHIdW2YLWrSwoQpr_igCA4jWwXywdvuE', 'f9HsPNMV1x5rCVKz9EdhPw', NULL, '2024-08-23 18:54:10', '2024-08-23 18:54:10'),
(385, 387, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cSmc5bJ87t8:APA91bF2hZuIlHT-UOm-8X9EnsAUoHdu15bIdzuSh36M7zh5F5XEYM8d9dzx1zqXvj0KcIBfM1bbn7G8SHvGnvHpxj2fkgE4SMNzgzrzmaJflBlKjmLLe8f4qPK-nHIegdygR692izd1', 'BGQ_pcivUniqQD6Um39JCGo4aF0kiDrR4IpTQpAoXnsmcL_DbDzO019_yed3tidmk1KNfnJlf9oFBmRfYFUHe7Y', 'ZNTNC4KlVuUG29HoXIVPVg', NULL, '2024-08-24 00:08:48', '2024-08-24 00:08:48'),
(386, 388, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c3ldq1BJaU0:APA91bFMWI3cE72bwxmwvKXW3RpfQ85p6lowDvVBr2NU5XP37mWsneoq9jkpGTkDcZiEQaqVFrqJR37S71Du6evQ3mnCnHRI_V7XJ6gPcPdTuVBBGtOrkzFFw_6lgUXXjl60bdVQtD48', 'BBqRxs_novTQV1p5rFljYklUOPdZfwUFg-awdYO8x5KLwKOBIvk2YoYO2FHy68Xn71NpbAKnZCdpaMw9OTBtjJk', '3W8NyuOIwNErDCuQ7oLZbA', NULL, '2024-08-24 22:05:18', '2024-08-24 22:05:18'),
(387, 389, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/esLi5RVxE6Y:APA91bGu4Po6g8YgJVYhVlpLPkXVftsYI2jRawlyz1KG8IgX5F8UJAcDGnr8ewKaCdqx7_fBYMuo_7jwyM3LJ6J8JCHH73GX9YZESJjsJyWDGuNFQ51GwdlU4IscBMdlt0p7MnwHIMjo', 'BDP0xAglRknpIXCjP8uW3KHhXP6k1oBLWn3nLYXMCFrE_TUskItDIQXe8RoKncLMNIAtVIZXFE-5ynTGHPrKZWQ', 'To8ylMKt9grDLAF8LMBQog', NULL, '2024-08-27 17:36:56', '2024-08-27 17:36:56'),
(388, 390, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fqZXAqSMzQI:APA91bFY8HXK5zbKAO3p9GwrvE7XSycWU0JpnnmYg2k21SSRA1AFZnPmF8dw5NQd_qfxYgfy3rPVqqXOzMULPnofrhLI8oKZQHvdIRbLj8XUOiFb_kyJFLE5t6tgQdzULj0IB_VpGmH6', 'BPTbhZCofwLsq2I61vrFAIsbdKd86dgi8ZgOLyX6t4qnLdkSzUqjdOnWvf862nhOitQqocsDRjlnLiMSu9Gn1Os', '0nx7MoSg7GisxV7-Y-Zw9A', NULL, '2024-08-27 19:14:52', '2024-08-27 19:14:52'),
(389, 391, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/emaAJ4twVDs:APA91bEkxUHq431bNuKGFJv0WEGKh7ufrtISGmfmBQci-PokIlJSxl3vYrerBgXWiiRmqmTmsxCyH5T5V2szjcA4hLQIsQ5enUnhWTb19OeEy54IyL7aIRYNJQT56cRdK2OdIwtpskB1', 'BEVOH-yEPqR5_n2jict56TRZ8D8xgpwMSS-uXCYqBCA4c3Z9Wx8dpzwfihmgfrpgq6qXiDV6oWb0D_9FkUrFt8k', 'zZboveNpatRFKHE-KfUrtw', NULL, '2024-08-30 21:54:46', '2024-08-30 21:54:46'),
(390, 392, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dSRSAXctn-Y:APA91bGchv4dB1Ak3GQgM--xKjY3yT9RjRncu3F22Bq03mg9XT99QDknPA2Y6Bee7CxqBhRvORAVJRbOJbjwTdLGwGlOXqyuQnmpBonLOgt1VIKO_F-QMIAaJb5Q0HkVIWzSHzh-elVI', 'BNnIJYL5WawoYEXc_5QTDrnoBVOAAF8oFAvILwybHiyLNxD6bBjTRgKvifMOVE-jxrFOgN826A3dVXhOVCP4mhI', 'FV29KxDC-ITlY_aE5zjmRg', NULL, '2024-08-31 07:26:10', '2024-08-31 07:26:10'),
(391, 393, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fDr_zhBtgOo:APA91bEm3GreJ_CtgM-8pmquEtLV1kERkNyxu_yQe0zP2i8BijFuEVXPL_NVexDHvyeN0VQZxrsxY5lSbR7wSUdueXu6YKd6dMSS3Xp283svQfnUxg36yZRFjYEEIDWxKluQ1uBrAdPA', 'BGt2Wesnksx90teps8V-Z9GlEDnrj0xZU_fBZYs8_WZxPV-PrIbtnraR0_CECdpa68BE8GUvCHdtI7auzvM1UFk', 'j9zyyTivnb-HpwjNhfl0mg', NULL, '2024-08-31 17:02:21', '2024-08-31 17:02:21'),
(392, 394, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eWOD0JQkTuY:APA91bHihAFMo2NwuF2EZyfFwxhABmLUzcrYRO7AqOvGTOajhM7Ef7qdcyNl1JPUBobYk6IsgNqD13wX1Z81n17MPZtC0NmV3zUW2-ilwtMWSoV--squvSDUWe3YDYO4aYKunFhwXmKU', 'BInoXlRkPk_toi74nN24q1sTxcVkUqyonuRsZfTtRam5E3B30YNGA-QfA6R3Puu7zmSITQsUjyWN8qmgjQI3b6w', 'oqwR9EesbJ7j2Ef5CHcfgA', NULL, '2024-08-31 22:17:37', '2024-08-31 22:17:37'),
(393, 395, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d9Cc_eyRW7c:APA91bFKI6HI7tRiFXRacsmv8t_dOWFr3E31x6QIDzN4ixZBrV5NhGHdmSZ-M4XlrTmqJil9J2pLsAkgtIWFqJZWuiDq8kCLNWVYpm8NhGZYYRPrlRJRCDZB2QutAisB5yYTYMpVPU95', 'BOOqv5RRYtDLGyQJ8xZ8LOCywvJ3nOLxnEsWt9IKSGFiFVbaewDf_dFfO-QnMCibFKxmb4YsgjeB3zx1p08rLDE', 'i4gks67m-XpMpMCLAZ2vug', NULL, '2024-09-01 04:24:35', '2024-09-01 04:24:35'),
(394, 396, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/duocsdhW5WM:APA91bEBDwhQzYg6wLixcpdnEa3jWXFerWgzitnb6P2stE3NFdlYcY2qOsSr-bLKK0FspBM_G5-Vu0RQ9rUJxtVh2sCqkKHtedPlbPhZsCdqH2BdOXzwtiNvsuzcbpYZAhpo8fZeXZlr', 'BCmpQ2Am9Ore3wL5AkYZl8qKqERTxZtZat0yO5_NnQc96ZddN-0N-nTFdT4utp7-ogFQqentIlZ1Quxpydl7EaU', 'SdNMBeam7eJgXpzVzATy2Q', NULL, '2024-09-01 04:25:01', '2024-09-01 04:25:01'),
(395, 397, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cWn84mqT-3Q:APA91bFa5EgSmpboxahtjkGJr1_675jrf13a_nc9UUxHZOxQt8-UlukajV5sSQvRjcWDfAHFe4Ry6rXU2l0GcQoX9_nXJNjPcEI99D1ie0mys3014o3DPJMJ1B0msJ0AYoHWeRlX4TZK', 'BN4ko1Y-4tipJPsOXjfVcO2pKuXk_1_EfAsjgMhFLCUaE14hwRmo6ps6ji72dN2g8ww9JK24lRfaMXTSahOOu40', 'RbNwRFhBDEeRRDzCx-h1jg', NULL, '2024-09-01 07:57:22', '2024-09-01 07:57:22'),
(396, 398, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ei79yTHSHAs:APA91bFYpZch7i2TUmDx8pgCFGBP9XHa2J_NKTPfrh1ZcgwldzW_xryHnROgH-NiFp1DvjurtGhw7-GIxkJIZc6iozr8elJAU0kzNp1W3gleJfvgG_lTWSWIr21BD7dhqZBwdueqkcYE', 'BOrZ_RaA_NJ7QNkxDOEN98E1OgtcMPFA0W7u22OSCfadGUYz3vghoh9FVrR7SU3zj4t5ga0hgiJSxOeriju_PfM', 'f3wSMhGLZDSalXIr6qdtCw', NULL, '2024-09-01 22:07:58', '2024-09-01 22:07:58'),
(397, 399, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/db3MsVsQsUg:APA91bESFKHTBU-fpPjeDY8SVfj9JuEYwv6ZuMp7OFFPOc25m1Vu7WMaIK-Gj2bid-MbKJZQpmIPR3l0Nj-UaaIl39Mr8Vf1EdmJqIo74Ahf1GZCyflcDvofJSxJXCXwmy7mdKGwrF4a', 'BMAEzl86qQj3_Vys-IeaKJvQuZwVvqNMjBWnfRQZWHNbA3k10_Fe7vqDVV6WZ2XbbaOpP4KYYdCreJ3lyLZ3oFg', 'oTg7ywGjW34CO8xW2P-3qw', NULL, '2024-09-01 22:08:22', '2024-09-01 22:08:22'),
(398, 400, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/f_WxbnhrUCo:APA91bFlWlUxICeixAoYOb3uHk7JiePt0a2PUHRz_fveYi_ZbecqExl7SDdEsuiOEN-LLXl9Hzm-lH0kNzL-ZAqVBCje-bLH6qwuEbbppI8DjRAPqpgEPyguFTVeVk7DB62e9T2Ftqa0', 'BHOqGWdttp5Y3PXKX0DUx5rSN57CwjwG-8L41cXYnikUMy2ouCGPNGUK-r02pTwD64VA7-p-Eut22BWjY91GOto', '5wm0AbforQpv3n3zQcdkww', NULL, '2024-09-02 01:57:24', '2024-09-02 01:57:24'),
(399, 401, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fxB_3sNspUo:APA91bHLDRFqE0AX5YjwG-kjXCnSQhbPWya3QOGZB5T1TL2XYNmv86r6mKopEp82BTpLqOV5R58IducSCyClHOC5tqrNaaHDioVgVJhXanQA-UCFXP7h7e7mjY5r4fB0LXbD6LXckxJD', 'BKdXSgS2oYs8vL1FNiapyFVMBk1eAmwwEY-VPipiaz6A7XwVD8DlGV4v9IDQ2NjTFhb6h5PIq-vIVvCTExM2WWM', 'OUe9OZvCGejLZBrU5WQl5Q', NULL, '2024-09-03 02:06:12', '2024-09-03 02:06:12'),
(400, 402, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eUTW10Fw3gI:APA91bETp2ZPaoDHN6qoKNAvRGSuDJQX8KnWu5adedYaK8hJZjdYd1j1XKsAqWD6stvXGaFECapombyJPs6aYsGYcDsSEn5NSAzqBAr4x0Lf5mX1FcSuQpX_Mfu078iEyGP23Ra0HDC5', 'BE7BBYTtsDcIosmDfETCsM0qeiJaFyHm2O_QCNUomrtVE1gqDEtKa6TbInoXx2JWxqixMKvCRi34qlUZAklHerU', 'tBeDOagVotyehg0mwMLe1A', NULL, '2024-09-04 00:51:10', '2024-09-04 00:51:10'),
(401, 403, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ebBu6YWpYHE:APA91bF56cRp4_GIkRrKwXK7WA5kf2t-OWpcOdij_bmrDbrcj0g9LJ6ErY-tYwDvaeCCysX1aQTlT2LeOLzl2P7KJeTF9zpxUdJQLEXsfF12YjndT5z35Y6tc454xjHM5nVpdGGPHfe4', 'BEqw8g5FziR9ZTkah5HDrpSH67bLA_QYC7RYpHkOGcvTL-st1S2HHIOdsBotSRBtQ9RuxiY_06fFvc4ZFt4RbWo', 'E_mjQ7arNW3S6MxSOHtBNw', NULL, '2024-09-04 21:00:06', '2024-09-04 21:00:06'),
(402, 404, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dhrvqMV2_qM:APA91bEMV6Pe2BJinRplaPDtqStwKzZeRVE6tJNB6WQNklhD45AUecif-184czSOFPLn2ab5xKqt8WwXxDUZeu9Iuvr5YcIh2GLCRBQc3MUU5ySuHx_SHN5cP5nZTYA_SnknSGIY-5-u', 'BIOa-w_MWCUheIIEB62bKdOBfkN9qxG8gVYWA7UExoiP_ULwcy6Nlmhgrv7WvRLrza55CucU9IlzPEiTKSVo15A', '81c006RgkfcEb5Zw6PqLQg', NULL, '2024-09-05 00:52:35', '2024-09-05 00:52:35'),
(403, 405, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fdEk9oBN1qQ:APA91bFJ7Eatv-oa6jBLtIbew1TwDmU3F-K4A1JHoQnuiGEOKAi5h7sPb-LyXaKK4PN71SX4t1j6blJPSDezBiyMc0kuuAT72J9PKZ7gIyQJru3k_bLaksW28zNajVJK2-lYFCY2nfms', 'BEy_aHlMqKngLl6RX0XsOMCG9y8HoqKzWEZIozcyZaPi4nZOuFN9VyeAPT3QiYqI5QZqEKqmKM_ymF2ScAI-5Ng', 'ew9-NxYFWwU33BGPgKxFwg', NULL, '2024-09-12 16:29:16', '2024-09-12 16:29:16'),
(404, 406, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/diKAzKxcUKM:APA91bGnDdXsDN_yMhm2xmRhY2WNobtpgEsC5NqrlLAWy2yyrUnLsyoIW-ZAHlRw7k1TOJi2i2f4NygYbkZpia_LQbBngccPztxBwKcJHpm2oFq-iwfhhj-XxpijuAha1x7xFSz4g8z5', 'BP5ch9WnNCCoNriCoyGJwLAgUkUk7iBXiJx4I3qAbcdLByXGZ77ne56clIiuseXWk32eDu9AbZ2G156_0uLR6xc', 'eaL0uCnQ57Xk7XEHitNW_g', NULL, '2024-09-12 18:43:33', '2024-09-12 18:43:33'),
(405, 407, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ebhd2SoTIcU:APA91bFo8unIH_Y8fOhtww-H7nsGwu3qeswsczzcfZFvfMvijMAchyORs-qdJPRwcFIXMp0v9Nb8putur0ri5SfTj6wbwGhUlc1rmy61CvnOpnCvKsDfjE1JHEeql7cKjtjzsCe6x8zJ', 'BHKF7lxpPAaE1XDsD-jRBlIqN1hyEL2aIzP0zdlO-kVYiqOlYzVBhaF8es2RWHpLpeiq5zgndivGcd8_qh7VwRo', '4zd-83fwP5R1rUmUYdlAwQ', NULL, '2024-09-13 00:43:04', '2024-09-13 00:43:04'),
(406, 408, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cAfDOBWBUdw:APA91bGUbNj81Uu0yzffXLycXhA3b5NT4wz52c8ksG6ySw5UwpoynhT_TOUdKOKUoY-WCHrllm_UMRRqeg2d-4eVBrK97aCB_u9HifI4UIsa8YA_WLHy1A6QnngNfGrBdEn2Pbsdg86z', 'BAHTHT7asHpuyyP4kVYry4BHwxuXkOcifhYv49tMDJgcXR0NCKdmdegf0MXgTjhTPnupdSar11mGB6rHcsQQVeg', 'tsUEgl-7X4YkX_Tqtl4frA', NULL, '2024-09-15 00:57:50', '2024-09-15 00:57:50'),
(407, 409, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/e1wPP2CkLmw:APA91bE7g1gq_lrjNydJt69f8h-2t9sD2hTZjlhU55QGtS98eDI4L_0vDSfVZ3juYavfeQdKqYzmb1r7oVl3Sq2g0Qz2p8eP6VGITQ5oAOFvUNV8gXjhaNoB5gRNNPVpPrEsZBf5HQhh', 'BAG7ya7EDKoZozdauNIOB1N--yb6DLaOvyLga__Krm3q80UOAlHgAYv6dx84-qCw3LWTNCdRMZqe2xzqyrwd2N8', 'Ws5T5DyDsqt_CmO53GKsow', NULL, '2024-09-15 19:16:22', '2024-09-15 19:16:22'),
(408, 410, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cYLvT7HeyzU:APA91bHlid2edIKu_vG8B3Nj7pZcIylDbu--r5faKUdQMtu32jv2NnGUXCvB3s6q13M9DIJO1_r34u3Kco5VsEmjGjmrD5kLQ8NGaAeC5Bd4kF7oA4MTz1BtFk9FKJNKmfYXi8jBPokB', 'BEboPaFSImNjfhCsjJhrFJIUyIZB82HpMUwDh_VWueKwBbz36NzVxpq3GMnaji6iMgzgYqVwZi2WOeQYlEl1TFw', 'BS7oSIgam0Hw0o2-glsZ9g', NULL, '2024-09-18 18:53:11', '2024-09-18 18:53:11'),
(409, 411, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eqQegK4SmZk:APA91bH8R7XjGryaLNafyEhKTFBIn9f_au7q22Qxn0it7X0XyrCv2DsQiq5oUtiG84uUUrzio3a-3hx1RNGvz2GD20kpDHynCihI8T9ynUb1xnrgb-xFtwt1w7Hwwls8-AUVmbUCIDJi', 'BGRGqO_JUZ_XJycSMBogbOn197InfvFJ9ZawZWXJBx3KKVjaQOCdMVjHY1euiAG6OrkH-iNhmsueUhxvOOxDfDc', 'Qkq3af0MTiL44Hgk76f4oQ', NULL, '2024-09-23 22:33:35', '2024-09-23 22:33:35'),
(410, 412, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fiXLWDMdjD8:APA91bHp-SKg10Zpbr5gm4uDxfK62LnxrRR3_j46J4ilPISi2jKWffYyJC1FthmW7_QEJ_KNnsuHTjQ_pyHSVFeG2TC4MzuSwQpFhx8fLKryejHFaqihc4zFd-q8cD3oI3O8c5FCycMf', 'BMJA1V3CiVtWShOuZSn-5coqXWA4Hc2VAWmroj85w8RG__AjqX1y0n2Zwh7XYcnV6i5bXVGE3_17hJZJg0OpC_c', '1WEW7Wo-3fD823pxJvj4iA', NULL, '2024-09-24 20:42:42', '2024-09-24 20:42:42'),
(411, 413, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fpsJcUh4oAk:APA91bEIQ2y_CApAjhedfbcwXK_R4DW2Vsxr_F2_b0mSDrFabJ1CAQUpvZyF4o1_D95NkWgcLPjMqjLl4FTUibdDHdGkrvBnKLONH32kOuDD3uV3WG62lPMMcCaB2a4_UYMQMaW8-qI1', 'BHUZdwFK4zNYcDCyuQBpNRVAmSszXyvw083WOAS9WkNS32jJHqosWZEz7eElyP5Q0gJPBtQaWwbbTfjqI4PJ7oA', 'MiZu4si2nU4TBQx6Vf09eQ', NULL, '2024-09-25 03:44:14', '2024-09-25 03:44:14'),
(412, 414, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/f6q9zTRvGjw:APA91bEaJesM1iSgalcnlLmLNvcJDJS5l2kmBDB1ZS8AgCZ4zoniK7rEFva6ZZaN33RNfUFFstHchxjVjp-9ow25p4Ot0Dw2y9uKjUAQ5_8CMhG05DdwpxWXi9GqPF0oWQfBiVoiNXUD', 'BBUJhlFw_YfQG85oxQ_esvI6o-VZg507x302kqHMaw-8ClO0fzZ1JySXfYqas8i9g5L-E7kbU2dPZ7e405KjlhA', 'dHynYIEJO5C3JLv-_FHH8g', NULL, '2024-09-25 21:27:20', '2024-09-25 21:27:20'),
(413, 415, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fI98smzu6Qo:APA91bFpy5LMyGRaAXRTctFltFTg1lChnF6YumeAonq6M2_vUJSsDkxreVOX71CoeFiFSU9q_dPjMJAT2W7yw7zEJ1TKt_Z3Fkhg-Vhqs5G3nbTDgcB-Yot9cdjeF77WPZRLYhUvuOba', 'BIy2Zay8oZ3H0fy4x9IGbyG9cFheKBhFUFk4_Te3dUZvMlV_10xRqfQsDcNlJLths3eqoXRTtW5mFOHRjwqKeYg', 'iUFb1A3cN0-Vt8GQLA6p4g', NULL, '2024-09-25 23:48:41', '2024-09-25 23:48:41'),
(414, 416, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fCtDUqT1Ls8:APA91bE4nMo1z3exaRg9-TYiLIIo-X3CasxnkXBoylcFBlLUB9bYvJdvXaZYkb8gVmuSzDCHA9ouK6MgtN06_Y-KRzIzlkG-0ffd04vPtBJ1rX856i8EW6YV-zIjSunqS2cfwlCb1a-Y', 'BDZUxSLj2MEiUNhWQSxzfQe76MMBEjRweBZCFpuM0twhtiYvREs_1lZocQR6NXYAqIADyxarB_dmqGkxQaBZlfs', 'ysjvRyyuBDZDNc7kiG4ZCg', NULL, '2024-10-01 07:55:37', '2024-10-01 07:55:37'),
(415, 417, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ezufV3NzGWI:APA91bEV9qeAApt1ZSTHN-Zsk5r-oDOWuLLW7etiFTNrPw6XnXLyGoEl7SrOAGOpwjm9DxmB7wIXV42I1vYNewNYfAMh32mpZm05Vl0MvNxNM281ya7ejQ3h8lgW6ISZC0ZCys2QxvHf', 'BGlQVgCmxD1-ks2-5068K7c-eZLFO4AwkB9w9fm22o8jyBzMjenTAPMlX1Fire0H1gnY3hphOmOcGIzdBTPyVbg', 'rjKRsPn9NK-oUxrl8Fixeg', NULL, '2024-10-01 17:32:27', '2024-10-01 17:32:27'),
(416, 418, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cHSGW4XMo0A:APA91bHyTynEqgt82XRVre5PkuNfhIy2ODcMWNI8rC2fjJ2ZQoR35VE0PwaZ3dM7RTLPvI2w24Byg5n4A7cs9Ms7RPZJaJiZaC9xoeL1ixDDFjvnh_B_pDWIL554QktRUSP4DMiKCgc_', 'BByJDOT_SCY5cRp7ddgdLOvxjGKqvrMoB6WlItwHy-j0ccQ5vmAbDqMynVhrxmfqigU5jJXCPEWesR84ebjobt4', 'V7dROYvNFrDmRfOIt6Tzdg', NULL, '2024-10-01 18:09:39', '2024-10-01 18:09:39'),
(417, 419, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eol1mrH0UIo:APA91bFNPVBp8ksUZNaHhgNHh1r4AlVLxBeCaBvzC_N12Kcf9fEp0nDy8Ix-ugEZ1pGqgCj2riiwbSW-qpuv5_Tjc2-1B043WZcYSYQrh9szXAyrYinHwU2cZsxiqaVr9Kx1tUDKBDnJ', 'BNG90evWd6tJV66SlwM2f1OlE2xSldYfM7_r14qPsjWAr1_GIP3CajJARU563herWdi1Mrlw4pONmIEDVOvedxk', '-GTYLQDfMqjhE0SEg4WEDw', NULL, '2024-10-02 23:02:42', '2024-10-02 23:02:42'),
(418, 420, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dDhbTm1GyUU:APA91bEv8fiByEyBfy6Vz-wekwCT0kwxdiVObkAlRGIw5jcfDJHRy1UsVtW6NNavUaLA9is5Ak-IqfBDaXNux0ip52tiwcWVRDvtHtRnYHZ5jAfGhxi8_ObPqHgG_nA5WA1-u0-RIq_1', 'BD9aNDAVkWtvvOTkWW7YfxTwTJpLED-dFn7RdZZmz4r0HzWxewqmD4UTd_SDl-ZXuSwr4ClSd8F29WpXlE6QpNM', 'wdlNixLjSZ7gL2jjMzO2Lg', NULL, '2024-10-02 23:04:09', '2024-10-02 23:04:09'),
(419, 421, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dom73Jxh-FE:APA91bG3O4lXjp9VEp0cL-H1HX6dzAqmtzca9chE-mECqRvv9QXe3zeweKL3TOHfDrRXllcFMXDBXJgeUKJK05YsCm1irlq9-rtn7zQGV_l7zYxtUWz8eCtd1YxKrB15WqNKdGy3pirO', 'BO0jPCPXccT1lle-41yYEv15gjUYLb45p6jA-6qeho5YcvwTexSZG9yJk2GVg5fnbaDMEvrZvQNav-7aX8WQxcE', 'pI-KQtJSevwnESD7YOu3UQ', NULL, '2024-10-04 14:41:56', '2024-10-04 14:41:56'),
(420, 422, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fKPX4782xg0:APA91bHIlcuHEn9fYN5iYtcA6lSop6At-Euyv0T9Bfaoo8KMftAoEGRCn14SnLwMNdWCHAsKRNdgPy9HbDaK3-SbeO4vg9apPD3LUITJsNS0o4HlO6Eh_XGA24-MzjVTZO6qH0qLh0ib', 'BA2iA0bIUA5ysKMokZvctj5Eck-UZ6T_x9eg72EUkw6k8z3Jk2DC_8snN0LSP6Ca79jK3BHAbQTYKi7H28MPJFU', 'd_ioBGQJT4HmsDcrOtJTQA', NULL, '2024-10-04 20:46:49', '2024-10-04 20:46:49'),
(421, 423, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dbTABLLfWmY:APA91bEfe_PL8piU8CwvhnVo50iLT7NUm5zmEqEVSXFEC97M4KwHOwztmm9fixKjfAp4kEITMh465BF4tITDb1ghcWbAbUpw6NYu1MtBgodqPKt4GRgaQpdaJVu1PSrzlkDi2-skYZFo', 'BKlztxkGSU6lW9WdB3fyf7K1rfvIITtLNi-f3H5aCPiCWW1iISwP4sInH7g5fWYiYMgeYhPtWZyYVMaGk4tyyB8', '8o-FB_KfDfxzrHlEme67iQ', NULL, '2024-10-05 20:16:45', '2024-10-05 20:16:45'),
(422, 424, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cfNNxoZ3Sn0:APA91bH-5rS4bnJy07uaFDMsUmzkbXOhg-lRs-_G1j_zE6rJJ5zMOpeMz4yB3KfExjGSbumSC9xI3DFegY1cFwbv9lSpZHgPIiT9Z7kd3F9F1lp8BYUZtySwc3FDTVguOtbeiG5PFEkT', 'BDt3xprJmGkap866CrbUHY6lw6rG9Q9Ss4lG-gKgrQ38ci3jdue8dgiL0cSp0DiMMWp3h15GF7Q_rPchPf6ofUY', 'UvmTUVkbgSNPM_XnG-LDEw', NULL, '2024-10-05 22:45:59', '2024-10-05 22:45:59'),
(423, 425, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/f_WL84QCVgs:APA91bErC2MqDS2VXUruNuzJxrsYMI6iUDF0I4pIVD4uJDGkuCNsqZEagalGhZgt1DsBJ5ArumFJgY3dgSp6EM-mgCRWxM-Ui6KszOm2EgxfKZFEq2Y2gPuQbGRK49wHcBAvC_ehmc5L', 'BCOeWZs4DDqnkwTDxZYP7JAM7FU6RtgC8poWs7vdcS3_9AOTdBjg7RWcS_8C2uMDic7YceIWwXca4bLOScGpQT8', 'kkJn1sfrM8YQNH_2jvfetA', NULL, '2024-10-05 22:47:01', '2024-10-05 22:47:01'),
(424, 426, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/etcNzP6OvHo:APA91bELeyR-2DAP54K4aWymx6ulLViMTh8BMOsuJScWhuw-DuXvtGaw7_QgNPrJkUxQ3-KnE_58rEAjJ9OBtD-TXq1wU8lGwEJ-7K7LBhj0-k-j8RVxroIOchOUf_6cdRdv8CQxn6Sz', 'BEZfrK69qY4jzhHB7ZwiIgpWwIyPiT3Ed8_P4Tz-22yF1F9x_CFCI_FNhVNlS_wcNsw40papyay8sH1-kLP0yrQ', 'hXka_c4AXSxcKA_OVoxoYA', NULL, '2024-10-05 23:46:18', '2024-10-05 23:46:18'),
(425, 427, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d-6JpAyUV9g:APA91bE-2a5SGm4qFlEQGhvpR5V4Ccr7rb6XOcHn5c6GCzYrGvIn1azCjo7Ho6_iiNdUS4534QPlPLlCETb-cXoQ8iSv72yQyUQseSmTAmaMjG56sM2RT6POXGmkcnXJEw00vYkWUQa3', 'BBJR90LTCT9trc_KV0I0Mw1IVvABUIbpTHS0WuYuPBBMNtSlhr29EM-A7-llXcKWwhYvXS1Iv5zeR6KSOjdfm4M', 'KqUnFqPABuUf5SRBRDkmeA', NULL, '2024-10-06 16:14:54', '2024-10-06 16:14:54'),
(426, 428, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ddFh-SCDFto:APA91bG_OlD5DWM-B7mhnmE1BTw744yt9l5Tq6WrYW0XqpNAQA_YjFK0DwqIjRndXXTQMPaLibw0SgJZCzWyCg5qMWqIu-dXIxSouPneoPGfE82kAY39AwG4B62kPDNimUQB3Mz7ZR52', 'BDpskEyZR40xX5x_g4Al1AUVBdfsLuQ-dPm0e0b3nzgCjW4G8wY82xZobooKbZloyisBMTFAAucX7yAwI1rdZ5o', 'x5aGNhhEpIsVyxAJUwq9Cw', NULL, '2024-10-06 20:32:34', '2024-10-06 20:32:34'),
(427, 429, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eawry6DsIc8:APA91bH5lvnqKkDJzJ13xnw-Efv0hrIJxbvvACl8yyKCEOCeELvKorNAcNbeRGPAF6zLW54DD-J8ykUrj_54d3_3kCzliJA7Tw_mZ__3-BrNQUOLjP4aC2wFQPQPNNWxs1Rj9Vmx0xOj', 'BFrrnZWdHXe6OpsKGCqQSldEQoCys3Ezd33Qr0sz0Zlfcgwln1XHm96-BtJDtsCP9X_nEQwS9i7s-nLVYp7ueDg', 'HePVR54dw4TnoYeIVqOJmA', NULL, '2024-10-06 21:23:48', '2024-10-06 21:23:48'),
(428, 430, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dUbWtePSCro:APA91bG025BTaOwImgjvSSBZEkdFukvH75h-7dk9PiqhfMIY3ZzcYQe7N53_9V3exdYxf_gRncO3xpOf6EJ0ffnDG18d4-y_F0GPSgsgjvffZTpgTlnHksp6ObeXiNsLjlOzdvaCgjjQ', 'BMfplVCGu-mpUAMpzJi86zbklp1Z-dDaZ9VdK4owlb4n8tRSOmSsM3Y6mWBNswro-dtoYHNLk1YDoNeSg8A_c1U', 'VDXTakn0Y7kt7OLaw1eBcg', NULL, '2024-10-06 22:45:44', '2024-10-06 22:45:44'),
(429, 431, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ew59knFhnJQ:APA91bFQeXehTHrCHbBD6FGZekuuz22HHYeO41zTo2FR8amBzcJakZsmRSRviLgKYPHJVFqrLZHXhOGFqLP282Lxho5RzdSPfPg-NpAXbgOgdIk8ynLxFa_f5NFHkp9Eq0j5trIB2Bos', 'BGTwHp4C4Qm9uLbdDrl2n216g8epYf9K2hy-aUfHEcftX4zGtX0PE0OhQ4xJtrJaMk0EwHKcFXZd6c_xDh37v0g', 'AwVYScTr2yEJv_mLAmux8Q', NULL, '2024-10-07 11:47:27', '2024-10-07 11:47:27'),
(430, 432, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cuhTA_XOEw4:APA91bFxLZfJNtyyYXXT27HgmwYjTJ_wRVDm9ZdyX6KeTMz8hIXvvdPbKwNXtKzFJoVbZei3_5PxXpVTwunziaOG8eMluWrjZ-NInYEyHyFWY7lyWQqNySgiW__mtUOiif5CY1W1cPsa', 'BM58sWG62rJDgi-8l0as0cqMYoNPMCG784cucXn4-W_B86CiLo2W4YywVHMc40riapXb4GvOiWhPId1zojDomC8', 'We5li1yyjl2d1SyNfrfDVg', NULL, '2024-10-07 16:41:37', '2024-10-07 16:41:37'),
(431, 433, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dHFHt3sVJ3g:APA91bFmNnHyNuFQEuBxYhHJnswDgcBGy-ZPsz2IobDS3WY389rShChrtkbbHnFFkg5lTksJjIACX9rlV7U86oErpyiF1-htK053YcPGtg5KCWSx8GkCsO-pSB3KEgoie5kySIlSk1X7', 'BCtPHa6bgsOGwhjeNSrrUeDLmLLfMIH1sIZHFYGHkfJueYIigr_HyOIo4tL9H9kadFr9sdbzIsiCd32cxHBqGm4', 'jY8cjosV-mHmg-isnNa26g', NULL, '2024-10-07 16:41:48', '2024-10-07 16:41:48'),
(432, 434, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dO3X7phA_pQ:APA91bEiYW5HOqtvwMqC63QmEYWgvyLshdtsBIGDATRC6XO47KEsBi7-OMKRBFu_cwZEz4KlC5eVO5qXSIQSzSEtHk3PTvq8or3eTpDvOgq5yZmOEofhHkaS-GLhisLKTaUwCLvSEjzz', 'BCWrdU6Y0kgEPR_BFnbcZ7zL2BoSCMUakX_cXJeJUj06Jze6Y0srJal5_jOVf4WuZ6oA-xDD9Ng-7Gf17UV3y7Y', 'jOQJdhfKwz5J6JEyQyq0TQ', NULL, '2024-10-08 19:29:59', '2024-10-08 19:29:59'),
(433, 435, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dWGylNmB3sc:APA91bFJK8OBwTMPU8cguhINFiGXcMT3BnYGAPal_0yCuHubJT6NIznC4q2vjd8sVonRDIGB09IWdZnqC29endSJXIHV-To0SQbtL5cif3sAvWYnPjBP605-NOHVzxwH8vvY3M398jXp', 'BPhDntzHTusVi_wQEjZ7rBt2f7cksy-K5yj7GAEIJJSZ71fy7W35Wbp6tV1BXB58KJkkmevkP4jOmqlEAgp6ieU', 'pSRvAEUlVaC_81xtL0ryog', NULL, '2024-10-08 23:28:57', '2024-10-08 23:28:57'),
(434, 436, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/df7kgkHDOrY:APA91bF1QR_q8DC63hHyFGnXHLQHlzKnOzW_2PB5r8h2AQc-NL9LX5dGC-qJV9STs37F_9-7vR1Hagst_q3Ip9563lAMP38e7Fxq4BR6pNzgoq4veDAecnh0FCsmMrvh_9BIGY9mcgSo', 'BOfgQkr1Xu7WWVRfn_M-Ab3APD4-CrY2lmAg-kYDEqcKL7RETRTQL9ML1QaMmjEQVcGWQGWwBykhH0OBc4OLKlw', 'SFNe07JTWeOQ_huH-1jmoQ', NULL, '2024-10-09 23:02:29', '2024-10-09 23:02:29'),
(435, 437, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c-aeFxsMCy8:APA91bEl1Gbf23xvclB6fSiYR-k8cewuGi-uwH7kTu7gAUKnGcXLkCHPW9zIbRPzhTdPRUaPGrOGDY_357CJNXETY7gbQPdat3gi5_77SORddOgUoqSDLCgTdDNYBellZEKehY6Q5MLy', 'BJo-mhiHKGX6zrXfXcOz7CjN0cGCB1cyqZT39fIjWoQNIZWvwvBAa6oPI0rNG9dCkflxgPSCDQzjNiQppy0fkKA', 'RfwbbkkIYJ9bSdv8zqMm7g', NULL, '2024-10-10 21:13:49', '2024-10-10 21:13:49'),
(436, 438, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fkke7aCMwqE:APA91bEXwxomlLNcSiZmyE8FCaHaL0ta5PfxqIwv6hJOJL8lzM0fN4QBvETeFhi5n0doxC4ekaimQewg3m5qgMUJqpG3xb3imi1ebckxPJHOQyRhtMTfbmn6OR6lVPhA2lsZtkTNAZVM', 'BO9EnfCNL50tEFNxai_TJcqHQj2-kW9IJlegyFNCvcIGGEHOmTqIv3mq7Wru_P7lVDMDWKSprlK7uikiob0KKF4', 'qnzw4tJZghbgpaC5uwCwlw', NULL, '2024-10-11 02:12:10', '2024-10-11 02:12:10'),
(437, 439, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fC0xr4kq6yI:APA91bHXQSxOiYSCLm2dI9Di155MqLFQ_uDdKfJOXwB5nUTfKd_wG8OXkdGZox5bVqoOB20s7RZVYxLtOj5_0rqBlYhhIZEPF9LFgxhqzbg097mlVQd3nDYw2M3ioRho5r1zdcFs39k-', 'BJ1hjeh4ufHkwjcVyR52u9u6QVG29D0S4lAa_2lqztCXJht6Ax-NkbudcDQQ-Z7isrhjEULt1DoTqthAza6IXUA', 'LRRRCXQF9nfknCQDrtiH6A', NULL, '2024-10-11 06:54:31', '2024-10-11 06:54:31'),
(438, 440, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/esqEvuYzFkE:APA91bHW4lyT35ZIY4o9MI8vYXJTFp78CBkcky2_3jVQIHjyzNxv9e_LnC5DTZ5nqbbMcEPfDyufabtvcyJY8M5U-dsXDwTW0_Q6xOE3n2ISXMsPnq6MaigArzwqVjcD-wYVKX4kESUx', 'BBDlf5EippJd86Ukbb4EV3wO_I9NqMJF3Lwfeu9s6YeyDZ28CJg1fETqN-FZjohPrtmnwIp2NDK6rxjPJGOG7M4', 'GXVB8Xwuqtb8G9yG0vPvWA', NULL, '2024-10-12 04:39:32', '2024-10-12 04:39:32'),
(439, 441, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fuCQjFDFuLE:APA91bFaTlcj8iHjCoJvja1RwXloAReIaERddK8dTz4_dJv7ENuLbbBIPeVp_okNH-OFFUg9RaWTx7kjQIqUsou5ph6ii0ruSFDULtKROsI-RmS-A2d6YBiaAWh5FwClJtnfz-cFbszT', 'BK5xvq9GcqRrg3x27KvysAVvpvg4fNwAFzfTEOV5MwjhflQ1Ye3B94a55HQLcRqtHthljXccgSBrnCXmU8BPsvs', 'BXNbqNA4P4Nx0eyuCB_wQw', NULL, '2024-10-12 20:39:30', '2024-10-12 20:39:30'),
(440, 442, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c18N0q79SwY:APA91bFvPXludDXl-UEECHqwTYwMllEQ6l3T5ncygQ8w5ZqHiJ8eefCJbCaH-y6HyPzrPIOiRSHoIBo8IYRrvEIiDFneFdBMHqOpx_alwKazOHOBWIOVJAMB0Sou6-xU7NEBw5MYGpyf', 'BA-tuEbAr2KEPLT4aCoFGl1vfTFPuOL8jWOZsQFufImCEi03f3m6cFXSzg3zPGhOqyEUUfcDlNLlm1_8kpwR1yA', 'vGKMeAVXAZy8TFSI_9pUNg', NULL, '2024-10-12 20:58:24', '2024-10-12 20:58:24'),
(441, 443, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ci4i-bzVIO0:APA91bGcybIi6YWJ8o9_r-f10Qh-eJHqhgX1BokXXGRi5SlSqdNUxTRFXyObsHtHg8vXnhROQpCbPRiOHAkF6nTQe84un9dBO035BiGGzO8g7jOq04lQeCEjykTrupPPqsFTXCeQMc0I', 'BKLPPUkz8pTrrZS_KKIqAd-Bj0tlpNjA5a_xa84-H5K-A-7dCFrT0AXQTrFuUYXEuunf6I_3SikPFgiX-dtOmn8', '-dIelfYzwpe7CJVOqkc30w', NULL, '2024-10-13 20:24:21', '2024-10-13 20:24:21'),
(442, 444, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eNDBLfWesSg:APA91bGGl_uGs3PWWNw2IS-GZA3YtD4Yefd2Ht4oM4PBLaSf5XO2hBpN1CkLZlbzYdRnHhAkeh5Ef72dqkwWX2juRKLdm2OuEjoNtQBatIQCnqcTtKRrvUiTm7KaUD3vHyFFi82pXZjI', 'BDhxgkGruMgHNquIey1SJcVVMJINeSf_3YiTT2CduGHd7TuR1u0sMKG5r8azXjAeQNejwlKsZDU7tTeGbVgo3Yg', 'C80Cl4b5BWc8gOMmMVSMDg', NULL, '2024-10-13 23:01:38', '2024-10-13 23:01:38'),
(443, 445, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/f1rkK6RDvqo:APA91bGUjrM5yer4DzDpZpl8xdcBsS5CrtdS-8Z9qvlV0FmoKgVW4LHprKoy6GQRqBqYzL2tGNCbOeB1IjTI645SuDfFTA2AFLB4FzObECLFlCSpq7AYV06b_VgekKM60Ea0iXbxJl3P', 'BLebO9xbpgR69lHPmTSPq0nSNUZTirr4Q-uH2NsAYcQ0QXCqHGYtXS9cU-SIlcphQVX2r4IjTmQXwRJJOATcDcs', 'IVM7nw9iKQfzL_DYHenGRA', NULL, '2024-10-14 03:06:16', '2024-10-14 03:06:16'),
(444, 446, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eUOiNbvsyN8:APA91bHvpc0vllo-vhEPvPahX1g6Y2dOK6wnWdOkXrt-WH-mQfEbNPFBjmbF7HVhIo1mHw6ciaG1eM_Npkvmhu3yUJyDbCl6KzlPa-M8TVoxoZn4XFuo05J5sY-2PH1uqw1wFd2fqnRg', 'BGUZoOs7IdzTDgoODZ2z-S1BQ77e5iGk5LUT9OkRvuGIOsjnIg1sMxE9wO4PyPMQ60iTSD1tvtIypkEyDoQyL4A', '1zMAr5SLVRpvMf18527zhg', NULL, '2024-10-15 19:15:22', '2024-10-15 19:15:22'),
(445, 447, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/f7fYnyE9BeY:APA91bFYz6kqf3eQ1O2UZH3pttag8XiHxLzEZbddGoT7HBb3mmR90uaGh5ILVjJD9lIVymvxF_ssM277JzcDQWkJo9LqUe7OJBinr01jdc-dT24SEHxLKpxb_g2Q8xerab1_IULVsRWQ', 'BNJI2N1198LFy9Gzi7hSYfh6b3MyNDcSvQH6tZ9z73TfoBJI9H1clfwl_3ejOSHeDfVKhgwwZ3m0FuK73fITZsE', 'fdihwd6QmfYfOBi5jTx4Gg', NULL, '2024-10-16 14:46:44', '2024-10-16 14:46:44'),
(446, 448, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fBpOUowBabo:APA91bHJeuIT6vSVcXEffBAqpYJ_VyKAH54_iIqexqV5BM2sUcMHI0k1KBKmAAQj0MI-ecXZpd6ppt6FXYx5A78dox2lm6OhzzQz05c4_gcOH6XJlhNrRd4ILpbL61cAWpkyHRth4h8e', 'BA5--dPn7T0qMQ1leypMDGC9EGVZLifYc2cj-vIZ_d7e16bVMeINUyrhQfliqyml7jXuAqWDfWXdPOQUHiB2fBE', 'dRKN3RObc8rLhSWpjKFEag', NULL, '2024-10-17 21:28:16', '2024-10-17 21:28:16'),
(447, 449, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cRUxmo9HO80:APA91bEYd5_hjiXvFzre2QcqBu5_tzx7yRbPngjMe0E3Yg8Rq9xrr6O_c8XYZmNXfW1vj8IhKWvUju419heQEHhcZ26-jXhWlRgGxefCXps2AieBQkqk_7FeMBwTg-jk03Rj-BgtYCpd', 'BM2iFP7NLBgPG5n_XXRUdxppGv6jUdkIlPwkpwo9_azNknvPmZjN0QFMhVeft_5N-FKB77rW1tTx17DJ2rVvbCY', '_WmiIC57JvhxG2S4XeuM7Q', NULL, '2024-10-17 23:01:17', '2024-10-17 23:01:17'),
(448, 450, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fzKRofOF8lM:APA91bHlAybZY7DTbrejLbMRoOXXz1MBjtbGUA68bbMqmjGN10ZEEHuumetvh7jRJ8-U-zW6FaSHfIN7rqzNr9O6xfSl-26ATN80cH2VC_c4byEUl4EUkK4iFnc60WYqMwaBmBuOoO4g', 'BB8Bg3WBlIFn7k0rVK1ynkFCC7IIDir76PXFEmlGdS0WItpnHvyUuXAmePr88-bYPI5hgk6ycOqyl2PmSCEzucQ', 'UgzQezmx2bBcHlfvQubgaA', NULL, '2024-10-18 00:40:16', '2024-10-18 00:40:16'),
(449, 451, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eXX7ECG5q_k:APA91bEF9VgGU6dRi-322NsPcAYTbDRYIRxh7ur7mvy7PUC_5dsCsKaDnn0zPcGaJLVy6vPzONW9lTvUY1c5u2qlXevIxq264pw2x5qhwVNs5HXiZaoLXCWcX0MU2ypgEGTd7-la8dsh', 'BCylkrSqNRioyY_OHmxfZzAtk0TuSyXqh-Apk5KTAndy_xBeKY5YZLcu7JLepfLrUwiYADS88JLWm9pVq_bo3vw', '4ZsC_3ph_lC-X7hdgUDSCA', NULL, '2024-10-18 23:34:41', '2024-10-18 23:34:41'),
(450, 452, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fR8fLUaAPy8:APA91bE1I0t6uwj9gETOJuAf6XM64VH8FDmSvH9RSxch_jAoB47ueqwRJ05GfRTMfEKeR-9keThSkweVy6ClYUb9q_rEMb2qxYfIDREKFVndNLNqDu1FIisIaJ9TowuLajxG5CCJRjG9', 'BFWZzX3DBst5Ad7EMk17rwZ_2mXhAch5Pg-gZreYR-1F8ytSJ5eez2E-ErnOCex9h96IlVU1SIR2hQ7gpIDNd14', 'lovbmu49Btr25vG-hGekcQ', NULL, '2024-10-20 03:07:34', '2024-10-20 03:07:34'),
(451, 453, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dGllDujUWQM:APA91bGjUnOPjwUBMtavrz5g2shtBkCtWZlDTM81cpJGCiUnJE24IBegWepk-MC830aM_FwKsMoJN6mY_2q5F6cKVrhFkrx_9BaqzdKp_MJ5q4YZgl3zLMt3WVRURpLs0-VsdX7lorGW', 'BPfJMfav6oAgPmLd-bM6YpFRcVJREE16AMU6f5HuNDajDPq1KWs_xmGWsdpqtJgd71l7VAoGWbS_L9I8Y80Un44', 'M3YJ1vbMSfnR0uxAp7OIZg', NULL, '2024-10-20 19:59:30', '2024-10-20 19:59:30'),
(452, 454, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/caDuoecYkSQ:APA91bEXhX1JVsQJVkBn73_AgKEXDEqBuZn09ei2XqgrpkGBHA-Dfn9jaVC4x9PpkBRVMbHkfujkP8Vs0Zg7fIkLVplS29Jxn1nR5TA5S_uiy8BKDtJc7v1VsCs5cowjZ7lQSobrxccN', 'BI6k9b6m7mlQI_qw6oAl2GIqKrIwuxs7hIfhu4n3cx8vl0jPGc0kpHH2ZsfCkV9PZGRgwmiew7QpzN9sZKP37jc', 'CWLkltR-CFLGNMNIIpvDHg', NULL, '2024-10-21 20:40:28', '2024-10-21 20:40:28'),
(453, 455, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/f8s8ZqSv37Y:APA91bGO2h70Aj1_gmahhQIwk9c5-_hLC3RaUteB9fsvmsF6VIO1HzISJR-B_t89u0gj856aWki_ww3j1Wsy0n4O0XTYN6zqRgjp1eUyaKgyWhS35-tRe6_67uhJm5u6fjFjcEE3Oihn', 'BDNPG1LcXSElnLnvbK-MARJdPd7Wx1OWbWskIvpawbxWhO91WXjP9_ZSToFW49S-YhEOjGHJ14_W40HRujalSV8', 'Chc-NpOAYg4DqYB0Y9NSpw', NULL, '2024-10-23 19:46:57', '2024-10-23 19:46:57'),
(454, 456, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d9fsyBOMmzI:APA91bG8svdiyp4NLs0RUDBGwVy-nPP_pji-ZMhg5NET2XNJzFWDQAq6znthJtJ4ZLLoECRHyPA5X5W0xjjdxrrfP___FKv_LsTX2rA4H1vitZsRd-5mthKWcXT4rjrVVqr7U9zfZhhN', 'BPHhZbGg-dcoFuJFQEVeNehLHj-sPVrA1FouVxSZTiB6eS_bz10Bc_8UdA5Y5ny1Hj4vqh0ezZbrMHO4Zhqw-50', 'mufWL4PNO2ji9iHPBY4wJw', NULL, '2024-10-23 20:11:45', '2024-10-23 20:11:45'),
(455, 457, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fPF7XcrS8Z4:APA91bFCqZBHerpb26KTJUCqbwl3swoKa11WF3hLuBVZXcPJfDa_2ONizCYPdq4uJ4YcF-FNGZscWa8UpZ1e-YVQQQ0-OqL5HfJd1fGfBz5hcT4CDnL8CNAuJFfAGe8yqCz5W1I1nSy-', 'BFrrZLNzyqaPOIY15-DDkyp4NQEAwt7YplLEpIptkJSWgLm-RKl00KfK8e-g5dauePMhr5CP8s8HjaXzBCRZQwA', 'yp7m87T4Vy8uY9rpM38u-w', NULL, '2024-10-24 11:37:17', '2024-10-24 11:37:17'),
(456, 458, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/exYxjjPh-G8:APA91bEyD2RGp18qE14pk0cEA5KceI1J9RFYUHbec4B_0QAl_GMvJd9ONFfPpgCwkzZNNVvPYrT1pRVejNaPYsAsP3YF2VfHeVkjD6CX1qHXBkUAFAF3RI4SclsPExh1DR0gXJX8x0WZ', 'BGrn02IbNWk4cisJqU7lvr8Yj5aYEgE_s_zyBlXn-JIdjXo-yJk9YWBi6CFNdizuuMRSqvBV4XLBG47-kzefn1o', 'l-RBYpZV7kZDneDl4xonvg', NULL, '2024-10-25 17:54:40', '2024-10-25 17:54:40'),
(457, 459, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ekTS_9xxG34:APA91bF4KAoRoWvuFDWQCdpxx_U3lZSMJB6Js86NjAO7RkRnumZ3kIl8hE50kT2MO5lHDfLcEBmwW9xeiac7ReyK47qVl7ie0mSygCb_cnilQdIVQxsyUkRZ8eeS4f3WNZIWuzSwDQiZ', 'BKnFj_8ycfMj0_g131jWcxHBE6CvQfi9Zv-yUygGtyKwFtenz8fbhFObn6Xe7SdN9f5af0YypJtMJQmVmEymT8s', 'YPTsT7sQJVwqbrVcnppyxw', NULL, '2024-10-25 21:20:36', '2024-10-25 21:20:36'),
(458, 460, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cim_S2RE5sQ:APA91bFaee8xv6zhNaEy8nad07ruCS4jTcT0t94Tcg_wM62CjhIK4fb_HXTNneaKcmdBPR6o-smpkW8v5u_XMIdR4ZnrWI2l_bjMhRDtnesGSpBl1oZCDjXZcQ73MWXzuXpVssQofnbb', 'BFw4cEkgH1WHOC9xuLatJx3bhcZY9eqv_BkwZo99fJMLfudvfXaATdW-tri0dMzTItLax0CSEc0lIaGIE-1MakQ', 'YHL0oOgNn9Drx1eIODc_nQ', NULL, '2024-10-26 18:43:04', '2024-10-26 18:43:04'),
(459, 461, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cIIv0oZGWOc:APA91bGkzDjdN4cwlK-0-sIIeN9mQA2X-DMI7lBRMmvkYHAHDoX301qkfSnykQOzq1Ygqrg5zdI2dyWz_DDMcRBDf5idv1f-vwWMUHoFJFDc6gZjmVFArXUdQHpRhMpv087rUr5xNGBi', 'BEUzeZ40Sj8euo1jMUJnlDAZtHKDSftM7aJSkip5ZvbUVx6Hh3NpJnFQwNiZl4X5TJgvYhIco6h9Zd7aWXO2C6E', 'Pn66Ax3Dj87EdjmhQDU3Vw', NULL, '2024-10-27 11:45:54', '2024-10-27 11:45:54'),
(460, 462, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dvF0-naVa4E:APA91bGWc6BhGKWgQwHXu2PmG7kenA4zsHHiFRo8rRfPkh7K-iqUEclVqbtu-FONKl5oBaqlo4_k4wquhK1CXNHjTrMNw8ct9FTM78QhTiHWfKi63mYw0w4Vpr86Vy0yBlUBEroV7S_A', 'BLooEZIeOPVgGQEZ8QcyWvb3GVZZOWA3TLs0daq6paitBiVrqT9uAo3GXea3VeYtXfUrNTMBbaOXUtrtZuEByzg', 'xwDsanicI_TAKTmD2XXtcg', NULL, '2024-10-27 16:46:27', '2024-10-27 16:46:27'),
(461, 463, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d0T_MzmPbQ8:APA91bE5vcn8KWOVQXPl3nyVfJnmR478ZgN5svvLfWShPVvX4dr9wzuVx5Yhy8RP72lOzMGzKKDkl4LjKeoQbsQiPZmhTM0RQD2u5AQUo79NDZR_BaIvDT1StLGCYOOf44V7uXVYVTMA', 'BCh0r3wd_rfw23tpCKY_9WLLZYL8WLccVRhcKPA7MHydJOqIpbtEtqAqCoBm89NwkS9z72sxFQWBMLvLyOT9ypM', 'n4y0fNpsrTJ9xiNoY1oSSQ', NULL, '2024-10-27 19:17:57', '2024-10-27 19:17:57'),
(462, 464, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eY3Yf3P9wyM:APA91bF0EPtTa6GAOQM_kjDM9BF8X45yaf4yLGGYOAdss9O9IMDdDQ6YRuUx0TXEDmZM2yFTt9UX3-Wwtn69bvnWl_4qb31Es8Op3oJwrQ7SWFklG-I-flxdu6CD-tIVIb501jpGPCW1', 'BN-BXjxchTIA7dVnuecN33z0j-RUaXlg3Pqp6eyiU79Hsc7PMlB7ec1OpiWpgx8OnqoOiRbICdngsFQj6XBNQ3o', 'wlbZeY-5Y85jC0uabmkUeg', NULL, '2024-10-27 21:09:35', '2024-10-27 21:09:35'),
(463, 465, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ci-TVLvIER0:APA91bH1uDsPeXigL2JyXgXkeoA-UH6rcvJS2cN5Ld0nB8uuQyBYFQkZjh63DNls5wbAQBwZvc2Bq35e23qNG0Qcntomr98-umFIrv6uyS7uDM08z6lS52snQa5oH4Ob5p_srLLh-Ud-', 'BP-BOvTjvJzhTDnyiWMj0xXBjpQo3HsL0AJp3Eu_ooQV6YZk9MkSP61_LSGB5RDJs9NAHuOf2MVEa2faGWy4Xro', 'DjgLw_zx_8TKIpBuSHoyXw', NULL, '2024-10-27 22:17:38', '2024-10-27 22:17:38'),
(464, 466, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fXNyqoXIKSM:APA91bF4e59umEbOfFmhIc2c8IYaNTqnECtTeiQyyF7AuTC_vuw5zkph5Pmp27XsXb4v9MGLHmn3eIkj1-TMrrBbPffu9dnm6OxyjeHy90f7gmyITLIatCRVC-6fX8Tl_-rLL5e9knru', 'BG5G6Dy9t0f9al2DP6wZqsrvGp4ih8tKP_b4SqLUQz88utHSGH-Itxk-CD8FQ3ojUHppCSvv1I_T1HyUyVV2Bv8', 'JfStC2SfDDmhXIYT8jgMtQ', NULL, '2024-10-28 02:16:18', '2024-10-28 02:16:18'),
(465, 467, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fwCmJESRtDI:APA91bHeFgMKDjB7MJxwQ3pyJRD4pA70UcHMMYDCR0htEgHg42ZlvBsDaHNhfIYtSVY0A4arDWK_gI1T5Fw2LR3McEV70L8vHRq4HPPW7AliJualLuR9M6VubJBtVljsHe6nRXNOg2r1', 'BBTCVrRU_JosuWx1k1icR1QX7dxrPs58yKlTbU4bBdZChR1IxI5lgxPB3l7soXzAbCmuVP24mDofrEqPtA5Z9uw', 'zz9YdB8yYCUKCRVboxIWmg', NULL, '2024-10-28 02:16:42', '2024-10-28 02:16:42'),
(466, 468, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cH5p3zHs-Lc:APA91bGETIOona1RJF0PqBaaVUd96eXVGrrhcSHHJLf7XmLowHCZwHOtvIT3UdkqOm4Ktbh6Fmirge74yxxFIjS6tS0EfcJOsZ0d1djyyKb4h9L6BKbLrqliQjfMQpUgzhmKUpAZYeHw', 'BCz8DzuCQJX0nUBpL4672EUPfpQT4XYsSEPZQjK0Q7LOhI2sCn0rWr_5LWuIvfPJn7klC7_Fe8WE11FQh2MJW0w', 'HGAlcVAaCaKM50de4jwAog', NULL, '2024-10-30 05:24:19', '2024-10-30 05:24:19'),
(467, 469, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/e4xZTnCHXnE:APA91bH-rtvyPnPGBCuHjJxU5QtlcbiCSAWr2PpoDdDA6PeKKN2Q45d7f6Sb4vvceMT1eUfLyuger625gXdL8jf8UKMabJ3a9C-0XsZfgnCDLtpPOwvm5ZdRXdou1uMQdINWHIyKDb21', 'BNpfMMivC2YbPj0lie2B071gBAQed-GWhxmOwefrIAGAbd6hYRooVb2Epjw65DL6_RnmqAjl3nXkOW8am2_6JoA', '5bY9UIUMdBry-xP4nt9MXQ', NULL, '2024-10-31 04:46:48', '2024-10-31 04:46:48'),
(468, 470, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fCtFe7DrZOU:APA91bEa6EfNymSbcqlsJudJX-QcFxIqRWT-r9BtXsY5nKZTWr17MbNV6WwifrJxTlD8vPsUV3p7ANQ--UavY6I7Qc6jikEb1rcwCKA6-IZ_13SL6DhoXvu-TGA8_gvXBfuGEUzwOiDV', 'BH_xdH1oDLxAS2BOM3d7lHegU0FC9MSwgZe5sWl17xl3EF2xSqqnUT8wWRPAcWEA2xrdwmLStzRE09nJwSUE1bM', 'oGPh83t2e44NfQQpuZKb8w', NULL, '2024-11-01 21:01:30', '2024-11-01 21:01:30'),
(469, 471, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c2bVL3MDz8g:APA91bFgLJtu99Zd1czrbf074p4wUmhmUr6_Qxg0MstZQrybKdWyfCc18UHJWS-FdzK1q3WQ1Ai7923CjKKiiAK-FPSukcKYf_h4s09W1E0JJAhru2yucS2bQb59kDWyaTxppgxnwBDY', 'BFC0kKYs5vfCfyneJRdX_a-CwZargaJvyzOVLf1xT5lmjgkwsRp5u5OqtDqHx-jVgLPa5KHw7XAt7VVy_lePAMs', 'ZZlyoANtLLAuzrTRPELMBw', NULL, '2024-11-02 00:36:24', '2024-11-02 00:36:24'),
(470, 472, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dPWupucW5G4:APA91bF33Sl345oB0Z-G2HHeYfz2nua0waQAuLPX9w7hDLuOxFsnP-hMJS7plXWZJrelxedxFMGshPr1ruQAXBB2Hmi9rssRZDBH8g9dg7cRJ4W96kAdueXFZTAurtphEtaWKurM_kpv', 'BG2xoHTNJzYeT8uO66kGKf_3wkmQ8-H4aEYozH8LdMULjZi2jsQOPX4pvYc2DGaniJcNTv-O3FYPAsPSUTljbWk', 'ZYQaqYE2kUigr__iJs8pLQ', NULL, '2024-11-02 00:36:57', '2024-11-02 00:36:57'),
(471, 473, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/f0hKZWQIZ7U:APA91bFxuGUyldwduViI-zWCHoonBYf4mLGasRCGePOSXRz8nTcW5SWQSgNngfYJnsZwakv-EV6SRtlZ5JTWIqqzS7KFSLRq48fQXVy5PChiNnBkKh0RfyeWYS4ZVJpmunXnZlI7h7yK', 'BH0dXg1cmw1smGa-zDux9Pk7dog-Z0ClAe-8-Z_P9VO7wL4S406d-LSrmWuhObokvm0NIOGQIBZQ1MdTORZN77w', 'zV2SQxZFhp0rqFahuO_cBw', NULL, '2024-11-02 21:16:23', '2024-11-02 21:16:23'),
(472, 474, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dfbyu3z0cD0:APA91bG2TLo74SPqxalQmgkq_IqKTKmO184VMtagfvgv28oASHnE9U-AjvHrAspMafEKug4D5cThd4YaYxxrIrs76WSnYxm86FKw7qhDSsgTWKRw6PnaXktxkxGCUI1e1c3f76AQTB2P', 'BMuadBkskAF_4PiGFN6TkkimaCRiHofbtFcR1FaJhv7_kBbBKxsXvBuG6LOnjiHYts2hPkoDj3oQZv_huf0vNOA', 'ZKvBfae_hI3YfJO-2y12LA', NULL, '2024-11-02 21:16:41', '2024-11-02 21:16:41'),
(473, 475, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dOm8-ZDmWkI:APA91bH0C6W5vCYhvaFX1C7lQdo62gck_PcEKn7Uhs8wTzgMs9Sb0cABsTrd2_VQs0zYnYSdxslCWj0bmCqrVJtE4Mjob-KX1zlqRbYTuwjN_mdU-Qc-rlal-RBWpvYpDwlYPgrKop7p', 'BGWsAf_oMt0m2rVrBNxsrOIV0y6gd8F9MZxFXlkOq6gf7ogCkRRSSUn8LLheezuGEHioRBcNr9XaPqH8FQsf01g', 'SsqGCTZvztPsoxRpl47cgA', NULL, '2024-11-03 01:40:43', '2024-11-03 01:40:43'),
(474, 476, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eMkA5aiJ9Kg:APA91bGNrtUihAeHT_84MzGrv6lrieZDWO5ecY605thxUc2V1qFjXTmhXkZsrfvqifnI2UdNCk8jx1GPE5inKO76nBVH6JJCD0GUleTiqG7JaIZt2sMdPmwMrr4v5CIglW74sDIclfjp', 'BPok8R_wZmWJM4IWn1Fla8xdby44y-aaqH8sipceQh-bU3TePAhgLkFzEbUVWX6A7eM1smJDR-gKcv7PnwHmrLg', '8M8Z6ZJaJmXq3HNXHTk6_g', NULL, '2024-11-04 20:45:34', '2024-11-04 20:45:34'),
(475, 477, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cD7spZDWEXo:APA91bF7nrMxZadjxTnk6jcIjVKHoWvcL_0nNK-XXZNO1kwLAM_gGbMaaY6yqeA2mKj0xUzJ9bi-m2id89JK-lwqb5lmEhlGOlTLLd3ZLHZ3wobDWBr47jOKgysYqFdTtYvNNARgT65W', 'BIkcR9x7ei981e94mxKJi57254b4RYTRd9rF_23Y6a_pzq2Yh5YbcG9MiraNTOjSZ4LS6xSsqeWh9cHwrnx8mXs', 'jySi0de8vRpu8tGEaqj1Jg', NULL, '2024-11-04 21:08:53', '2024-11-04 21:08:53'),
(476, 478, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ei-pVLFHTYc:APA91bGxUzaIOWfiX9dX5ptitLU61Aza6obkA3RViBSCWHERDQLQ7ttiAOWQ_wEc83Ur0O4EzqOC-y8NuIlhHmb6vUHnMrwQC00NESZMrpEaSEJaLtkPMbPAMRoBcRpja7KMYxedidDQ', 'BAsN1O_ap-psQkNCg-TPwWPwN1OkinIpYMB75doKKowueSvtlpB5IPs_pI9sma7FYoq-v2Cn6xtgjDblYnnTd0w', '7GD0HwG1Voot3lz3u97AQQ', NULL, '2024-11-05 23:07:33', '2024-11-05 23:07:33'),
(477, 479, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/e1QXNYuzgcE:APA91bEIVnYVx2NK5HknTGHmV3TADTGpJR54vGEhhEaAvqz8ARYgBzudemner_UuM59_fIWWPnBYd0J0VfakccD09YCYeatYF-4D4u6JvfD2qp6nHMrtY8cvI-OMeWW7_qiqxVW1S0W4', 'BH1hEDKsvPwik_xIHfnAzcka1rb8_rE2gWi1KVyOykTp2KGwntqJbkWlLWQr5IIltGpoMCbYaGKlIi2fkHzCfFI', 'fymcWwHAk7K_8Hf8M05w0g', NULL, '2024-11-06 12:38:14', '2024-11-06 12:38:14'),
(478, 480, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fknMnPNigBk:APA91bHaZjjnez_9PJGDTK5Aj5G5Dx43-UpQdkR2_dWQk9lWqdnwpTrGZ7WIZeAJBvIAd3ts5JMI1u9dNT5PQpeE7-LxaS-zOLu6YixumXYSI8nHH1Rn9A3Nhyagnd_ZwmWbxURnR7sD', 'BDGXzuWwUGLSAWWeD1bBmMKse_yyvNhAADQxxKXKtvWZMf1wCiPfJf3sJw_vktx8kZZzNZh6UFs-NTI70Gecq4g', 'boDu4XyZVUQqbz5Nd97tLA', NULL, '2024-11-06 18:30:16', '2024-11-06 18:30:16'),
(479, 481, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/egONHO23RY0:APA91bF-5SgwMwIybMwySvJDvCpqkq7OTl1Op98xeWUugZ542_y0GXo8SXlB233PzTu7jF_bPHHqZ1xPEmm5oYNCxZdiQdZghuOFnbzgVWrSzaqN7cSBv2PljGB3wi2LikYfAOdec4jM', 'BKzvjrvpLfYSL12VQ1jsEwlbYTkSpF_gdKemiSZ4v0zzrLE_0b3MatF9gu-zzcQZFAsGJg3N4f2rt2fpSsrTsoo', '_WsNalRGtV4CogRZ48q-1Q', NULL, '2024-11-06 18:41:11', '2024-11-06 18:41:11'),
(480, 482, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cIk9txcxtSQ:APA91bFP2h_Ru4gC2vpYqYfFOHW6H-KlnqmNZflkTjp8uFv3sSIHo9fJEyBaF65MB52Q5tvj70ELyllUKd9nX7j7SW17y6nzKG6IpeQZcTfef9mjkXakDYU9D78SgiKLzoF7ZYk9TuAS', 'BK402zHEMjUiVf4m8UOqcLkHwXdiXwOmakw3RhcXF45ezPewbCQqfBB66lvQJRT-f0paE0QeE4Pw4zfBOWEhqxo', 'YJUkVYIEjL7wjGqyxVHc-g', NULL, '2024-11-06 20:50:33', '2024-11-06 20:50:33'),
(481, 483, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eAMcc929sQE:APA91bH5NIsMkyIyG4hGV6XWGijcl3mwrGs3bCU9Y8Nl0Tf4sfc5tBzC8D0o8zr7S8V9la8CqX4bu1Hx_2sHpiK5MGUsfyQA-1OlmbNqMpqYNxZK55gbqeT7z79itVZ0ZD5x3K3Hrp89', 'BB0pRglnqDIlILYpBbTRHPyDXepMSXk2FcarM_fPuCvSzpe9rL0vk88s76AVTyVKV7TuoYuB3RLcxJVCGGbJevU', 'TGIpuORGfvKG6bhZ0jYE8w', NULL, '2024-11-07 20:20:53', '2024-11-07 20:20:53'),
(482, 484, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/efPNF2mkTJA:APA91bHCFnY3sVOXMRZ7UXXAqRbo5FLns06NSRF37VueV8y9N9ctkr4cX2NubSGpUJaUeLKbqNXA1ebMbv5z8KPVdyYl5SuIJNJCGOaHw1FOguXZls0mOIbwCPfQvc-mVT8K76MWHlwo', 'BEjFzXRIspVg8uvNHWBoIrOHkw5T8FywkmjKU03fo3thYjLF7kvlHPJeDVSEQb4EHQ0t2uwX-JZMnEbI5qGSePY', 'RFmpYHIGePvyi9s2cUKWzA', NULL, '2024-11-08 04:11:17', '2024-11-08 04:11:17'),
(483, 485, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d3ABffFUv88:APA91bHiDGNCtGsT9GvtkAQgrv0aWSDiid9lCCr1rhE-fqE13mji0mSwT20lbY3wKIvYwPptVs5Z7zp5435G1xSwM8FuUdtMDY9Bn1YCSBorgOzNB_W1PCjtHIiVQJhBBlSaGEmS0kU9', 'BC61xScX8A9gdEGbIDnqeqVfIh5c330daXuKl2CStLXXPYHgkfKWCLuo9oxzV6mXgSMqsJpXICUKxTIEXFGDKxU', '7FZ1rtnpSmc09lxzBNrovQ', NULL, '2024-11-08 20:10:42', '2024-11-08 20:10:42'),
(484, 486, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dhA4zXfemKo:APA91bGMr7hYOKf-x2UenyMvJJR2cSw2_GXIRlQGQM3E_msTxAi1LDGgwKnQph6fWrVTciMKi4JIialfRE5kEqk5osa1YtqN7Yw7MnYywvrbzanwD47BNyWR0dINYR03W6Gwzf_BmXzm', 'BLobt4pD5aFAFVHIEqi_QtNqG284J0VLT0qj_cTNvvPKrc7d5_Jwq7tWMg0vuQsrvsJlr17bsSVTHLG8A0kby7g', 'ot5JA0jW8ptGjO7TgLw91A', NULL, '2024-11-08 20:39:47', '2024-11-08 20:39:47'),
(485, 487, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cmjJS2sxyhM:APA91bFPN3TSqBhHWPJfK-JvXS1NczC-Aa7X-fNzi8gunz89D_WPrbr4aDgy3HpmiV4XTAv_uyJS28cNy6l7XFFUPBNDbPzqgyv0zcz4p9hcITRmdrjKmn4DYfsd4Dlrj5XJUGfKw1M4', 'BISIN4c8zNrHncPX6ZQIkmRuH9OsJSyu3ammaaN4-k2u3JPqEGqd2i8HH24Z-C_6oZ-urD8jKc3USYUZpwam3xY', '2lREPNnLxNfWMnPeK0jp3w', NULL, '2024-11-14 21:16:32', '2024-11-14 21:16:32'),
(486, 488, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fIYPV2EEG2Y:APA91bEd87QuMz76SNproX9NX84p_O5WJUw-9zznOPjhkdTPRPREyNQF6zV8EjhVA8AYMzLF17mb82IsIRMzEpU4kj3jbdwOodsA7q4ZkchXtmegJa4zV5V0vu2xxlI3P9996zT6Xu70', 'BHkuI0oIB5ihCavPDwEkrmqMM8iJtKqyIxj5luEvAgpfrBOGdDk1MRlJDh_eFSCCoyOqogQuCHj7SN2z3Y8uj3A', 'phDuBkvCHoqTgW5dXk6SIQ', NULL, '2024-11-15 16:34:22', '2024-11-15 16:34:22'),
(487, 489, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cJOMz0C_CgY:APA91bHGWfihLJJZvXNXPq2iB3myo14KEzQlWxpZUQH4M_ikZ02Aw_sauCRN-aOneJ1mWKju3c_aTC-sk1y3AHqNG3m5DETThHfJSurDGY04BQLZylRc4y3Bwclo6rnV1Z1R4q3tProh', 'BJvsL4uSjtV_kIUhncH16jbsPfmDGUMhgVlEHpRMGUFly4ai-nyAzOypkxIMbir8pyzLSYDm7PzHpg4_1on_jRM', '5p25xAafQPnDCSnk2HqrQQ', NULL, '2024-11-15 17:39:59', '2024-11-15 17:39:59'),
(488, 490, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dmURR9Yctvs:APA91bEAUb91LkYaggtOWSjH-rFaYyBUxiAOfzSZTRAqGsHV3fAQuFazpORn0dq_Yin7Y4dlNrYxgK9t_BDYeuBYNhmz9tUuhLV_ukHjRfYoy6NFUxMB-dFnb4cGZsYiJ4oXbZJRg6iU', 'BDegwKsN_H_ogvt1tJLQPi3YCWV42RSniPVxfM38nbKNsRXkL260gE0jtRiDyBaToCtU5BjQ1K-Wi4UwdqmsPqE', 'HOIayT0cFmJoiAdARZ5eng', NULL, '2024-11-15 20:35:38', '2024-11-15 20:35:38'),
(489, 491, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/e3bXDTiFBvE:APA91bG4ti18SPR5o9DWtMzkxC9CDKhuqPgE0anNTZjBqAOrNdUFXys9n3jSu8Mx3vKX_vWA5mJwDcE50tpQCJdOrS8x2T7UzaUEb-BCCtM8BY8WDd2tZ9hnxZe1QTTEzNdl92qDaqNc', 'BEwyKCLQ7oEvULSEcWLNFRcw4zZC5rg7jpGVqd_-pV_p6hkUclR5aJ2XyxBFNpAPfTnFRcuYTNBWzjGFskd9jAg', 'J5O3kIiQ_EQo_VugAo7R0A', NULL, '2024-11-16 19:07:15', '2024-11-16 19:07:15'),
(490, 492, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c4GHbBtczmk:APA91bE606zWl4TAzjpl7XD0-GmHajt6JJBJq1Umogp2vP6B6sy82qE5enT3r3pGVme6uCyozYCKsI88EbVOlIrlEGZWGUJ8wf9exKJqVsojXVdiBviLE5nqmC1oIAh2GTBMnC0fUldY', 'BA4TXSZQHAtuNq5a6eQtmf7r_gLPkYtC-cBVgJvfpiHAw2-0Ll5t7aqUutoLv1QTFI0dMYieTTWHzPTkczLUT-E', 'TmHAVhOyUXVekk6dLqj1tw', NULL, '2024-11-17 18:42:51', '2024-11-17 18:42:51'),
(491, 493, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d7BIwcVTkx0:APA91bEym3zpejrNH3H6imiFSlU4OyyiPVKP5rPYmTDGUC2vZgLxhTQW1oha3PHv1rCKXJfpt8RWozfG55Z_AJC5HsaBCpB-d6biBecEJwcaHchBy5ORFjRVzXZOV8aAN0Tm3XCW1If8', 'BLwAtDJ-leAwZyvpfZwAHaHbTIVY0fepuARPoVEsQv279IIjKlD0oFgY_WEKxFL8dI3XdG0U0ZtHnORsql69rBs', 'A2gdHU0sIrOpj921T9Ubbg', NULL, '2024-11-17 18:52:01', '2024-11-17 18:52:01'),
(492, 494, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fptyncMSmzI:APA91bFYO9MIdCSpmx3Sl45HKXJwKx6kLdX36VfUH6vugL4yJ5bdjaCwz3B6WVEJ094hNQJAJQ_bc07aOIlDaLimJlxE9ASMEAUycDytQH0JTF55RmP_q_2DjLmv6D7nwV6wkRv1kM1Z', 'BIpE8-Ak_eIbHo8Bz4Q8O_zT2uQdIui3LGLt_79VDZPpHmFcUkzcCE4XgI5WR8Isolz63x3Us1iJHm2dzx_HEMk', 'LFtpWcZ_t7XirBTh6YE4wA', NULL, '2024-11-17 21:07:13', '2024-11-17 21:07:13'),
(493, 495, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fFypuXzAT04:APA91bHXxI5-u6hu4DNeHWW1ogbtLVsOh3hmSKceuhwZ2Bb1ORX2wIoUhTTKfTzzMUfxRB4EOEsqVI0gWAQfTeo7POTe59ckcxO26y7Dslb3JFxf9gZyp-qIthMUJmPwProSzcdtAKUO', 'BDUXjWm9QGVwJ1Vi17Ve6wDNbPeifE6S5NUPPqJllsCKZaCeGg2YB81PW5r2i_a7Up2npCKBLpPdNkoj7RxxLQI', 'eOwuiZPgYEQVYsR6AFlrew', NULL, '2024-11-18 18:27:26', '2024-11-18 18:27:26'),
(494, 496, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fRLGyF8DHlY:APA91bGbLpk_lSZW442aramylRgPsIaCUmKnR7mpUeMKPKpXJP15E4Ma5FW8hIjsSSUzABv9RE0DB3fPv_Eokkjq-3hywOCB7srFQ1eVEX3LddaSW1WgmSpdB3ixzOM61lge_MqZAIzH', 'BBmv7xjP4LrUwx4wTaJZsaZn9V0DWbuSGCuWD-hWYfXpQ0GQqO9FWyHA1e7F8ecDQ9HqUc6K9JNTqj7-8fi5Ojk', 'z7B6_E2ofdhqrFqnv1JdvA', NULL, '2024-11-19 04:31:32', '2024-11-19 04:31:32'),
(495, 497, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eCDqy4tGTJ4:APA91bGCpwF10bVQt_KCWhgBC0mdYZ7qduzf206vKdQrbi6wM-2vb6NZZkutRx-MB2-HhNsQhX6fD47-Y5n1GSH7x6xw2GmW7lu0BevEAgFWyt4i74HFVcb1Cd8oKjNHfHI6oe4F7FDm', 'BNFBqU6vuDQW8CrfYiKHcQeqyqknVnbAHvzlCXaWsw1kbuvwv2sEJWELpoUvcmw5dNgxgp26tqg-AhHpQigYxww', 'TB8-v3TNildHgA9ehkX7BQ', NULL, '2024-11-19 15:23:46', '2024-11-19 15:23:46'),
(496, 498, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ewHM_4kMdrw:APA91bFsz2LBHZj9EAwe2rl-NpHVpKus2X2gT2vz0rDGgZtm0wbAKkTDAuDJeuHn-YKVVs9JlTS_O1_-4_ylTHwt4vZTO6adwu66ZQicsstyFeAoV30oZkhIYUpvtEmu3ePQu948C2kL', 'BCVY5hl0H61qiUOVLRocIJYre5gI6dOAXQLKEcj4yzjS-IeVmApmPyOP0dVTNr43HFmWCJNUxcDsm5wU8yGOLnM', 'mSU-J7GkOGuMfTKqy-ljkg', NULL, '2024-11-20 23:31:11', '2024-11-20 23:31:11'),
(497, 499, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cJ8d0NLc9ew:APA91bGXD1mimM1VtFUgf5qK3jq9r49lAgm2EWgpSQH-4TRHs1Q8FrhpInOahiLjsuBijXKMHfYQU2NNjKyI6Xsi_RNLR0HdkcUg5IlWgHC87NwSmTSqvwpijst1PgyqNync1Bh7uLLh', 'BL4bNWKQ1CPHMafkES9TH_2KD2kG21cmQ-SY2eKXTOrIdGZKubmjBAYrjoqV9Av_Q5qjdza1yFaZg_qQjR6mHbM', 'u7ZF-IrO-9rCZskPTtnEQQ', NULL, '2024-11-21 17:21:48', '2024-11-21 17:21:48'),
(498, 500, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c7wGaDegvTI:APA91bGbzvS-eUmKMo341fuWihqP0YaY69sR4WF3heIVILU9qyTztTQid1RHh5mcdtOTyj1pehZLZErFtJBEP0gfRbzI0g1VN6F8IpObJzvvYg_l3tPZ9EU9n5hcrubsf7cKm18IIwgZ', 'BEdS7DxP7semKravwrRx5Wl1flvEcYqvcS8vztGAhYwo7LWHetZ5nWzlMxuEn1g9gzh2KKvPQdYPmW5L1gnWn3U', 'ThHIED4I92F5CEKQd2rJTw', NULL, '2024-11-21 21:05:59', '2024-11-21 21:05:59'),
(499, 501, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fYqxlzdPrcA:APA91bGw4rE0eWW9AvGjqUZQsbl9rGoRkHEl4xC49o6G09h_yDjuO5zWi3pxMyTBsQnjecycesXM1Emw26FTLeoZv8kR8RjZwWm-94JncRRH7HeM-q5vta-bFV1Vky9tC93ASk7w9ycG', 'BN7JT_vtXuHKHT_GSbU6KF0dYuoWwriwKc6gvJ6OWcMD9g014dreeGU53MPrP8gk8i_Gt_3uYDH3OlVq6_enZ1E', '7bJ-9bK4WDub8fKXGFhiRQ', NULL, '2024-11-22 18:21:48', '2024-11-22 18:21:48'),
(500, 502, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dXDMQVq_sgI:APA91bFIk71GdpSQCkg5IXdNkk8iybcs_FAiCSPCRIDM83JXrySiGK0SvIHd2bhCWu3EZnMZVrDBi9WzW-Udvalq9mzphDVyFAA69tY7qeIMzt8pXPnGJBLoO1X9i1wLOimNOw9ErSRp', 'BD9Jt0K5to_GluZjKAdvD0p-yHEVB7DC-76tLR7F0yxhVeLACERCHsEByFqMxlPrYB_CV6RxkNV3Zjkj7BAOsEY', 'pbBVouOAQnomO59p61v1RA', NULL, '2024-11-23 18:39:52', '2024-11-23 18:39:52'),
(501, 503, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dOs4TmHG4c0:APA91bFcsZCZg2FEMZIwtQ1GOG6i2qAuC7L1gxr-Crw38jcdT0Gx41SycMXTUrhMs-N9JK6ekIT5A8TtM0Dv2v5O0O6tqh3EwMKBApY0k3LbxQnDLoxbcYuNzdoZVDrI2MQ9nyk77A1h', 'BB4NUzAFtdD1STPWcxc7UUdNkLnGyEGGJl-KQwipmgrUmjwhpwpyaCfICMAiXDx-xtZXjDmy_8GZR36-4QsV8uc', 'foh0-BFVuOw3bsZmZ7WaQw', NULL, '2024-11-24 03:55:12', '2024-11-24 03:55:12'),
(502, 504, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d-iJQsxYoVc:APA91bEWxB-8mFGvfSWEejyoc8A6glt2igF7hl8OvIn614eRxwaPoLm0IcoG7aPrQV6t8jvx1l2O4-0bTPc0dftDf8RyA2R8Cl6j9vtbNRpUTOn2bBHEQa_7CY4vRWVrlx2orF1DjJfM', 'BNgp6PkbpFLofMlrtEjJhukXIA4zgNWWGEL-Mo5TNSG45CJcx1oBeN2KX1EUZW5-d4XDzveQlpTuHS3PP4ri_Zc', '5GM1UoKlvI_PvMzgFpNQkQ', NULL, '2024-11-24 22:23:22', '2024-11-24 22:23:22'),
(503, 505, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ehxqfFt2z2g:APA91bEepi0hTlGV-w7RKqdOmsbwV6B70e2JvSNMNc6QtvbufwPrqpysQ2BoAUgmPuyJnSqbAnpMilk9-9FE90WU_lTm-lIWXG8FqkIkhkyXaUND6drizlKbXP5enQXnXGTafmfWBRVw', 'BFt5p1b7Wh1Pe5wo_qlr5Ntjz3is0V3iaRvKxSmFFdAlhKkgKRUrMRzoFoIhA26VBLfMvnGcdDAXKZdjRPnLNz0', 'I956pmhEX8arAkW1vqBk9Q', NULL, '2024-11-24 22:23:41', '2024-11-24 22:23:41'),
(504, 506, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cQVJZMQbHT4:APA91bFtAbltZvpig_ufBWNa173mTzGuDSRbIFo0kh_cAR0F9poEjiQf_QuFvlvVOFxlfJxi5h5Cx5A5S9mHxyqc7pqX6XfYGdKYejgpUOpioACCFExpDO_8XLRyq7rg6RNIU_U2ftoe', 'BL1dPk3oxsk17t5Pm1BorCU9r3izba8KHs6Iqv90mhX01ur2BirhboaEnRhZkOzKIKSCIxTcnYP0iApv0p6lofk', 'zlA_GQtx-CTb4Cb7QAP3Ew', NULL, '2024-11-25 17:18:51', '2024-11-25 17:18:51'),
(505, 507, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dCCXTYWsZmo:APA91bGuPJtuAqYvCFQc8P4HWVrEi3nGuaf7LD7abhH0MmSzn9sShJNRRitaVx9GMAtLrX8l6IC5T2FizEQqFGFd9aaugR1ZyeJQtsCSIVW259IbiLXMUFA77GBQ3ZTf5BY9Xyp17IM5', 'BEgO4aXRRAUbG0QL7lwIMJFzHm5m1UA3xaLDIyi5L5taY0EXcZOPWBOjFdYbbQ3aEQbxrAuxB2srTJLnNI4j-g8', 'xuOLw-NdQpzXnTNQ0Qxr7A', NULL, '2024-11-25 17:56:05', '2024-11-25 17:56:05'),
(506, 508, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dtiLfTV4u-k:APA91bF55HdBe_LfjpiFU248QTQg5D_58F_4MyXhO84inCKElcnhdnTVMs7aOoAHJ7NkTh-OeDxbjiPvYi66zxO47Q4hodR9thgoXoMUZh2eU9_9WaxQ95kJ3QMBYrxJu9v9BtDcxsHY', 'BKju-lK7EwSA1LP69YBJiFVw-oZ9TFwCdchgP0y8vU1bF5roaK3vH8YEvMfhfoDnk3GK-RGpqS8nJY39wRaSMUQ', 'bArGiF-vVBuQNswO8JFJ4w', NULL, '2024-11-26 03:11:51', '2024-11-26 03:11:51'),
(507, 509, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eTva20qlVyo:APA91bEmyadSLyA6pXFlwY28c1oe7aNvT-w3apcCdlhQTLE3R7J48ecZbS41oQ6mQW0dcesmqHUGb-N5fV-ImqT2kbJszvYdx3Uwo3BudpWceH_WxeE1ivyWqxn9lg0fnOyNrDIwOiTD', 'BFeWs2yMEA7BHKAdoBmGFg_JyJFrhLSKHRkSNVHONHRzF3Yve9AbaMXEKfBWpJCbM_vI5A96OJj2rkvzxC0dWvw', 'CyLBIOFyK4jr-de-0B1mTQ', NULL, '2024-11-29 21:11:28', '2024-11-29 21:11:28');
INSERT INTO `push_subscriptions` (`id`, `subscribable_id`, `subscribable_type`, `endpoint`, `public_key`, `auth_token`, `content_encoding`, `created_at`, `updated_at`) VALUES
(508, 510, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/etGpL-GMVVM:APA91bFjGIE5J-VvPYgZHmbxFhyY_EjlsAqbR_6Er8NljjAvHYUOCJ3G4Gw2epGpAHsDwiSGQ3k1KCJpC9ihgBWqiW2KwrE468uYx0iyOuFCRgB5DgWM1RAQUP7Oh2wCn150io4sTn4N', 'BAqptLOUgDm97Zwpjy4pq88B5reqycSi8YK7VARAvsadd8XUZrKEsRPF__d4XJZszahYItliMa5F30UW4qe0d7w', 'YFzIfvfHvs6cQtgQDaCSoQ', NULL, '2024-11-30 04:11:55', '2024-11-30 04:11:55'),
(509, 511, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cKY6yVljEvk:APA91bExBKf8oIhTp4TPd-X1HplB6iyLNQJMaRPzYRJP9JEqKPYI4oUwGVqA_g0z_LJ1l_Wf5y07q0IjLWxC_MvFPTtF1st4yYSv66o6667X4OM4ynGvNTpo1ExUvLQOqIzvLQ1Kbmsy', 'BMHa19Sda1BiU6UvS3L4jqoFLfC9bDmOvarq6x_bgQfvXUTqki5k9bhVDvOnf6_GSkluhLRKtqVrvSdCk6VbYGU', 'njOwItBBr3YxcaU7cI6Xrw', NULL, '2024-11-30 04:13:09', '2024-11-30 04:13:09'),
(510, 512, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/f9MF2XzcRww:APA91bGTIZ6IXd6gOQvidncayBLSXQrYx3E5d26z_1FsodWrgcmf_PAnv3ebzPQyai7ZFYmi1s8u0OSrvJcztTVmbG1rPZ4u5ZpzqrvXof7jItyT0QkK7eV71IpNARM_lBrdppDbreEo', 'BLZJ3tuUfB33yzCMapDJrNYylZSqZmthnjOrDa8yyfNvxBmjrWPN8m0SRYTj52EjOywyV5ZJNsrixxDCQpgdcIg', 'fujYzZAz-DMVnqcb0qvPRQ', NULL, '2024-11-30 09:06:55', '2024-11-30 09:06:55'),
(511, 513, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dVISXN-wjvM:APA91bGfJb-AKH1ESqt_nSGk-CPwb2MOJB7eO8-_U0ZNtgJEzhyJT4Zlbx3T43XxRjfxASHIsKlUxWMLxAZJJjrd_kpdMlq7KgyIxixvAyazs1esNsBiWGTUSp_V2ddZFKewLEaUCnnN', 'BFSlCzEh6AwEppheU2_e3aO5-jwmkUf_YVesr_dtBYHy6N1sxpnzvtQ2vGTk2Q7k0WWLFHB2x9AkZTrKwpSyI00', 'QDMjmmvrj9-EFIqe8Rkzfw', NULL, '2024-12-01 21:49:35', '2024-12-01 21:49:35'),
(512, 514, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dPFKYeMMozU:APA91bHzYKHeKwEOeTh0OVtoWLrxBxWosz8G_WzJ2Q2GHSBMQDCLUN9Uz-E0LaORNh_xQc6XOKV6xLtUuqnk3m2bpoXr8ht3xlzLFg1a6Fk39KKqXWP5Wk3EB_rl6bvXdkV6Mth9EZyF', 'BDfZl4LqpC6yBJKVqAovjPonZpZXcz7lO58QlN-Xgpg1vQoDVIeBfOVfLEiqo627wszZQPCeiTwPUo_8a65-lpg', 'zRFZQ4NJq4FQ4Mnh0d316A', NULL, '2024-12-01 22:26:54', '2024-12-01 22:26:54'),
(513, 515, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eiNicTPM4DA:APA91bH597izMeZAOEpFCKInSd1L7WyIFiPMq7g9gjFVL2LmIeuqUOZMTFw2u5q_0ocRo7ggUi-kb7Gwpvj4jJiWN_eRs_x7jW17OIQPekwvSDUyu86ymCf2ihLMhOqyH3EFKGRT8tpi', 'BGAq9Rckt8WJuk6BxhF4fsaGGu6dpTU26MWPHO2lcDLJLa7V8gqCHHxZy1gmYYoZnpQPPoaZlhMJvms2SLMF3OA', 'xcq1BTCbB135QzgfDK0E4g', NULL, '2024-12-02 00:46:57', '2024-12-02 00:46:57'),
(514, 516, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fWex6WcXXU0:APA91bEezH2y0v1cgVngQP6g7kDOSc6m2nLz03VPXGAGj9LqQBTvcrMRdmSXAacNMX5hdviir7SKqBzuU50bq0wZzb7-JZ87d2f3bGevRSR3vIC-eqnJIVR2l1Bkq88keQj_kMfdJG1m', 'BMTm8L16dlVWxgBNgIJBm0rVUqhHJT7FqLh_3_oLjrBs1S8rLWoLh-XcQ6VEk1OnPP3cOTf0szD-hmawr37bjW0', 'vl-L969589ImmLe49qSEPg', NULL, '2024-12-02 02:18:30', '2024-12-02 02:18:30'),
(515, 517, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dS8UBpE6TI8:APA91bHyliKMcl7WNuzwvV1_PF_Rm33hz503vfu4DGqrAPIN4BQYWVWURSLH9FEQpJi1EVZkb3v4zcJ9zBC-J78mJjMI28zIOiDUMqGLSO1ytJsfdIJLVYLpk2ElZg3WhSv0_ld6n7tK', 'BL1Ig3f4i7XW_flMv6Pp9s5JSy8m2S7oU27-nHsy-ZqY5Uglt1PNc-G8ImJFkxXNb5cppGt8bkgpvpdOUtmVGzc', 'aRRb42wnqNvaQw_WzLMqzA', NULL, '2024-12-02 18:16:39', '2024-12-02 18:16:39'),
(516, 518, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ezU2_X8WGuU:APA91bGONsou39em3ARyd4iRBxL9On0U4ABNyBGAiAk0X7irMHiUWATOmHD4ddeX3KGnh6e5bWR2FEOHfr_hucUfZCoCBFuZ8bETiyAHqwYLq3Tiox8iHkim5PyPMKZJx-o_iQH8arda', 'BLSxp5rs7cyk0_p1PK7o4as53vXS8YpbMt3xZP95J9mTt2WLl42r_OWEhrtDR_Bse_CP6itTmCS1jlX2FrqrVe8', 'ly4AVvIw0OxmtxJZx9n8Lg', NULL, '2024-12-02 20:43:05', '2024-12-02 20:43:05'),
(517, 519, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c0yF2ls3JJY:APA91bE-3eJYY_BKtpIR2ZVW9ocso6oR0X28o38g-_vqTLnxSL6HFngGyWS6GC44gLl3Rl5jMCPDNd3wHi0i8oF3jhXIqE2OZub1kWHgJxK5FJ5C6-gdsRYV_ecE4Co78Ar2DM1flApf', 'BLb8G0I6ZHRuI-eo5nVhGbygPl_CyBIwZBFkK8cUJj19rvFl48V1bjD381OMsQ9XE38IHfBARDD1PkCRJxUkmro', 'QgVjTdB5VyFLuTjdl29G8A', NULL, '2024-12-02 23:46:11', '2024-12-02 23:46:11'),
(518, 520, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ezYpfl11y1U:APA91bEOQftRHW9ojpQmvLYUbBq_3pcpQvmF0VGyqGWAjDqbZMscNrG9n9YEydxVFdCRZT_GqKesTA6Dpfx7N8WhOryV4bbfdlzVXZKaSrJaYxPObjOzIhpNzS-rVEfFCxubNlOZHLEP', 'BNwbAQQh1U_nN2QZLGY0zxCmlX9RWs-j3gyCmouSXTl2HYQtS7BooFN-QQXyFl5utR94rrnsl8muViTnM5u9ubI', 'dwgXiEMXCsxrhnwN3NsRyw', NULL, '2024-12-03 19:04:47', '2024-12-03 19:04:47'),
(519, 521, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dyqqOguJY5M:APA91bEKJTeTWCnCq6mxv5So_h-6uvlBvQTfqm1VNV24qXk-hkbMOmRT8f28zg1e_qDU9EjnYb2FWy8dW9XKDp1m8JTmx8zskY5QqQRTwEsI8Fzt_ONlxPjTHZx34BbolVh-rRDm36ed', 'BC2tbQPPxjC-jUMiMO-tZR2DhJqXuikkKz6IxTIBmEV_DRv_y6X2u29Sj3It7Hi2Zoaut3jNLS8zBmrrI7mjsNs', '0Ifyt67XtMBoTQVW5w-UcA', NULL, '2024-12-03 20:02:37', '2024-12-03 20:02:37'),
(520, 522, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/emZw1bg3a-E:APA91bG_wrRi827Ri3MJIyxD4lJtpR2CAcZCCy46TEDRMKglmOOPcb5oZH-kDNejqHm6U8cmt_NCHBPOxolI4xxrwx-Jo8liAYQgwjxk4OeXdh95TVdfHgr7jqDWIipN6NeXiURtCAAt', 'BIpqFUnXfhoilYc2zrL5QaHLCYejXJM3DnDw37FiGlRxAXHhws9P9wDDtUCWWKTGwudCkqkfqr3r7ssFpO-Hjjc', 'E_6c74RMNd45eslZsO6v7A', NULL, '2024-12-04 13:05:18', '2024-12-04 13:05:18'),
(521, 523, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eRE-Je-e4no:APA91bGD83FCHEKquS8dvvWXt7jQHEGCPOD2XRk92DO7NHkFqRGhkpEwi1rETx91FHuPxpgCQ5ZcjDFzhUHejwKEUMJWUB5isdo5E5TyKErLSm9TJcigXq2YwihHp2ImIASPYvGSTfnG', 'BHaTzU9AAmT5gGwDDl4P5dyIi2Y75hSc_5YbC8EUZWY6uDGshGkitYEkggQnx6dvStsS1TyPI1slKazocA0cfOE', 'cnr_sv4bpy9Gs504YDMG3w', NULL, '2024-12-05 00:45:47', '2024-12-05 00:45:47'),
(522, 524, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eYO9DxFgK_I:APA91bGJyesbVSo2Wg3ffwQ2G4zsg3G0eLOHDD1Hm9s8NJhOkFCg0ltbXrHIcja8PQesGsE-G6adWOvvhhP0nh_VqP74GT0wpls50cbvDeyJVZhHRYrxEipuFcRuk0_k29zkfz-x8eeq', 'BGj-z2k55HLz_DJUeI_yg6hXYNuKkYdPVRNaxFyV5zpWbu9lm6_0LVQQwdPg3SjreElw5Cgt0cfswfyQjfOGmr4', 'HQrgmpIpTge24y2A5DfWcw', NULL, '2024-12-05 15:35:37', '2024-12-05 15:35:37'),
(523, 525, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fmvGNsTncsE:APA91bGbPi9ZiP23UzWWcBChOfUD9WMjozErjXIDrq0Ymx49XvL1BvtlDzaxSsRsTiD62tQp70PpygIm5VmjQueCidPk1nGoWDm-aHv67G3aED9GvvB_JLWCTlnR7CR8Z5qejERd56KC', 'BOOqBshhcQ5cFeG8Q_zUUR_IFcZXa1mUim9vpGumUQxVlW6KQI_r3c_wBM0iFqaednA5lhuNT1SIFOcf6ROFxoo', 'uhBeGu_hjaFkc2uSnstorw', NULL, '2024-12-05 18:44:52', '2024-12-05 18:44:52'),
(524, 526, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fhtOIycHJOo:APA91bH_QLBM0Cp0VYaCWRuZWTZhVMisO4r4GCzrbM4tuX_SIe1MmAO6bF9rMctOamaR5yKRs4bLrOdV6Ehamf2JaLMQa0wmjPKXlI6R2VxLCAf1Sqc781hiaqPJmOkzZeFJRzQrC1HE', 'BBlxLYOkK9ZT6EW8ar3u8oyHmDVDYMtW3wY0aDNH-EHTMG3a3IsEqq2h09Fkc6Ja2o4uf_QB5GDWKL7sXnIV1h4', 'hOBva4G09Otn2bw2-cEZdQ', NULL, '2024-12-05 20:13:33', '2024-12-05 20:13:33'),
(525, 527, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/f2XqfBBt11o:APA91bE7EmT45rHWx4T2Uq637ALMb09NR4hdwq_OfWpAAGlPIOKPPp3Z9dIk1uf3l-KtJqzfXQ6uthie1PCbSX-LBkvYtAXgzXXnybgnRBOe3mTDQUIaRhNR2TVYBU8il5Q7fUUq-fVu', 'BGTS965DwhmnIxgjtlxN5tD-B5ifbn3cSNy-yKxE7tHPVtp3pea-PZL4ZQYl7Rl5QiD5TocNFVRCdnPIPvlhml0', 'Po-xd_dbFpeIkxlMkMliAA', NULL, '2024-12-06 17:41:52', '2024-12-06 17:41:52'),
(526, 528, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eYwT7uQD22c:APA91bF46t0r7l4TS_l855pHTX9no7LlY-XZsuffMoNPOsZuEwxhs0wgyLg0FyeRlVCw92PX0RpQEmPvWltkueUGx3fa9ch9W-sy-FWfuf6VAjLHPWfcmzjG5Z6BB3IgL0KoWeaYxqMn', 'BI1DWVuyHPpKC0OIAXyShUOf5n47ehwU2mT-xOuV0N_oPCIRIwu05JGmK-GGt8nrahSO3Gxf_eeJ5yDxYWVI_Y8', 'OgVxPEflXjxssKtyLGEWOg', NULL, '2024-12-06 22:59:25', '2024-12-06 22:59:25'),
(527, 529, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cdFrT2M9kLU:APA91bFc5Enz-xujEVWQAQjlWYBiAkcAydHNWj4u55ILEJEOmOi6EG_WFlf-lEOmhsUgptSEfDnXPA68Ab-BeWJ5zeJ4Y2Tgq_C_Ujzgqm669kfiCBjF6NZHQmdYtvDHkZ7kuAdOiywh', 'BEuAiBQW2MpDjz00N-p_CQYeVcDF5gaw3bnkMVJihcVGiZ0cVtmcq57m5KvRej0l21CNG9ERSyEdZmSdab8Y-3c', 'hWfYT3m-OqRBEM8sODkctg', NULL, '2024-12-07 08:58:43', '2024-12-07 08:58:43'),
(528, 530, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/etpAcxd7oXg:APA91bEBpmSXvrCINQCiUGXu9ha6ZDRZQ8Xkg3uIY-75eicp59BINuHi3yZXlU3_ZJ8zWxhwgusW910Z7Vc1TYr_dBuVXp3BSK8YfdFRlx4PxXmLt1U6M6Nod1CYk8h8oG2_G2LcH94i', 'BE1rda1CtZ9gC91rEzIEIG44Ce4Rmasn2_BfcSrAzyhTcL_6ryLpqYm4uGfGg7Yu9l0NgCqn9ZsWBaoFzh3b0EY', 'n6vXooWWQpAgz-0_8ker6w', NULL, '2024-12-07 22:30:21', '2024-12-07 22:30:21'),
(529, 531, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/em7lpvJqfTE:APA91bHAl0TMuA44VFfkP7_3lbr6fKrwgJ0a-UhLyd8D77P8Xa8AXbINg_BkGHY0v_BMglKW6vy1ZaqkflgS5ASRbUfmfYKBeeW8gdjJraqlbGivk4HULtZAMC84FQ3WvzZLNRqpAzfD', 'BJXtifD4rsFTVhWlm2jbZjYae6dmDPpiJYN4n7ph3vyp7jjyZO2FVN3f1yKW4E_NRdOt_a7GImN42ywf-dc06Rs', 'qarDs63OOfX4GIqTVpFAbg', NULL, '2024-12-08 01:14:58', '2024-12-08 01:14:58'),
(530, 532, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d1_o5K01ETQ:APA91bGnurB2KvB0YIEF9jxxaWyIKphug2lppGq3rudMGxXQyd0lLOGVtVxmD8N-UHPU0Q9YwzZJJ6Nmu4maymk4YunqNzenei0gxlkHXHx87e6c_roBr_b5lQ0lS2bFteBLLCjeUmfh', 'BFiWnQHePt_2EZd7f070CrrZ4BHOwg7k0Ke6PpX1l1dY59Ig6WpiZ1zGBB4JgD6MyPhXQXRpi7oqrqEc3XugZdw', 'n7lpoQYoHNZjyVRHIqZQjA', NULL, '2024-12-11 18:27:09', '2024-12-11 18:27:09'),
(531, 533, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dWueubUxWrk:APA91bG_Aw57woO2PEveluCDSpijpFg2o-yD2O_zfkiA8eOb8eGJBr9UYok7onwk0w--8-nLc9oPFFUooQwr4dypoFrKM4oxwPOPPjOWth75kGJl8EbyUugaeH1-5emW-SqfjJ2XEIr0', 'BNxN6AkcDVlq4rObGpsWrEQu8F0LARuw0Hmb_YwXBYnRBnD7mBZb3L_XPY54LZSs1AlN_SfizlgcUeprsjhOTQE', 'RKK7fVTrP36bH5WKfYptCg', NULL, '2024-12-12 19:52:53', '2024-12-12 19:52:53'),
(532, 534, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/e78nAUUcbe0:APA91bGB9l9ZtcQU75LTuJjLZMfI7sAY-d1u-sH8YMa-Y8KzDtrapxMvxLDQlE0JvNuTHX9BxXF0l6yEy210WPA0_BEyyzolqfBzE0H2G6Bh7FsDZ-avRALwfuk9qG_1IymbfZgPHddD', 'BHWtR2mmS3ZgW6F32phDalkUw0cn_mxeDOkcrZqprWgWlNTnFZ3MQHA8qf6_zr_c3h24c27OR_aZfKJEvDEhgWM', 'vxGUwbpg-GnJoIe97aErPQ', NULL, '2024-12-12 20:46:35', '2024-12-12 20:46:35'),
(533, 535, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eaf1-ccqVmU:APA91bHi-kKncWygnrNX29u_tEfFFwaK5MOmjuyNiZ0q67X3vzh1lwGuQA_TnPhwjpYntCvRs0t3_YVC9rZWZg9wIqGyaRJbmoJj8WrQhyFsabb-JoVQheXaODnS6JJTIwUxh6ZDy3OO', 'BDdAQQhgSij8bLnHzgltqsPy-XJvU0rK8q4F--OGHI6YW2TSL9D8JD97EcmiP0E7CbmeCq98slQZFYl3IZogxtk', 'Ik564l__KxttkaPm7y78VA', NULL, '2024-12-13 16:15:52', '2024-12-13 16:15:52'),
(534, 536, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dRREDWbldG4:APA91bFTNgubyzVdmMIy9Qsw8At38kNjuF1-Jpv2Sw1PHRWZbiM5Fw8PmhgUp_iDikNEpqGY7wRGHpuHADwBed4WUxoo9onEZKZSZhwbtvP3bZOXFlG9iXp07ovb_ybLk6dZjGG9Ennc', 'BIzUggAFZYvhVLYc6X7LEh3TTomTnMQmKJqagP_xqD7cE3zieJKb6PE9_bl2Ib7wEvRACIFUk-A9CUV89on5GEU', 'RQ4qRLAEOf-5b7vVGvgUMg', NULL, '2024-12-13 18:57:35', '2024-12-13 18:57:35'),
(535, 537, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ezIIaNglAe4:APA91bFSmBnnrNCvi4Hvu2WMeJ2Zrb6WTyG9igHV38bKutwiSZaHUMyqhD6_cLLRjkwXOFSv8h_cWPUz9fZgwha1XW88FaU0TKwobLs8FYWH8_J6eY8eD9_VLUWWORMyaemfm1igH28e', 'BPzJRmFarmWGyvmYTsOJvqMmVzJgzlF2IN-sFvXGlemahZV6hWub-EFBZ0oWvtLhkcUuLdrqjg5y62Z7CY2VSF0', 'NPXj9wbqMdOhpQ6rfJqB9w', NULL, '2024-12-13 23:03:49', '2024-12-13 23:03:49'),
(536, 538, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cHPqWybhAiI:APA91bHxj2uoHEoDJhqrxBmG63dSPRdUxZ_o-LSffmIpTVlbBBRIGgLtbXkBV6Zech6i86k9x1uGnSj2k5x846kuyWSLXmhyrRbboeJTf4lFl5NkicTk-QmV_LcyUlmxM5N7ZyRaAuH_', 'BG_xo1ziDujlY2yUX7Db-CCaUcv5vpiwOx8pnBsiNCcdgPVvAleI4US0gIRuaRRqh-6aUviMLLdMMuSpdS6cARQ', 'EUj77VPimuPkTVlVHl85cA', NULL, '2024-12-14 14:03:05', '2024-12-14 14:03:05'),
(537, 539, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cw98Bi-jjsI:APA91bFPNwERVpGLL54TCrgetw5KlJcpcuEsemjDCmBN2fe9WuTLaiWqEnD2k_UF8FXgTT62K30Qlyl57V8UMu4un0Mpc5j4eJu5TRtF1dn9a6gvt4Ba2OdbfPUsUriLZaGqgVoaemRs', 'BCTdYlkUJlTlw8hle6vWQL3US93C38o17gv0jnewX3bp0fAr0gi5wuPqE0QoyPLViXMeWzw979OOn7ereEIxnOc', 'SuPQmhb9mmvePb2xyDhrpQ', NULL, '2024-12-14 20:13:07', '2024-12-14 20:13:07'),
(538, 540, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/elm1or-y3sw:APA91bGghr5pWL_T3NOEhplazxmsHQL8BUik_P3wbEENd_-x5MHZEH9KD7GNVaYs6i33kL7sa6BjVHQVFC0UgALwZ9eoOxICCdzyGs_BIM8VZTWfirpF9DyVHmrwU40s_lavg1hmpFoy', 'BPgYfKWuUfVdsNRKl1mCduwO-XTu-PZDu9mCtcxztD44lR6F7WONQ0V_HPTey8SsoGZgXLQ8tnD5qoP_-yuJLnc', 'KM7VV4z9I6mMOsmyl1Q_Tg', NULL, '2024-12-16 05:35:17', '2024-12-16 05:35:17'),
(539, 541, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d2qGoEPG014:APA91bF347Oxz9AmdDKQIwodseEZw6lP4jaScY-JBkXZN2affUkF2kDWzQ_ZJcBohcnTS05-gm_RQM4kwUdPFmi9NNRzr8gi8GVfNfk2MJCoO3Sb_Y-SkZJcuZQRMa6jZUXw3wbXW9V8', 'BJT53PpN4DGC1x_Pe0FYgEkr-D1nI9S3shJQqN0T3fzWSuvqgoSy65DUK2ScbMgtGPFdyzCXHJObYgA1Az2OTlw', 'jwTFOALBcHP00w1K9RNx_A', NULL, '2024-12-16 16:26:38', '2024-12-16 16:26:38'),
(540, 542, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eP_du240bZk:APA91bGTkaukSLDxt3rLHgBS8PC4wmRWKPxPZqpvsQtuund9HNvfjvSSF7Z0n91ZM_60dIRV_yTMPaZYRlxS4D9y_r65-6NYyxUC2Fq9z_vwKIAHmU-VzZJbEcuNAb53zs-mZbyg0DUh', 'BHHYi2tzRPJdSjKRtxKhbncEbyTPldbp1qHUQzvBVZILHGvhrNzoIHl1lYuwrsq-jpOk0NXLe3I6toWt_KKnCxs', 'bhQjYg7XlSabVOmH2n8_BA', NULL, '2024-12-16 19:27:29', '2024-12-16 19:27:29'),
(541, 543, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dtl6O0cZ1Os:APA91bFZ9k_0pZtiyHuVnR_Dfla3-zbEekLYHHkmSM0Ntfpzo9lC4-QYu3dOI2LcMWjWKW4GIORGU-nC-X2-cFg7Xco4S0BSxpQhPr9CrblJhwPlP6WhQ7zZwpBUZ4Ggcd7t2bGYKXJn', 'BHuLHpcw-5NcfkE8UtOp1HfKgf0WrglC4GMS3BxBiKHW3biJff99YMgfKzwoRxryCKNqwtgdXjpTXhXfuXOluwQ', 'JwNqJHCZ5OalHgh1i_3oEQ', NULL, '2024-12-18 02:50:07', '2024-12-18 02:50:07'),
(542, 544, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/f-N8_NzfwPk:APA91bFutSpfEMQhLDhodA3R1lGZyYDjEvue6eHHP_Ciw3z-M5YUNu4HC1FpuwuAL_RpoRz67w6Z7ieOaXFTMUyP8usHVrEa7Oz4K4QAyrsUxy02uzPKj5eT7W_RPEgsKTQodL8lmAM8', 'BAtplTVw_CNFHXflXEjGrhXDu2gxMrJCn46SsB8_CbxiwSnOAaNKYJDf59Y9aLhAKJWPYQQ4o-jkgKx2yHdWmJo', 'dnZJCkGsVrXW6Fan4qHsAA', NULL, '2024-12-18 16:55:40', '2024-12-18 16:55:40'),
(543, 545, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eRL5Sb8NVD0:APA91bFnjafVBrPqzyXXKcPQHLhO5Djr8vwZ4b5jiNdKHL88fPvUbCsHz0QQ1fc51QHwAtbZqaCCB0UXnKXmtfTE25GvX1ZiZtiuQQcyEFZCnBzdssZarwcIAsHAqS9yPnA9vpsky0QP', 'BMDdtra3vwatI2-Zx_-NSIRcYDIIhZd5v8TQ-KkHWtRrIPOF8yaqWmo4FBXOqfUyOpkeZ2DJWwJBlua5MjE_cJ4', 'GDCqeDeO_pNgo_-gv2aCvg', NULL, '2024-12-18 17:37:46', '2024-12-18 17:37:46'),
(544, 546, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cS9tHNWcdHk:APA91bEia_X-Hnne7Dc-1TBxOWZdW3c7y6A39u8NTQ327Fp0TBl-cRfbP90Wd1Z1mjTca3HwmDL9oX7OSTE8zc6nu21NCAiRaSlsfCnJxmtEfxP3dxSZXtj7qHe7D1VNiELK2eTnZEGc', 'BKTaaixoQor_QidgvgPqVocu_N_jVg-PDYnCJCPtYuLIvlsBWb8tWgFaKfkbRkAfxmBzEizSL_dDrY7YS7ro18Q', 'V_Y1SqHTcCVL6zfWYz6gFw', NULL, '2024-12-19 21:45:19', '2024-12-19 21:45:19'),
(545, 547, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ccZjK-rf6PM:APA91bFt_rXmFnnnPwt0QfJKVIYWootZbsFnjQxD91h9l22_FKaG7uF1HCQfUAkWoAw9Kla-KjNP7luo2pO0YOiPm0AIqKcdyQscdVjce6KTJ9qesFNhBFg78PQ7OS_bcnrPJC9J79W4', 'BEgxlHQWInNVW91cxbK6fba6AUGlaX03zF8C7FhLwnerlCL7SF2YxySer6umPmJz1GGAmGpo6GfUKf7pyZZG-YI', '0jVFm_YmLLzNa_2aNi-1xA', NULL, '2024-12-19 21:46:37', '2024-12-19 21:46:37'),
(546, 548, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fZTE55REnk8:APA91bGLQ9K7NWjRFJMwpIiB5pJqwl8T2PuQTa-386dQs6OQyz1vEAtX2NptGAUJ_ksUji5dtLy8V-0Whd4ZmxsbWtxXG5fpu6sKiUsS4oxGN9CE8SgL0TM7Rm2eqx8eR8MBPOWuabq8', 'BDoAfNP0tA1i-gTm-LxpjGdBBpktS9Mw-NMpsNMzrWq4Ll-_WFd6xdirkKtlF1Cu5LnSK-E0pGSigLeklzW8CVI', 'ukGh785kPQNuVPKt3mnTrQ', NULL, '2024-12-22 13:57:04', '2024-12-22 13:57:04'),
(547, 549, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/e1FPWWoU4G0:APA91bGBxc_v2Y-KK_pO7c148DKPLzM9AgKELo2rC3m-juUqRdOwjN4Af8uQhtxVNmvwbB7Bx1NMhjd89RZcMYq0F7HPPXN3-2awxGCoGa0MY2Z0_vHUAOvL5iBfCHPMjqqmCaSyHm9O', 'BNXTp3C6QP44UEKW3ZcAFvmBoVAKyJep8m2-WsAdpjYeVFxHkM5MPfkq45zCVQC0qMHPTBDhRV3ye67hsZ25N94', 'PeKNZ3U_UYKWMZZ2uGuMpg', NULL, '2024-12-23 21:24:25', '2024-12-23 21:24:25'),
(548, 550, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ejvEMusWcto:APA91bETJ_8F6RhdrExdzNESfbbE_9PxJcq3UWjqtAT3vKwCYJ_THVD1VwjSkFXCLJSrrUefvutMaPQkP_AqUl_IOgqIig7nzNQjrqqRGUADLHXwNnDiOyXTKKdDwWfJXpgSr3e2EFRx', 'BE2sPMAnvsX3zKZt0FD-oI7TjLt9_zL-xqHRNnsscsyi0najAG6B3tp0eOl5AKQSLSLWfW1KCOVrUG9e-J1VIZw', 'Kuo1FB8s81avNmnB70hPNg', NULL, '2024-12-23 23:04:30', '2024-12-23 23:04:30'),
(549, 551, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dYYsoj8A_LI:APA91bEm9x0cKAmWMjvDi8wC-05tVhuveucULZQs3yPd1zW5ZFhufOjVpTvaIvNK8ooF0De-5tAHiFAd7Rfc4S9W1PnKktPeeOgOxpiy8brvEe8S8-4qCrOuzYHasRfUeIv89Gtf9QZ3', 'BKUh874XDqk2-YGuIKf5HQOnsOhed6Jg08jNO_6UZqKY6Nt5PK50MtkWk0pEhs9me8lCxgchxAQ4WU8LJRq9xTM', 'C4DnaxbFicwMw3Xtt-GAHg', NULL, '2024-12-25 21:00:12', '2024-12-25 21:00:12'),
(550, 552, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cK9f0nUpR9s:APA91bHnGii64JzA7Pcj-IfsYpQvn8AXYdbDwc2C97hWttX4KGIdW1-G67nNiAW97XdPI6N_xmAJQVOYdjv6ebQFF-U9_BiXPIjzAijmaJeLnGFurfcD6Hc4dBgkJHVTp-GXtidrTMwX', 'BAcD1RKOIn9rAMxWveXqf-XeNYTTWKLY8DEgtSo48smrmeX84d5oEzPAMhte2pz_fL8wEc0xriU4HkQKDevvll0', 'yMgz1_uNzkG4yxIZDqdz0A', NULL, '2024-12-26 20:43:41', '2024-12-26 20:43:41'),
(551, 553, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fKEuyQMZQmo:APA91bFDQ_ljihqdV0gWIgmP-2VSNNNp7pKdH5wT28PFlaeORT1FW4APbmGfFNnWtPhAjPJ8k3-5unIH_2SEPpFnn-AhBo619wFiEBqOD2O8q0cr4FPD_ontgzjrzObPI_e_z7xpInLz', 'BIaMiRLMzQWJNCvUCC7A65L3mtvqOQ6GT4yP5XcZTVsEGDyyRdYGuEKeqgLWLObFOX3905SzbgRr37iT3XxVg38', 'ZZa1wdBbqz2XO8-Z3CvtdQ', NULL, '2024-12-29 16:15:59', '2024-12-29 16:15:59'),
(552, 554, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d1yS1Pil1ts:APA91bGhMpjct6oxBb7fm5BHCUng4RZOIvseMxDFahnEZ8a_gSJBTGX_IrOZ2U62demUWwluFcUogIT-tGvdrVDjKZpMhbewLuLFGUn7RZ_sngZT9ABzu9Gs4V1GDe2_Di1E6L8ZhNbp', 'BODMdmOXg9_p_24D5eUZKgB3p6IbJKoUTxa6e0thagoSHqdQsE1ISaVQuwzT9LQMXfAZkPvdgv2Si_jg-w9z6Uc', 'cGdUPm6bhP2zy6FbrWJL1Q', NULL, '2024-12-30 14:28:39', '2024-12-30 14:28:39'),
(553, 555, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d8gdrUFH7AE:APA91bEFE0mN7yPRZ1HNQF1xNOdp93Vd0w5WJqkVxT5vtJRWy9qnA8GpI690pHyJyFLgmEQtRGrdxelGVs3lgRUMkqwIftZ_F2I3cQThLVzN5xNb-Y7nI3JJC7Xnv3zvimtsfYPpAwaA', 'BPQljhv159uT4HmJWXQkBEwXVeNpzSAEzpRjvvYIi9iFmnsMiJ9ZU_pe_9wp3Pnsj9AE4f74y1OCsB63IlMFS5E', 'Gb_AyoLiN36QlaKY57sRXw', NULL, '2024-12-30 19:09:18', '2024-12-30 19:09:18'),
(554, 556, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/flpg0WZjpYk:APA91bGUU_l_Ajr8CqfgImjajCmS9JnPRZ9t0mLE-IouYQGsZEMg9prxAm0-o7veQ-8onmVOxiq_Dy3iVJB62Uy4NpotLj4nWipo9EeV-zWMp9F6fj3Sy7zHaB5GKz1RmtqR_YHKEBMT', 'BNtx8pWq8cjzClO6zUgrMonsgYYVn7_W_DKFZOycPKFAuQETxe05Y6u3GMTq9yZPRGML-Hz9pg6D5_2Yq4-Jxps', 'OCj8sy8LTSmoQPECjPZQ2w', NULL, '2024-12-30 19:14:56', '2024-12-30 19:14:56'),
(555, 557, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dDBdeBASDkA:APA91bGN0TH2_jrSfLnEWId_ku2HTu7YU0ARUKBIHP_dS2sCxGbZqdeyllvvt_CsO-hRvP3qfQAhHHoxMox2i1YwTCId5SxJJA5Hiu4FyW3bVy_D1L-YA-SjnuxtevpxbOLcnUVlEBrX', 'BBkRWV2VFfR01_vRj5EPuucKkaDBfFSxPgy7IQlybwIFs5orb85OcUZm01RZTYOaWTCpfMNUhkrUJIuCTCuPtKs', 'nrPvIenWsnDfMAvoceGSCg', NULL, '2024-12-31 20:19:42', '2024-12-31 20:19:42'),
(556, 558, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/foyisbp-Xxo:APA91bHkN7aiE-QU06rTC6X-OyzPInSpBH7MUEZF45zbU0lKXcizFRA1U7YNa8NPGO2olvO0ik7eNlXK7_j1GMJF-0Jk3suhZfF9fT8Dp0EK-JQOcV2KphqlI39EcpLYHJjgmhe1m722', 'BBsLey5Dj64hLjTSz2lNlmV2WoUvTp50mjBwW9JQuOBx4r2A0de5yUrpXh9JVR1SifGnNh8zc1WWlAok6cy47hQ', '1DV9Zp1ygJUDhTlpZg9Oew', NULL, '2025-01-01 20:06:25', '2025-01-01 20:06:25'),
(557, 559, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/exNnTAOzIB4:APA91bFzCfSUSo7nYcJcTNnND4Hn_rEol7gf887_0UWemek5PKlqF6qunkJ0EbKe7OagjYxqWTrOEvCXQ5sQ_Gf3DkuySL9bNRUtj182NUkeBGvYvggn4Mpd5cR_a2sws7xhs-jIMu_I', 'BPqgJpsDHuC6QpWG0uyYxEt4f9FPxZ8D3u6mDtcmmNJ56jo6_00GMX3NOXefGSu_jSRZIan5I9D0P6B9rgkVCIQ', 'B1GRoHoa4DRY1MmUHM43YQ', NULL, '2025-01-02 19:35:55', '2025-01-02 19:35:55'),
(558, 560, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/exGovE0d7qk:APA91bE0R4XwTz_QOiQNaLOU2n0MlyF-YlmOSEQ7S7B9Xp7uEwToO7c_nH2eljBk_2RqoasE693WhHfJ-pUpg2SinPfPxY4guabDGb1egmjfoLl8LW4WnFtvjGacGdVbnL7v8SFfinb3', 'BMaUkNBFwB17ltSXLvu77hSReB7QvmspStIHiJHajlDJV32-ACM0olpg3WdYoZU36YfaPE1W6QJEcSXAids4-OQ', 'tzOBXhnGQfRSsU1g2s7hTg', NULL, '2025-01-05 18:44:15', '2025-01-05 18:44:15'),
(559, 561, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ezirU2cDVrM:APA91bH3gLnrmRZrBTUiPCvHAJiFWXzph-YHVyBPyi2tODM0PE4HHhyVwLjV_lOpHAFVuc05iQMLtnnpJvRU_w2G4UmdwqqRWLDpADa-tmMp6atqp9zg_zsnx-UKfsfUNAJ4R7OYAZFj', 'BDMwYgpg0GNNAo8EHsZCcGUVUWnmg5IeBMXlC8VdwKeHsdvH-5qmXqdjSxHyB2WQQKySIB_DBSTxeX2xQElHWC0', 'U0NACxED4Cq9kLQ_1_7BxA', NULL, '2025-01-05 19:41:12', '2025-01-05 19:41:12'),
(560, 562, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c2jees2c9gg:APA91bHMlXYYpEa8BMF_h15u0ytegNaLhBlqOKtvJ1kUz2ZF2WV7nCMUspvuo51cEHcnm7bvR7p_vnBKTD9aq_uE4xxdfz4ImboxgT-X_Z7ux0yGoGlfXyyv0eywXeuGAK4ycUErSBJe', 'BJzw_b02_tjx7PccxUrbubBgmVTZDscSmrENBUZL4F907RLG_l0KpfLMEIST8GZAytPb0OnI3S-MgsQx4Rmh0cQ', 'a6qj_Q9uXIsDTO6BrDuuhg', NULL, '2025-01-05 20:20:57', '2025-01-05 20:20:57'),
(561, 563, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fIIeHbSWNTY:APA91bH2VlL32xINT_p7keWPQCzEJ3BVFIhbGFkzA4zBtrn4ueIcRlqVD4LBXrZ8y2eOUpwBeMt7h_QStJr_PfSM1lFxb8K1ERFaR6iPGDFpZ7DJBjJC8cZ2_hn9rC8zKeCJXmeGMIOp', 'BOe2hG_5nKwB2ekjDhMKzTM-3fGOELgq_xaYN7mgE3dyE3YZ_kcMmTfvFVil-yRRFF2Sh_P7SzdPPM79bh0IHaE', 'WrBurcypCoxdhQRmGT6hOg', NULL, '2025-01-07 19:36:25', '2025-01-07 19:36:25'),
(562, 564, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fXroZZN3QYY:APA91bFvwrRMmys1_qgAffbvrB-Kok1qRNiEL8AECZ1PtfP7cwhB3UqlIymPTTohmwWCeWQ3KpZpz0f-qu0ktEpw0i-gTDQvJ6eILtBUmL0DXrL_j4ni6ALO_71G-tbVNM30ZF1Pe56C', 'BBTDQTqozvHnCH0LOen9sAqaMJiFdsuOLXQl2yeSexngIoZCwkROE7l2ycZAibGNIMzzTV3MpKMft_mVXfc-Jh8', 'TL6ZxPPqNOJR9OGFqGtJNA', NULL, '2025-01-09 20:21:20', '2025-01-09 20:21:20'),
(563, 565, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ev7KoPZUqG4:APA91bH9M31PgFqIqC1GxfZ6UAiSECbMsBaLoIh3LxS0XJplxXX79gyb_98NvgdYwh4ZWqaIDf3aO4q8lRz7fniVGeeQ3TI4QTwNKQb3LY2c_dqGpbgHsfQBYeddIofk22RPGxDmGAsB', 'BG0tl6RVrQi8Q1lLIzCKFlNuv6_EF_cE4LNz4wYhbAfnr-KbZ1HSA7FU84kyyTI00PKzV_V-aSRKllCW-yH16T8', '189-c_g0yTRUVYE1Mxo7Vg', NULL, '2025-01-10 17:27:30', '2025-01-10 17:27:30'),
(564, 566, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cpKlCfWL7jc:APA91bE92d372g0zNpcHePqPL_l0MRIAsO-0EhbCAY09dEb0neF2qQmgVxxotR9zlMO3j0DZupjfhTXLp9ltjxfHF8znCTcqD9hGc8HzQN1s3udvJUftHYymtzvMDpJ15DBRsE8McFAZ', 'BF2aoXfC5pPpGUeqmpn1z_50qg9-PGDPj58ii0W0Vc3svu2EopSrPo1YXYcRJHrrOiogyPvMiQwhzPUxxWs9i14', 'vcA-3OMP-1rYOFIKbCxCEg', NULL, '2025-01-10 19:38:45', '2025-01-10 19:38:45'),
(565, 567, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cXf1FvVjS9w:APA91bGpGhfj2x2SB4BtFJszuMM5CP-uuJjO6f9zXLPClDwxdl5PrzX44EJZGp-gPym_-W_sLtrNbJBmnJTgUa546X9KDbIV9LEgdj0pXP8r7550_rRkuLjqdxdHLykF03PRoFWsc3HM', 'BPYGxWDDVk8G5KgjgKX49CFUzaWGZ4LA_3TDbcHIwD5cuuRlARxSSmceSx41-t_LZpyvcMy2WMlQwvOX_2SNPkw', 'Ctk9ftkx_HjDtACiLUunKg', NULL, '2025-01-11 04:07:09', '2025-01-11 04:07:09'),
(566, 568, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/foYg_k-YfKg:APA91bEsEkdAfcZOR7PFMHLEOKUBlnvp7Vp8AdGwBthldoiV3g37MyaJEmsTIs7oiM3HQxerKNxAtj1_oXHE-Em1UhocXnG7jBmdYOPf4SyuS_P1fwozfaFPceYTO0lLGukwYxW53i3L', 'BI2AhkAMXcle5sH7Drm90yo6ANPVPhSpurEzxpcIX3SaOhDAuv_S0A4yaC-7ucF2WBTV-SlnFagLL6qazcgiRlA', 'fgspiQvAvNXbHwpLDYThHg', NULL, '2025-01-11 17:28:40', '2025-01-11 17:28:40'),
(567, 569, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fp23EoiKdvU:APA91bEOuIBi04MK0GQ-VtUTVAGZ7_wU5StGb27Q963_2fX2y9f07R7HA2N2remFIstE2QcmybWZOc0TMIpVeGdTib8PK6I5KDCCv0akYdei-72Ob2hffAs1OJipwGtcQAOtaqkP5aif', 'BFNL_j6SxMLusFVXGW8Tfsky19wP8JpIhPlN6z-A28luJxp8eQ-oJfW9vv1y-PiY4ZZG1KUuhCl8LOkuzTOETig', '6MP5mROZmMTqfQGbb0qgCQ', NULL, '2025-01-11 17:42:22', '2025-01-11 17:42:22'),
(568, 570, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eNarEMb0S-o:APA91bFQ9ms_OVfcCnlbyaFLLJw4gC9DhMZ8_174XolRTbT2vUqQu8iGXvEfheEHUlIb0nzzreqwVelMSxVlFGGAMX2qLGQAap4RtaWE_I-yPfUujcGE9M0kPsJMUN8S4R6iyhcWzEsU', 'BP_UIrT9RtWTmeAXCvltElJ-9rTt5n_O17wu_AzIw3UOsGJkX1t990-39n7I5l8og7udLsOpCy5x-dLxb8CVlOg', 'VhlJPngutOfRxY-JAlRjFw', NULL, '2025-01-11 22:07:11', '2025-01-11 22:07:11'),
(569, 571, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eC1tdp0nFzI:APA91bGWwtGRa3D3rpw_Hoji9yA6wSXwN1aZjBNAtEs30AGC3bfsY0TYTMwjvH4z4zbhYp38BG47JlaSGQmKqYgvwsSd-YJ4xTHox_P8DMgxShm1Hxsg84j6Ibgq7Pbg9YYp-7fQpysz', 'BIu6-maP7Ll-gyweFcaqTUBzrGo_rK4woYyHRWf8UQ1rWry1-aIg1pvOd57qzyOTseuBASlcPAe_hBNMyqQ1bIM', '6GbSlrKYe_x82V9C8yzrBg', NULL, '2025-01-12 13:05:41', '2025-01-12 13:05:41'),
(570, 572, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/emO6cQwZbww:APA91bF0ewbCCyODvtf4X9TXv80Z3adCy97T1Nq7dVSxKif51j3-1_6P2n-UTYeQ2SP93tStRt3TmBTGv5eKmht3kGqpQUVsjKkfGenAUyCHDTtD6L2JN_XNmjVFopO8MjoKOXByZRZt', 'BHfM1ZzGtdio6VCtp-NuOoPk3Fv7XLIcZW5w104RjeztP-R5PiD6PAJDYBar8YeI_GVMtXgegEoYFzJw_yL4cMo', 'RfzK2XQZ1C4D7ZV4PfKMUg', NULL, '2025-01-13 19:23:58', '2025-01-13 19:23:58'),
(571, 573, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eRAbP_jP1XA:APA91bEUjMQsWP-bMsPnydOliAHPuL3gGItgGBtA2TWaNzsDYxCQn0KMTtg2Pl7PIs4oZuxY8am2nLb2QyikHosjpU_RHKE27cEAPemXxyXHHToCkNwn38QpCQjHaD6MTlZBOFCW13_1', 'BEr2d8cHP8MU2XS5ErKRjEY6P9SwcKp7yF0gN8hKQK3UBLoLlIXkvKMqyyGfhPVPpUIzWDNerQ12zdrZckRzRTs', 'MQvkADv_eENCGzPkicPHYQ', NULL, '2025-01-13 19:24:26', '2025-01-13 19:24:26'),
(572, 574, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dfDkxkhAYhc:APA91bFUzfJAUo6a-cpY-lL0SPM10Ph_O0Njo_9pe919IKdzE21eTMaOL_H8QWGzxO7LwT4dX-9Bc_Zo8NUCrBsU49_qJ1txz394KbKvM-EwRl_J4UBZdu1r6QcINaVXI8IYS1qC9UUU', 'BKTMP_M38bwZACFtXxs705u2bzeEdAPi_Qpoc4iCFJvON4tAcp5qNWKLv__U2Wp5sqiKp-Q4gsRQC-jYFdYDgoc', '8md0Pkj5xKRW7vKvor7Ncg', NULL, '2025-01-14 03:51:32', '2025-01-14 03:51:32'),
(573, 575, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d3mTVQBPvKs:APA91bH-5hNxkK3nDa1WbXhaTCIbbabgUOzZ4vCDv17YzagkzQUipg9AofyR6IGTdfwk2JAHRk-4afAMPHyoxqx_aNACrvtDTd49FweVsyM42PcUKxh9j0uLPQrRViNzTlxIVfd18gLF', 'BA21fGRcqIQgfOAQP1wdR4XZ1qlBiQNA7z4DBL-iTt4Fgu4ci7TWPFwzAJp3h3aWFBIDuj3IxSCnuUS_jyqQ4S0', 'xxSUYO2l9AD8OpzRdWqW8A', NULL, '2025-01-14 20:20:04', '2025-01-14 20:20:04'),
(574, 576, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cl7NiiPzFBc:APA91bG_XxVVrmHeQh5BDrgtT0RVSQZivjWxCcpA6Z59Lgmn1SMdCTDyS6tQ0lBm0KQq2gRh5YBHRpHkGXL2F5oWU2b_mUyGAZHHIZ-nUhZH-peyqv70xXbd7P-JM9Fyp2vGsw9KEulW', 'BMnww3CDJrTieBdEajCeZ4P1Ck57UAjxo4cFb8qDy3SDzqBViChfVxTPr32bp0md1Q2hqt0LtS7ZAuISx-UtMCk', 'qrsG4D_cYjZioduVWBGH-A', NULL, '2025-01-15 19:20:07', '2025-01-15 19:20:07'),
(575, 577, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eNrvOcylnmU:APA91bHim7oWhGXzxCstRtW6GgfUGO0sR-8iLsCod4xiHv9B4GC24PF7wWUEofnRCXUbTsoeDb95UkSq3dmlvpCkf8eig70uwTCR7mA8RcwrF22W4D1Ju-SikyzDeGusg6fhfNiqe_2t', 'BGD7I6bZBLnJJRMChFI98jA0wNlX2VAw6th3GwIij1I9IqQUCyNPtwuWMCOismiVY3F86ADzIsU85nPGVK79b-E', 'bP2yIziQfbIuUIeU1BXujw', NULL, '2025-01-16 02:11:49', '2025-01-16 02:11:49'),
(576, 578, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/e4vLf9Y47ek:APA91bGXRId2uaG1bZPjduuoQzI1t4ijFRO4AaUsIoEVU1zDwiOTILLL-ckacwLeG-0JJzdnXFaEErCii_dCVPDXxhIOZQ1cGgpmh8nWfvuVfvMGA2-ptAlFF0b_tEUfyY-dkzdvmMRz', 'BHOWYr9M_0tDg8Xv4acCdGCXchQAFVf0CsvFnD-94yGcLKAvbT7-PBcBH48WJOR8lvUczCOMRhvIlqBHTSNLmn8', 'jaO4iv85WafSNbEpqeW-gg', NULL, '2025-01-17 23:12:09', '2025-01-17 23:12:09'),
(577, 579, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c5gNUZrZKXA:APA91bGy5bgMjq1i9Jv6B1dgRHeRxdkbumEfRAPw9eNkknOLpNr1HC7Yx-BZQdnSlaTew9j8zjk7Ic5IXZhFVbREXU7v5VVplGkLhb7521TNMAWX1gmJZ88xFw6ARNXTwImh0T3NRZTc', 'BAPffBk5MspmdwOpHxpuH7Tvvcr3zZyP_y2b6cilJYZNsRzW46wxHa1uRdoNUtpcfNSsYNzdi8c-riJvbGRJyDg', 'Mi-dOU-SB6ibvyTMmrdt_Q', NULL, '2025-01-18 04:26:49', '2025-01-18 04:26:49'),
(578, 580, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dgtFR4oru0Q:APA91bGHAyblIQrLsLpDkBBWnSV6HbRSViCCb6lH_IZB4ryia_hWnEfe0xMB3d6r2JbFn9D0WIV-3VvaUtK5_YOCxF5E31Mv0spUZ3QQ3ssRqYn4eIrZ5f6CI9sCA55dOpY_vPhsUr2m', 'BGitlmG9926bs7snu3wVN3Ox_xq5JE0v3Lzx-rMDBA-EuWEvgt7daHsCEGtiAsFMGB_JUjz1W-vL3sib3oR0xb4', 'uulkWFXPYLJxyD58vCM8QQ', NULL, '2025-01-19 18:37:19', '2025-01-19 18:37:19'),
(579, 581, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dFwQvfUChd4:APA91bFBhAWfJ4Am_FEevW81ta-ftNGOhe0ErqxF0e7vZVf3uJGyJQFTseTj_mYa9TpwxQhgf5h3qbScPHwnW9rOGVDOuspx37pfpzx9_bfjLR2b3-fisEwW-B_PWz_AAem9OkKeBbrF', 'BEmE2Gq2jZmTpptE_nBXUUigXN5j0GkX3UBkkUqs9j4Cttp2k0Dn9sCXtGTqvupJLNZ6xee7wmuAqy-Pf7hKGq8', 'eF-Po2lwIMMcNbjn2DU2nw', NULL, '2025-01-22 16:59:51', '2025-01-22 16:59:51'),
(580, 582, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cUUD8I4iMHc:APA91bFioW-f3fy_8zSArfkjZ4nq9i5eivt5H8LZW9HlsmLMxUt7rwrXxDknDQcL1SARoc9AQmJElnhyjlgX6sneyVGTXykBx-uQLIL6wbEVkjWSRXwuA_Diolc_v_yn9yRUSDWBbfcP', 'BMa6MJegYNV7g7N_SGx0S4sY5IUZM8qfNwcaym3SKggcJdntw4vC0fbSalwu439rNDOgrrESR3Bu4OhdrXATMNo', 'iPOb4zRGk0w8fYk2EUMxig', NULL, '2025-01-22 18:39:05', '2025-01-22 18:39:05'),
(581, 583, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ebiYSE204LM:APA91bF1Yw2A7Sn61Oo41EwIRt6Kql2atR38y07vwCIyYpeZ6Y_uO1Cuo5eVx1JHDmnYIg7XhT2FJPLXAdEh2XPQSTpJvjITbyNiKLXMdsflccJXKrGJh1ueMknUfSpP6HZkXm5g7BNj', 'BIFbxPJS4NJMXhgD8NBRSzXLXzWkhJq8d77IiXvRIFXeE67ZtUFL_CJp_pkeDah9dcUordwk0LnB93E05zI0K4w', 'I1RuSNMNGDDH_wGvdkG6lg', NULL, '2025-01-22 21:52:21', '2025-01-22 21:52:21'),
(582, 584, 'App\\Models\\Guest', 'https://updates.push.services.mozilla.com/wpush/v2/gAAAAABnkjp3Sw0IvQZvL6tmOHf0ebqCM2SpYHSg4LmnvJw8dS6WNNVk6niio-1AHzQBZSEkhGTsnKIoYQ6ohL8qL8mQEXQpAvhSgXE1ksPuicTRvCkYwuMyEpO2X5ghcloRBJHgd7tN-PesGkHt_hG1uX6J8tSflBAJ2R2QKtpCn6Flhtd2-yk', 'BGcznrkMz7x13KGnzId6-RC06FycNI9NSFl4qsQXa7R-H2WIinJaCRmG_CAdRqaL42RULG8HNrZLcHzssMc4f4M', 'TIIboKURmqMTuaIwwYl1Jg', NULL, '2025-01-23 14:47:51', '2025-01-23 14:47:51'),
(583, 585, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eOmDMN8nWLI:APA91bGnuZ7xI1fhZ_L_m5LWBdE0U0z_dblL1767YUFXjjpiNxjRtsv9YUkRPJ9zxP3GlGi48Me10lw13Xb6a6JviMZJ1bhs08jOHWt_vjtLHfWF1PZX2keB07ljSupgNBdczwcgLXdk', 'BHnDIJmUCOi_aUy13oVkyop4L_5_9VKtsWJd28RxTEX10Obpu7i5WnFOTAaSjiNKbkwN4_z_psAwsPiCrYRHl3Y', 'fslxO_S1najjA9ylArdmrg', NULL, '2025-01-23 14:56:57', '2025-01-23 14:56:57'),
(584, 586, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dgjfrS-MHgM:APA91bGaFXt3jxrT1siL1qFtUfi7vIqxfAUashVOeauYryWW1ZtgYxTdccmQG0LCm7H4Q_cTVm4LpB16fFdrLJa1A3WHVUaQogvjOBVFAFz_f9BbamVD8PZEXaTZqfPivgWqlaPRH_GR', 'BAClxvM0u3Ct04RQ6Huc--qQ_32X_wk28EETLqdfc8lo8i0o5H22EeyZBTA4JKlNxsmXH1JzS7NMUrKfDiEScVY', 'WTdCXm2rtzYemKuGKGh4ew', NULL, '2025-01-23 17:28:14', '2025-01-23 17:28:14'),
(585, 587, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dalBOIV5-U8:APA91bFqU_NMyFFGQS6HV2vLAbAQQFajRmA6UCO4q8nBg-FDHzGF4PrPv6WH9O3KhttCP3IBV8dzNj993kRFW2_UI833KKYqOtxiorv4sask2BbHtR_0mY_I7bnSd6XyhPBchgZd7wk9', 'BCyyQry1P8N7iATE4w89AvS3akP3Lbh5vCUaEKVwtQHylEFMS4gOZRdZwmegR5iXmKYcn7S3gEqqJ_9bI-woD2o', 'uOgr1Tk1EiUVPVIm36c6Cg', NULL, '2025-01-24 12:07:36', '2025-01-24 12:07:36'),
(586, 588, 'App\\Models\\Guest', 'https://updates.push.services.mozilla.com/wpush/v2/gAAAAABnk7CecQRBlVKbYsSfYTF5yIqQtFel4F1kBkPP0ggT9uY9FGmwKd678fFavLRB7WeRHv9re23zt3p9iu1Ul3I-iDcQmJrIFvWW73_KK8P489fczJmjh6Tpz28mcGDS75_xjpdeFn2PzjnXbJM9bptd3jjmVA8P10J0M6flJEvP1GYj8YM', 'BKtAz4p2LTSx01nhIRScPEE7ssF5r5_3f3s6WI1x89IqfAlN3N8kcdtN6bS2ccEtNVyMvm8NsKFahdHgA-9ViF0', 'u2M7thhQFW-H4OkH1VRPQg', NULL, '2025-01-24 17:24:14', '2025-01-24 17:24:14'),
(587, 589, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fuc02Lxl2FY:APA91bFU-UfwN_Bwt1kfSH7Vd4WgJjHMXsS4o-x2ybGBvxQbIbuJMvHOebPtDkon6uthdHHCMB8NM5vudSlIojWXHEl0BsMr6zRE7fuZgcmnYNlUPVIaRUs4RqFFuqXAy763E3rpZKrp', 'BFgimlKHh7q_oFTv0FnGTcyKl8k_23NR3hGlHJODNwk20vaBDEo3kDK_shbmFEDWO6o5ZtbTqVX7PSIi4BhZq44', 'T8tIVteHHR-Vd78VoR8CRA', NULL, '2025-01-25 17:55:57', '2025-01-25 17:55:57'),
(588, 590, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cHTrQ-rDFEc:APA91bGqb6U89VQtSqAXD3t0rjQn9_FVypzJpdNeDUpDwpzbx-HDhBcDrMtf0fQ2fsJLCiB7OAiBUmgHlTnSponlxgsIX8Xh71UyuZJdElG96MkG6X_YeehM1cJQ8aocOc_FnByxa5o0', 'BPXNPjELXeUlYE_0FeQCBYTnRCCUc_Z8hPuYdYQDLt-x-mEafonuh-Aph2F0dWEeAo7fEKohrJwP_RPoYoTtLSY', '25eij6NRHkmQOw9tW6GSvQ', NULL, '2025-01-25 18:41:43', '2025-01-25 18:41:43'),
(589, 591, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dy2JNFEcwsY:APA91bFg-9SOeZYM9a4FD-C_PtoS3SzhntGVm1ISi0eXguyZoRCe-aLY9bTrXm5PqiA5lTj0wHF9Ge_wunlmYX8iRUWoGAuGWN0nuLdVro1tBeK6stKO_kjJKkoH6yPN6qQOnXCkw-Ky', 'BLHGvW6_b23XPyi_8HBQ6rYxoI82qLm6bpcd1o9fsH-7tKmr7okb6SxryAyI5IVqAMauHrK3Zym4jkvCF-jZjec', 'C1yZ1ZQyOV97V3c_gwvE-Q', NULL, '2025-01-25 20:11:10', '2025-01-25 20:11:10'),
(590, 592, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dQLm3u5bPHE:APA91bF4tQd8mvjzVQth3x7RJrbiHK5kLZex3iJhC6rlXsKVsG81fKJnv7o0uisGOg7UKiozfQnFdfO0_5V1-DSKiz9FfycLGz4-F_Fm-n_zFbAsmRryJWOWDbNbjDZF0ry5olUb9YgO', 'BB2R4fIQq3SRvHOinlamivuSRo2Ka-rmcosvjWc9fqM1e-3mhhS_iJpsOZsF1-vgMVlp_GpluRESh4q7xa7s1L0', '7j3nGKzqXZl2igxzqJm27Q', NULL, '2025-01-25 20:18:57', '2025-01-25 20:18:57'),
(591, 593, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/e0nEy9bV3cs:APA91bFp7R_bVTSwO4Wz2dqC08GfNaGZARttMqM4iSAAvNQJrnM-XfSg7qwEgQ9yZWbmZ8AIQZbQslCPk25gGFgogcmVdUmArfVkJ5cDe_uy7Dl5dO2yFztSzj9g_3M90KiVQjMOnwhM', 'BHJadGuTshep5x7odSU6wu3rn3e236KL4yGOYdzu6xu-VxKYQi0SW0_7728N4gN9N1efFisNg3mg8W6SKSsT5cI', '1oTnEz381MGYIFAQUlI7WQ', NULL, '2025-01-26 02:07:16', '2025-01-26 02:07:16'),
(592, 594, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dsCoTn2Oaio:APA91bENam_3p1hJJCJNiCpy45BYplk34KxtQfJLfIUGT55GWsiYLwHE0bA183liQid9tCjnUx8lrhW_imswjkILo7CfmdARy6d8YSmT3eHdlr5cl7r_Y_6T3PV14_Lt0vCNBwfDa-tO', 'BPRqlvtxHl5nCU0o8YdjrF3EoIKmJIEj6L7_7QwLlPoYH5Q3BsmtD1ESC7iPCT_CXWoh-hbAu01v4z6hE918KLA', 'FXHVPLG_6Y-kNZDDvchpqQ', NULL, '2025-01-26 17:50:56', '2025-01-26 17:50:56'),
(593, 595, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dmpL69fIe0g:APA91bGiEDs_dlAG3QkECV5mht1QMy6ObX0s5IhJ7bIfzR4TcLhSlsvy-1ewun9s1UY4yvGd4Xm-r4t309e7CXgHK6mXHfcXB49ZGi_VA2X11KL-k_3ZmD9Smp49k4jOJYKkMHbu9Dqd', 'BEhnoCCe0zNOH1UdArVh9m6LUJhFuEvTc6chIhGJERGOFmEZD3NFgVh0jYMP-9zKa71W5WqA4PPNwmbl8KH8_wo', '28KsC8s6l13TQWNFgAOawg', NULL, '2025-01-28 22:22:17', '2025-01-28 22:22:17'),
(594, 596, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/e2NRC613nQ8:APA91bHVa9aT3xXMdccAzBqphe_nS3dlikyh0VVbqrvnA_-4DB_rBzuEcio-_09161qafEK-0TAFb5E7Yl-2FBvrtWGVO8_Bda2AiHB5y75bis3EqFDJn7cBe2KQkBAit8EIPYQmjROs', 'BL1zTBFJth-EDOsFUIqhFMoRy4jm3dxeEILJrXSQ7SFHn7GpZ5e4m5CfluZSweNJ-16-6UhW76gVl2m4Trkbi7I', 'VTJ9ihdNUTgw3bOX_uDRaw', NULL, '2025-01-31 08:58:39', '2025-01-31 08:58:39'),
(595, 597, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/egCPevgmbfA:APA91bGZIJxsPL8sfrYERcBsVyRffQwFQdDRpBbUseKcMscFCbQcHT5INVk06_pfBuOAXyWr7k9AgBgDjVMOOx265FOec6g2BS_YHkVwQlyIJ6BB3GPnReCZUh7tb8resPmpXh4uKnn6', 'BIj5w1eguYyHMpAZ2S0t4AonXv7v2-7r_CRnhN5MXV__TaXBCvloT5-MOqgWlXp4p-Qxq0ZhOzzUj0OFrNOSoF4', 'APxMR2vcYM4zgSZZyU2YXA', NULL, '2025-02-01 03:47:02', '2025-02-01 03:47:02'),
(596, 598, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fRSVLkNq-7k:APA91bHZTn_xr-8jd9utiFJAf8R0vChrKC1esLDUvYYBtgktEvCbdymeniMY8D9AQfwtOJlZ7PPhLrMlKnnOVwARNgWpVKvcQaYtRZAHUnWQTHRAx3wPUj80bBfK1pMvC1S-T0mb9fVj', 'BGhfpvkhVRLmq_po4aU6n7Puw4uR5iH2vVW-XGJAeSY0CLhjk_YtD6Jiv99X5A3FLo9HVOPkaukNs3mZbJ1XkSo', 'G1JLytGXwNKsg2B41Dsa_w', NULL, '2025-02-02 17:39:24', '2025-02-02 17:39:24'),
(597, 599, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/el8uPHWTqWE:APA91bG4zDH3C4oCal66arzsGqEzDHWbLNgv6CiFWVwbyZO5dcC12sMp1nLgQfxbMa9NzOO6GOlDr0ZnwRjbDL7MMTHY9_W05xAHehRBg-NY-Xl3xOww6Pwe9b05hxvgd-MRkCGS2nA0', 'BJIljDb8B8wn9iT90bUgBaxrqrQSYziL5J1N9vVUZslCizhCMH4GRZb_ltf1Bi9GAn37QTkcUpEtkBX6Cw2bqW0', '1PpAVhUW6KwQ0vBwThobdQ', NULL, '2025-02-02 18:49:02', '2025-02-02 18:49:02'),
(598, 600, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eGm0jvn_fZ4:APA91bEMyWFb3ji--xHPjBX2tuCmn4sg-CoHBI_ve4Ne37iNv1tdZjb8IZ_IIgV6v9liRxjT8g85I-9B4W_b2HEAAY_TaLozrVD56imCz-N6tI1bqQpTPf08zhZSah_Bg1C4uzaFszT_', 'BIUneS1r9B4OlkpyJhQeJK5GOtraGl125u6m31p15Z9skjBewUj30vvPVSzb_hzAaZcCo4nMeUiNZsgvdn9IHAQ', 'RiMHvOwWiYH-puV40zk2jw', NULL, '2025-02-02 21:20:25', '2025-02-02 21:20:25'),
(599, 601, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eS-ma-K5m1I:APA91bGbsdmDWmwqP_4cSUWCdMaQEMezN-L6VHsRS0PfhXgamHSiAIH2wk_wDgvnTIJ1gmXIePFu_oOQi22VZsw3BNyPDr6FiMoLRTUoZZG6Rq8CjqnAXpYTe-DJ8gQwFPw44kn_MNnJ', 'BBfWmXB8Has2kT4ZYJGEwJI0y6hZACTuo26X2YJIZErdABsirIJERhLxLHBEEoAIJxsulhBzkXkuk0d6zlgH820', '5tncmGTQ60g2u6T25kV2SA', NULL, '2025-02-03 03:42:11', '2025-02-03 03:42:11'),
(600, 602, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dgZT9eSrDH0:APA91bEvVvaOSGKYIjia3l4EE2r-Bchp-mJbIA_WgFJ8RDxzn41KGZIZOFA7Jed3MofnjzvJXUwgydj7H0fVd2Tk6B44vF7iAu_JYC5HoY-B1RKDyMX5lLc33M4VBe8QVjm76sSqfPjl', 'BMVk3UkYsAdWa-hQkdXaQrNPe0aLpJvGeXvOiWGC97G21KoZSxT7xp1MN5jBAwkP8g2mSZjl2e1X10Z4KPnd7WE', 'fZhjqtzQaMJObBtXEOqFpA', NULL, '2025-02-04 16:55:56', '2025-02-04 16:55:56'),
(601, 603, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d-NWRuwTCAs:APA91bHx00B0PoQRMQjJNwrB5KjrpPFCXysBXFDbOHEyqTgN6evlav_SdzOXy3NWc3fvKCkfCm_7k0WhXo75wO0315NtmkGltIPZmdAF-4tpDViLLz-H9MeXjUD70lPhFT2VFBvGX4rr', 'BC2I7xNilZSU2OuNknktDEGXVIWKGBgXlcfliv7fURJkBZdYisf0E_auWb6uYNlOJRXej2bKSycTDcPYhjC32Mo', 'HBIn5J8nDThLLwwi8GVY6A', NULL, '2025-02-04 20:12:56', '2025-02-04 20:12:56'),
(602, 604, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/f6lPA2Gji18:APA91bFCpWbWBNyhNohk12ZsiqpL-Pv8PZsRwxDOmY17AAoVX3LhDe-d5tEeAQ2kzWS4w85BSFUexrl6toe3NY6E2i2NCDL6QrHTe7GzlNpF7DKgILYhdkoXuUiaP6UVwGHp4L8sivdu', 'BOhxIFyjlk1cyvW0veqvDYyCYx1wFHpUslC07-wUVIjrwCLqxNyIqNCRBBhloV1v1lBstA7T4Pl9kge4O7cox0U', 'F7-ht1MRtI9nGofa-LgXyg', NULL, '2025-02-04 20:25:19', '2025-02-04 20:25:19'),
(603, 605, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dIgObToPT4I:APA91bG_oAv12eCQ2ghuYdZU7QHI6GCyW_cpDbGAaWcheLqcRNSDH1aknkakpzRaTruYXR3kPCeUS0Nf0V_eLzgskaXl2K3xbNZ_Vswaly6PzqYfjcJtYrXznV7PCG_8nXwsWIGr8C3X', 'BMvmW7o-soHhMWr_0da03Y_Jsj7zkBuWGLyuGdtgbS6_0UQx6MFVgFzqgeJoL8xzM9EfGNsJ2qkcmSQ6o7SpD1c', 'ubqmDpZHu4VjJ2lcBmBLvA', NULL, '2025-02-05 16:35:42', '2025-02-05 16:35:42'),
(604, 606, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eUk2zTEW5Wc:APA91bESum8r6wsG7kV_FJrriNexgyGeRl7kN4Dny5AHoACT1QO5oOqS0jbp1ByIuUPcHUkDfxO1BGEv3oFkOW2kYVosX1PPJ9ftQ2p_o2t1F63pySHobx-1rTFWK7AKlN0EFUhNFes4', 'BKFWEVR53qcP6oJDWwN0DC3u_dte0KV1zdDICVD68oMyG2anfE7zWNyWCFAHhhkgTdQsibYK43b-d_zRCqePHtc', 'OG04Lr8IkVCZOP6Ph2WTfQ', NULL, '2025-02-06 22:29:05', '2025-02-06 22:29:05'),
(605, 607, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fjM_Cof8OSY:APA91bGKaedlhA6MCvhyhiZcdHdHn6wwc1fhg83SMwmGVLjukKi_B81KEpps6NZX6zBG7MWL7WYRN5B4bHmyu3L5fVsBJXoXH_7O_Diz40Q3Tz0TdE2TGFzXk1-N8SHjFJE9H9rsbWEW', 'BKVncfgldI09gH05OxjiDrpqfSwKy8dYsl6hmiclpXx2KvMU54QMEGjz3cp0iIRKSHW_JM8yWk_LsI-DCLDPV5g', '7YUHjGxHlUvZfk0OSqjTeQ', NULL, '2025-02-07 00:51:18', '2025-02-07 00:51:18'),
(606, 608, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/f9FlhtIKIRE:APA91bH6oTwm_-0TNkD0hf1jzMzda-a_LORauXTg1O6jFkNLGrO_FlBS7QrMi4kip4sIalbTIyYfMl76ayaVwYO9x10EGPUlQQcaH47W19uoQCLjecGehTplqQwSAn857U21_AWKHDps', 'BITZuLhsYyCtg6j9Eu3xwNT3X5bBgk6ffEJteSNAgMBQX4r63MpFPW887G4-jEwCwfbbyglhsBHMsyviFBauafk', 'AlLLxCJjjYFo6FktGuVgNg', NULL, '2025-02-07 16:16:30', '2025-02-07 16:16:30'),
(607, 609, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fpht9SOTXj0:APA91bENn_joHmtyP0FbY4m5b03OhcrpM-rtTsIlQZrTeeoZ4sQVPcSevn-V8zjoGm3wDxwc5MUZRKo7Wif7EmmU6o296714MFMbwWiAvJyEP6p3aZViisxPTLVCKiWy2GAtqEdC4C6v', 'BGCV3Oi5QLtg2SfdAdScP0GxyneIlaIzKaOoNr5FIwe2o8PgPEeIPsDy3RDq60HcJMkQw9E6YAqt1qY3kol6kXw', 'tWseyb5f3f5bOBge_c_2bw', NULL, '2025-02-07 22:58:35', '2025-02-07 22:58:35'),
(608, 610, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c6tRCGtnfZA:APA91bGClsCA-olH-hyj8QrBrNFjK5tjtTIiftc1pE9qkbQahM7vtDfNQelbjnaPVCAStx8rbDed7V9-mRizZNjisKxcdcElj0oNaMQ00Af1wnap_cC_0hiO7mtJQ7X6y80VkTHxFjl_', 'BHBIg15s0JfjqEUpKmLIZtjj9GxZL4_Mc9YzR3aFGpEc5LhgcLPc3X9EMAfd1PnzVhUqsMPadJixADrLyrSFFmw', 'pXCBE7FiIcVBOszUQIc44w', NULL, '2025-02-08 00:42:18', '2025-02-08 00:42:18'),
(609, 611, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/e9f5tWk_iww:APA91bGmvtah3s5OqdPC36FCyLw9DZGScgDjxpRCFAmT56B6a_NJhHr2w1w5zkeG3_QNHC56IFsUefCJ92lHh8C6hlwNBy5pTRKvHWCrJ6wKR2bIvTY1tEXnnBzt0bBoEali2fIKwJ-0', 'BBrgspVT_1rJ96TtA5AIxwzZjVE0zlzm5MehvRXRDmgJeyI5paFyRqOo8UqnuOIhY6C31JpRbS_71iBKwOuIfg0', '6CwrPtvRudjsqlEKrQKFWQ', NULL, '2025-02-08 01:10:41', '2025-02-08 01:10:41'),
(610, 612, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c_TgKB6NgPQ:APA91bE8COicvAsu9xkvoi168osQTxb20mWNbmPFtL7EL_jgep7tqbnEH9wcyOhq2up8-keKqiTfBrLH2x4JtkgA0qqySQfdAlOM-Pn1z4BONGt-diUvE56yASqegkd9mxGaU2YOhh-a', 'BJ0kEjjLnLO7zBl6ncuIR6Ne4QOk-Rq9FhJ7NVYD1U_PsVyryENa_-QWre-fSdayr51Pyzlb5ZfjKwJ7T-_4GF0', '6rzonOAfVPOuQqy05yYN3w', NULL, '2025-02-08 02:49:51', '2025-02-08 02:49:51'),
(611, 613, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/f0glz32VQsc:APA91bHfN7JbZ5cLi0nFsD-KihhkwyGEb9LPU9zwj_lUc5QVlBr0yO9CS8ZYmsNW9bMNh2vUd1vUqZXue6KWtx-TcSppqn-F8k5ZJbv_iJvKY12vn3AoxFtoT9kO3vA0gF28mtf28Gae', 'BP7YiAMggdJsYc1fj-YSxkY0IvMyppe7kIgOOgq495e9shdF-CJRtYj82RPVnSsdSGXE1Dpx0dAQ2jcnCw-IX08', 'SVNrd0vSxzs-rvQJUNa04w', NULL, '2025-02-08 19:08:54', '2025-02-08 19:08:54'),
(612, 614, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fvqoI9o3lqE:APA91bFUOA7k4rurL0xjI7gOyJwXN93Wo4ApBqW1hZCZajbkwNT4MgsZ2VC_6ZkbbMxdvEw-tB_Z9Jk7T_ecUkarNIBRQensacr0cTsmfSmeD3mpAEjmvLmYQ8ppyabck5IlXDULM4Is', 'BIde4vH7i2abaAwgRgQ998Enrb6tkWRUIdqDcWnnYJYrSMx15YxrubW9APLL-5CZA6JD3YAQ9aodzhgPel6Cfu4', 'k1NGrRJmJ5DhTDoJS-LkDA', NULL, '2025-02-09 15:44:47', '2025-02-09 15:44:47'),
(613, 615, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/duDYTgqTPvA:APA91bHt7MDronNI0ijRf9W8Otc-UPaZ22iGROgeigvFGAXualcDCOFfaG0ZZm8G1FFKn4b4IBhlDlqhimgAWgt-se8BGeKsk8wC1j1HSoZr3whyA8iz8th3oKKH-1nprcN-J6NG2C01', 'BHpJAOHe7E6P7lAStNFhukneXESNxBiDwkKHJcm7IRERDLVtmmOYkCtc27Iwi8e8t-e9CugRT4QRJMNU1Qg-prs', '84UJEAa-PYHzItZzeCc-GA', NULL, '2025-02-09 19:13:53', '2025-02-09 19:13:53'),
(614, 616, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/daTX8vTWN94:APA91bGv6XyED1jn-_RdUZ1z5TNo4ztb3k4BGc-7Ao69pNdIuxUplt3xWJ7Z9fW0_z3EoyPgYGV7YkD7U95CqGks68vameBMD2sxXinGW-N8GbCTipD88e1G4_5AIcTU_JguYYspd4vB', 'BFS1lmJ7LBYuvLwUluNR2YIo-ITkbEBRpYvjKpd33WFuMM14w6ratmNb479TZClML8LflwhKfTgea5P0T39je5M', 'OWogbgYXOE_7L1mEtH5GTQ', NULL, '2025-02-09 20:07:53', '2025-02-09 20:07:53'),
(615, 617, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fZV3iMsvU2E:APA91bEP_ULepmdVYv3484g_BCmkhbmCx1gHrbU8jKZqrfHlpgEb7ZVQlqWf048dvLq6YV3jtn2NRApW9bCZH6RUyG4dU0uwnSlfAOjyEDJYITkkVQdWkjvwjwy2kAsh9YBxpzTlv2y7', 'BKC3CKwtFgI-saX217-jd3npkKq4Eqxp4iO-bpcS3oAon6mhxX8d6mH5V3UxTy3FHhpKAl1ac5MGc9LifKt_HF0', 'Z-GjiFi_7krilP5QYxl2mQ', NULL, '2025-02-09 21:26:20', '2025-02-09 21:26:20'),
(616, 618, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cc8mDzNfBdA:APA91bGDNbO2gV65kf75kz5So6PPXjGu-LYWwJCOAzepRgkTKxrCb8GovwQRojXLmEbN5MZs18Uh8Xzf9NAwhFWOVYYUgD3PhoID_WsU7Oq18YQbuFWJulGbxAkg9804ZexHHm4yvwwQ', 'BB6Qt5xMJRFqPvK11v-tPM2T2cdTY7jivnZVixr36tQFza_c1uZUjx1vFE_nG8tD0w-UbTstZvuIIPFdUaGhiWU', '4vRGB6uCnUD4fReGfYHqcg', NULL, '2025-02-09 21:31:51', '2025-02-09 21:31:51'),
(617, 619, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dqZfcS6CKdg:APA91bGak0KMJD4Wa1hRvmss9-RM1pXvE9LeorVWsfpMo6giP-e3JQ8Kvt7DdtobQIF-UJiHoG5y4DdRDxTRXDdsGXKqdfj0Y6HD6HtSiGvp1xlUuK2yrUyk1ZgUwxsUVubTHnTgG2lC', 'BIRPBlE1a7H3nbtjbgbuick5Q040cuRagtz2tv-5y9jEPOiqmspfPE7Tpq0PJEadq4h_wb9hR4vqPU4z95cvkGk', 'jwHRVB4KO2Y6JFrhPgCxiA', NULL, '2025-02-09 23:05:51', '2025-02-09 23:05:51'),
(618, 620, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cHi93n73r_4:APA91bHN20nh3wM9p_cL7O19KeaoRpD1jmuU3jIkC2JJiGghkEXg3sA64FNnr78yu-Fk_oThf1HZ9VFXyIvVt9JAWMY1g8mwC3cSSZKVSV88nz7gwf7npsIS8x3e-YMV8IAmZzpUm0s0', 'BEDV1ex0GvJMwajj7N4ipW2jFeG2PWKmxTlsgUY30FIQSeS7QmambNfjAypyZ_WnIHCPCBfS0s7UMkgXbMivDkc', 'pXlLumwb2dGl_5RDIb-ITQ', NULL, '2025-02-10 16:44:49', '2025-02-10 16:44:49'),
(619, 621, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cqCGphC10cQ:APA91bHUCFcT-T0Qjx989jW0pDWi4JhvmyP8YEblMRfVmfIv5GMWMNcueug9x8C6Ii6s3BI8KnnCS_Zv8rZUtgo0a4L7210mvDCdyJuEEjHfEIuAIwLQKT4XIy0TYfmuYn2brtcjwEp1', 'BORqre4ndRfbWh33Sz9DrgBvOfeqeehN4fXWsUEzPLCxzbe26vw1QfU-DDuNgnYSagwoAuYEfWuzBtUU2iks9TM', 'VooYdySasyrABV9I2Obhdw', NULL, '2025-02-11 22:39:53', '2025-02-11 22:39:53'),
(620, 622, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cvRfkXetSrw:APA91bGB3EMkLXKCkepYQbeTLqNCrmKg2kVwKnzCFGYmbXnKYLtWEa7XiidGPlK3wfXP0hvubge0CJneeU_4JTG8lz6RR18iph48AokToGobi68ubr0PGjxRAwAfmjH-J16yoNDGMLSK', 'BMdUhhtm6ux5uKk4G-CC2B9lGkDutO-M1eppiOn7dKNfvg-NhiQHAHxl-ZK3cWxEDRqml2-e5w4FksDx2tLNaiA', 'g3HDK9soBKZaOjyA8TDQNQ', NULL, '2025-02-12 17:57:37', '2025-02-12 17:57:37'),
(621, 623, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/e6Y6JLSWA8s:APA91bF8m2mjuDhfTyA1KZyv-hUUUCq_KCscG3yx4EtHdCPoXvrIODGUtaSKc0Z0rCpoQ4CLRYQDPnGp5QCpHNdlWW9W4aH9NrBTX8EcXw_oofp_nwgJNrFg-SZ_fL0iiq2FV758za8f', 'BNCiuAAJLIApB5lStDalO9fWYXOtMz7gAm7wkwiSKppZtTH1NkJsWJHEmfxObpDQlI9YTbZ-hpcLwB4mKFo8pDY', 'MXz0MZ0yJaw_EcCXwjOuzA', NULL, '2025-02-12 22:09:43', '2025-02-12 22:09:43'),
(622, 624, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eMyjacV8Zro:APA91bFl3ZmOpvUYi4tjTJn5xCa2ziHvWEu253yiU0GccMvcte7dRDcuHz22-YepDj-7NtAKLsMY1UYjHVOwTdj_ldKGdgd0QDmNz5E1oVahhsDY8FKUORSyaI-N0fcEdkayYUoBVL7D', 'BPyuEOkefF55-MyyiOhHmM9lG3yERAZnw8eJQJ24a3CID8HBBNyImAET9O79NLXx8mNUSuCNkyrrRhn37E575b8', 'FKl_LjAfXdGqIAmPvpvmDQ', NULL, '2025-02-12 22:10:43', '2025-02-12 22:10:43'),
(623, 625, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/esu5_Uh6v9o:APA91bGJPlUfoJqOx_V_PBxIBd-Zrow3Vn3Kwbrd4EqpgMcNw7o1CK9LsKpBdXifQd2Jp-yLYqhnkxIirEN4_keQ2TIsTrzEQvhOEAI7D-qzBRKm3rXOkGQcgHHopJoViCUzjB42Q5cJ', 'BMPPPxRKscFyPs4qR2ZfBbG5Arlb3H4GJ-Lea6nt5uoQJW-iA0UFRdOKmT8Fy6Woryb-o378efOYswaLzMjX5N0', 'uVL5I8sOer3p9QleQOPv7A', NULL, '2025-02-12 22:21:46', '2025-02-12 22:21:46'),
(624, 626, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c_-mp1_RqYE:APA91bFgrJGmTflzze_RJXeqMyNy9tPd0UVBPvs0bFxjEGvDQRLd-OBgvTEcmtgpRDO2dSinrHbc_zUMqsPCUxnfdiMI_UFPbYUBFLBpx2wq78Uphsk2EDAuDe9EU46XigNAl68fxGxF', 'BDp78WcnH3LPnCvRPdADWAAfkqu-KJAqs1M10P4R1OivtRodHd-BbJFXDF2qcyq71IDhHMZmHvD5yZwvWQi_hsA', '7QU2l9fFblBNjrHmdCPPjQ', NULL, '2025-02-14 18:19:31', '2025-02-14 18:19:31'),
(625, 627, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cBsn8JXc_eU:APA91bE13GQ_44jneaUye2AmYNsZMVBMwa4zS0B9cPbhj2cKXangPm5rr-gMDGwxKSLTA08mJDasfsPWklAEQ2pWZHk4DR2hHIYRQYdb4kUkAhGkjWXBJ6x48RQlA5K1EGg9YI3yO63V', 'BBPNNIYhAXg4gH1eFyorNbdcw5H820KGCnZBmTBL7OvuRtOGB_hL2wFhWJ_qrGVP0IIolriLiWTmY4zZ8f6Y8Q0', 'ye922aV7soS7r54m8hwzZQ', NULL, '2025-02-14 18:19:37', '2025-02-14 18:19:37'),
(626, 628, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fuRzK_9DLUw:APA91bGQ872miqtiLW4wRJcNL5crpLS_8_8dIXU_lCSTGiyVqCsmy__DTuGx38grnMbmI08r9rrs5-cH6_skYDyFmfIwPNH5CfU-Ion7h7ONecLHBN8Udimn41ThS7pva11--s-dr6GD', 'BFyaW-6BjaAksCG0Do72muT3RyzIfRCgJN_sQF3zWYORIRJLw8_-BF6E03F_xm62opI2FP4HvVjbMOHpbv7D_Ko', '7dbxcNoU8Vf8UxMUwMIndA', NULL, '2025-02-14 19:57:17', '2025-02-14 19:57:17'),
(627, 629, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dEYntVVIq9s:APA91bFcJL3qhwxnNY5_6NNyWcF_wcRfyOAyh54Y5yDIU9EGM-PY5GVHpV6xkKpi-CQElLzqoV6flAfu50pWig31sw9HhYVVN0RIZfHyn7xvBazf-bYeAdCvFgg3XDxVpH90E7qCX_5o', 'BJaaoOOnPwp81Ks19iDpPh58WJwp5IhDEBZ1yFMffaNZimk7SIo0LQIQ1tndrsRbC-IcGut4ssWMSpFjg5IDEwE', 'Y-AlY3xeD-t8G820rJINEQ', NULL, '2025-02-16 22:01:59', '2025-02-16 22:01:59'),
(628, 630, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c5EEIT2zLeE:APA91bHm47FHtPEprUHoI70WgEekpidLV-pMsAPhrFjHDhHjQiU5NPTXbLH-JUB0Z5pd76hZeS0a2XBxYoMXs4tVpeqeF0EkqxSI6OvPaTV1evENAi9SS14blAT56-UP-Ehx9mrngbhP', 'BGp5FZuvXPJiMHBV7XCI3vT9dbkrXIKY6Q_e7DgutzMgSD-d5sv0EJI7a_8ycLe3JqNNcO8Dirta2hdAO27igA4', 'omVNi0DE9aCCu4bdbDytqw', NULL, '2025-02-19 17:37:29', '2025-02-19 17:37:29'),
(629, 631, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/duC1UYTeLsQ:APA91bECoAKrKIpktwxGTm0T9f_MkFvaxWtuXtGSUWijavPJY_jm6ye0t4OJm2MbcSTpp2quxI0UQyO5unQ76oEtLke0e4E-1lTNfkL643GDwjmSYWI-sfW9pL1QqlgN6gyeBxU781oa', 'BEIH2DobyOqia1RCoL1MM27T6iU0fityu3Z04brNLrC_AfUb0omZMougQ_FeGCAfOp75W49obxgcrLg7D_KV7A8', 'mG381B-pBy3YG4Oz6Zu42g', NULL, '2025-02-21 01:20:21', '2025-02-21 01:20:21'),
(630, 632, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cW53DDxP6wI:APA91bG3Rt9Bzy3h4GbRKVxPXm0g2ZHmRAw4f2R0owCAO0LAXShiYVkB27mW7p59hnfQD5Dp2z_72A0Hs0ZPgi1fMkr36J4_b6X5LlC0oRrnTQKeunzzhwh8Dmp0H2OL-tiheDX3IaAY', 'BNv7XAd3C-l1A-EpGeK3TPZ4q4hcVIz_Rba6-fDoq2tih0eCM-wf-FJPM1GJcmpHYduzhk0nkRDd_h-qdmJHjS4', '8Snkke2dnzShFPsK-gF0Xg', NULL, '2025-02-21 19:35:29', '2025-02-21 19:35:29'),
(631, 633, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fH0eCPhNHoE:APA91bECTOd-nYFVmn5Qn_AcJ2ogIILgXNdqdR2uHtOZ-BjdbadrhSJmyPP76R7fWdLH_ovxsFEZedSmxsgQmpl-PE-kRI2fU9gTyjIQHR6SnT8-dCsHCcgMmWHxMnJS1eS-nyWCzHBU', 'BCebDf_B6W_x8qTcVlS30WdY0XGjTzYSwgXEfW_2LIyd3Js-9BRxR6wh1RoDWY5fGJANA69SXHpbU7beWlr-QIc', '_TVKTxXIwfMSOgoTNavIUQ', NULL, '2025-02-22 03:51:00', '2025-02-22 03:51:00'),
(632, 634, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/drecJ6OGALI:APA91bHh7NiTQT7aQSx7oWyP_BsFHi_C5t5oze_eBIeqoeTWGWtjMRdEQjwu2Lqa4weQIzm_S4j7S5elDjgVmf4ecyUNUCcL2wkeVJlQEz3hsSbNFqClofR3zEhRPqSGDQcFLI3trt11', 'BHOxinCO6KsfVZe0ux1ytoSCE87eEvhUPjoZBNACNxciXGpIY9dX16wnhFrGjmVjsM6ybuZIl3AAN2e1Ty1eVs8', 'PtTpIi9vLgET06jHlwXCTA', NULL, '2025-02-22 06:48:45', '2025-02-22 06:48:45'),
(633, 635, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/exSETRkGJC8:APA91bEGPCc9a96z7YPzlMNgG6jlTSkgc3iPXG-xYR4z9dFZ9aGvh_i0oFUUIAEifM1rS6ROOVsrS7Pf72RH9pleRnZzqHZenZ1aq8umnrsrEYyj5dZ0_RTsbLGNHB5tbe9LtyVayhaG', 'BHjvzTg0SocmUNAwzibZuuccW6VtdqvWiwCf3mZNhNkezSWLDvoj8COzd6pP65v4FXusu7eYth-rSlhRinj9Ei0', 'Ch7-t-c6OxbBYRFO1nFSsA', NULL, '2025-02-22 06:48:56', '2025-02-22 06:48:56');
INSERT INTO `push_subscriptions` (`id`, `subscribable_id`, `subscribable_type`, `endpoint`, `public_key`, `auth_token`, `content_encoding`, `created_at`, `updated_at`) VALUES
(634, 636, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c_aHuO9A7A8:APA91bGKsB9egWLoWks95cYuh8pfamKMyseTZ5tpKmjIhXAf1eAMBqBs1P0al0u72um7cH-rghfc5joHyNGnxorsbDhgqDW_BZiQYVU7-ORGsvzGlVNvevvvhX9DBjExgL_R04hwCzIv', 'BKt2mChJWwcpaYCGu5XFt6Lw2tRJ_UIwx2JrpavAdu4gOWpw-rr68k3FO3nFtY7Uzorp0_KvRwSaWAMN8RY_1Q4', 'nLaJfJH1Wr5WwHkgaA5rgA', NULL, '2025-02-22 20:05:56', '2025-02-22 20:05:56'),
(635, 637, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cVTSNaQ63CE:APA91bEs7s4V4nuPyF-CjhSVOusJ6W7LXuZsSvricL-FgRF1QbevHVReXz6V7ck-IbkJGArqPIk2Ed3VJaahnTMSGmOZ5v_RMXZ9KEQcVjjT7zecWCUkmJiUUZLXxzHK-JgbV25YimO0', 'BBEZ7iiGq0zoPi-TgCwbGmzRONUIAn-jy2bc7HJ4m5K2qwHYohYNDCtpLi4eUOZxftRq-MY11zNagbX1Iwl0De8', 'CjbG6VYETTioWIZfuJwMLQ', NULL, '2025-02-22 20:06:28', '2025-02-22 20:06:28'),
(636, 638, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eq0XtiMZY0U:APA91bHbEqx0K9ChQM-oXjSwu_zuHvbwkX6MgWVK7qVWpWXiRcPoMOiN0gQSI_ddHK6cJN5EfusHHOf-6Vw6fkpW7zuvm59BwXfWfhlQfGUsmeHlhDLbqapvm_HjcO7eoXjGZ-xYf-S4', 'BFAVIfNSKXzkN36aj47e9ulR80BPqIeIyoYXbOg0N8PXxjqc_de3gcPVaggwSZkdjwvmxNftADcz37GZp5a2pFI', 'OK3EaV1UUp68idHX5HwyFw', NULL, '2025-02-22 20:39:27', '2025-02-22 20:39:27'),
(637, 639, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dM-WL-ZRckQ:APA91bHCrrPU5AnUaocR4SdC8ALF5qXNITTuLfbqGqjX43VPZW7OLJQNYSNy30wBi9G3Z9qgM7a3eqH2_y3oFdfi_x9VIW9_dMs8pKex1sQOURerFe-9ZGBQvJdeRjZ92BZTcU0zys57', 'BMetkZpqvrUF7bMQWDAwERGiJ-OsgOtQsQmJwyIeT8ey743oWHIISbxYMjHdsGupKDipvG2e_XQu1XDkkEl36vQ', 'ihPaElzaTI7-k7SPKpmDTA', NULL, '2025-02-22 20:40:46', '2025-02-22 20:40:46'),
(638, 640, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fYvHEDr0vhw:APA91bECduo4ipjJp2h6cSAftUfnjNW_AqOi8SCNwXS-cxg_SjrSc9XWw8tFtqSeJZ6KcBl7tqo_nKd8JF40-XaUn7QwHONvqNYyr1w_qxyp-FJE14Y0-YsyyCSJOfPZCmc4ziH8u9jK', 'BG76651SpyQY5FNssJ3xcSHxi6UFTGAOG6_nr8cJnwtLuWyrWtZN6ZfS4dJobu1mPR6IcuVu_sm13AXOJpH7UK8', 'lb02K141d8GM7HgvKevZ1g', NULL, '2025-02-22 21:33:02', '2025-02-22 21:33:02'),
(639, 641, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dTt9Jl2Rn8g:APA91bFu-53Qc5bvSdPeiQoVa-WRdvV21EMpzAX6bmpL1sg4lA6RcD0_qPz1XnIMEmbxGYOvlhhslDfnjbPk42CpM3YHE7d7c9KDQBvgdGEbCrHJXODsysIWOfgpaIR6_HhPbEM3CM0m', 'BIrcsflUg4Nssev6yc2mcvpK8NReWJ3FmbhZ28CY6a-fSUyaBB4ohvtGzQHDuqByuJnzAiBMP8AQx3x-98WKWlg', 'TXpku9Q3WbqDGbfu6k8RCA', NULL, '2025-02-23 16:59:55', '2025-02-23 16:59:55'),
(640, 642, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fgmz54CV48E:APA91bFR90KBdxeVNfaCm8_8Q4Eyfcr4MPXWB0t5IO3hZRO7moW86O9S5_GK3Zg4GQTRdjWmRqwUHkBA1gNYY6IBfTQGE4ChyAXhsNVMuswF1GEZ2ZxUs3vulVYA4ABs7Vt_mFiqFCjy', 'BAFBNKoSYmwmeGS8dG-8j6pZXECj3e0dAh517HKQ7LipwxrkBSPSMjoUNu-ICzbBaWz_kzrKi6Fd3fWQqg3ZUd8', 'WgW1u8maTtREfuCHBvkQHA', NULL, '2025-02-23 17:00:23', '2025-02-23 17:00:23'),
(641, 643, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/crgDcGT2DQg:APA91bFYkNLUf_1fQrHqpWuS94UV2rT1zVzh2QVzZQwPmV5gTL8_JTqe_LKqf_83ZXbGs3wH9dhUi_54AN9fCuamIFO40iTb2bHLqLjdtsCdKOhFbpTtI316MvPcXg-_VAPMOn7FSwRF', 'BFMjudr2JaaasNVLivyh3nQ7pZd--Cjb7FIqjo06YMVXAeQ5nN_OsQ32UfoUTFtfhqZdi5m3g_55l1YNYBhzcCw', 'rle79ehHw_HqTau-lybE4w', NULL, '2025-02-23 19:39:42', '2025-02-23 19:39:42'),
(642, 644, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ePE091mMqfQ:APA91bFrEqUjqdmmZV6zFiAxqd5805ctWDWINQpmw3cjGBZB1cG1Svy1qXUPQwCDIjn71_nECvnRYjQI4fE6EKP-T-QZm8AeA8-7aaYkaLoWszi33ANlAYiuYIehyz7-ZVRzNNToUsMi', 'BDadxFThXHWSh5_jBxzguLp9bQr2EA8VznNjmj5_589nbRPBXU-qGp9AAp9Q_xuYw-DwuCagSHvlXiYWo64SRBc', 'd-KUfKTQlQlWdHD6XUjH6A', NULL, '2025-02-23 20:11:05', '2025-02-23 20:11:05'),
(643, 645, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dUB3l-9o69I:APA91bGB50KZJuvorG1_cLvBzK9DGAY7Ynq4WM-k931HR9TCke5YQ0pbP4mzfSWZnNYWFj27pW2cT8SbVDJ97gRhD9LNQ5fhA4hGDuZz5YPAu0zQxNnN4ZbwRTmURaB8h0Ab8tSM2lCb', 'BCWik_SzFkt-eS6lNJxK8sVkdOt-sXND0rDb49yPJQt99yury4DDTteWYOtpOvq7uJG5412GllkeMFvW7fSqz0g', 'eUB9_R1WsPTgLxx1H_6dsg', NULL, '2025-02-24 19:42:27', '2025-02-24 19:42:27'),
(644, 646, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eseJsFjsXKI:APA91bFnayQrBEOssSYyQng5T13s_V3IM59bRi4BTbeIUrztWoqYgW7JUzaTsR_8vqaGEHyv_w6T_5a732u8v_NgJzdZIMZyqpRlUU0lgqygrySe7F9mzmBav1v6xTZtLyoGiga9kUdA', 'BI2OgXn-NBMsKQ8QLBavbTvfA0eijtB9WQhrBY1zRhpEMR8mu0nkVqepYEe1TaZvsdnnYdO89axZkGjMO713uvg', 'lxX-QlpnkXU1hZJ5WLBmMw', NULL, '2025-02-24 22:46:22', '2025-02-24 22:46:22'),
(645, 647, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cbzPD3N66YI:APA91bESX3tADKwYNQEiTFYGK1XN4MDT2tY6NnWgZhRZQVPugimRB01JkBxENjzkrJXxHxx5wSB3CVOizEmNHRNC-DY3hTnSKLeqpFBR-qRIGsV3wVfCC7Lq5970PyI7IVYt7RVyrKiy', 'BPhmr26LHsg4sDlYNNu3a1Ae_YfCv3fUvFc93c9D_WaxZ3Va4UW4AuLBagQnWDIVtUwIzGpRUl4Fs9Pjl1CHaZs', 'bdMsMxcU81DQqmuTjQnU3Q', NULL, '2025-02-26 14:52:02', '2025-02-26 14:52:02'),
(646, 648, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fLbUGJuvz8Y:APA91bGelhCrrlmaXFx9LbpZe1jHK2u6cjb04KfRD57r0NZ4y5tWwrZGitFWACEH7ev3UqxSi1_rrwUhX5Jo54mc2mbD_KmLRRd87Y1LZuxEX25ugOCajCfg-QkqC6ZDQMbXlCugBa9R', 'BOIdousIsHz5itP2egSyFCX7oFqWRRn-L2lN3FKwBQJEn-W2g_KX41yhjl2b4tMcHyDZatyJpHwbmqNzaqPf6iQ', 'mYyo9Gne5rKWq_C_lE4zAQ', NULL, '2025-02-28 18:44:56', '2025-02-28 18:44:56'),
(647, 649, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/flk-nmi0Moc:APA91bGeZC8vj6Fim3ffyzo8taTCIRfYG_2S8Y8cPamCTXGwDzZ9ANbHDmBJKwm2xbsEP8AocGWMUwFikVjnk6sucjnOzqCXb9icXQrGymwtOYrTuJyeefWkW6XtbPdLU6_brNZVaYLm', 'BOIiZ9RWjGc8fLLEWqxPuuKNfwDrcgEwBuvkpzHpGrEsrL9t5FeKyyN_MuAsoJiA5RHcIgkJ80j-Sc12fBschf8', 'k93tYILoTh6t0aJmxZEn-A', NULL, '2025-03-01 15:30:46', '2025-03-01 15:30:46'),
(648, 650, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eyocGT-Ldl8:APA91bH0YvQY1NpIkzGzutSFMyRmk3ST4LkJzf1c0ZNEZQfN4w-oIWO8ggcAgcqzEyo5mbzUFJbGgxUL4Kq6QanDPcMXLTCZtf1cCQqeT3XzE9-zLBY_Lcaa9l4kS1Eh3ns7HHQntAk6', 'BI2JitPZ9DXsNgDqgOWWxpiaJF1nOqL6fe_z2gHj8dwNonPlZV3FmJdtJPCO409arIACq0tQ6Ps6Bd0b4qvmXmE', 'sSMrYwNKAaqkxQLAVxwRKw', NULL, '2025-03-04 03:15:08', '2025-03-04 03:15:08'),
(649, 651, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fx_warwYlv8:APA91bGGcGcWidD8bGyFZbSTz5h5oWoxI94SW3TzPr_PsFPFs1WmMdgZk26dGARcMBHcBhnxNhUJRtBQHFhFqdPN4SXUK7UsRprzhlMwEOtcPTxDLbn1l0v0B6ZTMNsI78ss5P0q0cgh', 'BMCK8XL7tX9ExRCavIawQpM-3q78EOx6ahijWp-YmdmM1q5VibTunW7piyq8FhldQBN2y65uGhhpfjzExEmvXXY', 'NIvC2zNkEDWXWeO4a5TbHg', NULL, '2025-03-04 04:35:05', '2025-03-04 04:35:05'),
(650, 652, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fIAQIC_VTYQ:APA91bEQgGOigazF7bL-PUmzjsKaFSQsWnWQknqo1MukFWrQAWH8Zn_tyP3JUYA76i4HMFxfBXSb2i6vfoEIAJAhRwkdd4v04lrTv942zeoh98ATK8Fb2Sj9iWKGUW2EOSPCuSCrw8yb', 'BK404ifTYPVj9hcYvMVZfhJisiqA5yrMGp3GNMi_86N3O3ZPotiXGRH6U6u4jMvjbcUcGB4PlPcxhNnVJC-AxUM', 'KA_EgqxPlUgUdSs2enzp2A', NULL, '2025-03-08 21:37:12', '2025-03-08 21:37:12'),
(651, 653, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/caOrNJ4xqYE:APA91bGIJ2UhseTwSFwThB3xosVa0UnToWzRLMguR2pkiFFHb0pASmvFuCP5Jijsfvtbob4jrUA2JihtyZ3fiDiVDIPPGXN5rqCw7SXrC6qU_yWlWSeCeTj1QlHxYeeVUzSmJsvYLQYs', 'BD9gO91cM-tSE0rfpwy_tMRHpNKz7w2LxgjRGko6vBfxMRlx_ud9greUdaHxj9U2n1xhEgM9-xQxNygr0VBH12U', 'cD6HkXDrqXdRFaxATuzMvw', NULL, '2025-03-09 04:48:58', '2025-03-09 04:48:58'),
(652, 654, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fLufogzZx_M:APA91bGhmEZamw-59xXz7ekbw_Px44fyisyfzn6p3HzL3GnrL2csOWz6PLA6ZNplVungEyhMtLY7pvTBrEgIIjbWXCbhta1kM7kWzlx9Ovmx4AnfH65BmQI51dlCgRWYL62zHMam1o2t', 'BDGGT4dlucgIYNfED01n61f7kdGQlKdVHx93yqNnIdLBR84NGQnXEkf0ebESptA1c4v8ineaRsWj5d5H6KL-Ifg', 'Ps9ZZ2KzctkecKI_qpap-A', NULL, '2025-03-12 18:55:54', '2025-03-12 18:55:54'),
(653, 655, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ceTRyWMG1h4:APA91bHDuuV46n10yRmrnxGbeiKL8wdOwvzq7UERFtTjzM7akRblDm0mq9dIY7zefx2x6VqTzuvHiuwCnWKXFbQAj_fp9X6Zfobq6rBpHgJ9MkaTq80yMHpSqx2-Y-k4A-Z1zZB_TGI7', 'BAheww7330jJaWJtkFMzyJMD7757Zh8B_wt2ewux8pL4tVBSSkjf2jENFqsrR8XcCQE7ig_8lH5Qa9sxdmUw_I4', 'SCW5ZDbmHuTBKmyke6dFxA', NULL, '2025-03-12 18:57:07', '2025-03-12 18:57:07'),
(654, 656, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cREL7SK_SdM:APA91bF7JwnM2IgeIBSKqqQ-z6y6O4CbVjyXtu093vmw5vE7lSqFDIRYZzCCvPLTEPjZovMYwiSpHOLaH8uQp0cBE6PBL41HpASO17OORMjQRijYDw8DZloyAn6I5bQts2Y1ElIyN9EF', 'BFgE_PqCJqAkeo16oYdHSYtf6JMgM9EptU61AHaczLAhSZFPOQaRQE0wCjVuur4zlBhCL-X82ej_BInHjusKvsM', 'sUq-OIq21ORReceJHEI9Ww', NULL, '2025-03-13 19:46:55', '2025-03-13 19:46:55'),
(655, 657, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dDkIM46weM0:APA91bE3iNM9M-4pwjwufC1G4IOsF55ejs3SrymskCMec3ITCmo-SASKqUTysBHL_eUilzee1eb210KwKACXTMBLnXWDUj4nOCMly_Ybkad-o3DZyUgL7AaYHOQ1-tqKsCf1CAi-7bBt', 'BI6K7ZSsj7k3Bxj9VlVZ6orH1_7GqSRR3JBgWyEAZ6XB9mRbtcvdyzYhCMPpS9Q6QWbxlU5n2CQKoeH9of3-I80', 'G7RMkw9xsQffHsn1v7kn-Q', NULL, '2025-03-16 03:49:37', '2025-03-16 03:49:37'),
(656, 658, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/etFkbTLN2Rs:APA91bHn0QXtI6VGAB45VxAKMi-geQFD8qjK2AGNjepKIORGr6525nrq7HfUVl-eqCd2wWORMP1_fKRYqwyRLAUUgOw_BWNrOMJgYgqJQEwhWEIzM0WUtZaxuBAKdoQzDLNtNRbMP1ox', 'BPDUQ6r3gAw3vZqX0mC12C9SMrCoU_K6_pBg1tokjiukArmbw2iZ8_gdbxSMkH0vkYVSRdmgBuPOvZm_VmlPteg', 'XxOCfQYef_2Hah55q_yNPw', NULL, '2025-03-18 15:15:51', '2025-03-18 15:15:51'),
(657, 659, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cUWHI0qhUKU:APA91bEcuSDFqhkpkfVAva22UaKcmFHO2ccSS8qS1rc-u5Yci-arDhql-fLf2XC8p-ZiWwl1Umu38sqJHazspamscq2dqY76m8S49zajBDUQwE3Hz0IiDRUKVg5VK9xftLAwQ0n7b2_3', 'BIxu7XcBcfmetRoMoj_rVpM9w8rxrtJez7-KYKHdlYWWLWCTR2Hu5e398X7Pj_d-jA5r3WuD9RcgPuEIcI1MoSk', '9DAfUhJFzDQGV7yMxyGuew', NULL, '2025-03-18 23:43:18', '2025-03-18 23:43:18'),
(658, 660, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d63PT7SqtXU:APA91bHbkxAKGtADzrwzS3SpycLi-tswzdgA6BefpLptiIUe9j9NoSLFlk-h33j8-RlBY4oKA6jcOOiA1uV15fDk7RB0s7ER60xGVRkUU2E_T-_B4QNxnR4RydVZZEzFRQOlvgQkS4HW', 'BNGVXAvamCCblPGP2JayW1Pvx6ds6qQvjKlWSUQsR4B4mNY6Yr7E-FUd8HV8_sb9evov_aHeHIH9M_XrUjKUfd4', '-LnGjiqOAA7Xf0-O2-HYSA', NULL, '2025-04-01 18:34:55', '2025-04-01 18:34:55'),
(659, 661, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/csuvK-Rv2D8:APA91bESrwOyp90y_Sl6YkckYpoUSG9WbLnQWXLfdsw4VsoaTkW_C7k2Mg0PznMkG2yUFx4TYZxuMSrxWIFSl6kZoZEawZARRF4aTOE3ngk0GvP0XTLgZaUdesjci6rH9Tn_B7I6K0ou', 'BEVgTfzCpN0OL4x0nchY49UqiNOF6xcYMQLbgd-DOJGCsuvcpJEjbCUrP1NyOIOvvZPlePHMFppKJifYLsVK8NE', 'BGL5gA3fe8mgzgBguM6RDw', NULL, '2025-04-01 23:59:55', '2025-04-01 23:59:55'),
(660, 662, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d9SRZJXGIkw:APA91bFJnTFsApq-seavFj-WEWo9sQ1fm_pDUxvt0LMZvY_dGAJPIPcUZ5exXclXsjYtPu0ypgAG_VetmTDxxrBAU-9pMEHCpVOZPUqNZskaLp11GkM0NG3anAlH6teb8v8G05MLvONK', 'BH2IdwR8ndnrwKHo7i1b1WzBeKRjL-FurlaX1riwy3GCXCRD31RC2tDQT-OwYRDhDgVY9atuz2jt-U6uV3N9HE0', 'UKF5MjwmJw4jtg5NqAUYIQ', NULL, '2025-04-02 18:39:54', '2025-04-02 18:39:54'),
(661, 663, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fa-HR8fMBkE:APA91bFfHAZJ-4uobrKaJ234e-DE6HqfZIFv4ZYDYSQ42gW_RjLYwDRv3-C9yrVq7eokccVa23kwNPZeLk2FHGHsxg7LZPjcy0A3KZXbnCpMSkt4LsOJ6YZAtmI_dsPLWGG6cpTbFFVr', 'BMv_XBY6Tj8K0MzqirTAQVpB3fUn87xkUwg29eUwYQf90OijYUJgRBaQaDJENBlPBK8SW2BJo1777jPT7FMYJ3o', 'V0nkULHyn4Es5KtFrPt1TA', NULL, '2025-04-02 21:31:42', '2025-04-02 21:31:42'),
(662, 664, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d0-G-UwaJpc:APA91bH3CWrqG2CMqdkxcwAvPk8xz24J6LHay8RRSJHubA-4iVhpAQuHCcXcuyaX5D30JKWUlJBQGeVS-mhhq2Uz6aqLtuvpmG_pTtiWLbpjpI_ggseTcDF-cMLxwtdRuuLKZ0EKZedF', 'BIkbqfqujkMX_50Q25PqtBnq-ZukzFEW1ZWa5Zi0C_5chDbZCYwPDdQYoRS9TFO8p0fPkTV4vV7npubgO0h3ekI', 'PwUuZWIGOOxZz0cw-PeAVQ', NULL, '2025-04-02 22:52:13', '2025-04-02 22:52:13'),
(663, 665, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/enjvBLKKEaU:APA91bHLEAL6czvNftbLW8CFV_Itw5FR_Y4lGQ2Jq8qIyTfCcuS3gge923rk0dXiXQoZ5NjXbZMdje47vHA3cXa73ZGhqL_Siyb2pBI6xc8DGqCpOrtVAB2AcffH-1W2pUqXDRPvLnzC', 'BLmx1qcsd1KduS_5Lu0p5xpLPkR_HPCcHeBsYSHjCQRfKNexZNFFHHhcZuL4GtClPgkPmmsqrVDPpzxCG9m_BvI', 'WKytK3-VJe2a8asbT5E-4w', NULL, '2025-04-03 18:32:48', '2025-04-03 18:32:48'),
(664, 666, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/e-qcszDYy9U:APA91bGrvLARHunhcV7ytY6XF8uc8pAB4aNwfgnxoW5qQSlBdLwye7gDaOWePS4WJxxe2_BN9aIt6qtUb-KYK8efK1Gdtu7eImQU2ZqFS9g8pN0xhmvsSwAuWfKLC3mwBgJs-nkT7wTc', 'BCnP2rvuqVn8U5Tqb7sLXZVXpIUGXGQm45o17DGyg3pXzfkBck9d_lAwPSnHR6MQXMc2o6qwmpXTa87RJ5T9Pv4', 'SmvbVcLpmJGEw1KUGg-Vkg', NULL, '2025-04-04 17:49:41', '2025-04-04 17:49:41'),
(665, 667, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/drYkz7xp-KA:APA91bEYFYHGel6C82JtGdequM5Bmm-lE1Oz7TiWq8KGpoDIWdEC56cirWXgRRn5X-X3zS6GeHUqsJ_7_iy00u4328ZIKwNrzbvYz1iMNmN3tFBhGu_aJ0_3HRwjYRze87lqjxeZJTol', 'BMCpo6X4BUr8WCdtRTtmdxXboBdDPu52PuANAcHTkv-vGvN0aSI6eMx7ilZSpU2lp9kRmIAkgb2yAzrxRfK9tBc', 'N4p5PZUqUh10Ensl__xo2w', NULL, '2025-04-04 18:11:27', '2025-04-04 18:11:27'),
(666, 668, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ekmn0TJgBzM:APA91bGlIZ5OkEBZV7q5Ep6nmUpRRkphIzawyIgQiTr6h5MlX5OPCqRJoDQDnXHWyoZh1I_HrfBa8kHM2hyKESPQKaL3HCqyY9sT06IlrAgTGg3iVRLL4RHY9HoIYvAzB4iM_iO4gtDm', 'BNnunPfugmEVJjV0O47xuW27i1-p6UzNpTbNXjQs0qudGqFYfgWqulhz-UVOHKoQm4X3bAEPe-4uEJTucHkvA9o', 'gAy-4xoZ-845bdh_eR8cTA', NULL, '2025-04-04 20:03:31', '2025-04-04 20:03:31'),
(667, 669, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dB-DuKtkCl8:APA91bHYqcYmYUiVRG5RvghUMpdaeDGvUU5BQqSyJcv_AJDE7i-bbARg00fCpHKifJ7dZdheLataU6hU4qK1MyPlCKT1jNZmENQVj7IyJKpveIQe3W75gNwVNJk0hENVM1h4VSJRBF6L', 'BG3WjsVJeYmGclIc-sPKZ02hyAS3CeneTy0ClzqrQkXGtJiARa_d31fNhI5osKym45bGWnvEcJRgWtmN9sPP8yw', 'HQdcpVT2ZjNy_OCZL32GAg', NULL, '2025-04-05 18:26:52', '2025-04-05 18:26:52'),
(668, 670, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fvAjoz2yX6Q:APA91bH14c2d-LknDA4vrpiJNp0M7Ow8Zjh-VfOd3s-iwLuhnn_EinFgJX2DIeFYj245-I1DgpgHfmEVNTm95Iw3gidI7DCnpQHa_4xm2ti1_LVkH2nYCGh0xXbtTLEYz1F2fkebuh8L', 'BBTEUsfEd9w1gKIoKu__Om2GCu-OMxQhS5xf4O7J-Y52rXwNVoMZmGcZQE8AhSrRQ8abI-KyZkiBxkFk66B-n00', 'MTeVVUug-jXL1NFeNAi23Q', NULL, '2025-04-05 19:25:11', '2025-04-05 19:25:11'),
(669, 671, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dr845GS_FMo:APA91bEChSTwYJVdUo7-erL5VY1-wFjW-CWwa4reUtPJ2-eAWt5lfpcNDhc4xaQeJc8wxs71w71WWgAqDg7BeeaEfchHT6JfbQ8GW6irr-X-ulyrg-zuVEE2v2d_Cp89pdoK5HFhwK4e', 'BPgTG3dyMJys43vTQD_A3atG4Mr0_VFz7PmRq9hUFDzDgyGLR_8w9n9H4Wzddoz5WfNiTzdsm20TmwajLS02tko', 'NmZB2siSPEsrwcRcGXxigw', NULL, '2025-04-06 02:39:41', '2025-04-06 02:39:41'),
(670, 672, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fbkBbyjQIsE:APA91bHz2beRWGvipoKw7SQHWlGRvYNfpstYE9OG76tST51lmMNAuwdWSDAQLIupiGQ8e0guduHdo1pKnXLorJjALhcJFNeunXbPZD4gz56PDwNjiPYHbVAVsvyb5wOx-hXYWyh-1wKw', 'BMEklnO7DZsvvbmGGfUDjnOku89liGFTJSPq3FmgUYFk3tDse1tdkRK2Pes1V5glJX7L6qomO20Vdh3FzUfWOM8', 'CMTFoI5GP7hG51zOfap0hg', NULL, '2025-04-06 18:10:23', '2025-04-06 18:10:23'),
(671, 673, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dcUml9-7YGg:APA91bF30AEmIjqTX6KOboreD3YTu9CN3sIGCaRYEU2Z1UIhICVisVlvWiJY6wBycbjQYohStd1YLq_UJLqwMjuV3JtnrK8FexBmi5IuJnate66ZvNtwaN2uOMAuff0KFptKv0ceuSy-', 'BEDGBIpK4l86X1pAQQUs4bo0yVLPcL-GwnWr4yOpBol2HeNyhV2QDXBkNDk6_G83a6kwyYB6XJYmMPUxhEh6cRc', 'vbDiSh_6lSkH2x67BX2p-Q', NULL, '2025-04-06 22:51:56', '2025-04-06 22:51:56'),
(672, 674, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/drgS_2wmsy0:APA91bFJXsug6Jhw9h3B_fO9ViFLaSv9qHoE2PrZ0mVVSt-jau3dwyai_MxGuvnQ9Aza2jzlcy3-BOvYBbTnai9xEiOGjMiTJaCedk340ZRCvwQfFi8dTHP9j0NvKwobbVUs2mPAkRUd', 'BADBsQxbXb-Oc6lrjlQRsBBlmrLAOsvku2sirfpmFnAak1Yymkn4szuba_4ZK0PJMyXvSV41n52WkHJUNWutiYY', 'NFCYZraD11RpH7iHJu9_OQ', NULL, '2025-04-08 12:06:41', '2025-04-08 12:06:41'),
(673, 675, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cjCsKJnhQlA:APA91bE8u03oDC06jKa651xmPQAyA95g0DrFB0wANDUDDGOjxMP7UR74f00-OVfuq6T4ApkyRmYTxXFvS7QDUtBBMfdFWFBc1nCofzXfn2dKli1Wfn6ESNTaDIAWFzu7l8gA_XvJNDIV', 'BC-3Fzc5lBHLgKWTtjmCvqehq02hhf-nEkZSfAkk_fqpXJrO0GjatqHK0ejY0VqMd7I-bRj7sUQIjrxOQCYVdao', 'Ia3VvOn2ItszoJdrZgB5vw', NULL, '2025-04-09 20:09:34', '2025-04-09 20:09:34'),
(674, 676, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dbXe-LoILgQ:APA91bFTBcXIWIm5D9fd7zgzh5R3rlSieLoweSMdW9qMNMXahC0Jc7zPRyG7x6xeAYngayaQ2hKC7857iY1fJOxpdtsHN1PzDJHtpD20K3SEvfBbQoKY-dkopoqqNqu7PO-1hdWhO6fz', 'BMR8CU8wBvJYcgu8ORVipTt4OPGadY-1bpyRNiGfGZUflBumGqd_UGNO-BqNvS5wVva6AK_TgIevACNCYMRo7G0', 'Wtb4bmbufEHMUNaWfx894w', NULL, '2025-04-10 16:17:19', '2025-04-10 16:17:19'),
(675, 677, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fXyLJUFgZf4:APA91bFLZiKOCUy8Ejrh22bsVS1XRp_ghDHzAikNTPmjCoZNmroAKOCEl8mWOSsLoSm5sebfF6UrIeoSfGLYdeca2j16NZtDedjCO7LG5owhs_9zEjRXeP9-Y8wN_coDHsNcfRbE-asA', 'BOU7h37TZBiKurtds9S2SgdKlFz5Gn7GzZZeUj0xKZn7O4fxKFu8ZhlRY3uUq9UXhuqZR1OPyFLde47s6BqU8HY', 'jFTiB5Tx1m7mls9dakIuMw', NULL, '2025-04-13 19:43:03', '2025-04-13 19:43:03'),
(676, 678, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fPw-xTUKpAA:APA91bFWsy-OmX0735hC-mfxu0G19nOYFLirS2xhkl90RLCKxE0Smd3ovXVT6EZaqnK4MyPT6YVfzgF4hsbKV7WGoPUo0DYd7AtroamKHqF1vPaD9C5RnNQW8NPxxG8KroJeE447Y53S', 'BFkFblnRNMyT89m5oDwgpVxR689Yktn73uQjNpxsKYPJ_Laon1CFSVfuZeuYy8LLcOziFEZgkp9tY7c12xmdRwI', 'reSA7eSV31v1ayh3HYax2A', NULL, '2025-04-13 22:58:08', '2025-04-13 22:58:08'),
(677, 679, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fYTN4yOqCcs:APA91bHqO7OZ2RZKvlEmvh3C0XdKYmqNwU58yRhuJh2pz1LUA_1uaBJhRHcgcyMrBOYOFXwXKRwXxxIlrbM5_1qf1JIbS9_G5RvV69ufiChVZWaR8Pa_bx0NhntwMDWe92RZdZNshPDh', 'BBtDFxMfoABU13L5u9d2XRMPx_4_2zj3OECbG86XGKCC5EgSeIgYzhfMOQQjkXZ6tlp5w6NmgHc-DC9CEMVZgMM', 'QNxkq3tk1oV71GBfJFh9lQ', NULL, '2025-04-15 07:02:08', '2025-04-15 07:02:08'),
(678, 680, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fz6KC9Q809M:APA91bGO0fHbTyeNZKtAD8cWggVLfrmwweZ4dMnJZTX4DfCd-D3R-ELiQHCes2TWCN8t1-JJQDeuMt2DoWpv1ey68Gs_XNw3nM5vieLTyDjCwio4_oB2akmG_vEwyuEGjbdklMRLg5el', 'BL75c-DRn9eBXTU5oYiI-CURpTgUEO3FJojULlE6SCegj2i_5sQuSdCMuV02XCvc78DKI_4l-AtU_GnOA88LtSY', 'lnk5Avilio01bnsDilRz8w', NULL, '2025-04-15 07:09:39', '2025-04-15 07:09:39'),
(679, 681, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fzP0td4Q2TM:APA91bGpQwtT7u7-4bYRYfHBqH7Q3F76WWYn_ViRZVvv8jlNQZv2yZZ8NqR3HnTPmrlwwg0HYgIg8vEgFA51EPja6mQq0BgFpdLgdcIVEbnLwz1rX0ZWCetVLuT0XN_cxgFT7ZVYFF8e', 'BEyILGOzHsiZv-7G3CSD6EdPzXuk_2_9wh02peDWtRD7QxxHBALXAaPtcb4EvGOzQYpnaDdWajycgphe5Z3bGjw', 'lUJHLswpOQiF_B0wR2UYvA', NULL, '2025-04-15 19:31:04', '2025-04-15 19:31:04'),
(680, 682, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cm-pbrrwfgA:APA91bF7hsHlY3DibtuyM5NCvXQFpZWnYD-OwHeOhUIp45xwxB-AkO3YjhPQDuyZG5ZxiwFLqeT72sjZ9Gg0LGwjpnxwNdLYm3AAAiCMTA3N6IjG0EReXPFkLklaoeDnBNJUgLfRQiaE', 'BH7rYEug5u_3T-Sa7xw_pqWtaBl810FcXYcSnMcQOsWnXKTpt_cxE1rQ60qFCu-IyrXY7RWKXJ_HF_ZaGTNafeM', 'NnrIKN4eOPxt1tbJGQKyxw', NULL, '2025-04-15 21:50:15', '2025-04-15 21:50:15'),
(681, 683, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dOLNDA_hl-c:APA91bF5k3RWq-5Qfq9bfCN8V2gleLI3itv1ak7Ht_c2a4Y3uoVH92fg2pwSnTBVKwcRmardlH0k3P65dnIDHUnEaqyYLZif4lRdIFVUe_teIADU6e5dso1YGVTJ9i9P8Zy_cBGVenDr', 'BAMwQkVR7scGy2RBYNDlbj0ebEGgvLD0wNURgR3kTupp3pyU_tHgrDiqRUMjFRYsicIcB2zSGIKv7K8KrIyGjIE', 'rSdar9gRZ9paeyHJaqOWLA', NULL, '2025-04-16 02:47:26', '2025-04-16 02:47:26'),
(682, 684, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d9136axqUuU:APA91bFknJ88vVYjrwB-LtXJ39lPz7YnJYwiP6AyCflyCy-cwWecfIkqhD56OLjqZ9mOal0nO4o-bNOfQ_ApmLSLCHBWjhF-Crr1y2QNJTVGMIlyo6n136uHHWgpaRAS9I9FW79NTMv3', 'BE1lq_k6-hjo2fYfOLjh-MAAjMNE7OHRxEUBdaog7MBrvtAqBnH96joKo-qg0iNDqTsdBtZ5A8kXRdEly3-TBww', 'leLdqWPXcsmxYhqUefxcfQ', NULL, '2025-04-17 21:33:20', '2025-04-17 21:33:20'),
(683, 685, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dy7NlUD_Zn0:APA91bGo1nN-5GYvI3wm_Uf5W-FVLSg3X5ThuuMgPpMeBPUrLeSYKLFXZ7UgK-76ANv2Mw15n4e5OmU_lt_utcD2o252H9uYs1qtoFeRM6GBiAaOQBzbNsSlqTNvEtfgxR9b1yCDu9XQ', 'BHyhbcNchHS3s6htUb-KT1PkCIOvcIyDlEaYxjPQ0acVLf0qMHNhLebjUkN8Ma2zOW3mb5mZ69LmSwwUG9xFpL4', 'Yf33IljA9Rmpr5g46nO4gw', NULL, '2025-04-18 17:23:19', '2025-04-18 17:23:19'),
(684, 686, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fXNwzVobt-E:APA91bF8ZqArkKU2QSICWJnc_ghYdDyWIw1ZYUt3Fozw9348P7ZjjERgctwf0E2WgSNXmGqxikny8SaJc6SexXqaGkOoKozr5h2q0PNvfLXFnZvHOwMKhjH44ydLMrY40S1V36vCIpqs', 'BFCPX_K3CnwBx9IOrYcP2S7Eqoc4ZHvRMsvriYoSwM6-SQFbn5HU3iFiP9diLkG9NZHrIb6YKd4stjAgAaNOyRw', '08P8Q6kzXpf6oMFfSmJIZQ', NULL, '2025-04-18 20:09:42', '2025-04-18 20:09:42'),
(685, 687, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eyPPQ3NipuA:APA91bHt9qknMqay8NKt3rhbqVcymq8y1_VGanvRXkNkY4Oo2Zhi9RGWrSbwcjyZh4dkQQZEsmmC0Q88UnsrXXaL_yO-WpQZsoFDxb_n7fKwytCJ1K2wTRBmKkO4fjNdrowRqdqccBT2', 'BK4YyOxb8Ed6h91q-xcRX1s4aAOcBVN4fNkg03sVMs6TiYMeZHh0TGAgqOJWptgzQPgsgcdPdTv_3DtSHKFkzRI', '0GjKN1yGHNAY2CKZiwrMbA', NULL, '2025-04-19 20:39:53', '2025-04-19 20:39:53'),
(686, 688, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fWQiVUNDQQQ:APA91bHlXHwo1TJnKXMXrQRjIkMwslcVJDXBOlgdILIMRK7oG2VPY2h86JDwnStnSABokIir_OWNlXn-CG7RFS0NJdJPUvUSO2mM8vKEwvqaAwiy1aMfcujXZzokU9fqtWXCmgLv4xi2', 'BAw_GGCzwW66C_oWF5sQjZ2yyZagdM4kzhaP0Oi36cSveFMv7cmvFGxz_CcVib-wfxRzkRr7OJdaXz-tnys3yJM', 'YRrZZFqgZF9xyUizYGuQVQ', NULL, '2025-04-20 02:59:36', '2025-04-20 02:59:36'),
(687, 689, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fbJ5WnDrVFQ:APA91bFrrLchcJY3dRsniJVABxdTG93LBlrlJ1cIkKAD9D1Kr1TzguuWwf0peBgBOQzbqz1nWtAZgTBSZ57_96jlmC-OBFkkMrmL18-s2kTx_pv6anzvOxUO0bwv92mZoYDbTgHH0Olu', 'BIaRE6YQtjtf_Rf--HkemqwdmYcTvZ5vFloaBTJNRrqst81F8rTTWDEC6YvRSRpNvqCRdcYG9u03PnUGhSZBtEI', '2vmiod_kjvr98pri5W3Zyw', NULL, '2025-04-21 21:17:33', '2025-04-21 21:17:33'),
(688, 690, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cbQUrKTvBZY:APA91bFrLGXId2snB7T8YHMHatvKsSvOhnTuhWzmpBiC9tzC9QPNvYqZ3OdhR0xmrZKC5a57N8B1UwP4Nd4cOLAe5hahbpCphcpK0chruwH2pgmER6p6rlMwQ_BczkIFH74C51XulWjN', 'BHoF4-4pd1pJ_Z7Aod93Kc7XDMrTqLZoRVbDzonZbuaJBexWWNOhLHC3VtnDa4OCWHDfJ0_wAiQyUyQDsxUjGp8', 'pHZnDhDiyUZ4uFFiX7IaNQ', NULL, '2025-04-22 06:50:30', '2025-04-22 06:50:30'),
(689, 691, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c95GF8zLCtI:APA91bFcGtbk-pAc2E0gjwTW_zhdaJgDOQHpUA3WtG1WAlTWDQ5ktbzvioyBXy6JlFsfpy7T4dgNXuny2KdyX9AjMqME392E4P-guBpgkpXcySfhyvMW1DHjf1JTUnmepRQkH9KU3jT8', 'BE759y17mTu_tNX8OoXHCFpxHJCrrE3mm89L22o17lLU0Jnlw3_PJS1RRqONf-QhxhrgxwD22EAVibdYNWX6jqs', 'xjwjbaZHABkxQMt9wkc3Eg', NULL, '2025-04-22 06:50:54', '2025-04-22 06:50:54'),
(690, 692, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dKjKMoxfK-U:APA91bEoihDgHRt0ZKDBZxUGfKu1IhVujoaqZnc3QVy4fNC-40mSXpSAMnkGu_sZ90vwPASnSEy9Rd2meccnnlk2A7HVbavt9aR8j0d7oIYl9AUp_k_nXE1Zi6CjroeWHYAN6J10b7ln', 'BI_vkSEnNfGzSRo3d8QS0UQKpoS_n6IhqPsiFWgfPvSoTP41SYayFZvYKfi21oD7xVwlzEC-bagkWudWDLbi-PI', 'RRbLBJvJBZfMSeCYx1g05g', NULL, '2025-04-22 13:32:24', '2025-04-22 13:32:24'),
(691, 693, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cvvjJe0BNgc:APA91bEpCmiUp7Imsye_9JuIlGry5xjtxbcqKhlrKI9gXgKp-9HGZO7awTQ7GWfv59GYFo_0lQ1tgTj67kxofT9IDi5McgB7d0r6334BCyaohEqC0Okoq5kJ7Jeua_os1qjBXjzHRm9x', 'BAQdl1KtzMv5Vy0djNEWFXE3FU0CZT0ReI3Ol9NLi1P52YZ40FYUTXOL3UqVnhfkeOpgzg1s_G6bDweas-MZClo', '1X2FhiqD1pMfXfWZfDwdSw', NULL, '2025-04-24 19:57:24', '2025-04-24 19:57:24'),
(692, 694, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eeiud89i4sM:APA91bFqB9-rEWNCKM1SEeIkTN0NeBk43bZpS7lE3J8u_rtFsz5NA4gtdwV3t-vzM_qr51gXl7ED-5mnc9nHxM1xRTYDxDaKbOGGQwYXDH_D8IheSNbJ9wDszJpMjapHmv85V-aFvT-M', 'BGRUrKRlMc5VG2BrEADc5rOdFKINdCH-GsYAi_Hauf2lUzP8vVe1aKRhFmACo8YBcxz-XH16q-ertowU7YI5sEA', 'aa-aQxJ8pkdkEOtJ7RCbtw', NULL, '2025-04-26 17:02:23', '2025-04-26 17:02:23'),
(693, 695, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cHvY1q1-pZE:APA91bFCWH3ddity5D6ltN-yZ7tNgbvq02VS8FByD2_1Vd_NENVTTQAtRmEKSOpqdgEFWMsZ7WpMn0_8UFiLwbNEnx9vA36WIMAU0kNu6acjJKsq_P2HDv8ABxvfQidMfgJy11MfCte7', 'BM06fUUaGxQnCIXXB24rhCh2WGCE_gKcyrTiYzmRsXZi7JRwxYGMONF05jdEPDQ3uTmAvkb_CqES7NG_p8ZxuFo', 'M_m88jCXs6oIScXIvVeKEw', NULL, '2025-04-26 19:29:01', '2025-04-26 19:29:01'),
(694, 696, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dpvaT0jjVUM:APA91bFm8iwyX-wvDPmgl4osfghR6j4Gcf-Xhi_w2e2jOwHXRDcguHDce4-MidDsZf0NGOIXM9nfGwH-c0LUTXDRu3YL8Yjzua-DQZGy8zCXi-ItzM0uV1CM_7fh1ne5PiHfnDLkooT6', 'BOP4NwdB1b_83QXZ1cgBDSn3sItKiMEUhdewC3Hh6cvCaMUklOZzE7CktEO8a1AvIWBq6SMG8hShsuzDuariVy4', '7S1bcTVV8NDV1zMjvO5PXw', NULL, '2025-04-26 19:31:43', '2025-04-26 19:31:43'),
(695, 697, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fPlTUNxHAXU:APA91bFhj_WaHdUpDJX5fyrm6daYJQrWYLoe8sV-6hn-7ljeFg-RPRs2PyaiPuh2LtxSdRwY60XrLs3XXefdRSrZz0nvzJcU_zL2OSz_0xgNN-BRxgAz9fgbIeFOIDJwoc24S5J_k4yt', 'BC_4YI1YyYCH2rT7WP3-D1kSdd_4ySe6Qz2MmZR3odPy-UqEiQTyfc2gntzhG0f3Hu1fvoXY2q_ACTN0KIp8HJw', '4KNa9XQrWPKUw2L8ata91Q', NULL, '2025-04-26 21:43:25', '2025-04-26 21:43:25'),
(696, 698, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dvmvyaJL86s:APA91bE4PEssMcxa4-4YQO8NAtHI-necWbcDjg3ZhpZsWqDtQKP-GdFVko3ktFx_auCwC0NitOVqYfFSN56zoUH-28laQ3JoXpMC5ZK_LmLKKYFWP0uZQzOJWmJdmPMqNsO04eQUL1z3', 'BLBseov2s7SZx-1lFj0BieMjKqhB5FVx3_zCRTWpSXGt_6Z_X0rRJqsxWQwNJuWL4c6xSP_bb5qtQaLlSHKlQ4M', 'S-JheZWe9DFp9bft3Ds7Pg', NULL, '2025-04-27 18:27:17', '2025-04-27 18:27:17'),
(697, 699, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/erpmcNPWl3U:APA91bGw8uG9bQhMAoANSvLYFDZx9meqkMGrNTNy6CxXyrw-4PYnAjXC1FEzVPn_AQLAi25X2ppfuaoZvNeEKA4RmnqCNyNr8fG-8-A3MxFuxRgWtMumvihQjxzj3tBtBx0Y8Uf7Kdco', 'BPfJLt-os9BXnxCMxW_yVTsZTQTkGojBcrKcoMuMAiLwJphpqhr1AVYwvD4kRcz9HPY1bK_BlOXb5PL2xEfcMJY', 'DCg0izLGrR0I2EzLg3laEw', NULL, '2025-04-30 16:14:44', '2025-04-30 16:14:44'),
(698, 700, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eBMPRyWrxwU:APA91bEuOFfUvzbraqrNQy60mQ0aY_Qz-A_wwCvxT6qP19YJwAYpjddi5dcyclDuiCIVQKPel7OUQHz2UJ761YZs30yvvaGESo7Rzda4qddsMgQnvXzkTw97H4yHKLnCI_554CphVKyl', 'BKwvmCEC__gWfgjsH-QHNwrqZTvQcH7bkw4IrO0Yv2XT52HjKXmdAtxZSfI7BiHRXD663m9HiZrX_-kk0SPvodw', '8kd42TEqgmrE9W-OEXbqyw', NULL, '2025-04-30 21:13:11', '2025-04-30 21:13:11'),
(699, 701, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dZHvCdYbHqk:APA91bEMLlrkR7KvWbCP18APrL4rXuL9CubwD_cMnB0znLURRoiDl2EYpvQUFyJY4gYocULPTvUW7NG_Qtix_7wwQSaMLsuIVqRHH2qMvI48VOr1kLjcqJ1vNBcL0CMC27-CKNUH7Gej', 'BMecYZ-MV6SVasfxQPQ4sRtnwFMiN1FsaTS89VSB9Dh96HwHiKTFfMFwkh4pz9VmYfqGJxMHyKamczJsF1-EECI', '-Rf9c2hP0pxII5Q_G8XybQ', NULL, '2025-05-01 16:22:25', '2025-05-01 16:22:25'),
(700, 702, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fbakaKP_D9U:APA91bFohkRA-uoe0N-Y7TnRIuarZQ9u2YZ4MK8ypkkZ0uKO_pN4msJi4EL4XtAtexND8vlqyPe7xojZTMTQpaGOgKGgeUuDuJ02WUwdmwIaPWC_oedZ_PZ9pZ0QmSenECE_zEVzh8tu', 'BE_mmxS3-x3dpupa0V3y6XiSZRGTgtOPbt0EguZUZYu9ZBeYIvatWsAqml2wVDUshRi2gCkT5px6w5MwuXa8o4Y', 'Ppy5j4GwIRrBn5MNditGKQ', NULL, '2025-05-01 17:46:15', '2025-05-01 17:46:15'),
(701, 703, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cyWptqv8uIg:APA91bGUuuWSCCxAgTA0ugTWzpa5OLGbS9AmR0d8MgRdUODDTwcwnKkalFJzlMIuyOXp2SB2mt351dJVpq8dhT9b3aUhmw9JYLOmnhT1w0hK7nWS3vjtKcUy3t9QLI-lg6oGUvu_1T6C', 'BMrETgHJVeFtjUj50C6i8cBQ827kp2NCJECTpkflyRaQQGJH_1LX8Q04l9LiYyhkzDU4lbHeyExMNS2LGTZTqkU', 'ro9yDWHd9TrH9HXLnDo81A', NULL, '2025-05-01 17:46:55', '2025-05-01 17:46:55'),
(702, 704, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eyZbwIEcvKs:APA91bHGC8HLHf0SWxp1c5wa-0YJpQPHajR_PzT9WG0exIAQlDMpWx0GxcPGXJ6vKGXkw_0t7cCMTzDFsM4C-HIokJCsHe6WZsXlqnpvcHTPwfHw_XaNeGtx36LSQI2hcEdZsi7BOEEB', 'BFzEREBhAvRJRHhT9hYrk0GeTslLCxOX3ggatWHP3VTzM21H1PlvNKh904Oky7E8sOu20uRXNAmVYAbrJG5pq34', 'fmjwK1qvQJMgmAITwcH3kQ', NULL, '2025-05-01 22:34:06', '2025-05-01 22:34:06'),
(703, 705, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dkPeBfauxVI:APA91bEUZlbrcXSwMHksrlePXYFK-qPsDI6e5X9ysGO_1Unnh6cN0hEmx5pRD4wlXATol50tWv5TPs_IVfpfVWh8tiJ9UQWRNBgYDzYOHPhcC-aaI0o2xGS_kP5gdmKZIn0BYokZkdDN', 'BLYZXBwp8haTDZgv3QS-xKd4DtD1bHuxENptG18J5SkuagV-mxMTOHc1lUkiFnCQmukZZqOnED6ckJYLd0FjCtE', 'n58EOYt6q_aNNdn-b_MqhQ', NULL, '2025-05-02 15:20:46', '2025-05-02 15:20:46'),
(704, 706, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eFSqZBuc4bE:APA91bFk4bcA9ICDNNNBpb6Ygrt17NQlUm2O22nqgAGvSFs5QwMRZ75kGPWyEe-1vBzDrDUUtV8iAnT6eC2kNDTvRpx8BFTFbP6OSDzNkZEJKgTpbuDTm70hrNrQF2-Pr5UKAvdl096Q', 'BI4-pOxBYH6Zwpjgt3ar-eXCauWEHbvz7ispcIM8oUPGnNYaFzWqK7Tze5uIBLhykXFwt2zcYzO17Pb6CjrkZZI', 'V6Nc73jt2wkBeeqlNNUyhA', NULL, '2025-05-06 03:30:00', '2025-05-06 03:30:00'),
(705, 707, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fvF_TlktwUc:APA91bGsBBCOzWzrGBJNg6bKZlWGIk_6gVHQvKNMYXlhFbGviPBHbcOV0gYp3dNaiOPKzEdHKGyUbYOS8FZ0opuDR6luWsEJQj64Adx43eIS1goYG8Xs-iQ2n9-JneN8wblFVk9fjBHs', 'BPddHZvqiGMY3lXlmjDe21mSU62PqL2KMY-As4vb2cX8OSqylKkni5G1zFlsJdeEWmJuCTsE_H_T68O6ct1qIWo', 'P8l46Mb6gyJgJoQ6SnFcmg', NULL, '2025-05-06 19:06:34', '2025-05-06 19:06:34'),
(706, 708, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/erEX-VIabWc:APA91bG8uzX6gfK3XHLNCxxxuZeLKL4OoD3FfkjU-8izW_gY64B-Fdw-zEawUPhBCGLojy8t6j4ZXToKPOtkNtzMWnE7lHiFuyqPmi5zZo58DqyFE4QkFBbRPbTZq9SfVdmPTWpS3bTG', 'BH6KR0-uJz2jlgIvCsj9UHb5SJnXcCXc6ngCstJhN0CERwJJi4qy4CsM9nW2ujdlETSCYmFyUkfnBvfyGGJIq88', 'YbH2G8H57X69w32D3MQD1g', NULL, '2025-05-07 02:30:07', '2025-05-07 02:30:07'),
(707, 709, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fMrr57sWzmM:APA91bHrif71GYxFcfSLZfrdTcgwBDCQeaAnnS7JB3HgJi4ZwABS74XHPMHoA-_9D_Motkq_PfUjTlfVlMwyQLdS6cDlNoMZaApyANMX1aleLC8aS0EiSt2AuQMZCfSBjbfHcVRIidYL', 'BDI0tMu4mhxCfdsC78-kAl4l83lNAIwhle_mgJ1D88KhxQ1IuJUpLpqTcXzxn_ptjOEn9F42Uako4scsUY-Eu-U', 'KG5MLEIUj877_PCh8npBnw', NULL, '2025-05-08 00:44:38', '2025-05-08 00:44:38'),
(708, 710, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ehLkeIAwPQc:APA91bEl0H0RvO1FmMOIkFitMdfWwSkMJRHhvml5tD_IsQgGDxz6sehiOXLIt2sKNLIjXLY20E5e9r-JNpFYJrOOiSc3yooHUcj20IeXnZxPNKFzWcgdM4VZGVnthQPCbd_gtf6a41ZG', 'BEOaNSfp3jGV2IV7faA0xpgx-CHbbWBAzDn4L_A7ZlMmKvsT6eXmZeMXcL38vHnMRUK0SkCXn3-riVN7wg4_3fo', 'YhfGBysh1UGjkQxFKJ-MPg', NULL, '2025-05-09 19:50:53', '2025-05-09 19:50:53'),
(709, 711, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d40fhPHjm8w:APA91bEJ6xS9LxEV1dlupBKC2TRwUIX5jifgQdP5WhPcB2nyfn36KJ6QLERpCyNCJl6xFie9iVKlTCGs9ylYiEwqwuIt6InDURFjNpKvn6RDxbEqpNfVoAuEFfih1jlHWViJ037Lpk1c', 'BPrywDJFdbOuOGjFQ4ulAnTav8F61WKNaRMj-4XJEw_AbNy7nTWXlmJyB7AOI1b0TVF_GSfkKSLQ4UeJw8bUO_U', 'A7mxrph9VbhADNvjUUHZSw', NULL, '2025-05-10 00:19:11', '2025-05-10 00:19:11'),
(710, 712, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dYAm1I4Y__k:APA91bEhMuG1EevOcXfe2ttzv8P571UEUVfgWj_UfUnbHvwkb_SD0wYTb5kCbz9PhIqBSUlTupajUfeUGb6adrGLtrbLLxLMti8hlCk5c71jZAFZBn5eRKhpi1_XADNa5WUoftGGuRqe', 'BDLmSrgmnun8nEqnGXq6Rk5Y9dVySiVTvc_upEVnGYFQOJqM6UkPZrVFJdKHAzm0VynacO0H5CiLEMniHDviStU', '1zy3B4vXhrBpxLWgvK53YA', NULL, '2025-05-11 06:10:03', '2025-05-11 06:10:03'),
(711, 713, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/f8xL4fVv6f8:APA91bEQpOdE8EnR-sTpkCGaVc3xauRQMhxA2TcOQwpfWmNaJZmfrjvTJqsQQR-R5mwUarQaQ1GrJ9VD4bwiAbW-HOg3uAH3JO3zwGmYjrcWsFN60AbAg5Z-f0yWcf6MAqnXMnqulWv0', 'BJlXpbe29ya3MfUoZn8vLjirDX6d6pI_Z8skhLpxlyNz-pO1YBk2H0qgUkCzv8vKld0oQTh8HWfoGpqgHEJdLRY', 'ImW5zjH9nljKH0AHTCGZ9w', NULL, '2025-05-11 21:04:32', '2025-05-11 21:04:32'),
(712, 714, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/e4H-rFhYO94:APA91bE5cpOlbPMPdyXXpSyT44jSt_8fZUJnqZE_w3Dj6zGECqpIgmQx3u05IeTqhewSUHiV0ukm6I0-M7kA5P3K-7uzKKWkrgnY_6SRViOU_QJ7qwy8HdqQXd4nbSrhmxcvfrUoVQJB', 'BH-qxLJiOixvDQ9Qa7OftsUS05wx2UptE4hb9DQZO2VvRX2ddxjOnTMCUuS8ofTutKYfLw9B-wO31VSqJ9i2zn4', 'oI8He_nXrdhYrVN_nh9OqA', NULL, '2025-05-11 21:09:01', '2025-05-11 21:09:01'),
(713, 715, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ejtKX-vjoco:APA91bESxzodLqMjnv7QyQTuWUru-SAVU-7V5lFm8g33BjmVP1Y_JjWlKOtcCjKdyrLCZcvhGQbjO7iLrBQq8HB9L-gftl-ayxOTPNjB71oFjEtkvOSN0M8RAe84R3A4Yvk7pN69r8ln', 'BG_e0bSLLiO-X8qeHeiq1PVAlOMIKv5N6MY_S2Ccpj9NirI0r6grPIHgoaljB3FHz6BgDX6M08bK-m1TyIV4ZLM', 'hPCXhPI4NyVcTc95rKIjow', NULL, '2025-05-12 19:43:56', '2025-05-12 19:43:56'),
(714, 716, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dIC8YAjYB2k:APA91bE_oLqoCjG1dP9jGpkS6vbcv9Wm44aSsmhxxmu7pSAHB7gtmJ-t8rCVx5D_z_YVdtzYXI-M2xrVthmVtTygTQqJs0dXv-XnxtAKDLF2JlxC780s-pc-2hn803PFU5MQTf2HjCmX', 'BDZQEL62oSQopaOznd09aQV54tOpPTgfAlDNHVXC0XUPPozBddALZmVFreWpbFwjX_bXAlVq0PZFCfGEkRXj20k', 'AV0pCvxsa3fAtNIUGbV_nw', NULL, '2025-05-13 18:40:13', '2025-05-13 18:40:13'),
(715, 717, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fuXF0UJCfp0:APA91bEUCqiVYlJpA1_9alzd19HJC8zGrLbpLLMVBpOhZNX32f_kDQzFG1okgzvm5J60EQJbJtWi1xbz9I6q85Q9gm7TVu4eR6YKMx6pq8JKKqboTORAR_7P1LXZiZgVwKa1XMm94Nwl', 'BGqWMjjr_w4gl2VliHr24P6y1XgGYL8zp_yRQAOC6cKX7Z8r_SX5XDfFgTVbFws0hkQmo8tgYT02Xm24M13hv58', '1PUoT7EEissNHazXcw_Ijw', NULL, '2025-05-14 06:04:41', '2025-05-14 06:04:41'),
(716, 718, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eB_QUBzgEM4:APA91bEFXIJAf-gelxUSX_Py0UsVSXsl4fSAfDUVpyqMbC3xHtFJ1TXxoLeA7KyxY5-VqqFz38cF5pMpEvu1YAJ4mdQ5e1xQRH_mN4TfRruA8UrXaNEPYtyZ8ndU_1DggwjGrg-8AMAO', 'BH6LSchrVQvNJiwd7b7UnFspdrnPd0v6BVtS0jJnb106sRYFclN4LUOr0j1lMKqaPf0u-rA6AkGtrPHYKF7cWpg', 'MS4-XrkSAbgBG3ARLcf--A', NULL, '2025-05-15 17:53:12', '2025-05-15 17:53:12'),
(717, 719, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eGuln8iOP6k:APA91bG7QncILcu5z4iUP8RBZFm0hV4bkRUoMHvc43lY-hqLgrV_zRVTwxL-g9FFxL0JN1cft8bT4zhONLpS14ayuKKt38tozNCgYbSH2gKi_l-7MqYVphTenGXx5E4tVx_8I9g5CWOK', 'BGiRPwEDDiRfMVtM2DBP9WAx-t0tkQIl_b7ZIMqj7NYdb7zbuWMHfy8A7G8liq8Olz9kkYutsG8jsLveKsOX7lE', 'cGAXFXNS4_3eVNpsJwRXLw', NULL, '2025-05-15 19:58:08', '2025-05-15 19:58:08'),
(718, 720, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dhsSLvCRynI:APA91bHB_32YzPybjoKuOg5fpNfOAt6jiXvCW7a8blwB_7kNb1tZ9RYHRsgdIs-XXq_vdaIdRlyv70HGjX7pEdEHQjUqcauIqw5MzPyslXM_XgJ7eat2ujEXneqczGE6xKmcTMc6IBeG', 'BBwn6aqPA40iJpTwFUbrMA_wWLMKwNVCVEb0RoAGEd0LFwYny7ZWL9-a7MuS9OQkx0GXFtKSGUczfAOUd-Xe9dU', 'FiNGoIsbhJLrqK7GPyIA8w', NULL, '2025-05-16 21:13:09', '2025-05-16 21:13:09'),
(719, 721, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eSYpxLL07v4:APA91bGjBm_frMMoFLGPqncbWquFitPauRVDs2AvW9njlkCa-pyw7gGJ6Rabu-vnOkAbHrDxlURK9jENx8p0zdtgGZ8mDJCPN5NXirHLYfzxe4LdQVc6nU5tOP_R45EOBwRnwY_NDqmE', 'BGWUGsVaCFdkjUkfxZ9cLtZUD4h25_9z9mBYhYj2SAXOQhU54y_0oTYWir2T7mkblhxJ49wLxDyaHNkBWOB11Iw', 'X6mWXKY6BObp-UFbn5k6yQ', NULL, '2025-05-16 21:33:12', '2025-05-16 21:33:12'),
(720, 722, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eQ_zINreEsM:APA91bFlhm1QqO08_T0KNNoXnldopaXUyGv03VBIDO8-R4alvNc20F9Eb8zSYY4tnkRuf5pMKuKkPzhnvRCUmeRv4_4nlaOfgy0WV0DQlV6coCTHhTGrwyWookw_Cuu_pbQ1PPCRuBoq', 'BEOc5mAy4Ro9EXBB80Z0wEem8Ye8P2QA0dL5jZJT1mFQW-jsl2VSZSrfupeeWeGi2GYsV7luOX0gZyofM6d_sME', 'luxdftXZyVDGndkZiaANUw', NULL, '2025-05-17 05:36:35', '2025-05-17 05:36:35'),
(721, 723, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/crnaHONzCnA:APA91bFYt_0KANcUoQaYrw5ExCyq7SM2mptLeAIq2OUcyxybmKFsYiiN_1_MVTmPpL-Y8puBcVLEEZIBwPp60uedcYNLwybdCRfqsq6PRX69WjX3-kPZG8dxyy9QWakSot6Xyt4Bvpj3', 'BNHyM0PMX1g9cc1B429VUB0ylEe5V9vqvr_1QazaTpcaeALZwP9NB1dmS0AVQMTo5r3JQD8XfBGuBal6u6du39w', 'N7eCpTWF7lzqrOntrdI3bw', NULL, '2025-05-17 05:37:25', '2025-05-17 05:37:25'),
(722, 724, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fPxl_Xdvg4Q:APA91bHLepBGfPQZC3CmzzHVBS5-ffk5i5eKSUr8fpCgbtsONTiK7FZp3gCsF9H57wlgJKqCuLrPzjE4SW1KcJRaC2X15Oi-eFFrSeyawJIcg1hBP-ZrH9igpR9vMZZHnvos8C3p2NLS', 'BKWzLcqNierj90yDoKd70ZG3Jpe2h5lIO9a8QNxZsI14eohw6pKD6gqIG-rXF2_YRCTSj94YrTmQb60HdFB38ys', 'd6L8KJb0-Nf_UJwMsmaA4A', NULL, '2025-05-17 05:37:44', '2025-05-17 05:37:44'),
(723, 725, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eVM_BQ4nO2I:APA91bEwDgl3Z58DOIE5GWQM95oyYI68S93eGlOWLGf5DgOiUg4a-45T9ZCuaXxcIMGnBcNoF87JWxKnS8vqK5hiCPVMGVHfWv0QItX5eOy8XfH7zp66b6IffErJsu-yDcv-WsGsLuRw', 'BKRjiqOYytLg__Zl0eNyRZh6MGfcKIBll7Pt1T7tuujuhuRAZLV99BUQkeyNAn4vEQBgmr4d4mXv_vmj4rjNzYw', 'wsugXajrEuCzFA9YoS5b2g', NULL, '2025-05-17 05:41:06', '2025-05-17 05:41:06'),
(724, 726, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d0qHauK682U:APA91bFA4yRxaMQJAu6SXm6vK1Q5v4AJpMX-z4PxVWE4qWuz1BptsBZwV-n4X_c9P3nvw_Jvz3Ji0SoRYwwa1IcIzf63llrfspUmPe4FEYBSTNOWLPs8YBmOI4pjpeqUn5ZkrMa_Xm5m', 'BN9u1iB-Cq3SDGzFWNDB1P4IZwbO9IrwjsSXGR4J524PAGOzIyrs29i_7TT507KfB46YxgjADwbDb2LXk_Tovuw', 'DTz6z82izDq-QOwupXYkaw', NULL, '2025-05-17 05:42:42', '2025-05-17 05:42:42'),
(725, 727, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fkA0uEMBb-w:APA91bFh2baIOAGbthHS0rsiSCP_FdGM4EXXA4gfFWxLetYZmdIF4_sOmK1AfGBIordiJYMivL6ZPpwooStkq02zI4rp888UofvI49OrboFZav8SiXsvIVSWpp8egYaAaLEC9Yl5qpT6', 'BNg62KeSJuTW4ofNGCH6uUw5DS8JZUNIl_mU3KAf2uNbPc1A62MfALNMehp3xy-Wc1BC55ID3KCxfJ73yHfqUtY', 'ipof-8xumtRGtvGJHmQAuw', NULL, '2025-05-17 05:43:31', '2025-05-17 05:43:31'),
(726, 728, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/f-x4scEqVyk:APA91bGnEjZGoP5idoS84H0FHtdJA5yInKKWnOahrkW2Gm5KIGBQSDyCF3ECuM7aSBwENdS0Bv-D0W_wUTRJq8sxFhSl0lhs1kk8ImW7kOCqBeoiVtogq55NNJPfDIdV9wyX0ZtKFG3I', 'BJzjeFlACBvKi-35Y1Qzg9TTN7LWbP5J71U1kh13eIQe7mFFUqvuFmCr6i7S2oJmLV4LWP_TyU1zV_3Taa151RY', 'FL5Glqy4CJqz4oPDjmFZVQ', NULL, '2025-05-17 05:43:53', '2025-05-17 05:43:53'),
(727, 729, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dlq6pKTiK04:APA91bFU9-63LvYDR46yMoIAzT-QyabQoZ0ki5tMfSi_Tcsa7BsROdNdJ75pflqFYnRN9z0cJIWzSlbmNrwG9fak8V8jSyy5AAMuTMH7jdHXzykNzK4IKFzRTooso3FRJrKjDoOanQuu', 'BEJWPU3u-tcFkQV--f-WxMOfWRKxkFhIDLE4eV9XqbFC31WCkuJVSPHoBdz7-bRZB8DkG__0NoqdJLVnaKqMwUY', 'aS9t_CHEg-l3dERFybzzgA', NULL, '2025-05-17 05:48:41', '2025-05-17 05:48:41'),
(728, 730, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/duv-2i0ya4E:APA91bGJ3mUE29vRdbFrUjtvI5hBARqw9M1N3Uq7KRsMr-I5TuoSiPx7s00i_QE5rEDe4ulhxB13QXPoi3gYOTPABxBZVB-weVFnXf6-PLcce2cFxwlmt9UsYtgfNH6vSWlpsy0m_Xle', 'BBk4ME8HYAtlB4P4VBxYTmxedAUv6SvF1pJcriWfdcpTIWrW2K2UGVQHefCHBw-6MsWxTW-4EaLBh6yriONjf1U', 'yHhpsbOpOXd2KaGIiMKjmQ', NULL, '2025-05-17 05:54:49', '2025-05-17 05:54:49'),
(729, 731, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fxVrz_ZfTus:APA91bHc_mrSi7mfWmCXVjX35As6Q-t73IReHdR6_VuITveebTzkpIP-XFthZOwZ--o0xh9EQschfaAqnHblU3jEQ7Y7T0kLz-TfS0PLvCdVvR-8pWIbhDoiB7fEgjiVViu63KXKNy98', 'BKXpRkACxmnBBJiOOPuJ8pvEWP-gprZV5Wd-SyfuFFUic9-2qAfGkZSWSme7Oju9pqcrxXBxPYPPyhwReElAwYg', 'I7-Q9aKylrsKqBUnbMYExA', NULL, '2025-05-17 13:43:52', '2025-05-17 13:43:52'),
(730, 732, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cgRpfsxCXP8:APA91bFRDM_nhVIlxATsNUs1kuR0O9h_hkTIebG3BfRjDnosrw4QpNQu9MBmz_QUWioUKQ_2Qh82JSDJTvUn34FCWsBzMHayx1qex72TxubnA5_0w77Fb_4aUa-Cvc0Jq4QEn23ooX33', 'BOuqPOaaIZcYLCq6CwM5HsrbRXdVjVuBAh72R7_w9-ooBKfhzbe5d51C28GeVhrDUY-zGti2tMse6_Q7VNvizqw', '0nriRbN9IvdXYEW1ZVNfEw', NULL, '2025-05-17 19:25:02', '2025-05-17 19:25:02'),
(731, 733, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eGRhN6V0uYs:APA91bE7cWqQw3sqQi2vzkwa56TA8FSJGgddKiVf_5Lix6Juifjhrm5jUWvawpMyLmKjdaxkgsAGyGu-TqTNJCPa4SlZiUHsD1OrXYnwKthshcBOgxpAn2hK6VHLSQooShbLtbcrNV2q', 'BM6MRsYaX_zMmjzje5eHVlZwMYlkIgoIzg1CpPJkaSpr6ZWMNMgyVXVuq0skG3svZZtiTt5oT1eLW24Zzh7CEbQ', 'vcS1mDPXBe-XUFZYbYXtBg', NULL, '2025-05-17 19:25:24', '2025-05-17 19:25:24'),
(732, 734, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eOzsYBSsk3M:APA91bHnf-9BtOOyHVpJ345YTrvo_zasa3aqik0HZOcN6T9272wknJd-D0kqN_-V2OVWef69UpfP9X95TnWmmOKhlpWMWDBOeiihu_qg_q20hieq22amEMOoKqCQPBZoKY15HSCHWCy7', 'BKNqSwprZP4d9qPB9sM0PLrB0OvobjqZTDXl4vD4rFLZLdeaTIDJcXliT2nYXrFOPzQXZyoDPu_9kTCxY2AlGSQ', '1MNMQZ5_qgMSqNBXVw0Ukg', NULL, '2025-05-17 21:59:17', '2025-05-17 21:59:17'),
(733, 735, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cCwcWEoufio:APA91bEgMj3kShrS4jz8K9ncu5DoNGhworL4mt7rfs_kUkb4DLK_m81t6g9sl1XiWphG5xxkTqVfYx-cXPAcU3MZeC4xFDmbaktgTx-5LuNR3lqoRwfQzcmqkSO3o0fo-G57G_Kfk5a-', 'BEYAz3uQB0rXybBW4SFgRLiQ894XK0ysrBa5HfxKNGg6wzGRCrtXiTcW1AQVDQMrXFVNG2aJYmEV-9QCj75yaYI', 'DlT44BsezCIY5Y8joCbPcw', NULL, '2025-05-18 13:40:26', '2025-05-18 13:40:26'),
(734, 736, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eYFGR8wP_kw:APA91bEERpow88mYOMMDcL8qhiSdbUOnxKvCyXPu1B2XriPLkeEadd2ttu6lp91VOwmiWknnUXglDoxohok2bcpwp6mZB39TdGJB4LNI_XC98NdzirHl4Z5SPmiXg_iElTUsuEU0TV8I', 'BKF92JbmagXJJNeiO706OaXXIzOPaCwSq4sAUEkfUh1XkVLDzKxAj9t-rYEIMP2EQ1yo13dkcwFBUM2_gdT3Axg', 'GeUkURMlZPk-_KTGg94Oig', NULL, '2025-05-19 18:51:34', '2025-05-19 18:51:34'),
(735, 737, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eWLJ1ZxQdks:APA91bG6EOm4cx1tYEcFcIJKjh7xXdACiS8agrn0WOTLNGEKHpK47Z3o9TXDQT8V2mwkLhEVKI8FFeRYeSv8T6v5Pcpph_UirJ1ArwdZW6EYW0xczHZyu8t5AMefHQr7FHjVlIQ40R57', 'BJPoMwjhQiqXqtcXVirNMKIXzG8ratcD8TsMN6LRxXPXZqu3WFESEwUK9ruyWOSrf85hX7pC4oYEvbC9WaQIiaE', '_6RK87SXSm4FWWtMu1876g', NULL, '2025-05-20 18:38:01', '2025-05-20 18:38:01'),
(736, 738, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fdAsd17A6EU:APA91bH6OUM-DX-Qq0sMELRr6aww3ARE_OqOlZt2QP29Am0EzDlSYaj668Op4bL3X6q5LI2j0QilizS78C0L0C8n64755mJLogM_uyerJsAbvdK9hF0mjA8jai3Obe05dKVccmJV4IlA', 'BJC51SzMJvkc4yPucmgGQ1z4txmCH705VSy6mcYoULCKoGgZKYZZjpj2MAMEApyeEbjr5qakmln5nYSj2OgTwgU', '8l-pLNu-kcjY1qaTEVOyxQ', NULL, '2025-05-23 14:13:33', '2025-05-23 14:13:33'),
(737, 739, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fLir3lN8Uy4:APA91bGdZRqVDN4N4CWr2i3z5kqzFsHAlFc9e7-P_6mQuvegHPFC5M5g42-Vnr6_1jGYa06zPKG9BAB1mjpj9J5laPlJE4L3pJKgC9z7y5y_SCfItV8oGhR5JX8G-ZYFtvzwuK6gFP57', 'BF9TGNc_UqbEy-VX9eSrIk6a92xT2qUTp0TQivlGzB933hCuu1-dVeYMUudTAkIByCJ8dSOSP-Ls66rkfKgkCBU', 'SKOUvdUAtkZqOMEF58fguQ', NULL, '2025-05-23 20:07:39', '2025-05-23 20:07:39'),
(738, 740, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fJXH4FjY_XU:APA91bF57ku1eCq7hsTemPDVWa9EM0AgBrSjEZpeNPiAV3wSb3n5VK1h403D-3C2ilFjWuRpPJlg5IYQp4BrHzxc45z7EuZZANo1Q2AViuzV2YDuU6qD-n_FWNzdPBU3hzUOJ38WRCcD', 'BF9QSm8wGe-P-1jPYUbSEfXAEvMxw8HiFRJjLZABE5GweVchiNTHvQeZKov6_PpIiXpAY32GnsVNMzmfqXEZMzM', 'KXUtht4muIu8HIwnHXbOhw', NULL, '2025-05-24 13:33:13', '2025-05-24 13:33:13'),
(739, 741, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/f-I60-CZNr4:APA91bEVWvETdfHMkwthnOKG8uKQ4Lrs4JnNrEiB70-NHUqvZtjuedcUYdzUwmgv5h8ZktfwFXU3hGEEFf7ipANhsfLulKD-v99W4owWRESrHLWZwYpLqdrxHkIfn4IKGqMhds_JFNl3', 'BF9B_z6_6xCY8zzLEuqYvWQyVBtVVGmeqm_H93oWvdcq7Iuiw8MHZByZkKbRQmf_BTHoksMiEs6PP9nhhSqSvi0', 'QqIQoxO8nTWX5FIVtlbj_A', NULL, '2025-05-24 16:07:10', '2025-05-24 16:07:10'),
(740, 742, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cnNbJO9tI4k:APA91bFAOa1ohyv-6iMiz3-PI9b8mGrTrCLHLbztbzC7-RfcAM0UgxbIxQBvXbExvWoQCOiMF23ztY0gKPZhTyAW3yqRDa1qfu563G7aXQ_p3wFLM3V6QwvK3g5O11aj2MGBrY403y4q', 'BNHpfCUy0XXf7-VaW416fIDL4AsG5D9s3nEKCPrfCfS04DzaFCcvIOn--v3mFIl7eqng6jxo96L1e8Q4bWNPqw8', 'CDHZs5zro8031bmM4-yijA', NULL, '2025-05-24 20:03:47', '2025-05-24 20:03:47'),
(741, 743, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eIrTdsTGq-U:APA91bHGTTw5-zJYeFhNt9YzW6wyuBzQ1-stVNT61519lvNEMfRjBpEM4ZgXv-Qv-XsMUOSjbN-nSonhU_jCkU1R9ZgipB67y8k86YeW4wvF1OTh-M3gyAq-5b9XXyNITpjFfCUFbkRB', 'BOv0mr-XJ7njL_tl6tpDun-4OZLSBonKhNaSNVBssKYhDTCupMmzBUzl00kKSpVsVPGgrBvviidA9nDGhwfq-gg', 'esGmP3TgmbG7tK7PGv9cdg', NULL, '2025-05-25 18:35:25', '2025-05-25 18:35:25'),
(742, 744, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/efDQfOznUkM:APA91bH8KhTCLnOP4uNRmthLY3U6ozZdfXslU4a6TYocwda0lysiwN_F8bsUGKUt8EJ2r4ANhx0kxcGlALCtEKlczIVH65iW_jN5bGkmVFQY-IgAh6EuVXCdes5HtrL24VTRiDsOFKHx', 'BG3niMQWlGHexBRZpw2TuWta89qbzW55tvioA5Q2P2YrDDE5sWhSodYVcHrBlxn9oa4AHHJSIdztUvKq7LPYmqg', 'RAAWdNUJphiIEDAc6Gut7g', NULL, '2025-05-25 19:39:04', '2025-05-25 19:39:04'),
(743, 745, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ch_76tJE7vQ:APA91bHi4SYLz8kn1rfk_N7XagyzWb14ivpu6cGc610wiTfNJeP5rZ5XiMIiJDnZ0sXkfgEudRY---X8TdcLW9xpGXZh1dv01Qi7TQy-6zm7sUNjoAy8aydISATVY86UngdfaMfnlivi', 'BKD4NYB8ZqEuRiFM8KQ0CpChVqYQmRzNeHkyJlTl6Pot4iM2-QMT8sM3XayXbU5EctDX8XwrPriYm_vx-Lvz8d0', 'bkrxlfAvWjL1VMykMwbiGQ', NULL, '2025-05-25 20:06:45', '2025-05-25 20:06:45'),
(744, 746, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d2UPUCY5XlQ:APA91bEnufUF4jYQBU_f7onAikFuD9vh3s89GcMqGkTqaM-ikHAhMfL15PFLfN8_1J76MT6MdVxFdpQfsaUoNqoTxjk0bRJXIv_FC5BLIMkrafpHN8KtIPRt1_sP7Un7BoHeN_wqyNNC', 'BOPOrsUKsng6ci9bIbR8wrn9twYl9fXzAQyV3S_9ZtNVu5VPjPz8udxXiK8k_GRkVutgRascZB3_dPyex0a4Gx8', '56rgkdTrvIjlueGBpVtCCg', NULL, '2025-05-26 04:21:25', '2025-05-26 04:21:25'),
(745, 747, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c3oLhkJZiOg:APA91bG1jRJKYA1X-3txAk_Zi0KbpmEo_7WGp8IUociL_eYkNRLAcj8wgAOWba5-yDKyTaK9KtdEnycPHQqg19rKYIKwOMCK5EihF_EskS9BbxR98i28eN_I2HmehZ2FQK9_W1g1qjI0', 'BKucyIWXZBn3srCL8k5XTEMIxpOCA4oEE0Bqwu94MzEIs5kG0oH1Wx7SEXjrArXOVeDeIx8YAmAv78OLVV7XScg', 'h5PL0bolXPtBAmfJ3RmHRQ', NULL, '2025-05-26 06:11:24', '2025-05-26 06:11:24'),
(746, 748, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c5vMqpr0310:APA91bEZyOawdqFdMUbkD-8c5g6CkXgmbE50tkmVVrrJDJstG6NAL8fQ0RHOqpGpE8c96InSWWFqt18EhqGZwrE0IygFkSNTiR1WQMSGv_CRj6l58GrwhAGAkh81pD1BzxQFmjb7f_T6', 'BH-f0SM6mvCMB2mqfvZvWrOy9LWit56tDg1XdqdQYsUZ49xAp18gbuzDAyxX5B3wVN7mKNLtnQwa0B7yOiEiW9E', '67PHO8v-2uvFxayjxx2ZWQ', NULL, '2025-05-26 13:57:12', '2025-05-26 13:57:12'),
(747, 749, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dmJ9SmWJW2Q:APA91bH-EtmVB_Bb7vXnjI-cKayBhGs-XFRuxf8myRVjzxor9jGKZ1pQnzrmWSWLOLY68Dj9d_AUWKWV7LiZPAQS4pc0veUa87HCW_-XagRKMwnclGcf7zstYUe8vcB9Fb6ufD8f1Qcp', 'BOWr5kKVjIWDrHSaw_NL0f4hVXnwzBsIxOwrTSVMfa-xV4uwFKTHVx0VVZCGqcbkKLoUc3CcQOt2zFRnauzhtoQ', 'ZMenFoEFNbLneXWR07W3Cg', NULL, '2025-05-26 15:28:31', '2025-05-26 15:28:31'),
(748, 750, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ce_hfTi2EnM:APA91bF9PFhz1b5TyZQ3101TK28GJ9Pq9iXoVpWsoajz43PUE18a563l47G2t2BfIRNPzouqeXXlgLzYa9-TOuNE4_9Blc41dr_ARJWbkHYl0V7h4XJMOK4dRscM5sP4qGLYbVP4NySY', 'BHjburm9gFa_eXlZCEu3LGBVdjNJR_b8XyOinbUudvtZlY8p4-pVb4xeEQRu2OP2YD8-6-yBpzvKjnEswRpY5jY', '14JgOg7wYZABj9hKKV_vcA', NULL, '2025-05-26 19:00:37', '2025-05-26 19:00:37'),
(749, 751, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fiLyDGWsclc:APA91bGHztavaF6ZxLFxwEcDupKl1iClTQLzoqNXy6RavEHk3pjfr2Bt4bELU_SjKW6VfiABxhAb4c1v56qEFa4fr5uzA0njolOtJySCkZ3AzY3eUbPM1CIp5k4wTLlEWI8gJOo82eDY', 'BDKnWmjfRzMZpS2b3iRXs5mOq-flkncZnGDk1FEVsZr3ZWplimZoVUdlk6No4TCeJDZjTCu2wR_ixjZeMEMXAQ8', 'zn6yI8AXMBR1mbAxt_x_Cw', NULL, '2025-05-27 04:56:00', '2025-05-27 04:56:00'),
(750, 752, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eWZFKwsZjo0:APA91bHSgeKXlpWien1QCC_oCrQOWUzg7f2WJBgJYZWINa1V7DRxu42jOGinQAVHU3ko95UUvjAv1rmfvjyUweY5hQcBamoPrD0g6go2MpaL1G95lEh84u1itIdwP3j0l09xBMZtogA3', 'BIuJnh0NCzTuyZ90on3CC_QBpTa3U4fjuxZUFdEOC7pLnJjPHRhOMEbXPVWqoV9JZxxdicDNK5nsrGjfYSYgQ5M', 'EW251P7XJnjQazuI6ei1rw', NULL, '2025-05-27 15:24:33', '2025-05-27 15:24:33'),
(751, 753, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fXyeHfgaink:APA91bEZUf5pBdkExp61iglDWI_hhg1yAXtN1nrZJrl9NV-HQtIxo1T6aEmA2_B2hxtn_VgPE7GeuJmH_FPoZ71NU7C_jEgzxfBUigPVUkr__bn0qgKXQnRUmLHq5qufjmAirHld1WN7', 'BB056EsxeiIW4o-6fxvQDp8qRG-bBd7N-SDmJNPxDFyclpbW_w0ke10FmQlte2TBE0bPCR1X5A5TZUL81oXgBK0', 'fptEkKB-MnZLgX427aNHcw', NULL, '2025-05-27 17:39:22', '2025-05-27 17:39:22'),
(752, 754, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eE0ScpjqrXA:APA91bEhSeSMo4W4P83DSI4tip4SKdZI2GsLMt5KoKUkgsg9IdfoPNKBE_91lHR-pJvBMLgJTEOwPGsGsglX2lHSDPjT-SQ2JO3mTZ5G5qsT_aWLYfByGQlAy94jMPA2bEGb4eN4UXVf', 'BFPOQd9y4DztocFg-H_ZvY8yKUgXUeFMrZxCbvZV6ayDjARLjKzcPcRLFOCQX8qnrAm9NG81_phoLPqaMv19h34', 'ArbpA6fKyE_IR4fLHnaADg', NULL, '2025-05-27 19:33:37', '2025-05-27 19:33:37'),
(753, 755, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fAPGhlPAq0U:APA91bEV1tCAJnBr8aoHVsYLSrE1VLhaEyWe9VGuquRXM5dYTI1udMwYpIDqRY_8Cj45HHLenYhdpH8cvDrz-tmtY8RoRAFWLsQL0OQNsgTMOLpfAfcQ4V7LuCDIlL3TUhdU8ysnQ0R2', 'BAQOEeZAhc92sEz5rSNI0DO5T0DhJE0EjmOLjZGOSsDugAkly6x_o7ssFpNS2recIPpDhbtzNJp1_zDn26hjyKE', 'Sna5r6p-xVEBFEqBSbs-4w', NULL, '2025-05-28 20:10:47', '2025-05-28 20:10:47'),
(754, 756, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fHsKcPgndYE:APA91bFQqeVW311DEUrsH9oT4WAZ2w5G8_7TTOeE3XCcpL8IgEF0yhRNTiqBsFTdmQg0_BaUYC1yyEuZ_DxybyMedaw07noGz_F_p9bflxdnot5ZXuaQdFgf7TIernJAY1O35Vv9Groy', 'BLDhbC_eNvO4uhohJcmWk4frAsV6fjUJ-Lsc5AAkPtNgDeQou2ColxOQdSQPMdALC0Lkp8xqvV_wJ3WwaqGDNcI', 'z8Wmzoesl7kktzP5EbYHtQ', NULL, '2025-05-29 00:39:54', '2025-05-29 00:39:54'),
(755, 757, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fqWXJ809iyU:APA91bH8BHsm4jddtqBNYe4wt7LjMDysa6pmFktLKL1QsDyZyp0DGDEaPKTxf6oaVmPzQ0_lzbJi4E7tAggg6TdNluzvnETZwOmnRSqodt0WAgZ7vDmRpYIOn9BLC2hkrqAil50xgmzH', 'BN-z3ikWgcMsWve6p7iugFwq7w_SI-qZQ5loovh94euS6oM6klsC8cn1RZcfRzpNkZbKfmfQidiHdHDUrDBbxsg', 'LFb0MVpzv4WaEb1TNGegrA', NULL, '2025-05-29 15:34:56', '2025-05-29 15:34:56'),
(756, 758, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/exs5qoctJJQ:APA91bHNiAFUgYqQUj_C-T74eN0roYhPXnE_fjkafMn0mi7A83-nLS7RZw33aA9u9s2Xcqys_LHoe2EEE2CvI8UR7-apnuBfP6LzV0zCD9ZrCbB2mJRf4OmvWbvdaazZKk1rk_rd8E1y', 'BK2T-EcsACw4cAxcFSutLh70SWJy_dqVmE9racK7hKxQRYP4X-Ct12rIHllinlidICMbyHVbDOXyPu_K5Tf5jvU', 'Hozw-uHWKZGxL4j5iGTIVg', NULL, '2025-05-29 16:21:17', '2025-05-29 16:21:17'),
(757, 759, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fcsffYdQ_FU:APA91bE-Xqi6RD86WlfqUhMfVHnaFUkKWN7OJa2dVATcZBfpTU5JtbMCIsj4WysGuHmR44lx9sUnIFeY64x9LXSNlpOz6MJ0hpZWF_glVs_3YLkrY5g6DmNV4FytuUxoB4xgLUDWTwcA', 'BMja3o15i3MwzH_Tc_i3xX2D8-sMqAM6ODoGwM4zpV-xNP8mhkys1kvM2ggIa3AtoP8EB_Im9bvtumGYUL5s3Mc', 'shTFDEutLWmOE9WxHRFG_w', NULL, '2025-05-29 18:58:13', '2025-05-29 18:58:13'),
(758, 760, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fzwC5lnyORc:APA91bEbL0cEifceHf5THShCXeYNbHu5ao35WreMHeWqRvkAorFtG4YoWyfS6OcjvRrP7rOCxX4491i5PqlgSUG9ftXa9YBq8lEuKwCJLD9SM3gv3eB8idiSCejSVjIsmeosxc2JO3Nq', 'BP0Ow7rrPEczZmDwx-A_y7S-w75z0324jP5unCf6KoD0yQdMLBnFzpTwcJ2vAPksp2rGMIeyxlF64d-Qm2RtREQ', 'lg6nfzc8fExvSvhRkhJZ5w', NULL, '2025-05-29 19:00:23', '2025-05-29 19:00:23'),
(759, 761, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fee6nwt3KhE:APA91bGZZytKrBM2dZuuZM0m6kqUsJBjslImZjVODwmLZ_c2zPCSsr65-r4QFoKWoN-r0MturK8ao9NMM3TjLlju-mYNSEfPCFZO5XC6flqW0ld6Dlc8k02VZFgfbQnJDpiMIqaZY6KY', 'BEfWUTGx0ABD5cj0HA8u1gTWGtB9MIeFOwK38TNjH8gIy7RohsOzJW1qLesqpwTeAzjsnsE7zOPIYQYRRSPCTHA', '-J5SElyGMmSJLTWkLr_3-w', NULL, '2025-05-30 04:45:05', '2025-05-30 04:45:05');
INSERT INTO `push_subscriptions` (`id`, `subscribable_id`, `subscribable_type`, `endpoint`, `public_key`, `auth_token`, `content_encoding`, `created_at`, `updated_at`) VALUES
(760, 762, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cEtXo6hpvic:APA91bFSKAYx4gl6ql0wYyKUbfnbr5NL-mMDUXkQLzo5bwvqJPhDZ6jbJj0pug2UxgDq8JC77-EGXU6Eo4NIrH4T6GSteKoVLE8yDcp4iUye_0WlbTldt2zgBBRrol-KjIpQbpwRV37t', 'BIZOw6KFyxQmjDmcxqfYYq3vBFsgfN6qfXxCh_Zra0-crsqBRRukj0AAD5PvZF0M8bSOJ-dxMhLBxz-Wg-K0IUs', 'AvWPmwK2hOd4lyTdsFjd4A', NULL, '2025-06-01 19:57:18', '2025-06-01 19:57:18'),
(761, 763, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dHtDWOgPhVQ:APA91bE17g5dPqNYBOxpLZcKDYAXlrQZuICQLUlzyaNFf_ZLXPK1UmNltcHrTayRWXwMHYWxyTSXY_LX1N3jZphLGIAYvgUxS0IAvkLKHNGTwxD5kPGkuTghM2ttRh78bwLeEs0hK5BR', 'BOFNg2V9BBf839Ff02zu4WG03wm8dRF-73-174bOa8Cyrm6QsrYI1KpRlW7yludGI1cEidxqXCcD5b1TU5uelJ8', 'UyiMHT66arzbggdNfMdb8A', NULL, '2025-06-01 21:08:08', '2025-06-01 21:08:08'),
(762, 764, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cup08fOF3H8:APA91bGwio_dejFswLjeXR1yDFqZsRaNwINCargSNag145OR5MJSa_Ox7KyS7Qpgy-xc_M3qAq_rpWboMowzS5Khv4DwpzfSLTRaq7OvbxS-JL60mSeonCw_2zH7qc-P2bm0bADzbuN4', 'BBbmZK54TwD0KK8pco5cRqv_kBjc28eEJ8CWaWgth9u_Yt1zbv-9KxkY1IhjyjOxXPkiVBKtmPZbigTGLZqdfgM', 'F0VYvGsL2SS-Ur8K9Yqajw', NULL, '2025-06-02 21:32:17', '2025-06-02 21:32:17'),
(763, 765, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cLj2kmcp6tQ:APA91bGKGQcBtI7cyJYr_FvQwH9c5YpRCG2gwBUnMFDVMhySHCy2_kBzrZa5afk7A_hpWtft8L_sT1JhGWfkb3JEwvKbfLkJ7zKoY98-6hQ9Ee7HM90j66H2km-XZNa6RcjUavi49AJQ', 'BPAmtb7eHG6j8QecV9tCgYhF3lxUlAjRuKd45NQWBztijLlgA01IU4xD0vcDgRV5Fn64iR4qQLSxBP-3b06SDVA', 'l5Zp3uc3B93sSoz1QQ2DrA', NULL, '2025-06-02 22:02:59', '2025-06-02 22:02:59'),
(764, 766, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fpd_XWAaCE4:APA91bEecTnEDayF1khewVEwXzLGKPkjr9df8XBRjP4upZoJ86mWH_tSoUO3ab8YUQU8xFfCHTGRSvrRVpwY_cdnFor9LXy2rs8PMp1savP5Nv84A7gSn89KWhfScdZE-gFeNchH0ITF', 'BAn8hskHwvZm57MqqqFG06wNJWeFIg2DWxEmLPUtAgi8AF7nsC5eKJagKg9iTBnULozlzUFkxsMrjCbKg7a5nEU', 'RZsFrQVE4UqhlEd2LhcSwQ', NULL, '2025-06-02 23:13:45', '2025-06-02 23:13:45'),
(765, 767, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fmynP8MN4eM:APA91bEJZWdzLQEF-vYC33TlgaIytGdMz_j9oZU1C1Vn7scpZCIo1dCnwz5vGZQF_B8MXjD5J6NY1lVbbOBi5KKJr51NxiHIH-8-94zNlBB915gT1hqyZrWwX1KmJPlJV4kV7b3jk0-n', 'BEOZun08q_p-p3kOyiRjfsC5ik49RU8-9Sqj4eU8qp2mM-gDqYR_U21fIsDdaPP9zfuFOkDf84Rb25eZ40g8dwA', '74l4zjigosXnjaJnw1h4jQ', NULL, '2025-06-03 05:45:50', '2025-06-03 05:45:50'),
(766, 768, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/etvoh_q46AA:APA91bHVrJTwaP1YF3iIjDeXnf39BEsUP2ZEfdrJ_NV6gT9I2z0_67FDeXZr2vXJVqkK-gAtaCmmb0eqoaXC051BzD_t2M_2OXUaYny_j4ZqrDb0fx34gwES_HMctUq8JGOVh_JuSS0L', 'BJ7xDer6wAuxFEqrQam-vJMxIJqYvfvujKK_A8yTqOO_G2vqDAhWp-KdO8UbdxEEExizpR_PTnmKi7d9htj9JOw', '15Ui4JdEJP2soMICfur9eg', NULL, '2025-06-03 05:45:56', '2025-06-03 05:45:56'),
(767, 769, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cKla3by7BI8:APA91bG_L8iGJ0ZY_1dtG4klL3pH37Mzv3BXji09cVba9huSq3HV79Y36Jl2eMT5dwsyprBHMgoAnVroXaj6-GDH9IUtPJQ2UxaSphrlKlWqeJAlTtGJ4US2Ckfrh_s-XYrrAarEig0A', 'BJwvkEJarT5jej1s97oA-BmCzgR_iTTp36qA2N0rdqfPpfCjoJ0Mp98F2QbtUvrWNfqZZrfR4DU7WhjxyT84Mcc', 'ZukefsGNp5cnfKY_QIBG6Q', NULL, '2025-06-03 19:57:26', '2025-06-03 19:57:26'),
(768, 770, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d5reHagHKMk:APA91bHrq88y2XaV6UFhbdKPr6xZbq1Te_IUWtU5O4N5mhlVLHD6N2J6fAW7Or_X20YwdeEHOKlqAqlCg7rxKvLBO1bUVWN933EnDPQdhEgebtwQhTQAuqCuUP1Dq8rkoQOR-QwcOtz-', 'BDowK3_qn7C1Afao3usliMgww5TEqSl3S9tokyDYtNZ_XEoKU-jeTyNGKclorcBlT7YnPT0Vo9tzoAbaBoZiNkY', '-PdHvn9IlAZS1TM94NTEsA', NULL, '2025-06-03 19:58:16', '2025-06-03 19:58:16'),
(769, 771, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/erw-5k5984w:APA91bGTfFT_7vBroM5PRvEkLHa7pWhFCAU-TY2PEfrYwzqnb0LpQVcJSxvZzFdVtfZnbrZSh3rADtmmQRd2xpOgcxi38OAXlwDYWxSnrekevkmMJDkiCCq1RINmw9_OYwtroQtpZxXp', 'BMywVDY329C8p356SpNqpCe1kHlezgqtFjdZRFaM3CHtSTRHvqfwpasET1i-PHdFuFTS_wHHb5WQy6-u0yd826k', '-qL8TdEezUlB2lvdh0Cl9Q', NULL, '2025-06-04 05:04:12', '2025-06-04 05:04:12'),
(770, 772, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c9iVtii1Vrk:APA91bHQEhlkOg_Nf2hCc1IJVDOK6WFkT9HVIyKRonIsyHASkKsCbrm949EHYHnI1ipuCE9ZkdGeGaw_xhQX6SypDtGfLSWvOmNsUqg3h0xPUBRHabQn_AwEasUP8xo7D0XYXuox8Fnf', 'BH2NVk-N7m6i_9-80ROhZytOcHF6RQussZpJj4j3RQv4vVSmndhRkJZzc6mAf9AK3aE1KL7b_PMyLa3I0Eg2mIE', 'gLkrEy8nOmNdWAMWo3U-iQ', NULL, '2025-06-04 20:24:59', '2025-06-04 20:24:59'),
(771, 773, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fdzFvQYE5CY:APA91bH6Nxj-wmjlkwVq-Uo1rtxzFDpyR7PUpjXhsUb9bVtkBG4J8s2Fx1w00Im_pgrruS2oD-9hS7UMK7ZaVDXZOSUPTXvVNtKg98EjEFipv8mQ2xjQvNmr0wlXpEfaQEAPgxJz9qqT', 'BNgeuPbtvaRChgHD-147JQPVG7zrtJWPEwBIMM1Ssft4SW4j0M6z1U02TrQQ-x3krENIbjNQ7DOAPgdWmEvQqaI', 'yJijnYHw3K_PNH83JCNivw', NULL, '2025-06-05 17:24:39', '2025-06-05 17:24:39'),
(772, 774, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fRslUjtKd0M:APA91bE4ep6xrMTpL01EJ7INz0EUkONV8gy4RmMt4QmloBRe01tsk6O-VH4UR919T2EtQ5lcX5iWkBbAWtGugFkl4gt_FvK-Hvt6ZeNROwNRvf6OmAMfEH8XD2g2EmqwwsJF-KJzED03', 'BMi43C9ey8dFV6spf3mLwNwxRG2nNkTqzH7_fh7aChp3jXmDOGelDqufJR2YF6hhL0URTWJlc7ePTJqXYn9sfQU', 'fU0KwI_ZzTamhwKFOT6q8w', NULL, '2025-06-06 01:30:35', '2025-06-06 01:30:35'),
(773, 775, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/e4kgJ8seJ6k:APA91bF__96te8FS4KsTRc8N5742jZZDnDVXeA60URTicpaa7lj8DXvFezTla7Gr86Q8kyLVgnzDG74CFUPuAM6W-7y2x7NEO3RBcuZsNGxsUz7GMX2mePB9_EttW6z83pnYu8bYF78-', 'BIosD1nRemKSGy_rqfjB8-96wT7nJ12F051vCAn4I7HGSwjP4zVMAbl751c_lyJ0S3skBSae2KdB5DfUYPFR1mw', 'f-TlKTXxtxB1wjzZG_Pjyw', NULL, '2025-06-06 04:15:43', '2025-06-06 04:15:43'),
(774, 776, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eiteQjmePiA:APA91bGhlKkxmF26H7zFKHbRRBh0K8zuhkMiAl1r9mAx6KnGgfTxmvAECeNT02dqW3hpLvdfSnHhPbQjSsT4C7RbXtp_dKvu8aLpLE3jT8CNnc6dGCQzi0JBRGzoA8XdwHEe2LKCZvKZ', 'BGaNJ9sWnzKSYtQGUrRl9If3IqBzxNwzqJzN8I2RsNutiQnHB2cfPwAb6k-2gD6w6f2RBXtQ7g1m31ue0UofHU8', 'al3K1NGW5jZKPOL7bDpj8g', NULL, '2025-06-07 15:01:02', '2025-06-07 15:01:02'),
(775, 777, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dsmWrEBuTqE:APA91bHC8AwzdzT-6b1yHn8bl4aKrDhfxuZyYKuL5jzb5BxzSkXeIwpzrReoSTnrMydLIlw2GpYGMePJTVgcv-QFp6LH9N3sgmLrC1bzJzF8MpRU35_LwqOXkZxaQ_pgl3bKwCtAq3p8', 'BOyFeMKlHUl1jrdpQ1c3c7qsBy3dMObK3zlgj8ehgxM8kYJtlPtwKjbuNdcjdkfNMD3PjCg6GtzZrl6BQo1Ot2U', 'LGPi496455SVmrjD2gpkRA', NULL, '2025-06-07 20:42:12', '2025-06-07 20:42:12'),
(776, 778, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ds86tGM1tdI:APA91bEv_oTiB84EOxtKrXHjbvp1buMoqoTNnGJ2rOgj3LNNa0hpXbQzZOyAT6CETwuGQF1Bd2ySGGQoVgaZtxyhVDpLVm5m9-96sPCiHdY5zDGqKpavMLw0mDFyPQwFxkU6-qxq_M7Q', 'BISGrgjPue0JmoWFF-bceFaw4EDN3OMWxElvVXLCtn9MDIPFtUqW_72Gpk_vGMEIHAUOqqrjJ6a0yZEg0kSainM', 'UR1H7FpgSm4b1WfYBMoOdA', NULL, '2025-06-07 22:20:37', '2025-06-07 22:20:37'),
(777, 779, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cEj65MiyhEU:APA91bHcsIzcP_DG4FMpTHjWrvmjb9GeiwKzPNd6Xlmko-hpD9Nv67EuT5l5GqoSjol4o_xKTSBtNaQLLs3A-Fim2LTKbI_ztQx7Puq1RJdRSgHbgm58Y2M3n-x4fe8AGv6l0UL8I3_c', 'BEYlzfxNdt1P22UlZzRfXGRZjb6XYGuqGBFhI9S3ALA8tFaDSabJBmH2tauWZfq6qVEB1ge3Igsr79fI1tb8IcE', 's8jc_YlQS-zdooFx_phM0Q', NULL, '2025-06-08 18:48:22', '2025-06-08 18:48:22'),
(778, 780, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fQrhoTdfz8o:APA91bHRS0asSq2yrhRZSqjd8ivQrl_e4hJ-A1Io435wzUua8OLeL4hOnyZCh3grA0kFDoN4o9sUeetKZSfZDSN2tIB2jyifE1JXSBAER_CLvlfwr6JWGGkuE-m8orVbcxbaMoFLs1Zn', 'BNOd_801HDwFa4k8-w6fH6UiSc5z99lk7SVd8mx7ki2_boZvs1Wlt6vkgzeLc20cTN_Y2Two9bhMstJWCUYapq8', '5VUlfyvzlw1zA5e87xk__g', NULL, '2025-06-08 22:06:02', '2025-06-08 22:06:02'),
(779, 781, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eg9pE4xmwJk:APA91bF_7yBzOjgxvJm6vU7Tk7q95r72H7bqXrU6Kzl94yS-AHwBqrmRjXSZ3GTmKCIWe8NiB5DzwclDn2vDLd8Ym_YGYo-yPai-E5UnHmFAMmO1BraB9M_Wgn2HUifOspMYFbyK_7Tn', 'BALIr9ZdsBi0sUsFrzNf4huK9yGfQ61lqGJ_0u7R_j3aMa5ZDOSWx4PaNFucka2LKof3zxjJGR9oB7nc04tDpdA', 'KzPN-QRt_2WiBx1iRPtHqA', NULL, '2025-06-10 22:01:16', '2025-06-10 22:01:16'),
(780, 782, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fukl0C3WBeE:APA91bH76N3UkZh_BtwxYFH7H4Iry9dqkmSBX4TzMaPGTr3NL577Jc7aszBkcAj2ypcWmJ5WNCoxFbrcDRq0MLZVc4d0UsWvMWRJAdvfX_siRNuzILKAMdsVLKDt5gzyNdeMhzNo6c4Q', 'BGfKyOp33rwGDQIvPCDaDUK6Qb7cqRpWylVn-kwLLvt6IrzyKVutfydFPD6X-KotxCLlZleH90hsEnERuOMzPn8', 'UxenKUCTDzzvRq9PhteDpA', NULL, '2025-06-10 22:48:23', '2025-06-10 22:48:23'),
(781, 783, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dEaUat7heyY:APA91bH62helXwIk6D5mxG4DhyeaNTezTioVQ6DHnEx26CMm2UtyHCk7MfMSr59wX-Q86CEGCQMtFfcK-GwU2bvOhO7Q40pqnh7tmzLytgj9WSfY-5LfbBVY4CRONi8t0MmNfw8J7sGv', 'BKkO5fe_L4-PjsFXvLbTyIZfrnjrflV-ydZR4VfRPaFhATaatKG3TmILCjdNmIA3qOB4qE8c0ZDUiR1RJqbc-5Y', 'xG0GP7iAxQptXPSDzB0bQg', NULL, '2025-06-11 02:34:24', '2025-06-11 02:34:24'),
(782, 784, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d0cJ_VbochA:APA91bEVKMjDw3_RXj0jP5uPTPHi1ntyLOvCnxAhPhbL_rURcTM4HQu4xiNkrGHU5pnGj18wDLTvM3RlLuk067lyflzbOtYHLeYAqxo9Pfi_eSW8gfsfRCicKDrMpQ304HGffmi-Bi4Q', 'BLFR5TvGvGTxlpCL5fCEoO_T_KZPFf4uH5dDa_FwI5hQDfzet0FiM8pRV0svgG58vjU46M-8S924t7lSQo729rE', 'vVq1sU3AJYC8jJRLGOh5ww', NULL, '2025-06-11 18:54:39', '2025-06-11 18:54:39'),
(783, 785, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dnDwmC2Gk9M:APA91bG8mnisNWRyQM4wA_EH1lyoIdBzA1moilBP3x0F1B47IpmYV2uZCJoPmBu79Im0W3mR4t_clDGYoMrs5x-meOCuRYQnfkkhm6CoRYO-Oz79ByduzJh00KQJN4YOncyWs4kQSbW-', 'BE2aLFe1c-2Uh86ReUWJZTSHE93NpxOk-fol4pykqY2R8LaToQEFrH1wqVaYHK4tQaqnpbww8AaiDsckwuDYuFw', 'pIdyhiECm-8SKcRTQV7xnQ', NULL, '2025-06-12 17:46:56', '2025-06-12 17:46:56'),
(784, 786, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/du-b4odUTa8:APA91bE0_um3_50JBECTi5yuFPPW08ctZv_ti-A0MmVRXPHGbhX5lbhuXsG5dUn6Dha2qXMLf47-b6-ZMTvnwXt5QMs1sSQKuXZzhapPYEE2R0n2tyaL4V6UGT6ryD3fgRYZVBqOK4jz', 'BALjNK-uINEwqfj2DIDae7pZVlxrX-tEePJynJKMiBmOzo5DK-oSglfHopUs8GYUGjHrsMonbzVFZvahVYxpA-8', 'kX1V3p5ZmJVKQ0Z2Bk1bmA', NULL, '2025-06-12 20:43:35', '2025-06-12 20:43:35'),
(785, 787, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fkL03CXHopw:APA91bH68gov7rQQECO9Pm1oyMrWFRT60MTrSShXPsJAbibRanOSmSGQuYLf2xKV53afGIa5EZH4V-0iScz7zirXPNw424_BuWgTYHgUF60jdqRlOjnoPwXw9r3hWrTrqgqkBVR95vBR', 'BPPQiqkdZTOmZhfrcOsx8q3hUqryn0qkdMudpgzM3djjtqgxTBD_u1_jcc6qrwehB-CQdvadTyWm7DVMUb3EsJM', 'jS1JftirO-TJWVi4kbiTMg', NULL, '2025-06-13 13:24:38', '2025-06-13 13:24:38'),
(786, 788, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dz5vZUC3Zlk:APA91bHMHEl7xtw6G9VglCvmgeMFZbHJEKrrvxL5Uv_BeH_PQm6wIe3WWMNKyKErIxoJ1kffohSGRRWIf86YRhaq5_PgZzoZ-nSAka5KFilsvHXjIOBiubnQ8YDgtwiUv1SdVZDWGPFa', 'BJvrp9bqnW2CDzLSHCt3QhU0UG0jO3gUtooQASyC4qA0RKiWXzLmY4HV9e6yByA_v5d4hah3DmWNEGP-j8T2rCs', 'vsFK04_0sJ3WStPbL7eYsg', NULL, '2025-06-13 15:29:09', '2025-06-13 15:29:09'),
(787, 789, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dhUCK_WAyIo:APA91bF9rr0Zh4Tl6DKPgngtMpcAi7aQHo6e9DB71AD8A5DtLjYqm96l7uNbaBIL9DCYaHFl_AN5DznivuiKtbGsIKFdZhn4CqGHVrlxRudYZGiQHKF0f2LTTmRSL5Dj40_6pxvH2Cef', 'BJC0s9uxa5xLW6a4U0oFQWxpugbQsFLM4gd5YsqYHKnDgWJYLNZn9wPl5xgku47qc15YD5NnSuCNRiJib8m-CkI', 'HiCB_oojQexCiljyuoJ5xA', NULL, '2025-06-13 19:54:46', '2025-06-13 19:54:46'),
(788, 790, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dkb0J2J28xU:APA91bGYXIOUBAEmebnsStw8RhdIEBC5LeHztVtu40MSTTCtwEwNsqF0cQzQhs8uubZpwqpERXdET_3TflK6HS-CFcDvR1RB4i6CZQ2OjA7z7yJXjyxRD5Uwa5ATJaJn1gfJuq3XGmmf', 'BJbmL_g_XWwneOox9cJaOlvcw0sp2Bws02H4tJqckFEaGH0LHbl4tSQlbM5mMc0FjxhRfVHKP93P3d1BrY4XT3A', 'oy1-Ia52FCM7fnwMEi8H4Q', NULL, '2025-06-13 21:09:07', '2025-06-13 21:09:07'),
(789, 791, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fhEn8OO3ydM:APA91bEfSIJemD_JsayaOvBPyY5nlnMtFX8cC0dT44xGTNKetUQvO8VeJGmKnmPInJ4HtJXvfZrhtWRO7oBqc4HF8ISYwPQaYzkQ_FpzrLlLTk17sbK2c5vWDwxiSA3RIpfu63JLT5J7', 'BGFPZMGYcmgoq-khbCqx2pmhWlyWAzC_MLuOyajYsdMLoSOQTOnbL1l62Tif8Lpr2RehO3YWj5SwdxkOqgvzS2Y', 'pjy7HI2eOg2B21rY1lJu0g', NULL, '2025-06-14 07:27:14', '2025-06-14 07:27:14'),
(790, 792, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/e3IE8e-PM08:APA91bHvI_0GhGA7qVxEd0uMpm020nzI05B3KKpwchqETAgA0KOlov47xSS15iyyjQ-h46W8JIJV85x3YdBRkK2TONoWHVbHoErNHgs11ykUmSkDkAE95WqfahInZf-p-k7WZjkFqI0s', 'BLAMeB0swF9MnAY30-v5bagI2YGBX9j25bTEvw3weRPaQZkzpVjgs2Y9JUesypWTHLjwvnUb4gfZTDDeFwGMXIA', 'h2eO85urmwNpGM89mqujug', NULL, '2025-06-14 19:23:33', '2025-06-14 19:23:33'),
(791, 793, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cr27O-LhSUw:APA91bHHiCLPa_oFziPScsCQ8SO50grFsOWeMkMzfOhDA9tfyiwK_Q9AqwVnXdCIzLEph5byc5u3uCUKpbRdNOuGw3vdOlIo1keiECc1VsuUdwYOIwaIM4kkgCFlMmD8bDnhfvkUWmIL', 'BCwbrelml7yupfpRJtSFYscXQsfjHBwqJgmLcW_aZ5Zr3MJVHEtjDBW_hwvUOVkhfivUukHkrwfSh7c2vkBc2DQ', '1HUjc2jI5VgnHGPVIiP9kw', NULL, '2025-06-14 19:45:34', '2025-06-14 19:45:34'),
(792, 794, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eHmXs7HnUOM:APA91bHId75mof3enhnam58rKf0ln6GAwuWhuTvsvVcRWvCcCnI2QqteZtu2aO6PJfZx18rcyN6xlVz1SeLMcSXw7t6_mCUJ_AOJ4JVTvuy1DjzP6AUzCvXVqbqYQ6v-npaF-zpzGej7', 'BJ1LEoceSQmXvTBDVAwxs5qO9beTFjwBybwGnpJkuRqoKCLYlb4BhTmL1E2limaxGXoECbR3f7I5wBE5bXLb4Ds', 'q3alt6YCrbMiVoasz7Y2uA', NULL, '2025-06-15 04:28:22', '2025-06-15 04:28:22'),
(793, 795, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dz7LaWzQVAM:APA91bF0QguFxkldr7Ge6ny3JrKnXaaxPxu2fu1CoofMBYgy4i_kh_eMfpa5bqA0Lg-Zjc48hyOTrjRa4m3-IfuNOqBvFgz1U_adMHCYxTjOWAIlDGWchG3FByr8SkfRnjB5i0YHX864', 'BMshk-JnAazV5fD4fb_B207PxZX4yngTD2JfiY1UjV7Q1pKfJlBMsKbWarZDYh7J1j3vpNS_cbFPOcVEYyJYedg', 'gRW1eVTQiOFLmkpP_Y-LTw', NULL, '2025-06-15 04:50:04', '2025-06-15 04:50:04'),
(794, 796, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dK4IP7H7Gkg:APA91bE5e91sMRlqWTpJJFzXBnwItMy561aYYFhNSwvfkD0sZVZ8UusUPU4EkQgsdYIjD0EGx6h8JXmZdP7pyOtT15RDjTl6hImofsCWLiYTnhux09Ezu7YsYc9asUqfitPVACAzCAPN', 'BAMFZ7oOuzbxfka_xbrqecXBvR7rd8NFOu4TKcUoYQKQy6v1t69Odgp1kQ_RQpDRhnddRHQ_A7rviKByC7yIy20', '_t8HNVGibXPczm-lnO3Alg', NULL, '2025-06-15 12:57:10', '2025-06-15 12:57:10'),
(795, 797, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fQb1hYHIe1A:APA91bGpgJiULQQ4kacGgV1hyVF5zA-TOWTiPzWXl2hRWgGd4SCYhIQJRElRCSSNa4m011et8qeibw0ss59qqvl7TcIAfX7UQHafy6pq0KtW8DqLKcsbRr2QCVWOXagKtxv0-VMDHCme', 'BFMg3JKyy9TxMWaO4TkT2URbCMAunMon0kRLrq6MVg5sIhQhA2bz9DfhRyi8Xl6UlxmaGnPZDQLDA4mftCptzJ0', 'z4ChouGnYUupKLRBIh8XWg', NULL, '2025-06-15 15:55:50', '2025-06-15 15:55:50'),
(796, 798, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/epk-ImToOC8:APA91bHJ4tfb_w6SvA1TU5txuG0U8mHyMIOP_Qzk113cwHu6TgosqsS0Lf4iE88VsBWffKQHX8x6GxVUm-AHmSm9graK3Lvr1KusPctpxJ7K6ds1S-dS7QmSzJr1DDa6PxShov3Ij2l1', 'BIjvCk1LReVlGsvryyLvf0LA_MMxTTGuvaa-mVR_5tzw1DDKGdK1-Eo3xkw-tgBAls8tyXv6xEkMHnO5Uw8RaT0', '1bLDAmYSvpbHOoZ7UUp1jg', NULL, '2025-06-16 02:30:03', '2025-06-16 02:30:03'),
(797, 799, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fNP8p0832iY:APA91bHUrnW407Bb2KVRYUrjiA1Co8iM_VAO_8DY_non6nvdEwV7qtekC0Gnf7MN9orTAhL5pvZ2B8x04xvfDm5-FJlJ4rfTJZW3cJmvhtuI7Bc7YFCzSh3cw_uLevXDcEXWOOuzPqWN', 'BO85T1d4FMNTEAFYVt63DZXmhPBFYJ0E8OIgPvnXienLQNaWe6X3Z7idkVOk3RkbZg65u2qL2F5-PDpa1pqgUeA', 'T7s-h1-9z0SSVlsyFSCRMw', NULL, '2025-06-16 05:16:00', '2025-06-16 05:16:00'),
(798, 800, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cZ4cgHDoGpM:APA91bHWB6167AJjkxhi7qf98oLFXJoUJACe3nWaUMs3ecbjTyBaunxFx1c_SjwtmkiV0jhVKgVsk2ZwbeNb1-QijmWxDjJsqTjw6K5QYeppWqt6qHSTGPpRozpMe49GiAIJ93on2wPU', 'BITLhyFdWlY0U-i0y-uNAVV863uO-2F3QrvV7md0XZEQ6-oM42KC57WAa7J5yJTKfFuYmzPEs0PtR2O9snReP9I', '6MNMQe4NsXsDWeTAP0zHoA', NULL, '2025-06-16 22:23:33', '2025-06-16 22:23:33'),
(799, 801, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dkBEnJqeWHw:APA91bFxwbmkegpVO-fFVLPhZGwvpuYcXx4bP0_8TFBgkz55NZSGsVfQyQKQ3BvqxEM-oHameYx1OhNtv4bE6sZVVGEegsru6Y0SotGQkr7YXwyJJClYWpu6UPsoO-nc7AVNSGSVQqKW', 'BMDH7KkbtY0TbqKsuxtLsS3KgdyXs_3plUMPpIMgEDu2u1WbglfGJc-215CISokOkGLmUB0J1ME3T96AMxvENLs', 'WLWOFpsARjmAr1dssfouSg', NULL, '2025-06-17 00:41:29', '2025-06-17 00:41:29'),
(800, 802, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fwv8YbECrGM:APA91bG69Szi7c8W9cjw1HyvsQCos6w3KNL0Dijcvauscp85KksP2LJWNeaN0Z7YB7QBhNCERjnytIYbk_YSZf28s23fiBOPLPehtFuvKDmHApWQjwK4h-v-IJjC0jTGfbMsZnYIyWNW', 'BCq1awAJxXmlFyMtcQWEKFqEbk_c1KXPxwCHTviOVFp5rIFSk1DQph9CbAFLDIp3Q370U7h72FxEi-joCGBIufE', 'FMi2Zo5fe_Pha4K0aWtByw', NULL, '2025-06-17 16:32:05', '2025-06-17 16:32:05'),
(801, 803, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/f9n7-UT2SW0:APA91bFDgZWunOmoINXPjWIH9RLAMKBo-EkS4A6Z8sipMZuDNu6tWSzj8E4EvUjxDhcWWea3NmjqZ__3lfaBBJ46w9Ru-LCrW99BFZUqQCqiYkl1dk766kkenzEpjPM0N7xLz0grgn1L', 'BN-aYt2Ysz1jUhZKFULY7DSCU9qSZjWu5LSR9fSdo4_m1EmHFLNP_icLWhvoG0pnsFIImM9VpHpgRW_GsurzlSY', 'JB0oMq4EbbPR6nGPh3WOPQ', NULL, '2025-06-17 20:18:59', '2025-06-17 20:18:59'),
(802, 804, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/euJoBQeH1LA:APA91bFXHHHa8hRWOdIo1D0N9KgOoW9CtOUJjm-nXv2r7K9LmF3bGeePuUauIgVt4MRhp51qPwiZjm1B-2kxjommaMlB3VGUZLnOxowYIB9bzdFl1mlMFeHCewRGacB1pkgvN0OGMoe1', 'BFag6GsvqEFK2qEQOHUMpVT0PfXuHJMwxN6zYIUw0HcE2zu6btvAnmNjhLh8lJHyz942rmxbUErgN096TAQlBAM', 'hxYCA0-siATqj1tG0977yQ', NULL, '2025-06-17 21:39:15', '2025-06-17 21:39:15'),
(803, 805, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cvHLQMLvMVo:APA91bG1InVIBeLEFW_6XK3G92Fq84XJ91t7gEPHSMvfFv5UqvABLzvnX9_4W9ah2WYuxXHg-y96IJvur7FSco6A3KXwchybJb_yp-X53NogWIz1VjNFkceUMhayaLh9ItTTZNgwwOvf', 'BOTonOSJ5lwN4wLNNEHFo-H9KT9HvGwzyjen8QKhL--Wy6t0pUfLW_sZL_ft6UiCtYHXXAdsQLfpIbOzrPM5GL0', '6e1ZbwgTKC8i6K5UrlVP-g', NULL, '2025-06-19 04:46:11', '2025-06-19 04:46:11'),
(804, 806, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eNgySlaV6-c:APA91bGYayTBPClH1RihCxKJcAcv0n4gRdchFPzAO1gF_ZWEYw3eGnnhXtmfogSFe_w4cp8_sPkeT2DpoHJF3tplA6_jL73bjX7wJBL802nYLDtR8B1hS71uTJXgzJGnXREX2np68KS-', 'BM8YfLErvmDmJhEas9Me5uQY-utKRNh5V1yHuZ2xGzIORED3CgPkjcFA4wNyuSCvp_zO-Ul0nxtPzx9zRHLrGLs', '8DvTAbmpmgsBqGFwbsf43g', NULL, '2025-06-19 15:38:31', '2025-06-19 15:38:31'),
(805, 807, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/e_bFbRaZUKk:APA91bGZisJuVE72Cj3dzdMKzTEM6cGTHKpBAA97AfPnDt8wlViwLcSgY4q5cjE05tkKVbp3VMS12F9irq0-veg2N5BH83Lvq9y7f-WNLgcQyuu5KCRnck-mFGCDqyTLunTkI7m9FFoW', 'BB6MaLm3RaHGfGPlVOcPkVeuMloLCwInuASWX3pLzWmF3l5cs350oJTfIo664V4I9gonS28upR7gZltPAPLCzXU', 'unoB8yRgXIPvCuT6ULhVLQ', NULL, '2025-06-19 15:43:12', '2025-06-19 15:43:12'),
(806, 808, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/chD2oybvzkc:APA91bFndLwTqlrLX8WjvmRr6jIUz6cYbkXjyylQO-ngarBMwahO0EsStbqKHivPsEH3_tMPPBxunP39z4FgvMMHqeZLdhD_CMopyhYIvJlZ3yLNnBMPzEkOlvnUK_skEGXOZeBtuZ-Z', 'BO2785XCn6qZnC2UmLCTr3bTblO8XmoU8EA8CFw9Wzu4XJf_UywNYiy7FE9YphOTtKTfA8gCswtlIGCY5B1rE4k', 'kEy0Wj_3BjjOB8xrpOU_fA', NULL, '2025-06-19 21:44:00', '2025-06-19 21:44:00'),
(807, 809, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dJCILgHXd10:APA91bEt5fsgBuzKUt5P3-SpL5JUpQOtQYNZ-YecXRchuQBuZllOIJdmWY3rzvn4icWf1oNjYzA8eKWwRp7VmTaQTDqchXQCeEOaZblCbOCbF__F4U8wNTXU6xQbpkXfh2OIIYv1hLzT', 'BKM0P6ZjaKfj3PH7UATQpiq4_miK9EPpQhKNZZ16KFoRnUULYC8EQBV1R_y_rVAhoTcQhV8XRoMf84vGAO_onxY', 'c0Lgmus9ge57J1DVcUSn3A', NULL, '2025-06-20 17:32:39', '2025-06-20 17:32:39'),
(808, 810, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eTkX9r-pxgA:APA91bHsoOnGExHlVurnA97iLjaw2YikOrJ8iTZDc0M6Ck-xWQ4HN2aMQpfYZB1L3iJEoeny2XJo64ecS55IgaDLIgW9UFusM5KO0gpxfNNTKrmNjAhxEIiuoj25OPactxSKXmmAgGbQ', 'BMMEvLlicWClvUxKk0VNlwHtFB87mkxvzMYm92XebN2Guk9ATQPBhTiKumrkGZWjoQ5d7971PHyqULswpUW4TBQ', '-rg17eDdmSHkLw_XEAIM4A', NULL, '2025-06-20 19:31:24', '2025-06-20 19:31:24'),
(809, 811, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cJO-0eknTK0:APA91bFVit-o5aXCo-2gqQbvB8HubasW2RrnGgYOA8vHENaxVtRJyx8nOAVo7M_WF_DxcaHWHjnXO990WCOOwIx0N23nx3eVoAfkLsLPmriEcQE0ba70g-aBuNG7pt9xlKV1KKI4OtXz', 'BN1kQnByiAbHiWtbtvbYp9Vu6enRZbbk9K6r99CKC-iu4M0Q2-nfeCxahFu9yblpI2APhwXxxwSmCTcn2i7rwD4', '0VXrGIXEbHXVCiMBUM2ihw', NULL, '2025-06-20 20:42:35', '2025-06-20 20:42:35'),
(810, 812, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c-syXG972aI:APA91bFoLiIzN4nJIozg1hpDWOjNxr7dNCZgyKgwDuI5K9175oMpxqvLHK62kTZy5IincQ4aG2_XZH4kjYgjMuSCTc5sUjkwE-rbfowh3EoeleqRtbdA80cJHGM97Q4QFEDLc8r8koQT', 'BAK6hfsN6l0irnndKdVkrfStFyC4yuxTq_HGLZXR9psx3v64QlRoLkLAqWMyG7sdT1SR4V-sMtfM50uJbOX7csQ', 'oeVPFpePYiODwSXefSGo7A', NULL, '2025-06-21 08:59:37', '2025-06-21 08:59:37'),
(811, 813, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fEePJ3CmEDc:APA91bEV1sfDx3yfaWuRSJZiJ6uEo8_ENy4dkCf9yVK9VhzgcdwRFYMVLhkEyazo3UyvBPIIuRXatD80FRooaO0zG7e5-A4pD4NYw9KSV_hBFqBUyeqYiA1VCIozHfrl7fe_F-pqC1lG', 'BECzBc4Y66zo2IXlMJL1yn8EZDuj2ubBF8R8d33z2b4xQqxWGufBnLBDhO6CPfgYztkoB_OlJdWW7zpWgupqIKY', '3-tINwRMuQ6MoS6I36Z7CQ', NULL, '2025-06-21 19:11:38', '2025-06-21 19:11:38'),
(812, 814, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fn4fo0TzXeo:APA91bGiHAfLr60gI2o6ppLR4HvGpaDWifFH1pgoOoyJjmQ0V9ykXN8wm1wcSo4LSYPYH2RJCTPLCJnkxDwsu7HNE1oiJ-m_AXMpI5oV6NK53I3XdFDfW6vbTE8DO60-vc_g0hbY-gTL', 'BKzLzjKVkY104Mq0-XcbjMJZ8hYiX9nU2UFU_SF0ozKkwfwvIrLC-BaZTPyd3fKvhKX1EZhTV3fdBWHswa0tTn0', 'gEZY0_ArTJ8229xaCMGh9A', NULL, '2025-06-22 00:58:50', '2025-06-22 00:58:50'),
(813, 815, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/e84iQOP7UkQ:APA91bHgYv4ywB1EHe3s83CWcv1YNQ_fHlC4MVERTcsoSluuaLw9Qlo4Mk40SDYi9-SXpYfVjNwG6CNTuIuwHGBRpAFDRLdSBlvguJst1i_meiYR1XK5wUJBUzAxR7QLuUu1AUxxPl3m', 'BA3UMSE6WFn8kJDtSPN2iq200y-7W_fBBJ6T3sUNcKAzGAMry8dNdy_qcu7Iut-LWzpCusZD0vzBBHli4dkXw-8', 'vJuRDptT51nqcg4J53vPiQ', NULL, '2025-06-22 18:35:24', '2025-06-22 18:35:24'),
(814, 816, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/czS88iCmMPg:APA91bEKpcEQi1nc3M_HfpwpJyYjGPOkhzxzj4cRmLMJCksVvgc7XSTQFlEy_8Muw_W1KpLmZg6KicuKRe-0cI2YQ3L5qBkK8Vvu9JClgcXpeYyjPC-F_W5cpYm1T76srov11tUcO3V7', 'BHpmjF9qdPzZM65IGgxUEHFgCQrTA3ez9FInn16H_1QEZaKHnVRqhNbYKCikCznAOiB_R8AejqA04-oFdrFUUYw', 'HkI4B7tkSLMli7SLxEajIg', NULL, '2025-06-22 19:41:07', '2025-06-22 19:41:07'),
(815, 817, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dEz19TYnx-I:APA91bHdhYXOShqMnM-DQwVbfQjhKZKP7JGwMyDi4yZjxwOMJaGUD0vB-lNEh-RGCjdc0ycWezNErYPJ-Lk-hT-xgCLjQyaennWA1NT6uRK_znQ4mM2cClI4HPudnYgPEDjmH8LJTWr8', 'BG9ujuU-IpksREg9RxGMy62hrhIa_6L3Ev9Pzqle3h3CcYDbaZbJG_4Buj6zF-IFPW7XpKf77AR7BolYtdaHYvg', '5KQr1-5SMuXl01gqVRfYBw', NULL, '2025-06-23 00:13:40', '2025-06-23 00:13:40'),
(816, 818, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cN3gFm6MbbE:APA91bF8P3xn2Z9sZaBfSHHZ1ZasHPFk22DJ_9MVyXQymsqrKzSsqd6I7_hfRVGsSpB5OTJzZyM25dgB6G5RlPVP3U8ykQcitl44qkjGnNcyN9oeww41LHcQoOYki-guGd2f-j0Gd8u1', 'BPw5RsKteshe_YdRwOwUB0D4Fae-6vjsi6CbPrsFjq0uXqLJQH-8S6oLMGNG0T0M89PGCXzPEkTuXxZU5ILihP4', '-M0iTQYFlJTq-TM6klv8Hw', NULL, '2025-06-23 02:04:35', '2025-06-23 02:04:35'),
(817, 819, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dorLtP-kXYo:APA91bF-GYrxp4gDy3Gwha2EjhTMIgaPch7oP2CUuN66xsBFCb2Asv9WTF6q7Gc_ArybEIxHOoN_SEAkBIROrTKJlsnrvxxKYT-1Ui4hAHek5VmHmPNZL7QMCwJ7zXoFoMxUbCt7SU-I', 'BA5MsoF4a1annPn2-jGZdAEHvKWUZcguG0zrrMW4q0ALJazPfsNUrOXillwY-jxQHzb_eSvt1wO566shJOuC4FY', 'LoCBh-osIQyZl21TvPrnwg', NULL, '2025-06-23 04:29:02', '2025-06-23 04:29:02'),
(818, 820, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dLk69phDlog:APA91bEWSwZLhiOKIH19bgyUmqiXczODY0Fz6cX0IceiSSlejB2sDP_K4xFGATE9R7FTnjYlyBcqiwebhHOIoQhqAVwhN-CEBHJPU0GZwIC6cOQoFZjM7-qhYPuBuGEel1iEDC_uab-d', 'BFN3Ol39hpENdftyfcuYDe5uHuPx3z58olTPhCLCzgLE2_4aUTI-y6v-krsRtoulg4b8B9gRAFUBGgB7ZYpxcf8', 'g-G31C8GO8xJh8vh6aB4xg', NULL, '2025-06-23 18:09:07', '2025-06-23 18:09:07'),
(819, 821, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fPcW9J-frFs:APA91bFBedxtF0m67xXT2lpA_h5QrkY0TSLvzZ99Ye0_8Rd3ouoUYnfhjDrpuUjOmnYRfKv_Nu4YuaYVStJ0hZ0wGGONfNvLcfyjMUa7hy-hFMgEsnOvIqNY13J2y3--Qlj5XPoVT0m3', 'BNRNuElA4HhiocXm_JeVC3o64eIiAwAKCoZmMgn0Q17IeF8JkUobetyezg9vcREkicZMrbPlnfb-CFBC6EzJFEM', 'D9CSR-jp-cP8M1ofD9tP6w', NULL, '2025-06-24 01:25:48', '2025-06-24 01:25:48'),
(820, 822, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dDvb1yabCVI:APA91bFh6bYyZD315CLSsPk6qGr5qYZpqs0C6BGQ4E22QvBdLuAbVdob2ZGVyDQmBjL_gq9flyUtIrvmxr-HHENUzKpAS06oOCZR7djR1Q1lOU5p1uSEbEU-sMgzCMX4A5DZKaQd83_Y', 'BFpLbvUjgSkIPXB5a7BgAXZ_OW0VfnwCnMBl9Rw5cLw6v7mkv-As2rXQ7lIqwvvLtBsCDjjiK2CoyYIQhBerQeA', 'G2E7tN8I_U2GCPD1m2A0Vw', NULL, '2025-06-24 19:01:38', '2025-06-24 19:01:38'),
(821, 823, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cEIobceJ7vM:APA91bG9urCtgf2owvoQRCq8PASp8OM_boeL9gHqFIhg-D-k-1p-7QzSPVNDHLphYqckJmq1VD7AK4_EAe9sHwD8OBb6b4fFVrONTtXJUVpDLNiIvQ9f1UHZilCp5u9gWCGPKOL8P21f', 'BCeZqobPzfZVPkspUa3os4a-Mm85qk8kvDUymOuScUKs6jj1B3gEfZ1EDfHzbCYUsf0ZThPCmRM_pQiyXUvZL7c', '19hEYugpGB6hdrFDZzU8AQ', NULL, '2025-06-25 02:37:34', '2025-06-25 02:37:34'),
(822, 824, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cU9kki14rGk:APA91bGAKIq-Q-iS8lOGZKAGXLFl-gmokaD0D78Ihaan4cBnMLmikZ_65G2zHbDKwbzTLMEYJFoUETL6jrWEJFxzyqtm2oOGCHiZIQXV524p9HZNhmTUEJd9dKMkQdi2AS3jkD260hWN', 'BFob4VQ1Us6r9NOtQ_MFSizq7BP5Acs_azRtOlYEH7w60GqbqRtLskjvYzS537_TIYSF9d1nMJGe8jXZf4n69F0', 'xNwTU18t0NV1Tn1jP5VX2g', NULL, '2025-06-25 02:40:42', '2025-06-25 02:40:42'),
(823, 825, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eGAcdNKQZLY:APA91bFomelhWFsmxEo4RV4MU_v8ci15NSzw5R8KNl6FIuV8qZHp2r_Oo-Ok9VeXiVbdLNulmLhhzU3qVCNFwgddk_gnL6zPYug37ogT4LlIiiRXPsidXOU8_X3bVE5iJBKiWIHoi-tM', 'BKlnQRRP3bbtuJU5bm3lcO9-Cjt6tqSRDomp1Uq6Zypnvz-5-TRq0YEnsYWuZWfooqz-ddYOGSuTqDHnQdjf4K8', 'r7bvmwXSjX45aj6_91bppQ', NULL, '2025-06-25 02:40:59', '2025-06-25 02:40:59'),
(824, 826, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c8iDu2wOrtc:APA91bHc2oxnxOMORbfOvsxosJ604yLi9CyAEAbYiOrooqsv84TJeKYrUw_uVegZYw3nAksTk3Js8k7uzoRs1v22RiUTYHq_5OrtTINfo7fy0uW9iraGJoMUC6CRl_Q8HnYqdwDW9t-K', 'BEZLgyr_ebMCOiWDrtv4p86ufzlt289_waJW9RYjCRN5Lay3z2MpIjYiR4Sx9XiPkJ_a-tPwMXlkCOqldicaR0k', 'vsvR4QJyVn_s_CGrKkiwUQ', NULL, '2025-06-25 02:41:42', '2025-06-25 02:41:42'),
(825, 827, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eNSgBJ1JaNQ:APA91bHnKYU-gwN2DGGV42akrjshWjiRVic35Ba4_EN-E0eXZPMpZGrP2Lur9luj-sHsUuckN8FExelQ6q09K7PIkg10J4r7vqw_U4uU7xsRK0evah05HYVXn20w8jm24lNosa24OA1p', 'BAlJEaVsIZ-BW9yATLqcpgcjK8tMda9sFKwMwI36aPXXEgvVNV-9zcANm3dsftqqQvpx5LSf9SygYrnQEPnS8Gg', 'VSAWH_QnnrBQHDfjZMnAhg', NULL, '2025-06-25 02:42:17', '2025-06-25 02:42:17'),
(826, 828, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dZQQvlcWCVE:APA91bHRsWc_3W4xiUoNPYU_bv8QAgx9_u94S8YQzlHJNkG60moWzCLn1wx4pmNxpkYfuSLnbbKr50fkrOL8hCPRhvblKkmZZbPBhJb5YHy-h20hz_ZdfA9gzjsZxJAPeYETGAdKMPXN', 'BEauN4seLgL1be0LEMTXN1JvoOzPAq4MViuJQzI8c2J1t7tZN7RIkY-8GpWVNLSWbiFi2SxrOUkZPZesd7BRFII', '4V7bsF93uCWtkasQ3PqDgg', NULL, '2025-06-25 02:44:07', '2025-06-25 02:44:07'),
(827, 829, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dfjwsTNdLwM:APA91bG9Bjn4lS5_olB6m6oBVyl-4LW-qUc2GMq4cAiVBQR1FjDtApwJkmQbj_8uyVBkpvPZAmXJZ5m7_zlcr_wjLLXfp4f8wRqqMqMiyVltAPjfNZ9UKs6EyB7Kktv9VCqjuiJUNknB', 'BIZTo9R5UJkf3UqADOOyKlEJeuVZcR3vovu3kcF09lob-VgsBA0pWbQLSnD0heaFgMg80KhAoByAblq1MIokf2Y', 'HPMJvIGoeQ638kwMv4hW4g', NULL, '2025-06-25 02:46:35', '2025-06-25 02:46:35'),
(828, 830, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cN9gi1E5qjI:APA91bFWxKTjk8S9xvgQsdknSteDB_Jkm-GQxmzmUE6ve9u4wRh_yMadlRc8jCH23IenUdTVBc5jtoMZGmA7vegBx-lGKEEOJTAYiH311CWiRAqiKnnquJt7OFEidsP02MRtLJSCyAqp', 'BAbfYTjg6o7NdspfbtkxsqD9T2EOp3lt9Cjg3E_oWUbqM2c4VFWhOnpCbSjNs16uMjmpGb6XcdPLvrQrCXgxO-s', 'hp1Xm5Ca4vAcFdJCF9bwOg', NULL, '2025-06-25 04:44:16', '2025-06-25 04:44:16'),
(829, 831, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eZAz5-WiFpw:APA91bGHHS70locxJOt1EOlm0tZf2a1qLcUoupmD3wK9fIh2mrF7xnA2ORDk3FhiAkMrD91pcOEb3OoaVcVMcefaU6Kebt3T5JRyFI3P8Zh2_C87aYkkTdDJKXtci0YmB2Wf2uz2u5Jm', 'BJyhsH-Ijc7FZBF8W5QCPbIUt7r47qLxzq1ZIpYyBGeKskcj7ahy-3I-Ro7ecVrYcT03DE3UCRK4YXwEq47Q52Q', '18gs3DrmNHGFl0GWfLeBwQ', NULL, '2025-06-25 04:45:30', '2025-06-25 04:45:30'),
(830, 832, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d3dPIlggzAg:APA91bFiqEx03SsObJ1dAki6zve7h_o-j5IXz-s-3Yw6LGA9yKy9wIvzENRBZNcDNEmdu69HlPTAzGqA3bPes-J7EdAoW4h6j9fyKBvXsTsKjk3o3d12olUTCrvSZBV-fRuCGoEsPNXV', 'BNuMQM68lhP-1_pt2oE8mHZT1VUEaTUaJ04l6ejsh5B3G4IM3fJkLHhbggoY4WDzlRIwwDKBnWpghXNTmAQOGMs', 'MA4-YE-Wt8T5DMzhZMQhpw', NULL, '2025-06-25 04:45:43', '2025-06-25 04:45:43'),
(831, 833, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cyAqvUcf5K8:APA91bFpe-1IaAdpi9KQgjvtx1Gl1sSBtZanbKPmysjSfMW5ENLqKFtYhBqETbT1oeGcgjfhqVghYBRZjV5-yQAkCPNfiNk81PlJ2cuQ-DEtQ2CKaT8-AYa3OoAgqi9rOPvwmsiih3-j', 'BGdWjVLOqc0mKy2ZI5BB-9H-CgetALJL9ROjAgRG6vj0p1KEEGUHrzgZHwIxRTeBscrC3ocTAIbQ9vJoob7CbHc', 'gY0hoopH3sSp_f7u4bEb_Q', NULL, '2025-06-25 04:46:50', '2025-06-25 04:46:50'),
(832, 834, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c-IiZEpLtDg:APA91bGWbN3uihQhIkIIPFCTjKhO07GsgpivtUidaKZKhA19bhCJRsmLvStjDJPDLQm_CfhQoSq0ewPYZeGk46b7LpUx9rk4z1W0BsRfM651z3yYBJKsr8CXL_Gzs6EzMm0dWSDU-Rqa', 'BFoeJ8OEGTTbMxIY9wdb7i2LQDKu9d__qiCqDogZhbvIA2Dmbts7sBB1q-U2PM6epUeGZ6RNuLOE6vv0RpOlcHI', 'UXPcFKRQVjtuse60AZmCPA', NULL, '2025-06-25 04:55:52', '2025-06-25 04:55:52'),
(833, 835, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fzAc0AH2vp0:APA91bHOq6tEx6Ik_3zk8a0WhcIEm-NUS00KSb0H2ouTi9QBYZ65Fa99OUHUrxTAY44go4YdTKHDhb1m0CSIVmhUKrFfrPNKdVB4IMRW09EUANXHueX8-GIWxhkebJVqgoDDBcewEozw', 'BHoBC541qmItf5MaMmlWSxfybYrOC6bK0jyoB_6lU5YZE5lMOWvBZBmJVfEOC8nQmgRxESfnh7Gx9ZAltStbHOI', 'MjqfwBFnpdUxuE1NpsnQKg', NULL, '2025-06-25 17:39:12', '2025-06-25 17:39:12'),
(834, 836, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cWcI2Q_VUFc:APA91bFj3tz4gaP-4cloFAjLHpuhvIwD-RRRl6Hzccd6cT8QbTZ2t4tdUulYP6RgUb3jChukTlefPGi5gj6fCQEhZ97slHuhDuS05vMdEL47aOIifaaOxi6fZ0EbsaZFtl4p9jyKJn7n', 'BHDBQQ_GtZoDkKThn78U27ALKmAsjqjwtdrrhR9sEXgh5qR-qxiKs4PeZY6m6mUK0T4Py0Gqqzhchmtg7oTdYh8', 'AOX1Fz7vfezMSdNaJw6HzA', NULL, '2025-06-25 17:42:25', '2025-06-25 17:42:25'),
(835, 837, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dvDZ2OZKD0k:APA91bEUlw9J9ouYNPHMxdHSFPEZVbW2zaIKkgfvQiyJ7nH3w3gWvdzPc2enzLSZof2ip2LUedmpyqwfZxVlqQFAh9hfCtKSZxM0Zqu77P183JeM3dEH9SctNYbS6hSOEPnlZdPpi3Ea', 'BGIdLwWltSV6I7X6J-RST40kbj99H6z_913jK7qyuqRfokCY-Jus-VLWSFHTkmv_tDtn427HJxpbNjj1Mdy9Mzg', 'btyFaV7Rjo0T5IdXbJqPtQ', NULL, '2025-06-25 18:49:22', '2025-06-25 18:49:22'),
(836, 838, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/edCxL4Bl9NQ:APA91bEK5dtP6yMbNmmfGeEiHR2zTZWmUU_LvIyxYCReZIvhpNjnYQu6PFTnbL1Np1nDoew1AoLbBc836yN0jTw27UPbVBywFOE8AGAqBpdmMGZ5wGP4-wZRGHKmib79ng4wZ-SDuJ1F', 'BKN4QJquwQ9zkdlsZHNXKi_-d8_GNRsxvCFCQzoLP5dl0XdLftoFY6URSYib85cKDwRtYzNti3zG4vBXmaXIPr8', '42NlZ1mSjmoUujKWDL44oQ', NULL, '2025-06-25 19:34:39', '2025-06-25 19:34:39'),
(837, 839, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cOVTH9j7T2w:APA91bGTM04V4Cr9QCJ7Fb3pdFf1yJ6V9-PFkHpJpEtGtjfbU23Uyp_DTO7A5pMs4u6Peg-SsEtY2NaxoMUGO9AA24bKTbGPMdTB-ZfCDfxQlVRXflxAGu9sEA8oC1X2KfBltuOg4ykq', 'BMZjDxnaNr467Dl5k5MEOfMaeBabfvzcPFotFZSCagkwBfFw5-oFYF4nrKRhG6SAN61xddUtEgxsLqpJJrK5ksM', 'h2eN3N0Z0He-6AacmrOIRg', NULL, '2025-06-26 14:13:43', '2025-06-26 14:13:43'),
(838, 840, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/csIfAH39dAc:APA91bFT-sOS58ucTXTjGJuFUjZzxlu8lAHe2wFxJ9V8kBvuGIn-_6wi-TBJsVgtH7EcQ-Tt3-cQ7j0P--X9aK2qhyoZbxaw6nfjYkaB5Sw8feQdTf2vnd1LEtDl8UJJakx7qNmMyXa1', 'BAmb3aI_QbW7p2bObq2Jzwdk9Enp03wxVMI2Ba-xB8ThOEcc9dURLtw9m0ZKiS3tx3eD-In0vLzPS39VoIAJeNA', 'awvAjLCSUar7I7LWy14XKQ', NULL, '2025-06-26 17:44:04', '2025-06-26 17:44:04'),
(839, 841, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dHVwCOCEfI4:APA91bHyWkCKItZprBS3H7B-HZnnqOS8f9rciVFbTbZxsypbZRb1DOSr_t1uVDNehGm86hMjZW_jy13XgOeb1zDfoKQbL3HytgMbQiUCueLC_ibTbIRGdDUlIy_QR8l_Ph-HQgeaZaIi', 'BFg-moKmHKcN4m9rzZhsrsMqSm8Rj43_6EHZ_YmptFQNltQdvTSjQsWZ0gU3UbjpJxEr2peRl2syvm5jy22tpLw', 'ZfOjnFNtTNvorTP568L43Q', NULL, '2025-06-26 17:44:29', '2025-06-26 17:44:29'),
(840, 842, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cXBszTrOUFk:APA91bGy5DVBEc8k3WdAoba8qGJAfr5gMrqiLilBY-fJk0Y8x2P1rGB6Dh54eM-XNwDhOJ9_bNTLkE1B6BsSJKjFW1j1f9RrAHFhx_Ak7ZwMVFtJLIiZv_e9QSLDavUvSjPFtMt3Wymi', 'BNgehB0RDLJYzwVzpaVG_vLiPCaEgR6Fu76cveGvSVO_FtWcLou7GdI1SdD_gHLm85VJRZs3AvxKpv0WIOvTKss', '3cB9wfUkzXbzOM2Y21Cygw', NULL, '2025-06-27 18:26:26', '2025-06-27 18:26:26'),
(841, 843, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/f83afFTToI0:APA91bFN0vnXqLTUUATmHVdoUKedRrpa8Y0DRDUJhWKZVqhq5G1el3rGl-u41sb0leKiOZ4wlZKY8az66rs4gJrk2o5dwr2Eat4zSog-cGqiJrBrBxDGECOiqgkp3nbiMviRdmashV-a', 'BIsfVWlBF2DG3uLu8GNYu9BxjtKBkxWL-Vin2J0unG3lMUB578z-vOd5FUNoJzUG7TOs-y8W-yb-fU_Dmc2MirY', 'yop17_nQkFtIpxi21l1N5Q', NULL, '2025-06-27 19:29:12', '2025-06-27 19:29:12'),
(842, 844, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eDHIueeIsio:APA91bGHQzkd0fLi7bbqd61zYSPB1-6I_zpfdCZwgnWYN2Q8ouUXjGxJCK3jrqAmOODMc_HwqZJrPYTfhVMeNOixbV3UyNoa26mv7XqW1cllxndNbeUs-UeP100eTduPL1tYqKdiYo8V', 'BEj-UduWEX72vQkPhoJ8nDyKmmExTs3Cryuw5lrvSth3py15CD_maeRP-N338YCE9qmKaDXiw_XzCEkpi8qEw8o', 'Kuccueg0zHq__zoSRnHb_g', NULL, '2025-06-27 21:18:04', '2025-06-27 21:18:04'),
(843, 845, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dKkecf8ozko:APA91bGd08Q3q_nSguWbhCnU1M7Yn2y66dUoGYSyj8L8bl_bgMSSMncuJE0IdPOXI3_WFxn5SuX2CrwsDAkpPIUZ2ZcWVhuzmAROl-WN_cbPI6_uh9DSsuTyIYM_q3CS7i6DyyPfynWX', 'BJrhlO2FnBDTRI5NOTm4PyvT1BYPHkZLhdEsiVdrZVLbj9PzYDXwnxQfRc3KMIUbwdltH_zc5UAglPNhNpoqB_E', 'hqrx0AhNIelJkKJsEz4d9A', NULL, '2025-06-28 01:58:02', '2025-06-28 01:58:02'),
(844, 846, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dyXCimhEXeY:APA91bHwz5IBfBKX0FE2ajEkOrNh9zWjJM4dPz5esbFIYPnb4DL0X7VMseZqPWMlNB4RVk7Y25RLa4mbsEn7SJ1n4Km_svfnTijKV-QXjHWnuSMzejM13ZZ4RWyqT6eE0xwOVyUBoR2k', 'BNBLslQxnpdLxiPKzUKHc14dOFDTZtb-zCmgLxZ6--hE8wxYIZSTqqAv5FxEevwF4MpostPLBYRdLlFqFRhl5us', 'awc__MzrMWXEuqFT-7J1aQ', NULL, '2025-06-28 02:51:37', '2025-06-28 02:51:37'),
(845, 847, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d6MaGRbBjI8:APA91bGY_650aU1xmCdnhZuhikwLDucq2VjLwHJGGgAF7atijiGkdyfMbucIvDYnfQ5fvekSARwv9lSFwgjjA3LFgH9UNsTh4EoKB83zliNRwOKTWgG5Df5byQRo7_DNXyknvl8bOgOc', 'BJKuneH84BkeBw3INxqzWQapkfJGu3GgPS_UYRxMV77VQpQ6CNTHpXHAUa7RVJv6FeClddWfCQnFgk_yT1LBUxI', 'w83McvtKMj0ml8KPKHP64g', NULL, '2025-06-28 07:40:35', '2025-06-28 07:40:35'),
(846, 848, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c7EUegqcyR0:APA91bEiSTdTmS20l6LQahLH_zBs3piZrX11XM2S7zQNlgD7HNgY9MTlffuw8Omk9hUEpP6C5r-CDbaxr9EcnCgewJ0C3QizacZ6_T1C-5I1mj63C5WF9fw96KwkBeT3Tbpl7arDAut_', 'BBO5NF6BBLEkDETUZuKV5Ds_9mTQ6niy-_xbTqG2z3tzh9TD2Hzv46_ucIk2raq996zEO1hmHtDMNZIlm8rQdZM', 'x3bi0T2LJzC_lMvDFYuT5g', NULL, '2025-06-28 07:41:10', '2025-06-28 07:41:10'),
(847, 849, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fSE0SPciVVc:APA91bEKr56vG0yzLK-p1aANX_KrejsGc2HLv3t6fLQ9NLW-ccJHvS72jJAKgz1NoKpmVvAnOwN_NPWGmoZ0jVbV8sSP0rjrpUDZYGb2VsLR9WcaIPlxW3Zsq6EZglfZAW1du_pZQaMP', 'BFGlT91pcDdRulR4Uyr8B0qy_yBC4932J8U166oSr6FCHSYfd29iEUwfz5cOgQiZG3ErpvRrZYE2OiBuqAXG6Nc', 'uuD2tNiVpZv8-9AD2NPuZA', NULL, '2025-06-28 07:41:56', '2025-06-28 07:41:56'),
(848, 850, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cMskS0TUhic:APA91bGnEhEg69MKudaPjFm4y93wLr9V5vpJrzberzFyvwsXnvhs2oxsdhcvUmv2CGMaMnoOsROZBPkGdlV38ITfXLYIdfl4Cv3nFPvIl7gyzbUDoMm3WmW9G5-1dnO_yua3eMbWG_1d', 'BHXb1V_YViBHLqXEwWLhAz1nC5M_X4YaV72TNSMMcOtl4_1MVZtR3KKeHcpr3Zv4UhOPUF1ZPEpSO2DkWmvBrKw', 'zke2kE3ezmg0OjwdOk52DA', NULL, '2025-06-28 17:35:42', '2025-06-28 17:35:42'),
(849, 851, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/f9dhlYMfXcs:APA91bF8m-rfCpYBKi3KIJ4a-qj7iIl9YHrxdti-hns9J212XNig4xY6yh3xBORodwEjNGkDfWLcJ3mdXtsERHW0TQAW5kah_Z9uStLZ6EnPuM-nHfjUfjmk68G3xVWgWjozrAg-I86P', 'BLP90xhwmcUlXPrY_4mdqUZTIvsoU5dPwtClMLCqAu0gcHPH1BEoliQ2DGrPNNmRD4RWpx3CuElCsXzn445Z5uo', 'yCziFc9JS4VIHJb4NXGR6w', NULL, '2025-06-28 21:17:53', '2025-06-28 21:17:53'),
(850, 852, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/evR_O4s-TgA:APA91bHpXtABjtVBEdPRgBWvLGryLJP9UfjZClB7FFFRhBp8DtnajZr8zlDE4q56O78n5_oZtStKA2_db_tW3-m1PKWJPX3FPflomXrCMScgb-Z28gzBq84wjMIdfpPUw42jrOPA_fQc', 'BDyJQQkljCA13ZiLEahKC39L5YAXnDsuwFbYJxvo6M4i1jZEboeNNbY-aGc1zbWPaQjjNgmcAFKtonkonCImCEg', 'g5DPVJjy6hnSVmmw-Kn2FA', NULL, '2025-06-28 21:22:15', '2025-06-28 21:22:15'),
(851, 853, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fk-9LGzBGpM:APA91bEKasxyIVoo-q7yETR6ESumRfypxp05zbtewia21SdFr8o_Cn_ewVxs-fihLn1rnqgyhmTjRgk7OMSexhEQwT5T0qaEh2wm4XSLoy2EV64SJTWyb4FH_RtDx-H0HT4lEDdJTP7L', 'BGw5O5Lm370Izva1QiEOvArjcfCaNGDRUpOzSlQ20n7ZDTp_jEuuBW26zOMrnkw5B2DgEBJjunHqXXKGTAQ0AdM', 'PTeP0aGGalFWdh4FK8KRUQ', NULL, '2025-06-29 01:09:29', '2025-06-29 01:09:29'),
(852, 854, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fxk_zZ6rJrE:APA91bHvh1f4CSOjmcDKYvqMgArCV6Kv0HJXMnREowOGbFweNwFWwfZeDSKIbMyF4UCs9btbK0knjUosSu9sbPvTayTfp7bFXuNFwUuasa6Yg4wLTsBu6rZBt0NO0L3e4oB9z2p6SV3e', 'BIS_KqvuDuZjJcxQp5v9VfUbZhrRrMsSQpoZKvM7bHq_3xcssBs6IbivmqntuvyR1l-bf3wIDmgfb5g2CYbN_Bo', 'xELwm7Afs-aHzFahVFBUkg', NULL, '2025-06-29 01:10:29', '2025-06-29 01:10:29'),
(853, 855, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dMp76OMfi3g:APA91bFkUsAR6xxMi18iojmqEZuygh2HX2arzovaeorM79ot9L00e-QWD8Y8lM4b432BqSMaEu00bnCgMNMaX1109Sb3FSBv8zNPjk8uQpAF59iIvHD8Wczb5QnYhjUxtySdwzcv84oC', 'BKnwDzOIwbbzhjNVeZ6HS3hvPEUleF0hpFX2wEp5MtA1Xdg_BuLfgtgmqbcS1MLcOb4awnYkU2UJM_Sx6lKHmKY', 'jjP95P0l9EHhOLRtt590Ow', NULL, '2025-06-29 01:13:08', '2025-06-29 01:13:08'),
(854, 856, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fxU0Lv-N_QQ:APA91bFGRkmR3YSE75Oxl5XRqe1X48y40ZD26WWU3ic7CBWwFzNODE1YC6BLFlFSJarqR7AtnYdXWqTml96kOJxBhG5KgcuY1y2goLezOVFy1ezC4oXHv9hNQz9XUJihECdVKyHozS9z', 'BDOiCCv4OsdEw_WjkocNiWssowsh1O9443VgsJv-jv3fr_Wrqk_v_qw2tUhMGHyV02sZq5VJLHb7KRErr38BIwE', 't_26mb4OON2Sw62EHWVi3w', NULL, '2025-06-29 04:37:53', '2025-06-29 04:37:53'),
(855, 857, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dUPDzYvRjno:APA91bFJC8ThRoL1GGpyHVQ1rIv28CGmum5XyQAi97gRo9vVGZPgXtX8D642LtAyioFwf8FnDsY0lR2nPr_ijQSCRv4kgYn17e3otOovutml6fdqKgTx-s0NW3tPtmydhkCLin8H651e', 'BKjfwYF071Tp6LvQSbzVecWJ6ntKsARWn9G6dmcnxk_N5HPnjpgt3jrNY7qp3CYGDN-000sqt-zx8PKsJ1_Unno', 'NqyzU86jcmX5px67_ibRoQ', NULL, '2025-06-29 04:40:18', '2025-06-29 04:40:18'),
(856, 858, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d-j-9T3bvwk:APA91bH5SbpqA7W96CpEae9M2FjkjFhkETpOcs0v6UAA3FG_wzVrwEjbR2zmgEuvJ2dunDPwLo9ZXkdyFq6sK_UGJg7P-1oS51DvWunDb51c-LgmPp5GFjYEYyw-AibbTc9K08ZJI-_I', 'BNTaMJRX-S92ZDYTo8-nTLBKgLBPKQs5R4XiuIHclF4z787LQ1SfFrczE0SJlADmyEMNVhBMq6ytynx9UFzNN_8', 'B-r8W0GW8rH1q_7NtroBPw', NULL, '2025-06-29 04:40:44', '2025-06-29 04:40:44'),
(857, 859, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/e5U1a-62LQE:APA91bEfmmbxMdS_WlQoRs-MvnsuIsA3V9hKB0tPEz_tJgUAML1pCv9wPcy29UYCZqyhgrbHcKSwCPy27h7u-I5NDgMOdVnLysSLxwYmg3TK4mFYw4cQFGZqK9BYS3eceSN6D70b7YzN', 'BI5q4uLnCRqGzW3dP4_daGyuu0bw9odCr_woBDH9LLCe_aKtlksGwpCWSxdSa-APg21ABNJIOJF44Mh4nUjTY1U', 'PzoJPSajB707faKMJWjTCQ', NULL, '2025-06-29 04:42:40', '2025-06-29 04:42:40'),
(858, 860, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fguyYt0MKkg:APA91bGoqafyI4e5-pNIlp9ilsRSqngR_Tv-m6QFpoOc6Y391lSPpkPIlfht1QYSbqWrBLq131Z2vDhCDlIader9I6metuQuHXDG6Ks2jH98sPjHrgJG7kxV0hXXldYanNCe2AHqJRNr', 'BMUqohWKER9HnSuJoUdKxOgUBDtGr08CXV71iQZbsvETIqDbPkQlKxDZ2qPg752tMyd1DASp0jNk4goX4iJhryo', '0RLozEJWHSq42uESx7DPcg', NULL, '2025-06-29 04:45:38', '2025-06-29 04:45:38'),
(859, 861, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/e7B7ZtzKTyA:APA91bFvTTNs9LVvPg_yR94f5uQGCfGjCbDE-YbJuLf61Cb3Pzh16DPnMv17YZt1m463boH9wRmC25EbL7me_DzNFk7Jty-Qyrt-nBvw4dbPP9QyuuNQPt7W08IXtsfq4bLb_1T8n-K6', 'BAj7PZ5UMd7aSGct1IQKnM-4IUMbgcR0Jp1yDN9i57U8Iu9Be5ogkZ5DLNDHaj2H9CZ99DBIBP_74aMwCT3OSmI', '5qZmdLx0iHjy36ov8LGNXw', NULL, '2025-06-29 04:47:16', '2025-06-29 04:47:16'),
(860, 862, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eQY4pHpk-1Q:APA91bHANJzZvaPil1AogLC32z4k2kuA_0vgy5AlJ1BJkDGaksQ1pAXDSD6n4-f62E4s59Foxq3QZtKlXuKBcKj677krYIl_xjk_sustkV3lcatoyVuQXtJ8uMBjZeo7iP4QWc6NS2yE', 'BG6DUHwbERvBbbCQZ3nFiZAz6oViMXQ9c-3ndtRC7Ad8Q_gkVTVi_XfONQIN5tyFCMp1VVInL48lsWfgtTC6WAc', '9fsCOTgyGAQ82P2oyPeorw', NULL, '2025-06-29 07:07:48', '2025-06-29 07:07:48'),
(861, 863, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cJkT6D6NVbQ:APA91bGF1F_ioZqeTm4i-fVLLJTPwSjo_jyBCOfhBThzMZ2lw2DDslDqj9P16DW92N3USG18AoJlO7Xtj02ucZsZTioAlZsh7oip3r9vaiLNXffHgd3m0w-TfcVzahNVDEOrNX-b8ys8', 'BMQc-tUqLHNsx-mCGgBag-3SIDg7WYBKcGJIo4Yrtlj2EUs_5E6xUGIth2nBQ7rYQ-_QxP_0FRzs_hlGHq0RohU', 'NOHAN5ph66I5DXHvTaB2gw', NULL, '2025-06-29 07:11:43', '2025-06-29 07:11:43'),
(862, 864, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fs1Kvg4Orkw:APA91bEyOwUrg9j9W8RLMLtTFbzePd922yOKadJPMETgT5jz9xgzY1os0cRik8T3COH_Dngdl9eOy_RmqdsCSZt9G-jQTncXFEJVngP4O8c56hgUhrzCAHgD8hx6-wO2Wld3rDM1JOEZ', 'BFufokJzSpmZ85x0biHTYaVVeaLCbhQuvkr065j2bDSKM0QIkZ-QYyLCGVGsVOiYAiSRIhNjKTa7PCySenu-rHk', 'oa_zKa7DZE72ySCQinRwOQ', NULL, '2025-06-29 18:51:30', '2025-06-29 18:51:30'),
(863, 865, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eOBB9K2glAo:APA91bGpunw1vreKXJ01SaX1zO71jl-kX1B-umSVgN9CNLtRAsfE-Tb2n-2HkzgejE1Ilfaz6VtyQCbEWmtU4Z1n9JIQhpbBYKCIkLsPbTDvGMfm4NByOv69PJ6MbG9Fj2dNqWHvuI1X', 'BHLY6GcyAXXPJuBuoz1gj_ujaEdvR8mBCX1_cRbLiPuU4BhbpRDEqkbOCZtPT6rZ2q4uciDb8VjfzHOT27MHyk4', 'fQwCuCr9zDSPX6JdHWR20Q', NULL, '2025-06-29 19:53:24', '2025-06-29 19:53:24'),
(864, 866, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ckuvyk5Fl2U:APA91bEmkzefjZ3TonRVz7d_MODMn5FpLQwr9ujnfcKnAeG-4RutArWBPLpi4IszCEkgi8srcX_2Gw2vEVerI5wF85vlDrfZuSH0Y_p1BfzwuJwz6-k2DjlM7eCKvz8xBZu4xLB8_Rve', 'BFZ_WyWEjFe_H7YCUA2501Ocp293D_AX4oPB19a7tI08YXJl0cTz2jhk7BK_LjPVsYk755KrOqTcy1C-o4EBdKA', '1-a48eOExktg5NasfvHG-A', NULL, '2025-06-29 21:16:56', '2025-06-29 21:16:56'),
(865, 867, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fQcpj6G3BD0:APA91bGQIsAjOA_zIsIyvhUdlPB7RFInQ-b_oBqz1GPUAgs_3bhvGGLjXT2jPmC3fAme5Sqw7xjuCMl0Xafvmoh4VMcHT03VPG3-s3dXydss2j42FVFZwpusUeu0eAqem20eIHEmeWXi', 'BIvUaH8LFMPSL-CdkZgoqSV0cffUTK66LSSVgEo2pE4l931xqYwZzWPNYsDLe8tNsD07WqosIKZh54QmCmY3qi8', 'U6ZVL6m7Qu3s56GR5J2Szw', NULL, '2025-06-29 21:17:12', '2025-06-29 21:17:12'),
(866, 868, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/egDnoniOsaI:APA91bEMbLiS3WuoHqGOGeRA3WRQyy5wz6YrTYVQIitODau2bxh5GKB9MCmsxbksfh6iZX1oyLdxvohLdDsH6XIhR0THpHqE7zEOKXrvVUDDc6wvCvZQHl465TYY_kKJKsCLcAgCPsve', 'BJTy0-hcMCQsL2ln7NNT7UdCjix-S5z0ASCcpQtUeH41dtb8Emo_8psE4EjLuoNMQcM38BpPYdeV-cJI4qf_mjM', 'G17TfrQTQnIpRriFrNGGNA', NULL, '2025-06-29 21:19:42', '2025-06-29 21:19:42'),
(867, 869, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fxO6wN38g_o:APA91bEaAONJ9CWujS7xix4n9Qim_3xAUguOtFcRwBMGun_L9II24_u6w3O2nDLvIPj8-KzuHlwIoatZ8tapiy0CB_1ZkfFvCw8QiJHNedrxz52iKE4Cg0hw0GquSfDJbtSK_22I9YYd', 'BG5tPq5X7KdExRZS-aYfr79zp89cg8yUIWrO3-7THQytLo-AiVlrrAZYK65z6VWQTpVVA0eNnynI8PYTNv2tpAg', '-dTDXCS6dfqiKrEgDqkCEg', NULL, '2025-06-30 01:08:28', '2025-06-30 01:08:28'),
(868, 870, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cTj_iQjlRj0:APA91bHJxpMmxbRIVL2CixExJP653dXY484GBqSOCcSXkDo8YYAjxIdtAwn3FhVIV83C3eSRxHscEwB3kONltsikfK_Hks1pFYKFC6beghuJ32gWL9-3Cz5X4c047JZKewufPNGWOWwP', 'BNp7pXB0XZXugztkBbnnlJTgOwrtUC4gp6TA-RsMbKl6ezbV3-KoWCmAyNfCYfdbtzneawdIaG_-NobI2ufpW4I', 'YJP0SrDtjQOOHMIImHC6oQ', NULL, '2025-06-30 01:10:12', '2025-06-30 01:10:12'),
(869, 871, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cVcR5Yr_tG4:APA91bF0oIgK6TbMUuElGnWcp6RlxLzLy0iDlqyHaL4pVi8Qt2relOqpK5Gv6fKsCcJSFXuRyHZmdq7jfbbzbNkCBx1dYcnjpWjWfhZXqbpPZrLLflP5qNrdDbHb3xINClXTEu92XjRx', 'BP6jqzyM4GDml9WxhrLhPvRSGiUbYE-7EBRgpbVz0j_u_OPhfZ2_Pt732KTv5nETNwTf7M7uhqYol3rHfpl6PW4', 'k2nqf_wjzcJWBy1iCzHauw', NULL, '2025-06-30 01:10:25', '2025-06-30 01:10:25'),
(870, 872, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cQW1pyqalVw:APA91bF-BVhGC6E6hM9AQ-hti2_S0nMzYcFp6vVvFfQpBp5mCL287joRRri98rV9I0fXEPe537jIgGp0AOeq7NqS-wnnvkXcTcr0zoi153_ktYkm5GGM0C5oVt4sMbVNkhFYFz5s0rhz', 'BO2UOnsMZrDVQBlJGtNP0g_W1xyQGWubNNj1wSR7qLmIuCVwLewwHlc-UoWMhF42A-XBd7ijtLFQppxs-ZqiIdI', 'nQnm9v_fyVCozr-Ov3B5kg', NULL, '2025-06-30 01:12:09', '2025-06-30 01:12:09'),
(871, 873, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cFcdCqoMaDU:APA91bFDEadHtCNHd1n4tts2QCl40P2WL1y3N8sKu4VAjsFDa6wRCW5k0KvLN_HtujTlWNeMYuKe8yyGEwZ9_Bn_odzcVUPYbjxeHpxknfUyLY3UBO5A2VdWqeiIcQ-orP8T1JnAHbbG', 'BJYuQp-JYsX64XYvsGa-NZskrV0SgEiyC0TEWdbQ1zdMxhReeFy-xjPN18KqWCwf1QpAUSZXJdYYCMCauV85mN8', 'F9n4I0Ye0uRHcZK4bh5LZg', NULL, '2025-06-30 01:12:43', '2025-06-30 01:12:43'),
(872, 874, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eRpuYy-BzLU:APA91bHktKA9bogkMf6XPhKP92x7BoN9piIWqEnHdeOw__XJzsTZD9pTA_koNHIpA26t2CKsmvs8KJKtsU83zUlFmAHR0i1gHZVokQaYKOOFSryiIwYqp1BsaMO0NnXhf14iWQ7H6Oua', 'BDdzdGKtR2mDjAQvyPqkes2kBxrCaawFqPS9oWfbmb_k43lkEk1GPXMqC-yD1-pIaKY_-JfljKVEKXazg9fytsM', 'w_X6EHBjyrBO--aW265gig', NULL, '2025-06-30 04:37:08', '2025-06-30 04:37:08'),
(873, 875, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cZf3birHA0w:APA91bFgGqMH0uocqNjRlIZAt7o8DL5K5L6pocCOOH7YzhKdY5QYxv91wKQcDwjHtX1p6dg_-mb3lnOr_iv7BsOUzCFE_GhbzpWp12rl3AF6eI5lgccUWu8aeoTSgtQYh5IReENXgUey', 'BIc76K1X9dnruRWX34NCSqIS7MmdlpX5SE2z5IDpeCr5Ie0w1iN03w26__LXJCMu7mm3ZUtIAYPtK-Jbpm9ZSUA', '1piTI3RKvTwRJFpuqeD4Vw', NULL, '2025-06-30 04:37:39', '2025-06-30 04:37:39'),
(874, 876, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eeTfi8UMue0:APA91bHClWaPbVMoyGRKcHBvkcKJhVFZvm51-3NN3KYroHC_-jdrm1uBIoEUf_Lfb2K9-RmzrIym_eUiCMXwRvgMuk9pQ1vNNlWPuCv2BwJA9-_dorsPEe7tnTwPMO9Sw0-U2NFdOon4', 'BEa61-AGyIa1f3CtF3WOmugI197GkCDm_6moOINoPBC0rl9ucK18wU92nd15EIQdSd-v9Sswxm31rC50fc74aNo', '3HjL8pAdo3H7VqennCVO0w', NULL, '2025-06-30 04:41:13', '2025-06-30 04:41:13'),
(875, 877, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fok3zgWJ0Wo:APA91bEEhVkHLq-Hk49Q0JtCX_TR0EbgoWrMR7ZkGqcj767dhAgwHHSdYS9vCujPlhuYhCkF_vV8o1NDWv0hix-tg6coPNOFnJ3DlhyboKzAlu_Z2vxQiMcJ59SUB6YbJG75eOEywqsR', 'BJzJPpiUDpUGFRJwrT7mhkyP0iSDD_Cw-e0508LBjqp5d9Y82Cr0g2WqwwR7trqRa2sGpfhaEd8q3PRg75Z6B34', 'x-1gEcnpWhMPCotyFAbDfg', NULL, '2025-06-30 04:41:18', '2025-06-30 04:41:18'),
(876, 878, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ehEBjLs257g:APA91bE0VSdpuuzRMthrwUs0PiaYa9GTUD4PAw_klwE0CLrITcU2nGSej7sMgYj5ITFtfNb1IhPFo5chmRuHRRG_iJqcFrk_6tNjrdkeKKUOBpzFINUq5D2mSW-SGJdV6LFZMfhcbUTK', 'BGqSqF8ugEt20iFBzdUg0EDMwTGv-SiKhVJWPIhjq6MuVksjPtuyBLfavgDUb7WNsdHeF6Q-wZi8pwr5HuZzaNU', 'J9GKz9nNEj1_D7aW4Yohaw', NULL, '2025-06-30 04:41:51', '2025-06-30 04:41:51'),
(877, 879, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cH7AbiL5hTQ:APA91bHcgxXbcSii8_cqN_DF-e9NIY8jJlZovFOQ6s8aB8hanMoUC01nEx17CCgiO9waFLyTTJ1RxpM7U87_I2k3Nn1Xi1uuPR7vHrGIkXRw8Hk1qfsMN3ZJ_2JvWLDy6-lh6A-rkDT3', 'BO6KCTo_l43vnqcgfRaSRMKP7FVv_xZUqPz0MVGEdEwun-xU5PyZRJhlSYWEOHOARd41-zcWgijcyu7RyUZCnDI', 'KZeiSuHYRnop0UDUt-b70w', NULL, '2025-06-30 06:00:50', '2025-06-30 06:00:50'),
(878, 880, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cRqB2hYmPZU:APA91bEyqwHpc6Py6XfYdcCEfZyRv_RNe1dILwOupxSrJbd2y-aKtFsgn8aD1mJOD2jAje335tV0k8YNRFBMLVOiMb9MA9nns8_XPJOiiqjYBocV4OJmzbXYlcztUapXomcKoNGawojZ', 'BHmcUNQrWW15YX8mmuUBlp761Wx5DuklLz1zTrnDWL0LppAwbGAoPiqvH31vOwpU3LI7JETZ_V2eyfSBQ7FWPIc', 'XBFX4Xq_mormLhaKRbA0mQ', NULL, '2025-06-30 07:42:00', '2025-06-30 07:42:00'),
(879, 881, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dDg-j9lqMHY:APA91bEXo7FEEDO1f8NqYcTO-xoyVQEeefYjQQcaGMD13FZm4E4oLohc5JfyncXt4eToYyXDC1r5R7RTGYCDVve5DOzldbDIkZtQshWxtYwuMsyngTsjNTk1o1JNqIVRKSTH1_UurTt2', 'BFfh61RsOVzb03POX2MqDLTIMxi78efcAp1J3dtcnIh9kPwwlJKrHBH7r3BX5h2-eluYvovNpWj5dKKTlhPT-8E', 'XpOdpsogiVJjQQ0c644kYQ', NULL, '2025-06-30 17:49:01', '2025-06-30 17:49:01'),
(880, 882, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dRAnSFO_iZ4:APA91bFtcM_GbG6UlrAsF0d1ADDXGV9cg6cjQGJbGYltfRuzgIhTkjMrR10u7gVLoQgn62axczL6SOSWYB3bXIOjuzC7KpQTWCvgB2VXusJz8DtDFNYLoMWjdSj2oRYj3GcWVIcbFEtw', 'BFRgSTHjCn5XUt_l5ITCiHkEM0AN1YpLM7ylEVRF1ezLwCsAr_PBeTzK8iHk6F5UTfDyq1mRz_yN75J_0ZrF688', 'OG-FqiGVhczR5CjwlYPWbw', NULL, '2025-06-30 23:28:29', '2025-06-30 23:28:29'),
(881, 883, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fHdeIUYhg68:APA91bEw861drgbO2utRzrE0StkMHQEYQFcrYmCu7aFObtCA1xudFk8BgsnEpEv9oSqmRGRPOJspEw2vQKD6aoCYG_O6SlQQV7mT_F_bSF9l9FDNzw5ZYnEY74IZiykDHJpgcNDqZ0Zx', 'BKytq7MeDQIMisbj-TSqthcVDT9sBdBVj2-nD-fi7bDhikNTY13frH75MIu-_WGMmmGFqXHCi46lLC8qX0TkZlU', 'sh7HTNYehYhcuXUZQ_NBwA', NULL, '2025-07-01 04:47:27', '2025-07-01 04:47:27'),
(882, 884, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cHngHzEEGiA:APA91bE91uaRMMzUfSIn34pRRjOqYUnLFEbXDhz-rJxMjcjNKOb7PBaILMJcP-0wxRWweQpzDe5UoxtosF_lvp83eMDoJEK5UuemZwHCJd0WrixFNzNKxL9kII9ctX_x97a8QZ9hePxB', 'BPw_CWM9T6wMT7WVcmBn3L5g7Ekot6AJaTnWOJ-g8k10APWryxA0EAA3TA85KoVVnwnYfaGQpe7AnyKkX8orkKU', 'TOarj5itOii016zSgOCsrw', NULL, '2025-07-01 19:52:45', '2025-07-23 02:31:19'),
(883, 885, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/emK98_EVOYs:APA91bFjhJuk4hkWK7CGNBYGgu2o068-bXOQOSAceOFPsEfv9oOzbXm6R-VuuPcj_LcDY1RRN_E3SMG2BByD2yMCNy7DhUH_AWWiTZsBFVUh2GxxtoiH6DIRyB9vuJe06RPP-F16fp2f', 'BJjqorvABDeiVMErRwMDk6_ORxcEEHRu7TVawVnY_07kNue5MUOxqzBWfhRfjJa3bBGNpPl81IYt4BFA0ksIN6o', 'gUX6_ALcLBF8nEbRwHl9xw', NULL, '2025-07-02 02:36:24', '2025-07-02 02:36:24'),
(884, 886, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cooR4pIDVRA:APA91bGLgxePns54El0WV60ZADZSMPrd2_F1lkW0BBSGfXpJpBbWmOGYd6KIYqT8C1i7xik1-W4DxaP28_SZUkSUEWbdoKvGRiMXpxk8YqH6Y82U06CKF68zT7_dDRbGP8Zkvld-0Pqp', 'BAmWaSW5QIRJuy2twYe5jYyisi0bmYajrUIiW_bW_6-QZHQqwN0RiNE90pbskOiG_OInAZO2xR4x6ONU7a8bCLA', '8mfMiJ2MngXQEryDHye2WA', NULL, '2025-07-02 02:38:49', '2025-07-02 02:38:49'),
(885, 887, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/co6P02nPktA:APA91bGCNlaQGCO3pB2HLb2tnnWgOi_J-kyEK2SJ0PTIRKxt9VkVv9Cnk6gjuNkenL1b0C0pQk--ytoRPvR1sMfER5pJvaO7QEHBdVkpg5KHfQbnFV_Jzo1nh3oQU94Wk9uWBo184Foi', 'BAFAjGOHgyni4bQqVWtpvQzECykYjQu_vYvOW16kvIKyhRczKQeQlklTqcqeplpbZd0zScCkoNvDFq1F5af9F6E', 'N5sw5WMNhRRvqK59tuH6AQ', NULL, '2025-07-02 02:40:51', '2025-07-02 02:40:51');
INSERT INTO `push_subscriptions` (`id`, `subscribable_id`, `subscribable_type`, `endpoint`, `public_key`, `auth_token`, `content_encoding`, `created_at`, `updated_at`) VALUES
(886, 888, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fhiAC_0Qhek:APA91bHFE3VVc0cZ2RnOhp3VjwmIkT1yqENJJ8IO6UhmMB_ZYl7Ig4H9wxUPKNLd5ppuHZ_Yr_Fxiifu-ElFrG3fHnGW9CsuS4g1yTJyZSTtfp-VY9XLCkC8i3RCO4QsaKEL4koCqp82', 'BA8Tdc7hM9wTSDCPwRTukiNmi6hYrk3-iSS_ObOReUb0VIzV7Z2pBbcPM2NCYGGn6D7qTtC4ZnKVKhHsHyQtXD4', '0sJuZrwo-DdoVZ0v0GQimQ', NULL, '2025-07-02 02:43:14', '2025-07-02 02:43:14'),
(887, 889, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fWoMRHusAoI:APA91bFNvpBi0xpUixiqO8UF9otIabQIGlteYb7LKC5F2POR3envvD6zPIMY645A-1W3Rg89knb440khUtFwgf0rn8u5TLNGDfuHqhJODwLaMOqQtSvUB60E36u5kYCrBd03Pv7X6SHn', 'BD32O4WREQP4FNpFtluDvQV9eUzQXSQ9pcImrXRmZhIpA0tKb7eUy9LAuLQ05kqxdrpeD5ZW4NQ1goGApiKQOR8', 'YO_JCRPd0T6ZQGTwcqyrfQ', NULL, '2025-07-02 02:43:28', '2025-07-02 02:43:28'),
(888, 890, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eX7cT2rIInE:APA91bHgBTPAFgO8ICsyYio4zPcKcQ4UqJ76UeCj6_3S7RATmgfg1T6NdIMrojyiE_-CoAVaSZbgYisL9JWPcIQQh7yssuNATZYG_YeMESd8YhJJjaTrDhs2sloN7ugpSmVOzLTEIi8a', 'BDm3JbhD0o-F4V_hUG7Iwie_D0IY2xC-nnCbh4s8L2N4gc1t7Cnv8TAbKnZ9ThxN90M4GBmal6arblqSeDuXSO4', 'AA-GN4VZ4VOhrkHJwSOIag', NULL, '2025-07-02 04:37:26', '2025-07-02 04:37:26'),
(889, 891, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cYBROJth0WY:APA91bEoV7vHrLyrjHYo9RmZh21h93pyEnVvwducNQAj5eKOGl_bW3j6loJfs3k9zobeITQzcwnrVkHXGdM5-lnSytPw4y6d05pSQdPG689vBQ6EXe78FmfxAoDiRlBP81aMu7fWGQ1l', 'BOw_50TCtW0eil4HLDhAIyWc96E63vC2llsKxZGWlaqAPtHcwVyfWIyr945JzRR982shWn1hOAMbOVOZykUvU_g', 'zuZMo8YZMAmz99IGF4ZQRw', NULL, '2025-07-02 04:39:06', '2025-07-02 04:39:06'),
(890, 892, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eaI8aJaPSNM:APA91bF-SXFZDNlL5tfxCgnAjzVW6DDSOtiqAZGhfiQxzfGwSy0lFa-olZSzRtRJHR0-9MNdwQ86mKBi3m295qiSGEUdufEDibolT4-qxFSOigQIZkQnNaz1adlY91GNYmCkrB_7290Z', 'BCzp4jlYWx0ZFDRJI38cSVhxmkDbfzjnysqkTBd-im3MrOmQCpB4yzlKKP0azT47fhbd7n2nIWeRjIqgJcoeBOg', 'nBWLKu4FCnHwf6kX1uQQEw', NULL, '2025-07-02 04:43:44', '2025-07-02 04:43:44'),
(891, 893, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fu5TFlE6OZg:APA91bF2OzhZ9HkydK-Clw5rOSeZTk3bKcKYpbFELnUhN1G77_RuuT-GGax-lyB2ELiUUz4PExhJvZcFgQ6p24AVEIy6Yl3EzluuqEnhjdzUz4DxC9e11FcXHwVwWAb3T45gfDtT6IkX', 'BMU33CR7j7BidMZo1iZcJtk68hVhIQ3kDXWJORx8evP96z_8wPXFWOyiZCuFxG7oG2slZ4i2Bq2O1y4mWOaTMB4', 'ORjAkiARR94UdqAJCsv_Mw', NULL, '2025-07-02 04:51:54', '2025-07-02 04:51:54'),
(892, 894, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dbOP9i7tQJQ:APA91bHVNyd96AFMa5rgTKgjDHW0-6I23dWn4XJ0G74BViSivuTBfnQuul_LUPzJg2fQFKiCIQ3YDezbQmrXsdEQVZacQqLqH8f-ZVrBynBDrzWsQZxk6xMHhcM26oedKCoP1e2iGujV', 'BPNlnIs7TCzSUnwkHf0Y_RbSCzeuQUlnLCjbDfl7cFC9lUmqihX9ghcFj0tjX_8ZujnQETYY_rAAi_589zbtiCg', 'HvkO3VKpKHWkXWdVJG7mMg', NULL, '2025-07-02 08:41:52', '2025-07-02 08:41:52'),
(893, 895, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cVMdTzFL_2M:APA91bHR8V1JSKa9eZqRp-Rb8t45ACA4nybtJmrlYMtNuNOAJjgRFqybJwnlKFIoT9_2wnKUTnGR0BjG6Q-ddZPhsc-eAHEhUR5NBooYBhLjjaYf4l4uVMFGdD1yptJb25OufJON1Dka', 'BCyPP-NHX8ahfIEKlhzcOmJZzwX5IsABQZPuxRCQ6NuL92PakRZ7Vlpi7dZ1pKvbTrVEzAzGtMJuNuw_ogE6ms0', 'jZ4awPUkcSlnV_fNtmxvZw', NULL, '2025-07-02 21:02:54', '2025-07-02 21:02:54'),
(894, 896, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/f9E0xSMD-OA:APA91bGPPoOCgfHRj1AvWSo-qiOhAvajH01N2mjqdwZd41eyM2fOSOCe1TbfDfen4e3AxBbhTyQaPlqH5ObumLQL_uEKLSZdVR2nA2t-MOutCO-C15mgMGqrksv4lLuFIMm_ZuErJ4pT', 'BGqmZue5AZejesltZrogmRORdJPtbcvbRUoKqR6oKxv_ARoOzVc9nbOS_-PSxHN84bB1v8D-nV7tgjBSx5T02rI', 'vVq2pvLSJeHNUhy8n4BPwg', NULL, '2025-07-02 23:53:45', '2025-07-02 23:53:45'),
(895, 897, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d1r9kQwuY18:APA91bFDnt8f8c0fNqO8z0KYDgUanHewvx37Z0E7Wgjl1mNBH5cVzbmuAzBtl947QDx8RsjFWA2WDbOeNrrm9zs7X49nbxIeQkFK8ir-G0Euwz75G2DPrNoRTQoyS-ozCTOdqgyjep21', 'BF9_YyN2nh4seFsUk3LZoKVFXhGyel-uDnXPZuFYsApOEncsjfWq_ao-qvqYLYGoabtmrrw4xMSnn-56wXXI5tA', '5xWX83KsNhBabMSPlOjfLw', NULL, '2025-07-03 17:32:35', '2025-07-03 17:32:35'),
(896, 898, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eL309CcQFNI:APA91bHozT5jFsMv0v-UEe1yQpjjl5oucnD18TDycXDHQylScdc7kzg3hjSezNijKAWRwHFC5oPwfQpOttHLryudPHTzvL5lVgOkEepJdfs73BRTjhPPEr1JHB9T7E14k5G7pu-50cms', 'BBT4LibCI_TlS1cyyDelvCZ2n0-UiKaWsjDneyOIc4UFwXVAisPuX33z4Bk6wZik9uP_DnOTlMu1cYUOMhb1z8E', 'QSIluZ2Lre6Xvrl5nQUAmg', NULL, '2025-07-03 19:31:02', '2025-07-03 19:31:02'),
(897, 899, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fT-6eRZD83Q:APA91bHdPfaRaVFpXVd9NwyMkzo0KznvYznZq85RRsPeLVhcrzZ7xh_0byE9ZccBW9cl-UvEsfuG9I0QdIWLgyt-ohqTGrbYL4Ir3bkGSnYQge2Me4qz3-aLtyWTHrE_QDickjyUT-2e', 'BHxxwEVhta91QiZq8waIkJ56OzBr8y_t3hsJtl9gKl7voxnwL6ZiSon_-MGgQV7Tp0BXyeaVLfMJF3cBMgYRN7Q', 'n5y_1fg30iJfZx4J2ZhBsQ', NULL, '2025-07-03 20:38:00', '2025-07-03 20:38:00'),
(898, 900, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fCVXzPF7CmQ:APA91bGBR6vEPwplDCrlpJz9WxNbPjLCnenT-ykVRl3W_jZmb5s2JHlHiraODqJ1xuWpyin9YQclG_H7jjCV-oqszUnKmT4bX0KVMkHXSOmvNFQGsdBUnFGcosY_rYt3EKHWTjfZ0qZN', 'BIYqVYHlsAwHj8FmPlquma__JaVSAtZZX5rKMjSAf5sR29E-vSWVTQjwPQiXewSb54wMBelRlLf7DAuT9aGtaZE', 'Zx_rLnH9NOfYRfaDR1Kfqw', NULL, '2025-07-04 02:10:25', '2025-07-04 02:10:25'),
(899, 901, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fKuO8NQOzX4:APA91bGlwj3Yq4bXXwXF1iETfvi0c_ZfyBEBTzGK88mOUI-0oPNYXd5KIsPVj-VQB3qi-1d33FR1asi11H4uVf5Tg7VDlQvfbN1OPeDLQhEwxXlf-j_ibo2gTZbj4A8A96gcJG00S2ye', 'BEWhN4jYJRwMxdmBu2amnl7zGfh1wipAYdhxM8Mwdp8i2dTCAuTLTP7sf31g3ZwRbZhm6ynW-cA5LRAfcO4OnzA', 'jOz5FhABTbRs07c9R_sVJA', NULL, '2025-07-04 02:56:04', '2025-07-04 02:56:04'),
(900, 902, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fFyr8XQmxs0:APA91bGRqdqv_aO6sejxvYl3p7c00xoPaff5CCiTrbmBfnOJFQIpWONaJiK47hRfqLRMYpQYbmd_DYFdOnF-BdF47ksTnjrYzYU8ME3teyUjGRWBIjw7LfGUMD72MW2I9G9DHH8wQV40', 'BMRWcpOXtiQ-VIgS4CI9qJnu2DvDJVpLDaAmewZz6_5flz5pAV-cBTL5iNj-xXWyidfXfziwTIJLr2MeMUmoCw8', 'vK_m8WrJFJTvphxqDhw8mg', NULL, '2025-07-04 04:14:22', '2025-07-04 04:14:22'),
(901, 903, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dK1Rx0g0Qto:APA91bHeX0ESsJ5_Y57ZUMLOmEv9XIIsJeiz1qW-fGQCFrOHvwhxIhb8MW1LIGW8Ts9l4tkrIowrVpEA4rwblkQiRbWCZHk5fniZUOry6RqCzvcemDfyXmabtR1RLG0ExE0gaEdyKTRM', 'BF39dkrfiFEiwJVJkyWTvB_DrKdtMt7-L4DmfUN0aSxC_lynwhExVDOBcQlL_zAFrVNHy7F0Yf3G3ui7qu--m5Q', '7JzcWme30j9nW23vMXgXyg', NULL, '2025-07-05 06:45:52', '2025-07-05 06:45:52'),
(902, 904, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cFlyyhtYWBA:APA91bGFgDkrW4I9kNUARiakPGhFg4FeRa7hC6zhu-S4xvZfq10P4X96Q4hXeqL9LJ2KAIy_pmRAVz-7P-9XzsWcztZvAIiCQGm9kw_o63uGrieiDiEWf4sEDFK_MAzSAYXK_q_s4N5l', 'BFp2HT0_7ecMd-hPyja0sf--ut162fUycrxgnaLXOkJJ2Hb_ZT_RrT04oUM7puGovdvaWvLTk3PBqOOGE__oGpQ', 'ujUZ9VA11rVvan8TcoReQw', NULL, '2025-07-05 06:47:35', '2025-07-05 06:47:35'),
(903, 905, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fDyllPgkPUY:APA91bHpkNglhvKm3oBMLk8ZQvjaCcNqmcdhzgCkm4nbqj97zgO6Z-w3ZkHfkM8ZtZ6G59QyiKIlpWODiPSbHVgS2LRVQySL6d0KIBab6zsjxNeXT5JB1g77dZtxAy3JrVSN9woirLYB', 'BAYwFH2VjFSKiqlKR2b-TbWVsPwhvLy5leWLh-Sw_t5T5sTqzEL7LAjyUtnIudslD4w9dKyl3WJJNEJw3vBsoA0', 'm1aFku5Fj1oknWqWCYPvBg', NULL, '2025-07-06 01:08:54', '2025-07-06 01:08:54'),
(904, 906, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d6UY-JFbSv4:APA91bFNTzNK6Fax7bcNBIomXL7kVKjoPAcI8-uMp7zupzT8pvTM5EyUl8rT52ro3fgvqvhS10EbEm-DtiR9vajABNaLyYQszWFKBiN7HhWrP7_iUYxpBdGXW5eqw6qpfZvpSF1nSkrJ', 'BHkkJ2MlcCZi8yP9IzyJUBeHjDxzU5as0rDikRggqaDZ-fejiZLtMTaKP1XrXaLxRW69gknl8A3-QuAJUtWOBGw', 'fedlHV2DkHNtD35VHCLhsA', NULL, '2025-07-06 01:10:03', '2025-07-06 01:10:03'),
(905, 907, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eSZG-RsFkv8:APA91bEbMNr3VoNCpRp2bAxXJ_O8b-sem7mfgfw8j3L8Em2qSir_eKkWVO0kO9hrmOU-gTU5Vro8yHNMKOWN3E0pniLouBx3MVIO7g6WA7XFlYH7ED5ftjc-fM3UqW2hXVsliest3LMq', 'BPSUnhO7CyweCP3GjZcGvkcjkXhw63OO1p4-3p-IHnxhlmrZCMg_khrQtt8fCAww_wKAJI7X968Os_Yz0CI8KIc', 'ZC1T7krZFDeLIT8CL9XPiw', NULL, '2025-07-06 01:11:24', '2025-07-06 01:11:24'),
(906, 908, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fg2Zo-ToCzg:APA91bGf40zfDQ1aAJofxYvBLLbO7W8zpcZ4o9Uw1V4OfR2Uk2QPtmZU_WHzxbATZHXlJ1Qz94YKvAR93zWfHYxI2cGLRDl4rfVK2_zALVJKki8cvD02EuRATk9U7sXjpt_HOhQBpqUD', 'BOqG0bU9m45gs4-rJ9Vy419dc5qJMR-33O9wcykG_pe057cWv97-njDXkm4BDk6IjzCl37l-m9VjpJGL9a4Azbw', 'wKpDkTdKUnfNtSZE6Pc8Vg', NULL, '2025-07-06 01:11:52', '2025-07-06 01:11:52'),
(907, 909, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/f8qrp-IbGfg:APA91bH-1nYXWMgL9iHb5p-1u4cn60q47LAN9lj-09csViLqrQKnWxHJg6ENpJZhMm6iWrpkgET7le0WQQADfnFVHzBpdFk7ZHnWp4cJSm1hlXiHg6nwgF60X6MTkx4XYmyL2KfolV0G', 'BGrWkYsteMX2mg1OBWK35E5SZCi-pQ83iukVjO1x56yNvjji9Ux_9yhJNX9QFOOF-Hev-7X-rAbAj-6H5FvA2A4', 'lhBGskoadg612wX4r6FFbQ', NULL, '2025-07-06 01:14:13', '2025-07-06 01:14:13'),
(908, 910, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cfrL727Af68:APA91bHyPIzMwMjirG4WF6nbTxCY7pXgZs3WDusSwnznfQl83Jua2rvpPdgbuT0O-Gh_sHunj6NEh9GA2XefGtcg8rHBraT95K1Y1Wz71InNvg6_xcxggjSkdA8vvFffM9hG-z73N9Z_', 'BIPXdodwFyxPnClOX9YJNVtUlzF-10mw1tovqI3hhthLOa-U9lzVfRqUx9uteZ_W0GcZTVb-jbh5myqEIY5PXdc', '4_0ZkM6dNwOloQWRrRiMwA', NULL, '2025-07-06 01:34:31', '2025-07-06 01:34:31'),
(909, 911, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eeDbQR89NTs:APA91bHFaRdD4Nia5OZUmNLT3X6k1o8ati17eYfZ1P-Rbw6qFEO-Tjnxm4k6pfzIp3WypLUR4DBp5NaKoKKNMQNbLOySNbecXmbvSWovSYHgnF4QAuKx2sbZLKLDGXwQkl8RkLoi9Bzl', 'BAL4ehYBm-jT9eS1o0DgAWT-ipP_dMUUC8OwyyKnCMvBaL3zFRfU9QaxSKs8Lx-JVM_bjyloh7IlvEresBe1o-Y', 'lgRedpTGdNYK_eZUacCpDA', NULL, '2025-07-06 02:55:30', '2025-07-06 02:55:30'),
(910, 912, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/deusi9vnTzM:APA91bFo7_f64Jc97z4aoekKg7SCAEZAqdC7Ix4z6fgKrdj3F7lMAxdzOfcd2BwGFaWnU0Ep79a1JK2gU0IGNIWErlJlqeV92M7I2aapipmn0C8lDQrDMHlPQqDwOvK-K2aJXzC1KcU6', 'BL6ifcv03WdyoSVxwTb2cPx25Desc_nwzqJvC6zYM3RPme97Lu5T3t8keB3JUaygGDNZ2-S0hqFDhZB24zjG47Y', 'tsFhzC2zXNT5NUk1sQut_w', NULL, '2025-07-06 04:44:31', '2025-07-06 04:44:31'),
(911, 913, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cUV4tF4YRuM:APA91bH91gPdTfJcFz9Btnt1hh-he4woqLBZfjRKuiGZ3pOaNn7wEcHOAGtKQyUZrdbxdHEzx39RRZkWN_D0b4JMvRCJ_U-dIJju8wd6ytOoSAX46iinNn3gYMmi1k0u_7WsbnMVkj2A', 'BCwoNZamfJXfSrrsHEfEberntzEMPXKWvrmYp1mLZ04b_Jm7FHjin6yFoZyplauq0Vlkyd3yenvPkLBeLVxoHPM', 'Un2fVsqMTMbm2FoKhAplXw', NULL, '2025-07-06 07:09:05', '2025-07-06 07:09:05'),
(912, 914, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dEs-EZazGdo:APA91bF5uMHHW0KQ-9YlPNuHF7SgEOFVW88xUYXocA3hP5YdiF6iO1aDrCFWKqd4kYRuDrlIjsLtt0zs8_26vyXNgLaZnJYkUeT7s8xR46_Brmmej7C486bxY0FNLMkdy19RBUOoEelO', 'BBPv8sHO6qwaIyKZE5O6_aZ-Ps_R7zuCbbOEm-7atHbv8dxMMVQWZKwaETbCuiLXqyoIcg6yu2plJMIM2f5pbis', 'hLcA0QCUJvtB21k1RubQTw', NULL, '2025-07-06 07:10:27', '2025-07-06 07:10:27'),
(913, 915, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fgTqhc132JI:APA91bFnEGg2kUQ-RJvMMIZTP4VxEPX8xhSYbdQus3h21BqoDA26aLDXpKdpTs3lm7ntdfUxZSvqFg8R_nQoQkmr-B1dTHIdh4VDahMSKc1C2e1GIaaK58MjY78OVvmyNwvrf6r0O1vW', 'BIBwk_5YeIUI6Rb2szMbgYB26lxxDNbbaXChRiHhs9MjAnvfOhkVqoe9BYuHMHdMTX-ay_Ib2DAu-rXnNSiCVIg', 'MZDNGc20BSkLyxkjT38RDg', NULL, '2025-07-06 07:13:54', '2025-07-06 07:13:54'),
(914, 916, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fFjANB5JJN4:APA91bEyepL4bGi2W1ddfMktdp0QBZbp-oW21Nj7_sQ7YANCw1XJnRxvB0xAMFiLVpOHvrgEkX3fcXgRkPYEQPdfoQgF0riiaszNfKOX8R_J6fNlAtwYVGB69EJpXkRzxw4W8v0La-4Z', 'BOsWlREB7_SArkjjMGQZIzySoE90FKzaPOqq5P3DfQmQPTdgfDB8MSotf9ZaAceylXGejevm8fDO7ORWOOlgYU4', 'EYtkxOnMRHdR21u6nuU12w', NULL, '2025-07-06 19:12:30', '2025-07-06 19:12:30'),
(915, 917, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fHIaIxEUFm0:APA91bETFykSqGJJ0Sj8FcWwkeTPkzYVKlQ1SJDpmKf1TUpAAKSKBySnSos3XKUGM0ox6uLsn9aOuJJYIFDjIbAgyz313ap2R08wxIJed65FFWol74SxcVzkh1bS6VYHyQtMVY-qdWad', 'BCo_HEjpBWtkqetiJb00VtO937BuQwR4sNg3ZFbYHRieple4okqkNLmGXSQGEVcn59S-S4a2k3xktqIvIa5BCfk', 'sn4_8LKm4aElAOPOohMArQ', NULL, '2025-07-06 20:21:09', '2025-07-06 20:21:09'),
(916, 918, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fjpsI4-cy2w:APA91bF84ZMpno_jCmcqEG6EMo6xxluR47NuEqjHoqA6Uj9FxVei2mrQgYdQlOKHsF_kh6wFexXUj5KqbyUnz2yVECE9pqW74vttqZENmAyggVGged3SE-0sQqxQBEgg3_TJG0JKeIkH', 'BFoMfuYHPB4SLteP_z_2ooTcYy_Oj4XQ8JYIr82Hvk3N0vUP8JTnZMIrT3rhn_KtCdA7o1MkuqVKvOtcUZ3WAek', 'DeXKxKzGp5nRiVeyJRBX5Q', NULL, '2025-07-06 21:15:32', '2025-07-06 21:15:32'),
(917, 919, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fffxiBLGdUI:APA91bE28o52kAZlTB0pT-hVC4Rso8cZ9AD4gKEqQtYhcrGA9AS9GaJB4eIHLprVCqlm6WmBJxOyJC78Szwo72QyFJEcofc9FONf8FAS674BaPs5fXqbymaINwV4XXZBkYKGSdljXSG3', 'BD8k1Hbi9CE6-1HZPrE39c9EQJnDTRII2DgzgJvg2SeLThvCyZg5ca4ElusKqNoDQGVtrGq9kFdduly-2hLzbVo', 'mLBMq3WT9iGEhXH_KP0R9Q', NULL, '2025-07-06 21:15:35', '2025-07-06 21:15:35'),
(918, 920, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eyBKWbUBrdQ:APA91bH8pQm7Wmi32_XxJ42Mo2b-K3sIIW2GgQoExy-VZmZ7itBE2sAcFZxC8RBNrHmLFkK-IQTvNKxHVyPpPZSVYAIEHnha1yzWHuszJN2ZaWC76z7n4iQZLbygmEnFLBXtZpiF3ndn', 'BDVZdHmZHkEqxEp6bpYHhfFCqCwNEFU-iIc33-YQhjsO2jw5M6Elo5TRuniexmbvi9qpKkUrLCV2axhHoVkU_14', 'QY465QtOGXsImeUSzdbssQ', NULL, '2025-07-06 21:15:43', '2025-07-06 21:15:43'),
(919, 921, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dLI7BEipZuQ:APA91bFA2vDVlj0tz-r3QRGRb2b9gxTnpRglvH6-sbMki9QXiyytObUjK6A80TzAaC2hsztGfK8gsrqdBh8GxL1z5sCoiPfUUaP9iMhEnrr3fvTtAICgMW3JSylOGzrVXBy2u75uqEPb', 'BC8mQtRKDfvZnAQbHwLbmidjW45WKg80hYLXWlCgu_l0ATeIx0WjWEZ81t4MCAQp_c1DDqbI04iKACg0UffC4Eo', 'xF_I0x-TiFnAFpPFBgxJBg', NULL, '2025-07-06 21:16:04', '2025-07-06 21:16:04'),
(920, 922, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ddoZ7Z-MQVI:APA91bEf_0ZPiHxieq3b8gPEnJsgH2Ds6lnX9kFwL1siDLJPh37QWbAFtecjJ0ztln7Gy8H3w8f7AZvTFlUWSMyb50jfxkyCJp00ZwChBJwnSRMf7eUIGpSLvE2BP3lOFZNT5iNTH92o', 'BHbgV7PMyugaMMtUPZxDRg6tHu72yHdyFmyZaXhMV1xXOxryplfdyvUCSUGg16lPf29vWrB1F2kyUMZBQVEgp5Y', 'Nj6O5HdFcZ_7Q-yYYMFwoA', NULL, '2025-07-06 21:16:31', '2025-07-06 21:16:31'),
(921, 923, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fWa_SnpE3xo:APA91bEkdUJQguap45nG2o7Od-xBW11mmIOVmwk-8cf8K0DCrj-YODVziQfnVaXinYjByzjmw5lM3zYlFAACGt5qsnzV-mnG3HO0k0goIkj5Ws98Qpz4HeemZIt0sUx-NNxkjyjzyJt-', 'BF3D6GrdN9bgHXgsfgnILJ-dun5j_361N23vT98kX-rx19Yar4-A2FuM6DHZFlYUrDWRtfkbpOHgIxIQPHxHmko', 'mJfik6O6j9hDX_empHCu7g', NULL, '2025-07-07 01:06:11', '2025-07-07 01:06:11'),
(922, 924, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/crxNOYiNYic:APA91bHj5mmxScbSud3YtNNpeluc8KM-yXXsdhpweccPuL2VdW1rSBbLc8Sg3LQlH2mbF79TbG6G6XJNGTmU7ODRDhqxlGcRPbWGoA5zi1G3uxSQIdF4Ah_HCg1L3yO4kMsxcIqJL1X4', 'BGM7shU1eT0fwgUoEd6Pzve30lwmuWDhM2uTP2I2eeHlAo0YpOGC3SeER5WUV3KIU4-b08sgzbW_sF5OHcQHAjE', 'JHkuj7G05mbR28SmzVWy4g', NULL, '2025-07-07 03:15:11', '2025-07-07 03:15:11'),
(923, 925, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fTeXD_u3j2o:APA91bE4nztnfV8SSNhD7Aj90SGuf-ciLtqwTM5m1f7NI8UFtN6w2W3Pwi_uCXzqNSAWlH3RDYbnnUHyhRFMxKiyhgEXmUi08TpIS3M5c92mQC0_uLQ7rTYGAVTorUjSiamQXGbvm6Io', 'BELMyWxpwmcgVspfPddN3MX_wdUwG3S1969p4GvPng6ZBvySpgi5KWihpCOcewHYR868hz_ncCUA3yjYZiZDzeg', '5stRju5ww9hNVuCqR1Ho4Q', NULL, '2025-07-07 04:39:35', '2025-07-07 04:39:35'),
(924, 926, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c3j_ySgWlZE:APA91bGsbfxqNjkR4Pe6DlLQJnsDzsm25nPoG8Q149vXLvsXbhc9DKW6C9k8CmRqQnDfUTFjddFFn9yQxwcII9xdlX3RWvgiak1W3aYEanFqGma6GHm1IX_jTlPIMa02kre6eCxRYHYx', 'BOiGPSJ-Ou4Qahdzz_21KlLarFbGNGaorvhfj8eoRuqJjQc5Ngd0EZNYTSOkYdqjGnRjLLqpZB_M4yY6mHtMC9M', 'k5bgsgjiLe97yR9XSiHuvA', NULL, '2025-07-07 04:41:46', '2025-07-07 04:41:46'),
(925, 927, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/djvLVqIvAf0:APA91bFH1GwXCsoqOW2icnPZL3eTprTsYZORUQdU0FakA4jXrOeYLzMtGvQPv_A5f6x9E76Fy5oKGauVWT2t8RbU_UP0xqJT8NaaKAwb8n9SvJpPeOtIhqIi5nlguF9iYnC8-zW5TXmi', 'BOBk-XFXyW6mZog-vDlXoKNMPXXoKApaaEABSNV3p_pC_U3z6qeGqATkkDAys4Ee8apI0X3NbGtib3lO055wfVA', 'RhJcnv0bpxLOWs1n1UbUKA', NULL, '2025-07-07 04:42:33', '2025-07-07 04:42:33'),
(926, 928, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/f7LwFLhCqF4:APA91bHS3rUTXOLNedn3tgI7JfXbbKL_duHSf8Le9qKRzp6ys5M1EEAntsS0PgD1-Jelgt_tV3lJ79GNOasQr8DRA0W0h9ODsbORGTkgZFulq8Q_zbixR3Zl9oTfF8tvwyCU88woSAJp', 'BP5VU8X5qpeZ0ue4JqAKF6-e11bDlz-WHoIuKxk97PlMK8__a0U4iv9HaNlMHLtJtMrkUBcauUTZZ6Ibh8CQ8l0', 'vtL-XLHDXTEJgO4tnhWjtw', NULL, '2025-07-07 17:40:56', '2025-07-07 17:40:56'),
(927, 929, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dBgnmKUgxkg:APA91bG0wpX-gHm6_AxBBeRLAmjcYTqVbHfWs0sHLFeUccseimWNod49nvK2Lo-jRjhMR8IEBVGD8yv9cUtAv64WCffEvePvu-oT_XTeQXxSR9LpzYs93rfmQoFPMXwqvcDosUYcXtHa', 'BInEWhIF6wWiP7jH07jrKotIewFqhqqhnhNO5YegquJpccRKeLTaeEYMxh1O64pK3BknDUIHTVgf7Sjwi9lClNk', 'H99Rs8QMDz4bUJRhG6_F8g', NULL, '2025-07-07 20:21:52', '2025-07-07 20:21:52'),
(928, 930, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/chvyA-DfaaY:APA91bGV7OmY1TruaIityQZV2KeEzIG0PPraga6zsxzXh-Fe0-N6dpVZQCzQh4QRCSQeH8ZD1i4zDJX48uSb-57HaQFIcxQYB4COtbu0EOGO8cykRCQj_5sLZUV4veFM8U2K4ktElAzC', 'BGHJHk_tW6nqTzdOln_jF_-e9wGU0sM5-UyD7PctjQvKGLqZGJLvqAv7g8Vd33EP7QCelblQlGPTKK5fOdwkAfQ', '4S95_2xTkcnOjmnBIwJTyQ', NULL, '2025-07-09 05:49:04', '2025-07-09 05:49:04'),
(929, 931, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cNyQUCPpvjQ:APA91bFCvRFKBG6RudipSa1FyKYRXpFhXcH1pMWwupVlZ3Sw5EufoT7kcvc1au_UdGuxA6mmVZsyZf5Rf088ueu1-K2fZc9we8FDUXBCAqcD_U4ESxjLzlm4xVOSiTSlxy82LDvEu3dH', 'BP8XhknoTR_yr6_Nzvhr7EkSl0auUueZQQI84DLcfpzI7ste4x8WpUEWI2CcQhtP7KyePD33Hsz_mpj3MvmK25I', 'MqQFVFmpFZWYQgzJzejuDg', NULL, '2025-07-09 20:52:32', '2025-07-09 20:52:32'),
(930, 932, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dcR9Fclbd5I:APA91bEFXm5J5oEH_YDIFEmnADoiaaZPUPBeMb7cOB3zrOL-bf9aE5sq2-i_Np4VwK3cuOhTNpEZD-YZIzST2FjHrNn_7aAui4tdZz52iOLTdUIx8fY-AhoS80ivI_uAtJGMUMI7QEhL', 'BIURD_h_hJUDEgrgeRrgvazv9-QcCjY7ksr7GwCn1DVZp6Q9f0KK9quDjIfdiRmMOFuUNRFhFx5oFUYuEi0SxTI', 'IHA30JSMpTpuyfD4s9jIWA', NULL, '2025-07-10 04:33:11', '2025-07-10 04:33:11'),
(931, 933, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cTLigwPH42c:APA91bGOd5kPU_FVfU6U68zfPUFwIC_hHvYNDvhLcLgoK8FI9nxGxNiOjlrr627hr_etK8eCP2HMJbogfEiLx8P-xm_pq9tAWmHnZNYVErgWkyt8x_7gpzjLMFgCz_ZaO-_vJVIrkFc3', 'BHeUJWRmBVsd7B1dsM5L6KvpRRrC3JcQcuOXa7m-zy0R79UntSJ5_zN4cY7N2h68GN79O--mrbexVYpSRnFIjfw', 'ShhNXOVsUPNtDYRZjwaydA', NULL, '2025-07-11 20:10:22', '2025-07-11 20:10:22'),
(932, 934, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dh2JR0XUq2c:APA91bGZmuupOZN8-uWYotPCUV04ITFKvyu-u6fK-TPAvEIWup0cK_Nn_EWrC4HZj6Jy2Hhi3e8nh_7k6bMGtN3bkgq6E__l7J1QPXNfZLKclxkxu-BVZAQ1yNvpPVBOIM0U4mY1SQ-P', 'BN_LNqSKt7mNzXXxNmJAneeHlGO_GhqpCbwNDibMGHrM8AK8Omsy1Jr-bziVEaXU1-gxikwiPE7Mt5VHJ5P1Whc', 'PPg0QZYCutam8FXdYg6ZWQ', NULL, '2025-07-13 00:24:53', '2025-07-13 00:24:53'),
(933, 935, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fxTmdzApAhY:APA91bHuve3Gr0S7bImIpOyxlDOLiNB19pTuEpsMzDc3H7PXdwfeQWdXKl2LmEt8VfJuH4Pnpfybrrr1rkOo2pZ_UfIPcj9fL5_G1DOnI9o5cyiEOvwz6egGf_ml6hvs5mC3hYrPhPRp', 'BJtX5wZdG0Kt_mo_Wb5CbRMF9xUIKYtz9gAqKuEAMvj1pAyC_BpSoS1RClyQPeC4XysGW35Sn0DQNROY41Sl9nE', '9ovhXA7DnOOPWSRlJORWZA', NULL, '2025-07-13 18:02:47', '2025-07-13 18:02:47'),
(934, 936, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fPzbN2WE_rM:APA91bGr2z25BWwPVtKIaD-7lqgSa1AFBY9IiPgtSbSIms_s0MsEnZvzWOVp_nv2aaN0L24Qrf6c2YUlfq555DUsBQLIabAY4tfuQcuErMz_s27r2fwhrKAauLdGtT9DNwb7KjuK4Jxi', 'BGutOS1zlMfOp2xSn15CF7Dn3VBMQVGdzF1IujGyUpLf2tVMViHCalaPB96RtAMF7imUBkWJzHT8lzhR6iuolQI', 'vV3dbDlaqTMkyVDPBYq__g', NULL, '2025-07-13 18:05:25', '2025-07-13 18:05:25'),
(935, 937, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d2ifk11WtiQ:APA91bGIzKU5OCEZeSL5eso8GCoJOGdkGeVZr_UlWtnZptwfUkwEuUlDL5DNmdLWt1gBP-WTDxB3IxaQ5ALtVhKeMRMByYnCgrtKoH5Ua0X_rx8v7PcG9h7Mi4D2H3wlvQa7kiwnkKds', 'BN-Ami6XAZSPDJVF2PVptZXZGSS_6LhxyqlW-81YbjJw7Q2s1z-smR5VR--mcxDz3FHBQkDrEw0cSu0bjJbp1Ds', 'Pc-XVAkRx_1xEajPprYCWw', NULL, '2025-07-13 19:07:30', '2025-07-13 19:07:30'),
(936, 938, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d3nYYoOsN8k:APA91bEeI2-ZotLaSjZBosslyCu06jLqjELJiFwLFKO-tyEGDcOkmpQMW95CUCDsBap1HjFdbX0cqdbmW-J5fo_iTy1fU2SxLkBY2meZzo0CP_8ytPgrKtJMNrdk3y-yWsDytXxblvX6', 'BKN7aHg2ua3DcQOOFSCfZ6ddQvSQWnh8cCHiahppkqgXzxBkv213QNkCSVnnuPaECjPhTjxQAygwsutWErEO-E4', 'zSjCJKZkxB9DLtREmx7Bfg', NULL, '2025-07-13 19:16:06', '2025-07-13 19:16:06'),
(937, 939, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dTDIyeSuoYE:APA91bEl4yVmkAQUKCTyFpCNPIJuhMUin4bq05vDUVIZBQoLYFM3VAyl4Ane-0ApgqukfHpUKob9N2pu8SOdYCDSBLIl02JnHDAJUyGu8IwRyNxbLv0d1UjWGJVx-bb2YNnpeXwqcCrI', 'BH1XOzXUU-NV4M63Y0YE710aYub3kRw89zHBe5-4QxmsZzksoQbefTWSPzVJ0Qr9BnzRvSWSXtG0__guW2Y_0G8', 'p_ZY96DHlLmYSl_PQLkq9Q', NULL, '2025-07-13 20:31:07', '2025-07-13 20:31:07'),
(938, 940, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eTczmUmsewk:APA91bH3mrod--108YaNHqZJFnebyQhJdXCtEGdEwnkU4mHSRuK5b65BzP4LsYbmdNAA9hPRbzW-6n9JIcaBBw6dVe46JHhCo9V8eKfC2x_jIsy1aC0Bap8Xd2N20ruSRWCcqFXcX73g', 'BFPEjbRvBma1mJDQH1hPm65juBRMWkvEcxPc28BNAPG8fl_mjhOTbjVMUWRxuPqJyDI1j9Cux09Vv0S4fHQll_s', '2ElNiYJfVeci2o2UyZDTOw', NULL, '2025-07-13 23:15:53', '2025-07-13 23:15:53'),
(939, 941, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fJy22e2gPyU:APA91bEyJlKI3D6JuXNGMuUI92d8yFPeVaStAZCj3Kp7LYTjyOsIkriUSAdUvACsHMPLPym6_yU0VhcgQSoVlUtcT6zW_W3LLty3xh3qppcai_3IuVZEFRSAyG0UQUz9XoLh-b_qQFmZ', 'BKYtsAoNUPE8PE0lt3Oz2dXqm4p_9vFfo-0ITNfzyiKxhRdpXcoYuOGMCtn6Bc6I9f9tJddLxtXu6BRmzzBNzAs', 'wLopA0SN3wmyp-dGZ9epBw', NULL, '2025-07-14 01:58:34', '2025-07-14 01:58:34'),
(940, 942, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cE15b4ARioo:APA91bGU19xGDfn10tqfQTCogoDIspYRA1HTyeuAVa0CBWzLrRzTsZhVnF3BLH9u8Rn5VzFR2FaODqHFKXlDepemGBJhYZrJrZrkLVHn19yroiSCUEcCUOCVqrxrbvRFyw21fvfPFE87', 'BFNUcv5sIVv1I8lWWu6xyjeYi2wbDIuqw0Q5OaVEo1rzUU0y9S9jAe8IJ7KukuuWJf812RJvOr5LW4gyQN2GDy4', '7EXyxSIGg0kMwHRs1HhtYQ', NULL, '2025-07-15 02:44:50', '2025-07-15 02:44:50'),
(941, 943, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/e2FbBqaiQmQ:APA91bHVr8_QjVWjfhgNUqsK20vjOxJeWEyvPyXZIaSup-bMvK_BgDBAFrplxDGpdNJBtrgQnIVU-owHX2s3DmmSY7gf2gZyf7lqxWlntfoi5KbnzKBJYzivepPtm-VXx3AUzraTf66C', 'BBNTkRhsxU78vn6UMybR--w1kwSF94moPA_lEdNjrcytGkhMywQR2tJqCfjvLoPZrl8tcCZHHuNHBHRZJl1tEpM', 'XmozkcfixtUzmHMX3i017w', NULL, '2025-07-16 00:51:02', '2025-07-16 00:51:02'),
(942, 944, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d1jzjNlffuc:APA91bFG-4LZZdj3NDp_CCrZCcD8HPqf0kNdEsT2VHkVLZWh8cEepkIm-kS5QO2SAwDm3rajeqLYTcvxFmLIfDdS0Z0PYdcs0jPqKLQLBuZxTR656p9v-qrJe7osQzlUimcw6Tvgq7UJ', 'BFnkn2iNgaJkLIZY371c6fo7ziIT_Gz8CZQaJAAqfQO4xLhCAX057i21AOdH2mhBFc1iw6F7y929qSBhKiGi79M', 'wzCyYa991cCca6VAOGEpLw', NULL, '2025-07-16 23:21:05', '2025-07-16 23:21:05'),
(943, 945, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dvNs7viW0qU:APA91bF5xOnwxFnCM03nh8Aqg5pe7fuQ9mpRfvtPqByFy4Fho-zNwIl9PoC1NjiCS33TAuIMKpkbKX8tFeTUzcXMRI6lm1SqhnZctEhmWUuAtvQGRwLyAbMKjmySeqNhA7Laz8ygwEAj', 'BMUh8TbtQgKIqnZg9nBBouf-rKpUcV97y17DzvYJ3H4ppWZz9kIVMaC1fMAFH-ZhlUDs0hpLCq3xbT_8O3GVBO8', 'nioAmOkzXDDbT9vglt3S_w', NULL, '2025-07-17 19:06:48', '2025-07-17 19:06:48'),
(944, 946, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fpFiKZS2SE8:APA91bELluzoSpRnnoDStnLFtoGlg0JmDARDmsSqHc8GjPp5IfLt1Etf-qQbfAyLp3ZdXk8syp3gauyhC2nSfi1k7zST0EPiUFJXkbjJ5bm7DdTQUYXhaK0CGBqk_SAHwuLctW0WzdCo', 'BKYgofGdhhDF9I5oB2n09OWrzxWwycBYNewSuuzDgMcxMO3zzUExb7bKcp42YwOx_4OSlLc-HxGC7qyBNinULW4', 'Q-m_gLe6sKFlvZ2Xsn3aIQ', NULL, '2025-07-17 20:09:06', '2025-07-17 20:09:06'),
(945, 947, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c8B4RI19QBw:APA91bExlxbBikxQd4EzYgrp8p0jrYKYzKz8fXJsdiTOV_VUdZRfj2Iu3lYzrJxxyKlPblVTNtYKH3Kl-GGp7yIiPnk29AdRu9rTSiqQtTY8zp-xX6V5Ybm1loUm5_ChVpXSLvnker0K', 'BMf8KYiQKIE4QJWdsFxJ5pjD04QylF4t_2FbpAKVnLy0iSUrcYLYV7P5aVVhTau--NUM2VyzaUzd59rxZuEcQm0', 'o3wr9ARixoKIeFB3t10-ow', NULL, '2025-07-17 20:19:01', '2025-07-17 20:19:01'),
(946, 948, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fko_4KH3vv4:APA91bFoSEKsdtNedG70JSk_7bIzOkIF4S_C7lDkL50wArXAkDuauMIAiXddvcFQQEQFbGVcy4avUl_KXepQ1M22iElflXvUDazB16RlSMbKRMIYE4tUx7yEmHAFLZSy1bOgulFla1E4', 'BGG_pU45ziSooLy37v2TtvgAO8mUP9Qjw0qlee2ASTf6hd_Ahzt9MNjgOFmyy1YkGyRi8yC4HHAlbTlDymQTV3E', 'sZ_MZONC2uJPJ0gXb0pK1Q', NULL, '2025-07-18 19:23:39', '2025-07-18 19:23:39'),
(947, 949, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/clYzU1Dxzpw:APA91bFah05YzghUpPQtYoEyKvMDWPwGJkNKTEakBQ0lOf_AwcpXq_8uoEsV3MyTezAjUii7GEpg-kRJjLXgIAVijlUzNBnOSDvGfmTCnJloJ5q1EuUde7JJ_Ht6c3jraZGD3Q_KBNKG', 'BOSj0FAcVYyOWXrZ3qyYsCOuxaUhKNB3O9l3un49lHx3m00P6yGveycZs6e2dr21XjpxYHVMwE3DdXEUNuZdMUI', 'y-J3gAEqtgUlguEWuhHk1Q', NULL, '2025-07-18 19:27:25', '2025-07-18 19:27:25'),
(948, 950, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eAHmXFR2s9o:APA91bFQWQEaWCQU60VLjEQl9lUetbxyDtS9fGcL6PxI3y_mOO6tmO_X4IIp44h3Fq4eSF5_KcqWc8UzpLaCPsL_5u9mZP0LConlquTcht5aVhzLK_PTiRiAVTCbh17vFW1RsuZIHsin', 'BCmlxpsqvukrbRYbcWB745ldu6ceTuafrsljbGRLI0m_7TRFx_tI8kf9RUtT2A80bI2-wossc1PAHcC6Xe14ffo', 'otuuyIxfZAI_y2-LhsP5mA', NULL, '2025-07-18 21:57:22', '2025-07-18 21:57:22'),
(949, 951, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ejRuxN20EDQ:APA91bFSgZQHDflEJSi1jsJTGEdkcdsp1TyBavR9DeJIEmkAxNA-ZTOzboMaNrusnn2Kv-8rTEa8HGq80qUQri1965LlBVnOn2BfbA5BG8bEaC4E76C8_41hGsYJfDljxK-R8VfjAqSf', 'BG_D_OvZJmt34gfZwA4mfJiORM4wGsHbYUTQu9DQq2TSp7sy7lJlcwc0TSVl6o7vzUp4PVoKSI5_lMZ1H9EzAGg', 'AOW0pU8jxpjWo6GccV0dyA', NULL, '2025-07-19 03:17:18', '2025-07-19 03:17:18'),
(950, 952, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dEb9-QwV2BU:APA91bHB9__jSmJ_ixVkF00474oeWktlu3WPipNN5Mxc5R86r3KHfWCPaIBGxYSwVf9HExVmry8P6hZrwpk0q3KypjRyLtjaiBklmQs-nAdHmWgq_X8O9Hd0rClM8AZrShzEUA078USB', 'BFhiHdJmGEzPhwbRw8RPKpRRH9HWAYktTGoUHeRG6TAlCeYBNzXzmG1kvoS0DgXpDkJR9Iok2Hrcdz33Y_4FUQI', 'NdPCgOvizKAgzVfrzoUwwg', NULL, '2025-07-19 19:11:55', '2025-07-19 19:11:55'),
(951, 953, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d9_BNj29HGg:APA91bHsVV4dPo6p-gJ80JP4oN8YlqHIJItwfBYoMGhnb-qkAb59Jo8FXLINAJILXa4PSnf7VHopI8WlD2xJB-AZkBBBtb6v8fm_qY2UX2IFdLpfuI74LsAoKrnLDnjNCSCfpQ9-00_R', 'BINb0lhmGJT4QUWRN2ESA1mmvNE4gECZeVjqFZ9CPKfBIUr4OK9XU5_1C-oaad5A-ZwlEtNbWPdr21Ko-dCSCv8', '-kzlxUIWe9ido5J-t2eaCQ', NULL, '2025-07-19 22:27:18', '2025-07-19 22:27:18'),
(952, 954, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cF73FptPbF8:APA91bE-IPiPMXiu_D9-klGd_Uuj2Nt0gE4obLnbkDcHhBZAu3W2OIqqgLmHy5TSlfgDZuc6QXqMQMNTVplC0CuNhV5D3HTlgRvMU-C66wGwCgB1_qByHKjstNreFxDRv85dTmSlCGwz', 'BHd8sRhEc7JziKZHEkkhDi3kbdzsZEvg5_DbMYZfAU_qn7D4n3vDDvJFqpvY8VK313dYXYKYhGRwy_wtnnVAdCw', 'cuwfkh2lpZWKyr_ReK8I5w', NULL, '2025-07-20 21:38:10', '2025-07-20 21:38:10'),
(953, 955, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d41vNsWqs94:APA91bG3WQDN08dIrCLzssLgBRF7Eo7ATeRacQdcWAPkERal_TUFN3w_hLnlbuwdWV3xKu-SYXyYbbKxUtXxNSEd-w32xo2JKnXkQ6GhEUpmgM7SvRqEQCiYCIAVvfZ-ANwFdTbeB_Ra', 'BEQv2NKnOyzSqd17R2UlBcA0XKyt5tSUN2XAdtLjFvCMDrBHPTEIa5dbPgz-T4yxGmhNNSoGdJHa1jmvWGL7HyQ', 'qOcXKx8F39_aY6-D2VQltw', NULL, '2025-07-20 21:59:08', '2025-07-20 21:59:08'),
(954, 956, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ek7I4uHW9oE:APA91bHx4u_NjfiJ-RM3MqDE0LfI9r9zH4KAyVYPrm4s16shldWaUAflqJrMMTn6LKGlwAoiq2S7kHgoh1ESB7Iudh3FpzKe7kaEKuXgiMdfC-RDQo5OvHqtrBmTg_z5wL9NydJnObly', 'BFBQgSDuHVvg-1TiiqK3tnd7VipQc_oI_-7j_dUD98qk34qFnCyAGBPDzagVjTEDTVhA06cDSieLoA6mjwGUsnA', 'xeMF3LKSbAHEW_5yE-w8rQ', NULL, '2025-07-20 23:26:12', '2025-07-20 23:26:12'),
(955, 957, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ckcXI5AVrWQ:APA91bFkigkNtu_Jz7mLzNJvddpWrQWqusVRqPrjmJ9Id1cujs5LNO30hdeXOl5DPCCelkYjOCYfDxQwJYHE-6Jgq7Il7sTStNzgw2B3hgmePnXdVruoo-qis-U7FYzWRt8mr45o1mb5', 'BC9OPWwGe_iLlFmtQxRcS5aPSZ18i-Lc9rfzFjVuGgVNglUh0MwD5KrfpEGm7QO5ulqxa1AyR02i7xmANPejzwA', 'F6qFYzeh4aDiGDvCUQjCZQ', NULL, '2025-07-22 05:18:19', '2025-07-22 05:18:19'),
(956, 958, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cp-AnQeeMlQ:APA91bH_K8idlsF9gb0f7me-nki5pP_T1C5b0a9yig_IEkMDMdjTuizYjlFNR39gWTP8dstUXi5OoMdPCYbFQtj5FR3maFpukV-4Eau0-AuKJIXPrKgd6J5LPqrwxImIthTWlGH7x4lq', 'BJcGY1DkIAbxW0C-QnvyGZelk1WKCETcWijiB1SYzwIsIX2dNoQvSyNe4MoSCqwax55rvZ5j0r4FPNvuZmQJOOo', 'TjyKtpfAZ04Tf7z5ouixiw', NULL, '2025-07-23 02:38:44', '2025-07-23 02:38:44'),
(957, 959, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ctxE2VMtwmQ:APA91bHbMr_ebSbVU0kdvOGkOXhl_6bNQbv6eBiFWGzJVl4eQ-q1Y9F544jzntbp0uF-FY_gtEOOJDuaWx5evr9OrMOw4feeeJ_L5sMTcpXF0qfeZ92FrhLMya2uB3P2lKAKxIjF3ILD', 'BJ6F_miJBtrQHJYxp1mKYhv8qJA0zsvH2y8hC-tgXPhTUQGssdBZ60ZsWHmpTl91VhFnoyToZU03aiXrWvDegrs', 'Nmk2nMM8yTVmdKUQQOfnEQ', NULL, '2025-07-23 03:36:26', '2025-07-23 03:36:26'),
(958, 960, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dsCrAqOUWRU:APA91bGLNKK1CQlu1uzlxrMZJjrVbddk4vO1KsQeTGUVNvk_-mFaDMiQVzLqnGp7Tcf_L97mfyBJcHmLc_9dV-bbvJMd6JqoHSxx0cqwcwDD73P5fEERQdaOSIXE5gpubn6WGmNqJQ_f', 'BLbAzmWwZqwIk3omjissVFqt0PZbHIw-eH8PPF9sPMiQh1We03Npn9RPnHzpc5LKQAXIoBLz0g8naqqCWmXupHs', 'xU59CwkRP1IjAbpZ6cQsGQ', NULL, '2025-07-23 05:22:30', '2025-07-23 05:22:30'),
(959, 961, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dofRDxoee6o:APA91bFWXJf686NkF5IivOTYEcNiBTvWmU3hXvX-OpiXx37KV1efQi9uOUkqIAK-TEsbHCGawKgJrEOb0_Fbt-_sk7bOL35rPv9YeWUX41V6jsZIe5YMWqLQy3gHvxY3clhFcMYKGotb', 'BEAEhC9lvKiF13iQeBRntrfFEEsFJfHF31nWsfg-r9Eo3ZrNCOayjeF3lFwiwjADCZAVLpNOQ6-W8orQlnLp4Kg', 'JT3aFT25tuROQcBDdIoltA', NULL, '2025-07-23 19:26:41', '2025-07-23 19:26:41'),
(960, 962, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fV_USU0ShtM:APA91bFL8C7nWOFBVsk_qg_uH4CcYrjT_Pptc_gMnXzywtumsxYGePWKUaHLIAsssj_e5ReobahODvFeMx81G4g9hiWeBiSMup1Y5h46jCHZPauoZA8elZeg-t3sgKTuUgKxDX0tKnut', 'BAAqwHg4jsJ51Mk_Io40CYswFxjaKLLq0bDDVPc6HUp-bLbA0BsApbZT32vL3J47N_1vnNLGk-h6abw9ZQm3YRM', '3TLj13K6eO0xOLCt1juf9A', NULL, '2025-07-23 20:37:04', '2025-07-23 20:37:04'),
(961, 963, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dMcFq_4PFqA:APA91bGLvdvnKd10HgxCnmgtoi14QkvUV088jQu2VKImyk0WY1M3d5MB7D9Hh0w3GyWupabPqv1wVQ-CtTCw4npXNJMsofOdUtggN4QURt823w94BmcZ-DfKCmfGO6CWBrtS8M0mDR_J', 'BGAwyxGXBUORSyD7wBE4Q7_Zw83tKf9TtVLfAjYRHLuqeYjNfU0cOrvtnahiCl_v3MJ6ksVcVgJc9RcdbWguczk', 'D5zYjAo9JeQ8GYizYd6jfQ', NULL, '2025-07-24 15:50:05', '2025-07-24 15:50:05'),
(962, 964, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cQvSTntJ35I:APA91bHgNmRme4wJ6zlRMmQE2vfpFaw2nAtQhjFe5ZidgkCTEavrJZWL-BZ-VY1HutwbQDEQgxnRMCdAdojt_UTHZmS8BCbzVNztkretpvoTQ6M1Tjiq4DKWEiNE8bCgJjKSRAgf22OP', 'BFcuO788CgwhAVVRNxcCBxDEswQvR9-lYRg8aoKv-mX-0HKBP1uqo5TIrAZQEr-4P7AhZLMZqyt2Q9Zb8xyXipE', 'n8AB-sq3YMfSi2zgSimWBQ', NULL, '2025-07-24 16:27:50', '2025-07-24 16:27:50'),
(963, 965, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eiCfnyjJHFE:APA91bHsFxFh3pNgZtHaFcNGJVIDYOhxQaDHsfqLdNKAE7M24-QH2N4yp9S2f5L7_R-gwAWWdcP9hjyBHB19KUDs6cySkEczavbbrJt-mSpnakRg2Ax_Rya-kCW2oTsbdzirFtmY_WiZ', 'BIX1Xw5VgpN80QbSJz8GYQGhPNgwT4TFW7GVcLbuQGT5MKms7zoUiDPom6BsiT-5KCsxhRtfiFsZqwUuefhqYfw', 'GZuY8BWc4wLqZbFijpAHkw', NULL, '2025-07-24 21:17:20', '2025-07-24 21:17:20'),
(964, 966, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/e2S8P2ixDhI:APA91bFiY1sMU6cIX-Qg8qfO0VoWyyFbGJ59XMaglvEI2rR3mABr5STiVgFL32qlVDFGjABVcyaUm-72-fQtbYFnodOWk-QpgD-mk073G6jr-jGbsy-uA1HUZDAnlQzx_ph-Lsxq12dS', 'BHclyjnEtj2_hNJ7qpQfZkH1Wu3GctHSKxP1SlMHfcawZNspAhlZK_ULg9Xzr9vYarcmvlTnpG3hCtTazCT0aOA', 'ZajXZi7BaACYUk4B6Tff6Q', NULL, '2025-07-26 01:43:42', '2025-07-26 01:43:42'),
(965, 967, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dh7VSlMsUNA:APA91bH-Ny1qRgLo0nSrA3JoD1ZCKQknc-I6pCFGYbJq7eeFSziVZC-Ln3LBG9LoYvwgSfy4ydDB_cyqn8tFNy8s7eUOxgnPr7rWr9zA2D5FQp8r9C2kqjoNi7Yp6svjLqVksTZBSWmF', 'BA1Rk55f1EyiLvgB6Tnoo84KvdqZkvSugAGgaRxrQP-IWV0OClXl8O6Q4IHoBbkRw_popw62aQICl4dWQbfr6dQ', 'ghhNCySnhboDe7cpF_2EjQ', NULL, '2025-07-27 18:21:04', '2025-07-27 18:21:04'),
(966, 968, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fWlUGQevy5I:APA91bEfhopjmGPEgbm3uMBw0JPRNhJMaZyhluHT4nf-dqmib8k79_PLCNWaFfpKhYZMSk0HvPzkEFFz-TvBMNEFF8SxdG-9VgZH-rEorS-aNWiGVrQ5eN-2rTOzDntDKSLJC2ShVcub', 'BJFg940dY4Ciz_U_UOQwWVj68stCETP7ndnFnFs6WIt3qZDoCUz_Zy2Cb0hKRCTvdk6XEl-g07hKLfJdCMOWBng', 'V2SiPs8rVvp2NLzyYOyNfA', NULL, '2025-07-27 19:35:42', '2025-07-27 19:35:42'),
(967, 969, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d388kWG9zGI:APA91bHA-8MgeJLnFAaGfvSFUTWH_LXqVXALd9ZZBCx-JBuhqNNOrmeqf94ONz_a6nPseeIMsayGHzmeetYPD8hP6pSupvgmMKZBG9NqV4SrMfLlju-9mQ8DwNGOeJSwdJu6UwWgBCMU', 'BFSEc1yo3L9lp3hNRLRCFz7QozPwpWw4yhGwbpWFUMPumtt9HRDZ1RxcH5Ub5wRWiKjGwJz4LOj_UVLHC7XGQwY', 'nPZ0DJ8amlo4yIQGDPYgcg', NULL, '2025-07-27 19:43:12', '2025-07-27 19:43:12'),
(968, 970, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eHKn11TKy3I:APA91bFKYaya-VkCE5iijgjLHUuYPaxiGtjYsh-H7YZL97phSSSBvIPMSn4cCs00zGEyFZ2YT8M12pNtNX2xIMpnJP3K-I-Z9at4HUyofP4ir1t5Xik0EtnlVrisFh4me5WdirOSw1BD', 'BFWJxKZ9ZhhcxRxZ0_5PmDP7pj-Dw4UJ5SZwZ0MHAqH7pAKjIIqxwb10_d_1ytg0YnbSmaHIUhLDCVKLesRRCeo', 'D0l5osMEygad4W6olTFKEg', NULL, '2025-07-27 20:33:16', '2025-07-27 20:33:16'),
(969, 971, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eADZme-Qpkg:APA91bFZSg4hpmI4pcylsoM0IygLJqq6MGMgzVfjdV2_Y_wWvM8C-CHLo8LpnYl4Sf3v3vvZ2auK1HJSqcz0v7WpCwK_oy7NzOLn3Ot388BTCgodREr3zk84kI5ejl71iGU4t--zmWEN', 'BI-1uCqsTW_dJpXi06K8hggdRqLynkWaxWe0QCVqu-LiIhgfU94puv9otIe46t-hQsgktSVEvXo25nJptyN_mF0', '4pUZOtyK0svmJJhcbLBt_A', NULL, '2025-07-28 04:49:05', '2025-07-28 04:49:05'),
(970, 972, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ebaMAV3c-ZI:APA91bHZXK0wXRX7Wooir6MAQixbiqsB3Fa0uB0oPX6iOYCX5hhzI0VsGnuxipHEzFnefQHicCwgjiO6KKJyQvPJJxthJQMJn6P_l4aDTtoJj5_mTFMTnoIX1GxT6tzo5kJHszGrodIh', 'BAZD1l23xTL-Y97hTTZy8WJwxyqG3JbmOh924cU9kUK1K_Rg2Jo6IoECjZuwa5lRvQeiWclFBlRxJPHVBI0RpRs', 'vbDLf_y7munz1-h7dqmUnw', NULL, '2025-07-28 17:52:16', '2025-07-28 17:52:16'),
(971, 973, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cZVRBcgJl4M:APA91bGr1PIpDI_JS69bE7IJpFUdpKr6O4PQ117Sx57FEildPKC_w9WvqhnDf8QMRcDMwvw1qh6JdINdxuu9vJf_-uW4m7eAXQ2XHAbn4Bu6CwmgRd-QIVqO1dP13fdQlSQ1fPgWJg3-', 'BFShFpzilXmIAAHrSwitqxXbgljGcGwSnKGONUhtPMGDKOAdZ42HzlkQ8KLOXITth11TYlN1dqk6tENMn5nVzR8', 'KfL8rXCOjp_9Ode8tzE_DQ', NULL, '2025-07-28 18:01:57', '2025-07-28 18:01:57'),
(972, 974, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dastfZPOQdU:APA91bE70IifbYpjb-i526lqxQZ9IzAMrNQeJwtM0SVojnb5gJBa0K-AsGuEviQ6aO8unxjVQWUAVXYCf0ijqdvw8BxBOMIj_4yKKEbGIOc2FkxLYz0TvRav4rPpUIDIFLLYYm4okREt', 'BJNZGBt4PUyExMZxwCAuzrEa2T5hp5gNqzn0ckKXh-QLkP2JiTjkeR0gVGk7ZL2E3q45a7u-mA-gkq63AVAtiyE', 'YZioesqHa36NJZZSn63TTA', NULL, '2025-07-28 20:46:45', '2025-07-28 20:46:45'),
(973, 975, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eBuhF32OIoc:APA91bGd4JqgYF2PF82NvD4M5cYkDxDGibyduAn64HBnOzSBc6cnIXQvsajKeq2M0SI5WQvyzRJ0FqoadXWzqkCHzLI9KSSzWQ8ivj7ZU9eXuzazX81aZAMEiOJn_T6ORWTPAz8cntOB', 'BKPafyEUul47KQe4GKIiUbClRICRpXCPF07U9CQ7ww_o4FzcBKXoanQYW_IMwe4HHb47hM2R4OwyhOVOezamJlU', 'HWkeCNGaKaEHVan21zYeaw', NULL, '2025-07-28 22:34:25', '2025-07-28 22:34:25'),
(974, 976, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cbdBvZ-16IY:APA91bHmGUZFSOjED65UNdAf4CUMJ5cU6Az-a7K8najcicmFi6GwRwvXdKbt4sJozHCuXeJwc27iCeQBixaV577ZWBTuNUwdTb-2exvXo2EUd8n_uAgscKWyMJDC-1MT-yZVpH_C3Whf', 'BHV32fvwLVAFtvWrU44NDq7VBHXcimlqE7b_gF0fe433-5dpoDm8KGzDnj04fOSVM-XeY6lUD7MD6-kSUA3J7BE', '2lrvaPGwNXp3hBL9lXMI4g', NULL, '2025-07-29 00:51:33', '2025-07-29 00:51:33'),
(975, 977, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cpJ3gKarYtc:APA91bHnMupqLUSajbXgUNQvejUiIxhik7TeBahUEyYeHwDEN-h0QTGdm-_R4_PiUzAnO4vF0UZWjDutrbTqRkMD-j2Rn81bmLBPlpNFRe8lFWcOp-ZKJZumgPJNeERb1aUVMh-9VssQ', 'BOxHXhH4eTBsnKeNZV2gwcOztVK0Nx3u9ISLy62myec4quTsmoM9nxR4zPj5oHvPd1AULsi_-VL38mGbIoHcheI', 'Hauqd0Qskn3v-5QDk57aHg', NULL, '2025-07-29 07:08:27', '2025-07-29 07:08:27'),
(976, 978, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eZ3N9r_Ojno:APA91bEK1DItxKjh47NkdLZ67r_E1SS4E9pjaKLZg-nfERQ77drkzZUsJR2T5ZjAsQQA7D02WVh9uhw51clywWdSllo-Aby-2gVSUEQoAr_Wv-RpA81jh8k9iK5O-jQdkMbn1g5wl1E4', 'BDHMpUQNjZGibcl4krwK3ZbpfIz77cXhiAWiGK5ZqZyEJXNJ27rNzsoj8AElmvp8WWVk7nY9J8fETMGq-7W5mHs', '7tZqxIkg_ynTlneqMzhH4A', NULL, '2025-07-29 11:02:27', '2025-07-29 11:02:27'),
(977, 979, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/efs7eFbmM9U:APA91bGBvQBgSNEl_jNOxxnRQVvjGR9FjbNJ3_x27QVvoa9PyntpnM5SooUo4JEHEmbERrKj1Vw9EmY15gY73yalakTjbJEX2sgD9oUTFS2T-WLzA8yjgUiTkEEpmYpr4hSqrZ75cYZY', 'BF9pwVF-Gz46JUj5t-wEoRYXdH-iN0lc8zqB3Ob5Z4R9gKOEjBG07xzUHkEEYyTaa9lKWp1bus7Yw9jyzdL_uYo', 'vycz30nUqF6i7Jbkv29mxw', NULL, '2025-07-30 22:04:47', '2025-07-30 22:04:47'),
(978, 980, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fjEzkZdZkaA:APA91bH0GuEPol1d9RoaXwgptY7g92UXcwPtfE0lSG063xgdM6IrcfJLMjuCvuWQs4laYwjeSWXslnReNoGtosSBeb1fRC4m8VBciDUm7mFkskzpFBOH3rpa5kdWIq4tXn4A5_KAyom1', 'BEuf0KaFnmDpsIO4T1zZc9bUCHXiJMLt1xCsolNbyF8OCfCyTasQ7MdW71KOBMJ0PcfMg5tuSFc8UsjP-Xwwi8M', '6fCqQCtb3hKmk8LBGjHKCQ', NULL, '2025-07-31 19:29:11', '2025-07-31 19:29:11'),
(979, 981, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ecsMd4v58rs:APA91bGh1osaEbKqRq9r5vTzM2Rf-pZ4ggatBl5KlCelCy2KmCXzVlvGOEotlM0i6B1aq3oFBJLcA4WtxgAovG9_n4JeIyiRohVbaEsLt-MJwRxFt2ZZEmZd9eXaC5SDe_i5EZIV2Wpi', 'BEkpeIpUtDJxAmUQXMAAW5y2w_gvKxx9WYMuP81Wl4hSbmTaCinZj5mELNTim76Fht4-zDKKssLRlisn5ZIq-lc', '6-oa1h4a4wJBAT0vTQ4tWg', NULL, '2025-07-31 22:45:41', '2025-07-31 22:45:41'),
(980, 982, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fK8zg9WrI4A:APA91bF6JQd61-W5w9Ofo-Hpb1ShHtOhRUpKP6F9Zx4Q2FP1llgzc3hVah6_47gm3ND53WaEr717KMpVGE8DWKW91OPy0nKO_wwNaIPD_u5KsVJkUeV-aFhaLK5ELxM-B2oa5dtjWGQ5', 'BJqznmrLI_Jj6conwJoW_cmQYS6RBYMTFxlif9byrBNqKgj-kbAi75tJcb4gk782MQlT_VzifapSKoM5TKzvy3E', 'MiTysTylN1jDo-LG5j35Jg', NULL, '2025-08-01 06:42:59', '2025-08-01 06:42:59'),
(981, 983, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d0LAKlYiKC0:APA91bGiK2wx4uEr_52EIbjlGSowPRrsSDRYCcMxSBn2RD-7bs8GwdXfoHTF4on8siX4zoaCe6b5XbmCf0qXq-70MT7pW3Ai10pS-I3inIZ582SiY5WuG_Js0oUiV7KCxHOJIE4fY406', 'BN4sFR40wyPs2YiEPauz5n3UrCU1FadCNVXjhUl0a9rJQwMRPtf7c6UcDSrpnbDA_hS8GP5-mhuso4t5exwWKw0', 'DnvCXzwtWHXgD6w5veC1yw', NULL, '2025-08-02 07:36:55', '2025-08-02 07:36:55'),
(982, 984, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/frCF8LubJMM:APA91bGYFp_MWTGWW9LY6sRiERXP6TQlYX7mNHJTFjc9Q2F6SNf1Gg3N1SPhMxK0Mv2qWA7J7ifIARl3Tsw9coa8t2mdU6ehs0DLaqH-0qimuhOEUoB9Jg2G9FiKhm__hEoPpmpYGL3v', 'BKxgS_utS3zG3zM9WF7xHt9fm9WiDfbnCL-7ogyaYquCejklxcM6VCvPyJt77rIGn8BXln4Cm1uMoFqe9GSNapg', 'M5yeDvcLHW5GT54eLfuSSQ', NULL, '2025-08-03 04:34:37', '2025-08-03 04:34:37'),
(983, 985, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dv1k9u6BEV4:APA91bGJgPY_gOuU99e509xZgqRexyDh0gbgmaPwsT6essEcMFnNfqhBNO5GvXI6zC_-hw3ZmKR06Z0P4qhWs0HdvP14LmEM3wRJz6ojopbu76xhOEH-SYub09k0PU-WAkx11hzpDOfz', 'BCol2BbPuizSgWOyenxhkCmrZc53FgDHYvCjSjFESibOI6kn6wvlX-ePWLqDEBQ9V-52svfRg8a04XFdJ4bJ8WE', '5C5_OBXlOBxxUHhN5PdFUw', NULL, '2025-08-03 17:57:30', '2025-08-03 17:57:30'),
(984, 986, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fo7SzJiPhME:APA91bG2cmibjpM7yNlQQKK2ab_D8JHJgv3tt7FQAa_KhbKX3FDuUjpAOOjUqHABxR03i-XcEhxx5Xf16ca0eq1SwopRo7GbCC7OHzaw4v7h5YgIjGynl60MJo7iihNdL6l1mLa-tshD', 'BHxxdGZ9dlZOUNtOkuFUrgUeUW-VzJnGxF51elIWHeYVt0auU8gXOC3X-rnC0uI-1Hr0QzBipGQfhrGtCt1BWLU', 'APAeXhgi57a4oFnSgDS1Ag', NULL, '2025-08-03 21:53:50', '2025-08-03 21:53:50'),
(985, 987, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/d8LorWAwhBU:APA91bHDUTULa85m0QhfcGvNal4vYpAQtuyujN3VV_R06SNAJKoKc7O7DSyVn2jRicdUYVfCFHE2E5mG9wbzx6acgWjKQJC9A5nG_II9yhUQBSDqtzlzqBEQgDBt2bzl972zkw_pvpwt', 'BGjSGEgpWdP4l0AWf_RUBQY9X_lG51I0n4sAfx1gacPKzuQX2YGPoZvJqa9L5MFt-H16Slh-FX6a0acexPuY7LI', 'Iy8vGMqhCE_rC8K5RF9JsQ', NULL, '2025-08-04 19:21:03', '2025-08-04 19:21:03'),
(986, 988, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fsotygI5CdM:APA91bGcwjtKhd0Ntbt7c58pB8OzmUJUMD76Qk_Bc-Rs5Y0FC-8Vll6wAf0uX_i02ZJsoII0N1wm67MxTUT6mwXyHJW-cz45Z53vcruxUockvHwW0oEe_VmgwZfJ-FV2rAI4J98efh3p', 'BCnbPU_3YlS3Onmr46YHXUyhN8a7hjUCe5J1jSgwL6KAqzgZE5xSSitVymYByKBySH8hGwHH3mUb0yVLqGwzhic', 'FH_RISSDPkPEvOWq9VMr2g', NULL, '2025-08-05 01:32:24', '2025-08-05 01:32:24'),
(987, 989, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dX9_iTmwh5A:APA91bGLvkVi8NzvJp6qLM90GPpaT-FbtEPr7sU_lVU_javylvGsfO7Q_a1TUiLtuQJJ4yxSkBPiLDxqlDP3CPEaMPGkS9b5u38hfTjYYnTGfdhWbtvF0oMh-oc9vAmHiaq6H2aDKx7H', 'BDQwAmxMFuiR6vd8eUS058sV3TiYNc2IKIOvYdUCKxtpd3Ny083J3_dSyXp0snE2rvvWZ_nVHQwJW8tOD3lUzGE', 'viN6N27ennjY-FttOuYe5A', NULL, '2025-08-05 19:37:53', '2025-08-05 19:37:53'),
(988, 990, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ctU0kMfKfqQ:APA91bH20A5VSejNI0_HB_-BCWvEsApUo0IFy-5gDJkG24pRzyamCx9_j4TceQYimXdlSAaGTyBXlOOUiybCSJSl8_YYJK8IB0tCijPCRxavQC3YT9CJKYjavayplBIhEj_hbmd-dDlQ', 'BGJe4NJe4YNrXJWaC5Y9bit31WMYFnyLT19EjvH84xCVXNQuGNesKvAWWbVgoP1LdZFIhg7RbBOJb393adJqqxs', 'GT9UGZhTbBKeQIv6bNibBQ', NULL, '2025-08-05 20:54:52', '2025-08-05 20:54:52'),
(989, 991, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/f5qw2zfX5qU:APA91bFDDJvDa6sHHuhAA5IYyl4eZxlqCHJ6CSij9p3LQ4T6ZSvZWJFKrsI0EdKLVjht7hawY_HiVVRVT1utUPtKq-D9O3-zqNz61gTXORDJia7BQK607IRloRW7RFIeW5UvUL8gsCOF', 'BFlGT2nufRUwFSvbMAs3O5TDRA_mQiAcSP3dIqxnKzIvSkbhmGYvMZ3tZFznvaEYgkJhdXzSfjEOij117Nw9glM', 'YAOYaLL5y1hf-ePd46S4nw', NULL, '2025-08-05 23:32:15', '2025-08-05 23:32:15'),
(990, 992, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fx61NlIN_Ig:APA91bHQnb_2mdNZnnzrPDh99Jyd-tfrn8_EvEuR1DLA7aQGr9-WU5pqe9wYpyx-uLv6zmocQCeO_Q3DsNscYXE1OJ861qxVj7uPM2wy34q1avLvvH59rt-savvWIYCDx5H-xEXcd0zX', 'BMkon7iIuoTIGSG394WRJDO9Do95EmAPz_PK3-EF1XB9mGK0-2wdFVexT7hdzC7rWOxE4QT5_O4MTCGef-Oh_hQ', 'Q7Gwd35I6MoZzMu3pNuW_w', NULL, '2025-08-06 19:44:30', '2025-08-06 19:44:30'),
(991, 993, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/feIlLoVqhZk:APA91bE7JwyTMf5Gk_DT-wuu96ynJBmAmm2NlacMBIJS-mLYm1nr4yEsBeDdZOYUNfi-POemTkwmePKi9BdZcdLttY9R9OGzthwabIgbnjSgfi86p-sTjBnSguMR3TLVSWe2AJMpSJBL', 'BEp-3bmkuWQ5weiGjpH01D1FHSrkAZzV4GqN1lhaoE2VFa3qL760vebBrWA-8z_F7KtdT2EwX1cmQ-gOlHhG6nw', 'qTDV3utDWPumbU-1E-b6DQ', NULL, '2025-08-07 03:05:01', '2025-08-07 03:05:01');

-- --------------------------------------------------------

--
-- Table structure for table `reservation_inputs`
--

CREATE TABLE `reservation_inputs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `type` tinyint(4) DEFAULT NULL COMMENT '1-text, 2-select, 3-checkbox, 4-textarea, 5-datepicker, 6-timepicker',
  `label` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `placeholder` varchar(255) DEFAULT NULL,
  `required` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 - required, 0 - optional',
  `order_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservation_inputs`
--

INSERT INTO `reservation_inputs` (`id`, `language_id`, `type`, `label`, `name`, `placeholder`, `required`, `order_number`, `created_at`, `updated_at`) VALUES
(42, 179, 6, 'Hora (11am - 5pm)', 'Hora_(11am_-_5pm)', 'Hora', 1, 1, '2023-07-18 01:01:26', '2025-04-02 14:23:05'),
(43, 179, 7, 'Personas', 'Personas', 'n° personas', 1, 2, '2023-07-18 01:01:38', '2025-04-02 14:21:58'),
(46, 179, 1, 'Contacto WhatsApp', 'Contacto_WhatsApp', 'Ingresa tu WhatsApp', 1, 3, '2023-07-18 01:03:44', '2025-04-02 14:21:58'),
(48, 179, 1, 'Detalles', 'Detalles', 'Cuentanos más', 1, 4, '2023-07-18 01:06:47', '2025-04-02 14:21:58'),
(49, 179, 1, 'Fecha', 'Fecha', 'dia/mes/año', 1, 5, '2023-09-11 06:58:10', '2025-04-02 14:21:58');

-- --------------------------------------------------------

--
-- Table structure for table `reservation_input_options`
--

CREATE TABLE `reservation_input_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reservation_input_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `permissions` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(7, 'Asistente Gestión Humana', '[\"Dashboard\",\"Quality Management\"]', '2020-09-24 00:13:52', '2025-08-19 12:42:30'),
(8, 'Asistente Gestión Aduanera', '[\"Dashboard\",\"Quality Management\"]', '2020-09-28 11:23:56', '2025-08-19 12:42:45'),
(9, 'Asistente Gestión Sistemas Informaaticos', '[\"Dashboard\"]', '2023-03-04 03:48:36', '2025-08-19 12:43:16'),
(10, 'staff', '[\"Dashboard\"]', '2023-11-07 19:53:35', '2023-11-07 19:53:55'),
(11, 'Coordinador Gestión Humana', '[\"Dashboard\",\"Quality Management\"]', '2020-09-24 00:13:52', '2025-08-19 12:42:30');

-- --------------------------------------------------------

--
-- Table structure for table `role_area`
--

CREATE TABLE `role_area` (
  `area_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `serving_methods`
--

CREATE TABLE `serving_methods` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `gateways` text DEFAULT NULL,
  `serial_number` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `website_menu` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 - deactive on website menu, 1 - active on website menu',
  `qr_menu` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 - deactive on qr menu, 1 - active on qr menu',
  `qr_payment` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 - deactive, 1 - active',
  `pos` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 - active for POS, 0 - deactive for POS'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `serving_methods`
--

INSERT INTO `serving_methods` (`id`, `name`, `value`, `gateways`, `serial_number`, `note`, `website_menu`, `qr_menu`, `qr_payment`, `pos`) VALUES
(1, 'On Table', 'on_table', 'null', 1, 'Choose this method, if you are in restaurant', 0, 0, 1, 0),
(2, 'Pick Up', 'pick_up', '[\"1\",\"2\",\"3\"]', 2, 'Choose this, if you want to pick up the food from Restaurant', 1, 1, 1, 1),
(3, 'Home Delivery', 'home_delivery', '[\"1\",\"2\",\"3\"]', 3, 'Choose this, if you want the order to be served at your doorstep.', 1, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_charges`
--

CREATE TABLE `shipping_charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `charge` decimal(11,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `free_delivery_amount` decimal(11,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_charges`
--

INSERT INTO `shipping_charges` (`id`, `title`, `language_id`, `text`, `charge`, `created_at`, `updated_at`, `free_delivery_amount`) VALUES
(14, 'delivery', 179, NULL, 15.00, '2023-07-22 04:57:44', '2023-07-22 04:57:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sitemaps`
--

CREATE TABLE `sitemaps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sitemap_url` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sitemaps`
--

INSERT INTO `sitemaps` (`id`, `sitemap_url`, `filename`, `created_at`, `updated_at`) VALUES
(2, 'http://localhost/superv/without_license/superv-1.2/', 'sitemap5f5e377957033.xml', '2020-09-13 09:15:26', '2020-09-13 09:15:26');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `button_text` varchar(255) DEFAULT NULL,
  `button_url` varchar(255) DEFAULT NULL,
  `button_text1` varchar(191) DEFAULT NULL,
  `button_url1` varchar(191) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `bg_image` varchar(191) DEFAULT NULL,
  `serial_number` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title_color` varchar(255) DEFAULT NULL,
  `text_color` varchar(255) DEFAULT NULL,
  `button_color` varchar(255) DEFAULT NULL,
  `title_font_size` int(11) NOT NULL DEFAULT 60,
  `text_font_size` int(11) NOT NULL DEFAULT 18,
  `button_text_font_size` int(11) NOT NULL DEFAULT 14,
  `button_text1_font_size` int(11) NOT NULL DEFAULT 14
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `language_id`, `text`, `title`, `button_text`, `button_url`, `button_text1`, `button_url1`, `image`, `bg_image`, `serial_number`, `created_at`, `updated_at`, `title_color`, `text_color`, `button_color`, `title_font_size`, `text_font_size`, `button_text_font_size`, `button_text1_font_size`) VALUES
(30, 179, 'El auténtico lomo saltado desde hace 50 años', 'Lomo Saltado', 'Reserva!', NULL, 'Revisa la Carta', NULL, '1687845857.png', '1687845787.jpeg', 1, '2023-06-24 04:56:42', '2023-06-29 01:00:10', 'FFFFFF', 'FFFFFF', 'FFFFFF', 50, 20, 15, 15);

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` text DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `icon`, `url`, `serial_number`) VALUES
(4, 'fab fa-instagram iconpicker-component', 'https://www.instagram.com/rinconchami', 2),
(6, 'fab fa-facebook-f', 'https://web.facebook.com/RinconChamiOficial', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(37, 'trevorcalfan2@gmail.com', NULL, NULL),
(38, 'ysaart@yahoo.es', NULL, NULL),
(39, '29.01hk8hq6fkqmaed4qyp48as78c@mail4u.lt', NULL, NULL),
(40, 'm_barsanti@yahoo.com', NULL, NULL),
(41, 'carofiestas@hotmail.com', NULL, NULL),
(42, 'Armonia14@gmail.com', NULL, NULL),
(43, 'Luisperales36@yahoo.com', NULL, NULL),
(44, 'ezbbirjmjbuj@dont-reply.me', NULL, NULL),
(45, 'erzblblmiruj@dont-reply.me', NULL, NULL),
(46, 'eimezblrezuj@do-not-respond.me', NULL, NULL),
(47, 'josemal9@hotmail.com', NULL, NULL),
(48, 'bzrmzazaizuj@do-not-respond.me', NULL, NULL),
(49, 'bbssialzbzuj@dont-reply.me', NULL, NULL),
(50, 'blbriszeszuj@dont-reply.me', NULL, NULL),
(51, 'rjibzsslrzuj@dont-reply.me', NULL, NULL),
(52, 'remzilrrzzuj@dont-reply.me', NULL, NULL),
(53, 'raejzmjmlzuj@dont-reply.me', NULL, NULL),
(54, 'rsrlimsaazuj@dont-reply.me', NULL, NULL),
(55, 'arbrezseizuj@dont-reply.me', NULL, NULL),
(56, 'ibijjjalbuj@dont-reply.me', NULL, NULL),
(57, 'uypexhrz@do-not-respond.me', NULL, NULL),
(58, 'pydcbsfc@do-not-respond.me', NULL, NULL),
(59, 'uvaqxuph@formtest.guru', NULL, NULL),
(60, 'xgiqgkdi@formtest.guru', NULL, NULL),
(61, 'vrivasplata@hotmail.com', NULL, NULL),
(62, 'alvarez.mirko@gmail.com', NULL, NULL),
(63, 'pedro@proa.pe', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `table_no` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 - active, 2 - deactive',
  `qr_image` varchar(100) DEFAULT NULL,
  `color` varchar(50) NOT NULL DEFAULT '000000',
  `size` int(11) NOT NULL DEFAULT 250,
  `style` varchar(50) NOT NULL DEFAULT 'square',
  `eye_style` varchar(50) NOT NULL DEFAULT 'square',
  `margin` int(11) NOT NULL DEFAULT 0,
  `text` varchar(255) DEFAULT NULL,
  `text_color` varchar(50) DEFAULT '000000',
  `text_size` int(11) DEFAULT 15,
  `text_x` int(11) NOT NULL DEFAULT 50,
  `text_y` int(11) NOT NULL DEFAULT 50,
  `image` varchar(50) DEFAULT NULL,
  `image_size` int(11) NOT NULL DEFAULT 20,
  `image_x` int(11) NOT NULL DEFAULT 50,
  `image_y` int(11) NOT NULL DEFAULT 50,
  `type` varchar(50) NOT NULL DEFAULT 'default' COMMENT 'default, image, text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table_books`
--

CREATE TABLE `table_books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fields` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `table_books`
--

INSERT INTO `table_books` (`id`, `name`, `email`, `fields`, `status`, `created_at`, `updated_at`) VALUES
(14, 'Emilio Allen Salcedo', 'emilioallen@gmail.com', '{\"Hora\":\"12:30 AM\",\"Personas\":\"6\",\"Contacto_WhatsApp\":\"999188620\",\"Detalles\":\"Informaci\\u00f3n de estacionamiento.\",\"Fecha\":\"06/06/2024\"}', 2, '2024-06-05 19:49:04', '2024-06-05 20:41:52'),
(15, 'Norma Meza Menendez', 'nmezam14@gmail.com', '{\"Hora\":\"02:00 PM\",\"Personas\":\"4\",\"Contacto_WhatsApp\":\"988492625\",\"Detalles\":\"Por 28 de julio\",\"Fecha\":\"28 07. 2024\"}', 1, '2024-07-28 17:51:15', '2024-07-28 17:51:15'),
(16, 'Rand Marinho', 'viniciusrandson@gmail.com', '{\"Hora\":\"07:00 PM\",\"Personas\":\"03\",\"Contacto_WhatsApp\":\"+5511977005799\",\"Detalles\":\"Hoy\",\"Fecha\":\"02/10/2024\"}', 1, '2024-09-02 19:28:42', '2024-09-02 19:28:42'),
(17, 'renzo miranda mur', 'renzomur@gmail.com', '{\"Hora\":\"02:30 PM\",\"Personas\":\"8\",\"Contacto_WhatsApp\":\"989499232\",\"Detalles\":\"Cumplea\\u00f1os  de un familiar\",\"Fecha\":\"14/09/24\"}', 1, '2024-09-14 20:06:13', '2024-09-14 20:06:13'),
(18, 'YANE', 'yane.echevarria@gmail.com', '{\"Hora\":\"02:00 AM\",\"Personas\":\"10\",\"Contacto_WhatsApp\":\"997525312\",\"Detalles\":\"RESERVA\",\"Fecha\":\"16/9/24\"}', 1, '2024-09-16 07:02:07', '2024-09-16 07:02:07'),
(19, 'Francisco Grippa', 'francisco.grippa@gmail.com', '{\"Hora\":\"12:30 PM\",\"Personas\":\"2\",\"Contacto_WhatsApp\":\"991873718\",\"Detalles\":\"Una de las personas est\\u00e1 con muletas\",\"Fecha\":\"28/09/2024\"}', 1, '2024-09-25 03:31:11', '2024-09-25 03:31:11'),
(20, 'Xiomara Chávez', 'x.iomi08@hotmail.com', '{\"Hora\":\"03:30 PM\",\"Personas\":\"7\",\"Contacto_WhatsApp\":\"955333307\",\"Detalles\":\"Es el aniversario de bodas de mis abuelos, quisieramos una mesa con una bonita vista\",\"Fecha\":\"03/11/2024\"}', 1, '2024-11-03 15:46:54', '2024-11-03 15:46:54'),
(21, 'Silvana Ameghino', 'silameghinolv@gmail.com', '{\"Hora\":\"01:30 PM\",\"Personas\":\"8\",\"Contacto_WhatsApp\":\"915233567\",\"Detalles\":\"CUMPLEA\\u00d1OS\",\"Fecha\":\"25/11/2024\"}', 1, '2024-11-25 17:41:50', '2024-11-25 17:41:50'),
(22, 'Silvana Ameghino', 'silameghinolv@gmail.com', '{\"Hora\":\"01:30 PM\",\"Personas\":\"8\",\"Contacto_WhatsApp\":\"915233567\",\"Detalles\":\"CUMPLEA\\u00d1OS\",\"Fecha\":\"25/11/2024\"}', 1, '2024-11-25 17:43:15', '2024-11-25 17:43:15'),
(23, 'Ernesto Moreno', 'djorkaeff85@gmail.com', '{\"Hora\":\"08:30 PM\",\"Personas\":\"5\",\"Contacto_WhatsApp\":\"959105128\",\"Detalles\":\"Reuni\\u00f3n navide\\u00f1a\",\"Fecha\":\"16/12/2024\"}', 1, '2024-12-12 02:49:04', '2024-12-12 02:49:04'),
(24, 'Katherine La Cunza', 'katelcvargas@gmail.com', '{\"Hora\":\"01:00 PM\",\"Personas\":\"9\",\"Contacto_WhatsApp\":\"944654061\",\"Detalles\":\"Cumplea\\u00f1os\",\"Fecha\":\"08/01/2025\"}', 1, '2025-01-07 23:02:00', '2025-01-07 23:02:00'),
(25, 'Julio Edgardo Pérez Luna Canales', 'julioperezluna@gmail.com', '{\"Hora\":\"02:30 PM\",\"Personas\":\"6\",\"Contacto_WhatsApp\":\"987818676\",\"Detalles\":\"Es cumplea\\u00f1os de mi madre.\",\"Fecha\":\"18/03/25\"}', 1, '2025-03-17 23:32:35', '2025-03-17 23:32:35'),
(26, 'Alejandra Tupia Angulo', 'alejandratupiaangulo@gmail.com', '{\"Hora\":\"01:00 PM\",\"Personas\":\"4\",\"Contacto_WhatsApp\":\"923613653\",\"Detalles\":\"almuerzo por cumplea\\u00f1os\",\"Fecha\":\"01/04/2025\"}', 1, '2025-04-01 18:21:14', '2025-04-01 18:21:14'),
(27, 'Nilver Ayala', 'Sonicareta@hotmail.com', '{\"Hora_(11am_-_5pm)\":\"05:00 PM\",\"Personas\":\"5\",\"Contacto_WhatsApp\":\"946896855\",\"Detalles\":\"Fffffff\",\"Fecha\":\"10/08/2000\"}', 1, '2025-04-02 14:32:27', '2025-04-02 14:32:27'),
(28, 'Arturo Javier', 'arturosalazarq.fi@gmail.com', '{\"Hora_(11am_-_5pm)\":\"09:00 PM\",\"Personas\":\"2\",\"Contacto_WhatsApp\":\"958571477\",\"Detalles\":\"--\",\"Fecha\":\"11/04/2025\"}', 1, '2025-04-11 21:56:55', '2025-04-11 21:56:55'),
(29, 'Arturo Javier', 'arturosalazarq.fi@gmail.com', '{\"Hora_(11am_-_5pm)\":\"09:00 PM\",\"Personas\":\"2\",\"Contacto_WhatsApp\":\"958571477\",\"Detalles\":\"--\",\"Fecha\":\"11/04/2025\"}', 1, '2025-04-11 21:57:06', '2025-04-11 21:57:06'),
(30, 'Carlos De Guevara', 'carlosinstall415@live.com', '{\"Hora_(11am_-_5pm)\":\"01:30 AM\",\"Personas\":\"1\",\"Contacto_WhatsApp\":\"502 55335888\",\"Detalles\":\"Patitas con man\\u00ed\",\"Fecha\":\"04/05/2025\"}', 1, '2025-05-04 18:28:03', '2025-05-04 18:28:03'),
(31, 'Daniel Alonso Romero Vereau', 'd.romerovereau@gmail.com', '{\"Hora_(11am_-_5pm)\":\"01:00 PM\",\"Personas\":\"4\",\"Contacto_WhatsApp\":\"943412314\",\"Detalles\":\"Almuerzo por D\\u00eda de la Madre\",\"Fecha\":\"11/05/2025\"}', 1, '2025-05-04 22:57:14', '2025-05-04 22:57:14'),
(32, 'DAFNE CONDE PATIÑO', 'dconde@apoyoconsultoria.com', '{\"Hora_(11am_-_5pm)\":\"01:30 AM\",\"Personas\":\"1\",\"Contacto_WhatsApp\":\"949069029\",\"Detalles\":\"Ir\\u00e9 con mi mam\\u00e1 por el d\\u00eda de las madres.\",\"Fecha\":\"11/05/2025\"}', 1, '2025-05-07 02:31:59', '2025-05-07 02:31:59'),
(33, 'DAFNE CONDE PATIÑO', 'dconde@apoyoconsultoria.com', '{\"Hora_(11am_-_5pm)\":\"01:30 PM\",\"Personas\":\"1\",\"Contacto_WhatsApp\":\"949069029\",\"Detalles\":\"Ir\\u00e9 con mi mam\\u00e1 por el d\\u00eda de las madres.\",\"Fecha\":\"11/05/2025\"}', 1, '2025-05-07 02:32:31', '2025-05-07 02:32:31'),
(34, 'Julio Cabrera Maccanascca', 'maccanascca1984@gmail.com', '{\"Hora_(11am_-_5pm)\":\"03:00 PM\",\"Personas\":\"5\",\"Contacto_WhatsApp\":\"987066946\",\"Detalles\":\"D\\u00eda de la Madre\",\"Fecha\":\"10/05/2025\"}', 1, '2025-05-07 03:04:06', '2025-05-07 03:04:06'),
(35, 'Katherine Eva La Cunza Vargas', 'katelcvargas@gmail.com', '{\"Hora_(11am_-_5pm)\":\"01:00 PM\",\"Personas\":\"10\",\"Contacto_WhatsApp\":\"944654061\",\"Detalles\":\"Cumplea\\u00f1os\",\"Fecha\":\"13/05/2025\"}', 1, '2025-05-12 22:06:37', '2025-05-12 22:06:37'),
(36, 'Katherine Eva La Cunza Vargas', 'katelcvargas@gmail.com', '{\"Hora_(11am_-_5pm)\":\"01:00 PM\",\"Personas\":\"10\",\"Contacto_WhatsApp\":\"944654061\",\"Detalles\":\"Cumplea\\u00f1os\",\"Fecha\":\"13/05/2025\"}', 1, '2025-05-12 22:06:49', '2025-05-12 22:06:49'),
(37, 'Katherine La Cunza', 'katelcvargas@gmail.com', '{\"Hora_(11am_-_5pm)\":\"01:00 PM\",\"Personas\":\"12\",\"Contacto_WhatsApp\":\"944654061\",\"Detalles\":\"Cumplea\\u00f1os\",\"Fecha\":\"13/05/2025\"}', 1, '2025-05-13 16:17:27', '2025-05-13 16:17:27'),
(38, 'Jonhatan Roberto Goche Flores', 'jrgoche@gmail.com', '{\"Hora_(11am_-_5pm)\":\"02:30 AM\",\"Personas\":\"6\",\"Contacto_WhatsApp\":\"996486203\",\"Detalles\":\"Dia del padre\",\"Fecha\":\"15062025\"}', 1, '2025-06-12 17:48:54', '2025-06-12 17:48:54'),
(39, 'Flavia Ruggiero', 'flaviarb79@gmail.com', '{\"Hora_(11am_-_5pm)\":\"02:00 AM\",\"Personas\":\"2\",\"Contacto_WhatsApp\":\"999945422\",\"Detalles\":\"Salida de Madre e hija\",\"Fecha\":\"21/06/25\"}', 1, '2025-06-20 22:17:42', '2025-06-20 22:17:42'),
(40, 'Diego Andrey Paredes Rey de Castro', 'diego.paredes.r@utec.edu.pe', '{\"Hora_(11am_-_5pm)\":\"08:00 PM\",\"Personas\":\"2\",\"Contacto_WhatsApp\":\"906800917\",\"Detalles\":\"16 meses\",\"Fecha\":\"01/07/2025\"}', 1, '2025-07-02 04:55:22', '2025-07-02 04:55:22'),
(41, 'maria ines velarde', 'miveldel@hotmail.com', '{\"Hora_(11am_-_5pm)\":\"12:00 AM\",\"Personas\":\"8\",\"Contacto_WhatsApp\":\"999033488\",\"Detalles\":\"almuerzo oficina\",\"Fecha\":\"10/07/2025\"}', 1, '2025-07-03 19:36:44', '2025-07-03 19:36:44'),
(42, 'Martine Miedema', 'm.sickinghe@gmail.com', '{\"Hora_(11am_-_5pm)\":\"12:30 PM\",\"Personas\":\"5\",\"Contacto_WhatsApp\":\"003151198658\",\"Detalles\":\"5 personas\",\"Fecha\":\"10-07-2025\"}', 1, '2025-07-10 15:41:22', '2025-07-10 15:41:22'),
(43, 'Martine miedema', 'M.sickinghe@gmail.com', '{\"Hora_(11am_-_5pm)\":\"12:30 AM\",\"Personas\":\"5\",\"Contacto_WhatsApp\":\"+31651198658\",\"Detalles\":\"Non\",\"Fecha\":\"10/07/2025\"}', 1, '2025-07-10 15:42:35', '2025-07-10 15:42:35'),
(44, 'Ana Maria Moran', 'ammoran2710@gmail.com', '{\"Hora_(11am_-_5pm)\":\"01:30 AM\",\"Personas\":\"2\",\"Contacto_WhatsApp\":\"998674368\",\"Detalles\":\"Almuerzo amigas\",\"Fecha\":\"13/07/2025\"}', 1, '2025-07-13 13:14:07', '2025-07-13 13:14:07'),
(45, 'JOSE DE ARMERO', 'ppdearmero@hotmail.com', '{\"Hora_(11am_-_5pm)\":\"01:00 PM\",\"Personas\":\"5\",\"Contacto_WhatsApp\":\"996688375\",\"Detalles\":\"Ma\\u00f1ana atienden? Ma\\u00f1ana tienen sancochado?\",\"Fecha\":\"23/07/25\"}', 1, '2025-07-22 19:13:05', '2025-07-22 19:13:05'),
(46, 'Karen Avila', 'karen.ajp@gmail.com', '{\"Hora_(11am_-_5pm)\":\"12:00 AM\",\"Personas\":\"15\",\"Contacto_WhatsApp\":\"967670533\",\"Detalles\":\"grupo de trabajo\",\"Fecha\":\"30/07/2025\"}', 1, '2025-07-26 01:23:22', '2025-07-26 01:23:22'),
(47, 'Freddy Mercado', 'mercado.freddy@gmail.com', '{\"Hora_(11am_-_5pm)\":\"02:00 PM\",\"Personas\":\"4\",\"Contacto_WhatsApp\":\"966076590\",\"Detalles\":\"Feliz 28\",\"Fecha\":\"28/07/2025\"}', 1, '2025-07-28 16:52:09', '2025-07-28 16:52:09'),
(48, 'Alberto Sardi', 'Despertame@gmail.com', '{\"Hora_(11am_-_5pm)\":\"05:00 PM\",\"Personas\":\"2\",\"Contacto_WhatsApp\":\"998546098\",\"Detalles\":\"Fiestas patrias\",\"Fecha\":\"28/07/2025\"}', 1, '2025-07-28 19:16:50', '2025-07-28 19:16:50'),
(49, 'Julio Perez Luna Canales', 'julioperezluna@gmail.com', '{\"Hora_(11am_-_5pm)\":\"01:30 PM\",\"Personas\":\"11\",\"Contacto_WhatsApp\":\"987818676\",\"Detalles\":\"Es cumplea\\u00f1os de mi hermano.\",\"Fecha\":\"29/07/25\"}', 1, '2025-07-28 21:24:37', '2025-07-28 21:24:37');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rank` varchar(255) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `serial_number` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `language_id`, `image`, `comment`, `name`, `rank`, `rating`, `serial_number`, `created_at`, `updated_at`) VALUES
(30, 179, '1689224501.jpg', 'Exquisita la comida, creo que si visitas Lima debe ser una parada obligada. Platos grandes y rápida atención. Además nos sirvieron una segunda jarra grande de chicha morada de cortesía. Muy amables y atentos para atender!!', 'Camila V.', '5', 5, 1, NULL, NULL),
(31, 179, '1689224993.jpg', 'Excelente atención, sazón, y sobre todo te sientes como en casa! El puré con asado de carne recomendado, tacu tacu riquísimo, pescado, ese sancochado inolvidable y sus postres deliciosos, como olvidar el suspiro a la limeña!', 'Karla T.', '4', 5, 2, NULL, NULL),
(32, 179, '1689314097.jpg', 'En este lugar, no hay pierde con ningún plato. Realmente todo lo que ofrecen es realmente rico y todo lo puedes acompañar con la sarsa de cebolla y aji que están en todas las mesas como parte de su atractivo. Altamente recomendable.', 'Paola D.', '5', 5, 3, NULL, NULL),
(33, 179, '1689912262.jpg', 'El lugar apropiado para disfrutar de uno de los mejores ceviches peruanos, una gran variedad de platos, lugar acogedor y clásico', 'David M.', '5', 5, 4, NULL, NULL),
(34, 179, '1689746375.jpg', 'Es un lugar sencillo, donde sus deliciosos y abundantes platos son la estrella. Un lugar para ir solo o en familia, para disfrutar exquisitos platos del norte. Excelente atención siempre.', 'Marco M.', '5', 5, 5, NULL, NULL),
(35, 179, '1689746477.jpg', 'La atención muy buena, todo fresco y muy rico, yo iba desde que era una jovencita, y cada vez que voy a Lima con mi esposo vamos a comer ahi. 100% rcomendable.', 'Rosie C.', '5', 5, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `timezones`
--

CREATE TABLE `timezones` (
  `country_code` char(3) NOT NULL,
  `timezone` varchar(125) NOT NULL DEFAULT '',
  `gmt_offset` float(10,2) DEFAULT NULL,
  `dst_offset` float(10,2) DEFAULT NULL,
  `raw_offset` float(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `timezones`
--

INSERT INTO `timezones` (`country_code`, `timezone`, `gmt_offset`, `dst_offset`, `raw_offset`) VALUES
('AD', 'Europe/Andorra', 1.00, 2.00, 1.00),
('AE', 'Asia/Dubai', 4.00, 4.00, 4.00),
('AF', 'Asia/Kabul', 4.50, 4.50, 4.50),
('AG', 'America/Antigua', -4.00, -4.00, -4.00),
('AI', 'America/Anguilla', -4.00, -4.00, -4.00),
('AL', 'Europe/Tirane', 1.00, 2.00, 1.00),
('AM', 'Asia/Yerevan', 4.00, 4.00, 4.00),
('AO', 'Africa/Luanda', 1.00, 1.00, 1.00),
('AQ', 'Antarctica/Casey', 8.00, 8.00, 8.00),
('AQ', 'Antarctica/Davis', 7.00, 7.00, 7.00),
('AQ', 'Antarctica/DumontDUrville', 10.00, 10.00, 10.00),
('AQ', 'Antarctica/Mawson', 5.00, 5.00, 5.00),
('AQ', 'Antarctica/McMurdo', 13.00, 12.00, 12.00),
('AQ', 'Antarctica/Palmer', -3.00, -4.00, -4.00),
('AQ', 'Antarctica/Rothera', -3.00, -3.00, -3.00),
('AQ', 'Antarctica/South_Pole', 13.00, 12.00, 12.00),
('AQ', 'Antarctica/Syowa', 3.00, 3.00, 3.00),
('AQ', 'Antarctica/Vostok', 6.00, 6.00, 6.00),
('AR', 'America/Argentina/Buenos_Aires', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Catamarca', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Cordoba', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Jujuy', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/La_Rioja', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Mendoza', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Rio_Gallegos', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Salta', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/San_Juan', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/San_Luis', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Tucuman', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Ushuaia', -3.00, -3.00, -3.00),
('AS', 'Pacific/Pago_Pago', -11.00, -11.00, -11.00),
('AT', 'Europe/Vienna', 1.00, 2.00, 1.00),
('AU', 'Antarctica/Macquarie', 11.00, 11.00, 11.00),
('AU', 'Australia/Adelaide', 10.50, 9.50, 9.50),
('AU', 'Australia/Brisbane', 10.00, 10.00, 10.00),
('AU', 'Australia/Broken_Hill', 10.50, 9.50, 9.50),
('AU', 'Australia/Currie', 11.00, 10.00, 10.00),
('AU', 'Australia/Darwin', 9.50, 9.50, 9.50),
('AU', 'Australia/Eucla', 8.75, 8.75, 8.75),
('AU', 'Australia/Hobart', 11.00, 10.00, 10.00),
('AU', 'Australia/Lindeman', 10.00, 10.00, 10.00),
('AU', 'Australia/Lord_Howe', 11.00, 10.50, 10.50),
('AU', 'Australia/Melbourne', 11.00, 10.00, 10.00),
('AU', 'Australia/Perth', 8.00, 8.00, 8.00),
('AU', 'Australia/Sydney', 11.00, 10.00, 10.00),
('AW', 'America/Aruba', -4.00, -4.00, -4.00),
('AX', 'Europe/Mariehamn', 2.00, 3.00, 2.00),
('AZ', 'Asia/Baku', 4.00, 5.00, 4.00),
('BA', 'Europe/Sarajevo', 1.00, 2.00, 1.00),
('BB', 'America/Barbados', -4.00, -4.00, -4.00),
('BD', 'Asia/Dhaka', 6.00, 6.00, 6.00),
('BE', 'Europe/Brussels', 1.00, 2.00, 1.00),
('BF', 'Africa/Ouagadougou', 0.00, 0.00, 0.00),
('BG', 'Europe/Sofia', 2.00, 3.00, 2.00),
('BH', 'Asia/Bahrain', 3.00, 3.00, 3.00),
('BI', 'Africa/Bujumbura', 2.00, 2.00, 2.00),
('BJ', 'Africa/Porto-Novo', 1.00, 1.00, 1.00),
('BL', 'America/St_Barthelemy', -4.00, -4.00, -4.00),
('BM', 'Atlantic/Bermuda', -4.00, -3.00, -4.00),
('BN', 'Asia/Brunei', 8.00, 8.00, 8.00),
('BO', 'America/La_Paz', -4.00, -4.00, -4.00),
('BQ', 'America/Kralendijk', -4.00, -4.00, -4.00),
('BR', 'America/Araguaina', -3.00, -3.00, -3.00),
('BR', 'America/Bahia', -3.00, -3.00, -3.00),
('BR', 'America/Belem', -3.00, -3.00, -3.00),
('BR', 'America/Boa_Vista', -4.00, -4.00, -4.00),
('BR', 'America/Campo_Grande', -3.00, -4.00, -4.00),
('BR', 'America/Cuiaba', -3.00, -4.00, -4.00),
('BR', 'America/Eirunepe', -5.00, -5.00, -5.00),
('BR', 'America/Fortaleza', -3.00, -3.00, -3.00),
('BR', 'America/Maceio', -3.00, -3.00, -3.00),
('BR', 'America/Manaus', -4.00, -4.00, -4.00),
('BR', 'America/Noronha', -2.00, -2.00, -2.00),
('BR', 'America/Porto_Velho', -4.00, -4.00, -4.00),
('BR', 'America/Recife', -3.00, -3.00, -3.00),
('BR', 'America/Rio_Branco', -5.00, -5.00, -5.00),
('BR', 'America/Santarem', -3.00, -3.00, -3.00),
('BR', 'America/Sao_Paulo', -2.00, -3.00, -3.00),
('BS', 'America/Nassau', -5.00, -4.00, -5.00),
('BT', 'Asia/Thimphu', 6.00, 6.00, 6.00),
('BW', 'Africa/Gaborone', 2.00, 2.00, 2.00),
('BY', 'Europe/Minsk', 3.00, 3.00, 3.00),
('BZ', 'America/Belize', -6.00, -6.00, -6.00),
('CA', 'America/Atikokan', -5.00, -5.00, -5.00),
('CA', 'America/Blanc-Sablon', -4.00, -4.00, -4.00),
('CA', 'America/Cambridge_Bay', -7.00, -6.00, -7.00),
('CA', 'America/Creston', -7.00, -7.00, -7.00),
('CA', 'America/Dawson', -8.00, -7.00, -8.00),
('CA', 'America/Dawson_Creek', -7.00, -7.00, -7.00),
('CA', 'America/Edmonton', -7.00, -6.00, -7.00),
('CA', 'America/Glace_Bay', -4.00, -3.00, -4.00),
('CA', 'America/Goose_Bay', -4.00, -3.00, -4.00),
('CA', 'America/Halifax', -4.00, -3.00, -4.00),
('CA', 'America/Inuvik', -7.00, -6.00, -7.00),
('CA', 'America/Iqaluit', -5.00, -4.00, -5.00),
('CA', 'America/Moncton', -4.00, -3.00, -4.00),
('CA', 'America/Montreal', -5.00, -4.00, -5.00),
('CA', 'America/Nipigon', -5.00, -4.00, -5.00),
('CA', 'America/Pangnirtung', -5.00, -4.00, -5.00),
('CA', 'America/Rainy_River', -6.00, -5.00, -6.00),
('CA', 'America/Rankin_Inlet', -6.00, -5.00, -6.00),
('CA', 'America/Regina', -6.00, -6.00, -6.00),
('CA', 'America/Resolute', -6.00, -5.00, -6.00),
('CA', 'America/St_Johns', -3.50, -2.50, -3.50),
('CA', 'America/Swift_Current', -6.00, -6.00, -6.00),
('CA', 'America/Thunder_Bay', -5.00, -4.00, -5.00),
('CA', 'America/Toronto', -5.00, -4.00, -5.00),
('CA', 'America/Vancouver', -8.00, -7.00, -8.00),
('CA', 'America/Whitehorse', -8.00, -7.00, -8.00),
('CA', 'America/Winnipeg', -6.00, -5.00, -6.00),
('CA', 'America/Yellowknife', -7.00, -6.00, -7.00),
('CC', 'Indian/Cocos', 6.50, 6.50, 6.50),
('CD', 'Africa/Kinshasa', 1.00, 1.00, 1.00),
('CD', 'Africa/Lubumbashi', 2.00, 2.00, 2.00),
('CF', 'Africa/Bangui', 1.00, 1.00, 1.00),
('CG', 'Africa/Brazzaville', 1.00, 1.00, 1.00),
('CH', 'Europe/Zurich', 1.00, 2.00, 1.00),
('CI', 'Africa/Abidjan', 0.00, 0.00, 0.00),
('CK', 'Pacific/Rarotonga', -10.00, -10.00, -10.00),
('CL', 'America/Santiago', -3.00, -4.00, -4.00),
('CL', 'Pacific/Easter', -5.00, -6.00, -6.00),
('CM', 'Africa/Douala', 1.00, 1.00, 1.00),
('CN', 'Asia/Chongqing', 8.00, 8.00, 8.00),
('CN', 'Asia/Harbin', 8.00, 8.00, 8.00),
('CN', 'Asia/Kashgar', 8.00, 8.00, 8.00),
('CN', 'Asia/Shanghai', 8.00, 8.00, 8.00),
('CN', 'Asia/Urumqi', 8.00, 8.00, 8.00),
('CO', 'America/Bogota', -5.00, -5.00, -5.00),
('CR', 'America/Costa_Rica', -6.00, -6.00, -6.00),
('CU', 'America/Havana', -5.00, -4.00, -5.00),
('CV', 'Atlantic/Cape_Verde', -1.00, -1.00, -1.00),
('CW', 'America/Curacao', -4.00, -4.00, -4.00),
('CX', 'Indian/Christmas', 7.00, 7.00, 7.00),
('CY', 'Asia/Nicosia', 2.00, 3.00, 2.00),
('CZ', 'Europe/Prague', 1.00, 2.00, 1.00),
('DE', 'Europe/Berlin', 1.00, 2.00, 1.00),
('DE', 'Europe/Busingen', 1.00, 2.00, 1.00),
('DJ', 'Africa/Djibouti', 3.00, 3.00, 3.00),
('DK', 'Europe/Copenhagen', 1.00, 2.00, 1.00),
('DM', 'America/Dominica', -4.00, -4.00, -4.00),
('DO', 'America/Santo_Domingo', -4.00, -4.00, -4.00),
('DZ', 'Africa/Algiers', 1.00, 1.00, 1.00),
('EC', 'America/Guayaquil', -5.00, -5.00, -5.00),
('EC', 'Pacific/Galapagos', -6.00, -6.00, -6.00),
('EE', 'Europe/Tallinn', 2.00, 3.00, 2.00),
('EG', 'Africa/Cairo', 2.00, 2.00, 2.00),
('EH', 'Africa/El_Aaiun', 0.00, 0.00, 0.00),
('ER', 'Africa/Asmara', 3.00, 3.00, 3.00),
('ES', 'Africa/Ceuta', 1.00, 2.00, 1.00),
('ES', 'Atlantic/Canary', 0.00, 1.00, 0.00),
('ES', 'Europe/Madrid', 1.00, 2.00, 1.00),
('ET', 'Africa/Addis_Ababa', 3.00, 3.00, 3.00),
('FI', 'Europe/Helsinki', 2.00, 3.00, 2.00),
('FJ', 'Pacific/Fiji', 13.00, 12.00, 12.00),
('FK', 'Atlantic/Stanley', -3.00, -3.00, -3.00),
('FM', 'Pacific/Chuuk', 10.00, 10.00, 10.00),
('FM', 'Pacific/Kosrae', 11.00, 11.00, 11.00),
('FM', 'Pacific/Pohnpei', 11.00, 11.00, 11.00),
('FO', 'Atlantic/Faroe', 0.00, 1.00, 0.00),
('FR', 'Europe/Paris', 1.00, 2.00, 1.00),
('GA', 'Africa/Libreville', 1.00, 1.00, 1.00),
('GB', 'Europe/London', 0.00, 1.00, 0.00),
('GD', 'America/Grenada', -4.00, -4.00, -4.00),
('GE', 'Asia/Tbilisi', 4.00, 4.00, 4.00),
('GF', 'America/Cayenne', -3.00, -3.00, -3.00),
('GG', 'Europe/Guernsey', 0.00, 1.00, 0.00),
('GH', 'Africa/Accra', 0.00, 0.00, 0.00),
('GI', 'Europe/Gibraltar', 1.00, 2.00, 1.00),
('GL', 'America/Danmarkshavn', 0.00, 0.00, 0.00),
('GL', 'America/Godthab', -3.00, -2.00, -3.00),
('GL', 'America/Scoresbysund', -1.00, 0.00, -1.00),
('GL', 'America/Thule', -4.00, -3.00, -4.00),
('GM', 'Africa/Banjul', 0.00, 0.00, 0.00),
('GN', 'Africa/Conakry', 0.00, 0.00, 0.00),
('GP', 'America/Guadeloupe', -4.00, -4.00, -4.00),
('GQ', 'Africa/Malabo', 1.00, 1.00, 1.00),
('GR', 'Europe/Athens', 2.00, 3.00, 2.00),
('GS', 'Atlantic/South_Georgia', -2.00, -2.00, -2.00),
('GT', 'America/Guatemala', -6.00, -6.00, -6.00),
('GU', 'Pacific/Guam', 10.00, 10.00, 10.00),
('GW', 'Africa/Bissau', 0.00, 0.00, 0.00),
('GY', 'America/Guyana', -4.00, -4.00, -4.00),
('HK', 'Asia/Hong_Kong', 8.00, 8.00, 8.00),
('HN', 'America/Tegucigalpa', -6.00, -6.00, -6.00),
('HR', 'Europe/Zagreb', 1.00, 2.00, 1.00),
('HT', 'America/Port-au-Prince', -5.00, -4.00, -5.00),
('HU', 'Europe/Budapest', 1.00, 2.00, 1.00),
('ID', 'Asia/Jakarta', 7.00, 7.00, 7.00),
('ID', 'Asia/Jayapura', 9.00, 9.00, 9.00),
('ID', 'Asia/Makassar', 8.00, 8.00, 8.00),
('ID', 'Asia/Pontianak', 7.00, 7.00, 7.00),
('IE', 'Europe/Dublin', 0.00, 1.00, 0.00),
('IL', 'Asia/Jerusalem', 2.00, 3.00, 2.00),
('IM', 'Europe/Isle_of_Man', 0.00, 1.00, 0.00),
('IN', 'Asia/Kolkata', 5.50, 5.50, 5.50),
('IO', 'Indian/Chagos', 6.00, 6.00, 6.00),
('IQ', 'Asia/Baghdad', 3.00, 3.00, 3.00),
('IR', 'Asia/Tehran', 3.50, 4.50, 3.50),
('IS', 'Atlantic/Reykjavik', 0.00, 0.00, 0.00),
('IT', 'Europe/Rome', 1.00, 2.00, 1.00),
('JE', 'Europe/Jersey', 0.00, 1.00, 0.00),
('JM', 'America/Jamaica', -5.00, -5.00, -5.00),
('JO', 'Asia/Amman', 2.00, 3.00, 2.00),
('JP', 'Asia/Tokyo', 9.00, 9.00, 9.00),
('KE', 'Africa/Nairobi', 3.00, 3.00, 3.00),
('KG', 'Asia/Bishkek', 6.00, 6.00, 6.00),
('KH', 'Asia/Phnom_Penh', 7.00, 7.00, 7.00),
('KI', 'Pacific/Enderbury', 13.00, 13.00, 13.00),
('KI', 'Pacific/Kiritimati', 14.00, 14.00, 14.00),
('KI', 'Pacific/Tarawa', 12.00, 12.00, 12.00),
('KM', 'Indian/Comoro', 3.00, 3.00, 3.00),
('KN', 'America/St_Kitts', -4.00, -4.00, -4.00),
('KP', 'Asia/Pyongyang', 9.00, 9.00, 9.00),
('KR', 'Asia/Seoul', 9.00, 9.00, 9.00),
('KW', 'Asia/Kuwait', 3.00, 3.00, 3.00),
('KY', 'America/Cayman', -5.00, -5.00, -5.00),
('KZ', 'Asia/Almaty', 6.00, 6.00, 6.00),
('KZ', 'Asia/Aqtau', 5.00, 5.00, 5.00),
('KZ', 'Asia/Aqtobe', 5.00, 5.00, 5.00),
('KZ', 'Asia/Oral', 5.00, 5.00, 5.00),
('KZ', 'Asia/Qyzylorda', 6.00, 6.00, 6.00),
('LA', 'Asia/Vientiane', 7.00, 7.00, 7.00),
('LB', 'Asia/Beirut', 2.00, 3.00, 2.00),
('LC', 'America/St_Lucia', -4.00, -4.00, -4.00),
('LI', 'Europe/Vaduz', 1.00, 2.00, 1.00),
('LK', 'Asia/Colombo', 5.50, 5.50, 5.50),
('LR', 'Africa/Monrovia', 0.00, 0.00, 0.00),
('LS', 'Africa/Maseru', 2.00, 2.00, 2.00),
('LT', 'Europe/Vilnius', 2.00, 3.00, 2.00),
('LU', 'Europe/Luxembourg', 1.00, 2.00, 1.00),
('LV', 'Europe/Riga', 2.00, 3.00, 2.00),
('LY', 'Africa/Tripoli', 2.00, 2.00, 2.00),
('MA', 'Africa/Casablanca', 0.00, 0.00, 0.00),
('MC', 'Europe/Monaco', 1.00, 2.00, 1.00),
('MD', 'Europe/Chisinau', 2.00, 3.00, 2.00),
('ME', 'Europe/Podgorica', 1.00, 2.00, 1.00),
('MF', 'America/Marigot', -4.00, -4.00, -4.00),
('MG', 'Indian/Antananarivo', 3.00, 3.00, 3.00),
('MH', 'Pacific/Kwajalein', 12.00, 12.00, 12.00),
('MH', 'Pacific/Majuro', 12.00, 12.00, 12.00),
('MK', 'Europe/Skopje', 1.00, 2.00, 1.00),
('ML', 'Africa/Bamako', 0.00, 0.00, 0.00),
('MM', 'Asia/Rangoon', 6.50, 6.50, 6.50),
('MN', 'Asia/Choibalsan', 8.00, 8.00, 8.00),
('MN', 'Asia/Hovd', 7.00, 7.00, 7.00),
('MN', 'Asia/Ulaanbaatar', 8.00, 8.00, 8.00),
('MO', 'Asia/Macau', 8.00, 8.00, 8.00),
('MP', 'Pacific/Saipan', 10.00, 10.00, 10.00),
('MQ', 'America/Martinique', -4.00, -4.00, -4.00),
('MR', 'Africa/Nouakchott', 0.00, 0.00, 0.00),
('MS', 'America/Montserrat', -4.00, -4.00, -4.00),
('MT', 'Europe/Malta', 1.00, 2.00, 1.00),
('MU', 'Indian/Mauritius', 4.00, 4.00, 4.00),
('MV', 'Indian/Maldives', 5.00, 5.00, 5.00),
('MW', 'Africa/Blantyre', 2.00, 2.00, 2.00),
('MX', 'America/Bahia_Banderas', -6.00, -5.00, -6.00),
('MX', 'America/Cancun', -6.00, -5.00, -6.00),
('MX', 'America/Chihuahua', -7.00, -6.00, -7.00),
('MX', 'America/Hermosillo', -7.00, -7.00, -7.00),
('MX', 'America/Matamoros', -6.00, -5.00, -6.00),
('MX', 'America/Mazatlan', -7.00, -6.00, -7.00),
('MX', 'America/Merida', -6.00, -5.00, -6.00),
('MX', 'America/Mexico_City', -6.00, -5.00, -6.00),
('MX', 'America/Monterrey', -6.00, -5.00, -6.00),
('MX', 'America/Ojinaga', -7.00, -6.00, -7.00),
('MX', 'America/Santa_Isabel', -8.00, -7.00, -8.00),
('MX', 'America/Tijuana', -8.00, -7.00, -8.00),
('MY', 'Asia/Kuala_Lumpur', 8.00, 8.00, 8.00),
('MY', 'Asia/Kuching', 8.00, 8.00, 8.00),
('MZ', 'Africa/Maputo', 2.00, 2.00, 2.00),
('NA', 'Africa/Windhoek', 2.00, 1.00, 1.00),
('NC', 'Pacific/Noumea', 11.00, 11.00, 11.00),
('NE', 'Africa/Niamey', 1.00, 1.00, 1.00),
('NF', 'Pacific/Norfolk', 11.50, 11.50, 11.50),
('NG', 'Africa/Lagos', 1.00, 1.00, 1.00),
('NI', 'America/Managua', -6.00, -6.00, -6.00),
('NL', 'Europe/Amsterdam', 1.00, 2.00, 1.00),
('NO', 'Europe/Oslo', 1.00, 2.00, 1.00),
('NP', 'Asia/Kathmandu', 5.75, 5.75, 5.75),
('NR', 'Pacific/Nauru', 12.00, 12.00, 12.00),
('NU', 'Pacific/Niue', -11.00, -11.00, -11.00),
('NZ', 'Pacific/Auckland', 13.00, 12.00, 12.00),
('NZ', 'Pacific/Chatham', 13.75, 12.75, 12.75),
('OM', 'Asia/Muscat', 4.00, 4.00, 4.00),
('PA', 'America/Panama', -5.00, -5.00, -5.00),
('PE', 'America/Lima', -5.00, -5.00, -5.00),
('PF', 'Pacific/Gambier', -9.00, -9.00, -9.00),
('PF', 'Pacific/Marquesas', -9.50, -9.50, -9.50),
('PF', 'Pacific/Tahiti', -10.00, -10.00, -10.00),
('PG', 'Pacific/Port_Moresby', 10.00, 10.00, 10.00),
('PH', 'Asia/Manila', 8.00, 8.00, 8.00),
('PK', 'Asia/Karachi', 5.00, 5.00, 5.00),
('PL', 'Europe/Warsaw', 1.00, 2.00, 1.00),
('PM', 'America/Miquelon', -3.00, -2.00, -3.00),
('PN', 'Pacific/Pitcairn', -8.00, -8.00, -8.00),
('PR', 'America/Puerto_Rico', -4.00, -4.00, -4.00),
('PS', 'Asia/Gaza', 2.00, 3.00, 2.00),
('PS', 'Asia/Hebron', 2.00, 3.00, 2.00),
('PT', 'Atlantic/Azores', -1.00, 0.00, -1.00),
('PT', 'Atlantic/Madeira', 0.00, 1.00, 0.00),
('PT', 'Europe/Lisbon', 0.00, 1.00, 0.00),
('PW', 'Pacific/Palau', 9.00, 9.00, 9.00),
('PY', 'America/Asuncion', -3.00, -4.00, -4.00),
('QA', 'Asia/Qatar', 3.00, 3.00, 3.00),
('RE', 'Indian/Reunion', 4.00, 4.00, 4.00),
('RO', 'Europe/Bucharest', 2.00, 3.00, 2.00),
('RS', 'Europe/Belgrade', 1.00, 2.00, 1.00),
('RU', 'Asia/Anadyr', 12.00, 12.00, 12.00),
('RU', 'Asia/Irkutsk', 9.00, 9.00, 9.00),
('RU', 'Asia/Kamchatka', 12.00, 12.00, 12.00),
('RU', 'Asia/Khandyga', 10.00, 10.00, 10.00),
('RU', 'Asia/Krasnoyarsk', 8.00, 8.00, 8.00),
('RU', 'Asia/Magadan', 12.00, 12.00, 12.00),
('RU', 'Asia/Novokuznetsk', 7.00, 7.00, 7.00),
('RU', 'Asia/Novosibirsk', 7.00, 7.00, 7.00),
('RU', 'Asia/Omsk', 7.00, 7.00, 7.00),
('RU', 'Asia/Sakhalin', 11.00, 11.00, 11.00),
('RU', 'Asia/Ust-Nera', 11.00, 11.00, 11.00),
('RU', 'Asia/Vladivostok', 11.00, 11.00, 11.00),
('RU', 'Asia/Yakutsk', 10.00, 10.00, 10.00),
('RU', 'Asia/Yekaterinburg', 6.00, 6.00, 6.00),
('RU', 'Europe/Kaliningrad', 3.00, 3.00, 3.00),
('RU', 'Europe/Moscow', 4.00, 4.00, 4.00),
('RU', 'Europe/Samara', 4.00, 4.00, 4.00),
('RU', 'Europe/Volgograd', 4.00, 4.00, 4.00),
('RW', 'Africa/Kigali', 2.00, 2.00, 2.00),
('SA', 'Asia/Riyadh', 3.00, 3.00, 3.00),
('SB', 'Pacific/Guadalcanal', 11.00, 11.00, 11.00),
('SC', 'Indian/Mahe', 4.00, 4.00, 4.00),
('SD', 'Africa/Khartoum', 3.00, 3.00, 3.00),
('SE', 'Europe/Stockholm', 1.00, 2.00, 1.00),
('SG', 'Asia/Singapore', 8.00, 8.00, 8.00),
('SH', 'Atlantic/St_Helena', 0.00, 0.00, 0.00),
('SI', 'Europe/Ljubljana', 1.00, 2.00, 1.00),
('SJ', 'Arctic/Longyearbyen', 1.00, 2.00, 1.00),
('SK', 'Europe/Bratislava', 1.00, 2.00, 1.00),
('SL', 'Africa/Freetown', 0.00, 0.00, 0.00),
('SM', 'Europe/San_Marino', 1.00, 2.00, 1.00),
('SN', 'Africa/Dakar', 0.00, 0.00, 0.00),
('SO', 'Africa/Mogadishu', 3.00, 3.00, 3.00),
('SR', 'America/Paramaribo', -3.00, -3.00, -3.00),
('SS', 'Africa/Juba', 3.00, 3.00, 3.00),
('ST', 'Africa/Sao_Tome', 0.00, 0.00, 0.00),
('SV', 'America/El_Salvador', -6.00, -6.00, -6.00),
('SX', 'America/Lower_Princes', -4.00, -4.00, -4.00),
('SY', 'Asia/Damascus', 2.00, 3.00, 2.00),
('SZ', 'Africa/Mbabane', 2.00, 2.00, 2.00),
('TC', 'America/Grand_Turk', -5.00, -4.00, -5.00),
('TD', 'Africa/Ndjamena', 1.00, 1.00, 1.00),
('TF', 'Indian/Kerguelen', 5.00, 5.00, 5.00),
('TG', 'Africa/Lome', 0.00, 0.00, 0.00),
('TH', 'Asia/Bangkok', 7.00, 7.00, 7.00),
('TJ', 'Asia/Dushanbe', 5.00, 5.00, 5.00),
('TK', 'Pacific/Fakaofo', 13.00, 13.00, 13.00),
('TL', 'Asia/Dili', 9.00, 9.00, 9.00),
('TM', 'Asia/Ashgabat', 5.00, 5.00, 5.00),
('TN', 'Africa/Tunis', 1.00, 1.00, 1.00),
('TO', 'Pacific/Tongatapu', 13.00, 13.00, 13.00),
('TR', 'Europe/Istanbul', 2.00, 3.00, 2.00),
('TT', 'America/Port_of_Spain', -4.00, -4.00, -4.00),
('TV', 'Pacific/Funafuti', 12.00, 12.00, 12.00),
('TW', 'Asia/Taipei', 8.00, 8.00, 8.00),
('TZ', 'Africa/Dar_es_Salaam', 3.00, 3.00, 3.00),
('UA', 'Europe/Kiev', 2.00, 3.00, 2.00),
('UA', 'Europe/Simferopol', 2.00, 4.00, 4.00),
('UA', 'Europe/Uzhgorod', 2.00, 3.00, 2.00),
('UA', 'Europe/Zaporozhye', 2.00, 3.00, 2.00),
('UG', 'Africa/Kampala', 3.00, 3.00, 3.00),
('UM', 'Pacific/Johnston', -10.00, -10.00, -10.00),
('UM', 'Pacific/Midway', -11.00, -11.00, -11.00),
('UM', 'Pacific/Wake', 12.00, 12.00, 12.00),
('US', 'America/Adak', -10.00, -9.00, -10.00),
('US', 'America/Anchorage', -9.00, -8.00, -9.00),
('US', 'America/Boise', -7.00, -6.00, -7.00),
('US', 'America/Chicago', -6.00, -5.00, -6.00),
('US', 'America/Denver', -7.00, -6.00, -7.00),
('US', 'America/Detroit', -5.00, -4.00, -5.00),
('US', 'America/Indiana/Indianapolis', -5.00, -4.00, -5.00),
('US', 'America/Indiana/Knox', -6.00, -5.00, -6.00),
('US', 'America/Indiana/Marengo', -5.00, -4.00, -5.00),
('US', 'America/Indiana/Petersburg', -5.00, -4.00, -5.00),
('US', 'America/Indiana/Tell_City', -6.00, -5.00, -6.00),
('US', 'America/Indiana/Vevay', -5.00, -4.00, -5.00),
('US', 'America/Indiana/Vincennes', -5.00, -4.00, -5.00),
('US', 'America/Indiana/Winamac', -5.00, -4.00, -5.00),
('US', 'America/Juneau', -9.00, -8.00, -9.00),
('US', 'America/Kentucky/Louisville', -5.00, -4.00, -5.00),
('US', 'America/Kentucky/Monticello', -5.00, -4.00, -5.00),
('US', 'America/Los_Angeles', -8.00, -7.00, -8.00),
('US', 'America/Menominee', -6.00, -5.00, -6.00),
('US', 'America/Metlakatla', -8.00, -8.00, -8.00),
('US', 'America/New_York', -5.00, -4.00, -5.00),
('US', 'America/Nome', -9.00, -8.00, -9.00),
('US', 'America/North_Dakota/Beulah', -6.00, -5.00, -6.00),
('US', 'America/North_Dakota/Center', -6.00, -5.00, -6.00),
('US', 'America/North_Dakota/New_Salem', -6.00, -5.00, -6.00),
('US', 'America/Phoenix', -7.00, -7.00, -7.00),
('US', 'America/Shiprock', -7.00, -6.00, -7.00),
('US', 'America/Sitka', -9.00, -8.00, -9.00),
('US', 'America/Yakutat', -9.00, -8.00, -9.00),
('US', 'Pacific/Honolulu', -10.00, -10.00, -10.00),
('UY', 'America/Montevideo', -2.00, -3.00, -3.00),
('UZ', 'Asia/Samarkand', 5.00, 5.00, 5.00),
('UZ', 'Asia/Tashkent', 5.00, 5.00, 5.00),
('VA', 'Europe/Vatican', 1.00, 2.00, 1.00),
('VC', 'America/St_Vincent', -4.00, -4.00, -4.00),
('VE', 'America/Caracas', -4.50, -4.50, -4.50),
('VG', 'America/Tortola', -4.00, -4.00, -4.00),
('VI', 'America/St_Thomas', -4.00, -4.00, -4.00),
('VN', 'Asia/Ho_Chi_Minh', 7.00, 7.00, 7.00),
('VU', 'Pacific/Efate', 11.00, 11.00, 11.00),
('WF', 'Pacific/Wallis', 12.00, 12.00, 12.00),
('WS', 'Pacific/Apia', 14.00, 13.00, 13.00),
('YE', 'Asia/Aden', 3.00, 3.00, 3.00),
('YT', 'Indian/Mayotte', 3.00, 3.00, 3.00),
('ZA', 'Africa/Johannesburg', 2.00, 2.00, 2.00),
('ZM', 'Africa/Lusaka', 2.00, 2.00, 2.00),
('ZW', 'Africa/Harare', 2.00, 2.00, 2.00);

-- --------------------------------------------------------

--
-- Table structure for table `time_frames`
--

CREATE TABLE `time_frames` (
  `id` int(11) NOT NULL,
  `day` varchar(100) DEFAULT NULL,
  `start` varchar(100) DEFAULT NULL,
  `end` varchar(100) DEFAULT NULL,
  `max_orders` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_frames`
--

INSERT INTO `time_frames` (`id`, `day`, `start`, `end`, `max_orders`) VALUES
(4, 'wednesday', '12:00 PM', '05:00 PM', 0),
(5, 'monday', '12:30 PM', '05:00 PM', 0),
(6, 'tuesday', '12:00 PM', '05:00 PM', 0),
(7, 'thursday', '12:00 PM', '05:00 PM', 0),
(8, 'friday', '12:00 PM', '05:00 PM', 0),
(9, 'saturday', '12:00 PM', '05:00 PM', 0),
(10, 'sunday', '12:00 PM', '05:00 PM', 0);

-- --------------------------------------------------------

--
-- Table structure for table `titles`
--

CREATE TABLE `titles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `section` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ulinks`
--

CREATE TABLE `ulinks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ulinks`
--

INSERT INTO `ulinks` (`id`, `language_id`, `name`, `url`, `created_at`, `updated_at`) VALUES
(40, 179, 'Libro de Reclamaciones', 'https://rinconchami.pe/librodereclamaciones/10/page', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `billing_fname` varchar(255) DEFAULT NULL,
  `billing_lname` varchar(255) DEFAULT NULL,
  `billing_photo` varchar(255) DEFAULT NULL,
  `billing_username` varchar(255) DEFAULT NULL,
  `billing_email` varchar(255) DEFAULT NULL,
  `billing_number` varchar(255) DEFAULT NULL,
  `billing_city` varchar(255) DEFAULT NULL,
  `billing_state` varchar(255) DEFAULT NULL,
  `billing_address` varchar(255) DEFAULT NULL,
  `billing_country` varchar(255) DEFAULT NULL,
  `shpping_fname` varchar(255) DEFAULT NULL,
  `shpping_lname` varchar(255) DEFAULT NULL,
  `shpping_photo` varchar(255) DEFAULT NULL,
  `shpping_username` varchar(255) DEFAULT NULL,
  `shpping_email` varchar(255) DEFAULT NULL,
  `shpping_number` varchar(255) DEFAULT NULL,
  `shpping_city` varchar(255) DEFAULT NULL,
  `shpping_state` varchar(255) DEFAULT NULL,
  `shpping_address` varchar(255) DEFAULT NULL,
  `shpping_country` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `verification_link` text DEFAULT NULL,
  `email_verified` varchar(20) NOT NULL DEFAULT 'no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_id` varchar(255) DEFAULT NULL,
  `billing_country_code` varchar(10) DEFAULT NULL,
  `shipping_country_code` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `photo`, `username`, `email`, `password`, `number`, `city`, `state`, `address`, `country`, `remember_token`, `billing_fname`, `billing_lname`, `billing_photo`, `billing_username`, `billing_email`, `billing_number`, `billing_city`, `billing_state`, `billing_address`, `billing_country`, `shpping_fname`, `shpping_lname`, `shpping_photo`, `shpping_username`, `shpping_email`, `shpping_number`, `shpping_city`, `shpping_state`, `shpping_address`, `shpping_country`, `status`, `verification_link`, `email_verified`, `created_at`, `updated_at`, `provider`, `provider_id`, `billing_country_code`, `shipping_country_code`) VALUES
(20, NULL, NULL, NULL, 'gutterreal', 'trevorcalfan2@gmail.com', '$2y$10$cHdLVLKhnF4r3gbOQbFM2.155rWeonwdLCDphPTyIfSsn1aNvt2Iq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '99acd17e304e7428f8af60110191d266', 'Yes', '2023-07-26 03:16:28', '2023-07-31 15:38:37', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`admin_id`,`role_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`area_id`);

--
-- Indexes for table `backups`
--
ALTER TABLE `backups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basic_extendeds`
--
ALTER TABLE `basic_extendeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basic_extras`
--
ALTER TABLE `basic_extras`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basic_settings`
--
ALTER TABLE `basic_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bcategories`
--
ALTER TABLE `bcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bottomlinks`
--
ALTER TABLE `bottomlinks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctype`
--
ALTER TABLE `doctype`
  ADD PRIMARY KEY (`doctype_id`);

--
-- Indexes for table `documento_iso`
--
ALTER TABLE `documento_iso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `process_id` (`process_id`),
  ADD KEY `doctype_id` (`doctype_id`);

--
-- Indexes for table `documento_iso_logs`
--
ALTER TABLE `documento_iso_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documento_iso_id` (`documento_iso_id`);

--
-- Indexes for table `documento_iso_role`
--
ALTER TABLE `documento_iso_role`
  ADD PRIMARY KEY (`documento_iso_id`,`role_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `documento_iso_versions`
--
ALTER TABLE `documento_iso_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documento_iso_id` (`documento_iso_id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guests`
--
ALTER TABLE `guests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `guests_endpoint_unique` (`endpoint`);

--
-- Indexes for table `intro_points`
--
ALTER TABLE `intro_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jcategories`
--
ALTER TABLE `jcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offline_gateways`
--
ALTER TABLE `offline_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_times`
--
ALTER TABLE `order_times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pcategories`
--
ALTER TABLE `pcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `popups`
--
ALTER TABLE `popups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `popups_language_id_foreign` (`language_id`);

--
-- Indexes for table `postal_codes`
--
ALTER TABLE `postal_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `postal_codes_language_id_foreign` (`language_id`);

--
-- Indexes for table `pos_payment_methods`
--
ALTER TABLE `pos_payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `process`
--
ALTER TABLE `process`
  ADD PRIMARY KEY (`process_id`),
  ADD KEY `area_id` (`area_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_orders`
--
ALTER TABLE `product_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `psub_categories`
--
ALTER TABLE `psub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `push_subscriptions`
--
ALTER TABLE `push_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `push_subscriptions_endpoint_unique` (`endpoint`);

--
-- Indexes for table `reservation_inputs`
--
ALTER TABLE `reservation_inputs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation_input_options`
--
ALTER TABLE `reservation_input_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `serving_methods`
--
ALTER TABLE `serving_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitemaps`
--
ALTER TABLE `sitemaps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_books`
--
ALTER TABLE `table_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timezones`
--
ALTER TABLE `timezones`
  ADD PRIMARY KEY (`country_code`,`timezone`);

--
-- Indexes for table `time_frames`
--
ALTER TABLE `time_frames`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ulinks`
--
ALTER TABLE `ulinks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `area_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `backups`
--
ALTER TABLE `backups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `basic_extendeds`
--
ALTER TABLE `basic_extendeds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `basic_extras`
--
ALTER TABLE `basic_extras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `basic_settings`
--
ALTER TABLE `basic_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `bcategories`
--
ALTER TABLE `bcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `bottomlinks`
--
ALTER TABLE `bottomlinks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `doctype`
--
ALTER TABLE `doctype`
  MODIFY `doctype_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `documento_iso`
--
ALTER TABLE `documento_iso`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `documento_iso_logs`
--
ALTER TABLE `documento_iso_logs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `documento_iso_versions`
--
ALTER TABLE `documento_iso_versions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guests`
--
ALTER TABLE `guests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=994;

--
-- AUTO_INCREMENT for table `intro_points`
--
ALTER TABLE `intro_points`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `jcategories`
--
ALTER TABLE `jcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `offline_gateways`
--
ALTER TABLE `offline_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `order_times`
--
ALTER TABLE `order_times`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `pcategories`
--
ALTER TABLE `pcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `popups`
--
ALTER TABLE `popups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `postal_codes`
--
ALTER TABLE `postal_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_payment_methods`
--
ALTER TABLE `pos_payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `process`
--
ALTER TABLE `process`
  MODIFY `process_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT for table `product_orders`
--
ALTER TABLE `product_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `psub_categories`
--
ALTER TABLE `psub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `push_subscriptions`
--
ALTER TABLE `push_subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=992;

--
-- AUTO_INCREMENT for table `reservation_inputs`
--
ALTER TABLE `reservation_inputs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `reservation_input_options`
--
ALTER TABLE `reservation_input_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `serving_methods`
--
ALTER TABLE `serving_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sitemaps`
--
ALTER TABLE `sitemaps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_books`
--
ALTER TABLE `table_books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `time_frames`
--
ALTER TABLE `time_frames`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `titles`
--
ALTER TABLE `titles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ulinks`
--
ALTER TABLE `ulinks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_role`
--
ALTER TABLE `admin_role`
  ADD CONSTRAINT `admin_role_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `admin_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `documento_iso`
--
ALTER TABLE `documento_iso`
  ADD CONSTRAINT `documento_iso_ibfk_1` FOREIGN KEY (`process_id`) REFERENCES `process` (`process_id`),
  ADD CONSTRAINT `documento_iso_ibfk_2` FOREIGN KEY (`doctype_id`) REFERENCES `doctype` (`doctype_id`);

--
-- Constraints for table `documento_iso_logs`
--
ALTER TABLE `documento_iso_logs`
  ADD CONSTRAINT `documento_iso_logs_ibfk_1` FOREIGN KEY (`documento_iso_id`) REFERENCES `documento_iso` (`id`);

--
-- Constraints for table `documento_iso_role`
--
ALTER TABLE `documento_iso_role`
  ADD CONSTRAINT `documento_iso_role_ibfk_1` FOREIGN KEY (`documento_iso_id`) REFERENCES `documento_iso` (`id`),
  ADD CONSTRAINT `documento_iso_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `documento_iso_versions`
--
ALTER TABLE `documento_iso_versions`
  ADD CONSTRAINT `documento_iso_versions_ibfk_1` FOREIGN KEY (`documento_iso_id`) REFERENCES `documento_iso` (`id`);

--
-- Constraints for table `popups`
--
ALTER TABLE `popups`
  ADD CONSTRAINT `popups_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `postal_codes`
--
ALTER TABLE `postal_codes`
  ADD CONSTRAINT `postal_codes_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `process`
--
ALTER TABLE `process`
  ADD CONSTRAINT `process_ibfk_1` FOREIGN KEY (`area_id`) REFERENCES `area` (`area_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
