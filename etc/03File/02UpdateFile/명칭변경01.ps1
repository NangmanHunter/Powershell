Get-ChildItem -File | ForEach-Object {
    $newName = $_.Name -replace 'ㅁㅁ', ''
    Rename-Item -Path $_.FullName -NewName $newName
}


Get-ChildItem -File | ForEach-Object {
    $newName = $_.Name -replace '01데이터모델링의이해_', ''
    Rename-Item -Path $_.FullName -NewName $newName
}


Get-ChildItem -File | ForEach-Object {
    $newName = $_.Name -replace '02데이터모델과SQL_', ''
    Rename-Item -Path $_.FullName -NewName $newName
}


$OriginName='ㅁㅁ'
$UpdateName=''
Get-ChildItem -File | ForEach-Object {
    $newName = $_.Name -replace $OriginName, $UpdateName
    Rename-Item -Path $_.FullName -NewName $newName
}


$BeforeName='ㅁㅁ'
$AfterName=''
Get-ChildItem -File | ForEach-Object {
    $newName = $_.Name -replace $BeforeName, $AfterName
    Rename-Item -Path $_.FullName -NewName $newName
}


$Name1='ㅁㅁ'
$Name2=''
Get-ChildItem -File | ForEach-Object {
    $newName = $_.Name -replace $Name1, $Name2
    Rename-Item -Path $_.FullName -NewName $newName
}


$Name01='ㅁㅁ'
$Name02=''
Get-ChildItem -File | ForEach-Object {
    $newName = $_.Name -replace $Name01, $Name02
    Rename-Item -Path $_.FullName -NewName $newName
}



Get-ChildItem -File | Rename-Item -NewName { $_.Name -replace 'ㅁㅁ', '' }

Get-ChildItem -File | Rename-Item -NewName { $_.Name -replace '.md', '' }         # 00.md    ▶️00
Get-ChildItem -File | Rename-Item -NewName { $_.Name -replace '.cList', '' }      # 00.cList ▶️00
Get-ChildItem -File | Rename-Item -NewName { $_.Name -replace '.cList', '.md' }   # 00.cList ▶️00.md
Get-ChildItem -File | Rename-Item -NewName { $_.Name -replace '.cLayer', '' }     # 00.cLayer▶️00
Get-ChildItem -File | Rename-Item -NewName { $_.Name -replace '.cLayer', '.md' }  # 00.cLayer▶️00.md
Get-ChildItem -File | Rename-Item -NewName { $_.Name + '.md' }                    # 00       ▶️00.md
Get-ChildItem -File | Rename-Item -NewName { $_.BaseName + '.md' }                # 00.xxx   ▶️00.md