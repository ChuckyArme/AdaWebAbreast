<%@ Control Language="VB" Inherits="System.Web.Mvc.ViewUserControl(Of IEnumerable (Of Adasoft.WebPos.Models.cmlCNBrowseMaster))" %>
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
        AdaWebPos.My.Resources.resLCcvcCNBrw.Culture = oCulture
        
        ViewData("olaOK") = AdaWebPos.My.Resources.resLCcvcCNBrw.olaOK
        ViewData("olaCancel") = AdaWebPos.My.Resources.resLCcvcCNBrw.olaCancel
        ViewData("olaFilterBy") = AdaWebPos.My.Resources.resLCcvcCNBrw.olaFilterBy
        ViewData("tMsgSelect") = Resources.resGBMsg.tMsgSelect
        ViewData("olaFilter") = AdaWebPos.My.Resources.resLCcvcCNBrw.olaFilterBy
        ViewData("ovd_olaCstCode") = AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.olaCstCode
        W_SETxLangCulture()
    End Sub
    Sub W_SETxLangCulture()
        'set ภาษา ให้กับ Object Telerik
        Dim oDateTimeInfo As New Globalization.DateTimeFormatInfo
        oDateTimeInfo.ShortDatePattern = "dd/MM/yyyy"
        oDateTimeInfo.ShortTimePattern = "HH:mm:ss"
        oDateTimeInfo.Calendar = New Globalization.GregorianCalendar
        System.Threading.Thread.CurrentThread.CurrentCulture = System.Globalization.CultureInfo.CreateSpecificCulture(Session("tVB_LastLang").ToString)
        System.Threading.Thread.CurrentThread.CurrentUICulture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
        System.Threading.Thread.CurrentThread.CurrentUICulture.DateTimeFormat = oDateTimeInfo
        System.Threading.Thread.CurrentThread.CurrentCulture.DateTimeFormat = oDateTimeInfo
    End Sub
</script>
<head>
    <link href="../../Content/AdaCss/Global/FCS_CNCenter.css" rel="stylesheet" type="text/css" />
        <%--<asp:Content runat="server">--%>
        <div style="margin:2px 0px 0px 0px;width:auto;height:24px;background-color:#e7f2bd;border-color:#336653;">
            <%--<div style="width:50px; height:22px; margin:1px 1px 1px 2px; border:solid 1px transparent;">
                <label id="olaCstCode"><%=ViewData("ovd_olaCstCode")%></label>
            </div>--%>
            <div>
                <label id="olaCstCode" style="width:50px; height:22px; margin:1px 1px 1px 2px; border:solid 1px transparent;">
                        <%=ViewData("ovd_olaCstCode")%></label>
                <input type="text" id ="otbCstCode" style="background-color:#dfe497;border:solid 1px silver;"
                       name ="otbCstCode" readonly="readonly" value="<%=Viewdata("ovd_tCstCode")%>" />
                <input type="text" id ="otbCstName" style="width:70%;background-color:#dfe497;border:solid 1px silver;"
                       name ="otbCstCode" readonly="readonly" value="<%=Viewdata("ovd_tCstName")%>" />
            </div>
            <%--<div style="width:107px;height:18px;float:left;">
                <input type="text" id ="Text1" style="background-color:#dfe497;border:solid 1px silver;"
                       name ="otbCstCode" readonly="readonly" value="<%=Viewdata("ovd_tCstName")%>" />
            </div>--%>
        </div>
        <%--</asp:Content>--%>
</head>
<%Dim mnuNumber As Integer
            Dim nWidth(9) As Integer
            Dim tCaption(9) As String
            Dim tField(9) As String
            Dim nCount As Integer
            For Each item In ViewData("BrowseField")
                mnuNumber = mnuNumber + 1
            Next
            nCount = 0
            For Each item In ViewData("BrowseField")
                tField(nCount) = item
                nCount += 1
            Next
            nCount = 0
            For Each item In ViewData("WidthField")
                nWidth(nCount) = CInt(item * 750 / 100)
                'Response.Write("<script>alert('" & nWidth(nCount) & "')</script>")
                nCount += 1
            Next
            
            nCount = 0
            For Each item In ViewData("Caption")
                tCaption(nCount) = item
                nCount += 1
            Next
            
  
                        
                        
                        
            
            %>
        
        <table>
            <tr style="height:400px">
                <td align="center" valign="top">
        <% 
            Dim tController As String = ViewData("CtrlName")
            Dim gridBuilder = Html.Telerik().Grid(Model).HtmlAttributes(New With {.style = "table-layout: fixed;white-space:nowrap;font:Tahoma, Geneva, sans-serif;font-size:11px"})
            gridBuilder.Name("Grid")
            gridBuilder.Pageable(Function(page) page.PageSize(Session("nVB_CNBrwTop")))
            'gridBuilder.Sortable()
            If 1 <= mnuNumber Then
                gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField01).Title(tCaption(0)).Width(nWidth(0)).HeaderHtmlAttributes(New With {.align = "center"}).HtmlAttributes(New With {.align = "left"}))
            End If
            If 2 <= mnuNumber Then
                gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField02).Title(tCaption(1)).Width(nWidth(1)).HtmlAttributes(New With {.align = "left"}).Format("{0:dd/MM/yyyy}"))
            End If
            If 3 <= mnuNumber Then
                gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField03).Title(tCaption(2)).Width(nWidth(2)).HtmlAttributes(New With {.align = "right"}))
            End If
            If 4 <= mnuNumber Then
                gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField04).Title(tCaption(3)).Width(nWidth(3)).HtmlAttributes(New With {.align = "left"}))
            End If
            If 5 <= mnuNumber Then
                gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField05).Title(tCaption(4)).Width(nWidth(4)).HtmlAttributes(New With {.align = "left"}))
            End If
            If 6 <= mnuNumber Then
                gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField06).Title(tCaption(5)).Width(nWidth(5)).HtmlAttributes(New With {.align = "left"}))
            End If
            If 7 <= mnuNumber Then
                gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField07).Title(tCaption(6)).Width(nWidth(6)).HtmlAttributes(New With {.align = "left"}))
            End If
            If 8 <= mnuNumber Then
                gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField08).Title(tCaption(7)).Width(nWidth(7)).HtmlAttributes(New With {.align = "left"}))
            End If
            If 9 <= mnuNumber Then
                gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField09).Title(tCaption(8)).Width(nWidth(8)).HtmlAttributes(New With {.align = "left"}))
            End If
            If 10 <= mnuNumber Then
                gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField10).Title(tCaption(9)).Width(nWidth(9)).HtmlAttributes(New With {.align = "left"}))
            End If
            
            gridBuilder.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
              .Select("ogdSupplier_SelectAjaxEditing", tController, New With {.ptDate = "", .ptCstCode = ViewData("ovd_tCstCode"), .ptCstName = ViewData("ovd_tCstName"), .ptFilterField = ViewData("FilterField"), .ptFilterValue = ViewData("FilterValue")})))
              
              'ViewData("FilterField") = "" 
              'ViewData("FilterValue") = ""
            'ptTime + '&ptFilterField=' + tField.value + '&ptFilterValue=' + tValue.value;
            
            gridBuilder.DataKeys(Function(keys) (keys.Add(Function(c) c.FTField01)))
            gridBuilder.Selectable()
            gridBuilder.Scrollable(Function(Scroll) Scroll.Height(350))
            gridBuilder.ClientEvents(Function(Events) Events.OnRowSelect("onRowSelected"))
            gridBuilder.ClientEvents(Function(Events) Events.OnLoad("grid_onLoad"))
            gridBuilder.Render()
            %>
                </td>
            </tr>
        </table>
        <script type="text/javascript">
            var tReturnValue ='adasoft';
            function onRowSelected(peParam) {
                var customerID = peParam.row.cells[0].innerHTML;
                for(i=1;i< <%=mnuNumber%>;i++)
                {
                    customerID += ';' + peParam.row.cells[i].innerHTML;
                }
                
                tReturnValue = customerID;
                
               // GetPassedValue(customerID);
            }
            function grid_onLoad() {
                $('#Grid tr', this).live('dblclick', function(e) {
                    var $tr = $(this);
                    //alert('double click ' + $tr.text());
                    //document.getElementById("DBValue").value = $tr.text();
                    GetPassedValue(tReturnValue);
                    window.close();
                  })
                $('#Grid th', this.element).live('click', function(e) {
                    var td = this;
                    var oFieldName = document.getElementById('otbFieldName');
                    var columnName = $('#Grid th').eq(td.cellIndex).text();
                    document.getElementById("olaFilter").innerHTML = '<%=ViewData("olaFilterBy") %>' + columnName;
                    switch(columnName){
                        <%For nI = 0 To 9 %>
                            case '<%=tCaption(nI)%>':oFieldName.value = '<%=tField(nI)%>';break;
                        <%Next %>
                    }
                })
            }
            function W_CHKxLoadPartial(){
                var oFieldName = document.getElementById('otbFieldName');
                if (oFieldName.value != ''){
                    loadPartialView('<%=AdaWebPos.cCNSP.SP_GETdDateTimeNow%>','otbCtrlName','otbCstCode','otbCstName','otbFieldName','otbFilter');
                } else {
                    alert('<%=ViewData("tMsgSelect") %>');
                }
            }
        </script>
        <table border="1" width="100%">
            <tr>
                <td style="text-align:left">
                    <label id="olaFilter"><%=ViewData("olaFilterBy")%></label>
                </td>
                <td style="width:70px; text-align:center">
                    <input type = "button"  value = '<%=ViewData("olaOK") %>' onclick = "GetPassedValue(tReturnValue);window.close();" style="width:55px;" />
                </td>
            </tr>
            <tr>
                <td style="text-align:left">
                    
                    <input type =  "text"  value = "" id="otbFilter" maxlength="400" style=" width:400px" name="otbFilter" />
                    <input type = "hidden"  value = '<%=ViewData("CtrlName")%>' id="otbCtrlName" name="otbCtrlName"/>
                    <input type = "hidden"  value = "" id="otbFieldName" name="otbFieldName" />
                    <input type = "button"  value = '<%=ViewData("olaFilter") %>' onclick="W_CHKxLoadPartial()" />
                    
                </td>
                <td style="text-align:center">
                    <input type = "button" value = '<%=ViewData("olaCancel") %>' onclick = "{window.close();GetPassedValue('adasoft');}" style="width:55px;" />
                </td>
            </tr>
            
        </table>
        
         


    <%=Html.Telerik().StyleSheetRegistrar().DefaultGroup(Function(group) group.Add("Site.css")).DefaultGroup(Function(group) _
                                                                          group.Add("telerik.common.css")).DefaultGroup(Function(group) group.Add("telerik.forest.css"))%>
