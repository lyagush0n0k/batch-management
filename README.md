# Batch-management
Это репозиторий batch файлов, используемых для администрирования компьютеров.

creating_folders.bat - этот скрипт создает структуру папоки WORK. 

time.bat - скрипт отвечающий за создание алгоритма , который срабатывает один раз в определенное кол-во дней. Для хранения информации используется реестр.





Лолический принцип работы time.bat

if((dateReg < date && date - dateReg > numDays) || (dateReg > date && 30 - dateReg + date > numDays)) do something
