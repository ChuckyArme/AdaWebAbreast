<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage(Of IEnumerable (Of Adasoft.WebPos.Models.cmlTCNMTnfReason))" %>
<%@ Import Namespace="System.Resources" %>
<%@ Import Namespace="AdaWebPos" %>
<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        AdaWebPos.My.Resources.resLCcvcTCNMTnfReason.Culture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
        Resources.resGBMsg.Culture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
        
        ViewData("olaCanDelete") = AdaWebPos.My.Resources.resLCcvcTCNMTnfReason.olaCanDelete
        ViewData("olaCanEdit") = AdaWebPos.My.Resources.resLCcvcTCNMTnfReason.olaCanEdit
        ViewData("olaCanSave") = AdaWebPos.My.Resources.resLCcvcTCNMTnfReason.olaCanSave
        ViewData("olaCreate") = AdaWebPos.My.Resources.resLCcvcTCNMTnfReason.olaCreate
        ViewData("olaFTTrnCode") = AdaWebPos.My.Resources.resLCcvcTCNMTnfReason.olaFTTrnCode
        ViewData("olaFTTrnName") = AdaWebPos.My.Resources.resLCcvcTCNMTnfReason.olaFTTrnName
        ViewData("olaHeadCanEdit") = AdaWebPos.My.Resources.resLCcvcTCNMTnfReason.olaHeadCanEdit
        ViewData("olaHeadCreate") = AdaWebPos.My.Resources.resLCcvcTCNMTnfReason.olaHeadCreate
        ViewData("olaCHKDel") = Resources.resGBMsg.tMsgBoxCHKDel
        ViewData("olaselect") = Resources.resGBMsg.tMsgSelect
        ViewData("olaFind") = AdaWebPos.My.Resources.resLCcvcTCNMTnfReason.olaFind
        ViewData("olaFTTrnstatus") = AdaWebPos.My.Resources.resLCcvcTCNMTnfReason.olaFTTrnstatus
        ViewData("olaCancle") = AdaWebPos.My.Resources.resLCcvcTCNMTnfReason.olaCancle
        ViewData("olaStatusIn") = AdaWebPos.My.Resources.resLCcvcTCNMTnfReason.olaStatusIn
        ViewData("olaStatusOut") = AdaWebPos.My.Resources.resLCcvcTCNMTnfReason.olaStatusOut
        ViewData("olaStatusInOut") = AdaWebPos.My.Resources.resLCcvcTCNMTnfReason.olaStatusInOut
        ViewData("olaStatusNon") = AdaWebPos.My.Resources.resLCcvcTCNMTnfReason.olaStatusNon
          
        ViewData("oimgNew") = Url.Content(Resources.resGBImageList.oimgNew)
        ViewData("oimgBrowse") = Url.Content(Resources.resGBImageList.oimgBrowse)
        ViewData("oimgDelete") = Url.Content(Resources.resGBImageList.oimgDelete)
        ViewData("oimgOpenfile") = Url.Content(Resources.resGBImageList.oimgOpenfile)
        ViewData("oimgdisabled_Openfile") = Url.Content(Resources.resGBImageList.oimgdisabled_Openfile)
        ViewData("oimgEdit") = Url.Content(Resources.resGBImageList.oimgEdit)
        ViewData("oimgEdit_disabled") = Url.Content(Resources.resGBImageList.oimgEdit_disabled)
        ViewData("tMsgDataNotFound") = Resources.resGBMsg.tMsgDataNotFound

        'Page Bar
        AdaWebPos.My.Resources.resLCcvcPdt.Culture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
        ViewData("olaPageFirst") = AdaWebPos.My.Resources.resLCcvcTCNMTnfReason.olaPageFirst
        
        ViewData("olaPagePrevious") = AdaWebPos.My.Resources.resLCcvcTCNMTnfReason.olaPagePrevious
        ViewData("olaPageNext") = AdaWebPos.My.Resources.resLCcvcTCNMTnfReason.olaPageNext
        ViewData("olaPageLast") = AdaWebPos.My.Resources.resLCcvcTCNMTnfReason.olaPageLast
        ViewData("olaTotal") = AdaWebPos.My.Resources.resLCcvcTCNMTnfReason.olaTotal
        ViewData("olaPage") = AdaWebPos.My.Resources.resLCcvcTCNMTnfReason.olaPage
        ViewData("olaGoToPage") = AdaWebPos.My.Resources.resLCcvcTCNMTnfReason.olaGoToPage
        ViewData("olaGo") = AdaWebPos.My.Resources.resLCcvcTCNMTnfReason.olaGo
        ViewData("olaMenuName") = AdaWebPos.My.Resources.resLCcvcTCNMTnfReason.olaMenuName
       
        'Add New Header
        Resources.resGBMenuName.Culture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
        ViewData("olaMenuHome") = Resources.resGBMenuName.omnHome
        ViewData("olaMenuGroup") = Resources.resGBMenuName.omnMng
        ViewData("olaMenuExit") = Resources.resGBMenuName.omnExit
    End Sub
</script> 

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
<%=ViewData("olaMenuName")%></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<script type = "text/javascript" src = "<%=Url.Content("~/Shared/LoadChkBoxAll.js")%>"></script>

 <script type="text/javascript">

    window.onload = window_onload_Page;
    function window_onload_Page() 
    {
        tJ002_VirtualDirectory = '<%=Session("VirtualDirectory")%>';
        tJ003_VirtualDirectory = '<%=Session("VirtualDirectory")%>'; //*CH 20-02-2013
        W_Show('<%=Viewdata("ptWheV")%>', '<%=Viewdata("ptWheF")%>', '<%=Viewdata("ptWheT")%>');
        
        ////document.getElementById("loading").style.display = "none";
        //W_SETxComboLang();
        if ('<%=Viewdata("ptWheV")%>' == '' || '<%=Viewdata("ptWheV")%>' == null) {
            W_Col_click('FTRsnCode', ' : <%=ViewData("olaFTRsnCode")%>');
        }

        if ('<%=ViewData("MsgAlert") %>' != '') {
            J003_SHWxWaiting();
            alert('<%=ViewData("MsgAlert") %>');
            J003_DISxWaiting();
        }
        
        if ('<%=ViewData("tfound_data")%>' != '' && '<%=ViewData("tfound_data")%>' != null) {
            J003_SHWxWaiting();
            alert('<%=ViewData("tMsgDataNotFound")%>');
            J003_DISxWaiting();
        }

    }
    
    var tW_Menu='omnMngPeriod';
    
    function  W_FRMxNewDoc()
    {
        try {
            J003_SHWxWaiting();
            var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Add%>';
            var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
            var tPwdAllow = '<%=Session("bVB_CNPwdAllow")%>';
            var bAllow = J002_CHKtCheckAuthorize(tW_Menu, tAuthor, tPwdAllow, tMsgNotAuthorize);
            if (bAllow == false) {
                J003_DISxWaiting();
                return false;
            }
            window .location = '<%=Url.Action("C_Create","cvcTCNMTnfReason")%>';
        }
        catch (ex) 
        {
            J002_SHWxMsgError("W_FRMxNewDoc", ex);
        }
    }


    function  W_FRMxEditDoc(tValue)
    {
        try {
                J003_SHWxWaiting();
                var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Edit%>';
                var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
                var tPwdAllow = '<%=Session("bVB_CNPwdAllow")%>';
                var bAllow = J002_CHKtCheckAuthorize('omnReason', tAuthor, tPwdAllow, tMsgNotAuthorize);
                if (bAllow == false) {
                    J003_DISxWaiting();
                    return false;
                }
                window .location = '<%=Url.Action("C_Edit","cvcTCNMTnfReason")%>' + "?ptValue=" + tValue;
     
                
                }
            catch (ex) 
            {
                J002_SHWxMsgError("W_FRMxEditDoc", ex);
            }
    }


    function W_PICxMouseOver(oPic) {
        oPic.border = "1";
    }

    function W_PICxMouseOut(oPic) {
        oPic.border = "0";
    }

     //*TW 53-04-30 Search Master
        var tClick = '';

        function W_Col_click(tName, tCaption) {
            document.getElementById('otbFilterField').value = tName;
            document.getElementById('olaFilterCaption').innerHTML = '<%=ViewData("olaFind")%>' + tCaption;
            document.getElementById('otbtextField').value = tCaption ;

        }
         function W_Show(tValue, tFName,tCaption) {
            document.getElementById('otbFilterValue').focus();
            document.getElementById('otbFilterField').value = tFName;
            document.getElementById('otbFilterValue').value = tValue;
            document.getElementById('otbtextField').value = tCaption ;
            document.getElementById('olaFilterCaption').innerHTML = '<%=ViewData("olaFind")%>' + tCaption;
        }

    function W_FRMxSearchMaster() {
       J003_SHWxWaiting();
        var oField = document.getElementById('otbFilterField');
        var oValue = document.getElementById('otbFilterValue');
        var oText = document.getElementById('otbtextField');
        if (oField.value != '') {
            window.location = '<%=Url.Action("Index","cvcTCNMTnfReason")%>' + '?ptWheF=' + oField.value + '&ptWheV=' + oValue.value + '&ptWheT=' + oText.value;
        } else {
            alert('<%= ViewData("olaselect")%>');
            J003_DISxWaiting();
        }
    }

    function otbFilterValue_onkeydown(ptKeycode, ptWhich) {
        var tKey = ptKeycode;
        if (ptWhich != null && ptWhich != '') {
            tKey = ptWhich;
        }
        if (tKey == 13) {
                J003_SHWxWaiting();
                var oField = document.getElementById('otbFilterField');
                var oValue = document.getElementById('otbFilterValue');
                var oText = document.getElementById('otbtextField');
                if (oField.value != '') { 
                window.location = '<%=Url.Action("Index","cvcTCNMTnfReason")%>' + '?ptWheF=' + oField.value + '&ptWheV=' + oValue.value + '&ptWheT=' + oText.value;
            }
            else 
            {
                alert('<%= ViewData("olaselect")%>');
                J003_DISxWaiting();
            }

        }
        return !(window.event && window.event.keyCode == 13);
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

     

    //------------------------------*TW
    function ProcessDelete(frm1, pobj) {
        var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Delete%>';
        var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
        var tPwdAllow = '<%=Session("bVB_CNPwdAllow")%>';
        var bAllow = J002_CHKtCheckAuthorize("omnReason", tAuthor, tPwdAllow, tMsgNotAuthorize);
        if (bAllow == false) {
            return false;
        }
        var aa = document.getElementById(frm1);
        var tvalue = '';
        for (var i = 0; i < aa.elements.length; i++) {
            if (aa.elements[i].checked == true) {
                if (tvalue != '') {
                    tvalue = tvalue + '|' + Trim(aa.elements[i].name);
                } else {
                tvalue = Trim(aa.elements[i].name);
                }
            }
        }
        var future = new Date();
        if (tvalue != '') {
            var aa = confirm('<%=ViewData("olaCHKDel")%>');
            if (aa == true) {
                window.location = '<%=Url.Action("C_DeleteAll","cvcTCNMTnfReason")%>'+"?ptValue=" + tvalue + '&ptDate=' + future.getFullYear() + future.getMonth() + future.getDate() + future.getHours() + future.getMinutes() + future.getSeconds();
                return false;
            }
        }
    }
     function LTrim(str) {
        if (str == null) { return null; }
        for (var i = 0; str.charAt(i) == " "; i++);
        return str.substring(i, str.length);
    }
    function RTrim(str) {
        if (str == null) { return null; }
        for (var i = str.length - 1; str.charAt(i) == " "; i--);
        return str.substring(0, i + 1);
    }
    function Trim(str) {
        return LTrim(RTrim(str));
    }

    String.prototype.trim = function() {
        return this.replace(/^\s+|\s+$/g, "");
    }
    String.prototype.ltrim = function() {
        return this.replace(/^\s+/, "");
    }
    String.prototype.rtrim = function() {
        return this.replace(/\s+$/, "");


    }

    function trim2(str) { if (!str || typeof str != 'string') return null; return str.replace(/^[\s]+/, '').replace(/[\s]+$/, '').replace(/[\s]{2,}/, ' '); }

    function W_FRMxGoToPage(ptPage) {
        var oField = document.getElementById('otbFilterField');
        var oValue = document.getElementById('otbFilterValue');
        var oText = document.getElementById('otbtextField');
        if (ptPage == "") {
            return false;
        }
        if (J002_GETcNumber('<%=CInt(ViewData("AllPages")) %>') < 1) {
            return false;
        }
        if (ptPage > Number('<%=CInt(ViewData("AllPages")) %>')) {
            ptPage = '<%=CInt(ViewData("AllPages")) %>';
        }
        window.location = '<%=Url.Action("Index","cvcTCNMTnfReason") %>' + '?ptStartPage=' + ptPage + '&ptWheF=' + oField.value + '&ptWheV=' + oValue.value + '&ptWheT=' + oText.value;
    }
    function otbPageGoTo_onkeydown(ptKeyCode, ptWhich) {
        var tKey = ptKeyCode;
        if (ptWhich != null && ptWhich != '') {
            tKey = ptWhich;
        }
        if (tKey == 13) {
            W_FRMxGoToPage(document.getElementById('otbPageGoTo').value);
        }
        return !(tKey == 13);
    }

    function otbPageGoTo_onkeypress(ptKeyCode, ptWhich) {
        return J002_CHKbCheckNumOnly(document.getElementById('otbPageGoTo').value, ptKeyCode, ptWhich, true);
    }

    function SelectCheck() {
        var HFTTrnStaIn = document.getElementById('FTTrnStaIn').value 
        var HFTTrnStaOut = document.getElementById('FTTrnStaOut').value 
       
        if (HFTTrnStaIn == " 1" && HFTTrnStaOut == " 0") {
            document.getElementById('FTTrnStaIn').value = '1';
            document.getElementById('FTTrnStaInOut').checked = true;
            return false;
        }
        else if (HFTTrnStaOut == " 0" && HFTTrnStaOut ==" 1" ) {
            document.getElementById('FTTrnStaOut').value = '1';
            document.getElementById('FTTrnStaOut').checked = true;
            return false;

        }
        else if (HFTTrnStaIn == " 1" && HFTTrnStaOut == " 1") {
            document.getElementById('FTTrnStaIn').value = '1';
            document.getElementById('FTTrnStaOut').value = '1';
            document.getElementById('FTTrnStaInOut').checked = true;
            return false;
        }
        else if (HFTTrnStaIn == " 0"   && HFTTrnStaOut == " 0" ) {
            document.getElementById('FTTrnStaIn').value = '0';
            document.getElementById('FTTrnStaOut').value = '0';
            document.getElementById('FTTrnStaNon').checked = true;
            return false;
        }
        return true ;
    }

    //*CH 16-10-2012
    function W_FRMxShowHome() {
        window.location = '<%=Url.Action("Index","Home")%>';
    }
    function W_FRMxClose() {
        window.location = '<%=Url.Action("Index","cvcCNPanal") %>?ptMenuGrpName=Manage';
    }
</script>

  <div class="xCN_DivMain xCN_AllFontFamily xCN_AllFontSize xCN_AllFontColor" >
    <%-------------------ชื่อเอกสาร---------------------------%>   
      <%--<div class="xW_DivToppic xCN_AllMenuFontSize">
        <label>\\<a class="xCN_LabelLink" href="<%=Url.Action("Index","Home") %>"><%=ViewData("olaMenuHome") %></a>\<a class="xCN_LabelLink" href="<%=Url.Action("Index","cvcCNPanal") %>?ptMenuGrpName=Manage"><%=ViewData("olaMenuGroup") %></a>\<%=ViewData("olaMenuName")%></label> 
      </div>--%>
        
        <div id="odiDivSearchData" class="xW_DivSearch">
            <div class='xW_DivPath'>
                <label>\\
                    <a class="xCN_LabelLink" href="<%=Url.Action("Index","Home") %>">
                        <%=ViewData("olaMenuHome") %>
                    </a>\
                    <a class="xCN_LabelLink" href="<%=Url.Action("Index","cvcCNPanal") %>?ptMenuGrpName=Manage">
                        <%=ViewData("olaMenuGroup") %>
                    </a>\
                    <%=ViewData("olaMenuName")%>
                </label>
            </div>
            <div class="xW_DivSearchCapPrd">
                    <input type="hidden" id="otbFilterField" />
                    <input type="hidden" id="otbtextField" />
                    <input type="hidden" id="otbFilterOld" />  
                    <label id="olaFilterCaption">
                    <%=ViewData("olaFind")%>
                   </label>
            </div>
            <div class="xW_DivSearchText">
                <input type="text" id="otbFilterValue" onkeydown ="otbFilterValue_onkeydown(event.keyCode,event.which)" onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)"/>
            </div>
            <div class="xCN_DivBrowData xW_DivSearchImg xCN_DivBrowDataSetTopMargin">
                <img id="oimBrwData" name="oimBrwData" src="<%=ViewData("oimgBrowse")%>" onclick="W_FRMxSearchMaster()" alt="<%=ViewData("olaFind").ToString%>"border ="0" onmouseover="W_PICxMouseOver(this)" onmouseout="W_PICxMouseOut(this)" />
            </div>   
        </div>
            
    <%-------------------เมนูด้านบนสุด---------------------------%>
      <div id="odiMenu" class="xCN_DivMainMenuPage xCN_AllBorderColor">
            <div id="Div2" class="xW_DivMenu">
                <!-- ไปหน้าแรก *CH 02-10-2012 -->
                <div id="odiMenuHome" class="xCN_DivMenuHome" style="float: left;">
                    <a onclick="W_FRMxShowHome()" href="javascript:void(0)">
                        <div class="xCN_DivMenuHomeCaption">
                            <%=ViewData("olaMenuHome")%>
                        </div>
                    </a>
                </div>
                <!---------------------------->
                <div id="odiMenuNew" class="xCN_DivMenuNew">
                    <a onclick="W_FRMxNewDoc()" href="javascript:void(0)">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaCreate")%>
                        </div>
                    </a>
                </div>
                <div id="odiMenuDelete" class="xCN_DivMenuDelete" style="float: left;">
                    
                   <a href="#"  onclick = "return ProcessDelete('ofm',document.getElementById('ocmMark'))">
                              
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaCanDelete")%>
                        </div>
                    </a>
                </div>
                <!-- ไปเมนูการจัดการ *CH 02-10-2012 -->
                <div id="odiMenuExit" class="xCN_DivMenuLogOut" style="float: left;">
                    <a onclick="W_FRMxClose()" href="javascript:void(0)">
                        <div class="xCN_DivMenuLogOutCaption">
                            <%=ViewData("olaMenuExit")%>
                        </div>
                    </a>
                </div>
                <!---------------------------->
            </div>
      </div> 
            
      <%-------------------Space Web-------------------------%> 
        <%--<div id="Div1" class=" xCN_DivMainMenu" style="height:100px"></div>--%>
     
      <%-------------------ส่วนรายละเอียด-------------------------%>  
    
      <div class='xCN_DivMainMenuPage xCN_AllBackgroundColor xCN_AllBorderColor' style="height:518px; overflow:auto;"> 
              
        <table style="width:100%" class="x003Grid_Table xW_Tabel">
        <tr class = "xW_ThHeader">
            <th class="xCN_TableHeaderColorTelerik" style="width:5%" align ="center">
                <input type="checkbox" id="ocmMark" name="Mark"  
                onclick="J013_SETxCheckedAll('ofm',document.getElementById('ocmMark'));J013_SETxHide(document.getElementById('ocmMark'));"/>
            </th>
            <th class = "xCN_TableHeaderColorTelerik" style="width:10%;" align="center" onclick="W_Col_click('FTTrnCode',' : <%=ViewData("olaFTTrnCode")%>')"><%=ViewData("olaFTTrnCode")%></th>
            <th class = "xCN_TableHeaderColorTelerik" style="width:40%;" align="center" onclick="W_Col_click('FTTrnName',' : <%=ViewData("olaFTTrnName")%>')"><%=ViewData("olaFTTrnName")%></th>
            <th class = "xCN_TableHeaderColorTelerik" style="width:10%;" align="center" ><%=ViewData("olaFTTrnstatus")%></th>
            <th class = "xCN_TableHeaderColorTelerik" style="width:5%;" align="center"><%=ViewData("olaCanEdit")%></th>
        </tr>
<%  Using Html.BeginForm("#", "#", FormMethod.Get, New With {.id = "ofm"})%>
    <%Dim nRow As Integer%>
    <% For Each item In Model%>
    
         <% nRow += 1%>
        <tr id="<%=nRow%>" class="xW_TdDetail <%=IIf(nRow Mod 2 = 1, "xCN_TableDefaultRowColorTelerik", "xCN_TableAlternateRowColorTelerik")%> xCN_MouseOver" 
            onclick="J014_SETxChangeClass('<%=nRow%>')" 
            ondblclick="W_FRMxEditDoc('<%=Html.Encode(item.FTTrnCode)%>')"
            onmouseover="J014_SETxClassWithMouseOver('<%=nRow%>')" 
            onmouseout="J014_SETxClassWithMouseOut('<%=nRow%>')">
                <td align ="center">
                    <input type="checkbox" name='<%= Html.Encode(item.FTTrnCode) %>' id="ockDeletes" value="" onclick="J013_SETxUnmark(document.getElementById('ocmMark'),('ofm'),this);" />
                </td>          
                <td  align="center" onclick="W_Col_click('FTTrnCode',' : <%=ViewData("olaFTTrnCode")%>')">
                    <%=Html.Encode(item.FTTrnCode )%>
                </td>
                <td  align="left" onclick="W_Col_click('FTTrnName',' : <%=ViewData("olaFTTrnName")%>')">
                    <%=Html.Encode(item.FTTrnName )%>
                
                </td>
                 <td  align="left" >
                    <%=Html.Encode(item.STATUS)%>
                
                </td>
                <td  align="center">
                    <img src="<%=ViewData("oimgEdit")%>" alt="<%=ViewData("olaCanEdit")%>" 
                       onclick="W_FRMxEditDoc('<%=item.FTTrnCode%>')"
                        style="cursor:pointer"
                      class="xW_ImgSize" />
                </td>
        </tr>
    
<%Next%>
    <%End Using%>
    <tr>
                    <td colspan="5" align="center" class="t-grid-header">
                        <% Dim nStartPageNum As Integer = 0%>
                        <% Dim nEndPageNum As Integer = 0%>
                        <% Dim nNumPerPage As Integer = 20%>
                        
                        <% nStartPageNum = (nNumPerPage * ((CInt(ViewData("CurrentPage")) - 1) \ nNumPerPage)) + 1%>
                        <% nEndPageNum = nStartPageNum + nNumPerPage - 1%>
                        <% If nEndPageNum > CInt(ViewData("AllPages")) Then%>
                            <%nEndPageNum = CInt(ViewData("AllPages"))%>
                        <% End If%>        
                        <label style="margin-right:10px;"><%=ViewData("olaTotal")%>&nbsp;<%=ViewData("AllPages")%>&nbsp;<%=ViewData("olaPage")%></label>
                        <% If nStartPageNum > 1 Then%>
                            <%=Html.ActionLink(ViewData("olaPageFirst"), "Index", New With {.ptStartPage = 1, .ptWheF = ViewData("ptWheF"), .ptWheV = ViewData("ptWheV"), .ptWheT = ViewData("ptWheT")})%>
                        <% End If%>
                        <% If CInt(ViewData("CurrentPage")) > 1 Then%>
                            <%=Html.ActionLink(ViewData("olaPagePrevious"), "Index", New With {.ptStartPage = CInt(ViewData("CurrentPage")) - 1, .ptWheF = ViewData("ptWheF"), .ptWheV = ViewData("ptWheV"), .ptWheT = ViewData("ptWheT")})%>
                        <% End If%>
                        <% If nStartPageNum > 1 Then%>
                            <%=Html.ActionLink("[...]", "Index", New With {.ptStartPage = nStartPageNum - nNumPerPage, .ptWheF = ViewData("ptWheF"), .ptWheV = ViewData("ptWheV"), .ptWheT = ViewData("ptWheT")})%>
                        <% End If%>
                        <% For nPage = nStartPageNum To nEndPageNum%> 
                            <% If ViewData("CurrentPage") = nPage.ToString Then%>
                                <%=ViewData("CurrentPage")%>
                            <% Else%>
                                 <%=Html.ActionLink(nPage.ToString, "Index", New With {.ptStartPage = nPage.ToString, .ptWheF = ViewData("ptWheF"), .ptWheV = ViewData("ptWheV"), .ptWheT = ViewData("ptWheT")})%>
                            <% End If%>
                        <% Next nPage%>
                        <% If nEndPageNum < CInt(ViewData("AllPages")) Then%>
                            <%=Html.ActionLink("[...]", "Index", New With {.ptStartPage = nEndPageNum + 1, .ptWheF = ViewData("ptWheF"), .ptWheV = ViewData("ptWheV"), .ptWheT = ViewData("ptWheT")})%>
                        <% End If%>
                        <% If CInt(ViewData("CurrentPage")) < CInt(ViewData("AllPages")) Then%>
                            <%=Html.ActionLink(ViewData("olaPageNext"), "Index", New With {.ptStartPage = CInt(ViewData("CurrentPage")) + 1, .ptWheF = ViewData("ptWheF"), .ptWheV = ViewData("ptWheV"), .ptWheT = ViewData("ptWheT")})%>
                        <% End If%>
                        <% If nEndPageNum < CInt(ViewData("AllPages")) Then%>
                            <%=Html.ActionLink(ViewData("olaPageLast"), "Index", New With {.ptStartPage = CInt(ViewData("AllPages")), .ptWheF = ViewData("ptWheF"), .ptWheV = ViewData("ptWheV"), .ptWheT = ViewData("ptWheT")})%>
                        <% End If%>
                        
                        <label style="margin-left:10px;"><%=ViewData("olaGoToPage")%></label>
                        <input type="text" id="otbPageGoTo" style="width:15px;height:10px;font-size:10px;margin:2px 0px 2px 0px;" onkeydown="return otbPageGoTo_onkeydown(event.keyCode,event.which);" onkeypress="return otbPageGoTo_onkeypress(event.keyCode,event.which);" />
                        <a href="javascript:void(0);" onclick="W_FRMxGoToPage(document.getElementById('otbPageGoTo').value);" ><%=ViewData("olaGo")%></a>
                    </td>
                    </tr>
    </table>

        </div>
      
            
   </div> 
      
       
            
 </asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">

<script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J002_General.js")%>"></script>
<script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J013_LoadChkBoxAll.js")%>"></script>
<script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J014_Grid.js") %>"></script>
<link href="<%=Url.Content("~/Content/AdaCss/Global/FCS_CNCenter.css")%>" rel="stylesheet" type="text/css" />
<link href="<%=Url.Content("~/Content/AdaCss/Local/FCS_cvcGeneralManage.css") %>" rel="stylesheet" type="text/css" />
<link rel="Stylesheet" href="<%=Url.Content("~/Content/AdaCss/Local/FCS_cvcManagementLocal.css")%>" />
    <link href="<%=Url.Content("~/Content/2010.3.1110/Global/telerik.forest.min.css")%>" rel="stylesheet" type="text/css" />
</asp:Content>