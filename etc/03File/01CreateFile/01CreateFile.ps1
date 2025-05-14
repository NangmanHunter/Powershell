New-Item -Path "파일이름.txt" -ItemType File


"" | Out-File "파일이름.txt"


Set-Content -Path "파일이름.txt" -Value ""


fsutil file createnew "파일이름.txt" 0
