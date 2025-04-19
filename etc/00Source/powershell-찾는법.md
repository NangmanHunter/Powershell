
shcm
Show-Command
Get-Command


Get-Command | Select-Object -Property Name, CommandType
[System.Enum]::GetNames([System.Management.Automation.CommandTypes])


#
Get-Command -CommandType Cmdlet
#
Get-Command Get-ChildItem



#
Get-Command -CommandType Function
Get-ChildItem Function:
#
- Get-Command -CommandType Function mkdir
- Get-ChildItem Function:\mkdir
#
(Get-Command mkdir).Definition
ㄴmkdir
ㄴ구성파악됨.!!!
ㄴ코드나옴.!!!



#
Get-Command -CommandType Alias
Get-ChildItem Alias:



#
Get-Help Get-Process




#
Get-Module -ListAvailable
#
$env:PSModulePath
ㄴ모듈경로




# CommonParameter
- https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_commonparameters?view=powershell-7.5
- https://learn.microsoft.com/ko-kr/powershell/module/microsoft.powershell.core/about/about_commonparameters?view=powershell-7.5

Get-Help Out-File -Full

(Get-Command Out-File).Parameters.Keys
ㄴ모든매개변수.
ㄴ근데
ㄴ이거는
ㄴ준위가안보이긴함.;;

Get-Help about_CommonParameters
(Get-Command Write-Output).Parameters.Keys
#
사이트가
ㄴ그냥
ㄴ그나마제일나은듯.
ㄴ초기세팅
ㄴ초기의도
ㄴ그대로볼수있고.
명령어
ㄴ설명은
ㄴ뭔가
ㄴ일부발췌로
ㄴ뭔가하나씩빠져있음.
ㄴriskMitigation 이런거든.


#
Set-Content
https://learn.microsoft.com/ko-kr/powershell/module/microsoft.powershell.management/set-content?view=powershell-5.1&WT.mc_id=p


# 한글
철처지
ㄴ활용ㄱㄱ.
ㄴ영어보다
ㄴ직감력이
ㄴ너무도다르다.
일단
ㄴ한글우선ㄱㄱ.
ㄴ그리고
ㄴ없으면
ㄴ영어ㄱㄱ.









#
Get-Verb


