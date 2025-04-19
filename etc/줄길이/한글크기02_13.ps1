function Get-TextLength {
    param([string]$inputString)
    $enum = [System.Globalization.StringInfo]::GetTextElementEnumerator($inputString)
    $count = 0
    $foundArrow = $false
    while ($enum.MoveNext()) {

        $char = $enum.Current
        if ($char -eq "↔️") {
            $foundArrow = $true
            break
        }

        $count++
    }

    if (-not $foundArrow) {
        $count = 0
    }

    return $count
}

function Max-Length{
    param([string]$fileName)
    $maxLength=0
    Get-Content $fileName -Encoding UTF8 | ForEach-Object {
        
        $length = Get-TextLength $_
        if($length -ge $maxLength ){
            $maxLength = $length
        }
    }
    return $maxLength
}

function Square-Sort{
    param(
        [string]$fileName,
        [int]$maxLength
    )
    
    $Content = Get-Content $fileName -Encoding UTF8
    $Content = $Content | ForEach-Object {
    
        $length = Get-TextLength $_
        $squareLength = $maxLength-$length
        $_ -replace "↔️", "$(("　" * $squareLength))↔️"
    
    }
    $Content | Set-Content $fileName -Encoding UTF8
}



$DirectoryPath = "." 
Get-ChildItem -Path $DirectoryPath -File | 
ForEach-Object {
    $fileName = $_.FullName
    $maxLength = Max-Length $fileName
    Square-Sort $fileName $maxLength
}







<#
Directory단위처리


#>