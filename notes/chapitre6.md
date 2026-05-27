# Chapitre 6 : Sprint 4 — Billetterie, paiement, revente et contrôle d’accès

## 6.1 Introduction

Ce chapitre présente l’étude et la réalisation du quatrième sprint du projet FESTY. Ce sprint est consacré aux fonctionnalités liées à la billetterie, au paiement, à la revente des tickets et au contrôle d’accès aux événements.

Après avoir traité l’exploration des événements, la personnalisation et les interactions événementielles dans le sprint précédent, ce sprint permet à l’utilisateur de passer à une étape plus opérationnelle. Il peut réserver et payer un billet, consulter ses tickets, demander un remboursement et utiliser le marché de revente.

Ce sprint concerne également les fonctionnalités liées au contrôle d’accès. Le partenaire peut préparer les sessions de scan et affecter des agents, tandis que l’agent de scan vérifie les tickets à l’entrée des événements. L’administrateur intervient dans la supervision des opérations sensibles et financières.

Dans ce chapitre, nous présentons d’abord le backlog du sprint. Ensuite, nous détaillons l’analyse fonctionnelle à travers les diagrammes de cas d’utilisation et les descriptions textuelles des principaux cas. La partie conception présente les diagrammes de classes et les diagrammes de séquence associés. Enfin, nous exposons les principales interfaces réalisées durant ce sprint.

## 6.2 Analyse du Sprint 4

L’analyse fonctionnelle du Sprint 4 permet de préciser les interactions liées à la billetterie, au paiement, à la revente et au contrôle d’accès. Les acteurs concernés sont l’Utilisateur, le Partenaire, l’Agent de scan et l’Administrateur.

L’Utilisateur peut réserver et payer un billet, consulter ses tickets, demander un remboursement et participer au marché de revente. Le Partenaire peut gérer les sessions de scan et suivre son activité. L’Agent de scan intervient pour contrôler l’accès aux événements. L’Administrateur assure la supervision des opérations sensibles et le traitement des opérations financières.

### 6.2.1 Backlog du Sprint 4

Le Sprint Backlog regroupe les user stories sélectionnées pour le quatrième sprint. Ces fonctionnalités permettent de compléter le cycle événementiel en couvrant l’achat du billet, la gestion des tickets, la revente, le contrôle d’accès et le suivi des opérations financières.

Le tableau suivant présente les user stories retenues pour ce sprint.

| ID | User Story | Tâches principales | Priorité |
|---|---|---|---|
| US-4.1 | En tant qu’utilisateur, je veux consulter le détail d’un événement afin de choisir un billet adapté. | Afficher les informations de l’événement ; afficher les types de billets disponibles ; consulter les prix et les disponibilités. | Must Have |
| US-4.2 | En tant qu’utilisateur, je veux réserver et payer un billet afin de participer à un événement. | Sélectionner un type de billet ; vérifier la disponibilité ; créer une réservation temporaire ; effectuer le paiement ; générer le ticket après confirmation. | Must Have |
| US-4.3 | En tant qu’utilisateur, je veux consulter mes tickets afin d’accéder aux informations de mes achats. | Afficher la liste des tickets ; consulter le détail d’un ticket ; afficher le code du ticket. | Must Have |
| US-4.4 | En tant qu’utilisateur, je veux demander un remboursement lorsque cela est possible. | Sélectionner un ticket ou une commande ; saisir la raison ; soumettre la demande ; suivre son statut. | Should Have |
| US-4.5 | En tant qu’utilisateur, je veux mettre un ticket FESTY en revente afin de le céder à un autre utilisateur. | Sélectionner un ticket ; vérifier qu’il est revendable ; définir le prix ; publier l’annonce. | Should Have |
| US-4.6 | En tant qu’utilisateur, je veux consulter le marché de revente afin d’acheter un ticket revendu. | Afficher les annonces disponibles ; consulter une annonce ; effectuer le paiement ; confirmer l’achat. | Should Have |
| US-4.7 | En tant qu’utilisateur, je veux proposer un ticket externe à la vente afin de le publier dans le marché de revente. | Saisir les informations du ticket externe ; ajouter une image justificative ; définir le prix ; publier l’annonce. | Could Have |
| US-4.8 | En tant que partenaire, je veux gérer les sessions de scan afin d’organiser le contrôle d’accès à mes événements. | Créer une session de scan ; ouvrir la session ; fermer la session ; consulter son statut. | Must Have |
| US-4.9 | En tant que partenaire, je veux affecter des agents de scan à un événement afin de déléguer le contrôle d’accès. | Sélectionner un événement ; sélectionner un agent ; créer l’affectation ; révoquer l’affectation si nécessaire. | Must Have |
| US-4.10 | En tant qu’agent de scan, je veux contrôler l’accès à un événement afin de vérifier les tickets des participants. | Scanner le ticket ; vérifier sa validité ; enregistrer le résultat ; afficher l’autorisation ou le refus d’accès. | Must Have |
| US-4.11 | En tant que partenaire, je veux suivre mon activité et ma monétisation afin de consulter les résultats de mes événements. | Consulter les ventes ; consulter les fonds en attente ; suivre les montants à recevoir ; consulter les règlements. | Should Have |
| US-4.12 | En tant qu’administrateur, je veux traiter les opérations financières afin de suivre les transactions sensibles de la plateforme. | Consulter les opérations ; vérifier les demandes financières ; approuver ou rejeter une opération ; mettre à jour son statut. | Should Have |
| US-4.13 | En tant qu’administrateur, je veux superviser les opérations sensibles afin de limiter les risques liés aux paiements et aux accès. | Suivre les opérations sensibles ; contrôler les opérations échouées ; vérifier les actions nécessitant une supervision. | Should Have |

**Tableau 6.1 : Backlog du Sprint 4**

### 6.2.3 Description textuelle des cas d’utilisation

Cette section présente les descriptions textuelles des principaux cas d’utilisation du Sprint 4. Les cas retenus couvrent les fonctionnalités les plus représentatives de la billetterie, de la revente, du contrôle d’accès et de la supervision financière.

#### Cas d’utilisation : Réserver et payer un billet

| Élément | Description |
|---|---|
| Cas d’utilisation | Réserver et payer un billet |
| Acteur principal | Utilisateur |
| Objectif | Permettre à l’utilisateur de réserver temporairement un billet, de le payer et d’obtenir son ticket après confirmation. |
| Précondition | L’utilisateur est authentifié et consulte le détail d’un événement disposant d’une billetterie active. |
| Postcondition | La commande est confirmée et le ticket est généré pour l’utilisateur. |
| Scénario nominal | 1. L’utilisateur consulte le détail d’un événement.<br>2. Il sélectionne un type de billet.<br>3. Le système vérifie la disponibilité du billet.<br>4. Le système crée une réservation temporaire.<br>5. L’utilisateur procède au paiement.<br>6. Le système confirme le paiement.<br>7. Le système convertit la réservation en commande payée.<br>8. Le système génère le ticket.<br>9. Le système affiche la confirmation de l’achat. |
| Exceptions | E1 : Le billet n’est plus disponible.<br>E2 : La réservation temporaire a expiré.<br>E3 : Le paiement échoue. |

**Tableau 6.2 : Description textuelle du cas d’utilisation « Réserver et payer un billet »**

#### Cas d’utilisation : Gérer la revente d’un ticket

| Élément | Description |
|---|---|
| Cas d’utilisation | Gérer la revente d’un ticket |
| Acteur principal | Utilisateur |
| Objectif | Permettre à l’utilisateur de mettre un ticket FESTY en revente ou de proposer un ticket externe dans le marché de revente. |
| Précondition | L’utilisateur est authentifié et accède à ses tickets ou au marché de revente. |
| Postcondition | Une annonce de revente est publiée ou un ticket revendu est acheté par un autre utilisateur. |
| Scénario nominal | 1. L’utilisateur accède à ses tickets ou au marché de revente.<br>2. Il choisit de mettre un ticket FESTY en revente ou de proposer un ticket externe.<br>3. Il saisit les informations nécessaires.<br>4. Le système vérifie les informations saisies.<br>5. Le système publie l’annonce de revente.<br>6. Un autre utilisateur consulte le marché de revente.<br>7. Il sélectionne une annonce et procède au paiement.<br>8. Le système confirme l’achat du ticket revendu. |
| Exceptions | E1 : Le ticket FESTY n’est pas revendable.<br>E2 : Les informations du ticket externe sont incomplètes.<br>E3 : Le paiement du ticket en revente échoue. |

**Tableau 6.3 : Description textuelle du cas d’utilisation « Gérer la revente d’un ticket »**

Dans le cas d’un ticket externe, l’utilisateur ajoute les informations du ticket ainsi qu’une image justificative. Cette fonctionnalité est présentée comme une extension du marché de revente. La transaction peut être sécurisée par un mécanisme d’escrow, sans intégrer de chat entre vendeur et acheteur dans ce sprint.

#### Cas d’utilisation : Contrôler l’accès à un événement

| Élément | Description |
|---|---|
| Cas d’utilisation | Contrôler l’accès à un événement |
| Acteur principal | Agent de scan |
| Objectif | Permettre à l’agent de scan de vérifier la validité d’un ticket présenté à l’entrée d’un événement. |
| Précondition | L’agent de scan est authentifié, affecté à l’événement et une session de scan est ouverte. |
| Postcondition | Le scan est enregistré et l’accès est autorisé ou refusé. |
| Scénario nominal | 1. L’agent de scan accède à la session de scan.<br>2. Il scanne le ticket présenté par le participant.<br>3. Le système vérifie la validité du ticket.<br>4. Le système vérifie que le ticket correspond à l’événement.<br>5. Le système enregistre l’historique du scan.<br>6. Le système retourne le résultat du contrôle.<br>7. L’agent autorise ou refuse l’accès selon le résultat. |
| Exceptions | E1 : Le ticket est invalide.<br>E2 : Le ticket a déjà été utilisé.<br>E3 : L’agent n’est pas autorisé à scanner pour cet événement.<br>E4 : La session de scan est fermée. |

**Tableau 6.4 : Description textuelle du cas d’utilisation « Contrôler l’accès à un événement »**

#### Cas d’utilisation : Traiter les opérations financières

| Élément | Description |
|---|---|
| Cas d’utilisation | Traiter les opérations financières |
| Acteur principal | Administrateur |
| Objectif | Permettre à l’administrateur de suivre et traiter les opérations financières sensibles de la plateforme. |
| Précondition | L’administrateur est authentifié au back-office. |
| Postcondition | L’opération financière est traitée ou son statut est mis à jour. |
| Scénario nominal | 1. L’administrateur accède à l’espace de supervision financière.<br>2. Le système affiche les opérations financières à suivre.<br>3. L’administrateur consulte les détails d’une opération.<br>4. Le système affiche les informations nécessaires au traitement.<br>5. L’administrateur traite l’opération si nécessaire.<br>6. Le système met à jour le statut de l’opération.<br>7. Le système affiche un message de confirmation. |
| Exceptions | E1 : L’opération financière est introuvable.<br>E2 : L’opération ne peut pas être traitée dans son état actuel.<br>E3 : La mise à jour du statut échoue. |

**Tableau 6.5 : Description textuelle du cas d’utilisation « Traiter les opérations financières »**

## 6.3 Conception

Cette section présente la conception du Sprint 4 à travers les diagrammes de classes et les diagrammes de séquence. Les diagrammes de classes décrivent les principales entités manipulées dans la billetterie, la revente, le contrôle d’accès et la supervision financière. Les diagrammes de séquence détaillent les scénarios dynamiques les plus importants du sprint.

### 6.3.1 Diagrammes de classes du Sprint 4

La conception statique du Sprint 4 est représentée par deux diagrammes de classes. Le premier concerne la billetterie, le paiement et la revente. Le second concerne le contrôle d’accès, le suivi partenaire et la supervision financière.

#### Diagramme de classes : Billetterie, paiement et revente

La figure 6.3 présente les classes liées au parcours utilisateur de billetterie. Elle met en évidence la réservation temporaire, la commande, le paiement, la génération du ticket, la demande de remboursement et la revente.

![Diagramme de classes — Billetterie, paiement et revente](images/class_sprint4_partie_a.png)

**Figure 6.3 : Diagramme de classes — Billetterie, paiement et revente**

Dans ce diagramme, un événement propose plusieurs types de tickets. L’utilisateur peut effectuer une réservation temporaire, qui peut ensuite être convertie en commande après paiement. Une commande validée permet de générer un ou plusieurs tickets. L’utilisateur peut également demander un remboursement, publier une annonce de revente pour un ticket FESTY ou proposer un ticket externe à la vente.

#### Diagramme de classes : Contrôle d’accès, suivi partenaire et supervision financière

La figure 6.4 présente les classes liées au contrôle d’accès et au suivi opérationnel. Elle regroupe les sessions de scan, l’affectation des agents, l’historique des scans, ainsi que les classes nécessaires au suivi financier.

![Diagramme de classes — Contrôle d’accès, suivi partenaire et supervision financière](images/class_sprint4_partie_b.png)

**Figure 6.4 : Diagramme de classes — Contrôle d’accès, suivi partenaire et supervision financière**

Dans ce diagramme, le partenaire organise des événements, gère les sessions de scan et affecte des agents. L’agent de scan vérifie les tickets et chaque opération est enregistrée dans un historique. La partie financière permet de représenter le suivi des fonds, les règlements associés aux événements et les demandes traitées par l’administrateur.

### 6.3.2 Diagrammes de séquence du Sprint 4

Les diagrammes de séquence du Sprint 4 décrivent les échanges dynamiques entre les acteurs, l’application, le back-end et les services nécessaires à l’exécution des scénarios principaux. Deux scénarios sont retenus : la réservation avec paiement d’un billet et le contrôle d’accès à un événement.

#### Diagramme de séquence : Réserver et payer un billet

La figure 6.5 présente le déroulement du scénario de réservation et de paiement d’un billet. L’utilisateur sélectionne un type de billet depuis le détail d’un événement. Le système vérifie la disponibilité, crée une réservation temporaire, puis lance le paiement. Après confirmation du paiement, la réservation est convertie en commande payée et le ticket est généré.

![Diagramme de séquence — Réserver et payer un billet](images/sequence_reserver_payer_billet.png)

**Figure 6.5 : Diagramme de séquence du scénario « Réserver et payer un billet »**

Ce scénario met en évidence la réservation temporaire du billet avant paiement. Cette réservation permet de bloquer la disponibilité pendant une durée limitée. Si le paiement est confirmé avant l’expiration, le système génère le ticket. Dans le cas contraire, la réservation expire et le billet redevient disponible.

#### Diagramme de séquence : Contrôler l’accès à un événement

La figure 6.6 présente le scénario de contrôle d’accès à un événement. L’agent de scan utilise l’application pour scanner le ticket présenté par le participant. Le système vérifie la session de scan, l’affectation de l’agent et la validité du ticket. Le résultat du contrôle est ensuite enregistré dans l’historique des scans.

![Diagramme de séquence — Contrôler l’accès à un événement](images/sequence_controler_acces_evenement.png)

**Figure 6.6 : Diagramme de séquence du scénario « Contrôler l’accès à un événement »**

Ce scénario permet de sécuriser l’entrée aux événements. Si le ticket est valide et correspond à l’événement, l’accès est autorisé. Si le ticket est invalide, déjà utilisé ou si l’agent n’est pas autorisé à scanner pour cet événement, le système retourne un refus d’accès.
## 6.4 Réalisation

Cette section présente les principales interfaces réalisées durant le Sprint 4. Ces interfaces couvrent le parcours de billetterie, le paiement, la consultation des tickets, le marché de revente, le contrôle d’accès et le suivi des opérations.

### 6.4.1 Interface de détail d’un événement et choix du billet

Cette interface permet à l’utilisateur de consulter les informations d’un événement et de choisir le type de billet souhaité. Elle affiche les informations principales de l’événement, les prix et les disponibilités des billets.

![Interface de détail d’un événement et choix du billet](images/interface_detail_evenement_billets.png)

**Figure 6.7 : Interface de détail d’un événement et choix du billet**

### 6.4.2 Interface de paiement

Après la sélection du billet, l’utilisateur accède à l’interface de paiement. Cette étape permet de confirmer l’achat et de finaliser la commande avant la génération du ticket.

![Interface de paiement](images/interface_paiement.png)

**Figure 6.8 : Interface de paiement**

### 6.4.3 Interface de consultation des tickets

Cette interface permet à l’utilisateur de consulter la liste de ses tickets. Elle donne accès aux informations du ticket, au code de contrôle et aux actions possibles comme la demande de remboursement ou la mise en revente.

![Interface de consultation des tickets](images/interface_mes_tickets.png)

**Figure 6.9 : Interface de consultation des tickets**

### 6.4.4 Interface du marché de revente

Le marché de revente permet à l’utilisateur de consulter les tickets proposés par d’autres utilisateurs. Il peut aussi mettre un ticket FESTY en revente ou proposer un ticket externe accompagné d’une image justificative.

![Interface du marché de revente](images/interface_marche_revente.png)

**Figure 6.10 : Interface du marché de revente**

### 6.4.5 Interface de gestion des sessions de scan

Cette interface permet au partenaire de préparer le contrôle d’accès à ses événements. Il peut créer une session de scan, consulter son état et affecter des agents chargés de vérifier les tickets.

![Interface de gestion des sessions de scan](images/interface_sessions_scan.png)

**Figure 6.11 : Interface de gestion des sessions de scan**

### 6.4.6 Interface de scan des tickets

L’agent de scan utilise cette interface pour scanner le ticket présenté par un participant. Le système vérifie la validité du ticket et affiche le résultat du contrôle afin d’autoriser ou de refuser l’accès.

![Interface de scan des tickets](images/interface_scan_ticket.png)

**Figure 6.12 : Interface de scan des tickets**

### 6.4.7 Interface de suivi partenaire

Cette interface permet au partenaire de consulter les résultats liés à ses événements. Elle présente les ventes, les montants en attente et les informations de suivi nécessaires à la monétisation.

![Interface de suivi partenaire](images/interface_suivi_partenaire.png)

**Figure 6.13 : Interface de suivi partenaire**

### 6.4.8 Interface de supervision financière

Cette interface est destinée à l’administrateur. Elle permet de suivre les opérations sensibles, de consulter les règlements et de traiter les demandes financières nécessitant une intervention administrative.

![Interface de supervision financière](images/interface_supervision_financiere.png)

**Figure 6.14 : Interface de supervision financière**

## 6.5 Conclusion

Ce chapitre a présenté l’étude et la réalisation du Sprint 4 du projet FESTY. Ce sprint a permis de couvrir les fonctionnalités liées à la billetterie, au paiement, à la consultation des tickets, à la revente et au contrôle d’accès aux événements.

Nous avons également présenté les fonctionnalités liées au suivi partenaire et à la supervision financière. Le Sprint 4 complète ainsi le parcours événementiel en reliant l’achat du billet, la gestion du ticket et la validation de l’accès à l’événement.

Le chapitre suivant sera consacré à la synthèse finale du projet, aux tests réalisés, au déploiement et aux perspectives d’amélioration de la plateforme.