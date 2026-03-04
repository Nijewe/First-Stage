-- Création de la Base de Données
DROP DATABASE IF EXISTS facturation;
CREATE DATABASE facturation CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE facturation;

-- Création de Tables
DROP TABLE IF EXISTS Client;
CREATE TABLE Client(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50),
    prenom VARCHAR(50)
)ENGINE = InnoDB;

DROP TABLE IF EXISTS Facture;
CREATE TABLE Facture(
    numero CHAR(8) PRIMARY KEY,
    date_emission DATE,
    montant DECIMAL(10, 2) UNSIGNED,
    payee BOOLEAN,
    id_client INT,
    CONSTRAINT fk_client FOREIGN KEY (id_client) REFERENCES Client(id)
)ENGINE = InnoDB;


-- Assignation des Droits
CREATE USER IF NOT EXISTS 'dev'@'localhost' IDENTIFIED BY 'Qho_8urhk++';
GRANT ALL ON facturation.* TO 'dev'@'localhost';
FLUSH PRIVILEGES;
