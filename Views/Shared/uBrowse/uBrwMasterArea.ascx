<%@ Control Language="VB" Inherits="System.Web.Mvc.ViewUserControl(Of Adasoft.WebPos.Models.cmlDataBrwMaster)" %>
<%@ Import Namespace="Adasoft.WebPos.Models" %>
<%@ Import Namespace="Adasoft.WebPos" %>
<%@ Import Namespace="System.Resources" %>
<%--<%@ Import Namespace="Adasoft.Abreast.StoreBack" %>--%>
<%@ Import Namespace ="System.IO" %>

<%                                          
        Dim nDataMasArea As Integer
        Dim nWidthMasArea(9) As Integer
        Dim aCaptionMasArea(9) As String
                            Dim aFieldMasArea(9) As String
    Dim nCountMasArea As Integer
    Dim aTextAlignArea(10) As String
    Dim oTempArea As New List(Of String)
    
    '### Size Grid ### '*CH 13-03-2013
    Dim nHeigthGridArea As Integer = 350
    Dim nHeightTblArea As Integer = 400
    Dim tSizeGridArea As String
    If ViewData("tWidthGrid") <> "" Then
        tSizeGridArea = "height:200px;width:100%;" 'ViewData("tWidthGrid")        
        nHeigthGridArea = 180
        nHeightTblArea = 230
    End If
    
    For Each item In Model.BrwFieldName 'ViewData("BrowseDataMaster")
        aFieldMasArea(nCountMasArea) = item
        nDataMasArea = nDataMasArea + 1
        nCountMasArea += 1
    Next
    nCountMasArea = 0
    For Each item In Model.BrwColSize 'ViewData("WidthMaster")
        nWidthMasArea(nCountMasArea) = CInt(item * 750 / 100)
        nCountMasArea += 1
    Next
                
    nCountMasArea = 0
    For Each item In Model.BrwCaption 'ViewData("CaptionMaster")
        aCaptionMasArea(nCountMasArea) = item
        nCountMasArea += 1
    Next
    
    nCountMasArea = 0
    oTempArea = Model.TextAlign
    For i As Integer = 0 To 9
        If i >= oTempArea.Count Then
            aTextAlignArea(nCountMasArea) = "text-align:left"
        Else
            aTextAlignArea(nCountMasArea) = "text-align:" & oTempArea(i)
        End If
        nCountMasArea += 1
    Next
        %>
            
    <table width="100%">
        <tr style="height:<%=nHeightTblArea%>px">
            <td align="center" valign="top">
            <% 
                Dim tController As String = ViewData("CtrlBrwMaster")
                Dim oData As IEnumerable(Of cmlCNBrowseMaster)
                oData = ViewData("oC_BrwMaster")
                Dim gridDataAreaBuilder = Html.Telerik().Grid(oData).HtmlAttributes(New With {.style = "table-layout: fixed;white-space:nowrap;font:Tahoma, Geneva, sans-serif;font-size:11px;" & tSizeGridArea})
                gridDataAreaBuilder.Name("GridBrwMasArea")
                gridDataAreaBuilder.Pageable(Function(page) page.PageSize(Session("nVB_CNBrwTop")))
                'gridBuilder.Sortable()
                If 1 <= nDataMasArea Then
                    gridDataAreaBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField01) _
                                                .Title(aCaptionMasArea(0)).Width(nWidthMasArea(0)) _
                                                .HeaderHtmlAttributes(New With {.align = "center"}) _
                                                .HtmlAttributes(New With {.style = aTextAlignArea(0)}))
                End If
                If 2 <= nDataMasArea Then
                    gridDataAreaBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField02) _
                                                .Title(aCaptionMasArea(1)).Width(nWidthMasArea(1)) _
                                                .HtmlAttributes(New With {.style = aTextAlignArea(1)}).ToString) '.Format("{0:dd/MM/yyyy}")
                End If
                If 3 <= nDataMasArea Then
                    gridDataAreaBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField03) _
                                                .Title(aCaptionMasArea(2)).Width(nWidthMasArea(2)) _
                                                .HtmlAttributes(New With {.style = aTextAlignArea(2)}))
                End If
                If 4 <= nDataMasArea Then
                    gridDataAreaBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField04) _
                                                .Title(aCaptionMasArea(3)).Width(nWidthMasArea(3)) _
                                                .HtmlAttributes(New With {.style = aTextAlignArea(3)}) _
                                                .Format("{0:#,##0." & StrDup(Session("nVB_CNDecAmtForShw"), "0") & "}"))
                End If
                If 5 <= nDataMasArea Then
                    gridDataAreaBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField05) _
                                                .Title(aCaptionMasArea(4)).Width(nWidthMasArea(4)) _
                                                .HtmlAttributes(New With {.style = aTextAlignArea(4)}))
                End If
                If 6 <= nDataMasArea Then
                    gridDataAreaBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField06) _
                                                .Title(aCaptionMasArea(5)).Width(nWidthMasArea(5)) _
                                                .HtmlAttributes(New With {.style = aTextAlignArea(5)}))
                End If
                If 7 <= nDataMasArea Then
                    gridDataAreaBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField07) _
                                                .Title(aCaptionMasArea(6)).Width(nWidthMasArea(6)) _
                                                .HtmlAttributes(New With {.style = aTextAlignArea(6)}))
                End If
                If 8 <= nDataMasArea Then
                    gridDataAreaBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField08) _
                                                .Title(aCaptionMasArea(7)).Width(nWidthMasArea(7)) _
                                                .HtmlAttributes(New With {.style = aTextAlignArea(7)}))
                End If
                If 9 <= nDataMasArea Then
                    gridDataAreaBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField09) _
                                                .Title(aCaptionMasArea(8)).Width(nWidthMasArea(8)) _
                                                .HtmlAttributes(New With {.style = aTextAlignArea(8)}))
                End If
                If 10 <= nDataMasArea Then
                    gridDataAreaBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField10) _
                                                .Title(aCaptionMasArea(9)).Width(nWidthMasArea(9)) _
                                                .HtmlAttributes(New With {.style = aTextAlignArea(9)}))
                End If
                        
                gridDataAreaBuilder.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                    .Select("ogdMaster_SelectAjaxEditing", tController, _
                            New With {.ptDate = "", _
                                    .ptFilterField = ViewData("FilterField"), _
                                    .ptFilterValue = ViewData("FilterValue"), _
                                    .ptCase = "St"})))
                       
                gridDataAreaBuilder.DataKeys(Function(keys) (keys.Add(Function(c) c.FTField01)))
                gridDataAreaBuilder.Selectable()
                gridDataAreaBuilder.Scrollable(Function(Scroll) Scroll.Height(nHeigthGridArea))
                gridDataAreaBuilder.ClientEvents(Function(Events) Events.OnRowSelect("onRowSelectedMasterArea"))
                gridDataAreaBuilder.ClientEvents(Function(Events) Events.OnLoad("GridMasterArea_onLoad"))
                gridDataAreaBuilder.ClientEvents(Function(Events) Events.OnDataBound("GridMasterArea_onLoad"))
                gridDataAreaBuilder.Render()
                %>
            </td>
        </tr>
    </table>
    <table border="1" width="100%">
        <tr>
            <td style="text-align:left">
                <label id="olaFilterArea"><%=ViewData("olaFilterBy")%></label>
            </td>
            <td style="width:70px; text-align:center">
                <input type = "button"  
                    value = '<%=ViewData("olaOK") %>' 
                    onclick = "W_SETxSelectedDataMaster(tW_ObjCodeArea,tW_ObjNameArea,tW_CaseArea,'1')" 
                    style="width:55px;" />
            </td>
        </tr>
        <tr>
            <td style="text-align:left">                            
                <input type = "text" id="otbFilterAreaData" 
                        maxlength="400" style=" width:77.5%" 
                        onkeydown="otbFilterAreaDataMaster_onkeyDown(event.keyCode,event.which)" 
                        name="otbFilterAreaData" />
                <input type = "hidden" value = "" id="otbAreaFieldName" name="otbAreaFieldName" />
                <input type = "button" value = '<%=ViewData("olaFil") %>' onclick="W_PRCxFillAreaData()" />                            
            </td>
            <td style="text-align:center">
                <input id="ocmCancelDataArea" type = "button" 
                    value = '<%=ViewData("olaCancel")%>' 
                    onclick ="W_SETxSelectedDataMaster('','',tW_CaseArea,'2')"
                    style="width:55px;" />
            </td>
        </tr>                
    </table>
    <script type="text/javascript">
        //#### ตัวแปรกลาง ####
        var nW_DecAmtForShw = '<%=Session("nVB_CNDecAmtForShw")%>';
        var aCapMasArea = [];
        var aFieldMasArea = [];
        var tW_CaseAreaRate;
        var tW_ObjCodeArea;
        var tW_ObjNameArea;
        var tW_StaSelect = 'N';//สถานการเลือกข้อมูล

        function C_SETxObjValueArea(ptObjCode,ptObjName){
            tW_ObjCodeArea = ptObjCode;
            tW_ObjNameArea = ptObjName;
        }
        function onRowSelectedMasterArea(peParam) {
            aCapMasArea = [];
            aFieldMasArea = [];
            <%For nI = 0 To 9 %>
                aCapMasArea['<%=nI%>'] = '<%=aCaptionMasArea(nI)%>';
                aFieldMasArea['<%=nI%>'] = '<%=aFieldMasArea(nI)%>';
            <%Next %>  
            J015_SETxFieldFilter('GridBrwMasArea','otbAreaFieldName','olaFilterArea',
                                    '<%=ViewData("olaFilterBy")%>',aCapMasArea,aFieldMasArea);
            J015_onRowSelected(peParam, '<%=nDataMasArea%>');                                                
        }
        function GridMasterArea_onLoad() {
            tW_CaseArea = '<%=model.tCase%>';
            aCapMasArea = [];
            aFieldMasArea = [];
            <%For nI = 0 To 9 %>
                aCapMasArea['<%=nI%>'] = '<%=aCaptionMasArea(nI)%>';
                aFieldMasArea['<%=nI%>'] = '<%=aFieldMasArea(nI)%>';
            <%Next %>                        
            $('#GridBrwMasArea tr', this.element).live('dblclick', function(e) {
                var $tr = $(this);
                //J015_SETxSelectData(tJ015_ReturnValue,'FTPdtSUnit','FTPunName');
                if(tW_StaSelect == 'N'){ W_SETxSelectedDataMaster(tW_ObjCodeArea,tW_ObjNameArea,tW_CaseArea,'1'); tW_StaSelect = 'Y';}
            });
            J015_GridBrwUI_onLoad('GridBrwMasArea','otbAreaFieldName','olaFilterArea',
                                    '<%=ViewData("olaFilterBy")%>',aCapMasArea,aFieldMasArea);                    
        }   
        function W_PRCxFillAreaData(){
            J015_PRCxFillData('GridBrwMasArea','otbAreaFieldName','otbFilterAreaData',tW_CaseArea);   
            tW_StaSelect = 'N';                    
        }
        
        //### KeyDown & OnBlur
        function otbFilterAreaDataMaster_onkeyDown(ptKeyCode, ptWhich) {
            var tKey = ptKeyCode;
            if (ptWhich != null && ptWhich != '') { tKey = ptWhich; }
            if (tKey == 13) { W_PRCxFillAreaData(); } //กรองข้อมูล
        } 
    </script>