$sortedContent = Get-Content "test.md" -Encoding UTF8 |
Sort-Object
$sortedContent | Out-File "test.md"
