# 파일최적화
$fileContent = Get-Content 권리속부.md -Encoding UTF8 
$fileContent = $fileContent.ForEach({ $_.TrimEnd() -replace "- ", "" })
$fileContent | Set-Content "권리속부.cList" -Encoding UTF8 

$fileContent = Get-Content "권리속부.cList" -Encoding UTF8 -Raw
$fileContent = $fileContent.TrimEnd("`r", "`n")
$fileContent | Set-Content "권리속부.cList" -Encoding UTF8 -NoNewline

Remove-Item "권리속부.md"
<#
원본지움.
ㄴ그러나
ㄴ살짝
ㄴ위험할수있음.
ㄴ가끔
ㄴ오류나거나
ㄴ그럴까봐.
ㄴ조금무섭긴함.
그러면...
ㄴ못돌아옴.;;


#>