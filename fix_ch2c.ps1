$path = "c:\Users\boufa\Downloads\rapport\chapters\07-chapitre2.tex"
$c = [System.IO.File]::ReadAllText($path)
$CRLF = [char]13 + [char]10

# ===== FIX 16: Update tools table descriptions =====
$c = $c.Replace("Visual Studio Code & " + [char]0xc9 + "dition du code, configuration et documentation \\ \hline",
"Visual Studio Code & " + [char]0xc9 + "dition du code source, des fichiers de configuration et de la documentation. \\ \hline")
$c = $c.Replace("IntelliJ IDEA & D" + [char]0xe9 + "veloppement du back-end Spring Boot \\ \hline",
"IntelliJ IDEA & D" + [char]0xe9 + "veloppement et maintenance de la partie Back-End bas" + [char]0xe9 + "e sur Spring Boot. \\ \hline")
$c = $c.Replace("Android Studio & Compilation et test de l'application Android \\ \hline",
"Android Studio & Compilation, ex" + [char]0xe9 + "cution et test de l'application mobile Android. \\ \hline")
$c = $c.Replace("Postman & Test et validation des API REST \\ \hline",
"Postman & Test et validation des API REST. \\ \hline")
$c = $c.Replace("Git & Gestion locale des versions \\ \hline",
"Git & Gestion locale des versions du code source. \\ \hline")
$c = $c.Replace("GitHub / GitLab & H" + [char]0xe9 + "bergement du code source \\ \hline",
"GitHub / GitLab & H" + [char]0xe9 + "bergement du code source et suivi des modifications. \\ \hline")
$c = $c.Replace("PostgreSQL & Base de donn" + [char]0xe9 + "es relationnelle \\ \hline",
"PostgreSQL & Base de donn" + [char]0xe9 + "es relationnelle utilis" + [char]0xe9 + "e pour le stockage local des donn" + [char]0xe9 + "es. \\ \hline")
$c = $c.Replace("pgAdmin & Administration de PostgreSQL \\ \hline",
"pgAdmin & Administration et consultation de la base de donn" + [char]0xe9 + "es PostgreSQL. \\ \hline")
$c = $c.Replace("Docker & Ex" + [char]0xe9 + "cution de services locaux \\ \hline",
"Docker & Ex" + [char]0xe9 + "cution de certains services n" + [char]0xe9 + "cessaires aux tests et " + [char]0xe0 + " l'environnement de d" + [char]0xe9 + "veloppement. \\ \hline")
$c = $c.Replace("Stripe CLI & Test des webhooks Stripe \\ \hline",
"Stripe CLI & Test local des webhooks Stripe et simulation des " + [char]0xe9 + "v" + [char]0xe9 + "nements de paiement. \\ \hline")
$c = $c.Replace("ngrok & Exposition temporaire de services locaux \\ \hline",
"ngrok & Exposition temporaire de l'environnement local afin de tester les webhooks et les services externes. \\ \hline")
$c = $c.Replace("PlantUML & G" + [char]0xe9 + "n" + [char]0xe9 + "ration des diagrammes UML \\ \hline",
"PlantUML & R" + [char]0xe9 + "alisation des diagrammes UML. \\ \hline")
$c = $c.Replace("Draw.io & " + [char]0xc9 + "dition visuelle des diagrammes \\ \hline",
"Draw.io & Cr" + [char]0xe9 + "ation et am" + [char]0xe9 + "lioration visuelle des diagrammes. \\ \hline")
Write-Host "Fix 16 done"

# ===== FIX 17: Expand section 2.6 intro =====
$old17 = "Cette section pr" + [char]0xe9 + "sente les principales technologies utilis" + [char]0xe9 + "es pour le d" + [char]0xe9 + "veloppement de la plateforme FESTY." + $CRLF + $CRLF + "\begin{figure}"
$new17 = "Cette section pr" + [char]0xe9 + "sente les principales technologies utilis" + [char]0xe9 + "es pour le d" + [char]0xe9 + "veloppement de la plateforme \textbf{FESTY}. Elles sont regroup" + [char]0xe9 + "es selon leur r" + [char]0xf4 + "le dans l'architecture du projet : technologies Front-End et Mobile, technologies Back-End, base de donn" + [char]0xe9 + "es, d" + [char]0xe9 + "ploiement et services externes." + $CRLF + $CRLF + "La figure suivante pr" + [char]0xe9 + "sente une vue synth" + [char]0xe9 + "tique des principales technologies et services utilis" + [char]0xe9 + "s dans la r" + [char]0xe9 + "alisation de la plateforme \textbf{FESTY}." + $CRLF + $CRLF + "\begin{figure}"
if ($c.Contains($old17)) { $c = $c.Replace($old17, $new17); Write-Host "Fix 17 OK" } else { Write-Host "Fix 17 FAIL" }

# ===== FIX 18: Add intro paragraph before frontend table + expand descriptions =====
$old18 = "\subsection{Technologies Front-End et Mobile}" + $CRLF + "\begin{table}[H]"
$new18 = "\subsection{Technologies Front-End et Mobile}" + $CRLF + "La partie Front-End de \textbf{FESTY} comprend l'application mobile destin" + [char]0xe9 + "e aux visiteurs, utilisateurs, partenaires et agents de scan, ainsi que des interfaces web d" + [char]0xe9 + "di" + [char]0xe9 + "es " + [char]0xe0 + " l'administration et au suivi partenaire." + $CRLF + $CRLF + "\begin{table}[H]"
if ($c.Contains($old18)) { $c = $c.Replace($old18, $new18); Write-Host "Fix 18 OK" } else { Write-Host "Fix 18 FAIL" }

# Expand frontend table descriptions
$c = $c.Replace("Flutter & Framework multiplateforme utilis" + [char]0xe9 + " pour l'application mobile de FESTY. \cite{REF-FLUTTER} \\ \hline",
"Flutter & Framework utilis" + [char]0xe9 + " pour d" + [char]0xe9 + "velopper l'application mobile multiplateforme de FESTY, compatible avec Android et iOS " + [char]0xe0 + " partir d'une base de code unique \cite{REF-FLUTTER}. \\ \hline")
$c = $c.Replace("Dart & Langage de Flutter pour les interfaces mobiles et la logique client. \cite{REF-DART} \\ \hline",
"Dart & Langage utilis" + [char]0xe9 + " avec Flutter pour d" + [char]0xe9 + "velopper les interfaces mobiles, g" + [char]0xe9 + "rer la logique c" + [char]0xf4 + "t" + [char]0xe9 + " client et assurer la communication avec les API Back-End \cite{REF-DART}. \\ \hline")
$c = $c.Replace("React.js & Biblioth" + [char]0xe8 + "que JavaScript pour les dashboards web administrateur et partenaire. \cite{REF-REACT} \\ \hline",
"React.js & Biblioth" + [char]0xe8 + "que JavaScript utilis" + [char]0xe9 + "e pour d" + [char]0xe9 + "velopper les dashboards web, notamment les interfaces administrateur et partenaire \cite{REF-REACT}. \\ \hline")
$c = $c.Replace("TypeScript / JavaScript & Langages utilis" + [char]0xe9 + "s pour la logique des interfaces web et la maintenabilit" + [char]0xe9 + " du code. \cite{REF-TYPESCRIPT}, \cite{REF-JAVASCRIPT} \\ \hline",
"TypeScript / JavaScript & Langages utilis" + [char]0xe9 + "s pour structurer la logique des interfaces web et am" + [char]0xe9 + "liorer la maintenabilit" + [char]0xe9 + " du code Front-End \cite{REF-TYPESCRIPT}, \cite{REF-JAVASCRIPT}. \\ \hline")
Write-Host "Fix 18 descriptions done"

# ===== FIX 19: Add intro paragraph before backend table + expand descriptions =====
$old19 = "\subsection{Technologies Back-End}" + $CRLF + "\begin{table}[H]"
$new19 = "\subsection{Technologies Back-End}" + $CRLF + "La partie Back-End de \textbf{FESTY} repose sur un monolithe modulaire d" + [char]0xe9 + "velopp" + [char]0xe9 + " avec \textbf{Spring Boot}. Cette architecture permet de regrouper les fonctionnalit" + [char]0xe9 + "s dans un m" + [char]0xea + "me projet tout en organisant le code en modules m" + [char]0xe9 + "tier coh" + [char]0xe9 + "rents tels que l'authentification, les " + [char]0xe9 + "v" + [char]0xe9 + "nements, la billetterie, le paiement, les partenaires, les notifications, les avis, les stars, le scan et l'administration." + $CRLF + $CRLF + "\begin{table}[H]"
if ($c.Contains($old19)) { $c = $c.Replace($old19, $new19); Write-Host "Fix 19 OK" } else { Write-Host "Fix 19 FAIL" }

# Expand backend table descriptions
$c = $c.Replace("Java 17 & Langage principal du back-end. \cite{REF-JAVA17} \\ \hline",
"Java 17 & Langage principal utilis" + [char]0xe9 + " pour le d" + [char]0xe9 + "veloppement de la partie back-end de la plateforme FESTY \cite{REF-JAVA17}. \\ \hline")
$c = $c.Replace("Spring Boot & Framework pour les services Back-End de FESTY. \cite{REF-SPRING-BOOT} \\ \hline",
"Spring Boot & Framework utilis" + [char]0xe9 + " pour d" + [char]0xe9 + "velopper les services Back-End de la plateforme FESTY \cite{REF-SPRING-BOOT}. \\ \hline")
$c = $c.Replace("Maven & Gestion des d" + [char]0xe9 + "pendances et build du projet. \cite{REF-MAVEN} \\ \hline",
"Maven & Outil utilis" + [char]0xe9 + " pour la gestion des d" + [char]0xe9 + "pendances, la compilation et l'ex" + [char]0xe9 + "cution du projet Back-End \cite{REF-MAVEN}. \\ \hline")
$c = $c.Replace("Spring MVC / REST API & Exposition des services Back-End sous forme d'API REST. \cite{REF-SPRING-MVC} \\ \hline",
"Spring MVC / REST API & Utilis" + [char]0xe9 + " pour exposer les services Back-End sous forme d'API REST consomm" + [char]0xe9 + "es par l'application mobile et les dashboards web \cite{REF-SPRING-MVC}. \\ \hline")
$c = $c.Replace("Spring Modulith & Organisation du monolithe en modules m" + [char]0xe9 + "tier. \cite{REF-SPRING-MODULITH} \\ \hline",
"Spring Modulith & Utilis" + [char]0xe9 + " pour organiser le monolithe en modules m" + [char]0xe9 + "tier coh" + [char]0xe9 + "rents tout en conservant une s" + [char]0xe9 + "paration claire des responsabilit" + [char]0xe9 + "s \cite{REF-SPRING-MODULITH}. \\ \hline")
$c = $c.Replace("Spring Security & S" + [char]0xe9 + "curisation des acc" + [char]0xe8 + "s et gestion des autorisations. \cite{REF-SPRING-SECURITY} \\ \hline",
"Spring Security & Utilis" + [char]0xe9 + " pour s" + [char]0xe9 + "curiser les acc" + [char]0xe8 + "s aux ressources et g" + [char]0xe9 + "rer les autorisations selon les r" + [char]0xf4 + "les \cite{REF-SPRING-SECURITY}. \\ \hline")
$c = $c.Replace("JWT & Authentification stateless via jetons d'acc" + [char]0xe8 + "s et de rafra" + [char]0xee + "chissement. \cite{REF-JWT} \\ \hline",
"JWT & M" + [char]0xe9 + "canisme utilis" + [char]0xe9 + " pour g" + [char]0xe9 + "rer l'authentification stateless " + [char]0xe0 + " travers des jetons d'acc" + [char]0xe8 + "s et de rafra" + [char]0xee + "chissement \cite{REF-JWT}. \\ \hline")
$c = $c.Replace("Spring Data JPA / Hibernate & Persistance des donn" + [char]0xe9 + "es et interaction avec la base. \cite{REF-SPRING-DATA-JPA}, \cite{REF-HIBERNATE} \\ \hline",
"Spring Data JPA / Hibernate & Utilis" + [char]0xe9 + "s pour g" + [char]0xe9 + "rer la persistance des donn" + [char]0xe9 + "es et l'interaction avec la base de donn" + [char]0xe9 + "es relationnelle \cite{REF-SPRING-DATA-JPA}, \cite{REF-HIBERNATE}. \\ \hline")
$c = $c.Replace("Flyway & Migrations SQL et " + [char]0xe9 + "volution du sch" + [char]0xe9 + "ma. \cite{REF-FLYWAY} \\ \hline",
"Flyway & Outil utilis" + [char]0xe9 + " pour g" + [char]0xe9 + "rer les migrations SQL et assurer l'" + [char]0xe9 + "volution contr" + [char]0xf4 + "l" + [char]0xe9 + "e du sch" + [char]0xe9 + "ma de la base de donn" + [char]0xe9 + "es \cite{REF-FLYWAY}. \\ \hline")
$c = $c.Replace("Springdoc OpenAPI / Swagger UI & Documentation et test des API REST. \cite{REF-SPRINGDOC} \\ \hline",
"Springdoc OpenAPI / Swagger UI & Utilis" + [char]0xe9 + " pour documenter et tester les API REST expos" + [char]0xe9 + "es par le Back-End \cite{REF-SPRINGDOC}. \\ \hline")
$c = $c.Replace("Spring Boot Actuator & Supervision de l'" + [char]0xe9 + "tat de l'application. \cite{REF-SPRING-ACTUATOR} \\ \hline",
"Spring Boot Actuator & Utilis" + [char]0xe9 + " pour exposer des informations de supervision, notamment l'" + [char]0xe9 + "tat de sant" + [char]0xe9 + " de l'application \cite{REF-SPRING-ACTUATOR}. \\ \hline")
$c = $c.Replace("Lombok & R" + [char]0xe9 + "duction du code r" + [char]0xe9 + "p" + [char]0xe9 + "titif. \cite{REF-LOMBOK} \\ \hline",
"Lombok & Biblioth" + [char]0xe8 + "que utilis" + [char]0xe9 + "e pour r" + [char]0xe9 + "duire le code r" + [char]0xe9 + "p" + [char]0xe9 + "titif dans les classes Java \cite{REF-LOMBOK}. \\ \hline")
Write-Host "Fix 19 descriptions done"

# ===== FIX 20: Add intro paragraph before database/services table + expand descriptions =====
$old20 = "\subsection{Base de donn" + [char]0xe9 + "es, d" + [char]0xe9 + "ploiement et services externes}" + $CRLF + "\begin{table}[H]"
$new20 = "\subsection{Base de donn" + [char]0xe9 + "es, d" + [char]0xe9 + "ploiement et services externes}" + $CRLF + "La plateforme \textbf{FESTY} s'appuie sur une base de donn" + [char]0xe9 + "es relationnelle et plusieurs services externes afin d'assurer le stockage des donn" + [char]0xe9 + "es, le d" + [char]0xe9 + "ploiement, la gestion des paiements, l'envoi des notifications, la v" + [char]0xe9 + "rification des utilisateurs et la gestion des fichiers." + $CRLF + $CRLF + "\begin{table}[H]"
if ($c.Contains($old20)) { $c = $c.Replace($old20, $new20); Write-Host "Fix 20 OK" } else { Write-Host "Fix 20 FAIL" }

# Expand database/services table descriptions
$c = $c.Replace("PostgreSQL & SGBD relationnel principal de la plateforme. \cite{REF-POSTGRESQL} \\ \hline",
"PostgreSQL & Syst" + [char]0xe8 + "me de gestion de base de donn" + [char]0xe9 + "es relationnelle utilis" + [char]0xe9 + " pour stocker les donn" + [char]0xe9 + "es principales de la plateforme, aussi bien en local qu'en environnement cloud \cite{REF-POSTGRESQL}. \\ \hline")
$c = $c.Replace("Supabase & Plateforme cloud pour l'h" + [char]0xe9 + "bergement PostgreSQL et l'authentification OAuth 2.0. \cite{REF-SUPABASE} \\ \hline",
"Supabase & Plateforme cloud utilis" + [char]0xe9 + "e pour h" + [char]0xe9 + "berger la base de donn" + [char]0xe9 + "es PostgreSQL en environnement de d" + [char]0xe9 + "ploiement. Elle est " + [char]0xe9 + "galement exploit" + [char]0xe9 + "e dans certains sc" + [char]0xe9 + "narios li" + [char]0xe9 + "s " + [char]0xe0 + " l'authentification externe \cite{REF-SUPABASE}. \\ \hline")
$c = $c.Replace("PostGIS / Hibernate Spatial & Gestion des donn" + [char]0xe9 + "es g" + [char]0xe9 + "ographiques. \cite{REF-POSTGIS}, \cite{REF-HIBERNATE-SPATIAL} \\ \hline",
"PostGIS / Hibernate Spatial & Technologies utilis" + [char]0xe9 + "es pour g" + [char]0xe9 + "rer les donn" + [char]0xe9 + "es g" + [char]0xe9 + "ographiques des " + [char]0xe9 + "v" + [char]0xe9 + "nements, notamment les coordonn" + [char]0xe9 + "es GPS et les traitements spatiaux \cite{REF-POSTGIS}, \cite{REF-HIBERNATE-SPATIAL}. \\ \hline")
$c = $c.Replace("Render & H" + [char]0xe9 + "bergement cloud du Back-End et des interfaces web. \cite{REF-RENDER} \\ \hline",
"Render & Plateforme cloud utilis" + [char]0xe9 + "e pour le d" + [char]0xe9 + "ploiement du Back-End et des interfaces web de la plateforme \cite{REF-RENDER}. \\ \hline")
$c = $c.Replace("Stripe & Paiements, remboursements, webhooks, payouts, comptes connect" + [char]0xe9 + "s. \cite{REF-STRIPE} \\ \hline",
"Stripe & Service utilis" + [char]0xe9 + " pour g" + [char]0xe9 + "rer les paiements en ligne, les remboursements, les webhooks, les payouts et les comptes connect" + [char]0xe9 + "s des partenaires \cite{REF-STRIPE}. \\ \hline")
$c = $c.Replace("Firebase Cloud Messaging & Notifications push vers les utilisateurs. \cite{REF-FIREBASE-FCM} \\ \hline",
"Firebase Cloud Messaging & Service utilis" + [char]0xe9 + " pour l'envoi des notifications push aux utilisateurs \cite{REF-FIREBASE-FCM}. \\ \hline")
$c = $c.Replace("Brevo & Emails transactionnels. \cite{REF-BREVO} \\ \hline",
"Brevo & Service utilis" + [char]0xe9 + " pour l'envoi des emails transactionnels \cite{REF-BREVO}. \\ \hline")
$c = $c.Replace("Twilio & Envoi de SMS pour v" + [char]0xe9 + "rification ou notification. \cite{REF-TWILIO} \\ \hline",
"Twilio & Service pr" + [char]0xe9 + "vu pour l'envoi de SMS dans certains sc" + [char]0xe9 + "narios de v" + [char]0xe9 + "rification ou de notification \cite{REF-TWILIO}. \\ \hline")
$c = $c.Replace("Bunny.net & CDN et stockage de fichiers multim" + [char]0xe9 + "dias. \cite{REF-BUNNY} \\ \hline",
"Bunny.net & Service utilis" + [char]0xe9 + " pour le stockage ou la diffusion de fichiers ou m" + [char]0xe9 + "dias li" + [char]0xe9 + "s " + [char]0xe0 + " la plateforme \cite{REF-BUNNY}. \\ \hline")
Write-Host "Fix 20 descriptions done"

Write-Host "Saving..."
[System.IO.File]::WriteAllText($path, $c, (New-Object System.Text.UTF8Encoding($false)))
Write-Host "Saved"
