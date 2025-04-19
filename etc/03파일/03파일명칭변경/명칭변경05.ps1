$AddName=''


Get-ChildItem -File | ForEach-Object {
    $newName = $_.Name -replace $_.Name, ($AddName+$_.Name)
    Rename-Item -Path $_.FullName -NewName $newName
}


<#
첨가형

#>

