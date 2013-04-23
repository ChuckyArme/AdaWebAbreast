<%@ Page Language="VB" Inherits="System.Web.Mvc.ViewPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ Import Namespace="System.Resources" %>
<%@ Import Namespace="AdaWebPos" %>
<script runat="server">
    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        If Session("tVB_LastLang") = "EN" Then
            ViewData("olaOk") = "Ok"
            ViewData("olaCancel") = "Cancel"
            ViewData("olaYes") = "Yes"
            ViewData("olaNo") = "No"
        Else
            ViewData("olaOk") = "ตกลง"
            ViewData("olaCancel") = "ยกเลิก"
            ViewData("olaYes") = "ใช่"
            ViewData("olaNo") = "ไม่ใช่"
        End If
    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <link rel="Stylesheet" type="text/css" href="../../Content/AdaCss/Local/FCS_cvcConfirmDialog.css"/>
    <link rel="Stylesheet" type="text/css" href="../../Content/AdaCss/Global/FCS_CNCenter.css"/>
    <script type="text/javascript" src="../../Scripts/jquery-1.4.2.min.js"></script>
    <title><%=ViewData("Title") %></title>
    <script type="text/javascript" >
        var nW_ShowButton = Number('<%=ViewData("ShowButton") %>');
        var nW_Return;
        var nW_ShowIcon = Number('<%= ViewData("ShowIcon") %>');
        function W_SETxShowButton() {
            if ((nW_ShowButton & oJ003_DialogResult.Ok) > 0) {
                document.getElementById("ocmOk").style.display = "block";
            }
            if ((nW_ShowButton & oJ003_DialogResult.Cancel) > 0) {
                document.getElementById("ocmCancel").style.display = "block";
            }
            if ((nW_ShowButton & oJ003_DialogResult.Yes) > 0) {
                document.getElementById("ocmYes").style.display = "block";
            }
            if ((nW_ShowButton & oJ003_DialogResult.No) > 0) {
                document.getElementById("ocmNo").style.display = "block";
            }
            switch(nW_ShowButton){
                case oJ003_DialogType.DialogOk: nW_Return = oJ003_DialogResult.Ok; break;
                case oJ003_DialogType.DialogOkCancel: nW_Return = oJ003_DialogResult.Cancel; break;
                case oJ003_DialogType.DialogYesNo: nW_Return = oJ003_DialogResult.No; break;
                case oJ003_DialogType.DialogYesNoCancel: nW_Return = oJ003_DialogResult.Cancel; break;
            }
        }

        function W_SETxShowIcon() {
            $("#odiShowIcon").removeClass("xW_DivShowIconWarning");
            $("#odiShowIcon").removeClass("xW_DivShowIconError");
            $("#odiShowIcon").removeClass("xW_DivShowIconQuestion");
            switch (nW_ShowIcon) {

                case oJ003_DialogIcon.Warning:
                    $("#odiShowIcon").addClass("xW_DivShowIconWarning");
                    break;
                case oJ003_DialogIcon.Error:
                    $("#odiShowIcon").addClass("xW_DivShowIconError");
                    break;
                case oJ003_DialogIcon.Question:
                    $("#odiShowIcon").addClass("xW_DivShowIconQuestion");
                    break;
                default:
                    $("#odiShowIcon").addClass("xW_DivShowIconWarning");
                    break;
            }
         }
        function ocmOk_onclick() {
            returnValue = oJ003_DialogResult.Ok;
            window.close();
        }
        function ocmCancel_onclick() {
            returnValue = oJ003_DialogResult.Cancel;
            window.close();
        }
        function ocmYes_onclick() {
            returnValue = oJ003_DialogResult.Yes;
            window.close();
        }
        function ocmNo_onclick() {
            returnValue = oJ003_DialogResult.No;
            window.close();
        } 
    </script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J003_SplashDialog.js") %>"></script>
    <script type="text/javascript">
        window.onload = function() {
            if (window.chrome) {
                //ตั้งค่าขนาดหน้าจอใหม่ สำหรับ Chrome
                window.resizeTo(340, 250);
            }
            W_SETxShowButton();
        };
       
    </script>
    <script type="text/javascript" >
        function W_SETxSessionAlive() {
            // Gets reference of image
            var img = document.getElementById("oimSessionAlive");

            // Set new src value, which will cause request to server, so 
            // session will stay alive
            img.src = '<%=Url.Action("C_SETxSessionAlive","cvcCenter") %>' + "?c=" + Math.random(); //counter;
        }

        // Run function for a first time
        window.setInterval("W_SETxSessionAlive()", 60000);
    </script>
</head>
<body>
    <img alt="" id="oimSessionAlive" width="1" height="1" src="" style="display:none;"/>
    <div class="xW_DivMain xCN_AllBackgroundColor xCN_AllFontFamily xCN_AllFontSize xCN_AllFontColor">
        <div class="xW_DivTop">
            <div class="xW_DivShowIcon">
                  <img alt="" src ="<%=Url.Content("~/Content/img/AdaDialogIcon/warning.png") %>"/>
            </div>
            <div  class="xW_DivShowMsg">
                  <textarea  cols="1" rows="1" readonly="readonly" class="xW_TextAreaShowMsg"><%=ViewData("Message")%></textarea>
            </div>
       </div>
       <div class="xW_DivBottom">
            <div  class="xW_DivShowButton">
                 <input id="ocmCancel" style="display:none;float:right;text-align:center;width:70px;" type="button" value='<%=ViewData("olaCancel") %>' onclick="ocmCancel_onclick()" />
                <input id="ocmOk" style="display:none;float:right;text-align:center;width:70px;" type="button" value='<%=ViewData("olaOk") %>' onclick="ocmOk_onclick()" />
                <input id="ocmNo" style="display:none;float:right;text-align:center;width:70px;" type="button" value='<%=ViewData("olaNo") %>' onclick="ocmNo_onclick()" />
                <input id="ocmYes" style="display:none;float:right;text-align:center;width:70px;" type="button" value='<%=ViewData("olaYes") %>' onclick="ocmYes_onclick()" />

            </div>
       </div> 
    </div>
</body>
</html>
