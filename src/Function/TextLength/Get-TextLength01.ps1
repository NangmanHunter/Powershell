$raw = "한글가각각힣"
$elements = [System.Globalization.StringInfo]::GetTextElementEnumerator($raw)

$count = 0
while ($elements.MoveNext()) {
    $count++
}
$count
