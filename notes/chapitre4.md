# Chapitre 4 : Étude et réalisation du Sprint 2 — Gestion des partenaires et des événements

## Introduction

Ce chapitre présente l’étude et la réalisation du deuxième sprint du projet FESTY. Ce sprint est consacré à la gestion des partenaires et des événements. Il couvre le parcours permettant à un utilisateur de soumettre une demande pour devenir partenaire organisateur, ainsi que les fonctionnalités permettant au partenaire de gérer son profil professionnel et ses événements.

Ce sprint introduit également le contrôle administratif des demandes partenaires et de l’offre événementielle. L’administrateur peut ainsi examiner les candidatures reçues, accepter ou refuser les demandes, puis contrôler les événements soumis avant leur publication sur la plateforme.

Dans ce chapitre, nous présentons d’abord le backlog du sprint. Ensuite, nous détaillons l’analyse fonctionnelle à travers le diagramme de cas d’utilisation et les descriptions textuelles des principaux cas. La partie conception présente le diagramme de classes partiel ainsi que les diagrammes de séquence associés. Enfin, nous exposons les principales interfaces réalisées durant ce sprint.


## 4.1 Backlog du Sprint 2

Le Sprint Backlog regroupe les user stories sélectionnées pour le deuxième sprint. Ces fonctionnalités permettent de mettre en place le parcours partenaire et la gestion initiale des événements.

### 4.1.1 Objectif du sprint

L’objectif du Sprint 2 est de permettre à un utilisateur de soumettre une demande pour devenir partenaire organisateur. Il permet également au partenaire de gérer son profil professionnel et ses événements.

Ce sprint introduit aussi le contrôle administratif des demandes partenaires et des événements soumis avant leur publication.

### 4.1.2 Backlog du sprint

Le tableau suivant présente les user stories retenues pour le deuxième sprint.

| ID | User Story | Tâches principales | Priorité |
|---|---|---|---|
| US-2.1 | En tant qu’utilisateur, je veux soumettre une demande pour devenir partenaire organisateur afin de proposer des événements sur la plateforme. | Créer le formulaire de candidature ; saisir les informations professionnelles ; téléverser les documents requis ; envoyer la demande ; suivre son statut. | Must Have |
| US-2.2 | En tant qu’administrateur, je veux traiter les demandes partenaires afin de valider ou refuser l’accès à l’espace partenaire. | Consulter les demandes reçues ; afficher le dossier partenaire ; vérifier les informations ; accepter ou refuser la demande. | Must Have |
| US-2.3 | En tant que partenaire, je veux gérer mon profil partenaire afin de présenter mes informations professionnelles. | Afficher le profil partenaire ; modifier les informations professionnelles ; mettre à jour les coordonnées et la description. | Should Have |
| US-2.4 | En tant que partenaire, je veux créer et gérer mes événements afin de maintenir leurs informations à jour. | Créer un événement ; saisir les informations générales ; définir la date et la localisation ; consulter, modifier ou annuler un événement. | Must Have |
| US-2.5 | En tant qu’administrateur, je veux contrôler l’offre événementielle afin de garantir la conformité du contenu publié. | Consulter les événements soumis ; afficher les détails ; approuver ou rejeter un événement. | Must Have |

**Tableau 4.1 : Backlog du Sprint 2**

## 4.2 Analyse fonctionnelle

L’analyse fonctionnelle du Sprint 2 présente les principales interactions entre les acteurs et la plateforme. Les acteurs concernés sont l’Utilisateur, le Partenaire et l’Administrateur.

L’Utilisateur peut soumettre une demande pour devenir partenaire organisateur et suivre son statut. Le Partenaire peut gérer son profil professionnel, créer un événement et gérer ses événements. L’Administrateur intervient pour traiter les demandes partenaires et contrôler l’offre événementielle.

### 4.2.1 Diagramme de cas d’utilisation du Sprint 2

La figure 4.1 présente le diagramme de cas d’utilisation du Sprint 2. Il regroupe les fonctionnalités principales liées au parcours partenaire et à la gestion des événements.

![Diagramme de cas d’utilisation du Sprint 2](images/use_case_sprint2.png)

**Figure 4.1 : Diagramme de cas d’utilisation du Sprint 2**

Ce diagramme montre que le cas « Devenir partenaire organisateur » inclut la soumission d’une demande partenaire. L’utilisateur peut également suivre le statut de sa demande. Une fois accepté, le partenaire peut gérer son profil professionnel, créer un événement et gérer ses événements. L’administrateur assure le traitement des demandes partenaires et le contrôle de l’offre événementielle.

### 4.2.2 Description textuelle des cas d’utilisation

Cette section présente les descriptions textuelles des principaux cas d’utilisation du Sprint 2. Chaque description précise l’acteur principal, l’objectif, les préconditions, les postconditions, le scénario nominal ainsi que les exceptions possibles.

#### Cas d’utilisation : Soumettre une demande partenaire

| Élément | Description |
|---|---|
| Cas d’utilisation | Soumettre une demande partenaire |
| Acteur principal | Utilisateur |
| Objectif | Permettre à l’utilisateur de déposer une demande afin de devenir partenaire organisateur. |
| Précondition | L’utilisateur est authentifié sur la plateforme. |
| Postcondition | La demande partenaire est enregistrée et transmise pour traitement administratif. |
| Scénario nominal | 1. L’utilisateur accède au formulaire de demande partenaire.<br>2. Il saisit ses informations professionnelles.<br>3. Il téléverse les documents requis.<br>4. Le système vérifie les informations saisies.<br>5. Le système enregistre la demande avec le statut en attente.<br>6. Le système affiche un message de confirmation. |
| Exceptions | E1 : Les informations saisies sont incomplètes ou invalides.<br>E2 : Le téléversement d’un document échoue. |

**Tableau 4.2 : Description textuelle du cas d’utilisation « Soumettre une demande partenaire »**

#### Cas d’utilisation : Traiter une demande partenaire

| Élément | Description |
|---|---|
| Cas d’utilisation | Traiter une demande partenaire |
| Acteur principal | Administrateur |
| Objectif | Permettre à l’administrateur d’examiner une demande partenaire et de prendre une décision. |
| Précondition | L’administrateur est authentifié au back-office. |
| Postcondition | Le statut de la demande est mis à jour. |
| Scénario nominal | 1. L’administrateur consulte la liste des demandes partenaires.<br>2. Il sélectionne une demande à traiter.<br>3. Le système affiche les informations et les documents associés.<br>4. L’administrateur vérifie le dossier.<br>5. Il accepte ou refuse la demande.<br>6. Le système met à jour le statut de la demande. |
| Exceptions | E1 : Les informations de la demande sont incomplètes.<br>E2 : L’administrateur demande des informations complémentaires. |

**Tableau 4.3 : Description textuelle du cas d’utilisation « Traiter une demande partenaire »**

#### Cas d’utilisation : Gérer son profil partenaire

| Élément | Description |
|---|---|
| Cas d’utilisation | Gérer son profil partenaire |
| Acteur principal | Partenaire |
| Objectif | Permettre au partenaire de consulter et mettre à jour ses informations professionnelles. |
| Précondition | Le partenaire est authentifié et dispose d’un accès à l’espace partenaire. |
| Postcondition | Les informations du profil partenaire sont mises à jour. |
| Scénario nominal | 1. Le partenaire accède à son profil professionnel.<br>2. Le système affiche les informations du profil.<br>3. Le partenaire modifie les informations souhaitées.<br>4. Le système vérifie les données saisies.<br>5. Le système enregistre les modifications.<br>6. Le système affiche un message de confirmation. |
| Exceptions | E1 : Les données saisies sont invalides.<br>E2 : Le partenaire quitte la page sans enregistrer les modifications. |

**Tableau 4.4 : Description textuelle du cas d’utilisation « Gérer son profil partenaire »**

#### Cas d’utilisation : Créer et gérer un événement

| Élément | Description |
|---|---|
| Cas d’utilisation | Créer et gérer un événement |
| Acteur principal | Partenaire |
| Objectif | Permettre au partenaire de créer un événement et de maintenir ses informations à jour. |
| Précondition | Le partenaire est authentifié et dispose d’un accès à l’espace partenaire. |
| Postcondition | L’événement est enregistré ou mis à jour dans la plateforme. |
| Scénario nominal | 1. Le partenaire accède à l’espace de gestion des événements.<br>2. Il crée un nouvel événement ou sélectionne un événement existant.<br>3. Il saisit ou modifie les informations de l’événement.<br>4. Le système vérifie les données saisies.<br>5. Le système enregistre l’événement.<br>6. Le système affiche un message de confirmation. |
| Exceptions | E1 : Les informations saisies sont incomplètes ou invalides.<br>E2 : Le partenaire annule l’opération avant l’enregistrement. |

**Tableau 4.5 : Description textuelle du cas d’utilisation « Créer et gérer un événement »**

## 4.3 Conception

Cette section présente les éléments de conception du Sprint 2. Elle comprend le diagramme de classes partiel ainsi que les diagrammes de séquence associés aux principaux scénarios du sprint.

### 4.3.1 Diagramme de classes du Sprint 2

Le diagramme de classes du Sprint 2 présente les principales classes liées à la gestion des partenaires et des événements. Il met en évidence la relation entre l’utilisateur, le partenaire, la demande partenaire, les documents justificatifs et les événements.

![Diagramme de classes du Sprint 2](images/class_diagram_sprint2.png)

**Figure 4.2 : Diagramme de classes du Sprint 2**

Ce diagramme montre qu’un utilisateur peut soumettre une demande partenaire contenant des documents justificatifs. Après validation, le partenaire peut gérer son profil et ses événements. L’administrateur intervient pour traiter les demandes partenaires et contrôler les événements soumis.

### 4.3.2 Diagrammes de séquence

Les diagrammes de séquence présentent les échanges entre les acteurs, les interfaces, le back-end et la base de données pour les principaux scénarios du Sprint 2.

Dans ce sprint, nous retenons quatre scénarios principaux :

- la soumission d’une demande partenaire ;
- le traitement d’une demande partenaire ;
- la création d’un événement ;
- le contrôle de l’offre événementielle.

#### Diagramme de séquence : Soumission d’une demande partenaire

La figure 4.3 présente le scénario de soumission d’une demande partenaire. L’utilisateur remplit le formulaire de candidature, ajoute les documents requis, puis soumet sa demande. Le système vérifie les données saisies, enregistre la demande et affiche une confirmation.

![Diagramme de séquence du scénario de soumission d’une demande partenaire](images/sequence_demande_partenaire.png)

**Figure 4.3 : Diagramme de séquence du scénario de soumission d’une demande partenaire**

#### Diagramme de séquence : Traitement d’une demande partenaire

La figure 4.4 présente le scénario de traitement d’une demande partenaire. L’administrateur consulte les demandes reçues, sélectionne une demande, vérifie les informations et les documents associés, puis accepte ou refuse la demande.

![Diagramme de séquence du scénario de traitement d’une demande partenaire](images/sequence_traitement_demande_partenaire.png)

**Figure 4.4 : Diagramme de séquence du scénario de traitement d’une demande partenaire**

#### Diagramme de séquence : Création d’un événement

La figure 4.5 présente le scénario de création d’un événement par le partenaire. Le partenaire saisit les informations principales de l’événement, puis le système vérifie les données avant d’enregistrer l’événement.

![Diagramme de séquence du scénario de création d’un événement](images/sequence_creation_evenement.png)

**Figure 4.5 : Diagramme de séquence du scénario de création d’un événement**


#### Diagramme de séquence : Contrôle de l’offre événementielle

La figure 4.6 présente le scénario de contrôle de l’offre événementielle. L’administrateur consulte les événements soumis, vérifie les informations publiées, puis approuve ou rejette l’événement.

![Diagramme de séquence du scénario de contrôle de l’offre événementielle](images/sequence_controle_offre_evenementielle.png)

**Figure 4.6 : Diagramme de séquence du scénario de contrôle de l’offre événementielle**


## 4.4 Réalisation

Cette section présente les principales interfaces réalisées durant le Sprint 2. Ces interfaces couvrent le parcours partenaire, la gestion des événements et le contrôle administratif.

### 4.4.1 Interface de soumission d’une demande partenaire

Cette interface permet à l’utilisateur de remplir les informations nécessaires pour devenir partenaire organisateur. Il peut saisir ses informations professionnelles et ajouter les documents requis avant d’envoyer sa demande.

![Interface de soumission d’une demande partenaire](images/interface_demande_partenaire.png)

**Figure 4.7 : Interface de soumission d’une demande partenaire**

### 4.4.2 Interface de traitement des demandes partenaires

Cette interface permet à l’administrateur de consulter les demandes partenaires reçues, d’afficher les détails d’un dossier et de prendre une décision.

![Interface de traitement des demandes partenaires](images/interface_traitement_demandes.png)

**Figure 4.8 : Interface de traitement des demandes partenaires**

### 4.4.3 Interface de gestion du profil partenaire

Cette interface permet au partenaire de consulter et modifier ses informations professionnelles, telles que la description, les coordonnées et les médias associés à son profil.

![Interface de gestion du profil partenaire](images/interface_profil_partenaire.png)

**Figure 4.9 : Interface de gestion du profil partenaire**

### 4.4.4 Interface de création d’un événement

Cette interface permet au partenaire de créer un événement en saisissant les informations principales : titre, description, date, localisation et image de couverture.

![Interface de création d’un événement](images/interface_creation_evenement.png)

**Figure 4.10 : Interface de création d’un événement**

### 4.4.5 Interface de gestion des événements

Cette interface permet au partenaire de consulter la liste de ses événements, d’accéder aux détails, de modifier les informations ou d’annuler un événement si nécessaire.

![Interface de gestion des événements](images/interface_gestion_evenements.png)

**Figure 4.11 : Interface de gestion des événements**

### 4.4.6 Interface de contrôle de l’offre événementielle

Cette interface permet à l’administrateur de consulter les événements soumis, de vérifier leurs informations et de prendre une décision d’approbation ou de rejet.

![Interface de contrôle de l’offre événementielle](images/interface_controle_evenements.png)

**Figure 4.12 : Interface de contrôle de l’offre événementielle**

## Conclusion

Dans ce chapitre, nous avons présenté l’étude et la réalisation du Sprint 2, consacré à la gestion des partenaires et des événements. Ce sprint a permis de mettre en place le parcours de demande partenaire, la gestion du profil professionnel, la création et la gestion des événements ainsi que le contrôle administratif de l’offre événementielle.

Nous avons également présenté le diagramme de cas d’utilisation, les descriptions textuelles, le diagramme de classes partiel et les diagrammes de séquence associés aux principaux scénarios du sprint.

Le sprint suivant sera consacré à l’exploration, à la personnalisation et aux interactions autour des événements.