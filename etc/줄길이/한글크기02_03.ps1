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
    
    $_
    $length=Get-TextLength $_
    if($length -ge $maxLength ){
        $maxLength = $length
    }
}
$maxLength

<#
>=  👉 ❌
-ge 👉 ⭕
#>