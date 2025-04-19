$raw = "가나다"
$utf8Bytes = [System.Text.Encoding]::UTF8.GetBytes($raw)
$utf8Bytes.Length  # UTF-8 상의 바이트 수 (한글 하나당 3바이트)
