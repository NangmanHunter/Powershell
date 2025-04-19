# 맨끝줄바꿈잡기-실패03
$fileContent = Get-Content "권리속부.md" -Encoding UTF8 -Raw
$fileContent = $fileContent.TrimEnd("`r", "`n")
Set-Content -Path "권리속부.txt" -Value $fileContent -Encoding UTF8
