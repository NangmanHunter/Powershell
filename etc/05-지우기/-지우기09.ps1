# 맨끝줄바꿈잡기-실패01
$content = Get-Content 권리속부.md -Encoding UTF8 | ForEach-Object { $_.TrimEnd() -replace "- ", "" }
Set-Content "권리속부.cList" -Value ($content -join "`r`n") -Encoding UTF8
<#
Set
ㄴ쓰는순간-마지막-\n형태줄바꿈들어감.
ㄴ마무리를
ㄴ그렇게세팅했나봄.;;
#>