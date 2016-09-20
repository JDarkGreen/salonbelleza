# WordPress MySQL database migration
#
# Generated: Tuesday 20. September 2016 22:11 UTC
# Hostname: localhost
# Database: `salonbelleza`
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2016-09-13 15:17:53', '2016-09-13 15:17:53', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=379 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/salonbelleza', 'yes'),
(2, 'home', 'http://localhost/salonbelleza', 'yes'),
(3, 'blogname', 'Central Glam', 'yes'),
(4, 'blogdescription', 'Otro sitio de WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'jgomez.4net@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:258:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:14:"slider-home/?$";s:31:"index.php?post_type=slider-home";s:44:"slider-home/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=slider-home&feed=$matches[1]";s:39:"slider-home/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=slider-home&feed=$matches[1]";s:31:"slider-home/page/([0-9]{1,})/?$";s:49:"index.php?post_type=slider-home&paged=$matches[1]";s:17:"theme-services/?$";s:34:"index.php?post_type=theme-services";s:47:"theme-services/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?post_type=theme-services&feed=$matches[1]";s:42:"theme-services/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?post_type=theme-services&feed=$matches[1]";s:34:"theme-services/page/([0-9]{1,})/?$";s:52:"index.php?post_type=theme-services&paged=$matches[1]";s:14:"theme-staff/?$";s:31:"index.php?post_type=theme-staff";s:44:"theme-staff/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=theme-staff&feed=$matches[1]";s:39:"theme-staff/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=theme-staff&feed=$matches[1]";s:31:"theme-staff/page/([0-9]{1,})/?$";s:49:"index.php?post_type=theme-staff&paged=$matches[1]";s:18:"theme-testimony/?$";s:35:"index.php?post_type=theme-testimony";s:48:"theme-testimony/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?post_type=theme-testimony&feed=$matches[1]";s:43:"theme-testimony/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?post_type=theme-testimony&feed=$matches[1]";s:35:"theme-testimony/page/([0-9]{1,})/?$";s:53:"index.php?post_type=theme-testimony&paged=$matches[1]";s:15:"theme-images/?$";s:32:"index.php?post_type=theme-images";s:45:"theme-images/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=theme-images&feed=$matches[1]";s:40:"theme-images/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=theme-images&feed=$matches[1]";s:32:"theme-images/page/([0-9]{1,})/?$";s:50:"index.php?post_type=theme-images&paged=$matches[1]";s:15:"theme-videos/?$";s:32:"index.php?post_type=theme-videos";s:45:"theme-videos/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=theme-videos&feed=$matches[1]";s:40:"theme-videos/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=theme-videos&feed=$matches[1]";s:32:"theme-videos/page/([0-9]{1,})/?$";s:50:"index.php?post_type=theme-videos&paged=$matches[1]";s:19:"theme-promotions/?$";s:36:"index.php?post_type=theme-promotions";s:49:"theme-promotions/feed/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?post_type=theme-promotions&feed=$matches[1]";s:44:"theme-promotions/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?post_type=theme-promotions&feed=$matches[1]";s:36:"theme-promotions/page/([0-9]{1,})/?$";s:54:"index.php?post_type=theme-promotions&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:54:"wpmf-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?wpmf-category=$matches[1]&feed=$matches[2]";s:49:"wpmf-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?wpmf-category=$matches[1]&feed=$matches[2]";s:30:"wpmf-category/([^/]+)/embed/?$";s:46:"index.php?wpmf-category=$matches[1]&embed=true";s:42:"wpmf-category/([^/]+)/page/?([0-9]{1,})/?$";s:53:"index.php?wpmf-category=$matches[1]&paged=$matches[2]";s:24:"wpmf-category/([^/]+)/?$";s:35:"index.php?wpmf-category=$matches[1]";s:56:"images-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?images_category=$matches[1]&feed=$matches[2]";s:51:"images-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?images_category=$matches[1]&feed=$matches[2]";s:32:"images-category/([^/]+)/embed/?$";s:48:"index.php?images_category=$matches[1]&embed=true";s:44:"images-category/([^/]+)/page/?([0-9]{1,})/?$";s:55:"index.php?images_category=$matches[1]&paged=$matches[2]";s:26:"images-category/([^/]+)/?$";s:37:"index.php?images_category=$matches[1]";s:39:"slider-home/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"slider-home/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"slider-home/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"slider-home/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"slider-home/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"slider-home/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:28:"slider-home/([^/]+)/embed/?$";s:44:"index.php?slider-home=$matches[1]&embed=true";s:32:"slider-home/([^/]+)/trackback/?$";s:38:"index.php?slider-home=$matches[1]&tb=1";s:52:"slider-home/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?slider-home=$matches[1]&feed=$matches[2]";s:47:"slider-home/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?slider-home=$matches[1]&feed=$matches[2]";s:40:"slider-home/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?slider-home=$matches[1]&paged=$matches[2]";s:47:"slider-home/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?slider-home=$matches[1]&cpage=$matches[2]";s:36:"slider-home/([^/]+)(?:/([0-9]+))?/?$";s:50:"index.php?slider-home=$matches[1]&page=$matches[2]";s:28:"slider-home/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"slider-home/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"slider-home/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"slider-home/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"slider-home/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"slider-home/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:42:"theme-services/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:52:"theme-services/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:72:"theme-services/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"theme-services/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"theme-services/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:48:"theme-services/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:31:"theme-services/([^/]+)/embed/?$";s:47:"index.php?theme-services=$matches[1]&embed=true";s:35:"theme-services/([^/]+)/trackback/?$";s:41:"index.php?theme-services=$matches[1]&tb=1";s:55:"theme-services/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?theme-services=$matches[1]&feed=$matches[2]";s:50:"theme-services/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?theme-services=$matches[1]&feed=$matches[2]";s:43:"theme-services/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?theme-services=$matches[1]&paged=$matches[2]";s:50:"theme-services/([^/]+)/comment-page-([0-9]{1,})/?$";s:54:"index.php?theme-services=$matches[1]&cpage=$matches[2]";s:39:"theme-services/([^/]+)(?:/([0-9]+))?/?$";s:53:"index.php?theme-services=$matches[1]&page=$matches[2]";s:31:"theme-services/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:"theme-services/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:"theme-services/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"theme-services/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"theme-services/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:"theme-services/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:39:"theme-staff/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"theme-staff/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"theme-staff/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"theme-staff/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"theme-staff/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"theme-staff/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:28:"theme-staff/([^/]+)/embed/?$";s:44:"index.php?theme-staff=$matches[1]&embed=true";s:32:"theme-staff/([^/]+)/trackback/?$";s:38:"index.php?theme-staff=$matches[1]&tb=1";s:52:"theme-staff/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?theme-staff=$matches[1]&feed=$matches[2]";s:47:"theme-staff/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?theme-staff=$matches[1]&feed=$matches[2]";s:40:"theme-staff/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?theme-staff=$matches[1]&paged=$matches[2]";s:47:"theme-staff/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?theme-staff=$matches[1]&cpage=$matches[2]";s:36:"theme-staff/([^/]+)(?:/([0-9]+))?/?$";s:50:"index.php?theme-staff=$matches[1]&page=$matches[2]";s:28:"theme-staff/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"theme-staff/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"theme-staff/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"theme-staff/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"theme-staff/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"theme-staff/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:43:"theme-testimony/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:53:"theme-testimony/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:73:"theme-testimony/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"theme-testimony/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"theme-testimony/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:49:"theme-testimony/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:32:"theme-testimony/([^/]+)/embed/?$";s:48:"index.php?theme-testimony=$matches[1]&embed=true";s:36:"theme-testimony/([^/]+)/trackback/?$";s:42:"index.php?theme-testimony=$matches[1]&tb=1";s:56:"theme-testimony/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?theme-testimony=$matches[1]&feed=$matches[2]";s:51:"theme-testimony/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?theme-testimony=$matches[1]&feed=$matches[2]";s:44:"theme-testimony/([^/]+)/page/?([0-9]{1,})/?$";s:55:"index.php?theme-testimony=$matches[1]&paged=$matches[2]";s:51:"theme-testimony/([^/]+)/comment-page-([0-9]{1,})/?$";s:55:"index.php?theme-testimony=$matches[1]&cpage=$matches[2]";s:40:"theme-testimony/([^/]+)(?:/([0-9]+))?/?$";s:54:"index.php?theme-testimony=$matches[1]&page=$matches[2]";s:32:"theme-testimony/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:42:"theme-testimony/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:62:"theme-testimony/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"theme-testimony/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"theme-testimony/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"theme-testimony/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:40:"theme-images/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"theme-images/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"theme-images/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"theme-images/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"theme-images/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:46:"theme-images/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:29:"theme-images/([^/]+)/embed/?$";s:45:"index.php?theme-images=$matches[1]&embed=true";s:33:"theme-images/([^/]+)/trackback/?$";s:39:"index.php?theme-images=$matches[1]&tb=1";s:53:"theme-images/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?theme-images=$matches[1]&feed=$matches[2]";s:48:"theme-images/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?theme-images=$matches[1]&feed=$matches[2]";s:41:"theme-images/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?theme-images=$matches[1]&paged=$matches[2]";s:48:"theme-images/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?theme-images=$matches[1]&cpage=$matches[2]";s:37:"theme-images/([^/]+)(?:/([0-9]+))?/?$";s:51:"index.php?theme-images=$matches[1]&page=$matches[2]";s:29:"theme-images/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"theme-images/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"theme-images/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"theme-images/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"theme-images/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"theme-images/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:40:"theme-videos/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"theme-videos/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"theme-videos/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"theme-videos/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"theme-videos/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:46:"theme-videos/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:29:"theme-videos/([^/]+)/embed/?$";s:45:"index.php?theme-videos=$matches[1]&embed=true";s:33:"theme-videos/([^/]+)/trackback/?$";s:39:"index.php?theme-videos=$matches[1]&tb=1";s:53:"theme-videos/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?theme-videos=$matches[1]&feed=$matches[2]";s:48:"theme-videos/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?theme-videos=$matches[1]&feed=$matches[2]";s:41:"theme-videos/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?theme-videos=$matches[1]&paged=$matches[2]";s:48:"theme-videos/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?theme-videos=$matches[1]&cpage=$matches[2]";s:37:"theme-videos/([^/]+)(?:/([0-9]+))?/?$";s:51:"index.php?theme-videos=$matches[1]&page=$matches[2]";s:29:"theme-videos/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"theme-videos/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"theme-videos/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"theme-videos/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"theme-videos/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"theme-videos/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:44:"theme-promotions/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:54:"theme-promotions/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:74:"theme-promotions/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"theme-promotions/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"theme-promotions/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:50:"theme-promotions/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:33:"theme-promotions/([^/]+)/embed/?$";s:49:"index.php?theme-promotions=$matches[1]&embed=true";s:37:"theme-promotions/([^/]+)/trackback/?$";s:43:"index.php?theme-promotions=$matches[1]&tb=1";s:57:"theme-promotions/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?theme-promotions=$matches[1]&feed=$matches[2]";s:52:"theme-promotions/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?theme-promotions=$matches[1]&feed=$matches[2]";s:45:"theme-promotions/([^/]+)/page/?([0-9]{1,})/?$";s:56:"index.php?theme-promotions=$matches[1]&paged=$matches[2]";s:52:"theme-promotions/([^/]+)/comment-page-([0-9]{1,})/?$";s:56:"index.php?theme-promotions=$matches[1]&cpage=$matches[2]";s:41:"theme-promotions/([^/]+)(?:/([0-9]+))?/?$";s:55:"index.php?theme-promotions=$matches[1]&page=$matches[2]";s:33:"theme-promotions/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"theme-promotions/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"theme-promotions/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"theme-promotions/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"theme-promotions/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"theme-promotions/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:33:"duplicate-post/duplicate-post.php";i:1;s:37:"error-log-viewer/error-log-viewer.php";i:2;s:35:"wp-media-folder/wp-media-folder.php";i:3;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'glam-customtheme', 'yes'),
(41, 'stylesheet', 'glam-customtheme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '37965', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:37:"error-log-viewer/error-log-viewer.php";s:18:"rrrlgvwr_uninstall";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '37965', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:10:"copy_posts";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:35:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:10:"copy_posts";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'WPLANG', 'es_PE', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:6:{i:1474427874;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1474427875;a:2:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1474429311;a:1:{s:36:"check_plugin_updates-wp-media-folder";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1474471131;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1474480756;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(120, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:21:"jgomez.4net@gmail.com";s:7:"version";s:5:"4.6.1";s:9:"timestamp";i:1473779893;}', 'no'),
(123, 'can_compress_scripts', '1', 'no'),
(146, 'current_theme', 'Salón Glam', 'yes'),
(147, 'theme_mods_glam-customtheme', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:9:"main-menu";i:2;}}', 'yes'),
(148, 'theme_switched', '', 'yes'),
(152, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1473795191;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(153, 'recently_activated', 'a:0:{}', 'yes'),
(158, 'bstwbsftwppdtplgns_options', 'a:1:{s:8:"bws_menu";a:1:{s:7:"version";a:1:{s:37:"error-log-viewer/error-log-viewer.php";s:5:"1.9.0";}}}', 'yes'),
(159, 'rrrlgvwr_options', 'a:15:{s:21:"plugin_option_version";s:5:"1.0.4";s:21:"php_error_log_visible";i:0;s:11:"lines_count";s:2:"10";s:16:"confirm_filesize";i:0;s:14:"error_log_path";s:49:"C:/xampp/htdocs/salonbelleza/wp-content/debug.log";s:17:"count_visible_log";i:1;s:14:"frequency_send";i:1;s:8:"hour_day";i:3600;s:23:"display_settings_notice";i:1;s:22:"suggest_feature_banner";i:1;s:13:"first_install";i:1473795660;s:19:"go_settings_counter";i:2;s:9:"file_path";a:1:{i:1;s:49:"C:/xampp/htdocs/salonbelleza/wp-content/debug.log";}s:10:"send_email";i:1;s:15:"0_debug_visible";i:1;}', 'yes'),
(160, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(161, 'wpmf_use_taxonomy', '1', 'yes'),
(163, 'wpmf_gallery_image_size_value', '["thumbnail","medium","large","full"]', 'yes'),
(164, 'wpmf_padding_masonry', '5', 'yes'),
(165, 'wpmf_padding_portfolio', '10', 'yes'),
(166, 'wpmf_usegellery', '1', 'yes'),
(167, 'wpmf_useorder', '1', 'yes'),
(168, 'wpmf_folder_option1', '0', 'yes'),
(169, 'wpmf_option_override', '0', 'yes'),
(170, 'wpmf_active_media', '0', 'yes'),
(171, 'wpmf_folder_option2', '1', 'yes'),
(172, 'wpmf_option_searchall', '0', 'yes'),
(173, 'wpmf_usegellery_lightbox', '1', 'yes'),
(174, 'wpmf_media_rename', '0', 'yes'),
(175, 'wpmf_patern_rename', '{sitename} - {foldername} - #', 'yes'),
(176, 'wpmf_rename_number', '0', 'yes'),
(177, 'wpmf_option_media_remove', '0', 'yes'),
(178, 'wpmf_default_dimension', '["400x300","640x480","800x600","1024x768","1600x1200"]', 'yes'),
(179, 'wpmf_selected_dimension', '["400x300","640x480","800x600","1024x768","1600x1200"]', 'yes'),
(180, 'wpmf_weight_default', '[["0-61440","kB"],["61440-122880","kB"],["122880-184320","kB"],["184320-245760","kB"],["245760-307200","kB"]]', 'yes'),
(181, 'wpmf_weight_selected', '[["0-61440","kB"],["61440-122880","kB"],["122880-184320","kB"],["184320-245760","kB"],["245760-307200","kB"]]', 'yes'),
(182, 'wpmf_color_singlefile', '{"bgdownloadlink":"#444444","hvdownloadlink":"#888888","fontdownloadlink":"#ffffff","hoverfontcolor":"#ffffff"}', 'yes'),
(183, 'wpmf_option_singlefile', '0', 'yes'),
(184, 'external_updates-wp-media-folder', 'O:8:"stdClass":3:{s:9:"lastCheck";i:1474383871;s:14:"checkedVersion";s:5:"3.3.3";s:6:"update";O:8:"stdClass":7:{s:2:"id";i:0;s:4:"slug";s:15:"wp-media-folder";s:7:"version";s:5:"3.8.2";s:8:"homepage";s:61:"https://www.joomunited.com/wordpress-products/wp-media-folder";s:12:"download_url";s:120:"https://www.joomunited.com/index.php?option=com_juupdater&task=download.download&extension=wp-media-folder&version=3.8.2";s:14:"upgrade_notice";s:29:"Upgrade to the latest version";s:8:"filename";s:35:"wp-media-folder/wp-media-folder.php";}}', 'no'),
(189, '_wpmf_import_notice_flag', 'yes', 'yes'),
(192, 'duplicate_post_copyexcerpt', '1', 'yes'),
(193, 'duplicate_post_copyattachments', '0', 'yes'),
(194, 'duplicate_post_copychildren', '0', 'yes'),
(195, 'duplicate_post_copystatus', '0', 'yes'),
(196, 'duplicate_post_taxonomies_blacklist', 'a:0:{}', 'yes'),
(197, 'duplicate_post_show_row', '1', 'yes'),
(198, 'duplicate_post_show_adminbar', '1', 'yes'),
(199, 'duplicate_post_show_submitbox', '1', 'yes'),
(200, 'duplicate_post_version', '2.6', 'yes'),
(289, 'theme_settings', 'a:16:{s:17:"theme_footer_text";s:154:"Hacemos nuestro trabajo con un pensamiento de nuestros clientes, por lo tanto, nuestro personal  trabaja duro para ofrecerle el mejor tratamiento y apoyo.";s:18:"theme_phone_text_1";s:8:"800-2345";s:18:"theme_phone_text_2";s:0:"";s:16:"theme_cel_text_1";s:0:"";s:16:"theme_cel_text_2";s:0:"";s:16:"theme_email_text";s:20:"info@centralglam.com";s:18:"theme_address_text";s:41:"Av. Arenales 254, San Isidro\nLima - Perú";s:19:"theme_atention_text";s:22:"8 am a 8pm | Mar - Dom";s:20:"theme_social_fb_text";s:54:"https://www.facebook.com/Central-Glam-317111088459508/";s:25:"theme_social_twitter_text";s:28:"https://twitter.com/?lang=es";s:25:"theme_social_youtube_text";s:19:"https://youtube.com";s:27:"theme_social_instagram_text";s:21:"https://instagram.com";s:15:"theme_lat_coord";s:10:"-33.446029";s:16:"theme_long_coord";s:10:"-70.724148";s:15:"theme_zoom_mapa";s:2:"16";s:21:"theme_text_markup_map";s:0:"";}', 'yes'),
(293, 'Hacemos nuestro trabajo con un pensamiento de nuestros clientes, por lo tanto, nuestro personal trabaja duro para ofrecerle el mejor tratamiento y apoyo.', '', 'yes'),
(294, 'asdasdasdadasdasd', '', 'yes'),
(295, 'theme_footer_text', 'asdasdasdasdasdasd', 'yes'),
(336, 'category_children', 'a:0:{}', 'yes'),
(371, 'images_category_children', 'a:0:{}', 'yes'),
(375, 'wpmf-category_children', 'a:0:{}', 'yes') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=285 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 2, '_wp_trash_meta_status', 'publish'),
(3, 2, '_wp_trash_meta_time', '1473789552'),
(4, 2, '_wp_desired_post_slug', 'pagina-de-ejemplo'),
(5, 5, '_edit_last', '1'),
(6, 5, '_edit_lock', '1473789451:1'),
(7, 7, '_edit_last', '1'),
(8, 7, '_edit_lock', '1474304291:1'),
(9, 9, '_edit_last', '1'),
(10, 9, '_edit_lock', '1474307626:1'),
(11, 11, '_edit_last', '1'),
(12, 11, '_edit_lock', '1473789483:1'),
(13, 13, '_edit_last', '1'),
(14, 13, '_edit_lock', '1474325755:1'),
(15, 15, '_edit_last', '1'),
(16, 15, '_edit_lock', '1474392434:1'),
(17, 17, '_edit_last', '1'),
(18, 17, '_edit_lock', '1474398212:1'),
(19, 19, '_menu_item_type', 'custom'),
(20, 19, '_menu_item_menu_item_parent', '0'),
(21, 19, '_menu_item_object_id', '19'),
(22, 19, '_menu_item_object', 'custom'),
(23, 19, '_menu_item_target', ''),
(24, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(25, 19, '_menu_item_xfn', ''),
(26, 19, '_menu_item_url', 'http://localhost/salonbelleza/'),
(27, 19, '_menu_item_orphaned', '1473799021'),
(28, 20, '_menu_item_type', 'post_type'),
(29, 20, '_menu_item_menu_item_parent', '0'),
(30, 20, '_menu_item_object_id', '11'),
(31, 20, '_menu_item_object', 'page'),
(32, 20, '_menu_item_target', ''),
(33, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(34, 20, '_menu_item_xfn', ''),
(35, 20, '_menu_item_url', ''),
(37, 21, '_menu_item_type', 'post_type'),
(38, 21, '_menu_item_menu_item_parent', '0'),
(39, 21, '_menu_item_object_id', '7'),
(40, 21, '_menu_item_object', 'page'),
(41, 21, '_menu_item_target', ''),
(42, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(43, 21, '_menu_item_xfn', ''),
(44, 21, '_menu_item_url', ''),
(46, 22, '_menu_item_type', 'post_type'),
(47, 22, '_menu_item_menu_item_parent', '0'),
(48, 22, '_menu_item_object_id', '17'),
(49, 22, '_menu_item_object', 'page'),
(50, 22, '_menu_item_target', ''),
(51, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(52, 22, '_menu_item_xfn', ''),
(53, 22, '_menu_item_url', ''),
(55, 23, '_menu_item_type', 'post_type'),
(56, 23, '_menu_item_menu_item_parent', '69'),
(57, 23, '_menu_item_object_id', '13'),
(58, 23, '_menu_item_object', 'page'),
(59, 23, '_menu_item_target', ''),
(60, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(61, 23, '_menu_item_xfn', ''),
(62, 23, '_menu_item_url', ''),
(64, 24, '_menu_item_type', 'post_type'),
(65, 24, '_menu_item_menu_item_parent', '0'),
(66, 24, '_menu_item_object_id', '5'),
(67, 24, '_menu_item_object', 'page'),
(68, 24, '_menu_item_target', ''),
(69, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(70, 24, '_menu_item_xfn', ''),
(71, 24, '_menu_item_url', ''),
(73, 25, '_menu_item_type', 'post_type'),
(74, 25, '_menu_item_menu_item_parent', '0'),
(75, 25, '_menu_item_object_id', '15'),
(76, 25, '_menu_item_object', 'page'),
(77, 25, '_menu_item_target', ''),
(78, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(79, 25, '_menu_item_xfn', ''),
(80, 25, '_menu_item_url', ''),
(82, 26, '_menu_item_type', 'post_type'),
(83, 26, '_menu_item_menu_item_parent', '0'),
(84, 26, '_menu_item_object_id', '9'),
(85, 26, '_menu_item_object', 'page'),
(86, 26, '_menu_item_target', ''),
(87, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(88, 26, '_menu_item_xfn', ''),
(89, 26, '_menu_item_url', ''),
(91, 32, '_wp_attached_file', '2016/09/slide1.jpg'),
(92, 32, 'wpmf_size', '529142'),
(93, 32, 'wpmf_filetype', 'jpg'),
(94, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:650;s:4:"file";s:18:"2016/09/slide1.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"slide1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"slide1-300x102.jpg";s:5:"width";i:300;s:6:"height";i:102;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"slide1-768x260.jpg";s:5:"width";i:768;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"slide1-1024x347.jpg";s:5:"width";i:1024;s:6:"height";i:347;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"slide1-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:18:"slide1-784x265.jpg";s:5:"width";i:784;s:6:"height";i:265;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(95, 33, '_wp_attached_file', '2016/09/slide2.jpg'),
(96, 33, 'wpmf_size', '487792'),
(97, 33, 'wpmf_filetype', 'jpg'),
(98, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:650;s:4:"file";s:18:"2016/09/slide2.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"slide2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"slide2-300x102.jpg";s:5:"width";i:300;s:6:"height";i:102;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"slide2-768x260.jpg";s:5:"width";i:768;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"slide2-1024x347.jpg";s:5:"width";i:1024;s:6:"height";i:347;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"slide2-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:18:"slide2-784x265.jpg";s:5:"width";i:784;s:6:"height";i:265;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(99, 31, '_edit_last', '1'),
(100, 31, '_edit_lock', '1473888772:1'),
(101, 31, '_thumbnail_id', '33'),
(102, 34, '_edit_last', '1'),
(103, 34, '_edit_lock', '1473808830:1'),
(104, 34, '_thumbnail_id', '32'),
(105, 34, '_dp_original', '31'),
(106, 34, 'mb_rev_slider_select', 'fade'),
(107, 31, 'mb_rev_slider_select', 'slideup') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(108, 35, '_edit_last', '1'),
(109, 35, '_edit_lock', '1473871339:1'),
(110, 36, '_wp_attached_file', '2016/09/sample-services.jpg'),
(111, 36, 'wpmf_size', '122953'),
(112, 36, 'wpmf_filetype', 'jpg'),
(113, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:980;s:6:"height";i:980;s:4:"file";s:27:"2016/09/sample-services.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"sample-services-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"sample-services-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:27:"sample-services-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:27:"sample-services-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:27:"sample-services-350x350.jpg";s:5:"width";i:350;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(114, 35, '_thumbnail_id', '36'),
(115, 37, '_edit_last', '1'),
(116, 37, '_edit_lock', '1473871512:1'),
(117, 37, '_thumbnail_id', '36'),
(118, 37, '_dp_original', '35'),
(119, 38, '_edit_last', '1'),
(120, 38, '_edit_lock', '1473871524:1'),
(121, 38, '_thumbnail_id', '36'),
(123, 38, '_dp_original', '37'),
(124, 39, '_edit_last', '1'),
(125, 39, '_edit_lock', '1474320657:1'),
(126, 39, '_thumbnail_id', '36'),
(128, 39, '_dp_original', '38'),
(129, 40, '_wp_attached_file', '2016/09/nosotros_imagen.jpg'),
(130, 40, 'wpmf_size', '70008'),
(131, 40, 'wpmf_filetype', 'jpg'),
(132, 40, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:504;s:4:"file";s:27:"2016/09/nosotros_imagen.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"nosotros_imagen-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"nosotros_imagen-300x236.jpg";s:5:"width";i:300;s:6:"height";i:236;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:27:"nosotros_imagen-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:27:"nosotros_imagen-444x350.jpg";s:5:"width";i:444;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(133, 7, '_thumbnail_id', '40'),
(134, 46, '_edit_last', '1'),
(135, 46, '_edit_lock', '1473888981:1'),
(136, 47, '_wp_attached_file', '2016/09/staff.jpg'),
(137, 47, 'wpmf_size', '138043'),
(138, 47, 'wpmf_filetype', 'jpg'),
(139, 47, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:780;s:6:"height";i:780;s:4:"file";s:17:"2016/09/staff.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"staff-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"staff-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"staff-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:17:"staff-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:17:"staff-350x350.jpg";s:5:"width";i:350;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(140, 46, '_thumbnail_id', '47'),
(141, 48, '_edit_last', '1'),
(142, 48, '_edit_lock', '1473889138:1'),
(143, 48, '_thumbnail_id', '47'),
(144, 48, '_dp_original', '46'),
(145, 49, '_edit_last', '1'),
(146, 49, '_edit_lock', '1473889160:1'),
(147, 49, '_thumbnail_id', '47'),
(149, 49, '_dp_original', '48'),
(150, 50, '_edit_last', '1'),
(151, 50, '_edit_lock', '1473890462:1'),
(152, 50, '_thumbnail_id', '47'),
(154, 50, '_dp_original', '49'),
(155, 51, '_edit_last', '1'),
(156, 51, '_edit_lock', '1473893370:1'),
(157, 52, '_wp_attached_file', '2016/09/spa-studios-780x440.jpg'),
(158, 52, 'wpmf_size', '30637'),
(159, 52, 'wpmf_filetype', 'jpg'),
(160, 52, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:780;s:6:"height";i:440;s:4:"file";s:31:"2016/09/spa-studios-780x440.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"spa-studios-780x440-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"spa-studios-780x440-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"spa-studios-780x440-768x433.jpg";s:5:"width";i:768;s:6:"height";i:433;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:31:"spa-studios-780x440-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:31:"spa-studios-780x440-620x350.jpg";s:5:"width";i:620;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(161, 51, '_thumbnail_id', '52'),
(163, 1, '_wp_trash_meta_status', 'publish'),
(164, 1, '_wp_trash_meta_time', '1473893617'),
(165, 1, '_wp_desired_post_slug', 'hola-mundo'),
(166, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(167, 55, '_edit_last', '1'),
(168, 55, '_edit_lock', '1473893733:1'),
(169, 55, '_thumbnail_id', '52'),
(170, 55, '_dp_original', '51'),
(171, 56, '_edit_last', '1'),
(172, 56, '_edit_lock', '1473893728:1'),
(173, 56, '_thumbnail_id', '52'),
(175, 56, '_dp_original', '55'),
(176, 57, '_edit_last', '1'),
(177, 57, '_edit_lock', '1473893721:1'),
(178, 57, '_thumbnail_id', '52'),
(180, 57, '_dp_original', '56'),
(181, 61, '_edit_last', '1'),
(182, 61, '_edit_lock', '1473983071:1'),
(183, 62, '_wp_attached_file', '2016/09/salon_staff_1.jpg'),
(184, 62, 'wpmf_size', '23505'),
(185, 62, 'wpmf_filetype', 'jpg'),
(186, 62, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:25:"2016/09/salon_staff_1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"salon_staff_1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"salon_staff_1-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(187, 63, '_wp_attached_file', '2016/09/salon_staff_2.jpg'),
(188, 63, 'wpmf_size', '33298'),
(189, 63, 'wpmf_filetype', 'jpg'),
(190, 63, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:25:"2016/09/salon_staff_2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"salon_staff_2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"salon_staff_2-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(191, 61, '_thumbnail_id', '62'),
(192, 64, '_edit_last', '1'),
(193, 64, '_edit_lock', '1473976475:1'),
(194, 64, '_thumbnail_id', '62'),
(195, 65, '_edit_last', '1'),
(196, 65, '_edit_lock', '1473976628:1'),
(197, 65, '_thumbnail_id', '62'),
(198, 65, '_dp_original', '64'),
(199, 66, '_edit_last', '1'),
(200, 66, '_edit_lock', '1474304133:1'),
(201, 66, '_thumbnail_id', '62'),
(203, 66, '_dp_original', '65'),
(204, 7, '_wp_page_template', 'page-nosotros.php'),
(205, 9, '_wp_page_template', 'page-services.php'),
(206, 39, 'mb_service_data', 'a:5:{s:17:"mb_service_cortes";s:9:"asdasdasd";s:16:"mb_service_color";s:6:"asdasd";s:15:"mb_service_care";s:9:"234343434";s:16:"mb_service_lisos";s:15:"3434asdasda1111";s:17:"mb_service_makeup";s:13:"3434qsdasdasd";}'),
(207, 39, 'mbservicecortes', '<ul>\r\n 	<li>Corte</li>\r\n 	<li>Cepillado</li>\r\n 	<li>Planchado</li>\r\n 	<li>Peinados</li>\r\n 	<li>Trenzas</li>\r\n 	<li>Moños</li>\r\n</ul>'),
(208, 39, 'mbservicecolor', '1212434asdasdad'),
(209, 39, 'mbservicecare', ''),
(210, 39, 'mbservicelisos', ''),
(211, 13, '_wp_page_template', 'page-images.php'),
(212, 69, '_menu_item_type', 'custom'),
(213, 69, '_menu_item_menu_item_parent', '0'),
(214, 69, '_menu_item_object_id', '69'),
(215, 69, '_menu_item_object', 'custom') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(216, 69, '_menu_item_target', ''),
(217, 69, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(218, 69, '_menu_item_xfn', ''),
(219, 69, '_menu_item_url', '#'),
(220, 70, '_edit_last', '1'),
(221, 70, '_wp_page_template', 'default'),
(222, 70, '_edit_lock', '1474383778:1'),
(223, 72, '_menu_item_type', 'post_type'),
(224, 72, '_menu_item_menu_item_parent', '69'),
(225, 72, '_menu_item_object_id', '70'),
(226, 72, '_menu_item_object', 'page'),
(227, 72, '_menu_item_target', ''),
(228, 72, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(229, 72, '_menu_item_xfn', ''),
(230, 72, '_menu_item_url', ''),
(232, 73, '_edit_last', '1'),
(233, 73, '_edit_lock', '1474385825:1'),
(234, 74, '_edit_last', '1'),
(235, 74, '_edit_lock', '1474387118:1'),
(236, 75, '_wp_attached_file', '2016/09/salon_foto_1.jpg'),
(237, 75, 'wpmf_size', '47578'),
(238, 75, 'wpmf_filetype', 'jpg'),
(239, 75, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:24:"2016/09/salon_foto_1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"salon_foto_1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"salon_foto_1-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:24:"salon_foto_1-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:24:"salon_foto_1-467x350.jpg";s:5:"width";i:467;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(240, 74, '_thumbnail_id', '75'),
(241, 73, '_wp_trash_meta_status', 'draft'),
(242, 73, '_wp_trash_meta_time', '1474387340'),
(243, 73, '_wp_desired_post_slug', ''),
(244, 76, '_edit_last', '1'),
(245, 76, '_edit_lock', '1474387228:1'),
(246, 76, '_thumbnail_id', '75'),
(247, 76, '_dp_original', '74'),
(248, 77, '_edit_last', '1'),
(249, 77, '_edit_lock', '1474390807:1'),
(250, 77, '_thumbnail_id', '75'),
(252, 77, '_dp_original', '76'),
(253, 78, '_edit_last', '1'),
(254, 78, '_edit_lock', '1474392158:1'),
(255, 78, '_oembed_b4bd7c11a8934e00544b54f0e1936982', '<iframe width="500" height="281" src="https://www.youtube.com/embed/99ReBo_DqeY?feature=oembed" frameborder="0" allowfullscreen></iframe>'),
(256, 78, '_oembed_time_b4bd7c11a8934e00544b54f0e1936982', '1474390979'),
(257, 79, '_edit_last', '1'),
(258, 79, '_edit_lock', '1474392245:1'),
(259, 80, '_wp_attached_file', '2016/09/PROMOCIONES.jpg'),
(260, 80, 'wpmf_size', '232119'),
(261, 80, 'wpmf_filetype', 'jpg'),
(262, 80, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:23:"2016/09/PROMOCIONES.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"PROMOCIONES-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"PROMOCIONES-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"PROMOCIONES-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:23:"PROMOCIONES-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:23:"PROMOCIONES-350x350.jpg";s:5:"width";i:350;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(263, 79, '_thumbnail_id', '80'),
(264, 81, '_edit_last', '1'),
(265, 81, '_edit_lock', '1474392400:1'),
(266, 81, '_thumbnail_id', '80'),
(267, 81, '_dp_original', '79'),
(268, 82, '_edit_last', '1'),
(269, 82, '_edit_lock', '1474392408:1'),
(270, 82, '_thumbnail_id', '80'),
(272, 82, '_dp_original', '81'),
(273, 83, '_edit_last', '1'),
(274, 83, '_edit_lock', '1474393534:1'),
(275, 83, '_thumbnail_id', '80'),
(277, 83, '_dp_original', '82'),
(278, 15, '_wp_page_template', 'page-promotions.php'),
(279, 17, '_wp_page_template', 'page-contacto.php'),
(280, 84, '_wp_attached_file', '2016/09/salon_contacto.jpg'),
(281, 84, 'wpmf_size', '84392'),
(282, 84, 'wpmf_filetype', 'jpg'),
(283, 84, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:443;s:4:"file";s:26:"2016/09/salon_contacto.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"salon_contacto-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"salon_contacto-300x166.jpg";s:5:"width";i:300;s:6:"height";i:166;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"salon_contacto-768x425.jpg";s:5:"width";i:768;s:6:"height";i:425;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:26:"salon_contacto-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:26:"salon_contacto-632x350.jpg";s:5:"width";i:632;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(284, 17, '_thumbnail_id', '84') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-09-13 15:17:53', '2016-09-13 15:17:53', 'Bienvenido a WordPress. Esta es su primera entrada. Edítela o bórrela, y ¡empiece a escribir!', '¡Hola mundo!', '', 'trash', 'open', 'open', '', 'hola-mundo__trashed', '', '', '2016-09-14 22:53:37', '2016-09-14 22:53:37', '', 0, 'http://localhost/salonbelleza/?p=1', 0, 'post', '', 1),
(2, 1, '2016-09-13 15:17:53', '2016-09-13 15:17:53', 'Esto es una página de ejemplo. Es diferente a una entrada del blog, ya que permanecerá fija en un lugar y se mostrará en la navegación de su sitio (en la mayoría de temas). La mayoría de personas empieza con una página Acerca de, que brinda información a los visitantes de su sitio. Se podría decir algo como esto:\n\n<blockquote>¡Hola! Durante el día soy un mensajero, un aspirante a actor por la noche, y este es mi blog. Vivo en Lima, tengo un enorme perro llamado Pocho, y me gusta el Pisco Sour. (Y caminar bajo la lluvia.)</blockquote>\n\n...o algo como esto:\n\n<blockquote>La compañía XYZ, se fundó en 1971, y ha estado desde entonces, proporcionando artilugios de calidad al público. Está situado en la ciudad de Lima, XYZ emplea a más de 2,000 personas y hace todo tipo de cosas sorprendentes para la comunidad limeña.</blockquote>\n\nComo nuevo usuario de WordPress, usted debe ir a <a href="http://localhost/salonbelleza/wp-admin/">su panel</a> para eliminar esta página y crear nuevas para su contenido. ¡Que se divierta!', 'Página de ejemplo', '', 'trash', 'closed', 'open', '', 'pagina-de-ejemplo__trashed', '', '', '2016-09-13 17:59:12', '2016-09-13 17:59:12', '', 0, 'http://localhost/salonbelleza/?page_id=2', 0, 'page', '', 0),
(3, 1, '2016-09-13 15:18:14', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-09-13 15:18:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/salonbelleza/?p=3', 0, 'post', '', 0),
(4, 1, '2016-09-13 17:59:12', '2016-09-13 17:59:12', 'Esto es una página de ejemplo. Es diferente a una entrada del blog, ya que permanecerá fija en un lugar y se mostrará en la navegación de su sitio (en la mayoría de temas). La mayoría de personas empieza con una página Acerca de, que brinda información a los visitantes de su sitio. Se podría decir algo como esto:\n\n<blockquote>¡Hola! Durante el día soy un mensajero, un aspirante a actor por la noche, y este es mi blog. Vivo en Lima, tengo un enorme perro llamado Pocho, y me gusta el Pisco Sour. (Y caminar bajo la lluvia.)</blockquote>\n\n...o algo como esto:\n\n<blockquote>La compañía XYZ, se fundó en 1971, y ha estado desde entonces, proporcionando artilugios de calidad al público. Está situado en la ciudad de Lima, XYZ emplea a más de 2,000 personas y hace todo tipo de cosas sorprendentes para la comunidad limeña.</blockquote>\n\nComo nuevo usuario de WordPress, usted debe ir a <a href="http://localhost/salonbelleza/wp-admin/">su panel</a> para eliminar esta página y crear nuevas para su contenido. ¡Que se divierta!', 'Página de ejemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-09-13 17:59:12', '2016-09-13 17:59:12', '', 2, 'http://localhost/salonbelleza/2016/09/13/2-revision-v1/', 0, 'revision', '', 0),
(5, 1, '2016-09-13 17:59:52', '2016-09-13 17:59:52', '', 'Inicio', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2016-09-13 17:59:52', '2016-09-13 17:59:52', '', 0, 'http://localhost/salonbelleza/?page_id=5', 0, 'page', '', 0),
(6, 1, '2016-09-13 17:59:52', '2016-09-13 17:59:52', '', 'Inicio', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-09-13 17:59:52', '2016-09-13 17:59:52', '', 5, 'http://localhost/salonbelleza/2016/09/13/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2016-09-13 18:00:04', '2016-09-13 18:00:04', '<span style="color: #c4a648;">Hacemos nuestro trabajo con un pensamiento de nuestros clientes, por lo tanto, nuestro personal trabaja duro para ofrecerle el mejor tratamiento y apoyo.</span>\r\n<ul>\r\n 	<li>Regalos especiales y ofertas para usted</li>\r\n 	<li>Productos de calidad</li>\r\n 	<li>Productos de calidad</li>\r\n 	<li>Productos de calidad</li>\r\n 	<li>Productos de calidad</li>\r\n</ul>', 'Conócenos', 'Bienvenidos a Central GLAM', 'publish', 'closed', 'closed', '', 'conocenos', '', '', '2016-09-19 16:58:10', '2016-09-19 16:58:10', '', 0, 'http://localhost/salonbelleza/?page_id=7', 0, 'page', '', 0),
(8, 1, '2016-09-13 18:00:04', '2016-09-13 18:00:04', '', 'Conócenos', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-09-13 18:00:04', '2016-09-13 18:00:04', '', 7, 'http://localhost/salonbelleza/2016/09/13/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2016-09-13 18:00:16', '2016-09-13 18:00:16', '', 'Servicios', '', 'publish', 'closed', 'closed', '', 'servicios', '', '', '2016-09-19 17:53:45', '2016-09-19 17:53:45', '', 0, 'http://localhost/salonbelleza/?page_id=9', 0, 'page', '', 0),
(10, 1, '2016-09-13 18:00:16', '2016-09-13 18:00:16', '', 'Servicios', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2016-09-13 18:00:16', '2016-09-13 18:00:16', '', 9, 'http://localhost/salonbelleza/2016/09/13/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2016-09-13 18:00:23', '2016-09-13 18:00:23', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2016-09-13 18:00:23', '2016-09-13 18:00:23', '', 0, 'http://localhost/salonbelleza/?page_id=11', 0, 'page', '', 0),
(12, 1, '2016-09-13 18:00:23', '2016-09-13 18:00:23', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2016-09-13 18:00:23', '2016-09-13 18:00:23', '', 11, 'http://localhost/salonbelleza/2016/09/13/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2016-09-13 18:00:35', '2016-09-13 18:00:35', '', 'Fotos', '', 'publish', 'closed', 'closed', '', 'fotos', '', '', '2016-09-19 22:58:13', '2016-09-19 22:58:13', '', 0, 'http://localhost/salonbelleza/?page_id=13', 0, 'page', '', 0),
(14, 1, '2016-09-13 18:00:35', '2016-09-13 18:00:35', '', 'Galería', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2016-09-13 18:00:35', '2016-09-13 18:00:35', '', 13, 'http://localhost/salonbelleza/2016/09/13/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2016-09-13 18:00:51', '2016-09-13 18:00:51', '', 'Promociones', '', 'publish', 'closed', 'closed', '', 'promociones', '', '', '2016-09-20 17:27:14', '2016-09-20 17:27:14', '', 0, 'http://localhost/salonbelleza/?page_id=15', 0, 'page', '', 0),
(16, 1, '2016-09-13 18:00:51', '2016-09-13 18:00:51', '', 'Promociones', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2016-09-13 18:00:51', '2016-09-13 18:00:51', '', 15, 'http://localhost/salonbelleza/2016/09/13/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2016-09-13 18:01:02', '2016-09-13 18:01:02', '', 'Contáctenos', '', 'publish', 'closed', 'closed', '', 'contactenos', '', '', '2016-09-20 17:51:42', '2016-09-20 17:51:42', '', 0, 'http://localhost/salonbelleza/?page_id=17', 0, 'page', '', 0),
(18, 1, '2016-09-13 18:01:02', '2016-09-13 18:01:02', '', 'Contáctenos', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2016-09-13 18:01:02', '2016-09-13 18:01:02', '', 17, 'http://localhost/salonbelleza/2016/09/13/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2016-09-13 20:37:00', '0000-00-00 00:00:00', '', 'Inicio', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-09-13 20:37:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/salonbelleza/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2016-09-13 20:37:30', '2016-09-13 20:37:30', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2016-09-20 15:05:34', '2016-09-20 15:05:34', '', 0, 'http://localhost/salonbelleza/?p=20', 4, 'nav_menu_item', '', 0),
(21, 1, '2016-09-13 20:37:29', '2016-09-13 20:37:29', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2016-09-20 15:05:34', '2016-09-20 15:05:34', '', 0, 'http://localhost/salonbelleza/?p=21', 2, 'nav_menu_item', '', 0),
(22, 1, '2016-09-13 20:37:31', '2016-09-13 20:37:31', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2016-09-20 15:05:34', '2016-09-20 15:05:34', '', 0, 'http://localhost/salonbelleza/?p=22', 9, 'nav_menu_item', '', 0),
(23, 1, '2016-09-13 20:37:30', '2016-09-13 20:37:30', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2016-09-20 15:05:34', '2016-09-20 15:05:34', '', 0, 'http://localhost/salonbelleza/?p=23', 6, 'nav_menu_item', '', 0),
(24, 1, '2016-09-13 20:37:29', '2016-09-13 20:37:29', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2016-09-20 15:05:34', '2016-09-20 15:05:34', '', 0, 'http://localhost/salonbelleza/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2016-09-13 20:37:31', '2016-09-13 20:37:31', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2016-09-20 15:05:34', '2016-09-20 15:05:34', '', 0, 'http://localhost/salonbelleza/?p=25', 8, 'nav_menu_item', '', 0),
(26, 1, '2016-09-13 20:37:30', '2016-09-13 20:37:30', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2016-09-20 15:05:34', '2016-09-20 15:05:34', '', 0, 'http://localhost/salonbelleza/?p=26', 3, 'nav_menu_item', '', 0),
(27, 1, '2016-09-13 21:58:57', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-09-13 21:58:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/salonbelleza/?post_type=slider-home&p=27', 0, 'slider-home', '', 0),
(28, 1, '2016-09-13 22:00:51', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-09-13 22:00:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/salonbelleza/?post_type=slider-home&p=28', 0, 'slider-home', '', 0),
(29, 1, '2016-09-13 22:06:04', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-09-13 22:06:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/salonbelleza/?post_type=slider-home&p=29', 0, 'slider-home', '', 0),
(30, 1, '2016-09-13 22:07:39', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-09-13 22:07:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/salonbelleza/?post_type=slider-home&p=30', 0, 'slider-home', '', 0),
(31, 1, '2016-09-13 22:11:15', '2016-09-13 22:11:15', 'Te ayudamos a hacerlo', 'Descubre tu belleza', '', 'publish', 'closed', 'closed', '', 'descubre-tu-belleza', '', '', '2016-09-14 21:29:51', '2016-09-14 21:29:51', '', 0, 'http://localhost/salonbelleza/?post_type=slider-home&#038;p=31', 0, 'slider-home', '', 0),
(32, 1, '2016-09-13 22:10:28', '2016-09-13 22:10:28', '', 'slide1', '', 'inherit', 'open', 'closed', '', 'slide1', '', '', '2016-09-13 22:10:28', '2016-09-13 22:10:28', '', 31, 'http://localhost/salonbelleza/wp-content/uploads/2016/09/slide1.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2016-09-13 22:10:32', '2016-09-13 22:10:32', '', 'slide2', '', 'inherit', 'open', 'closed', '', 'slide2', '', '', '2016-09-13 22:10:32', '2016-09-13 22:10:32', '', 31, 'http://localhost/salonbelleza/wp-content/uploads/2016/09/slide2.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2016-09-13 22:12:36', '2016-09-13 22:12:36', 'Te ayudamos a hacerlo', 'Hacemos la magia', '', 'publish', 'closed', 'closed', '', 'hacemos-la-magia', '', '', '2016-09-13 23:21:28', '2016-09-13 23:21:28', '', 0, 'http://localhost/salonbelleza/?post_type=slider-home&#038;p=34', 0, 'slider-home', '', 0),
(35, 1, '2016-09-14 16:44:29', '2016-09-14 16:44:29', '', 'Mujer', '', 'publish', 'closed', 'closed', '', 'mujer', '', '', '2016-09-14 16:44:29', '2016-09-14 16:44:29', '', 0, 'http://localhost/salonbelleza/?post_type=theme-services&#038;p=35', 0, 'theme-services', '', 0),
(36, 1, '2016-09-14 16:44:00', '2016-09-14 16:44:00', '', 'sample-services', '', 'inherit', 'open', 'closed', '', 'sample-services', '', '', '2016-09-14 16:44:00', '2016-09-14 16:44:00', '', 35, 'http://localhost/salonbelleza/wp-content/uploads/2016/09/sample-services.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2016-09-14 16:44:48', '2016-09-14 16:44:48', '', 'Hombre', '', 'publish', 'closed', 'closed', '', 'hombre', '', '', '2016-09-14 16:45:12', '2016-09-14 16:45:12', '', 0, 'http://localhost/salonbelleza/?post_type=theme-services&#038;p=37', 0, 'theme-services', '', 0),
(38, 1, '2016-09-14 16:45:15', '2016-09-14 16:45:15', '', 'Teens', '', 'publish', 'closed', 'closed', '', 'teens', '', '', '2016-09-14 16:45:24', '2016-09-14 16:45:24', '', 0, 'http://localhost/salonbelleza/?post_type=theme-services&#038;p=38', 0, 'theme-services', '', 0),
(39, 1, '2016-09-14 16:45:28', '2016-09-14 16:45:28', '', 'Kids', '', 'publish', 'closed', 'closed', '', 'kids', '', '', '2016-09-19 20:58:11', '2016-09-19 20:58:11', '', 0, 'http://localhost/salonbelleza/?post_type=theme-services&#038;p=39', 0, 'theme-services', '', 0),
(40, 1, '2016-09-14 19:23:42', '2016-09-14 19:23:42', '', 'nosotros_imagen', '', 'inherit', 'open', 'closed', '', 'nosotros_imagen', '', '', '2016-09-14 19:23:42', '2016-09-14 19:23:42', '', 7, 'http://localhost/salonbelleza/wp-content/uploads/2016/09/nosotros_imagen.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2016-09-14 19:48:37', '2016-09-14 19:48:37', 'Hacemos nuestro trabajo con un pensamiento de nuestros clientes, por lo tanto, nuestro personal trabaja duro para ofrecerle el mejor tratamiento y apoyo\n\n&nbsp;', 'Conócenos', 'Bienvenidos a Central GLAM', 'inherit', 'closed', 'closed', '', '7-autosave-v1', '', '', '2016-09-14 19:48:37', '2016-09-14 19:48:37', '', 7, 'http://localhost/salonbelleza/2016/09/14/7-autosave-v1/', 0, 'revision', '', 0),
(42, 1, '2016-09-14 19:49:22', '2016-09-14 19:49:22', 'Hacemos nuestro trabajo con un pensamiento de nuestros clientes, por lo tanto, nuestro personal trabaja duro para ofrecerle el mejor tratamiento y apoyo.\r\n\r\n&nbsp;\r\n<ul>\r\n 	<li>Regalos especiales y ofertas para usted</li>\r\n 	<li>Productos de calidad</li>\r\n 	<li>Productos de calidad</li>\r\n 	<li>Productos de calidad</li>\r\n 	<li>Productos de calidad</li>\r\n</ul>\r\n&nbsp;\r\n\r\n&nbsp;', 'Conócenos', 'Bienvenidos a Central GLAM', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-09-14 19:49:22', '2016-09-14 19:49:22', '', 7, 'http://localhost/salonbelleza/2016/09/14/7-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2016-09-14 20:10:34', '2016-09-14 20:10:34', '<span style="color: #c4a648;">Hacemos nuestro trabajo con un pensamiento de nuestros clientes, por lo tanto, nuestro personal trabaja duro para ofrecerle el mejor tratamiento y apoyo.</span>\r\n\r\n&nbsp;\r\n<ul>\r\n 	<li>Regalos especiales y ofertas para usted</li>\r\n 	<li>Productos de calidad</li>\r\n 	<li>Productos de calidad</li>\r\n 	<li>Productos de calidad</li>\r\n 	<li>Productos de calidad</li>\r\n</ul>\r\n&nbsp;\r\n\r\n&nbsp;', 'Conócenos', 'Bienvenidos a Central GLAM', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-09-14 20:10:34', '2016-09-14 20:10:34', '', 7, 'http://localhost/salonbelleza/2016/09/14/7-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2016-09-14 20:40:34', '2016-09-14 20:40:34', '<span style="color: #c4a648;">Hacemos nuestro trabajo con un pensamiento de nuestros clientes, por lo tanto, nuestro personal trabaja duro para ofrecerle el mejor tratamiento y apoyo.</span>\r\n<ul>\r\n 	<li>Regalos especiales y ofertas para usted</li>\r\n 	<li>Productos de calidad</li>\r\n 	<li>Productos de calidad</li>\r\n 	<li>Productos de calidad</li>\r\n 	<li>Productos de calidad</li>\r\n</ul>\r\n&nbsp;\r\n\r\n&nbsp;', 'Conócenos', 'Bienvenidos a Central GLAM', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-09-14 20:40:34', '2016-09-14 20:40:34', '', 7, 'http://localhost/salonbelleza/2016/09/14/7-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2016-09-14 20:47:03', '2016-09-14 20:47:03', '<span style="color: #c4a648;">Hacemos nuestro trabajo con un pensamiento de nuestros clientes, por lo tanto, nuestro personal trabaja duro para ofrecerle el mejor tratamiento y apoyo.</span>\r\n<ul>\r\n 	<li>Regalos especiales y ofertas para usted</li>\r\n 	<li>Productos de calidad</li>\r\n 	<li>Productos de calidad</li>\r\n 	<li>Productos de calidad</li>\r\n 	<li>Productos de calidad</li>\r\n</ul>', 'Conócenos', 'Bienvenidos a Central GLAM', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-09-14 20:47:03', '2016-09-14 20:47:03', '', 7, 'http://localhost/salonbelleza/2016/09/14/7-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2016-09-14 21:38:18', '2016-09-14 21:38:18', 'Maquilladora', 'Sussan Lee', '', 'publish', 'closed', 'closed', '', 'sussan-lee', '', '', '2016-09-14 21:38:18', '2016-09-14 21:38:18', '', 0, 'http://localhost/salonbelleza/?post_type=theme-staff&#038;p=46', 0, 'theme-staff', '', 0),
(47, 1, '2016-09-14 21:38:05', '2016-09-14 21:38:05', '', 'staff', '', 'inherit', 'open', 'closed', '', 'staff', '', '', '2016-09-14 21:38:05', '2016-09-14 21:38:05', '', 46, 'http://localhost/salonbelleza/wp-content/uploads/2016/09/staff.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2016-09-14 21:38:49', '2016-09-14 21:38:49', 'Maquilladora', 'Sussan Lee', '', 'publish', 'closed', 'closed', '', 'sussan-lee-2', '', '', '2016-09-14 21:38:57', '2016-09-14 21:38:57', '', 0, 'http://localhost/salonbelleza/?post_type=theme-staff&#038;p=48', 0, 'theme-staff', '', 0),
(49, 1, '2016-09-14 21:39:02', '2016-09-14 21:39:02', 'Maquilladora', 'Sussan Lee', '', 'publish', 'closed', 'closed', '', 'sussan-lee-3', '', '', '2016-09-14 21:39:20', '2016-09-14 21:39:20', '', 0, 'http://localhost/salonbelleza/?post_type=theme-staff&#038;p=49', 0, 'theme-staff', '', 0),
(50, 1, '2016-09-14 22:00:52', '2016-09-14 22:00:52', 'Maquilladora', 'Sussan Lee', '', 'publish', 'closed', 'closed', '', 'sussan-lee-4', '', '', '2016-09-14 22:01:02', '2016-09-14 22:01:02', '', 0, 'http://localhost/salonbelleza/?post_type=theme-staff&#038;p=50', 0, 'theme-staff', '', 0),
(51, 1, '2016-09-14 22:51:18', '2016-09-14 22:51:18', '', 'Fuentes Naturales Descubrir para el pelo', '', 'publish', 'open', 'open', '', 'fuentes-naturales-descubrir-para-el-pelo', '', '', '2016-09-14 22:51:18', '2016-09-14 22:51:18', '', 0, 'http://localhost/salonbelleza/?p=51', 0, 'post', '', 0),
(52, 1, '2016-09-14 22:50:18', '2016-09-14 22:50:18', '', 'spa-studios-780x440', '', 'inherit', 'open', 'closed', '', 'spa-studios-780x440', '', '', '2016-09-14 22:50:18', '2016-09-14 22:50:18', '', 51, 'http://localhost/salonbelleza/wp-content/uploads/2016/09/spa-studios-780x440.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2016-09-14 22:51:18', '2016-09-14 22:51:18', '', 'Fuentes Naturales Descubrir para el pelo', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2016-09-14 22:51:18', '2016-09-14 22:51:18', '', 51, 'http://localhost/salonbelleza/2016/09/14/51-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2016-09-14 22:53:37', '2016-09-14 22:53:37', 'Bienvenido a WordPress. Esta es su primera entrada. Edítela o bórrela, y ¡empiece a escribir!', '¡Hola mundo!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2016-09-14 22:53:37', '2016-09-14 22:53:37', '', 1, 'http://localhost/salonbelleza/2016/09/14/1-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2016-09-14 22:53:42', '2016-09-14 22:53:42', '', 'Fuentes Naturales Descubrir para el pelo', '', 'publish', 'open', 'open', '', 'fuentes-naturales-descubrir-para-el-pelo-4', '', '', '2016-09-14 22:55:32', '2016-09-14 22:55:32', '', 0, 'http://localhost/salonbelleza/?p=55', 0, 'post', '', 0),
(56, 1, '2016-09-14 22:54:55', '2016-09-14 22:54:55', '', 'Fuentes Naturales Descubrir para el pelo', '', 'publish', 'open', 'open', '', 'fuentes-naturales-descubrir-para-el-pelo-3', '', '', '2016-09-14 22:55:28', '2016-09-14 22:55:28', '', 0, 'http://localhost/salonbelleza/?p=56', 0, 'post', '', 0),
(57, 1, '2016-09-14 22:55:00', '2016-09-14 22:55:00', '', 'Fuentes Naturales Descubrir para el pelo', '', 'publish', 'open', 'open', '', 'fuentes-naturales-descubrir-para-el-pelo-2', '', '', '2016-09-14 22:55:19', '2016-09-14 22:55:19', '', 0, 'http://localhost/salonbelleza/?p=57', 0, 'post', '', 0),
(58, 1, '2016-09-14 22:55:19', '2016-09-14 22:55:19', '', 'Fuentes Naturales Descubrir para el pelo', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2016-09-14 22:55:19', '2016-09-14 22:55:19', '', 57, 'http://localhost/salonbelleza/2016/09/14/57-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2016-09-14 22:55:28', '2016-09-14 22:55:28', '', 'Fuentes Naturales Descubrir para el pelo', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2016-09-14 22:55:28', '2016-09-14 22:55:28', '', 56, 'http://localhost/salonbelleza/2016/09/14/56-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2016-09-14 22:55:32', '2016-09-14 22:55:32', '', 'Fuentes Naturales Descubrir para el pelo', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2016-09-14 22:55:32', '2016-09-14 22:55:32', '', 55, 'http://localhost/salonbelleza/2016/09/14/55-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2016-09-15 21:55:36', '2016-09-15 21:55:36', 'Me encanta este salón y sobre todo los resultados en mi cabello y sus tratamientos son efectivos.', 'Natalie Doe', '', 'publish', 'closed', 'closed', '', 'natalie-doe', '', '', '2016-09-15 21:55:36', '2016-09-15 21:55:36', '', 0, 'http://localhost/salonbelleza/?post_type=theme-staff&#038;p=61', 0, 'theme-staff', '', 0),
(62, 1, '2016-09-15 21:55:25', '2016-09-15 21:55:25', '', 'salon_staff_1', '', 'inherit', 'open', 'closed', '', 'salon_staff_1', '', '', '2016-09-15 21:55:25', '2016-09-15 21:55:25', '', 61, 'http://localhost/salonbelleza/wp-content/uploads/2016/09/salon_staff_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2016-09-15 21:55:27', '2016-09-15 21:55:27', '', 'salon_staff_2', '', 'inherit', 'open', 'closed', '', 'salon_staff_2', '', '', '2016-09-15 21:55:27', '2016-09-15 21:55:27', '', 61, 'http://localhost/salonbelleza/wp-content/uploads/2016/09/salon_staff_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2016-09-15 21:56:16', '2016-09-15 21:56:16', 'Me encanta este salón y sobre todo los resultados en mi cabello y sus tratamientos son efectivos.', 'Natalie Doe', '', 'publish', 'closed', 'closed', '', 'natalie-doe', '', '', '2016-09-15 21:56:30', '2016-09-15 21:56:30', '', 0, 'http://localhost/salonbelleza/?post_type=theme-testimony&#038;p=64', 0, 'theme-testimony', '', 0),
(65, 1, '2016-09-15 21:57:02', '2016-09-15 21:57:02', 'Me encanta este salón y sobre todo los resultados en mi cabello y sus tratamientos son efectivos.', 'Natalie Doe', '', 'publish', 'closed', 'closed', '', 'natalie-doe-2', '', '', '2016-09-15 21:57:08', '2016-09-15 21:57:08', '', 0, 'http://localhost/salonbelleza/?post_type=theme-testimony&#038;p=65', 0, 'theme-testimony', '', 0),
(66, 1, '2016-09-15 21:57:11', '2016-09-15 21:57:11', 'Me encanta este salón y sobre todo los resultados en mi cabello y sus tratamientos son efectivos.', 'Natalie Doe', '', 'publish', 'closed', 'closed', '', 'natalie-doe-3', '', '', '2016-09-15 21:57:21', '2016-09-15 21:57:21', '', 0, 'http://localhost/salonbelleza/?post_type=theme-testimony&#038;p=66', 0, 'theme-testimony', '', 0),
(67, 1, '2016-09-19 16:56:49', '2016-09-19 16:56:49', 'Me encanta este salón y sobre todo los resultados en mi cabello y sus tratamientos son efectivos.', 'Natalie Doe', '', 'inherit', 'closed', 'closed', '', '66-autosave-v1', '', '', '2016-09-19 16:56:49', '2016-09-19 16:56:49', '', 66, 'http://localhost/salonbelleza/2016/09/19/66-autosave-v1/', 0, 'revision', '', 0),
(68, 1, '2016-09-19 22:58:13', '2016-09-19 22:58:13', '', 'Fotos', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2016-09-19 22:58:13', '2016-09-19 22:58:13', '', 13, 'http://localhost/salonbelleza/2016/09/19/13-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2016-09-19 22:58:55', '2016-09-19 22:58:55', '', 'Galerías', '', 'publish', 'closed', 'closed', '', 'galerias', '', '', '2016-09-20 15:05:34', '2016-09-20 15:05:34', '', 0, 'http://localhost/salonbelleza/?p=69', 5, 'nav_menu_item', '', 0),
(70, 1, '2016-09-20 15:05:17', '2016-09-20 15:05:17', '', 'Videos', '', 'publish', 'closed', 'closed', '', 'videos', '', '', '2016-09-20 15:05:17', '2016-09-20 15:05:17', '', 0, 'http://localhost/salonbelleza/?page_id=70', 0, 'page', '', 0),
(71, 1, '2016-09-20 15:05:17', '2016-09-20 15:05:17', '', 'Videos', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2016-09-20 15:05:17', '2016-09-20 15:05:17', '', 70, 'http://localhost/salonbelleza/2016/09/20/70-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2016-09-20 15:05:34', '2016-09-20 15:05:34', ' ', '', '', 'publish', 'closed', 'closed', '', '72', '', '', '2016-09-20 15:05:34', '2016-09-20 15:05:34', '', 0, 'http://localhost/salonbelleza/?p=72', 7, 'nav_menu_item', '', 0),
(73, 1, '2016-09-20 15:37:05', '2016-09-20 15:37:05', '', 'Imágen 1', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2016-09-20 16:02:20', '2016-09-20 16:02:20', '', 0, 'http://localhost/salonbelleza/?post_type=theme-images&#038;p=73', 0, 'theme-images', '', 0),
(74, 1, '2016-09-20 15:43:25', '2016-09-20 15:43:25', '', 'Imágen 1', '', 'publish', 'closed', 'closed', '', 'imagen-1', '', '', '2016-09-20 15:45:40', '2016-09-20 15:45:40', '', 0, 'http://localhost/salonbelleza/?post_type=theme-images&#038;p=74', 0, 'theme-images', '', 0),
(75, 1, '2016-09-20 15:43:18', '2016-09-20 15:43:18', '', 'salon_foto_1', '', 'inherit', 'open', 'closed', '', 'salon_foto_1', '', '', '2016-09-20 15:43:18', '2016-09-20 15:43:18', '', 74, 'http://localhost/salonbelleza/wp-content/uploads/2016/09/salon_foto_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2016-09-20 16:02:42', '2016-09-20 16:02:42', '', 'Imágen 1', '', 'publish', 'closed', 'closed', '', 'imagen-1-2', '', '', '2016-09-20 16:02:42', '2016-09-20 16:02:42', '', 0, 'http://localhost/salonbelleza/?post_type=theme-images&#038;p=76', 0, 'theme-images', '', 0),
(77, 1, '2016-09-20 16:03:10', '2016-09-20 16:03:10', '', 'Imágen 1', '', 'publish', 'closed', 'closed', '', 'imagen-1-3', '', '', '2016-09-20 16:03:10', '2016-09-20 16:03:10', '', 0, 'http://localhost/salonbelleza/?post_type=theme-images&#038;p=77', 0, 'theme-images', '', 0),
(78, 1, '2016-09-20 17:03:01', '2016-09-20 17:03:01', 'https://www.youtube.com/watch?v=99ReBo_DqeY', 'Video 1', '', 'publish', 'closed', 'closed', '', 'video-1', '', '', '2016-09-20 17:09:47', '2016-09-20 17:09:47', '', 0, 'http://localhost/salonbelleza/?post_type=theme-videos&#038;p=78', 0, 'theme-videos', '', 0),
(79, 1, '2016-09-20 17:25:56', '2016-09-20 17:25:56', '', 'Corte 30% descuento', '', 'publish', 'closed', 'closed', '', 'corte-30-descuento', '', '', '2016-09-20 17:25:56', '2016-09-20 17:25:56', '', 0, 'http://localhost/salonbelleza/?post_type=theme-promotions&#038;p=79', 0, 'theme-promotions', '', 0),
(80, 1, '2016-09-20 17:25:49', '2016-09-20 17:25:49', '', 'promociones', '', 'inherit', 'open', 'closed', '', 'promociones-2', '', '', '2016-09-20 17:25:49', '2016-09-20 17:25:49', '', 79, 'http://localhost/salonbelleza/wp-content/uploads/2016/09/PROMOCIONES.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2016-09-20 17:26:33', '2016-09-20 17:26:33', '', 'Corte 30% descuento', '', 'publish', 'closed', 'closed', '', 'corte-30-descuento-2', '', '', '2016-09-20 17:26:40', '2016-09-20 17:26:40', '', 0, 'http://localhost/salonbelleza/?post_type=theme-promotions&#038;p=81', 0, 'theme-promotions', '', 0),
(82, 1, '2016-09-20 17:26:42', '2016-09-20 17:26:42', '', 'Corte 30% descuento', '', 'publish', 'closed', 'closed', '', 'corte-30-descuento-3', '', '', '2016-09-20 17:26:48', '2016-09-20 17:26:48', '', 0, 'http://localhost/salonbelleza/?post_type=theme-promotions&#038;p=82', 0, 'theme-promotions', '', 0),
(83, 1, '2016-09-20 17:26:51', '2016-09-20 17:26:51', '', 'Corte 30% descuento', '', 'publish', 'closed', 'closed', '', 'corte-30-descuento-4', '', '', '2016-09-20 17:26:57', '2016-09-20 17:26:57', '', 0, 'http://localhost/salonbelleza/?post_type=theme-promotions&#038;p=83', 0, 'theme-promotions', '', 0),
(84, 1, '2016-09-20 17:51:10', '2016-09-20 17:51:10', '', 'salon_contacto', '', 'inherit', 'open', 'closed', '', 'salon_contacto', '', '', '2016-09-20 17:51:10', '2016-09-20 17:51:10', '', 17, 'http://localhost/salonbelleza/wp-content/uploads/2016/09/salon_contacto.jpg', 0, 'attachment', 'image/jpeg', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(20, 2, 0),
(21, 2, 0),
(22, 2, 0),
(23, 2, 0),
(24, 2, 0),
(25, 2, 0),
(26, 2, 0),
(32, 4, 0),
(33, 4, 0),
(36, 5, 0),
(40, 7, 0),
(47, 8, 0),
(51, 1, 0),
(52, 9, 0),
(55, 1, 0),
(56, 1, 0),
(57, 1, 0),
(62, 10, 0),
(63, 10, 0),
(69, 2, 0),
(72, 2, 0),
(74, 14, 0),
(75, 13, 0),
(76, 15, 0),
(77, 15, 0),
(80, 16, 0),
(84, 17, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(2, 2, 'nav_menu', '', 0, 9),
(3, 3, 'wpmf-category', '', 0, 0),
(4, 4, 'wpmf-category', '', 0, 0),
(5, 5, 'wpmf-category', '', 0, 0),
(6, 6, 'wpmf-category', '', 0, 0),
(7, 7, 'wpmf-category', '', 0, 1),
(8, 8, 'wpmf-category', '', 0, 0),
(9, 9, 'wpmf-category', '', 0, 0),
(10, 10, 'wpmf-category', '', 0, 0),
(11, 11, 'category', '', 0, 0),
(12, 12, 'category', '', 0, 0),
(13, 13, 'wpmf-category', '', 0, 0),
(14, 14, 'images_category', '', 0, 1),
(15, 15, 'images_category', '', 0, 2),
(16, 16, 'wpmf-category', '', 0, 0),
(17, 17, 'wpmf-category', '', 0, 1) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Belleza', 'belleza', 0),
(2, 'Main Menu', 'main-menu', 0),
(3, 'Sin categoría', 'sin-categoria', 0),
(4, 'SLIDER HOME', 'slider-home', 1),
(5, 'SERVICIOS', 'servicios', 1),
(6, 'New folder', 'new-folder', 1),
(7, 'NOSOTROS', 'nosotros', 1),
(8, 'STAFF', 'staff', 1),
(9, 'ENTRADAS BLOG', 'entradas-blog', 1),
(10, 'TESTIMONIOS', 'testimonios', 1),
(11, 'Spa', 'spa', 0),
(12, 'Moda', 'moda', 0),
(13, 'IMAGENES', 'imagenes', 1),
(14, 'salón', 'salon', 0),
(15, 'spa', 'spa', 0),
(16, 'PROMOCIONES', 'promociones', 1),
(17, 'CONTACTO', 'contacto', 1) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:5:{s:64:"123a2b5aff4380138c5579f09f5587535ae1d342d3811e54d1b64059916e2ec1";a:4:{s:10:"expiration";i:1474470544;s:2:"ip";s:3:"::1";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36";s:5:"login";i:1474297744;}s:64:"77e3369a21c30a22ab9e54e1969b7e85e566cc29cbe3be143a7efe11cc5a0b9a";a:4:{s:10:"expiration";i:1474485357;s:2:"ip";s:3:"::1";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36";s:5:"login";i:1474312557;}s:64:"c89b016fb7da2edb7ec783cb8cb6dbcc02e923149cebf6d08ba7278a17a5342f";a:4:{s:10:"expiration";i:1474556670;s:2:"ip";s:3:"::1";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36";s:5:"login";i:1474383870;}s:64:"bdabab780ac1c09ecd24f56ebe40976ba10ffd1741591bca86f6efa01de57abe";a:4:{s:10:"expiration";i:1474558777;s:2:"ip";s:3:"::1";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36";s:5:"login";i:1474385977;}s:64:"0cde5a6b1ae138caa1979465cddd914c01da4b216dd4ec62229b58554141cda0";a:4:{s:10:"expiration";i:1474582286;s:2:"ip";s:3:"::1";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36";s:5:"login";i:1474409486;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(17, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(18, 1, 'wp_user-settings', 'editor=html&hidetb=1&libraryContent=browse&post_dfw=on'),
(19, 1, 'wp_user-settings-time', '1474392290'),
(20, 1, 'closedpostboxes_page', 'a:0:{}'),
(21, 1, 'metaboxhidden_page', 'a:5:{i:0;s:10:"postcustom";i:1;s:16:"commentstatusdiv";i:2;s:11:"commentsdiv";i:3;s:7:"slugdiv";i:4;s:9:"authordiv";}'),
(22, 1, 'closedpostboxes_theme-services', 'a:1:{i:0;s:10:"postcustom";}'),
(23, 1, 'metaboxhidden_theme-services', 'a:1:{i:0;s:7:"slugdiv";}'),
(24, 1, 'nav_menu_recently_edited', '2') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BAbvHEbrTV1RXjqNxVMnErNRxfRi2P1', 'admin', 'jgomez.4net@gmail.com', '', '2016-09-13 15:17:53', '', 0, 'admin') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

