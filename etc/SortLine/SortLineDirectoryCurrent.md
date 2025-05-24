# CurrentDirectoryLineSort
## .
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
## .Path
- ```ps1
  $DirectoryPath = $PWD.Path 
  Get-ChildItem -Path $DirectoryPath -File | 
  ForEach-Object {
      $FileName = $_.FullName
      Get-Content $FileName -Encoding UTF8 | 
      Sort-Object | 
      Set-Content $FileName -Encoding UTF8
  }

  <#
  $PWD.Path

  Get-ChildItem "."          
  Get-ChildItem $PWD.Path

  Resolve-Path "." 
  Get-Location
  #>
  ```
