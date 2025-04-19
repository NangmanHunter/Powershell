$AddNum = 1

Get-ChildItem -File | ForEach-Object {
    $nameWithoutExtension = [System.IO.Path]::GetFileNameWithoutExtension($_.Name)
    $extension = [System.IO.Path]::GetExtension($_.Name)

    $newName = $nameWithoutExtension + ("{0:D2}" -f $AddNum) + $extension

    Rename-Item -Path $_.FullName -NewName $newName

    $AddNum++
}

<#
뒷단형

#>

