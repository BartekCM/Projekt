
CREATE DATABASE IF NOT EXISTS `ogl`;
USE ogl;
CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `login` text COLLATE utf8_polish_ci NOT NULL,
  `haslo` text COLLATE utf8_polish_ci NOT NULL,
  `miejscowosc` text COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`id_user`),
  
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=11 ;




CREATE TABLE IF NOT EXISTS `ogloszenia` (
  `id_oglo` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) utf8_polish_ci NOT NULL,
  `id_kat` int(11) utf8_polish_ci NOT NULL,
  `opis` TEXT utf8_polish_ci NOT NULL,
  `cena` int NOT NULL,
  PRIMARY KEY (id_oglo)
  FOREIGN KEY (id_user) REFERENCES user(id_user)
  FOREIGN KEY (id_kat) REFERENCES kategorie(id_kat),
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=6 ;






CREATE TABLE IF NOT EXISTS `kategorie` (
  `id_kat` int(11) NOT NULL AUTO_INCREMENT,
  `kategoria` varchar(50) NOT NULL,
  PRIMARY KEY (`id_kat`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=7 ;





