create database if not exists ogl;
use ogl;
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

-- --------------------------------------------------------

--
-- Struktura tabeli dla  `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(200) NOT NULL,
  kontakt varchar(9) NOT NULL,
  PRIMARY KEY (`id_user`)
);

CREATE TABLE IF NOT EXISTS `kategorie` (
  `id_kat` int(11) NOT NULL AUTO_INCREMENT,
  `kat` varchar(100) NOT NULL,
  PRIMARY KEY (`id_kat`)
);

CREATE TABLE IF NOT EXISTS `ogloszenia` (
  `id_ogl` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(100) NOT NULL,
  `tresc` tinytext NOT NULL,
  `id_kat` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id_ogl`),
  FOREIGN KEY (`id_user`) REFERENCES user(`id_user`),
  FOREIGN KEY (`id_kat`) REFERENCES kategorie(`id_kat`)
);
