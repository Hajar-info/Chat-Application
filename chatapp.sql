-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 19 oct. 2024 à 02:50
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `chatapp`
--

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(1, 1243653219, 1293676530, 'hi'),
(2, 1243653219, 1293676530, 'how r u'),
(3, 1293676530, 1243653219, 'im fine thanksss'),
(4, 810867604, 393616151, 'hii '),
(5, 810867604, 393616151, 'where r u now bae?'),
(6, 1243653219, 393616151, 'heeeey!!!!!'),
(7, 393616151, 810867604, 'in ur heart sweetie <3 !!'),
(8, 393616151, 810867604, 'btw how r u? hope u r ok'),
(9, 393616151, 1243653219, 'hi ! ');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `img`, `status`) VALUES
(1, 1243653219, 'Chen', 'Zheyuan', 'chen@gmail.com', 'a1a8887793acfc199182a649e905daab', '17291307608c4a51e005629a084505649079b0a949.jpg', 'Offline now'),
(2, 1293676530, 'ZHAO', 'LUSI', 'lusi@gmail.com', 'c842ecc88a0ff8fd0105eaeabf71999d', '172913081671bb81122b53455f927cecec53d0bc7f.jpg', 'Offline now'),
(3, 810867604, 'Haj', 'Hajar', 'hajar@gmail.com', '9ccc598773c3b627675dcf47d1b16c5b', '17291309249ad41231230eda358603bb018a3bd328.jpg', 'Offline now'),
(4, 393616151, 'Hald', 'Emiley', 'emiley@hotmail.fr', 'e5d03590b9cab2ce59a522fb8ae46167', '1729130961271813366_459827379051390_946697114090190921_n.jpg', 'Offline now');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
