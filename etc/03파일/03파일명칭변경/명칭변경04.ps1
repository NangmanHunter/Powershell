$OriginName='ㅁㅁ'
$UpdateName=''


Get-ChildItem -File | ForEach-Object {
    $newName = $_.Name -replace $OriginName, $UpdateName
    Rename-Item -Path $_.FullName -NewName $newName
}


<#


#>

