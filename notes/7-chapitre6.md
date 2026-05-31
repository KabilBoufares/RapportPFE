# Chapitre 6 : Sprint 4 — Billetterie, paiement et contrôle d’accès

## 6.1 Introduction

Ce chapitre présente l’étude et la réalisation du Sprint 4 du projet FESTY. Ce sprint est consacré au parcours transactionnel de la plateforme : billetterie, réservation temporaire, paiement, génération et consultation des tickets, remboursement et marketplace de revente. Il couvre également les fonctionnalités opérationnelles liées au contrôle d’accès, au suivi partenaire et à la supervision financière.

Il prolonge le parcours événementiel initié dans les sprints précédents. L’utilisateur y suit désormais un cycle de billetterie complet, depuis l’achat jusqu’au ticket généré, avec les possibilités de remboursement et de revente. Le partenaire organise le contrôle d’accès et suit son activité, l’agent de scan vérifie les tickets à l’entrée, et l’administrateur supervise les opérations sensibles.

Ce sprint introduit des traitements pour lesquels la distinction entre réservation temporaire, paiement, commande et ticket généré, ainsi qu’entre remboursement, revente, demande de retrait partenaire et contrôle d’accès par scan, est déterminante. Le chapitre présente successivement le Sprint Backlog, l’analyse fonctionnelle, la conception autour d’un diagramme de classes principal complété par un diagramme en annexe, la réalisation, les tests backend et de sécurité, puis la revue du sprint et la conclusion.

## 6.2 Sprint Backlog

Le Sprint 4 vise à finaliser les fonctionnalités liées à la participation effective à un événement. Il couvre le cycle de billetterie, depuis la consultation des billets jusqu’à la génération du ticket après paiement. Il intègre également la consultation des tickets, les demandes de remboursement, la revente, le contrôle d’accès, le suivi de la monétisation partenaire et le traitement des opérations financières sensibles.

Le tableau 6.1 présente les principales user stories retenues pour ce sprint.

| ID | User Story | Tâches principales | Priorité |
|---|---|---|---|
| US-4.1 | En tant qu’utilisateur, je veux consulter la billetterie d’un événement afin de choisir un billet adapté. | Afficher les types de billets disponibles ; consulter les prix ; vérifier les disponibilités ; afficher les conditions liées au billet. | Must Have |
| US-4.2 | En tant qu’utilisateur, je veux réserver et payer un billet afin de participer à un événement. | Sélectionner un type de billet ; vérifier la disponibilité ; créer une réservation temporaire ; initier le paiement ; confirmer le paiement ; générer le ticket après validation. | Must Have |
| US-4.3 | En tant qu’utilisateur, je veux consulter mes tickets afin d’accéder aux informations de mes achats. | Afficher la liste des tickets ; consulter le détail d’un ticket ; afficher le code du ticket ; consulter le statut du ticket. | Must Have |
| US-4.4 | En tant qu’utilisateur, je veux demander un remboursement lorsque cela est possible. | Sélectionner un ticket ou une commande ; vérifier l’éligibilité au remboursement ; saisir la raison ; soumettre la demande ; suivre son statut. | Should Have |
| US-4.5 | En tant qu’utilisateur, je veux mettre un ticket FESTY en revente afin de le céder à un autre utilisateur. | Sélectionner un ticket ; vérifier qu’il est revendable ; définir le prix ; publier l’annonce ; suivre son statut. | Should Have |
| US-4.6 | En tant qu’utilisateur, je veux consulter la marketplace afin d’acheter un ticket revendu. | Afficher les annonces disponibles ; consulter une annonce ; vérifier la disponibilité du ticket ; effectuer le paiement ; confirmer l’achat. | Should Have |
| US-4.7 | En tant qu’utilisateur, je veux proposer un ticket externe à la vente afin de le publier dans la marketplace. | Saisir les informations du ticket externe ; ajouter une image justificative ; définir le prix ; publier l’annonce ; suivre son statut. | Could Have |
| US-4.8 | En tant que partenaire, je veux gérer les sessions de scan afin d’organiser le contrôle d’accès à mes événements. | Créer une session de scan ; ouvrir la session ; fermer la session ; consulter son statut. | Must Have |
| US-4.9 | En tant que partenaire, je veux affecter des agents de scan à un événement afin de déléguer le contrôle d’accès. | Sélectionner un événement ; sélectionner un agent de scan ; créer l’affectation ; révoquer l’affectation si nécessaire. | Must Have |
| US-4.10 | En tant qu’agent de scan, je veux contrôler l’accès à un événement afin de vérifier les tickets des participants. | Scanner le ticket ; vérifier sa validité ; vérifier sa correspondance avec l’événement ; vérifier son état d’utilisation ; enregistrer le résultat ; afficher l’autorisation ou le refus d’accès. | Must Have |
| US-4.11 | En tant que partenaire, je veux suivre mon activité et ma monétisation afin de consulter les résultats financiers de mes événements. | Consulter les ventes ; consulter les fonds en attente ; suivre les montants disponibles ; demander un retrait si l’événement est terminé et si un solde disponible existe. | Should Have |
| US-4.12 | En tant qu’administrateur, je veux traiter les opérations financières afin de suivre les transactions sensibles de la plateforme. | Consulter les opérations ; vérifier les remboursements et les demandes de retrait ; approuver ou rejeter une opération ; mettre à jour son statut ; conserver une trace de traitement. | Should Have |
| US-4.13 | En tant qu’administrateur, je veux superviser les opérations sensibles afin de limiter les risques liés aux paiements, aux remboursements, aux retraits et aux accès. | Suivre les opérations sensibles ; contrôler les opérations échouées ; vérifier les actions nécessitant une supervision ; consulter les anomalies. | Should Have |

**Tableau 6.1 : Backlog du Sprint 4**

Pour faciliter la lecture, les fonctionnalités du Sprint 4 sont regroupées en trois blocs fonctionnels. Le premier bloc concerne la billetterie, le paiement, les tickets et les remboursements. Le deuxième bloc concerne la marketplace de revente, incluant les tickets FESTY et les tickets externes. Le troisième bloc concerne le contrôle d’accès, le suivi partenaire, la demande de retrait et la supervision financière.

## 6.3 Analyse fonctionnelle

L’analyse fonctionnelle précise les interactions entre les acteurs du Sprint 4 et les fonctionnalités réalisées. L’Utilisateur interagit avec la billetterie, le paiement, ses tickets, les demandes de remboursement et la marketplace. Le Partenaire organise le contrôle d’accès à ses événements, affecte les agents de scan et suit son activité financière. L’Agent de scan contrôle les tickets à l’entrée des événements. L’Administrateur traite les opérations financières sensibles et supervise les actions nécessitant un contrôle particulier.

Le Sprint 4 est plus sensible que les sprints précédents, car il manipule des opérations transactionnelles. Pour cette raison, les scénarios décrits ci-dessous distinguent clairement la réservation temporaire, le paiement, la commande, le ticket, le remboursement, la revente, le scan et le traitement financier.

### 6.3.1 Diagramme de cas d’utilisation

La figure 6.1 présente les principaux cas d’utilisation du Sprint 4.

![Diagramme de cas d’utilisation du Sprint 4](<images/chapitre6/Figure 6.1 Diagramme de cas d’utilisation du Sprint 4.png>)

**Figure 6.1 : Diagramme de cas d’utilisation du Sprint 4**

Ce diagramme regroupe les fonctionnalités liées à la réservation, au paiement, à la consultation des tickets, au remboursement, à la revente et au contrôle d’accès. Il met également en évidence le suivi partenaire, la demande de retrait et la supervision des opérations financières par l’administrateur.

La demande de retrait du partenaire est rattachée au suivi de son activité et de sa monétisation. Elle n’est possible que lorsque l’événement concerné est terminé et lorsqu’un solde disponible peut être demandé. Une fois soumise, elle génère une opération financière en attente de traitement administratif.

### 6.3.2 Description textuelle des cas d’utilisation

Les tableaux suivants décrivent les principaux cas d’utilisation du Sprint 4. Afin d’éviter une surcharge du chapitre, seuls les scénarios les plus représentatifs sont détaillés. Les autres fonctionnalités du sprint, telles que la gestion des sessions de scan, l’affectation des agents, la consultation des annonces et la supervision des opérations sensibles, sont intégrées dans les parcours principaux ou représentées dans le diagramme de cas d’utilisation.

Les cinq cas retenus permettent de couvrir le cycle principal du Sprint 4 : achat d’un billet, consultation du ticket, remboursement, revente, contrôle d’accès et traitement financier.

#### Cas d’utilisation : Réserver et payer un billet

| Élément | Description |
|---|---|
| Cas d’utilisation | Réserver et payer un billet |
| Acteur principal | Utilisateur |
| Objectif | Permettre à l’utilisateur de sélectionner un billet, de créer une réservation temporaire, d’effectuer le paiement et d’obtenir un ticket après confirmation. |
| Précondition | L’utilisateur est authentifié et consulte la billetterie d’un événement actif disposant de billets disponibles. |
| Postcondition | La commande est confirmée, le paiement est validé et le ticket est généré pour l’utilisateur. |
| Scénario nominal | 1. L’utilisateur consulte le détail d’un événement.<br>2. Le système affiche les types de billets disponibles, les prix et les quantités restantes.<br>3. L’utilisateur sélectionne un type de billet.<br>4. Le système vérifie la disponibilité du billet sélectionné.<br>5. Le système crée une réservation temporaire avec une durée de validité limitée.<br>6. L’utilisateur procède au paiement.<br>7. Le système vérifie que la réservation est encore valide.<br>8. Le service de paiement confirme la transaction.<br>9. Le système transforme la réservation temporaire en commande payée.<br>10. Le système génère le ticket associé à la commande.<br>11. Le système affiche la confirmation de l’achat et rend le ticket disponible. |
| Exceptions | E1 : Le billet n’est plus disponible.<br>E2 : La réservation temporaire a expiré avant le paiement.<br>E3 : Le paiement échoue ou est refusé.<br>E4 : La génération du ticket échoue après confirmation du paiement. |

**Tableau 6.2 : Description textuelle du cas d’utilisation « Réserver et payer un billet »**

Ce cas d’utilisation constitue le cœur transactionnel du Sprint 4. Il distingue la réservation temporaire, le paiement, la commande et le ticket. Cette séparation permet de gérer les cas d’expiration, d’échec de paiement et de génération du ticket après validation de la transaction.

#### Cas d’utilisation : Consulter ses tickets et demander un remboursement

| Élément | Description |
|---|---|
| Cas d’utilisation | Consulter ses tickets et demander un remboursement |
| Acteur principal | Utilisateur |
| Objectif | Permettre à l’utilisateur de consulter ses tickets, d’accéder aux détails d’un ticket et de demander un remboursement lorsque les conditions le permettent. |
| Précondition | L’utilisateur est authentifié et possède au moins un ticket associé à son compte. |
| Postcondition | Les tickets sont affichés. En cas de demande de remboursement valide, une demande est enregistrée avec un statut en attente de traitement. |
| Scénario nominal | 1. L’utilisateur accède à l’espace de gestion de ses tickets.<br>2. Le système affiche la liste des tickets associés à son compte.<br>3. L’utilisateur sélectionne un ticket.<br>4. Le système affiche les détails du ticket, son statut et les actions disponibles.<br>5. L’utilisateur choisit de demander un remboursement.<br>6. Le système vérifie l’éligibilité du ticket au remboursement.<br>7. L’utilisateur saisit la raison de la demande.<br>8. Le système enregistre la demande de remboursement avec un statut en attente de traitement.<br>9. Le système affiche un message de confirmation. |
| Exceptions | E1 : Aucun ticket n’est disponible pour l’utilisateur.<br>E2 : Le ticket sélectionné n’est pas remboursable.<br>E3 : Une demande de remboursement existe déjà pour ce ticket.<br>E4 : L’enregistrement de la demande échoue. |

**Tableau 6.3 : Description textuelle du cas d’utilisation « Consulter ses tickets et demander un remboursement »**

Ce cas d’utilisation complète le parcours d’achat. Après la génération du ticket, l’utilisateur peut consulter ses informations et demander un remboursement lorsque les règles métier l’autorisent. La demande n’entraîne pas automatiquement le remboursement : elle doit être traitée selon son statut et les règles de supervision financière.

#### Cas d’utilisation : Gérer la marketplace de revente

| Élément | Description |
|---|---|
| Cas d’utilisation | Gérer la marketplace de revente |
| Acteur principal | Utilisateur |
| Objectif | Permettre à l’utilisateur de publier un ticket FESTY en revente, de proposer un ticket externe ou d’acheter un ticket revendu par un autre utilisateur. |
| Précondition | L’utilisateur est authentifié et accède à ses tickets ou à la marketplace. |
| Postcondition | Une annonce de revente est publiée, annulée ou vendue ; ou l’achat d’un ticket revendu est confirmé. |
| Scénario nominal | 1. L’utilisateur accède à la marketplace ou à la liste de ses tickets.<br>2. Il choisit de mettre un ticket FESTY en revente ou de proposer un ticket externe.<br>3. Le système vérifie les informations du ticket et les conditions de publication.<br>4. L’utilisateur définit le prix de vente et confirme la publication.<br>5. Le système publie l’annonce dans la marketplace.<br>6. Un autre utilisateur consulte la marketplace.<br>7. Il sélectionne une annonce disponible.<br>8. Le système vérifie que l’annonce est encore active.<br>9. L’acheteur procède au paiement.<br>10. Le système confirme l’achat et met à jour le statut de l’annonce. |
| Exceptions | E1 : Le ticket FESTY n’est pas revendable.<br>E2 : Les informations du ticket externe sont incomplètes ou invalides.<br>E3 : L’annonce n’est plus disponible au moment de l’achat.<br>E4 : Le paiement du ticket en revente échoue.<br>E5 : La mise à jour du statut de l’annonce échoue. |

**Tableau 6.4 : Description textuelle du cas d’utilisation « Gérer la marketplace de revente »**

Dans le cas d’un ticket FESTY, la revente s’appuie sur un ticket existant dans la plateforme. Dans le cas d’un ticket externe, l’utilisateur doit saisir les informations du ticket et fournir une image justificative. Cette distinction permet de gérer à la fois les tickets générés par FESTY et les tickets provenant d’un autre canal.

#### Cas d’utilisation : Contrôler l’accès à un événement

| Élément | Description |
|---|---|
| Cas d’utilisation | Contrôler l’accès à un événement |
| Acteur principal | Agent de scan |
| Objectif | Permettre à l’agent de scan de vérifier la validité d’un ticket présenté à l’entrée d’un événement. |
| Précondition | L’agent de scan est authentifié, affecté à l’événement et une session de scan est ouverte. |
| Postcondition | Le scan est enregistré et l’accès est autorisé ou refusé selon le résultat du contrôle. |
| Scénario nominal | 1. L’agent de scan accède à la session de scan liée à un événement.<br>2. Le système vérifie que l’agent est affecté à cet événement.<br>3. Le système vérifie que la session de scan est ouverte.<br>4. L’agent scanne le ticket présenté par le participant.<br>5. Le système vérifie l’existence et la validité du ticket.<br>6. Le système vérifie que le ticket correspond à l’événement concerné.<br>7. Le système vérifie que le ticket n’a pas déjà été utilisé.<br>8. Le système enregistre l’historique du scan.<br>9. Le système retourne le résultat du contrôle.<br>10. L’agent autorise ou refuse l’accès selon le résultat affiché. |
| Exceptions | E1 : Le ticket est invalide ou introuvable.<br>E2 : Le ticket a déjà été utilisé.<br>E3 : Le ticket ne correspond pas à l’événement.<br>E4 : L’agent n’est pas autorisé à scanner pour cet événement.<br>E5 : La session de scan est fermée. |

**Tableau 6.5 : Description textuelle du cas d’utilisation « Contrôler l’accès à un événement »**

Ce cas d’utilisation relie directement la billetterie au contrôle d’accès physique. Le ticket généré après paiement devient exploitable lors du scan. Le système conserve également un historique de scan afin de tracer les accès autorisés et refusés.

#### Cas d’utilisation : Traiter les opérations financières

| Élément | Description |
|---|---|
| Cas d’utilisation | Traiter les opérations financières |
| Acteur principal | Administrateur |
| Objectif | Permettre à l’administrateur de consulter, vérifier et traiter les opérations financières sensibles de la plateforme, notamment les remboursements et les demandes de retrait partenaire. |
| Précondition | L’administrateur est authentifié au back-office. |
| Postcondition | L’opération financière est validée, rejetée ou mise à jour selon son état et sa nature. Une trace de traitement est conservée. |
| Scénario nominal | 1. L’administrateur accède à l’espace de supervision financière.<br>2. Le système affiche la liste des opérations financières à suivre.<br>3. L’administrateur sélectionne une opération.<br>4. Le système affiche les détails de l’opération, son type et son état actuel.<br>5. L’administrateur vérifie la nature de l’opération : remboursement, demande de retrait partenaire ou opération sensible.<br>6. Le système vérifie que l’opération est traitable dans son état actuel.<br>7. L’administrateur décide de valider, rejeter ou mettre à jour l’opération.<br>8. Le système met à jour le statut de l’opération.<br>9. Le système enregistre une trace de traitement.<br>10. Le système affiche un message de confirmation. |
| Exceptions | E1 : L’opération financière est introuvable.<br>E2 : L’opération ne peut pas être traitée dans son état actuel.<br>E3 : La mise à jour du statut échoue.<br>E4 : L’enregistrement de la trace de traitement échoue. |

**Tableau 6.6 : Description textuelle du cas d’utilisation « Traiter les opérations financières »**

Les opérations financières traitées par l’administrateur peuvent provenir d’une demande de remboursement ou d’une demande de retrait partenaire. La demande de retrait est initiée par le partenaire depuis son espace de monétisation uniquement lorsque l’événement concerné est terminé et qu’un solde disponible existe. Cette demande génère une opération financière en attente, ensuite contrôlée et traitée par l’administrateur.

## 6.4 Conception

La conception du Sprint 4 s’organise autour de deux volets. Le premier concerne le noyau transactionnel : billetterie, réservation temporaire, paiement, commande, ticket, remboursement et revente. Le second concerne l’exploitation opérationnelle : contrôle d’accès, suivi partenaire, demandes de retrait et supervision financière. Afin de garder une lecture claire, seul le diagramme de classes principal est présenté dans ce chapitre ; le diagramme complémentaire est placé en annexe.

### 6.4.1 Diagramme de classes — Billetterie, paiement et revente

La figure 6.2 présente les principales classes liées à la billetterie, au paiement, à la gestion des tickets, aux demandes de remboursement et à la marketplace de revente.

![Diagramme de classes — Billetterie, paiement et revente](<images/chapitre6/Figure 6.2 Diagramme de classes — Billetterie, paiement et revente.png>)

**Figure 6.2 : Diagramme de classes — Billetterie, paiement et revente**

Ce diagramme met en évidence les entités principales du parcours transactionnel. La classe `TicketType` représente les types de billets disponibles pour un événement. Elle contient les informations relatives au prix, à la quantité totale, à la quantité disponible, à la quantité vendue et à la période de vente.

La classe `TicketReservation` représente une réservation temporaire créée avant le paiement. Elle permet de bloquer provisoirement une quantité de billets pendant une durée limitée. Si le paiement n’est pas finalisé à temps, la réservation peut expirer. Si le paiement est validé, elle est convertie en commande.

La réservation temporaire constitue donc une étape intermédiaire : elle bloque provisoirement le stock avant paiement, puis elle est convertie en commande lorsque la transaction est validée.

La classe `UserOrder` représente la commande confirmée après validation du paiement. Elle regroupe les montants, les frais, les taxes, le montant total et le type de commande. La classe `Payment` permet de suivre la transaction associée à cette commande. Elle conserve les informations nécessaires à la confirmation du paiement, à l’échec éventuel de la transaction ou au remboursement.

La classe `Ticket` représente le billet généré après confirmation du paiement. Rattaché à la commande validée, il contient un code unique, un statut et des informations figées sur l’événement, la date, le lieu, le participant et le montant payé. Ces informations permettent de garantir que le ticket reste exploitable même si certaines informations de l’événement évoluent par la suite.

La classe `RefundRequest` représente une demande de remboursement soumise par l’utilisateur pour un ticket ou une commande éligible. Elle permet de suivre la raison de la demande, son statut, sa date de demande et sa date de décision.

Les classes `ResaleListing` et `ExternalTicketListing` représentent les annonces de revente. La première concerne la mise en revente d’un ticket FESTY existant, tandis que la seconde concerne la proposition d’un ticket externe à la plateforme. Cette séparation permet de distinguer les tickets générés par FESTY des tickets provenant d’un autre canal.

Ainsi, ce diagramme apporte une vision structurée du cycle billetterie-paiement-ticket. Il distingue la réservation temporaire, la commande, le paiement, le ticket, le remboursement et la revente, ce qui permet de mieux comprendre les statuts et les transitions métier associés à l’achat d’un billet.

Le diagramme complémentaire relatif au contrôle d'accès, au suivi partenaire et à la supervision financière est présenté en annexe afin de conserver une lecture claire de la conception principale du Sprint 4.

### 6.4.2 Diagrammes de séquence

Les diagrammes de séquence retenus correspondent aux scénarios prioritaires du Sprint 4. Ils décrivent la réservation et le paiement d’un billet, le contrôle d’accès à un événement et le traitement administratif d’une opération financière.

#### Diagramme de séquence : Réserver et payer un billet

La figure 6.3 décrit le scénario de réservation et de paiement d’un billet. L’utilisateur consulte le détail d’un événement, sélectionne un type de billet, puis le système vérifie la disponibilité avant de créer une réservation temporaire.

![Diagramme de séquence du scénario « Réserver et payer un billet »](<images/chapitre6/Figure 6.3 Diagramme de séquence du scénario Réserver et payer un billet.png>)

**Figure 6.3 : Diagramme de séquence du scénario « Réserver et payer un billet »**

Ce diagramme montre que la réservation temporaire possède une durée de validité limitée. Avant de confirmer le paiement, le système vérifie que cette réservation est encore valide. Si la réservation a expiré, le paiement ne peut pas aboutir. Si le paiement échoue, l’utilisateur reçoit un message d’erreur. En cas de paiement réussi, le système convertit la réservation en commande payée, génère le ticket et affiche la confirmation d’achat.

Le paiement est pris en charge par un service externe de paiement, tel que Stripe, afin de sécuriser la transaction avant la confirmation de la commande et la génération du ticket.

Ce scénario donne plus de profondeur au processus de billetterie, car il ne se limite pas à l’achat du billet. Il montre aussi les cas de billet indisponible, de réservation expirée, d’échec de paiement, de commande confirmée et de ticket généré.

#### Diagramme de séquence : Contrôler l’accès à un événement

La figure 6.4 présente le scénario de contrôle d’accès à un événement. L’agent de scan accède à la session de scan, puis le système vérifie son affectation à l’événement et l’état de la session.

![Diagramme de séquence du scénario « Contrôler l’accès à un événement »](<images/chapitre6/Figure 6.4 Diagramme de séquence du scénario Contrôler l’accès à un événement.png>)

**Figure 6.4 : Diagramme de séquence du scénario « Contrôler l’accès à un événement »**

Ce diagramme détaille les principaux cas possibles lors du scan. Si l’agent n’est pas autorisé ou si la session de scan est fermée, l’accès à l’interface de scan est refusé. Lorsque la session est ouverte, l’agent scanne le ticket présenté par le participant. Le système vérifie l’existence du ticket, sa validité, sa correspondance avec l’événement et son état d’utilisation.

Si le ticket est invalide, ne correspond pas à l’événement ou a déjà été utilisé, le système enregistre l’historique du scan avec un résultat d’accès refusé. Si toutes les conditions sont satisfaites, le scan est enregistré avec un résultat d’accès autorisé. Ce scénario permet de relier le ticket généré après paiement au contrôle d’accès physique à l’événement.

#### Diagramme de séquence : Traiter une opération financière

La figure 6.5 présente le scénario de traitement d’une opération financière par l’administrateur. Ce scénario concerne notamment les demandes de remboursement, les demandes de retrait partenaire et les opérations financières nécessitant une supervision.

![Diagramme de séquence du scénario « Traiter une opération financière »](<images/chapitre6/Figure 6.5 Diagramme de séquence du scénario Traiter une opération financière.png>)

**Figure 6.5 : Diagramme de séquence du scénario « Traiter une opération financière »**

L’administrateur accède d’abord à l’espace de supervision financière. Le système affiche les opérations à suivre, puis l’administrateur consulte les détails d’une opération. Si l’opération est introuvable, un message d’erreur est affiché. Sinon, le système affiche ses informations et permet à l’administrateur de lancer le traitement si l’opération est dans un état compatible.

Le système vérifie alors l’état actuel de l’opération. Si elle n’est pas traitable, un message d’erreur est retourné. Si elle est traitable, le système met à jour son statut et conserve une trace de traitement. En cas d’échec de mise à jour, une erreur est affichée. En cas de succès, l’administrateur reçoit une confirmation.

Ce diagramme complète la partie financière du Sprint 4. Il montre que les opérations sensibles ne sont pas de simples modifications manuelles : elles sont consultées, vérifiées, traitées selon leur état, puis tracées afin d’assurer un meilleur suivi administratif.

## 6.5 Réalisation

Cette section présente les principales interfaces réalisées durant le Sprint 4. Ces interfaces couvrent le parcours transactionnel de l’utilisateur, depuis la consultation de la billetterie jusqu’à l’obtention du ticket, ainsi que les fonctionnalités liées à la marketplace et au contrôle d’accès.

### 6.5.1 Interface de détail d’un événement et choix du billet

La figure 6.6 illustre l’interface de détail d’un événement et de choix du billet. Elle permet à l’utilisateur de consulter les informations principales de l’événement, de visualiser les types de billets disponibles et de sélectionner le billet souhaité.

![Interface de détail d’un événement et choix du billet](<images/chapitre6/Figure 6.6 Interface de détail d’un événement et choix du billet.png>)

**Figure 6.6 : Interface de détail d’un événement et choix du billet**

Cette interface constitue le point d’entrée du processus d’achat. Elle affiche les informations nécessaires à la décision de l’utilisateur, notamment le type de billet, le prix et les disponibilités. Après sélection, le système peut créer une réservation temporaire afin de bloquer provisoirement le billet avant le paiement.

### 6.5.2 Interface de paiement

La figure 6.7 présente l’interface de paiement utilisée après la sélection du billet. Elle permet à l’utilisateur de valider sa commande et de finaliser la transaction.

![Interface de paiement](<images/chapitre6/Figure 6.7 Interface de paiement.png>)

**Figure 6.7 : Interface de paiement**

Cette interface est liée au processus de confirmation de la commande. Le paiement permet de transformer la réservation temporaire en commande confirmée. Lorsque la transaction est validée, le ticket est généré et devient disponible dans l’espace utilisateur. En cas d’échec du paiement ou d’expiration de la réservation temporaire, l’utilisateur est informé et l’achat n’est pas confirmé.

### 6.5.3 Interface de consultation des tickets

La figure 6.8 montre l’interface de consultation des tickets. Elle permet à l’utilisateur d’accéder à la liste de ses tickets, de consulter les détails d’un ticket et d’afficher son code d’accès.

![Interface de consultation des tickets](<images/chapitre6/Figure 6.8 Interface de consultation des tickets.png>)

**Figure 6.8 : Interface de consultation des tickets**

Cette interface permet de prolonger le parcours d’achat après la confirmation du paiement. L’utilisateur peut retrouver ses tickets, consulter leur statut, accéder aux informations de l’événement et utiliser le code du ticket lors du contrôle d’accès. Selon les conditions définies, l’utilisateur peut également accéder aux actions associées, comme la demande de remboursement ou la mise en revente.

### 6.5.4 Interface de la marketplace

La figure 6.9 présente l’interface de la marketplace. Elle permet à l’utilisateur de consulter les tickets proposés en revente, de publier un ticket FESTY ou de proposer un ticket externe avec une image justificative.

![Interface de la marketplace](<images/chapitre6/Figure 6.9 Interface de la marketplace.png>)

**Figure 6.9 : Interface de la marketplace**

Cette interface distingue deux types de revente. Le premier concerne les tickets FESTY déjà générés par la plateforme, tandis que le second concerne les tickets externes proposés par les utilisateurs. Dans les deux cas, l’annonce est associée à un statut permettant de suivre sa disponibilité, son achat ou son annulation.

### 6.5.5 Interface de scan des tickets

La figure 6.10 illustre l’interface de scan des tickets. Elle permet à l’agent de scan de vérifier rapidement un ticket présenté à l’entrée d’un événement et d’afficher le résultat du contrôle.

![Interface de scan des tickets](<images/chapitre6/Figure 6.10 Interface de scan des tickets.png>)

**Figure 6.10 : Interface de scan des tickets**

Cette interface est utilisée dans le cadre du contrôle d’accès physique à l’événement. Le système vérifie que l’agent est autorisé à scanner pour l’événement concerné, que la session de scan est ouverte, que le ticket existe, qu’il correspond à l’événement et qu’il n’a pas déjà été utilisé. Le résultat du scan permet ensuite d’autoriser ou de refuser l’accès.

### 6.5.6 Synthèse de la réalisation

Les interfaces réalisées durant ce sprint couvrent les fonctionnalités essentielles de la billetterie et du contrôle d’accès. Elles permettent à l’utilisateur de choisir un billet, de payer sa commande, de consulter ses tickets et d’utiliser la marketplace. Elles permettent également à l’agent de scan de contrôler l’accès à l’événement à partir du ticket généré après paiement.

Cette réalisation relie donc les différents éléments du Sprint 4 : la réservation temporaire, le paiement, la génération du ticket, la revente, le remboursement et le contrôle d’accès.

## 6.6 Tests backend, tests de sécurité et validation

Cette section présente les tests réalisés pour valider le Sprint 4 et les règles d’accès associées. Ils couvrent le cycle de billetterie, les tickets et remboursements, la marketplace de revente, le contrôle d’accès par scan et les accès protégés aux fonctionnalités réellement testées.

Les vérifications tiennent également compte de la sécurité par rôles sur les fonctionnalités effectivement testées. Dans cette section, les rôles techniques `USER`, `PARTNER`, `SCAN_AGENT` et `ADMIN` correspondent respectivement aux acteurs Utilisateur, Partenaire, Agent de scan et Administrateur définis dans l’analyse fonctionnelle.

### 6.6.1 Outils utilisés

Les tests du Sprint 4 ont été réalisés au niveau du Back-End dans la continuité de la chaîne de validation adoptée dans les sprints précédents.

Ils s’appuient principalement sur **JUnit 5**, **MockMvc**, **Spring Security Test**, **Mockito** et **ObjectMapper** afin de simuler les requêtes HTTP, de vérifier les réponses des contrôleurs REST et de valider la sécurité par rôles sur les fonctionnalités transactionnelles et les accès protégés.

### 6.6.2 Cas de test élaborés

Les tests du Sprint 4 sont regroupés en quatre blocs. Cette organisation permet de couvrir les fonctionnalités principales du sprint sans détailler chaque test individuellement dans le rapport.

| Bloc de tests | Fonctionnalités vérifiées | Nombre de tests réalisés |
|---|---|---:|
| Billetterie et paiement | Consultation des billets, création de réservation temporaire, paiement, expiration de réservation, génération du ticket. | 7 |
| Tickets et remboursements | Consultation des tickets, détail d’un ticket, demande de remboursement, cas non remboursable, demande déjà existante. | 5 |
| Marketplace de revente | Publication d’un ticket FESTY, proposition d’un ticket externe, consultation des annonces, achat d’un ticket revendu, annonce indisponible. | 6 |
| Contrôle d’accès par scan | Session de scan, agent autorisé, ticket valide, ticket invalide, ticket déjà utilisé, mauvais événement, session fermée. | 7 |

Au total, **vingt-cinq tests backend** ont été exécutés pour valider les principales fonctionnalités du Sprint 4.

### 6.6.3 Tests liés à la billetterie et au paiement

Ce groupe de tests vérifie le cycle de billetterie, depuis la réservation temporaire jusqu’à la confirmation de la commande et à la génération du ticket. Il couvre également les principaux cas d’échec liés à la disponibilité et au paiement. Les cas retenus sont résumés dans le tableau suivant.

| Test | Objectif | Résultat attendu |
|---|---|---|
| Test 1 | Consulter les types de billets d’un événement actif | `200 OK` |
| Test 2 | Créer une réservation temporaire pour un billet disponible | `200 OK` ou `201 Created` |
| Test 3 | Refuser la réservation si le billet est indisponible | Erreur applicative contrôlée |
| Test 4 | Initier un paiement pour une réservation valide | `200 OK` |
| Test 5 | Refuser le paiement si la réservation est expirée | Erreur applicative contrôlée |
| Test 6 | Consulter les tickets après confirmation du paiement | `200 OK` |
| Test 7 | Consulter le détail du ticket généré | `200 OK` |

### 6.6.4 Tests liés aux tickets et aux remboursements

Ce groupe de tests vérifie la consultation des tickets et le traitement des demandes de remboursement. Il couvre l’éligibilité, l’enregistrement d’une demande valide et les refus attendus. Les cas retenus sont résumés dans le tableau suivant.

| Test | Objectif | Résultat attendu |
|---|---|---|
| Test 8 | Consulter la liste des tickets de l’utilisateur | `200 OK` |
| Test 9 | Consulter le détail d’un ticket | `200 OK` |
| Test 10 | Demander un remboursement pour un ticket éligible | Demande enregistrée |
| Test 11 | Refuser un remboursement pour un ticket non éligible | Erreur applicative contrôlée |
| Test 12 | Refuser une deuxième demande de remboursement sur le même ticket | Erreur applicative contrôlée |

### 6.6.5 Tests liés à la marketplace de revente

Ce groupe de tests vérifie la publication et l’achat dans la marketplace, pour les tickets FESTY comme pour les tickets externes. Il couvre également les indisponibilités et les échecs de validation. Les cas retenus sont résumés dans le tableau suivant.

| Test | Objectif | Résultat attendu |
|---|---|---|
| Test 13 | Publier un ticket FESTY revendable dans la marketplace | Annonce créée |
| Test 14 | Refuser la revente d’un ticket non revendable | Erreur applicative contrôlée |
| Test 15 | Proposer un ticket externe avec données valides | Annonce créée |
| Test 16 | Refuser un ticket externe avec données incomplètes | Erreur applicative contrôlée |
| Test 17 | Acheter un ticket revendu disponible | Achat confirmé |
| Test 18 | Refuser l’achat d’une annonce indisponible | Erreur applicative contrôlée |

### 6.6.6 Tests liés au contrôle d’accès par scan

Ce groupe de tests vérifie le contrôle d’accès par scan, depuis l’ouverture de session jusqu’à la décision d’autoriser ou de refuser l’entrée. Il couvre les erreurs liées à l’affectation de l’agent, à l’état du ticket et à la session de scan. Les cas retenus sont résumés dans le tableau suivant.

| Test | Objectif | Résultat attendu |
|---|---|---|
| Test 19 | Autoriser un agent affecté à accéder à une session ouverte | `200 OK` |
| Test 20 | Refuser un agent non affecté à l’événement | `403 Forbidden` |
| Test 21 | Refuser le scan si la session est fermée | Erreur applicative contrôlée |
| Test 22 | Autoriser l’accès avec un ticket valide | Accès autorisé |
| Test 23 | Refuser un ticket invalide ou introuvable | Accès refusé |
| Test 24 | Refuser un ticket déjà utilisé | Accès refusé |
| Test 25 | Refuser un ticket ne correspondant pas à l’événement | Accès refusé |

### 6.6.7 Résultats obtenus et interprétation

La figure 6.11 présente l’exécution des tests backend et des tests de contrôle d’accès du Sprint 4.

![Exécution des tests backend et de contrôle d’accès du Sprint 4](<images/chapitre6/Figure 6.11 Exécution des tests backend du Sprint 4.png>)

**Figure 6.11 : Exécution des tests backend et de contrôle d’accès du Sprint 4**

Les résultats obtenus montrent que les vingt-cinq tests backend du Sprint 4 ont été exécutés avec succès, sans échec, sans erreur et sans test ignoré.

Ces résultats confirment la validité des principales fonctionnalités testées : consultation des types de billets, réservation temporaire, paiement, consultation des tickets, demande de remboursement, publication et achat dans la marketplace, ainsi que contrôle d’accès par scan.

Les tests de scan confirment également que l’accès à l’événement dépend de plusieurs conditions : agent affecté, session ouverte, ticket valide, ticket non utilisé et correspondance du ticket avec l’événement contrôlé.

La partie financière administrative, notamment le traitement des retraits partenaires et des opérations sensibles, reste représentée dans l’analyse et la conception du sprint, mais elle n’est pas détaillée dans les tests automatisés présentés ici.

Les tests confirment enfin que la sécurité par rôles applique correctement les accès autorisés et les refus attendus, notamment à travers les réponses `403 Forbidden` pour les accès réalisés avec un rôle insuffisant. Les accès non authentifiés relèvent du même mécanisme de protection et peuvent être vérifiés par des tests complémentaires retournant `401 Unauthorized`.

## 6.7 Revue du sprint

La revue du Sprint 4 confirme la mise en place du parcours transactionnel de FESTY, depuis la réservation temporaire jusqu’au ticket généré, ainsi que des fonctionnalités opérationnelles qui l’accompagnent, notamment le contrôle d’accès, le suivi partenaire et la supervision financière.

Les principales difficultés concernent la cohérence des statuts transactionnels et la sécurité par rôles. Il a fallu articuler la réservation temporaire, le paiement, la commande et le ticket généré, puis encadrer le remboursement, la revente, la demande de retrait partenaire et les accès protégés pour `USER`, `PARTNER`, `SCAN_AGENT` et `ADMIN`.

Ce sprint clôture le cycle principal des fonctionnalités métier de FESTY et stabilise le parcours allant de l’achat à l’accès physique à l’événement. Il prépare ainsi la conclusion générale du rapport, qui synthétisera les résultats obtenus, les limites rencontrées et les perspectives d’amélioration.

## 6.8 Conclusion

Ce chapitre a présenté le Sprint 4, consacré au parcours transactionnel de FESTY et à ses fonctionnalités opérationnelles. Il montre comment la plateforme prend en charge le cycle complet allant de la réservation temporaire jusqu’au ticket généré, tout en intégrant la revente, le remboursement, le contrôle d’accès et la supervision financière.

L’analyse fonctionnelle a structuré les cas d’utilisation, la conception a clarifié l’enchaînement métier entre réservation temporaire, paiement, commande et ticket, la réalisation a concrétisé les interfaces principales, et les tests ont validé les principales fonctionnalités réalisées ainsi que la sécurité par rôles. L’ensemble confirme la cohérence du cycle de billetterie et du contrôle d’accès, tout en cadrant la supervision financière dans l’analyse et la conception.

Ainsi, le Sprint 4 achève le noyau métier de la plateforme FESTY. Il ouvre la voie à la conclusion générale, consacrée à la synthèse du travail réalisé, aux limites du projet et aux perspectives d’évolution.

---

## Annexe A — Diagramme de classes complémentaire du Sprint 4

Cette annexe présente le diagramme de classes complémentaire du Sprint 4. Il regroupe les classes liées au contrôle d'accès, à l'affectation des agents de scan, au suivi partenaire, aux demandes de retrait et à la supervision financière. Ce diagramme complète le diagramme principal sans alourdir le corps du chapitre.

### Diagramme de classes — Contrôle d'accès, suivi partenaire et supervision financière

![Diagramme de classes — Contrôle d'accès, suivi partenaire et supervision financière](<images/chapitre6/Figure 6.3 Diagramme de classes — Contrôle d'accès, suivi partenaire et supervision financière.png>)

**Figure A.1 : Diagramme de classes — Contrôle d'accès, suivi partenaire et supervision financière**

La partie contrôle d'accès s'appuie sur `AgentScan`, `EventStaffAssignment`, `ScanSession` et `TicketCheckInHistory`. Ces classes couvrent l'affectation des agents, l'ouverture des sessions de scan et la conservation de l'historique des accès autorisés ou refusés.

La partie financière s'organise autour de `SettlementLedger`, qui suit la monétisation partenaire, de `EscrowHold`, qui représente les fonds bloqués, et de `PayoutRequest`, qui formalise la demande de retrait. Cette demande n'est recevable que lorsque l'événement est terminé et qu'un solde disponible existe.

L'administrateur intervient enfin pour superviser les opérations sensibles, approuver ou rejeter les demandes et assurer le suivi global. Ce diagramme relie ainsi le contrôle d'accès, le suivi partenaire et la supervision financière au parcours de vente des tickets.