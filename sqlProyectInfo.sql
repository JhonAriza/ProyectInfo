-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.30 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para proyectinfotegra
CREATE DATABASE IF NOT EXISTS `proyectinfotegra` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `proyectinfotegra`;

-- Volcando estructura para tabla proyectinfotegra.characters
CREATE TABLE IF NOT EXISTS `characters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `species` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `origin_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `origin_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla proyectinfotegra.characters: ~100 rows (aproximadamente)
INSERT INTO `characters` (`id`, `name`, `status`, `species`, `type`, `gender`, `origin_name`, `origin_url`, `image`, `created_at`, `updated_at`) VALUES
	(1, 'samuel vargas vargas', 'Alive', 'Human', NULL, 'Male', NULL, NULL, 'https://rickandmortyapi.com/api/character/avatar/10.jpeg', '2025-06-18 07:11:12', '2025-06-19 06:04:34'),
	(2, 'Morty Smith', 'Alive', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/2.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(3, 'Summer Smith', 'Alive', 'Human', '', 'Female', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/location/20', 'https://rickandmortyapi.com/api/character/avatar/3.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(4, 'Beth Smith', 'Alive', 'Human', NULL, 'Female', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/location/20', 'https://rickandmortyapi.com/api/character/avatar/4.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:44:07'),
	(5, 'lud brillied', 'Alive', 'Human', NULL, 'Male', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/location/20', 'https://rickandmortyapi.com/api/character/avatar/5.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:36:51'),
	(6, 'Abadango Cluster Princess', 'Alive', 'Alien', '', 'Female', 'Abadango', 'https://rickandmortyapi.com/api/location/2', 'https://rickandmortyapi.com/api/character/avatar/6.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(7, 'Abradolf Lincler', 'unknown', 'Human', 'Genetic experiment', 'Male', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/location/20', 'https://rickandmortyapi.com/api/character/avatar/7.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(8, 'Adjudicator Rick', 'Dead', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/8.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(9, 'Agency Director', 'Dead', 'Human', '', 'Male', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/location/20', 'https://rickandmortyapi.com/api/character/avatar/9.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(10, 'Alan Rails', 'Dead', 'Human', 'Superhuman (Ghost trains summoner)', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/10.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(11, 'Albert Einstein', 'Dead', 'Human', '', 'Male', 'Earth (C-137)', 'https://rickandmortyapi.com/api/location/1', 'https://rickandmortyapi.com/api/character/avatar/11.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(12, 'Alexander', 'Dead', 'Human', '', 'Male', 'Earth (C-137)', 'https://rickandmortyapi.com/api/location/1', 'https://rickandmortyapi.com/api/character/avatar/12.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(13, 'Alien Googah', 'unknown', 'Alien', '', 'unknown', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/13.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(14, 'Alien Morty', 'unknown', 'Alien', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/14.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(15, 'Alien Rick', 'unknown', 'Alien', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/15.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(16, 'Amish Cyborg', 'Dead', 'Alien', 'Parasite', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/16.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(17, 'Annie', 'Alive', 'Human', '', 'Female', 'Earth (C-137)', 'https://rickandmortyapi.com/api/location/1', 'https://rickandmortyapi.com/api/character/avatar/17.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(18, 'Antenna Morty', 'Alive', 'Human', 'Human with antennae', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/18.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(19, 'Antenna Rick', 'unknown', 'Human', 'Human with antennae', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/19.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(20, 'Ants in my Eyes Johnson', 'unknown', 'Human', 'Human with ants in his eyes', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/20.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(21, 'Aqua Morty', 'unknown', 'Humanoid', 'Fish-Person', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/21.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(22, 'Aqua Rick', 'unknown', 'Humanoid', 'Fish-Person', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/22.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(23, 'Arcade Alien', 'unknown', 'Alien', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/23.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(24, 'Armagheadon', 'Alive', 'Alien', 'Cromulon', 'Male', 'Signus 5 Expanse', 'https://rickandmortyapi.com/api/location/22', 'https://rickandmortyapi.com/api/character/avatar/24.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(25, 'Armothy', 'Dead', 'unknown', 'Self-aware arm', 'Male', 'Post-Apocalyptic Earth', 'https://rickandmortyapi.com/api/location/8', 'https://rickandmortyapi.com/api/character/avatar/25.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(26, 'Arthricia', 'Alive', 'Alien', 'Cat-Person', 'Female', 'Purge Planet', 'https://rickandmortyapi.com/api/location/9', 'https://rickandmortyapi.com/api/character/avatar/26.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(27, 'Artist Morty', 'Alive', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/27.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(28, 'Attila Starwar', 'Alive', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/28.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(29, 'Baby Legs', 'Alive', 'Human', 'Human with baby legs', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/29.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(30, 'Baby Poopybutthole', 'Alive', 'Poopybutthole', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/30.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(31, 'Baby Wizard', 'Dead', 'Alien', 'Parasite', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/31.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(32, 'Bearded Lady', 'Dead', 'Alien', 'Parasite', 'Female', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/32.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(33, 'Beebo', 'Dead', 'Alien', '', 'Male', 'Venzenulon 7', 'https://rickandmortyapi.com/api/location/10', 'https://rickandmortyapi.com/api/character/avatar/33.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(34, 'Benjamin', 'Alive', 'Poopybutthole', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/34.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(35, 'Bepisian', 'Alive', 'Alien', 'Bepisian', 'unknown', 'Bepis 9', 'https://rickandmortyapi.com/api/location/11', 'https://rickandmortyapi.com/api/character/avatar/35.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(36, 'Beta-Seven', 'Alive', 'Alien', 'Hivemind', 'unknown', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/36.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(37, 'Beth Sanchez', 'Alive', 'Human', '', 'Female', 'Earth (C-500A)', 'https://rickandmortyapi.com/api/location/23', 'https://rickandmortyapi.com/api/character/avatar/37.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(38, 'Beth Smith', 'Alive', 'Human', '', 'Female', 'Earth (C-137)', 'https://rickandmortyapi.com/api/location/1', 'https://rickandmortyapi.com/api/character/avatar/38.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(39, 'Beth Smith', 'Alive', 'Human', '', 'Female', 'Earth (Evil Rick\'s Target Dimension)', 'https://rickandmortyapi.com/api/location/34', 'https://rickandmortyapi.com/api/character/avatar/39.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(40, 'Beth\'s Mytholog', 'Dead', 'Mythological Creature', 'Mytholog', 'Female', 'Nuptia 4', 'https://rickandmortyapi.com/api/location/13', 'https://rickandmortyapi.com/api/character/avatar/40.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(41, 'Big Boobed Waitress', 'Alive', 'Mythological Creature', '', 'Female', 'Fantasy World', 'https://rickandmortyapi.com/api/location/48', 'https://rickandmortyapi.com/api/character/avatar/41.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(42, 'Big Head Morty', 'unknown', 'Human', 'Human with giant head', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/42.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(43, 'Big Morty', 'Dead', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/43.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(44, 'Body Guard Morty', 'Dead', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/44.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(45, 'Bill', 'Alive', 'Human', '', 'Male', 'Earth (C-137)', 'https://rickandmortyapi.com/api/location/1', 'https://rickandmortyapi.com/api/character/avatar/45.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(46, 'Bill', 'unknown', 'Animal', 'Dog', 'Male', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/location/20', 'https://rickandmortyapi.com/api/character/avatar/46.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(47, 'Birdperson', 'Alive', 'Alien', 'Bird-Person', 'Male', 'Bird World', 'https://rickandmortyapi.com/api/location/15', 'https://rickandmortyapi.com/api/character/avatar/47.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(48, 'Black Rick', 'Alive', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/48.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(49, 'Blamph', 'Alive', 'Alien', '', 'unknown', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/49.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(50, 'Blim Blam', 'Alive', 'Alien', 'Korblock', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/50.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(51, 'Blue Diplomat', 'Alive', 'Alien', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/51.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(52, 'Blue Footprint Guy', 'Dead', 'Human', '', 'Male', 'Post-Apocalyptic Earth', 'https://rickandmortyapi.com/api/location/8', 'https://rickandmortyapi.com/api/character/avatar/52.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(53, 'Blue Shirt Morty', 'unknown', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/53.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(54, 'Bobby Moynihan', 'Alive', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/54.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(55, 'Boobloosian', 'Dead', 'Alien', 'Boobloosian', 'unknown', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/55.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(56, 'Bootleg Portal Chemist Rick', 'Dead', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/56.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(57, 'Borpocian', 'Alive', 'Alien', 'Elephant-Person', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/57.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(58, 'Brad', 'Alive', 'Human', '', 'Male', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/location/20', 'https://rickandmortyapi.com/api/character/avatar/58.jpeg', '2025-06-18 07:11:12', '2025-06-18 07:11:12'),
	(59, 'Brad Anderson', 'Dead', 'Human', '', 'Male', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/location/20', 'https://rickandmortyapi.com/api/character/avatar/59.jpeg', '2025-06-18 07:11:13', '2025-06-18 07:11:13'),
	(60, 'Calypso', 'Dead', 'Human', 'Superhuman', 'Female', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/60.jpeg', '2025-06-18 07:11:13', '2025-06-18 07:11:13'),
	(61, 'Campaign Manager Morty', 'Dead', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/61.jpeg', '2025-06-18 07:11:13', '2025-06-18 07:11:13'),
	(62, 'Canklanker Thom', 'Dead', 'Alien', 'Gromflomite', 'Male', 'Gromflom Prime', 'https://rickandmortyapi.com/api/location/19', 'https://rickandmortyapi.com/api/character/avatar/62.jpeg', '2025-06-18 07:11:13', '2025-06-18 07:11:13'),
	(63, 'Centaur', 'Alive', 'Mythological Creature', 'Centaur', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/63.jpeg', '2025-06-18 07:11:13', '2025-06-18 07:11:13'),
	(64, 'Chris', 'Dead', 'Alien', 'Organic gun', 'unknown', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/64.jpeg', '2025-06-18 07:11:13', '2025-06-18 07:11:13'),
	(65, 'Chris', 'Alive', 'Humanoid', 'Microverse inhabitant', 'Male', 'Rick\'s Battery Microverse', 'https://rickandmortyapi.com/api/location/24', 'https://rickandmortyapi.com/api/character/avatar/65.jpeg', '2025-06-18 07:11:13', '2025-06-18 07:11:13'),
	(66, 'Coach Feratu (Balik Alistane)', 'Dead', 'Mythological Creature', 'Vampire', 'Male', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/location/20', 'https://rickandmortyapi.com/api/character/avatar/66.jpeg', '2025-06-18 07:11:13', '2025-06-18 07:11:13'),
	(67, 'Collector', 'Alive', 'Alien', 'Light bulb-Alien', 'Male', 'The Menagerie', 'https://rickandmortyapi.com/api/location/25', 'https://rickandmortyapi.com/api/character/avatar/67.jpeg', '2025-06-18 07:11:13', '2025-06-18 07:11:13'),
	(68, 'Colossus', 'Dead', 'Human', '', 'Male', 'Post-Apocalyptic Earth', 'https://rickandmortyapi.com/api/location/8', 'https://rickandmortyapi.com/api/character/avatar/68.jpeg', '2025-06-18 07:11:13', '2025-06-18 07:11:13'),
	(69, 'Commander Rick', 'Dead', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/69.jpeg', '2025-06-18 07:11:13', '2025-06-18 07:11:13'),
	(70, 'Concerto', 'Dead', 'Humanoid', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/70.jpeg', '2025-06-18 07:11:13', '2025-06-18 07:11:13'),
	(71, 'Conroy', 'Dead', 'Robot', '', 'unknown', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/location/20', 'https://rickandmortyapi.com/api/character/avatar/71.jpeg', '2025-06-18 07:11:13', '2025-06-18 07:11:13'),
	(72, 'Cool Rick', 'Alive', 'Human', '', 'Male', 'Earth (K-83)', 'https://rickandmortyapi.com/api/location/26', 'https://rickandmortyapi.com/api/character/avatar/72.jpeg', '2025-06-18 07:11:13', '2025-06-18 07:11:13'),
	(73, 'Cop Morty', 'Dead', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/73.jpeg', '2025-06-18 07:11:13', '2025-06-18 07:11:13'),
	(74, 'Cop Rick', 'Alive', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/74.jpeg', '2025-06-18 07:11:13', '2025-06-18 07:11:13'),
	(75, 'Courier Flap', 'Alive', 'Alien', '', 'unknown', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/75.jpeg', '2025-06-18 07:11:13', '2025-06-18 07:11:13'),
	(76, 'Cousin Nicky', 'Dead', 'Alien', 'Parasite', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/76.jpeg', '2025-06-18 07:11:13', '2025-06-18 07:11:13'),
	(77, 'Cowboy Morty', 'Alive', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/77.jpeg', '2025-06-18 07:11:13', '2025-06-18 07:11:13'),
	(78, 'Cowboy Rick', 'Alive', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/78.jpeg', '2025-06-18 07:11:13', '2025-06-18 07:11:13'),
	(79, 'Crab Spider', 'Alive', 'Alien', 'Animal', 'unknown', 'Hideout Planet', 'https://rickandmortyapi.com/api/location/27', 'https://rickandmortyapi.com/api/character/avatar/79.jpeg', '2025-06-18 07:11:13', '2025-06-18 07:11:13'),
	(80, 'Creepy Little Girl', 'Alive', 'Human', '', 'Female', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/80.jpeg', '2025-06-18 07:11:13', '2025-06-18 07:11:13'),
	(81, 'Crocubot', 'Dead', 'Animal', 'Robot-Crocodile hybrid', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/81.jpeg', '2025-06-18 07:11:13', '2025-06-18 07:11:13'),
	(82, 'Cronenberg Rick', 'unknown', 'Cronenberg', '', 'Male', 'Cronenberg Earth', 'https://rickandmortyapi.com/api/location/12', 'https://rickandmortyapi.com/api/character/avatar/82.jpeg', '2025-06-18 07:11:13', '2025-06-18 07:11:13'),
	(83, 'Cronenberg Morty', 'unknown', 'Cronenberg', '', 'Male', 'Cronenberg Earth', 'https://rickandmortyapi.com/api/location/12', 'https://rickandmortyapi.com/api/character/avatar/83.jpeg', '2025-06-18 07:11:13', '2025-06-18 07:11:13'),
	(84, 'Cult Leader Morty', 'Alive', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/84.jpeg', '2025-06-18 07:11:13', '2025-06-18 07:11:13'),
	(85, 'Cyclops Morty', 'Alive', 'Humanoid', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/85.jpeg', '2025-06-18 07:11:13', '2025-06-18 07:11:13'),
	(86, 'Cyclops Rick', 'Dead', 'Humanoid', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/86.jpeg', '2025-06-18 07:11:13', '2025-06-18 07:11:13'),
	(87, 'Cynthia', 'Dead', 'Alien', 'Zigerion', 'Female', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/87.jpeg', '2025-06-18 07:11:13', '2025-06-18 07:11:13'),
	(88, 'Cynthia', 'Alive', 'Human', '', 'Female', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/location/20', 'https://rickandmortyapi.com/api/character/avatar/88.jpeg', '2025-06-18 07:11:13', '2025-06-18 07:11:13'),
	(89, 'Dale', 'Dead', 'Mythological Creature', 'Giant', 'Male', 'Giant\'s Town', 'https://rickandmortyapi.com/api/location/14', 'https://rickandmortyapi.com/api/character/avatar/89.jpeg', '2025-06-18 07:11:13', '2025-06-18 07:11:13'),
	(90, 'Daron Jefferson', 'Alive', 'Alien', 'Cone-nippled alien', 'Male', 'Unity\'s Planet', 'https://rickandmortyapi.com/api/location/28', 'https://rickandmortyapi.com/api/character/avatar/90.jpeg', '2025-06-18 07:11:13', '2025-06-18 07:11:13'),
	(91, 'David Letterman', 'Alive', 'Human', '', 'Male', 'Earth (C-500A)', 'https://rickandmortyapi.com/api/location/23', 'https://rickandmortyapi.com/api/character/avatar/91.jpeg', '2025-06-18 07:11:13', '2025-06-18 07:11:13'),
	(92, 'Davin', 'Dead', 'Human', '', 'Male', 'Earth (C-137)', 'https://rickandmortyapi.com/api/location/1', 'https://rickandmortyapi.com/api/character/avatar/92.jpeg', '2025-06-18 07:11:13', '2025-06-18 07:11:13'),
	(93, 'Diablo Verde', 'Dead', 'Mythological Creature', 'Demon', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/93.jpeg', '2025-06-18 07:11:13', '2025-06-18 07:11:13'),
	(94, 'Diane Sanchez', 'Dead', 'Human', '', 'Female', 'Earth (C-137)', 'https://rickandmortyapi.com/api/location/1', 'https://rickandmortyapi.com/api/character/avatar/94.jpeg', '2025-06-18 07:11:13', '2025-06-18 07:11:13'),
	(95, 'Dipper and Mabel Mortys', 'unknown', 'Human', '', 'unknown', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/95.jpeg', '2025-06-18 07:11:13', '2025-06-18 07:11:13'),
	(96, 'Tuberculosis', 'Dead', 'Disease', '', 'unknown', 'Anatomy Park', 'https://rickandmortyapi.com/api/location/5', 'https://rickandmortyapi.com/api/character/avatar/96.jpeg', '2025-06-18 07:11:13', '2025-06-18 07:11:13'),
	(97, 'Gonorrhea', 'Dead', 'Disease', '', 'unknown', 'Anatomy Park', 'https://rickandmortyapi.com/api/location/5', 'https://rickandmortyapi.com/api/character/avatar/97.jpeg', '2025-06-18 07:11:13', '2025-06-18 07:11:13'),
	(98, 'Hepatitis A', 'Dead', 'Disease', '', 'unknown', 'Anatomy Park', 'https://rickandmortyapi.com/api/location/5', 'https://rickandmortyapi.com/api/character/avatar/98.jpeg', '2025-06-18 07:11:13', '2025-06-18 07:11:13'),
	(99, 'Hepatitis C', 'Dead', 'Disease', '', 'unknown', 'Anatomy Park', 'https://rickandmortyapi.com/api/location/5', 'https://rickandmortyapi.com/api/character/avatar/99.jpeg', '2025-06-18 07:11:13', '2025-06-18 07:11:13'),
	(100, 'Bubonic Plague', 'Dead', 'Disease', '', 'unknown', 'Anatomy Park', 'https://rickandmortyapi.com/api/location/5', 'https://rickandmortyapi.com/api/character/avatar/100.jpeg', '2025-06-18 07:11:13', '2025-06-18 07:11:13');

-- Volcando estructura para tabla proyectinfotegra.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla proyectinfotegra.failed_jobs: ~0 rows (aproximadamente)

-- Volcando estructura para tabla proyectinfotegra.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla proyectinfotegra.migrations: ~0 rows (aproximadamente)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2025_06_18_004621_create_characters_table', 1);

-- Volcando estructura para tabla proyectinfotegra.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla proyectinfotegra.password_reset_tokens: ~0 rows (aproximadamente)

-- Volcando estructura para tabla proyectinfotegra.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla proyectinfotegra.personal_access_tokens: ~0 rows (aproximadamente)

-- Volcando estructura para tabla proyectinfotegra.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla proyectinfotegra.users: ~0 rows (aproximadamente)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
