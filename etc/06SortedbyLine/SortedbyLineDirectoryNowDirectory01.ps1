<#
Run Selection
- cd ...
- Select
- F8
#>


$DirectoryPath = "." 
Get-ChildItem -Path $DirectoryPath -File | 
ForEach-Object {
    $FileName = $_.FullName
    Get-Content $FileName -Encoding UTF8 | 
    Sort-Object | 
    Set-Content $FileName -Encoding UTF8
}


$DirectoryPath = $PWD.Path 
Get-ChildItem -Path $DirectoryPath -File | 
ForEach-Object {
    $FileName = $_.FullName
    Get-Content $FileName -Encoding UTF8 | 
    Sort-Object | 
    Set-Content $FileName -Encoding UTF8
}

