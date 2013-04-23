<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="wReport.aspx.vb" Inherits="AdaWebPos.wReport" %>

<%@ Register Assembly="Stimulsoft.Report.WebDesign" Namespace="Stimulsoft.Report.Web"
    TagPrefix="cc2" %>

<%@ Register Assembly="Stimulsoft.Report.Web" Namespace="Stimulsoft.Report.Web" TagPrefix="cc1" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <script language="javascript" type="text/javascript">
        function window_onload() {
            window.moveTo(0, 0);
            window.resizeTo(1024, 768);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <cc2:StiWebDesigner ID="StiWebDesigner1" runat="server" ServerTimeout="00:30:00" />
            &nbsp;<cc1:StiWebViewer ID="StiWebViewer1" runat="server" Height="768px"
                    PageBorderColorDark="White" PageBorderColorLight="White" 
                    ShowViewMode="false" RenderMode="UseCache" Width="1024px" 
                    HtmlShowDialog="false" PrintDestination="Direct" />
        </div>
    </form>
    
</body>
</html>
