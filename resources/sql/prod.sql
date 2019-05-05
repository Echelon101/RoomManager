-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 09. Feb 2019 um 15:16
-- Server-Version: 5.7.25-0ubuntu0.16.04.2
-- PHP-Version: 7.2.14

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
(1, 3, 'Cust', 'Omer', 'customer@somedomain.com', '$2y$12$7cwmsJ2O/wYXbMm0qamw7Opoz8tj56bX5.SWgZHeGVlyVyKFhP5lK', 'TestCompany', 'DE123456789123456', 'GENODEF1PON', '012345678', 'Musterstraße', '22', 'Musterstadt', 'Germany', '12345', 'eed4d21b-2b64-47b5-ba1b-840cd229f1c8', 0);

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
(1, 1, 'Admi', 'Nistrator', 'admin@private-storage.com', '$2y$12$.VQ72zRCbXYviBZcKN/nbOy7kQqGqgE7dbSZonGT2HW9eY3R5tT9.', '5dbad1b6-e50b-444d-9fce-99070c2a53af', '10', 'Musterstraße', 'Musterstadt', '0123456789', '12345'),
(2, 4, 'Em', 'Ployee', 'employee@private-storage.com', '$2y$12$y0RGmf7IIGptAEX93U13U.zw7m/BaJAkl7zvo6.zYXiLRX6XyUIGu', '59dc5080-fb21-47cf-9c12-f60d3989d64f', '12', 'Musterstraße', 'Musterstadt', '01234567', '12345'),
(3, 5, 'Emp', 'Loyer', 'employer@private-storage.com', '$2y$12$nXmhNx/knj93udEY0gGmk.52hfp1t.78R78mJ3T1L.PlO.q8dEh3C', 'b70d1b82-8468-4fc4-bfad-7608053cb7a7', '13', 'Musterstraße', 'Musterstadt', '01234568', '12345'),
(4, 7, 'Acc', 'Ounting', 'accounting@private-storage.com', '$2y$12$3fVNjv6o.3ObN5XkyYTCPuDdSr9Q2JPhhhGkz1TbBV5wa9GjzYHM.', '755cd4d4-2cea-45cb-a5d9-deafec69b156', '17', 'Musterstraße', 'Musterstadt', '01234569', '12345');

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
(1, 'Bauerbergweg', '23', 'Hamburg', '22341', 'Germany');

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
(1, 1, NULL, 1, '2019-02-09 16:13:23', '7c590116-c7a0-44f6-8a4e-a42062fd8b31', NULL, NULL, 0, 5);

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
(1, 1, 1);

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
(7, 'accounting', 350);

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
(1, 1, 13, 1, '5_1'),
(2, 1, 2, 1, '5_2'),
(3, 1, 3, 1, '5_3'),
(4, 1, 4, 1, '5_4'),
(5, 2, 5, 1, '10_1'),
(6, 2, 6, 1, '10_2'),
(7, 2, 7, 1, '10_3'),
(8, 2, 8, 1, '10_4'),
(9, 3, 9, 1, '50_1'),
(10, 3, 10, 1, '50_2'),
(11, 3, 11, 1, '50_3'),
(12, 3, 12, 1, '50_4');

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
(1, 3, '86039662', '6866f33c-45fa-4207-8983-616ed752f8df'),
(2, 1, '66863909', '215b860d-7ea4-4f0f-8324-ade2123ca297'),
(3, 1, '75715264', '4faa58bb-7029-491c-8e39-97011d7a2d7b'),
(4, 1, '03199869', '1da9059b-c324-493a-bcc2-7e0b415eec67'),
(5, 1, '12412021', 'ef9d1bf6-77ce-4c47-9cd1-467d2e274a21'),
(6, 1, '79776976', '263c368d-66d9-46d6-a5b0-0778e0f24d22'),
(7, 1, '33627995', 'c1d57647-508c-4f94-8dd7-32d36db27b76'),
(8, 1, '54510588', '38829ab9-960a-4e4e-bd43-95d234d835fe'),
(9, 1, '60180475', '2cc0ba79-24c6-4933-bdea-9b6fdbbc889a'),
(10, 1, '62280039', '1bb23f06-550d-4d18-bd26-8dd230cd46f5'),
(11, 1, '07866570', 'fafe56a5-cd51-411e-9fef-d997e3802bcd'),
(12, 1, '05554735', '4e3a1228-4705-427c-bbfb-83f9330af864'),
(13, 1, '71676530', 'e2a3406d-1f58-4480-82be-d58d0a913072');

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
(39, 'password_new', '/password/new', 2, 'password_new'),
(40, 'create_location', '/employee/location/new', 5, 'create_location');

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
(1, '484f35e9-a3a1-5d5a-b03b-1bc20f5fae44', 'b70d1b82-8468-4fc4-bfad-7608053cb7a7', '2019-02-09 14:13:02', '2019-02-09 14:03:27', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36'),
(2, '9f8462c1-38fa-5c26-85f5-2659a60a6ee7', 'eed4d21b-2b64-47b5-ba1b-840cd229f1c8', '2019-02-09 14:13:28', '2019-02-09 14:13:14', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36'),
(3, '06b12db4-f057-57fe-873b-30b578166be3', '59dc5080-fb21-47cf-9c12-f60d3989d64f', '2019-02-09 14:16:14', '2019-02-09 14:13:45', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `exports`
--
ALTER TABLE `exports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT für Tabelle `room`
--
ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT für Tabelle `room_key`
--
ALTER TABLE `room_key`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

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
