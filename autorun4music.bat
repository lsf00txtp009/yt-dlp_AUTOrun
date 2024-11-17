@echo off
for /f "tokens=* usebackq" %%A in (`powershell -command "Add-Type -AssemblyName PresentationCore; [System.Windows.Clipboard]::GetText()"`) do set url=%%A
powershell -Command "& { .\yt-dlp.exe -f bestaudio -x --audio-format mp3 '%url%' }"
pause
