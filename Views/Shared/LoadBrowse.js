function OpenMasterDialog(pnNoRender, pobjTextCode, pobjTextName, pBrowseFile, ptWidth, ptHeight, ptParameter, ptDate, pobjTextName2, pobjTextName3, pobjTextName4) {
    
    switch (pnNoRender) {
        case 0:
//            J003_SHWxWaiting();
            if (ptParameter != "") {
                var ReturnedValue = showModalDialog(pBrowseFile + ptParameter + '&ptDate=' + ptDate, "Passed String", "dialogWidth:" + ptWidth + "px; dialogHeight:" + ptHeight + "px; status:no; center:yes;titlebar =0");
            } else {
                var ReturnedValue = showModalDialog(pBrowseFile + '?ptDate=' + ptDate, "Passed String", "dialogWidth:" + ptWidth + "px; dialogHeight:" + ptHeight + "px; status:no; center:yes;titlebar =0");
            }
            // alert(ReturnedValue);
            if (ReturnedValue != undefined) {
                if (ReturnedValue != 'adasoft') {
                    var mytool_array = ReturnedValue.split(";");
                    if (mytool_array.length == 1) {
                        pobjTextName.value = mytool_array;
                    } else {
                        //   pobjTextName.value = mytool_array[1];
                        pobjTextCode.value = mytool_array[0];
                    }
//                    J003_DISxWaiting();
                    return true;
                }
            }
//            J003_DISxWaiting();
            return false;
            break;
        case 1:
            //            J003_SHWxWaiting();
            if (ptParameter != "") {
                var ReturnedValue = showModalDialog(pBrowseFile + ptParameter + '&ptDate=' + ptDate, "Passed String", "dialogWidth:" + ptWidth + "px; dialogHeight:" + ptHeight + "px; status:no; center:yes;titlebar =0");
            } else {
                var ReturnedValue = showModalDialog(pBrowseFile + '?ptDate=' + ptDate, "Passed String", "dialogWidth:" + ptWidth + "px; dialogHeight:" + ptHeight + "px; status:no; center:yes;titlebar =0");
            }
            //alert(ReturnedValue);
            if (ReturnedValue != undefined) {
                if (ReturnedValue != 'adasoft') {
                    var mytool_array = ReturnedValue.split(";");
                   // alert(mytool_array);
                    if (mytool_array.length == 1) {
                        pobjTextName.value = mytool_array;
                    } else {

                        pobjTextCode.value = mytool_array[0];
                        pobjTextName.value = mytool_array[1];
                    }
                    //                    J003_DISxWaiting();
                    return true;
                }
            }
            //            J003_DISxWaiting();
            return false;
            break;
        case 2:
//            J003_SHWxWaiting();
            if (ptParameter != "") {
                var ReturnedValue = showModalDialog(pBrowseFile + ptParameter + '&ptDate=' + ptDate, "Passed String", "dialogWidth:" + ptWidth + "px; dialogHeight:" + ptHeight + "px; status:no; center:yes;titlebar =0");
            } else {
                var ReturnedValue = showModalDialog(pBrowseFile + '?ptDate=' + ptDate, "Passed String", "dialogWidth:" + ptWidth + "px; dialogHeight:" + ptHeight + "px; status:no; center:yes;titlebar =0");
            }

            if (ReturnedValue != undefined) {
                if (ReturnedValue != 'adasoft') {
                    var mytool_array = ReturnedValue.split(";");
                    for (i = 0; i < mytool_array.length; i++) {
                        switch (i) {
                            case 0: pobjTextCode.value = mytool_array[0]; break;
                            case 1: pobjTextName.value = mytool_array[1]; break;
                            case 2: pobjTextName2.value = mytool_array[2]; break;
                        }
                    }
//                    J003_DISxWaiting();
                    return true;
                }
            }
//            J003_DISxWaiting();
            return false;
            break;
        case 3:
//            J003_SHWxWaiting();
            if (ptParameter != "") {
                var ReturnedValue = showModalDialog(pBrowseFile + ptParameter + '&ptDate=' + ptDate, "Passed String", "dialogWidth:" + ptWidth + "px; dialogHeight:" + ptHeight + "px; status:no; center:yes;titlebar =0");
            } else {
                var ReturnedValue = showModalDialog(pBrowseFile + '?ptDate=' + ptDate, "Passed String", "dialogWidth:" + ptWidth + "px; dialogHeight:" + ptHeight + "px; status:no; center:yes;titlebar =0");
            }

            if (ReturnedValue != undefined) {
                if (ReturnedValue != 'adasoft') {
                    var mytool_array = ReturnedValue.split(";");
                    for (i = 0; i < mytool_array.length; i++) {
                        switch (i) {
                            case 0: pobjTextCode.value = mytool_array[0]; break;
                            case 1: pobjTextName.value = mytool_array[1]; break;
                            case 2: pobjTextName2.value = mytool_array[2]; break;
                            case 3: pobjTextName3.value = mytool_array[3]; break;
                        }
                    }
//                    J003_DISxWaiting();
                    return true;
                }
            }
//            J003_DISxWaiting();
            return false;
            break;

        case 4:
//            J003_SHWxWaiting();
            if (ptParameter != "") {
                var ReturnedValue = showModalDialog(pBrowseFile + ptParameter + '&ptDate=' + ptDate, "Passed String", "dialogWidth:" + ptWidth + "px; dialogHeight:" + ptHeight + "px; status:no; center:yes;titlebar =0");
            } else {
                var ReturnedValue = showModalDialog(pBrowseFile + '?ptDate=' + ptDate, "Passed String", "dialogWidth:" + ptWidth + "px; dialogHeight:" + ptHeight + "px; status:no; center:yes;titlebar =0");
            }
            if (ReturnedValue != undefined) {
                if (ReturnedValue != 'adasoft') {
                    var mytool_array = ReturnedValue.split(";");
                    for (i = 0; i < mytool_array.length; i++) {
                        switch (i) {
                            case 0: pobjTextCode.value = mytool_array[0]; break;
                            case 1: pobjTextName.value = mytool_array[1]; break;
                            case 2: pobjTextName2.value = mytool_array[2]; break;
                            case 3: pobjTextName3.value = mytool_array[3]; break;
                            case 4: pobjTextName4.value = mytool_array[4]; break;
                        }
                    }
//                    J003_DISxWaiting();
                    return true;
                }
            }
//            J003_DISxWaiting();
            return false;
            break;

        case 5:
//            J003_SHWxWaiting();
            if (ptParameter != "") {
                var ReturnedValue = showModalDialog(pBrowseFile + ptParameter + '&ptDate=' + ptDate, "Passed String", "dialogWidth:" + ptWidth + "px; dialogHeight:" + ptHeight + "px; status:no; center:yes;titlebar =0");
            } else {
                var ReturnedValue = showModalDialog(pBrowseFile + '?ptDate=' + ptDate, "Passed String", "dialogWidth:" + ptWidth + "px; dialogHeight:" + ptHeight + "px; status:no; center:yes;titlebar =0");
            }
            if (ReturnedValue != undefined) {
                if (ReturnedValue != 'adasoft') {
                    var mytool_array = ReturnedValue.split(";");
                    for (i = 0; i < mytool_array.length; i++) {
                        switch (i) {
                            case 0: pobjTextCode.value = mytool_array[1]; break;
                            case 1: pobjTextName.value = mytool_array[2]; break;
                            case 2: pobjTextName2.value = mytool_array[3]; break;
                        }
                    }
//                    J003_DISxWaiting();
                    return true;
                }
            }
//            J003_DISxWaiting();
            return false;
            break;
    }
  
}

function OpenModalDialog(pobjTextCode, pobjTextName, pBrowseFile, ptWidth, ptHeight, ptParameter, ptDate) {
    if (ptParameter != "") {
        var ReturnedValue = showModalDialog(pBrowseFile + ptParameter + '&ptDate=' + ptDate, "Passed String", "dialogWidth:" + ptWidth + "px; dialogHeight:" + ptHeight + "px; status:no; center:yes;titlebar =0");
    } else {
        var ReturnedValue = showModalDialog(pBrowseFile + '?ptDate=' + ptDate, "Passed String", "dialogWidth:" + ptWidth + "px; dialogHeight:" + ptHeight + "px; status:no; center:yes;titlebar =0");
    }
    
    if (ReturnedValue != undefined) {
        if (ReturnedValue != 'adasoft') {
            var mytool_array = ReturnedValue.split(";");
            if (mytool_array.length == 1) {
                pobjTextName.value = mytool_array;
            } else {
            pobjTextCode.value = mytool_array[0];
            pobjTextName.value = mytool_array[1];
            }
            
//            i = 0;
//            nShow = 0;
//            sum = '';
//            do {
//                if (ReturnedValue.charAt(i) == ';') {
//                    if (nShow == 0) {
//                        pobjTextCode.value = sum;
//                        nShow = 1;
//                    } else {
//                        pobjTextName.value = sum;
//                    }
//                    sum = '';
//                }
//                else {
//                    sum += ReturnedValue.charAt(i);
//                }
//                i++;
//            } while (i < ReturnedValue.length);
//            if (nShow == 1) {
//                pobjTextName.value = sum;
//            }
        }
    }
}