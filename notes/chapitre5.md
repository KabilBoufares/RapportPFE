# Chapitre 6 : Sprint 4 — Billetterie, paiement, revente et contrôle d’accès

## 6.1 Introduction

Ce chapitre présente le quatrième sprint du projet FESTY. Ce sprint est consacré aux fonctionnalités liées à la billetterie, au paiement, à la revente des tickets et au contrôle d’accès aux événements.

Après avoir traité l’exploration des événements, la personnalisation de l’expérience et les interactions événementielles dans le sprint précédent, ce sprint permet à l’utilisateur de passer à une étape plus opérationnelle. Il peut réserver et payer un billet, consulter ses tickets, demander un remboursement et utiliser le marché de revente.

Ce sprint couvre également les fonctionnalités liées au contrôle d’accès. Le partenaire peut préparer les sessions de scan et affecter des agents, tandis que l’agent de scan vérifie les tickets à l’entrée des événements. L’administrateur intervient dans la supervision des opérations sensibles et financières.

Le Sprint 4 est organisé autour de deux axes fonctionnels complémentaires. Le premier axe concerne la billetterie, le paiement et la revente. Le second concerne le contrôle d’accès, le suivi partenaire et la supervision financière.

Dans ce chapitre, nous présentons d’abord le backlog du sprint. Ensuite, nous détaillons l’analyse fonctionnelle à travers les diagrammes de cas d’utilisation et les descriptions textuelles des principaux cas. La partie conception présente les diagrammes de classes et les diagrammes de séquence associés. Enfin, nous exposons les principales interfaces réalisées durant ce sprint.

## 6.2 Analyse du Sprint 4

L’analyse fonctionnelle du Sprint 4 permet de préciser les interactions liées à la billetterie, au paiement, à la revente et au contrôle d’accès. Les acteurs concernés sont l’Utilisateur, le Partenaire, l’Agent de scan et l’Administrateur.

L’Utilisateur peut consulter les détails d’un événement, réserver et payer un billet, consulter ses tickets, demander un remboursement et participer au marché de revente. Le Partenaire intervient dans la préparation du contrôle d’accès et le suivi de son activité. L’Agent de scan assure la vérification des tickets à l’entrée des événements. L’Administrateur supervise les opérations sensibles et financières.

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

Les diagrammes de cas d’utilisation du Sprint 4 présentent les principales interactions entre les acteurs et la plateforme FESTY. Afin de garder une lecture claire, les fonctionnalités sont représentées selon les deux axes fonctionnels du sprint : la billetterie avec la revente, puis le contrôle d’accès avec le suivi partenaire et la supervision.

#### Partie A : Billetterie, paiement et revente

La figure 6.1 présente les cas d’utilisation liés à la billetterie, au paiement et au marché de revente. Cette partie concerne principalement l’Utilisateur, qui peut consulter le détail d’un événement, réserver et payer un billet, consulter ses tickets, demander un remboursement et utiliser le marché de revente.

![Diagramme de cas d’utilisation — Billetterie, paiement et revente](images/use_case_sprint4_partie_a.png)

**Figure 6.1 : Diagramme de cas d’utilisation — Billetterie, paiement et revente**

Comme le montre la figure 6.1, l’utilisateur peut réserver et payer un billet à partir du détail d’un événement. Il peut également consulter ses tickets afin d’accéder au détail d’un ticket, demander un remboursement ou mettre un ticket FESTY en revente. Le marché de revente permet aussi d’acheter un ticket revendu ou de proposer un ticket externe à la vente.

#### Partie B : Contrôle d’accès, suivi partenaire et supervision

La figure 6.2 présente les cas d’utilisation liés au contrôle d’accès et à la supervision. Cette partie concerne le Partenaire, l’Agent de scan et l’Administrateur.

![Diagramme de cas d’utilisation — Contrôle d’accès, suivi partenaire et supervision](images/use_case_sprint4_partie_b.png)

**Figure 6.2 : Diagramme de cas d’utilisation — Contrôle d’accès, suivi partenaire et supervision**

Comme le montre la figure 6.2, le partenaire peut gérer les sessions de scan, affecter des agents et suivre son activité ainsi que sa monétisation. L’agent de scan contrôle l’accès à un événement en vérifiant le ticket présenté. L’administrateur intervient pour traiter les opérations financières et superviser les opérations sensibles.