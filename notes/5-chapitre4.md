# Chapitre 4 : Sprint 2 — Gestion des partenaires et des événements

## 4.1 Introduction

Ce chapitre présente l’étude et la réalisation du Sprint 2 du projet FESTY. Ce sprint est consacré à la gestion des partenaires et des événements, depuis la demande d’accès partenaire jusqu’au contrôle administratif de l’offre événementielle.

Nous présentons d’abord le Sprint Backlog, puis l’analyse fonctionnelle à travers le diagramme de cas d’utilisation et les descriptions textuelles. Ensuite, la conception est détaillée à l’aide du diagramme de classes, des diagrammes de séquence et du diagramme d’activité. Enfin, la partie réalisation expose les principales interfaces développées durant ce sprint.

## 4.2 Sprint Backlog

Le Sprint 2 vise à permettre à un utilisateur de devenir partenaire organisateur, à gérer son profil professionnel et à créer des événements soumis à validation. Il introduit aussi le traitement administratif des demandes partenaires et le contrôle des événements avant leur publication. Le tableau 4.1 présente les user stories [REF-SCRUM] retenues pour ce sprint.

| ID | User Story | Tâches principales | Priorité |
|---|---|---|---|
| US-2.1 | En tant qu’utilisateur, je veux soumettre une demande pour devenir partenaire organisateur afin de proposer des événements sur la plateforme. | Créer le formulaire de candidature ; saisir les informations professionnelles ; téléverser les documents requis ; envoyer la demande ; suivre son statut. | Must Have |
| US-2.2 | En tant qu’administrateur, je veux traiter les demandes partenaires afin de valider ou refuser l’accès à l’espace partenaire. | Consulter les demandes reçues ; afficher le dossier partenaire ; vérifier les informations ; accepter, refuser ou demander des informations complémentaires. | Must Have |
| US-2.3 | En tant que partenaire, je veux gérer mon profil partenaire afin de présenter mes informations professionnelles. | Afficher le profil partenaire ; modifier les informations professionnelles ; mettre à jour les coordonnées et la description. | Should Have |
| US-2.4 | En tant que partenaire, je veux créer et gérer mes événements afin de maintenir leurs informations à jour. | Créer un événement ; saisir les informations générales ; définir la date et la localisation ; consulter, modifier ou annuler un événement. | Must Have |
| US-2.5 | En tant qu’administrateur, je veux contrôler l’offre événementielle afin de garantir la conformité du contenu publié. | Consulter les événements soumis ; afficher les détails ; approuver ou rejeter un événement. | Must Have |

**Tableau 4.1 : Backlog du Sprint 2**

## 4.3 Analyse fonctionnelle

L’analyse fonctionnelle précise les interactions entre les acteurs du Sprint 2 et les fonctionnalités réalisées. L’Utilisateur peut soumettre une demande partenaire et suivre son statut. Le Partenaire peut gérer son profil professionnel, créer un événement et gérer ses événements. L’Administrateur traite les demandes partenaires et contrôle l’offre événementielle.

### 4.3.1 Diagramme de cas d’utilisation

La figure 4.1 présente les principales fonctionnalités liées au parcours partenaire et à la gestion des événements.

![Diagramme de cas d’utilisation du Sprint 2](<images/chapitre4/Figure 4.1 Diagramme de cas d’utilisation du Sprint 2.png>)

**Figure 4.1 : Diagramme de cas d’utilisation du Sprint 2**

Le diagramme montre que le cas « Devenir partenaire organisateur » inclut la soumission d’une demande partenaire. Après validation, le partenaire peut gérer son profil et ses événements, tandis que l’administrateur assure le traitement des demandes et la validation de l’offre événementielle.

### 4.3.2 Description textuelle des cas d’utilisation

Les tableaux suivants décrivent les principaux cas d’utilisation du Sprint 2.

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

## 4.4 Conception

La conception présente les éléments structurels et dynamiques nécessaires à la gestion des partenaires et des événements.

### 4.4.1 Diagramme de classes

La figure 4.2 présente les classes liées à l’utilisateur, au partenaire, à la demande partenaire, aux documents justificatifs et aux événements.

![Diagramme de classes du Sprint 2](<images/chapitre4/Figure 4.2 Diagramme de classes du Sprint 2.png>)

**Figure 4.2 : Diagramme de classes du Sprint 2**

Un utilisateur peut soumettre une demande partenaire contenant des documents justificatifs. Après validation, le partenaire peut gérer son profil et ses événements. L’administrateur intervient pour traiter les demandes et contrôler les événements soumis.

### 4.4.2 Diagrammes de séquence

Les diagrammes de séquence décrivent les échanges entre les acteurs, les interfaces, le back-end et la base de données pour les principaux scénarios du sprint.

#### Diagramme de séquence : Soumission d’une demande partenaire

La figure 4.3 décrit la soumission d’une demande partenaire. L’utilisateur remplit le formulaire, ajoute les documents requis, puis le système vérifie les données et enregistre la demande.

![Diagramme de séquence du scénario de soumission d’une demande partenaire](<images/chapitre4/Figure 4.3 Diagramme de séquence du scénario de soumission d’une demande partenaire.png>)

**Figure 4.3 : Diagramme de séquence du scénario de soumission d’une demande partenaire**

#### Diagramme de séquence : Traitement d’une demande partenaire

La figure 4.4 présente le traitement d’une demande partenaire. L’administrateur consulte le dossier, vérifie les informations et prend une décision.

![Diagramme de séquence du scénario de traitement d’une demande partenaire](<images/chapitre4/Figure 4.4 Diagramme de séquence du scénario de traitement d’une demande partenaire.png>)

**Figure 4.4 : Diagramme de séquence du scénario de traitement d’une demande partenaire**

#### Diagramme de séquence : Gestion du profil partenaire

La figure 4.5 décrit la mise à jour du profil partenaire. Le partenaire modifie ses informations professionnelles, puis le système valide et enregistre les données.

![Diagramme de séquence du scénario de gestion du profil partenaire](<images/chapitre4/Figure 4.5 Diagramme de séquence du scénario de gestion du profil partenaire.png>)

**Figure 4.5 : Diagramme de séquence du scénario de gestion du profil partenaire**

#### Diagramme de séquence : Création d’un événement

La figure 4.6 présente la création d’un événement. Le partenaire saisit les informations nécessaires, ajoute les médias, puis le système enregistre l’événement avec le statut en attente de validation.

![Diagramme de séquence du scénario de création d’un événement](<images/chapitre4/Figure 4.6 Diagramme de séquence du scénario de création d’un événement.png>)

**Figure 4.6 : Diagramme de séquence du scénario de création d’un événement**

### 4.4.3 Diagramme d’activité

La figure 4.7 modélise le contrôle de l’offre événementielle. L’administrateur examine l’événement soumis, puis l’approuve ou le rejette avec un motif.

![Diagramme d’activité du contrôle de l’offre événementielle](<images/chapitre4/Figure 4.7 Diagramme d’activité du contrôle de l’offre événementielle.png>)

**Figure 4.7 : Diagramme d’activité du contrôle de l’offre événementielle**

## 4.5 Réalisation

Cette section présente les principales interfaces réalisées durant le Sprint 2.

La figure 4.8 illustre l’interface de soumission d’une demande partenaire. Elle permet à l’utilisateur de saisir ses informations professionnelles et d’ajouter les documents requis.

![Interface de soumission d’une demande partenaire](<images/chapitre4/Figure 4.8 Interface de soumission d’une demande partenaire.png>)

**Figure 4.8 : Interface de soumission d’une demande partenaire**

La figure 4.9 présente l’interface de traitement des demandes partenaires, utilisée par l’administrateur pour consulter les dossiers et prendre une décision.

![Interface de traitement des demandes partenaires](<images/chapitre4/Figure 4.9 Interface de traitement des demandes partenaires.png>)

**Figure 4.9 : Interface de traitement des demandes partenaires**

La figure 4.10 montre l’interface de création d’un événement, dans laquelle le partenaire renseigne les informations principales de l’événement.

![Interface de création d’un événement](<images/chapitre4/Figure 4.10 Interface de création d’un événement.png>)

**Figure 4.10 : Interface de création d’un événement**

La figure 4.11 présente l’interface de contrôle de l’offre événementielle. Elle permet à l’administrateur de vérifier les événements soumis et de les approuver ou les rejeter.

![Interface de contrôle de l’offre événementielle](<images/chapitre4/Figure 4.11 Interface de contrôle de l’offre événementielle.png>)

**Figure 4.11 : Interface de contrôle de l’offre événementielle**

## 4.6 Conclusion

Dans ce chapitre, nous avons présenté l’étude et la réalisation du Sprint 2, consacré à la gestion des partenaires et des événements. Nous avons commencé par le Sprint Backlog, puis l’analyse fonctionnelle et la conception.

Ce sprint a permis de mettre en place le parcours de demande partenaire, la gestion du profil professionnel, la création d’événements et le contrôle administratif de l’offre événementielle. Le chapitre suivant sera consacré à l’exploration, à la personnalisation et aux interactions autour des événements.