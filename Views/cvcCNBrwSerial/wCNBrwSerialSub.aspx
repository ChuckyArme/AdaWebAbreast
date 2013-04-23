<%@ Page Language="VB" Inherits="System.Web.Mvc.ViewPage" %>
<%@ Import Namespace="Adasoft.WebPos.Models" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim oCulture As System.Globalization.CultureInfo
        If Session("tVB_LastLang") Is Nothing OrElse Session("tVB_LastLang") = "" Then
            oCulture = New System.Globalization.CultureInfo("EN")
        Else
            oCulture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
        End If
        Resources.resGBBrwSN.Culture = oCulture
        
        ViewData("olaPdtCode") = Resources.resGBBrwSN.olaPdtCode
        ViewData("olaSrnCode") = Resources.resGBBrwSN.olaSrnCode
        ViewData("olaOK") = Resources.resGBBrwSN.olaOK
        ViewData("olaCancel") = Resources.resGBBrwSN.olaCancel
        ViewData("olaSelectAll") = Resources.resGBBrwSN.olaSelectAll
        ViewData("olaDeselectAll") = Resources.resGBBrwSN.olaDeselectAll
        
        W_SETxLangCulture() '*CH 22-05-2012
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
        System.Threading.Thread.CurrentThread.CurrentUICulture.DateTimeFormat = oDateTimeInfo
        System.Threading.Thread.CurrentThread.CurrentCulture.DateTimeFormat = oDateTimeInfo
    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <%=Html.Telerik().StyleSheetRegistrar().DefaultGroup(Function(group) group.Add("Site.css")).DefaultGroup(Function(group) _
                                                                          group.Add("telerik.common.css")).DefaultGroup(Function(group) group.Add("telerik.forest.css"))%>
    <script type="text/javascript">
        function window_onload() {
            returnValue = '';
            W_SETxRebindGrid();
        }
        function W_SETxCheckedAll(ptCheckboxName, pbChecked) {
            try {
                var aElement = document.getElementsByName(ptCheckboxName);
                for (i = 0; i < aElement.length; i++) {
                    aElement.item(i).checked = pbChecked;
                }
            }
            catch (ex) {
                J002_SHWxMsgError('W_SETxCheckedAll', ex);
            }
        }
        function W_DATxCancel() {
            returnValue = '';
            window.close();
        }
        function W_DATxOk() {
            var tReturn = W_GETtSerialListString();
            returnValue = tReturn;
            window.close();
        }
        function W_GETtSerialListString() {
            try {
                var tSerialList = '';
                var aElement = document.getElementsByName('ockSelectSN');
                var aElementSN = document.getElementsByName('otbFTSrnCode');
                for (i = 0; i < aElement.length; i++) {
                    if (aElement.item(i).checked == true) {
                        tSerialList += aElementSN.item(i).value + '|';
                    }
                }
                if (tSerialList != null && tSerialList != '') {
                    tSerialList = tSerialList.substring(0,tSerialList.length - 1);
                }
                return tSerialList;
            }
            catch (ex) {
                J002_SHWxMsgError('W_SETxCheckedAll', ex);
                return '';
            }
        }
        function W_SETxRebindGrid() {
            try {
                var oGrid = $('#GridSerialSub').data('tGrid');
                oGrid.rebind();
            }
            catch (ex) {
                J002_SHWxMsgError("W_SETxRebindGrid", ex);
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
<body style="background-color:#f9fdef;" onload="window_onload()">
    <img alt="" id="oimSessionAlive" width="1" height="1" src="" style="display:none;"/>
    <div>
        <div>
            <%  'declare the grid and enable features
                Dim oDataSerialSub As IEnumerable(Of Adasoft.Abreast.Models.cmlCNBrwSerialSub) = ViewData("DataSerialSub")
                Dim gridBuilderSN = Html.Telerik().Grid(oDataSerialSub) _
                            .Name("GridSerialSub") _
                            .HtmlAttributes(New With {.style = "width:auto;margin:10px 10px 10px 10px;"}) _
                            .Scrollable(Function(o) o.Height(300)) _
                            .Footer(False) _
                            .Selectable()
                                                                       
                
                                                                      
                'Add grid columns
                gridBuilderSN.Columns(Function(columns) columns.Bound(Function(o) o.FTSrnCode).Title("").Width(40) _
                       .ClientTemplate("<input type='checkbox' name='ockSelectSN' /><input name='otbFTSrnCode' type='hidden' value='<#=FTSrnCode#>' />") _
                       .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                       .HtmlAttributes(New With {.style = "text-align:center;padding:0px 0px 0px 0px; font-size:12px;"}))
                gridBuilderSN.Columns(Function(columns) columns.Bound(Function(o) o.FTPdtCode).Title(ViewData("olaPdtCode")).Width(180) _
                       .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                       .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                gridBuilderSN.Columns(Function(columns) columns.Bound(Function(o) o.FTSrnCode).Title(ViewData("olaSrnCode")) _
                       .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                       .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                gridBuilderSN.DataKeys(Function(Key) Key.Add(Function(model) model.FTSrnCode))
                gridBuilderSN.DataBinding(Function(databinding) (databinding.Ajax() _
                        .Select("C_DATxBindingSerialSub", "cvcCNBrwSerial") _
                        ))
                           
                                                                                                                   
                'Render the grid
                gridBuilderSN.Render()
            %>
        </div>
        <div style="width:auto;height:auto;margin:10px 10px 10px 10px;">
            <div style="height:25px;padding:5px 0px 5px 0px;background-color:#d1deb6;border:solid 1px black;">
                <div style="width:25%;float:left;text-align:center;">
                    <input type="button" value="<%=ViewData("olaSelectAll") %>" onclick="W_SETxCheckedAll('ockSelectSN', true);" style="width:100px;" />
                </div>
                <div style="width:25%;float:left;text-align:center;">
                    <input type="button" value="<%=ViewData("olaDeselectAll") %>" onclick="W_SETxCheckedAll('ockSelectSN', false);" style="width:100px;" />
                </div>
                <div style="width:25%;float:left;text-align:center;">
                    <input type="button" value="<%=ViewData("olaOK") %>" onclick="W_DATxOk();" style="width:100px;" />
                </div>
                <div style="width:25%;float:left;text-align:center;">
                    <input type="button" value="<%=ViewData("olaCancel") %>" onclick="W_DATxCancel();" style="width:100px;" />
                </div>
            </div>
        </div>
    </div>
    <%  
        Html.Telerik().ScriptRegistrar() _
            .DefaultGroup(Function(group) group.Add("telerik.examples.js") _
            .Compress(True)) _
            .OnDocumentReady("prettyPrint") _
            .Render()
    %>
</body>
</html>
