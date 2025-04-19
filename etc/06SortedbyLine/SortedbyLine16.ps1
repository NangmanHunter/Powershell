function Sort-Line{
    $FileName = "test.md"
    Get-Content $FileName -Encoding UTF8 | 
    Sort-Object | 
    Set-Content $FileName -Encoding UTF8
}

Sort-Line


<#
Sort-...
ㄴ아...
ㄴSort-Object
ㄴ아니면
ㄴ밑줄로처리해주는듯.!!!
아니다.
ㄴ걍
ㄴSort-Line
ㄴㄱㄱ.
ㄴ변수명
ㄴ함수명일뿐.
ㄴ활용ㄱㄱ.!!!
#>