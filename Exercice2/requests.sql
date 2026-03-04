
-- Affichage des factures impayées
SELECT F.numero AS NUMERO, C.prenom AS PRENOM, C.nom AS NOM, DATE_FORMAT(F.date_emission, '%d/%m/%Y') AS DATE, F.montant AS MONTANT, CASE WHEN payee = 1 THEN 'PAYEE' ELSE 'NON PAYEE' END AS STATUT FROM Client C, Facture F WHERE F.id_client = C.id AND F.payee = 0;

-- Affichage des factures impaées dont le montant est supérieur à 500 EUROS
SELECT F.numero AS NUMERO, C.prenom AS PRENOM, C.nom AS NOM, DATE_FORMAT(F.date_emission, '%d/%m/%Y') AS DATE, F.montant AS MONTANT, CASE WHEN payee = 1 THEN 'PAYEE' ELSE 'NON PAYEE' END AS STATUT FROM Client C, Facture F WHERE F.id_client = C.id AND F.payee = 0 AND F.montant > 500;

-- Les factures de 2022
SELECT F.numero AS NUMERO, C.prenom AS PRENOM, C.nom AS NOM, DATE_FORMAT(F.date_emission, '%d/%m/%Y') AS DATE, F.montant AS MONTANT, CASE WHEN payee = 1 THEN 'PAYEE' ELSE 'NON PAYEE' END AS STATUT FROM Client C, Facture F WHERE F.id_client = C.id AND YEAR(date_emission) = 2022;

-- Les factures impayées de 2023
SELECT F.numero AS NUMERO, C.prenom AS PRENOM, C.nom AS NOM, DATE_FORMAT(F.date_emission, '%d/%m/%Y') AS DATE, F.montant AS MONTANT FROM Client C, Facture F WHERE F.id_client = C.id AND YEAR(date_emission) = 2023 AND payee = 0;