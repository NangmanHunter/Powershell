# 코드가독화-실패
$fileContent = Get-Content 권리속부.md -Encoding UTF8 
$fileContent | ForEach-Object { $_.TrimEnd() -replace "- ", "" } 
$fileContent | Set-Content "권리속부.cList" -Encoding UTF8 

$fileContent = Get-Content "권리속부.cList" -Encoding UTF8 -Raw
$fileContent = $fileContent.TrimEnd("`r", "`n")
$fileContent | Set-Content "권리속부.cList" -Encoding UTF8 -NoNewline
<#
replace부분이
ㄴfileContent에
ㄴ안담김.!!!
#>