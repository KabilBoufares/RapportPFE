# Chapitre 5 : Sprint 3 – Exploration, personnalisation et interactions événementielles

## 5.1 Introduction

Ce chapitre présente le Sprint 3 du projet FESTY. Ce sprint est consacré à l’amélioration de l’expérience utilisateur à travers l’exploration des événements et des artistes, la personnalisation des recommandations, la gestion des favoris, le suivi des stars, le chat événementiel ainsi que la gestion du line-up artistique par les partenaires.

L’objectif principal de ce sprint est de rendre la plateforme plus interactive et plus personnalisée. L’utilisateur peut découvrir des événements adaptés à ses préférences, suivre les artistes qui l’intéressent et interagir autour d’un événement. De son côté, le partenaire peut gérer le line-up artistique de ses événements et proposer de nouvelles stars. L’administrateur intervient pour gérer le catalogue artistique de la plateforme.

## 5.2 Analyse du Sprint 3

Cette section présente l’analyse fonctionnelle du Sprint 3. Ce sprint se concentre sur l’amélioration de l’expérience utilisateur à travers l’exploration des événements et des artistes, la personnalisation des préférences, la consultation des recommandations, la gestion des favoris, le suivi des stars et la participation au chat événementiel.

Il introduit également des fonctionnalités destinées au partenaire, notamment la gestion du line-up artistique d’un événement et la proposition de nouvelles stars. L’administrateur intervient pour gérer le catalogue artistique afin de garantir la cohérence des informations affichées sur la plateforme.

### 5.2.1 Backlog du Sprint 3

Le tableau suivant présente les principales user stories retenues pour le Sprint 3.

| ID | User Story | Tâches principales | Priorité |
|---|---|---|---|
| US-3.1 | En tant que visiteur, je veux explorer les événements et les artistes afin de découvrir le contenu disponible sur la plateforme. | Consulter la liste des événements ; consulter le détail d’un événement ; consulter le profil d’une star. | Must Have |
| US-3.2 | En tant qu’utilisateur, je veux personnaliser mon expérience afin de recevoir un contenu adapté à mes préférences. | Choisir des catégories ; gérer les centres d’intérêt ; enregistrer les préférences utilisateur. | Must Have |
| US-3.3 | En tant qu’utilisateur, je veux consulter des recommandations personnalisées afin de trouver des événements correspondant à mes intérêts. | Analyser les préférences ; exploiter les catégories et centres d’intérêt ; afficher les événements recommandés. | Must Have |
| US-3.4 | En tant qu’utilisateur, je veux gérer mes favoris afin de retrouver facilement les événements qui m’intéressent. | Ajouter un événement aux favoris ; retirer un événement des favoris ; consulter la liste des favoris. | Should Have |
| US-3.5 | En tant qu’utilisateur, je veux suivre une star afin d’être informé de ses événements et de son actualité sur la plateforme. | Consulter le profil d’une star ; suivre une star ; gérer la liste des stars suivies. | Should Have |
| US-3.6 | En tant qu’utilisateur, je veux participer au chat d’un événement afin d’interagir avec les autres participants. | Accéder au chat d’un événement ; envoyer un message ; afficher les messages du chat. | Must Have |
| US-3.7 | En tant que partenaire, je veux gérer le line-up artistique d’un événement afin d’associer des stars à mon événement. | Sélectionner un événement ; consulter le catalogue artistique ; ajouter une star au line-up ; retirer une star du line-up. | Must Have |
| US-3.8 | En tant que partenaire, je veux proposer une nouvelle star afin d’enrichir le catalogue artistique de la plateforme. | Saisir les informations de la star ; soumettre la proposition ; enregistrer la star en attente de validation. | Should Have |
| US-3.9 | En tant qu’administrateur, je veux gérer le catalogue artistique afin de contrôler les stars disponibles sur la plateforme. | Consulter les stars ; ajouter ou modifier une star ; traiter les stars proposées ; mettre à jour leur statut. | Must Have |

**Tableau 5.1 : Backlog du Sprint 3**


### 5.2.2 Diagramme de cas d’utilisation du Sprint 3

La figure 5.1 présente le diagramme de cas d’utilisation du Sprint 3. Ce diagramme met en évidence les principales interactions entre les acteurs et la plateforme FESTY dans le cadre de l’exploration, de la personnalisation et des interactions événementielles.

![Diagramme de cas d’utilisation du Sprint 3](images/use_case_sprint3.png)

**Figure 5.1 : Diagramme de cas d’utilisation du Sprint 3**

Ce diagramme montre que le visiteur peut explorer les événements et les artistes, consulter le détail d’un événement ainsi que le profil d’une star. Après authentification, l’utilisateur peut personnaliser son expérience, consulter les recommandations, gérer ses favoris, suivre une star et participer au chat d’un événement.

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
| Scénario nominal | 1. L’utilisateur accède au détail d’un événement.<br>2. Il ouvre le chat de l’événement.<br>3. Le système vérifie ou enregistre son accès au chat.<br>4. Le système charge les messages actifs du chat.<br>5. Le système affiche l’interface de chat avec les messages existants.<br>6. L’utilisateur saisit un message et l’envoie.<br>7. Le système vérifie le contenu du message et l’accès au chat.<br>8. Le système enregistre le message.<br>9. Le système affiche le message dans le chat. |
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
| Objectif | Permettre à l’administrateur de gérer les stars disponibles dans le catalogue artistique de la plateforme. |
| Précondition | L’administrateur est authentifié au back-office. |
| Postcondition | Le catalogue artistique est mis à jour. |
| Scénario nominal | 1. L’administrateur accède au catalogue artistique.<br>2. Le système affiche la liste des stars disponibles et proposées.<br>3. L’administrateur consulte les informations d’une star.<br>4. Il ajoute, modifie ou traite une star proposée.<br>5. Le système met à jour les informations de la star.<br>6. Le système affiche un message de confirmation. |
| Exceptions | E1 : Les informations de la star sont incomplètes ou invalides.<br>E2 : La mise à jour du catalogue échoue. |

**Tableau 5.6 : Description textuelle du cas d’utilisation « Gérer le catalogue artistique »**

## 5.3 Conception

Cette section présente les éléments de conception du Sprint 3. Elle comprend le diagramme de classes partiel ainsi que les diagrammes de séquence associés aux principaux scénarios du sprint.

### 5.3.1 Diagramme de classes du Sprint 3

Le diagramme de classes du Sprint 3 présente les principales classes liées à l’exploration des événements, à la personnalisation de l’expérience utilisateur, aux favoris, aux stars, au line-up artistique et au chat événementiel.

![Diagramme de classes du Sprint 3](images/class_diagram_sprint3.png)

**Figure 5.2 : Diagramme de classes du Sprint 3**

Ce diagramme montre que l’utilisateur peut gérer ses préférences, consulter des recommandations, ajouter des événements aux favoris, suivre des stars et participer au chat d’un événement. Les catégories et les centres d’intérêt permettent d’affiner les recommandations proposées à l’utilisateur.

Le partenaire intervient dans l’organisation des événements et dans la gestion du line-up artistique. Il peut également proposer une nouvelle star afin d’enrichir le catalogue artistique. L’administrateur assure la gestion de ce catalogue afin de maintenir la cohérence des informations affichées sur la plateforme.

### 5.3.2 Diagrammes de séquence

Les diagrammes de séquence permettent de représenter les échanges entre les acteurs, les interfaces, le back-end et la base de données pour les principaux scénarios du Sprint 3.

Dans ce sprint, nous retenons trois scénarios principaux :

- la personnalisation de l’expérience et la consultation des recommandations ;
- la participation au chat d’un événement ;
- la gestion du line-up artistique d’un événement.

Ces scénarios ont été choisis car ils représentent les fonctionnalités les plus importantes du Sprint 3. Ils couvrent à la fois l’expérience utilisateur, les interactions autour des événements et l’intervention du partenaire dans la gestion artistique de ses événements.

#### Diagramme de séquence : Personnalisation de l’expérience et recommandations

La figure 5.3 présente le scénario de personnalisation de l’expérience utilisateur. L’utilisateur accède à l’espace de préférences, sélectionne ses catégories et centres d’intérêt, puis le système enregistre ces informations afin de proposer des recommandations adaptées.

![Diagramme de séquence du scénario de personnalisation et recommandations](images/sequence_personnalisation_recommandations.png)

**Figure 5.3 : Diagramme de séquence du scénario de personnalisation et recommandations**

#### Diagramme de séquence : Participation au chat d’un événement

La figure 5.4 présente le scénario de participation au chat d’un événement. L’utilisateur accède au détail d’un événement, ouvre l’espace de discussion, saisit un message, puis le système vérifie et enregistre ce message avant de l’afficher dans le chat.

![Diagramme de séquence du scénario de participation au chat d’un événement](images/sequence_chat_evenement.png)

**Figure 5.4 : Diagramme de séquence du scénario de participation au chat d’un événement**

#### Diagramme de séquence : Gestion du line-up artistique

La figure 5.5 présente le scénario de gestion du line-up artistique par le partenaire. Le partenaire sélectionne un événement, consulte le catalogue artistique, puis associe une star à l’événement. Si la star n’existe pas encore dans le catalogue, le partenaire peut proposer une nouvelle star.

![Diagramme de séquence du scénario de gestion du line-up artistique](images/sequence_lineup_artistique.png)

**Figure 5.5 : Diagramme de séquence du scénario de gestion du line-up artistique**

## 5.4 Réalisation

Cette section présente les principales interfaces réalisées durant le Sprint 3. Ces interfaces permettent de concrétiser les fonctionnalités liées à l’exploration des événements, à la personnalisation de l’expérience utilisateur, aux recommandations, aux favoris, au suivi des stars, au chat événementiel et à la gestion du line-up artistique.

### 5.4.1 Interface d’exploration des événements et des artistes

Cette interface permet au visiteur ou à l’utilisateur de consulter les événements disponibles sur la plateforme. Il peut parcourir les événements, consulter leurs informations principales et accéder au détail d’un événement.

![Interface d’exploration des événements](images/interface_exploration_evenements.png)

**Figure 5.6 : Interface d’exploration des événements**

### 5.4.2 Interface de personnalisation de l’expérience

Cette interface permet à l’utilisateur de sélectionner ses catégories et centres d’intérêt. Ces préférences sont utilisées par le système afin de proposer une expérience plus personnalisée et des recommandations adaptées.

![Interface de personnalisation de l’expérience](images/interface_personnalisation.png)

**Figure 5.7 : Interface de personnalisation de l’expérience**

### 5.4.3 Interface des recommandations personnalisées

Cette interface affiche les événements recommandés à l’utilisateur selon ses préférences, ses centres d’intérêt, ses favoris et les stars suivies.

![Interface des recommandations personnalisées](images/interface_recommandations.png)

**Figure 5.8 : Interface des recommandations personnalisées**

### 5.4.4 Interface de gestion des favoris

Cette interface permet à l’utilisateur de consulter les événements ajoutés à ses favoris. Il peut retrouver rapidement les événements qui l’intéressent et accéder à leurs détails.

![Interface de gestion des favoris](images/interface_favoris.png)

**Figure 5.9 : Interface de gestion des favoris**

### 5.4.5 Interface de consultation du profil d’une star

Cette interface permet à l’utilisateur de consulter les informations d’une star, notamment son nom, sa description et les événements associés. L’utilisateur peut également suivre la star afin de personnaliser davantage son expérience.

![Interface de consultation du profil d’une star](images/interface_profil_star.png)

**Figure 5.10 : Interface de consultation du profil d’une star**

### 5.4.6 Interface du chat événementiel

Cette interface permet à l’utilisateur de participer à une discussion autour d’un événement. Il peut consulter les messages existants et envoyer un nouveau message dans le chat.

![Interface du chat événementiel](images/interface_chat_evenement.png)

**Figure 5.11 : Interface du chat événementiel**

### 5.4.7 Interface de gestion du line-up artistique

Cette interface permet au partenaire de gérer les stars associées à son événement. Il peut consulter le line-up actuel, ajouter une star existante ou proposer une nouvelle star si elle n’est pas encore disponible dans le catalogue artistique.

![Interface de gestion du line-up artistique](images/interface_lineup_artistique.png)

**Figure 5.12 : Interface de gestion du line-up artistique**

### 5.4.8 Interface de gestion du catalogue artistique

Cette interface permet à l’administrateur de gérer les stars disponibles sur la plateforme. Il peut consulter le catalogue artistique, modifier les informations d’une star et traiter les propositions envoyées par les partenaires.

![Interface de gestion du catalogue artistique](images/interface_catalogue_artistique.png)

**Figure 5.13 : Interface de gestion du catalogue artistique**

## Conclusion

Au cours de ce chapitre, nous avons présenté l’étude et la réalisation du Sprint 3 du projet FESTY. Ce sprint a permis d’enrichir l’expérience utilisateur à travers l’exploration des événements et des artistes, la personnalisation des préférences, la consultation des recommandations, la gestion des favoris, le suivi des stars et la participation au chat événementiel.

Nous avons également traité les fonctionnalités liées au partenaire, notamment la gestion du line-up artistique et la proposition de nouvelles stars. L’administrateur intervient à travers la gestion du catalogue artistique afin de maintenir la cohérence des informations affichées sur la plateforme.

Ce sprint constitue une étape importante dans l’amélioration de l’interactivité et de la personnalisation de FESTY. Le chapitre suivant sera consacré aux fonctionnalités liées à la billetterie, à la réservation, au paiement et au contrôle d’accès aux événements.