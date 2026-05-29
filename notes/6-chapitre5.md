# Chapitre 5 : Sprint 3 — Exploration, personnalisation et interactions événementielles

## 5.1 Introduction

Ce chapitre présente l’étude et la réalisation du Sprint 3 du projet FESTY. Ce sprint est consacré à l’exploration des événements et des stars, à la personnalisation de l’expérience utilisateur, aux recommandations, aux favoris, au suivi des stars et au chat événementiel.

Il couvre également la gestion du line-up artistique par le partenaire, la proposition de nouvelles stars et la gestion du catalogue artistique par l’administrateur. Nous présentons d’abord le Sprint Backlog, puis l’analyse fonctionnelle à travers le diagramme de cas d’utilisation et les descriptions textuelles. Ensuite, la conception est détaillée à l’aide du diagramme de classes, des diagrammes de séquence et des diagrammes d’activité. Enfin, la partie réalisation expose les principales interfaces développées durant ce sprint.

## 5.2 Sprint Backlog

Le Sprint 3 vise à renforcer l’interactivité de FESTY et à améliorer la pertinence du contenu proposé aux utilisateurs. Le tableau 5.1 présente les principales user stories retenues pour ce sprint [REF-SCRUM].

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

Pour faciliter la lecture, les fonctionnalités du Sprint 3 sont regroupées en trois axes : l’exploration et la personnalisation de l’expérience utilisateur, les interactions autour des événements, et la gestion artistique par le partenaire et l’administrateur.

## 5.3 Analyse fonctionnelle

L’analyse fonctionnelle précise les interactions entre les acteurs du Sprint 3 et les fonctionnalités liées à l’exploration, à la personnalisation et aux échanges autour des événements. Le Visiteur explore les événements et les stars. L’Utilisateur personnalise son expérience, consulte les recommandations, gère ses favoris, suit des stars et participe au chat événementiel. Le Partenaire gère le line-up artistique et propose de nouvelles stars, tandis que l’Administrateur contrôle le catalogue artistique.

### 5.3.1 Diagramme de cas d’utilisation

La figure 5.1 présente les principales interactions entre les acteurs et la plateforme FESTY durant le Sprint 3.

![Diagramme de cas d’utilisation du Sprint 3](<images/chapitre5/Figure 5.1 Diagramme de cas d’utilisation du Sprint 3.png>)

**Figure 5.1 : Diagramme de cas d’utilisation du Sprint 3**

Ce diagramme montre que le visiteur peut consulter les événements et les stars. Après authentification, l’utilisateur accède aux fonctionnalités personnalisées et interactives. Le partenaire intervient dans la gestion artistique des événements, tandis que l’administrateur assure la cohérence du catalogue artistique.

### 5.3.2 Description textuelle des cas d’utilisation

Les tableaux suivants décrivent les principaux cas d’utilisation du Sprint 3.

Les cas d’utilisation détaillés ci-dessous correspondent aux scénarios les plus représentatifs du sprint. Les fonctionnalités de favoris, de suivi des stars et de recommandations sont intégrées dans le parcours de personnalisation et d’exploration.

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

## 5.4 Conception

La conception présente les éléments structurels et dynamiques nécessaires à l’exploration, à la personnalisation et aux interactions événementielles.

### 5.4.1 Diagramme de classes

La figure 5.2 présente les classes liées aux événements, aux préférences, aux recommandations, aux favoris, aux stars, au line-up artistique et au chat événementiel.

![Diagramme de classes du Sprint 3](<images/chapitre5/Figure 5.2 Diagramme de classes du Sprint 3.png>)

**Figure 5.2 : Diagramme de classes du Sprint 3**

L’utilisateur peut gérer ses préférences, consulter des recommandations, ajouter des événements aux favoris, suivre des stars et participer au chat. Le partenaire gère le line-up artistique et peut proposer une nouvelle star. L’administrateur assure la validation et la cohérence du catalogue artistique.

### 5.4.2 Diagrammes de séquence

Les diagrammes de séquence représentent les principaux échanges entre les acteurs, les interfaces, le back-end et la base de données.

#### Diagramme de séquence : Personnalisation de l’expérience et recommandations

La figure 5.3 décrit la personnalisation de l’expérience. L’utilisateur sélectionne ses catégories et centres d’intérêt, puis le système enregistre ces données afin de proposer des recommandations adaptées.

![Diagramme de séquence du scénario de personnalisation et recommandations](<images/chapitre5/Figure 5.3 Diagramme de séquence du scénario de personnalisation et recommandations.png>)

**Figure 5.3 : Diagramme de séquence du scénario de personnalisation et recommandations**

#### Diagramme de séquence : Participation au chat d’un événement

La figure 5.4 présente la participation au chat d’un événement. L’utilisateur ouvre l’espace de discussion, envoie un message, puis le système vérifie et enregistre ce message.

![Diagramme de séquence du scénario de participation au chat d’un événement](<images/chapitre5/Figure 5.4 Diagramme de séquence du scénario de participation au chat d’un événement.png>)

**Figure 5.4 : Diagramme de séquence du scénario de participation au chat d’un événement**

#### Diagramme de séquence : Gestion du line-up artistique

La figure 5.5 présente la gestion du line-up artistique. Le partenaire sélectionne un événement, consulte le catalogue artistique et associe une star à l’événement.

![Diagramme de séquence du scénario de gestion du line-up artistique](<images/chapitre5/Figure 5.5 Diagramme de séquence du scénario de gestion du line-up artistique.png>)

**Figure 5.5 : Diagramme de séquence du scénario de gestion du line-up artistique**

### 5.4.3 Diagrammes d’activité

Les diagrammes d’activité complètent la conception en décrivant la proposition d’une nouvelle star et le traitement administratif du catalogue artistique.

#### Diagramme d’activité : Proposer une nouvelle star

La figure 5.6 présente le processus de proposition d’une star absente du catalogue. Le partenaire saisit les informations nécessaires, puis le système vérifie les données et enregistre la proposition en attente de validation.

![Diagramme d’activité du scénario de proposition d’une nouvelle star](<images/chapitre5/Figure 5.6 Diagramme d’activité du scénario de proposition d’une nouvelle star.png>)

**Figure 5.6 : Diagramme d’activité du scénario de proposition d’une nouvelle star**

#### Diagramme d’activité : Gérer le catalogue artistique

La figure 5.7 présente le traitement d’une star proposée. L’administrateur sélectionne la proposition, puis l’approuve ou la rejette avant la mise à jour du catalogue.

![Diagramme d’activité du scénario de gestion du catalogue artistique](<images/chapitre5/Figure 5.7 Diagramme d’activité du scénario de gestion du catalogue artistique.png>)

**Figure 5.7 : Diagramme d’activité du scénario de gestion du catalogue artistique**

## 5.5 Réalisation

Cette section présente les principales interfaces réalisées durant le Sprint 3.

La figure 5.8 illustre l’interface d’exploration des événements. Elle permet au visiteur ou à l’utilisateur de consulter les événements disponibles et d’accéder à leurs détails.

![Interface d’exploration des événements](<images/chapitre5/Figure 5.8 Interface d’exploration des événements.png>)

**Figure 5.8 : Interface d’exploration des événements**

La figure 5.9 présente l’interface de personnalisation de l’expérience, utilisée pour sélectionner les catégories et centres d’intérêt.

![Interface de personnalisation de l’expérience](<images/chapitre5/Figure 5.9 Interface de personnalisation de l’expérience.png>)

**Figure 5.9 : Interface de personnalisation de l’expérience**

La figure 5.10 montre l’interface du chat événementiel, qui permet à l’utilisateur de consulter les messages et d’envoyer de nouveaux messages.

![Interface du chat événementiel](<images/chapitre5/Figure 5.10 Interface du chat événementiel.png>)

**Figure 5.10 : Interface du chat événementiel**

La figure 5.11 présente l’interface de gestion du line-up artistique. Elle permet au partenaire de consulter les stars associées à son événement, d’ajouter une star existante ou d’en proposer une nouvelle.

![Interface de gestion du line-up artistique](<images/chapitre5/Figure 5.11 Interface de gestion du line-up artistique.png>)

**Figure 5.11 : Interface de gestion du line-up artistique**

## 5.6 Conclusion

Dans ce chapitre, nous avons présenté l’étude et la réalisation du Sprint 3, consacré à l’exploration, à la personnalisation et aux interactions événementielles. Nous avons commencé par le Sprint Backlog, puis l’analyse fonctionnelle et la conception.

Ce sprint a permis d’améliorer l’expérience utilisateur grâce aux recommandations, aux favoris, au suivi des stars et au chat événementiel. Il a également introduit la gestion du line-up artistique et du catalogue des stars. Le chapitre suivant sera consacré à la billetterie, au paiement, à la revente et au contrôle d’accès.