$path = "C:\github-nangmanhunter\powershell\etc"  
Get-ChildItem `
     -Path $path `
     -Recurse | 
     ForEach-Object {
          $_.FullName 
     }