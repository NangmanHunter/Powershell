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