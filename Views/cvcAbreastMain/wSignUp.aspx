<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/SiteMain.Master" Inherits="System.Web.Mvc.ViewPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	<%=ViewData("tSignUp")%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class='xW_DivDetail'>
        <%Html.RenderPartial("uSetting\uSignUp")%>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
<script type="text/javascript">
    window.moveTo(0, 0);
    window.onload = W_FRMxOnload;
    function W_FRMxOnload() {
        tW_StaPage = '2';
        $('#odiDetailMaster').removeClass("xW_DivDetail2");
        $('#odiDetailMaster').addClass("xW_DivDetail1");
        W_SETxIniatial();
    }
</script>
</asp:Content>


<%--<%@ Page Language="VB" Inherits="System.Web.Mvc.ViewPage" %>
<html>
<head>
</head>
<body class="xW_Body xCN_AllFontFamily xCN_AllFontSize xW_SizePage">
<%Html.RenderPartial("uSetting\uSignUp")%>
</body>
</html>--%>