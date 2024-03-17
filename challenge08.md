
@echo off setlocal enabledelayedexpansion
set /p source_path=enter the sources folder path:
set /p destination_path=eenter the destination folder path:
if not exists "!source_path!" (echo error: source folder don't exists. goto :eof)
if not exists "!destination_path!" (echo errror: destination folder don't exists. goto :eof)
robocopy "!source_path!" "!destination_path!" /R
:end
