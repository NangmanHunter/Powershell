function Sort-Line{
    param(
        [string]$Name
    )
    Get-Content $Name -Encoding UTF8 | 
    Sort-Object { [int]($_ -replace "\D") } | 
    Set-Content $Name -Encoding UTF8
}

Sort-Line -Name test.md


<#
숫자정렬
ㄴ1 10 2
ㄴ1 2 10
근데...;;
ㄴ문자랑있을때는
ㄴ당해활용
ㄴ불능인듯.;;
서식1
별표1
서식2
별표2
ㄴ숫자만을
ㄴ기준으로
ㄴ정렬함.;;
ㄴ아...


흠...
ㄴ1 10 2
ㄴ1 2 10
ㄴ당해정렬.
ㄴ이거
ㄴ너무어려운데.;;
ㄴㅇㄴ.
ㄴ나중에보완ㄱㄱ.
ㄴ현행은
ㄴ불능.;;
일단
ㄴ할수있는것부터
ㄴㄱㄱ.
#>