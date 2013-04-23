<%@ Control Language="VB" Inherits="System.Web.Mvc.ViewUserControl(Of IEnumerable (Of AdaWebPos.C_TCNMZone))" %>

<script runat="server">

Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)

End Sub
</script>

<script type="text/javascript">
    
    function onSelect(e) {
        var item = $(e.item); 
        //alert('OnSelect :: ' + item.text());
        var treeView = $("#TreeViewZone").data("tTreeView");
        var tNodeValue = treeView.getItemValue(e.item);
        var tNodeText = treeView.getItemText(e.item);
        var tmpValueList = tNodeValue.split("|");
        document.getElementById('TreeValueSel').value = tmpValueList[0];
        document.getElementById("FTZneCode").value = tmpValueList[0];
        document.getElementById('FTZneID').value = tmpValueList[1];
        document.getElementById('FTZneName').value = tmpValueList[2];
        document.getElementById('FTZneRmk').value = tmpValueList[3];
        document.getElementById('FTZneChainName').value = tmpValueList[4];
        document.getElementById('FNZneLevel').value = tmpValueList[5];
        document.getElementById('FNZneLevelTmp').value = tmpValueList[5];
        document.getElementById("FTZneParentID").value = tmpValueList[6];
        document.getElementById("otbStatusSave").value = 'Edit';
        return tmpValueList[2];
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
        var treeView = $("#TreeViewZone").data("tTreeView");
        for (i = 0; i <= 100; i++) {
            var item = $("> ul > li > ul > li", treeView.element)[i];
            treeView.expand(item);
        }
    }

    function CollpaseItem() {
        var treeView = $("#TreeViewZone").data("tTreeView");
        for (i = 0; i <= 100; i++) {
            var item = $("> ul > li > ul > li", treeView.element)[i];
            treeView.collapse(item);
        }
    }
    
    function FormOnload() {
        var QueryStr = GetParaQueryStr('ptZoneCode');
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
       if (document.getElementById('ExAndColl').checked) {
            ExpandItem();
        } else {
            CollpaseItem();
            
         }
    } 
     
	</script>

       <fieldset >
       <div style="overflow:auto; height:450px; width:500px">
            <%--<legend></legend>--%>
    <%  Dim oTreeView As Telerik.Web.Mvc.UI.TreeView = Html.Telerik().TreeView().ClientEvents(Function(Even) Even.OnSelect("onSelect") _
                                                                                                           )
        oTreeView.Name = "TreeViewZone"
        oTreeView.ShowLines = True
        Dim oo As New Telerik.Web.Mvc.UI.TreeViewClientEvents
        Dim oTmp As New Telerik.Web.Mvc.UI.TreeViewItem
        Dim bFirst As Boolean = False
        Dim oSub As New Telerik.Web.Mvc.UI.TreeViewItem
        For Each item In Model
            oSub = New Telerik.Web.Mvc.UI.TreeViewItem
            'Dim oSub As New AdaWebPos.AdaWebPos.Ter
            oSub.Text = item.FTZneName
            oSub.Expanded = True
            oSub.Value = item.FTZneCode & "|" & item.FTZneID & "|" & item.FTZneName & "|" & item.FTZneRmk & "|" & item.FTZneChainName & "|" & item.FNZneLevel & "|" & item.FTZneParentID & "|"
            oSub.ImageUrl = ("~/Content/img/AdaBrwPdtGrp/foldersList.gif")
            Dim oOBJ As Telerik.Web.Mvc.UI.TreeViewItem
            If item.FNZneLevel = 1 Then
                oOBJ = oTmp
            Else
                oOBJ = AdaWebPos.cCNSP.C_GEToGETObject(oTreeView, Mid(item.FTZneCode, 1, item.FTZneCode.Length - item.FTZneID.Length), item.FNZneLevel)
            End If
            
            
            If bFirst = False Then
                oTmp = oSub
            End If
            Dim qry = From ItemSel In Model Where ItemSel.FTSelect = True Select ItemSel
            If qry.Count > 0 AndAlso qry.FirstOrDefault.FTZneCode.Trim.ToUpper.Equals(item.FTZneCode.Trim.ToUpper) Then
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
  

</div>
    </fieldset>
     <input type ="text" id="TreeValueSel" name="TreeValueSel" style="display: none; "/>
