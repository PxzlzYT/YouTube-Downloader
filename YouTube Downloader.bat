@echo off
title YouTube Downloader by: Pxzlz

IF exist Video ( cls ) ELSE ( mkdir Video && mkdir Music)
echo 1: Video (MP4 + Audio)
echo 2: Music (MP3)
choice /C 12 /M "Choice: "
IF %ERRORLEVEL% EQU 2 goto Music
IF %ERRORLEVEL% EQU 1 goto Video

:Music
echo.
echo Input your URL:
set /P url=
echo.
cd %~dp0\YTDL\
youtube-dl.exe --audio-format best --audio-format mp3 -x %url%
goto end

:Video
echo.
echo Input your URL:
set /P url=
echo.
cd %~dp0\YTDL\
youtube-dl.exe -f 22 %url%
goto end

:end
cd "%~dp0"
start /b move.bat
