-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Dim 27 Janvier 2013 à 21:33
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
  `user` varchar(80) NOT NULL,
  `password` varchar(80) NOT NULL,
  `dateinsc` date NOT NULL,
  `lasttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `avatar` varchar(80) NOT NULL,
  `sign` text NOT NULL,
  `ip` varchar(80) NOT NULL,
  `rang` varchar(45) NOT NULL,
  `mail` varchar(80) NOT NULL,
  `age` int(11) NOT NULL,
  `sexe` varchar(1) NOT NULL,
  `tokenid` varchar(80) NOT NULL,
  `valide` int(11) NOT NULL,
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`iduser`, `user`, `password`, `dateinsc`, `lasttime`, `avatar`, `sign`, `ip`, `rang`, `mail`, `age`, `sexe`, `tokenid`, `valide`) VALUES
(1, 'sobegin', 'asmonaco', '2013-01-17', '2013-01-20 16:17:43', '', 'LOL', '1270', '10', 'lemonacodu45@msn.com', 0, '0', '0', 0),
(2, 'sobegin', 'asmonaco', '2013-01-17', '2013-01-20 16:17:52', '', 'LOL', '1270', '10', 'lemonacodu45@msn.com', 0, '0', '0', 0),
(3, 'sobegin', 'asmonaco', '2013-01-17', '2013-01-20 16:17:43', '', 'LOL', '1270', '10', 'lemonacodu45@msn.com', 0, '0', '0', 0),
(4, 'lol', 'asmonaco', '2013-01-17', '2013-01-26 14:37:57', '', '', '1270', '10m', 'dickpowerforeer@gail.com', 0, 'M', '158', 0),
(5, 'ss', 'sss', '2013-01-29', '2013-01-26 18:13:22', 'sss', 'sss', '0', 'ss', 'ss', 0, '', '0', 0),
(6, 'sobegin', 'asmonaco', '2013-01-17', '2013-01-26 18:30:45', 'sss', 'll', '1270', '10', 'lemonacodu45@msn.com', 20, 'M', '0', 1),
(7, 'Tsar', 'b6067aaf0d13b019bfdd11bc58184c81', '0000-00-00', '2013-01-27 15:54:44', '', '', '', '', '', 0, '', '', 0),
(8, 'Tsar', 'b6067aaf0d13b019bfdd11bc58184c81', '0000-00-00', '2013-01-27 15:55:24', '', '', '', '', '', 0, '', '', 0),
(9, 'admin', 'b6067aaf0d13b019bfdd11bc58184c81', '0000-00-00', '2013-01-27 15:55:31', '', '', '', '', '', 0, '', '', 0),
(10, 'admin', 'b6067aaf0d13b019bfdd11bc58184c81', '0000-00-00', '2013-01-27 15:56:11', '', '', '', '', '', 0, '', '', 0),
(11, ':pseudo', ':password', '0000-00-00', '2013-01-27 20:12:06', '', '', '', '', '', 0, '', '', 0),
(12, 'LE-RAP', 'd828cafffb43c7f5a819062f81d84750', '0000-00-00', '2013-01-27 20:12:55', '', '', '', '', '', 0, '', '', 0),
(16, 'Brazil4', '7269cdff605727e072695a66cf65c1a5', '0000-00-00', '2013-01-27 20:22:54', '', '', '', '', '', 0, '', '', 0),
(18, 'nybvc', '7acf6dd169e98a224fb36a363a91b060', '2013-01-27', '2013-01-27 20:46:12', 'http://image.noelshack.com/fichiers/2012/49/1354975567-u-mad-bro-thumb.jpg', '', '', '', '', 0, '', '', 0),
(20, 'frrfrgrg', '35551c3a08278474aa8d3940119b545b', '2013-01-27', '2013-01-27 20:48:14', '', '', '', '', '', 0, '', '', 0),
(21, 'qdqsdsqd', 'c8d3b909628558b68160ba7186d44b54', '2013-01-27', '2013-01-27 20:52:35', '', 'ddd\r\n', '', '', '', 0, '', '', 0),
(22, 'ddddzz', '64ce68a3db4a58ae9f279047ab402048', '2013-01-27', '2013-01-27 20:53:04', '', '', '', '', '', 0, '', '', 0),
(23, 'fd', 'f76427d493624954d1911364c7557b3a', '2013-01-27', '2013-01-27 20:58:15', '', '', '127.0.0.1', '', '', 0, '', '', 0),
(24, 'Sobeginasa', '2bd45948520944b7d549edbaf32fd846', '2013-01-27', '2013-01-27 21:20:52', '', '', '0.0.0.0', '1', '', 0, '', '', 0),
(25, 'qsqsqsq', 'c08a3c932d171f69868314eb297d3137', '2013-01-27', '2013-01-27 21:23:05', '', '', '0.0.0.1', '1', 'qsqsq@qsqsq.qs', 0, '', '', 0),
(26, ';k,jnhbgvfcd', '742236498668d5073291185e08798e6e', '2013-01-27', '2013-01-27 21:26:51', '', '', '0.0.0.2', '1', 'gtgtgt@gtg.f', 0, 'M', '', 0),
(27, 'fzdzfz', '31fbb140f069abee246c90bbf9ab158c', '2013-01-27', '2013-01-27 21:30:25', '', '', '0.0.0.5', '1', 'dzdzdzdz@dz.com', 0, 'M', '4115d852944eb7cb196c1419612cd87a', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
