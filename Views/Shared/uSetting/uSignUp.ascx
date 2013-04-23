<%@ Control Language="VB" Inherits="System.Web.Mvc.ViewUserControl" %>

<link rel="Stylesheet" type ="text/css" href="<%=Url.Content("~/Content/AdaCss/Global/FCS_CNCenter.css") %>"/>
<link rel="Stylesheet" type ="text/css" href="<%=Url.Content("~/Content/AdaCss/Local/FCS_uSignup.css") %>"/>
<div class="xCN_AllFontFamily xCN_AllFontSize xCN_AllFontColor xW_DivMain">
    <!-- Check Auth -->
    <div id="odiAuthCode" class="xW_DivSizeHeadAuth xCN_AllBorderColor xCN_AllBackgroundColor">
        <div class="xW_LabelHeader"><label class="xW_LabelStyle"><%=ViewData("olaAuth")%></label></div>
        <table width="100%" cellpadding=3 cellspacing=0>
            <tr>
                <td align="right" class="xW_DivExchange"><label class="xW_DivExchangeCap"><%=ViewData("olaAppCode")%></label></td>
                <td class="xW_DivExchangeData">
                    <input type="text" id="otbAuthCode"
                    onkeypress="W_OBJxAuthKeyEnter(event.keyCode,event.which)"
                    onblur="W_AuthOnBlur()" /></td>
                <td id="otdAuth" class="xW_DivImg"><a></a></td>
            </tr>
        </table>
    </div>
        
    <!-- DataBase -->
    <div id="odiDB" class="xW_DivSizeHead xCN_AllBorderColor xCN_AllBackgroundColor">
        <div class="xW_LabelHeader"><label class="xW_LabelStyle"><%=ViewData("olaDBName")%></label></div>
        <table width="100%" cellpadding=3 cellspacing=0>
            <tr>
                <td align="right" class="xW_DivExchange"><label class="xW_DivExchangeCap"><%=ViewData("olaSrvName")%></label></td>
                <td class="xW_DivExchangeData">
                    <input type="text" id="otbSrvName"
                    onkeypress="W_DATxKeyEnter(event.keyCode,event.which,'otbSrvUsrCode')" /></td>
            </tr>
            <tr>
                <td align="right" class="xW_DivExchange"><label class="xW_DivExchangeCap"><%=ViewData("olaUserCode")%></label></td>
                <td class="xW_DivExchangeData">
                    <input type="text" id="otbSrvUsrCode"
                    onkeypress="W_DATxKeyEnter(event.keyCode,event.which,'otbSrvUsrPwd')" /></td>
            </tr>
            <tr>
                <td align="right" class="xW_DivExchange"><label class="xW_DivExchangeCap"><%=ViewData("olaPassword")%></label></td>
                <td class="xW_DivExchangeData">
                    <input type="password" id="otbSrvUsrPwd"
                    onkeypress="W_DATxKeyEnter(event.keyCode,event.which,'oimRefreshDB')" /></td>
            </tr>
            <tr>
                <td align="right" class="xW_DivExchange"><label class="xW_DivExchangeCap"><%=ViewData("olaDBName")%></label></td>
                <td class="xW_DivDBData xW_ImgRefreshDB">
                    <select id="ocbDBName" class="xW_ComboBox"></select>
                    <a id="oimRefreshDB" class="xW_RefreshDB" onclick="W_FRMxDBRefresh('Cmp')"></a>
                </td>
            </tr>
        </table>
    </div>
    
    <!-- User -->
    <div id="odiUsr" class="xW_DivSizeHeadUser xCN_AllBorderColor xCN_AllBackgroundColor">
        <div class="xW_LabelHeader"><label class="xW_LabelStyle"><%=ViewData("olaUser")%></label></div>
        <table width="100%" cellpadding=3 cellspacing=0>
            <tr>
                <td align="right" class="xW_DivExchange"><label class="xW_DivExchangeCap"><%=ViewData("olaUserName")%></label></td>
                <td class="xW_DivExchangeData">
                    <input type="text" id="otbUsrPosCode"
                    onkeypress="W_DATxKeyEnter(event.keyCode,event.which,'otbUsrPosPwd')" /></td>
            </tr>
            <tr>
                <td align="right" class="xW_DivExchange"><label class="xW_DivExchangeCap"><%=ViewData("olaPassword")%></label></td>
                <td class="xW_DivExchangeData">
                    <input type="text" id="otbUsrPosPwd"
                    onkeypress="W_DATxNoUsrPwdEnter(event.keyCode,event.which)" 
                    onblur="W_UserOnBlur()" /></td>
                <td class="xW_DivExchangeData xW_MessageColor"><label id="olaShowDes"></label></td>
            </tr>
        </table>             
    </div>

    <!-- Company & Branch -->
    <div id="odiCmp" class="xW_DivSizeHeadCmpBch xCN_AllBorderColor xCN_AllBackgroundColor">
        <div class="xW_LabelHeader"><label class="xW_LabelStyle"><%=ViewData("olaComp")%></label></div>
        <table width="100%" cellpadding=3 cellspacing=0>
            <tr>
                <td align="right" class="xW_DivExchange"><label class="xW_DivExchangeCap"><%=ViewData("olaCompany")%></label></td>
                <td class="xW_DivExchangeData"><input type="text" id="otbCmpName" /></td>
            </tr>
            <tr>
                <td align="right" class="xW_DivExchange"><label class="xW_DivExchangeCap"><%=ViewData("olaBranch")%></label></td>
                <td class="xW_DivExchangeData">
                    <select id="ocbBch" class="xW_ComboBoxBch"></select>
                </td>
            </tr>
            <tr>
                <td align="right" class="xW_DivExchange"><label class="xW_DivExchangeCap"><%=ViewData("olaSubDomain")%></label></td>
                <td class="xW_DivExchangeData">
                    <input type="text" id="otbSubDomain"
                    onkeypress="return W_DATxGoToSubmit(event.keyCode,event.which);" 
                    onblur="W_DomainOnBlur();" /></td>
                    <!-- W_DATxLoginWeb(event.keyCode,event.which) -->
                <td align="left" class="xW_DivExchangeData"><label class="xW_DivExchangeCap"><%=ViewData("olaDomain")%></label></td>
            </tr>
            <tr>
                <td align="right" class="xW_DivExchange"></td>
                <td class="xW_DivExchangeData xW_MessageColor"><label id="olaMsgErr"></label></td>
            </tr>
        </table>
    </div>

    <!-- Submit -->
    <div id="Div1" class="xW_DivSizeHeadCmpBch">
        <input type="button" id="ocmSubmit" style="float:right;" value="<%=ViewData("olaSubmit")%>" onclick="W_FRMxLoginWeb('CMP');" />
    </div>
</div>

<script type="text/javascript">
    //### ตัวแปรกลาง ###//
    var tObjName = 'odiAuthCode';
    var tObjDBOffset = "odiDB";
    var tObjUsrOffset = "odiUsr";
    var tObjCmpOffset = "odiCmp";
    var tW_TopDB;
    var tW_LeftDB;
    var tW_TopUsr;
    var tW_LeftUsr;
    var tW_TopCmp;
    var tW_LeftCmp;

    function W_SETxIniatial() {
        W_GETxTopLeft(tObjDBOffset, 'DB');
        W_GETxTopLeft(tObjUsrOffset, 'Usr');
        W_GETxTopLeft(tObjCmpOffset, 'Cmp');
        W_SHWxLockDiv(tObjDBOffset, 'DB');
        W_SHWxLockDiv(tObjUsrOffset, 'Usr');
        W_SHWxLockDiv(tObjCmpOffset, 'Cmp');
        J002_SETxReadOnly('otbCmpName', true);
        //J002_SETxReadOnly('ocmSubmit', true);
        document.getElementById("ocmSubmit").disabled = true; 
    }
    function W_GETxTopLeft(ptDivName, ptCase) {
        var offsets = document.getElementById(ptDivName).getBoundingClientRect();
        var tTop = offsets.top;
        var tLeft = offsets.left;
        switch (ptCase.toUpperCase()) {
            case 'DB':
                tW_TopDB = tTop;
                tW_LeftDB = tLeft;
                break;
            case 'USR':
                tW_TopUsr = tTop;
                tW_LeftUsr = tLeft;
                break;
            case 'CMP':
                tW_TopCmp = tTop;
                tW_LeftCmp = tLeft;
                break;
        }
    }
    function W_SHWxLockDiv(ptObjName, ptCase) {
        var tTagStr = '';
        var tTop = '0';
        var tLeft = '0';
        switch (ptCase.toUpperCase()) {
            case 'DB':
                tTop = tW_TopDB;
                tLeft = tW_LeftDB;
                break;
            case 'USR':
                tTop = tW_TopUsr;
                tLeft = tW_LeftUsr;
                break;
            case 'CMP':
                tTop = tW_TopCmp;
                tLeft = tW_LeftCmp;
                break;
        }
        tTagStr += '<table id="' + tObjName + '_TableImg" cellpadding=0 cellspacing=0 style="vertical-align:middle;text-align:center;">';
        tTagStr += '<tr>';
        tTagStr += '<td>';
        tTagStr += '<div';
        tTagStr += 'class="xCN_DivSplash" ';
        tTagStr += '>';
        tTagStr += '</div>';
        tTagStr += '</td>';
        tTagStr += '</tr>';
        tTagStr += '</table>';
        tTagStr += '<div id="' + ptObjName + '_Splash">';
        tTagStr += '</div>';
        $('#' + ptObjName).append(tTagStr);
        var oArr = J003_GEToPageSize();
        $('#' + ptObjName + '_TableImg').css({
            padding: '0',
            margin: '0',
            top: '0',
            left: '0',
            position: 'absolute',
            width: $("#" + ptObjName).width(),
            height: $("#" + ptObjName).height(),
            zIndex: '2'
        });
        $('#' + ptObjName + '_Splash').css({
            backgroundColor: '#696969',
            opacity: '0.7',
            padding: '0',
            margin: '0',
            top: tTop,
            left: tLeft,
            float: 'left',
            position: 'absolute',
            display: 'block',
            zIndex: '1',
            width: $("#" + ptObjName).width(),
            height: $("#" + ptObjName).height()
        }).show().focus();
    }

    function W_DISxWaiting(ptObjName) {
        $('#' + ptObjName + '_Splash').fadeOut(500, function () {
            $('#' + ptObjName + '_Splash').remove();
        });
        $('#' + ptObjName + '_TableImg').fadeOut(0, function () {
            $('#' + ptObjName + '_TableImg').remove();
        });
    }

    function W_CHKxCheckAuth() {
        var tAuthCode = $('#otbAuthCode').val();
        //var nIndex = 1; //document.getElementById("ocbLang").selectedIndex;
        //var tLang = ptLang;  //document.getElementById("ocbLang").options[nIndex].value;
        var tUrl = '<%=Url.Action("C_CHKtCheckAuthCode","cvcAbreastMain") %>' + "?ptAuthCode=" + tAuthCode;
        var oHTTP = J002_GEToXMLHttpRequest();
        oHTTP.open("GET", encodeURI(tUrl), false);
        oHTTP.send(null);
        var tReturn = oHTTP.responseText;
        if (tReturn == '1') {
            $('#otdAuth').removeClass('xW_DivImgFail');
            $('#otdAuth').addClass('xW_DivImgPass');
            W_DISxWaiting(tObjDBOffset);
            $('#otbSrvName').focus();
        } else {
            $('#otdAuth').removeClass('xW_DivImgPass');
            $('#otdAuth').addClass('xW_DivImgFail');
            W_SHWxLockDiv(tObjDBOffset, 'DB');
            $('#otbAuthCode').select();
        }
    }

    function W_OBJxAuthKeyEnter(ptKeyCode, ptWhich) {
        var tKey = ptKeyCode;
        if (ptWhich != null) { tKey = ptWhich; }
        if (tKey == 13) { W_AuthOnBlur(); }
    }
    function W_AuthOnBlur() {
        if ($('#otbAuthCode').val() != '') { W_CHKxCheckAuth(); }
    }

    function W_DATxKeyEnter(ptKeyCode, ptWhich, ptObjName) {
        var tKey = ptKeyCode;
        if (ptWhich != null) { tKey = ptWhich; }
        if (tKey == 13) {
            $('#' + ptObjName).select();
        }
    }

    //ค้าหารายชื่อฐานข้อมูล
    function W_FRMxDBRefresh(ptFlag) {
        try {
            var tObjSrvName;
            var tObjSrvUsrCode;
            var tObjSrvUsrPwd;
            var tObjDBName;
            switch (ptFlag.toUpperCase()) {
                case 'CMP':
                    tObjSrvName = 'otbSrvName';
                    tObjSrvUsrCode = 'otbSrvUsrCode';
                    tObjSrvUsrPwd = 'otbSrvUsrPwd';
                    tObjDBName = 'ocbDBName';
                    break;
                case 'BCH':
                    tObjSrvName = 'otbSrvName4Bch';
                    tObjSrvUsrCode = 'otbSrvUsr4Bch';
                    tObjSrvUsrPwd = 'otbSrvUsrPwd4Bch';
                    tObjDBName = 'ocbDBName4Bch';
                    break;
            }
            var tPostData = 'ptServer=' + $('#' + tObjSrvName).val();
            tPostData += "&ptUser=" + $('#' + tObjSrvUsrCode).val();
            tPostData += "&ptPwd=" + $('#' + tObjSrvUsrPwd).val();
            //tPostData += "&ptRandom=" + Math.random();

            var tUrl = '<%= Url.Action("C_GETtDBName", "cvcLogin") %>';  //+ '?' + tPostData;
            var oXmlHttp = J002_GEToXMLHttpRequest();
            oXmlHttp.open('post', encodeURI(tUrl), false);
            oXmlHttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            oXmlHttp.send(tPostData);
            var tResult = oXmlHttp.responseText;

            var myselect = document.getElementById(tObjDBName);
            myselect.options.length = 0;
            var aDBName = tResult.split(',');
            for (i = 0; i < aDBName.length; i++) {
                myselect.add(new Option(aDBName[i], aDBName[i]), null);
            }
            if (aDBName.length > 1) { W_DISxWaiting(tObjUsrOffset); }
        } catch (ex) {
            alert(ex.description);
            return 0;
        }
    }

    function W_DATxNoUsrPwdEnter(ptKeyCode, ptWhich) {
        var tKey = ptKeyCode;
        if (ptWhich != null) { tKey = ptWhich; }
        if (tKey == 13) {
            W_UserOnBlur();
        }
    }
    function W_UserOnBlur() {
        if (W_CHKbUserAbreast()) {
            W_DISxWaiting(tObjCmpOffset);
        } else {
            W_SHWxLockDiv(tObjCmpOffset, 'Cmp');
        }
    }
    //ตรวจสอบ User และ Pwd เพื่อไปหน้าเลือกบริษัท และ สาขา
    function W_CHKbUserAbreast() {
        try {
            var tPostData = 'ptUsrCode=' + $('#otbUsrPosCode').val();
            tPostData += "&ptUsrPwd=" + $('#otbUsrPosPwd').val();
            tPostData += '&ptServer=' + $('#otbSrvName').val();
            tPostData += "&ptUser=" + $('#otbSrvUsrCode').val();
            tPostData += "&ptPwd=" + $('#otbSrvUsrPwd').val();
            tPostData += "&ptDBName=" + $('#ocbDBName').val();

            var tUrl = '<%= Url.Action("C_CHKtCheckUser", "cvcLogin") %>'; //ตรวจสอบว่ามีผู้ใช้อยู่จิงๆหรือไม่
            var oXmlHttp = J002_GEToXMLHttpRequest();
            oXmlHttp.open('post', encodeURI(tUrl), false);
            oXmlHttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            oXmlHttp.send(tPostData);
            var tResult = oXmlHttp.responseText;
            if (tResult.split("|")[0] == "1") {
                var aVal = tResult.split('|');
                var tBch = aVal[2];
                $('#olaShowDes').html('');

                $('#otbCmpCode').val(aVal[1].split(',')[0]);
                $('#otbCmpName').val(aVal[1].split(',')[1]);
                var oBch = document.getElementById("ocbBch");
                oBch.options.length = 0;
                var aBch = tBch.split(',');
                for (i = 0; i < aBch.length; i++) {
                    oBch.add(new Option(aBch[i].split(':')[1], aBch[i].split(':')[0]), null);
                }
                return true;
            } else {
                $('#olaShowDes').html(tResult.split('|')[1]);
                return false;
            }

        } catch (ex) {
            alert(ex.description);
            return false;
        }
    }

    function W_DATxGoToSubmit(ptKeyCode, ptWhich) {
        var tKey = ptKeyCode;
        if (ptWhich != null) { tKey = ptWhich; }
        // ' " | # ? < > , ; : % ~ @ ! $ & ^ _ * /- + \ =
        if (tKey == 124 || tKey == 39 || tKey == 34 || tKey == 35 ||
            tKey == 63 || tKey == 60 || tKey == 62 || tKey == 44 ||
            tKey == 59 || tKey == 58 || tKey == 37 || tKey == 126 ||
            tKey == 64 || tKey == 33 || tKey == 36 || tKey == 38 ||
            tKey == 94 || tKey == 95 || tKey == 42 || tKey == 47 || 
            tKey == 45 || tKey == 43 || tKey == 92 || tKey == 61) {
            return false;
        }
        if (tKey == 13) {
            W_DomainOnBlur();
        }
    }

    function W_DomainOnBlur() {
        var tSubDomain = $('#otbSubDomain').val();
        if (tSubDomain == '') {
            document.getElementById("ocmSubmit").disabled = true;
            $('#otbSubDomain').select();
            return;
        }
        if (tSubDomain.length > 20) {
            document.getElementById("ocmSubmit").disabled = true;
            $('#otbSubDomain').select();
            return;
        }
        document.getElementById("ocmSubmit").disabled = false;
        $('#ocmSubmit').select();
    }

    //Submit Signup
    function W_FRMxLoginWeb(ptFlag) {
        try {
            var tObjUsrCode;
            var tObjSrvName;
            var tObjSrvUsrCode;
            var tObjSrvUsrPwd;
            var tObjDBName;
            var tObjCmpCode;
            var tCmpName;
            var tObjBchCode;
            var tObjRegNum;
            var tObjMsg;
            switch (ptFlag.toUpperCase()) {
                case 'CMP':
                    tObjUsrCode = 'otbUsrPosCode';
                    tObjSrvName = 'otbSrvName';
                    tObjSrvUsrCode = 'otbSrvUsrCode';
                    tObjSrvUsrPwd = 'otbSrvUsrPwd';
                    tObjDBName = 'ocbDBName';
                    tObjCmpCode = 'otbCmpCode';
                    tCmpName = $('#otbCmpName').val();
                    tObjBchCode = 'ocbBch';
                    tObjRegNum = 'otbRegNum';
                    tObjMsg = 'olaMsgErr';
                    break;
                case 'BCH':
                    //alert($('#ocbCmp4Bch option:selected').text());
                    //$('#ocbCmp4Bch option:selected').text()
                    tObjUsrCode = 'otbUsrCode4Bch';
                    tObjSrvName = 'otbSrvName4Bch';
                    tObjSrvUsrCode = 'otbSrvUsr4Bch';
                    tObjSrvUsrPwd = 'otbSrvUsrPwd4Bch';
                    tObjDBName = 'ocbDBName4Bch';
                    tObjCmpCode = 'otbCmpCode4Bch'; //'ocbCmp4Bch';
                    //tCmpName = $('#ocbCmp4Bch').text();
                    tCmpName = $('#otbCmp4Bch').val(); //$("#ocbCmp4Bch option:selected").text();
                    tObjBchCode = 'ocbBch4Bch';
                    tObjRegNum = 'otbRegNum4Bch';
                    tObjMsg = 'olaMsgUsr4Bch';
                    //alert($('#' + tObjBchCode + ' option:selected').text());
                    break;
            }

            $('#' + tObjBchCode + ' option:selected').text();

            var tPostData = 'ptUsrCode=' + $('#' + tObjUsrCode).val();
            tPostData += '&ptServer=' + $('#' + tObjSrvName).val();
            tPostData += "&ptUser=" + $('#' + tObjSrvUsrCode).val();
            tPostData += "&ptPwd=" + $('#' + tObjSrvUsrPwd).val();
            tPostData += "&ptDBName=" + $('#' + tObjDBName).val();
            tPostData += "&ptCmpCode=" + $('#' + tObjCmpCode).val();
            tPostData += "&ptCmpName=" + tCmpName;
            tPostData += "&ptBchCode=" + $('#' + tObjBchCode).val();
            tPostData += "&ptBchName=" + $('#' + tObjBchCode + ' option:selected').text();  //$('#' + tObjBchCode).text();
            tPostData += "&ptRegName=" + $('#' + tObjRegNum).val();
            tPostData += "&ptFlag=" + ptFlag;
            tPostData += "&ptSubDomain=" + $('#otbSubDomain').val();

            var tUrl = '<%= Url.Action("C_SETtAdaDB", "cvcLogin") %>'; //บันทึก Config การใช้งาน WebAbreast
            var oXmlHttp = J002_GEToXMLHttpRequest();
            oXmlHttp.open('post', encodeURI(tUrl), false);
            oXmlHttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            oXmlHttp.send(tPostData);
            var tResult = oXmlHttp.responseText;
            if (tResult == "Y") {
                window.location = '<%=Url.Action("Index","Home")%>';
            } else {
                $('#' + tObjMsg).html(tResult.split('|')[1]);
            }
        } catch (ex) {
            alert(ex.description);
        }
    }
</script>