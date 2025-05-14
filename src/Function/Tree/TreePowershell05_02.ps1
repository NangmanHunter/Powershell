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