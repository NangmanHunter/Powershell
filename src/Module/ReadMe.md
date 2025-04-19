## ModulePath
- $env:PSModulePath
- $env:PSModulePath -split ';'

## ModulePath-Register
- $env:PSModulePath += ";C:\github-nangmanhunter\powershell\src\Module"  

## ModulePath-RegisterDefault
- $PROFILE
- New-Item -Path $PROFILE -ItemType File -Force
- C:\Users\ ... \Documents\WindowsPowerShell\Microsoft.VSCode_profile.ps1
- $env:PSModulePath += ";C:\github-nangmanhunter\powershell\src\Module"

## Import-Module
Import-Module Syntax
- ❌ Import-Module 📄00.ps1  
- ⭕ Import-Module 📄00.psm1 
- ⭕ Import-Module 📁00      

Directory & File
- ⭕ Import-Module 📁00\📄00.psm1      


##
.psm1
- 00
  - 00.psm1 ⭕
  - 11.psm1 ❌


## 
cd
- ⭕ cd 📁00
- ❌ cd 📄00.ps1  

Run
- ⭕ 📄00.ps1
- ❌ 📁00