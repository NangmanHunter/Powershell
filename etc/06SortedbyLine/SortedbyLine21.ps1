function SortLine{
    param(
        [string]$Name
    )
    Get-Content $Name -Encoding UTF8 | 
    Sort-Object { $_.TrimEnd(';') } | 
    Set-Content $Name -Encoding UTF8
}

Sort-Line -Name test.md


<#
기준정렬
#>