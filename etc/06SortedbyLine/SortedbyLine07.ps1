Get-Content test.md -Encoding UTF8 | 
Sort-Object | 
Out-File "test.md"

<#
안먹음;;
ㄴ읽기쓰기
ㄴ동시에해서그럼.
ㄴSort-Object로
ㄴ정렬데이터를.
ㄴOut-File로
ㄴ넘어가야되는데.
넘어가기전
ㄴ혹은
ㄴSort-Object다끝나기전
ㄴOut-File실행되고
ㄴ당해데이터못읽어와
ㄴ공백으로
ㄴ덮어쓰임.
그결과
ㄴ공백으로나옴.

1해결책
ㄴ변수화
ㄴ변수담아서
ㄴㄱㄱ.
ㄴ다른영역할당해서
ㄴ우회형식ㄱㄱ.!!!
2해결책
ㄴSet이용
ㄴ이것됨.

#>