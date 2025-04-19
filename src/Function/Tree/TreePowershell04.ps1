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


# 테스트
Show-Tree -Path "." -Depth 3
