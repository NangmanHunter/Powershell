$AddNum=1;
Get-ChildItem -File | ForEach-Object {
    $newName = $_.Name -replace $_.Name, (("{0:D2}" -f $AddNum) + $_.Name)
    Rename-Item -Path $_.FullName -NewName $newName
    $AddNum++;
}


<#


#>

