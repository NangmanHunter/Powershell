. ".\FunctionModule03.ps1"
TestName "test"


<#
00   -> ❌
.\00 -> ⭕

. -> CurrentPath


.
- .ps1  -> ⭕
- .psm1 -> ❌
Import-Module
- .ps1  -> ⭕
- .psm1 -> ⭕


Import-Module
- ".\ ..." -> ⭕
-  .\ ...  -> ⭕

.ps1 
- Get-Module -> Name             -> ⭕
- Get-Module -> ExportedCommands -> ❌
.psm1
- Get-Module -> Name             -> ⭕
- Get-Module -> ExportedCommands -> ⭕

PowerShell 갤러리등록
- .ps1  -> ❌
- .psm1 -> ⭕
- https://www.powershellgallery.com/
- https://azure.microsoft.com/ko-kr/downloads/
- https://azure.github.io/azure-sdk/releases/latest/dotnet.html
- https://azure.github.io/azure-sdk/releases/latest/java.html



Get-Module
ㄴ되다말다
ㄴ되다말다.
ㄴ생각보다
ㄴVSCode에서
ㄴ터미널오류심함.
뭐좀꼬이면
ㄴ딱이렇게되는듯.
ㄴ계속
ㄴ껐다가
ㄴ다시금로드ㄱㄱ.!!!
ㄴ당황ㄴㄴ.

메소드를
ㄴGet-Module하면
ㄴ가져와지긴하는데.
ㄴ여기서
ㄴ실행전단계인듯.
ㄴRam에올리기전인듯함.
그러나
ㄴGet-Module하면
ㄴ안잡힘.
그럼에도
ㄴfunction하면
ㄴ실행됨.!!!
ㄴ즉,
ㄴfunction실행하기전에
ㄴRam에올려져있고.
ㄴ다만,
ㄴGet-Module
ㄴ얘만이
ㄴ반영못하는듯함.
ㄴ쟤
ㄴ설정문제인듯함.
ㄴㄹㅇ.;;

글고
ㄴ폴더구조.
ㄴ폴더명/파일명.psm1
ㄴ동일폴더=동일파일
ㄴ딱한개.
ㄴ이것만들어가고.
그외에는
ㄴ싹다
ㄴ미인식.!!!
결국
ㄴ1폴더=1파일
ㄴ1-Dir=1-File
Module별
ㄴ싹다
ㄴ쪼개기ㄱㄱ.!!!
ㄴ전에도
ㄴ이고생했던것
ㄴ똑같이그러는듯.
ㄴㄱㄱ.!!!
#>