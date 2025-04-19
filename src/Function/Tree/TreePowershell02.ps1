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
