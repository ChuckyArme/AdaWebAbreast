var tJ003_VirtualDirectory;
var oJ003_DialogType = {
DialogOk: 1,
DialogOkCancel: 3,
DialogYesNo : 12,
DialogYesNoCancel : 14
};
var oJ003_DialogResult = {
    Ok: 1,
    Cancel: 2,
    Yes: 4,
    No: 8
};

var oJ003_DialogIcon = {
    Warning:0,
    Information:1,
    Question:2,
    Error:3
};

var oJ003_SNDialogMode = {
    Purchase: 0,
    Check: 1,
    Sale: 2,
    ChangeCstPoint: 4,
    ReadOnly: 3
};

function J003_SHWxDialog(ptUrl) {
    var tTagStr = '';
    tTagStr += '<table id="oJ003_TableDiv" cellpadding=0 cellspacing=0 style="vertical-align:middle;text-align:center;border:solid 0px blue;">';
    tTagStr += '<tr>';
    tTagStr += '<td>';
    tTagStr += '<div id="oJ003_DivDialog" style="vertical-align:middle;text-align:center;margin:auto;position:relative;border:solid 0px red;"></div> ';
    tTagStr += '</td>';
    tTagStr += '</tr>';
    tTagStr += '</table>';
    tTagStr += '<div id="oJ003_Dialog">';
    tTagStr += '</div>';


    $('body').append(tTagStr);
    var oArr = J003_GEToPageSize();
    $('#oJ003_TableDiv').css({
        padding: '0',
        margin: '0',
        top: '0',
        left: '0',
        position: 'absolute',
        width: oArr[2],
        height: oArr[3],
        zIndex: '1'

    });
    $('#oJ003_DivDialog').hide();
    $('#SM_ImgWaiting').show();
    $('#oJ003_DivDialog').load(ptUrl, null, function() {
        $('#oJ003_DivDialog').show();
    });
    $('#oJ003_Dialog').css({
        backgroundColor: '#696969',
        opacity: '0.7',
        padding: '0',
        margin: '0',
        top: '0',
        left: '0',
        float: 'left',
        position: 'absolute',
        display: 'block',
        zIndex: '0',
        width: oArr[0],
        height: oArr[1]
    }).show();

    $(window).resize(function() {
        // Get page sizes
        var arrPageSizes = J003_GEToPageSize();
        // Style overlay and show it
        $('#oJ003_Dialog').css({
            width: arrPageSizes[0],
            height: arrPageSizes[1]
        });
        $('#oJ003_TableDiv').css({
            width: arrPageSizes[2],
            height: arrPageSizes[3]
        });
    });
    $('#oJ003_TableDiv').click(function() {
        $('#oJ003_TableDiv').fadeOut(500, function() {
            $('#oJ003_TableDiv').remove();
        });
        $('#oJ003_Dialog').fadeOut(0, function() {
            $('#oJ003_Dialog').remove();
        });
    });
}
function J003_DISxDialog() {
    $('#oJ003_TableDiv').fadeOut(500, function() {
        $('#oJ003_TableDiv').remove();
    });
    $('#oJ003_Dialog').fadeOut(0, function() {
        $('#oJ003_Dialog').remove();
    });
}
function J003_SHWxWaiting() {
//    var tPathPic = '';
//    if (tJ003_VirtualDirectory != null && tJ003_VirtualDirectory != '') {
//        tPathPic = "/" + tJ003_VirtualDirectory;
//    }
//    tPathPic += '/Content/img/Waiting.gif';
//    var tTagStr = '';
//    tTagStr += '<table id="oJ003_TableImg" cellpadding=0 cellspacing=0 style="vertical-align:middle;text-align:center;">';
//    tTagStr += '<tr>';
//    tTagStr += '<td>';
//    tTagStr += '<div';
//    tTagStr += 'style="vertical-align:middle;text-align:center;width:64px;height:64px;background-image:url(../../Content/img/Waiting.gif)" ';
//    tTagStr += '>';
//    tTagStr += '</div>';
//    tTagStr += '<img alt="" ';
//    tTagStr += 'src="' + '../../Content/img/Waiting.gif' + '" ';
//    tTagStr += 'style="vertical-align:middle;text-align:center;" ';
//    tTagStr += '/>';
//    tTagStr += '</td>';
//    tTagStr += '</tr>'; 
//    tTagStr += '</table>';
//    tTagStr += '<div id="oJ003_Splash">';
//    tTagStr += '</div>';
//    $('body').append(tTagStr);
//    var oArr = J003_GEToPageSize();
//    $('#oJ003_TableImg').css({
//        padding: '0',
//        margin: '0',
//        top: '0',
//        left: '0',
//        position: 'absolute',
//        width: oArr[2],
//        height: oArr[3],
//        zIndex: '1'
//    });
//    $('#oJ003_Splash').css({
//        backgroundColor: '#696969',
//        opacity: '0.6',
//        padding: '0',
//        margin: '0',
//        top: '0',
//        left: '0',
//        float: 'left',
//        position: 'absolute',
//        display: 'block',
//        zIndex: '2',
//        width: oArr[0],
//        height: oArr[1]
//    }).show();
//    $(window).resize(function() {
//        // Get page sizes
//        var arrPageSizes = J003_GEToPageSize();
//        // Style overlay and show it
//        $('#oJ003_Splash').css({
//            width: arrPageSizes[0],
//            height: arrPageSizes[1]
//        });
//        $('#oJ003_TableImg').css({
//            width: arrPageSizes[2],
//            height: arrPageSizes[3]
//        });
//    });
//    //		$('#oJ003_Splash').click(function(){
//    //			$('#oJ003_Splash').fadeOut(1000,function(){
//    //			    $('#oJ003_Splash').remove();
//    //			});
    //    //		});
    var tPathPic = '';
    if (tJ003_VirtualDirectory != null && tJ003_VirtualDirectory != '') {
        tPathPic = "/" + tJ003_VirtualDirectory;
    }
    tPathPic += '/Content/Img/Waiting.gif';
    var tTagStr = '';
    tTagStr += '<table id="oJ003_TableImg" cellpadding=0 cellspacing=0 style="vertical-align:middle;text-align:center;">';
    tTagStr += '<tr>';
    tTagStr += '<td>';
    tTagStr += '<div';
    tTagStr += 'class="xCN_DivSplash" ';
    tTagStr += '>';
    tTagStr += '</div>';
    tTagStr += '<img alt="" ';
    tTagStr += 'src="' + tPathPic + '" ';
    tTagStr += 'style="vertical-align:middle;text-align:center;" ';
    tTagStr += '/>';
    tTagStr += '</td>';
    tTagStr += '</tr>';
    tTagStr += '</table>';
    tTagStr += '<div id="oJ003_Splash">';
    tTagStr += '</div>';
    $('body').append(tTagStr);
    var oArr = J003_GEToPageSize();
    $('#oJ003_TableImg').css({
        padding: '0',
        margin: '0',
        top: '0',
        left: '0',
        position: 'absolute',
        width: oArr[2],
        height: oArr[3],
        zIndex: '2'
    });
    $('#oJ003_Splash').css({
        backgroundColor: '#696969',
        opacity: '0.7',
        padding: '0',
        margin: '0',
        top: '0',
        left: '0',
        float: 'left',
        position: 'absolute',
        display: 'block',
        zIndex: '1',
        width: oArr[0],
        height: oArr[1]
    }).show().focus();
    $(window).resize(function() {
        // Get page sizes
        var arrPageSizes = J003_GEToPageSize();
        // Style overlay and show it
        $('#oJ003_Splash').css({
            width: arrPageSizes[0],
            height: arrPageSizes[1]
        });
        $('#oJ003_TableImg').css({
            width: arrPageSizes[2],
            height: arrPageSizes[3]
        });
    });
}
function J003_DISxWaiting() {
    $('#oJ003_Splash').fadeOut(500, function() {
        $('#oJ003_Splash').remove();
    });
    $('#oJ003_TableImg').fadeOut(0, function() {
        $('#oJ003_TableImg').remove();
    });
}
function J003_GEToPageSize() {
    var xScroll, yScroll;
    if (window.innerHeight && window.scrollMaxY) {
        xScroll = window.innerWidth + window.scrollMaxX;
        yScroll = window.innerHeight + window.scrollMaxY;
    } else if (document.body.scrollHeight > document.body.offsetHeight) { // all but Explorer Mac
        xScroll = document.body.scrollWidth;
        yScroll = document.body.scrollHeight;
    } else { // Explorer Mac...would also work in Explorer 6 Strict, Mozilla and Safari
        xScroll = document.body.offsetWidth;
        yScroll = document.body.offsetHeight;
    }
    var windowWidth, windowHeight;
    if (self.innerHeight) {	// all except Explorer
        if (document.documentElement.clientWidth) {
            windowWidth = document.documentElement.clientWidth;
        } else {
            windowWidth = self.innerWidth;
        }
        windowHeight = self.innerHeight;
    } else if (document.documentElement && document.documentElement.clientHeight) { // Explorer 6 Strict Mode
        windowWidth = document.documentElement.clientWidth;
        windowHeight = document.documentElement.clientHeight;
    } else if (document.body) { // other Explorers
        windowWidth = document.body.clientWidth;
        windowHeight = document.body.clientHeight;
    }
    // for small pages with total height less then height of the viewport
    if (yScroll < windowHeight) {
        pageHeight = windowHeight;
    } else {
        pageHeight = yScroll;
    }
    // for small pages with total width less then width of the viewport
    if (xScroll < windowWidth) {
        pageWidth = windowWidth;
    } else {
        pageWidth = xScroll;
    }
    arrayPageSize = new Array(pageWidth, pageHeight, windowWidth, windowHeight);
    return arrayPageSize;
}
function J003_SHWxConfirmDialog(ptMessage, ptShowButton, ptTitle, ptIcon) {
    var dNow = new Date;
    var tDateTimeNow = dNow.getFullYear().toString() + dNow.getMonth().toString() + dNow.getDay().toString() + dNow.getHours().toString() + dNow.getMinutes().toString() + dNow.getSeconds().toString() + dNow.getMilliseconds().toString();
    var tUrl = '';
    if (tJ003_VirtualDirectory != null && tJ003_VirtualDirectory != ''){
        tUrl += '/' + tJ003_VirtualDirectory;
    }
    tUrl += "/cvcCenter/wConfirmDialog?ptDateTimeNow=" + tDateTimeNow + "&ptShowButton=" + ptShowButton + "&ptMessage=" + ptMessage + "&ptTitle=" + ptTitle + '&ptIcon=' + ptIcon;
    var tReturn = showModalDialog(encodeURI(tUrl), encodeURI("Passing Data"), "dialogWidth:300px; dialogHeight:185px; status:no; center:yes;titlebar =0; scrollbars=yes'");
    return tReturn;
}
function J003_BRWxSerial(ptController, ptAction, ptPdtCode, ptPdtName, ptPdtFactor, ptUnitName, pnSeqNo ,ptMode) {
    var dNow = new Date;
    var tDate = dNow.getFullYear().toString() + dNow.getMonth().toString() + dNow.getDay().toString() + dNow.getHours().toString() + dNow.getMinutes().toString() + dNow.getSeconds().toString() + dNow.getMilliseconds().toString();
    var ReturnedValue = '';
    var tUrl = '';
    if (tJ003_VirtualDirectory != null && tJ003_VirtualDirectory != '') {
        tUrl += '/' + tJ003_VirtualDirectory;
    }
    if (pnSeqNo != null) {
        tUrl += '/' + ptController + '/' + ptAction + '?ptDate=' + tDate + '&ptPdtCode=' + ptPdtCode + '&ptPdtName=' + ptPdtName + '&ptPdtFactor=' + ptPdtFactor + '&pnSeqNo=' + pnSeqNo + '&ptUnitName=' + ptUnitName + '&ptMode=' + ptMode;
    } 
    else {
        tUrl += '/' + ptController + '/' + ptAction + '?ptDate=' + tDate + '&ptPdtCode=' + ptPdtCode + '&ptPdtName=' + ptPdtName + '&ptPdtFactor=' + ptPdtFactor + '&pnSeqNo=0' + '&ptUnitName=' + ptUnitName + '&ptMode=' + ptMode;
    }
    tUrl = tUrl.replace('#', '*');
    ReturnedValue = showModalDialog(encodeURI(tUrl), "Passed String", "dialogWidth:500px; dialogHeight:400px; status:no; center:yes;titlebar =0");
    return ReturnedValue;
}
function J003_BRWxFolder(ptCheckCanWrite) {
    var dNow = new Date;
    var tDate = dNow.getFullYear().toString() + dNow.getMonth().toString() + dNow.getDay().toString() + dNow.getHours().toString() + dNow.getMinutes().toString() + dNow.getSeconds().toString() + dNow.getMilliseconds().toString();
    var tUrl = '';
    if (tJ003_VirtualDirectory != null && tJ003_VirtualDirectory != '') {
        tUrl += '/' + tJ003_VirtualDirectory;
    }
    tUrl += '/cvcBrwFolder/Index';
    tUrl += '?ptDate=' + tDate;
    tUrl += '&ptCheckCanWrite=' + ptCheckCanWrite;
    var tReturn = showModalDialog(encodeURI(tUrl), "Passed String", "dialogWidth:400px; dialogHeight:396px; status:no; center:yes;titlebar =0")
    return tReturn;
}
function J003_BRWxAutoCode(ptSatTblName, ptSatFedCode, ptSatStaDocType) {
    var dNow = new Date;
    var tDate = dNow.getFullYear().toString() + dNow.getMonth().toString() + dNow.getDay().toString() + dNow.getHours().toString() + dNow.getMinutes().toString() + dNow.getSeconds().toString() + dNow.getMilliseconds().toString();
    var tUrl = '';
    if (tJ003_VirtualDirectory != null && tJ003_VirtualDirectory != '') {
        tUrl += '/' + tJ003_VirtualDirectory;
    }
    tUrl += '/cvcOption/wDialogOption';
    tUrl += '?ptDate=' + tDate;
    tUrl += '&ptStaBrwAutoCode=1';
    tUrl += '&ptSatTblName=' + ptSatTblName;
    tUrl += '&ptSatFedCode=' + ptSatFedCode;
    tUrl += '&ptSatStaDocType=' + ptSatStaDocType;
    showModalDialog(encodeURI(tUrl), "Passed String", "dialogWidth:830px; dialogHeight:600px; status:no; center:yes;titlebar =0")
}