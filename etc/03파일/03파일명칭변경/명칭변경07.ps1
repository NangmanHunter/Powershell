$AddNum=1;


Get-ChildItem -File | ForEach-Object {
    $newName = $_.Name -replace $_.Name, ($_.Name + ("{0:D2}" -f $AddNum) )
    Rename-Item -Path $_.FullName -NewName $newName
    $AddNum++;
}


<#
뒷단형
ㄴ확장자뒤에붙음.
ㄴ비최적.
#>

