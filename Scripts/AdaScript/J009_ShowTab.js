function J009_SHWxTabTop(pnTabNo, ptTab0, ptTab1, ptTab2, ptTab3, ptTab4, ptTab5, ptTab6, ptTab7, ptTab8, ptTab9) {
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

    var tId
    for (nI = 0; nI < pnTabNo; nI++) {
        tId = '#' + tName_array[nI];
        $(tId).removeClass("xCN_DivTabActive");
        $(tId).addClass("xCN_DivTabUnActive");
    }

    tId = '#' + tName_array[pnTabNo];
    $(tId).removeClass("xCN_DivTabUnActive");
    $(tId).addClass("xCN_DivTabActive");
    for (nI = pnTabNo + 1; nI < tName_array.length; nI++) {
        tId = '#' + tName_array[nI];
        $(tId).removeClass("xCN_DivTabActive");
        $(tId).addClass("xCN_DivTabUnActive");
    }

}


function J009_SHWxTabBottom(pnTabNo, ptTab0, ptTab1, ptTab2, ptTab3, ptTab4, ptTab5, ptTab6, ptTab7, ptTab8, ptTab9) {
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

    var tId
    for (nI = 0; nI < pnTabNo; nI++) {
        tId = '#' + tName_array[nI];
        $(tId).removeClass("xCN_DivTabBottomActive");
        $(tId).addClass("xCN_DivTabBottomUnActive");
    }

    tId = '#' + tName_array[pnTabNo];
    $(tId).removeClass("xCN_DivTabBottomUnActive");
    $(tId).addClass("xCN_DivTabBottomActive");
    for (nI = pnTabNo + 1; nI < tName_array.length; nI++) {
        tId = '#' + tName_array[nI];
        $(tId).removeClass("xCN_DivTabBottomActive");
        $(tId).addClass("xCN_DivTabBottomUnActive");
    }

}

function J009_SHWxTabNumGrp(pnTabNo, ptTab0, ptTab1, ptTab2, ptTab3, ptTab4, ptTab5, ptTab6, ptTab7, ptTab8, ptTab9) {
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

    var tId
    for (nI = 0; nI < pnTabNo; nI++) {
        tId = '#' + tName_array[nI];
        $(tId).removeClass("xCN_DivTabActiveGrp");
        $(tId).addClass("xCN_DivTabUnActiveGrp");
    }

    tId = '#' + tName_array[pnTabNo];
    $(tId).removeClass("xCN_DivTabUnActiveGrp");
    $(tId).addClass("xCN_DivTabActiveGrp");
    for (nI = pnTabNo + 1; nI < tName_array.length; nI++) {
        tId = '#' + tName_array[nI];
        $(tId).removeClass("xCN_DivTabActiveGrp");
        $(tId).addClass("xCN_DivTabUnActiveGrp");
    }
}

function J009_SHWxTabTopicGrp(pnTabNo, ptTab0, ptTab1, ptTab2, ptTab3, ptTab4, ptTab5, ptTab6, ptTab7, ptTab8, ptTab9) {
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