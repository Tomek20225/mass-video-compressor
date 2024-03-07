@echo off
setlocal enabledelayedexpansion

for /R "%CD%" %%i in (*.avi, *.mkv, *.mov, *.wmv, *.flv, *.mp4, *.webm) do (
    echo Processing: %%i
    set "originalFile=%%i"
    set "newFile=%%~dpni_temp.mp4"

    ffmpeg -y -i "!originalFile!" -vcodec libx264 -crf 23 -acodec aac "!newFile!"

    set "originalSize=0"
    set "newSize=0"

    for %%A in ("!originalFile!") do set /A originalSize=%%~zA
    for %%B in ("!newFile!") do set /A newSize=%%~zB

    if !newSize! lss !originalSize! (
        echo Replacing original with compressed file.
        del "!originalFile!"
        ren "!newFile!" "%%~nxi"
    ) else (
        echo Compressed file is larger, deleting.
        del "!newFile!"
    )
)

endlocal
