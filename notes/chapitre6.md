# Chapitre 6 : Sprint 4 — Billetterie, paiement, revente et contrôle d’accès

## 6.1 Introduction

Ce chapitre présente l’étude et la réalisation du quatrième sprint du projet FESTY. Le Sprint 4 est organisé autour de deux axes fonctionnels complémentaires : la billetterie, le paiement et la revente d’une part, puis le contrôle d’accès, le suivi partenaire et la supervision financière d’autre part.

Ce sprint permet de couvrir les principales étapes liées à l’achat d’un billet et à son utilisation lors d’un événement. Il intègre également la gestion des tickets, le remboursement, le marché de revente, l’organisation du contrôle d’accès ainsi que le suivi des opérations par les partenaires et l’administration.

Dans ce chapitre, nous présentons d’abord le backlog du sprint et les diagrammes de cas d’utilisation. Nous détaillons ensuite les principaux cas d’utilisation retenus, puis la conception statique et dynamique du sprint. Enfin, nous exposons les interfaces réalisées.

## 6.2 Analyse du Sprint 4

L’analyse du Sprint 4 permet de préciser les besoins fonctionnels liés à la billetterie, au paiement, à la revente et au contrôle d’accès. Elle met également en évidence les fonctionnalités de suivi partenaire et de supervision financière introduites dans ce sprint.

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

### 6.2.2 Diagrammes de cas d’utilisation du Sprint 4

#### Partie A : Billetterie, paiement et revente

![Diagramme de cas d’utilisation — Billetterie, paiement et revente](images/use_case_sprint4_partie_a.png)

**Figure 6.1 : Diagramme de cas d’utilisation — Billetterie, paiement et revente**

La figure 6.1 présente les cas d’utilisation liés à la billetterie, au paiement et au marché de revente. L’utilisateur peut consulter le détail d’un événement, réserver et payer un billet, consulter ses tickets, demander un remboursement, mettre un ticket FESTY en revente, acheter un ticket revendu ou proposer un ticket externe à la vente.

#### Partie B : Contrôle d’accès, suivi partenaire et supervision

![Diagramme de cas d’utilisation — Contrôle d’accès, suivi partenaire et supervision](images/use_case_sprint4_partie_b.png)

**Figure 6.2 : Diagramme de cas d’utilisation — Contrôle d’accès, suivi partenaire et supervision**

La figure 6.2 présente les cas d’utilisation liés au contrôle d’accès et à la supervision. Le partenaire gère les sessions de scan, affecte des agents et suit son activité. L’agent de scan vérifie les tickets à l’entrée des événements. L’administrateur supervise les opérations sensibles et traite les opérations financières.

### 6.2.3 Description textuelle des cas d’utilisation

Les cas suivants ont été retenus car ils représentent les principaux flux métier du Sprint 4.

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

Dans le cas d’un ticket externe, l’utilisateur ajoute les informations du ticket ainsi qu’une image justificative. Cette fonctionnalité est présentée comme une extension du marché de revente.

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

Cette section présente la conception du Sprint 4 à travers les diagrammes de classes et les diagrammes de séquence. Elle met en évidence les éléments nécessaires à la billetterie, à la revente, au contrôle d’accès et au suivi des opérations.

### 6.3.1 Diagrammes de classes du Sprint 4

La conception statique du Sprint 4 est représentée par deux diagrammes de classes. Le premier concerne la billetterie, le paiement et la revente. Le second concerne le contrôle d’accès, le suivi partenaire et la supervision financière.

#### Diagramme de classes : Billetterie, paiement et revente

![Diagramme de classes — Billetterie, paiement et revente](images/class_sprint4_partie_a.png)

**Figure 6.3 : Diagramme de classes — Billetterie, paiement et revente**

Ce diagramme met en évidence la réservation temporaire, la commande, le paiement, le ticket, le remboursement et la revente.

#### Diagramme de classes : Contrôle d’accès, suivi partenaire et supervision financière

![Diagramme de classes — Contrôle d’accès, suivi partenaire et supervision financière](images/class_sprint4_partie_b.png)

**Figure 6.4 : Diagramme de classes — Contrôle d’accès, suivi partenaire et supervision financière**

Ce diagramme regroupe les classes liées aux sessions de scan, aux affectations d’agents, à l’historique des contrôles et au suivi financier.

### 6.3.2 Diagrammes de séquence du Sprint 4

Les diagrammes de séquence du Sprint 4 présentent les principaux échanges intervenant dans les scénarios retenus.

#### Partie A : Réserver et payer un billet

![Diagramme de séquence — Réserver et payer un billet](images/sequence_reserver_payer_billet.png)

**Figure 6.5 : Diagramme de séquence du scénario « Réserver et payer un billet »**

La figure 6.5 présente le déroulement de la réservation et du paiement d’un billet. L’utilisateur sélectionne un type de billet, le système vérifie la disponibilité, crée une réservation temporaire puis confirme l’achat après paiement.

#### Partie B : Contrôler l’accès à un événement

![Diagramme de séquence — Contrôler l’accès à un événement](images/sequence_controler_acces_evenement.png)

**Figure 6.6 : Diagramme de séquence du scénario « Contrôler l’accès à un événement »**

La figure 6.6 présente le scénario de contrôle d’accès à un événement. L’agent de scan vérifie le ticket présenté et le système retourne un résultat permettant d’autoriser ou de refuser l’accès.

## 6.4 Réalisation

Cette section présente les principales interfaces réalisées durant le Sprint 4. Les interfaces sont regroupées selon les deux axes fonctionnels du sprint : la billetterie avec la revente, puis le contrôle d’accès avec le suivi et la supervision.

### 6.4.1 Interfaces de billetterie, paiement et revente

#### Interface de détail d’un événement et choix du billet

Cette interface permet à l’utilisateur de consulter les informations d’un événement et de choisir le type de billet souhaité. Elle affiche les éléments essentiels du billet ainsi que sa disponibilité.

![Interface de détail d’un événement et choix du billet](images/interface_detail_evenement_billets.png)

**Figure 6.7 : Interface de détail d’un événement et choix du billet**

#### Interface de paiement

Cette interface permet à l’utilisateur de confirmer son achat après la sélection du billet. Elle centralise les informations nécessaires à la validation de la commande.

![Interface de paiement](images/interface_paiement.png)

**Figure 6.8 : Interface de paiement**

#### Interface de consultation des tickets

Cette interface permet à l’utilisateur de consulter la liste de ses tickets et d’accéder à leur détail. Elle donne également accès aux actions associées, comme la demande de remboursement ou la mise en revente.

![Interface de consultation des tickets](images/interface_mes_tickets.png)

**Figure 6.9 : Interface de consultation des tickets**

#### Interface du marché de revente

Cette interface permet à l’utilisateur de consulter les tickets proposés à la revente. Elle permet aussi de publier un ticket FESTY ou de proposer un ticket externe avec une image justificative.

![Interface du marché de revente](images/interface_marche_revente.png)

**Figure 6.10 : Interface du marché de revente**

### 6.4.2 Interfaces de contrôle d’accès, suivi partenaire et supervision

#### Interface de gestion des sessions de scan

Cette interface permet au partenaire de préparer le contrôle d’accès à ses événements. Il peut y créer une session de scan, consulter son état et affecter des agents.

![Interface de gestion des sessions de scan](images/interface_sessions_scan.png)

**Figure 6.11 : Interface de gestion des sessions de scan**

#### Interface de scan des tickets

Cette interface permet à l’agent de scan de vérifier rapidement le ticket présenté à l’entrée. Le résultat du contrôle est affiché de manière immédiate afin d’autoriser ou non l’accès.

![Interface de scan des tickets](images/interface_scan_ticket.png)

**Figure 6.12 : Interface de scan des tickets**

#### Interface de suivi partenaire

Cette interface permet au partenaire de consulter les résultats liés à ses événements. Elle présente les informations utiles au suivi de son activité.

![Interface de suivi partenaire](images/interface_suivi_partenaire.png)

**Figure 6.13 : Interface de suivi partenaire**

#### Interface de supervision financière

Cette interface permet à l’administrateur de consulter les opérations sensibles et de traiter les demandes nécessitant une intervention. Elle centralise les informations utiles à la supervision financière.

![Interface de supervision financière](images/interface_supervision_financiere.png)

**Figure 6.14 : Interface de supervision financière**

## 6.5 Conclusion

Ce chapitre a présenté l’étude et la réalisation du Sprint 4 du projet FESTY. Ce sprint a permis de couvrir les fonctionnalités liées à la billetterie, au paiement, à la consultation des tickets, à la revente et au contrôle d’accès aux événements.

Il a également introduit le suivi partenaire et la supervision financière. Le Sprint 4 complète ainsi le parcours événementiel en reliant l’achat du billet, la gestion du ticket et la validation de l’accès à l’événement.