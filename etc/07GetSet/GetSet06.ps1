Get-Content test.md -Encoding UTF8 | Set-Content test2.md 

<#
Set에서도
ㄴEncoding
ㄴ한번더해줘야함.
ㄴ변환되어
ㄴ우리는에
ㄴ보이는형태가
ㄴUTF8형태로잡혀있으나.
컴터상
ㄴ여기서
ㄴ변환해서
ㄴ가져가고
ㄴ보내는형식은
ㄴbit-byte
ㄴ이단위라
ㄴ여기서
ㄴ삑사리나는듯.

더들어가보면.
ㄴEncoding-Default
ㄴ이걸로잡혀있고.
ㄴ운영체재
ㄴwindow
ㄴ여기서
ㄴdefault형태로가고.
ㄴ그형태는
ㄴ한글.
ㄴ이부분임.!!!
ㄴ한글
확인해보면
ㄴ명령어
[System.Text.Encoding]::Default
ㄴ출력
BodyName          : ks_c_5601-1987
EncodingName      : 한국어
ㄴ이런식으로
ㄴ잡혀있음.
ㄴ인코딩.
ㄴ전혀다르다.
ㄴ그래서
ㄴ삑싸리.
즉,
ㄴdefault <-> UTF-8
ㄴ이로인한
ㄴ깨짐현상.


#>