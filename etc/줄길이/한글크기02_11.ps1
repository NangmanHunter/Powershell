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



$fileName="test.txt"
$maxLength = Max-Length $fileName
Square-Sort $fileName $maxLength



<#
Refactor
- Square-Sort 2-Parameter
  - Square-Sort $fileName $maxLength
  - $fileName 👉 $fileName $maxLength

#>