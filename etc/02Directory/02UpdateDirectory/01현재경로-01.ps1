Get-ChildItem -Directory | ForEach-Object {
    $newName = $_.Name -replace "정리마인드", "마인드"
    if ($_.Name -ne $newName) {
        Rename-Item -Path $_.FullName -NewName $newName
    }
}


Get-ChildItem -Directory | ForEach-Object {
    $newName = $_.Name -replace "마인드", ""
    if ($_.Name -ne $newName) {
        Rename-Item -Path $_.FullName -NewName $newName
    }
}


Get-ChildItem -Directory | 
ForEach-Object {
    $newName = $_.Name -replace "마인드", ""
    if ($_.Name -ne $newName) {
        Rename-Item -Path $_.FullName -NewName $newName
    }
}
<#

#>





Get-ChildItem -Directory -Recurse | 
ForEach-Object {
    $newName = $_.Name -replace "마인드", ""
    if ($_.Name -ne $newName) {
        Rename-Item -Path $_.FullName -NewName $newName
    }
}
<#
재귀
#>

Get-ChildItem -Directory -Recurse | 
ForEach-Object {
    $newName = $_.Name -replace "01동어", "01SynOnym"
    if ($_.Name -ne $newName) {
        Rename-Item -Path $_.FullName -NewName $newName
    }
}

Get-ChildItem -Directory -Recurse | 
ForEach-Object {
    $newName = $_.Name -replace "02반어", "02AntOnym"
    if ($_.Name -ne $newName) {
        Rename-Item -Path $_.FullName -NewName $newName
    }
}

Get-ChildItem -Directory -Recurse | 
ForEach-Object {
    $newName = $_.Name -replace "03위계어", "02HypOnym"
    if ($_.Name -ne $newName) {
        Rename-Item -Path $_.FullName -NewName $newName
    }
}

Get-ChildItem -Directory -Recurse | 
ForEach-Object {
    $newName = $_.Name -replace "03위계", "02HypOnym"
    if ($_.Name -ne $newName) {
        Rename-Item -Path $_.FullName -NewName $newName
    }
}