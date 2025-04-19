Get-Content "test.txt" | ForEach-Object {
    $_
    $_.Length

    $raw = $_
    $length = $raw.Length
    $bytes = [System.Text.Encoding]::UTF8.GetBytes($raw)
    $bytes.Length
}

<#
a      -> legnth:1 byte:1
aa     -> legnth:2 byte:2
aaa    -> legnth:3 byte:3
aaaa   -> legnth:4 byte:4
aaaaa  -> legnth:5 byte:5

ㅁ　　　　 -> legnth:2 byte:2
ㅁㅁ　　　 -> legnth:3 byte:7
ㅁㅁㅁ　　 -> legnth:5 byte:9
ㅁㅁㅁㅁ　 -> legnth:6 byte:14
ㅁㅁㅁㅁㅁ -> legnth:7 byte:15


$_   -> $_
"$_" -> "$($_)"


$_ -> Write-Output $_
$_ -> Write-Host $_
#>