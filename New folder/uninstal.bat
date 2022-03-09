@echo off
cls
for /f "tokens=12,*" %%a in ('wmic product list system ^| Find /I "WhatsApp"') do (
set %%a=%%a: =%
msiexec.exe /x %%a /passive /norestart
)