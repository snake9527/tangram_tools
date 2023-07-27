@echo off
setlocal enabledelayedexpansion

:: 定义要搜索的文件夹，"." 表示当前目录
set "folder=."

:: 定义要搜索的关键词
set "keyword=label"

:: 创建/清空结果输出文件
echo. > output.txt

:: 定义图片扩展名的列表
set "extensions=jpg png jpeg webp avif"

:: 遍历每个图片扩展名
for %%e in (%extensions%) do (
    :: 在文件夹中搜索该扩展名的所有图片文件
    for /R "%folder%" %%f in (*.%%e) do (
        :: 保存当前图片的文件名（不包括扩展名）
        set "filename=%%~nf"

        :: 检查是否存在相同名称的.json文件
        if exist "%%~nf.json" (
            :: 如果存在，计算关键词出现的次数
            set "count=0"
            for /F "delims=" %%l in ('findstr /R /C:"%keyword%" "%%~nf.json"') do set /A "count+=1"
        ) else (
            :: 如果不存在，设置关键词出现次数为0
            set "count=0"
        )

        :: 输出图片文件名和关键词出现的次数到结果文件
        echo !filename! : !count! >> output.txt
    )
)

:: 结束脚本
endlocal
