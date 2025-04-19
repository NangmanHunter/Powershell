$targetPath = "C:\Users\YourName\Documents"

Get-ChildItem -Path $targetPath -Directory | ForEach-Object {
    $newName = $_.Name -replace "정리마인드", "마인드"
    if ($_.Name -ne $newName) {
        Rename-Item -Path $_.FullName -NewName $newName
    }
}