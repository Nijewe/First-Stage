INSERT INTO Client(prenom, nom) VALUES
("John", "Doe"),
("Jane", "Doe");


INSERT INTO Facture(numero, date_emission, montant, payee, id_client) VALUES
("F-900-08", "2022-12-12", 120.5, FALSE, 1),
("F-500-02", "2023-01-13", 90, TRUE, 1),
("Z-500-03", "2023-01-01", 1000, FALSE, 2),
("J-400-02", "2023-09-11", 800, TRUE, 2),
("F-434-04", "2022-12-23", 400, FALSE, 2),
("J-333-05", "2023-01-27", 1250, FALSE, 2);
