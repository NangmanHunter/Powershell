Get-ChildItem -File | ForEach-Object {
    Get-Content $_.FullName
} | Set-Content "합쳐진파일.txt"




Get-ChildItem -File | Where-Object { $_.Name -ne "합쳐진파일.txt" } | ForEach-Object {
    Get-Content $_.FullName
} | Set-Content "합쳐진파일.txt"
