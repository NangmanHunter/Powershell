<#
.SYNOPSIS
  HelloWorld 스크립트입니다.

.DESCRIPTION
  이 스크립트는 Hello World를 출력합니다.
#>

<#
.SYNOPSIS
Test
.NOTES
Run Selection
- cd ...
- Select
- F8

Enter
- 03Space
#>


Get-Content 권리속부.md
<#
읽기

깨짐
ㄴUTF8
ㄴ세팅필요.
ㄴ없으니
ㄴ읽다가
ㄴ싹다깨짐.!!!
기본세팅
ㄴ윈도우세팅
ㄴ여기간다함.
ㄴ여기가
ㄴCP949
ㄴ이세팅이라함.
근데
ㄴ이것건들기
ㄴ좀그럼.
ㄴ전체적인
ㄴ싹다
ㄴ윈도우지원
ㄴ세팅이라.
ㄴ다깨지든
ㄴ다무너지는형태.
ㄴOS자체
ㄴ미지원형태로
ㄴ바꾸다가
ㄴ비최적화
ㄴ일어날듯.
일단
ㄴUTF8
ㄴ넣는식으로ㄱㄱ.
나중에
ㄴ아싸리
ㄴ싹
ㄴ더뺄수있음.
ㄴㄱㄱ.!!!
#> 



Get-Content 권리속부.md -Encoding UTF8 
<#
깨짐방지
-Encoding UTF8
ㄴ인코딩깨짐
ㄴ불편-프로필설정시도
#>



Get-Content 권리속부.md -Encoding UTF8 | ForEach-Object { $_ -replace "- ", ""} | Set-Content output.txt -Encoding UTF8
<#
UTF8 x2
ㄴGet-Set
ㄴ둘다UTF8
ㄴForEach-줄단위
#>



Get-Content 권리속부.md -Encoding UTF8 | ForEach-Object { $_ -replace "- ", ""} | Set-Content output.sList -Encoding UTF8
# sList



Get-Content 권리속부.md -Encoding UTF8 | ForEach-Object { $_ -replace "- ", "" } | Set-Content "output.cList" -Encoding UTF8
Remove-Item "권리속부.md"
# Remove



Get-Content 권리속부.md -Encoding UTF8 | ForEach-Object { $_ -replace "- ", "" } | Set-Content "권리속부.cList" -Encoding UTF8
Remove-Item "권리속부.md"
# 권리속부







Get-Content 권리속부.md -Encoding UTF8 | ForEach-Object { $_.TrimEnd() -replace "- ", "" } | Set-Content "권리속부.cList" -Encoding UTF8
Remove-Item "권리속부.md"
<#
# Trim
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



$content = Get-Content 권리속부.md -Encoding UTF8 | ForEach-Object { $_.TrimEnd() -replace "- ", "" }
Set-Content "권리속부.cList" -Value ($content -join "`r`n") -Encoding UTF8
# 맨끝줄바꿈잡기-실패01
<#
Set
ㄴ쓰는순간-마지막-\n형태줄바꿈들어감.
ㄴ마무리를
ㄴ그렇게세팅했나봄.;;
#>



Get-Content 권리속부.md -Encoding UTF8 | ForEach-Object { $_.TrimEnd() -replace "- ", "" } | Set-Content "권리속부.cList" -Encoding UTF8 -NoNewline
Get-Content 권리속부.cList -Encoding UTF8 | Set-Content "권리속부01.cList" -Encoding UTF8
Remove-Item "권리속부.md"
# 맨끝줄바꿈잡기-실패02
<#
ㄴ배열+NoNewLine -> 개별요소일렬 -> 전부일렬
#>



$fileContent = Get-Content "권리속부.md" -Encoding UTF8 -Raw
$fileContent = $fileContent.TrimEnd("`r", "`n")
Set-Content -Path "권리속부.txt" -Value $fileContent -Encoding UTF8
# 맨끝줄바꿈잡기-실패03



$fileContent = Get-Content "권리속부.md" -Encoding UTF8 -Raw
$fileContent = $fileContent.TrimEnd("`r", "`n")
$fileContent | Out-File -FilePath "권리속부.txt" -Encoding UTF8 -NoNewline
# 줄바꿈성공



$fileContent = Get-Content "권리속부.md" -Encoding UTF8 -Raw
$fileContent = $fileContent.TrimEnd("`r", "`n")
$fileContent | Out-File -FilePath "권리속부.txt" -Encoding UTF8 
# 코드경량화실패
<#
ㄴ-NoNewline
ㄴ필수
#>



$fileContent = Get-Content "권리속부.md" -Encoding UTF8 -Raw
$fileContent = $fileContent.TrimEnd("`r", "`n")
$fileContent | Set-Content "권리속부.txt" -Encoding UTF8 -NoNewline
# 이것도성공
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


Get-Content 권리속부.md -Encoding UTF8 | ForEach-Object { $_.TrimEnd() -replace "- ", "" } | Set-Content "권리속부.cList" -Encoding UTF8 

$fileContent = Get-Content "권리속부.cList" -Encoding UTF8 -Raw
$fileContent = $fileContent.TrimEnd("`r", "`n")
$fileContent | Set-Content "권리속부.txt" -Encoding UTF8 -NoNewline
# 개별줄바꾸기+전체줄바꾸기



Get-Content 권리속부.md -Encoding UTF8 | ForEach-Object { $_.TrimEnd() -replace "- ", "" } | Set-Content "권리속부.cList" -Encoding UTF8 

$fileContent = Get-Content "권리속부.cList" -Encoding UTF8 -Raw
$fileContent = $fileContent.TrimEnd("`r", "`n")
$fileContent | Set-Content "권리속부.cList" -Encoding UTF8 -NoNewline
# 파일줄이기



Get-Content 권리속부.md -Encoding UTF8 | 
ForEach-Object { $_.TrimEnd() -replace "- ", "" } | 
Set-Content "권리속부.cList" -Encoding UTF8 

$fileContent = Get-Content "권리속부.cList" -Encoding UTF8 -Raw
$fileContent = $fileContent.TrimEnd("`r", "`n")
$fileContent | Set-Content "권리속부.cList" -Encoding UTF8 -NoNewline
# 코드경량화-실패
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



Get-Content 권리속부.md -Encoding UTF8 | 
ForEach-Object { $_.TrimEnd() -replace "- ", "" } | 
Set-Content "권리속부.cList" -Encoding UTF8 

$fileContent = Get-Content "권리속부.cList" -Encoding UTF8 -Raw
$fileContent = $fileContent.TrimEnd("`r", "`n")
$fileContent | Set-Content "권리속부.cList" -Encoding UTF8 -NoNewline
# 코드경량화-가독화



$fileContent = Get-Content 권리속부.md -Encoding UTF8 |
ForEach-Object { $_.TrimEnd() -replace "- ", "" } 
$fileContent | Set-Content "권리속부.cList" -Encoding UTF8 

$fileContent = Get-Content "권리속부.cList" -Encoding UTF8 -Raw
$fileContent = $fileContent.TrimEnd("`r", "`n")
$fileContent | Set-Content "권리속부.cList" -Encoding UTF8 -NoNewline
# 코드일원화



$fileContent = Get-Content 권리속부.md -Encoding UTF8 |
ForEach-Object { $_.TrimEnd() -replace "- ", "" } 
$fileContent | Set-Content "권리속부.cList" -Encoding UTF8 

$fileContent = Get-Content "권리속부.cList" -Encoding UTF8 -Raw
$fileContent = $fileContent.TrimEnd("`r", "`n")
$fileContent | Set-Content "권리속부.cList" -Encoding UTF8 -NoNewline
# 코드가독화



$fileContent = Get-Content 권리속부.md -Encoding UTF8 
$fileContent | ForEach-Object { $_.TrimEnd() -replace "- ", "" } 
$fileContent | Set-Content "권리속부.cList" -Encoding UTF8 

$fileContent = Get-Content "권리속부.cList" -Encoding UTF8 -Raw
$fileContent = $fileContent.TrimEnd("`r", "`n")
$fileContent | Set-Content "권리속부.cList" -Encoding UTF8 -NoNewline
# 코드가독화-실패
<#
replace부분이
ㄴfileContent에
ㄴ안담김.!!!
#>



$fileContent = Get-Content 권리속부.md -Encoding UTF8 
$fileContent = $fileContent | ForEach-Object { $_.TrimEnd() -replace "- ", "" } 
$fileContent | Set-Content "권리속부.cList" -Encoding UTF8 

$fileContent = Get-Content "권리속부.cList" -Encoding UTF8 -Raw
$fileContent = $fileContent.TrimEnd("`r", "`n")
$fileContent | Set-Content "권리속부.cList" -Encoding UTF8 -NoNewline
# 코드가독화
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



$fileContent = Get-Content 권리속부.md -Encoding UTF8 
$fileContent = $fileContent.ForEach({ $_.TrimEnd() -replace "- ", "" })
$fileContent | Set-Content "권리속부.cList" -Encoding UTF8 

$fileContent = Get-Content "권리속부.cList" -Encoding UTF8 -Raw
$fileContent = $fileContent.TrimEnd("`r", "`n")
$fileContent | Set-Content "권리속부.cList" -Encoding UTF8 -NoNewline
# 코드가독화
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



$fileContent = Get-Content 권리속부.md -Encoding UTF8 
$fileContent = $fileContent.ForEach({ $_.TrimEnd() -replace "- ", "" })
$fileContent | Set-Content "권리속부.cList" -Encoding UTF8 

$fileContent = Get-Content "권리속부.cList" -Encoding UTF8 -Raw
$fileContent = $fileContent.TrimEnd("`r", "`n")
$fileContent | Set-Content "권리속부.cList" -Encoding UTF8 -NoNewline

Remove-Item "권리속부.md"
# 파일최적화
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
