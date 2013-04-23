<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage(Of Adasoft.WebPos.Models.cmlTCNMSpn)" %>
<%@ Import Namespace="System.Resources" %>
<%@ Import Namespace="AdaWebPos" %>
<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        'Dim tLastLang As String = cCNVB.tVB_LastLang

        'If tLastLang Is Nothing AndAlso tLastLang = "" Then
        '    AdaWebPos.My.Resources.resLCcvcSaleperson.Culture = New System.Globalization.CultureInfo("EN")
        '    Resources.resGBMsg.Culture = New System.Globalization.CultureInfo("EN")
        'Else
        '    AdaWebPos.My.Resources.resLCcvcSaleperson.Culture = New System.Globalization.CultureInfo(tLastLang)
        '    Resources.resGBMsg.Culture = New System.Globalization.CultureInfo(tLastLang)
        'End If
        AdaWebPos.My.Resources.resLCcvcSaleperson.Culture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
        Resources.resGBMsg.Culture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
        
        ViewData("olaRowID") = AdaWebPos.My.Resources.resLCcvcSaleperson.olaRowID
        ViewData("olaCanEdit") = AdaWebPos.My.Resources.resLCcvcSaleperson.olaCanEdit
        ViewData("olaCanSave") = AdaWebPos.My.Resources.resLCcvcSaleperson.olaCanSave
        ViewData("olaCanDelete") = AdaWebPos.My.Resources.resLCcvcSaleperson.olaCanDelete
        ViewData("olaCreate") = AdaWebPos.My.Resources.resLCcvcSaleperson.olaCreate
        ViewData("olaFTSpnCode") = AdaWebPos.My.Resources.resLCcvcSaleperson.olaFTSpnCode
        ViewData("olaFTSpnName") = AdaWebPos.My.Resources.resLCcvcSaleperson.olaFTSpnName
        ViewData("olaFTSpnAddr") = AdaWebPos.My.Resources.resLCcvcSaleperson.olaFTSpnAddr
        ViewData("olaMenuName") = AdaWebPos.My.Resources.resLCcvcSaleperson.olaMenuName
        ViewData("olaNotAccess") = AdaWebPos.My.Resources.resLCcvcSaleperson.olaNotAccess
        ViewData("olaReport") = AdaWebPos.My.Resources.resLCcvcSaleperson.olaReport
        ViewData("olaHeaderEdit") = AdaWebPos.My.Resources.resLCcvcSaleperson.olaHeaderEdit
        ViewData("olaHeaderAdd") = AdaWebPos.My.Resources.resLCcvcSaleperson.olaHeaderAdd
        ViewData("olaHeaderDetail") = AdaWebPos.My.Resources.resLCcvcSaleperson.olaHeaderDetail
        ViewData("olaHeaderList") = AdaWebPos.My.Resources.resLCcvcSaleperson.olaHeaderList
        ViewData("olaDetail") = AdaWebPos.My.Resources.resLCcvcSaleperson.olaDetail
        ViewData("olaFind") = AdaWebPos.My.Resources.resLCcvcSaleperson.olaFind
        ViewData("olaFTSpnRmk") = AdaWebPos.My.Resources.resLCcvcSaleperson.olaFTSpnRmk
        ViewData("olaFTSpnTel") = AdaWebPos.My.Resources.resLCcvcSaleperson.olaFTSpnTel
        ViewData("olaCHKDel") = Resources.resGBMsg.tMsgBoxCHKDel
        ViewData("olaselect") = Resources.resGBMsg.tMsgSelect
        ViewData("tMsgNotAuthorize") = Resources.resGBMsg.tMsgNotAuthorize
        ViewData("tMsgErrorData") = Resources.resGBMsg.tMsgErrorData
        
        ViewData("oimgSave") = Url.Content(Resources.resGBImageList.oimgSave)
        ViewData("oimgUndo") = Url.Content(Resources.resGBImageList.oimgUndo)
        ViewData("oimgBrowse") = Url.Content(Resources.resGBImageList.oimgBrowse)
    End Sub

   
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    <%=ViewData("olaHeaderEdit")%></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<script type="text/javascript">
    window.onload = window_onload;
    function window_onload() {
        tJ002_VirtualDirectory = '<%=Session("VirtualDirectory")%>';
        tJ003_VirtualDirectory = '<%=Session("VirtualDirectory")%>'; //*CH 20-02-2013
        J002_SETxReadOnly("otbFTSpnCode", true);
        document.getElementById("otbFTSpnCode").onkeydown = function() { return false; };
    }

    function W_FRMxGenCode() {
        JS001_GETtAutoGenCode('cvcSaleperson', 'C_GETxAutoGenCode', document.getElementById('otbFTSpnCode'));
    }

    function W_FRMxFormClose() {
        J003_SHWxWaiting();
        window.location = '<%=Url.Action("Index","cvcSaleperson")%>';
    }

    function W_FRMxSaveDocument() {
        J003_SHWxWaiting();
        var tName = J002_STRttrim(document.getElementById("otbFTSpnName").value);
        if (tName == "" || tName == null) {
            alert('<%=ViewData("tMsgErrorData")%>');
            document.getElementById("otbFTSpnName").focus();
            J003_DISxWaiting();
            return false;
        }

        var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Edit%>';
        var tPwdAllow = '<%=Session("bVB_CNPwdAllow")%>';
        var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
        var bAllow = J002_CHKtCheckAuthorize('omnMngSpn', tAuthor, tPwdAllow, tMsgNotAuthorize);
        if (bAllow == false) {
            J003_DISxWaiting();
            return false;
        }
        else {
            document.wSalepersonEdit.submit();
        }
    }

</script>
    
<%  Using Html.BeginForm("C_Edit", "cvcSaleperson", FormMethod.Post, New With {.collection = "cmlSaleperson", .name = "wSalepersonEdit", .id = "wSalepersonEdit"})%>
 <div class="xW_DivMain xCN_AllFontFamily xCN_AllFontSize xCN_AllFontColor" >
    <div style="display:none">
        <input type="hidden" value="<%=model.FDDateUpd%>" name="FDDateUpd" />
        <input type="hidden" value="<%=model.FTTimeUpd%>" name="FTTimeUpd" />
        <input type="hidden" value="<%=model.FTWhoUpd%>" name="FTWhoUpd" />
        <input type="hidden" value="<%=model.FDDateIns%>" name="FDDateIns" />
        <input type="hidden" value="<%=model.FTTimeIns%>" name="FTTimeIns" />
        <input type="hidden" value="<%=model.FTWhoIns%>" name="FTWhoIns" />
    </div>
    <%-------------------ชื่อเอกสาร---------------------------%>   
    <div class="xW_DivSearch">
        <div class='xW_DivPath'>
            <label id="olaTopicName" ><%=ViewData("olaHeaderEdit")%></label> 
        </div>    
    </div>
    <%-------------------เมนู-------------------------------%>   
    <div id="odiMenuTop" class="xCN_DivMainMenuPage xCN_AllBorderColor">
          <div id="odiMenu" class="xW_DivMenu">
                <div id="odiMenuNew" class="xCN_DivMenuSave" style="float: left;">
                    <a onclick="W_FRMxSaveDocument()" href="javascript:void(0)">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaCanSave")%>
                        </div>
                    </a>
                </div>
                <div id="odiMenuDelete" class="xCN_DivMenuHome" style="float: left;">
                    <a onclick = "W_FRMxFormClose()" href="javascript:void(0)">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaHeaderList")%>
                        </div>
                    </a>
                </div>
          </div>
    </div>
    <%-------------------ส่วนรายละเอียด-------------------------%>  
        <div class="xCN_AllBorderColor xCN_AllBackgroundColor xCN_DivMainMenuPage" style='height:525px;'>
                <div class="xW_DivCaption">
                    <div class="xW_DivCaptionSub xCN_AllFontColorTextReq">
                        <label>*<%=ViewData("olaFTSpnCode")%></label>
                    </div>
                    <div class="xW_DivCaptionSub xCN_AllFontColorTextReq">
                        <label>*<%=ViewData("olaFTSpnName")%></label>
                    </div>
                    <div class="xW_DivCaptionAddress">
                        <label><%=ViewData("olaFTSpnAddr")%></label>
                    </div>
                    <div class="xW_DivCaptionSub">
                        <label><%=ViewData("olaFTSpnTel")%></label>
                    </div>
                    <div class="xW_DivCaptionSub">
                        <label><%=ViewData("olaFTSpnRmk")%></label>
                    </div>
                  
                </div>
                <div class="xW_DivData">
                    <div class="xW_DivDataSub">
                        <div class="xW_DivCode ">
                            <input type="text" 
                                value="<%=model.FTSpnCode%>" 
                                id="otbFTSpnCode" 
                                name="FTSpnCode" 
                                readonly="readonly"
                                class="xW_InputTextCode xCN_AllReadOnlyBGColor"
                                onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)"
                                maxlength = '5' />
                            <%=Html.ValidationMessageFor(Function(model) model.FTSpnCode)%>
                        </div>               
                    </div>
                    <div class="xW_DivDataSub">
                        <input type="text" style ="width:230px" value="<%=model.FTSpnName%>" 
                            id="otbFTSpnName" 
                            name="FTSpnName"  
                            onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)"
                            maxlength ="100" />
                        <%=Html.ValidationMessageFor(Function(model) model.FTSpnName)%>
                    </div>
                    <div class="xW_DivDataAddress">
                        <textarea  
                            id="otbFTSpnAddr" style ="width:230px"
                            name="FTSpnAddr" 
                            cols="0" 
                            rows="3" 
                            onkeydown="return J002_SETxMaxLength(this, 200, event.keyCode, event.which);" 
                            onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)"
                            class="xW_TextAreaAddress" ><%=Model.FTSpnAddr%></textarea>
                         <%=Html.ValidationMessageFor(Function(model) model.FTSpnAddr)%>
                    </div>
                    <div class="xW_DivDataSub">
                        <input type="text" style ="width:230px"
                            value="<%=model.FTSpnTel%>" 
                            id="otbFTSpnTel" 
                            name="FTSpnTel" 
                            maxlength ="50" />
                        <%=Html.ValidationMessageFor(Function(model) model.FTSpnTel)%>
                    </div>
                    <div class="xW_DivDataAddress">
                        <textarea  
                            id="otbFTSpnRmk" style ="width:230px"
                            name="FTSpnRmk" 
                            cols="0" 
                            rows="3" 
                            onkeydown="return J002_SETxMaxLength(this, 150, event.keyCode, event.which);" 
                            onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)"
                            class="xW_TextAreaAddress" ><%=Model.FTSpnRmk%></textarea>
                        <%=Html.ValidationMessageFor(Function(model) model.FTSpnRmk)%>
                    </div>            
           
            </div>
        </div>
 </div>

<% End Using %>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
 <link type="text/css" rel="Stylesheet" href="<%=Url.Content("~/Content/AdaCss/Local/FCS_cvcManagementLocal.css")%>" />
   
    <style type="text/css">
        #otbFTSpnCode
        {
            margin-bottom: 0px;
        }
    </style>
   
</asp:Content>

