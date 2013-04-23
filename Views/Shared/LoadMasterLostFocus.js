function OpenModalDialogRefCode(pobjOldTextCode, pobjTextCode, pobjTextName, pBrowseFile, ptWidth, ptHeight, ptParameter,ptDate) {
    try {
        if (pobjOldTextCode.value != pobjTextCode.value) {
            if (ptParameter != "") {
                var ReturnedValue = showModalDialog(pBrowseFile + ptParameter + "&ptRefCode=" + pobjTextCode.value + "&ptDate=" + ptDate, "Passing Data", "dialogWidth:" + '250' + "px; dialogHeight:" + '100' + "px; status:no; center:yes;titlebar =0");
            } else {
                var ReturnedValue = showModalDialog(pBrowseFile + "?ptRefCode=" + pobjTextCode.value, "Passing Data", "dialogWidth:" + '250' + "px; dialogHeight:" + '100' + "px; status:no; center:yes;titlebar =0");
            }
            if (ReturnedValue != undefined) {
                if (ReturnedValue != 'O l d adasoft') {
                    pobjTextName.value = ReturnedValue;
                }
                else {
                    pobjTextCode.value = pobjOldTextCode.value;
                }
            }
            else {
                pobjTextCode.value = pobjOldTextCode.value;
            }
        }
    }
    catch (ex) {
        if (ptParameter != "") {
            var ReturnedValue = showModalDialog(pBrowseFile + ptParameter + "&ptRefCode=" + pobjTextCode.value + "&ptDate=" + ptDate, "Passing Data", "dialogWidth:" + ptWidth + "px; dialogHeight:" + ptHeight + "px; status:no; center:yes;titlebar =0");
        } else {
            var ReturnedValue = showModalDialog(pBrowseFile + "?ptRefCode=" + pobjTextCode.value, "Passing Data", "dialogWidth:" + ptWidth + "px; dialogHeight:" + ptHeight + "px; status:no; center:yes;titlebar =0");
        }
        if (ReturnedValue != undefined) {
            if (ReturnedValue != 'O l d adasoft') {
                pobjTextName.value = ReturnedValue;
            }
            else {
                pobjTextCode.value = pobjOldTextCode.value;
            }
        }
        else {
            pobjTextCode.value = pobjOldTextCode.value;
        }
    }
}