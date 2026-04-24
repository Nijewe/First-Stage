## Exercice 1

Modélisation UML du premier tour de la Coupe du Monde de football.

Le diagramme se trouve dans `Exercice1/MCD.uxf` (à ouvrir avec [UMLetino](https://www.umletino.com/) ou drawio).

## Exercice 2

Système de facturation pour une entreprise de services.

### Utilisation des scripts

**1. Créer le schéma (base de données + tables) :**
```bash
mysql -u root -p < Exercice2/schema.sql
```

**2. Insérer les données de test :**
```bash
mysql -u root -p < Exercice2/dataset.sql
```

**3. Exécuter les requêtes de consultation :**
```bash
mysql -u root -p < Exercice2/requests.sql
```

**4. Générer le rapport PHP :**
```bash
php Exercice2/facturation-report.php
```

### MCD

Le diagramme de classes se trouve dans `Exercice2/MCD.uxf`.

Deux entités : `Client` (id, nom, prénom) et `Facture` (numéro, date, montant, payée). Un client peut avoir plusieurs factures (0..N), une facture appartient à un seul client (1..1).
