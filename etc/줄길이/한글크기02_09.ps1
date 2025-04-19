$fileName="test.txt"


function Get-TextLength {
    param([string]$inputString)
    $enum = [System.Globalization.StringInfo]::GetTextElementEnumerator($inputString)
    $count = 0
    while ($enum.MoveNext()) {

        $char = $enum.Current
        if ($char -eq "↔️") {
            break
        }

        $count++
    }
    return $count
}



function Max-Length{

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

    $Content = Get-Content $fileName -Encoding UTF8
    $Content = $Content | ForEach-Object {
    
        $length = Get-TextLength $_
        $maxLength = Max-Length
        $squareLength = $maxLength-$length
        Write-Host $squareLength
        $_ -replace "↔️", "$(("　" * $squareLength))↔️"
    
    }
    $Content | Set-Content $fileName -Encoding UTF8
}
Square-Sort



<#
Refactor
- $fileName
- $maxLength
  - function Max-Length
  - return
- $squareLength
  - function Square-Sort
  - Square-Sort
#>