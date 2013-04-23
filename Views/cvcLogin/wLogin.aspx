<%@ Page Language="VB" Inherits="System.Web.Mvc.ViewPage" %>

<%@ Import Namespace="System.Xml" %>

<!DOCTYPE html>

<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tLastLang As String = Session("tVB_LastLang")
        If tLastLang Is Nothing AndAlso tLastLang = "" Then
            tLastLang ="EN"
        End If
        AdaWebPos.My.Resources.resLCcvcLogin.Culture = New System.Globalization.CultureInfo(tLastLang)
        ViewData("olaComment") = AdaWebPos.My.Resources.resLCcvcLogin.olaComment
        ViewData("olaCopyRight") = AdaWebPos.My.Resources.resLCcvcLogin.olaCopyRight
        ViewData("olaForgetPassword") = AdaWebPos.My.Resources.resLCcvcLogin.olaForgetPassword
        ViewData("olaLanguage") = AdaWebPos.My.Resources.resLCcvcLogin.olaLanguage
        ViewData("olaLogin") = AdaWebPos.My.Resources.resLCcvcLogin.olaLogin
        ViewData("olaPassword") = AdaWebPos.My.Resources.resLCcvcLogin.olaPassword
        ViewData("olaUnauthorize") = AdaWebPos.My.Resources.resLCcvcLogin.olaUnauthorize
        ViewData("olaUserName") = AdaWebPos.My.Resources.resLCcvcLogin.olaUserName
        ViewData("olaWelcome") = AdaWebPos.My.Resources.resLCcvcLogin.olaWelcome
        ViewData("olaCompany") = AdaWebPos.My.Resources.resLCcvcLogin.olaCompany
        ViewData("olaBranch") = AdaWebPos.My.Resources.resLCcvcLogin.olaBranch
        ViewData("olaSetting") = AdaWebPos.My.Resources.resLCcvcLogin.olaSetting
        ViewData("olaSrvName") = AdaWebPos.My.Resources.resLCcvcLogin.olaSrvName
        ViewData("olaUserCode") = AdaWebPos.My.Resources.resLCcvcLogin.olaUserCode
        ViewData("olaPassword") = AdaWebPos.My.Resources.resLCcvcLogin.olaPassword
        ViewData("olaDBName") = AdaWebPos.My.Resources.resLCcvcLogin.olaDBName
        ViewData("olaUser") = AdaWebPos.My.Resources.resLCcvcLogin.olaUser
        ViewData("olaComp") = AdaWebPos.My.Resources.resLCcvcLogin.olaComp
        ViewData("olaReg") = AdaWebPos.My.Resources.resLCcvcLogin.olaReg
        ViewData("olaAddCmp") = AdaWebPos.My.Resources.resLCcvcLogin.olaAddCmp
        ViewData("olaSetBch") = AdaWebPos.My.Resources.resLCcvcLogin.olaSetBch
        ViewData("olaSetType") = AdaWebPos.My.Resources.resLCcvcLogin.olaSetType
        ViewData("olaPlsChose") = AdaWebPos.My.Resources.resLCcvcLogin.olaPlsChose
        ViewData("olaSettingCode") = AdaWebPos.My.Resources.resLCcvcLogin.olaSettingCode
        ViewData("olaCode") = AdaWebPos.My.Resources.resLCcvcLogin.olaCode
        ViewData("olaPlsInput") = AdaWebPos.My.Resources.resLCcvcLogin.olaPlsInput
        
        ViewData("olaNext") = AdaWebPos.My.Resources.resLCcvcLogin.olaNext
        ViewData("olaFinish") = AdaWebPos.My.Resources.resLCcvcLogin.olaFinish
        ViewData("olaBack") = AdaWebPos.My.Resources.resLCcvcLogin.olaBack
        Session("tVB_LastLang") = tLastLang
        
        W_GETxDataLanguage()
        
    End Sub
    Sub W_GETxDataLanguage()
        Dim tPath As String = AppDomain.CurrentDomain.BaseDirectory & "Content\AdaFiles\AdaLanguage.xml"
        Dim tValue As String = ""
        Dim tLang As String = ""
        Dim oXMLDoc As New XmlDataDocument
        oXMLDoc.Load(tPath)
        Session("tPathLang") = tPath
        For Each oEle As XmlElement In oXMLDoc.DocumentElement.ChildNodes
            tLang = ""
            For Each oFiled As XmlElement In oEle.ChildNodes
                tLang &= "|" & oFiled.InnerText
            Next
            tLang = Mid(tLang, 2)
            tValue &= "," & tLang
        Next
        tValue = Mid(tValue, 2)
        'Session("ValueLange") = tValue
        'ViewData("SelectLang") = tValue       
        
        Dim aValue = tValue.Split(",")
        For nItem = 0 To aValue.Length - 1
            Select Case UCase(aValue(nItem).Split("|")(0))
                Case UCase("TH")
                    ViewData("TH") = UCase("TH")
                    ViewData("THValue") = aValue(nItem).Split("|")(1)
                Case UCase("EN")
                    ViewData("EN") = UCase("EN")
                    ViewData("ENValue") = aValue(nItem).Split("|")(1)
            End Select
        Next
    End Sub
</script>

<html class="xW_SizePage">
<head runat="server">
    <title>Login</title>
    <link type="text/css" rel="Stylesheet" href="../../Content/AdaCss/Global/FCS_CNCenter.css" />
    <link type="text/css" rel="Stylesheet" href="../../Content/AdaCss/Local/FCS_cvcLoginC.css" />
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/jquery-1.3.2.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J003_SplashDialog.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J002_General.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J011_ComboBoxLibrary.js") %>"></script>

    <link href="<%=Url.Content("~/Content/UI/south-street/jquery-ui-1.8.16.custom.css") %>" rel="stylesheet" type="text/css" />
    <script src="<%=Url.Content("~/Scripts/UI/jquery-1.6.2.min.js") %>" type="text/javascript"></script>
    <script type="text/javascript">
        var $ui = jQuery.noConflict();
    </script>
    <script src="<%=Url.Content("~/Scripts/UI/jquery-ui-1.8.16.custom.min.js") %>" type="text/javascript"></script> 
</head>
<body class="xW_Body xCN_AllFontFamily xCN_AllFontSize xW_SizePage">    
    <form id="ofoMain" name="ofoMain" action="<%=Url.Action("Index","cvcLogin") %>" method="post" class="xW_wrapper">
	    <input type="hidden" id="otbPortWeb" name="otbPortWeb" />
	    <div class="xW_DivMainLogin" >
	        <div class="xW_DivLogo">
	            <img alt="" src="<%=Url.Content("~/Content/img/AdaLogin/AdaLogoWeb.png") %>" style="height:60px;" />
	        </div>
            
            <div class="xW_DivLanguage">
                <div class="xCN_DivTHLang">
                    <a href="javascript:void(0)" onclick="W_GETxLanguage('<%=ViewData("TH")%>')">  
                        <label style="margin-left:19px"><%=ViewData("THValue")%></label>
                    </a>
                </div>
                <div class="xCN_DivENLang">
                    <a href="javascript:void(0)" onclick="W_GETxLanguage('<%=ViewData("EN")%>')">  
                        <label style="margin-left:19px;"><%=ViewData("ENValue")%></label>
                    </a>
                </div>
            </div>
	        <div class="xW_DivFormLogin">
	            <div class="xW_DivFormLoginSub">
	                <%--<div class="xW_DivLanguageBar">
                        <div class="xCN_AllFontFamily xW_DivLabelLanguage">
                            <label><%=ViewData("olaLanguage")%></label>
                        </div>
                        <div class="xW_DivComboLanguage">
                            <select id="ocbLang" name="ocbLang" class="xW_SelectLanguage"  onchange="W_GETxLanguage()"> </select>
                        </div>
                    </div>--%>
                    <!-- ตำแหน่งเข้าสู่ระบบ -->
	                <!--<div class="xCN_AllBackgroundColorMenu xW_DivInputLogin">-->
                    <div class="xW_DivInputLogin">
    	                <div class="xW_DivInputLoginSub">
	                        <div class="xW_DivLabelWelcome"><%=ViewData("olaWelcome")%></div>
	                        <div class="xW_DivInput">
	                            <div class="xW_DivInputSub">
                                    <div class="xW_DivImgLogin">
                                        <div class="xW_DivUserName">
	                                        <div class="xCN_AllFontFamily xW_DivUserNameLabel">
	                                            <%=ViewData("olaUserName")%>
	                                        </div>
	                                        <div class="xW_DivUserNameTextBox">
	                                            <input type="text" maxlength="20" 
                                                    id="FTUsrCode" name="FTUsrCode" 
                                                    onkeypress="W_DATxNoEnter(event.keyCode,event.which);" 
                                                    class="xW_InputUserName" 
                                                    value='<%=ViewData("ovd_UserName")%>' />
	                                        </div>
	                                    </div>
                                        <div class="xW_DivPassword">
	                                        <div class="xCN_AllFontFamily xW_DivPasswordLabel">
	                                            <%=ViewData("olaPassword")%>
	                                        </div>
	                                        <div class="xW_DivPasswordTextBox">
	                                            <input type="password" maxlength="50" 
                                                    id="FTUsrPwd" name="FTUsrPwd" 
                                                    onkeypress="W_DATxNoPwdEnter(event.keyCode,event.which);" 
                                                    class="xW_InputPassword" 
                                                    value='<%=ViewData("ovd_UserPwd")%>'/>
	                                        </div>
	                                    </div>
                                        <div id="odiCompany" class="xW_DivUserName xCN_DivTabDisplay">
	                                        <div class="xCN_AllFontFamily xW_DivUserNameLabel">
	                                            <%=ViewData("olaCompany")%>
	                                        </div>
	                                        <div class="xW_DivUserNameTextBox">
	                                            <select id="ocbCompany" name="ocbCompany" 
                                                    class="xW_SelectLanguage"></select>
	                                        </div>
	                                    </div>
                                        <div id="odiBranch" class="xW_DivUserName xCN_DivTabDisplay">
	                                        <div class="xCN_AllFontFamily xW_DivUserNameLabel">
	                                            <%=ViewData("olaBranch")%>
	                                        </div>
	                                        <div class="xW_DivUserNameTextBox">
	                                            <select id="ocbBranch" name="ocbBranch" 
                                                    class="xW_SelectLanguage"></select>
	                                        </div>
	                                    </div>
                                    </div>	                                    
	                                
	                                <div class="xW_DivButtonLogin">
	                                    <input id="ocmSubmit" type="button" value="<%=ViewData("olaLogin") %>" onclick="J003_SHWxWaiting();submit();" />
	                                </div>
                                    <div class="xW_DivSetting">
                                        <label title='<%=ViewData("olaSetting")%>'><img alt="" src="<%=Url.Content("~/Content/img/AdaLoginSetting/gear_green.png") %>" onclick="W_SHWxOpenSetting()" style="height:20px;width:20px;" /></label>
                                    </div>
	                                <div class="xW_DivLinkForgetPassword">
	                                    <%--<a href="javascript:void(0);"><%=ViewData("olaForgetPassword")%></a>--%>
	                                    <%=ViewData("ShowDes")%>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="xW_DivUnauthorize">
	                                <%=ViewData("olaUnauthorize")%>
	                            <%--Path Lang : <%=Session("tPathLang")%>--%>
	                        </div>
	                        <div class="xW_DivComment">
	                            <%=ViewData("olaComment")%>
	                        </div>
	                    </div>
	                </div>
	            </div>	                
	            <div class="xW_DivCopyRight">
	                <%=ViewData("olaCopyRight")%>
                </div>
                <div class="xW_DivError">
                    <%=ViewData("error")%>
                </div>
	        </div>
        </div>
    </form>
    <!-- Login Setting -->
    <div id="odiLoginSetting" title='<%=ViewData("olaSetting")%>' class="xCN_DivTabDisplay">
        <div style="height:auto">
            <%Html.RenderPartial("uSetting\uLoginSetting")%>
        </div>
    </div>
    <div class="xW_Footer"></div>
    <script type="text/javascript">
        window.moveTo(0, 0);
        if (document.all) {
            top.window.resizeTo(screen.availWidth, screen.availHeight);
        }
        else if (document.layers || document.getElementById) {
            if (top.window.outerHeight < screen.availHeight || top.window.outerWidth < screen.availWidth) {
                top.window.outerHeight = screen.availHeight;
                top.window.outerWidth = screen.availWidth;
            }
        }
        window.onload = window_onload_Page;
        function window_onload_Page() {
            //W_SETxComboLang();
            var tStaShwCmp = '<%=ViewData("ovd_StaShwCmp")%>';
            var tStaShwBch = '<%=ViewData("ovd_StaShwBch")%>';
            if (tStaShwCmp == "0") {document.getElementById("FTUsrCode").select(); }
            tJ003_VirtualDirectory = '<%=Session("VirtualDirectory")%>'; //*CH 01-11-2012
            //////document.getElementById("loading").style.display = "none";
            //J003_DISxWaiting();

            //*RQ1207-053 GET Port //*CH 13-07-2012
            $('#otbPortWeb').val(window.location.port)

            $('#ocbCompany').val('');
            $('#ocbBranch').val(''); 
            switch (tStaShwCmp) {
                case "0": $('#odiCompany').addClass('xCN_DivTabDisplay'); break;
                case "1":
                    W_SETxDisableAll(true);
                    $('#odiCompany').removeClass('xCN_DivTabDisplay');
                    J011_SETxComboBox('ocbCompany', '<%=ViewData("ovd_CmpList")%>');
                    $('#ocmSubmit').select();
                    break;
            }
            switch (tStaShwBch) {
                case "0": $('#odiBranch').addClass('xCN_DivTabDisplay'); break;
                case "1":
                    W_SETxDisableAll(true);
                    W_SETxDiableCmp(true);
                    $('#odiBranch').removeClass('xCN_DivTabDisplay');
                    J011_SETxComboBox('ocbCompany', '<%=ViewData("ovd_CmpList")%>');
                    J011_SETxComboBox('ocbBranch', '<%=ViewData("ovd_BchList")%>');
                    $('#ocmSubmit').select();
                    break;
            }
            var tUrl = window.location;
            var tPort = window.location.port;
            var tHost = window.location.hostname;
            //alert(tUrl + '\n' + tPort + '\n' + tHost);
            if (tHost.split('.').length > 1) {
                var tSub = tHost.split('.')[0];
                //alert(tSub);
                //W_SETxCmpCode(tSub);
            }
        }

        function W_SETxCmpCode(ptSubName) {
            try {
                var oXmlHttp = J002_GEToXMLHttpRequest();
                var tDataTimeNow = J002_GETtTimeStamp();
                var tUrl = '<%=Url.Action("C_GETxCmpCodeBySubDomain","cvcLogin") %>' + "?ptSubName=" + ptSubName;
                oXmlHttp.open("GET", encodeURI(tUrl), false);
                oXmlHttp.send(null);
                oXmlHttp.responseText;
            } catch (ex) {

            }
        }

        var navName = navigator.appName;
        var brVer = navigator.userAgent; var brNum; var reg = new RegExp('/');
        function verNumIE() {
            var brVerId = brVer.indexOf('MSIE');
            brNum = brVer.substr(brVerId, 8);
        }

        function verNumOt() {
            var brVerId = brVer.search(reg);
            brNum = brVer.substring(brVerId + 1);
        }
        function setfocus() {
            var txtBox = document.getElementById("FTUsrCode");
            if (txtBox != null) {
                document.all.FTUsrCode.focus();
            }
        }

        function W_DATxNoEnter(ptKeyCode, ptWhich) {
            var tKey = ptKeyCode;
            if (ptWhich != null) { tKey = ptWhich; }
            if (tKey == 13) {
                //document.getElementById("FTUsrPwd").focus();
                //document.getElementById("FTUsrPwd").select();
                //document.getElementById("FTUsrPwd").select();
                //return !(window.event && window.event.keyCode == 13);
                $('#FTUsrPwd').select();
                return false;
            }
        }

        function W_DATxNoPwdEnter(ptKeyCode, ptWhich) {
            var tKey = ptKeyCode;
            if (ptWhich != null) { tKey = ptWhich; }
            if (tKey == 13) {
                var otbUsrCode = document.getElementById("FTUsrCode");
                var otbPwd = document.getElementById("FTUsrPwd");
                if (otbUsrCode != null && otbPwd != null) {
                    J003_SHWxWaiting();
                    //document.getElementById("loading").style.display = "block";
                    document.getElementById('ofoMain').submit();
                    //openwindow();
                }

            }
        }
//        function W_SETxComboLang() {
//            J011_SETxComboBox('ocbLang', '<%=Session("ValueLange")%>');
//            J011_SETxComboSelected('ocbLang', '<%=Session("tVB_LastLang")%>');
//        }
        function W_GETxLanguage(ptLang) {
            if (ptLang == '<%=Session("tVB_LastLang")%>') { return; }
            var tDate = J002_GETtTimeStamp();
            var nIndex = 1;//document.getElementById("ocbLang").selectedIndex;
            var tLang = ptLang;  //document.getElementById("ocbLang").options[nIndex].value;
            var tUrl = '<%=Url.Action("C_SETtLanguage","cvcLogin") %>' + "?ptLang=" + tLang + '&pnIndex=' + nIndex + '&ptDate=' + tDate;
            var oHTTP = J002_GEToXMLHttpRequest();
            oHTTP.open("GET", encodeURI(tUrl), false);
            oHTTP.send(null);
            var tReturn = oHTTP.responseText;
            window.location = window.location;
        }

        function W_SETxDisableAll(pbStatus) {
            J002_SETxReadOnly('FTUsrCode', pbStatus);
            J002_SETxReadOnly('FTUsrPwd', pbStatus);
        }
        function W_SETxDiableCmp(pbStatus) { J002_SETxReadOnly('ocbCompany', pbStatus); }

        //เปิดหน้าตั้งค่าการใช้งาน
        //function W_SHWxOpenSetting() {
        //    var tUrl = '<%=Url.Action("Index","cvcLoginSetting")%>';
        //    window.location = tUrl;
        //}

        //Login Setting //*CH 22-02-2013
        function W_SHWxOpenSetting() { W_SETxIniatial(); $ui('#odiLoginSetting').dialog('open'); }
        $ui("#odiLoginSetting").dialog({
            autoOpen: false,
            modal: true,
            resizable: false,
            height: "auto",
            width: "470px"
        });
    </script>
</body>
</html>