function J007_SHWxOpenBrwDisDialog(poObjDisText, poObjDis, pBrowseFile, ptWidth, ptHeight, ptParameter, ptDate) {
    if (ptParameter != "") {
        var ReturnedValue = showModalDialog(pBrowseFile + ptParameter + '&ptDate=' + ptDate, "Passed String", "dialogWidth:" + ptWidth + "px; dialogHeight:" + ptHeight + "px; status:no; center:yes;titlebar =0");
    } else {
        var ReturnedValue = showModalDialog(pBrowseFile + '?ptDate=' + ptDate, "Passed String", "dialogWidth:" + ptWidth + "px; dialogHeight:" + ptHeight + "px; status:no; center:yes;titlebar =0");
    }

    if (ReturnedValue != undefined) {
            var mytool_array = ReturnedValue.split(";");
            if (mytool_array.length == 1) {
                pobjTextName.value = mytool_array;
            } else {
                poObjDisText.value = mytool_array[0];
                poObjDis.value = mytool_array[1];
            }
    }
}