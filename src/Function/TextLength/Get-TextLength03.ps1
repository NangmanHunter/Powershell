function Get-TextLength {
    $inputString = "aㅁ😊"
    
    $enum = [System.Globalization.StringInfo]::GetTextElementEnumerator($inputString)
    $count = 0
    while ($enum.MoveNext()) {
        $count++
    }
    return $count
}

Get-TextLength   


<#
- $input       -> 예약어⭕ -> 충돌가능-사용불능 -> Get-Content & Get-TextLength 사용❌
- $inputString -> 예약어❌ -> 충돌불능-사용가능 -> Get-Content & Get-TextLength 사용⭕ 
#>