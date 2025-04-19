$FolderPath = "C:\github-nangmanhunter\test\test" 
Get-ChildItem -Path $FolderPath -File | ForEach-Object {
    $FileName = $_.FullName
    Get-Content $FileName -Encoding UTF8 | 
    Sort-Object | 
    Set-Content $FileName -Encoding UTF8
}
