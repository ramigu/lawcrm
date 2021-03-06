-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 22. Jul 2014 um 03:17
-- Server Version: 5.6.14
-- PHP-Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `lex`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `com_adr_cities`
--

CREATE TABLE IF NOT EXISTS `com_adr_cities` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `region` varchar(120) CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `country` varchar(120) COLLATE latin1_general_ci NOT NULL DEFAULT 'DE',
  `state` varchar(120) CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `region` (`region`),
  KEY `country` (`country`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `com_adr_court`
--

CREATE TABLE IF NOT EXISTS `com_adr_court` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `court_type` varchar(120) CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `place` varchar(120) CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `adrr_add` varchar(120) CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `street_n_nr` varchar(120) CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `phone` varchar(120) COLLATE latin1_general_ci NOT NULL,
  `fax` varchar(120) COLLATE latin1_general_ci NOT NULL,
  `PLZ` int(8) unsigned NOT NULL,
  `addr_place` varchar(120) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `type` (`court_type`),
  KEY `place` (`place`),
  KEY `adrr_add` (`adrr_add`),
  KEY `street_n_nr` (`street_n_nr`),
  KEY `phone` (`phone`),
  KEY `fax` (`fax`),
  KEY `court_type` (`court_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=68 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `com_adr_court_type`
--

CREATE TABLE IF NOT EXISTS `com_adr_court_type` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `court_type` varchar(120) CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `country` varchar(120) COLLATE latin1_general_ci NOT NULL DEFAULT 'DE',
  `shortname` varchar(20) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `court_type` (`court_type`),
  KEY `type` (`court_type`),
  KEY `country` (`country`),
  KEY `type_2` (`court_type`),
  KEY `country_2` (`country`),
  KEY `shortname` (`shortname`),
  KEY `id_2` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=20 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `com_adr_orgs_types`
--

CREATE TABLE IF NOT EXISTS `com_adr_orgs_types` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `type` varchar(120) COLLATE latin1_general_ci NOT NULL,
  `type_short` varchar(80) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type_2` (`type`),
  KEY `type` (`type`),
  KEY `type_short` (`type_short`),
  KEY `type_3` (`type`),
  KEY `myindex` (`id`),
  KEY `type_4` (`type`),
  KEY `type_short_2` (`type_short`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=12 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `com_adr_states`
--

CREATE TABLE IF NOT EXISTS `com_adr_states` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `state` varchar(120) COLLATE latin1_general_ci NOT NULL,
  `country` varchar(120) COLLATE latin1_general_ci NOT NULL DEFAULT 'DE',
  PRIMARY KEY (`id`),
  UNIQUE KEY `state` (`state`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `com_lang_ger_country`
--

CREATE TABLE IF NOT EXISTS `com_lang_ger_country` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE latin1_general_ci NOT NULL,
  `letter` varchar(120) COLLATE latin1_general_ci NOT NULL,
  `ISO3166` varchar(120) COLLATE latin1_general_ci NOT NULL,
  `short` varchar(120) COLLATE latin1_general_ci NOT NULL,
  `official` varchar(120) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tld_2` (`ISO3166`),
  UNIQUE KEY `id` (`id`),
  KEY `official` (`official`),
  KEY `short` (`short`),
  KEY `tld` (`ISO3166`),
  KEY `letter` (`letter`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `com_lang_ger_xps`
--

CREATE TABLE IF NOT EXISTS `com_lang_ger_xps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `szenario` varchar(240) COLLATE latin1_general_ci NOT NULL,
  `headline` varchar(240) COLLATE latin1_general_ci NOT NULL,
  `intro_descriptom` varchar(480) COLLATE latin1_general_ci NOT NULL,
  `remaining_description` varchar(2560) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`szenario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `com_lang_ger_xps_attributes`
--

CREATE TABLE IF NOT EXISTS `com_lang_ger_xps_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(240) COLLATE latin1_general_ci NOT NULL,
  `phrase` varchar(1280) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `com_lang_int_country`
--

CREATE TABLE IF NOT EXISTS `com_lang_int_country` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `ISO3166` varchar(120) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `name_ger` varchar(120) CHARACTER SET utf32 NOT NULL,
  `name_native` varchar(120) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `kfz` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `EU` enum('','+','','') NOT NULL,
  `dialingcode` int(5) unsigned NOT NULL,
  `ger` enum('','+','p') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `fr` enum('','+','p') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `eng` enum('','+','p') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nl` enum('','+','p') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`ISO3166`),
  UNIQUE KEY `LAND` (`ISO3166`),
  KEY `LAND_2` (`ISO3166`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf16 AUTO_INCREMENT=36 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `com_reg_attorneys`
--

CREATE TABLE IF NOT EXISTS `com_reg_attorneys` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `attorney-number` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `com_xps`
--

CREATE TABLE IF NOT EXISTS `com_xps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `szenario` varchar(240) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `szenario` (`szenario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `com_xps_attributes`
--

CREATE TABLE IF NOT EXISTS `com_xps_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(240) COLLATE latin1_general_ci NOT NULL,
  `type` enum('','question') COLLATE latin1_general_ci NOT NULL,
  `answertype` enum('','number','string','date','boolean') COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `com_xps_pathsteps`
--

CREATE TABLE IF NOT EXISTS `com_xps_pathsteps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dat_docs`
--

CREATE TABLE IF NOT EXISTS `dat_docs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doc-type` enum('','letter','email','fax','delivered') COLLATE latin1_general_ci NOT NULL,
  `recipient-person` varchar(240) COLLATE latin1_general_ci NOT NULL,
  `sender-person` varchar(480) COLLATE latin1_general_ci NOT NULL,
  `date-year` int(4) NOT NULL,
  `date-month` int(2) NOT NULL,
  `date-day` int(2) NOT NULL,
  `received-at` enum('','postbox','postofficebox','home','postoffice') COLLATE latin1_general_ci NOT NULL,
  `placed-at` varchar(480) COLLATE latin1_general_ci NOT NULL,
  `by-person` varchar(480) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dat_docs_reg_in`
--

CREATE TABLE IF NOT EXISTS `dat_docs_reg_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doc-type` enum('','letter','email','fax','delivered') COLLATE latin1_general_ci NOT NULL,
  `recipient-person` varchar(240) COLLATE latin1_general_ci NOT NULL,
  `sender-person` varchar(480) COLLATE latin1_general_ci NOT NULL,
  `date-year` int(4) NOT NULL,
  `date-month` int(2) NOT NULL,
  `date-day` int(2) NOT NULL,
  `received-at` enum('','postbox','postofficebox','home','postoffice') COLLATE latin1_general_ci NOT NULL,
  `placed-at` varchar(480) COLLATE latin1_general_ci NOT NULL,
  `by-person` varchar(480) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dat_docs_reg_out`
--

CREATE TABLE IF NOT EXISTS `dat_docs_reg_out` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mail-type` enum('','letter','email') COLLATE latin1_general_ci NOT NULL,
  `date-year` int(4) NOT NULL,
  `date-month` int(2) NOT NULL,
  `date-day` int(2) NOT NULL,
  `received-at` enum('','postbox','postofficebox','home','postoffice') COLLATE latin1_general_ci NOT NULL,
  `placed-at` varchar(480) COLLATE latin1_general_ci NOT NULL,
  `by-person` varchar(480) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dat_docs_templates`
--

CREATE TABLE IF NOT EXISTS `dat_docs_templates` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `docname` varchar(480) COLLATE latin1_general_ci NOT NULL,
  `doctype` varchar(120) COLLATE latin1_general_ci NOT NULL,
  `model_nr` int(8) NOT NULL,
  `data` mediumblob NOT NULL,
  `size` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=12 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dat_persons`
--

CREATE TABLE IF NOT EXISTS `dat_persons` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `type` enum('','orgs','individuals','orgs_sections') COLLATE latin1_general_ci NOT NULL,
  `foreign-id` int(12) NOT NULL,
  `shortname` varchar(240) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `foreign-id` (`foreign-id`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=30 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dat_persons_auth`
--

CREATE TABLE IF NOT EXISTS `dat_persons_auth` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `persons_id` int(12) NOT NULL,
  `type` enum('','ID','qes','signature','de-mail','personel','bank-account','pgp','business-documents','website','email') COLLATE latin1_general_ci NOT NULL,
  `doc-id` int(12) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dat_persons_individuals`
--

CREATE TABLE IF NOT EXISTS `dat_persons_individuals` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `attorney` enum('no','yes') COLLATE latin1_general_ci NOT NULL DEFAULT 'no',
  `gender` enum('','male','female','') COLLATE latin1_general_ci NOT NULL,
  `appelation` enum('') COLLATE latin1_general_ci NOT NULL,
  `firstname` varchar(240) COLLATE latin1_general_ci NOT NULL,
  `firstnames` varchar(240) COLLATE latin1_general_ci NOT NULL,
  `lastname` varchar(240) COLLATE latin1_general_ci NOT NULL,
  `street` varchar(240) COLLATE latin1_general_ci NOT NULL,
  `streetnr` varchar(12) COLLATE latin1_general_ci NOT NULL,
  `postcode` varchar(240) COLLATE latin1_general_ci NOT NULL,
  `city` varchar(240) COLLATE latin1_general_ci NOT NULL,
  `familystatus` enum('','single','engaged','married','seperated','divorced','widowed') COLLATE latin1_general_ci NOT NULL,
  `birthday_year` int(4) NOT NULL,
  `birthday_month` int(2) NOT NULL,
  `birthday_day` int(2) NOT NULL,
  `birthplace` varchar(240) COLLATE latin1_general_ci NOT NULL,
  `job_occupation` varchar(480) COLLATE latin1_general_ci NOT NULL,
  `job_profession` varchar(480) COLLATE latin1_general_ci NOT NULL,
  `phone_private` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `phone_job` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `fax_private` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `fax_job` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `email_private` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `email_job` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `care` enum('','yes') COLLATE latin1_general_ci NOT NULL,
  `legal_insurance` varchar(480) COLLATE latin1_general_ci NOT NULL,
  `welfare` varchar(480) COLLATE latin1_general_ci NOT NULL,
  `poverty` varchar(480) COLLATE latin1_general_ci NOT NULL,
  `termsgeneral` enum('','accepted','declined') COLLATE latin1_general_ci NOT NULL,
  `termslawcrm` enum('','accepted','declined') COLLATE latin1_general_ci NOT NULL,
  `prefered-contract-type` varchar(480) COLLATE latin1_general_ci NOT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `first-name` (`firstname`),
  KEY `last-name` (`lastname`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=3 ;

--
-- Trigger `dat_persons_individuals`
--
DROP TRIGGER IF EXISTS `trig_after_insert_indiv`;
DELIMITER //
CREATE TRIGGER `trig_after_insert_indiv` AFTER INSERT ON `dat_persons_individuals`
 FOR EACH ROW INSERT INTO `dat_persons` (`type`, `foreign-id`, `shortname`) VALUES ('individuals', NEW.id, NEW.lastname)
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dat_persons_orgs`
--

CREATE TABLE IF NOT EXISTS `dat_persons_orgs` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(240) COLLATE latin1_general_ci NOT NULL,
  `shortname` varchar(120) COLLATE latin1_general_ci NOT NULL,
  `lang_int_country` varchar(120) COLLATE latin1_general_ci NOT NULL DEFAULT 'DE',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_3` (`name`),
  UNIQUE KEY `id` (`id`),
  KEY `name` (`name`),
  KEY `name_2` (`name`),
  KEY `name_4` (`name`),
  KEY `lang_int_country` (`lang_int_country`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=343440 ;

--
-- Trigger `dat_persons_orgs`
--
DROP TRIGGER IF EXISTS `trig_after_insert`;
DELIMITER //
CREATE TRIGGER `trig_after_insert` AFTER INSERT ON `dat_persons_orgs`
 FOR EACH ROW INSERT INTO `dat_persons` (`type`, `foreign-id`, `shortname`) VALUES ('orgs', NEW.id, NEW.shortname)
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dat_persons_orgs_section`
--

CREATE TABLE IF NOT EXISTS `dat_persons_orgs_section` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(120) COLLATE latin1_general_ci NOT NULL,
  `org` varchar(120) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `org-sub` (`section`,`org`),
  KEY `id` (`id`),
  KEY `org-sub_2` (`section`),
  KEY `org` (`org`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=6 ;

--
-- Trigger `dat_persons_orgs_section`
--
DROP TRIGGER IF EXISTS `trig_after_insert_persons_orgs_sections`;
DELIMITER //
CREATE TRIGGER `trig_after_insert_persons_orgs_sections` AFTER INSERT ON `dat_persons_orgs_section`
 FOR EACH ROW INSERT INTO `dat_persons` (`type`, `foreign-id`, `shortname`) VALUES ('orgs_sections', NEW.id, NEW.section)
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dat_persons_pkeys`
--

CREATE TABLE IF NOT EXISTS `dat_persons_pkeys` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dat_reg_common`
--

CREATE TABLE IF NOT EXISTS `dat_reg_common` (
  `id` bigint(12) NOT NULL AUTO_INCREMENT,
  `type` enum('phonecall','email','meeting','fax','mail','crossthinking','bytime','case') COLLATE latin1_general_ci NOT NULL,
  `notes` longtext COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dat_reg_mandates`
--

CREATE TABLE IF NOT EXISTS `dat_reg_mandates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `reference` varchar(12) COLLATE latin1_general_ci NOT NULL,
  `status` enum('','checkup','active','monitoring','retention','suspension','termination') COLLATE latin1_general_ci NOT NULL,
  `agreement` varchar(240) COLLATE latin1_general_ci NOT NULL,
  `comment` varchar(240) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=6 ;

--
-- Trigger `dat_reg_mandates`
--
DROP TRIGGER IF EXISTS `trig_after_insert_dat_reg_mandates`;
DELIMITER //
CREATE TRIGGER `trig_after_insert_dat_reg_mandates` AFTER INSERT ON `dat_reg_mandates`
 FOR EACH ROW INSERT INTO `dat_reg_mandates_cases` (`mandates_id`, `mandates_cases_id`) VALUES (NEW.id, '0')
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dat_reg_mandates_cases`
--

CREATE TABLE IF NOT EXISTS `dat_reg_mandates_cases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agreement` varchar(240) COLLATE latin1_general_ci NOT NULL,
  `mandates_id` int(12) NOT NULL,
  `mandates_cases_id` int(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dat_reg_mandates_cases_persons`
--

CREATE TABLE IF NOT EXISTS `dat_reg_mandates_cases_persons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `role` enum('party','attorney','representative','court','deponent','','') COLLATE latin1_general_ci NOT NULL,
  `is_client` enum('','yes') COLLATE latin1_general_ci NOT NULL,
  `faction` enum('','friendly','opposition','neutral') COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `person_id` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dat_reg_mandates_persons`
--

CREATE TABLE IF NOT EXISTS `dat_reg_mandates_persons` (
  `id` int(11) NOT NULL,
  `cases_number` int(12) NOT NULL,
  `persons_number` int(12) NOT NULL,
  `role-type` enum('','client','opponent','court','deponent','other') COLLATE latin1_general_ci NOT NULL,
  `role-subtype` enum('','attorney','ceo','parent','other-representative','') COLLATE latin1_general_ci NOT NULL,
  `addr-priority` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dat_sys`
--

CREATE TABLE IF NOT EXISTS `dat_sys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dat_sys_roles`
--

CREATE TABLE IF NOT EXISTS `dat_sys_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dat_sys_roles_rights`
--

CREATE TABLE IF NOT EXISTS `dat_sys_roles_rights` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dat_sys_settings_privacy`
--

CREATE TABLE IF NOT EXISTS `dat_sys_settings_privacy` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dat_sys_users`
--

CREATE TABLE IF NOT EXISTS `dat_sys_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user-name` varchar(480) COLLATE latin1_general_ci NOT NULL,
  `attorney-number` int(12) NOT NULL,
  `staff-number` int(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dat_sys_users_sessions`
--

CREATE TABLE IF NOT EXISTS `dat_sys_users_sessions` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `sessions` varchar(25) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dat_sys_users_settings`
--

CREATE TABLE IF NOT EXISTS `dat_sys_users_settings` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
