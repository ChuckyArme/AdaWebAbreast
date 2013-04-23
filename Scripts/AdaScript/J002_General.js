var tJ002_VirtualDirectory;
function J002_STRttrim(ptStringToTrim) {
    return ptStringToTrim.replace(/^\s+|\s+$/g, "");
}
function J002_STRtltrim(ptStringToTrim) {
    return ptStringToTrim.replace(/^\s+/, "");
}
function J002_STRtrtrim(ptStringToTrim) {
    return ptStringToTrim.replace(/\s+$/, "");
}

function J002_DECcRound(ptNumber, pnDecimals, pbShowComma) {
    var newString; // The new rounded number
    if (ptNumber == null || ptNumber == '') { ptNumber = 0; }
    pnDecimals = Number(pnDecimals);
    if (pnDecimals < 1) {
        newString = (Math.round(ptNumber)).toString();
    } else {
        var numString = ptNumber.toString();
        if (numString.lastIndexOf(".") == -1) {// If there is no decimal point
            numString += "."; // give it one at the end
        }
        var cutoff = numString.lastIndexOf(".") + pnDecimals; // The point at which to truncate the number
        var d1 = Number(numString.substring(cutoff, cutoff + 1)); // The value of the last decimal place that we'll end up with
        var d2 = Number(numString.substring(cutoff + 1, cutoff + 2)); // The next decimal, after the last one we want
        if (d2 >= 5) {// Do we need to round up at all? If not, the string will just be truncated
            if (d1 == 9 && cutoff > 0) {// If the last digit is 9, find a new cutoff point
                while (cutoff > 0 && (d1 == 9 || isNaN(d1))) {
                    if (d1 != ".") {
                        cutoff -= 1;
                        d1 = Number(numString.substring(cutoff, cutoff + 1));
                    } else {
                        cutoff -= 1;
                    }
                }
            }
            d1 += 1;
        }
        if (d1 == 10) {
            numString = numString.substring(0, numString.lastIndexOf("."));
            var roundedNum = Number(numString) + 1;
            newString = roundedNum.toString() + '.';
        } else {
            newString = numString.substring(0, cutoff) + d1.toString();
        }
        if (pbShowComma == true) {//insert comma in String Number ex. 12,500.00
            var tNumber = newString.toString().substring(0, numString.lastIndexOf("."));
            var tDecimal = newString.toString().substring(numString.lastIndexOf("."), numString.length);
            var nCount = 0;
            var tStr = "";
            var i;
            var tSign='';
            if (tNumber.charAt(0) == '-') {
                tSign = '-';
                tNumber = tNumber.replace('-', '');
            }
            
            for (i = tNumber.toString().length - 1; i > -1; i--) {
                if (nCount > 2) {
                    tStr = "," + tStr;
                    nCount = 0;
                }
                if (tNumber.toString().charAt(i) != ',') {
                    tStr = tNumber.toString().charAt(i) + tStr;
                    nCount++;
                }
            }
            newString = tSign + tStr + tDecimal;
        }
    }
    if (newString.lastIndexOf(".") == -1) {// Do this again, to the new string
        newString += ".";
    }
    var decs = (newString.substring(newString.lastIndexOf(".") + 1)).length;
    for (var i = 0; i < pnDecimals - decs; i++) newString += "0";
    //var newNumber = Number(newString);// make it a number if you like
    return newString; // Output the result to the form field (change for your purposes)
}

function J002_GETcNumber(ptNumberStr) {
    if (ptNumberStr == null || ptNumberStr == "") {
        return 0;
    }
    ptNumberStr = ptNumberStr.toString();
    var aNumber = ptNumberStr.split(',');
    var tStr = '';
    var i;
    for (i = 0; i < aNumber.length; i++) {
        tStr += aNumber[i];
    }
    ptNumberStr = tStr;
    
    if (isNaN(ptNumberStr)) {
        return 0;
    }
    ptNumberStr = Number(ptNumberStr);
    return ptNumberStr
}

function J002_SETcNumber(ptNumberStr) {
    if (ptNumberStr == null || ptNumberStr == "") {
        return 0;
    }
    ptNumberStr = ptNumberStr.toString();
    var aNumber = ptNumberStr.split(',');
    var tStr = '';
    var i;
    for (i = 0; i < aNumber.length; i++) {
        tStr += aNumber[i];
    }
    var anNumber = tStr.split('.');
    var j;
    if (anNumber.length == 1) { tStr = ''; tStr = anNumber[0] + ".00"; } 
    ptNumberStr = tStr;

    if (isNaN(ptNumberStr)) {
        return 0;
    }
    return ptNumberStr
}

function J002_GETnNumber(ptNumberStr) {
    if (ptNumberStr == null || ptNumberStr == "") {
        return 0;
    }
    ptNumberStr = ptNumberStr.toString();
    var aNumber = ptNumberStr.split(',');
    var tStr = '';
    var i;
    for (i = 0; i < aNumber.length; i++) {
        tStr += aNumber[i];
    }
    var anNumber = tStr.split('.');
    var j;
    var tInt = '';
    for (j = 0; j < (anNumber.length - 1); j++) {
        tInt += anNumber[j];
    }
    if (tInt != '') { tStr = tInt; }
    ptNumberStr = tStr;

    if (isNaN(ptNumberStr)) {
        return 0;
    }
    ptNumberStr = Number(ptNumberStr);
    return ptNumberStr
}

function J002_CHKbCheckNumOnly(ptObj, poKeyCode,poWhich,pbNoPoint) {
/*
------------------------------------------------------------
    Call:   ptObj is any value (Exp. this.value, document.getElementById('otbForm').value, '567')
            poEvent is object Event (Exp. this.event)
    Ret:    Boolean :false if ptObj is not number :true if ptObj is number
    Cmt:    Check numeric value
------------------------------------------------------------
*/
    var tKeyCode = poKeyCode;
    if (poWhich != null && poWhich != "") { tKeyCode = poWhich; }
    if (tKeyCode == 8) {
        return true;
    }
    if (pbNoPoint == true && tKeyCode == 46) {
        return false;
    }
    if (tKeyCode < 48 || tKeyCode > 57) {
	    if (ptObj != null) {
	        if ((tKeyCode == 46) && ptObj.toString().indexOf('.', 0) > -1) { //46='.'
	            return  false;
            }
        }
        if (!(tKeyCode == 46)) { //46='.'
            return  false;
        }
    }
    return true;
}

function J002_CHKbCheckDisTxtKey(poObj) {
    if (poObj != null) {
        if (poObj.toString().indexOf('-', 0) > -1) { //45='-'
            event.returnValue = false;
        }
        if (event.keyCode == 45 && poObj.toString().length < 1) { //46='.'
            event.returnValue = false;
        }
        if (event.keyCode == 45 && poObj.toString().indexOf('-', 0) > -1) { //45='-'
            event.returnValue = false;
        }
    }
    if (event.keyCode < 48 || event.keyCode > 57) {
        if (poObj != null) {
            if (event.keyCode == 46 && poObj.toString().indexOf('.', 0) > -1) { //46='.'
                event.returnValue = false;
            }
        }
        if (event.keyCode != 46 && event.keyCode != 45) { //46='.'
            event.returnValue = false;
        }
    }
}

function J002_CHKbCheckTxtKey(poKeyCode,poWhich) {
    /*
    ------------------------------------------------------------
    Cmt:   ฟังก์ชั่นสำหรับ ตรวจสอบอักขระพิเศษ Return ค่าเป็น Boolean 
    Cmt:   false เป็นอักขระพิเศษห้ามคีย์  True : ไม่เป็นอักขระพิเศษ
    ------------------------------------------------------------
    */
    var tKeyCode; 
    if (poKeyCode != null) { tKeyCode = poKeyCode; } 
    if (poWhich != null) { tKeyCode = poWhich; }
    if (tKeyCode == 124 || tKeyCode == 39 || tKeyCode == 34 || tKeyCode == 35) {// ' " | #
        return false;
    }
    return true;
}

function J002_SETxFocusObj(poKeyCode, poWhich, ptObjID, ptVal) {
    /*
    --------------------------------------------------------------------
    สำหรับ Chrome Browser
    Cmt:  ฟังก์ชั่น ตรวจสอบการออกจาก TextBox ด้วยการ Enter และกำหนด Focus ใหม่
    --------------------------------------------------------------------
    */
    var tKeyCode;
    var tVal = $('#' + ptObjID).val();
    if (poKeyCode != null) { tKeyCode = poKeyCode; }
    if (poWhich != null) { tKeyCode = poWhich; }
    if (tKeyCode == 13) {
        if (tVal == "") {
            $('#' + ptObjID).val(ptVal);
        }
        $('#' + ptObjID).focus();
    }
}

function J002_GETtTimeStamp(){
    var dNow = new Date;
    var tDateTimeNow = dNow.getFullYear().toString() + dNow.getMonth().toString() + dNow.getDay().toString() + dNow.getHours().toString() + dNow.getMinutes().toString() + dNow.getSeconds().toString() + dNow.getMilliseconds().toString();
    return tDateTimeNow;
}

function J002_GEToXMLHttpRequest() {
	try
	{
		var oReturn;
		if (window.ActiveXObject) {
			oReturn = new ActiveXObject("Microsoft.XMLHTTP");
		}
		else if (window.XMLHttpRequest) {
			oReturn = new XMLHttpRequest();
		}
		return oReturn;
	}
	catch (ex)
	{	J002_SHWxMsgError("J002_SETxKeepOldOnfocus",ex);
	}
}

function J002_SHWxMsgError(ptFunction,poErrorObject) {
	var tErr = "" ;
	tErr += "Function : " + ptFunction ;
	tErr += "\n" + "Number : " + poErrorObject.number ;
	if (navigator.appName == 'Microsoft Internet Explorer') { //IE
		tErr += "\n" + "Error : " + poErrorObject.description ;
    } else { //firefox google
        tErr += "\n" + "Error : " + poErrorObject ;
    }
	alert(tErr) ;
}
function J002_SETxKeepOldOnfocus(ptObjId,ptObjOldId){
	try
	{	
		$("#" + ptObjOldId).val($("#" + ptObjId).val());
	}
	catch (ex)
	{	J002_SHWxMsgError("J002_SETxKeepOldOnfocus",ex);
	}
}
function J002_CLRxClearObjValue(ptObjListStr){
	try
	{
		ptObjListStr = J002_STRttrim(ptObjListStr);
		if (ptObjListStr == null || ptObjListStr==""){
			return 0;
		}
		var oArr = ptObjListStr.split(",");
		for (i=0 ;i< oArr.length; i++){
			var tStr = oArr[i];
			tStr = J002_STRttrim(tStr);
			$("#" + tStr).val("");
		} 
	}
	catch (ex)
	{	J002_SHWxMsgError("J002_CLRxClearObjValue",ex);
	}
}

function J002_SETxReadOnly(ptObjName,pbStatus) {
	try
	{
	    if (pbStatus == true) {
	        $("#" + ptObjName).addClass("xCN_AllReadOnlyBGColor");
	        $("#" + ptObjName).attr("readOnly", "readOnly");
	    }
	    else {
	        $("#" + ptObjName).removeClass("xCN_AllReadOnlyBGColor");
	        $("#" + ptObjName).removeAttr("readOnly");

	    }
	}
    catch(ex)
    {	J002_SHWxMsgError("J002_SETxReadOnly",ex);
    }
}

function J002_SETxDisable(ptObjName, pbStatus) {
    try {
        if (pbStatus == true) {
            $("#" + ptObjName).addClass("xCN_AllReadOnlyBGColor");
            $("#" + ptObjName).attr("disabled", "disabled");
        }
        else {
            $("#" + ptObjName).removeClass("xCN_AllReadOnlyBGColor");
            $("#" + ptObjName).removeAttr("disabled");

        }
    }
    catch (ex) {
        J002_SHWxMsgError("J002_SETxReadOnly", ex);
    }
}

function J002_GETxFieldName(ptController,ptAction,ptObjCodeId,ptObjNameId,ptObjCodeOldId,ptTblName,ptFieldCode,ptFieldName,ptMsgNoData,ptJoinCon){
    try
    {	
		var tCode = $("#" + ptObjCodeId).val()
		tCode = J002_STRttrim(tCode);
		if (tCode == null || tCode==""){
			$("#" + ptObjCodeId).val("");
			$("#" + ptObjNameId).val("");
			return false;
		}
		var oXmlHttp = J002_GEToXMLHttpRequest();
		var tDataTimeNow =J002_GETtTimeStamp();
		var tWhere = $("#" + ptObjCodeId).val();
		var tJoinCon = ptJoinCon;
		if (tJoinCon != null && tJoinCon != "") {
		    tWhere += tJoinCon;
		}
		
		var tUrl = '';
		if (tJ002_VirtualDirectory != null && tJ002_VirtualDirectory != '') {
		    tUrl += "/" + tJ002_VirtualDirectory;
		}
		tUrl += "/" + ptController + "/" + ptAction + "?ptTblName=" + ptTblName + "&ptFieldCode=" + ptFieldCode + "&ptFieldName=" + ptFieldName + "&ptWhere=" + tWhere + "&ptDateTimeNow=" + tDataTimeNow;
		oXmlHttp.open("GET",encodeURI(tUrl), false );
		oXmlHttp.send(null);
		var valueFis = oXmlHttp.responseText;
		if (valueFis == null){
			return false;
		}
		var mytool_array = valueFis.split("|");
		if (mytool_array[0]!=null && mytool_array[0]!=""){
			alert(ptAction + ' : ' + mytool_array[0]);
		}
		if (mytool_array.length > 1){
			if (ptObjCodeOldId != null && ptObjCodeOldId != "" ){
			    if (mytool_array[1] == String.fromCharCode(29)) {
			        $("#" + ptObjCodeId).val($("#" + ptObjCodeOldId).val());
			        if (ptMsgNoData != null && ptMsgNoData != ""){
						alert(ptMsgNoData);
			        }
			        return false;
				}
			}
			$("#"+ptObjNameId).val(mytool_array[1]);
			$("#" + ptObjCodeOldId).val($("#" + ptObjCodeId).val());
			return true;
		}
    }
    catch(ex)
    {	J002_SHWxMsgError("J002_GETxFieldName",ex);
    }
}
function J002_CHKbIsBlankValue(ptObjId){
	try
	{	
		var tValue = $("#"+ptObjId).val();
		tValue = J002_STRttrim(tValue);
		if (tValue == null || tValue == ''){
			return true;		
		}
		return false;
	}
    catch(ex)
    {	J002_SHWxMsgError("J002_CHKbIsBlankValue",ex);
    }
}
function J002_SETtDateAdd(ptDate, pnAddDay) {
    var oArr = ptDate.split('/');
    ptDate = oArr[1] + '/' + oArr[0] + '/' + oArr[2];
    var dDate = new Date(ptDate);
    dDate.setDate(dDate.getDate() + Number(pnAddDay));
    var tMonth = dDate.getMonth() + 1;
    tMonth = new String(tMonth);
    if (tMonth.length == 1) {
        tMonth = "0" + tMonth;
    }
    var tDay = dDate.getDate();
    tDay = new String(tDay);
    if (tDay.length == 1) {
        tDay = "0" + tDay;
    }
    var tYear = dDate.getFullYear();
    return tDay + "/" + tMonth + "/" + tYear;
}
function J002_CHKtCheckAuthorize(ptMenuName, pnTypeAuthor, ptPwdAllow ,ptMsgNoAuthorize,paAlwUserCode) {
    try {
        var tReturn = false;
        var oXmlHttp = J002_GEToXMLHttpRequest();
        var tDateTimeNow = J002_GETtTimeStamp();
        var tUrl = "";
        if (tJ002_VirtualDirectory != null && tJ002_VirtualDirectory != '') {
            tUrl += '/' + tJ002_VirtualDirectory;
        }
        tUrl += "/cvcCenter/C_CHKtCheckAuthorize";
        tUrl += "?ptMenuName=" + ptMenuName;
        tUrl += "&pnTypeAuthor=" + pnTypeAuthor;
        tUrl += "&ptDateTimeNow=" + tDateTimeNow;
        oXmlHttp.open("GET",encodeURI(tUrl), false);
        oXmlHttp.send(null);
        if (oXmlHttp.status == 200) {
            var tResult = oXmlHttp.responseText;
            var aArr = tResult.split("|");
            if (aArr[0] != null && aArr[0] != "") {
                alert("C_CHKtCheckAuthorize : " + aArr[0]);
                return false;
            }
            if (aArr[1] == 1) {
                tReturn = true;
            }
        }
        else {
            alert("error " + oXmlHttp.status + " : " + oXmlHttp.responseText);
        }
        if (ptPwdAllow == 'True' && tReturn != 1) {
            tReturn = J002_SHWxAuthorizeLogin(ptMenuName, pnTypeAuthor, paAlwUserCode);
        }
        if (ptPwdAllow == 'False' && tReturn != 1) {
            if (ptMsgNoAuthorize != null && ptMsgNoAuthorize != "") {
                alert(ptMsgNoAuthorize);
            }
        }
        return tReturn;
    }
    catch (ex) {
        J002_SHWxMsgError("J002_CHKtCheckAuthorize", ex);
    }
}

function J002_SHWxAuthorizeLogin(ptMnuName, ptTypeAuthor, paAlwUserCode) {
    try {
        var tReturn = false;
        while (1 == 1) {
            var tDateTimeNow = J002_GETtTimeStamp();
            var ReturnedValue = '0';
            var tUrl = "";
            if (tJ002_VirtualDirectory != null && tJ002_VirtualDirectory != '') {
                tUrl += '/' + tJ002_VirtualDirectory;
            }
            tUrl += '/cvcUserLogin/C_CheckLogin';
            tUrl += "?ptValue=" + ptMnuName + "&ptAction=0&ptTypeAuthor=" + ptTypeAuthor + "&ptDate=" + tDateTimeNow;
            tReturnedValue = showModalDialog(encodeURI(tUrl), "Passing Data", "dialogWidth:310px; dialogHeight:158px; status:no; center:yes;titlebar =0; scrollbars=no;");
            //alert(tReturnedValue);
            if (tReturnedValue == null) { break;}
            var aArr = tReturnedValue.split("|");
            if (aArr[0] == null || aArr[0] == '0') {//cancel
                break;
            }
            if (aArr[0] == '1') {
                tReturn = true;
                if (paAlwUserCode != null) {
                    paAlwUserCode[0] = aArr[1];
                }
                break;
            }
        }
        return tReturn;
    }
    catch (ex) {
        J002_SHWxMsgError("J002_SHWxAuthorizeLogin", ex);
    }
}

function J002_CONtDateTime(ptDate) {
    /*
    ptDate : วันที่ Format dd/MM/yyyy
    return : วันทึ่ Format yyyy/MM/dd
    */
    try {
        aArr = ptDate.split("/");
        var tReturn = aArr[2] + "/" + aArr[1] + "/" + aArr[0];
        return tReturn;
    }
    catch (ex) {
        J002_SHWxMsgError("J002_CONtDateTime", ex);
    }
}
function J002_SETxMaxLength(ptObj, pnLength) {
    try 
    {
        return (ptObj.value.length <= pnLength);
    }
    catch (ex) {
        J002_SHWxMsgError("J002_SETnMaxLength", ex);
    }

}

function J002_CHKbDataChange(ptStaDocCancel,ptStaPrcDoc,ptObjOldValue, ptObjName,ptDecAmtForSav) {
    try {
        if (ptStaDocCancel == '1' || ptStaPrcDoc == '1') {
            return false;
        }

        var tBeforeValue = '';
        var tAfterValue = '';
        var tOldValue = '';
        var tNewValue = '';
        tBeforeValue = ptObjOldValue.split(",");
        tAfterValue = ptObjName.split("|");

        var nLoop = 0;
        nLoop = tBeforeValue.length;
        var i;
        if (tBeforeValue != null && tBeforeValue != "") {
            for (i = 0; i < nLoop; i++) {
                tOldValue = tBeforeValue[i];
                var tStr = tAfterValue[i].substring(0, 5);
                if (tStr == 'otbFC') {
                    tNewValue = J002_GETcNumber(J002_DECcRound($("#" + tAfterValue[i]).val(), ptDecAmtForSav, false));
                }
                else {
                    tNewValue = document.getElementById(tAfterValue[i]).value;
                }
                if (tOldValue != tNewValue) {
                    // alert(tOldValue + '- ' + tNewValue + ' - ' + i + ' ' + tAfterValue[i]);
                    return true;
                }
            }
            return false;
        }
    }
    catch (ex) {
        J002_SHWxMsgError("J002_CHKbDataChange", ex);
    }


}

function J002_CHKbNumOutOfLength(poObj, ptLower, ptUpper, pbAutoDefaultValue) {
    /*
    ------------------------------------------------------------
    Call:   poObj is object that want check length (Exp. document.getElementById('<ID>'), this) 
    ptLower is Lower bound value (Exp. 1) ,null value meaning don't check lower bound
    ptUpper is Upper bound value (Exp. 100) ,null value meaning don't check upper bound
    Ret:    Boolean :false if don't out of length :true if out of length
    Cmt:    Check out of length numeric value
    ------------------------------------------------------------
    */
    if (ptLower != null && (poObj.value == '' || poObj.value < ptLower)) {
        if (pbAutoDefaultValue) {
            poObj.value = ptLower;
        }
        return true;
    }
    if (ptUpper != null && (poObj.value == '' || poObj.value > ptUpper)) {
        if (pbAutoDefaultValue) {
            poObj.value = ptUpper;
        }
        return true;
    }
    return false;
}
function J002_DATxCalDis(ptTotal, ptDisTxt, ptRteFac, pbLimitDis) {
    try {
        var bDisPer = false;
        var cDis;
        var cDisRte;
        var cDisTemp;
        var cDisTempRte;
        var tDisTxt;
        var tDisTxtRte;
        var tDis;
        var cNet;
        var cRteRate = J002_GETcNumber(ptRteFac);
        var cTotal = J002_GETcNumber(ptTotal);
        var tInputDisTxt = ptDisTxt;
        var oReturn = { tDisTxt: '', tDisTxtRte: '', cDis: 0, cDisRte: 0 };

        if (cRteRate < "1") {
            cRteRate = "1";
        }

        cNet = cTotal;
        tInputDisTxt = J002_STRttrim(tInputDisTxt);
        if (tInputDisTxt == '' || tInputDisTxt == null) {
            return oReturn;
        }

        cDis = 0;
        cDisRte = 0;
        cDisTemp = 0;
        cDisTempRte = 0;
        tDisTxtRte = '';
        tDisTxt = '';
        var oArrDisTxt = tInputDisTxt.split(',');
        for (var i = 0; i < oArrDisTxt.length; i++) {
            bDisPer = false;
            tDis = oArrDisTxt[i];
            //เป็นการลดแบบ เปอร์เซ็นหรือไม่
            if (tDis.charAt(tDis.length - 1) == '-' || tDis.charAt(tDis.length - 1) == '%') {
                tDis = tDis.substring(0, tDis.length - 1);
                bDisPer = true;
            }

            if (bDisPer == false) {
                cDisTempRte = Number(tDis);
                cDisTemp = Number(tDis) * cRteRate;
                tDisTxtRte += tDis + ',';
                tDisTxt += cDisTemp + ',';
            }
            else {
                cDisTempRte = (cNet * tDis) / 100.0;
                cDisTemp = (cNet * tDis * cRteRate) / 100.0;
                tDisTxtRte += Number(tDis) + '%,';
                tDisTxt += Number(tDis) + '%,';
            }
            cDisRte += Number(cDisTempRte);
            cDis += Number(cDisTemp);
            cNet -= Number(cDisTemp);
        }
        tDisTxtRte = tDisTxtRte.substring(0, tDisTxtRte.length - 1);
        tDisTxt = tDisTxt.substring(0, tDisTxt.length - 1);
        if (pbLimitDis == true && (cDis > cTotal)) {
            cDis = cTotal;
        }
        oReturn.cDisRte = cDisRte;
        oReturn.cDis = cDis;
        oReturn.tDisTxtRte = tDisTxtRte;
        oReturn.tDisTxt = tDisTxt;
        return oReturn;
    }
    catch (ex) {
        J002_SHWxMsgError("J002_DATxCalDis", ex);
    }

}
function J002_GETtDateNow() {
    var dDate = new Date();
    var tMonth = dDate.getMonth() + 1;
    tMonth = new String(tMonth);
    if (tMonth.length == 1) {
        tMonth = "0" + tMonth;
    }
    var tDay = dDate.getDate();
    tDay = new String(tDay);
    if (tDay.length == 1) {
        tDay = "0" + tDay;
    }
    var tYear = dDate.getFullYear();
    return tDay + "/" + tMonth + "/" + tYear;
}