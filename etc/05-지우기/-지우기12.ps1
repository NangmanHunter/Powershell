# 줄바꿈성공
$fileContent = Get-Content "권리속부.md" -Encoding UTF8 -Raw
$fileContent = $fileContent.TrimEnd("`r", "`n")
$fileContent | Out-File -FilePath "권리속부.txt" -Encoding UTF8 -NoNewline