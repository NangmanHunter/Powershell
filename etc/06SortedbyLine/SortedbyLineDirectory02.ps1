Get-ChildItem -Path "C:\github-nangmanhunter\test\test" -File | ForEach-Object {
    $FileName = $_.FullName
    Get-Content $FileName -Encoding UTF8 | 
    Sort-Object | 
    Set-Content $FileName -Encoding UTF8
}
