$path = "c:\Users\boufa\Downloads\rapport\chapters\07-chapitre2.tex"
$c = [System.IO.File]::ReadAllText($path)
$CRLF = [char]13 + [char]10

# ===== FIX 10: Update user story descriptions in backlog table =====
$c = $c.Replace("US04 & Exploration & En tant que visiteur, je veux explorer les " + [char]0xe9 + "v" + [char]0xe9 + "nements et les stars afin de d" + [char]0xe9 + "couvrir les contenus disponibles. & Must Have & S2 \\ \hline",
"US04 & Exploration & En tant que visiteur, je veux explorer les " + [char]0xe9 + "v" + [char]0xe9 + "nements et les stars afin de d" + [char]0xe9 + "couvrir les contenus disponibles sur la plateforme. & Must Have & S2 \\ \hline")
$c = $c.Replace("US05 & Personnalisation & En tant qu'utilisateur, je veux personnaliser mon exp" + [char]0xe9 + "rience afin de recevoir des recommandations. & Should Have & S2 \\ \hline",
"US05 & Personnalisation & En tant qu'utilisateur, je veux personnaliser mon exp" + [char]0xe9 + "rience afin de recevoir des recommandations adapt" + [char]0xe9 + "es " + [char]0xe0 + " mes pr" + [char]0xe9 + "f" + [char]0xe9 + "rences. & Should Have & S2 \\ \hline")
$c = $c.Replace("US06 & Billetterie & En tant qu'utilisateur, je veux g" + [char]0xe9 + "rer ma billetterie personnelle (achat, consultation, revente). & Must Have & S3 \\ \hline",
"US06 & Billetterie personnelle & En tant qu'utilisateur, je veux g" + [char]0xe9 + "rer ma billetterie personnelle afin d'acheter, consulter, revendre et suivre mes billets. & Must Have & S3 \\ \hline")
$c = $c.Replace("US07 & Interactions & En tant qu'utilisateur, je veux interagir avec les " + [char]0xe9 + "v" + [char]0xe9 + "nements afin de publier des avis. & Should Have & S3 \\ \hline",
"US07 & Interactions " + [char]0xe9 + "v" + [char]0xe9 + "nementielles & En tant qu'utilisateur, je veux interagir avec les " + [char]0xe9 + "v" + [char]0xe9 + "nements afin de publier des avis et effectuer des actions li" + [char]0xe9 + "es " + [char]0xe0 + " sa participation. & Should Have & S3 \\ \hline")
$c = $c.Replace("US08 & Onboarding partenaire & En tant qu'utilisateur, je veux devenir partenaire afin d'organiser des " + [char]0xe9 + "v" + [char]0xe9 + "nements. & Must Have & S4 \\ \hline",
"US08 & Onboarding partenaire & En tant qu'utilisateur, je veux devenir partenaire afin de pouvoir organiser des " + [char]0xe9 + "v" + [char]0xe9 + "nements sur la plateforme. & Must Have & S4 \\ \hline")
$c = $c.Replace("US09 & Espace partenaire & En tant que partenaire, je veux g" + [char]0xe9 + "rer mon espace partenaire. & Must Have & S4 \\ \hline",
"US09 & Espace partenaire & En tant que partenaire, je veux g" + [char]0xe9 + "rer mon espace partenaire afin de maintenir mes informations professionnelles et mon activit" + [char]0xe9 + ". & Must Have & S4 \\ \hline")
$c = $c.Replace("US10 & Gestion " + [char]0xe9 + "v" + [char]0xe9 + "nements & En tant que partenaire, je veux g" + [char]0xe9 + "rer mes " + [char]0xe9 + "v" + [char]0xe9 + "nements, leur billetterie et les stars associ" + [char]0xe9 + "es. & Must Have & S4 \\ \hline",
"US10 & Gestion des " + [char]0xe9 + "v" + [char]0xe9 + "nements & En tant que partenaire, je veux g" + [char]0xe9 + "rer mes " + [char]0xe9 + "v" + [char]0xe9 + "nements afin de les cr" + [char]0xe9 + "er, les modifier, g" + [char]0xe9 + "rer leur billetterie et les stars associ" + [char]0xe9 + "es. & Must Have & S4 \\ \hline")
$c = $c.Replace("US11 & Contr" + [char]0xf4 + "le d'acc" + [char]0xe8 + "s & En tant que partenaire, je veux g" + [char]0xe9 + "rer les sessions de scan et les agents affect" + [char]0xe9 + "s. & Must Have & S5 \\ \hline",
"US11 & Contr" + [char]0xf4 + "le d'acc" + [char]0xe8 + "s & En tant que partenaire, je veux g" + [char]0xe9 + "rer le contr" + [char]0xf4 + "le d'acc" + [char]0xe8 + "s afin d'organiser les sessions de scan et les agents affect" + [char]0xe9 + "s. & Must Have & S5 \\ \hline")
$c = $c.Replace("US12 & Scan des billets & En tant qu'agent de scan, je veux contr" + [char]0xf4 + "ler les billets afin de valider l'entr" + [char]0xe9 + "e des participants. & Must Have & S5 \\ \hline",
"US12 & Scan des billets & En tant qu'agent de scan, je veux contr" + [char]0xf4 + "ler les billets afin de valider l'entr" + [char]0xe9 + "e des participants " + [char]0xe0 + " un " + [char]0xe9 + "v" + [char]0xe9 + "nement. & Must Have & S5 \\ \hline")
$c = $c.Replace("US13 & Activit" + [char]0xe9 + " partenaire & En tant que partenaire, je veux suivre mes ventes, soldes et op" + [char]0xe9 + "rations financi" + [char]0xe8 + "res. & Should Have & S5 \\ \hline",
"US13 & Activit" + [char]0xe9 + " et finances partenaire & En tant que partenaire, je veux suivre mon activit" + [char]0xe9 + " et mes finances afin de consulter mes ventes, mes soldes et mes op" + [char]0xe9 + "rations financi" + [char]0xe8 + "res. & Should Have & S5 \\ \hline")
$c = $c.Replace("US14 & Administration & En tant qu'administrateur, je veux administrer la plateforme. & Must Have & S6 \\ \hline",
"US14 & Administration & En tant qu'administrateur, je veux administrer la plateforme afin de g" + [char]0xe9 + "rer les utilisateurs, les partenaires et les param" + [char]0xe8 + "tres globaux. & Must Have & S6 \\ \hline")
$c = $c.Replace("US15 & Mod" + [char]0xe9 + "ration & En tant qu'administrateur, je veux mod" + [char]0xe9 + "rer et superviser la plateforme. & Must Have & S6 \\ \hline",
"US15 & Mod" + [char]0xe9 + "ration et supervision & En tant qu'administrateur, je veux mod" + [char]0xe9 + "rer et superviser la plateforme afin de contr" + [char]0xf4 + "ler les contenus, les op" + [char]0xe9 + "rations financi" + [char]0xe8 + "res et les actions sensibles. & Must Have & S6 \\ \hline")
Write-Host "Fix 10 done"

# ===== FIX 11: Add closing paragraph after backlog table =====
$old11 = "\normalsize" + $CRLF + "\end{table}" + $CRLF + $CRLF + "\subsection{Planification des sprints}"
$new11 = "\normalsize" + $CRLF + "\end{table}" + $CRLF + $CRLF + "Ce backlog pr" + [char]0xe9 + "sente les fonctionnalit" + [char]0xe9 + "s principales de la plateforme " + [char]0xe0 + " un niveau global. Chaque user story sera d" + [char]0xe9 + "taill" + [char]0xe9 + "e dans le sprint correspondant " + [char]0xe0 + " travers un Sprint Backlog, des raffinements de cas d'utilisation, des descriptions textuelles et des diagrammes de conception. Les fonctionnalit" + [char]0xe9 + "s complexes telles que le paiement, la revente des billets, la g" + [char]0xe9 + "n" + [char]0xe9 + "ration des billets num" + [char]0xe9 + "riques, l'affectation des agents de scan ou la mod" + [char]0xe9 + "ration des stars seront donc approfondies dans les chapitres de sprint concern" + [char]0xe9 + "s." + $CRLF + $CRLF + "\subsection{Planification des sprints}"
if ($c.Contains($old11)) { $c = $c.Replace($old11, $new11); Write-Host "Fix 11 OK" } else { Write-Host "Fix 11 FAIL" }

# ===== FIX 12: Add intro paragraph before sprint planning table =====
$old12 = "\subsection{Planification des sprints}" + $CRLF + "\begin{table}[H]" + $CRLF + "\centering" + $CRLF + "\caption{Planification des sprints}"
$new12 = "\subsection{Planification des sprints}" + $CRLF + "La planification des sprints permet d'organiser le d" + [char]0xe9 + "veloppement de la plateforme en plusieurs it" + [char]0xe9 + "rations coh" + [char]0xe9 + "rentes. Chaque sprint regroupe un ensemble de fonctionnalit" + [char]0xe9 + "s li" + [char]0xe9 + "es " + [char]0xe0 + " un m" + [char]0xea + "me domaine fonctionnel." + $CRLF + $CRLF + "Pour le projet \textbf{FESTY}, nous avons d" + [char]0xe9 + "coup" + [char]0xe9 + " le d" + [char]0xe9 + "veloppement en six sprints principaux." + $CRLF + $CRLF + "\begin{table}[H]" + $CRLF + "\centering" + $CRLF + "\caption{Planification des sprints}"
if ($c.Contains($old12)) { $c = $c.Replace($old12, $new12); Write-Host "Fix 12 OK" } else { Write-Host "Fix 12 FAIL" }

# ===== FIX 13: Update sprint table intitulés and objectives =====
$c = $c.Replace("Sprint 1 & Authentification et comptes & Mettre en place l'inscription, l'authentification et la gestion du compte utilisateur. \\ \hline",
"Sprint 1 & Authentification et gestion des comptes & Mettre en place l'inscription, l'authentification, la v" + [char]0xe9 + "rification du num" + [char]0xe9 + "ro de t" + [char]0xe9 + "l" + [char]0xe9 + "phone et la gestion du compte utilisateur. \\ \hline")
$c = $c.Replace("Sprint 2 & Exploration et personnalisation & Permettre la consultation des " + [char]0xe9 + "v" + [char]0xe9 + "nements, la recherche, les stars et la personnalisation. \\ \hline",
"Sprint 2 & Exploration, personnalisation et stars & Permettre la consultation des " + [char]0xe9 + "v" + [char]0xe9 + "nements, la recherche, la consultation du catalogue des stars et la personnalisation de l'exp" + [char]0xe9 + "rience utilisateur. \\ \hline")
$c = $c.Replace("Sprint 3 & Billetterie et interactions & G" + [char]0xe9 + "rer l'achat, le paiement, la consultation des billets et les interactions. \\ \hline",
"Sprint 3 & Billetterie personnelle, paiement et interactions & G" + [char]0xe9 + "rer l'achat des billets, le paiement, la consultation des billets, les op" + [char]0xe9 + "rations associ" + [char]0xe9 + "es " + [char]0xe0 + " la billetterie et les interactions avec les " + [char]0xe9 + "v" + [char]0xe9 + "nements. \\ \hline")
$c = $c.Replace("Sprint 4 & Espace partenaire & G" + [char]0xe9 + "rer le parcours partenaire, l'espace d" + [char]0xe9 + "di" + [char]0xe9 + " et la gestion des " + [char]0xe9 + "v" + [char]0xe9 + "nements. \\ \hline",
"Sprint 4 & Espace partenaire et gestion des " + [char]0xe9 + "v" + [char]0xe9 + "nements & Permettre " + [char]0xe0 + " l'utilisateur de devenir partenaire et au partenaire de g" + [char]0xe9 + "rer son espace, ses " + [char]0xe9 + "v" + [char]0xe9 + "nements, leur billetterie et les stars associ" + [char]0xe9 + "es. \\ \hline")
$c = $c.Replace("Sprint 5 & Contr" + [char]0xf4 + "le d'acc" + [char]0xe8 + "s et scan & G" + [char]0xe9 + "rer sessions de scan, affectation des agents et contr" + [char]0xf4 + "le des billets. \\ \hline",
"Sprint 5 & Contr" + [char]0xf4 + "le d'acc" + [char]0xe8 + "s, scan et finances partenaire & Mettre en place la gestion des sessions de scan, l'affectation des agents, le contr" + [char]0xf4 + "le des billets et le suivi de l'activit" + [char]0xe9 + " financi" + [char]0xe8 + "re du partenaire. \\ \hline")
$c = $c.Replace("Sprint 6 & Administration & Assurer l'administration, la mod" + [char]0xe9 + "ration et la supervision globale. \\ \hline",
"Sprint 6 & Administration, mod" + [char]0xe9 + "ration et supervision & D" + [char]0xe9 + "velopper les fonctionnalit" + [char]0xe9 + "s d'administration, de gestion des utilisateurs et partenaires, de mod" + [char]0xe9 + "ration, de supervision financi" + [char]0xe8 + "re et de configuration de la plateforme. \\ \hline")
Write-Host "Fix 13 done"

# ===== FIX 14: Add closing paragraph after sprint planning table =====
$old14 = "\end{tabularx}" + $CRLF + "\end{table}" + $CRLF + $CRLF + "\section{Environnement de travail}"
$new14 = "\end{tabularx}" + $CRLF + "\end{table}" + $CRLF + $CRLF + "Cette planification permet de progresser progressivement depuis les fonctionnalit" + [char]0xe9 + "s de base, comme l'authentification et la consultation publique, vers les modules plus avanc" + [char]0xe9 + "s tels que la billetterie, le contr" + [char]0xf4 + "le d'acc" + [char]0xe8 + "s, les op" + [char]0xe9 + "rations financi" + [char]0xe8 + "res et l'administration." + $CRLF + $CRLF + "Chaque sprint fera l'objet d'un chapitre sp" + [char]0xe9 + "cifique dans lequel seront pr" + [char]0xe9 + "sent" + [char]0xe9 + "s son objectif, son backlog, ses cas d'utilisation d" + [char]0xe9 + "taill" + [char]0xe9 + "s, ses diagrammes de conception et les principales interfaces r" + [char]0xe9 + "alis" + [char]0xe9 + "es." + $CRLF + $CRLF + "\section{Environnement de travail}"
if ($c.Contains($old14)) { $c = $c.Replace($old14, $new14); Write-Host "Fix 14 OK" } else { Write-Host "Fix 14 FAIL" }

# ===== FIX 15: Add intro sentence to section 2.5.1 before table =====
$old15 = "\subsection{Environnement mat" + [char]0xe9 + "riel}" + $CRLF + "\begin{table}[H]"
$new15 = "\subsection{Environnement mat" + [char]0xe9 + "riel}" + $CRLF + "Le tableau suivant pr" + [char]0xe9 + "sente les caract" + [char]0xe9 + "ristiques mat" + [char]0xe9 + "rielles de l'ordinateur utilis" + [char]0xe9 + " pour le d" + [char]0xe9 + "veloppement de la plateforme \textbf{FESTY}, ainsi que l'environnement mobile utilis" + [char]0xe9 + " pour les tests." + $CRLF + $CRLF + "\begin{table}[H]"
if ($c.Contains($old15)) { $c = $c.Replace($old15, $new15); Write-Host "Fix 15 OK" } else { Write-Host "Fix 15 FAIL" }

Write-Host "Saving..."
[System.IO.File]::WriteAllText($path, $c, (New-Object System.Text.UTF8Encoding($false)))
Write-Host "Saved"
