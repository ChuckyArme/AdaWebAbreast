//Create 04-12-2012 CH
var tJ015_ReturnValue = '';
function J015_onRowSelected(peParam,pnData) {
    var tDataID = peParam.row.cells[0].innerHTML;
    for(i=1;i< pnData;i++)
    {
        tDataID += ';' + peParam.row.cells[i].innerHTML;
    }
    tJ015_ReturnValue = tDataID;
}
function J015_SETxFieldFilter(ptGridName, ptFieldName, ptFilterName, ptFilterBy, paCap, paField) {
    $('#' + ptGridName + ' tr:has(td) td', this.element).bind('click', function(e) {
        var td = this;
        var oFieldName = document.getElementById(ptFieldName);
        var columnName = $('#' + ptGridName + ' th').eq(td.cellIndex).text();
        document.getElementById(ptFilterName).innerHTML = ptFilterBy + ' : ' + columnName;
        for (nI = 0; nI <= 9; nI++) {
            switch (columnName) {
                case paCap[nI]: oFieldName.value = paField[nI]; break;
            }
        }
    });
}
function J015_GridBrwUI_onLoad(ptGridName, ptFieldName, ptFilterName, ptFilterBy, paCap, paField) {
    var oField = document.getElementById(ptFieldName);
    var column = $('#' + ptGridName + ' th').eq(0).text();
    document.getElementById(ptFilterName).innerHTML = ptFilterBy + ' : ' + column;
    for (nI = 0; nI <= 9; nI++) {
        switch(column){
            case paCap[nI]: oField.value = paField[nI]; break;
        }        
    }
    $('#' + ptGridName + ' th', this.element).live('click', function(e) {
        var td = this;
        var oFieldName = document.getElementById(ptFieldName);
        var columnName = $('#' + ptGridName + ' th').eq(td.cellIndex).text();
        document.getElementById(ptFilterName).innerHTML = ptFilterBy + ' : ' + columnName;
        for (nI = 0; nI <= 9; nI++) {
            switch (columnName) {
                case paCap[nI]: oFieldName.value = paField[nI]; break;
            }
        }
    });
}
function J015_PRCxFillData(ptGridName,ptFieldName, ptFieldData,ptCase) {
    var oFilField = window.document.getElementById(ptFieldName);
    var oFilValue = window.document.getElementById(ptFieldData);
    var ogdBrw = $('#' + ptGridName).data('tGrid');
    var tDate = J002_GETtTimeStamp();
    var tParamV = '';
    var tParamF = oFilField.value; 
    if (oFilValue.value != '') {
        tParamV = oFilValue.value;
    }
    ogdBrw.rebind({
    ptDate: tDate, ptFilterField: encodeURI(tParamF), ptFilterValue: encodeURI(tParamV)
    , ptCase: encodeURI(ptCase)
    });
}
function J015_SETxSelectData(ptValue, ptObjName0, ptObjName1, ptObjName2, ptObjName3, ptObjName4, ptObjName5,
                           ptObjName6, ptObjName7, ptObjName8, ptObjName9) {
    var tName = "";
    if (ptObjName0 != undefined) tName += ptObjName0;
    if (ptObjName1 != undefined) tName += ";" + ptObjName1;
    if (ptObjName2 != undefined) tName += ";" + ptObjName2;
    if (ptObjName3 != undefined) tName += ";" + ptObjName3;
    if (ptObjName4 != undefined) tName += ";" + ptObjName4;
    if (ptObjName5 != undefined) tName += ";" + ptObjName5;
    if (ptObjName6 != undefined) tName += ";" + ptObjName6;
    if (ptObjName7 != undefined) tName += ";" + ptObjName7;
    if (ptObjName8 != undefined) tName += ";" + ptObjName8;
    if (ptObjName9 != undefined) tName += ";" + ptObjName9;
    var aName_array = tName.split(";");
    var aValue = ptValue.split(";");

    for (nI = 0; nI < aValue.length; nI++) {
        $('#' + aName_array[nI]).val(aValue[nI]);
    }
    tJ015_ReturnValue = "";
}
function J015_CHKbValNull(ptTab0, ptTab1, ptTab2, ptTab3, ptTab4, ptTab5, ptTab6, ptTab7, ptTab8, ptTab9) {
    var tName = "";
    if (ptTab0 != undefined) tName += ptTab0;
    if (ptTab1 != undefined) tName += ";" + ptTab1;
    if (ptTab2 != undefined) tName += ";" + ptTab2;
    if (ptTab3 != undefined) tName += ";" + ptTab3;
    if (ptTab4 != undefined) tName += ";" + ptTab4;
    if (ptTab5 != undefined) tName += ";" + ptTab5;
    if (ptTab6 != undefined) tName += ";" + ptTab6;
    if (ptTab7 != undefined) tName += ";" + ptTab7;
    if (ptTab8 != undefined) tName += ";" + ptTab8;
    if (ptTab9 != undefined) tName += ";" + ptTab9;
    var tName_array = tName.split(";");

    for (nI = 0; nI < tName_array.length; nI++) {
        if ($('#' + tName_array[nI]).val() == "") { return false; }
    }
    return true;
}