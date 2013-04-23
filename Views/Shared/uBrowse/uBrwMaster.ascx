<%@ Control Language="VB" Inherits="System.Web.Mvc.ViewUserControl(Of Adasoft.WebPos.Models.cmlDataBrwMaster)" %>
<%@ Import Namespace="Adasoft.WebPos.Models" %>
<%@ Import Namespace="Adasoft.WebPos" %>
<%@ Import Namespace="System.Resources" %>
<%--<%@ Import Namespace="Adasoft.Abreast.StoreBack" %>--%>
<%@ Import Namespace ="System.IO" %>

<%                                          
        Dim nDataMas As Integer
        Dim nWidthMas(9) As Integer
        Dim aCaptionMas(9) As String
    Dim aFieldMas(9) As String
    Dim nCountMas As Integer
    Dim aTextAlign(10) As String
    Dim oTemp As New List(Of String)
    Dim nHeigthGrid As Integer = 350
    Dim tHeightGrid As String
    Dim nHeightTbl As Integer
    
    If ViewData("tWidthGrid") = "" Then
        nHeightTbl = 400
    Else
        tHeightGrid = "height:200px;width:100%;" 'ViewData("tWidthGrid")        
        nHeigthGrid = 180
        nHeightTbl = 230
    End If
    
    For Each item In Model.BrwFieldName 'ViewData("BrowseDataMaster")
        aFieldMas(nCountMas) = item
        nDataMas = nDataMas + 1
        nCountMas += 1
    Next
    nCountMas = 0
    For Each item In Model.BrwColSize 'ViewData("WidthMaster")
        nWidthMas(nCountMas) = CInt(item * 750 / 100)
        nCountMas += 1
    Next
                
    nCountMas = 0
    For Each item In Model.BrwCaption 'ViewData("CaptionMaster")
        aCaptionMas(nCountMas) = item
        nCountMas += 1
    Next
    
    nCountMas = 0
    oTemp = Model.TextAlign
    For i As Integer = 0 To 9
        If i >= oTemp.Count Then
            aTextAlign(nCountMas) = "text-align:left"
        Else
            aTextAlign(nCountMas) = "text-align:" & oTemp(i)
        End If
        nCountMas += 1
    Next
        %>
            
    <table width="100%">
        <tr style="height:<%=nHeightTbl%>px;">
            <td align="center" valign="top">
            <% 
                Dim tController As String = ViewData("CtrlBrwMaster")
                Dim oData As IEnumerable(Of cmlCNBrowseMaster)
                oData = ViewData("oC_BrwMaster")
                Dim gridDataBuilder = Html.Telerik().Grid(oData).HtmlAttributes(New With {.style = "table-layout: fixed;white-space:nowrap;font:Tahoma, Geneva, sans-serif;font-size:11px;" & tHeightGrid})
                                          gridDataBuilder.Name("GridBrwMas")
                gridDataBuilder.Pageable(Function(page) page.PageSize(Session("nVB_CNBrwTop")))
                'gridBuilder.Sortable()
                If 1 <= nDataMas Then
                    gridDataBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField01) _
                                                .Title(aCaptionMas(0)).Width(nWidthMas(0)) _
                                                .HeaderHtmlAttributes(New With {.align = "center"}) _
                                                .HtmlAttributes(New With {.style = aTextAlign(0)}))
                End If
                If 2 <= nDataMas Then
                    gridDataBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField02) _
                                                .Title(aCaptionMas(1)).Width(nWidthMas(1)) _
                                                .HtmlAttributes(New With {.style = aTextAlign(1)}).ToString) '.Format("{0:dd/MM/yyyy}")
                End If
                If 3 <= nDataMas Then
                    gridDataBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField03) _
                                                .Title(aCaptionMas(2)).Width(nWidthMas(2)) _
                                                .HtmlAttributes(New With {.style = aTextAlign(2)}))
                End If
                If 4 <= nDataMas Then
                    gridDataBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField04) _
                                                .Title(aCaptionMas(3)).Width(nWidthMas(3)) _
                                                .HeaderHtmlAttributes(New With {.name = "Field04"}) _
                                                .HtmlAttributes(New With {.style = aTextAlign(3)}))
                End If
                If 5 <= nDataMas Then
                    gridDataBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField05) _
                                                .Title(aCaptionMas(4)).Width(nWidthMas(4)) _
                                                .HtmlAttributes(New With {.style = aTextAlign(4)}))
                End If
                If 6 <= nDataMas Then
                    gridDataBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField06) _
                                                .Title(aCaptionMas(5)).Width(nWidthMas(5)) _
                                                .HtmlAttributes(New With {.style = aTextAlign(5)}))
                End If
                If 7 <= nDataMas Then
                    gridDataBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField07) _
                                                .Title(aCaptionMas(6)).Width(nWidthMas(6)) _
                                                .HtmlAttributes(New With {.style = aTextAlign(6)}))
                End If
                If 8 <= nDataMas Then
                    gridDataBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField08) _
                                                .Title(aCaptionMas(7)).Width(nWidthMas(7)) _
                                                .HtmlAttributes(New With {.style = aTextAlign(7)}))
                End If
                If 9 <= nDataMas Then
                    gridDataBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField09) _
                                                .Title(aCaptionMas(8)).Width(nWidthMas(8)) _
                                                .HtmlAttributes(New With {.style = aTextAlign(8)}))
                End If
                If 10 <= nDataMas Then
                    gridDataBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField10) _
                                                .Title(aCaptionMas(9)).Width(nWidthMas(9)) _
                                                .HtmlAttributes(New With {.style = aTextAlign(9)}))
                End If
                        
                gridDataBuilder.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                    .Select("ogdMaster_SelectAjaxEditing", tController, _
                            New With {.ptDate = "", _
                                    .ptFilterField = ViewData("FilterField"), _
                                    .ptFilterValue = ViewData("FilterValue"), _
                                    .ptCase = "St"})))
                       
                gridDataBuilder.DataKeys(Function(keys) (keys.Add(Function(c) c.FTField01)))
                gridDataBuilder.Selectable()
                gridDataBuilder.Scrollable(Function(Scroll) Scroll.Height(nHeigthGrid))
                gridDataBuilder.ClientEvents(Function(Events) Events.OnRowSelect("onRowSelectedMaster"))
                gridDataBuilder.ClientEvents(Function(Events) Events.OnLoad("GridMaster_onLoad"))
                gridDataBuilder.Render()
                %>
            </td>
        </tr>
    </table>
    <table border="1" width="100%">
        <tr>
            <td style="text-align:left">
                <label id="olaFilter"><%=ViewData("olaFilterBy")%></label>
            </td>
            <td style="width:70px; text-align:center">
                <input id="ocmSelectData" type = "button"  
                    value = '<%=ViewData("olaOK") %>' 
                    onclick = "W_SETxSelectedDataMaster(tW_ObjCode,tW_ObjName,tW_Case,'1')" 
                    style="width:55px;" />
            </td>
        </tr>
        <tr>
            <td style="text-align:left">                            
                <input type = "text" id="otbFilterData" 
                        maxlength="400" style=" width:77.5%" 
                        onkeydown="otbFilterDataMaster_onkeyDown(event.keyCode,event.which)" 
                        name="otbFilterData" />
                <input type = "hidden" value = '<%=ViewData("CtrlName")%>' id="otbCtrlData" name="otbCtrlData"/>
                <input type = "hidden" value = "" id="otbFieldName" name="otbFieldName" />
                <input type = "button" value = '<%=ViewData("olaFil") %>' onclick="W_PRCxFillData()" />                            
            </td>
            <td style="text-align:center">
                <input id="ocmCancelData" type = "button" 
                    value = '<%=ViewData("olaCancel")%>' 
                    onclick ="W_SETxSelectedDataMaster('','',tW_Case,'2')"
                    style="width:55px;" />
            </td>
        </tr>
                
    </table>
    <script type="text/javascript">
        //#### ตัวแปรกลาง ####
        var nW_DecAmtForShw = '<%=Session("nVB_CNDecAmtForShw")%>';
        var aCap = [];
        var aFieldMas = [];
        var tW_Case;
        var tW_ObjCode;
        var tW_ObjName;
        var tW_StaSelect = 'N';//สถานการเลือกข้อมูล

        function C_SETxObjValue(ptObjCode,ptObjName){
            tW_ObjCode = ptObjCode;
            tW_ObjName = ptObjName;
        }
        function onRowSelectedMaster(peParam) {
            aCap = [];
            aFieldMas = [];
            <%For nI = 0 To 9 %>
                aCap['<%=nI%>'] = '<%=aCaptionMas(nI)%>';
                aFieldMas['<%=nI%>'] = '<%=aFieldMas(nI)%>';
            <%Next %>  
            J015_SETxFieldFilter('GridBrwMas','otbFieldName','olaFilter',
                                    '<%=ViewData("olaFilterBy")%>',aCap,aFieldMas);
            J015_onRowSelected(peParam, '<%=nDataMas%>');                                                
        }
        function GridMaster_onLoad() {
            tW_Case = '<%=model.tCase%>';
            aCap = [];
            aFieldMas = [];
            <%For nI = 0 To 9 %>
                aCap['<%=nI%>'] = '<%=aCaptionMas(nI)%>';
                aFieldMas['<%=nI%>'] = '<%=aFieldMas(nI)%>';
            <%Next %>                        
            $('#GridBrwMas tr', this.element).live('dblclick', function(e) {
                var $tr = $(this);
                //J015_SETxSelectData(tJ015_ReturnValue,'FTPdtSUnit','FTPunName');
                if(tW_StaSelect == 'N'){ W_SETxSelectedDataMaster(tW_ObjCode,tW_ObjName,tW_Case,'1'); tW_StaSelect = 'Y';}
            });
            J015_GridBrwUI_onLoad('GridBrwMas','otbFieldName','olaFilter',
                                    '<%=ViewData("olaFilterBy")%>',aCap,aFieldMas);                        
        }   
        function W_PRCxFillData(){
            J015_PRCxFillData('GridBrwMas','otbFieldName','otbFilterData',tW_Case);               
            W_SETxFmtField();//*CH 18-01-2013 กำหนดรูปแบบในฟิวล์     
            tW_StaSelect = 'N';                
        }

        //ยกเลิก/เคลียร์ ข้อมูลในตารางออก
        function W_CLSxCleanGridData(){
            $('#otbFilterData').val('');
            J015_PRCxFillData('GridBrwMas','otbFieldName','otbFilterData','St');
            tW_StaSelect = 'N';                
        }
        
        //### KeyDown & OnBlur
        function otbFilterDataMaster_onkeyDown(ptKeyCode, ptWhich) {
            var tKey = ptKeyCode;
            if (ptWhich != null && ptWhich != '') { tKey = ptWhich; }
            if (tKey == 13) { W_PRCxFillData(); } //กรองข้อมูล
        } 

        function W_SETxFmtField(){
            switch (tW_Case.toUpperCase()){
                case 'Rat'.toUpperCase() :
                    $('#Field04').val(J002_DECcRound($('#Field04').val(), nW_DecAmtForShw, true));
            }
        }
    </script>