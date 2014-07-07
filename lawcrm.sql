-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 07. Jul 2014 um 23:09
-- Server Version: 5.6.14
-- PHP-Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Datenbank: `lex`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `com_adr-cities`
--

CREATE TABLE IF NOT EXISTS `com_adr-cities` (
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
-- Tabellenstruktur für Tabelle `com_adr-court`
--

CREATE TABLE IF NOT EXISTS `com_adr-court` (
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
-- Tabellenstruktur für Tabelle `com_adr-court-type`
--

CREATE TABLE IF NOT EXISTS `com_adr-court-type` (
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
-- Tabellenstruktur für Tabelle `com_adr-orgs-types`
--

CREATE TABLE IF NOT EXISTS `com_adr-orgs-types` (
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
-- Tabellenstruktur für Tabelle `com_adr-states`
--

CREATE TABLE IF NOT EXISTS `com_adr-states` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `state` varchar(120) COLLATE latin1_general_ci NOT NULL,
  `country` varchar(120) COLLATE latin1_general_ci NOT NULL DEFAULT 'DE',
  PRIMARY KEY (`id`),
  UNIQUE KEY `state` (`state`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `com_lang-ger-country`
--

CREATE TABLE IF NOT EXISTS `com_lang-ger-country` (
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
-- Tabellenstruktur für Tabelle `com_lang-int-country`
--

CREATE TABLE IF NOT EXISTS `com_lang-int-country` (
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
-- Tabellenstruktur für Tabelle `com_reg-attorneys`
--

CREATE TABLE IF NOT EXISTS `com_reg-attorneys` (
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `com_xps-attributes`
--

CREATE TABLE IF NOT EXISTS `com_xps-attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `com_xps-pathsteps`
--

CREATE TABLE IF NOT EXISTS `com_xps-pathsteps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `com_xps-phrases`
--

CREATE TABLE IF NOT EXISTS `com_xps-phrases` (
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
-- Tabellenstruktur für Tabelle `dat_docs-reg-in`
--

CREATE TABLE IF NOT EXISTS `dat_docs-reg-in` (
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
-- Tabellenstruktur für Tabelle `dat_docs-reg-out`
--

CREATE TABLE IF NOT EXISTS `dat_docs-reg-out` (
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
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dat_persons-index`
--

CREATE TABLE IF NOT EXISTS `dat_persons-index` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dat_persons-individuals`
--

CREATE TABLE IF NOT EXISTS `dat_persons-individuals` (
  `id` int(11) NOT NULL,
  `solicitor` enum('','yes') COLLATE latin1_general_ci NOT NULL,
  `gender` enum('','male','female','') COLLATE latin1_general_ci NOT NULL,
  `appelation` enum('') COLLATE latin1_general_ci NOT NULL,
  `first-name` varchar(240) COLLATE latin1_general_ci NOT NULL,
  `last-name` varchar(240) COLLATE latin1_general_ci NOT NULL,
  `street_and_nr` varchar(240) COLLATE latin1_general_ci NOT NULL,
  `postcode` varchar(240) COLLATE latin1_general_ci NOT NULL,
  `city` varchar(240) COLLATE latin1_general_ci NOT NULL,
  `family-status` enum('','single','engaged','married','seperated','divorced','widowed') COLLATE latin1_general_ci NOT NULL,
  `birthday-year` int(4) NOT NULL,
  `birthday-month` int(2) NOT NULL,
  `birthday-day` int(2) NOT NULL,
  `birth-place` varchar(240) COLLATE latin1_general_ci NOT NULL,
  `job-occupation` varchar(480) COLLATE latin1_general_ci NOT NULL,
  `job-profession` varchar(480) COLLATE latin1_general_ci NOT NULL,
  `phone-private` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `phone-job` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `fax-private` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `fax-job` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `email-private` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `email-job` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `care` enum('','yes') COLLATE latin1_general_ci NOT NULL,
  `legal-cost-insurance` varchar(480) COLLATE latin1_general_ci NOT NULL,
  `welfare` varchar(480) COLLATE latin1_general_ci NOT NULL,
  `poverty` varchar(480) COLLATE latin1_general_ci NOT NULL,
  `general-terms` enum('','accepted','declined') COLLATE latin1_general_ci NOT NULL,
  `privacy-terms` enum('','accepted','declined') COLLATE latin1_general_ci NOT NULL,
  `prefered-contract-type` varchar(480) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dat_persons-orgs`
--

CREATE TABLE IF NOT EXISTS `dat_persons-orgs` (
  `name` varchar(120) COLLATE latin1_general_ci NOT NULL,
  `shortname` varchar(120) COLLATE latin1_general_ci NOT NULL,
  `lang_int_country` varchar(120) COLLATE latin1_general_ci NOT NULL DEFAULT 'DE',
  PRIMARY KEY (`name`),
  UNIQUE KEY `name_3` (`name`),
  KEY `name` (`name`),
  KEY `name_2` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dat_persons-orgs-section`
--

CREATE TABLE IF NOT EXISTS `dat_persons-orgs-section` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `org-sub` varchar(120) COLLATE latin1_general_ci NOT NULL,
  `org` varchar(120) COLLATE latin1_general_ci NOT NULL,
  `relation_x` varchar(123) COLLATE latin1_general_ci NOT NULL,
  `relation_y` varchar(120) COLLATE latin1_general_ci NOT NULL,
  `relation_z` varchar(120) COLLATE latin1_general_ci NOT NULL,
  `relation_zz` varchar(120) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `org-sub` (`org-sub`,`org`),
  KEY `id` (`id`),
  KEY `org-sub_2` (`org-sub`),
  KEY `org` (`org`),
  KEY `relation_x` (`relation_x`),
  KEY `relation_y` (`relation_y`),
  KEY `relation_z` (`relation_z`),
  KEY `relation_zz` (`relation_zz`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dat_persons-pkeys`
--

CREATE TABLE IF NOT EXISTS `dat_persons-pkeys` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dat_reg-common`
--

CREATE TABLE IF NOT EXISTS `dat_reg-common` (
  `id` bigint(12) NOT NULL AUTO_INCREMENT,
  `type` enum('phonecall','email','meeting','fax','mail','crossthinking','bytime','case') COLLATE latin1_general_ci NOT NULL,
  `notes` longtext COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dat_reg-mandates`
--

CREATE TABLE IF NOT EXISTS `dat_reg-mandates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `referenze` varchar(12) COLLATE latin1_general_ci NOT NULL,
  `status` enum('','checkup','active','monitoring','retention','suspension','termination') COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dat_reg-mandates-cases`
--

CREATE TABLE IF NOT EXISTS `dat_reg-mandates-cases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dat_reg-mandates-cases-persons`
--

CREATE TABLE IF NOT EXISTS `dat_reg-mandates-cases-persons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dat_reg-mandates-persons`
--

CREATE TABLE IF NOT EXISTS `dat_reg-mandates-persons` (
  `id` int(11) NOT NULL,
  `cases-number` int(12) NOT NULL,
  `persons-number` int(12) NOT NULL,
  `role-type` enum('','client','opponent','court','deponent','other') COLLATE latin1_general_ci NOT NULL,
  `role-subtype` enum('','attorney','ceo','parent','other-representative','') COLLATE latin1_general_ci NOT NULL,
  `addr-priority` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dat_sys-roles`
--

CREATE TABLE IF NOT EXISTS `dat_sys-roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dat_sys-roles-rights`
--

CREATE TABLE IF NOT EXISTS `dat_sys-roles-rights` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dat_sys-settings-privacy`
--

CREATE TABLE IF NOT EXISTS `dat_sys-settings-privacy` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dat_sys-users`
--

CREATE TABLE IF NOT EXISTS `dat_sys-users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user-name` varchar(480) COLLATE latin1_general_ci NOT NULL,
  `attorney-number` int(12) NOT NULL,
  `staff-number` int(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dat_sys-users-settings`
--

CREATE TABLE IF NOT EXISTS `dat_sys-users-settings` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
