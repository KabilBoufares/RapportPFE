$CRLF = [char]13 + [char]10

function Process-TableFile($path) {
    if (-not (Test-Path $path)) { Write-Host "SKIP: $path"; return }
    $c = [System.IO.File]::ReadAllText($path)

    # 1. Remove local \renewcommand{\arraystretch}{...} lines (already handled globally)
    $c = [regex]::Replace($c, "\r\n\\renewcommand\{\\arraystretch\}\{[0-9.]+\}", "")

    # 2. Process line by line
    $lines = $c -split "\r\n"
    $newLines = [System.Collections.Generic.List[string]]::new()

    foreach ($line in $lines) {

        # --- Strip | from column specs of tabular environments ---
        if ($line -match '\\begin\{(?:tabularx|xltabular|tabular)\}') {
            $end = $line.LastIndexOf('}')
            if ($end -ge 0) {
                $depth = 0; $start = -1
                for ($j = $end; $j -ge 0; $j--) {
                    $ch = $line[$j]
                    if    ($ch -eq '}') { $depth++ }
                    elseif ($ch -eq '{') { $depth--; if ($depth -eq 0) { $start = $j; break } }
                }
                if ($start -ge 0) {
                    $spec = $line.Substring($start + 1, $end - $start - 1)
                    $newSpec = ""; $d = 0
                    foreach ($ch in $spec.ToCharArray()) {
                        if    ($ch -eq '{') { $d++; $newSpec += $ch }
                        elseif ($ch -eq '}') { $d--; $newSpec += $ch }
                        elseif ($ch -eq '|' -and $d -eq 0) { $newSpec += ' ' }
                        else  { $newSpec += $ch }
                    }
                    $newSpec = [regex]::Replace($newSpec, ' {2,}', ' ').Trim()
                    $line = $line.Substring(0, $start + 1) + $newSpec + $line.Substring($end)
                }
            }
        }

        # --- Standalone \hline (opening rule) → \toprule ---
        if ($line.Trim() -eq '\hline') {
            $newLines.Add('\toprule')
            continue
        }

        # --- \end{tabular...} → insert \bottomrule line before it ---
        if ($line.Trim() -match '^\\end\{(?:tabularx|tabular|xltabular|longtable)\}$') {
            $newLines.Add('\bottomrule')
            $newLines.Add($line)
            continue
        }

        # --- Header row (\Tcell{) ending with \hline → \midrule ---
        if ($line.Contains('\Tcell{') -and $line.TrimEnd().EndsWith('\hline')) {
            $idx = $line.LastIndexOf('\hline')
            $newLines.Add($line.Substring(0, $idx) + '\midrule')
            continue
        }

        # --- Data row ending with \hline → \lightrule ---
        if ($line.TrimEnd().EndsWith('\hline')) {
            $idx = $line.LastIndexOf('\hline')
            $newLines.Add($line.Substring(0, $idx) + '\lightrule')
            continue
        }

        $newLines.Add($line)
    }

    $c = $newLines -join $CRLF
    [System.IO.File]::WriteAllText($path, $c, (New-Object System.Text.UTF8Encoding($false)))
    Write-Host "Done: $path"
}

Process-TableFile "c:\Users\boufa\Downloads\rapport\chapters\06-chapitre1.tex"
Process-TableFile "c:\Users\boufa\Downloads\rapport\chapters\07-chapitre2.tex"
Write-Host "All tables styled."
