-- --------------------------------------------------------

--
-- Structure de la table `actualite`
--

CREATE TABLE `actualite` (
  `id_actualite` int(11) NOT NULL,
  `libelle_actualite` varchar(50) NOT NULL,
  `contenu_actualite` longtext NOT NULL,
  `date_publication_actualite` date NOT NULL,
  `id_image` int(11) NOT NULL,
  `id_type_Actualite` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `actualite`
--

INSERT INTO `actualite` (`id_actualite`, `libelle_actualite`, `contenu_actualite`, `date_publication_actualite`, `id_image`, `id_type_Actualite`) VALUES
(1, 'Actu 1 de Framboise', 'Un petit coucou de notre doyenne CHIPIE (20ans) en famille d accueil longue durée chez notre trésorière.\r\nLa miss a un programme journalier surchargé :\r\nManger, dormir, petit tour à la litière, retour dans le dodo juste devant le chauffage, câlins à ma Tatynou pour qu elle me donne des friandises et re dodo. Merci à tous pour les petits cadeaux, elle apprécie la gourmande\r\n\r\nBonne fin de soirée à tous et à bientôt pr la suite des aventures de mamie Chipie', '2019-05-14', 1, 3),
(2, 'Actu 2', 'Petit rappel rapide de l’histoire.\r\n\r\nLundi une de nos amies, Cynthia, trouve cette petite misère sur la route devant des poubelles.\r\nDirection vétérinaire, son pronostic vital est engagé nous décidons de tenter le coup.\r\nAveugle, une otite énorme, une patte « morte » des griffes enfoncées dans les coussinets, une hypothermie et un poids de 1kg500... \r\n\r\nMathilde, notre adorable vétérinaire nous dit qu\'elle est vieille, proche des 20 ans.\r\nVendredi, un monsieur se met en relation avec nous et explique qu’il s’agit de Chipie 20 ans, la chatte de sa maman qui est malheureusement décédée.\r\nNe pouvant pas la prendre chez lui à cause de son chien et ne voulant pas la changer de lieu à son âge elle reste dans la maison inhabitée et ils viennent la voir chaque jour. Par contre nous ne savons pas expliquer comment Chipie s\'est retrouvée devant cette poubelle ! Elle avait disparu du jardin et ils ont cru qu\'elle était partie mourir quelque part... \r\n\r\nEn accord avec eux, Chipie restera à l\'association et plus particulièrement chez Karine notre trésorière où elle a son petit coin douillet à côté du radiateur et beaucoup de câlins et d\'amour. \r\n\r\nElle a repris un peu de poids, ses otites guérissent doucement, ses pattes cicatrisent bien mais voilà CHIPIE a 20 ans, son petit corps est fatigué, elle dort énormément. Semaine prochaine elle revoit Mathilde notre vétérinaire pour faire un point. \r\n\r\nNous allons la chouchouter un maximum et veiller à son bien-être jusqu’au dernier moment. Nourriture à volonté (viande crue, croquettes ramollies, sachets fraîcheur, etc) un petit coin bien chaud et beaucoup beaucoup d\'amour. \r\n\r\nMerci à TOUS pour votre confiance, à son ancienne famille qui accepte que Chipie termine sa vie avec nous, à Karine sa Tatynou, Laure pour les soins, Cynthia pour le sauvetage, le cabinet vétérinaire Debailleul et sa super équipe, etc etc \r\n\r\nVoilà notre petite douceur de Noël', '2019-05-06', 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

CREATE TABLE `administrateur` (
  `login` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `administrateur`
--

INSERT INTO `administrateur` (`login`, `password`) VALUES
('admin', '$2y$10$OE6tMGyrwan3ZNo9IwIgquV9b7.Md.H1gBCsahNDDSZSDjzbe6tU6');

-- --------------------------------------------------------

--
-- Structure de la table `animal`
--

CREATE TABLE `animal` (
  `id_animal` int(11) NOT NULL,
  `nom_animal` varchar(50) NOT NULL,
  `type_animal` enum('Chien','Chat') NOT NULL,
  `puce` varchar(50) DEFAULT NULL,
  `sexe` tinyint(1) NOT NULL,
  `date_naissance_animal` date NOT NULL,
  `date_adoption_animal` date DEFAULT NULL,
  `ami_chien` enum('oui','non','N/A') NOT NULL,
  `ami_chat` enum('oui','non','N/A') NOT NULL,
  `ami_enfant` enum('oui','non','N/A') NOT NULL,
  `description_animal` longtext,
  `adoption_desc_animal` longtext,
  `localisation_animal` longtext,
  `engagement_animal` longtext,
  `id_statut` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `animal`
--

INSERT INTO `animal` (`id_animal`, `nom_animal`, `type_animal`, `puce`, `sexe`, `date_naissance_animal`, `date_adoption_animal`, `ami_chien`, `ami_chat`, `ami_enfant`, `description_animal`, `adoption_desc_animal`, `localisation_animal`, `engagement_animal`, `id_statut`) VALUES
(1, 'Framboise', 'Chat', NULL, 0, '2019-05-16', NULL, 'oui', 'oui', 'oui', 'Nous voulons encore et encore sensibiliser les gens sur les conséquences de la NON Stérilisation. <br />\r\nLa petite FRAMBOISE âgée aujourd’hui de 6 semaines est malheureusement encore un exemple des conséquences de celle-ci.<br />\r\nSa maman, chatte de ferme non stérilisée, a eu des rapports avec son propre fils ?\r\nLe résultat est là, un chaton mort-né totalement diforme, 2 chatons qui vont bien et la petite FRAMBOISE.\r\nElle a eu du mal à grandir, puis les jours passent et nous avons un doute sur sa vision.\r\nVendredi nous décidons de la montrer à notre vétérinaire-ophtalmologue, puis le verdict se confirme : malvoyante voire aveugle.\r\nNous referons des examens d\'ici 3 semaines mais une chose est certaine, elle ne verra pas normalement. \r\n\r\nAlors oui ce n\'est pas mortel mais cela aurait pu être évité.\r\nFramboise pourra t-elle trouver une famille qui l’aimera malgré son handicap !? Nous l’espérons car elle se débrouille aussi bien que son frère et sa soeur. \r\n\r\nVoilà par pitié il faut absolument faire stériliser vos animaux, assumer jusqu’au bout votre choix d\'avoir un animal. \r\nNON il n\'est pas nécessaire qu’une chatte connaisse la maternité. \r\nNON ce n\'est pas vrai qu\'une chatte stérilisée chasse moins vos souris.\r\nVous allez la protéger des maladies, des dangers de la gestation etc.\r\nLa stérilisation n’a que du POSITIF \r\n\r\nPour info sa maman est maintenant stérilisée mais combien ne vont pas l’être !? Combien vont devoir encore subir l\'irresponsabilité de l’homme !? \r\n\r\nÀ FRAMBOISE et toutes les petites victimes de la négligence humaine.', NULL, NULL, NULL, 2),
(2, 'Mona', 'Chat', NULL, 0, '2019-06-10', NULL, 'N/A', 'N/A', 'N/A', 'Nous n’avons plus de nouvelles des gens souhaitant l adopter du coup nous vous présentons la miss.\r\nMONA pourra vous rejoindre à partir du 27 mai, et vous avez la possibilité de la réserver ? ( contrat de réservation + versement d’arrhes)\r\n\r\nNous vous présentons la petite MONA sublime petite femelle grise avec le poil mi long. \r\n\r\nLa miss est un petit chaton de NOVA. \r\n\r\nMONA est une boule d amour, mais elle a aussi son petit côté « clown » qui vous fera bien rire. Elle est propre. \r\n\r\nHabituée aux chiens, chats et enfants.', 'Frais d\'adoption de 60 €\r\nElle est identifiée par puce électronique 2502687322..., vermifuge et anti-parasitaire externe administrés.\r\nLes vaccins sont à la demande des adoptants, il faudra ajouter 35 €.\r\nUn certificat vétérinaire vous sera également remis.\r\nLa stérilisation sera OBLIGATOIRE à l\'âge de 6 mois, un chèque de caution de 200 € vous sera demandé (non encaissé) puis rendu dès réception du certificat vétérinaire attestant de celle-ci.', 'MONA se trouve sur le secteur de Saint Girons 09. Pas de co-voiturage possible.', 'Nous vous demandons de bien réfléchir aux engagements que vous allez devoir prendre envers ce petit coeur : il devra vous accompagner dans vos changements de vie pendant les 15 ans minimum à venir ? Il faudra également pouvoir subvenir à ses besoins ( nourriture, soins vétérinaire etc ) Un animal n est pas un jouet.', 1),
(3, 'Fonzie', 'Chien', NULL, 1, '2019-06-04', NULL, 'non', 'non', 'non', 'l sera prêt à vous rejoindre à partir du 15 juin quand il aura 8 semaines. \r\n( Réservation possible après visite,signature d un contrat et versement d’arrhes sur l’adoption)\r\n\r\nFONZIE petit chiot né vers le 20/04/2019, nous ne connaissons pas les parents mais d’après le poids actuel il fera entre 15/20kg adulte. \r\n\r\nIl est adorable, sociable, joueur et câlin. Il adore découvrir et apprendre des nouvelles choses \r\n\r\nApprentissage de la propreté à poursuivre des accidents pourront arriver. Il a pu apprendre les codes canins grâce aux chiens de la F, il faudra donc le poursuivre son apprentissage et l’accompagner dans son éducation comme pour tous les chiots. Rencontre possible avec notre éducatrice canin le jour de l adoption. \r\n\r\nHabitué aux chiens, chats, enfants.', 'Participation aux frais vétérinaires de 100€. \r\nIdentification par puce électronique 250268732..., primo-vaccination,vermifuge et anti-parasitaire externe administrés. \r\n\r\nUn certificat vétérinaire vous sera également remis. \r\n\r\nLa stérilisation sera obligatoire à l\'âge de 6 mois, un chèque de caution de 200 € vous sera demandé (non encaissé) puis détruit dès réception du certificat vétérinaire attestant de celle-ci.', 'FONZIE se trouve sur le secteur de Saint Girons 09 ( environ 10km) Pas de co-voiturage possible', 'Nous vous demandons de bien réfléchir aux engagements que vous allez devoir prendre envers ce petit coeur, il devra vous accompagner dans tous vos changements de vie pendant les 15 ans minimum à venir et il faudra aussi subvenir à ses besoins.\r\nUn animal n\'est pas un jouet.\r\n\r\n', 1),
(4, 'Nova', 'Chat', NULL, 0, '2019-06-16', NULL, 'oui', 'oui', 'oui', NULL, NULL, NULL, NULL, 2),
(5, 'Roonie', 'Chien', NULL, 1, '2015-02-16', NULL, 'oui', 'oui', 'oui', NULL, NULL, NULL, NULL, 2),
(6, 'Hugo', 'Chien', NULL, 1, '2018-06-18', NULL, 'oui', 'oui', 'oui', NULL, NULL, NULL, NULL, 2),
(7, 'philou', 'Chien', NULL, 1, '2017-05-16', NULL, 'oui', 'oui', 'oui', NULL, NULL, NULL, NULL, 1),
(8, 'bibi', 'Chien', NULL, 1, '2012-04-10', NULL, 'oui', 'oui', 'oui', NULL, NULL, NULL, NULL, 3),
(9, 'brutus', 'Chien', NULL, 1, '2008-06-02', NULL, 'oui', 'oui', 'oui', NULL, NULL, NULL, NULL, 4),
(10, 'Mina', 'Chat', NULL, 0, '2010-06-10', NULL, 'oui', 'oui', 'oui', NULL, NULL, NULL, NULL, 3);

-- --------------------------------------------------------

--
-- Structure de la table `associe`
--

CREATE TABLE `associe` (
  `id_animal` int(11) NOT NULL,
  `id_actualite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `caractere`
--

CREATE TABLE `caractere` (
  `id_caractere` int(11) NOT NULL,
  `libelle_caractere_m` varchar(50) NOT NULL,
  `libelle_caractere_f` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `caractere`
--

INSERT INTO `caractere` (`id_caractere`, `libelle_caractere_m`, `libelle_caractere_f`) VALUES
(3, 'Calme', 'Calme'),
(4, 'Doux', 'Douce'),
(5, 'Gentil', 'Gentille'),
(6, 'Adorable', 'Adorable'),
(7, 'Câlin', 'Câline'),
(8, 'Timide', 'Timide');

-- --------------------------------------------------------

--
-- Structure de la table `contient`
--

CREATE TABLE `contient` (
  `id_image` int(11) NOT NULL,
  `id_animal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `contient`
--

INSERT INTO `contient` (`id_image`, `id_animal`) VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 2),
(3, 4),
(4, 3);

-- --------------------------------------------------------

--
-- Structure de la table `dispose`
--

CREATE TABLE `dispose` (
  `id_caractere` int(11) NOT NULL,
  `id_animal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `dispose`
--

INSERT INTO `dispose` (`id_caractere`, `id_animal`) VALUES
(3, 1),
(4, 3),
(4, 4),
(5, 3),
(6, 1),
(6, 2),
(8, 2);

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

CREATE TABLE `image` (
  `id_image` int(11) NOT NULL,
  `libelle_image` varchar(50) NOT NULL,
  `url_image` varchar(100) NOT NULL,
  `description_image` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `image`
--

INSERT INTO `image` (`id_image`, `libelle_image`, `url_image`, `description_image`) VALUES
(1, 'Photo  de Framboise', 'animaux/chat/framboise.jpg', 'Une photo du chat Framboise'),
(2, 'Photo de Mona', 'animaux/chat/mona.jpg', 'Photo  de Mona'),
(3, 'Photo  de fonzie', 'animaux/chien/fonzie.jpg', 'Photo de fonzie'),
(4, 'Photo de nova', 'animaux/chat/nova.jpg', 'Photo de nova'),
(5, 'Photo de Roonie', 'animaux/chien/roonie.jpg', 'Photo de roonie'),
(6, 'Photo de hugo', 'animaux/chien/hugo.jpg', 'Photo de hugo'),
(7, 'Photo de philou', 'animaux/chien/philou.jpg', 'Photo de philou'),
(8, 'Photo de bibi', 'animaux/chien/bibi.jpg', 'Photo de bibi'),
(9, 'Photo de brutus', 'animaux/chien/brutus.jpg', 'Photo de brutus'),
(10, 'Photo de mina', 'animaux/chat/mina.jpg', 'Photo de mina'),
(11, 'Photo de fraise', 'animaux/chien/fraise.jpg', 'Photo de fraise');


-- --------------------------------------------------------

--
-- Structure de la table `statut`
--

CREATE TABLE `statut` (
  `id_statut` int(11) NOT NULL,
  `libelle_statut` varchar(50) NOT NULL,
  `description_statut` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `statut`
--

INSERT INTO `statut` (`id_statut`, `libelle_statut`, `description_statut`) VALUES
(1, 'A l\'adoption', 'Animal à l\'adoption'),
(2, 'Adopté', 'Animal adopté'),
(3, 'FALD', 'Famille d\'accueil longue durée'),
(4, 'A rejoind les étoiles', 'Animal mort');

-- --------------------------------------------------------

--
-- Structure de la table `type_actualite`
--

CREATE TABLE `type_actualite` (
  `id_type_actualite` int(11) NOT NULL,
  `libelle_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `type_actualite`
--

INSERT INTO `type_actualite` (`id_type_actualite`, `libelle_type`) VALUES
(1, 'News'),
(2, 'Actions'),
(3, 'Events');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `actualite`
--
ALTER TABLE `actualite`
  ADD PRIMARY KEY (`id_actualite`),
  ADD KEY `FK_image_actualite` (`id_image`),
  ADD KEY `FK_type_actualite` (`id_type_actualite`);

--
-- Index pour la table `administrateur`
--
ALTER TABLE `administrateur`
  ADD PRIMARY KEY (`login`);

--
-- Index pour la table `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`id_animal`),
  ADD KEY `FK_statut_animal` (`id_statut`);

--
-- Index pour la table `associe`
--
ALTER TABLE `associe`
  ADD PRIMARY KEY (`id_animal`,`id_actualite`),
  ADD KEY `FK_associe_actualite` (`id_actualite`);

--
-- Index pour la table `caractere`
--
ALTER TABLE `caractere`
  ADD PRIMARY KEY (`id_caractere`);

--
-- Index pour la table `contient`
--
ALTER TABLE `contient`
  ADD PRIMARY KEY (`id_image`,`id_animal`),
  ADD KEY `FK_contient_animal` (`id_animal`);

--
-- Index pour la table `dispose`
--
ALTER TABLE `dispose`
  ADD PRIMARY KEY (`id_caractere`,`id_animal`),
  ADD KEY `FK_animal_dispose` (`id_animal`);

--
-- Index pour la table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id_image`);

--
-- Index pour la table `statut`
--
ALTER TABLE `statut`
  ADD PRIMARY KEY (`id_statut`);

--
-- Index pour la table `type_actualite`
--
ALTER TABLE `type_actualite`
  ADD PRIMARY KEY (`id_type_Actualite`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `actualite`
--
ALTER TABLE `actualite`
  MODIFY `id_actualite` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `animal`
--
ALTER TABLE `animal`
  MODIFY `id_animal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `caractere`
--
ALTER TABLE `caractere`
  MODIFY `id_caractere` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `image`
--
ALTER TABLE `image`
  MODIFY `id_image` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `statut`
--
ALTER TABLE `statut`
  MODIFY `id_statut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `type_actualite`
--
ALTER TABLE `type_actualite`
  MODIFY `id_type_Actualite` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `actualite`
--
ALTER TABLE `actualite`
  ADD CONSTRAINT `FK_image_actualite` FOREIGN KEY (`id_image`) REFERENCES `image` (`id_image`),
  ADD CONSTRAINT `FK_type_actualite` FOREIGN KEY (`id_type_Actualite`) REFERENCES `type_actualite` (`id_type_Actualite`);

--
-- Contraintes pour la table `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `FK_statut_animal` FOREIGN KEY (`id_statut`) REFERENCES `statut` (`id_statut`);

--
-- Contraintes pour la table `associe`
--
ALTER TABLE `associe`
  ADD CONSTRAINT `FK_associe_actualite` FOREIGN KEY (`id_actualite`) REFERENCES `actualite` (`id_actualite`),
  ADD CONSTRAINT `FK_associe_animal` FOREIGN KEY (`id_animal`) REFERENCES `animal` (`id_animal`);

--
-- Contraintes pour la table `contient`
--
ALTER TABLE `contient`
  ADD CONSTRAINT `FK_contient_animal` FOREIGN KEY (`id_animal`) REFERENCES `animal` (`id_animal`),
  ADD CONSTRAINT `FK_contient_image` FOREIGN KEY (`id_image`) REFERENCES `image` (`id_image`);

--
-- Contraintes pour la table `dispose`
--
ALTER TABLE `dispose`
  ADD CONSTRAINT `FK_animal_dispose` FOREIGN KEY (`id_animal`) REFERENCES `animal` (`id_animal`),
  ADD CONSTRAINT `FK_caractere_dispose` FOREIGN KEY (`id_caractere`) REFERENCES `caractere` (`id_caractere`);
COMMIT;
