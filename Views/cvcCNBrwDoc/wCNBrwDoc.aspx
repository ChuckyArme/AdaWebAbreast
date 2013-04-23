<%@ Page Language="VB" Inherits="System.Web.Mvc.ViewPage" %>
<%@ Import Namespace="AdaWebPos" %>
<%@ Import Namespace="Adasoft.WebPos" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim oCulture As System.Globalization.CultureInfo
        If Session("tVB_LastLang") Is Nothing OrElse Session("tVB_LastLang") = "" Then
            oCulture = New System.Globalization.CultureInfo("EN")
        Else
            oCulture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
        End If
        Resources.resGBMsg.Culture = oCulture
        
        ViewData("tMsgSelect") = Resources.resGBMsg.tMsgSelect
        '*CH 15-08-2012 '*RQ1208-17
        ViewData("ovd_tMsgNotFmtDate") = Resources.resGBMsg.tMsgNotFmtDate
        ViewData("ovd_tMsgYear") = Resources.resGBMsg.tMsgYear
        ViewData("ovd_tMsgMonth") = Resources.resGBMsg.tMsgMonth
        ViewData("ovd_tMsgDay") = Resources.resGBMsg.tMsgDay
        ViewData("ovd_tMsgNotEqual") = Resources.resGBMsg.tMsgNotEqual
        ViewData("ovd_tMsgNotLess") = Resources.resGBMsg.tMsgNotLess
        ViewData("ovd_tMsgNotexceed") = Resources.resGBMsg.tMsgNotexceed
        ViewData("ovd_tMsgAnd") = Resources.resGBMsg.tMsgAnd
        ViewData("ovd_tMsgMoreThen") = Resources.resGBMsg.tMsgMoreThen
        ViewData("ovd_tMsgOnlyNum") = Resources.resGBMsg.tMsgOnlyNum
        
        ViewData("VirtualDirectory") = W_GETtVirtualDirectory()
        
        W_SETxLangCulture()
        
    End Sub
    Sub W_SETxLangCulture()
        'set ภาษา ให้กับ Object Telerik
        Dim oDateTimeInfo As New Globalization.DateTimeFormatInfo
        oDateTimeInfo.ShortDatePattern = "dd/MM/yyyy"
        oDateTimeInfo.ShortTimePattern = "HH:mm:ss"
        oDateTimeInfo.Calendar = New Globalization.GregorianCalendar
        If Session("tVB_LastLang") Is Nothing OrElse Session("tVB_LastLang") = "" Then
           System.Threading.Thread.CurrentThread.CurrentCulture = System.Globalization.CultureInfo.CreateSpecificCulture("EN")
        System.Threading.Thread.CurrentThread.CurrentUICulture = New System.Globalization.CultureInfo("EN")
        Else
        System.Threading.Thread.CurrentThread.CurrentCulture = System.Globalization.CultureInfo.CreateSpecificCulture(Session("tVB_LastLang").ToString)
        System.Threading.Thread.CurrentThread.CurrentUICulture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
        End If
        'System.Threading.Thread.CurrentThread.CurrentCulture = System.Globalization.CultureInfo.CreateSpecificCulture(Session("tVB_LastLang").ToString)
        'System.Threading.Thread.CurrentThread.CurrentUICulture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
        System.Threading.Thread.CurrentThread.CurrentUICulture.DateTimeFormat = oDateTimeInfo
        System.Threading.Thread.CurrentThread.CurrentCulture.DateTimeFormat = oDateTimeInfo
    End Sub
    Function W_GETtVirtualDirectory() As String
        Dim tReturn As String = ""
        Dim tStr As String = ""
        Dim nIndex As Integer = 0
        tStr = Url.Action("Index", "Home")
        nIndex = tStr.IndexOf("/Home")
        If nIndex > -1 Then
            tStr = tStr.Substring(0, nIndex)
            tReturn = tStr.Replace("/", "")
        End If
        Return tReturn
    End Function
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <title><%=ViewData("olaTitle")%></title>
    <script type="text/javascript">
        var nStatus = 0;
    </script>
    <%=Html.Telerik().StyleSheetRegistrar().DefaultGroup(Function(group) group.Add("Site.css")).DefaultGroup(Function(group) _
                                                                                  group.Add("telerik.common.css")).DefaultGroup(Function(group) group.Add("telerik.forest.css"))%>
    <script src="<%=Url.Content("~/Scripts/MicrosoftAjax.js") %>" type="text/javascript"></script>
    <script src="<%=Url.Content("~/Scripts/MicrosoftMvcAjax.js") %>" type="text/javascript"></script>
    <script src="<%=Url.Content("~/Scripts/AdaScript/J002_General.js") %>" type="text/javascript"></script>

    <script type="text/javascript">

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
        function W_DATxRefresh() {
            //var oController = window.document.getElementById(ptControllerId);
            if (document.getElementById('olaFilterBy').innerHTML == '') {
                alert('<%=ViewData("tMsgSelect") %>');
                return false;
            }
            nStatus = 0;
            var oApprField = window.document.getElementById('otbApprField'); var oApprValue = window.document.getElementById('ocbApprValue');
            var oRefField = window.document.getElementById('otbRefField'); var oRefValue = window.document.getElementById('ocbRefValue');
            var oActField = window.document.getElementById('otbActField'); var oActValue = window.document.getElementById('ocbActValue');
            var oCalField = window.document.getElementById('otbCalField'); var oCalValue = window.document.getElementById('ocbCalValue');
            var oDeptField = window.document.getElementById('otbDeptField'); var oDeptValue = window.document.getElementById('otbDeptValue');
            var oFilField = window.document.getElementById('otbFilterField'); var oFilValue = window.document.getElementById('otbFilterValue');

            var tParamF = oApprField.value + ',' + oRefField.value + ',' + oActField.value + ',' + oCalField.value;
            var tParamV = oApprValue.value + ',' + oRefValue.value + ',' + oActValue.value + ',' + oCalValue.value;
            if (oDeptValue.value != '') {
                tParamF = tParamF + ',' + oDeptField.value;
                tParamV = tParamV + ',' + oDeptValue.value;
            }

            if (oFilValue.value != '') {
                tParamF = tParamF + ',' + oFilField.value;
                //tParamV = tParamV + ',' + "'" + oFilValue.value + "'"; //*CH 15-08-2012
                tParamV = tParamV + ',' + oFilValue.value; //*CH 15-08-2012
            }

            //**CH 15-08-2012 *RQ1208-17
            var tTypeField;
            if (oFilField.value.split(".").length == 2) {
                tTypeField = oFilField.value.split(".")[1];
            } else {
                tTypeField = oFilField.value;
            }
            tTypeField = tTypeField.charAt(1)
            if (tTypeField == "D") {
                var tValue = oFilValue.value;
                var nDay = 0;
                var nMonth = 0;
                var nYear = 0;
                if (tValue.split("/").length == 3) {
                    var aValue = tValue.split("/");
                    if (aValue[0].length != 2 | aValue[1].length != 2 | aValue[2].length != 4) {
                        alert('<%=ViewData("ovd_tMsgNotFmtDate")%>');
                        return false;
                    }
                    //*Check Number
                    if (isNaN(parseFloat(aValue[0]))) {
                        alert('<%=ViewData("ovd_tMsgDay")%>' + ' ' + '<%=ViewData("ovd_tMsgOnlyNum")%>');
                        return false;
                    } else { nDay = parseFloat(aValue[0]); }
                    if (isNaN(parseFloat(aValue[1]))) {
                        alert('<%=ViewData("ovd_tMsgMonth")%>' + ' ' + '<%=ViewData("ovd_tMsgOnlyNum")%>');
                        return false;
                    } else { nMonth = parseFloat(aValue[1]); }
                    if (isNaN(parseFloat(aValue[2]))) {
                        alert('<%=ViewData("ovd_tMsgYear")%>' + ' ' + '<%=ViewData("ovd_tMsgOnlyNum")%>');
                        return false;
                    } else { nYear = parseFloat(aValue[2]); }
                    
                    //*Check Day = 00 ; Month = 00,>12,<1 ; Year = 0000,<1800
                    if (aValue[0] == '00') {
                        alert('<%=ViewData("ovd_tMsgDay")%>' + ' ' + '<%=ViewData("ovd_tMsgNotEqual")%>' + ' 00.');
                        return false;
                    }  
                    if (aValue[1] == '00' | aValue[1] > '12') {
                        alert('<%=ViewData("ovd_tMsgMonth")%>' + ' ' + '<%=ViewData("ovd_tMsgNotEqual")%>' + ' 00\n' +
                        '<%=ViewData("ovd_tMsgAnd")%>' + ' ' + '<%=ViewData("ovd_tMsgNotexceed")%>' + ' 12.');
                        return false;
                    }
                    if (nMonth < 1) {
                        alert('<%=ViewData("ovd_tMsgMonth")%>' + ' ' + '<%=ViewData("ovd_tMsgNotLess")%>' + ' 1.');
                        return false;
                    }
                    if (aValue[2] == '0000' | aValue[2] < '1800') {
                        alert('<%=ViewData("ovd_tMsgYear")%>' + ' ' + '<%=ViewData("ovd_tMsgNotEqual")%>' + ' 0000\n' +
                        '<%=ViewData("ovd_tMsgAnd")%>' + ' ' + '<%=ViewData("ovd_tMsgNotLess")%>' + ' 1800.');
                        return false;
                    }

                    //*Check จำนวนวันในเดือนที่กรอก
                    if (aValue[1] == '01' | aValue[1] == '03' | aValue[1] == '05' | aValue[1] == '07' | aValue[1] == '08' | aValue[1] == '10' | aValue[1] == '12') {
                        if (aValue[0] > '31' | nDay < 1) {
                            alert('<%=ViewData("ovd_tMsgDay")%>' + ' ' + '<%=ViewData("ovd_tMsgNotexceed")%>' + ' 31\n' +
                            '<%=ViewData("ovd_tMsgAnd")%>' + ' ' + '<%=ViewData("ovd_tMsgMoreThen")%>' + ' 1.');
                            return false;
                        }
                    } else if (aValue[1] == '04' | aValue[1] == '06' | aValue[1] == '09' | aValue[1] == '11') {
                        if (aValue[0] > '30' | nDay < 1) {
                            alert('<%=ViewData("ovd_tMsgDay")%>' + ' ' + '<%=ViewData("ovd_tMsgNotexceed")%>' + ' 30\n' +
                            '<%=ViewData("ovd_tMsgAnd")%>' + ' ' + '<%=ViewData("ovd_tMsgMoreThen")%>' + ' 1.');
                            //รอ
                            return false;
                        }
                    } else {// Month 2
                        var nModYear = aValue[2] % 4;
                        if (nModYear == 0) {
                            if (aValue[0] > '29' | nDay < 1) {
                                alert('<%=ViewData("ovd_tMsgDay")%>' + ' ' + '<%=ViewData("ovd_tMsgNotexceed")%>' + ' 29\n' +
                                '<%=ViewData("ovd_tMsgAnd")%>' + ' ' + '<%=ViewData("ovd_tMsgMoreThen")%>' + ' 1.');
                                return false;
                            }
                        } else {
                            if (aValue[0] > '28' | nDay < 1) {
                                alert('<%=ViewData("ovd_tMsgDay")%>' + ' ' + '<%=ViewData("ovd_tMsgNotexceed")%>' + ' 28\n' +
                                '<%=ViewData("ovd_tMsgAnd")%>' + ' ' + '<%=ViewData("ovd_tMsgMoreThen")%>' + ' 1.');
                            return false;
                        }
                        }
                    }
                } else {
                    alert('<%=ViewData("ovd_tMsgNotFmtDate")%>');
                    return false;
                }
            }

            var tDate = W_GETtTimestamp();
            var ogdHD = $('#GridHD').data('tGrid');
            ogdHD.rebind({
                //ptDate: tDate, ptFilterF: tParamF, ptFilterV: encodeURI(tParamV)//*CH 16-08-2012 Old
                ptDate: tDate, ptFilterF: tParamF, ptFilterV: escape(tParamV)//*CH 16-08-2012 New Escape tParamV
            });
            var ordersGrid = $('#GridDT').data('tGrid');
            ordersGrid.rebind({
                ptDate: tDate, ptKeyString: ""
            });

        }

        function GetPassedValue(a) {
            returnValue = a;
        }


        function W_DATxBrowseMaster(ptObjCode, ptObjName, ptCase) {
            var dDate = new Date();
            var tDate = dDate.getFullYear() + dDate.getMonth() + dDate.getDay() + dDate.getHours() + dDate.getMinutes() + dDate.getSeconds();
            var tUrl = '<%=Url.Action("C_BRWxMaster","cvcCNBrwDoc") %>';
            tUrl += '?ptCase=' + ptCase + '&ptDate=' + tDate ;
            var tReturnedValue = showModalDialog(encodeURI(tUrl), "Passed String", "dialogWidth:800px; dialogHeight:500px; status:no; center:yes;titlebar =0");
            if (tReturnedValue != null) {
                if (tReturnedValue != '12233344445555566666677777778888888899999999900000000001223334444555556666667777777888888889999999990000000000') {
                    document.getElementById(ptObjCode).value = tReturnedValue.split(";")[0];
                    document.getElementById(ptObjName).innerHTML = tReturnedValue.split(";")[1];
                }
            }
        }
    </script>
    <script type="text/javascript" >
        function W_SETxSessionAlive() {
            // Gets reference of image
            var img = document.getElementById("oimSessionAlive");

            // Set new src value, which will cause request to server, so 
            // session will stay alive
            img.src = '<%=Url.Action("C_SETxSessionAlive","cvcCenter") %>' + "?c=" + Math.random(); //counter;
        }

        // Run function for a first time
        window.setInterval("W_SETxSessionAlive()", 60000);
    </script>
</head>



<body onunload="return window_onunload()">
    <img alt="" id="oimSessionAlive" width="1" height="1" src="" style="display:none;"/>
    <table style="text-align:center; width:100%" border="0" cellpadding="0" cellspacing="0" >
        <tr>
            <td align="left" valign="bottom"width="400px">
            
                <li><%=ViewData("olaHeader")%></li>
            </td>
            <td align="right" valign="middle"width="200px">
                <label id="olaFilterLabel"><%=ViewData("olaFilterBy")%></label>:
                <label id="olaFilterBy"></label>&nbsp;&nbsp;&nbsp;
            </td>
            
            <td align="left" valign="middle" width="200px">
                <input type="hidden" id="otbFilterField" />
                <input type="text" style="max-width:100px" id="otbFilterValue"  onkeydown="return otbFilterValue_onkeydown(event.keyCode,event.which)" onkeypress="return otbFilterValue_onkeypress(event.keyCode,event.which)" />
                
            </td>
        </tr>
        <tr style="height:160px">
            <td colspan="2" id="ofaShowHD" valign="top">

<%
    Dim nFieldCountHD As Integer
    Dim nWidth(11) As Integer
    Dim tCaption(11) As String
    Dim tField(11) As String
    Dim aFormatHD(11) As String
    Dim nCount As Integer
    Dim aTextAlignHD(11) As String
    Dim aTextAlignDT(11) As String
    Dim oTemp As New List(Of String)
    
    nFieldCountHD = 0
    For Each item In ViewData("BrowseField")
        tField(nFieldCountHD) = item
        nFieldCountHD += 1
    Next
    nCount = 0
    For Each item In ViewData("WidthField")
        nWidth(nCount) = CInt(item * 600 / 100)
        nCount += 1
    Next
    nCount = 0
    For Each item In ViewData("Caption")
        tCaption(nCount) = item
        nCount += 1
    Next
    nCount = 0
    For Each item In ViewData("FormatHD")
        aFormatHD(nCount) = item
        nCount += 1
    Next
    nCount = 0
    oTemp = ViewData("TextAlignHD")
    For i As Integer = 0 To 11
        If i >= oTemp.Count Then
            aTextAlignHD(nCount) = "text-align:left"
        Else
            aTextAlignHD(nCount) = "text-align:" & oTemp(i)
        End If
        nCount += 1
    Next
    nCount = 0
    oTemp = ViewData("TextAlignDT")
    For i As Integer = 0 To 11
        If i >= oTemp.Count Then
            aTextAlignDT(nCount) = "text-align:left"
        Else
            aTextAlignDT(nCount) = "text-align:" & oTemp(i)
        End If
        nCount += 1
    Next
   
    
    Dim tController As String = ViewData("CtrlName")
    Dim oView = CType(ViewData("DataHD"), IEnumerable(Of Models.cmlCNBrowseMaster))
    Dim oData As IEnumerable(Of Models.cmlCNBrowseMaster)
    oData = oView
    'oData = From it In Models.cmlCNBrowseMaster(ViewData("DataHD")) Select it
    Dim gridBuilder = Html.Telerik().Grid(oData).HtmlAttributes(New With {.style = "width:618px;table-layout: fixed;white-space:nowrap; font:Tahoma, Geneva, sans-serif; font-size:11px"})
    gridBuilder.Name("GridHD")
    Dim oFieldIndex As List(Of Integer) = ViewData("FieldIndex")
    gridBuilder.Pageable(Function(page) page.PageSize(10))
    For n As Integer = 0 To oFieldIndex.Count - 1
        Select Case oFieldIndex(n)
            
            Case 1
                
                gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField01).Title(tCaption(n)).Width(nWidth(n)).Format(IIf(aFormatHD(n) = "", "", "{0:" & aFormatHD(n) & "}")) _
                                        .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                        .HtmlAttributes(New With {.style = aTextAlignDT(0)}))
                
            Case 2
                
                gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField02).Title(tCaption(n)).Width(nWidth(n)).Format(IIf(aFormatHD(n) = "", "", "{0:" & aFormatHD(n) & "}")) _
                                        .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                        .HtmlAttributes(New With {.style = aTextAlignDT(1)}))
               
            Case 3
                
                gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField03).Title(tCaption(n)).Width(nWidth(n)).Format(IIf(aFormatHD(n) = "", "", "{0:" & aFormatHD(n) & "}")) _
                                        .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                        .HtmlAttributes(New With {.style = aTextAlignDT(2)}))
               
            Case 4
               
                gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField04).Title(tCaption(n)).Width(nWidth(n)).Format(IIf(aFormatHD(n) = "", "", "{0:" & aFormatHD(n) & "}")) _
                                        .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                        .HtmlAttributes(New With {.style = aTextAlignDT(3)}))
                
            Case 5
               
                gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField05).Title(tCaption(n)).Width(nWidth(n)).Format(IIf(aFormatHD(n) = "", "", "{0:" & aFormatHD(n) & "}")) _
                                        .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                        .HtmlAttributes(New With {.style = aTextAlignDT(4)}))
                
            Case 6
                If 6 <= nFieldCountHD Then
                    gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField06).Title(tCaption(n)).Width(nWidth(n)).Format(IIf(aFormatHD(n) = "", "", "{0:" & aFormatHD(n) & "}")) _
                                            .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                            .HtmlAttributes(New With {.style = aTextAlignDT(5)}))
                End If
            Case 7
                
                gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField07).Title(tCaption(n)).Width(nWidth(n)).Format(IIf(aFormatHD(n) = "", "", "{0:" & aFormatHD(n) & "}")) _
                                        .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                        .HtmlAttributes(New With {.style = aTextAlignDT(6)}))
               
            Case 8
                
                gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField08).Title(tCaption(n)).Width(nWidth(n)).Format(IIf(aFormatHD(n) = "", "", "{0:" & aFormatHD(n) & "}")) _
                                        .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                        .HtmlAttributes(New With {.style = aTextAlignDT(7)}))
               
            Case 9
                
                gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField09).Title(tCaption(n)).Width(nWidth(n)).Format(IIf(aFormatHD(n) = "", "", "{0:" & aFormatHD(n) & "}")) _
                                        .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                        .HtmlAttributes(New With {.style = aTextAlignDT(8)}))
                
            Case 10
               
                gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField10).Title(tCaption(n)).Width(nWidth(n)).Format(IIf(aFormatHD(n) = "", "", "{0:" & aFormatHD(n) & "}")) _
                                        .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                        .HtmlAttributes(New With {.style = aTextAlignDT(9)}))
                
            Case 11
               
                gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField11).Title(tCaption(n)).Width(nWidth(n)).Format(IIf(aFormatHD(n) = "", "", "{0:" & aFormatHD(n) & "}")) _
                                        .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                        .HtmlAttributes(New With {.style = aTextAlignDT(10)}))
                
            Case 12
               
                gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField12).Title(tCaption(n)).Width(nWidth(n)).Format(IIf(aFormatHD(n) = "", "", "{0:" & aFormatHD(n) & "}")) _
                                        .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                        .HtmlAttributes(New With {.style = aTextAlignDT(11)}))
               
        End Select
    Next
            
    gridBuilder.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
      .Select("_SelectionClientSide_HD", tController)))
              
    gridBuilder.DataKeys(Function(keys) (keys.Add(Function(c) c.FTField01)))
    gridBuilder.Selectable()
    gridBuilder.Footer(True)
    gridBuilder.Sortable()
    gridBuilder.Resizable(Function(o) o.Columns(True))
    gridBuilder.Scrollable(Function(o) o.Height(200))
    gridBuilder.ClientEvents(Function(Events) Events.OnRowSelect("onRowSelected"))
    gridBuilder.ClientEvents(Function(Events) Events.OnLoad("grid_onLoad"))
    gridBuilder.ClientEvents(Function(Events) Events.OnDataBound("grid_onLoad"))
    gridBuilder.Render()
    
%>
<% Html.Telerik().ScriptRegistrar().Globalization(true) %>
       
                 
            </td>
            <td valign="top" align="left" >
                <table style = "table-layout: fixed;white-space:nowrap; font:Tahoma, Geneva, sans-serif; font-size:11px">
                    <tr>
                        <td colspan="2" style=" width:200px; text-align:center"><%=ViewData("olaFilterCondition") %></td>
                    </tr>
                    <tr>
                        <td colspan="2" style=" width:200px; text-align:left"><%=ViewData("olaFilterDocSta") %></td>
                    </tr>
                    <tr>
                        <td style=" width:100px"><%=ViewData("olaCapCon_Approve")%></td>
                        <td style=" width:100px">
                            <input type="hidden" id="otbApprField" value='<%=ViewData("oApprField")%>' />
                            <select id="ocbApprValue" <%=iif(ViewData("bC_EnableAppr")=false,"disabled","")%> style = "font:Tahoma, Geneva, sans-serif; font-size:11px; width:80px">
                                <option value="1" <%=iif(ViewData("StaAppr")="1","selected","")%> ><%=ViewData("olaFilterStaAll") %></option>
                                <option value="2" <%=iif(ViewData("StaAppr")="2","selected","")%> ><%=ViewData("olaFilterStaYes")%></option>
                                <option value="3" <%=iif(ViewData("StaAppr")="3","selected","")%> ><%=ViewData("olaFilterStaNo")%></option>
                            </select>
                            
                        </td>
                    </tr>
                    <tr>
                        <td><%=ViewData("olaCapCon_Reference") %></td>
                        <td>
                            <input type="hidden" id="otbRefField" value='<%=ViewData("oRefField")%>'/>
                            <select id="ocbRefValue" <%=iif(ViewData("bC_EnableRef")=false,"disabled","")%> style = "font:Tahoma, Geneva, sans-serif; font-size:11px; width:80px">
                                <option value="1" <%=iif(ViewData("StaRef")="1","selected","")%>><%=ViewData("olaFilterStaAll") %></option>
                                <option value="2" <%=iif(ViewData("StaRef")="2","selected","")%>><%=ViewData("olaFilterStaYes")%></option>
                                <option value="3" <%=iif(ViewData("StaRef")="3","selected","")%>><%=ViewData("olaFilterStaNo")%></option>
                            </select>
                            
                        </td>
                    </tr>
                    <tr>
                        <td><%=ViewData("olaCapCon_Active")%></td>
                        <td>
                            <input type="hidden" id="otbActField" value='<%=ViewData("oActField")%>' />
                            <select id="ocbActValue" <%=iif(ViewData("bC_EnableActive")=false,"disabled","")%> style = "font:Tahoma, Geneva, sans-serif; font-size:11px; width:80px">
                                <option value="1" <%=iif(ViewData("StaActive")="1","selected","")%>><%=ViewData("olaFilterStaAll") %></option>
                                <option value="2" <%=iif(ViewData("StaActive")="2","selected","")%>><%=ViewData("olaFilterStaYes")%></option>
                                <option value="3" <%=iif(ViewData("StaActive")="3","selected","")%>><%=ViewData("olaFilterStaNo")%></option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><%=ViewData("olaCapCon_Cancel")%></td>
                        <td>
                            <input type="hidden" id="otbCalField" value='<%=ViewData("oCalField")%>' />
                            <select id="ocbCalValue" <%=iif(ViewData("bC_EnableCancel")=false,"disabled","")%> style = "font:Tahoma, Geneva, sans-serif; font-size:11px; width:80px">
                                <option value="1" <%=iif(ViewData("StaCancel")="1","selected","")%>><%=ViewData("olaFilterStaAll") %></option>
                                <option value="2" <%=iif(ViewData("StaCancel")="2","selected","")%>><%=ViewData("olaFilterStaYes")%></option>
                                <option value="3" <%=iif(ViewData("StaCancel")="3","selected","")%>><%=ViewData("olaFilterStaNo")%></option>
                            </select>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="left" valign="bottom">
                <li><%=ViewData("olaDetail")%></li>
            </td>
            <td align="right" valign="middle">
                <%=ViewData("olaCapCon_Dept")%>&nbsp;&nbsp;
                <input type="hidden" id="otbDeptField" value='<%=ViewData("oDeptValue")%>' />
                <input type="hidden" id="otbOldRefCode" name="otbOldRefCode" value="" />
                <input type="text" id="otbDeptValue" style="max-width:50px" maxlength="5"  onkeydown="return otbDeptValue_onkeydown(event.keyCode,event.which)" onfocus="return otbDeptValue_onfocus()" onblur="return otbDeptValue_onblur()" onkeypress="return otbDeptValue_onkeypress(event.keyCode,event.which)" />
                <input type="button" value='<%=ViewData("olaSelect") %>' onclick="W_DATxBrowseMaster('otbDeptValue', 'olaDeptName','TCNMDepart');" />&nbsp;&nbsp;&nbsp;
            </td>
            <td align="left" valign="middle">
                <label id="olaDeptName"><%=ViewData("olaCapCon_DeptAll")%></label>
            </td>
        </tr>
        <tr style="height:100px">
            <td colspan="3" id="ofaShowDT" valign="top">
<div style="width:799px">
<%  
    Dim nCountFieldDT As Integer
    Dim nWidthDT(9) As Integer
    Dim tCaptionDT(9) As String
    Dim tFieldDT(9) As String
    Dim nCountDT As Integer

    For Each item In ViewData("BrowseFieldDT")
        nCountFieldDT = nCountFieldDT + 1
        tFieldDT(nCountFieldDT - 1) = item
    Next
    nCountDT = 0
    For Each item In ViewData("WidthFieldDT")
        nWidthDT(nCountDT) = CInt(item * 770 / 100)
        nCountDT += 1
    Next
    nCountDT = 0
    For Each item In ViewData("CaptionDT")
        tCaptionDT(nCountDT) = item
        nCountDT += 1
    Next
    
    
    Dim oDataDT As IEnumerable(Of Models.cmlCNBrowseMaster) = ViewData("DataDT")
    Dim gridBuilderDT = Html.Telerik().Grid(oDataDT).HtmlAttributes(New With {.style = "width:799;table-layout: fixed;white-space:nowrap; font:Tahoma, Geneva, sans-serif; font-size:11px"})
    gridBuilderDT.Name("GridDT")
    gridBuilderDT.Pageable(Function(page) page.PageSize(10))
    If 1 <= nCountFieldDT Then
        gridBuilderDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField01).Title(tCaptionDT(0)).Width(nWidthDT(0)) _
                                  .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                  .HtmlAttributes(New With {.style = aTextAlignDT(0)}))
    End If
    If 2 <= nCountFieldDT Then
        gridBuilderDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField02).Title(tCaptionDT(1)).Width(nWidthDT(1)) _
                                  .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                  .HtmlAttributes(New With {.style = aTextAlignDT(1)}))
    End If
    If 3 <= nCountFieldDT Then
        gridBuilderDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField03).Title(tCaptionDT(2)).Width(nWidthDT(2)) _
                                  .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                  .HtmlAttributes(New With {.style = aTextAlignDT(2)}))
    End If
    If 4 <= nCountFieldDT Then
        gridBuilderDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField04).Title(tCaptionDT(3)).Width(nWidthDT(3)) _
                                  .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                  .HtmlAttributes(New With {.style = aTextAlignDT(3)}))
    End If
    If 5 <= nCountFieldDT Then
        gridBuilderDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField05).Title(tCaptionDT(4)).Width(nWidthDT(4)) _
                                  .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                  .HtmlAttributes(New With {.style = aTextAlignDT(4)}))
    End If
    If 6 <= nCountFieldDT Then
        gridBuilderDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField06).Title(tCaptionDT(5)).Width(nWidthDT(5)) _
                                  .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                  .HtmlAttributes(New With {.style = aTextAlignDT(5)}))
    End If
    If 7 <= nCountFieldDT Then
        gridBuilderDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField07).Title(tCaptionDT(6)).Width(nWidthDT(6)) _
                                  .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                  .HtmlAttributes(New With {.style = aTextAlignDT(6)}))
    End If
    If 8 <= nCountFieldDT Then
        gridBuilderDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField08).Title(tCaptionDT(7)).Width(nWidthDT(7)) _
                                  .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                  .HtmlAttributes(New With {.style = aTextAlignDT(7)}))
    End If
    If 9 <= nCountFieldDT Then
        gridBuilderDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField09).Title(tCaptionDT(8)).Width(nWidthDT(8)) _
                                  .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                  .HtmlAttributes(New With {.style = aTextAlignDT(8)}))
    End If
    If 10 <= nCountFieldDT Then
        gridBuilderDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField10).Title(tCaptionDT(9)).Width(nWidthDT(9)) _
                                  .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                  .HtmlAttributes(New With {.style = aTextAlignDT(9)}))
    End If
            
    gridBuilderDT.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
      .Select("_SelectionClientSideRef_DT", tController)))
              
    gridBuilderDT.DataKeys(Function(keys) (keys.Add(Function(c) c.FTField01)))
    gridBuilderDT.Scrollable(Function(o) o.Height(100))
    gridBuilderDT.Footer(True)
    gridBuilderDT.Resizable(Function(o) o.Columns(True))
    gridBuilderDT.Sortable()
    gridBuilderDT.Render()

%>
</div>           

            </td>

        </tr>
        <tr>
            <td colspan="3" align="right">
                <input type="button" value='<%=ViewData("olaRefresh") %>' onclick="W_DATxRefresh();" />
                <input type="button" value='<%=ViewData("olaOK") %>' onclick="{nStatus = 1;window.close();}"/>
                <input type="button" value='<%=ViewData("olaCancel") %>' onclick = "{window.close();GetPassedValue('12233344445555566666677777778888888899999999900000000001223334444555556666667777777888888889999999990000000000') }"/>
            </td>

        </tr>
    </table>
    <script type="text/javascript">
        var nOnclick=0;
        function grid_onLoad() {
            $('tr', this).live('dblclick', function(e) {
                var $tr = $(this);
                //alert('double click ' + $tr.text());
                //document.getElementById("DBValue").value = $tr.text();
                nStatus = 1;
                window.close();
              })
            $('#GridHD tr:has(td) td', this.element).bind('click', function(e) {
                //if(nOnclick==1){
                    var td = this;
                    var oFieldName = document.getElementById('otbFilterField');
                    var columnName = $('#GridHD th').eq(td.cellIndex).text();
                    document.getElementById('olaFilterBy').innerHTML = columnName;
                    
                    switch(columnName){
                        //<%For nI = 0 To 9 %>
                            case '<%=tCaption(nI)%>':oFieldName.value = '<%=tField(nI)%>';break;
                        //<%Next %>
                    }
                    
                //}
                nOnclick=0;
            })
        }
        
        function onRowSelected(e) {
//        alert ("onRowSelected + Index");
            nOnclick=1;
            var ordersGrid = $('#GridDT').data('tGrid');
            var tKeyString = '';
            var nCount=0;
            var tReturn = '12233344445555566666677777778888888899999999900000000001223334444555556666667777777888888889999999990000000000';
            //<%For Each item In ViewData("PK")%>
                tKeyString = tKeyString  + e.row.cells[<%=item%>].innerHTML+ ',';
                nCount=nCount+1;
                if (nCount==<%=ViewData("ptDocPosition")%>) {
                    tReturn=e.row.cells[<%=item%>].innerHTML;
                }
            //<%Next%>
            if (tKeyString.length > 0 ){
                tKeyString = tKeyString.substring(0,tKeyString.length-1);
            }
            
            GetPassedValue(tReturn);
            // update ui text
//            $('#ofaShowHD').text(customerID);
            var tDate = W_GETtTimestamp();
            // rebind the related grid
            ordersGrid.rebind({
            ptDate:tDate,ptKeyString: encodeURI(tKeyString)
            });
        }
        
        //*CH 01-12-11 Window.Onload เพื่อแสดงค่าเริ่มต้นการค้นหาเอกสาร โปรโมชั่น
        window.onload = window_onload;
        function window_onload() {
            if (window.chrome){
            //ตั้งค่าขนาดหน้าจอใหม่ สำหรับ Chrome
                window.resizeTo(820,545);
            }
            //document.getElementById("olaFilterBy").innerHTML = '<%=ViewData("Caption")(0)%>';
        }
        function window_onunload() {
            if (nStatus == 0){
                GetPassedValue('12233344445555566666677777778888888899999999900000000001223334444555556666667777777888888889999999990000000000') ;
            }
        }

function otbDeptValue_onkeydown(ptKeyCode,ptWhich) {
    var tKey = ptKeyCode ;
    if (ptWhich != null && ptWhich != ''){
        tKey = ptWhich;
    }
    if (tKey == 13){
        W_GETxFieldName('cvcCNBrwDoc', 'C_GETtFeildName', 'otbDeptValue', 'olaDeptName', 'otbOldRefCode', 'TCNMDepart', 'FTDptCode', 'FTDptName');
    }
    return !(tKey == 13)
}

function otbDeptValue_onfocus() {
    document.getElementById('otbOldRefCode').value = document.getElementById('otbOldRefCode').value;
}

function otbDeptValue_onblur() {
    if (document.getElementById('otbOldRefCode').value == document.getElementById('otbOldRefCode').value){
       return false;
    }
    W_GETxFieldName('cvcCNBrwDoc', 'C_GETtFeildName', 'otbDeptValue', 'olaDeptName', 'otbOldRefCode', 'TCNMDepart', 'FTDptCode', 'FTDptName');
}

function W_GETxFieldName(ptController,ptAction,ptObjCodeId,ptObjNameId,ptObjCodeOldId,ptTblName,ptFieldCode,ptFieldName,ptMsgNoData,ptJoinCon){
    try
    {	
		var tCode = $("#" + ptObjCodeId).val()
		tCode = J002_STRttrim(tCode);
		if (tCode == null || tCode==""){
			$("#" + ptObjCodeId).val("");
			$("#" + ptObjNameId).val("");
			return false;
		}
		var oXmlHttp = J002_GEToXMLHttpRequest();
		var tDataTimeNow =J002_GETtTimeStamp();
		var tWhere = $("#" + ptObjCodeId).val();
		var tJoinCon = ptJoinCon;
		if (tJoinCon != null && tJoinCon != "") {
		    tWhere += tJoinCon;
		}
		//alert(tWhere);
		var tUrl ='';
		if ('<%=ViewData("VirtualDirectory") %>'!=null && '<%=ViewData("VirtualDirectory") %>'!=''){
		    tUrl += '/' + '<%=ViewData("VirtualDirectory") %>';
		}
		tUrl += "/" + ptController + "/"+ ptAction +"?ptTblName=" + ptTblName + "&ptFieldCode=" + ptFieldCode + "&ptFieldName=" + ptFieldName + "&ptWhere=" + tWhere + "&ptDateTimeNow=" + tDataTimeNow;
		oXmlHttp.open("GET",encodeURI(tUrl), false );
		oXmlHttp.send(null);
		var valueFis = oXmlHttp.responseText;
		if (valueFis == null){
			return false;
		}
		var mytool_array = valueFis.split("|");
		if (mytool_array[0]!=null && mytool_array[0]!=""){
			alert(ptAction + ' : ' + mytool_array[0]);
		}
		if (mytool_array.length > 1){
			if (ptObjCodeOldId != null && ptObjCodeOldId != "" ){
			    if (mytool_array[1] == String.fromCharCode(29)) {
			        $("#" + ptObjCodeId).val($("#" + ptObjCodeOldId).val());
			        if (ptMsgNoData != null && ptMsgNoData != ""){
						alert(ptMsgNoData);
			        }
			        return false;
				}
			}
			document.getElementById(ptObjNameId).innerHTML = mytool_array[1];
			$("#" + ptObjCodeOldId).val($("#" + ptObjCodeId).val());
			return true;
		}
    }
    catch(ex)
    {	J002_SHWxMsgError("J002_GETxFieldName",ex);
    }
}


function otbFilterValue_onkeydown(ptKeyCode,ptWhich) {
    var tKey = ptKeyCode ;
    if (ptWhich != null && ptWhich != ''){
        tKey = ptWhich;
    }
    if (tKey == 13){
        W_DATxRefresh();
    }
    return !(tKey == 13)
}

function otbFilterValue_onkeypress(ptKeyCode,ptWhich) {
    return J002_CHKbCheckTxtKey(ptKeyCode,ptWhich);
}

function otbDeptValue_onkeypress(ptKeyCode,ptWhich) {
    return J002_CHKbCheckTxtKey(ptKeyCode,ptWhich);
}

    </script>
    
    <%  
        Html.Telerik().ScriptRegistrar() _
            .DefaultGroup(Function(group) group.Add("telerik.examples.js") _
            .Compress(True)) _
            .OnDocumentReady("prettyPrint") _
            .Render()
        %>  
</body>
</html>