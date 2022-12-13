-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mar 13 Décembre 2022 à 15:18
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `rh`
--

-- --------------------------------------------------------

--
-- Structure de la table `employes`
--

CREATE TABLE IF NOT EXISTS `employes` (
  `noEmp` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `sexe` varchar(20) NOT NULL,
  `salaire` int(11) NOT NULL,
  `typecontrat` varchar(20) NOT NULL,
  `fonction` varchar(20) NOT NULL,
  `site` varchar(20) NOT NULL,
  `date d'embauche` date NOT NULL,
  `date naissance` date NOT NULL,
  `noSrv` int(11) NOT NULL,
  PRIMARY KEY (`noEmp`),
  KEY `noSrv` (`noSrv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `employes`
--


-- --------------------------------------------------------

--
-- Structure de la table `intervenir`
--

CREATE TABLE IF NOT EXISTS `intervenir` (
  `numInterv` int(11) NOT NULL,
  `noProjet` int(11) NOT NULL,
  `noEmployes` int(11) NOT NULL,
  `nbHeures` int(11) NOT NULL,
  PRIMARY KEY (`numInterv`),
  KEY `noProjet` (`noProjet`,`noEmployes`),
  KEY `noEmployes` (`noEmployes`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `intervenir`
--


-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

CREATE TABLE IF NOT EXISTS `projet` (
  `noProjet` int(11) NOT NULL,
  `libelleProjet` text NOT NULL,
  `noSrv` int(11) NOT NULL,
  PRIMARY KEY (`noProjet`),
  KEY `noSrv` (`noSrv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `projet`
--


-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
  `noSrv` int(11) NOT NULL,
  `nomSrv` text NOT NULL,
  PRIMARY KEY (`noSrv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `service`
--


--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `employes`
--
ALTER TABLE `employes`
  ADD CONSTRAINT `employes_ibfk_1` FOREIGN KEY (`noSrv`) REFERENCES `service` (`noSrv`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `intervenir`
--
ALTER TABLE `intervenir`
  ADD CONSTRAINT `intervenir_ibfk_2` FOREIGN KEY (`noProjet`) REFERENCES `projet` (`noProjet`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `intervenir_ibfk_1` FOREIGN KEY (`noEmployes`) REFERENCES `employes` (`noEmp`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `projet`
--
ALTER TABLE `projet`
  ADD CONSTRAINT `projet_ibfk_1` FOREIGN KEY (`noSrv`) REFERENCES `service` (`noSrv`) ON DELETE CASCADE ON UPDATE CASCADE;
