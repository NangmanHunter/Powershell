<#
.SYNOPSIS
  HelloWorld 스크립트입니다.

.DESCRIPTION
  이 스크립트는 Hello World를 출력합니다.
#>

Write-Output "Hello, world!"


<#
.SYNOPSIS
  숫자를 두 배로 만들어 출력합니다.

.DESCRIPTION
  이 스크립트는 입력받은 숫자 배열을 두 배로 바꿔 출력합니다.

.PARAMETER Numbers
  처리할 숫자 배열입니다.

.EXAMPLE
  PS> .\DoubleIt.ps1 -Numbers 1 2 3
#>

param (
    [int[]]$Numbers
)

$Numbers | ForEach-Object { $_ * 2 }