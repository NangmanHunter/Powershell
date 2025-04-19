function SortLine{
    $FileName = "test.md"
    Get-Content $FileName -Encoding UTF8 | 
    Sort-Object | 
    Set-Content $FileName -Encoding UTF8
}

SortLine



<#
Sort-Object
ㄴ등등
ㄴcmdlet
ㄴ여기서
ㄴ지원해주는것
ㄴ아니면
ㄴ경고색
ㄴ띄워주는것.!!!
결국
ㄴ표준목록
ㄴ여기에
ㄴ잡혀있으면ㅇㅋ.
ㄴ그아니면
ㄴㄴㄴ.
그렇다면
ㄴ커스텀해서
ㄴ확장성가능.
ㄴ충분히가능.ㄱㄱ.!!!


Sort-Object
ㄴ등등
ㄴcmdlet
ㄴ여기서
ㄴ지원해주는것
ㄴ아니면
ㄴ경고색
ㄴ띄워주는것.!!!
결국
ㄴ표준목록
ㄴ여기에
ㄴ잡혀있으면ㅇㅋ.
ㄴ그아니면
ㄴㄴㄴ.
그렇다면
ㄴ커스텀해서
ㄴ확장성가능.
ㄴ충분히가능.ㄱㄱ.!!!

#>


