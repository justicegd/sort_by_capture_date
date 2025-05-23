@echo off
setlocal enabledelayedexpansion

echo Processing files by date...

for %%F in (*.*) do (
    set foundDate=

    rem Try DateTimeOriginal first (used by photos)
    for /f "tokens=1-2 delims=:" %%a in ('exiftool -s -s -s -DateTimeOriginal "%%F" 2^>nul') do (
        set year=%%a
        set month=%%b
        set foundDate=1
    )

    rem If DateTimeOriginal not found, try CreateDate (used by videos like MP4)
    if not defined foundDate (
        for /f "tokens=1-2 delims=:" %%a in ('exiftool -s -s -s -CreateDate "%%F" 2^>nul') do (
            set year=%%a
            set month=%%b
            set foundDate=1
        )
    )

    if defined foundDate (
        set targetDir=!year!-!month!
        if not exist "!targetDir!" (
            mkdir "!targetDir!"
        )
        move "%%F" "!targetDir!" >nul
        echo Moved %%F to !targetDir!
    ) else (
        echo No valid date found: %%F
    )
)

echo Done.
pause
