# WordPress MySQL database migration
#
# Generated: Friday 18. May 2018 22:21 UTC
# Hostname: localhost
# Database: `lawyersdirectory`
# URL: //lawyers-directory.com
# Path: /Applications/MAMP/htdocs/lawyer-directory--worpdress
# Tables: wp_commentmeta, wp_comments, wp_links, wp_options, wp_pmxi_files, wp_pmxi_history, wp_pmxi_imports, wp_pmxi_posts, wp_pmxi_templates, wp_postmeta, wp_posts, wp_term_relationships, wp_term_taxonomy, wp_termmeta, wp_terms, wp_usermeta, wp_users
# Table Prefix: wp_
# Post Types: revision, acf-field, acf-field-group, lawfirm, page, post
# Protocol: http
# Multisite: false
# Subsite Export: false
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

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
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


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
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-04-03 17:51:08', '2018-04-03 17:51:08', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0) ;

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
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


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
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=761 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://lawyers-directory.com', 'yes'),
(2, 'home', 'http://lawyers-directory.com', 'yes'),
(3, 'blogname', 'Lawyers Directory', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'garrettcullen@yahoo.com', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:88:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=10&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'starter-theme', 'yes'),
(41, 'stylesheet', 'starter-theme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
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
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '10', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:7:"sidebar";a:0:{}s:16:"category_sidebar";a:0:{}s:15:"archive_sidebar";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(104, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'cron', 'a:6:{i:1526684392;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1526695947;a:1:{s:20:"relevanssi_trim_logs";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1526709069;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1526752279;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1526758388;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(120, 'can_compress_scripts', '1', 'no'),
(135, 'recently_activated', 'a:5:{s:54:"search-by-algolia-instant-relevant-results/algolia.php";i:1526596389;s:49:"rest-api-filter-fields/rest-api-filter-fields.php";i:1526362844;s:29:"elasticpress/elasticpress.php";i:1526356906;s:25:"relevanssi/relevanssi.php";i:1526350495;s:39:"acf-better-search/acf-better-search.php";i:1526349598;}', 'yes'),
(136, 'acf_version', '5.6.10', 'yes'),
(137, 'mtphr_post_duplicator_settings', '', 'yes'),
(140, 'theme_mods_twentyseventeen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1522783944;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(141, 'current_theme', '', 'yes'),
(142, 'theme_mods_lawyerdirectory', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1526659571;s:4:"data";a:1:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(143, 'theme_switched', '', 'yes'),
(148, 'lawfirm-cate_children', 'a:2:{i:2;a:1:{i:0;i:3;}i:4;a:1:{i:0;i:5;}}', 'yes'),
(149, 'acf_to_rest_api_request_version', '3', 'yes'),
(155, 'lawfirm-cat_children', 'a:2:{i:6;a:1:{i:0;i:8;}i:7;a:1:{i:0;i:9;}}', 'yes'),
(229, 'PMXI_Plugin_Options', 'a:30:{s:12:"info_api_url";s:26:"http://www.wpallimport.com";s:16:"dismiss_speed_up";i:1;s:18:"history_file_count";i:10000;s:16:"history_file_age";i:365;s:15:"highlight_limit";i:10000;s:19:"upload_max_filesize";i:2048;s:13:"post_max_size";i:2048;s:14:"max_input_time";i:-1;s:18:"max_execution_time";i:-1;s:7:"dismiss";i:0;s:13:"html_entities";i:0;s:11:"utf8_decode";i:0;s:12:"cron_job_key";s:4:"Mxt7";s:10:"chunk_size";i:32;s:9:"pingbacks";i:1;s:33:"legacy_special_character_handling";i:1;s:14:"case_sensitive";i:1;s:12:"session_mode";s:7:"default";s:17:"enable_ftp_import";i:0;s:16:"large_feed_limit";i:1000;s:26:"cron_processing_time_limit";i:120;s:6:"secure";i:1;s:11:"log_storage";i:5;s:10:"cron_sleep";s:0:"";s:4:"port";s:0:"";s:16:"google_client_id";s:0:"";s:16:"google_signature";s:0:"";s:8:"licenses";a:1:{s:11:"PMXI_Plugin";s:128:"ZmFkNjFhM2M5MzgwY2JhNTc3MWRhMzk0MGViMmM3N2FlOTBlNWFiNzg4NjZkMThhNTBhODUyNzM2Yjg5OTYyN2I1NGY5OTMyNmM4ODc0NDU4MjViOGU5NjBmMzVmOGQx";}s:8:"statuses";a:1:{s:11:"PMXI_Plugin";s:5:"valid";}s:19:"force_stream_reader";i:0;}', 'yes'),
(235, 'pmxi_is_migrated', '4.5.1', 'yes'),
(236, 'wp_all_import_db_version', '4.5.1', 'yes'),
(248, 'PMAI_Plugin_Options', 'a:0:{}', 'yes'),
(251, 'se_meta', 'a:10:{s:7:"blog_id";b:0;s:7:"api_key";b:0;s:8:"auth_key";b:0;s:7:"version";s:5:"8.1.9";s:13:"first_version";s:5:"8.1.9";s:8:"new_user";b:1;s:4:"name";s:0:"";s:5:"email";s:0:"";s:24:"show_options_page_notice";b:0;s:16:"se_global_notice";a:2:{s:5:"title";s:28:"Searching for your car keys?";s:7:"message";s:324:"Well, there are some things our plugin can\'t search for - your car keys, your wallet, a soulmate and <strong>unregistered custom post types</strong> :) <br> It searches for almost everything else, but it also does some other amazing stuff, like ... research. <a href="http://zem.si/1l7q5KS" target="_blank">Check it out!</a>";}}', 'yes'),
(252, 'se_options', 'a:21:{s:21:"se_exclude_categories";s:0:"";s:26:"se_exclude_categories_list";s:0:"";s:16:"se_exclude_posts";s:0:"";s:21:"se_exclude_posts_list";s:0:"";s:18:"se_use_page_search";b:0;s:21:"se_use_comment_search";b:1;s:17:"se_use_tag_search";b:1;s:17:"se_use_tax_search";b:1;s:22:"se_use_category_search";b:1;s:25:"se_approved_comments_only";b:0;s:22:"se_approved_pages_only";b:0;s:21:"se_use_excerpt_search";b:0;s:19:"se_use_draft_search";b:0;s:24:"se_use_attachment_search";b:0;s:14:"se_use_authors";b:0;s:18:"se_use_cmt_authors";b:0;s:22:"se_use_metadata_search";b:1;s:16:"se_use_highlight";b:1;s:18:"se_highlight_color";s:6:"orange";s:18:"se_highlight_style";s:0:"";s:19:"se_research_metabox";a:2:{s:18:"visible_on_compose";b:1;s:23:"external_search_enabled";b:0;}}', 'yes'),
(421, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1526682083;}', 'no'),
(524, 'relevanssi_trim_logs', '10', 'yes'),
(552, 'widget_ep-related-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(553, 'widget_ep-facet', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(565, 'category_children', 'a:0:{}', 'yes'),
(566, 'lawfirmcat_children', 'a:3:{i:31;a:5:{i:0;i:32;i:1;i:35;i:2;i:36;i:3;i:37;i:4;i:39;}i:33;a:2:{i:0;i:34;i:1;i:38;}i:40;a:1:{i:0;i:41;}}', 'yes'),
(607, 'algolia_application_id', '2J8AZGPKXS', 'yes'),
(608, 'algolia_search_api_key', '5972e743c7391b2ac6154581ab1d8ed3', 'yes'),
(609, 'algolia_api_key', '7528d7e4962a10f9f49b34963fbf93e1', 'yes'),
(610, 'algolia_synced_indices_ids', 'a:0:{}', 'yes'),
(611, 'algolia_autocomplete_enabled', 'yes', 'yes'),
(612, 'algolia_autocomplete_config', 'a:1:{i:0;a:7:{s:8:"index_id";s:13:"posts_lawfirm";s:10:"index_name";s:16:"wp_posts_lawfirm";s:5:"label";s:8:"Lawfirms";s:10:"admin_name";s:8:"Lawfirms";s:8:"position";i:10;s:15:"max_suggestions";i:5;s:15:"tmpl_suggestion";s:28:"autocomplete-post-suggestion";}}', 'yes'),
(613, 'algolia_override_native_search', 'instantsearch', 'yes'),
(614, 'algolia_index_name_prefix', 'wp_', 'yes'),
(615, 'algolia_api_is_reachable', 'yes', 'yes'),
(616, 'algolia_powered_by_enabled', 'yes', 'yes'),
(668, '_wpallimport_session_5_', 'a:31:{s:8:"filepath";s:135:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/uploads/86691b159eebef957ce0e74431ea1dfe/Book4.xml";s:16:"parent_import_id";i:0;s:5:"xpath";s:5:"/node";s:9:"feed_type";s:0:"";s:11:"wizard_type";s:3:"new";s:11:"custom_type";s:7:"lawfirm";s:13:"taxonomy_type";s:0:"";s:6:"source";s:217:"a:5:{s:4:"name";s:9:"Book4.csv";s:4:"type";s:6:"upload";s:4:"path";s:63:"/wpallimport/uploads/86691b159eebef957ce0e74431ea1dfe/Book4.csv";s:12:"root_element";s:4:"node";s:12:"first_import";s:19:"2018-05-17 22:09:08";}";s:8:"encoding";s:5:"UTF-8";s:6:"is_csv";s:1:",";s:8:"csv_path";s:135:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/uploads/86691b159eebef957ce0e74431ea1dfe/Book4.csv";s:12:"chunk_number";i:2981;s:3:"log";s:0:"";s:10:"processing";i:0;s:18:"queue_chunk_number";i:0;s:5:"count";i:50547;s:8:"warnings";i:0;s:6:"errors";i:0;s:10:"start_time";i:1526595074;s:11:"local_paths";s:7829:"a:49:{i:0;s:145:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_2_Book4.xml";i:1;s:145:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_3_Book4.xml";i:2;s:145:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_4_Book4.xml";i:3;s:145:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_5_Book4.xml";i:4;s:145:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_6_Book4.xml";i:5;s:145:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_7_Book4.xml";i:6;s:145:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_8_Book4.xml";i:7;s:145:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_9_Book4.xml";i:8;s:146:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_10_Book4.xml";i:9;s:146:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_11_Book4.xml";i:10;s:146:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_12_Book4.xml";i:11;s:146:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_13_Book4.xml";i:12;s:146:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_14_Book4.xml";i:13;s:146:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_15_Book4.xml";i:14;s:146:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_16_Book4.xml";i:15;s:146:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_17_Book4.xml";i:16;s:146:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_18_Book4.xml";i:17;s:146:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_19_Book4.xml";i:18;s:146:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_20_Book4.xml";i:19;s:146:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_21_Book4.xml";i:20;s:146:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_22_Book4.xml";i:21;s:146:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_23_Book4.xml";i:22;s:146:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_24_Book4.xml";i:23;s:146:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_25_Book4.xml";i:24;s:146:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_26_Book4.xml";i:25;s:146:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_27_Book4.xml";i:26;s:146:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_28_Book4.xml";i:27;s:146:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_29_Book4.xml";i:28;s:146:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_30_Book4.xml";i:29;s:146:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_31_Book4.xml";i:30;s:146:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_32_Book4.xml";i:31;s:146:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_33_Book4.xml";i:32;s:146:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_34_Book4.xml";i:33;s:146:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_35_Book4.xml";i:34;s:146:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_36_Book4.xml";i:35;s:146:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_37_Book4.xml";i:36;s:146:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_38_Book4.xml";i:37;s:146:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_39_Book4.xml";i:38;s:146:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_40_Book4.xml";i:39;s:146:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_41_Book4.xml";i:40;s:146:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_42_Book4.xml";i:41;s:146:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_43_Book4.xml";i:42;s:146:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_44_Book4.xml";i:43;s:146:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_45_Book4.xml";i:44;s:146:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_46_Book4.xml";i:45;s:146:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_47_Book4.xml";i:46;s:146:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_48_Book4.xml";i:47;s:146:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_49_Book4.xml";i:48;s:146:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/temp/06a7644e9bf495c3c50bfdfd6d74e9f9/pmxi_chunk_50_Book4.xml";}";s:9:"csv_paths";s:154:"a:1:{i:0;s:135:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/uploads/86691b159eebef957ce0e74431ea1dfe/Book4.csv";}";s:6:"action";s:6:"import";s:14:"elements_cloud";s:656:"a:28:{s:4:"data";i:1;s:4:"node";i:50547;s:8:"column_1";i:50547;s:8:"column_2";i:50547;s:8:"column_3";i:50547;s:8:"column_4";i:50547;s:8:"column_5";i:50547;s:8:"column_6";i:50547;s:8:"column_7";i:50547;s:8:"column_8";i:50547;s:8:"column_9";i:50547;s:9:"column_10";i:50547;s:9:"column_11";i:50547;s:9:"column_12";i:50547;s:9:"column_13";i:50547;s:9:"column_14";i:50547;s:9:"column_15";i:50547;s:9:"column_16";i:50547;s:9:"column_17";i:50547;s:9:"column_18";i:50547;s:9:"column_19";i:50547;s:9:"column_20";i:50547;s:9:"column_21";i:50547;s:9:"column_22";i:50547;s:9:"column_23";i:50547;s:9:"column_24";i:50547;s:9:"column_25";i:50547;s:9:"column_26";i:50547;}";s:7:"pointer";i:981;s:8:"deligate";b:0;s:10:"first_step";s:608:"a:18:{s:4:"type";s:6:"upload";s:11:"wizard_type";s:3:"new";s:11:"custom_type";s:7:"lawfirm";s:15:"show_hidden_cpt";i:0;s:9:"feed_type";s:0:"";s:3:"url";s:0:"";s:3:"ftp";a:1:{s:3:"url";s:6:"ftp://";}s:4:"file";s:0:"";s:8:"reimport";s:0:"";s:18:"is_update_previous";i:0;s:15:"update_previous";N;s:5:"xpath";s:1:"/";s:8:"filepath";s:135:"/Applications/MAMP/htdocs/lawyer-directory--worpdress/wp-content/uploads/wpallimport/uploads/86691b159eebef957ce0e74431ea1dfe/Book4.csv";s:12:"root_element";s:4:"node";s:10:"downloaded";s:0:"";s:13:"auto_generate";s:1:"0";s:8:"template";s:0:"";s:13:"taxonomy_type";s:0:"";}";s:15:"update_previous";i:5;s:7:"options";s:7125:"a:177:{s:4:"type";s:4:"post";s:21:"is_override_post_type";i:0;s:15:"post_type_xpath";s:0:"";s:8:"deligate";s:0:"";s:11:"wizard_type";s:3:"new";s:11:"custom_type";s:7:"lawfirm";s:14:"featured_delim";s:1:",";s:10:"atch_delim";s:1:",";s:25:"is_search_existing_attach";s:1:"0";s:15:"post_taxonomies";a:1:{s:10:"lawfirmcat";s:154:"[{"item_id":"1","left":2,"right":5,"parent_id":null,"xpath":"","assign":true},{"item_id":"2","left":3,"right":4,"parent_id":"1","xpath":"","assign":true}]";}s:6:"parent";s:1:"0";s:23:"is_multiple_page_parent";s:3:"yes";s:18:"single_page_parent";s:0:"";s:5:"order";s:1:"0";s:6:"status";s:7:"publish";s:13:"page_template";s:7:"default";s:25:"is_multiple_page_template";s:3:"yes";s:20:"single_page_template";s:0:"";s:15:"page_taxonomies";a:0:{}s:9:"date_type";s:8:"specific";s:4:"date";s:3:"now";s:10:"date_start";s:3:"now";s:8:"date_end";s:3:"now";s:11:"custom_name";a:0:{}s:12:"custom_value";a:0:{}s:13:"custom_format";a:2:{i:0;s:1:"0";i:1;s:1:"0";}s:14:"custom_mapping";a:0:{}s:17:"serialized_values";a:2:{i:0;s:7:"["",""]";i:1;s:7:"["",""]";}s:20:"custom_mapping_rules";a:2:{i:0;s:2:"[]";i:1;s:2:"[]";}s:14:"comment_status";s:4:"open";s:20:"comment_status_xpath";s:0:"";s:11:"ping_status";s:4:"open";s:17:"ping_status_xpath";s:0:"";s:12:"create_draft";s:2:"no";s:6:"author";s:0:"";s:12:"post_excerpt";s:0:"";s:9:"post_slug";s:0:"";s:11:"attachments";s:0:"";s:19:"is_import_specified";s:1:"0";s:16:"import_specified";s:0:"";s:16:"is_delete_source";i:0;s:8:"is_cloak";i:0;s:10:"unique_key";s:13:"{column_4[1]}";s:14:"tmp_unique_key";s:13:"{column_4[1]}";s:9:"feed_type";s:4:"auto";s:22:"search_existing_images";s:1:"1";s:18:"create_new_records";s:1:"1";s:17:"is_delete_missing";s:1:"0";s:20:"set_missing_to_draft";s:1:"0";s:20:"is_update_missing_cf";s:1:"0";s:22:"update_missing_cf_name";s:0:"";s:23:"update_missing_cf_value";s:0:"";s:20:"is_keep_former_posts";s:2:"no";s:16:"is_update_status";s:1:"1";s:17:"is_update_content";s:1:"1";s:15:"is_update_title";s:1:"1";s:14:"is_update_slug";s:1:"1";s:17:"is_update_excerpt";s:1:"1";s:20:"is_update_categories";s:1:"1";s:16:"is_update_author";s:1:"1";s:24:"is_update_comment_status";s:1:"1";s:19:"is_update_post_type";s:1:"1";s:23:"update_categories_logic";s:11:"full_update";s:15:"taxonomies_list";s:1:"0";s:20:"taxonomies_only_list";s:0:"";s:22:"taxonomies_except_list";s:0:"";s:21:"is_update_attachments";s:1:"1";s:16:"is_update_images";s:1:"1";s:19:"update_images_logic";s:11:"full_update";s:15:"is_update_dates";s:1:"1";s:20:"is_update_menu_order";s:1:"1";s:16:"is_update_parent";s:1:"1";s:19:"is_keep_attachments";s:1:"0";s:12:"is_keep_imgs";s:1:"0";s:20:"do_not_remove_images";s:1:"1";s:23:"is_update_custom_fields";s:1:"1";s:26:"update_custom_fields_logic";s:11:"full_update";s:18:"custom_fields_list";s:1:"0";s:23:"custom_fields_only_list";s:0:"";s:25:"custom_fields_except_list";s:0:"";s:18:"duplicate_matching";s:4:"auto";s:19:"duplicate_indicator";s:5:"title";s:21:"custom_duplicate_name";s:0:"";s:22:"custom_duplicate_value";s:0:"";s:18:"is_update_previous";i:0;s:12:"is_scheduled";s:0:"";s:16:"scheduled_period";s:0:"";s:13:"friendly_name";s:0:"";s:19:"records_per_request";s:2:"20";s:24:"auto_records_per_request";i:1;s:18:"auto_rename_images";s:1:"0";s:25:"auto_rename_images_suffix";s:0:"";s:11:"images_name";s:8:"filename";s:11:"post_format";s:8:"standard";s:17:"post_format_xpath";s:0:"";s:8:"encoding";s:5:"UTF-8";s:9:"delimiter";s:1:",";s:16:"image_meta_title";s:0:"";s:22:"image_meta_title_delim";s:1:",";s:18:"image_meta_caption";s:0:"";s:24:"image_meta_caption_delim";s:1:",";s:14:"image_meta_alt";s:0:"";s:20:"image_meta_alt_delim";s:1:",";s:22:"image_meta_description";s:0:"";s:28:"image_meta_description_delim";s:1:",";s:34:"image_meta_description_delim_logic";s:8:"separate";s:12:"status_xpath";s:0:"";s:15:"download_images";s:3:"yes";s:17:"converted_options";s:1:"1";s:15:"update_all_data";s:3:"yes";s:12:"is_fast_mode";s:1:"0";s:9:"chuncking";s:1:"1";s:17:"import_processing";s:4:"ajax";s:26:"processing_iteration_logic";s:4:"auto";s:28:"records_per_request_detected";i:0;s:16:"save_template_as";s:1:"0";s:5:"title";s:13:"{column_4[1]}";s:7:"content";s:0:"";s:4:"name";s:0:"";s:18:"is_keep_linebreaks";s:1:"1";s:13:"is_leave_html";s:1:"0";s:14:"fix_characters";i:0;s:9:"pid_xpath";s:0:"";s:10:"slug_xpath";s:0:"";s:11:"title_xpath";s:0:"";s:14:"featured_image";s:0:"";s:23:"download_featured_image";s:0:"";s:23:"download_featured_delim";s:1:",";s:22:"gallery_featured_image";s:0:"";s:22:"gallery_featured_delim";s:1:",";s:11:"is_featured";s:1:"1";s:20:"set_image_meta_title";s:1:"0";s:22:"set_image_meta_caption";s:1:"0";s:18:"set_image_meta_alt";s:1:"0";s:26:"set_image_meta_description";s:1:"0";s:18:"auto_set_extension";s:1:"0";s:13:"new_extension";s:0:"";s:9:"tax_logic";a:2:{s:10:"lawfirmcat";s:6:"single";s:11:"lawfirmtags";s:6:"single";}s:10:"tax_assing";a:2:{s:10:"lawfirmcat";s:1:"0";s:11:"lawfirmtags";s:1:"0";}s:11:"term_assing";a:2:{s:10:"lawfirmcat";s:1:"1";s:11:"lawfirmtags";s:1:"1";}s:20:"multiple_term_assing";a:2:{s:10:"lawfirmcat";s:1:"1";s:11:"lawfirmtags";s:1:"1";}s:23:"tax_hierarchical_assing";a:1:{s:10:"lawfirmcat";a:2:{i:0;s:1:"1";s:6:"NUMBER";s:1:"1";}}s:34:"tax_hierarchical_last_level_assign";a:1:{s:10:"lawfirmcat";s:1:"0";}s:16:"tax_single_xpath";a:2:{s:10:"lawfirmcat";s:0:"";s:11:"lawfirmtags";s:0:"";}s:18:"tax_multiple_xpath";a:2:{s:10:"lawfirmcat";s:0:"";s:11:"lawfirmtags";s:0:"";}s:22:"tax_hierarchical_xpath";a:1:{s:10:"lawfirmcat";a:2:{i:0;s:0:"";i:1;s:0:"";}}s:18:"tax_multiple_delim";a:2:{s:10:"lawfirmcat";s:1:",";s:11:"lawfirmtags";s:1:",";}s:22:"tax_hierarchical_delim";a:1:{s:10:"lawfirmcat";s:1:">";}s:25:"tax_manualhierarchy_delim";a:1:{s:10:"lawfirmcat";s:1:",";}s:29:"tax_hierarchical_logic_entire";a:1:{s:10:"lawfirmcat";s:1:"0";}s:29:"tax_hierarchical_logic_manual";a:1:{s:10:"lawfirmcat";s:1:"0";}s:18:"tax_enable_mapping";a:2:{s:10:"lawfirmcat";s:1:"0";s:11:"lawfirmtags";s:1:"0";}s:25:"tax_is_full_search_single";a:2:{s:10:"lawfirmcat";s:1:"0";s:11:"lawfirmtags";s:1:"0";}s:27:"tax_is_full_search_multiple";a:2:{s:10:"lawfirmcat";s:1:"0";s:11:"lawfirmtags";s:1:"0";}s:29:"tax_assign_to_one_term_single";a:2:{s:10:"lawfirmcat";s:1:"0";s:11:"lawfirmtags";s:1:"0";}s:31:"tax_assign_to_one_term_multiple";a:2:{s:10:"lawfirmcat";s:1:"0";s:11:"lawfirmtags";s:1:"0";}s:11:"tax_mapping";a:2:{s:10:"lawfirmcat";s:2:"[]";s:11:"lawfirmtags";s:2:"[]";}s:17:"tax_logic_mapping";a:2:{s:10:"lawfirmcat";s:1:"0";s:11:"lawfirmtags";s:1:"0";}s:31:"is_tax_hierarchical_group_delim";a:1:{s:10:"lawfirmcat";s:1:"0";}s:28:"tax_hierarchical_group_delim";a:1:{s:10:"lawfirmcat";s:1:"|";}s:12:"nested_files";a:0:{}s:17:"xml_reader_engine";s:1:"0";s:13:"taxonomy_type";s:0:"";s:15:"taxonomy_parent";s:0:"";s:13:"taxonomy_slug";s:4:"auto";s:19:"taxonomy_slug_xpath";s:0:"";s:15:"import_img_tags";i:1;s:3:"acf";a:1:{i:4;s:1:"0";}s:6:"fields";a:0:{}s:23:"is_multiple_field_value";a:0:{}s:14:"multiple_value";a:0:{}s:16:"fields_delimiter";a:0:{}s:13:"is_update_acf";s:1:"1";s:16:"update_acf_logic";s:11:"full_update";s:8:"acf_list";s:1:"0";s:13:"acf_only_list";s:0:"";s:15:"acf_except_list";s:0:"";}";s:18:"is_loaded_template";s:0:"";s:10:"acf_groups";s:57:"a:1:{i:0;a:2:{s:2:"ID";i:4;s:5:"title";s:9:"Attorneys";}}";s:10:"history_id";i:8;}', 'no'),
(669, '_wpallimport_session_expires_5_', '1526767873', 'no'),
(709, 'active_plugins', 'a:8:{i:0;s:39:"wp-migrate-db-pro/wp-migrate-db-pro.php";i:1;s:41:"acf-to-rest-api/class-acf-to-rest-api.php";i:2;s:34:"advanced-custom-fields-pro/acf.php";i:3;s:38:"post-duplicator/m4c-postduplicator.php";i:4;s:19:"rest-api/plugin.php";i:5;s:39:"search-everything/search-everything.php";i:6;s:39:"wp-all-import-pro/wp-all-import-pro.php";i:8;s:35:"wpai-acf-add-on/wpai-acf-add-on.php";}', 'yes'),
(710, 'upload_path', '', 'yes'),
(711, 'upload_url_path', '', 'yes'),
(722, 'wp-all-import-pro_85b8495febade7a221f67b0bca7d59d9', 'O:8:"stdClass":15:{s:11:"new_version";s:5:"4.5.2";s:14:"stable_version";s:5:"4.5.2";s:4:"name";s:13:"WP All Import";s:4:"slug";s:17:"wp-all-import-pro";s:3:"url";s:67:"http://www.wpallimport.com/downloads/wp-all-import-pro/?changelog=1";s:12:"last_updated";s:19:"2018-05-13 11:10:29";s:8:"homepage";s:55:"http://www.wpallimport.com/downloads/wp-all-import-pro/";s:7:"package";s:0:"";s:13:"download_link";s:0:"";s:8:"sections";a:2:{s:11:"description";s:129:"<p>Learn more about WP All Import at <a href="https://www.wpallimport.com/" target="_blank">https://www.wpallimport.com/</a></p>\n";s:9:"changelog";s:18347:"<p>4.5.2</p>\n<ul>\n<li>new feature: Automatic Scheduling - run imports on a schedule</li>\n<li>improvement: search for existing images based on remote image URL</li>\n<li>improvement: various backend improvements to image imports</li>\n<li>improvement: various import speed optimizations</li>\n<li>bug fix: remove deprecated function calls for PHP 7.2 compatibility</li>\n<li>bug fix: delete db tables when mu blog deleted</li>\n<li>bug fix: remove BOM from import templates</li>\n<li>bug fix: saving CSV delimiter when changing import file</li>\n</ul>\n<p>4.5.1</p>\n<ul>\n<li>improvement: import images from dropbox</li>\n<li>improvement: skips import process to the first specific record</li>\n<li>improvement: added new filter wp_all_import_is_render_whole_xml_tree</li>\n<li>improvement: added wp_all_import_images_uploads_dir filter into add-ons api</li>\n<li>bug fix: conflict with InfiniteWP</li>\n<li>bug fix: oddity update notification for Link cloaking add-on</li>\n<li>bug fix: load functions before pmxi_before_xml_import</li>\n<li>bug fix: do not re-count category terms when post imported as draft</li>\n<li>bug fix: import base64 encoded images in add-ons</li>\n<li>bug fix: woo order custom fields auto-detection</li>\n<li>security fix - XSS exploit (Special thanks to Mardan Muhidin for reporting)</li>\n<li>security fix - XSS exploit (Special thanks to Yuji Tounai for reporting)</li>\n</ul>\n<p>4.5.0</p>\n<ul>\n<li>improvement: Make the WooCo Short Description expandable</li>\n<li>improvement: show notice when function editor is not saved</li>\n<li>improvement: added timestamp to import log lines</li>\n<li>improvement: added support for bmp images</li>\n<li>improvement: added new action pmxi_before_post_import_{$addon}</li>\n<li>security fix: patch XSS exploit</li>\n<li>bug fix: import pages hierarchy</li>\n<li>bug fix: error in pclzip.lib.php with php 7.1</li>\n<li>bug fix: import taxonomies hierarchy</li>\n<li>bug fix: json to xml convertation</li>\n<li>bug fix: import password protected feeds with port defined</li>\n</ul>\n<p>4.4.9</p>\n<ul>\n<li>improvement: custom fields detection</li>\n<li>improvement: new action wp_all_import_post_skipped</li>\n<li>improvement: updated history page title</li>\n<li>improvement: optimize large imports deletion</li>\n<li>improvement: added import friendly name to confirm screen</li>\n<li>improvement: sql query optimization on manage imports screen</li>\n<li>improvement: added wp_all_import_shard_delay filter</li>\n<li>improvement: added wp_all_import_images_uploads_dir filter</li>\n<li>bug fix: compatibility with WPML</li>\n<li>bug fix: generation image filename</li>\n<li>bug fix: wp_all_import_specified_records filter</li>\n</ul>\n<p>4.4.8</p>\n<ul>\n<li>improvement: added hungarian translation</li>\n<li>bug fix: csv headers generation</li>\n<li>bug fix: import template from Import Settings works again</li>\n<li>bug fix: users no longer logged out when user is update via import</li>\n<li>bug fix: images with encoded quotes</li>\n</ul>\n<p>4.4.7</p>\n<ul>\n<li>bug fix: cron job completed early for imports with xpath</li>\n<li>bug fix: csv headers with non latin characters</li>\n</ul>\n<p>4.4.6</p>\n<ul>\n<li>bug fix: cron job un-triggered on timeout error</li>\n</ul>\n<p>4.4.5</p>\n<ul>\n<li>bug fix: import xls from dropbox</li>\n<li>bug fix: template preview</li>\n</ul>\n<p>4.4.4</p>\n<ul>\n<li>improvement: new filter \'wp_all_import_phpexcel_delimiter\'</li>\n<li>improvement: new filter \'wp_all_import_is_trim_parsed_data\'</li>\n<li>improvement: added new \'filter wp_all_import_skip_x_csv_rows\'</li>\n<li>improvement: added csv delimiter setting to import options screen</li>\n<li>bug fix: taxonomies dropdown list</li>\n<li>bug fix: cron job was never untriggered when calling to undefined function</li>\n<li>bug fix: taxonomies preview</li>\n<li>bug fix: import duplicate tags</li>\n<li>bug fix: importing taxonomy terms that already exist in a different taxonomies</li>\n</ul>\n<p>4.4.3</p>\n<ul>\n<li>bug fix: parsing images for newly added records</li>\n<li>bug fix: the event calendar conflict</li>\n</ul>\n<p>4.4.2</p>\n<ul>\n<li>improvement: added new filter wp_all_import_phpexcel_object to modify excel data before import</li>\n<li>bug fix: search for images ending with underscores in media</li>\n<li>bug fix: import hierarchical posts and pages</li>\n<li>bug fix: import custom post type page templates</li>\n<li>bug fix: matching taxonomies by name</li>\n<li>bug fix: custom fields validation</li>\n</ul>\n<p>4.4.1</p>\n<ul>\n<li>improvement: compatibility with PHP 7.x</li>\n<li>improvement: search for existing attachments option</li>\n<li>improvement: new filter for file path of functions.php file</li>\n<li>bug fix: images preview</li>\n<li>bug fix: improved matching for images similar to image.com.png</li>\n</ul>\n<p>4.4.0</p>\n<ul>\n<li>new feature: added import taxonomies feature</li>\n<li>bug fix: hierarchy taxonomies preview</li>\n<li>bug fix: empty logs folder generation</li>\n<li>bug fix: \'Keep images currently in Media Library\' option for add-ons</li>\n<li>bug fix: import bundles with gz files</li>\n<li>bug fix: custom functions for attachments</li>\n</ul>\n<p>4.3.2</p>\n<ul>\n<li>improvement: \'Force Stream Reader\' setting</li>\n<li>improvement: tar + gz compression support for remote feeds</li>\n<li>improvement: new filter \'wp_all_import_auto_create_csv_headers\'</li>\n<li>improvement: new filter \'wp_all_import_is_base64_images_allowed\'</li>\n<li>improvement: new filter \'wp_all_import_set_post_terms\' to leave a specific category alone when a post is being updated</li>\n<li>bug fix: cron import timeout when set missing outofstock option is enabled</li>\n<li>bug fix: nodes navigation for xpath like /news/item</li>\n<li>bug fix: frozen import template screen for cyrillic XML feeds</li>\n<li>bug fix: conflict between taxonomies & user import</li>\n<li>bug fix: creating users with the same email</li>\n<li>bug fix: enable keep line breaks option by default</li>\n<li>bug fix: composer namespace conflict</li>\n<li>bug fix: images preview when wp is in subdirectory</li>\n<li>bug fix: \'Instead of deletion, set Custom Field\' option for users import</li>\n</ul>\n<p>4.3.1</p>\n<ul>\n<li>fixed issue with libxml 2.9.3</li>\n<li>execute \'pmxi_article_data\' filter for all posts ( new & existing )</li>\n</ul>\n<p>4.3.0</p>\n<ul>\n<li>added de_CH translation</li>\n<li>added support for .svg images</li>\n<li>added possibility for import excerpts for pages</li>\n<li>added new filter \'wp_all_import_specified_records\'</li>\n<li>added new filter \'wp_all_import_is_post_to_delete\'</li>\n<li>fixed saving function editor</li>\n<li>fixed custom fields mapping rules with \'0\' value</li>\n<li>fixed termination of the import if the "Delete source XML file after importing" is checked</li>\n<li>disable XMLReader stream filter for HHVM</li>\n<li>improve search for existing images in media gallery</li>\n</ul>\n<p>4.2.9</p>\n<ul>\n<li>fixed error messages on step 4</li>\n<li>fixed renaming image files</li>\n<li>fixed delete missing records option</li>\n<li>fixed csv to xml convertation in case when there are some equal titles in csv file</li>\n<li>stop using $HTTP_RAW_POST_DATA for PHP 7.x compatibility</li>\n<li>added new action \'pmxi_missing_post\'</li>\n</ul>\n<p>4.2.8</p>\n<ul>\n<li>update required database tables</li>\n</ul>\n<p>4.2.7</p>\n<ul>\n<li>fixed detecting root nodes with colons in names</li>\n<li>fixed php notice "Undefined variable: existing_meta_keys"</li>\n<li>fixed rendering special chars in function editor</li>\n<li>fixed css for WordPress 4.4</li>\n<li>added feature to delete only posts not import</li>\n<li>added feature to download template/bundle from import settings</li>\n<li>added new option for importing images "Use images currently in Media Library"</li>\n<li>remove periods to hyphens convertation in image name</li>\n<li>auto detect dropbox URLs and change to dl=1</li>\n<li>changed comma delimiting behavior/UI in image meta</li>\n</ul>\n<p>4.2.6</p>\n<ul>\n<li>fixed preview prices</li>\n<li>fixed counting XML nodes</li>\n</ul>\n<p>4.2.5</p>\n<ul>\n<li>fixed \'Delete source XML file after importing\' option</li>\n<li>fixed ‘Instead of deletion, change post status to Draft’ option</li>\n<li>fixed reading XML files with NS in element names</li>\n<li>added ‘WooCommerce Order’ to post type list on step 1</li>\n</ul>\n<p>4.2.4</p>\n<ul>\n<li>fixed duplicate matching by custom field</li>\n<li>fixed error messages on step1 in case when server throws fatal error e.q. time limit exception</li>\n<li>fixed option "Delete posts that are no longer present in your file", now it works with empty CSV files which has only one header row</li>\n<li>fixed importing custom fields with the same name</li>\n<li>fixed custom functions in images preview</li>\n<li>added es_ES translation</li>\n<li>added de_DE translation</li>\n<li>added iterative ajax delete process ( deleting associated posts )</li>\n</ul>\n<p>4.2.3</p>\n<ul>\n<li>Fixed removing uploaded XML source file on re-run process</li>\n</ul>\n<p>4.2.2</p>\n<ul>\n<li>Fixed saving function editor</li>\n</ul>\n<p>4.2.1</p>\n<ul>\n<li>fixed duplicate matching by custom field ( cron )</li>\n<li>fixed converting image filenames to lowercase</li>\n<li>fixed import html to image description</li>\n<li>fixed import _wp_old_slug</li>\n<li>added Post ID to manual record matching</li>\n<li>added \'Comment status\' to \'Choose data to update\' section</li>\n<li>added \'cancel\' to cron API /wp-cron.php?import_key=Kt&amp;import_id=407&amp;action=cancel</li>\n<li>added function editor</li>\n</ul>\n<p>4.2.0</p>\n<ul>\n<li>fixed parsing CSV with empty lines</li>\n<li>fixed parsing multiple IF statements</li>\n<li>fixed preview in case when ‘Disable the visual editor when writing’ is enabled</li>\n<li>fixed conflict with WooCommerce - Store Exporter Deluxe</li>\n<li>added possibility to start synchronized cron requests &amp;sync=1</li>\n<li>added notifications for required addons</li>\n<li>added support for wp all export bundle</li>\n<li>added support for manual import bundle</li>\n<li>added feature \'click to download import file\'</li>\n<li>added validation for excerpt and images sections</li>\n<li>added auto-detect a broken Unique ID notification</li>\n<li>added import template notifications</li>\n<li>removed support for importing WooCommerce Orders</li>\n<li>changed absolute paths to relative in db</li>\n<li>updated cron response messages</li>\n<li>moved uploaded files to \'Use existing\' dropdown</li>\n</ul>\n<p>4.1.7</p>\n<ul>\n<li>added support for Excel files ( .xls, .xlsx )</li>\n<li>added new option \'Do not remove images from media gallery\' on import<br />\nsettings screen</li>\n<li>added new options to taxonomies import \'Try to match terms to<br />\nexisting child Product Categories\' &amp; \'Only assign Products to the<br />\nimported Product Category, not the entire hierarchy\'</li>\n<li>fixed excessive update requests</li>\n<li>added options to \'Delete associated posts</li>\n</ul>\n<p>4.1.6</p>\n<ul>\n<li>load ini_set only on plugins pages</li>\n<li>fixed saving import template</li>\n<li>added import post format via XPath</li>\n</ul>\n<p>4.1.5</p>\n<ul>\n<li>fixed import page template</li>\n<li>added a second argument to pmxi_saved_post action ( SimpleXML object ) of current record</li>\n</ul>\n<p>4.1.4</p>\n<ul>\n<li>fixed Apply mapping rules before splitting via separator symbol for manual hierarchy</li>\n<li>fixed path equal or less than</li>\n<li>fixed changing unique key when moving back from confirm screen</li>\n<li>fixed override page template</li>\n<li>fixed unlink images on deleting missing posts</li>\n<li>updated wp_all_import_is_post_to_update filter with second argument XML node as array</li>\n<li>updated compatibility with WP All Export</li>\n<li>added filter wp_all_import_feed_type</li>\n<li>added possibility to use php to calculate URL on first step [add_to_url("https://google.com/")]</li>\n</ul>\n<p>4.1.3</p>\n<ul>\n<li>fixed un triggering issue on cron jobs for empty files</li>\n<li>changed updater priority from 10 to 20</li>\n<li>added post parent option for all hierarchical CPT</li>\n</ul>\n<p>4.1.2</p>\n<ul>\n<li>Important security fixes - additional hardening, prevention of blind SQL injection and reflected XSS attacks</li>\n</ul>\n<p>4.1.1</p>\n<ul>\n<li>critical security fix - stopping non-logged in users from accessing adminInit https://www.wpallimport.com/2015/02/wp-import-4-1-1-mandatory-security-update/</li>\n<li>added new filter wp_all_import_is_post_to_update to skip needed posts add_filter(\'wp_all_import_is_post_to_update\', \'is_post_to_update\', 10, 1);</li>\n<li>added new option Search for existing attachments to prevent duplicates in media library</li>\n<li>fixed imports pagination</li>\n<li>fixed preview taxonomies</li>\n<li>fixed upload folder creation when \'upload_dir\' filter defined</li>\n<li>fixed db schema for wpmu when new site added</li>\n</ul>\n<p>4.1.0</p>\n<ul>\n<li>fixed cron execution when titles are not defined</li>\n<li>added an option to separate hierarchy groups via symbol</li>\n<li>added separator symbol for manually nested taxonomies</li>\n</ul>\n<p>4.0.9</p>\n<ul>\n<li>added license key setting for automatic update</li>\n<li>added option search images through attachments</li>\n<li>added option assign term to the bottom level term in the hierarchy</li>\n</ul>\n<p>4.0.8</p>\n<ul>\n<li>fixed taxonomies preview</li>\n<li>fixed import meta description for images</li>\n<li>added feature to assign posts to needed terms</li>\n<li>added new option for taxonomies Apply mapping rules before splitting via separator symbol</li>\n<li>added set with XPath option for comment status, ping status, page parent, page template</li>\n</ul>\n<p>4.0.7</p>\n<ul>\n<li>fixed feed detection for rss chanels</li>\n<li>fixed parsing json data</li>\n<li>fixed add only new images option</li>\n<li>fixed delete missing records option</li>\n<li>added ability to import custom fields with the same name</li>\n<li>added port setting</li>\n</ul>\n<p>4.0.6</p>\n<ul>\n<li>fixed encoding for taxonomies mapping</li>\n<li>optimization for delete missing records option</li>\n<li>fixed feed type auto-detection</li>\n<li>fixed changes that related to _wp_page_template meta data</li>\n</ul>\n<p>4.0.5</p>\n<ul>\n<li>fixed template parsing when php function arguments contains an array()</li>\n<li>fixed error msg when feed is html page e.g. page 404</li>\n<li>fixed xpath building</li>\n<li>update hierarchy taxonomies options</li>\n</ul>\n<p>4.0.4</p>\n<ul>\n<li>changed main file name to wp-all-import-pro.php</li>\n<li>fixed feed type auto-detection</li>\n<li>fixed bug with empty unique keys</li>\n</ul>\n<p>4.0.3</p>\n<ul>\n<li>fixed re-count record when a file has been changed at an import setting screen</li>\n<li>fixed database schema auto-update</li>\n<li>fixed uploading large files</li>\n<li>fixed auto-detecting root element</li>\n<li>fixed log storage in database</li>\n<li>fixed cron execution when "do not create new records" option is enabled</li>\n<li>fixed feed type detection</li>\n<li>fixed unlink attachment source when posts updated/deleted</li>\n<li>fixed specialchars in taxnomies/categories mapping</li>\n<li>updated taxonomies hierarchy settings</li>\n<li>added a limit 10 to the existing meta values</li>\n</ul>\n<p>4.0.2</p>\n<ul>\n<li>speed up the import of taxonomies/categories</li>\n<li>added taxonomies/categories mapping feature</li>\n<li>added custom fields auto-detection feature</li>\n<li>added custom fields mapping feature</li>\n<li>added images/taxonomies preview feature</li>\n<li>added unofficial support for more file formats - json &amp; sql</li>\n<li>added new setting (secure mode) to protect your files</li>\n<li>better import logs</li>\n<li>updated design</li>\n</ul>\n<p>3.4.2</p>\n<ul>\n<li>fixed navigation bug</li>\n<li>fixed search duplicates</li>\n<li>fixed duplicate categories</li>\n<li>fixed path builder for element attributes</li>\n<li>fixed cron processing for already uploaded files (XML)</li>\n<li>added taxonomies for pages</li>\n</ul>\n<p>3.4.1</p>\n<ul>\n<li>fixed pmxi_delete_post action: this action was executed after posts were deleted</li>\n<li>fixed import menu order &amp; post parent for pages</li>\n<li>fixed import log for continue import feature</li>\n<li>added is update author option</li>\n<li>fixed post formats</li>\n<li>fixed cron processing: WP_Error object was not initialized</li>\n<li>fixed cron processing for import where XPath filtering is defined</li>\n<li>fixed UTC dates on manage imports page</li>\n</ul>\n<p>3.4.0</p>\n<ul>\n<li>fixed: import empty content</li>\n<li>fixed: log files</li>\n<li>fixed: detect image extension</li>\n<li>fixed: terms hierarchy on cron job execution</li>\n</ul>\n<p>3.3.9</p>\n<ul>\n<li>added: feature to do not escape shortcodes</li>\n<li>fixed: pre-processing logic</li>\n<li>fixed: downloading images with unicode url</li>\n<li>fixed: clear non ASCII/invalid symbols in CSV files</li>\n<li>fixed: import option \'Instead of using original image file name, set file name(s)\'</li>\n</ul>\n<p>3.3.8</p>\n<ul>\n<li>fixed: admin notices</li>\n<li>fixed: creation duplicates draft post via cron</li>\n<li>fixed: images with encoded symbols</li>\n<li>fixed: upload file via URL</li>\n<li>fixed: php notices</li>\n<li>added: compatibility with WP 3.9</li>\n</ul>\n<p>3.3.7</p>\n<ul>\n<li>updated convertation CSV to XML with XMLWriter</li>\n<li>fixed import *.zip files</li>\n<li>fixed xpath helper on step 2</li>\n<li>fixed showing zeros in XML tree</li>\n<li>allow post content to be empty on step 3</li>\n<li>added autodetect session mode</li>\n<li>delete deprecated settings my csv contain html code and case sensitivity</li>\n<li>fixed deleting history files</li>\n<li>fixed autodetect image extensions</li>\n<li>fixed increasing SQL query length</li>\n<li>added error messages</li>\n<li>fixed "High Speed Small File Processing" option</li>\n</ul>\n<p>3.3.6</p>\n<ul>\n<li>fixed: multiple cron execution</li>\n<li>fixed: load options template</li>\n<li>fixed: session initialization</li>\n<li>fixed: import search</li>\n<li>fixed: attachment author on cron execution</li>\n<li>fixed: download images option</li>\n<li>added: errors messages to the log</li>\n<li>added: "not contains" filter to step 2</li>\n<li>added: compatibility with categories mapping addon</li>\n<li>updated: cpt navigation on step 4</li>\n</ul>\n<p>3.3.5</p>\n<ul>\n<li>fixed bug with cron processing</li>\n<li>fixed bug with saving wrong image name</li>\n<li>added serialized custom fields feature</li>\n<li>added compatibility with user import add-on</li>\n<li>added compatibility with 3rd party developers</li>\n<li>added new setting \'Cron processing time limit\'</li>\n</ul>\n";}s:7:"banners";a:2:{s:4:"high";s:55:"http://ps.w.org/wp-all-import/assets/banner-772x250.png";s:3:"low";s:0:"";}s:8:"requires";s:5:"3.6.1";s:6:"tested";s:5:"4.9.5";s:6:"author";s:6:"Soflyy";s:12:"contributors";O:8:"stdClass":2:{s:6:"soflyy";s:38:"https://profiles.wordpress.org/soflyy/";s:11:"wpallimport";s:43:"https://profiles.wordpress.org/wpallimport/";}}', 'no'),
(723, 'wp-all-import-pro_timeout_85b8495febade7a221f67b0bca7d59d9', '1526662810', 'yes'),
(733, 'theme_mods_starter-theme', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;}', 'yes') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_pmxi_files`
#

DROP TABLE IF EXISTS `wp_pmxi_files`;


#
# Table structure of table `wp_pmxi_files`
#

CREATE TABLE `wp_pmxi_files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `import_id` bigint(20) unsigned NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci,
  `path` text COLLATE utf8mb4_unicode_520_ci,
  `registered_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_pmxi_files`
#
INSERT INTO `wp_pmxi_files` ( `id`, `import_id`, `name`, `path`, `registered_on`) VALUES
(10, 4, 'Lawyers_V2_Sheet1_7_.csv', '/wpallimport/uploads/5bd041c364ae851160c489d804d477f9/Lawyers_V2_Sheet1_7_.xml', '2018-05-15 04:16:26'),
(11, 5, 'Book4.csv', '/wpallimport/uploads/86691b159eebef957ce0e74431ea1dfe/Book4.xml', '2018-05-17 22:10:45') ;

#
# End of data contents of table `wp_pmxi_files`
# --------------------------------------------------------



#
# Delete any existing table `wp_pmxi_history`
#

DROP TABLE IF EXISTS `wp_pmxi_history`;


#
# Table structure of table `wp_pmxi_history`
#

CREATE TABLE `wp_pmxi_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `import_id` bigint(20) unsigned NOT NULL,
  `type` enum('manual','processing','trigger','continue','') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `time_run` text COLLATE utf8mb4_unicode_520_ci,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `summary` text COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_pmxi_history`
#
INSERT INTO `wp_pmxi_history` ( `id`, `import_id`, `type`, `time_run`, `date`, `summary`) VALUES
(4, 4, 'manual', '59', '2018-05-15 01:21:10', '503 Lawfirms created 3 updated 0 deleted 0 skipped'),
(5, 4, 'manual', '76', '2018-05-15 01:24:11', '0 Lawfirms created 506 updated 0 deleted 0 skipped'),
(6, 4, 'manual', '79', '2018-05-15 01:28:04', '0 Lawfirms created 506 updated 0 deleted 0 skipped'),
(7, 4, 'manual', '75', '2018-05-15 04:16:26', '20 Lawfirms created 505 updated 0 deleted 0 skipped'),
(8, 5, 'manual', '700', '2018-05-17 22:10:45', '1176 Lawfirms created 1804 updated 0 deleted 0 skipped') ;

#
# End of data contents of table `wp_pmxi_history`
# --------------------------------------------------------



#
# Delete any existing table `wp_pmxi_imports`
#

DROP TABLE IF EXISTS `wp_pmxi_imports`;


#
# Table structure of table `wp_pmxi_imports`
#

CREATE TABLE `wp_pmxi_imports` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_import_id` bigint(20) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8mb4_unicode_520_ci,
  `friendly_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `type` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `feed_type` enum('xml','csv','zip','gz','') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `path` text COLLATE utf8mb4_unicode_520_ci,
  `xpath` text COLLATE utf8mb4_unicode_520_ci,
  `options` longtext COLLATE utf8mb4_unicode_520_ci,
  `registered_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `root_element` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `processing` tinyint(1) NOT NULL DEFAULT '0',
  `executing` tinyint(1) NOT NULL DEFAULT '0',
  `triggered` tinyint(1) NOT NULL DEFAULT '0',
  `queue_chunk_number` bigint(20) NOT NULL DEFAULT '0',
  `first_import` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `count` bigint(20) NOT NULL DEFAULT '0',
  `imported` bigint(20) NOT NULL DEFAULT '0',
  `created` bigint(20) NOT NULL DEFAULT '0',
  `updated` bigint(20) NOT NULL DEFAULT '0',
  `skipped` bigint(20) NOT NULL DEFAULT '0',
  `deleted` bigint(20) NOT NULL DEFAULT '0',
  `canceled` tinyint(1) NOT NULL DEFAULT '0',
  `canceled_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `failed` tinyint(1) NOT NULL DEFAULT '0',
  `failed_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `settings_update_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_activity` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iteration` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_pmxi_imports`
#
INSERT INTO `wp_pmxi_imports` ( `id`, `parent_import_id`, `name`, `friendly_name`, `type`, `feed_type`, `path`, `xpath`, `options`, `registered_on`, `root_element`, `processing`, `executing`, `triggered`, `queue_chunk_number`, `first_import`, `count`, `imported`, `created`, `updated`, `skipped`, `deleted`, `canceled`, `canceled_on`, `failed`, `failed_on`, `settings_update_on`, `last_activity`, `iteration`) VALUES
(4, 0, 'Lawyers_V2_Sheet1_7_.csv', '', 'upload', '', '/wpallimport/uploads/5bd041c364ae851160c489d804d477f9/Lawyers_V2_Sheet1_7_.csv', '/node', 'a:177:{s:4:"type";s:4:"post";s:21:"is_override_post_type";i:0;s:15:"post_type_xpath";s:0:"";s:8:"deligate";s:0:"";s:11:"wizard_type";s:3:"new";s:11:"custom_type";s:7:"lawfirm";s:14:"featured_delim";s:1:",";s:10:"atch_delim";s:1:",";s:25:"is_search_existing_attach";s:1:"0";s:15:"post_taxonomies";a:1:{s:10:"lawfirmcat";s:187:"[{"item_id":"1","left":2,"right":5,"parent_id":null,"xpath":"{lawfirmstate[1]}","assign":true},{"item_id":"2","left":3,"right":4,"parent_id":"1","xpath":"{lawfirmcity[1]}","assign":true}]";}s:6:"parent";s:1:"0";s:23:"is_multiple_page_parent";s:3:"yes";s:18:"single_page_parent";s:0:"";s:5:"order";s:1:"0";s:6:"status";s:7:"publish";s:13:"page_template";s:7:"default";s:25:"is_multiple_page_template";s:3:"yes";s:20:"single_page_template";s:0:"";s:15:"page_taxonomies";a:0:{}s:9:"date_type";s:8:"specific";s:4:"date";s:3:"now";s:10:"date_start";s:3:"now";s:8:"date_end";s:3:"now";s:11:"custom_name";a:0:{}s:12:"custom_value";a:0:{}s:13:"custom_format";a:2:{i:0;s:1:"0";i:1;s:1:"0";}s:14:"custom_mapping";a:0:{}s:17:"serialized_values";a:2:{i:0;s:7:"["",""]";i:1;s:7:"["",""]";}s:20:"custom_mapping_rules";a:2:{i:0;s:2:"[]";i:1;s:2:"[]";}s:14:"comment_status";s:4:"open";s:20:"comment_status_xpath";s:0:"";s:11:"ping_status";s:4:"open";s:17:"ping_status_xpath";s:0:"";s:12:"create_draft";s:2:"no";s:6:"author";s:0:"";s:12:"post_excerpt";s:0:"";s:9:"post_slug";s:0:"";s:11:"attachments";s:0:"";s:19:"is_import_specified";s:1:"0";s:16:"import_specified";s:0:"";s:16:"is_delete_source";i:0;s:8:"is_cloak";i:0;s:10:"unique_key";s:12:"{lawfirm[1]}";s:14:"tmp_unique_key";s:12:"{lawfirm[1]}";s:9:"feed_type";s:4:"auto";s:22:"search_existing_images";s:1:"1";s:18:"create_new_records";s:1:"1";s:17:"is_delete_missing";s:1:"0";s:20:"set_missing_to_draft";s:1:"0";s:20:"is_update_missing_cf";s:1:"0";s:22:"update_missing_cf_name";s:0:"";s:23:"update_missing_cf_value";s:0:"";s:20:"is_keep_former_posts";s:2:"no";s:16:"is_update_status";s:1:"1";s:17:"is_update_content";s:1:"1";s:15:"is_update_title";s:1:"1";s:14:"is_update_slug";s:1:"1";s:17:"is_update_excerpt";s:1:"1";s:20:"is_update_categories";s:1:"1";s:16:"is_update_author";s:1:"1";s:24:"is_update_comment_status";s:1:"1";s:19:"is_update_post_type";s:1:"1";s:23:"update_categories_logic";s:11:"full_update";s:15:"taxonomies_list";s:1:"0";s:20:"taxonomies_only_list";s:0:"";s:22:"taxonomies_except_list";s:0:"";s:21:"is_update_attachments";s:1:"1";s:16:"is_update_images";s:1:"1";s:19:"update_images_logic";s:11:"full_update";s:15:"is_update_dates";s:1:"1";s:20:"is_update_menu_order";s:1:"1";s:16:"is_update_parent";s:1:"1";s:19:"is_keep_attachments";s:1:"0";s:12:"is_keep_imgs";s:1:"0";s:20:"do_not_remove_images";s:1:"1";s:23:"is_update_custom_fields";s:1:"1";s:26:"update_custom_fields_logic";s:11:"full_update";s:18:"custom_fields_list";s:1:"0";s:23:"custom_fields_only_list";s:0:"";s:25:"custom_fields_except_list";s:0:"";s:18:"duplicate_matching";s:4:"auto";s:19:"duplicate_indicator";s:5:"title";s:21:"custom_duplicate_name";s:0:"";s:22:"custom_duplicate_value";s:0:"";s:18:"is_update_previous";i:0;s:12:"is_scheduled";s:0:"";s:16:"scheduled_period";s:0:"";s:13:"friendly_name";s:0:"";s:19:"records_per_request";s:2:"20";s:24:"auto_records_per_request";i:1;s:18:"auto_rename_images";s:1:"0";s:25:"auto_rename_images_suffix";s:0:"";s:11:"images_name";s:8:"filename";s:11:"post_format";s:8:"standard";s:17:"post_format_xpath";s:0:"";s:8:"encoding";s:5:"UTF-8";s:9:"delimiter";s:1:",";s:16:"image_meta_title";s:0:"";s:22:"image_meta_title_delim";s:1:",";s:18:"image_meta_caption";s:0:"";s:24:"image_meta_caption_delim";s:1:",";s:14:"image_meta_alt";s:0:"";s:20:"image_meta_alt_delim";s:1:",";s:22:"image_meta_description";s:0:"";s:28:"image_meta_description_delim";s:1:",";s:34:"image_meta_description_delim_logic";s:8:"separate";s:12:"status_xpath";s:0:"";s:15:"download_images";s:3:"yes";s:17:"converted_options";s:1:"1";s:15:"update_all_data";s:3:"yes";s:12:"is_fast_mode";s:1:"0";s:9:"chuncking";s:1:"1";s:17:"import_processing";s:4:"ajax";s:26:"processing_iteration_logic";s:4:"auto";s:28:"records_per_request_detected";i:0;s:16:"save_template_as";s:1:"0";s:5:"title";s:12:"{lawfirm[1]}";s:7:"content";s:0:"";s:4:"name";s:0:"";s:18:"is_keep_linebreaks";s:1:"1";s:13:"is_leave_html";s:1:"0";s:14:"fix_characters";i:0;s:9:"pid_xpath";s:0:"";s:10:"slug_xpath";s:0:"";s:11:"title_xpath";s:0:"";s:14:"featured_image";s:0:"";s:23:"download_featured_image";s:0:"";s:23:"download_featured_delim";s:1:",";s:22:"gallery_featured_image";s:0:"";s:22:"gallery_featured_delim";s:1:",";s:11:"is_featured";s:1:"1";s:20:"set_image_meta_title";s:1:"0";s:22:"set_image_meta_caption";s:1:"0";s:18:"set_image_meta_alt";s:1:"0";s:26:"set_image_meta_description";s:1:"0";s:18:"auto_set_extension";s:1:"0";s:13:"new_extension";s:0:"";s:9:"tax_logic";a:2:{s:10:"lawfirmcat";s:12:"hierarchical";s:11:"lawfirmtags";s:6:"single";}s:10:"tax_assing";a:2:{s:10:"lawfirmcat";s:1:"1";s:11:"lawfirmtags";s:1:"0";}s:11:"term_assing";a:2:{s:10:"lawfirmcat";s:1:"1";s:11:"lawfirmtags";s:1:"1";}s:20:"multiple_term_assing";a:2:{s:10:"lawfirmcat";s:1:"1";s:11:"lawfirmtags";s:1:"1";}s:23:"tax_hierarchical_assing";a:1:{s:10:"lawfirmcat";a:2:{i:0;s:1:"1";s:6:"NUMBER";s:1:"1";}}s:34:"tax_hierarchical_last_level_assign";a:1:{s:10:"lawfirmcat";s:1:"0";}s:16:"tax_single_xpath";a:2:{s:10:"lawfirmcat";s:0:"";s:11:"lawfirmtags";s:0:"";}s:18:"tax_multiple_xpath";a:2:{s:10:"lawfirmcat";s:0:"";s:11:"lawfirmtags";s:0:"";}s:22:"tax_hierarchical_xpath";a:1:{s:10:"lawfirmcat";a:2:{i:0;s:0:"";i:1;s:0:"";}}s:18:"tax_multiple_delim";a:2:{s:10:"lawfirmcat";s:1:",";s:11:"lawfirmtags";s:1:",";}s:22:"tax_hierarchical_delim";a:1:{s:10:"lawfirmcat";s:1:">";}s:25:"tax_manualhierarchy_delim";a:1:{s:10:"lawfirmcat";s:1:",";}s:29:"tax_hierarchical_logic_entire";a:1:{s:10:"lawfirmcat";s:1:"0";}s:29:"tax_hierarchical_logic_manual";a:1:{s:10:"lawfirmcat";s:1:"1";}s:18:"tax_enable_mapping";a:2:{s:10:"lawfirmcat";s:1:"0";s:11:"lawfirmtags";s:1:"0";}s:25:"tax_is_full_search_single";a:2:{s:10:"lawfirmcat";s:1:"0";s:11:"lawfirmtags";s:1:"0";}s:27:"tax_is_full_search_multiple";a:2:{s:10:"lawfirmcat";s:1:"0";s:11:"lawfirmtags";s:1:"0";}s:29:"tax_assign_to_one_term_single";a:2:{s:10:"lawfirmcat";s:1:"0";s:11:"lawfirmtags";s:1:"0";}s:31:"tax_assign_to_one_term_multiple";a:2:{s:10:"lawfirmcat";s:1:"0";s:11:"lawfirmtags";s:1:"0";}s:11:"tax_mapping";a:2:{s:10:"lawfirmcat";s:2:"[]";s:11:"lawfirmtags";s:2:"[]";}s:17:"tax_logic_mapping";a:2:{s:10:"lawfirmcat";s:1:"0";s:11:"lawfirmtags";s:1:"0";}s:31:"is_tax_hierarchical_group_delim";a:1:{s:10:"lawfirmcat";s:1:"0";}s:28:"tax_hierarchical_group_delim";a:1:{s:10:"lawfirmcat";s:1:"|";}s:12:"nested_files";a:0:{}s:17:"xml_reader_engine";s:1:"0";s:13:"taxonomy_type";s:0:"";s:15:"taxonomy_parent";s:0:"";s:13:"taxonomy_slug";s:4:"auto";s:19:"taxonomy_slug_xpath";s:0:"";s:15:"import_img_tags";i:1;s:3:"acf";a:1:{i:4;s:1:"1";}s:6:"fields";a:1:{s:19:"field_5ac3d6fb2e3b5";a:5:{s:17:"is_ignore_empties";s:1:"1";s:11:"is_variable";s:3:"csv";s:7:"foreach";s:0:"";s:9:"separator";s:1:",";s:4:"rows";a:2:{s:9:"ROWNUMBER";a:10:{s:19:"field_5af9d4521c2dd";s:0:"";s:19:"field_5af9d4801c2de";s:0:"";s:19:"field_5af9d5ae1c2df";a:5:{s:11:"is_variable";s:2:"no";s:17:"is_ignore_empties";s:1:"0";s:7:"foreach";s:0:"";s:9:"separator";s:1:"|";s:4:"rows";a:1:{s:9:"ROWNUMBER";a:1:{s:19:"field_5af9d5cd1c2e0";s:0:"";}}}s:19:"field_5af9d6151c2e1";s:0:"";s:19:"field_5af9d7f51c2e3";s:0:"";s:19:"field_5af9d7691c2e2";s:0:"";s:19:"field_5af9d83a1c2e4";s:0:"";s:19:"field_5af9d8561c2e5";s:0:"";s:19:"field_5af9d88d1c2e6";a:5:{s:11:"is_variable";s:2:"no";s:17:"is_ignore_empties";s:1:"0";s:7:"foreach";s:0:"";s:9:"separator";s:1:"|";s:4:"rows";a:1:{s:9:"ROWNUMBER";a:3:{s:19:"field_5af9d8a61c2e7";s:0:"";s:19:"field_5af9d8b11c2e8";s:0:"";s:19:"field_5af9d8df1c2e9";s:0:"";}}}s:19:"field_5ac3d7052e3b6";s:0:"";}i:1;a:10:{s:19:"field_5af9d4521c2dd";s:0:"";s:19:"field_5af9d4801c2de";s:0:"";s:19:"field_5af9d5ae1c2df";a:5:{s:11:"is_variable";s:2:"no";s:17:"is_ignore_empties";s:1:"1";s:7:"foreach";s:0:"";s:9:"separator";s:1:"|";s:4:"rows";a:1:{s:9:"ROWNUMBER";a:1:{s:19:"field_5af9d5cd1c2e0";s:0:"";}}}s:19:"field_5af9d6151c2e1";s:0:"";s:19:"field_5af9d7f51c2e3";s:0:"";s:19:"field_5af9d7691c2e2";s:0:"";s:19:"field_5af9d83a1c2e4";s:0:"";s:19:"field_5af9d8561c2e5";s:0:"";s:19:"field_5af9d88d1c2e6";a:5:{s:11:"is_variable";s:2:"no";s:17:"is_ignore_empties";s:1:"1";s:7:"foreach";s:0:"";s:9:"separator";s:1:"|";s:4:"rows";a:1:{s:9:"ROWNUMBER";a:3:{s:19:"field_5af9d8a61c2e7";s:0:"";s:19:"field_5af9d8b11c2e8";s:0:"";s:19:"field_5af9d8df1c2e9";s:0:"";}}}s:19:"field_5ac3d7052e3b6";s:18:"{attorneynames[1]}";}}}}s:23:"is_multiple_field_value";a:0:{}s:14:"multiple_value";a:0:{}s:16:"fields_delimiter";a:0:{}s:13:"is_update_acf";s:1:"1";s:16:"update_acf_logic";s:11:"full_update";s:8:"acf_list";s:1:"0";s:13:"acf_only_list";s:0:"";s:15:"acf_except_list";s:0:"";}', '2018-05-15 04:17:41', 'node', 0, 0, 0, 0, '2018-05-15 01:19:29', 525, 525, 20, 505, 0, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '2018-05-15 04:16:19', '2018-05-15 04:17:40', 4),
(5, 0, 'Book4.csv', '', 'upload', '', '/wpallimport/uploads/86691b159eebef957ce0e74431ea1dfe/Book4.csv', '/node', 'a:177:{s:4:"type";s:4:"post";s:21:"is_override_post_type";i:0;s:15:"post_type_xpath";s:0:"";s:8:"deligate";s:0:"";s:11:"wizard_type";s:3:"new";s:11:"custom_type";s:7:"lawfirm";s:14:"featured_delim";s:1:",";s:10:"atch_delim";s:1:",";s:25:"is_search_existing_attach";s:1:"0";s:15:"post_taxonomies";a:1:{s:10:"lawfirmcat";s:154:"[{"item_id":"1","left":2,"right":5,"parent_id":null,"xpath":"","assign":true},{"item_id":"2","left":3,"right":4,"parent_id":"1","xpath":"","assign":true}]";}s:6:"parent";s:1:"0";s:23:"is_multiple_page_parent";s:3:"yes";s:18:"single_page_parent";s:0:"";s:5:"order";s:1:"0";s:6:"status";s:7:"publish";s:13:"page_template";s:7:"default";s:25:"is_multiple_page_template";s:3:"yes";s:20:"single_page_template";s:0:"";s:15:"page_taxonomies";a:0:{}s:9:"date_type";s:8:"specific";s:4:"date";s:3:"now";s:10:"date_start";s:3:"now";s:8:"date_end";s:3:"now";s:11:"custom_name";a:0:{}s:12:"custom_value";a:0:{}s:13:"custom_format";a:2:{i:0;s:1:"0";i:1;s:1:"0";}s:14:"custom_mapping";a:0:{}s:17:"serialized_values";a:2:{i:0;s:7:"["",""]";i:1;s:7:"["",""]";}s:20:"custom_mapping_rules";a:2:{i:0;s:2:"[]";i:1;s:2:"[]";}s:14:"comment_status";s:4:"open";s:20:"comment_status_xpath";s:0:"";s:11:"ping_status";s:4:"open";s:17:"ping_status_xpath";s:0:"";s:12:"create_draft";s:2:"no";s:6:"author";s:0:"";s:12:"post_excerpt";s:0:"";s:9:"post_slug";s:0:"";s:11:"attachments";s:0:"";s:19:"is_import_specified";s:1:"0";s:16:"import_specified";s:0:"";s:16:"is_delete_source";i:0;s:8:"is_cloak";i:0;s:10:"unique_key";s:13:"{column_4[1]}";s:14:"tmp_unique_key";s:13:"{column_4[1]}";s:9:"feed_type";s:4:"auto";s:22:"search_existing_images";s:1:"1";s:18:"create_new_records";s:1:"1";s:17:"is_delete_missing";s:1:"0";s:20:"set_missing_to_draft";s:1:"0";s:20:"is_update_missing_cf";s:1:"0";s:22:"update_missing_cf_name";s:0:"";s:23:"update_missing_cf_value";s:0:"";s:20:"is_keep_former_posts";s:2:"no";s:16:"is_update_status";s:1:"1";s:17:"is_update_content";s:1:"1";s:15:"is_update_title";s:1:"1";s:14:"is_update_slug";s:1:"1";s:17:"is_update_excerpt";s:1:"1";s:20:"is_update_categories";s:1:"1";s:16:"is_update_author";s:1:"1";s:24:"is_update_comment_status";s:1:"1";s:19:"is_update_post_type";s:1:"1";s:23:"update_categories_logic";s:11:"full_update";s:15:"taxonomies_list";s:1:"0";s:20:"taxonomies_only_list";s:0:"";s:22:"taxonomies_except_list";s:0:"";s:21:"is_update_attachments";s:1:"1";s:16:"is_update_images";s:1:"1";s:19:"update_images_logic";s:11:"full_update";s:15:"is_update_dates";s:1:"1";s:20:"is_update_menu_order";s:1:"1";s:16:"is_update_parent";s:1:"1";s:19:"is_keep_attachments";s:1:"0";s:12:"is_keep_imgs";s:1:"0";s:20:"do_not_remove_images";s:1:"1";s:23:"is_update_custom_fields";s:1:"1";s:26:"update_custom_fields_logic";s:11:"full_update";s:18:"custom_fields_list";s:1:"0";s:23:"custom_fields_only_list";s:0:"";s:25:"custom_fields_except_list";s:0:"";s:18:"duplicate_matching";s:4:"auto";s:19:"duplicate_indicator";s:5:"title";s:21:"custom_duplicate_name";s:0:"";s:22:"custom_duplicate_value";s:0:"";s:18:"is_update_previous";i:0;s:12:"is_scheduled";s:0:"";s:16:"scheduled_period";s:0:"";s:13:"friendly_name";s:0:"";s:19:"records_per_request";s:2:"20";s:24:"auto_records_per_request";i:1;s:18:"auto_rename_images";s:1:"0";s:25:"auto_rename_images_suffix";s:0:"";s:11:"images_name";s:8:"filename";s:11:"post_format";s:8:"standard";s:17:"post_format_xpath";s:0:"";s:8:"encoding";s:5:"UTF-8";s:9:"delimiter";s:1:",";s:16:"image_meta_title";s:0:"";s:22:"image_meta_title_delim";s:1:",";s:18:"image_meta_caption";s:0:"";s:24:"image_meta_caption_delim";s:1:",";s:14:"image_meta_alt";s:0:"";s:20:"image_meta_alt_delim";s:1:",";s:22:"image_meta_description";s:0:"";s:28:"image_meta_description_delim";s:1:",";s:34:"image_meta_description_delim_logic";s:8:"separate";s:12:"status_xpath";s:0:"";s:15:"download_images";s:3:"yes";s:17:"converted_options";s:1:"1";s:15:"update_all_data";s:3:"yes";s:12:"is_fast_mode";s:1:"0";s:9:"chuncking";s:1:"1";s:17:"import_processing";s:4:"ajax";s:26:"processing_iteration_logic";s:4:"auto";s:28:"records_per_request_detected";i:0;s:16:"save_template_as";s:1:"0";s:5:"title";s:13:"{column_4[1]}";s:7:"content";s:0:"";s:4:"name";s:0:"";s:18:"is_keep_linebreaks";s:1:"1";s:13:"is_leave_html";s:1:"0";s:14:"fix_characters";i:0;s:9:"pid_xpath";s:0:"";s:10:"slug_xpath";s:0:"";s:11:"title_xpath";s:0:"";s:14:"featured_image";s:0:"";s:23:"download_featured_image";s:0:"";s:23:"download_featured_delim";s:1:",";s:22:"gallery_featured_image";s:0:"";s:22:"gallery_featured_delim";s:1:",";s:11:"is_featured";s:1:"1";s:20:"set_image_meta_title";s:1:"0";s:22:"set_image_meta_caption";s:1:"0";s:18:"set_image_meta_alt";s:1:"0";s:26:"set_image_meta_description";s:1:"0";s:18:"auto_set_extension";s:1:"0";s:13:"new_extension";s:0:"";s:9:"tax_logic";a:2:{s:10:"lawfirmcat";s:6:"single";s:11:"lawfirmtags";s:6:"single";}s:10:"tax_assing";a:2:{s:10:"lawfirmcat";s:1:"0";s:11:"lawfirmtags";s:1:"0";}s:11:"term_assing";a:2:{s:10:"lawfirmcat";s:1:"1";s:11:"lawfirmtags";s:1:"1";}s:20:"multiple_term_assing";a:2:{s:10:"lawfirmcat";s:1:"1";s:11:"lawfirmtags";s:1:"1";}s:23:"tax_hierarchical_assing";a:1:{s:10:"lawfirmcat";a:2:{i:0;s:1:"1";s:6:"NUMBER";s:1:"1";}}s:34:"tax_hierarchical_last_level_assign";a:1:{s:10:"lawfirmcat";s:1:"0";}s:16:"tax_single_xpath";a:2:{s:10:"lawfirmcat";s:0:"";s:11:"lawfirmtags";s:0:"";}s:18:"tax_multiple_xpath";a:2:{s:10:"lawfirmcat";s:0:"";s:11:"lawfirmtags";s:0:"";}s:22:"tax_hierarchical_xpath";a:1:{s:10:"lawfirmcat";a:2:{i:0;s:0:"";i:1;s:0:"";}}s:18:"tax_multiple_delim";a:2:{s:10:"lawfirmcat";s:1:",";s:11:"lawfirmtags";s:1:",";}s:22:"tax_hierarchical_delim";a:1:{s:10:"lawfirmcat";s:1:">";}s:25:"tax_manualhierarchy_delim";a:1:{s:10:"lawfirmcat";s:1:",";}s:29:"tax_hierarchical_logic_entire";a:1:{s:10:"lawfirmcat";s:1:"0";}s:29:"tax_hierarchical_logic_manual";a:1:{s:10:"lawfirmcat";s:1:"0";}s:18:"tax_enable_mapping";a:2:{s:10:"lawfirmcat";s:1:"0";s:11:"lawfirmtags";s:1:"0";}s:25:"tax_is_full_search_single";a:2:{s:10:"lawfirmcat";s:1:"0";s:11:"lawfirmtags";s:1:"0";}s:27:"tax_is_full_search_multiple";a:2:{s:10:"lawfirmcat";s:1:"0";s:11:"lawfirmtags";s:1:"0";}s:29:"tax_assign_to_one_term_single";a:2:{s:10:"lawfirmcat";s:1:"0";s:11:"lawfirmtags";s:1:"0";}s:31:"tax_assign_to_one_term_multiple";a:2:{s:10:"lawfirmcat";s:1:"0";s:11:"lawfirmtags";s:1:"0";}s:11:"tax_mapping";a:2:{s:10:"lawfirmcat";s:2:"[]";s:11:"lawfirmtags";s:2:"[]";}s:17:"tax_logic_mapping";a:2:{s:10:"lawfirmcat";s:1:"0";s:11:"lawfirmtags";s:1:"0";}s:31:"is_tax_hierarchical_group_delim";a:1:{s:10:"lawfirmcat";s:1:"0";}s:28:"tax_hierarchical_group_delim";a:1:{s:10:"lawfirmcat";s:1:"|";}s:12:"nested_files";a:0:{}s:17:"xml_reader_engine";s:1:"0";s:13:"taxonomy_type";s:0:"";s:15:"taxonomy_parent";s:0:"";s:13:"taxonomy_slug";s:4:"auto";s:19:"taxonomy_slug_xpath";s:0:"";s:15:"import_img_tags";i:1;s:3:"acf";a:1:{i:4;s:1:"0";}s:6:"fields";a:0:{}s:23:"is_multiple_field_value";a:0:{}s:14:"multiple_value";a:0:{}s:16:"fields_delimiter";a:0:{}s:13:"is_update_acf";s:1:"1";s:16:"update_acf_logic";s:11:"full_update";s:8:"acf_list";s:1:"0";s:13:"acf_only_list";s:0:"";s:15:"acf_except_list";s:0:"";}', '0000-00-00 00:00:00', 'node', 0, 1, 0, 0, '2018-05-17 22:09:08', 50547, 2980, 1176, 1804, 0, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-05-17 22:22:25', 0) ;

#
# End of data contents of table `wp_pmxi_imports`
# --------------------------------------------------------



#
# Delete any existing table `wp_pmxi_posts`
#

DROP TABLE IF EXISTS `wp_pmxi_posts`;


#
# Table structure of table `wp_pmxi_posts`
#

CREATE TABLE `wp_pmxi_posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL,
  `import_id` bigint(20) unsigned NOT NULL,
  `unique_key` text COLLATE utf8mb4_unicode_520_ci,
  `product_key` text COLLATE utf8mb4_unicode_520_ci,
  `iteration` bigint(20) NOT NULL DEFAULT '0',
  `specified` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_pmxi_posts`
#

#
# End of data contents of table `wp_pmxi_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_pmxi_templates`
#

DROP TABLE IF EXISTS `wp_pmxi_templates`;


#
# Table structure of table `wp_pmxi_templates`
#

CREATE TABLE `wp_pmxi_templates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `options` longtext COLLATE utf8mb4_unicode_520_ci,
  `scheduled` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `title` text COLLATE utf8mb4_unicode_520_ci,
  `content` longtext COLLATE utf8mb4_unicode_520_ci,
  `is_keep_linebreaks` tinyint(1) NOT NULL DEFAULT '0',
  `is_leave_html` tinyint(1) NOT NULL DEFAULT '0',
  `fix_characters` tinyint(1) NOT NULL DEFAULT '0',
  `meta` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_pmxi_templates`
#

#
# End of data contents of table `wp_pmxi_templates`
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
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '2'),
(3, 4, '_edit_lock', '1526323457:2'),
(28, 10, '_edit_last', '1'),
(29, 10, '_edit_lock', '1523035934:1'),
(30, 2, '_wp_trash_meta_status', 'publish'),
(31, 2, '_wp_trash_meta_time', '1526659628'),
(32, 2, '_wp_desired_post_slug', 'sample-page'),
(33, 1, '_wp_trash_meta_status', 'publish'),
(34, 1, '_wp_trash_meta_time', '1526659631'),
(35, 1, '_wp_desired_post_slug', 'hello-world'),
(36, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(37, 35, '_edit_last', '2'),
(38, 35, '_edit_lock', '1526681931:2'),
(39, 35, 'attorneys', ''),
(40, 35, '_attorneys', 'field_5ac3d6fb2e3b5') ;

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
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 2, '2018-04-03 17:51:08', '2018-04-03 17:51:08', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2018-05-18 16:07:11', '2018-05-18 16:07:11', '', 0, 'http://lawyers-directory.com/?p=1', 0, 'post', '', 1),
(2, 2, '2018-04-03 17:51:08', '2018-04-03 17:51:08', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://lawyers-directory.com/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-05-18 16:07:08', '2018-05-18 16:07:08', '', 0, 'http://lawyers-directory.com/?page_id=2', 0, 'page', '', 0),
(4, 2, '2018-04-03 19:34:39', '2018-04-03 19:34:39', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:7:"lawfirm";}}}s:8:"position";s:15:"acf_after_title";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:4:{i:0;s:7:"excerpt";i:1;s:14:"featured_image";i:2;s:10:"categories";i:3;s:4:"tags";}s:11:"description";s:0:"";}', 'Attorneys', 'attorneys', 'publish', 'closed', 'closed', '', 'group_5ac3d6f49abc9', '', '', '2018-05-14 18:46:37', '2018-05-14 18:46:37', '', 0, 'http://lawyers-directory.com/?post_type=acf-field-group&#038;p=4', 0, 'acf-field-group', '', 0),
(5, 2, '2018-04-03 19:34:39', '2018-04-03 19:34:39', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:3:"row";s:12:"button_label";s:12:"Add Attorney";}', 'Attorneys', 'attorneys', 'publish', 'closed', 'closed', '', 'field_5ac3d6fb2e3b5', '', '', '2018-04-03 19:34:39', '2018-04-03 19:34:39', '', 4, 'http://lawyers-directory.com/?post_type=acf-field&p=5', 0, 'acf-field', '', 0),
(6, 2, '2018-04-03 19:34:39', '2018-04-03 19:34:39', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Attorney Name', 'attorney_name', 'publish', 'closed', 'closed', '', 'field_5ac3d7052e3b6', '', '', '2018-05-14 18:44:01', '2018-05-14 18:44:01', '', 5, 'http://lawyers-directory.com/?post_type=acf-field&#038;p=6', 0, 'acf-field', '', 0),
(10, 2, '2018-04-04 17:34:19', '2018-04-04 17:34:19', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Static Page', '', 'publish', 'closed', 'closed', '', 'static-page', '', '', '2018-04-06 17:32:13', '2018-04-06 17:32:13', '', 0, 'http://lawyers-directory.com/?page_id=10', 0, 'page', '', 0),
(11, 2, '2018-04-04 17:34:19', '2018-04-04 17:34:19', '', 'Welcome', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-04-04 17:34:19', '2018-04-04 17:34:19', '', 10, 'http://lawyers-directory.com/2018/04/04/10-revision-v1/', 0, 'revision', '', 0),
(12, 2, '2018-04-04 17:36:07', '2018-04-04 17:36:07', '', 'Front Page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-04-04 17:36:07', '2018-04-04 17:36:07', '', 10, 'http://lawyers-directory.com/2018/04/04/10-revision-v1/', 0, 'revision', '', 0),
(13, 2, '2018-04-06 17:12:32', '2018-04-06 17:12:32', '', 'Static Page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-04-06 17:12:32', '2018-04-06 17:12:32', '', 10, 'http://lawyers-directory.com/2018/04/06/10-revision-v1/', 0, 'revision', '', 0),
(14, 2, '2018-04-06 17:32:13', '2018-04-06 17:32:13', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Static Page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-04-06 17:32:13', '2018-04-06 17:32:13', '', 10, 'http://lawyers-directory.com/2018/04/06/10-revision-v1/', 0, 'revision', '', 0),
(17, 2, '2018-05-14 18:44:01', '2018-05-14 18:44:01', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Avvo Profile', 'avvo_profile', 'publish', 'closed', 'closed', '', 'field_5af9d4521c2dd', '', '', '2018-05-14 18:44:01', '2018-05-14 18:44:01', '', 5, 'http://lawyers-directory.com/?post_type=acf-field&p=17', 1, 'acf-field', '', 0),
(18, 2, '2018-05-14 18:44:01', '2018-05-14 18:44:01', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Years Licensed', 'years_licensed_for', 'publish', 'closed', 'closed', '', 'field_5af9d4801c2de', '', '', '2018-05-14 18:44:01', '2018-05-14 18:44:01', '', 5, 'http://lawyers-directory.com/?post_type=acf-field&p=18', 2, 'acf-field', '', 0),
(19, 2, '2018-05-14 18:44:01', '2018-05-14 18:44:01', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:3:"row";s:12:"button_label";s:17:"Add Practice Area";}', 'Attorney\'s Individual Practice Areas', 'attorneys_individual_practice_areas', 'publish', 'closed', 'closed', '', 'field_5af9d5ae1c2df', '', '', '2018-05-14 18:46:37', '2018-05-14 18:46:37', '', 5, 'http://lawyers-directory.com/?post_type=acf-field&#038;p=19', 3, 'acf-field', '', 0),
(20, 2, '2018-05-14 18:44:01', '2018-05-14 18:44:01', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Single Practice Area', 'single_practice_area', 'publish', 'closed', 'closed', '', 'field_5af9d5cd1c2e0', '', '', '2018-05-14 18:44:01', '2018-05-14 18:44:01', '', 19, 'http://lawyers-directory.com/?post_type=acf-field&p=20', 0, 'acf-field', '', 0),
(21, 2, '2018-05-14 18:44:01', '2018-05-14 18:44:01', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Attorney Phone', 'attorney_phone', 'publish', 'closed', 'closed', '', 'field_5af9d6151c2e1', '', '', '2018-05-14 18:44:01', '2018-05-14 18:44:01', '', 5, 'http://lawyers-directory.com/?post_type=acf-field&p=21', 4, 'acf-field', '', 0),
(22, 2, '2018-05-14 18:44:01', '2018-05-14 18:44:01', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Attorney Mobile Phone', 'attorney_mobile_phone', 'publish', 'closed', 'closed', '', 'field_5af9d7f51c2e3', '', '', '2018-05-14 18:44:01', '2018-05-14 18:44:01', '', 5, 'http://lawyers-directory.com/?post_type=acf-field&p=22', 5, 'acf-field', '', 0),
(23, 2, '2018-05-14 18:44:01', '2018-05-14 18:44:01', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Attorney Address', 'attorney_address', 'publish', 'closed', 'closed', '', 'field_5af9d7691c2e2', '', '', '2018-05-14 18:44:01', '2018-05-14 18:44:01', '', 5, 'http://lawyers-directory.com/?post_type=acf-field&p=23', 6, 'acf-field', '', 0),
(24, 2, '2018-05-14 18:44:01', '2018-05-14 18:44:01', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Attorney Fax Number', 'attorney_fax_number', 'publish', 'closed', 'closed', '', 'field_5af9d83a1c2e4', '', '', '2018-05-14 18:44:01', '2018-05-14 18:44:01', '', 5, 'http://lawyers-directory.com/?post_type=acf-field&p=24', 7, 'acf-field', '', 0),
(25, 2, '2018-05-14 18:44:01', '2018-05-14 18:44:01', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Lawfirm Website', 'lawfirm_website', 'publish', 'closed', 'closed', '', 'field_5af9d8561c2e5', '', '', '2018-05-14 18:44:01', '2018-05-14 18:44:01', '', 5, 'http://lawyers-directory.com/?post_type=acf-field&p=25', 8, 'acf-field', '', 0),
(26, 2, '2018-05-14 18:44:01', '2018-05-14 18:44:01', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:3:"row";s:12:"button_label";s:10:"Add School";}', 'Attorney Education', 'attorney_education', 'publish', 'closed', 'closed', '', 'field_5af9d88d1c2e6', '', '', '2018-05-14 18:46:37', '2018-05-14 18:46:37', '', 5, 'http://lawyers-directory.com/?post_type=acf-field&#038;p=26', 9, 'acf-field', '', 0),
(27, 2, '2018-05-14 18:44:01', '2018-05-14 18:44:01', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'School Name', 'school_name', 'publish', 'closed', 'closed', '', 'field_5af9d8a61c2e7', '', '', '2018-05-14 18:44:01', '2018-05-14 18:44:01', '', 26, 'http://lawyers-directory.com/?post_type=acf-field&p=27', 0, 'acf-field', '', 0),
(28, 2, '2018-05-14 18:44:01', '2018-05-14 18:44:01', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'School Degree', 'school_degree', 'publish', 'closed', 'closed', '', 'field_5af9d8b11c2e8', '', '', '2018-05-14 18:44:01', '2018-05-14 18:44:01', '', 26, 'http://lawyers-directory.com/?post_type=acf-field&p=28', 1, 'acf-field', '', 0),
(29, 2, '2018-05-14 18:44:01', '2018-05-14 18:44:01', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'School Year Graduated', 'school_year_graduated', 'publish', 'closed', 'closed', '', 'field_5af9d8df1c2e9', '', '', '2018-05-14 18:44:01', '2018-05-14 18:44:01', '', 26, 'http://lawyers-directory.com/?post_type=acf-field&p=29', 2, 'acf-field', '', 0),
(30, 2, '2018-05-14 23:25:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-05-14 23:25:57', '0000-00-00 00:00:00', '', 0, 'http://lawyers-directory.com/?post_type=lawfirm&p=30', 0, 'lawfirm', '', 0),
(31, 2, '2018-05-14 23:27:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-05-14 23:27:00', '0000-00-00 00:00:00', '', 0, 'http://lawyers-directory.com/?post_type=lawfirm&p=31', 0, 'lawfirm', '', 0),
(32, 2, '2018-05-14 23:27:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-05-14 23:27:09', '0000-00-00 00:00:00', '', 0, 'http://lawyers-directory.com/?post_type=lawfirm&p=32', 0, 'lawfirm', '', 0),
(33, 2, '2018-05-18 16:07:08', '2018-05-18 16:07:08', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://lawyers-directory.com/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-05-18 16:07:08', '2018-05-18 16:07:08', '', 2, 'http://lawyers-directory.com/2-revision-v1/', 0, 'revision', '', 0),
(34, 2, '2018-05-18 16:07:11', '2018-05-18 16:07:11', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-05-18 16:07:11', '2018-05-18 16:07:11', '', 1, 'http://lawyers-directory.com/1-revision-v1/', 0, 'revision', '', 0),
(35, 2, '2018-05-18 19:51:40', '2018-05-18 19:51:40', '', 'Lawfirm Test', '', 'publish', 'open', 'closed', '', 'lawfirm-test', '', '', '2018-05-18 19:51:40', '2018-05-18 19:51:40', '', 0, 'http://lawyers-directory.com/?post_type=lawfirm&#038;p=35', 0, 'lawfirm', '', 0) ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(8, 2, 0),
(8, 3, 0),
(8, 6, 0),
(8, 8, 0),
(9, 4, 0),
(9, 5, 0),
(9, 7, 0),
(9, 9, 0) ;

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
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'lawfirm-cate', '', 0, 1),
(3, 3, 'lawfirm-cate', '', 2, 1),
(4, 4, 'lawfirm-cate', '', 0, 1),
(5, 5, 'lawfirm-cate', '', 4, 1),
(6, 6, 'lawfirm-cat', '', 0, 1),
(7, 7, 'lawfirm-cat', '', 0, 1),
(8, 8, 'lawfirm-cat', '', 6, 1),
(9, 9, 'lawfirm-cat', '', 7, 1),
(31, 31, 'lawfirmcat', '', 0, 0),
(32, 32, 'lawfirmcat', '', 31, 0),
(33, 33, 'lawfirmcat', '', 0, 0),
(34, 34, 'lawfirmcat', '', 33, 0),
(35, 35, 'lawfirmcat', '', 31, 0),
(36, 36, 'lawfirmcat', '', 31, 0),
(37, 37, 'lawfirmcat', '', 31, 0),
(38, 38, 'lawfirmcat', '', 33, 0),
(39, 39, 'lawfirmcat', '', 31, 0),
(40, 40, 'lawfirmcat', '', 0, 0),
(41, 41, 'lawfirmcat', '', 40, 0),
(42, 42, 'lawfirmtags', '', 0, 0) ;

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
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


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
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'California', 'california', 0),
(3, 'San Diego', 'san-diego', 0),
(4, 'Arizona', 'arizona', 0),
(5, 'Phoenix', 'phoenix', 0),
(6, 'California', 'california', 0),
(7, 'Arizona', 'arizona', 0),
(8, 'San Diego', 'san-diego', 0),
(9, 'Phoenix', 'phoenix', 0),
(31, 'Massachusetts', 'massachusetts', 0),
(32, 'Norwood', 'norwood', 0),
(33, 'Dist. of Columbia', 'dist-of-columbia', 0),
(34, 'Washington', 'washington', 0),
(35, 'Springfield', 'springfield', 0),
(36, 'Amherst', 'amherst', 0),
(37, 'Holyoke', 'holyoke', 0),
(38, 'Dist. of Columbia', 'dist-of-columbia-dist-of-columbia', 0),
(39, 'Agawam', 'agawam', 0),
(40, 'California', 'california', 0),
(41, 'Los Angeles', 'los-angeles', 0),
(42, 'Garrett', 'garrett', 0) ;

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
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(20, 2, 'nickname', '1p21.admin'),
(21, 2, 'first_name', 'Garrett'),
(22, 2, 'last_name', 'Cullen'),
(23, 2, 'description', ''),
(24, 2, 'rich_editing', 'true'),
(25, 2, 'syntax_highlighting', 'true'),
(26, 2, 'comment_shortcuts', 'false'),
(27, 2, 'admin_color', 'fresh'),
(28, 2, 'use_ssl', '0'),
(29, 2, 'show_admin_bar_front', 'true'),
(30, 2, 'locale', ''),
(31, 2, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(32, 2, 'wp_user_level', '10'),
(33, 2, 'dismissed_wp_pointers', 'pksn1,wp496_privacy'),
(34, 2, 'session_tokens', 'a:2:{s:64:"83d4dbec4cbae28c42f7cf692d046df43f101507c92347f70ae81890a2ea4ab4";a:4:{s:10:"expiration";i:1526765753;s:2:"ip";s:3:"::1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36";s:5:"login";i:1526592953;}s:64:"f231653bb7deac5734293d59edb0448ba84fc1762a026976e9a66ee26ca7c4d3";a:4:{s:10:"expiration";i:1526832008;s:2:"ip";s:3:"::1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36";s:5:"login";i:1526659208;}}'),
(35, 2, 'wp_dashboard_quick_press_last_post_id', '16'),
(36, 2, 'community-events-location', 'a:1:{s:2:"ip";s:2:"::";}'),
(37, 2, 'closedpostboxes_lawfirm', 'a:0:{}'),
(38, 2, 'metaboxhidden_lawfirm', 'a:5:{i:0;s:11:"categorydiv";i:1;s:16:"tagsdiv-post_tag";i:2;s:12:"postimagediv";i:3;s:11:"postexcerpt";i:4;s:7:"slugdiv";}'),
(39, 2, 'wp_user-settings', 'editor=tinymce&lawfirmcat_tab=pop'),
(40, 2, 'wp_user-settings-time', '1526324464'),
(41, 2, 'acf_user_settings', 'a:0:{}'),
(42, 2, 'edit_lawfirm_per_page', '200') ;

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
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(2, '1p21.admin', '$P$BGTGoBHr/0dY/BevmY7NjBPAtedv9b1', '1p21-admin', 'garrett@1point21interactive.com', '', '2018-05-10 16:59:24', '', 0, 'Garrett Cullen') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

