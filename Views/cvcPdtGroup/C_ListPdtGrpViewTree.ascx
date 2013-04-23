<%@ Control Language="VB" Inherits="System.Web.Mvc.ViewUserControl(Of IEnumerable (Of AdaWebPos.C_TCNMPdtGroup))" %>
<%@ Import Namespace="System.Resources" %>
<%@ Import Namespace="AdaWebPos" %>
<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        AdaWebPos.My.Resources.resLCcvcPdtGrop.Culture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
        Resources.resGBBrwPdtGrp.Culture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
        ViewData("olaCanDelete") = AdaWebPos.My.Resources.resLCcvcPdtGrop.olaCanDelete
        ViewData("olaCanEdit") = AdaWebPos.My.Resources.resLCcvcPdtGrop.olaCanEdit
        ViewData("olaCanSave") = AdaWebPos.My.Resources.resLCcvcPdtGrop.olaCanSave
        ViewData("olaCreate") = AdaWebPos.My.Resources.resLCcvcPdtGrop.olaCreate
        ViewData("olaDetail") = AdaWebPos.My.Resources.resLCcvcPdtGrop.olaDetail
        ViewData("olaHeaderAdd") = AdaWebPos.My.Resources.resLCcvcPdtGrop.olaHeaderAdd
        ViewData("olaHeaderDetail") = AdaWebPos.My.Resources.resLCcvcPdtGrop.olaHeaderDetail
        ViewData("olaHeaderEdit") = AdaWebPos.My.Resources.resLCcvcPdtGrop.olaHeaderEdit
        ViewData("olaHeaderList") = AdaWebPos.My.Resources.resLCcvcPdtGrop.olaHeaderList
        ViewData("olaMenuName") = AdaWebPos.My.Resources.resLCcvcPdtGrop.olaMenuName
        ViewData("olaNotAccess") = AdaWebPos.My.Resources.resLCcvcPdtGrop.olaNotAccess
        ViewData("olaReport") = AdaWebPos.My.Resources.resLCcvcPdtGrop.olaReport
        ViewData("olaRowID") = AdaWebPos.My.Resources.resLCcvcPdtGrop.olaRowID
        ViewData("olaGenCode") = AdaWebPos.My.Resources.resLCcvcPdtGrop.olaGenCode
        ViewData("olaExpand") = Resources.resGBBrwPdtGrp.olaExpand
    End Sub
</script>

<%--     <%=Html.Telerik().StyleSheetRegistrar().DefaultGroup(Function(group) group.Add("Site.css")).DefaultGroup(Function(group) _
                                                                                                                    group.Add("telerik.common.css")).DefaultGroup(Function(group) group.Add("telerik.Windows7.css"))%>
--%>
<script type="text/javascript">
    function onSelect(e) {
        //Clear Tmp
        document.getElementById("FTPgpNameTmp").value = "";
        document.getElementById("FNPgpLevelTmp").value = "";
        document.getElementById("FTPgpChainTmp").value = "";
        document.getElementById("FTPgpChainNameTmp").value = "";
        document.getElementById("FTPgpCodeTmp").value = "";
        document.getElementById("FTPgpPicTmp").value = "";
        document.getElementById("FTPgpParentTmp").value = "";
        document.getElementById("FTPgpRmkTmp").value = "";
        
        var item = $(e.item); 
        //alert('OnSelect :: ' + item.text());
        var treeView = $("#TreeViewPDTGrp").data("tTreeView");
        var tNodeValue = treeView.getItemValue(e.item);
        var tNodeText = treeView.getItemText(e.item);
        var tmpValueList = tNodeValue.split("|");
        document.getElementById('TreeValueSel').value = tmpValueList[0];
        document.getElementById("FTPgpChain").value = tmpValueList[0];
        document.getElementById('FTPgpCode').value = tmpValueList[1];
        document.getElementById('FTPgpName').value = tmpValueList[2];
        document.getElementById('FTPgpRmk').value = tmpValueList[3];
        document.getElementById('FTPgpChainName').value = tmpValueList[4];
        document.getElementById('FNPgpLevel').value = tmpValueList[5];
        document.getElementById("FTPgpPic").value = tmpValueList[6];
        document.getElementById("FTPgpParent").value = tmpValueList[7];
        document.getElementById("otbStatusSave").value = 'Edit';
        document.getElementById("otbLastSelect").value = tmpValueList[0];
        W_SHWxShowPic();
        
        return tmpValueList[2];
//        var item = $(e.item);
//        var Node = document.getElementById('TreeValueSel');
//        //alert('OnSelect :: ' + item.text());
//        var value = item.text();
//        var check = '0';
//        do {
//            if (value.indexOf('(', 0) > -1) {
//                //alert('ST'+ value.indexOf('(', 0));
//                //alert('SUB'+ (value.indexOf('(', 0)));
//                value = value.substr(value.indexOf('(', 0) + 1, value.length - (value.indexOf('(', 0)));
//                //alert(value);
//                check = '1';
//            } else if (value.indexOf('(', 0) == -1 && check == '1') {  // รอบสอง
//                check = '2';
//                //alert('Exit');
//                break;
//            }
//        } while (check != '2');
//        value = '(' + value
//        if (value.indexOf('(', 0) > -1) {
//            var value2 = value.substr(1, value.lastIndexOf(')') - 1);
//            //alert (value2);
//            $console.log(value2);
//            Node.value = value2;
//        }
    }

    function onCollapse(e) {
        var item = $(e.item);
        document.getElementById('TreeValueSel').value = item.text;
        //alert('OnCollapse :: ' + item.text());
        //$console.log('OnCollapse :: ' + item.text());
    }

    function onExpand(e) {
        var item = $(e.item);
        document.getElementById('TreeValueSel').value = item.text;
        //alert('OnExpand :: ' + item.text());
        //$console.log('OnExpand :: ' + item.text());
    }
    function ExpandItem() {
        var treeView = $("#TreeViewPDTGrp").data("tTreeView");
        //for (i = 0; i <= 50; i++) {
        //    var item = $("> ul > li > ul > li", treeView.element)[i];
        //    treeView.expand(item);
        //}
        var tItem = "> ul > li ul > li";
        var item = $(tItem, treeView.element);
        treeView.expand(item);
    }

    function CollpaseItem() {
        //J003_SHWxWaiting();
        //var treeView = $("#TreeViewPDTGrp").data("tTreeView");
        //for (i = 0; i <= 50; i++) {
        //    var item = $("> ul > li > ul > li", treeView.element)[i];
        //    treeView.collapse(item);
        //}
        //J003_DISxWaiting();
        var tItem = "> ul > li ul > li";
        var treeView = $("#TreeViewPDTGrp").data("tTreeView");
        var item = $(tItem, treeView.element);
        treeView.collapse(item);
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
       //if (document.getElementById('ExAndColl').checked) {
       //     ExpandItem();
       // } else {
       //     CollpaseItem();    
        //  }
        if ($('#ockExpand').attr('checked')) {
            ExpandItem();
        } else {
            CollpaseItem();
        }
    } 
     
	</script>
	
<fieldset>
           <legend><%=ViewData("olaDetail")%></legend>
           <div style="overflow:auto; height:450px; width:300px">
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
            oSub.Text = item.FTPgpName
            oSub.Expanded = True
            oSub.Value = item.FTPgpChain & "|" & item.FTPgpCode & "|" & item.FTPgpName & "|" & item.FTPgpRmk & "|" & item.FTPgpChainName & "|" & item.FNPgpLevel & "|" & item.FTPgpPic & "|" & item.FTPgpParent & "|"
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
  
<%--            <%  Html.Telerik().ScriptRegistrar() _
                 .DefaultGroup(Function(group) group.Add("telerik.examples.js") _
                                              .Compress(True)) _
                                              .OnDocumentReady("prettyPrint") _
                                             .Render()%>--%>
    </div>
    </fieldset>
    <input type="checkbox" id="ockExpand" checked="checked" onclick='CheckExpandItemTreeView()' />
    <span><%=ViewData("olaExpand")%></span>
     <input type ="text" id="TreeValueSel" name="TreeValueSel" style="display: none; "/>
	 
	

