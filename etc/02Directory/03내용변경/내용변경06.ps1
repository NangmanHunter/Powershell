$DirectoryPath = "." 
Get-ChildItem -Path $DirectoryPath -File | 
ForEach-Object {
    $FileName = $_.FullName
    $Content = Get-Content $FileName -Encoding UTF8
    $Content = $Content | Where-Object {
        $_.Trim() -ne ""
    } | ForEach-Object {
        $_.TrimEnd()
    } 
    $Content | Set-Content $FileName -Encoding UTF8
}

<#

#>