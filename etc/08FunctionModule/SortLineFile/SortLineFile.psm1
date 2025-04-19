function Sort-Line{
    param(
        [string]$Name
    )
    Get-Content $Name -Encoding UTF8 | 
    Sort-Object | 
    Set-Content $Name -Encoding UTF8
}



<#
cd ...
Sort-Line -Name test.md
#>