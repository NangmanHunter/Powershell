# Remove
Get-Content 권리속부.md -Encoding UTF8 | ForEach-Object { $_ -replace "- ", "" } | Set-Content "output.cList" -Encoding UTF8
Remove-Item "권리속부.md"