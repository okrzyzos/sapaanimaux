

START TRANSACTION;



CREATE TABLE `administrateur` (
  `login` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `administrateur`
--

INSERT INTO `administrateur` (`login`, `password`) VALUES
('admin', '$2y$10$OE6tMGyrwan3ZNo9IwIgquV9b7.Md.H1gBCsahNDDSZSDjzbe6tU6');
commit;