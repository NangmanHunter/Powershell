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


```
- "```"❌
- '```'⭕
#>