-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 26 juil. 2022 à 09:38
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `dodashop`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` bigint(20) NOT NULL,
  `date_create` datetime NOT NULL DEFAULT current_timestamp(),
  `date_update` datetime NOT NULL DEFAULT current_timestamp(),
  `libelle` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `date_create`, `date_update`, `libelle`) VALUES
(7, '2022-07-01 15:28:26', '2022-07-16 00:00:00', 'manes'),
(8, '2022-07-02 08:45:04', '2022-07-02 08:45:04', 'iphone');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `idProd` bigint(20) NOT NULL,
  `date_createp` datetime DEFAULT current_timestamp(),
  `date_updatep` datetime DEFAULT current_timestamp(),
  `description` varchar(255) NOT NULL,
  `libelleProd` varchar(255) NOT NULL,
  `photo1` varchar(255) NOT NULL,
  `photo2` varchar(255) NOT NULL,
  `photo3` varchar(255) NOT NULL,
  `photo4` varchar(255) NOT NULL,
  `prix_unitaire` double NOT NULL,
  `quantite` int(11) NOT NULL,
  `id_categorie` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`idProd`, `date_createp`, `date_updatep`, `description`, `libelleProd`, `photo1`, `photo2`, `photo3`, `photo4`, `prix_unitaire`, `quantite`, `id_categorie`) VALUES
(9, '2022-07-06 15:17:32', '2022-07-07 00:00:00', 'dz', 'sfVFFVV', '0-test_face_3.png', '0-koi_ma_16.jpg', '0-koi_ma_16.jpg', '0-test_face_2.png', 12020, 11, 8),
(10, '2022-07-06 19:14:40', '2022-07-06 19:14:40', 'ged', 'az', 'Capture.PNG', 'Capture.PNG', 'Capture.PNG', 'Capture.PNG', 4, 10, 8),
(11, '2022-07-06 19:15:58', '2022-07-06 19:15:58', 'w', 'zsg', 'prod.webp', '138465f886d8b27d06de99d69c2a20cf.jpg', '138465f886d8b27d06de99d69c2a20cf.jpg', '138465f886d8b27d06de99d69c2a20cf.jpg', 410, 10, 8),
(12, '2022-07-06 19:16:26', '2022-07-06 19:16:26', 'zz', 'é', 'img_x300_5f3914e15bab33-59767864-30906782.jpg', 'img_x300_5f3914e15bab33-59767864-30906782.jpg', 'img_x300_5f3914e15bab33-59767864-30906782.jpg', 'img_x300_5f3914e15bab33-59767864-30906782.jpg', 2254, 14, 8);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `abilite` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `date_create` datetime NOT NULL DEFAULT current_timestamp(),
  `date_naissance` varchar(255) NOT NULL,
  `date_update` datetime NOT NULL DEFAULT current_timestamp(),
  `email` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `sexe` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `abilite`, `adresse`, `date_create`, `date_naissance`, `date_update`, `email`, `nom`, `pwd`, `prenom`, `sexe`) VALUES
(3, 'QXXQ', 'zdza', '2022-07-05 12:58:45', '2022-06-30', '2022-11-04 00:00:00', 'ma@gmail.com', 'koisonn  maness', '1234', 'DZZd', 'm');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`idProd`),
  ADD KEY `FKlgcxfrlljt10cdwx730b4tujf` (`id_categorie`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `idProd` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `FKlgcxfrlljt10cdwx730b4tujf` FOREIGN KEY (`id_categorie`) REFERENCES `categorie` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
