# UpdateDirectory
## ChildUpdateDirectory
Update
- ```ps1
  Get-ChildItem -Directory | ForEach-Object {
      $newName = $_.Name -replace "📁01Folder", "💼02Folder"
      if ($_.Name -ne $newName) {
          Rename-Item -Path $_.FullName -NewName $newName
      }
  }
  ```
- ```ps1
  Get-ChildItem -Directory | 
  ForEach-Object {
      $newName = $_.Name -replace "📁01Folder", "💼02Folder"
      if ($_.Name -ne $newName) {
          Rename-Item -Path $_.FullName -NewName $newName
      }
  }
  ```

DeleteUpdate  
- ```ps1
  Get-ChildItem -Directory | ForEach-Object {
      $newName = $_.Name -replace "마인드", ""
      if ($_.Name -ne $newName) {
          Rename-Item -Path $_.FullName -NewName $newName
      }
  }
  ```


## RecursiveUpdateDirectory
Update
- ```ps1
  Get-ChildItem -Directory -Recurse | 
  ForEach-Object {
      $newName = $_.Name -replace "01동어", "01SynOnym"
      if ($_.Name -ne $newName) {
          Rename-Item -Path $_.FullName -NewName $newName
      }
  }
  ```
- ```ps1
  Get-ChildItem -Directory -Recurse | 
  ForEach-Object {
      $newName = $_.Name -replace "02반어", "02AntOnym"
      if ($_.Name -ne $newName) {
          Rename-Item -Path $_.FullName -NewName $newName
      }
  }
  ```
- ```ps1
  Get-ChildItem -Directory -Recurse | 
  ForEach-Object {
      $newName = $_.Name -replace "03위계어", "02HypOnym"
      if ($_.Name -ne $newName) {
          Rename-Item -Path $_.FullName -NewName $newName
      }
  }
  ```
- ```ps1
  Get-ChildItem -Directory -Recurse | 
  ForEach-Object {
      $newName = $_.Name -replace "03위계", "02HypOnym"
      if ($_.Name -ne $newName) {
          Rename-Item -Path $_.FullName -NewName $newName
      }
  }
  ```

DeleteUpdate
- ```ps1
  Get-ChildItem -Directory -Recurse | 
  ForEach-Object {
      $newName = $_.Name -replace "마인드", ""
      if ($_.Name -ne $newName) {
          Rename-Item -Path $_.FullName -NewName $newName
      }
  }
  ```



## PathUpdateDirectory
- ```ps1
  $targetPath = "C:\Users\YourName\Documents"
  Get-ChildItem -Path $targetPath -Directory | ForEach-Object {
      $newName = $_.Name -replace "📁01Folder", "💼02Folder"
      if ($_.Name -ne $newName) {
          Rename-Item -Path $_.FullName -NewName $newName
      }
  } 
  ```
- ```ps1
  $targetPath = "C:\Users\YourName\Documents"
  Get-ChildItem -Path $targetPath -Directory | 
  ForEach-Object {
      $newName = $_.Name -replace "📁01Folder", "💼02Folder"
      if ($_.Name -ne $newName) {
          Rename-Item -Path $_.FullName -NewName $newName
      }
  }
  ```


Alias
- TargetPathUpdateDirectory
- TargetUpdateDirectory
- PathUpdateDirectory


