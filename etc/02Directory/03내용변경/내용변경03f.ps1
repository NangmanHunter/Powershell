$DirectoryPath = "."
Get-ChildItem -Path $DirectoryPath -File |
ForEach-Object {
    $FileName = $_.FullName
    $Content = Get-Content $FileName -Encoding UTF8
    $LineCount = $Content.Count

    $Content = for ($i = 0; $i -lt $LineCount; $i++) {
        $line = $Content[$i]
        if ($i -eq $LineCount - 1) {
            '"' + $line + '"'   # 마지막 줄: 쉼표 없음
        } else {
            '"' + $line + '",'  # 그 외 줄: 쉼표 붙임
        }
    }
    $Content = @("[" ) + $Content + "]"
    $Content | Set-Content $FileName -Encoding UTF8
}


<#

#>