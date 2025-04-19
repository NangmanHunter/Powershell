Get-Content "test.txt" | ForEach-Object {
    Write-Output $_
    Write-Output $_.Length
    
    $raw = $_
    $length = $raw.Length
    $bytes = [System.Text.Encoding]::UTF8.GetBytes($raw)
    "$raw => Length: $length, Bytes: $($bytes.Length)"
}

<#

#>