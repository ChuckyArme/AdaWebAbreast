<%@ Control Language="VB" Inherits="System.Web.Mvc.ViewUserControl" %>
<%@ Import Namespace="Adasoft.WebPos" %>
<%@ Import Namespace="System.Resources" %>
<%@ Import Namespace="AdaWebPos" %>
<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tLastLang As String = Session("tVB_LastLang")
        If tLastLang Is Nothing AndAlso tLastLang = "" Then
            Resources.resGBGridHeader.Culture = New System.Globalization.CultureInfo("EN")
        Else
            Resources.resGBGridHeader.Culture = New System.Globalization.CultureInfo(tLastLang)
        End If
        ViewData("olaFTPdtUnit") = Resources.resGBGridHeader.olaPdtUnitName
       
    End Sub
</script>
<img alt="" id="oimSessionAlive" width="1" height="1" src="" style="display:none;"/>
<%--Hidden Object--%>
<input type="hidden" id="otbFilterValueOld" value="<%=Session("cvcCNBrwPdtLastFilter") %>" />
<input type="hidden" id="otbFilterValueShwOld" value="<%=Session("cvcCNBrwPdtLastFilterTxt") %>" />
<input type="hidden" id="otbFilterField" />
            
<table style="text-align:center; width:100%" border="0" cellpadding="0" cellspacing="0" >
                
    <tr >
        <td colspan="4" id="ofaShowHD" valign="top" width="100%">
                    
        <%
    Dim nFieldCountHD As Integer
    Dim nWidth(9) As Integer
    Dim tCaption(9) As String
    Dim tField(9) As String
    Dim tHidden(9) As String
    Dim nCount As Integer
    nFieldCountHD = 0
    For Each item In ViewData("BrowseField")
        tField(nFieldCountHD) = item
        nFieldCountHD += 1
    Next
            
    nCount = 0
    For Each item In ViewData("WidthField")
        nWidth(nCount) = CInt(item * 820 / 100)
        nCount += 1
    Next
            
    nCount = 0
    For Each item In ViewData("Caption")
        tCaption(nCount) = item
        nCount += 1
    Next

    nCount = 0
    For Each item In ViewData("Hidden")
        tHidden(nCount) = item
        nCount += 1
    Next
            
    Dim tController As String = ViewData("CtrlName")
    Dim oView = CType(ViewData("DataPdt"), IEnumerable(Of Models.cmlCNBrwPdt))
    Dim oData As IEnumerable(Of Models.cmlCNBrwPdt)
    oData = oView
    Dim gridBuilderPdt = Html.Telerik().Grid(oData)
    gridBuilderPdt.Name("GridPdt")
    gridBuilderPdt.Pageable(Function(page) page.PageSize(Session("nVB_CNBrwTop")))
    If 1 <= nFieldCountHD Then
        gridBuilderPdt.Columns(Function(columns) columns.Bound(Function(o) o.PdtCode).Hidden(tHidden(0) = "1").Title(tCaption(0)).Width(nWidth(0)).HeaderHtmlAttributes(New With {.align = "center"}).HtmlAttributes(New With {.align = "left", .Style = "height:20px"}))
    End If
    If 2 <= nFieldCountHD Then
        gridBuilderPdt.Columns(Function(columns) columns.Bound(Function(o) o.PdtName).Hidden(tHidden(1) = "1").Title(tCaption(1)).Width(nWidth(1)).HtmlAttributes(New With {.align = "left"}))
    End If
    If 3 <= nFieldCountHD Then
        gridBuilderPdt.Columns(Function(columns) columns.Bound(Function(o) o.PdtNameOth).Hidden(tHidden(2) = "1").Title(tCaption(2)).Width(nWidth(2)).HtmlAttributes(New With {.align = "left"}))
    End If
    If 4 <= nFieldCountHD Then
        gridBuilderPdt.Columns(Function(columns) columns.Bound(Function(o) o.PdtBarcode).Hidden(tHidden(3) = "1").Title(tCaption(3)).Width(nWidth(3)).HtmlAttributes(New With {.align = "left"}))
    End If
    If 5 <= nFieldCountHD Then
        gridBuilderPdt.Columns(Function(columns) columns.Bound(Function(o) o.PdtPriceRet).Hidden(tHidden(4) = "1").Title(tCaption(4)).Width(nWidth(4)).HtmlAttributes(New With {.align = "left"}).Format("{0:#,##0." & StrDup(Session("nVB_CNDecAmtForShw"), "0") & "}"))
    End If
    If 6 <= nFieldCountHD Then
        gridBuilderPdt.Columns(Function(columns) columns.Bound(Function(o) o.PdtQtyRet).Hidden(tHidden(5) = "1").Title(tCaption(5)).Width(nWidth(5)).HtmlAttributes(New With {.align = "left"}).Format("{0:#,##0." & StrDup(Session("nVB_CNDecAmtForShw"), "0") & "}"))
    End If
    If 7 <= nFieldCountHD Then
        gridBuilderPdt.Columns(Function(columns) columns.Bound(Function(o) o.PdtQtyBalance).Hidden(tHidden(6) = "1").Title(tCaption(6)).Width(nWidth(6)).HtmlAttributes(New With {.align = "left"}).Format("{0:#,##0." & StrDup(Session("nVB_CNDecAmtForShw"), "0") & "}"))
    End If
    If 8 <= nFieldCountHD Then
        gridBuilderPdt.Columns(Function(columns) columns.Bound(Function(o) o.PdtUnit).Hidden(tHidden(7) = "1").Title(tCaption(7)).Width(nWidth(7)).HtmlAttributes(New With {.align = "left"}))
    End If
    If 9 <= nFieldCountHD Then
        gridBuilderPdt.Columns(Function(columns) columns.Bound(Function(o) o.PdtFactor).Hidden(tHidden(8) = "1").Title(tCaption(8)).Width(nWidth(8)).HtmlAttributes(New With {.align = "left"}))
    End If
    gridBuilderPdt.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
        .Select("_SelectionClientSide_Pdt", tController)))
                      
            gridBuilderPdt.DataKeys(Function(keys) (keys.Add(Function(c) c.PdtBarcode)))
    gridBuilderPdt.Selectable()
    gridBuilderPdt.Scrollable(Function(o) o.Height(400))
            'gridBuilderPdt.ClientEvents(Function(Events) Events.OnRowSelect("onRowSelectedPdt"))
            gridBuilderPdt.ClientEvents(Function(Events) Events.OnLoad("gridProduct_onLoad"))
    gridBuilderPdt.Render()
            
        %>
                        
        </td>
    </tr>
    <tr>
        <td align="left" valign="top" width="22%">
            <label id="olaFilterLabel"><%=ViewData("olaFilterBy") %></label>
        </td>
        <td align="left" valign="top"width="30%">
            <input type="button" value='<%=ViewData("olaAnyPart") %>'  onclick="W_DATxRefresh(1);" />
            <input type="button" value='<%=ViewData("olaFilter") %>' onclick="W_DATxRefresh(2);" />
            <input type="button" value='<%=ViewData("olaLastFilter") %>' onclick="W_DATxRefresh(3);" />
        </td>
        <td align="left" valign="top"width="25%">
            <select id="FTPdtBarCode" onchange="W_DATxRefresh();">
                <option value="FTPdtBarCode1"><%=ViewData("olaBarcode1") %></option>
                <option value="FTPdtBarCode2"><%=ViewData("olaBarcode2") %></option>
                <option value="FTPdtBarCode3"><%=ViewData("olaBarcode3") %></option>
            </select>
        </td>
        <td align="left" valign="top"width="25%">
            <label id ="olaShowUnit">
                <%=ViewData("olaFTPdtUnit") %>
            </label>
        </td>
    </tr>                
    <tr>
        <td colspan="3" align="left" valign="middle">
            <input type="text" onkeydown="otbFilterValuePdt_onkeydown(event.keyCode,event.witch);"  style="max-width:418px; width:418px;" id="otbFilterValue" />
        </td>
        <td align="right" valign="middle">
            <input type="button" value='<%=ViewData("olaOK") %>' onclick="{nStatus = 1;C_SETxProductData();}"/>
            <input type="button" value='<%=ViewData("olaCancel") %>' id='ocmCloseBrwPdt' onclick='W_CLSxCloseBrwPdt()'/>
        </td>
    </tr>
</table>
<script type="text/javascript">
    var nOnclick=0;          
    var tW_PdtCodeBeFore;
    var tW_PassedValue; //ข้อมูลสินค้าที่ได้จากหน้าค้นหา      
    var tW_BrwUIPdtCode; //*CH 11-01-2013 เก็บรหัสสินค้าจากการเลือกหน้าค้นหาสินค้า

    function gridProduct_onLoad() {
        var oFieldName = document.getElementById('otbFilterField');
        var columnName = $('#GridPdt th').eq(0).text();
        document.getElementById("olaFilterLabel").innerHTML = '<%=ViewData("olaFilterBy") %>' + columnName;
        switch(columnName){
            <%For nI = 0 To 9 %>
                case '<%=tCaption(nI)%>':oFieldName.value = '<%=tField(nI)%>';break;
            <%Next %>
        }           
        $('#GridPdt tr:has(td) td', this.element).bind('click', function(e) {
            alert("Yo");
            var td = this;
            var oFieldName = document.getElementById('otbFilterField');
            var columnName = $('#GridPdt th').eq(td.cellIndex).text();
            document.getElementById("olaFilterLabel").innerHTML = '<%=ViewData("olaFilterBy") %>' + columnName;
            switch(columnName){
                <%For nI = 0 To 9 %>
                    case '<%=tCaption(nI)%>':oFieldName.value = '<%=tField(nI)%>';break;
                <%Next %>
            }
        });
        $('tr', this).live('dblclick', function(e) {
            var $tr = $(this);
            nStatus = 1;
            C_SETxProductData();
            });           
        $('#GridPdt th', this.element).live('click', function(e) {
            var td = this;
            var oFieldName = document.getElementById('otbFilterField');
            var columnName = $('#GridPdt th').eq(td.cellIndex).text();
            document.getElementById("olaFilterLabel").innerHTML = '<%=ViewData("olaFilterBy") %>' + columnName;
            switch(columnName){
                <%For nI = 0 To 9 %>
                    case '<%=tCaption(nI)%>':oFieldName.value = '<%=tField(nI)%>';break;
                <%Next %>
            }
            nOnclick=0;
        });
    }
    function onRowSelectedPdt(e) {
        nOnclick=1;
        //var tCount='0';
        //var tReturn;// = '12233344445555566666677777778888888899999999900000000001223334444555556666667777777888888889999999990000000000';
        //<%For Each item In ViewData("PK")%>
        //      tReturn=e.row.cells[<%=item%>].innerHTML;
        //<%Next%>
        var tDataID = e.row.cells[0].innerHTML; //*CH 29-12-2012 New เก็บรหัสสินค้าจากแถวที่เลือก
        C_GETxPassedValuePdt(tDataID);
        W_SHWxFilter(e.row.cells['<%=ViewData("ptPosUnit")%>'].innerHTML,e.row.cells['<%=ViewData("ptPosFactor")%>'].innerHTML)
    }
                
    function C_SETxProductData(){
        $('#otbPdtCode').val(tW_BrwUIPdtCode);
        if ($('#otbPdtCode').val() != tW_PdtCodeBeFore) {
            $('#otbSeq').val('');
        }
        else {
            return false;
        }
        if (W_GETxPdtDetail() == false) {
            W_CLRxTextBox();
            alert('<%=ViewData("olatMsgNonDataPdt") %>');
            $('#otbPdtCode').focus();
            return false;
        }
        W_CLSxCloseBrwPdt(); //ปิดหน้าต่างค้นหา โดยที่หน้าที่เรียกต้องมี Function นี้ด้วย
        $('#otbPdtCode').focus();
        W_CHKxPdtSerial();
    }

    function W_SHWxFilter(ptUnit, ptFactor) {
        var oShow = document.getElementById('olaShowUnit');
        oShow.innerHTML = '<%=ViewData("olaFTPdtUnit") %>' + ' : ' + ptUnit + '/' + ptFactor;
    }

    function otbFilterValuePdt_onkeydown(ptKeyCode, ptWitch) {
        var tKey = ptKeyCode;
        if (ptWitch != null && ptWitch != '') {
            tKey = ptWitch;
        }
        if (tKey == 13) {
            W_DATxRefresh(1);
        }
        return !(tKey == 13)
    }
    function W_GETtTimestamp() {
        var oDate = new Date;
        tDate = '' + oDate.getFullYear();
        tDate += oDate.getMonth();
        tDate += oDate.getDay();
        tDate += oDate.getHours();
        tDate += oDate.getMinutes();
        tDate += oDate.getSeconds();
        tDate += oDate.getMilliseconds();
        return tDate;
    }
    function W_DATxRefresh(pnFilterType) {
        //var oController = window.document.getElementById(ptControllerId);
        nStatus = 0;
        var tParamVOld = document.getElementById('otbFilterValueOld').value;
        var tParamVShwOld = document.getElementById('otbFilterValueShwOld').value;
        var oFilField = window.document.getElementById('otbFilterField');
        var oFilValue = window.document.getElementById('otbFilterValue');
        var oSelect = document.getElementById('FTPdtBarCode');
        var nBarLevel = oSelect.selectedIndex;

        tParamF = oFilField.value;
        if (oFilValue.value != '') {
            tParamV = oFilValue.value;
        }
        else {
            tParamV = '';
        }
        if (tParamV != '') {
            switch (pnFilterType) {
                case 1: //หาบางส่วน
                    tParamV = '%' + tParamV + '%';
                    break;
                case 2: //กรองข้อมูล
                    tParamV = tParamV + '%';
                    break;
                default:
                    tParamV = '%' + tParamV + '%';
                    break;
            }
            document.getElementById('otbFilterValueOld').value = tParamV;
            document.getElementById('otbFilterValueShwOld').value = oFilValue.value;
        }
        if (pnFilterType == 3) {//กรองล่าสุด
            tParamV = tParamVOld;
            document.getElementById('otbFilterValue').value = tParamVShwOld;
        }
        var tDate = W_GETtTimestamp();
        var ogdHD = $('#GridPdt').data('tGrid');
        ogdHD.rebind({
            ptDate: tDate, ptFilterF: encodeURI(tParamF), ptFilterV: encodeURI(tParamV), ptBarLevel: nBarLevel
            //,ptFilterVTxt: oFilValue.value //'*CH 30-11-11 Old
        , ptFilterVTxt: escape(oFilValue.value) //'*CH 31-11-11 New Encode
        });
    }
    function C_GETxPassedValuePdt(ptVal, ptFlag) {
        tW_BrwUIPdtCode = ptVal;
    }
</script>