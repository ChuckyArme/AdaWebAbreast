<%@ Page Language="VB" Inherits="System.Web.Mvc.ViewPage" %>
<%@ Import Namespace="AdaWebPos" %>
<%@ Import Namespace="Adasoft.WebPos" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title><%=ViewData("olaTitle")%></title>
    <script type="text/javascript">
        var nStatus = 0;
    </script>
    <%=Html.Telerik().StyleSheetRegistrar().DefaultGroup(Function(group) group.Add("Site.css")).DefaultGroup(Function(group) _
                                                                          group.Add("telerik.common.css")).DefaultGroup(Function(group) group.Add("telerik.Telerik.css"))%>
    <script src="/Scripts/MicrosoftAjax.js" type="text/javascript"></script>
    <script src="/Scripts/MicrosoftMvcAjax.js" type="text/javascript"></script>
    <script type="text/javascript">
    <!--
        window.onbeforeunload = W_SETxOnUnload;
        function W_SETxOnUnload() {
            if (nStatus == 0) {
                GetPassedValue('12233344445555566666677777778888888899999999900000000001223334444555556666667777777888888889999999990000000000')
            }
        }
    -->
    </script>
    <script type="text/javascript">
        var tReturnHD = '12233344445555566666677777778888888899999999900000000001223334444555556666667777777888888889999999990000000000';
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
                tParamV = tParamV + ',' + oFilValue.value;
            }

            var tDate = W_GETtTimestamp();
            var ogdHD = $('#GridHD').data('tGrid');
            ogdHD.rebind({
                ptCase: '<%=ViewData("Case")%>', ptDate: tDate, ptFilterF: encodeURI(tParamF), ptFilterV: encodeURI(tParamV)
            });
        }

        function W_SETxOldRefCode(pobjOldTextCode, pobjTextCode) {
            pobjOldTextCode.value = pobjTextCode.value;
        }

        function OpenModalDialogRefCode(pobjOldTextCode, pobjTextCode, pobjTextName, pBrowseFile, ptWidth, ptHeight, ptParameter, ptDate) {
            var tDate = W_GETtTimestamp();
            try {
                if (pobjOldTextCode.value != pobjTextCode.value) {
                    if (ptParameter != "") {
                        var ReturnedValue = showModalDialog(pBrowseFile + ptParameter + "&ptRefCode=" + pobjTextCode.value + "&ptDate=" + tDate, "Passing Data", "dialogWidth:" + '250' + "px; dialogHeight:" + '100' + "px; status:no; center:yes;titlebar =0");
                    } else {
                        var ReturnedValue = showModalDialog(pBrowseFile + "?ptRefCode=" + pobjTextCode.value + "&ptDate=" + tDate, "Passing Data", "dialogWidth:" + '250' + "px; dialogHeight:" + '100' + "px; status:no; center:yes;titlebar =0");
                    }
                    if (ReturnedValue != undefined) {
                        if (ReturnedValue != 'O l d adasoft') {
                            pobjTextName.innerHTML = ReturnedValue;

                        }
                        else {
                            pobjTextCode.value = pobjOldTextCode.value;
                        }
                    }
                    else {
                        pobjTextCode.value = pobjOldTextCode.value;
                    }
                }
            }
            catch (ex) {
                if (ptParameter != "") {
                    var ReturnedValue = showModalDialog(pBrowseFile + ptParameter + "&ptRefCode=" + pobjTextCode.value + "&ptDate=" + tDate, "Passing Data", "dialogWidth:" + ptWidth + "px; dialogHeight:" + ptHeight + "px; status:no; center:yes;titlebar =0");
                } else {
                    var ReturnedValue = showModalDialog(pBrowseFile + "?ptRefCode=" + pobjTextCode.value + "&ptDate=" + tDate, "Passing Data", "dialogWidth:" + ptWidth + "px; dialogHeight:" + ptHeight + "px; status:no; center:yes;titlebar =0");
                }
                if (ReturnedValue != undefined) {
                    if (ReturnedValue != 'O l d adasoft') {
                        pobjTextName.innerHTML = ReturnedValue;
                    }
                    else {
                        pobjTextCode.value = pobjOldTextCode.value;
                    }
                }
                else {
                    pobjTextCode.value = pobjOldTextCode.value;
                }
            }
        }

        function OpenMasterDialog(pnNoRender, pobjTextCode, pobjTextName, pBrowseFile, ptWidth, ptHeight, ptParameter, ptDate, pobjTextName2, pobjTextName3, pobjTextName4) {
            var tDate = W_GETtTimestamp();
            switch (pnNoRender) {
                case 0:
                    if (ptParameter != "") {
                        var ReturnedValue = showModalDialog(pBrowseFile + ptParameter + '&ptDate=' + tDate, "Passed String", "dialogWidth:" + ptWidth + "px; dialogHeight:" + ptHeight + "px; status:no; center:yes;titlebar =0");
                    } else {
                        var ReturnedValue = showModalDialog(pBrowseFile + '?ptDate=' + tDate, "Passed String", "dialogWidth:" + ptWidth + "px; dialogHeight:" + ptHeight + "px; status:no; center:yes;titlebar =0");
                    }
                    // alert(ReturnedValue);
                    if (ReturnedValue != undefined) {
                        if (ReturnedValue != 'adasoft') {
                            var mytool_array = ReturnedValue.split(";");
                            if (mytool_array.length == 1) {
                                pobjTextName.innerHTML = mytool_array;
                            } else {
                                //   pobjTextName.value = mytool_array[1];
                                pobjTextCode.value = mytool_array[0];


                            }
                        }
                    }
                    break;
                case 1:
                    if (ptParameter != "") {
                        var ReturnedValue = showModalDialog(pBrowseFile + ptParameter + '&ptDate=' + tDate, "Passed String", "dialogWidth:" + ptWidth + "px; dialogHeight:" + ptHeight + "px; status:no; center:yes;titlebar =0");
                    } else {
                        var ReturnedValue = showModalDialog(pBrowseFile + '?ptDate=' + tDate, "Passed String", "dialogWidth:" + ptWidth + "px; dialogHeight:" + ptHeight + "px; status:no; center:yes;titlebar =0");
                    }
                    //alert(ReturnedValue);
                    if (ReturnedValue != undefined) {
                        if (ReturnedValue != 'adasoft') {
                            var mytool_array = ReturnedValue.split(";");
                            if (mytool_array.length == 1) {
                                pobjTextName.innerHTML = mytool_array;
                            } else {

                                pobjTextCode.value = mytool_array[0];
                                pobjTextName.innerHTML = mytool_array[1];

                            }
                        }
                    }
                    break;
                case 2:
                    if (ptParameter != "") {
                        var ReturnedValue = showModalDialog(pBrowseFile + ptParameter + '&ptDate=' + tDate, "Passed String", "dialogWidth:" + ptWidth + "px; dialogHeight:" + ptHeight + "px; status:no; center:yes;titlebar =0");
                    } else {
                        var ReturnedValue = showModalDialog(pBrowseFile + '?ptDate=' + tDate, "Passed String", "dialogWidth:" + ptWidth + "px; dialogHeight:" + ptHeight + "px; status:no; center:yes;titlebar =0");
                    }

                    if (ReturnedValue != undefined) {
                        if (ReturnedValue != 'adasoft') {
                            var mytool_array = ReturnedValue.split(";");
                            for (i = 0; i < mytool_array.length; i++) {
                                switch (i) {
                                    case 0: pobjTextCode.value = mytool_array[0]; break;
                                    case 1: pobjTextName.innerHTML = mytool_array[1]; break;
                                    case 2: pobjTextName2.innerHTML = mytool_array[2]; break;
                                }
                            }
                        }
                    }
                    break;
                case 3:
                    if (ptParameter != "") {
                        var ReturnedValue = showModalDialog(pBrowseFile + ptParameter + '&ptDate=' + tDate, "Passed String", "dialogWidth:" + ptWidth + "px; dialogHeight:" + ptHeight + "px; status:no; center:yes;titlebar =0");
                    } else {
                        var ReturnedValue = showModalDialog(pBrowseFile + '?ptDate=' + tDate, "Passed String", "dialogWidth:" + ptWidth + "px; dialogHeight:" + ptHeight + "px; status:no; center:yes;titlebar =0");
                    }

                    if (ReturnedValue != undefined) {
                        if (ReturnedValue != 'adasoft') {
                            var mytool_array = ReturnedValue.split(";");
                            for (i = 0; i < mytool_array.length; i++) {
                                switch (i) {
                                    case 0: pobjTextCode.value = mytool_array[0]; break;
                                    case 1: pobjTextName.innerHTML = mytool_array[1]; break;
                                    case 2: pobjTextName2.innerHTML = mytool_array[2]; break;
                                    case 3: pobjTextName3.innerHTML = mytool_array[3]; break;
                                }
                            }
                        }
                    }
                    break;

                case 4:
                    if (ptParameter != "") {
                        var ReturnedValue = showModalDialog(pBrowseFile + ptParameter + '&ptDate=' + tDate, "Passed String", "dialogWidth:" + ptWidth + "px; dialogHeight:" + ptHeight + "px; status:no; center:yes;titlebar =0");
                    } else {
                        var ReturnedValue = showModalDialog(pBrowseFile + '?ptDate=' + tDate, "Passed String", "dialogWidth:" + ptWidth + "px; dialogHeight:" + ptHeight + "px; status:no; center:yes;titlebar =0");
                    }
                    if (ReturnedValue != undefined) {
                        if (ReturnedValue != 'adasoft') {
                            var mytool_array = ReturnedValue.split(";");
                            for (i = 0; i < mytool_array.length; i++) {
                                switch (i) {
                                    case 0: pobjTextCode.value = mytool_array[0]; break;
                                    case 1: pobjTextName.innerHTML = mytool_array[1]; break;
                                    case 2: pobjTextName2.innerHTML = mytool_array[2]; break;
                                    case 3: pobjTextName3.innerHTML = mytool_array[3]; break;
                                    case 4: pobjTextName4.innerHTML = mytool_array[4]; break;
                                }
                            }
                        }
                    }
                    break;

                case 5:
                    if (ptParameter != "") {
                        var ReturnedValue = showModalDialog(pBrowseFile + ptParameter + '&ptDate=' + tDate, "Passed String", "dialogWidth:" + ptWidth + "px; dialogHeight:" + ptHeight + "px; status:no; center:yes;titlebar =0");
                    } else {
                        var ReturnedValue = showModalDialog(pBrowseFile + '?ptDate=' + tDate, "Passed String", "dialogWidth:" + ptWidth + "px; dialogHeight:" + ptHeight + "px; status:no; center:yes;titlebar =0");
                    }
                    if (ReturnedValue != undefined) {
                        if (ReturnedValue != 'adasoft') {
                            var mytool_array = ReturnedValue.split(";");
                            for (i = 0; i < mytool_array.length; i++) {
                                switch (i) {
                                    case 0: pobjTextCode.value = mytool_array[1]; break;
                                    case 1: pobjTextName.value = mytool_array[2]; break;
                                    case 2: pobjTextName2.value = mytool_array[3]; break;

                                }
                            }
                        }
                    }
                    break;
            }
        }


        function GetPassedValue(a) {
            tReturnHD = a;
            returnValue = a;
        }
        function GetPassedValueDT(a) {
            if (a != '') {
                var aTestData = tReturnHD.split(';');
                if (tReturnHD != '12233344445555566666677777778888888899999999900000000001223334444555556666667777777888888889999999990000000000') {
                    if (aTestData.length > 0) {
                        if (aTestData.length > 1) {
                            tReturnHD = aTestData[0];
                        }
                        returnValue = tReturnHD + ';' + a;
                    }
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
<body>
    <img alt="" id="oimSessionAlive" width="1" height="1" src="" style="display:none;"/>
    <table style="text-align:center; width:100%" border="0" cellpadding="0" cellspacing="0" >
        <tr>
            <td align="left" valign="bottom"width="400px">
                <div><%=ViewData("olaHeader")%></div>
            </td>
            <td align="right" valign="middle"width="200px">
                <label id="olaFilterLabel"><%=ViewData("olaFilterBy")%></label>&nbsp;&nbsp;&nbsp;
            </td>
            
            <td align="left" valign="middle" width="200px">
                <input type="hidden" id="otbFilterField" />
                <input type="text" style="max-width:100px" id="otbFilterValue" />
                
            </td>
        </tr>
        <tr style="height:160px">
            <td colspan="2" id="ofaShowHD" valign="top">
            
<%
    Dim nFieldCountHD As Integer
    Dim nWidth(9) As Integer
    Dim tCaption(9) As String
    Dim tField(9) As String
    Dim nCount As Integer
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

    Dim tController As String = ViewData("CtrlName")
    Dim oView = CType(ViewData("DataHD"), IEnumerable(Of Models.cmlCNBrowseMaster))
    Dim oData As IEnumerable(Of Models.cmlCNBrowseMaster)
    oData = oView
    'oData = From it In Models.cmlCNBrowseMaster(ViewData("DataHD")) Select it
    Dim gridBuilder = Html.Telerik().Grid(oData).HtmlAttributes(New With {.style = "table-layout: fixed;white-space:nowrap; font:Tahoma, Geneva, sans-serif; font-size:11px"})
    gridBuilder.Name("GridHD")
    gridBuilder.Pageable(Function(page) page.PageSize(10))
    If 1 <= nFieldCountHD Then
        gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField01).Title(tCaption(0)).Width(nWidth(0)) _
                                .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                .HtmlAttributes(New With {.style = "text-align:center"}))
    End If
    If 2 <= nFieldCountHD Then
        gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField02).Title(tCaption(1)).Width(nWidth(1)) _
                                .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                .HtmlAttributes(New With {.style = "text-align:left"}))
    End If
    If 3 <= nFieldCountHD Then
        gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField03).Title(tCaption(2)).Width(nWidth(2)) _
                                .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                .HtmlAttributes(New With {.style = "text-align:center"}).Format("{0:MM/dd/yyyy}"))
    End If
    If 4 <= nFieldCountHD Then
        gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField04).Title(tCaption(3)).Width(nWidth(3)) _
                                .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                .HtmlAttributes(New With {.style = "text-align:left"}))
    End If
    If 5 <= nFieldCountHD Then
        gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField05).Title(tCaption(4)).Width(nWidth(4)) _
                                .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                .HtmlAttributes(New With {.style = "text-align:left"}))
    End If
    If 6 <= nFieldCountHD Then
        gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField06).Title(tCaption(5)).Width(nWidth(5)) _
                                .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                .HtmlAttributes(New With {.style = "text-align:center"}))
    End If
    If 7 <= nFieldCountHD Then
        gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField07).Title(tCaption(6)).Width(nWidth(6)) _
                                .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                .HtmlAttributes(New With {.style = "text-align:right"}))
    End If
    If 8 <= nFieldCountHD Then
        gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField08).Title(tCaption(7)).Width(nWidth(7)) _
                                .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                .HtmlAttributes(New With {.style = "text-align:center"}))
    End If
    If 9 <= nFieldCountHD Then
        gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField09).Title(tCaption(8)).Width(nWidth(8)) _
                                .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                .HtmlAttributes(New With {.style = "text-align:center"}))
    End If
    If 10 <= nFieldCountHD Then
        gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField10).Title(tCaption(9)).Width(nWidth(9)) _
                                .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                .HtmlAttributes(New With {.style = "text-align:center"}))
    End If
            
    gridBuilder.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
      .Select("_SelectionClientSideRef_HD", tController)))
              
    gridBuilder.DataKeys(Function(keys) (keys.Add(Function(c) c.FTField01)))
    gridBuilder.Selectable()
    gridBuilder.Scrollable(Function(o) o.Height(200))
    gridBuilder.ClientEvents(Function(Events) Events.OnRowSelect("onRowSelected"))
    gridBuilder.ClientEvents(Function(Events) Events.OnLoad("grid_onLoad"))
    gridBuilder.Render()
    
%>
                
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
                            <select id="ocbApprValue" style = "font:Tahoma, Geneva, sans-serif; font-size:11px; width:80px">
                                <option value="1" <%=iif(ViewData("StaAppr")="1","selected","false")%> ><%=ViewData("olaFilterStaAll") %></option>
                                <option value="2" <%=iif(ViewData("StaAppr")="2","selected","")%> ><%=ViewData("olaFilterStaYes")%></option>
                                <option value="3" <%=iif(ViewData("StaAppr")="3","selected","")%> ><%=ViewData("olaFilterStaNo")%></option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><%=ViewData("olaCapCon_Reference")%></td>
                        <td>
                            <input type="hidden" id="otbRefField" value='<%=ViewData("oRefField")%>'/>
                            <select id="ocbRefValue" style = "font:Tahoma, Geneva, sans-serif; font-size:11px; width:80px">
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
                            <select id="ocbActValue" style = "font:Tahoma, Geneva, sans-serif; font-size:11px; width:80px">
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
                            <select id="ocbCalValue" style = "font:Tahoma, Geneva, sans-serif; font-size:11px; width:80px">
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
                <div><%=ViewData("olaDetail")%></div>
            </td>
            <td align="right" valign="middle">
                <%=ViewData("olaCapCon_Dept")%>&nbsp;&nbsp;
                <input type="hidden" id="otbDeptField" value='<%=ViewData("oDeptValue")%>' />
                <input type="hidden" id="otbOldRefCode" name="otbOldRefCode" value="" />
                <input type="text" id="otbDeptValue" style="max-width:50px" maxlength="5" onfocus = "W_SETxOldRefCode(document.getElementById('otbOldRefCode'),document.getElementById('otbDeptValue'))" onblur = "OpenModalDialogRefCode(document.getElementById('otbOldRefCode'),document.getElementById('otbDeptValue'), document.getElementById('olaDeptName'), 'C_GETRefName', '50', '50','?ptBrwName=DptCode','')"   />
                <input type="button" value='<%=ViewData("olaSelect") %>' onclick="OpenMasterDialog(1,document.getElementById('otbDeptValue'), document.getElementById('olaDeptName'),'C_BrowseMaster', '600', '600','?ptCase=DptCode','')" />&nbsp;&nbsp;&nbsp;
            </td>
            <td align="left" valign="middle">
                <label id="olaDeptName"><%=ViewData("olaCapCon_DeptAll")%></label>
            </td>
        </tr>
        <tr style="height:100px">
            <td colspan="3" id="ofaShowDT" valign="top">
            
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
    Dim gridBuilderDT = Html.Telerik().Grid(oDataDT).HtmlAttributes(New With {.style = "table-layout: fixed;white-space:nowrap; font:Tahoma, Geneva, sans-serif; font-size:11px"})
    gridBuilderDT.Name("GridDT")
    gridBuilderDT.Pageable(Function(page) page.PageSize(10))
    If 1 <= nCountFieldDT Then
        gridBuilderDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField01).Title(tCaptionDT(0)).Width(nWidthDT(0)) _
                                  .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                  .HtmlAttributes(New With {.style = "text-align:center"}) _
                                  .ClientTemplate("<input type='checkbox' name='checkedRecords'/>"))
    End If
    If 2 <= nCountFieldDT Then
        gridBuilderDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField02).Title(tCaptionDT(1)).Width(nWidthDT(1)) _
                                  .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                  .HtmlAttributes(New With {.style = "text-align:left"}))
    End If
    If 3 <= nCountFieldDT Then
        gridBuilderDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField03).Title(tCaptionDT(2)).Width(nWidthDT(2)) _
                                  .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                  .HtmlAttributes(New With {.style = "text-align:left"}))
    End If
    If 4 <= nCountFieldDT Then
        gridBuilderDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField04).Title(tCaptionDT(3)).Width(nWidthDT(3)) _
                                  .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                  .HtmlAttributes(New With {.style = "text-align:center"}))
    End If
    If 5 <= nCountFieldDT Then
        gridBuilderDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField05).Title(tCaptionDT(4)).Width(nWidthDT(4)) _
                                  .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                  .HtmlAttributes(New With {.style = "text-align:right"}))
    End If
    If 6 <= nCountFieldDT Then
        gridBuilderDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField06).Title(tCaptionDT(5)).Width(nWidthDT(5)) _
                                  .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                  .HtmlAttributes(New With {.style = "text-align:right"}))
    End If
    If 7 <= nCountFieldDT Then
        gridBuilderDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField07).Title(tCaptionDT(6)).Width(nWidthDT(6)) _
                                  .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                  .HtmlAttributes(New With {.style = "text-align:right"}))
    End If
    If 8 <= nCountFieldDT Then
        gridBuilderDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField08).Title(tCaptionDT(7)).Width(nWidthDT(7)) _
                                  .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                  .HtmlAttributes(New With {.style = "text-align:right"}))
    End If
    If 9 <= nCountFieldDT Then
        gridBuilderDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField09).Title(tCaptionDT(8)).Width(nWidthDT(8)) _
                                  .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                  .HtmlAttributes(New With {.style = "text-align:left"}))
    End If
    If 10 <= nCountFieldDT Then
        gridBuilderDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField10).Title(tCaptionDT(9)).Width(nWidthDT(9)) _
                                  .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                  .HtmlAttributes(New With {.style = "text-align:left"}))
    End If
            
    gridBuilderDT.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
      .Select("_SelectionClientSideRef_DT", tController)))
    gridBuilderDT.DataKeys(Function(keys) (keys.Add(Function(c) c.FTField01)))
    gridBuilderDT.Scrollable(Function(o) o.Height(100))
    gridBuilderDT.Sortable()
    gridBuilderDT.Selectable()
    gridBuilderDT.ClientEvents(Function(Events) Events.OnLoad("W_SETxGridDTOnload"))
    'gridBuilderDT.ClientEvents(Function(Events) Events.OnRowSelect("ogdDT_onRowSelected"))
    gridBuilderDT.Render()

%>
           
            </td>

        </tr>
        <tr>
            <td colspan="3" align="right">
                <input type="button" value='<%=ViewData("olaRefresh") %>' onclick="W_DATxRefresh();" />
                <input type="button" value='<%=ViewData("olaOK") %>' onclick="{nStatus = 1;window.close();}"/>
                <input type="button" value="<%=ViewData("olaCancel") %>" onclick = "{window.close();GetPassedValue('12233344445555566666677777778888888899999999900000000001223334444555556666667777777888888889999999990000000000') }"/>
            </td>

        </tr>
    </table>
    <script type="text/javascript">
        var nOnclick=0;
        function grid_onLoad() {
            $('tr', this).live('dblclick', function(e) {
                var $tr = $(this);
                nStatus = 1;
                window.close();
              })
            $('tr:has(td) td', this.element).live('click', function(e) {
                if(nOnclick==1){
                    var td = this;
                    var oFieldName = document.getElementById('otbFilterField');
                    var columnName = $('#GridHD th').eq(td.cellIndex).text();
                    document.getElementById("olaFilterLabel").innerHTML = 'กรองข้อมูลตาม' + columnName;
                    switch(columnName){
                        <%For nI = 0 To 9 %>
                            case '<%=tCaption(nI)%>':oFieldName.value = '<%=tField(nI)%>';break;
                        <%Next %>
                    }
                    
                }
                nOnclick=0;
            })
        }
        function W_SETxGridDTOnload(){
            $('tr:has(td) td', this.element).live('click', ogdDT_onRowSelected);
        }
        function ogdDT_onRowSelected(e) {
            var oCheck = document.getElementsByName('checkedRecords');
            var tGetCheck="";
            for(i=0;i<oCheck.length;i++){
                if(oCheck.item(i).checked){
                    if(tGetCheck==''){
                        tGetCheck = ''+(i+1);
                    }else{
                        tGetCheck = tGetCheck + ';' + (i+1);
                    }
                }
            }
            
            GetPassedValueDT(tGetCheck);
        }
        
        function onRowSelected(e) {
            if(e.row.cells.length < 2){
                return false;
            }
            nOnclick=1;
            var ordersGrid = $('#GridDT').data('tGrid');
            var ptBchCodeAndDocNo = '';
            var nCount=0;
            var tReturn = '12233344445555566666677777778888888899999999900000000001223334444555556666667777777888888889999999990000000000';
            <%For Each item In ViewData("PK")%>
                ptBchCodeAndDocNo += e.row.cells['<%=item%>'].innerHTML + ',';
                nCount=nCount+1;
                if (nCount=='<%=ViewData("ptDocPosition")%>') {
                    tReturn=e.row.cells['<%=item%>'].innerHTML;
                }
            <%Next%>
            if (ptBchCodeAndDocNo.length > 0){
                ptBchCodeAndDocNo=ptBchCodeAndDocNo.substring(0,ptBchCodeAndDocNo.length-1);
            }
            GetPassedValue(tReturn);
            var tDate = W_GETtTimestamp();
            // rebind the related grid
            ordersGrid.rebind({
            ptDate:tDate,ptBchCodeAndDocNo:encodeURI(ptBchCodeAndDocNo)
            });
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
