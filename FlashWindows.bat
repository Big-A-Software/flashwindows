@echo off
rem === Root of the fake profile ===
set "ROOT=C:\Sandbox"
if not exist "%ROOT%" mkdir "%ROOT%"
cd /d "%ROOT%"

rem === Core identity variables ===
set "USERPROFILE=%ROOT%"
set "HOMEDRIVE=C:"
set "HOMEPATH=\Sandbox"
set "USERNAME=Sandbox"
set COMPUTERNAME= FlashWindowsDesktop
set OS=Flash Windows 3.0


rem === Prompt that literally shows %FlashWindows% ===
set "PROMPT=%%FlashWindows%%

rem === AppData ===
set "APPDATA=%ROOT%\AppData\Roaming"
set "LOCALAPPDATA=%ROOT%\AppData\Local"
set "TEMP=%ROOT%\Temp"
set "TMP=%ROOT%\Temp"

rem === Minimum folder structure ===
mkdir "%ROOT%\AppData\Roaming" 2>nul
mkdir "%ROOT%\AppData\Local" 2>nul
mkdir "%TEMP%" 2>nul

rem === Standard user folders ===
mkdir "%ROOT%\Documents" 2>nul
mkdir "%ROOT%\Pictures" 2>nul
mkdir "%ROOT%\Music" 2>nul
mkdir "%ROOT%\Videos" 2>nul
mkdir "%ROOT%\Downloads" 2>nul

rem === Libraries folder ===
set "LIBDIR=%APPDATA%\Microsoft\Windows\Libraries"
mkdir "%LIBDIR%" 2>nul

rem === Auto-generate default Libraries ===

rem Documents.library-ms
> "%LIBDIR%\Documents.library-ms" (
  echo ^<?xml version="1.0" encoding="UTF-8"?^>
  echo ^<libraryDescription xmlns="http://schemas.microsoft.com/windows/2009/library"^>
  echo   ^<name^>Documents^</name^>
  echo   ^<version^>6^</version^>
  echo   ^<isLibraryPinned^>true^</isLibraryPinned^>
  echo   ^<searchConnectorDescriptionList^>
  echo     ^<searchConnectorDescription^>
  echo       ^<simpleLocation^>%ROOT%\Documents^</simpleLocation^>
  echo     ^</searchConnectorDescription^>
  echo   ^</searchConnectorDescriptionList^>
  echo ^</libraryDescription^>
)

rem Pictures.library-ms
> "%LIBDIR%\Pictures.library-ms" (
  echo ^<?xml version="1.0" encoding="UTF-8"?^>
  echo ^<libraryDescription xmlns="http://schemas.microsoft.com/windows/2009/library"^>
  echo   ^<name^>Pictures^</name^>
  echo   ^<version^>6^</version^>
  echo   ^<isLibraryPinned^>true^</isLibraryPinned^>
  echo   ^<searchConnectorDescriptionList^>
  echo     ^<searchConnectorDescription^>
  echo       ^<simpleLocation^>%ROOT%\Pictures^</simpleLocation^>
  echo     ^</searchConnectorDescription^>
  echo   ^</searchConnectorDescriptionList^>
  echo ^</libraryDescription^>
)

rem Music.library-ms
> "%LIBDIR%\Music.library-ms" (
  echo ^<?xml version="1.0" encoding="UTF-8"?^>
  echo ^<libraryDescription xmlns="http://schemas.microsoft.com/windows/2009/library"^>
  echo   ^<name^>Music^</name^>
  echo   ^<version^>6^</version^>
  echo   ^<isLibraryPinned^>true^</isLibraryPinned^>
  echo   ^<searchConnectorDescriptionList^>
  echo     ^<searchConnectorDescription^>
  echo       ^<simpleLocation^>%ROOT%\Music^</simpleLocation^>
  echo     ^</searchConnectorDescription^>
  echo   ^</searchConnectorDescriptionList^>
  echo ^</libraryDescription^>
)

rem Videos.library-ms
> "%LIBDIR%\Videos.library-ms" (
  echo ^<?xml version="1.0" encoding="UTF-8"?^>
  echo ^<libraryDescription xmlns="http://schemas.microsoft.com/windows/2009/library"^>
  echo   ^<name^>Videos^</name^>
  echo   ^<version^>6^</version^>
  echo   ^<isLibraryPinned^>true^</isLibraryPinned^>
  echo   ^<searchConnectorDescriptionList^>
  echo     ^<searchConnectorDescription^>
  echo       ^<simpleLocation^>%ROOT%\Videos^</simpleLocation^>
  echo     ^</searchConnectorDescription^>
  echo   ^</searchConnectorDescriptionList^>
  echo ^</libraryDescription^>
)

rem Downloads.library-ms
> "%LIBDIR%\Downloads.library-ms" (
  echo ^<?xml version="1.0" encoding="UTF-8"?^>
  echo ^<libraryDescription xmlns="http://schemas.microsoft.com/windows/2009/library"^>
  echo   ^<name^>Downloads^</name^>
  echo   ^<version^>6^</version^>
  echo   ^<isLibraryPinned^>true^</isLibraryPinned^>
  echo   ^<searchConnectorDescriptionList^>
  echo     ^<searchConnectorDescription^>
  echo       ^<simpleLocation^>%ROOT%\Downloads^</simpleLocation^>
  echo     ^</searchConnectorDescription^>
  echo   ^</searchConnectorDescriptionList^>
  echo ^</libraryDescription^>
)

echo Profile active. Libraries generated. User folder sandbox generated.

cmd