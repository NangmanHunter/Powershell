# GetSet
## Get
❌Default
- ```ps1
  Get-Content test.md 
  ```
- ```ps1
  Get-Content test.md -Encoding Default
  ```
  - Encoding
  - Default
    - 눈에보이는것->UTF8
    - 윈도우설정  ->한글
    - 여기서간극
    - 여기서깨짐

❌ASCII
- ```ps1
  Get-Content test.md -Encoding ASCII
  ```
  - 깨짐


✅UTF8
```ps1
Get-Content test.md -Encoding UTF8
```



## Set
❌Get
- ```ps1
  Get-Content test.md | Set-Content test2.md
  ```
  - ❌한글
    - 한글깨짐

❌GetUTF8
- ```ps1
  Get-Content test.md -Encoding UTF8 | Set-Content test2.md

  <#
  더들어가보면.
  ㄴEncoding-Default
  ㄴwindow
  ㄴdefault

  ㄴ한글.
  ㄴ이부분임.!!!
  ㄴ한글
  확인해보면

  ❌
  ㄴ명령어
  [System.Text.Encoding]::Default
  ㄴ출력
  BodyName          : ks_c_5601-1987
  EncodingName      : 한국어

  #>

  ```
  - default↔️UTF-8


❌GetㆍSetUTF8
- ```ps1
  Get-Content test.md | Set-Content test2.md -Encoding UTF8
  ```

✅GetUTF8ㆍSetUTF8
- ```ps1
  Get-Content test.md -Encoding UTF8 | Set-Content test2.md -Encoding UTF8
  ```

