
//-------Globol Variable
var tJ004_VirtualDirectory;
var oPC_xmlHttp;
var tPC_DocNoIDName;
var tCN_LoadTranMenuRetMessage;
var tCN_LoadTranMenuRetStatus;
//-------Globol Variable
function J004_test(ptDate, ptActionName, ptControllerName) {
    J004_CRExXMLHttpRequest();
    oPC_xmlHttp.open("GET", encodeURI( "/" + ptControllerName + "/" + ptActionName + "?ptDate=" + ptDate ),false);
   // oPC_xmlHttp.onreadystatechange = J004_FRMxPost_handleStateChange;
    oPC_xmlHttp.send(null);
    
}
function J004_FRMxNewDoc(ptDate, ptActionName, ptControllerName) {
    var tLink = '';
    if (tJ004_VirtualDirectory != null && tJ004_VirtualDirectory != '') {
        tLink += '/' + tJ004_VirtualDirectory;
    }
    tLink += '/' + ptControllerName + '/' + ptActionName ;
    window.location = tLink;
}

function J004_FRMxSaveDoc(ptDate, ptFormIDName) {
    var oForm = document.getElementById(ptFormIDName);
    oForm.submit();
}

function J004_FRMxFindDoc(ptCase, ptDate, ptActionName, ptControllerName, ptDocNoIdName, ptDocPosition) {
    var tUrl = '';
    if (tJ004_VirtualDirectory != null && tJ004_VirtualDirectory != '') {
        tUrl += '/' + tJ004_VirtualDirectory;
    }
    tUrl += '/' + ptControllerName + '/' + ptActionName;
    tUrl += '?ptCase=' + ptCase + '&ptDate=' + ptDate + '&ptDocPosition=' + ptDocPosition;
    var ReturnedValue = showModalDialog(encodeURI(tUrl), "Passed String", "dialogWidth:800px; dialogHeight:500px; status:no; center:yes;titlebar =0")
    var oDocNoObj = document.getElementById(ptDocNoIdName);
    if (ReturnedValue != null) {
        if (ReturnedValue != '12233344445555566666677777778888888899999999900000000001223334444555556666667777777888888889999999990000000000') {
            if (ReturnedValue != oDocNoObj.value) {
                oDocNoObj.value = ReturnedValue;
            }
        }
    }
}

function J004_CRExXMLHttpRequest() {
    if (window.ActiveXObject) {
        oPC_xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    else if (window.XMLHttpRequest) {
        oPC_xmlHttp = new XMLHttpRequest();
    }
}

function J004_DATxhandleStateChange() {
    
    if (oPC_xmlHttp.readyState == 4) {
        if (oPC_xmlHttp.status == 200) {
            var valueFis = oPC_xmlHttp.responseText;
            document.getElementById(tPC_DocNoIDName).value = valueFis;
        }
    }
}

function J004_FRMxDelDoc(ptDate, ptActionName, ptControllerName, ptDocNoIdName, ptDocType, ptBchValue) {
    J004_CRExXMLHttpRequest();
    var oDocNoObj = document.getElementById(ptDocNoIdName);
    var tUrl = '';
    if (tJ004_VirtualDirectory != null && tJ004_VirtualDirectory != '') {
        tUrl += '/' + tJ004_VirtualDirectory;
    }
    tUrl += "/" + ptControllerName + "/" + ptActionName;
    tUrl += "?ptDate=" + ptDate + "&ptDocNo=" + oDocNoObj.value + "&ptDocType=" + ptDocType + "&ptBchValue=" + ptBchValue
    oPC_xmlHttp.open("GET",encodeURI(tUrl), false);
    tPC_DocNoIDName = ptDocNoIdName;
    oPC_xmlHttp.onreadystatechange = J004_FRMxPost_handleStateChange;
    oPC_xmlHttp.send(null);
    
}

function J004_FRMxCancelDoc(ptDate, ptActionName, ptControllerName, ptDocNoIdName, ptDocType, ptBchValue) {

    J004_CRExXMLHttpRequest();
    var oDocNoObj = document.getElementById(ptDocNoIdName);
    tUrl = ''
    if (tJ004_VirtualDirectory != null && tJ004_VirtualDirectory != '') {
        tUrl += '/' + tJ004_VirtualDirectory;
    }
    tUrl += "/" + ptControllerName + "/" + ptActionName;
    tUrl += "?ptDate=" + ptDate + "&ptDocNo=" + oDocNoObj.value + "&ptDocType=" + ptDocType + "&ptBchValue=" + ptBchValue
    oPC_xmlHttp.open("GET",encodeURI(tUrl), false);
    tPC_DocNoIDName = ptDocNoIdName;
    oPC_xmlHttp.onreadystatechange = J004_FRMxPost_handleStateChange;
    oPC_xmlHttp.send(null); 
}

function J004_FRMxPost_handleStateChange() {
    if (oPC_xmlHttp.readyState == 4) {
        if (oPC_xmlHttp.status == 200) {
            var valueFis = oPC_xmlHttp.responseText;
            var mytool_array = valueFis.split(";");
            if (mytool_array.length == 1) {
                tCN_LoadTranMenuRetStatus = 1
                tCN_LoadTranMenuRetMessage = mytool_array[0];
                alert(tCN_LoadTranMenuRetMessage);
            } else {
                tCN_LoadTranMenuRetStatus = mytool_array[0];
                tCN_LoadTranMenuRetMessage = mytool_array[1];
                alert(tCN_LoadTranMenuRetMessage);
            }
        }
    }
}

function J004_FRMxPostDoc(ptDate, ptActionName, ptControllerName, ptDocNoIdName, ptDocDate, ptDocType, ptBchValue, ptApvCode,ptOtherPara) {
    J004_CRExXMLHttpRequest();
    var oDocNoObj = document.getElementById(ptDocNoIdName);
    var oDocDateObj = document.getElementById(ptDocDate);
    var tUrl = '';
    if (tJ004_VirtualDirectory != null && tJ004_VirtualDirectory != '') {
        tUrl += '/' + tJ004_VirtualDirectory;
    }
    tUrl += "/" + ptControllerName + "/" + ptActionName + "?ptDate=" + ptDate + "&ptDocNo=" + oDocNoObj.value + "&pdDocDate=" + oDocDateObj.value + "&ptDocType=" + ptDocType + "&ptBchValue=" + ptBchValue + "&ptApvCode=" + ptApvCode + '&' + ptOtherPara ;
    oPC_xmlHttp.open("GET", encodeURI(tUrl), false);
    
    tPC_DocNoIDName = ptDocNoIdName;
    oPC_xmlHttp.onreadystatechange = J004_FRMxPost_handleStateChange;
    oPC_xmlHttp.send(null);
    valueFis = oPC_xmlHttp.responseText;
    return valueFis.split(";")[0];
}

function J004_FRMxShwPrintDialog(ptDocNo, ptFormatDocNo, pdDocDate, ptLang, ptRptDefName, ptRptUsrName, ptRptMode, ptSplOrCstCode, ptDocType, ptBchCode, ptFTSatTblName, ptFTSatFedCode, ptDate) {
    var tDocNo = ptDocNo.value;
    var tDocDate = pdDocDate.value;
    var tLang = PC_GETtLang(ptLang);
    var tSplOrCstCode = ptSplOrCstCode.value;
    if (tSplOrCstCode == null) { tSplOrCstCode = ''; }
    var tUrl = '';
    if (tJ004_VirtualDirectory != null && tJ004_VirtualDirectory != '') {
        tUrl += '/' + tJ004_VirtualDirectory;
    }
    tUrl += '/cvcPrintDialog/Index?DocNo=' + tDocNo + '&ptRptDefName=' + ptRptDefName + '&ptRptUsrName=' + ptRptUsrName + '&ptRptMode=' + ptRptMode + '&tSplOrCstCode=' + tSplOrCstCode + '&DocDate=' + tDocDate + '&Lang=' + tLang + '&ptDocType=' + ptDocType + '&ptBchCode=' + ptBchCode + '&ptFTSatTblName=' + ptFTSatTblName + '&ptFTSatFedCode=' + ptFTSatFedCode + '&ptDate=' + ptDate;
    showModalDialog(encodeURI(tUrl), "Passed String", "dialogWidth:" + "795px; dialogHeight:" + "405px; status:no; center:yes;titlebar =0");
}

function J004_FRMxShwPreviewForm(ptDocNo, ptDocDate, ptLang, ptSplOrCst, ptDocType, ptBchCode, ptFTSatTblName, ptFTSatFedCode, ptRptType, ptCstOrSplCode) {
    try {
        var tLang = J004_GETtLang(ptLang);
        if (ptCstOrSplCode == null) {
            ptCstOrSplCode = "";
        }
        var tUrl = '';
        if (tJ004_VirtualDirectory != null && tJ004_VirtualDirectory != '') {
            tUrl += '/' + tJ004_VirtualDirectory;
        }
        tUrl += '/cvcPrintForm/Index?ptDocNo=' + ptDocNo + '&ptSplOrCst=' + ptSplOrCst + '&ptDocDate=' + ptDocDate + '&Lang=' + tLang + '&ptDocType=' + ptDocType + '&ptBchCode=' + ptBchCode + '&ptFTSatTblName=' + ptFTSatTblName + '&ptFTSatFedCode=' + ptFTSatFedCode + '&ptDate=' + Math.random() + '&ptRptType=' + ptRptType + '&ptCstOrSplCode=' + ptCstOrSplCode;
        showModalDialog(encodeURI(tUrl), "Passed String", "dialogWidth:800px; dialogHeight:350px; status:no; center:yes;titlebar=0; scroll:no;");

    }
    catch (ex) {
        J004_SHWxMsgError("J004_FRMxShwPrintForm", ex);
    }
}
function J004_FRMtPreviewForm(ptDocNo, ptDocDate, ptLang, ptSplOrCst, ptDocType, ptBchCode, ptFTSatTblName, ptFTSatFedCode, ptRptType, ptCstOrSplCode) {
    try {
        var tLang = J004_GETtLang(ptLang);
        if (ptCstOrSplCode == null) {
            ptCstOrSplCode = "";
        }
        var tUrl = '';
        if (tJ004_VirtualDirectory != null && tJ004_VirtualDirectory != '') {
            tUrl += '/' + tJ004_VirtualDirectory;
        }
        tUrl += '/cvcPrintForm/C_SETxDataReport?ptDocNo=' + ptDocNo + '&ptSplOrCst=' + ptSplOrCst + '&ptDocDate=' + ptDocDate + '&Lang=' + tLang + '&ptDocType=' + ptDocType + '&ptBchCode=' + ptBchCode + '&ptFTSatTblName=' + ptFTSatTblName + '&ptFTSatFedCode=' + ptFTSatFedCode + '&ptDate=' + Math.random() + '&ptRptType=' + ptRptType + '&ptCstOrSplCode=' + ptCstOrSplCode;
        //showModalDialog(encodeURI(tUrl), "Passed String", "dialogWidth:800px; dialogHeight:350px; status:no; center:yes;titlebar=0; scroll:no;");
        oW_xmlHttp = J002_GEToXMLHttpRequest();
        oW_xmlHttp.open('GET', encodeURI(tUrl), false);
        oW_xmlHttp.send(null);
        var tRes = oW_xmlHttp.responseText;
        return tRes;
    }
    catch (ex) {
        J004_SHWxMsgError("J004_FRMxShwPrintForm", ex);
    }
}
function J004_FRMxShwPrintForm(ptDocNo, pdDocDate, ptLang, ptRptDefName, ptRptUsrName, ptRptMode, ptSplOrCstCode, ptDocType, ptBchCode, ptFTSatTblName, ptFTSatFedCode, ptDate,ptRptType,ptCstOrSplCode) {
    try 
    {
        var tDocNo = ptDocNo.value;
        var tDocDate = pdDocDate.value;
        var tLang = J004_GETtLang(ptLang);
        if (ptCstOrSplCode == null) {
            ptCstOrSplCode = "";
        }
        var tUrl = '';
        if (tJ004_VirtualDirectory != null && tJ004_VirtualDirectory != '') {
            tUrl += '/' + tJ004_VirtualDirectory;
        }
        tUrl += '/cvcPrintForm/Index?ptDocNo=' + tDocNo + '&ptRptDefName=' + ptRptDefName + '&ptRptUsrName=' + ptRptUsrName + '&ptRptMode=' + ptRptMode + '&tSplOrCst=' + ptSplOrCstCode + '&ptDocDate=' + tDocDate + '&Lang=' + tLang + '&ptDocType=' + ptDocType + '&ptBchCode=' + ptBchCode + '&ptFTSatTblName=' + ptFTSatTblName + '&ptFTSatFedCode=' + ptFTSatFedCode + '&ptDate=' + ptDate + '&ptRptType=' + ptRptType + '&ptCstOrSplCode=' + ptCstOrSplCode;
        showModalDialog(encodeURI(tUrl), "Passed String", "dialogWidth:800px; dialogHeight:350px; status:no; center:yes;titlebar=0; scroll:no;");

     }
     catch (ex) {
         J004_SHWxMsgError("J004_FRMxShwPrintForm", ex);
     }
}


function J004_GETtLang(ptLang) {
    if (ptLang == '' || ptLang == 'TH') {
        return '1';
    }
    else {
        return '0';
    }
}

function J004_SHWxMsgError(ptFunction, poErrorObject) {
    var tErr = "";
    tErr += "Function : " + ptFunction;
    tErr += "\n" + "Number : " + poErrorObject.number;
    if (navigator.appName == 'Microsoft Internet Explorer') { //IE
        tErr += "\n" + "Error : " + poErrorObject.description;
    } else { //firefox google
        tErr += "\n" + "Error : " + poErrorObject;
    }
    alert(tErr);
}