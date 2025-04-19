Get-ChildItem -Recurse |
ForEach-Object { 
    $_.FullName 
}