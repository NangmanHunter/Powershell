function Get-TextLengthUntil {
    param(
        [string]$inputString,
        [string]$breakString
    )

    $enum = [System.Globalization.StringInfo]::GetTextElementEnumerator($inputString)
    $count = 0
    while ($enum.MoveNext()) {

        $char = $enum.Current
        if ($char -eq $breakString) {
            break
        }

        $count++
    }
    return $count
}


Get-TextLengthUntil "ㅁㅁ↔️ㅁㅁ" "↔️"
Get-TextLengthUntil "ㅁㅁㅁㅁ" "↔️"


<#

#>