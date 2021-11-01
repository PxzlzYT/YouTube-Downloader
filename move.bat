@echo off
set cdir=%cd%
cd YTDL\
move *.mp3 "%cdir%"
cls
cd %~dp0
move *.mp3 Music\
cls
cd YTDL\
move *.mp4 "%cdir%"
cls
cd %~dp0
move *.mp4 Video\
cls
taskkill /F /IM cmd.exe
