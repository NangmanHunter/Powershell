# Tree
## ApplicationTree
- ```ps1
  tree
  ```
  - Get-Command tree
    - CommandType
    - Application
  - Windows CMD 명령


Option
- ```ps1
  tree /A
  ```
- ```ps1
  tree /F
  ```
- ```ps1
  tree /F > tree_structure.txt
  ```
  - VSCode
  - 간혹안될경우있음.
  - 껐다켜기ㄱㄱ.
  - 메모리 -> Heap깨져서인지 -> 파편화날라다니는듯.
- ```ps1
  tree /A /F 
  ```
- ```ps1
  tree /F /A  
  ```

## CmdletTree
- ```ps1
  Get-ChildItem -Recurse -Directory | 
  ForEach-Object {
    (' ' * ($_.FullName.Split('\').Count - (Get-Location).Path.Split('\').Count)) + $_.Name
  }
  ```
  - Get-Command Get-ChildItem
    - CommandType 
    - Cmdlet


Function
- ```ps1
  function Show-Tree {
      param (
          [string]$Path = ".",
          [int]$Depth = 3,
          [int]$Level = 0
      )

      if ($Level -gt $Depth) { return }

      $items = Get-ChildItem $Path
      foreach ($item in $items) {
          Write-Host (' ' * ($Level * 2)) "$($item.Name)"
          if ($item.PSIsContainer) {
              Show-Tree -Path $item.FullName -Depth $Depth -Level ($Level + 1)
          }
      }
  }

  Show-Tree -Path "." -Depth 3
  ```
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

          $branch = if ($isLast) { "└── " } else { "├── " }
          $nextPrefix = if ($isLast) { "$Prefix    " } else { "$Prefix│   " }

          $emoji = if ($item.PSIsContainer) { "📁" } else { "📄" }
          Write-Host "$Prefix$branch $emoji $($item.Name)"

          if ($item.PSIsContainer) {
              Show-Tree -Path $item.FullName -Prefix $nextPrefix -Depth ($Depth - 1)
          }
      }
  }


  Show-Tree -Path "." -Depth 3

  <#
  Font
  - Ctrl + ,
  - terminal.integrated.fontFamily
  - Cascadia Code, 'Segoe UI Emoji', Consolas

  VSCodePowershell  -> 고정폭만지원 -> 기호ㆍ이모지x
  WindowsPowershell -> 변동폭도지원 -> 기호ㆍ이모지o

  WindowsPowershell
  - Win+X+A
  - cd ...
  - 
  ㄴwindows-powershell은
  ㄴ바로잘나옴.
  ㄴ폰트지원해줘서
  ㄴ출력이제대로나오는듯.!!!
  ㄴ당해활용ㄱㄱ.
  ㄴVSCode만능은ㄴㄴ.
  #>
  ```
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

          $branch = if ($isLast) { "+--" } else { "*--" }
          $nextPrefix = if ($isLast) { "$Prefix    " } else { "$Prefix|   " }

          $emoji = if ($item.PSIsContainer) { "[DIR]" } else { "[FILE]" }
          Write-Host "$Prefix$branch $emoji $($item.Name)"
          
          if ($item.PSIsContainer) {
              Show-Tree -Path $item.FullName -Prefix $nextPrefix -Depth ($Depth - 1)
          }
      }
  }

  Show-Tree -Path "." -Depth 3
  ```





