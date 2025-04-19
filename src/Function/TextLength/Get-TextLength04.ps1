function Get-TextLength {
    param([string]$inputString)
    
    $enum = [System.Globalization.StringInfo]::GetTextElementEnumerator($inputString)
    $count = 0
    while ($enum.MoveNext()) {
        $count++
    }
    return $count
}

Get-TextLength "aㅁ😊"  


<#

#>