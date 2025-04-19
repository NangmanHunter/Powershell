# 코드경량화실패
$fileContent = Get-Content "권리속부.md" -Encoding UTF8 -Raw
$fileContent = $fileContent.TrimEnd("`r", "`n")
$fileContent | Out-File -FilePath "권리속부.txt" -Encoding UTF8 
<#
ㄴ-NoNewline
ㄴ필수
#>