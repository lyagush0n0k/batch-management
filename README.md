# Batch-management

## **Это репозиторий batch файлов, используемых для администрирования компьютеров.**

***creating_folders.bat** -* этот скрипт создает структуру папок WORK. 

***time.bat*** - скрипт отвечающий за создание алгоритма, который срабатывает один раз в определенное кол-во дней. 

## Принцип работы creating_folders.bat:

**ВАЖНО: файл открывать только в кодировке OEM 866**


 - Третья строчка отвечает за то, через какое кол-во дней будет
          срабатывать скрипт пересоздания папки WORK. 
 - 21 строка отвечает за название корневой директории и ее расположение (по умолчанию
          "targetdir=E:\Work")
  -  22 строка проверяет наличие диска E в системе и при его отсутствии изменяет расположение директории на
       диск D (targetdir=D:\Work)

   Далее следуют названия факультетов и
       групп, им принадлежащем.

## Принцип работы time.bat:

- Первая строчка отвечает за то, через какое кол-во дней будет срабатывать скрипт записанный после 16 строки.

	***set /A numDays=X***
	где X - кол-во дней между выполнением скрипта.

- Логический принцип вычисления разности дат:
*if((dateReg < date && date - dateReg > numDays) || (dateReg > date && 30 - dateReg + date > numDays)) do* 

**Для хранения даты используется ветка реестра: *HKEY_CURRENT_USER\time***



## Принцип работы файла delete.bat

**ВАЖНО: файл открывать только в кодировке OEM 866**

Данный скрипт производит удаление лишних директорий в папке WORK.

- в строке 9 прописывается .txt файл с исключениями (файл должен быть в кодировке OEM 866)

## Принцип работы файла [delete_desktop.bat](https://github.com/lyagush0n0k/batch-management/blob/main/delete_desktop "delete_desktop")
**ВАЖНО: файл открывать только в кодировке OEM 866**

Данный файл выполняет удаление **ВСЕХ** файлов в папках: Desktop, Documents, Downloads.

## Принцип работы файла joke.bat
Данный файл шутка, он выводит информацию о всех найденных файлах на диске и выводит текст, что все они были удалены :))

