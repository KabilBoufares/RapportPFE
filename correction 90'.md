## 3.6 Tests unitaires et validation

Cette section présente les tests réalisés pour vérifier le bon fonctionnement des principales fonctionnalités développées dans le cadre du Sprint 1. Ces tests concernent l’inscription, la vérification OTP, l’authentification, la gestion du profil utilisateur, l’accès administrateur avec 2FA ainsi que le contrôle d’accès aux endpoints publics et privés.

### 3.6.1 Outils utilisés

Les tests du Sprint 1 ont été réalisés au niveau du Back-End afin de valider les traitements métier et les contrôles d’accès associés aux fonctionnalités d’authentification et de gestion des accès.

Les principaux outils utilisés sont :

— **JUnit 5** : utilisé pour structurer, nommer et exécuter les cas de test à l’aide des annotations `@Test`, `@Order` et `@DisplayName`.

— **Mockito** : utilisé pour simuler les dépendances nécessaires aux tests, notamment les repositories, les services et les composants d’encodage.

— **MockitoExtension** : utilisé pour intégrer Mockito avec JUnit 5 sans charger tout le contexte Spring.

— **ReflectionTestUtils** : utilisé pour injecter certaines valeurs de configuration nécessaires aux tests, comme les paramètres liés à la vérification 2FA.

— **AssertJ et JUnit Assertions** : utilisés pour vérifier les résultats obtenus, les exceptions attendues et les valeurs retournées par les méthodes testées.

— **WebMvcTest** : utilisé pour tester la couche HTTP des contrôleurs sans démarrer toute l’application.

— **MockMvc** : utilisé pour simuler des requêtes HTTP vers les endpoints REST et vérifier les codes de réponse.

— **Maven Surefire** : utilisé pour exécuter les tests et générer le bilan global d’exécution.

### 3.6.2 Cas de test élaborés

Les cas de test élaborés pour le Sprint 1 sont organisés en deux groupes. Le premier groupe vérifie les fonctionnalités métier liées à l’inscription, à l’authentification, à l’OTP, au profil et à l’accès administrateur. Le second groupe vérifie les règles d’accès aux endpoints publics et privés.

#### Tests fonctionnels du Sprint 1

**Test 1 : Inscription avec des informations valides**  
Ce test vérifie qu’un visiteur peut créer un compte avec des informations valides. Le résultat attendu est la création du compte avec déclenchement de la vérification OTP.

**Test 2 : Inscription avec un email déjà utilisé**  
Ce test vérifie que le système refuse la création d’un compte lorsque l’adresse email est déjà enregistrée. Le résultat attendu est un refus avec message d’erreur.

**Test 3 : Vérification OTP avec un code valide**  
Ce test vérifie que le compte est activé lorsque le code OTP est valide. Le résultat attendu est l’activation du compte et l’émission d’un jeton JWT.

**Test 4 : Vérification OTP avec un code invalide ou expiré**  
Ce test vérifie que le système refuse l’activation lorsque le code OTP est invalide ou expiré. Le résultat attendu est le refus de l’opération et le maintien du compte non activé.

**Test 5 : Authentification avec identifiants valides**  
Ce test vérifie que l’utilisateur peut se connecter avec des identifiants corrects. Le résultat attendu est le retour d’un jeton JWT et l’autorisation d’accès.

**Test 6 : Authentification avec identifiants incorrects**  
Ce test vérifie que la connexion est refusée lorsque les identifiants sont incorrects. Le résultat attendu est un refus de connexion.

**Test 7 : Consultation du profil**  
Ce test vérifie qu’un utilisateur authentifié peut consulter son profil. Le résultat attendu est le retour correct des informations personnelles.

**Test 8 : Modification du profil**  
Ce test vérifie qu’un utilisateur peut modifier ses informations personnelles. Le résultat attendu est l’enregistrement des nouvelles données.

**Test 9 : Authentification administrateur avec code 2FA valide**  
Ce test vérifie que l’administrateur peut accéder au back-office lorsque le rôle et le code 2FA sont valides. Le résultat attendu est l’accès accordé au back-office.

**Test 10 : Refus d’accès au back-office**  
Ce test vérifie que l’accès au back-office est refusé lorsque le code 2FA est invalide ou lorsque l’utilisateur ne possède pas le rôle administrateur. Le résultat attendu est un refus d’accès.

![Liste des tests fonctionnels du Sprint 1](images/chapitre3/fig_3_10_tests_fonctionnels_sprint1.png)

**Figure 3.10 : Liste des tests fonctionnels du Sprint 1**

#### Tests de contrôle d’accès aux endpoints

Ces tests permettent de vérifier que les endpoints publics nécessaires à l’inscription et à la connexion sont accessibles sans authentification, tandis que les endpoints privés liés au profil et à la session utilisateur exigent un jeton valide.

Les endpoints publics testés sont :

— `POST /api/auth/signup` ;  
— `POST /api/auth/signup/verify-phone` ;  
— `POST /api/auth/signup/resend-otp` ;  
— `POST /api/auth/login` ;  
— `POST /api/auth/login/2fa/verify`.

Les endpoints privés testés concernent principalement le profil et la session utilisateur :

— `GET /api/users/me` sans authentification : réponse attendue `401 Unauthorized` ;  
— `PUT /api/users/me` sans authentification : réponse attendue `401 Unauthorized` ;  
— `PATCH /api/users/me/password` sans authentification : réponse attendue `401 Unauthorized` ;  
— `POST /api/auth/logout` sans authentification : réponse attendue `401 Unauthorized` ;  
— `GET /api/users/me` avec authentification valide : la requête passe le filtre de sécurité.

![Liste des tests de contrôle d’accès du Sprint 1](images/chapitre3/fig_3_11_tests_controle_acces_sprint1.png)

**Figure 3.11 : Liste des tests de contrôle d’accès du Sprint 1**

### 3.6.3 Résultats obtenus et interprétation

Les tests fonctionnels du Sprint 1 ont été exécutés avec succès. Les résultats obtenus montrent que les dix cas de test liés à l’inscription, à la vérification OTP, à l’authentification, à la consultation et modification du profil, ainsi qu’à l’accès administrateur avec 2FA, ont été validés sans échec.

![Résultat d’exécution des tests fonctionnels du Sprint 1](images/chapitre3/fig_3_12_resultat_tests_fonctionnels_sprint1.png)

**Figure 3.12 : Résultat d’exécution des tests fonctionnels du Sprint 1**

Les scénarios d’erreur ont également été vérifiés. Le système refuse correctement une inscription avec un email déjà utilisé, une vérification OTP invalide ou expirée, une authentification avec des identifiants incorrects, ainsi qu’un accès au back-office avec un rôle non autorisé ou un code 2FA invalide.

Les tests de contrôle d’accès confirment que les endpoints publics restent accessibles sans authentification, ce qui est nécessaire pour permettre l’inscription, la connexion et la vérification OTP. En revanche, les endpoints privés liés au profil, au changement de mot de passe et à la déconnexion refusent les requêtes non authentifiées avec le code HTTP `401 Unauthorized`.

![Résultat d’exécution des tests de contrôle d’accès du Sprint 1](images/chapitre3/fig_3_13_resultat_tests_controle_acces_sprint1.png)

**Figure 3.13 : Résultat d’exécution des tests de contrôle d’accès du Sprint 1**

Les résultats affichés par Maven indiquent que les tests ont été exécutés sans échec, sans erreur et sans test ignoré. Cette validation permet de confirmer le bon fonctionnement du socle d’accès de FESTY avant de passer au Sprint 2, consacré à la gestion des partenaires et des événements.