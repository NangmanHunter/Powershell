# 이것도성공
$fileContent = Get-Content "권리속부.md" -Encoding UTF8 -Raw
$fileContent = $fileContent.TrimEnd("`r", "`n")
$fileContent | Set-Content "권리속부.txt" -Encoding UTF8 -NoNewline
<#
그러나
ㄴ중간줄바꾸기ㄴㄴ.
ㄴ끝선만.
ㄴ애당초
ㄴ문자열로만
ㄴ받아옴.!!!
Raw가
ㄴ핵심이었음.
ㄴ배열경우.
ㄴSet
ㄴ무조건하면
ㄴ뒷라인에
ㄴ필히\n붙음.
ㄴ아마
ㄴ애당초
ㄴ초기세팅이
ㄴ배열원소별로
ㄴ그냥붙이는식으로가져가서그런듯.
ㄴRaw없을경우
ㄴ전부일렬.

#
Get-Content -> 배열
Raw -> 문자열
ㄴ편의-배열
ㄴ섬세-문자열

#
Set+배열  -> \n추가
Set+문자열-> 단순추가
#>
