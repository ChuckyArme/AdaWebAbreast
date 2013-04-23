<%@ Control Language="VB" Inherits="System.Web.Mvc.ViewUserControl" %>

<link rel="Stylesheet" type ="text/css" href="<%=Url.Content("~/Content/AdaCss/Global/FCS_CNCenter.css") %>"/>
<link rel="Stylesheet" type ="text/css" href="<%=Url.Content("~/Content/AdaCss/Local/FCS_uLoginSetting.css") %>"/>
<div class="xCN_AllFontFamily xCN_AllFontSize xCN_AllFontColor xW_DivMain">
    <!-- Option Company Vs Branch -->
    <div id="odiOpt" class="xW_DivSizeHead">
        <fieldset class="xCN_AllBackgroundColor xW_GroupSetting">
            <legend><%=ViewData("olaSetType")%></legend>
            <div class="xW_DivSizeData">
                <a onclick="W_CHKxOption('0','ordCmp','ordBch')" class="xW_DivSizeRadio">
                    <input id='ordCmp' type="radio" value='0' />
                    <%=ViewData("olaAddCmp")%>
                </a>
                <a onclick="W_CHKxOption('1','ordCmp','ordBch')" class="xW_DivSizeRadio">
                    <input id='ordBch' type="radio" value='1' />
                    <%=ViewData("olaSetBch")%>
                </a>

                <div class="xW_DivFooter">
                    <div>
                        <input type="button" 
                            value='<%=ViewData("olaNext")%>' 
                            onclick="W_SHWxNextPage(1)"
                             class="xW_BtnNext"/>
                    </div>
                    <div>
                        <input id="ocmBackDB" type="button" 
                            value='<%=ViewData("olaBack")%>' 
                            class="xW_BtnBack"/>
                    </div>
                </div>
            </div>
        </fieldset>
    </div>

    <!-- DataBase -->
    <div id="odiDB" class="xW_DivSizeHead">
        <fieldset class="xCN_AllBackgroundColor xW_GroupSetting">
            <legend><%=ViewData("olaDBName")%></legend>
            <div class="xW_DivSizeData">                
                <div class="xW_DivCaption"><%=ViewData("olaSrvName")%></div>
                <div class="xW_DivTextBox">
                    <input type="text" id="otbSrvName"
                        onkeypress="W_DATxKeyEnter(event.keyCode,event.which,'otbSrvUsrCode')" />
                </div>

                <div class="xW_DivCaption"><%=ViewData("olaUserCode")%></div>
                <div class="xW_DivTextBox">
                    <input type="text" id="otbSrvUsrCode"
                        onkeypress="W_DATxKeyEnter(event.keyCode,event.which,'otbSrvUsrPwd')" />
                </div>

                <div class="xW_DivCaption"><%=ViewData("olaPassword")%></div>
                <div class="xW_DivTextBox">
                    <input type="password" id="otbSrvUsrPwd"
                        onkeypress="W_DATxKeyEnter(event.keyCode,event.which,'oimRefreshDB')" />
                </div>

                <div class="xW_DivCaption"><%=ViewData("olaDBName")%></div>
                <div class="xW_DivTextBox">
                    <select id="ocbDBName" class="xW_ComboBox"></select>
                    <img alt="" src="<%=Url.Content("~/Content/img/AdaLoginSetting/gear_green.png") %>" 
                        onclick="W_FRMxDBRefresh('Cmp')" id="oimRefreshDB" 
                        class="xW_RefreshDB" />
                </div>

                <div>
                    <input type="button" 
                        value='<%=ViewData("olaNext")%>' 
                        onclick="W_SHWxUsrCfg()"
                         class="xW_BtnNext"/>
                </div>
                <div>
                    <input type="button" 
                        value='<%=ViewData("olaBack")%>' onclick="W_SHWxFirstPage()" 
                        class="xW_BtnBack"/>
                </div>
            </div>
        </fieldset>
    </div>

    <!-- User -->
    <div id="odiUsr" class="xW_DivSizeHead">
        <fieldset class="xCN_AllBackgroundColor xW_GroupSetting">
            <legend><%=ViewData("olaUser")%></legend>
            <div class="xW_DivSizeData">                
                <div class="xW_DivCaption"><%=ViewData("olaUserName")%></div>
                <div class="xW_DivTextBox">
                    <input type="text" id="otbUsrPosCode"
                        onkeypress="W_DATxKeyEnter(event.keyCode,event.which,'otbUsrPosPwd')" />
                </div>

                <div class="xW_DivCaption"><%=ViewData("olaPassword")%></div>
                <div class="xW_DivTextBox">
                    <input type="password" id="otbUsrPosPwd"
                        onkeypress="W_DATxNoUsrPwdEnter(event.keyCode,event.which)" />
                </div>

                <div class="xW_DivFooter">
                    <div>
                        <input type="button" 
                            value='<%=ViewData("olaNext")%>' 
                            onclick="W_PRCxCheckUser()" 
                            class="xW_BtnNext"/>
                    </div>
                    <div>
                        <input type="button" 
                            value='<%=ViewData("olaBack")%>' 
                            onclick="W_SHWxDBCfg()" 
                            class="xW_BtnBack"/>
                    </div>
                </div>
                <div class="xW_DivMessage">
	                <label id="olaShowDes"></label>
	            </div>                
            </div>
        </fieldset>
    </div>

    <!-- Company & Branch -->
    <div id="odiCmp" class="xW_DivSizeHead">
        <fieldset class="xCN_AllBackgroundColor xW_GroupSetting">     
            <legend><%=ViewData("olaComp")%></legend>
            <div class="xW_DivSizeData">     
                <input id="otbCmpCode" type="hidden" />
                <div class="xW_DivCaption"><%=ViewData("olaCompany")%></div>
                <div class="xW_DivTextBox">
                    <input type="text" id='otbCmpName'
                        onkeypress="W_DATxKeyEnter(event.keyCode,event.which,'ocbBch')" />
                </div>
                  
                <div class="xW_DivCaption"><%=ViewData("olaBranch")%></div>
                <div class="xW_DivTextBox">
                    <select id="ocbBch" class="xW_ComboBoxBch"></select>
                </div>

                <div class="xW_DivCaption"><%=ViewData("olaReg")%></div>
                <div class="xW_DivTextBox">
                    <input type="text" id='otbRegNum'
                        onkeypress="W_DATxLoginWeb(event.keyCode,event.which)" />
                </div>

                <div class="xW_DivFooter">
                    <div>
                        <input id="ocmNextCmp" type="button" 
                            value='<%=ViewData("olaFinish")%>' 
                            class="xW_BtnNext" onclick='W_FRMxLoginWeb("Cmp")' />
                    </div> 
                    <div>
                        <input type="button" 
                            onclick="W_SHWxUsrCfg()" 
                            value='<%=ViewData("olaBack")%>' 
                            class="xW_BtnBack"/>
                    </div>
                </div>
                <div class="xW_DivMessage">
	                <label id="olaMsgErr"></label>
	            </div>
            </div>
        </fieldset>
    </div>

    <!-- Code For Setting Branch -->
    <div id="odiSettingCode" class="xW_DivSizeHead">
        <fieldset class="xCN_AllBackgroundColor xW_GroupSetting">     
            <legend><%=ViewData("olaSettingCode")%></legend>
            <div class="xW_DivSizeData">     
                <div class="xW_DivCaption"><%=ViewData("olaCode")%></div>
                <div class="xW_DivTextBox">
                    <input type="text" id='otbSettingCode'
                        onkeypress="W_DATxNextPage(event.keyCode,event.which)" />
                </div>
                
                <div class="xW_DivMessage"><label id='olaMsgSetCode'></label></div>
                <div class="xW_DivFooter">
                    <div>
                        <input type="button" 
                            value='<%=ViewData("olaNext")%>' 
                            class="xW_BtnNext" onclick='W_CHKxSettingCode()' />
                    </div> 
                    <div>
                        <input type="button" 
                            onclick="W_SHWxNextPage(-3)" 
                            value='<%=ViewData("olaBack")%>' 
                            class="xW_BtnBack"/>
                    </div>
                </div>
            </div>
        </fieldset>
    </div>

    <!-- Company & Branch for Setting Branch -->
    <div id="odiSetBch" class="xW_DivSizeHead">
        <fieldset class="xCN_AllBackgroundColor xW_GroupSetting">     
            <legend><%=ViewData("olaComp")%></legend>
            <div class="xW_DivSizeData">     
                <div class="xW_DivCaption"><%=ViewData("olaCompany")%></div>
                <!--<div class="xW_DivTextBox">
                    <select id="ocbCmp4Bch" class="xW_ComboBoxBch" onchange='W_CHExChangeCmp()'></select>
                </div>-->
                <input type="hidden" id='otbCmpCode4Bch' />
                <div class="xW_DivTextBox">
                    <input type="text" id='otbCmp4Bch'
                        onkeypress="W_DATxKeyEnter(event.keyCode,event.which,'ocbBch4Bch')" />
                </div>

                <div class="xW_DivCaption"><%=ViewData("olaBranch")%></div>
                <div class="xW_DivTextBox">
                    <select id="ocbBch4Bch" class="xW_ComboBoxBch"></select>
                </div>

                <div class="xW_DivCaption"><%=ViewData("olaReg")%></div>
                <div class="xW_DivTextBox">
                    <input type="text" id='otbRegNum4Bch'
                        onkeypress="W_DATxNextPage(event.keyCode,event.which)" />
                </div>
                
                <div class="xW_DivMessage"><label id='olaMsgCmp4Bch'>Chuck</label></div>
                <div class="xW_DivFooter">
                    <div>
                        <input type="button" 
                            value='<%=ViewData("olaNext")%>' 
                            class="xW_BtnNext" onclick='W_SETxStaBtnNext("odiSetBch");W_SHWxNextPage(3);' />
                    </div> 
                    <div>
                        <input type="button" 
                            onclick="W_SHWxNextPage(1)" 
                            value='<%=ViewData("olaBack")%>' 
                            class="xW_BtnBack"/>
                    </div>
                </div>
            </div>

        </fieldset>
    </div>

    <!-- Connection For Branch Setting -->
    <div id="odiDB4Bch" class="xW_DivSizeHead">
        <fieldset class="xCN_AllBackgroundColor xW_GroupSetting">
            <legend><%=ViewData("olaDBName")%></legend>
            <div class="xW_DivSizeData">                
                <div class="xW_DivCaption"><%=ViewData("olaSrvName")%></div>
                <div class="xW_DivTextBox">
                    <input type="text" id="otbSrvName4Bch"
                        onkeypress="W_DATxKeyEnter(event.keyCode,event.which,'otbSrvUsr4Bch')" />
                </div>

                <div class="xW_DivCaption"><%=ViewData("olaUserCode")%></div>
                <div class="xW_DivTextBox">
                    <input type="text" id="otbSrvUsr4Bch"
                        onkeypress="W_DATxKeyEnter(event.keyCode,event.which,'otbSrvUsrPwd4Bch')" />
                </div>

                <div class="xW_DivCaption"><%=ViewData("olaPassword")%></div>
                <div class="xW_DivTextBox">
                    <input type="password" id="otbSrvUsrPwd4Bch"
                        onkeypress="W_DATxKeyEnter(event.keyCode,event.which,'oimRefreshDB')" />
                </div>

                <div class="xW_DivCaption"><%=ViewData("olaDBName")%></div>
                <div class="xW_DivTextBox">
                    <select id="ocbDBName4Bch" class="xW_ComboBox"></select>
                    <img alt="" src="<%=Url.Content("~/Content/img/AdaLoginSetting/gear_green.png") %>" 
                        onclick="W_FRMxDBRefresh('Bch')" id="oimRefreshDB4Bch" 
                        class="xW_RefreshDB" />
                </div>

                <div class="xW_DivMessage"><label id="olaMsgDB4Bch"></label></div>
                <div>
                    <input type="button" 
                        value='<%=ViewData("olaNext")%>' 
                        onclick='W_SETxStaBtnNext("odiDB4Bch");W_SHWxNextPage(4)'
                         class="xW_BtnNext"/>
                </div>
                <div>
                    <input type="button" 
                        value='<%=ViewData("olaBack")%>' onclick="W_SHWxNextPage(2)" 
                        class="xW_BtnBack"/>
                </div>                
            </div>
        </fieldset>
    </div>

    <!-- User for Setting Branch -->
    <div id="odiUsr4Bch" class="xW_DivSizeHead">
        <fieldset class="xCN_AllBackgroundColor xW_GroupSetting">     
            <legend><%=ViewData("olaUser")%></legend>
            <div class="xW_DivSizeData">  
                <div class="xW_DivCaption"><%=ViewData("olaUserName")%></div>
                <div class="xW_DivTextBox">
                    <input type="text" id="otbUsrCode4Bch"
                        onkeypress="W_DATxKeyEnter(event.keyCode,event.which,'otbUsrPwd4Bch')" />
                </div>

                <div class="xW_DivCaption"><%=ViewData("olaPassword")%></div>
                <div class="xW_DivTextBox">
                    <input type="password" id="otbUsrPwd4Bch"
                        onkeypress="W_ENTxUsrPwd4Bch(event.keyCode,event.which)" />
                </div>

                <div class="xW_DivMessage"><label id="olaMsgUsr4Bch"></label></div>
                <div class="xW_DivFooter">
                    <div>
                        <input type="button" 
                            value='<%=ViewData("olaFinish")%>' 
                            class="xW_BtnNext" onclick='W_CHKxHaveUser()' />
                    </div> 
                    <div>
                        <input type="button" 
                            onclick="W_SHWxNextPage(3)" 
                            value='<%=ViewData("olaBack")%>' 
                            class="xW_BtnBack"/>
                    </div>
                </div>                 
            </div>
        </fieldset>
    </div>

</div>

<script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J010_ShowTabData.js") %>"></script>
<script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J015_UIBrowse.js") %>"></script>
<script type="text/javascript">
    //### ตัวแปรกลาง ###//
    var tW_CmpOrBch = "0";
    var tW_FirstSetBch = "Y";
    var tW_StaBtnNext = '';

    function W_SETxIniatial() {
        J010_SHWxTabData(0, 'odiOpt', 'odiDB', 'odiUsr', 'odiCmp', 'odiSettingCode', 'odiSetBch', 'odiDB4Bch', 'odiUsr4Bch');
        $("#ocmBackDB").attr("disabled", "disabled");
        J002_SETxReadOnly('otbCmpName', true);
        J002_SETxReadOnly('otbCmp4Bch', true);
        W_CHKxOption('0', 'ordCmp', 'ordBch');//กำหนดเลือกการทำงาน *CH 01-03-2013
    }
    //หน้าแรกสุด *CH 01-03-2013
    function W_SHWxNextPage(pnPage) {
        switch (tW_CmpOrBch) {
            case "0":
                J010_SHWxTabData(pnPage, 'odiOpt', 'odiDB', 'odiUsr', 'odiCmp', 'odiSettingCode', 'odiSetBch', 'odiDB4Bch', 'odiUsr4Bch');
                break;
            case "1":
                //ไม่จำเป็นต้องเอาข้อมูลบริษัททั้งหมดแล้ว *CH 04-03-2013
                //if (tW_FirstSetBch == "Y") { tW_FirstSetBch = 'N'; W_GETxCmpData(); }
                W_SHWxNextPage4Bch(pnPage);
                break;
        }
    }
    //เปิดหน้าถัดไป
    function W_SHWxNextPage4Bch(pnPage) {
        var tMsg = '';
        switch (tW_StaBtnNext.toUpperCase()) {
            case "odiSetBch".toUpperCase():
                //ตรวจสอบว่ามีข้อมูลว่าหรือไม่
                tW_StaBtnNext = '';
                //if (!J015_CHKbValNull('ocbCmp4Bch', 'ocbBch4Bch')) {
                if (!J015_CHKbValNull('otbCmp4Bch', 'ocbBch4Bch')) {
                    tMsg = '<%=ViewData("olaPlsChose")%>' + '<%=ViewData("olaComp")%>';
                    $('#olaMsgCmp4Bch').html(tMsg);
                    return;
                }
                W_GETxConnection();
                break;
            case "odiDB4Bch".toUpperCase():
                tW_StaBtnNext = '';
                if (!J015_CHKbValNull('otbSrvName4Bch', 'otbSrvUsr4Bch', 'otbSrvUsrPwd4Bch', 'ocbDBName4Bch')) {
                    tMsg = '<%=ViewData("olaPlsChose")%>' + '<%=ViewData("olaDBName")%>';
                    $('#olaMsgDB4Bch').html(tMsg);
                    return;
                }                
                break;
        }
        
        var nPage = 3 + pnPage;
        J010_SHWxTabData(nPage, 'odiOpt', 'odiDB', 'odiUsr', 'odiCmp', 'odiSettingCode', 'odiSetBch', 'odiDB4Bch', 'odiUsr4Bch');
        
        //Focus Object
        switch (pnPage) {
            case 1: $('#otbSettingCode').select(); break;
            case 2: $('#otbRegNum4Bch').select(); break;
            case 3: $('#otbSrvName4Bch').select(); break;
            case 4: $('#otbUsrCode4Bch').select(); break;
        }
    }
    //ตั้งสถานะว่าปุ่มไหนทำงานอยู่
    function W_SETxStaBtnNext(ptSta) {
        tW_StaBtnNext = ptSta;
    }
    //ไปหน้ากำหนดฐานข้อมูล ของการเพิ่มบริษัท
    function W_SHWxDBCfg() {
        J010_SHWxTabData(1, 'odiOpt', 'odiDB', 'odiUsr', 'odiCmp', 'odiSettingCode', 'odiSetBch', 'odiDB4Bch', 'odiUsr4Bch');
    }
    function W_SHWxUsrCfg() {
        if (($('#otbSrvName').val() != "") && ($('#otbSrvUsrCode').val() != "") &&
            ($('#otbSrvUsrPwd').val() != "") && ($('#ocbDBName').val() != "")) {
            J010_SHWxTabData(2, 'odiOpt', 'odiDB', 'odiUsr', 'odiCmp', 'odiSettingCode', 'odiSetBch', 'odiDB4Bch', 'odiUsr4Bch');
        }
    }
    function W_SHWxFirstPage() {
        J010_SHWxTabData(0, 'odiOpt', 'odiDB', 'odiUsr', 'odiCmp', 'odiSettingCode', 'odiSetBch', 'odiDB4Bch', 'odiUsr4Bch');
    }
    function W_SHWxCmpCfg() {
        J010_SHWxTabData(3, 'odiOpt', 'odiDB', 'odiUsr', 'odiCmp', 'odiSettingCode', 'odiSetBch', 'odiDB4Bch', 'odiUsr4Bch');
        //$("#ocmNextCmp").attr("disabled", "disabled");
    }

    function W_GEToXMLHttpRequest() {
        try {
            var oReturn;
            if (window.ActiveXObject) {
                oReturn = new ActiveXObject("Microsoft.XMLHTTP");
            }
            else if (window.XMLHttpRequest) {
                oReturn = new XMLHttpRequest();
            }
            return oReturn;
        }
        catch (ex) {
            alert(ex.description);
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
            var oXmlHttp = W_GEToXMLHttpRequest();
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
        } catch (ex) {
            alert(ex.description);
            return 0;
        }
    }
    //แสดง Connection
    function W_GETxConnection() {
        var tUrl = '<%= Url.Action("C_GETtBchCon", "cvcLogin") %>';  //+ '?' + tPostData;
        var tPostData = 'ptCmpCode=' + $('#otbCmpCode4Bch').val(); //$('#ocbCmp4Bch').val();
        tPostData += '&ptBchCode=' + $('#ocbBch4Bch').val();
        var oXmlHttp = W_GEToXMLHttpRequest();
        oXmlHttp.open('post', encodeURI(tUrl), false);
        oXmlHttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        oXmlHttp.send(tPostData);
        var tResult = oXmlHttp.responseText;
        if (tResult.split('|')[0] == '0') {
            var aCon = tResult.split('|');
            $('#otbSrvName4Bch').val(aCon[1]);
            $('#otbSrvUsr4Bch').val(aCon[2]);
            $('#otbSrvUsrPwd4Bch').val(aCon[3]);

            var oDB = document.getElementById("ocbDBName4Bch");
            oDB.options.length = 0;
            oDB.add(new Option(aCon[4], aCon[4]), null);
        } else {
            alert(tResult.split('|')[1]);
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
            var oXmlHttp = W_GEToXMLHttpRequest();
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

    function W_DATxKeyEnter(ptKeyCode, ptWhich, ptObjName) {
        var tKey = ptKeyCode;
        if (ptWhich != null) { tKey = ptWhich; }
        if (tKey == 13) {
            $('#' + ptObjName).select();
        }
    }

    function W_DATxNoUsrPwdEnter(ptKeyCode, ptWhich) {
        var tKey = ptKeyCode;
        if (ptWhich != null) { tKey = ptWhich; }
        if (tKey == 13) {
            if (W_CHKbUserAbreast()) { W_SHWxCmpCfg(); }
        }
    }
    function W_PRCxCheckUser() {
        if (W_CHKbUserAbreast()) { W_SHWxCmpCfg(); }
    }

    function W_DATxLoginWeb(ptKeyCode, ptWhich) {
        var tKey = ptKeyCode;
        if (ptWhich != null) { tKey = ptWhich; }
        if (tKey == 13) { W_FRMxLoginWeb('Cmp'); }
    }
    //For Textbox ReqNum4Bch
    function W_DATxNextPage(ptKeyCode, ptWhich) {
        var tKey = ptKeyCode;
        if (ptWhich != null) { tKey = ptWhich; }
        if (tKey == 13) { W_SETxStaBtnNext("odiSetBch"); W_SHWxNextPage(2); }
    }
    function W_ENTxUsrPwd4Bch(ptKeyCode, ptWhich) {
        var tKey = ptKeyCode;
        if (ptWhich != null) { tKey = ptWhich; }
        if (tKey == 13) { W_CHKxHaveUser(); }
    }
    //Check User For Setting Branch
    function W_CHKxHaveUser() {
        try {
            var tPostData = 'ptUsrCode=' + $('#otbUsrCode4Bch').val();
            tPostData += "&ptUsrPwd=" + $('#otbUsrPwd4Bch').val();
            tPostData += '&ptServer=' + $('#otbSrvName4Bch').val();
            tPostData += "&ptUser=" + $('#otbSrvUsr4Bch').val();
            tPostData += "&ptPwd=" + $('#otbSrvUsrPwd4Bch').val();
            tPostData += "&ptDBName=" + $('#ocbDBName4Bch').val();

            var tUrl = '<%= Url.Action("C_CHKtHaveUser", "cvcLogin") %>'; //ตรวจสอบว่ามีผู้ใช้อยู่จิงๆหรือไม่
            var oXmlHttp = W_GEToXMLHttpRequest();
            oXmlHttp.open('post', encodeURI(tUrl), false);
            oXmlHttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            oXmlHttp.send(tPostData);
            var tResult = oXmlHttp.responseText;
            if (tResult.split("|")[0] == "1") {
                W_FRMxLoginWeb('Bch');
            } else {
                $('#olaMsgUsr4Bch').html(tResult.split('|')[1]);
            }
        } catch (ex) {
            alert(ex.Message);
        }
    }
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

            var tUrl = '<%= Url.Action("C_SETtAdaDB", "cvcLogin") %>'; //บันทึก Config การใช้งาน WebAbreast
            var oXmlHttp = W_GEToXMLHttpRequest();
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

    //Option AddCompany Vs SetBranch
    function W_CHKxOption(pnPosition, ptObj1, ptObj2) {
        var aObjName = [ptObj1, ptObj2];
        //var tObjName1;
        //var tObjName2;
        for (nI = 0; nI < aObjName.length; nI++) {
            if (nI == pnPosition) {
                //tObjName1 = aObjName[nI];
                //alert('aObjName[' + nI + '] : ' + tObjName1);
                tW_CmpOrBch = $("#" + aObjName[nI]).val(); //0 : Cmp, 1 : Bch
                $("#" + aObjName[nI]).attr('checked', true);
            } else {
                //tObjName2 = aObjName[nI];
                //alert('aObjName[' + nI + '] : ' + tObjName2);
                $("#" + aObjName[nI]).attr('checked', false);
            }
        }
        //alert(tObjName1 + '/' + tObjName2);
        //tW_CmpOrBch = $("#" + tObjName1).val(); //0 : Cmp, 1 : Bch
        //$("#" + tObjName1).attr('checked', true);
        //$("#" + tObjName2).attr('checked', false);
    }

    //ไม่จำเป็นต้องเอาข้อมูลบริษัททั้งหมดแล้ว *CH 04-03-2013
    //รายการชื่อบริษัท
//    function W_GETxCmpData() {
//        try {
//            var tUrl = '<%= Url.Action("C_GETtCmpData", "cvcLogin") %>';  //+ '?' + tPostData;
//            var oXmlHttp = W_GEToXMLHttpRequest();
//            oXmlHttp.open('post', encodeURI(tUrl), false);
//            oXmlHttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
//            oXmlHttp.send('');
//            var tResult = oXmlHttp.responseText;
//            if (tResult.split("|")[0] == "0") {
//                var aVal = tResult.split('|');
//                var tCmp = aVal[1];
//                $('#olaMsgCmp4Bch').html('');

//                var oBch = document.getElementById("ocbBch4Bch");
//                oBch.options.length = 0;
//                oBch.add(new Option('', ''), null);
//                var oCmp = document.getElementById("ocbCmp4Bch");
//                oCmp.options.length = 0;
//                var aCmp = tCmp.split(',');
//                oCmp.add(new Option('', ''), null);
//                for (i = 0; i < aCmp.length; i++) {
//                    oCmp.add(new Option(aCmp[i].split(':')[1], aCmp[i].split(':')[0]), null);
//                }
//                return;
//            } else {
//                $('#olaMsgCmp4Bch').html(tResult.split('|')[1]);
//                return;
//            }
//        } catch (ex) {
//            alert(ex.description);
//            return 0;
//        }
//    }

//    function W_CHExChangeCmp() {
//        try {
//            var tCmp = $('#ocbCmp4Bch').val();
//            if (tCmp != '') {
//                W_GETxBchData(tCmp);
//            } else {
//                var oBch = document.getElementById("ocbBch4Bch");
//                oBch.options.length = 0;
//                oBch.add(new Option('', ''), null);
//            }
//        } catch (ex) {
//        }
//    }
    function W_GETxBchData(ptCmpCode) {
        try {
            var tPostData = 'ptCmpCode=' + ptCmpCode;
            var tUrl = '<%= Url.Action("C_GETtBchData", "cvcLogin") %>';  //+ '?' + tPostData;
            var oXmlHttp = W_GEToXMLHttpRequest();
            oXmlHttp.open('post', encodeURI(tUrl), false);
            oXmlHttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            oXmlHttp.send(tPostData);
            var tResult = oXmlHttp.responseText;
            if (tResult.split("|")[0] == "0") {
                var tBch = tResult.split('|')[1];
                $('#olaMsgCmp4Bch').html('');

                var oBch = document.getElementById("ocbBch4Bch");
                oBch.options.length = 0;
                var aBch = tBch.split(',');
                for (i = 0; i < aBch.length; i++) {
                    oBch.add(new Option(aBch[i].split(':')[1], aBch[i].split(':')[0]), null);
                }
            } else {
                $('#olaMsgCmp4Bch').html(tResult.split('|')[1]);
                return;
            }
        } catch (ex) {
            alert(ex.description);
            return 0;
        }
    }

    function W_CHKxSettingCode() {
        try {
            //ตรวจสอบว่ารหัสที่ได้มีอยู่จริงหรือไม่ เป็นของบริษัทไหน
            tW_StaBtnNext = '';
            if (!J015_CHKbValNull('otbSettingCode')) {
                tMsg = '<%=ViewData("olaPlsInput")%>' + '<%=ViewData("olaSettingCode")%>';
                $('#olaMsgSetCode').html(tMsg);
                return;
            } else { $('#olaMsgSetCode').html(''); }

            //ดูว่าเป็นของบริษัทไหน
            var tPostData = 'ptRefSetCode=' + $('#otbSettingCode').val();
            var tUrl = '<%= Url.Action("C_CHKtAppvSetBch", "cvcLogin") %>';  //RETURN COMPANY & BRANCH
            var oXmlHttp = W_GEToXMLHttpRequest();
            oXmlHttp.open('post', encodeURI(tUrl), false);
            oXmlHttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            oXmlHttp.send(tPostData);
            var tResult = oXmlHttp.responseText;
            if (tResult.split("|")[0] == "1") {//มีข้อมูล สามารถใช้งานได้
                var tCmp = tResult.split('|')[1];
                $('#otbCmpCode4Bch').val(tCmp.split(',')[0]);
                $('#otbCmp4Bch').val(tCmp.split(',')[1]);
                W_GETxBchData($('#otbCmpCode4Bch').val());
            } else {
                $('#olaMsgSetCode').html(tResult.split('|')[1]);
                return;
            }

            //ไปหน้าถัดไป
            $('#otbCmp4Bch').select();
            W_SHWxNextPage(2);
        } catch (ex) {

        }
    }
</script>