-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Lun 28 Janvier 2019 à 21:29
-- Version du serveur :  10.1.21-MariaDB
-- Version de PHP :  7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `e-travel`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id_client` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `passwd` varchar(300) NOT NULL,
  `image` varchar(300) NOT NULL DEFAULT '/e-travel/public/front/images/profils/defaultprofil.png',
  `prenom` varchar(100) DEFAULT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `dateNaissance` date DEFAULT NULL,
  `NumTele` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`id_client`, `email`, `passwd`, `image`, `prenom`, `nom`, `address`, `dateNaissance`, `NumTele`) VALUES
(1, 'is.bellihi@gmail.com', 'nnnn', '/e-travel/public/front/images/profils/defaultprofil.png', 'Anas', 'Oualili', NULL, '1994-10-16', NULL),
(2, 'bellihiismail.12@gmail.com', 'zzzz', '/e-travel/public/front/images/profils/defaultprofil.png', 'Ismail', 'BELLIHI', NULL, '1994-11-19', NULL),
(4, 'xuhoxexe@geroev.net', 'iiii', '/e-travel/public/front/images/profils/defaultprofil.png', 'Ismail', 'ismail', NULL, '1995-11-13', NULL),
(5, 'gezejoj@daabox.com', '', '/e-travel/public/front/images/profils/defaultprofil.png', '', 'ismail bellihi', NULL, '1991-10-15', NULL),
(6, 'karamari-1996@outlook.fr', 'iii', '/e-travel/public/front/images/profils/defaultprofil.png', '', 'ismail bellihi', NULL, '1994-10-18', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `covoiturage`
--

CREATE TABLE `covoiturage` (
  `id_coVoiturage` int(10) NOT NULL,
  `dateDepart` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dateArrivee` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `id_ville_arrivee` int(10) NOT NULL,
  `id_ville_depart` int(10) NOT NULL,
  `description` varchar(500) NOT NULL,
  `nbrPlace` int(10) NOT NULL,
  `frais` double NOT NULL,
  `marqueVoiture` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Contenu de la table `covoiturage`
--

INSERT INTO `covoiturage` (`id_coVoiturage`, `dateDepart`, `dateArrivee`, `id_ville_arrivee`, `id_ville_depart`, `description`, `nbrPlace`, `frais`, `marqueVoiture`) VALUES
(4, '2018-06-12 18:30:00', '2018-06-12 18:30:00', 2, 1, 'Co-Voiturage 1 Co-Voiturage 1', 3, 100, ''),
(5, '2018-06-12 18:30:00', '2018-06-12 18:30:00', 2, 1, ' Covoiturage Covoiturage Covoiturage\r\n Covoiturage Covoiturage Covoiturage\r\n Covoiturage Covoiturage Covoiturage', 3, 0, 'Dacia 2008');

-- --------------------------------------------------------

--
-- Structure de la table `escale`
--

CREATE TABLE `escale` (
  `id_escale` int(10) NOT NULL,
  `id_excurssion` int(10) NOT NULL,
  `id_ville` int(10) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `dateArrivee` date NOT NULL,
  `dateDepart` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `escale`
--

INSERT INTO `escale` (`id_escale`, `id_excurssion`, `id_ville`, `nom`, `dateArrivee`, `dateDepart`) VALUES
(4, 1, 4, 'klkl', '2019-01-24', '2019-01-27'),
(5, 1, 1, 'visite de ville d agadir', '2019-01-11', '2019-01-11'),
(6, 2, 1, 'visite de ville d agadir', '2019-01-11', '2019-01-11');

-- --------------------------------------------------------

--
-- Structure de la table `excurssion`
--

CREATE TABLE `excurssion` (
  `id_excurssion` int(10) NOT NULL,
  `id_client` int(10) NOT NULL,
  `nbrPlace` int(10) NOT NULL,
  `frais` double NOT NULL,
  `description` varchar(30000) NOT NULL,
  `regelement` varchar(30000) DEFAULT NULL,
  `id_voyage` int(10) DEFAULT NULL,
  `id_ville_arrivee` int(10) NOT NULL,
  `id_ville_depart` int(10) NOT NULL,
  `dateArrivee` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dateDepart` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `titre` varchar(200) NOT NULL,
  `fiche` varchar(300) DEFAULT '/e-travel/public/front/images/fiches/default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `excurssion`
--

INSERT INTO `excurssion` (`id_excurssion`, `id_client`, `nbrPlace`, `frais`, `description`, `regelement`, `id_voyage`, `id_ville_arrivee`, `id_ville_depart`, `dateArrivee`, `dateDepart`, `titre`, `fiche`) VALUES
(1, 2, 10, 12, 'Notre excursion partagée à la vallée de l\'ourika est organisée en petits groupes ne dépassant pas 17 touristes, principalement les voyageurs individuels, des couples ou des petits groupes de voyageurs partageant les mêmes valeurs. La visite est animée et économiquement avantageuse car les coûts sont partagés', 'Que ça soit en famille avec des enfants ou entre amis, sportif ou moins sportif cette excursion vous ravira. L’excursion à la Vallée de l’Ourika, est parfaite pour ceux qui veulent découvrir la splendeur du Haut Atlas et découvrir le mode de vie simple des berbères.  Une petite heure de route est suffisante pour arriver à la vallée de l’Ourika. Premier site, incontournable, à visiter est le marché hebdomadaire Tnine-Ourika : Un petit village où le Souk se tient à bord de l’oued seulement le lundi ou le vendredi. Découvrez ce magnifique village peuplé essenciellement de berbères (possibilité de passer voir les moulins hydrauliques).  Par la suite, vous aurez l’opportunité de visiter une famille berbère dans son foyer et découvrir son mode de vie. Profitez, ainsi, du décor et prenez part d’un petit repas (thé et collation). Ne manquez surtout pas, de prendre avec vous de petits souvenirs (ex : fournitures scolaires) pour les donner aux petits enfants du village. Ils seront une source de joie pour eux. Prenez ,ensuite, votre chemin vers les hauteurs de l’Atlas pour explorer les Cascades de Setti-Fatma. Le paysage est de plus en plus verdoyant, et l’air est de plus en plus frais. À l\'arrivée, votre randonnée commencera avec votre guide. Profitez, ainsi, d’une succession de vues panoramiques et n’hésitez pas à prendre pleines de photos. Le village contient de nombreux restaurants typiques qui vous offrent un choix de tajines et de grillades selon vos envies', NULL, 2, 4, '2019-01-06 22:20:47', '2019-02-07 09:00:00', 'Excursion Vallée De L’Ourika\n', '/e-travel/public/front/images/fiches/default.jpg'),
(2, 1, 8, 250, 'Notre visite partagÃ©e Ã  Merzouga est organisÃ©e en petits groupes ne dÃ©passant pas 17 touristes, principalement des voyageurs individuels, des couples ou des petits groupes de voyageurs partageant les mÃªmes valeurs. La visite est animÃ©e et Ã©conomiquement avantageuse.', '1Jour : Marrakech – Ait Ben hadou – Ouarzazate – Gorges de Dadès  Départ de Marrakech la matinée, le chauffeur viendra vous chercher dans votre hôtel. Vous prenez la route vers les dunes de Merzouga, en passant par le Haut Atlas via le col de Tichka situé à 2260 d’altitude. Le premier arrêt sera, la Kasbah Ait ben Hadou et l’ancienne Kasbah de Talouet. Ces deux villages fortifiés, reconnues par le patrimoine mondial de l’Unesco, vous offrent un panorama complet des techniques de construction des anciennes maisons en terre…Déjeuner à la Kasbah et direction vers Ouarzazate.  À Ouarzazate, vous visitez la Kasbah de Taourirt et studios de cinéma avant d’aller aux gorges de Dadès. Profitez, ainsi, des paysages splendides de la vallée de Dadès, de la vallèe des Roses et de Kalaa M’gouna. A l’arrivée, vous assistez au coucher du soleil : les gorges de Dadès faisaient preuve de toute leur féerie… Première nuit dans un hôtel typique Très propre et confortable , idéal pour un Passage d\'Une nuitée .  2 Jour : Gorges de Dadès – Merzouga (Dunes de Erg chebbi) Petit déjeuner dans les gorges de Dadès et direction vers les dunes de Merzouga : point de départ pour une balade inoubliable dans le désert. Merzouga est reconnue par ses dunes d’Erg chebbi, ou les plus couramment appelées dunes de Merzouga, qui sont supérieur à 100 km². Profitez d’une heure et demie de balade à dos de chameaux à travers les fascinantes dunes d’Erg Chebbi et admirez le coucher du soleil qui offre une vue incroyable et unique au monde...Deuxième nuit en bivouac sous les étoiles après un diner traditionnel autour du feu.  3 Jour : Merzouga – Ouarzazate – Marrakech  Après le lever du soleil somptueux, prenez part d\'un petit déjeuner typique et tetournez à dos de dromadaire vers Merzouga. Admirez les beaux paysages du Sahara, des oiasis, des palmeraies et des vallées verdoyantes… Retour à Marrakech', NULL, 4, 2, '2019-01-06 22:20:56', '2019-01-10 09:00:00', 'Excursion Merzouga 3 jours', '/e-travel/public/front/images/fiches/default.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `id_message` int(10) NOT NULL,
  `id_reservation` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expediteur` tinyint(1) DEFAULT NULL COMMENT 'Expediteur = true (ou 1) ==> le message envoyé par le proprietaire d’excursion verse versa ',
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `message`
--

INSERT INTO `message` (`id_message`, `id_reservation`, `created_at`, `expediteur`, `message`) VALUES
(1, 1, '2019-01-05 14:19:32', NULL, 'Bonjour Veuillez Monsieur d\'accepter ma réservation de votre excursion'),
(2, 1, '2019-01-05 14:00:32', NULL, 'Bonjour Veuillez Monsieur d accepter ma réservation de votre excursion'),
(3, 2, '2019-01-09 22:12:12', 1, 'Nous avons reçu votre commande, nous vous répondrons dans les meilleurs délais'),
(10, 9, '2019-01-15 14:22:48', 1, 'Nous avons reçu votre commande, nous vous répondrons dans les meilleurs délais.'),
(12, 11, '2019-01-28 12:56:18', 1, 'Nous avons reçu votre commande, nous vous répondrons dans les meilleurs délais.');

-- --------------------------------------------------------

--
-- Structure de la table `outil`
--

CREATE TABLE `outil` (
  `id_outil` int(10) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `prixReservation` double DEFAULT NULL,
  `quantiteDisp` int(10) DEFAULT NULL,
  `id_excurssion` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `outil`
--

INSERT INTO `outil` (`id_outil`, `nom`, `description`, `prixReservation`, `quantiteDisp`, `id_excurssion`) VALUES
(1, 'Transport en minibus 17 places, climatisé. Chauffeur parlant français.', NULL, NULL, NULL, 1),
(2, 'Départ et retour à votre lieu de résidence. ', NULL, 0, NULL, 1),
(5, 'Guide optionnel 50 DH/personne.', NULL, 50, NULL, 1),
(6, 'Déjeuner à la carte entre 40 et 100 DH', NULL, 100, NULL, 1),
(7, 'Transport en minibus 17 places, climatisé. Chauffeur parlant français.', NULL, NULL, NULL, 2),
(8, 'Guide optionnel', NULL, 60, NULL, 2),
(9, 'Déjeuner à la carte', NULL, 120, NULL, 2);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `quantite` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `produit`
--

INSERT INTO `produit` (`id`, `nom`, `quantite`) VALUES
(3, 'RRRr', 3),
(4, 'ismail', 12),
(5, 'produi4', 1000),
(8, 'produit5', 120),
(12, 'produit3', 50);

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(10) NOT NULL,
  `prixTotal` double NOT NULL,
  `id_excurssion` int(10) NOT NULL,
  `id_client` int(10) NOT NULL,
  `confirme` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `reservation`
--

INSERT INTO `reservation` (`id`, `prixTotal`, `id_excurssion`, `id_client`, `confirme`) VALUES
(1, 100, 1, 1, 1),
(2, 250, 2, 2, 1),
(9, 250, 2, 6, 1),
(11, 112, 1, 6, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ville`
--

CREATE TABLE `ville` (
  `id_ville` int(10) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `ville`
--

INSERT INTO `ville` (`id_ville`, `nom`, `region`, `description`) VALUES
(1, 'Agadir', 'Souss-Massa', 'Agadir, ville située sur la côte atlantique sud du Maroc dans les contreforts de l\'Anti-Atlas, est la capitale de la province d\'Agadir Ida-Outanane. Cette station balnéaire est réputée pour ses parcours de golf, sa large plage en croissant et sa promenade en front de mer bordée de cafés, de restaurants et de bars. Perchée sur une colline, la kasbah d\'Agadir a été détruite lors d\'un tremblement de terre en 1960, mais ses murs d\'origine sont toujours debout.'),
(2, 'Rabat', 'Rabat-Salé-Zemmour-Zaër\r\n', 'Rabat, la capitale du Maroc, est bâtie sur les rives du fleuve Bouregreg et de l\'océan Atlantique. Elle est connue pour ses sites d\'intérêt, qui illustrent tant le patrimoine islamique que colonial français, notamment la kasbah des Oudayas. Ce fort royal de l\'époque berbère est entouré par des jardins formels de style français et surplombe l\'océan. L\'emblématique tour Hassan de la ville, un minaret du XIIe siècle, domine les vestiges d\'une mosquée'),
(3, 'Ifrane', 'Fès-Meknès	', 'Ifrane est une ville installée dans les montagnes du Moyen Atlas au Maroc. Elle est réputée pour son architecture de style alpin et ses pistes de ski et forêts voisines. La statue en pierre du lion, près du parc verdoyant La Prairie, fait figure de symbole. À la sortie de la ville se trouve la source d\'Ain Vittel et ses multiples cascades. À l\'ouest, le parc national d\'Ifrane et ses forêts de cèdres de l\'Atlas abritent de rares macaques de Barbarie.\r\n'),
(4, 'Taroudant', 'Souss-Massa', 'Taroudannt, couramment écrit Taroudant, est une ville du Sud-Ouest du Maroc située dans la plaine du Souss, chef-lieu de la province du même nom. En 2014, elle comptait 80 149 habitants.');

-- --------------------------------------------------------

--
-- Structure de la table `voyages`
--

CREATE TABLE `voyages` (
  `id_voyage` int(10) NOT NULL,
  `dateDepart` datetime NOT NULL,
  `dateArrivee` datetime NOT NULL,
  `description` varchar(300) NOT NULL,
  `id_ville_arrivee` int(10) NOT NULL,
  `id_ville_depart` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `voyages`
--

INSERT INTO `voyages` (`id_voyage`, `dateDepart`, `dateArrivee`, `description`, `id_ville_arrivee`, `id_ville_depart`) VALUES
(23, '2018-06-12 19:30:00', '2018-06-12 19:30:00', 'cccc', 4, 1),
(24, '2018-06-12 19:30:00', '2018-06-12 19:30:00', 'cccc', 4, 1),
(25, '2018-06-12 19:30:00', '2018-06-12 19:30:00', 'jjkcjkcjkc', 1, 4),
(26, '2018-06-12 19:30:00', '2018-06-12 19:30:00', 'klxkkkls', 4, 2),
(27, '2018-06-12 19:30:00', '2018-06-12 19:30:00', 'voyage 1 voyage 1 voyage 1', 3, 4),
(28, '2018-06-12 19:30:00', '2018-06-12 19:30:00', 'Voyage  Voyage 2 Voyage 2', 1, 2),
(29, '2018-06-12 19:30:00', '2018-06-12 19:30:00', 'Co-Voiturage 1 Co-Voiturage 1', 2, 1);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`),
  ADD UNIQUE KEY `uniciteEmail` (`email`);

--
-- Index pour la table `covoiturage`
--
ALTER TABLE `covoiturage`
  ADD PRIMARY KEY (`id_coVoiturage`),
  ADD KEY `id_ville_arrivee` (`id_ville_arrivee`),
  ADD KEY `id_ville_depart` (`id_ville_depart`);

--
-- Index pour la table `escale`
--
ALTER TABLE `escale`
  ADD PRIMARY KEY (`id_escale`),
  ADD KEY `id_ville` (`id_ville`),
  ADD KEY `escale_ibfk_1` (`id_excurssion`);

--
-- Index pour la table `excurssion`
--
ALTER TABLE `excurssion`
  ADD PRIMARY KEY (`id_excurssion`),
  ADD KEY `id_voyage` (`id_voyage`),
  ADD KEY `id_ville_arrivee` (`id_ville_arrivee`),
  ADD KEY `id_ville_depart` (`id_ville_depart`),
  ADD KEY `id_client` (`id_client`);

--
-- Index pour la table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id_message`),
  ADD KEY `id_reservation` (`id_reservation`);

--
-- Index pour la table `outil`
--
ALTER TABLE `outil`
  ADD PRIMARY KEY (`id_outil`),
  ADD KEY `id_excurssion` (`id_excurssion`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_client` (`id_client`),
  ADD KEY `reservation_ibfk_1` (`id_excurssion`);

--
-- Index pour la table `ville`
--
ALTER TABLE `ville`
  ADD PRIMARY KEY (`id_ville`);

--
-- Index pour la table `voyages`
--
ALTER TABLE `voyages`
  ADD PRIMARY KEY (`id_voyage`),
  ADD KEY `id_ville_arrivee` (`id_ville_arrivee`),
  ADD KEY `id_ville_depart` (`id_ville_depart`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `covoiturage`
--
ALTER TABLE `covoiturage`
  MODIFY `id_coVoiturage` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `escale`
--
ALTER TABLE `escale`
  MODIFY `id_escale` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `excurssion`
--
ALTER TABLE `excurssion`
  MODIFY `id_excurssion` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `message`
--
ALTER TABLE `message`
  MODIFY `id_message` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `outil`
--
ALTER TABLE `outil`
  MODIFY `id_outil` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `ville`
--
ALTER TABLE `ville`
  MODIFY `id_ville` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `voyages`
--
ALTER TABLE `voyages`
  MODIFY `id_voyage` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `covoiturage`
--
ALTER TABLE `covoiturage`
  ADD CONSTRAINT `covoiturage_ibfk_2` FOREIGN KEY (`id_ville_arrivee`) REFERENCES `ville` (`id_ville`),
  ADD CONSTRAINT `covoiturage_ibfk_3` FOREIGN KEY (`id_ville_depart`) REFERENCES `ville` (`id_ville`);

--
-- Contraintes pour la table `escale`
--
ALTER TABLE `escale`
  ADD CONSTRAINT `escale_ibfk_1` FOREIGN KEY (`id_excurssion`) REFERENCES `excurssion` (`id_excurssion`),
  ADD CONSTRAINT `escale_ibfk_2` FOREIGN KEY (`id_ville`) REFERENCES `ville` (`id_ville`);

--
-- Contraintes pour la table `excurssion`
--
ALTER TABLE `excurssion`
  ADD CONSTRAINT `excurssion_ibfk_1` FOREIGN KEY (`id_voyage`) REFERENCES `voyages` (`id_voyage`),
  ADD CONSTRAINT `excurssion_ibfk_2` FOREIGN KEY (`id_ville_arrivee`) REFERENCES `ville` (`id_ville`),
  ADD CONSTRAINT `excurssion_ibfk_3` FOREIGN KEY (`id_ville_depart`) REFERENCES `ville` (`id_ville`),
  ADD CONSTRAINT `excurssion_ibfk_4` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`);

--
-- Contraintes pour la table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`id_reservation`) REFERENCES `reservation` (`id`);

--
-- Contraintes pour la table `outil`
--
ALTER TABLE `outil`
  ADD CONSTRAINT `outil_ibfk_1` FOREIGN KEY (`id_excurssion`) REFERENCES `excurssion` (`id_excurssion`);

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`id_excurssion`) REFERENCES `excurssion` (`id_excurssion`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`);

--
-- Contraintes pour la table `voyages`
--
ALTER TABLE `voyages`
  ADD CONSTRAINT `voyages_ibfk_1` FOREIGN KEY (`id_ville_arrivee`) REFERENCES `ville` (`id_ville`),
  ADD CONSTRAINT `voyages_ibfk_2` FOREIGN KEY (`id_ville_depart`) REFERENCES `ville` (`id_ville`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
