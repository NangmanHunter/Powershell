$DirectoryPath = "." 
Get-ChildItem -Path $DirectoryPath -File | 
ForEach-Object {
    $FileName = $_.FullName
    $ModifiedLines = Get-Content $FileName -Encoding UTF8 | ForEach-Object {
        $_ + ";"
    }
    $ModifiedLines | Set-Content $FileName -Encoding UTF8
}
