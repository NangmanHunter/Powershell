$DirectoryPath = "." 
Get-ChildItem -Path $DirectoryPath -File | 
ForEach-Object {
    $FileName = $_.FullName
    $TotalContent = Get-Content $FileName -Encoding UTF8
    $ModifiedCotent = $TotalContent | ForEach-Object {
        $_ + ";"
    } 
    $ModifiedCotent | Set-Content $FileName -Encoding UTF8
}
