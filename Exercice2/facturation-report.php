<?php

    error_reporting(E_ALL);
    ini_set('display_errors', 1);
    ini_set('display_startup_errors',1);

    try {
        $bdd = new PDO('mysql:host=localhost;dbname=facturation;charset=utf8', 'dev','Qho_8urhk++', [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]);
    } catch (Exception $e) {
        die('Erreur: '. $e->getMessage());
    }

    $requetes = [
        $bdd->query("SELECT DATE_FORMAT(CURDATE(), '%d/%m/%Y')")->fetchColumn(),
        $bdd->query("SELECT COUNT(*) FROM Facture")->fetchColumn(),
        $bdd->query("SELECT COUNT(*) FROM Facture WHERE payee = 0")->fetchColumn(),
        $bdd->query("SELECT COUNT(*) FROM Facture WHERE payee = 0 AND montant > 500")->fetchColumn(),
        $bdd->query("SELECT SUM(montant) FROM Facture WHERE payee = 0")->fetchColumn(),
    ];

    echo 'Facturation - Rapport généré le '.$requetes[0].'<br />';
    echo 'Nombre total de factures : '.$requetes[1].'<br />';
    echo 'Nombre de factures impayées : '.$requetes[2].'<br />';
    echo 'Nombre de factures impayées > 500 : '.$requetes[3].'<br />';
    echo 'Montant total impayé: '.$requetes[4];
    
?>