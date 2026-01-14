@echo off
setlocal enabledelayedexpansion
set /a count=0

for /r %%f in (*.pdf) do (
    set /a count+=1
    echo [!count!] %%~nxf
    
    ocrmypdf ^
        --skip-text ^
        --tesseract-timeout 0 ^
        --optimize 2 ^
        --output-type pdf ^
        "%%f" "%%f"
)

echo Done.