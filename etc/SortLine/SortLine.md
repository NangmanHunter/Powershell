# LineSort
## WriteLineSort
- ```ps1
  Get-Content test.md -Encoding UTF8 | Sort-Object
  ```
- ```ps1
  Get-Content test.md -Encoding UTF8 | Sort-Object | Write-Host
  ```
- ```ps1
  Get-Content test.md -Encoding UTF8 | Sort-Object | Write-Output
  ```

## FileLineSort
- ```ps1
  Get-Content test.md -Encoding UTF8 | Sort-Object | Out-File "test1.md"
  ```
- ```ps1
  Get-Content test.md -Encoding UTF8 | 
  Sort-Object | 
  Out-File "test1.md"
  ```
- ```ps1
  Get-Content test.md -Encoding UTF8 | 
  Sort-Object | 
  Set-Content "test1.md"
  <#
  Out-File   ▶Object
  Set-Content▶text

  Optimization
  ㄴOut-File>>Set-Content
  Set-Content
  ㄴUTF-8 필요

  그러나
  ㄴ뒤에
  ㄴ덮어쓰기에서는
  ㄴ비최적.
  ㄴOut-File
  ㄴ동시처리불능.
  #> 
  ```
- ```ps1
  Get-Content test.md -Encoding UTF8 | 
  Sort-Object | 
  Set-Content "test1.md" -Encoding UTF8
  <#
  Set-Content▶Out-File
  #> 
  ```
- ```ps1
  Get-Content test.md -Encoding UTF8 | 
  Sort-Object | 
  Out-File "test.md"
  <#
  안먹음;;
  ㄴ읽기쓰기
  ㄴ동시에해서그럼.
  ㄴSort-Object로
  ㄴ정렬데이터를.
  ㄴOut-File로
  ㄴ넘어가야되는데.
  넘어가기전
  ㄴ혹은
  ㄴSort-Object다끝나기전
  ㄴOut-File실행되고
  ㄴ당해데이터못읽어와
  ㄴ공백으로
  ㄴ덮어쓰임.
  그결과
  ㄴ공백으로나옴.

  1해결책
  ㄴ변수화
  ㄴ변수담아서
  ㄴㄱㄱ.
  ㄴ다른영역할당해서
  ㄴ우회형식ㄱㄱ.!!!
  2해결책
  ㄴSet이용
  ㄴ이것됨.
  #>  
  ```
- ```ps1
  $sortedContent = Get-Content "test.md" -Encoding UTF8 | Sort-Object
  $sortedContent | Out-File "test.md"
  ```
- ```ps1
  $sortedContent = Get-Content "test.md" -Encoding UTF8 |
  Sort-Object
  $sortedContent | Out-File "test.md"
  ```
- ```ps1
  $sortedContent = Get-Content "test.md" -Encoding UTF8 |
                  Sort-Object
  $sortedContent | Out-File "test.md"
  ```
- ```ps1
  $content = Get-Content "test.md" -Encoding UTF8
  $sortedContent = $content | Sort-Object
  $sortedContent | Out-File "test.md" -Encoding UTF8 -Force
  ```
- ```ps1
  Get-Content test.md -Encoding UTF8 | 
  Sort-Object | 
  Set-Content "test.md" -Encoding UTF8
  ```

1변수
- ```ps1
  $FileName = "test.md"
  Get-Content $FileName -Encoding UTF8 | 
  Sort-Object | 
  Set-Content $FileName -Encoding UTF8
  ```
- ```ps1
  function SortLine{
      $FileName = "test.md"
      Get-Content $FileName -Encoding UTF8 | 
      Sort-Object | 
      Set-Content $FileName -Encoding UTF8
  }
  SortLine
  <#
  Sort-Object
  ㄴ등등
  ㄴcmdlet
  ㄴ여기서
  ㄴ지원해주는것
  ㄴ아니면
  ㄴ경고색
  ㄴ띄워주는것.!!!
  결국
  ㄴ표준목록
  ㄴ여기에
  ㄴ잡혀있으면ㅇㅋ.
  ㄴ그아니면
  ㄴㄴㄴ.
  그렇다면
  ㄴ커스텀해서
  ㄴ확장성가능.
  ㄴ충분히가능.ㄱㄱ.!!!


  Sort-Object
  ㄴ등등
  ㄴcmdlet
  ㄴ여기서
  ㄴ지원해주는것
  ㄴ아니면
  ㄴ경고색
  ㄴ띄워주는것.!!!
  결국
  ㄴ표준목록
  ㄴ여기에
  ㄴ잡혀있으면ㅇㅋ.
  ㄴ그아니면
  ㄴㄴㄴ.
  그렇다면
  ㄴ커스텀해서
  ㄴ확장성가능.
  ㄴ충분히가능.ㄱㄱ.!!!

  #>
  ```
- ```ps1
  function Sort-Line{
      $FileName = "test.md"
      Get-Content $FileName -Encoding UTF8 | 
      Sort-Object | 
      Set-Content $FileName -Encoding UTF8
  }
  Sort-Line
  <#
  Sort-...
  ㄴ아...
  ㄴSort-Object
  ㄴ아니면
  ㄴ밑줄로처리해주는듯.!!!
  아니다.
  ㄴ걍
  ㄴSort-Line
  ㄴㄱㄱ.
  ㄴ변수명
  ㄴ함수명일뿐.
  ㄴ활용ㄱㄱ.!!!
  #>
  ```
매개함수
- ```ps1
  function Sort-Line{
      param(
          [string]$FileName
      )
      Get-Content $FileName -Encoding UTF8 | 
      Sort-Object | 
      Set-Content $FileName -Encoding UTF8
  }
  Sort-Line -FileName test.md
  ```
- ```ps1
  function Sort-Line{
      param(
          [string]$Name
      )
      Get-Content $Name -Encoding UTF8 | 
      Sort-Object | 
      Set-Content $Name -Encoding UTF8
  }
  Sort-Line -Name test.md
  <#
  기준정렬
  #>
  ```
- ```ps1
  function Sort-Line{
      param(
          [string]$Name
      )
      Get-Content $Name -Encoding UTF8 | 
      Sort-Object { [int]($_ -replace "\D") } | 
      Set-Content $Name -Encoding UTF8
  }
  Sort-Line -Name test.md
  <#
  숫자정렬
  ㄴ1 10 2
  ㄴ1 2 10
  근데...;;
  ㄴ문자랑있을때는
  ㄴ당해활용
  ㄴ불능인듯.;;
  서식1
  별표1
  서식2
  별표2
  ㄴ숫자만을
  ㄴ기준으로
  ㄴ정렬함.;;
  ㄴ아...


  흠...
  ㄴ1 10 2
  ㄴ1 2 10
  ㄴ당해정렬.
  ㄴ이거
  ㄴ너무어려운데.;;
  ㄴㅇㄴ.
  ㄴ나중에보완ㄱㄱ.
  ㄴ현행은
  ㄴ불능.;;
  일단
  ㄴ할수있는것부터
  ㄴㄱㄱ.
  #>
  ```
- ```ps1
  function Sort-Line{
      param(
          [string]$Name
      )
      Get-Content $Name -Encoding UTF8 | 
      Sort-Object { $_.TrimEnd(';') } | 
      Set-Content $Name -Encoding UTF8
  }
  Sort-Line -Name test.md
  <#
  기준정렬
  #>
  ```
- ```ps1
  function SortLine{
      param(
          [string]$Name
      )
      Get-Content $Name -Encoding UTF8 | 
      Sort-Object { $_.TrimEnd(';') } | 
      Set-Content $Name -Encoding UTF8
  }
  Sort-Line -Name test.md
  ```
- ```ps1
  function SortLine{
      param(
          [string]$Name
      )
      Get-Content $Name -Encoding UTF8 | 
      Sort-Object | 
      Set-Content $Name -Encoding UTF8
  }
  Sort-Line -Name test.md
  ```


