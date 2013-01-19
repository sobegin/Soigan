-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Sam 19 Janvier 2013 à 16:45
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
  `titre` varchar(65) NOT NULL,
  `contenus` text NOT NULL,
  `date` datetime NOT NULL,
  `iduser` int(11) NOT NULL,
  `photo` varchar(65) NOT NULL,
  `statut` tinyint(1) NOT NULL,
  PRIMARY KEY (`idnews`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
