function Get-TextLength {
    param([string]$inputString)
    $enum = [System.Globalization.StringInfo]::GetTextElementEnumerator($inputString)
    $count = 0
    while ($enum.MoveNext()) {
        $count++
    }
    return $count
}




$maxLength=0
Get-Content "test.txt" -Encoding UTF8 | ForEach-Object {
    
    $length = Get-TextLength $_
    if($length -ge $maxLength ){
        $maxLength = $length
    }
}



$Content = Get-Content "test.txt" -Encoding UTF8
$Content = $Content | ForEach-Object {

    $length = Get-TextLength $_
    $squareLength = $maxLength-$length
    Write-Host $squareLength
    $_ -replace "↔️", "$(("　" * ($squareLength/2)))↔️"

}
$Content | Set-Content "test.txt" -Encoding UTF8




<#
대칭일경우만활용.
ㄴ비최적.

- ㅁㅁㅁ↔️ㅁㅁㅁ
- ㅁㅁ↔️ㅁㅁ
ㄴ이런식경우만
ㄴ활용가능.


- ㅁㅁㅁ↔️ㅁㅁㅁ
- ㅁㅁ↔️ㅁㅁㅁ
ㄴ이런경우
ㄴ대응불능
- ㅁㅁㅁ↔️ㅁㅁㅁㅁ
- ㅁㅁ↔️ㅁㅁㅁ
ㄴ이런경우
ㄴ대응불능

기준설정
ㄴ↔️
ㄴ앞단
ㄴ최초한정
ㄴ자수기준ㄱㄱ.


#>