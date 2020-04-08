-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 08 apr 2020 om 10:50
-- Serverversie: 10.4.11-MariaDB
-- PHP-versie: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `karting4`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `activiteiten`
--

CREATE TABLE `activiteiten` (
  `id` int(11) NOT NULL,
  `soort_id` int(11) DEFAULT NULL,
  `datum` date NOT NULL,
  `tijd` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `activiteiten`
--

INSERT INTO `activiteiten` (`id`, `soort_id`, `datum`, `tijd`) VALUES
(9, 1, '2020-04-01', '09:00:00'),
(10, 2, '2020-04-01', '11:00:00'),
(12, 4, '2020-05-02', '10:00:00'),
(15, 2, '2020-04-22', '06:05:00'),
(17, 1, '2020-04-26', '09:00:00'),
(18, 4, '2020-04-26', '10:00:00'),
(19, 2, '2020-04-26', '11:00:00'),
(20, 1, '2020-05-03', '09:00:00'),
(21, 4, '2020-05-03', '10:00:00'),
(22, 2, '2020-05-03', '11:00:00'),
(23, 1, '2020-06-06', '09:00:00'),
(24, 1, '2020-06-06', '10:00:00'),
(25, 4, '2020-06-06', '11:00:00'),
(26, 4, '2020-06-13', '11:30:00'),
(27, 1, '2020-06-13', '12:00:00');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `app_users`
--

CREATE TABLE `app_users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '(DC2Type:json_array)' CHECK (json_valid(`roles`)),
  `voorletters` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tussenvoegsel` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `achternaam` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adres` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postcode` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `woonplaats` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefoon` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `app_users`
--

INSERT INTO `app_users` (`id`, `username`, `password`, `email`, `roles`, `voorletters`, `tussenvoegsel`, `achternaam`, `adres`, `postcode`, `woonplaats`, `telefoon`) VALUES
(1, 'max', '$argon2id$v=19$m=65536,t=4,p=1$WW9ieC9nRE44Z2t2YmVtSA$6td8TQ80lZCDEbaclB+03+dvuSC52l/PzLn2yBbZv4g', 'max@wxs.nl', '[\"ROLE_ADMIN\"]', 'M.', NULL, 'Verstappen', 'Eijk 7', '1234HJ', 'Maaseik', '0682342343'),
(5, 'guus', '$argon2id$v=19$m=65536,t=4,p=1$WW9ieC9nRE44Z2t2YmVtSA$6td8TQ80lZCDEbaclB+03+dvuSC52l/PzLn2yBbZv4g', 'guus@duckstad.nl', '[\"ROLE_USER\"]', 'G.', NULL, 'Geluk', 'Guuslaan 1', '1234AS', 'Duckstad', '0612345678'),
(6, 'donald', '$argon2id$v=19$m=65536,t=4,p=1$WW9ieC9nRE44Z2t2YmVtSA$6td8TQ80lZCDEbaclB+03+dvuSC52l/PzLn2yBbZv4g', 'donald@duckstad.nl', '[\"ROLE_USER\"]', 'D.', NULL, 'Duck', 'Donald Ducklaan 2', '1234AS', 'Duckstad', '0687654321'),
(7, 'katrien', '$argon2id$v=19$m=65536,t=4,p=1$WW9ieC9nRE44Z2t2YmVtSA$6td8TQ80lZCDEbaclB+03+dvuSC52l/PzLn2yBbZv4g', 'katrien@duckstad.nl', '[\"ROLE_USER\"]', 'K.', NULL, 'Duck', 'Donald Ducklaan 3', '1234AS', 'Duckstad', '0687654567'),
(8, 'test', '$argon2id$v=19$m=65536,t=4,p=1$VzZOR2tkNWxzNi5BSjBBOA$K6HuLNzw5uiiCWJVktQhacgo/ueTBL2yHg9OCnLh7Eo', 'adma@outlook.com', '[\"ROLE_USER\"]', 'T', 'A', 'n', 'ad', 'd213', 'da', '062332718'),
(9, 'ata', '$argon2id$v=19$m=65536,t=4,p=1$NE5NTkw1UlZyWVBkcHNGNw$R2xGj2gvh8CDfETODxlumBB0Jwi8WyvcNhL12bAQzew', 'donald@duckstad.nl', '[\"ROLE_USER\"]', 'aa', 'dd', 'aa', 'dada', 'aaa', 'aaa', '062327119');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `deelnames`
--

CREATE TABLE `deelnames` (
  `user_id` int(11) NOT NULL,
  `activiteit_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `deelnames`
--

INSERT INTO `deelnames` (`user_id`, `activiteit_id`) VALUES
(6, 12),
(7, 10),
(7, 12),
(8, 9),
(8, 12),
(9, 12);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20200319123827', '2020-03-19 12:41:51'),
('20200320085413', '2020-04-06 14:01:17'),
('20200406140901', '2020-04-06 14:09:18'),
('20200406141408', '2020-04-06 14:14:17');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `soortactiviteiten`
--

CREATE TABLE `soortactiviteiten` (
  `id` int(11) NOT NULL,
  `naam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_leeftijd` int(11) NOT NULL,
  `tijdsduur` int(11) NOT NULL,
  `prijs` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `soortactiviteiten`
--

INSERT INTO `soortactiviteiten` (`id`, `naam`, `min_leeftijd`, `tijdsduur`, `prijs`) VALUES
(1, 'Vrije training', 12, 15, '15.00'),
(2, 'Grand Prix', 12, 60, '50.00'),
(3, 'Endurance race', 16, 90, '65.00'),
(4, 'Kinder race', 8, 10, '18.00');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `activiteiten`
--
ALTER TABLE `activiteiten`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1C50895F3DEE50DF` (`soort_id`);

--
-- Indexen voor tabel `app_users`
--
ALTER TABLE `app_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C2502824F85E0677` (`username`);

--
-- Indexen voor tabel `deelnames`
--
ALTER TABLE `deelnames`
  ADD PRIMARY KEY (`user_id`,`activiteit_id`),
  ADD KEY `IDX_ED2478E7A76ED395` (`user_id`),
  ADD KEY `IDX_ED2478E75A8A0A1` (`activiteit_id`);

--
-- Indexen voor tabel `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexen voor tabel `soortactiviteiten`
--
ALTER TABLE `soortactiviteiten`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `activiteiten`
--
ALTER TABLE `activiteiten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT voor een tabel `app_users`
--
ALTER TABLE `app_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT voor een tabel `soortactiviteiten`
--
ALTER TABLE `soortactiviteiten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `activiteiten`
--
ALTER TABLE `activiteiten`
  ADD CONSTRAINT `FK_1C50895F3DEE50DF` FOREIGN KEY (`soort_id`) REFERENCES `soortactiviteiten` (`id`);

--
-- Beperkingen voor tabel `deelnames`
--
ALTER TABLE `deelnames`
  ADD CONSTRAINT `FK_ED2478E75A8A0A1` FOREIGN KEY (`activiteit_id`) REFERENCES `activiteiten` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_ED2478E7A76ED395` FOREIGN KEY (`user_id`) REFERENCES `app_users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
