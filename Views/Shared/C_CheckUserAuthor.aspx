<%@ Page Title="" Language="VB"  Inherits="System.Web.Mvc.ViewPage(Of Adasoft.WebPos.Models.cmlTSysUser)" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Import Namespace="System.Resources" %>
<%@ Import Namespace="AdaWebPos" %>
<script runat="server">
    'Function C_GETxGetLabel(ByVal ptVauelKey As String) As String
     '   Dim tMessage As String = ""
      '  
       ' Select Case ptVauelKey
        '    Case "olaMessageShow1"
         '       Select Case Session("tVB_LastLang")
          '          Case "EN"
    '             tMessage = Adasoft.Abreast.StoreBack.My.Resources.resLCcvcUserLoginEN.olaMessageShow1 'User is't Authorize
            '        Case Else
             '           tMessage = Adasoft.Abreast.StoreBack.My.Resources.resLCcvcUserLoginTH.olaMessageShow1 'User is't Authorize
              '  End Select
               ' If(string.IsNullOrEmpty (tMessage)) then
                '    tMessage="คุณไม่มีสิทธ์เข้าใช้งาน5655"
                'end if
                
        '    Case "olaMessageShow2"
         '       Select Case Session("tVB_LastLang")
          '          Case "EN"
           '             tMessage = Adasoft.Abreast.StoreBack.My.Resources.resLCcvcUserLoginEN.olaMessageShow2 'Passwords is wrong!
            '        Case Else
             '           tMessage = Adasoft.Abreast.StoreBack.My.Resources.resLCcvcUserLoginTH.olaMessageShow2 'Passwords is wrong!
              '  End Select
               ' If(string.IsNullOrEmpty (tMessage)) then
                '    tMessage="รหัสผ่านไม่ถูกต้อง55"
                'end if
          '  Case "olaMessageShow3"
           '     Select Case Session("tVB_LastLang")
            '        Case "EN"
             '           tMessage = Adasoft.Abreast.StoreBack.My.Resources.resLCcvcUserLoginEN.olaMessageShow3  'Please key user code!
              '      Case Else
               '         tMessage = Adasoft.Abreast.StoreBack.My.Resources.resLCcvcUserLoginTH.olaMessageShow3  'Please key user code!
             '   End Select
              '  If(string.IsNullOrEmpty (tMessage)) then
               '     tMessage="กรุณากรอกรหัสผู้ใช้งาน77"
                'end if                
            'Case "olaMessageShow4"
             '   Select Case Session("tVB_LastLang")
              '      Case "EN"
               '         tMessage = Adasoft.Abreast.StoreBack.My.Resources.resLCcvcUserLoginEN.olaMessageShow4 'User is wrong , Please key user code!,agin
                '    Case Else
                 '       tMessage = Adasoft.Abreast.StoreBack.My.Resources.resLCcvcUserLoginTH.olaMessageShow4  'User is wrong , Please key user code!,agin
          '      End Select
           '     If(string.IsNullOrEmpty (tMessage)) then
            '        tMessage="รหัสผู้ใช้งานไม่ถูกต้อง"
             '   end if                   
         '   Case "olaTittle"
          '      Select Case Session("tVB_LastLang")
           '         Case "EN"
            '            tMessage = Adasoft.Abreast.StoreBack.My.Resources.resLCcvcUserLoginEN.olaTittle  'User is wrong , Please key user code!,agin
             '       Case Else
              '          tMessage = Adasoft.Abreast.StoreBack.My.Resources.resLCcvcUserLoginTH.olaTittle  'User is wrong , Please key user code!,agin
               ' End Select
                'If(string.IsNullOrEmpty (tMessage)) then
                 '   tMessage="ตรวจสอบการใช้งาน"
              '  end if   
  '          Case "olaUserCode"
   '             Select Case Session("tVB_LastLang")
    '                Case "EN"
     '                   tMessage = Adasoft.Abreast.StoreBack.My.Resources.resLCcvcUserLoginEN.olaNotAccess   'User :
      '              Case Else
       '                 tMessage = Adasoft.Abreast.StoreBack.My.Resources.resLCcvcUserLoginTH.olaUserCode   'User
        '        End Select
         '       If(string.IsNullOrEmpty (tMessage)) then
          '          tMessage="ชื่อผู้ใช้ :"
           '     end if   
      '      Case "olaPasswords"
       '         Select Case Session("tVB_LastLang")
        '            Case "EN"
         '               tMessage = Adasoft.Abreast.StoreBack.My.Resources.resLCcvcUserLoginEN.olaPasswords   'Passwords :
          '          Case Else
           '             tMessage = Adasoft.Abreast.StoreBack.My.Resources.resLCcvcUserLoginTH.olaPasswords   'Passwords
            '    End Select
             '   If(string.IsNullOrEmpty (tMessage)) then
              '      tMessage="รหัสผ่าน :"
               ' end if                   
       '     Case "ocmLogin"
        '        Select Case Session("tVB_LastLang")
         '           Case "EN"
          '              tMessage = Adasoft.Abreast.StoreBack.My.Resources.resLCcvcUserLoginEN.ocmLogin   'Login
           '         Case Else
            '            tMessage = Adasoft.Abreast.StoreBack.My.Resources.resLCcvcUserLoginTH.ocmLogin    'Login
             '   End Select
              '  If(string.IsNullOrEmpty (tMessage)) then
               '     tMessage="เข้าสู่ระบบ"
                'end if                  
         '   Case "ocmCancel"
        '        Select Case Session("tVB_LastLang")
          '          Case "EN"
           '             tMessage = Adasoft.Abreast.StoreBack.My.Resources.resLCcvcUserLoginEN.ocmCancel   'Cancel
            '        Case Else
             '           tMessage = Adasoft.Abreast.StoreBack.My.Resources.resLCcvcUserLoginTH.ocmCancel   'Cancel
              '  End Select
               ' If(string.IsNullOrEmpty (tMessage)) then
                '    tMessage="ยกเลิก"
               ' end if                  
      '  End Select
       ' Return tMessage
   ' End Function
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        If Session("tVB_LastLang") Is Nothing AndAlso Session("tVB_LastLang") = "" Then
            AdaWebPos.My.Resources.resLCcvcUserLogin.Culture = New System.Globalization.CultureInfo("EN")
        Else
            AdaWebPos.My.Resources.resLCcvcUserLogin.Culture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
        End If
        
        ViewData("Language") = Session("tVB_LastLang")
        ViewData("olaTittle") = AdaWebPos.My.Resources.resLCcvcUserLogin.olaTittle
        ViewData("olaUserCode") = AdaWebPos.My.Resources.resLCcvcUserLogin.olaUserCode
        ViewData("olaPasswords") = AdaWebPos.My.Resources.resLCcvcUserLogin.olaPasswords
        ViewData("olaLogin") = AdaWebPos.My.Resources.resLCcvcUserLogin.olaLogin
        ViewData("olaCancel") = AdaWebPos.My.Resources.resLCcvcUserLogin.olaCancel
        ViewData("olaCaption") = AdaWebPos.My.Resources.resLCcvcUserLogin.olaCaption

    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title ><%=ViewData("olaTittle")%></title>
    <link rel="Stylesheet" type="text/css" href="<%=Url.Content("~/Content/AdaCss/Local/FCS_cvcUserAuthorize.css") %>"/>
    <link rel="Stylesheet" type="text/css" href="<%=Url.Content("~/Content/AdaCss/Global/FCS_CNCenter.css") %>"/>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J002_General.js") %>"></script>
    <script type="text/javascript">
        var tW_TypeAuthor = '<%=ViewData("TypeAuthor") %>';
        function GetPassedValue(a) {
            returnValue = a;
        }

        function ocmSubmit_onclick(ptUser, ptPass, ptDate) {
            if (ptUser == '') {
                return;
            }
            var tUtl = '<%=Url.Action("C_CheckUserAuthorCon","cvcUserLogin") %>';
            tUtl += "?ptUser=" + ptUser + "&ptPass=" + ptPass + "&ptTypeAuthor=" + tW_TypeAuthor + "&ptDate=" + ptDate;
            var ReturnedValue = showModalDialog(tUtl , "Passing Data", "dialogWidth:300px; dialogHeight:175px; status:no; center:yes;titlebar =0; scrollbars=no");
            GetPassedValue(ReturnedValue);
            window.close();
        }

        function ocmCancel_onclick() {
            GetPassedValue('0');
            window.close();
        }
    </script>
    <script type="text/javascript">
        function W_SETxObjSETFocus(ptObjName) {
            try {
                var tKey = window.event.keyCode;
                if (event.which != null) {tKey = window.event.which; }
                if (tKey == 13) {
                    document.getElementById(ptObjName).focus();
                    return !(window.event && window.event.keyCode == 13);
                }
            }
            catch (ex) {
                J002_SHWxMsgError("W_SETxObjSETFocus", ex);
            }
        }


        function window_onload() {
            document.getElementById('otbFTUsrCode').focus();
            return true;
        }

        function otbFTUsrCode_onkeypress(ptKeyCode,ptWhich) {
            return J002_CHKbCheckTxtKey(ptKeyCode, ptWhich);
        }

        function otbFTUsrPwd_onkeypress(ptKeyCode, ptWhich) {
            return J002_CHKbCheckTxtKey(ptKeyCode, ptWhich);
        }
        function otbFTUsrPwd_onkeydown(ptKeyCode, ptWhich) {
            var tKey = ptKeyCode;
            if (ptWhich != null) { tKey = ptWhich; }
            if (tKey == 13) {
                var tDate =J002_GETtTimeStamp();
                var tUser = document.getElementById('otbFTUsrCode').value;
                var tPass = document.getElementById('otbFTUsrPwd').value;
                ocmSubmit_onclick(tUser, tPass, tDate);
            }
            return !(tKey == 13);
        }
        function otbFTUsrCode_onkeydown(ptKeyCode, ptWhich) {
            var tKey = ptKeyCode;
            if (ptWhich != null) { tKey = ptWhich; }
            if (tKey == 13) {
                document.getElementById('otbFTUsrPwd').select();
            }
            return !(tKey == 13);
        }
    </script>
</head>




<body onload="return window_onload()">

<input type="hidden" id="otbMenuName" value ="<%=ViewData("MnuName")%>" />
    <div class="xCN_AllBackgroundColor xCN_AllFontFamily xCN_AllFontSize xCN_AllFontColor xW_DivMain">
        <div class="xW_DivTittle "> 
            <input type="text" value ="<%= ViewData("olaCaption")%>" readonly="readonly" />
        </div>
        <div class="xW_DivUsrLogin">
            <div class="xW_DivUsrLoginCap">
                <div class="xW_DivUsrLoginCapSub">
                    <%=ViewData("olaUserCode")%>
                </div>
                 <div class="xW_DivUsrLoginCapSub">
                     <%=ViewData("olaPasswords")%>
                </div>
                <div class="xW_DivUsrLoginCapSub">
                    <img src="<%=Url.Content("~/Content/img/imgIcon48x48/Login.png") %>"  alt=""/>
                </div>
            </div>
            <div class="xW_DivUsrLoginData">
                <div class="xW_DivUsrLoginDataSub">
                    <input type="text" 
                            id="otbFTUsrCode" 
                            class="xW_InputTextLoginData"
                            onkeydown="return otbFTUsrCode_onkeydown(event.keyCode,event.which)"
                            value="<%=model.FTUsrCode %>" onkeypress="return otbFTUsrCode_onkeypress(event.keyCode,event.which)" />
                </div>
                <div class="xW_DivUsrLoginDataSub">
                    <input type="password"
                            id="otbFTUsrPwd"
                            onkeydown="return otbFTUsrPwd_onkeydown(event.keyCode,event.which)"
                            class="xW_InputTextLoginData"
                            value="<%=model.FTUsrPwd %>" onkeypress="return otbFTUsrPwd_onkeypress(event.keyCode,event.which)"  />
                </div>
                <div class="xW_DivUsrLoginDataSub">
                    <div class="xW_DivBottomLeft">
                        <input type="button"
                         value="<%=ViewData("olaLogin") %>" 
                          name="ocmSubmit" 
                          id="ocmSubmit"  
                          class="xW_InputButton"
                          onclick="ocmSubmit_onclick( document.getElementById('otbFTUsrCode').value,document.getElementById('otbFTUsrPwd').value,J002_GETtTimeStamp())" />
                    </div>
                    <div class="xW_DivBottomRight">
                         <input type="button" 
                                value="<%=ViewData("olaCancel") %>"  
                                name="ocmCancel" 
                                id="ocmCancel" 
                                class="xW_InputButton"
                                onclick="ocmCancel_onclick()" />
                    </div>
                </div>      
            </div>
        </div>
       
    </div>

             
            
       
       
   
</body>

</html> 