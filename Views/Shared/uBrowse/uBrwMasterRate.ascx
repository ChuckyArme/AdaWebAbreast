<%@ Control Language="VB" Inherits="System.Web.Mvc.ViewUserControl(Of Adasoft.WebPos.Models.cmlDataBrwMaster)" %>
<%@ Import Namespace="Adasoft.WebPos.Models" %>
<%@ Import Namespace="Adasoft.WebPos" %>
<%@ Import Namespace="System.Resources" %>
<%--<%@ Import Namespace="Adasoft.Abreast.StoreBack" %>--%>
<%@ Import Namespace ="System.IO" %>

<%                                          
        Dim nDataMasRate As Integer
        Dim nWidthMasRate(9) As Integer
        Dim aCapMasRatetionMasRate(9) As String
            Dim aFieldMasRateRate(9) As String
            Dim nCountMasRate As Integer
            Dim aTextAlignRate(10) As String
            Dim oTempRate As New List(Of String)
    
    '### Size Grid ### '*CH 13-03-2013
    Dim nHeigthGridRate As Integer = 350
    Dim nHeightTblRate As Integer = 400
    Dim tSizeGridRate As String
    If ViewData("tWidthGrid") <> "" Then
        tSizeGridRate = "height:200px;width:100%;" 'ViewData("tWidthGrid")        
        nHeigthGridRate = 180
        nHeightTblRate = 230
    End If
            For Each item In Model.BrwFieldName 'ViewData("BrowseDataMaster")
                aFieldMasRateRate(nCountMasRate) = item
                nDataMasRate = nDataMasRate + 1
                nCountMasRate += 1
            Next
    nCountMasRate = 0
    For Each item In Model.BrwColSize 'ViewData("WidthMaster")
        nWidthMasRate(nCountMasRate) = CInt(item * 750 / 100)
        nCountMasRate += 1
    Next
                
    nCountMasRate = 0
    For Each item In Model.BrwCaption 'ViewData("CaptionMaster")
        aCapMasRatetionMasRate(nCountMasRate) = item
        nCountMasRate += 1
    Next
    
    nCountMasRate = 0
    oTempRate = Model.TextAlign
    For i As Integer = 0 To 9
        If i >= oTempRate.Count Then
            aTextAlignRate(nCountMasRate) = "text-align:left"
        Else
            aTextAlignRate(nCountMasRate) = "text-align:" & oTempRate(i)
        End If
        nCountMasRate += 1
    Next
        %>
            
    <table width="100%">
        <tr style="height:<%=nHeightTblRate%>px">
            <td align="center" valign="top">
            <% 
                Dim tController As String = ViewData("CtrlBrwMaster")
                Dim oData As IEnumerable(Of cmlCNBrowseMaster)
                oData = ViewData("oC_BrwMaster")
                Dim gridDataRateBuilder = Html.Telerik().Grid(oData).HtmlAttributes(New With {.style = "table-layout: fixed;white-space:nowrap;font:Tahoma, Geneva, sans-serif;font-size:11px;" & tSizeGridRate})
                                              gridDataRateBuilder.Name("GridBrwMasRate")
                gridDataRateBuilder.Pageable(Function(page) page.PageSize(Session("nVB_CNBrwTop")))
                'gridBuilder.Sortable()
                If 1 <= nDataMasRate Then
                    gridDataRateBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField01) _
                                                .Title(aCapMasRatetionMasRate(0)).Width(nWidthMasRate(0)) _
                                                .HeaderHtmlAttributes(New With {.align = "center"}) _
                                                .HtmlAttributes(New With {.style = aTextAlignRate(0)}))
                End If
                If 2 <= nDataMasRate Then
                    gridDataRateBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField02) _
                                                .Title(aCapMasRatetionMasRate(1)).Width(nWidthMasRate(1)) _
                                                .HtmlAttributes(New With {.style = aTextAlignRate(1)}).ToString) '.Format("{0:dd/MM/yyyy}")
                End If
                If 3 <= nDataMasRate Then
                    gridDataRateBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField03) _
                                                .Title(aCapMasRatetionMasRate(2)).Width(nWidthMasRate(2)) _
                                                .HtmlAttributes(New With {.style = aTextAlignRate(2)}))
                End If
                If 4 <= nDataMasRate Then
                    gridDataRateBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField04) _
                                                .Title(aCapMasRatetionMasRate(3)).Width(nWidthMasRate(3)) _
                                                .HtmlAttributes(New With {.style = aTextAlignRate(3)}) _
                                                .Format("{0:#,##0." & StrDup(Session("nVB_CNDecAmtForShw"), "0") & "}"))
                End If
                If 5 <= nDataMasRate Then
                    gridDataRateBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField05) _
                                                .Title(aCapMasRatetionMasRate(4)).Width(nWidthMasRate(4)) _
                                                .HtmlAttributes(New With {.style = aTextAlignRate(4)}))
                End If
                If 6 <= nDataMasRate Then
                    gridDataRateBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField06) _
                                                .Title(aCapMasRatetionMasRate(5)).Width(nWidthMasRate(5)) _
                                                .HtmlAttributes(New With {.style = aTextAlignRate(5)}))
                End If
                If 7 <= nDataMasRate Then
                    gridDataRateBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField07) _
                                                .Title(aCapMasRatetionMasRate(6)).Width(nWidthMasRate(6)) _
                                                .HtmlAttributes(New With {.style = aTextAlignRate(6)}))
                End If
                If 8 <= nDataMasRate Then
                    gridDataRateBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField08) _
                                                .Title(aCapMasRatetionMasRate(7)).Width(nWidthMasRate(7)) _
                                                .HtmlAttributes(New With {.style = aTextAlignRate(7)}))
                End If
                If 9 <= nDataMasRate Then
                    gridDataRateBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField09) _
                                                .Title(aCapMasRatetionMasRate(8)).Width(nWidthMasRate(8)) _
                                                .HtmlAttributes(New With {.style = aTextAlignRate(8)}))
                End If
                If 10 <= nDataMasRate Then
                    gridDataRateBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField10) _
                                                .Title(aCapMasRatetionMasRate(9)).Width(nWidthMasRate(9)) _
                                                .HtmlAttributes(New With {.style = aTextAlignRate(9)}))
                End If
                        
                gridDataRateBuilder.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                    .Select("ogdMaster_SelectAjaxEditing", tController, _
                            New With {.ptDate = "", _
                                    .ptFilterField = ViewData("FilterField"), _
                                    .ptFilterValue = ViewData("FilterValue"), _
                                    .ptCase = "Rat"})))
                       
                gridDataRateBuilder.DataKeys(Function(keys) (keys.Add(Function(c) c.FTField01)))
                gridDataRateBuilder.Selectable()
                gridDataRateBuilder.Scrollable(Function(Scroll) Scroll.Height(nHeigthGridRate))
                gridDataRateBuilder.ClientEvents(Function(Events) Events.OnRowSelect("onRowSelectedMasterRate"))
                gridDataRateBuilder.ClientEvents(Function(Events) Events.OnLoad("GridMasterRate_onLoad"))
                gridDataRateBuilder.Render()
                %>
            </td>
        </tr>
    </table>
    <table border="1" width="100%">
        <tr>
            <td style="text-align:left">
                <label id="olaFilterRate"><%=ViewData("olaFilterBy")%></label>
            </td>
            <td style="width:70px; text-align:center">
                <input id="ocmSelectData" type = "button"  
                    value = '<%=ViewData("olaOK") %>' 
                    onclick = "W_SETxSelectedDataMaster(tW_ObjCodeRate,tW_ObjNameRate,tW_CaseRate,'1')" 
                    style="width:55px;" />
            </td>
        </tr>
        <tr>
            <td style="text-align:left">                            
                <input type = "text" id="otbFilterRateData" 
                        maxlength="400" style=" width:77.5%" 
                        onkeydown="otbFilterRateDataMaster_onkeyDown(event.keyCode,event.which)" 
                        name="otbFilterRateData" />
                <input type = "hidden" value = '<%=ViewData("CtrlName")%>' id="otbCtrlData" name="otbCtrlData"/>
                <input type = "hidden" value = "" id="otbRateFieldName" name="otbRateFieldName" />
                <input type = "button" value = '<%=ViewData("olaFil") %>' onclick="W_PRCxFillRateData()" />                            
            </td>
            <td style="text-align:center">
                <input id="ocmCancelData" type = "button" 
                    value = '<%=ViewData("olaCancel")%>'
                    onclick ="W_SETxSelectedDataMaster('','',tW_CaseRate,'2')" 
                    style="width:55px;" />
            </td>
        </tr>                
    </table>
    <script type="text/javascript">
        //#### ตัวแปรกลาง ####
        var nW_DecAmtForShw = '<%=Session("nVB_CNDecAmtForShw")%>';
        var aCapMasRate = [];
        var aFieldMasRate = [];
        var tW_CaseRate;
        var tW_ObjCodeRate;
        var tW_ObjNameRate;
        var tW_StaSelect = 'N';//สถานการเลือกข้อมูล

        function C_SETxObjValueRate(ptObjCode,ptObjName){
            tW_ObjCodeRate = ptObjCode;
            tW_ObjNameRate = ptObjName;
        }
        function onRowSelectedMasterRate(peParam) {
            aCapMasRate = [];
            aFieldMasRate = [];
            <%For nI = 0 To 9 %>
                aCapMasRate['<%=nI%>'] = '<%=aCapMasRatetionMasRate(nI)%>';
                aFieldMasRate['<%=nI%>'] = '<%=aFieldMasRateRate(nI)%>';
            <%Next %>  
            J015_SETxFieldFilter('GridBrwMasRate','otbRateFieldName','olaFilterRate',
                                    '<%=ViewData("olaFilterBy")%>',aCapMasRate,aFieldMasRate);
            J015_onRowSelected(peParam, '<%=nDataMasRate%>');                                                
        }
        function GridMasterRate_onLoad() {
            tW_CaseRate = '<%=model.tCase%>';
            aCapMasRate = [];
            aFieldMasRate = [];
            <%For nI = 0 To 9 %>
                aCapMasRate['<%=nI%>'] = '<%=aCapMasRatetionMasRate(nI)%>';
                aFieldMasRate['<%=nI%>'] = '<%=aFieldMasRateRate(nI)%>';
            <%Next %>                        
            $('#GridBrwMasRate tr', this.element).live('dblclick', function(e) {
                var $tr = $(this);
                //J015_SETxSelectData(tJ015_ReturnValue,'FTPdtSUnit','FTPunName');                
                 if(tW_StaSelect == 'N'){ W_SETxSelectedDataMaster(tW_ObjCodeRate,tW_ObjNameRate,tW_CaseRate,'1'); tW_StaSelect = 'Y';}
            });
            J015_GridBrwUI_onLoad('GridBrwMasRate','otbRateFieldName','olaFilterRate',
                                    '<%=ViewData("olaFilterBy")%>',aCapMasRate,aFieldMasRate);     
            $('#FTField04').val(J002_DECcRound($('#FTField04').val(), nW_DecAmtForShw, true));                   
        }   
        function W_PRCxFillRateData(){
            J015_PRCxFillData('GridBrwMasRate','otbRateFieldName','otbFilterRateData',tW_CaseRate);  
            tW_StaSelect = 'N';                     
        }
        
        //### KeyDown & OnBlur
        function otbFilterRateDataMaster_onkeyDown(ptKeyCode, ptWhich) {
            var tKey = ptKeyCode;
            if (ptWhich != null && ptWhich != '') { tKey = ptWhich; }
            if (tKey == 13) { W_PRCxFillRateData(); } //กรองข้อมูล
        } 
    </script>