<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage(Of Adasoft.WebPos.Models.cmlTCNMGondola)" %>
<%@ Import Namespace="System.Resources" %>
<%@ Import Namespace="AdaWebPos" %>
<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tLastLang As String = Session("tVB_LastLang")

        If tLastLang Is Nothing AndAlso tLastLang = "" Then
            AdaWebPos.My.Resources.resLCcvcGondola.Culture = New System.Globalization.CultureInfo("EN")
            Resources.resGBMsg.Culture = New System.Globalization.CultureInfo("EN")
            AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.Culture = New System.Globalization.CultureInfo("EN")
        Else
            AdaWebPos.My.Resources.resLCcvcGondola.Culture = New System.Globalization.CultureInfo(tLastLang)
            Resources.resGBMsg.Culture = New System.Globalization.CultureInfo(tLastLang)
            AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.Culture = New System.Globalization.CultureInfo(tLastLang)
        End If
               
        ViewData("olaRowID") = AdaWebPos.My.Resources.resLCcvcGondola.olaRowID
        ViewData("olaCanEdit") = AdaWebPos.My.Resources.resLCcvcGondola.olaCanEdit
        ViewData("olaCanSave") = AdaWebPos.My.Resources.resLCcvcGondola.olaCanSave
        ViewData("olaCreate") = AdaWebPos.My.Resources.resLCcvcGondola.olaCreate
        ViewData("olaFTGonCode") = AdaWebPos.My.Resources.resLCcvcGondola.olaFTGonCode
        ViewData("olaFTGonName") = AdaWebPos.My.Resources.resLCcvcGondola.olaFTGonName
        ViewData("olaFTGonType") = AdaWebPos.My.Resources.resLCcvcGondola.olaFTGonType
        ViewData("olaMenuName") = AdaWebPos.My.Resources.resLCcvcGondola.olaMenuName
        ViewData("olaNotAccess") = AdaWebPos.My.Resources.resLCcvcGondola.olaNotAccess
        ViewData("olaReport") = AdaWebPos.My.Resources.resLCcvcGondola.olaReport
        ViewData("olaHeaderEdit") = AdaWebPos.My.Resources.resLCcvcGondola.olaHeaderEdit
        ViewData("olaHeaderAdd") = AdaWebPos.My.Resources.resLCcvcGondola.olaHeaderAdd
        ViewData("olaHeaderDetail") = AdaWebPos.My.Resources.resLCcvcGondola.olaHeaderDetail
        ViewData("olaHeaderList") = AdaWebPos.My.Resources.resLCcvcGondola.olaHeaderList
        ViewData("olaDetail") = AdaWebPos.My.Resources.resLCcvcGondola.olaDetail
        ViewData("tMsgErrorData") = Resources.resGBMsg.tMsgErrorData
        
        ViewData("oimgSave") = Url.Content(Resources.resGBImageList.oimgSave)
        ViewData("oimgUndo") = Url.Content(Resources.resGBImageList.oimgUndo)
        ViewData("oimgBrowse") = Url.Content(Resources.resGBImageList.oimgBrowse)
        ViewData("oimgDump") = Url.Content(Resources.resGBImageList.oimgDump)
        ViewData("oimgDumpLock") = Url.Content(Resources.resGBImageList.oimgDumpLock)
        
        ViewData("olaGeneral") = AdaWebPos.My.Resources.resLCcvcGondola.olaGeneral
        ViewData("olaDefineProduct") = AdaWebPos.My.Resources.resLCcvcGondola.olaDefineProduct
        ViewData("olaPdtCode") = AdaWebPos.My.Resources.resLCcvcGondola.olaPdtCode
        ViewData("olaShortcutKey") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaShortcutKey
        
        
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    <%=ViewData("olaHeaderEdit")%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<script type="text/javascript">
    var tW_GonType; //รูปแบบของกอนโดล่า
    
    window.onload = window_onload;
    function window_onload() {
        ////document.getElementById("loading").style.display = "none";
        //unhide();
        W_SETxDisplayTab(); //*CH 16-10-2012
        tJ002_VirtualDirectory = '<%=Session("VirtualDirectory")%>';
        tJ001_VirtualDirectory = '<%=Session("VirtualDirectory")%>';
        tJ003_VirtualDirectory = '<%=Session("VirtualDirectory")%>'; //*CH 20-02-2013
        J002_SETxReadOnly("FTGonCode", true);
        document.getElementById("FTGonCode").onkeypress = function() { return false; };
        document.getElementById("oldGonType").value = document.getElementById("FTGonType").value
    }

    //@Funtion: Buttom Back
    //@Edit: Kriengkai (Kik)
    //@Since: 19/4/54 16:38
    function W_FRMxForwClose() {
        J003_SHWxWaiting();
        window.location = '<%=Url.Action("Index","cvcGondola")%>';
    }

    function W_FRMxSaveDocument() {
        J003_SHWxWaiting();
        var tCode = document.getElementById("FTGonCode").value;
        var tName = J002_STRttrim(document.getElementById("FTGonName").value);
        var tType = document.getElementById("FTGonType").value;

        if (tCode == "" || tCode == null) {
            alert('<%=ViewData("tMsgErrorData")%>');
            document.getElementById("FTGonCode").focus();
            J003_DISxWaiting();
            return false;
        }
        if (tType == "" || tType == null) {
            alert('<%=ViewData("tMsgErrorData")%>');
            document.getElementById("FTGonType").focus();
            J003_DISxWaiting();
            return false;
        }
        if (tName == "" || tName == null) {
            alert('<%=ViewData("tMsgErrorData")%>');
            document.getElementById("FTGonName").focus();
            J003_DISxWaiting();
            return false;
        }

        var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Add%>';
        var tPwdAllow = '<%=AdaWebPos.cCNVB.bVB_CNPwdAllow %>';
        var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
        var bAllow = J002_CHKtCheckAuthorize('omnMngGondola', tAuthor, tPwdAllow, tMsgNotAuthorize);
        if (bAllow == false) {
            J003_DISxWaiting();
            return false;
        }
        else {
            document.wGondola.submit();
        }
    }

    function W_CHKBCheckType(poKeyCode, poWhich) {
        var tKeyCode;
        if (poKeyCode != null) { tKeyCode = poKeyCode; }
        if (poWhich != null) { tKeyCode = poWhich; }
        if (tKeyCode == 49 || tKeyCode == 50) {
            return true;
        }
        return false;
    }

    //*กำหนด tab ที่แสดงเป็น Tab แรก *CH 06-10-2012
    function W_SETxDisplayTab() {
        J010_SHWxTabData(0, 'odiDataEntry', 'odiOptional');
        J009_SHWxTabTop(0, 'odiDiv_Toppic1', 'odiDiv_Toppic2')
    }

    //*กำหนดค่าที่กรอกไว้แสดงที่ tab เพิ่มรายการสินค้า *CH 06-10-2012
    function W_SETxGonValue() {
        $('#otbGonCodeLock').val($('#FTGonCode').val());
        $('#otbGonNameLock').val(J002_STRttrim($('#FTGonName').val()));
        W_CHKxGonType();
        W_GETxPdtData();
        W_SETxRebindGrid();
    }
    //*เตรียมข้อมูลรายการสินค้า *CH 16-10-2012
    function W_GETxPdtData() {
        try {
            var tGonCode = $('#FTGonCode').val();
            var tUrl = '<%=Url.Action("C_GETxPdtData", "cvcGondola")%>' + '?ptGonCode=' + tGonCode;
            var oXmlHttp = J002_GEToXMLHttpRequest();
            oXmlHttp.open('GET', encodeURI(tUrl), false);
            oXmlHttp.send(null);
        } catch (ex) {
        }
    }
    //*ตรวจสอบการใช้ประเภทของกอนโดล่า 1 : ล๊อคไม่ให้ทำงาน , 2 : ให้เพิ่มสินค้าได้ *CH 16-10-2012
    function W_CHKxGonType() {
        tW_GonType = J002_STRttrim($('#FTGonType').val());
        if (tW_GonType == '1') {
            $('#otbFacing').addClass('xCN_AllReadOnlyBGColor');
            $('#otbFacing').attr('readonly', 'true');
            $('#otbFTPdtCode').addClass('xCN_AllReadOnlyBGColor');
            $('#otbFTPdtCode').attr('readonly', 'true');
        } else {
            $('#otbFacing').removeClass('xCN_AllReadOnlyBGColor');
            $('#otbFacing').attr('readonly', '');
            $('#otbFTPdtCode').removeClass('xCN_AllReadOnlyBGColor');
            $('#otbFTPdtCode').attr('readonly', '');
        }
    }

    // rebind the related grid
    function W_SETxRebindGrid() {
        try {
            var oGrid = $('#ogdGridDT').data('tGrid');
            oGrid.rebind();
            W_CLRxVariable();
        }
        catch (ex) {
            J002_SHWxMsgError("W_SETxRebindGrid", ex);
        }
    }
    function W_CLRxVariable() {
        $('#otbFTPdtCode').val('');
        $('#otbFTPdtName').val('');
        $('#otbFacing').val('');
    }
    function W_GETxPdtOnRowSelected(e) {
        try {
            tW_AddOrEdit = '2';
            if (e.row != null) {
                if (e.row.cells.length < 2) { return 0; }
                var tSeq = e.row.cells[0].innerHTML;
                var tPdtCode = e.row.cells[1].innerHTML;
                var tPdtName = e.row.cells[2].innerHTML;
                var tDateTimeNow = J002_GETtTimeStamp();
                $('#otbFacing').val(tSeq);
                $('#otbFTPdtCode').val(tPdtCode);
                $('#otbFTPdtName').val(tPdtName);
                $('#otbFTPdtCodeHidden').val($('#otbFTPdtCode').val());
                $('#oimDumpPdt').attr({ src: '<%=ViewData("oimgDump")%>' });
                document.getElementById('otbFTPdtCode').focus();

            }
        }
        catch (ex) {
            J002_SHWxMsgError("W_GETxPdtOnRowSelected", ex);
        }
    }

    //*ค้นหาสินค้า *CH 10-08-2012
    function W_BRWxProduct() {
        try {
            if (tW_GonType == '1') { return false; } //รูปแบบเท่ากับ 1 ไม่ให้ทำงาน
            J003_SHWxWaiting();
            var tDateTimeNow = J002_GETtTimeStamp();
            var tUrl = '<%=Url.Action("C_CNBrwPdt","cvcTCNTPmtHD") %>';
            tUrl += '?ptDate=' + tDateTimeNow + '&ptDocPosition=3';
            var ReturnedValue = showModalDialog(encodeURI(tUrl), "Passed String", "dialogWidth:850px; dialogHeight:550px; status:no; center:yes;titlebar =0;scroll=no");
            if (ReturnedValue == null || ReturnedValue == '12233344445555566666677777778888888899999999900000000001223334444555556666667777777888888889999999990000000000') {
                return false;
            }
            W_BRWxPdtName(ReturnedValue);
        }
        catch (ex) {
            J002_SHWxMsgError('W_BRWxProduct', ex);
        } finally {
            J003_DISxWaiting();
        }
    }
    function W_BRWxPdtName(ptPdtCode) {
        try {
            if (ptPdtCode == '') { return false; }
            var tResult = '';
            var tUrl = '<%=Url.Action("C_GETtPdtName", "cvcGondola")%>' + '?ptPdtCode=' + ptPdtCode;
            var oXmlHttp = J002_GEToXMLHttpRequest();
            oXmlHttp.open('GET', encodeURI(tUrl), false);
            oXmlHttp.send(null);
            tResult = oXmlHttp.responseText;
            if (tResult != '') {
                $('#otbFTPdtCode').val(ptPdtCode);
                $('#otbFTPdtName').val(tResult);
                $('#oimDumpPdt').attr({ src: '<%=ViewData("oimgDump")%>' });
                $('#otbFTPdtCodeHidden').val($('#otbFTPdtCode').val());
                $('#oimDumpPdt').attr({ src: '<%=ViewData("oimgDump")%>' });
                tW_AddOrEdit = '1';
            } else {
                $('#otbFTPdtCode').val($('#otbFTPdtCodeHidden').val());
                alert('<%=Viewdata("tMsgNonData")%>');
            }
        } catch (ex) {
            J002_SHWxMsgError('W_BRWxPdtName', ex);
        }
    }

    function grid_onLoad() {
        $('#ogdGridDT tr', this).live('dblclick', function(e) {
            var tSeq = $('td', this).eq(0).text();
            var tPdtCode = $('td', this).eq(1).text();
            var tPdtName = $('td', this).eq(2).text();
        })
    }
    function W_ADDxDumpPdtToGrid() {
        var tDateTimeNow = J002_GETtTimeStamp();
        var tFac = $('#otbFacing').val();
        var tPdtCode = $('#otbFTPdtCode').val();
        var tPdtName = $('#otbFTPdtName').val();
        if (tPdtCode == '') { return false; }
        var tUrl = '<%=Url.Action("C_CHKtFacing","cvcGondola") %>';
        tUrl += '?ptFac=' + tFac + '&ptDateTimeNow=' + tDateTimeNow;
        if (tFac != '' && tW_AddOrEdit != '2') {
            oW_xmlHttp = J002_GEToXMLHttpRequest();
            oW_xmlHttp.open("GET", encodeURI(tUrl), false);
            oW_xmlHttp.send(null);
            var tReturn = oW_xmlHttp.responseText;
            if (tReturn == '1') { alert('<%=ViewData("tMsgNotDupFac")%>'); return false; }

            tUrl = '<%=Url.Action("C_CHKtProduct","cvcGondola") %>';
            tUrl += '?ptPdtCode=' + tPdtCode + '&ptDateTimeNow=' + tDateTimeNow;
            oW_xmlHttp = J002_GEToXMLHttpRequest();
            oW_xmlHttp.open("GET", encodeURI(tUrl), false);
            oW_xmlHttp.send(null);
            var tReturn = oW_xmlHttp.responseText;
            if (tReturn == '1') { tW_AddOrEdit = '2'; }
        }

        if (tW_AddOrEdit == '1') {
            tUrl = '<%=Url.Action("C_DATtAddItem","cvcGondola") %>';
        } else {
            tUrl = '<%=Url.Action("C_DATtEditItem","cvcGondola") %>';
        }
        tUrl += '?ptPdtCode=' + tPdtCode + '&ptPdtName=' + tPdtName;
        tUrl += '&ptFac=' + tFac + '&ptDateTimeNow=' + tDateTimeNow;

        oW_xmlHttp = J002_GEToXMLHttpRequest();
        oW_xmlHttp.open("GET", encodeURI(tUrl), false);
        oW_xmlHttp.onreadystatechange = W_SETxHandleStateChangeSetTotal;
        oW_xmlHttp.send(null);
        if (oW_xmlHttp.status != 200) {
            alert("error" + oW_xmlHttp.status + "\n" + oW_xmlHttp.responseText);
        }
        W_SETxRebindGrid();
        $('#oimDumpPdt').attr({ src: '<%=ViewData("oimgDumpLock")%>' });
    }
    function W_SETxHandleStateChangeSetTotal() {
        try {
            if (oW_xmlHttp.readyState == 4) {
                if (oW_xmlHttp.status == 200) {
                    if (oW_xmlHttp.responseText != -1) {
                        var oArr = oW_xmlHttp.responseText.split('|');
                        if (oArr[0] != null && oArr[0] != "") {
                            alert(oArr[0]);
                            return false;
                        }

                        if (oArr[2] != null && oArr[2] != "") {
                            alert('<%=ViewData("tMsgCheckPdtDuplicate")%>');
                            W_CLRxVariable();
                            $('#otbFTPdtCode').focus();
                            return false;
                        }
                        return true;
                    }
                }
            }

        }
        catch (ex) {
            J002_SHWxMsgError("W_SETxHandleStateChangeSetTotal", ex);
        }
    }

    function W_ObjPdtCodeBlur() {
        //if ($('#otbFTPdtCodeHidden').val() == $('#otbFTPdtCode').val()) { return false; }
        if (tW_GonType == '1') { return false; }
        if ($('#otbFTPdtCode').val() == '') {
            $('#otbFTPdtName').val('');
            $('#oimDumpPdt').attr({ src: '<%=ViewData("oimgDumpLock")%>' });
            $('#otbFTPdtCodeHidden').val($('#otbFTPdtCode').val());
            return false;
        }
        W_BRWxPdtName($('#otbFTPdtCode').val());
    }
    function W_ObjPdtCodeKeydown(ptKeyCode, ptWhich) {
        var tKeyCode;
        if (ptKeyCode != null) { tKeyCode = ptKeyCode; }
        if (ptWhich != null) { tKeyCode = ptWhich; }
        if (tKeyCode == 13) {
            //if ($('#otbFTPdtCodeHidden').val() == $('#otbFTPdtCode').val()) { return false; }
            if ($('#otbFTPdtCode').val() == '') {
                $('#otbFTPdtName').val('');
                $('#oimDumpPdt').attr({ src: '<%=ViewData("oimgDumpLock")%>' });
                $('#otbFTPdtCodeHidden').val($('#otbFTPdtCode').val());
                return false;
            }
            W_BRWxPdtName($('#otbFTPdtCode').val());
        }
        if (tKeyCode == 118) {
            if (tW_GonType == '1') { return false; }
            W_DELxItem();
            return false;
        }
        return false;
    }
    //ลบรายการสินค้า
    function W_DELxItem() {
        try {
            var tPdtCode = $('#otbFTPdtCode').val();
            var tDateTimeNow = J002_GETtTimeStamp();
            var tUrl = '<%=Url.Action("C_DELtItem","cvcGondola") %>' + '?ptPdtCode=' + tPdtCode;
            tUrl += '&ptDateTimeNow=' + tDateTimeNow;
            var oXmlHttp = J002_GEToXMLHttpRequest();
            oXmlHttp.open("GET", encodeURI(tUrl), false);
            oXmlHttp.send(null);
            var tResult = oXmlHttp.responseText;
            if (tResult != "") {
                alert(otResult);
                return false;
            }
            W_SETxRebindGrid();
        }
        catch (ex) {
            J002_SHWxMsgError("W_DELxCondItem", ex);
        }
    }
</script>
  
    <%--The line below is a workaround for a VB / ASPX designer bug--%>
    <%=""%>

     <% Using Html.BeginForm("C_Edit", "cvcGondola", FormMethod.Post, New With {.collection = "cmlGondola", .name = "wGondola", .ID = "wGondola"})%>
    <%-------------------ส่วนรายละเอียด-------------------------%>  
        <input type="hidden" name="oldGonType" id ="oldGonType" />    
        <input type="hidden" id='otbFTPdtCodeHidden' />
        <div class="xW_DivMain xCN_AllFontFamily xCN_AllFontSize xCN_AllFontColor" >
            <div style="display:none">
                        <%= Html.HiddenFor(Function(model) model.FDDateUpd) %>
                        <%= Html.HiddenFor(Function(model) model.FTTimeUpd) %>
                        <%= Html.HiddenFor(Function(model) model.FTWhoUpd) %>
                        <%= Html.HiddenFor(Function(model) model.FDDateIns) %>
                        <%= Html.HiddenFor(Function(model) model.FTTimeIns) %>
                        <%=Html.HiddenFor(Function(model) model.FTWhoIns)%>
            </div>
            <%-------------------ชื่อเอกสาร---------------------------%>   
            <!--<div class="xCN_DivManageTopic xCN_AllMenuFontSize">-->
            <div class="xW_DivSearch">
                <div class='xW_DivPath'>
                    <label id="olaTopicName" ><%=ViewData("olaHeaderEdit")%></label> 
                </div>
            </div>        
            <!--</div>-->
            <%-------------------เมนู-------------------------------%>   
            <div id="odiMenuTop" class="xCN_DivMainMenu">
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
            <!--<div class="xW_DivDetail xCN_AllBackgroundColor2 xCN_AllBorderColor">-->
            <div class="xCN_DivMainMenuPage xCN_AllBackgroundColor xCN_AllBorderColor" style='height:525px'>
                <div class="xCN_DivTabToppic xW_DivSize100" >
                    <a href="javascript:void(0);" 
                        onclick="{J010_SHWxTabData(0,'odiDataEntry','odiOptional');J009_SHWxTabTop(0,'odiDiv_Toppic1','odiDiv_Toppic2')}">
                        <div id="odiDiv_Toppic1" class="xCN_DivTabActive xW_DivTabToppicLabel" >
                            <%=ViewData("olaGeneral")%>
                        </div>
                    </a>
                    <a href="javascript:void(0);" 
                        onclick="{J010_SHWxTabData(1,'odiDataEntry','odiOptional');J009_SHWxTabTop(1,'odiDiv_Toppic1','odiDiv_Toppic2')};W_SETxGonValue()">
                        <div id="odiDiv_Toppic2" class="xCN_DivTabUnActive xW_DivTabToppicLabel" >
                            <%=ViewData("olaDefineProduct")%>
                        </div>
                    </a>
                </div>
                <!-- Tab บันทึกข้อมูล -->
                <div id='odiDataEntry' class='xCN_DivTabDetail xW_DivTabDetail'>
                    <div class='xCN_AllBackgroundColor xW_DivTabDetailSub'>
                        <div class="xW_DivCaption">
                            <div class="xW_DivCaptionSub xCN_AllFontColorTextReq ">
                                <label>*<%=ViewData("olaFTGonCode")%></label>
                            </div>
                            <div class="xW_DivCaptionSub xCN_AllFontColorTextReq ">
                                <label>*<%=ViewData("olaFTGonType")%></label>
                            </div>
                            <div class="xW_DivCaptionSub xCN_AllFontColorTextReq">
                                <label><%=ViewData("olaFTGonName")%></label>
                            </div>

                        </div>
                    <div class="xW_DivData">
                        <div class="xW_DivDataSub">
                            <div class="xW_DivCode">
                                <input type="text"
                                    value="<%=Model.FTGonCode%>" 
                                    id="FTGonCode" 
                                    name="FTGonCode" 
                                    class="xW_InputTextCode"
                                    onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)"
                                    maxlength = '3' />
                            </div>
                            <div class="xW_DivTextBoxWithTxtErr">
                                <input type="text" value='User Gondola'
                                 class='xCN_AllReadOnlyBGColor xW_WidthInputTextLock' readonly="readonly" />  
                                <%=Html.ValidationMessageFor(Function(model) model.FTGonCode)%>
                            </div>                
                        </div>
                        <div class="xW_DivDataSub" style="width:200px">
                            <div style="float:left">
                                <%=Html.DropDownListFor(Function(model) model.FTGonType, CType(ViewData("FTGonlaType"), SelectList), New With {.style = "width:50px"})%>
                                <%--<%=Html.TextBoxFor(Function(model) model.FTGonType, New With {.maxlength = "1", .style="width:200px" , .onkeypress="return W_CHKBCheckType(event.keyCode,event.which)"})%>--%>
                            </div>
                            <div>
                                <%=Html.ValidationMessageFor(Function(model) model.FTGonType)%>
                            </div>
                        </div>   
                        <div class="xW_DivDataSub">
                            <div>
                                <%=Html.TextBoxFor(Function(model) model.FTGonName, New With {.maxlength = "50", .style="width:200px", .onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)"})%>
                                <%=Html.ValidationMessageFor(Function(model) model.FTGonName)%>
                            </div>
                        </div>  
                    </div>        
                </div>                  
            </div>
            <!-- Tab เพิ่มรายการสินค้า -->
            <div id='odiOptional' class='xCN_DivTabDetail xW_DivTabDetail'>
                <div class='xCN_AllBackgroundColor xW_DivTabDetailSub'>
                    <div class="xW_DivCaption">
                        <div class="xW_DivCaptionSub">
                            <label><%=ViewData("olaMenuName")%></label>
                        </div>
                        <div class="xW_DivCaptionSub">
                            <label><%=ViewData("olaPdtCode")%></label>
                        </div>
                    </div>
                    <div class="xW_DivData">
                        <div class="xW_DivDataSub">
                            <div class="xW_DivCode">
                                <input type="text"
                                    id="otbGonCodeLock" 
                                    name="otbGonCodeLock" 
                                    class="xW_InputTextCode xCN_AllReadOnlyBGColor"
                                    readonly="readonly"/>
                            </div> 
                            <div class="xW_DivTextBox">
                                <input type="text" id='otbGonNameLock'
                                 class='xCN_AllReadOnlyBGColor xW_WidthInputTextLock' 
                                 readonly="readonly" />  
                            </div> 
                            <div>
                                <div class='xW_DivLabel'><lable>Facing</lable></div>
                                <input type="text"
                                    id="otbFacing" 
                                    name="otbFacing" 
                                    style='width:50px;'/>
                            </div>
                            <%--<div class='xW_DivCode'>
                                <%=Html.ValidationMessageFor(Function(model) model.FTGonCode)%>  
                            </div> --%>        
                        </div>
                        <div class="xW_DivDataSub">
                            <div class="xW_DivCode">
                                <input type="text"
                                    id="otbFTPdtCode" 
                                    name="otbFTPdtCode" 
                                    onblur='W_ObjPdtCodeBlur()' 
                                    onkeydown='W_ObjPdtCodeKeydown(event.keyCode,event.which)'
                                    class="xW_InputTextCode"/>
                            </div>
                            <div class ="xCN_DivBrowData">
                                <a href="javascript:void(0);" onclick="W_BRWxProduct();">
                                  <img id="oimBrwPdt"                       
                                        class="xCN_ImgBrowData"
                                        name="oimBrwPdt" 
                                        src='<%=ViewData("oimgBrowse")%>' />                      
                                </a>
                            </div>
                            <div class ="xW_DivTextBoxName">
                                <input type="text"
                                    id='otbFTPdtName'
                                    name='otbFTpdtName' 
                                    class='xW_WidthInputNameTextLock xCN_AllReadOnlyBGColor'
                                    readonly="readonly" />
                            </div>
                            <div class ="xCN_DivBrowData">
                                <a href="javascript:void(0);" onclick="W_ADDxDumpPdtToGrid()">
                                  <img id="oimDumpPdt"                       
                                        class="xCN_ImgBrowData"
                                        name="oimBrwPdt" 
                                        src='<%=ViewData("oimgDumpLock")%>' />                      
                                </a>
                            </div>
                        </div>
                    </div>  
                    <!-- ตารางสินค้า -->
                    <div id="odiGridDT" class="xW_DivGridDetail">
                        <%  'declare the grid and enable features
                            Dim oDataDT As IEnumerable(Of Adasoft.WebPos.Models.cmlTCNTCstGiftDT) = ViewData("DataDT")
                            
                            Dim gridBuilder = Html.Telerik().Grid(oDataDT) _
                                        .Name("ogdGridDT") _
                                        .HtmlAttributes(New With {.style = "width:99.8%;"}) _
                                        .Scrollable(Function(o) o.Height(298)) _
                                        .Scrollable.HtmlAttributes(New With {.style = "height:320px;"}) _
                                        .Footer(False) _
                                        .Selectable()
                                            
                            gridBuilder.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                                  .Select("C_DAToSelectAjaxEditing", "cvcGondola") _
                                  ))
                              
                            'Add grid columns
                            gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FNCgdSeqNo).Title(ViewData("olaSeqNo")).Width(60) _
                                   .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                   .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                            gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTPdtCode).Title(ViewData("olaPdtCode")).Width(80) _
                                   .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                   .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                            gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTPdtName).Title(ViewData("olaPdtName")).Width(150) _
                                   .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                   .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))                                
                            gridBuilder.ClientEvents(Function(Events) Events.OnLoad("grid_onLoad"))
                            gridBuilder.ClientEvents(Function(Events) Events.OnRowSelect("W_GETxPdtOnRowSelected"))
                            gridBuilder.RowAction(Function(row) (row.Selected = row.DataItem.FNCgdSeqNo.Equals(ViewData("id"))))
                                
                            'Render the grid
                            gridBuilder.Render()
                             
                        %>
                        <div class="xW_DivComment" style="color:Purple">
                            <label><%=ViewData("olaShortcutKey") %></label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
            
    </div>
    <% End Using %>
    
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="HeadContent">
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J001_LoadAutoGenCode.js")%>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J002_General.js")%>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J009_ShowTab.js")%>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J010_ShowTabData.js")%>"></script>
    <link href="<%=Url.Content("~/Content/AdaCss/Global/FCS_CNCenter.css")%>" rel="stylesheet" type="text/css" />
    <link type="text/css" rel="Stylesheet" href="<%=Url.Content("~/Content/AdaCss/Local/FCS_cvcManagementLocal.css")%>" />
</asp:Content> 
