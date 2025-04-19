$files = @("파일이름1.txt", "파일이름2.txt", "파일이름3.txt")

$files | ForEach-Object { New-Item -Path $_ -ItemType File }