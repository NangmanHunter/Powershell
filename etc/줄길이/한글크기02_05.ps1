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
    $_ -replace "↔️", "　↔️"

}
$Content | Set-Content "test.txt" -Encoding UTF8




<#

#>