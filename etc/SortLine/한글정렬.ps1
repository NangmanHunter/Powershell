$list = '-S', '-S형', 'S형', 'Slow', 'Slow형'
$list | Sort-Object {[System.Globalization.CultureInfo]::CurrentCulture.CompareInfo.GetSortKey($_)}


$list | Sort-Object -Culture "ko-KR"
