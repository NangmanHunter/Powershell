$files = @(
    "파일1.txt", 
    "파일2.txt", 
    "파일3.txt"
)

foreach ($file in $files) {
    New-Item -Path $file -ItemType File
}
