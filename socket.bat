java socket.java
pause

function addSDAttachIntoPPP(strIncidentsID, strUID) {
    
    // get rbintegrationkeys
    var fIKE = new SCFile("rbintegrationkeys", SCFILE_READONLY);
    var rc = fIKE.doSelect('system="PPP" and active=true');
    if (rc != RC_SUCCESS) throw new Error('lib.RBIntegrationPPP.addSDAttachIntoPPP: rbintegrationkeys with [system="PPP" and active=true] NOT FOUND!!');
    
    // get incidents & attachmentObj 
    var fIncidents = new SCFile("incidents", SCFILE_READONLY);
    rc = fIncidents.doSelect('incident.id="' + strIncidentsID + '"');
    if (rc != RC_SUCCESS) throw new Error('lib.RBIntegrationPPP.addSDAttachIntoPPP: incidents with incident.id="' + strIncidentsID + '" NOT FOUND!!');
    
    strAttachmentID     = 'cid:' + strUID;
    var attachmentObj   = fIncidents.getAttachment(strAttachmentID);
    if (!attachmentObj)                 {lib.RBScheduledOperation.msgLog("REQUEST add Attach SKIP", "Файл вложения с UID=" + strAttachmentID + " не найден. Вероятно его уже успели удалить. Пропуск задания."); return; }
    if (attachmentObj['len'] == 0)      {lib.RBScheduledOperation.msgLog("REQUEST add Attach SKIP", "Файл вложения с UID=" + strAttachmentID + " имеет нулевую длину. Пропуск задания."); return; }
    if (attachmentObj['len']>=10485760) {lib.RBScheduledOperation.msgLog("REQUEST add Attach SKIP", "Файл вложения <" + attachmentObj['name'] + "> имеет  длину больше 10МБ. Пропуск задания. ППП не примет."); return; } //10 Мегабайт = 10485760 Байт

    var strMessagePL    = getMessagePLFromFileName(attachmentObj['name']); // ITITSM-3256
    //
    var strHttpAction   = "POST";
    var strURL          = lib.RBIntegrationUtils.getUrl(fIKE);
    if (strMessagePL) strURL += '/api/integration/sm/message-attachment/?format=json'; else strURL += '/api/integration/sm/send_attach/?format=json';
    var arrHeaders      = lib.RBIntegrationUtils.getHeaders(fIKE);
    var sendTimeout     = fIKE['timeout.send'];
    var recvTimeout     = fIKE['timeout.recv'];
    var strAttachName   = attachmentObj['name'];
    var numAttachLen    = attachmentObj['len'];

    // to LOG
    var strLogText      =  "Отправка запроса в ППП на добавление вложения из Обращения:\n";
    strLogText          += "ACTION    = "       + strHttpAction + "\n";
    strLogText          += "URL       = "       + strURL        + "\n";
    strLogText          += "UID       = "       + strUID        + "\n";
    strLogText          += "file name = "       + strAttachName + "\n";
    strLogText          += "file len  = "       + numAttachLen  + "\n";
    lib.RBScheduledOperation.msgLog("REQUEST add Attach", strLogText);


    var dateNew         = new Date();
    var strBoundary     = "---------------------------7d" + dateNew.getTime();
    var strHeaderString = "Content-Disposition: form-data; ";
    var strResponse     = "";
    var strExceptionMsg = "";
    var objConnection   = null;
    var objOS           = null;
    var objIS           = null;
    try {
        arrHeaders.push(  new Header("Content-Type", "multipart/form-data; boundary=" + strBoundary)  ); // добавим сверху правильный заголовок
        objConnection = new HttpURLConnection(strHttpAction, strURL, arrHeaders, sendTimeout, recvTimeout, false);
        objOS = objConnection.getOutputStream();
        
        if (strMessagePL) {
            // send strIncidentsID
            objOS.writeString("--" + strBoundary + "\r\n");
            objOS.writeString(strHeaderString + 'name="message_pl"\r\n');
            objOS.writeString("\r\n");
            objOS.writeString(strMessagePL);
            objOS.writeString("\r\n");
    
            // send binary file data
            objOS.writeString("--" + strBoundary + "\r\n");
            objOS.writeString(strHeaderString + 'name="attach_file"; filename="' + strAttachName + '"\r\n');
            objOS.writeString('Content-Type: application/vnd.openxmlformats-officedocument.wordprocessingml.document\r\n');
            objOS.writeString("\r\n");
            objOS.writeBytes(attachmentObj['value']); //binaryData
            objOS.writeString("\r\n");
            objOS.writeString("--" + strBoundary + "--");
            }
        else {
	        // send strIncidentsID
	        objOS.writeString("--" + strBoundary + "\r\n");
	        objOS.writeString(strHeaderString + 'name="call"\r\n');
	        objOS.writeString("\r\n");
	        objOS.writeString(strIncidentsID);
	        objOS.writeString("\r\n");
	
	        // send binary file data
	        objOS.writeString("--" + strBoundary + "\r\n");
	        objOS.writeString(strHeaderString + 'name="files"; filename="' + strAttachName + '"\r\n');
	        objOS.writeString('Content-Type: application/vnd.openxmlformats-officedocument.wordprocessingml.document\r\n');
	        objOS.writeString("\r\n");
	        objOS.writeBytes(attachmentObj['value']); //binaryData
	        objOS.writeString("\r\n");
	        objOS.writeString("--" + strBoundary + "--");
            }

        objOS.close();
        
        objIS = objConnection.getInputStream();
        strResponse = objIS.readString();
        objIS.close();
        }
    catch(e) {
        if (objIS) objIS.close();
        if (objOS) objOS.close();
        strExceptionMsg = "HttpURLConnection process EXCEPTION: " + e.toString();
        }
    
    // обработка ответа
    if (!strExceptionMsg && strResponse) {
        // случаи, когда ошибка в теле ответа
        var objResponse;
        try {objResponse = rteJSONParse(strResponse);} catch(e) {throw new Error("ERROR: doHTTPRequest Response is not JSON: " + e.toString() + " ; strResponse = " + strResponse);}
        if (!objResponse.hasOwnProperty("ReturnCode"))  strExceptionMsg = "ERROR: response do not have [ReturnCode] property ; strResponse = " + strResponse;
        else if (objResponse["ReturnCode"] != 0)        strExceptionMsg = "ERROR: [ReturnCode] != 0 ; strResponse = " + strResponse;
        
        if (    (strResponse.indexOf('HTTP/1.1 3') > -1) ||
                (strResponse.indexOf('HTTP/1.1 4') > -1) ||
                (strResponse.indexOf('HTTP/1.1 5') > -1)    ) strExceptionMsg = "ERROR: strResponse = " + strResponse;
        }
    
    var strLogText      =  "Ответ от ППП на добавление вложения из Обращения:\n";
    strLogText          += ((strExceptionMsg) ? "Ошибка: " + strExceptionMsg : "Успешно. Response = " + strResponse) + "\n";
    lib.RBScheduledOperation.msgLog("RESPONSE add Attach", strLogText);
    
    vars['$L.rb.OperationErrorText'] = strExceptionMsg;
    }
