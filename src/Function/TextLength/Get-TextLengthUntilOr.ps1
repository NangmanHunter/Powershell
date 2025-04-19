function Get-TextLengthUntilOr {
    param(
        [string]$inputString,
        [string]$breakString
    )

    $enum = [System.Globalization.StringInfo]::GetTextElementEnumerator($inputString)
    $count = 0
    $foundArrow = $false
    while ($enum.MoveNext()) {

        $char = $enum.Current
        if ($char -eq $breakString) {
            $foundArrow = $true
            break
        }

        $count++
    }

    if (-not $foundArrow) {
        $count = 0
    }

    return $count
}


Get-TextLengthUntilOr "ㅁㅁ↔️ㅁㅁ" "↔️"
Get-TextLengthUntilOr "ㅁㅁㅁㅁ" "↔️"


<#

#>