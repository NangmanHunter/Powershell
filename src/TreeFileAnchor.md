# AnchorFileTree
- [FileTree](#filetree)
- [AnchorFileTree](#anchorfiletree)
- [DetailsAnchorFileTree](#detailsanchorfiletree)


Branch
- \[]()
- ❌\```
  - ❌\``` + \[]()
  - ❌│
  - ❌─
  - ❌└
  - ❌├
- ✅\-
  - ✅\-   + \[]()

## FileTree
- ```ps1
  function Show-Tree {
      param (
          [string]$Path = ".",
          [string]$Prefix = "",
          [int]$Depth = 10
      )

      if ($Depth -le 0) { return }

      # 디렉터리 내용 미리 고정
      $items = Get-ChildItem -Path $Path | Where-Object { $_.Name -ne "tree_structure.txt" }
      $count = $items.Count

      for ($i = 0; $i -lt $count; $i++) {
          $item = $items[$i]
          $isLast = ($i -eq $count - 1)

          $branch = if ($isLast) { "- " } else { "- " }
          $nextPrefix = if ($isLast) { "$Prefix  " } else { "$Prefix  " }

          $emoji = if ($item.PSIsContainer) { "📁" } else { "📄" }
          Write-Output "$Prefix$branch$emoji$($item.Name)"
          
          if ($item.PSIsContainer) {
              Show-Tree -Path $item.FullName -Prefix $nextPrefix -Depth ($Depth - 1)
          }
      }
  }

  Show-Tree -Path "." | Out-File -FilePath "tree_structure.md" -Encoding UTF8
  ```

## AnchorFileTree
- ```ps1
  function Show-Tree {
      param (
          [string]$Path = ".",
          [string]$Prefix = "",
          [int]$Depth = 10
      )

      if ($Depth -le 0) { return }
      
      $items = Get-ChildItem -Path $Path | Where-Object { $_.Name -ne "tree_structure.md" }
      $count = $items.Count

      for ($i = 0; $i -lt $count; $i++) {
          $item = $items[$i]
          $isLast = ($i -eq $count - 1)

          $branch = "- "
          $nextPrefix = "$Prefix  "

          if ($item.PSIsContainer) {
              Write-Output "$Prefix$branch📁 $($item.Name)"
              Show-Tree -Path $item.FullName -Prefix $nextPrefix -Depth ($Depth - 1)
          }
          else {
              $relativePath = Resolve-Path -Relative $item.FullName
              $relativePath = $relativePath -replace "\\", "/"
              Write-Output "$Prefix$branch📄 [$($item.Name)]($relativePath)"
          }
      }
  }

  Show-Tree -Path "." | Out-File -FilePath "tree_structure.md" -Encoding UTF8
  ```
- ```ps1
  function Show-Tree {
      param (
          [string]$Path = ".",
          [string]$Prefix = "",
          [int]$Depth = 10
      )

      if ($Depth -le 0) { return }
      
      $items = Get-ChildItem -Path $Path | Where-Object { $_.Name -ne "tree_structure.md" }
      $count = $items.Count

      for ($i = 0; $i -lt $count; $i++) {
          $item = $items[$i]
          $isLast = ($i -eq $count - 1)

          $branch = "- "
          $nextPrefix = "$Prefix  "

          if ($item.PSIsContainer) {
              Write-Output "$Prefix$branch📁 $($item.Name)"
              Show-Tree -Path $item.FullName -Prefix $nextPrefix -Depth ($Depth - 1)
          }
          else {
              $relativePath = Resolve-Path -Relative $item.FullName
              $relativePath = $relativePath -replace "\\", "/"
              $relativePath = $relativePath -replace "^\.\/", ""
              Write-Output "$Prefix$branch📄 [$($item.Name)]($relativePath)"
          }
      }
  }

  Show-Tree -Path "." | Out-File -FilePath "tree_structure.md" -Encoding UTF8
  ```
- ```ps1
  function Show-Tree {
      param (
          [string]$Path = ".",
          [string]$Prefix = "",
          [int]$Depth = 10
      )

      if ($Depth -le 0) { return }
      
      $items = Get-ChildItem -Path $Path | Where-Object { $_.Name -ne "tree_structure.md" }
      $count = $items.Count

      for ($i = 0; $i -lt $count; $i++) {
          $item = $items[$i]
          $isLast = ($i -eq $count - 1)

          $branch = "- "
          $nextPrefix = "$Prefix  "

          if ($item.PSIsContainer) {
              Write-Output "$Prefix$branch📁$($item.Name)"
              Show-Tree -Path $item.FullName -Prefix $nextPrefix -Depth ($Depth - 1)
          }
          else {
              $relativePath = Resolve-Path -Relative $item.FullName
              $relativePath = $relativePath -replace "\\", "/"
              $relativePath = $relativePath -replace "^\.\/", ""
              Write-Output "$Prefix$branch📄[$($item.Name)]($relativePath)"
          }
      }
  }

  Show-Tree -Path "." | Out-File -FilePath "tree_structure.md" -Encoding UTF8
  ```

## DetailsAnchorFileTree
- ```ps1
  function Show-Tree {
      param (
          [string]$Path = ".",
          [string]$Prefix = "",
          [int]$Depth = 10
      )
  
      if ($Depth -le 0) { return }
      
      $items = Get-ChildItem -Path $Path | Where-Object { $_.Name -ne "tree_structure.md" }
      $count = $items.Count
  
      for ($i = 0; $i -lt $count; $i++) {
          $item = $items[$i]
          $isLast = ($i -eq $count - 1)
  
          $branch = "- "
          $nextPrefix = "$Prefix  "
  
          if ($item.PSIsContainer) {
              Write-Output "$Prefix$branch📁$($item.Name)"
              Show-Tree -Path $item.FullName -Prefix $nextPrefix -Depth ($Depth - 1)
          }
          else {
              $relativePath = Resolve-Path -Relative $item.FullName
              $relativePath = $relativePath -replace "\\", "/"
              $relativePath = $relativePath -replace "^\.\/", ""
              Write-Output "$Prefix$branch📄[$($item.Name)]($relativePath)"
          }
      }
  }
  
  
  $output = @()
  $output += '<details>'
  $output += '    <summary>⚓AnchorFileTree</summary>'
  $output += ''
  $output += Show-Tree -Path "."
  $output += '</details>'
  $output | Out-File -FilePath "tree_structure.md" -Encoding UTF8
  ```
- ```ps1
  function Show-Tree {
      param (
          [string]$Path = ".",
          [string]$Prefix = "",
          [int]$Depth = 10
      )
  
      if ($Depth -le 0) { return }
      
      $items = Get-ChildItem -Path $Path | Where-Object { $_.Name -ne "tree_structure.md" }
      $count = $items.Count
  
      for ($i = 0; $i -lt $count; $i++) {
          $item = $items[$i]
          $isLast = ($i -eq $count - 1)
  
          $branch = "- "
          $nextPrefix = "$Prefix  "
  
          if ($item.PSIsContainer) {
              Write-Output "$Prefix$branch📁$($item.Name)`n"
              Show-Tree -Path $item.FullName -Prefix $nextPrefix -Depth ($Depth - 1)
          }
          else {
              $relativePath = Resolve-Path -Relative $item.FullName
              $relativePath = $relativePath -replace "\\", "/"
              $relativePath = $relativePath -replace "^\.\/", ""
              Write-Output "$Prefix$branch📄[$($item.Name)]($relativePath)`n"
          }
      }
  }
  
  $output =""
  $output += @"
  <details>
    <summary>⚓AnchorFileTree</summary>
    `n
  "@
  $output += Show-Tree -Path "."
  $output += ''
  $output += '</details>'
  $output | Out-File -FilePath "tree_structure.md" -Encoding UTF8
  ```
- ```ps1
  function Show-Tree {
      param (
          [string]$Path = ".",
          [string]$Prefix = "",
          [int]$Depth = 10
      )
  
      if ($Depth -le 0) { return @() }
  
      $items = Get-ChildItem -Path $Path | Where-Object { $_.Name -ne "tree_structure.md" }
      $count = $items.Count
      $lines = @()
  
      for ($i = 0; $i -lt $count; $i++) {
          $item = $items[$i]
          $branch = "- "
          $nextPrefix = "$Prefix  "
  
          if ($item.PSIsContainer) {
              $lines += "$Prefix$branch📁$($item.Name)"
              $lines += Show-Tree -Path $item.FullName -Prefix $nextPrefix -Depth ($Depth - 1)
          }
          else {
              $relativePath = Resolve-Path -Relative $item.FullName
              $relativePath = $relativePath -replace "\\", "/"
              $relativePath = $relativePath -replace "^\.\/", ""
              $lines += "$Prefix$branch📄[$($item.Name)]($relativePath)"
          }
      }
  
      return $lines
  }
  
  
  $tree = Show-Tree -Path "."
  $output = ""
  $output += @"
  <details>
    <summary>⚓AnchorFileTree</summary>
  
    $($tree)
  </details>
  "@
  $output | Out-File -FilePath "tree_structure.md" -Encoding UTF8
  ```
  