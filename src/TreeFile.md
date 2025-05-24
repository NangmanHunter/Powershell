# FileTree
## BranchFileTree
- ```ps1
  function Show-Tree {
      param (
          [string]$Path = ".",
          [string]$Prefix = "",
          [int]$Depth = 10
      )

      if ($Depth -le 0) { return }

      $items = Get-ChildItem -Path $Path
      $count = $items.Count

      for ($i = 0; $i -lt $count; $i++) {
          $item = $items[$i]
          $isLast = ($i -eq $count - 1)

          $branch = if ($isLast) { "└──" } else { "├──" }
          $nextPrefix = if ($isLast) { "$Prefix    " } else { "$Prefix│   " }

          $emoji = if ($item.PSIsContainer) { "📁" } else { "📄" }
          Write-Host "$Prefix$branch $emoji $($item.Name)"
          
          if ($item.PSIsContainer) {
              Show-Tree -Path $item.FullName -Prefix $nextPrefix -Depth ($Depth - 1)
          }
      }
  }

  Show-Tree -Path "."
  # Show-Tree -Path "." -Depth 3
  ```


## RootFileTree
- ```ps1
  function Show-Tree {
      param (
          [string]$Path = ".",
          [string]$Prefix = "",
          [int]$Depth = 10,
          [bool]$IsRoot = $true
      )

      if ($Depth -le 0) { return }

      if ($IsRoot) {
          $folderName = Split-Path -Path (Resolve-Path $Path) -Leaf
          Write-Host "📁 $folderName"
      }

      $items = Get-ChildItem -Path $Path
      $count = $items.Count

      for ($i = 0; $i -lt $count; $i++) {
          $item = $items[$i]
          $isLast = ($i -eq $count - 1)

          $branch = if ($isLast) { "└──" } else { "├──" }
          $nextPrefix = if ($isLast) { "$Prefix    " } else { "$Prefix│   " }

          $emoji = if ($item.PSIsContainer) { "📁" } else { "📄" }
          Write-Host "$Prefix$branch $emoji $($item.Name)"
          
          if ($item.PSIsContainer) {
              Show-Tree -Path $item.FullName -Prefix $nextPrefix -Depth ($Depth - 1) -IsRoot:$false
          }
      }
  }

  # Show-Tree -Path "." -Depth 3
  Show-Tree -Path "." 

  <#
  📁 powershell
  ├── ...
  ...
  #>
  ```

