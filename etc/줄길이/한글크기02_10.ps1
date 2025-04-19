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
    param([string]$fileName)
    
    $Content = Get-Content $fileName -Encoding UTF8
    $Content = $Content | ForEach-Object {
    
        $length = Get-TextLength $_
        $maxLength = Max-Length $fileName

        $squareLength = $maxLength-$length
        $_ -replace "↔️", "$(("　" * $squareLength))↔️"
    
    }
    $Content | Set-Content $fileName -Encoding UTF8
}
Square-Sort $fileName



<#
Refactor
- Max-Length
  - Max-Length 👉 Max-Length $fileName
    - Max-Length $fileName
    - param([string]$fileName)
- Square-Sort
  - Square-Sort 👉 Square-Sort $fileName
    - Square-Sort $fileName
    - param([string]$fileName)
- Write-Host
  - Write-Host $squareLength 👉 ㆍ

#>