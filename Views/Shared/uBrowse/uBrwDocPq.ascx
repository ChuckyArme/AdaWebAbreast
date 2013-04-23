<%@ Control Language="VB" Inherits="System.Web.Mvc.ViewUserControl(Of Adasoft.WebPos.Models.cmlCNBrwDoc)" %>
<%@ Import Namespace="Adasoft.WebPos" %>
<%@ Import Namespace="AdaWebPos" %>
<%@ Import Namespace="System.Resources" %>
<%@ Import Namespace ="System.IO" %>

<table style="text-align:center; width:100%" border="0" cellpadding="0" cellspacing="0" >
    <tr>
        <td align="left" valign="bottom"width="400px">                    
            <label style="margin-left:10px;"><%=ViewData("olaHeader")%></label>
        </td>
        <td align="right" valign="middle"width="200px">
            <label id="Label1"><%=ViewData("olaFilterBy")%></label>:
            <label id="olaFilterPqBy"></label>&nbsp;&nbsp;&nbsp;
        </td>
                    
        <td align="left" valign="middle" width="200px">
            <input type="hidden" id="otbFilterFieldDocPq" />
            <input type="text" style="max-width:100px" id="otbFilterValueDocPq"  
                    onkeydown="return otbFilterValueDocPq_onkeydown(event.keyCode,event.which)" onkeypress="return otbFilterValueDocPq_onkeypress(event.keyCode,event.which)" />        
        </td>
    </tr>
    <tr style="height:160px">
        <td colspan="2" id="Td1" valign="top">
        <%
            Dim nFieldCountDocPqHD As Integer
            Dim nWidthDocPqHD(11) As Integer
            Dim tCaptionDocPqHD(11) As String
            Dim tFieldDocPqHD(11) As String
            Dim aFormatPqHD(11) As String
            Dim nCountPqDocPqHD As Integer
            Dim aTextAlignPqHD(11) As String
            Dim aTextAlignPqDT(11) As String
            Dim oTempPq As New List(Of String)
            Dim nCountPq As Integer = 0
            
            '### ขนาดของตาราง ### '*CH 14-03-2013
            Dim nSizeGrid As Integer = 200
            Dim nSizeGrid2 As Integer = 100
            Dim nWidthTbl As Integer = 799
            Dim tSizeGrid As String = "width:618px;"
            Dim tSizeGrid2 As String = "width:799;"
            If ViewData("tWidthGrid") <> "" Then 'tSizeGrid
                tSizeGrid = "height:150px;width:100%;" 'ViewData("tWidthGrid")        
                nSizeGrid = 99
                tSizeGrid2 = "height:130px;width:100%;" 'ViewData("tWidthGrid")        
                nSizeGrid2 = 79
                nWidthTbl = 930
            End If
            
            nFieldCountDocPqHD = 0
            For Each item In Model.BrwFieldHD 'ViewData("BrowseFieldDocHD")
                tFieldDocPqHD(nFieldCountDocPqHD) = item
                nFieldCountDocPqHD += 1
            Next
            nCountPq = 0
            For Each item In Model.BrwColSizeHD 'ViewData("WidthFieldDocHD")
                nWidthDocPqHD(nCountPqDocPqHD) = CInt(item * 600 / 100)
                nCountPqDocPqHD += 1
            Next
            nCountPqDocPqHD = 0
            For Each item In Model.BrwCaptionHD 'ViewData("CaptionDocHD")
                tCaptionDocPqHD(nCountPqDocPqHD) = item
                nCountPqDocPqHD += 1
            Next
            nCountPqDocPqHD = 0
            For Each item In Model.BrwFormatHD 'ViewData("FormatHD")
                aFormatPqHD(nCountPqDocPqHD) = item
                nCountPqDocPqHD += 1
            Next
            nCountPqDocPqHD = 0
            oTempPq = Model.TextAlignHD 'ViewData("TextAlignHD")
            For i As Integer = 0 To 11
                If i >= oTempPq.Count Then
                    aTextAlignPqHD(nCountPqDocPqHD) = "text-align:left"
                Else
                    aTextAlignPqHD(nCountPqDocPqHD) = "text-align:" & oTempPq(i)
                End If
                nCountPqDocPqHD += 1
            Next
            nCountPqDocPqHD = 0
            oTempPq = Model.TextAlignDT 'ViewData("TextAlignDT")
            For i As Integer = 0 To 11
                If i >= oTempPq.Count Then
                    aTextAlignPqDT(nCountPqDocPqHD) = "text-align:left"
                Else
                    aTextAlignPqDT(nCountPqDocPqHD) = "text-align:" & oTempPq(i)
                End If
                nCountPqDocPqHD += 1
            Next
            
            Dim tControllerDoc As String = ViewData("CtrlNameBrwDoc")
            Dim oViewDocHD = CType(ViewData("DataDocHD"), IEnumerable(Of Models.cmlCNBrowseMaster))
            Dim oDataDocHD As IEnumerable(Of Models.cmlCNBrowseMaster)
            oDataDocHD = oViewDocHD
            'oData = From it In Models.cmlCNBrowseMaster(ViewData("DataHD")) Select it
            Dim gridBuilderDocPqHD = Html.Telerik().Grid(oDataDocHD).HtmlAttributes(New With {.style = "table-layout: fixed;white-space:nowrap; font:Tahoma, Geneva, sans-serif; font-size:11px;" & tSizeGrid})
            gridBuilderDocPqHD.Name("GridDocPqHD")
            Dim oFieldIndex As List(Of Integer) = Model.FieldIndex 'ViewData("FieldIndex")
            gridBuilderDocPqHD.Pageable(Function(page) page.PageSize(10))
            For n As Integer = 0 To oFieldIndex.Count - 1
                Select Case oFieldIndex(n)
                    Case 1
                        gridBuilderDocPqHD.Columns(Function(columns) columns.Bound(Function(o) o.FTField01).Title(tCaptionDocPqHD(n)).Width(nWidthDocPqHD(n)).Format(IIf(aFormatPqHD(n) = "", "", "{0:" & aFormatPqHD(n) & "}")) _
                                            .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                            .HtmlAttributes(New With {.style = aTextAlignPqDT(0)}))
                    Case 2
                        gridBuilderDocPqHD.Columns(Function(columns) columns.Bound(Function(o) o.FTField02).Title(tCaptionDocPqHD(n)).Width(nWidthDocPqHD(n)).Format(IIf(aFormatPqHD(n) = "", "", "{0:" & aFormatPqHD(n) & "}")) _
                                            .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                            .HtmlAttributes(New With {.style = aTextAlignPqDT(1)}))
                    Case 3
                        gridBuilderDocPqHD.Columns(Function(columns) columns.Bound(Function(o) o.FTField03).Title(tCaptionDocPqHD(n)).Width(nWidthDocPqHD(n)).Format(IIf(aFormatPqHD(n) = "", "", "{0:" & aFormatPqHD(n) & "}")) _
                                            .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                            .HtmlAttributes(New With {.style = aTextAlignPqDT(2)}))
                    Case 4
                        gridBuilderDocPqHD.Columns(Function(columns) columns.Bound(Function(o) o.FTField04).Title(tCaptionDocPqHD(n)).Width(nWidthDocPqHD(n)).Format(IIf(aFormatPqHD(n) = "", "", "{0:" & aFormatPqHD(n) & "}")) _
                                            .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                            .HtmlAttributes(New With {.style = aTextAlignPqDT(3)}))
                    Case 5
                        gridBuilderDocPqHD.Columns(Function(columns) columns.Bound(Function(o) o.FTField05).Title(tCaptionDocPqHD(n)).Width(nWidthDocPqHD(n)).Format(IIf(aFormatPqHD(n) = "", "", "{0:" & aFormatPqHD(n) & "}")) _
                                            .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                            .HtmlAttributes(New With {.style = aTextAlignPqDT(4)}))
                    Case 6
                        If 6 <= nFieldCountDocPqHD Then
                            gridBuilderDocPqHD.Columns(Function(columns) columns.Bound(Function(o) o.FTField06).Title(tCaptionDocPqHD(n)).Width(nWidthDocPqHD(n)).Format(IIf(aFormatPqHD(n) = "", "", "{0:" & aFormatPqHD(n) & "}")) _
                                                .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                .HtmlAttributes(New With {.style = aTextAlignPqDT(5)}))
                        End If
                    Case 7
                        gridBuilderDocPqHD.Columns(Function(columns) columns.Bound(Function(o) o.FTField07).Title(tCaptionDocPqHD(n)).Width(nWidthDocPqHD(n)).Format(IIf(aFormatPqHD(n) = "", "", "{0:" & aFormatPqHD(n) & "}")) _
                                            .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                            .HtmlAttributes(New With {.style = aTextAlignPqDT(6)}))
                    Case 8
                        gridBuilderDocPqHD.Columns(Function(columns) columns.Bound(Function(o) o.FTField08).Title(tCaptionDocPqHD(n)).Width(nWidthDocPqHD(n)).Format(IIf(aFormatPqHD(n) = "", "", "{0:" & aFormatPqHD(n) & "}")) _
                                                .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                .HtmlAttributes(New With {.style = aTextAlignPqDT(7)}))
                    Case 9
                        gridBuilderDocPqHD.Columns(Function(columns) columns.Bound(Function(o) o.FTField09).Title(tCaptionDocPqHD(n)).Width(nWidthDocPqHD(n)).Format(IIf(aFormatPqHD(n) = "", "", "{0:" & aFormatPqHD(n) & "}")) _
                                            .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                            .HtmlAttributes(New With {.style = aTextAlignPqDT(8)}))
                    Case 10
                        gridBuilderDocPqHD.Columns(Function(columns) columns.Bound(Function(o) o.FTField10).Title(tCaptionDocPqHD(n)).Width(nWidthDocPqHD(n)).Format(IIf(aFormatPqHD(n) = "", "", "{0:" & aFormatPqHD(n) & "}")) _
                                            .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                            .HtmlAttributes(New With {.style = aTextAlignPqDT(9)}))
                    Case 11
                        gridBuilderDocPqHD.Columns(Function(columns) columns.Bound(Function(o) o.FTField11).Title(tCaptionDocPqHD(n)).Width(nWidthDocPqHD(n)).Format(IIf(aFormatPqHD(n) = "", "", "{0:" & aFormatPqHD(n) & "}")) _
                                            .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                            .HtmlAttributes(New With {.style = aTextAlignPqDT(10)}))
                    Case 12
                        gridBuilderDocPqHD.Columns(Function(columns) columns.Bound(Function(o) o.FTField12).Title(tCaptionDocPqHD(n)).Width(nWidthDocPqHD(n)).Format(IIf(aFormatPqHD(n) = "", "", "{0:" & aFormatPqHD(n) & "}")) _
                                                .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                .HtmlAttributes(New With {.style = aTextAlignPqDT(11)}))
                End Select
            Next
            gridBuilderDocPqHD.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                .Select("_SelectionClientSide_HD", tControllerDoc, New With {.ptCase = ""})))
            gridBuilderDocPqHD.DataKeys(Function(keys) (keys.Add(Function(c) c.FTField01)))
            gridBuilderDocPqHD.Selectable()
            gridBuilderDocPqHD.Footer(True)
            gridBuilderDocPqHD.Sortable()
            gridBuilderDocPqHD.Resizable(Function(o) o.Columns(True))
            gridBuilderDocPqHD.Scrollable(Function(o) o.Height(nSizeGrid))
            gridBuilderDocPqHD.ClientEvents(Function(Events) Events.OnRowSelect("onRowSelectedDocPqHD"))
            gridBuilderDocPqHD.ClientEvents(Function(Events) Events.OnLoad("GridDocPqHD_onLoad"))
            gridBuilderDocPqHD.ClientEvents(Function(Events) Events.OnDataBound("GridDocPqHD_onLoad"))
            gridBuilderDocPqHD.Render()
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
                        <input type="hidden" id="otbApprFieldPq" value='<%=Model.ApprField%>' />
                        <select id="ocbApprValuePq" <%=iif(ViewData("bC_EnableAppr")=false,"disabled","")%> style = "font:Tahoma, Geneva, sans-serif; font-size:11px; width:80px">
                            <option value="1" <%=iif(Model.SetAppr="1","selected","")%> ><%=ViewData("olaFilterStaAll") %></option>
                            <option value="2" <%=iif(Model.SetAppr="2","selected","")%> ><%=ViewData("olaFilterStaYes")%></option>
                            <option value="3" <%=iif(Model.SetAppr="3","selected","")%> ><%=ViewData("olaFilterStaNo")%></option>
                        </select>
                                    
                    </td>
                </tr>
                <tr>
                    <td><%=ViewData("olaCapCon_Reference") %></td>
                    <td>
                        <input type="hidden" id="otbRefFieldPq" value='<%=Model.RefField%>'/>
                        <select id="ocbRefValuePq" <%=iif(ViewData("bC_EnableRef")=false,"disabled","")%> style = "font:Tahoma, Geneva, sans-serif; font-size:11px; width:80px">
                            <option value="1" <%=iif(Model.SetRef="1","selected","")%>><%=ViewData("olaFilterStaAll") %></option>
                            <option value="2" <%=iif(Model.SetRef="2","selected","")%>><%=ViewData("olaFilterStaYes")%></option>
                            <option value="3" <%=iif(Model.SetRef="3","selected","")%>><%=ViewData("olaFilterStaNo")%></option>
                        </select>
                                    
                    </td>
                </tr>
                <tr>
                    <td><%=ViewData("olaCapCon_Active")%></td>
                    <td>
                        <input type="hidden" id="otbActFieldPq" value='<%=Model.ActField%>' />
                        <select id="ocbActValuePq" <%=iif(ViewData("bC_EnableActive")=false,"disabled","")%> style = "font:Tahoma, Geneva, sans-serif; font-size:11px; width:80px">
                            <option value="1" <%=iif(Model.SetActive="1","selected","")%>><%=ViewData("olaFilterStaAll") %></option>
                            <option value="2" <%=iif(Model.SetActive="2","selected","")%>><%=ViewData("olaFilterStaYes")%></option>
                            <option value="3" <%=iif(Model.SetActive="3","selected","")%>><%=ViewData("olaFilterStaNo")%></option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><%=ViewData("olaCapCon_Cancel")%></td>
                    <td>
                        <input type="hidden" id="otbCalFieldPq" value='<%=Model.CalField%>' />
                        <select id="ocbCalValuePq" <%=iif(ViewData("bC_EnableCancel")=false,"disabled","")%> style = "font:Tahoma, Geneva, sans-serif; font-size:11px; width:80px">
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
                <label style="margin-left:10px;"><%=ViewData("olaDetail")%></label>
            </td>
            <td align="right" valign="middle">
                <%=ViewData("olaCapCon_Dept")%>&nbsp;&nbsp;
                <!--<input type="hidden" id="otbDeptField" value='<%=Model.DeptValue%>' />
                <input type="hidden" id="otbOldRefCode" name="otbOldRefCode" value="" />
                <input type="text" id="otbDeptValue" style="max-width:50px" maxlength="5"  onkeydown="return otbDeptValue_onkeydown(event.keyCode,event.which)" onfocus="return otbDeptValue_onfocus()" onblur="return otbDeptValue_onblur()" onkeypress="return otbDeptValue_onkeypress(event.keyCode,event.which)" />
                <input type="button" value='<%=ViewData("olaSelect") %>' onclick="W_DATxBrowseMaster('otbDeptValue', 'olaDeptName','TCNMDepart');" />&nbsp;&nbsp;&nbsp;-->
                <select id="ocbDeptValuePq" <%=iif(ViewData("bC_EnableCancel")=false,"disabled","")%> style = "font:Tahoma, Geneva, sans-serif; font-size:11px; width:120px">
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
        <tr style="height:100px">
            <td colspan="3" id="ofaShowDT" valign="top">
                <!--<div style="width:799px">-->
                <div style="width:<%=nWidthTbl%>px">
                <%  
                Dim nCountPqFieldDT As Integer
                Dim nWidthDT(9) As Integer
                Dim tCaptionDT(9) As String
                Dim tFieldDT(9) As String
                Dim nCountPqDT As Integer

                    For Each item In Model.BrwFieldDT 'ViewData("BrowseFieldDocDT")
                        nCountPqFieldDT = nCountPqFieldDT + 1
                        tFieldDT(nCountPqFieldDT - 1) = item
                    Next
                nCountPqDT = 0
                    For Each item In Model.BrwColSizeDT 'ViewData("WidthFieldDocDT")
                        nWidthDT(nCountPqDT) = CInt(item * 770 / 100)
                        nCountPqDT += 1
                    Next
                nCountPqDT = 0
                    For Each item In Model.BrwCaptionDT 'ViewData("CaptionDocDT")
                        tCaptionDT(nCountPqDT) = item
                        nCountPqDT += 1
                    Next
                            
                            
                Dim oDataDocDT As IEnumerable(Of Models.cmlCNBrowseMaster) = ViewData("DataDocDT")
                    Dim gridBuilderPqDT = Html.Telerik().Grid(oDataDocDT).HtmlAttributes(New With {.style = "table-layout: fixed;white-space:nowrap; font:Tahoma, Geneva, sans-serif; font-size:11px;" & tSizeGrid2})
                    gridBuilderPqDT.Name("GridDocPqDT")
                    gridBuilderPqDT.Pageable(Function(page) page.PageSize(10))
                    gridBuilderPqDT.Columns(Function(columns) columns.Bound(Function(o) o.FTSelectFlag).Width(62).Title(ViewData("ovd_tSelectFlag")) _
                                                .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                .ClientTemplate("<input type='checkbox' id='Checkbox0' name='FTSelectFlag' <#= FTSelectFlag == '1'? checked='checked' : checked='checked' #> />"))
                    If 1 <= nCountPqFieldDT Then
                        gridBuilderPqDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField01).Title(tCaptionDT(0)).Width(55) _
                                                    .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                    .HtmlAttributes(New With {.style = aTextAlignPqDT(0)}))
                    End If
                    If 2 <= nCountPqFieldDT Then
                        gridBuilderPqDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField02).Title(tCaptionDT(1)).Width(nWidthDT(1)) _
                                                    .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                    .HtmlAttributes(New With {.style = aTextAlignPqDT(1)}))
                    End If
                    If 3 <= nCountPqFieldDT Then
                        gridBuilderPqDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField03).Title(tCaptionDT(2)).Width(nWidthDT(2)) _
                                                    .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                    .HtmlAttributes(New With {.style = aTextAlignPqDT(2)}))
                    End If
                    If 4 <= nCountPqFieldDT Then
                        gridBuilderPqDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField04).Title(tCaptionDT(3)).Width(nWidthDT(3)) _
                                                    .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                    .HtmlAttributes(New With {.style = aTextAlignPqDT(3)}))
                    End If
                    If 5 <= nCountPqFieldDT Then
                        gridBuilderPqDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField05).Title(tCaptionDT(4)).Width(nWidthDT(4)) _
                                                    .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                    .HtmlAttributes(New With {.style = aTextAlignPqDT(4)}))
                    End If
                    If 6 <= nCountPqFieldDT Then
                        gridBuilderPqDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField06).Title(tCaptionDT(5)).Width(nWidthDT(5)) _
                                                    .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                    .HtmlAttributes(New With {.style = aTextAlignPqDT(5)}))
                    End If
                    If 7 <= nCountPqFieldDT Then
                        gridBuilderPqDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField07).Title(tCaptionDT(6)).Width(nWidthDT(6)) _
                                                    .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                    .HtmlAttributes(New With {.style = aTextAlignPqDT(6)}))
                    End If
                    If 8 <= nCountPqFieldDT Then
                        gridBuilderPqDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField08).Title(tCaptionDT(7)).Width(nWidthDT(7)) _
                                                    .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                    .HtmlAttributes(New With {.style = aTextAlignPqDT(7)}))
                    End If
                    If 9 <= nCountPqFieldDT Then
                        gridBuilderPqDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField09).Title(tCaptionDT(8)).Width(nWidthDT(8)) _
                                                    .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                    .HtmlAttributes(New With {.style = aTextAlignPqDT(8)}))
                    End If
                    If 10 <= nCountPqFieldDT Then
                        gridBuilderPqDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField10).Title(tCaptionDT(9)).Width(nWidthDT(9)) _
                                                    .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                    .HtmlAttributes(New With {.style = aTextAlignPqDT(9)}))
                    End If
                                    
                    gridBuilderPqDT.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                        .Select("_SelectionClientSideRef_DT", tControllerDoc)))
                                      
                    gridBuilderPqDT.DataKeys(Function(keys) (keys.Add(Function(c) c.FTField01)))
                    gridBuilderPqDT.Scrollable(Function(o) o.Height(nSizeGrid2))
                    gridBuilderPqDT.Footer(True)
                    gridBuilderPqDT.Resizable(Function(o) o.Columns(True))
                    gridBuilderPqDT.Sortable()
                    gridBuilderPqDT.Render()
                %>
                </div>  
            </td>
        </tr>
        <tr>
            <td align="left">
                <input type="button" value='เลือกทั้งหมด' onclick="W_SETxSelectAll();" />
                <input type="button" value='ล้างทั้งหมด' onclick="W_SETxSelectNone();" />
            </td>
            <td colspan="3" align="right">
                <input type="button" value='<%=ViewData("olaRefresh") %>' onclick="W_DATxRefreshPqDoc();" />
                <input type="button" value='<%=ViewData("olaOK") %>' onclick="W_GETxSelectedPqDoc('1');" id="ocmSelDocPq"/>
                <input type="button" value='<%=ViewData("olaCancel") %>' onclick="W_GETxSelectedPqDoc('2');" id="ocmCancelDocPq"/>
            </td>
        </tr>
    </tr>
<!-- Detail -->
</table>
<script type="text/javascript">
    var tW_StaLoad = "N";
    var tW_SplCode = '';
    var tW_CaseRef = '';
    var tW_ReturnSpl = '';
    var tW_FieldVal = 'FTSplCode';
    function GridDocPqHD_onLoad() {
        if (tW_StaLoad == "N"){
            var oFieldName = document.getElementById('otbFilterFieldDocPq');
            var columnName = $('#GridDocPqHD th').eq(0).text();
            var tFieldName = '';
            document.getElementById('olaFilterPqBy').innerHTML = columnName; 
            switch(columnName){
                <%For nI = 0 To 9 %>
                    case '<%=tCaptionDocPqHD(nI)%>':tFieldName = '<%=tFieldDocPqHD(nI)%>';break;
                <%Next %>
            }
            tW_StaLoad = "Y";
            oFieldName.value = tFieldName;
        }
        $('tr', this).live('dblclick', function(e) {
            var $tr = $(this);
            //nStatus = 1;
            //window.close();
            W_GETxSelectedPqDoc('1');
        });     
        $('#GridDocPqHD tr:has(td) td', this.element).bind('click', function(e) {
            var td = this;
            var oFieldName = document.getElementById('otbFilterFieldDocPq');
            var columnName = $('#GridDocPqHD th').eq(td.cellIndex).text();
            document.getElementById('olaFilterPqBy').innerHTML = columnName;
            switch(columnName){
                <%For nI = 0 To 9 %>
                    case '<%=tCaptionDocPqHD(nI)%>':oFieldName.value = '<%=tFieldDocPqHD(nI)%>';break;
                <%Next %>
            }
            nOnclick=0;
        })
        $('#GridDocPqHD th', this.element).live('click', function(e) {
            var td = this;
            var oFieldName = document.getElementById('otbFilterFieldDocPq');
            var columnName = $('#GridDocPqHD th').eq(td.cellIndex).text();
            document.getElementById('olaFilterPqBy').innerHTML = columnName;
            switch(columnName){
                <%For nI = 0 To 9 %>
                    case '<%=tCaptionDocPqHD(nI)%>':oFieldName.value = '<%=tFieldDocPqHD(nI)%>';break;
                <%Next %>
            }
        });
    }      
    function onRowSelectedDocPqHD(e) {
        nOnclick=1;
        var ordersGrid = $('#GridDocPqDT').data('tGrid');
        var tKeyString = '';
        var nCountPq=0;
        tKeyString =  e.row.cells[0].innerHTML+ ',';
        tKeyString +=  e.row.cells[1].innerHTML;
        tW_ReturnSpl = e.row.cells[3].innerHTML; //รหัสผู้จำหน่าย
        var tDocID = e.row.cells[1].innerHTML; //*CH 29-12-2012 New เก็บรหัสเอกสารจากแถวที่เลือก
        GetPassedValue(tDocID);
        if(tW_CaseRef == ''){tW_CaseRef = 'Pq';}
        var tDate = J002_GETtTimeStamp();
        ordersGrid.rebind({
            ptDate:tDate,ptKeyString: encodeURI(tKeyString), ptCase: encodeURI(tW_CaseRef)
        });
    }
    function otbFilterValueDocPq_onkeypress(ptKeyCode,ptWhich) {
        return J002_CHKbCheckTxtKey(ptKeyCode,ptWhich);
    }       
    function otbFilterValueDocPq_onkeydown(ptKeyCode, ptWitch) {
        var tKey = ptKeyCode;
        if (ptWitch != null && ptWitch != '') {
            tKey = ptWitch;
        }
        if (tKey == 13) {
            W_DATxRefreshPqDoc();
        }
        return !(tKey == 13)
    }
    function C_PRCxRenderGrid(ptSplCode){//รับรหัสผู้จำหน่าย เพื่อกรองข้อมูล
        tW_StaLoad = 'N'
        //tW_SplCode = ptSplCode;
        GridDocPqHD_onLoad();
        W_DATxRefreshPqDoc();
    }
    function C_SETxSplCodeNCaseCode(ptSplCode,ptCase){
        tW_SplCode = ptSplCode;
        tW_CaseRef = ptCase;
        C_PRCxRenderGrid();
    }
    function C_SETxFieldVal(ptField){
        tW_FieldVal = ptField;
    }
    function W_DATxRefreshPqDoc() {
        if ($('#olaFilterPqBy').html() == '') {
            alert('<%=ViewData("tMsgSelect") %>');
            return false;
        }
        nStatus = 0;
        var oApprField = window.document.getElementById('otbApprFieldPq'); var oApprValue = window.document.getElementById('ocbApprValuePq');
        var oRefField = window.document.getElementById('otbRefFieldPq'); var oRefValue = window.document.getElementById('ocbRefValuePq');
        var oActField = window.document.getElementById('otbActFieldPq'); var oActValue = window.document.getElementById('ocbActValuePq');
        var oCalField = window.document.getElementById('otbCalFieldPq'); var oCalValue = window.document.getElementById('ocbCalValuePq');
        //var oDeptField = window.document.getElementById('otbDeptField'); var oDeptValue = window.document.getElementById('otbDeptValue');
        var oDeptValue = document.getElementById('ocbDeptValuePq');
        var oFilField = window.document.getElementById('otbFilterFieldDocPq'); var oFilValue = window.document.getElementById('otbFilterValueDocPq');

        var tParamFPq = oApprField.value + ',' + oRefField.value + ',' + oActField.value + ',' + oCalField.value;
        var tParamVPq = oApprValue.value + ',' + oRefValue.value + ',' + oActValue.value + ',' + oCalValue.value;
        //กรองข้อมูลตามผู้จำหน่าย
        if(tW_SplCode != ''){
            tParamFPq = tParamFPq + ',' + tW_FieldVal;
            tParamVPq = tParamVPq + ',' + tW_SplCode;
        }
        if (oDeptValue.value != '') {
            tParamFPq = tParamFPq + ',' + '<%=ViewData("oDeptValue")%>';//oDeptField.value;
            tParamVPq = tParamVPq + ',' + oDeptValue.value;
        }

        if (oFilValue.value != '') {
            tParamFPq = tParamFPq + ',' + oFilField.value;
            //tParamVPq = tParamVPq + ',' + "'" + oFilValue.value + "'"; //*CH 15-08-2012
            tParamVPq = tParamVPq + ',' + oFilValue.value; //*CH 15-08-2012
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

        if(tW_CaseRef == ''){tW_CaseRef = 'Pq';}
        var tDate = J002_GETtTimeStamp();
        var ogdHD = $('#GridDocPqHD').data('tGrid');
        ogdHD.rebind({
            //ptDate: tDate, ptFilterF: tParamFPq, ptFilterV: encodeURI(tParamVPq)//*CH 16-08-2012 Old
            ptDate: tDate, ptFilterF: tParamFPq, ptFilterV: escape(tParamVPq), ptCase: encodeURI(tW_CaseRef)//*CH 16-08-2012 New Escape tParamVPq
        });
        var ordersGrid = $('#GridDocPqDT').data('tGrid');
        ordersGrid.rebind({
            ptDate: tDate, ptKeyString: "", ptCase: encodeURI(tW_CaseRef)
        });

    }
    function W_GETxSelectedPqDoc(ptFlag){//ptFlag 1 : Ok, 2 : Cancel
        try{
             switch (ptFlag) {
                case '1' :    
                    var ordersGrid = $('#GridDocPqDT').data('tGrid');
                    var nLength = ordersGrid.data.length;
                    var aChk = document.getElementsByName('FTSelectFlag');
                    var tSeqNo = '';
                    for (var nI = 0; nI < nLength; nI++) {
                        if (aChk[nI].checked) {
                            if (tSeqNo != '') { tSeqNo += ','; }
                            tSeqNo += ordersGrid.data[nI].FTField01
                        }
                    }
                    W_PRCxSelectedPqDoc(tSeqNo,tW_ReturnSpl); 
                    break;
                case '2' : W_FRMxCloseBrwPqDoc(); break;
            }
        }catch (ex) { J002_SHWxMsgError("W_GETxSelectedPqDoc ", ex); }       
    }

    function W_SETxSelectAll(){
        try{
            var ordersGrid = $('#GridDocPqDT').data('tGrid');
            var nLength = ordersGrid.data.length;
            var aChk = document.getElementsByName('FTSelectFlag');
            for (var nI = 0; nI < nLength; nI++) {
                aChk[nI].checked = true;
            }
        }catch (ex) { J002_SHWxMsgError("W_SETxSelectAll ", ex); }   
    }
    function W_SETxSelectNone(){
        try{
            var ordersGrid = $('#GridDocPqDT').data('tGrid');
            var nLength = ordersGrid.data.length;
            var aChk = document.getElementsByName('FTSelectFlag');
            for (var nI = 0; nI < nLength; nI++) {
                aChk[nI].checked = false;
            }
        }catch (ex) { J002_SHWxMsgError("W_SETxSelectNone ", ex); }   
    }
</script>