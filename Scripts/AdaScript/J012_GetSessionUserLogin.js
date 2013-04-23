
function J012_GETxSessions(ptUsrCode, ptUsrName, ptMsg) {
    // alert(ptUsrCode + '  ' + ptUsrName);
    var UserCode;
    UserCode = '<%=Session("UserCode")%>';
    var UserName;
    UserName = '<%=Session("UserName")%>';
    if (UserCode != '' && UserName != '') {

        if (UserCode != ptUsrCode || UserName != ptUsrName) {
            alert(ptMsg);
            window.location = "/cvcLogin";
            return false;
        }
        else {

            J012_SETxSessionStart('cvcLogin', 'C_SETxSesionStart');
            return true;
        }

    }
    else {
        alert(ptMsg);
        window.location = "/cvcLogin";
        return false;
    }

}

function J012_GETxUserSignOut(ptMsg) {
    if (confirm(ptMsg)) {

        window.location = "/cvcSignOut";
    }
    else {
        window.location = "/Home";
    }

}

var oHttp;
function J012_GETxSessionXMLHttpRequest() {
    if (window.ActiveXObject) {
        oHttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    else if (window.XMLHttpRequest) {
        oHttp = new XMLHttpRequest();
    }
}


function J012_GETxSessionStateChange() {

    if (oHttp.readyState == 4) {
        if (oHttp.status == 200) {
            var valueFis = oHttp.responseText;
        }
    }
}

function J012_SETxSessionStart(ptControllerName, ptActionName) {
    //    alert(ptControllerName + ' ' + ptActionName);
    J012_GETxSessionXMLHttpRequest();
    var tDate = C_GETtDateTimeNow();
    oHttp.open("GET", "/" + ptControllerName + "/" + ptActionName + "?ptDate=" + tDate, false);
    oHttp.onreadystatechange = J012_GETxSessionStateChange;
    oHttp.send(null);

}

function J012_GETtDateTimeNow() {
    var dNow = new Date;
    var tDateTimeNow = dNow.getFullYear().toString() + dNow.getMonth().toString() + dNow.getDay().toString() + dNow.getHours().toString() + dNow.getMinutes().toString() + dNow.getSeconds().toString() + dNow.getMilliseconds().toString();
    return tDateTimeNow;
}