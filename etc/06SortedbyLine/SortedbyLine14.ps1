function SortLine{
    $FileName = "test.md"
    Get-Content $FileName -Encoding UTF8 | 
    Sort-Object | 
    Set-Content $FileName -Encoding UTF8
}

