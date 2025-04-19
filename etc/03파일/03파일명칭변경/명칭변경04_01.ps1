$BeforeName='ㅁㅁ'
$AfterName=''


Get-ChildItem -File | ForEach-Object {
    $newName = $_.Name -replace $BeforeName, $AfterName
    Rename-Item -Path $_.FullName -NewName $newName
}


<#


#>

