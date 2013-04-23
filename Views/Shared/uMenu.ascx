<%@ Control Language="VB" Inherits="System.Web.Mvc.ViewUserControl(Of IEnumerable(of Adasoft.WebPos.Models.cmlPanal))" %>
<%@ Import Namespace="Adasoft.WebPos.Models" %>
<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim oCulture As System.Globalization.CultureInfo
        If Session("tVB_LastLang") Is Nothing OrElse Session("tVB_LastLang") = "" Then
            oCulture = New System.Globalization.CultureInfo("EN")
        Else
            oCulture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
        End If
        AdaWebPos.My.Resources.resLCcvcCNPanal.Culture = oCulture
        
        ViewData("olaAddFavorite") = AdaWebPos.My.Resources.resLCcvcCNPanal.olaAddFavorite
        ViewData("olaDeleteFavorite") = AdaWebPos.My.Resources.resLCcvcCNPanal.olaDeleteFavorite
    End Sub
</script>
<script type="text/javascript" src="<%=Url.Content("~/Scripts/jquery-1.4.2.min.js") %>"></script>
<script type="text/javascript" src="<%=Url.Content("~/Scripts/jquery-1.3.2.js") %>"></script>
    <script type="text/javascript">
        //Set Virtual Path //*CH 01-11-2012
        function W_SETxJ003VirtualPath() {
            tJ003_VirtualDirectory = '<%=Session("VirtualDirectory")%>';
        }
        $("img").ready(function() {
            $("#oulListMenu img").css({ opacity: 1 });
        });
        function W_SETxOpacityMouseOut(poElement) {
            $(poElement).css({ top: 0 });
        }
        function W_SETxOpacityMouseOver(poElement) {
            $(poElement).css({ top: -1 });
        }
        function W_ADDxFavorite(ptMnuName) {
            try {
                var tDate = J002_GETtTimeStamp();
                var tUrl = '';
                tUrl += '<%=Url.Action("C_ADDtFavorite","cvcCNPanal") %>';
                tUrl += '?ptDate=' + tDate;
                tUrl += '&ptMnuName=' + ptMnuName;

                var oXmlHttp = J002_GEToXMLHttpRequest();
                oXmlHttp.open('Get', encodeURI(tUrl), false);
                oXmlHttp.send(null);
                if (oXmlHttp.status != 200) {
                    alert('Error' + oXmlHttp.status + '\n' + oXmlHttp.responseText);
                    return false;
                }
                var aArr = oXmlHttp.responseText.split('|');
                if (aArr[0] != null && aArr[0] != '') {
                    alert(aArr[1]);
                    return false;
                }
                window.location = window.location;
            }
            catch (ex) {
                J002_SHWxMsgError('W_ADDxFavorite', ex);
            }
        }
        function W_DELxFavorite(ptMnuName) {
            try {
                var tDate = J002_GETtTimeStamp();
                var tUrl = '';
                tUrl += '<%=Url.Action("C_DELtFavorite","cvcCNPanal") %>';
                tUrl += '?ptDate=' + tDate;
                tUrl += '&ptMnuName=' + ptMnuName;

                var oXmlHttp = J002_GEToXMLHttpRequest();
                oXmlHttp.open('Get', encodeURI(tUrl), false);
                oXmlHttp.send(null);
                if (oXmlHttp.status != 200) {
                    alert('Error' + oXmlHttp.status + '\n' + oXmlHttp.responseText);
                    return false;
                }
                var aArr = oXmlHttp.responseText.split('|');
                if (aArr[0] != null && aArr[0] != '') {
                    alert(aArr[1]);
                    return false;
                }
                window.location = window.location;
            }
            catch (ex) {
                J002_SHWxMsgError('W_ADDxFavorite', ex);
            }
        }
        function W_DATxCNPanalPostData(ptUrl, ptPostData, ptTarget) {
            var oElement2;
            var oElement3;
            var oElement = document.getElementById("ofmCNPanal");
            W_CLRxFormChild();
            oElement.setAttribute("action", ptUrl);
            oElement.setAttribute("target", ptTarget);
            ptPostData = String(ptPostData);
            var aArr = ptPostData.split('&');
            for (var i = 0; i < aArr.length; i++) {
                var tParam = aArr[i];
                tParam = String(tParam);
                var aArr2 = tParam.split('=');
                oElement2 = document.createElement("input");
                oElement2.setAttribute("name", aArr2[0]);
                oElement2.setAttribute("value", aArr2[1]);
                oElement2.setAttribute("style", "display:none");
                oElement.appendChild(oElement2);
            }
            J003_DISxWaiting();
            oElement.submit();
        }
    </script>
    <script type="text/javascript">
        function W_CLRxFormChild() {
            while (ofmCNPanal.childNodes.length > 0) {
                ofmCNPanal.removeChild(ofmCNPanal.lastChild);
            }
        }
    </script>
    <form id="ofmCNPanal" name="ofmCNPanal" action="#" method="post" target="_blank" onreset="return ofmCNPanal_onreset()"></form>
    <div style="list-style-type:none;margin:0px 0px 0px 45px;height:620px;overflow:auto;">
            <%  Dim oModel As List(Of cmlPanal) = Model 'ViewData("PanalMenu")
                Dim tController As String = ""
                Dim tMenuDesc As String = ""
                Dim tMenuUrl As String = ""
                Dim tMenuImgUrl As String = ""
                Dim tMenuFavorite As String = ""
                Dim tMenuFunc As String = ""
                Dim tMenuNewPage As String = ""
                Dim tMenuNewPagePost As String = ""
                Dim tMenuPostData As String = ""
                Dim tMenuPostUrl As String = ""
                Dim tMenuOnClick As String = ""
            %>
            <% For Each oItem In oModel%>
                <%  
                    tMenuDesc = oItem.FTMnuDesc
                    
                    If oItem.FTMnuUrl Is Nothing OrElse oItem.FTMnuUrl = "" Then
                        tMenuUrl = "javascript:void(0);"
                    Else
                        tMenuUrl = oItem.FTMnuUrl
                    End If
                    If oItem.FTMnuImgUrl Is Nothing OrElse oItem.FTMnuImgUrl = "" Then
                        tMenuImgUrl = Url.Content("~/Content/img/AdaSiteMaster/Default_Icon.png")
                    Else
                        tMenuImgUrl = oItem.FTMnuImgUrl
                    End If
                    If oItem.FTMnuStaFavorite = "1" Then
                        tMenuFavorite = ViewData("olaDeleteFavorite")
                        tMenuFunc = "W_DELxFavorite('" & oItem.FTMnuName & "');"
                    Else
                        tMenuFavorite = ViewData("olaAddFavorite")
                        tMenuFunc = "W_ADDxFavorite('" & oItem.FTMnuName & "');"
                    End If
                    If oItem.FTMnuStaNewPage = "1" Then
                        tMenuNewPage = "_blank"
                        tMenuNewPagePost = "_blank"
                    Else
                        tMenuNewPage = "_self"
                        tMenuNewPagePost = "_self"
                    End If
                    tMenuOnClick = "W_SETxJ003VirtualPath();J003_SHWxWaiting();"
                    If oItem.FTMnuPostData Is Nothing OrElse oItem.FTMnuPostData = "" Then
                        tMenuPostData = ""
                        tMenuOnClick &= ""
                    Else
                        tMenuPostData = oItem.FTMnuPostData
                        tMenuPostUrl = tMenuUrl
                        tMenuUrl = "javascript:void(0);"
                        tMenuNewPage = "_self"
                        tMenuOnClick &= "W_DATxCNPanalPostData('" & tMenuPostUrl & "','" & tMenuPostData & "','" & tMenuNewPagePost & "');"
                    End If
                %>
                <div style="float:left;width:140px;margin:5px 5px 0px 5px;height:120px;">
                    <div style="margin:0px 0px 0px 38px;" >
                        <div style="position:relative;">
                            <a href="<%=tMenuUrl %>" target="<%=tMenuNewPage %>" onclick="<%=tMenuOnClick %>" >
                                <img alt="<%=tMenuDesc %>" onmouseout="W_SETxOpacityMouseOut(this);" onmouseover="W_SETxOpacityMouseOver(this);"  style="margin:0px 0px 0px 0px;border:0px;height:64px;width:64px;position:relative;" src="<%=tMenuImGUrl %>" />
                            </a>
                        </div>
                    </div>
                    <div style="text-align:center; margin:0px 0px 0px 0px;padding:0px 0px 0px 0px;overflow:hidden;">
                        <div style="max-height:40px;font-size:14px;overflow:hidden;">
                            <%=tMenuDesc%>
                        </div>
                        <a href="javascript:void(0);" onclick="<%=tMenuFunc%>">
                            <div style="font-size:8px;width:100%;text-align:center;" >
                                <%=tMenuFavorite%>
                            </div>
                        </a>
                    </div>
                </div>
            <% Next%>
    </div>