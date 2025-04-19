[System.Text.Encoding]::UTF8.GetBytes("가").Count      # 결과: 3
[System.Text.Encoding]::Unicode.GetBytes("가").Count   # 결과: 2
[System.Text.Encoding]::GetEncoding("euc-kr").GetBytes("가").Count  # 결과: 2