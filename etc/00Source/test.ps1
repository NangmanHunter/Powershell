<#
.SYNOPSIS
test

.DESCRIPTION
지정된 폴더를 백업 경로로 복사합니다. 

.EXAMPLE
PS> .\backup.ps1 -Source "C:\Data" -Dest "D:\Backup"
#>
param (
    [string]$Source,
    [string]$Dest
)

Copy-Item -Path $Source -Destination $Dest -Recurse