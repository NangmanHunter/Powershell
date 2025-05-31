# AppendAnchorFileTree
Alias
- Append
- AppendOutput

## AppendOutput
- ```ps1
  function Show-Tree {
      param (
          [string]$Path = ".",
          [string]$Prefix = "",
          [int]$Depth = 10
      )
  
      if ($Depth -le 0) { return }
      
      $items = Get-ChildItem -Path $Path | Where-Object { $_.Name -ne "Tree.md" }
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
  $output | Out-File -FilePath "Tree.md" -Encoding UTF8 -Append
  ```