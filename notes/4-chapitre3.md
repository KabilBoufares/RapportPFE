# Chapitre 3 : Sprint 1 — Authentification et gestion des accès

## 3.1 Introduction

Ce chapitre présente l’étude et la réalisation du premier sprint du projet FESTY. Ce sprint est consacré aux fonctionnalités d’accès à la plateforme : inscription, vérification du numéro de téléphone, authentification, gestion du profil utilisateur et accès sécurisé au back-office administrateur.

Nous présentons d’abord le Sprint Backlog, puis l’analyse fonctionnelle à travers le diagramme de cas d’utilisation et les descriptions textuelles des principaux cas. Ensuite, la conception est détaillée à l’aide du diagramme de classes partiel et des diagrammes de séquence. Enfin, la partie réalisation expose les principales interfaces développées durant ce sprint.

## 3.2 Sprint Backlog

Le Sprint 1 vise à mettre en place le socle d’accès sécurisé à la plateforme FESTY. Il permet au visiteur de créer un compte et de vérifier son numéro de téléphone, à l’utilisateur de s’authentifier et de gérer son profil, et à l’administrateur d’accéder au back-office à travers une authentification renforcée par 2FA.

Le tableau 3.1 présente les user stories retenues pour ce premier sprint.

| ID | User Story | Tâches principales | Priorité |
|---|---|---|---|
| US-1.1 | En tant que visiteur, je veux créer un compte afin d’accéder à la plateforme. | Créer le formulaire d’inscription ; valider les champs ; enregistrer les informations du compte ; déclencher la vérification du téléphone. | Must Have |
| US-1.2 | En tant que visiteur, je veux vérifier mon numéro de téléphone afin d’activer mon compte. | Envoyer un code OTP ; saisir le code reçu ; vérifier le code ; activer le compte après validation. | Must Have |
| US-1.3 | En tant qu’utilisateur, je veux m’authentifier afin d’accéder à mon espace personnel. | Créer l’interface de connexion ; vérifier les identifiants ; générer une session sécurisée ; rediriger l’utilisateur. | Must Have |
| US-1.4 | En tant qu’utilisateur, je veux consulter mon profil afin de visualiser mes informations personnelles. | Récupérer les informations de l’utilisateur ; afficher les données du profil ; sécuriser l’accès aux informations personnelles. | Must Have |
| US-1.5 | En tant qu’utilisateur, je veux modifier mes informations personnelles afin de maintenir mon profil à jour. | Afficher un formulaire de modification ; valider les données ; enregistrer les modifications ; afficher une confirmation. | Must Have |
| US-1.6 | En tant qu’administrateur, je veux m’authentifier au back-office afin d’accéder à l’espace d’administration. | Créer l’interface de connexion administrateur ; vérifier les identifiants ; demander le code 2FA ; autoriser l’accès après validation. | Must Have |

**Tableau 3.1 : Backlog du Sprint 1**

Le Sprint 1 se concentre sur les parcours principaux d’accès à la plateforme. Les actions complémentaires liées à l’OTP, comme le renvoi du code, sont intégrées aux scénarios correspondants lorsqu’elles sont nécessaires.

## 3.3 Analyse fonctionnelle

L’analyse fonctionnelle précise les interactions entre les acteurs du Sprint 1 et les fonctionnalités liées à l’authentification et à la gestion des accès. Les acteurs concernés sont le Visiteur, l’Utilisateur et l’Administrateur. Le service OTP/SMS intervient comme acteur secondaire lors de la vérification du numéro de téléphone.

### 3.3.1 Diagramme de cas d’utilisation

La figure 3.1 présente les cas d’utilisation du Sprint 1 : inscription, vérification du numéro de téléphone, authentification, gestion du profil utilisateur et accès administrateur au back-office.

![Diagramme de cas d’utilisation du Sprint 1](<images/chapitre3/Figure 3.1 Diagramme de cas d’utilisation du Sprint 1.png>)

**Figure 3.1 : Diagramme de cas d’utilisation du Sprint 1**

Le Visiteur peut créer un compte et vérifier son numéro de téléphone. Une fois son compte activé, il devient Utilisateur et peut s’authentifier, consulter son profil et modifier ses informations personnelles. L’Administrateur dispose d’un accès spécifique au back-office, sécurisé par une vérification 2FA.

### 3.3.2 Description textuelle des cas d’utilisation

Les tableaux suivants décrivent les principaux cas d’utilisation du Sprint 1 selon l’acteur, l’objectif, les préconditions, le scénario nominal et les exceptions.

#### Cas d’utilisation : S’inscrire à la plateforme

| Élément | Description |
|---|---|
| Cas d’utilisation | S’inscrire à la plateforme |
| Acteur principal | Visiteur |
| Objectif | Permettre à un visiteur de créer un compte sur FESTY. |
| Précondition | Le visiteur ne possède pas encore de compte actif. |
| Postcondition | Le compte utilisateur est créé et activé après vérification du numéro de téléphone. |
| Scénario nominal | 1. Le visiteur accède au formulaire d’inscription.<br>2. Il saisit ses informations personnelles, son email, son mot de passe et son numéro de téléphone.<br>3. Le système vérifie les informations saisies.<br>4. Le système crée le compte et envoie un code OTP.<br>5. Le visiteur saisit le code reçu.<br>6. Le système vérifie le code et active le compte. |
| Exceptions | E1 : Les informations saisies sont invalides.<br>E2 : L’email est déjà utilisé.<br>E3 : Le code OTP est incorrect ou expiré. |

**Tableau 3.2 : Description textuelle du cas d’utilisation « S’inscrire à la plateforme »**

#### Cas d’utilisation : S’authentifier à la plateforme

| Élément | Description |
|---|---|
| Cas d’utilisation | S’authentifier à la plateforme |
| Acteur principal | Utilisateur |
| Objectif | Permettre à l’utilisateur d’accéder à son espace personnel. |
| Précondition | L’utilisateur possède un compte actif. |
| Postcondition | L’utilisateur est authentifié et peut accéder aux fonctionnalités privées. |
| Scénario nominal | 1. L’utilisateur accède à l’interface de connexion.<br>2. Il saisit son email et son mot de passe.<br>3. Le système vérifie les identifiants.<br>4. Le système vérifie l’état du compte.<br>5. Le système autorise l’accès à l’espace personnel. |
| Exceptions | E1 : L’adresse email est introuvable.<br>E2 : Le mot de passe est incorrect.<br>E3 : Le compte n’est pas encore activé. |

**Tableau 3.3 : Description textuelle du cas d’utilisation « S’authentifier à la plateforme »**

#### Cas d’utilisation : Gérer son profil

| Élément | Description |
|---|---|
| Cas d’utilisation | Gérer son profil |
| Acteur principal | Utilisateur |
| Objectif | Permettre à l’utilisateur de consulter et modifier ses informations personnelles. |
| Précondition | L’utilisateur est authentifié. |
| Postcondition | Les informations du profil sont affichées ou mises à jour. |
| Scénario nominal | 1. L’utilisateur accède à la page de profil.<br>2. Le système récupère ses informations personnelles.<br>3. Le système affiche les informations du profil.<br>4. L’utilisateur modifie les champs souhaités.<br>5. Le système vérifie les nouvelles données.<br>6. Le système enregistre les modifications et affiche une confirmation. |
| Exceptions | E1 : Les données saisies sont invalides.<br>E2 : L’utilisateur quitte la page sans enregistrer les modifications. |

**Tableau 3.4 : Description textuelle du cas d’utilisation « Gérer son profil »**

#### Cas d’utilisation : S’authentifier au back-office

| Élément | Description |
|---|---|
| Cas d’utilisation | S’authentifier au back-office |
| Acteur principal | Administrateur |
| Objectif | Permettre à l’administrateur d’accéder au back-office FESTY. |
| Précondition | L’administrateur possède un compte autorisé. |
| Postcondition | L’administrateur est authentifié et accède à l’espace d’administration. |
| Scénario nominal | 1. L’administrateur accède à l’interface de connexion du back-office.<br>2. Il saisit son email et son mot de passe.<br>3. Le système vérifie les identifiants.<br>4. Le système vérifie le rôle administrateur.<br>5. Le système demande le code 2FA.<br>6. L’administrateur saisit le code reçu.<br>7. Le système vérifie le code 2FA, génère un jeton sécurisé [REF-JWT][REF-SPRING-SECURITY] et autorise l’accès. |
| Exceptions | E1 : Les identifiants sont incorrects.<br>E2 : Le code 2FA est invalide ou expiré.<br>E3 : Le compte ne possède pas le rôle administrateur. |

**Tableau 3.5 : Description textuelle du cas d’utilisation « S’authentifier au back-office »**

## 3.4 Conception

La conception du Sprint 1 présente les éléments structurels et dynamiques nécessaires à l’authentification et à la gestion des accès. Elle s’appuie sur un diagramme de classes partiel et sur des diagrammes de séquence décrivant les principaux scénarios du sprint.

### 3.4.1 Diagramme de classes

Le diagramme de classes partiel présente les principales classes intervenant dans l’inscription, la vérification du numéro de téléphone, l’authentification, la gestion du profil utilisateur et l’accès administrateur.

| Classe | Rôle dans le Sprint 1 |
|---|---|
| Utilisateur | Représente le compte utilisateur de la plateforme. Il contient les informations nécessaires à l’inscription, à l’authentification et à la gestion du profil. |
| CodeOTP | Représente le code envoyé pour vérifier le numéro de téléphone lors de l’inscription. |
| Administrateur | Représente un utilisateur disposant d’un accès spécifique au back-office. |
| Configuration2FA | Représente la configuration de l’authentification à deux facteurs utilisée pour sécuriser l’accès administrateur. |

**Tableau 3.6 : Principales classes du Sprint 1**

![Diagramme de classes partiel du Sprint 1](<images/chapitre3/Figure 3.2 Diagramme de classes partiel du Sprint 1.png>)

**Figure 3.2 : Diagramme de classes partiel du Sprint 1**

La classe `Utilisateur` constitue l’entité centrale du sprint. Elle est associée à `CodeOTP` pour gérer la vérification du numéro de téléphone. L’`Administrateur` est représenté comme une spécialisation de l’utilisateur, avec une configuration 2FA dédiée à la sécurisation de son accès au back-office.

### 3.4.2 Diagrammes de séquence

Les diagrammes de séquence décrivent les échanges entre les acteurs, les interfaces, le Back-End FESTY, la base de données et les services externes. Les scénarios retenus sont l’inscription avec vérification OTP, l’authentification à la plateforme, la gestion du profil et l’authentification administrateur avec 2FA.

#### Diagramme de séquence : S’inscrire à la plateforme

La figure 3.3 illustre le scénario d’inscription. Le visiteur saisit ses informations, le système crée un compte en attente de vérification, puis envoie un code OTP pour valider le numéro de téléphone.

![Diagramme de séquence du scénario d’inscription](<images/chapitre3/Figure 3.3 Diagramme de séquence du scénario d’inscription à la plateforme.png>)

**Figure 3.3 : Diagramme de séquence du scénario d’inscription à la plateforme**

#### Diagramme de séquence : S’authentifier à la plateforme

La figure 3.4 présente le scénario d’authentification d’un utilisateur. Le système vérifie les identifiants et l’état du compte avant d’autoriser l’accès à l’espace personnel.

![Diagramme de séquence du scénario d’authentification](<images/chapitre3/Figure 3.4 Diagramme de séquence du scénario d’authentification à la plateforme.png>)

**Figure 3.4 : Diagramme de séquence du scénario d’authentification à la plateforme**

#### Diagramme de séquence : Gérer son profil

La figure 3.5 décrit le scénario de gestion du profil utilisateur. L’utilisateur consulte ses informations, modifie les champs souhaités, puis le système valide et enregistre les modifications.

![Diagramme de séquence du scénario de gestion du profil](<images/chapitre3/Figure 3.5 Diagramme de séquence du scénario de gestion du profil utilisateur.png>)

**Figure 3.5 : Diagramme de séquence du scénario de gestion du profil utilisateur**

#### Diagramme de séquence : S’authentifier au back-office

La figure 3.6 présente le scénario d’accès administrateur au back-office. Après vérification des identifiants, le système demande une validation 2FA avant d’autoriser l’accès.

![Diagramme de séquence du scénario d’authentification au back-office](<images/chapitre3/Figure 3.6 Diagramme de séquence du scénario d’authentification au back-office.png>)

**Figure 3.6 : Diagramme de séquence du scénario d’authentification au back-office**

## 3.5 Réalisation

Cette section présente les principales interfaces développées durant le Sprint 1.

La figure 3.7 illustre l’interface d’inscription permettant au visiteur de saisir les informations nécessaires à la création de son compte.

![Interface d’inscription](<images/chapitre3/Figure 3.7 Interface d’inscription à la plateforme.png>)

**Figure 3.7 : Interface d’inscription à la plateforme**

La figure 3.8 présente l’interface de gestion du profil, à partir de laquelle l’utilisateur peut consulter et modifier ses informations personnelles.

![Interface de gestion du profil utilisateur](<images/chapitre3/Figure 3.8 Interface de gestion du profil utilisateur.png>)

**Figure 3.8 : Interface de gestion du profil utilisateur**

La figure 3.9 montre l’interface d’authentification administrateur. L’accès au back-office est renforcé par une vérification 2FA après la saisie des identifiants.

![Interface d’authentification administrateur](<images/chapitre3/Figure 3.9 Interface d’authentification administrateur au back-office.png>)

**Figure 3.9 : Interface d’authentification administrateur au back-office**

## 3.6 Conclusion

Dans ce chapitre, nous avons présenté l’étude et la réalisation du Sprint 1, consacré à l’authentification et à la gestion des accès. Nous avons défini le Sprint Backlog, puis présenté l’analyse fonctionnelle à travers le diagramme de cas d’utilisation et les descriptions textuelles des principaux scénarios.

Nous avons également exposé la conception du sprint à travers le diagramme de classes partiel et les diagrammes de séquence relatifs à l’inscription, à l’authentification, à la gestion du profil et à l’accès administrateur au back-office.

Enfin, nous avons présenté les principales interfaces réalisées durant ce sprint. Le chapitre suivant sera consacré au Sprint 2, portant sur la gestion des partenaires et des événements.