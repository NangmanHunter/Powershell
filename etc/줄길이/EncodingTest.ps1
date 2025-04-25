[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

"a⭕ㅁ a"
Write-Output "가 "


<#

File       -> UTF8
Powershell -> UTF8-BOM

자동추론
- Powershell
ㄴ내부적 인코딩 자동추론
ㄴ설정불능.
- Windows의 기본 텍스트 인코딩 추론기를 사용함 (보통 UTF-8 with BOM, UTF-16, ANSI 등)
- PowerShell 자체에서 이 인코딩을 지정하는 공식 옵션이 없음
- PowerShell의 Set-ExecutionPolicy, $PSDefaultParameterValues, Out-File, Set-Content 모두 출력용
- PowerShell은 .ps1 실행 시 인코딩 지정 기능을 지원하지 않음

우회
- .
- . ([scriptblock]::Create((Get-Content .\myscript.ps1 -Encoding utf8 -Raw)))
- . ([scriptblock]::Create((Get-Content C:\github-nangmanhunter\powershell\etc\줄길이\EncodingTest.ps1 -Encoding utf8 -Raw)))



Powershell
- 좀어설픔.
- 아직미지원인듯.
- 추후지원일듯.
- 현행Default -> AutoSet-Encoding -> UTF8-BOM
- 나중에 알아서들 업뎃하는식으로 보완될듯.
- 현행비최적.
- 현행버그.


동일이슈
- https://github.com/SublimeText/PowerShell/issues/170


해결
- https://worldclassproduct.tistory.com/entry/%EC%9C%88%EB%8F%84%EC%9A%B0-%ED%8C%8C%EC%9B%8C%EC%89%98-%ED%95%9C%EA%B8%80-%EA%B9%A8%EC%A7%80%EB%8A%94-%EB%AC%B8%EC%A0%9C-%ED%95%B4%EA%B2%B0-%EB%B0%A9%EB%B2%95-2%EA%B0%80%EC%A7%80

후...
ㄴ됐다.
ㄴ걍...
ㄴ세팅문제였고.
ㄴ역시...
ㄴ예상은했었으나
ㄴ따라가지못했던게.
ㄴ예전에
ㄴ아주살짝만
ㄴ처리했던게.;;
ㄴ이런
ㄴ나비효과를.
ㄴㅇㄴ.

결론
- 설정
- 제어판
- 시계 및 국가
- 국가 또는 지역
- 관리자옵션
- 시스템 로캘 변경
- Beta: 세계 언어 지원을 위해 Unicode UTF-8 사용
#>