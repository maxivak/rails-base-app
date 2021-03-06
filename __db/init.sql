-- phpMyAdmin SQL Dump
-- version 4.6.2
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Dec 08, 2018 at 02:35 PM
-- Server version: 5.7.15
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `my_base_app_init`
--

-- --------------------------------------------------------

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ar_internal_metadata`
--

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
('environment', 'development', '2017-09-24 19:25:06', '2017-09-24 19:25:06');

-- --------------------------------------------------------

--
-- Table structure for table `cms_languages`
--

DROP TABLE IF EXISTS `cms_languages`;
CREATE TABLE `cms_languages` (
  `id` int(3) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `charset` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'utf8_unicode_ci',
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang_html` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `pos` int(11) NOT NULL,
  `countries` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_languages`
--

INSERT INTO `cms_languages` (`id`, `title`, `lang`, `enabled`, `charset`, `locale`, `lang_html`, `pos`, `countries`) VALUES
(1, 'English', 'en', 1, 'utf8_unicode_ci', '', 'en', 1, ''),
(2, 'Russian', 'ru', 1, 'utf8_unicode_ci', '', 'ru', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `cms_mediafiles`
--

DROP TABLE IF EXISTS `cms_mediafiles`;
CREATE TABLE `cms_mediafiles` (
  `id` int(11) NOT NULL,
  `media_type` int(11) DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_file_size` int(11) DEFAULT NULL,
  `photo_updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_pages`
--

DROP TABLE IF EXISTS `cms_pages`;
CREATE TABLE `cms_pages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_parts_count` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `url_vars_count` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `parsed_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `view_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_translated` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `pos` int(11) NOT NULL DEFAULT '0',
  `redir_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `layout_id` int(11) DEFAULT NULL,
  `owner` int(11) DEFAULT NULL,
  `is_folder` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `controller_action` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `enabled` tinyint(3) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci PACK_KEYS=0;

--
-- Dumping data for table `cms_pages`
--

INSERT INTO `cms_pages` (`id`, `title`, `name`, `url`, `url_parts_count`, `url_vars_count`, `parsed_url`, `parent_id`, `view_path`, `is_translated`, `status`, `pos`, `redir_url`, `template_id`, `layout_id`, `owner`, `is_folder`, `controller_action`, `created_at`, `updated_at`, `enabled`) VALUES
(12, 'error404', 'error404', 'errors/404', 2, 0, '^errors\\/404', 93, NULL, 0, 0, 15, '', 4, 1, 0, 0, '', '1970-01-01 00:00:00', '2015-05-13 23:36:54', 1),
(13, 'error403', 'error403', 'errors/403', 2, 0, '^errors\\/403', 93, NULL, 0, 0, 14, '', 4, 1, 0, 0, '', '1970-01-01 00:00:00', '2015-05-13 23:37:09', 1),
(74, 'Sitemap', 'sitemap', 'sitemap.html', 1, 0, 'sitemap[.]html', NULL, NULL, 1, 0, 10, '', 135, 1, 0, 0, '', '2010-10-25 08:21:47', '2018-12-07 14:55:56', 1),
(93, 'System pages', 'folder-system', 'system/', 1, 0, 'system/', NULL, NULL, 0, 0, 7, '', 0, NULL, 0, 1, '', '2013-07-05 21:38:26', '2018-01-01 00:00:00', 1),
(97, 'Home', 'home', '', 0, 0, '^$', NULL, NULL, 0, 0, 2, '', 127, 1, 0, 0, 'home#index', '2013-07-10 10:10:21', '2017-11-24 18:04:44', 1),
(153, 'error500', 'error500', 'errors/500', 2, 0, '^errors\\/500', 93, NULL, 0, 0, 0, NULL, NULL, 1, NULL, 0, '', '2015-05-13 23:37:26', '2015-05-13 23:37:26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_pages_translation`
--

DROP TABLE IF EXISTS `cms_pages_translation`;
CREATE TABLE `cms_pages_translation` (
  `id` int(11) NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `page_id` int(11) DEFAULT NULL,
  `lang` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template_filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci PACK_KEYS=0;

--
-- Dumping data for table `cms_pages_translation`
--

INSERT INTO `cms_pages_translation` (`id`, `item_id`, `page_id`, `lang`, `meta_title`, `meta_description`, `meta_keywords`, `template_filename`) VALUES
(249, 74, 74, 'en', 'Sitemap', '', '', 'main.tpl'),
(255, 93, 93, 'en', '', '', '', ''),
(259, 97, 97, 'en', 'HOME', '', '', 'main_home.tpl'),
(297, 97, 97, 'ru', '', '', '', 'main_home.tpl'),
(333, 97, NULL, '', 'Demo App | Optima CMS', 'Demo app.', 'cms, demo', NULL),
(334, 74, NULL, '', 'Sitemap', '', '', NULL),
(335, 74, NULL, 'ru', '', '', '', NULL),
(339, 12, NULL, '', '', '', '', NULL),
(340, 12, NULL, 'en', '', '', '', NULL),
(341, 12, NULL, 'ru', '', '', '', NULL),
(342, 13, NULL, '', '', '', '', NULL),
(343, 13, NULL, 'en', '', '', '', NULL),
(344, 13, NULL, 'ru', '', '', '', NULL),
(345, 153, NULL, '', '', '', '', NULL),
(346, 153, NULL, 'en', '', '', '', NULL),
(347, 153, NULL, 'ru', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_resources`
--

DROP TABLE IF EXISTS `cms_resources`;
CREATE TABLE `cms_resources` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `def_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_resource_categories`
--

DROP TABLE IF EXISTS `cms_resource_categories`;
CREATE TABLE `cms_resource_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_resource_categories`
--

INSERT INTO `cms_resource_categories` (`id`, `name`) VALUES
(4, 'Menu'),
(3, 'System Messages'),
(7, 'Common'),
(1, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `cms_resource_translations`
--

DROP TABLE IF EXISTS `cms_resource_translations`;
CREATE TABLE `cms_resource_translations` (
  `id` int(11) NOT NULL,
  `cms_resource_id` int(11) NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `content` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_templates`
--

DROP TABLE IF EXISTS `cms_templates`;
CREATE TABLE `cms_templates` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `basename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `basepath` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `basedirpath` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type_id` tinyint(4) DEFAULT NULL,
  `tpl_format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  `is_translated` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_folder` tinyint(1) NOT NULL DEFAULT '0',
  `enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `ancestry` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci PACK_KEYS=0;

--
-- Dumping data for table `cms_templates`
--

INSERT INTO `cms_templates` (`id`, `title`, `name`, `basename`, `basepath`, `basedirpath`, `type_id`, `tpl_format`, `pos`, `is_translated`, `created_at`, `updated_at`, `is_folder`, `enabled`, `ancestry`) VALUES
(1, 'App layout', 'main', 'application', 'layouts/application', 'layouts/', 1, 'haml', 0, 0, '1970-01-01 00:00:00', '2018-12-07 14:58:53', 0, 1, '131'),
(126, 'Home', NULL, 'home', 'home', '', NULL, NULL, NULL, 0, '2015-05-13 23:12:02', '2015-05-13 23:12:02', 1, 1, NULL),
(127, 'home', NULL, 'index', 'home/index', 'home/', 2, 'haml', NULL, 0, '2015-05-13 23:12:20', '2015-05-13 23:12:20', 0, 1, '126'),
(131, 'layouts', NULL, 'layouts', 'layouts', '', NULL, NULL, NULL, 0, '2018-03-13 17:21:50', '2018-03-13 17:21:50', 1, 1, NULL),
(132, 'basic', NULL, 'basic', 'layouts/basic', 'layouts/', 1, 'haml', NULL, 0, '2018-03-13 17:22:45', '2018-03-13 17:22:45', 0, 1, '131'),
(134, 'sitemap', NULL, 'sitemap', 'sitemap', '', NULL, NULL, NULL, 0, '2018-12-07 14:54:27', '2018-12-07 14:54:27', 1, 1, NULL),
(135, 'sitemap', NULL, 'sitemap', 'sitemap/sitemap', 'sitemap/', 2, 'haml', NULL, 0, '2018-12-07 14:54:41', '2018-12-07 14:54:41', 0, 1, '134');

-- --------------------------------------------------------

--
-- Table structure for table `cms_templates_translation`
--

DROP TABLE IF EXISTS `cms_templates_translation`;
CREATE TABLE `cms_templates_translation` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `lang` varchar(5) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_templates_translation`
--

INSERT INTO `cms_templates_translation` (`id`, `item_id`, `lang`) VALUES
(2, 1, ''),
(1, 127, ''),
(4, 132, ''),
(7, 135, '');

-- --------------------------------------------------------

--
-- Table structure for table `cms_templatetypes`
--

DROP TABLE IF EXISTS `cms_templatetypes`;
CREATE TABLE `cms_templatetypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_templatetypes`
--

INSERT INTO `cms_templatetypes` (`id`, `name`, `title`, `pos`) VALUES
(1, 'layout', 'Layout', 1),
(2, 'page', 'Page', 2),
(3, 'partial', 'Partial', 3),
(4, 'block', 'Block Views', 4);

-- --------------------------------------------------------

--
-- Table structure for table `cms_template_data_relations`
--

DROP TABLE IF EXISTS `cms_template_data_relations`;
CREATE TABLE `cms_template_data_relations` (
  `id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `var_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data_model_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `props` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

DROP TABLE IF EXISTS `cms_users`;
CREATE TABLE `cms_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_superadmin` tinyint(1) NOT NULL DEFAULT '0',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `username`, `email`, `is_superadmin`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`) VALUES
(3, 'admin', 'admin@example.com', 0, '$2a$10$qx6DGnJMbQ7S.QEZRMM0DOwjG5qKZwMcffC15eYcodSE8zlXgIeWe', NULL, NULL, NULL, 31, '2018-12-07 14:44:29', '2018-12-07 12:12:36', '127.0.0.1', '127.0.0.1', '2015-05-13 22:48:20', '2018-12-07 14:44:29');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
CREATE TABLE `options` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `option_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_changed` tinyint(1) NOT NULL DEFAULT '1',
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20150513194957'),
('20150513224339'),
('20150513224340'),
('20150513224341'),
('20150612011035'),
('20150612011036'),
('20170924192655'),
('20170924192656');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ar_internal_metadata`
--
ALTER TABLE `ar_internal_metadata`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cms_languages`
--
ALTER TABLE `cms_languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idxLang` (`lang`);

--
-- Indexes for table `cms_mediafiles`
--
ALTER TABLE `cms_mediafiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_pages`
--
ALTER TABLE `cms_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `status` (`status`),
  ADD KEY `url` (`url`),
  ADD KEY `index_cms_pages_on_name` (`name`);

--
-- Indexes for table `cms_pages_translation`
--
ALTER TABLE `cms_pages_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `template` (`template_filename`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `lang` (`lang`);

--
-- Indexes for table `cms_resources`
--
ALTER TABLE `cms_resources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_resource_categories`
--
ALTER TABLE `cms_resource_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_resource_translations`
--
ALTER TABLE `cms_resource_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_cms_resource_translations_on_cms_resource_id` (`cms_resource_id`),
  ADD KEY `index_cms_resource_translations_on_locale` (`locale`);

--
-- Indexes for table `cms_templates`
--
ALTER TABLE `cms_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ancestry` (`ancestry`),
  ADD KEY `basepath` (`basepath`),
  ADD KEY `pos` (`pos`);

--
-- Indexes for table `cms_templates_translation`
--
ALTER TABLE `cms_templates_translation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item_id` (`item_id`,`lang`);

--
-- Indexes for table `cms_templatetypes`
--
ALTER TABLE `cms_templatetypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_template_data_relations`
--
ALTER TABLE `cms_template_data_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `template_id` (`template_id`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_optimacms_cms_users_on_email` (`email`),
  ADD UNIQUE KEY `index_optimacms_cms_users_on_reset_password_token` (`reset_password_token`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_options_on_name` (`name`);

--
-- Indexes for table `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD UNIQUE KEY `unique_schema_migrations` (`version`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_languages`
--
ALTER TABLE `cms_languages`
  MODIFY `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cms_mediafiles`
--
ALTER TABLE `cms_mediafiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_pages`
--
ALTER TABLE `cms_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;
--
-- AUTO_INCREMENT for table `cms_pages_translation`
--
ALTER TABLE `cms_pages_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=348;
--
-- AUTO_INCREMENT for table `cms_resources`
--
ALTER TABLE `cms_resources`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_resource_categories`
--
ALTER TABLE `cms_resource_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `cms_resource_translations`
--
ALTER TABLE `cms_resource_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_templates`
--
ALTER TABLE `cms_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
--
-- AUTO_INCREMENT for table `cms_templates_translation`
--
ALTER TABLE `cms_templates_translation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `cms_templatetypes`
--
ALTER TABLE `cms_templatetypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cms_template_data_relations`
--
ALTER TABLE `cms_template_data_relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;