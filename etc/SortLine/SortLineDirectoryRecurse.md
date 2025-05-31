# RecurseDirectoryLineSort
Alias
- Recurse
## CurrentRecurse
- ```ps1
  $DirectoryPath = "C:\github-nangmanhunter\test\test" 
  Get-ChildItem -Path $DirectoryPath -File -Recurse | 
  ForEach-Object {
      $FileName = $_.FullName
      Get-Content $FileName -Encoding UTF8 | 
      Sort-Object | 
      Set-Content $FileName -Encoding UTF8
  }
  ```


## TargetRecurse
- ```ps1
  $RootPath = "C:\github-nangmanhunter\test"

  Get-ChildItem -Path $RootPath -Directory -Recurse | Where-Object {
      $_.Name -eq "test"
  } | ForEach-Object {
      Get-ChildItem -Path $_.FullName -File | ForEach-Object {
          $FileName = $_.FullName
          Get-Content $FileName -Encoding UTF8 |
          Sort-Object |
          Set-Content $FileName -Encoding UTF8
      }
  }
  ```
- ```ps1
  $RootPath = "C:\github-nangmanhunter\test"

  Get-ChildItem -Path $RootPath -Directory -Recurse | Where-Object {
      $_.Name -in @("test", "test2")
  } | ForEach-Object {
      Get-ChildItem -Path $_.FullName -File | ForEach-Object {
          $FileName = $_.FullName
          Get-Content $FileName -Encoding UTF8 |
          Sort-Object |
          Set-Content $FileName -Encoding UTF8
      }
  }
  <#
  Where-Object { $_.Name -eq "test" -or $_.Name -eq "test2" }
  Where-Object { $_.Name -in @("test", "test2") }
  Where-Object { @("test", "test2") -contains $_.Name }
  Where-Object { $_.Name -match '^test(2)?$' }
  #>
  ```
- ```ps1
  $RootPath = "."
  Get-ChildItem -Path $RootPath -Directory -Recurse | Where-Object {
      $_.Name -in @("test", "test2")
  } | ForEach-Object {
      Get-ChildItem -Path $_.FullName -File | ForEach-Object {
          $FileName = $_.FullName
          Get-Content $FileName -Encoding UTF8 |
          Sort-Object |
          Set-Content $FileName -Encoding UTF8
      }
  }
  ```


```
📁.
 └📁...
 └📁01SynOnym
 └📁02AntOnym 
```
- ```ps1
  $RootPath = "."
  Get-ChildItem -Path $RootPath -Directory -Recurse | Where-Object {
      $_.Name -in @("01SynOnym", "02AntOnym")
  } | ForEach-Object {
      Get-ChildItem -Path $_.FullName -File | ForEach-Object {
          $FileName = $_.FullName
          Get-Content $FileName -Encoding UTF8 |
          Sort-Object |
          Set-Content $FileName -Encoding UTF8
      }
  }
  ```
- ```ps1
  $RootPath = "."
  Get-ChildItem -Path $RootPath -Directory -Recurse | Where-Object {
      $_.Name -in @("01SynOnym", "02AntOnym", "Glossary")
  } | ForEach-Object {
      Get-ChildItem -Path $_.FullName -File | ForEach-Object {
          $FileName = $_.FullName
          Get-Content $FileName -Encoding UTF8 |
          Sort-Object |
          Set-Content $FileName -Encoding UTF8
      }
  }
  ```


Pattern  
- ```ps1
  $RootPath = "C:\github-nangmanhunter\test"

  Get-ChildItem -Path $RootPath -Directory -Recurse | Where-Object {
      $_.Name -like "test*"
  } | ForEach-Object {
      Get-ChildItem -Path $_.FullName -File | ForEach-Object {
          $FileName = $_.FullName
          Get-Content $FileName -Encoding UTF8 |
          Sort-Object |
          Set-Content $FileName -Encoding UTF8
      }
  }
  <#
  Ex.
  - test, test123, test-something ...
  #>
  ```
- ```ps1
  $RootPath = "C:\github-nangmanhunter\test"

  Get-ChildItem -Path $RootPath -File -Recurse | 
  Where-Object {
      $_.DirectoryName -match '\\target(\\|$)'
  } |
  ForEach-Object {
      $FileName = $_.FullName
      Get-Content $FileName -Encoding UTF8 |
      Sort-Object |
      Set-Content $FileName -Encoding UTF8
  }
  <#
  좀위험
  ㄴ중간에
  ㄴ\test ... \test
  ㄴ경우
  ㄴ잡히기에
  ㄴ싹다걸림.
  즉,
  ㄴ최상위폴더
  ㄴ하위만잡히는것아닌.
  ㄴ최상위폴더까지
  ㄴ잡히기에.
  ㄴ제어불측가능성높아짐.
  ㄴ최적화위해
  ㄴ지양ㄱㄱ.
  ㄴ버림ㄱㄱ.
  #>
  ```

## FileTargetRecurse
- ```ps1
  $DirectoryPath = "C:\github-nangmanhunter\test\test" 
  Get-ChildItem -Path $DirectoryPath -File -Recurse | 
  Where-Object {
      $_.Name -eq "test.txt"
  } |
  ForEach-Object {
      $FileName = $_.FullName
      Get-Content $FileName -Encoding UTF8 | 
      Sort-Object | 
      Set-Content $FileName -Encoding UTF8
  }
  ```

