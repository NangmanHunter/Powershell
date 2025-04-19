# 코드가독화
$fileContent = Get-Content 권리속부.md -Encoding UTF8 
$fileContent = $fileContent.ForEach({ $_.TrimEnd() -replace "- ", "" })
$fileContent | Set-Content "권리속부.cList" -Encoding UTF8 

$fileContent = Get-Content "권리속부.cList" -Encoding UTF8 -Raw
$fileContent = $fileContent.TrimEnd("`r", "`n")
$fileContent | Set-Content "권리속부.cList" -Encoding UTF8 -NoNewline
<#
.forEach()
ㄴpowerShell-cmdlet
ㄴ여기에안보임.
반면
ㄴ.NET
ㄴ여기서따왔다함.
ㄴPowerShell자체가
ㄴ.NET-Framework위에
ㄴ작성됐다함.
그래서
ㄴ당해
ㄴ메소드들도
ㄴ그냥
ㄴ쭉쭉
ㄴ가져온다함.

#>