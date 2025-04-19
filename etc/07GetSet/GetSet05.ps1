Get-Content test.md | Set-Content test2.md -Encoding UTF8

<#
단순타이핑->가능
복붙     ->불능
ㄴ복붙경우
ㄴ뒷라인에
ㄴ뭐가붙음.
ㄴ공백문자
ㄴ이게더붙어서
ㄴ아싸리
ㄴ망가짐.
ㄴㄹㅇ.
이게
ㄴUTF-8가면서
ㄴ공백문자
ㄴ같이물리면
ㄴ여기서
ㄴ삑싸리나고
ㄴ여기서
ㄴ오류나옴.!!!
결국
ㄴGet할때부터
ㄴEncoding안해주면
ㄴ리스크
ㄴ계속안고
ㄴ되는형태.
ㄴ그러나
ㄴ복붙형식
ㄴ혹은
ㄴ공백문자있는경우
ㄴ여기서
ㄴ싹다무너짐.
ㄴ싹다잘못긁어오고.
ㄴSet에
ㄴEncoding함에
ㄴ깨진대로
ㄴ설정됨.

결론
ㄴGet->Encoding ㄱㄱ.
ㄴSet->Encoding ㄱㄱ.
#>