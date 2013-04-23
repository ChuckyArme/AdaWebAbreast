<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tLang As String = Session("tVB_LastLang")
        If tLang Is Nothing OrElse tLang = "" Then
            tLang = "EN"
        End If
        
        Dim oCulture = New System.Globalization.CultureInfo(tLang)
        AdaWebPos.My.Resources.resLCcvcCNBrwDoc.Culture = oCulture
        Resources.resGBMsg.Culture = oCulture
        
        ViewData("tMsgNotAuthorize") = Resources.resGBMsg.tMsgNotAuthorize
        
        ViewData("tBrwDocTitle") = AdaWebPos.My.Resources.resLCcvcCNBrwDoc.tBrwDocTitle
        ViewData("omnPurchase") = AdaWebPos.My.Resources.resLCcvcCNBrwDoc.omnPurchase
        ViewData("omnPQ") = AdaWebPos.My.Resources.resLCcvcCNBrwDoc.omnPQ
        ViewData("omnPO") = AdaWebPos.My.Resources.resLCcvcCNBrwDoc.omnPO
        ViewData("omnPI") = AdaWebPos.My.Resources.resLCcvcCNBrwDoc.omnPI
        
        ViewData("omnSale") = AdaWebPos.My.Resources.resLCcvcCNBrwDoc.omnPI
        ViewData("omnSleSQ") = AdaWebPos.My.Resources.resLCcvcCNBrwDoc.omnSleSQ
        
        ViewData("omnMngCst") = AdaWebPos.My.Resources.resLCcvcCNBrwDoc.omnMngCst
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	<%=ViewData("tBrwDocTitle")%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="odiMain" class ="xCN_AllFontFamily xCN_AllFontSize xCN_AllFontColor xCN_DivMain">
        <div id="odiDocList" class="xW_MenuDoc" style="margin-right:10px;">
            <table cellpadding="0" cellspacing="0" border="0" width="100%" style ="text-align:center">
                <tr>
                    <td width ="150px" align="left" valign="top" bgcolor="#b7d49e" style="text-align:left;">
                        <% 
                            Dim oDocBar As PanelBar = Html.Telerik().PanelBar().Name("DocBar").ExpandMode((PanelBarExpandMode).Single).ExpandMode(PanelBarExpandMode.Multiple).HtmlAttributes(New With {.style = "table-layout: fixed; font:Tahoma, Geneva, sans-serif; font-size:11px; text-align: left"}) _
                            .Items(Function(items) items.Add().Text(ViewData("omnPurchase")).HtmlAttributes(New With {.style = "font-size:14px; font:Tahoma; text-align: left"}) _
                                .Items(Function(itemsSub) itemsSub.Add().Text(ViewData("omnPQ")).Action("wBrwDoc", "cvcCNBrwDoc", New With {.ptDocCase = "BrwPQ"}).HtmlAttributes(New With {.onclick = "W_SETxInitial();J003_SHWxWaiting();", .style = "font-size:14px; font:Tahoma; text-align: left"})) _
                                .Items(Function(itemsSub) itemsSub.Add().Text(ViewData("omnPO")).Action("wBrwDoc", "cvcCNBrwDoc", New With {.ptDocCase = "BrwPO"}).HtmlAttributes(New With {.onclick = "W_SETxInitial();J003_SHWxWaiting();", .style = "font-size:14px; font:Tahoma; text-align: left"})) _
                                .Items(Function(itemsSub) itemsSub.Add().Text(ViewData("omnPI")).Action("wBrwDoc", "cvcCNBrwDoc", New With {.ptDocCase = "BrwPI"}).HtmlAttributes(New With {.onclick = "W_SETxInitial();J003_SHWxWaiting();", .style = "font-size:14px; font:Tahoma; text-align: left"}))) _
                            .Items(Function(items) items.Add().Text(ViewData("omnSale")).HtmlAttributes(New With {.style = "font-size:14px; font:Tahoma; text-align: left"}) _
                                .Items(Function(itemsSub) itemsSub.Add().Text(ViewData("omnSleSQ")).Action("wBrwDoc", "cvcCNBrwDoc", New With {.ptDocCase = "BrwSq"}).HtmlAttributes(New With {.onclick = "W_SETxInitial();J003_SHWxWaiting();", .style = "font-size:14px; font:Tahoma; text-align: left"}))) _
                            .Items(Function(items) items.Add().Text(ViewData("omnMngCst")).Action("wBrwDoc", "cvcCNBrwDoc", New With {.ptDocCase = "BrwCst"}).HtmlAttributes(New With {.onclick = "W_SETxInitial();J003_SHWxWaiting();", .style = "font-size:14px; font:Tahoma;text-align: left"}))
                            oDocBar.Render()
                        %>
                    </td>
                </tr>
            </table>
        </div>
        
        <!-- Browse Document Pq -->
        <div id="odiBrwDoc" style="float:left; margin-left:10px;" >
            <div class ="xCN_DivGridDetail">
                <div style="height:auto;width:300px;">
                    <%Html.RenderPartial("uCNBrwDoc", ViewData("ovd_BrwDoc"))%>
                </div>
            </div>
        </div>

        <!-- Browse Master -->        
        <div id="odiBrwMaster" style="float:left; margin-left:10px;" class="xCN_DivDisplayNone" >
            <div class ="xCN_DivGridDetail">
                <div style="height:auto;width:300px;">
                    <%Html.RenderPartial("uCNBrwMaster", Session("oBrwMaster"))%>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
    <%--CSS--%>
    <link rel="Stylesheet" type="text/css" href="<%=Url.Content("~/Content/AdaCss/Local/FCS_cvcCNBrwDoc.css") %>" />
    <%--External Script--%>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J002_General.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J003_SplashDialog.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J015_UIBrowse.js") %>"></script>
    <script type="text/javascript">
        var tW_PassedValue = '';
        var tW_PrcDoc = '';
        var tW_Menu = 'omnToolBrwDoc';
        window.onload = function () {
            tJ002_VirtualDirectory = '<%=Session("VirtualDirectory")%>';
            tJ003_VirtualDirectory = '<%=Session("VirtualDirectory")%>';
            W_CHKxAuthor();
            if ('<%=Session("tVB_StaBrw")%>' == "M") {
                W_SETxDisplayBrw('odiBrwMaster', 'odiBrwDoc');
            } else {
                W_SETxDisplayBrw('odiBrwDoc', 'odiBrwMaster');
            }
        }
        function W_CHKxAuthor() {
            var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Read%>';
            var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize")%>';
            var tPwdAllow = '<%=Session("bVB_CNPwdAllow") %>';
            var bAllow = J002_CHKtCheckAuthorize(tW_Menu, tAuthor, tPwdAllow, tMsgNotAuthorize);
            if (bAllow == false) {
                J003_DISxWaiting();
                tUrl = '<%=Url.Action("Index","cvcCNPanal") %>?ptMenuGrpName=Tool';
                window.location = encodeURI(tUrl);
            }
        }
        function GetPassedValue(ptVal,ptPrcDoc) {
            tW_PassedValue = ptVal;
            tW_PrcDoc = ptPrcDoc;
        }
        function W_PRCxSelectedDoc(ptCase) {
            var tUrl = ''; //'<%=Url.Action("C_GETtPdtCount","cvcTACTPoHD") %>' + "?ptDateTimeNow=" + tDataTimeNow;
            //var oXmlHttp = J002_GEToXMLHttpRequest();
            //oXmlHttp.open("GET", encodeURI(tUrl), false);
            //oXmlHttp.send(null)
            if (tW_PassedValue == null || tW_PassedValue == '' ) {
                return false;
            }
            J003_SHWxWaiting();
            switch (ptCase.toUpperCase()) {
                case "BrwPo".toUpperCase():
                    if (tW_PrcDoc == '1') {
                        tUrl = '<%=Url.Action("wApvTACTPo","cvcTACTPoHD") %>' + "?ptDocNo=" + tW_PassedValue;
                    } else {
                        tUrl = '<%=Url.Action("wTACTPo","cvcTACTPoHD") %>' + "?ptDocNo=" + tW_PassedValue;
                    }
                    break;
                case "BrwPq".toUpperCase():
                    tUrl = '<%=Url.Action("Index","cvcTACTPqHD") %>' + "?ptDocNo=" + tW_PassedValue;
                    break;
                case "BrwPi".toUpperCase():
                    tUrl = '<%=Url.Action("Index","cvcTACTPiHD") %>' + "?ptDocNo=" + tW_PassedValue;
                    break;
                case "BrwSq".toUpperCase():
                    if (tW_PrcDoc == '1') {
                        tUrl = '<%=Url.Action("wApvTACTSq","cvcTACTSqHD") %>' + "?ptDocNo=" + tW_PassedValue;
                    } else {
                        tUrl = '<%=Url.Action("Index","cvcTACTSqHD") %>' + "?ptDocNo=" + tW_PassedValue;
                    }
                    break;
            }
            window.location = encodeURI(tUrl);
        }

        function W_SETxSelectedDataMaster(ptCase, ptSta) {
            switch (ptCase.toUpperCase()) {
                case 'CstMst'.toUpperCase():
                    if (ptSta == 1) {
                        tUrl = '<%=Url.Action("C_Create","cvcCustomer") %>';
                        tUrl += '?ptChkSta=C_Edit';
                        tUrl += '&ptValue=' + tJ015_ReturnValue.split(';')[0];
                    }
                    break;
            }
            J003_SHWxWaiting();
            window.location = encodeURI(tUrl);
        }

        function W_SETxDisplayBrw(ptObjShw,ptObjHide) {
            $('#' + ptObjShw).removeClass('xCN_DivDisplayNone');
            $('#' + ptObjHide).addClass('xCN_DivDisplayNone');
        }
    </script>
</asp:Content>
