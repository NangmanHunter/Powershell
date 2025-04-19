# 맨끝줄바꿈잡기-실패02
Get-Content 권리속부.md -Encoding UTF8 | ForEach-Object { $_.TrimEnd() -replace "- ", "" } | Set-Content "권리속부.cList" -Encoding UTF8 -NoNewline
Get-Content 권리속부.cList -Encoding UTF8 | Set-Content "권리속부01.cList" -Encoding UTF8
Remove-Item "권리속부.md"
<#
ㄴ배열+NoNewLine -> 개별요소일렬 -> 전부일렬
#>

