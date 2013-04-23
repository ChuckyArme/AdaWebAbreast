<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage(Of Adasoft.WebPos.Models.cmlTCNMTnfReason)" %>
<%@ Import Namespace="System.Resources" %>
<%@ Import Namespace="AdaWebPos" %>
<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tLastLang As String = Session("tVB_LastLang")
        
        If tLastLang Is Nothing AndAlso tLastLang = "" Then
            AdaWebPos.My.Resources.resLCcvcTCNMTnfReason.Culture = New System.Globalization.CultureInfo("EN")
            Resources.resGBMsg.Culture = New System.Globalization.CultureInfo("EN")
        Else
            AdaWebPos.My.Resources.resLCcvcTCNMTnfReason.Culture = New System.Globalization.CultureInfo(tLastLang)
            Resources.resGBMsg.Culture = New System.Globalization.CultureInfo(tLastLang)
        End If
        
        ViewData("olaCancle") = AdaWebPos.My.Resources.resLCcvcTCNMTnfReason.olaCancle
        ViewData("olaCanDelete") = AdaWebPos.My.Resources.resLCcvcTCNMTnfReason.olaCanDelete
        ViewData("olaCanEdit") = AdaWebPos.My.Resources.resLCcvcTCNMTnfReason.olaCanEdit
        ViewData("olaCanSave") = AdaWebPos.My.Resources.resLCcvcTCNMTnfReason.olaCanSave
        ViewData("olaBack") = AdaWebPos.My.Resources.resLCcvcTCNMTnfReason.olaBack
        ViewData("olaCreate") = AdaWebPos.My.Resources.resLCcvcTCNMTnfReason.olaCreate
        ViewData("olaFTTrnCode") = AdaWebPos.My.Resources.resLCcvcTCNMTnfReason.olaFTTrnCode
        ViewData("olaFTTrnName") = AdaWebPos.My.Resources.resLCcvcTCNMTnfReason.olaFTTrnName
        ViewData("olaHeadCanEdit") = AdaWebPos.My.Resources.resLCcvcTCNMTnfReason.olaHeadCanEdit
        ViewData("olaHeadCreate") = AdaWebPos.My.Resources.resLCcvcTCNMTnfReason.olaHeadCreate
        ViewData("olaCHKDel") = Resources.resGBMsg.tMsgBoxCHKDel
        ViewData("olaselect") = Resources.resGBMsg.tMsgSelect
        ViewData("olaFind") = AdaWebPos.My.Resources.resLCcvcTCNMTnfReason.olaFind
        ViewData("olaFTTrnStaIn") = AdaWebPos.My.Resources.resLCcvcTCNMTnfReason.olaFTTrnStaIn
        ViewData("olaFTTrnStaOut") = AdaWebPos.My.Resources.resLCcvcTCNMTnfReason.olaFTTrnStaOut
        ViewData("olaMenuName") = AdaWebPos.My.Resources.resLCcvcTCNMTnfReason.olaMenuName
        
        ViewData("olaBrowse") = Resources.resGBMsg.tMsgBrowse
        ViewData("tMsgDAT_Notfound001") = Resources.resGBMsg.tMsgDAT_Notfound001
        ViewData("tMsgWahCheckDuplicate") = Resources.resGBMsg.tMsgWahCheckDuplicate
        ViewData("tMsgErrorData")=Resources.resGBMsg.tMsgErrorData
        ViewData("tMsgErroMaxGenCode")=Resources.resGBMsg.tMsgErroMaxGenCode
                    
        ViewData("oimgSave") = Url.Content(Resources.resGBImageList.oimgSave)
        ViewData("oimgUndo") = Url.Content(Resources.resGBImageList.oimgUndo)
        ViewData("oimgGencode") = Url.Content(Resources.resGBImageList.oimgGencode)
        ViewData("oimgBrowse") = Url.Content(Resources.resGBImageList.oimgBrowse)
        
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
<%=ViewData("olaMenuName")%></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 
<script type="text/javascript" >
    window.onload = window_onload;
    function window_onload() {
        tJ001_VirtualDirectory = '<%=Session("VirtualDirectory") %>';
        tJ002_VirtualDirectory = '<%=Session("VirtualDirectory") %>';
        tJ003_VirtualDirectory = '<%=Session("VirtualDirectory")%>'; //*CH 20-02-2013
        W_CHKxLoadHQ();
        J002_SETxReadOnly("otbFTTrnCode", true);

        
    }
    function W_CHKxLoadHQ() {
        var FTTrnStaIn = '<%=model.FTTrnStaIn%>';
        var FTTrnStaOut = '<%=model.FTTrnStaOut%>';
        if (FTTrnStaIn == true  && FTTrnStaOut == true ) {
            document.getElementById('FTTrnStaIn').value = '1';
            document.getElementById('FTTrnStaOut').value = '1';
            document.getElementById('otbFTTrnStaIn').checked = true;
            document.getElementById('otbFTTrnStaOut').checked = true;
        }
        else if (FTTrnStaIn == true && FTTrnStaOut == false ) {
        document.getElementById('FTTrnStaIn').value = '1';
        document.getElementById('FTTrnStaOut').value = '0';
        document.getElementById('otbFTTrnStaIn').checked = true;
        document.getElementById('otbFTTrnStaOut').checked = false;
        }
        else if (FTTrnStaIn == false  && FTTrnStaOut == true) {
            document.getElementById('FTTrnStaIn').value = '0';
            document.getElementById('FTTrnStaOut').value = '1';
            document.getElementById('otbFTTrnStaIn').checked = false;
            document.getElementById('otbFTTrnStaOut').checked = true;
        }

    }

    function W_FRMxGenCode() {
        J001_GETtAutoGenCode('cvcTCNMTnfReason', 'C_Create_GetAutoCode', document.getElementById('FTTrnCode'));
        J002_SETxReadOnly("FTTrnCode", false);

        var tCode = document.getElementById('FTTrnCode').value;
        if (tCode == "Adasoft.Abreast.MaxValue") {
            document.getElementById('FTTrnCode').value = "";
            document.getElementById('FTTrnCode').focus();
            J003_SHWxWaiting();
            alert('<%=ViewData("tMsgErroMaxGenCode")%>');
            J003_DISxWaiting();
            return false;
        }
        return true;
    }

    function W_FRMxForwClose() {
        J003_SHWxWaiting();
        window.location = '<%=Url.Action("Index","cvcTCNMTnfReason") %>';
    }

    function W_FRMxSaveDocument() {
        J003_SHWxWaiting();
        var tCode = document.getElementById("FTTrnCode").value;
        var tName = J002_STRttrim(document.getElementById("FTTrnName").value);
        if (tCode == "" || tCode == null) {
            alert('<%=ViewData("tMsgErrorData")%>');
            document.getElementById("FTTrnCode").focus();
            J003_DISxWaiting();
            return false;
        }
        if (tName == "" || tName == null) {
            alert('<%=ViewData("tMsgErrorData")%>');
            document.getElementById("FTTrnName").focus();
            J003_DISxWaiting();
            return false;
        }

        var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Add%>';
        var tPwdAllow = '<%=AdaWebPos.cCNVB.bVB_CNPwdAllow %>';
        var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
        var bAllow = J002_CHKtCheckAuthorize('omnReason', tAuthor, tPwdAllow, tMsgNotAuthorize);
        if (bAllow == false) {
            J003_DISxWaiting();
            return false;
        }
        else {
            W_CHKbBchHQ();
            document.wTCNMTnfReasonEdit.submit();
        }
    }

    function W_CHKbStockDuplicate() {
        var bDuplicate = false;
        var tReturn = '';
        var tDate = J002_GETtTimeStamp();
        var oHttp = J002_GEToXMLHttpRequest();
        var tStkCode = document.getElementById("otbFTBchWheStk").value;
        ///cvcTCNMTnfReason/W_CHKbWarehouse
        var tUrl = '<%=Url.Action("W_CHKbWarehouse","cvcTCNMTnfReason") %>?ptStkCode=' + tStkCode + "&ptDate=" + tDate;
        oHttp.open("GET", encodeURI(tUrl), false);
        oHttp.send(null);
        tReturn = oHttp.responseText;

        var aValue = tReturn.split("|");
        if (aValue[0] != null || aValue != "") {
            return false;
        }
        if (aValue[1] == '1') {
            alert('<%=ViewData("tMsgWahCheckDuplicate")%>');
            document.getElementById('otbFTBchWheStk').value = '';
            document.getElementById('otbFTBchWheStkName').value = '';
            return false;
        }
        return true;
    }

    function otbFTBchWheStk_Onblur() {
        W_FRMxGetFieldName('cvcTCNMTnfReason', 'C_GETtFeildName_WheStk', 'otbFTBchWheStk', 'otbFTBchWheStkName', 'otbFTBchWheStkOld', 'TCNMWaHouse', 'FTWahCode', 'FTWahName', '<%=ViewData("olaFTBchWheStk")%>');
        W_CHKbStockDuplicate();
    }


    function otbFTBchWheStk_OnKeyDown() {
        if (window.event.keyCode == 13) {
            W_FRMxGetFieldName('cvcTCNMTnfReason', 'C_GETtFeildName', 'otbFTBchWheStk', 'otbFTBchWheStkName', 'otbFTBchWheStkOld', 'TCNMWaHouse', 'FTWahCode', 'FTWahName', '<%=ViewData("olaFTBchWheStk")%>');
            return !(window.event && window.event.keyCode == 13);
        }
    }
    function otbFTZneCode_OnKeyDown() {
        if (window.event.keyCode == 13) {
            W_FRMxGetFieldName('cvcTCNMTnfReason', 'C_GETtFeildName', 'otbFTZneCode', 'otbFTZneName', 'otbFTZneCodeOld', 'TCNMZone', 'FTZneCode', 'FTZneName', '<%=ViewData("olaFTZneCode")%>');
            return !(window.event && window.event.keyCode == 13);
        }
    }
    function otbFTZneCode_Onblur() {

        W_FRMxGetFieldName('cvcTCNMTnfReason', 'C_GETtFeildName', 'otbFTZneCode', 'otbFTZneName', 'otbFTZneCodeOld', 'TCNMZone', 'FTZneCode', 'FTZneChainName', '<%=ViewData("olaFTZneCode")%>');

    }

    function W_DATxBrwData(ptCase, pObjID, pObjName) {
        J003_SHWxWaiting();
        var tDate = J002_GETtTimeStamp();
        var tBchCode = '';
        if (ptCase == 'StkCode') {
            var tBchCode = document.getElementById('otbFTBchWheStk').value;
        }
        var tReturnedValue = showModalDialog('<%=Url.Action("C_BRWxMaster","cvcTCNMTnfReason") %>' + '?ptCase=' + ptCase + '&ptBchCode=' + tBchCode + '&ptDate=' + tDate, "Passed String", "dialogWidth:800px; dialogHeight:500px; status:no; center:yes;titlebar =0");
        //var tReturnedValue = showModalDialog('/cvcTCNMTnfReason' + '/C_BRWxMaster?ptCase=' + ptCase  + '&ptBchCode=' + tBchCode + '&ptDate=' + tDate, "Passed String", "dialogWidth:800px; dialogHeight:500px; status:no; center:yes;titlebar =0");
        if (tReturnedValue != undefined) {
            if (tReturnedValue != '12233344445555566666677777778888888899999999900000000001223334444555556666667777777888888889999999990000000000') {
                document.getElementById(pObjID).value = tReturnedValue.split(";")[0];
                document.getElementById(pObjName).value = tReturnedValue.split(";")[1];
            }
        }
        J003_DISxWaiting();
    }

    function W_FRMxGetFieldName(ptController, ptAction, ptObjCodeId, ptObjNameId, ptObjCodeOldId, ptTblName, ptFieldCode, ptFieldName, ptMsgErr) {
        var tMsgNoData = '<%=ViewData("tMsgDAT_Notfound001")%>' + ptMsgErr;
        J002_GETxFieldName(ptController, ptAction, ptObjCodeId, ptObjNameId, ptObjCodeOldId, ptTblName, ptFieldCode, ptFieldName, tMsgNoData)

    }
    function W_FRMxShowOption() {
        //var tDate = J002_GETtTimeStamp();
        J003_BRWxAutoCode('TCNMBranch', 'FTTrnCode', '0');
        //        showModalDialog('/cvcOption/Index' + '?ptDate=' + tDate, "Passed String", "dialogWidth:800px" + "px; dialogHeight:650px" + "px; status:no; center:yes;titlebar =0");
    }

    function W_FRMxForwClose() {
        J003_SHWxWaiting();
        window.location = '<%=Url.Action("Index","cvcTCNMTnfReason") %>';
    }
    function W_CHKbBchHQ() {
        var VStaIn = document.getElementById('otbFTTrnStaIn').checked;
        var VStaOut = document.getElementById('otbFTTrnStaOut').checked;
        if (VStaIn == true && VStaOut == true) {
            document.getElementById('FTTrnStaIn').value = '1';
            document.getElementById('FTTrnStaOut').value = '1';
        }
        else if (VStaIn == true && VStaOut == false) {
            document.getElementById('FTTrnStaIn').value = '1';
            document.getElementById('FTTrnStaOut').value = '0';
        }
        else if (VStaIn == false && VStaOut == true) {
            document.getElementById('FTTrnStaIn').value = '0';
            document.getElementById('FTTrnStaOut').value = '1';
        }
        else if (VStaIn == false && VStaOut == false) {
            document.getElementById('FTTrnStaIn').value = '0';
            document.getElementById('FTTrnStaOut').value = '0';
        }

    }
</script>
<%  Using Html.BeginForm("C_Edit", "cvcTCNMTnfReason", FormMethod.Post, New With {.collection = "cmlTCNMTnfReason", .id = "wTCNMTnfReasonEdit", .name = "wTCNMTnfReasonEdit"})%>
<div class="xW_DivMain xCN_AllFontFamily xCN_AllFontSize xCN_AllFontColor" >
    <div style="display:none">
        <input type="hidden" value="<%=model.FDDateUpd%>" name="FDDateUpd" />
        <input type="hidden" value="<%=model.FTTimeUpd%>" name="FTTimeUpd" />
        <input type="hidden" value="<%=model.FTWhoUpd%>" name="FTWhoUpd" />
        <input type="hidden" value="<%=model.FDDateIns%>" name="FDDateIns" />
        <input type="hidden" value="<%=model.FTTimeIns%>" name="FTTimeIns" />
        <input type="hidden" value="<%=model.FTWhoIns%>" name="FTWhoIns" />
        <input type="hidden" id="otbFTBchWheStkOld" />
        <input type="hidden" id="FTTrnStaIn" name="FTTrnStaIn" />
        <input type="hidden" id="FTTrnStaOut" name="FTTrnStaOut" />
        <input type ="hidden" id="otbFTZneCodeOld" />
    </div>
    <%-------------------ชื่อเอกสาร---------------------------%>   
    <!--<div class="xCN_DivManageTopic xCN_AllMenuFontSize">-->
        <div class="xW_DivSearch">
            <div class='xW_DivPath'>
                <label id="Label1" ><%=ViewData("olaHeadCanEdit")%></label> 
            </div>
        </div>        
    <!--</div>-->
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
                <div id ="odiMenuHome" class="xCN_DivMenuHome" style="float:left;">
                    <a href="javascript:void();" onclick="W_FRMxForwClose()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaBack")%>
                        </div>
                    </a>
                </div>  
          </div>
    </div>
    <%-------------------ส่วนรายละเอียด-------------------------%>  
        <%--<div class="xW_DivDetail xCN_AllBorderColor">--%>
        <div class="xCN_DivMainMenuPage xCN_AllBackgroundColor xCN_AllBorderColor" style='height:525px'>
                <div class="xW_DivCaption" style="width:100px">
                    <div class="xW_DivCaptionSub xCN_AllFontColorTextReq">
                        <label>*<%=ViewData("olaFTTrnCode")%></label>
                    </div>    
                    <div class="xW_DivCaptionSub xCN_AllFontColorTextReq" style="width:100px">
                        <label>*<%=ViewData("olaFTTrnName")%></label>
                    </div> 
                    <div class="xW_DivCaptionSub xCN_AllFontColorTextReq">
                    <input type = "checkbox" 
                                id="otbFTTrnStaIn" onclick="W_CHKbBchHQ()"
                                 style ="width :150px" />  
                    </div> 
                     <div class="xW_DivCaptionSub xCN_AllFontColorTextReq">
                    <input type = "checkbox"
                                id="otbFTTrnStaOut" onclick="W_CHKbBchHQ()"
                                 style ="width :150px"/>  
                    </div> 
                
                </div>
                <div class="xW_DivData">
                    <div class="xW_DivDataSub">
                        <div class="xW_DivCode">
                            <input type="text" 
                                value="<%=model.FTTrnCode%>" 
                                id="FTTrnCode" 
                                name="FTTrnCode" readonly ="readonly" 
                                class="xW_InputTextCode xCN_AllReadOnlyBGColor"
                                maxlength = '<%=ViewData("MaxLenght") %>' />
                        </div>
                        <div>
                            <%=Html.ValidationMessageFor(Function(model) model.FTTrnCode)%>
                        </div>             
                    </div>
                         <div class="xW_DivDataSub">
                        <div class="xW_DivCode">
                           <input type="text" value ="<%=model.FTTrnName %>" 
                                id="FTTrnName" 
                                name="FTTrnName" style ="width : 200px" />
                        </div>
            
                      </div>
                      
                      <div class="xW_DivDataSub">
                        <div class="xW_DivCode">
                           
                            <label ><%=ViewData("olaFTTrnStaIN")%></label>
                        </div>
            
                      </div>
                      <div class="xW_DivDataSub">
                        <div class="xW_DivCode">
                           
                            <label ><%=ViewData("olaFTTrnStaOut")%></label>
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
 <script type="text/javascript" src ="<%=Url.Content("~/Scripts/AdaScript/J011_ComboBoxLibrary.js") %>"></script>
 <script type ="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J003_SplashDialog.js") %>"></script>
</asp:Content>


