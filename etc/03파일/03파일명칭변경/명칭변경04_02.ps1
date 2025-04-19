$Name1='ㅁㅁ'
$Name2=''


Get-ChildItem -File | ForEach-Object {
    $newName = $_.Name -replace $Name1, $Name2
    Rename-Item -Path $_.FullName -NewName $newName
}


<#


#>

