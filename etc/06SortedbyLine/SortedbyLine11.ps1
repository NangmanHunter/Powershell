$content = Get-Content "test.md" -Encoding UTF8
$sortedContent = $content | Sort-Object
$sortedContent | Out-File "test.md" -Encoding UTF8 -Force
