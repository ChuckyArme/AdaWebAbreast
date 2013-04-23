<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage(Of AdaWebPos.C_TCNMZone)" %>
<%@ Import Namespace="System.Resources" %>
<%@ Import Namespace="AdaWebPos" %>
<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tLastLang As String = Session("tVB_LastLang")

        If tLastLang Is Nothing AndAlso tLastLang = "" Then
            AdaWebPos.My.Resources.resLCcvcZone.Culture = New System.Globalization.CultureInfo("EN")
            Resources.resGBMsg.Culture = New System.Globalization.CultureInfo("EN")
        Else
            AdaWebPos.My.Resources.resLCcvcZone.Culture = New System.Globalization.CultureInfo(tLastLang)
            Resources.resGBMsg.Culture = New System.Globalization.CultureInfo(tLastLang)
        End If
        
        ViewData("olaRowID") = AdaWebPos.My.Resources.resLCcvcZone.olaRowID
        ViewData("olaCanEdit") = AdaWebPos.My.Resources.resLCcvcZone.olaCanEdit
        ViewData("olaCanSave") = AdaWebPos.My.Resources.resLCcvcZone.olaCanSave
        ViewData("olaCreate") = AdaWebPos.My.Resources.resLCcvcZone.olaCreate
        ViewData("olaFNZneLevel") = AdaWebPos.My.Resources.resLCcvcZone.olaFNZneLevel
        ViewData("olaFTZneChainName") = AdaWebPos.My.Resources.resLCcvcZone.olaFTZneChainName
        ViewData("olaFTZneCode") = AdaWebPos.My.Resources.resLCcvcZone.olaFTZneCode
        ViewData("olaFTZneID") = AdaWebPos.My.Resources.resLCcvcZone.olaFTZneID
        ViewData("olaFTZneName") = AdaWebPos.My.Resources.resLCcvcZone.olaFTZneName
        ViewData("olaFTZneParentID") = AdaWebPos.My.Resources.resLCcvcZone.olaFTZneParentID
        ViewData("olaFTZneRmk") = AdaWebPos.My.Resources.resLCcvcZone.olaFTZneRmk
        ViewData("olaMenuName") = AdaWebPos.My.Resources.resLCcvcZone.olaMenuName
        ViewData("olaNotAccess") = AdaWebPos.My.Resources.resLCcvcZone.olaNotAccess
        ViewData("olaReport") = AdaWebPos.My.Resources.resLCcvcZone.olaReport
        ViewData("olaHeaderEdit") = AdaWebPos.My.Resources.resLCcvcZone.olaHeaderEdit
        ViewData("olaHeaderAdd") = AdaWebPos.My.Resources.resLCcvcZone.olaHeaderAdd
        ViewData("olaHeaderDetail") = AdaWebPos.My.Resources.resLCcvcZone.olaHeaderDetail
        ViewData("olaHeaderList") = AdaWebPos.My.Resources.resLCcvcZone.olaHeaderList
        ViewData("olaDetail") = AdaWebPos.My.Resources.resLCcvcZone.olaDetail
        
        
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
<%=ViewData("olaHeaderEdit")%></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <form id="form1" runat="server">

    <%  ViewData("wName") = "Edit"%>
    <h2><%=ViewData("olaMenuName") %></h2>
    
    <%--The line below is a workaround for a VB / ASPX designer bug--%>
    <%=""%>

     <% Using Html.BeginForm("C_Edit", "cvcZone", FormMethod.Post, New With {.collection = "dat_TCNMZone"})%>

        <fieldset>
        <div>
              <input type="submit" value='<%=ViewData("olaCanSave") %>' style="width:100px"/>
              <input type ="button" value ='<%=ViewData("olaHeaderList") %>'  onclick ="window.location='Index'" style="width:100px" />
        
        </div>
             <legend><%=ViewData("olaHeaderEdit")%></legend>
            
            <div class="editor-label">

            <table>
                <tr>
                    <td>
                       <%=ViewData("olaFTZneCode")%>
                    </td>
                    <td>
                        <%=Html.TextBoxFor(Function(model) model.FTZneCode, New With {.readonly = "readonly", .style = "background-color:#FC9"})%>
                        <%=Html.ValidationMessageFor(Function(model) model.FTZneCode)%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%=ViewData("olaFTZneID")%>
                    </td>
                    <td>
                        <%=Html.TextBoxFor(Function(model) model.FTZneID)%>
                        <%=Html.ValidationMessageFor(Function(model) model.FTZneID)%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%=ViewData("olaFTZneName")%>
                    </td>
                    <td style="padding: inherit; margin: inherit; background-repeat: repeat; background-position: center center">
                        <%=Html.TextBoxFor(Function(model) model.FTZneName)%>
                        <%=Html.ValidationMessageFor(Function(model) model.FTZneName)%>
                    </td>
                </tr>
               <tr>
                    <td>
                        <%=ViewData("olaFNZneLevel")%>
                    </td>
                    <td>
                        <%=Html.TextBoxFor(Function(model) model.FNZneLevel)%>
                        <%=Html.ValidationMessageFor(Function(model) model.FNZneLevel)%>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <%=ViewData("olaFTZneParentID")%>
                    </td>
                    <td>
                        <%=Html.TextBoxFor(Function(model) model.FTZneParentID)%>
                        <%=Html.ValidationMessageFor(Function(model) model.FTZneParentID)%>
                    </td>
                </tr> 
                <tr>
                    <td>
                        <%=ViewData("olaFTZneChainName")%>
                    </td>
                    <td>
                        <%=Html.TextBoxFor(Function(model) model.FTZneChainName)%>
                        <%=Html.ValidationMessageFor(Function(model) model.FTZneChainName)%>
                    </td>
                </tr>
            

                <tr>
                    <td>
                        <%=ViewData("olaFTZneRmk")%>
                    </td>
                    <td>
                        <%=Html.TextBoxFor(Function(model) model.FTZneRmk)%>
                        <%=Html.ValidationMessageFor(Function(model) model.FTZneRmk)%>
                    </td>
                </tr>
                
            </table> 
                <%=Html.HiddenFor(Function(model) model.FDDateUpd) %>
                <%=Html.HiddenFor(Function(model) model.FTTimeUpd)%>
                <%=Html.HiddenFor(Function(model) model.FTWhoUpd)%>
                <%=Html.HiddenFor(Function(model) model.FDDateIns)%>
                <%=Html.HiddenFor(Function(model) model.FTTimeIns)%>
                <%=Html.HiddenFor(Function(model) model.FTWhoIns)%>
            </div>
           
        </fieldset>

    <% End Using %>
    
   
    
    </form>
    
   
    
</asp:Content>



