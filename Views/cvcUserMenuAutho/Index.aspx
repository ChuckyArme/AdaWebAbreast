<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage(Of IEnumerable (Of Adasoft.WebPos.Models.cmlCNTSysUserMenuTemplate))" %>
<%--<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage(Of IEnumerable (Of Adasoft.Abreast.Models.cmlCNTSysUserMenuTemplate))" %>--%>
<%@ Import Namespace="Adasoft.WebPos.Models" %>
<%@ Import Namespace="System.Resources" %>
<%@ Import Namespace="AdaWebPos" %>
<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
    
        AdaWebPos.My.Resources.resLCcvcUserMenuAutho.Culture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)

        ViewData("olaAddPrint") = AdaWebPos.My.Resources.resLCcvcUserMenuAutho.olaAddPrint
        ViewData("olaApprove") = AdaWebPos.My.Resources.resLCcvcUserMenuAutho.olaApprove
        ViewData("olaBrowse") = AdaWebPos.My.Resources.resLCcvcUserMenuAutho.olaBrowse
        ViewData("olaCancel") = AdaWebPos.My.Resources.resLCcvcUserMenuAutho.olaCancel
        ViewData("olaCanDelete") = AdaWebPos.My.Resources.resLCcvcUserMenuAutho.olaCanDelete
        ViewData("olaCanEdit") = AdaWebPos.My.Resources.resLCcvcUserMenuAutho.olaCanEdit
        ViewData("olaCanSave") = AdaWebPos.My.Resources.resLCcvcUserMenuAutho.olaCanSave
        ViewData("olaCreate") = AdaWebPos.My.Resources.resLCcvcUserMenuAutho.olaCreate
        ViewData("olaDel") = AdaWebPos.My.Resources.resLCcvcUserMenuAutho.olaDel
        ViewData("olaDetail") = AdaWebPos.My.Resources.resLCcvcUserMenuAutho.olaDetail
        ViewData("olaEdit") = AdaWebPos.My.Resources.resLCcvcUserMenuAutho.olaEdit
        ViewData("olaFDDateUpd") = AdaWebPos.My.Resources.resLCcvcUserMenuAutho.olaFDDateUpd
        ViewData("olaFind") = AdaWebPos.My.Resources.resLCcvcUserMenuAutho.olaFind
        ViewData("olaFTMnuEngDesc") = AdaWebPos.My.Resources.resLCcvcUserMenuAutho.olaFTMnuEngDesc
        ViewData("olaFTMnuThaDesc") = AdaWebPos.My.Resources.resLCcvcUserMenuAutho.olaFTMnuThaDesc
        ViewData("olaFull") = AdaWebPos.My.Resources.resLCcvcUserMenuAutho.olaFull
        ViewData("olaGenCode") = AdaWebPos.My.Resources.resLCcvcUserMenuAutho.olaGenCode
        ViewData("olaHeaderList") = AdaWebPos.My.Resources.resLCcvcUserMenuAutho.olaHeaderList
        ViewData("olaMenuName") = AdaWebPos.My.Resources.resLCcvcUserMenuAutho.olaMenuName
        ViewData("olaNotAccess") = AdaWebPos.My.Resources.resLCcvcUserMenuAutho.olaNotAccess
        ViewData("olaPrint") = AdaWebPos.My.Resources.resLCcvcUserMenuAutho.olaPrint
        ViewData("olaRead") = AdaWebPos.My.Resources.resLCcvcUserMenuAutho.olaRead
        ViewData("olaReport") = AdaWebPos.My.Resources.resLCcvcUserMenuAutho.olaReport
        ViewData("olaRowID") = AdaWebPos.My.Resources.resLCcvcUserMenuAutho.olaRowID
        ViewData("olaSelectAll") = AdaWebPos.My.Resources.resLCcvcUserMenuAutho.olaSelectAll
        ViewData("olaSelectNone") = AdaWebPos.My.Resources.resLCcvcUserMenuAutho.olaSelectNone

        ViewData("oimgSave") = Url.Content(Resources.resGBImageList.oimgSave)
        ViewData("oimgUndo") = Url.Content(Resources.resGBImageList.oimgUndo)
        ViewData("oimgBrowse") = Url.Content(Resources.resGBImageList.oimgBrowse)
        ViewData("oimgSelectAll") = Url.Content(Resources.resGBImageList.oimgSelectAll)
        ViewData("oimgSelectNone") = Url.Content(Resources.resGBImageList.oimgSelectNone)
        
        'Tab Name
        ViewData("olaAuthMnu") = AdaWebPos.My.Resources.resLCcvcUserMenuAutho.olaAuthMnu
        ViewData("olaAuthCond") = AdaWebPos.My.Resources.resLCcvcUserMenuAutho.olaAuthCond
        ViewData("olaAuthRpt") = AdaWebPos.My.Resources.resLCcvcUserMenuAutho.olaAuthRpt
        ViewData("olaAuth") = AdaWebPos.My.Resources.resLCcvcUserMenuAutho.olaAuth 'อนุญาต '*CH 25-10-2012
        ViewData("olaAllRpt") = AdaWebPos.My.Resources.resLCcvcUserMenuAutho.olaAllRpt 'รายงาน รวม '*CH 25-10-2012
        ViewData("olaDesc") = AdaWebPos.My.Resources.resLCcvcUserMenuAutho.olaDesc 'คำอธิบาย '*CH 25-10-2012
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	<%=ViewData("olaMenuName") & " / " & ViewData("tUserCode") & " : " & ViewData("tUserName")%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<script type ="text/javascript">
    var tW_GetAuthRpt = '0' //0 False; 1 True
    var tW_UserCode = '<%=ViewData("tUserCode")%>';
    window.onload = window_onload_Page;
    function window_onload_Page() {
        //J003_SHWxWaiting();
        try {
            tJ002_VirtualDirectory = '<%=Session("VirtualDirectory")%>';
            tJ001_VirtualDirectory = '<%=Session("VirtualDirectory")%>';
            tJ003_VirtualDirectory = '<%=Session("VirtualDirectory")%>';
            //Lock User ID
            J002_SETxReadOnly("otbFTUsrCode", true);
            W_SETxDisplayTab() //*CH 24-10-2012
            W_SHWxTableMenu() //แสดงตาราง เมนู //*CH 29-10-2012
        } catch (ex) {
        } finally {
            //J003_DISxWaiting();
        }
    }

    //*กำหนด tab ที่แสดงเป็น Tab แรก *CH 24-10-2012
    function W_SETxDisplayTab() {
        J010_SHWxTabData(0, 'odiAuthMnu', 'odiAuthCond', 'odiAuthRpt');
        J009_SHWxTabTop(0, 'odiDiv_Toppic1', 'odiDiv_Toppic2', 'odiDiv_Toppic2');
    }
    
    //Function Buttom Back
    function W_FRMxForwClose() {
        window.location = '<%=Url.Action("Index","cvcUser")%>';
    }

    //@Gobal Variable for function
    var tW_Menu = 'omnMngUser';

    //@Function: Save Menu Autho
    //@author: Kriengkai (kik)
    //@Since: 18/4/54 11:26
    function W_FRMxSaveDocument() {
    
        var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Edit%>';
        var tPwdAllow = '<%=Session("bVB_CNPwdAllow")%>';
        var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
        var bAllow = J002_CHKtCheckAuthorize(tW_Menu, tAuthor, tPwdAllow, tMsgNotAuthorize);
        if (bAllow == false) {
            return false;
        }
        else {
            document.UserMenu.submit();
        }

    }
    function W_SETtFormat(pnVal, ptFormat) {
        var len = (ptFormat.length - String(pnVal).length) + 1;
        return len > 0 ? new Array(len).join('0') + pnVal : nrpnVal
    }
    //เลือกรายการทั้งหมด Menu //*CH 29-10-2012
    function W_DATxSelectAllMnu() {
        J003_SHWxWaiting();
        try {
            var tFormat = '0000'
            var oMenu = document.getElementsByName('FTMnuName');
            for (nI = 1; nI <= oMenu.length; nI++) {
                var tIndex = W_SETtFormat(nI, tFormat);
                $('#' + tIndex + 'FTSumFull').attr('checked', true);
                $('#' + tIndex + 'FTSumRead').attr('checked', true);
                $('#' + tIndex + 'FTSumEdit').attr('checked', true);
                $('#' + tIndex + 'FTSumDelete').attr('checked', true);
                $('#' + tIndex + 'FTSumCancel').attr('checked', true);
                $('#' + tIndex + 'FTSumAppv').attr('checked', true);
                $('#' + tIndex + 'FTSumPrint').attr('checked', true);
                $('#' + tIndex + 'FTSumPrintMore').attr('checked', true);
                $('#' + tIndex + 'FTSumAdd').attr('checked', true);
            }
        } catch (ex) {
        } finally {
        J003_DISxWaiting();
        }
    }
    //ยกเลิกรายการทั้งหมด Menu //*CH 29-10-2012
    function W_DATxSelectNoneMnu() {
        J003_SHWxWaiting();
        try {
            var tFormat = '0000'
            var oMenu = document.getElementsByName('FTMnuName');
            for (nI = 1; nI <= oMenu.length; nI++) {
                var tIndex = W_SETtFormat(nI, tFormat);
                $('#' + tIndex + 'FTSumFull').attr('checked', false);
                $('#' + tIndex + 'FTSumRead').attr('checked', false);
                $('#' + tIndex + 'FTSumEdit').attr('checked', false);
                $('#' + tIndex + 'FTSumDelete').attr('checked', false);
                $('#' + tIndex + 'FTSumCancel').attr('checked', false);
                $('#' + tIndex + 'FTSumAppv').attr('checked', false);
                $('#' + tIndex + 'FTSumPrint').attr('checked', false);
                $('#' + tIndex + 'FTSumPrintMore').attr('checked', false);
                $('#' + tIndex + 'FTSumAdd').attr('checked', false);
            }
        } catch (ex) {
            J002_SHWxMsgError("W_DATxSelectNoneMnu", ex);
        } finally {
        J003_DISxWaiting();
        }
    }

    //เลือกทั้งหมด CheckBox
    function W_CHKxSelectAll(poChkAll,ptChkAllName) {
        var tIndex = '';
        var oCHKs = document.getElementsByName(ptChkAllName);
        for (i = 0; i <= oCHKs.length; i++) {
            if (oCHKs[i].id == poChkAll.id) {
                tIndex = oCHKs[i].id.substr(0, 4)
                break;
            }
        }

        if (poChkAll.checked == true) {
            $('#' + tIndex + 'FTSumRead').attr('checked', true);
            $('#' + tIndex + 'FTSumAdd').attr('checked', true);
            $('#' + tIndex + 'FTSumEdit').attr('checked', true);
            $('#' + tIndex + 'FTSumDelete').attr('checked', true);
            $('#' + tIndex + 'FTSumCancel').attr('checked', true);
            $('#' + tIndex + 'FTSumAppv').attr('checked', true);
            $('#' + tIndex + 'FTSumPrint').attr('checked', true);
            $('#' + tIndex + 'FTSumPrintMore').attr('checked', true);
        } else {
            $('#' + tIndex + 'FTSumRead').attr('checked', false);
            $('#' + tIndex + 'FTSumAdd').attr('checked', false);
            $('#' + tIndex + 'FTSumEdit').attr('checked', false);
            $('#' + tIndex + 'FTSumDelete').attr('checked', false);
            $('#' + tIndex + 'FTSumCancel').attr('checked', false);
            $('#' + tIndex + 'FTSumAppv').attr('checked', false);
            $('#' + tIndex + 'FTSumPrint').attr('checked', false);
            $('#' + tIndex + 'FTSumPrintMore').attr('checked', false);
        }
    }
    //เมื่อเลือกสิทธิจนหมดให้ CheckBox FTSumFull ถูกเลือกไปด้วย
    function W_CHKxSelectSome(poChkName, ptChkName) {
        var oCHKs = document.getElementsByName(ptChkName);
        var tIndex = '';
        for (i = 0; i <= oCHKs.length; i++) {
            if (oCHKs[i].sourceIndex == poChkName.sourceIndex) {
                tIndex = oCHKs[i].id.substr(0, 4)
                break;
            }
        }
        var nSum = $('#' + tIndex + 'FTSumRead').attr('checked')
                    + $('#' + tIndex + 'FTSumAdd').attr('checked')
                    + $('#' + tIndex + 'FTSumEdit').attr('checked')
                    + $('#' + tIndex + 'FTSumDelete').attr('checked')
                    + $('#' + tIndex + 'FTSumCancel').attr('checked')
                    + $('#' + tIndex + 'FTSumAppv').attr('checked')
                    + $('#' + tIndex + 'FTSumPrint').attr('checked')
                    + $('#' + tIndex + 'FTSumPrintMore').attr('checked');
        if (nSum >= 8) {
            $('#' + tIndex + 'FTSumFull').attr('checked', true);
        } else {
            $('#' + tIndex + 'FTSumFull').attr('checked', false);
        }
    }

    //สำหรับตาราง รายงาน รวม
    function W_CHKxSelectHead(poChk, ptChkName) {
        var oCHKs = document.getElementsByName(ptChkName);
        var tLev = $('#' + ptChkName + 'FTRptLevel').val();
        //alert(tLev);
        var tParent;
        if (tLev == "1") {
            var tIndex = '';
            for (i = 0; i <= oCHKs.length; i++) {
                if (oCHKs[i].sourceIndex == poChk.sourceIndex) {
                    tParent = oCHKs[i].id.substr(0, 3)
                    break;
                }
            }

            var nParent = $('#' + ptChkName + 'Parent').val();
            if (poChk.checked == true) {
                for (nNode = 1; nNode <= nParent; nNode++) {
                    $('#' + tParent + nNode + 'FTSurPrint').attr('checked', true);
                    $('#' + tParent + nNode + 'RefFTSurPrint').attr('checked', true);
                }
            } else {
                for (nNode = 1; nNode <= nParent; nNode++) {
                    $('#' + tParent + nNode + 'FTSurPrint').attr('checked', false);
                    $('#' + tParent + nNode + 'RefFTSurPrint').attr('checked', false);
                }
            }
        } else {
            for (i = 0; i <= oCHKs.length; i++) {
                if (oCHKs[i].sourceIndex == poChk.sourceIndex) {
                    tParent = oCHKs[i].id.substr(0, 4);
                    tHead = oCHKs[i].id.substr(0, 3);
                    break;
                }
            }
            if (poChk.checked == true) {
                $('#' + tHead + '1FTSurPrint').attr('checked', true);
                $('#' + tHead + '1RefFTSurPrint').attr('checked', true);
                $('#' + tParent + 'RefFTSurPrint').attr('checked', true);
            } else {
                $('#' + tParent + 'RefFTSurPrint').attr('checked', false);
            }
        }
    }
    //แสดงตาราง เมนู //*CH 29-10-2012
    function W_SHWxTableMenu() {
        J003_SHWxWaiting();
        try {
            //หน่วงเวลาเพื่อให้แสดงหน้าจอทึบ '*CH 31-10-2012
            setTimeout(function() {
                var tUrl = '<%=Url.Action("C_GEToAuthMnu","cvcUserMenuAutho") %>';
                tUrl += '?ptUserCode=' + tW_UserCode;
                var oXmlHttp = J002_GEToXMLHttpRequest();
                oXmlHttp.open('GET', encodeURI(tUrl), false);
                oXmlHttp.send(null);
                var tReturn = oXmlHttp.responseText;
                $('#odiAuthMnu').html(tReturn);
            }, 2000);
        } catch (ex) {
        } finally {
            setTimeout(function() {
                J003_DISxWaiting();
            }, 2000);
        }
    }
    
    //แสดงตาราง รายงาน รวม
    function W_SHWxTableAllRpt() {
        J003_SHWxWaiting();
        try {
            if (tW_GetAuthRpt == "1") { return false; }
            //หน่วงเวลาเพื่อให้แสดงหน้าจอทึบ '*CH 31-10-2012
            setTimeout(function() {
                tW_GetAuthRpt = "1";
                var tUrl = '<%=Url.Action("C_GEToAuthRpt","cvcUserMenuAutho") %>';
                tUrl += '?ptUserCode=' + tW_UserCode;
                var oXmlHttp = J002_GEToXMLHttpRequest();
                oXmlHttp.open('GET', encodeURI(tUrl), false);
                oXmlHttp.send(null);
                var tReturn = oXmlHttp.responseText;
                document.getElementById('odiAuthRpt').innerHTML = tReturn;
            }, 2000);
        } catch (ex) {
        } finally {
            if (tW_GetAuthRpt == "0") {
                setTimeout(function() {
                    J003_DISxWaiting();
                }, 2000)
            } else {
                J003_DISxWaiting();
            }
        }
    }

    //บันทึกสิทธิการใช้งาน
    function W_DATxSaveAuth() {
        try {
            J003_SHWxWaiting();
            //Check ว่ามีสิทธิในการบันทึกหรือไม่
            var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Edit%>';
            var tPwdAllow = '<%=Session("bVB_CNPwdAllow")%>';
            var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
            var bAllow = J002_CHKtCheckAuthorize(tW_Menu, tAuthor, tPwdAllow, tMsgNotAuthorize);
            if (bAllow == false) {
                alert(tMsgNotAuthorize);
                return false;
            }
            W_GETxModel();
            //var oLModelMnu = W_GEToModel(); //การใช้งานเมนู
            //var oLModelCond = W_GEToModelCond();  //การใช้งานเงื่อนไข
            //var oRptChain = document.getElementsByName('FTRptChain');
            //if (oRptChain.length > 0) {
            //    var oLModelRpt = W_GEToModelRpt();  //การใช้งานรายงาน รวม
            //}
            //----  บันทึกสิทธิ //*CH 26-10-2012
            //var tUrl = '<%=Url.Action("C_SETxModelMenu","cvcUserMenuAutho")%>';
            //$.post(tUrl, oLModelMnu);
            //tUrl = '<%=Url.Action("C_SETxModelMenu","cvcUserMenuAutho")%>';
            //$.post(tUrl, oLModelCond);
            //tUrl = '<%=Url.Action("C_SETxModelMenu","cvcUserMenuAutho")%>';
            //$.post(tUrl, oLModelRpt);

            tUrl = '<%=Url.Action("C_DATtSaveAuthor","cvcUserMenuAutho")%>';
            //tUrl += '?poModelMnu=' + oLModelMnu;
            //tUrl += '&poModelCond=' + oLModelCond;
            //tUrl == '&poModelRpt=' + oLModelRpt;
            var oXmlHttp = J002_GEToXMLHttpRequest();
            oXmlHttp.open('GET', encodeURI(tUrl), false);
            oXmlHttp.send(null);
            var tReturn = oXmlHttp.responseText;
        }
        catch (ex) {
            J002_SHWxMsgError("W_DATxSaveUser", ex);
        }
        finally {
            J003_DISxWaiting();
        }
    }

    //*CH 26-10-2012 เตรียมโมเดลสิทธิการใช้งานเมนู
    function W_GETxModel() {
        try {
            //var oLModel;
            //var oModel;
            var oMenu = document.getElementsByName('FTMnuName');
            var oFull = document.getElementsByName('FTSumFull');
            var oAdd = document.getElementsByName('FTSumAdd');
            var oRead = document.getElementsByName('FTSumRead');
            var oEdit = document.getElementsByName('FTSumEdit');
            var oDelete = document.getElementsByName('FTSumDelete');
            var oCancel = document.getElementsByName('FTSumCancel');
            var oAppv = document.getElementsByName('FTSumAppv');
            var oPrint = document.getElementsByName('FTSumPrint');
            var oPrintMore = document.getElementsByName('FTSumPrintMore');
            //var aVal = new Array;
            var aMenu = new Array;
            var aFull = new Array;
            var aRead = new Array;
            var aAdd = new Array;
            var aEdit = new Array;
            var aDelete = new Array;
            var aCancel = new Array;
            var aAppv = new Array;
            var aPrint = new Array;
            var aPrintMore = new Array;
            //for test
            //var tCount;
            //alert("Length of Menu : " + oMenu.length);
            for (i = 0; i <= oMenu.length - 1; i++) {
                //oModel = {
                //    FTMnuName: oMenu[i].value,
                //    FTSumFull: (oFull[i].checked ? '1' : '0'),
                //    FTSumAdd: (oAdd[i].checked ? '1' : '0'),
                //    FTSumRead: (oRead[i].checked ? '1' : '0'),
                //    FTSumEdit: (oEdit[i].checked ? '1' : '0'),
                //    FTSumDelete: (oDelete[i].checked ? '1' : '0'),
                //    FTSumCancel: (oCancel[i].checked ? '1' : '0'),
                //    FTSumAppv: (oAppv[i].checked ? '1' : '0'),
                //    FTSumPrint: (oPrint[i].checked ? '1' : '0'),
                //    FTSumPrintMore: (oPrintMore[i].checked ? '1' : '0')
                //};
                //var tUrl = '<%=Url.Action("C_SETxModelMenu","cvcUserMenuAutho")%>';
                //$.post(tUrl, oModel);
                //aVal[i] = oModel;
                aMenu[i] = oMenu[i].value;
                aFull[i] = (oFull[i].checked ? '1' : '0');
                aRead[i] = (oRead[i].checked ? '1' : '0');
                aAdd[i] = (oAdd[i].checked ? '1' : '0');
                aEdit[i] = (oEdit[i].checked ? '1' : '0');
                aDelete[i] = (oDelete[i].checked ? '1' : '0');
                aCancel[i] = (oCancel[i].checked ? '1' : '0');
                aAppv[i] = (oAppv[i].checked ? '1' : '0');
                aPrint[i] = (oPrint[i].checked ? '1' : '0');
                aPrintMore[i] = (oPrintMore[i].checked ? '1' : '0');
                //var oXmlHttp = J002_GEToXMLHttpRequest();
                //oXmlHttp.open('get', encodeURI(tUrl), false);
                //oXmlHttp.send(null);
                //tCount = i + 1;
            }
            //alert("Set Model Count : " + tCount);
            //oLModel = aVal;
            //return oLModel;
            //return oModel;

            var oXmlHttp = J002_GEToXMLHttpRequest();
            var tUrl = '<%=Url.Action("C_SETtModelMnuName","cvcUserMenuAutho")%>';
            tUrl += '?ptMenu=' + aMenu;
            oXmlHttp.open('GET', encodeURI(tUrl), false);
            oXmlHttp.send(null);
            var tReturn = oXmlHttp.responseText;
            if (tReturn.split('|')[0] != "Y") { J002_SHWxMsgError("W_GETxModel", tReturn.split('|')[1]); }

            var tUrl = '<%=Url.Action("C_SETtModelMnuFull","cvcUserMenuAutho")%>';
            tUrl += '?ptFull=' + aFull;
            oXmlHttp.open('GET', encodeURI(tUrl), false);
            oXmlHttp.send(null);
            tReturn = oXmlHttp.responseText;
            if (tReturn.split('|')[0] != "Y") { J002_SHWxMsgError("W_GETxModel", tReturn.split('|')[1]); }

            var tUrl = '<%=Url.Action("C_SETtModelMnuRead","cvcUserMenuAutho")%>';
            tUrl += '?ptRead=' + aRead;
            oXmlHttp.open('GET', encodeURI(tUrl), false);
            oXmlHttp.send(null);
            tReturn = oXmlHttp.responseText;
            if (tReturn.split('|')[0] != "Y") { J002_SHWxMsgError("W_GETxModel", tReturn.split('|')[1]); }

            var tUrl = '<%=Url.Action("C_SETtModelMnuAdd","cvcUserMenuAutho")%>';
            tUrl += '?ptAdd=' + aAdd;
            oXmlHttp.open('GET', encodeURI(tUrl), false);
            oXmlHttp.send(null);
            tReturn = oXmlHttp.responseText;
            if (tReturn.split('|')[0] != "Y") { J002_SHWxMsgError("W_GETxModel", tReturn.split('|')[1]); }

            var tUrl = '<%=Url.Action("C_SETtModelMnuEdit","cvcUserMenuAutho")%>';
            tUrl += '?ptEdit=' + aEdit;
            oXmlHttp.open('GET', encodeURI(tUrl), false);
            oXmlHttp.send(null);
            tReturn = oXmlHttp.responseText;
            if (tReturn.split('|')[0] != "Y") { J002_SHWxMsgError("W_GETxModel", tReturn.split('|')[1]); }

            var tUrl = '<%=Url.Action("C_SETtModelMnuDelete","cvcUserMenuAutho")%>';
            tUrl += '?ptDelete=' + aDelete;
            oXmlHttp.open('GET', encodeURI(tUrl), false);
            oXmlHttp.send(null);
            tReturn = oXmlHttp.responseText;
            if (tReturn.split('|')[0] != "Y") { J002_SHWxMsgError("W_GETxModel", tReturn.split('|')[1]); }

            var tUrl = '<%=Url.Action("C_SETtModelMnuCancel","cvcUserMenuAutho")%>';
            tUrl += '?ptCancel=' + aCancel;
            oXmlHttp.open('GET', encodeURI(tUrl), false);
            oXmlHttp.send(null);
            tReturn = oXmlHttp.responseText;
            if (tReturn.split('|')[0] != "Y") { J002_SHWxMsgError("W_GETxModel", tReturn.split('|')[1]); }

            var tUrl = '<%=Url.Action("C_SETtModelMnuAppv","cvcUserMenuAutho")%>';
            tUrl += '?ptAppv=' + aAppv;
            oXmlHttp.open('GET', encodeURI(tUrl), false);
            oXmlHttp.send(null);
            tReturn = oXmlHttp.responseText;
            if (tReturn.split('|')[0] != "Y") { J002_SHWxMsgError("W_GETxModel", tReturn.split('|')[1]); }

            var tUrl = '<%=Url.Action("C_SETtModelMnuPrint","cvcUserMenuAutho")%>';
            tUrl += '?ptPrint=' + aPrint;
            oXmlHttp.open('GET', encodeURI(tUrl), false);
            oXmlHttp.send(null);
            tReturn = oXmlHttp.responseText;
            if (tReturn.split('|')[0] != "Y") { J002_SHWxMsgError("W_GETxModel", tReturn.split('|')[1]); }

            var tUrl = '<%=Url.Action("C_SETtModelMnuPrintMore","cvcUserMenuAutho")%>';
            tUrl += '?ptPrintMore=' + aPrintMore;
            oXmlHttp.open('GET', encodeURI(tUrl), false);
            oXmlHttp.send(null);
            tReturn = oXmlHttp.responseText;
            if (tReturn.split('|')[0] != "Y") { J002_SHWxMsgError("W_GETxModel", tReturn.split('|')[1]); }

            var tUrl = '<%=Url.Action("C_SETtModelMenu","cvcUserMenuAutho")%>';
            //tUrl += '?ptMenu=' + aMenu + '&ptFull=' + aFull;
            //tUrl += '&ptRead=' + aRead + '&ptAdd=' + aAdd;
            //tUrl += '&ptEdit=' + aEdit + '&ptDelete=' + aDelete;
            //tUrl += '&ptCancel=' + aCancel + '&ptAppv=' + aAppv;
            //tUrl += '&ptPrint=' + aPrint + '&ptPrintMore=' + aPrintMore;
            //$.post(tUrl, oLModel, W_GEToModelCond);
            oXmlHttp.open('GET', encodeURI(tUrl), false);
            oXmlHttp.send(null);
            tReturn = oXmlHttp.responseText;
            if (tReturn.split('|')[0] == "Y") {
                W_GETxModelCond();
            } else {
                J002_SHWxMsgError("W_GETxModel", tReturn.split('|')[1]);
            }
        }
        catch (ex) {
            J002_SHWxMsgError("W_GETxModel", ex);
        }
    }

    //*CH 26-10-2012 เตรียมโมเดลสิทธิการใช้งานเงื่อนไข
    function W_GETxModelCond() {
        try {
            //var oLModel;
            //var oModel;
            var oMenu = document.getElementsByName('FTMnuCondName');
            var oAuth = document.getElementsByName('FTSuoAutho');
            //var aVal = new Array;
            var aMenu = new Array;
            var aSuoAutho = new Array;
            for (i = 0; i <= oMenu.length - 1; i++) {
                //oModel = {
                //    FTMnuName: oMenu[i].value,
                //    FTSuoAutho: (oAuth[i].checked ? '1' : '0')
                //};
                //tUrl = '<%=Url.Action("C_SETxModelConditon","cvcUserMenuAutho")%>';
                //$.post(tUrl, oModel);
                //aVal[i] = oModel;
                aMenu[i] = oMenu[i].value;
                aSuoAutho[i] = (oAuth[i].checked ? '1' : '0');
            }
            //oLModel = aVal;
            //return oLModel;
            //tUrl = '<%=Url.Action("C_SETxModelConditon","cvcUserMenuAutho")%>';
            //$.post(tUrl, oLModel, W_GEToModelRpt);
            var tUrl = '<%=Url.Action("C_SETtModelConditon","cvcUserMenuAutho")%>';
            tUrl += '?ptMenu=' + aMenu + '&ptSuoAutho=' + aSuoAutho;
            var oXmlHttp = J002_GEToXMLHttpRequest();
            oXmlHttp.open('GET', encodeURI(tUrl), false);
            oXmlHttp.send(null);
            var tReturn = oXmlHttp.responseText;
            if (tReturn.split('|')[0] == "Y") {
                W_GETxModelRpt();
            } else {
                J002_SHWxMsgError("W_GETxModelCond", tReturn.split('|')[1]);
            }
        }
        catch (ex) {
            J002_SHWxMsgError("W_GETxModelCond", ex);
        }
    }

    //*CH 26-10-2012 เตรียมโมเดลสิทธิการใช้งานรายงาน รวม
    function W_GETxModelRpt() {
        try {
            //var oLModel;
            //var oModel;
            var oRptChain = document.getElementsByName('FTRptChain');
            var oSurPrint = document.getElementsByName('FTSurPrint');
            //var aVal = new Array;
            var aRptChain = new Array;
            var aSurPrint = new Array;
            if (oRptChain.length > 0) {
                for (i = 0; i <= oRptChain.length - 1; i++) {
                    //oModel = {
                    //    FTRptChain: oRptChain[i].value,
                    //    FTSurPrint: (oSurPrint[i].checked ? '1' : '0')
                    //};
                    //tUrl = '<%=Url.Action("C_SETxModelReport","cvcUserMenuAutho")%>';
                    //$.post(tUrl, oModel);
                    //aVal[i] = oModel;
                    aRptChain[i] = oRptChain[i].value;
                    aSurPrint[i] = (oSurPrint[i].checked ? '1' : '0');
                }
                //oLModel = aVal;
                //return oLModel;
                //tUrl = '<%=Url.Action("C_SETxModelReport","cvcUserMenuAutho")%>';
                //$.post(tUrl, oLModel, W_PRCtSaveAuth);
                var tUrl = '<%=Url.Action("C_SETtModelReport","cvcUserMenuAutho")%>';
                tUrl += '?ptRptChain=' + aRptChain + '&ptSurPrint=' + aSurPrint;
                var oXmlHttp = J002_GEToXMLHttpRequest();
                oXmlHttp.open('GET', encodeURI(tUrl), false);
                oXmlHttp.send(null);
                var tReturn = oXmlHttp.responseText;
                if (tReturn.split('|')[0] == "Y") {
                    W_PRCtSaveAuth();
                } else {
                    J002_SHWxMsgError("W_GETtModelRpt", tReturn.split('|')[1]);
                }
            } else {
                W_PRCtSaveAuth();
            }
        }
        catch (ex) {
            J002_SHWxMsgError("W_GETtModelRpt", ex);
        }
    }

    function W_PRCtSaveAuth() {
        tUrl = '<%=Url.Action("C_DATtSaveAuthor","cvcUserMenuAutho")%>';
        tUrl += '?ptUserCode=' + tW_UserCode;
        var oXmlHttp = J002_GEToXMLHttpRequest();
        oXmlHttp.open('GET', encodeURI(tUrl), false);
        oXmlHttp.send(null);
        var tReturn = oXmlHttp.responseText;
        var tFlag = tReturn.split('|')[0];
        var tMsg = tReturn.split('|')[1];
        alert(tMsg);
        if (tFlag == '0') { window.location = '<%=Url.Action("Index","cvcUser")%>'; }
    }

    function W_SHWxChkColor(ptObjName) {
        $('#' + ptObjName).addClass('xCN_LabelCheckColor');
    }
    function W_DISxChkColor(ptObjName) {
        $('#' + ptObjName).removeClass('xCN_LabelCheckColor');
    }
    function W_SHWxUnChkColor(ptObjName) {
        $('#' + ptObjName).addClass('xCN_LabelUnCheckColor');
    }
    function W_DISxUnChkColor(ptObjName) {
        $('#' + ptObjName).removeClass('xCN_LabelUnCheckColor');
    }
    function W_SHWxChkBtn(pnTab) {
        if (pnTab == 0) {
            $('#olaSelectAll').removeClass('xCN_DivDisplayNone');
            $('#olaSelectNone').removeClass('xCN_DivDisplayNone');
        } else {
            $('#olaSelectAll').addClass('xCN_DivDisplayNone');
            $('#olaSelectNone').addClass('xCN_DivDisplayNone');
        }
    }
    //RemoveClass xCN_DivDisplayNone '*CH 31-10-2012
    function W_DISxDisplayNone(ptObjName) {
        $('#' + ptObjName).removeClass('xCN_DivDisplayNone');
    }
</script>

   <% Using Html.BeginForm("C_SaveAuthor", "cvcUserMenuAutho", Nothing, FormMethod.Post, New With {.collection = Model, .name = "UserMenu", .id = "UserMenu"})%>
<div class="xW_DivMain xCN_AllFontFamily xCN_AllFontSize xCN_AllFontColor" >
        <%-------------------ชื่อเอกสาร---------------------------%>   
        <%--<div class="xCN_DivManageTopic xCN_AllMenuFontSize">
            <label id="olaTopicName" ><%=ViewData("olaHeaderAdd")%></label>
        </div>--%>
        <div class="xW_DivSearch">
            <div class='xW_DivPath'>
                <label>
                    <%=ViewData("olaMenuName") & " / " & ViewData("tUserCode") & " : " & ViewData("tUserName")%>
                </label> 
            </div>
        </div>
        <%-------------------เมนู-------------------------------%>   
        <div id="odiMenuTop" class="xCN_DivMainMenuPage xCN_AllBorderColor">
              <div id="odiMenu" class="xW_DivMenu">
                    <div id="odiMenuNew" class="xCN_DivMenuSave" style="float: left;">
                        <a onclick="W_DATxSaveAuth()" href="javascript:void(0)">
                            <div class="xCN_DivMenuNewCaption">
                                <%=ViewData("olaCanSave")%>
                            </div>
                        </a>
                    </div>
                    <%--<div id="odiMenuDelete" class="xCN_DivMenuHome" style="float: left;">--%>
                    <div id="Div1" class="xCN_DivMenuLogOut" style="float: left;">
                        <a onclick = "W_FRMxForwClose()" href="javascript:void(0)">
                            <div class="xCN_DivMenuNewCaption">
                                <%=ViewData("olaHeaderList")%>
                            </div>
                        </a>
                    </div>
              </div>
        </div>   
     
     <!-- Tab Menu -->
    <div class="xCN_DivTabToppic xW_DivSize100 xW_Margin1" >
        <a href="javascript:void(0);" 
            onclick="J003_SHWxWaiting();W_SHWxChkBtn(0);{J010_SHWxTabData(0,'odiAuthMnu','odiAuthCond','odiAuthRpt');
                J009_SHWxTabTop(0,'odiDiv_Toppic1','odiDiv_Toppic2','odiDiv_Toppic3')}J003_DISxWaiting();">
            <div id="odiDiv_Toppic1" class="xCN_DivTabActive xW_DivTabToppicLabel" >
                <%=ViewData("olaAuthMnu")%>
            </div>
        </a>
        <a href="javascript:void(0);" 
            onclick="J003_SHWxWaiting();W_DISxDisplayNone('odiAuthCond');W_SHWxChkBtn(1);{J010_SHWxTabData(1,'odiAuthMnu','odiAuthCond','odiAuthRpt');
                J009_SHWxTabTop(1,'odiDiv_Toppic1','odiDiv_Toppic2','odiDiv_Toppic3')}J003_DISxWaiting();">
            <div id="odiDiv_Toppic2" class="xCN_DivTabUnActive xW_DivTabToppicLabel" >
                <%=ViewData("olaAuthCond")%>
            </div>
        </a>
        <a href="javascript:void(0);" 
            onclick="W_SHWxTableAllRpt();W_SHWxChkBtn(2);{J010_SHWxTabData(2,'odiAuthMnu','odiAuthCond','odiAuthRpt');
                J009_SHWxTabTop(2,'odiDiv_Toppic1','odiDiv_Toppic2','odiDiv_Toppic3')}">
            <div id="odiDiv_Toppic3" class="xCN_DivTabUnActive xW_DivTabToppicLabel" >
                <%=ViewData("olaAuthRpt")%>
            </div>
        </a>
        <%--<button title='<%=ViewData("olaSelectNone") %>' 
            id='ocmSelectNone'
            class='xCN_BtnSelectData'
            onclick="W_DATxSelectNoneMnu();">
            <img align="right" style="width:16px; height:16px;" 
                src='<%=ViewData("oimgSelectNone")%>'/>
                        <%=ViewData("olaSelectNone") %>
        </button>--%>
        <%--<button title='<%=ViewData("olaSelectAll") %>' 
            id='ocmSelectAll'
            class='xCN_BtnSelectData'
            onclick="W_DATxSelectAllMnu();">
            <img align="right" style="width:16px; height:16px;" 
                src='<%=ViewData("oimgSelectAll")%>'/>
                        <%=ViewData("olaSelectAll") %>
        </button>--%>
        
        <a id='olaSelectNone' onclick='W_DATxSelectNoneMnu()' class='xCN_BtnSelectData' 
            onmouseover='W_SHWxUnChkColor("SelectNone")' onmouseout='W_DISxUnChkColor("SelectNone")'>
            <img align="right" style="width:16px; height:16px;" 
                src='<%=ViewData("oimgSelectNone")%>'/>
            <label id='SelectNone'><%=ViewData("olaSelectNone") %></label>
        </a>
        <a id='olaSelectAll' onclick='W_DATxSelectAllMnu()' class='xCN_BtnSelectData xCN_CheckColor' 
            onmouseover='W_SHWxChkColor("SelectAll")' onmouseout='W_DISxChkColor("SelectAll")'>
            <img align="right" style="width:16px; height:16px;" 
                src='<%=ViewData("oimgSelectAll")%>'/>
            <label id='SelectAll'><%=ViewData("olaSelectAll") %></label>
        </a>
        <%--<input id='ocmSelNone' type="button" class='xCN_BtnSelectData' onclick='W_DATxSelectNoneMnu();' >
                <img align="right" style="width:16px; height:16px;" 
                src='<%=ViewData("oimgSelectAll")%>'/>
                        <%=ViewData("olaSelectAll") %>
        </input>--%>
    </div>
     <div class='xCN_AllBackgroundColor xCN_AllBorderColor xCN_DivMainMenuPage' style="height:525px; overflow:scroll;">
        <div id='odiAuthMnu'>
            <table class='xW_Tabel'>
                <tr class='xW_ThHeader'>     
                    <%--<th style="width:30%" class='xCN_TableHeaderColorTelerik'>
                        <%=ViewData("olaFTMnuThaDesc")%>
                    </th>
                    <th style="width:30%" class='xCN_TableHeaderColorTelerik'>
                           <%=ViewData("olaFTMnuEngDesc")%>
                    </th>--%>
                    <th style="width:44%" class='xCN_TableHeaderColorTelerik'>
                        <%=ViewData("olaDesc")%>
                    </th>
                    <th class='xCN_DivDisplayNone'></th>
                    <th style="width:6%" class='xCN_TableHeaderColorTelerik'>
                        <%=ViewData("olaFull")%>
                    </th>
                    <th style="width:6%" class='xCN_TableHeaderColorTelerik'>
                        <%=ViewData("olaRead")%>
                    </th>
                    <th style="width:6%" class='xCN_TableHeaderColorTelerik'>
                       <%=ViewData("olaCreate") %>
                    </th>
                    <th style="width:6%" class='xCN_TableHeaderColorTelerik'>
                       <%=ViewData("olaEdit")%>
                    </th>
                    <th style="width:6%" class='xCN_TableHeaderColorTelerik'>
                       <%=ViewData("olaDel") %>
                    </th>
                    <th style="width:6%" class='xCN_TableHeaderColorTelerik'>
                        <%=ViewData("olaCancel") %>
                    </th>
                    <th style="width:6%" class='xCN_TableHeaderColorTelerik'>
                        <%=ViewData("olaApprove") %>
                    </th>
                    <th style="width:6%" class='xCN_TableHeaderColorTelerik'>
                      <%=ViewData("olaPrint")%>
                    </th>
                    <th style="width:6%" class='xCN_TableHeaderColorTelerik'>
                       <%=ViewData("olaAddPrint")%>
                    </th>
                </tr>

            <%  Dim nRow As Integer
                Dim tRow As String%>  
            
            <% For Each item In Model%>
              <%  nRow += 1
                  tRow = Format(nRow, "0000")
              %>
              <%--<tr class="<%=IIf(nRow Mod 2 = 1, "x003Grid_Table_Color0", "x003Grid_Table_Color1")%>">--%>
              <tr class="xW_TdDetail <%=IIf(nRow Mod 2 = 1, "xCN_TableDefaultRowColorTelerik", "xCN_TableAlternateRowColorTelerik")%>">
                    <%--<td>
                        <%= Html.Encode(item.FTMnuThaDesc) %>
                    </td>
                    <td>
                        <%= Html.Encode(item.FTMnuEngDesc) %>
                    </td>--%>
                    <td>
                        <% if Session("tVB_LastLang") = "TH" then %>
                            <%=Html.Encode(item.FTMnuThaDesc)%>
                        <%  else %>
                            <%=Html.Encode(item.FTMnuEngDesc)%>
                        <% end if %>
                    </td>
                    <td class='xCN_DivDisplayNone'><input type="hidden" name="FTMnuName" value='<%=item.FTMnuName%>' /></td>
                    <td  align="center">
                        <% If (item.FTSumFull = "1") Then%>
                        <input type="checkbox" id='<%=tRow%>FTSumFull' 
                            name='FTSumFull' 
                            Value='TRUE'  checked class='xW_CursorPointter'
                            onclick='W_CHKxSelectAll(this,this.name);'  />
                        <% Else%>
                        <input type="checkbox" id='<%=tRow%>FTSumFull' 
                            name='FTSumFull'
                            class='xW_CursorPointter'
                            onclick='W_CHKxSelectAll(this,this.name);'   />
                        <% END IF%>
                    </td>
                    <td  align="center">
                        <% If (item.FTSumRead = "1") Then%>
                        <input type="checkbox" id='<%=tRow%>FTSumRead' 
                            name='FTSumRead'
                            Value='TRUE'  checked  class='xW_CursorPointter'
                            onclick='W_CHKxSelectSome(this,this.name)'/>
                        <% Else%>
                        <input type="checkbox" id='<%=tRow%>FTSumRead' 
                            name='FTSumRead'
                            class='xW_CursorPointter'
                            onclick='W_CHKxSelectSome(this,this.name)'   />
                        <% END IF%>    
                    </td>
                    <td  align="center">
                        <% If (item.FTSumAdd = "1") Then%>
                        <input type="checkbox" id='<%=tRow%>FTSumAdd' 
                            name='FTSumAdd'
                            Value='TRUE'  checked  class='xW_CursorPointter'
                            onclick='W_CHKxSelectSome(this,this.name)'/>
                        <% Else%>
                        <input type="checkbox" id='<%=tRow%>FTSumAdd' 
                            name='FTSumAdd'
                            class='xW_CursorPointter'
                            onclick='W_CHKxSelectSome(this,this.name)'   />
                        <% END IF%>              
                    </td>
                    <td  align="center">
                        <% If (item.FTSumEdit = "1") Then%>
                        <input type="checkbox" id='<%=tRow%>FTSumEdit' 
                            name='FTSumEdit'
                            Value='TRUE'  checked  class='xW_CursorPointter'
                            onclick='W_CHKxSelectSome(this,this.name)'/>
                        <% Else%>
                        <input type="checkbox" id='<%=tRow%>FTSumEdit' 
                            name='FTSumEdit'
                            class='xW_CursorPointter'
                            onclick='W_CHKxSelectSome(this,this.name)'   />
                        <% END IF%>              
                    </td>
                    <td  align="center">
                        <% If (item.FTSumDelete = "1") Then%>
                        <input type="checkbox" id='<%=tRow%>FTSumDelete' 
                            name='FTSumDelete'
                             Value='TRUE'  checked class='xW_CursorPointter'
                             onclick='W_CHKxSelectSome(this,this.name)'  />
                        <% Else%>
                        <input type="checkbox" id='<%=tRow%>FTSumDelete' 
                            name='FTSumDelete'
                            class='xW_CursorPointter'
                            onclick='W_CHKxSelectSome(this,this.name)'   />
                        <% END IF%>                
                    </td>
                    <td align="center">
                        <% If item.FTSumCancel = "1" Then%>
                            <input type="checkbox" 
                            id='<%=tRow%>FTSumCancel' 
                            name='FTSumCancel' 
                            class='xW_CursorPointter'
                            onclick='W_CHKxSelectSome(this,this.name)' 
                            checked="checked" value='TRUE'/>
                        <% Else%>
                            <input type="checkbox" 
                            id='<%=tRow%>FTSumCancel' 
                            name='FTSumCancel' 
                            class='xW_CursorPointter'
                            onclick='W_CHKxSelectSome(this,this.name)'/>
                        <% End If%>
                    </td>
                    <td  align="center">
                       <% If (item.FTSumAppv = "1") Then%>
                        <input type="checkbox" id='<%=tRow%>FTSumAppv' 
                            name='FTSumAppv'
                            Value='TRUE' checked class='xW_CursorPointter'
                            onclick='W_CHKxSelectSome(this,this.name)'  />
                        <% Else%>
                        <input type="checkbox" id='<%=tRow%>FTSumAppv' 
                            name='FTSumAppv'
                            class='xW_CursorPointter'
                            onclick='W_CHKxSelectSome(this,this.name)'   />
                        <% END IF%>             
                    </td>
                    <td  align="center">
                       <% If (item.FTSumPrint = "1") Then%>
                        <input type="checkbox" id='<%=tRow%>FTSumPrint' 
                            name='FTSumPrint'
                            Value='TRUE'  checked  class='xW_CursorPointter'
                            onclick='W_CHKxSelectSome(this,this.name)'/>
                        <%  Else
                                If item.FTSumFull = "1" Then
                        %>
                            <input type="checkbox" id='<%=tRow%>FTSumPrint' 
                                name='FTSumPrint'
                                Value='TRUE' checked  class='xW_CursorPointter'
                                onclick='W_CHKxSelectSome(this,this.name)'/>
                        <%            
                                Else
                        %>
                            <input type="checkbox" id='<%=tRow%>FTSumPrint' 
                                name='FTSumPrint'
                                class='xW_CursorPointter'
                                onclick='W_CHKxSelectSome(this,this.name)'   />
                        <%      End If
                        End If
                        %>               
                    </td>
                    <td  align="center">
                       <% If (item.FTSumPrintMore = "1") Then%>
                        <input type="checkbox" id='<%=tRow%>FTSumPrintMore' 
                            name='FTSumPrintMore'
                            Value='TRUE' checked  class='xW_CursorPointter'
                            onclick='W_CHKxSelectSome(this,this.name)'/>
                        <%  Else
                                If item.FTSumFull = "1" Then
                        %>
                            <input type="checkbox" id='<%=tRow%>FTSumPrintMore' 
                                name='FTSumPrintMore'
                                Value='TRUE' checked  class='xW_CursorPointter'
                                onclick='W_CHKxSelectSome(this,this.name)'/>
                        <%            
                                Else
                        %>
                            <input type="checkbox" id='<%=tRow%>FTSumPrintMore' 
                                name='FTSumPrintMore'
                                class='xW_CursorPointter'
                                onclick='W_CHKxSelectSome(this,this.name)'  /> 
                        <%      End If
                        End If
                        %>              
                    </td>
                </tr>
            <% Next%>
            </table>
        </div><!-- End odiAuthMnu -->
        <div id='odiAuthCond' class='xCN_DivDisplayNone'>
            <table class='xW_Tabel'>
                <tr class='xW_ThHeader'>
                    <th style="width:80%" class='xCN_TableHeaderColorTelerik'>
                        <%=ViewData("olaDesc")%>
                    </th>
                    <th style="width:20%" class='xCN_TableHeaderColorTelerik'>
                        <%=ViewData("olaAuth")%>
                    </th>
                    <th class='xCN_DivDisplayNone'></th>
                </tr>
                
                <%  Dim nRowCond As Integer
                    Dim oModelCond As List(Of cmlCNTSysUserMenuTemplate)
                    oModelCond = ViewData("ovd_AuthCond")
                %>  
                <% For Each item In oModelCond%>
                <% nRowCond += 1%>
                <tr class="xW_TdDetail <%=IIf(nRowCond Mod 2 = 1, "xCN_TableDefaultRowColorTelerik", "xCN_TableAlternateRowColorTelerik")%>">
                    <td>
                        <% if Session("tVB_LastLang") = "TH" then %>
                            <%=Html.Encode(item.FTSopThaDesc)%>
                        <%  else %>
                            <%=Html.Encode(item.FTSopEngDesc)%>
                        <% end if %>
                    </td>
                    <td  align="center">
                        <% If (item.FTSuoAutho = "1") Then%>
                        <input type="checkbox" name='FTSuoAutho' 
                            Value='TRUE'  checked class='xW_CursorPointter'  />
                        <% Else%>
                        <input type="checkbox" name='FTSuoAutho'
                            class='xW_CursorPointter'   />
                        <% END IF%>
                    </td>
                    <td class='xCN_DivDisplayNone'>
                        <input type="hidden" 
                            name='FTMnuCondName' 
                            value='<%=item.FTMnuName%>' />
                    </td>
                </tr>
                <% Next%>
            </table>    
        </div><!-- End odiAuthCond -->
        <div id='odiAuthRpt'>
            <table class='xW_Tabel'>
                <tr class='xW_ThHeader'>
                    <th style="width:80%" class='xCN_TableHeaderColorTelerik'>
                        <%=ViewData("olaAllRpt")%>
                    </th>
                    <th style="width:20%" class='xCN_TableHeaderColorTelerik'>
                        <%=ViewData("olaAuth")%>
                    </th>
                    <th style="width:0%" class='xCN_DivDisplayNone'>
                    </th>
                </tr>
                
                <%  Dim nRowRpt As Integer
                    Dim nRowRptLev As Integer
                    Dim tRowRptLev As String = ""
                    Dim tClassRpt As String
                    Dim oModelRpt As List(Of cmlCNTSysUserMenuTemplate)
                    oModelRpt = ViewData("ovd_AuthRpt")
                %>  
                <% For Each item In oModelRpt%>
                <% nRowRpt += 1
                %>
                <%  If item.FTRptLevel = "1" Then
                        nRowRptLev += 1
                        tRowRptLev = Format(nRowRptLev, "0000")
                        tClassRpt = "xCN_TableSelectRowColorTelerik"
                    Else
                        If nRowRpt Mod 2 = 1 Then
                            tClassRpt = "xCN_TableDefaultRowColorTelerik"
                        Else
                            tClassRpt = "xCN_TableAlternateRowColorTelerik"
                        End If
                    End If%>
                <tr class="xW_TdDetail <%=tClassRpt%>">
                    <td>
                        <% if Session("tVB_LastLang") = "TH" then %>
                            <%=Html.Encode(item.FTRptDesTha)%>
                        <%  else %>
                            <%=Html.Encode(item.FTRptDesEng)%>
                        <% end if %>
                    </td>
                    <td  align="center">
                        <% If (item.FTSurPrint = "1") Then%>
                        <input type="checkbox" 
                            id='<%=tRowRptLev%>FTSurPrint'
                            name='FTSurPrint' 
                            Value='TRUE'  checked 
                            class='xW_CursorPointter'
                            onclick='W_CHKxSelectHead(this,this.name)'  />
                        <% Else%>
                        <input type="checkbox"
                            id='<%=tRowRptLev%>FTSurPrint'
                            name='FTSurPrint' 
                            class='xW_CursorPointter'
                            onclick='W_CHKxSelectHead(this,this.name)'   />
                        <% END IF%>
                    </td>
                    <td  align="center" class='xCN_DivDisplayNone'>
                        <input id='<%=tRowRptLev%>FTRptLevel' name='FTRptLevel'
                            type="hidden"
                            value='<%=item.FTRptLevel%>' />
                    </td>
                </tr>
                <% Next%>
            </table>
        </div><!-- End odiAuthRpt -->
    </div> 
    
</div>
     <% End Using %> 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
 <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J001_LoadAutoGenCode.js")%>"></script>
 <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J002_General.js")%>"></script>
 <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J009_ShowTab.js")%>"></script>
 <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J010_ShowTabData.js")%>"></script>
 <link type="text/css" rel="Stylesheet" href="<%=Url.Content("~/Content/AdaCss/Global/FCS_CNCenter.css")%>" />
 <link type="text/css" rel="Stylesheet" href="<%=Url.Content("~/Content/AdaCss/Local/FCS_cvcManagementLocal.css")%>" />
 <style type="text/css">
    .xW_DivCheckBox_Title
    {
        text-align:left;
        float:left;
    } 
    </style> 
</asp:Content>
