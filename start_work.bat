@echo off

:: Создаём пустые файлы
echo. > main.py
echo. > requirements.txt

:: Генерируем start.cmd с правильным содержимым
(
echo @echo off
echo echo Запускаю скрипт...
echo "%%~dp0venv\Scripts\python.exe" "%%~dp0main.py"
echo pause
) > start.cmd

:: Создаём виртуальное окружение
py -m venv venv

:: Удаляем этот скрипт
del "%~f0"