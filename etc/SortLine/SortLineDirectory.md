
# DirectoryLineSort
## CurrentDirectoryLineSort
- ```ps1
  $DirectoryPath = "." 
  Get-ChildItem -Path $DirectoryPath -File | 
  ForEach-Object {
      $FileName = $_.FullName
      Get-Content $FileName -Encoding UTF8 | 
      Sort-Object | 
      Set-Content $FileName -Encoding UTF8
  }
  ```
- ```ps1
  $DirectoryPath = $PWD.Path 
  Get-ChildItem -Path $DirectoryPath -File | 
  ForEach-Object {
      $FileName = $_.FullName
      Get-Content $FileName -Encoding UTF8 | 
      Sort-Object | 
      Set-Content $FileName -Encoding UTF8
  }
  ```

Path
- $PWD.Path
- Resolve-Path "." 
- Resolve-Path $PWD.Path
- Get-Location

Child
- Get-ChildItem "."          
- Get-ChildItem $PWD.Path



## TargetDirectoryLineSort
- ```ps1
  Get-ChildItem -Path "C:\github-nangmanhunter\test\test" | ForEach-Object {
      $FileName = $_.FullName
      Get-Content $FileName -Encoding UTF8 | 
      Sort-Object | 
      Set-Content $FileName -Encoding UTF8
  }
  ```
  - ✅File
  - ❌File + Directory
- ```ps1
  Get-ChildItem -Path "C:\github-nangmanhunter\test\test" -File | ForEach-Object {
      $FileName = $_.FullName
      Get-Content $FileName -Encoding UTF8 | 
      Sort-Object | 
      Set-Content $FileName -Encoding UTF8
  }
  ```
- ```ps1
  $FolderPath = "C:\github-nangmanhunter\test\test" 
  Get-ChildItem -Path $FolderPath -File | ForEach-Object {
      $FileName = $_.FullName
      Get-Content $FileName -Encoding UTF8 | 
      Sort-Object | 
      Set-Content $FileName -Encoding UTF8
  }
  ```
- ```ps1
  $FolderPath = "C:\github-nangmanhunter\test\test" 
  Get-ChildItem -Path $FolderPath -File | 
  ForEach-Object {
      $FileName = $_.FullName
      Get-Content $FileName -Encoding UTF8 | 
      Sort-Object | 
      Set-Content $FileName -Encoding UTF8
  }
  ```
- ```ps1
  $DirectoryPath = "C:\github-nangmanhunter\test\test" 
  Get-ChildItem -Path $DirectoryPath -File | 
  ForEach-Object {
      $FileName = $_.FullName
      Get-Content $FileName -Encoding UTF8 | 
      Sort-Object | 
      Set-Content $FileName -Encoding UTF8
  }
  ```


