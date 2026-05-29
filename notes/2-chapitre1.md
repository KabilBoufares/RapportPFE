# Chapitre 1 : Contexte général du projet

## Introduction

Ce chapitre présente le cadre général du projet FESTY. Il commence par la présentation de l’organisme d’accueil TEKSIGHT, puis introduit le contexte du projet, sa problématique, l’étude de l’existant et la solution proposée. Il présente ensuite la méthodologie de travail adoptée ainsi que la planification prévisionnelle du projet.

## 1.1 Présentation de l’organisme d’accueil

Cette section présente l’organisme d’accueil dans lequel le projet de fin d’études a été réalisé, ainsi que son domaine d’activité et son rôle dans l’accompagnement du projet FESTY.

### 1.1.1 Présentation de TEKSIGHT

TEKSIGHT [REF-TEKSIGHT] est une société tunisienne spécialisée dans les services informatiques et les solutions numériques. Elle accompagne ses clients dans la conception, le développement et le déploiement de solutions technologiques adaptées à leurs besoins.

L’entreprise est implantée à la pépinière des entreprises du campus universitaire Zarroug à Gafsa. Cette implantation lui permet d’évoluer dans un environnement favorable à l’innovation, à l’entrepreneuriat et à la collaboration avec le milieu universitaire.

![Logo TEKSIGHT](<images/chapitre1/Figure 1.1 Logo de TEKSIGHT.png>)

**Figure 1.1 : Logo de TEKSIGHT**

### 1.1.2 Domaine d’activité

TEKSIGHT exerce principalement dans le domaine des technologies de l’information. Ses activités couvrent notamment le développement d’applications web et mobiles, la conception de bases de données, l’intégration de solutions cloud, l’Internet des objets et les systèmes embarqués.

Grâce à ces compétences, l’entreprise contribue à la réalisation de solutions numériques destinées à améliorer les processus métier et à répondre aux besoins techniques de ses clients.

### 1.1.3 Rôle de TEKSIGHT dans le projet

Dans le cadre de ce projet de fin d’études, TEKSIGHT a assuré l’encadrement technique et le suivi du développement de FESTY. Elle a fourni le cadre professionnel nécessaire à la réalisation du projet et a contribué au suivi des choix fonctionnels et techniques de l’application.

FESTY représente le projet applicatif développé dans le cadre de ce stage. Il s’agit d’une plateforme dédiée à la gestion des événements, composée d’une application mobile, d’un espace partenaire et d’un back-office d’administration.

| Élément | Description |
|---|---|
| Dénomination sociale | TEKSIGHT |
| Domaine d’activité | Services informatiques et solutions numériques |
| Localisation | Pépinière des entreprises, campus universitaire Zarroug, Gafsa |
| Activités principales | Développement web et mobile, bases de données, cloud, IoT et systèmes embarqués |
| Rôle dans le projet | Organisme d’accueil et encadrement technique |
| Projet réalisé | FESTY, plateforme de gestion des événements avec application mobile, espace partenaire et back-office d’administration |

**Tableau 1.1 : Présentation générale de TEKSIGHT**

## 1.2 Présentation du projet FESTY

Cette section présente le projet FESTY, son contexte, sa problématique ainsi que les objectifs visés par la solution proposée.

![Logo de FESTY](<images/chapitre1/Figure 1.2 Logo de FESTY.png>)

**Figure 1.2 : Logo de FESTY**

### 1.2.1 Contexte du projet

Le secteur événementiel connaît une évolution importante grâce à la digitalisation des services. Les utilisateurs cherchent aujourd’hui à découvrir facilement les événements, consulter leurs détails, réserver et payer leurs billets en ligne et recevoir des informations en temps réel.

De leur côté, les organisateurs ont besoin d’outils numériques leur permettant de créer, gérer et suivre leurs événements de manière efficace. Cette évolution met en évidence la nécessité de disposer d’une solution centralisée capable de répondre aux besoins des participants, des organisateurs et des administrateurs.

Dans ce contexte, le projet FESTY consiste à concevoir et développer une plateforme numérique de gestion événementielle, composée d’une application mobile, d’un espace partenaire et d’un back-office d’administration.

Ainsi, la digitalisation du secteur ne se limite plus à la vente de billets, mais couvre également la découverte, la personnalisation, la gestion organisationnelle, le paiement, le contrôle d’accès et le suivi des activités.

### 1.2.2 Problématique

Malgré l’existence de plusieurs solutions de billetterie et de gestion événementielle, les services proposés restent souvent dispersés. L’utilisateur doit parfois utiliser plusieurs plateformes pour découvrir un événement, réserver ou acheter un billet, suivre les mises à jour ou interagir avec les autres participants.

Cette fragmentation complique également le travail des organisateurs, qui ont besoin de gérer les événements, les billets, le contrôle d’accès et le suivi de l’activité depuis un même espace. À cela s’ajoutent des besoins importants liés à la sécurité des billets, à la traçabilité des paiements et à la supervision des opérations sensibles.

La problématique principale peut donc être formulée ainsi :

> Comment concevoir une plateforme numérique centralisée permettant de simplifier la découverte, la réservation, la gestion et le contrôle des événements, tout en assurant une expérience sécurisée pour les utilisateurs, les partenaires et les administrateurs ?

### 1.2.3 Objectifs du projet

L’objectif principal du projet FESTY est de mettre en place une plateforme de gestion événementielle composée d’une application mobile destinée aux visiteurs, utilisateurs et agents de scan, d’un espace partenaire pour les organisateurs et d’un back-office d’administration permettant la supervision de la plateforme.

Les objectifs spécifiques du projet sont les suivants :

* faciliter la découverte des événements et des artistes ;
* permettre aux utilisateurs de réserver, payer et gérer leurs billets ;
* offrir aux partenaires un espace de gestion de leurs événements ;
* assurer le contrôle d’accès aux événements à travers le scan des billets ;
* fournir à l’administrateur un espace de supervision, de contrôle de l’offre événementielle, de gestion du catalogue artistique et de suivi des opérations sensibles.

Ainsi, FESTY vise à améliorer l’expérience des participants, à simplifier le travail des organisateurs et à renforcer la sécurité des opérations liées aux événements.

## 1.3 Étude de l’existant

Cette section présente les solutions existantes dans le domaine de la gestion événementielle, puis identifie leurs limites afin de justifier la solution proposée.

### 1.3.1 Description de l’existant

Aujourd’hui, plusieurs solutions numériques couvrent une partie des besoins liés à la gestion événementielle. Certaines se concentrent sur la billetterie, d’autres sur la promotion, l’interaction sociale, le contrôle d’accès ou le suivi interne.

Cependant, ces solutions couvrent rarement l’ensemble du cycle événementiel dans un même environnement. Le tableau suivant présente une analyse comparative des principales catégories de solutions existantes, de leurs limites et de l’apport visé par FESTY.

| Type de solution existante | Fonctionnalités principales | Limites constatées | Apport de FESTY |
| --- | --- | --- | --- |
| Plateformes de billetterie | Vente de billets, paiement en ligne, génération de tickets | Souvent centrées sur l’achat, avec peu d’interactions autour de l’événement | Centralisation de la billetterie avec exploration, interaction et gestion des tickets |
| Plateformes de promotion d’événements | Publication, recherche et visibilité des événements | Découverte parfois peu personnalisée et rarement liée à un parcours complet d’achat | Exploration personnalisée avec favoris, stars et recommandations |
| Réseaux sociaux | Communication, partage et interaction avec le public | Absence de gestion structurée des billets et du contrôle d’accès | Interaction autour des événements dans un cadre contrôlé |
| Outils de contrôle d’accès | Scan des billets et validation des entrées | Souvent séparés de la billetterie et du suivi organisateur | Intégration du scan au cycle complet de l’événement |
| Outils de gestion interne | Suivi des ventes, statistiques et participants | Usage souvent réservé aux organisateurs, séparé de l’expérience utilisateur | Espace partenaire et back-office intégrés à la plateforme |

**Tableau 1.2 : Analyse comparative des solutions existantes**

### 1.3.2 Critique de l’existant

L’analyse de l’existant montre que les solutions disponibles répondent généralement à une partie du besoin, mais rarement au cycle complet de gestion événementielle. Les principales limites relevées sont les suivantes :

* fragmentation des services entre plusieurs plateformes ;
* manque de personnalisation dans la découverte des événements ;
* séparation entre la billetterie, le contrôle d’accès et le suivi organisateur ;
* interaction limitée entre participants, organisateurs et plateforme ;
* supervision administrative et traçabilité parfois insuffisantes.

Ces limites justifient la mise en place d’une solution centralisée capable de regrouper les principaux besoins des utilisateurs, des partenaires et des administrateurs.

### 1.3.3 Solution proposée

Pour répondre à ces limites, nous proposons FESTY, une plateforme dédiée à la gestion des événements. Elle vise à centraliser les principales fonctionnalités nécessaires à la découverte, à la réservation, à la gestion, au contrôle d’accès et à la supervision des événements.

La solution permet aux utilisateurs de découvrir les événements, consulter les artistes associés, gérer leurs billets et interagir autour des événements. Elle offre aux partenaires un espace de gestion de leurs événements et de leur activité. Elle met également à disposition de l’administrateur un back-office permettant de superviser la plateforme, contrôler l’offre événementielle, gérer le catalogue artistique et suivre les opérations sensibles.

La richesse fonctionnelle de cette solution nécessite une organisation progressive du développement, d’où le choix d’une méthodologie agile adaptée aux projets évolutifs.

## 1.4 Méthodologie de travail

Le choix d’une méthodologie de travail adaptée permet d’organiser les différentes étapes du projet et de mieux suivre son avancement. Dans le cadre du projet FESTY, nous avons comparé les approches classiques et les approches agiles afin de retenir la méthode la plus adaptée à la nature modulaire de la plateforme.

### 1.4.1 Comparaison des méthodologies

Les méthodes classiques, telles que le modèle en cascade ou le cycle en V, reposent sur une succession de phases prédéfinies. Elles conviennent aux projets dont les besoins sont clairement définis dès le départ, mais elles offrent peu de flexibilité lorsque les exigences évoluent durant la réalisation.

Les méthodes agiles, quant à elles, favorisent un développement itératif et incrémental. Elles permettent de livrer progressivement des fonctionnalités, d’intégrer les retours au fur et à mesure et de mieux s’adapter aux changements.

| Critère | Méthodes classiques | Méthodes agiles |
|---|---|---|
| Organisation | Séquentielle | Itérative et incrémentale |
| Définition des besoins | Fixée dès le début | Évolutive |
| Livraison | Généralement en fin de projet | Progressive |
| Tests | Après le développement | À chaque itération |
| Adaptation aux changements | Limitée | Élevée |
| Suivi du projet | Par phase | Par itération |

**Tableau 1.3 : Comparaison entre les méthodes classiques et les méthodes agiles**

### 1.4.2 Comparaison des frameworks agiles

Parmi les approches agiles, plusieurs frameworks peuvent être utilisés selon la nature du projet. Le tableau suivant présente une comparaison synthétique entre Scrum, Kanban et XP.

| Critère | Scrum | Kanban | XP |
|---|---|---|---|
| Organisation | Sprints | Flux continu | Itérations courtes |
| Rôles | Product Owner, Scrum Master, équipe de développement | Rôles non imposés | Équipe de développement |
| Suivi | Sprint Planning, Review, Retrospective | Tableau de flux | Pratiques techniques régulières |
| Point fort | Structure claire et livraison incrémentale | Grande flexibilité dans la gestion du flux | Amélioration de la qualité du code |
| Limite | Nécessite une bonne organisation des sprints | Moins adapté si le projet est déjà découpé en modules | Plus centré sur les pratiques de développement que sur la gestion globale |
| Adaptation à FESTY | Très adaptée : projet structuré en modules et sprints | Moyennement adaptée : besoin de lots fonctionnels | Moins adaptée : besoin d’une organisation globale |

**Tableau 1.4 : Comparaison entre quelques frameworks agiles**

### 1.4.3 Choix de Scrum

D’après les comparaisons précédentes, nous avons retenu Scrum [REF-SCRUM] comme framework de travail. Ce choix s’explique par la nature progressive du projet FESTY, qui regroupe plusieurs blocs fonctionnels à développer de manière incrémentale : la gestion des accès, l’espace partenaire, l’exploration des événements, la billetterie, le paiement et le contrôle d’accès.

Scrum permet de structurer le développement en sprints. Chaque sprint regroupe un ensemble cohérent de fonctionnalités et aboutit à un incrément fonctionnel. Cette organisation facilite le découpage du projet, le suivi de l’avancement et l’intégration progressive des différentes parties de la plateforme.

### 1.4.4 Présentation synthétique de Scrum

Scrum est un framework agile qui organise le développement d’un produit en cycles courts appelés sprints. Il repose principalement sur des rôles, des événements et des artefacts permettant de suivre l’évolution du projet et de livrer progressivement des fonctionnalités exploitables.

![Processus de la méthode Scrum](<images/chapitre1/Figure 1.3 Processus de la méthode Scrum.png>)

**Figure 1.3 : Processus de la méthode Scrum**

Dans ce rapport, l’application concrète de Scrum sera détaillée dans le chapitre suivant à travers la définition de l’équipe, du backlog produit et de la planification des sprints.

## 1.5 Planification prévisionnelle

La planification prévisionnelle permet d’avoir une vision globale sur le déroulement du projet durant la période de réalisation. Elle présente les principales étapes suivies : l’étude du contexte, l’analyse et la spécification, la conception globale, le Sprint 1, le Sprint 2, le Sprint 3, le Sprint 4, les tests et la validation, puis la rédaction du rapport.

Dans le cadre du projet FESTY, nous avons utilisé un diagramme de Gantt afin de représenter l’enchaînement des différentes phases du projet et leur répartition dans le temps.

Ce diagramme de Gantt est utilisé comme outil de visualisation globale du déroulement du projet. Il ne constitue pas un artefact Scrum, mais permet de représenter la planification prévisionnelle de la période de réalisation.

La planification détaillée des sprints sera présentée dans le chapitre suivant.

![Diagramme de Gantt prévisionnel](<images/chapitre1/Figure 1.4 Diagramme de Gantt prévisionnel du projet FESTY.svg>)

**Figure 1.4 : Diagramme de Gantt prévisionnel du projet FESTY**

## Conclusion

Dans ce chapitre, nous avons présenté le cadre général du projet FESTY. Nous avons commencé par introduire l’organisme d’accueil TEKSIGHT, puis nous avons exposé le contexte du projet, sa problématique, l’étude de l’existant ainsi que la solution proposée.

Nous avons également justifié le choix de la méthodologie Scrum et présenté la planification prévisionnelle du projet. Le chapitre suivant sera consacré à l’analyse et à la préparation du projet, à travers l’identification des acteurs, la spécification des besoins, le backlog produit, la planification des sprints et l’architecture générale de la solution.
