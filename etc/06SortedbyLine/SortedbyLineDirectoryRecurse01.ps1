$DirectoryPath = "C:\github-nangmanhunter\test\test" 
Get-ChildItem -Path $DirectoryPath -File -Recurse | 
ForEach-Object {
    $FileName = $_.FullName
    Get-Content $FileName -Encoding UTF8 | 
    Sort-Object | 
    Set-Content $FileName -Encoding UTF8
}

<#
용어
ㄴ일원화.
ㄴDirectory>>Folder
ㄴ걍통일화.
ㄴ최적화위해
ㄴㄱㄱ.
#>