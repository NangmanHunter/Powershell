$DirectoryPath = "C:\github-nangmanhunter\test\test" 
Get-ChildItem -Path $DirectoryPath -File -Recurse | 
Where-Object {
    $_.Name -eq "test.txt"
} |
ForEach-Object {
    $FileName = $_.FullName
    Get-Content $FileName -Encoding UTF8 | 
    Sort-Object | 
    Set-Content $FileName -Encoding UTF8
}
<#

#>