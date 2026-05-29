# Chapitre 3 : Étude et réalisation du Sprint 1 — Authentification et gestion des accès

## Introduction

Ce chapitre présente l’étude et la réalisation du premier sprint du projet FESTY. Ce sprint est consacré à la mise en place des fonctionnalités de base liées à l’authentification, à l’inscription, à la vérification du numéro de téléphone, à la gestion du profil utilisateur et à l’accès sécurisé au back-office administrateur.

Nous présentons d’abord le backlog du sprint afin d’identifier les user stories retenues. Ensuite, nous détaillons l’analyse fonctionnelle à travers le diagramme de cas d’utilisation du Sprint 1 et les descriptions textuelles des principaux cas. La partie conception présente le diagramme de classes partiel ainsi que les diagrammes de séquence associés. Enfin, nous exposons les principales interfaces réalisées durant ce sprint.

## 3.1 Backlog du Sprint 1

Le Sprint Backlog regroupe les user stories [REF-SCRUM] sélectionnées pour le premier sprint. Ces fonctionnalités constituent le socle d’accès à la plateforme FESTY et permettent de sécuriser les parcours utilisateur et administrateur.

### 3.1.1 Objectif du sprint

L’objectif du Sprint 1 est de mettre en place les fonctionnalités nécessaires à l’accès sécurisé à la plateforme. Il permet au visiteur de créer un compte, de vérifier son numéro de téléphone, puis à l’utilisateur authentifié de consulter et modifier son profil.

Ce sprint couvre également l’accès administrateur au back-office à travers une authentification sécurisée avec vérification 2FA. Il constitue ainsi une base indispensable pour les fonctionnalités développées dans les sprints suivants.

### 3.1.2 Backlog du sprint

Le tableau suivant présente le backlog du premier sprint. Les user stories sont organisées selon les acteurs concernés, les tâches principales à réaliser et leur priorité.

| ID | User Story | Tâches principales | Priorité |
|---|---|---|---|
| US-1.1 | En tant que visiteur, je veux créer un compte afin d’accéder à la plateforme. | Créer le formulaire d’inscription ; valider les champs saisis ; enregistrer les informations du compte ; déclencher la vérification du numéro de téléphone. | Must Have |
| US-1.2 | En tant que visiteur, je veux vérifier mon numéro de téléphone afin d’activer mon compte. | Envoyer un code OTP ; saisir le code reçu ; vérifier le code ; activer le compte après validation. | Must Have |
| US-1.3 | En tant qu’utilisateur, je veux m’authentifier à la plateforme afin d’accéder à mon espace personnel. | Créer l’interface de connexion ; vérifier les identifiants ; générer une session sécurisée ; rediriger l’utilisateur vers son espace. | Must Have |
| US-1.4 | En tant qu’utilisateur, je veux consulter mon profil afin de visualiser mes informations personnelles. | Récupérer les informations de l’utilisateur ; afficher les données du profil ; sécuriser l’accès aux informations personnelles. | Must Have |
| US-1.5 | En tant qu’utilisateur, je veux modifier mes informations personnelles afin de maintenir mon profil à jour. | Afficher un formulaire de modification ; valider les nouvelles informations ; enregistrer les modifications ; afficher un message de confirmation. | Must Have |
| US-1.6 | En tant qu’administrateur, je veux m’authentifier au back-office afin d’accéder à l’espace d’administration. | Créer l’interface de connexion administrateur ; vérifier les identifiants ; demander le code 2FA ; autoriser l’accès au back-office après validation. | Must Have |

**Tableau 3.1 : Backlog du Sprint 1**

Les fonctionnalités complémentaires telles que le renvoi du code OTP ou la récupération du mot de passe ne sont pas représentées comme des user stories principales dans ce sprint. Elles peuvent être mentionnées comme scénarios alternatifs dans les descriptions textuelles afin de conserver un périmètre lisible et cohérent avec le diagramme de cas d’utilisation.

## 3.2 Analyse fonctionnelle

L’analyse fonctionnelle du Sprint 1 permet de préciser les interactions entre les acteurs concernés et les fonctionnalités liées à l’authentification et à la gestion des accès. Elle présente les cas d’utilisation réalisés durant ce sprint, puis décrit les scénarios principaux associés.

Les acteurs concernés par ce sprint sont le Visiteur, l’Utilisateur et l’Administrateur. Le Visiteur peut créer un compte et vérifier son numéro de téléphone. L’Utilisateur peut s’authentifier à la plateforme, consulter son profil et modifier ses informations personnelles. L’Administrateur peut s’authentifier au back-office à travers un accès sécurisé avec vérification 2FA.

Le service OTP/SMS intervient comme acteur secondaire dans le scénario de vérification du numéro de téléphone.

### 3.2.1 Diagramme de cas d’utilisation du Sprint 1

La figure 3.1 présente le diagramme de cas d’utilisation du Sprint 1. Ce diagramme regroupe les fonctionnalités principales liées à l’inscription, à la vérification du numéro de téléphone, à l’authentification, à la gestion du profil utilisateur et à l’accès administrateur au back-office.

![Diagramme de cas d’utilisation du Sprint 1](<images/chapitre3/Figure 3.1 Diagramme de cas d’utilisation du Sprint 1.png>)

**Figure 3.1 : Diagramme de cas d’utilisation du Sprint 1**

Comme le montre la figure 3.1, le Visiteur peut s’inscrire à la plateforme. Cette inscription inclut la vérification du numéro de téléphone à travers un service OTP/SMS. Une fois son compte activé, l’Utilisateur peut s’authentifier à la plateforme et gérer son profil, notamment en consultant ses informations et en les modifiant. L’Administrateur dispose d’un accès spécifique au back-office, renforcé par une vérification 2FA indépendante du service OTP/SMS.

### 3.2.2 Description textuelle des cas d’utilisation

Cette section présente les descriptions textuelles des principaux cas d’utilisation du Sprint 1. Chaque description précise l’acteur principal, l’objectif du cas, les préconditions, les postconditions, le scénario nominal ainsi que les exceptions possibles.

#### Cas d’utilisation : S’inscrire à la plateforme

| Élément | Description |
|---|---|
| Cas d’utilisation | S’inscrire à la plateforme |
| Acteur principal | Visiteur |
| Objectif | Permettre à un visiteur de créer un compte sur la plateforme FESTY. |
| Précondition | Le visiteur ne possède pas encore de compte actif sur la plateforme. |
| Postcondition | Un compte utilisateur est créé et le numéro de téléphone est vérifié. |
| Scénario nominal | 1. Le visiteur accède au formulaire d’inscription.<br>2. Il saisit ses informations personnelles, son email, son mot de passe et son numéro de téléphone.<br>3. Le système vérifie les informations saisies.<br>4. Le système crée le compte et envoie un code OTP au numéro indiqué.<br>5. Le visiteur saisit le code OTP reçu.<br>6. Le système vérifie le code et active le compte. |
| Exceptions | E1 : Les informations saisies sont invalides.<br>E2 : L’email est déjà utilisé.<br>E3 : Le code OTP est incorrect ou expiré. |

**Tableau 3.2 : Description textuelle du cas d’utilisation « S’inscrire à la plateforme »**

#### Cas d’utilisation : S’authentifier à la plateforme

| Élément | Description |
|---|---|
| Cas d’utilisation | S’authentifier à la plateforme |
| Acteur principal | Utilisateur |
| Objectif | Permettre à l’utilisateur d’accéder à son espace personnel. |
| Précondition | L’utilisateur possède un compte actif sur la plateforme. |
| Postcondition | L’utilisateur est authentifié et peut accéder aux fonctionnalités privées de la plateforme. |
| Scénario nominal | 1. L’utilisateur accède à l’interface de connexion.<br>2. Il saisit son email et son mot de passe.<br>3. Le système vérifie les identifiants saisis.<br>4. Le système vérifie l’état du compte utilisateur.<br>5. Le système autorise l’accès à l’espace personnel. |
| Exceptions | E1 : L’adresse email saisie est introuvable.<br>E2 : Le mot de passe saisi est incorrect. |

**Tableau 3.3 : Description textuelle du cas d’utilisation « S’authentifier à la plateforme »**

#### Cas d’utilisation : Gérer son profil

| Élément | Description |
|---|---|
| Cas d’utilisation | Gérer son profil |
| Acteur principal | Utilisateur |
| Objectif | Permettre à l’utilisateur de consulter et modifier ses informations personnelles. |
| Précondition | L’utilisateur est authentifié à la plateforme. |
| Postcondition | Les informations du profil sont affichées ou mises à jour. |
| Scénario nominal | 1. L’utilisateur accède à la page de son profil.<br>2. Le système récupère les informations personnelles de l’utilisateur.<br>3. Le système affiche les informations du profil.<br>4. L’utilisateur modifie les informations souhaitées.<br>5. Le système vérifie les nouvelles données saisies.<br>6. Le système enregistre les modifications et affiche un message de confirmation. |
| Exceptions | E1 : Les données saisies sont invalides.<br>E2 : L’utilisateur quitte la page sans enregistrer les modifications. |

**Tableau 3.4 : Description textuelle du cas d’utilisation « Gérer son profil »**

#### Cas d’utilisation : S’authentifier au back-office

| Élément | Description |
|---|---|
| Cas d’utilisation | S’authentifier au back-office |
| Acteur principal | Administrateur |
| Objectif | Permettre à l’administrateur d’accéder au back-office de FESTY. |
| Précondition | L’administrateur possède un compte autorisé à accéder au back-office. |
| Postcondition | L’administrateur est authentifié et accède à l’espace d’administration. |
| Scénario nominal | 1. L’administrateur accède à l’interface de connexion du back-office.<br>2. Il saisit son email et son mot de passe.<br>3. Le système recherche le compte et vérifie les identifiants saisis.<br>4. Le système vérifie le rôle administrateur.<br>5. Le système demande la vérification du code 2FA.<br>6. L’administrateur saisit le code 2FA.<br>7. Le système vérifie le code 2FA, génère un jeton administrateur sécurisé [REF-JWT][REF-SPRING-SECURITY] et autorise l’accès au back-office. |
| Exceptions | E1 : Les identifiants saisis sont incorrects.<br>E2 : Le code 2FA est invalide ou expiré.<br>E3 : Le compte ne possède pas le rôle administrateur. |

**Tableau 3.5 : Description textuelle du cas d’utilisation « S’authentifier au back-office »**

## 3.3 Conception

La conception du Sprint 1 permet de représenter les éléments structurels et dynamiques liés aux fonctionnalités d’authentification et de gestion des accès. Elle s’appuie sur le diagramme de classes partiel afin de présenter les principales entités manipulées, puis sur les diagrammes de séquence pour décrire les échanges entre les acteurs et le système.

### 3.3.1 Diagramme de classes partiel du Sprint 1

Le diagramme de classes partiel du Sprint 1 présente les principales classes intervenant dans l’inscription, la vérification du numéro de téléphone, l’authentification, la gestion du profil utilisateur et l’accès sécurisé au back-office administrateur.

Dans ce sprint, le modèle est volontairement limité aux classes nécessaires à la compréhension du périmètre fonctionnel. Ainsi, les classes techniques telles que les contrôleurs, services, repositories ou DTO ne sont pas représentées afin de garder un diagramme lisible et orienté métier.

| Classe | Rôle dans le Sprint 1 |
|---|---|
| Utilisateur | Représente le compte utilisateur de la plateforme. Il contient les informations nécessaires à l’inscription, à l’authentification et à la gestion du profil. |
| CodeOTP | Représente le code envoyé pour vérifier le numéro de téléphone lors de l’inscription. |
| Administrateur | Représente un utilisateur disposant d’un accès spécifique au back-office. |
| Configuration2FA | Représente la configuration de l’authentification à deux facteurs utilisée pour sécuriser l’accès administrateur. |

**Tableau 3.6 : Principales classes du Sprint 1**

![Diagramme de classes partiel du Sprint 1](<images/chapitre3/Figure 3.2 Diagramme de classes partiel du Sprint 1.png>)

**Figure 3.2 : Diagramme de classes partiel du Sprint 1**

Comme le montre la figure 3.2, la classe `Utilisateur` constitue l’entité centrale du Sprint 1. Elle permet de représenter les informations nécessaires à la création du compte, à l’authentification et à la gestion du profil. La classe `CodeOTP` est associée à l’utilisateur afin de gérer la vérification du numéro de téléphone.

L’`Administrateur` est représenté comme une spécialisation de l’utilisateur, car il dispose d’un compte avec des droits particuliers. Son accès au back-office est renforcé par une configuration 2FA, représentée par la classe `Configuration2FA`.

### 3.3.2 Diagrammes de séquence

Les diagrammes de séquence permettent de représenter le déroulement dynamique des principaux scénarios du Sprint 1. Ils montrent les échanges entre les acteurs, les interfaces de la plateforme, le Back-End FESTY, la base de données et les services externes utilisés dans certains cas.

Dans ce sprint, nous retenons quatre scénarios principaux : l’inscription avec vérification du numéro de téléphone, l’authentification à la plateforme, la gestion du profil utilisateur et l’authentification au back-office avec vérification 2FA.

#### Diagramme de séquence : S’inscrire à la plateforme

Ce diagramme présente le scénario d’inscription d’un visiteur à la plateforme FESTY. Le visiteur saisit ses informations, puis le système crée un compte en attente de vérification et envoie un code OTP afin de valider le numéro de téléphone.

![Diagramme de séquence du scénario d’inscription](<images/chapitre3/Figure 3.3 Diagramme de séquence du scénario d’inscription à la plateforme.png>)

**Figure 3.3 : Diagramme de séquence du scénario d’inscription à la plateforme**

#### Diagramme de séquence : S’authentifier à la plateforme

Ce diagramme décrit le scénario d’authentification d’un utilisateur. L’utilisateur saisit ses identifiants, puis le système vérifie les informations et l’état du compte avant d’autoriser l’accès à l’espace personnel.

![Diagramme de séquence du scénario d’authentification](<images/chapitre3/Figure 3.4 Diagramme de séquence du scénario d’authentification à la plateforme.png>)

**Figure 3.4 : Diagramme de séquence du scénario d’authentification à la plateforme**

#### Diagramme de séquence : Gérer son profil

Ce diagramme illustre le scénario de gestion du profil utilisateur. L’utilisateur consulte ses informations personnelles, puis peut les modifier. Après validation, le système enregistre les nouvelles données et affiche une confirmation.

![Diagramme de séquence du scénario de gestion du profil](<images/chapitre3/Figure 3.5 Diagramme de séquence du scénario de gestion du profil utilisateur.png>)

**Figure 3.5 : Diagramme de séquence du scénario de gestion du profil utilisateur**


#### Diagramme de séquence : S’authentifier au back-office

Ce diagramme présente le scénario d’accès administrateur au back-office. L’administrateur saisit ses identifiants, puis le système demande une vérification 2FA avant d’autoriser l’accès à l’espace d’administration.

![Diagramme de séquence du scénario d’authentification au back-office](<images/chapitre3/Figure 3.6 Diagramme de séquence du scénario d’authentification au back-office.png>)

**Figure 3.6 : Diagramme de séquence du scénario d’authentification au back-office**

## 3.4 Réalisation

Cette section décrit les principales interfaces développées dans le cadre du Sprint 1. Les emplacements des figures de réalisation sont préparés pour ajout manuel des captures.

### 3.4.1 Interface d’inscription

L’interface d’inscription permet au visiteur de saisir les informations nécessaires à la création de son compte, notamment ses informations personnelles, son email, son mot de passe et son numéro de téléphone.

![Interface d’inscription](<images/chapitre3/Figure 3.7 Interface d’inscription à la plateforme.png>)

**Figure 3.7 : Interface d’inscription à la plateforme**

### 3.4.2 Interface de gestion du profil utilisateur

L’interface de gestion du profil permet à l’utilisateur de consulter ses informations personnelles et de les modifier si nécessaire.

![Interface de gestion du profil utilisateur](<images/chapitre3/Figure 3.8 Interface de gestion du profil utilisateur.png>)

**Figure 3.8 : Interface de gestion du profil utilisateur**

### 3.4.3 Interface d’authentification administrateur

L’interface d’authentification administrateur permet à l’administrateur d’accéder au back-office FESTY. L’accès est sécurisé par une vérification 2FA après la saisie des identifiants.

![Interface d’authentification administrateur](<images/chapitre3/Figure 3.9 Interface d’authentification administrateur au back-office.png>)

**Figure 3.9 : Interface d’authentification administrateur au back-office**

## Conclusion

Dans ce chapitre, nous avons présenté l’étude et la réalisation du Sprint 1, consacré à l’authentification et à la gestion des accès. Nous avons commencé par définir l’objectif du sprint et son backlog, puis nous avons présenté l’analyse fonctionnelle à travers le diagramme de cas d’utilisation et les descriptions textuelles des principaux cas.

Nous avons ensuite présenté la conception du sprint à travers le diagramme de classes partiel et les diagrammes de séquence relatifs à l’inscription, à l’authentification, à la gestion du profil et à l’accès administrateur au back-office.

Enfin, nous avons présenté les principales interfaces réalisées durant ce sprint. Le chapitre suivant sera consacré au Sprint 2, portant sur la gestion des partenaires et des événements.