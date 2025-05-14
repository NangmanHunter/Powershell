$files = Get-ChildItem -File
$index = 1
foreach ($file in $files) {
    $oldName = $file.Name
    $newPrefix = "{0:D2}" -f $index
    $nameWithoutPrefix = $oldName

    # 앞에 두 자리 숫자 있으면 제거
    if ($oldName -match '^\d{2}(.*)') {
        $nameWithoutPrefix = $matches[1]
    }

    $newName = $newPrefix + $nameWithoutPrefix

    Rename-Item -Path $file.FullName -NewName $newName
    $index++
}
