@("파일이름1.txt", "파일이름2.txt") | ForEach-Object { New-Item -Path $_ -ItemType File }
