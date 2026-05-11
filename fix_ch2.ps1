$path = "c:\Users\boufa\Downloads\rapport\chapters\07-chapitre2.tex"
$c = [System.IO.File]::ReadAllText($path)
$CRLF = [char]13 + [char]10

# ===== FIX 4: Expand section 2.2 intro - add 2nd paragraph =====
$old4 = "La sp" + [char]0xe9 + "cification des besoins permet de d" + [char]0xe9 + "finir les fonctionnalit" + [char]0xe9 + "s attendues de la plateforme ainsi que les contraintes de qualit" + [char]0xe9 + " auxquelles le syst" + [char]0xe8 + "me doit r" + [char]0xe9 + "pondre." + $CRLF + $CRLF + "\subsection{Besoins fonctionnels}"
$new4 = "La sp" + [char]0xe9 + "cification des besoins permet de d" + [char]0xe9 + "finir les fonctionnalit" + [char]0xe9 + "s attendues de la plateforme ainsi que les contraintes de qualit" + [char]0xe9 + " auxquelles le syst" + [char]0xe8 + "me doit r" + [char]0xe9 + "pondre. Elle constitue une " + [char]0xe9 + "tape importante avant la conception, car elle permet de pr" + [char]0xe9 + "ciser le p" + [char]0xe9 + "rim" + [char]0xe8 + "tre fonctionnel de l'application et d'orienter les choix techniques et architecturaux." + $CRLF + $CRLF + "Dans le cadre du projet \textbf{FESTY}, les besoins sont class" + [char]0xe9 + "s en deux cat" + [char]0xe9 + "gories : les besoins fonctionnels, qui d" + [char]0xe9 + "crivent les services fournis par la plateforme aux diff" + [char]0xe9 + "rents acteurs, et les besoins non fonctionnels, qui d" + [char]0xe9 + "crivent les exigences li" + [char]0xe9 + "es " + [char]0xe0 + " la s" + [char]0xe9 + "curit" + [char]0xe9 + ", la performance, la disponibilit" + [char]0xe9 + ", l'ergonomie et la maintenabilit" + [char]0xe9 + " du syst" + [char]0xe8 + "me." + $CRLF + $CRLF + "\subsection{Besoins fonctionnels}"
if ($c.Contains($old4)) { $c = $c.Replace($old4, $new4); Write-Host "Fix 4 OK" } else { Write-Host "Fix 4 FAIL" }

# ===== FIX 5: Add intro paragraph before besoins fonctionnels table =====
$old5 = "\subsection{Besoins fonctionnels}" + $CRLF + "\begin{table}"
$new5 = "\subsection{Besoins fonctionnels}" + $CRLF + "Les besoins fonctionnels repr" + [char]0xe9 + "sentent les actions que les acteurs peuvent effectuer " + [char]0xe0 + " travers la plateforme. Dans cette section, nous pr" + [char]0xe9 + "sentons les principales fonctionnalit" + [char]0xe9 + "s offertes par \textbf{FESTY} selon chaque acteur identifi" + [char]0xe9 + "." + $CRLF + $CRLF + "\begin{table}"
if ($c.Contains($old5)) { $c = $c.Replace($old5, $new5); Write-Host "Fix 5 OK" } else { Write-Host "Fix 5 FAIL" }

# ===== FIX 6: Add closing paragraph after besoins fonctionnels table =====
$old6 = "\end{tabularx}" + $CRLF + "\end{table}" + $CRLF + $CRLF + "\subsection{Besoins non fonctionnels}"
$new6 = "\end{tabularx}" + $CRLF + "\end{table}" + $CRLF + $CRLF + "Les besoins fonctionnels pr" + [char]0xe9 + "sent" + [char]0xe9 + "s dans ce tableau sont formul" + [char]0xe9 + "s " + [char]0xe0 + " un niveau global afin de conserver une vision synth" + [char]0xe9 + "tique du syst" + [char]0xe8 + "me. Chaque besoin regroupe plusieurs sous-fonctionnalit" + [char]0xe9 + "s qui seront d" + [char]0xe9 + "taill" + [char]0xe9 + "es dans les chapitres de sprint. Par exemple, le besoin " + [char]0xab + " G" + [char]0xe9 + "rer sa billetterie personnelle " + [char]0xbb + " englobe l'achat, la consultation, la revente et le suivi des billets. De m" + [char]0xea + "me, le besoin " + [char]0xab + " Mod" + [char]0xe9 + "rer et superviser la plateforme " + [char]0xbb + " regroupe la mod" + [char]0xe9 + "ration des " + [char]0xe9 + "v" + [char]0xe9 + "nements, des avis, des stars ainsi que la supervision des op" + [char]0xe9 + "rations sensibles." + $CRLF + $CRLF + "\subsection{Besoins non fonctionnels}"
if ($c.Contains($old6)) { $c = $c.Replace($old6, $new6); Write-Host "Fix 6 OK" } else { Write-Host "Fix 6 FAIL" }

# ===== FIX 7: Add intro paragraph before besoins non fonctionnels table =====
$old7 = "\subsection{Besoins non fonctionnels}" + $CRLF + "\begin{table}[H]" + $CRLF + "\centering" + $CRLF + "\caption{Besoins non fonctionnels}"
$new7 = "\subsection{Besoins non fonctionnels}" + $CRLF + "Les besoins non fonctionnels d" + [char]0xe9 + "crivent les contraintes de qualit" + [char]0xe9 + " que doit respecter la plateforme \textbf{FESTY}. Ils ne correspondent pas directement " + [char]0xe0 + " des fonctionnalit" + [char]0xe9 + "s visibles par l'utilisateur, mais ils sont essentiels pour garantir la fiabilit" + [char]0xe9 + ", la s" + [char]0xe9 + "curit" + [char]0xe9 + " et la bonne utilisation du syst" + [char]0xe8 + "me." + $CRLF + $CRLF + "\begin{table}[H]" + $CRLF + "\centering" + $CRLF + "\caption{Besoins non fonctionnels}"
if ($c.Contains($old7)) { $c = $c.Replace($old7, $new7); Write-Host "Fix 7 OK" } else { Write-Host "Fix 7 FAIL" }

# ===== FIX 8: Expand non-functional needs table descriptions =====
$c = $c.Replace("S" + [char]0xe9 + "curit" + [char]0xe9 + " & Prot" + [char]0xe9 + "ger les comptes, les donn" + [char]0xe9 + "es personnelles, les billets num" + [char]0xe9 + "riques, les paiements et les acc" + [char]0xe8 + "s sensibles. \\ \hline",
"S" + [char]0xe9 + "curit" + [char]0xe9 + " & Le syst" + [char]0xe8 + "me doit prot" + [char]0xe9 + "ger les comptes utilisateurs, les donn" + [char]0xe9 + "es personnelles, les billets num" + [char]0xe9 + "riques, les paiements et les acc" + [char]0xe8 + "s aux fonctionnalit" + [char]0xe9 + "s sensibles. Les op" + [char]0xe9 + "rations critiques doivent " + [char]0xea + "tre accessibles uniquement aux acteurs autoris" + [char]0xe9 + "s. \\ \hline")
$c = $c.Replace("Performance & Assurer un temps de r" + [char]0xe9 + "ponse acceptable lors de la consultation, la recherche, l'achat et le scan. \\ \hline",
"Performance & La plateforme doit assurer un temps de r" + [char]0xe9 + "ponse acceptable lors de la consultation des " + [char]0xe9 + "v" + [char]0xe9 + "nements, de la recherche, de l'achat des billets, du paiement et du scan " + [char]0xe0 + " l'entr" + [char]0xe9 + "e des " + [char]0xe9 + "v" + [char]0xe9 + "nements. \\ \hline")
$c = $c.Replace("Disponibilit" + [char]0xe9 + " & Maintenir les fonctionnalit" + [char]0xe9 + "s principales accessibles en continu. \\ \hline",
"Disponibilit" + [char]0xe9 + " & Les fonctionnalit" + [char]0xe9 + "s principales de la plateforme doivent rester accessibles afin de garantir une exp" + [char]0xe9 + "rience continue aux visiteurs, utilisateurs, partenaires et agents de scan. \\ \hline")
$c = $c.Replace("Ergonomie & Proposer une interface claire, intuitive et adapt" + [char]0xe9 + "e au mobile. \\ \hline",
"Ergonomie & L'application doit proposer une interface claire, intuitive et adapt" + [char]0xe9 + "e " + [char]0xe0 + " une utilisation mobile afin de faciliter la navigation et l'acc" + [char]0xe8 + "s aux diff" + [char]0xe9 + "rentes fonctionnalit" + [char]0xe9 + "s. \\ \hline")
$c = $c.Replace("Compatibilit" + [char]0xe9 + " & Assurer une utilisation fluide sur les plateformes mobiles cibl" + [char]0xe9 + "es. \\ \hline",
"Compatibilit" + [char]0xe9 + " & La solution doit " + [char]0xea + "tre compatible avec les plateformes mobiles cibl" + [char]0xe9 + "es et permettre une utilisation fluide sur diff" + [char]0xe9 + "rents appareils. \\ \hline")
$c = $c.Replace("Maintenabilit" + [char]0xe9 + " & Faciliter l'" + [char]0xe9 + "volution du syst" + [char]0xe8 + "me et la correction des anomalies. \\ \hline",
"Maintenabilit" + [char]0xe9 + " & L'architecture doit faciliter l'" + [char]0xe9 + "volution du syst" + [char]0xe8 + "me, l'ajout de nouvelles fonctionnalit" + [char]0xe9 + "s et la correction des anomalies. \\ \hline")
$c = $c.Replace("Scalabilit" + [char]0xe9 + " & Supporter l'augmentation du nombre d'utilisateurs, d'" + [char]0xe9 + "v" + [char]0xe9 + "nements et d'op" + [char]0xe9 + "rations. \\ \hline",
"Scalabilit" + [char]0xe9 + " & La plateforme doit pouvoir supporter l'augmentation du nombre d'utilisateurs, d'" + [char]0xe9 + "v" + [char]0xe9 + "nements, de billets vendus et d'op" + [char]0xe9 + "rations de scan. \\ \hline")
$c = $c.Replace("Tra" + [char]0xe7 + "abilit" + [char]0xe9 + " & Historiser les op" + [char]0xe9 + "rations sensibles (paiements, remboursements, scans, mod" + [char]0xe9 + "ration). \\ \hline",
"Tra" + [char]0xe7 + "abilit" + [char]0xe9 + " & Les op" + [char]0xe9 + "rations sensibles telles que les paiements, les remboursements, les scans, les validations, les actions administratives et les op" + [char]0xe9 + "rations de mod" + [char]0xe9 + "ration doivent " + [char]0xea + "tre suivies et historis" + [char]0xe9 + "es. \\ \hline")
$c = $c.Replace("Confidentialit" + [char]0xe9 + " & Prot" + [char]0xe9 + "ger les informations personnelles et transactionnelles contre les acc" + [char]0xe8 + "s non autoris" + [char]0xe9 + "s. \\ \hline",
"Confidentialit" + [char]0xe9 + " & Les informations personnelles des utilisateurs, les donn" + [char]0xe9 + "es partenaires et les informations li" + [char]0xe9 + "es aux transactions doivent " + [char]0xea + "tre prot" + [char]0xe9 + "g" + [char]0xe9 + "es contre tout acc" + [char]0xe8 + "s non autoris" + [char]0xe9 + ". \\ \hline")
$c = $c.Replace("Fiabilit" + [char]0xe9 + " & Assurer la coh" + [char]0xe9 + "rence des donn" + [char]0xe9 + "es m" + [char]0xe9 + "tier et financi" + [char]0xe8 + "res. \\ \hline",
"Fiabilit" + [char]0xe9 + " & Le syst" + [char]0xe8 + "me doit assurer la coh" + [char]0xe9 + "rence des donn" + [char]0xe9 + "es, notamment lors de l'achat des billets, de la g" + [char]0xe9 + "n" + [char]0xe9 + "ration des billets num" + [char]0xe9 + "riques, de la revente, du scan et du traitement des op" + [char]0xe9 + "rations financi" + [char]0xe8 + "res. \\ \hline")
Write-Host "Fix 8 done"

# ===== FIX 9: Add closing paragraph after non-functional needs table =====
# Find end of that table
$marker9 = "\end{tabularx}" + $CRLF + "\end{table}" + $CRLF + $CRLF + "\section{Diagramme"
$new9 = "\end{tabularx}" + $CRLF + "\end{table}" + $CRLF + $CRLF + "Ces exigences non fonctionnelles orientent les choix techniques du projet, notamment l'utilisation d'une architecture modulaire, d'un syst" + [char]0xe8 + "me d'authentification s" + [char]0xe9 + "curis" + [char]0xe9 + ", d'une gestion fiable des paiements et d'un m" + [char]0xe9 + "canisme de tra" + [char]0xe7 + "abilit" + [char]0xe9 + " pour les op" + [char]0xe9 + "rations sensibles." + $CRLF + $CRLF + "\section{Diagramme"
if ($c.Contains($marker9)) { $c = $c.Replace($marker9, $new9); Write-Host "Fix 9 OK" } else { Write-Host "Fix 9 FAIL" }

Write-Host "Saving after fixes 4-9..."
[System.IO.File]::WriteAllText($path, $c, (New-Object System.Text.UTF8Encoding($false)))
Write-Host "Saved"
