var tJ001_VirtualDirectory;
var oJ001_XmlHttp;
var tJ001_Result;

function J001_GETtAutoGenCode(ptControllerName, ptActionName, pobjCode) {
    J001_GETtNewCode(ptControllerName, ptActionName);
    pobjCode.value = tJ001_Result;
    
}

function J001_CreateXMLHttpRequest() {
    if (window.ActiveXObject) {
        oJ001_XmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    else if (window.XMLHttpRequest) {
        oJ001_XmlHttp = new XMLHttpRequest();
    }
}

function J001_HandleStateChange() {

    if (oJ001_XmlHttp.readyState == 4) {
        if (oJ001_XmlHttp.status == 200) {
            var valueFis = oJ001_XmlHttp.responseText;
            tJ001_Result = valueFis;
        }
    }
}


function J001_GETtNewCode(ptControllerName, ptActionName) {
    J001_CreateXMLHttpRequest();
    var tDataTimeNow = J001_GETtDateNow();
    var tUrl = '';
    if (tJ001_VirtualDirectory != null && tJ001_VirtualDirectory != '') {
        tUrl += '/' + tJ001_VirtualDirectory;
    }
    tUrl += '/' + ptControllerName + '/' + ptActionName + '?ptDate=' + tDataTimeNow;
    oJ001_XmlHttp.open('GET',encodeURI(tUrl) , false);
    oJ001_XmlHttp.onreadystatechange = J001_HandleStateChange;
    oJ001_XmlHttp.send(null);
}




function J001_GETtDateNow() {
    var dNow = new Date;
    var tDateTimeNow = dNow.getFullYear().toString() + dNow.getMonth().toString() + dNow.getDay().toString() + dNow.getHours().toString() + dNow.getMinutes().toString() + dNow.getSeconds().toString() + dNow.getMilliseconds().toString();
    return tDateTimeNow;
}