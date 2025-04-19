- Get-Module
- Get-Module -ListAvailable


- exit


- Remove-Module ...


# .psd1
모듈메타파일.
ㄴ설명부분.!!!
ㄴ필하면만들기.
ㄴ추후에ㄱㄱ.
ㄴ선택사항

## ModulePath
- $env:PSModulePath
- $env:PSModulePath -split ';'


- C:\Users\djwlf\Documents\WindowsPowerShell\Modules;
  C:\Program Files\WindowsPowerShell\Modules;
  C:\WINDOWS\system32\WindowsPowerShell\v1.0\Modules
- C:\Users\djwlf\Documents\WindowsPowerShell\Modules
  - 해당경로이동
  - 모듈작성.
  - .psm1
  - 알아서찾아줌
  - Import-Module 파일명
- Import-Module FileName
- Import-Module Test
해당경로에서
ㄴ단번에
ㄴ파일명만
ㄴ딱치면
ㄴ바로가져올수있음.
ㄴ이게상당히
ㄴ강력함.!!!


## Import-Module
Import-Module ".\ ..."
- .ps1  👉 ⭕
- .psm1 👉 ⭕

Import-Module 00
- .ps1  👉 ❌
- .psm1 👉 ⭕
파일명만으로
ㄴ단번에
ㄴ끌어오기.
ㄴpsm1 -> 지원
ㄴps1  -> 미지원


## ModulePathRegister

# 예: D:\MyModules 폴더 추가
- $env:PSModulePath += ";D:\MyModules"
- $env:PSModulePath += ";C:\github-nangmanhunter\powershell\src\Module"