function Get-TextLengthUntil {
    param([string]$inputString)
    $enum = [System.Globalization.StringInfo]::GetTextElementEnumerator($inputString)
    $count = 0
    while ($enum.MoveNext()) {

        $char = $enum.Current
        if ($char -eq "↔️") {
            break
        }

        $count++
    }
    return $count
}


Get-TextLengthUntil "ㅁㅁ↔️ㅁㅁ"


<#

#>