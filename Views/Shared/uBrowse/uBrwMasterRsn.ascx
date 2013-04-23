<%@ Control Language="VB" Inherits="System.Web.Mvc.ViewUserControl(Of Adasoft.WebPos.Models.cmlDataBrwMaster)" %>
<%@ Import Namespace="Adasoft.WebPos.Models" %>
<%@ Import Namespace="Adasoft.WebPos" %>
<%@ Import Namespace="System.Resources" %>
<%@ Import Namespace="AdaWebPos" %>
<%@ Import Namespace ="System.IO" %>

<%                                          
        Dim nDataMasRsn As Integer
        Dim nWidthMasRsn(9) As Integer
        Dim aCapMasRsn(9) As String
                    Dim aFieldMasRsn(9) As String
    Dim nCountMasRsn As Integer
    Dim aTextAlignRsn(10) As String
    Dim oTempRsn As New List(Of String)
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
        aFieldMasRsn(nCountMasRsn) = item
        nDataMasRsn = nDataMasRsn + 1
        nCountMasRsn += 1
    Next
    nCountMasRsn = 0
    For Each item In Model.BrwColSize 'ViewData("WidthMaster")
        nWidthMasRsn(nCountMasRsn) = CInt(item * 750 / 100)
        nCountMasRsn += 1
    Next
                
    nCountMasRsn = 0
    For Each item In Model.BrwCaption 'ViewData("CaptionMaster")
        aCapMasRsn(nCountMasRsn) = item
        nCountMasRsn += 1
    Next
    
    nCountMasRsn = 0
    oTempRsn = Model.TextAlign
    For i As Integer = 0 To 9
        If i >= oTempRsn.Count Then
            aTextAlignRsn(nCountMasRsn) = "text-align:left"
        Else
            aTextAlignRsn(nCountMasRsn) = "text-align:" & oTempRsn(i)
        End If
        nCountMasRsn += 1
    Next
        %>
            
    <table width="100%">
        <tr style="height:<%=nHeightTblRate%>px">
            <td align="center" valign="top">
            <% 
                Dim tController As String = ViewData("CtrlBrwMaster")
                Dim oData As IEnumerable(Of cmlCNBrowseMaster)
                oData = ViewData("oC_BrwMaster")
                Dim gridDataRsnBuilder = Html.Telerik().Grid(oData).HtmlAttributes(New With {.style = "table-layout: fixed;white-space:nowrap;font:Tahoma, Geneva, sans-serif;font-size:11px" & tSizeGridRate})
                                             gridDataRsnBuilder.Name("GridBrwMasRsn")
                gridDataRsnBuilder.Pageable(Function(page) page.PageSize(Session("nVB_CNBrwTop")))
                'gridBuilder.Sortable()
                If 1 <= nDataMasRsn Then
                    gridDataRsnBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField01) _
                                                .Title(aCapMasRsn(0)).Width(nWidthMasRsn(0)) _
                                                .HeaderHtmlAttributes(New With {.align = "center"}) _
                                                .HtmlAttributes(New With {.style = aTextAlignRsn(0)}))
                End If
                If 2 <= nDataMasRsn Then
                    gridDataRsnBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField02) _
                                                .Title(aCapMasRsn(1)).Width(nWidthMasRsn(1)) _
                                                .HtmlAttributes(New With {.style = aTextAlignRsn(1)}).ToString) '.Format("{0:dd/MM/yyyy}")
                End If
                If 3 <= nDataMasRsn Then
                    gridDataRsnBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField03) _
                                                .Title(aCapMasRsn(2)).Width(nWidthMasRsn(2)) _
                                                .HtmlAttributes(New With {.style = aTextAlignRsn(2)}))
                End If
                If 4 <= nDataMasRsn Then
                    gridDataRsnBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField04) _
                                                .Title(aCapMasRsn(3)).Width(nWidthMasRsn(3)) _
                                                .HtmlAttributes(New With {.style = aTextAlignRsn(3)}) _
                                                .Format("{0:#,##0." & StrDup(Session("nVB_CNDecAmtForShw"), "0") & "}"))
                End If
                If 5 <= nDataMasRsn Then
                    gridDataRsnBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField05) _
                                                .Title(aCapMasRsn(4)).Width(nWidthMasRsn(4)) _
                                                .HtmlAttributes(New With {.style = aTextAlignRsn(4)}))
                End If
                If 6 <= nDataMasRsn Then
                    gridDataRsnBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField06) _
                                                .Title(aCapMasRsn(5)).Width(nWidthMasRsn(5)) _
                                                .HtmlAttributes(New With {.style = aTextAlignRsn(5)}))
                End If
                If 7 <= nDataMasRsn Then
                    gridDataRsnBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField07) _
                                                .Title(aCapMasRsn(6)).Width(nWidthMasRsn(6)) _
                                                .HtmlAttributes(New With {.style = aTextAlignRsn(6)}))
                End If
                If 8 <= nDataMasRsn Then
                    gridDataRsnBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField08) _
                                                .Title(aCapMasRsn(7)).Width(nWidthMasRsn(7)) _
                                                .HtmlAttributes(New With {.style = aTextAlignRsn(7)}))
                End If
                If 9 <= nDataMasRsn Then
                    gridDataRsnBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField09) _
                                                .Title(aCapMasRsn(8)).Width(nWidthMasRsn(8)) _
                                                .HtmlAttributes(New With {.style = aTextAlignRsn(8)}))
                End If
                If 10 <= nDataMasRsn Then
                    gridDataRsnBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField10) _
                                                .Title(aCapMasRsn(9)).Width(nWidthMasRsn(9)) _
                                                .HtmlAttributes(New With {.style = aTextAlignRsn(9)}))
                End If
                        
                gridDataRsnBuilder.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                    .Select("ogdMaster_SelectAjaxEditing", tController, _
                            New With {.ptDate = "", _
                                    .ptFilterField = ViewData("FilterField"), _
                                    .ptFilterValue = ViewData("FilterValue"), _
                                    .ptCase = "St"})))
                       
                gridDataRsnBuilder.DataKeys(Function(keys) (keys.Add(Function(c) c.FTField01)))
                gridDataRsnBuilder.Selectable()
                gridDataRsnBuilder.Scrollable(Function(Scroll) Scroll.Height(nHeigthGridRate))
                gridDataRsnBuilder.ClientEvents(Function(Events) Events.OnRowSelect("onRowSelectedMasterRsn"))
                gridDataRsnBuilder.ClientEvents(Function(Events) Events.OnLoad("GridMasterRsn_onLoad"))
                gridDataRsnBuilder.Render()
                %>
            </td>
        </tr>
    </table>
    <table border="1" width="100%">
        <tr>
            <td style="text-align:left">
                <label id="olaFilterRsn"><%=ViewData("olaFilterBy")%></label>
            </td>
            <td style="width:70px; text-align:center">
                <input id="ocmSelectData" type = "button"  
                    value = '<%=ViewData("olaOK") %>' 
                    onclick = "W_SETxSelectedDataMaster(tW_ObjCodeRsn,tW_ObjNameRsn,tW_CaseRsn,'1')" 
                    style="width:55px;" />
            </td>
        </tr>
        <tr>
            <td style="text-align:left">                            
                <input type = "text" id="otbFilterRsnData" 
                        maxlength="400" style=" width:77.5%" 
                        onkeydown="otbFilterRsnDataMaster_onkeyDown(event.keyCode,event.which)" 
                        name="otbFilterRsnData" />
                <input type = "hidden" value = '<%=ViewData("CtrlName")%>' id="otbCtrlData" name="otbCtrlData"/>
                <input type = "hidden" value = "" id="otbRsnFieldName" name="otbRsnFieldName" />
                <input type = "button" value = '<%=ViewData("olaFil") %>' onclick="W_PRCxFillRsnData()" />                            
            </td>
            <td style="text-align:center">
                <input id="ocmCancelData" type = "button" 
                    value = '<%=ViewData("olaCancel")%>'
                    onclick ="W_SETxSelectedDataMaster('','',tW_CaseRsn,'2')" 
                    style="width:55px;" />
            </td>
        </tr>                
    </table>
    <script type="text/javascript">
        //#### ตัวแปรกลาง ####
        var nW_DecAmtForShw = '<%=Session("nVB_CNDecAmtForShw")%>';
        var aCapMasRsn = [];
        var aFieldMasRsn = [];
        var tW_CaseRsn;
        var tW_ObjCodeRsn;
        var tW_ObjNameRsn;
        var tW_StaSelect = 'N';//สถานการเลือกข้อมูล

        function C_SETxObjValueRsn(ptObjCode,ptObjName){
            tW_ObjCodeRsn = ptObjCode;
            tW_ObjNameRsn = ptObjName;
        }
        function onRowSelectedMasterRsn(peParam) {
            aCapMasRsn = [];
            aFieldMasRsn = [];
            <%For nI = 0 To 9 %>
                aCapMasRsn['<%=nI%>'] = '<%=aCapMasRsn(nI)%>';
                aFieldMasRsn['<%=nI%>'] = '<%=aFieldMasRsn(nI)%>';
            <%Next %>  
            J015_SETxFieldFilter('GridBrwMasRsn','otbRsnFieldName','olaFilterRsn',
                                    '<%=ViewData("olaFilterBy")%>',aCapMasRsn,aFieldMasRsn);
            J015_onRowSelected(peParam, '<%=nDataMasRsn%>');                                                
        }
        function GridMasterRsn_onLoad() {
            tW_CaseRsn = '<%=model.tCase%>';
            aCapMasRsn = [];
            aFieldMasRsn = [];
            <%For nI = 0 To 9 %>
                aCapMasRsn['<%=nI%>'] = '<%=aCapMasRsn(nI)%>';
                aFieldMasRsn['<%=nI%>'] = '<%=aFieldMasRsn(nI)%>';
            <%Next %>                        
            $('#GridBrwMasRsn tr', this.element).live('dblclick', function(e) {
                var $tr = $(this);
                //J015_SETxSelectData(tJ015_ReturnValue,'FTPdtSUnit','FTPunName');                
                 if(tW_StaSelect == 'N'){ W_SETxSelectedDataMaster(tW_ObjCodeRsn,tW_ObjNameRsn,tW_CaseRsn,'1'); tW_StaSelect = 'Y';}
            });
            J015_GridBrwUI_onLoad('GridBrwMasRsn','otbRsnFieldName','olaFilterRsn',
                                    '<%=ViewData("olaFilterBy")%>',aCapMasRsn,aFieldMasRsn);     
            $('#FTField04').val(J002_DECcRound($('#FTField04').val(), nW_DecAmtForShw, true));                   
        }   
        function W_PRCxFillRsnData(){
            J015_PRCxFillData('GridBrwMasRsn','otbRsnFieldName','otbFilterRsnData',tW_CaseRsn);  
            tW_StaSelect = 'N';                     
        }
        
        //### KeyDown & OnBlur
        function otbFilterRsnDataMaster_onkeyDown(ptKeyCode, ptWhich) {
            var tKey = ptKeyCode;
            if (ptWhich != null && ptWhich != '') { tKey = ptWhich; }
            if (tKey == 13) { W_PRCxFillRsnData(); } //กรองข้อมูล
        } 
    </script>