START TRANSACTION;

-- INSERT INTO `statut`(`libelle_statut`, `description_statut`) VALUES ('A l\'adoption','Animal à l \'adoption');
-- INSERT INTO `statut`(`libelle_statut`, `description_statut`) VALUES ('Adopte','Animal adopte');
-- INSERT INTO `caractere`(`libelle_caractere`) VALUES ('doux');
-- INSERT INTO `caractere`(`libelle_caractere`) VALUES ('calme');
-- INSERT INTO `caractere`(`libelle_caractere`) VALUES ('gentil');
INSERT INTO `caractere`(`libelle_caractere`) VALUES ('Adorable'),('Câlin'),('Timide');



INSERT INTO `contient`(`id_image`,`id_animal`)VALUES ('6','6'),
INSERT INTO `contient`(`id_image`,`id_animal`)VALUES ('3','3'),
INSERT INTO `contient`(`id_image`,`id_animal`)VALUES ('5','5'),
INSERT INTO `contient`(`id_image`,`id_animal`)VALUES ('7','7'),
INSERT INTO `contient`(`id_image`,`id_animal`)VALUES ('8','8'),
INSERT INTO `contient`(`id_image`,`id_animal`)VALUES ('10','10'),
INSERT INTO `contient`(`id_image`,`id_animal`)VALUES ('6','6');




COMMIT;