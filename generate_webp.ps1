Write-Output "Script started"

$inputDir = "assets/img/publication_preview"
$sizes = @(480, 800, 1400)

# 遍历所有图片文件（大小写无关）
Get-ChildItem $inputDir -File | Where-Object {
    $_.Extension -match '^(?i)\.(png|jpg|jpeg)$'
} | ForEach-Object {
    $img = $_.FullName
    $name = [System.IO.Path]::GetFileNameWithoutExtension($img)

    foreach ($size in $sizes) {
        $output = "$inputDir\$name-$size.webp"
        magick $img -resize $size $output
        Write-Output "Generated: $output"
    }
}