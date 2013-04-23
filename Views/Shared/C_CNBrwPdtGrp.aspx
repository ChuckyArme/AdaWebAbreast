<%@ Page Title="" Language="VB" Inherits="System.Web.Mvc.ViewPage(Of IEnumerable (Of Adasoft.WebPos.Models.cmlCNBrwPdtGrp))" %>
<%@ Import Namespace="System.Resources" %>
<%@ Import Namespace="AdaWebPos" %>
<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim oCulture As System.Globalization.CultureInfo
        If Session("tVB_LastLang") is nothing orelse Session("tVB_LastLang") ="" Then
            oCulture = New System.Globalization.CultureInfo("EN")
        Else
            oCulture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
        End If
        Resources.resGBBrwPdtGrp.Culture = oCulture
        ViewData("olaExpand") = Resources.resGBBrwPdtGrp.olaExpand
        ViewData("olaOK") = Resources.resGBBrwPdtGrp.olaOK
        ViewData("olaCancel") = Resources.resGBBrwPdtGrp.olaCancel
        ViewData("olaTitle") = Resources.resGBBrwPdtGrp.olaTitle
    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title><%=ViewData("olaTitle")%></title>
    <script type="text/javascript">

        function onSelect(e) {
            var treeView = $("#TreeViewPDTGrp").data("tTreeView");
            var tNodeValue = treeView.getItemValue(e.item);
            document.getElementById('TreeValueSel').value = tNodeValue;
        }

        function onCollapse(e) {
            var item = $(e.item);
            document.getElementById('TreeValueSel').value = item.text;
            //alert(document.getElementById('TreeValueSel').value);
        }

        function onExpand(e) {
            var item = $(e.item);
            document.getElementById('TreeValueSel').value = item.text;
        }
        function ExpandItem() {
            var treeView = $("#TreeViewPDTGrp").data("tTreeView");
            for (i = 0; i <= 100; i++) {
                var item = $("> ul > li > ul > li", treeView.element)[i];
                treeView.expand(item);
            }
        }

        function CollpaseItem() {
            var treeView = $("#TreeViewPDTGrp").data("tTreeView");
            for (i = 0; i <= 100; i++) {
                var item = $("> ul > li > ul > li", treeView.element)[i];
                treeView.collapse(item);
            }
        }

        function FormOnload() {
            var QueryStr = GetParaQueryStr('ptPgpChain');
            if (QueryStr != '') {
                startRequest(QueryStr)
            };
        }
        function GetParaQueryStr(ptname) {  //Get ค่าของ Query String
            ptname = ptname.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
            var regexS = "[\\?&]" + ptname + "=([^&#]*)";
            var regex = new RegExp(regexS);
            var results = regex.exec(window.location.href);
            if (results == null)
                return "";
            else
                return results[1];
        }
        function CheckExpandItemTreeView() {
            if (document.getElementById('ockExpand').checked) {
                ExpandItem();
            } else {
                CollpaseItem();

            }
        }
        function W_DATxOk() {
            returnValue = document.getElementById('TreeValueSel').value;
            window.close();
        }

        function W_DATxCancel() {
            returnValue = "";
            window.close();
        }
    
    </script>  
</head>

<body>
<%--Hidden Object--%>
<input type ="hidden" id="TreeValueSel" name="TreeValueSel" />

<div style="overflow:scroll;height:400px;">
	<%  Dim oTreeView As Telerik.Web.Mvc.UI.TreeView = Html.Telerik().TreeView().ClientEvents(Function(Even) Even.OnSelect("onSelect") _
																										   )
		oTreeView.Name = "TreeViewPDTGrp"
		oTreeView.ShowLines = True
		Dim oo As New Telerik.Web.Mvc.UI.TreeViewClientEvents
		Dim oTmp As New Telerik.Web.Mvc.UI.TreeViewItem
		Dim bFirst As Boolean = False
		Dim oSub As New Telerik.Web.Mvc.UI.TreeViewItem
		For Each item In Model
			oSub = New Telerik.Web.Mvc.UI.TreeViewItem
	        'Dim oSub As New AdaWebPos.AdaWebPos.Ter
			oSub.Text = item.FTPgpName & " (" & item.FTPgpChain.Trim & ")"
			oSub.Expanded = True
			oSub.Value = item.FTPgpChain
			oSub.ImageUrl = ("~/Content/img/AdaBrwPdtGrp/foldersList.gif")
			Dim oOBJ As Telerik.Web.Mvc.UI.TreeViewItem
			If item.FNPgpLevel = 1 Then
				oOBJ = oTmp
			Else
	            oOBJ = AdaWebPos.cCNSP.C_GEToGETObject(oTreeView, Mid(item.FTPgpChain, 1, item.FTPgpChain.Length - item.FTPgpCode.Length), item.FNPgpLevel)
			End If
            
            
			If bFirst = False Then
				oTmp = oSub
			End If
			Dim qry = From ItemSel In Model Where ItemSel.FTSelect = True Select ItemSel
			If qry.Count > 0 AndAlso qry.FirstOrDefault.FTPgpChain.ToUpper.Trim.Equals(item.FTPgpChain.Trim.ToUpper) Then
				oSub.Selected = True
			End If
                
                       
			If bFirst = False Or oOBJ Is Nothing Then
				oTreeView.Items.Add(oSub)
				bFirst = True
			ElseIf oOBJ IsNot Nothing Then
				oOBJ.Items.Add(oSub)
               
			End If
		Next
        
		oTreeView.Effects.OpenDuration = 100
		oTreeView.Effects.CloseDuration = 100
		oTreeView.ExpandAll = True
		oTreeView.Render()
            
        
	%>
	<%=Html.Telerik().StyleSheetRegistrar().DefaultGroup(Function(group) group.Add("Site.css")).DefaultGroup(Function(group) _
		group.Add("telerik.common.css")).DefaultGroup(Function(group) group.Add("telerik.forest.css"))
	%>
	<%  Html.Telerik().ScriptRegistrar() _
		 .DefaultGroup(Function(group) group.Add("telerik.examples.js") _
		 .Compress(True)) _
		 .OnDocumentReady("prettyPrint") _
		 .Render()
	%> 
  
</div>
<div>
	<input id="ockExpand" type="checkbox" checked="checked" onclick="CheckExpandItemTreeView()"></input>
	<span><%=ViewData("olaExpand")%></span>
</div>
<div>
	<input id="ocmCancel" type="button" value="<%=ViewData("olaCancel")%>" onclick="W_DATxCancel()" style="float:right;width:70;"></input>
	<input id="ocmOK" type="button" value="<%=ViewData("olaOK")%>" onclick="W_DATxOk()" style="float:right;width:70;"></input>
</div>

</body>

</html> 