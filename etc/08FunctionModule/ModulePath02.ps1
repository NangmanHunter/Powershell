$PSScriptRoot
$modulePath = Join-Path $PSScriptRoot "MyModule.psm1"
Import-Module $modulePath

<#
절대경로 -> 00
상대경로 -> \00

$PSScriptRoot -> .ps1경로

#>