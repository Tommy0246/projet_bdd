CREATE TABLE Agence(
   ID_agence INT,
   nom VARCHAR(50) NOT NULL,
   PRIMARY KEY(ID_agence)
);

CREATE TABLE Personne(
   nom VARCHAR(50),
   prenom VARCHAR(50),
   age INT NOT NULL,
   PRIMARY KEY(nom)
);

CREATE TABLE Etat_habitation(
   ID_etat INT,
   etat VARCHAR(50),
   PRIMARY KEY(ID_etat)
);

CREATE TABLE Logement(
   ID_logement INT,
   adresse VARCHAR(50) NOT NULL,
   type_propriete VARCHAR(50) NOT NULL,
   nombre_pieces INT NOT NULL,
   surface_habitable INT NOT NULL,
   objectif_gestion VARCHAR(50) NOT NULL,
   date_dispo DATE NOT NULL,
   ville VARCHAR(50) NOT NULL,
   est_dispo bool NOT NULL,
   prix INT NOT NULL,
   ID_etat INT NOT NULL,
   nom_proprio VARCHAR(50) NOT NULL,
   PRIMARY KEY(ID_logement),
   FOREIGN KEY(ID_etat) REFERENCES etat_habitation(ID_etat),
   FOREIGN KEY(nom_proprio) REFERENCES Personne(nom)
);

CREATE TABLE Garage(
   ID_garage INT,
   nom VARCHAR(50) NOT NULL,
   surface INT NOT NULL,
   ID_logement INT NOT NULL,
   PRIMARY KEY(ID_garage),
   FOREIGN KEY(ID_logement) REFERENCES Logement(ID_logement)
);

CREATE TABLE Transac(
   ID_transaction INT,
   commission INT NOT NULL,
   type_vente VARCHAR(50) NOT NULL,
   ID_agence INT NOT NULL,
   ID_logement INT NOT NULL,
   nom VARCHAR(50) NOT NULL,
   PRIMARY KEY(ID_transaction),
   FOREIGN KEY(ID_agence) REFERENCES Agence(ID_agence),
   FOREIGN KEY(ID_logement) REFERENCES Logement(ID_logement),
   FOREIGN KEY(nom) REFERENCES personne(nom)
);

CREATE TABLE Visite(
   Id_Visite INT,
   date_visite DATE NOT NULL,
   nom_client VARCHAR(50),
   ID_logement INT NOT NULL,
   ID_agence INT NOT NULL,
   PRIMARY KEY(Id_Visite),
   FOREIGN KEY(nom_client) REFERENCES Personne(nom),
   FOREIGN KEY(ID_logement) REFERENCES Logement(ID_logement),
   FOREIGN KEY(ID_agence) REFERENCES Agence(ID_agence)
);