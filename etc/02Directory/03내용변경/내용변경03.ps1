$DirectoryPath = "." 
Get-ChildItem -Path $DirectoryPath -File | 
ForEach-Object {
    $FileName = $_.FullName
    $Content = Get-Content $FileName -Encoding UTF8
    $Content = $Content | ForEach-Object {
        $_ + ";"
    } 
    $Content | Set-Content $FileName -Encoding UTF8
}
