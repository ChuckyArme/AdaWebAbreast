<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage(Of IEnumerable (Of Adasoft.WebPos.Models.cmlTCNMDplType))" %>
<%@ Import Namespace="System.Resources" %>
<%@ Import Namespace="AdaWebPos" %>

<script runat="server">    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        
        Dim tLastLang As String = Session("tVB_LastLang")
        
        If tLastLang Is Nothing AndAlso tLastLang = "" Then
            Resources.resGBMsg.Culture = New System.Globalization.CultureInfo("EN")
            Resources.resGBGridHeader.Culture = New System.Globalization.CultureInfo("EN")
            Resources.resGBMenuName.Culture = New System.Globalization.CultureInfo("EN")
        Else
            Resources.resGBMsg.Culture = New System.Globalization.CultureInfo(tLastLang)
            Resources.resGBGridHeader.Culture = New System.Globalization.CultureInfo(tLastLang)
            Resources.resGBMenuName.Culture = New System.Globalization.CultureInfo(tLastLang)
        End If
    
        ViewData("olaCode") = Resources.resGBGridHeader.olaCode
        ViewData("olaName") = Resources.resGBGridHeader.olaName
        ViewData("olaMenuDplType") = Resources.resGBGridHeader.olaMenuDplType
        ViewData("olaFindDplType") = Resources.resGBGridHeader.olaFindDplType
        ViewData("olaDplTypeList") = Resources.resGBGridHeader.olaDplTypeList
        ViewData("olaEdit") = Resources.resGBGridHeader.olaEdit
        ViewData("olaMsgSelCol") = Resources.resGBGridHeader.olaMsgSelCol
        ViewData("oimgBrowse") = Resources.resGBImageList.oimgBrowse
        ViewData("olaMenuHome") = Resources.resGBMenuName.omnHome
        ViewData("olaMenuGroup") = Resources.resGBMenuName.omnMngGenOther
        ViewData("olaMenuExit") = Resources.resGBMenuName.omnExit
        ViewData("olaCreate") = Resources.resGBMenuName.omnCreate        
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	<%=ViewData("olaDplTypeList")%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<input type="hidden" id="otbFilterField"  />
<input type="hidden" id="otbtextField" />   
<div class="xW_DivMain xCN_AllBorderColor xCN_AllFontFamily xCN_AllFontSize xCN_AllFontColor">
 <%--   <div class="xW_DivToppic xCN_AllMenuFontSize">
         <label><%=ViewData("olaMenuDplType")%></label>         
    </div>--%>
    <%--<div class="xW_DivToppic xCN_AllMenuFontSize">
        <label>\\<a class="xCN_LabelLink" href="<%=Url.Action("Index","Home") %>"><%=ViewData("olaMenuHome")%></a>\<a class="xCN_LabelLink" href="<%=Url.Action("Index","cvcCNPanal") %>?ptMenuGrpName=General_Other"><%=ViewData("olaMenuGroup")%></a>\<%=ViewData("olaMenuDplType")%></label> 
    </div>--%>
    <%--\\<a href="<%=Url.Action("Index","Home") %>">หน้าหลัก</a>\<a href="<%=Url.Action("Index","cvcCNPanal") %>?ptMenuGrpName=General_Pdt">สินค้า</a>\<%=ViewData("olaMenuDplType")%>--%>
 
    <div class="xW_DivSearch">
        <div class='xW_DivPath'>
            <label>\\
                <a class="xCN_LabelLink" href="<%=Url.Action("Index","Home") %>">
                    <%=ViewData("olaMenuHome") %>
                </a>\
                <a class="xCN_LabelLink" href="<%=Url.Action("Index","cvcCNPanal") %>?ptMenuGrpName=General_Other">
                    <%=ViewData("olaMenuGroup") %>
                </a>\
                <%=ViewData("olaMenuDplType")%>
            </label>
        </div>
        <div class ="xW_DivSearchCapPrd">
            <label id="olaFilterCaption"><%=ViewData("olaFindDplType")%></label>
        </div>
        <div class="xW_DivSearchText">
            <input type="text"
                  onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which)"
                  id="otbFilterValue" 
                  onkeydown ="return otbFilterValue_onkeydown(event.keyCode,event.which)"/>
        </div>
        <div class="xCN_DivBrowData xCN_DivBrowDataSetTopMargin xW_DivSearchImg" >
              <img id="Browse"
                  src="<%=Url.Content(ViewData("oimgBrowse"))%>" 
                  alt="<%=ViewData("olaFindDplType")%>" 
                  onclick="W_FRMxSearchMaster()" 
                  onmouseover="W_PICxMouseOver(this)" 
                  onmouseout="W_PICxMouseOut(this)" />
        </div>
    </div>

    <!-- Menu -->
    <div id="odiMenu" class="xCN_DivMainMenuPage xCN_AllBorderColor">
        <div id="Div2" class="xW_DivMenu">
            <div id="odiMenuHome" class="xCN_DivMenuHome" style="float: left;">
                <a onclick="W_FRMxShowHome()" href="javascript:void(0)">
                    <div class="xCN_DivMenuHomeCaption">
                        <%=ViewData("olaMenuHome")%>
                    </div>
                </a>
            </div>
            <div id="odiMenuNew" class="xCN_DivMenuNew">
                <a onclick="W_FRMxInsertRow()" href="javascript:void(0)">
                    <div class="xCN_DivMenuNewCaption">
                        <%=ViewData("olaCreate")%>
                    </div>
                </a>
            </div>
            <div id="odiMenuExit" class="xCN_DivMenuLogOut" style="float: left;">
                <a onclick="W_FRMxClose()" href="javascript:void(0)">
                    <div class="xCN_DivMenuLogOutCaption">
                        <%=ViewData("olaMenuExit")%>
                    </div>
                </a>
            </div>
        </div>
    </div>
    
    <!-- Grid -->
    <div class='xCN_DivMainMenuPage xCN_AllBackgroundColor xCN_AllBorderColor' style="height:518px; overflow:auto;">
    <% 
        Dim gridBuilder = Html.Telerik().Grid(Of Adasoft.WebPos.Models.cmlTCNMDplType)(Model)
        gridBuilder.Name("Grid")
        gridBuilder.Pageable(Function(page) page.PageSize(15))
        '*ปิดไว้ ใช้งานปุ่มที่สร้างเอง *CH 22-10-2012
        'gridBuilder.Sortable().ToolBar(Function(commands) commands.Insert.HtmlAttributes(New With {.id = "ocmAdd"})).HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"})
        gridBuilder.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                  .Select("_SelectAjaxEditing", "cvcDepositSlipType") _
                  .Update("_SaveAjaxEditing", "cvcDepositSlipType") _
                  .Delete("_DeleteAjaxEditing", "cvcDepositSlipType", New With {.id = (Function(o) o.FTDtyCode)}) _
                  .Insert("_InsertAjaxEditing", "cvcDepositSlipType")))
     
            'Add grid columns
            'gridBuilder.Columns(Function(columns) columns.Add(Function(o) o.RowID).Width(100))
        gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTDtyCode).Width(150).Title(ViewData("olaCode")) _
                                .HeaderHtmlAttributes(New With {.name = "FTDtyCode", .style = "text-align:center; font-size:14px;"}) _
                                .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
        gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTDtyName).Width(503).Title(ViewData("olaName")) _
                                .HeaderHtmlAttributes(New With {.name = "FTDtyName", .style = "text-align:center; font-size:14px;"}) _
                                .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
          
        gridBuilder.DataKeys(Function(keys) (keys.Add(Function(c) c.FTDtyCode)))
        
        gridBuilder.Columns(Function(columns) columns.Command(Function(commands) commands.Edit()).Width(30).Title("Commands").Visible(False))
        gridBuilder.Columns(Function(columns) columns.Command(Function(commands) commands.Delete()).Width(30).Title("Commands").Visible(False))
          
        Dim commandColumn As New GridActionColumn(Of Adasoft.WebPos.Models.cmlTCNMDplType)(gridBuilder.ToComponent())
        commandColumn.Title = ViewData("olaEdit")
        commandColumn.HeaderHtmlAttributes.Add("style", "text-align:center; font-size:13px;") 'New With {.style = "text-align:center;"})
        commandColumn.HtmlAttributes.Add("style", "text-align:left; font-size:12px;")
        Dim objEdit As New GridEditActionCommand
        commandColumn.Commands.Add(objEdit)
        Dim objDelete As New GridDeleteActionCommand
        commandColumn.Commands.Add(objDelete)

        gridBuilder.ClientEvents(Function(Events) Events.OnLoad("W_SETxFilterOnClick"))
        gridBuilder.ClientEvents(Function(Events) Events.OnDataBound("W_SETxFilterOnClick"))
        gridBuilder.ClientEvents(Function(Events) Events.OnEdit("W_CHKxStatus"))
        gridBuilder.ClientEvents(Function(Events) Events.OnDelete("W_CHKxUserDeleteAuthorize"))
        gridBuilder.ClientEvents(Function(Events) Events.OnSave("W_CHKxUserAuthorize"))
        gridBuilder.RowAction(Function(row) (row.Selected = row.DataItem.FTDtyCode.Equals(ViewData("id"))))
           
        gridBuilder.ToComponent().Columns.Add(commandColumn)
        gridBuilder.Pageable(Function(page) page.Total(15))
                       
        'gridBuilder.Pageable()
         
        'gridBuilder.Selectable()
        gridBuilder.Render()
           
        %>
        <% Html.Telerik().ScriptRegistrar().Globalization(true) %>

    </div>
</div>
<script type="text/javascript">
    var tW_CmdMode = '';

    function W_CHKxStatus(e) {

        tW_CmdMode = e.mode;
        document.getElementById('FTDtyCode').onkeypress = function() { return J002_CHKbCheckTxtKey(event.keyCode, event.which) };
        document.getElementById('FTDtyName').onkeypress = function() { return J002_CHKbCheckTxtKey(event.keyCode, event.which) };
        if (tW_CmdMode == 'edit') {
            J002_SETxReadOnly("FTDtyCode", true);
            document.getElementById("FTDtyCode").onkeydown = function() { return false; };
            document.getElementById('FTDtyName').focus();
            document.getElementById('FTDtyName').select();
        } else {
            document.getElementById('FTDtyCode').focus();
        }
    }

    function W_CHKxUserAuthorize(e) {
        if (tW_CmdMode == 'insert') {
            var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Add%>';
        }
        else {
            var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Edit%>';
        }
        var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
        var tPwdAllow = '<%=Session("bVB_CNPwdAllow") %>';
        var bAllow = J002_CHKtCheckAuthorize('omnMngGen', tAuthor, tPwdAllow, tMsgNotAuthorize);
        if (bAllow == false) {
            return e.preventDefault();
        }

        if (tW_CmdMode == 'insert') {
            //Check Duplicate Key
            var tErrMsg = W_CHKxVerifyInsertData();
            if (tErrMsg != null && tErrMsg != '') {
                alert(tErrMsg);
                document.getElementById('FTDtyCode').focus();
                document.getElementById('FTDtyCode').select();
                return e.preventDefault();
            }
        }
    }
    function W_CHKxVerifyInsertData() {
        var oXmlHttp = J002_GEToXMLHttpRequest();
        var tDataTimeNow = J002_GETtTimeStamp();
        var tCode = document.getElementById("FTDtyCode").value;
        var tUrl = '<%=Url.Action("C_CHKtVerifyInsertData","cvcDepositSlipType") %>' + "?ptDateTimeNow=" + tDataTimeNow + "&ptCode=" + tCode;
        oXmlHttp.open("GET", encodeURI(tUrl), false);
        oXmlHttp.send(null);
        return oXmlHttp.responseText;
    }

    function W_CHKxUserDeleteAuthorize(e) {
        if (document.getElementById('FTDtyCode') != null) {
            e.preventDefault();
            return false;
        }
    
        var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Delete%>';
        var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
        var tPwdAllow = '<%=Session("bVB_CNPwdAllow") %>';
        var bAllow = J002_CHKtCheckAuthorize('omnMngGen', tAuthor, tPwdAllow, tMsgNotAuthorize);
        if (bAllow == false) {
            return e.preventDefault();
        }
    }

    function W_SETxFilterOnClick() {
        //W_SETxCommandCaption();
        $('#Grid tr:has(td) td', this.element).bind('click', function(e) {
            var td = this;
            if (td.cellIndex > 1) {
                return true;
            }

            var tCaption = $('#Grid th').eq(td.cellIndex).text();
            document.getElementById("olaFilterCaption").innerHTML = '<%=ViewData("olaFindDplType")%>' + ' ' + tCaption;
            var tColName = $('#Grid th').eq(td.cellIndex).attr("name");
            document.getElementById('otbFilterField').value = tColName;
            //set caption
            document.getElementById('otbtextField').value = '<%=ViewData("olaFindDplType")%>' + ' ' + tCaption;
        })
    }

    //เพิ่มเรคคอร์ดใหม่ใน Telerik //*CH 22-10-2012
    function W_FRMxInsertRow() {
        var oGrid = $("#Grid").data('tGrid');
        oGrid.addRow();
    }
</script>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
     <script type ="text/javascript">
         window.onload = window_onload;
         function window_onload() {
             try {
                 J003_SHWxWaiting();
                 tJ002_VirtualDirectory = '<%=Session("VirtualDirectory") %>';
                 tJ003_VirtualDirectory = '<%=Session("VirtualDirectory") %>';

                 if ('<%=ViewData("AuthorRead") %>' != '1') {
                     var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Read%>';
                     var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
                     var tPwdAllow = '<%=Session("bVB_CNPwdAllow") %>';
                     var bAllow = J002_CHKtCheckAuthorize('omnMngGen', tAuthor, tPwdAllow, tMsgNotAuthorize);
                     if (bAllow == false) {
                         window.history.back();
                         //window.location = '<%=Url.Action("Index","Home") %>';
                         return false;
                     }
                 }

                 W_Show('<%=Viewdata("ptWheV")%>', 'FTDtyCode', '<%=ViewData("olaCode")%>');
                 J003_DISxWaiting();
             }
             catch (ex) {
                 J003_DISxWaiting();
                 J002_SHWxError('window_onload', ex);
             }
         }
         function W_Show(tValue, tFName, tCaption) {
             document.getElementById('otbFilterValue').focus();

             document.getElementById('otbFilterField').value = tFName;
             document.getElementById('otbFilterValue').value = tValue;
             document.getElementById('otbtextField').value = tCaption;
             if (tCaption == "" || tCaption == null) {
                 document.getElementById('olaFilterCaption').innerHTML = '<%=ViewData("olaFindDplType")%>';
             }
             else {
                 document.getElementById('olaFilterCaption').innerHTML = '<%=ViewData("olaFindDplType")%>' + ' ' + tCaption;

             }
         }

         function W_FRMxSearchMaster() {
             var oField = document.getElementById('otbFilterField');
             var oValue = document.getElementById('otbFilterValue');
             var oText = document.getElementById('otbtextField');
             if (oField.value != '') {
                 var oGrid = $("#Grid").data('tGrid');
                 oGrid.rebind({
                     ptStaFilter: '1'
                     , ptFilterField: encodeURI(oField.value)
                     , ptFilterValue: encodeURI(oValue.value)
                 });
                 //window.location = '<%=Url.Action("Index","cvcPdtUnit") %>' + '?ptWheF=' + oField.value + '&ptWheV=' + oValue.value + '&ptWheT=' + oText.value + '&ptAuthorRead=1';
             } else {
                 alert('<%=ViewData("olaMsgSelCol")%>');
             }
         }
         function otbFilterValue_onkeydown(ptKeyCode, ptWhich) {
             var tKey = ptKeyCode;
             if (ptWhich != null && ptWhich != '') {
                 tKey = ptWhich;
             }
             if (tKey == 13) {
                 var oField = document.getElementById('otbFilterField');
                 var oValue = document.getElementById('otbFilterValue');
                 var oText = document.getElementById('otbtextField');
                 if (oField.value != '') {
                     var oGrid = $("#Grid").data('tGrid');
                     oGrid.rebind({
                         ptStaFilter: '1'
                         , ptFilterField: encodeURI(oField.value)
                         , ptFilterValue: encodeURI(oValue.value)
                     });
                     //window.location = '<%=Url.Action("Index","cvcPdtUnit") %>' + '?ptWheF=' + oField.value + '&ptWheV=' + oValue.value + '&ptWheT=' + oText.value + '&ptAuthorRead=1';
                 }
                 else {
                     alert('<%= ViewData("olaMsgSelCol")%>');
                 }

             }
             return !(tKey == 13);
         }
         //------------------------------*TW

         //*CH 22-10-2012
         function W_FRMxShowHome() {
             window.location = '<%=Url.Action("Index","Home")%>';
         }
         function W_FRMxClose() {
             window.location = '<%=Url.Action("Index","cvcCNPanal") %>?ptMenuGrpName=General_Other';
         }
    </script>

<script type="text/javascript">
    function W_PICxMouseOver(oPic) {
        oPic.border = "1";
    }

    function W_PICxMouseOut(oPic) {
        oPic.border = "0";
    }
    </script>

<link href="<%=Url.Content("~/Content/AdaCss/Global/FCS_CNCenter.css")%>" rel="stylesheet" type="text/css" />
<link href="<%=Url.Content("~/Content/AdaCss/Local/FCS_cvcGeneral.css") %>" rel="stylesheet" type="text/css" />
<link rel="Stylesheet" href="<%=Url.Content("~/Content/AdaCss/Local/FCS_cvcManagementLocal.css")%>" />
<script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J012_GetSessionUserLogin.js") %>"></script>
</asp:Content>