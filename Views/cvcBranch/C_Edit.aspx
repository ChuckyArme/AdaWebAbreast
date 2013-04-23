<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage(Of Adasoft.WebPos.Models.cmlTCNMBranch)" %>
<%@ Import Namespace="System.Resources" %>
<%@ Import Namespace="AdaWebPos" %>
<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tLastLang As String = Session("tVB_LastLang")
        
        If tLastLang Is Nothing AndAlso tLastLang = "" Then
            AdaWebPos.My.Resources.resLCcvcBranch.Culture = New System.Globalization.CultureInfo("EN")
            AdaWebPos.My.Resources.resLCcvcCompany.Culture = New System.Globalization.CultureInfo("EN")
            Resources.resGBMsg.Culture = New System.Globalization.CultureInfo("EN")
        Else
            AdaWebPos.My.Resources.resLCcvcBranch.Culture = New System.Globalization.CultureInfo(tLastLang)
            AdaWebPos.My.Resources.resLCcvcCompany.Culture = New System.Globalization.CultureInfo(tLastLang)
            Resources.resGBMsg.Culture = New System.Globalization.CultureInfo(tLastLang)
        End If
        
        ViewData("olaRowID") = AdaWebPos.My.Resources.resLCcvcBranch.olaRowID
        ViewData("olaCanEdit") = AdaWebPos.My.Resources.resLCcvcBranch.olaCanEdit
        ViewData("olaCanDelete") = AdaWebPos.My.Resources.resLCcvcBranch.olaCanDelete
        ViewData("olaCanSave") = AdaWebPos.My.Resources.resLCcvcBranch.olaCanSave
        ViewData("olaCreate") = AdaWebPos.My.Resources.resLCcvcBranch.olaCreate
        ViewData("olaFTBchCode") = AdaWebPos.My.Resources.resLCcvcBranch.olaFTBchCode
        ViewData("olaFTBchName") = AdaWebPos.My.Resources.resLCcvcBranch.olaFTBchName
        ViewData("olaFTBchHQ") = AdaWebPos.My.Resources.resLCcvcBranch.olaFTBchHQ
        ViewData("olaFTBchWheStk") = AdaWebPos.My.Resources.resLCcvcBranch.olaFTBchWheStk
        ViewData("olaFTCvrVersion") = AdaWebPos.My.Resources.resLCcvcBranch.olaFTCvrVersion
        ViewData("olaFTZneCode") = AdaWebPos.My.Resources.resLCcvcBranch.olaFTZneCode
        ViewData("olaMenuName") = AdaWebPos.My.Resources.resLCcvcBranch.olaMenuName
        ViewData("olaNotAccess") = AdaWebPos.My.Resources.resLCcvcBranch.olaNotAccess
        ViewData("olaReport") = AdaWebPos.My.Resources.resLCcvcBranch.olaReport
        ViewData("olaHeaderEdit") = AdaWebPos.My.Resources.resLCcvcBranch.olaHeaderEdit
        ViewData("olaHeaderAdd") = AdaWebPos.My.Resources.resLCcvcBranch.olaHeaderAdd
        ViewData("olaHeaderDetail") = AdaWebPos.My.Resources.resLCcvcBranch.olaHeaderDetail
        ViewData("olaHeaderList") = AdaWebPos.My.Resources.resLCcvcBranch.olaHeaderList
        ViewData("olaDetail") = AdaWebPos.My.Resources.resLCcvcBranch.olaDetail
        ViewData("olaBrowse") = Resources.resGBMsg.tMsgBrowse
        ViewData("tMsgDAT_Notfound001") = Resources.resGBMsg.tMsgDAT_Notfound001
        ViewData("tMsgErrorData")=Resources.resGBMsg.tMsgErrorData
        ViewData("olaPriority") = AdaWebPos.My.Resources.resLCcvcBranch.olaPriority
        ViewData("olaTabDetail") = AdaWebPos.My.Resources.resLCcvcBranch.olaTabDetail
        ViewData("olaTabMap") = AdaWebPos.My.Resources.resLCcvcCompany.olaTabMap
                        
        ViewData("olaFTCmpAddr") = AdaWebPos.My.Resources.resLCcvcCompany.olaFTCmpAddr
        ViewData("olaFTCmpFax") = AdaWebPos.My.Resources.resLCcvcCompany.olaFTCmpFax
        ViewData("olaFTCmpLogo") = AdaWebPos.My.Resources.resLCcvcCompany.olaFTCmpLogo
        ViewData("olaFTCmpMap") = AdaWebPos.My.Resources.resLCcvcCompany.olaFTCmpMap
        ViewData("olaFTCmpName") = AdaWebPos.My.Resources.resLCcvcCompany.olaFTCmpName
        ViewData("olaFTCmpRetInOrEx") = AdaWebPos.My.Resources.resLCcvcCompany.olaFTCmpRetInOrEx
        ViewData("olaFTCmpShop") = AdaWebPos.My.Resources.resLCcvcCompany.olaFTCmpShop
        ViewData("olaFTCmpTaxNo") = AdaWebPos.My.Resources.resLCcvcCompany.olaFTCmpTaxNo
        ViewData("olaFTCmpTel") = AdaWebPos.My.Resources.resLCcvcCompany.olaFTCmpTel
        ViewData("olaFTCmpWhsInOrEx") = AdaWebPos.My.Resources.resLCcvcCompany.olaFTCmpWhsInOrEx
        ViewData("olaFTCmpYearDisp") = AdaWebPos.My.Resources.resLCcvcCompany.olaFTCmpYearDisp
        ViewData("olaFTVatCode") = AdaWebPos.My.Resources.resLCcvcCompany.olaFTVatCode
                
        ViewData("oimgSave") = Url.Content(Resources.resGBImageList.oimgSave)
        ViewData("oimgUndo") = Url.Content(Resources.resGBImageList.oimgUndo)
        ViewData("oimgBrowse") = Url.Content(Resources.resGBImageList.oimgBrowse)
        ViewData("oimgBrwLock") = Url.Content(Resources.resGBImageList.oimgBrwLock)
        
        'Message
        ViewData("tMsgUpload") = Resources.resGBMsg.tMsgUpload 'Button
        ViewData("tMsgCancel") = Resources.resGBMsg.tMsgCancel 'Button        
        ViewData("tMsgBrwFile") = Resources.resGBMsg.tMsgBrwFile
        ViewData("tMsgBrwFileError") = Resources.resGBMsg.tMsgBrwFileError
        ViewData("tMsgBrwFileOnlyImage") = Resources.resGBMsg.tMsgBrwFileOnlyImage
        ViewData("tMsgSave_Warning") = Resources.resGBMsg.tMsgSave_Warning
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    <%=ViewData("olaHeaderEdit")%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<script type="text/javascript" >
    var tW_BrwSta = '';

    window.onload = window_onload;
    function window_onload() { 
        tJ002_VirtualDirectory = '<%=Session("VirtualDirectory") %>';
        tJ001_VirtualDirectory = '<%=Session("VirtualDirectory") %>';
        tJ003_VirtualDirectory = '<%=Session("VirtualDirectory")%>'; //*CH 20-02-2013
        var nTab = parseInt('<%=ViewData("ovd_TabIndex")%>');
        J010_SHWxTabData(nTab, 'odiDetail', 'odiMap'); J009_SHWxTabTop(nTab, 'odiDetailCap', 'odiMapCap')
        W_SHWxShowPic();
        W_CHKxLoadHQ();
        J002_SETxReadOnly("otbFTBchWheStkName", true);
        J002_SETxReadOnly("otbFTZneName", true);
        W_FRMxGetFieldName('cvcBranch', 'C_GETtFeildName', 'otbFTZneCode', 'otbFTZneName', 'otbFTZneCodeOld', 'TCNMZone', 'FTZneCode', 'FTZneChainName', '<%=ViewData("olaFTZneCode")%>');
        W_FRMxGetFieldName('cvcBranch', 'C_GETtFeildName', 'otbFTBchWheStk', 'otbFTBchWheStkName', 'otbFTBchWheStkOld', 'TCNMWaHouse', 'FTWahCode', 'FTWahName', '<%=ViewData("olaFTBchWheStk")%>');
    }

    function W_FRMxGenCode() {
        J001_GETtAutoGenCode('cvcBranch', 'C_GETxAutoGenCode', document.getElementById('otbFTBchCode'));

        var tCode = document.getElementById('otbFTBchCode').value;
        document.getElementById('otbFTBchCode').value = "";
        document.getElementById('otbFTBchCode').focus();
        if (tCode.length > 3) {
            alert('<%=ViewData("tMsgErroMaxGenCode")%>');
            return false;
        }
    }

    function W_FRMxForwClose() {
        J003_SHWxWaiting();
        var tStaChange = '<%=ViewData("ovd_tStaChange")%>';
        var tChageData = W_CHKtHasChangeData();
        if ((tStaChange == "Y") || (tChageData == "Y")) {
            var tDialogResult = J003_SHWxConfirmDialog('<%=ViewData("tMsgSave_Warning") %>', oJ003_DialogType.DialogYesNoCancel);
            switch (tDialogResult) {
                case oJ003_DialogResult.Yes:
                    W_FRMxSaveDocument();
                    break;
                case oJ003_DialogResult.Cancel: J003_DISxWaiting(); break;
                case oJ003_DialogResult.No: window.location = '<%=Url.Action("Index","cvcBranch") %>'; break;
            }
        } else { window.location = '<%=Url.Action("Index","cvcBranch") %>'; }
        J003_DISxWaiting();
    }
    function W_CHKtHasChangeData() {
        try {
            if($('#otbBchCodeHidden').val() != $('#otbFTBchCode').val()){return "Y";}
            if ($('#otbBchWheStkHidden').val() != $('#otbFTBchWheStk').val()) { return "Y"; }
            if ($('#otbCvrVersionHidden').val() != $('#otbFTCvrVersion').val()) { return "Y"; }
            if ($('#otbZneCodeHidden').val() != $('#otbFTZneCode').val()) { return "Y"; }
            if ($('#otbBchShopHidden').val() != $('#FTBchShop').val()) { return "Y"; }
            if ($('#otbBchAddrHidden').val() != $('#FTBchAddr').val()) { return "Y"; }
            if ($('#otbBchTelHidden').val() != $('#FTBchTel').val()) { return "Y"; }
            if ($('#otbBchFaxHidden').val() != $('#FTBchFax').val()) { return "Y"; }
            if ($('#otbBchTaxNoHidden').val() != $('#FTBchTaxNo').val()) { return "Y"; }
            return "N";
        }
        catch (ex) {
            J002_SHWxMsgError("W_CHKbHasChangeData", ex);
            return "N";
        }
    }

    function W_CHKxLoadHQ() {
        var bHQ = '<%=model.FTBchHQ%>';
        if (bHQ == true) {
            document.getElementById('FTBchHQ').value = '1';
            document.getElementById('ockBchHQ').checked = true;
        }
        else {
            document.getElementById('FTBchHQ').value = '2';
            document.getElementById('ockBchHQ').checked = false;
        }

    }

    function W_CHKbBchHQ() {
        var bHQ = document.getElementById('ockBchHQ').checked;
        if (bHQ == true) {
            document.getElementById('FTBchHQ').value = '1';
        }
        else {
            document.getElementById('FTBchHQ').value = '2';
        }

    }

    function W_FRMxSaveDocument() {
        J003_SHWxWaiting();
        var tCode = document.getElementById("otbFTBchCode").value;
        var tName = J002_STRttrim(document.getElementById("otbFTBchName").value);
        var tWheStk = document.getElementById("otbFTBchWheStk").value;
        if (tCode == "" || tCode == null) {
            alert('<%=ViewData("tMsgErrorData")%>');
            document.getElementById("otbFTBchCode").focus();
            J003_DISxWaiting();
            return false;
        }
        if (tName == "" || tName == null) {
            alert('<%=ViewData("tMsgErrorData")%>');
            document.getElementById("otbFTBchName").focus();
            J003_DISxWaiting();
            return false;
        }

        if (tWheStk == "" || tWheStk == null) {
            alert('<%=ViewData("tMsgErrorData")%>');
            document.getElementById("otbFTBchWheStk").focus();
            J003_DISxWaiting();
            return false;
        }

        var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Add%>';
        var tPwdAllow = '<%=AdaWebPos.cCNVB.bVB_CNPwdAllow %>';
        var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
        var bAllow = J002_CHKtCheckAuthorize('omnMngBranch', tAuthor, tPwdAllow, tMsgNotAuthorize);
        if (bAllow == false) {
            J003_DISxWaiting();
            return false;
        }
        else {
            W_CHKbBchHQ();
            document.wBranchEdit.submit();
        }
    }

    function otbFTBchWheStk_Onblur() {
        if ($('#otbFTBchWheStk').val() == '') { return false; } //*CH 03-10-2012
        W_FRMxGetFieldName('cvcBranch', 'C_GETtFeildName', 'otbFTBchWheStk', 'otbFTBchWheStkName', 'otbFTBchWheStkOld', 'TCNMWaHouse', 'FTWahCode', 'FTWahName', '<%=ViewData("olaFTBchWheStk")%>');
    }

    function otbFTBchWheStk_OnKeyDown() {
        if (window.event.keyCode == 13) {
           // var tJoinConn = " AND(FTWahStaType IN ('1','3','4','6')) AND (FTBchWheStk Is Null)AND (FTWahCode NOT IN('002','003','004','005','006')) OR (FTBchCode='" + document.getElementById('otbFTBchCode').value + "')";
            W_FRMxGetFieldName('cvcBranch', 'C_GETtFeildName', 'otbFTBchWheStk', 'otbFTBchWheStkName', 'otbFTBchWheStkOld', 'TCNMWaHouse LEFT JOIN TCNMBranch ON FTWahCode = FTBchWheStk', 'FTWahCode', 'FTWahName', '<%=ViewData("olaFTBchWheStk")%>', '');
            return !(window.event && window.event.keyCode == 13);
        }
    }
    
    function otbFTZneCode_OnKeyDown() {
        if (window.event.keyCode == 13) {
            W_FRMxGetFieldName('cvcBranch', 'C_GETtFeildName', 'otbFTZneCode', 'otbFTZneName', 'otbFTZneCodeOld', 'TCNMZone', 'FTZneCode', 'FTZneName', '<%=ViewData("olaFTZneCode")%>');
            return !(window.event && window.event.keyCode == 13);
        }
    }
    function otbFTZneCode_Onblur() {
        W_FRMxGetFieldName('cvcBranch', 'C_GETtFeildName', 'otbFTZneCode', 'otbFTZneName', 'otbFTZneCodeOld', 'TCNMZone', 'FTZneCode', 'FTZneChainName', '<%=ViewData("olaFTZneCode")%>');
    }
    function W_DATxBrwData(ptCase, pObjID, pObjName) {
        J003_SHWxWaiting();
        //ใช้ UI *CH 07-03-2013
//        var tDate = J002_GETtTimeStamp();
//        var tBchCode = '';
//        if (ptCase == 'StkCode') {
//            var tBchCode = document.getElementById('otbFTBchWheStk').value;
//        }
//        var tReturnedValue = showModalDialog('<%=Url.Action("C_BRWxMaster","cvcBranch") %>' + '?ptCase=' + ptCase + '&ptBchCode=' + tBchCode + '&ptDate=' + tDate, "Passed String", "dialogWidth:800px; dialogHeight:500px; status:no; center:yes;titlebar =0");
//        //var tReturnedValue = showModalDialog('/cvcBranch' + '/C_BRWxMaster?ptCase=' + ptCase  + '&ptBchCode=' + tBchCode + '&ptDate=' + tDate, "Passed String", "dialogWidth:800px; dialogHeight:500px; status:no; center:yes;titlebar =0");
//        if (tReturnedValue != undefined) {
//            if (tReturnedValue != '12233344445555566666677777778888888899999999900000000001223334444555556666667777777888888889999999990000000000') {
//                document.getElementById(pObjID).value = tReturnedValue.split(";")[0];
//                document.getElementById(pObjName).value = tReturnedValue.split(";")[1];
//            }
        //        }
        tW_BrwSta = ptCase;
        switch (ptCase.toUpperCase()) {
            case 'StkCode'.toUpperCase():
                W_PRCxFillData(); //*CH 18-01-2013 สั่งให้ Rebind ค่าในตารางใหม่ //Function ใน User Control
                GridMaster_onLoad();
                C_SETxObjValue(pObjID, pObjName);
                $ui('#odiBrwStkCode').dialog('open');
                break;
            case 'Zone'.toUpperCase():
                W_PRCxFillAreaData(); //*CH 18-01-2013 สั่งให้ Rebind ค่าในตารางใหม่ //Function ใน User Control
                GridMasterArea_onLoad();
                C_SETxObjValueArea(pObjID, pObjName);
                $ui('#odiBrwZone').dialog('open');
                break;
        }

        J003_DISxWaiting();
    }
    function W_FRMxGetFieldName(ptController, ptAction, ptObjCodeId, ptObjNameId, ptObjCodeOldId, ptTblName, ptFieldCode, ptFieldName, ptMsgErr, ptJoinConn) {
        if ($('#' + ptObjCodeId).val() == $('#' + ptObjCodeOldId).val()) { return false; } //*CH 03-10-2012
        var tMsgNoData = '<%=ViewData("tMsgDAT_Notfound001")%>' + ptMsgErr;
        J002_GETxFieldName(ptController, ptAction, ptObjCodeId, ptObjNameId, ptObjCodeOldId, ptTblName, ptFieldCode, ptFieldName, tMsgNoData, ptJoinConn)

    }
    function W_FRMxShowOption() 
    {
        J003_BRWxAutoCode('TCNMBranch', 'FTBchCode', '0');
    }

    // ning 24/11/2010
    function W_SHWxShowPic() {
        var tBchCode = $('#otbFTBchCode').val();
        var tCmpCodeByLogin = '<%=ViewData("ovd_CmpCode")%>';

        // set company map
        var tImageName = '<%=model.FTBchMap%>'; 
        var oElementMap = document.getElementById('odiBchMap');
        if (tImageName != null && tImageName != "") {
            oElementMap.innerHTML = '<img id ="oimMap" alt="" src="<%=Url.Content("~/AdaImage/' + tCmpCodeByLogin + '/' + tBchCode + '/' + tImageName + '") %>"  class="xW_ImgLogo"/>';
        }
        else {
            oElementMap.innerHTML = '<img id ="oimMap" alt="" src="<%=Url.Content("~/Content/img/imgIcon64x64/Map.png") %>" />';
        }

        //tImageSourc = document.getElementById('oimMap').getAttribute("src");
        //document.getElementById('FTCmpMap').value = tImageSourc;

        var img = document.getElementById('oimMap');
        var nWidthMap = img.clientWidth;
        var nHeightMap = img.clientHeight;
        if ((nWidthMap > 693) || (nHeightMap > 283)) { $('#oimMap').addClass('xW_ImgMap'); }
        if (tImageName != "") {
            if ((nWidthMap == 0) || (nHeightMap == 0)) { $('#oimMap').addClass('xW_ImgMap'); }
        }

        var tImageName = '<%=model.FTBchLogo%>';
        var oElement = document.getElementById('odiBchLogo');
        if (tImageName != null && tImageName != "") {
            oElement.innerHTML = '<img id ="oimLogo" alt="" src="<%=Url.Content("~/AdaImage/' + tCmpCodeByLogin + '/' + tBchCode + '/' + tImageName + '") %>"  class="xW_ImgLogo"/>';
        }
        else {
            oElement.innerHTML = '<img id ="oimLogo" alt="" src="<%=Url.Content("~/Content/img/AdaBrwPdtGrp/NoImage.png") %>" class="xW_ImgLogo"/>';
        }
        //var tImageSourc = document.getElementById('oimLogo').getAttribute("src");
        //document.getElementById('FTCmpLogo').value = tImageSourc;
        var imgLogo = document.getElementById('oimLogo');
        var nWidthLogo = imgLogo.clientWidth;
        var nHeightLogo = imgLogo.clientHeight;
        if ((nWidthLogo > 150) || (nHeightLogo > 150)) { $('#oimLogo').addClass('xW_ImgSizeLogo'); }
    }
</script>


<%  Using Html.BeginForm("C_Edit", "cvcBranch", FormMethod.Post, New With {.collection = "cmlBranch", .id = "wBranchEdit", .name = "wBranchEdit", .enctype = "multipart/form-data"})%>
    <!-- เอา class xCN_AllBackgroundColor xCN_AllBorderColor ออก -->    
    <div class="xW_DivMain xCN_AllFontFamily xCN_AllFontSize xCN_AllFontColor" >
        <div style="display:none">
            <input type="hidden" value="<%=model.FDDateUpd%>" name="FDDateUpd" />
            <input type="hidden" value="<%=model.FTTimeUpd%>" name="FTTimeUpd" />
            <input type="hidden" value="<%=model.FTWhoUpd%>" name="FTWhoUpd" />
            <input type="hidden" value="<%=model.FDDateIns%>" name="FDDateIns" />
            <input type="hidden" value="<%=model.FTTimeIns%>" name="FTTimeIns" />
            <input type="hidden" value="<%=model.FTWhoIns%>" name="FTWhoIns" />
            <input type="hidden" id="otbFTBchWheStkOld" />
            <input type="hidden" id="FTBchHQ" name="FTBchHQ"  />
            <input type ="hidden" id="otbFTZneCodeOld" />
            <input type="hidden" id="FTBchLogo" name="FTBchLogo" value="<%=model.FTBchLogo%>" />
            <input type="hidden" id="FTBchMap" name="FTBchMap" value="<%=model.FTBchMap%>" />
            <input type="hidden" id="otbFrmName" name="otbFrmName" value="Edit" />

            <input type="hidden" id="otbBchCodeHidden" name="otbBchCodeHidden" value="<%=model.FTBchCode%>" />
            <input type="hidden" id="otbBchWheStkHidden" name="otbBchWheStkHidden" value="<%=model.FTBchWheStk%>" />
            <input type="hidden" id="otbCvrVersionHidden" name="otbCvrVersionHidden" value="<%=model.FTCvrVersion%>" />
            <input type="hidden" id="otbZneCodeHidden" name="otbZneCodeHidden" value="<%=model.FTZneCode%>" />
            <input type="hidden" id="otbBchShopHidden" name="otbBchShopHidden" value="<%=model.FTBchShop%>" />
            <input type="hidden" id="otbBchAddrHidden" name="otbBchAddrHidden" value="<%=model.FTBchAddr%>" />
            <input type="hidden" id="otbBchTelHidden" name="otbBchTelHidden" value="<%=model.FTBchTel%>" />
            <input type="hidden" id="otbBchFaxHidden" name="otbBchFaxHidden" value="<%=model.FTBchFax%>" />
            <input type="hidden" id="otbBchTaxNoHidden" name="otbBchTaxNoHidden" value="<%=model.FTBchTaxNo%>" />
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
                    <a onclick = "W_FRMxForwClose()" href="javascript:void(0)">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaHeaderList")%>
                        </div>
                    </a>
                </div>
          </div>
    </div>
    <%-------------------ส่วนรายละเอียด-------------------------%>  
    <div class="xCN_AllBorderColor xCN_DivMainMenuPage" style='height:525px;'>
        <div class="xW_DivDetail">
            <div class="xCN_DivTabToppic">
                <a href="javascript:void(0)" onclick="{J010_SHWxTabData(0,'odiDetail','odiMap');J009_SHWxTabTop(0,'odiDetailCap','odiMapCap')}">
                    <div id="odiDetailCap" class="xCN_DivTabActive">
                        <%=ViewData("olaTabDetail")%>
                    </div></a>
                <a href="javascript:void(0)" onclick="{J010_SHWxTabData(1,'odiDetail','odiMap');J009_SHWxTabTop(1,'odiDetailCap','odiMapCap')}">
                    <div id="odiMapCap" class="xCN_DivTabUnActive">
                        <%=ViewData("olaTabMap")%>
                    </div></a> 
            </div>
            
            <div id="odiDetail" class ="xCN_DivTabDetail">
                <div class="xCN_AllBackgroundColor xW_DivDetailSub">
                    <!-- Label -->
                    <div class="xW_DivCaption">
                        <div class="xW_DivCaptionSub xCN_AllFontColorTextReq">
                            <label>*<%=ViewData("olaFTBchCode")%></label>
                        </div>
                        <div class="xW_DivCaptionSub xCN_AllFontColorTextReq">
                            <label>*<%=ViewData("olaFTBchName")%></label>
                        </div>    
                        <div class="xW_DivCaptionSub xCN_AllFontColorTextReq" style="width:100px">
                            <label>*<%=ViewData("olaFTBchWheStk")%></label>
                        </div>   
                        <div class="xW_DivCaptionSub">
                            <label><%=ViewData("olaFTZneCode")%></label>
                        </div>   
                         <div class="xW_DivCaptionSub">
                            <label><%=ViewData("olaFTCvrVersion")%></label>
                        </div>       
                        <div class="xW_DivCaptionSub">
                            <label><%=ViewData("olaFTCmpShop")%></label><!-- ชื่อร้านค้า -->
                        </div> 
                        <div class="xW_DivCaptionAddress">
                            <label><%=ViewData("olaFTCmpAddr")%></label><!-- ที่อยู่ -->
                        </div>
                        <div class="xW_DivCaptionSub">
                            <label><%=ViewData("olaFTCmpTel")%></label><!-- โทรศัพท์ -->
                        </div>
                        <div class="xW_DivCaptionSub">
                            <label><%=ViewData("olaFTCmpFax")%></label><!-- โทรสาร -->
                        </div>
                        <div class="xW_DivCaptionSub">
                            <label><%=ViewData("olaFTCmpTaxNo")%></label><!-- เลขที่ผู้เสียภาษี -->
                        </div>
                        <div class="xW_DivCaptionSub xCN_AllFontColorTextReq xCN_DivDisplayNone">
                            <label>*<%=ViewData("olaFTVatCode")%></label><!-- อัตราภาษี -->
                        </div>
                        <div class="xW_DivCaptionSub xCN_DivDisplayNone">
                            <label><%=ViewData("olaFTCmpWhsInOrEx")%></label><!-- ภาษีขายส่ง -->
                        </div>
                        <div class="xW_DivCaptionSub xCN_DivDisplayNone">
                            <label><%=ViewData("olaFTCmpRetInOrEx")%></label><!-- ภาษีขายปลีก -->
                        </div>
                        <div class="xW_DivCaptionSub">
                            <label><%=ViewData("olaFTCmpLogo")%></label><!-- โลโก้ -->
                        </div>
                    </div>
                    <!-- Input Data -->
                    <div class="xW_DivData">
                        <div class="xW_DivDataSub">
                            <input type="text" 
                                value="<%=model.FTBchCode%>" 
                                id="otbFTBchCode" 
                                name="otbFTBchCode" 
                                readonly="readonly"
                                class="xW_InputTextCode xCN_AllReadOnlyBGColor"
                                maxlength = '<%=ViewData("MaxLenght") %>' />
                            <%=Html.ValidationMessageFor(Function(model) model.FTBchCode)%>     
                        </div>
                        <div class="xW_DivDataSub" style="width:500px">
                            <div style="float:left">
                                <input type="text" value="<%=model.FTBchName%>"
                                    id="otbFTBchName" 
                                    class="xW_InputTextCode"
                                    name="FTBchName"  
                                    maxlength ="100"
                                    onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)" />
                            </div>
                            <div style="float:left">
                                <%=Html.ValidationMessageFor(Function(model) model.FTBchName)%>
                            </div>     
                            <div style="float:left">
                                <label style="margin-left:15px; margin-right:15px;"><%=ViewData("olaPriority")%></label>
                            </div>
                            <div>
                                <%=Html.DropDownListFor(Function(model) model.FTBchPriority, CType(ViewData("FTBchPry"), SelectList), New With {.style = "width:100px"})%>
                            </div>
                        </div>   
                        <div class="xW_DivDataSub">
                            <div class="xW_DivCode">
                                <input type="text" 
                                    value="<%=model.FTBchWheStk%>" 
                                    id="otbFTBchWheStk" 
                                    name="FTBchWheStk" 
                                     onblur="otbFTBchWheStk_Onblur()"
                                    class="xW_InputTextCode"
                                    onfocus="J002_SETxKeepOldOnfocus('otbFTBchWheStk','otbFTBchWheStkOld')"
                                    onkeydown="otbFTBchWheStk_OnKeyDown()"
                                    onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)"
                                    maxlength ="5" />
                                    <%=Html.ValidationMessageFor(Function(model) model.FTBchWheStk)%>
                            </div>
                            <div class="xCN_DivBrowData">
                                <img id="oimBrowse" 
                                 onclick="W_DATxBrwData('StkCode','otbFTBchWheStk','otbFTBchWheStkName')"
                                 src="<%=ViewData("oimgBrowse")%>"  alt=""/>
                            </div>
                            <div class="xW_DivProvince">
                                <input type="text" id="otbFTBchWheStkName" />
                            </div>
                        </div>  
                        <div class="xW_DivDataSub">
                            <div class="xW_DivCode">
                                <input type="text" 
                                    value="<%=model.FTZneCode%>" 
                                    id="otbFTZneCode" 
                                    name="FTZneCode" 
                                     onblur="otbFTZneCode_Onblur()"
                                    class="xW_InputTextCode"
                                    onfocus="J002_SETxKeepOldOnfocus('otbFTZneCode','otbFTZneCodeOld')"
                                    onkeydown="otbFTZneCode_OnKeyDown()"
                                    onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)"
                                    maxlength ="30" />
                                    <%=Html.ValidationMessageFor(Function(model) model.FTZneCode)%>
                            </div>
                            <div class="xCN_DivBrowData">
                                <img id="oimBrowseZone" 
                                   onclick="W_DATxBrwData('Zone','otbFTZneCode','otbFTZneName')"
                                 src="<%=ViewData("oimgBrowse")%>"  alt=""/>
                            </div>
                            <div class="xW_DivProvince">
                                <input type="text" id="otbFTZneName" />
                            </div>
                       </div>   
                        <div class='xW_DivDataBch'>
                            <div class="xW_DivHDCode">
                                <input type="text" id="otbFTCvrVersion" 
                                    name="FTCvrVersion" value="<%=model.FTCvrVersion %>" 
                                    maxlength="15" onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)"
                                    class="xW_InputText"/>

                                <input type="checkbox" id="ockBchHQ"  onclick="W_CHKbBchHQ()" class='xW_InputCheckBox' />
                                <label class="xW_DivCheckBoxLabel"><%=ViewData("olaFTBchHQ")%></label>                  
                            </div> 
                        </div>
                        <div class="xW_DivDataSub">
                            <input type="text" style ="width:260px"  
                                value="<%=model.FTBchShop%>" id="FTBchShop" name="FTBchShop"  
                                maxlength ="200" onkeypress= "return J002_CHKbCheckTxtKey(event.keyCode, event.which);" />
                        </div>  
                        <div class="xW_DivDataAddress">
                            <textarea  
                                id="FTBchAddr" 
                                name="FTBchAddr" style ="width:260px; height:50px;"  
                                cols="0" 
                                rows="3" 
                                class="xW_TextAreaAddress"
                                onkeypress= "return J002_CHKbCheckTxtKey(event.keyCode, event.which);" ><%=Model.FTBchAddr%></textarea>
                        </div>  
                        <div class="xW_DivDataBottom">
                            <div class="xW_DivDataBottomLeft">
                                <input type="text" style ="width:260px" 
                                    value="<%=model.FTBchTel%>" 
                                    id="FTBchTel" 
                                    name="FTBchTel" 
                                    maxlength ="50" 
                                    class="xW_InputTextTelFaxTaxNo"
                                    onkeypress= "return J002_CHKbCheckTxtKey(event.keyCode, event.which);" />
                            </div>
                            <div class="xW_DivDataBottomLeft">
                                <input type="text" style ="width:260px" 
                                    value="<%=model.FTBchFax%>" 
                                    id="FTBchFax" 
                                    name="FTBchFax" 
                                    maxlength ="50" 
                                    class="xW_InputTextTelFaxTaxNo"
                                    onkeypress= "return J002_CHKbCheckTxtKey(event.keyCode, event.which);" />
                            </div>            
                            <div class="xW_DivDataBottomLeft">
                                <input type="text" style ="width:260px" 
                                    value="<%=model.FTBchTaxNo%>" 
                                    id="FTBchTaxNo" 
                                    name="FTBchTaxNo" 
                                    maxlength ="20"
                                    class="xW_InputTextTelFaxTaxNo"
                                    onkeypress= "return J002_CHKbCheckTxtKey(event.keyCode, event.which);" />
                            </div>
                            <div class="xW_DivDataBottomLeft xCN_DivDisplayNone">
                                <div class="xW_DivVATCode">
                                    <input type="text" 
                                            id="FTVatCode" 
                                            name="FTVatCode" 
                                            maxlength="3"
                                            class="xW_InputTextVATCode xCN_AllReadOnlyBGColor"
                                            value="<%=model.FTVatCode%>" 
                                            onblur ="FTVatCode_onblur()" 
                                            onkeydown="FTVatCode_onkeydown()" 
                                            onfocus ="J002_SETxKeepOldOnfocus('FTVatCode','otbOldVatCode')"
                                            onkeypress= "return J002_CHKbCheckTxtKey(event.keyCode, event.which);"
                                            readonly="readonly" />                                                   
                                </div>
                                <div class="xCN_DivBrowData">
                                     <img src="<%=Url.Content(ViewData("oimgBrwLock"))%>" 
                                            alt="<%=ViewData("olaBrowse").ToString%>"
                                            class="xCN_ImgBrowData" />                      
                                </div>
                                <div class="xW_DivVATName">
                                    <input type="text" 
                                        id="FCBchVatAmt" 
                                        name="FCBchVatAmt"
                                        value="<%=model.FCBchVatAmt%>" 
                                        style="width:50px"
                                        maxlength="100" 
                                        class="xW_InputTextVATName xCN_AllReadOnlyBGColor"
                                        readonly="readonly"
                                        onkeydown = "return false;" />%
                                        <%--** --%>   
                                </div>
                            </div>
                            <div class ="xW_DivDataBottomLeft xCN_DivDisplayNone">
                                <!-- FTBchWhsInOrEx -->
                            </div>
                            <div class ="xW_DivDataBottomLeft xCN_DivDisplayNone">
                                <!-- FTBchRetInOrEx -->
                            </div> 
                            <div class ="xW_DivDataBottomLeft">   
                            <div class="xW_DivBrowseImage">                                                                                       
                                    <input type="file" id="otbFilePath" name="otbFilePath"  style="width:100%"
                                        value="<%=ViewData("ovd_LogoPath")%>" />                                  
                            </div>            
                            <div class="xW_DivUploadImage">
                                <input type="button" id="ocmUpLoadFile" value="<%=ViewData("tMsgUpload") %>"  style="width:100%;" 
                                    onclick="W_FRMxUploadFile('L')"/>
                                </div>
                                <div class="xW_DivUploadImage">
                                <input type="button" id="ocmClearPath" value="<%=ViewData("tMsgCancel") %>" style="width:100%;" onclick="W_Clear_logo()"/>
                                </div>                              
                            </div>                          
                        </div>                  
                        <div class="xW_DivDataLogo" id="odiBchLogo"></div>        
                    </div>
                </div>
            </div>
            
            <div id="odiMap" class ="xCN_DivTabDetail">
                <div class="xCN_AllBackgroundColor xW_DivDetailSub" >
                    <div class="xW_DivDataMap" id="odiBchMap"></div>
                    <div class="xW_DivCaptionSub"  style="padding:0px 0px 0px 15px">
                        <label><%=ViewData("olaFTCmpMap")%></label>
                    </div>
                    <div class ="xW_DivDataBottomLeft">   
                        <div class="xW_DivBrowseImage">
                            <input type="file" id="otbMapPath" name="otbMapPath" style="width:100%"
                                value="<%=ViewData("ovd_MapPath")%>" />
                        </div> 
                        <div class="xW_DivUploadImage">
                            <input type="button" id="ocmUploadMap" value="<%=ViewData("tMsgUpload")%>"  style="width:100%;"
                                onclick="W_FRMxUploadFile('M')"/>
                        </div>
                        <div class="xW_DivUploadImage">
                            <input type="reset" id="ocmClearMapPath" value="<%=ViewData("tMsgCancel")%>"  style="width:100%;" onclick="W_Clear_map()"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
 </div>  

<% End Using %>
    <!-- Stk -->
    <div id="odiBrwStkCode" title='<%=ViewData("olaBrowse")%>' class="xCN_DivTabDisplay">
        <div style="height:auto">
            <%Html.RenderPartial("uBrowse\uBrwMaster", Session("oBrwStk"))%>
        </div>
    </div>
    <!-- Zone -->
    <div id="odiBrwZone" title='<%=ViewData("olaBrowse")%>' class="xCN_DivTabDisplay">
        <div style="height:auto">
            <%Html.RenderPartial("uBrowse\uBrwMasterArea", Session("oBrwZne"))%>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server"> 
<link rel="Stylesheet" href="<%=Url.Content("~/Content/AdaCss/Local/FCS_cvcManageBch.css") %>" />
<script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J002_General.js") %>"></script>
<script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J003_SplashDialog.js") %>"></script>
<script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J001_LoadAutoGenCode.js") %>"></script>
<script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J009_ShowTab.js") %>"></script>
<script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J010_ShowTabData.js") %>"></script>
<script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J011_ComboBoxLibrary.js") %>"></script>
<script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J015_UIBrowse.js") %>" ></script>

<script language="javascript" type="text/javascript" >
    function W_FRMxUploadFile(ptCase) {
        J003_SHWxWaiting();

        try {
            var tObjFile = '';
            switch (ptCase.toUpperCase()) {
                case "L": tObjFile = 'otbFilePath'; break;
                case "M": tObjFile = 'otbMapPath'; break;
            }
            $file = $("#" + tObjFile);
            var $filePath = $.trim($file.val());
            if ($filePath == "") {
                alert('<%=ViewData("tMsgBrwFile")%>');
                J003_DISxWaiting();
                return;
            }
            var $ext = $filePath.split(".").pop().toLowerCase();
            var $allow = new Array("gif", "png", "jpg", "jpeg");
            if ($.inArray($ext, $allow) == -1) {
                alert('<%=ViewData("tMsgBrwFileOnlyImage")%>');
                return;
            }

            var tFunc = '';
            switch (ptCase.toUpperCase()) {
                case "L":
                    tFunc = 'C_DATxSaveImage';
                    $("#wBranchEdit").attr("action", '<%=Url.Action("C_DATxSaveImage","cvcBranch") %>');
                    break;
                case "M":
                    tFunc = 'C_DATxSaveImageMap';
                    $("#wBranchEdit").attr("action", '<%=Url.Action("C_DATxSaveImageMap","cvcBranch") %>');
                    break;
            }

            if (tFunc != '') {
                $("#wBranchEdit").submit();
            }
        } catch (err) {
            alert('<%=ViewData("tMsgBrwFileError")%>');
        } finally {
            J003_DISxWaiting();
        }
    }

    function W_Clear_map() {
        J003_SHWxWaiting();
        try {
            if ($('#FTBchMap').val() == "") {
                J003_DISxWaiting();
                return;
            }
            $("#wBranchEdit").attr("action", '<%=Url.Action("C_CLRxClearMap","cvcBranch") %>');
            $("#wBranchEdit").submit();
        } catch (err) {
        } finally {
            J003_DISxWaiting();
        }
    }
    function W_Clear_logo() {
        J003_SHWxWaiting();
        try {
            if ($('#FTBchLogo').val() == "") {
                J003_DISxWaiting();
                return;
            }
            $("#wBranchEdit").attr("action", '<%=Url.Action("C_CLRxClearLogo","cvcBranch") %>');
            $("#wBranchEdit").submit();
        } catch (err) {
        } finally {
            J003_DISxWaiting();
        }
    }    

    $ui(function () {
        //Browse Stk
        $ui("#odiBrwStkCode").dialog({
            autoOpen: false,
            modal: true,
            resizable: false,
            height: 'auto',
            width: '425px'
        });

        //Browse Zone
        $ui("#odiBrwZone").dialog({
            autoOpen: false,
            modal: true,
            resizable: false,
            height: 'auto',
            width: '425px'
        });
    });
    //ใช้งานสำหรับหน้าจอค้่าหา Master
    function W_SETxSelectedDataMaster(ptObjCode, ptObjName, ptCase, ptSta) {//PtSta 1:Select Data, Not1:Select None
        if (ptSta == '1') {
            J015_SETxSelectData(tJ015_ReturnValue, ptObjCode, ptObjName);
        }
        switch (tW_BrwSta.toUpperCase()) {        
            case 'StkCode'.toUpperCase():
                $ui('#odiBrwStkCode').dialog('close');
                break;
            case 'Zone'.toUpperCase():
                $ui('#odiBrwZone').dialog('close');
                break;
        }
    }
</script>
</asp:Content>

