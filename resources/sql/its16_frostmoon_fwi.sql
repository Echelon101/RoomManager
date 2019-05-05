-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 04. Feb 2019 um 19:32
-- Server-Version: 10.1.36-MariaDB
-- PHP-Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `its16_frostmoon`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `priv_id` int(11) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hsnr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `customer`
--

INSERT INTO `customer` (`id`, `priv_id`, `firstname`, `lastname`, `email`, `password`, `company`, `iban`, `bic`, `tel`, `street`, `hsnr`, `city`, `country`, `zip`, `uuid`, `locked`) VALUES
(1, 3, 'Timo', 'Strüker', 'timomrx1@gmail.com', '$2y$10$2pb6O.jjrR8EJxRJKooFBe1HWsx8nlYmU3WYu0uzIcueyo5plmKqO', 'TestCompany', 'DE58140500585620', 'GENODEF1PIN', '015238798283', 'Danziger Str', '50', 'Quickborn', 'de', '25451', '4b9783d0-8877-4822-b1fb-316ff13505d5', 0),
(3, 3, 'Florian', 'Wichert', 'customer@test.de', '$2y$12$kF8J/xJB3miwpCZCcI67aeRQeYqLtEj8B3o42Q4BmfIV78EMKWDAi', 'IVU Informationssysteme GmbH', 'DE49100110012621075702', 'NTSBDEB1XXX', '15703034291', 'Radeland', '22', 'Henstedt-Ulzburg', 'Deutschland', '24558', 'f07023b8-43c3-47aa-83ea-c976778aca19', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `priv_id` int(11) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hsnr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `employee`
--

INSERT INTO `employee` (`id`, `priv_id`, `firstname`, `lastname`, `email`, `password`, `uuid`, `hsnr`, `street`, `city`, `tel`, `zip`) VALUES
(1, 1, 'Timo', 'Strüker', 'timo.strueker@yahoo.de', '$2y$10$QS3TSGF4PcnbZCgCdbVdN.RXJUsauoik2flntQu3Sm8YW5A9eRJ96', '57c3d0a5-5bdd-4af7-a04e-a67e70c87e42', '', '', '', '', ''),
(2, 5, 'Timo', 'Strüker', 'timomrx1@yahoo.de', '$2y$10$QS3TSGF4PcnbZCgCdbVdN.RXJUsauoik2flntQu3Sm8YW5A9eRJ96', '25a73b55-1b58-4c49-8ca4-2a391640f5c8', '50', 'Danziger Str', 'Quickborn', '34567890', '25451'),
(3, 1, 'Florian', 'Wichert', 'admin@test.de', '$2y$12$7eJB3nwyOQjAXUcDMhpUGuOjxNTmBRRS8mRaFXk5POgj5q2sV2Vvu', 'cd72f7a5-48e4-471c-99a3-3132743208c4', '22', 'Radeland', 'Henstedt-Ulzburg', '015703034291', '24558'),
(4, 4, 'Florian', 'Wichert', 'employee@test.de', '$2y$12$7eJB3nwyOQjAXUcDMhpUGuOjxNTmBRRS8mRaFXk5POgj5q2sV2Vvu', '54ebb5eb-5d71-449d-a58b-ebb492323a2b', '22', 'Radeland', 'Henstedt-Ulzburg', '015703034291', '24558'),
(5, 5, 'Florian', 'Wichert', 'employer@test.de', '$2y$12$7eJB3nwyOQjAXUcDMhpUGuOjxNTmBRRS8mRaFXk5POgj5q2sV2Vvu', '8442c192-30c1-457c-a30f-87fa77ded764', '22', 'Radeland', 'Henstedt-Ulzburg', '15703034291', '24558');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `exports`
--

CREATE TABLE `exports` (
  `id` int(11) NOT NULL,
  `begin_export` datetime NOT NULL,
  `end_export` datetime NOT NULL,
  `filename` varchar(255) NOT NULL,
  `sha` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hsnr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `location`
--

INSERT INTO `location` (`id`, `street`, `hsnr`, `city`, `zip`, `country`) VALUES
(1, 'Buchenweg', '1', 'Norderstedt', '22850', 'Deutschland'),
(2, 'Fuchsbau', '13', 'Falkensee', '14612', 'Deutschland');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `last_edit_employee_id` int(11) DEFAULT NULL,
  `status_id` int(11) NOT NULL,
  `last_edit_date` datetime NOT NULL,
  `uuid` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contract_begin` datetime DEFAULT NULL,
  `contract_end` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `cost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `order`
--

INSERT INTO `order` (`id`, `customer_id`, `last_edit_employee_id`, `status_id`, `last_edit_date`, `uuid`, `contract_begin`, `contract_end`, `active`, `cost`) VALUES
(1, 1, 1, 2, '2019-01-24 11:47:12', '4a03c033-7fdc-457e-8ff7-b74e7625ce9f', '2019-01-24 11:47:12', NULL, 1, 140);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `order_room`
--

CREATE TABLE `order_room` (
  `order_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `order_room`
--

INSERT INTO `order_room` (`order_id`, `room_id`, `active`) VALUES
(1, 1, 1),
(1, 2, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `order_status`
--

INSERT INTO `order_status` (`id`, `status`) VALUES
(1, 'open'),
(2, 'running'),
(3, 'declined'),
(4, 'cancelled');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `priv`
--

CREATE TABLE `priv` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priv_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `priv`
--

INSERT INTO `priv` (`id`, `name`, `priv_level`) VALUES
(1, 'admin', 0),
(2, 'anonymous', 999),
(3, 'customer', 400),
(4, 'employee', 300),
(5, 'employer', 200),
(6, 'authenticated', 500),
(7,'accounting',350);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `room_type_id` int(11) NOT NULL,
  `room_key_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `room`
--

INSERT INTO `room` (`id`, `room_type_id`, `room_key_id`, `location_id`, `name`) VALUES
(1, 1, 22, 1, '5_1'),
(2, 1, 24, 1, '5_2'),
(4, 2, 1, 2, '10_1'),
(5, 2, 8, 2, '10_2');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `room_key`
--

CREATE TABLE `room_key` (
  `id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `room_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uuid` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `room_key`
--

INSERT INTO `room_key` (`id`, `status_id`, `room_key`, `uuid`) VALUES
(1, 1, '12345', 'c56730cb-982d-41f4-a10b-b8eecf958768'),
(2, 2, '08953377', 'ff27b40d-7c49-4e90-8187-2256bb650f44'),
(3, 3, '11127762', 'ef55e6bb-0d98-40c6-9a82-5d7accaafdaf'),
(4, 3, '49332546', 'baf2d666-eaf6-449b-881a-7333a2ee4f70'),
(5, 3, '21807188', '4a3eb892-d8f1-4ac1-a7db-a9636824e945'),
(6, 3, '05840080', '0aef83b4-34a2-4576-946a-edbf6136773f'),
(7, 1, '12828353', '0ebebf4f-f578-416c-aebc-6cee39ce3b5e'),
(8, 3, '35975091', '81ee9a51-b2c6-4c3e-83c2-04a77a3bee62'),
(9, 3, '25857684', 'f5cf21c4-3542-4f8b-858e-71c9e89a96c1'),
(10, 3, '41687282', '209d3f77-d3bb-4362-a3b9-1f416c896be1'),
(11, 3, '00028820', '929e3d82-764d-42ea-bb22-3f8540b74381'),
(12, 3, '41831559', '45ffe46c-87f7-405b-80ea-9f380da7791d'),
(13, 3, '09026509', '5562a1d0-18f1-418d-a7ca-1715e68a7112'),
(14, 3, '43096217', '74db15ff-1293-4ebe-a619-839384e3410c'),
(15, 3, '83131255', '6524fcc1-0af7-4c63-9cd2-69c0be28fd66'),
(16, 3, '687169', '32aa467b-06b1-483b-ba53-6fa0a0f27d7b'),
(17, 3, '331337', 'b9a083d4-28d8-415e-8b5e-350c40462e09'),
(18, 3, '524116', 'ee6ca9a4-eb01-401c-9aee-9e2fa1ca0492'),
(19, 3, '088198', 'e9a0a8b7-a979-427f-9e0d-32fae317f358'),
(20, 3, '543638', '92c83927-1852-44af-8023-f08c676650a7'),
(21, 3, '666222', '22325d45-7d72-4114-a3e7-28685ce6c495'),
(22, 1, '284528', '485ab748-f06e-468e-9fa4-4ed408df3b16'),
(23, 3, '506255', '0bbbac87-928f-4b1d-a123-08c4bbcbaecc'),
(24, 1, '303323', '0573c737-839b-41dc-863c-dc144d3bd789');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `room_key_status`
--

CREATE TABLE `room_key_status` (
  `id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `room_key_status`
--

INSERT INTO `room_key_status` (`id`, `status`) VALUES
(1, 'active'),
(2, 'expired'),
(3, 'revoked');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `room_type`
--

CREATE TABLE `room_type` (
  `id` int(11) NOT NULL,
  `price` double NOT NULL,
  `size` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `room_type`
--

INSERT INTO `room_type` (`id`, `price`, `size`) VALUES
(1, 5, 5),
(2, 15, 10),
(3, 50, 50);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `routes`
--

CREATE TABLE `routes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `priv` int(11) DEFAULT NULL,
  `function` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `routes`
--

INSERT INTO `routes` (`id`, `name`, `route`, `priv`, `function`) VALUES
(1, 'index', '/', 2, 'index'),
(2, 'login', '/login', 2, 'login'),
(3, 'register', '/register', 2, 'register'),
(4, 'logoff', '/logout', 2, 'logoff'),
(5, 'dump', '/debug/dump', 2, 'dump'),
(6, 'admin_user_create', '/admin/user/new', 1, 'admin_user_create'),
(7, 'arrays', '/debug/arrays', 1, 'test_array'),
(8, 'createroute', '/admin/route/create', 1, 'create_route'),
(9, 'deleteroute', '/admin/route/delete', 1, 'delete_route'),
(10, 'routes', '/admin/routes', 1, 'list_routes'),
(11, 'customer_profile', '/customer/profile', 3, 'customer_profile'),
(13, 'customer_profile_edit', '/customer/profile/edit', 3, 'customer_profile_edit'),
(14, 'customer_dashboard', '/customer', 3, 'customer_dashboard'),
(15, 'debug_if', '/debug/if', 1, 'debug_if'),
(16, 'admin_dashboard', '/admin', 1, 'admin_dashboard'),
(17, 'employee_dashboard', '/employee', 4, 'employee_dashboard'),
(18, 'order_actions', '/actions/orders', 6, 'order_actions'),
(19, 'employee_profile', '/employee/profile', 4, 'employee_profile'),
(20, 'employee_profile_edit', '/employee/profile/edit', 4, 'employee_profile_edit'),
(21, 'user_actions', '/actions/users', 4, 'user_actions'),
(22, 'key_actions', '/actions/keys', 6, 'key_actions'),
(23, 'employee_actions', '/actions/employee', 5, 'employee_actions'),
(24, 'employee_list', '/employee/employees', 5, 'list_employees'),
(25, 'customer_list', '/employee/customers', 4, 'list_customers'),
(26, 'orders_list', '/employee/orders', 4, 'list_orders'),
(27, 'employee_user_create', '/employee/user/create', 5, 'employee_user_create'),
(28, 'employee_edit', '/employee/employee/edit', 5, 'employee_edit'),
(29, 'key_list', '/employee/keys', 4, 'list_keys'),
(30, 'create_order', '/customer/order/new', 3, 'create_order'),
(31, 'legal', '/legal', 2, 'legal'),
(32, 'create_room', '/employee/room/new', 5, 'create_room'),
(33, 'password_reset', '/password/reset', 2, 'password_reset'),
(34, 'room_eval', '/employee/eval', 5, 'room_evaluation'),
(35, 'create_csv', '/employee/csv/new', 5, 'create_csv'),
(37, 'download', '/download', 7, 'download'),
(38, 'csv_actions', '/actions/csv', 6, 'csv_actions'),
(39, 'password_new', '/password/new', 2, 'password_new');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `session_uuid` varchar(36) NOT NULL,
  `user_uuid` varchar(36) NOT NULL,
  `session_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `login_timestamp` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(1) NOT NULL,
  `user_agent` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `session`
--

INSERT INTO `session` (`id`, `session_uuid`, `user_uuid`, `session_timestamp`, `login_timestamp`, `active`, `user_agent`) VALUES
(3, 'b24d7b09-6103-5590-9333-9d9e37d43eb3', '8442c192-30c1-457c-a30f-87fa77ded764', '2019-02-04 18:31:56', '2019-02-04 18:20:27', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.81 Safari/537.36');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_5D9F75A1749855C2` (`priv_id`);

--
-- Indizes für die Tabelle `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5D9F75A1749855C1` (`priv_id`);

--
-- Indizes für die Tabelle `exports`
--
ALTER TABLE `exports`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_uuid_uindex` (`uuid`),
  ADD KEY `IDX_F52993986BF700BD` (`status_id`),
  ADD KEY `IDX_F52993989395C3F3` (`customer_id`),
  ADD KEY `IDX_F5299398B07F531E` (`last_edit_employee_id`);

--
-- Indizes für die Tabelle `order_room`
--
ALTER TABLE `order_room`
  ADD PRIMARY KEY (`order_id`,`room_id`),
  ADD KEY `IDX_3F6E6B8C54177093` (`room_id`),
  ADD KEY `IDX_3F6E6B8C8D9F6D38` (`order_id`);

--
-- Indizes für die Tabelle `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `priv`
--
ALTER TABLE `priv`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `room_name_uindex` (`name`),
  ADD KEY `IDX_729F519B296E3073` (`room_type_id`),
  ADD KEY `IDX_729F519B4C5A93F2` (`room_key_id`),
  ADD KEY `IDX_729F519B64D218E` (`location_id`);

--
-- Indizes für die Tabelle `room_key`
--
ALTER TABLE `room_key`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `room_key_uuid_uindex` (`uuid`),
  ADD KEY `IDX_881616B46BF700BD` (`status_id`);

--
-- Indizes für die Tabelle `room_key_status`
--
ALTER TABLE `room_key_status`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `routes_name_uindex` (`name`),
  ADD UNIQUE KEY `routes_route_uindex` (`route`),
  ADD KEY `FK_route_priv` (`priv`);

--
-- Indizes für die Tabelle `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `session_session_uuid_uindex` (`session_uuid`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `exports`
--
ALTER TABLE `exports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `priv`
--
ALTER TABLE `priv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `room`
--
ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT für Tabelle `room_key`
--
ALTER TABLE `room_key`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT für Tabelle `room_key_status`
--
ALTER TABLE `room_key_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `room_type`
--
ALTER TABLE `room_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `routes`
--
ALTER TABLE `routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT für Tabelle `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `FK_5D9F75A1749855C2` FOREIGN KEY (`priv_id`) REFERENCES `priv` (`id`);

--
-- Constraints der Tabelle `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `FK_5D9F75A1749855C1` FOREIGN KEY (`priv_id`) REFERENCES `priv` (`id`);

--
-- Constraints der Tabelle `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `FK_F52993986BF700BD` FOREIGN KEY (`status_id`) REFERENCES `order_status` (`id`),
  ADD CONSTRAINT `FK_F52993989395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `FK_F5299398B07F531E` FOREIGN KEY (`last_edit_employee_id`) REFERENCES `employee` (`id`);

--
-- Constraints der Tabelle `order_room`
--
ALTER TABLE `order_room`
  ADD CONSTRAINT `FK_3F6E6B8C54177093` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_3F6E6B8C8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `FK_729F519B296E3073` FOREIGN KEY (`room_type_id`) REFERENCES `room_type` (`id`),
  ADD CONSTRAINT `FK_729F519B4C5A93F2` FOREIGN KEY (`room_key_id`) REFERENCES `room_key` (`id`),
  ADD CONSTRAINT `FK_729F519B64D218E` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`);

--
-- Constraints der Tabelle `room_key`
--
ALTER TABLE `room_key`
  ADD CONSTRAINT `FK_881616B46BF700BD` FOREIGN KEY (`status_id`) REFERENCES `room_key_status` (`id`);

--
-- Constraints der Tabelle `routes`
--
ALTER TABLE `routes`
  ADD CONSTRAINT `FK_route_priv` FOREIGN KEY (`priv`) REFERENCES `priv` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
