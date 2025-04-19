# 코드경량화-실패
Get-Content 권리속부.md -Encoding UTF8 
| ForEach-Object { $_.TrimEnd() -replace "- ", "" } 
| Set-Content "권리속부.cList" -Encoding UTF8 

$fileContent = Get-Content "권리속부.cList" -Encoding UTF8 -Raw
$fileContent = $fileContent.TrimEnd("`r", "`n")
$fileContent | Set-Content "권리속부.cList" -Encoding UTF8 -NoNewline

<#
ㅣ
ㄴ파이프라인
ㄴ명령어입력전달.
ㄴ맨끝가능.
ㄴ맨앞오류.
앞단에
ㄴ줄바꿈있으면
ㄴ오류남.!!!
걍
ㄴ세팅이
ㄴ이렇게되니
ㄴ이지경까지온것.
#>