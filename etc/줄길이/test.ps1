# Import-Module Get-TextLength
# Get-TextLength "aaㅁ"

# [Console]::OutputEncoding = [System.Text.UTF8Encoding]::new()
# [Console]::InputEncoding = [System.Text.UTF8Encoding]::new()


function Get-TextLength {
    param([string]$inputString)

    $enum = [System.Globalization.StringInfo]::GetTextElementEnumerator($inputString)
    $count = 0
    while ($enum.MoveNext()) {
        $count++
    }
    return $count
}

Get-TextLength "aa ㄱ"


<#
ㅁ" -> 한글자로 인식해버림 -> 없음 -> ??반환
ㄱ" -> 한글자로 인식해버림 -> 없음 -> ??반환


#>