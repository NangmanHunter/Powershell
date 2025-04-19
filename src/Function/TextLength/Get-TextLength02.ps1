$raw = "↔️👉"
$raw.length
$elements = [System.Globalization.StringInfo]::GetTextElementEnumerator($raw)

$count = 0
while ($elements.MoveNext()) {
    $count++
}
$count


<#
Emoji
- .length     -> 2
- .MoveNext() -> 1
#>