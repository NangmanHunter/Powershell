Get-Content "test.txt" -Encoding UTF8 | ForEach-Object {
    $_
    $_.Length
    $_.Trim().Length

    $raw = $_
    $bytes = [System.Text.Encoding]::UTF8.GetBytes($raw)
    $bytes
    $bytes.Length
}

<#

#>