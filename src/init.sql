CREATE TABLE utilisateur
(
     id_utilisateur 	INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     est_surveille 	    varchar(300)
);

CREATE TABLE jour
(
     id_jour 	INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     nom_jour 	varchar(300)
);

CREATE TABLE autorise
(
     id_utilisateur 	INT,
     id_jour 	        INT,
     temps_minutes      INT,
     PRIMARY KEY (id_utilisateur,id_jour),
     CONSTRAINT FK_utilisateurAutorise FOREIGN KEY (id_utilisateur)
     REFERENCES utilisateur(id_utilisateur),
     CONSTRAINT FK_jourAutorise FOREIGN KEY (id_jour)
     REFERENCES jour(id_jour)
);

CREATE TABLE consommation
(
     id_utilisateur_acteur 	INT NOT NULL,
     id_utilisateur_consommateur INT NOT NULL,
     date_consommation 	    DATE,
     montant_minutes        INT,
     PRIMARY KEY (id_utilisateur_acteur,id_utilisateur_consommateur,date_consommation),
     CONSTRAINT FK_consoActeur FOREIGN KEY (id_utilisateur_acteur)
     REFERENCES utilisateur(id_utilisateur),
     CONSTRAINT FK_consoAConso FOREIGN KEY (id_utilisateur_consommateur)
     REFERENCES utilisateur(id_utilisateur)
);