var nJ003_CountMark = 0;

function J013_SETxCheckedAll(frm1, pobj) {
    var aa = document.getElementById(frm1);
    if (pobj.checked == true) {
        //checked = true
        nJ003_CountMark = aa.elements.length;
    }
    else {
        //checked = false
        nJ003_CountMark = 0;
    }
    for (var i = 0; i < aa.elements.length; i++) {
        aa.elements[i].checked = pobj.checked;
    }
}

//Don't use
function J013_SETxHide(pobj) {
    if (pobj.name == 'Mark') {
        pobj.name = 'UnMark';
        pobj.value = 'UnMark';
    }
    else {
        pobj.name = 'Mark';
        pobj.value = 'Mark';
    }
}

function J013_SETxUnmark(pobj, frm1, poThis, numMax) {
    if (poThis.checked == true) {
        nJ003_CountMark++;
    } else {
        nJ003_CountMark--;
    }
    
    var aa = document.getElementById(frm1);
    var MaxSize = nJ003_CountMark;
    if (numMax != null && numMax != "" && numMax != undefined) {
        MaxSize = MaxSize + numMax
    }
    if (aa.elements.length == MaxSize) {
        pobj.checked = true;
    } else {
        pobj.checked = false;
    }
}