$AddNum    = 1
$UpdateName='test'


Get-ChildItem -File | ForEach-Object {
    $nameWithoutExtension = [System.IO.Path]::GetFileNameWithoutExtension($_.Name)
    $extension = [System.IO.Path]::GetExtension($_.Name)

    $newName = $UpdateName + ("{0:D2}" -f $AddNum) + $extension

    Rename-Item -Path $_.FullName -NewName $newName

    $AddNum++
}

<#
연속형+교환형

#>

