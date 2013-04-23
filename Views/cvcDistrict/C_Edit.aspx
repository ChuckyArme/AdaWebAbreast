<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage(Of Adasoft.WebPos.Models.cmlTCNMDistrict)" %>
<%@ Import Namespace="System.Resources" %>
<%@ Import Namespace="AdaWebPos" %>
<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
         Dim tLastLang As String = Session("tVB_LastLang")

        If tLastLang Is Nothing AndAlso tLastLang = "" Then
            AdaWebPos.My.Resources.resLCcvcDistrict.Culture = New System.Globalization.CultureInfo("EN")
            Resources.resGBMsg.Culture = New System.Globalization.CultureInfo("EN")
        Else
            AdaWebPos.My.Resources.resLCcvcDistrict.Culture = New System.Globalization.CultureInfo(tLastLang)
            Resources.resGBMsg.Culture = New System.Globalization.CultureInfo(tLastLang)
        End If
        
        ViewData("olaRowID") = AdaWebPos.My.Resources.resLCcvcDistrict.olaRowID
        ViewData("olaDetail") = AdaWebPos.My.Resources.resLCcvcDistrict.olaDetail
        ViewData("olaCanEdit") = AdaWebPos.My.Resources.resLCcvcDistrict.olaCanEdit
        ViewData("olaCanDelete") = AdaWebPos.My.Resources.resLCcvcDistrict.olaCanDelete
        ViewData("olaCanSave") = AdaWebPos.My.Resources.resLCcvcDistrict.olaCanSave
        ViewData("olaCreate") = AdaWebPos.My.Resources.resLCcvcDistrict.olaCreate
        ViewData("olaFTDstCode") = AdaWebPos.My.Resources.resLCcvcDistrict.olaFTDstCode
        ViewData("olaFTDstName") = AdaWebPos.My.Resources.resLCcvcDistrict.olaFTDstName
        ViewData("olaFTDstPost") = AdaWebPos.My.Resources.resLCcvcDistrict.olaFTDstPost
        ViewData("olaFTPvnCode") = AdaWebPos.My.Resources.resLCcvcDistrict.olaFTPvnCode
        ViewData("olaMenuName") = AdaWebPos.My.Resources.resLCcvcDistrict.olaMenuName
        ViewData("olaNotAccess") = AdaWebPos.My.Resources.resLCcvcDistrict.olaNotAccess
        ViewData("olaReport") = AdaWebPos.My.Resources.resLCcvcDistrict.olaReport
        ViewData("olaHeaderEdit") = AdaWebPos.My.Resources.resLCcvcDistrict.olaHeaderEdit
        ViewData("olaHeaderAdd") = AdaWebPos.My.Resources.resLCcvcDistrict.olaHeaderAdd
        ViewData("olaHeaderDetail") = AdaWebPos.My.Resources.resLCcvcDistrict.olaHeaderDetail
        ViewData("olaHeaderList") = AdaWebPos.My.Resources.resLCcvcDistrict.olaHeaderList
        ViewData("olaDetail") = AdaWebPos.My.Resources.resLCcvcDistrict.olaDetail
        ViewData("olaBrowse") = Resources.resGBMsg.tMsgBrowse
        ViewData("tMsgErrorData") = Resources.resGBMsg.tMsgErrorData
        
        ViewData("oimgSave") = Url.Content (Resources.resGBImageList.oimgSave)
        ViewData("oimgUndo") = Url.Content (Resources.resGBImageList.oimgUndo)
        ViewData("oimgBrowse") = Url.Content (Resources.resGBImageList.oimgBrowse)
        
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
<%=ViewData("olaHeaderEdit")%></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<script type="text/javascript">
    window.onload = window_onload;
     function window_onload() {
         tJ002_VirtualDirectory = '<%=Session("VirtualDirectory") %>';
         tJ001_VirtualDirectory = '<%=Session("VirtualDirectory") %>';
         tJ003_VirtualDirectory = '<%=Session("VirtualDirectory")%>'; //*CH 20-02-2013
         W_FRMxGetFieldName('cvcDistrict', 'C_GETtFeildName', 'otbFTPvnCode', 'otbProvinceName', 'otbFTPvnCodeOld', 'TCNMProvince', 'FTPvnCode', 'FTPvnName', '<%=ViewData("olaFTPvnCode")%>');

         J002_SETxReadOnly("otbProvinceName", true);
    }

//ning 20/11/53
    function W_FRMxFormClose() {
        window.location = '<%=Url.Action("Index","cvcDistrict") %>';
    }

    function W_FRMxSaveDocument() {
        var tName = J002_STRttrim(document.getElementById("otbFTDstName").value);
        if (tName == "" || tName == null) {
            alert('<%=ViewData("tMsgErrorData")%>');
            document.getElementById("otbFTDstName").focus();
            return false;
        }

        var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Edit%>';
        var tPwdAllow = '<%=AdaWebPos.cCNVB.bVB_CNPwdAllow %>';
        var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
        var bAllow = J002_CHKtCheckAuthorize('omnMngDist', tAuthor, tPwdAllow, tMsgNotAuthorize);
        if (bAllow == false) {
            return false;
        }
        else {
            document.wEditDistrict.submit();
        }

    }
    function W_DATxBrwProvince() {
        var ptCase = "PvnCode";
        var tDate = J002_GETtTimeStamp();
        var tReturnedValue = showModalDialog('<%=Url.Action("C_BRWxMaster","cvcDistrict") %>'+'/?ptCase=' + ptCase + '&ptDate=' + tDate, "Passed String", "dialogWidth:800px; dialogHeight:500px; status:no; center:yes;titlebar =0");
        if (tReturnedValue != undefined) {
            if (tReturnedValue != '12233344445555566666677777778888888899999999900000000001223334444555556666667777777888888889999999990000000000') {
                document.getElementById("otbFTPvnCode").value = tReturnedValue.split(";")[0];
                document.getElementById("otbProvinceName").value = tReturnedValue.split(";")[1];
            }
        }

    }

    function otbFTPvnCode_OnKeyDown() {
        if (window.event.keyCode == 13) {
            W_FRMxGetFieldName('cvcDistrict', 'C_GETtFeildName', 'otbFTPvnCode', 'otbProvinceName', 'otbFTPvnCodeOld', 'TCNMProvince', 'FTPvnCode', 'FTPvnName', '<%=ViewData("olaFTPvnCode")%>');
            return !(window.event && window.event.keyCode == 13);
        }
    }
    
    function otbFTPvnCode_Onblur() {

        W_FRMxGetFieldName('cvcDistrict', 'C_GETtFeildName', 'otbFTPvnCode', 'otbProvinceName', 'otbFTPvnCodeOld', 'TCNMProvince', 'FTPvnCode', 'FTPvnName', '<%=ViewData("olaFTPvnCode")%>');

    }

    function W_FRMxGetFieldName(ptController, ptAction, ptObjCodeId, ptObjNameId, ptObjCodeOldId, ptTblName, ptFieldCode, ptFieldName, ptMsgErr) {
        var tMsgNoData = '<%=ViewData("tMsgDAT_Notfound001")%>' + ptMsgErr;
        J002_GETxFieldName(ptController, ptAction, ptObjCodeId, ptObjNameId, ptObjCodeOldId, ptTblName, ptFieldCode, ptFieldName, tMsgNoData)

    }
    
</script>


<%  Using Html.BeginForm("C_Edit", "cvcDistrict", FormMethod.Post, New With {.collection = "cmlDistric", .ID = "District_Edit", .name = "wEditDistrict"})%>
<!-- เอา class xCN_AllBackgroundColor xCN_AllBorderColor ออก -->
 <div class="xW_DivMain xCN_AllFontFamily xCN_AllFontSize xCN_AllFontColor" >
    <div style="display:none">
        <input type="hidden" value="<%=model.FDDateUpd%>" name="FDDateUpd" />
        <input type="hidden" value="<%=model.FTTimeUpd%>" name="FTTimeUpd" />
        <input type="hidden" value="<%=model.FTWhoUpd%>" name="FTWhoUpd" />
        <input type="hidden" value="<%=model.FDDateIns%>" name="FDDateIns" />
        <input type="hidden" value="<%=model.FTTimeIns%>" name="FTTimeIns" />
        <input type="hidden" value="<%=model.FTWhoIns%>" name="FTWhoIns" />
        <input type="hidden" id="otbFTPvnCodeOld" />
    </div>
    <%-------------------ชื่อเอกสาร---------------------------%>   
    <%--<div class="xCN_DivManageTopic xCN_AllMenuFontSize">--%>
    <div class="xW_DivSearch">
        <div class='xW_DivPath'>
            <label id="olaTopicName" ><%=ViewData("olaHeaderEdit")%></label> 
        </div>
    </div>
    <%--</div>--%>
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
        <div class=" xCN_AllBackgroundColor xCN_AllBorderColor xCN_DivMainMenuPage" style='height:525px;'>
                <div class="xW_DivCaption">
                    <div class="xW_DivCaptionSub xCN_AllFontColorTextReq">
                        <label>*<%=ViewData("olaFTDstCode")%></label>
                    </div>
                    <div class="xW_DivCaptionSub xCN_AllFontColorTextReq">
                        <label>*<%=ViewData("olaFTDstName")%></label>
                    </div>
                    <div class="xW_DivCaptionSub">
                        <label><%=ViewData("olaFTDstPost")%></label>
                    </div>
                    <div class="xW_DivCaptionSub">
                        <label><%=ViewData("olaFTPvnCode")%></label>
                    </div>                 
                </div>
                <div class="xW_DivData">
                    <div class="xW_DivDataSub">
                        <div class="xW_DivCode" style="float:left">
                            <input type="text" 
                                value="<%=model.FTDstCode%>" 
                                id="otbFTDstCode" 
                                name="FTDstCode" 
                                readonly="readonly"
                                class="xW_InputTextCode xCN_AllReadOnlyBGColor"
                                onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)"
                                maxlength = '5' />
                        </div>
                        <div>
                            <%=Html.ValidationMessageFor(Function(model) model.FTDstCode)%>
                        </div>               
                    </div>
                    <div class="xW_DivDataSub">
                        <div style="float:left">
                        <input type="text"  value="<%=model.FTDstName%>" 
                            id="otbFTDstName" style ="width:230px"
                            name="FTDstName"  
                            onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)"
                            maxlength ="100" />
                        </div>
                        <div>
                            <%=Html.ValidationMessageFor(Function(model) model.FTDstName)%>
                        </div>
                    </div>
                    <div class="xW_DivDataSub">
                        <input type="text" value="<%=model.FTDstPost%>" 
                                id="otbFTDstPost" style ="width:230px"
                                name="FTDstPost"  
                                onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)"
                                maxlength ="10" />
                         <%=Html.ValidationMessageFor(Function(model) model.FTDstPost)%>
                    </div>
                    <div class="xW_DivDataSub">
                        <div class="xW_DivCode">
                            <input type="text" 
                                value="<%=model.FTPvnCode%>" 
                                id="otbFTPvnCode" 
                                name="FTPvnCode" 
                                onblur="otbFTPvnCode_Onblur()"
                                class="xW_InputTextCode"
                                onfocus="J002_SETxKeepOldOnfocus()"
                                onkeydown="otbFTPvnCode_OnKeyDown()"
                                onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)"
                                maxlength ="5" />
                                <%=Html.ValidationMessageFor(Function(model) model.FTPvnCode)%>
                        </div>
                        <div class="xCN_DivBrowData">
                            <img id="oimBrowse" 
                             onclick="W_DATxBrwProvince()"
                             src="<%=ViewData("oimgBrowse")%>"  alt=""/>
                        </div>
                        <div class="xW_DivProvince">
                            <input type="text" id="otbProvinceName" style ="width:95px" />
                        </div>

                    </div>         
            </div>
        </div>
 </div>  

<% End Using %>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
 <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J002_General.js") %>"></script>
 <link type="text/css" rel="Stylesheet" href="<%=Url.Content("~/Content/AdaCss/Local/FCS_cvcManagementLocal.css") %>" />
 <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J001_LoadAutoGenCode.js") %>"></script>
</asp:Content>




