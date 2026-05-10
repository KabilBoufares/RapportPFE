Chapitre 2 : Analyse et préparation du projet

Introduction

2.1 Identification des acteurs

2.2 Spécification des besoins
    2.2.1 Besoins fonctionnels
    2.2.2 Besoins non fonctionnels

2.3 Diagramme de cas d’utilisation global

2.4 Pilotage du projet avec Scrum
    2.4.1 Équipe et rôles Scrum
    2.4.2 Backlog du produit
    2.4.3 Planification des sprints

2.5 Environnement de travail
    2.5.1 Environnement matériel
    2.5.2 Environnement logiciel

2.6 Technologies utilisées
    2.6.1 Technologies Front-End et Mobile
    2.6.2 Technologies Back-End
    2.6.3 Base de données et services externes

2.7 Architecture de la solution
    2.7.1 Architecture physique
    2.7.2 Architecture logique modulaire
    2.7.3 Flux de communication

Conclusion

## Conclusion

| Élément                                                                           | Type               | Emplacement |
| --------------------------------------------------------------------------------- | ------------------ | ----------- |
| Tableau 2.1 : Liste des acteurs                                                   | Tableau            | 2.1         |
| Tableau 2.2 : Besoins fonctionnels par acteur                                     | Tableau            | 2.2.1       |
| Tableau 2.3 : Besoins non fonctionnels                                            | Tableau            | 2.2.2       |
| Figure 2.1 : Diagramme de cas d’utilisation global                                | UML                | 2.3         |
| Tableau 2.4 : Répartition des rôles Scrum                                         | Tableau            | 2.4.1       |
| Tableau 2.5 : Backlog du produit                                                  | Grand tableau      | 2.4.2       |
| Tableau 2.6 : Planification des sprints                                           | Tableau            | 2.4.3       |
| Tableau 2.7 : Environnement matériel                                              | Tableau            | 2.5.1       |
| Tableau 2.8 : Environnement logiciel                                              | Tableau            | 2.5.2       |
| Tableau 2.9 : Technologies utilisées                                              | Tableau            | 2.6         |
| Figure 2.2 : Architecture physique de FESTY                                       | Diagramme          | 2.7.1       |
| Figure 2.3 : Architecture modulaire globale du backend FESTY avec Spring Modulith | Diagramme Modulith | 2.7.2       |
| Figure 2.4 : Flux de communication général                                        | Diagramme simple   | 2.7.3       |


Oui. Maintenant qu’on a validé le **plan du chapitre 2**, l’étape suivante est de préparer une **fiche de travail section par section** : quoi écrire, quels tableaux créer, quelles figures préparer, quelles informations il me manque, et quelles ressources utiliser.

L’objectif n’est pas encore de rédiger tout le chapitre. L’objectif est de préparer proprement la matière pour éviter une rédaction faible ou désorganisée.

# Chapitre 2 : Analyse et préparation du projet

Le chapitre 2 doit servir à montrer que FESTY n’est pas seulement une idée, mais un projet structuré : acteurs, besoins, backlog, sprints, environnement technique et architecture. Cette logique est cohérente avec les rapports STB, HomeShop, Stadium Reservation, ChargeMe et Manam/Hayafi, qui placent tous dans le chapitre 2 la préparation fonctionnelle et technique du projet. STB met par exemple acteurs, besoins, cas d’utilisation, Scrum, backlog, sprints, environnement, technologies et architecture dans le chapitre 2 . HomeShop suit aussi une logique proche avec architecture, besoins, Product Backlog, Scrum et environnement . Manam/Hayafi est utile pour les détails modernes : services externes, paiement, communication, persistance, architecture générale et déploiement .

---

# 1. Introduction du chapitre 2

## Ce qu’on doit mettre

L’introduction doit annoncer que ce chapitre présente la phase de préparation du projet avant la réalisation. Elle doit dire que nous allons identifier les acteurs, spécifier les besoins, présenter le diagramme de cas d’utilisation global, organiser le projet avec Scrum, puis présenter l’environnement, les technologies et l’architecture.

## Ce qu’il faut éviter

Ne pas répéter la problématique du chapitre 1.
Ne pas réexpliquer FESTY en détail.
Ne pas parler encore des interfaces réalisées.

## Ressource nécessaire

Aucune ressource supplémentaire. On peut rédiger directement.

---

# 2.1 Identification des acteurs

## Ce qu’on doit mettre

Un court paragraphe expliquant que les acteurs représentent les utilisateurs ou systèmes qui interagissent avec FESTY.

Puis un tableau :

```markdown
| Acteur | Description | Principales responsabilités |
|---|---|---|
| Visiteur | Utilisateur non authentifié | Consulter les événements publics, rechercher un événement |
| Utilisateur | Participant authentifié | Acheter des billets, consulter ses tickets, revendre un billet, participer au chat |
| Partenaire | Organisateur d’événements | Créer et gérer les événements, suivre les ventes, consulter les statistiques |
| Administrateur | Responsable de supervision | Gérer les utilisateurs, les partenaires, les événements et les opérations sensibles |
| Agent de scan / Validateur | Personne chargée du contrôle d’accès | Scanner et valider les billets à l’entrée des événements |
```

## Décision à prendre

Il faut décider si **Agent de scan / Validateur** est un acteur séparé ou une fonctionnalité du partenaire.

Mon avis : **mets-le comme acteur séparé** si dans ton application tu as un module `Scan Module`. Ton diagramme Spring Modulith contient déjà `Scan Module`, donc c’est cohérent de le représenter comme acteur ou sous-acteur lié au partenaire.

## Ressource ou donnée manquante

Confirme seulement si le scan est fait par :

```text
Partenaire lui-même
ou
Agent/Staff affecté à l’événement
```

Si tu ne sais pas, on garde “Agent de scan / Validateur”.

---

# 2.2 Spécification des besoins

Cette partie est très importante. Elle transforme ton idée en exigences fonctionnelles et non fonctionnelles.

## 2.2.1 Besoins fonctionnels

## Ce qu’on doit mettre

Les besoins fonctionnels doivent être organisés **par acteur**, pas comme une liste mélangée.

Exemple :

```markdown
| Acteur | Besoin fonctionnel |
|---|---|
| Visiteur | Consulter la liste des événements disponibles |
| Visiteur | Rechercher et filtrer les événements |
| Utilisateur | Créer un compte et s’authentifier |
| Utilisateur | Consulter les détails d’un événement |
| Utilisateur | Acheter un billet en ligne |
| Utilisateur | Consulter ses billets numériques |
| Utilisateur | Revendre un billet de manière sécurisée |
| Utilisateur | Participer au chat d’un événement |
| Utilisateur | Recevoir des notifications |
| Partenaire | Créer un événement |
| Partenaire | Gérer les informations d’un événement |
| Partenaire | Consulter les ventes et les statistiques |
| Partenaire | Gérer les billets liés à ses événements |
| Agent de scan | Scanner et valider un billet |
| Administrateur | Gérer les utilisateurs |
| Administrateur | Gérer les partenaires |
| Administrateur | Superviser les événements |
| Administrateur | Suivre les transactions et les signalements |
```

## Ce qu’il faut éviter

Ne mets pas trop de détails techniques ici. Par exemple :

Mauvais :

```text
L’utilisateur peut appeler l’endpoint POST /api/tickets.
```

Bon :

```text
L’utilisateur peut acheter un billet en ligne.
```

## Ressource ou donnée manquante

Il faut me confirmer les fonctionnalités réellement réalisées, notamment :

```text
- revente sécurisée : réalisée ou prévue ?
- chat événementiel : réalisé ?
- chat P2P pour revente : réalisé ?
- notifications Firebase : réalisées ?
- paiement Stripe : réalisé ?
- scan QR code : réalisé ?
- dashboard partenaire : réalisé ?
- dashboard admin : réalisé ?
- recommandations / Recommendation Module : réalisé ?
- review / avis / star : réalisé ?
```

Comme tu as dit que les fonctionnalités réellement réalisées sont celles que tu veux mentionner, il faut éviter de mettre une fonctionnalité non développée comme si elle était terminée.

---

## 2.2.2 Besoins non fonctionnels

## Ce qu’on doit mettre

Un tableau simple et académique :

```markdown
| Besoin non fonctionnel | Description |
|---|---|
| Sécurité | Protéger les données des utilisateurs, les transactions et l’accès aux fonctionnalités sensibles |
| Performance | Assurer un temps de réponse acceptable lors de la consultation des événements et de l’achat des billets |
| Disponibilité | Garantir l’accès à l’application et aux services principaux |
| Ergonomie | Proposer une interface simple, claire et adaptée aux utilisateurs mobiles |
| Compatibilité | Assurer le fonctionnement de l’application sur plusieurs plateformes mobiles |
| Maintenabilité | Faciliter l’évolution du backend grâce à une architecture modulaire |
| Scalabilité | Permettre l’évolution de la plateforme avec l’augmentation du nombre d’utilisateurs et d’événements |
| Traçabilité | Suivre les opérations sensibles telles que les achats, validations, remboursements ou reventes |
| Confidentialité | Protéger les informations personnelles et les données de paiement |
```

## Point important

Ici, on peut valoriser **Spring Modulith** dans “Maintenabilité” :

```text
L’organisation modulaire du backend facilite la séparation des responsabilités et l’évolution des modules métier.
```

---

# 2.3 Diagramme de cas d’utilisation global

## Ce qu’on doit mettre

Un paragraphe d’introduction + une figure UML.

La figure doit montrer les acteurs :

```text
Visiteur
Utilisateur
Partenaire
Agent de scan / Validateur
Administrateur
```

Et les cas d’utilisation principaux :

```text
Consulter les événements
Rechercher un événement
S’inscrire
S’authentifier
Consulter détail événement
Acheter billet
Payer billet
Consulter mes billets
Revendre billet
Participer au chat
Recevoir notification
Créer événement
Gérer événement
Consulter statistiques
Scanner billet
Gérer utilisateurs
Gérer partenaires
Gérer événements
Superviser transactions
```

## Figure à préparer

```markdown
![Diagramme de cas d’utilisation global](images/use_case_global.png)

Figure 2.1 : Diagramme de cas d’utilisation global de FESTY
```

## Ressource ou donnée manquante

Il faut que tu me dises si tu veux générer ce diagramme avec :

```text
PlantUML
Draw.io
StarUML
Mermaid
```

Je recommande **PlantUML**, parce que tu utilises déjà des diagrammes générés depuis Spring Modulith.

---

# 2.4 Pilotage du projet avec Scrum

## 2.4.1 Équipe et rôles Scrum

## Ce qu’on doit mettre

Un paragraphe expliquant que Scrum a été adapté à un travail individuel.

Puis tableau :

```markdown
| Rôle Scrum | Attribution dans le projet FESTY | Responsabilité |
|---|---|---|
| Product Owner | Client FESTY / représentant métier | Définir les besoins, valider les fonctionnalités, prioriser le produit |
| Scrum Master | Encadrant / suivi méthodologique | Accompagner l’organisation du projet et faciliter le suivi |
| Development Team | Stagiaire développeur | Concevoir, développer, tester et intégrer les fonctionnalités |
```

## Point important

Ne pas prétendre qu’il y avait une vraie Scrum Team complète si le travail était individuel. Il faut être honnête : **Scrum adapté au contexte du stage**.

---

## 2.4.2 Backlog du produit

## Ce qu’on doit mettre

Un grand tableau avec les user stories.

Colonnes recommandées :

```markdown
| ID | Acteur | User Story | Priorité | Sprint |
|---|---|---|---|---|
```

Exemple :

```markdown
| US-01 | Visiteur | En tant que visiteur, je veux consulter les événements disponibles afin de découvrir les activités proposées. | Haute | Sprint 1 |
| US-02 | Utilisateur | En tant qu’utilisateur, je veux créer un compte afin d’accéder aux fonctionnalités personnalisées. | Haute | Sprint 1 |
| US-03 | Utilisateur | En tant qu’utilisateur, je veux acheter un billet afin de participer à un événement. | Haute | Sprint 3 |
```

## Ressource ou donnée manquante

C’est ici que j’ai besoin de ta confirmation sur les **sprints réels ou logiques**.

Je propose 5 sprints :

```markdown
| Sprint | Objectif |
|---|---|
| Sprint 1 | Authentification, rôles et profils |
| Sprint 2 | Gestion et consultation des événements |
| Sprint 3 | Billetterie, paiement et validation QR code |
| Sprint 4 | Revente, communication, notifications et avis |
| Sprint 5 | Dashboard partenaire, administration, statistiques et finalisation |
```

Mais il faut vérifier si ça correspond à ton vrai travail. Si ton projet réel a été développé autrement, on peut garder une planification logique plutôt qu’historique, mais il ne faut pas créer une incohérence avec les chapitres suivants.

---

## 2.4.3 Planification des sprints

## Ce qu’on doit mettre

Un tableau plus synthétique que le backlog :

```markdown
| Sprint | Objectif principal | Fonctionnalités principales |
|---|---|---|
| Sprint 1 | Authentification et profils | inscription, connexion, rôles, gestion du profil |
| Sprint 2 | Gestion des événements | création, consultation, recherche, détails |
| Sprint 3 | Billetterie et paiement | achat de billet, Stripe, QR code, validation |
| Sprint 4 | Interaction et revente | revente sécurisée, chat, notifications, avis |
| Sprint 5 | Administration et statistiques | dashboard partenaire, dashboard admin, analytics |
```

## Gantt ou pas ?

Je ne recommande pas le Gantt sauf si ton encadrant le demande. STB l’utilise, mais pour FESTY la planification par sprints suffit. Le Gantt peut devenir artificiel si tu n’as pas des dates réelles.

---

# 2.5 Environnement de travail

## 2.5.1 Environnement matériel

## Ce qu’on doit mettre

Un tableau simple.

```markdown
| Matériel | Caractéristiques |
|---|---|
| Ordinateur portable | Processeur, RAM, stockage, système d’exploitation |
| Smartphone de test | Modèle, système, version Android/iOS |
```

## Donnée manquante

Il me faut tes vraies caractéristiques :

```text
- PC : processeur, RAM, stockage, OS
- téléphone de test : modèle, Android/iOS, version
```

Si tu ne veux pas détailler, on peut mettre une version générique, mais c’est moins professionnel.

---

## 2.5.2 Environnement logiciel

## Ce qu’on doit mettre

Un tableau :

```markdown
| Outil | Utilisation |
|---|---|
| Visual Studio Code | Développement Flutter / React |
| IntelliJ IDEA | Développement backend Java / Spring |
| Android Studio | Émulation et test mobile |
| PostgreSQL / pgAdmin | Gestion de la base de données |
| Postman | Test des API REST |
| Git / GitHub | Gestion de version |
| Figma | Conception des maquettes |
| PlantUML | Génération des diagrammes UML |
| Docker | Conteneurisation, si utilisé |
```

## Donnée manquante

Confirme si tu as utilisé :

```text
GitHub ou GitLab ?
Docker ou non ?
IntelliJ ou Eclipse ?
pgAdmin ou Supabase Studio ?
Android Studio emulator ou téléphone réel ?
```

---

# 2.6 Technologies utilisées

Cette partie doit être claire, mais pas trop longue. Manam/Hayafi détaille beaucoup les technologies et services : frontend, backend, cloud, paiement, communication, localisation, persistance . Pour FESTY, on doit faire pareil mais plus compact.

## 2.6.1 Technologies Front-End et Mobile

## Ce qu’on doit mettre

```markdown
| Technologie | Rôle dans FESTY |
|---|---|
| Flutter | Développement de l’application mobile multiplateforme |
| Dart | Langage utilisé avec Flutter |
| React | Développement de l’interface web d’administration / partenaire |
| Figma | Conception des maquettes UI/UX |
```

## Donnée manquante

Confirme si l’interface React est :

```text
admin seulement
partenaire seulement
admin + partenaire
```

---

## 2.6.2 Technologies Back-End

## Ce qu’on doit mettre

Cette partie est critique pour ton rapport.

```markdown
| Technologie | Rôle dans FESTY |
|---|---|
| Java | Langage principal du backend |
| Spring Boot | Création des API REST et configuration du backend |
| Spring Modulith | Organisation modulaire du backend en modules métier |
| Spring Security | Sécurisation des accès et authentification |
| JWT / OAuth2 | Gestion des tokens et de l’autorisation |
```

## Point obligatoire

Il faut écrire clairement :

```text
Le backend repose sur une architecture modulaire basée sur Spring Modulith, et non sur une architecture microservices.
```

C’est important, parce que ton diagramme Spring Modulith montre des modules internes, mais ton application reste déployée comme une unité cohérente.

---

## 2.6.3 Base de données et services externes

## Ce qu’on doit mettre

```markdown
| Technologie / Service | Rôle dans FESTY |
|---|---|
| PostgreSQL | Base de données relationnelle principale |
| PostGIS | Gestion des données géographiques, si utilisé |
| Supabase | Services backend complémentaires / base / auth / storage selon ton usage réel |
| Stripe | Paiement en ligne |
| Stripe Connect | Gestion des paiements liés aux partenaires, si utilisé |
| Firebase FCM | Notifications push |
| Bunny.net | Stockage ou diffusion des médias via CDN |
| Brevo | Envoi d’emails, si utilisé |
| Twilio | SMS / OTP, si utilisé |
```

## Donnée manquante

Il faut préciser le rôle exact de chaque service :

```text
Supabase : base de données ? auth ? storage ? temps réel ?
Bunny.net : stockage images seulement ? CDN vidéo/images ?
Brevo : email transactionnel ?
Twilio : OTP SMS ?
Firebase : notifications seulement ou aussi auth ?
Stripe Connect : utilisé ou seulement Stripe Checkout/PaymentIntent ?
```

Cette précision est importante pour éviter que le jury pense que tu listes des technologies juste pour impressionner.

---

# 2.7 Architecture de la solution

Cette partie doit être forte, car elle distingue FESTY des projets simples.

## 2.7.1 Architecture physique

## Ce qu’on doit mettre

Un diagramme global avec :

```text
Utilisateur mobile
Application mobile Flutter
Interface web React
Backend Spring Boot / Spring Modulith
Base PostgreSQL / Supabase
Stripe
Firebase
Bunny.net
Brevo / Twilio
```

## Figure à préparer

```markdown
![Architecture physique de FESTY](images/architecture_physique_festy.png)

Figure 2.2 : Architecture physique de la solution FESTY
```

## Ce que le texte doit expliquer

Le texte doit expliquer où sont situés les composants et comment ils communiquent :

```text
L’application mobile et l’interface web communiquent avec le backend via des API REST. Le backend traite les règles métier, interagit avec la base de données et fait appel aux services externes pour les paiements, notifications et médias.
```

---

## 2.7.2 Architecture logique modulaire

## Ce qu’on doit mettre

C’est ici qu’on met ton diagramme Spring Modulith global.

Figure :

```markdown
![Architecture modulaire globale du backend FESTY](images/modulith_global_architecture.png)

Figure 2.3 : Architecture modulaire globale du backend FESTY avec Spring Modulith
```

Texte à écrire :

```markdown
Le backend de FESTY repose sur une architecture modulaire basée sur Spring Modulith. Cette approche permet de structurer l’application en modules métier cohérents, tout en conservant un déploiement unifié. Chaque module regroupe un ensemble de responsabilités fonctionnelles et interagit avec les autres modules à travers des dépendances contrôlées ou des événements applicatifs.
```

Modules à mentionner :

```text
User Module
Auth Module
Event Module
Ticketing Module
Payment Module
Resale Module
Notification Module
Partner Module
Admin Module
Scan Module
Review Module
Star Module
Recommendation Module
```

## Point critique

Ton diagramme est grand et chargé. En LaTeX, il faudra probablement le mettre :

```text
en pleine largeur
ou
en page paysage
```

Ne mets pas les 13 diagrammes détaillés dans le chapitre 2. Un diagramme global suffit ici. Les autres peuvent aller dans les chapitres de sprint ou en annexe.

---

## 2.7.3 Flux de communication

## Ce qu’on doit mettre

Un petit texte ou un diagramme simple qui explique le flux :

```text
1. L’utilisateur interagit avec l’application mobile Flutter.
2. L’application envoie une requête HTTP au backend.
3. Le backend vérifie l’authentification et applique les règles métier.
4. Le backend interroge PostgreSQL/Supabase.
5. Si nécessaire, il appelle Stripe, Firebase, Bunny.net, Brevo ou Twilio.
6. Le résultat est retourné à l’application.
```

Figure facultative :

```markdown
![Flux de communication général](images/flux_communication_festy.png)

Figure 2.4 : Flux de communication général de FESTY
```

## Est-ce nécessaire ?

Oui, mais le diagramme peut être simple. Il aide le jury à comprendre l’ensemble sans lire toute l’architecture.

---

# 3. Ce qu’il faut préparer avant rédaction complète

Voici la checklist.

```markdown
## Checklist avant rédaction du chapitre 2

### Acteurs
- [ ] Confirmer les acteurs finaux : Visiteur, Utilisateur, Partenaire, Administrateur, Agent de scan
- [ ] Confirmer si l’agent de scan est séparé du partenaire

### Fonctionnalités réalisées
- [ ] Authentification / profils
- [ ] Gestion des événements
- [ ] Achat de billets
- [ ] Paiement Stripe
- [ ] QR code / scan
- [ ] Revente sécurisée
- [ ] Chat événementiel
- [ ] Chat P2P
- [ ] Notifications
- [ ] Avis / notes
- [ ] Recommandation
- [ ] Dashboard partenaire
- [ ] Dashboard administrateur
- [ ] Statistiques

### Sprints
- [ ] Valider le nombre de sprints
- [ ] Valider l’objectif de chaque sprint
- [ ] Associer les user stories à chaque sprint

### Environnement
- [ ] Caractéristiques du PC
- [ ] Smartphone de test
- [ ] IDE utilisés
- [ ] GitHub/GitLab
- [ ] Postman
- [ ] Figma
- [ ] PlantUML
- [ ] Docker si utilisé

### Technologies et services
- [ ] Rôle exact de Supabase
- [ ] Rôle exact de Bunny.net
- [ ] Rôle exact de Firebase
- [ ] Rôle exact de Stripe / Stripe Connect
- [ ] Rôle exact de Brevo
- [ ] Rôle exact de Twilio
- [ ] Confirmer PostgreSQL/PostGIS

### Figures
- [ ] use_case_global.png
- [ ] architecture_physique_festy.png
- [ ] modulith_global_architecture.png
- [ ] flux_communication_festy.png
```

---

# 4. Ordre de travail recommandé

Je propose de travailler dans cet ordre :

```markdown
1. Valider les acteurs
2. Valider les fonctionnalités réellement réalisées
3. Construire le Product Backlog
4. Valider la planification des sprints
5. Préparer les figures nécessaires
6. Rédiger Introduction + 2.1
7. Rédiger 2.2 + 2.3
8. Rédiger 2.4
9. Rédiger 2.5 + 2.6
10. Rédiger 2.7 + Conclusion
11. Review complète du chapitre 2
```

La prochaine étape concrète : **valider les acteurs et les fonctionnalités réellement réalisées**. C’est la base du chapitre 2.


les acteur 

Visiteur
Utilisateur
Partenaire
Agent de scan
Administrateur


lec cas d'utlisation : 

Consulter les événements
Rechercher un événement
Consulter le détail d’un événement
Consulter les artistes/stars
S’inscrire+
S’authentifier
Gérer le profil
Acheter un billet
Effectuer un paiement
Consulter mes billets
Revendre un billet
Acheter un billet en revente
Participer au chat événementiel
Échanger dans le cadre d’une revente
Recevoir des notifications
Consulter les recommandations
Publier un avis
Créer un événement
Gérer mes événements
Gérer les types de billets
Consulter les statistiques
Gérer les sessions de scan
Affecter un agent de scan
Scanner un billet
Valider un billet
Gérer les utilisateurs
Valider les partenaires
Modérer les événements, avis et stars
Superviser les paiements et remboursements
Consulter le dashboard administrateur