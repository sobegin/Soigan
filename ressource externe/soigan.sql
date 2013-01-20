-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Dim 20 Janvier 2013 à 21:34
-- Version du serveur: 5.5.24-log
-- Version de PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `soigan`
--

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE IF NOT EXISTS `commentaire` (
  `idcommentaire` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_news` int(11) NOT NULL,
  `contenus` text NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`idcommentaire`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `commentaire`
--

INSERT INTO `commentaire` (`idcommentaire`, `id_user`, `id_news`, `contenus`, `date`) VALUES
(1, 1, 3, 'De la merde', '2013-01-31 00:00:00'),
(2, 1, 3, 'De la merde', '2013-01-31 00:00:00'),
(3, 1, 3, 'De la merde', '2013-01-31 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `config`
--

CREATE TABLE IF NOT EXISTS `config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cle` varchar(65) NOT NULL,
  `valeur` varchar(65) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `config`
--

INSERT INTO `config` (`id`, `cle`, `valeur`) VALUES
(1, 'nom_site', 'Soigan'),
(2, 'codeur_site', 'Sobegin');

-- --------------------------------------------------------

--
-- Structure de la table `forum`
--

CREATE TABLE IF NOT EXISTS `forum` (
  `idforum` int(11) NOT NULL,
  `titreforum` varchar(65) NOT NULL,
  `description` varchar(65) NOT NULL,
  `statut` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `last_info`
--

CREATE TABLE IF NOT EXISTS `last_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `information` text NOT NULL,
  `auteur` varchar(65) NOT NULL,
  `id_auteur` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `last_info`
--

INSERT INTO `last_info` (`id`, `information`, `auteur`, `id_auteur`) VALUES
(1, 'Ouverture d''un nouveau forum dans 15 minute', 'Sobegin', 1);

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `idmessage` int(11) NOT NULL AUTO_INCREMENT,
  `auteur` varchar(65) NOT NULL,
  `contenus` text NOT NULL,
  `date` datetime NOT NULL,
  `idtopic` int(11) NOT NULL,
  `statut` tinyint(1) NOT NULL,
  PRIMARY KEY (`idmessage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `mp`
--

CREATE TABLE IF NOT EXISTS `mp` (
  `idmp` int(11) NOT NULL AUTO_INCREMENT,
  `auteur` varchar(65) NOT NULL,
  `destinataire` int(65) NOT NULL,
  `date` datetime NOT NULL,
  `objet` varchar(65) NOT NULL,
  `contenus` text NOT NULL,
  `statut` varchar(65) NOT NULL,
  PRIMARY KEY (`idmp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `idnews` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(65) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `resumer` text NOT NULL,
  `contenus` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `date` datetime NOT NULL,
  `iduser` int(11) NOT NULL,
  `auteur` varchar(65) NOT NULL,
  `photo` varchar(65) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `statut` tinyint(1) NOT NULL,
  PRIMARY KEY (`idnews`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `news`
--

INSERT INTO `news` (`idnews`, `titre`, `resumer`, `contenus`, `date`, `iduser`, `auteur`, `photo`, `statut`) VALUES
(1, 'Kim Dotcom lance Mega, un nouveau service de téléchargement', 'Un an après la mise hors ligne de MegaUpload, Kim Dotcom a lancé, samedi 19 janvier, un nouveau site de stockage de fichiers. Lancé officiellement aux alentours de 19 heures, heure de Paris, le site était difficilement accessible en raison du nombre important de visites. Sur son compte Twitter, Kim Dotcom s''est exprimé, quelques minutes après la mise en ligne : "Wow, je n''avais jamais vu ça. De 0 à 10 gigabits d''utilisation de bande passante en 10 minutes".', 'Un an après la mise hors ligne de MegaUpload, Kim Dotcom a lancé, samedi 19 janvier, un nouveau site de stockage de fichiers. Lancé officiellement aux alentours de 19 heures, heure de Paris, le site était difficilement accessible en raison du nombre important de visites. Sur son compte Twitter, Kim Dotcom s''est exprimé, quelques minutes après la mise en ligne : "Wow, je n''avais jamais vu ça. De 0 à 10 gigabits d''utilisation de bande passante en 10 minutes".\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2013-01-19 23:28:00', 1, 'sobegin', 'http://www2.noelshack.com/uploads/tbhd_Flyingdebris_-_Nantite_Inf', 1),
(2, '<i>pd</i>Kim Dotcom lance Mega, un nouveau service de téléchargem', 'Un an après la mise hors ligne de MegaUpload, Kim Dotcom a lancé, samedi 19 janvier, un nouveau site de stockage de fichiers. Lancé officiellement aux alentours de 19 heures, heure de Paris, le site était difficilement accessible en raison du nombre important de visites. Sur son compte Twitter, Kim Dotcom s''est exprimé, quelques minutes après la mise en ligne : "Wow, je n''avais jamais vu ça. De 0 à 10 gigabits d''utilisation de bande passante en 10 minutes".', 'Un an après la mise hors ligne de MegaUpload, Kim Dotcom a lancé, samedi 19 janvier, un nouveau site de stockage de fichiers. Lancé officiellement aux alentours de 19 heures, heure de Paris, le site était difficilement accessible en raison du nombre important de visites. Sur son compte Twitter, Kim Dotcom s''est exprimé, quelques minutes après la mise en ligne : "Wow, je n''avais jamais vu ça. De 0 à 10 gigabits d''utilisation de bande passante en 10 minutes".\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2013-01-19 23:28:00', 1, 'sobegin', 'http://www2.noelshack.com/uploads/europe_drapeau070826.jpg', 1),
(3, 'Kim Dotcom lance Mega, un nouveau service de téléchargement', 'n an après la mise hors ligne de MegaUpload, Kim Dotcom a lancé, samedi 19 janvier, un nouveau site de stockage de fichiers. Lancé officiellement aux alentours de 19 heures, heure de Paris, le site était difficilement accessible en raison du nombre important de visites. Sur son compte Twitter, Kim Dotcom s''est exprimé, quelques minutes après la mise en ligne : "Wow, je n''avais jamais vu ça. De 0 à 10 gigabits d''utilisation de bande passante en 10 minutes"', 'Un an après la mise hors ligne de MegaUpload, Kim Dotcom a lancé, samedi 19 janvier, un nouveau site de stockage de fichiers. Lancé officiellement aux alentours de 19 heures, heure de Paris, le site était difficilement accessible en raison du nombre important de visites. Sur son compte Twitter, Kim Dotcom s''est exprimé, quelques minutes après la mise en ligne : "Wow, je n''avais jamais vu ça. De 0 à 10 gigabits d''utilisation de bande passante en 10 minutes".Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2013-01-19 23:28:00', 1, 'sobegin', 'http://www.noelshack.com/uploads/202056407.jpg', 1);

-- --------------------------------------------------------

--
-- Structure de la table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `idstaff` int(11) NOT NULL AUTO_INCREMENT,
  `rang` varchar(65) NOT NULL,
  `id_user` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`idstaff`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `topic`
--

CREATE TABLE IF NOT EXISTS `topic` (
  `idtopic` int(11) NOT NULL AUTO_INCREMENT,
  `auteur` varchar(65) NOT NULL,
  `titre` varchar(65) NOT NULL,
  `date` datetime NOT NULL,
  `contenus` text NOT NULL,
  `idforum` int(11) NOT NULL,
  `statut` datetime NOT NULL,
  PRIMARY KEY (`idtopic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `date` datetime DEFAULT NULL,
  `lasttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `avatar` varchar(45) NOT NULL,
  `sign` text NOT NULL,
  `ip` varchar(45) NOT NULL,
  `rang` varchar(45) NOT NULL,
  `mail` varchar(45) NOT NULL,
  `barre` varchar(45) NOT NULL,
  `age` varchar(45) NOT NULL,
  `sexe` int(11) NOT NULL,
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`iduser`, `user`, `password`, `date`, `lasttime`, `avatar`, `sign`, `ip`, `rang`, `mail`, `barre`, `age`, `sexe`) VALUES
(1, 'sobegin', 'asmonaco', '2013-01-17 23:23:00', '2013-01-20 16:17:43', '', 'LOL', '127.0.0.1', '10', 'lemonacodu45@msn.com', '', '', 0),
(2, 'sobegin', 'asmonaco', '2013-01-17 23:23:00', '2013-01-20 16:17:52', '', 'LOL', '127.0.0.1', '10', 'lemonacodu45@msn.com', '', '', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
