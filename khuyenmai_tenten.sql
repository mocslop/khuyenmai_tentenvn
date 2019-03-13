-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2019 at 12:38 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `khuyenmai_tenten`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Một người bình luận WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-02-27 04:24:26', '2019-02-27 04:24:26', 'Xin chào, đây là một bình luận\nĐể bắt đầu với quản trị bình luận, chỉnh sửa hoặc xóa bình luận, vui lòng truy cập vào khu vực Bình luận trong trang quản trị.\nAvatar của người bình luận sử dụng <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://khuyenmai_tenten.co', 'yes'),
(2, 'home', 'http://khuyenmai_tenten.co', 'yes'),
(3, 'blogname', 'Khuyến mãi tenten', 'yes'),
(4, 'blogdescription', 'Một trang web mới sử dụng WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'mocslop789@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '5', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:88:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=7&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:59:\"black-studio-tinymce-widget/black-studio-tinymce-widget.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:23:\"ml-slider/ml-slider.php\";i:3;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:4;s:41:\"sassy-social-share/sassy-social-share.php\";i:5;s:39:\"siteorigin-panels/siteorigin-panels.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'doanhnghiep', 'yes'),
(41, 'stylesheet', 'doanhnghiep', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '0', 'yes'),
(59, 'thumbnail_size_h', '0', 'yes'),
(60, 'thumbnail_crop', '', 'yes'),
(61, 'medium_size_w', '0', 'yes'),
(62, 'medium_size_h', '0', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '0', 'yes'),
(65, 'large_size_h', '0', 'yes'),
(66, 'image_default_link_type', '', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '7', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'vi', 'yes'),
(97, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:8:\"sidebar1\";a:2:{i:0;s:25:\"listcategorypostswidget-2\";i:1;s:22:\"black-studio-tinymce-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:5:{i:1552476268;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1552494268;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1552537486;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1552537547;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(123, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:20:\"mocslop789@gmail.com\";s:7:\"version\";s:5:\"4.9.9\";s:9:\"timestamp\";i:1551241484;}', 'no'),
(127, 'can_compress_scripts', '1', 'no'),
(140, 'theme_mods_twentyseventeen', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1551241503;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(141, 'current_theme', 'Medipharm', 'yes'),
(142, 'theme_mods_doanhnghiep', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:9;}', 'yes'),
(143, 'theme_switched', '', 'yes'),
(147, 'address', '', 'yes'),
(148, 'address_en', '', 'yes'),
(149, 'phone', '', 'yes'),
(165, 'recently_activated', 'a:0:{}', 'yes'),
(171, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(212, 'category_children', 'a:0:{}', 'yes'),
(218, '_site_transient_timeout_browser_75b3341da9e7208fc03d0909f69991aa', '1552529711', 'no'),
(219, '_site_transient_browser_75b3341da9e7208fc03d0909f69991aa', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"72.0.3626.121\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(233, 'widget_listcategorypostswidget', 'a:2:{i:2;a:21:{s:5:\"title\";s:31:\"Tên miền đang khuyến mãi\";s:5:\"limit\";s:1:\"5\";s:7:\"orderby\";s:4:\"date\";s:5:\"order\";s:4:\"desc\";s:7:\"exclude\";s:0:\"\";s:12:\"excludeposts\";s:0:\"\";s:6:\"offset\";s:0:\"\";s:10:\"categoryid\";s:1:\"4\";s:10:\"dateformat\";s:0:\"\";s:9:\"show_date\";s:0:\"\";s:18:\"show_modified_date\";s:0:\"\";s:12:\"show_excerpt\";s:0:\"\";s:12:\"excerpt_size\";s:0:\"\";s:11:\"show_author\";s:0:\"\";s:12:\"show_catlink\";s:0:\"\";s:9:\"thumbnail\";s:2:\"on\";s:14:\"thumbnail_size\";s:9:\"thumbnail\";s:8:\"morelink\";s:0:\"\";s:13:\"tags_as_class\";s:2:\"no\";s:8:\"template\";s:7:\"default\";s:10:\"pagination\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(237, 'widget_black-studio-tinymce', 'a:2:{i:2;a:5:{s:5:\"title\";s:8:\"Facebook\";s:4:\"text\";s:1688:\"<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n						var js, fjs = d.getElementsByTagName(s)[0];\r\n						if (d.getElementById(id)) return;\r\n						js = d.createElement(s); js.id = id;\r\n						js.src = \'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.2&appId=1953938748210615&autoLogAppEvents=1\';\r\n						fjs.parentNode.insertBefore(js, fjs);\r\n					}(document, \'script\', \'facebook-jssdk\'));</script>\r\n<div class=\"fb-like\" data-href=\"https://tenten.vn/email-server/email-server-danh-cho-doanh-nghiep\" data-layout=\"standard\" data-action=\"like\" data-size=\"small\" data-show-faces=\"true\" data-share=\"true\"></div>\r\n<div class=\"facebook\">\r\n<div class=\"fb-like-box fb_iframe_widget\" data-show-border=\"true\" data-stream=\"false\" data-header=\"true\" data-show-faces=\"true\" data-colorscheme=\"light\" data-href=\"https://www.facebook.com/tentenvn.gmo\"><span style=\"vertical-align: bottom; width: 300px; height: 214px;\"><iframe class=\"\" style=\"visibility: visible; width: 300px; height: 214px;\" title=\"fb:like_box Facebook Social Plugin\" src=\"https://www.facebook.com/v2.3/plugins/like_box.php?app_id=&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter%2Fr%2F5oivrH7Newv.js%3Fversion%3D42%23cb%3Df2d8c4699788ee8%26domain%3Dtenten.vn%26origin%3Dhttps%253A%252F%252Ftenten.vn%252Ffe8abb6cd0367e%26relation%3Dparent.parent&amp;color_scheme=light&amp;container_width=300&amp;header=true&amp;href=https%3A%2F%2Fwww.facebook.com%2Ftentenvn.gmo&amp;locale=vi_VN&amp;sdk=joey&amp;show_border=true&amp;show_faces=true&amp;stream=false\" name=\"fbd2e625010394\" width=\"1000px\" height=\"1000px\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"allowfullscreen\"></iframe></span></div>\";s:4:\"type\";s:4:\"html\";s:6:\"filter\";s:1:\"1\";s:11:\"panels_info\";N;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(238, 'heateor_sss', 'a:76:{s:24:\"horizontal_sharing_shape\";s:5:\"round\";s:23:\"horizontal_sharing_size\";s:2:\"35\";s:24:\"horizontal_sharing_width\";s:2:\"70\";s:25:\"horizontal_sharing_height\";s:2:\"35\";s:24:\"horizontal_border_radius\";s:0:\"\";s:29:\"horizontal_font_color_default\";s:0:\"\";s:32:\"horizontal_sharing_replace_color\";s:4:\"#fff\";s:27:\"horizontal_font_color_hover\";s:0:\"\";s:38:\"horizontal_sharing_replace_color_hover\";s:4:\"#fff\";s:27:\"horizontal_bg_color_default\";s:0:\"\";s:25:\"horizontal_bg_color_hover\";s:0:\"\";s:31:\"horizontal_border_width_default\";s:0:\"\";s:31:\"horizontal_border_color_default\";s:0:\"\";s:29:\"horizontal_border_width_hover\";s:0:\"\";s:29:\"horizontal_border_color_hover\";s:0:\"\";s:22:\"vertical_sharing_shape\";s:6:\"square\";s:21:\"vertical_sharing_size\";s:2:\"40\";s:22:\"vertical_sharing_width\";s:2:\"80\";s:23:\"vertical_sharing_height\";s:2:\"40\";s:22:\"vertical_border_radius\";s:0:\"\";s:27:\"vertical_font_color_default\";s:0:\"\";s:30:\"vertical_sharing_replace_color\";s:4:\"#fff\";s:25:\"vertical_font_color_hover\";s:0:\"\";s:36:\"vertical_sharing_replace_color_hover\";s:4:\"#fff\";s:25:\"vertical_bg_color_default\";s:0:\"\";s:23:\"vertical_bg_color_hover\";s:0:\"\";s:29:\"vertical_border_width_default\";s:0:\"\";s:29:\"vertical_border_color_default\";s:0:\"\";s:27:\"vertical_border_width_hover\";s:0:\"\";s:27:\"vertical_border_color_hover\";s:0:\"\";s:10:\"hor_enable\";s:1:\"1\";s:21:\"horizontal_target_url\";s:7:\"default\";s:28:\"horizontal_target_url_custom\";s:0:\"\";s:5:\"title\";s:15:\"Spread the love\";s:20:\"comment_container_id\";s:7:\"respond\";s:18:\"instagram_username\";s:0:\"\";s:23:\"horizontal_re_providers\";a:8:{i:0;s:8:\"facebook\";i:1;s:7:\"twitter\";i:2;s:11:\"google_plus\";i:3;s:8:\"linkedin\";i:4;s:9:\"pinterest\";i:5;s:6:\"reddit\";i:6;s:3:\"mix\";i:7;s:8:\"whatsapp\";}s:21:\"hor_sharing_alignment\";s:4:\"left\";s:3:\"top\";s:1:\"1\";s:4:\"post\";s:1:\"1\";s:4:\"page\";s:1:\"1\";s:15:\"horizontal_more\";s:1:\"1\";s:15:\"vertical_enable\";s:1:\"1\";s:19:\"vertical_target_url\";s:7:\"default\";s:26:\"vertical_target_url_custom\";s:0:\"\";s:29:\"vertical_comment_container_id\";s:7:\"respond\";s:27:\"vertical_instagram_username\";s:0:\"\";s:21:\"vertical_re_providers\";a:8:{i:0;s:8:\"facebook\";i:1;s:7:\"twitter\";i:2;s:11:\"google_plus\";i:3;s:8:\"linkedin\";i:4;s:9:\"pinterest\";i:5;s:6:\"reddit\";i:6;s:3:\"mix\";i:7;s:8:\"whatsapp\";}s:11:\"vertical_bg\";s:0:\"\";s:9:\"alignment\";s:4:\"left\";s:11:\"left_offset\";s:3:\"-10\";s:12:\"right_offset\";s:3:\"-10\";s:10:\"top_offset\";s:3:\"100\";s:13:\"vertical_post\";s:1:\"1\";s:13:\"vertical_page\";s:1:\"1\";s:13:\"vertical_home\";s:1:\"1\";s:13:\"vertical_more\";s:1:\"1\";s:19:\"hide_mobile_sharing\";s:1:\"1\";s:21:\"vertical_screen_width\";s:3:\"783\";s:21:\"bottom_mobile_sharing\";s:1:\"1\";s:23:\"horizontal_screen_width\";s:3:\"783\";s:23:\"bottom_sharing_position\";s:1:\"0\";s:24:\"bottom_sharing_alignment\";s:4:\"left\";s:29:\"bottom_sharing_position_radio\";s:10:\"responsive\";s:13:\"footer_script\";s:1:\"1\";s:14:\"delete_options\";s:1:\"1\";s:31:\"share_count_cache_refresh_count\";s:2:\"10\";s:30:\"share_count_cache_refresh_unit\";s:7:\"minutes\";s:14:\"bitly_username\";s:0:\"\";s:9:\"bitly_key\";s:0:\"\";s:8:\"language\";s:2:\"vi\";s:16:\"twitter_username\";s:0:\"\";s:15:\"buffer_username\";s:0:\"\";s:10:\"custom_css\";s:0:\"\";s:19:\"tweet_count_service\";s:14:\"opensharecount\";s:10:\"amp_enable\";s:1:\"1\";}', 'yes'),
(239, 'heateor_sss_version', '3.2.6', 'yes'),
(240, 'widget_heateor_sss_sharing', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(241, 'widget_heateor_sss_floating_sharing', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(242, 'widget_heateor_sss_follow', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(243, 'siteorigin_panels_settings', 'a:0:{}', 'yes'),
(244, 'siteorigin_panels_initial_version', '2.8.2', 'no'),
(245, 'siteorigin_panels_active_version', '2.8.2', 'yes'),
(246, 'widget_siteorigin-panels-post-content', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(247, 'widget_siteorigin-panels-postloop', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(248, 'widget_siteorigin-panels-builder', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(249, 'heateor_sss_gdpr_notification_read', '1', 'yes'),
(250, 'widget_metaslider_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(251, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.0.4\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1551930366;s:7:\"version\";s:5:\"5.0.4\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(327, '_site_transient_timeout_theme_roots', '1552474912', 'no'),
(328, '_site_transient_theme_roots', 'a:1:{s:11:\"doanhnghiep\";s:7:\"/themes\";}', 'no'),
(330, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:5:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-5.1.1.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-5.1.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.1.1\";s:7:\"version\";s:5:\"5.1.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.1.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.1.1\";s:7:\"version\";s:5:\"5.1.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.1.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.1.1\";s:7:\"version\";s:5:\"5.1.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.4\";s:7:\"version\";s:5:\"5.0.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.9.10.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.9.10.zip\";s:10:\"no_content\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.10-no-content.zip\";s:11:\"new_bundled\";s:72:\"https://downloads.wordpress.org/release/wordpress-4.9.10-new-bundled.zip\";s:7:\"partial\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.10-partial-9.zip\";s:8:\"rollback\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.10-rollback-9.zip\";}s:7:\"current\";s:6:\"4.9.10\";s:7:\"version\";s:6:\"4.9.10\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:5:\"4.9.9\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1552473118;s:15:\"version_checked\";s:5:\"4.9.9\";s:12:\"translations\";a:0:{}}', 'no'),
(331, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1552473120;s:7:\"checked\";a:1:{s:11:\"doanhnghiep\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(332, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1552473122;s:7:\"checked\";a:7:{s:59:\"black-studio-tinymce-widget/black-studio-tinymce-widget.php\";s:5:\"2.6.2\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.0.4\";s:23:\"ml-slider/ml-slider.php\";s:6:\"3.10.0\";s:39:\"siteorigin-panels/siteorigin-panels.php\";s:5:\"2.8.2\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.0.2\";s:41:\"sassy-social-share/sassy-social-share.php\";s:5:\"3.2.6\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:5:\"1.4.1\";}s:8:\"response\";a:6:{s:59:\"black-studio-tinymce-widget/black-studio-tinymce-widget.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:41:\"w.org/plugins/black-studio-tinymce-widget\";s:4:\"slug\";s:27:\"black-studio-tinymce-widget\";s:6:\"plugin\";s:59:\"black-studio-tinymce-widget/black-studio-tinymce-widget.php\";s:11:\"new_version\";s:5:\"2.6.8\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/black-studio-tinymce-widget/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/black-studio-tinymce-widget.2.6.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/black-studio-tinymce-widget/assets/icon-256x256.png?rev=1002774\";s:2:\"1x\";s:80:\"https://ps.w.org/black-studio-tinymce-widget/assets/icon-128x128.png?rev=1002774\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:83:\"https://ps.w.org/black-studio-tinymce-widget/assets/banner-1544x500.png?rev=1002774\";s:2:\"1x\";s:82:\"https://ps.w.org/black-studio-tinymce-widget/assets/banner-772x250.png?rev=1002774\";}s:11:\"banners_rtl\";a:0:{}s:14:\"upgrade_notice\";s:193:\"<p>If you&#039;re using WPML, double check our FAQ, as version 2.6 introduced some changes regarding widgets translations.\nImportant: Always ensure to backup your database before upgrading.</p>\";s:6:\"tested\";s:5:\"5.0.3\";s:12:\"requires_php\";s:3:\"5.2\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:14:\"upgrade_notice\";s:147:\"<p>Read the <a href=\"https://contactform7.com/category/releases/\">release announcement post</a> before upgrading. There is an important notice.</p>\";s:6:\"tested\";s:5:\"5.0.3\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:23:\"ml-slider/ml-slider.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:23:\"w.org/plugins/ml-slider\";s:4:\"slug\";s:9:\"ml-slider\";s:6:\"plugin\";s:23:\"ml-slider/ml-slider.php\";s:11:\"new_version\";s:6:\"3.11.1\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/ml-slider/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/ml-slider.3.11.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:62:\"https://ps.w.org/ml-slider/assets/icon-256x256.png?rev=1837669\";s:2:\"1x\";s:54:\"https://ps.w.org/ml-slider/assets/icon.svg?rev=1837669\";s:3:\"svg\";s:54:\"https://ps.w.org/ml-slider/assets/icon.svg?rev=1837669\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/ml-slider/assets/banner-1544x500.png?rev=1837669\";s:2:\"1x\";s:64:\"https://ps.w.org/ml-slider/assets/banner-772x250.png?rev=1837669\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.1\";s:12:\"requires_php\";s:3:\"5.2\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:39:\"siteorigin-panels/siteorigin-panels.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:31:\"w.org/plugins/siteorigin-panels\";s:4:\"slug\";s:17:\"siteorigin-panels\";s:6:\"plugin\";s:39:\"siteorigin-panels/siteorigin-panels.php\";s:11:\"new_version\";s:6:\"2.10.2\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/siteorigin-panels/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/siteorigin-panels.2.10.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/siteorigin-panels/assets/icon-256x256.png?rev=1044755\";s:2:\"1x\";s:70:\"https://ps.w.org/siteorigin-panels/assets/icon-128x128.png?rev=1044755\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/siteorigin-panels/assets/banner-772x250.jpg?rev=1044755\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.0\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.0.2\";s:12:\"requires_php\";s:5:\"5.2.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:41:\"sassy-social-share/sassy-social-share.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:32:\"w.org/plugins/sassy-social-share\";s:4:\"slug\";s:18:\"sassy-social-share\";s:6:\"plugin\";s:41:\"sassy-social-share/sassy-social-share.php\";s:11:\"new_version\";s:6:\"3.2.17\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/sassy-social-share/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/sassy-social-share.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/sassy-social-share/assets/icon-128x128.png?rev=1300723\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/sassy-social-share/assets/banner-772x250.png?rev=1866721\";}s:11:\"banners_rtl\";a:0:{}s:14:\"upgrade_notice\";s:117:\"<ul>\n<li>[Bugfix] Previous update was generating Javascript error when Whatsapp share icon was not enabled</li>\n</ul>\";s:6:\"tested\";s:3:\"5.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:2:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"contact-form-7\";s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.0.4\";s:7:\"updated\";s:19:\"2018-10-23 05:18:02\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/contact-form-7/5.0.4/vi.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:12:\"wp-mail-smtp\";s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:6:\"0.10.1\";s:7:\"updated\";s:19:\"2016-12-05 02:10:49\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/translation/plugin/wp-mail-smtp/0.10.1/vi.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:1:{s:29:\"wp-mail-smtp/wp_mail_smtp.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/wp-mail-smtp\";s:4:\"slug\";s:12:\"wp-mail-smtp\";s:6:\"plugin\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:11:\"new_version\";s:5:\"1.4.1\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-mail-smtp/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-mail-smtp.1.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-128x128.png?rev=1755440\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.png?rev=1982773\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-mail-smtp/assets/banner-772x250.png?rev=1982773\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(333, '_transient_timeout_plugin_slugs', '1552559953', 'no'),
(334, '_transient_plugin_slugs', 'a:7:{i:0;s:59:\"black-studio-tinymce-widget/black-studio-tinymce-widget.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:23:\"ml-slider/ml-slider.php\";i:3;s:39:\"siteorigin-panels/siteorigin-panels.php\";i:4;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:5;s:41:\"sassy-social-share/sassy-social-share.php\";i:6;s:29:\"wp-mail-smtp/wp_mail_smtp.php\";}', 'no'),
(335, 'ms_hide_all_ads_until', '1553683167', 'yes'),
(336, 'metaslider_systemcheck', 'a:2:{s:16:\"wordPressVersion\";b:0;s:12:\"imageLibrary\";b:0;}', 'no'),
(337, 'ml-slider_children', 'a:0:{}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 3, '_wp_trash_meta_status', 'draft'),
(4, 3, '_wp_trash_meta_time', '1551241534'),
(5, 3, '_wp_desired_post_slug', 'chinh-sach-bao-mat'),
(6, 2, '_wp_trash_meta_status', 'publish'),
(7, 2, '_wp_trash_meta_time', '1551241543'),
(8, 2, '_wp_desired_post_slug', 'Trang mẫu'),
(9, 7, '_edit_last', '1'),
(10, 7, '_edit_lock', '1551241416:1'),
(11, 7, '_wp_page_template', 'page-template-trangchu.php'),
(12, 9, '_wp_attached_file', '2019/02/logo.png'),
(13, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:283;s:6:\"height\";i:62;s:4:\"file\";s:16:\"2019/02/logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(14, 10, '_wp_trash_meta_status', 'publish'),
(15, 10, '_wp_trash_meta_time', '1551243687'),
(16, 12, '_menu_item_type', 'post_type'),
(17, 12, '_menu_item_menu_item_parent', '0'),
(18, 12, '_menu_item_object_id', '7'),
(19, 12, '_menu_item_object', 'page'),
(20, 12, '_menu_item_target', ''),
(21, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(22, 12, '_menu_item_xfn', ''),
(23, 12, '_menu_item_url', ''),
(25, 13, '_menu_item_type', 'taxonomy'),
(26, 13, '_menu_item_menu_item_parent', '0'),
(27, 13, '_menu_item_object_id', '6'),
(28, 13, '_menu_item_object', 'category'),
(29, 13, '_menu_item_target', ''),
(30, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(31, 13, '_menu_item_xfn', ''),
(32, 13, '_menu_item_url', ''),
(34, 14, '_menu_item_type', 'taxonomy'),
(35, 14, '_menu_item_menu_item_parent', '0'),
(36, 14, '_menu_item_object_id', '5'),
(37, 14, '_menu_item_object', 'category'),
(38, 14, '_menu_item_target', ''),
(39, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(40, 14, '_menu_item_xfn', ''),
(41, 14, '_menu_item_url', ''),
(43, 15, '_menu_item_type', 'taxonomy'),
(44, 15, '_menu_item_menu_item_parent', '0'),
(45, 15, '_menu_item_object_id', '4'),
(46, 15, '_menu_item_object', 'category'),
(47, 15, '_menu_item_target', ''),
(48, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(49, 15, '_menu_item_xfn', ''),
(50, 15, '_menu_item_url', ''),
(52, 16, '_edit_last', '1'),
(53, 16, '_edit_lock', '1552297206:1'),
(54, 17, '_wp_attached_file', '2019/03/img1.jpg'),
(55, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1380;s:6:\"height\";i:622;s:4:\"file\";s:16:\"2019/03/img1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"img1-300x250.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"img1-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"img1-768x346.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:346;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"img1-1200x622.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:622;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(63, 21, '_edit_last', '1'),
(64, 21, '_edit_lock', '1552297206:1'),
(65, 22, '_wp_attached_file', '2019/03/godaddylogo.jpg'),
(66, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:572;s:6:\"height\";i:203;s:4:\"file\";s:23:\"2019/03/godaddylogo.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"godaddylogo-300x203.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:203;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(67, 21, '_thumbnail_id', '22'),
(82, 16, 'wpb_post_views_count', '1'),
(88, 29, '_wp_attached_file', '2019/03/Hosting-dac-biet-AZDIGI.jpg'),
(89, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:960;s:4:\"file\";s:35:\"2019/03/Hosting-dac-biet-AZDIGI.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"Hosting-dac-biet-AZDIGI-300x250.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"Hosting-dac-biet-AZDIGI-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"Hosting-dac-biet-AZDIGI-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"Hosting-dac-biet-AZDIGI-960x800.jpg\";s:5:\"width\";i:960;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(90, 16, '_thumbnail_id', '29'),
(93, 33, '_edit_last', '1'),
(94, 33, '_edit_lock', '1552297205:1'),
(95, 34, '_wp_attached_file', '2019/03/Ten-mien-.COM-5.88-usd.png'),
(96, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:647;s:6:\"height\";i:439;s:4:\"file\";s:34:\"2019/03/Ten-mien-.COM-5.88-usd.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Ten-mien-.COM-5.88-usd-300x250.png\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"Ten-mien-.COM-5.88-usd-600x400.png\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(97, 33, '_thumbnail_id', '34'),
(100, 37, '_edit_last', '1'),
(101, 37, '_edit_lock', '1552297186:1'),
(102, 38, '_wp_attached_file', '2019/03/ten-mien-.com-149k.jpg'),
(103, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1380;s:6:\"height\";i:530;s:4:\"file\";s:30:\"2019/03/ten-mien-.com-149k.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"ten-mien-.com-149k-300x250.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"ten-mien-.com-149k-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"ten-mien-.com-149k-768x295.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:295;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"ten-mien-.com-149k-1200x530.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:530;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(104, 37, '_thumbnail_id', '38'),
(107, 40, '_edit_last', '1'),
(108, 40, '_edit_lock', '1552297185:1'),
(109, 41, '_wp_attached_file', '2019/03/Tenten-giam-50-gia-dich-vu-ten-mien-.VN_-1.jpg'),
(110, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:567;s:6:\"height\";i:264;s:4:\"file\";s:54:\"2019/03/Tenten-giam-50-gia-dich-vu-ten-mien-.VN_-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:54:\"Tenten-giam-50-gia-dich-vu-ten-mien-.VN_-1-300x250.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(111, 40, '_thumbnail_id', '41'),
(116, 43, '_edit_last', '1'),
(117, 43, '_edit_lock', '1552297185:1'),
(118, 44, '_wp_attached_file', '2019/03/Tenten-happy-day-.com-.net-tu-9k-1.jpg'),
(119, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1104;s:6:\"height\";i:424;s:4:\"file\";s:46:\"2019/03/Tenten-happy-day-.com-.net-tu-9k-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"Tenten-happy-day-.com-.net-tu-9k-1-300x250.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"Tenten-happy-day-.com-.net-tu-9k-1-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:46:\"Tenten-happy-day-.com-.net-tu-9k-1-768x295.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:295;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(120, 43, '_thumbnail_id', '44'),
(123, 46, '_edit_last', '1'),
(124, 46, '_edit_lock', '1552297184:1'),
(125, 47, '_wp_attached_file', '2019/03/Tenten-khuyen-mai-khung-Black-Friday.jpg'),
(126, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1380;s:6:\"height\";i:530;s:4:\"file\";s:48:\"2019/03/Tenten-khuyen-mai-khung-Black-Friday.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"Tenten-khuyen-mai-khung-Black-Friday-300x250.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"Tenten-khuyen-mai-khung-Black-Friday-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"Tenten-khuyen-mai-khung-Black-Friday-768x295.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:295;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"Tenten-khuyen-mai-khung-Black-Friday-1200x530.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:530;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(127, 46, '_thumbnail_id', '47'),
(130, 49, '_edit_last', '1'),
(131, 49, '_edit_lock', '1552297169:1'),
(132, 50, '_wp_attached_file', '2019/03/Stablehost-giam-70-dip-nam-moi.jpg'),
(133, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:534;s:4:\"file\";s:42:\"2019/03/Stablehost-giam-70-dip-nam-moi.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"Stablehost-giam-70-dip-nam-moi-300x250.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"Stablehost-giam-70-dip-nam-moi-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:42:\"Stablehost-giam-70-dip-nam-moi-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(139, 54, '_edit_last', '1'),
(140, 54, '_edit_lock', '1552297168:1'),
(141, 55, '_wp_attached_file', '2019/03/Namecheap-Holiday-Deals.jpg'),
(142, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:512;s:4:\"file\";s:35:\"2019/03/Namecheap-Holiday-Deals.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"Namecheap-Holiday-Deals-300x250.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"Namecheap-Holiday-Deals-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"Namecheap-Holiday-Deals-768x384.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(143, 54, '_thumbnail_id', '55'),
(146, 57, '_edit_last', '1'),
(147, 57, '_edit_lock', '1552297168:1'),
(148, 58, '_wp_attached_file', '2019/03/HostVN-Sale-12-12.jpg'),
(149, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:628;s:4:\"file\";s:29:\"2019/03/HostVN-Sale-12-12.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"HostVN-Sale-12-12-300x250.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"HostVN-Sale-12-12-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"HostVN-Sale-12-12-768x402.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:402;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"HostVN-Sale-12-12-1200x628.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:628;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(150, 57, '_thumbnail_id', '58'),
(153, 49, '_thumbnail_id', '50'),
(158, 61, '_edit_last', '1'),
(159, 61, '_edit_lock', '1552297167:1'),
(160, 62, '_wp_attached_file', '2019/03/Hawk-Host.jpg'),
(161, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:628;s:4:\"file\";s:21:\"2019/03/Hawk-Host.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"Hawk-Host-300x250.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"Hawk-Host-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"Hawk-Host-768x402.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:402;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"Hawk-Host-1200x628.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:628;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(162, 61, '_thumbnail_id', '62'),
(165, 64, '_edit_last', '1'),
(166, 64, '_edit_lock', '1552297151:1'),
(167, 65, '_wp_attached_file', '2019/03/iNET-khuyen-mai-Black-Friday.png'),
(168, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1267;s:6:\"height\";i:619;s:4:\"file\";s:40:\"2019/03/iNET-khuyen-mai-Black-Friday.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"iNET-khuyen-mai-Black-Friday-300x250.png\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"iNET-khuyen-mai-Black-Friday-600x400.png\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"iNET-khuyen-mai-Black-Friday-768x375.png\";s:5:\"width\";i:768;s:6:\"height\";i:375;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:41:\"iNET-khuyen-mai-Black-Friday-1200x619.png\";s:5:\"width\";i:1200;s:6:\"height\";i:619;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(169, 64, '_thumbnail_id', '65'),
(172, 69, '_edit_last', '1'),
(173, 69, '_edit_lock', '1552297150:1'),
(174, 70, '_wp_attached_file', '2019/03/Vultr.png'),
(175, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:569;s:6:\"height\";i:346;s:4:\"file\";s:17:\"2019/03/Vultr.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"Vultr-300x250.png\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(181, 73, '_edit_last', '1'),
(182, 73, '_edit_lock', '1552297150:1'),
(183, 74, '_wp_attached_file', '2019/03/Vultr-chap-nhan-WeChat-Pay.jpg'),
(184, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:420;s:4:\"file\";s:38:\"2019/03/Vultr-chap-nhan-WeChat-Pay.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"Vultr-chap-nhan-WeChat-Pay-300x250.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"Vultr-chap-nhan-WeChat-Pay-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:38:\"Vultr-chap-nhan-WeChat-Pay-768x403.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:403;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(185, 73, '_thumbnail_id', '74'),
(190, 76, '_edit_last', '1'),
(191, 76, '_edit_lock', '1552297150:1'),
(192, 77, '_wp_attached_file', '2019/03/Z.com-mien-phi-Auto-Backup.png'),
(193, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:315;s:4:\"file\";s:38:\"2019/03/Z.com-mien-phi-Auto-Backup.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"Z.com-mien-phi-Auto-Backup-300x250.png\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"Z.com-mien-phi-Auto-Backup-600x315.png\";s:5:\"width\";i:600;s:6:\"height\";i:315;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(194, 76, '_thumbnail_id', '77'),
(197, 79, '_edit_last', '1'),
(198, 79, '_edit_lock', '1552297127:1'),
(199, 80, '_wp_attached_file', '2019/03/Zcard-banner.png'),
(200, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:320;s:4:\"file\";s:24:\"2019/03/Zcard-banner.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Zcard-banner-300x250.png\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Zcard-banner-600x320.png\";s:5:\"width\";i:600;s:6:\"height\";i:320;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"Zcard-banner-768x256.png\";s:5:\"width\";i:768;s:6:\"height\";i:256;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(201, 79, '_thumbnail_id', '80'),
(204, 82, '_edit_last', '1'),
(205, 82, '_edit_lock', '1552297127:1'),
(206, 83, '_wp_attached_file', '2019/03/Z.com-giam-gia-ten-mien-.SHOP-9k.png'),
(207, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:720;s:4:\"file\";s:44:\"2019/03/Z.com-giam-gia-ten-mien-.SHOP-9k.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"Z.com-giam-gia-ten-mien-.SHOP-9k-300x250.png\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"Z.com-giam-gia-ten-mien-.SHOP-9k-600x400.png\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"Z.com-giam-gia-ten-mien-.SHOP-9k-768x576.png\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(208, 82, '_thumbnail_id', '83'),
(211, 85, '_edit_last', '1'),
(212, 85, '_edit_lock', '1552297126:1'),
(213, 86, '_wp_attached_file', '2019/03/Z.com-tang-200k-cho-tai-khoan-moi-dung-Cloud-VPS.jpg'),
(214, 86, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:720;s:4:\"file\";s:60:\"2019/03/Z.com-tang-200k-cho-tai-khoan-moi-dung-Cloud-VPS.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:60:\"Z.com-tang-200k-cho-tai-khoan-moi-dung-Cloud-VPS-300x250.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:60:\"Z.com-tang-200k-cho-tai-khoan-moi-dung-Cloud-VPS-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:60:\"Z.com-tang-200k-cho-tai-khoan-moi-dung-Cloud-VPS-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(215, 85, '_thumbnail_id', '86'),
(216, 54, 'wpb_post_views_count', '3'),
(217, 64, 'wpb_post_views_count', '11'),
(218, 90, '_form', '<label> Your Name (required)\n\n    [text* your-name] </label>\n\n\n\n<label> Your Email (required)\n\n    [email* your-email] </label>\n\n\n\n<label> Subject\n\n    [text your-subject] </label>\n\n\n\n<label> Your Message\n\n    [textarea your-message] </label>\n\n\n\n[submit \"Send\"]'),
(219, 90, '_mail', 'a:8:{s:7:\"subject\";s:37:\"Khuyến mãi tenten \"[your-subject]\"\";s:6:\"sender\";s:43:\"[your-name] <wordpress@khuyenmai_tenten.co>\";s:4:\"body\";s:185:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Khuyến mãi tenten (http://khuyenmai_tenten.co)\";s:9:\"recipient\";s:20:\"mocslop789@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(220, 90, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:37:\"Khuyến mãi tenten \"[your-subject]\"\";s:6:\"sender\";s:52:\"Khuyến mãi tenten <wordpress@khuyenmai_tenten.co>\";s:4:\"body\";s:127:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Khuyến mãi tenten (http://khuyenmai_tenten.co)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:30:\"Reply-To: mocslop789@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(221, 90, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(222, 90, '_additional_settings', NULL),
(223, 90, '_locale', 'vi'),
(224, 46, 'wpb_post_views_count', '1'),
(227, 85, '_status_event', 'Vẫn đang diễn ra'),
(228, 85, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(231, 82, '_status_event', 'Vẫn đang diễn ra'),
(232, 82, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(235, 79, '_status_event', 'Vẫn đang diễn ra'),
(236, 79, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(237, 61, 'wpb_post_views_count', '2'),
(238, 1, '_wp_trash_meta_status', 'publish'),
(239, 1, '_wp_trash_meta_time', '1552294547'),
(240, 1, '_wp_desired_post_slug', 'chao-moi-nguoi'),
(241, 1, '_status_event', ''),
(242, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(245, 64, '_status_event', 'Vẫn đang diễn ra'),
(246, 64, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(259, 61, '_status_event', 'Vẫn đang diễn ra'),
(260, 61, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(261, 57, 'wpb_post_views_count', '3'),
(262, 49, 'wpb_post_views_count', '3'),
(271, 76, '_status_event', 'Vẫn đang diễn ra'),
(272, 76, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(275, 73, '_status_event', 'Vẫn đang diễn ra'),
(276, 73, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(279, 69, '_status_event', 'Vẫn đang diễn ra'),
(280, 69, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(287, 57, '_status_event', 'Vẫn đang diễn ra'),
(288, 57, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(291, 54, '_status_event', 'Vẫn đang diễn ra'),
(292, 54, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(295, 49, '_status_event', 'Vẫn đang diễn ra'),
(296, 49, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(299, 46, '_status_event', 'Vẫn đang diễn ra'),
(300, 46, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(303, 43, '_status_event', 'Vẫn đang diễn ra'),
(304, 43, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(307, 40, '_status_event', 'Vẫn đang diễn ra'),
(308, 40, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(311, 37, '_status_event', 'Vẫn đang diễn ra'),
(312, 37, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(315, 16, '_status_event', 'Hết thời hạn'),
(316, 16, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(317, 43, 'wpb_post_views_count', '1'),
(318, 40, 'wpb_post_views_count', '1'),
(319, 37, 'wpb_post_views_count', '1'),
(320, 33, 'wpb_post_views_count', '1'),
(321, 92, '_status_event', ''),
(322, 92, 'ml-slider_settings', 'a:37:{s:4:\"type\";s:4:\"flex\";s:6:\"random\";b:0;s:8:\"cssClass\";s:0:\"\";s:8:\"printCss\";b:1;s:7:\"printJs\";b:1;s:5:\"width\";i:700;s:6:\"height\";i:300;s:3:\"spw\";i:7;s:3:\"sph\";i:5;s:5:\"delay\";i:3000;s:6:\"sDelay\";i:30;s:7:\"opacity\";d:0.7;s:10:\"titleSpeed\";i:500;s:6:\"effect\";s:6:\"random\";s:10:\"navigation\";b:1;s:5:\"links\";b:1;s:10:\"hoverPause\";b:1;s:5:\"theme\";s:7:\"default\";s:9:\"direction\";s:10:\"horizontal\";s:7:\"reverse\";b:0;s:14:\"animationSpeed\";i:600;s:8:\"prevText\";s:8:\"Previous\";s:8:\"nextText\";s:4:\"Next\";s:6:\"slices\";i:15;s:6:\"center\";b:0;s:9:\"smartCrop\";b:1;s:12:\"carouselMode\";b:0;s:14:\"carouselMargin\";i:5;s:16:\"firstSlideFadeIn\";b:1;s:6:\"easing\";s:6:\"linear\";s:8:\"autoPlay\";b:1;s:11:\"thumb_width\";i:150;s:12:\"thumb_height\";i:100;s:17:\"responsive_thumbs\";b:1;s:15:\"thumb_min_width\";i:100;s:9:\"fullWidth\";b:0;s:10:\"noConflict\";b:1;}'),
(323, 92, 'metaslider_slideshow_theme', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-02-27 04:24:26', '2019-02-27 04:24:26', 'Chúc mừng đến với WordPress. Đây là bài viết đầu tiên của bạn. Hãy chỉnh sửa hay xóa bài viết này, và bắt đầu viết blog!', 'Chào tất cả mọi người!', '', 'trash', 'open', 'open', '', 'chao-moi-nguoi__trashed', '', '', '2019-03-11 08:55:47', '2019-03-11 08:55:47', '', 0, 'http://khuyenmai_tenten.co/?p=1', 0, 'post', '', 1),
(2, 1, '2019-02-27 04:24:26', '2019-02-27 04:24:26', 'Đây là một trang mẫu. Nó khác với một bài blog bởi vì nó sẽ là một trang tĩnh và sẽ được thêm vào thanh menu của trang web của bạn (trong hầu hết theme). Mọi người thường bắt đầu bằng một trang Giới thiệu để giới thiệu bản thân đến người dùng tiềm năng. Bạn có thể viết như sau:\n\n<blockquote>Xin chào! Tôi là người giao thư bằng xe đạp vào ban ngày, một diễn viên đầy tham vọng vào ban đêm, và đây là trang web của tôi. Tôi sống ở Los Angeles, có một chú cho tuyệt vời tên là Jack, và tôi thích uống cocktail.</blockquote>\n\n...hay như thế này:\n\n<blockquote>Công ty XYZ Doohickey được thành lập vào năm 1971, và đã cung cấp đồ dùng chất lượng cho công chúng kể từ đó. Nằm ở thành phố Gotham, XYZ tạo việc làm cho hơn 2.000 người và làm tất cả những điều tuyệt vời cho cộng đồng Gotham.</blockquote>\n\nLà người dùng WordPress mới, bạn nên truy cập <a href=\"http://khuyenmai_tenten.co/wp-admin/\">trang quản trị</a> để xóa trang này và tạo các trang mới cho nội dung của bạn. Chúc vui vẻ!', 'Trang Mẫu', '', 'trash', 'closed', 'open', '', 'Trang mẫu__trashed', '', '', '2019-02-27 04:25:43', '2019-02-27 04:25:43', '', 0, 'http://khuyenmai_tenten.co/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-02-27 04:24:26', '2019-02-27 04:24:26', '<h2>Chúng tôi là ai</h2><p>Địa chỉ website là: http://khuyenmai_tenten.co.</p><h2>Thông tin cá nhân nào bị thu thập và tại sao thu thập</h2><h3>Bình luận</h3><p>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><h3>Thư viện</h3><p>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><h3>Thông tin liên hệ</h3><h3>Cookies</h3><p>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><p>Nếu bạn có tài khoản và đăng nhập và website, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><h3>Nội dung nhúng từ website khác</h3><p>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><h3>Phân tích</h3><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><h2>Dữ liệu của bạn tồn tại bao lâu</h2><p>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><h2>Các quyền nào của bạn với dữ liệu của mình</h2><p>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><h2>Các dữ liệu của bạn được gửi tới đâu</h2><p>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><h2>Thông tin liên hệ của bạn</h2><h2>Thông tin bổ sung</h2><h3>Cách chúng tôi bảo vệ dữ liệu của bạn</h3><h3>Các quá trình tiết lộ dữ liệu mà chúng tôi thực hiện</h3><h3>Những bên thứ ba chúng tôi nhận dữ liệu từ đó</h3><h3>Việc quyết định và/hoặc thu thập thông tin tự động mà chúng tôi áp dụng với dữ liệu người dùng</h3><h3>Các yêu cầu công bố thông tin được quản lý</h3>', 'Chính sách bảo mật', '', 'trash', 'closed', 'open', '', 'chinh-sach-bao-mat__trashed', '', '', '2019-02-27 04:25:34', '2019-02-27 04:25:34', '', 0, 'http://khuyenmai_tenten.co/?page_id=3', 0, 'page', '', 0),
(5, 1, '2019-02-27 04:25:34', '2019-02-27 04:25:34', '<h2>Chúng tôi là ai</h2><p>Địa chỉ website là: http://khuyenmai_tenten.co.</p><h2>Thông tin cá nhân nào bị thu thập và tại sao thu thập</h2><h3>Bình luận</h3><p>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><h3>Thư viện</h3><p>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><h3>Thông tin liên hệ</h3><h3>Cookies</h3><p>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><p>Nếu bạn có tài khoản và đăng nhập và website, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><h3>Nội dung nhúng từ website khác</h3><p>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><h3>Phân tích</h3><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><h2>Dữ liệu của bạn tồn tại bao lâu</h2><p>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><h2>Các quyền nào của bạn với dữ liệu của mình</h2><p>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><h2>Các dữ liệu của bạn được gửi tới đâu</h2><p>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><h2>Thông tin liên hệ của bạn</h2><h2>Thông tin bổ sung</h2><h3>Cách chúng tôi bảo vệ dữ liệu của bạn</h3><h3>Các quá trình tiết lộ dữ liệu mà chúng tôi thực hiện</h3><h3>Những bên thứ ba chúng tôi nhận dữ liệu từ đó</h3><h3>Việc quyết định và/hoặc thu thập thông tin tự động mà chúng tôi áp dụng với dữ liệu người dùng</h3><h3>Các yêu cầu công bố thông tin được quản lý</h3>', 'Chính sách bảo mật', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2019-02-27 04:25:34', '2019-02-27 04:25:34', '', 3, 'http://khuyenmai_tenten.co/2019/02/27/3-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2019-02-27 04:25:43', '2019-02-27 04:25:43', 'Đây là một trang mẫu. Nó khác với một bài blog bởi vì nó sẽ là một trang tĩnh và sẽ được thêm vào thanh menu của trang web của bạn (trong hầu hết theme). Mọi người thường bắt đầu bằng một trang Giới thiệu để giới thiệu bản thân đến người dùng tiềm năng. Bạn có thể viết như sau:\n\n<blockquote>Xin chào! Tôi là người giao thư bằng xe đạp vào ban ngày, một diễn viên đầy tham vọng vào ban đêm, và đây là trang web của tôi. Tôi sống ở Los Angeles, có một chú cho tuyệt vời tên là Jack, và tôi thích uống cocktail.</blockquote>\n\n...hay như thế này:\n\n<blockquote>Công ty XYZ Doohickey được thành lập vào năm 1971, và đã cung cấp đồ dùng chất lượng cho công chúng kể từ đó. Nằm ở thành phố Gotham, XYZ tạo việc làm cho hơn 2.000 người và làm tất cả những điều tuyệt vời cho cộng đồng Gotham.</blockquote>\n\nLà người dùng WordPress mới, bạn nên truy cập <a href=\"http://khuyenmai_tenten.co/wp-admin/\">trang quản trị</a> để xóa trang này và tạo các trang mới cho nội dung của bạn. Chúc vui vẻ!', 'Trang Mẫu', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-02-27 04:25:43', '2019-02-27 04:25:43', '', 2, 'http://khuyenmai_tenten.co/2019/02/27/2-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2019-02-27 04:25:55', '2019-02-27 04:25:55', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2019-02-27 04:25:55', '2019-02-27 04:25:55', '', 0, 'http://khuyenmai_tenten.co/?page_id=7', 0, 'page', '', 0),
(8, 1, '2019-02-27 04:25:55', '2019-02-27 04:25:55', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-02-27 04:25:55', '2019-02-27 04:25:55', '', 7, 'http://khuyenmai_tenten.co/2019/02/27/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2019-02-27 05:01:20', '2019-02-27 05:01:20', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2019-02-27 05:01:20', '2019-02-27 05:01:20', '', 0, 'http://khuyenmai_tenten.co/wp-content/uploads/2019/02/logo.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2019-02-27 05:01:27', '2019-02-27 05:01:27', '{\n    \"doanhnghiep::custom_logo\": {\n        \"value\": 9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-02-27 05:01:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b19a93bd-bdc7-4ef8-b6e1-4d179ea09097', '', '', '2019-02-27 05:01:27', '2019-02-27 05:01:27', '', 0, 'http://khuyenmai_tenten.co/2019/02/27/b19a93bd-bdc7-4ef8-b6e1-4d179ea09097/', 0, 'customize_changeset', '', 0),
(12, 1, '2019-03-01 03:28:31', '2019-03-01 03:28:31', ' ', '', '', 'publish', 'closed', 'closed', '', '12', '', '', '2019-03-07 04:41:18', '2019-03-07 04:41:18', '', 0, 'http://khuyenmai_tenten.co/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2019-03-01 03:28:31', '2019-03-01 03:28:31', ' ', '', '', 'publish', 'closed', 'closed', '', '13', '', '', '2019-03-07 04:41:18', '2019-03-07 04:41:18', '', 0, 'http://khuyenmai_tenten.co/?p=13', 3, 'nav_menu_item', '', 0),
(14, 1, '2019-03-01 03:28:31', '2019-03-01 03:28:31', ' ', '', '', 'publish', 'closed', 'closed', '', '14', '', '', '2019-03-07 04:41:18', '2019-03-07 04:41:18', '', 0, 'http://khuyenmai_tenten.co/?p=14', 4, 'nav_menu_item', '', 0),
(15, 1, '2019-03-01 03:28:32', '2019-03-01 03:28:32', ' ', '', '', 'publish', 'closed', 'closed', '', '15', '', '', '2019-03-07 04:41:18', '2019-03-07 04:41:18', '', 0, 'http://khuyenmai_tenten.co/?p=15', 2, 'nav_menu_item', '', 0),
(16, 1, '2019-03-01 03:48:49', '2019-03-01 03:48:49', 'Hòa cùng không khí của Hội nghị thượng đỉnh Mỹ – Triều, Tenten  vừa tung ra <strong>200 gói hosting loại limited edition</strong> dành tặng khách hàng.\r\n\r\n<img class=\"size-medium wp-image-18 aligncenter\" src=\"http://khuyenmai_tenten.co/wp-content/uploads/2019/03/Hosting-dac-biet-AZDIGI-600x400.jpg\" alt=\"\" width=\"600\" height=\"400\" />\r\n\r\nDuy nhất 2 ngày diễn ra Hội nghị, AZDIGI sẽ bán đồng giá chỉ <strong>99k/tháng</strong> cho 2 gói hosting đặc biệt có thông số như sau:\r\n<table>\r\n<thead>\r\n<tr>\r\n<td><strong>Kim Jong-un hosting | Xử lý mạnh mẽ</strong></td>\r\n<td><strong>Donald Trump hosting | Bộ nhớ siêu đẳng</strong></td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>\r\n<ul>\r\n 	<li>2 CPU</li>\r\n 	<li>1.5GB RAM</li>\r\n 	<li>10GB SSD</li>\r\n 	<li>Addon domain 10</li>\r\n</ul>\r\n</td>\r\n<td>\r\n<ul>\r\n 	<li>1.5 CPU</li>\r\n 	<li>2GB RAM</li>\r\n 	<li>10GB SSD</li>\r\n 	<li>Addon domain 10</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<em>*Giá ưu đãi áp dụng khi thanh toán 12 tháng. Gia hạn bằng phí đăng ký luôn.</em>\r\n\r\nHai gói hosting phiên bản đặc biệt này có thông số phù hợp theo mục đích sử dụng riêng của 2 đối tượng khách hàng khác nhau, nhấn mạnh vào tốc độ xử lý và bộ nhớ.\r\n\r\nThêm nữa, với các hóa đơn từ 1 triệu đồng trở lên, bạn sẽ nhận được thêm <strong>1 mũ bảo hiểm</strong> để tham gia giao thông an toàn trong năm mới 2019 nữa.\r\n\r\nSố lượng có hạn chỉ <strong>100 gói/phiên bản</strong> mà thôi nên nếu cần hãy cân nhắc rồi đăng ký sớm nhé. AZDIGI sẽ chỉ mở bán hai gói hosting đặc biệt này trong 2 ngày 27-28/2/2019 mà thôi, có thể sẽ kết thúc sớm khi đã bán hết.\r\n\r\nChúc các bạn một ngày vui vẻ!', 'Chào đón Trump – Kim, Tenten tung gói Hosting đặc biệt – Giá chỉ 99k/tháng', 'Hòa cùng không khí của Hội nghị thượng đỉnh Mỹ – Triều, Tenten vừa tung ra 200 gói hosting loại limited edition dành tặng khách hàng.', 'publish', 'open', 'open', '', 'chao-don-trump-kim-tenten-tung-goi-hosting-dac-biet-gia-chi-99k-thang', '', '', '2019-03-11 09:42:27', '2019-03-11 09:42:27', '', 0, 'http://khuyenmai_tenten.co/?p=16', 0, 'post', '', 0),
(17, 1, '2019-03-01 03:38:48', '2019-03-01 03:38:48', '', 'img1', '', 'inherit', 'open', 'closed', '', 'img1', '', '', '2019-03-01 03:38:48', '2019-03-01 03:38:48', '', 16, 'http://khuyenmai_tenten.co/wp-content/uploads/2019/03/img1.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2019-03-01 03:48:49', '2019-03-01 03:48:49', 'Hòa cùng không khí của Hội nghị thượng đỉnh Mỹ – Triều, Tenten  vừa tung ra <strong>200 gói hosting loại limited edition</strong> dành tặng khách hàng.\r\n\r\n<img class=\"size-medium wp-image-18 aligncenter\" src=\"http://khuyenmai_tenten.co/wp-content/uploads/2019/03/Hosting-dac-biet-AZDIGI-600x400.jpg\" alt=\"\" width=\"600\" height=\"400\" />\r\n\r\nDuy nhất 2 ngày diễn ra Hội nghị, AZDIGI sẽ bán đồng giá chỉ <strong>99k/tháng</strong> cho 2 gói hosting đặc biệt có thông số như sau:\r\n<table>\r\n<thead>\r\n<tr>\r\n<td><strong>Kim Jong-un hosting | Xử lý mạnh mẽ</strong></td>\r\n<td><strong>Donald Trump hosting | Bộ nhớ siêu đẳng</strong></td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>\r\n<ul>\r\n 	<li>2 CPU</li>\r\n 	<li>1.5GB RAM</li>\r\n 	<li>10GB SSD</li>\r\n 	<li>Addon domain 10</li>\r\n</ul>\r\n</td>\r\n<td>\r\n<ul>\r\n 	<li>1.5 CPU</li>\r\n 	<li>2GB RAM</li>\r\n 	<li>10GB SSD</li>\r\n 	<li>Addon domain 10</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<em>*Giá ưu đãi áp dụng khi thanh toán 12 tháng. Gia hạn bằng phí đăng ký luôn.</em>\r\n\r\nHai gói hosting phiên bản đặc biệt này có thông số phù hợp theo mục đích sử dụng riêng của 2 đối tượng khách hàng khác nhau, nhấn mạnh vào tốc độ xử lý và bộ nhớ.\r\n\r\nThêm nữa, với các hóa đơn từ 1 triệu đồng trở lên, bạn sẽ nhận được thêm <strong>1 mũ bảo hiểm</strong> để tham gia giao thông an toàn trong năm mới 2019 nữa.\r\n\r\nSố lượng có hạn chỉ <strong>100 gói/phiên bản</strong> mà thôi nên nếu cần hãy cân nhắc rồi đăng ký sớm nhé. AZDIGI sẽ chỉ mở bán hai gói hosting đặc biệt này trong 2 ngày 27-28/2/2019 mà thôi, có thể sẽ kết thúc sớm khi đã bán hết.\r\n\r\nChúc các bạn một ngày vui vẻ!', 'Chào đón Trump – Kim, Tenten tung gói Hosting đặc biệt – Giá chỉ 99k/tháng', 'Hòa cùng không khí của Hội nghị thượng đỉnh Mỹ – Triều, Tenten vừa tung ra 200 gói hosting loại limited edition dành tặng khách hàng.', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-03-01 03:48:49', '2019-03-01 03:48:49', '', 16, 'http://khuyenmai_tenten.co/2019/03/01/16-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2019-03-01 07:42:26', '2019-03-01 07:42:26', 'Tuần cuối tháng 2, GoDaddy lại bất ngờ tung ra flash sale – giảm giá 1 loạt tên miền chỉ còn từ 1.99$/năm.\r\n\r\n<a href=\"https://canhme.com/domain/godaddy/\" target=\"_blank\" rel=\"nofollow noopener\"><img class=\"aligncenter size-full wp-image-87397\" src=\"https://canhme.com/wp-content/uploads/2019/02/Domain-GoDaddy-tu-1.99-usd.png\" sizes=\"(max-width: 841px) 100vw, 841px\" srcset=\"https://canhme.com/wp-content/uploads/2019/02/Domain-GoDaddy-tu-1.99-usd.png 841w, https://canhme.com/wp-content/uploads/2019/02/Domain-GoDaddy-tu-1.99-usd-400x183.png 400w, https://canhme.com/wp-content/uploads/2019/02/Domain-GoDaddy-tu-1.99-usd-800x365.png 800w\" alt=\"\" width=\"841\" height=\"384\" /></a>\r\n\r\nTrong đợt sale này, sẽ có <strong>18 phần mở rộng</strong> khác nhau được chia làm 3 mức giá: <strong>1.99$</strong>, <strong>2.99$</strong> và <strong>4.99$</strong>. Mình để ý thấy một số extension .CLUB, .ONLINE, .BIZ, .VIP, .PRO, .SHOP là được giảm khá nhiều, nếu cần thì bạn nên tận dụng cơ hội này để đăng ký tại nhà cung cấp lớn nhất thế giới nhé.\r\n\r\nDanh sách các loại tên miền được ưu đãi như sau:\r\n<table>\r\n<thead>\r\n<tr>\r\n<td><strong>Giá ưu đãi</strong></td>\r\n<td colspan=\"6\"><strong>Tên miền</strong></td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td><strong>1.99$/năm</strong></td>\r\n<td><strong>.CLUB</strong></td>\r\n<td><strong>.ONLINE</strong></td>\r\n<td>.LIVE</td>\r\n<td>.WORK</td>\r\n<td><strong>.BIZ</strong></td>\r\n<td>.WORLD</td>\r\n</tr>\r\n<tr>\r\n<td><strong>2.99$/năm</strong></td>\r\n<td><strong>.INFO</strong></td>\r\n<td><strong>.VIP</strong></td>\r\n<td>.ME</td>\r\n<td><strong>.SHOP</strong></td>\r\n<td><strong>.PRO</strong></td>\r\n<td>.EMAIL</td>\r\n</tr>\r\n<tr>\r\n<td><strong>4.99$/năm</strong></td>\r\n<td>.TECH</td>\r\n<td>.LIFE</td>\r\n<td>.TODAY</td>\r\n<td>.WS</td>\r\n<td>.CLOUD</td>\r\n<td>.ROCKS</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<em>***Không cần sử dụng thêm mã giảm giá.</em>\r\n\r\n<strong>&gt;&gt; Tới GoDaddy và đăng ký ngay.</strong>\r\n\r\n<strong>Lưu ý:</strong>\r\n<ul>\r\n 	<li>Giá khuyến mại chỉ áp dụng cho năm đầu tiên.</li>\r\n 	<li>Mỗi tên miền đăng ký bạn sẽ phải trả thêm 0.18$ phí ICANN.</li>\r\n 	<li>Thanh toán được bằng cả tài khoản <a href=\"https://canhme.com/kien-thuc/huong-dan-dang-ky-va-xac-thuc-tai-khoan-paypal/\" target=\"_blank\" rel=\"noopener\">PayPal</a> lẫn <a href=\"https://canhme.com/kien-thuc/phan-biet-cac-loai-the-thanh-toan-quoc-te/\" target=\"_blank\" rel=\"noopener\">thẻ Visa/Master</a>.</li>\r\n</ul>\r\nTuy không có tên miền .COM hay .NET nhưng bạn có thể sắm vài domain với các phần mở rộng đa dạng để làm website vệ tinh cũng được lắm. Mình không rõ khuyến mại sẽ kết thúc khi nào nên bạn cần mua càng sớm càng tốt nhé!\r\n\r\nChúc các bạn thành công!', '[Flash Sale] Tên miền chỉ từ 1.99$ tại GoDaddy', 'Tuần cuối tháng 2, GoDaddy lại bất ngờ tung ra flash sale – giảm giá 1 loạt tên miền chỉ còn từ 1.99$/năm.', 'publish', 'open', 'open', '', 'flash-sale-ten-mien-chi-tu-1-99-tai-godaddy', '', '', '2019-03-01 07:42:26', '2019-03-01 07:42:26', '', 0, 'http://khuyenmai_tenten.co/?p=21', 0, 'post', '', 0),
(22, 1, '2019-03-01 07:42:21', '2019-03-01 07:42:21', '', 'godaddylogo', '', 'inherit', 'open', 'closed', '', 'godaddylogo', '', '', '2019-03-01 07:42:21', '2019-03-01 07:42:21', '', 21, 'http://khuyenmai_tenten.co/wp-content/uploads/2019/03/godaddylogo.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2019-03-01 07:42:26', '2019-03-01 07:42:26', 'Tuần cuối tháng 2, GoDaddy lại bất ngờ tung ra flash sale – giảm giá 1 loạt tên miền chỉ còn từ 1.99$/năm.\r\n\r\n<a href=\"https://canhme.com/domain/godaddy/\" target=\"_blank\" rel=\"nofollow noopener\"><img class=\"aligncenter size-full wp-image-87397\" src=\"https://canhme.com/wp-content/uploads/2019/02/Domain-GoDaddy-tu-1.99-usd.png\" sizes=\"(max-width: 841px) 100vw, 841px\" srcset=\"https://canhme.com/wp-content/uploads/2019/02/Domain-GoDaddy-tu-1.99-usd.png 841w, https://canhme.com/wp-content/uploads/2019/02/Domain-GoDaddy-tu-1.99-usd-400x183.png 400w, https://canhme.com/wp-content/uploads/2019/02/Domain-GoDaddy-tu-1.99-usd-800x365.png 800w\" alt=\"\" width=\"841\" height=\"384\" /></a>\r\n\r\nTrong đợt sale này, sẽ có <strong>18 phần mở rộng</strong> khác nhau được chia làm 3 mức giá: <strong>1.99$</strong>, <strong>2.99$</strong> và <strong>4.99$</strong>. Mình để ý thấy một số extension .CLUB, .ONLINE, .BIZ, .VIP, .PRO, .SHOP là được giảm khá nhiều, nếu cần thì bạn nên tận dụng cơ hội này để đăng ký tại nhà cung cấp lớn nhất thế giới nhé.\r\n\r\nDanh sách các loại tên miền được ưu đãi như sau:\r\n<table>\r\n<thead>\r\n<tr>\r\n<td><strong>Giá ưu đãi</strong></td>\r\n<td colspan=\"6\"><strong>Tên miền</strong></td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td><strong>1.99$/năm</strong></td>\r\n<td><strong>.CLUB</strong></td>\r\n<td><strong>.ONLINE</strong></td>\r\n<td>.LIVE</td>\r\n<td>.WORK</td>\r\n<td><strong>.BIZ</strong></td>\r\n<td>.WORLD</td>\r\n</tr>\r\n<tr>\r\n<td><strong>2.99$/năm</strong></td>\r\n<td><strong>.INFO</strong></td>\r\n<td><strong>.VIP</strong></td>\r\n<td>.ME</td>\r\n<td><strong>.SHOP</strong></td>\r\n<td><strong>.PRO</strong></td>\r\n<td>.EMAIL</td>\r\n</tr>\r\n<tr>\r\n<td><strong>4.99$/năm</strong></td>\r\n<td>.TECH</td>\r\n<td>.LIFE</td>\r\n<td>.TODAY</td>\r\n<td>.WS</td>\r\n<td>.CLOUD</td>\r\n<td>.ROCKS</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<em>***Không cần sử dụng thêm mã giảm giá.</em>\r\n\r\n<strong>&gt;&gt; Tới GoDaddy và đăng ký ngay.</strong>\r\n\r\n<strong>Lưu ý:</strong>\r\n<ul>\r\n 	<li>Giá khuyến mại chỉ áp dụng cho năm đầu tiên.</li>\r\n 	<li>Mỗi tên miền đăng ký bạn sẽ phải trả thêm 0.18$ phí ICANN.</li>\r\n 	<li>Thanh toán được bằng cả tài khoản <a href=\"https://canhme.com/kien-thuc/huong-dan-dang-ky-va-xac-thuc-tai-khoan-paypal/\" target=\"_blank\" rel=\"noopener\">PayPal</a> lẫn <a href=\"https://canhme.com/kien-thuc/phan-biet-cac-loai-the-thanh-toan-quoc-te/\" target=\"_blank\" rel=\"noopener\">thẻ Visa/Master</a>.</li>\r\n</ul>\r\nTuy không có tên miền .COM hay .NET nhưng bạn có thể sắm vài domain với các phần mở rộng đa dạng để làm website vệ tinh cũng được lắm. Mình không rõ khuyến mại sẽ kết thúc khi nào nên bạn cần mua càng sớm càng tốt nhé!\r\n\r\nChúc các bạn thành công!', '[Flash Sale] Tên miền chỉ từ 1.99$ tại GoDaddy', 'Tuần cuối tháng 2, GoDaddy lại bất ngờ tung ra flash sale – giảm giá 1 loạt tên miền chỉ còn từ 1.99$/năm.', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2019-03-01 07:42:26', '2019-03-01 07:42:26', '', 21, 'http://khuyenmai_tenten.co/2019/03/01/21-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2019-03-01 07:50:18', '2019-03-01 07:50:18', '', 'Hosting-dac-biet-AZDIGI', '', 'inherit', 'open', 'closed', '', 'hosting-dac-biet-azdigi', '', '', '2019-03-01 07:50:18', '2019-03-01 07:50:18', '', 16, 'http://khuyenmai_tenten.co/wp-content/uploads/2019/03/Hosting-dac-biet-AZDIGI.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2019-03-01 08:00:44', '2019-03-01 08:00:44', 'Đầu xuân năm mới Canh Me đã có ngay chương trình khuyến mại dành cho tên miền .COM đến từ Namecheap, chỉ 5.88$.\r\n\r\nTừ nay cho tới trưa ngày <del>19/1/2019</del> theo giờ Việt Nam, bạn sẽ có cơ hội mua <strong>tên miền .COM với giá 5.88$/năm –  giảm tới 46%</strong> so với thông thường, chỉ cần sử dụng coupon bên dưới. Đặc biệt, <strong>miễn phí trọn đời dịch vụ ẩn thông tin tên miền</strong> luôn.\r\n\r\n<img class=\"size-medium wp-image-34 aligncenter\" src=\"http://khuyenmai_tenten.co/wp-content/uploads/2019/03/Ten-mien-.COM-5.88-usd-600x400.png\" alt=\"\" width=\"600\" height=\"400\" />\r\n\r\nMặc dù không phải là mức giá rẻ nhất nhưng đi kèm với tên miền, bạn sẽ còn nhận thêm nhiều ưu đãi khác như:\r\n<ul>\r\n 	<li>sử dụng thử dịch vụ Managed WordPress Hosting chỉ 1$ cho tháng đầu,</li>\r\n 	<li>mua chứng chỉ số bảo mật Positive SSL với giá chỉ 1.99$/năm,</li>\r\n 	<li>2 tháng sử dụng miễn phí dịch vụ Private Email,</li>\r\n 	<li>giao diện quản lý đầy đủ, dễ sử dụng,</li>\r\n 	<li>hỗ trợ 24/7 bất kỳ lúc nào bạn cần.</li>\r\n</ul>', 'Ưu đãi đầu xuân – Tên miền .COM chỉ 5.88$ tại Namecheap', 'Đầu xuân năm mới Canh Me đã có ngay chương trình khuyến mại dành cho tên miền .COM đến từ Namecheap, chỉ 5.88$.', 'publish', 'open', 'open', '', 'uu-dai-dau-xuan-ten-mien-com-chi-5-88-tai-namecheap', '', '', '2019-03-01 08:00:44', '2019-03-01 08:00:44', '', 0, 'http://khuyenmai_tenten.co/?p=33', 0, 'post', '', 0),
(34, 1, '2019-03-01 08:00:28', '2019-03-01 08:00:28', '', 'Ten-mien-.COM-5.88-usd', '', 'inherit', 'open', 'closed', '', 'ten-mien-com-5-88-usd', '', '', '2019-03-01 08:00:28', '2019-03-01 08:00:28', '', 33, 'http://khuyenmai_tenten.co/wp-content/uploads/2019/03/Ten-mien-.COM-5.88-usd.png', 0, 'attachment', 'image/png', 0),
(35, 1, '2019-03-01 08:00:44', '2019-03-01 08:00:44', 'Đầu xuân năm mới Canh Me đã có ngay chương trình khuyến mại dành cho tên miền .COM đến từ Namecheap, chỉ 5.88$.\r\n\r\nTừ nay cho tới trưa ngày <del>19/1/2019</del> theo giờ Việt Nam, bạn sẽ có cơ hội mua <strong>tên miền .COM với giá 5.88$/năm –  giảm tới 46%</strong> so với thông thường, chỉ cần sử dụng coupon bên dưới. Đặc biệt, <strong>miễn phí trọn đời dịch vụ ẩn thông tin tên miền</strong> luôn.\r\n\r\n<img class=\"size-medium wp-image-34 aligncenter\" src=\"http://khuyenmai_tenten.co/wp-content/uploads/2019/03/Ten-mien-.COM-5.88-usd-600x400.png\" alt=\"\" width=\"600\" height=\"400\" />\r\n\r\nMặc dù không phải là mức giá rẻ nhất nhưng đi kèm với tên miền, bạn sẽ còn nhận thêm nhiều ưu đãi khác như:\r\n<ul>\r\n 	<li>sử dụng thử dịch vụ Managed WordPress Hosting chỉ 1$ cho tháng đầu,</li>\r\n 	<li>mua chứng chỉ số bảo mật Positive SSL với giá chỉ 1.99$/năm,</li>\r\n 	<li>2 tháng sử dụng miễn phí dịch vụ Private Email,</li>\r\n 	<li>giao diện quản lý đầy đủ, dễ sử dụng,</li>\r\n 	<li>hỗ trợ 24/7 bất kỳ lúc nào bạn cần.</li>\r\n</ul>', 'Ưu đãi đầu xuân – Tên miền .COM chỉ 5.88$ tại Namecheap', 'Đầu xuân năm mới Canh Me đã có ngay chương trình khuyến mại dành cho tên miền .COM đến từ Namecheap, chỉ 5.88$.', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2019-03-01 08:00:44', '2019-03-01 08:00:44', '', 33, 'http://khuyenmai_tenten.co/2019/03/01/33-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2019-03-01 08:08:37', '2019-03-01 08:08:37', '“<strong>Xuân rộn ràng – Sale kịch sàn</strong>” chính là khẩu hiệu cho chương trình ưu đãi mới áp dụng cho tên miền .COM tại <a href=\"https://canhme.com/tenten/\" target=\"_blank\" rel=\"noopener\">Tenten</a>, chỉ 149k mà còn không giới hạn số lượng.\r\n\r\nDuy nhất 2 ngày hôm nay, 24/1/2019 và ngày mai, 25/1/2019, bạn có thể đăng ký <strong>không giới hạn tên miền .COM với giá chỉ 149k/năm/tên miền</strong>. Đặc biệt, không kèm bất kỳ điều kiện gì và còn <strong>miễn phí luôn dịch vụ ẩn thông tin</strong> nữa.\r\n\r\n<img class=\"size-medium wp-image-38 aligncenter\" src=\"http://khuyenmai_tenten.co/wp-content/uploads/2019/03/ten-mien-.com-149k-600x400.jpg\" alt=\"\" width=\"600\" height=\"400\" />\r\n\r\nCộng thêm 10% thuế VAT, giá cuối cùng cho 1 domain là <strong>164k (~6.97$)</strong>.\r\n\r\n<strong><a href=\"https://canhme.com/domain/tenten-khuyen-mai/\" target=\"_blank\" rel=\"nofollow noopener\">Tới Tenten đăng ký ngay tại đây.</a></strong>\r\n\r\n<em>***Giá ưu đãi chỉ áp dụng cho năm đầu tiên, gia hạn là 280k.</em>\r\n\r\nĐã rất lâu rồi Tenten mới giảm giá sâu như thế cho tên miền .COM nên nếu cần đăng ký tại nhà cung cấp Việt Nam thì bạn hãy tận dụng cơ hội này nhé!\r\n\r\nVới các nhà cung cấp nước ngoài, mời các bạn tham khảo thêm sẽ có giá mềm hơn:\r\n<ul>\r\n 	<li>GoDaddy: 0.99$ (áp dụng cho khách hàng mới)</li>\r\n 	<li><a href=\"https://canhme.com/exabytes-coupon/exclusive-offer-ten-mien-com-399-usd/\" target=\"_blank\" rel=\"noopener\">Exabytes: 4.99$ (giới hạn 4 tên miền)</a></li>\r\n 	<li>NameSilo: 5.99$ (1 domain giá 5.99$, không giới hạn số lượng giá 6.99$)</li>\r\n 	<li>Porkbun: 6.95$ (giới hạn 5 domain/user)</li>\r\n</ul>\r\nChúc các bạn thành công!', '[Flash Sale] Tên miền .COM chỉ 149k tại Tenten, Không giới hạn số lượng', 'Duy nhất 2 ngày hôm nay, 24/1/2019 và ngày mai, 25/1/2019, bạn có thể đăng ký không giới hạn tên miền .COM với giá chỉ 149k/năm/tên miền. Đặc biệt, không kèm bất kỳ điều kiện gì và còn miễn phí luôn dịch vụ ẩn thông tin nữa.', 'publish', 'open', 'open', '', 'flash-sale-ten-mien-com-chi-149k-tai-tenten-khong-gioi-han-so-luong', '', '', '2019-03-11 09:42:06', '2019-03-11 09:42:06', '', 0, 'http://khuyenmai_tenten.co/?p=37', 0, 'post', '', 0),
(38, 1, '2019-03-01 08:08:24', '2019-03-01 08:08:24', '', 'ten-mien-.com-149k', '', 'inherit', 'open', 'closed', '', 'ten-mien-com-149k', '', '', '2019-03-01 08:08:24', '2019-03-01 08:08:24', '', 37, 'http://khuyenmai_tenten.co/wp-content/uploads/2019/03/ten-mien-.com-149k.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2019-03-01 08:08:37', '2019-03-01 08:08:37', '“<strong>Xuân rộn ràng – Sale kịch sàn</strong>” chính là khẩu hiệu cho chương trình ưu đãi mới áp dụng cho tên miền .COM tại <a href=\"https://canhme.com/tenten/\" target=\"_blank\" rel=\"noopener\">Tenten</a>, chỉ 149k mà còn không giới hạn số lượng.\r\n\r\nDuy nhất 2 ngày hôm nay, 24/1/2019 và ngày mai, 25/1/2019, bạn có thể đăng ký <strong>không giới hạn tên miền .COM với giá chỉ 149k/năm/tên miền</strong>. Đặc biệt, không kèm bất kỳ điều kiện gì và còn <strong>miễn phí luôn dịch vụ ẩn thông tin</strong> nữa.\r\n\r\n<img class=\"size-medium wp-image-38 aligncenter\" src=\"http://khuyenmai_tenten.co/wp-content/uploads/2019/03/ten-mien-.com-149k-600x400.jpg\" alt=\"\" width=\"600\" height=\"400\" />\r\n\r\nCộng thêm 10% thuế VAT, giá cuối cùng cho 1 domain là <strong>164k (~6.97$)</strong>.\r\n\r\n<strong><a href=\"https://canhme.com/domain/tenten-khuyen-mai/\" target=\"_blank\" rel=\"nofollow noopener\">Tới Tenten đăng ký ngay tại đây.</a></strong>\r\n\r\n<em>***Giá ưu đãi chỉ áp dụng cho năm đầu tiên, gia hạn là 280k.</em>\r\n\r\nĐã rất lâu rồi Tenten mới giảm giá sâu như thế cho tên miền .COM nên nếu cần đăng ký tại nhà cung cấp Việt Nam thì bạn hãy tận dụng cơ hội này nhé!\r\n\r\nVới các nhà cung cấp nước ngoài, mời các bạn tham khảo thêm sẽ có giá mềm hơn:\r\n<ul>\r\n 	<li>GoDaddy: 0.99$ (áp dụng cho khách hàng mới)</li>\r\n 	<li><a href=\"https://canhme.com/exabytes-coupon/exclusive-offer-ten-mien-com-399-usd/\" target=\"_blank\" rel=\"noopener\">Exabytes: 4.99$ (giới hạn 4 tên miền)</a></li>\r\n 	<li>NameSilo: 5.99$ (1 domain giá 5.99$, không giới hạn số lượng giá 6.99$)</li>\r\n 	<li>Porkbun: 6.95$ (giới hạn 5 domain/user)</li>\r\n</ul>\r\nChúc các bạn thành công!', '[Flash Sale] Tên miền .COM chỉ 149k tại Tenten, Không giới hạn số lượng', 'Duy nhất 2 ngày hôm nay, 24/1/2019 và ngày mai, 25/1/2019, bạn có thể đăng ký không giới hạn tên miền .COM với giá chỉ 149k/năm/tên miền. Đặc biệt, không kèm bất kỳ điều kiện gì và còn miễn phí luôn dịch vụ ẩn thông tin nữa.', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2019-03-01 08:08:37', '2019-03-01 08:08:37', '', 37, 'http://khuyenmai_tenten.co/2019/03/01/37-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2019-03-01 08:17:22', '2019-03-01 08:17:22', 'Từ đầu năm 2018 tới giờ, <a href=\"https://canhme.com/tenten/\" target=\"_blank\" rel=\"noopener\">Tenten</a> vẫn luôn duy trì chương trình giảm giá 50% cho tên miền quốc gia Việt Nam .VN.\r\n\r\n<img class=\"size-medium wp-image-41 aligncenter\" src=\"http://khuyenmai_tenten.co/wp-content/uploads/2019/03/Tenten-giam-50-gia-dich-vu-ten-mien-.VN_-1.jpg\" alt=\"\" width=\"567\" height=\"264\" />\r\n\r\nVào mỗi thứ 3 và thứ 5 hàng tuần, từ 9h đến 24h, bạn sẽ được <strong>giảm ngay 50% giá dịch vụ</strong> khi đăng ký mới các loại tên miền quốc gia Việt Nam tại Tenten với mã <strong>MAVN</strong>.\r\n\r\nĐặc biệt, khi đăng ký từ 2 năm trở lên, <strong>giá dịch vụ khi gia hạn tên miền cũng được giảm 50%</strong> luôn\r\n\r\n&nbsp;', 'Tenten giảm 50% giá dịch vụ tên miền .VN', 'Từ đầu năm 2018 tới giờ, Tenten vẫn luôn duy trì chương trình giảm giá 50% cho tên miền quốc gia Việt Nam .VN.', 'publish', 'open', 'open', '', 'tenten-giam-50-gia-dich-vu-ten-mien-vn', '', '', '2019-03-11 09:42:05', '2019-03-11 09:42:05', '', 0, 'http://khuyenmai_tenten.co/?p=40', 0, 'post', '', 0),
(41, 1, '2019-03-01 08:16:52', '2019-03-01 08:16:52', '', 'Tenten-giam-50-gia-dich-vu-ten-mien-.VN_-1', '', 'inherit', 'open', 'closed', '', 'tenten-giam-50-gia-dich-vu-ten-mien-vn_-1', '', '', '2019-03-01 08:16:52', '2019-03-01 08:16:52', '', 40, 'http://khuyenmai_tenten.co/wp-content/uploads/2019/03/Tenten-giam-50-gia-dich-vu-ten-mien-.VN_-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2019-03-01 08:17:22', '2019-03-01 08:17:22', 'Từ đầu năm 2018 tới giờ, <a href=\"https://canhme.com/tenten/\" target=\"_blank\" rel=\"noopener\">Tenten</a> vẫn luôn duy trì chương trình giảm giá 50% cho tên miền quốc gia Việt Nam .VN.\r\n\r\n<img class=\"size-medium wp-image-41 aligncenter\" src=\"http://khuyenmai_tenten.co/wp-content/uploads/2019/03/Tenten-giam-50-gia-dich-vu-ten-mien-.VN_-1.jpg\" alt=\"\" width=\"567\" height=\"264\" />\r\n\r\nVào mỗi thứ 3 và thứ 5 hàng tuần, từ 9h đến 24h, bạn sẽ được <strong>giảm ngay 50% giá dịch vụ</strong> khi đăng ký mới các loại tên miền quốc gia Việt Nam tại Tenten với mã <strong>MAVN</strong>.\r\n\r\nĐặc biệt, khi đăng ký từ 2 năm trở lên, <strong>giá dịch vụ khi gia hạn tên miền cũng được giảm 50%</strong> luôn\r\n\r\n&nbsp;', 'Tenten giảm 50% giá dịch vụ tên miền .VN', 'Từ đầu năm 2018 tới giờ, Tenten vẫn luôn duy trì chương trình giảm giá 50% cho tên miền quốc gia Việt Nam .VN.', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2019-03-01 08:17:22', '2019-03-01 08:17:22', '', 40, 'http://khuyenmai_tenten.co/2019/03/01/40-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2019-03-01 08:19:25', '2019-03-01 08:19:25', 'Hôm nay, chúng ta lại có thêm một ngày thứ 5 đặc biệt tại <a href=\"https://canhme.com/tenten/\" target=\"_blank\" rel=\"noopener\">Tenten</a> với chương trình khuyến mại <strong>HAPPY DAY – NGẤT NGÂY DEAL KHỦNG</strong> – tên miền .COM/.NET chỉ từ 9k, giảm thêm 50% cho .VN.\r\n\r\n<img class=\"aligncenter wp-image-44 size-full\" src=\"http://khuyenmai_tenten.co/wp-content/uploads/2019/03/Tenten-happy-day-.com-.net-tu-9k-1.jpg\" alt=\"\" width=\"1104\" height=\"424\" />\r\n\r\nDuy nhất hôm nay, ngày 28/12/2017, từ 9h – 24h, chỉ cần like fanpage của Tenten, like + share bài viết khuyến mại, bạn sẽ có cơ hội nhận coupon để mua tên miền .COM/.NET với giá chỉ từ 9k/năm. Cụ thể như sau:\r\n<ul>\r\n 	<li> <span class=\"m_-8952360545590453788m_-8980655954843078004style6\">Like Fanpage</span> tenten.vn trên Facebook</li>\r\n 	<li>Like + Comment <strong>Tài khoản TENTEN + Cảm nhận về TENTEN</strong> + Share (chế độ public) bài viết → <strong>Nhận mã COUPON 69K</strong></li>\r\n</ul>\r\nĐặc biệt, 10 khách hàng có số lượt like bài viết khuyến mại trên tường của mình nhiều nhất sẽ <strong>nhận được coupon mua tên miền với giá 9K</strong>. Kết quả sẽ được công bố trên Fanpage vào 10h ngày 02/01/2018.\r\n\r\nBên cạnh đó, tên miền quốc gia Việt Nam – <strong>.VN cũng được giảm 50% giá dịch vụ</strong> khi đăng ký mới với mã <strong>MAVN</strong>.\r\n\r\n<strong>&gt;&gt; Tới trang đăng ký ngay tại đây.</strong>\r\n\r\n<strong>Lưu ý:</strong>\r\n<ul>\r\n 	<li>Mỗi tài khoản được mua <strong>tối đa 2 tên miền</strong>.</li>\r\n 	<li>Chương trình bao gồm: <strong>300 tên miền .COM + .NET</strong></li>\r\n 	<li>Coupon 9K chỉ được trao cho những post có <strong>từ 10 like trở lên</strong>.</li>\r\n 	<li>Mỗi coupon 9K được mua 1 tên miền .COM hoặc .NET</li>\r\n 	<li>Ưu đãi chỉ dùng cho năm đầu, gia hạn năm sau là 289k với .COM và .NET</li>\r\n</ul>\r\nRiêng với dịch vụ <strong>Kusanagi Cloud VPS</strong>, để khuyến khích khách hàng dùng thử, từ nay cho tới 18h ngày 31/12/2017, Tenten sẽ <strong>tặng 500K tiền nạp cho khách hàng lần đầu tiên đăng ký sử dụng</strong>. Mời các bạn tham khảo thêm.\r\n\r\nChúc các bạn vui vẻ!', 'Happy Day tại Tenten – Tên miền .COM/.NET chỉ từ 9k, Giảm 50% cho .VN', 'Hôm nay, chúng ta lại có thêm một ngày thứ 5 đặc biệt tại Tenten với chương trình khuyến mại HAPPY DAY – NGẤT NGÂY DEAL KHỦNG – tên miền .COM/.NET chỉ từ 9k, giảm thêm 50% cho .VN.', 'publish', 'open', 'open', '', 'happy-day-tai-tenten-ten-mien-com-net-chi-tu-9k-giam-50-cho-vn', '', '', '2019-03-11 09:42:04', '2019-03-11 09:42:04', '', 0, 'http://khuyenmai_tenten.co/?p=43', 0, 'post', '', 0),
(44, 1, '2019-03-01 08:19:07', '2019-03-01 08:19:07', '', 'Tenten-happy-day-.com-.net-tu-9k (1)', '', 'inherit', 'open', 'closed', '', 'tenten-happy-day-com-net-tu-9k-1', '', '', '2019-03-01 08:19:07', '2019-03-01 08:19:07', '', 43, 'http://khuyenmai_tenten.co/wp-content/uploads/2019/03/Tenten-happy-day-.com-.net-tu-9k-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2019-03-01 08:19:25', '2019-03-01 08:19:25', 'Hôm nay, chúng ta lại có thêm một ngày thứ 5 đặc biệt tại <a href=\"https://canhme.com/tenten/\" target=\"_blank\" rel=\"noopener\">Tenten</a> với chương trình khuyến mại <strong>HAPPY DAY – NGẤT NGÂY DEAL KHỦNG</strong> – tên miền .COM/.NET chỉ từ 9k, giảm thêm 50% cho .VN.\r\n\r\n<img class=\"aligncenter wp-image-44 size-full\" src=\"http://khuyenmai_tenten.co/wp-content/uploads/2019/03/Tenten-happy-day-.com-.net-tu-9k-1.jpg\" alt=\"\" width=\"1104\" height=\"424\" />\r\n\r\nDuy nhất hôm nay, ngày 28/12/2017, từ 9h – 24h, chỉ cần like fanpage của Tenten, like + share bài viết khuyến mại, bạn sẽ có cơ hội nhận coupon để mua tên miền .COM/.NET với giá chỉ từ 9k/năm. Cụ thể như sau:\r\n<ul>\r\n 	<li> <span class=\"m_-8952360545590453788m_-8980655954843078004style6\">Like Fanpage</span> tenten.vn trên Facebook</li>\r\n 	<li>Like + Comment <strong>Tài khoản TENTEN + Cảm nhận về TENTEN</strong> + Share (chế độ public) bài viết → <strong>Nhận mã COUPON 69K</strong></li>\r\n</ul>\r\nĐặc biệt, 10 khách hàng có số lượt like bài viết khuyến mại trên tường của mình nhiều nhất sẽ <strong>nhận được coupon mua tên miền với giá 9K</strong>. Kết quả sẽ được công bố trên Fanpage vào 10h ngày 02/01/2018.\r\n\r\nBên cạnh đó, tên miền quốc gia Việt Nam – <strong>.VN cũng được giảm 50% giá dịch vụ</strong> khi đăng ký mới với mã <strong>MAVN</strong>.\r\n\r\n<strong>&gt;&gt; Tới trang đăng ký ngay tại đây.</strong>\r\n\r\n<strong>Lưu ý:</strong>\r\n<ul>\r\n 	<li>Mỗi tài khoản được mua <strong>tối đa 2 tên miền</strong>.</li>\r\n 	<li>Chương trình bao gồm: <strong>300 tên miền .COM + .NET</strong></li>\r\n 	<li>Coupon 9K chỉ được trao cho những post có <strong>từ 10 like trở lên</strong>.</li>\r\n 	<li>Mỗi coupon 9K được mua 1 tên miền .COM hoặc .NET</li>\r\n 	<li>Ưu đãi chỉ dùng cho năm đầu, gia hạn năm sau là 289k với .COM và .NET</li>\r\n</ul>\r\nRiêng với dịch vụ <strong>Kusanagi Cloud VPS</strong>, để khuyến khích khách hàng dùng thử, từ nay cho tới 18h ngày 31/12/2017, Tenten sẽ <strong>tặng 500K tiền nạp cho khách hàng lần đầu tiên đăng ký sử dụng</strong>. Mời các bạn tham khảo thêm.\r\n\r\nChúc các bạn vui vẻ!', 'Happy Day tại Tenten – Tên miền .COM/.NET chỉ từ 9k, Giảm 50% cho .VN', 'Hôm nay, chúng ta lại có thêm một ngày thứ 5 đặc biệt tại Tenten với chương trình khuyến mại HAPPY DAY – NGẤT NGÂY DEAL KHỦNG – tên miền .COM/.NET chỉ từ 9k, giảm thêm 50% cho .VN.', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2019-03-01 08:19:25', '2019-03-01 08:19:25', '', 43, 'http://khuyenmai_tenten.co/2019/03/01/43-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2019-03-01 08:26:13', '2019-03-01 08:26:13', 'Tenten cũng chính thức tham gia vào chương trình khuyến mại lớn nhất trong năm cùng các nhà cung cấp khác rồi nhé, <strong>giảm giá cực sốc cho tên miền .COM</strong>.\r\n\r\n<img class=\"size-medium wp-image-47 aligncenter\" src=\"http://khuyenmai_tenten.co/wp-content/uploads/2019/03/Tenten-khuyen-mai-khung-Black-Friday-600x400.jpg\" alt=\"\" width=\"600\" height=\"400\" />\r\n\r\nDuy nhất hôm nay, 24/11/2017, hàng loạt mã giảm giá <strong>tên miền .COM chỉ 6k, 36k, 76k, 86k, 96k</strong> sẽ lần lượt được tung ra. Nếu may mắn có thể đăng ký <strong>tên miền .COM chỉ với 6k</strong>, rẻ như cho không luôn. Số lượng cụ thể như sau:\r\n<ul>\r\n 	<li><strong>10 tên miền .COM 6K</strong></li>\r\n 	<li><strong>25 tên miền .COM 36K</strong></li>\r\n 	<li>100 tên miền .COM 76K</li>\r\n 	<li>100 tên miền .COM 86K</li>\r\n 	<li>50 tên miền .COM 96K</li>\r\n</ul>\r\nRiêng với dịch vụ Hosting, Tenten cũng áp dụng khuyến mại <strong>mua 1 tặng 1</strong> cho các gói SSD Hosting, SEO Hosting và WordPress Hosting. Bạn cũng có thể có cơ hội được <strong>hoàn tiền 100% giá trị hosting</strong> khi có số thứ tự kích hoạt là số chẵn. Cũng hên xui lắm!', 'Tenten khuyến mại khủng Black Friday – Tên miền .COM chỉ từ 6k, Hosting mua 1 tặng 1', 'Tenten cũng chính thức tham gia vào chương trình khuyến mại lớn nhất trong năm cùng các nhà cung cấp khác rồi nhé, giảm giá cực sốc cho tên miền .COM.', 'publish', 'open', 'open', '', 'tenten-khuyen-mai-khung-black-friday-ten-mien-com-chi-tu-6k-hosting-mua-1-tang-1', '', '', '2019-03-11 09:42:03', '2019-03-11 09:42:03', '', 0, 'http://khuyenmai_tenten.co/?p=46', 0, 'post', '', 0),
(47, 1, '2019-03-01 08:25:46', '2019-03-01 08:25:46', '', 'Tenten-khuyen-mai-khung-Black-Friday', '', 'inherit', 'open', 'closed', '', 'tenten-khuyen-mai-khung-black-friday', '', '', '2019-03-01 08:25:46', '2019-03-01 08:25:46', '', 46, 'http://khuyenmai_tenten.co/wp-content/uploads/2019/03/Tenten-khuyen-mai-khung-Black-Friday.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2019-03-01 08:26:13', '2019-03-01 08:26:13', 'Tenten cũng chính thức tham gia vào chương trình khuyến mại lớn nhất trong năm cùng các nhà cung cấp khác rồi nhé, <strong>giảm giá cực sốc cho tên miền .COM</strong>.\r\n\r\n<img class=\"size-medium wp-image-47 aligncenter\" src=\"http://khuyenmai_tenten.co/wp-content/uploads/2019/03/Tenten-khuyen-mai-khung-Black-Friday-600x400.jpg\" alt=\"\" width=\"600\" height=\"400\" />\r\n\r\nDuy nhất hôm nay, 24/11/2017, hàng loạt mã giảm giá <strong>tên miền .COM chỉ 6k, 36k, 76k, 86k, 96k</strong> sẽ lần lượt được tung ra. Nếu may mắn có thể đăng ký <strong>tên miền .COM chỉ với 6k</strong>, rẻ như cho không luôn. Số lượng cụ thể như sau:\r\n<ul>\r\n 	<li><strong>10 tên miền .COM 6K</strong></li>\r\n 	<li><strong>25 tên miền .COM 36K</strong></li>\r\n 	<li>100 tên miền .COM 76K</li>\r\n 	<li>100 tên miền .COM 86K</li>\r\n 	<li>50 tên miền .COM 96K</li>\r\n</ul>\r\nRiêng với dịch vụ Hosting, Tenten cũng áp dụng khuyến mại <strong>mua 1 tặng 1</strong> cho các gói SSD Hosting, SEO Hosting và WordPress Hosting. Bạn cũng có thể có cơ hội được <strong>hoàn tiền 100% giá trị hosting</strong> khi có số thứ tự kích hoạt là số chẵn. Cũng hên xui lắm!', 'Tenten khuyến mại khủng Black Friday – Tên miền .COM chỉ từ 6k, Hosting mua 1 tặng 1', 'Tenten cũng chính thức tham gia vào chương trình khuyến mại lớn nhất trong năm cùng các nhà cung cấp khác rồi nhé, giảm giá cực sốc cho tên miền .COM.', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2019-03-01 08:26:13', '2019-03-01 08:26:13', '', 46, 'http://khuyenmai_tenten.co/2019/03/01/46-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2019-03-01 08:32:00', '2019-03-01 08:32:00', 'Chào mừng năm mới 2019, StableHost tiếp tục dành tặng coupon ưu đãi giảm 70% cho toàn bộ khách hàng.\r\n\r\nCụ thể, khi đăng ký bất kỳ gói <strong>Shared Hosting</strong> hay <strong>Reseller Hosting</strong> nào và sử dụng coupon bên dưới, sẽ được <strong>giảm ngay 70%</strong>. Khách hàng cũ đang sử dụng dịch vụ hosting ở StableHost, khi <strong>nâng cấp</strong> lên gói hosting cao hơn bạn cũng sẽ được giảm ngay 70%.\r\n\r\n<img class=\"size-medium wp-image-50 aligncenter\" src=\"http://khuyenmai_tenten.co/wp-content/uploads/2019/03/Stablehost-giam-70-dip-nam-moi-600x400.jpg\" alt=\"\" width=\"600\" height=\"400\" />', 'StableHost tiếp tục ưu đãi giảm 70% mừng năm mới, áp dụng cả nâng cấp', 'Chào mừng năm mới 2019, StableHost tiếp tục dành tặng coupon ưu đãi giảm 70% cho toàn bộ khách hàng.', 'publish', 'open', 'open', '', 'stablehost-tiep-tuc-uu-dai-giam-70-mung-nam-moi-ap-dung-ca-nang-cap', '', '', '2019-03-11 09:41:50', '2019-03-11 09:41:50', '', 0, 'http://khuyenmai_tenten.co/?p=49', 0, 'post', '', 0),
(50, 1, '2019-03-01 08:31:37', '2019-03-01 08:31:37', '', 'Stablehost-giam-70-dip-nam-moi', '', 'inherit', 'open', 'closed', '', 'stablehost-giam-70-dip-nam-moi', '', '', '2019-03-01 08:31:37', '2019-03-01 08:31:37', '', 49, 'http://khuyenmai_tenten.co/wp-content/uploads/2019/03/Stablehost-giam-70-dip-nam-moi.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2019-03-01 08:32:00', '2019-03-01 08:32:00', 'Chào mừng năm mới 2019, StableHost tiếp tục dành tặng coupon ưu đãi giảm 70% cho toàn bộ khách hàng.\r\n\r\nCụ thể, khi đăng ký bất kỳ gói <strong>Shared Hosting</strong> hay <strong>Reseller Hosting</strong> nào và sử dụng coupon bên dưới, sẽ được <strong>giảm ngay 70%</strong>. Khách hàng cũ đang sử dụng dịch vụ hosting ở StableHost, khi <strong>nâng cấp</strong> lên gói hosting cao hơn bạn cũng sẽ được giảm ngay 70%.\r\n\r\n<img class=\"size-medium wp-image-50 aligncenter\" src=\"http://khuyenmai_tenten.co/wp-content/uploads/2019/03/Stablehost-giam-70-dip-nam-moi-600x400.jpg\" alt=\"\" width=\"600\" height=\"400\" />', 'StableHost tiếp tục ưu đãi giảm 70% mừng năm mới, áp dụng cả nâng cấp', 'Chào mừng năm mới 2019, StableHost tiếp tục dành tặng coupon ưu đãi giảm 70% cho toàn bộ khách hàng.', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2019-03-01 08:32:00', '2019-03-01 08:32:00', '', 49, 'http://khuyenmai_tenten.co/2019/03/01/49-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(54, 1, '2019-03-01 08:36:14', '2019-03-01 08:36:14', 'Miền Bắc hôm nay vẫn lạnh lắm, nhưng hãy cùng làm ấm lòng với thông tin siêu nóng đến từ Namecheap – <strong>giảm giá cực sốc trước kỳ nghỉ đông, tới 94%.</strong>\r\n\r\n<img class=\"size-medium wp-image-55 aligncenter\" src=\"http://khuyenmai_tenten.co/wp-content/uploads/2019/03/Namecheap-Holiday-Deals-600x400.jpg\" alt=\"\" width=\"600\" height=\"400\" />\r\n\r\nTheo đó, bắt đầu từ thứ 2 ngày 17/12/2018, hàng ngày, cứ vào đúng 12h trưa theo giờ Việt Nam, Namecheap sẽ tung ra 4 deal với 4 sản phẩm/dịch vụ được giảm giá. Các deal này sẽ có hiệu lực khuyến mại tới 11h59 ngày hôm sau.\r\n\r\nCác dịch vụ được giảm trong đợt này bao gồm cả: <strong>Tên miền, Hosting, SSL, dịch vụ EasyWP Managed WordPress, và Private Email</strong>. <strong>Mức giảm giá cũng rất ấn tượng – lên tới 94%, dự báo giá thấp nhất chỉ từ 0.99$ mà thôi.</strong>\r\n\r\nĐặc biệt, nếu như bị giới hạn số lượng đăng ký ở đợt khuyến mại Black Friday – Cyber Monday, trong dịp này, bạn sẽ có thể <strong>đăng ký không giới hạn</strong> luôn.', 'Namecheap Holiday Deals, Giảm tới 94% – Domain Hosting giá chỉ từ 0.99$', 'Miền Bắc hôm nay vẫn lạnh lắm, nhưng hãy cùng làm ấm lòng với thông tin siêu nóng đến từ Namecheap – giảm giá cực sốc trước kỳ nghỉ đông, tới 94%.', 'publish', 'open', 'open', '', 'namecheap-holiday-deals-giam-toi-94-domain-hosting-gia-chi-tu-0-99', '', '', '2019-03-11 09:41:48', '2019-03-11 09:41:48', '', 0, 'http://khuyenmai_tenten.co/?p=54', 0, 'post', '', 0),
(55, 1, '2019-03-01 08:35:55', '2019-03-01 08:35:55', '', 'Namecheap-Holiday-Deals', '', 'inherit', 'open', 'closed', '', 'namecheap-holiday-deals', '', '', '2019-03-01 08:35:55', '2019-03-01 08:35:55', '', 54, 'http://khuyenmai_tenten.co/wp-content/uploads/2019/03/Namecheap-Holiday-Deals.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2019-03-01 08:36:14', '2019-03-01 08:36:14', 'Miền Bắc hôm nay vẫn lạnh lắm, nhưng hãy cùng làm ấm lòng với thông tin siêu nóng đến từ Namecheap – <strong>giảm giá cực sốc trước kỳ nghỉ đông, tới 94%.</strong>\r\n\r\n<img class=\"size-medium wp-image-55 aligncenter\" src=\"http://khuyenmai_tenten.co/wp-content/uploads/2019/03/Namecheap-Holiday-Deals-600x400.jpg\" alt=\"\" width=\"600\" height=\"400\" />\r\n\r\nTheo đó, bắt đầu từ thứ 2 ngày 17/12/2018, hàng ngày, cứ vào đúng 12h trưa theo giờ Việt Nam, Namecheap sẽ tung ra 4 deal với 4 sản phẩm/dịch vụ được giảm giá. Các deal này sẽ có hiệu lực khuyến mại tới 11h59 ngày hôm sau.\r\n\r\nCác dịch vụ được giảm trong đợt này bao gồm cả: <strong>Tên miền, Hosting, SSL, dịch vụ EasyWP Managed WordPress, và Private Email</strong>. <strong>Mức giảm giá cũng rất ấn tượng – lên tới 94%, dự báo giá thấp nhất chỉ từ 0.99$ mà thôi.</strong>\r\n\r\nĐặc biệt, nếu như bị giới hạn số lượng đăng ký ở đợt khuyến mại Black Friday – Cyber Monday, trong dịp này, bạn sẽ có thể <strong>đăng ký không giới hạn</strong> luôn.', 'Namecheap Holiday Deals, Giảm tới 94% – Domain Hosting giá chỉ từ 0.99$', 'Miền Bắc hôm nay vẫn lạnh lắm, nhưng hãy cùng làm ấm lòng với thông tin siêu nóng đến từ Namecheap – giảm giá cực sốc trước kỳ nghỉ đông, tới 94%.', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2019-03-01 08:36:14', '2019-03-01 08:36:14', '', 54, 'http://khuyenmai_tenten.co/2019/03/01/54-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2019-03-01 08:41:27', '2019-03-01 08:41:27', 'Nghe đâu đây là đợt sale cuối cùng trong năm của HOSTVN.\r\n\r\nChương trình khuyến mại này giảm giá 50% khi đăng ký dịch vụ Hosting, Cloud VPS SSD, Email Business và chỉ diễn ra <strong>duy nhất trong ngày 12/12</strong> mà thôi.\r\n\r\n<img class=\"size-medium wp-image-58 aligncenter\" src=\"http://khuyenmai_tenten.co/wp-content/uploads/2019/03/HostVN-Sale-12-12-600x400.jpg\" alt=\"\" width=\"600\" height=\"400\" />\r\n\r\n<strong>Các dịch vụ áp dụng:</strong>\r\n<ul>\r\n 	<li>WordPress Hosting</li>\r\n 	<li>Hosting Linux (Không áp dụng với gói Lite)</li>\r\n 	<li>Hosting Windows (Không áp dụng với gói W-Lite)</li>\r\n 	<li>Cloud VPS SSD (Không áp dụng với gói Cloud – 512)</li>\r\n 	<li>Email Business (Áp dụng từ gói 2GB/20 tài khoản trở lên)</li>\r\n</ul>', 'HOSTVN sale Khủng giảm tới 50%, duy nhất Hôm nay', 'Chương trình khuyến mại này giảm giá 50% khi đăng ký dịch vụ Hosting, Cloud VPS SSD, Email Business và chỉ diễn ra duy nhất trong ngày 12/12 mà thôi.', 'publish', 'open', 'open', '', 'hostvn-sale-khung-giam-toi-50-duy-nhat-hom-nay', '', '', '2019-03-11 09:41:46', '2019-03-11 09:41:46', '', 0, 'http://khuyenmai_tenten.co/?p=57', 0, 'post', '', 0),
(58, 1, '2019-03-01 08:41:17', '2019-03-01 08:41:17', '', 'HostVN-Sale-12-12', '', 'inherit', 'open', 'closed', '', 'hostvn-sale-12-12', '', '', '2019-03-01 08:41:17', '2019-03-01 08:41:17', '', 57, 'http://khuyenmai_tenten.co/wp-content/uploads/2019/03/HostVN-Sale-12-12.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2019-03-01 08:41:27', '2019-03-01 08:41:27', 'Nghe đâu đây là đợt sale cuối cùng trong năm của HOSTVN.\r\n\r\nChương trình khuyến mại này giảm giá 50% khi đăng ký dịch vụ Hosting, Cloud VPS SSD, Email Business và chỉ diễn ra <strong>duy nhất trong ngày 12/12</strong> mà thôi.\r\n\r\n<img class=\"size-medium wp-image-58 aligncenter\" src=\"http://khuyenmai_tenten.co/wp-content/uploads/2019/03/HostVN-Sale-12-12-600x400.jpg\" alt=\"\" width=\"600\" height=\"400\" />\r\n\r\n<strong>Các dịch vụ áp dụng:</strong>\r\n<ul>\r\n 	<li>WordPress Hosting</li>\r\n 	<li>Hosting Linux (Không áp dụng với gói Lite)</li>\r\n 	<li>Hosting Windows (Không áp dụng với gói W-Lite)</li>\r\n 	<li>Cloud VPS SSD (Không áp dụng với gói Cloud – 512)</li>\r\n 	<li>Email Business (Áp dụng từ gói 2GB/20 tài khoản trở lên)</li>\r\n</ul>', 'HOSTVN sale Khủng giảm tới 50%, duy nhất Hôm nay', 'Chương trình khuyến mại này giảm giá 50% khi đăng ký dịch vụ Hosting, Cloud VPS SSD, Email Business và chỉ diễn ra duy nhất trong ngày 12/12 mà thôi.', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2019-03-01 08:41:27', '2019-03-01 08:41:27', '', 57, 'http://khuyenmai_tenten.co/2019/03/01/57-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2019-03-01 08:55:57', '2019-03-01 08:55:57', 'Tháng này, <strong>Hawk Host</strong> vẫn duy trì mã giảm giá với mức giảm lớn nhất 40% cho <strong>Shared Hosting</strong>. Bên cạnh đó, các bạn vẫn có thể sử dụng các mã giảm giá trọn đời 25% đến 30% cho các dịch vụ còn lại.\r\n\r\n<img class=\"size-medium wp-image-62 aligncenter\" src=\"http://khuyenmai_tenten.co/wp-content/uploads/2019/03/Hawk-Host-600x400.jpg\" alt=\"\" width=\"600\" height=\"400\" />\r\n\r\n<strong>Hawk Host</strong> là một trong số những nhà cung cấp hosting hiếm hoi có cả location <strong>Hong Kong và Singapore</strong>, cho tốc độ về Việt Nam cực kỳ nhanh. Đặc biệt, location Hong Kong hiếm khi bị ảnh hưởng do đứt cáp.\r\n\r\nServer ở đây sử dụng phần cứng mới nhất, ổ cứng SSD, tích hợp nhiều công nghệ tăng tốc website hiện đại như Memcached, Litespeed Server mà giá cả vừa phải. Ngoài ra, bạn có thể kích hoạt SSL miễn phí với Let’s Encrypt ngay trong cPanel, rất đơn giản.\r\n\r\nTất cả các gói hosting đều <strong>không giới hạn số lượng domain</strong>, có nghĩa bạn thích chạy bao nhiêu website cũng được. Chất lượng hosting tốt, support nhiệt tình, nhanh gọn rất đáng dùng.\r\n\r\nCứ đều đặn đầu tháng Hawk Host lại tung ra coupon mới áp dụng cho tất cả các gói Shared Hosting, Reseller Hosting, Semi-Dedicated và VPS Hosting.\r\n<ol>\r\n 	<li><strong>Shared Hosting</strong>: giảm giá 40% hóa đơn đầu tiên hoặc 30% trọn đời</li>\r\n 	<li><strong>Reseller Hosting</strong>: giảm giá 30% trọn đời</li>\r\n 	<li><strong>Semi-Dedicated</strong>: giảm giá 25% hoặc 30% trọn đời</li>\r\n 	<li><strong>VPS Hosting</strong>: giảm giá 30% trọn đời.</li>\r\n</ol>\r\nBên cạnh đó, sẽ có một số coupon thỉnh thoảng tung ra trong tháng, thường thì coupon này có giảm giá nhiều hơn, tuy nhiên Hawk Host tung ra bất chợt. Ngay khi có coupon mới, mình sẽ update lên <strong>Canh Me</strong> nên các bạn chú ý truy cập thường xuyên nhé.\r\n\r\n&nbsp;', 'Hawk Host Coupon Tháng 2 – Giảm lên tới 40% Hosting, có coupon trọn đời', 'Hawk Host là một trong số những nhà cung cấp hosting hiếm hoi có cả location Hong Kong và Singapore, cho tốc độ về Việt Nam cực kỳ nhanh. Đặc biệt, location Hong Kong hiếm khi bị ảnh hưởng do đứt cáp.', 'publish', 'open', 'open', '', 'hawk-host-coupon-thang-2-giam-len-toi-40-hosting-co-coupon-tron-doi', '', '', '2019-03-11 09:41:44', '2019-03-11 09:41:44', '', 0, 'http://khuyenmai_tenten.co/?p=61', 0, 'post', '', 0),
(62, 1, '2019-03-01 08:51:59', '2019-03-01 08:51:59', '', 'Hawk-Host', '', 'inherit', 'open', 'closed', '', 'hawk-host', '', '', '2019-03-01 08:51:59', '2019-03-01 08:51:59', '', 61, 'http://khuyenmai_tenten.co/wp-content/uploads/2019/03/Hawk-Host.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2019-03-01 08:55:57', '2019-03-01 08:55:57', 'Tháng này, <strong>Hawk Host</strong> vẫn duy trì mã giảm giá với mức giảm lớn nhất 40% cho <strong>Shared Hosting</strong>. Bên cạnh đó, các bạn vẫn có thể sử dụng các mã giảm giá trọn đời 25% đến 30% cho các dịch vụ còn lại.\r\n\r\n<img class=\"size-medium wp-image-62 aligncenter\" src=\"http://khuyenmai_tenten.co/wp-content/uploads/2019/03/Hawk-Host-600x400.jpg\" alt=\"\" width=\"600\" height=\"400\" />\r\n\r\n<strong>Hawk Host</strong> là một trong số những nhà cung cấp hosting hiếm hoi có cả location <strong>Hong Kong và Singapore</strong>, cho tốc độ về Việt Nam cực kỳ nhanh. Đặc biệt, location Hong Kong hiếm khi bị ảnh hưởng do đứt cáp.\r\n\r\nServer ở đây sử dụng phần cứng mới nhất, ổ cứng SSD, tích hợp nhiều công nghệ tăng tốc website hiện đại như Memcached, Litespeed Server mà giá cả vừa phải. Ngoài ra, bạn có thể kích hoạt SSL miễn phí với Let’s Encrypt ngay trong cPanel, rất đơn giản.\r\n\r\nTất cả các gói hosting đều <strong>không giới hạn số lượng domain</strong>, có nghĩa bạn thích chạy bao nhiêu website cũng được. Chất lượng hosting tốt, support nhiệt tình, nhanh gọn rất đáng dùng.\r\n\r\nCứ đều đặn đầu tháng Hawk Host lại tung ra coupon mới áp dụng cho tất cả các gói Shared Hosting, Reseller Hosting, Semi-Dedicated và VPS Hosting.\r\n<ol>\r\n 	<li><strong>Shared Hosting</strong>: giảm giá 40% hóa đơn đầu tiên hoặc 30% trọn đời</li>\r\n 	<li><strong>Reseller Hosting</strong>: giảm giá 30% trọn đời</li>\r\n 	<li><strong>Semi-Dedicated</strong>: giảm giá 25% hoặc 30% trọn đời</li>\r\n 	<li><strong>VPS Hosting</strong>: giảm giá 30% trọn đời.</li>\r\n</ol>\r\nBên cạnh đó, sẽ có một số coupon thỉnh thoảng tung ra trong tháng, thường thì coupon này có giảm giá nhiều hơn, tuy nhiên Hawk Host tung ra bất chợt. Ngay khi có coupon mới, mình sẽ update lên <strong>Canh Me</strong> nên các bạn chú ý truy cập thường xuyên nhé.\r\n\r\n&nbsp;', 'Hawk Host Coupon Tháng 2 – Giảm lên tới 40% Hosting, có coupon trọn đời', 'Hawk Host là một trong số những nhà cung cấp hosting hiếm hoi có cả location Hong Kong và Singapore, cho tốc độ về Việt Nam cực kỳ nhanh. Đặc biệt, location Hong Kong hiếm khi bị ảnh hưởng do đứt cáp.', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2019-03-01 08:55:57', '2019-03-01 08:55:57', '', 61, 'http://khuyenmai_tenten.co/2019/03/01/61-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2019-03-01 08:57:47', '2019-03-01 08:57:47', 'Ngày khuyến mại lớn nhất trong năm – Black Friday đã tới, iNET ưu đãi giảm tới 70% cho toàn bộ dịch vụ, bao gồm cả: Tên miền, Hosting, VPS và Email.\r\n\r\n<img class=\"size-medium wp-image-65 aligncenter\" src=\"http://khuyenmai_tenten.co/wp-content/uploads/2019/03/iNET-khuyen-mai-Black-Friday-600x400.png\" alt=\"\" width=\"600\" height=\"400\" />\r\n\r\nTrong dịp Black Friday năm nay, khi đăng ký dịch vụ Hosting, Cloud VPS hay Email tại iNET, bạn sẽ <strong>giảm ngay 70%</strong>. Giá hosting ở nhà cung cấp này sẽ chỉ bắt đầu với <strong>14,700đ/tháng</strong> mà thôi. Không cần phải sử dụng bất kỳ coupon nào, chỉ cần truy cập vào iNET, lựa chọn gọi dịch vụ bạn mong muốn, một bước tới checkout luôn là đã thấy được ưu đãi rồi.\r\n\r\nRiêng với Tên miền, duy nhất hôm nay, 23/11/2018, <strong>tên miền .COM và .NET sẽ đồng giá chỉ 109k/năm</strong> mà thôi. Đăng ký thoải mái luôn, không giới hạn số lượng. Ngoài ra, <strong>tên miền .VN cũng được giảm 50% phí dịch vụ</strong> nữa.\r\n\r\n<strong>Tới iNET và nhận ưu đãi ngay tại đây.</strong>\r\n\r\n<em>***Giá trên chưa bao gồm 10% VAT.</em>\r\n\r\nMình thấy bên iNET có thông báo sẽ giới hạn số lượng khuyến mại khủng chỉ 111 khách. Nếu không thấy được tự động giảm giá, hãy cứ thử liên hệ support xem sao nhé.', '[Black Friday] iNET giảm giá tới 70% Hosting/VPS, Tên miền .COM/.NET đồng giá 109k', 'Trong dịp Black Friday năm nay, khi đăng ký dịch vụ Hosting, Cloud VPS hay Email tại iNET, bạn sẽ giảm ngay 70%. Giá hosting ở nhà cung cấp này sẽ chỉ bắt đầu với 14,700đ/tháng mà thôi. Không cần phải sử dụng bất kỳ coupon nào, chỉ cần truy cập vào iNET, lựa chọn gọi dịch vụ bạn mong muốn, một bước tới checkout luôn là đã thấy được ưu đãi rồi.', 'publish', 'open', 'open', '', 'black-friday-inet-giam-gia-toi-70-hosting-vps-ten-mien-com-net-dong-gia-109k', '', '', '2019-03-11 09:41:30', '2019-03-11 09:41:30', '', 0, 'http://khuyenmai_tenten.co/?p=64', 0, 'post', '', 0),
(65, 1, '2019-03-01 08:57:23', '2019-03-01 08:57:23', '', 'iNET-khuyen-mai-Black-Friday', '', 'inherit', 'open', 'closed', '', 'inet-khuyen-mai-black-friday', '', '', '2019-03-01 08:57:23', '2019-03-01 08:57:23', '', 64, 'http://khuyenmai_tenten.co/wp-content/uploads/2019/03/iNET-khuyen-mai-Black-Friday.png', 0, 'attachment', 'image/png', 0),
(66, 1, '2019-03-01 08:57:47', '2019-03-01 08:57:47', 'Ngày khuyến mại lớn nhất trong năm – Black Friday đã tới, iNET ưu đãi giảm tới 70% cho toàn bộ dịch vụ, bao gồm cả: Tên miền, Hosting, VPS và Email.\r\n\r\n<img class=\"size-medium wp-image-65 aligncenter\" src=\"http://khuyenmai_tenten.co/wp-content/uploads/2019/03/iNET-khuyen-mai-Black-Friday-600x400.png\" alt=\"\" width=\"600\" height=\"400\" />\r\n\r\nTrong dịp Black Friday năm nay, khi đăng ký dịch vụ Hosting, Cloud VPS hay Email tại iNET, bạn sẽ <strong>giảm ngay 70%</strong>. Giá hosting ở nhà cung cấp này sẽ chỉ bắt đầu với <strong>14,700đ/tháng</strong> mà thôi. Không cần phải sử dụng bất kỳ coupon nào, chỉ cần truy cập vào iNET, lựa chọn gọi dịch vụ bạn mong muốn, một bước tới checkout luôn là đã thấy được ưu đãi rồi.\r\n\r\nRiêng với Tên miền, duy nhất hôm nay, 23/11/2018, <strong>tên miền .COM và .NET sẽ đồng giá chỉ 109k/năm</strong> mà thôi. Đăng ký thoải mái luôn, không giới hạn số lượng. Ngoài ra, <strong>tên miền .VN cũng được giảm 50% phí dịch vụ</strong> nữa.\r\n\r\n<strong>Tới iNET và nhận ưu đãi ngay tại đây.</strong>\r\n\r\n<em>***Giá trên chưa bao gồm 10% VAT.</em>\r\n\r\nMình thấy bên iNET có thông báo sẽ giới hạn số lượng khuyến mại khủng chỉ 111 khách. Nếu không thấy được tự động giảm giá, hãy cứ thử liên hệ support xem sao nhé.', '[Black Friday] iNET giảm giá tới 70% Hosting/VPS, Tên miền .COM/.NET đồng giá 109k', 'Trong dịp Black Friday năm nay, khi đăng ký dịch vụ Hosting, Cloud VPS hay Email tại iNET, bạn sẽ giảm ngay 70%. Giá hosting ở nhà cung cấp này sẽ chỉ bắt đầu với 14,700đ/tháng mà thôi. Không cần phải sử dụng bất kỳ coupon nào, chỉ cần truy cập vào iNET, lựa chọn gọi dịch vụ bạn mong muốn, một bước tới checkout luôn là đã thấy được ưu đãi rồi.', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2019-03-01 08:57:47', '2019-03-01 08:57:47', '', 64, 'http://khuyenmai_tenten.co/2019/03/01/64-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2019-03-01 09:11:44', '2019-03-01 09:11:44', '<strong>Vultr</strong> là nhà cung cấp dịch vụ Cloud Server nổi tiếng thế giới mà mình đang tin tưởng sử dụng cho blog Canh Me và Học VPS. Với rất nhiều chương trình khuyến mại ưu đãi, không khó để bạn bắt đầu sử dụng dịch vụ ở đây.\r\n\r\n<img class=\"size-full wp-image-70 aligncenter\" src=\"http://khuyenmai_tenten.co/wp-content/uploads/2019/03/Vultr.png\" alt=\"\" width=\"569\" height=\"346\" />\r\n\r\nMức giá ở đây khá rẻ, chất lượng VPS tốt, uptime cao, đó là lí do Vultr xuất hiện đầu tiên trong danh sách VPS nên dùng trên Canhme.com. Gói hấp dẫn nhất <strong>chỉ với 3.5$/tháng là đã có 512MB RAM</strong>, 500GB băng thông là dùng ổn rồi.\r\n\r\nHiện Vultr đang có mặt ở 15 thành phố trải dài khắp thế giới, đặc biệt có location <strong>Singapore</strong> và <strong>Tokyo, Japan</strong>cho tốc độ tải về Việt Nam rất nhanh không thua kém gì các nhà cung cấp trong nước nên các bạn có thể yên tâm sử dụng lâu dài.', 'Vultr Coupon Tháng 2 – Tặng tới 53$ FREE Credit', 'Vultr là nhà cung cấp dịch vụ Cloud Server nổi tiếng thế giới mà mình đang tin tưởng sử dụng cho blog Canh Me và Học VPS. Với rất nhiều chương trình khuyến mại ưu đãi, không khó để bạn bắt đầu sử dụng dịch vụ ở đây.', 'publish', 'open', 'open', '', 'vultr-coupon-thang-2-tang-toi-53-free-credit', '', '', '2019-03-11 09:41:28', '2019-03-11 09:41:28', '', 0, 'http://khuyenmai_tenten.co/?p=69', 0, 'post', '', 0),
(70, 1, '2019-03-01 09:10:52', '2019-03-01 09:10:52', '', 'Vultr', '', 'inherit', 'open', 'closed', '', 'vultr', '', '', '2019-03-01 09:10:52', '2019-03-01 09:10:52', '', 69, 'http://khuyenmai_tenten.co/wp-content/uploads/2019/03/Vultr.png', 0, 'attachment', 'image/png', 0),
(72, 1, '2019-03-01 09:11:44', '2019-03-01 09:11:44', '<strong>Vultr</strong> là nhà cung cấp dịch vụ Cloud Server nổi tiếng thế giới mà mình đang tin tưởng sử dụng cho blog Canh Me và Học VPS. Với rất nhiều chương trình khuyến mại ưu đãi, không khó để bạn bắt đầu sử dụng dịch vụ ở đây.\r\n\r\n<img class=\"size-full wp-image-70 aligncenter\" src=\"http://khuyenmai_tenten.co/wp-content/uploads/2019/03/Vultr.png\" alt=\"\" width=\"569\" height=\"346\" />\r\n\r\nMức giá ở đây khá rẻ, chất lượng VPS tốt, uptime cao, đó là lí do Vultr xuất hiện đầu tiên trong danh sách VPS nên dùng trên Canhme.com. Gói hấp dẫn nhất <strong>chỉ với 3.5$/tháng là đã có 512MB RAM</strong>, 500GB băng thông là dùng ổn rồi.\r\n\r\nHiện Vultr đang có mặt ở 15 thành phố trải dài khắp thế giới, đặc biệt có location <strong>Singapore</strong> và <strong>Tokyo, Japan</strong>cho tốc độ tải về Việt Nam rất nhanh không thua kém gì các nhà cung cấp trong nước nên các bạn có thể yên tâm sử dụng lâu dài.', 'Vultr Coupon Tháng 2 – Tặng tới 53$ FREE Credit', 'Vultr là nhà cung cấp dịch vụ Cloud Server nổi tiếng thế giới mà mình đang tin tưởng sử dụng cho blog Canh Me và Học VPS. Với rất nhiều chương trình khuyến mại ưu đãi, không khó để bạn bắt đầu sử dụng dịch vụ ở đây.', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2019-03-01 09:11:44', '2019-03-01 09:11:44', '', 69, 'http://khuyenmai_tenten.co/2019/03/01/69-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2019-03-01 09:16:20', '2019-03-01 09:16:20', 'Ngay từ bây giờ, khi thanh toán hóa đơn dịch vụ trên <a href=\"https://canhme.com/vultr-coupon/\" target=\"_blank\" rel=\"noopener\">Vultr</a>, bạn có thể sử dụng phương thức thanh toán WeChat Pay.\r\n\r\n<img class=\"size-medium wp-image-74 aligncenter\" src=\"http://khuyenmai_tenten.co/wp-content/uploads/2019/03/Vultr-chap-nhan-WeChat-Pay-600x400.jpg\" alt=\"\" width=\"600\" height=\"400\" />\r\n\r\nWeChat Pay là một trong số những giải pháp thanh toán online và trên di động lớn nhất thế giới, xuất thân từ Tencent. Với việc tích hợp WeChat Pay, khách hàng từ Trung Quốc sẽ thanh toán dịch vụ dễ dàng, nhanh chóng và thuận tiện hơn rất nhiều.\r\n\r\nVới việc hỗ trợ WeChat Pay, hiện tại Vultr đang có tới 10 phương thức thanh toán khác nhau, vô cùng đa dạng, bao gồm: Visa, Mastercard, American Express, Discover, JCB, Bitcoin (BTC and BCH), Alipay, UnionPay, WeChat Pay, và PayPal.\r\n\r\nNếu bạn chưa biết, ở Trung Quốc, người dân đang dần chuyển sang xu hướng không dùng tiền mặt, thay vào đó là sử dụng ví điện tử WeChat Pay, Alipay để quét mã QR, thanh toán từ mớ rau, thịt cá, hoa quả… Đi ra ngoài chỉ cần chiếc smartphone bên cạnh, thậm chí không cần phải mang theo cả ví nữa.\r\n\r\nThị trường thanh toán di động ở Việt Nam hiện cũng đang phát triển mạnh, tuy nhiên chắc cũng phải nhiều nhiều năm nữa chúng ta mới có thể tận dụng được sức mạnh thực sự mà ví điện tử có thể mang lại.\r\n\r\nNếu chưa từng dùng VPS ở Vultr, bạn hãy tranh thủ trải nghiệm ngay với chương trình <a href=\"https://canhme.com/vultr-coupon/tang-mien-phi-account-credit/\" target=\"_blank\" rel=\"noopener\">tặng tới 103$ Free Credit</a> vô cùng hấp dẫn. <strong>Canh Me</strong> hiện đang chạy trên Vultr đấy, tốc độ quá nhanh phải không?', 'Vultr đã hỗ trợ WeChat Pay', '', 'publish', 'open', 'open', '', 'vultr-da-ho-tro-wechat-pay', '', '', '2019-03-11 09:41:26', '2019-03-11 09:41:26', '', 0, 'http://khuyenmai_tenten.co/?p=73', 0, 'post', '', 0),
(74, 1, '2019-03-01 09:16:10', '2019-03-01 09:16:10', '', 'Vultr-chap-nhan-WeChat-Pay', '', 'inherit', 'open', 'closed', '', 'vultr-chap-nhan-wechat-pay', '', '', '2019-03-01 09:16:10', '2019-03-01 09:16:10', '', 73, 'http://khuyenmai_tenten.co/wp-content/uploads/2019/03/Vultr-chap-nhan-WeChat-Pay.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2019-03-01 09:16:20', '2019-03-01 09:16:20', 'Ngay từ bây giờ, khi thanh toán hóa đơn dịch vụ trên <a href=\"https://canhme.com/vultr-coupon/\" target=\"_blank\" rel=\"noopener\">Vultr</a>, bạn có thể sử dụng phương thức thanh toán WeChat Pay.\r\n\r\n<img class=\"size-medium wp-image-74 aligncenter\" src=\"http://khuyenmai_tenten.co/wp-content/uploads/2019/03/Vultr-chap-nhan-WeChat-Pay-600x400.jpg\" alt=\"\" width=\"600\" height=\"400\" />\r\n\r\nWeChat Pay là một trong số những giải pháp thanh toán online và trên di động lớn nhất thế giới, xuất thân từ Tencent. Với việc tích hợp WeChat Pay, khách hàng từ Trung Quốc sẽ thanh toán dịch vụ dễ dàng, nhanh chóng và thuận tiện hơn rất nhiều.\r\n\r\nVới việc hỗ trợ WeChat Pay, hiện tại Vultr đang có tới 10 phương thức thanh toán khác nhau, vô cùng đa dạng, bao gồm: Visa, Mastercard, American Express, Discover, JCB, Bitcoin (BTC and BCH), Alipay, UnionPay, WeChat Pay, và PayPal.\r\n\r\nNếu bạn chưa biết, ở Trung Quốc, người dân đang dần chuyển sang xu hướng không dùng tiền mặt, thay vào đó là sử dụng ví điện tử WeChat Pay, Alipay để quét mã QR, thanh toán từ mớ rau, thịt cá, hoa quả… Đi ra ngoài chỉ cần chiếc smartphone bên cạnh, thậm chí không cần phải mang theo cả ví nữa.\r\n\r\nThị trường thanh toán di động ở Việt Nam hiện cũng đang phát triển mạnh, tuy nhiên chắc cũng phải nhiều nhiều năm nữa chúng ta mới có thể tận dụng được sức mạnh thực sự mà ví điện tử có thể mang lại.\r\n\r\nNếu chưa từng dùng VPS ở Vultr, bạn hãy tranh thủ trải nghiệm ngay với chương trình <a href=\"https://canhme.com/vultr-coupon/tang-mien-phi-account-credit/\" target=\"_blank\" rel=\"noopener\">tặng tới 103$ Free Credit</a> vô cùng hấp dẫn. <strong>Canh Me</strong> hiện đang chạy trên Vultr đấy, tốc độ quá nhanh phải không?', 'Vultr đã hỗ trợ WeChat Pay', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2019-03-01 09:16:20', '2019-03-01 09:16:20', '', 73, 'http://khuyenmai_tenten.co/2019/03/01/73-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2019-03-01 09:19:29', '2019-03-01 09:19:29', 'Trong tháng 4 này, <strong>Z.com</strong> triển khai chương trình <strong>MIỄN PHÍ TRỌN ĐỜI</strong> Auto-Backup cho dịch vụ Cloud VPS. Auto-Backup giúp bảo vệ dữ liệu tuyệt đối. Không còn nỗi lo mất dữ liệu, sao lưu toàn bộ máy chủ với chi phí 0 đồng.\r\n\r\n<img class=\"size-medium wp-image-77 aligncenter\" src=\"http://khuyenmai_tenten.co/wp-content/uploads/2019/03/Z.com-mien-phi-Auto-Backup-600x315.png\" alt=\"\" width=\"600\" height=\"315\" />\r\n\r\nVPS thường <strong>không có tính năng tự động backup dữ liệu</strong> nên nếu các bạn không cẩn thận cài đặt, đến khi VPS gặp sự cố sẽ mất rất nhiều thời gian khôi phục.\r\n\r\nTrên Học VPS, mình đã có bài hướng dẫn cách cài đặt <strong>tự động backup lên Drive với Rclone</strong> và được rất nhiều bạn thao tác làm theo, bản thân mình cũng sử dụng cách này kết hợp với Rsync cho hệ thống mấy chục server đang xài. Tuy miễn phí thật đấy nhưng quá trình script hoạt động sẽ cần nhiều tài nguyên server, ảnh hưởng website hoạt động và nhiều khi dung lượng Google Drive không đủ dùng để backup.\r\n\r\nVới giải pháp backup trực tiếp từ nhà cung cấp thì khác, toàn bộ thao tác được thực hiện từ hệ thống cloud, hoàn toàn không ảnh hưởng gì đến hoạt động của VPS cả và thường bạn sẽ được backup nguyên ổ đĩa, bao gồm cả dung lượng bổ sung.\r\n\r\nTiện nhất là khi cần khôi phục, bạn có thể sử dụng luôn bản backup này để tạo server mới mà không mất công cài đặt lại từ đầu.\r\n\r\nTrong tháng 4 này, Z.com có chương trình ưu đãi <strong>miễn phí trọn đời tính năng Auto Backup</strong> cho các gói Cloud VPS từ Plan 2 trở lên khi đăng ký mới. Nhớ kích hoạt tính năng <strong>Tự động sao lưu</strong> là bạn có thể yên tâm sử dụng Cloud Server rồi.', 'Z.com miễn phí trọn đời VPS Auto-Backup', 'Trong tháng 4 này, Z.com triển khai chương trình MIỄN PHÍ TRỌN ĐỜI Auto-Backup cho dịch vụ Cloud VPS. Auto-Backup giúp bảo vệ dữ liệu tuyệt đối. Không còn nỗi lo mất dữ liệu, sao lưu toàn bộ máy chủ với chi phí 0 đồng.', 'publish', 'open', 'open', '', 'z-com-mien-phi-tron-doi-vps-auto-backup', '', '', '2019-03-11 09:41:25', '2019-03-11 09:41:25', '', 0, 'http://khuyenmai_tenten.co/?p=76', 0, 'post', '', 0),
(77, 1, '2019-03-01 09:19:10', '2019-03-01 09:19:10', '', 'Z.com-mien-phi-Auto-Backup', '', 'inherit', 'open', 'closed', '', 'z-com-mien-phi-auto-backup', '', '', '2019-03-01 09:19:10', '2019-03-01 09:19:10', '', 76, 'http://khuyenmai_tenten.co/wp-content/uploads/2019/03/Z.com-mien-phi-Auto-Backup.png', 0, 'attachment', 'image/png', 0),
(78, 1, '2019-03-01 09:19:29', '2019-03-01 09:19:29', 'Trong tháng 4 này, <strong>Z.com</strong> triển khai chương trình <strong>MIỄN PHÍ TRỌN ĐỜI</strong> Auto-Backup cho dịch vụ Cloud VPS. Auto-Backup giúp bảo vệ dữ liệu tuyệt đối. Không còn nỗi lo mất dữ liệu, sao lưu toàn bộ máy chủ với chi phí 0 đồng.\r\n\r\n<img class=\"size-medium wp-image-77 aligncenter\" src=\"http://khuyenmai_tenten.co/wp-content/uploads/2019/03/Z.com-mien-phi-Auto-Backup-600x315.png\" alt=\"\" width=\"600\" height=\"315\" />\r\n\r\nVPS thường <strong>không có tính năng tự động backup dữ liệu</strong> nên nếu các bạn không cẩn thận cài đặt, đến khi VPS gặp sự cố sẽ mất rất nhiều thời gian khôi phục.\r\n\r\nTrên Học VPS, mình đã có bài hướng dẫn cách cài đặt <strong>tự động backup lên Drive với Rclone</strong> và được rất nhiều bạn thao tác làm theo, bản thân mình cũng sử dụng cách này kết hợp với Rsync cho hệ thống mấy chục server đang xài. Tuy miễn phí thật đấy nhưng quá trình script hoạt động sẽ cần nhiều tài nguyên server, ảnh hưởng website hoạt động và nhiều khi dung lượng Google Drive không đủ dùng để backup.\r\n\r\nVới giải pháp backup trực tiếp từ nhà cung cấp thì khác, toàn bộ thao tác được thực hiện từ hệ thống cloud, hoàn toàn không ảnh hưởng gì đến hoạt động của VPS cả và thường bạn sẽ được backup nguyên ổ đĩa, bao gồm cả dung lượng bổ sung.\r\n\r\nTiện nhất là khi cần khôi phục, bạn có thể sử dụng luôn bản backup này để tạo server mới mà không mất công cài đặt lại từ đầu.\r\n\r\nTrong tháng 4 này, Z.com có chương trình ưu đãi <strong>miễn phí trọn đời tính năng Auto Backup</strong> cho các gói Cloud VPS từ Plan 2 trở lên khi đăng ký mới. Nhớ kích hoạt tính năng <strong>Tự động sao lưu</strong> là bạn có thể yên tâm sử dụng Cloud Server rồi.', 'Z.com miễn phí trọn đời VPS Auto-Backup', 'Trong tháng 4 này, Z.com triển khai chương trình MIỄN PHÍ TRỌN ĐỜI Auto-Backup cho dịch vụ Cloud VPS. Auto-Backup giúp bảo vệ dữ liệu tuyệt đối. Không còn nỗi lo mất dữ liệu, sao lưu toàn bộ máy chủ với chi phí 0 đồng.', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2019-03-01 09:19:29', '2019-03-01 09:19:29', '', 76, 'http://khuyenmai_tenten.co/2019/03/01/76-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2019-03-01 09:23:34', '2019-03-01 09:23:34', 'Nếu bạn sử dụng dịch vụ Cloud tại <a href=\"https://canhme.com/z-com/\" target=\"_blank\" rel=\"noopener\">Z.com</a>, đừng quên sử dụng phương thức nạp tiền trả trước <strong>Zcard</strong> để tiết kiệm thêm tới 10%.\r\n\r\n<img class=\"size-medium wp-image-80 aligncenter\" src=\"http://khuyenmai_tenten.co/wp-content/uploads/2019/03/Zcard-banner-600x320.png\" alt=\"\" width=\"600\" height=\"320\" />\r\n\r\n<strong>Zcard</strong> là thẻ trả trước các dịch vụ Cloud VPS tại Z.com. Với Zcard bạn có thể thanh toán dịch vụ Cloud VPS cũng như tất cả các dịch vụ bổ sung như: Auto Backup, Object Storage, Image Storage,… một cách vô cùng dễ dàng và tiện lợi. Chỉ cần mua card, nhập mã nạp tiền vào tài khoản là bạn có thể sử dụng để thanh toán dịch vụ Cloud VPS ngay lập tức.\r\n\r\nTùy từng mệnh giá khác nhau mà Z.com tặng thêm tương ứng khi nạp tiền, trong đó cao nhất là thẻ <strong>1.000.000đ được tặng thêm 10%</strong>, 3 loại thẻ còn lại chỉ được tặng thêm 5% mà thôi.\r\n\r\nDịch vụ Cloud VPS của Z.com dạo gần đây được rất nhiều người quan tâm sử dụng do mức giá rẻ, cấu hình ngon, network ổn định lại còn tính tiền theo giờ chứ không phải theo tháng hay theo năm như những nhà cung cấp khác. Bản thân mình cũng đang sử dụng VPS ở đây cho những dự án bắt buộc phải sử dụng hệ thống trong nước.', 'Nạp tiền trả trước tại Z.com với Zcard, tiết kiệm tới 10%', 'Nếu bạn sử dụng dịch vụ Cloud tại Z.com, đừng quên sử dụng phương thức nạp tiền trả trước Zcard để tiết kiệm thêm tới 10%.', 'publish', 'open', 'open', '', 'nap-tien-tra-truoc-tai-z-com-voi-zcard-tiet-kiem-toi-10', '', '', '2019-03-11 09:41:09', '2019-03-11 09:41:09', '', 0, 'http://khuyenmai_tenten.co/?p=79', 0, 'post', '', 0),
(80, 1, '2019-03-01 09:23:21', '2019-03-01 09:23:21', '', 'Zcard-banner', '', 'inherit', 'open', 'closed', '', 'zcard-banner', '', '', '2019-03-01 09:23:21', '2019-03-01 09:23:21', '', 79, 'http://khuyenmai_tenten.co/wp-content/uploads/2019/03/Zcard-banner.png', 0, 'attachment', 'image/png', 0),
(81, 1, '2019-03-01 09:23:34', '2019-03-01 09:23:34', 'Nếu bạn sử dụng dịch vụ Cloud tại <a href=\"https://canhme.com/z-com/\" target=\"_blank\" rel=\"noopener\">Z.com</a>, đừng quên sử dụng phương thức nạp tiền trả trước <strong>Zcard</strong> để tiết kiệm thêm tới 10%.\r\n\r\n<img class=\"size-medium wp-image-80 aligncenter\" src=\"http://khuyenmai_tenten.co/wp-content/uploads/2019/03/Zcard-banner-600x320.png\" alt=\"\" width=\"600\" height=\"320\" />\r\n\r\n<strong>Zcard</strong> là thẻ trả trước các dịch vụ Cloud VPS tại Z.com. Với Zcard bạn có thể thanh toán dịch vụ Cloud VPS cũng như tất cả các dịch vụ bổ sung như: Auto Backup, Object Storage, Image Storage,… một cách vô cùng dễ dàng và tiện lợi. Chỉ cần mua card, nhập mã nạp tiền vào tài khoản là bạn có thể sử dụng để thanh toán dịch vụ Cloud VPS ngay lập tức.\r\n\r\nTùy từng mệnh giá khác nhau mà Z.com tặng thêm tương ứng khi nạp tiền, trong đó cao nhất là thẻ <strong>1.000.000đ được tặng thêm 10%</strong>, 3 loại thẻ còn lại chỉ được tặng thêm 5% mà thôi.\r\n\r\nDịch vụ Cloud VPS của Z.com dạo gần đây được rất nhiều người quan tâm sử dụng do mức giá rẻ, cấu hình ngon, network ổn định lại còn tính tiền theo giờ chứ không phải theo tháng hay theo năm như những nhà cung cấp khác. Bản thân mình cũng đang sử dụng VPS ở đây cho những dự án bắt buộc phải sử dụng hệ thống trong nước.', 'Nạp tiền trả trước tại Z.com với Zcard, tiết kiệm tới 10%', 'Nếu bạn sử dụng dịch vụ Cloud tại Z.com, đừng quên sử dụng phương thức nạp tiền trả trước Zcard để tiết kiệm thêm tới 10%.', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2019-03-01 09:23:34', '2019-03-01 09:23:34', '', 79, 'http://khuyenmai_tenten.co/2019/03/01/79-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2019-03-01 09:26:19', '2019-03-01 09:26:19', 'Đầu xuân năm mới, <a href=\"https://canhme.com/z-com/\" target=\"_blank\" rel=\"noopener\">Z.com</a> đã có ngay chương trình khuyến mại khủng dành cho tên miền .SHOP, <strong>giảm tới 99%</strong> luôn.\r\n\r\nBắt đầu từ 9h sáng hôm nay, 26/2/2018, tên miền .SHOP tại Z.com có giá chỉ 9k/năm. Cộng thêm 10% VAT, giá phải thanh toán cũng chỉ là <strong>9.9k cho một tên miền</strong> mà thôi. Hiện tại, đây là <strong>mức giá rẻ nhất trên thị trường</strong>đối với phần mở rộng này.\r\n\r\n<img class=\"size-medium wp-image-83 aligncenter\" src=\"http://khuyenmai_tenten.co/wp-content/uploads/2019/03/Z.com-giam-gia-ten-mien-.SHOP-9k-600x400.png\" alt=\"\" width=\"600\" height=\"400\" />\r\n\r\nĐặc biệt, có thể đăng ký <strong>không giới hạn số lượng và được miễn phí ẩn thông tin tên miền</strong> nữa.\r\n\r\n<strong>&gt;&gt; Tới trang đăng ký ngay tại đây.</strong>\r\n\r\nMình không rõ khi nào thì chương trình khuyến mại sẽ kết thúc nên nếu cần thì các bạn nên đăng ký càng sớm càng tốt nha, chỉ 10k mà đã có ngay 1 domain chuyên nghiệp cho shop bán hàng online rồi.\r\n\r\nTuy nhiên, giá ưu đãi chỉ áp dụng cho năm đầu, gia hạn sẽ là <strong>890k/năm</strong> – rất cao nên nếu muốn mua nhiều để đầu cơ thì cũng cần phải cân nhắc kỹ đó.\r\n\r\nChúc các bạn một tuần làm việc hiệu quả!', 'Giảm giá sốc đầu năm – Tên miền .SHOP chỉ 9k tại Z.com', 'Đầu xuân năm mới, Z.com đã có ngay chương trình khuyến mại khủng dành cho tên miền .SHOP, giảm tới 99% luôn.', 'publish', 'open', 'open', '', 'giam-gia-soc-dau-nam-ten-mien-shop-chi-9k-tai-z-com', '', '', '2019-03-11 09:41:07', '2019-03-11 09:41:07', '', 0, 'http://khuyenmai_tenten.co/?p=82', 0, 'post', '', 0),
(83, 1, '2019-03-01 09:26:01', '2019-03-01 09:26:01', '', 'Z.com-giam-gia-ten-mien-.SHOP-9k', '', 'inherit', 'open', 'closed', '', 'z-com-giam-gia-ten-mien-shop-9k', '', '', '2019-03-01 09:26:01', '2019-03-01 09:26:01', '', 82, 'http://khuyenmai_tenten.co/wp-content/uploads/2019/03/Z.com-giam-gia-ten-mien-.SHOP-9k.png', 0, 'attachment', 'image/png', 0),
(84, 1, '2019-03-01 09:26:19', '2019-03-01 09:26:19', 'Đầu xuân năm mới, <a href=\"https://canhme.com/z-com/\" target=\"_blank\" rel=\"noopener\">Z.com</a> đã có ngay chương trình khuyến mại khủng dành cho tên miền .SHOP, <strong>giảm tới 99%</strong> luôn.\r\n\r\nBắt đầu từ 9h sáng hôm nay, 26/2/2018, tên miền .SHOP tại Z.com có giá chỉ 9k/năm. Cộng thêm 10% VAT, giá phải thanh toán cũng chỉ là <strong>9.9k cho một tên miền</strong> mà thôi. Hiện tại, đây là <strong>mức giá rẻ nhất trên thị trường</strong>đối với phần mở rộng này.\r\n\r\n<img class=\"size-medium wp-image-83 aligncenter\" src=\"http://khuyenmai_tenten.co/wp-content/uploads/2019/03/Z.com-giam-gia-ten-mien-.SHOP-9k-600x400.png\" alt=\"\" width=\"600\" height=\"400\" />\r\n\r\nĐặc biệt, có thể đăng ký <strong>không giới hạn số lượng và được miễn phí ẩn thông tin tên miền</strong> nữa.\r\n\r\n<strong>&gt;&gt; Tới trang đăng ký ngay tại đây.</strong>\r\n\r\nMình không rõ khi nào thì chương trình khuyến mại sẽ kết thúc nên nếu cần thì các bạn nên đăng ký càng sớm càng tốt nha, chỉ 10k mà đã có ngay 1 domain chuyên nghiệp cho shop bán hàng online rồi.\r\n\r\nTuy nhiên, giá ưu đãi chỉ áp dụng cho năm đầu, gia hạn sẽ là <strong>890k/năm</strong> – rất cao nên nếu muốn mua nhiều để đầu cơ thì cũng cần phải cân nhắc kỹ đó.\r\n\r\nChúc các bạn một tuần làm việc hiệu quả!', 'Giảm giá sốc đầu năm – Tên miền .SHOP chỉ 9k tại Z.com', 'Đầu xuân năm mới, Z.com đã có ngay chương trình khuyến mại khủng dành cho tên miền .SHOP, giảm tới 99% luôn.', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2019-03-01 09:26:19', '2019-03-01 09:26:19', '', 82, 'http://khuyenmai_tenten.co/2019/03/01/82-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2019-03-01 09:34:37', '2019-03-01 09:34:37', 'Lại thêm khuyến mại từ Z.com dành riêng cho khách hàng đăng ký mới dịch vụ <strong>Cloud VPS</strong> tháng này, tặng ngay 200k vào tài khoản.\r\n\r\n<img class=\"size-medium wp-image-86 aligncenter\" src=\"http://khuyenmai_tenten.co/wp-content/uploads/2019/03/Z.com-tang-200k-cho-tai-khoan-moi-dung-Cloud-VPS-600x400.jpg\" alt=\"\" width=\"600\" height=\"400\" />\r\n\r\nTheo đó, ngay sau khi điền đầy đủ thông tin đăng ký, <strong>một voucher trị giá 200k sẽ được tự động cộng vào tài khoản của bạn</strong>. Chỉ cần nạp thêm 100k vào tài khoản để kích hoạt là có thể sử dụng dịch vụ Cloud VPS tại Z.com rồi. Nạp 1 mà được x3 luôn nhá.', 'Nhận ngay 200k khi đăng ký dùng dịch vụ Cloud VPS tại Z.com', 'Lại thêm khuyến mại từ Z.com dành riêng cho khách hàng đăng ký mới dịch vụ Cloud VPS tháng này, tặng ngay 200k vào tài khoản.', 'publish', 'open', 'open', '', 'nhan-ngay-200k-khi-dang-ky-dung-dich-vu-cloud-vps-tai-z-com', '', '', '2019-03-11 09:41:06', '2019-03-11 09:41:06', '', 0, 'http://khuyenmai_tenten.co/?p=85', 0, 'post', '', 0),
(86, 1, '2019-03-01 09:34:21', '2019-03-01 09:34:21', '', 'Z.com-tang-200k-cho-tai-khoan-moi-dung-Cloud-VPS', '', 'inherit', 'open', 'closed', '', 'z-com-tang-200k-cho-tai-khoan-moi-dung-cloud-vps', '', '', '2019-03-01 09:34:21', '2019-03-01 09:34:21', '', 85, 'http://khuyenmai_tenten.co/wp-content/uploads/2019/03/Z.com-tang-200k-cho-tai-khoan-moi-dung-Cloud-VPS.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2019-03-01 09:34:37', '2019-03-01 09:34:37', 'Lại thêm khuyến mại từ Z.com dành riêng cho khách hàng đăng ký mới dịch vụ <strong>Cloud VPS</strong> tháng này, tặng ngay 200k vào tài khoản.\r\n\r\n<img class=\"size-medium wp-image-86 aligncenter\" src=\"http://khuyenmai_tenten.co/wp-content/uploads/2019/03/Z.com-tang-200k-cho-tai-khoan-moi-dung-Cloud-VPS-600x400.jpg\" alt=\"\" width=\"600\" height=\"400\" />\r\n\r\nTheo đó, ngay sau khi điền đầy đủ thông tin đăng ký, <strong>một voucher trị giá 200k sẽ được tự động cộng vào tài khoản của bạn</strong>. Chỉ cần nạp thêm 100k vào tài khoản để kích hoạt là có thể sử dụng dịch vụ Cloud VPS tại Z.com rồi. Nạp 1 mà được x3 luôn nhá.', 'Nhận ngay 200k khi đăng ký dùng dịch vụ Cloud VPS tại Z.com', 'Lại thêm khuyến mại từ Z.com dành riêng cho khách hàng đăng ký mới dịch vụ Cloud VPS tháng này, tặng ngay 200k vào tài khoản.', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2019-03-01 09:34:37', '2019-03-01 09:34:37', '', 85, 'http://khuyenmai_tenten.co/2019/03/01/85-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2019-03-07 02:15:11', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-03-07 02:15:11', '0000-00-00 00:00:00', '', 0, 'http://khuyenmai_tenten.co/?p=89', 0, 'post', '', 0),
(90, 1, '2019-03-07 03:46:06', '2019-03-07 03:46:06', '<label> Your Name (required)\r\r\n    [text* your-name] </label>\r\r\n\r\r\n<label> Your Email (required)\r\r\n    [email* your-email] </label>\r\r\n\r\r\n<label> Subject\r\r\n    [text your-subject] </label>\r\r\n\r\r\n<label> Your Message\r\r\n    [textarea your-message] </label>\r\r\n\r\r\n[submit \"Send\"]\nKhuyến mãi tenten \"[your-subject]\"\n[your-name] <wordpress@khuyenmai_tenten.co>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Khuyến mãi tenten (http://khuyenmai_tenten.co)\nmocslop789@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nKhuyến mãi tenten \"[your-subject]\"\nKhuyến mãi tenten <wordpress@khuyenmai_tenten.co>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Khuyến mãi tenten (http://khuyenmai_tenten.co)\n[your-email]\nReply-To: mocslop789@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2019-03-07 03:46:06', '2019-03-07 03:46:06', '', 0, 'http://khuyenmai_tenten.co/?post_type=wpcf7_contact_form&p=90', 0, 'wpcf7_contact_form', '', 0),
(91, 1, '2019-03-11 08:55:47', '2019-03-11 08:55:47', 'Chúc mừng đến với WordPress. Đây là bài viết đầu tiên của bạn. Hãy chỉnh sửa hay xóa bài viết này, và bắt đầu viết blog!', 'Chào tất cả mọi người!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-03-11 08:55:47', '2019-03-11 08:55:47', '', 1, 'http://khuyenmai_tenten.co/1-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2019-03-13 10:42:44', '2019-03-13 10:42:44', '', 'New Slideshow', '', 'publish', 'closed', 'closed', '', 'new-slideshow', '', '', '2019-03-13 10:42:44', '2019-03-13 10:42:44', '', 0, 'http://khuyenmai_tenten.co/?post_type=ml-slider&p=92', 0, 'ml-slider', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Chưa được phân loại', 'khong-phan-loai', 0),
(2, 'menu-primary', 'menu-primary', 0),
(3, 'Tin khuyến mãi', 'tin-khuyen-mai', 0),
(4, 'Tên miền', 'ten-mien', 0),
(5, 'Hosting', 'hosting', 0),
(6, 'Email Server', 'email-server', 0),
(7, '92', '92', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(12, 2, 0),
(13, 2, 0),
(14, 2, 0),
(15, 2, 0),
(16, 3, 0),
(16, 5, 0),
(21, 3, 0),
(21, 4, 0),
(33, 3, 0),
(33, 4, 0),
(37, 3, 0),
(37, 4, 0),
(40, 3, 0),
(40, 4, 0),
(43, 3, 0),
(43, 4, 0),
(46, 3, 0),
(46, 4, 0),
(49, 3, 0),
(49, 5, 0),
(54, 3, 0),
(54, 5, 0),
(57, 3, 0),
(57, 5, 0),
(61, 3, 0),
(61, 5, 0),
(64, 3, 0),
(64, 5, 0),
(69, 6, 0),
(73, 6, 0),
(76, 6, 0),
(79, 6, 0),
(82, 6, 0),
(85, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'category', '', 0, 12),
(4, 4, 'category', '', 0, 6),
(5, 5, 'category', '', 0, 6),
(6, 6, 'category', '', 0, 6),
(7, 7, 'ml-slider', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"d64dfc7b0ef22b4fc22d3acac9f324c8820efc6fc86d10ad62c0706a7533b04a\";a:4:{s:10:\"expiration\";i:1552646347;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36\";s:5:\"login\";i:1552473547;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '89'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(20, 1, 'wp_user-settings-time', '1551955486'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(23, 1, 'nav_menu_recently_edited', '2'),
(24, 1, 'closedpostboxes_post', 'a:0:{}'),
(25, 1, 'metaboxhidden_post', 'a:8:{i:0;s:16:\"so-panels-panels\";i:1;s:13:\"trackbacksdiv\";i:2;s:10:\"postcustom\";i:3;s:16:\"commentstatusdiv\";i:4;s:11:\"commentsdiv\";i:5;s:7:\"slugdiv\";i:6;s:9:\"authordiv\";i:7;s:16:\"heateor_sss_meta\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B5nVIMN5iwDspVCWl/u1ceHEodYH7e.', 'admin', 'mocslop789@gmail.com', '', '2019-02-27 04:24:25', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=338;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
