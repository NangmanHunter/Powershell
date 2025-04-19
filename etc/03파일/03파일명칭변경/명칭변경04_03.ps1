$Name01='ㅁㅁ'
$Name02=''


Get-ChildItem -File | ForEach-Object {
    $newName = $_.Name -replace $Name01, $Name02
    Rename-Item -Path $_.FullName -NewName $newName
}


<#


#>

