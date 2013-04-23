<%@ Control Language="VB" Inherits="System.Web.Mvc.ViewUserControl(Of Adasoft.WebPos.Models.cmlDataBrwMaster)" %>
<%@ Import Namespace="Adasoft.WebPos.Models" %>
<%@ Import Namespace="Adasoft.WebPos" %>
<%@ Import Namespace="System.Resources" %>
<%@ Import Namespace="AdaWebPos" %>
<%@ Import Namespace ="System.IO" %>

<%                                          
        Dim nDataMasWah As Integer
        Dim nWidthMasWah(9) As Integer
        Dim aCapMasWah(9) As String
                    Dim aFieldMasWah(9) As String
    Dim nCountMasWah As Integer
    Dim aTextAlignWah(10) As String
    Dim oTempWah As New List(Of String)
    
    For Each item In Model.BrwFieldName 'ViewData("BrowseDataMaster")
        aFieldMasWah(nCountMasWah) = item
        nDataMasWah = nDataMasWah + 1
        nCountMasWah += 1
    Next
    nCountMasWah = 0
    For Each item In Model.BrwColSize 'ViewData("WidthMaster")
        nWidthMasWah(nCountMasWah) = CInt(item * 750 / 100)
        nCountMasWah += 1
    Next
                
    nCountMasWah = 0
    For Each item In Model.BrwCaption 'ViewData("CaptionMaster")
        aCapMasWah(nCountMasWah) = item
        nCountMasWah += 1
    Next
    
    nCountMasWah = 0
    oTempWah = Model.TextAlign
    For i As Integer = 0 To 9
        If i >= oTempWah.Count Then
            aTextAlignWah(nCountMasWah) = "text-align:left"
        Else
            aTextAlignWah(nCountMasWah) = "text-align:" & oTempWah(i)
        End If
        nCountMasWah += 1
    Next
        %>
            
    <table>
        <tr style="height:400px">
            <td align="center" valign="top">
            <% 
                Dim tController As String = ViewData("CtrlBrwMaster")
                Dim oData As IEnumerable(Of cmlCNBrowseMaster)
                oData = ViewData("oC_BrwMaster")
                Dim gridDataWahBuilder = Html.Telerik().Grid(oData).HtmlAttributes(New With {.style = "table-layout: fixed;white-space:nowrap;font:Tahoma, Geneva, sans-serif;font-size:11px"})
                                             gridDataWahBuilder.Name("GridBrwMasWah")
                gridDataWahBuilder.Pageable(Function(page) page.PageSize(Session("nVB_CNBrwTop")))
                'gridBuilder.Sortable()
                If 1 <= nDataMasWah Then
                    gridDataWahBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField01) _
                                                .Title(aCapMasWah(0)).Width(nWidthMasWah(0)) _
                                                .HeaderHtmlAttributes(New With {.align = "center"}) _
                                                .HtmlAttributes(New With {.style = aTextAlignWah(0)}))
                End If
                If 2 <= nDataMasWah Then
                    gridDataWahBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField02) _
                                                .Title(aCapMasWah(1)).Width(nWidthMasWah(1)) _
                                                .HtmlAttributes(New With {.style = aTextAlignWah(1)}).ToString) '.Format("{0:dd/MM/yyyy}")
                End If
                If 3 <= nDataMasWah Then
                    gridDataWahBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField03) _
                                                .Title(aCapMasWah(2)).Width(nWidthMasWah(2)) _
                                                .HtmlAttributes(New With {.style = aTextAlignWah(2)}))
                End If
                If 4 <= nDataMasWah Then
                    gridDataWahBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField04) _
                                                .Title(aCapMasWah(3)).Width(nWidthMasWah(3)) _
                                                .HtmlAttributes(New With {.style = aTextAlignWah(3)}) _
                                                .Format("{0:#,##0." & StrDup(Session("nVB_CNDecAmtForShw"), "0") & "}"))
                End If
                If 5 <= nDataMasWah Then
                    gridDataWahBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField05) _
                                                .Title(aCapMasWah(4)).Width(nWidthMasWah(4)) _
                                                .HtmlAttributes(New With {.style = aTextAlignWah(4)}))
                End If
                If 6 <= nDataMasWah Then
                    gridDataWahBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField06) _
                                                .Title(aCapMasWah(5)).Width(nWidthMasWah(5)) _
                                                .HtmlAttributes(New With {.style = aTextAlignWah(5)}))
                End If
                If 7 <= nDataMasWah Then
                    gridDataWahBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField07) _
                                                .Title(aCapMasWah(6)).Width(nWidthMasWah(6)) _
                                                .HtmlAttributes(New With {.style = aTextAlignWah(6)}))
                End If
                If 8 <= nDataMasWah Then
                    gridDataWahBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField08) _
                                                .Title(aCapMasWah(7)).Width(nWidthMasWah(7)) _
                                                .HtmlAttributes(New With {.style = aTextAlignWah(7)}))
                End If
                If 9 <= nDataMasWah Then
                    gridDataWahBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField09) _
                                                .Title(aCapMasWah(8)).Width(nWidthMasWah(8)) _
                                                .HtmlAttributes(New With {.style = aTextAlignWah(8)}))
                End If
                If 10 <= nDataMasWah Then
                    gridDataWahBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField10) _
                                                .Title(aCapMasWah(9)).Width(nWidthMasWah(9)) _
                                                .HtmlAttributes(New With {.style = aTextAlignWah(9)}))
                End If
                        
                gridDataWahBuilder.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                    .Select("ogdMaster_SelectAjaxEditing", tController, _
                            New With {.ptDate = "", _
                                    .ptFilterField = ViewData("FilterField"), _
                                    .ptFilterValue = ViewData("FilterValue"), _
                                    .ptCase = "St"})))
                       
                gridDataWahBuilder.DataKeys(Function(keys) (keys.Add(Function(c) c.FTField01)))
                gridDataWahBuilder.Selectable()
                gridDataWahBuilder.Scrollable(Function(Scroll) Scroll.Height(350))
                gridDataWahBuilder.ClientEvents(Function(Events) Events.OnRowSelect("onRowSelectedMasterWah"))
                gridDataWahBuilder.ClientEvents(Function(Events) Events.OnLoad("GridMasterWah_onLoad"))
                gridDataWahBuilder.Render()
                %>
            </td>
        </tr>
    </table>
    <table border="1" width="100%">
        <tr>
            <td style="text-align:left">
                <label id="olaFilterWah"><%=ViewData("olaFilterBy")%></label>
            </td>
            <td style="width:70px; text-align:center">
                <input id="ocmSelectData" type = "button"  
                    value = '<%=ViewData("olaOK") %>' 
                    onclick = "W_SETxSelectedDataMaster(tW_ObjCodeWah,tW_ObjNameWah,tW_CaseWah,'1')" 
                    style="width:55px;" />
            </td>
        </tr>
        <tr>
            <td style="text-align:left">                            
                <input type = "text" id="otbFilterWahData" 
                        maxlength="400" style=" width:77.5%" 
                        onkeydown="otbFilterWahDataMaster_onkeyDown(event.keyCode,event.which)" 
                        name="otbFilterWahData" />
                <input type = "hidden" value = '<%=ViewData("CtrlName")%>' id="otbCtrlData" name="otbCtrlData"/>
                <input type = "hidden" value = "" id="otbWahFieldName" name="otbWahFieldName" />
                <input type = "button" value = '<%=ViewData("olaFil") %>' onclick="W_PRCxFillWahData()" />                            
            </td>
            <td style="text-align:center">
                <input id="ocmCancelData" type = "button" 
                    value = '<%=ViewData("olaCancel")%>'
                    onclick ="W_SETxSelectedDataMaster('','',tW_CaseWah,'2')" 
                    style="width:55px;" />
            </td>
        </tr>                
    </table>
    <script type="text/javascript">
        //#### ตัวแปรกลาง ####
        var nW_DecAmtForShw = '<%=Session("nVB_CNDecAmtForShw")%>';
        var aCapMasWah = [];
        var aFieldMasWah = [];
        var tW_CaseWah;
        var tW_ObjCodeWah;
        var tW_ObjNameWah;
        var tW_StaSelect = 'N';//สถานการเลือกข้อมูล

        function C_SETxObjValueWah(ptObjCode,ptObjName){
            tW_ObjCodeWah = ptObjCode;
            tW_ObjNameWah = ptObjName;
        }
        function onRowSelectedMasterWah(peParam) {
            aCapMasWah = [];
            aFieldMasWah = [];
            <%For nI = 0 To 9 %>
                aCapMasWah['<%=nI%>'] = '<%=aCapMasWah(nI)%>';
                aFieldMasWah['<%=nI%>'] = '<%=aFieldMasWah(nI)%>';
            <%Next %>  
            J015_SETxFieldFilter('GridBrwMasWah','otbWahFieldName','olaFilterWah',
                                    '<%=ViewData("olaFilterBy")%>',aCapMasWah,aFieldMasWah);
            J015_onRowSelected(peParam, '<%=nDataMasWah%>');                                                
        }
        function GridMasterWah_onLoad() {
            tW_CaseWah = '<%=model.tCase%>';
            aCapMasWah = [];
            aFieldMasWah = [];
            <%For nI = 0 To 9 %>
                aCapMasWah['<%=nI%>'] = '<%=aCapMasWah(nI)%>';
                aFieldMasWah['<%=nI%>'] = '<%=aFieldMasWah(nI)%>';
            <%Next %>                        
            $('#GridBrwMasWah tr', this.element).live('dblclick', function(e) {
                var $tr = $(this);
                //J015_SETxSelectData(tJ015_ReturnValue,'FTPdtSUnit','FTPunName');                
                 if(tW_StaSelect == 'N'){ W_SETxSelectedDataMaster(tW_ObjCodeWah,tW_ObjNameWah,tW_CaseWah,'1'); tW_StaSelect = 'Y';}
            });
            J015_GridBrwUI_onLoad('GridBrwMasWah','otbWahFieldName','olaFilterWah',
                                    '<%=ViewData("olaFilterBy")%>',aCapMasWah,aFieldMasWah);     
            $('#FTField04').val(J002_DECcRound($('#FTField04').val(), nW_DecAmtForShw, true));                   
        }   
        function W_PRCxFillWahData(){
            J015_PRCxFillData('GridBrwMasWah','otbWahFieldName','otbFilterWahData',tW_CaseWah);  
            tW_StaSelect = 'N';                     
        }
        
        //### KeyDown & OnBlur
        function otbFilterWahDataMaster_onkeyDown(ptKeyCode, ptWhich) {
            var tKey = ptKeyCode;
            if (ptWhich != null && ptWhich != '') { tKey = ptWhich; }
            if (tKey == 13) { W_PRCxFillWahData(); } //กรองข้อมูล
        } 
    </script>