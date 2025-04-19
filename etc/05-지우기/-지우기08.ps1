# Trim
Get-Content 권리속부.md -Encoding UTF8 | ForEach-Object { $_.TrimEnd() -replace "- ", "" } | Set-Content "권리속부.cList" -Encoding UTF8
Remove-Item "권리속부.md"
<#
Get
ㄴ줄단위.
ㄴ배열잡음.
ㄴ배열반환.
ForEach-Object
ㄴ줄단위
ㄴ배열원소
ㄴ.TrimEnd()
ㄴ줄단위
ㄴ공백문자제거.


반면에
ㄴGet-Raw
ㄴ문자열.
ㄴ반환.
#>