# Chapitre 5 : Étude et réalisation du Sprint 3 — Exploration, personnalisation et interactions autour des événements

## Introduction

Ce chapitre présente le troisième sprint du projet FESTY, consacré à l’exploration des événements, à la personnalisation de l’expérience utilisateur et aux interactions autour des événements.

Ce sprint permet aux visiteurs de découvrir les événements et les artistes disponibles sur la plateforme. Il permet également aux utilisateurs authentifiés de gérer leurs préférences, leurs favoris, leurs stars suivies, leurs recommandations et leurs interactions communautaires.

Il introduit aussi la gestion du line-up artistique par le partenaire, ainsi que la modération des stars proposées par l’administrateur.

Dans ce chapitre, nous présentons le Sprint Backlog, l’analyse fonctionnelle, la conception et les principales interfaces réalisées.

## 5.1 Sprint Backlog

Le Sprint Backlog regroupe les fonctionnalités retenues pour le troisième sprint. Ce sprint s’articule autour de l’exploration des événements, de la personnalisation de l’expérience utilisateur, des interactions autour des événements et de la gestion du line-up artistique.

Il ne couvre pas les fonctionnalités de réservation, de paiement, de remboursement ou de contrôle d’accès. Ces modules seront traités dans les sprints suivants afin de conserver un découpage progressif du projet.

### 5.1.1 Objectif du sprint

L’objectif du Sprint 3 est de permettre aux visiteurs et aux utilisateurs d’explorer les événements publiés, de consulter les artistes associés, de personnaliser leur expérience et d’interagir autour des événements.

Ce sprint permet également au partenaire de gérer le line-up artistique de ses événements. L’administrateur intervient pour modérer les stars proposées par les partenaires avant leur affichage public.

### 5.1.2 Backlog du sprint

Le tableau suivant présente le backlog du troisième sprint. Les user stories sont organisées selon les acteurs concernés, les tâches principales à réaliser, la priorité et l’estimation prévue.

| ID | User Story | Tâches principales | Priorité | Estimation |
|---|---|---|---|---|
| US-3.1 | En tant que visiteur, je veux explorer les événements et les artistes afin de découvrir les offres disponibles. | Afficher les événements publiés ; rechercher et filtrer les événements ; consulter les détails d’un événement ; consulter les artistes associés. | Must Have | 3 jours |
| US-3.2 | En tant qu’utilisateur, je veux personnaliser mon expérience afin d’obtenir un contenu adapté à mes préférences. | Gérer les centres d’intérêts ; gérer les favoris ; gérer les stars suivies ; consulter les recommandations. | Should Have | 3 jours |
| US-3.3 | En tant qu’utilisateur, je veux interagir autour des événements afin de participer à l’expérience communautaire. | Consulter et publier des avis ; rejoindre le chat d’un événement ; consulter les messages ; envoyer un message. | Should Have | 3 jours |
| US-3.4 | En tant que partenaire, je veux gérer le line-up artistique de mes événements afin de présenter les stars associées. | Consulter le line-up ; associer une star existante ; retirer une star d’un événement. | Should Have | 2 jours |
| US-3.5 | En tant que partenaire, je veux proposer une nouvelle star afin de l’ajouter au catalogue si elle n’existe pas encore. | Saisir les informations de la star ; envoyer la proposition ; attendre la validation administrative. | Should Have | 2 jours |
| US-3.6 | En tant qu’administrateur, je veux modérer les stars proposées afin de maintenir la qualité du catalogue artistique. | Consulter les propositions ; approuver une star ; rejeter une star avec motif. | Should Have | 2 jours |

**Tableau 5.1 : Sprint Backlog du Sprint 3**

## 5.2 Analyse fonctionnelle

L’analyse fonctionnelle du Sprint 3 permet de préciser les fonctionnalités liées à l’exploration, à la personnalisation et aux interactions autour des événements.

Cette analyse s’appuie sur le diagramme de cas d’utilisation global présenté dans le chapitre 2. Le diagramme du Sprint 3 représente donc un raffinement partiel de ce diagramme global, limité aux fonctionnalités réalisées durant cette itération.

### 5.2.1 Diagramme de cas d’utilisation du Sprint 3

La figure 5.1 présente le diagramme de cas d’utilisation du Sprint 3. Elle met en évidence les grands blocs fonctionnels réalisés durant cette itération, ainsi que les acteurs concernés.

Le visiteur peut explorer les événements et les artistes visibles sur la plateforme. L’utilisateur authentifié peut personnaliser son expérience et interagir autour des événements. Le partenaire intervient dans la gestion du line-up artistique, tandis que l’administrateur assure la modération des stars proposées.

![Diagramme de cas d’utilisation du Sprint 3](images/use_case_sprint3.png)

**Figure 5.1 : Diagramme de cas d’utilisation du Sprint 3**

Comme le montre la figure 5.1, ce sprint ne couvre pas toutes les fonctionnalités de la plateforme. Les modules de réservation, de paiement, de remboursement, de scan et de suivi financier ne sont pas représentés dans ce diagramme, car ils appartiennent aux sprints suivants.

### 5.2.2 Raffinement des cas d’utilisation

Le tableau suivant présente le raffinement des principaux cas d’utilisation du Sprint 3. Il permet de préciser les sous-fonctionnalités associées à chaque cas général sans surcharger le diagramme.

| ID | Acteur principal | Cas d’utilisation | Sous-fonctionnalités associées |
|---|---|---|---|
| UC3.1 | Visiteur | Explorer les événements et les artistes | Rechercher un événement, filtrer les événements, consulter le détail d’un événement, consulter les stars et le line-up. |
| UC3.2 | Utilisateur | Personnaliser son expérience | Gérer les centres d’intérêts, gérer les favoris, gérer les stars suivies et consulter les recommandations. |
| UC3.3 | Utilisateur | Interagir autour des événements | Consulter et publier des avis, rejoindre le chat d’un événement, consulter les messages et envoyer un message. |
| UC3.4 | Partenaire | Gérer le line-up artistique | Consulter le line-up, associer une star existante à un événement et retirer une star du line-up. |
| UC3.5 | Partenaire | Proposer une nouvelle star | Saisir les informations d’une star absente du catalogue et soumettre la proposition à la validation administrative. |
| UC3.6 | Administrateur | Modérer les stars proposées | Consulter les propositions de stars, approuver une proposition ou la rejeter avec motif. |

**Tableau 5.2 : Raffinement des cas d’utilisation du Sprint 3**

Ce raffinement permet de garder le diagramme lisible tout en précisant les fonctionnalités couvertes par chaque cas d’utilisation. Les cas les plus importants sont ensuite décrits textuellement afin de présenter leurs scénarios principaux et alternatifs.

### 5.2.3 Description textuelle des cas d’utilisation principaux

Cette section présente la description textuelle des principaux cas d’utilisation du Sprint 3. Les descriptions restent synthétiques afin de préciser les scénarios essentiels sans surcharger le chapitre.

#### Cas d’utilisation « Explorer les événements et les artistes »

| Élément | Description |
|---|---|
| Cas d’utilisation | Explorer les événements et les artistes |
| Acteur principal | Visiteur |
| Objectif | Permettre au visiteur de découvrir les événements publiés et les artistes visibles sur la plateforme. |
| Précondition | Les événements et les stars doivent être publiés ou visibles publiquement. |
| Postcondition | Le visiteur consulte les événements, les détails d’un événement ou les stars associées. |
| Scénario nominal | 1. Le visiteur accède à l’interface d’exploration. <br> 2. Le système affiche les événements publiés. <br> 3. Le visiteur applique une recherche ou un filtre. <br> 4. Le système affiche les résultats correspondants. <br> 5. Le visiteur sélectionne un événement. <br> 6. Le système affiche le détail de l’événement, ainsi que les stars associées. |
| Scénarios alternatifs | Aucun résultat trouvé : le système affiche un message indiquant qu’aucun événement ne correspond aux critères. <br> Star indisponible : le système n’affiche pas les stars masquées ou non validées. |

**Tableau 5.3 : Description textuelle du cas d’utilisation « Explorer les événements et les artistes »**

#### Cas d’utilisation « Personnaliser son expérience »

| Élément | Description |
|---|---|
| Cas d’utilisation | Personnaliser son expérience |
| Acteur principal | Utilisateur |
| Objectif | Permettre à l’utilisateur d’adapter son expérience selon ses préférences. |
| Précondition | L’utilisateur est authentifié. |
| Postcondition | Les préférences, favoris ou stars suivies sont enregistrés et utilisés pour les recommandations. |
| Scénario nominal | 1. L’utilisateur accède à son espace de personnalisation. <br> 2. Le système affiche les centres d’intérêts disponibles. <br> 3. L’utilisateur sélectionne ou modifie ses intérêts. <br> 4. L’utilisateur ajoute des événements aux favoris ou suit des stars. <br> 5. Le système enregistre les préférences. <br> 6. Le système propose des recommandations adaptées. |
| Scénarios alternatifs | Données insuffisantes : le système demande de compléter les préférences. <br> Favori déjà ajouté : le système conserve l’état existant. |

**Tableau 5.4 : Description textuelle du cas d’utilisation « Personnaliser son expérience »**

#### Cas d’utilisation « Interagir autour des événements »

| Élément | Description |
|---|---|
| Cas d’utilisation | Interagir autour des événements |
| Acteur principal | Utilisateur |
| Objectif | Permettre à l’utilisateur de participer aux échanges liés aux événements. |
| Précondition | L’utilisateur est authentifié et l’événement est accessible. |
| Postcondition | L’avis ou le message est enregistré ou l’interaction est mise à jour. |
| Scénario nominal | 1. L’utilisateur accède à la page d’un événement. <br> 2. Le système affiche les interactions disponibles. <br> 3. L’utilisateur consulte ou publie un avis. <br> 4. L’utilisateur rejoint le chat de l’événement. <br> 5. Le système affiche les messages existants. <br> 6. L’utilisateur envoie un message. <br> 7. Le système enregistre et affiche le message. |
| Scénarios alternatifs | Message invalide : le système affiche une erreur de validation. <br> Message supprimé : le système masque le contenu du message supprimé. <br> Contenu signalé : le système enregistre le signalement pour traitement ultérieur. |

**Tableau 5.5 : Description textuelle du cas d’utilisation « Interagir autour des événements »**

#### Cas d’utilisation « Gérer le line-up artistique »

| Élément | Description |
|---|---|
| Cas d’utilisation | Gérer le line-up artistique |
| Acteur principal | Partenaire |
| Objectif | Permettre au partenaire d’associer des stars à ses événements afin de présenter le line-up. |
| Précondition | Le partenaire est authentifié et l’événement lui appartient. |
| Postcondition | Le line-up de l’événement est mis à jour. |
| Scénario nominal | 1. Le partenaire accède à la gestion du line-up d’un événement. <br> 2. Le système affiche les stars déjà associées. <br> 3. Le partenaire recherche une star existante. <br> 4. Le système affiche les stars disponibles. <br> 5. Le partenaire associe une star à l’événement. <br> 6. Le système enregistre l’association et met à jour le line-up. |
| Scénarios alternatifs | Star déjà associée : le système conserve l’association existante. <br> Retrait d’une star : le partenaire retire une star du line-up et le système met à jour l’événement. <br> Star absente du catalogue : le partenaire peut proposer une nouvelle star. |

**Tableau 5.6 : Description textuelle du cas d’utilisation « Gérer le line-up artistique »**

#### Cas d’utilisation « Proposer une nouvelle star »

| Élément | Description |
|---|---|
| Cas d’utilisation | Proposer une nouvelle star |
| Acteur principal | Partenaire |
| Objectif | Permettre au partenaire de proposer une star absente du catalogue. |
| Précondition | Le partenaire est authentifié et la star recherchée n’existe pas dans le catalogue. |
| Postcondition | La proposition est enregistrée avec un statut en attente de modération. |
| Scénario nominal | 1. Le partenaire constate que la star n’existe pas dans le catalogue. <br> 2. Il saisit les informations de la star. <br> 3. Le système vérifie les données saisies. <br> 4. Le système enregistre la proposition. <br> 5. La proposition devient disponible pour modération administrative. |
| Scénarios alternatifs | Données invalides : le système affiche les erreurs de validation. <br> Star déjà existante : le système invite le partenaire à utiliser la star existante. |

**Tableau 5.7 : Description textuelle du cas d’utilisation « Proposer une nouvelle star »**

#### Cas d’utilisation « Modérer les stars proposées »

| Élément | Description |
|---|---|
| Cas d’utilisation | Modérer les stars proposées |
| Acteur principal | Administrateur |
| Objectif | Permettre à l’administrateur de valider ou rejeter les stars proposées par les partenaires. |
| Précondition | L’administrateur est authentifié au back-office. |
| Postcondition | La star proposée est approuvée ou rejetée. |
| Scénario nominal | 1. L’administrateur accède aux stars proposées. <br> 2. Le système affiche les propositions en attente. <br> 3. L’administrateur consulte les détails d’une proposition. <br> 4. Il choisit d’approuver ou de rejeter la star. <br> 5. Le système met à jour le statut de modération. <br> 6. Le système affiche une confirmation. |
| Scénarios alternatifs | Proposition non conforme : l’administrateur rejette la star avec un motif. <br> Erreur de mise à jour : le système affiche un message d’erreur. |

**Tableau 5.8 : Description textuelle du cas d’utilisation « Modérer les stars proposées »**

## 5.3 Conception

La conception du Sprint 3 permet de représenter les principales entités manipulées dans les fonctionnalités d’exploration, de personnalisation et d’interaction. Elle précise également les échanges entre les acteurs et le système à travers les diagrammes de séquence.

Cette section présente d’abord le diagramme de classes du sprint, puis les diagrammes de séquence associés aux principaux cas d’utilisation.

### 5.3.1 Diagramme de classes du Sprint 3

Le diagramme de classes du Sprint 3 représente les entités nécessaires à l’exploration des événements, à la personnalisation de l’expérience utilisateur, aux stars, au line-up artistique et au chat événementiel.

La classe `Evenement` représente les événements publiés consultables par les visiteurs et les utilisateurs. Elle est liée à la catégorie de l’événement et aux stars associées au line-up. La classe `Star` représente un artiste ou un performer pouvant être affiché dans le catalogue artistique et associé à un événement.

La personnalisation de l’expérience utilisateur repose sur les centres d’intérêts, les favoris et les stars suivies. Les classes liées aux intérêts permettent d’organiser les préférences de l’utilisateur, tandis que les associations avec les événements favoris et les stars suivies servent à alimenter les recommandations.

Le chat événementiel est représenté par les classes de message et de membre du chat. Elles permettent de conserver les messages envoyés dans un événement et de gérer la participation des utilisateurs aux discussions.

Enfin, les recommandations ne sont pas représentées comme une classe métier persistante. Elles sont calculées par le système à partir des préférences, des favoris, des stars suivies et des informations liées aux événements.

![Diagramme de classes du Sprint 3](images/class_diagram_sprint3.png)

**Figure 5.2 : Diagramme de classes du Sprint 3**

Le tableau suivant résume les principales classes du diagramme.

| Classe | Rôle |
|---|---|
| `Utilisateur` | Représente l’utilisateur authentifié qui personnalise son expérience et interagit avec les événements. |
| `Evenement` | Représente un événement publié et visible sur la plateforme. |
| `CategorieEvenement` | Permet de classer les événements selon leur type ou domaine. |
| `Star` | Représente un artiste, DJ ou performer affiché dans le catalogue artistique. |
| `UserStarInterest` | Représente le suivi d’une star par un utilisateur. |
| `UserFavoriteEvent` | Représente l’ajout d’un événement aux favoris d’un utilisateur. |
| `InterestCategory` | Représente une catégorie de centres d’intérêts. |
| `InterestItem` | Représente un centre d’intérêt sélectionnable par l’utilisateur. |
| `EventChatMember` | Représente la participation d’un utilisateur au chat d’un événement. |
| `EventChatMessage` | Représente un message envoyé dans le chat d’un événement. |
| `EventReview` | Représente un avis publié par un utilisateur sur un événement. |

**Tableau 5.9 : Description des principales classes du Sprint 3**

Dans cette conception, la relation entre un événement et ses stars est représentée de manière simplifiée afin de montrer le line-up artistique. Les détails techniques liés à l’implémentation interne ne sont pas détaillés dans le diagramme afin de conserver une représentation claire et fonctionnelle.

### 5.3.2 Diagrammes de séquence du Sprint 3

Les diagrammes de séquence du Sprint 3 décrivent les principaux échanges entre les acteurs, l’interface FESTY, le Back-End et la base de données. Ils permettent de représenter la dynamique des cas d’utilisation les plus importants sans détailler toutes les variantes techniques.

Afin de garder une conception lisible, nous avons retenu quatre scénarios principaux : l’exploration d’un événement, la personnalisation de l’expérience utilisateur, la participation au chat événementiel et la gestion du line-up artistique.

| Diagramme | Objectif |
|---|---|
| Explorer et consulter un événement | Représenter le parcours permettant à un visiteur de rechercher un événement et d’afficher ses détails. |
| Personnaliser son expérience | Représenter la gestion des préférences, des favoris, des stars suivies et des recommandations. |
| Participer au chat d’un événement | Représenter l’accès au chat, la consultation des messages et l’envoi d’un message. |
| Gérer le line-up artistique | Représenter l’association d’une star à un événement et la proposition d’une nouvelle star si nécessaire. |

**Tableau 5.10 : Diagrammes de séquence du Sprint 3**

#### Diagramme de séquence « Explorer et consulter un événement »

Ce diagramme présente le parcours d’un visiteur lors de l’exploration des événements. Le visiteur accède au catalogue, applique éventuellement une recherche ou un filtre, puis consulte le détail d’un événement publié.

Le système récupère les événements visibles, affiche les résultats correspondants, puis charge les informations détaillées de l’événement sélectionné. Ces informations peuvent inclure les données principales de l’événement, sa catégorie et les stars associées à son line-up.

![Diagramme de séquence - Explorer et consulter un événement](images/sequence_explorer_evenement_sprint3.png)

**Figure 5.3 : Diagramme de séquence « Explorer et consulter un événement »**

#### Diagramme de séquence « Personnaliser son expérience »

Ce diagramme décrit le parcours permettant à l’utilisateur de personnaliser son expérience sur FESTY. L’utilisateur peut sélectionner ses centres d’intérêts, gérer ses favoris, suivre des stars et consulter les recommandations proposées par le système.

Les recommandations sont calculées à partir des préférences de l’utilisateur, des événements favoris, des stars suivies et des informations disponibles sur les événements. Elles ne sont pas représentées comme une entité persistante, car elles sont générées par le système lors de la consultation.

![Diagramme de séquence - Personnaliser son expérience](images/sequence_personnalisation_sprint3.png)

**Figure 5.4 : Diagramme de séquence « Personnaliser son expérience »**

#### Diagramme de séquence « Participer au chat d’un événement »

Ce diagramme présente l’interaction d’un utilisateur avec le chat d’un événement. L’utilisateur rejoint le chat, consulte les messages existants, puis envoie un nouveau message.

Le système vérifie l’accès de l’utilisateur, charge les messages actifs et enregistre le message envoyé. En cas de suppression, le message peut être conservé sous forme supprimée afin de préserver l’historique sans l’afficher comme message actif.

![Diagramme de séquence - Participer au chat d’un événement](images/sequence_chat_evenement_sprint3.png)

**Figure 5.5 : Diagramme de séquence « Participer au chat d’un événement »**

#### Diagramme de séquence « Gérer le line-up artistique »

Ce diagramme présente la gestion du line-up artistique par le partenaire. Le partenaire consulte les stars associées à son événement, recherche une star existante et l’associe à l’événement.

Si la star recherchée n’existe pas dans le catalogue, le partenaire peut proposer une nouvelle star. Cette proposition est enregistrée avec un statut en attente de modération, puis elle sera examinée par l’administrateur avant d’être rendue visible publiquement.

![Diagramme de séquence - Gérer le line-up artistique](images/sequence_lineup_sprint3.png)

**Figure 5.6 : Diagramme de séquence « Gérer le line-up artistique »**

## 5.4 Réalisation

Cette section présente les principales interfaces réalisées durant le Sprint 3. Ces interfaces traduisent les fonctionnalités d’exploration, de personnalisation, d’interaction et de gestion du line-up décrites dans les sections précédentes.

Les interfaces présentées permettent de montrer l’évolution de l’expérience utilisateur sur FESTY, depuis la découverte des événements jusqu’à l’interaction autour des contenus événementiels.

### 5.4.1 Interface d’exploration des événements

L’interface d’exploration permet au visiteur de consulter les événements publiés sur la plateforme. Elle affiche les informations principales de chaque événement, telles que le titre, l’image, la date, le lieu et la catégorie.

Cette interface propose également des options de recherche et de filtrage afin d’aider l’utilisateur à trouver plus facilement les événements qui correspondent à ses attentes.

![Interface d’exploration des événements](images/interface_exploration_evenements.png)

**Figure 5.7 : Interface d’exploration des événements**

### 5.4.2 Interface de détail d’un événement

L’interface de détail permet d’afficher les informations complètes d’un événement sélectionné. Elle présente notamment la description, la date, le lieu, la catégorie, les informations principales et les stars associées au line-up.

Cette interface constitue un point central de l’expérience utilisateur, car elle permet au visiteur de mieux comprendre le contenu de l’événement avant d’interagir avec celui-ci.

![Interface de détail d’un événement](images/interface_detail_evenement.png)

**Figure 5.8 : Interface de détail d’un événement**

### 5.4.3 Interface de consultation des stars

Cette interface permet au visiteur ou à l’utilisateur de consulter les stars visibles dans le catalogue artistique. Elle permet de rechercher une star, d’afficher son profil public et de découvrir les événements auxquels elle est associée.

La consultation des stars enrichit l’exploration des événements et facilite la découverte des artistes présents sur la plateforme.

![Interface de consultation des stars](images/interface_stars.png)

**Figure 5.9 : Interface de consultation des stars**

### 5.4.4 Interface de gestion des préférences

L’interface de gestion des préférences permet à l’utilisateur de sélectionner ses centres d’intérêts. Ces préférences sont utilisées pour personnaliser son expérience et améliorer la pertinence des recommandations.

L’utilisateur peut modifier ses choix à tout moment afin d’adapter les contenus proposés à ses goûts.

![Interface de gestion des préférences](images/interface_preferences.png)

**Figure 5.10 : Interface de gestion des préférences**

### 5.4.5 Interface des favoris et recommandations

Cette interface permet à l’utilisateur de consulter les événements qu’il a ajoutés aux favoris ainsi que les recommandations proposées par le système. Les recommandations sont générées à partir des préférences de l’utilisateur, de ses favoris et des stars qu’il suit.

Cette interface facilite la redécouverte des événements sauvegardés et met en avant des contenus adaptés au profil de l’utilisateur.

![Interface des favoris et recommandations](images/interface_favoris_recommandations.png)

**Figure 5.11 : Interface des favoris et recommandations**

### 5.4.6 Interface du chat événementiel

L’interface du chat événementiel permet à l’utilisateur de rejoindre une discussion liée à un événement. Elle affiche les messages existants et permet d’envoyer de nouveaux messages.

Cette fonctionnalité renforce l’aspect communautaire de la plateforme en permettant aux utilisateurs d’échanger autour des événements.

![Interface du chat événementiel](images/interface_chat_evenement.png)

**Figure 5.12 : Interface du chat événementiel**

### 5.4.7 Interface de gestion du line-up artistique

Cette interface est destinée au partenaire. Elle permet de consulter les stars associées à un événement, d’ajouter une star existante au line-up ou de retirer une star déjà associée.

Lorsque la star recherchée n’existe pas dans le catalogue, le partenaire peut proposer une nouvelle star. Cette proposition reste en attente de validation administrative avant d’être visible publiquement.

![Interface de gestion du line-up artistique](images/interface_lineup_partenaire.png)

**Figure 5.13 : Interface de gestion du line-up artistique**


## Conclusion

Dans ce chapitre, nous avons présenté l’étude et la réalisation du troisième sprint du projet FESTY. Ce sprint a été consacré à l’exploration des événements, à la personnalisation de l’expérience utilisateur et aux interactions autour des événements.

Nous avons commencé par définir l’objectif du sprint et son backlog. Ensuite, nous avons présenté l’analyse fonctionnelle à travers le diagramme de cas d’utilisation et le raffinement des cas principaux. La conception a été décrite à l’aide du diagramme de classes et des diagrammes de séquence. Enfin, nous avons présenté les principales interfaces réalisées.

Ce sprint enrichit l’expérience utilisateur en facilitant la découverte des événements, la consultation des stars, la gestion des préférences, les favoris, les recommandations et les interactions communautaires. Le chapitre suivant sera consacré à la billetterie, à la réservation et aux opérations associées aux billets.