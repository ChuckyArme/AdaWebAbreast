<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage(Of IEnumerable (Of Adasoft.WebPos.Models.cmlTPSTCpnType))" %>
<%@ Import Namespace="System.Resources" %>
<%@ Import Namespace="AdaWebPos" %>
<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tLastLang As String = Session("tVB_LastLang")

        If tLastLang Is Nothing AndAlso tLastLang = "" Then
            AdaWebPos.My.Resources.resLCcvcCouponType.Culture = New System.Globalization.CultureInfo("EN")
            Resources.resGBMsg.Culture = New System.Globalization.CultureInfo("EN")
        Else
            AdaWebPos.My.Resources.resLCcvcCouponType.Culture = New System.Globalization.CultureInfo(tLastLang)
            Resources.resGBMsg.Culture = New System.Globalization.CultureInfo(tLastLang)
        End If
   
        ViewData("olaRowID") = AdaWebPos.My.Resources.resLCcvcCouponType.olaRowID
        ViewData("olaCanEdit") = AdaWebPos.My.Resources.resLCcvcCouponType.olaCanEdit
        ViewData("olaCanDelete") = AdaWebPos.My.Resources.resLCcvcCouponType.olaCanDelete
        ViewData("olaCanSave") = AdaWebPos.My.Resources.resLCcvcCouponType.olaCanSave
        ViewData("olaCreate") = AdaWebPos.My.Resources.resLCcvcCouponType.olaCreate
        ViewData("olaFTCptCode") = AdaWebPos.My.Resources.resLCcvcCouponType.olaFTCptCode
        ViewData("olaFTCptName") = AdaWebPos.My.Resources.resLCcvcCouponType.olaFTCptName
        ViewData("olaFTCptStaActive") = AdaWebPos.My.Resources.resLCcvcCouponType.olaFTCptStaActive
        ViewData("olaMenuName") = AdaWebPos.My.Resources.resLCcvcCouponType.olaMenuName
        ViewData("olaNotAccess") = AdaWebPos.My.Resources.resLCcvcCouponType.olaNotAccess
        ViewData("olaReport") = AdaWebPos.My.Resources.resLCcvcCouponType.olaReport
        ViewData("olaHeaderEdit") = AdaWebPos.My.Resources.resLCcvcCouponType.olaHeaderEdit
        ViewData("olaHeaderAdd") = AdaWebPos.My.Resources.resLCcvcCouponType.olaHeaderAdd
        ViewData("olaHeaderDetail") = AdaWebPos.My.Resources.resLCcvcCouponType.olaHeaderDetail
        ViewData("olaHeaderList") = AdaWebPos.My.Resources.resLCcvcCouponType.olaHeaderList
        ViewData("olaDetail") = AdaWebPos.My.Resources.resLCcvcCouponType.olaDetail
        ViewData("olaCHKDel") = Resources.resGBMsg.tMsgBoxCHKDel
        ViewData("olaselect") = Resources.resGBMsg.tMsgSelect
        ViewData("olaFind") = AdaWebPos.My.Resources.resLCcvcCouponType.olaFind
        ViewData("olaUse") = AdaWebPos.My.Resources.resLCcvcCouponType.olaUse '*CH 06-10-2012
        ViewData("olaNotUse") = AdaWebPos.My.Resources.resLCcvcCouponType.olaNotUse '*CH 06-10-2012
        
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
        ViewData("olaPageFirst") = AdaWebPos.My.Resources.resLCcvcPdt.olaPageFirst
        ViewData("olaPagePrevious") = AdaWebPos.My.Resources.resLCcvcPdt.olaPagePrevious
        ViewData("olaPageNext") = AdaWebPos.My.Resources.resLCcvcPdt.olaPageNext
        ViewData("olaPageLast") = AdaWebPos.My.Resources.resLCcvcPdt.olaPageLast
        ViewData("olaTotal") = AdaWebPos.My.Resources.resLCcvcPdt.olaTotal
        ViewData("olaPage") = AdaWebPos.My.Resources.resLCcvcPdt.olaPage
        ViewData("olaGoToPage") = AdaWebPos.My.Resources.resLCcvcPdt.olaGoToPage
        ViewData("olaGo") = AdaWebPos.My.Resources.resLCcvcPdt.olaGo
        
        'Add New Header
        Resources.resGBMenuName.Culture = New System.Globalization.CultureInfo(tLastLang)
        ViewData("olaMenuHome") = Resources.resGBMenuName.omnHome
        ViewData("olaMenuGroup") = Resources.resGBMenuName.omnMng
        ViewData("olaMenuExit") = Resources.resGBMenuName.omnExit
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    <%=ViewData("olaMenuName") %>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J013_LoadChkBoxAll.js") %>"></script>

<script type="text/javascript">
    window.onload = window_onload;
    function window_onload() 
    {
        W_Show('<%=Viewdata("ptWheV")%>','<%=Viewdata("ptWheF")%>','<%=Viewdata("ptWheT")%>' );
        tJ002_VirtualDirectory = '<%=Session("VirtualDirectory") %>';
        tJ003_VirtualDirectory = '<%=Session("VirtualDirectory")%>'; //*CH 20-02-2013
        if ('<%=Viewdata("ptWheV")%>' == '' || '<%=Viewdata("ptWheV")%>' == null) {
            W_Col_click('FTCptCode',' : <%=ViewData("olaFTCptCode")%>')
        }

        if ('<%=ViewData("tfound_data")%>' != '' && '<%=ViewData("tfound_data")%>' != null) {
            alert('<%=ViewData("tMsgDataNotFound")%>');
        }
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
        var oField = document.getElementById('otbFilterField');
        var oValue = document.getElementById('otbFilterValue');
        var oText = document.getElementById('otbtextField');
        if (oField.value != '') {
            window.location = '<%=Url.Action("Index","cvcCouponType") %>' + '?ptWheF=' + oField.value + '&ptWheV=' + oValue.value + '&ptWheT=' + oText.value;        
        } else {
        alert('<%=ViewData("olaselect") %>');
        }
    }

    //------------------------------*TW
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

    var tW_Menu = 'omnMngCouponType';
    var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize")%>';

    function W_FRMxNewDoc() {
        var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Add%>';
        var tPwdAllow = '<%=Session("bVB_CNPwdAllow")%>';
        var bAllow = J002_CHKtCheckAuthorize(tW_Menu, tAuthor, tPwdAllow, tMsgNotAuthorize);
        if (bAllow == false) {
            return false;
        }
        else {
            window.location = '<%=Url.Action("C_Create","cvcCouponType")%>';
        }

    }

    function W_FRMxDeleteDoc() {
        J003_SHWxWaiting();
        var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Delete%>';
        var tPwdAllow = '<%=Session("bVB_CNPwdAllow")%>';
        var bAllow = J002_CHKtCheckAuthorize(tW_Menu, tAuthor, tPwdAllow, tMsgNotAuthorize);
        if (bAllow == false) {
            return false;
        }
        else {
            W_DATxDelete('ofm', 'ocmMark');
        }
        J003_DISxWaiting();
    }

    function W_DATxDelete(poForm, pobj) {
        var aObjList = document.getElementById(poForm);
        var tvalue = '';
        for (var i = 0; i < aObjList.elements.length; i++) {
            if (aObjList.elements[i].checked == true) {
                if (tvalue != '') {
                    tvalue = tvalue + '|' + Trim(aObjList.elements[i].name);
                } else {
                    tvalue = Trim(aObjList.elements[i].name);
                }
            }
        }
        var tDate = J002_GETtTimeStamp();
        if (tvalue != '') {
            var aObjList = confirm('<%=ViewData("olaCHKDel")%>');
            if (aObjList == true) {
                window.location = '<%=Url.Action("C_DeleteAll","cvcCouponType")%>' + "?ptValue=" + tvalue + '&ptDate=' + tDate;
                return false;
            }
        }
    }

    //@Funtion: Keydown on Search Bar
    //@Edit: Kriengkai (Kik)
    //@Since: 19/4/54 14:36
    function otbFilterValue_onkeydown(ptKeycode, ptWhich) {

        var tKey = ptKeycode;
        if (ptWhich != null && ptWhich != '') {
            tKey = ptWhich;
        }

        if (tKey == 13) {

            var oField = document.getElementById('otbFilterField');
            var oValue = document.getElementById('otbFilterValue');
            var oText = document.getElementById('otbtextField');
            if (oField.value != '') {
                window.location = '<%=Url.Action("Index","cvcCouponType")%>' + '?ptWheF=' + oField.value + '&ptWheV=' + oValue.value + '&ptWheT=' + oText.value;
            }
            else {
                alert('<%= ViewData("olaselect")%>');
            }

        }
        return !(tKey == 13);
    }

    //@Funtion: Edit
    //@Edit: Kriengkai (Kik)
    //@Since: 19/4/54 14:20
    //@Check Authorize before open C_Edit
    function W_FRMxEditDoc(ptCode) {
        var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Edit%>';
        var tPwdAllow = '<%=Session("bVB_CNPwdAllow")%>';
        var bAllow = J002_CHKtCheckAuthorize(tW_Menu, tAuthor, tPwdAllow, tMsgNotAuthorize);
        if (bAllow == false) {
            return false;
        }
        else {
            J003_SHWxWaiting();
            window.location = '<%=Url.Action("C_Edit","cvcCouponType")%>' + "?ptValue=" + ptCode;
        }
    }

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
        window.location = '<%=Url.Action("Index","cvcCouponType") %>' + '?ptStartPage=' + ptPage + '&ptWheF=' + oField.value + '&ptWheV=' + oValue.value + '&ptWheT=' + oText.value;
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

    //*CH 02-10-2012
    function W_FRMxShowHome() {
        window.location = '<%=Url.Action("Index","Home")%>';
    }
    function W_FRMxClose() {
        window.location = '<%=Url.Action("Index","cvcCNPanal") %>?ptMenuGrpName=Manage';
    }
</script>

<script type ="text/javascript" >

    function ProcessDelete(frm1, pobj) {
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
                window.location = '<%=Url.Action("C_DeleteAll","cvcCouponType") %>'+'?ptValue=' + tvalue + '&ptDate=' + future.getFullYear() + future.getMonth() + future.getDate() + future.getHours() + future.getMinutes() + future.getSeconds();
                //window.location = "/cvcCouponType/C_DeleteAll?ptValue=" + tvalue + '&ptDate=' + future.getFullYear() + future.getMonth() + future.getDate() + future.getHours() + future.getMinutes() + future.getSeconds();
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
    
</script>  
   <div class="xCN_DivMain xCN_AllFontFamily xCN_AllFontSize xCN_AllFontColor" >
    <%-------------------Header File---------------------------%>   
        <%--<div class="xW_DivToppic xCN_AllMenuFontSize">
            <label>\\<a class="xCN_LabelLink" href="<%=Url.Action("Index","Home") %>"><%=ViewData("olaMenuHome") %></a>\<a class="xCN_LabelLink" href="<%=Url.Action("Index","cvcCNPanal") %>?ptMenuGrpName=Manage"><%=ViewData("olaMenuGroup") %></a>\<%=ViewData("olaMenuName")%></label> 
        </div>--%>
        
        <input type="hidden" id="otbFilterField" />
        <input type="hidden" id="otbtextField" />
        <div class="xW_DivSearch">
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
            <div class ="xW_DivSearchCapPrd">
                <label id="olaFilterCaption"><%=ViewData("olaFind")%></label>
            </div>
            <div class="xW_DivSearchText">
                <input type="text" id="otbFilterValue"  
                      onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)"
                      onkeydown="otbFilterValue_onkeydown(event.keyCode,event.which)"/>
            </div>
            <div class="xCN_DivBrowData xCN_DivBrowDataSetTopMargin xW_DivSearchImg">
                <img id="Browse"
                  src="<%=ViewData("oimgBrowse")%>" 
                  alt="<%=ViewData("olaFind")%>" 
                  onclick="W_FRMxSearchMaster()"  
                 />
            </div>
        </div>
            
    <%-------------------เมนูด้านบนสุด---------------------------%>
        <div id="odiMenuTop" class="xCN_DivMainMenuPage xCN_AllBorderColor">
            <div id="odiMenu" class="xW_DivMenu">
                <!-- ไปหน้าแรก *CH 02-10-2012 -->
                <div id="odiMenuHome" class="xCN_DivMenuHome" style="float: left;">
                    <a onclick="W_FRMxShowHome()" href="javascript:void(0)">
                        <div class="xCN_DivMenuHomeCaption">
                            <%=ViewData("olaMenuHome")%>
                        </div>
                    </a>
                </div>
                <!---------------------------->
                <div id="odiMenuNew" class="xCN_DivMenuNew" style="float: left;">
                    <a onclick="W_FRMxNewDoc()" href="javascript:void(0)">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaCreate")%>
                        </div>
                    </a>
                </div>
                <div id="odiMenuDelete" class="xCN_DivMenuDelete" style="float: left;">
                    <a onclick = "W_FRMxDeleteDoc()" href="javascript:void(0)">
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
    <!--<div id="Div1" class=" xCN_DivMainMenu" style="height:35px"></div>-->
 <div class='xCN_AllBorderColor xCN_AllBackgroundColor xCN_DivMainMenuPage' style="height:525px; overflow:scroll;">
    <table class="x003Grid_Table xW_Tabel">
       <tr class='xW_ThHeader'>
   
           <%--<% If ViewData("StaDelete") = "1" Then%>--%>
                <th class="xCN_TableHeaderColorTelerik" style="width:5%" align ="center">
                    <input type="checkbox" id="ocmMark" name="Mark"
                    onclick="J013_SETxCheckedAll('ofm',document.getElementById('ocmMark'));J013_SETxHide(document.getElementById('ocmMark'));"/>
                </th> 
           <%--<%End If%>--%>
               
                    
            <th class="xCN_TableHeaderColorTelerik" style="width:20%" align="center" onclick="W_Col_click('FTCptCode',' : <%=ViewData("olaFTCptCode")%>')"><%=ViewData("olaFTCptCode")%></th>
            <th class="xCN_TableHeaderColorTelerik" style="width:45%" align="center" onclick="W_Col_click('FTCptName',' : <%=ViewData("olaFTCptName")%>')"><%=ViewData("olaFTCptName")%></th>
            <th class="xCN_TableHeaderColorTelerik" style="width:20%" align="center" ><%=ViewData("olaFTCptStaActive")%></th>
            <th class="xCN_TableHeaderColorTelerik" style="width:10%" align="center"><%=ViewData("olaCanEdit")%></th>
            <%--<th style="width:10%" align="center"><%=ViewData("olaDetail")%></th>--%>
        </tr>
<%  Using Html.BeginForm("#", "#", FormMethod.Get, New With {.id = "ofm"})%>
    <% Dim nRow As Integer%>
    <% 
        For Each item In Model%>
        <% nRow += 1%>
         <tr id="<%=nRow%>" class="xW_TdDetail <%=IIf(nRow Mod 2 = 1, "xCN_TableDefaultRowColorTelerik", "xCN_TableAlternateRowColorTelerik")%> xCN_MouseOver" 
            onclick="J014_SETxChangeClass('<%=nRow%>')"  
            ondblclick="W_FRMxEditDoc('<%=Html.Encode(item.FTCptCode)%>')"
            onmouseover="J014_SETxClassWithMouseOver('<%=nRow%>')" 
            onmouseout="J014_SETxClassWithMouseOut('<%=nRow%>')">

               <%--<% If ViewData("StaDelete") = "1" Then%>--%>
                <td align ="center">
                        <input type="checkbox" name= '<%=Html.Encode(item.FTCptCode)%>' value="" id="ockDeletes" onclick="J013_SETxUnmark(document.getElementById('ocmMark'),('ofm'),this);"/>
                </td>  
               <%--<%End If%>--%>
              
                <td align="center" onclick="W_Col_click('FTCptCode',' : <%=ViewData("olaFTCptCode")%>')">
                    <%=Html.Encode(item.FTCptCode)%>
                </td>
                <td align="left" onclick="W_Col_click('FTCptName',' : <%=ViewData("olaFTCptName")%>')">
                    <%=Html.Encode(item.FTCptName)%>
                </td>
                <!-- เพิ่มฟิวล์สถานะ *CH 06-10-2012 -->
                <td align="center">
                <%
                    Dim tSta$ = Html.Encode(item.FTCptStaActive)
                    If tSta = "1" Then
                        %><%=ViewData("olaUse")%><%
                    Else
                        %><%=ViewData("olaNotUse")%><%
                    End If
                %>
                </td>                   
             <td align="center">
                <%--<% If ViewData("StaEdit") = "1" Then%>--%>

                    <a href="<%=Url.Action("C_Edit","cvcCouponType") %>?ptValue=<%=item.FTCptCode%>">
                      <img src="<%=ViewData("oimgEdit")%>" alt="<%=ViewData("olaCanEdit")%>" 
                      class="xW_ImgSize"}  />
                    </a> 
<%--                <%Else%>
                    <img src="<%=ViewData("oimgEdit_disabled")%>" alt="<%=ViewData("olaCanEdit")%>" 
                    class="x003Grid_Table_ImgEdit"}  />
                <%END IF%>--%>
            </td>           
            
        </tr>
    <% Next%>
     <%End Using%>
<tr>
                    <td colspan="6" align="center" class="t-grid-header">
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
   <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J002_General.js") %>"></script>
   <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J014_Grid.js") %>"></script>
   <link href="<%=Url.Content("~/Content/AdaCss/Local/FCS_cvcGeneralManage.css") %>" rel="stylesheet" type="text/css" />
   <link type="text/css" rel="Stylesheet" href="<%=Url.Content("~/Content/AdaCss/Local/FCS_cvcManagementLocal.css") %>" />
    <link href="<%=Url.Content("~/Content/2010.3.1110/Global/telerik.forest.min.css")%>" rel="stylesheet" type="text/css" />
</asp:Content>