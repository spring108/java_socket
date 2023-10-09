java socket.java
pause

URL = http://host:port/SM/9/rest/SERVICE_MAME/SD08888888/attachments
Method = POST

Закладка Auth = Basic

Закладка Headers:
Content-Type: application/octet-stream
Content-Disposition: attachment; filename*=UTF-8''qq.txt
Connection: close
Где:
Content-Disposition: attachment; filename*=UTF-8''%D4D4%EE
Content-disposition: attachment;filename*=UTF-8''%D1%82%D0%B5%D1%81%D1%82.txt
URL-кодировка в кодах символов по правилам RFC6266

Закладка Attachments:
Добавляем файл и в его свойствах ставим Content-Type = application/octet-stream

В окне:
Media-type: application/octet-stream
