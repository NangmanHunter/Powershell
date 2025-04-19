# 코드가독화
$fileContent = Get-Content 권리속부.md -Encoding UTF8 
$fileContent = $fileContent | ForEach-Object { $_.TrimEnd() -replace "- ", "" } 
$fileContent | Set-Content "권리속부.cList" -Encoding UTF8 

$fileContent = Get-Content "권리속부.cList" -Encoding UTF8 -Raw
$fileContent = $fileContent.TrimEnd("`r", "`n")
$fileContent | Set-Content "권리속부.cList" -Encoding UTF8 -NoNewline
<#
구조
ㄴ더통일시키고픔.
ㄴ메소드
ㄴ중간.
ㄴForEach-Object -> . ...() 
ㄴ이런형식으로.
즉,
ㄴ대칭성
ㄴ살리고픈.
ㄴ그런느낌.
대칭성.
ㄴ가독성.
ㄴ최적화.
#>