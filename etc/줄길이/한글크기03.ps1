$raw = "가나다"
$enum = [System.Globalization.StringInfo]::GetTextElementEnumerator($raw)

while ($enum.MoveNext()) {
    $enum.Current
}



<#
가
나
다
#>