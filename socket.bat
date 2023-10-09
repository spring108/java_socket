java socket.java
pause
это файл SWAGGER \ openapi.yaml

#---------------------------------------------------------------------------#
# Версия спецификации OpenAPI
#---------------------------------------------------------------------------#
openapi: "3.0.3"
#---------------------------------------------------------------------------#
# Метаданные об API
#---------------------------------------------------------------------------#
info:
  title: "Rosbank Micro Focus Service Manager API"
  description: "Вы можете использовать Rest API для выполнения запросов и операций над данными Service Manager через единый URI.  Используя Rest API, вы можете создать приложение, которое может выполнять действия по созданию, чтению, обновлению и удалению объектов Service Manager."
  termsOfService: "http://swagger.io/terms/"
  contact:
    name: "Admins-SM"
    url: "https://kb.rosbank.rus.socgen/display/SM1"
    email: "Admins-SM@rosbank.ru"
  license:
    name: "Apache 2.0"
    url: "https://httpd.apache.org/"
  version: "1.0.0"
#---------------------------------------------------------------------------#
# Дополнительная внешняя документация
#---------------------------------------------------------------------------#
externalDocs:
  description: "Официальная документация по Web-сервисам MFSM"
  url: "https://s3.amazonaws.com/smhelpcenter/smhelp941/codeless/index.html#webservicesguide/concepts/purpose.htm%3FTocPath%3DGuides%2520and%2520reference%7CWeb%2520Services%2520Guide%7C_____0"
#---------------------------------------------------------------------------#
# Массив Серверных объектов, которые предоставляют информацию о подключении
# к целевому серверу
#---------------------------------------------------------------------------#
servers:
  - url: "https://mfsmswagger.rosbank.rus.socgen/smcert/SM/9/rest/"
    description: "CERT"
  - url: "https://mfsmswagger.rosbank.rus.socgen/smtest/SM/9/rest/"
    description: "TEST"
  - url: "https://mfsmswagger.rosbank.rus.socgen/smdev/SM/9/rest/"
    description: "DEV"
#---------------------------------------------------------------------------#
# Список тегов, используемых спецификацией, с дополнительными метаданными
#---------------------------------------------------------------------------#
tags:
  - name: "Протокол"
    description: "Работа с протоколом"
  - name: "Рабочие группы"
    description: |- 
                  Работа с Рабочими группами(РГ)
                  <details><summary>Описание полей</summary>
                  | Поле Веб-сервиса | Тип поля | Описание поля |
                  | ------------------|------------------|------------------|
                  | ID | StringType | ID группы (WG*) |
                  | Name | StringType | Название |
                  | ManagerLogin | StringType | Руководитель |
                  | Blocked | BooleanType | Группа неактивна |
                  | Operators | ArrayType | Сотрудники |
                  | WorkRFT | BooleanType | Работа с запросами, изменениями и нарядами |
                  | WorkIM | BooleanType | Работа с IM |
                  </details>
  - name: "Наряд по изменению"
    description: |- 
                  Работа с  Нарядами(T*)
                  <details><summary>Описание полей</summary>
                  | Поле Веб-сервиса | Тип поля | Описание поля |
                  | ------------------|------------------|------------------|
                  | Number | StringType | Номер наряда |
                  | Status | StringType | Статус |
                  | OpenTime | StringType | Дата Открытия |
                  | ParentTitle | StringType | Описание запроса |
                  | Requestor | StringType | Заявитель запроса - код |
                  | Title | StringType | Краткое описание |
                  | Description | ArrayType | Детальное описание |
                  | Parent | StringType | Номер Изменения|
                  | Group | StringType | Рабочая группа |
                  | Assignee | StringType | Исполнитель |
                  | ResolutionCode | StringType | Код Закрытия |
                  | Resolution | ArrayType | Результат |
                  | CopyResult | BooleanType | Копировать в решение запроса |
                  | SLAbreak | StringType | Причина нарушения SLA |
                  | TimeAdd | StringType | потрпченное время (указывать в минутах) |
                  | IncID | StringType | номер Обращения |
                  | TypeAnswer | StringType | Тип решения |
                  </details>
  - name: "Контакты"
    description: |- 
                  Работа с Контактами
                  <details><summary>Описание полей</summary>
                  | Поле Веб-сервиса  | Тип поля | Описание поля |
                  | --------------------|---------------------|---------------------|
                  | operator_id | StringType | логин |
                  | user_id | StringType | Табельный номер |
                  | first_name | StringType | Фамилия |
                  | last_name| StringType | Имя |
                  | third_name | StringType | Отчество |
                  | dept | StringType | Департамент |
                  | title | StringType | Должность |
                  | tps_date_of_hire | DateTimeType | Дата приема на работу|
                  | tps_area_id | StringType | Площадка |
                  | rb_head | StringType | Руководитель из IDM |
                  | tps_approval_group_id | StringType | Руководители |
                  | shift | StringType | Признак руководителя|
                  | tps_outstaff | BooleanType | Аутстаффер |
                  | contact_phone | StringType | Телефон (основной) |
                  | email | StringType | email(основной) |
                  | tps_blocked | BooleanType | Пользователь блокирован |
                  | rb_flex | BooleanType | Flex |
                  | fullName | StringType | Полное имя |
                  | contactName | StringType | Код SM |
                  </details>
  - name: "Сводка (rbsummary)"
    description: |- 
                  <details><summary>Описание полей</summary>
                  | Поле Веб-сервиса  | Тип поля | Описание поля |
                  | --------------------|---------------------|---------------------|
                  | IncID | StringType | Номер обращения |
                  | Summary | ArrayType | Сводка |
                  </details> 
  - name: "Обращение (SD) (RB_WS_REQUEST)"
    description: |- 
                  Создание обращения по заявке Rxxxx универсальным веб-сервисом
                  <details><summary>Описание полей</summary>
                  | Поле Веб-сервиса  | Тип поля | Описание поля |
                  | --------------------|---------------------|---------------------|
                  | User | StringType | УЗ заявителя |
                  | Info | StringType | Перечень параметров из соответствующего файла заявки через «///».<br>Параметры заявки можно посмотреть на ресурсе<br>"https://kb.rosbank.rus.socgen/pages/viewpage.action?pageId=380532734"|
                  | SdNum | StringType | Номер созданного обращения |
                  | TplNumber | StringType | Номер заявки (Rxxxx) |
                  </details>
  - name: "Обращение (SD) (RB_WS_PORTAL)"
    description: |- 
                  Создание обращения по заявке Rxxxx от ППП
                  <details><summary>Описание полей</summary>
                  | Поле Веб-сервиса  | Тип поля | Описание поля |
                  | --------------------|---------------------|---------------------|
                  | User | StringType | УЗ заявителя |
                  | number | StringType | Номер созданного обращения"|
                  | RNumber | StringType | Номер заявки (Rxxxx) |
                  | RTNumber | StringType | Номер шаблона обращения (RTxxxx) |
                  | integrName | StringType | Наименование системы (указывать PPP) |
                  | integrID | StringType | Номер обращения ППП |
                  | conactEmail | StringType | email |
                  | contactPhone | StringType | Номер телефона |
                  | locationID | StringType | Код площадки |
                  | rb.summary[Key] | StringType | Наименование атрибута сводки/параметра |
                  | rb.summary[Value] | StringType | Значение атрибута сводки/параметра |
                  | rb.summary[Visible] | BooleanType | Отображение в сводке |
                  </details>
  - name: "Обращение (SD) (RB_WS_RICHELIEU)"
    description: |- 
                  Создание обращения по заявке R2654 от Ришелье
                  <details><summary>Описание полей</summary>
                  | Поле Веб-сервиса  | Тип поля | Описание поля |
                  | --------------------|---------------------|---------------------|
                  | UserID | StringType | Логин Заявителя |
                  | UserEmail | StringType | Email Заявителя |
                  | rb.summary[Key] | StringType | Наименование параметра |
                  | rb.summary[Value] | StringType | Значение параметра |
                  | rb.summary[Visible] | BooleanType | Отображение в сводке |
                  </details>
  - name: "Обращение (SD) (RBincidentsPortal)"
    description: |- 
                  Создание/обновление обращения
                  <details><summary>Описание полей</summary>
                  | Поле Веб-сервиса  | Тип поля | Описание поля |
                  | --------------------|---------------------|---------------------|
                  | number | StringType | Номер созданного обращения |
                  | claimer | StringType | УЗ заявителя |
                  | ownerName | StringType | УЗ контактного лица |
                  | contact_person | StringType | ФИО контактного лица |
                  | deadline | DateTimeType | Крайний срок |
                  | priority | StringType | Приоритет |
                  | entry_point | DateTimeType | Точка входа |
                  | detail_description | ArrayType | Описание со слов обратившегося |
                  | state | StringType | Состояние |
                  | reception_method | StringType | Способ поступления |
                  | short_description | StringType | Краткое описание |
                  | status | StringType | Статус |
                  | protocolNumber | StringType | Номер протокола/оценка |
                  | protocolText | ArrayType | Текст протокола |
                  | notArchive | BooleanType | Не архивировать |
                  | protocolOperator | StringType | УЗ сотрудника, создавшего протокол |
                  | template | StringType | Номер заявки R |
                  | category | StringType | Категория. 2 значения:<br>«RB Incident»/«RB Request for Service» |
                  | rb.integration.number[integrName] | StringType | Наименование системы (ППП) |
                  | rb.integration.number[integrID] | StringType | Номер обращения ППП |
                  | serviceID | StringType | Услуга |
                  | itSystemID | StringType | ИТ-система |
                  | notActual | BooleanType | Не актуально |
                  | contactPhone | StringType | Телефон |
                  | conactEmail | StringType | Электронная почта |
                  | locationID | StringType | Площадка |
                  | probsummaryID | StringType | Номер инцидента |
                  | Impact | StringType | Влияние |
                  | Severity | StringType | Срочность |
                  | Subcategory | StringType | Подкатегория |
                  | ConfItem | StringType | КЕ |
                  | rating | LongType | Рейтинг Ришелье |
                  | resolution | ArrayType | Результат |
                  | resolutionCode | StringType | Код закрытия |
                  | completionTime | DateTimeType | Время выполнения |
                  </details>
  - name: "Форма критичного инцидента(форма КИ)"
    description: |- 
                  <details><summary>Описание полей</summary>
                  | Поле Веб-сервиса  | Тип поля | Описание поля |
                  | --------------------|---------------------|---------------------|
                  | number | StringType | Номер инцидента |
                  | Summary | StringType | Наименование мероприятия |
                  | actionPlan | ArrayType | Описание мероприятия |
                  | assignee | StringType | Ответственный за создание AP |
                  | eventAssignee | StringType | Ответственный исполнитель мероприятия |
                  | deptEvent | StringType | Подразделение ГО, ответственное за исполнение мероприятия подразделение |
                  | deptHead  | StringType | Руководитель подразделения |
                  | dueDate | DateTimeType | Новый срок исполнения |
                  | report | ArrayType | Отчет об исполнении |
                  | sendORMTool | BooleanType | Отправить AP в ORM Tool |
                  | issueKey | StringType | Номер проблемы в Jir |
                  | Title | StringType | Краткое описание |
                  | Service | StringType | Система (сервис), сбой в работе которого привел к инциденту |
                  | Team | ArrayType | Команда, ответственная за сбой |
                  | Priority | StringType | Текущий приоритет |
                  | ServiceImpact | ArrayType | На какие ИТ-системы было влияние? |
                  | FromTimeImpact | ArrayType | Время начала влияния |
                  | TillTimeImpact | ArrayType | Время окончания влияния |
                  | DurationImpact | ArrayType | Продолжительность влияния |
                  | Inaccessibility | ArrayType | Недоступность |
                  | Rto | StringType | Было ли превышение RTO для ИТ-системы |
                  | ImpactDbofl | BooleanType | Было ли влияние на ДБО ФЛ (СБП, Сайт, P2P) |
                  | ImpactDboul | BooleanType | Было ли влияние на ДБО ЮЛ (ИКБ, ДБО PRO) |
                  | ImpactCard | BooleanType | Было ли влияние на Карты (пластик, 3DS) |
                  | ImpactIndound | BooleanType | Было ли влияние на КЦ Inbound (в т.ч ошибочные SMS) |
                  | ImpactRegional | BooleanType | Было ли влияние на Региональную сеть (офисы) |
                  | ImpactBus | ArrayType | На какие Бизнес-функции или клиентские сервисы было влияние? Укажите масштаб влияния? |
                  | EventType | StringType | Тип события операционного риска |
                  | OccurrenceTime | DateTimeType | Время возникновения инцидента |
                  | BFrom | DateTimeType | Время начала влияния на бизнес |
                  | BTill | DateTimeType | Время окончания влияния на бизнес |
                  | BDuration | StringType | Продолжительность влияния сбоя на бизнес |
                  | Category | StringType | Укажите категорию причины |
                  | Subcategory | StringType | Укажите подкатегорию |
                  | ReportReason | ArrayType | Подробно опишите корневую причину возникновения инцидента |
                  | CandidateION | BooleanType | Кандидат ИОН |
                  </details>
  - name: "КЕ тип База Данных (RB_WS_Device_DB)"
    description: |- 
                  Получение КЕ типа База Данных
                  <details><summary>Описание полей</summary>
                  | Поле Веб-сервиса  | Тип поля | Описание поля |
                  | --------------------|---------------------|---------------------|
                  | Id | StringType | ID КЕ |
                  | Status | StringType | Статус |
                  | Owner | StringType | Владелец КЕ |
                  | Name | StringType | Наименование |
                  | DatabaseManagementSystem | StringType | Версия |
                  | InstanceName | StringType |  instance name |
                  | type | StringType | Тип |
                  </details>
  - name: "КЕ тип Экземпляр ИТ-системы (RB_WS_Device_Unit_ITSys)"
    description: |- 
                  Получение КЕ типа Экземпляр ИТ-системы
                  <details><summary>Описание полей</summary>
                  | Поле Веб-сервиса  | Тип поля | Описание поля |
                  | --------------------|---------------------|---------------------|
                  | Id | StringType | ID КЕ |
                  | Status | StringType | Статус |
                  | Owner | StringType | Владелец КЕ |
                  | Name | StringType | Наименование |
                  | Environment | StringType | Тип среды |
                  | ITSystemManager | StringType | Менеджер ИТ-системы |
                  | ITSystemManagerLogin | StringType | Менеджер ИТ-системы Логин |
                  | type | StringType | Тип |
                  | DeptDirector | StringType | Директор департамента |
                  | ITSystemManagerDeputy | StringType | Зам. менеджера |
                  | ITSystemManagerLoginDeputy | StringType | Зам. менеджера логин |
                  | CIAdmin | StringType | Администратор КЕ |
                  </details>
  - name: "КЕ тип ИТ-система (RB_WS_Device_ITSystems)"
    description: |- 
                  Получение КЕ типа ИТ-система
                  <details><summary>Описание полей</summary>
                  | Поле Веб-сервиса  | Тип поля | Описание поля |
                  | --------------------|---------------------|---------------------|
                  | SystemID | StringType | ID КЕ |
                  | ApplicationName | StringType | Наименование |
                  | AlternativeName | StringType | Альтернативное наименование |
                  | ApplicationNameeng | StringType | International name |
                  | BusinessAnalyst | StringType | ФИО ответственного работника |
                  | BusinessAnalystLogin | StringType | Логин ответственного работника |
                  | CompanyOwner | StringType | Компания-владелец |
                  | Ownerregistry | StringType | Владелец ИТ-системы |
                  | Vendor | StringType | Производитель |
                  | Version | StringType | Версия |
                  | Vital | StringType | Vital |
                  | AccessCategory | StringType | Категория доступа:<br>10 - Общедоступный ресурс;<br>20 - Ресурс с ограниченным доступом;<br>30 - Закрытый ресурс;<br>40 - Внутренний ресурс подразделения |
                  | Hosting | StringType | Тип хостинга |
                  | Status | StringType | Статус:<br>05 - Исследование;<br>10 - Новый/В разработке;<br>30 - Опытная эксплуатация;<br>40 - В эксплуатации;<br>90 - В архивном режиме;<br>91 - Декомиссия;<br>80 - Снят с эксплуатации |
                  | DecomissionningDate | DateType | Дата вывода из эксплуатации |
                  | RegistrationDate | DateType | Дата регистрации |
                  | LastChangeDate | DateType | Дата последнего изменения |
                  | Golivedate | DateType | Дата ввода в эксплуатацию |
                  | ApplicationManager | StringType | Менеджер ИТ-системы |
                  | ApplicationManagerLogin | StringType | Логин менеджера IT-системы |
                  | RPO | StringType | RPO целевое |
                  | RTO | StringType | RTO целевое |
                  | Sensitivitycriticalityregistry | StringType | Чувствительность |
                  | Integrity | StringType | Integrity |
                  | Confidentiality | StringType | Confidentiality |
                  | Availability | StringType | Availability |
                  | Traceability | StringType | Sensivity Category |
                  | AccessfromInternet | StringType | Доступ из интернета:<br>Передавать в виде текста либо «true»,<br>либо «false» |
                  | PCIDSS | StringType | Обработка PCI DSS:<br>Передавать в виде текста либо «true»,<br>либо «false» |
                  | InfoSecOfficerregistry | StringType | Офицер ИБ |
                  | type | StringType | Тип КЕ |
                  | Assignment | StringType | Домен владельца |
                  | InfoSecOfficerregistryId | StringType | Логин rb Офицера ИБ |
                  | Owner | StringType | Владелец КЕ |
                  | DateSensitivity | DateType | Дата оценки |
                  | PlannedDateDecom | DateType | Плановая дата вывода из эксплуатации |
                  | OwnerregistryID | StringType | Логин Владельца ИТ-системы |
                  | ProcessCriticality | StringType | Process Criticality BIA |
                  | Ident | StringType | Идентификатор |
                  | ResponsibleDev | StringType | Логин ответственного от развития |
                  | ResponsibleDevName | StringType | Ответственный от развития |
                  | ResponsibleDevDept | StringType | Подразделение развития |
                  | DescriptionIT | ArrayType | Описание (которое хранится на вкладке "ИТ-система") |
                  </details>
  - name: "КЕ тип Сервер (RB_WS_Device_Server)"
    description: |- 
                  Получение КЕ типа Сервер
                  <details><summary>Описание полей</summary>
                  | Поле Веб-сервиса  | Тип поля | Описание поля |
                  | --------------------|---------------------|---------------------|
                  | id | StringType | ID КЕ |
                  | title | StringType | Наименование |
                  | status | StringType | Статус:<br>40 = В эксплуатации;<br>80 = Снят с эксплуатации |
                  | dateReg | DateTime | Дата регистрации |
                  | dateStartDev | DateTime | Дата начала разработки |
                  | dateInstall | DateTime | Дата ввода в эксплуатацию |
                  | dateStartShutdown | DateTime | Дата начала отключения |
                  | dateDecommiss | DateTime | Дата вывода из эксплуатации |
                  | unitNumber | StringType | Номер юнита |
                  | location | StringType | Размещение |
                  | rack | StringType | Стойка |
                  | serialNumber | StringType | Серийный номер |
                  | model | StringType | Модель |
                  | operSystem | StringType | Операционная система |
                  | dnsName | StringType | DNS имя |
                  | typeProcessor | StringType | Тип процессоров |
                  | totalCore | StringType | Общее количество ядер |
                  | countProcessor | StringType | Количество процессоров |
                  | countCore | StringType | Количество ядер |
                  | typeServer | StringType | Тип |
                  | clusterName | StringType | Имя кластера |
                  | constructiveExec | StringType | Конструктивное исполнение |
                  | adapterDisk | StringType | Адаптер дискового массива |
                  | domain | StringType | Домен |
                  | ram | StringType | Объем установленной ОЗУ |
                  | slotNumber | StringType | Номер слота |
                  | switchType | StringType | Тип интерфейса управления |
                  | switch | StringType | Коммутатор |
                  | switchPort | StringType | Порт коммутатора |
                  | mountPoint | StringType | Точка монтирования |
                  | discSize | ArrayType | Размер диска |
                  | discName | ArrayType | Имя диска |
                  | discType | ArrayType | Тип диска |
                  | discId | ArrayType | ID диска |
                  | ipAddress | Structure | IP Адрес |
                  | subnetworkName | Structure | Подсеть |
                  | gatewayName | Structure | Шлюз |
                  | macAddress | Structure | MAC Адрес |
                  | type | StringType | Тип КЕ |
                  | vendor | StringType | Производитель |
                  | owner | StringType | Владелец КЕ |
                  | lastChangeDate | DateTime | Дата последнего изменения КЕ |
                  | powerStatus | StringType | Состояние |
                  </details>
  - name: "KE тип Банкомат (RB_WS_DEVICE_ATM)"
    description: |- 
                  Обновление полей КЕ Банкомат для Serenare
                  <details><summary>Описание полей</summary>
                  | Поле Веб-сервиса  | Тип поля | Описание поля |
                  | --------------------|---------------------|---------------------|
                  | SoftUsed | StringType | ПО АТМ \ Сборка ATM |
                  | SoftUsedVer | StringType | ПО АТМ \ Номер версии TellME |
                  | VerSPTellme | StringType | ПО АТМ \ Версия SP TellME |
                  | VerHFTellme | StringType | ПО АТМ \ Версия HF TellME |
                  | VerTellmeSecurity | StringType | ПО АТМ \ Версия TellME Security |
                  | VerWin | StringType | ПО АТМ \ Версия Windows |
                  | VerXFS | StringType | ПО АТМ \ Версия XFS |
                  | VerHtmlSet | StringType | ПО АТМ \ Версия HTML набора |
                  | VerAD | StringType | ПО АТМ \ Версия рекламы |
                  | VerVideoAgent | StringType | ПО АТМ \ Версия агент видео наблюдения |
                  </details>
  - name: "Наряд по запросу"
    description: |- 
                  Работа с  Нарядами(RFT*)
                  <details><summary>Описание полей</summary>
                  | Поле Веб-сервиса | Тип поля | Описание поля |
                  | ------------------|------------------|------------------|
                  | Number | StringType | Номер наряда |
                  | Status | StringType | Статус |
                  | ResolutionCode | StringType | Код закрытия |
                  | AssigneeName | StringType | Исполнитель |
                  | GroupId | StringType | Рабочая группа |
                  | SLABreakReason | StringType | Причина нарушения SLA |
                  | Resolution | ArrayType | Результат |
                  | Title | StringType | Краткое описание |
                  | Description | ArrayType | Детальное описание |
                  | Priority | StringType | Приоритет |
                  | Deadline | DateTimeType | Крайний срок |
                  | ItSystem | StringType | ИТ-система |
                  | Impact | StringType | Влияние |
                  | Service | StringType | Услуга |
                  | CompletionTime | DateTimeType | Время выполнения |
                  | CopyResult | BooleanType | Копировать в решение запроса |
                  | State | StringType | Состояние в Jira |
                  </details>
  - name: "Инциденты (IM*)"
    description: |-
                  Методы работы с инцидентами 
                  <details><summary>Описание полей</summary>
                  | Поле Веб-сервиса | Тип поля | Описание поля |
                  | ------------------|------------------|------------------|
                  | Number | StringType | Номер инцидента |
                  | Status | StringType | Статус |                  
                  | Title | StringType | Краткое описание |
                  | GroupId | StringType | Рабочая группа |
                  | AssigneeName | StringType | Исполнитель |
                  | SLABreakReason | StringType | Причина нарушения SLA |
                  | ReportReason | ArrayType | Решение и предпринятые действия |
                  | ResolutionCode | StringType | Код закрытия |
                  | FixType | StringType | Тип решения |
                  | RiskGroup | StringType | Группа причин |
                  | Reason | StringType | Причина |
                  | Resolution | ArrayType | Информация заявителю |
                  | State | StringType | Состояние |
                  | PlannedDateRealization | DateTimeType | Плановая дата реализации |
                  | ResolveRegistrar | BooleanType | Могло быть решено регистратором |
                  | Description | ArrayType | описание со слов обратившегося |
                  | SmType | StringType | Категория инцидента|
                  | Priority | StringType | приоритет |
                  | Deadline | StringType | Крайний срок|
                  | ItSystem | StringType | ИТ-система |
                  | Impact | StringType | Влияние |
                  | Service | StringType | услуга |
                  | CompletionTime | StringType | Время выполнения |
                  </details>
  - name: "История KE"
    description: |-
                  Получение истории изменений по КЕ 
                  <details><summary>Описание полей</summary>
                  | Поле Веб-сервиса | Тип поля | Описание поля |
                  | ------------------|------------------|------------------|
                  | ID | StringType | SM ID |
                  | number | StringType | Код КЕ |
                  | Type | StringType | Тип |
                  | OperatorId | StringType | ID Оператора |
                  | OperatorName | StringType | Оператор |
                  | ChangedField | StringType | изменяемое поле |
                  | OldValue | ArrayType | Значение до |
                  | NewValue | ArrayType | Значение после |
                  | TimeSort | DateType | дата/время |
                  | TimeInfo | StringType | дата/время |
                  </details>
#---------------------------------------------------------------------------#
# Доступные пути и операции для API
#---------------------------------------------------------------------------#
paths:
  /RBprotocolCreate:
    get:
      tags:
        - "Протокол"
      summary: "Получить список всех записей протокола"
      operationId: "GetRBprotocolCreate"
      parameters:
        - $ref: '#/components/parameters/StrParamQueryInQuery'
        - $ref: '#/components/parameters/StrParamViewInQuery'
        - $ref: '#/components/parameters/StrParamStartInQuery'
        - $ref: '#/components/parameters/StrParamCountInQuery'
        - $ref: '#/components/parameters/StrParamSortInQuery'
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json (condense):
              schema:
                  $ref: '#/components/schemas/RBprotocolCreateResponseCondenseList'
            application/json (expand):
              schema:
                  $ref: '#/components/schemas/RBprotocolCreateResponseExpandList'
            application/json (summary):
              schema:
                  $ref: '#/components/schemas/BaseSummary'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: []
    post:
      tags:
        - "Протокол"
      summary: "Добавить запись протокола"
      operationId: "PostRBprotocolCreate"
      requestBody:
        $ref: '#/components/requestBodies/requestBodyAdd'
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json:
              schema:
                  $ref: '#/components/schemas/RBprotocolCreateResponseExpand'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: []
  /RBprotocolSendNewMsgSP:
    post:
      tags:
        - "Протокол"
      summary: "Добавить запись протокола"
      operationId: "PostRBprotocolSendNewMsgSP"
      requestBody:
        $ref: '#/components/requestBodies/requestBodyRBprotocolSendNewMsgSP'
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json:
              schema:
                  $ref: '#/components/schemas/RBprotocolSendNewMsgSPResponseExpand'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: []
  /RBprotocolCreate/{ID}:
    get:
      tags:
        - "Протокол"
      summary: "Получить конкретную запись протокола"
      operationId: "GetRBprotocolCreateID"
      parameters:
        - $ref: '#/components/parameters/ReqStrParamIDInPath'
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json:
              schema:
                  $ref: '#/components/schemas/RBprotocolCreateResponseExpand'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: []
    put:
      tags:
        - "Протокол"
      summary: "Изменить конкретную запись протокола"
      operationId: "PutRBprotocolCreate"
      parameters:
        - $ref: '#/components/parameters/ReqStrParamIDInPath'
      requestBody:
        $ref: '#/components/requestBodies/requestBodyUpdate'
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json:
              schema:
                  $ref: '#/components/schemas/RBprotocolCreateResponseExpand'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: []
  /RBprotocolCreate/{ID}/action/{Action}:
    post:
      tags:
        - "Протокол"
      summary: "Выполнить действие над записью протокола"
      operationId: "PostRBprotocolCreateAction"
      parameters:
        - $ref: '#/components/parameters/ReqStrParamIDInPath'
        - $ref: '#/components/parameters/ReqStrParamRBprotocolCreateActionInPath'
      requestBody:
        $ref: '#/components/requestBodies/requestBodyUpdate'
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json:
              schema:
                  $ref: '#/components/schemas/RBprotocolCreateResponseExpand'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: []
  /RBprotocolCreate/{ID}/attachments/:
    post:
      tags:
        - "Протокол"
      summary: "Добавить вложение в запись протокола"
      operationId: "PostRBprotocolCreateAttachments"
      parameters:
        - $ref: '#/components/parameters/ReqStrParamIDInPath'
        - $ref: '#/components/parameters/ReqStrParamContentDispositionInHeader'
      requestBody:
        $ref: '#/components/requestBodies/AttachmentsAdd'
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json:
              schema:
                  $ref: '#/components/schemas/AttachmentsResponse'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: []
  #---------------------------------------------------------#
  # Tag: (РГ) RB_WS_assignment
  #---------------------------------------------------------#
  /RB_WS_assignment:
    get:
      tags:
        - "Рабочие группы"
      summary: "Получить список всех РГ"
      operationId: "RB_WS_assignment"
      parameters:
        - $ref: '#/components/parameters/StrParamQueryInQuery'
        - $ref: '#/components/parameters/StrParamViewInQuery'
        - $ref: '#/components/parameters/StrParamStartInQuery'
        - $ref: '#/components/parameters/StrParamCountInQuery'
        - $ref: '#/components/parameters/StrParamSortInQuery'
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json (condense):
              schema:
                  $ref: '#/components/schemas/RB_WS_assignmentResponseCondenseList'
            application/json (expand):
              schema:
                  $ref: '#/components/schemas/RB_WS_assignmentResponseExpandList'
            application/json (summary):
              schema:
                  $ref: '#/components/schemas/BaseSummary'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: []
  /RB_WS_assignment/{ID}:
    get:
      tags:
        - "Рабочие группы"
      summary: "Получить конкретную запись РГ"
      operationId: "RB_WS_assignmentID"
      parameters:
        - $ref: '#/components/parameters/ReqStrParamIDInPath'
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json:
              schema:
                  $ref: '#/components/schemas/RB_WS_assignmentResponseExpand'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: [] 
  #---------------------------------------------------------#
  # Tag: (РГ) RB_WS_assignment END
  #---------------------------------------------------------#
  #---------------------------------------------------------#
  # Tag: (T*) RB_WS_cm3tAction
  #---------------------------------------------------------#
  /RB_WS_cm3tAction:
    get:
      tags:
        - "Наряд по изменению"
      summary: "Получить список всех нарядов (T*)"
      operationId: "RB_WS_cm3tAction"
      parameters:
        - $ref: '#/components/parameters/StrParamQueryInQuery'
        - $ref: '#/components/parameters/StrParamViewInQuery'
        - $ref: '#/components/parameters/StrParamStartInQuery'
        - $ref: '#/components/parameters/StrParamCountInQuery'
        - $ref: '#/components/parameters/StrParamSortInQuery'
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json (condense):
              schema:
                  $ref: '#/components/schemas/RB_WS_cm3tActionResponseCondenseList'
            application/json (expand):
              schema:
                  $ref: '#/components/schemas/RB_WS_cm3tActionResponseExpandList'
            application/json (summary):
              schema:
                  $ref: '#/components/schemas/BaseSummary'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: []
  /RB_WS_cm3tAction/{ID}:
    get:
      tags:
        - "Наряд по изменению"
      summary: "Получить конкретный наряд(T*)"
      operationId: "RB_WS_assignmentID"
      parameters:
        - $ref: '#/components/parameters/ReqStrParamIDInPath'
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json:
              schema:
                  $ref: '#/components/schemas/RB_WS_cm3tActionResponseExpand'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: []
  /RB_WS_cm3tAction/{ID}/action/{Action}:
    post:
      tags:
        - "Наряд по изменению"
      summary: "Выполнить действие над нарядом (T*)"
      operationId: "PostRB_WS_cm3tActionAction"
      parameters:
        - $ref: '#/components/parameters/ReqStrParamIDInPath'
        - $ref: '#/components/parameters/ReqStrParamRB_WS_cm3tActionActionInPath'
      requestBody:
        $ref: '#/components/requestBodies/requestBodyRB_WS_cm3tActioninwork'
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json:
              schema:
                  $ref: '#/components/schemas/RB_WS_cm3tActionResponseExpand'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: [] 
  #---------------------------------------------------------#
  # Tag: (T*) RB_WS_cm3tAction END
  #---------------------------------------------------------# 
  #---------------------------------------------------------#
  # Tag: RBcontactsPortal
  #---------------------------------------------------------#
  /RBcontactsPortal:
    get:
      tags:
        - "Контакты"
      summary: "Получить список всех контактов"
      operationId: "RBcontactsPortal"
      parameters:
        - $ref: '#/components/parameters/StrParamQueryInQuery'
        - $ref: '#/components/parameters/StrParamViewInQuery'
        - $ref: '#/components/parameters/StrParamStartInQuery'
        - $ref: '#/components/parameters/StrParamCountInQuery'
        - $ref: '#/components/parameters/StrParamSortInQuery'
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json (condense):
              schema:
                  $ref: '#/components/schemas/RBcontactsPortalResponseCondenseList'
            application/json (expand):
              schema:
                  $ref: '#/components/schemas/RBcontactsPortalResponseExpandList'
            application/json (summary):
              schema:
                  $ref: '#/components/schemas/BaseSummary'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: [] 
  /RBcontactsPortal/{ID}:
    get:
      tags:
        - "Контакты"
      summary: "Получить конкретный контакт"
      operationId: "RBcontactsPortalID"
      parameters:
        - $ref: '#/components/parameters/ReqStrParamIDInPath'
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json:
              schema:
                  $ref: '#/components/schemas/RBcontactsPortalResponseExpand'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: []
    post:
      tags:
        - "Контакты"
      summary: "Обновить запись контакта"
      operationId: "PostRBcontactsPortal"
      parameters:
        - $ref: '#/components/parameters/ReqStrParamIDInPath'
      requestBody:
        $ref: '#/components/requestBodies/requestBodyRBcontactsPortalPOST'
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json:
              schema:
                  $ref: '#/components/schemas/RBcontactsPortalResponseExpand'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: []
    put:
      tags:
        - "Контакты"
      summary: "Обновить площадку контакта"
      operationId: "PutRBcontactsPortal"
      parameters:
        - $ref: '#/components/parameters/ReqStrParamIDInPath'
      requestBody:
        $ref: '#/components/requestBodies/requestBodyRBcontactsPortalPUT'
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json:
              schema:
                  $ref: '#/components/schemas/RBcontactsPortalResponseExpand'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: []  
  #---------------------------------------------------------#
  # Tag: RBcontactsPortal END
  #---------------------------------------------------------# 
  #---------------------------------------------------------#
  # Tag: RB_WS_rbsummary
  #---------------------------------------------------------#
  /RB_WS_rbsummary/{ID}:
    get:
      tags:
        - "Сводка (rbsummary)"
      summary: "Получить сводку из обращения"
      operationId: "RB_WS_rbsummary"
      parameters:
        - $ref: '#/components/parameters/ReqStrParamIDInPath'
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json:
              schema:
                  $ref: '#/components/schemas/RB_WS_rbsummaryResponseExpand'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: []  
  #---------------------------------------------------------#
  # Tag: RB_WS_rbsummary END
  #---------------------------------------------------------#
  #---------------------------------------------------------#
  # Tag: Обращение (SD) (RB_WS_REQUEST)
  #---------------------------------------------------------#
  /RB_WS_REQUEST:
    post:
      tags:
        - "Обращение (SD) (RB_WS_REQUEST)"
      summary: "Создание обращения по заявке Rxxxx"
      operationId: "PostRB_WS_REQUEST"
      requestBody:
        $ref: '#/components/requestBodies/requestBodyRB_WS_REQUESTAdd'
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json:
              schema:
                  $ref: '#/components/schemas/RB_WS_REQUESTResponseExpand'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: [] 
  #---------------------------------------------------------#
  # Tag: Обращение (SD) (RB_WS_REQUEST) END
  #---------------------------------------------------------#
  #---------------------------------------------------------#
  # Tag: Обращение (SD) (RB_WS_PORTAL)
  #---------------------------------------------------------#
  /RB_WS_PORTAL:
    post:
      tags:
        - "Обращение (SD) (RB_WS_PORTAL)"
      summary: "Создание обращения по заявке Rxxxx"
      operationId: "PostRB_WS_PORTAL"
      requestBody:
        $ref: '#/components/requestBodies/requestBodyRB_WS_PORTALAdd'
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json:
              schema:
                  $ref: '#/components/schemas/RB_WS_PORTALResponseExpand'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: []
  /RB_WS_PORTAL/{number}/attachments/:
    post:
      tags:
        - "Обращение (SD) (RB_WS_PORTAL)"
      summary: "Добавить вложение в обращение"
      operationId: "PostRB_WS_PORTALAttachments"
      parameters:
        - $ref: '#/components/parameters/ReqStrParamNumberInPath'
        - $ref: '#/components/parameters/ReqStrParamContentDispositionInHeader'
      requestBody:
        $ref: '#/components/requestBodies/AttachmentsAdd'
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json:
              schema:
                  $ref: '#/components/schemas/AttachmentsResponse'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: []
  #---------------------------------------------------------#
  # Tag: Обращение (SD) (RB_WS_PORTAL) END
  #---------------------------------------------------------#
  #---------------------------------------------------------#
  # Tag: KE тип Банкомат (RB_WS_DEVICE_ATM)
  #---------------------------------------------------------#
  /RB_WS_DEVICE_ATM/{ID}:
    put:
      tags:
        - "KE тип Банкомат (RB_WS_DEVICE_ATM)"
      summary: "Обновление свойств КЕ Банкомат из Serenare"
      operationId: "PutRB_WS_DEVICE_ATM"
      parameters:
        - $ref: '#/components/parameters/ReqStrParamIDInPath'
      requestBody:
        $ref: '#/components/requestBodies/requestBodyRB_WS_DEVICE_ATMPut'
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json:
              schema:
                  $ref: '#/components/schemas/RB_WS_DEVICE_ATMResponseExpand'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: []
  #---------------------------------------------------------#
  # Tag: KE тип Банкомат (RB_WS_DEVICE_ATM) END
  #---------------------------------------------------------#
  #---------------------------------------------------------#
  # Tag: Обращение (SD) (RB_WS_RICHELIEU)
  #---------------------------------------------------------#
  /RB_WS_RICHELIEU:
    post:
      tags:
        - "Обращение (SD) (RB_WS_RICHELIEU)"
      summary: "Создание обращения по заявке R2654 от Ришелье"
      operationId: "PostRB_WS_RICHELIEU"
      requestBody:
        $ref: '#/components/requestBodies/requestBodyRB_WS_RICHELIEUAdd'
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json:
              schema:
                  $ref: '#/components/schemas/RB_WS_RICHELIEUResponseExpand'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: []
  #---------------------------------------------------------#
  # Tag: Обращение (SD) (RB_WS_RICHELIEU) END
  #---------------------------------------------------------#
  #---------------------------------------------------------#
  # Tag: Обращение (SD) (RBincidentsPortal)
  #---------------------------------------------------------#
  /RBincidentsPortal:
    post:
      tags:
        - "Обращение (SD) (RBincidentsPortal)"
      summary: "Создание обращения в свободной форме"
      operationId: "PostRBincidentsPortal"
      requestBody:
        $ref: '#/components/requestBodies/requestBodyRBincidentsPortal'
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json:
              schema:
                  $ref: '#/components/schemas/RBincidentsPortalResponseExpand'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: []
  /RBincidentsPortal/{number}:
    put:
      tags:
        - "Обращение (SD) (RBincidentsPortal)"
      summary: "Обновить обращение"
      operationId: "PutRBincidentsPortal"
      parameters:
        - $ref: '#/components/parameters/ReqStrParamNumberInPath'
      requestBody:
        $ref: '#/components/requestBodies/requestRBincidentsPortalUpdate'
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json:
              schema:
                  $ref: '#/components/schemas/RBincidentsPortalResponseExpand'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: []
  /RBincidentsPortal/{number}/action/{Action}:
    post:
      tags:
        - "Обращение (SD) (RBincidentsPortal)"
      summary: "Выполнить действие над обращением (SD)"
      operationId: "PostRBincidentsPortalAction"
      parameters:
        - $ref: '#/components/parameters/ReqStrParamNumberInPath'
        - $ref: '#/components/parameters/ReqStrParamRBincidentsPortalActionInPath'
      requestBody:
        $ref: '#/components/requestBodies/requestRBincidentsPortalAction'
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json:
              schema:
                  $ref: '#/components/schemas/RBincidentsPortalResponseExpand'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: []
  /RBincidentsPortal/{number}/attachments/:
    post:
      tags:
        - "Обращение (SD) (RBincidentsPortal)"
      summary: "Добавить вложение в обращение"
      operationId: "PostRBincidentsPortalAttachments"
      parameters:
        - $ref: '#/components/parameters/ReqStrParamNumberInPath'
        - $ref: '#/components/parameters/ReqStrParamContentDispositionInHeader'
      requestBody:
        $ref: '#/components/requestBodies/AttachmentsAdd'
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json:
              schema:
                  $ref: '#/components/schemas/AttachmentsResponse'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: []
  #---------------------------------------------------------#
  # Tag: Обращение (SD) (RBincidentsPortal) END
  #---------------------------------------------------------#
  #---------------------------------------------------------#
  # Tag: RBcriticalProblem
  #---------------------------------------------------------#
  /RBcriticalProblem:
    get:
      tags:
        - "Форма критичного инцидента(форма КИ)"
      summary: "Получить список заполненых форм КИ"
      operationId: "RBcriticalProblem"
      parameters:
        - $ref: '#/components/parameters/StrParamQueryInQuery'
        - $ref: '#/components/parameters/StrParamViewInQuery'
        - $ref: '#/components/parameters/StrParamStartInQuery'
        - $ref: '#/components/parameters/StrParamCountInQuery'
        - $ref: '#/components/parameters/StrParamSortInQuery'
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json (condense):
              schema:
                  $ref: '#/components/schemas/RBcriticalProblemResponseCondenseList'
            application/json (expand):
              schema:
                  $ref: '#/components/schemas/RBcriticalProblemResponseExpandList'
            application/json (summary):
              schema:
                  $ref: '#/components/schemas/BaseSummary'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: []
  /RBcriticalProblem/{ID}:
    get:
      tags:
        - "Форма критичного инцидента(форма КИ)"
      summary: "Получить конкретную форму КИ"
      operationId: "GetRBcriticalProblemID"
      parameters:
        - $ref: '#/components/parameters/ReqStrParamIDInPath'
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json:
              schema:
                  $ref: '#/components/schemas/RBcriticalProblemResponseExpand'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: [] 
    put:
      tags:
        - "Форма критичного инцидента(форма КИ)"
      summary: "обновить форму КИ"
      operationId: "PutRBcriticalProblemID"
      parameters:
        - $ref: '#/components/parameters/ReqStrParamIDInPath'
      requestBody:
          description: |- 
                  Обновление формы КИ.<br>
                  В примере где-то указаны конкретные значения для атрибутов, например - "number": "IM00000000", а где-то типы данных, например - "summary": "string". <br>
                  В теле запроса необходимо передавать только те атрибуты, которые необходимо установить.
          content:
              application/json:
                schema:
                  $ref: '#/components/schemas/RBcriticalProblemGET'
          required: true
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json:
              schema:
                  $ref: '#/components/schemas/RBcriticalProblemResponseExpand' #!!!!!!!!!!!!!!!!!!!!!!!!!!
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: []  
  #---------------------------------------------------------#
  # Tag: RBcriticalProblem END
  #---------------------------------------------------------#
  #---------------------------------------------------------#
  # Tag: RB_WS_Device_DB
  #---------------------------------------------------------#
  /RB_WS_Device_DB:
    get:
      tags:
        - "КЕ тип База Данных (RB_WS_Device_DB)"
      summary: "Получить список КЕ типа База Данных"
      operationId: "GetRB_WS_Device_DB"
      parameters:
        - $ref: '#/components/parameters/StrParamQueryInQuery'
        - $ref: '#/components/parameters/StrParamViewInQuery'
        - $ref: '#/components/parameters/StrParamStartInQuery'
        - $ref: '#/components/parameters/StrParamCountInQuery'
        - $ref: '#/components/parameters/StrParamSortInQuery'
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json (condense):
              schema:
                  $ref: '#/components/schemas/RB_WS_Device_DBResponseCondenseList'
            application/json (expand):
              schema:
                  $ref: '#/components/schemas/RB_WS_Device_DBResponseExpandList'
            application/json (summary):
              schema:
                  $ref: '#/components/schemas/BaseSummary'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: []
  /RB_WS_Device_DB/{ID}:
    get:
      tags:
        - "КЕ тип База Данных (RB_WS_Device_DB)"
      summary: "Получить конкретную КЕ типа База Данных"
      operationId: "GetRB_WS_Device_DBID"
      parameters:
        - $ref: '#/components/parameters/ReqStrParamIDInPath'
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json:
              schema:
                  $ref: '#/components/schemas/RB_WS_Device_DBResponseExpand'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: []
  #---------------------------------------------------------#
  # Tag: RB_WS_Device_DB END
  #---------------------------------------------------------#
  #---------------------------------------------------------#
  # Tag: RB_WS_Device_Unit_ITSys
  #---------------------------------------------------------#
  /RB_WS_Device_Unit_ITSys:
    get:
      tags:
        - "КЕ тип Экземпляр ИТ-системы (RB_WS_Device_Unit_ITSys)"
      summary: "Получить список КЕ типа Экземпляр ИТ-системы"
      operationId: "GetRB_WS_Device_Unit_ITSys"
      parameters:
        - $ref: '#/components/parameters/StrParamQueryInQuery'
        - $ref: '#/components/parameters/StrParamViewInQuery'
        - $ref: '#/components/parameters/StrParamStartInQuery'
        - $ref: '#/components/parameters/StrParamCountInQuery'
        - $ref: '#/components/parameters/StrParamSortInQuery'
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json (condense):
              schema:
                  $ref: '#/components/schemas/RB_WS_Device_Unit_ITSysResponseCondenseList'
            application/json (expand):
              schema:
                  $ref: '#/components/schemas/RB_WS_Device_Unit_ITSysResponseExpandList'
            application/json (summary):
              schema:
                  $ref: '#/components/schemas/BaseSummary'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: []
  /RB_WS_Device_Unit_ITSys/{ID}:
    get:
      tags:
        - "КЕ тип Экземпляр ИТ-системы (RB_WS_Device_Unit_ITSys)"
      summary: "Получить конкретную КЕ типа Экземпляр ИТ-системы"
      operationId: "GetRB_WS_Device_Unit_ITSysID"
      parameters:
        - $ref: '#/components/parameters/ReqStrParamIDInPath'
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json:
              schema:
                  $ref: '#/components/schemas/RB_WS_Device_Unit_ITSysResponseExpand'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: []
  #---------------------------------------------------------#
  # Tag: RB_WS_Device_Unit_ITSys END
  #---------------------------------------------------------#
  #---------------------------------------------------------#
  # Tag: RB_WS_Device_ITSystems
  #---------------------------------------------------------#
  /RB_WS_Device_ITSystems:
    get:
      tags:
        - "КЕ тип ИТ-система (RB_WS_Device_ITSystems)"
      summary: "Получить список КЕ типа ИТ-система"
      operationId: "GetRB_WS_Device_ITSystems"
      parameters:
        - $ref: '#/components/parameters/StrParamQueryInQuery'
        - $ref: '#/components/parameters/StrParamViewInQuery'
        - $ref: '#/components/parameters/StrParamStartInQuery'
        - $ref: '#/components/parameters/StrParamCountInQuery'
        - $ref: '#/components/parameters/StrParamSortInQuery'
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json (condense):
              schema:
                  $ref: '#/components/schemas/RB_WS_Device_ITSystemsResponseCondenseList'
            application/json (expand):
              schema:
                  $ref: '#/components/schemas/RB_WS_Device_ITSystemsResponseExpandList'
            application/json (summary):
              schema:
                  $ref: '#/components/schemas/BaseSummary'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: []
  /RB_WS_Device_ITSystems/{ID}:
    get:
      tags:
        - "КЕ тип ИТ-система (RB_WS_Device_ITSystems)"
      summary: "Получить конкретную КЕ типа ИТ-система"
      operationId: "GetRB_WS_Device_ITSystemsID"
      parameters:
        - $ref: '#/components/parameters/ReqStrParamIDInPath'
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json:
              schema:
                  $ref: '#/components/schemas/RB_WS_Device_ITSystemsResponseExpand'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: []
    put:
      tags:
        - "КЕ тип ИТ-система (RB_WS_Device_ITSystems)"
      summary: "Обновить КЕ типа ИТ-система"
      operationId: "PutRB_WS_Device_ITSystems"
      parameters:
        - $ref: '#/components/parameters/ReqStrParamIDInPath'
      requestBody:
          description: |- 
                  Обновление КЕ типа ИТ-система.<br>
                  <b>В теле запроса необходимо передавать только те атрибуты, которые необходимо обновить</b>.
          content:
              application/json:
                schema:
                  $ref: '#/components/schemas/RB_WS_Device_ITSystemsGET'
          required: true
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json:
              schema:
                  $ref: '#/components/schemas/RB_WS_Device_ITSystemsResponseExpand'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: []
  #---------------------------------------------------------#
  # Tag: RB_WS_Device_ITSystems END
  #---------------------------------------------------------#
  #---------------------------------------------------------#
  # Tag: RB_WS_Device_Server
  #---------------------------------------------------------#
  /RB_WS_Device_Server:
    post:
      tags:
        - "КЕ тип Сервер (RB_WS_Device_Server)"
      summary: "Создать КЕ типа Сервер"
      operationId: "PostRB_WS_Device_Server"
      requestBody:
          description: |- 
                  <b>В тело запроса необходимо передавать только те атрибуты, которые необходимы при создании</b>.
          content:
              application/json:
                schema:
                  $ref: '#/components/schemas/RB_WS_Device_ServerGET'
          required: true
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json:
              schema:
                  $ref: '#/components/schemas/RB_WS_Device_ServerResponseExpand'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: []
    get:
      tags:
        - "КЕ тип Сервер (RB_WS_Device_Server)"
      summary: "Получить список КЕ типа Сервер"
      operationId: "GetRB_WS_Device_Server"
      parameters:
        - $ref: '#/components/parameters/StrParamQueryInQuery'
        - $ref: '#/components/parameters/StrParamViewInQuery'
        - $ref: '#/components/parameters/StrParamStartInQuery'
        - $ref: '#/components/parameters/StrParamCountInQuery'
        - $ref: '#/components/parameters/StrParamSortInQuery'
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json (condense):
              schema:
                  $ref: '#/components/schemas/RB_WS_Device_ServerResponseCondenseList'
            application/json (expand):
              schema:
                  $ref: '#/components/schemas/RB_WS_Device_ServerResponseExpandList'
            application/json (summary):
              schema:
                  $ref: '#/components/schemas/BaseSummary'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: []
  /RB_WS_Device_Server/{id}:
    get:
      tags:
        - "КЕ тип Сервер (RB_WS_Device_Server)"
      summary: "Получить конкретную КЕ типа Сервер"
      operationId: "GetRB_WS_Device_ServerID"
      parameters:
        - $ref: '#/components/parameters/ReqStrParamIDInPath'
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json:
              schema:
                  $ref: '#/components/schemas/RB_WS_Device_ServerResponseExpand'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: []
    put:
      tags:
        - "КЕ тип Сервер (RB_WS_Device_Server)"
      summary: "Обновить КЕ типа Сервер"
      operationId: "PutRB_WS_Device_Server"
      parameters:
        - $ref: '#/components/parameters/ReqStrParamIDInPath'
      requestBody:
          description: |- 
                  Обновление КЕ типа Сервер.<br>
                  <b>В теле запроса необходимо передавать только те атрибуты, которые необходимо обновить</b>.
          content:
              application/json:
                schema:
                  $ref: '#/components/schemas/RB_WS_Device_ServerGET'
          required: true
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json:
              schema:
                  $ref: '#/components/schemas/RB_WS_Device_ServerResponseExpand'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: []
  #---------------------------------------------------------#
  # Tag: RB_WS_Device_Server END
  #---------------------------------------------------------#
  #---------------------------------------------------------#
  # Tag: RBrequestTaskAction
  #---------------------------------------------------------#
  /RBrequestTaskAction:
    get:
      tags:
        - "Наряд по запросу"
      summary: "Получить список всех нарядов (RFT*)"
      operationId: "GetRBrequestTaskAction"
      parameters:
        - $ref: '#/components/parameters/StrParamQueryInQuery'
        - $ref: '#/components/parameters/StrParamViewInQuery'
        - $ref: '#/components/parameters/StrParamStartInQuery'
        - $ref: '#/components/parameters/StrParamCountInQuery'
        - $ref: '#/components/parameters/StrParamSortInQuery'
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json (condense):
              schema:
                  $ref: '#/components/schemas/RBrequestTaskActionResponseCondenseList'
            application/json (expand):
              schema:
                  $ref: '#/components/schemas/RBrequestTaskActionResponseExpandList'
            application/json (summary):
              schema:
                  $ref: '#/components/schemas/BaseSummary'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: []
  /RBrequestTaskAction/{ID}:
    get:
      tags:
        - "Наряд по запросу"
      summary: "Получить конкретный наряд(RFT*)"
      operationId: "GetRBrequestTaskActionID"
      parameters:
        - $ref: '#/components/parameters/ReqStrParamIDInPath'
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json:
              schema:
                  $ref: '#/components/schemas/RBrequestTaskActionResponseExpand'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: []
  /RBrequestTaskAction/{ID}/action/{Action}:
    post:
      tags:
        - "Наряд по запросу"
      summary: "Выполнить действие над нарядом (RFT*)"
      operationId: "PostRBrequestTaskAction"
      parameters:
        - $ref: '#/components/parameters/ReqStrParamIDInPath'
        - $ref: '#/components/parameters/ReqStrParamRBrequestTaskActionActionInPath'
      requestBody:
        $ref: '#/components/requestBodies/requestBodyRBrequestTaskActioninwork'
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json:
              schema:
                  $ref: '#/components/schemas/RBrequestTaskActionResponseExpand'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: []
  #---------------------------------------------------------#
  # Tag: RBrequestTaskAction END
  #---------------------------------------------------------#
  #---------------------------------------------------------#
  # Tag: RBprobsummaryAction
  #---------------------------------------------------------#
  /RBprobsummaryAction:
    get:
      tags:
        - "Инциденты (IM*)"
      summary: "Получить список всех инцидентов"
      operationId: "GetRBprobsummaryAction"
      parameters:
        - $ref: '#/components/parameters/StrParamQueryInQuery'
        - $ref: '#/components/parameters/StrParamViewInQuery'
        - $ref: '#/components/parameters/StrParamStartInQuery'
        - $ref: '#/components/parameters/StrParamCountInQuery'
        - $ref: '#/components/parameters/StrParamSortInQuery'
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json (condense):
              schema:
                  $ref: '#/components/schemas/RBprobsummaryActionResponseCondenseList'
            application/json (expand):
              schema:
                  $ref: '#/components/schemas/RBprobsummaryActionResponseExpandList'
            application/json (summary):
              schema:
                  $ref: '#/components/schemas/BaseSummary'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: []
  /RBprobsummaryAction/{ID}:
    get:
      tags:
        - "Инциденты (IM*)"
      summary: "Получить конкретный инцидент"
      operationId: "GetRBprobsummaryActionID"
      parameters:
        - $ref: '#/components/parameters/ReqStrParamIDInPath'
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json:
              schema:
                  $ref: '#/components/schemas/RBprobsummaryActionResponseExpand'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: []
  /RBprobsummaryAction/{ID}/action/{Action}:
    post:
      tags:
        - "Инциденты (IM*)"
      summary: "Доступные операции с инцидентами"
      operationId: "PostRBprobsummaryAction"
      parameters:
        - $ref: '#/components/parameters/ReqStrParamIDInPath'
        - $ref: '#/components/parameters/ReqStrParamRBprobsummaryActionActionInPath'
      requestBody:
        $ref: '#/components/requestBodies/requestBodyRBprobsummaryActioninwork'
      responses:
        "200":
          description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
          content:
            application/json:
              schema:
                  $ref: '#/components/schemas/RBprobsummaryActionResponseExpand'
        "400":
          $ref: '#/components/responses/resp400'
        "401":
          $ref: '#/components/responses/resp401'
        "404":
          $ref: '#/components/responses/resp404'
        "500":
          $ref: '#/components/responses/resp500'
      security:
        - basicAuth: []
  #---------------------------------------------------------#
  # Tag: RBprobsummaryAction END
  #---------------------------------------------------------#
  #---------------------------------------------------------#
  # Tag: RB_WS_HISTORY
  #---------------------------------------------------------#
  /RB_WS_HISTORY_{type}: 
      get:
        tags:
          - "История KE"
        summary: "Все изменения"
        operationId: 
            -"GetRBprobsummaryAction"
        parameters:
          - $ref: '#/components/parameters/ReqStrParamRB_WS_HISTORY'
          - $ref: '#/components/parameters/StrParamQueryInQuery'
          - $ref: '#/components/parameters/StrParamViewInQuery'
          - $ref: '#/components/parameters/StrParamStartInQuery'
          - $ref: '#/components/parameters/StrParamCountInQuery'
          - $ref: '#/components/parameters/StrParamSortInQuery'
        responses:
          "200":
            description: "Successful operation. Viewing a list or detail page will return this code if no error occurred."
            content:
              application/json (condense):
                schema:
                    $ref: '#/components/schemas/RB_WS_HISTORYGetResponseCondenseList'
              application/json (expand):
                schema:
                    $ref: '#/components/schemas/RB_WS_HISTORYGetResponseExpandList'
              application/json (summary):
                schema:
                    $ref: '#/components/schemas/BaseSummary'
          "400":
            $ref: '#/components/responses/resp400'
          "401":
            $ref: '#/components/responses/resp401'
          "404":
            $ref: '#/components/responses/resp404'
          "500":
            $ref: '#/components/responses/resp500'
        security:
          - basicAuth: []

#---------------------------------------------------------------------------#
# Объект для хранения различных схем спецификации
#---------------------------------------------------------------------------#
components:
  #---------------------------------------------------------#
  # выносим параметры методов в 1 место
  #---------------------------------------------------------#
  # Общий принцип формирования наименования параметров: 
  # Req(required: true)Str(type: string)Param(параметр)ID(его имя)InPath(in: path)
  # Пример: ReqStrParamIDInPath
  # Если необходимо дублировать существующий параметр в наименование добавляется название веб-сервиса
  # Req(required: true)Str(type: string)Param(параметр)RBprotocolCreate(имя веб-сервиса)Action(его имя)InPath(in: path)
  # Пример: ReqStrParamRBprotocolCreateActionInPath
  #---------------------------------------------------------#
  parameters:
    StrParamQueryInQuery:
      in: query
      name: query
      description: |-
                      /incidents?field1=value1&field2=value2 //Simple Query<br>
                      /incidents?query=<url-encoded-string>//Service Manager Native Query<br>
                      Строка запроса должна использовать HTML URL Encoding.<br>
                      Поля времени даты должны использовать стандартные форматы ISO.
      required: false
      schema:
        type: string
    StrParamViewInQuery:
      name: view
      in: query
      description: |-
                    summary: возвращает количество членов коллекции, если они есть, не возвращает фактические члены.<br>
                    condense: Возвращает значение уникального ключевого поля, не возвращает всю запись. Это поведение по умолчанию, если параметр запроса view не указан.<br>
                    expand: Возвращает все поля, определенные в записи extaccess.
      required: false
      schema:
        type: string
        enum: 
          - "condense"
          - "expand"
          - "summary"
    StrParamStartInQuery:
      name: start
      in: query
      description: "Указывает индекс члена, с которого начинается представление ответа коллекции."
      required: false
      schema:
        type: integer
        format: int64
    StrParamCountInQuery:
      name: count
      in: query
      description: "Указывает количество членов коллекции, которые должны быть включены в ответ. Минимальное значение для этого параметра - 1. По умолчанию он возвращает все члены коллекции. При значении count=0 поведение такое же, как и при значении view=summary."
      required: false
      schema:
        type: integer
        format: int64   
    StrParamSortInQuery:
      name: sort
      in: query
      description: |-
                  Возвращает члены коллекции в отсортированном порядке в соответствии с указанными аргументами. 
                  Аргументы перечисляются парами, где первый аргумент пары указывает имя атрибута, на основе которого будет производиться сортировка, а второй аргумент пары указывает, по возрастанию или по убыванию сортировать. 
                  В списке сортировки может быть указано более одного атрибута. Также могут использоваться атрибуты по ascending и descending.<br>
                  sort={primaryField}:{ascending|descending}[,{secondaryField}:{ascending|descending}...]<br>
                  По умолчанию порядок сортировки - по возрастанию.
      required: false
      schema:
        type: string
    ReqStrParamIDInPath:
      name: ID
      in: path
      description: ID записи
      required: true
      schema:
        type: string
    ReqStrParamNumberInPath:
      name: number
      in: path
      description: Номер обращения
      required: true
      schema:
        type: string
    ReqStrParamRBprotocolCreateActionInPath: # Действия над записью 
      name: Action
      in: path
      description: Действие над записью
      required: true
      schema:
        type: string
        enum: 
          - "update" 
    ReqStrParamRB_WS_cm3tActionActionInPath:
      name: Action
      in: path
      description: Действие над записью
      required: true
      schema:
        type: string
        enum: 
          - "inwork"
          - "resolve"
          - "Addtime"      
    ReqStrParamContentDispositionInHeader:
      name: Content-Disposition
      in: header
      description: attachment;filename*=UTF-8''<имя_файла_с_расширением>
      required: true
      schema:
        type: string
        example: attachment;filename*=UTF-8''%D1%82%D0%B5%D1%81%D1%82.txt
    ReqStrParamRBincidentsPortalActionInPath:
      name: Action
      in: path
      description: Действие над записью
      required: true
      schema:
        type: string
        enum: 
          - "escalate"
          - "notarchive"
          - "confirmresolve"
          - "deny"
          - "requeststatus"
          - "message"
          - "notactual"
          - "notactualrich"
          - "denyrich"
          - "ansver"
          - "unlocksdremake"
          - "close"
          - "doNothing"
    ReqStrParamRBrequestTaskActionActionInPath:
      name: Action
      in: path
      description: Действие над записью
      required: true
      schema:
        type: string
        enum: 
          - "execute"
          - "update"
    ReqStrParamRBprobsummaryActionActionInPath:
      name: Action
      in: path
      description: Доступные операции с инцидентами
      required: true
      schema:
        type: string
        enum: 
          - "reassign"
          - "execute"
          - "update"
    ReqStrParamRB_WS_HISTORY:
      name: type
      in: path
      description:  Выберите тип КЕ
                    <br> &bull; ИТ-система(<b>itsys</b>)
                    <br> &bull; ИТ-Услуга(<b>service</b>)
                    <br> &bull; Экземпляр ИТ-системы(<b>itsysunit</b>)
                    <br> &bull; Доп. офис/Фронт офис(<b>divisionoffice</b>)
                    <br> &bull; Филиал(<b>divisionbranch</b>)
                    <br> &bull; Стандартные заявки(<b>standartapp</b>)
                    <br> &bull; База данных(<b>dbbase</b>)
                    <br> &bull; Сервер(<b>ceidceserver</b>)
      required: true
      schema:
        type: string
        enum: 
          - "itsys"
          - "service"
          - "itsysunit"
          - "divisionoffice"
          - "divisionbranch"
          - "standartapp"
          - "dbbase"
          - "ceidceserver"
  #---------------------------------------------------------#
  # выносим тело запроса методов в 1 место
  #---------------------------------------------------------#
  requestBodies:          
    requestBodyAdd:
      description: |- 
        Создание записи протокола.<br>
        В примере где-то указаны конкретные значения для атрибутов, например - "ID": "PL00000000", а где-то типы данных, например - "Interaction": "SD8244844". <br>
        В теле запроса необходимо передавать только те атрибуты, которые необходимо установить.
      content:
        application/json:
          schema:
            $ref: '#/components/schemas/RBprotocolCreateWithoutID'
      required: true
    requestBodyRB_WS_REQUESTAdd:
      description: |- 
        Создание записи обращения.
      content:
        application/json:
          schema:
            $ref: '#/components/schemas/RB_WS_REQUESTWithoutID'
      required: true
    requestBodyRB_WS_PORTALAdd:
      description: |- 
        Создание записи обращения.
      content:
        application/json:
          schema:
            $ref: '#/components/schemas/RB_WS_PORTALWithoutID'
      required: true
    requestBodyRB_WS_RICHELIEUAdd:
      description: |- 
        Создание Обращения Ришелье.
      content:
        application/json:
          schema:
            $ref: '#/components/schemas/RB_WS_RICHELIEUWithoutID'
      required: true
    requestBodyRB_WS_DEVICE_ATMPut:
      description: |- 
        Обновление КЕ Банкомат.
      content:
        application/json:
          schema:
            $ref: '#/components/schemas/RB_WS_DEVICE_ATMRequestWithoutID'
      required: true
    requestBodyRBincidentsPortal:
      description: |- 
        Создание записи обращения.
      content:
        application/json:
          schema:
            $ref: '#/components/schemas/RBincidentsPortalWithoutID'
      required: true
    requestRBincidentsPortalUpdate:
      description: |- 
          Обновление обращения.<br>
          В теле запроса необходимо передавать только те атрибуты, которые необходимо изменять.
      content:
        application/json:
          schema:
            $ref: '#/components/schemas/RBincidentsPortalActionnotarchive'
          examples:
            example-1:
              summary: Обновление Обращения из Ришелье
              description: Ришелье может обновлять в существующем Обращении поля «Крайний срок» и «Рейтинг»
              value:
                "RBincidentsPortal": 
                    deadline: "2022-10-11T23:13:14"
                    rating: 8
    requestRBincidentsPortalAction1:
      description: |- 
          Выберите 1 из действий application/json в Request body:<br>
          <b>- escalate (Эскалация)</b><br>
          <b>- notarchive (Не архивировать)</b><br>
          <b>- confirmresolve (Подтвердить решение)</b><br>
          <b>- deny (Отклонить решение)</b><br>
          <b>- requeststatus (Запрос статуса)</b><br>
          <b>- message (Сообщение специалисту)</b><br>
          <b>- notactual (Не актуально)</b><br>
          <b>- notactualrich (Не актуально Ришелье)</b><br>
          <b>- denyrich (Отклонение решения Ришелье)</b><br>
          <b>- ansver (Ответ на вопрос протокола)</b><br>
          <b>- unlocksdremake (раблокировка обращения в состоянии "Переоформление заявки")</b><br>
          <b>- close (Закрытие обращения)</b><br>
          <b>- doNothing (Пустое действие)</b><br>
      content:
        application/json (escalate):
          schema:
              $ref: '#/components/schemas/RBincidentsPortalActionescalate'
        application/json (notarchive):
          schema:
              $ref: '#/components/schemas/RBincidentsPortalActionnotarchive'
        application/json (confirmresolve):
          schema:
              $ref: '#/components/schemas/RBincidentsPortalActionconfirmresolve'
        application/json (deny):
          schema:
              $ref: '#/components/schemas/RBincidentsPortalActiondeny'
        application/json (requeststatus):
          schema:
              $ref: '#/components/schemas/RBincidentsPortalActionrequeststatus'
        application/json (message):
          schema:
              $ref: '#/components/schemas/RBincidentsPortalActionmessage'
        application/json (notactual):
          schema:
              $ref: '#/components/schemas/RBincidentsPortalActionnotactual'
        application/json (notactualrich):
          schema:
              $ref: '#/components/schemas/RBincidentsPortalActionnotactualrich'
        application/json (denyrich):
          schema:
              $ref: '#/components/schemas/RBincidentsPortalActiondenyrich'
        application/json (ansver):
          schema:
              $ref: '#/components/schemas/RBincidentsPortalActionansver'
        application/json (unlocksdremake):
          schema:
              $ref: '#/components/schemas/RBincidentsPortalActionunlocksdremake'
        application/json (close):
          schema:
              $ref: '#/components/schemas/RBincidentsPortalActionclose'
        application/json (doNothing):
          schema:
              $ref: '#/components/schemas/RBincidentsPortalActiondoNothing'
    requestBodyUpdate:
      description: |- 
          Обновление записи протокола.<br>
          В примере где-то указаны конкретные значения для атрибутов, например - "ID": "PL00000000", а где-то типы данных, например - "ActiveTwo": "string". <br>
          В теле запроса необходимо передавать только те атрибуты, которые необходимо изменять.
      content:
        application/json:
          schema:
            $ref: '#/components/schemas/RBprotocolCreate'
    requestBodyRB_WS_cm3tActioninwork: 
      content:
        application/json:
          schema:
            anyOf:
              - $ref: '#/components/schemas/RB_WS_cm3tActioninwork' 
              - $ref: '#/components/schemas/RB_WS_cm3tActionresolve' 
              - $ref: '#/components/schemas/RB_WS_cm3tActionAddtime'             
          examples:
            inwork:
              summary: В работу(inwork)
              description: В теле запроса необходимо передавать id рабочей группы и rb исполнителя.<br>
              value:
                "RB_WS_cm3tAction":
                    Assignee: "rb******"
                    Group: "WG****" 
            resolve:
              summary: Выполнено(resolve)
              description:  В теле запроса необходимо передавать обязательные поля <br>
                            -Код закрытия<br>
                            -результат<br> 
                            опционально<br>
                            -Копировать в решение запроса(CopyResult)<br>
                            -Тип решения<br>
                            В случае нарушения SLA, так же передавать причину нарушения SLA.<br>
              value:
                "RB_WS_cm3tAction":
                  ResolutionCode: "10"
                  Resolution: "Выполнено,тестовое описание."
                  CopyResult:  true
                  SLAbreak:  "Нехватка времени (не корректный крайний срок)"
                  TypeAnswer: "Тип решения"  
            Addtime:
              summary: Указать потраченное время(Addtime)
              description: В теле запроса необходимо передавать потраченное время в минутах<br>
                          (ели нужно указать 1ч 20м, передается 80 минут) 
              value:
                "RB_WS_cm3tAction":
                  TimeAdd: "125"  
    requestBodyRBrequestTaskActioninwork:      
      content:
        application/json:
          schema:
            anyOf:
              - $ref: '#/components/schemas/RBrequestTaskActionExecute' 
              - $ref: '#/components/schemas/RBrequestTaskActionUpdate'           
          examples:
            execute:
              summary: Перевод Наряда в Статус "Выполнено" (execute)
              description:  Перевод в статус «Выполнен». В поле «код закрытия» присваивается значение «Решено с комментарием»
              value:
                "RBrequestTaskAction":
                    AssigneeName: "rb184220"
                    ResolutionCode: "70" 
                    Resolution: ["Testovoe"]
            update:
              summary: Обновление (update)
              description:  Обновляется значение поля «State», если значение есть в справочнике.
              value:
                "RBrequestTaskAction":
                    State : "Open" 
    requestBodyRBprobsummaryActioninwork:       
      content:
        application/json:
          schema:
            anyOf:
              - $ref: '#/components/schemas/RBprobsummaryActionReassign' 
              - $ref: '#/components/schemas/RBprobsummaryActionExecute' 
              - $ref: '#/components/schemas/RBprobsummaryActionUpdate'           
          examples:
            reassign:
              summary: Переназначение на группу (reassign)
              description: В поле «код закрытия» присваивается значение «Не актуально»
              value:
                "RBprobsummaryAction": 
                    ReportReason: ["testovoe переназначение в связи с необходимостью"]
            execute:
              summary: Перевод в Статус "Выполнено"(execute)
              description: |- 
                  Перевод в статус «Выполнен». В поле «код закрытия» присваивается значение «Решено с комментарием»
              value:
                "RBprobsummaryAction":
                    AssigneeName: "rb184220"
                    ReportReason: ["testovoe Причина для выполнения"] 
                    Resolution: ["testovoe"]
            update:
              summary: Обновление(update)
              description: |- 
                  Обновляется значение поля «State», если значение есть в справочнике.
              value:
                "RBprobsummaryAction":
                    State : "Открыто"  
    requestRBincidentsPortalAction:
      content:
        application/json:
          schema:
            anyOf:
              - $ref: '#/components/schemas/RBincidentsPortalActionescalate' 
              - $ref: '#/components/schemas/RBincidentsPortalActionnotarchive' 
              - $ref: '#/components/schemas/RBincidentsPortalActionconfirmresolve'
              - $ref: '#/components/schemas/RBincidentsPortalActiondeny'
              - $ref: '#/components/schemas/RBincidentsPortalActionrequeststatus'
              - $ref: '#/components/schemas/RBincidentsPortalActionmessage'
              - $ref: '#/components/schemas/RBincidentsPortalActionnotactual'
              - $ref: '#/components/schemas/RBincidentsPortalActionnotactualrich'
              - $ref: '#/components/schemas/RBincidentsPortalActiondenyrich'
              - $ref: '#/components/schemas/RBincidentsPortalActionansver'
              - $ref: '#/components/schemas/RBincidentsPortalActionunlocksdremake'
              - $ref: '#/components/schemas/RBincidentsPortalActionclose'
              - $ref: '#/components/schemas/RBincidentsPortalActiondoNothing'           
          examples:
            escalate:
              summary: escalate (Эскалация)
              #description: В поле «код закрытия» присваивается значение «Не актуально»
              value:
                "RBincidentsPortal": 
                    protocolText: ["тест метода escalate"]
                    protocolOperator: "rb100100"
            notarchive:
              summary: notarchive (Не архивировать)
              #description: В поле «код закрытия» присваивается значение «Не актуально»
              value:
                "RBincidentsPortal": 
                    notArchive: true
            confirmresolve:
              summary: confirmresolve (Подтвердить решение)
              #description: В поле «код закрытия» присваивается значение «Не актуально»
              value:
                "RBincidentsPortal": 
                    protocolText: ["тест метода confirmresolve"]
                    protocolOperator: "rb100100"
                    protocolNumber: "5"
            deny:
              summary: deny (Отклонить решение)
              #description: В поле «код закрытия» присваивается значение «Не актуально»
              value:
                "RBincidentsPortal": 
                    protocolText: ["тест метода deny"]
            requeststatus:
              summary: requeststatus (Запрос статуса)
              #description: В поле «код закрытия» присваивается значение «Не актуально»
              value:
                "RBincidentsPortal": {}
            message:
              summary: message (Сообщение специалисту)
              #description: В поле «код закрытия» присваивается значение «Не актуально»
              value:
                "RBincidentsPortal": 
                    protocolText: ["тест метода message"]
                    protocolOperator: "rb100100"
            notactual:
              summary: notactual (Не актуально)
              #description: В поле «код закрытия» присваивается значение «Не актуально»
              value:
                "RBincidentsPortal": 
                    protocolOperator: "rb100100"
            notactualrich:
              summary: notactualrich (Не актуально Ришелье)
              #description: В поле «код закрытия» присваивается значение «Не актуально»
              value:
                "RBincidentsPortal": 
                    protocolOperator: "rb100100"
            denyrich:
              summary: denyrich (Отклонение решения Ришелье)
              #description: В поле «код закрытия» присваивается значение «Не актуально»
              value:
                "RBincidentsPortal": 
                    protocolText: ["тест отклонения решения"]
                    protocolOperator: "rb100100"
            ansver:
              summary: ansver (Ответ на вопрос протокола)
              #description: В поле «код закрытия» присваивается значение «Не актуально»
              value:
                "RBincidentsPortal": 
                    protocolText: ["в заявке отсутствует контактный номер"]
                    protocolOperator: "rb100100"
                    numberTsk: "RFT5837111"
            unlocksdremake:
              summary: unlocksdremake (раблокировка обращения)
              description: раблокировка обращения в состоянии "Переоформление заявки"
              value:
                "RBincidentsPortal": {}
            close:
              summary: close (Закрытие обращения)
              description: Для закрытия обращения требуется указать подходящий код закрытия(resolutionCode)<br>
                          - "Успешно"<br>
                          - "Не актуально"
              value:
                "RBincidentsPortal": 
                    resolutionCode: "Успешно"
                    resolution: ["тест метода close"]
            doNothing:
              summary: doNothing (Пустое действие)
              #description:
              value:
                "RBincidentsPortal": {}
      description: |- 
          Выберите 1 из действий Examples: 
    requestBodyRBcontactsPortalPOST:
      description: |- 
          Обновление записи контакта.<br>
          В примере где-то указаны конкретные значения для атрибутов, например - "ID": "PL00000000", а где-то типы данных, например - "ActiveTwo": "string". <br>
          В теле запроса необходимо передавать только те атрибуты, которые необходимо изменять.
      content:
        application/json:
          schema:
            $ref: '#/components/schemas/RBcontactsPortalGET'
    requestBodyRBcontactsPortalPUT:
      description: |- 
          Обновление площадки контакта.<br>
          <i>пример ID записи - rb000000</i>
      content:
        application/json:
          schema:
            $ref: '#/components/schemas/RBcontactsPortalPUT'                     
    AttachmentsAdd:  # приложить файл для отправки вложения
      description: |- 
          Обновление записи протокола.<br>
          В примере где-то указаны конкретные значения для атрибутов, например - "ID": "PL00000000", а где-то типы данных, например - "ActiveTwo": "string". <br>
          В теле запроса необходимо передавать только те атрибуты, которые необходимо изменять.
      content:
        application/octet-stream:
          schema:
            type: string
            format: binary
    requestBodyRBprotocolSendNewMsgSP:
      description: |- 
        Создание записи протокола.<br>
        В примере где-то указаны конкретные значения для атрибутов, например - "ID": "PL00000000", а где-то типы данных, например - "Interaction": "SD8244844". <br>
        В теле запроса необходимо передавать только те атрибуты, которые необходимо установить.
      content:
        application/json:
          schema:
            $ref: '#/components/schemas/RBprotocolSendNewMsgSPPost'
      required: true                     
  #---------------------------------------------------------#
  #  выносим ответы на запросы в 1 место
  #---------------------------------------------------------#
  responses:
    resp400:
      description: "Bad request.  This response code may indicate that the URI was formed incorrectly."
    resp401:
      description: "Unauthorized operations."
      content:
        application/json:
          schema:
              $ref: '#/components/schemas/NotAuthorized'
    resp404:
      description: "Page not found. The page or resource does not exist."  
    resp500:
      description: "Internal server error.  This response code may indicate a bug. Please contact Admins-SM Support." 
  #---------------------------------------------------------#
  #---------------------------------------------------------#
  #примеры #
  #---------------------------------------------------------#
  #examples:  

  
  schemas:
    #---------------------------------------------------------#
    # Resource Collection: RBprotocolCreate
    #---------------------------------------------------------#
    RBprotocolCreateResponseCondenseList:
      allOf:
      - $ref: '#/components/schemas/Base'
      - type: object
        properties:
          "content":
            type: array
            items:
              $ref: '#/components/schemas/ID'
    RBprotocolCreateResponseExpandList:
      allOf:
      - $ref: '#/components/schemas/Base'
      - type: object
        properties:
          "content":
            type: array
            items:
              $ref: '#/components/schemas/RBprotocolCreate'
    ID:
      type: object
      properties:
        "RBprotocolCreate":
          type: object
          properties:
            ID:
              type: string
              example: "PL00000000"
    RBprotocolCreateResponseExpand:
      allOf:
      - $ref: '#/components/schemas/Messages'
      - $ref: '#/components/schemas/RBprotocolCreate'
      - type: object
        properties:
          "ReturnCode":
            type: integer
            format: int64
            example: 0
    RBprotocolCreate:
          type: object
          properties:
            "RBprotocolCreate":
              type: object
              properties:
                ID:
                  type: string
                  example: "PL00000000"
                Interaction:
                  type: string
                  example: "SD8244844"
                Description:
                  type: array
                  items:
                    type: string
                OwnerID:
                  type: string
                  example: "rb003493"
                Unread:
                  type: boolean
                  example: true
                NumberRFT:
                  type: string
                  example: "RFT5141386"
                Title:
                  type: string
                  example: "Предоставление дополнительных опций БИС ГО"
                ActiveType:
                  type: string
                  example: "Application Support"
                WorkTime:
                  type: string
                  format: date-time
                Hours:
                  type: string
                  example: "1"
                Minutes:
                  type: string
                  example: "5"
                ActiveTwo:
                  type: string
                ActiveThree:
                  type: string          
    RBprotocolCreateWithoutID:
          type: object
          properties:
            "RBprotocolCreate":
              type: object
              properties:
                Interaction:
                  type: string
                  example: "SD8244844"
                Description:
                  type: array
                  items:
                    type: string
                OwnerID:
                  type: string
                  example: "rb003493"
                Unread:
                  type: boolean
                  example: true
                NumberRFT:
                  type: string
                  example: "RFT5141386"
                Title:
                  type: string
                  example: "Предоставление дополнительных опций БИС ГО"
                ActiveType:
                  type: string
                  example: "Application Support"
                WorkTime:
                  type: string
                  format: date-time
                Hours:
                  type: string
                  example: "1"
                Minutes:
                  type: string
                  example: "5"
                ActiveTwo:
                  type: string
                ActiveThree:
                  type: string          
    RBprotocolSendNewMsgSPResponseExpand:
      allOf:
      - $ref: '#/components/schemas/Messages'
      - $ref: '#/components/schemas/RBprotocolSendNewMsgSPPost'
      - type: object
        properties:
          "ReturnCode":
            type: integer
            format: int64
            example: 0
    RBprotocolSendNewMsgSPPost:
          type: object
          properties:
            "RBprotocolSendNewMsgSP":
              type: object
              properties:
                Interaction:
                  type: string
                  example: "SD10006005"
                Description:
                  type: array
                  items:
                    type: string
                OwnerID:
                  type: string
                  example: "rb003493"
                NumberRFT:
                  type: string
                  example: "RFT5869421"
    #---------------------------------------------------------#
    # Схема ответа после добавления вложения
    #---------------------------------------------------------#
    AttachmentsResponse:
      type: object
      properties:
        "Messages":
          type: array
          items:
            type: string
        "ReturnCode":
          type: integer
          format: int64
          example: "0"  
        "attachment":
          type: object
          properties:
            "href":
              type: string
              example: "cid:53467b610011401020594248"
            "len":
              type: integer
              format: int64
              example: "85"
            "name":
              type: string
              example: "soapui.log" 
            "type":
              type: string
              example: "application/octet-stream"  
            "xmime:contentType":
              type: string
              example: "application/octet-stream"              

    #---------------------------------------------------------#
    # Схема описывающие основные свойства Responses после     #
    # вызова метода GET.                                      #
    #---------------------------------------------------------# 
    Base:
      allOf:
      - type: object
        properties:
          "@count":
            type: integer
            format: int64
            example: 1
          "@start":
            type: integer
            format: int64
            example: 1
      - $ref: '#/components/schemas/BaseSummary'

    BaseSummary:
      type: object
      properties:
        "@totalcount":
          type: integer
          format: int64
          example: 1000
        "Messages":
          type: array
          items:
            type: string
        "ResourceName":
          type: string
        "ReturnCode":
          type: integer
          format: int64
          example: 0
    #---------------------------------------------------------#
    # Схема для свойства Messages которое возвращается в 
    # Responses
    #---------------------------------------------------------#
    Messages:
          type: object
          properties:
            "Messages":
              type: array
              items:
                type: string
    #---------------------------------------------------------#
    # Схема для кода ответа 401 "Unauthorized operations."
    #---------------------------------------------------------#
    NotAuthorized:
      type: object
      properties:
        "Messages":
          type: array
          items:
            type: string
            example: "Not Authorized"
        "ReturnCode":
          type: integer
          format: int64
          example: "-4" 
    #---------------------------------------------------------#
    # Resource Collection: RB_WS_assignment
    #---------------------------------------------------------# 
    RB_WS_assignmentResponseCondenseList:
      allOf:
      - $ref: '#/components/schemas/Base'
      - type: object
        properties:
          "content":
            type: array
            items:
              $ref: '#/components/schemas/RB_WS_assignmentID'
    RB_WS_assignmentResponseExpandList:
      allOf:
      - $ref: '#/components/schemas/Base'
      - type: object
        properties:
          "content":
            type: array
            items:
              $ref: '#/components/schemas/RB_WS_assignmentGET'
    RB_WS_assignmentID:
      type: object
      properties:
        "RB_WS_assignment":
          type: object
          properties:
            ID:
              type: string
              example: "WG1000"
    RB_WS_assignmentGET:
          type: object
          properties:
            "RB_WS_assignment":
              type: object
              properties:
                ID:
                  type: string
                  example: "WG1000"
                ManagerLogin:
                  type: string
                  example: "rb001486"
                Name:
                  type: string
                  example: "3Л_BIS_КредитованиеЮЛ"
                Operators:
                  type: array
                  items:
                    type: string
                  example:
                    - rb001486
                    - rb003816
                    - rb004481
                    - rb004523
                    - rb006991
                    - rb012134
                    - rb069850
                    - rb076523
                WorkIM:
                  type: boolean
                  example: true 
                WorkRFT:
                  type: boolean
                  example: true 
    RB_WS_assignmentResponseExpand:
      allOf:
      - $ref: '#/components/schemas/Messages'
      - $ref: '#/components/schemas/RB_WS_assignmentGET'
      - type: object
        properties:
          "ReturnCode":
            type: integer
            format: int64
            example: 0                   
    #---------------------------------------------------------#
    #---------------------------------------------------------#
    # Resource Collection: RB_WS_cm3tAction
    #---------------------------------------------------------# 
    RB_WS_cm3tActionResponseCondenseList:
      allOf:
      - $ref: '#/components/schemas/Base'
      - type: object
        properties:
          "content":
            type: array
            items:
              $ref: '#/components/schemas/RB_WS_cm3tActionID'
    RB_WS_cm3tActionResponseExpandList:
      allOf:
      - $ref: '#/components/schemas/Base'
      - type: object
        properties:
          "content":
            type: array
            items:
              $ref: '#/components/schemas/RB_WS_cm3tActionGET'
    RB_WS_cm3tActionID:
      type: object
      properties:
        "RB_WS_cm3tAction":
          type: object
          properties:
            header:
              type: object
              properties:
                Number:
                  type: string
                  example: "T2025172"
    RB_WS_cm3tActionGET:
          type: object
          properties:
            "RB_WS_cm3tAction":
              type: object
              properties:
                Assignee:
                  type: string
                  example: "rb184220"
                Description:
                  type: array
                  items:
                    type: string
                  example:
                    - "Необходимо создать новый канал связи в GBase и связать его с сетевым оборудованием."
                    - "Необходимая информация в сводке по запросу."
                Group:
                  type: string
                  example: "WG261" 
                OpenTime:
                  type: string
                  example: "2021-10-29T12:51:30+03:00" 
                Parent:
                  type: string
                  example: "C1111054"
                ParentTitle:
                  type: string
                  example: "Подключение ex.РФБ г. Улан-Удэ Улица Борсоева Дом 19Б"
                Requestor:
                  type: string
                  example: "Ковалькова Л.И. 67726"
                Status:
                  type: string
                  example: "30"
                Title:
                  type: string
                  example: "Создание и регистрация канала связи в GBase"
                
                header:
                  type: object
                  properties:
                    Number:
                      type: string
                      example: "T2025172"
    RB_WS_cm3tActionResponseExpand:
      allOf:
      - $ref: '#/components/schemas/Messages'
      - $ref: '#/components/schemas/RB_WS_cm3tActionGET'
      - type: object
        properties:
          "ReturnCode":
            type: integer
            format: int64
            example: 0 
    RB_WS_cm3tActioninwork:
      type: object
      properties:
        "RB_WS_cm3tAction":
              type: object
              properties:
                Assignee:
                  type: string
                  example: "rb184220"
                Group:
                  type: string
                  example: "WG261" 
    RB_WS_cm3tActionresolve:
      type: object
      properties:
        "RB_WS_cm3tAction":
              type: object
              properties:
                ResolutionCode:
                  type: string
                  example: "10"
                Resolution:
                  type: string
                  example: "Выполнено,тестовое описание."
                CopyResult:
                  type: boolean
                  example: true
                SLAbreak:
                  type: string
                  example: "Нехватка времени (не корректный крайний срок)"  
    RB_WS_cm3tActionAddtime:
      type: object
      properties:
        "RB_WS_cm3tAction":
              type: object
              properties:
                TimeAdd:
                  type: string
                  example: "125"              
    #---------------------------------------------------------#
    #---------------------------------------------------------#
    # Resource Collection: RBcontactsPortal
    #---------------------------------------------------------# 
    RBcontactsPortalResponseCondenseList:
      allOf:
      - $ref: '#/components/schemas/Base'
      - type: object
        properties:
          "content":
            type: array
            items:
              $ref: '#/components/schemas/RBcontactsPortalID'
    RBcontactsPortalResponseExpandList:
      allOf:
      - $ref: '#/components/schemas/Base'
      - type: object
        properties:
          "content":
            type: array
            items:
              $ref: '#/components/schemas/RBcontactsPortalGET'
    RBcontactsPortalResponseExpand:
      allOf:
      - $ref: '#/components/schemas/Messages'
      - $ref: '#/components/schemas/RBcontactsPortalGET'
      - type: object
        properties:
          "ReturnCode":
            type: integer
            format: int64
            example: 0 
    RBcontactsPortalID:
      type: object
      properties:
        "RBcontactsPortal":
          type: object
          properties:
            operator_id:
              type: string
              example: "rb000000"
    RBcontactsPortalGET:
          type: object
          properties:
            "RBcontactsPortal":
              type: object
              properties:
                contactName:
                  type: string
                  example: "код SM"
                contact_phone:
                  type: string
                  example: "8937*******" 
                dept:
                  type: string
                  example: "2209/2392/23491/35062/35070/35106" 
                email:
                  type: string
                  example: "email@rosbank.ru"
                first_name:
                  type: string
                  example: "Фамилия"
                last_name:
                  type: string
                  example: "Имя"
                third_name:
                  type: string
                  example: "Отчество"  
                operator_id:
                  type: string
                  example: "rb000000"
                title:
                  type: string
                  example: "должность"  
                tps_date_of_hire:
                  type: string
                  example: "2004-01-05T18:00:00+03:00"  
                tps_area_id:
                  type: string
                  example: "CI225092"  
                rb_head:
                  type: string
                  example: "rb111111"  
                tps_approval_group_id:
                  type: string
                  example: "AG0000"  
                shift:
                  type: string
                  example: "1"  
                tps_outstaff:
                  type: boolean
                  example: true
                tps_blocked:
                  type: boolean
                  example: true 
                fullName:
                  type: string
                  example: "ФИО" 
    RBcontactsPortalPUT:
          type: object
          properties:
            "RBcontactsPortal":
              type: object
              properties:
                tps_area_id:
                  type: string
                  example: "CI225092"  
    #-------------------------------------------------------------------------#
    #---------------------------------------------------------#
    # Resource Collection: RB_WS_rbsummary
    #---------------------------------------------------------# 
    RB_WS_rbsummaryResponseExpand:
      allOf:
      - $ref: '#/components/schemas/Messages'
      - $ref: '#/components/schemas/RB_WS_rbsummaryGET'
      - type: object
        properties:
          "ReturnCode":
            type: integer
            format: int64
            example: 0 
    RB_WS_rbsummaryGET:
          type: object
          properties:
            "RB_WS_rbsummary":
              type: object
              properties:
                IncID:
                  type: string
                  example: "SD8577762"
                Summary:
                  type: array
                  items:
                    type: string
                  example:
                    - "02.2.5 Расширение канала Билайн в ДО  г.Петрозаводск, р-н Центр, ул.Антикайнена, д.38 до 20М  и подкл.ех.РФБ"
                    - "PZLE1WERT(10.57.35.94/30 GigabitEthernet0/1/0) - BEELINE\t20 Мбит/сек"
                    - "Адреc;г.Петрозаводск, р-н Центр, ул.Антикайнена, д.38"
                    - "Оператор:Билайн"
                    - "Скорость:20М"
                    - "Кол-во ТД:2шт"
                    - "Кол-во РоЕ-инжекторов:2шт"
    #-------------------------------------------------------------------------#
    #---------------------------------------------------------#
    # Resource Collection: RB_WS_REQUEST
    #---------------------------------------------------------# 
    RB_WS_REQUESTResponseExpand:
      allOf:
      - $ref: '#/components/schemas/Messages'
      - $ref: '#/components/schemas/RB_WS_REQUESTResponseWithoutID'
      - type: object
        properties:
          "ReturnCode":
            type: integer
            format: int64
            example: 0
    RB_WS_REQUESTWithoutID:
          type: object
          properties:
            "RB_WS_REQUEST":
              type: object
              properties:
                User:
                  type: string
                  example: "rb179493"
                TplNumber:
                  type: string
                  example: "R2647"
                Info:
                  type: string
                  example: "Action:Добавление (Add Firewall Rule)///Network:true///User:Ilya KUYKIN///VMName:RBJETPDB00001///ServerType:Сервер баз данных///System:BP Norm///CallbackURL:https://rugtinfrapvr001.gts.rus.socgen///CallbackID:67613797///"
    RB_WS_REQUESTResponseWithoutID:
          type: object
          properties:
            "RB_WS_REQUEST":
              type: object
              properties:
                User:
                  type: string
                  example: "Любанов Дмитрий Игоревич"
                TplNumber:
                  type: string
                  example: "R2647"
                Info:
                  type: string
                  example: "Action:Добавление (Add Firewall Rule)///Network:true///User:Ilya KUYKIN///VMName:RBJETPDB00001///ServerType:Сервер баз данных///System:BP Norm///CallbackURL:https://rugtinfrapvr001.gts.rus.socgen///CallbackID:67613797///"
                SdNum:
                  type: string
                  example: "SD7888234"
    #---------------------------------------------------------#
    #---------------------------------------------------------#
    # Resource Collection: RB_WS_PORTAL
    #---------------------------------------------------------# 
    RB_WS_PORTALResponseExpand:
      allOf:
      - $ref: '#/components/schemas/Messages'
      - $ref: '#/components/schemas/RB_WS_PORTALResponseWithoutID'
      - type: object
        properties:
          "ReturnCode":
            type: integer
            format: int64
            example: 0
    RB_WS_PORTALWithoutID:
          type: object
          properties:
            "RB_WS_PORTAL":
              type: object
              properties:
                User:
                  type: string
                  example: "rb179493"
                RNumber:
                  type: string
                  example: "R2615"
                RTNumber:
                  type: string
                  example: "RT5120"
                integrName:
                  type: string
                  example: "PPP"
                integrID:
                  type: string
                  example: "54321"
                conactEmail:
                  type: string
                  example: "test@test.ru"
                contactPhone:
                  type: string
                  example: "+7(999)999-99-99"
                locationID:
                  type: string
                  example: "CI121291"
                rb.summary:
                  type: array
                  items:
                    anyOf:
                     - type: object
                       properties:
                        Key:
                         type: string
                         example: "Подкатегория"
                        Value:
                         type: string
                         example: "Курьерская отправка документов"
                        Visible:
                         type: boolean
                         example: true
                     - type: object
                       properties:
                        Key:
                         type: string
                         example: "Тип заявки"
                        Value:
                         type: string
                         example: "индивидуальная"
                        Visible:
                         type: boolean
                         example: true
    RB_WS_PORTALResponseWithoutID:
          type: object
          properties:
            "RB_WS_PORTAL":
              type: object
              properties:
                User:
                  type: string
                  example: "Любанов Дмитрий Игоревич"
                RNumber:
                  type: string
                  example: "R2615"
                RTNumber:
                  type: string
                  example: "RT5120"
                integrName:
                  type: string
                  example: "PPP"
                integrID:
                  type: string
                  example: "54321"
                conactEmail:
                  type: string
                  example: "test@test.ru"
                contactPhone:
                  type: string
                  example: "+7(999)999-99-99"
                locationID:
                  type: string
                  example: "CI121291"
                number:
                  type: string
                  example: "SD7883692"
                rb.summary:
                  type: array
                  items:
                    anyOf:
                     - type: object
                       properties:
                        Key:
                         type: string
                         example: "Подкатегория"
                        Value:
                         type: string
                         example: "Курьерская отправка документов"
                        Visible:
                         type: boolean
                         example: true
                     - type: object
                       properties:
                        Key:
                         type: string
                         example: "Тип заявки"
                        Value:
                         type: string
                         example: "индивидуальная"
                        Visible:
                         type: boolean
                         example: true
    #---------------------------------------------------------#
    #---------------------------------------------------------#
    # Resource Collection: RB_WS_RICHELIEU
    #---------------------------------------------------------# 
    RB_WS_RICHELIEUResponseExpand:
      allOf:
      - $ref: '#/components/schemas/Messages'
      - $ref: '#/components/schemas/RB_WS_RICHELIEUResponseWithoutID'
      - type: object
        properties:
          "ReturnCode":
            type: integer
            format: int64
            example: 0
    RB_WS_RICHELIEUWithoutID:
          type: object
          properties:
            "RB_WS_RICHELIEU":
              type: object
              properties:
                UserID:
                  type: string
                  example: "rb035857"
                UserEmail:
                  type: string
                  example: "Anastasiya.Tashcheva@rosbank.ru"
                rb.summary:
                  type: array
                  items:
                    anyOf:
                     - type: object
                       properties:
                        Key:
                         type: string
                         example: "Подразделение"
                        Value:
                         type: string
                         example: "Отделение"
                        Visible:
                         type: boolean
                         example: true
                     - type: object
                       properties:
                        Key:
                         type: string
                         example: "Крайний срок"
                        Value:
                         type: string
                         example: "2022-11-16T23:59:59"
                        Visible:
                         type: boolean
                         example: true
                     - type: object
                       properties:
                        Key:
                         type: string
                         example: "Рейтинг"
                        Value:
                         type: string
                         example: "45"
                        Visible:
                         type: boolean
                         example: true
                     - type: object
                       properties:
                        Key:
                         type: string
                         example: "Классификатор 1 (ПО)"
                        Value:
                         type: string
                         example: "РОСБАНК Онлайн (новое)"
                        Visible:
                         type: boolean
                         example: true
                     - type: object
                       properties:
                        Key:
                         type: string
                         example: "Классификатор 2 (ТЕМА)"
                        Value:
                         type: string
                         example: "Текущие счета"
                        Visible:
                         type: boolean
                         example: true
                     - type: object
                       properties:
                        Key:
                         type: string
                         example: "Классификатор 3 (Подтема)"
                        Value:
                         type: string
                         example: "Платежи и переводы"
                        Visible:
                         type: boolean
                         example: true
                     - type: object
                       properties:
                        Key:
                         type: string
                         example: "Классификатор 4 (Причина)"
                        Value:
                         type: string
                         example: "По реквизитам (физ.лицам, юр.лицам, в бюджет)"
                        Visible:
                         type: boolean
                         example: true
                     - type: object
                       properties:
                        Key:
                         type: string
                         example: "ФИО клиента"
                        Value:
                         type: string
                         example: "ПАСЫНКОВ НИКОЛАЙ ВЛАДИМИРОВИЧ"
                        Visible:
                         type: boolean
                         example: true
                     - type: object
                       properties:
                        Key:
                         type: string
                         example: "Идентификаторы (CRM ID, ID_БИС, филиал, IBSO)"
                        Value:
                         type: string
                         example: "Siebel ID: 2-J-O37SR  [{\"Id\":\"337185\",\"system\":\"BIS\",\"branch\":\"R24\"}]"
                        Visible:
                         type: boolean
                         example: true
                     - type: object
                       properties:
                        Key:
                         type: string
                         example: "Тип клиента"
                        Value:
                         type: string
                         example: "ЗАРПЛАТНЫЙ ПРОЕКТ"
                        Visible:
                         type: boolean
                         example: true
                     - type: object
                       properties:
                        Key:
                         type: string
                         example: "Сегмент"
                        Value:
                         type: string
                         example: "Premium"
                        Visible:
                         type: boolean
                         example: true
                     - type: object
                       properties:
                        Key:
                         type: string
                         example: "FCR"
                        Value:
                         type: string
                         example: "Да"
                        Visible:
                         type: boolean
                         example: true
                     - type: object
                       properties:
                        Key:
                         type: string
                         example: "Номер карты, договора"
                        Value:
                         type: string
                         example: "добрый день! у клиента не получается сделать перевод в бюджет. после того как вводят номер счета выходит ошибка \"реквизиты не относятся к бюджетному платежу. Пожалуйста воспользуйтесь переводом организациям-юр.лицу\". Но данный счет относится к бюджетному платежу. Ранее клиент делал переводы и все проходило. Есть сохраненный шаблон. Теперь не получается. Пробовал и по сохраненному шаблону и просто по новой. Ошибка. Просьба уточнить почему. Говорит, что реквизиты верные. Вопрос срочный. оплату необходимо провести сегодня.  принскрин ошибки во вложении"
                        Visible:
                         type: boolean
                         example: true
                     - type: object
                       properties:
                        Key:
                         type: string
                         example: "Канал поступления"
                        Value:
                         type: string
                         example: "Офис банка"
                        Visible:
                         type: boolean
                         example: true
                     - type: object
                       properties:
                        Key:
                         type: string
                         example: "Номер обращения в Ришелье"
                        Value:
                         type: string
                         example: "331035"
                        Visible:
                         type: boolean
                         example: true
                     - type: object
                       properties:
                        Key:
                         type: string
                         example: "Описание проблемы"
                        Value:
                         type: string
                         example: "1. Подробное описание последовательности действий клиента: \r\n2. Описание возникающих ошибок (текст ошибки): \r\n3. Скриншот ошибки \r\n4. Реквизиты используемые для оплаты - просьба указать\r\n5. Сумма оплаты Время возникновения: 2022-11-14 14:00:32"
                        Visible:
                         type: boolean
                         example: true
    RB_WS_RICHELIEUResponseWithoutID:
          type: object
          properties:
            "RB_WS_RICHELIEU":
              type: object
              properties:
                CRNumber:
                  type: string
                  example: "CR7822768"
                SDNumber:
                  type: string
                  example: "SD9437941"
                UserEmail:
                  type: string
                  example: "Anastasiya.Tashcheva@rosbank.ru"
                UserID:
                  type: string
                  example: "Тащева Анастасия Гермогеновна"
                rb.summary:
                  type: array
                  items:
                    anyOf:
                     - type: object
                       properties:
                        Key:
                         type: string
                         example: "Подразделение"
                        Value:
                         type: string
                         example: "Отделение"
                        Visible:
                         type: boolean
                         example: true
                     - type: object
                       properties:
                        Key:
                         type: string
                         example: "Крайний срок"
                        Value:
                         type: string
                         example: "2022-11-16T23:59:59"
                        Visible:
                         type: boolean
                         example: true
                     - type: object
                       properties:
                        Key:
                         type: string
                         example: "Рейтинг"
                        Value:
                         type: string
                         example: "45"
                        Visible:
                         type: boolean
                         example: true
                     - type: object
                       properties:
                        Key:
                         type: string
                         example: "Классификатор 1 (ПО)"
                        Value:
                         type: string
                         example: "РОСБАНК Онлайн (новое)"
                        Visible:
                         type: boolean
                         example: true
                     - type: object
                       properties:
                        Key:
                         type: string
                         example: "Классификатор 2 (ТЕМА)"
                        Value:
                         type: string
                         example: "Текущие счета"
                        Visible:
                         type: boolean
                         example: true
                     - type: object
                       properties:
                        Key:
                         type: string
                         example: "Классификатор 3 (Подтема)"
                        Value:
                         type: string
                         example: "Платежи и переводы"
                        Visible:
                         type: boolean
                         example: true
                     - type: object
                       properties:
                        Key:
                         type: string
                         example: "Классификатор 4 (Причина)"
                        Value:
                         type: string
                         example: "По реквизитам (физ.лицам, юр.лицам, в бюджет)"
                        Visible:
                         type: boolean
                         example: true
                     - type: object
                       properties:
                        Key:
                         type: string
                         example: "ФИО клиента"
                        Value:
                         type: string
                         example: "ПАСЫНКОВ НИКОЛАЙ ВЛАДИМИРОВИЧ"
                        Visible:
                         type: boolean
                         example: true
                     - type: object
                       properties:
                        Key:
                         type: string
                         example: "Идентификаторы (CRM ID, ID_БИС, филиал, IBSO)"
                        Value:
                         type: string
                         example: "Siebel ID: 2-J-O37SR  [{\"Id\":\"337185\",\"system\":\"BIS\",\"branch\":\"R24\"}]"
                        Visible:
                         type: boolean
                         example: true
                     - type: object
                       properties:
                        Key:
                         type: string
                         example: "Тип клиента"
                        Value:
                         type: string
                         example: "ЗАРПЛАТНЫЙ ПРОЕКТ"
                        Visible:
                         type: boolean
                         example: true
                     - type: object
                       properties:
                        Key:
                         type: string
                         example: "Сегмент"
                        Value:
                         type: string
                         example: "Premium"
                        Visible:
                         type: boolean
                         example: true
                     - type: object
                       properties:
                        Key:
                         type: string
                         example: "FCR"
                        Value:
                         type: string
                         example: "Да"
                        Visible:
                         type: boolean
                         example: true
                     - type: object
                       properties:
                        Key:
                         type: string
                         example: "Номер карты, договора"
                        Value:
                         type: string
                         example: "добрый день! у клиента не получается сделать перевод в бюджет. после того как вводят номер счета выходит ошибка \"реквизиты не относятся к бюджетному платежу. Пожалуйста воспользуйтесь переводом организациям-юр.лицу\". Но данный счет относится к бюджетному платежу. Ранее клиент делал переводы и все проходило. Есть сохраненный шаблон. Теперь не получается. Пробовал и по сохраненному шаблону и просто по новой. Ошибка. Просьба уточнить почему. Говорит, что реквизиты верные. Вопрос срочный. оплату необходимо провести сегодня.  принскрин ошибки во вложении"
                        Visible:
                         type: boolean
                         example: true
                     - type: object
                       properties:
                        Key:
                         type: string
                         example: "Канал поступления"
                        Value:
                         type: string
                         example: "Офис банка"
                        Visible:
                         type: boolean
                         example: true
                     - type: object
                       properties:
                        Key:
                         type: string
                         example: "Номер обращения в Ришелье"
                        Value:
                         type: string
                         example: "331035"
                        Visible:
                         type: boolean
                         example: true
                     - type: object
                       properties:
                        Key:
                         type: string
                         example: "Описание проблемы"
                        Value:
                         type: string
                         example: "1. Подробное описание последовательности действий клиента: \r\n2. Описание возникающих ошибок (текст ошибки): \r\n3. Скриншот ошибки \r\n4. Реквизиты используемые для оплаты - просьба указать\r\n5. Сумма оплаты Время возникновения: 2022-11-14 14:00:32"
                        Visible:
                         type: boolean
                         example: true
    #---------------------------------------------------------#
    #---------------------------------------------------------#
    # Resource Collection: RB_WS_DEVICE_ATM
    #---------------------------------------------------------# 
    RB_WS_DEVICE_ATMResponseExpand:
      allOf:
      - $ref: '#/components/schemas/Messages'
      - $ref: '#/components/schemas/RB_WS_DEVICE_ATMResponseWithID'
      - type: object
        properties:
          "ReturnCode":
            type: integer
            format: int64
            example: 0
    RB_WS_DEVICE_ATMResponseWithID:
      type: object
      properties:
        "RB_WS_DEVICE_ATM":
          type: object
          properties:
            SoftUsed:
              type: string
              example: "Произвольное значение"
            SoftUsedVer:
              type: string
              example: "Произвольное значение"
            VerSPTellme:
              type: string
              example: "Произвольное значение"
            VerHFTellme:
              type: string
              example: "Произвольное значение"
            VerTellmeSecurity:
              type: string
              example: "Произвольное значение"
            VerWin:
              type: string
              example: "Произвольное значение"
            VerXFS:
              type: string
              example: "Произвольное значение"
            VerHtmlSet:
              type: string
              example: "Произвольное значение"
            VerAD:
              type: string
              example: "Произвольное значение"
            VerVideoAgent:
              type: string
              example: "Произвольное значение"
            id:
              type: string
              example: "Идентификатор обновлённой КЕ"
    RB_WS_DEVICE_ATMRequestWithoutID:
      type: object
      properties:
        "RB_WS_DEVICE_ATM":
          type: object
          properties:
            SoftUsed:
              type: string
              example: "Произвольное значение"
            SoftUsedVer:
              type: string
              example: "Произвольное значение"
            VerSPTellme:
              type: string
              example: "Произвольное значение"
            VerHFTellme:
              type: string
              example: "Произвольное значение"
            VerTellmeSecurity:
              type: string
              example: "Произвольное значение"
            VerWin:
              type: string
              example: "Произвольное значение"
            VerXFS:
              type: string
              example: "Произвольное значение"
            VerHtmlSet:
              type: string
              example: "Произвольное значение"
            VerAD:
              type: string
              example: "Произвольное значение"
            VerVideoAgent:
              type: string
              example: "Произвольное значение"
    #---------------------------------------------------------#
    #---------------------------------------------------------#
    # Resource Collection: RBincidentsPortal
    #---------------------------------------------------------# 
    RBincidentsPortalResponseExpand:
      allOf:
      - $ref: '#/components/schemas/Messages'
      - $ref: '#/components/schemas/RBincidentsPortalResponse'
      - type: object
        properties:
          "ReturnCode":
            type: integer
            format: int64
            example: 0
    RBincidentsPortalResponse:
          type: object
          properties:
            "RBincidentsPortal":
              type: object
              properties:
                claimer:
                  type: string
                  example: "Любанов Дмитрий Игоревич"
                contact_person:
                  type: string
                  example: "Любанов Дмитрий Игоревич"
                deadline:
                  type: string
                  format: date-time
                detail_description:
                  type: array
                  items:
                    type: string
                  example:
                    - "Необходимо подтверждение сертификата пользователя."
                entry_point:
                  type: string
                  format: date-time
                notArchive:
                  type: boolean
                  example: true
                number:
                  type: string
                  example: "SD7882530"
                priority:
                  type: string
                  example: "20"
                reception_method:
                  type: string
                  example: "10"
                short_description:
                  type: string
                  example: "Вскрытие пароля/Разблокировка профайла БИС"
                status:
                  type: string
                  example: "40"
                template:
                  type: string
                  example: "R2575"
    RBincidentsPortalWithoutID:
          type: object
          properties:
            "RBincidentsPortal":
              type: object
              properties:
                short_description:
                  type: string
                  example: "Вскрытие пароля/Разблокировка профайла БИС"
                detail_description:
                  type: array
                  items:
                    type: string
                  example:
                    - "Свободная форма тест 1"
                ownerName:
                  type: string
                  example: "rb179493"
                category:
                  type: string
                  example: "RB Incident"
                serviceID:
                  type: string
                  example: "CI125271"
                itSystemID:
                  type: string
                  example: "CI75307"
                rb.integration.number:
                  type: array
                  items:
                    anyOf:
                     - type: object
                       properties:
                        integrName:
                         type: string
                         example: "PPP"
                        integrID:
                         type: string
                         example: "12345"
    RBincidentsPortalActionescalate:
          type: object
          properties:
            "RBincidentsPortal":
              type: object
              properties:
                protocolText:
                  type: array
                  items:
                    type: string
                  example:
                    - "тест метода escalate"
                protocolOperator:
                  type: string
                  example: "rb179493"
    RBincidentsPortalActionnotarchive:
          type: object
          properties:
            "RBincidentsPortal":
              type: object
              properties:
                notArchive:
                  type: boolean
                  example: true
    RBincidentsPortalActionconfirmresolve:
          type: object
          properties:
            "RBincidentsPortal":
              type: object
              properties:
                protocolText:
                  type: array
                  items:
                    type: string
                  example:
                    - "проверяю оценку"
                protocolOperator:
                  type: string
                  example: "rb179493"
                protocolNumber:
                  type: string
                  example: "5"
    RBincidentsPortalActiondeny:
          type: object
          properties:
            "RBincidentsPortal":
              type: object
              properties:
                protocolText:
                  type: array
                  items:
                    type: string
                  example:
                    - "тест метода deny"
    RBincidentsPortalActionrequeststatus:
          type: object
          properties:
            "RBincidentsPortal":
              type: object
    RBincidentsPortalActionmessage:
          type: object
          properties:
            "RBincidentsPortal":
              type: object
              properties:
                protocolText:
                  type: array
                  items:
                    type: string
                  example:
                    - "тест метода message"
                protocolOperator:
                  type: string
                  example: "rb179493"
    RBincidentsPortalActionnotactual:
          type: object
          properties:
            "RBincidentsPortal":
              type: object
              properties:
                protocolOperator:
                  type: string
                  example: "rb179493"
    RBincidentsPortalActionnotactualrich:
          type: object
          properties:
            "RBincidentsPortal":
              type: object
              properties:
                protocolOperator:
                  type: string
                  example: "rb179493"
    RBincidentsPortalActiondenyrich:
          type: object
          properties:
            "RBincidentsPortal":
              type: object
              properties:
                protocolText:
                  type: array
                  items:
                    type: string
                  example:
                    - "тест отклонения решения"
                protocolOperator:
                  type: string
                  example: "rb179963"
    RBincidentsPortalActionansver:
          type: object
          properties:
            "RBincidentsPortal":
              type: object
              properties:
                protocolText:
                  type: array
                  items:
                    type: string
                  example:
                    - "в заявке отсутствует контактный номер"
                protocolOperator:
                  type: string
                  example: "rb189826"
                numberTsk:
                  type: string
                  example: "RFT5837111"
    RBincidentsPortalActionunlocksdremake:
          type: object
          properties:
            "RBincidentsPortal":
              type: object
    RBincidentsPortalActionclose:
          type: object
          properties:
            "RBincidentsPortal":
              type: object
              properties:
                resolutionCode:
                  type: string
                  example: "Успешно"
                resolution:
                  type: array
                  items:
                    type: string
                  example: 
                    - тест
                    - метода 
                    - close        
    RBincidentsPortalActiondoNothing:
          type: object
          properties:
            "RBincidentsPortal":
              type: object

    #---------------------------------------------------------#
    #---------------------------------------------------------#
    # Resource Collection: RB_WS_rbsummary
    #---------------------------------------------------------# 
    RBcriticalProblemResponseCondenseList:
      allOf:
      - $ref: '#/components/schemas/Base'
      - type: object
        properties:
          "content":
            type: array
            items:
              $ref: '#/components/schemas/RBcriticalProblemID'
    RBcriticalProblemResponseExpandList:
      allOf:
      - $ref: '#/components/schemas/Base'
      - type: object
        properties:
          "content":
            type: array
            items:
              $ref: '#/components/schemas/RBcriticalProblemGET'
    RBcriticalProblemResponseExpand:
      allOf:
      - $ref: '#/components/schemas/Messages'
      - $ref: '#/components/schemas/RBcriticalProblemGET'
      - type: object
        properties:
          "ReturnCode":
            type: integer
            format: int64
            example: 0 
    RBcriticalProblemID:
      type: object
      properties:
        "RBcriticalProblem":
          type: object
          properties:
            number:
              type: string
              example: "IM0000000"
    RBcriticalProblemGET:
          type: object
          properties:
            "RBcriticalProblem":
              type: object
              properties:
                number:
                  type: string
                  example: "IM00000000"
                summary:
                  type: string
                actionPlan:
                  type: array
                  items:
                    type: string
                assignee:
                  type: string
                  example: "rb077174"
                eventAssignee:
                  type: string
                  example: "rb077174"
                deptEvent:
                  type: string
                deptHead:
                  type: string 
                dueDate:
                  type: string
                  example: "2022-03-31T03:00:00+03:00"
                report:
                  type: array
                  items:
                    type: string 
                sendORMTool:
                  type: boolean
                issueKey:
                  type: string
                  example: "PRB-210"  
                Title:
                  type: string 
                Service:
                  type: string
                  example: "CI226317"  
                Team:
                  type: array
                  items:
                    type: string  
                Priority:
                  type: string
                  example: "10"
                ServiceImpact:
                  type: array
                  items:
                    type: string
                  example:
                    - "CI000001"
                    - "CI000002"
                FromTimeImpact:
                  type: array
                  items:
                    type: string
                  example:
                    - "2022-10-29T21:00:00+00:00"
                    - "2022-10-29T21:00:00+00:00"
                TillTimeImpact:
                  type: array
                  items:
                    type: string
                  example:
                    - "2022-10-31T21:00:00+00:00"
                    - "2022-10-31T21:00:00+00:00"
                DurationImpact:
                  type: array
                  items:
                    type: string
                  example:
                    - "1 14:34:44"
                    - "1 14:34:44"
                Inaccessibility:
                  type: array
                  items:
                    type: string
                  example:
                    - "Полная"
                    - "Частичная"
                Rto:
                  type: string
                  example: "Да"
                ImpactDbofl:
                  type: boolean
                ImpactDboul:
                  type: boolean
                ImpactCard:
                  type: boolean
                ImpactIndound:
                  type: boolean
                ImpactRegional:
                  type: boolean
                ImpactBus:
                  type: array
                  items:
                    type: string
                EventType:
                  type: string
                OccurrenceTime:
                  type: string
                  example: "2021-12-16T02:43:00+03:00"
                BFrom:
                  type: string
                  example: "2021-12-16T02:43:00+03:00"
                BTill:
                  type: string
                  example: "2021-12-16T06:15:00+03:00" 
                BDuration:
                  type: string
                  example: "03:32:00"
                Category:
                  type: string
                  example: "4. Сбой ПО (Software)"
                Subcategory:
                  type: string
                  example: "Некорректные настройки ПО в ходе эксплуатации"
                ReportReason:
                  type: array
                  items:
                    type: string
                CandidateION:
                  type: boolean

    #-------------------------------------------------------------------------#
    #---------------------------------------------------------#
    # Resource Collection: RB_WS_Device_DB
    #---------------------------------------------------------# 
    RB_WS_Device_DBResponseCondenseList:
      allOf:
      - $ref: '#/components/schemas/Base'
      - type: object
        properties:
          "content":
            type: array
            items:
              $ref: '#/components/schemas/RB_WS_Device_DBID'
    RB_WS_Device_DBResponseExpandList:
      allOf:
      - $ref: '#/components/schemas/Base'
      - type: object
        properties:
          "content":
            type: array
            items:
              $ref: '#/components/schemas/RB_WS_Device_DBGET'
    RB_WS_Device_DBResponseExpand:
      allOf:
      - $ref: '#/components/schemas/Messages'
      - $ref: '#/components/schemas/RB_WS_Device_DBGET'
      - type: object
        properties:
          "ReturnCode":
            type: integer
            format: int64
            example: 0 
    RB_WS_Device_DBID:
      type: object
      properties:
        "RB_WS_Device_DB":
          type: object
          properties:
            Id:
              type: string
              example: "CI467089"
    RB_WS_Device_DBGET:
          type: object
          properties:
            "RB_WS_Device_DB":
              type: object
              properties:
                DatabaseManagementSystem:
                  type: string
                  example: "Oracle Database 10g Enterprise Edition Release 10.2.0.4.0 -"
                Id:
                  type: string
                  example: "CI462169"
                InstanceName:
                  type: string
                  example: "instance_name:DLTBSGV"
                Name:
                  type: string
                  example: "DLTBSGV"
                Owner:
                  type: string
                  example: "rb100808"
                Status:
                  type: string
                  example: "40"
                type:
                  type: string
                  example: "dbbase"
    #-------------------------------------------------------------------------#
    #---------------------------------------------------------#
    # Resource Collection: RB_WS_Device_Unit_ITSys
    #---------------------------------------------------------# 
    RB_WS_Device_Unit_ITSysResponseCondenseList:
      allOf:
      - $ref: '#/components/schemas/Base'
      - type: object
        properties:
          "content":
            type: array
            items:
              $ref: '#/components/schemas/RB_WS_Device_Unit_ITSysID'
    RB_WS_Device_Unit_ITSysResponseExpandList:
      allOf:
      - $ref: '#/components/schemas/Base'
      - type: object
        properties:
          "content":
            type: array
            items:
              $ref: '#/components/schemas/RB_WS_Device_Unit_ITSysGET'
    RB_WS_Device_Unit_ITSysResponseExpand:
      allOf:
      - $ref: '#/components/schemas/Messages'
      - $ref: '#/components/schemas/RB_WS_Device_Unit_ITSysGET'
      - type: object
        properties:
          "ReturnCode":
            type: integer
            format: int64
            example: 0 
    RB_WS_Device_Unit_ITSysID:
      type: object
      properties:
        "RB_WS_Device_Unit_ITSys":
          type: object
          properties:
            Id:
              type: string
              example: "CI463289"
    RB_WS_Device_Unit_ITSysGET:
          type: object
          properties:
            "RB_WS_Device_Unit_ITSys":
              type: object
              properties:
                CIAdmin:
                  type: string
                  example: "rb077762"
                DeptDirector:
                  type: string
                  example: "Чубуков Андрей Владимирович"
                Environment:
                  type: string
                  example: "Производственная среда"
                ITSystemManager:
                  type: string
                  example: "Кишинский Святослав Андреевич"
                ITSystemManagerDeputy:
                  type: string
                  example: "Жура Вячеслав Вячеславович"
                ITSystemManagerLogin:
                  type: string
                  example: "rb077762"
                ITSystemManagerLoginDeputy:
                  type: string
                  example: "rb061805"
                Id:
                  type: string
                  example: "CI463289"
                Name:
                  type: string
                  example: "PROD SAS MA"
                Owner:
                  type: string
                  example: "rb053619"
                Status:
                  type: string
                  example: "40"
                type:
                  type: string
                  example: "itsysunit"
    #-------------------------------------------------------------------------#
    #---------------------------------------------------------#
    # Resource Collection: RB_WS_Device_ITSystems
    #---------------------------------------------------------# 
    RB_WS_Device_ITSystemsResponseCondenseList:
      allOf:
      - $ref: '#/components/schemas/Base'
      - type: object
        properties:
          "content":
            type: array
            items:
              $ref: '#/components/schemas/RB_WS_Device_ITSystemsID'
    RB_WS_Device_ITSystemsResponseExpandList:
      allOf:
      - $ref: '#/components/schemas/Base'
      - type: object
        properties:
          "content":
            type: array
            items:
              $ref: '#/components/schemas/RB_WS_Device_ITSystemsGET'
    RB_WS_Device_ITSystemsResponseExpand:
      allOf:
      - $ref: '#/components/schemas/Messages'
      - $ref: '#/components/schemas/RB_WS_Device_ITSystemsGET'
      - type: object
        properties:
          "ReturnCode":
            type: integer
            format: int64
            example: 0 
    RB_WS_Device_ITSystemsID:
      type: object
      properties:
        "RB_WS_Device_ITSystems":
          type: object
          properties:
            Id:
              type: string
              example: "CI457913"
    RB_WS_Device_ITSystemsGET:
          type: object
          properties:
            "RB_WS_Device_ITSystems":
              type: object
              properties:
                AccessfromInternet:
                  type: string
                  example: "false"
                ApplicationManager:
                  type: string
                  example: "Зыков Виктор  Александрович"
                ApplicationManagerLogin:
                  type: string
                  example: "rb179410"
                ApplicationName:
                  type: string
                  example: "EWAM"
                Assignment:
                  type: string
                  example: "WHOLESALE"
                Availability:
                  type: string
                  example: "A1"
                FraudSensitive:
                  type: string
                  example: "FS - 0"
                Hosting:
                  type: string
                  example: "Internal/DC solution"
                Integrity:
                  type: string
                  example: "I0"
                LastChangeDate:
                  type: string
                  example: "2022-10-13T11:46:55+03:00"
                Owner:
                  type: string
                  example: "rb054712"
                RPO:
                  type: string
                  example: "TBD"
                RegistrationDate:
                  type: string
                  example: "2021-10-07T16:51:53+03:00"
                Status:
                  type: string
                  example: "10"
                SystemID:
                  type: string
                  example: "CI457913"
                type:
                  type: string
                  example: "itsys"
                Ident:
                  type: string
                  example: "ATRDM"
                BusinessAnalystLogin:
                  type: string
                  example: "rb000000"
                BusinessAnalyst:
                  type: string
                  example: "Иванов Иван Иванович"
                ResponsibleDev:
                  type: string
                  example: "rb000000"
                ResponsibleDevName:
                  type: string
                  example: "Иванов Иван Иванович"
                ResponsibleDevDept:
                  type: string
                  example: "Intrabank Productions"
                DescriptionIT:
                  type: array
                  items:
                    type: string
                  example:
                    - "описание"
                    - "на вкладке"
                    - "ИТ система"
    #-------------------------------------------------------------------------#
    #---------------------------------------------------------#
    # Resource Collection: RB_WS_Device_Server
    #---------------------------------------------------------# 
    RB_WS_Device_ServerResponseCondenseList:
      allOf:
      - $ref: '#/components/schemas/Base'
      - type: object
        properties:
          "content":
            type: array
            items:
              $ref: '#/components/schemas/RB_WS_Device_ServerID'
    RB_WS_Device_ServerResponseExpandList:
      allOf:
      - $ref: '#/components/schemas/Base'
      - type: object
        properties:
          "content":
            type: array
            items:
              $ref: '#/components/schemas/RB_WS_Device_ServerGET'
    RB_WS_Device_ServerResponseExpand:
      allOf:
      - $ref: '#/components/schemas/Messages'
      - $ref: '#/components/schemas/RB_WS_Device_ServerGET'
      - type: object
        properties:
          "ReturnCode":
            type: integer
            format: int64
            example: 0 
    RB_WS_Device_ServerID:
      type: object
      properties:
        "RB_WS_Device_Server":
          type: object
          properties:
            Id:
              type: string
              example: "CI463187"
    RB_WS_Device_ServerGET:
          type: object
          properties:
            "RB_WS_Device_Server":
              type: object
              properties:
                constructiveExec:
                  type: string
                  example: "Rac"
                countCore:
                  type: string
                  example: "4"
                countProcessor:
                  type: string
                  example: "4"
                dateReg:
                  type: string
                  example: "2021-12-14T13:30:33+03:00"
                dnsName:
                  type: string
                  example: "rsb-dbpmossm.rosbank.rus.socgen"
                id:
                  type: string
                  example: "CI463187"
                iloIpAddress:
                  type: string
                  example: "1.1.1.1"
                lastChangeDate:
                  type: string
                  example: "2022-05-05T11:07:25+03:00"
                location:
                  type: string
                  example: "Город Москва Улица Смольная Дом 22 Комната 261"
                model:
                  type: string
                  example: "ProLiant DL580 G5555"
                network.config:
                  type: array
                  items:
                    anyOf:
                     - type: object
                       properties:
                        ipAddress:
                         type: string
                         example: "172.25.145.117"
                        macAddress:
                         type: string
                         example: "18A9055AB42A"
                        subnetworkName:
                         type: string
                         example: "172.25.144.0"
                     - type: object
                       properties:
                        ipAddress:
                         type: string
                         example: "10.32.59.9"
                        macAddress:
                         type: string
                         example: "18A9055AB426"
                        subnetworkName:
                         type: string
                         example: "10.32.59.0"
                operSystem:
                  type: string
                  example: "Windows 2008 R2  Server Standard"
                owner:
                  type: string
                  example: "rb003141"
                rack:
                  type: string
                  example: "R261-B20"
                serialNumber:
                  type: string
                  example: "GB8024XV7L"
                status:
                  type: string
                  example: "40"
                title:
                  type: string
                  example: "TESTCI-MFSMWS"
                type:
                  type: string
                  example: "server"
    #-------------------------------------------------------------------------#
    #---------------------------------------------------------#
    # Resource Collection: RBrequestTaskAction
    #---------------------------------------------------------# 
    RBrequestTaskActionResponseCondenseList:
      allOf:
      - $ref: '#/components/schemas/Base'
      - type: object
        properties:
          "content":
            type: array
            items:
              $ref: '#/components/schemas/RBrequestTaskActionID'
    RBrequestTaskActionResponseExpandList:
      allOf:
      - $ref: '#/components/schemas/Base'
      - type: object
        properties:
          "content":
            type: array
            items:
              $ref: '#/components/schemas/RBrequestTaskActionGET'
    RBrequestTaskActionID:
      type: object
      properties:
        "RBrequestTaskAction":
          type: object
          properties:
            Number:
              type: string
              example: "RFT5398935"
    RBrequestTaskActionGET:
          type: object
          properties:
            "RBrequestTaskAction":
              type: object
              properties:
                Number:
                  type: string
                  example: "RFT5398935"
                Status:
                  type: string
                  example: "30"
                ResolutionCode:
                  type: string
                  example: "20"
                AssigneeName:
                  type: string
                  example: "rb184220"
                SLABreakReason:
                  type: string
                Resolution:
                  type: array
                  items:
                    type: string
                Title:
                  type: string
                  example: "Создание и регистрация канала связи в GBase"
                Description:
                  type: array
                  items:
                    type: string
                  example:
                    - "Необходимо создать новый канал связи в GBase"
                priority:
                  type: string
                  example: "10"
                Deadline:
                  type: string
                  example: "2021-10-29T12:51:30+03:00"
                ItSystem:
                  type: string
                  example: "CI111054" 
                Impact:
                  type: string
                  example: "10"
                Service:
                  type: string
                  example: "CI000002"
                CompletionTime:
                  type: string
                  example: "2021-10-29T12:51:30+03:00"
                CopyResult:
                  type: boolean
                State:
                  type: string
    RBrequestTaskActionResponseExpand:
      allOf:
      - $ref: '#/components/schemas/Messages'
      - $ref: '#/components/schemas/RBrequestTaskActionGET'
      - type: object
        properties:
          "ReturnCode":
            type: integer
            format: int64
            example: 0 
    RBrequestTaskActionExecute:
      type: object
      properties:
        "RBrequestTaskAction":
              type: object
              properties:
                AssigneeName:
                  type: string
                  example: "rb184220"
                ResolutionCode:
                  type: string
                  example: "70"
                Resolution:
                  type: array
                  items:
                    type: string 
    RBrequestTaskActionUpdate:
      type: object
      properties:
        "RBrequestTaskAction":
              type: object
              properties:
                State:
                  type: string
                  example: "Open"             
    #---------------------------------------------------------#
    #---------------------------------------------------------#
    # Resource Collection: RBprobsummaryAction
    #---------------------------------------------------------# 
    RBprobsummaryActionResponseCondenseList:
      allOf:
      - $ref: '#/components/schemas/Base'
      - type: object
        properties:
          "content":
            type: array
            items:
              $ref: '#/components/schemas/RBprobsummaryActionID'
    RBprobsummaryActionResponseExpandList:
      allOf:
      - $ref: '#/components/schemas/Base'
      - type: object
        properties:
          "content":
            type: array
            items:
              $ref: '#/components/schemas/RBprobsummaryActionGET'
    RBprobsummaryActionID:
      type: object
      properties:
        "RBprobsummaryAction":
          type: object
          properties:
            Number:
              type: string
              example: "IM2809790"
    RBprobsummaryActionGET:
          type: object
          properties:
            "RBprobsummaryAction":
              type: object
              properties:
                Number:
                  type: string
                  example: "IM2809790"
                Status:
                  type: string
                  example: "30"
                Title:
                  type: string
                  example: "test"
                GroupId:
                  type: string
                  example: "WG1111"
                AssigneeName:
                  type: string
                  example: "rb184220" 
                SLABreakReason:
                  type: string
                  example: "Нехватка рабочего времени"
                ReportReason:
                  type: array
                  items:
                    type: string
                  example:
                    - "testovoe" 
                ResolutionCode:
                  type: string
                  example: "20"
                FixType:
                  type: string
                  example: "permanent"
                RiskGroup: 
                  type: string
                  example: "46 * Poor management of projects"
                Reason:
                  type: string
                  example: "REAS057"  
                Resolution:
                  type: array
                  items:
                    type: string
                State:
                  type: string
                  example: "15"
                PlannedDateRealization:
                  type: string
                ResolveRegistrar:
                  type: boolean  
                Description:
                  type: array
                  items:
                    type: string
                SmType:
                  type: string
                  example: "RB Incident"
                priority:
                  type: string
                  example: "10"
                Deadline:
                  type: string
                  example: "2021-10-29T12:51:30+03:00"
                ItSystem:
                  type: string
                  example: "CI111054" 
                Impact:
                  type: string
                  example: "10"
                Service:
                  type: string
                  example: "CI000002"
                CompletionTime:
                  type: string
                  example: "2021-10-29T12:51:30+03:00"
    RBprobsummaryActionResponseExpand:
      allOf:
      - $ref: '#/components/schemas/Messages'
      - $ref: '#/components/schemas/RBprobsummaryActionGET'
      - type: object
        properties:
          "ReturnCode":
            type: integer
            format: int64
            example: 0 
    RBprobsummaryActionExecute:
      type: object
      properties:
        "RBprobsummaryAction":
              type: object
              properties:
                AssigneeName:
                  type: string
                  example: "rb184220"
                ReportReason:
                  type: array
                  items:
                    type: string 
                Resolution:
                  type: array
                  items:
                    type: string 
    RBprobsummaryActionUpdate:
      type: object
      properties:
        "RBprobsummaryAction":
              type: object
              properties:
                State:
                  type: string
                  example: "Открыто"
    RBprobsummaryActionReassign:
      type: object
      properties:
        "RBprobsummaryAction":
              type: object
              properties:
                ReportReason:
                  type: array 
                  items:
                    type: string              
    #---------------------------------------------------------#
    #---------------------------------------------------------#
    # Resource Collection: RB_WS_HISTORY
    #---------------------------------------------------------# 
    RB_WS_HISTORYGetResponseCondenseList:
      allOf:
      - $ref: '#/components/schemas/Base'
      - type: object
        properties:
          "content":
            type: array
            items:
              type: object
              properties:
                "RB_WS_HISTORY_{тип КЕ}":
                  type: object
                  properties:
                    ID:
                      type: string
                      example: "H10000"
    RB_WS_HISTORYGetResponseExpandList:
      allOf:
      - $ref: '#/components/schemas/Base'
      - type: object
        properties:
          "content":
            type: array
            items:
              $ref: '#/components/schemas/RB_WS_HISTORYBody'
    RB_WS_HISTORYBody:
          type: object
          properties:
            "RB_WS_HISTORY_{тип КЕ}":
              type: object
              properties:
                ChangedField:
                  type: string
                ID:
                  type: string
                  example: "H10000"
                NewValue:
                  type: array
                  items:
                    type: string
                oldValue:
                  type: array
                  items:
                    type: string
                OperatorId:
                  type: string
                  example: "rb**"
                OperatorName:
                  type: string
                  example: "ФИО" 
                TimeInfo:
                  type: string
                  example: "2019-04-29T09:11:09+03:00"
                TimeSort:
                  type: string
                  example: "2019-04-29+03:00" 
                Type:
                  type: string
                number:
                  type: string
                  example: "CI000000"                          
    #---------------------------------------------------------#
  securitySchemes:
    basicAuth:
      type: "http"
      description: "При базовой аутентификации клиент вместе с запросом отправляет серверу логин и пароль. Эти данные отправляются в заголовке запроса Authorization в виде base64 кода.<br> Authorization: Basic base64_encode(login:password)"
      scheme: "basic"
#---------------------------------------------------------------------------#
# Информация о том какие механизмы безопасности можно использовать
#---------------------------------------------------------------------------#
security:
  - {}

  
