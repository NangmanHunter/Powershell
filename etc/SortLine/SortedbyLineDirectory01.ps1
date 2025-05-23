<#
Run Selection
- cd ...
- Select
- F8
#>


Get-ChildItem -Path "C:\github-nangmanhunter\test\test" | ForEach-Object {
    $FileName = $_.FullName
    Get-Content $FileName -Encoding UTF8 | 
    Sort-Object | 
    Set-Content $FileName -Encoding UTF8
}
<#
Directory부분
ㄴ오류.
ㄴ그러나
ㄴ하위
ㄴFolder는
ㄴ싹다됨.

그럼에도
ㄴ무결성위해
ㄴ좀더
ㄴ정교하게위해
ㄴ한정ㄱㄱ.
ㄴ-File
ㄴㄱㄱ.
#>


Get-ChildItem -Path "C:\github-nangmanhunter\test\test" -File | ForEach-Object {
    $FileName = $_.FullName
    Get-Content $FileName -Encoding UTF8 | 
    Sort-Object | 
    Set-Content $FileName -Encoding UTF8
}


$FolderPath = "C:\github-nangmanhunter\test\test" 
Get-ChildItem -Path $FolderPath -File | ForEach-Object {
    $FileName = $_.FullName
    Get-Content $FileName -Encoding UTF8 | 
    Sort-Object | 
    Set-Content $FileName -Encoding UTF8
}


$FolderPath = "C:\github-nangmanhunter\test\test" 
Get-ChildItem -Path $FolderPath -File | 
ForEach-Object {
    $FileName = $_.FullName
    Get-Content $FileName -Encoding UTF8 | 
    Sort-Object | 
    Set-Content $FileName -Encoding UTF8
}


$DirectoryPath = "C:\github-nangmanhunter\test\test" 
Get-ChildItem -Path $DirectoryPath -File | 
ForEach-Object {
    $FileName = $_.FullName
    Get-Content $FileName -Encoding UTF8 | 
    Sort-Object | 
    Set-Content $FileName -Encoding UTF8
}
<#
Directory
- Folder ▶️ Directory
- Directory>>Folder
#>