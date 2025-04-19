Get-ChildItem -Recurse -Directory | 
  ForEach-Object {
    (' ' * ($_.FullName.Split('\').Count - (Get-Location).Path.Split('\').Count)) + $_.Name
  }



<#
Powershell
- Run 
- F5
#>