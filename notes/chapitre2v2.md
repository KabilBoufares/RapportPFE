# Chapitre 2 : Analyse et préparation du projet

## Introduction

Ce chapitre présente la phase d’analyse et de préparation du projet FESTY. Il a pour objectif de définir les besoins de la plateforme, d’identifier les acteurs qui interagissent avec le système et de préparer les éléments nécessaires à la conception et au développement.

Nous commençons par la spécification des besoins, à travers l’identification des acteurs principaux ainsi que la présentation des besoins fonctionnels et non fonctionnels. Ensuite, nous présentons le pilotage du projet avec Scrum, en précisant l’équipe Scrum, le backlog produit et la planification des sprints.

Ce chapitre présente également les diagrammes globaux de la solution, notamment le diagramme de cas d’utilisation global et le diagramme de classes global. Enfin, nous décrivons l’environnement de travail, les technologies utilisées ainsi que l’architecture générale de la plateforme.

## 2.1 Spécification des besoins

La spécification des besoins constitue une étape importante dans la préparation du projet. Elle permet de définir les fonctionnalités attendues de la plateforme ainsi que les contraintes que le système doit respecter.

Dans le cadre du projet FESTY, les besoins sont organisés autour des différents acteurs qui interagissent avec la plateforme. Cette section présente les acteurs principaux, les besoins fonctionnels et les besoins non fonctionnels du système.

### 2.1.1 Identification des acteurs

Un acteur représente une entité externe qui interagit avec le système afin d’atteindre un objectif précis. Dans le cadre de FESTY, les acteurs correspondent aux différents profils qui utilisent la plateforme selon des rôles et des droits distincts.

Nous distinguons cinq acteurs principaux : le Visiteur, l’Utilisateur, le Partenaire, l’Agent de scan et l’Administrateur.

| Acteur | Description |
|---|---|
| Visiteur | Représente une personne non authentifiée qui accède aux fonctionnalités publiques de la plateforme. Il peut explorer les événements et les artistes, consulter les informations disponibles et s’inscrire à la plateforme. |
| Utilisateur | Représente une personne authentifiée disposant d’un compte sur la plateforme. Il peut gérer son profil et ses préférences, gérer ses billets, interagir autour des événements et soumettre une demande pour devenir partenaire organisateur. |
| Partenaire | Représente un organisateur d’événements. Il dispose d’un espace dédié lui permettant de gérer son profil partenaire, ses événements, sa billetterie, ses sessions de scan, son activité et sa monétisation. |
| Agent de scan | Représente un acteur chargé de contrôler l’accès à un événement. Il peut vérifier les billets des participants à travers le scan et valider leur entrée. |
| Administrateur | Représente le responsable de la supervision de la plateforme. Il assure la gestion des utilisateurs et des partenaires, le contrôle de l’offre événementielle, la gestion du référentiel, le traitement des opérations financières ainsi que la supervision des risques et des audits. |

**Tableau 2.1 : Identification des acteurs principaux de FESTY**

Dans le diagramme de cas d’utilisation global, nous représentons uniquement les acteurs métier principaux de la plateforme. Les services techniques externes, tels que Stripe, Twilio, Firebase Cloud Messaging ou Brevo, ne sont pas considérés comme des acteurs principaux dans ce diagramme. Ils seront présentés dans les diagrammes détaillés des sprints concernés ou dans la partie architecture de la solution. Supabase est mentionné uniquement comme environnement d’hébergement de la base PostgreSQL.

### 2.1.2 Besoins fonctionnels

Les besoins fonctionnels décrivent les services que la plateforme doit offrir à ses différents acteurs. Ils permettent de préciser les principales fonctionnalités attendues du système.

Le tableau suivant présente les besoins fonctionnels principaux de FESTY selon chaque acteur.

| Acteur | Besoins fonctionnels principaux |
|---|---|
| Visiteur | Explorer les événements et les artistes, consulter les informations publiques, s’inscrire à la plateforme et s’authentifier. |
| Utilisateur | Gérer son profil et ses préférences, interagir autour des événements, gérer sa billetterie et soumettre une demande pour devenir partenaire organisateur. |
| Partenaire | Gérer son profil partenaire, gérer l’exploitation de ses événements, suivre son activité, consulter sa monétisation et organiser le contrôle d’accès aux événements. |
| Agent de scan | Contrôler l’accès à un événement en vérifiant les billets des participants et en validant leur entrée. |
| Administrateur | Gérer les utilisateurs et les partenaires, contrôler l’offre événementielle, gérer le référentiel de la plateforme, traiter les opérations financières et superviser les risques et les audits. |

**Tableau 2.2 : Besoins fonctionnels principaux de FESTY**

Ces besoins sont présentés à un niveau global afin de donner une vue synthétique du périmètre fonctionnel de la plateforme. Les détails de chaque fonctionnalité seront précisés dans les chapitres de sprint à travers les diagrammes de cas d’utilisation détaillés, les descriptions textuelles et les éléments de conception.

### 2.1.3 Besoins non fonctionnels

Les besoins non fonctionnels décrivent les contraintes de qualité que doit respecter la plateforme. Ils ne représentent pas directement des fonctionnalités visibles par l’utilisateur, mais ils sont essentiels pour garantir la fiabilité, la sécurité et la bonne utilisation du système.

| Besoin non fonctionnel | Description |
|---|---|
| Sécurité | La plateforme doit protéger les comptes utilisateurs, les données personnelles, les billets numériques, les paiements et les accès aux fonctionnalités sensibles. |
| Performance | Le système doit assurer un temps de réponse acceptable lors de la consultation des événements, de l’achat des billets, du paiement et du scan à l’entrée des événements. |
| Disponibilité | Les fonctionnalités principales doivent rester accessibles afin de garantir une utilisation continue par les visiteurs, utilisateurs, partenaires et agents de scan. |
| Ergonomie | L’application doit proposer une interface claire, intuitive et adaptée à une utilisation mobile. |
| Compatibilité | La solution doit être compatible avec les plateformes mobiles ciblées et permettre une utilisation fluide sur différents appareils. |
| Maintenabilité | L’architecture doit faciliter l’évolution de la plateforme, l’ajout de nouvelles fonctionnalités et la correction des anomalies. |
| Scalabilité | Le système doit pouvoir supporter l’augmentation du nombre d’utilisateurs, d’événements, de billets vendus et d’opérations de scan. |
| Traçabilité | Les opérations sensibles, telles que les paiements, les validations, les scans et les actions administratives, doivent être suivies et historisées. |
| Confidentialité | Les informations personnelles des utilisateurs, les données des partenaires et les informations liées aux transactions doivent être protégées contre tout accès non autorisé. |

**Tableau 2.3 : Besoins non fonctionnels de FESTY**

Ces contraintes permettent d’orienter les choix techniques et architecturaux de la solution. Elles seront prises en compte lors de la conception, du développement et de la validation des différents modules de la plateforme.

## 2.2 Pilotage du projet avec Scrum

Le pilotage du projet avec Scrum permet d’organiser le développement de FESTY de manière itérative et progressive. Après avoir présenté le choix de Scrum dans le premier chapitre, cette section décrit son application concrète dans le cadre du projet.

Dans notre cas, Scrum est utilisé afin de répartir les fonctionnalités de la plateforme en éléments de travail organisés dans un backlog produit. Ce backlog permet de regrouper les besoins du projet, de définir les priorités et de préparer la planification des sprints.

### 2.2.1 Équipe et rôles Scrum

Dans le cadre du projet FESTY, l’organisation Scrum a été adaptée au contexte d’un projet de fin d’études. Les rôles ont été définis selon les responsabilités liées au suivi, à l’encadrement et à la réalisation du projet.

| Rôle dans le projet | Responsable | Missions |
|---|---|---|
| Product Owner | Encadrant professionnel / représentant du besoin métier | Définir les besoins fonctionnels, valider les priorités et orienter les choix liés aux fonctionnalités de la plateforme. |
| Scrum Master | Étudiant réalisateur du projet | Organiser le travail, suivre l’avancement, identifier les difficultés et assurer l’application de la démarche Scrum. |
| Équipe de développement | Étudiant réalisateur du projet | Concevoir, développer, tester et intégrer les différentes fonctionnalités de la plateforme FESTY. |
| Encadrant académique | Encadrant universitaire | Assurer le suivi académique, valider la cohérence méthodologique du rapport et orienter la structuration du travail. |

**Tableau 2.4 : Équipe et rôles du projet FESTY**

Cette répartition permet d’adapter Scrum au contexte réel du projet. L’étudiant assure à la fois le rôle de Scrum Master et de membre de l’équipe de développement, tandis que les encadrants assurent le suivi, l’orientation et la validation du travail réalisé.

### 2.2.2 Backlog du produit

Le backlog du produit regroupe l’ensemble des fonctionnalités à réaliser dans le cadre du projet FESTY. Il permet de structurer les besoins sous forme de modules et de user stories, tout en définissant leur niveau de priorité.

Afin de prioriser les fonctionnalités, nous avons adopté la méthode MoSCoW. Cette méthode permet de classer les besoins selon leur importance dans la version actuelle du produit.

| Priorité | Signification |
|---|---|
| **M — Must Have** | Fonctionnalité indispensable au bon fonctionnement de la plateforme. |
| **S — Should Have** | Fonctionnalité importante, mais pouvant être livrée après les fonctionnalités indispensables. |
| **C — Could Have** | Fonctionnalité utile ou complémentaire, mais non prioritaire dans la version actuelle. |
| **W — Won’t Have** | Fonctionnalité exclue du périmètre actuel, pouvant être envisagée dans une version future. |

**Tableau 2.5 : Signification des priorités MoSCoW**

Le tableau suivant présente le Product Backlog priorisé de la plateforme FESTY.

| ID | Module | ID Story | User Story | Priorité |
|---|---|---|---|---|
| 1 | Authentification | 1.1 | En tant que visiteur, je veux créer un compte afin d’accéder à la plateforme. | M |
| 1 | Authentification | 1.2 | En tant qu’utilisateur, je veux m’authentifier afin d’accéder à mon espace personnel. | M |
| 1 | Authentification | 1.3 | En tant qu’utilisateur, je veux réinitialiser mon mot de passe afin de récupérer l’accès à mon compte. | S |
| 1 | Authentification back-office | 1.4 | En tant qu’administrateur, je veux m’authentifier au back-office afin d’accéder aux fonctionnalités d’administration de la plateforme. | M |
| 2 | Profil utilisateur | 2.1 | En tant qu’utilisateur, je veux consulter mon profil afin de vérifier mes informations personnelles. | M |
| 2 | Profil utilisateur | 2.2 | En tant qu’utilisateur, je veux modifier mes informations personnelles afin de maintenir mon profil à jour. | M |
| 2 | Préférences utilisateur | 2.3 | En tant qu’utilisateur, je veux gérer mes préférences afin de personnaliser mon expérience. | S |
| 3 | Exploration | 3.1 | En tant que visiteur ou utilisateur, je veux explorer les événements afin de découvrir les offres disponibles. | M |
| 3 | Exploration | 3.2 | En tant que visiteur ou utilisateur, je veux consulter les artistes associés aux événements afin d’obtenir plus d’informations. | S |
| 4 | Interactions événementielles | 4.1 | En tant qu’utilisateur, je veux interagir autour des événements afin d’enrichir mon expérience. | C |
| 5 | Billetterie | 5.1 | En tant qu’utilisateur, je veux réserver un billet afin de participer à un événement. | M |
| 5 | Billetterie | 5.2 | En tant qu’utilisateur, je veux consulter mes billets afin de suivre mes réservations. | M |
| 5 | Billetterie | 5.3 | En tant qu’utilisateur, je veux gérer mes billets afin de les utiliser ou les suivre. | M |
| 6 | Espace partenaire | 6.1 | En tant qu’utilisateur, je veux soumettre une demande pour devenir partenaire organisateur. | M |
| 6 | Espace partenaire | 6.2 | En tant que partenaire, je veux gérer mon profil partenaire afin de présenter mes informations professionnelles. | S |
| 7 | Gestion des événements partenaire | 7.1 | En tant que partenaire, je veux créer un événement afin de le publier sur la plateforme. | M |
| 7 | Gestion des événements partenaire | 7.2 | En tant que partenaire, je veux modifier mes événements afin de maintenir leurs informations à jour. | M |
| 7 | Gestion des événements partenaire | 7.3 | En tant que partenaire, je veux suivre l’exploitation de mes événements afin de gérer leur déroulement. | S |
| 8 | Suivi partenaire | 8.1 | En tant que partenaire, je veux suivre mon activité afin d’évaluer la performance de mes événements. | S |
| 8 | Monétisation | 8.2 | En tant que partenaire, je veux consulter ma monétisation afin de suivre mes revenus. | S |
| 9 | Contrôle d’accès | 9.1 | En tant qu’agent de scan, je veux vérifier les billets afin de contrôler l’accès à un événement. | M |
| 9 | Contrôle d’accès | 9.2 | En tant qu’agent de scan, je veux valider l’entrée d’un participant afin de confirmer son accès à l’événement. | M |
| 10 | Administration | 10.1 | En tant qu’administrateur, je veux gérer les utilisateurs et les partenaires afin d’assurer la supervision de la plateforme. | M |
| 10 | Administration | 10.2 | En tant qu’administrateur, je veux contrôler l’offre événementielle afin de garantir la conformité du contenu. | M |
| 10 | Administration | 10.3 | En tant qu’administrateur, je veux gérer le référentiel de la plateforme afin d’assurer la cohérence des données. | S |
| 10 | Administration | 10.4 | En tant qu’administrateur, je veux traiter les opérations financières afin de contrôler les paiements et remboursements. | S |
| 10 | Administration | 10.5 | En tant qu’administrateur, je veux superviser les risques et les audits afin de sécuriser les opérations sensibles. | C |

**Tableau 2.6 : Backlog du produit priorisé selon la méthode MoSCoW**

Les éléments du Product Backlog représentent les fonctionnalités principales de FESTY. Ils seront ensuite utilisés pour organiser la planification des sprints selon les priorités, les dépendances fonctionnelles et l’ordre de réalisation retenu. Ils seront également représentés de manière synthétique dans le diagramme de cas d’utilisation global.

Dans le cadre de cette version, aucune fonctionnalité n’a été classée comme **Won’t Have**, car le backlog présenté regroupe uniquement les fonctionnalités retenues dans le périmètre du projet.

### 2.2.3 Planification des sprints

La planification des sprints permet d’organiser le développement de FESTY en plusieurs itérations cohérentes. Chaque sprint regroupe un ensemble de fonctionnalités liées entre elles, en tenant compte des priorités définies dans le Product Backlog et des dépendances fonctionnelles entre les modules.

Dans notre cas, le projet a été réparti en six sprints. Cette répartition permet de commencer par les fonctionnalités de base, comme l’authentification et la gestion des comptes, puis de poursuivre progressivement avec les modules liés aux partenaires, aux événements, à la billetterie, au contrôle d’accès et à l’administration avancée.

| Sprint | Objectif | Acteurs principaux | Fonctionnalités principales | Dépendances |
|---|---|---|---|---|
| Sprint 1 | Mettre en place les accès de base à la plateforme. | Visiteur, Utilisateur, Administrateur | Inscription, vérification OTP, authentification à la plateforme, réinitialisation du mot de passe, authentification au back-office et gestion du profil utilisateur. | Sprint initial nécessaire pour accéder aux autres modules. |
| Sprint 2 | Gérer les partenaires et les événements. | Utilisateur, Partenaire, Administrateur | Demande pour devenir partenaire, validation des partenaires, gestion du profil partenaire, création et gestion des événements, contrôle de l’offre événementielle. | Dépend de l’authentification utilisateur et de l’accès administrateur au back-office. |
| Sprint 3 | Permettre l’exploration, la personnalisation et les interactions autour des événements. | Visiteur, Utilisateur, Administrateur | Exploration des événements et des artistes, gestion des préférences, favoris, interactions et modération des contenus publics. | Dépend de l’existence des événements créés et validés. |
| Sprint 4 | Mettre en place la billetterie et les opérations financières liées. | Utilisateur, Administrateur | Réservation des billets, consultation des billets, gestion des billets, paiement, demande de remboursement et traitement des opérations financières. | Dépend des événements publiés et consultables. |
| Sprint 5 | Assurer le contrôle d’accès aux événements et le suivi partenaire. | Partenaire, Agent de scan | Création des sessions de scan, affectation des agents, vérification des billets, validation des entrées, suivi de l’activité et de la monétisation. | Dépend de la génération des billets et des ventes réalisées. |
| Sprint 6 | Finaliser l’administration avancée et la supervision globale. | Administrateur | Gestion du référentiel de la plateforme, supervision des risques, audits, tableaux de bord administratifs et suivi global des opérations sensibles. | Dépend des données produites par les modules précédents. |

**Tableau 2.7 : Planification des sprints du projet FESTY**

Cette planification donne une vue globale de l’organisation du développement. Les détails de chaque sprint, notamment le Sprint Backlog, les diagrammes de cas d’utilisation détaillés, les descriptions textuelles, les diagrammes de séquence et les éléments de réalisation, seront présentés dans les chapitres consacrés aux sprints.
## 2.3 Diagramme de cas d’utilisation global

Le diagramme de cas d’utilisation global permet de présenter une vue générale des principales fonctionnalités offertes par la plateforme FESTY. Il met en évidence les interactions entre les acteurs principaux et le système, sans détailler les scénarios internes propres à chaque fonctionnalité.

Dans ce diagramme, nous distinguons cinq acteurs principaux : le Visiteur, l’Utilisateur, le Partenaire, l’Agent de scan et l’Administrateur. Chaque acteur accède à un ensemble de fonctionnalités selon son rôle dans la plateforme.

![Diagramme de cas d’utilisation global](images/use_case_global_festy.png)

**Figure 2.1 : Diagramme de cas d’utilisation global de FESTY**

Comme le montre la figure 2.1, le Visiteur peut explorer les événements, s’inscrire à la plateforme et accéder à l’interface d’authentification. Après authentification, l’Utilisateur peut gérer son profil, ses préférences, sa billetterie et ses interactions autour des événements. Le Partenaire dispose d’un espace dédié à la gestion de ses événements, au suivi de son activité et à sa monétisation. L’Agent de scan assure le contrôle d’accès aux événements, tandis que l’Administrateur supervise les utilisateurs, les partenaires, l’offre événementielle, les opérations financières et les audits.

## 2.4 Diagramme de classes global

Le diagramme de classes global permet de représenter la structure générale de la plateforme FESTY. Il met en évidence les principales entités du système, leurs attributs essentiels ainsi que les relations existantes entre elles.

Dans notre cas, le modèle global s’articule autour de plusieurs groupes d’entités : les utilisateurs, les partenaires, les événements, la billetterie, le contrôle d’accès, les interactions et l’administration. Cette vue permet de mieux comprendre l’organisation des données avant de passer aux conceptions détaillées propres à chaque sprint.

![Diagramme de classes global](images/class_diagram_global_festy.png)

**Figure 2.2 : Diagramme de classes global de FESTY**

Comme le montre la figure 2.2, la plateforme repose principalement sur l’entité utilisateur, qui peut gérer son profil, ses préférences, ses billets et ses interactions. Un utilisateur peut également soumettre une demande pour devenir partenaire. Le partenaire peut créer et gérer des événements, définir les types de billets associés et suivre son activité. Les billets sont liés aux réservations, aux paiements et aux opérations de contrôle d’accès. L’administrateur intervient dans la supervision des utilisateurs, des partenaires, des événements, des opérations financières et des actions sensibles.


## 2.5 Environnement de travail

L’environnement de travail regroupe les ressources matérielles et logicielles utilisées pour concevoir, développer, tester et documenter la plateforme FESTY. Cette section présente les principaux éléments ayant permis d’assurer le bon déroulement du projet.

### 2.5.1 Environnement matériel

Le développement de FESTY a été réalisé à l’aide d’un ordinateur portable utilisé pour le développement, les tests et la modélisation. Des appareils mobiles ont également été utilisés pour vérifier le comportement de l’application dans un contexte proche de l’utilisation réelle.

| Caractéristique | Description |
|---|---|
| Nom de l’appareil | DELL G15 5510 |
| Processeur | Intel(R) Core(TM) i5-10500H CPU @ 2.50GHz |
| Mémoire RAM | 24 Go |
| Carte graphique dédiée | NVIDIA GeForce GTX 1650 — 4 Go |
| Carte graphique intégrée | Intel(R) UHD Graphics |
| Stockage | SSD 238 Go |
| Système d’exploitation | Windows |
| Appareil de test mobile | Téléphone Android réel ; tests iOS réalisés via TestFlight |

**Tableau 2.8 : Environnement matériel utilisé**

### 2.5.2 Environnement logiciel

Le tableau suivant présente les principaux outils logiciels utilisés durant la réalisation du projet. Ces outils couvrent le développement, les tests, la modélisation, la gestion du code source et la documentation.

| Outil | Utilisation |
|---|---|
| Visual Studio Code | Édition du code source, des fichiers de configuration et de la documentation du projet. |
| Android Studio | Compilation, exécution et test de l’application mobile Android. |
| Postman | Test et validation des API REST. |
| Git | Gestion locale des versions du code source. |
| GitHub / GitLab | Hébergement du code source et suivi des modifications. |
| pgAdmin | Administration et consultation de la base de données PostgreSQL. |
| Docker | Exécution de certains services nécessaires aux tests et à l’environnement de développement. |
| Stripe CLI | Test local des webhooks Stripe et simulation des événements de paiement. |
| Draw.io | Création et amélioration visuelle des diagrammes. |

**Tableau 2.9 : Environnement logiciel utilisé**

## 2.6 Technologies utilisées

Cette section présente les principales technologies utilisées pour la réalisation de la plateforme FESTY. Elles sont regroupées selon leur rôle dans le projet : technologies Front-End et Mobile, technologies Back-End, base de données et services externes.

### 2.6.1 Technologies Front-End et Mobile

La partie Front-End de FESTY comprend l’application mobile destinée aux visiteurs, utilisateurs, partenaires et agents de scan, ainsi que les interfaces web dédiées à l’administration et au suivi partenaire.

| Technologie | Rôle dans le projet |
|---|---|
| Flutter | Framework utilisé pour développer l’application mobile multiplateforme de FESTY. |
| Dart | Langage utilisé avec Flutter pour développer les interfaces mobiles et la logique côté client. |
| React.js | Bibliothèque utilisée pour développer les interfaces web, notamment le tableau de bord administrateur et le portail partenaire. |
| TypeScript / JavaScript | Langages utilisés pour structurer la logique des interfaces web et améliorer la maintenabilité du code Front-End. |

**Tableau 2.10 : Technologies Front-End et Mobile utilisées**

### 2.6.2 Technologies Back-End

La partie Back-End de FESTY assure la gestion de la logique métier, la sécurité, l’exposition des API REST, la persistance des données et l’intégration avec les services externes. Elle repose sur une architecture monolithique modulaire afin de séparer les domaines fonctionnels tout en conservant une application centralisée.

| Technologie | Rôle dans le projet |
|---|---|
| Java 17 | Langage principal utilisé pour le développement de la partie Back-End. |
| Spring Boot | Framework principal utilisé pour développer les services Back-End et exposer les API REST. |
| Spring Security / JWT | Technologies utilisées pour gérer l’authentification, la sécurité et les autorisations selon les rôles. |
| Spring Data JPA / Hibernate | Technologies utilisées pour assurer la persistance des données et la communication avec la base PostgreSQL. |
| Spring Modulith | Technologie utilisée pour structurer le Back-End en modules métier cohérents. |
| Flyway | Outil utilisé pour gérer les migrations SQL et suivre l’évolution du schéma de la base de données. |
| Springdoc OpenAPI / Swagger UI | Outil utilisé pour documenter et tester les API REST exposées par le Back-End. |

**Tableau 2.11 : Technologies Back-End utilisées**

Le choix de Spring Boot permet de développer une application Back-End structurée et évolutive. Spring Security et JWT assurent l’authentification interne, la gestion des jetons d’accès et de rafraîchissement ainsi que le contrôle des autorisations selon les rôles, tandis que Spring Data JPA et Hibernate facilitent la gestion des données. Spring Modulith permet d’organiser le code en modules métier, notamment l’authentification, les événements, la billetterie, le paiement, le scan et l’administration.

### 2.6.3 Base de données

La plateforme FESTY utilise une base de données relationnelle afin de stocker les informations nécessaires au fonctionnement du système, notamment les utilisateurs, les partenaires, les événements, les billets, les paiements, les opérations de scan et les données d’administration.

| Technologie | Rôle dans le projet |
|---|---|
| PostgreSQL | Système de gestion de base de données relationnelle utilisé pour stocker les données principales de la plateforme. |
| Supabase | Plateforme utilisée pour l’hébergement de la base PostgreSQL. |
| PostGIS | Extension de PostgreSQL utilisée pour gérer les données géographiques liées aux événements. |
| Hibernate Spatial | Extension utilisée avec Hibernate pour manipuler les données géographiques côté Back-End. |

**Tableau 2.12 : Technologies liées à la base de données**

Dans cette architecture, Supabase est utilisé uniquement comme environnement d’hébergement de la base PostgreSQL. L’authentification, la gestion des utilisateurs, les rôles et les sessions sécurisées sont assurés par le Back-End FESTY à travers Spring Security et JWT.

### 2.6.4 Services externes

FESTY intègre plusieurs services externes afin de prendre en charge certaines fonctionnalités spécifiques, notamment les paiements, les notifications, les emails, la vérification téléphonique et la gestion des fichiers.

| Service externe | Rôle dans le projet |
|---|---|
| Stripe | Gestion des paiements en ligne, des remboursements, des webhooks, des payouts et des comptes connectés des partenaires. |
| Firebase Cloud Messaging | Envoi des notifications push aux utilisateurs de l’application mobile. |
| Brevo | Envoi des emails transactionnels liés aux comptes, aux notifications et aux opérations importantes. |
| Twilio | Envoi des SMS, notamment pour les scénarios de vérification OTP. |
| Bunny.net | Stockage et diffusion des fichiers ou médias utilisés par la plateforme. |

**Tableau 2.13 : Services externes intégrés à FESTY**
## 2.7 Architecture de la solution

L’architecture de la solution permet de représenter l’organisation générale de la plateforme FESTY. Elle décrit les principaux composants du système, leurs responsabilités ainsi que les échanges entre les différentes couches de l’application.

Dans le cadre de ce projet, nous avons adopté une architecture organisée autour d’une couche présentation, d’une couche métier, d’une couche de données et de services externes. Cette séparation permet de faciliter la maintenance, l’évolution du système et la répartition des responsabilités entre les composants.

### 2.7.1 Architecture physique

L’architecture physique décrit les composants déployés ainsi que les environnements dans lesquels ils s’exécutent. Elle met en évidence les clients de la plateforme, le Back-End, la base de données et les services externes intégrés à la solution.

La plateforme FESTY est composée d’une application mobile développée avec Flutter, destinée aux visiteurs, utilisateurs, partenaires et agents de scan. Elle comprend également des interfaces web développées avec React.js, notamment le portail partenaire et le tableau de bord administrateur.

Le Back-End FESTY, développé avec Spring Boot, représente le service applicatif central. Il expose des API REST sécurisées consommées par l’application mobile et les interfaces web. Il assure le traitement métier, la gestion des autorisations, l’accès aux données et l’intégration avec les services externes.

La base de données PostgreSQL est hébergée dans l’environnement Supabase. Elle permet de stocker les données principales de la plateforme, telles que les utilisateurs, les partenaires, les événements, les billets, les paiements et les opérations de scan. L’extension PostGIS est utilisée pour gérer les données géographiques liées à la localisation des événements.

Supabase n’intervient donc pas dans le processus d’authentification de la plateforme ; son rôle se limite à l’hébergement de la base PostgreSQL utilisée par le Back-End FESTY.

La plateforme intègre aussi plusieurs services externes. Stripe assure les paiements, les remboursements et les opérations financières. Firebase Cloud Messaging prend en charge les notifications push. Brevo est utilisé pour les emails transactionnels, Twilio pour certains SMS, et Bunny.net pour la gestion ou la diffusion des fichiers et médias.

La figure suivante présente l’architecture physique de la plateforme FESTY.

![Architecture physique de la plateforme FESTY](images/architecture_physique_festy.png)

**Figure 2.3 : Architecture physique de la plateforme FESTY**

Cette architecture montre que le Back-End joue un rôle central dans la coordination du système. Il assure les échanges entre les interfaces clientes, la base de données et les services externes, tout en appliquant les règles métier et les contrôles de sécurité nécessaires.

### 2.7.2 Architecture logique

L’architecture logique de FESTY repose sur un Back-End unique développé avec Spring Boot et organisé sous forme de monolithe modulaire. Ce choix permet de conserver une application simple à développer et à déployer, tout en structurant le code en modules métier cohérents.

Afin d’assurer cette organisation, nous avons utilisé Spring Modulith. Cette approche permet de découper le Back-End selon les principaux domaines fonctionnels de la plateforme, tels que l’authentification, la gestion des utilisateurs, les partenaires, les événements, la billetterie, les paiements, le scan, les notifications et l’administration.

Chaque module possède un périmètre fonctionnel précis et expose uniquement les services nécessaires aux autres modules. Cette séparation permet de réduire le couplage entre les composants, d’améliorer la lisibilité du code et de faciliter la maintenance de l’application.

Les échanges entre modules peuvent être réalisés à travers des interfaces ou des événements applicatifs. Par exemple, lorsqu’une action importante est effectuée dans un module, un événement peut être publié afin d’être traité par un autre module sans créer une dépendance forte entre les deux. Cette organisation permet de rapprocher certains avantages des microservices, tout en conservant la simplicité de déploiement d’un monolithe.

Les principaux modules logiques de FESTY sont présentés dans le tableau suivant.

| Module | Rôle principal |
|---|---|
| Authentification | Gestion de l’inscription, de la connexion, des jetons d’accès et de la sécurisation des comptes. |
| Utilisateurs | Gestion des profils utilisateurs, des informations personnelles et des préférences. |
| Partenaires | Gestion des demandes partenaires, des profils professionnels et des informations liées aux organisateurs. |
| Événements | Création, consultation, modification, recherche et gestion du cycle de vie des événements. |
| Artistes | Gestion du catalogue des artistes et des associations entre artistes et événements. |
| Billetterie | Gestion des types de billets, des réservations et des billets numériques. |
| Paiement | Gestion des paiements, des remboursements et des opérations financières liées aux événements. |
| Scan | Gestion des sessions de scan, des agents affectés et du contrôle d’accès aux événements. |
| Notifications | Gestion des notifications push, des emails et des messages liés aux actions importantes. |
| Interactions | Gestion des avis, des favoris, des signalements et des interactions autour des événements. |
| Administration | Supervision des utilisateurs, des partenaires, des événements, des opérations sensibles et des paramètres globaux. |

**Tableau 2.14 : Modules logiques de la plateforme FESTY**

La figure suivante présente une vue simplifiée de l’architecture logique modulaire du Back-End FESTY.

![Architecture logique modulaire de FESTY](images/architecture_logique_festy.png)

**Figure 2.4 : Architecture logique modulaire de FESTY**

Cette architecture permet de mieux organiser les responsabilités internes de l’application. Elle facilite également l’évolution future de la plateforme, car chaque module peut être modifié ou enrichi avec un impact limité sur les autres parties du système.

## Conclusion

Dans ce chapitre, nous avons présenté la phase d’analyse et de préparation du projet FESTY. Nous avons commencé par identifier les acteurs principaux de la plateforme, puis nous avons défini les besoins fonctionnels et non fonctionnels du système.

Nous avons ensuite présenté le pilotage du projet avec Scrum à travers l’équipe Scrum, le backlog du produit priorisé selon la méthode MoSCoW et la planification des sprints. Par la suite, nous avons introduit les diagrammes globaux de la solution, notamment le diagramme de cas d’utilisation global et le diagramme de classes global.

Enfin, nous avons présenté l’environnement de travail, les technologies utilisées ainsi que l’architecture logique et physique de la plateforme. Le chapitre suivant sera consacré à l’étude et à la réalisation du premier sprint, portant sur l’authentification et la gestion des accès.