# Chapitre 4 : Étude et réalisation du Sprint 2 — Gestion des partenaires et des événements

## Introduction

Ce chapitre présente l’étude et la réalisation du deuxième sprint du projet FESTY. Ce sprint est consacré à la gestion des partenaires et des événements. Il couvre le parcours permettant à un utilisateur de devenir partenaire organisateur, ainsi que les fonctionnalités liées à la création, la gestion et le contrôle des événements.

Nous présentons d’abord le backlog du sprint. Ensuite, nous détaillons l’analyse fonctionnelle à travers le diagramme de cas d’utilisation et les descriptions textuelles des principaux cas. La partie conception présente le diagramme de classes et les diagrammes de séquence. Enfin, nous exposons les interfaces réalisées durant ce sprint.

## 4.1 Sprint Backlog

Le Sprint Backlog regroupe les user stories sélectionnées pour le deuxième sprint. Ces fonctionnalités permettent de mettre en place le parcours partenaire et les premières fonctionnalités liées à la gestion des événements.

### 4.1.1 Objectif du sprint

L’objectif du Sprint 2 est de mettre en place les fonctionnalités nécessaires à la gestion des partenaires et des événements. Il permet à un utilisateur de soumettre une demande pour devenir partenaire, à l’administrateur de traiter cette demande, puis au partenaire validé de gérer son profil et ses événements.

Ce sprint introduit également le contrôle de l’offre événementielle par l’administrateur afin de garantir la conformité des événements publiés sur la plateforme.

### 4.1.2 Backlog du sprint

Le tableau suivant présente le backlog du deuxième sprint. Les user stories sont organisées selon les acteurs concernés, les tâches principales à réaliser, la priorité et l’estimation prévue.

| ID | User Story | Tâches principales | Priorité | Estimation |
|---|---|---|---|---|
| US-2.1 | En tant qu’utilisateur, je veux soumettre une demande pour devenir partenaire afin de pouvoir organiser des événements. | Créer le formulaire de candidature ; saisir les informations professionnelles ; déposer les documents requis ; envoyer la demande ; suivre son statut. | Must Have | 3 jours |
| US-2.2 | En tant qu’administrateur, je veux traiter les demandes partenaires afin de valider ou refuser l’accès à l’espace partenaire. | Consulter les demandes reçues ; afficher le dossier partenaire ; vérifier les informations et les documents ; accepter, rejeter ou demander des informations complémentaires. | Must Have | 3 jours |
| US-2.3 | En tant qu’utilisateur accepté comme partenaire, je veux finaliser mon activation partenaire afin d’accéder à l’espace partenaire. | Vérifier le statut de la demande ; compléter l’onboarding Stripe ; activer l’accès partenaire. | Must Have | 2 jours |
| US-2.4 | En tant que partenaire, je veux gérer mon profil partenaire afin de présenter mes informations professionnelles. | Afficher le profil partenaire ; modifier les informations professionnelles ; mettre à jour les coordonnées, la description et les médias associés. | Should Have | 2 jours |
| US-2.5 | En tant que partenaire, je veux créer un événement afin de le soumettre à la plateforme. | Créer le formulaire d’événement ; saisir les informations générales ; ajouter les médias ; définir la localisation et la date ; choisir le mode de billetterie et configurer la billetterie interne si nécessaire. | Must Have | 4 jours |
| US-2.6 | En tant que partenaire, je veux gérer mes événements afin de maintenir leurs informations à jour. | Lister les événements ; consulter les détails ; modifier un événement ; annuler ou archiver un événement ; gérer la billetterie interne ou le lien externe selon le mode choisi. | Must Have | 3 jours |
| US-2.7 | En tant qu’administrateur, je veux contrôler l’offre événementielle afin de garantir la conformité des événements publiés. | Consulter les événements soumis ; afficher les détails ; approuver, rejeter, mettre en pause, signaler ou archiver un événement. | Must Have | 3 jours |

**Tableau 4.1 : Backlog du Sprint 2**

Les fonctionnalités liées à la réservation des billets, au paiement, au scan, aux remboursements, à la revente, aux soldes partenaires et aux opérations de payout seront traitées dans les sprints suivants. Cette séparation permet de limiter le Sprint 2 à la mise en place de l’espace partenaire et à la gestion initiale des événements.

## 4.2 Analyse fonctionnelle

L’analyse fonctionnelle du Sprint 2 permet de préciser les fonctionnalités liées à la gestion des partenaires et des événements. Elle présente les interactions entre les acteurs concernés et le système, puis détaille les principaux cas d’utilisation réalisés durant ce sprint.

Les acteurs concernés par ce sprint sont l’Utilisateur, le Partenaire et l’Administrateur. L’Utilisateur peut soumettre une demande pour devenir partenaire et suivre son statut. L’Administrateur traite les demandes partenaires et contrôle l’offre événementielle. Le Partenaire, après activation de son accès, peut gérer son profil, créer des événements, gérer ses événements et leur billetterie.

### 4.2.1 Diagramme de cas d’utilisation du Sprint 2

Le diagramme de cas d’utilisation du Sprint 2 présente les fonctionnalités réalisées dans le cadre de la gestion des partenaires et des événements. Il met en évidence le parcours permettant à un utilisateur de devenir partenaire organisateur, ainsi que les principales actions accessibles au partenaire et à l’administrateur.

Le cas d’utilisation « Devenir partenaire organisateur » regroupe la soumission de la demande, le suivi de son statut et la finalisation de l’activation partenaire. Cette activation peut inclure l’onboarding Stripe afin de permettre au partenaire d’exploiter ses événements. Le diagramme présente également la gestion des événements par le partenaire et le contrôle de l’offre événementielle par l’administrateur.

![Diagramme de cas d’utilisation du Sprint 2](images/use_case_sprint2.png)

**Figure 4.1 : Diagramme de cas d’utilisation du Sprint 2**

La figure 4.1 présente les principaux cas d’utilisation du Sprint 2. Le tableau suivant propose un raffinement synthétique de ces cas afin d’éviter de surcharger le diagramme tout en précisant les sous-fonctionnalités associées.

| ID | Acteur principal | Cas d’utilisation | Sous-fonctionnalités associées |
|---|---|---|---|
| UC2.1 | Utilisateur | Devenir partenaire organisateur | Soumettre une demande partenaire, suivre le statut de la demande et finaliser l’activation partenaire. |
| UC2.2 | Utilisateur | Soumettre une demande partenaire | Remplir le formulaire de candidature, saisir les informations professionnelles, déposer les documents requis et envoyer la demande. |
| UC2.3 | Utilisateur | Suivre le statut de la demande | Consulter l’état de la demande, visualiser les remarques administratives et compléter les informations demandées si nécessaire. |
| UC2.4 | Utilisateur / Partenaire | Finaliser l’activation partenaire | Compléter l’onboarding Stripe, vérifier le statut d’activation et accéder à l’espace partenaire après validation. |
| UC2.5 | Administrateur | Traiter les demandes partenaires | Consulter les demandes reçues, vérifier les informations et les documents, accepter, rejeter ou demander des informations complémentaires. |
| UC2.6 | Partenaire | Gérer son profil partenaire | Consulter et modifier les informations professionnelles, les coordonnées, la description et les médias du profil partenaire. |
| UC2.7 | Partenaire | Créer un événement | Saisir les informations de l’événement, ajouter les médias, définir la localisation, préciser la date et choisir le mode de billetterie ; configurer les billets internes ou renseigner un lien externe. |
| UC2.8 | Partenaire | Gérer ses événements | Consulter la liste de ses événements, modifier les informations, annuler ou archiver un événement selon son état. |
| UC2.9 | Partenaire | Gérer la billetterie de l’événement | Gérer les types de billets en cas de billetterie interne ; renseigner ou modifier le lien externe en cas de billetterie externe. |
| UC2.10 | Administrateur | Contrôler l’offre événementielle | Consulter les événements soumis, vérifier leurs informations, approuver, rejeter, mettre en pause, signaler ou archiver un événement. |

**Tableau 4.2 : Raffinement des cas d’utilisation du Sprint 2**

Cette organisation permet de garder le diagramme lisible tout en couvrant les fonctionnalités principales du sprint. Les actions détaillées, comme l’acceptation d’une demande partenaire ou le rejet d’un événement, sont intégrées dans le tableau de raffinement et seront précisées dans les descriptions textuelles des cas d’utilisation.

### 4.2.2 Description textuelle des cas d’utilisation

Après avoir présenté le diagramme de cas d’utilisation du Sprint 2, nous détaillons dans cette section les principaux cas réalisés durant ce sprint. Ces descriptions permettent de préciser les objectifs, les préconditions, les postconditions ainsi que les scénarios nominaux et alternatifs associés.

#### Cas d’utilisation « Soumettre une demande partenaire »

| Élément | Description |
|---|---|
| Cas d’utilisation | Soumettre une demande partenaire |
| Acteur principal | Utilisateur |
| Objectif | Permettre à un utilisateur de déposer une demande afin de devenir partenaire organisateur. |
| Précondition | L’utilisateur est authentifié à la plateforme. |
| Postcondition | La demande partenaire est enregistrée avec un statut en attente de traitement. |
| Scénario nominal | 1. L’utilisateur accède à l’interface de demande partenaire.<br>2. Le système affiche le formulaire de candidature.<br>3. L’utilisateur saisit ses informations professionnelles.<br>4. Il dépose les documents requis.<br>5. Le système vérifie les données saisies.<br>6. L’utilisateur soumet la demande.<br>7. Le système enregistre la demande avec un statut en attente.<br>8. Le système affiche une confirmation d’envoi. |
| Scénarios alternatifs | Données invalides : le système affiche les erreurs de validation.<br>Documents manquants : le système demande de compléter le dossier.<br>Demande déjà existante : le système informe l’utilisateur qu’une demande est déjà en cours de traitement. |

**Tableau 4.3 : Description textuelle du cas d’utilisation « Soumettre une demande partenaire »**

#### Cas d’utilisation « Traiter une demande partenaire »

| Élément | Description |
|---|---|
| Cas d’utilisation | Traiter une demande partenaire |
| Acteur principal | Administrateur |
| Objectif | Permettre à l’administrateur d’examiner les demandes partenaires et de prendre une décision. |
| Précondition | L’administrateur est authentifié au back-office. |
| Postcondition | La demande est acceptée, rejetée ou renvoyée pour complément d’informations. |
| Scénario nominal | 1. L’administrateur accède à la liste des demandes partenaires.<br>2. Le système affiche les demandes en attente.<br>3. L’administrateur consulte le détail d’une demande.<br>4. Le système affiche les informations et les documents associés.<br>5. L’administrateur vérifie le dossier.<br>6. Il accepte la demande.<br>7. Le système met à jour le statut de la demande.<br>8. Le système informe l’utilisateur de la décision. |
| Scénarios alternatifs | Dossier incomplet : l’administrateur demande des informations complémentaires.<br>Dossier non conforme : l’administrateur rejette la demande.<br>Erreur de mise à jour : le système affiche un message d’erreur. |

**Tableau 4.4 : Description textuelle du cas d’utilisation « Traiter une demande partenaire »**

#### Cas d’utilisation « Finaliser l’activation partenaire »

| Élément | Description |
|---|---|
| Cas d’utilisation | Finaliser l’activation partenaire |
| Acteur principal | Utilisateur accepté comme partenaire |
| Acteur secondaire | Service Stripe Connect |
| Objectif | Permettre à l’utilisateur accepté comme partenaire de finaliser son activation afin d’accéder à l’espace partenaire. |
| Précondition | La demande partenaire est acceptée par l’administrateur. |
| Postcondition | L’accès partenaire est activé et l’utilisateur peut accéder aux fonctionnalités partenaires. |
| Scénario nominal | 1. L’utilisateur accède à l’interface d’activation partenaire.<br>2. Le système affiche l’état de la demande et les étapes restantes.<br>3. L’utilisateur lance l’onboarding Stripe.<br>4. Le système redirige l’utilisateur vers Stripe Connect.<br>5. L’utilisateur complète les informations demandées.<br>6. Le système vérifie le statut d’activation.<br>7. Le système active l’accès partenaire.<br>8. L’utilisateur accède à son espace partenaire. |
| Scénarios alternatifs | Onboarding incomplet : le système indique que l’activation n’est pas finalisée.<br>Échec de redirection : le système propose de relancer l’onboarding.<br>Statut non vérifié : le système demande de compléter les informations nécessaires. |

**Tableau 4.5 : Description textuelle du cas d’utilisation « Finaliser l’activation partenaire »**

#### Cas d’utilisation « Gérer son profil partenaire »

| Élément | Description |
|---|---|
| Cas d’utilisation | Gérer son profil partenaire |
| Acteur principal | Partenaire |
| Objectif | Permettre au partenaire de consulter et de mettre à jour ses informations professionnelles. |
| Précondition | Le partenaire est authentifié et son accès partenaire est activé. |
| Postcondition | Les informations du profil partenaire sont consultées ou mises à jour avec succès. |
| Scénario nominal | 1. Le partenaire accède à son profil partenaire.<br>2. Le système affiche les informations professionnelles.<br>3. Le partenaire choisit de modifier ses informations.<br>4. Il saisit les nouvelles informations.<br>5. Le système vérifie les données saisies.<br>6. Le système enregistre les modifications.<br>7. Le système affiche une confirmation. |
| Scénarios alternatifs | Données invalides : le système affiche les erreurs de validation.<br>Modification annulée : le système conserve les anciennes informations.<br>Erreur d’enregistrement : le système affiche un message d’erreur. |

**Tableau 4.6 : Description textuelle du cas d’utilisation « Gérer son profil partenaire »**

#### Cas d’utilisation « Créer et gérer un événement »

| Élément | Description |
|---|---|
| Cas d’utilisation | Créer et gérer un événement |
| Acteur principal | Partenaire |
| Objectif | Permettre au partenaire de créer un événement, de gérer ses informations principales et de le soumettre au contrôle administratif. |
| Précondition | Le partenaire est authentifié et son accès partenaire est activé. |
| Postcondition | L’événement est créé, modifié, annulé ou soumis au contrôle administratif selon l’action réalisée. |
| Scénario nominal | 1. Le partenaire accède à l’espace de gestion des événements.<br>2. Le système affiche la liste de ses événements.<br>3. Le partenaire choisit de créer un nouvel événement.<br>4. Il saisit les informations principales de l’événement.<br>5. Il définit la localisation, la date, les médias et la catégorie.<br>6. Il choisit le mode de billetterie.<br>7. Si la billetterie est interne, il configure les types de billets.<br>8. Si la billetterie est externe, il renseigne le lien de billetterie.<br>9. Le système vérifie les données saisies.<br>10. Le système enregistre l’événement en brouillon.<br>11. Le partenaire soumet l’événement au contrôle administratif.<br>12. Le système affiche une confirmation. |
| Scénarios alternatifs | Données invalides : le système affiche les erreurs de validation.<br>Billetterie interne incomplète : le système demande de créer au moins un type de billet.<br>Billetterie externe incomplète : le système demande de renseigner le lien externe de billetterie.<br>Modification d’un événement : le partenaire met à jour les informations existantes.<br>Annulation d’un événement : le système met à jour le statut de l’événement. |

**Tableau 4.7 : Description textuelle du cas d’utilisation « Créer et gérer un événement »**

#### Cas d’utilisation « Contrôler l’offre événementielle »

| Élément | Description |
|---|---|
| Cas d’utilisation | Contrôler l’offre événementielle |
| Acteur principal | Administrateur |
| Objectif | Permettre à l’administrateur de vérifier les événements soumis afin de garantir leur conformité avant publication. |
| Précondition | L’administrateur est authentifié au back-office. |
| Postcondition | L’événement est approuvé et publié, ou bien rejeté, mis en pause, signalé ou archivé selon la décision prise. |
| Scénario nominal | 1. L’administrateur accède à l’interface de contrôle des événements.<br>2. Le système affiche les événements soumis ou à contrôler.<br>3. L’administrateur sélectionne un événement.<br>4. Le système affiche les informations détaillées de l’événement ainsi que son historique de modération.<br>5. L’administrateur examine les informations de l’événement.<br>6. L’administrateur approuve l’événement.<br>7. Le système met à jour le statut de l’événement à `PUBLIE` et le statut de modération à `APPROUVE`.<br>8. Le système affiche une confirmation de publication. |
| Scénarios alternatifs | Événement non conforme : l’administrateur rejette l’événement avec un motif, et le système met à jour son statut.<br>Événement à corriger : l’administrateur met l’événement en pause avec un motif.<br>Informations insuffisantes ou douteuses : l’administrateur signale l’événement pour un contrôle ultérieur.<br>Événement obsolète ou non exploitable : l’administrateur archive l’événement.<br>Erreur de mise à jour : le système affiche un message d’erreur et conserve l’état précédent. |

**Tableau 4.8 : Description textuelle du cas d’utilisation « Contrôler l’offre événementielle »**

## 4.3 Conception

Après avoir présenté l’analyse fonctionnelle du Sprint 2, nous passons à la conception des principales fonctionnalités réalisées. Cette partie présente le diagramme de classes du sprint ainsi que les diagrammes de séquence associés aux scénarios les plus importants.

La conception reste partielle et limitée au périmètre du sprint. Elle met en évidence les classes et les interactions nécessaires à la gestion des partenaires, à la création des événements et au contrôle de l’offre événementielle.

### 4.3.1 Diagramme de classes du Sprint 2

Le diagramme de classes du Sprint 2 présente les principales entités liées à la gestion des partenaires et des événements. Il complète le sprint précédent en ajoutant les éléments nécessaires à la demande partenaire, aux documents de candidature, à l’activation partenaire, à l’événement, à sa billetterie et au contrôle administratif.

La classe `Utilisateur` reste la classe centrale du modèle. Elle regroupe les informations du compte ainsi que celles utilisées pour le profil partenaire, comme le nom de l’entreprise, la biographie, la photo de profil, les liens sociaux, le statut partenaire et le statut Stripe. La classe `DemandePartenaire` représente le dossier de candidature. Les classes `DocumentPartenaire` et `VerificationDocument` modélisent les documents déposés et leur vérification.

La classe `Evenement` représente les événements créés par le partenaire. Elle contient les informations principales, le mode de billetterie, le lien externe éventuel et les statuts de publication et de modération. La classe `TypeBillet` représente les catégories de billets internes, comme Standard, VIP ou Premium, lorsque la billetterie est gérée dans FESTY. Enfin, la classe `CategorieEvenement` permet de classer les événements.

![Diagramme de classes du Sprint 2](images/class_diagram_sprint2.png)

**Figure 4.2 : Diagramme de classes du Sprint 2**

### 4.3.2 Diagrammes de séquence

Les diagrammes de séquence du Sprint 2 permettent de représenter les échanges entre les acteurs et le système lors de l’exécution des principaux scénarios. Afin de garder une conception lisible, seuls les scénarios les plus représentatifs sont détaillés.

Le tableau suivant présente les diagrammes de séquence retenus pour ce sprint.

| Diagramme | Cas représenté | Objectif |
|---|---|---|
| Diagramme de séquence 1 | Soumettre une demande partenaire | Représenter le dépôt d’une demande par un utilisateur souhaitant devenir partenaire organisateur. |
| Diagramme de séquence 2 | Traiter une demande partenaire | Représenter le traitement administratif d’une demande partenaire par l’administrateur. |
| Diagramme de séquence 3 | Finaliser l’activation partenaire | Représenter la finalisation de l’activation partenaire, notamment à travers l’onboarding Stripe. |
| Diagramme de séquence 4 | Gérer son profil partenaire | Représenter la consultation et la mise à jour du profil partenaire. |
| Diagramme de séquence 5 | Créer et gérer un événement | Représenter la création et la gestion d’un événement par le partenaire, avec choix du mode de billetterie. |
| Diagramme de séquence 6 | Contrôler l’offre événementielle | Représenter le contrôle d’un événement par l’administrateur avant ou après sa publication. |

**Tableau 4.9 : Diagrammes de séquence du Sprint 2**

#### 4.3.2.1 Diagramme de séquence « Soumettre une demande partenaire »

Ce diagramme présente le processus de soumission d’une demande partenaire. L’utilisateur accède à l’espace de candidature, renseigne ses informations professionnelles et dépose les documents requis. Le système permet également de reprendre un brouillon ou de compléter un dossier lorsque des informations supplémentaires sont demandées. Une fois le dossier complet, la demande est soumise et son statut est mis à jour afin d’être traitée par l’administrateur.

![Diagramme de séquence - Soumettre une demande partenaire](images/sequence_soumettre_demande_partenaire_sprint2.png)

**Figure 4.3 : Diagramme de séquence « Soumettre une demande partenaire »**

#### 4.3.2.2 Diagramme de séquence « Traiter une demande partenaire »

Ce diagramme présente le traitement d’une demande partenaire par l’administrateur. Après consultation des candidatures soumises, l’administrateur ouvre le dossier du candidat, examine les informations et les documents, puis prend une décision. La demande peut être acceptée, rejetée ou renvoyée pour complément d’informations. Le système met ensuite à jour les statuts correspondants et affiche une confirmation à l’administrateur.

![Diagramme de séquence - Traiter une demande partenaire](images/sequence_traiter_demande_partenaire_sprint2.png)

**Figure 4.4 : Diagramme de séquence « Traiter une demande partenaire »**

#### 4.3.2.3 Diagramme de séquence « Finaliser l’activation partenaire »

Ce diagramme présente la finalisation de l’activation partenaire après l’acceptation de la demande par l’administrateur. L’utilisateur accepté complète les étapes nécessaires à l’activation, notamment l’onboarding Stripe. Une fois l’activation validée, l’accès à l’espace partenaire est autorisé.

![Diagramme de séquence - Finaliser l’activation partenaire](images/sequence_activation_partenaire_sprint2.png)

**Figure 4.5 : Diagramme de séquence « Finaliser l’activation partenaire »**

#### 4.3.2.4 Diagramme de séquence « Gérer son profil partenaire »

Ce diagramme présente le processus de consultation et de mise à jour du profil partenaire. Le partenaire accède à son espace, consulte ses informations professionnelles, puis peut modifier les données de son profil. Le système vérifie les champs saisis, enregistre les modifications valides et affiche une confirmation. En cas d’annulation, de données invalides ou d’erreur d’enregistrement, un message adapté est affiché.

![Diagramme de séquence - Gérer son profil partenaire](images/sequence_gerer_profil_partenaire.png)

**Figure 4.6 : Diagramme de séquence « Gérer son profil partenaire »**

#### 4.3.2.5 Diagramme de séquence « Créer et gérer un événement »

Ce diagramme présente le processus de création et de gestion d’un événement par le partenaire. Le partenaire accède à son espace de gestion, crée un événement, choisit le mode de billetterie et configure les informations nécessaires. Lorsque la billetterie est interne, il peut ajouter les types de billets associés. Une fois les informations complètes, l’événement est soumis au contrôle administratif. Le diagramme présente également, de manière simplifiée, les actions de modification et d’annulation d’un événement.

![Diagramme de séquence - Créer un événement](images/sequence_creer_evenement_sprint2.png)

**Figure 4.7 : Diagramme de séquence « Créer et gérer un événement »**

#### 4.3.2.6 Diagramme de séquence « Contrôler l’offre événementielle »

Ce diagramme présente le processus de contrôle de l’offre événementielle par l’administrateur. Après avoir accédé à la file de modération, l’administrateur consulte le détail d’un événement soumis, examine ses informations et choisit une action de contrôle. Selon la décision prise, l’événement peut être approuvé, rejeté, mis en pause, signalé ou archivé. Le système met à jour les statuts correspondants et affiche une confirmation à l’administrateur.

![Diagramme de séquence - Contrôler l’offre événementielle](images/sequence_controler_offre_evenementielle_sprint2.png)

**Figure 4.8 : Diagramme de séquence « Contrôler l’offre événementielle »**

## 4.4 Réalisation

Après la conception des fonctionnalités du Sprint 2, cette section présente les principales interfaces réalisées. Ces interfaces permettent à l’utilisateur de devenir partenaire, au partenaire de gérer ses événements et à l’administrateur de contrôler les demandes et l’offre événementielle.

### 4.4.1 Interface de demande partenaire

L’interface de demande partenaire permet à un utilisateur authentifié de déposer une candidature afin de devenir partenaire organisateur. L’utilisateur saisit ses informations professionnelles, ajoute les documents requis et soumet sa demande pour traitement.

![Interface de demande partenaire](images/interface_demande_partenaire_sprint2.png)

**Figure 4.9 : Interface de demande partenaire**

### 4.4.2 Interface de traitement des demandes partenaires

Cette interface est destinée à l’administrateur. Elle permet de consulter les demandes partenaires reçues, d’ouvrir le détail d’un dossier, de vérifier les informations fournies et de prendre une décision. L’administrateur peut accepter la demande, la rejeter ou demander des informations complémentaires.

![Interface de traitement des demandes partenaires](images/interface_traitement_demandes_partenaires_sprint2.png)

**Figure 4.10 : Interface de traitement des demandes partenaires**

### 4.4.3 Interface d’activation partenaire

Après l’acceptation de la demande, l’utilisateur doit finaliser son activation partenaire. Cette interface permet d’afficher l’état d’activation et de lancer les étapes nécessaires, notamment l’onboarding Stripe. Une fois l’activation terminée, l’utilisateur peut accéder à l’espace partenaire.

![Interface d’activation partenaire](images/interface_activation_partenaire_sprint2.png)

**Figure 4.11 : Interface d’activation partenaire**

### 4.4.4 Interface de profil partenaire

L’interface de profil partenaire permet au partenaire de consulter et modifier ses informations professionnelles. Elle regroupe les données liées à son identité professionnelle, ses coordonnées, sa description et les médias associés à son profil public.

![Interface de profil partenaire](images/interface_profil_partenaire_sprint2.png)

**Figure 4.12 : Interface de profil partenaire**

### 4.4.5 Interface de création d’événement

Cette interface permet au partenaire de créer un nouvel événement. Il peut saisir les informations générales, définir la date, la localisation, ajouter les médias et choisir le mode de billetterie. En mode interne, il configure les types de billets ; en mode externe, il renseigne le lien de billetterie. Après validation, l’événement est enregistré puis soumis au contrôle administratif.

![Interface de création d’événement](images/interface_creation_evenement_sprint2.png)

**Figure 4.13 : Interface de création d’événement**

### 4.4.6 Interface de gestion des événements

L’interface de gestion des événements permet au partenaire de consulter la liste de ses événements et d’accéder à leurs détails. Elle permet aussi de modifier un événement, de gérer sa billetterie et de changer son état selon les règles définies.

![Interface de gestion des événements](images/interface_gestion_evenements_sprint2.png)

**Figure 4.14 : Interface de gestion des événements**

### 4.4.7 Interface de contrôle de l’offre événementielle

Cette interface est utilisée par l’administrateur afin de contrôler les événements soumis ou publiés sur la plateforme. L’administrateur peut consulter les détails d’un événement, vérifier sa conformité et appliquer une action de contrôle, comme l’approbation, le rejet, la mise en pause, le signalement ou l’archivage.

![Interface de contrôle de l’offre événementielle](images/interface_controle_offre_evenementielle_sprint2.png)

**Figure 4.15 : Interface de contrôle de l’offre événementielle**

## Conclusion

Dans ce chapitre, nous avons présenté l’étude et la réalisation du Sprint 2, consacré à la gestion des partenaires et des événements. Nous avons commencé par définir le backlog du sprint, puis nous avons détaillé l’analyse fonctionnelle à travers le diagramme de cas d’utilisation et les descriptions textuelles des principaux cas.

Nous avons ensuite présenté la conception du sprint à travers le diagramme de classes et les diagrammes de séquence relatifs à la demande partenaire, au traitement administratif, à l’activation partenaire, à la gestion du profil partenaire, à la création d’événement et au contrôle de l’offre événementielle. Enfin, nous avons exposé les principales interfaces réalisées.

Ce sprint constitue une base importante pour les fonctionnalités suivantes de la plateforme, car il permet d’introduire le rôle partenaire et de mettre en place la gestion initiale des événements. Le chapitre suivant sera consacré aux fonctionnalités liées à la découverte des événements, aux préférences utilisateur et aux interactions autour des événements.