function J010_SHWxTabData(pnTabNo, ptTab0, ptTab1, ptTab2, ptTab3, ptTab4, ptTab5, ptTab6, ptTab7, ptTab8, ptTab9) {
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

    for (nI = 0; nI < pnTabNo; nI++) {
        document.getElementById(tName_array[nI]).style.display = "none";
    }
    document.getElementById(tName_array[pnTabNo]).style.display = "block";
    for (nI = pnTabNo + 1; nI < tName_array.length; nI++) {
        document.getElementById(tName_array[nI]).style.display = "none";
    }
}
function J010_SHWxTabDataGrp(pnTabNo, ptTab0, ptTab1, ptTab2, ptTab3, ptTab4, ptTab5, ptTab6, ptTab7, ptTab8, ptTab9) {
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

    for (nI = 0; nI < pnTabNo; nI++) {
        document.getElementById(tName_array[nI]).style.display = "none";
    }
    document.getElementById(tName_array[pnTabNo]).style.display = "block";
    for (nI = pnTabNo + 1; nI < tName_array.length; nI++) {
        document.getElementById(tName_array[nI]).style.display = "none";
    }
}