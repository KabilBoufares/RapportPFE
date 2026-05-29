# Chapitre 4 : Étude et réalisation du Sprint 2 — Gestion des partenaires et des événements

## Introduction

Ce chapitre présente l’étude et la réalisation du deuxième sprint du projet FESTY. Ce sprint est consacré à la gestion des partenaires et des événements. Il couvre le parcours permettant à un utilisateur de soumettre une demande pour devenir partenaire organisateur, ainsi que les fonctionnalités permettant au partenaire de gérer son profil professionnel et ses événements.

Ce sprint introduit également le contrôle administratif des demandes partenaires et de l’offre événementielle. L’administrateur peut ainsi examiner les candidatures reçues, accepter ou refuser les demandes, puis contrôler les événements soumis avant leur publication sur la plateforme.

Dans ce chapitre, nous présentons d’abord le backlog du sprint. Ensuite, nous détaillons l’analyse fonctionnelle à travers le diagramme de cas d’utilisation et les descriptions textuelles des principaux cas. La partie conception présente le diagramme de classes partiel ainsi que les diagrammes dynamiques associés aux principaux scénarios du sprint. Enfin, nous exposons les principales interfaces réalisées durant ce sprint.

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
| US-2.2 | En tant qu’administrateur, je veux traiter les demandes partenaires afin de valider ou refuser l’accès à l’espace partenaire. | Consulter les demandes reçues ; afficher le dossier partenaire ; vérifier les informations ; accepter, refuser ou demander des informations complémentaires. | Must Have |
| US-2.3 | En tant que partenaire, je veux gérer mon profil partenaire afin de présenter mes informations professionnelles. | Afficher le profil partenaire ; modifier les informations professionnelles ; mettre à jour les coordonnées et la description. | Should Have |
| US-2.4 | En tant que partenaire, je veux créer et gérer mes événements afin de maintenir leurs informations à jour. | Créer un événement ; saisir les informations générales ; définir la date et la localisation ; consulter, modifier ou annuler un événement. | Must Have |
| US-2.5 | En tant qu’administrateur, je veux contrôler l’offre événementielle afin de garantir la conformité du contenu publié. | Consulter les événements soumis ; afficher les détails ; approuver ou rejeter un événement. | Must Have |

**Tableau 4.1 : Backlog du Sprint 2**

## 4.2 Analyse fonctionnelle

L’analyse fonctionnelle du Sprint 2 présente les principales interactions entre les acteurs et la plateforme. Les acteurs concernés sont l’Utilisateur, le Partenaire et l’Administrateur.

L’Utilisateur peut soumettre une demande pour devenir partenaire organisateur et suivre son statut. Le Partenaire peut gérer son profil professionnel, créer un événement et gérer ses événements. L’Administrateur intervient pour traiter les demandes partenaires et contrôler l’offre événementielle.

### 4.2.1 Diagramme de cas d’utilisation du Sprint 2

La figure 4.1 présente le diagramme de cas d’utilisation du Sprint 2. Il regroupe les fonctionnalités principales liées au parcours partenaire et à la gestion des événements.

![Diagramme de cas d’utilisation du Sprint 2](<images/chapitre4/Figure 4.1 Diagramme de cas d’utilisation du Sprint 2.png>)

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
| Scénario nominal | 1. L’utilisateur accède au formulaire de demande partenaire.<br>2. Il saisit ses informations professionnelles.<br>3. Il joint les documents requis.<br>4. Le système vérifie les informations saisies.<br>5. Le système stocke les documents et enregistre la demande avec le statut en attente.<br>6. Le système affiche un message de confirmation. |
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
| Scénario nominal | 1. L’administrateur consulte la liste des demandes partenaires.<br>2. Il sélectionne une demande à traiter.<br>3. Le système affiche les informations et les documents associés.<br>4. L’administrateur examine le dossier.<br>5. Il accepte ou refuse la demande.<br>6. Le système met à jour le statut de la demande. |
| Exceptions | E1 : Le dossier est incomplet, l’administrateur demande des informations complémentaires. |

**Tableau 4.3 : Description textuelle du cas d’utilisation « Traiter une demande partenaire »**

#### Cas d’utilisation : Gérer son profil partenaire

| Élément | Description |
|---|---|
| Cas d’utilisation | Gérer son profil partenaire |
| Acteur principal | Partenaire |
| Objectif | Permettre au partenaire de consulter et mettre à jour ses informations professionnelles. |
| Précondition | Le partenaire est authentifié et dispose d’un accès à l’espace partenaire. |
| Postcondition | Les informations du profil partenaire sont mises à jour si les données saisies sont valides. |
| Scénario nominal | 1. Le partenaire accède à son profil professionnel.<br>2. Le système affiche les informations du profil partenaire.<br>3. Le partenaire modifie les informations souhaitées.<br>4. Le système vérifie les données saisies.<br>5. Le système enregistre les modifications.<br>6. Le système affiche un message de confirmation. |
| Exceptions | E1 : Les données saisies sont invalides.<br>E2 : Le partenaire quitte la page sans enregistrer les modifications. |

**Tableau 4.4 : Description textuelle du cas d’utilisation « Gérer son profil partenaire »**

Dans ce chapitre, le cas « Gérer ses événements » est présenté comme une fonctionnalité globale du partenaire. Le scénario détaillé retenu concerne la création d’un événement, car il représente l’étape principale avant le contrôle administratif.

#### Cas d’utilisation : Créer un événement

| Élément | Description |
|---|---|
| Cas d’utilisation | Créer un événement |
| Acteur principal | Partenaire |
| Objectif | Permettre au partenaire de créer un événement et de le soumettre à la validation administrative. |
| Précondition | Le partenaire est authentifié et dispose d’un accès à l’espace partenaire. |
| Postcondition | L’événement est enregistré dans la plateforme avec le statut en attente de validation. |
| Scénario nominal | 1. Le partenaire accède à l’espace de création d’événement.<br>2. Il saisit les informations principales de l’événement.<br>3. Il ajoute les médias et les informations complémentaires nécessaires.<br>4. Le système vérifie les données saisies.<br>5. Le système enregistre l’événement avec le statut en attente de validation.<br>6. Le système affiche un message de confirmation. |
| Exceptions | E1 : Les informations saisies sont incomplètes ou invalides.<br>E2 : Le partenaire annule l’opération avant l’enregistrement. |

**Tableau 4.5 : Description textuelle du cas d’utilisation « Créer un événement »**

#### Cas d’utilisation : Contrôler l’offre événementielle

| Élément | Description |
|---|---|
| Cas d’utilisation | Contrôler l’offre événementielle |
| Acteur principal | Administrateur |
| Objectif | Permettre à l’administrateur de vérifier les événements soumis avant leur publication. |
| Précondition | L’administrateur est authentifié au back-office. |
| Postcondition | Le statut de l’événement est mis à jour en approuvé ou rejeté selon la décision de l’administrateur. |
| Scénario nominal | 1. L’administrateur consulte la liste des événements en attente de validation.<br>2. Il sélectionne un événement à contrôler.<br>3. Le système affiche les informations de l’événement.<br>4. L’administrateur examine le contenu de l’événement.<br>5. Il approuve l’événement ou décide de le rejeter.<br>6. En cas de rejet, l’administrateur saisit le motif du rejet.<br>7. Le système met à jour le statut de l’événement.<br>8. Le système notifie le partenaire de la décision.<br>9. Le système affiche un message de confirmation. |
| Exceptions | E1 : L’administrateur annule l’opération avant la validation de sa décision.<br>E2 : La mise à jour du statut échoue. |

**Tableau 4.6 : Description textuelle du cas d’utilisation « Contrôler l’offre événementielle »**

## 4.3 Conception

Cette section présente les éléments de conception du Sprint 2. Elle comprend le diagramme de classes partiel ainsi que les diagrammes dynamiques associés aux principaux scénarios du sprint.

### 4.3.1 Diagramme de classes du Sprint 2

Le diagramme de classes du Sprint 2 présente les principales classes liées à la gestion des partenaires et des événements. Il met en évidence la relation entre l’utilisateur, le partenaire, la demande partenaire, les documents justificatifs et les événements.

![Diagramme de classes du Sprint 2](<images/chapitre4/Figure 4.2 Diagramme de classes du Sprint 2.png>)

**Figure 4.2 : Diagramme de classes du Sprint 2**

Ce diagramme montre qu’un utilisateur peut soumettre une demande partenaire contenant des documents justificatifs. Après validation, le partenaire peut gérer son profil et ses événements. L’administrateur intervient pour traiter les demandes partenaires et contrôler les événements soumis.

### 4.3.2 Diagrammes dynamiques

Les diagrammes dynamiques présentent les échanges et les enchaînements liés aux principaux scénarios du Sprint 2. Nous utilisons des diagrammes de séquence pour représenter les interactions entre les acteurs, les interfaces, le back-end et la base de données. Nous utilisons également un diagramme d’activité pour modéliser le processus décisionnel lié au contrôle de l’offre événementielle.

Dans ce sprint, nous retenons cinq scénarios principaux :

- la soumission d’une demande partenaire ;
- le traitement d’une demande partenaire ;
- la gestion du profil partenaire ;
- la création d’un événement ;
- le contrôle de l’offre événementielle.

#### Diagramme de séquence : Soumission d’une demande partenaire

La figure 4.3 présente le scénario de soumission d’une demande partenaire. L’utilisateur remplit le formulaire de candidature, ajoute les documents requis, puis soumet sa demande. Le système vérifie les données saisies, stocke les documents, enregistre la demande et affiche une confirmation.

![Diagramme de séquence du scénario de soumission d’une demande partenaire](<images/chapitre4/Figure 4.3 Diagramme de séquence du scénario de soumission d’une demande partenaire.png>)

**Figure 4.3 : Diagramme de séquence du scénario de soumission d’une demande partenaire**

#### Diagramme de séquence : Traitement d’une demande partenaire

La figure 4.4 présente le scénario de traitement d’une demande partenaire. L’administrateur consulte les demandes reçues, sélectionne une demande, vérifie les informations et les documents associés, puis accepte, refuse ou demande des informations complémentaires.

![Diagramme de séquence du scénario de traitement d’une demande partenaire](<images/chapitre4/Figure 4.4 Diagramme de séquence du scénario de traitement d’une demande partenaire.png>)

**Figure 4.4 : Diagramme de séquence du scénario de traitement d’une demande partenaire**

#### Diagramme de séquence : Gestion du profil partenaire

La figure 4.5 présente le scénario de gestion du profil partenaire. Le partenaire consulte ses informations professionnelles, modifie les données souhaitées, puis le système vérifie les données saisies avant de mettre à jour le profil.

![Diagramme de séquence du scénario de gestion du profil partenaire](<images/chapitre4/Figure 4.5 Diagramme de séquence du scénario de gestion du profil partenaire.png>)

**Figure 4.5 : Diagramme de séquence du scénario de gestion du profil partenaire**

#### Diagramme de séquence : Création d’un événement

La figure 4.6 présente le scénario de création d’un événement par le partenaire. Le partenaire saisit les informations principales de l’événement et ajoute les médias nécessaires. Le système vérifie ensuite les données, stocke les médias, enregistre l’événement avec le statut en attente de validation et affiche une confirmation.

![Diagramme de séquence du scénario de création d’un événement](<images/chapitre4/Figure 4.6 Diagramme de séquence du scénario de création d’un événement.png>)

**Figure 4.6 : Diagramme de séquence du scénario de création d’un événement**

#### Diagramme d’activité : Contrôle de l’offre événementielle

La figure 4.7 présente le processus de contrôle de l’offre événementielle. L’administrateur consulte les événements en attente de validation, examine les informations publiées, puis prend une décision. Il peut approuver l’événement, le rejeter en saisissant un motif, ou annuler l’opération. Après la mise à jour du statut, le partenaire est notifié de la décision.

![Diagramme d’activité du contrôle de l’offre événementielle](<images/chapitre4/Figure 4.7 Diagramme d’activité du contrôle de l’offre événementielle.png>)

**Figure 4.7 : Diagramme d’activité du contrôle de l’offre événementielle**

## 4.4 Réalisation

Cette section présente les principales interfaces réalisées durant le Sprint 2. Les emplacements des figures de réalisation sont préparés pour ajout manuel des captures.

### 4.4.1 Interface de soumission d’une demande partenaire

Cette interface permet à l’utilisateur de remplir les informations nécessaires pour devenir partenaire organisateur. Il peut saisir ses informations professionnelles et ajouter les documents requis avant d’envoyer sa demande.

![Interface de soumission d’une demande partenaire](<images/chapitre4/Figure 4.8 Interface de soumission d’une demande partenaire.png>)

**Figure 4.8 : Interface de soumission d’une demande partenaire**

### 4.4.2 Interface de traitement des demandes partenaires

Cette interface permet à l’administrateur de consulter les demandes partenaires reçues, d’afficher les détails d’un dossier et de prendre une décision.

![Interface de traitement des demandes partenaires](<images/chapitre4/Figure 4.9 Interface de traitement des demandes partenaires.png>)

**Figure 4.9 : Interface de traitement des demandes partenaires**

### 4.4.3 Interface de création d’un événement

Cette interface permet au partenaire de créer un événement en saisissant les informations principales : titre, description, date, localisation et image de couverture.

![Interface de création d’un événement](<images/chapitre4/Figure 4.10 Interface de création d’un événement.png>)

**Figure 4.10 : Interface de création d’un événement**

### 4.4.4 Interface de contrôle de l’offre événementielle

Cette interface permet à l’administrateur de consulter les événements soumis, de vérifier leurs informations et de prendre une décision d’approbation ou de rejet.

![Interface de contrôle de l’offre événementielle](<images/chapitre4/Figure 4.11 Interface de contrôle de l’offre événementielle.png>)

**Figure 4.11 : Interface de contrôle de l’offre événementielle**

## Conclusion

Dans ce chapitre, nous avons présenté l’étude et la réalisation du Sprint 2, consacré à la gestion des partenaires et des événements. Ce sprint a permis de mettre en place le parcours de demande partenaire, la gestion du profil professionnel, la création et la gestion des événements ainsi que le contrôle administratif de l’offre événementielle.

Nous avons également présenté le diagramme de cas d’utilisation, les descriptions textuelles, le diagramme de classes partiel ainsi que les diagrammes dynamiques associés aux principaux scénarios du sprint.

Le sprint suivant sera consacré à l’exploration, à la personnalisation et aux interactions autour des événements.