function TestName{
    param(
        [string]$Name
    )

    return "$Name Test!"
}




<#
- Export-ModuleMember -Function TestName -> ⭕
- ㆍ                                     -> ⭕
#>