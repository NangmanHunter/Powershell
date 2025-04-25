$files = Get-ChildItem -File | Sort-Object Name
$index = 1

foreach ($file in $files) {
    $newName = "{0:D2}{1}" -f $index, $file.Name
    Rename-Item -Path $file.FullName -NewName $newName
    $index++
}

<#

#>


