function SortLine{
    param(
        [string]$Name
    )
    Get-Content $Name -Encoding UTF8 | 
    Sort-Object | 
    Set-Content $Name -Encoding UTF8
}

Sort-Line -Name test.md


<#
기준정렬
#>