//Create 14-03-2013 *CHUCK
function J016_SHWxNextPage(pnPageNo, ptPage0, ptPage1, ptPage2, ptPage3, ptPage4, ptPage5, ptPage6, ptPage7, ptPage8, ptPage9) {
    var tName = "";
    if (ptPage0 != undefined) tName += ptPage0;
    if (ptPage1 != undefined) tName += ";" + ptPage1;
    if (ptPage2 != undefined) tName += ";" + ptPage2;
    if (ptPage3 != undefined) tName += ";" + ptPage3;
    if (ptPage4 != undefined) tName += ";" + ptPage4;
    if (ptPage5 != undefined) tName += ";" + ptPage5;
    if (ptPage6 != undefined) tName += ";" + ptPage6;
    if (ptPage7 != undefined) tName += ";" + ptPage7;
    if (ptPage8 != undefined) tName += ";" + ptPage8;
    if (ptPage9 != undefined) tName += ";" + ptPage9;
    var tName_array = tName.split(";");

    var tId
    for (nI = 0; nI < tName_array.length; nI++) {
        if (nI != pnPageNo) {
            tId = '#' + tName_array[nI];
            $(tId).addClass("xCN_DivDisplayNone");
        }
    }

    tId = '#' + tName_array[pnPageNo];
    $(tId).removeClass("xCN_DivDisplayNone");
}

//Display none Page
function J016_DISxAllPage(ptPage0, ptPage1, ptPage2, ptPage3, ptPage4, ptPage5, ptPage6, ptPage7, ptPage8, ptPage9) {
    var tName = "";
    if (ptPage0 != undefined) tName += ptPage0;
    if (ptPage1 != undefined) tName += ";" + ptPage1;
    if (ptPage2 != undefined) tName += ";" + ptPage2;
    if (ptPage3 != undefined) tName += ";" + ptPage3;
    if (ptPage4 != undefined) tName += ";" + ptPage4;
    if (ptPage5 != undefined) tName += ";" + ptPage5;
    if (ptPage6 != undefined) tName += ";" + ptPage6;
    if (ptPage7 != undefined) tName += ";" + ptPage7;
    if (ptPage8 != undefined) tName += ";" + ptPage8;
    if (ptPage9 != undefined) tName += ";" + ptPage9;
    var tName_array = tName.split(";");

    var tId
    for (nI = 0; nI < tName_array.length; nI++) {
        tId = '#' + tName_array[nI];
        $(tId).addClass("xCN_DivDisplayNone");
    }
}