Get-Content test.md -Encoding UTF8 | 
Sort-Object | 
Set-Content "test1.md"

<#
Out-File   ▶Object
Set-Content▶text

Optimization
ㄴOut-File>>Set-Content
Set-Content
ㄴUTF-8 필요

그러나
ㄴ뒤에
ㄴ덮어쓰기에서는
ㄴ비최적.
ㄴOut-File
ㄴ동시처리불능.

#> 