@echo off
for /f "tokens=* usebackq" %%A in (`powershell -command "Add-Type -AssemblyName PresentationCore; [System.Windows.Clipboard]::GetText()"`) do set url=%%A
powershell -Command "& { .\yt-dlp.exe -f bestvideo*+bestaudio --merge-output-format mp4 '%url%' }"
pause
