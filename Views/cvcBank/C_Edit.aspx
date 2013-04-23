<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage(of Adasoft.WebPos.Models.cmlTCNMBank)" %>
<%@ Import Namespace="System.Resources" %>
<%@ Import Namespace="AdaWebPos" %>

<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tLastLang As String = Session("tVB_LastLang")
        If tLastLang Is Nothing AndAlso tLastLang = "" Then
            AdaWebPos.My.Resources.resLCcvcBank.Culture = New System.Globalization.CultureInfo("EN")
            Resources.resGBMsg.Culture = New System.Globalization.CultureInfo("EN")
        Else
            AdaWebPos.My.Resources.resLCcvcBank.Culture = New System.Globalization.CultureInfo(tLastLang)
            Resources.resGBMsg.Culture = New System.Globalization.CultureInfo(tLastLang)
        End If
        ViewData("olaRowID") = AdaWebPos.My.Resources.resLCcvcBank.olaRowID
        ViewData("olaCanEdit") = AdaWebPos.My.Resources.resLCcvcBank.olaCanEdit
        ViewData("olaCanDelete") = AdaWebPos.My.Resources.resLCcvcBank.olaCanDelete
        ViewData("olaCanSave") = AdaWebPos.My.Resources.resLCcvcBank.olaCanSave
        ViewData("olaCreate") = AdaWebPos.My.Resources.resLCcvcBank.olaCreate
        ViewData("olaFTBnkCode") = AdaWebPos.My.Resources.resLCcvcBank.olaFTBnkCode
        ViewData("olaFTBnkName") = AdaWebPos.My.Resources.resLCcvcBank.olaFTBnkName
        ViewData("olaMenuName") = AdaWebPos.My.Resources.resLCcvcBank.olaMenuName
        ViewData("olaNotAccess") = AdaWebPos.My.Resources.resLCcvcBank.olaNotAccess
        ViewData("olaReport") = AdaWebPos.My.Resources.resLCcvcBank.olaReport
        ViewData("olaHeaderEdit") = AdaWebPos.My.Resources.resLCcvcBank.olaHeaderEdit
        ViewData("olaHeaderAdd") = AdaWebPos.My.Resources.resLCcvcBank.olaHeaderAdd
        ViewData("olaHeaderDetail") = AdaWebPos.My.Resources.resLCcvcBank.olaHeaderDetail
        ViewData("olaHeaderList") = AdaWebPos.My.Resources.resLCcvcBank.olaHeaderList
        ViewData("olaDetail") = AdaWebPos.My.Resources.resLCcvcBank.olaDetail
        ViewData("olaFTBnkType") = AdaWebPos.My.Resources.resLCcvcBank.olaFTBnkType
        ViewData("olaFCBnkChgPer") = AdaWebPos.My.Resources.resLCcvcBank.olaFCBnkChgPer
        ViewData("olaFTBnkCardRef") = AdaWebPos.My.Resources.resLCcvcBank.olaFTBnkCardRef
        ViewData("tMsgErrorData") = Resources.resGBMsg.tMsgErrorData
        
        ViewData("oimgSave") = Url.Content(Resources.resGBImageList.oimgSave)
        ViewData("oimgUndo") = Url.Content(Resources.resGBImageList.oimgUndo)
        ViewData("oimgBrowse") = Url.Content(Resources.resGBImageList.oimgBrowse)

    End Sub
    
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	<%=ViewData("olaHeaderEdit") %>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<script type ="text/javascript" >
    window.onload = window_onload;
    function window_onload() {
        tJ002_VirtualDirectory = '<%=Session("VirtualDirectory")%>';
        tJ003_VirtualDirectory = '<%=Session("VirtualDirectory")%>'; //*CH 20-02-2013
        J002_SETxReadOnly("FTBnkCode", true);
        document.getElementById("FTBnkCode").onkeydown = function() { return false; };
    }

    function noenter(ptTarget) {
        var oTarget = document.getElementById(ptTarget);

        if (window.event.keyCode == 13) {
            if (ptTarget != undefined) {
                oTarget.focus();
            }
            return window.event.keyCode = 0;
            //            return !(window.event && window.event.keyCode == 13);
        }
        if (window.event.keyCode == 10) {
            return window.event.keyCode = 13;
            //            return !(window.event && window.event.keyCode == 13);
        }
    }

    //@Funtion: Button Back
    //@Edit: Kriengkai (Kik)
    //@Since: 19/4/54 16:22
    function W_FRMxForwClose() {
        J003_SHWxWaiting();
        window.location = '<%=Url.Action("Index","cvcBank")%>';
    }

    function W_FRMxSaveDocument() {
        var tCode = document.getElementById("FTBnkCode").value;
        var tName = J002_STRttrim(document.getElementById("FTBnkName").value);

        if (tCode == "" || tCode == null) {
            alert('<%=ViewData("tMsgErrorData")%>');
            document.getElementById("FTBnkCode").focus();
            return false;
        }

        if (tName == "" || tName == null) {
            alert('<%=ViewData("tMsgErrorData")%>');
            document.getElementById("FTBnkName").focus();
            return false;
        }

        var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Add%>';
        var tPwdAllow = '<%=AdaWebPos.cCNVB.bVB_CNPwdAllow %>';
        var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
        var bAllow = J002_CHKtCheckAuthorize('omnMngBank', tAuthor, tPwdAllow, tMsgNotAuthorize);
        if (bAllow == false) {
            return false;
        }
        else {
            document.wBank.submit();
        }
    }
    

</script>
    
    <%  Using Html.BeginForm("C_Edit", "cvcBank", FormMethod.Post, New With {.collection = "cmlBank", .ptValue = "Bank_Edit", .name = "wBank", .id = "wBank"})%>
        <%-------------------ส่วนรายละเอียด-------------------------%>  
        <div class="xW_DivMain xCN_AllFontFamily xCN_AllFontSize xCN_AllFontColor" >
            <div style="display:none">
                <%= Html.HiddenFor(Function(model) model.FDDateUpd) %>
                <%= Html.HiddenFor(Function(model) model.FTTimeUpd) %>
                <%= Html.HiddenFor(Function(model) model.FTWhoUpd) %>
                <%= Html.HiddenFor(Function(model) model.FDDateIns) %>
                <%= Html.HiddenFor(Function(model) model.FTTimeIns) %>
                <%= Html.HiddenFor(Function(model) model.FTWhoIns) %>
            </div>
        <%-------------------ชื่อเอกสาร---------------------------%>   
        <div class="xW_DivSearch">
            <div class='xW_DivPath'>
                <label id="olaTopicName" ><%=ViewData("olaHeaderAdd")%></label> 
            </div>    
        </div>
        <%-------------------เมนู-------------------------------%>   
        <div id="odiMenuTop" class="xCN_DivMainMenuPage xCN_AllBorderColor">
            <div id="odiMenu" class="xW_DivMenu">
                <div id="odiMenuSave" class="xCN_DivMenuSave" style="float: left;">
                    <a onclick="W_FRMxSaveDocument()" href="javascript:void(0)">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaCanSave")%>
                        </div>
                    </a>
                </div>
                <div id="odiMenuClose" class="xCN_DivMenuHome" style="float: left;">
                    <a onclick = "W_FRMxForwClose()" href="javascript:void(0)">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaHeaderList")%>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <%-------------------รายละเอียด-------------------------------%>
        <div class="xCN_AllBorderColor xCN_AllBackgroundColor xCN_DivMainMenuPage" style='height:525px;'>
                <div class="xW_DivCaption">
                    <div class="xW_DivCaptionSub xCN_AllFontColorTextReq">
                        <label>*<%=ViewData("olaFTBnkCode")%></label>
                    </div>
                    <div class="xW_DivCaptionSub xCN_AllFontColorTextReq">
                        <label>*<%=ViewData("olaFTBnkName")%></label>
                    </div>
                    <div class="xW_DivCaptionSub">
                        <label><%=ViewData("olaFTBnkType")%></label>
                    </div>
                    <div class="xW_DivCaptionSub">
                        <label><%=ViewData("olaFCBnkChgPer")%></label>
                    </div>
                  
                </div>
                <div class="xW_DivData">
                    <div class="xW_DivDataSub">
                        <div class="xW_DivCode">
                             <%=Html.TextBoxFor(Function(model) model.FTBnkCode, New With {.readonly = "readonly", .class = "xW_InputTextCode"})%>
                             <%= Html.ValidationMessageFor(Function(model) model.FTBnkCode) %>
                        </div>                  
                    </div>
                    <div class="xW_DivDataSub xCN_AllFontColorTextReq">
                            <%=Html.TextBoxFor(Function(model) model.FTBnkName, New With {.maxlength = "100", .onkeypress = "return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)"})%>   
                            <%=Html.ValidationMessageFor(Function(model) model.FTBnkName)%>
                    </div>
                    <div class="xW_DivDataSub">
                        <%=Html.DropDownListFor(Function(model) model.FTBnkType, CType(ViewData("BankType"), SelectList))%>
                        <%= Html.ValidationMessageFor(Function(model) model.FTBnkType) %>
                    </div>       
                    <div class="xW_DivDataSub">
                        <%=Html.TextBoxFor(Function(model) model.FCBnkChgPer, New With {.class = "xW_InputTextCode", .onkeypress = "return J002_CHKbCheckNumOnly('567',event.keyCode,false)"})%> 
                        <%=Html.ValidationMessageFor(Function(model) model.FCBnkChgPer)%>
                    </div>
            </div>
        </div>
        
        <%--<fieldset style="border: 0">
            <div class="editor-label">
                <table class="x003DetailEdit_Table">
                    <tr>
                        <td class="xCN_AllFontColorTextReq">
                            *<%=ViewData("olaFTBnkCode")%>
                        </td>
                        <td>
                            <%=Html.TextBoxFor(Function(model) model.FTBnkCode, New With {.readonly = "readonly", .class = "x006_ReadOnlyBGColor"})%>
                            <%= Html.ValidationMessageFor(Function(model) model.FTBnkCode) %>
                        </td>
                    </tr>
                    <tr>
                        <td class="xCN_AllFontColorTextReq">
                            *<%=ViewData("olaFTBnkName")%>
                        </td>
                        <td>
                            <%=Html.TextBoxFor(Function(model) model.FTBnkName, New With {.onkeypress = "noenter('FCBnkChgPer');"})%>   
                            <%=Html.ValidationMessageFor(Function(model) model.FTBnkName)%>
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <%=ViewData("olaFTBnkType")%>
                        </td>
                        <td>
                            <%=Html.DropDownListFor(Function(model) model.FTBnkType, CType(ViewData("BankType"), SelectList))%>
                            <%=Html.ValidationMessageFor(Function(model) model.FTBnkType)%>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <%=ViewData("olaFCBnkChgPer")%>
                        </td>
                        <td >
                            <%=Html.TextBoxFor(Function(model) model.FCBnkChgPer, New With {.onkeypress = "noenter('save');"})%> 
                            <%=Html.ValidationMessageFor(Function(model) model.FCBnkChgPer)%>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <%=ViewData("olaFTBnkCardRef")%>
                        </td>
                        <td>
                            <%=Html.TextBoxFor(Function(model) model.FTBnkCardRef)%>
                            <%=Html.ValidationMessageFor(Function(model) model.FTBnkCardRef)%>
                        </td>
                    </tr>
                </table>
            </div>
        </fieldset>--%>
    </div>
    <% End Using %>
    
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server"> 
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J002_General.js")%>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J003_SplashDialog.js")%>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J013_LoadChkBoxAll.js")%>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/jquery-1.3.2.js")%>"></script> 
    <link type="text/css" rel="Stylesheet" href="<%=Url.Content("~/Content/AdaCss/Local/FCS_cvcManagementLocal.css")%>" />
    <link href="<%=Url.Content("~/Content/AdaCss/Global/FCS_CNCenter.css")%>" rel="stylesheet" type="text/css" /> 
</asp:Content>