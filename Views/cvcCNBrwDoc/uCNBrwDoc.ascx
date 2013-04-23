<%@ Control Language="VB" Inherits="System.Web.Mvc.ViewUserControl(Of Adasoft.WebPos.Models.cmlCNBrwDoc)" %>
<%@ Import Namespace="Adasoft.WebPos" %>
<%@ Import Namespace="System.Resources" %>
<%@ Import Namespace="AdaWebPos" %>

<table style="text-align:center; width:100%" border="0" cellpadding="0" cellspacing="0" >
    <tr>
        <td align="left" valign="bottom"width="400px">                    
            <li><%=ViewData("olaHeader")%></li>
        </td>
        <td align="right" valign="middle"width="200px">
            <label id="Label1"><%=ViewData("olaFilterBy")%></label>:
            <label id="olaFilterBy"></label>&nbsp;&nbsp;&nbsp;
        </td>
                    
        <td align="left" valign="middle" width="200px">
            <input type="hidden" id="otbFilterFieldDoc" />
            <input type="text" style="max-width:100px" id="otbFilterValueDoc"  
                    onkeydown="return otbFilterValueDoc_onkeydown(event.keyCode,event.which)" onkeypress="return otbFilterValueDoc_onkeypress(event.keyCode,event.which)" />        
        </td>
    </tr>
    <tr style="height:260px">
        <td colspan="2" id="Td1" valign="top">
        <%
        Dim nFieldCountDocHD As Integer
        Dim nWidthDocHD(11) As Integer
        Dim tCaptionDocHD(11) As String
        Dim tFieldDocHD(11) As String
        Dim aFormatHD(11) As String
        Dim nCountDocHD As Integer
        Dim aTextAlignHD(11) As String
        Dim aTextAlignDT(11) As String
        Dim oTemp As New List(Of String)
            Dim nCount As Integer = 0
            
        nFieldCountDocHD = 0
            For Each item In Model.BrwFieldHD 'ViewData("BrowseFieldDocHD")
                tFieldDocHD(nFieldCountDocHD) = item
                nFieldCountDocHD += 1
            Next
        nCount = 0
            For Each item In Model.BrwColSizeHD 'ViewData("WidthFieldDocHD")
                nWidthDocHD(nCountDocHD) = CInt(item * 600 / 100)
                nCountDocHD += 1
            Next
        nCountDocHD = 0
            For Each item In Model.BrwCaptionHD 'ViewData("CaptionDocHD")
                tCaptionDocHD(nCountDocHD) = item
                nCountDocHD += 1
            Next
        nCountDocHD = 0
            For Each item In Model.BrwFormatHD 'ViewData("FormatHD")
                aFormatHD(nCountDocHD) = item
                nCountDocHD += 1
            Next
        nCountDocHD = 0
            oTemp = Model.TextAlignHD 'ViewData("TextAlignHD")
        For i As Integer = 0 To 11
            If i >= oTemp.Count Then
                aTextAlignHD(nCountDocHD) = "text-align:left"
            Else
                aTextAlignHD(nCountDocHD) = "text-align:" & oTemp(i)
            End If
            nCountDocHD += 1
        Next
        nCountDocHD = 0
            oTemp = Model.TextAlignDT 'ViewData("TextAlignDT")
        For i As Integer = 0 To 11
            If i >= oTemp.Count Then
                aTextAlignDT(nCountDocHD) = "text-align:left"
            Else
                aTextAlignDT(nCountDocHD) = "text-align:" & oTemp(i)
            End If
            nCountDocHD += 1
        Next
            
        Dim tControllerDoc As String = ViewData("CtrlNameBrwDoc")
        Dim oViewDocHD = CType(ViewData("DataDocHD"), IEnumerable(Of Models.cmlCNBrowseMaster))
        Dim oDataDocHD As IEnumerable(Of Models.cmlCNBrowseMaster)
        oDataDocHD = oViewDocHD
        'oData = From it In Models.cmlCNBrowseMaster(ViewData("DataHD")) Select it
            Dim gridBuilderDocHD = Html.Telerik().Grid(oDataDocHD).HtmlAttributes(New With {.style = "width:618px;table-layout: fixed;white-space:nowrap; font:Tahoma, Geneva, sans-serif; font-size:11px"})
        gridBuilderDocHD.Name("GridDocHD")
            Dim oFieldIndex As List(Of Integer) = Model.FieldIndex 'ViewData("FieldIndex")
        gridBuilderDocHD.Pageable(Function(page) page.PageSize(10))
        For n As Integer = 0 To oFieldIndex.Count - 1
            Select Case oFieldIndex(n)
                Case 1
                        gridBuilderDocHD.Columns(Function(columns) columns.Bound(Function(o) o.FTField01) _
                                            .Title(tCaptionDocHD(n)).Width(nWidthDocHD(n)) _
                                            .Format(IIf(aFormatHD(n) = "", "", "{0:" & aFormatHD(n) & "}")) _
                                            .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                            .HtmlAttributes(New With {.style = aTextAlignDT(0)}))
                Case 2
                        gridBuilderDocHD.Columns(Function(columns) columns.Bound(Function(o) o.FTField02) _
                                                     .Title(tCaptionDocHD(n)).Width(nWidthDocHD(n)) _
                                                     .Format(IIf(aFormatHD(n) = "", "", "{0:" & aFormatHD(n) & "}")) _
                                            .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                            .HtmlAttributes(New With {.style = aTextAlignDT(1)}))
                Case 3
                        gridBuilderDocHD.Columns(Function(columns) columns.Bound(Function(o) o.FTField03) _
                                                     .Title(tCaptionDocHD(n)).Width(nWidthDocHD(n)) _
                                                     .Format(IIf(aFormatHD(n) = "", "", "{0:" & aFormatHD(n) & "}")) _
                                            .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                            .HtmlAttributes(New With {.style = aTextAlignDT(2)}))
                Case 4
                        gridBuilderDocHD.Columns(Function(columns) columns.Bound(Function(o) o.FTField04) _
                                                     .Title(tCaptionDocHD(n)).Width(nWidthDocHD(n)) _
                                                     .Format(IIf(aFormatHD(n) = "", "", "{0:" & aFormatHD(n) & "}")) _
                                            .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                            .HtmlAttributes(New With {.style = aTextAlignDT(3)}))
                Case 5
                        gridBuilderDocHD.Columns(Function(columns) columns.Bound(Function(o) o.FTField05) _
                                                     .Title(tCaptionDocHD(n)).Width(nWidthDocHD(n)) _
                                                     .Format(IIf(aFormatHD(n) = "", "", "{0:" & aFormatHD(n) & "}")) _
                                            .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                            .HtmlAttributes(New With {.style = aTextAlignDT(4)}))
                Case 6
                    If 6 <= nFieldCountDocHD Then
                            gridBuilderDocHD.Columns(Function(columns) columns.Bound(Function(o) o.FTField06) _
                                                         .Title(tCaptionDocHD(n)).Width(nWidthDocHD(n)) _
                                                         .Format(IIf(aFormatHD(n) = "", "", "{0:" & aFormatHD(n) & "}")) _
                                                .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                .HtmlAttributes(New With {.style = aTextAlignDT(5)}))
                    End If
                Case 7
                        gridBuilderDocHD.Columns(Function(columns) columns.Bound(Function(o) o.FTField07) _
                                                     .Title(tCaptionDocHD(n)).Width(nWidthDocHD(n)) _
                                                     .Format(IIf(aFormatHD(n) = "", "", "{0:" & aFormatHD(n) & "}")) _
                                            .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                            .HtmlAttributes(New With {.style = aTextAlignDT(6)}))
                Case 8
                        gridBuilderDocHD.Columns(Function(columns) columns.Bound(Function(o) o.FTField08) _
                                                     .Title(tCaptionDocHD(n)).Width(nWidthDocHD(n)) _
                                                     .Format(IIf(aFormatHD(n) = "", "", "{0:" & aFormatHD(n) & "}")) _
                                                .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                .HtmlAttributes(New With {.style = aTextAlignDT(7)}))
                Case 9
                        gridBuilderDocHD.Columns(Function(columns) columns.Bound(Function(o) o.FTField09) _
                                                     .Title(tCaptionDocHD(n)).Width(nWidthDocHD(n)) _
                                                     .Format(IIf(aFormatHD(n) = "", "", "{0:" & aFormatHD(n) & "}")) _
                                            .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                            .HtmlAttributes(New With {.style = aTextAlignDT(8)}))
                Case 10
                        gridBuilderDocHD.Columns(Function(columns) columns.Bound(Function(o) o.FTField10) _
                                                     .Title(tCaptionDocHD(n)).Width(nWidthDocHD(n)) _
                                                     .Format(IIf(aFormatHD(n) = "", "", "{0:" & aFormatHD(n) & "}")) _
                                            .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                            .HtmlAttributes(New With {.style = aTextAlignDT(9)}))
                Case 11
                        gridBuilderDocHD.Columns(Function(columns) columns.Bound(Function(o) o.FTField11) _
                                                     .Title(tCaptionDocHD(n)).Width(nWidthDocHD(n)) _
                                                     .Format(IIf(aFormatHD(n) = "", "", "{0:" & aFormatHD(n) & "}")) _
                                            .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                            .HtmlAttributes(New With {.style = aTextAlignDT(10)}))
                Case 12
                        gridBuilderDocHD.Columns(Function(columns) columns.Bound(Function(o) o.FTField12) _
                                                     .Title(tCaptionDocHD(n)).Width(nWidthDocHD(n)) _
                                                     .Format(IIf(aFormatHD(n) = "", "", "{0:" & aFormatHD(n) & "}")) _
                                                .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                .HtmlAttributes(New With {.style = aTextAlignDT(11)}))
                    Case 13
                        gridBuilderDocHD.Columns(Function(columns) columns.Bound(Function(o) o.FTStaPrcDoc).Width(62).Title(ViewData("olaCapCon_Approve")) _
                                                .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                .ClientTemplate("<input type='checkbox' disabled='disabled' name='FTStaPrcDoc' <#= FTStaPrcDoc == '1'? checked='checked' : '' #> />"))
                End Select
        Next
            gridBuilderDocHD.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                .Select("ogd_SelectionClientSide_HD", tControllerDoc, New With {.ptCase = Session("tVB_CNBrwDocCase")})))
        gridBuilderDocHD.DataKeys(Function(keys) (keys.Add(Function(c) c.FTField01)))
        gridBuilderDocHD.Selectable()
        gridBuilderDocHD.Footer(True)
        gridBuilderDocHD.Sortable()
        gridBuilderDocHD.Resizable(Function(o) o.Columns(True))
        gridBuilderDocHD.Scrollable(Function(o) o.Height(250))
        gridBuilderDocHD.ClientEvents(Function(Events) Events.OnRowSelect("onRowSelectedDocHD"))
        gridBuilderDocHD.ClientEvents(Function(Events) Events.OnLoad("gridDocHD_onLoad"))
            gridBuilderDocHD.ClientEvents(Function(Events) Events.OnDataBound("gridDocHD_onLoad"))
        gridBuilderDocHD.Render()
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
                        <input type="hidden" id="otbApprField" value='<%=Model.ApprField%>' />
                        <select id="ocbApprValue" <%=iif(ViewData("bC_EnableAppr")=false,"disabled","")%> style = "font:Tahoma, Geneva, sans-serif; font-size:11px; width:80px">
                            <option value="1" <%=iif(Model.SetAppr="1","selected","")%> ><%=ViewData("olaFilterStaAll") %></option>
                            <option value="2" <%=iif(Model.SetAppr="2","selected","")%> ><%=ViewData("olaFilterStaYes")%></option>
                            <option value="3" <%=iif(Model.SetAppr="3","selected","")%> ><%=ViewData("olaFilterStaNo")%></option>
                        </select>
                                    
                    </td>
                </tr>
                <tr>
                    <td><%=ViewData("olaCapCon_Reference") %></td>
                    <td>
                        <input type="hidden" id="otbRefField" value='<%=Model.RefField%>'/>
                        <select id="ocbRefValue" <%=iif(ViewData("bC_EnableRef")=false,"disabled","")%> style = "font:Tahoma, Geneva, sans-serif; font-size:11px; width:80px">
                            <option value="1" <%=iif(Model.SetRef="1","selected","")%>><%=ViewData("olaFilterStaAll") %></option>
                            <option value="2" <%=iif(Model.SetRef="2","selected","")%>><%=ViewData("olaFilterStaYes")%></option>
                            <option value="3" <%=iif(Model.SetRef="3","selected","")%>><%=ViewData("olaFilterStaNo")%></option>
                        </select>
                                    
                    </td>
                </tr>
                <tr>
                    <td><%=ViewData("olaCapCon_Active")%></td>
                    <td>
                        <input type="hidden" id="otbActField" value='<%=Model.ActField%>' />
                        <select id="ocbActValue" <%=iif(ViewData("bC_EnableActive")=false,"disabled","")%> style = "font:Tahoma, Geneva, sans-serif; font-size:11px; width:80px">
                            <option value="1" <%=iif(Model.SetActive="1","selected","")%>><%=ViewData("olaFilterStaAll") %></option>
                            <option value="2" <%=iif(Model.SetActive="2","selected","")%>><%=ViewData("olaFilterStaYes")%></option>
                            <option value="3" <%=iif(Model.SetActive="3","selected","")%>><%=ViewData("olaFilterStaNo")%></option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><%=ViewData("olaCapCon_Cancel")%></td>
                    <td>
                        <input type="hidden" id="otbCalField" value='<%=Model.CalField%>' />
                        <select id="ocbCalValue" <%=iif(ViewData("bC_EnableCancel")=false,"disabled","")%> style = "font:Tahoma, Geneva, sans-serif; font-size:11px; width:80px">
                            <option value="1" <%=iif(Model.SetCancel="1","selected","")%>><%=ViewData("olaFilterStaAll") %></option>
                            <option value="2" <%=iif(Model.SetCancel="2","selected","")%>><%=ViewData("olaFilterStaYes")%></option>
                            <option value="3" <%=iif(Model.SetCancel="3","selected","")%>><%=ViewData("olaFilterStaNo")%></option>
                        </select>
                    </td>
                </tr>
            </table>
        </td>
        <tr>
            <td align="left" valign="bottom">
                <li><%=ViewData("olaDetail")%></li>
            </td>
            <td align="right" valign="middle">
                <%=ViewData("olaCapCon_Dept")%>&nbsp;&nbsp;
                <!--<input type="hidden" id="otbDeptField" value='<%=ViewData("oDeptValue")%>' />
                <input type="hidden" id="otbOldRefCode" name="otbOldRefCode" value="" />
                <input type="text" id="otbDeptValue" style="max-width:50px" maxlength="5"  onkeydown="return otbDeptValue_onkeydown(event.keyCode,event.which)" onfocus="return otbDeptValue_onfocus()" onblur="return otbDeptValue_onblur()" onkeypress="return otbDeptValue_onkeypress(event.keyCode,event.which)" />
                <input type="button" value='<%=ViewData("olaSelect") %>' onclick="W_DATxBrowseMaster('otbDeptValue', 'olaDeptName','TCNMDepart');" />&nbsp;&nbsp;&nbsp;-->
                <select id="ocbDeptValue" <%=iif(ViewData("bC_EnableCancel")=false,"disabled","")%> style = "font:Tahoma, Geneva, sans-serif; font-size:11px; width:120px">
                    <option value="" <%=iif(ViewData("StaCancel")="1","selected","")%>><%=ViewData("olaCapCon_DeptAll")%></option>
                    <% For Each oItem In ViewData("ovd_Department")%>
                        <option value="<%=oItem.FTDptCode%>" <%=iif(ViewData("StaCancel")="2","selected","")%>><%=oItem.FTDptCode%> | <%=oItem.FTDptName%></option>
                    <% Next%>
                </select>
            </td>
            <%--<td align="left" valign="middle">
                <label id="olaDeptName"><%=ViewData("olaCapCon_DeptAll")%></label>
            </td>--%>
        </tr>
        <tr style="height:200px">
            <td colspan="3" id="ofaShowDT" valign="top">
                <div style="width:759px">
                <%  
                Dim nCountFieldDT As Integer
                Dim nWidthDT(9) As Integer
                Dim tCaptionDT(9) As String
                Dim tFieldDT(9) As String
                    Dim nCountDT As Integer
                    Dim aFormatDT(9) As String

                    For Each item In Model.BrwFieldDT 'ViewData("BrowseFieldDocDT")
                        nCountFieldDT = nCountFieldDT + 1
                        tFieldDT(nCountFieldDT - 1) = item
                    Next
                nCountDT = 0
                    For Each item In Model.BrwColSizeDT 'ViewData("WidthFieldDocDT")
                        nWidthDT(nCountDT) = CInt(item * 770 / 100)
                        nCountDT += 1
                    Next
                nCountDT = 0
                    For Each item In Model.BrwCaptionDT 'ViewData("CaptionDocDT")
                        tCaptionDT(nCountDT) = item
                        nCountDT += 1
                    Next
                    nCountDT = 0
                    For Each item In Model.BrwFormatDT 'ViewData("FormatHD")
                        aFormatDT(nCountDT) = item
                        nCountDT += 1
                    Next
                    If nCountDT > 1 Then nCountDT -= 1 Else nCountDT = 1
                    
                Dim oDataDocDT As IEnumerable(Of Models.cmlCNBrowseMaster) = ViewData("DataDocDT")
                Dim gridBuilderDT = Html.Telerik().Grid(oDataDocDT).HtmlAttributes(New With {.style = "width:499;table-layout: fixed;white-space:nowrap; font:Tahoma, Geneva, sans-serif; font-size:11px"})
                gridBuilderDT.Name("GridDocDT")
                gridBuilderDT.Pageable(Function(page) page.PageSize(10))
                If 1 <= nCountFieldDT Then
                        gridBuilderDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField01).Title(tCaptionDT(0)).Width(nWidthDT(0)) _
                                                    .Format(IIf(aFormatHD(aFormatDT.Length - nCountDT) = "", "", "{0:" & aFormatDT(aFormatDT.Length - nCountDT) & "}")) _
                                                    .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                    .HtmlAttributes(New With {.style = aTextAlignDT(0)}))
                        If nCountDT > 1 Then nCountDT -= 1 Else aFormatDT(aFormatDT.Length - nCountDT) = ""
                End If
                If 2 <= nCountFieldDT Then
                        gridBuilderDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField02).Title(tCaptionDT(1)).Width(nWidthDT(1)) _
                                                    .Format(IIf(aFormatHD(aFormatDT.Length - nCountDT) = "", "", "{0:" & aFormatDT(aFormatDT.Length - nCountDT) & "}")) _
                                                    .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                    .HtmlAttributes(New With {.style = aTextAlignDT(1)}))
                        If nCountDT > 1 Then nCountDT -= 1 Else aFormatDT(aFormatDT.Length - nCountDT) = ""
                End If
                If 3 <= nCountFieldDT Then
                        gridBuilderDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField03).Title(tCaptionDT(2)).Width(nWidthDT(2)) _
                                                    .Format(IIf(aFormatHD(aFormatDT.Length - nCountDT) = "", "", "{0:" & aFormatDT(aFormatDT.Length - nCountDT) & "}")) _
                                                    .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                    .HtmlAttributes(New With {.style = aTextAlignDT(2)}))
                        If nCountDT > 1 Then nCountDT -= 1 Else aFormatDT(aFormatDT.Length - nCountDT) = ""
                End If
                If 4 <= nCountFieldDT Then
                        gridBuilderDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField04).Title(tCaptionDT(3)).Width(nWidthDT(3)) _
                                                  .Format(IIf(aFormatHD(aFormatDT.Length - nCountDT) = "", "", "{0:" & aFormatDT(aFormatDT.Length - nCountDT) & "}")) _
                                                    .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                    .HtmlAttributes(New With {.style = aTextAlignDT(3)}))
                        If nCountDT > 1 Then nCountDT -= 1 Else aFormatDT(aFormatDT.Length - nCountDT) = ""
                End If
                If 5 <= nCountFieldDT Then
                        gridBuilderDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField05).Title(tCaptionDT(4)).Width(nWidthDT(4)) _
                                                    .Format(IIf(aFormatHD(aFormatDT.Length - nCountDT) = "", "", "{0:" & aFormatDT(aFormatDT.Length - nCountDT) & "}")) _
                                                    .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                    .HtmlAttributes(New With {.style = aTextAlignDT(4)}))
                        If nCountDT > 1 Then nCountDT -= 1 Else aFormatDT(aFormatDT.Length - nCountDT) = ""
                End If
                If 6 <= nCountFieldDT Then
                        gridBuilderDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField06).Title(tCaptionDT(5)).Width(nWidthDT(5)) _
                                                    .Format(IIf(aFormatHD(aFormatDT.Length - nCountDT) = "", "", "{0:" & aFormatDT(aFormatDT.Length - nCountDT) & "}")) _
                                                    .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                    .HtmlAttributes(New With {.style = aTextAlignDT(5)}))
                        If nCountDT > 1 Then nCountDT -= 1 Else aFormatDT(aFormatDT.Length - nCountDT) = ""
                End If
                If 7 <= nCountFieldDT Then
                        gridBuilderDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField07).Title(tCaptionDT(6)).Width(nWidthDT(6)) _
                                                    .Format(IIf(aFormatHD(aFormatDT.Length - nCountDT) = "", "", "{0:" & aFormatDT(aFormatDT.Length - nCountDT) & "}")) _
                                                    .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                    .HtmlAttributes(New With {.style = aTextAlignDT(6)}))
                        If nCountDT > 1 Then nCountDT -= 1 Else aFormatDT(aFormatDT.Length - nCountDT) = ""
                End If
                If 8 <= nCountFieldDT Then
                        gridBuilderDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField08).Title(tCaptionDT(7)).Width(nWidthDT(7)) _
                                                    .Format(IIf(aFormatHD(aFormatDT.Length - nCountDT) = "", "", "{0:" & aFormatDT(aFormatDT.Length - nCountDT) & "}")) _
                                                    .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                    .HtmlAttributes(New With {.style = aTextAlignDT(7)}))
                        If nCountDT > 1 Then nCountDT -= 1 Else aFormatDT(aFormatDT.Length - nCountDT) = ""
                End If
                If 9 <= nCountFieldDT Then
                        gridBuilderDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField09).Title(tCaptionDT(8)).Width(nWidthDT(8)) _
                                                    .Format(IIf(aFormatHD(aFormatDT.Length - nCountDT) = "", "", "{0:" & aFormatDT(aFormatDT.Length - nCountDT) & "}")) _
                                                    .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                    .HtmlAttributes(New With {.style = aTextAlignDT(8)}))
                        If nCountDT > 1 Then nCountDT -= 1 Else aFormatDT(aFormatDT.Length - nCountDT) = ""
                End If
                If 10 <= nCountFieldDT Then
                        gridBuilderDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField10).Title(tCaptionDT(9)).Width(nWidthDT(9)) _
                                                    .Format(IIf(aFormatHD(aFormatDT.Length - nCountDT) = "", "", "{0:" & aFormatDT(aFormatDT.Length - nCountDT) & "}")) _
                                                    .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                    .HtmlAttributes(New With {.style = aTextAlignDT(9)}))
                        If nCountDT > 1 Then nCountDT -= 1 Else aFormatDT(aFormatDT.Length - nCountDT) = ""
                End If
                                    
                gridBuilderDT.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                    .Select("_SelectionClientSideRef_DT", tControllerDoc)))
                                      
                gridBuilderDT.DataKeys(Function(keys) (keys.Add(Function(c) c.FTField01)))
                    gridBuilderDT.Scrollable(Function(o) o.Height(185))
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
                <input type="button" value='<%=ViewData("olaRefresh") %>' onclick="W_DATxRefreshDoc();" />
                <input type="button" value='<%=ViewData("olaOK") %>' onclick="W_GETxSelectedDoc('1');" id="ocmSelDoc" style="margin-right:15px;"/>
                <input type="button" value='<%=ViewData("olaCancel") %>' onclick="W_GETxSelectedDoc('2')" id="ocmCancelDoc" class="xCN_DivDisplayNone"/>
            </td>
        </tr>
    </tr>
<!-- Detail -->
</table>
<script type="text/javascript">
    var tW_StaLoad = "N";
    var tW_CaseBrw = '<%=Session("tVB_CNBrwDocCase")%>';
    function gridDocHD_onLoad() {
        if (tW_StaLoad == "N"){
            var oFieldName = document.getElementById('otbFilterFieldDoc');
            var columnName = $('#GridDocHD th').eq(0).text();
            document.getElementById('olaFilterBy').innerHTML = columnName;                    
            switch(columnName){
                <%For nI = 0 To 9 %>
                    case '<%=tCaptionDocHD(nI)%>':oFieldName.value = '<%=tFieldDocHD(nI)%>';break;
                <%Next %>
            }
            tW_StaLoad = "Y";
        }
        $('tr', this).live('dblclick', function(e) {
            var $tr = $(this);
            //nStatus = 1;
            //window.close();
            W_GETxSelectedDoc('1');
            });
        $('#GridDocHD tr:has(td) td', this.element).bind('click', function(e) {
            var td = this;
            var oFieldName = document.getElementById('otbFilterFieldDoc');
            columnName = $('#GridDocHD th').eq(td.cellIndex).text();
            document.getElementById('olaFilterBy').innerHTML = columnName;                    
            switch(columnName){
                <%For nI = 0 To 9 %>
                    case '<%=tCaptionDocHD(nI)%>':oFieldName.value = '<%=tFieldDocHD(nI)%>';break;
                <%Next %>
            }
        });
    }        
    function onRowSelectedDocHD(e) {
        nOnclick=1;
        var ordersGrid = $('#GridDocDT').data('tGrid');
        var tKeyString = '';
        var nCount=0;
        tKeyString =  e.row.cells[0].innerHTML+ ',';
        tKeyString +=  e.row.cells[1].innerHTML;
        var tDocID = e.row.cells[1].innerHTML; //*CH 29-12-2012 New เก็บรหัสเอกสารจากแถวที่เลือก
        var tPrcDoc = '';//document.getElementsByName('FTStaPrcDoc').item(e.row.rowIndex);
        if (document.getElementsByName('FTStaPrcDoc')[e.row.rowIndex].checked){
            tPrcDoc = '1';
        }else{
            tPrcDoc = '0';
        }
        GetPassedValue(tDocID,tPrcDoc);
        if(tW_CaseBrw == ''){tW_CaseBrw = 'Po';}
        var tDate = J002_GETtTimeStamp();
        ordersGrid.rebind({
            ptDate:tDate,ptKeyString: encodeURI(tKeyString), ptCase: encodeURI(tW_CaseBrw)
        });
    }
    function otbFilterValueDoc_onkeypress(ptKeyCode,ptWhich) {
        return J002_CHKbCheckTxtKey(ptKeyCode,ptWhich);
    }       
    function otbFilterValueDoc_onkeydown(ptKeyCode, ptWitch) {
        var tKey = ptKeyCode;
        if (ptWitch != null && ptWitch != '') {
            tKey = ptWitch;
        }
        if (tKey == 13) {
            W_DATxRefreshDoc();
        }
        return !(tKey == 13)
    }
    function W_DATxRefreshDoc() {
        if ($('#olaFilterBy').html() == '') {
            alert('<%=ViewData("tMsgSelect") %>');
            return false;
        }
        nStatus = 0;
        var oApprField = window.document.getElementById('otbApprField'); var oApprValue = window.document.getElementById('ocbApprValue');
        var oRefField = window.document.getElementById('otbRefField'); var oRefValue = window.document.getElementById('ocbRefValue');
        var oActField = window.document.getElementById('otbActField'); var oActValue = window.document.getElementById('ocbActValue');
        var oCalField = window.document.getElementById('otbCalField'); var oCalValue = window.document.getElementById('ocbCalValue');
        //var oDeptField = window.document.getElementById('otbDeptField'); var oDeptValue = window.document.getElementById('otbDeptValue');
        var oDeptValue = document.getElementById('ocbDeptValue');
        var oFilField = window.document.getElementById('otbFilterFieldDoc'); var oFilValue = window.document.getElementById('otbFilterValueDoc');

        var tParamF = oApprField.value + ',' + oRefField.value + ',' + oActField.value + ',' + oCalField.value;
        var tParamV = oApprValue.value + ',' + oRefValue.value + ',' + oActValue.value + ',' + oCalValue.value;
        if (oDeptValue.value != '') {
            tParamF = tParamF + ',' + '<%=ViewData("oDeptValue")%>';//oDeptField.value;
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
        if(tW_CaseBrw == ''){tW_CaseBrw = 'Po';}
        var tDate = J002_GETtTimeStamp();
        var ogdHD = $('#GridDocHD').data('tGrid');
        ogdHD.rebind({
            //ptDate: tDate, ptFilterF: tParamF, ptFilterV: encodeURI(tParamV)//*CH 16-08-2012 Old
            ptDate: tDate, ptFilterF: tParamF, ptFilterV: escape(tParamV), ptCase: encodeURI(tW_CaseBrw)//*CH 16-08-2012 New Escape tParamV
        });
        var ordersGrid = $('#GridDocDT').data('tGrid');
        ordersGrid.rebind({
            ptDate: tDate, ptKeyString: "", ptCase: encodeURI(tW_CaseBrw)
        });

    }
    function W_GETxSelectedDoc(ptFlag){//ptFlag 1 : Ok, 2 : Cancel
        try{
            
            switch (ptFlag) {
                case '1' : W_PRCxSelectedDoc(tW_CaseBrw); break;
                case '2' : W_FRMxCloseBrwDoc(); break;
            }
            
        }catch (ex) { J002_SHWxMsgError("W_GETxSelectedDoc ", ex); }       
    }

    function W_PRCxRebingGrid(ptCase){
        tW_CaseBrw = ptCase
        W_DATxRefreshDoc();
    }
</script>