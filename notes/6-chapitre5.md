# Chapitre 5 : Étude et réalisation du Sprint 3 — Exploration, personnalisation et interactions événementielles

## 5.1 Introduction

Ce chapitre présente le Sprint 3 du projet FESTY. Il porte sur l’exploration des événements et des stars, la personnalisation de l’expérience, les recommandations, les favoris, le suivi des stars et le chat événementiel.

Ce sprint couvre également la gestion du line-up artistique par le partenaire, la proposition de nouvelles stars et la gestion du catalogue artistique par l’administrateur. Son objectif est de renforcer l’interactivité de la plateforme tout en améliorant la pertinence du contenu proposé aux utilisateurs.

## 5.2 Analyse du Sprint 3

Cette section présente l’analyse fonctionnelle du Sprint 3. Elle met en évidence les interactions liées à l’exploration, à la personnalisation et aux échanges autour des événements.

Le visiteur peut explorer les événements et les stars. Après authentification, l’utilisateur personnalise son expérience, consulte des recommandations, gère ses favoris, suit des stars et participe au chat événementiel. Le partenaire gère le line-up artistique et peut proposer une nouvelle star, tandis que l’administrateur traite les stars proposées afin d’assurer la cohérence du catalogue artistique.

### 5.2.1 Backlog du Sprint 3

Le tableau suivant présente les principales user stories retenues pour le Sprint 3 [REF-SCRUM].

| ID | User Story | Tâches principales | Priorité |
|---|---|---|---|
| US-3.1 | En tant que visiteur, je veux explorer les événements et les stars afin de découvrir le contenu disponible sur la plateforme. | Consulter la liste des événements ; consulter le détail d’un événement ; consulter le profil d’une star. | Must Have |
| US-3.2 | En tant qu’utilisateur, je veux personnaliser mon expérience afin de recevoir un contenu adapté à mes préférences. | Choisir des catégories ; gérer les centres d’intérêt ; enregistrer les préférences utilisateur. | Must Have |
| US-3.3 | En tant qu’utilisateur, je veux consulter des recommandations personnalisées afin de trouver des événements correspondant à mes intérêts. | Analyser les préférences ; exploiter les catégories et centres d’intérêt ; afficher les événements recommandés. | Must Have |
| US-3.4 | En tant qu’utilisateur, je veux gérer mes favoris afin de retrouver facilement les événements qui m’intéressent. | Ajouter un événement aux favoris ; retirer un événement des favoris ; consulter la liste des favoris. | Should Have |
| US-3.5 | En tant qu’utilisateur, je veux suivre une star afin d’être informé de ses événements et de son actualité sur la plateforme. | Consulter le profil d’une star ; suivre une star ; gérer la liste des stars suivies. | Should Have |
| US-3.6 | En tant qu’utilisateur, je veux participer au chat d’un événement afin d’interagir avec les autres participants. | Accéder au chat d’un événement ; envoyer un message ; afficher les messages du chat. | Must Have |
| US-3.7 | En tant que partenaire, je veux gérer le line-up artistique d’un événement afin d’associer des stars à mon événement. | Sélectionner un événement ; consulter le catalogue artistique ; ajouter une star au line-up ; retirer une star du line-up. | Must Have |
| US-3.8 | En tant que partenaire, je veux proposer une nouvelle star afin d’enrichir le catalogue artistique de la plateforme. | Rechercher une star dans le catalogue ; saisir les informations de la star ; soumettre la proposition ; enregistrer la star en attente de validation. | Should Have |
| US-3.9 | En tant qu’administrateur, je veux gérer le catalogue artistique afin de contrôler les stars disponibles sur la plateforme. | Consulter les stars disponibles et proposées ; sélectionner une star proposée ; approuver ou rejeter la proposition ; mettre à jour son statut. | Must Have |

**Tableau 5.1 : Backlog du Sprint 3**

### 5.2.2 Diagramme de cas d’utilisation du Sprint 3

La figure 5.1 présente le diagramme de cas d’utilisation du Sprint 3. Ce diagramme met en évidence les principales interactions entre les acteurs et la plateforme FESTY dans le cadre de l’exploration, de la personnalisation et des interactions événementielles.

![Diagramme de cas d’utilisation du Sprint 3](<images/chapitre5/Figure 5.1 Diagramme de cas d’utilisation du Sprint 3.png>)

**Figure 5.1 : Diagramme de cas d’utilisation du Sprint 3**

Ce diagramme montre que le visiteur peut explorer les événements et les stars, consulter le détail d’un événement ainsi que le profil d’une star. Après authentification, l’utilisateur peut personnaliser son expérience, consulter les recommandations, gérer ses favoris, suivre une star et participer au chat d’un événement.

Le partenaire intervient principalement dans la gestion du line-up artistique d’un événement et peut proposer une nouvelle star. L’administrateur, quant à lui, assure la gestion du catalogue artistique de la plateforme.

### 5.2.3 Description textuelle des cas d’utilisation

Dans cette section, nous présentons les descriptions textuelles des principaux cas d’utilisation du Sprint 3.

#### Cas d’utilisation : Personnaliser son expérience

| Élément | Description |
|---|---|
| Cas d’utilisation | Personnaliser son expérience |
| Acteur principal | Utilisateur |
| Objectif | Permettre à l’utilisateur de définir ses préférences afin d’obtenir une expérience plus adaptée. |
| Précondition | L’utilisateur est authentifié. |
| Postcondition | Les préférences de l’utilisateur sont enregistrées. |
| Scénario nominal | 1. L’utilisateur accède à l’espace de personnalisation.<br>2. Le système affiche les catégories et centres d’intérêt disponibles.<br>3. L’utilisateur sélectionne ses préférences.<br>4. Le système enregistre les préférences.<br>5. Le système affiche des recommandations adaptées. |
| Exceptions | E1 : Aucune préférence n’est sélectionnée.<br>E2 : L’enregistrement des préférences échoue. |

**Tableau 5.2 : Description textuelle du cas d’utilisation « Personnaliser son expérience »**

#### Cas d’utilisation : Participer au chat d’un événement

| Élément | Description |
|---|---|
| Cas d’utilisation | Participer au chat d’un événement |
| Acteur principal | Utilisateur |
| Objectif | Permettre à l’utilisateur de rejoindre le chat d’un événement, consulter les messages existants et envoyer un message afin d’interagir avec les autres participants. |
| Précondition | L’utilisateur est authentifié et consulte le détail d’un événement. |
| Postcondition | L’utilisateur rejoint le chat de l’événement et, en cas d’envoi réussi, le message est enregistré puis affiché dans le chat. |
| Scénario nominal | 1. L’utilisateur accède au détail d’un événement.<br>2. Il ouvre le chat de l’événement.<br>3. Le système vérifie son accès au chat.<br>4. Le système charge les messages actifs du chat.<br>5. Le système affiche l’interface de chat avec les messages existants.<br>6. L’utilisateur saisit un message et l’envoie.<br>7. Le système vérifie le contenu du message et l’accès au chat.<br>8. Le système enregistre le message.<br>9. Le système affiche le message dans le chat. |
| Exceptions | E1 : Le message saisi est vide.<br>E2 : L’enregistrement du message échoue.<br>E3 : L’utilisateur n’est pas autorisé à envoyer le message. |

**Tableau 5.3 : Description textuelle du cas d’utilisation « Participer au chat d’un événement »**

#### Cas d’utilisation : Gérer le line-up artistique

| Élément | Description |
|---|---|
| Cas d’utilisation | Gérer le line-up artistique |
| Acteur principal | Partenaire |
| Objectif | Permettre au partenaire d’associer des stars à un événement afin de définir son line-up artistique. |
| Précondition | Le partenaire est authentifié et dispose d’un événement enregistré. |
| Postcondition | Le line-up artistique de l’événement est mis à jour. |
| Scénario nominal | 1. Le partenaire accède à l’espace de gestion de ses événements.<br>2. Il sélectionne un événement à modifier.<br>3. Le système affiche les informations de l’événement et le line-up actuel.<br>4. Le partenaire consulte le catalogue artistique.<br>5. Il ajoute une star au line-up de l’événement.<br>6. Le système enregistre la modification.<br>7. Le système affiche un message de confirmation. |
| Exceptions | E1 : La star sélectionnée est déjà associée à l’événement.<br>E2 : L’enregistrement du line-up échoue. |

**Tableau 5.4 : Description textuelle du cas d’utilisation « Gérer le line-up artistique »**

#### Cas d’utilisation : Proposer une nouvelle star

| Élément | Description |
|---|---|
| Cas d’utilisation | Proposer une nouvelle star |
| Acteur principal | Partenaire |
| Objectif | Permettre au partenaire de proposer une star qui n’existe pas encore dans le catalogue artistique. |
| Précondition | Le partenaire est authentifié et accède à l’espace de gestion du line-up artistique. |
| Postcondition | La nouvelle star est enregistrée avec un statut en attente de validation. |
| Scénario nominal | 1. Le partenaire recherche une star dans le catalogue artistique.<br>2. La star recherchée n’est pas disponible.<br>3. Le partenaire choisit de proposer une nouvelle star.<br>4. Il saisit les informations de la star.<br>5. Le système vérifie les données saisies.<br>6. Le système enregistre la proposition avec le statut en attente.<br>7. Le système affiche un message de confirmation. |
| Exceptions | E1 : Les informations saisies sont incomplètes ou invalides.<br>E2 : La star proposée existe déjà dans le catalogue. |

**Tableau 5.5 : Description textuelle du cas d’utilisation « Proposer une nouvelle star »**

#### Cas d’utilisation : Gérer le catalogue artistique

| Élément | Description |
|---|---|
| Cas d’utilisation | Gérer le catalogue artistique |
| Acteur principal | Administrateur |
| Objectif | Permettre à l’administrateur de maintenir la qualité du catalogue artistique en consultant les stars disponibles et en traitant les stars proposées par les partenaires. |
| Précondition | L’administrateur est authentifié au back-office. |
| Postcondition | Le catalogue artistique est mis à jour après validation ou rejet d’une star proposée. |
| Scénario nominal | 1. L’administrateur accède au catalogue artistique.<br>2. Le système affiche la liste des stars disponibles et des stars proposées.<br>3. L’administrateur sélectionne une star proposée par un partenaire.<br>4. Le système affiche les informations de la star proposée.<br>5. L’administrateur choisit une décision : approuver ou rejeter la proposition.<br>6. Le système met à jour le statut de la star selon la décision prise.<br>7. Le système affiche un message de confirmation. |
| Exceptions | E1 : Les informations de la star proposée sont incomplètes ou invalides.<br>E2 : La mise à jour du catalogue échoue. |

**Tableau 5.6 : Description textuelle du cas d’utilisation « Gérer le catalogue artistique »**

Dans le diagramme d’activité correspondant, seule l’exception liée à l’échec de mise à jour est représentée afin de conserver une figure simple et lisible.

## 5.3 Conception

Cette section présente les éléments de conception du Sprint 3. Elle comprend le diagramme de classes partiel, les diagrammes de séquence et les diagrammes d’activité associés aux principaux scénarios du sprint.

### 5.3.1 Diagramme de classes du Sprint 3

Le diagramme de classes du Sprint 3 présente les principales classes liées à l’exploration des événements, à la personnalisation de l’expérience utilisateur, aux favoris, aux stars, au line-up artistique et au chat événementiel.

![Diagramme de classes du Sprint 3](<images/chapitre5/Figure 5.2 Diagramme de classes du Sprint 3.png>)

**Figure 5.2 : Diagramme de classes du Sprint 3**

Ce diagramme montre que l’utilisateur peut gérer ses préférences, consulter des recommandations, ajouter des événements aux favoris, suivre des stars et participer au chat d’un événement. Les catégories et les centres d’intérêt permettent d’affiner les recommandations proposées à l’utilisateur.

Le partenaire intervient dans l’organisation des événements et dans la gestion du line-up artistique. Il peut également proposer une nouvelle star afin d’enrichir le catalogue artistique. L’administrateur assure la gestion de ce catalogue afin de maintenir la cohérence des informations affichées sur la plateforme.

### 5.3.2 Diagrammes de séquence

Les diagrammes de séquence permettent de représenter les échanges entre les acteurs, les interfaces, le back-end et la base de données pour les principaux scénarios du Sprint 3.

Dans ce sprint, nous retenons trois scénarios principaux :

- la personnalisation de l’expérience et la consultation des recommandations ;
- la participation au chat d’un événement ;
- la gestion du line-up artistique d’un événement.

Ces scénarios ont été choisis car ils représentent les principaux flux dynamiques du Sprint 3. Ils couvrent à la fois l’expérience utilisateur, les interactions autour des événements et l’intervention du partenaire dans la gestion artistique de ses événements.

#### Diagramme de séquence : Personnalisation de l’expérience et recommandations

La figure 5.3 présente le scénario de personnalisation de l’expérience utilisateur. L’utilisateur accède à l’espace de préférences, sélectionne ses catégories et centres d’intérêt, puis le système enregistre ces informations afin de proposer des recommandations adaptées.

![Diagramme de séquence du scénario de personnalisation et recommandations](<images/chapitre5/Figure 5.3 Diagramme de séquence du scénario de personnalisation et recommandations.png>)

**Figure 5.3 : Diagramme de séquence du scénario de personnalisation et recommandations**

#### Diagramme de séquence : Participation au chat d’un événement

La figure 5.4 présente le scénario de participation au chat d’un événement. L’utilisateur accède au détail d’un événement, ouvre l’espace de discussion, saisit un message, puis le système vérifie et enregistre ce message avant de l’afficher dans le chat.

![Diagramme de séquence du scénario de participation au chat d’un événement](<images/chapitre5/Figure 5.4 Diagramme de séquence du scénario de participation au chat d’un événement.png>)

**Figure 5.4 : Diagramme de séquence du scénario de participation au chat d’un événement**

#### Diagramme de séquence : Gestion du line-up artistique

La figure 5.5 présente le scénario de gestion du line-up artistique par le partenaire. Le partenaire sélectionne un événement, consulte le catalogue artistique, puis associe une star à l’événement. Si la star n’existe pas encore dans le catalogue, ce traitement est détaillé dans le diagramme d’activité « Proposer une nouvelle star ».

![Diagramme de séquence du scénario de gestion du line-up artistique](<images/chapitre5/Figure 5.5 Diagramme de séquence du scénario de gestion du line-up artistique.png>)

**Figure 5.5 : Diagramme de séquence du scénario de gestion du line-up artistique**

### 5.3.3 Diagrammes d’activité du Sprint 3

Cette section complète les diagrammes de séquence par deux diagrammes d’activité liés à la proposition d’une nouvelle star et au traitement administratif du catalogue artistique.

#### Diagramme d’activité : Proposer une nouvelle star

La figure 5.6 présente le processus permettant au partenaire de proposer une star absente du catalogue artistique. Le partenaire recherche d’abord la star. Si elle existe, le système l’affiche. Sinon, le partenaire saisit les informations nécessaires, puis le système vérifie les données et enregistre la proposition avec un statut en attente de validation.

![Diagramme d’activité du scénario de proposition d’une nouvelle star](<images/chapitre5/Figure 5.6 Diagramme d’activité du scénario de proposition d’une nouvelle star.png>)

**Figure 5.6 : Diagramme d’activité du scénario de proposition d’une nouvelle star**

#### Diagramme d’activité : Gérer le catalogue artistique

La figure 5.7 présente le processus de traitement d’une star proposée par un partenaire. L’administrateur consulte le catalogue artistique, sélectionne une star proposée, puis choisit de l’approuver ou de la rejeter. Le système met ensuite à jour son statut et affiche un message de confirmation ou d’erreur.

![Diagramme d’activité du scénario de gestion du catalogue artistique](<images/chapitre5/Figure 5.7 Diagramme d’activité du scénario de gestion du catalogue artistique.png>)

**Figure 5.7 : Diagramme d’activité du scénario de gestion du catalogue artistique**

## 5.4 Réalisation

Cette section présente les principales interfaces réalisées dans le cadre du Sprint 3. Les emplacements des figures de réalisation sont préparés pour ajout manuel des captures.

### 5.4.1 Interface d’exploration des événements

Cette interface permet au visiteur ou à l’utilisateur de consulter les événements disponibles sur la plateforme. Elle donne accès aux informations principales et au détail d’un événement.

![Interface d’exploration des événements](<images/chapitre5/Figure 5.8 Interface d’exploration des événements.png>)

**Figure 5.8 : Interface d’exploration des événements**

### 5.4.2 Interface de personnalisation de l’expérience

Cette interface permet à l’utilisateur de sélectionner ses catégories et centres d’intérêt. Ces préférences servent à personnaliser l’expérience et les recommandations.

![Interface de personnalisation de l’expérience](<images/chapitre5/Figure 5.9 Interface de personnalisation de l’expérience.png>)

**Figure 5.9 : Interface de personnalisation de l’expérience**

### 5.4.3 Interface du chat événementiel

Cette interface permet à l’utilisateur de participer à une discussion autour d’un événement. Il peut consulter les messages existants et envoyer un nouveau message.

![Interface du chat événementiel](<images/chapitre5/Figure 5.10 Interface du chat événementiel.png>)

**Figure 5.10 : Interface du chat événementiel**

### 5.4.4 Interface de gestion du line-up artistique

Cette interface permet au partenaire de gérer les stars associées à son événement. Il peut consulter le line-up actuel et ajouter une star existante ou proposer une nouvelle star.

![Interface de gestion du line-up artistique](<images/chapitre5/Figure 5.11 Interface de gestion du line-up artistique.png>)

**Figure 5.11 : Interface de gestion du line-up artistique**

## Conclusion

Au cours de ce chapitre, nous avons présenté l’étude et la réalisation du Sprint 3 du projet FESTY. Ce sprint a permis de couvrir l’exploration des événements et des stars, la personnalisation de l’expérience, les recommandations, la gestion des favoris, le suivi des stars, le chat événementiel, la gestion du line-up artistique, la proposition de nouvelles stars et la gestion du catalogue artistique par l’administrateur.

Ce sprint constitue ainsi une étape importante dans l’amélioration de l’interactivité et de la personnalisation de FESTY. Le chapitre suivant sera consacré aux fonctionnalités liées à la billetterie, à la réservation, au paiement et au contrôle d’accès aux événements.