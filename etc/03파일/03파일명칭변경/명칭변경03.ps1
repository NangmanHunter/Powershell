Get-ChildItem -File | ForEach-Object {
    $newName = $_.Name -replace 'ㅁㅁ', ''
    Rename-Item -Path $_.FullName -NewName $newName
}


<#


#>

