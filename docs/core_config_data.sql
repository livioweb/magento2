-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jul 20, 2019 at 01:52 PM
-- Server version: 5.7.22
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
-- Database: `magento`
--

-- --------------------------------------------------------

--
-- Table structure for table `core_config_data`
--

CREATE TABLE `core_config_data` (
  `config_id` int(10) UNSIGNED NOT NULL COMMENT 'Config Id',
  `scope` varchar(8) NOT NULL DEFAULT 'default' COMMENT 'Config Scope',
  `scope_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Config Scope Id',
  `path` varchar(255) NOT NULL DEFAULT 'general' COMMENT 'Config Path',
  `value` text COMMENT 'Config Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Config Data';

--
-- Dumping data for table `core_config_data`
--

INSERT INTO `core_config_data` (`config_id`, `scope`, `scope_id`, `path`, `value`) VALUES
(1, 'default', 0, 'general/region/display_all', '1'),
(2, 'default', 0, 'general/region/state_required', 'BR,CA,CH,EE,ES,HR,IN,LT,LV,RO,US'),
(3, 'default', 0, 'catalog/category/root_id', '2'),
(4, 'default', 0, 'msp_securitysuite_twofactorauth/duo/application_key', 'eA27r3JzoQhSeqkYgujtwqTWMcHEpO4NYUuAUDsunUrio2VQuD9us2EoE86mOjra'),
(5, 'default', 0, 'analytics/subscription/enabled', '1'),
(6, 'default', 0, 'crontab/default/jobs/analytics_subscribe/schedule/cron_expr', '0 * * * *'),
(7, 'website', 0, 'connector_configuration/transactional_data/order_statuses', 'canceled,closed,complete,fraud,holded,payment_review,paypal_canceled_reversal,paypal_reversed,pending,pending_payment,pending_paypal,processing'),
(8, 'website', 0, 'connector_configuration/catalog_sync/catalog_type', 'simple,virtual,configurable,downloadable,grouped,bundle'),
(9, 'website', 0, 'connector_configuration/catalog_sync/catalog_visibility', '1,2,3,4'),
(10, 'default', 0, 'connector_dynamic_content/external_dynamic_content_urls/passcode', 'BRvIQ5EY38BcgvplwF8TUmy9TiSeFG9c'),
(11, 'default', 0, 'connector_automation/review_settings/allow_non_subscribers', '1'),
(12, 'default', 0, 'connector_configuration/abandoned_carts/allow_non_subscribers', '1'),
(13, 'default', 0, 'sync_settings/addressbook/allow_non_subscribers', '1'),
(14, 'default', 0, 'web/unsecure/base_url', 'http://local.grupomateus.com.br/'),
(15, 'default', 0, 'web/secure/base_url', 'https://local.grupomateus.com.br/'),
(16, 'default', 0, 'dev/static/sign', '0'),
(17, 'default', 0, 'sales/msrp/enabled', '1'),
(18, 'default', 0, 'design/theme/theme_id', '2'),
(19, 'default', 0, 'design/head/includes', '<link  rel=\"stylesheet\" type=\"text/css\"  media=\"all\" href=\"{{MEDIA_URL}}styles.css\" />'),
(20, 'default', 0, 'carriers/tablerate/active', '1'),
(21, 'default', 0, 'carriers/tablerate/condition_name', 'package_value_with_discount'),
(22, 'default', 0, 'web/seo/use_rewrites', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `core_config_data`
--
ALTER TABLE `core_config_data`
  ADD PRIMARY KEY (`config_id`),
  ADD UNIQUE KEY `CORE_CONFIG_DATA_SCOPE_SCOPE_ID_PATH` (`scope`,`scope_id`,`path`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `core_config_data`
--
ALTER TABLE `core_config_data`
  MODIFY `config_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Config Id', AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
