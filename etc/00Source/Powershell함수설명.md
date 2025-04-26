


.HelpKeyword
- .SYNOPSIS
- .DESCRIPTION
- .PARAMETER
- .EXAMPLE
- .INPUTS
- .OUTPUTS
- .NOTES
- .LINK
- .COMPONENT
- .ROLE
- .FUNCTIONALITY
- .FORWARDHELPTARGETNAME
- .FORWARDHELPCATEGORY
- .REMOTEHELPRUNSPACE
- .EXTERNALHELP


## Resource
- https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_comment_based_help?view=powershell-7.5#long-description
- https://github.com/MicrosoftDocs/PowerShell-Docs/blob/main/reference/7.5/Microsoft.PowerShell.Core/About/about_Comment_Based_Help.md

공식 주석 기반 도움말(comment-based help)
- https://learn.microsoft.com/en-us/powershell/scripting/developer/help/comment-based-help-about?view=powershell-7.4
- https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_comment_based_help?view=powershell-7.5
- https://learn.microsoft.com/en-us/powershell/scripting/developer/help/examples-of-comment-based-help?view=powershell-7.5
- https://learn.microsoft.com/en-us/powershell/scripting/developer/help/placing-comment-based-help-in-functions?view=powershell-7.5
- https://learn.microsoft.com/en-us/powershell/scripting/developer/help/placing-comment-based-help-in-scripts?view=powershell-7.5
코드규격화
ㄴㄱㄱ.

## 설명보는법
```ps1
<#
.SYNOPSIS
  이 스크립트는 백업을 수행합니다.

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
```
- cd ...
- Get-Help .\test.ps1



##
아...
ㄴ근데.
ㄴ코드
ㄴ너무길어지면
ㄴ인식못하네.;;
ㄴㅇㄴ.
ㄴ200줄라인넘어가면
ㄴ못잡아주는듯함.
ㄴ터미널로
ㄴ뽑아주는거
ㄴ은근한계있는듯.
더욱이
ㄴ가독성.
ㄴ심히떨어지는듯.;;
ㄴ뭐...
ㄴ일단
ㄴMS에서의규격이라.
ㄴ필요에따라
ㄴ활용ㄱㄱ.
근데...
ㄴ너무
ㄴ거시기하다.;;
ㄴ걍
ㄴ눈에잘안보인다.;;
ㄴ흠.
ㄴ계속고민ㄱㄱ.
