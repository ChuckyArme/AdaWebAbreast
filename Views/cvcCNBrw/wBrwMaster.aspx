<%@ Page Language="VB" Inherits="System.Web.Mvc.ViewPage(Of IEnumerable (Of Adasoft.WebPos.Models.cmlCNBrowseMaster))" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        ViewData("VirtualDirectory") = W_GETtVirtualDirectory()
    End Sub
    Function W_GETtVirtualDirectory() As String
        Dim tReturn As String = ""
        Dim tStr As String = ""
        Dim nIndex As Integer = 0
        tStr = Url.Action("Index", "Home")
        nIndex = tStr.IndexOf("/Home")
        If nIndex > -1 Then
            tStr = tStr.Substring(0, nIndex)
            tReturn = tStr.Replace("/", "")
        End If
        Return tReturn
    End Function
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >

<head>
<script type="text/css">
    table 
    {
        table-layout: fixed;
        white-space:nowrap;
        font:Tahoma, Geneva, sans-serif;
        font-size:11px
    }
</script>

    <title><%=ViewData("olaTitle")%></title>

    <%=Html.Telerik().StyleSheetRegistrar().DefaultGroup(Function(group) group.Add("Site.css")).DefaultGroup(Function(group) _
                                                                                  group.Add("telerik.common.css")).DefaultGroup(Function(group) group.Add("telerik.forest.css"))%>
    <script src="<%=Url.Content("~/Scripts/MicrosoftAjax.js") %>" type="text/javascript"></script>
    <script src="<%=Url.Content("~/Scripts/MicrosoftMvcAjax.js") %>" type="text/javascript"></script>
    <script type="text/javascript">
    
    function loadPartialView(ptTime, ptCtrl, ptField, ptValue) {
        var tCtrl = window.document.getElementById(ptCtrl);
        var tField = window.document.getElementById(ptField);
        var tValue = window.document.getElementById(ptValue);
        var tLink  = '';
        if ('<%=ViewData("VirtualDirectory") %>' != null && '<%=ViewData("VirtualDirectory") %>' != ''){
            tLink += '/' + '<%=ViewData("VirtualDirectory") %>';
        }
        tLink += '/' + tCtrl.value + '/uCNBrwMasterPartial?ptCase=' + <%=ViewData("Case") %> + '&ptDate=' + ptTime + '&ptFilterField=' + tField.value + '&ptFilterValue=' + tValue.value + '&ptWhere=' + '';
        $('#result').load(encodeURI(tLink));
    }
    
    
    
        function GetPassedValue(a) {
            if (a !='adasoft'){
                returnValue = a;
            }
            
        }
        
//        function window_onload() {
//            GetPassedValue('adasoft');
//        }

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

        window.onload = function() {
            if (window.chrome) {
                //ตั้งค่าขนาดหน้าจอใหม่ สำหรับ Chrome
                window.resizeTo(790, 540);
            }
        }
    </script>
</head>
<body>
    <img alt="" id="oimSessionAlive" width="1" height="1" src="" style="display:none;"/>
    <div id="result">
    <%  Html.RenderPartial("uCNBrwMasterPartial")%>
    </div>
            <%  Html.Telerik().ScriptRegistrar() _
                 .DefaultGroup(Function(group) group.Add("telerik.examples.js") _
                                              .Compress(True)) _
                                              .OnDocumentReady("prettyPrint") _
                                             .Render()%>  
</body>
</html>
