# sList
Get-Content 권리속부.md -Encoding UTF8 | ForEach-Object { $_ -replace "- ", ""} | Set-Content output.sList -Encoding UTF8
