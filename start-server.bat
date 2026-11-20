@echo off
title WordQuest Server
chcp 65001 >nul
cls

echo ===================================================
echo     MEMULAI SERVER LOKAL WORDQUEST UNTUK HP
echo ===================================================
echo.

set JAVA_SERVER="C:\Program Files\Apache NetBeans\jdk\bin\jwebserver.exe"
set WEB_DIR="%~dp0"

for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /c:"IPv4 Address" /c:"Alamat IPv4"') do (
    set IP=%%a
    goto :found_ip
)

:found_ip
set IP=%IP: =%

echo Pastikan HP Anda terhubung ke jaringan Wi-Fi yang sama dengan laptop ini!
echo.
echo 📱 BUKA LINK INI DI BROWSER HP ANDA (Chrome/Edge):
echo.
echo       👉  http://%IP%:8080
echo.
echo (Setelah terbuka di HP, tekan tombol titik tiga di browser HP lalu
echo  pilih 'Instal Aplikasi' atau 'Tambahkan ke Layar Utama')
echo.
echo ===================================================
echo Server sedang berjalan... (Tekan Ctrl+C untuk berhenti)
echo ===================================================
echo.

%JAVA_SERVER% -b 0.0.0.0 -p 8080 -d %WEB_DIR%
pause
