# Chapitre 6 : Sprint 4 — Billetterie, paiement, revente et contrôle d’accès

## 6.1 Introduction

Ce chapitre présente l’étude et la réalisation du Sprint 4 du projet FESTY. Ce sprint est consacré à la billetterie, au paiement, à la gestion des tickets, à la revente et au contrôle d’accès aux événements.

Il complète le parcours événementiel en permettant à l’utilisateur de réserver et payer un billet, de consulter ses tickets, de demander un remboursement et d’utiliser la marketplace de revente. Il couvre aussi le scan des tickets, le suivi partenaire et la supervision des opérations financières sensibles.

Nous présentons d’abord le Sprint Backlog, puis l’analyse fonctionnelle à travers le diagramme de cas d’utilisation et les descriptions textuelles. Ensuite, la conception est détaillée à l’aide du diagramme de classes et des diagrammes de séquence. Enfin, la partie réalisation expose les principales interfaces développées durant ce sprint.

## 6.2 Sprint Backlog

Le Sprint 4 vise à finaliser les fonctionnalités transactionnelles et opérationnelles liées à la participation à un événement. Les user stories US-4.1 à US-4.7 concernent la billetterie, les tickets, le remboursement et la marketplace de revente. Les user stories US-4.8 à US-4.13 portent sur le scan, le suivi partenaire et la supervision. Le tableau 6.1 présente les user stories [REF-SCRUM] retenues pour ce sprint.

| ID | User Story | Tâches principales | Priorité |
|---|---|---|---|
| US-4.1 | En tant qu’utilisateur, je veux consulter la billetterie d’un événement afin de choisir un billet adapté. | Afficher les types de billets disponibles ; consulter les prix ; vérifier les disponibilités. | Must Have |
| US-4.2 | En tant qu’utilisateur, je veux réserver et payer un billet afin de participer à un événement. | Sélectionner un type de billet ; vérifier la disponibilité ; créer une réservation temporaire ; effectuer le paiement [REF-STRIPE] ; générer le ticket après confirmation. | Must Have |
| US-4.3 | En tant qu’utilisateur, je veux consulter mes tickets afin d’accéder aux informations de mes achats. | Afficher la liste des tickets ; consulter le détail d’un ticket ; afficher le code du ticket. | Must Have |
| US-4.4 | En tant qu’utilisateur, je veux demander un remboursement lorsque cela est possible. | Sélectionner un ticket ou une commande ; saisir la raison ; soumettre la demande ; suivre son statut. | Should Have |
| US-4.5 | En tant qu’utilisateur, je veux mettre un ticket FESTY en revente afin de le céder à un autre utilisateur. | Sélectionner un ticket ; vérifier qu’il est revendable ; définir le prix ; publier l’annonce. | Should Have |
| US-4.6 | En tant qu’utilisateur, je veux consulter la marketplace afin d’acheter un ticket revendu. | Afficher les annonces disponibles ; consulter une annonce ; effectuer le paiement ; confirmer l’achat. | Should Have |
| US-4.7 | En tant qu’utilisateur, je veux proposer un ticket externe à la vente afin de le publier dans la marketplace. | Saisir les informations du ticket externe ; ajouter une image justificative ; définir le prix ; publier l’annonce. | Could Have |
| US-4.8 | En tant que partenaire, je veux gérer les sessions de scan afin d’organiser le contrôle d’accès à mes événements. | Créer une session de scan ; ouvrir la session ; fermer la session ; consulter son statut. | Must Have |
| US-4.9 | En tant que partenaire, je veux affecter des agents de scan à un événement afin de déléguer le contrôle d’accès. | Sélectionner un événement ; sélectionner un agent ; créer l’affectation ; révoquer l’affectation si nécessaire. | Must Have |
| US-4.10 | En tant qu’agent de scan, je veux contrôler l’accès à un événement afin de vérifier les tickets des participants. | Scanner le ticket ; vérifier le ticket ; enregistrer le résultat ; afficher l’autorisation ou le refus d’accès. | Must Have |
| US-4.11 | En tant que partenaire, je veux suivre mon activité et ma monétisation afin de consulter les résultats de mes événements. | Consulter les ventes ; consulter les fonds en attente ; suivre les montants à recevoir ; consulter les règlements. | Should Have |
| US-4.12 | En tant qu’administrateur, je veux traiter les opérations financières afin de suivre les transactions sensibles de la plateforme. | Consulter les opérations ; vérifier les demandes financières ; approuver ou rejeter une opération ; mettre à jour son statut. | Should Have |
| US-4.13 | En tant qu’administrateur, je veux superviser les opérations sensibles afin de limiter les risques liés aux paiements et aux accès. | Suivre les opérations sensibles ; contrôler les opérations échouées ; vérifier les actions nécessitant une supervision. | Should Have |

**Tableau 6.1 : Backlog du Sprint 4**

Afin de conserver une lecture claire, les user stories de ce sprint sont regroupées en trois blocs fonctionnels : la billetterie et le paiement, la marketplace de revente, puis le contrôle d’accès et la supervision.

## 6.3 Analyse fonctionnelle

L’analyse fonctionnelle précise les interactions entre les acteurs du Sprint 4 et les fonctionnalités réalisées. L’Utilisateur interagit avec la billetterie, les tickets et la marketplace. Le Partenaire organise le contrôle d’accès et suit son activité. L’Agent de scan vérifie les tickets à l’entrée des événements. L’Administrateur supervise les opérations financières et les actions sensibles.

### 6.3.1 Diagramme de cas d’utilisation

La figure 6.1 présente les principaux cas d’utilisation du Sprint 4.

![Diagramme de cas d’utilisation du Sprint 4](<images/chapitre6/Figure 6.1 Diagramme de cas d’utilisation du Sprint 4.png>)

**Figure 6.1 : Diagramme de cas d’utilisation du Sprint 4**

Ce diagramme regroupe les fonctionnalités liées à la réservation, au paiement, à la consultation des tickets, au remboursement, à la revente et au contrôle d’accès. Il met également en évidence le suivi partenaire et la supervision des opérations financières.

### 6.3.2 Description textuelle des cas d’utilisation

Les tableaux suivants décrivent les principaux cas d’utilisation du Sprint 4.

#### Cas d’utilisation : Réserver et payer un billet

| Élément | Description |
|---|---|
| Cas d’utilisation | Réserver et payer un billet |
| Acteur principal | Utilisateur |
| Objectif | Permettre à l’utilisateur de réserver temporairement un billet, de le payer et d’obtenir son ticket après confirmation. |
| Précondition | L’utilisateur est authentifié et consulte la billetterie d’un événement actif. |
| Postcondition | La commande est confirmée et le ticket est généré pour l’utilisateur. |
| Scénario nominal | 1. L’utilisateur consulte la billetterie d’un événement.<br>2. Il sélectionne un type de billet.<br>3. Le système vérifie la disponibilité du billet.<br>4. Le système crée une réservation temporaire.<br>5. L’utilisateur procède au paiement.<br>6. Le système confirme le paiement.<br>7. Le système convertit la réservation en commande payée.<br>8. Le système génère le ticket.<br>9. Le système affiche la confirmation de l’achat. |
| Exceptions | E1 : Le billet n’est plus disponible.<br>E2 : La réservation temporaire a expiré.<br>E3 : Le paiement échoue. |

**Tableau 6.2 : Description textuelle du cas d’utilisation « Réserver et payer un billet »**

#### Cas d’utilisation : Gérer la marketplace de revente

| Élément | Description |
|---|---|
| Cas d’utilisation | Gérer la marketplace de revente |
| Acteur principal | Utilisateur |
| Objectif | Permettre à l’utilisateur de publier un ticket FESTY ou un ticket externe dans la marketplace, et permettre à un autre utilisateur d’acheter un ticket revendu. |
| Précondition | L’utilisateur est authentifié et accède à ses tickets ou à la marketplace. |
| Postcondition | L’annonce est publiée dans la marketplace ou l’achat du ticket revendu est confirmé. |
| Scénario nominal | 1. L’utilisateur accède à ses tickets ou à la marketplace.<br>2. Il choisit de mettre un ticket FESTY en revente ou de proposer un ticket externe.<br>3. Il saisit les informations nécessaires.<br>4. Le système vérifie les informations saisies.<br>5. Le système publie l’annonce de revente.<br>6. Un autre utilisateur consulte la marketplace.<br>7. Il sélectionne une annonce et procède au paiement.<br>8. Le système confirme l’achat du ticket revendu. |
| Exceptions | E1 : Le ticket FESTY n’est pas revendable.<br>E2 : Les informations du ticket externe sont incomplètes.<br>E3 : Le paiement du ticket en revente échoue. |

**Tableau 6.3 : Description textuelle du cas d’utilisation « Gérer la marketplace de revente »**

Dans le cas d’un ticket externe, l’utilisateur ajoute les informations du ticket ainsi qu’une image justificative. Cette fonctionnalité constitue une extension de la marketplace.

#### Cas d’utilisation : Contrôler l’accès à un événement

| Élément | Description |
|---|---|
| Cas d’utilisation | Contrôler l’accès à un événement |
| Acteur principal | Agent de scan |
| Objectif | Permettre à l’agent de scan de vérifier la validité d’un ticket présenté à l’entrée d’un événement. |
| Précondition | L’agent de scan est authentifié, affecté à l’événement et une session de scan est ouverte. |
| Postcondition | Le scan est enregistré et l’accès est autorisé ou refusé. |
| Scénario nominal | 1. L’agent de scan accède à la session de scan.<br>2. Il scanne le ticket présenté par le participant.<br>3. Le système vérifie le ticket.<br>4. Le système vérifie que le ticket correspond à l’événement.<br>5. Le système enregistre l’historique du scan.<br>6. Le système retourne le résultat du contrôle.<br>7. L’agent autorise ou refuse l’accès selon le résultat. |
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

## 6.4 Conception

La conception présente les éléments structurels et dynamiques nécessaires à la billetterie, au paiement, à la revente et au contrôle d’accès.

### 6.4.1 Diagramme de classes

La figure 6.2 présente les principales classes liées à la billetterie, au paiement, à la gestion des tickets, aux remboursements et à la revente.

![Diagramme de classes — Billetterie, paiement et revente](<images/chapitre6/Figure 6.2 Diagramme de classes — Billetterie, paiement et revente.png>)

**Figure 6.2 : Diagramme de classes — Billetterie, paiement et revente**

Ce diagramme met en évidence la réservation temporaire, la commande, le paiement, le ticket, la demande de remboursement, la mise en revente d’un ticket FESTY et la proposition d’un ticket externe. Les classes complémentaires liées au contrôle d’accès, au suivi partenaire et à la supervision financière sont détaillées dans l’Annexe A.

### 6.4.2 Diagrammes de séquence

Les diagrammes de séquence retenus correspondent aux scénarios prioritaires du Sprint 4 : la réservation avec paiement d’un billet et le contrôle d’accès à un événement.

#### Diagramme de séquence : Réserver et payer un billet

La figure 6.3 décrit la réservation et le paiement d’un billet. L’utilisateur sélectionne un billet, le système vérifie sa disponibilité, crée une réservation temporaire, confirme le paiement et génère le ticket.

![Diagramme de séquence — Réserver et payer un billet](<images/chapitre6/Figure 6.3 Diagramme de séquence du scénario « Réserver et payer un billet ».png>)

**Figure 6.3 : Diagramme de séquence du scénario « Réserver et payer un billet »**

#### Diagramme de séquence : Contrôler l’accès à un événement

La figure 6.4 présente le contrôle d’accès à un événement. L’agent de scan scanne le ticket, puis le système vérifie sa validité et retourne le résultat du contrôle.

![Diagramme de séquence — Contrôler l’accès à un événement](<images/chapitre6/Figure 6.4 Diagramme de séquence du scénario « Contrôler l’accès à un événement ».png>)

**Figure 6.4 : Diagramme de séquence du scénario « Contrôler l’accès à un événement »**

## 6.5 Réalisation

Cette section présente les principales interfaces réalisées durant le Sprint 4.

La figure 6.5 illustre l’interface de détail d’un événement et de choix du billet. Elle permet à l’utilisateur de consulter les informations de l’événement et de sélectionner un billet.

![Interface de détail d’un événement et choix du billet](<images/chapitre6/Figure 6.5 Interface de détail d’un événement et choix du billet.png>)

**Figure 6.5 : Interface de détail d’un événement et choix du billet**

La figure 6.6 présente l’interface de paiement, utilisée pour valider la commande après la sélection du billet.

![Interface de paiement](<images/chapitre6/Figure 6.6 Interface de paiement.png>)

**Figure 6.6 : Interface de paiement**

La figure 6.7 montre l’interface de consultation des tickets. Elle affiche la liste des tickets de l’utilisateur, leurs détails et les actions associées.

![Interface de consultation des tickets](<images/chapitre6/Figure 6.7 Interface de consultation des tickets.png>)

**Figure 6.7 : Interface de consultation des tickets**

La figure 6.8 présente l’interface de la marketplace. Elle permet de consulter les tickets en revente, de publier un ticket FESTY ou de proposer un ticket externe avec une image justificative.

![Interface de la marketplace](<images/chapitre6/Figure 6.8 Interface de la marketplace.png>)

**Figure 6.8 : Interface de la marketplace**

La figure 6.9 illustre l’interface de scan des tickets. Elle permet à l’agent de scan de vérifier rapidement un ticket et d’afficher le résultat du contrôle.

![Interface de scan des tickets](<images/chapitre6/Figure 6.9 Interface de scan des tickets.png>)

**Figure 6.9 : Interface de scan des tickets**

## 6.6 Conclusion

Dans ce chapitre, nous avons présenté l’étude et la réalisation du Sprint 4, consacré à la billetterie, au paiement, à la revente et au contrôle d’accès. Nous avons commencé par le Sprint Backlog, puis l’analyse fonctionnelle et la conception.

Ce sprint a permis de compléter le parcours événementiel en reliant l’achat du billet, la gestion du ticket, la marketplace de revente et la validation de l’accès à l’événement. Il a également introduit le suivi partenaire et la supervision financière.

Ce sprint clôture ainsi le cycle principal de développement fonctionnel de FESTY. La partie suivante sera consacrée à la conclusion générale du projet, aux limites rencontrées et aux perspectives d’évolution.