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

  # 테스트
  Show-Tree -Path "." -Depth 3
  ```


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

      # 폴더만 가져오기
      $items = Get-ChildItem -Path $Path | Where-Object { $_.PSIsContainer }
      $count = $items.Count

      for ($i = 0; $i -lt $count; $i++) {
          $item = $items[$i]
          $isLast = ($i -eq $count - 1)

          $branch = if ($isLast) { "└──" } else { "├──" }
          $nextPrefix = if ($isLast) { "$Prefix    " } else { "$Prefix│   " }

          # 파일은 제외했으므로 폴더 이모지 고정
          Write-Host "$Prefix$branch 📁 $($item.Name)"
          
          # 재귀 호출
          Show-Tree -Path $item.FullName -Prefix $nextPrefix -Depth ($Depth - 1) -IsRoot:$false
      }
  }

  # Show-Tree -Path "." -Depth 3
  Show-Tree -Path "." 
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

          $branch = if ($isLast) { "└──" } else { "├──" }
          $nextPrefix = if ($isLast) { "$Prefix    " } else { "$Prefix│   " }

          $emoji = if ($item.PSIsContainer) { "📁" } else { "📄" }
          Write-Output "$Prefix$branch $emoji $($item.Name)"
          
          if ($item.PSIsContainer) {
              Show-Tree -Path $item.FullName -Prefix $nextPrefix -Depth ($Depth - 1)
          }
      }
  }

  # 테스트
  # Show-Tree -Path "." -Depth 3 | Out-File -FilePath "tree_structure.txt" -Encoding UTF8
  Show-Tree -Path "."  | Out-File -FilePath "tree_structure.txt" -Encoding UTF8


  <#
  Write-Host   -> ConsoleOutput(o) -> StreamOutput(x) -> Out-File(x)
  Write-Output -> ConsoleOutput(x) -> StreamOutput(o) -> Out-File(o)





  tree_structure.txt 잡힘
  - 트리 탐색 중간에 파일 생성이 이루어짐
    - 하지만 Show-Tree가 출력 (Write-Output)을 할 때마다, 그 출력은 파이프라인을 통해 Out-File로 전달됩니다.
    - Out-File은 전달된 출력을 하나하나 모아서, 지정된 파일에 씁니다.
    - 이때 tree_structure.txt라는 파일이 생성됩니다. 파일이 생성된 시점은 트리 순회가 아직 끝나지 않았을 수도 있음.

  방안
  - 방법 1: 출력 파일을 다른 디렉터리에 저장
    - Show-Tree -Path "." | Out-File -FilePath "C:\Temp\tree_structure.txt" -Encoding UTF8
  - 방법 2: .txt 파일이 생기기 전에 폴더 내용 리스트 고정
    - Where-Object { $_.Name -ne "tree_structure.txt" }
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

      # 디렉터리 내용 미리 고정
      $items = Get-ChildItem -Path $Path | Where-Object { $_.Name -ne "tree_structure.txt" }
      $count = $items.Count

      for ($i = 0; $i -lt $count; $i++) {
          $item = $items[$i]
          $isLast = ($i -eq $count - 1)

          $branch = if ($isLast) { "└──" } else { "├──" }
          $nextPrefix = if ($isLast) { "$Prefix    " } else { "$Prefix│   " }

          $emoji = if ($item.PSIsContainer) { "📁" } else { "📄" }
          Write-Output "$Prefix$branch $emoji $($item.Name)"
          
          if ($item.PSIsContainer) {
              Show-Tree -Path $item.FullName -Prefix $nextPrefix -Depth ($Depth - 1)
          }
      }
  }

  Show-Tree -Path "." | Out-File -FilePath "tree_structure.txt" -Encoding UTF8

  <#
  Where-Object 
  - tree_structure.txt ❌
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

      

      # 디렉터리 내용 미리 고정
      $items = Get-ChildItem -Path $Path | Where-Object { $_.Name -ne "tree_structure.txt" }
      $count = $items.Count

      for ($i = 0; $i -lt $count; $i++) {
          $item = $items[$i]
          $isLast = ($i -eq $count - 1)

          $branch = if ($isLast) { "└──" } else { "├──" }
          $nextPrefix = if ($isLast) { "$Prefix    " } else { "$Prefix│   " }

          $emoji = if ($item.PSIsContainer) { "📁" } else { "📄" }
          Write-Output "$Prefix$branch $emoji $($item.Name)"
          
          if ($item.PSIsContainer) {
              Show-Tree -Path $item.FullName -Prefix $nextPrefix -Depth ($Depth - 1)
          }
      }
  }

  $output = @()
  $output += '```'
  $output += Show-Tree -Path "."
  $output += '```'
  $output | Out-File -FilePath "tree_structure.md" -Encoding UTF8


  # Write-Output "test2" | Write-Output "test" | Out-File -FilePath "tree_structure.md" -Encoding UTF8

  <#
  .md화
  - .md교환
  - ```추가



  Write-Output | ❌
  -❌구조
    - Write-Output "test2" 
      Write-Output "test"
  - ⭕구조
    - "test2", "test" | Out-File -FilePath "tree_structure.md" -Encoding UTF8


  @()
  - 배열생성

  ```처리
  - "```"❌
  - '```'⭕
  #>
  ```
