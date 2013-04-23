<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim oCulture As System.Globalization.CultureInfo
        If Session("tVB_LastLang") Is Nothing OrElse Session("tVB_LastLang") = "" Then
            oCulture = New System.Globalization.CultureInfo("EN")
        Else
            oCulture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
        End If
        AdaWebPos.My.Resources.resLCcvcCenter.Culture = oCulture
        
        ViewData("olaError") = AdaWebPos.My.Resources.resLCcvcCenter.olaError
        ViewData("olaErrorMsg") = AdaWebPos.My.Resources.resLCcvcCenter.olaErrorMsg
        ViewData("olaErrorPath") = AdaWebPos.My.Resources.resLCcvcCenter.olaErrorPath
        ViewData("olaDateTime") = AdaWebPos.My.Resources.resLCcvcCenter.olaDateTime
        ViewData("olaBackToMenu") = AdaWebPos.My.Resources.resLCcvcCenter.olaBackToMenu
        
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	<%=ViewData("olaError")%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>
        <%=ViewData("olaErrorMsg")%>
    </h2>
    <br />
    <%=ViewData("olaErrorPath")%> : <%=ViewData("ErrorPath")%>
    <br />
    <%=ViewData("olaDateTime")%> : <%=Format(Now, "dd/MM/yyyy HH:mm:ss")%>
    <br />
    <a href="<%=ViewData("BackPath") %>"><%=ViewData("olaBackToMenu") %></a>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
