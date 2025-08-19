-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 27-10-2023 a las 04:27:15
-- Versión del servidor: 5.7.39
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `superv`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0 - deactive, 1 - active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `admins`
--

INSERT INTO `admins` (`id`, `role_id`, `username`, `email`, `first_name`, `last_name`, `image`, `password`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'admin', 'admin@gmail.com', 'admin', 'admin', '64b893b1375a9.jpg', '$2y$10$UmZ3nP0JIUOI0CxLG/175efcigYJDbfg45Ga4cYz/YdZOshZ0GPMm', 1, NULL, '2023-07-20 01:54:12'),
(10, 7, 'delivery', 'delivery@gmail.com', 'Delivery', 'Manager', '5f6c395833e14.jpg', '$2y$10$658kJ38abUEn.d46DmYhQ.wNIy9fRE2TPDrNzeMODbxDWHWOwrqRS', 1, '2020-09-24 00:14:48', '2020-09-28 11:24:32'),
(11, 8, 'kitchen', 'kitchen@gmail.com', 'Kitchen', 'Manager', '60a934a18ff49.jpg', '$2y$10$PTTKwbg5AEHm4BBVUaes1uhlx1eZKeTJzD7M5pIQjPrDmGYaVzul2', 1, '2020-09-28 11:23:39', '2021-05-23 01:43:13'),
(12, 9, 'test', 'saifislamfci@gmail.com', 'Saiful Islam', 'Sharif', '6402c0c90904c.jpg', '$2y$10$7mmLn1fWdaYUkNQY8fEwY.QB6csIcv9WpFo5zLDvYy4UFZvuqq48W', 1, '2023-03-04 03:53:45', '2023-03-04 03:53:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `backups`
--

CREATE TABLE `backups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `backups`
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
-- Estructura de tabla para la tabla `basic_extendeds`
--

CREATE TABLE `basic_extendeds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `cookie_alert_status` tinyint(4) NOT NULL DEFAULT '1',
  `cookie_alert_text` blob,
  `cookie_alert_button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_mail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_language_direction` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ltr' COMMENT 'ltr / rtl',
  `blogs_meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `blogs_meta_description` text COLLATE utf8mb4_unicode_ci,
  `is_facebook_pexel` tinyint(4) NOT NULL DEFAULT '0',
  `facebook_pexel_script` text COLLATE utf8mb4_unicode_ci,
  `theme_version` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT 'default_service_category',
  `from_mail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_smtp` tinyint(4) NOT NULL DEFAULT '0',
  `smtp_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `encryption` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_shape_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_bottom_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_bottom_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_section_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_section_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_section_img` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_section_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_section_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_bg_img` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_section_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_section_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_section_img` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_currency_symbol` blob,
  `base_currency_symbol_position` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'left',
  `base_currency_text` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_currency_text_position` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'right',
  `base_currency_rate` decimal(8,2) NOT NULL DEFAULT '0.00',
  `hero_bg` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_bold_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_bold_text_font_size` int(11) NOT NULL DEFAULT '60',
  `hero_section_bold_text_color` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'FFFFFF',
  `hero_section_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_text_font_size` int(11) NOT NULL DEFAULT '18',
  `hero_section_text_color` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'FFFFFF',
  `hero_section_button_text` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_button_text_font_size` int(11) NOT NULL DEFAULT '14',
  `hero_section_button_color` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'FFFFFF',
  `hero_section_button_url` text COLLATE utf8mb4_unicode_ci,
  `hero_section_button2_text` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_button2_text_font_size` int(11) DEFAULT '14',
  `hero_section_button2_url` text COLLATE utf8mb4_unicode_ci,
  `hero_shape_img` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_bottom_img` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_video_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_side_img` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `career_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `career_details_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_section_bg` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_version` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - menu with col-6, 2 - menu with col-12',
  `qrcode_url` text COLLATE utf8mb4_unicode_ci,
  `qrcode_color` text COLLATE utf8mb4_unicode_ci,
  `pusher_app_id` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pusher_app_key` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pusher_app_secret` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pusher_app_cluster` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_facebook_login` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - Active, 0 - Deactive',
  `facebook_app_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_app_secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_google_login` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - Active, 0 - Deactive',
  `google_client_id` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_client_secret` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT 'UTC',
  `delivery_date_time_status` tinyint(4) NOT NULL DEFAULT '0',
  `delivery_date_time_required` tinyint(4) NOT NULL DEFAULT '0',
  `qr_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qr_color` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `qr_size` int(11) NOT NULL DEFAULT '250',
  `qr_style` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'square',
  `qr_eye_style` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'square',
  `qr_margin` int(11) NOT NULL DEFAULT '0',
  `qr_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qr_text_color` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '000000',
  `qr_text_size` int(11) NOT NULL DEFAULT '15',
  `qr_text_x` int(11) NOT NULL DEFAULT '50',
  `qr_text_y` int(11) NOT NULL DEFAULT '50',
  `qr_inserted_image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qr_inserted_image_size` int(11) NOT NULL DEFAULT '20',
  `qr_inserted_image_x` int(11) NOT NULL DEFAULT '50',
  `qr_inserted_image_y` int(11) NOT NULL DEFAULT '50',
  `qr_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default' COMMENT 'default, image, text',
  `order_close` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1 - order closed, 0 - order open',
  `order_close_message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Order is closed now!',
  `testimonial_side_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature_section_bg_image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_section_bg_image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_section_bg_image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_button_two_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_author_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_author_image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_author_designation` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_bg_image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_section_top_shape_image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_section_bottom_shape_image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_section_bg_image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_water_shape_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_water_shape_text_font_size` int(11) DEFAULT NULL,
  `hero_section_water_shape_text_color` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `basic_extendeds`
--

INSERT INTO `basic_extendeds` (`id`, `language_id`, `cookie_alert_status`, `cookie_alert_text`, `cookie_alert_button_text`, `to_mail`, `default_language_direction`, `blogs_meta_keywords`, `blogs_meta_description`, `is_facebook_pexel`, `facebook_pexel_script`, `theme_version`, `from_mail`, `from_name`, `is_smtp`, `smtp_host`, `smtp_port`, `encryption`, `smtp_username`, `smtp_password`, `slider_shape_img`, `slider_bottom_img`, `footer_bottom_img`, `menu_section_title`, `menu_section_subtitle`, `menu_section_img`, `special_section_title`, `special_section_subtitle`, `testimonial_bg_img`, `table_section_title`, `table_section_subtitle`, `table_section_img`, `base_currency_symbol`, `base_currency_symbol_position`, `base_currency_text`, `base_currency_text_position`, `base_currency_rate`, `hero_bg`, `hero_section_bold_text`, `hero_section_bold_text_font_size`, `hero_section_bold_text_color`, `hero_section_text`, `hero_section_text_font_size`, `hero_section_text_color`, `hero_section_button_text`, `hero_section_button_text_font_size`, `hero_section_button_color`, `hero_section_button_url`, `hero_section_button2_text`, `hero_section_button2_text_font_size`, `hero_section_button2_url`, `hero_shape_img`, `hero_bottom_img`, `hero_section_video_link`, `hero_side_img`, `faq_title`, `career_title`, `career_details_title`, `special_section_bg`, `menu_version`, `qrcode_url`, `qrcode_color`, `pusher_app_id`, `pusher_app_key`, `pusher_app_secret`, `pusher_app_cluster`, `is_facebook_login`, `facebook_app_id`, `facebook_app_secret`, `is_google_login`, `google_client_id`, `google_client_secret`, `timezone`, `delivery_date_time_status`, `delivery_date_time_required`, `qr_image`, `qr_color`, `qr_size`, `qr_style`, `qr_eye_style`, `qr_margin`, `qr_text`, `qr_text_color`, `qr_text_size`, `qr_text_x`, `qr_text_y`, `qr_inserted_image`, `qr_inserted_image_size`, `qr_inserted_image_x`, `qr_inserted_image_y`, `qr_type`, `order_close`, `order_close_message`, `testimonial_side_img`, `feature_section_bg_image`, `special_section_bg_image`, `footer_section_bg_image`, `hero_section_button_two_color`, `hero_section_author_name`, `hero_section_author_image`, `hero_section_author_designation`, `intro_bg_image`, `testimonial_section_top_shape_image`, `testimonial_section_bottom_shape_image`, `blog_section_bg_image`, `hero_section_water_shape_text`, `hero_section_water_shape_text_font_size`, `hero_section_water_shape_text_color`) VALUES
(150, 179, 1, 0x3c6469763e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c3b223e5574696c697a616d6f7320636f6f6b6965732070726f706961732079206465207465726365726f732070617261206f6274656e6572206461746f73206573746164c3ad737469636f73206465206c61206e61766567616369c3b36e206465206e75657374726f73207573756172696f732079206d656a6f726172206e75657374726f7320736572766963696f732e20536920616365707461206f20636f6e74696ec3ba61206e61766567616e646f2c20636f6e7369646572616d6f7320717565206163657074612073752075736f2ec2a050756564652063616d62696172206c6120636f6e6669677572616369c3b36e2075206f6274656e6572206dc3a17320696e666f726d616369c3b36e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a313770783b666f6e742d7765696768743a3730303b666f6e742d66616d696c793a417269616c3b223e3c6120687265663d22687474703a2f2f6c6f63616c686f73742f7375706572762f636f6f6b6965732d706f6c6963792f31312f70616765223e617175c3ad3c2f613e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c3b666f6e742d73697a653a313770783b223e2e3c2f7370616e3e3c2f6469763e, 'Permitir Cookies', 'admin@rinconchami.pe', 'ltr', 'lorem, dolor', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 1, '<!-- Facebook Pixel Code -->\r\n<script>\r\n!function(f,b,e,v,n,t,s)\r\n{if(f.fbq)return;n=f.fbq=function(){n.callMethod?\r\nn.callMethod.apply(n,arguments):n.queue.push(arguments)};\r\nif(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version=\'2.0\';\r\nn.queue=[];t=b.createElement(e);t.async=!0;\r\nt.src=v;s=b.getElementsByTagName(e)[0];\r\ns.parentNode.insertBefore(t,s)}(window, document,\'script\',\r\n\'https://connect.facebook.net/en_US/fbevents.js\');\r\nfbq(\'init\', \'2723323421236702\');\r\nfbq(\'track\', \'PageView\');\r\n</script>\r\n<noscript><img height=\"1\" width=\"1\" style=\"display:none\"\r\nsrc=\"https://www.facebook.com/tr?id=2723323421236702&ev=PageView&noscript=1\"\r\n/></noscript>\r\n<!-- End Facebook Pixel Code -->', 'default_service_category', 'admin@rinconchami.pe', 'Administracion', 1, 'smtpout.secureserver.net', '587', 'TLS', 'admin@rinconchami.pe', 'z$5ru94Xng', NULL, NULL, NULL, '\"La auténtica receta del Rincón Chami\"', NULL, '1687222739.jpg', 'Our Special Offered Items Price', 'VIEW ALL MENU LIST', '64ba036a70573.jpg', 'Reservación', 'Reserva tu Mesa', '1683098625.png', 0x532f2e, 'left', 'PEN', 'right', '1.00', '651cfeecf3b61.jpg', 'Lomo Saltado', 60, 'FFFFFF', 'suculento plato fuerte, salteado de lomo fino, cebolla, tomate, cilantro acompañado de arroz y papas fritas y el secreto de la casa desde hace 50 años, no hay otro igual.', 18, 'FFFFFF', 'Ver mas platos', 18, '000000', 'https://codecanyon8.kreativdev.com/superv/menus', 'Pedir Ahora', 14, 'https://codecanyon8.kreativdev.com/superv/reservation/form', NULL, NULL, 'https://www.youtube.com/watch?v=ZDQn-9cdx9Q', '64ac4656bd624.png', 'F.A.Q.', 'Career', 'Job Details', '1600010997.jpg', 2, 'https://codecanyon.kreativdev.com/superv/qr-menu', '3851FF', '1080494', 'bd457a6ed0c247922b06', '019547a8751eec9b83af', 'ap2', 0, '188100859706337', '73dc84a95f12657de1b1ebaa6cc7ba94', 1, '81856165251-cd0s41jcep43b3a33i3rc7pnp3jdvo0p.apps.googleusercontent.com', 'nLCYVG30u-bVIvhzSg-z52pi', 'America/Bogota', 1, 1, '64ae48bd2cb2f.png', '18173D', 297, 'square', 'square', 1, 'Kreativ', '114C05', 14, 50, 50, '60a92611aca0a.png', 7, 50, 50, 'image', 0, 'Order is closed now!', '1680940275.png', '6432711301a4f.jpg', '6432710879569.jpg', '64adf53bf223a.jpeg', 'D3A971', 'Hames Rodrigo', '642916deb895f.jpg', 'Founder & Ceo', '6412f4bbf028b.png', '1678963129.png', '1678948560.png', '641a9269c1419.png', 'Orange juccice', 50, 'FFD854');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `basic_extras`
--

CREATE TABLE `basic_extras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `whatsapp_order_status_notification` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 - disable, 1 - enable',
  `whatsapp_home_delivery` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 - enabled, 1 - disabled',
  `whatsapp_pickup` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 - enabled, 1 - disabled',
  `whatsapp_on_table` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 - enabled, 1 - disabled',
  `twilio_sid` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_phone_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `basic_extras`
--

INSERT INTO `basic_extras` (`id`, `whatsapp_order_status_notification`, `whatsapp_home_delivery`, `whatsapp_pickup`, `whatsapp_on_table`, `twilio_sid`, `twilio_token`, `twilio_phone_number`) VALUES
(1, 1, 1, 1, 0, 'AC87db7baafc84b106f2d59eee812b8f7e', '8a938c87f06427109910fde8a5794b5f', '+14155238886');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `basic_settings`
--

CREATE TABLE `basic_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `favicon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preloader_status` tinyint(4) NOT NULL COMMENT '0 - deactive, 1 - active',
  `preloader` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_color` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_base_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_logo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `newsletter_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_text` blob,
  `intro_section_title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_text` text COLLATE utf8mb4_unicode_ci,
  `intro_contact_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_contact_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_video_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_signature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_video_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_main_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_section_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_section_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_form_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_address` text COLLATE utf8mb4_unicode_ci,
  `contact_number` text COLLATE utf8mb4_unicode_ci,
  `contact_mails` text COLLATE utf8mb4_unicode_ci,
  `contact_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_zoom` int(11) NOT NULL DEFAULT '10',
  `contact_info_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tawk_to_script` text COLLATE utf8mb4_unicode_ci,
  `google_analytics_script` text COLLATE utf8mb4_unicode_ci,
  `is_recaptcha` tinyint(4) NOT NULL DEFAULT '0',
  `google_recaptcha_site_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_recaptcha_secret_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_tawkto` tinyint(4) NOT NULL DEFAULT '1',
  `is_disqus` tinyint(4) NOT NULL DEFAULT '1',
  `disqus_script` text COLLATE utf8mb4_unicode_ci,
  `is_analytics` tinyint(4) NOT NULL DEFAULT '1',
  `maintenance_mode` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 - active, 0 - deactive',
  `maintenance_text` text COLLATE utf8mb4_unicode_ci,
  `ips` text COLLATE utf8mb4_unicode_ci,
  `testimonial_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_section_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_section_subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_details_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reservation_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `items_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_details_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkout_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_version` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature_section` tinyint(4) NOT NULL DEFAULT '1',
  `intro_section` tinyint(4) NOT NULL DEFAULT '1',
  `testimonial_section` tinyint(4) NOT NULL DEFAULT '1',
  `team_section` tinyint(4) NOT NULL DEFAULT '1',
  `news_section` tinyint(4) NOT NULL DEFAULT '1',
  `menu_section` int(11) NOT NULL DEFAULT '1',
  `special_section` int(11) NOT NULL DEFAULT '1',
  `instagram_section` int(11) NOT NULL DEFAULT '1',
  `table_section` int(11) NOT NULL DEFAULT '1',
  `top_footer_section` tinyint(4) NOT NULL DEFAULT '1',
  `copyright_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_quote` tinyint(4) NOT NULL DEFAULT '1',
  `office_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_appzi` tinyint(4) NOT NULL DEFAULT '0',
  `appzi_script` text COLLATE utf8mb4_unicode_ci,
  `is_addthis` tinyint(4) NOT NULL DEFAULT '0',
  `addthis_script` text COLLATE utf8mb4_unicode_ci,
  `token_no_start` int(11) NOT NULL DEFAULT '1',
  `token_no` int(11) NOT NULL DEFAULT '0',
  `postal_code` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - enabled, 0 - disabled',
  `qr_call_waiter` tinyint(4) NOT NULL DEFAULT '1',
  `website_call_waiter` tinyint(4) NOT NULL DEFAULT '1',
  `is_whatsapp` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - enable, 0 - disable',
  `whatsapp_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_header_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Chat with us on WhatsApp!',
  `whatsapp_popup_message` text COLLATE utf8mb4_unicode_ci,
  `whatsapp_popup` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - enable, 0 - disable',
  `feature_title` text COLLATE utf8mb4_unicode_ci,
  `testimonial_section_text` text COLLATE utf8mb4_unicode_ci,
  `category_section_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_section_button_url` text COLLATE utf8mb4_unicode_ci,
  `intro_section_button_text` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_section_video_button_url` text COLLATE utf8mb4_unicode_ci,
  `intro_section_video_button_text` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_section_video_button_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_section_highlight_text` text COLLATE utf8mb4_unicode_ci,
  `intro_section_bg_image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_section_author_image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_section_author_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_section_author_designation` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_section_top_shape_image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_section_bottom_shape_image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features_section_bg_color` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features_section_top_shape_image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features_section_bottom_shape_image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'multipurpose'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `basic_settings`
--

INSERT INTO `basic_settings` (`id`, `language_id`, `favicon`, `logo`, `preloader_status`, `preloader`, `website_title`, `base_color`, `secondary_base_color`, `support_email`, `support_phone`, `breadcrumb`, `footer_logo`, `footer_text`, `newsletter_text`, `copyright_text`, `intro_section_title`, `intro_title`, `intro_text`, `intro_contact_text`, `intro_contact_number`, `intro_video_image`, `intro_signature`, `intro_video_link`, `intro_main_image`, `team_section_title`, `team_section_subtitle`, `contact_form_title`, `contact_address`, `contact_number`, `contact_mails`, `contact_text`, `latitude`, `longitude`, `map_zoom`, `contact_info_title`, `tawk_to_script`, `google_analytics_script`, `is_recaptcha`, `google_recaptcha_site_key`, `google_recaptcha_secret_key`, `is_tawkto`, `is_disqus`, `disqus_script`, `is_analytics`, `maintenance_mode`, `maintenance_text`, `ips`, `testimonial_title`, `blog_section_title`, `blog_section_subtitle`, `blog_title`, `blog_details_title`, `gallery_title`, `team_title`, `contact_title`, `menu_title`, `reservation_title`, `items_title`, `menu_details_title`, `cart_title`, `checkout_title`, `error_title`, `home_version`, `feature_section`, `intro_section`, `testimonial_section`, `team_section`, `news_section`, `menu_section`, `special_section`, `instagram_section`, `table_section`, `top_footer_section`, `copyright_section`, `is_quote`, `office_time`, `is_appzi`, `appzi_script`, `is_addthis`, `addthis_script`, `token_no_start`, `token_no`, `postal_code`, `qr_call_waiter`, `website_call_waiter`, `is_whatsapp`, `whatsapp_number`, `whatsapp_header_title`, `whatsapp_popup_message`, `whatsapp_popup`, `feature_title`, `testimonial_section_text`, `category_section_title`, `intro_section_button_url`, `intro_section_button_text`, `intro_section_video_button_url`, `intro_section_video_button_text`, `intro_section_video_button_title`, `intro_section_highlight_text`, `intro_section_bg_image`, `intro_section_author_image`, `intro_section_author_name`, `intro_section_author_designation`, `intro_section_top_shape_image`, `intro_section_bottom_shape_image`, `features_section_bg_color`, `features_section_top_shape_image`, `features_section_bottom_shape_image`, `theme`) VALUES
(156, 179, '651b6d9a40cb0.png', '651b6d58b2cbd.png', 1, '651b6bcf5bd72.png', 'Rincon Chami', 'FF6000', '0A3041', 'admin@rinconchami.pe', '4444511', '64b73c9c4eb5c.jpg', '651b6e10e7c94.png', '50 años sazonando generaciones.', 'Subscribe to gate Latest News, Offer and connect With Us.', 0x436f7079726967687420c2a920323032332e20546f646f73206c6f73206465726563686f732072657365727661646f732052696e636f6e204368616d6920532e522e4c2ec2a0207769746820e29da4efb88f204069736f6d65747269635f73, 'Our Story', 'RESTAURANTES CRIOLLOS ATENDIENDO DESDE HACE 54 AÑOS', 'Durante generaciones hemos satisfecho los paladares mas exigentes  con los mejores platos insignia de nuestro querido Perú.', 'Our 24/7 Phone Services', '555 666 999 00', '64607433ed3e4.jpg', '5f5b0ee606923.png', '', '64bf360a310cf.jpg', 'Our Team', 'Our Expert Members', 'Deja tus datos y nos pondremos en contacto', 'Calle Esperanza 154 - Miraflores |\r\nAv. Alfredo Benavides 2360 - Miraflores', '(01) 4444511,WhatsApp: 931 278 037', 'admin@rinconchami.pe', 'Tambien puedes acercarte a nuestros locales', '-12.120251384596678', '-77.02806355899732', 0, 'Información', '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5f5e445f4704467e89ee918d/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', '<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-137437974-2\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'UA-137437974-2\');\r\n</script>', 1, '6LckEBInAAAAAE2tipGbvMvekNMyeaB81gstqTGk', '6LckEBInAAAAAOdlmnVyBe-XudDwK4wh9343Qbgl', 0, 0, '<script>\r\n    /**\r\n    *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.\r\n    *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables    */\r\n    /*\r\n    var disqus_config = function () {\r\n    this.page.url = PAGE_URL;  // Replace PAGE_URL with your page\'s canonical URL variable\r\n    this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page\'s unique identifier variable\r\n    };\r\n    */\r\n    (function() { // DON\'T EDIT BELOW THIS LINE\r\n    var d = document, s = d.createElement(\'script\');\r\n    s.src = \'https://superv-1.disqus.com/embed.js\';\r\n    s.setAttribute(\'data-timestamp\', +new Date());\r\n    (d.head || d.body).appendChild(s);\r\n    })();\r\n</script>', 0, 0, 'El sitio se encuentra en mantenimiento, vuelve luego :)', 'check', 'Que dicen nuestros clientes', 'Novedades', 'Latest News Feeds', 'Blog', 'Detalles Blog', 'Galeria', 'Nuestro equipo', 'Contáctanos', 'La Carta', 'Reservación', 'Delivery Online', 'Detalles', 'Carrito', 'CheckOut', '404 Te perdiste!', 'video', 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 'Lunes a Domingo de  9AM - 11 PM', 0, '<!-- Appzi: Capture Insightful Feedback -->\r\n<script async src=\"https://w.appzi.io/w.js?token=p5cpm\"></script>\r\n<!-- End Appzi -->', 0, '<!-- Go to www.addthis.com/dashboard to customize your tools -->\r\n<script type=\"text/javascript\" src=\"//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5e74e0cf10c08cfa\"></script>', 1, 183, 0, 0, 0, 1, '+51931278037', 'Escribenos por WhatsApp!', NULL, 1, 'Nuestros Principales platos Criollos y Marinos', 'ssffffffffffffffff', 'Discover Your Favorite Bakery And Pastry Foods', '', '', NULL, '', 'fff', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', NULL, '640efc12b3d40.jpg', 'dfdff test', 'sdfdd test', '64313d1503aa7.png', '641ea69a4b116.png', '62401A', '64ae167458c2d.jpg', '64ae1acd66bd4.png', 'coffee');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bcategories`
--

CREATE TABLE `bcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `serial_number` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bcategories`
--

INSERT INTO `bcategories` (`id`, `language_id`, `name`, `status`, `serial_number`) VALUES
(13, 179, 'DIAS FESTIVOS', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `bcategory_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` blob,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `blogs`
--

INSERT INTO `blogs` (`id`, `language_id`, `bcategory_id`, `title`, `slug`, `main_image`, `content`, `tags`, `meta_keywords`, `meta_description`, `serial_number`, `created_at`, `updated_at`) VALUES
(75, 179, 13, 'Dia de la Cancion Criolla', 'Dia-de-la-Cancion-Criolla', '1689226106.png', 0x3c703e3c7370616e207374796c653d22636f6c6f723a7267622833322c33332c3334293b666f6e742d66616d696c793a73616e732d73657269663b223e4c612063656c656272616369c3b36e206675652065737461626c65636964612c20706f72207265736f6c756369c3b36e2073757072656d612064656c203138206465206f63747562726520646520313934342c2070617261207365722063656c65627261646120656cc2a03c2f7370616e3e3c6120687265663d2268747470733a2f2f65732e77696b6970656469612e6f72672f77696b692f33315f64655f6f63747562726522207469746c653d223331206465206f637475627265223e3331206465206f6374756272653c2f613e3c7370616e207374796c653d22636f6c6f723a7267622833322c33332c3334293b666f6e742d66616d696c793a73616e732d73657269663b223ec2a0646520636164612061c3b16f2c3c2f7370616e3e3c6120687265663d2268747470733a2f2f65732e77696b6970656469612e6f72672f77696b692f44254333254144615f64655f6c615f43616e63692543332542336e5f4372696f6c6c6123636974655f6e6f74652d31223e313c2f613e3c7370616e207374796c653d22636f6c6f723a7267622833322c33332c3334293b666f6e742d66616d696c793a73616e732d73657269663b223ee2808b3c2f7370616e3e3c6120687265663d2268747470733a2f2f65732e77696b6970656469612e6f72672f77696b692f44254333254144615f64655f6c615f43616e63692543332542336e5f4372696f6c6c6123636974655f6e6f74652d32223e323c2f613e3c7370616e207374796c653d22636f6c6f723a7267622833322c33332c3334293b666f6e742d66616d696c793a73616e732d73657269663b223ee2808b20646520666f726d612071756520636f696e6369646965726120636f6e206c6120666573746976696461642064656cc2a03c2f7370616e3e3c6120687265663d2268747470733a2f2f65732e77696b6970656469612e6f72672f77696b692f53652543332542316f725f64655f6c6f735f4d696c6167726f735f284c696d612922207469746c653d225365c3b16f72206465206c6f73204d696c6167726f7320284c696d6129223e5365c3b16f72206465206c6f73204d696c6167726f733c2f613e3c7370616e207374796c653d22636f6c6f723a7267622833322c33332c3334293b666f6e742d66616d696c793a73616e732d73657269663b223e2e3c2f7370616e3e3c6120687265663d2268747470733a2f2f65732e77696b6970656469612e6f72672f77696b692f44254333254144615f64655f6c615f43616e63692543332542336e5f4372696f6c6c6123636974655f6e6f74652d3a302d33223e333c2f613e3c7370616e207374796c653d22636f6c6f723a7267622833322c33332c3334293b666f6e742d66616d696c793a73616e732d73657269663b223ee2808b204c61206d69736d61206675652070726f6d756c6761646120706f7220656cc2a03c2f7370616e3e3c6120687265663d2268747470733a2f2f65732e77696b6970656469612e6f72672f77696b692f5072696d65725f676f626965726e6f5f64655f4d616e75656c5f507261646f5f55676172746563686522207469746c653d225072696d657220676f626965726e6f206465204d616e75656c20507261646f20556761727465636865223e707265736964656e74653c2f613e3c7370616e207374796c653d22636f6c6f723a7267622833322c33332c3334293b666f6e742d66616d696c793a73616e732d73657269663b223ec2a03c2f7370616e3e3c6120687265663d2268747470733a2f2f65732e77696b6970656469612e6f72672f77696b692f4d616e75656c5f507261646f5f55676172746563686522207469746c653d224d616e75656c20507261646f20556761727465636865223e4d616e75656c20507261646f205567617274656368653c2f613e3c7370616e207374796c653d22636f6c6f723a7267622833322c33332c3334293b666f6e742d66616d696c793a73616e732d73657269663b223ec2a07920656cc2a03c2f7370616e3e3c6120687265663d2268747470733a2f2f65732e77696b6970656469612e6f72672f77696b692f4d696e697374726f5f64655f456475636163692543332542336e5f64656c5f50657225433325424122207469746c653d224d696e697374726f2064652045647563616369c3b36e2064656c20506572c3ba223e4d696e697374726f2064652045647563616369c3b36e3c2f613e3c7370616e207374796c653d22636f6c6f723a7267622833322c33332c3334293b666f6e742d66616d696c793a73616e732d73657269663b223ec2a03c2f7370616e3e3c6120687265663d2268747470733a2f2f65732e77696b6970656469612e6f72672f77696b692f506564726f5f4d2e5f4f6c69766569726122207469746c653d22506564726f204d2e204f6c697665697261223e506564726f204d2e204f6c6976656972613c2f613e3c7370616e207374796c653d22636f6c6f723a7267622833322c33332c3334293b666f6e742d66616d696c793a73616e732d73657269663b223e2e3c2f7370616e3e3c6120687265663d2268747470733a2f2f65732e77696b6970656469612e6f72672f77696b692f44254333254144615f64655f6c615f43616e63692543332542336e5f4372696f6c6c6123636974655f6e6f74652d34223e343c2f613e3c7370616e207374796c653d22636f6c6f723a7267622833322c33332c3334293b666f6e742d66616d696c793a73616e732d73657269663b223ee2808b3c2f7370616e3e3c6120687265663d2268747470733a2f2f65732e77696b6970656469612e6f72672f77696b692f44254333254144615f64655f6c615f43616e63692543332542336e5f4372696f6c6c6123636974655f6e6f74652d35223e353c2f613e3c7370616e207374796c653d22636f6c6f723a7267622833322c33332c3334293b666f6e742d66616d696c793a73616e732d73657269663b223ee2808b204164656dc3a173206675652070726f6d6f7669646120706f72204361726c6f7320412e205361636f2c20717569656e20667565206469726563746f722064656c2064696172696fc2a03c2f7370616e3e3c693e3c6120687265663d2268747470733a2f2f65732e77696b6970656469612e6f72672f77696b692f456c5f436f6d657263696f5f285065722543332542412922207469746c653d22456c20436f6d657263696f2028506572c3ba29223e456c20436f6d657263696f3c2f613e3c2f693e3c7370616e207374796c653d22636f6c6f723a7267622833322c33332c3334293b666f6e742d66616d696c793a73616e732d73657269663b223e2e3c2f7370616e3e3c693e3c6120687265663d2268747470733a2f2f65732e77696b6970656469612e6f72672f77696b692f44254333254144615f64655f6c615f43616e63692543332542336e5f4372696f6c6c6123636974655f6e6f74652d3a33322d36223e363c2f613ee2808b3c2f693e3c62723e3c2f703e, NULL, NULL, NULL, 1, '2023-07-13 05:28:28', '2023-07-15 04:56:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bottomlinks`
--

CREATE TABLE `bottomlinks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bottomlinks`
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
-- Estructura de tabla para la tabla `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'percentage, fixed',
  `value` decimal(11,2) DEFAULT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `minimum_spend` decimal(11,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `code`, `type`, `value`, `start_date`, `end_date`, `minimum_spend`, `created_at`, `updated_at`) VALUES
(2, 'KHABO60', 'KHABO60', 'fixed', '60.00', '12/24/2020', '12/30/2020', '180.00', '2020-12-23 02:23:36', '2020-12-23 02:23:36'),
(3, 'Victory Day', 'BIJOY16', 'percentage', '16.00', '12/16/2020', '01/07/2021', '10.00', '2020-12-23 02:32:55', '2020-12-24 04:54:59'),
(4, 'Special', 'Special14', 'percentage', '14.00', '12/29/2020', '01/09/2021', '400.00', '2020-12-23 03:54:07', '2020-12-24 08:54:42'),
(5, 'Shop Manager', '123456789', 'percentage', '10.00', '04/01/2023', '05/31/2023', '1.00', '2023-05-04 04:33:42', '2023-05-04 04:33:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(15, 'qweqwe', 'trevorcalfan2@gmail.com', '946896855', NULL, '2023-07-22 04:52:41', '2023-07-22 05:02:29'),
(28, 'ewtwet', 'werwer@qwerwewe', '233333', NULL, '2023-07-31 15:50:34', '2023-07-31 15:50:34'),
(29, 'qwqqwd', 'qwrqwr@qwqwr', '588545', NULL, '2023-07-31 15:51:36', '2023-07-31 15:51:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` text COLLATE utf8mb4_unicode_ci,
  `email_body` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `email_templates`
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
-- Estructura de tabla para la tabla `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `serial_number` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `features`
--

INSERT INTO `features` (`id`, `language_id`, `image`, `title`, `serial_number`, `created_at`, `updated_at`) VALUES
(52, 179, '1689016158.png', 'Ensalada Chami', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guests`
--

CREATE TABLE `guests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `endpoint` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `guests`
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
(29, 'https://fcm.googleapis.com/fcm/send/eZJp6IVs6lo:APA91bHggwA-gOtuZj-610cq9vO2dR3OuTKsklGG4bHXztdyX4tIQsDX--944xanSG3DWa2wkq6EflFM0i-r-OXQCsFa2nGloFQCyDvOwTWPGaXSbD3LCXAzvqJ-K2SFOvvsMSFq8h-7', '2023-05-30 10:54:57', '2023-05-30 10:54:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `intro_points`
--

CREATE TABLE `intro_points` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `intro_section_rating_point` int(11) DEFAULT NULL,
  `intro_section_rating_symbol` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `intro_points`
--

INSERT INTO `intro_points` (`id`, `language_id`, `icon`, `title`, `text`, `serial_number`, `created_at`, `updated_at`, `intro_section_rating_point`, `intro_section_rating_symbol`) VALUES
(3, 176, 'fab fa-accessible-icon', '100% Pure Food', 'We provide 100& Pure & handmade foods', 2, NULL, NULL, 74, '%'),
(7, 177, 'fab fa-accusoft', 'اطلب الان', 'اطلب الاناطلب الانلصفح', 2, NULL, NULL, NULL, NULL),
(8, 177, 'fab fa-accessible-icon', 'اطلب الان', 'اطلب الاناطلب الاناطلب الان', 3, NULL, NULL, NULL, NULL),
(9, 176, 'fab fa-accusoft', '100% Pure Foods', 'We provide 100& Pure & handmade foods', 10, NULL, NULL, 100, '%'),
(19, 176, 'fab fa-accessible-icon', '111', NULL, 10, NULL, NULL, 10000, '%');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jcategories`
--

CREATE TABLE `jcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jcategory_id` int(11) DEFAULT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vacancy` int(11) DEFAULT NULL,
  `deadline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_responsibilities` blob,
  `employment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `educational_requirements` blob,
  `experience_requirements` blob,
  `additional_requirements` blob,
  `job_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` blob,
  `benefits` blob,
  `read_before_apply` blob,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT '1',
  `rtl` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 - LTR, 1- RTL',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `is_default`, `rtl`, `created_at`, `updated_at`) VALUES
(179, 'español', 'es', 1, 0, '2023-06-19 00:54:57', '2023-07-13 05:04:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `menus` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `language_id`, `menus`, `created_at`, `updated_at`) VALUES
(151, 179, '[{\"text\":\"Cartas\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"menu_1\"},{\"text\":\"Historia\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"5\"},{\"text\":\"Locales\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"6\",\"children\":[{\"text\":\"Esperanza\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"13\"},{\"text\":\"Benavides\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"7\"}]},{\"text\":\"Galeria\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"gallery\"},{\"text\":\"Rappi\",\"href\":\"https://www.rappi.com.pe/restaurantes/52373-rinconchami\",\"icon\":\"empty\",\"target\":\"_top\",\"title\":\"\",\"type\":\"custom\"},{\"text\":\"Contáctanos\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"contact\"},{\"text\":\"Únete\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"career\"}]', '2023-10-23 15:03:18', '2023-10-23 15:03:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
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
-- Estructura de tabla para la tabla `offline_gateways`
--

CREATE TABLE `offline_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `instructions` blob,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `is_receipt` tinyint(4) NOT NULL DEFAULT '1',
  `receipt` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `offline_gateways`
--

INSERT INTO `offline_gateways` (`id`, `name`, `short_description`, `instructions`, `status`, `serial_number`, `is_receipt`, `receipt`, `created_at`, `updated_at`) VALUES
(1, 'Offline Gateway 1', 'Please send your payment to the following account.\r\nBank Name: Lorem Ipsum.\r\nBeneficiary Name: John Doe.\r\nAccount Number/IBAN: 12345678', 0x3c70207374796c653d226c696e652d6865696768743a20312e383b223e3c666f6e7420666163653d2243697263756c61725374642d426f6f6b2c20417269616c2c2073616e732d7365726966223e43686173652042616e6b2069732074686520636f6e73756d65722062616e6b696e67206469766973696f6e206f66204a504d6f7267616e2043686173652e20556e6c696b652069747320636f6d70657469746f72732c2043686173652069732074616b696e6720737465707320746f20657870616e6420697473206272616e6368206e6574776f726b20696e206b6579206d61726b6574732e205468652062616e6b2063757272656e746c7920686173206e6561726c7920352c303030206272616e6368657320616e642031362c3030302041544d732e204163636f7264696e6720746f207468652062616e6b2c206e6561726c792068616c66206f662074686520636f756e747279e280997320686f757365686f6c64732061726520436861736520637573746f6d6572732e3c2f666f6e743e3c62723e3c2f703e, 0, 1, 1, NULL, '2020-09-17 01:06:39', '2023-07-23 03:06:24'),
(2, 'Offline Gateway 2', 'Please send your payment to the following account.\r\nBank Name: Lorem Ipsum.\r\nBeneficiary Name: John Doe.\r\nAccount Number/IBAN: 12345678', 0x3c70207374796c653d226c696e652d6865696768743a20312e383b223e3c7370616e207374796c653d22666f6e742d66616d696c793a2043697263756c61725374642d426f6f6b2c20417269616c2c2073616e732d73657269663b20666f6e742d73697a653a20313470783b223e42616e6b206f6620416d6572696361207365727665732061626f7574203636206d696c6c696f6e20636f6e73756d65727320616e6420736d616c6c20627573696e65737320636c69656e747320776f726c64776964652e204c696b65206d616e79206f662074686520626967676573742062616e6b732c2042616e6b206f6620416d6572696361206973206b6e6f776e20666f7220697473206469676974616c20696e6e6f766174696f6e2e20497420686173206d6f7265207468616e203337206d696c6c696f6e206469676974616c20636c69656e747320616e6420697320657870657269656e63696e67207375636365737320616674657220696e74726f647563696e6720697473207669727475616c20617373697374616e742c2045726963612c20746861742061737369737473206163636f756e7420686f6c64657273207769746820766172696f7573207461736b733c2f7370616e3e3c62723e3c2f703e, 0, 2, 0, NULL, '2020-09-17 01:07:37', '2023-07-23 03:06:26'),
(3, 'Cash On Delivery', NULL, 0x3c703e3c62723e3c2f703e, 0, 3, 0, NULL, '2020-09-17 02:05:36', '2023-07-23 03:06:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variations` text COLLATE utf8mb4_unicode_ci,
  `addons` text COLLATE utf8mb4_unicode_ci,
  `variations_price` decimal(11,2) NOT NULL DEFAULT '0.00',
  `addons_price` decimal(11,2) NOT NULL,
  `product_price` decimal(11,2) NOT NULL,
  `total` decimal(11,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `order_items`
--

INSERT INTO `order_items` (`id`, `product_order_id`, `product_id`, `user_id`, `title`, `qty`, `image`, `variations`, `addons`, `variations_price`, `addons_price`, `product_price`, `total`, `created_at`, `updated_at`) VALUES
(20, 20, 72, 20, 'Torta de Chocolate', 1, '1689828817.jpg', '\"\"', '\"\"', '0.00', '0.00', '10.00', '10.00', '2023-07-31 15:50:34', NULL),
(21, 21, 72, 20, 'Torta de Chocolate', 1, '1689828817.jpg', '\"\"', '\"\"', '0.00', '0.00', '10.00', '10.00', '2023-07-31 15:51:36', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_times`
--

CREATE TABLE `order_times` (
  `id` int(11) NOT NULL,
  `day` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `order_times`
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
-- Estructura de tabla para la tabla `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` blob,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pages`
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
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'manual',
  `information` mediumtext COLLATE utf8mb4_unicode_ci,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `subtitle`, `title`, `details`, `name`, `type`, `information`, `keyword`, `status`) VALUES
(6, NULL, NULL, NULL, 'Flutterwave', 'automatic', '{\"public_key\":\"FLWPUBK_TEST-54e1bcf960a5364fa3365240fe555615-X\",\"secret_key\":\"FLWSECK_TEST-85dc3d03f924083034da3af27ec45b39-X\",\"text\":\"Pay via your Flutterwave account.\"}', 'flutterwave', 0),
(9, NULL, NULL, NULL, 'Razorpay', 'automatic', '{\"key\":\"rzp_test_fV9dM9URYbqjm7\",\"secret\":\"nickxZ1du2ojPYVVRTDif2Xr\",\"text\":\"Pay via your Razorpay account.\"}', 'razorpay', 0),
(11, NULL, NULL, NULL, 'Paytm', 'automatic', '{\"merchant\":\"tkogux49985047638244\",\"secret\":\"LhNGUUKE9xCQ9xY8\",\"website\":\"WEBSTAGING\",\"industry\":\"Retail\",\"text\":\"Pay via your paytm account.\"}', 'paytm', 0),
(12, NULL, NULL, NULL, 'Paystack', 'automatic', '{\"key\":\"sk_test_45b0b207ffa006eeb5fc74ea35d01e673be15ade\",\"text\":\"Pay via your Paystack account.\"}', 'paystack', 0),
(13, NULL, NULL, NULL, 'Instamojo', 'automatic', '{\"key\":\"test_172371aa837ae5cad6047dc3052\",\"token\":\"test_4ac5a785e25fc596b67dbc5c267\",\"sandbox_check\":\"0\",\"text\":\"Pay via your Instamojo account.\"}', 'instamojo', 0),
(14, NULL, NULL, NULL, 'Stripe', 'automatic', '{\"key\":\"pk_test_UnU1Coi1p5qFGwtpjZMRMgJM\",\"secret\":\"sk_test_QQcg3vGsKRPlW6T3dXcNJsor\",\"text\":\"Pay via your Credit account.\"}', 'stripe', 0),
(15, NULL, NULL, NULL, 'Paypal', 'automatic', '{\"client_id\":\"AVYKFEw63FtDt9aeYOe9biyifNI56s2Hc2F1Us11hWoY5GMuegipJRQBfWLiIKNbwQ5tmqKSrQTU3zB3\",\"client_secret\":\"EJY0qOKliVg7wKsR3uPN7lngr9rL1N7q4WV0FulT1h4Fw3_e5Itv1mxSdbtSUwAaQoXQFgq-RLlk_sQu\",\"sandbox_check\":\"1\",\"text\":\"Pay via your PayPal account.\"}', 'paypal', 1),
(17, NULL, NULL, NULL, 'Mollie Payment', 'automatic', '{\"key\":\"test_m6BAuk4mJ7asBP52AtCWn3WjpK4Tv3\",\"text\":\"Pay via your Mollie Payment account.\"}', 'mollie', 0),
(18, NULL, NULL, NULL, 'PayUmoney', 'automatic', '{\"key\":\"gtKFFx\",\"salt\":\"eCwWELxi\",\"text\":\"Pay via your PayUmoney account.\"}', 'payumoney', 1),
(19, NULL, NULL, NULL, 'Mercado Pago', 'automatic', '{\"token\":\"TEST-7693103109863431-072300-e19d75b5ae3b9c5a31a4c618f18c0434-668729168\",\"sandbox_check\":\"1\",\"text\":\"Pay via your Mercado Pago account.\"}', 'mercadopago', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pcategories`
--

CREATE TABLE `pcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `is_feature` int(11) DEFAULT NULL,
  `tax` decimal(11,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pcategories`
--

INSERT INTO `pcategories` (`id`, `language_id`, `name`, `slug`, `image`, `status`, `is_feature`, `tax`, `created_at`, `updated_at`) VALUES
(16, 179, 'Entradas', 'Entradas', '64b7765e38486.png', 1, 1, '0.00', '2023-06-19 04:33:13', '2023-07-19 05:36:30'),
(17, 179, 'Fondos', 'Fondos', '64b777e739319.png', 1, 1, '0.00', '2023-07-12 02:29:33', '2023-07-19 05:43:03'),
(18, 179, 'Postres', 'Postres', '64b777f2ed4fa.png', 1, 1, '0.00', '2023-07-12 02:31:04', '2023-07-19 05:43:14'),
(19, 179, 'Bebidas', 'Bebidas', '64b996d6eefad.png', 0, 1, '0.00', '2023-07-20 20:19:34', '2023-09-11 20:59:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `popups`
--

CREATE TABLE `popups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_color` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_opacity` decimal(8,2) NOT NULL DEFAULT '1.00',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_url` text COLLATE utf8mb4_unicode_ci,
  `button_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delay` int(11) NOT NULL DEFAULT '1000' COMMENT 'in milisconds',
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - active, 0 - deactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postal_codes`
--

CREATE TABLE `postal_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge` decimal(11,2) NOT NULL DEFAULT '0.00',
  `free_delivery_amount` decimal(11,2) DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pos_payment_methods`
--

CREATE TABLE `pos_payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL COMMENT '1 - active, 0 - deactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pos_payment_methods`
--

INSERT INTO `pos_payment_methods` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(2, 'On Cash', 1, '2021-04-11 00:57:46', '2021-04-11 00:57:57'),
(4, 'Paypal', 1, '2021-05-10 11:30:28', '2021-05-10 11:30:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `feature_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `variations` text COLLATE utf8mb4_unicode_ci,
  `addons` text COLLATE utf8mb4_unicode_ci,
  `current_price` decimal(11,2) NOT NULL DEFAULT '0.00',
  `previous_price` decimal(11,2) DEFAULT '0.00',
  `rating` decimal(11,2) NOT NULL DEFAULT '0.00',
  `status` int(11) NOT NULL DEFAULT '1',
  `is_feature` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_special` tinyint(4) NOT NULL DEFAULT '0',
  `subcategory_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `language_id`, `title`, `slug`, `category_id`, `feature_image`, `summary`, `description`, `variations`, `addons`, `current_price`, `previous_price`, `rating`, `status`, `is_feature`, `created_at`, `updated_at`, `is_special`, `subcategory_id`) VALUES
(38, 179, 'Papa a la huancaina', 'Papa-a-la-huancaina', 16, '1689137260.jpg', 'La papa a la huancaína es uno de los platos más emblemáticos de la gastronomía peruana. Se trata de papas cocidas y cubiertas con una cremosa salsa de ají amarillo, queso fresco, galletas, leche evaporada y otros ingredientes. Es un plato delicioso y colorido que se suele servir como entrada o acompañamiento en Perú.', '<p><br></p>', NULL, NULL, '15.00', NULL, '0.00', 1, 1, '2023-06-19 04:36:20', '2023-09-11 20:46:35', 1, NULL),
(39, 179, 'Anticuchos', 'Anticuchos', 16, '1689134755.jpg', 'Los anticuchos son un plato peruano muy popular que consiste en brochetas o pinchos de carne de res, generalmente corazón de res, marinados en una mezcla de ají panca (un tipo de ají peruano), especias y vinagre, y luego asados a la parrilla o a la brasa. Estas brochetas son una delicia tradicional en la gastronomía peruana.', '<p><br></p>', NULL, NULL, '25.00', NULL, '0.00', 1, 1, '2023-07-12 04:05:55', '2023-09-11 20:45:52', 1, NULL),
(40, 179, 'Causa Limeña', 'Causa-Limeña', 16, '1689815175.jpg', 'La causa limeña es un plato tradicional de la gastronomía peruana, especialmente popular en la región de Lima. Consiste en capas de puré de papa amarilla con limón y ají amarillo, rellenas de diferentes ingredientes, como pollo, atún, mariscos, camarones o aguacate. Es un plato colorido y sabroso que se suele servir como entrada o plato principal en Perú.', '<p><br></p>', NULL, NULL, '20.00', NULL, '0.00', 1, 1, '2023-07-20 01:06:15', '2023-09-11 20:44:46', 1, NULL),
(41, 179, 'Adobo de Chancho', 'Adobo-de-Chancho', 17, '1689815388.jpg', 'El adobo de chancho es un plato tradicional peruano que consiste en carne de cerdo adobada con una mezcla de ajíes, especias y vinagre, cocida lentamente hasta que la carne esté tierna y la salsa se reduzca y se adhiera a la carne.', '<p><br></p>', NULL, NULL, '30.00', NULL, '0.00', 1, 1, '2023-07-20 01:09:48', '2023-09-11 20:43:45', 0, NULL),
(42, 179, 'Aji de Gallina', 'Aji-de-Gallina', 17, '1689815880.jpg', 'Delicioso plato peruano que consiste en tiras de pollo cocidas en una cremosa y sabrosa salsa de ají amarillo, acompañadas de papas cocidas, huevo duro, aceitunas y arroz. Es una de las recetas más representativas de la gastronomía peruana y se disfruta en todo el país.', '<p><br></p>', NULL, NULL, '30.00', NULL, '0.00', 1, 1, '2023-07-20 01:18:00', '2023-09-11 20:42:54', 1, NULL),
(43, 179, 'Alfajor', 'Alfajor', 18, '1689817962.jpg', 'Los alfajores consisten en dos galletas o capas de masa (a menudo hechas con harina, azúcar, mantequilla y huevos) que están unidas por un relleno dulce. En la mayoría de las recetas, el relleno es una especie de dulce de leche espeso llamado \"manjar blanco\" en algunas regiones.', '<p><br></p>', NULL, NULL, '3.00', NULL, '0.00', 1, 1, '2023-07-20 01:52:42', '2023-09-11 20:57:05', 1, NULL),
(44, 179, 'Arroz con Pollo', 'Arroz-con-Pollo', 17, '1689821972.jpg', 'Delicioso plato fuerte con el unico toque del Rincon Chami.', '<p><span style=\"color:rgb(55,65,81);font-family:\'Söhne\', \'ui-sans-serif\', \'system-ui\', \'-apple-system\', \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, \'Helvetica Neue\', Arial, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';font-size:16px;background-color:rgb(247,247,248);\">El \"arroz con pollo\" es un plato tradicional de la gastronomía peruana. Se trata de un plato sabroso y reconfortante que combina arroz, pollo, verduras y una mezcla de especias.</span><br></p>', NULL, NULL, '28.00', NULL, '0.00', 1, 0, '2023-07-20 02:59:32', '2023-09-11 20:57:01', 1, NULL),
(45, 179, 'Lomo a lo Pobre', 'Lomo-a-lo-Pobre', 17, '1689822283.jpg', 'El \"lomo a lo pobre\" es un plato típico de la gastronomía peruana que combina carne de res, papas fritas, arroz, huevo frito y plátano frito.', '<p><br></p>', NULL, NULL, '48.00', NULL, '0.00', 1, 0, '2023-07-20 03:04:43', '2023-09-11 20:56:57', 1, NULL),
(46, 179, 'Brochetas de Pollo', 'Brochetas-de-Pollo', 17, '1689822691.jpg', 'Las brochetas de pollo son un plato que consiste en trozos de pollo ensartados en palillos o brochetas y cocinados generalmente a la parrilla. Esta preparación culinaria ofrece una forma deliciosa de disfrutar el pollo con una variedad de sabores y acompañamientos.', '<p><br></p>', NULL, NULL, '28.00', NULL, '0.00', 1, 0, '2023-07-20 03:11:31', '2023-09-11 20:39:15', 0, NULL),
(47, 179, 'Cabrito a la chiclayana', 'Cabrito-a-la-chiclayana', 17, '1689824184.jpg', 'Plato tradicional de la gastronomía peruana que se originó en la región de Chiclayo, en la costa norte del país. Consiste en cabrito tierno cocinado en una deliciosa salsa a base de ají amarillo, cerveza y otros ingredientes que le dan un sabor único y picante.', '<p><br></p>', NULL, NULL, '42.00', NULL, '0.00', 1, 0, '2023-07-20 03:35:49', '2023-09-11 20:56:48', 1, NULL),
(48, 179, 'Carapulcra', 'Carapulcra', 17, '1689824552.jpg', 'Plato tradicional de la gastronomía peruana, especialmente popular en la región de Arequipa. Se trata de un guiso espeso hecho a base de papas secas, carne (generalmente cerdo o pollo), ají panca (pimiento rojo seco), y especias.', '<p><br></p>', NULL, NULL, '27.00', NULL, '0.00', 1, 0, '2023-07-20 03:42:32', '2023-09-11 20:56:40', 1, NULL),
(49, 179, 'Cau Cau', 'Cau-Cau', 17, '1689826149.jpg', 'Plato típico de la gastronomía peruana que consiste en un guiso espeso y sabroso hecho a base de mondongo, papas y condimentos.', '<p><br></p>', NULL, NULL, '27.00', NULL, '0.00', 1, 0, '2023-07-20 04:09:09', '2023-09-11 20:56:33', 1, NULL),
(50, 179, 'Ceviche', 'Ceviche', 17, '1689826204.jpg', 'Uno de los platos más emblemáticos y populares de la gastronomía peruana. Se trata de pescado fresco crudo que se marina en una mezcla de jugo de limón, ají (pimiento picante), cebolla roja y cilantro. La acidez del limón \"cocina\" el pescado, dándole un sabor refrescante y delicioso', '<p><br></p>', NULL, NULL, '35.00', NULL, '0.00', 1, 0, '2023-07-20 04:10:04', '2023-09-11 20:28:53', 0, NULL),
(51, 179, 'Combinado Arroz con leche y Mazamorra morada', 'Combinado-Arroz-con-leche-y-Mazamorra-morada', 18, '1689826457.jpg', '-', '<p><br></p>', '[]', '[]', '15.00', NULL, '0.00', 1, 0, '2023-07-20 04:14:17', '2023-07-20 04:14:17', 0, NULL),
(52, 179, 'Combinado Cau Cau - Carapuclra', 'Combinado-Cau-Cau---Carapuclra', 17, '1689827097.jpg', '-', '<p><br></p>', '[]', '[]', '27.00', NULL, '0.00', 1, 0, '2023-07-20 04:24:57', '2023-07-20 04:24:57', 0, NULL),
(53, 179, 'Escabeche de Pescado', 'Escabeche-de-Pescado', 17, '1689827152.jpg', 'Platillo tradicional de la gastronomía peruana. Consiste en pescado cocido que se marina y sirve con una salsa agridulce de vinagre, cebolla, pimiento y especias.', '<p><br></p>', NULL, NULL, '28.00', NULL, '0.00', 1, 0, '2023-07-20 04:25:52', '2023-09-11 20:27:12', 0, NULL),
(54, 179, 'Humita', 'Humita', 16, '1689827267.jpg', 'delicioso platillo tradicional de la gastronomía peruana. Consisten en una masa de maíz sazonada, rellena de queso.', '<p><br></p>', NULL, NULL, '10.00', NULL, '0.00', 1, 0, '2023-07-20 04:27:47', '2023-09-11 20:25:43', 0, NULL),
(55, 179, 'Lomo Saltado', 'Lomo-Saltado', 17, '1689827345.jpg', 'El lomo saltado es uno de los platos más emblemáticos de la gastronomía peruana. Se trata de un delicioso salteado de carne, generalmente filete de res, con cebolla, tomate y pimiento, todo sazonado con una mezcla de especias y servido con papas fritas y arroz.', '<p><br></p>', NULL, NULL, '45.00', NULL, '0.00', 1, 0, '2023-07-20 04:29:05', '2023-09-11 20:55:42', 1, NULL),
(56, 179, 'Milanesa de Pollo', 'Milanesa-de-Pollo', 17, '1689827604.jpg', 'Plato clásico y delicioso que consiste en filetes de pechuga de pollo empanizados y fritos hasta que estén dorados y crujientes.', '<p><br></p>', NULL, NULL, '38.00', NULL, '0.00', 1, 0, '2023-07-20 04:33:24', '2023-09-11 20:22:59', 0, NULL),
(57, 179, 'Mondonguito a la italiana', 'Mondonguito-a-la-italiana', 17, '1689827688.jpg', 'Preparación culinaria que combina la carne de mondongo con sabores y técnicas de cocina italiana.', '<p><br></p>', NULL, NULL, '29.00', NULL, '0.00', 1, 0, '2023-07-20 04:34:48', '2023-09-11 20:55:54', 1, NULL),
(58, 179, 'Ocopa', 'Ocopa', 16, '1689827752.jpg', 'Plato típico de la gastronomía peruana que consiste en una deliciosa salsa espesa y cremosa a base de ají amarillo, queso fresco y maní, que se sirve generalmente sobre papas cocidas y acompañado de huevo duro, aceitunas y lechuga.', '<p><br></p>', NULL, NULL, '15.00', NULL, '0.00', 1, 0, '2023-07-20 04:35:52', '2023-09-11 20:56:01', 1, NULL),
(59, 179, 'Papa Rellena', 'Papa-Rellena', 17, '1689827826.jpg', 'Popular plato de la gastronomía peruana que consiste en una papa rellena con un sabroso relleno de carne, cebolla, huevo duro, aceitunas y especias, que luego se empaniza y se fríe hasta que quede dorada y crujiente por fuera', '<p><br></p>', NULL, NULL, '22.00', NULL, '0.00', 1, 0, '2023-07-20 04:37:06', '2023-09-11 20:56:07', 1, NULL),
(60, 179, 'Patita con Maní', 'Patita-con-Maní', 17, '1689827863.jpg', 'Plato tradicional de la gastronomía peruana que consiste en una preparación a base de patas de res cocidas en una salsa de maní.', '<p><br></p>', NULL, NULL, '27.00', NULL, '0.00', 1, 0, '2023-07-20 04:37:43', '2023-09-11 20:56:16', 1, NULL),
(61, 179, 'Picarones', 'Picarones', 18, '1689827902.jpg', 'Delicioso postre tradicional peruano que consiste en donas o buñuelos de calabaza dulce, servidos con una miel de chancaca (panela) y anís que les da un sabor único', '<p><br></p>', NULL, NULL, '12.00', NULL, '0.00', 1, 0, '2023-07-20 04:38:22', '2023-09-11 20:56:21', 1, NULL),
(62, 179, 'Pie de Limon', 'Pie-de-Limon', 18, '1689827940.jpg', 'Delicioso postre que combina la acidez y frescura de los limones con una base crujiente de galletas y una suave capa de crema de limón.', '<p><br></p>', NULL, NULL, '12.00', NULL, '0.00', 1, 0, '2023-07-20 04:39:00', '2023-09-11 20:55:31', 1, NULL),
(63, 179, 'Pie de Manzana', 'Pie-de-Manzana', 18, '1689828002.jpg', 'Clásico postre que combina la dulzura de las manzanas con una crujiente y deliciosa costra', '<p><br></p>', NULL, NULL, '10.00', NULL, '0.00', 1, 0, '2023-07-20 04:40:02', '2023-09-11 20:13:55', 0, NULL),
(64, 179, 'Pionono', 'Pionono', 18, '1689828406.jpg', 'Postre encantador que combina la esponjosidad de la masa con la cremosidad de la crema pastelera', '<p><br></p>', NULL, NULL, '10.00', NULL, '0.00', 1, 0, '2023-07-20 04:46:46', '2023-09-11 20:11:50', 0, NULL),
(65, 179, 'Piqueo Criollo', 'Piqueo-Criollo', 17, '1689828454.jpg', 'Piqueo con los principales sabores de la comida criolla, caucau - aji de gallina - patita - carapulcra , combinalos como prefieras.', '<p><br></p>', NULL, NULL, '42.00', NULL, '0.00', 1, 0, '2023-07-20 04:47:34', '2023-09-11 20:10:22', 0, NULL),
(66, 179, 'Suspiro a la limeña', 'Suspiro-a-la-limeña', 18, '1689828501.jpg', 'Postre peruano tradicional y delicioso,  ícono de la cocina peruana', '<p><br></p>', NULL, NULL, '12.00', NULL, '0.00', 1, 0, '2023-07-20 04:48:21', '2023-09-11 20:55:25', 1, NULL),
(67, 179, 'Tacu Tacu con Apanado', 'Tacu-Tacu-con-Apanado', 17, '1689828592.jpg', 'El tacu tacu con apanado es una variación del plato tradicional peruano en la que el tacu tacu, que generalmente se hace con frijoles y arroz, se sirve con filetes empanados y fritos.', '<p><br></p>', NULL, NULL, '28.00', NULL, '0.00', 1, 0, '2023-07-20 04:49:52', '2023-09-11 20:54:27', 0, NULL),
(68, 179, 'Tacu Tacu con Asado', 'Tacu-Tacu-con-Asado', 17, '1689828883.jpg', 'El tacu tacu con asado es un plato tradicional peruano que combina dos elementos clásicos de la cocina peruana: el tacu tacu y el asado. El tacu tacu es una especie de pastel de frijoles y arroz que se fríe hasta que quede dorado y crujiente por fuera, mientras que el asado generalmente se refiere a carne asada.', '<p><br></p>', NULL, NULL, '32.00', NULL, '0.00', 1, 0, '2023-07-20 04:50:34', '2023-09-11 20:53:37', 0, NULL),
(69, 179, 'Tallarin verde con Lomo', 'Tallarin-verde-con-Lomo', 17, '1689828703.jpg', 'El tallarín verde con lomo fino es una variación del plato tradicional peruano llamado \"tallarín verde\" en la que se utiliza lomo fino de res. Este plato combina los fideos verdes en una salsa de espinacas y queso con tiras de lomo fino de res a la parrilla.', '<p><br></p>', NULL, NULL, '45.00', NULL, '0.00', 1, 0, '2023-07-20 04:51:43', '2023-09-11 20:52:41', 0, NULL),
(70, 179, 'Tallarin Verde con Apanado', 'Tallarin-Verde-con-Apanado', 17, '1689828745.jpg', 'El tallarín verde con apanado es un plato delicioso de la gastronomía peruana que combina fideos verdes en una salsa cremosa de espinacas y queso con filetes de carne de res empanados y fritos', '<p><br></p>', NULL, NULL, '32.00', NULL, '0.00', 1, 0, '2023-07-20 04:52:25', '2023-09-11 20:55:18', 1, NULL),
(71, 179, 'Tamal', 'Tamal', 16, '1689828780.jpg', 'Los tamales son un platillo tradicional del Perú. Se preparan a partir de masa de maíz rellena de carne, aceituna, aji amarillo y se cocinan envueltos en hojas de plátano.', '<p><br></p>', NULL, NULL, '10.00', NULL, '0.00', 1, 0, '2023-07-20 04:53:00', '2023-09-11 20:49:45', 0, NULL),
(72, 179, 'Torta de Chocolate', 'Torta-de-Chocolate', 18, '1689828817.jpg', 'Una torta de chocolate es un postre clásico y delicioso que a menudo se prepara para celebrar ocasiones especiales o simplemente para disfrutar de un dulce capricho.', '<p><br></p>', NULL, NULL, '10.00', NULL, '0.00', 1, 0, '2023-07-20 04:53:37', '2023-09-11 20:47:20', 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(191, NULL, '64ae26a0b6911.jpg', '2023-07-12 04:05:52', '2023-07-12 04:05:52'),
(192, 39, '64ae2f82ad165.jpg', '2023-07-12 04:43:46', '2023-07-12 04:43:46'),
(193, 38, '64ae306343eb5.jpg', '2023-07-12 04:47:31', '2023-07-12 04:47:31'),
(194, 40, '64b886715a3ba.jpg', '2023-07-20 00:57:21', '2023-07-20 01:06:15'),
(195, 41, '64b8890c5de2b.jpg', '2023-07-20 01:08:28', '2023-07-20 01:09:48'),
(196, 42, '64b88965c3e55.jpg', '2023-07-20 01:09:57', '2023-07-20 01:18:00'),
(197, 43, '64b890834a7fe.jpg', '2023-07-20 01:40:19', '2023-07-20 01:52:42'),
(198, 44, '64b898c492a11.jpg', '2023-07-20 02:15:32', '2023-07-20 02:59:32'),
(199, 45, '64b8a33eca3f2.jpg', '2023-07-20 03:00:14', '2023-07-20 03:04:43'),
(200, 46, '64b8a5693766b.jpg', '2023-07-20 03:09:29', '2023-07-20 03:11:31'),
(201, 47, '64b8ab93c7087.jpg', '2023-07-20 03:35:47', '2023-07-20 03:35:49'),
(202, 48, '64b8ad15a261f.jpg', '2023-07-20 03:42:13', '2023-07-20 03:42:32'),
(203, 49, '64b8ad315f7bb.jpg', '2023-07-20 03:42:41', '2023-07-20 04:09:09'),
(204, 50, '64b8b37052b66.jpg', '2023-07-20 04:09:20', '2023-07-20 04:10:04'),
(205, 51, '64b8b49797d1a.jpg', '2023-07-20 04:14:15', '2023-07-20 04:14:17'),
(206, 52, '64b8b717e6802.jpg', '2023-07-20 04:24:55', '2023-07-20 04:24:57'),
(207, 53, '64b8b74726d67.jpg', '2023-07-20 04:25:43', '2023-07-20 04:25:52'),
(208, 54, '64b8b7be6e789.jpg', '2023-07-20 04:27:42', '2023-07-20 04:27:47'),
(209, 55, '64b8b7cc68606.jpg', '2023-07-20 04:27:56', '2023-07-20 04:29:05'),
(210, 56, '64b8b9120c58e.jpg', '2023-07-20 04:33:22', '2023-07-20 04:33:24'),
(211, 57, '64b8b939282b4.jpg', '2023-07-20 04:34:01', '2023-07-20 04:34:48'),
(212, 58, '64b8b9a6465c2.jpg', '2023-07-20 04:35:50', '2023-07-20 04:35:52'),
(213, 59, '64b8b9b27456e.jpg', '2023-07-20 04:36:02', '2023-07-20 04:37:06'),
(214, 60, '64b8b9fd68449.jpg', '2023-07-20 04:37:17', '2023-07-20 04:37:43'),
(215, 61, '64b8ba20d0b74.jpg', '2023-07-20 04:37:52', '2023-07-20 04:38:22'),
(216, 62, '64b8ba5e058ba.jpg', '2023-07-20 04:38:54', '2023-07-20 04:39:00'),
(217, 63, '64b8ba8abadf1.jpg', '2023-07-20 04:39:38', '2023-07-20 04:40:02'),
(218, 64, '64b8bc2227f82.jpg', '2023-07-20 04:46:26', '2023-07-20 04:46:46'),
(219, 65, '64b8bc42cbcc7.jpg', '2023-07-20 04:46:58', '2023-07-20 04:47:34'),
(220, 66, '64b8bc6fc19f3.jpg', '2023-07-20 04:47:43', '2023-07-20 04:48:21'),
(221, 67, '64b8bcadc5ffd.jpg', '2023-07-20 04:48:45', '2023-07-20 04:49:52'),
(222, 68, '64b8bd003897f.jpg', '2023-07-20 04:50:08', '2023-07-20 04:50:34'),
(225, 69, '64b8bd39f0f62.jpg', '2023-07-20 04:51:05', '2023-07-20 04:51:43'),
(226, 70, '64b8bd86cf9a4.jpg', '2023-07-20 04:52:22', '2023-07-20 04:52:25'),
(227, 71, '64b8bd9231496.jpg', '2023-07-20 04:52:34', '2023-07-20 04:53:00'),
(228, 72, '64b8bdcf4f9bb.jpg', '2023-07-20 04:53:35', '2023-07-20 04:53:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_orders`
--

CREATE TABLE `product_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `billing_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_fname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_lname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_country_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_fname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_lname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_country_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` decimal(11,2) DEFAULT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code_position` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol` blob,
  `currency_symbol_position` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token_no` int(11) DEFAULT NULL,
  `shipping_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_charge` decimal(11,2) DEFAULT NULL,
  `postal_code` text COLLATE utf8mb4_unicode_ci,
  `postal_code_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1 - post code based delivery enabled, 0 - post code based delivery disabled',
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `txnid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `receipt` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_notes` text COLLATE utf8mb4_unicode_ci,
  `completed` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serving_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pick_up_date` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pick_up_time` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `waiter_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` decimal(11,2) NOT NULL DEFAULT '0.00',
  `coupon` decimal(11,2) NOT NULL DEFAULT '0.00',
  `delivery_date` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_time_start` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_time_end` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `product_orders`
--

INSERT INTO `product_orders` (`id`, `user_id`, `billing_country`, `billing_fname`, `billing_lname`, `billing_address`, `billing_city`, `billing_email`, `billing_country_code`, `billing_number`, `shpping_country`, `shpping_fname`, `shpping_lname`, `shpping_address`, `shpping_city`, `shpping_email`, `shpping_country_code`, `shpping_number`, `total`, `method`, `gateway_type`, `currency_code`, `currency_code_position`, `currency_symbol`, `currency_symbol_position`, `order_number`, `token_no`, `shipping_method`, `shipping_charge`, `postal_code`, `postal_code_status`, `payment_status`, `order_status`, `txnid`, `charge_id`, `invoice_number`, `created_at`, `updated_at`, `receipt`, `order_notes`, `completed`, `type`, `serving_method`, `pick_up_date`, `pick_up_time`, `waiter_name`, `table_number`, `tax`, `coupon`, `delivery_date`, `delivery_time_start`, `delivery_time_end`) VALUES
(20, 20, NULL, 'ewtwet', NULL, NULL, NULL, 'werwer@qwerwewe', '+51', '233333', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10.00', 'mercadopago', 'online', 'PEN', 'right', 0x532f2e, 'left', 'nJsH-1690818634', NULL, NULL, NULL, NULL, 0, 'Pending', 'pending', 'txn_b7SSteqU1690818634', 'ch_z4YJUy2Bp1690818634', NULL, '2023-07-31 15:50:34', '2023-07-31 15:50:34', NULL, 'zsfdA', 'no', 'website', 'pick_up', '07/31/2023', '12:00 AM', NULL, NULL, '0.00', '0.00', NULL, NULL, NULL),
(21, 20, NULL, 'qwqqwd', NULL, NULL, NULL, 'qwrqwr@qwqwr', '+51', '588545', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10.00', 'mercadopago', 'online', 'PEN', 'right', 0x532f2e, 'left', '8G2K-1690818696', NULL, NULL, NULL, NULL, 0, 'Pending', 'pending', 'txn_fESTUYaF1690818696', 'ch_r8le8gvIe1690818696', NULL, '2023-07-31 15:51:36', '2023-07-31 15:51:36', NULL, 'qw', 'no', 'website', 'pick_up', '07/31/2023', '12:00 AM', NULL, NULL, '0.00', '0.00', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `review` int(11) DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `psub_categories`
--

CREATE TABLE `psub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `is_feature` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `push_subscriptions`
--

CREATE TABLE `push_subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `subscribable_id` int(11) DEFAULT NULL,
  `subscribable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `endpoint` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `public_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_encoding` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `push_subscriptions`
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
(28, 29, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eZJp6IVs6lo:APA91bHggwA-gOtuZj-610cq9vO2dR3OuTKsklGG4bHXztdyX4tIQsDX--944xanSG3DWa2wkq6EflFM0i-r-OXQCsFa2nGloFQCyDvOwTWPGaXSbD3LCXAzvqJ-K2SFOvvsMSFq8h-7', 'BEbOX-LoYumTFSCNdDrIUg90a9SYUcom7clsKBbU00kKGtDfoLUoevn9GgLLuvsdYPkuAgoGkvAWhhJNhB8aK0o', 'AcUgE_pVVYgUXK8M0Uc2gw', NULL, '2023-05-30 10:54:57', '2023-05-30 10:54:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservation_inputs`
--

CREATE TABLE `reservation_inputs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) DEFAULT NULL COMMENT '1-text, 2-select, 3-checkbox, 4-textarea, 5-datepicker, 6-timepicker',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `required` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1 - required, 0 - optional',
  `order_number` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `reservation_inputs`
--

INSERT INTO `reservation_inputs` (`id`, `language_id`, `type`, `label`, `name`, `placeholder`, `required`, `order_number`, `created_at`, `updated_at`) VALUES
(42, 179, 6, 'Hora', 'Hora', 'Hora', 1, 3, '2023-07-18 01:01:26', '2023-07-18 01:01:26'),
(43, 179, 7, 'Personas', 'Personas', 'n° personas', 1, 4, '2023-07-18 01:01:38', '2023-07-18 01:01:38'),
(46, 179, 1, 'Contacto WhatsApp', 'Contacto_WhatsApp', 'Ingresa tu WhatsApp', 1, 6, '2023-07-18 01:03:44', '2023-07-18 01:03:44'),
(48, 179, 1, 'Detalles', 'Detalles', 'Cuentanos más', 1, 7, '2023-07-18 01:06:47', '2023-07-18 01:06:47'),
(49, 179, 1, 'Fecha', 'Fecha', 'dia/mes/año', 1, 8, '2023-09-11 06:58:10', '2023-09-11 06:58:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservation_input_options`
--

CREATE TABLE `reservation_input_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reservation_input_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(7, 'Delivery Manager', '[\"Dashboard\",\"Order Management\"]', '2020-09-24 00:13:52', '2021-05-21 05:28:11'),
(8, 'Kitchen Manager', '[\"Dashboard\",\"Table Reservation\",\"Product Management\",\"Order Management\"]', '2020-09-28 11:23:56', '2020-12-31 05:45:18'),
(9, 'Shop Manager', '[\"Dashboard\",\"POS\"]', '2023-03-04 03:48:36', '2023-03-04 03:56:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `serving_methods`
--

CREATE TABLE `serving_methods` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gateways` text COLLATE utf8mb4_unicode_ci,
  `serial_number` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `website_menu` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0 - deactive on website menu, 1 - active on website menu',
  `qr_menu` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0 - deactive on qr menu, 1 - active on qr menu',
  `qr_payment` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 - deactive, 1 - active',
  `pos` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - active for POS, 0 - deactive for POS'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `serving_methods`
--

INSERT INTO `serving_methods` (`id`, `name`, `value`, `gateways`, `serial_number`, `note`, `website_menu`, `qr_menu`, `qr_payment`, `pos`) VALUES
(1, 'On Table', 'on_table', 'null', 1, 'Choose this method, if you are in restaurant', 0, 0, 1, 0),
(2, 'Pick Up', 'pick_up', '[\"1\",\"2\",\"3\"]', 2, 'Choose this, if you want to pick up the food from Restaurant', 1, 1, 1, 1),
(3, 'Home Delivery', 'home_delivery', '[\"1\",\"2\",\"3\"]', 3, 'Choose this, if you want the order to be served at your doorstep.', 1, 0, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shipping_charges`
--

CREATE TABLE `shipping_charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge` decimal(11,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `free_delivery_amount` decimal(11,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `shipping_charges`
--

INSERT INTO `shipping_charges` (`id`, `title`, `language_id`, `text`, `charge`, `created_at`, `updated_at`, `free_delivery_amount`) VALUES
(14, 'delivery', 179, NULL, '15.00', '2023-07-22 04:57:44', '2023-07-22 04:57:52', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sitemaps`
--

CREATE TABLE `sitemaps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sitemap_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sitemaps`
--

INSERT INTO `sitemaps` (`id`, `sitemap_url`, `filename`, `created_at`, `updated_at`) VALUES
(2, 'http://localhost/superv/without_license/superv-1.2/', 'sitemap5f5e377957033.xml', '2020-09-13 09:15:26', '2020-09-13 09:15:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_url1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_font_size` int(11) NOT NULL DEFAULT '60',
  `text_font_size` int(11) NOT NULL DEFAULT '18',
  `button_text_font_size` int(11) NOT NULL DEFAULT '14',
  `button_text1_font_size` int(11) NOT NULL DEFAULT '14'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sliders`
--

INSERT INTO `sliders` (`id`, `language_id`, `text`, `title`, `button_text`, `button_url`, `button_text1`, `button_url1`, `image`, `bg_image`, `serial_number`, `created_at`, `updated_at`, `title_color`, `text_color`, `button_color`, `title_font_size`, `text_font_size`, `button_text_font_size`, `button_text1_font_size`) VALUES
(30, 179, 'El auténtico lomo saltado desde hace 50 años', 'Lomo Saltado', 'Reserva!', NULL, 'Revisa la Carta', NULL, '1687845857.png', '1687845787.jpeg', 1, '2023-06-24 04:56:42', '2023-06-29 01:00:10', 'FFFFFF', 'FFFFFF', 'FFFFFF', 50, 20, 15, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `socials`
--

INSERT INTO `socials` (`id`, `icon`, `url`, `serial_number`) VALUES
(4, 'fab fa-instagram iconpicker-component', 'https://www.instagram.com/rinconchami', 2),
(6, 'fab fa-facebook-f', 'https://web.facebook.com/RinconChamiOficial', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(37, 'trevorcalfan2@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tables`
--

CREATE TABLE `tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `table_no` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - active, 2 - deactive',
  `qr_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '000000',
  `size` int(11) NOT NULL DEFAULT '250',
  `style` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'square',
  `eye_style` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'square',
  `margin` int(11) NOT NULL DEFAULT '0',
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '000000',
  `text_size` int(11) DEFAULT '15',
  `text_x` int(11) NOT NULL DEFAULT '50',
  `text_y` int(11) NOT NULL DEFAULT '50',
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_size` int(11) NOT NULL DEFAULT '20',
  `image_x` int(11) NOT NULL DEFAULT '50',
  `image_y` int(11) NOT NULL DEFAULT '50',
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default' COMMENT 'default, image, text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_books`
--

CREATE TABLE `table_books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fields` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `table_books`
--

INSERT INTO `table_books` (`id`, `name`, `email`, `fields`, `status`, `created_at`, `updated_at`) VALUES
(1, 'qwqweqwe', 'trevorcalfan2@gmail.com', '{\"Hora\":\"12:00 AM\",\"Personas\":\"33\",\"Contacto_WhatsApp\":\"946896855\",\"Detalles\":\"qwqwqrwqwr\",\"Fecha\":\"10/05/2022\"}', 2, '2023-09-11 06:59:37', '2023-09-11 07:02:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `serial_number` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `testimonials`
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
-- Estructura de tabla para la tabla `timezones`
--

CREATE TABLE `timezones` (
  `country_code` char(3) NOT NULL,
  `timezone` varchar(125) NOT NULL DEFAULT '',
  `gmt_offset` float(10,2) DEFAULT NULL,
  `dst_offset` float(10,2) DEFAULT NULL,
  `raw_offset` float(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `timezones`
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
-- Estructura de tabla para la tabla `time_frames`
--

CREATE TABLE `time_frames` (
  `id` int(11) NOT NULL,
  `day` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_orders` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `time_frames`
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
-- Estructura de tabla para la tabla `titles`
--

CREATE TABLE `titles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ulinks`
--

CREATE TABLE `ulinks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ulinks`
--

INSERT INTO `ulinks` (`id`, `language_id`, `name`, `url`, `created_at`, `updated_at`) VALUES
(40, 179, 'Libro de Reclamaciones', '/superv/librodereclamaciones/10/page', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_fname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_lname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_fname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_lname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `verification_link` text COLLATE utf8mb4_unicode_ci,
  `email_verified` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_country_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_country_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `photo`, `username`, `email`, `password`, `number`, `city`, `state`, `address`, `country`, `remember_token`, `billing_fname`, `billing_lname`, `billing_photo`, `billing_username`, `billing_email`, `billing_number`, `billing_city`, `billing_state`, `billing_address`, `billing_country`, `shpping_fname`, `shpping_lname`, `shpping_photo`, `shpping_username`, `shpping_email`, `shpping_number`, `shpping_city`, `shpping_state`, `shpping_address`, `shpping_country`, `status`, `verification_link`, `email_verified`, `created_at`, `updated_at`, `provider`, `provider_id`, `billing_country_code`, `shipping_country_code`) VALUES
(20, NULL, NULL, NULL, 'gutterreal', 'trevorcalfan2@gmail.com', '$2y$10$cHdLVLKhnF4r3gbOQbFM2.155rWeonwdLCDphPTyIfSsn1aNvt2Iq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '99acd17e304e7428f8af60110191d266', 'Yes', '2023-07-26 03:16:28', '2023-07-31 15:38:37', NULL, NULL, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `backups`
--
ALTER TABLE `backups`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `basic_extendeds`
--
ALTER TABLE `basic_extendeds`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `basic_extras`
--
ALTER TABLE `basic_extras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `basic_settings`
--
ALTER TABLE `basic_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bcategories`
--
ALTER TABLE `bcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bottomlinks`
--
ALTER TABLE `bottomlinks`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `guests`
--
ALTER TABLE `guests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `guests_endpoint_unique` (`endpoint`);

--
-- Indices de la tabla `intro_points`
--
ALTER TABLE `intro_points`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `jcategories`
--
ALTER TABLE `jcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `offline_gateways`
--
ALTER TABLE `offline_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `order_times`
--
ALTER TABLE `order_times`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pcategories`
--
ALTER TABLE `pcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `popups`
--
ALTER TABLE `popups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `popups_language_id_foreign` (`language_id`);

--
-- Indices de la tabla `postal_codes`
--
ALTER TABLE `postal_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `postal_codes_language_id_foreign` (`language_id`);

--
-- Indices de la tabla `pos_payment_methods`
--
ALTER TABLE `pos_payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `product_orders`
--
ALTER TABLE `product_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `psub_categories`
--
ALTER TABLE `psub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `push_subscriptions`
--
ALTER TABLE `push_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `push_subscriptions_endpoint_unique` (`endpoint`);

--
-- Indices de la tabla `reservation_inputs`
--
ALTER TABLE `reservation_inputs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reservation_input_options`
--
ALTER TABLE `reservation_input_options`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `serving_methods`
--
ALTER TABLE `serving_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `shipping_charges`
--
ALTER TABLE `shipping_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sitemaps`
--
ALTER TABLE `sitemaps`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `table_books`
--
ALTER TABLE `table_books`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `timezones`
--
ALTER TABLE `timezones`
  ADD PRIMARY KEY (`country_code`,`timezone`);

--
-- Indices de la tabla `time_frames`
--
ALTER TABLE `time_frames`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ulinks`
--
ALTER TABLE `ulinks`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `backups`
--
ALTER TABLE `backups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `basic_extendeds`
--
ALTER TABLE `basic_extendeds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT de la tabla `basic_extras`
--
ALTER TABLE `basic_extras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `basic_settings`
--
ALTER TABLE `basic_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT de la tabla `bcategories`
--
ALTER TABLE `bcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de la tabla `bottomlinks`
--
ALTER TABLE `bottomlinks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `guests`
--
ALTER TABLE `guests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `intro_points`
--
ALTER TABLE `intro_points`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `jcategories`
--
ALTER TABLE `jcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT de la tabla `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT de la tabla `offline_gateways`
--
ALTER TABLE `offline_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `order_times`
--
ALTER TABLE `order_times`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `pcategories`
--
ALTER TABLE `pcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `popups`
--
ALTER TABLE `popups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `postal_codes`
--
ALTER TABLE `postal_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pos_payment_methods`
--
ALTER TABLE `pos_payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT de la tabla `product_orders`
--
ALTER TABLE `product_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `psub_categories`
--
ALTER TABLE `psub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `push_subscriptions`
--
ALTER TABLE `push_subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `reservation_inputs`
--
ALTER TABLE `reservation_inputs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `reservation_input_options`
--
ALTER TABLE `reservation_input_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `serving_methods`
--
ALTER TABLE `serving_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `shipping_charges`
--
ALTER TABLE `shipping_charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `sitemaps`
--
ALTER TABLE `sitemaps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `tables`
--
ALTER TABLE `tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `table_books`
--
ALTER TABLE `table_books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `time_frames`
--
ALTER TABLE `time_frames`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `titles`
--
ALTER TABLE `titles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ulinks`
--
ALTER TABLE `ulinks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `popups`
--
ALTER TABLE `popups`
  ADD CONSTRAINT `popups_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `postal_codes`
--
ALTER TABLE `postal_codes`
  ADD CONSTRAINT `postal_codes_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
