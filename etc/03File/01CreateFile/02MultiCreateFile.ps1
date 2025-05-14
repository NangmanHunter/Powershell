$files = @("파일이름1.txt", "파일이름2.txt", "파일이름3.txt")
$files | ForEach-Object { New-Item -Path $_ -ItemType File }


@("파일이름1.txt", "파일이름2.txt") | ForEach-Object { New-Item -Path $_ -ItemType File }


$files = @("파일1.txt", "파일2.txt", "파일3.txt")
foreach ($file in $files) {
    New-Item -Path $file -ItemType File
}


$files = @(
    "파일1.txt", 
    "파일2.txt", 
    "파일3.txt"
)
foreach ($file in $files) {
    New-Item -Path $file -ItemType File
}


$files = @(
"파일1.txt", 
"파일2.txt", 
"파일3.txt"
)
foreach ($file in $files) {
    New-Item -Path $file -ItemType File
}


$files = @(
"02데이터모델과SQL_01정규화.md",
"02데이터모델과SQL_02관계와조인의이해.md",
"02데이터모델과SQL_03모델이표현하는트랜잭션의이해.md",
"02데이터모델과SQL_04Null속성의이해.md",
"02데이터모델과SQL_05본질식별자vs인조식별자.md"
)
foreach ($file in $files) {
    New-Item -Path $file -ItemType File
}
