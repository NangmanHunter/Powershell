function Sort-Line{
    param(
        [string]$FileName
    )
    Get-Content $FileName -Encoding UTF8 | 
    Sort-Object | 
    Set-Content $FileName -Encoding UTF8
}

Sort-Line -FileName test.md


<#

#>