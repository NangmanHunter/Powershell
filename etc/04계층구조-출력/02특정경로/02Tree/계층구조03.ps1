function Show-Tree {
     param (
         [string]$Path,
         [string]$Indent = ""
     )
 
     Get-ChildItem -Path $Path | ForEach-Object {
         Write-Output "$Indent|- $_"
         if ($_.PSIsContainer) {  # 폴더인 경우 재귀 호출
             Show-Tree -Path $_.FullName -Indent "$Indent   "
         }
     }
 }
 
 $targetPath = "C:\github-nangmanhunter\powershell\etc"  
 Show-Tree -Path $targetPath