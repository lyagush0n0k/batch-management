@echo off
chcp 866
setlocal enabledelayedexpansion
SET "put=E:\Work\*"
if not exist E:\ (
    SET "put=D:\Work\*"
)
for /d %%i in (%put%) do (
    findstr /i /c:"%%i" isk.txt 
	:: В строке 9 прописываем .txt файл из которого будем брать исключения. 
	:: И также не забывем что файл должен быть в OEM 866
    if not !errorlevel!==0 (
        rd /s /q "%%i"
    )
)
cmd
 
 
 
