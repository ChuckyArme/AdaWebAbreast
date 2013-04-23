function J011_CLRxComboBox(ptComboId) {
    try {
        var oElement = document.getElementById(ptComboId);
        while (oElement.length > 0) {
            oElement.remove(0);
        }
    }
    catch (ex) {
        J002_SHWxMsgError("J011_CLRxComboBox", ex);
    }
}
function J011_SETxComboBox(ptComboId, ptStrCombo) {
    try {
        var oArr = ptStrCombo.split(",");
        for (i = 0; i < oArr.length; i++) {
            oStr_Array = oArr[i].split("|");
            var oNewOption = document.createElement('option');
            oNewOption.value = oStr_Array[0];
            if (oStr_Array.length > 1) {
                oNewOption.text = oStr_Array[1];
            }
            if (navigator.appName == 'Microsoft Internet Explorer') { //IE
                document.getElementById(ptComboId).add(oNewOption); // IE only
            } else { //firefox google
                document.getElementById(ptComboId).add(oNewOption, null); // standards compliant; doesn't work in IE
            }
        }
    }
    catch (ex) {
        J002_SHWxMsgError("J011_SETxComboBox", ex);
    }
}
function J011_SETxComboSelected(ptComboId, ptComboValue) {
    try {
        if (ptComboId == null || ptComboId == '') {
            return false;
        }
        var oCombo = document.getElementById(ptComboId);
        if (oCombo.options == null || oCombo.options.lenght < 1) {
            return false;
        }
        var nLoop;
        var nSelIndex = -1;
        for (nLoop = 0; nLoop < oCombo.options.length; nLoop++) {
            if (ptComboValue == oCombo.options[nLoop].value) {
                nSelIndex = nLoop;
                break;
            }
        }
        if (nSelIndex > -1) {
            oCombo.selectedIndex = nLoop;
        }
    }
    catch (ex) {
        J002_SHWxMsgError('J011_SETxComboSelected', ex);
    }
}