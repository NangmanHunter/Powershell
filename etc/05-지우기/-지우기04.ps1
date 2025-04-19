# UTF8 x2
Get-Content 권리속부.md -Encoding UTF8 | ForEach-Object { $_ -replace "- ", ""} | Set-Content output.txt -Encoding UTF8
<#
ㄴGet-Set
ㄴ둘다UTF8
ㄴForEach-줄단위
#>