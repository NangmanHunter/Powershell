# 파일줄이기
Get-Content 권리속부.md -Encoding UTF8 | ForEach-Object { $_.TrimEnd() -replace "- ", "" } | Set-Content "권리속부.cList" -Encoding UTF8 

$fileContent = Get-Content "권리속부.cList" -Encoding UTF8 -Raw
$fileContent = $fileContent.TrimEnd("`r", "`n")
$fileContent | Set-Content "권리속부.cList" -Encoding UTF8 -NoNewline

