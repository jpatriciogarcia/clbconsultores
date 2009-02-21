-- phpMyAdmin SQL Dump
-- version 2.6.3-pl1
-- http://www.phpmyadmin.net
-- 
-- Servidor: localhost
-- Tiempo de generación: 21-02-2009 a las 13:45:47
-- Versión del servidor: 4.1.22
-- Versión de PHP: 4.3.9
-- 
-- Base de datos: `clbconsultores_cl_clbconsultores`
-- 
DROP DATABASE `clbconsultores_cl_clbconsultores`;
CREATE DATABASE `clbconsultores_cl_clbconsultores` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE clbconsultores_cl_clbconsultores;

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_CKFIELDS`
-- 

DROP TABLE IF EXISTS `jos_CKFIELDS`;
CREATE TABLE `jos_CKFIELDS` (
  `id` int(11) NOT NULL auto_increment,
  `fid` int(11) default NULL,
  `name` text,
  `label` text,
  `typefield` text,
  `defaultvalue` text,
  `mandatory` tinyint(4) default NULL,
  `test_validity` tinyint(4) default NULL,
  `published` tinyint(4) default NULL,
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `jos_CKFIELDS`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_CKFORMS`
-- 

DROP TABLE IF EXISTS `jos_CKFORMS`;
CREATE TABLE `jos_CKFORMS` (
  `id` int(11) NOT NULL auto_increment,
  `name` text,
  `title` text,
  `description` longtext,
  `emailfrom` text,
  `emailto` text,
  `emailcc` text,
  `emailbcc` text,
  `subject` text,
  `created` datetime default NULL,
  `created_by` int(11) default NULL,
  `hits` int(11) default NULL,
  `published` tinyint(4) default NULL,
  `saveresult` tinyint(4) default NULL,
  `emailresult` tinyint(4) default NULL,
  `textresult` longtext,
  `redirecturl` text,
  `captcha` tinyint(4) default NULL,
  `customjs` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `jos_CKFORMS`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_banner`
-- 

DROP TABLE IF EXISTS `jos_banner`;
CREATE TABLE `jos_banner` (
  `bid` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL default '0',
  `type` varchar(30) NOT NULL default 'banner',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `imptotal` int(11) NOT NULL default '0',
  `impmade` int(11) NOT NULL default '0',
  `clicks` int(11) NOT NULL default '0',
  `imageurl` varchar(100) NOT NULL default '',
  `clickurl` varchar(200) NOT NULL default '',
  `date` datetime default NULL,
  `showBanner` tinyint(1) NOT NULL default '0',
  `checked_out` tinyint(1) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `editor` varchar(50) default NULL,
  `custombannercode` text,
  `catid` int(10) unsigned NOT NULL default '0',
  `description` text NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `tags` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY  (`bid`),
  KEY `viewbanner` (`showBanner`),
  KEY `idx_banner_catid` (`catid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- 
-- Volcar la base de datos para la tabla `jos_banner`
-- 

INSERT INTO `jos_banner` (`bid`, `cid`, `type`, `name`, `alias`, `imptotal`, `impmade`, `clicks`, `imageurl`, `clickurl`, `date`, `showBanner`, `checked_out`, `checked_out_time`, `editor`, `custombannercode`, `catid`, `description`, `sticky`, `ordering`, `publish_up`, `publish_down`, `tags`, `params`) VALUES (1, 1, 'banner', 'OSM 1', 'osm-1', 0, 43, 0, 'osmbanner1.png', 'http://www.opensourcematters.org', '2004-07-07 15:31:29', 1, 0, '0000-00-00 00:00:00', '', '', 13, '', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_banner` (`bid`, `cid`, `type`, `name`, `alias`, `imptotal`, `impmade`, `clicks`, `imageurl`, `clickurl`, `date`, `showBanner`, `checked_out`, `checked_out_time`, `editor`, `custombannercode`, `catid`, `description`, `sticky`, `ordering`, `publish_up`, `publish_down`, `tags`, `params`) VALUES (2, 1, 'banner', 'OSM 2', 'osm-2', 0, 49, 0, 'osmbanner2.png', 'http://www.opensourcematters.org', '2004-07-07 15:31:29', 1, 0, '0000-00-00 00:00:00', '', '', 13, '', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_banner` (`bid`, `cid`, `type`, `name`, `alias`, `imptotal`, `impmade`, `clicks`, `imageurl`, `clickurl`, `date`, `showBanner`, `checked_out`, `checked_out_time`, `editor`, `custombannercode`, `catid`, `description`, `sticky`, `ordering`, `publish_up`, `publish_down`, `tags`, `params`) VALUES (3, 1, '', 'Joomla!', 'joomla', 0, 28, 0, '', 'http://www.joomla.org', '2006-05-29 14:21:28', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomla! The most popular and widely used Open Source CMS Project in the world.', 14, '', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_banner` (`bid`, `cid`, `type`, `name`, `alias`, `imptotal`, `impmade`, `clicks`, `imageurl`, `clickurl`, `date`, `showBanner`, `checked_out`, `checked_out_time`, `editor`, `custombannercode`, `catid`, `description`, `sticky`, `ordering`, `publish_up`, `publish_down`, `tags`, `params`) VALUES (4, 1, '', 'JoomlaCode', 'joomlacode', 0, 28, 0, '', 'http://joomlacode.org', '2006-05-29 14:19:26', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomlaCode, development and distribution made easy.', 14, '', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_banner` (`bid`, `cid`, `type`, `name`, `alias`, `imptotal`, `impmade`, `clicks`, `imageurl`, `clickurl`, `date`, `showBanner`, `checked_out`, `checked_out_time`, `editor`, `custombannercode`, `catid`, `description`, `sticky`, `ordering`, `publish_up`, `publish_down`, `tags`, `params`) VALUES (5, 1, '', 'Joomla! Extensions', 'joomla-extensions', 0, 23, 0, '', 'http://extensions.joomla.org', '2006-05-29 14:23:21', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomla! Components, Modules, Plugins and Languages by the bucket load.', 14, '', 0, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_banner` (`bid`, `cid`, `type`, `name`, `alias`, `imptotal`, `impmade`, `clicks`, `imageurl`, `clickurl`, `date`, `showBanner`, `checked_out`, `checked_out_time`, `editor`, `custombannercode`, `catid`, `description`, `sticky`, `ordering`, `publish_up`, `publish_down`, `tags`, `params`) VALUES (6, 1, '', 'Joomla! Shop', 'joomla-shop', 0, 23, 0, '', 'http://shop.joomla.org', '2006-05-29 14:23:21', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nFor all your Joomla! merchandise.', 14, '', 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_banner` (`bid`, `cid`, `type`, `name`, `alias`, `imptotal`, `impmade`, `clicks`, `imageurl`, `clickurl`, `date`, `showBanner`, `checked_out`, `checked_out_time`, `editor`, `custombannercode`, `catid`, `description`, `sticky`, `ordering`, `publish_up`, `publish_down`, `tags`, `params`) VALUES (7, 1, '', 'Joomla! Promo Shop', 'joomla-promo-shop', 0, 11, 1, 'shop-ad.jpg', 'http://shop.joomla.org', '2007-09-19 17:26:24', 1, 0, '0000-00-00 00:00:00', '', '', 33, '', 0, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_banner` (`bid`, `cid`, `type`, `name`, `alias`, `imptotal`, `impmade`, `clicks`, `imageurl`, `clickurl`, `date`, `showBanner`, `checked_out`, `checked_out_time`, `editor`, `custombannercode`, `catid`, `description`, `sticky`, `ordering`, `publish_up`, `publish_down`, `tags`, `params`) VALUES (8, 1, '', 'Joomla! Promo Books', 'joomla-promo-books', 0, 9, 0, 'shop-ad-books.jpg', 'http://shop.joomla.org/index.php?option=com_wrapper&Itemid=8', '2007-09-19 17:28:01', 1, 0, '0000-00-00 00:00:00', '', '', 33, '', 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_bannerclient`
-- 

DROP TABLE IF EXISTS `jos_bannerclient`;
CREATE TABLE `jos_bannerclient` (
  `cid` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `contact` varchar(255) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL default '0',
  `checked_out_time` time default NULL,
  `editor` varchar(50) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Volcar la base de datos para la tabla `jos_bannerclient`
-- 

INSERT INTO `jos_bannerclient` (`cid`, `name`, `contact`, `email`, `extrainfo`, `checked_out`, `checked_out_time`, `editor`) VALUES (1, 'Open Source Matters', 'Administrator', 'admin@opensourcematters.org', '', 0, '00:00:00', NULL);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_bannertrack`
-- 

DROP TABLE IF EXISTS `jos_bannertrack`;
CREATE TABLE `jos_bannertrack` (
  `track_date` date NOT NULL default '0000-00-00',
  `track_type` int(10) unsigned NOT NULL default '0',
  `banner_id` int(10) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `jos_bannertrack`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_categories`
-- 

DROP TABLE IF EXISTS `jos_categories`;
CREATE TABLE `jos_categories` (
  `id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `image` varchar(255) NOT NULL default '',
  `section` varchar(50) NOT NULL default '',
  `image_position` varchar(30) NOT NULL default '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `editor` varchar(50) default NULL,
  `ordering` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `count` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

-- 
-- Volcar la base de datos para la tabla `jos_categories`
-- 

INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES (1, 0, 'Latest', '', 'latest-news', 'taking_notes.jpg', '1', 'left', 'The latest news from the Joomla! Team', 1, 0, '0000-00-00 00:00:00', '', 1, 0, 1, '');
INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES (2, 0, 'Joomla! Specific Links', '', 'joomla-specific-links', 'clock.jpg', 'com_weblinks', 'left', 'A selection of links that are all related to the Joomla! Project.', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, '');
INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES (3, 0, 'Newsflash', '', 'newsflash', '', '1', 'left', '', 1, 0, '0000-00-00 00:00:00', '', 2, 0, 0, '');
INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES (4, 0, 'Joomla!', '', 'joomla', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, '');
INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES (5, 0, 'Business: General', '', 'business-general', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, '');
INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES (6, 0, 'Linux', '', 'linux', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 6, 0, 0, '');
INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES (7, 0, 'Internet', '', 'internet', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 7, 0, 0, '');
INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES (12, 0, 'Contacts', '', 'contacts', '', 'com_contact_details', 'left', 'Contact Details for this Web site', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, '');
INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES (13, 0, 'Joomla', '', 'joomla', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, '');
INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES (14, 0, 'Text Ads', '', 'text-ads', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, '');
INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES (15, 0, 'Features', '', 'features', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 6, 0, 0, '');
INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES (17, 0, 'Benefits', '', 'benefits', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, '');
INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES (18, 0, 'Platforms', '', 'platforms', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, '');
INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES (19, 0, 'Other Resources', '', 'other-resources', '', 'com_weblinks', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, '');
INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES (29, 0, 'The CMS', '', 'the-cms', '', '4', 'left', 'Information about the software behind Joomla!<br />', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, '');
INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES (28, 0, 'Current Users', '', 'current-users', '', '3', 'left', 'Questions that users migrating to Joomla! 1.5 are likely to raise<br />', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, '');
INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES (25, 0, 'The Project', '', 'the-project', '', '4', 'left', 'General facts about Joomla!<br />', 1, 65, '2007-06-28 14:50:15', NULL, 1, 0, 0, '');
INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES (27, 0, 'New to Joomla!', '', 'new-to-joomla', '', '3', 'left', 'Questions for new users of Joomla!', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, '');
INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES (30, 0, 'The Community', '', 'the-community', '', '4', 'left', 'About the millions of Joomla! users and Web sites<br />', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, '');
INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES (31, 0, 'General', '', 'general', '', '3', 'left', 'General questions about the Joomla! CMS', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, '');
INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES (32, 0, 'Languages', '', 'languages', '', '3', 'left', 'Questions related to localisation and languages', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, '');
INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES (33, 0, 'Joomla! Promo', '', 'joomla-promo', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, '');
INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES (34, 0, 'Nosotros', '', 'nosotros', '', '5', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, '');
INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES (35, 0, 'Servicios', '', 'servicios', '', '5', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, '');
INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES (36, 0, 'Clientes', '', 'clientes', '', '5', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, '');
INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES (37, 0, 'Contactos', '', 'contactos', '', '5', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, '');
INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES (38, 0, 'Curriculum', '', 'curriculum', '', '5', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 5, 0, 0, '');
INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES (39, 0, 'destacados', '', 'destacados', '', '6', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, '');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_chrono_contact`
-- 

DROP TABLE IF EXISTS `jos_chrono_contact`;
CREATE TABLE `jos_chrono_contact` (
  `id` int(11) NOT NULL auto_increment,
  `name` text NOT NULL,
  `html` longtext NOT NULL,
  `scriptcode` longtext NOT NULL,
  `redirecturl` text NOT NULL,
  `emailresults` tinyint(1) NOT NULL default '0',
  `extraemail` text NOT NULL,
  `emailsubject` text NOT NULL,
  `onsubmitcode` longtext NOT NULL,
  `onsubmitcodeb4` longtext NOT NULL,
  `attformtag` longtext NOT NULL,
  `submiturl` text NOT NULL,
  `emailtemplate` longtext NOT NULL,
  `paramsall` longtext NOT NULL,
  `titlesall` longtext NOT NULL,
  `autogenerated` longtext NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Volcar la base de datos para la tabla `jos_chrono_contact`
-- 

INSERT INTO `jos_chrono_contact` (`id`, `name`, `html`, `scriptcode`, `redirecturl`, `emailresults`, `extraemail`, `emailsubject`, `onsubmitcode`, `onsubmitcodeb4`, `attformtag`, `submiturl`, `emailtemplate`, `paramsall`, `titlesall`, `autogenerated`, `published`) VALUES (1, 'Contacto', '', '', '', 2, 'dzamorano@gmail.com', 'Formulario Contacto', '', '', 'Nuevo Contacto con CLB', '', '', 'ccemail=\nbccemail=\nformmethod=post\nomittedfields=\nrecip=No\nfrom_email=dzamorano@hipervinculo.cl\nfrom_name=prueba\nreplyto_email=\nreplyto_name=\nemail_type=1\ndebug=0\nmysql_type=1\nenmambots=No\nemailfield=\nsubjectfield=\nccfield=\nbccfield=\nfromemailfield=\nfromnamefield=\nuploads=No\nuploadfields=\nuploadmax=\nuploadmin=\ndvfields=\ndvrecord=Record #n\nimagever=No\nimtype=0\nvalidate=No\nvalidatetype=prototype\nval_required=\nval_validate_number=\nval_validate_digits=\nval_validate_alpha=\nval_validate_alphanum=\nval_validate_date=\nval_validate_email=\nval_validate_url=\nval_validate_date_au=\nval_validate_currency_dollar=\nval_validate_selection=\nval_validate_one_required=\nautogenerated_order=3\nonsubmitcode_order=2\nplugins_order=1\nplugins=\nmplugins_order=', 'fname=Nombre\r\nfname=Email\r\nfname=Telefono\r\nfname=Texto', '', 0);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_chrono_contact_plugins`
-- 

DROP TABLE IF EXISTS `jos_chrono_contact_plugins`;
CREATE TABLE `jos_chrono_contact_plugins` (
  `id` int(11) NOT NULL auto_increment,
  `form_id` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `event` varchar(255) NOT NULL default '',
  `params` longtext NOT NULL,
  `extra1` longtext NOT NULL,
  `extra2` longtext NOT NULL,
  `extra3` longtext NOT NULL,
  `extra4` longtext NOT NULL,
  `extra5` longtext NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Volcar la base de datos para la tabla `jos_chrono_contact_plugins`
-- 

INSERT INTO `jos_chrono_contact_plugins` (`id`, `form_id`, `name`, `event`, `params`, `extra1`, `extra2`, `extra3`, `extra4`, `extra5`) VALUES (1, 1, 'cf_cb_registration', 'ONSUBMIT', 'name=Nombre\nusername=\nemail=Correo Electrónico\npass=\nvpass=\nemailuser=No\nemailadmins=No\nonsubmit=after_email', '', '', '', 'Ingresa datos', '');
INSERT INTO `jos_chrono_contact_plugins` (`id`, `form_id`, `name`, `event`, `params`, `extra1`, `extra2`, `extra3`, `extra4`, `extra5`) VALUES (2, 1, 'cf_profile', 'ONLOAD', 'table_name=jos_CKFIELDS\nparameter=', '', '', '', '', '');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_components`
-- 

DROP TABLE IF EXISTS `jos_components`;
CREATE TABLE `jos_components` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `link` varchar(255) NOT NULL default '',
  `menuid` int(11) unsigned NOT NULL default '0',
  `parent` int(11) unsigned NOT NULL default '0',
  `admin_menu_link` varchar(255) NOT NULL default '',
  `admin_menu_alt` varchar(255) NOT NULL default '',
  `option` varchar(50) NOT NULL default '',
  `ordering` int(11) NOT NULL default '0',
  `admin_menu_img` varchar(255) NOT NULL default '',
  `iscore` tinyint(4) NOT NULL default '0',
  `params` text NOT NULL,
  `enabled` tinyint(4) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `parent_option` (`parent`,`option`(32))
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 AUTO_INCREMENT=65 ;

-- 
-- Volcar la base de datos para la tabla `jos_components`
-- 

INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (1, 'Banners', '', 0, 0, '', 'Banner Management', 'com_banners', 0, 'js/ThemeOffice/component.png', 0, 'track_impressions=0\ntrack_clicks=0\ntag_prefix=\n\n', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (2, 'Banners', '', 0, 1, 'option=com_banners', 'Active Banners', 'com_banners', 1, 'js/ThemeOffice/edit.png', 0, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (3, 'Clients', '', 0, 1, 'option=com_banners&c=client', 'Manage Clients', 'com_banners', 2, 'js/ThemeOffice/categories.png', 0, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (4, 'Web Links', 'option=com_weblinks', 0, 0, '', 'Manage Weblinks', 'com_weblinks', 0, 'js/ThemeOffice/component.png', 0, 'show_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (5, 'Links', '', 0, 4, 'option=com_weblinks', 'View existing weblinks', 'com_weblinks', 1, 'js/ThemeOffice/edit.png', 0, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (6, 'Categories', '', 0, 4, 'option=com_categories&section=com_weblinks', 'Manage weblink categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (7, 'Contacts', 'option=com_contact', 0, 0, '', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/component.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (8, 'Contacts', '', 0, 7, 'option=com_contact', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/edit.png', 1, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (9, 'Categories', '', 0, 7, 'option=com_categories&section=com_contact_details', 'Manage contact categories', '', 2, 'js/ThemeOffice/categories.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (10, 'Polls', 'option=com_poll', 0, 0, 'option=com_poll', 'Manage Polls', 'com_poll', 0, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (11, 'News Feeds', 'option=com_newsfeeds', 0, 0, '', 'News Feeds Management', 'com_newsfeeds', 0, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (12, 'Feeds', '', 0, 11, 'option=com_newsfeeds', 'Manage News Feeds', 'com_newsfeeds', 1, 'js/ThemeOffice/edit.png', 0, 'show_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (13, 'Categories', '', 0, 11, 'option=com_categories&section=com_newsfeeds', 'Manage Categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (14, 'User', 'option=com_user', 0, 0, '', '', 'com_user', 0, '', 1, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (15, 'Search', 'option=com_search', 0, 0, 'option=com_search', 'Search Statistics', 'com_search', 0, 'js/ThemeOffice/component.png', 1, 'enabled=0\n\n', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (16, 'Categories', '', 0, 1, 'option=com_categories&section=com_banner', 'Categories', '', 3, '', 1, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (17, 'Wrapper', 'option=com_wrapper', 0, 0, '', 'Wrapper', 'com_wrapper', 0, '', 1, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (18, 'Mail To', '', 0, 0, '', '', 'com_mailto', 0, '', 1, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (19, 'Media Manager', '', 0, 0, 'option=com_media', 'Media Manager', 'com_media', 0, '', 1, 'upload_extensions=bmp,csv,doc,epg,gif,ico,jpg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,EPG,GIF,ICO,JPG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\nupload_maxsize=10000000\nfile_path=images\nimage_path=images/stories\nrestrict_uploads=1\ncheck_mime=1\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html\nenable_flash=1\n\n', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (20, 'Articles', 'option=com_content', 0, 0, '', '', 'com_content', 0, '', 1, 'show_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=0\nfeed_summary=0\nfilter_groups=29\nfilter_tags=\nfilter_attritbutes=\n\n', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (21, 'Configuration Manager', '', 0, 0, '', 'Configuration', 'com_config', 0, '', 1, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (22, 'Installation Manager', '', 0, 0, '', 'Installer', 'com_installer', 0, '', 1, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (23, 'Language Manager', '', 0, 0, '', 'Languages', 'com_languages', 0, '', 1, 'administrator=es-ES\nsite=es-ES\n\n', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (24, 'Mass mail', '', 0, 0, '', 'Mass Mail', 'com_massmail', 0, '', 1, 'mailSubjectPrefix=\nmailBodySuffix=\n\n', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (25, 'Menu Editor', '', 0, 0, '', 'Menu Editor', 'com_menus', 0, '', 1, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (27, 'Messaging', '', 0, 0, '', 'Messages', 'com_messages', 0, '', 1, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (28, 'Modules Manager', '', 0, 0, '', 'Modules', 'com_modules', 0, '', 1, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (29, 'Plugin Manager', '', 0, 0, '', 'Plugins', 'com_plugins', 0, '', 1, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (30, 'Template Manager', '', 0, 0, '', 'Templates', 'com_templates', 0, '', 1, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (31, 'User Manager', '', 0, 0, '', 'Users', 'com_users', 0, '', 1, 'allowUserRegistration=1\nnew_usertype=Registered\nuseractivation=1\nfrontend_userparams=1\n\n', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (32, 'Cache Manager', '', 0, 0, '', 'Cache', 'com_cache', 0, '', 1, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (33, 'Control Panel', '', 0, 0, '', 'Control Panel', 'com_cpanel', 0, '', 1, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (34, 'JCE Administration', 'option=com_jce', 0, 0, 'option=com_jce', 'JCE Administration', 'com_jce', 0, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (35, 'Control Panel', '', 0, 34, 'option=com_jce', 'Control Panel', 'com_jce', 0, 'templates/khepri/images/menu/icon-16-cpanel.png', 0, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (36, 'Configuration', '', 0, 34, 'option=com_jce&type=config', 'Configuration', 'com_jce', 1, 'templates/khepri/images/menu/icon-16-config.png', 0, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (37, 'Groups', '', 0, 34, 'option=com_jce&type=group', 'Groups', 'com_jce', 2, 'templates/khepri/images/menu/icon-16-user.png', 0, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (38, 'Plugins', '', 0, 34, 'option=com_jce&type=plugin', 'Plugins', 'com_jce', 3, 'templates/khepri/images/menu/icon-16-plugin.png', 0, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (39, 'Install', '', 0, 34, 'option=com_jce&type=install', 'Install', 'com_jce', 4, 'templates/khepri/images/menu/icon-16-install.png', 0, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (40, 'Mass content', 'option=com_masscontent', 0, 0, 'option=com_masscontent', 'Mass content', 'com_masscontent', 0, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (41, 'Create mass content', '', 0, 40, 'option=com_masscontent&act=createMassContent', 'Create mass content', 'com_masscontent', 0, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (42, 'Create mass sections', '', 0, 40, 'option=com_masscontent&act=createMassSections', 'Create mass sections', 'com_masscontent', 1, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (43, 'Create mass categories', '', 0, 40, 'option=com_masscontent&act=createMassCategories', 'Create mass categories', 'com_masscontent', 2, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (44, 'Delete mass content', '', 0, 40, 'option=com_masscontent&act=deleteMassContent', 'Delete mass content', 'com_masscontent', 3, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (45, 'css2switch', 'option=com_css2switch', 0, 0, 'option=com_css2switch', 'css2switch', 'com_css2switch', 0, 'components/com_css2switch/img/icon_16px.gif', 0, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (47, 'swMenuFree', 'option=com_swmenufree', 0, 0, 'option=com_swmenufree', 'swMenuFree', 'com_swmenufree', 0, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (48, 'SWmenuPro', 'option=com_swmenupro', 0, 0, 'option=com_swmenupro', 'SWmenuPro', 'com_swmenupro', 0, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (49, 'Edit Menu Modules', '', 0, 48, 'option=com_swmenupro&task=showmodules', 'Edit Menu Modules', 'com_swmenupro', 0, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (50, 'Edit Menu Items', '', 0, 48, 'option=com_swmenupro&task=showmenus', 'Edit Menu Items', 'com_swmenupro', 1, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (51, 'Lxmenu', 'option=com_lxmenu', 0, 0, 'option=com_lxmenu', 'Lxmenu', 'com_lxmenu', 0, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (52, '.iJoomla News', 'option=com_news_portal', 0, 0, 'option=com_news_portal', '.iJoomla News', 'com_news_portal', 0, '../administrator/components/com_news_portal/images/icons/small/ijoomla.png', 0, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (53, 'FacileForms', 'option=com_facileforms', 0, 0, 'option=com_facileforms', 'FacileForms', 'com_facileforms', 0, 'js/ThemeOffice/component.png', 0, 'ff_com_page=1\nff_com_align=1\n', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (54, 'Manage Records', '', 0, 53, 'option=com_facileforms&act=managerecs', 'Manage Records', 'com_facileforms', 0, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (55, 'Manage Backend Menus', '', 0, 53, 'option=com_facileforms&act=managemenus', 'Manage Backend Menus', 'com_facileforms', 1, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (56, 'Manage Forms', '', 0, 53, 'option=com_facileforms&act=manageforms', 'Manage Forms', 'com_facileforms', 2, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (57, 'Manage Scripts', '', 0, 53, 'option=com_facileforms&act=managescripts', 'Manage Scripts', 'com_facileforms', 3, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (58, 'Manage Pieces', '', 0, 53, 'option=com_facileforms&act=managepieces', 'Manage Pieces', 'com_facileforms', 4, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (59, 'Configuration', '', 0, 53, 'option=com_facileforms&act=configuration', 'Configuration', 'com_facileforms', 5, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (60, 'CK Forms', 'option=com_ckforms', 0, 0, 'option=com_ckforms', 'CK Forms', 'com_ckforms', 0, '../administrator/components/com_ckforms/images/logo-menu.png', 0, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (61, 'Chrono Forms', 'option=com_chronocontact', 0, 0, 'option=com_chronocontact', 'Chrono Forms', 'com_chronocontact', 0, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (62, 'Forms Management', '', 0, 61, 'option=com_chronocontact&act=all', 'Forms Management', 'com_chronocontact', 0, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (63, 'Menu Creator', '', 0, 61, 'option=com_chronocontact&task=menu_creator', 'Menu Creator', 'com_chronocontact', 1, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (64, '', 'option=com_chronocontact&task=show&formid=1', 0, 53, 'option=com_chronocontact&task=show&formid=1', '', 'com_chronocontact', 0, 'js/ThemeOffice/messaging_inbox.png', 0, '', 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_contact_details`
-- 

DROP TABLE IF EXISTS `jos_contact_details`;
CREATE TABLE `jos_contact_details` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `con_position` varchar(255) default NULL,
  `address` text,
  `suburb` varchar(100) default NULL,
  `state` varchar(100) default NULL,
  `country` varchar(100) default NULL,
  `postcode` varchar(100) default NULL,
  `telephone` varchar(255) default NULL,
  `fax` varchar(255) default NULL,
  `misc` mediumtext,
  `image` varchar(255) default NULL,
  `imagepos` varchar(20) default NULL,
  `email_to` varchar(255) default NULL,
  `default_con` tinyint(1) unsigned NOT NULL default '0',
  `published` tinyint(1) unsigned NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL default '0',
  `catid` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `mobile` varchar(255) NOT NULL default '',
  `webpage` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Volcar la base de datos para la tabla `jos_contact_details`
-- 

INSERT INTO `jos_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `imagepos`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`) VALUES (1, 'Name', 'name', 'Position', 'Street', 'Suburb', 'State', 'Country', 'Zip Code', 'Telephone', 'Fax', 'Miscellanous info', 'powered_by.png', 'top', 'email@email.com', 1, 1, 0, '0000-00-00 00:00:00', 1, 'show_name=1\r\nshow_position=1\r\nshow_email=0\r\nshow_street_address=1\r\nshow_suburb=1\r\nshow_state=1\r\nshow_postcode=1\r\nshow_country=1\r\nshow_telephone=1\r\nshow_mobile=1\r\nshow_fax=1\r\nshow_webpage=1\r\nshow_misc=1\r\nshow_image=1\r\nallow_vcard=0\r\ncontact_icons=0\r\nicon_address=\r\nicon_email=\r\nicon_telephone=\r\nicon_fax=\r\nicon_misc=\r\nshow_email_form=1\r\nemail_description=1\r\nshow_email_copy=1\r\nbanned_email=\r\nbanned_subject=\r\nbanned_text=', 0, 12, 0, '', '');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_content`
-- 

DROP TABLE IF EXISTS `jos_content`;
CREATE TABLE `jos_content` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `title_alias` varchar(255) NOT NULL default '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL default '0',
  `sectionid` int(11) unsigned NOT NULL default '0',
  `mask` int(11) unsigned NOT NULL default '0',
  `catid` int(11) unsigned NOT NULL default '0',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) unsigned NOT NULL default '1',
  `parentid` int(11) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '0',
  `metadata` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_section` (`sectionid`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;

-- 
-- Volcar la base de datos para la tabla `jos_content`
-- 

INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (1, 'Welcome to Joomla!', 'welcome-to-joomla', '', '<div align="left"><strong>Joomla! is a free open source framework and content publishing system designed for quickly creating highly interactive multi-language Web sites, online communities, media portals, blogs and eCommerce applications. <br /></strong></div><p><strong><br /></strong><img src="images/stories/powered_by.png" border="0" alt="Joomla! Logo" title="Example Caption" hspace="6" vspace="0" width="165" height="68" align="left" />Joomla! provides an easy-to-use graphical user interface that simplifies the management and publishing of large volumes of content including HTML, documents, and rich media.  Joomla! is used by organisations of all sizes for Public Web sites, Intranets, and Extranets and is supported by a community of thousands of users. </p>', 'With a fully documented library of developer resources, Joomla! allows the customisation of every aspect of a Web site including presentation, layout, administration, and the rapid integration with third-party applications.<p>Joomla! has a rich heritage and has been crowned CMS king many times over.  Now with more power under the hood, Joomla! is shifting gear and provides developer power while making the user experience all the more friendly.  For those who always wanted increased extensibility, Joomla! 1.5 can make this happen.</p><p>A new framework, ground-up refactoring, and a highly-active development team brings the excitement of ''the next generation CMS'' to your fingertips.  Whether you are a systems architect or a complete ''noob'' Joomla! can take you to the next level of content delivery. ''More than a CMS'' is something we have been playing with as a catchcry because the new Joomla! API has such incredible power and flexibility, you are free to take whatever direction your creative mind takes you and Joomla! can help you get there so much more easily than ever before.</p><p>Thinking Web publishing? Think Joomla!</p>', -2, 1, 0, 1, '2006-10-12 10:00:00', 62, '', '2007-11-08 12:06:35', 62, 0, '0000-00-00 00:00:00', '2006-01-03 01:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 29, 0, 0, '', '', 0, 94, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (2, 'Newsflash 1', 'newsflash-1', '', '<p>Joomla! makes it easy to launch a Web site of any kind. Whether you want a brochure site or you are building a large online community, Joomla! allows you to deploy a new site in minutes and add extra functionality as you need it. The hundreds of available Extensions will help to expand your site and allow you to deliver new services that extend your reach into the Internet.</p>', '', -2, 1, 0, 3, '2004-08-10 06:30:34', 62, '', '2007-11-08 12:19:35', 62, 0, '0000-00-00 00:00:00', '2004-08-09 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 1, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (3, 'Newsflash 2', 'newsflash-2', '', '<p>The one thing about a Web site, it always changes! Joomla! makes it easy to add Articles, content, images, videos, and more. Site administrators can edit and manage content ''in-context'' by clicking the ''Edit'' link. Webmasters can also edit content through a graphical Control Panel that gives you complete control over your site.</p>', '', -2, 1, 0, 3, '2004-08-09 22:30:34', 62, '', '2007-11-08 12:20:41', 62, 0, '0000-00-00 00:00:00', '2004-08-09 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (4, 'Newsflash 3', 'newsflash-3', '', '<p>With a library of hundreds of free <a href="http://extensions.joomla.org" title="The Joomla! Extensions Directory">Extensions</a>, you can add what you need as your site grows. Don''t wait, look through the <a href="http://extensions.joomla.org/" target="_blank">Joomla! Extensions</a>  library today. </p>', '', -2, 1, 0, 3, '2004-08-10 06:30:34', 62, '', '2007-11-08 12:21:51', 62, 0, '0000-00-00 00:00:00', '2004-08-09 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 1, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (5, 'Joomla! License Guidelines', 'joomla-license-guidelines', 'joomla-license-guidelines', '<p>This Web site is powered by <a href="http://www.joomla.org/">Joomla!</a>  The software and default templates on which it runs are Copyright 2005-2007 <a href="http://www.opensourcematters.org/">Open Source Matters</a>.  All other content and data, including data entered into this Web site and templates added after installation, are copyrighted by their respective copyright owners.</p><p>If you want to distribute, copy, or modify Joomla!, you are welcome to do so under the terms of the <a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0.html#SEC1">GNU General Public License</a>.  If you are unfamiliar with this license, you might want to read <a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0.html#SEC4">''How To Apply These Terms To Your Program''</a> and the <a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0-faq.html">''GNU General Public License FAQ''</a>.</p><p>Joomla! documentation is released under the terms of the <a href="http://creativecommons.org/licenses/by-nc-sa/2.5/" title="Creative Commons ">Creative Commons Attribution-Non-Commercial-Share-Alike License 2.5</a> or by the specific license of their respective copyright owners.</p><p>The Joomla! licence has always been GPL.</p>', '', -2, 4, 0, 25, '2004-08-20 10:11:07', 62, '', '2007-11-04 23:02:47', 62, 0, '0000-00-00 00:00:00', '2004-08-19 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 102, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (6, 'We are Volunteers', 'we-are-volunteers', '', '<p>The Joomla! Core Team consists of volunteer developers, designers, administrators and managers who, together with a large range of Work Groups of dedicated community members have taken Joomla! to new heights in its relatively short life. This well-oiled machine is often copied but never surpassed.  Joomla! has some wonderfully talented people taking Open Source concepts to the forefront of industry standards.  Joomla! 1.5 is a major leap forward and represents the most exciting Joomla! release in the history of the project. </p>', '<p>The project has a nice balance of legacy development from well-known coders such as Andrew Eddie (who pioneered Mambo''s early success) to some young guns like Johan Janssens and Louis Landry.  This dynamic trio has been further strengthening the project by bringing in new talent.  In open source development people joke about the ''bus'' factor.  Projects which don''t have coding ''spread'' are considered less sound should their single lead developer get hit by a bus.</p>', -2, 1, 0, 1, '2004-07-07 09:54:06', 62, '', '2007-11-08 12:10:35', 62, 0, '0000-00-00 00:00:00', '2004-07-06 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 9, 0, 0, '', '', 0, 54, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (7, 'Stick to the Code!', 'stick-to-the-code', '', 'To ensure this code release, Wilco Jansen resorted to sending rum to joint lead-developer Johan Janssens.  Johan, who''s had a penchant for rum ever since the first "Pirate''s of the Caribbean" movie screened, took the bait, mixed it with Cola, and here we are with our latest 1.5 release.  It looks like pirate talk will figure quite a lot in future Joomla! development! ', '<strong><br />Translation for you real pirates:<br /></strong> <br />First Mate Wilco resorted t'' sendin'' rum t'' joint Capt''n Johan. Johan, who''s had a penchant for rum ever since t'' first "Pirate''s o'' t'' Caribbean" movie screened, took t'' bait, mixed it with molasses, and here we be with our latest 1.5 release. It looks like pirate talk will figure quite a lot in future Joomla! development!', -2, 1, 0, 1, '2004-07-07 12:00:00', 62, '', '2007-11-25 22:37:55', 62, 0, '0000-00-00 00:00:00', '2004-07-07 11:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 13, 0, 0, '', '', 0, 55, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (8, 'The Legend of Buca di Beppo', 'the-legend-of-buca-di-beppo', '', '<p>The legend of Buca di Beppo involves a covert meeting of key developers in a Mafia-style restaurant in the United States.  ''Bucas'' has on more than one occasion been the catalyst for key (and in some cases considered insurmountable) development ''humps'' being overcome.</p><p>With copius amounts of food and wine flowing, the creative juices of coders seem to work keener, faster, and problems are solved. Louis Landry famously agreed that living near a Bucas could actually lead to faster development cycles.</p><p>Mmmm. A restaurant with photos of famous Mafia films like <em>The Godfather</em> and violin cases leaning against the booths.  Makes you wonder, doesn''t it?  </p><p>If Joomla! was a commercial venture, we''re sure management would actually consider building a Bucas inside the building!</p><p>Masterchief meet Bugsy Landry. </p>', '', -2, 1, 0, 1, '2004-04-12 09:54:06', 62, '', '2007-11-08 12:14:09', 62, 0, '0000-00-00 00:00:00', '2004-07-06 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 13, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (9, '1 Million Smiles', '1-million-smiles', '', '<p>The Joomla! team has about 1 million good reasons to be smiling about the Joomla! 1.5. In its current incarnation, it''s had more than 1 million downloads, taking it to an unprecedented level of popularity.  The new code base is almost an entire re-factor of the old code base.  The user experience is still extremely slick but for developers the API is a dream.  A proper framework for real PHP architects seeking the best of the best.</p><p>If you''re a former Mambo User or a 1.0 series Joomla! User, 1.5 is the future of CMSs for a number of reasons.  It''s more powerful, more flexible, more secure, and intuitive.  Our developers and interface designers have worked countless hours to make this the most exciting release in the content management system sphere.</p><p>Go on ... get your FREE copy of Joomla! today and spread the word about this benchmark project. </p>', '', -2, 1, 0, 1, '2004-07-07 09:54:06', 62, '', '2007-11-08 12:16:19', 62, 0, '0000-00-00 00:00:00', '2004-07-06 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 0, '', '', 0, 23, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (10, 'How do I localise Joomla! to my language?', 'how-do-i-localise-joomla-to-my-language', '', '<h4>General<br /></h4><p>In Joomla! 1.5 all User interfaces can be localised. This includes the installation, the Back-end Control Panel and the Front-end Site.</p><p>The core release of Joomla! 1.5 is shipped with multiple language choices in the installation but, other than English (the default), languages for the Site and Administration interfaces need to be added after installation. Links to such language packs exist below.</p>', '<p>Translation Teams for Joomla! 1.5 may have also released fully localised installation packages where site, administrator and sample data are in the local language. These localised releases can be found in the specific team projects on the <a href="http://joomlacode.org" title="The Joomla! Code Repository">JoomlaCode</a>.</p><h4>How do I install language packs?</h4><ul><li>First download both the admin and the site language packs that you require.</li><li>Install each pack separately using the Extensions-&gt;Install/Uninstall Menu selection and then the package file upload facility.</li><li>Go to the Language Manager and be sure to select Site or Admin in the sub-menu. Then select the appropriate language and make it the default one using the Toolbar button.</li></ul><h4>How do I select languages?</h4><ul><li>Default languages can be independently set for Site and for Administrator</li><li>In addition, users can define their preferred language for each Site and Administrator. This takes affect after logging in</li><li>While logging in to the Administrator Back-end, a language can also be selected for the particular session.</li></ul><h4>Where can I find Language Packs and Localised Releases?</h4><p><em>Please note that Joomla! 1.5 is new and language packs for this version may have not been released at this time.</em> </p><ul><li><a href="http://joomlacode.org/gf/project/jtranslation/" target="_blank" title="Accredited Translations">The Joomla! Accredited Translations Project</a>  - This is a joint repository for language packs that were developed by teams that are members of the Joomla! Translations Working Group.</li><li><a href="http://extensions.joomla.org/component/option,com_mtree/task,listcats/cat_id,1837/Itemid,35/" target="_blank" title="Translations">The Joomla! Extensions Site - Translations</a>  </li><li><a href="http://dev.joomla.org/content/view/42/66/" target="_blank" title="Translation Work Group Teams">List of Translation Teams and Translation Partner Sites for Joomla! 1.5</a> </li></ul>', -2, 3, 0, 32, '2006-09-30 14:06:37', 62, '', '2007-11-08 11:55:56', 62, 0, '0000-00-00 00:00:00', '2006-09-29 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 9, 0, 0, '', '', 0, 9, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (11, 'How do I upgrade to Joomla! 1.5 ?', 'how-do-i-upgrade-to-joomla-15', '', '<p>Joomla! 1.5 does not provide an upgrade path from earlier versions. Converting an older site to a Joomla! 1.5 site requires creation of a new empty site using Joomla! 1.5 and then populating the new site with the content from the old site. This migration of content is not a one-to-one process and involves conversions and modifications to the content dump.</p> <p>There are two ways to perform the migration:</p>', ' <div id="post_content-107"><li>An automated method of migration has been provided which uses a migrator Component to create the migration dump out of the old site (Mambo 4.5.x up to Joomla! 1.0.x) and a smart import facility in the Joomla! 1.5 Installation that performs required conversions and modifications during the installation process.</li> <li>Migration can be performed manually. This involves exporting the required tables, manually performing required conversions and modifications and then importing the content to the new site after it is installed.</li>  <p><!--more--></p> <h2><strong> Automated migration</strong></h2>  <p>This is a two phased process using two tools. The first tool is a migration Component named <font face="courier new,courier">com_migrator</font>. This Component has been contributed by Harald Baer and is based on his <strong>eBackup </strong>Component. The migrator needs to be installed on the old site and when activated it prepares the required export dump of the old site''s data. The second tool is built into the Joomla! 1.5 installation process. The exported content dump is loaded to the new site and all conversions and modification are performed on-the-fly.</p> <h3><u> Step 1 - Using com_migrator to export data from old site:</u></h3> <li>Install the <font face="courier new,courier">com_migrator</font> Component on the <u><strong>old</strong></u> site. It can be found at the <a href="http://joomlacode.org/gf/project/pasamioprojects/frs/" target="_blank">JoomlaCode developers forge</a>.</li> <li>Select the Component in the Component Menu of the Control Panel.</li> <li>Click on the <strong>Dump it</strong> icon. Three exported <em>gzipped </em>export scripts will be created. The first is a complete backup of the old site. The second is the migration content of all core elements which will be imported to the new site. The third is a backup of all 3PD Component tables.</li> <li>Click on the download icon of the particular exports files needed and store locally.</li> <li>Multiple export sets can be created.</li> <li>The exported data is not modified in anyway and the original encoding is preserved. This makes the <font face="courier new,courier">com_migrator</font> tool a recommended tool to use for manual migration as well.</li> <h3><u> Step 2 - Using the migration facility to import and convert data during Joomla! 1.5 installation:</u></h3><p>Note: This function requires the use of the <em><font face="courier new,courier">iconv </font></em>function in PHP to convert encodings. If <em><font face="courier new,courier">iconv </font></em>is not found a warning will be provided.</p> <li>In step 6 - Configuration select the ''Load Migration Script'' option in the ''Load Sample Data, Restore or Migrate Backed Up Content'' section of the page.</li> <li>Enter the table prefix used in the content dump. For example: ''jos_'' or ''site2_'' are acceptable values.</li> <li>Select the encoding of the dumped content in the dropdown list. This should be the encoding used on the pages of the old site. (As defined in the _ISO variable in the language file or as seen in the browser page info/encoding/source)</li> <li>Browse the local host and select the migration export and click on <strong>Upload and Execute</strong></li> <li>A success message should appear or alternately a listing of database errors</li> <li>Complete the other required fields in the Configuration step such as Site Name and Admin details and advance to the final step of installation. (Admin details will be ignored as the imported data will take priority. Please remember admin name and password from the old site)</li> <p><u><br /></u></p></div>', -2, 3, 0, 28, '2006-09-30 20:27:52', 62, '', '2007-11-08 11:01:01', 62, 0, '0000-00-00 00:00:00', '2006-09-29 12:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 10, 0, 0, '', '', 0, 13, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (12, 'Why does Joomla! 1.5 use utf-8 encoding?', 'why-does-joomla-15-use-utf-8-encoding', '', '<p>Well... how about never needing to mess with encoding settings again?</p><p>Ever needed to display several languages on one page or site and something always came up in Giberish?</p><p>With utf-8 (a variant of Unicode) glyphs (character forms) of basically all languages can be displayed with one single encoding setting. </p>', '', -2, 3, 0, 31, '2006-10-05 01:11:29', 62, '', '2007-11-08 11:39:51', 62, 0, '0000-00-00 00:00:00', '2006-10-03 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 0, '', '', 0, 28, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (13, 'What happened to the locale setting?', 'what-happened-to-the-locale-setting', '', 'This is now defined in the Language [<em>lang</em>].xml file in the Language metadata settings. If you are having locale problems such as dates do not appear in your language for example, you might want to check/edit the entries in the locale tag. Note that multiple locale strings can be set and the host will usually accept the first one recognised.', '', -2, 3, 0, 28, '2006-10-06 16:47:35', 62, '', '2007-11-04 23:12:30', 62, 0, '0000-00-00 00:00:00', '2006-10-05 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 10, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (14, 'What is the FTP layer for?', 'what-is-the-ftp-layer-for', '', '<p>The FTP Layer allows file operations (such as installing Extensions or updating the main configuration file) without having to make all the folders and files writable. This has been an issue on Linux and other Unix based platforms in respect of file permissions. This makes the site admin''s life a lot easier and increases security of the site.</p><p>You can check the write status of relevent folders by going to ''''Help-&gt;System Info" and then in the sub-menu to "Directory Permissions". With the FTP Layer enabled even if all directories are red, Joomla! will operate smoothly.</p><p>NOTE: the FTP layer is not required on a Windows host/server. </p>', '', -2, 3, 0, 31, '2006-10-06 21:27:49', 62, '', '2007-05-03 09:39:48', 62, 0, '0000-00-00 00:00:00', '2006-10-05 16:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 6, 0, 0, '', '', 0, 22, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (15, 'Can Joomla! 1.5 operate with PHP Safe Mode On?', 'can-joomla-15-operate-with-php-safe-mode-on', '', '<p>Yes it can! This is a significant security improvement.</p><p>The <em>safe mode</em> limits PHP to be able to perfom actions only on files/folders who''s owner is the same as PHP is currently using (this is usually ''apache''). As files normally are created either by the Joomla! application or by FTP access, the combination of PHP file actions and the FTP Layer allows Joomla! to operate in PHP Safe Mode.</p>', '', -2, 3, 0, 31, '2006-10-06 19:28:35', 62, '', '2007-11-08 11:26:51', 62, 0, '0000-00-00 00:00:00', '2006-10-05 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 7, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (16, 'Only one edit window! How do I create "Read more..."?', 'only-one-edit-window-how-do-i-create-read-more', '', '<p>This is now implemented by inserting a <strong>Read more...</strong> tag (the button is located below the editor area) a dotted line appears in the edited text showing the split location for the <em>Read more....</em> A new Plugin takes care of the rest.</p><p>It is worth mentioning that this does not have a negative effect on migrated data from older sites. The new implementation is fully backward compatible.</p>', '', -2, 3, 0, 28, '2006-10-06 19:29:28', 62, '', '2007-11-08 11:03:30', 62, 0, '0000-00-00 00:00:00', '2006-10-05 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 19, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (17, 'My MySQL  database does not support UTF-8. Do I have a problem?', 'my-mysql-database-does-not-support-utf-8-do-i-have-a-problem', '', 'No you don''t. Versions of MySQL lower than 4.1 do not have built in UTF-8 support. However, Joomla! 1.5 has made provisions for backward compatibility and is able to use UTF-8 on older databases. Let the installer take care of all the settings and there is no need to make any changes to the database (charset, collation, or any other).', '', -2, 3, 0, 31, '2006-10-07 09:30:37', 62, '', '2007-11-08 11:39:01', 62, 0, '0000-00-00 00:00:00', '2006-10-05 20:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 10, 0, 0, '', '', 0, 8, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (18, 'Joomla! Features', 'joomla-features', '', '<h4><font color="#ff6600">Joomla! features:</font></h4> <ul><li>Completely database driven site engines </li><li>News, products, or services sections fully editable and manageable</li><li>Topics sections can be added to by contributing Authors </li><li>Fully customisable layouts including <em>left</em>, <em>center</em>, and <em>right </em>Menu boxes </li><li>Browser upload of images to your own library for use anywhere in the site </li><li>Dynamic Forum/Poll/Voting booth for on-the-spot results </li><li>Runs on Linux, FreeBSD, MacOSX server, Solaris, and AIX', '  </li></ul> <h4>Extensive Administration:</h4> <ul><li>Change order of objects including news, FAQs, Articles etc. </li><li>Random Newsflash generator </li><li>Remote Author submission Module for News, Articles, FAQs, and Links </li><li>Object hierarchy - as many Sections, departments, divisions, and pages as you want </li><li>Image library - store all your PNGs, PDFs, DOCs, XLSs, GIFs, and JPEGs online for easy use </li><li>Automatic Path-Finder. Place a picture and let Joomla! fix the link </li><li>News Feed Manager. Choose from over 360 News Feeds from around the world </li><li>E-mail a friend and Print format available for every story and Article </li><li>In-line Text editor similar to any basic word processor software </li><li>User editable look and feel </li><li>Polls/Surveys - Now put a different one on each page </li><li>Custom Page Modules. Download custom page Modules to spice up your site </li><li>Template Manager. Download Templates and implement them in seconds </li><li>Layout preview. See how it looks before going live </li><li>Banner Manager. Make money out of your site</li></ul>', -2, 4, 0, 29, '2006-10-08 23:32:45', 62, '', '2007-11-04 16:38:53', 62, 0, '0000-00-00 00:00:00', '2006-10-07 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 11, 0, 0, '', '', 0, 59, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (19, 'Joomla! Overview', 'joomla-overview', '', '<p>If you''re new to Web publishing systems, you''ll find that Joomla! delivers sophisticated solutions to your online needs. It can deliver a robust enterprise-level Web site, empowered by endless extensibility for your bespoke publishing needs. Moreover, it is often the system of choice for small business or home users who want a professional looking site that''s simple to deploy and use. <em>We do content right</em>.<br /> </p><p>So what''s the catch? How much does this system cost?</p><p> Well, there''s good news ... and more good news! Joomla! 1.5 is free, it is released under an Open Source license - the GNU/General Public License v 2.0. Had you invested in a mainstream, commercial alternative, there''d be nothing but moths left in your wallet and to add new functionality would probably mean taking out a second mortgage each time you wanted something adding!</p><p>Joomla! changes all that ... <br />Joomla! is different from the normal models for content management software. For a start, it''s not complicated. Joomla! has been developed for everybody, and anybody can develop it further. It is designed to work (primarily) with other Open Source, free, software such as PHP, MySQL, and Apache. </p><p>It is easy to install and administer, and is reliable. </p><p>Joomla! doesn''t even require the user or administrator of the system to know HTML to operate it once it''s up and running.</p><p>To get the perfect Web site with all the functionality that you require for your particular application may take additional time and effort, but with the Joomla! Community support that is available and the many Third Party Developers actively creating and releasing new Extensions for the 1.5 platform on an almost daily basis, there is likely to be something out there to meet your needs. Or you could develop your own Extensions and make these available to the rest of the community. </p>', '', -2, 4, 0, 29, '2006-10-09 07:49:20', 62, '', '2007-11-04 15:50:34', 62, 0, '0000-00-00 00:00:00', '2006-10-07 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 13, 0, 0, '', '', 0, 147, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (20, 'Support and Documentation', 'support and documentation', '', '<h1>Support </h1><p>Support for the Joomla! CMS can be found on several places. The best place to start would be the official <a href="http://help.joomla.org/" target="_blank">Help Site</a>. Here you can help yourself to the information that is regularly published and updated as Joomla! develops. There is much more to come too! </p><p>Of course you should not forget the Help System of the CMS itself. On the <em>topmenu </em>in the Back-end Control panel you find the Help button which will provide you with lots of explanation on features. </p><p>Another great place would of course be the <a href="http://forum.joomla.org/" target="_blank">Forum</a> . On the Joomla! Forum you can find help and support from Community members as well as from Joomla! Core members and Working Group members. The forum contains a lot of information, FAQ''s, just about anything you are looking for in terms of support.</p><p>Two other resources for Support are the <a href="http://dev.joomla.org/" target="_blank">Joomla! Developer Network</a>  (JDN) and the <a href="http://extensions.joomla.org/" target="_blank">Joomla! Extensions Directory</a> (JED). The Developer Network for example provides lots of technical information for the experienced Developer as well as those new to Joomla! and development work in general. The JED whilst not a support site in the strictest sense has many of the Extensions that you will need as you develop your own Web site. </p><p>The Joomla! Core members are regularly posting their blog reports about several topics such as programming techniques used in Joomla!, Security, Events and more. You can even subscribe to get notified by e-mail when a new blog post is made! </p><h1>Documentation </h1><p>Joomla! Documentation can of course be found on the <a href="http://help.joomla.org/" target="_blank">Help Site</a>. You can find information such as an Installation Guide, User and Administrator manuals, Frequently Asked Questions and a lot more. The User Documentation Team are the guardians of the documentation relating to the practical use of Joomla!. The Developer Documentation Team are the stalwarts behind detailing how Joomla! works from the ground up and how you can develop your own Extensions and Templates and much more.</p><p>Other than the documentation provided by the Joomla! Documentation Work Groups there are also books written about Joomla! You can find a listing of these books in the <a href="http://help.joomla.org/content/section/44/254/" target="_blank">Joomla! Bookshelf</a> .</p><h1>Want to help? </h1><p>If you want to help in the documentation project for Joomla! then please post your details on the <a href="http://forum.joomla.org/viewforum.php?f=62" title="The Joomla! User Documentation Forums">User Documentation Forum</a> or the <a href="http://forum.joomla.org/viewforum.php?f=60" title="The Joomla! Developer Documentation Forum">Developer Documentation Forum</a> </p><p><a class="urlextern" href="http://forum.joomla.org/viewforum.php?f=391" target="_blank" title="http://forum.joomla.org/viewforum.php?f=59" onclick="return svchk()"><br /></a></p>', '', -2, 4, 0, 25, '2006-10-09 08:33:57', 62, '', '2007-11-04 18:49:37', 62, 0, '0000-00-00 00:00:00', '2006-10-07 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 13, 0, 0, '', '', 0, 6, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (21, 'Joomla! Facts', 'joomla-facts', '', '<p>Here are some interesting facts about Joomla!</p><ul><li><span>Over 140,000 active registered Users on the <a href="http://forums.joomla.org">Official Joomla! community forum</a> and more on the many international community sites.</span><ul><li><span>over 1,000,000 posts in over 200,000 topics</span></li><li>over 1,200 posts per day</li><li>growing at 150 new participants each day!</li></ul></li><li><span>1168 Projects on the JoomlaCode (<a href="http://joomlacode.org/">joomlacode.org</a> ). All for open source addons by third party developers.</span><ul><li><span>Nearly 1,900,000 downloads of Joomla! since the migration to JoomlaCode in March 2007.<br /></span></li></ul></li><li><span>2200+ Extensions for Joomla! have been registered on the <a href="http://extensions.joomla.org" title="http://extensions.joomla.org">Joomla! Extension Directory</a>  </span></li><li><span>Joomla.org exceeds 2 TB of traffic per month!</span></li><li><span>Alexa report [November 2007]: Joomla.org at #690 of the busiest Web sites in the world.</span></li></ul>', '', -2, 4, 0, 30, '2006-10-09 16:46:37', 62, '', '2007-11-04 18:24:09', 62, 0, '0000-00-00 00:00:00', '2006-10-07 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 13, 0, 0, '', '', 0, 50, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (22, 'What''s New In 1.5?', 'whats-new-in-15', '', '<p>As with previous releases, Joomla! provides a unified and easy-to-use framework for delivering content for Web sites of all kinds. To support the changing nature of the Internet and emerging Web technologies, Joomla! required substantial restructuring of its core functionality and we also used this effort to simplify many challenges within the current user interface. Joomla! 1.5 has many new features.</p>', '<p>&nbsp;</p><p style="margin-bottom: 0in">   The goals for the Joomla! 1.5 release are to: </p>    <ul><li>     <p style="margin-bottom: 0in">       Substantially improve usability, manageability, and scalability far beyond the original Mambo foundations.     </p>   </li><li>     <p style="margin-bottom: 0in"> Expand accessibility to support internationalisation, double-byte characters and Right-to-Left support for Arabic, Farsi, and Hebrew languages for example amongst others. </p>   </li><li>     <p style="margin-bottom: 0in"> Extend the integration of external applications through Web Services and remote authentication such as the Lightweight Directory Access Protocol (LDAP). </p>   </li><li>     <p style="margin-bottom: 0in"> Enhance the content delivery, template and presentation capabilities to support accessibility standards and content delivery to any destination. </p>   </li><li>     <p style="margin-bottom: 0in">       Achieve a more sustainable and flexible framework for Component and Extension developers.     </p>   </li><li>     <p style="margin-bottom: 0in">       Deliver backward compatibility with previous releases of Components, Templates, Modules and other Extensions.</p></li></ul><p>&nbsp;</p>', -2, 4, 0, 29, '2006-10-11 22:13:58', 62, '', '2007-11-04 15:39:15', 62, 0, '0000-00-00 00:00:00', '2006-10-10 18:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 0, '', '', 0, 94, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (23, 'Platforms and Open Standards', 'platforms-and-open-standards', '', '<p class="MsoNormal">Joomla! runs on any platform including Windows, most flavours of Linux, several Unix versions, and the Apple OS/X platform.  Joomla! depends on PHP and the MySQL database to deliver dynamic content.  </p>            <p class="MsoNormal">The minimum requirements are:</p>      <ul><li>Apache 1.x, 2.x and higher</li><li>PHP 4.3 and higher</li><li>MySQL 3.23 and higher</li></ul>It will also run on alternative server platforms such as Windows IIS - provided they support PHP and MySQL - but these require additional configuration in order for the Joomla! core package to be successful installed and operated.', '', -2, 4, 0, 25, '2006-10-11 04:22:14', 62, '', '2007-11-04 23:07:08', 62, 0, '0000-00-00 00:00:00', '2006-10-10 08:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 11, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (24, 'Content Layouts', 'content-layouts', '', '<p>Joomla! provides plenty of flexibility when displaying your Web content. Whether you are using Joomla! for a blog site, news or a Web site for a company, you''ll find one or more content styles to showcase your information. You can also change the style of content dynamically depending on your preferences. Joomla! calls how a page is laid out a <strong>layout</strong>. Use the guide below to understand which layouts are available and how you might use them. </p> <h2>Content </h2> <p>Joomla! makes it extremely easy to add and display content. All content  is placed where your mainbody tag in your template is located. There are three main types of layouts available in Joomla! and all of them can be customised via parameters. The display and parameters are set in the Menu Item used to display the content your working on. You create these layouts by creating a Menu Item and choosing how you want the content to display.</p> <h3>Blog Layout<br /> </h3> <p>Blog layout will show a listing of all Articles of the selected blog type (Section or Category) in the mainbody position of your template. It will give you the standard title, and Intro of each Article in that particular Category and/or Section. You can customise this layout via the use of the Preferences and Parameters, (See Article Parameters) this is done from the Menu not the Section Manager!</p> <h3>Blog Archive Layout<br /> </h3> <p>A Blog Archive layout will give you a similar output of Articles as the normal Blog Display but will add, at the top, two drop down lists for month and year plus a search button to allow Users to search for all Archived Articles from a specific month and year.</p> <h3>List Layout<br /> </h3> <p>Table layout will simply give you a <em>tabular </em>list<em> </em>of all the titles in that particular Section or Category. No Intro text will be displayed just the titles. You can set how many titles will be displayed in this table by Parameters. The table layout will also provide a filter Section so that Users can reorder, filter, and set how many titles are listed on a single page (up to 50)</p> <h2>Wrapper</h2> <p>Wrappers allow you to place stand alone applications and Third Party Web sites inside your Joomla! site. The content within a Wrapper appears within the primary content area defined by the "mainbody" tag and allows you to display their content as a part of your own site. A Wrapper will place an IFRAME into the content Section of your Web site and wrap your standard template navigation around it so it appears in the same way an Article would.</p> <h2>Content Parameters</h2> <p>The parameters for each layout type can be found on the right hand side of the editor boxes in the Menu Item configuration screen. The parameters available depend largely on what kind of layout you are configuring.</p>', '', -2, 4, 0, 29, '2006-10-12 22:33:10', 62, '', '2007-11-04 16:58:35', 62, 0, '0000-00-00 00:00:00', '2006-10-11 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 11, 0, 0, '', '', 0, 69, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (25, 'What are the requirements to run Joomla! 1.5?', 'what-are-the-requirements-to-run-joomla-15', '', '<p>Joomla! runs on the PHP pre-processor. PHP comes in many flavours, for a lot of operating systems. Beside PHP you will need a Web server. Joomla! is optimized for the Apache Web server, but it can run on different Web servers like Microsoft IIS it just requires additional configuration of PHP and MySQL. Joomla! also depends on a database, for this currently you can only use MySQL. </p>Many people know from their own experience that it''s not easy to install an Apache Web server and it gets harder if you want to add MySQL, PHP and Perl. XAMPP, WAMP, and MAMP are easy to install distributions containing Apache, MySQL, PHP and Perl for the Windows, Mac OSX and Linux operating systems. These packages are for localhost installations on non-public servers only.<br />The minimum version requirements are:<br /><ul><li>Apache 1.x or 2.x</li><li>PHP 4.3 or up</li><li>MySQL 3.23 or up</li></ul>For the latest minimum requirements details visit the <a href="http://help.joomla.org" title="Joomla! Help Site">Joomla! Help Site</a> and <a href="http://forum.joomla.org" title="The Joomla! Community Forums">Forums</a>', '', -2, 3, 0, 31, '2006-10-11 00:42:31', 62, '', '2007-11-08 11:36:52', 62, 0, '0000-00-00 00:00:00', '2006-10-10 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 23, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (26, 'Extensions', 'extensions', '', '<p>Out of the box, Joomla! does a great job of managing the content needed to make your Web site sing. But for many people, the true power of Joomla! lies in the application framework that makes it possible for developers all around the world to create powerful add-ons that are called <strong>Extensions</strong>. An Extension is used to add capabilities to Joomla! that do not exist in the base core code. Here are just some examples of the hundreds of available Extensions:</p> <ul>   <li>Dynamic form builders</li>   <li>Business or organisational directories</li>   <li>Document management</li>   <li>Image and multimedia galleries</li>   <li>E-commerce and shopping cart engines</li>   <li>Forums and chat software</li>   <li>Calendars</li>   <li>E-mail newsletters</li>   <li>Data collection and reporting tools</li>   <li>Banner advertising systems</li>   <li>Paid subscription services</li>   <li>and many, many, more</li> </ul> <p>You can find more examples over at our ever growing <a href="http://extensions.joomla.org" target="_blank" title="Joomla! Extensions Directory">Joomla! Extensions Directory</a>. Prepare to be amazed at the amount of exciting work produced by our active developer community!</p><p>A useful guide to the Extension site can be found at:<br /><a href="http://extensions.joomla.org/content/view/15/63/" target="_blank" title="Guide to the Joomla! Extension site">http://extensions.joomla.org/content/view/15/63/</a> </p> <h3>Types of Extensions </h3><p>There are five types of extensions:</p> <ul>   <li>Components</li>   <li>Modules</li>   <li>Templates</li>   <li>Plugins</li>   <li>Languages</li> </ul> <p>You can read more about the specifics of these using the links in the Article Index - a Table of Contents (yet another useful feature of Joomla!) - at the top right or by clicking on the <strong>Next </strong>link below.<br /> </p> <hr title="Components" class="system-pagebreak" /> <h3><img src="images/stories/ext_com.png" border="0" alt="Component - Joomla! Extension Directory" title="Component - Joomla! Extension Directory" width="17" height="17" /> Components</h3> <p>A Component is the largest and most complex of the Extension types.  Components are like mini-applications that render the main body of the  page. An analogy that might make the relationship easier to understand  would be that Joomla! is a book and all the Components are chapters in  the book. The core Article Component (<font face="courier new,courier">com_content</font>), for example, is the  mini-application that handles all core Article rendering just as the  core registration Component (<font face="courier new,courier">com_user</font>) is the mini-application  that handles User registration.</p> <p>Many of Joomla!''s core features are provided by the use of default Components such as:</p> <ul>   <li>Contacts</li>   <li>Front Page</li>   <li>News Feeds</li>   <li>Banners</li>   <li>Mass Mail</li>   <li>Polls</li></ul><p>A Component will manage data, set displays, provide functions, and in general can perform any operation that does not fall under the general functions of the core code.</p> <p>Components work hand in hand with Modules and Plugins to provide a rich variety of content display and functionality aside from the standard Article and content display. They make it possible to completely transform Joomla! and greatly expand its capabilities.</p>  <hr title="Modules" class="system-pagebreak" /> <h3><img src="images/stories/ext_mod.png" border="0" alt="Module - Joomla! Extension Directory" title="Module - Joomla! Extension Directory" width="17" height="17" /> Modules</h3> <p>A more lightweight and flexible Extension used for page rendering is a Module. Modules are used for small bits of the page that are generally  less complex and able to be seen across different Components. To  continue in our book analogy, a Module can be looked at as a footnote  or header block, or perhaps an image/caption block that can be rendered  on a particular page. Obviously you can have a footnote on any page but  not all pages will have them. Footnotes also might appear regardless of  which chapter you are reading. Simlarly Modules can be rendered  regardless of which Component you have loaded.</p> <p>Modules are like little mini-applets that can be placed anywhere on your site. They work in conjunction with Components in some cases and in others are complete stand alone snippets of code used to display some data from the database such as Articles (Newsflash) Modules are usually used to output data but they can also be interactive form items to input data for example the Login Module or Polls.</p> <p>Modules can be assigned to Module positions which are defined in your Template and in the back-end using the Module Manager and editing the Module Position settings. For example, "left" and "right" are common for a 3 column layout. </p> <h4>Displaying Modules</h4> <p>Each Module is assigned to a Module position on your site. If you wish it to display in two different locations you must copy the Module and assign the copy to display at the new location. You can also set which Menu Items (and thus pages) a Module will display on, you can select all Menu Items or you can pick and choose by holding down the control key and selecting multiple locations one by one in the Modules [Edit] screen</p> <p>Note: Your Main Menu is a Module! When you create a new Menu in the Menu Manager you are actually copying the Main Menu Module (<font face="courier new,courier">mod_mainmenu</font>) code and giving it the name of your new Menu. When you copy a Module you do not copy all of its parameters, you simply allow Joomla! to use the same code with two separate settings.</p> <h4>Newsflash Example</h4> <p>Newsflash is a Module which will display Articles from your site in an assignable Module position. It can be used and configured to display one Category, all Categories, or to randomly choose Articles to highlight to Users. It will display as much of an Article as you set, and will show a <em>Read more...</em> link to take the User to the full Article.</p> <p>The Newsflash Component is particularly useful for things like Site News or to show the latest Article added to your Web site.</p>  <hr title="Plugins" class="system-pagebreak" /> <h3><img src="images/stories/ext_plugin.png" border="0" alt="Plugin - Joomla! Extension Directory" title="Plugin - Joomla! Extension Directory" width="17" height="17" /> Plugins</h3> <p>One  of the more advanced Extensions for Joomla! is the Plugin. In previous  versions of Joomla! Plugins were known as Mambots. Aside from changing their name their  functionality has been expanded. A Plugin is a section of code that  runs when a pre-defined event happens within Joomla!. Editors are Plugins, for example, that execute when the Joomla! event <font face="courier new,courier">onGetEditorArea</font> occurs. Using a Plugin allows a developer to change  the way their code behaves depending upon which Plugins are installed  to react to an event.</p>  <hr title="Languages" class="system-pagebreak" /> <h3><img src="images/stories/ext_lang.png" border="0" alt="Language - Joomla! Extensions Directory" title="Language - Joomla! Extensions Directory" width="17" height="17" /> Languages</h3> <p>New  to Joomla! 1.5 and perhaps the most basic and critical Extension is a Language. Joomla! is released with multiple Installation Languages but the base Site and Administrator are packaged in just the one Language <strong>en-GB</strong> - being English with GB spelling for example. To include all the translations currently available would bloat the core package and make it unmanageable for uploading purposes. The Language files enable all the User interfaces both Front-end and Back-end to be presented in the local preferred language. Note these packs do not have any impact on the actual content such as Articles. </p> <p>More information on languages is available from the Joomla! help site: Language Packs and Localised Releases<br />   <a href="http://help.joomla.org/content/view/1651/243/" target="_blank" title="Joomla! help site: Language Packs and Localised Releases">http://help.joomla.org/content/view/1651/243/</a></p>', '', -2, 4, 0, 29, '2006-10-11 06:00:00', 62, '', '2007-11-08 14:49:48', 62, 0, '0000-00-00 00:00:00', '2006-10-10 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 24, 0, 0, 'About Joomla!, General, Extensions', '', 0, 100, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (27, 'The Joomla! Community', 'the-joomla-community', '', '<p><strong>Got a question? </strong>With more than 140,000 members, the online forums at <a href="http://forum.joomla.org/" target="_blank">forum.joomla.org</a>  are a great resource for both new and experienced users. Go ahead, ask your toughest questions, the community is waiting to see what you''re going to do with your Joomla! site.</p><p><strong>Do you want to show off your new Joomla! Web site?</strong> Go ahead, we have a section dedicated to that on our forum. </p><p><strong>Do you want to join in?</strong></p><p>If you think working with Joomla! is fun, wait until you start working on it. We''re passionate about helping Joomla! Users make the jump to becoming contributing members of the community, so there are many ways you can help Joomla!''s development:</p>                  <ul><li>Submit news about Joomla!. We syndicate all Joomla! related news on our <a href="http://news.joomla.org" title="Joomla! News Portal">news portal</a>. If you have some Joomla! news that you would like to share with the community, please submit your short story, article, announcement or review <a href="http://www.joomla.org/component/option,com_submissions/Itemid,75" title="Submit News">here</a>. </li><li>Report bugs and request features in our <a href="http://joomlacode.org/gf/project/joomla/tracker/" title="Joomla! developement trackers">trackers</a>. Please read <a href="http://dev.joomla.org/content/view/1450/89/">Reporting Bugs</a>, for details on how we like our bug reports served up</li><li>Submit patches for new and/or fixed behaviour. Please read <a href="http://dev.joomla.org/content/view/14/55/">Submitting Patches</a>, for details on how to submit a patch.</li><li>Join the <a href="http://forum.joomla.org/viewforum.php?f=509" title="Joomla! development forums">developer forums</a> and share your ideas for how to improve Joomla!. We''re always open to suggestions, although we''re likely to be sceptical of large-scale suggestions without some code to back it up.</li><li>Join any of the <a href="http://dev.joomla.org/content/view/13/53/" title="Joomla! working groups">Joomla!  Working Groups</a>  and bring your personal expertise to  the Joomla! community. More info about the different working groups can be found <a href="http://dev.joomla.org/content/view/13/53/" title="Joomla! working groups">on the Working Group Roll Call</a>.      </li></ul>           <p> That''s all you need to know if you''d like to join the Joomla! development community.  </p>', '', -2, 4, 0, 30, '2006-10-12 16:50:48', 62, '', '2007-11-04 18:29:55', 62, 0, '0000-00-00 00:00:00', '2006-10-11 02:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 11, 0, 0, '', '', 0, 50, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (28, 'How do I install Joomla! 1.5?', 'how-do-i-install-joomla-15', '', '<p>Installing of Joomla! 1.5 is pretty easy. We assume you have set-up your Web site, and it is accessible with your browser.<br /><br />Download Joomla! 1.5, unzip it and upload/copy the files into the directory you Web site points to, fire up your browser and enter your Web site address and the installation will start.  </p><p>For full details on the installation processes check out the <a href="http://help.joomla.org/content/category/48/268/302" title="Joomla! 1.5 Installation Manual">Installation Manual</a> on the <a href="http://help.joomla.org" title="Joomla! Help Site">Joomla! Help Site</a> where you will also find download instructions for a PDF version too. </p>', '', -2, 3, 0, 31, '2006-10-11 01:10:59', 62, '', '2007-11-08 11:22:14', 62, 0, '0000-00-00 00:00:00', '2006-10-10 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 0, '', '', 0, 4, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (29, 'What is the purpose of the collation selection in the installation screen?', 'what-is-the-purpose-of-the-collation-selection-in-the-installation-screen', '', 'The collation option determines the way ordering in the database is done. In languages that use special characters, for instance the German umlaut, the database collation determines the sorting order. If you don''t know which collation you need, select the "utf8_general_ci" as most languages use this. The other collations listed are exceptions in regards to the general collation. If your language is not listed in the list of collations it most likely means that "utf8_general_ci is suitable.', '', -2, 3, 0, 32, '2006-10-11 03:11:38', 62, '', '2007-05-03 09:40:32', 62, 0, '0000-00-00 00:00:00', '2006-10-10 08:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 4, 0, 0, '', '', 0, 6, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (30, 'What languages are supported by Joomla! 1.5?', 'what-languages-are-supported-by-joomla-15', '', 'Within the Installer you will find a wide collection of languages. The installer currently supports the following languages: Arabic, Bulgarian, Bengali, Czech, Danish, German, Greek, English, Spanish, Finnish, French, Hebrew, Devanagari(India), Croatian(Croatia), Magyar (Hungary), Italian, Malay, Norwegian bokmal, Dutch, Portuguese(Brasil), Portugues(Portugal), Romanian, Russian, Serbian, Svenska, Thai and more are being added all the time.<br />By default the English language is installed for the Back and Front-ends. You can download additional language files from the <a href="http://extensions.joomla.org" title="Joomla! Extensions Directory">Joomla!Extensions Directory</a>. In addition some translation teams are offering fully localised versions of the entire package. Please check the <a href="http://help.joomla.org/content/view/1651/62/" target="blank_" title="Joomla! help site for links">Joomla! Help Site for links</a>   to locations where languages and localised versions can be found.', '', -2, 3, 0, 32, '2006-10-11 01:12:18', 62, '', '2007-11-08 11:45:40', 62, 0, '0000-00-00 00:00:00', '2006-10-10 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 0, '', '', 0, 7, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (31, 'Is it useful to install the sample data?', 'is-it-useful-to-install-the-sample-data', '', 'Well you are reading it right now! This depends on what you want to achieve. If you are new to Joomla! and have no clue how it all fits together, just install the sample data. If you don''t like the English sample data because you - for instance - speak Chinese, then leave it out.', '', -2, 3, 0, 27, '2006-10-11 09:12:55', 62, '', '2007-11-08 12:03:24', 62, 0, '0000-00-00 00:00:00', '2006-10-10 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 2, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (32, 'Where is the Static Content Item?', 'where-is-the-static-content', '', '<p>In Joomla! versions prior to 1.5 there were separate processes for creating a Static Content Item and normal Content Items. The processes have been combined now and whilst both content types are still around they are renamed as Articles for Content Items and Uncategorized Articles for Static Content Items. </p><p>If you want to create a static item, create a new Article in the same way as for standard content and rather than relating this to a particular Section and Category just select <span style="font-style: italic">Uncategorized</span> as the option in the Section and Category drop down lists.</p>', '', -2, 3, 0, 28, '2006-10-10 23:13:33', 62, '', '2007-11-08 11:23:56', 62, 0, '0000-00-00 00:00:00', '2006-10-10 04:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 4, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (33, 'What is an Uncategorised Article?', 'what-is-uncategorised-article', '', 'Most Articles will be assigned to a Section and Category. In many cases, you might not know where you want it to appear so put the Article in the <em>Uncategorized </em>Section/Category. The Articles marked as <em>Uncategorized </em>are handled as static content.', '', -2, 3, 0, 31, '2006-10-11 15:14:11', 62, '', '2007-11-08 11:23:14', 62, 0, '0000-00-00 00:00:00', '2006-10-10 12:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 0, '', '', 0, 5, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (34, 'Does the PDF icon render pictures and special characters?', 'does-the-pdf-icon-render-pictures-and-special-characters', '', 'Yes! Prior to Joomla! 1.5, only the text values of an Article and only for ISO-8859-1 encoding was allowed in the PDF rendition. With the new PDF library in place, the complete Article including images is rendered and applied to the PDF. The PDF generator also handles the UTF-8 texts and can handle any character sets from any language. The appropriate fonts must be installed but this is done automatically during a language pack installation.', '', -2, 3, 0, 32, '2006-10-11 17:14:57', 62, '', '2007-11-08 11:46:29', 62, 0, '0000-00-00 00:00:00', '2006-10-10 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 5, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (35, 'Is it possible to change A Menu Item''s Type?', 'is-it-possible-to-change-the-types-of-menu-entries', '', '<p>You indeed can change the Menu Item''s Type to whatever you want, even after they have been created. </p><p>If, for instance, you want to change the Blog Section of a Menu link, go to the Control Panel-&gt;Menus Menu-&gt;[menuname]-&gt;Menu Item Manager and edit the Menu Item. Select the <strong>Change Type</strong> button and choose the new style of Menu Item Type from the available list. Thereafter, alter the Details and Parameters to reconfigure the display for the new selection  as you require it.</p>', '', -2, 3, 0, 31, '2006-10-10 23:15:36', 62, '', '2007-11-08 11:25:01', 62, 0, '0000-00-00 00:00:00', '2006-10-10 04:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 17, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (36, 'Where did the Installers go?', 'where-did-the-installer-go', '', 'The improved Installer can be found under the Extensions Menu. With versions prior to Joomla! 1.5 you needed to select a specific Extension type when you wanted to install it and use the Installer associated with it, with Joomla! 1.5 you just select the Extension you want to upload, and click on install. The Installer will do all the hard work for you.', '', -2, 3, 0, 28, '2006-10-10 23:16:20', 62, '', '2007-11-04 23:10:18', 62, 0, '0000-00-00 00:00:00', '2006-10-10 04:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 3, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (37, 'Where did the Mambots go?', 'where-did-the-mambots-go', '', '<p>Mambots have been renamed as Plugins. </p><p>Mambots were introduced in Mambo and offered possibilities to add plug-in logic to your site mainly for the purpose of manipulating content. In Joomla! 1.5, Plugins will now have much broader capabilities than Mambots. Plugins are able to extend functionality at the framework layer as well.</p>', '', -2, 3, 0, 28, '2006-10-11 09:17:00', 62, '', '2007-11-08 11:04:30', 62, 0, '0000-00-00 00:00:00', '2006-10-10 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 3, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (38, 'I installed with my own language, but the Back-end is still in English', 'i-installed-with-my-own-language-but-the-back-end-is-still-in-english', '', '<p>A lot of different languages are available for the Back-end, but by default this language may not be installed. If you want a translated Back-end, get your language pack and install it using the Extension Installer. After this, go to the Extensions Menu, select Language Manager and make your language the default one. Your Back-end will be translated immediately.</p><p>Users who have access rights to the Back-end may choose the language they prefer in their Personal Details parameters. This is of also true for the Front-end language.</p><p> A good place to find where to download your languages and localised versions of Joomla! is on our <a href="http://help.joomla.org/content/view/1651/62/" target="blank_" title="Help Site">Help Site</a>.</p>', '', -2, 3, 0, 32, '2006-10-11 17:18:14', 62, '', '2007-11-08 11:42:43', 62, 0, '0000-00-00 00:00:00', '2006-10-10 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 6, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (39, 'How do I remove an Article?', 'how-do-i-remove-an-article', '', '<p>To completely remove an Article, select the Articles that you want to delete and move them to the Trash. Next, open the Article Trash in the Content Menu and select the Articles you want to delete. After deleting an Article, it is no longer available as it has been deleted from the database and it is not possible to undo this operation.  </p>', '', -2, 3, 0, 27, '2006-10-11 09:19:01', 62, '', '2007-11-08 12:01:26', 62, 0, '0000-00-00 00:00:00', '2006-10-10 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 3, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (40, 'What is the difference between Archiving and Trashing an Article?', 'what-is-the-difference-between-archiving-and-trashing-an-article', '', '<p>When you <em>Archive </em>an Article, the content is put into a state which removes it from your site as published content. The Article is still available from within the Control Panel and can be <em>retrieved </em>for editing or republishing purposes. Trashed Articles are just one step from being permanently deleted but are still available until you Remove them from the Trash Manager. You should use Archive if you consider an Article important, but not current. Trash should be used when you want to delete the content entirely from your site and from future search results.  </p>', '', -2, 3, 0, 27, '2006-10-11 05:19:43', 62, '', '2007-11-08 12:02:40', 62, 0, '0000-00-00 00:00:00', '2006-10-10 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 0, '', '', 0, 4, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (41, 'Newsflash 5', 'newsflash-5', '', 'Joomla! 1.5 - ''Experience the Freedom''!. It has never been easier to create your own dynamic Web site. Manage all your content from the best CMS admin interface and in virtually any language you speak.', '', -2, 1, 0, 3, '2006-10-12 00:17:31', 62, '', '2007-11-08 12:17:53', 62, 0, '0000-00-00 00:00:00', '2006-10-11 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 0, '', '', 0, 4, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (42, 'Newsflash 4', 'newsflash-4', '', 'Yesterday all servers in the U.S. went out on strike in a bid to get more RAM and better CPUs. A spokes person said that the need for better RAM was due to some fool increasing the front-side bus speed. In future, buses will be told to slow down in residential motherboards.', '', -2, 1, 0, 3, '2006-10-12 00:25:50', 62, '', '2007-11-08 12:17:20', 62, 0, '0000-00-00 00:00:00', '2006-10-11 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 0, '', '', 0, 5, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (43, 'Example Pages and Menu Links', 'example-pages-and-menu-links', '', '<p>This page is an example of content that is <em>Uncategorized</em>; that is, it does not belong to any Section or Category. You will see there is a new Menu in the left column. It shows links to the same content presented in 4 different page layouts.</p><ul><li>Section Blog</li><li>Section Table</li><li> Blog Category</li><li>Category Table</li></ul><p>Follow the links in the <strong>Example Pages</strong> Menu to see some of the options available to you to present all the different types of content included within the default installation of Joomla!.</p><p>This includes Components and individual Articles. These links or Menu Item Types (to give them their proper name) are all controlled from within the <strong><font face="courier new,courier">Menu Manager-&gt;[menuname]-&gt;Menu Items Manager</font></strong>. </p>', '', -2, 0, 0, 0, '2006-10-12 09:26:52', 62, '', '2007-11-04 15:36:15', 62, 0, '0000-00-00 00:00:00', '2006-10-11 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, 'Uncategorized, Uncategorized, Example Pages and Menu Links', '', 0, 42, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (44, 'Nuestra Visión', 'vision', '', '<table border="0" cellpadding="2" cellspacing="3" width="100%">\r\n<tbody style="text-align: left;">\r\n<tr style="text-align: left;">\r\n<td style="text-align: left;" valign="top" width="1%"><img style="margin: 0px 5px; vertical-align: middle;" title="icon-check.gif" alt="icon-check.gif" src="images/stories/home/icon-check.gif" width="25" height="25" /></td>\r\n<td style="text-align: justify;" valign="top" width="99%">\r\n<p><strong>Nuestro primer compromiso es con el cliente y las personas</strong></p>\r\n<p>Entendemos la gran responsabilidad que es formar parte del área de Recursos Humanos de una Institución, el capital humano. Somos parte de la puerta de entrada, por lo que a cada persona que cruza el umbral de <strong><span style="color: #ff9900;">CLB Consultores</span></strong> será atendido con respeto, calidez y seriedad.</p>\r\n</td>\r\n</tr>\r\n<tr style="text-align: left;">\r\n<td style="text-align: left;" valign="top"><img style="margin: 0px 5px; vertical-align: middle;" title="icon-check.gif" alt="icon-check.gif" src="images/stories/home/icon-check.gif" width="25" height="25" /></td>\r\n<td style="text-align: left;" valign="top">\r\n<p><strong>Nuestro segundo compromiso es entregarle un servicio integral</strong></p>\r\n<p>Hemos sido afortunadas y agradecidas, poniendo nuestra capacidad de trabajo a disposición de los clientes, sin horario, sin garantías y sin miedo nos atrevemos a asegurar que pueden contar con nosotras.</p>\r\n</td>\r\n</tr>\r\n<tr style="text-align: left;">\r\n<td style="text-align: left;" valign="top"></td>\r\n<td style="text-align: left;" valign="top">Es por ello que trabajamos para ser una consultora donde el diálogo y la comunicación con el cliente sea la base de una relación de confianza y desarrollo, alineándonos como parte de su equipo. Poniendo a disposición un equipo multidisciplinario, capaz de responder eficaz y creativamente a los requerimientos del cliente.</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 5, 0, 34, '2008-07-02 02:20:36', 62, '', '2008-08-11 01:51:32', 62, 0, '0000-00-00 00:00:00', '2008-07-02 02:20:36', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 11, 0, 5, '', '', 0, 280, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (45, 'Quienes Somos', 'quienes-somos', '', '<div style="text-align: justify;"><img width="250" src="images/stories/home/fran_y_merce.jpg" alt="fran_y_merce.jpg" height="167" style="margin: 5px; float: left;" title="fran_y_merce.jpg" class="marcofoto" />A diario se puede ver en la literatura especializada y estudios sobre la creación de las Pymes, cuan difícil es emprender, y aún más si se trata de mujeres. Bueno, en ese sentido <strong><span style="color: #ff9900;">CLB Consultores</span></strong>, ha sido capaz de desafiar la lógica. Y si bien es posible que no seamos un referente en la historia, nosotras, Francisca y Mercedes, contamos con la valentía de aceptar los proyectos y obtener resultados exitosos.<br /><br />Así fue como <strong><span style="color: #ff9900;">CLB Consultores </span></strong>se gestó en Febrero de 2006, cuando aceptamos unir nuestras competencias para un desafiante proyecto de reclutamiento y selección. En tiempo record se formó un equipo de trabajo, procedimientos de eficiencia y control, respondiendo al cliente de manera satisfactoria.<br /><br /><strong><span style="color: #ff9900;">CLB Consultores</span></strong> obtuvo su escritura pública el 30 de mayo del mismo año.  <br /><br />Lo que en un principio fue un pequeño desafío creció de tal manera que hoy no sólo abarcamos el área de Reclutamiento y Selección, sino que se sumó con éxito el ámbito de las Comunicaciones; teniendo en la actualidad dos áreas donde la flexibilidad y la eficiencia han sido fundamentales para nuestros clientes.<br /><br />Hemos abordado los trabajos con profesionalismo, con vaivenes, con logros dignos de contar y frustraciones que nos han enseñado a atender cada vez mejor las contingencias, buscando constantemente nuevas modalidades, formatos, procedimientos para poder responder adecuadamente a los requerimientos.<br /><br />En el mundo actual sabemos que lo único constante es el cambio y que hay que estar atenta a sus señales. Es por eso que constantemente estamos cuestionándonos sobre nuestras prácticas y experiencia, buscando mejoras, profundizando en nuestro equipo y de manera individual y de manera autodidacta alimentándonos de conocimientos. <br /><br />Queremos que nuestros clientes sean capaces de confiar en nuestra visión que se transforma en prácticas concretas. Tenemos la certeza, que cada persona que forma parte de nuestro equipo aborda su trabajo con lealtad, respeto, compromiso y calidad humana.</div>\r\n<div style="text-align: justify;"><br /></div>', '', 1, 5, 0, 34, '2008-07-02 02:27:19', 62, '', '2008-09-15 17:03:05', 62, 0, '0000-00-00 00:00:00', '2008-07-02 02:27:19', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 25, 0, 4, '', '', 0, 790, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (46, 'Equipo', 'equipo', '', '<br />  <table border="0" cellspacing="0" cellpadding="0" id="corporate-data"> <tbody> <tr class="first"> <th><img class="marcofoto" src="images/stories/home/equipo_merce.jpg" border="0" width="93" height="120" /></th> <td> <p><strong>Mercedes Celedón B. (Socia)</strong></p> <p align="justify">Cuento con una formación  profesional y personal muy orientada al servicio y al desarrollo. En el tiempo  que llevamos formando este proyecto laboral, puedo afirmar que nuestro sello  está dado por mostrar estas cualidades con todos aquellos con los que nos  encontramos.</p> <p align="justify">Mis grandes fortalezas son la  superación personal, gran capacidad de trabajo y la curiosidad, las que pongo  al servicio de mi equipo de trabajo y a mis clientes.</p> </td> </tr> <tr> <th><img class="marcofoto" src="images/stories/home/equipo_fran.jpg" border="0" width="93" height="120" /></th> <td> <p><strong>Francisca Celedón B. (Socia)</strong></p> <p align="justify">Desde niña quería estudiar periodismo. Estudié en la Universidad Diego Portales, lo que me permitió conocer los distintos campos de trabajo de las comunicaciones, un sinfin de cosas que cada día estoy dispuesta a seguir explorando. Al titularme trabajé unos meses en Publimetro y partí a Europa y me quedé Barcelona, donde fui parte del equipo que abrió el diario Metro.<br /><br />Desde mi regreso el 2001, las vivencias laborales se fueron sumando: campañas políticas; la revista El Periodista, como coordinadora y luego editora general; productora de programa radial, luego co-animadora del mismo junto hasta ese entonces siempre jefe, Francisco Martorell; División de Seguridad Ciudadana del Ministerio del Interior; y algunas otras cosas que quedan en el tintero. Todos trabajos que me permitieron darme cuenta que tenía ganas de hacer cosas desde mi capacidad.<br /><br />Así formé parte de la fundación de CLB Consultores, una empresa que desde sus inicios tiene como fin estar siempre abierta a nuevas formas de trabajar y soñar.</p> </td> </tr> <tr> <th><img class="marcofoto" src="images/stories/home/foto_carlos.jpg" border="0" width="93" height="120" /></th> <td> <p><strong>Carlos  Concha. Director Comunicaciones</strong></p> <p align="justify">Me cautivaron las  comunicaciones y luego el marketing. En una región donde todo hay por inventar  y hacer los elegí precisamente por su potencial de constituir herramientas de  ejercicio de ciudadanía, empoderamiento, representación y desarrollo social,  por facilitar la generación de redes de conocimiento y fortalecimiento del  espíritu y la cultura.</p> <p align="justify">Los distintos campos y  herramientas comunicacionales que hemos realizado de manera conjunta a diversos  equipos laborales dan cuenta de una visión integral, una apertura responsable a  los vertiginosos cambios, considerando la belleza como la forma más efectiva de  comunicar.</p> </td> </tr> <tr> <th><img class="marcofoto" src="images/stories/home/foto_daniel.jpg" border="0" width="93" height="120" /></th> <td> <p><strong>Daniel   Encina</strong><strong>,  Consultor Senior</strong></p> <p align="justify">Desde la Universidad he  tenido distintos intereses de acción entre los que adquirí experiencias principalmente  en el plano clínico desempeñándome en mi orientación psicoanalítica, así como  en el plano laboral en el que hoy en día ejerzo. La experiencia de establecer  un vínculo profesional duradero con las personas y conocerlas íntimamente, así  como la de estar en un contacto más pasajero y en un marco evaluativo, me ha  permitido alcanzar el desarrollo profesional que se requiere en áreas como la  de selección. Considero relevante que un profesional del área que sea, se  desarrolle en los distintos campos de acción en los que se le permita actuar,  por esta razón es que en mi experiencia he buscado integrar el trabajo como  evaluador en selección de personal, con el clínico, con grupos, de adolescentes  y de adultos, de los que he extraído experiencias valiosas para mi crecimiento  como psicólogo.</p> </td> </tr> <tr> <th><img class="marcofoto" src="images/stories/home/foto_andrea.jpg" border="0" width="93" height="120" /></th> <td> <p><strong>Andrea  Méndez, Consultor Senior</strong></p><p align="justify">Creo que desde la psicología es posible realizar  muchas intervenciones, y desde distintos campos. Desde la psicología laboral,  especialmente desde el área de selección, el quehacer permite incorporar distintas  perspectivas al análisis, ya que intervienen factores individuales,  psicológicos, de salud integral, además de socioculturales que se encuentran  presentes al momento de optar por un trabajo. Miramos así las personas dentro  de un plano proyectivo que de alguna manera define las posibilidades de  adecuarse a cierto cargo como a las de integrarse a una organización con su  visión y cultura.</p> <p align="justify">Durante mis estudios universitarios me incliné por  el área clínica, lo cual me ha facilitado esta visión más integral que está  presente en la interacción con los postulantes, desde las conversaciones con  los mismos hasta la aplicación e interpretación de los test y elaboración de  sus informes psicolaborales.</p> </td> </tr> <tr> <th><img class="marcofoto" src="images/stories/home/foto_carla.jpg" border="0" width="93" height="120" /></th> <td> <p><strong>Carla   Farias</strong><strong> L. Asistente Selección</strong></p> <p align="justify">Desde que  terminé mis estudios de enseñanza media, me he dedicado a trabajar en el área  de Recursos Humanos para costear la educación superior, si bien no es el área  donde me estoy perfeccionando, el hecho de estar implicada en el manejo de  selección de personal me prepara para el mundo laboral. Además siempre hay que  tener conocimiento en diferentes áreas lo que nos permitirá seguir creciendo  como personas y profesionales.</p> <p align="justify">Cuando entré  a trabajar a CLB, me propuse aprender todo. Comencé ejerciendo como secretaria,  y este cargo me ayudó a tener la voluntad de pararme frente a una persona sin  temor a nada.</p> <p align="justify">A los pocos  meses, ascendí a Asistente de Selección, lo que se ha convertido en todo un  desafío, que lo asumo cada día con fuerza y cariño.</p> <p align="justify">Desde que estoy  en CLB, he aprendido que en el trabajo hay que esforzarse para adquirir mayores  conocimientos y aprender de las situaciones. No hay que esperar a resolver las  cosas por sí mismo cuando no se puede, ya que siempre habrá alguien que nos  podrá ayudar.</p> </td> </tr> <tr> <th><img class="marcofoto" src="images/stories/home/foto_daniela.jpg" border="0" width="93" height="120" /></th> <td> <p><strong>Daniela  Heredia D. Secretaria </strong></p> <p align="justify">Insertarme en el mundo  laboral me ha ayudado para ir creciendo y formar nuevas expectativas de vida.  Mi primer trabajo oficial es en CLB consultores, pero antes realicé mi  práctica, que me permitió desenvolverme en distintas situaciones y momentos  laborales que sin esa experiencia no hubiese podido resolver. Además, que  también me sirvió para perder el miedo de hacer diferentes cosas.</p> <p align="justify">En CLB me desempeño como  Secretaria. Es mi primera experiencia laboral y ha sido muy agradable y  satisfactorio. Junto con eso estoy segura que iré aprendiendo mucho y lo haré  con entusiasmo, desarrollando todas mis habilidades y conocimientos.</p> </td> </tr> <tr> <th valign="top"> Evaluadores Región Metropolitana </th> <td><strong>Matías Corvera</strong>, Psicólogo RM<br /> <strong>Viviana Martin</strong>, Psicóloga RM<br /> <strong>Mireya Sepúlveda</strong>, Psicóloga RM<br /> <strong>Javiera Donoso</strong>, Psicóloga RM</td> </tr> <tr> <th valign="top">Evaluadores Regiones</th> <td><strong>Gabriela Miño Pizarro</strong>, Psicóloga I Región<br /> <strong>Daniela Palacios</strong>, Psicóloga II región<br /> <strong>Susana Maturana</strong>, Psicóloga III Región<br /> <strong>Rodrigo Salamanca</strong>, Psicólogo III Región<br /> <strong>Rocío Paredes</strong>, Psicóloga IV Región<br /> <strong>María de los Ángeles Schulz</strong>, Psicóloga V Región<br /> <strong>Roberto Polanco</strong>, Psicólogo VI Región<br /> <strong>Pamela Poblete</strong>, Psicóloga VII región<br /> <strong>Simona Espinoza</strong>, Psicóloga VIII<br /> <strong>Natalia Rebolledo</strong>, Psicóloga VIII Región<br /> <strong>Rose Marie Alaff</strong>, Psicóloga IX Región<br /> <strong>María Consuelo</strong> <strong>Vera</strong>, Psicóloga XI Región</td> </tr> </tbody> </table>', '', 1, 5, 0, 34, '2008-07-02 02:28:15', 62, '', '2008-09-02 20:07:56', 62, 0, '0000-00-00 00:00:00', '2008-07-02 02:28:15', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 25, 0, 3, '', '', 0, 695, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (58, 'Prueba de destacados', 'prueba-de-destacados', '', 'Bajada de prueba de destacados', '', 0, 6, 0, 39, '2008-08-10 18:05:18', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2008-08-10 18:05:18', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 7, '', '', 0, 2, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (61, 'Minuto a minuto: Cita clave de Unasur por crisis en Bolivia', 'minuto-a-minuto-cita-clave-de-unasur-por-crisis-en-bolivia', '', '<p align="justify">SANTIAGO.- Hoy se realizará en Santiago la cita extraordinaria de los nueve presidentes que componen la Unión de Naciones Sudamericanas (Unasur), la cual fue convocada por la Presidenta Michelle Bachelet para analizar la grave crisis política que vive Bolivia.</p>\r\n<p align="justify"><strong><img width="200" src="images/stories/noticias/1.jpg" alt="1.jpg" height="150" style="float: left; margin: 5px; border: #12ec17 4px solid;" title="1.jpg" />12:35.-</strong> El canciller peruano, José García Belaúnde aseveró que el Mandatario peruano, Alan García, "no  asiste a la reunión (de la Unasur), debido a que debe contar con la  autorización del Congreso para ausentarse de su país, y la invitación para participar que llegó el fin de semana cuando había cesado sus funciones el Poder Legislativo".</p>\r\n<p align="justify">12:21.- El Presidente de Bolivia, Evo Morales, arribó a Chile y agradeció a la Presidenta Michelle Bachelet por convocar a la reunión extraordinaria de la Unasur. "Agradezco la convocatoria de la Presidenta pro tempore de la Unasur para explicarle a los Presidentes de Sudamérica sobre un golpe de estado cívico prefectural de algunos departamentos de Estado durante los últimos días, con toma de instituciones, saque y robo a instituciones del Estado, intento de asalto a la policía nacional, a las Fuerzas Armadas o actos y acciones terroristas (…) pero sobre todo cómo algunos grupos ejercitan delitos de lesa humanidad masacrando a los sectores más pobre de mi país como es el movimiento campesino indígena", dijo.</p>', '', 0, 6, 0, 39, '2008-09-15 16:37:41', 62, '', '2008-09-15 16:58:09', 62, 0, '0000-00-00 00:00:00', '2008-09-15 16:37:41', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 5, '', '', 0, 2, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (47, 'Nuestras Oficinas', 'nuestras-oficinas', '', '<table border="0" cellspacing="12" cellpadding="0" width="100%">   <tbody><tr>     <td width="22%" valign="top"><span style="text-align: justify">       <br />       <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" width="250" height="167" align="left"><param name="width" value="250" /><param name="height" value="167" /><param name="align" value="left" /><param name="quality" value="high" /><param name="src" value="images/stories/home/casa_3.swf" /><param name="vspace" value="5" /><param name="hspace" value="5" /><param name="wmode" value="transparent" /><embed type="application/x-shockwave-flash" width="250" height="167" align="left" quality="high" src="images/stories/home/casa_3.swf" vspace="5" hspace="5" wmode="transparent"></embed></object>     </span></td>     <td rowspan="2" width="78%" valign="top"><p style="text-align: justify" class="bloquetextoficinas">Nuestras <strong>oficinas principales</strong> están ubicadas en <strong>Phillips 16, piso 4, oficina X, Plaza de Armas</strong> (<a href="index.php?option=com_content&view=article&id=59&Itemid=73">ver mapa</a>). No sólo estamos en el Kilómetro 0 de Santiago, desde donde nace y empieza a crecer la capital de Chile, sino que además, las instalaciones que hoy reciben a cientos de personas mensualmente, en sus tiempos fue la <strong>residencia personal de don Jorge Alessandri Rodríguez</strong>, quien fuera Presidente de Chile entre los años 1958 y 1964.</p>     <p style="text-align: justify" class="bloquetextoficinas">En<strong> Talca </strong>estamos ubicados en una casa colonial ubicada en la <strong>Alameda con 1 Poniente, 4 Norte 692</strong>.</p></td>   </tr>      <tr>     <td valign="top"> </td>   </tr>   <tr>     <td colspan="2"><span style="text-align: justify">En tanto, en las otras ciudades, contamos con los espacios proporcionados por nuestros profesionales. <br />         <br />         A partir del año 2007, Reclutamiento y Selección se ha ido ampliando a regiones y hoy nuestros profesionales están en <strong>Antofagasta, Calama, Viña del Mar, Valparaíso, Rancagua, Talca, Concepción, Los Ángeles y Punta Arenas.</strong> Desde Agosto de 2008 estamos en <strong>Arica, Iquique, La Serena, Temuco, Puerto Montt y Coihaique</strong>.<br />         <br />     Somos una empresa integrada por jóvenes profesionales, con una importante visión de mundo, orientación social y humana, que tiene como fin entregar las herramientas para potenciar las capacidades y habilidades de las Personas y Organizaciones en las áreas de la psicología, recursos humanos y comunicación.</span></td>   </tr> </tbody></table>', '', 1, 5, 0, 34, '2008-07-02 02:29:06', 62, '', '2008-08-21 15:47:59', 62, 0, '0000-00-00 00:00:00', '2008-07-02 02:29:06', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 35, 0, 2, '', '', 0, 747, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (48, 'Contacto', 'contacto', '', '<p>El gerente general de Cencosud, Pablo Castillo, confirmó que es "poco probable" que la empresa invierta en Argentina en 2008 por la la "crisis" que vive ese país.</p>\r\n', '\r\nEl holding había anunciado en varias ocasiones que 2008 desembarcaría con la multitienda Paris en Argentina, cuya principal competidora es Falabella, que ya tiene filiales en ese país. Sin embargo, Castillo afirmó que "estamos trabajando en el proyecto (para Argentina) pero no hay plazos todavía".<br /><br />"Hay una mezcla de factores, siempre partir en un país es difícil, porque hay que desarrollar un negocio que no existe, y eso requiere encontrar las ubicaciones, ver las habilitaciones y entrar en el momento adecuado", dijo.<br /><br />El ejecutivo confirmó también que Perú "sigue siendo muy atractivo" y que ese es "un mercado que estamos explorando".', -2, 5, 0, 34, '2008-07-02 02:29:37', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2008-07-02 02:29:37', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 0, '', '', 0, 8, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (49, 'Selección de Personal', 'seleccion-de-personal', '', '<div style="text-align: justify;"><span style="font-size: small;">El proceso de reclutamiento y selección requiere de varios pasos y procesos en si mismo, generalmente conocido y compartido por el ámbito de las organizaciones. Ello requiere de una mirada experta capaz de dar las alertas y las soluciones. </span></div>\r\n<div style="text-align: justify;">\r\n<p class="MsoNormal"><span style="font-size: small;">CLB Consultores cuenta con los profesionales, instrumentos y la capacidad de desarrollar procesos de selección alineadas a los valores de cada empresa.</span></p>\r\n</div>\r\n<table border="0" width="100%" cellpadding="2" cellspacing="3">\r\n<tbody style="text-align: left;">\r\n<tr style="text-align: left;">\r\n<td width="1%" style="text-align: left;"><img width="25" src="images/stories/home/icon-check.gif" alt="icon-check.gif" height="25" style="margin: 0px 5px; vertical-align: middle;" title="icon-check.gif" /></td>\r\n<td width="99%" style="text-align: justify;">Procesos Masivos</td>\r\n</tr>\r\n<tr style="text-align: left;">\r\n<td style="text-align: left;"><img width="25" src="images/stories/home/icon-check.gif" alt="icon-check.gif" height="25" style="margin: 0px 5px; vertical-align: middle;" title="icon-check.gif" /></td>\r\n<td style="text-align: left;">\r\n<p>Selección Individual</p>\r\n</td>\r\n</tr>\r\n<tr style="text-align: left;">\r\n<td style="text-align: left;"><img width="25" src="images/stories/home/icon-check.gif" alt="icon-check.gif" height="25" style="margin: 0px 5px; vertical-align: middle;" title="icon-check.gif" /></td>\r\n<td style="text-align: left;">Ternas</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border="0" width="100%" cellpadding="2" cellspacing="3">\r\n<tbody style="text-align: left;">\r\n<tr style="text-align: left;">\r\n<td width="1%" style="text-align: left;"><img width="25" src="images/stories/home/icon-check.gif" alt="icon-check.gif" height="25" style="margin: 0px 5px; vertical-align: middle;" title="icon-check.gif" /></td>\r\n<td width="99%" style="text-align: justify;">Dotación de sucursales</td>\r\n</tr>\r\n<tr style="text-align: left;">\r\n<td style="text-align: left;"><img width="25" src="images/stories/home/icon-check.gif" alt="icon-check.gif" height="25" style="margin: 0px 5px; vertical-align: middle;" title="icon-check.gif" /></td>\r\n<td style="text-align: left;">\r\n<p>Retroalimentaciones</p>\r\n</td>\r\n</tr>\r\n<tr style="text-align: left;">\r\n<td style="text-align: left;"><img width="25" src="images/stories/home/icon-check.gif" alt="icon-check.gif" height="25" style="margin: 0px 5px; vertical-align: middle;" title="icon-check.gif" /></td>\r\n<td style="text-align: left;">Entre otras</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<br />', '', 1, 5, 0, 35, '2008-07-02 02:30:21', 62, '', '2008-10-06 19:47:36', 62, 0, '0000-00-00 00:00:00', '2008-07-02 02:30:21', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 10, 0, 3, '', '', 0, 1358, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (50, 'Comunicaciones', 'comunicaciones', '', '<div>Establecer relaciones de confianza con nuestros clientes, es una de las principales cualidades de nuestros profesionales, logrando fidelizarlos con propuestas creativas, de desarrollo y crecimiento como marca.<br /><br />Contamos con un equipo dinámico, eficiente e interdisciplinario, capaz de responder de manera creativa y efectiva, en los diversos ámbitos de la comunicación.<br /></div>\r\n<br /> <br /> \r\n<table border="0" cellpadding="2" cellspacing="3" width="100%">\r\n<tbody style="text-align: left;">\r\n<tr style="text-align: left;">\r\n<td style="text-align: left;" valign="top" width="1%"><img style="margin: 0px 5px; vertical-align: middle;" title="icon-check.gif" alt="icon-check.gif" src="images/stories/home/icon-check.gif" width="25" height="25" /></td>\r\n<td style="text-align: justify;" valign="top" width="99%">Gestión de Medios</td>\r\n</tr>\r\n<tr style="text-align: left;">\r\n<td style="text-align: left;" valign="top"><img style="margin: 0px 5px; vertical-align: middle;" title="icon-check.gif" alt="icon-check.gif" src="images/stories/home/icon-check.gif" width="25" height="25" /></td>\r\n<td style="text-align: left;" valign="top">Análisis de Prensa</td>\r\n</tr>\r\n<tr style="text-align: left;">\r\n<td style="text-align: left;" valign="top"><img style="margin: 0px 5px; vertical-align: middle;" title="icon-check.gif" alt="icon-check.gif" src="images/stories/home/icon-check.gif" width="25" height="25" /></td>\r\n<td style="text-align: left;" valign="top">Comunicación Interna</td>\r\n</tr>\r\n<tr style="text-align: left;">\r\n<td style="text-align: left;" valign="top"><img style="margin: 0px 5px; vertical-align: middle;" title="icon-check.gif" alt="icon-check.gif" src="images/stories/home/icon-check.gif" width="25" height="25" /></td>\r\n<td style="text-align: left;" valign="top">Medios Institucionales</td>\r\n</tr>\r\n<tr style="text-align: left;">\r\n<td style="text-align: left;" valign="top"><img style="margin: 0px 5px; vertical-align: middle;" title="icon-check.gif" alt="icon-check.gif" src="images/stories/home/icon-check.gif" width="25" height="25" /></td>\r\n<td style="text-align: left;" valign="top">Videos Corporativos</td>\r\n</tr>\r\n<tr style="text-align: left;">\r\n<td style="text-align: left;" valign="top"><img style="margin: 0px 5px; vertical-align: middle;" title="icon-check.gif" alt="icon-check.gif" src="images/stories/home/icon-check.gif" width="25" height="25" /></td>\r\n<td style="text-align: left;" valign="top">Documentales</td>\r\n</tr>\r\n<tr style="text-align: left;">\r\n<td style="text-align: left;" valign="top"><img style="margin: 0px 5px; vertical-align: middle;" title="icon-check.gif" alt="icon-check.gif" src="images/stories/home/icon-check.gif" width="25" height="25" /></td>\r\n<td style="text-align: left;" valign="top">Diseño de web</td>\r\n</tr>\r\n<tr style="text-align: left;">\r\n<td style="text-align: left;" valign="top"><img style="margin: 0px 5px; vertical-align: middle;" title="icon-check.gif" alt="icon-check.gif" src="images/stories/home/icon-check.gif" width="25" height="25" /></td>\r\n<td style="text-align: left;" valign="top">Gestión de Crisis y Asuntos Públicos</td>\r\n</tr>\r\n<tr style="text-align: left;">\r\n<td style="text-align: left;" valign="top"><img style="margin: 0px 5px; vertical-align: middle;" title="icon-check.gif" alt="icon-check.gif" src="images/stories/home/icon-check.gif" width="25" height="25" /></td>\r\n<td style="text-align: left;" valign="top">Desarrollo Organizacional</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 5, 0, 35, '2008-07-02 02:32:13', 62, '', '2008-08-11 01:54:48', 62, 0, '0000-00-00 00:00:00', '2008-07-02 02:32:13', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 2, '', '', 0, 320, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (51, 'Diagnóstico Organizacional', 'diagnostico-organizacional', '', '<p>Muchas veces nos topamos con creencias y prácticas organizacionales que se fueron instalando como “nuestra manera de hacer las cosas”, las cuales aportan estabilidad, una praxis, una cultura organizacional. Por lo tanto, estas son necesarias mientras funcionan y permite avanzar en el proyecto de la empresa (visión; misión; valores, etc.).</p>\r\n<p class="MsoNormal">Aún así, y probablemente cada vez más, entendiendo que el mundo y las organizaciones son dinámicas, es que es necesario producir modificaciones culturales y estructurales, planificadas y estratégicas.<o:p></o:p></p>\r\n<p class="MsoNormal">En CLB Consultores contamos con profesionales capacitados para investigar, estudiar y analizar, proponiendo una intervención que permita alinear las áreas y personas de la organización.<o:p></o:p></p>\r\n<p class="MsoNormal"> </p>', '', 1, 5, 0, 35, '2008-07-02 02:33:40', 62, '', '2008-10-06 19:40:28', 62, 0, '0000-00-00 00:00:00', '2008-07-02 02:33:40', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 11, 0, 1, '', '', 0, 294, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (60, 'Proyecto de ley amplía Seguro de Cesantía', 'proyecto-de-ley-amplia-seguro-de-cesantia', '', '<div style="text-align: justify;">El día m<strong>artes 19 de agosto</strong>, el Gobierno envió a la Cámara de Diputados, el proyecto de ley que amplia la cobertura y mejora los beneficios del seguro de cesantía.<br /><br />La iniciativa legal fue firmada por la <strong>Presidenta Michelle Bachele</strong>t y los ministros de Hacienda, Andrés Velasco; y del Trabajo, Osvaldo Andrade.<br /><br />La normativa incluye el acceso a este fondo de los trabajadores con contrato a plazo fijo, obra o faena, grupo que representa el 45% de los cotizantes del seguro. "De lo que se trata es de profundizar la concepción de que el Estado se compromete con los afanes de tener un orden social más justo. Los conceptos de solidaridad, de universalismo y derechos garantizados expresan esta visión", dijo la Presidenta Bachelet.<br /><br />Desde la vigencia del seguro, seis años, aproximadamente <strong>3,5 millones de trabajadores</strong> se han inscrito, sin embargo, el 3% de los beneficiarios ha accedido al fondo.<br /></div>', '', 1, 6, 0, 39, '2008-08-20 22:30:58', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2008-08-20 22:30:58', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 6, '', '', 0, 156, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (52, 'Científicos aseguran que la sandía provoca los mismos efectos que el Viagra', 'cientificos-aseguran-que-la-sandia-provoca-los-mismos-efectos-que-el-viagra-', '', '<p>Una rebanada de sandía podría tener efectos similares a los del fármaco para disfunción eréctil conocido como "Viagra".</p>\r\n', '\r\n<p>De acuerdo a científicos en Estados Unidos la sandía tiene ingredientes que actúan sobre los vasos sanguíneos.</p>\r\n<p>Estas sustancias, llamadas fitonutrientes, son compuestos que ocurren de forma natural en frutas y vegetales y que son capaces de reaccionar con el organismo humano y desencadenar beneficios para la salud.</p>\r\n<p>Según los autores de la investigación difundida por BBC, uno de los beneficios de la citrulina, que ahora se están descubriendo, es la capacidad de relajar los vasos sanguíneos, igual que lo hace el Viagra, asegura el estudio.</p>\r\n<p>"Entre más estudiamos a la sandía afirma el doctor Bhimu Patil, quien dirigió la investigación más nos damos cuenta de la extraordinaria capacidad de esta fruta como "potenciador" natural para el organismo humano".</p>\r\n<p>"Siempre hemos sabido que la sandía es buena para la salud, pero con cada estudio, aumenta la lista de sus importantes beneficios", señala el científico.</p>', 1, 6, 0, 39, '2008-07-02 02:49:22', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2008-07-02 02:49:22', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 10, '', '', 0, 102, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (53, 'Expertos señalan que sobrevivir un cáncer', 'expertos-senalan-que-sobrevivir-un-cancer', '', '<p>Un análisis de los datos procedentes de más de 114.000 adultos en Canadá muestran que, en general, un diagnóstico de cáncer no genera cambios inmediatos y  significativos en los hábitos alimenticios o en el aumento de la actividad física, según un informe de Cáncer, la revista médica de la Sociedad Americana del Cáncer.</p>\r\n', '\r\n<p>La gran excepción son los hombres que sobreviven a un cáncer de próstata, parecen ser mucho más activos que los hombres similares sin cáncer.</p>\r\n<p>Sin embargo, los resultados globales son preocupantes porque los estudios han sugerido que los pacientes con cáncer tienen mucho que ganar de un estilo de vida saludable.</p>\r\n<p>La obesidad y la inactividad física están vinculados con una menor calidad de vida entre los sobrevivientes de cáncer y puede aumentar el riesgo de que el cáncer regrese o incluso morir de la enfermedad.</p>\r\n<p>"Estos resultados nos dicen que tenemos que buscar formas para mejorar el apoyo a sobrevivientes de cáncer a ser más activos y de mantener un peso corporal saludable", dijo Kerry Courneya, profesor en la Universidad de Alberta en Edmonton. "Sabemos que la falta de actividad física y la obesidad son factores de riesgo para desarrollar cáncer. Estos son también factores de riesgo para la reaparición del cáncer. El estilo de vida después del diagnóstico también es muy importante."</p>\r\n<p>Los investigadores compararon los datos sobre la actividad y el peso de los promedios nacionales entre la población canadiense. Sorprendentemente encontraron muy pocas diferencias, lo que sugiere que un diagnóstico de cáncer no necesariamente fomenta un estilo de vida más saludable.</p>\r\n<p>La principal excepción fueron los sobrevivientes de cáncer a la próstata, quienes son un 27% más activos y tienen cerca del 30% menos probabilidades de ser obesos que la población general.</p>\r\n<p>Los autores del estudio no tenían una explicación para la diferencia, salvo que los hombres pueden haber sido influidos por los recientes estudios que sugieren un vínculo entre el ejercicio y una mejor calidad de vida de los sobrevivientes de cáncer de próstata.</p>\r\n<p>Sin embargo, no es claro si el menor índice de masa corporal entre los sobrevivientes de cáncer de próstata es una buena cosa ya que algunos datos sugieren que el tratamiento contra el cáncer de próstata puede conducir a la pérdida de la masa corporal.</p>', 1, 6, 0, 39, '2008-07-02 02:50:10', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2008-07-02 02:50:10', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 9, '', '', 0, 130, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (54, 'Estudio señala que Chile es uno de los tres países menos felices de Latinoamerica', 'estudio-senala-que-chile-es-uno-de-los-tres-paises-menos-felices-de-latinoamerica', '', '<p>Dinamarca, con su democracia, su igualdad social y su atmósfera pacífica, es el país más feliz del mundo, según anunció un equipo de investigadores.</p>\r\n', '\r\nEn el otro lado de la moneda, el país menos feliz es  Zimbabue, desgarrado por conflictos políticos y sociales.\r\n<p>En general, el mundo es cada vez más feliz, según la Encuesta Valores Mundiales, encargada por el Gobierno estadounidense (que se ubicó en el puesto decimosexto) y realizada de forma regular por una red mundial de científicos sociales.</p>\r\n<p>En 45 de los 52 países analizados desde el inicio del estudio se ha registrado un aumento de la felicidad desde 1981 hasta 2007.</p>\r\n<p>"Sospecho firmemente que hay una fuerte correlación entre la paz y la felicidad", dijo Ronald Inglehart, científico político del Instituto de Investigación Social de la Universidad de Michigan, que dirigió el trabajo.</p>\r\n<p>Además, indicó, hay una fuerte relación entre la felicidad y la democracia.</p>\r\n<p>"Dinamarca es el país más feliz del mundo según nuestros datos", afirmó Inglehart en un comunicado en audio publicado por la Fundación Nacional de Ciencia, que financió el análisis. Y aunque este país no es el más rico del mundo, sí es el más próspero.</p>\r\n<p>Chile es uno de los países menos felices de Latinoamérica junto con Uruguay, ubicándose en losl lugares 41, 39 y 42 del ránking, respectivamente.</p>\r\n<p>También Puerto Rico y Colombia tenían calificaciones altas, seguidas por Irlanda del Norte, Islandia, Suiza, Irlanda, Países Bajos, Canadá y Suecia. España se sitúa aproximadamente en la mitad, en el puesto número 44 de los 98 incluidos en la última oleada.</p>\r\n<p>"Aunque en ningún caso es el país más feliz del mundo, desde una perspectiva global, Estados Unidos parece bastante bien", apuntó Inglehart. "El país no sólo es próspero, tiene una calificación relativamente alta en igualdad de género, tolerancia de diversidad étnica y social, y tiene altos niveles de libertad política".</p>\r\n<p>La encuesta, realizada por primera vez en 1981, se ha mantenido en dos preguntas sencillas:</p>', 1, 6, 0, 39, '2008-07-02 02:51:13', 62, '', '2008-07-03 02:12:07', 62, 0, '0000-00-00 00:00:00', '2008-07-02 02:51:13', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 8, '', '', 0, 151, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (55, 'Nuestros Clientes Opinan', 'nuestros-clientes', '', '<div align="center"><object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" width="567" height="193"><param name="width" value="567" /><param name="height" value="193" /><param name="quality" value="high" /><param name="wmode" value="transparent" /><param name="src" value="images/stories/home/letras1.swf" /><embed type="application/x-shockwave-flash" width="567" height="193" quality="high" wmode="transparent" src="images/stories/home/letras1.swf"></embed></object></div><div align="center"> </div><div align="center"><object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" width="566" height="279"><param name="quality" value="high" /><param name="wmode" value="transparent" /><param name="src" value="images/stories/home/letras2.swf" /><param name="width" value="566" /><param name="height" value="279" /><embed type="application/x-shockwave-flash" quality="high" wmode="transparent" src="images/stories/home/letras2.swf" width="566" height="279"></embed></object> <br /></div>', '', 1, 5, 0, 36, '2008-07-02 02:52:03', 62, '', '2008-08-21 20:35:02', 62, 62, '2008-08-21 20:35:02', '2008-07-02 02:52:03', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 17, 0, 1, '', '', 0, 1131, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (56, 'Contáctanos', 'contactanos', '', '<table border="0" cellpadding="0" cellspacing="0" width="600">\r\n<tbody>\r\n<tr>\r\n<td valign="top">\r\n<div class="sidebox">\r\n<h4 class="sIFR-replaced">Envia tus preguntas, sugerencias y comentarios a traves de nuestro formulario.</h4>\r\n<form method="post" action="/contact-lauk.php"> \r\n<table cellpadding="0" cellspacing="0">\r\n<tbody>\r\n<tr>\r\n<td width="90">Nombre: *</td>\r\n<td><input name="FirstName" id="FirstName" class="formfield" type="text" /></td>\r\n</tr>\r\n<tr>\r\n<td width="90">Apellido: *</td>\r\n<td><input name="Surname" id="Surname" class="formfield" type="text" /></td>\r\n</tr>\r\n<tr>\r\n<td width="90">Email: *</td>\r\n<td><input name="Email" id="Email" class="formfield" type="text" /></td>\r\n</tr>\r\n<tr>\r\n<td width="90">Telefono: *</td>\r\n<td><input name="Telephone" id="Telephone" class="formfield" type="text" /></td>\r\n</tr>\r\n<tr>\r\n<td width="90">Mensaje:</td>\r\n<td><textarea name="Comments" id="Comments" cols="10" rows="3" class="formfield"></textarea></td>\r\n</tr>\r\n<tr>\r\n<td width="90"></td>\r\n<td><input name="btnSubmit" class="formbutton" id="btnSubmit" onclick="MM_validateForm(''FirstName'','''',''R'',''Surname'','''',''R'',''Email'','''',''RisEmail'',''Telephone'','''',''RisNum'');return document.MM_returnValue" value="Enviar" type="submit" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</form></div>\r\n</td>\r\n<td valign="top" width="250">\r\n<p><br /> <strong>CLB consultores</strong></p>\r\n<p><strong>Dirección:</strong><br /> Phillips 16,          Piso 4 -         Oficina X<br /> Santiago Centro<br /> <strong><br /> Fono:</strong> (56 2) 597 1190</p>\r\n<p><a href="index.php?option=com_content&amp;view=article&amp;id=59&amp;Itemid=73"><img src="images/stories/home/mapa_chico.jpg" border="1" width="190" height="185" /></a></p>\r\n<p> </p>\r\n<p> </p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 5, 0, 37, '2008-07-02 02:52:28', 62, '', '2008-08-17 15:08:59', 62, 0, '0000-00-00 00:00:00', '2008-07-02 02:52:28', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 17, 0, 1, '', '', 0, 1348, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (57, 'Ingresa tu curriculum', 'ingresa-tu-curriculum', '', '<div style="text-align: center"><object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" width="450" height="350"><param name="width" value="450" /><param name="height" value="350" /><param name="wmode" value="transparent" /><param name="src" value="images/stories/home/construccion.swf" /><embed type="application/x-shockwave-flash" width="450" height="350" wmode="transparent" src="images/stories/home/construccion.swf"></embed></object></div> <p>&nbsp;</p>', '', 1, 5, 0, 38, '2008-07-02 02:52:56', 62, '', '2008-08-19 07:49:47', 62, 0, '0000-00-00 00:00:00', '2008-07-02 02:52:56', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 9, 0, 1, '', '', 0, 2396, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (62, 'El Valor de lo intangible', 'el-valor-de-lo-intangible', '', '<p style="margin: 0cm 0cm 0pt; text-align: justify;" class="MsoNormal"><span style="font-size: small;"><span style="font-family: Times New Roman;">Es raro que las pequeñas y medianas empresas incluyan una estrategia comunicacional para potenciar su plan de negocios. Para qué les sirve una campaña de prensa y cuándo les conviene aplicarla. <o:p></o:p></span></span></p>\r\n<p style="margin: 0cm 0cm 0pt; text-align: justify;" class="MsoNormal"><o:p><span style="font-size: small; font-family: Times New Roman;"> </span></o:p></p>\r\n<p style="margin: 0cm 0cm 0pt; text-align: justify;" class="MsoNormal"><span style="font-size: small;"><span style="font-family: Times New Roman;">La mayoría de las pequeñas y medianas empresas no incluyen en su estrategia una mirada comunicacional o incurren en el error de pensar que la cabeza de la organización es quien debe asumir la responsabilidad de desarrollar esta tarea. <o:p></o:p></span></span></p>\r\n<p style="margin: 0cm 0cm 0pt; text-align: justify;" class="MsoNormal"><o:p><span style="font-size: small; font-family: Times New Roman;"> </span></o:p><o:p><span style="font-size: small; font-family: Times New Roman;"> </span></o:p></p>\r\n<p style="margin: 0cm 0cm 0pt; text-align: justify;" class="MsoNormal"><span style="font-size: small;"><span style="font-family: Times New Roman;">"Muchas veces es el creador de la PyME el que asume el rol de "vocero", en algunos casos éste elige a algún familiar, a su secretaria o asistente personal sin evaluar el grado de idoneidad que pueda tener esta persona", afirma el consultor en comunicación Daniel Colombo.<o:p></o:p></span></span></p>\r\n<p style="margin: 0cm 0cm 0pt; text-align: justify;" class="MsoNormal"><o:p><span style="font-size: small; font-family: Times New Roman;"> </span></o:p><o:p><span style="font-size: small; font-family: Times New Roman;"> </span></o:p></p>\r\n<p style="margin: 0cm 0cm 0pt; text-align: justify;" class="MsoNormal"><span style="font-size: small;"><span style="font-family: Times New Roman;">En general los especialistas coinciden que el sector mira con desconfianza el potencial aporte que pueda implicar contratar este tipo de servicios o simplemente detenerse a evaluar qué posibilidades les podría brindar integrar su estrategia comercial a una estrategia de comunicación que apuntale los objetivos. <o:p></o:p></span></span></p>\r\n<p style="margin: 0cm 0cm 0pt; text-align: justify;" class="MsoNormal"><o:p><span style="font-size: small; font-family: Times New Roman;"> </span></o:p><o:p><span style="font-size: small; font-family: Times New Roman;"> </span></o:p></p>\r\n<p style="margin: 0cm 0cm 0pt; text-align: justify;" class="MsoNormal"><span style="font-size: small;"><span style="font-family: Times New Roman;">Lo central de un emprendimiento reside en posicionar lo más rápido y lo mejor posible su producto o servicios y muchas veces se deja de lado que todo emprendimiento llega a una instancia donde necesita un tratamiento más profesional de sus comunicaciones. Las causas de este fenómeno son variadas. En algunos casos consideran que si la empresa nació y creció sin tomar en cuenta este aspecto no tiene por qué implicar un problema tampoco incluirlo en los proyectos futuros.<o:p></o:p></span></span></p>\r\n<p style="margin: 0cm 0cm 0pt; text-align: justify;" class="MsoNormal"><o:p><span style="font-size: small; font-family: Times New Roman;"> </span></o:p></p>\r\n<p style="margin: 0cm 0cm 0pt; text-align: justify;" class="MsoNormal"><span style="font-size: small;"><span style="font-family: Times New Roman;"><strong>Los Sí y los No</strong></span></span></p>\r\n<p style="margin: 0cm 0cm 0pt; text-align: justify;" class="MsoNormal"><o:p><span style="font-size: small; font-family: Times New Roman;"> </span></o:p><o:p><span style="font-size: small; font-family: Times New Roman;"> </span></o:p></p>\r\n<p style="margin: 0cm 0cm 0pt; text-align: justify;" class="MsoNormal"><span style="font-size: small;"><span style="font-family: Times New Roman;">Las acciones de comunicación pueden ser muy útiles para dar a conocer un producto o servicio, comunicar un nuevo negocio de la compañía, alianzas estratégicas, acciones de responsabilidad social. Pero es fundamental reconocer que, como se trata de un valor intangible, los resultados son por lo general a largo plazo y además requieren de un especial compromiso de quien convoca para saber que las acciones que se alinean bajo el gran "paraguas de la comunicación" –prensa, publicidad, marketing entre otras- van a demandar tiempo e intervención activa por parte de quienes integran la organización.<o:p></o:p></span></span></p>\r\n<p style="margin: 0cm 0cm 0pt; text-align: justify;" class="MsoNormal"><o:p><span style="font-size: small; font-family: Times New Roman;"> </span></o:p><span style="font-size: small;"><span style="font-family: Times New Roman;"><span style="mso-spacerun: yes;"> </span><o:p></o:p></span></span></p>\r\n<p style="margin: 0cm 0cm 0pt; text-align: justify;" class="MsoNormal"><o:p><span style="font-size: small; font-family: Times New Roman;"> </span></o:p></p>\r\n<p style="margin: 0cm 0cm 0pt; text-align: justify;" class="MsoNormal"><span style="font-size: small;"><span style="font-family: Times New Roman;">Al respecto, Colombo señala: "No tiene sentido contratar a un especialista cuando no se está 100% seguro de la importancia de la comunicación en el éxito de los negocios. Los resultados se ven luego de un proceso de construcción en el tiempo: no son inmediatos". <o:p></o:p></span></span></p>\r\n<p style="margin: 0cm 0cm 0pt; text-align: justify;" class="MsoNormal"><o:p><span style="font-size: small; font-family: Times New Roman;"> </span></o:p></p>\r\n<p style="margin: 0cm 0cm 0pt; text-align: justify;" class="MsoNormal"><span style="font-size: small;"><span style="font-family: Times New Roman;">Por su parte, <st1:personname productid="la especialista María Gabriela" w:st="on">la especialista María Gabriela</st1:personname> Hoch afirma: "En toda empresa hay momentos críticos y procesos que muchas veces no conviene dar a conocer. En ese caso, es importante no abrir el juego de la comunicación porque puede resultar poco favorable para la imagen de la compañía". <o:p></o:p></span></span></p>\r\n<p style="margin: 0cm 0cm 0pt; text-align: justify;" class="MsoNormal"><o:p><span style="font-size: small; font-family: Times New Roman;"> </span></o:p></p>\r\n<p style="margin: 0cm 0cm 0pt; text-align: justify;" class="MsoNormal"><span style="font-size: small;"><span style="font-family: Times New Roman;">También es fundamental considerar el ámbito o segmento donde se desarrolla <st1:personname productid="la empresa. Depende" w:st="on">la empresa. Depende</st1:personname> de qué producto o servicio ofrece, cuáles son sus potenciales clientes, cuál su mercado de acción. La mayoría de las veces estas compañías no están dirigidas al consumo masivo de manera que al trabajar para una porción del mercado las condiciones de posicionamiento cambian. En relación a este punto, Ana Laura Espósito, experta en marketing, plantea: "Justamente porque la mayoría de las PyMEs son negocios de "nicho" es conveniente que tengan en claro sus objetivos generales para encontrar la estrategia de comunicación que mejor se ajuste a sus necesidades".<o:p></o:p></span></span></p>\r\n<p style="margin: 0cm 0cm 0pt; text-align: justify;" class="MsoNormal"><o:p><span style="font-size: small; font-family: Times New Roman;"> </span></o:p></p>\r\n<p style="margin: 0cm 0cm 0pt; text-align: justify;" class="MsoNormal"><span style="font-size: small;"><span style="font-family: Times New Roman;">También puede suceder que una empresa elabore un producto muy específico o que destine casi toda su producción a uno o dos clientes; tal es el caso de PyMEs que fabrican botellas de vidrio y corchos para bodegas en nuestro país. Estas empresas tienen ubicada casi toda su producción de manera que invertir en comunicación en las acciones más convencionales no sería lo más recomendable. Sí buscar propuestas que fidelicen a esos clientes. <o:p></o:p></span></span></p>\r\n<p style="margin: 0cm 0cm 0pt; text-align: justify;" class="MsoNormal"><o:p><span style="font-size: small; font-family: Times New Roman;"> </span></o:p></p>\r\n<p style="margin: 0cm 0cm 0pt; text-align: justify;" class="MsoNormal"><span style="font-size: small;"><span style="font-family: Times New Roman;"><strong>Siete reglas básicas antes de comunicar<o:p></o:p></strong></span></span></p>\r\n<p style="margin: 0cm 0cm 0pt; text-align: justify;" class="MsoNormal"><o:p><span style="font-size: small; font-family: Times New Roman;"> </span></o:p></p>\r\n<ul>\r\n<li>\r\n<p style="margin: 0cm 0cm 0pt; text-align: justify;" class="MsoNormal"><span style="font-size: small;"><span style="font-family: Times New Roman;">Tener bien formulada la estrategia comercial para así poder alinearla con la estrategia comunicacional. <o:p></o:p></span></span></p>\r\n</li>\r\n<li>\r\n<p style="margin: 0cm 0cm 0pt; text-align: justify;" class="MsoNormal"><span style="font-size: small;"><span style="font-family: Times New Roman;">"Entrenar" a quien será la cara visible de la empresa en su contacto con los medios de comunicación y demás actividades relacionadas. <o:p></o:p></span></span></p>\r\n</li>\r\n<li>\r\n<p style="margin: 0cm 0cm 0pt; text-align: justify;" class="MsoNormal"><span style="font-size: small;"><span style="font-family: Times New Roman;">Preparar toda la información posible de la empresa, producto, servicio, staff, objetivos, para tener en claro cuáles son las necesidades que se busca satisfacer a través de la comunicación. <o:p></o:p></span></span></p>\r\n</li>\r\n<li>\r\n<p style="margin: 0cm 0cm 0pt; text-align: justify;" class="MsoNormal"><span style="font-size: small;"><span style="font-family: Times New Roman;">Determinar los motivos por los que se decide incluir acciones de comunicación, enumerarlos y describirlos. <o:p></o:p></span></span></p>\r\n</li>\r\n<li>\r\n<p style="margin: 0cm 0cm 0pt; text-align: justify;" class="MsoNormal"><span style="font-size: small;"><span style="font-family: Times New Roman;">En caso de optar por una consultora, relevar información de los potenciales prestadores; servicios, trayectoria, referencias. <o:p></o:p></span></span></p>\r\n</li>\r\n<li>\r\n<p style="margin: 0cm 0cm 0pt; text-align: justify;" class="MsoNormal"><span style="font-size: small; font-family: Times New Roman;">Determinar el presupuesto apropiado al ítem "comunicación y relaciones públicas", para poder encuadrarlo adecuadamente en el manejo administrativo y financiero.</span></p>\r\n</li>\r\n</ul>\r\n<p style="margin: 0cm 0cm 0pt; text-align: justify;" class="MsoNormal"><o:p><span style="font-size: small; font-family: Times New Roman;"> </span></o:p></p>\r\n<p style="margin: 0cm 0cm 0pt; text-align: justify;" class="MsoNormal"><span style="font-size: small;"><span style="font-family: Times New Roman;">Fuente: <a href="http://www.revista-fortuna.com.ar/ed_0236/man04.html">www.revista-fortuna.com.ar/ed_0236/man04.html</a>  <span style="mso-spacerun: yes;">  </span></span></span></p>\r\n<p> </p>', '', 1, 6, 0, 39, '2008-10-01 14:27:14', 62, '', '2008-10-02 18:16:05', 62, 0, '0000-00-00 00:00:00', '2008-10-01 14:27:14', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 4, '', '', 0, 90, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (59, 'Nuestra Ubicación', 'nuestra-ubicacion', '', '<p style="text-align: justify;">Nuestras <strong>oficinas principales</strong> se encuentran en <strong>Phillips 16, piso 4, oficina X, Plaza de Armas</strong>. No sólo estamos en el Kilómetro 0 de Santiago, desde donde nace y empieza la capital de Chile, sino que además, las instalaciones que hoy reciben a cientos de personas mensualmente, en sus tiempos fue la <strong>residencia personal de don Jorge Alessandri Rodríguez</strong>, quien fuera Presidente de Chile entre los años 1958 y 1964.</p>\r\n<p>{mosmap width=''600''|height=''450''|lat=''-33.437422''|lon=''-70.649536''|zoom=''15|zoomType=''Large''|zoomNew=''0''|mapType=''''| showMaptype=''1''|overview=''0''|text=&lt;div align="center"&gt;&lt;strong&gt;CLB consultores&lt;/strong&gt;&lt;br /&gt;  Phillips 16&lt;br /&gt;  Piso 4&lt;br /&gt;  Oficina X&lt;/div&gt;''|lang=''''}</p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>', '', 1, 5, 0, 34, '2008-08-17 14:47:01', 62, '', '2008-08-17 22:41:50', 62, 0, '0000-00-00 00:00:00', '2008-08-17 14:47:01', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 1, '', '', 0, 177, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (63, 'No busque personal. Selecciónelo', 'no-busque-personal-seleccionelo', '', '<p style="margin: 0cm 0cm 0pt;" class="MsoNormal">Leyendo algunos clasificados en distintos medios, observo que en algunas publicaciones de empresas dice: “Se Busca…”, si bien hay un dicho que dice “el que busca encuentra”, personalmente creo que para armar o completar la plantilla del personal de una organización se debe seleccionar y no buscar. <o:p></o:p></p>\r\n<p style="margin: 0cm 0cm 0pt;" class="MsoNormal"><o:p> </o:p></p>\r\n<p style="margin: 0cm 0cm 0pt;" class="MsoNormal">Usted tiene una empresa, trata de ofrecer a sus clientes el mejor producto, la mejor presentación, decorado, la mejor vajilla y mantelería, pero cuando ve que esos elementos no tienen más la imagen que quiere transmitirles a sus clientes, los renueva porque entiende que ya cumplieron su ciclo de vida. <o:p></o:p></p>\r\n<p style="margin: 0cm 0cm 0pt;" class="MsoNormal"><o:p> </o:p></p>\r\n<p style="margin: 0cm 0cm 0pt;" class="MsoNormal">Cuando los renueva no “busca”, “selecciona” los elementos que mas se adaptan al gusto y necesidad de su cliente objetivo. Con el personal se debe proceder de la misma manera, seleccionarlos, elegir a los que mejor se adaptan al estilo de su empresa y a las expectativas esperadas por sus clientes. <o:p></o:p></p>\r\n<p style="margin: 0cm 0cm 0pt;" class="MsoNormal"><o:p> </o:p></p>\r\n<p style="margin: 0cm 0cm 0pt;" class="MsoNormal">Tenga presente, hoy los productos son muy parecidos, son semejantes; entonces ¿Cómo diferenciarse de sus competidores?, por el servicio que ofrece, por una atención superior y hasta con un servicio de post venta. <o:p></o:p></p>\r\n<p style="margin: 0cm 0cm 0pt;" class="MsoNormal"><o:p> </o:p></p>\r\n<p style="margin: 0cm 0cm 0pt;" class="MsoNormal">Si quiere que su personal haga eso, no debería “buscar personal” para cubrir vacantes con gente “que necesita un empleo”, no importa cual sea. Seleccione personal que “quiera trabajar”. <o:p></o:p></p>\r\n<p style="margin: 0cm 0cm 0pt;" class="MsoNormal"><o:p> </o:p></p>\r\n<p style="margin: 0cm 0cm 0pt;" class="MsoNormal">Lo que debe hacer es elegir al que mejor atenderá a sus clientes, su capital más preciado, en definitiva al que se adapte a sus clientes, su negocio y su estilo. <o:p></o:p></p>\r\n<p style="margin: 0cm 0cm 0pt;" class="MsoNormal"><o:p> </o:p></p>\r\n<p style="margin: 0cm 0cm 0pt;" class="MsoNormal">Además confeccione una descripción de cada puesto del personal, escriba cada tarea que debe hacer y determine que sabe hacer y que debe aprender para realizar el trabajo eficazmente. <o:p></o:p></p>\r\n<p style="margin: 0cm 0cm 0pt;" class="MsoNormal"><o:p> </o:p></p>\r\n<p style="margin: 0cm 0cm 0pt;" class="MsoNormal">Seleccione al más adecuado, no elija a un médico para aplicar inyecciones, ni a una enfermera para lavar platos, solo opte por el más adecuado para cada vacante, sus clientes se lo agradecerán.<o:p></o:p></p>\r\n<p style="margin: 0cm 0cm 0pt;" class="MsoNormal"><o:p> </o:p></p>\r\n<p style="margin: 0cm 0cm 0pt;" class="MsoNormal"><span style="mso-spacerun: yes;"></span><o:p></o:p></p>\r\n<p style="margin: 0cm 0cm 0pt;" class="MsoNormal"><o:p> </o:p></p>\r\n<p style="margin: 0cm 0cm 0pt;" class="MsoNormal">Por otra parte lleve un registro del avance que va alcanzando cada empleado y que habilidades necesita desarrollar, utilice la capacitación, el retorno lo verá rápidamente, es la formula más simple de fidelizar a sus clientes, de vender más, conseguir nuevos clientes, evitará los clientes de única vez, tendrá clientes fidelizados y satisfechos solo con personal entrenado. Obtendrá ventas repetidas y ventas por recomendación, Éxitos!!!. <o:p></o:p></p>\r\n<p style="margin: 0cm 0cm 0pt;" class="MsoNormal"><o:p> </o:p></p>\r\n<p style="margin: 0cm 0cm 0pt;" class="MsoNormal">Autor: Juan Carlos Molinari<o:p></o:p></p>\r\n<p style="margin: 0cm 0cm 0pt;" class="MsoNormal"><o:p> </o:p></p>\r\n<p style="margin: 0cm 0cm 0pt;" class="MsoNormal">Fuente: <a href="http://www.gestiopolis.com/organizacion-talento/seleccion-y-busqueda-de-personal.htm">http://www.gestiopolis.com/organizacion-talento/seleccion-y-busqueda-de-personal.htm</a> </p>\r\n<p class="MsoNormal"><a href="http://www.gestiopolis.com/organizacion-talento/seleccion-y-busqueda-de-personal.htm"></a></p>\r\n<!-- google_ad_section_end --><!-- Comienzo perfil autor -->', '', 1, 6, 0, 39, '2008-10-02 18:02:47', 62, '', '2008-10-02 18:10:58', 62, 0, '0000-00-00 00:00:00', '2008-10-02 18:02:47', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 3, '', '', 0, 235, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (64, 'La inteligencia emocional en el ámbito laboral', '2008-12-19-15-21-30', '', '<p class="MsoNormal"><strong><span style="font-size: 17.5pt; color: #ee7a00; font-family: &quot;Trebuchet MS&quot;; mso-bidi-font-family: Arial;"><o:p> </o:p></span></strong></p>\r\n<p><span style="font-size: 17.5pt; color: #ff6600; line-height: 135%; font-family: &quot;Trebuchet MS&quot;; mso-bidi-font-family: Arial;">La inteligencia emocional en el ámbito laboral <o:p></o:p></span></p>\r\n<p><span style="font-size: small;"><span style="color: #000000; font-family: Arial;">El trabajo es una actividad humana, individual y colectiva, de transformación de la realidad, que proporciona bienes y servicios a la sociedad. Requiere que cada persona aporte esfuerzo, tiempo, habilidades o destrezas; a cambio, cada persona buscará unas compensaciones. Estas compensaciones no pertenecen exclusivamente al orden económico, también son psicológicas y sociales. Con su trabajo, las personas pretenden la satisfacción de necesidades biológicas, de seguridad, de relación personal, de autoestima y de realización personal.</span><span style="font-size: 11.5pt; color: #000000; line-height: 135%; font-family: Arial;"><o:p></o:p></span></span></p>\r\n<p><span style="font-size: small;"><span style="color: #000000; font-family: Arial;">Es fundamental que cada miembro de la empresa se sienta como un profesional responsable de su competencia y que con sus aportaciones pueda ayudar a conseguir los objetivos de la empresa. </span><span style="font-size: 11.5pt; color: #000000; line-height: 135%; font-family: Arial;"><o:p></o:p></span></span></p>\r\n<p><span style="font-size: small;"><span style="color: #000000; font-family: Arial;">Un buen líder de equipo tendrá que tener bien desarrollada la inteligencia emocional para saber valorar la importancia de atender el bienestar emocional de sus colaboradores. El hecho que una persona, por su experiencia y conocimientos, ascienda de categoría y asuma la responsabilidad de coordinar un grupo de trabajo, no implica necesariamente que tenga las habilidades para hacer frente a la complejidad de las relaciones interpersonales de los miembros de su equipo.</span><span style="font-size: 11.5pt; color: #000000; line-height: 135%; font-family: Arial;"><o:p></o:p></span></span></p>\r\n<p><span style="font-size: small;"><span style="color: #000000; font-family: Arial;">Daniel Goleman popularizó en el año 1995 el concepto de Inteligencia Emocional, que ha permitido comprender ciertas realidades que no tenían una clara explicación. El coeficiente intelectual de una persona no es suficiente para explicar el éxito en su vida personal, profesional, familiar y social. Personas con educación, perspectivas y oportunidades parecidas han acabado con destinos muy  diferentes. Personas que eran una joven promesa, no han conseguido el éxito profesional, y otros con un modesto aprobado en sus  estudios han conseguido objetivos profesionales impensables. El hecho de tener un alto C.I. no garantiza conseguir las metas que se esperan de nosotros; el conjunto de características y habilidades emocionales que componen la inteligencia emocional pueden ser tan o más determinantes a la hora de triunfar en la vida.</span><span style="font-size: 11.5pt; color: #000000; line-height: 135%; font-family: Arial;"><o:p></o:p></span></span></p>\r\n<p><span style="font-size: small;"><span style="color: #000000; font-family: Arial;">Goleman ha dado otra visión a <st1:personname productid="la Inteligencia" w:st="on">la Inteligencia</st1:personname>,  ya que desde su planteamiento, <st1:personname productid="la Inteligencia" w:st="on">la Inteligencia</st1:personname> emocional es un conjunto de destrezas que pueden ser modificadas y mejoradas, que existen como potencial y lo que conviene es desarrollarlas mediante entrenamiento. Facilitar las herramientas para conseguir la potenciación de las cualidades y el aprovechamiento de las habilidades personales de cada miembro de la empresa es una necesidad de las empresas con visión de futuro,  constatadas como fundamentales para conseguir sus objetivos empresariales. </span><span style="font-size: 11.5pt; color: #000000; line-height: 135%; font-family: Arial;"><o:p></o:p></span></span></p>\r\n<p><span style="font-size: small;"><span style="color: #000000; font-family: Arial;">Las normas que gobiernan el mundo laboral están cambiando. No solamente se nos valora por nuestra inteligencia, experiencia o formación, sino también por la manera cómo nos relacionamos con nosotros mismos y con los demás.</span><span style="font-size: 11.5pt; color: #000000; line-height: 135%; font-family: Arial;"><o:p></o:p></span></span></p>\r\n<p><span style="font-size: small;"><span style="color: #000000; font-family: Arial;"> Estos nuevos criterios centran su atención en <strong><span style="font-family: Arial;">habilidades</span></strong> como:</span><span style="font-size: 11.5pt; color: #000000; line-height: 135%; font-family: Arial;"><o:p></o:p></span></span></p>\r\n<p><span style="font-size: small;"><span style="color: #000000; font-family: Arial;">• La capacidad de regularse a si mismo, confianza y motivación para trabajar y conseguir objetivos, incrementando la iniciativa y la satisfacción personal.<br />• La empatía, capacidad de entender a los demás, incluso cuando no están de acuerdo.<br />•  La adaptabilidad y capacidad de dar una respuesta creativa delante de los contratiempos y los obstáculos.  <br />• La capacidad de escuchar y comunicarse de forma eficaz.<br />• La capacidad para reconocer las emociones y sus efectos. La autoregulación de las emociones.  <br />• La eficacia dentro de la organización, la predisposición a participar activamente y el potencial de liderazgo. <br />• La regulación emocional como capacidad para prevenir el estrés.<br />• La capacidad de mostrarse abierto a las ideas y a los nuevos enfoques, con suficiente flexibilidad como para responder rápidamente a los cambios. </span><span style="font-size: 11.5pt; color: #000000; line-height: 135%; font-family: Arial;"><o:p></o:p></span></span></p>\r\n<p><span style="font-size: small;"><span style="color: #000000; font-family: Arial;">Cuando una organización aplica los principios de la inteligencia emocional consigue desarrollar las capacidades laborales y creativas de su equipo humano, reduciendo las bajas laborales, minimizando el estrés de sus empleados, adaptándose rápidamente a los cambios, fomentando una dirección más flexible y efectiva, además de una respuesta más competitiva para sus clientes. </span><span style="font-size: 11.5pt; color: #000000; line-height: 135%; font-family: Arial;"><o:p></o:p></span></span></p>\r\n<p><span style="font-size: small;"><span style="color: #000000; font-family: Arial;">Todas las personas pueden mejorar su inteligencia emocional en cualquier momento de su carrera profesional. Una de las formas más eficaces de favorecer el desarrollo de competencias emocionales es mediante un proceso Coaching, a través del cual, mediante el apoyo de un/a Coach, el cliente va generando un proceso de cambio a partir de sus propias necesidades.</span><span style="font-size: 11.5pt; color: #000000; line-height: 135%; font-family: Arial;"><o:p></o:p></span></span></p>\r\n<p><span style="font-size: 11.5pt; color: #000000; line-height: 135%; font-family: Arial;"> <o:p></o:p></span></p>\r\n<p><span style="font-size: small;"><span style="color: #000000; font-family: Arial;">Autor: Meritxell Obiols - Coach ejecutiva-profesional</span><span style="font-size: 11.5pt; color: #000000; line-height: 135%; font-family: Arial;"><o:p></o:p></span></span></p>\r\n<p><span style="font-size: small;"><span style="color: #000000; font-family: Arial;">Fuente: </span><span style="font-size: 11.5pt; color: #000000; line-height: 135%; font-family: Arial;"><a href="http://www.noticias.com/opinion/inteligencia-emocional-ambito-laboral-5kg.html"><span style="font-size: 12pt; color: #ff6600; line-height: 135%;"><span style="text-decoration: underline;">http://www.noticias.com/opinion/inteligencia-emocional-ambito-laboral-5kg.html</span></span></a><o:p></o:p></span></span></p>\r\n<p class="MsoNormal"><o:p><span style="font-size: small; font-family: Times New Roman;"> </span></o:p></p>', '', 0, 0, 0, 0, '2008-12-19 15:09:34', 62, '', '2008-12-19 15:29:29', 62, 0, '0000-00-00 00:00:00', '2008-12-19 15:09:34', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 1, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (65, 'La inteligencia emocional en el ámbito laboral', 'la-inteligencia-emocional-en-el-ambito-laboral', '', '<span style="color: black; font-family: Arial;" lang="ES-TRAD">\r\n<p style="line-height: 135%;"><span style="font-size: small;"><span style="color: black; font-family: Arial;" lang="ES-TRAD">El trabajo es una actividad humana, individual y colectiva, de transformación de la realidad, que proporciona bienes y servicios a la sociedad. Requiere que cada persona aporte esfuerzo, tiempo, habilidades o destrezas; a cambio, cada persona buscará unas compensaciones. Estas compensaciones no pertenecen exclusivamente al orden económico, también son psicológicas y sociales. Con su trabajo, las personas pretenden la satisfacción de necesidades biológicas, de seguridad, de relación personal, de autoestima y de realización personal.</span><span style="font-size: 11.5pt; color: black; line-height: 135%; font-family: Arial;" lang="ES-TRAD"><o:p></o:p></span></span></p>\r\n<p style="line-height: 135%;"><span style="font-size: small;"><span style="color: black; font-family: Arial;" lang="ES-TRAD">Es fundamental que cada miembro de la empresa se sienta como un profesional responsable de su competencia y que con sus aportaciones pueda ayudar a conseguir los objetivos de la empresa. </span><span style="font-size: 11.5pt; color: black; line-height: 135%; font-family: Arial;" lang="ES-TRAD"><o:p></o:p></span></span></p>\r\n<p style="line-height: 135%;"><span style="font-size: small;"><span style="color: black; font-family: Arial;" lang="ES-TRAD">Un buen líder de equipo tendrá que tener bien desarrollada la inteligencia emocional para saber valorar la importancia de atender el bienestar emocional de sus colaboradores. El hecho que una persona, por su experiencia y conocimientos, ascienda de categoría y asuma la responsabilidad de coordinar un grupo de trabajo, no implica necesariamente que tenga las habilidades para hacer frente a la complejidad de las relaciones interpersonales de los miembros de su equipo.</span><span style="font-size: 11.5pt; color: black; line-height: 135%; font-family: Arial;" lang="ES-TRAD"><o:p></o:p></span></span></p>\r\n<p style="line-height: 135%;"><span style="font-size: small;"><span style="color: black; font-family: Arial;" lang="ES-TRAD">Daniel Goleman popularizó en el año 1995 el concepto de Inteligencia Emocional, que ha permitido comprender ciertas realidades que no tenían una clara explicación. El coeficiente intelectual de una persona no es suficiente para explicar el éxito en su vida personal, profesional, familiar y social. Personas con educación, perspectivas y oportunidades parecidas han acabado con destinos muy  diferentes. Personas que eran una joven promesa, no han conseguido el éxito profesional, y otros con un modesto aprobado en sus  estudios han conseguido objetivos profesionales impensables. El hecho de tener un alto C.I. no garantiza conseguir las metas que se esperan de nosotros; el conjunto de características y habilidades emocionales que componen la inteligencia emocional pueden ser tan o más determinantes a la hora de triunfar en la vida.</span><span style="font-size: 11.5pt; color: black; line-height: 135%; font-family: Arial;" lang="ES-TRAD"><o:p></o:p></span></span></p>\r\n<p style="line-height: 135%;"><span style="font-size: small;"><span style="color: black; font-family: Arial;" lang="ES-TRAD">Goleman ha dado otra visión a <st1:personname productid="la Inteligencia" w:st="on">la Inteligencia</st1:personname>,  ya que desde su planteamiento, <st1:personname productid="la Inteligencia" w:st="on">la Inteligencia</st1:personname> emocional es un conjunto de destrezas que pueden ser modificadas y mejoradas, que existen como potencial y lo que conviene es desarrollarlas mediante entrenamiento. Facilitar las herramientas para conseguir la potenciación de las cualidades y el aprovechamiento de las habilidades personales de cada miembro de la empresa es una necesidad de las empresas con visión de futuro,  constatadas como fundamentales para conseguir sus objetivos empresariales. </span><span style="font-size: 11.5pt; color: black; line-height: 135%; font-family: Arial;" lang="ES-TRAD"><o:p></o:p></span></span></p>\r\n<p style="line-height: 135%;"><span style="font-size: small;"><span style="color: black; font-family: Arial;" lang="ES-TRAD">Las normas que gobiernan el mundo laboral están cambiando. No solamente se nos valora por nuestra inteligencia, experiencia o formación, sino también por la manera cómo nos relacionamos con nosotros mismos y con los demás.</span><span style="font-size: 11.5pt; color: black; line-height: 135%; font-family: Arial;" lang="ES-TRAD"><o:p></o:p></span></span></p>\r\n<p style="line-height: 135%;"><span style="font-size: small;"><span style="color: black; font-family: Arial;" lang="ES-TRAD"> Estos nuevos criterios centran su atención en <strong><span style="font-family: Arial;">habilidades</span></strong> como:</span><span style="font-size: 11.5pt; color: black; line-height: 135%; font-family: Arial;" lang="ES-TRAD"><o:p></o:p></span></span></p>\r\n<p style="line-height: 135%;"><span style="font-size: small;"><span style="color: black; font-family: Arial;" lang="ES-TRAD">• La capacidad de regularse a si mismo, confianza y motivación para trabajar y conseguir objetivos, incrementando la iniciativa y la satisfacción personal.<br />•  La empatía, capacidad de entender a los demás, incluso cuando no están de acuerdo.<br />•  La adaptabilidad y capacidad de dar una respuesta creativa delante de los contratiempos y los obstáculos.  <br />•  La capacidad de escuchar y comunicarse de forma eficaz.<br />•  La capacidad para reconocer las emociones y sus efectos. La autoregulación de las emociones.  <br />•  La eficacia dentro de la organización, la predisposición a participar activamente y el potencial de liderazgo. <br />•  La regulación emocional como capacidad para prevenir el estrés.<br />•  La capacidad de mostrarse abierto a las ideas y a los nuevos enfoques, con suficiente flexibilidad como para responder rápidamente a los cambios. </span><span style="font-size: 11.5pt; color: black; line-height: 135%; font-family: Arial;" lang="ES-TRAD"><o:p></o:p></span></span></p>\r\n<p style="line-height: 135%;"><span style="font-size: small;"><span style="color: black; font-family: Arial;" lang="ES-TRAD">Cuando una organización aplica los principios de la inteligencia emocional consigue desarrollar las capacidades laborales y creativas de su equipo humano, reduciendo las bajas laborales, minimizando el estrés de sus empleados, adaptándose rápidamente a los cambios, fomentando una dirección más flexible y efectiva, además de una respuesta más competitiva para sus clientes. </span><span style="font-size: 11.5pt; color: black; line-height: 135%; font-family: Arial;" lang="ES-TRAD"><o:p></o:p></span></span></p>\r\n<p style="line-height: 135%;"><span style="font-size: small;"><span style="color: black; font-family: Arial;" lang="ES-TRAD">Todas las personas pueden mejorar su inteligencia emocional en cualquier momento de su carrera profesional. Una de las formas más eficaces de favorecer el desarrollo de competencias emocionales es mediante un proceso Coaching, a través del cual, mediante el apoyo de un/a Coach, el cliente va generando un proceso de cambio a partir de sus propias necesidades.</span><span style="font-size: 11.5pt; color: black; line-height: 135%; font-family: Arial;" lang="ES-TRAD"><o:p></o:p></span></span></p>\r\n<p style="line-height: 135%;"><span style="font-size: 11.5pt; color: black; line-height: 135%; font-family: Arial;" lang="ES-TRAD"> <o:p></o:p></span></p>\r\n<p style="line-height: 135%;"><span style="font-size: small;"><span style="color: black; font-family: Arial;" lang="ES-TRAD">Autor: Meritxell Obiols - Coach ejecutiva-profesional</span><span style="font-size: 11.5pt; color: black; line-height: 135%; font-family: Arial;" lang="ES-TRAD"><o:p></o:p></span></span></p>\r\n<p style="line-height: 135%;"><span style="font-size: small;"><span style="color: black; font-family: Arial;" lang="ES-TRAD">Fuente: </span><span style="font-size: 11.5pt; color: black; line-height: 135%; font-family: Arial;" lang="ES-TRAD"><a href="http://www.noticias.com/opinion/inteligencia-emocional-ambito-laboral-5kg.html"><span style="font-size: 12pt; color: #ff6600; line-height: 135%;"><span style="text-decoration: underline;">http://www.noticias.com/opinion/inteligencia-emocional-ambito-laboral-5kg.html</span></span></a><o:p></o:p></span></span></p>\r\n</span>', '', 1, 6, 0, 39, '2008-12-29 17:41:47', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2008-12-29 17:41:47', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 2, '', '', 0, 43, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (66, 'Comunicar la Ciencia: El Desafío Actual del Periodismo Científico', 'comunicar-la-ciencia-el-desafio-actual-del-periodismo-cientifico', '', '<span style="font-size: 11pt; font-family: &quot;Century Gothic&quot;; mso-bidi-font-weight: bold;">\r\n<p><span style="font-family: Arial; mso-bidi-font-weight: bold;"><span style="font-size: small;">C</span></span><span style="font-family: Arial;"><span style="font-size: small;">otidianamente desde los mensajes de los diferentes medios de comunicación nos informan sobre avances científicos, descubrimientos, inventos. Mas la relación existente entre ciencia y periodismo se remonta a varios siglos.<br /><br />Mientras hablamos del siglo 19 como el momento en que se establece este binomio como el actual, otros referencian que ya en el año 400ª.C. encontrábamos materiales de difusión. Sin embargo, dejaremos la historia para otro momento y nos ocuparemos de ver que sucede hoy con la comunicación de estos acontecimientos. <br /><br />Como ya hemos explicado en columnas anteriores, comunicar es poner en común, en esta instancia, a la ciencia y sus áreas de acción, a través de una actividad, la periodística, que intenta establecer puentes de unión o ejercer una función de mediación entre los productores del conocimiento científico y el público en general.<br /><br />Deberíamos tener en cuenta que en este camino de difusión, los intermediarios o mediadores serían tres: los que producen ciencia y tecnología; los medios informativos y los medios educativos.<br /><br />Esta labor, sencilla de explicar, presenta una complejidad mayor al situarnos en el universo de las nuevas tecnologías de la información y la comunicación (NTIC) como las que disponen hoy los seres humanos.<br /><br />Paralelamente a esta situación, atendemos a la aceleración de la producción de conocimiento científico, a la pérdida de barreras de tiempo y espacio, a una ciencia que viene transitando caminos de certezas pero también ahora de incertidumbres; a un crecimiento a la enésima potencia en cuanto materiales referidos a ciencia y fuentes donde encontrarlo existen y bases de millones de datos. Situación influenciada por las NTIC y que ha modificado el panorama inicial de este periodismo científico, que antes tenía grandes inconvenientes para acceder a las fuentes de información. Sumado al tema recurrente de la dicotomía entre científicos y periodistas.<br /><br />Esto nos lleva a plantearnos de que cuando estamos trabajando para difundir materiales científicos, debemos primero detectar cuáles son y la valoración real de los mismo y luego su desarrollo. Frente a las posibilidades que nos brinda por ejemplo Internet, donde al colocar la palabra "ciencia" en el motor de búsqueda www.google.com.ar nos da una entrada de 1.700.000 en 0,07 segundos, el trabajo de búsqueda y selección ya es arduo e imposible de abarcar en su totalidad.<br /><br />El periodista que desea comunicar hechos científicos debe contar con antecedentes (background) sobre la temática a tratar y también para realizar justamente la selección y valoración referida. Asimismo, la multiplicidad de áreas científicas conduce a nuevos inconvenientes, ya que es imposible conocer todo de todo, motivo por el cual aparecen cada vez más subespecialidades. Por ello, se debe contar con personas con capacidad de analizar la realidad y poder proyectar evoluciones o desarrollos venideros en el seno social. <br /><br />Por lo tanto, para comunicar la ciencia, nos encontramos con inconvenientes debido a la extensión y complejidad de la misma, la hiperinformación conseguida a través de las NTIC y los procesos de continuo cambio histórico.<br /><br />Edgar Morin plantea la difícil tarea del hombre actual para poder estar informado en un universo donde se conjugan lo global, el contexto, lo complejo y lo mutidimensional. Circunstancia en la que entra en juego también la esfera de los procesos de globalización e integración a los que asisten las sociedades en la actualidad y donde el planteo de las políticas en materia de ciencia y tecnología, tanto como de los medios de comunicación, transitan un nuevo camino. Por una parte las realidades locales, por la otra las regionales y globales y finalmente un intento de convivencia entre ambas.<br /><br />Nos alcanzaría un ejemplo para abordar el tema de los procesos de cambio y aceleración social. Desde 1456 cuando se inventa la imprenta al próximo invento que modificará sustancialmente la impresión manual para hacerla mecánica, la linotipia, que será a finales del 1700, pasaron trescientos años. Hoy una impresora sale al mercado y a los tres meses hay un modelo más pequeño, más liviano, más económico, más...<br /><br />A todo lo señalado, debemos agregar las políticas editoriales de los medios de comunicación que en muchos casos evalúan a los temas de ciencia y tecnología como pocos atractivos y en esta carrera el raiting es determinante al momento de decidir que va y que no. Paralelamente, aparecen en los periódicos, por ejemplo, suplementos de informática, ya que los ciberusuarios se multiplican día a día o bien informaciones referidas a acontecimientos astronómicos curiosos. O los programas televisivos referidos a temas de salud. Sin embargo, una ausencia manifiesta es el tema de la comunicación, abordada desde un planteo científico, asunte sin aviso en varios medios.<o:p></o:p></span></span></p>\r\n<p><span style="font-family: Arial;"><span style="font-size: small;">Finalmente, diferentes son las realidades socio - político - económicas de los países latinoamericanos frente a los postindustrializados y estas diferencias repercuten directamente sobre la relación ciencia-individuos-medios. <br /><br />Comunicar es poner en común, en este caso, situaciones diferentes, personas distintas, entornos también distintos, que intentan coexistir en una pretendida integración.<br /><br />Hiperinformación conviviendo con informaciones escasas en determinadas temáticas científicas, ausencias de temas, insuficiente cantidad de personas preparadas para esta tarea, determinadas políticas editoriales de medios, escasos recursos en países de economías deprimidas con problemáticas sociales complejas, visiones prejuiciosas, son sólo algunas de las variables con las que se encuentra hoy el periodismo científico para comunicar la ciencia. A su vez, variedad de programas televisivos, de periódicos en soporte gráfico, aunque no todos aborden temas científicos. Publicaciones con soporte on-line que han alcanzado una diversidad temática nunca vista y que pertenecen a instituciones privadas, públicas, gratuitas, pagas, con políticas de difusión y sin ellas, en algunos casos con fuentes informativas confiables y seguras y en otros con falta de parámetros de evaluación, para que el público en general pueda saber si la información de la web es real y científica. Una sociedad real conviviendo con una sociedad virtual. Y el periodismo científico intentando brindar caminos de certidumbres donde la falta de conocimiento tiñe de temor lo cotidiano. Temor a la ingeniería genética, a la bioingeniería, al desempleo, la inseguridad, los virus, la hiperinformación y la falta de información o el acceso a la misma. <o:p></o:p></span></span></p>\r\n<p style="margin: 0cm 0cm 0pt;" class="MsoNormal"><span style="font-family: Arial;"><span style="font-size: small;">Autor: <span style="mso-bidi-font-style: italic;"><a href="http://www.razonypalabra.org.mx/comunicarte/2003/septiembre.html#ma#ma"><span style="color: windowtext; text-decoration: none; text-underline: none;">Marisa Avogadro</span></a> - <span style="mso-spacerun: yes;"> </span>Magister en Comunicación y Educación.</span><o:p></o:p></span></span></p>\r\n<p style="margin: 0cm 0cm 0pt;" class="MsoNormal"><span style="font-family: Arial;"><span style="font-size: small;">Fuente: <span style="color: #ff6600;"><a href="http://www.razonypalabra.org.mx/comunicarte/2003/septiembre.html"><span style="color: #ff6600; text-decoration: none; text-underline: none;">http://www.razonypalabra.org.mx/comunicarte/2003/septiembre.html</span></a></span><o:p></o:p></span></span></p>\r\n<p style="margin: 0cm 0cm 0pt;" class="MsoNormal"><span style="font-family: Arial;"><o:p><span style="font-size: small;"> </span></o:p></span></p>\r\n<p style="margin: 0cm 0cm 0pt;" class="MsoNormal"><span style="font-family: Arial;"><o:p><span style="font-size: small;"> </span></o:p></span></p>\r\n<font face="&quot;Century Gothic&quot;" style="font-size: 11pt; mso-bidi-font-weight: bold;">\r\n<p> </p>\r\n</font></span>\r\n<p> </p>', '', 1, 6, 0, 39, '2009-01-08 19:51:29', 62, '', '2009-01-08 19:58:11', 62, 62, '2009-01-08 19:58:12', '2009-01-08 19:51:29', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 1, '', '', 0, 35, 'robots=\nauthor=');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_content_frontpage`
-- 

DROP TABLE IF EXISTS `jos_content_frontpage`;
CREATE TABLE `jos_content_frontpage` (
  `content_id` int(11) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `jos_content_frontpage`
-- 

INSERT INTO `jos_content_frontpage` (`content_id`, `ordering`) VALUES (6, 3);
INSERT INTO `jos_content_frontpage` (`content_id`, `ordering`) VALUES (14, 5);
INSERT INTO `jos_content_frontpage` (`content_id`, `ordering`) VALUES (7, 4);
INSERT INTO `jos_content_frontpage` (`content_id`, `ordering`) VALUES (1, 2);
INSERT INTO `jos_content_frontpage` (`content_id`, `ordering`) VALUES (16, 6);
INSERT INTO `jos_content_frontpage` (`content_id`, `ordering`) VALUES (64, 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_content_rating`
-- 

DROP TABLE IF EXISTS `jos_content_rating`;
CREATE TABLE `jos_content_rating` (
  `content_id` int(11) NOT NULL default '0',
  `rating_sum` int(11) unsigned NOT NULL default '0',
  `rating_count` int(11) unsigned NOT NULL default '0',
  `lastip` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `jos_content_rating`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_core_acl_aro`
-- 

DROP TABLE IF EXISTS `jos_core_acl_aro`;
CREATE TABLE `jos_core_acl_aro` (
  `id` int(11) NOT NULL auto_increment,
  `section_value` varchar(240) NOT NULL default '0',
  `value` varchar(240) NOT NULL default '',
  `order_value` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `hidden` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `jos_section_value_value_aro` (`section_value`(100),`value`(100)),
  KEY `jos_gacl_hidden_aro` (`hidden`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- Volcar la base de datos para la tabla `jos_core_acl_aro`
-- 

INSERT INTO `jos_core_acl_aro` (`id`, `section_value`, `value`, `order_value`, `name`, `hidden`) VALUES (10, 'users', '62', 0, 'Administrator', 0);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_core_acl_aro_groups`
-- 

DROP TABLE IF EXISTS `jos_core_acl_aro_groups`;
CREATE TABLE `jos_core_acl_aro_groups` (
  `id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `lft` int(11) NOT NULL default '0',
  `rgt` int(11) NOT NULL default '0',
  `value` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `jos_gacl_parent_id_aro_groups` (`parent_id`),
  KEY `jos_gacl_lft_rgt_aro_groups` (`lft`,`rgt`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

-- 
-- Volcar la base de datos para la tabla `jos_core_acl_aro_groups`
-- 

INSERT INTO `jos_core_acl_aro_groups` (`id`, `parent_id`, `name`, `lft`, `rgt`, `value`) VALUES (17, 0, 'ROOT', 1, 22, 'ROOT');
INSERT INTO `jos_core_acl_aro_groups` (`id`, `parent_id`, `name`, `lft`, `rgt`, `value`) VALUES (28, 17, 'USERS', 2, 21, 'USERS');
INSERT INTO `jos_core_acl_aro_groups` (`id`, `parent_id`, `name`, `lft`, `rgt`, `value`) VALUES (29, 28, 'Public Frontend', 3, 12, 'Public Frontend');
INSERT INTO `jos_core_acl_aro_groups` (`id`, `parent_id`, `name`, `lft`, `rgt`, `value`) VALUES (18, 29, 'Registered', 4, 11, 'Registered');
INSERT INTO `jos_core_acl_aro_groups` (`id`, `parent_id`, `name`, `lft`, `rgt`, `value`) VALUES (19, 18, 'Author', 5, 10, 'Author');
INSERT INTO `jos_core_acl_aro_groups` (`id`, `parent_id`, `name`, `lft`, `rgt`, `value`) VALUES (20, 19, 'Editor', 6, 9, 'Editor');
INSERT INTO `jos_core_acl_aro_groups` (`id`, `parent_id`, `name`, `lft`, `rgt`, `value`) VALUES (21, 20, 'Publisher', 7, 8, 'Publisher');
INSERT INTO `jos_core_acl_aro_groups` (`id`, `parent_id`, `name`, `lft`, `rgt`, `value`) VALUES (30, 28, 'Public Backend', 13, 20, 'Public Backend');
INSERT INTO `jos_core_acl_aro_groups` (`id`, `parent_id`, `name`, `lft`, `rgt`, `value`) VALUES (23, 30, 'Manager', 14, 19, 'Manager');
INSERT INTO `jos_core_acl_aro_groups` (`id`, `parent_id`, `name`, `lft`, `rgt`, `value`) VALUES (24, 23, 'Administrator', 15, 18, 'Administrator');
INSERT INTO `jos_core_acl_aro_groups` (`id`, `parent_id`, `name`, `lft`, `rgt`, `value`) VALUES (25, 24, 'Super Administrator', 16, 17, 'Super Administrator');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_core_acl_aro_map`
-- 

DROP TABLE IF EXISTS `jos_core_acl_aro_map`;
CREATE TABLE `jos_core_acl_aro_map` (
  `acl_id` int(11) NOT NULL default '0',
  `section_value` varchar(230) NOT NULL default '0',
  `value` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`acl_id`,`section_value`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `jos_core_acl_aro_map`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_core_acl_aro_sections`
-- 

DROP TABLE IF EXISTS `jos_core_acl_aro_sections`;
CREATE TABLE `jos_core_acl_aro_sections` (
  `id` int(11) NOT NULL auto_increment,
  `value` varchar(230) NOT NULL default '',
  `order_value` int(11) NOT NULL default '0',
  `name` varchar(230) NOT NULL default '',
  `hidden` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `jos_gacl_value_aro_sections` (`value`),
  KEY `jos_gacl_hidden_aro_sections` (`hidden`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- Volcar la base de datos para la tabla `jos_core_acl_aro_sections`
-- 

INSERT INTO `jos_core_acl_aro_sections` (`id`, `value`, `order_value`, `name`, `hidden`) VALUES (10, 'users', 1, 'Users', 0);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_core_acl_groups_aro_map`
-- 

DROP TABLE IF EXISTS `jos_core_acl_groups_aro_map`;
CREATE TABLE `jos_core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL default '0',
  `section_value` varchar(240) NOT NULL default '',
  `aro_id` int(11) NOT NULL default '0',
  UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `jos_core_acl_groups_aro_map`
-- 

INSERT INTO `jos_core_acl_groups_aro_map` (`group_id`, `section_value`, `aro_id`) VALUES (25, '', 10);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_core_log_items`
-- 

DROP TABLE IF EXISTS `jos_core_log_items`;
CREATE TABLE `jos_core_log_items` (
  `time_stamp` date NOT NULL default '0000-00-00',
  `item_table` varchar(50) NOT NULL default '',
  `item_id` int(11) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `jos_core_log_items`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_core_log_searches`
-- 

DROP TABLE IF EXISTS `jos_core_log_searches`;
CREATE TABLE `jos_core_log_searches` (
  `search_term` varchar(128) NOT NULL default '',
  `hits` int(11) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `jos_core_log_searches`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_css2switch_items`
-- 

DROP TABLE IF EXISTS `jos_css2switch_items`;
CREATE TABLE `jos_css2switch_items` (
  `parentid` varchar(5) default 'x',
  `css_datei` varchar(60) NOT NULL default '',
  `items` int(3) NOT NULL default '0',
  KEY `INDEX` (`parentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `jos_css2switch_items`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_css2switch_menutype`
-- 

DROP TABLE IF EXISTS `jos_css2switch_menutype`;
CREATE TABLE `jos_css2switch_menutype` (
  `menutype` varchar(60) NOT NULL default '',
  `default_templ` varchar(60) default NULL,
  PRIMARY KEY  (`menutype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `jos_css2switch_menutype`
-- 

INSERT INTO `jos_css2switch_menutype` (`menutype`, `default_templ`) VALUES ('mainmenu', NULL);
INSERT INTO `jos_css2switch_menutype` (`menutype`, `default_templ`) VALUES ('usermenu', NULL);
INSERT INTO `jos_css2switch_menutype` (`menutype`, `default_templ`) VALUES ('topmenu', NULL);
INSERT INTO `jos_css2switch_menutype` (`menutype`, `default_templ`) VALUES ('othermenu', NULL);
INSERT INTO `jos_css2switch_menutype` (`menutype`, `default_templ`) VALUES ('ExamplePages', NULL);
INSERT INTO `jos_css2switch_menutype` (`menutype`, `default_templ`) VALUES ('keyconcepts', NULL);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_groups`
-- 

DROP TABLE IF EXISTS `jos_groups`;
CREATE TABLE `jos_groups` (
  `id` tinyint(3) unsigned NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `jos_groups`
-- 

INSERT INTO `jos_groups` (`id`, `name`) VALUES (0, 'Public');
INSERT INTO `jos_groups` (`id`, `name`) VALUES (1, 'Registered');
INSERT INTO `jos_groups` (`id`, `name`) VALUES (2, 'Special');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_ijoomla_news_categories_manager`
-- 

DROP TABLE IF EXISTS `jos_ijoomla_news_categories_manager`;
CREATE TABLE `jos_ijoomla_news_categories_manager` (
  `cat_id` int(11) NOT NULL default '0',
  `featured` tinyint(4) NOT NULL default '0',
  `section_page` tinyint(4) NOT NULL default '0',
  `show_image` tinyint(4) NOT NULL default '0',
  `show_description` tinyint(4) NOT NULL default '0',
  `include` tinyint(4) NOT NULL default '0',
  `home` tinyint(4) NOT NULL default '0',
  `items` int(11) NOT NULL default '0',
  PRIMARY KEY  (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `jos_ijoomla_news_categories_manager`
-- 

INSERT INTO `jos_ijoomla_news_categories_manager` (`cat_id`, `featured`, `section_page`, `show_image`, `show_description`, `include`, `home`, `items`) VALUES (1, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_categories_manager` (`cat_id`, `featured`, `section_page`, `show_image`, `show_description`, `include`, `home`, `items`) VALUES (2, 1, 1, 0, 0, 1, 1, 3);
INSERT INTO `jos_ijoomla_news_categories_manager` (`cat_id`, `featured`, `section_page`, `show_image`, `show_description`, `include`, `home`, `items`) VALUES (3, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_categories_manager` (`cat_id`, `featured`, `section_page`, `show_image`, `show_description`, `include`, `home`, `items`) VALUES (4, 1, 1, 0, 0, 1, 1, 3);
INSERT INTO `jos_ijoomla_news_categories_manager` (`cat_id`, `featured`, `section_page`, `show_image`, `show_description`, `include`, `home`, `items`) VALUES (5, 1, 1, 0, 0, 1, 1, 3);
INSERT INTO `jos_ijoomla_news_categories_manager` (`cat_id`, `featured`, `section_page`, `show_image`, `show_description`, `include`, `home`, `items`) VALUES (6, 1, 1, 0, 0, 1, 1, 3);
INSERT INTO `jos_ijoomla_news_categories_manager` (`cat_id`, `featured`, `section_page`, `show_image`, `show_description`, `include`, `home`, `items`) VALUES (7, 1, 1, 0, 0, 1, 1, 3);
INSERT INTO `jos_ijoomla_news_categories_manager` (`cat_id`, `featured`, `section_page`, `show_image`, `show_description`, `include`, `home`, `items`) VALUES (12, 1, 1, 0, 0, 1, 1, 3);
INSERT INTO `jos_ijoomla_news_categories_manager` (`cat_id`, `featured`, `section_page`, `show_image`, `show_description`, `include`, `home`, `items`) VALUES (13, 1, 1, 0, 0, 1, 1, 3);
INSERT INTO `jos_ijoomla_news_categories_manager` (`cat_id`, `featured`, `section_page`, `show_image`, `show_description`, `include`, `home`, `items`) VALUES (14, 1, 1, 0, 0, 1, 1, 3);
INSERT INTO `jos_ijoomla_news_categories_manager` (`cat_id`, `featured`, `section_page`, `show_image`, `show_description`, `include`, `home`, `items`) VALUES (15, 1, 1, 0, 0, 1, 1, 3);
INSERT INTO `jos_ijoomla_news_categories_manager` (`cat_id`, `featured`, `section_page`, `show_image`, `show_description`, `include`, `home`, `items`) VALUES (17, 1, 1, 0, 0, 1, 1, 3);
INSERT INTO `jos_ijoomla_news_categories_manager` (`cat_id`, `featured`, `section_page`, `show_image`, `show_description`, `include`, `home`, `items`) VALUES (18, 1, 1, 0, 0, 1, 1, 3);
INSERT INTO `jos_ijoomla_news_categories_manager` (`cat_id`, `featured`, `section_page`, `show_image`, `show_description`, `include`, `home`, `items`) VALUES (19, 1, 1, 0, 0, 1, 1, 3);
INSERT INTO `jos_ijoomla_news_categories_manager` (`cat_id`, `featured`, `section_page`, `show_image`, `show_description`, `include`, `home`, `items`) VALUES (25, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_categories_manager` (`cat_id`, `featured`, `section_page`, `show_image`, `show_description`, `include`, `home`, `items`) VALUES (27, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_categories_manager` (`cat_id`, `featured`, `section_page`, `show_image`, `show_description`, `include`, `home`, `items`) VALUES (28, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_categories_manager` (`cat_id`, `featured`, `section_page`, `show_image`, `show_description`, `include`, `home`, `items`) VALUES (29, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_categories_manager` (`cat_id`, `featured`, `section_page`, `show_image`, `show_description`, `include`, `home`, `items`) VALUES (30, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_categories_manager` (`cat_id`, `featured`, `section_page`, `show_image`, `show_description`, `include`, `home`, `items`) VALUES (31, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_categories_manager` (`cat_id`, `featured`, `section_page`, `show_image`, `show_description`, `include`, `home`, `items`) VALUES (32, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_categories_manager` (`cat_id`, `featured`, `section_page`, `show_image`, `show_description`, `include`, `home`, `items`) VALUES (33, 1, 1, 0, 0, 1, 1, 3);
INSERT INTO `jos_ijoomla_news_categories_manager` (`cat_id`, `featured`, `section_page`, `show_image`, `show_description`, `include`, `home`, `items`) VALUES (34, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_categories_manager` (`cat_id`, `featured`, `section_page`, `show_image`, `show_description`, `include`, `home`, `items`) VALUES (35, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_categories_manager` (`cat_id`, `featured`, `section_page`, `show_image`, `show_description`, `include`, `home`, `items`) VALUES (36, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_categories_manager` (`cat_id`, `featured`, `section_page`, `show_image`, `show_description`, `include`, `home`, `items`) VALUES (37, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_categories_manager` (`cat_id`, `featured`, `section_page`, `show_image`, `show_description`, `include`, `home`, `items`) VALUES (38, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_categories_manager` (`cat_id`, `featured`, `section_page`, `show_image`, `show_description`, `include`, `home`, `items`) VALUES (39, 0, 1, 0, 0, 1, 1, 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_ijoomla_news_css_settings`
-- 

DROP TABLE IF EXISTS `jos_ijoomla_news_css_settings`;
CREATE TABLE `jos_ijoomla_news_css_settings` (
  `id` int(11) NOT NULL default '0',
  `top_title` varchar(30) NOT NULL default '',
  `intro_text` varchar(30) NOT NULL default '',
  `read_more` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `jos_ijoomla_news_css_settings`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_ijoomla_news_items_displayed`
-- 

DROP TABLE IF EXISTS `jos_ijoomla_news_items_displayed`;
CREATE TABLE `jos_ijoomla_news_items_displayed` (
  `id` int(100) NOT NULL auto_increment,
  `content_id` int(100) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

-- 
-- Volcar la base de datos para la tabla `jos_ijoomla_news_items_displayed`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_ijoomla_news_items_manager`
-- 

DROP TABLE IF EXISTS `jos_ijoomla_news_items_manager`;
CREATE TABLE `jos_ijoomla_news_items_manager` (
  `item_id` int(11) NOT NULL default '0',
  `top_title` text NOT NULL,
  `include` tinyint(4) NOT NULL default '1',
  `sticky` tinyint(4) NOT NULL default '0',
  `popular` tinyint(4) NOT NULL default '0',
  `home` tinyint(4) NOT NULL default '0',
  `top` tinyint(4) NOT NULL default '0',
  `leading` tinyint(4) NOT NULL default '0',
  `more_news` tinyint(4) NOT NULL default '0',
  `section_page` tinyint(4) NOT NULL default '0',
  `cat_page` tinyint(4) NOT NULL default '0',
  `image` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `jos_ijoomla_news_items_manager`
-- 

INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (1, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (2, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (3, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (4, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (5, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (6, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (7, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (8, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (9, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (10, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (11, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (12, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (13, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (14, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (15, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (16, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (17, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (18, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (19, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (20, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (21, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (22, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (23, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (24, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (25, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (26, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (27, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (28, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (29, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (30, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (31, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (32, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (33, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (34, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (35, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (36, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (37, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (38, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (39, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (40, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (41, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (42, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (43, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (44, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (45, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (46, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (47, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (48, '', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (49, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (50, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (51, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (52, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (53, '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (54, '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (55, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (56, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `jos_ijoomla_news_items_manager` (`item_id`, `top_title`, `include`, `sticky`, `popular`, `home`, `top`, `leading`, `more_news`, `section_page`, `cat_page`, `image`) VALUES (57, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_ijoomla_news_layout`
-- 

DROP TABLE IF EXISTS `jos_ijoomla_news_layout`;
CREATE TABLE `jos_ijoomla_news_layout` (
  `id` int(10) NOT NULL auto_increment,
  `layout_page_id` int(10) NOT NULL default '0',
  `layout_content` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- Volcar la base de datos para la tabla `jos_ijoomla_news_layout`
-- 

INSERT INTO `jos_ijoomla_news_layout` (`id`, `layout_page_id`, `layout_content`) VALUES (4, 0, '<?xml version="1.0" encoding="iso-8859-1"?>\r\n<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\r\n<head>\r\n<meta content="text/html; charset=iso-8859-1" http-equiv="content-type" />\r\n<title></title>\r\n<link media="all" rel="stylesheet" type="text/css" href="images/ijoomla/main.css" />\r\n</head>\r\n<body>\r\n<table style="border-collapse: separate;" cellspacing="5" cellpadding="0" border="0"><tbody><tr valign="top"><td width="48%">{date_time}{top}{most popular}</td><td width="52%">\r\n{more news} </td></tr><tr valign="top"><td colspan="2">\r\n<table cellspacing="0" cellpadding="0" class="leading"><tbody><tr><td valign="top" class="crn">\r\n<div align="left"><img alt="" src="images/ijoomla/crn_top_left.gif" /></div></td><td class="top"></td><td valign="top" class="crn">\r\n<div align="right"><img alt="" src="images/ijoomla/crn_top_right.gif" /></div></td></tr><tr><td class="content" colspan="3">{leading}</td></tr><tr><td valign="bottom" class="crn">\r\n<div align="left"><img alt="" src="images/ijoomla/crn_bottom_left.gif" /></div></td><td class="bottom"><br />\r\n</td><td valign="bottom" class="crn">\r\n<div align="right"><img alt="" src="images/ijoomla/crn_bottom_right.gif" /></div></td></tr></tbody></table> </td></tr><tr valign="top"> <td colspan="2"><font size="2" face="Verdana">{featured sections}</font></td></tr></tbody></table>\r\n</body>\r\n</html>');
INSERT INTO `jos_ijoomla_news_layout` (`id`, `layout_page_id`, `layout_content`) VALUES (3, 1, '<?xml version="1.0" encoding="iso-8859-1"?>\r\n<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\r\n<head>\r\n<title></title>\r\n<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />\r\n<link media="all" href="images/ijoomla/main.css" type="text/css" rel="stylesheet" />\r\n</head>\r\n<body>\r\n<table style="border-collapse: separate;" cellspacing="5" cellpadding="0" border="0">\r\n<tbody>\r\n<tr valign="top">\r\n  <td colspan="2">{section_category_name}</td>\r\n  </tr>\r\n<tr valign="top">\r\n<td width="48%">{date_time}{top}{most popular}</td>\r\n<td width="52%">{more news} </td></tr>\r\n<tr valign="top">\r\n<td colspan="2">\r\n<table class="leading" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td class="crn" valign="top">\r\n<div align="left"><img alt="" src="images/ijoomla/crn_top_left.gif" /></div></td>\r\n<td class="top">&nbsp;</td>\r\n<td class="crn" valign="top">\r\n<div align="right"><img alt="" src="images/ijoomla/crn_top_right.gif" /></div></td></tr>\r\n<tr>\r\n<td class="content" colspan="3">{leading}</td></tr>\r\n<tr>\r\n<td class="crn" valign="bottom">\r\n<div align="left"><img alt="" src="images/ijoomla/crn_bottom_left.gif" /></div></td>\r\n<td class="bottom"><br />\r\n</td>\r\n<td class="crn" valign="bottom">\r\n<div align="right"><img alt="" src="images/ijoomla/crn_bottom_right.gif" /></div></td></tr></tbody></table></td></tr>\r\n<tr valign="top">\r\n<td colspan="2"><font face="Verdana" size="2">{featured sections}</font></td></tr></tbody></table>\r\n</body>\r\n</html>');
INSERT INTO `jos_ijoomla_news_layout` (`id`, `layout_page_id`, `layout_content`) VALUES (5, 2, '<?xml version="1.0" encoding="iso-8859-1"?>\r\n<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\r\n<head>\r\n<title></title>\r\n<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />\r\n<link media="all" href="images/ijoomla/main.css" type="text/css" rel="stylesheet" />\r\n</head>\r\n<body>\r\n<table style="border-collapse: separate;" cellspacing="5" cellpadding="0" border="0">\r\n<tbody>\r\n<tr valign="top">\r\n<td colspan="2">{section_category_name}</td></tr>\r\n<tr valign="top">\r\n<td width="48%">{date_time}{top}{most popular}</td>\r\n<td width="52%">{more news} </td></tr>\r\n<tr valign="top">\r\n<td colspan="2">\r\n<table class="leading" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td class="crn" valign="top">\r\n<div align="left"><img alt="" src="images/ijoomla/crn_top_left.gif" /></div></td>\r\n<td class="top">&nbsp;</td>\r\n<td class="crn" valign="top">\r\n<div align="right"><img alt="" src="images/ijoomla/crn_top_right.gif" /></div></td></tr>\r\n<tr>\r\n<td class="content" colspan="3">{leading}</td></tr>\r\n<tr>\r\n<td class="crn" valign="bottom">\r\n<div align="left"><img alt="" src="images/ijoomla/crn_bottom_left.gif" /></div></td>\r\n<td class="bottom"><br />\r\n</td>\r\n<td class="crn" valign="bottom">\r\n<div align="right"><img alt="" src="images/ijoomla/crn_bottom_right.gif" /></div></td></tr></tbody></table></td></tr>\r\n<tr valign="top">\r\n<td colspan="2"><font face="Verdana" size="2">{featured sections}</font></td></tr></tbody></table>\r\n</body>\r\n</html>');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_ijoomla_news_layout_settings`
-- 

DROP TABLE IF EXISTS `jos_ijoomla_news_layout_settings`;
CREATE TABLE `jos_ijoomla_news_layout_settings` (
  `more_news_orientation` tinyint(4) NOT NULL default '0',
  `read_more_text` varchar(50) NOT NULL default '',
  `keep_aspect_ratio` tinyint(4) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `jos_ijoomla_news_layout_settings`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_ijoomla_news_section_manager`
-- 

DROP TABLE IF EXISTS `jos_ijoomla_news_section_manager`;
CREATE TABLE `jos_ijoomla_news_section_manager` (
  `sectionid` int(11) NOT NULL default '0',
  `featured` smallint(6) NOT NULL default '0',
  `show_image` smallint(6) NOT NULL default '0',
  `show_description` smallint(6) NOT NULL default '0',
  `include` smallint(6) NOT NULL default '1',
  `home` smallint(6) NOT NULL default '0',
  `items` int(11) NOT NULL default '0',
  PRIMARY KEY  (`sectionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `jos_ijoomla_news_section_manager`
-- 

INSERT INTO `jos_ijoomla_news_section_manager` (`sectionid`, `featured`, `show_image`, `show_description`, `include`, `home`, `items`) VALUES (1, 1, 0, 0, 1, 1, 3);
INSERT INTO `jos_ijoomla_news_section_manager` (`sectionid`, `featured`, `show_image`, `show_description`, `include`, `home`, `items`) VALUES (3, 1, 0, 0, 1, 1, 3);
INSERT INTO `jos_ijoomla_news_section_manager` (`sectionid`, `featured`, `show_image`, `show_description`, `include`, `home`, `items`) VALUES (4, 1, 0, 0, 1, 1, 3);
INSERT INTO `jos_ijoomla_news_section_manager` (`sectionid`, `featured`, `show_image`, `show_description`, `include`, `home`, `items`) VALUES (5, 1, 0, 0, 1, 1, 3);
INSERT INTO `jos_ijoomla_news_section_manager` (`sectionid`, `featured`, `show_image`, `show_description`, `include`, `home`, `items`) VALUES (6, 1, 0, 0, 1, 1, 3);
INSERT INTO `jos_ijoomla_news_section_manager` (`sectionid`, `featured`, `show_image`, `show_description`, `include`, `home`, `items`) VALUES (7, 1, 0, 0, 1, 1, 3);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_ijoomla_news_separator_settings`
-- 

DROP TABLE IF EXISTS `jos_ijoomla_news_separator_settings`;
CREATE TABLE `jos_ijoomla_news_separator_settings` (
  `horz_image` varchar(150) NOT NULL default '',
  `vert_image` varchar(150) NOT NULL default '',
  `images` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `jos_ijoomla_news_separator_settings`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_ijoomla_news_settings`
-- 

DROP TABLE IF EXISTS `jos_ijoomla_news_settings`;
CREATE TABLE `jos_ijoomla_news_settings` (
  `id` int(11) NOT NULL default '0',
  `popular_options` tinyint(4) NOT NULL default '0',
  `show_empty_heading` tinyint(4) NOT NULL default '0',
  `show_same_items_sections` tinyint(4) NOT NULL default '0',
  `show_same_items_popular` tinyint(4) NOT NULL default '0',
  `reserved` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `jos_ijoomla_news_settings`
-- 

INSERT INTO `jos_ijoomla_news_settings` (`id`, `popular_options`, `show_empty_heading`, `show_same_items_sections`, `show_same_items_popular`, `reserved`) VALUES (1, 1, 0, 0, 0, 0);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_ijoomla_news_zone_settings`
-- 

DROP TABLE IF EXISTS `jos_ijoomla_news_zone_settings`;
CREATE TABLE `jos_ijoomla_news_zone_settings` (
  `id` int(10) NOT NULL auto_increment,
  `general_width` varchar(100) NOT NULL default '',
  `general_height` varchar(100) NOT NULL default '',
  `general_columns` varchar(100) NOT NULL default '',
  `general_rows` varchar(100) NOT NULL default '',
  `general_border` varchar(100) NOT NULL default '',
  `general_border_size` varchar(100) NOT NULL default '',
  `general_border_color` varchar(100) NOT NULL default '',
  `general_padding_size_top` varchar(100) NOT NULL default '',
  `general_padding_size_right` varchar(100) NOT NULL default '',
  `general_padding_size_bottom` varchar(100) NOT NULL default '',
  `general_padding_size_left` varchar(100) NOT NULL default '',
  `general_vert_image` varchar(100) NOT NULL default '',
  `general_horz_image` varchar(100) NOT NULL default '',
  `general_background_color` varchar(100) NOT NULL default '',
  `general_orientation` varchar(100) NOT NULL default '',
  `general_ordering` varchar(100) NOT NULL default '',
  `general_read_more` varchar(100) NOT NULL default '',
  `general_read_more_first` varchar(100) NOT NULL default '',
  `general_margin` varchar(100) NOT NULL default '',
  `heading_show` varchar(100) NOT NULL default '',
  `heading_font_face` varchar(100) NOT NULL default '',
  `heading_font_size` varchar(100) NOT NULL default '',
  `heading_font_style` varchar(100) NOT NULL default '',
  `heading_txt_color` varchar(100) NOT NULL default '',
  `heading_txt_hover_color` varchar(100) NOT NULL default '',
  `heading_link_decoration` varchar(100) NOT NULL default '',
  `heading_hover_decoration` varchar(100) NOT NULL default '',
  `heading_visited_decoration` varchar(100) NOT NULL default '',
  `heading_txt_align` varchar(100) NOT NULL default '',
  `heading_background` varchar(100) NOT NULL default '',
  `heading_padding_size_top` varchar(100) NOT NULL default '',
  `heading_padding_size_right` varchar(100) NOT NULL default '',
  `heading_padding_size_bottom` varchar(100) NOT NULL default '',
  `heading_padding_size_left` varchar(100) NOT NULL default '',
  `heading_line_height` varchar(100) NOT NULL default '',
  `heading_transform` varchar(100) NOT NULL default '',
  `heading_border_size_top` varchar(100) NOT NULL default '',
  `heading_border_size_right` varchar(100) NOT NULL default '',
  `heading_border_size_bottom` varchar(100) NOT NULL default '',
  `heading_border_size_left` varchar(100) NOT NULL default '',
  `heading_border_color` varchar(100) NOT NULL default '',
  `heading_border_style` varchar(100) NOT NULL default '',
  `title_show` varchar(100) NOT NULL default '',
  `title_font_face` varchar(100) NOT NULL default '',
  `title_font_size` varchar(100) NOT NULL default '',
  `title_font_style` varchar(100) NOT NULL default '',
  `title_txt_color` varchar(100) NOT NULL default '',
  `title_txt_hover_color` varchar(100) NOT NULL default '',
  `title_txt_length` varchar(100) NOT NULL default '',
  `title_link_decoration` varchar(100) NOT NULL default '',
  `title_hover_decoration` varchar(100) NOT NULL default '',
  `title_visited_decoration` varchar(100) NOT NULL default '',
  `title_txt_align` varchar(100) NOT NULL default '',
  `title_background` varchar(100) NOT NULL default '',
  `title_padding_size_top` varchar(100) NOT NULL default '',
  `title_padding_size_right` varchar(100) NOT NULL default '',
  `title_padding_size_bottom` varchar(100) NOT NULL default '',
  `title_padding_size_left` varchar(100) NOT NULL default '',
  `title_line_height` varchar(100) NOT NULL default '',
  `title_transform` varchar(100) NOT NULL default '',
  `title_bullets` varchar(100) NOT NULL default '',
  `title_bullets_color` varchar(100) NOT NULL default '',
  `bullets_type` varchar(100) NOT NULL default '',
  `bullets_font_size` varchar(100) NOT NULL default '',
  `title_border_size_top` varchar(100) NOT NULL default '',
  `title_border_size_right` varchar(100) NOT NULL default '',
  `title_border_size_bottom` varchar(100) NOT NULL default '',
  `title_border_size_left` varchar(100) NOT NULL default '',
  `title_border_color` varchar(100) NOT NULL default '',
  `title_border_style` varchar(100) NOT NULL default '',
  `intro_show` varchar(100) NOT NULL default '',
  `intro_mode` int(10) NOT NULL default '0',
  `intro_first` varchar(100) NOT NULL default '',
  `intro_font_face` varchar(100) NOT NULL default '',
  `intro_font_size` varchar(100) NOT NULL default '',
  `intro_font_style` varchar(100) NOT NULL default '',
  `intro_txt_color` varchar(100) NOT NULL default '',
  `intro_bg_color` varchar(100) NOT NULL default '',
  `intro_padding_size_top` varchar(100) NOT NULL default '',
  `intro_padding_size_right` varchar(100) NOT NULL default '',
  `intro_padding_size_bottom` varchar(100) NOT NULL default '',
  `intro_padding_size_left` varchar(100) NOT NULL default '',
  `intro_line_height` varchar(100) NOT NULL default '',
  `intro_txt_align` varchar(100) NOT NULL default '',
  `intro_txt_length` varchar(100) NOT NULL default '',
  `intro_transform` varchar(100) NOT NULL default '',
  `intro_border_style` varchar(100) NOT NULL default '',
  `intro_border_color` varchar(100) NOT NULL default '',
  `intro_border_size_left` varchar(100) NOT NULL default '',
  `intro_border_size_bottom` varchar(100) NOT NULL default '',
  `intro_border_size_right` varchar(100) NOT NULL default '',
  `intro_border_size_top` varchar(100) NOT NULL default '',
  `image_thumbnails` varchar(100) NOT NULL default '',
  `image_first` varchar(100) NOT NULL default '',
  `image_border` varchar(100) NOT NULL default '',
  `image_border_size` varchar(100) NOT NULL default '',
  `image_border_color` varchar(100) NOT NULL default '',
  `image_resize` varchar(100) NOT NULL default '',
  `image_thumbnails_size` varchar(100) NOT NULL default '',
  `image_margin` varchar(100) NOT NULL default '',
  `image_wrap` varchar(100) NOT NULL default '',
  `image_alignment` varchar(100) NOT NULL default '',
  `zone_width` varchar(100) NOT NULL default '',
  `zone_height` varchar(100) NOT NULL default '',
  `zone_show` varchar(100) NOT NULL default '',
  `zone_font_face` varchar(100) NOT NULL default '',
  `zone_font_size` varchar(100) NOT NULL default '',
  `zone_font_style` varchar(100) NOT NULL default '',
  `zone_txt_color` varchar(100) NOT NULL default '',
  `zone_txt_align` varchar(100) NOT NULL default '',
  `zone_background` varchar(100) NOT NULL default '',
  `zone_padding_size_top` varchar(100) NOT NULL default '',
  `zone_padding_size_right` varchar(100) NOT NULL default '',
  `zone_padding_size_bottom` varchar(100) NOT NULL default '',
  `zone_padding_size_left` varchar(100) NOT NULL default '',
  `zone_line_height` varchar(100) NOT NULL default '',
  `zone_transform` varchar(100) NOT NULL default '',
  `zone_border_style` varchar(100) NOT NULL default '',
  `zone_border_color` varchar(100) NOT NULL default '',
  `zone_border_size_left` varchar(100) NOT NULL default '',
  `zone_border_size_bottom` varchar(100) NOT NULL default '',
  `zone_border_size_right` varchar(100) NOT NULL default '',
  `zone_border_size_top` varchar(100) NOT NULL default '',
  `more_font_face` varchar(100) NOT NULL default '',
  `more_font_size` varchar(100) NOT NULL default '',
  `more_font_style` varchar(100) NOT NULL default '',
  `more_txt_color` varchar(100) NOT NULL default '',
  `more_txt_hover_color` varchar(100) NOT NULL default '',
  `more_txt_length` varchar(100) NOT NULL default '',
  `more_link_decoration` varchar(100) NOT NULL default '',
  `more_hover_decoration` varchar(100) NOT NULL default '',
  `more_visited_decoration` varchar(100) NOT NULL default '',
  `more_txt_align` varchar(100) NOT NULL default '',
  `more_background` varchar(100) NOT NULL default '',
  `more_padding_size_top` varchar(100) NOT NULL default '',
  `more_padding_size_right` varchar(100) NOT NULL default '',
  `more_padding_size_bottom` varchar(100) NOT NULL default '',
  `more_padding_size_left` varchar(100) NOT NULL default '',
  `more_line_height` varchar(100) NOT NULL default '',
  `more_transform` varchar(100) NOT NULL default '',
  `more_border_size_top` varchar(100) NOT NULL default '',
  `more_border_size_right` varchar(100) NOT NULL default '',
  `more_border_size_bottom` varchar(100) NOT NULL default '',
  `more_border_size_left` varchar(100) NOT NULL default '',
  `more_border_color` varchar(100) NOT NULL default '',
  `more_border_style` varchar(100) NOT NULL default '',
  `name_line_height` varchar(100) NOT NULL default '',
  `name_padding_size_left` varchar(100) NOT NULL default '',
  `name_padding_size_bottom` varchar(100) NOT NULL default '',
  `name_padding_size_right` varchar(100) NOT NULL default '',
  `name_padding_size_top` varchar(100) NOT NULL default '',
  `name_border_style` varchar(100) NOT NULL default '',
  `name_border_color` varchar(100) NOT NULL default '',
  `name_border_size_left` varchar(100) NOT NULL default '',
  `name_border_size_bottom` varchar(100) NOT NULL default '',
  `name_border_size_right` varchar(100) NOT NULL default '',
  `name_border_size_top` varchar(100) NOT NULL default '',
  `name_background` varchar(100) NOT NULL default '',
  `name_transform` varchar(100) NOT NULL default '',
  `name_txt_align` varchar(100) NOT NULL default '',
  `name_txt_color` varchar(100) NOT NULL default '',
  `name_font_style` varchar(100) NOT NULL default '',
  `name_font_size` varchar(100) NOT NULL default '',
  `name_font_face` varchar(100) NOT NULL default '',
  `name_show` varchar(100) NOT NULL default '',
  `date_show` tinyint(4) NOT NULL default '0',
  `date_config_time_format` tinyint(4) NOT NULL default '0',
  `date_font_face` varchar(100) NOT NULL default '',
  `date_font_size` varchar(100) NOT NULL default '',
  `date_font_style` varchar(100) NOT NULL default '',
  `date_txt_color` varchar(100) NOT NULL default '',
  `date_txt_align` varchar(100) NOT NULL default '',
  `date_transform` varchar(100) NOT NULL default '',
  `date_background` varchar(100) NOT NULL default '',
  `date_border_size_top` varchar(100) NOT NULL default '',
  `date_border_size_right` varchar(100) NOT NULL default '',
  `date_border_size_bottom` varchar(100) NOT NULL default '',
  `date_border_size_left` varchar(100) NOT NULL default '',
  `date_border_color` varchar(100) NOT NULL default '',
  `date_border_style` varchar(100) NOT NULL default '',
  `date_padding_size_top` varchar(100) NOT NULL default '',
  `date_padding_size_right` varchar(100) NOT NULL default '',
  `date_padding_size_bottom` varchar(100) NOT NULL default '',
  `date_padding_size_left` varchar(100) NOT NULL default '',
  `date_line_height` varchar(100) NOT NULL default '',
  `module_position` varchar(100) NOT NULL default '',
  `module_display` int(10) NOT NULL default '0',
  `use_class_heading` varchar(100) NOT NULL default '',
  `use_class_title` varchar(100) NOT NULL default '',
  `use_class_intro` varchar(100) NOT NULL default '',
  `use_class_image` varchar(100) NOT NULL default '',
  `use_class_zone` varchar(100) NOT NULL default '',
  `use_class_read` varchar(100) NOT NULL default '',
  `use_class_name` varchar(100) NOT NULL default '',
  `use_class_date` varchar(100) NOT NULL default '',
  `categories_page_show` int(4) NOT NULL default '0',
  `section_page_show` int(4) NOT NULL default '0',
  `zone_id` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

-- 
-- Volcar la base de datos para la tabla `jos_ijoomla_news_zone_settings`
-- 

INSERT INTO `jos_ijoomla_news_zone_settings` (`id`, `general_width`, `general_height`, `general_columns`, `general_rows`, `general_border`, `general_border_size`, `general_border_color`, `general_padding_size_top`, `general_padding_size_right`, `general_padding_size_bottom`, `general_padding_size_left`, `general_vert_image`, `general_horz_image`, `general_background_color`, `general_orientation`, `general_ordering`, `general_read_more`, `general_read_more_first`, `general_margin`, `heading_show`, `heading_font_face`, `heading_font_size`, `heading_font_style`, `heading_txt_color`, `heading_txt_hover_color`, `heading_link_decoration`, `heading_hover_decoration`, `heading_visited_decoration`, `heading_txt_align`, `heading_background`, `heading_padding_size_top`, `heading_padding_size_right`, `heading_padding_size_bottom`, `heading_padding_size_left`, `heading_line_height`, `heading_transform`, `heading_border_size_top`, `heading_border_size_right`, `heading_border_size_bottom`, `heading_border_size_left`, `heading_border_color`, `heading_border_style`, `title_show`, `title_font_face`, `title_font_size`, `title_font_style`, `title_txt_color`, `title_txt_hover_color`, `title_txt_length`, `title_link_decoration`, `title_hover_decoration`, `title_visited_decoration`, `title_txt_align`, `title_background`, `title_padding_size_top`, `title_padding_size_right`, `title_padding_size_bottom`, `title_padding_size_left`, `title_line_height`, `title_transform`, `title_bullets`, `title_bullets_color`, `bullets_type`, `bullets_font_size`, `title_border_size_top`, `title_border_size_right`, `title_border_size_bottom`, `title_border_size_left`, `title_border_color`, `title_border_style`, `intro_show`, `intro_mode`, `intro_first`, `intro_font_face`, `intro_font_size`, `intro_font_style`, `intro_txt_color`, `intro_bg_color`, `intro_padding_size_top`, `intro_padding_size_right`, `intro_padding_size_bottom`, `intro_padding_size_left`, `intro_line_height`, `intro_txt_align`, `intro_txt_length`, `intro_transform`, `intro_border_style`, `intro_border_color`, `intro_border_size_left`, `intro_border_size_bottom`, `intro_border_size_right`, `intro_border_size_top`, `image_thumbnails`, `image_first`, `image_border`, `image_border_size`, `image_border_color`, `image_resize`, `image_thumbnails_size`, `image_margin`, `image_wrap`, `image_alignment`, `zone_width`, `zone_height`, `zone_show`, `zone_font_face`, `zone_font_size`, `zone_font_style`, `zone_txt_color`, `zone_txt_align`, `zone_background`, `zone_padding_size_top`, `zone_padding_size_right`, `zone_padding_size_bottom`, `zone_padding_size_left`, `zone_line_height`, `zone_transform`, `zone_border_style`, `zone_border_color`, `zone_border_size_left`, `zone_border_size_bottom`, `zone_border_size_right`, `zone_border_size_top`, `more_font_face`, `more_font_size`, `more_font_style`, `more_txt_color`, `more_txt_hover_color`, `more_txt_length`, `more_link_decoration`, `more_hover_decoration`, `more_visited_decoration`, `more_txt_align`, `more_background`, `more_padding_size_top`, `more_padding_size_right`, `more_padding_size_bottom`, `more_padding_size_left`, `more_line_height`, `more_transform`, `more_border_size_top`, `more_border_size_right`, `more_border_size_bottom`, `more_border_size_left`, `more_border_color`, `more_border_style`, `name_line_height`, `name_padding_size_left`, `name_padding_size_bottom`, `name_padding_size_right`, `name_padding_size_top`, `name_border_style`, `name_border_color`, `name_border_size_left`, `name_border_size_bottom`, `name_border_size_right`, `name_border_size_top`, `name_background`, `name_transform`, `name_txt_align`, `name_txt_color`, `name_font_style`, `name_font_size`, `name_font_face`, `name_show`, `date_show`, `date_config_time_format`, `date_font_face`, `date_font_size`, `date_font_style`, `date_txt_color`, `date_txt_align`, `date_transform`, `date_background`, `date_border_size_top`, `date_border_size_right`, `date_border_size_bottom`, `date_border_size_left`, `date_border_color`, `date_border_style`, `date_padding_size_top`, `date_padding_size_right`, `date_padding_size_bottom`, `date_padding_size_left`, `date_line_height`, `module_position`, `module_display`, `use_class_heading`, `use_class_title`, `use_class_intro`, `use_class_image`, `use_class_zone`, `use_class_read`, `use_class_name`, `use_class_date`, `categories_page_show`, `section_page_show`, `zone_id`) VALUES (1, '290', '', '1', '1', '1', '1', '#CCCCCC', '2', '2', '2', '2', '0', '0', '#F7F7F7', '1', '', '1', '1', '0', '0', 'Arial', '16', 'bold italic', '#990000', '', '', '', '', 'Center', '', '1', '1', '1', '1', '18', 'lowercase', '2', '2', '2', '2', '#FFFFFF', 'solid', '1', 'Arial', '21', 'bold', '#01529E', '#FF6501', '', 'none', 'underline', 'none', 'Left', '', '5', '5', '5', '5', '30', 'none', '0', '#000000', 'upper-roman', '20', '0', '2', '2', '0', '#990000', 'none', '1', 0, '1', 'Arial', '12', 'normal', '#000000', '', '5', '5', '0', '5', '18', 'Left', '250', 'none', 'dashed', '', '0', '0', '0', '0', '1', '1', '1', '1', '#CC3333', '0', '250', '0', '1', 'Center', '290', '20', '0', 'Arial', '14', 'bold', '#2F4571', 'Left', '', '0', '0', '0', '0', '18', 'uppercase', 'solid', '#2F4571', '0', '0', '0', '2', 'Tahoma', '13', 'bold', '#01529E', '#FF6501', '', 'underline', 'none', 'none', 'Right', '', '0', '10', '0', '0', '18', 'uppercase', '1', '1', '1', '1', '#FF0033', 'none', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', 0, 0, '0');
INSERT INTO `jos_ijoomla_news_zone_settings` (`id`, `general_width`, `general_height`, `general_columns`, `general_rows`, `general_border`, `general_border_size`, `general_border_color`, `general_padding_size_top`, `general_padding_size_right`, `general_padding_size_bottom`, `general_padding_size_left`, `general_vert_image`, `general_horz_image`, `general_background_color`, `general_orientation`, `general_ordering`, `general_read_more`, `general_read_more_first`, `general_margin`, `heading_show`, `heading_font_face`, `heading_font_size`, `heading_font_style`, `heading_txt_color`, `heading_txt_hover_color`, `heading_link_decoration`, `heading_hover_decoration`, `heading_visited_decoration`, `heading_txt_align`, `heading_background`, `heading_padding_size_top`, `heading_padding_size_right`, `heading_padding_size_bottom`, `heading_padding_size_left`, `heading_line_height`, `heading_transform`, `heading_border_size_top`, `heading_border_size_right`, `heading_border_size_bottom`, `heading_border_size_left`, `heading_border_color`, `heading_border_style`, `title_show`, `title_font_face`, `title_font_size`, `title_font_style`, `title_txt_color`, `title_txt_hover_color`, `title_txt_length`, `title_link_decoration`, `title_hover_decoration`, `title_visited_decoration`, `title_txt_align`, `title_background`, `title_padding_size_top`, `title_padding_size_right`, `title_padding_size_bottom`, `title_padding_size_left`, `title_line_height`, `title_transform`, `title_bullets`, `title_bullets_color`, `bullets_type`, `bullets_font_size`, `title_border_size_top`, `title_border_size_right`, `title_border_size_bottom`, `title_border_size_left`, `title_border_color`, `title_border_style`, `intro_show`, `intro_mode`, `intro_first`, `intro_font_face`, `intro_font_size`, `intro_font_style`, `intro_txt_color`, `intro_bg_color`, `intro_padding_size_top`, `intro_padding_size_right`, `intro_padding_size_bottom`, `intro_padding_size_left`, `intro_line_height`, `intro_txt_align`, `intro_txt_length`, `intro_transform`, `intro_border_style`, `intro_border_color`, `intro_border_size_left`, `intro_border_size_bottom`, `intro_border_size_right`, `intro_border_size_top`, `image_thumbnails`, `image_first`, `image_border`, `image_border_size`, `image_border_color`, `image_resize`, `image_thumbnails_size`, `image_margin`, `image_wrap`, `image_alignment`, `zone_width`, `zone_height`, `zone_show`, `zone_font_face`, `zone_font_size`, `zone_font_style`, `zone_txt_color`, `zone_txt_align`, `zone_background`, `zone_padding_size_top`, `zone_padding_size_right`, `zone_padding_size_bottom`, `zone_padding_size_left`, `zone_line_height`, `zone_transform`, `zone_border_style`, `zone_border_color`, `zone_border_size_left`, `zone_border_size_bottom`, `zone_border_size_right`, `zone_border_size_top`, `more_font_face`, `more_font_size`, `more_font_style`, `more_txt_color`, `more_txt_hover_color`, `more_txt_length`, `more_link_decoration`, `more_hover_decoration`, `more_visited_decoration`, `more_txt_align`, `more_background`, `more_padding_size_top`, `more_padding_size_right`, `more_padding_size_bottom`, `more_padding_size_left`, `more_line_height`, `more_transform`, `more_border_size_top`, `more_border_size_right`, `more_border_size_bottom`, `more_border_size_left`, `more_border_color`, `more_border_style`, `name_line_height`, `name_padding_size_left`, `name_padding_size_bottom`, `name_padding_size_right`, `name_padding_size_top`, `name_border_style`, `name_border_color`, `name_border_size_left`, `name_border_size_bottom`, `name_border_size_right`, `name_border_size_top`, `name_background`, `name_transform`, `name_txt_align`, `name_txt_color`, `name_font_style`, `name_font_size`, `name_font_face`, `name_show`, `date_show`, `date_config_time_format`, `date_font_face`, `date_font_size`, `date_font_style`, `date_txt_color`, `date_txt_align`, `date_transform`, `date_background`, `date_border_size_top`, `date_border_size_right`, `date_border_size_bottom`, `date_border_size_left`, `date_border_color`, `date_border_style`, `date_padding_size_top`, `date_padding_size_right`, `date_padding_size_bottom`, `date_padding_size_left`, `date_line_height`, `module_position`, `module_display`, `use_class_heading`, `use_class_title`, `use_class_intro`, `use_class_image`, `use_class_zone`, `use_class_read`, `use_class_name`, `use_class_date`, `categories_page_show`, `section_page_show`, `zone_id`) VALUES (3, '190', '', '3', '1', '0', '1', '', '0', '0', '0', '0', '0', '0', '', '0', '', '0', '0', '5', '1', 'Arial', '14', 'bold', '#CC0000', '', '', '', '', 'Left', '', '0', '0', '0', '2', '18', 'uppercase', '0', '0', '0', '0', '', 'dashed', '1', 'Arial', '12', 'normal', '#01529E', '#FF6501', '', 'none', 'underline', 'none', 'Left', '', '0', '0', '0', '0', '18', 'none', '0', '#FF6501', 'square', '10', '0', '0', '0', '0', '', 'dashed', '0', 0, '1', 'Arial', '12', 'normal', '#666666', '', '0', '0', '0', '0', '18', 'Left', '80', 'none', 'dashed', '', '0', '0', '0', '0', '1', '1', '1', '1', '#000000', '1', '80', '0', '0', 'Right', '590', '20', '0', 'Arial', '14', 'bold', '#01529E', 'Left', '', '11', '0', '0', '0', '18', 'none', 'dotted', '#01529E', '0', '1', '0', '0', 'Arial', '12', 'bold', '#660033', '#cc0000', '', 'underline', 'underline', 'underline', 'Right', '', '0', '0', '0', '0', '18', 'none', '0', '0', '0', '0', '', 'dashed', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', 0, 0, '1');
INSERT INTO `jos_ijoomla_news_zone_settings` (`id`, `general_width`, `general_height`, `general_columns`, `general_rows`, `general_border`, `general_border_size`, `general_border_color`, `general_padding_size_top`, `general_padding_size_right`, `general_padding_size_bottom`, `general_padding_size_left`, `general_vert_image`, `general_horz_image`, `general_background_color`, `general_orientation`, `general_ordering`, `general_read_more`, `general_read_more_first`, `general_margin`, `heading_show`, `heading_font_face`, `heading_font_size`, `heading_font_style`, `heading_txt_color`, `heading_txt_hover_color`, `heading_link_decoration`, `heading_hover_decoration`, `heading_visited_decoration`, `heading_txt_align`, `heading_background`, `heading_padding_size_top`, `heading_padding_size_right`, `heading_padding_size_bottom`, `heading_padding_size_left`, `heading_line_height`, `heading_transform`, `heading_border_size_top`, `heading_border_size_right`, `heading_border_size_bottom`, `heading_border_size_left`, `heading_border_color`, `heading_border_style`, `title_show`, `title_font_face`, `title_font_size`, `title_font_style`, `title_txt_color`, `title_txt_hover_color`, `title_txt_length`, `title_link_decoration`, `title_hover_decoration`, `title_visited_decoration`, `title_txt_align`, `title_background`, `title_padding_size_top`, `title_padding_size_right`, `title_padding_size_bottom`, `title_padding_size_left`, `title_line_height`, `title_transform`, `title_bullets`, `title_bullets_color`, `bullets_type`, `bullets_font_size`, `title_border_size_top`, `title_border_size_right`, `title_border_size_bottom`, `title_border_size_left`, `title_border_color`, `title_border_style`, `intro_show`, `intro_mode`, `intro_first`, `intro_font_face`, `intro_font_size`, `intro_font_style`, `intro_txt_color`, `intro_bg_color`, `intro_padding_size_top`, `intro_padding_size_right`, `intro_padding_size_bottom`, `intro_padding_size_left`, `intro_line_height`, `intro_txt_align`, `intro_txt_length`, `intro_transform`, `intro_border_style`, `intro_border_color`, `intro_border_size_left`, `intro_border_size_bottom`, `intro_border_size_right`, `intro_border_size_top`, `image_thumbnails`, `image_first`, `image_border`, `image_border_size`, `image_border_color`, `image_resize`, `image_thumbnails_size`, `image_margin`, `image_wrap`, `image_alignment`, `zone_width`, `zone_height`, `zone_show`, `zone_font_face`, `zone_font_size`, `zone_font_style`, `zone_txt_color`, `zone_txt_align`, `zone_background`, `zone_padding_size_top`, `zone_padding_size_right`, `zone_padding_size_bottom`, `zone_padding_size_left`, `zone_line_height`, `zone_transform`, `zone_border_style`, `zone_border_color`, `zone_border_size_left`, `zone_border_size_bottom`, `zone_border_size_right`, `zone_border_size_top`, `more_font_face`, `more_font_size`, `more_font_style`, `more_txt_color`, `more_txt_hover_color`, `more_txt_length`, `more_link_decoration`, `more_hover_decoration`, `more_visited_decoration`, `more_txt_align`, `more_background`, `more_padding_size_top`, `more_padding_size_right`, `more_padding_size_bottom`, `more_padding_size_left`, `more_line_height`, `more_transform`, `more_border_size_top`, `more_border_size_right`, `more_border_size_bottom`, `more_border_size_left`, `more_border_color`, `more_border_style`, `name_line_height`, `name_padding_size_left`, `name_padding_size_bottom`, `name_padding_size_right`, `name_padding_size_top`, `name_border_style`, `name_border_color`, `name_border_size_left`, `name_border_size_bottom`, `name_border_size_right`, `name_border_size_top`, `name_background`, `name_transform`, `name_txt_align`, `name_txt_color`, `name_font_style`, `name_font_size`, `name_font_face`, `name_show`, `date_show`, `date_config_time_format`, `date_font_face`, `date_font_size`, `date_font_style`, `date_txt_color`, `date_txt_align`, `date_transform`, `date_background`, `date_border_size_top`, `date_border_size_right`, `date_border_size_bottom`, `date_border_size_left`, `date_border_color`, `date_border_style`, `date_padding_size_top`, `date_padding_size_right`, `date_padding_size_bottom`, `date_padding_size_left`, `date_line_height`, `module_position`, `module_display`, `use_class_heading`, `use_class_title`, `use_class_intro`, `use_class_image`, `use_class_zone`, `use_class_read`, `use_class_name`, `use_class_date`, `categories_page_show`, `section_page_show`, `zone_id`) VALUES (4, '300', '', '1', '8', '0', '1', '', '0', '0', '0', '0', '1', '1', '', '0', '', '0', '1', '3', '0', 'Arial', '12', 'bold', '#CC0000', '', '', '', '', 'Right', '#f7f7f7', '0', '0', '0', '0', '18', 'uppercase', '0', '0', '0', '0', '', 'dashed', '1', 'Arial', '12', 'bold', '#01529E', '#FF6501', '', 'none', 'underline', 'none', 'Left', '', '0', '0', '0', '0', '16', 'capitalize', '0', '#FF6501', 'square', '11', '0', '0', '0', '0', '', 'dashed', '1', 0, '1', 'Arial', '11', 'normal', '#000000', '', '0', '0', '0', '0', '18', 'Left', '75', 'none', 'dashed', '', '0', '0', '0', '0', '1', '1', '1', '1', '#000000', '0', '40', '2', '0', 'Right', '300', '20', '1', 'Arial', '14', 'bold', '#FF6501', 'Left', '', '2', '2', '2', '2', '18', 'none', 'solid', '#E8F4FF', '0', '3', '0', '0', 'Arial', '12', 'normal', '#660033', '#CC3333', '', 'underline', 'underline', 'underline', 'Right', '#CCFF66', '0', '0', '0', '0', '18', 'uppercase', '0', '0', '0', '0', '', 'dashed', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', 0, 0, '2');
INSERT INTO `jos_ijoomla_news_zone_settings` (`id`, `general_width`, `general_height`, `general_columns`, `general_rows`, `general_border`, `general_border_size`, `general_border_color`, `general_padding_size_top`, `general_padding_size_right`, `general_padding_size_bottom`, `general_padding_size_left`, `general_vert_image`, `general_horz_image`, `general_background_color`, `general_orientation`, `general_ordering`, `general_read_more`, `general_read_more_first`, `general_margin`, `heading_show`, `heading_font_face`, `heading_font_size`, `heading_font_style`, `heading_txt_color`, `heading_txt_hover_color`, `heading_link_decoration`, `heading_hover_decoration`, `heading_visited_decoration`, `heading_txt_align`, `heading_background`, `heading_padding_size_top`, `heading_padding_size_right`, `heading_padding_size_bottom`, `heading_padding_size_left`, `heading_line_height`, `heading_transform`, `heading_border_size_top`, `heading_border_size_right`, `heading_border_size_bottom`, `heading_border_size_left`, `heading_border_color`, `heading_border_style`, `title_show`, `title_font_face`, `title_font_size`, `title_font_style`, `title_txt_color`, `title_txt_hover_color`, `title_txt_length`, `title_link_decoration`, `title_hover_decoration`, `title_visited_decoration`, `title_txt_align`, `title_background`, `title_padding_size_top`, `title_padding_size_right`, `title_padding_size_bottom`, `title_padding_size_left`, `title_line_height`, `title_transform`, `title_bullets`, `title_bullets_color`, `bullets_type`, `bullets_font_size`, `title_border_size_top`, `title_border_size_right`, `title_border_size_bottom`, `title_border_size_left`, `title_border_color`, `title_border_style`, `intro_show`, `intro_mode`, `intro_first`, `intro_font_face`, `intro_font_size`, `intro_font_style`, `intro_txt_color`, `intro_bg_color`, `intro_padding_size_top`, `intro_padding_size_right`, `intro_padding_size_bottom`, `intro_padding_size_left`, `intro_line_height`, `intro_txt_align`, `intro_txt_length`, `intro_transform`, `intro_border_style`, `intro_border_color`, `intro_border_size_left`, `intro_border_size_bottom`, `intro_border_size_right`, `intro_border_size_top`, `image_thumbnails`, `image_first`, `image_border`, `image_border_size`, `image_border_color`, `image_resize`, `image_thumbnails_size`, `image_margin`, `image_wrap`, `image_alignment`, `zone_width`, `zone_height`, `zone_show`, `zone_font_face`, `zone_font_size`, `zone_font_style`, `zone_txt_color`, `zone_txt_align`, `zone_background`, `zone_padding_size_top`, `zone_padding_size_right`, `zone_padding_size_bottom`, `zone_padding_size_left`, `zone_line_height`, `zone_transform`, `zone_border_style`, `zone_border_color`, `zone_border_size_left`, `zone_border_size_bottom`, `zone_border_size_right`, `zone_border_size_top`, `more_font_face`, `more_font_size`, `more_font_style`, `more_txt_color`, `more_txt_hover_color`, `more_txt_length`, `more_link_decoration`, `more_hover_decoration`, `more_visited_decoration`, `more_txt_align`, `more_background`, `more_padding_size_top`, `more_padding_size_right`, `more_padding_size_bottom`, `more_padding_size_left`, `more_line_height`, `more_transform`, `more_border_size_top`, `more_border_size_right`, `more_border_size_bottom`, `more_border_size_left`, `more_border_color`, `more_border_style`, `name_line_height`, `name_padding_size_left`, `name_padding_size_bottom`, `name_padding_size_right`, `name_padding_size_top`, `name_border_style`, `name_border_color`, `name_border_size_left`, `name_border_size_bottom`, `name_border_size_right`, `name_border_size_top`, `name_background`, `name_transform`, `name_txt_align`, `name_txt_color`, `name_font_style`, `name_font_size`, `name_font_face`, `name_show`, `date_show`, `date_config_time_format`, `date_font_face`, `date_font_size`, `date_font_style`, `date_txt_color`, `date_txt_align`, `date_transform`, `date_background`, `date_border_size_top`, `date_border_size_right`, `date_border_size_bottom`, `date_border_size_left`, `date_border_color`, `date_border_style`, `date_padding_size_top`, `date_padding_size_right`, `date_padding_size_bottom`, `date_padding_size_left`, `date_line_height`, `module_position`, `module_display`, `use_class_heading`, `use_class_title`, `use_class_intro`, `use_class_image`, `use_class_zone`, `use_class_read`, `use_class_name`, `use_class_date`, `categories_page_show`, `section_page_show`, `zone_id`) VALUES (5, '290', '0', '2', '3', '0', '0', '', '0', '0', '0', '0', '1', '0', '', '0', '', '0', '2', '5', '0', 'Arial', '14', 'bold', '#FF6501', '#01529E', 'none', 'none', 'none', 'Left', '', '0', '0', '0', '0', '18', 'none', '0', '0', '3', '0', '#E8F4FF', 'solid', '1', 'Arial', '12', 'normal', '#01529E', '#FF6501', '50', 'none', 'underline', 'none', 'Left', '', '0', '0', '0', '0', '18', 'none', '0', '#000000', 'circle', '10', '0', '0', '0', '0', '', 'dashed', '1', 0, '2', 'Arial', '11', 'normal', '#000000', '', '0', '0', '0', '0', '18', 'Left', '100', 'none', 'dashed', '', '0', '0', '0', '0', '1', '2', '1', '1', '#666666', '0', '40', '5', '1', 'Left', '530', '', '0', 'Arial', '14', 'bold', '#84BB48', 'Center', '#f7f7f7', '0', '0', '0', '0', '18', 'none', 'dotted', '#84BB48', '0', '1', '0', '0', 'Arial', '10', 'normal', '#000000', '#CC0000', '', 'underline', 'none', 'underline', 'Left', '#CACACA', '0', '0', '0', '0', '18', 'uppercase', '0', '0', '0', '0', '', 'dashed', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', 0, 0, '3');
INSERT INTO `jos_ijoomla_news_zone_settings` (`id`, `general_width`, `general_height`, `general_columns`, `general_rows`, `general_border`, `general_border_size`, `general_border_color`, `general_padding_size_top`, `general_padding_size_right`, `general_padding_size_bottom`, `general_padding_size_left`, `general_vert_image`, `general_horz_image`, `general_background_color`, `general_orientation`, `general_ordering`, `general_read_more`, `general_read_more_first`, `general_margin`, `heading_show`, `heading_font_face`, `heading_font_size`, `heading_font_style`, `heading_txt_color`, `heading_txt_hover_color`, `heading_link_decoration`, `heading_hover_decoration`, `heading_visited_decoration`, `heading_txt_align`, `heading_background`, `heading_padding_size_top`, `heading_padding_size_right`, `heading_padding_size_bottom`, `heading_padding_size_left`, `heading_line_height`, `heading_transform`, `heading_border_size_top`, `heading_border_size_right`, `heading_border_size_bottom`, `heading_border_size_left`, `heading_border_color`, `heading_border_style`, `title_show`, `title_font_face`, `title_font_size`, `title_font_style`, `title_txt_color`, `title_txt_hover_color`, `title_txt_length`, `title_link_decoration`, `title_hover_decoration`, `title_visited_decoration`, `title_txt_align`, `title_background`, `title_padding_size_top`, `title_padding_size_right`, `title_padding_size_bottom`, `title_padding_size_left`, `title_line_height`, `title_transform`, `title_bullets`, `title_bullets_color`, `bullets_type`, `bullets_font_size`, `title_border_size_top`, `title_border_size_right`, `title_border_size_bottom`, `title_border_size_left`, `title_border_color`, `title_border_style`, `intro_show`, `intro_mode`, `intro_first`, `intro_font_face`, `intro_font_size`, `intro_font_style`, `intro_txt_color`, `intro_bg_color`, `intro_padding_size_top`, `intro_padding_size_right`, `intro_padding_size_bottom`, `intro_padding_size_left`, `intro_line_height`, `intro_txt_align`, `intro_txt_length`, `intro_transform`, `intro_border_style`, `intro_border_color`, `intro_border_size_left`, `intro_border_size_bottom`, `intro_border_size_right`, `intro_border_size_top`, `image_thumbnails`, `image_first`, `image_border`, `image_border_size`, `image_border_color`, `image_resize`, `image_thumbnails_size`, `image_margin`, `image_wrap`, `image_alignment`, `zone_width`, `zone_height`, `zone_show`, `zone_font_face`, `zone_font_size`, `zone_font_style`, `zone_txt_color`, `zone_txt_align`, `zone_background`, `zone_padding_size_top`, `zone_padding_size_right`, `zone_padding_size_bottom`, `zone_padding_size_left`, `zone_line_height`, `zone_transform`, `zone_border_style`, `zone_border_color`, `zone_border_size_left`, `zone_border_size_bottom`, `zone_border_size_right`, `zone_border_size_top`, `more_font_face`, `more_font_size`, `more_font_style`, `more_txt_color`, `more_txt_hover_color`, `more_txt_length`, `more_link_decoration`, `more_hover_decoration`, `more_visited_decoration`, `more_txt_align`, `more_background`, `more_padding_size_top`, `more_padding_size_right`, `more_padding_size_bottom`, `more_padding_size_left`, `more_line_height`, `more_transform`, `more_border_size_top`, `more_border_size_right`, `more_border_size_bottom`, `more_border_size_left`, `more_border_color`, `more_border_style`, `name_line_height`, `name_padding_size_left`, `name_padding_size_bottom`, `name_padding_size_right`, `name_padding_size_top`, `name_border_style`, `name_border_color`, `name_border_size_left`, `name_border_size_bottom`, `name_border_size_right`, `name_border_size_top`, `name_background`, `name_transform`, `name_txt_align`, `name_txt_color`, `name_font_style`, `name_font_size`, `name_font_face`, `name_show`, `date_show`, `date_config_time_format`, `date_font_face`, `date_font_size`, `date_font_style`, `date_txt_color`, `date_txt_align`, `date_transform`, `date_background`, `date_border_size_top`, `date_border_size_right`, `date_border_size_bottom`, `date_border_size_left`, `date_border_color`, `date_border_style`, `date_padding_size_top`, `date_padding_size_right`, `date_padding_size_bottom`, `date_padding_size_left`, `date_line_height`, `module_position`, `module_display`, `use_class_heading`, `use_class_title`, `use_class_intro`, `use_class_image`, `use_class_zone`, `use_class_read`, `use_class_name`, `use_class_date`, `categories_page_show`, `section_page_show`, `zone_id`) VALUES (6, '250', '', '2', '3', '0', '0', '', '0', '0', '0', '0', '0', '1', '', '0', '', '0', '2', '0', '1', 'Arial', '14', 'bold', '#6A9738', '#6A9738', 'none', 'none', 'underline', 'Left', '', '0', '0', '0', '0', '14', 'none', '0', '0', '1', '0', '#6A9738', 'dotted', '1', 'Arial', '12', 'bold', '#FF6501', '#FF6501', '50', 'underline', 'none', 'none', 'Left', '', '0', '0', '0', '0', '12', 'none', '1', '#000000', 'square', '11', '0', '0', '0', '0', '', 'dashed', '1', 0, '1', 'Arial', '11', 'normal', '#666666', '', '0', '0', '0', '0', '18', 'Left', '50', 'none', 'dashed', '', '0', '0', '0', '0', '0', '1', '1', '1', '#666666', '0', '40', '', '0', 'Left', '500', '', '1', 'Arial', '14', 'bold', '#6A9738', 'Center', '#f7f7f7', '5', '5', '5', '0', '14', 'none', 'dotted', '#6A9738', '0', '1', '0', '0', 'Arial', '12', 'normal', '', '', '', 'none', 'none', 'none', 'Left', '', '0', '0', '0', '0', '18', 'none', '0', '0', '0', '0', '', 'dashed', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', 0, 0, '4');
INSERT INTO `jos_ijoomla_news_zone_settings` (`id`, `general_width`, `general_height`, `general_columns`, `general_rows`, `general_border`, `general_border_size`, `general_border_color`, `general_padding_size_top`, `general_padding_size_right`, `general_padding_size_bottom`, `general_padding_size_left`, `general_vert_image`, `general_horz_image`, `general_background_color`, `general_orientation`, `general_ordering`, `general_read_more`, `general_read_more_first`, `general_margin`, `heading_show`, `heading_font_face`, `heading_font_size`, `heading_font_style`, `heading_txt_color`, `heading_txt_hover_color`, `heading_link_decoration`, `heading_hover_decoration`, `heading_visited_decoration`, `heading_txt_align`, `heading_background`, `heading_padding_size_top`, `heading_padding_size_right`, `heading_padding_size_bottom`, `heading_padding_size_left`, `heading_line_height`, `heading_transform`, `heading_border_size_top`, `heading_border_size_right`, `heading_border_size_bottom`, `heading_border_size_left`, `heading_border_color`, `heading_border_style`, `title_show`, `title_font_face`, `title_font_size`, `title_font_style`, `title_txt_color`, `title_txt_hover_color`, `title_txt_length`, `title_link_decoration`, `title_hover_decoration`, `title_visited_decoration`, `title_txt_align`, `title_background`, `title_padding_size_top`, `title_padding_size_right`, `title_padding_size_bottom`, `title_padding_size_left`, `title_line_height`, `title_transform`, `title_bullets`, `title_bullets_color`, `bullets_type`, `bullets_font_size`, `title_border_size_top`, `title_border_size_right`, `title_border_size_bottom`, `title_border_size_left`, `title_border_color`, `title_border_style`, `intro_show`, `intro_mode`, `intro_first`, `intro_font_face`, `intro_font_size`, `intro_font_style`, `intro_txt_color`, `intro_bg_color`, `intro_padding_size_top`, `intro_padding_size_right`, `intro_padding_size_bottom`, `intro_padding_size_left`, `intro_line_height`, `intro_txt_align`, `intro_txt_length`, `intro_transform`, `intro_border_style`, `intro_border_color`, `intro_border_size_left`, `intro_border_size_bottom`, `intro_border_size_right`, `intro_border_size_top`, `image_thumbnails`, `image_first`, `image_border`, `image_border_size`, `image_border_color`, `image_resize`, `image_thumbnails_size`, `image_margin`, `image_wrap`, `image_alignment`, `zone_width`, `zone_height`, `zone_show`, `zone_font_face`, `zone_font_size`, `zone_font_style`, `zone_txt_color`, `zone_txt_align`, `zone_background`, `zone_padding_size_top`, `zone_padding_size_right`, `zone_padding_size_bottom`, `zone_padding_size_left`, `zone_line_height`, `zone_transform`, `zone_border_style`, `zone_border_color`, `zone_border_size_left`, `zone_border_size_bottom`, `zone_border_size_right`, `zone_border_size_top`, `more_font_face`, `more_font_size`, `more_font_style`, `more_txt_color`, `more_txt_hover_color`, `more_txt_length`, `more_link_decoration`, `more_hover_decoration`, `more_visited_decoration`, `more_txt_align`, `more_background`, `more_padding_size_top`, `more_padding_size_right`, `more_padding_size_bottom`, `more_padding_size_left`, `more_line_height`, `more_transform`, `more_border_size_top`, `more_border_size_right`, `more_border_size_bottom`, `more_border_size_left`, `more_border_color`, `more_border_style`, `name_line_height`, `name_padding_size_left`, `name_padding_size_bottom`, `name_padding_size_right`, `name_padding_size_top`, `name_border_style`, `name_border_color`, `name_border_size_left`, `name_border_size_bottom`, `name_border_size_right`, `name_border_size_top`, `name_background`, `name_transform`, `name_txt_align`, `name_txt_color`, `name_font_style`, `name_font_size`, `name_font_face`, `name_show`, `date_show`, `date_config_time_format`, `date_font_face`, `date_font_size`, `date_font_style`, `date_txt_color`, `date_txt_align`, `date_transform`, `date_background`, `date_border_size_top`, `date_border_size_right`, `date_border_size_bottom`, `date_border_size_left`, `date_border_color`, `date_border_style`, `date_padding_size_top`, `date_padding_size_right`, `date_padding_size_bottom`, `date_padding_size_left`, `date_line_height`, `module_position`, `module_display`, `use_class_heading`, `use_class_title`, `use_class_intro`, `use_class_image`, `use_class_zone`, `use_class_read`, `use_class_name`, `use_class_date`, `categories_page_show`, `section_page_show`, `zone_id`) VALUES (8, '290', '', '1', '5', '0', '0', '', '0', '0', '0', '0', '0', '0', '', '0', '', '0', '1', '0', '0', 'Arial', '14', 'bold', '#000099', '', '', '', '', 'Left', '#EEEEEE', '0', '0', '0', '0', '18', 'uppercase', '0', '0', '2', '0', '#000099', 'solid', '1', 'Arial', '11', 'bold', '#01529E', '#FF6501', '40', 'underline', 'none', 'underline', 'Left', '', '0', '0', '0', '0', '20', 'none', '1', '#FF6501', 'square', '11', '0', '0', '0', '0', '', 'dashed', '0', 0, '1', 'Arial', '12', 'normal', '#000000', '', '0', '0', '0', '0', '18', 'Left', '30', 'lowercase', 'dashed', '', '0', '0', '0', '0', '0', '1', '0', '1', '#FF00CC', '1', '60', '', '0', 'Right', '290', '20', '1', 'Arial', '14', 'bold', '#FF6501', 'Left', '', '6', '2', '2', '2', '18', 'none', 'solid', '#E8F4FF', '0', '3', '0', '0', 'Arial', '12', 'normal', '#660033', '#cc3333', '', 'none', 'none', 'none', 'Left', '', '0', '0', '0', '0', '18', 'uppercase', '0', '0', '0', '0', '', 'dashed', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', 0, 0, '5');
INSERT INTO `jos_ijoomla_news_zone_settings` (`id`, `general_width`, `general_height`, `general_columns`, `general_rows`, `general_border`, `general_border_size`, `general_border_color`, `general_padding_size_top`, `general_padding_size_right`, `general_padding_size_bottom`, `general_padding_size_left`, `general_vert_image`, `general_horz_image`, `general_background_color`, `general_orientation`, `general_ordering`, `general_read_more`, `general_read_more_first`, `general_margin`, `heading_show`, `heading_font_face`, `heading_font_size`, `heading_font_style`, `heading_txt_color`, `heading_txt_hover_color`, `heading_link_decoration`, `heading_hover_decoration`, `heading_visited_decoration`, `heading_txt_align`, `heading_background`, `heading_padding_size_top`, `heading_padding_size_right`, `heading_padding_size_bottom`, `heading_padding_size_left`, `heading_line_height`, `heading_transform`, `heading_border_size_top`, `heading_border_size_right`, `heading_border_size_bottom`, `heading_border_size_left`, `heading_border_color`, `heading_border_style`, `title_show`, `title_font_face`, `title_font_size`, `title_font_style`, `title_txt_color`, `title_txt_hover_color`, `title_txt_length`, `title_link_decoration`, `title_hover_decoration`, `title_visited_decoration`, `title_txt_align`, `title_background`, `title_padding_size_top`, `title_padding_size_right`, `title_padding_size_bottom`, `title_padding_size_left`, `title_line_height`, `title_transform`, `title_bullets`, `title_bullets_color`, `bullets_type`, `bullets_font_size`, `title_border_size_top`, `title_border_size_right`, `title_border_size_bottom`, `title_border_size_left`, `title_border_color`, `title_border_style`, `intro_show`, `intro_mode`, `intro_first`, `intro_font_face`, `intro_font_size`, `intro_font_style`, `intro_txt_color`, `intro_bg_color`, `intro_padding_size_top`, `intro_padding_size_right`, `intro_padding_size_bottom`, `intro_padding_size_left`, `intro_line_height`, `intro_txt_align`, `intro_txt_length`, `intro_transform`, `intro_border_style`, `intro_border_color`, `intro_border_size_left`, `intro_border_size_bottom`, `intro_border_size_right`, `intro_border_size_top`, `image_thumbnails`, `image_first`, `image_border`, `image_border_size`, `image_border_color`, `image_resize`, `image_thumbnails_size`, `image_margin`, `image_wrap`, `image_alignment`, `zone_width`, `zone_height`, `zone_show`, `zone_font_face`, `zone_font_size`, `zone_font_style`, `zone_txt_color`, `zone_txt_align`, `zone_background`, `zone_padding_size_top`, `zone_padding_size_right`, `zone_padding_size_bottom`, `zone_padding_size_left`, `zone_line_height`, `zone_transform`, `zone_border_style`, `zone_border_color`, `zone_border_size_left`, `zone_border_size_bottom`, `zone_border_size_right`, `zone_border_size_top`, `more_font_face`, `more_font_size`, `more_font_style`, `more_txt_color`, `more_txt_hover_color`, `more_txt_length`, `more_link_decoration`, `more_hover_decoration`, `more_visited_decoration`, `more_txt_align`, `more_background`, `more_padding_size_top`, `more_padding_size_right`, `more_padding_size_bottom`, `more_padding_size_left`, `more_line_height`, `more_transform`, `more_border_size_top`, `more_border_size_right`, `more_border_size_bottom`, `more_border_size_left`, `more_border_color`, `more_border_style`, `name_line_height`, `name_padding_size_left`, `name_padding_size_bottom`, `name_padding_size_right`, `name_padding_size_top`, `name_border_style`, `name_border_color`, `name_border_size_left`, `name_border_size_bottom`, `name_border_size_right`, `name_border_size_top`, `name_background`, `name_transform`, `name_txt_align`, `name_txt_color`, `name_font_style`, `name_font_size`, `name_font_face`, `name_show`, `date_show`, `date_config_time_format`, `date_font_face`, `date_font_size`, `date_font_style`, `date_txt_color`, `date_txt_align`, `date_transform`, `date_background`, `date_border_size_top`, `date_border_size_right`, `date_border_size_bottom`, `date_border_size_left`, `date_border_color`, `date_border_style`, `date_padding_size_top`, `date_padding_size_right`, `date_padding_size_bottom`, `date_padding_size_left`, `date_line_height`, `module_position`, `module_display`, `use_class_heading`, `use_class_title`, `use_class_intro`, `use_class_image`, `use_class_zone`, `use_class_read`, `use_class_name`, `use_class_date`, `categories_page_show`, `section_page_show`, `zone_id`) VALUES (9, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '25', '0', '0', '0', '0', 'solid', '#E8F4FF', '0', '3', '0', '0', '', 'none', 'Left', '#01529E', 'bold', '25', 'Tahoma', '1', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', 0, 0, '6');
INSERT INTO `jos_ijoomla_news_zone_settings` (`id`, `general_width`, `general_height`, `general_columns`, `general_rows`, `general_border`, `general_border_size`, `general_border_color`, `general_padding_size_top`, `general_padding_size_right`, `general_padding_size_bottom`, `general_padding_size_left`, `general_vert_image`, `general_horz_image`, `general_background_color`, `general_orientation`, `general_ordering`, `general_read_more`, `general_read_more_first`, `general_margin`, `heading_show`, `heading_font_face`, `heading_font_size`, `heading_font_style`, `heading_txt_color`, `heading_txt_hover_color`, `heading_link_decoration`, `heading_hover_decoration`, `heading_visited_decoration`, `heading_txt_align`, `heading_background`, `heading_padding_size_top`, `heading_padding_size_right`, `heading_padding_size_bottom`, `heading_padding_size_left`, `heading_line_height`, `heading_transform`, `heading_border_size_top`, `heading_border_size_right`, `heading_border_size_bottom`, `heading_border_size_left`, `heading_border_color`, `heading_border_style`, `title_show`, `title_font_face`, `title_font_size`, `title_font_style`, `title_txt_color`, `title_txt_hover_color`, `title_txt_length`, `title_link_decoration`, `title_hover_decoration`, `title_visited_decoration`, `title_txt_align`, `title_background`, `title_padding_size_top`, `title_padding_size_right`, `title_padding_size_bottom`, `title_padding_size_left`, `title_line_height`, `title_transform`, `title_bullets`, `title_bullets_color`, `bullets_type`, `bullets_font_size`, `title_border_size_top`, `title_border_size_right`, `title_border_size_bottom`, `title_border_size_left`, `title_border_color`, `title_border_style`, `intro_show`, `intro_mode`, `intro_first`, `intro_font_face`, `intro_font_size`, `intro_font_style`, `intro_txt_color`, `intro_bg_color`, `intro_padding_size_top`, `intro_padding_size_right`, `intro_padding_size_bottom`, `intro_padding_size_left`, `intro_line_height`, `intro_txt_align`, `intro_txt_length`, `intro_transform`, `intro_border_style`, `intro_border_color`, `intro_border_size_left`, `intro_border_size_bottom`, `intro_border_size_right`, `intro_border_size_top`, `image_thumbnails`, `image_first`, `image_border`, `image_border_size`, `image_border_color`, `image_resize`, `image_thumbnails_size`, `image_margin`, `image_wrap`, `image_alignment`, `zone_width`, `zone_height`, `zone_show`, `zone_font_face`, `zone_font_size`, `zone_font_style`, `zone_txt_color`, `zone_txt_align`, `zone_background`, `zone_padding_size_top`, `zone_padding_size_right`, `zone_padding_size_bottom`, `zone_padding_size_left`, `zone_line_height`, `zone_transform`, `zone_border_style`, `zone_border_color`, `zone_border_size_left`, `zone_border_size_bottom`, `zone_border_size_right`, `zone_border_size_top`, `more_font_face`, `more_font_size`, `more_font_style`, `more_txt_color`, `more_txt_hover_color`, `more_txt_length`, `more_link_decoration`, `more_hover_decoration`, `more_visited_decoration`, `more_txt_align`, `more_background`, `more_padding_size_top`, `more_padding_size_right`, `more_padding_size_bottom`, `more_padding_size_left`, `more_line_height`, `more_transform`, `more_border_size_top`, `more_border_size_right`, `more_border_size_bottom`, `more_border_size_left`, `more_border_color`, `more_border_style`, `name_line_height`, `name_padding_size_left`, `name_padding_size_bottom`, `name_padding_size_right`, `name_padding_size_top`, `name_border_style`, `name_border_color`, `name_border_size_left`, `name_border_size_bottom`, `name_border_size_right`, `name_border_size_top`, `name_background`, `name_transform`, `name_txt_align`, `name_txt_color`, `name_font_style`, `name_font_size`, `name_font_face`, `name_show`, `date_show`, `date_config_time_format`, `date_font_face`, `date_font_size`, `date_font_style`, `date_txt_color`, `date_txt_align`, `date_transform`, `date_background`, `date_border_size_top`, `date_border_size_right`, `date_border_size_bottom`, `date_border_size_left`, `date_border_color`, `date_border_style`, `date_padding_size_top`, `date_padding_size_right`, `date_padding_size_bottom`, `date_padding_size_left`, `date_line_height`, `module_position`, `module_display`, `use_class_heading`, `use_class_title`, `use_class_intro`, `use_class_image`, `use_class_zone`, `use_class_read`, `use_class_name`, `use_class_date`, `categories_page_show`, `section_page_show`, `zone_id`) VALUES (10, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 5, 'Arial', '12', 'bold italic', '#666666', 'Left', 'none', '', '0', '0', '0', '0', '', 'none', '0', '0', '0', '0', '12', '', 0, '', '', '', '', '', '', '', '', 0, 0, '7');
INSERT INTO `jos_ijoomla_news_zone_settings` (`id`, `general_width`, `general_height`, `general_columns`, `general_rows`, `general_border`, `general_border_size`, `general_border_color`, `general_padding_size_top`, `general_padding_size_right`, `general_padding_size_bottom`, `general_padding_size_left`, `general_vert_image`, `general_horz_image`, `general_background_color`, `general_orientation`, `general_ordering`, `general_read_more`, `general_read_more_first`, `general_margin`, `heading_show`, `heading_font_face`, `heading_font_size`, `heading_font_style`, `heading_txt_color`, `heading_txt_hover_color`, `heading_link_decoration`, `heading_hover_decoration`, `heading_visited_decoration`, `heading_txt_align`, `heading_background`, `heading_padding_size_top`, `heading_padding_size_right`, `heading_padding_size_bottom`, `heading_padding_size_left`, `heading_line_height`, `heading_transform`, `heading_border_size_top`, `heading_border_size_right`, `heading_border_size_bottom`, `heading_border_size_left`, `heading_border_color`, `heading_border_style`, `title_show`, `title_font_face`, `title_font_size`, `title_font_style`, `title_txt_color`, `title_txt_hover_color`, `title_txt_length`, `title_link_decoration`, `title_hover_decoration`, `title_visited_decoration`, `title_txt_align`, `title_background`, `title_padding_size_top`, `title_padding_size_right`, `title_padding_size_bottom`, `title_padding_size_left`, `title_line_height`, `title_transform`, `title_bullets`, `title_bullets_color`, `bullets_type`, `bullets_font_size`, `title_border_size_top`, `title_border_size_right`, `title_border_size_bottom`, `title_border_size_left`, `title_border_color`, `title_border_style`, `intro_show`, `intro_mode`, `intro_first`, `intro_font_face`, `intro_font_size`, `intro_font_style`, `intro_txt_color`, `intro_bg_color`, `intro_padding_size_top`, `intro_padding_size_right`, `intro_padding_size_bottom`, `intro_padding_size_left`, `intro_line_height`, `intro_txt_align`, `intro_txt_length`, `intro_transform`, `intro_border_style`, `intro_border_color`, `intro_border_size_left`, `intro_border_size_bottom`, `intro_border_size_right`, `intro_border_size_top`, `image_thumbnails`, `image_first`, `image_border`, `image_border_size`, `image_border_color`, `image_resize`, `image_thumbnails_size`, `image_margin`, `image_wrap`, `image_alignment`, `zone_width`, `zone_height`, `zone_show`, `zone_font_face`, `zone_font_size`, `zone_font_style`, `zone_txt_color`, `zone_txt_align`, `zone_background`, `zone_padding_size_top`, `zone_padding_size_right`, `zone_padding_size_bottom`, `zone_padding_size_left`, `zone_line_height`, `zone_transform`, `zone_border_style`, `zone_border_color`, `zone_border_size_left`, `zone_border_size_bottom`, `zone_border_size_right`, `zone_border_size_top`, `more_font_face`, `more_font_size`, `more_font_style`, `more_txt_color`, `more_txt_hover_color`, `more_txt_length`, `more_link_decoration`, `more_hover_decoration`, `more_visited_decoration`, `more_txt_align`, `more_background`, `more_padding_size_top`, `more_padding_size_right`, `more_padding_size_bottom`, `more_padding_size_left`, `more_line_height`, `more_transform`, `more_border_size_top`, `more_border_size_right`, `more_border_size_bottom`, `more_border_size_left`, `more_border_color`, `more_border_style`, `name_line_height`, `name_padding_size_left`, `name_padding_size_bottom`, `name_padding_size_right`, `name_padding_size_top`, `name_border_style`, `name_border_color`, `name_border_size_left`, `name_border_size_bottom`, `name_border_size_right`, `name_border_size_top`, `name_background`, `name_transform`, `name_txt_align`, `name_txt_color`, `name_font_style`, `name_font_size`, `name_font_face`, `name_show`, `date_show`, `date_config_time_format`, `date_font_face`, `date_font_size`, `date_font_style`, `date_txt_color`, `date_txt_align`, `date_transform`, `date_background`, `date_border_size_top`, `date_border_size_right`, `date_border_size_bottom`, `date_border_size_left`, `date_border_color`, `date_border_style`, `date_padding_size_top`, `date_padding_size_right`, `date_padding_size_bottom`, `date_padding_size_left`, `date_line_height`, `module_position`, `module_display`, `use_class_heading`, `use_class_title`, `use_class_intro`, `use_class_image`, `use_class_zone`, `use_class_read`, `use_class_name`, `use_class_date`, `categories_page_show`, `section_page_show`, `zone_id`) VALUES (11, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'none', 1, '', '', '', '', '', '', '', '', 0, 0, '8');
INSERT INTO `jos_ijoomla_news_zone_settings` (`id`, `general_width`, `general_height`, `general_columns`, `general_rows`, `general_border`, `general_border_size`, `general_border_color`, `general_padding_size_top`, `general_padding_size_right`, `general_padding_size_bottom`, `general_padding_size_left`, `general_vert_image`, `general_horz_image`, `general_background_color`, `general_orientation`, `general_ordering`, `general_read_more`, `general_read_more_first`, `general_margin`, `heading_show`, `heading_font_face`, `heading_font_size`, `heading_font_style`, `heading_txt_color`, `heading_txt_hover_color`, `heading_link_decoration`, `heading_hover_decoration`, `heading_visited_decoration`, `heading_txt_align`, `heading_background`, `heading_padding_size_top`, `heading_padding_size_right`, `heading_padding_size_bottom`, `heading_padding_size_left`, `heading_line_height`, `heading_transform`, `heading_border_size_top`, `heading_border_size_right`, `heading_border_size_bottom`, `heading_border_size_left`, `heading_border_color`, `heading_border_style`, `title_show`, `title_font_face`, `title_font_size`, `title_font_style`, `title_txt_color`, `title_txt_hover_color`, `title_txt_length`, `title_link_decoration`, `title_hover_decoration`, `title_visited_decoration`, `title_txt_align`, `title_background`, `title_padding_size_top`, `title_padding_size_right`, `title_padding_size_bottom`, `title_padding_size_left`, `title_line_height`, `title_transform`, `title_bullets`, `title_bullets_color`, `bullets_type`, `bullets_font_size`, `title_border_size_top`, `title_border_size_right`, `title_border_size_bottom`, `title_border_size_left`, `title_border_color`, `title_border_style`, `intro_show`, `intro_mode`, `intro_first`, `intro_font_face`, `intro_font_size`, `intro_font_style`, `intro_txt_color`, `intro_bg_color`, `intro_padding_size_top`, `intro_padding_size_right`, `intro_padding_size_bottom`, `intro_padding_size_left`, `intro_line_height`, `intro_txt_align`, `intro_txt_length`, `intro_transform`, `intro_border_style`, `intro_border_color`, `intro_border_size_left`, `intro_border_size_bottom`, `intro_border_size_right`, `intro_border_size_top`, `image_thumbnails`, `image_first`, `image_border`, `image_border_size`, `image_border_color`, `image_resize`, `image_thumbnails_size`, `image_margin`, `image_wrap`, `image_alignment`, `zone_width`, `zone_height`, `zone_show`, `zone_font_face`, `zone_font_size`, `zone_font_style`, `zone_txt_color`, `zone_txt_align`, `zone_background`, `zone_padding_size_top`, `zone_padding_size_right`, `zone_padding_size_bottom`, `zone_padding_size_left`, `zone_line_height`, `zone_transform`, `zone_border_style`, `zone_border_color`, `zone_border_size_left`, `zone_border_size_bottom`, `zone_border_size_right`, `zone_border_size_top`, `more_font_face`, `more_font_size`, `more_font_style`, `more_txt_color`, `more_txt_hover_color`, `more_txt_length`, `more_link_decoration`, `more_hover_decoration`, `more_visited_decoration`, `more_txt_align`, `more_background`, `more_padding_size_top`, `more_padding_size_right`, `more_padding_size_bottom`, `more_padding_size_left`, `more_line_height`, `more_transform`, `more_border_size_top`, `more_border_size_right`, `more_border_size_bottom`, `more_border_size_left`, `more_border_color`, `more_border_style`, `name_line_height`, `name_padding_size_left`, `name_padding_size_bottom`, `name_padding_size_right`, `name_padding_size_top`, `name_border_style`, `name_border_color`, `name_border_size_left`, `name_border_size_bottom`, `name_border_size_right`, `name_border_size_top`, `name_background`, `name_transform`, `name_txt_align`, `name_txt_color`, `name_font_style`, `name_font_size`, `name_font_face`, `name_show`, `date_show`, `date_config_time_format`, `date_font_face`, `date_font_size`, `date_font_style`, `date_txt_color`, `date_txt_align`, `date_transform`, `date_background`, `date_border_size_top`, `date_border_size_right`, `date_border_size_bottom`, `date_border_size_left`, `date_border_color`, `date_border_style`, `date_padding_size_top`, `date_padding_size_right`, `date_padding_size_bottom`, `date_padding_size_left`, `date_line_height`, `module_position`, `module_display`, `use_class_heading`, `use_class_title`, `use_class_intro`, `use_class_image`, `use_class_zone`, `use_class_read`, `use_class_name`, `use_class_date`, `categories_page_show`, `section_page_show`, `zone_id`) VALUES (12, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'none', 1, '', '', '', '', '', '', '', '', 0, 0, '9');
INSERT INTO `jos_ijoomla_news_zone_settings` (`id`, `general_width`, `general_height`, `general_columns`, `general_rows`, `general_border`, `general_border_size`, `general_border_color`, `general_padding_size_top`, `general_padding_size_right`, `general_padding_size_bottom`, `general_padding_size_left`, `general_vert_image`, `general_horz_image`, `general_background_color`, `general_orientation`, `general_ordering`, `general_read_more`, `general_read_more_first`, `general_margin`, `heading_show`, `heading_font_face`, `heading_font_size`, `heading_font_style`, `heading_txt_color`, `heading_txt_hover_color`, `heading_link_decoration`, `heading_hover_decoration`, `heading_visited_decoration`, `heading_txt_align`, `heading_background`, `heading_padding_size_top`, `heading_padding_size_right`, `heading_padding_size_bottom`, `heading_padding_size_left`, `heading_line_height`, `heading_transform`, `heading_border_size_top`, `heading_border_size_right`, `heading_border_size_bottom`, `heading_border_size_left`, `heading_border_color`, `heading_border_style`, `title_show`, `title_font_face`, `title_font_size`, `title_font_style`, `title_txt_color`, `title_txt_hover_color`, `title_txt_length`, `title_link_decoration`, `title_hover_decoration`, `title_visited_decoration`, `title_txt_align`, `title_background`, `title_padding_size_top`, `title_padding_size_right`, `title_padding_size_bottom`, `title_padding_size_left`, `title_line_height`, `title_transform`, `title_bullets`, `title_bullets_color`, `bullets_type`, `bullets_font_size`, `title_border_size_top`, `title_border_size_right`, `title_border_size_bottom`, `title_border_size_left`, `title_border_color`, `title_border_style`, `intro_show`, `intro_mode`, `intro_first`, `intro_font_face`, `intro_font_size`, `intro_font_style`, `intro_txt_color`, `intro_bg_color`, `intro_padding_size_top`, `intro_padding_size_right`, `intro_padding_size_bottom`, `intro_padding_size_left`, `intro_line_height`, `intro_txt_align`, `intro_txt_length`, `intro_transform`, `intro_border_style`, `intro_border_color`, `intro_border_size_left`, `intro_border_size_bottom`, `intro_border_size_right`, `intro_border_size_top`, `image_thumbnails`, `image_first`, `image_border`, `image_border_size`, `image_border_color`, `image_resize`, `image_thumbnails_size`, `image_margin`, `image_wrap`, `image_alignment`, `zone_width`, `zone_height`, `zone_show`, `zone_font_face`, `zone_font_size`, `zone_font_style`, `zone_txt_color`, `zone_txt_align`, `zone_background`, `zone_padding_size_top`, `zone_padding_size_right`, `zone_padding_size_bottom`, `zone_padding_size_left`, `zone_line_height`, `zone_transform`, `zone_border_style`, `zone_border_color`, `zone_border_size_left`, `zone_border_size_bottom`, `zone_border_size_right`, `zone_border_size_top`, `more_font_face`, `more_font_size`, `more_font_style`, `more_txt_color`, `more_txt_hover_color`, `more_txt_length`, `more_link_decoration`, `more_hover_decoration`, `more_visited_decoration`, `more_txt_align`, `more_background`, `more_padding_size_top`, `more_padding_size_right`, `more_padding_size_bottom`, `more_padding_size_left`, `more_line_height`, `more_transform`, `more_border_size_top`, `more_border_size_right`, `more_border_size_bottom`, `more_border_size_left`, `more_border_color`, `more_border_style`, `name_line_height`, `name_padding_size_left`, `name_padding_size_bottom`, `name_padding_size_right`, `name_padding_size_top`, `name_border_style`, `name_border_color`, `name_border_size_left`, `name_border_size_bottom`, `name_border_size_right`, `name_border_size_top`, `name_background`, `name_transform`, `name_txt_align`, `name_txt_color`, `name_font_style`, `name_font_size`, `name_font_face`, `name_show`, `date_show`, `date_config_time_format`, `date_font_face`, `date_font_size`, `date_font_style`, `date_txt_color`, `date_txt_align`, `date_transform`, `date_background`, `date_border_size_top`, `date_border_size_right`, `date_border_size_bottom`, `date_border_size_left`, `date_border_color`, `date_border_style`, `date_padding_size_top`, `date_padding_size_right`, `date_padding_size_bottom`, `date_padding_size_left`, `date_line_height`, `module_position`, `module_display`, `use_class_heading`, `use_class_title`, `use_class_intro`, `use_class_image`, `use_class_zone`, `use_class_read`, `use_class_name`, `use_class_date`, `categories_page_show`, `section_page_show`, `zone_id`) VALUES (13, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'none', 1, '', '', '', '', '', '', '', '', 0, 0, '10');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_jce_extensions`
-- 

DROP TABLE IF EXISTS `jos_jce_extensions`;
CREATE TABLE `jos_jce_extensions` (
  `id` int(11) NOT NULL auto_increment,
  `pid` int(11) NOT NULL default '0',
  `name` varchar(100) NOT NULL default '',
  `extension` varchar(255) NOT NULL default '',
  `folder` varchar(255) NOT NULL default '',
  `published` tinyint(3) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Volcar la base de datos para la tabla `jos_jce_extensions`
-- 

INSERT INTO `jos_jce_extensions` (`id`, `pid`, `name`, `extension`, `folder`, `published`) VALUES (1, 15, 'Joomla Links for Advanced Link', 'joomlalinks', 'links', 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_jce_groups`
-- 

DROP TABLE IF EXISTS `jos_jce_groups`;
CREATE TABLE `jos_jce_groups` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  `users` text NOT NULL,
  `types` varchar(255) NOT NULL default '',
  `rows` text NOT NULL,
  `plugins` varchar(255) NOT NULL default '',
  `published` tinyint(3) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `checked_out` tinyint(3) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Volcar la base de datos para la tabla `jos_jce_groups`
-- 

INSERT INTO `jos_jce_groups` (`id`, `name`, `description`, `users`, `types`, `rows`, `plugins`, `published`, `ordering`, `checked_out`, `checked_out_time`, `params`) VALUES (1, 'Default', 'Default group for all users with edit access', '', '19,20,21,23,24,25', '28,32,33,27,19,20,21,30,31,36,37,29,43,44,45,46,49,26;2,34,39,40,42,38,5,9,15,23,48,47,56,41;22,18,25,24,7,10,11,12;4,8,6,17,13,3,54,14,16,59', '52,55,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,28,54,59', 1, 1, 0, '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_jce_plugins`
-- 

DROP TABLE IF EXISTS `jos_jce_plugins`;
CREATE TABLE `jos_jce_plugins` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL default '',
  `name` varchar(100) NOT NULL default '',
  `type` varchar(100) NOT NULL default 'plugin',
  `icon` varchar(255) NOT NULL default '',
  `layout` varchar(255) NOT NULL default '',
  `row` int(11) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `published` tinyint(3) NOT NULL default '0',
  `editable` tinyint(3) NOT NULL default '0',
  `elements` varchar(255) NOT NULL default '',
  `iscore` tinyint(3) NOT NULL default '0',
  `checked_out` int(11) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `params` text NOT NULL,
  `variables` text NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `plugin` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 AUTO_INCREMENT=60 ;

-- 
-- Volcar la base de datos para la tabla `jos_jce_plugins`
-- 

INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (1, 'Context Menu', 'contextmenu', 'plugin', '', '', 0, 14, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (2, 'Directionality', 'directionality', 'plugin', 'ltr,rtl', 'directionality', 3, 21, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (3, 'Emotions', 'emotions', 'plugin', 'emotions', 'emotions', 3, 19, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (4, 'Fullscreen', 'fullscreen', 'plugin', 'fullscreen', 'fullscreen', 3, 22, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (5, 'Paste', 'paste', 'plugin', 'pasteword,pastetext', 'paste', 2, 10, 1, 1, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (6, 'Preview', 'preview', 'plugin', 'preview', 'preview', 3, 24, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (7, 'Tables', 'table', 'plugin', 'tablecontrols', 'buttons', 3, 6, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (8, 'Print', 'print', 'plugin', 'print', 'print', 3, 20, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (9, 'Search Replace', 'searchreplace', 'plugin', 'search,replace', 'searchreplace', 2, 13, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (10, 'Styles', 'style', 'plugin', 'styles', 'styles', 4, 11, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (11, 'Non-Breaking', 'nonbreaking', 'plugin', 'nonbreaking', 'nonbreaking', 4, 16, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (12, 'Visual Characters', 'visualchars', 'plugin', 'visualchars', 'visualchars', 4, 15, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (13, 'XHTML Xtras', 'xhtmlxtras', 'plugin', 'cite,abbr,acronym,del,ins,attribs', 'xhtmlxtras', 4, 12, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (14, 'Image Manager', 'imgmanager', 'plugin', 'imgmanager', 'imgmanager', 4, 25, 1, 1, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (15, 'Advanced Link', 'advlink', 'plugin', 'advlink', 'advlink', 4, 26, 1, 1, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (16, 'Spell Checker', 'spellchecker', 'plugin', 'spellchecker', 'spellchecker', 4, 17, 1, 1, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (17, 'Layers', 'layer', 'plugin', 'insertlayer,moveforward,movebackward,absolute', 'layer', 4, 5, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (18, 'Font ForeColour', 'forecolor', 'command', 'forecolor', 'forecolor', 2, 17, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (19, 'Bold', 'bold', 'command', 'bold', 'bold', 1, 2, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (20, 'Italic', 'italic', 'command', 'italic', 'italic', 1, 3, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (21, 'Underline', 'underline', 'command', 'underline', 'underline', 1, 4, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (22, 'Font BackColour', 'backcolor', 'command', 'backcolor', 'backcolor', 2, 18, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (23, 'Unlink', 'unlink', 'command', 'unlink', 'unlink', 2, 11, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (24, 'Font Select', 'fontselect', 'command', 'fontselect', 'fontselect', 1, 12, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (25, 'Font Size Select', 'fontsizeselect', 'command', 'fontsizeselect', 'fontsizeselect', 1, 13, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (26, 'Style Select', 'styleselect', 'command', 'styleselect', 'styleselect', 1, 10, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (27, 'New Document', 'newdocument', 'command', 'newdocument', 'newdocument', 1, 1, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (28, 'Help', 'help', 'plugin', 'help', 'help', 1, 1, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (29, 'StrikeThrough', 'strikethrough', 'command', 'strikethrough', 'strikethrough', 1, 5, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (30, 'Indent', 'indent', 'command', 'indent', 'indent', 2, 7, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (31, 'Outdent', 'outdent', 'command', 'outdent', 'outdent', 2, 6, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (32, 'Undo', 'undo', 'command', 'undo', 'undo', 2, 8, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (33, 'Redo', 'redo', 'command', 'redo', 'redo', 2, 9, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (34, 'Horizontal Rule', 'hr', 'command', 'hr', 'hr', 3, 2, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (35, 'HTML', 'html', 'command', 'code', 'code', 2, 16, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (36, 'Numbered List', 'numlist', 'command', 'numlist', 'numlist', 2, 5, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (37, 'Bullet List', 'bullist', 'command', 'bullist', 'bullist', 2, 4, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (38, 'Clipboard Actions', 'clipboard', 'command', 'cut,copy,paste', 'clipboard', 2, 1, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (39, 'Subscript', 'sub', 'command', 'sub', 'sub', 3, 5, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (40, 'Superscript', 'sup', 'command', 'sup', 'sup', 3, 6, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (41, 'Visual Aid', 'visualaid', 'command', 'visualaid', 'visualaid', 3, 4, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (42, 'Character Map', 'charmap', 'command', 'charmap', 'charmap', 3, 7, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (43, 'Justify Full', 'full', 'command', 'justifyfull', 'justifyfull', 1, 8, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (44, 'Justify Center', 'center', 'command', 'justifycenter', 'justifycenter', 1, 7, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (45, 'Justify Left', 'left', 'command', 'justifyleft', 'justifyleft', 1, 6, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (46, 'Justify Right', 'right', 'command', 'justifyright', 'justifyright', 1, 9, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (47, 'Remove Format', 'removeformat', 'command', 'removeformat', 'removeformat', 3, 3, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (48, 'Anchor', 'anchor', 'command', 'anchor', 'anchor', 2, 12, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (49, 'Format Select', 'formatselect', 'command', 'formatselect', 'formatselect', 1, 11, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (50, 'Image', 'image', 'command', 'image', 'image', 2, 13, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (51, 'Link', 'link', 'command', 'link', 'link', 2, 10, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (52, 'Browser', 'browser', 'plugin', '', '', 0, 23, 1, 1, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (53, 'Inline Popups', 'inlinepopups', 'plugin', '', '', 0, 7, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (54, 'Read More', 'readmore', 'plugin', 'readmore', 'readmore', 4, 18, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (55, 'Media', 'media', 'plugin', '', '', 0, 3, 1, 1, '', 1, 0, '0000-00-00 00:00:00', '\r\n\r\n', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (56, 'Code Cleanup', 'cleanup', 'command', 'cleanup', 'cleanup', 2, 14, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (57, 'Safari Browser Support', 'safari', 'plugin', '', '', 0, 8, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (58, 'TinyMCE 2.x Compatability', 'compat2x', 'plugin', '', '', 0, 9, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `checked_out`, `checked_out_time`, `params`, `variables`) VALUES (59, 'Advanced Code Editor', 'advcode', 'plugin', 'advcode', 'advcode', 4, 2, 1, 0, '', 1, 0, '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_lxmenu`
-- 

DROP TABLE IF EXISTS `jos_lxmenu`;
CREATE TABLE `jos_lxmenu` (
  `id` int(11) NOT NULL auto_increment,
  `main_id` int(11) NOT NULL default '0',
  `sub_id` int(11) NOT NULL default '0',
  `outer_bg_color` varchar(7) NOT NULL default '#FFFFFF',
  `inner_bg_color` varchar(7) NOT NULL default '#FFFFFF',
  `outer_bg_color_hl` varchar(7) NOT NULL default '#FFFFFF',
  `inner_bg_color_hl` varchar(7) NOT NULL default '#FFFFFF',
  `inner_border_type` varchar(20) NOT NULL default 'none',
  `inner_border_type_hl` varchar(20) NOT NULL default 'none',
  `inner_border_color` varchar(7) NOT NULL default '#FFFFFF',
  `inner_border_color_hl` varchar(7) NOT NULL default '#FFFFFF',
  `inner_border_size` smallint(2) NOT NULL default '0',
  `font_family` varchar(150) NOT NULL default 'verdana,tahoma,arial',
  `font_size` smallint(2) NOT NULL default '10',
  `item_width` smallint(3) NOT NULL default '120',
  `item_height` smallint(3) NOT NULL default '20',
  `item_text_color` varchar(20) NOT NULL default '#000000',
  `item_text_align` varchar(20) NOT NULL default 'left',
  `item_text_weight` varchar(20) NOT NULL default 'normal',
  `item_text_decoration` varchar(20) NOT NULL default 'none',
  `item_text_wspace` varchar(20) NOT NULL default 'normal',
  `item_text_color_hl` varchar(20) NOT NULL default '#000000',
  `item_text_align_hl` varchar(20) NOT NULL default 'left',
  `item_text_weight_hl` varchar(20) NOT NULL default 'normal',
  `item_text_decoration_hl` varchar(20) NOT NULL default 'none',
  `item_text_wspace_hl` varchar(20) NOT NULL default 'normal',
  `inner_padding_top` smallint(2) NOT NULL default '0',
  `inner_padding_right` smallint(2) NOT NULL default '0',
  `inner_padding_bottom` smallint(2) NOT NULL default '0',
  `inner_padding_left` smallint(2) NOT NULL default '0',
  `outer_padding_top` smallint(2) NOT NULL default '0',
  `outer_padding_right` smallint(2) NOT NULL default '0',
  `outer_padding_bottom` smallint(2) NOT NULL default '0',
  `outer_padding_left` smallint(2) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Volcar la base de datos para la tabla `jos_lxmenu`
-- 

INSERT INTO `jos_lxmenu` (`id`, `main_id`, `sub_id`, `outer_bg_color`, `inner_bg_color`, `outer_bg_color_hl`, `inner_bg_color_hl`, `inner_border_type`, `inner_border_type_hl`, `inner_border_color`, `inner_border_color_hl`, `inner_border_size`, `font_family`, `font_size`, `item_width`, `item_height`, `item_text_color`, `item_text_align`, `item_text_weight`, `item_text_decoration`, `item_text_wspace`, `item_text_color_hl`, `item_text_align_hl`, `item_text_weight_hl`, `item_text_decoration_hl`, `item_text_wspace_hl`, `inner_padding_top`, `inner_padding_right`, `inner_padding_bottom`, `inner_padding_left`, `outer_padding_top`, `outer_padding_right`, `outer_padding_bottom`, `outer_padding_left`) VALUES (1, 1, 0, '#990033', '#FFCC00', '#3300CC', '#FFFFFF', 'dotted', 'none', '#676767', '#676767', 0, 'tahoma,verdana,arial', 9, 116, 20, '#000000', 'left', 'bold', 'none', 'normal', '#505050', 'left', 'bold', 'none', 'normal', 3, 0, 3, 3, 0, 0, 0, 6);
INSERT INTO `jos_lxmenu` (`id`, `main_id`, `sub_id`, `outer_bg_color`, `inner_bg_color`, `outer_bg_color_hl`, `inner_bg_color_hl`, `inner_border_type`, `inner_border_type_hl`, `inner_border_color`, `inner_border_color_hl`, `inner_border_size`, `font_family`, `font_size`, `item_width`, `item_height`, `item_text_color`, `item_text_align`, `item_text_weight`, `item_text_decoration`, `item_text_wspace`, `item_text_color_hl`, `item_text_align_hl`, `item_text_weight_hl`, `item_text_decoration_hl`, `item_text_wspace_hl`, `inner_padding_top`, `inner_padding_right`, `inner_padding_bottom`, `inner_padding_left`, `outer_padding_top`, `outer_padding_right`, `outer_padding_bottom`, `outer_padding_left`) VALUES (2, 0, 1, '#BFBFBF', '#DFDFDF', '#6F6F6F', '#FFFFFF', 'none', 'none', '#676767', '#676767', 0, 'tahoma,verdana,arial', 9, 116, 20, '#000000', 'left', 'bold', 'none', 'normal', '#505050', 'left', 'bold', 'none', 'normal', 3, 0, 3, 3, 0, 0, 0, 6);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_lxmenu_config`
-- 

DROP TABLE IF EXISTS `jos_lxmenu_config`;
CREATE TABLE `jos_lxmenu_config` (
  `id` int(11) NOT NULL default '0',
  `version` int(5) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `jos_lxmenu_config`
-- 

INSERT INTO `jos_lxmenu_config` (`id`, `version`) VALUES (1, 115);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_lxmenu_main`
-- 

DROP TABLE IF EXISTS `jos_lxmenu_main`;
CREATE TABLE `jos_lxmenu_main` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default 'mainmenu',
  `direction` varchar(20) NOT NULL default 'horizontal',
  `position_style` varchar(20) NOT NULL default 'relative',
  `position_left` smallint(4) NOT NULL default '0',
  `position_top` smallint(4) NOT NULL default '0',
  `pop_on_click` tinyint(1) NOT NULL default '0',
  `expand_delay` smallint(4) NOT NULL default '0',
  `hide_delay` smallint(4) NOT NULL default '600',
  `transparency_create` tinyint(1) NOT NULL default '0',
  `transparency` smallint(3) NOT NULL default '80',
  `menu_align` varchar(10) NOT NULL default 'left',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Volcar la base de datos para la tabla `jos_lxmenu_main`
-- 

INSERT INTO `jos_lxmenu_main` (`id`, `name`, `direction`, `position_style`, `position_left`, `position_top`, `pop_on_click`, `expand_delay`, `hide_delay`, `transparency_create`, `transparency`, `menu_align`) VALUES (1, 'mainmenu', 'horizontal', 'relative', 0, 0, 0, 100, 600, 0, 80, 'right');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_lxmenu_sub`
-- 

DROP TABLE IF EXISTS `jos_lxmenu_sub`;
CREATE TABLE `jos_lxmenu_sub` (
  `id` int(11) NOT NULL auto_increment,
  `main_id` int(11) NOT NULL default '0',
  `transparency_create` tinyint(1) NOT NULL default '0',
  `transparency` smallint(3) NOT NULL default '80',
  `direction` varchar(10) NOT NULL default 'right',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Volcar la base de datos para la tabla `jos_lxmenu_sub`
-- 

INSERT INTO `jos_lxmenu_sub` (`id`, `main_id`, `transparency_create`, `transparency`, `direction`) VALUES (1, 1, 0, 80, 'right');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_menu`
-- 

DROP TABLE IF EXISTS `jos_menu`;
CREATE TABLE `jos_menu` (
  `id` int(11) NOT NULL auto_increment,
  `menutype` varchar(75) default NULL,
  `name` varchar(255) default NULL,
  `alias` varchar(255) NOT NULL default '',
  `link` text,
  `type` varchar(50) NOT NULL default '',
  `published` tinyint(1) NOT NULL default '0',
  `parent` int(11) unsigned NOT NULL default '0',
  `componentid` int(11) unsigned NOT NULL default '0',
  `sublevel` int(11) default '0',
  `ordering` int(11) default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL default '0',
  `browserNav` tinyint(4) default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `utaccess` tinyint(3) unsigned NOT NULL default '0',
  `params` text NOT NULL,
  `lft` int(11) unsigned NOT NULL default '0',
  `rgt` int(11) unsigned NOT NULL default '0',
  `home` int(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `componentid` (`componentid`,`menutype`,`published`,`access`),
  KEY `menutype` (`menutype`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 AUTO_INCREMENT=74 ;

-- 
-- Volcar la base de datos para la tabla `jos_menu`
-- 

INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (1, 'mainmenu', 'Home', 'home', 'index.php?option=com_content&view=frontpage', 'component', 1, 0, 20, 0, 9, 62, '2008-07-04 00:35:08', 0, 0, 0, 3, 'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=front\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=:: CLB Consultores :: \nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 1);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (2, 'mainmenu', 'Joomla! License', 'joomla-license', 'index.php?option=com_content&view=article&id=5', 'component', -2, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (41, 'mainmenu', 'FAQ', 'faq', 'index.php?option=com_content&view=section&id=3', 'component', -2, 0, 20, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\nshow_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby=\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (11, 'othermenu', 'Joomla! Home', 'joomla-home', 'http://www.joomla.org', 'url', 1, 0, 0, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (12, 'othermenu', 'Joomla! Forums', 'joomla-forums', 'http://forum.joomla.org', 'url', 1, 0, 0, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (13, 'othermenu', 'Joomla! Help', 'joomla-help', 'http://help.joomla.org', 'url', 1, 0, 0, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (14, 'othermenu', 'OSM Home', 'osm-home', 'http://www.opensourcematters.org', 'url', 1, 0, 0, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 4, 'menu_image=-1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (15, 'othermenu', 'Administrator', 'administrator', 'administrator/', 'url', 1, 0, 0, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (18, 'topmenu', 'News', 'news', 'index.php?option=com_newsfeeds&view=newsfeed&id=1&feedid=1', 'component', 1, 0, 11, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'show_page_title=1\npage_title=News\npageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_other_cats=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (20, 'usermenu', 'Your Details', 'your-details', 'index.php?option=com_user&view=user&task=edit', 'component', 1, 0, 14, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 1, 3, '', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (24, 'usermenu', 'Logout', 'logout', 'index.php?option=com_user&view=login', 'component', 1, 0, 14, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 1, 3, '', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (38, 'keyconcepts', 'Content Layouts', 'content-layouts', 'index.php?option=com_content&view=article&id=24', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (27, 'mainmenu', 'Joomla! Overview', 'joomla-overview', 'index.php?option=com_content&view=article&id=19', 'component', -2, 0, 20, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (28, 'topmenu', 'About Joomla!', 'about-joomla', 'index.php?option=com_content&view=article&id=25', 'component', 1, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (29, 'topmenu', 'Features', 'features', 'index.php?option=com_content&view=article&id=22', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (30, 'topmenu', 'The Community', 'the-community', 'index.php?option=com_content&view=article&id=27', 'component', 1, 0, 20, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (34, 'mainmenu', 'What''s New in 1.5?', 'what-is-new-in-1-5', 'index.php?option=com_content&view=article&id=22', 'component', -2, 0, 20, 1, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (40, 'keyconcepts', 'Extensions', 'extensions', 'index.php?option=com_content&view=article&id=26', 'component', 1, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (37, 'mainmenu', 'More about Joomla!', 'more-about-joomla', 'index.php?option=com_content&view=section&id=4', 'component', -2, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\nshow_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby=\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (43, 'keyconcepts', 'Example Pages', 'example-pages', 'index.php?option=com_content&view=article&id=43', 'component', 1, 0, 20, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (44, 'ExamplePages', 'Section Blog', 'section-blog', 'index.php?option=com_content&view=section&layout=blog&id=3', 'component', 1, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Example of Section Blog layout (FAQ section)\nshow_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\nshow_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_pri=\norderby_sec=\nshow_pagination=2\nshow_pagination_results=1\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (45, 'ExamplePages', 'Section Table', 'section-table', 'index.php?option=com_content&view=section&id=3', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Example of Table Blog layout (FAQ section)\nshow_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby=\nshow_noauth=0\nshow_title=1\nnlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (46, 'ExamplePages', 'Category Blog', 'categoryblog', 'index.php?option=com_content&view=category&layout=blog&id=31', 'component', 1, 0, 20, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Example of Category Blog layout (FAQs/General category)\nshow_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\nshow_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_pri=\norderby_sec=\nshow_pagination=2\nshow_pagination_results=1\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (47, 'ExamplePages', 'Category Table', 'category-table', 'index.php?option=com_content&view=category&id=32', 'component', 1, 0, 20, 0, 4, 62, '2008-08-14 02:48:13', 0, 0, 0, 0, 'show_page_title=1\npage_title=Example of Category Table layout (FAQs/Languages category)\nshow_headings=1\nshow_date=0\ndate_format=\nfilter=1\nfilter_type=title\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_sec=\nshow_pagination=1\nshow_pagination_limit=1\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (48, 'mainmenu', 'Web Links', 'web-links', 'index.php?option=com_weblinks&view=categories', 'component', -2, 0, 4, 0, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'page_title=Weblinks\nimage=-1\nimage_align=right\npageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (49, 'mainmenu', 'News Feeds', 'news-feeds', 'index.php?option=com_newsfeeds&view=categories', 'component', -2, 0, 11, 0, 8, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Newsfeeds\nshow_comp_description=1\ncomp_description=\nimage=-1\nimage_align=right\npageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_other_cats=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (50, 'mainmenu', 'The News', 'the-news', 'index.php?option=com_content&view=category&layout=blog&id=1', 'component', -2, 0, 20, 0, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=The News\nshow_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\nshow_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_pri=\norderby_sec=\nshow_pagination=2\nshow_pagination_results=1\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (51, 'usermenu', 'Submit an Article', 'submit-an-article', 'index.php?option=com_content&view=article&layout=form', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 2, 0, '', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (52, 'usermenu', 'Submit a Web Link', 'submit-a-web-link', 'index.php?option=com_weblinks&view=weblink&layout=form', 'component', 1, 0, 4, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 2, 0, '', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (68, 'sections', '', '', 'index.php?option=com_news_portal&task=section&id=3', 'content_section', 1, 0, 3, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\r\n			back_button=\r\n			header=\r\n			page_title=1\r\n			leading=1\r\n			intro=4\r\n			columns=2 \r\n			link=4\r\n			orderby_pri=\r\n			orderby_sec=\r\n			pagination=2\r\n			pagination_results=1\r\n			image=1\r\n			description=0\r\n			description_image=0\r\n			category=0\r\n			category_link=0\r\n			item_title=1\r\n			link_titles=\r\n			readmore=\r\n			rating=\r\n			author=\r\n			createdate=\r\n			modifydate=\r\n			pdf=\r\n			print=\r\n			email=\r\n			sectionid=3', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (53, 'mainmenu', 'Nosotros', 'nosotros', '#', 'url', 1, 0, 0, 0, 10, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (61, 'mainmenu', 'Comunicaciones', 'comunicaciones', 'index.php?option=com_content&view=article&id=50', 'component', 1, 59, 20, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (54, 'mainmenu', 'Vision', 'vision', 'index.php?option=com_content&view=article&id=44', 'component', 1, 53, 20, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (55, 'mainmenu', 'Quienes Somos', 'quienes-somos', 'index.php?option=com_content&view=article&id=45', 'component', 1, 53, 20, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (56, 'mainmenu', 'Equipo', 'equipo', 'index.php?option=com_content&view=article&id=46', 'component', 1, 53, 20, 1, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (57, 'mainmenu', 'Nuestras Oficinas', 'nuestras-oficinas', 'index.php?option=com_content&view=article&id=47', 'component', 1, 53, 20, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (58, 'mainmenu', 'Contacto', 'contacto', 'index.php?option=com_content&view=article&id=56', 'component', 1, 53, 20, 1, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (59, 'mainmenu', 'Servicios', 'servicios', '#', 'url', 1, 0, 0, 0, 11, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (60, 'mainmenu', 'Selección de Personal', 'seleccion-de-personal', 'index.php?option=com_content&view=article&id=49', 'component', 1, 59, 20, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (62, 'mainmenu', 'Diagnóstico Organizacional', 'diagnostico-organizacional', 'index.php?option=com_content&view=article&id=51', 'component', 1, 59, 20, 1, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (63, 'mainmenu', 'Clientes', 'clientes', 'index.php?option=com_content&view=article&id=55', 'component', 1, 0, 20, 0, 12, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (64, 'mainmenu', 'Contacto', 'contactos', 'index.php?option=com_content&view=article&id=56', 'component', 1, 0, 20, 0, 13, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (65, 'mainmenu', 'Curriculum', 'curriculum', 'index.php?option=com_content&view=article&id=57', 'component', 1, 0, 20, 0, 14, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (67, 'sections', '', '', 'index.php?option=com_news_portal&task=section&id=1', 'content_section', 1, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\r\n			back_button=\r\n			header=\r\n			page_title=1\r\n			leading=1\r\n			intro=4\r\n			columns=2 \r\n			link=4\r\n			orderby_pri=\r\n			orderby_sec=\r\n			pagination=2\r\n			pagination_results=1\r\n			image=1\r\n			description=0\r\n			description_image=0\r\n			category=0\r\n			category_link=0\r\n			item_title=1\r\n			link_titles=\r\n			readmore=\r\n			rating=\r\n			author=\r\n			createdate=\r\n			modifydate=\r\n			pdf=\r\n			print=\r\n			email=\r\n			sectionid=1', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (69, 'sections', '', '', 'index.php?option=com_news_portal&task=section&id=4', 'content_section', 1, 0, 4, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\r\n			back_button=\r\n			header=\r\n			page_title=1\r\n			leading=1\r\n			intro=4\r\n			columns=2 \r\n			link=4\r\n			orderby_pri=\r\n			orderby_sec=\r\n			pagination=2\r\n			pagination_results=1\r\n			image=1\r\n			description=0\r\n			description_image=0\r\n			category=0\r\n			category_link=0\r\n			item_title=1\r\n			link_titles=\r\n			readmore=\r\n			rating=\r\n			author=\r\n			createdate=\r\n			modifydate=\r\n			pdf=\r\n			print=\r\n			email=\r\n			sectionid=4', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (70, 'sections', '', '', 'index.php?option=com_news_portal&task=section&id=5', 'content_section', 1, 0, 5, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\r\n			back_button=\r\n			header=\r\n			page_title=1\r\n			leading=1\r\n			intro=4\r\n			columns=2 \r\n			link=4\r\n			orderby_pri=\r\n			orderby_sec=\r\n			pagination=2\r\n			pagination_results=1\r\n			image=1\r\n			description=0\r\n			description_image=0\r\n			category=0\r\n			category_link=0\r\n			item_title=1\r\n			link_titles=\r\n			readmore=\r\n			rating=\r\n			author=\r\n			createdate=\r\n			modifydate=\r\n			pdf=\r\n			print=\r\n			email=\r\n			sectionid=5', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (71, 'sections', '', '', 'index.php?option=com_news_portal&task=section&id=6', 'content_section', 1, 0, 6, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\r\n			back_button=\r\n			header=\r\n			page_title=1\r\n			leading=1\r\n			intro=4\r\n			columns=2 \r\n			link=4\r\n			orderby_pri=\r\n			orderby_sec=\r\n			pagination=2\r\n			pagination_results=1\r\n			image=1\r\n			description=0\r\n			description_image=0\r\n			category=0\r\n			category_link=0\r\n			item_title=1\r\n			link_titles=\r\n			readmore=\r\n			rating=\r\n			author=\r\n			createdate=\r\n			modifydate=\r\n			pdf=\r\n			print=\r\n			email=\r\n			sectionid=6', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (72, 'sections', '', '', 'index.php?option=com_news_portal&task=section&id=7', 'content_section', 1, 0, 7, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\r\n			back_button=\r\n			header=\r\n			page_title=1\r\n			leading=1\r\n			intro=4\r\n			columns=2 \r\n			link=4\r\n			orderby_pri=\r\n			orderby_sec=\r\n			pagination=2\r\n			pagination_results=1\r\n			image=1\r\n			description=0\r\n			description_image=0\r\n			category=0\r\n			category_link=0\r\n			item_title=1\r\n			link_titles=\r\n			readmore=\r\n			rating=\r\n			author=\r\n			createdate=\r\n			modifydate=\r\n			pdf=\r\n			print=\r\n			email=\r\n			sectionid=7', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (73, 'mainmenu', 'Ubicacion', 'ubicacion', 'index.php?option=com_content&view=article&id=59', 'component', 0, 53, 20, 1, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_menu_types`
-- 

DROP TABLE IF EXISTS `jos_menu_types`;
CREATE TABLE `jos_menu_types` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `menutype` varchar(75) NOT NULL default '',
  `title` varchar(255) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `menutype` (`menutype`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- Volcar la base de datos para la tabla `jos_menu_types`
-- 

INSERT INTO `jos_menu_types` (`id`, `menutype`, `title`, `description`) VALUES (1, 'mainmenu', 'Main Menu', 'The main menu for the site');
INSERT INTO `jos_menu_types` (`id`, `menutype`, `title`, `description`) VALUES (2, 'usermenu', 'User Menu', 'A Menu for logged in Users');
INSERT INTO `jos_menu_types` (`id`, `menutype`, `title`, `description`) VALUES (3, 'topmenu', 'Top Menu', 'Top level navigation');
INSERT INTO `jos_menu_types` (`id`, `menutype`, `title`, `description`) VALUES (4, 'othermenu', 'Resources', 'Additional links');
INSERT INTO `jos_menu_types` (`id`, `menutype`, `title`, `description`) VALUES (5, 'ExamplePages', 'Example Pages', 'Example Pages');
INSERT INTO `jos_menu_types` (`id`, `menutype`, `title`, `description`) VALUES (6, 'keyconcepts', 'Key Concepts', 'This describes some critical information for new Users.');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_messages`
-- 

DROP TABLE IF EXISTS `jos_messages`;
CREATE TABLE `jos_messages` (
  `message_id` int(10) unsigned NOT NULL auto_increment,
  `user_id_from` int(10) unsigned NOT NULL default '0',
  `user_id_to` int(10) unsigned NOT NULL default '0',
  `folder_id` int(10) unsigned NOT NULL default '0',
  `date_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `state` int(11) NOT NULL default '0',
  `priority` int(1) unsigned NOT NULL default '0',
  `subject` text NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY  (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `jos_messages`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_messages_cfg`
-- 

DROP TABLE IF EXISTS `jos_messages_cfg`;
CREATE TABLE `jos_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL default '0',
  `cfg_name` varchar(100) NOT NULL default '',
  `cfg_value` varchar(255) NOT NULL default '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `jos_messages_cfg`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_migration_backlinks`
-- 

DROP TABLE IF EXISTS `jos_migration_backlinks`;
CREATE TABLE `jos_migration_backlinks` (
  `itemid` int(11) NOT NULL default '0',
  `name` varchar(100) NOT NULL default '',
  `url` text NOT NULL,
  `sefurl` text NOT NULL,
  `newurl` text NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `jos_migration_backlinks`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_modules`
-- 

DROP TABLE IF EXISTS `jos_modules`;
CREATE TABLE `jos_modules` (
  `id` int(11) NOT NULL auto_increment,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL default '0',
  `position` varchar(50) default NULL,
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL default '0',
  `module` varchar(50) default NULL,
  `numnews` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `showtitle` tinyint(3) unsigned NOT NULL default '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL default '0',
  `client_id` tinyint(4) NOT NULL default '0',
  `control` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 AUTO_INCREMENT=76 ;

-- 
-- Volcar la base de datos para la tabla `jos_modules`
-- 

INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (1, 'Main Menu', '', 1, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_mainmenu', 0, 0, 1, 'menutype=mainmenu\nmoduleclass_sfx=_menu\n', 1, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (2, 'Login', '', 1, 'login', 0, '0000-00-00 00:00:00', 1, 'mod_login', 0, 0, 1, '', 1, 1, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (3, 'Popular', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_popular', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (4, 'Recent added Articles', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_latest', 0, 2, 1, 'ordering=c_dsc\nuser_id=0\ncache=0\n\n', 0, 1, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (5, 'Menu Stats', '', 5, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_stats', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (6, 'Unread Messages', '', 1, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_unread', 0, 2, 1, '', 1, 1, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (7, 'Online Users', '', 2, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_online', 0, 2, 1, '', 1, 1, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (8, 'Toolbar', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', 1, 'mod_toolbar', 0, 2, 1, '', 1, 1, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (9, 'Quick Icons', '', 1, 'icon', 0, '0000-00-00 00:00:00', 1, 'mod_quickicon', 0, 2, 1, '', 1, 1, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (10, 'Logged in Users', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_logged', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (11, 'Footer', '', 0, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_footer', 0, 0, 1, '', 1, 1, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (12, 'Admin Menu', '', 1, 'menu', 0, '0000-00-00 00:00:00', 1, 'mod_menu', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (13, 'Admin SubMenu', '', 1, 'submenu', 0, '0000-00-00 00:00:00', 1, 'mod_submenu', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (14, 'User Status', '', 1, 'status', 0, '0000-00-00 00:00:00', 1, 'mod_status', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (15, 'Title', '', 1, 'title', 0, '0000-00-00 00:00:00', 1, 'mod_title', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (16, 'Polls', '', 1, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_poll', 0, 0, 1, 'id=14\ncache=1', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (17, 'User Menu', '', 4, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_mainmenu', 0, 1, 1, 'menutype=usermenu\nmoduleclass_sfx=_menu\ncache=1', 1, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (18, 'Login Form', '', 8, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_login', 0, 0, 1, 'greeting=1\nname=0', 1, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (19, 'Latest News', '', 0, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_latestnews', 0, 0, 0, 'count=5\nordering=c_dsc\nuser_id=0\nshow_front=1\nsecid=6\ncatid=39\nmoduleclass_sfx=\ncache=1\ncache_time=900\n\n', 1, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (20, 'Statistics', '', 6, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_stats', 0, 0, 1, 'serverinfo=1\nsiteinfo=1\ncounter=1\nincrease=0\nmoduleclass_sfx=', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (21, 'Who''s Online', '', 1, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_whosonline', 0, 0, 1, 'online=1\nusers=1\nmoduleclass_sfx=', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (22, 'Popular', '', 6, 'user2', 0, '0000-00-00 00:00:00', 0, 'mod_mostread', 0, 0, 1, 'cache=1', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (23, 'Archive', '', 9, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_archive', 0, 0, 1, 'cache=1', 1, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (24, 'Sections', '', 10, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_sections', 0, 0, 1, 'cache=1', 1, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (25, 'Newsflash', '', 1, 'top', 0, '0000-00-00 00:00:00', 0, 'mod_newsflash', 0, 0, 1, 'catid=3\r\nstyle=random\r\nitems=\r\nmoduleclass_sfx=', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (26, 'Related Items', '', 11, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_related_items', 0, 0, 1, '', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (27, 'Search', '', 1, 'user4', 0, '0000-00-00 00:00:00', 0, 'mod_search', 0, 0, 0, 'cache=1', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (28, 'Random Image', '', 9, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_random_image', 0, 0, 1, '', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (29, 'Top Menu', '', 1, 'user3', 0, '0000-00-00 00:00:00', 0, 'mod_mainmenu', 0, 0, 0, 'cache=1\nmenutype=topmenu\nmenu_style=list_flat\nmenu_images=n\nmenu_images_align=left\nexpand_menu=n\nclass_sfx=-nav\nmoduleclass_sfx=\nindent_image1=0\nindent_image2=0\nindent_image3=0\nindent_image4=0\nindent_image5=0\nindent_image6=0', 1, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (30, 'Banners', '', 1, 'footer', 0, '0000-00-00 00:00:00', 0, 'mod_banners', 0, 0, 0, 'target=1\ncount=1\ncid=1\ncatid=33\ntag_search=0\nordering=random\nheader_text=\nfooter_text=\nmoduleclass_sfx=\ncache=1\ncache_time=15\n\n', 1, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (31, 'Resources', '', 2, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_mainmenu', 0, 0, 1, 'menutype=othermenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=_menu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (32, 'Wrapper', '', 12, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_wrapper', 0, 0, 1, '', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (33, 'Footer', '', 2, 'footer', 62, '2008-08-19 03:15:16', 1, 'mod_footer', 0, 0, 0, 'cache=1\n\n', 1, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (34, 'Feed Display', '', 13, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_feed', 0, 0, 1, '', 1, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (35, 'Breadcrumbs', '', 1, 'breadcrumb', 0, '0000-00-00 00:00:00', 0, 'mod_breadcrumbs', 0, 0, 1, 'moduleclass_sfx=\ncache=0\nshowHome=1\nhomeText=Home\nshowComponent=1\nseparator=\n\n', 1, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (36, 'Syndication', '', 3, 'syndicate', 0, '0000-00-00 00:00:00', 0, 'mod_syndicate', 0, 0, 0, '', 1, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (38, 'Advertisement', '', 3, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_banners', 0, 0, 1, 'count=4\r\nrandomise=0\r\ncid=0\r\ncatid=14\r\nheader_text=Featured Links:\r\nfooter_text=<a href="http://www.joomla.org">Ads by Joomla!</a>\r\nmoduleclass_sfx=_text\r\ncache=0\r\n\r\n', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (39, 'Example Pages', '', 5, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_mainmenu', 0, 0, 1, 'cache=1\nclass_sfx=\nmoduleclass_sfx=_menu\nmenutype=ExamplePages\nmenu_style=list_flat\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nfull_active_id=0\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\nwindow_open=\n\n', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (40, 'Key Concepts', '', 3, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_mainmenu', 0, 0, 1, 'cache=1\nclass_sfx=\nmoduleclass_sfx=_menu\nmenutype=keyconcepts\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nfull_active_id=0\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\nwindow_open=\n\n', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (41, 'Welcome to Joomla!', '<div style="padding: 5px"><p>Congratulations on choosing Joomla! as your content management system. We hope you are able to create a successful Web site with our program and maybe you will be able to give something back to the community later.</p><p>To make your start with Joomla! as smooth as possible, we want to give you some pointers to documentation, common questions and help on securing your server. A good place to start is the &quot;<a href="http://docs.joomla.org/beginners" target="_blank">Absolute Beginners Guide to Joomla!</a>&quot;.</p><p>For your most common questions the best place to start looking for answers is the <a href="http://help.joomla.org/component/option,com_easyfaq/Itemid,268/" target="_blank">Frequently Asked Questions (FAQ)</a> area.  If you are stuck on a particular screen in the Administration area of Joomla! (which is where you are now), then try clicking on the Help toolbar button which you will find on almost all screens.  This will take you to a page about that screen on our <a href="http://help.joomla.org" target="_blank">Help Site</a>.  If you still have questions then take a look on our <a href="http://forum.joomla.org" target="_blank">forum</a> which is most likely the biggest resource on Joomla! there is and you will find almost every question answered at least once, so please try using the search function before asking your question.</p><p>Security is a big concern for us, which is why we would like you to subscribe to the <a href="http://forum.joomla.org/viewforum.php?f=8" target="_blank">announcement forum</a> (by clicking on the Notify button) to always get the latest information on new releases for Joomla! You should also read the <a href="http://help.joomla.org/component/option,com_easyfaq/task,view/id,167/Itemid,268/" target="_blank">Joomla! Administrator''s Security Checklist</a> and regularly check the <a href="http://forum.joomla.org/viewforum.php?f=432" target="_blank">security forum</a>.</p><p>We hope you have much fun and success with Joomla! and hope to see you in the forum among the hundreds and thousands of contributors.</p><p>Your Joomla! team.<img alt="Smile" border="0" src="../plugins/editors/tinymce/jscripts/tiny_mce/plugins/emotions/images/smiley-smile.gif" title="Smile" /></p><p>P.S.: To remove this message, delete the &quot;Welcome to Joomla!&quot; Module in the Administrator screen of the Module Manager (on the Extensions menu).  Here is a <a href="index.php?option=com_modules&amp;client=1">quick link</a> to this screen.</p></div>', 1, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 2, 1, 'moduleclass_sfx=\n\n', 1, 1, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (42, 'JCE Latest News', '', 1, 'jce_cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_feed', 0, 0, 1, 'cache=1\r\n	cache_time=15\r\n	moduleclass_sfx=\r\n	rssurl=http://www.joomlacontenteditor.net/index.php?option=com_rss&feed=RSS2.0&type=com_frontpage&Itemid=1\r\n	rssrtl=0\r\n	rsstitle=0\r\n	rssdesc=0\r\n	rssimage=0\r\n	rssitems=3\r\n	rssitemdesc=1\r\n	word_count=100', 0, 1, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (43, 'JCE Control Panel Icons', '', 1, 'jce_icon', 0, '0000-00-00 00:00:00', 1, 'mod_jcequickicon', 0, 0, 0, '', 0, 1, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (44, 'MiniFrontPage Module for J! 15', '', 0, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_minifrontpage', 0, 0, 1, 'cache=0\nmoduleclass_sfx=\nsections=1,3,4\ncategories=1,2,25,27,28,29,30,31,32\norder=0\nperiod=1200\nloadorder=0\ncat_title=0\nshow_front=1\nshow_title=1\ntitle_link=1\nshow_author=1\nshow_date=1\nlimit=200\nfulllink=+ Full Story\ncolumns=3\ncount=10\nnum_intro=2\nthumb_embed=1\nthumb_width=64\nthumb_height=64\naspect=0\nheader_title_links=Another Articles\n\n', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (55, 'The Flash Module', '', 0, 'top', 0, '0000-00-00 00:00:00', 0, 'mod_flashmod', 0, 0, 0, 'moduleclass_sfx=\nfm_path=images/stories/home/\nfm_source=head.swf\nfm_width=868\nfm_height=110\nfm_name=\nfm_version=9.0.47.0\nfm_quality=high\nfm_loop=no\nfm_wmode=window\nfm_usejs=yes\nfm_noscript=flashmovie\nfm_noflash=\n\n', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (45, 'Joomla Featured Articles', '', 15, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_j15featuredarticles', 0, 0, 1, 'ids=(58,12,14)\nordering=1\nlayout=table\nmoduleclass_sfx=mainlevel\nlink=1\ncache=1\ncache_time=900\n\n', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (46, 'Novedades', '', 0, 'left', 62, '2008-10-01 03:51:03', 1, 'mod_breakingnews', 0, 0, 1, 'moduleclass_sfx=\nmode=0\ncatid=39,6\nid=\ncatorsec=1\nperiod=300\nshowcat=0\nshowdate=0\nshowauthor=0\nintroitems=0\nmaxchars=100\nlinkitems=3\nordering=0\nshowthumb=0\nthumbalign=left\nthumbW=75\nthumbH=75\naspect=1\ncache=1\ncache_time=900\n\n', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (71, 'News Sections', '', 0, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_news_portal', 0, 0, 1, 'count=50\nmoduleclass_sfx=\nmenu_item_class=mainlevel\n\n', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (47, 'Authors', '', 17, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_author_list', 0, 0, 1, 'count=10\n', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (48, 'Current articles', '', 18, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_current_articles', 0, 0, 1, '', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (49, 'Featured Article', '', 19, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_featured_article', 0, 0, 1, 'intro_mode=1\n', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (50, 'Magazine Issues', '', 20, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_magazine_issues', 0, 0, 1, 'edition_select=1\n', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (51, 'Magazines', '', 21, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_magazine_list', 0, 0, 1, '', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (52, 'Magazine Menu', '', 22, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_magazine_menu', 0, 0, 1, 'mag_count=5\nissue_count=5\nmenu_item_toplevel_class=mainlevel\nmenu_item_sublevel_class=sublevel\n', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (53, 'Upcoming Articles', '', 0, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_upcoming_articles', 0, 0, 0, 'catid=39\nmoduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (54, 'News Show II', '', 0, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_gk_news_block', 0, 0, 0, 'moduleclass_sfx=\nmodule_unique_id=gk_news_block-1\nwidth=300\nsource_type=0\nsource_amount=1\nsection=6\ncategory=39\nsections=\ncategories=\nnews_amount=3\nnews_sort_value=ordering\nnews_sort_order=DESC\nnews_frontpage=1\nnews_column=3\nnews_rows=3\nshow_list=0\nlist_style=1\nnews_content_header_pos=1\nnews_content_image_pos=2\nnews_content_text_pos=1\nnews_content_info_pos=1\nnews_content_readmore_pos=2\nnews_readmore_text=Más Información\nnews_header_link=1\nnews_image_link=1\nnews_text_link=0\nnews_author=1\nnews_cats=1\nnews_date=1\nnews_more_in=1\nnews_header_order=1\nnews_image_order=2\nnews_text_order=3\nnews_info_order=4\nnews_limit_type=0\nnews_limit=30\nclean_xhtml=1\nnews_content_timezone=0\nimg_height=0\nimg_width=0\npanel=1\npanel_font=1\npanel_amount=1\nuseMoo=1\nuseScript=1\n\n', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (56, 'Cabecera', '&lt;OBJECT classid=”clsid:D27CDB6E-AE6D-11cf-96B8-444553540000? codebase=” http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0? WIDTH=”918? HEIGHT=”200? id=”myMovieName”&gt;<br />&lt;param name=”allowScriptAccess” value=”sameDomain” /&gt;<br />&lt;param name=”movie” value=”templates/&lt;?php echo $this-&gt;template ?&gt;images/stories/home/head.swf” /&gt;<br />&lt;param name=”quality” value=”high” /&gt;<br />&lt;param name=”wmode” value=”transparent” /&gt;<br />&lt;PARAM NAME= bgcolor VALUE=#000000&gt;<br /><br />&lt;EMBED src=” templates/&lt;?php echo $this-&gt;template ?&gt;/images/stories/home/head.swf” quality=high wmode=”transparent” bgcolor=#000000 WIDTH=”860? HEIGHT=”150? NAME=”myMovieName” ALIGN=”" TYPE=”application/x-shockwave-flash” PLUGINSPAGE=” http://www.macromedia.com/go/getflashplayer”&gt;<br />&lt;/EMBED&gt;<br />&lt;/OBJECT&gt;', 0, 'user5', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (69, 'Jumi', '', 24, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_jumi', 0, 0, 1, 'file_pathname=modules/mod_jumi/jumi_demo.php\nphp_args=[first][second] You can put anything out of the brackets [and third]\nnotepad=Put your notes here ...\n', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (57, 'cabecera final', '<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" width="868" height="120"><param name="width" value="868" /><param name="height" value="120" /><param name="src" value="images/stories/home/head.swf" /><embed type="application/x-shockwave-flash" width="868" height="120" src="images/stories/home/head.swf"></embed></object>', 0, 'user5', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (58, 'prueba cabecera', '{activeswf}images/stories/home/head.swf|flash|868|150{/activeswf}', 7, 'user2', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (59, 'Selección de Personal', '<img style="margin: 0px; float: left;" title="maqueta_relaciones.jpg" alt="maqueta_relaciones.jpg" src="images/stories/home/maqueta_relaciones.jpg" width="458" height="117" />', 2, 'user4', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (60, 'Comunicaciones', '<img style="margin: 0px; float: left;" title="maqueta_seleccion.jpg" alt="maqueta_seleccion.jpg" src="images/stories/home/maqueta_seleccion.jpg" width="458" height="117" />', 3, 'user4', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (61, 'Diagnóstico Organizacional', '<img style="margin: 0px; float: left;" title="maqueta_comunicaciones.jpg" alt="maqueta_comunicaciones.jpg" src="images/stories/home/maqueta_comunicaciones.jpg" width="458" height="117" />', 4, 'user4', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (62, 'Novedades', '<div style="text-align: center"><img src="images/stories/home/maqueta_novedades.jpg" border="0" alt="maqueta_novedades.jpg" title="maqueta_novedades.jpg" width="178" height="255" /></div>', 0, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (63, 'Destacados', '<div id="tododestacados">\r\n<table border="0" cellpadding="0" cellspacing="0" width="520">\r\n<tbody>\r\n<tr>\r\n<td colspan="2" valign="top" height="356">\r\n<div id="bloquedestacados">\r\n<div id="tituloseleccion">Selección de Personal</div>\r\n<div id="fotoseleccion"></div>\r\n<div id="bajadaseleccion">Contruimos una base de datos de los potenciales candidatos, luego de recibir, revisar y analizar los antecedentes de los postulantes.</div>\r\n<div id="vermasseleccion"><a href="index.php?option=com_content&amp;view=article&amp;id=49:seleccion-de-personal&amp;catid=35:servicios&amp;Itemid=60">Ver más &gt;&gt;<br /></a></div>\r\n<div id="titulocomunicaciones">Comunicaciones</div>\r\n<div id="fotocomunicaciones"></div>\r\n<div id="bajadacomunicaciones">Elaboramos Estrategias globales de comunicación para empresas dirigidas hacia sus públicos internos y externos.</div>\r\n<div id="vermascomunicaciones"><a href="index.php?option=com_content&amp;view=article&amp;id=50:comunicaciones&amp;catid=35:servicios&amp;Itemid=61">Ver más &gt;&gt;<br /></a></div>\r\n<div id="titulodiagnostico">Diagnóstico Organizacional</div>\r\n<div id="fotodiagnostico"></div>\r\n<div id="bajadadiagnostico">Contamos con herramientas para el análisis y búsqueda exhaustiva de los factores críticos que están afectando el rendimiento de su empresa y planificar sus cambios.</div>\r\n<div id="vermasdiagnostico"><a href="index.php?option=com_content&amp;view=article&amp;id=51:diagnostico-organizacional&amp;catid=35:servicios&amp;Itemid=62">Ver más &gt;&gt;<br /></a></div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>', 0, 'user3', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (64, 'TEXTO CABECERA', 'TEXTO CABECERA', 0, 'top', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (65, 'LxMenu', '', 0, 'top', 0, '0000-00-00 00:00:00', 0, 'mod_lxmenu', 0, 0, 0, 'menutype=', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (66, 'MENUPRINCIPAL', '', 0, 'advert1', 0, '0000-00-00 00:00:00', 0, 'mod_swmenufree', 0, 0, 0, 'menutype=mainmenu\nmenustyle=mygosumenu\nmoduleID=66\nlevels=0\nparentid=0\nparent_level=0\nhybrid=0\nactive_menu=1\ntables=0\ncssload=0\nsub_indicator=1\nselectbox_hack=0\nshow_shadow=1\npadding_hack=0\nauto_position=0\ncache=0\ncache_time=1 hour\nmoduleclass_sfx=\neditor_hack=0\ntemplate=All\nlanguage=\ncomponent=All\n', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (67, 'MENUPRINCIPAL', '', 1, 'top', 0, '0000-00-00 00:00:00', 0, 'mod_swmenufree', 0, 0, 0, 'menutype=mainmenu\nmenustyle=transmenu\nmoduleID=67\nlevels=0\nparentid=1\nparent_level=0\nhybrid=0\nactive_menu=1\ntables=0\ncssload=1\nsub_indicator=0\nselectbox_hack=0\nshow_shadow=0\npadding_hack=1\nauto_position=0\ncache=0\ncache_time=1 hour\nmoduleclass_sfx=-menuposition\neditor_hack=0\ntemplate=All\nlanguage=\ncomponent=All\n', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (68, 'SWmenuPro', '', 0, 'top', 0, '0000-00-00 00:00:00', 0, 'mod_swmenupro', 0, 0, 1, '', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (70, 'Cabecera', ' <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" width="868" height="147" align="left"><param name="swliveconnect" value="true" /><param name="quality" value="high" /><param name="scale" value="noborder" /><param name="wmode" value="window" /><param name="src" value="images/stories/home/cabecera2.swf" /><param name="align" value="left" /><param name="vspace" value="0" /><param name="hspace" value="0" /><param name="width" value="868" /><param name="height" value="147" /><embed type="application/x-shockwave-flash" swliveconnect="true" quality="high" scale="noborder" wmode="window" src="images/stories/home/cabecera2.swf" align="left" vspace="0" hspace="0" width="868" height="147"></embed></object>', 0, 'top', 62, '2008-07-07 21:13:57', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (74, 'RokSlideshow', '', 0, 'user6', 0, '0000-00-00 00:00:00', 0, 'mod_rokslideshow', 0, 0, 0, 'moduleclass_sfx=\nwidth=300\nheight=250\nimagePath=images/stories/home/\nloadingDiv=1\nshowCaption=1\nshowTitleCaption=1\nheightCaption=45\ntitleSize=13px\ntitleColor=#fff\ndescSize=11px\ndescColor=#ccc\nsortCriteria=0\nsortOrder=0\nsortOrderManual=\nimageResize=1\nimageDuration=9000\ntransDuration=2000\ntransType=combo\npan=50\nzoom=50\ntransition=Expo.easeOut\n\n', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (72, 'Moolet Google Maps 1.0.2', '', 25, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_moolet_google_maps', 0, 0, 0, 'moduleclass_sfx=\nmodules_path=modules/\nmootools_file_path=modules/mod_moolet_google_maps/mootools.v1.11.js\nenable_jslib=1\nmoolet_dom_event=load\nenable_mootools_effects=1\nenable_internal_css=1\nenable_mootools_draggable=0\nslide_method=vertical\nmootools_effects_duration=1500\nmootools_effects_start_val=.6\nmootools_effects_mouseover_val=.9\nmootools_effects_mouseout_val=.6\nmootools_effects_mousedrag_val=.4\ngoogle_maps_width=500px\ngoogle_maps_height=350px\ndraggable_text=Draggable Moolet\nmoolet_mapplet_address_start=P-33.437422,-70.649536\nmoolet_mapplet_lightbox_text=Expandir mapa\nmoolet_mapplet_google_key=ABQIAAAAy9r5gXzRZ2s4I-GGll1YahQbBX-pAxHzP06mFm_w6mtI8_BlshTpGGh7AfcpcX98sB4tswZQaea3Tg\n\n', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (73, 'FacileForms', '', 26, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_facileforms', 0, 0, 1, 'ff_mod_page=1\nff_mod_align=1\n', 0, 0, '');
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (75, 'ISO', '<div style="text-align: center;"></div>\r\n<div style="text-align: center;"><img style="margin: 5px; vertical-align: middle;" title="iso_en_proceso.jpg" alt="iso_en_proceso.jpg" src="images/stories/iso_en_proceso.jpg" width="130" height="130" /></div>', 7, 'left', 62, '2009-01-28 18:39:06', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, '');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_modules_menu`
-- 

DROP TABLE IF EXISTS `jos_modules_menu`;
CREATE TABLE `jos_modules_menu` (
  `moduleid` int(11) NOT NULL default '0',
  `menuid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `jos_modules_menu`
-- 

INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (1, 0);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (16, 1);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (17, 0);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (18, 1);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (19, 1);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (21, 1);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (22, 1);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (22, 2);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (22, 4);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (22, 27);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (22, 36);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (25, 0);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (27, 0);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (29, 0);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (30, 0);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (31, 1);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (32, 0);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (33, 0);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (34, 0);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (35, 0);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (36, 0);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (38, 1);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (39, 43);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (39, 44);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (39, 45);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (39, 46);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (39, 47);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (40, 0);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (42, 0);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (44, 0);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (45, 1);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (46, 0);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (47, 0);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (48, 0);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (49, 0);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (50, 0);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (51, 0);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (52, 0);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (53, 1);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (54, 1);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (55, 0);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (56, 0);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (57, 0);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (58, 0);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (59, 0);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (60, 1);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (61, 1);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (62, 0);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (63, 1);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (64, 0);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (65, 0);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (66, 0);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (67, 0);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (68, 0);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (69, 0);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (70, 0);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (71, 1);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (72, 55);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (73, 0);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (74, 57);
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (75, 0);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_newsfeeds`
-- 

DROP TABLE IF EXISTS `jos_newsfeeds`;
CREATE TABLE `jos_newsfeeds` (
  `catid` int(11) NOT NULL default '0',
  `id` int(11) NOT NULL auto_increment,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL default '',
  `link` text NOT NULL,
  `filename` varchar(200) default NULL,
  `published` tinyint(1) NOT NULL default '0',
  `numarticles` int(11) unsigned NOT NULL default '1',
  `cache_time` int(11) unsigned NOT NULL default '3600',
  `checked_out` tinyint(3) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `rtl` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `published` (`published`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- 
-- Volcar la base de datos para la tabla `jos_newsfeeds`
-- 

INSERT INTO `jos_newsfeeds` (`catid`, `id`, `name`, `alias`, `link`, `filename`, `published`, `numarticles`, `cache_time`, `checked_out`, `checked_out_time`, `ordering`, `rtl`) VALUES (4, 1, 'Joomla! - Official News', 'joomla-official-news', 'http://www.joomla.org/index.php?option=com_rss_xtd&feed=RSS2.0&type=com_frontpage&Itemid=1', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 8, 0);
INSERT INTO `jos_newsfeeds` (`catid`, `id`, `name`, `alias`, `link`, `filename`, `published`, `numarticles`, `cache_time`, `checked_out`, `checked_out_time`, `ordering`, `rtl`) VALUES (4, 2, 'Joomla! - Community News', 'joomla-community-news', 'http://www.joomla.org/index.php?option=com_rss_xtd&feed=RSS2.0&type=com_content&task=blogcategory&id=0&Itemid=33', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 9, 0);
INSERT INTO `jos_newsfeeds` (`catid`, `id`, `name`, `alias`, `link`, `filename`, `published`, `numarticles`, `cache_time`, `checked_out`, `checked_out_time`, `ordering`, `rtl`) VALUES (6, 3, 'Linux Today', 'linux-today', 'http://linuxtoday.com/backend/my-netscape.rdf', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `jos_newsfeeds` (`catid`, `id`, `name`, `alias`, `link`, `filename`, `published`, `numarticles`, `cache_time`, `checked_out`, `checked_out_time`, `ordering`, `rtl`) VALUES (5, 4, 'Business News', 'business-news', 'http://headlines.internet.com/internetnews/bus-news/news.rss', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 2, 0);
INSERT INTO `jos_newsfeeds` (`catid`, `id`, `name`, `alias`, `link`, `filename`, `published`, `numarticles`, `cache_time`, `checked_out`, `checked_out_time`, `ordering`, `rtl`) VALUES (7, 5, 'Web Developer News', 'web-developer-news', 'http://headlines.internet.com/internetnews/wd-news/news.rss', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 3, 0);
INSERT INTO `jos_newsfeeds` (`catid`, `id`, `name`, `alias`, `link`, `filename`, `published`, `numarticles`, `cache_time`, `checked_out`, `checked_out_time`, `ordering`, `rtl`) VALUES (6, 6, 'Linux Central:New Products', 'linux-central-news-products', 'http://linuxcentral.com/backend/lcnew.rdf', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `jos_newsfeeds` (`catid`, `id`, `name`, `alias`, `link`, `filename`, `published`, `numarticles`, `cache_time`, `checked_out`, `checked_out_time`, `ordering`, `rtl`) VALUES (6, 7, 'Linux Central:Best Selling', 'linux-central-best-selling', 'http://linuxcentral.com/backend/lcbestns.rdf', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 5, 0);
INSERT INTO `jos_newsfeeds` (`catid`, `id`, `name`, `alias`, `link`, `filename`, `published`, `numarticles`, `cache_time`, `checked_out`, `checked_out_time`, `ordering`, `rtl`) VALUES (6, 8, 'Linux Central:Daily Specials', 'linux-central-daily-specials', 'http://linuxcentral.com/backend/lcspecialns.rdf', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 6, 0);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_plugins`
-- 

DROP TABLE IF EXISTS `jos_plugins`;
CREATE TABLE `jos_plugins` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  `element` varchar(100) NOT NULL default '',
  `folder` varchar(100) NOT NULL default '',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `published` tinyint(3) NOT NULL default '0',
  `iscore` tinyint(3) NOT NULL default '0',
  `client_id` tinyint(3) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_folder` (`published`,`client_id`,`access`,`folder`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

-- 
-- Volcar la base de datos para la tabla `jos_plugins`
-- 

INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (1, 'Authentication - Joomla', 'joomla', 'authentication', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (2, 'Authentication - LDAP', 'ldap', 'authentication', 0, 2, 0, 1, 0, 0, '0000-00-00 00:00:00', 'host=\nport=389\nuse_ldapV3=0\nnegotiate_tls=0\nno_referrals=0\nauth_method=bind\nbase_dn=\nsearch_string=\nusers_dn=\nusername=\npassword=\nldap_fullname=fullName\nldap_email=mail\nldap_uid=uid\n\n');
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (3, 'Authentication - GMail', 'gmail', 'authentication', 0, 4, 0, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (4, 'Authentication - OpenID', 'openid', 'authentication', 0, 3, 0, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (5, 'User - Joomla!', 'joomla', 'user', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'autoregister=1\n\n');
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (6, 'Search - Content', 'content', 'search', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\n\n');
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (7, 'Search - Contacts', 'contacts', 'search', 0, 3, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (8, 'Search - Categories', 'categories', 'search', 0, 4, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (9, 'Search - Sections', 'sections', 'search', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (10, 'Search - Newsfeeds', 'newsfeeds', 'search', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (11, 'Search - Weblinks', 'weblinks', 'search', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (12, 'Content - Pagebreak', 'pagebreak', 'content', 0, 10000, 1, 1, 0, 0, '0000-00-00 00:00:00', 'enabled=1\ntitle=1\nmultipage_toc=1\nshowall=1\n\n');
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (13, 'Content - Rating', 'vote', 'content', 0, 4, 1, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (14, 'Content - Email Cloaking', 'emailcloak', 'content', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'mode=1\n\n');
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (15, 'Content - Code Hightlighter (GeSHi)', 'geshi', 'content', 0, 5, 0, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (16, 'Content - Load Module', 'loadmodule', 'content', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'enabled=1\nstyle=0\n\n');
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (17, 'Content - Page Navigation', 'pagenavigation', 'content', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'position=1\n\n');
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (18, 'Editor - No Editor', 'none', 'editors', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (19, 'Editor - TinyMCE 2.0', 'tinymce', 'editors', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'theme=advanced\ncleanup=1\ncleanup_startup=0\nautosave=0\ncompressed=0\nrelative_urls=1\ntext_direction=ltr\nlang_mode=0\nlang_code=en\ninvalid_elements=applet\ncontent_css=1\ncontent_css_custom=\nnewlines=0\ntoolbar=top\nhr=1\nsmilies=1\ntable=1\nstyle=1\nlayer=1\nxhtmlxtras=0\ntemplate=0\ndirectionality=1\nfullscreen=1\nhtml_height=550\nhtml_width=750\npreview=1\ninsertdate=1\nformat_date=%Y-%m-%d\ninserttime=1\nformat_time=%H:%M:%S\n\n');
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (20, 'Editor - XStandard Lite 2.0', 'xstandard', 'editors', 0, 3, 0, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (21, 'Editor Button - Image', 'image', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (22, 'Editor Button - Pagebreak', 'pagebreak', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (23, 'Editor Button - Readmore', 'readmore', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (24, 'XML-RPC - Joomla', 'joomla', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (25, 'XML-RPC - Blogger API', 'blogger', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', 'catid=1\nsectionid=0\n\n');
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (27, 'System - SEF', 'sef', 'system', 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (28, 'System - Debug', 'debug', 'system', 0, 2, 1, 0, 0, 0, '0000-00-00 00:00:00', 'queries=1\nmemory=1\nlangauge=1\n\n');
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (29, 'System - Legacy', 'legacy', 'system', 0, 3, 1, 1, 0, 0, '0000-00-00 00:00:00', 'route=0\n\n');
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (30, 'System - Cache', 'cache', 'system', 0, 4, 0, 1, 0, 0, '0000-00-00 00:00:00', 'browsercache=0\ncachetime=15\n\n');
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (31, 'System - Log', 'log', 'system', 0, 5, 0, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (32, 'System - Remember Me', 'remember', 'system', 0, 6, 1, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (33, 'System - Backlink', 'backlink', 'system', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (34, 'Editor - JCE 1.5.0', 'jce', 'editors', 0, 4, 1, 0, 0, 0, '0000-00-00 00:00:00', 'editor_width=\neditor_height=\neditor_state=mceEditor\neditor_toggle_text=[show/hide]\neditor_toggle=1\neditor_table_inline_editing=0\neditor_theme_advanced_toolbar_location=top\neditor_layout_rows=5\neditor_skin=default\neditor_skin_variant=default\neditor_inlinepopups_skin=clearlooks2\neditor_verify_html=0\neditor_relative_urls=1\neditor_fix_table_elements=1\neditor_fix_list_elements=1\neditor_pluginmode=0\neditor_invalid_elements=applet\neditor_extended_elements=\neditor_event_elements=td,img,a\neditor_allow_script=1\neditor_allow_php=1\neditor_forced_root_block=0\neditor_newlines=0\neditor_body_class_type=custom\neditor_body_class_custom=\neditor_content_css=1\neditor_content_css_custom=templates/$template/css/editor_content.css\neditor_theme_advanced_fonts_add=\neditor_theme_advanced_fonts_remove=\neditor_font_size_style_values=\neditor_font_size_classes=\neditor_theme_advanced_blockformats=p,div,h1,h2,h3,h4,h5,h6,blockquote,dt,dd,code,samp,pre\neditor_upload_method=html\neditor_folder_tree=1\neditor_dir=images/stories\neditor_max_size=1024\neditor_theme_advanced_source_editor_height=550\neditor_theme_advanced_source_editor_width=750\neditor_preview_height=550\neditor_preview_width=750\neditor_custom_colors=\neditor_custom_config=\neditor_callback_file=\n\n');
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (35, 'Editor - JoomlaFCK', 'fckeditor', 'editors', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'toolbar=Advanced\nskin=office2003\ncontent_css=1\nimagePath=/images/stories/\ntext_direction=ltr\nshiftentermode=1\nwwidth=100%\nhheight=480\n');
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (36, 'Google Maps', 'plugin_googlemap2', 'content', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'publ=1\ndebug=0\nplugincode=mosmap\nGoogle_API_version=2.x\nGoogle_API_key=ABQIAAAAy9r5gXzRZ2s4I-GGll1YahQbBX-pAxHzP06mFm_w6mtI8_BlshTpGGh7AfcpcX98sB4tswZQaea3Tg\nGoogle_Multi_API_key=\nurlsetting=http_host\nwidth=100%\nheight=400px\nlat=52.075581\nlon=4.541513\ncenterlat=\ncenterlon=\naddress=\nzoom=10\nzoomType=Large\nzoomNew=0\nzoomWheel=0\nmapType=Hybrid\nshowMaptype=1\nshowScale=1\noverview=1\ndragging=1\nmarker=1\nicon=\niconwidth=\niconheight=\niconshadow=\niconshadowwidth=\niconshadowheight=\niconshadowanchorx=\niconshadowanchory=\niconanchorx=\niconanchory=\niconinfoanchorx=\niconinfoanchory=\nicontransparent=\niconimagemap=\ndir=0\ntraffic=1\npanoramio=0\nadsmanager=0\nmaxads=3\nlocalsearch=0\nadsense=\nchannel=\ngooglebar=0\nsearchlist=inline\nsearchtarget=_blank\nsearchzoompan=1\ntxtdir=Directions:\ntxtgetdir=Get Directions\ntxtfrom=Dese:\ntxtto=To here\ntxtdiraddr=Address:\ngotoaddr=0\ntxtaddr=Address\nerraddr=Address ## not found!\nalign=center\nlangtype=site\nlang=\nlightbox=0\ntxtlightbox=Open lightbox\nlbxwidth=100%\nlbxheight=700px\neffect=none\n\n');
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (37, 'css2switch', 'css2switch', 'system', 0, 8, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (38, 'mos_magazine', 'mos_magazine', 'content', 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (39, 'activeSWF', 'activeswf', 'content', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (40, 'sIFR mambot', 'bot_sifr', 'system', 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (41, 'Jumi', 'jumi', 'content', 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (42, 'FacileForms', 'bot_facileforms', 'content', 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (43, 'chronocontact', 'chronocontact', 'content', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'type=1\n');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_poll_data`
-- 

DROP TABLE IF EXISTS `jos_poll_data`;
CREATE TABLE `jos_poll_data` (
  `id` int(11) NOT NULL auto_increment,
  `pollid` int(11) NOT NULL default '0',
  `text` text NOT NULL,
  `hits` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `pollid` (`pollid`,`text`(1))
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

-- 
-- Volcar la base de datos para la tabla `jos_poll_data`
-- 

INSERT INTO `jos_poll_data` (`id`, `pollid`, `text`, `hits`) VALUES (1, 14, 'Community Sites', 2);
INSERT INTO `jos_poll_data` (`id`, `pollid`, `text`, `hits`) VALUES (2, 14, 'Public Brand Sites', 3);
INSERT INTO `jos_poll_data` (`id`, `pollid`, `text`, `hits`) VALUES (3, 14, 'eCommerce', 1);
INSERT INTO `jos_poll_data` (`id`, `pollid`, `text`, `hits`) VALUES (4, 14, 'Blogs', 0);
INSERT INTO `jos_poll_data` (`id`, `pollid`, `text`, `hits`) VALUES (5, 14, 'Intranets', 0);
INSERT INTO `jos_poll_data` (`id`, `pollid`, `text`, `hits`) VALUES (6, 14, 'Photo and Media Sites', 2);
INSERT INTO `jos_poll_data` (`id`, `pollid`, `text`, `hits`) VALUES (7, 14, 'All of the Above!', 3);
INSERT INTO `jos_poll_data` (`id`, `pollid`, `text`, `hits`) VALUES (8, 14, '', 0);
INSERT INTO `jos_poll_data` (`id`, `pollid`, `text`, `hits`) VALUES (9, 14, '', 0);
INSERT INTO `jos_poll_data` (`id`, `pollid`, `text`, `hits`) VALUES (10, 14, '', 0);
INSERT INTO `jos_poll_data` (`id`, `pollid`, `text`, `hits`) VALUES (11, 14, '', 0);
INSERT INTO `jos_poll_data` (`id`, `pollid`, `text`, `hits`) VALUES (12, 14, '', 0);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_poll_date`
-- 

DROP TABLE IF EXISTS `jos_poll_date`;
CREATE TABLE `jos_poll_date` (
  `id` bigint(20) NOT NULL auto_increment,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL default '0',
  `poll_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

-- 
-- Volcar la base de datos para la tabla `jos_poll_date`
-- 

INSERT INTO `jos_poll_date` (`id`, `date`, `vote_id`, `poll_id`) VALUES (1, '2006-10-09 13:01:58', 1, 14);
INSERT INTO `jos_poll_date` (`id`, `date`, `vote_id`, `poll_id`) VALUES (2, '2006-10-10 15:19:43', 7, 14);
INSERT INTO `jos_poll_date` (`id`, `date`, `vote_id`, `poll_id`) VALUES (3, '2006-10-11 11:08:16', 7, 14);
INSERT INTO `jos_poll_date` (`id`, `date`, `vote_id`, `poll_id`) VALUES (4, '2006-10-11 15:02:26', 2, 14);
INSERT INTO `jos_poll_date` (`id`, `date`, `vote_id`, `poll_id`) VALUES (5, '2006-10-11 15:43:03', 7, 14);
INSERT INTO `jos_poll_date` (`id`, `date`, `vote_id`, `poll_id`) VALUES (6, '2006-10-11 15:43:38', 7, 14);
INSERT INTO `jos_poll_date` (`id`, `date`, `vote_id`, `poll_id`) VALUES (7, '2006-10-12 00:51:13', 2, 14);
INSERT INTO `jos_poll_date` (`id`, `date`, `vote_id`, `poll_id`) VALUES (8, '2007-05-10 19:12:29', 3, 14);
INSERT INTO `jos_poll_date` (`id`, `date`, `vote_id`, `poll_id`) VALUES (9, '2007-05-14 14:18:00', 6, 14);
INSERT INTO `jos_poll_date` (`id`, `date`, `vote_id`, `poll_id`) VALUES (10, '2007-06-10 15:20:29', 6, 14);
INSERT INTO `jos_poll_date` (`id`, `date`, `vote_id`, `poll_id`) VALUES (11, '2007-07-03 12:37:53', 2, 14);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_poll_menu`
-- 

DROP TABLE IF EXISTS `jos_poll_menu`;
CREATE TABLE `jos_poll_menu` (
  `pollid` int(11) NOT NULL default '0',
  `menuid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`pollid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `jos_poll_menu`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_polls`
-- 

DROP TABLE IF EXISTS `jos_polls`;
CREATE TABLE `jos_polls` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `voters` int(9) NOT NULL default '0',
  `checked_out` int(11) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL default '0',
  `access` int(11) NOT NULL default '0',
  `lag` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

-- 
-- Volcar la base de datos para la tabla `jos_polls`
-- 

INSERT INTO `jos_polls` (`id`, `title`, `alias`, `voters`, `checked_out`, `checked_out_time`, `published`, `access`, `lag`) VALUES (14, 'Joomla! is used for?', 'joomla-is-used-for', 11, 0, '0000-00-00 00:00:00', 1, 0, 86400);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_sections`
-- 

DROP TABLE IF EXISTS `jos_sections`;
CREATE TABLE `jos_sections` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `image` text NOT NULL,
  `scope` varchar(50) NOT NULL default '',
  `image_position` varchar(30) NOT NULL default '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `count` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_scope` (`scope`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- 
-- Volcar la base de datos para la tabla `jos_sections`
-- 

INSERT INTO `jos_sections` (`id`, `title`, `name`, `alias`, `image`, `scope`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `ordering`, `access`, `count`, `params`) VALUES (1, 'News', '', 'news', 'articles.jpg', 'content', 'right', 'Select a news topic from the list below, then select a news article to read.', 1, 0, '0000-00-00 00:00:00', 3, 0, 2, '');
INSERT INTO `jos_sections` (`id`, `title`, `name`, `alias`, `image`, `scope`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `ordering`, `access`, `count`, `params`) VALUES (3, 'FAQs', '', 'faqs', 'key.jpg', 'content', 'left', 'From the list below choose one of our FAQs topics, then select an FAQ to read. If you have a question which is not in this section, please contact us.', 1, 0, '0000-00-00 00:00:00', 5, 0, 23, '');
INSERT INTO `jos_sections` (`id`, `title`, `name`, `alias`, `image`, `scope`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `ordering`, `access`, `count`, `params`) VALUES (4, 'About Joomla!', '', 'about-joomla', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 2, 0, 14, '');
INSERT INTO `jos_sections` (`id`, `title`, `name`, `alias`, `image`, `scope`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `ordering`, `access`, `count`, `params`) VALUES (5, 'Corporativo', '', 'corporativo', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 6, 0, 5, '');
INSERT INTO `jos_sections` (`id`, `title`, `name`, `alias`, `image`, `scope`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `ordering`, `access`, `count`, `params`) VALUES (6, 'Noticias', '', 'noticias', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 7, 0, 2, '');
INSERT INTO `jos_sections` (`id`, `title`, `name`, `alias`, `image`, `scope`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `ordering`, `access`, `count`, `params`) VALUES (7, 'multimedia', '', 'multimedia', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 8, 0, 0, '');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_session`
-- 

DROP TABLE IF EXISTS `jos_session`;
CREATE TABLE `jos_session` (
  `username` varchar(150) default '',
  `time` varchar(14) default '',
  `session_id` varchar(200) NOT NULL default '0',
  `guest` tinyint(4) default '1',
  `userid` int(11) default '0',
  `usertype` varchar(50) default '',
  `gid` tinyint(3) unsigned NOT NULL default '0',
  `client_id` tinyint(3) unsigned NOT NULL default '0',
  `data` longtext,
  PRIMARY KEY  (`session_id`(64)),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `jos_session`
-- 

INSERT INTO `jos_session` (`username`, `time`, `session_id`, `guest`, `userid`, `usertype`, `gid`, `client_id`, `data`) VALUES ('', '1235232287', '2d1d9f61679cd6fe19ba770b834b64b9', 1, 0, '', 0, 0, '__default|a:7:{s:15:"session.counter";i:14;s:19:"session.timer.start";i:1235231944;s:18:"session.timer.last";i:1235232282;s:17:"session.timer.now";i:1235232287;s:22:"session.client.browser";s:118:"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.0.04506)";s:8:"registry";O:9:"jregistry":3:{s:7:"_errors";a:0:{}s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}}s:4:"user";O:5:"juser":19:{s:7:"_errors";a:0:{}s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"jparameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:78:"/var/www/virtual/clbconsultores.cl/www/libraries/joomla/html/parameter/element";}s:7:"_errors";a:0:{}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}}s:9:"_errorMsg";N;}}');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_stats_agents`
-- 

DROP TABLE IF EXISTS `jos_stats_agents`;
CREATE TABLE `jos_stats_agents` (
  `agent` varchar(255) NOT NULL default '',
  `type` tinyint(1) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `jos_stats_agents`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_swmenu_config`
-- 

DROP TABLE IF EXISTS `jos_swmenu_config`;
CREATE TABLE `jos_swmenu_config` (
  `id` int(11) NOT NULL default '0',
  `main_top` smallint(8) default '0',
  `main_left` smallint(8) default '0',
  `main_height` smallint(8) default '20',
  `sub_border_over` varchar(30) default '0',
  `main_width` smallint(8) default '100',
  `sub_width` smallint(8) default '100',
  `main_back` varchar(7) default '#4682B4',
  `main_over` varchar(7) default '#5AA7E5',
  `sub_back` varchar(7) default '#4682B4',
  `sub_over` varchar(7) default '#5AA7E5',
  `sub_border` varchar(30) default '#FFFFFF',
  `main_font_size` smallint(8) default '0',
  `sub_font_size` smallint(8) default '0',
  `main_border_over` varchar(30) default '0',
  `sub_font_color` varchar(7) default '#000000',
  `main_border` varchar(30) default '#FFFFFF',
  `main_font_color` varchar(7) default '#000000',
  `sub_font_color_over` varchar(7) default '#FFFFFF',
  `main_font_color_over` varchar(7) default '#FFFFFF',
  `main_align` varchar(8) default 'left',
  `sub_align` varchar(8) default 'left',
  `sub_height` smallint(7) default '20',
  `position` varchar(10) default 'absolute',
  `orientation` varchar(10) default 'horizontal',
  `font_family` varchar(50) default 'Arial',
  `font_weight` varchar(10) default 'normal',
  `font_weight_over` varchar(10) default 'normal',
  `level2_sub_top` int(11) default '0',
  `level2_sub_left` int(11) default '0',
  `level1_sub_top` int(11) NOT NULL default '0',
  `level1_sub_left` int(11) NOT NULL default '0',
  `main_back_image` varchar(100) default NULL,
  `main_back_image_over` varchar(100) default NULL,
  `sub_back_image` varchar(100) default NULL,
  `sub_back_image_over` varchar(100) default NULL,
  `specialA` varchar(50) default '80',
  `main_padding` varchar(40) default '0px 0px 0px 0px',
  `sub_padding` varchar(40) default '0px 0px 0px 0px',
  `specialB` varchar(100) default '50',
  `sub_font_family` varchar(50) default 'Arial',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `jos_swmenu_config`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_swmenu_extended`
-- 

DROP TABLE IF EXISTS `jos_swmenu_extended`;
CREATE TABLE `jos_swmenu_extended` (
  `ext_id` int(11) NOT NULL auto_increment,
  `menu_id` int(11) NOT NULL default '0',
  `image` varchar(100) default NULL,
  `image_over` varchar(100) default NULL,
  `moduleID` int(11) NOT NULL default '0',
  `show_name` int(2) NOT NULL default '1',
  `image_align` varchar(20) NOT NULL default 'left',
  `target_level` int(11) NOT NULL default '1',
  PRIMARY KEY  (`ext_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `jos_swmenu_extended`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_swmenufree_config`
-- 

DROP TABLE IF EXISTS `jos_swmenufree_config`;
CREATE TABLE `jos_swmenufree_config` (
  `id` int(11) NOT NULL default '0',
  `main_top` smallint(8) default '0',
  `main_left` smallint(8) default '0',
  `main_height` smallint(8) default '20',
  `sub_border_over` varchar(30) default '0',
  `main_width` smallint(8) default '100',
  `sub_width` smallint(8) default '100',
  `main_back` varchar(7) default '#4682B4',
  `main_over` varchar(7) default '#5AA7E5',
  `sub_back` varchar(7) default '#4682B4',
  `sub_over` varchar(7) default '#5AA7E5',
  `sub_border` varchar(30) default '#FFFFFF',
  `main_font_size` smallint(8) default '0',
  `sub_font_size` smallint(8) default '0',
  `main_border_over` varchar(30) default '0',
  `sub_font_color` varchar(7) default '#000000',
  `main_border` varchar(30) default '#FFFFFF',
  `main_font_color` varchar(7) default '#000000',
  `sub_font_color_over` varchar(7) default '#FFFFFF',
  `main_font_color_over` varchar(7) default '#FFFFFF',
  `main_align` varchar(8) default 'left',
  `sub_align` varchar(8) default 'left',
  `sub_height` smallint(7) default '20',
  `position` varchar(10) default 'absolute',
  `orientation` varchar(20) default NULL,
  `font_family` varchar(50) default 'Arial',
  `font_weight` varchar(10) default 'normal',
  `font_weight_over` varchar(10) default 'normal',
  `level2_sub_top` int(11) default '0',
  `level2_sub_left` int(11) default '0',
  `level1_sub_top` int(11) NOT NULL default '0',
  `level1_sub_left` int(11) NOT NULL default '0',
  `main_back_image` varchar(100) default NULL,
  `main_back_image_over` varchar(100) default NULL,
  `sub_back_image` varchar(100) default NULL,
  `sub_back_image_over` varchar(100) default NULL,
  `specialA` varchar(50) default '80',
  `main_padding` varchar(40) default '0px 0px 0px 0px',
  `sub_padding` varchar(40) default '0px 0px 0px 0px',
  `specialB` varchar(100) default '50',
  `sub_font_family` varchar(50) default 'Arial',
  `extra` mediumtext,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `jos_swmenufree_config`
-- 

INSERT INTO `jos_swmenufree_config` (`id`, `main_top`, `main_left`, `main_height`, `sub_border_over`, `main_width`, `sub_width`, `main_back`, `main_over`, `sub_back`, `sub_over`, `sub_border`, `main_font_size`, `sub_font_size`, `main_border_over`, `sub_font_color`, `main_border`, `main_font_color`, `sub_font_color_over`, `main_font_color_over`, `main_align`, `sub_align`, `sub_height`, `position`, `orientation`, `font_family`, `font_weight`, `font_weight_over`, `level2_sub_top`, `level2_sub_left`, `level1_sub_top`, `level1_sub_left`, `main_back_image`, `main_back_image_over`, `sub_back_image`, `sub_back_image_over`, `specialA`, `main_padding`, `sub_padding`, `specialB`, `sub_font_family`, `extra`) VALUES (1, 0, 0, 0, '1px none #11B8F4', 0, 0, '#000000', '#CCCCCC', '#000000', '#CCCCCC', '0px solid #FFFFFF', 12, 12, '1px solid #FFFFFF', '#ffFFFF', '0px solid #FFFFFF', '#FFFFFF', '#FFFFFF', '#ffFFFF', 'left', 'left', 0, 'left', 'horizontal/down', 'Verdana, Arial, Helvetica, sans-serif', 'normal', 'bold', 0, 0, 0, 0, '', '', '', '', '85', '5px 10px 5px 5px', '5px 5px 5px 5px', '300', 'Verdana, Arial, Helvetica, sans-serif', NULL);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_templates_menu`
-- 

DROP TABLE IF EXISTS `jos_templates_menu`;
CREATE TABLE `jos_templates_menu` (
  `template` varchar(255) NOT NULL default '',
  `menuid` int(11) NOT NULL default '0',
  `client_id` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`menuid`,`client_id`,`template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `jos_templates_menu`
-- 

INSERT INTO `jos_templates_menu` (`template`, `menuid`, `client_id`) VALUES ('rt_colormatic_j15', 0, 0);
INSERT INTO `jos_templates_menu` (`template`, `menuid`, `client_id`) VALUES ('khepri', 0, 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_users`
-- 

DROP TABLE IF EXISTS `jos_users`;
CREATE TABLE `jos_users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `username` varchar(150) NOT NULL default '',
  `email` varchar(100) NOT NULL default '',
  `password` varchar(100) NOT NULL default '',
  `usertype` varchar(25) NOT NULL default '',
  `block` tinyint(4) NOT NULL default '0',
  `sendEmail` tinyint(4) default '0',
  `gid` tinyint(3) unsigned NOT NULL default '1',
  `registerDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL default '',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `gid_block` (`gid`,`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 AUTO_INCREMENT=63 ;

-- 
-- Volcar la base de datos para la tabla `jos_users`
-- 

INSERT INTO `jos_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `gid`, `registerDate`, `lastvisitDate`, `activation`, `params`) VALUES (62, 'Administrator', 'admin', 'webmaster@clbconsultores.cl', '21232f297a57a5a743894a0e4a801fc3', 'Super Administrator', 0, 1, 25, '2008-06-29 11:02:17', '2009-01-28 18:28:26', '', '');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jos_weblinks`
-- 

DROP TABLE IF EXISTS `jos_weblinks`;
CREATE TABLE `jos_weblinks` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `catid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `title` varchar(250) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `url` varchar(250) NOT NULL default '',
  `description` text NOT NULL,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL default '0',
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `archived` tinyint(1) NOT NULL default '0',
  `approved` tinyint(1) NOT NULL default '1',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `catid` (`catid`,`published`,`archived`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- Volcar la base de datos para la tabla `jos_weblinks`
-- 

INSERT INTO `jos_weblinks` (`id`, `catid`, `sid`, `title`, `alias`, `url`, `description`, `date`, `hits`, `published`, `checked_out`, `checked_out_time`, `ordering`, `archived`, `approved`, `params`) VALUES (1, 2, 0, 'Joomla!', 'joomla', 'http://www.joomla.org', 'Home of Joomla!', '2005-02-14 15:19:02', 3, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 'target=0');
INSERT INTO `jos_weblinks` (`id`, `catid`, `sid`, `title`, `alias`, `url`, `description`, `date`, `hits`, `published`, `checked_out`, `checked_out_time`, `ordering`, `archived`, `approved`, `params`) VALUES (2, 2, 0, 'php.net', 'php', 'http://www.php.net', 'The language that Joomla! is developed in', '2004-07-07 11:33:24', 6, 1, 0, '0000-00-00 00:00:00', 3, 0, 1, '');
INSERT INTO `jos_weblinks` (`id`, `catid`, `sid`, `title`, `alias`, `url`, `description`, `date`, `hits`, `published`, `checked_out`, `checked_out_time`, `ordering`, `archived`, `approved`, `params`) VALUES (3, 2, 0, 'MySQL', 'mysql', 'http://www.mysql.com', 'The database that Joomla! uses', '2004-07-07 10:18:31', 1, 1, 0, '0000-00-00 00:00:00', 5, 0, 1, '');
INSERT INTO `jos_weblinks` (`id`, `catid`, `sid`, `title`, `alias`, `url`, `description`, `date`, `hits`, `published`, `checked_out`, `checked_out_time`, `ordering`, `archived`, `approved`, `params`) VALUES (4, 2, 0, 'OpenSourceMatters', 'opensourcematters', 'http://www.opensourcematters.org', 'Home of OSM', '2005-02-14 15:19:02', 11, 1, 0, '0000-00-00 00:00:00', 2, 0, 1, 'target=0');
INSERT INTO `jos_weblinks` (`id`, `catid`, `sid`, `title`, `alias`, `url`, `description`, `date`, `hits`, `published`, `checked_out`, `checked_out_time`, `ordering`, `archived`, `approved`, `params`) VALUES (5, 2, 0, 'Joomla! - Forums', 'joomla-forums', 'http://forum.joomla.org', 'Joomla! Forums', '2005-02-14 15:19:02', 4, 1, 0, '0000-00-00 00:00:00', 4, 0, 1, 'target=0');
INSERT INTO `jos_weblinks` (`id`, `catid`, `sid`, `title`, `alias`, `url`, `description`, `date`, `hits`, `published`, `checked_out`, `checked_out_time`, `ordering`, `archived`, `approved`, `params`) VALUES (6, 2, 0, 'Ohloh Tracking of Joomla!', 'ohloh-tracking-of-joomla', 'http://www.ohloh.net/projects/20', 'Objective reports from Ohloh about Joomla''s development activity. Joomla! has some star developers with serious kudos.', '2007-07-19 09:28:31', 1, 1, 0, '0000-00-00 00:00:00', 6, 0, 1, 'target=0\n\n');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `mgg_carreras`
-- 

DROP TABLE IF EXISTS `mgg_carreras`;
CREATE TABLE `mgg_carreras` (
  `id` int(3) NOT NULL auto_increment,
  `nombre` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=396 DEFAULT CHARSET=utf8 AUTO_INCREMENT=396 ;

-- 
-- Volcar la base de datos para la tabla `mgg_carreras`
-- 

INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (5, '	Abogacía / Derecho / Leyes	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (6, '	Actuario	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (7, '	Administración de Empresas	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (8, '	Administración de Empresas de Servicios	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (9, '	Administración de Empresas Turísticas	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (10, '	Administración de Hoteles y Restaurantes	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (11, '	Administración de Negocios Internacionales	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (12, '	Administración de Predios Agrícolas	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (13, '	Administración de Ventas	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (14, '	Administración en Producción Gastronómica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (15, '	Administración Financiera	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (16, '	Administración Hotelera Profesional	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (17, '	Administración Industrial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (18, '	Administración Pública / Gestión Pública	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (19, '	Administración y Producción Agropecuaria	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (20, '	Agronomía / Agroindustria / Ing. Agrícola	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (21, '	Análisis de Sistemas / Analista Programador	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (22, '	Antropología	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (23, '	Arqueología	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (24, '	Arquitectura	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (25, '	Arte Dramático / Actuación / Teatro	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (26, '	Artes / Artes Plásticas	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (27, '	Asistente de Odontología Dental	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (28, '	Asistente Ejecutivo	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (29, '	Asistente Judicial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (30, '	Astronomía	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (31, '	Automatización y Control Industrial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (32, '	Auxiliar Paramédico	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (33, '	Bachiller en Ciencias Religiosas	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (34, '	Bachillerato en Ciencias	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (35, '	Bachillerato en Humanidades	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (36, '	Bacteriología	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (37, '	Bibliotecología / Documentación	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (38, '	Bíoanalisis / Biotecnología Industrial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (39, '	Biología	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (40, '	Biología en Gestión de Recursos Naturales	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (41, '	Biología Marina	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (42, '	Bioquímica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (43, '	Biotecnología / Bioingeniería	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (44, '	Caligrafía Pública	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (45, '	Canto / Interpretación en Canto	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (46, '	Cartografía	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (47, '	Chofer / Transporte	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (48, '	Ciencia Política / Licenciatura en Ciencia Política	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (49, '	Ciencias Físicas	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (50, '	Cine / Séptimo Arte	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (51, '	Comercio Internacional / Comercio Exterior	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (52, '	Computación e Informática	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (53, '	Comunicación Audiovisual / Multimedial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (54, '	Comunicación Social / Empresarial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (55, '	Consejería Educacional y Vocacional Enseñanza Básica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (56, '	Consejería Educacional y Vocacional Enseñanza Media	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (57, '	Conservación Industrial de Alimentos por Frío	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (58, '	Construcción Civil	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (59, '	Construcciones Metálicas	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (60, '	Contador Auditor / Auditoría	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (62, '	Contador General / Contabilidad	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (63, '	Cosmetología	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (64, '	Danza / Interpretación en Danza 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (65, '	Decoración de Interiores	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (66, '	Dibujo de Proyectos de Arquitectura e Ingenieria	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (67, '	Dibujo Industrial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (69, '	Dibujo Técnico	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (70, '	Dibujo y Proyectos Industriales	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (71, '	Diplomado	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (72, '	Dirección de Arte	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (73, '	Dirección y Producción	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (74, '	Dirección y Producción de eventos	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (76, '	Diseño	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (77, '	Diseño de Interiores / Decoración	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (78, '	Diseño de Interiores y Mobiliario	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (79, '	Diseño de Objetos y Ambientes	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (80, '	Diseño de Vestuario / Textil / Moda	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (81, '	Diseño Digital	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (83, '	Diseño Editorial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (84, '	Diseño Gráfico	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (85, '	Diseño Industria / Dibujo Proyectos	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (86, '	Diseño y Producción de Areas Verdes	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (87, '	Diseño y Programación Multimedia / Diseño Digital	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (88, '	Ecología	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (90, '	Economía 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (91, '	Ecoturismo	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (92, '	Educación Parvularia / Inicial / Párvulo	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (93, '	Electricidad	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (94, '	Electromecánico	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (95, '	Electrónica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (97, '	Electrónica de Sistemas Computarizados	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (98, '	Enfermería	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (99, '	Escenografía	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (100, '	Escultura	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (101, '	Estadísticas	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (102, '	Estética	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (104, '	Filosofía	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (105, '	Finanzas Bancarias / Negocios Internacionales	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (106, '	Física / Ciencias Físicas	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (107, '	Fisioterapia	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (108, '	Fonoaudiología	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (109, '	Fotografía	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (111, '	Frigorista Electromecánico	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (112, '	Fuerzas Armadas / Milicia	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (113, '	Gasfitería	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (114, '	Gastronomía / Cocina	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (115, '	Geografía	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (116, '	Geología / Ciencias Geológicas	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (118, '	Geomensura / Topografía / Agrimensura	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (119, '	Geoquímica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (120, '	Guardia de Seguridad	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (121, '	Higienista Dental	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (122, '	Historia / Licenciatura en Historia 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (123, '	Historia del Arte	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (125, '	Historia y Geografía	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (126, '	Hotelería / Administración Hotelera	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (127, '	Idiomas	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (128, '	Ilustración Digital	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (129, '	Informática	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (130, '	Informática Biomédica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (132, '	Ingeniería	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (133, '	Ingeniería Aerospacial / Aeronáutica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (134, '	Ingeniería Ambiental	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (135, '	Ingeniería Biomédica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (136, '	Ingeniería Civil / Civil	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (137, '	Ingeniería Civil Eléctrica / Ingeniería Eléctrica 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (139, '	Ingeniería Civil Electrónica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (140, '	Ingeniería Civil en Electricidad	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (141, '	Ingeniería Civil en Informática	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (142, '	Ingenieria Civil en Sonido	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (143, '	Ingeniería Civil Industrial / Ingeniería Industrial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (144, '	Ingeniería Civil Mecánica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (146, '	Ingeniería Comercial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (147, '	Ingeniería de Diseño / Automatización Electrónica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (148, '	Ingeniería de Ejecución	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (149, '	Ingeniería de Ejecución en Administración	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (150, '	Ingeniería de Ejecución en Administración Hotelera	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (151, '	Ingeniería de Ejecución en Administración Turística	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (153, '	Ingeniería de Ejecución en Marketing	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (154, '	Ingeniería de Ejecución en Mecánica Automotriz y Autotrónica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (155, '	Ingeniería de Ejecución en Sonido	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (156, '	Ingeniería de Información y Control de Gestión	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (157, '	Ingeniería de Petróleos / Petroquímica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (158, '	Ingeniería de Producción	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (160, '	Ingeniería Electrónica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (161, '	Ingeniería en Acuicultura / Acuicultura	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (162, '	Ingeniería en Administración Agroindustrial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (163, '	Ingeniería en Administración de Operaciones	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (164, '	Ingeniería en Administración Industrial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (165, '	Ingeniería en Agronegocios	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (167, '	Ingeniería en Alimentos	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (168, '	Ingeniería en Automatización y Control Industrial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (169, '	Ingeniería en Bioinformática	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (170, '	Ingenieria en Biotecnología	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (171, '	Ingeniería en Computación	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (172, '	Ingeniería en Conectividad y Redes	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (174, '	Ingeniería en Construcción	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (175, '	Ingeniería en Control e Instrumentación Industrial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (176, '	Ingeniería en Deportes	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (177, '	Ingeniería en Electricidad	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (178, '	Ingeniería en Fabricación y montaje Ind. 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (179, '	Ingeniería en Geografía	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (181, '	Ingeniería en Geomensura	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (182, '	Ingeniería en Gestión	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (183, '	Ingeniería en Gestión de Calidad y Ambiente	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (184, '	Ingeniería en Gestión de Negocios	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (185, '	Ingeniería en Gestión y Control de Calidad	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (186, '	Ingeniería en Gestión y Desarrollo Tecnológico	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (188, '	Ingeniería en Industrias de la Madera	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (189, '	Ingeniería en Informática / Sistemas	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (190, '	Ingeniería en Logística	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (191, '	Ingeniería en Mantenimiento Industrial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (192, '	Ingeniería en manufactura industrial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (193, '	Ingeniería en Mecatrónica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (195, '	Ingeniería en Metalmecánica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (196, '	Ingeniería en Minas	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (197, '	Ingenieria en Negocios Internacionales	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (198, '	Ingeniería en Obras Civiles	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (199, '	Ingeniería en Prevención de Riesgos	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (200, '	Ingeniería en procesos de la madera 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (202, '	Ingeniería en Proyectos Industriales	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (203, '	Ingeniería en Recursos Naturales Renovables	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (204, '	Ingeniería en Refrigeración y Climatización 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (205, '	Ingeniería en Telecomunicaciones	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (206, '	Ingeniería en Transporte	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (207, '	Ingeniería Forestal	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (209, '	Ingeniería Hidráulica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (210, '	Ingeniería Matemáticas	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (211, '	Ingeniería Mecánica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (212, '	Ingeniería Metálica / Metalúrgica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (213, '	Ingeniería Naval	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (214, '	Ingeniería Pesquera / Cultivos Marinos	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (216, '	Ingeniería Química	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (217, '	Jardinería / Floricultura	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (218, '	Junior / Cadete / Oficinista 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (219, '	Kinesiología	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (220, '	Laboratorio Dental / Mecánica Dental	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (221, '	Licenciatura en Arte / Bellas Artes	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (223, '	Licenciatura en Ciencias Biológicas	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (224, '	Licenciatura en Ciencias Religiosas y Estudios Eclesiásticos	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (225, '	Licenciatura en Educación / Magisterio	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (226, '	Licenciatura en Literatura / Literatura / Letras	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (227, '	Maestro Mayor de Obras	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (228, '	Magister	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (230, '	Magister en Ciencias de la Educación	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (231, '	Manteniemiento de Maquinaria de Planta	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (232, '	Manteniemiento de Maquinaria Pesada	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (233, '	Mantenimiento Industrial / Producción Industrial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (234, '	Marketing / Mercadotecnia	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (235, '	Matemática 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (237, '	Matrón (a)	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (238, '	Mayordomo	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (239, '	MBA	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (240, '	Mecánica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (241, '	Mecánica Industrial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (242, '	Medicina 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (244, '	Medicina Veterinaria	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (245, '	Meteorología	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (246, '	Microbiología industrial de alimentos 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (247, '	Minero Metalúrgico 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (248, '	Modelista de Vestuario 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (249, '	Museología	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (251, '	Música 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (252, '	Músico - Terapia	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (253, '	Musicoterapia	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (254, '	Notario Público / Escribano Público	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (255, '	Nutrición / Nutrición y Dietética	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (256, '	Nutrición y Alimentación Institucional	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (258, '	Obstetricia y Puericultura	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (259, '	Oceanografía	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (260, '	Odontología	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (261, '	Oftalmología	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (262, '	Optometría	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (263, '	Orfebrería / Joyería	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (265, '	Orientación Familiar	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (266, '	Paisajismo / Diseño de Paisaje 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (267, '	Panadero	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (268, '	Párvulo	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (269, '	Pastelería Internacional	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (270, '	Pedagogía	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (272, '	Pedagogía Básica / Educación Básica / Primaria	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (273, '	Pedagogía Educación Media en Lenguaje y Comunicación	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (274, '	Pedagogía en Ciencias 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (275, '	Pedagogía en Cs. Naturales y Física	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (276, '	Pedagogía en Cs. Naturales y Química	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (277, '	Pedagogía en Educación Diferencial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (279, '	Pedagogía en Educación Física y Deporte	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (280, '	Pedagogía en Historia / Ciencias Sociales	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (281, '	Pedagogía en Inglés / Idiomas	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (282, '	Pedagogía en Lengua Castellana y Comunicación	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (283, '	Pedagogía en Matemáticas / Computación	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (284, '	Pedagogía en Música / Arte	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (286, '	Pedagogía en Religión	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (287, '	Pedagogía Media / Educación Media / Secundaria	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (288, '	Pedagogía Media en Religión y Educación Moral	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (289, '	Periodismo / Comunicación Social	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (290, '	Perito Criminalístico	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (291, '	Piloto / Aviación	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (293, '	Pintura	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (294, '	Preparador Físico	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (295, '	Prevención de Riesgos / Seguridad Industrial 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (296, '	Producción Gastronómica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (297, '	Producción Musical	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (298, '	Programación	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (300, '	Psicología	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (301, '	Psicología Clínica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (302, '	Psicología Educacional	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (303, '	Psicología Laboral	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (304, '	Psicopedagogía / Educación Diferencial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (305, '	Publicidad - Comunicación Social	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (307, '	Publicidad Profesional Mención Marketing y Medios	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (308, '	Publicidad Técnica Mención Marketing Promocional	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (309, '	Química / Analista Químico	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (310, '	Química Industrial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (311, '	Química Marina	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (312, '	Química y Farmacia	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (314, '	Químico Laboratista Industrial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (315, '	Recursos Humanos / Relaciones Industriales	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (316, '	Redes y Comunicación de Datos / Conectividad 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (317, '	Relaciones del Trabajo	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (318, '	Relaciones Internacionales	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (319, '	Relaciones Públicas	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (321, '	Sacerdocio	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (322, '	Secretariado	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (323, '	Secretariado Bilingue	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (324, '	Servicios Domésticos 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (325, '	Sevicios Domésticos / Empleada Doméstica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (326, '	Sociología	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (328, '	Técnico / Tecnólogo / Técnico Superior	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (329, '	Técnico Agrícola	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (330, '	Técnico AudioVisual	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (331, '	Técnico Control de producción industrial 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (332, '	Técnico de RadioDiagnóstico y Radioterapia	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (333, '	Técnico en Administración de Programas Sociales	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (335, '	Técnico en Construcción 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (336, '	Técnico en control de calidad 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (337, '	Técnico en Diseño editorial 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (338, '	Técnico en Diseño Gráfico	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (339, '	Técnico en Edificación 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (340, '	Técnico en Electricidad 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (342, '	Técnico en Electricidad Industrial 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (343, '	Técnico en Enfermería	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (344, '	Técnico en Fabricación y montaje Industrial 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (345, '	Técnico en Geomensura 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (346, '	Técnico en Gestión y Control de calidad 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (347, '	Técnico en Logística 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (349, '	Técnico en Matricería 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (350, '	Técnico en Medio Ambiente 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (351, '	Técnico en Metalmecánica 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (352, '	Técnico en Obras civiles 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (353, '	Técnico en Oleohidráulica y Neumática	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (354, '	Técnico en Planificación Vial 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (356, '	Técnico en Procesos de la madera 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (357, '	Técnico en Refrigeración 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (358, '	Técnico en Restauración	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (359, '	Técnico en Soporte Computacional	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (360, '	Técnico en Topografia 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (361, '	Técnico en Tránsito y Transporte 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (363, '	Técnico Jurídico	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (364, '	Técnico Marino	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (365, '	Técnico Superior en Administración Agrícola	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (366, '	Técnico Veterinario	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (367, '	Tecnología en gestión Forestal 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (368, '	Técnología en Minería	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (370, '	Tecnología en Minería y Metalurgía 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (371, '	Tecnología en Recursos del Mar	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (372, '	Tecnología en Sonido	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (373, '	Tecnología Forestal 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (374, '	Tecnología Industrial de alimentos del mar 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (375, '	Tecnología Industrial de la madera 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (377, '	Tecnología Industrial de los alimentos 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (378, '	Tecnología Médica / Laboratorio	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (379, '	Telecomunicaciones	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (380, '	Teología	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (381, '	Terapia Física	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (382, '	Terapia Ocupacional	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (384, '	Trabajo Social / Servicio Social	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (385, '	Traducción / Intérprete	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (386, '	Tripulante de Cabina / Azafata(o)	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (387, '	Turismo  / Administración en Turismo	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (388, '	Turismo de Aventura	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (389, '	Turismo Técnico Mención Empresas de Viajes	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (391, '	Turismo Técnico Mención Tráfico y Carga Aérea	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (392, '	Ufología	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (393, '	Urbanismo	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (394, '	Venta y Publicidad	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (395, '	Zootecnia / Zoología	');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `mgg_comunas`
-- 

DROP TABLE IF EXISTS `mgg_comunas`;
CREATE TABLE `mgg_comunas` (
  `id` int(11) NOT NULL default '0',
  `relacion` int(11) default NULL,
  `nombre` text,
  `cd_cod_area` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `mgg_comunas`
-- 

INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (1, 1, 'Arica', '2');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (2, 1, 'Camarones', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (3, 3, 'Putre', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (4, 3, 'General Lagos', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (5, 2, 'Iquique', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (6, 53, 'Camiña', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (7, 53, 'Colchane', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (8, 53, 'Huara', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (9, 53, 'Pica', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (10, 53, 'Pozo Almonte', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (11, 2, 'Alto Hospicio', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (12, 6, 'Tocopilla', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (13, 6, 'María Elena', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (14, 5, 'Calama', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (15, 5, 'Ollagüe', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (16, 5, 'San Pedro De Atacama', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (17, 4, 'Antofagasta', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (18, 4, 'Mejillones', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (19, 4, 'Sierra Gorda', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (20, 4, 'Taltal', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (21, 8, 'Chañaral', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (22, 8, 'Diego De Almagro', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (23, 7, 'Copiapó', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (24, 7, 'Caldera', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (25, 7, 'Tierra Amarilla', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (26, 9, 'Vallenar', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (27, 9, 'Alto Del Carmen', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (28, 9, 'Freirina', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (29, 9, 'Huasco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (30, 10, 'La Serena', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (31, 10, 'Coquimbo', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (32, 10, 'Andacollo', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (33, 10, 'La Higuera', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (34, 10, 'Paiguano', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (35, 10, 'Vicuña', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (36, 12, 'Ovalle', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (37, 12, 'Río Hurtado', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (38, 12, 'Monte Patria', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (39, 12, 'Combarbalá', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (40, 12, 'Punitaqui', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (41, 11, 'Illapel', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (42, 11, 'Canela', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (43, 11, 'Los Vilos', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (44, 11, 'Salamanca', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (45, 13, 'Valparaíso', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (46, 13, 'Casablanca', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (47, 13, 'Concón', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (48, 13, 'Juan Fernández', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (49, 13, 'Puchuncaví', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (50, 13, 'Quilpué', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (51, 13, 'Quintero', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (52, 13, 'Villa Alemana', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (53, 13, 'Viña Del Mar', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (54, 16, 'Petorca', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (55, 16, 'La Ligua', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (56, 16, 'Cabildo', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (57, 16, 'Papudo', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (58, 16, 'Zapallar', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (59, 15, 'Los Andes', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (60, 15, 'Calle Larga', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (61, 15, 'Rinconada', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (62, 15, 'San Esteban', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (63, 19, 'San Felipe', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (64, 19, 'Catemu', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (65, 19, 'Llay Llay', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (66, 19, 'Panquehue', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (67, 19, 'Putaendo', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (68, 19, 'Santa María', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (69, 17, 'Quillota', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (70, 17, 'La Calera', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (71, 17, 'Hijuelas', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (72, 17, 'La Cruz', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (73, 17, 'Limache', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (74, 17, 'Nogales', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (75, 17, 'Olmué', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (76, 18, 'San Antonio', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (77, 18, 'Algarrobo', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (78, 18, 'Cartagena', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (79, 18, 'El Quisco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (80, 18, 'El Tabo', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (81, 18, 'Santo Domingo', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (82, 14, 'Isla De Pascua', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (83, 20, 'Rancagua', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (84, 20, 'Codegua', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (85, 20, 'Coinco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (86, 20, 'Coltauco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (87, 20, 'Doñihue', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (88, 20, 'Graneros', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (89, 20, 'Las Cabras', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (90, 20, 'Machalí', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (91, 20, 'Malloa', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (92, 20, 'Mostazal', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (93, 20, 'Olivar', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (94, 20, 'Peumo', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (95, 20, 'Pichidegua', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (96, 20, 'Quinta De Tilcoco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (97, 20, 'Rengo', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (98, 20, 'Requínoa', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (99, 20, 'San Vicente De Tagua Tagua', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (100, 22, 'San Fernando', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (101, 22, 'Chépica', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (102, 22, 'Chimbarongo', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (103, 22, 'Lolol', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (104, 22, 'Nancagua', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (105, 22, 'Palmilla', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (106, 22, 'Peralillo', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (107, 22, 'Placilla', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (108, 22, 'Pumanque', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (109, 22, 'Santa Cruz', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (110, 21, 'Pichilemu', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (111, 21, 'La Estrella', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (112, 21, 'Litueche', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (113, 21, 'Marchihue', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (114, 21, 'Navidad', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (115, 21, 'Paredones', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (116, 25, 'Curicó', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (117, 25, 'Teno', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (118, 25, 'Romeral', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (119, 25, 'Sagrada Familia', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (120, 25, 'Molina', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (121, 25, 'Hualañé', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (122, 25, 'Vichuquén', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (123, 25, 'Licantén', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (124, 25, 'Rauco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (125, 23, 'Talca', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (126, 23, 'Constitución', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (127, 23, 'Curepto', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (128, 23, 'Empedrado', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (129, 23, 'Maule', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (130, 23, 'Pelarco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (131, 23, 'Pencahue', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (132, 23, 'Río Claro', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (133, 23, 'San Clemente', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (134, 23, 'San Rafael', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (135, 26, 'Linares', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (136, 26, 'Colbún', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (137, 26, 'Longaví', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (138, 26, 'Parral', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (139, 26, 'Retiro', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (140, 26, 'San Javier', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (141, 26, 'Villa Alegre', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (142, 26, 'Yerbas Buenas', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (143, 24, 'Cauquenes', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (144, 24, 'Chanco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (145, 24, 'Pelluhue', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (146, 30, 'Chillán', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (147, 30, 'Bulnes', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (148, 30, 'Cobquecura', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (149, 30, 'Coelemu', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (150, 30, 'Coihueco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (151, 30, 'Chillán Viejo', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (152, 30, 'El Carmen', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (153, 30, 'Ninhue', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (154, 30, 'Ñiquén', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (155, 30, 'Pemuco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (156, 30, 'Pinto', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (157, 30, 'Portezuelo', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (158, 30, 'Quillón', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (159, 30, 'Quirihue', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (160, 30, 'Ránquil', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (161, 30, 'San Carlos', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (162, 30, 'San Fabián', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (163, 30, 'San Ignacio', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (164, 30, 'San Nicolás', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (165, 30, 'Treguaco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (166, 30, 'Yungay', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (167, 29, 'Los Angeles', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (168, 29, 'Antuco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (169, 29, 'Cabrero', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (170, 29, 'Laja', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (171, 29, 'Mulchén', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (172, 29, 'Nacimiento', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (173, 29, 'Negrete', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (174, 29, 'Quilaco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (175, 29, 'Quilleco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (176, 29, 'San Rosendo', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (177, 29, 'Santa Bárbara', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (178, 29, 'Tucapel', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (179, 29, 'Yumbel', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (180, 29, 'Alto Bio Bio', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (181, 27, 'Concepción', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (182, 27, 'Coronel', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (183, 27, 'Chiguayante', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (184, 27, 'Florida', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (185, 27, 'Hualqui', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (186, 27, 'Lota', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (187, 27, 'Penco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (188, 27, 'San Pedro De La Paz', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (189, 27, 'Santa Juana', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (190, 27, 'Talcahuano', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (191, 27, 'Tomé', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (192, 27, 'Hualpén', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (193, 28, 'Lebu', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (194, 28, 'Arauco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (195, 28, 'Cañete', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (196, 28, 'Contulmo', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (197, 28, 'Curanilahue', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (198, 28, 'Los Alamos', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (199, 28, 'Tirúa', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (200, 32, 'Angol', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (201, 32, 'Collipulli', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (202, 32, 'Curacautín', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (203, 32, 'Ercilla', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (204, 32, 'Lonquimay', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (205, 32, 'Los Sauces', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (206, 32, 'Lumaco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (207, 32, 'Purén', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (208, 32, 'Renaico', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (209, 32, 'Traiguén', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (210, 32, 'Victoria', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (211, 31, 'Temuco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (212, 31, 'Carahue', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (213, 31, 'Cunco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (214, 31, 'Curarrehue', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (215, 31, 'Freire', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (216, 31, 'Galvarino', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (217, 31, 'Gorbea', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (218, 31, 'Lautaro', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (219, 31, 'Loncoche', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (220, 31, 'Melipeuco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (221, 31, 'Nueva Imperial', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (222, 31, 'Padre Las Casas', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (223, 31, 'Perquenco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (224, 31, 'Pitrufquén', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (225, 31, 'Pucón', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (226, 31, 'Teodoro Schmidt', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (227, 31, 'Toltén', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (228, 31, 'Vilcún', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (229, 31, 'Villarrica', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (230, 31, 'Saavedra', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (231, 37, 'Valdivia', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (232, 37, 'Corral', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (233, 52, 'Futrono', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (234, 52, 'La Unión', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (235, 52, 'Lago Ranco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (236, 37, 'Lanco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (237, 37, 'Los Lagos', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (238, 37, 'Máfil', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (239, 37, 'Mariquina', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (240, 37, 'Paillaco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (241, 37, 'Panguipulli', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (242, 52, 'Río Bueno', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (243, 35, 'Osorno', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (244, 35, 'Puerto Octay', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (245, 35, 'Purranque', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (246, 35, 'Puyehue', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (247, 35, 'Río Negro', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (248, 35, 'San Juan De La Costa', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (249, 35, 'San Pablo', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (250, 33, 'Puerto Montt', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (251, 33, 'Calbuco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (252, 33, 'Cochamó', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (253, 33, 'Fresia', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (254, 33, 'Frutillar', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (255, 33, 'Los Muermos', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (256, 33, 'Llanquihue', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (257, 33, 'Maullín', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (258, 33, 'Puerto Varas', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (259, 34, 'Castro', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (260, 34, 'Ancud', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (261, 34, 'Chonchi', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (262, 34, 'Curaco De Vélez', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (263, 34, 'Dalcahue', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (264, 34, 'Puqueldón', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (265, 34, 'Queilén', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (266, 34, 'Quellón', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (267, 34, 'Quemchi', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (268, 34, 'Quinchao', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (269, 36, 'Chaitén', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (270, 36, 'Futaleufú', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (271, 36, 'Hualaihué', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (272, 36, 'Palena', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (273, 40, 'Cochrane', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (274, 40, 'O''higgins', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (275, 40, 'Tortel', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (276, 39, 'Aisén', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (277, 39, 'Cisnes', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (278, 39, 'Guaitecas', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (279, 38, 'Coihaique', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (280, 38, 'Lago Verde', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (281, 41, 'Chile Chico', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (282, 41, 'Río Ibáñez', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (283, 45, 'Torres Del Paine', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (284, 45, 'Natales', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (285, 42, 'San Gregorio', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (286, 42, 'Río Verde', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (287, 42, 'Laguna Blanca', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (288, 42, 'Punta Arenas', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (289, 44, 'Timaukel', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (290, 44, 'Primavera', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (291, 44, 'Porvenir', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (292, 43, 'Antártica', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (293, 43, 'Cabo De Hornos', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (294, 46, 'La Reina', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (295, 46, 'Santiago', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (296, 46, 'Pudahuel', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (297, 46, 'Providencia', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (298, 46, 'Peñalolén', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (299, 46, 'Pedro Aguirre Cerda', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (300, 46, 'Ñuñoa', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (301, 46, 'Maipú', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (302, 46, 'Macul', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (303, 46, 'Lo Prado', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (304, 46, 'Lo Espejo', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (305, 46, 'Quinta Normal', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (306, 46, 'Las Condes', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (307, 46, 'Recoleta', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (308, 46, 'La Pintana', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (309, 46, 'La Granja', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (310, 46, 'La Florida', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (311, 46, 'La Cisterna', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (312, 46, 'Independencia', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (313, 46, 'Huechuraba', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (314, 46, 'Estación Central', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (315, 46, 'El Bosque', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (316, 46, 'Conchalí', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (317, 46, 'Cerro Navia', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (318, 46, 'Cerrillos', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (319, 46, 'Lo Barnechea', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (320, 46, 'Vitacura', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (321, 46, 'San Ramón', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (322, 46, 'San Miguel', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (323, 46, 'San Joaquín', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (324, 46, 'Renca', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (325, 46, 'Quilicura', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (326, 47, 'San José De Maipo', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (327, 47, 'Pirque', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (328, 47, 'Puente Alto', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (329, 50, 'Melipilla', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (330, 50, 'María Pinto', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (331, 50, 'Curacaví', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (332, 50, 'Alhué', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (333, 50, 'San Pedro', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (334, 51, 'Padre Hurtado', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (335, 51, 'Isla De Maipo', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (336, 51, 'El Monte', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (337, 51, 'Talagante', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (338, 51, 'Peñaflor', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (339, 49, 'Buin', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (340, 49, 'Calera De Tango', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (341, 49, 'Paine', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (342, 49, 'San Bernardo', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (343, 48, 'Tiltil', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (344, 48, 'Lampa', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (345, 48, 'Colina', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (346, 31, 'Cholchol', '0');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `mgg_curriculum`
-- 

DROP TABLE IF EXISTS `mgg_curriculum`;
CREATE TABLE `mgg_curriculum` (
  `rut` int(11) NOT NULL default '0',
  `password` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `nombres` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `apellido1` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `apellido2` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `presentacion` text character set utf8 collate utf8_unicode_ci,
  `fnacimiento` date NOT NULL default '0000-00-00',
  `genero` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `nacionalidad` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `estadocivil` varchar(100) character set utf8 collate utf8_unicode_ci default NULL,
  `direccion` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `region` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `provincia` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `comuna` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `fonocasa` varchar(100) character set utf8 collate utf8_unicode_ci default NULL,
  `fonomovil` varchar(100) character set utf8 collate utf8_unicode_ci default NULL,
  `fonooficina` varchar(100) character set utf8 collate utf8_unicode_ci default NULL,
  `email` varchar(100) character set utf8 collate utf8_unicode_ci default NULL,
  `colegio` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `anoegresocolegio` year(4) NOT NULL default '0000',
  `carrera` text character set utf8 collate utf8_unicode_ci NOT NULL,
  `mencion` text character set utf8 collate utf8_unicode_ci NOT NULL,
  `institucion` text character set utf8 collate utf8_unicode_ci NOT NULL,
  `estadoestudio` text character set utf8 collate utf8_unicode_ci NOT NULL,
  `anoegresosuperior` text NOT NULL,
  `titulos` text character set utf8 collate utf8_unicode_ci,
  `anolaboral` text character set utf8 collate utf8_unicode_ci NOT NULL,
  `cargo` text character set utf8 collate utf8_unicode_ci NOT NULL,
  `empresa` text character set utf8 collate utf8_unicode_ci NOT NULL,
  `objetivos` text character set utf8 collate utf8_unicode_ci,
  `logros` text character set utf8 collate utf8_unicode_ci,
  `software` text character set utf8 collate utf8_unicode_ci NOT NULL,
  `nivelsoftware` text character set utf8 collate utf8_unicode_ci NOT NULL,
  `ingles` int(1) default '0',
  `nivelingles` varchar(100) character set utf8 collate utf8_unicode_ci default NULL,
  `frances` int(1) default '0',
  `nivelfrances` varchar(100) character set utf8 collate utf8_unicode_ci default NULL,
  `aleman` int(1) default '0',
  `nivelaleman` varchar(100) character set utf8 collate utf8_unicode_ci default NULL,
  `espanol` int(1) default '0',
  `nivelespanol` varchar(100) character set utf8 collate utf8_unicode_ci default NULL,
  `italiano` int(1) default '0',
  `nivelitaliano` varchar(100) character set utf8 collate utf8_unicode_ci default NULL,
  `otro` varchar(100) character set utf8 collate utf8_unicode_ci default '0',
  `nivelotro` varchar(100) character set utf8 collate utf8_unicode_ci default NULL,
  `experienciaextra` text character set utf8 collate utf8_unicode_ci,
  `pretensionrenta` int(11) NOT NULL default '0',
  `regionlaboral` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `disponibilidad` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `areainteres` varchar(100) character set utf8 collate utf8_unicode_ci default NULL,
  `acceso` char(1) character set utf8 collate utf8_unicode_ci NOT NULL default '0',
  `modificacion` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`rut`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `mgg_curriculum`
-- 

INSERT INTO `mgg_curriculum` (`rut`, `password`, `nombres`, `apellido1`, `apellido2`, `presentacion`, `fnacimiento`, `genero`, `nacionalidad`, `estadocivil`, `direccion`, `region`, `provincia`, `comuna`, `fonocasa`, `fonomovil`, `fonooficina`, `email`, `colegio`, `anoegresocolegio`, `carrera`, `mencion`, `institucion`, `estadoestudio`, `anoegresosuperior`, `titulos`, `anolaboral`, `cargo`, `empresa`, `objetivos`, `logros`, `software`, `nivelsoftware`, `ingles`, `nivelingles`, `frances`, `nivelfrances`, `aleman`, `nivelaleman`, `espanol`, `nivelespanol`, `italiano`, `nivelitaliano`, `otro`, `nivelotro`, `experienciaextra`, `pretensionrenta`, `regionlaboral`, `disponibilidad`, `areainteres`, `acceso`, `modificacion`) VALUES (15536433, 'd754f7302e', 'JosÃ© Patricio', 'GarcÃ­a', 'GonzÃ¡lez', '', '1983-04-15', 'Masculino', 'Chilena', 'Soltero(a)', 'San Guillermo 0358', '13', '47', '328', '', '', '', '', 'Matte Mesias', 2000, '9;9', 'sdsd;asasaas', '10;10', 'Egresado;Egresado', '2004;2004', '', '-', '', '', '', '', 'XP;XP', 'BÃ¡sico;Usuario', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '13', 'Inmediata', '', '0', '0000-00-00 00:00:00');
INSERT INTO `mgg_curriculum` (`rut`, `password`, `nombres`, `apellido1`, `apellido2`, `presentacion`, `fnacimiento`, `genero`, `nacionalidad`, `estadocivil`, `direccion`, `region`, `provincia`, `comuna`, `fonocasa`, `fonomovil`, `fonooficina`, `email`, `colegio`, `anoegresocolegio`, `carrera`, `mencion`, `institucion`, `estadoestudio`, `anoegresosuperior`, `titulos`, `anolaboral`, `cargo`, `empresa`, `objetivos`, `logros`, `software`, `nivelsoftware`, `ingles`, `nivelingles`, `frances`, `nivelfrances`, `aleman`, `nivelaleman`, `espanol`, `nivelespanol`, `italiano`, `nivelitaliano`, `otro`, `nivelotro`, `experienciaextra`, `pretensionrenta`, `regionlaboral`, `disponibilidad`, `areainteres`, `acceso`, `modificacion`) VALUES (11111111, '7989edad14', 'Uno', 'Uno', 'Uno', '', '2001-01-01', 'Masculino', 'Uno', 'Soltero(a)', 'Uno', '1', '2', '5', 'Uno', 'Uno', 'Uno', 'Uno@Uno.cl', 'Uno', 2007, '', '', '', '', '', '', '-', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '1', 'Inmediata', '', '0', '0000-00-00 00:00:00');
INSERT INTO `mgg_curriculum` (`rut`, `password`, `nombres`, `apellido1`, `apellido2`, `presentacion`, `fnacimiento`, `genero`, `nacionalidad`, `estadocivil`, `direccion`, `region`, `provincia`, `comuna`, `fonocasa`, `fonomovil`, `fonooficina`, `email`, `colegio`, `anoegresocolegio`, `carrera`, `mencion`, `institucion`, `estadoestudio`, `anoegresosuperior`, `titulos`, `anolaboral`, `cargo`, `empresa`, `objetivos`, `logros`, `software`, `nivelsoftware`, `ingles`, `nivelingles`, `frances`, `nivelfrances`, `aleman`, `nivelaleman`, `espanol`, `nivelespanol`, `italiano`, `nivelitaliano`, `otro`, `nivelotro`, `experienciaextra`, `pretensionrenta`, `regionlaboral`, `disponibilidad`, `areainteres`, `acceso`, `modificacion`) VALUES (22222222, 'ef9ffa986f', 'Dos', 'Dos', 'Dos', 'dddd', '2001-01-01', 'Masculino', 'Dos', 'Soltero(a)', 'Dos', '1', '2', '5', 'Dos', 'Dos', 'Dos', 'Dos@Dos.cl', 'Dos', 2007, '', '', '', '', '', '', '-', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '14', 'Inmediata', '', '0', '0000-00-00 00:00:00');
INSERT INTO `mgg_curriculum` (`rut`, `password`, `nombres`, `apellido1`, `apellido2`, `presentacion`, `fnacimiento`, `genero`, `nacionalidad`, `estadocivil`, `direccion`, `region`, `provincia`, `comuna`, `fonocasa`, `fonomovil`, `fonooficina`, `email`, `colegio`, `anoegresocolegio`, `carrera`, `mencion`, `institucion`, `estadoestudio`, `anoegresosuperior`, `titulos`, `anolaboral`, `cargo`, `empresa`, `objetivos`, `logros`, `software`, `nivelsoftware`, `ingles`, `nivelingles`, `frances`, `nivelfrances`, `aleman`, `nivelaleman`, `espanol`, `nivelespanol`, `italiano`, `nivelitaliano`, `otro`, `nivelotro`, `experienciaextra`, `pretensionrenta`, `regionlaboral`, `disponibilidad`, `areainteres`, `acceso`, `modificacion`) VALUES (33333333, 'ebdbfa1c3d', 'Tres', 'Tres', 'Tres', '', '2001-01-01', 'Masculino', 'Tres', 'Soltero(a)', 'Tres', '1', '2', '5', 'Tres', 'Tres', 'Tres', 'Tres@Tres.cl', 'Tres', 2007, '', '', '', '', '', '', '-', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2', 'Previa desvinculaciÃ³n', '', '0', '0000-00-00 00:00:00');
INSERT INTO `mgg_curriculum` (`rut`, `password`, `nombres`, `apellido1`, `apellido2`, `presentacion`, `fnacimiento`, `genero`, `nacionalidad`, `estadocivil`, `direccion`, `region`, `provincia`, `comuna`, `fonocasa`, `fonomovil`, `fonooficina`, `email`, `colegio`, `anoegresocolegio`, `carrera`, `mencion`, `institucion`, `estadoestudio`, `anoegresosuperior`, `titulos`, `anolaboral`, `cargo`, `empresa`, `objetivos`, `logros`, `software`, `nivelsoftware`, `ingles`, `nivelingles`, `frances`, `nivelfrances`, `aleman`, `nivelaleman`, `espanol`, `nivelespanol`, `italiano`, `nivelitaliano`, `otro`, `nivelotro`, `experienciaextra`, `pretensionrenta`, `regionlaboral`, `disponibilidad`, `areainteres`, `acceso`, `modificacion`) VALUES (44444444, 'b54f0f8b3b', 'Cuatro', 'Cuatro', 'Cuatro', '', '2001-01-01', 'Masculino', 'Cuatro', 'Soltero(a)', 'Cuatro', '1', '2', '5', 'Cuatro', 'Cuatro', 'Cuatro', 'Cuatro@Cuatro.cl', 'Cuatro', 2007, '', '', '', '', '', '', '-', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2', 'Previa desvinculaciÃ³n', '', '0', '0000-00-00 00:00:00');
INSERT INTO `mgg_curriculum` (`rut`, `password`, `nombres`, `apellido1`, `apellido2`, `presentacion`, `fnacimiento`, `genero`, `nacionalidad`, `estadocivil`, `direccion`, `region`, `provincia`, `comuna`, `fonocasa`, `fonomovil`, `fonooficina`, `email`, `colegio`, `anoegresocolegio`, `carrera`, `mencion`, `institucion`, `estadoestudio`, `anoegresosuperior`, `titulos`, `anolaboral`, `cargo`, `empresa`, `objetivos`, `logros`, `software`, `nivelsoftware`, `ingles`, `nivelingles`, `frances`, `nivelfrances`, `aleman`, `nivelaleman`, `espanol`, `nivelespanol`, `italiano`, `nivelitaliano`, `otro`, `nivelotro`, `experienciaextra`, `pretensionrenta`, `regionlaboral`, `disponibilidad`, `areainteres`, `acceso`, `modificacion`) VALUES (13131313, '0f8313e7b7', 'Daniel', 'Perez', 'Roman', 'Hola, estoy probando el sistema', '1973-12-10', 'Masculino', 'Chileno', 'Soltero(a)', 'Colon 555', '13', '46', '320', '64564646', '95353534', '', 'prueba@eso.cl', 'Don Bosco', 1999, '322;324', 'En nada;En nada', '190;197', 'Egresado;Estudiando', '1997;2000', 'NAda era eso no mas', '2006;2008;2006;2008-2003;2008;;', 'Junior;Flojo;Junior;Flojo', 'Hogar de cristo;Filete;Hogar de cristo;Filete', 'Nada;todo;Nada;todo', 'Nada;todo;Nada;todo', 'Adobe;Studio', 'Avanzado;Usuario', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Hablado', NULL, NULL, NULL, NULL, 'Lectura de clÃ¡sicos rusos', 500, '6', 'Inmediata', 'No se', '0', '0000-00-00 00:00:00');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `mgg_empresas`
-- 

DROP TABLE IF EXISTS `mgg_empresas`;
CREATE TABLE `mgg_empresas` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(80) collate utf8_spanish_ci NOT NULL default '',
  `descripcion` text collate utf8_spanish_ci NOT NULL,
  `mail` varchar(80) collate utf8_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=12 ;

-- 
-- Volcar la base de datos para la tabla `mgg_empresas`
-- 

INSERT INTO `mgg_empresas` (`id`, `nombre`, `descripcion`, `mail`) VALUES (11, 'Coca-Cola', 'Nuevo puesto ofrecido por Coca-Cola', 'jpatriciogarcia@gmail.com');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `mgg_instituciones`
-- 

DROP TABLE IF EXISTS `mgg_instituciones`;
CREATE TABLE `mgg_instituciones` (
  `id` int(3) NOT NULL auto_increment,
  `nombre` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=301 DEFAULT CHARSET=utf8 AUTO_INCREMENT=301 ;

-- 
-- Volcar la base de datos para la tabla `mgg_instituciones`
-- 

INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (5, 'Academia Politécnica Militar');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (6, '	Academia Técnica Naval	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (7, '	AIEP	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (8, '	C.F.T. ABACUS  I.T.C.	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (10, '	C.F.T. Acuario Data de Santiago	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (11, '	C.F.T. Alemán de Viña del Mar	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (12, '	C.F.T. Alexander Von Humboldt	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (13, '	C.F.T. ALFA	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (14, '	C.F.T. Alpes	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (15, '	C.F.T. Andrés Bello	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (17, '	C.F.T. AquaTech	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (18, '	C.F.T. Austral	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (19, '	C.F.T. Barros Arana	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (20, '	C.F.T. Cámara de Comercio de Santiago	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (21, '	C.F.T. Carlos Thielemann Martin	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (22, '	C.F.T. Cedecom	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (24, '	C.F.T. CEDEP	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (25, '	C.F.T. CEDUC - UCN	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (26, '	C.F.T. CEFONOR	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (27, '	C.F.T. CEITEC	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (28, '	C.F.T. Cenafom	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (29, '	C.F.T. CENCO	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (31, '	C.F.T. Centro de Enseñanza de Alta Costura Paulina Diard	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (32, '	C.F.T. Centro de Estudios Navieros Concepción	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (33, '	C.F.T. Centro de Estudios Paramédicos de Santiago CEPSA	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (34, '	C.F.T. Centro de Estudios Turísticos CET	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (35, '	C.F.T. Centro Tecnológico Superior INFOMED	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (36, '	C.F.T. CEPA de la III Región	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (38, '	C.F.T. CEPONAL	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (39, '	C.F.T. Chileno-Norteamericano	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (40, '	C.F.T. CIARTES	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (41, '	C.F.T. COLCHAGUA	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (42, '	C.F.T. CRECIC	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (43, '	C.F.T. CROWNLIET	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (45, '	C.F.T. de Educación Superior Agrícola Miguel Covarrubias Valdés	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (46, '	C.F.T. de ENAC	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (47, '	C.F.T. de la Industria Gráfica o CFT.  INGRAF	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (48, '	C.F.T. de Tarapacá	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (49, '	C.F.T. del Medio Ambiente	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (50, '	C.F.T. Diego Portales	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (52, '	C.F.T. ECATEMA	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (53, '	C.F.T. EDUCAP	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (54, '	C.F.T. El Libertador	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (55, '	C.F.T. El Roble	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (56, '	C.F.T. English Language Training Center	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (57, '	C.F.T. ESANE DEL NORTE	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (59, '	C.F.T. Escuela de Administración Agrícola de la S.N.A.	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (60, '	C.F.T. Escuela de Altos Estudios de la Comunicación y Educación EACE	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (61, '	C.F.T. Escuela de Artes Aplicadas Oficios del Fuego	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (62, '	C.F.T. Escuela de Ciencias Turísticas e Idiomas EDECTI	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (63, '	C.F.T. Escuela de Contabilidad y Administración, Centro de Estudios Contables ECACEC	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (64, '	C.F.T. Escuela de Interpretes INCENI	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (66, '	C.F.T. Escuela Superior de Administración de Negocios - ESANE	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (67, '	C.F.T. Escuela Superior de Comercio Exterior	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (68, '	C.F.T. Escuela Superior de Comercio Exterior de Santiago ESCES	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (69, '	C.F.T. Estudio Profesor Valero	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (70, '	C.F.T. ESUCOMEX	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (71, '	C.F.T. Eugenio González Rojas	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (73, '	C.F.T. FIRENZE	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (74, '	C.F.T. FONTANAR	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (75, '	C.F.T. Genoveva Guarniero	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (76, '	C.F.T. ICADE	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (77, '	C.F.T. ICEL	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (78, '	C.F.T. Ignacio Domeyko	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (80, '	C.F.T. INCOR	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (81, '	C.F.T. INFOEDUC	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (82, '	C.F.T. INSEC	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (83, '	C.F.T. INSES	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (84, '	C.F.T. Instituto Central de Capacitación Educacional ICCE	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (85, '	C.F.T. Instituto Chileno Alemán de Cultura de San Antonio	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (87, '	C.F.T. Instituto Chileno Británico de Concepción	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (88, '	C.F.T. Instituto de Capacitación Luis Alberto Vera	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (89, '	C.F.T. Instituto de Formación Empresarial IFE Escuela de Negocios	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (90, '	C.F.T. Instituto INTEC	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (91, '	C.F.T. Instituto Superior Alemán de Comercio INSALCO	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (92, '	C.F.T. Instituto Superior de Computación	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (94, '	C.F.T. Instituto Superior de Electrónica GAMMA	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (95, '	C.F.T. Instituto Superior de Estudios Jurídicos CANON	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (96, '	C.F.T. Instituto Técnológico de Computación - I.T.C.	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (97, '	C.F.T. INTECTUR	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (98, '	C.F.T. International House	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (99, '	C.F.T. INTESAN	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (101, '	C.F.T. IPROSEC	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (102, '	C.F.T. ITESA	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (103, '	C.F.T. ITUR	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (104, '	C.F.T. Javiera Carrera	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (105, '	C.F.T. Jhon F. Kennedy	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (106, '	C.F.T. Jorge Alvarez Echeverría	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (108, '	C.F.T. Juan Bohon	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (109, '	C.F.T. La Calera	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (110, '	C.F.T. LAPLACE	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (111, '	C.F.T. Los Fundadores	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (112, '	C.F.T. Los Leones	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (113, '	C.F.T. Lota-Arauco	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (115, '	C.F.T. Massachusetts	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (116, '	C.F.T. Osorno	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (117, '	C.F.T. PRODATA	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (118, '	C.F.T. PUKARA	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (119, '	C.F.T. Salesianos Don Bosco	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (120, '	C.F.T. San Agustín de Talca	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (122, '	C.F.T. Santa María del Trabajo	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (123, '	C.F.T. Santo Tomás	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (124, '	C.F.T. Simón Bolivar	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (125, '	C.F.T. SOEDUC Aconcagua	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (126, '	C.F.T. SOEDUC La Ligua	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (127, '	C.F.T. SOESTA	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (129, '	C.F.T. TECCON	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (130, '	C.F.T. Tecnológico PROTEC	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (131, '	C.F.T. UDA	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (132, '	C.F.T. Umbrale de Santiago	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (133, '	C.F.T. UTEM	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (134, '	C.F.T. y Capacitación CEFOTEC	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (136, '	C.F.T. ZIPTER	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (137, '	CEAT	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (138, '	Complejo Educacional Lo Barnechea	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (139, '	DuocUC	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (140, '	Ejército de Chile	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (141, '	Escuela de Aviación	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (143, '	Escuela de Carabineros	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (144, '	Escuela de Comunicación Mónica Herrera	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (145, '	Escuela de Diseño V Región	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (146, '	Escuela de Ingeniería Naval	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (147, '	Escuela de Investigaciones	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (148, '	Escuela de la Fuerza Aérea de Chile	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (150, '	Escuela de Locutores de Chile	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (151, '	Escuela de Medicina V Región	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (152, '	Escuela de música	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (153, '	Escuela Militar	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (154, '	Escuela Naval	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (155, '	ESE - Estudios Superiores de la Empresa	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (157, '	I.P.  Santo Tomás	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (158, '	I.P. Adventista	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (159, '	I.P. Agrario Adolfo Matthei	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (160, '	I.P. Alemán Wilhelm Von Humboldt	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (161, '	I.P. Alpes	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (162, '	I.P. Andalien	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (164, '	I.P. Asociación Chilena de Seguridad	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (165, '	I.P. Carlos Casanueva	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (166, '	I.P. CEC	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (167, '	I.P. Cenafom	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (168, '	I.P. CEPECH	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (169, '	I.P. Chileno Británico de Cultura	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (171, '	I.P. CIISA	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (172, '	I.P. Concepción	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (173, '	I.P. De Arte y Comunicación ARCOS	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (174, '	I.P. de Ciencias de la Computación Acuario Data	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (175, '	I.P. de Ciencias y Artes INCACEA	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (176, '	I.P. de Ciencias y Educación Helen Keller	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (178, '	I.P. de ENAC	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (179, '	I.P. de Estudios bancarios Guillermo Subercaseaux	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (180, '	I.P. de Formación Empresarial	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (181, '	I.P. de las Comunicaciones PROCOM	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (182, '	I.P. de Los Angeles	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (183, '	I.P. de Providencia	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (185, '	I.P. del Pacífico	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (186, '	I.P. Diego Portales	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (187, '	I.P. Dr. Virginio Gómez G.	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (188, '	I.P. EATRI	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (189, '	I.P. ECACEC	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (190, '	I.P. Escuela de Contadores Auditores de Santiago	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (192, '	I.P. Escuela Latinoamericana de Idiomas ELADI	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (193, '	I.P. Escuela Moderna de Música	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (194, '	I.P. Escuela Nacional de Relaciones Públicas	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (195, '	I.P. ESUCOMEX	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (196, '	I.P. Hogar Catequístico	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (197, '	I.P. INDAE o Campus	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (199, '	I.P. Instituto Profesional de Chile	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (200, '	I.P. La Araucana	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (201, '	I.P. Latinoamericano de Comercio Exterior	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (202, '	I.P. Libertador de Los Andes	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (203, '	I.P. Los Leones	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (204, '	I.P. Luis Galdames	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (206, '	I.P. Manpower	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (207, '	I.P. Nacional del Fútbol	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (208, '	I.P. Profesional Campus	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (209, '	I.P. San Bartolomé de La Serena	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (210, '	I.P. Superior de Artes y Ciencias de la Comunicación	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (211, '	I.P. Superior de Electrónica Gamma	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (213, '	I.P. Teatro la Casa	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (214, '	I.P. Valle Central	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (215, '	IEDE Escuela de Negocios Española	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (216, '	INACAP	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (217, '	Instituto AIEP	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (218, '	Otra Institución	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (220, '	Pontificia U. Católica de Chile	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (221, '	Pontificia U. Católica de Valparaíso	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (222, '	Seminario	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (223, '	Técnico Industrial (SOFOFA)	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (224, '	U. Academia de Humanismo Cristiano	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (225, '	U. Adolfo Ibañez	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (227, '	U. Alberto Hurtado	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (228, '	U. Alonso de Ovalle	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (229, '	U. Arcis	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (230, '	U. Arturo Prat de Iquique	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (231, '	U. Austral de Chile	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (232, '	U. Autónoma del Sur	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (234, '	U. Bernardo O`Higgins	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (235, '	U. Bolivariana	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (236, '	U. Católica Blas Cañas	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (237, '	U. Católica Cardenal Raúl Silva Henríquez	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (238, '	U. Católica de la Santísima Concepción	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (239, '	U. Católica de Temuco	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (241, '	U. Católica del Maule	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (242, '	U. Católica del Norte	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (243, '	U. Central	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (244, '	U. de Aconcagua	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (245, '	U. de Antofagasta	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (246, '	U. de Atacama	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (248, '	U. de Chile	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (249, '	U. de Ciencias de la Informática	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (250, '	U. de Concepción	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (251, '	U. de La Frontera de Temuco	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (252, '	U. de la Serena	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (253, '	U. de las Américas	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (255, '	U. de los Andes	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (256, '	U. de los Lagos	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (257, '	U. de Magallanes	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (258, '	U. de Playa Ancha	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (259, '	U. de Puerto Varas	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (260, '	U. de San Andrés	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (262, '	U. de Santiago de Chile	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (263, '	U. de Talca	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (264, '	U. de Tarapacá	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (265, '	U. de Valparaíso	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (266, '	U. de Viña del Mar	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (267, '	U. del Bío Bío	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (269, '	U. del Desarrollo	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (270, '	U. del Mar	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (271, '	U. del Pacífico	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (272, '	U. Diego Portales	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (273, '	U. Educares	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (274, '	U. Finis Terrae	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (276, '	U. Francisco de Aguirre de la Serena	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (277, '	U. Francisco de Vitoria	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (278, '	U. Gabriela Mistral	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (279, '	U. Iberoamericana de Ciencias y Tecnología, UNICYT	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (280, '	U. Internacional SEK	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (281, '	U. La República	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (283, '	U. las Condes	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (284, '	U. Mariano Egaña	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (285, '	U. Mayor	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (286, '	U. Metropolitana de Ciencias de la Educación	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (287, '	U. Miguel de Cervantes	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (288, '	U. Nacional Andrés Bello	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (290, '	U. San Sebastián	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (291, '	U. Santo Tomás	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (292, '	U. Técnica Federico Santa María	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (293, '	U. Tecnológica Metropolitana	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (294, '	U. Tecnológica Vicente Pérez Rosales	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (295, '	U. UNIACC	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (297, '	Universidad Adventista de Chile	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (298, '	Universidad Marítima de Chile	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (299, '	Universidad Pedro de Valdivia	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (300, '	Universidad Tecnológica de Chile INACAP (UTC)	');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `mgg_provincias`
-- 

DROP TABLE IF EXISTS `mgg_provincias`;
CREATE TABLE `mgg_provincias` (
  `id` int(11) NOT NULL default '0',
  `relacion` int(11) default NULL,
  `nombre` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `mgg_provincias`
-- 

INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (1, 15, 'Arica');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (2, 1, 'Iquique');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (3, 15, 'Parinacota');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (4, 2, 'Antofagasta');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (5, 2, 'El Loa');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (6, 2, 'Tocopilla');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (7, 3, 'Copiapó');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (8, 3, 'Chañaral');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (9, 3, 'Huasco');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (10, 4, 'Elqui');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (11, 4, 'Choapa');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (12, 4, 'Limarí');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (13, 5, 'Valparaíso');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (14, 5, 'Isla de Pascua');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (15, 5, 'Los Andes');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (16, 5, 'Petorca');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (17, 5, 'Quillota');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (18, 5, 'San Antonio');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (19, 5, 'San Felipe de Aconcagua');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (20, 6, 'Cachapoal');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (21, 6, 'Cardenal Caro');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (22, 6, 'Colchagua');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (23, 7, 'Talca');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (24, 7, 'Cauquenes');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (25, 7, 'Curicó');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (26, 7, 'Linares');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (27, 8, 'Concepción');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (28, 8, 'Arauco');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (29, 8, 'Biobío');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (30, 8, 'Ñuble');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (31, 9, 'Cautín');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (32, 9, 'Malleco');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (33, 10, 'Llanquihue');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (34, 10, 'Chiloé');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (35, 10, 'Osorno');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (36, 10, 'Palena');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (37, 14, 'Valdivia');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (38, 11, 'Coihaique');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (39, 11, 'Aisén');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (40, 11, 'Capitán Prat');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (41, 11, 'General Carrera');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (42, 12, 'Magallenes');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (43, 12, 'Antártica Chilena');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (44, 12, 'Tierra del Fuego');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (45, 12, 'Ultima Esperanza');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (46, 13, 'Santiago');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (47, 13, 'Cordillera');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (48, 13, 'Chacabuco');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (49, 13, 'Maipo');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (50, 13, 'Melipilla');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (51, 13, 'Talagante');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (52, 14, 'Ranco');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (53, 1, 'Del Tamarugal');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `mgg_puestos`
-- 

DROP TABLE IF EXISTS `mgg_puestos`;
CREATE TABLE `mgg_puestos` (
  `id` int(11) NOT NULL auto_increment,
  `empresa` int(11) NOT NULL default '0',
  `puesto` varchar(80) collate utf8_spanish_ci NOT NULL default '',
  `descripcion` text collate utf8_spanish_ci NOT NULL,
  `vacantes` int(11) NOT NULL default '0',
  `uniqueid` varchar(32) collate utf8_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=9 ;

-- 
-- Volcar la base de datos para la tabla `mgg_puestos`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `mgg_regiones`
-- 

DROP TABLE IF EXISTS `mgg_regiones`;
CREATE TABLE `mgg_regiones` (
  `id` int(11) NOT NULL default '0',
  `nombre` text,
  `cd_reg_ncorto` text,
  `cd_reg_orden` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `mgg_regiones`
-- 

INSERT INTO `mgg_regiones` (`id`, `nombre`, `cd_reg_ncorto`, `cd_reg_orden`) VALUES (1, 'I Región de Tarapacá', 'Región I', 2);
INSERT INTO `mgg_regiones` (`id`, `nombre`, `cd_reg_ncorto`, `cd_reg_orden`) VALUES (2, 'II Región de Antofagasta', 'Región II', 3);
INSERT INTO `mgg_regiones` (`id`, `nombre`, `cd_reg_ncorto`, `cd_reg_orden`) VALUES (3, 'III Región de Atacama', 'Región III', 4);
INSERT INTO `mgg_regiones` (`id`, `nombre`, `cd_reg_ncorto`, `cd_reg_orden`) VALUES (4, 'IV Región de Coquimbo', 'Región IV', 5);
INSERT INTO `mgg_regiones` (`id`, `nombre`, `cd_reg_ncorto`, `cd_reg_orden`) VALUES (5, 'V Región de Valparaíso', 'Región V', 6);
INSERT INTO `mgg_regiones` (`id`, `nombre`, `cd_reg_ncorto`, `cd_reg_orden`) VALUES (6, 'VI Región del Libertador General Bernardo O''higgins', 'Región VI', 7);
INSERT INTO `mgg_regiones` (`id`, `nombre`, `cd_reg_ncorto`, `cd_reg_orden`) VALUES (7, 'VII Región del Maule', 'Región VII', 8);
INSERT INTO `mgg_regiones` (`id`, `nombre`, `cd_reg_ncorto`, `cd_reg_orden`) VALUES (8, 'VIII Región del Biobío', 'Región VIII', 9);
INSERT INTO `mgg_regiones` (`id`, `nombre`, `cd_reg_ncorto`, `cd_reg_orden`) VALUES (9, 'IX Región de la Araucanía', 'Región IX', 10);
INSERT INTO `mgg_regiones` (`id`, `nombre`, `cd_reg_ncorto`, `cd_reg_orden`) VALUES (10, 'X Región de los Lagos', 'Región X', 12);
INSERT INTO `mgg_regiones` (`id`, `nombre`, `cd_reg_ncorto`, `cd_reg_orden`) VALUES (11, 'XI Región Aysén del General Carlos Ibáñez del Campo', 'Región XI', 13);
INSERT INTO `mgg_regiones` (`id`, `nombre`, `cd_reg_ncorto`, `cd_reg_orden`) VALUES (12, 'XII Región de Magallanes y de la Antártica Chilena', 'Región XII', 14);
INSERT INTO `mgg_regiones` (`id`, `nombre`, `cd_reg_ncorto`, `cd_reg_orden`) VALUES (13, 'Región Metropolitana de Santiago', 'Región Metropolitana', 15);
INSERT INTO `mgg_regiones` (`id`, `nombre`, `cd_reg_ncorto`, `cd_reg_orden`) VALUES (14, 'XIV Región de Los Rios', 'Región XIV', 11);
INSERT INTO `mgg_regiones` (`id`, `nombre`, `cd_reg_ncorto`, `cd_reg_orden`) VALUES (15, 'XV Región de Arica y Parinacota', 'Región XV', 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `mgg_usuarios`
-- 

DROP TABLE IF EXISTS `mgg_usuarios`;
CREATE TABLE `mgg_usuarios` (
  `username` varchar(20) collate utf8_spanish_ci NOT NULL default '',
  `nombre` varchar(100) collate utf8_spanish_ci NOT NULL default '',
  `password` varchar(32) collate utf8_spanish_ci NOT NULL default '',
  `tipo` enum('admin','user') collate utf8_spanish_ci NOT NULL default 'admin',
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- 
-- Volcar la base de datos para la tabla `mgg_usuarios`
-- 

INSERT INTO `mgg_usuarios` (`username`, `nombre`, `password`, `tipo`) VALUES ('admin', 'Administrador', '21232f297a57a5a743894a0e4a801fc3', 'admin');
