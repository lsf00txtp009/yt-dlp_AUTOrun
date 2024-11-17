@echo off
:: 从剪贴板获取URL并存储到变量url
for /f "tokens=* usebackq" %%A in (`powershell -command "Add-Type -AssemblyName PresentationCore; [System.Windows.Clipboard]::GetText()"`) do set url=%%A

:: 使用yt-dlp下载最高品质音频并转换为MP3格式
powershell -Command "& { .\yt-dlp.exe -f bestaudio --audio-quality 320k -x --audio-format mp3 '%url%' }"

pause
