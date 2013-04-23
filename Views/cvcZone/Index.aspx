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
        ViewData("olaCanDelete") = AdaWebPos.My.Resources.resLCcvcZone.olaCanDelete
        ViewData("olaMenuName") = AdaWebPos.My.Resources.resLCcvcZone.olaMenuName
        ViewData("olaCHKDel") = Resources.resGBMsg.tMsgBoxCHKDel
        ViewData("olaCHKSave") = Resources.resGBMsg.tMsgBoxCHKSave

        ViewData("oimgSave") = Url.Content(Resources.resGBImageList.oimgSave)
        ViewData("oimgUndo") = Url.Content(Resources.resGBImageList.oimgUndo)
        ViewData("oimgGencode") = Url.Content(Resources.resGBImageList.oimgGencode)
        ViewData("oimgBrowse") = Url.Content(Resources.resGBImageList.oimgBrowse)
        ViewData("oimgDelete") = Url.Content(Resources.resGBImageList.oimgDelete)
        ViewData("oimgNew") = Url.Content(Resources.resGBImageList.oimgNew)
        ViewData("tMsgDataNotFound") = Resources.resGBMsg.tMsgDataNotFound
        ViewData("olaMaximunLevel") = Resources.resGBMsg.olaMaximunLevel
        
        'Add New Header
        Resources.resGBMenuName.Culture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
        ViewData("olaMenuHome") = Resources.resGBMenuName.omnHome
        ViewData("olaMenuGroup") = Resources.resGBMenuName.omnMng
        ViewData("olaMenuExit") = Resources.resGBMenuName.omnExit
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	<%=ViewData("olaMenuName")%></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server" >

	<script type="text/javascript">

	    window.onload = window_onload_Page;
	    function window_onload_Page() {
	        tJ003_VirtualDirectory = '<%=Session("VirtualDirectory") %>';
	        tJ002_VirtualDirectory = '<%=Session("VirtualDirectory")%>';
	        tJ001_VirtualDirectory = '<%=Session("VirtualDirectory")%>';

	        //Default Value
	        document.getElementById("FTZneID").value = '000';
	        document.getElementById("FTZneName").value = 'โซน';

	        if ('<%=ViewData("tfound_data")%>' != '' && '<%=ViewData("tfound_data")%>' != null) {
	            J003_SHWxWaiting();
	            alert('<%=ViewData("tMsgDataNotFound")%>');
	            J003_DISxWaiting();
	        }
	        //Lock User ID
	        //J002_SETxReadOnly("otbFTUsrCode", true);
	    }

	    function CreateNew() {
	        document.getElementById("otbStatusSave").value = 'New';
	        var TreeValueSel = document.getElementById("TreeValueSel").value;

	        if (TreeValueSel.length > 27) {
	            J003_SHWxWaiting();
	            alert('<%=ViewData("olaMaximunLevel")%>');
	            J003_DISxWaiting();
	        }
	        
	        if (TreeValueSel != '000' || TreeValueSel != '' || TreeValueSel == '') {
	            
	            startRequest(TreeValueSel);  // Clear DAta
	            if (TreeValueSel == '000' || TreeValueSel == '') {
	                document.getElementById("FTZneNameTmp").value = '000';
	                document.getElementById("FNZneLevelTmp").value = '0';
	                document.getElementById("FTZneCodeTmp").value = '000';
	                document.getElementById("FTZneChainNameTmp").value = '000';
	                document.getElementById("FTZneIDTmp").value = '000';
	                document.getElementById("FTZneParentIDTmp").value = '000';
	                document.getElementById("FTZneRmkTmp").value = '';
	            }
	            else {
	                document.getElementById("FTZneNameTmp").value = document.getElementById("FTZneName").value;
	                document.getElementById("FNZneLevelTmp").value = document.getElementById("FNZneLevel").value;
	                document.getElementById("FTZneCodeTmp").value = document.getElementById("FTZneCode").value;
	                document.getElementById("FTZneChainNameTmp").value = document.getElementById("FTZneChainName").value;
	                document.getElementById("FTZneIDTmp").value = document.getElementById("FTZneID").value;
	                document.getElementById("FTZneParentIDTmp").value = document.getElementById("FTZneParentID").value;
	                document.getElementById("FTZneRmkTmp").value = document.getElementById("FTZneRmk").value;

	            }
	            document.getElementById("FTZneName").value = '';
	            document.getElementById("FNZneLevel").value = '';
	            document.getElementById("FTZneCode").value = '';
	            document.getElementById("FTZneChainName").value = '';
	            document.getElementById("FTZneID").value = '';
	            document.getElementById("FTZneParentID").value = '';
	            document.getElementById("FTZneRmk").value = '';
	            var tpath = '<%=Url.Action("C_GETtGetZoneChainNew","cvcZone")%>' + "?ptZoneCode=" + TreeValueSel;
	            FunctionCall(tpath, "NEW");
	        }
	    }
	    //*CH 02-10-2012
	    function W_FRMxShowHome() {
	        window.location = '<%=Url.Action("Index","Home")%>';
	    }
	    function W_FRMxClose() {
	        window.location = '<%=Url.Action("Index","cvcCNPanal") %>?ptMenuGrpName=Manage';
	    }
	</script>
    <!-- เอา class xCN_AllBackgroundColor ออก -->
    <div class="xCN_DivMain xCN_AllBorderColor xCN_AllFontFamily xCN_AllFontSize xCN_AllFontColor" >
    <%-------------------ชื่อเอกสาร---------------------------%>   
        <%--<div class="xW_DivToppic xCN_AllMenuFontSize" style="float:none">
            <label>\\<a class="xCN_LabelLink" href="<%=Url.Action("Index","Home") %>"><%=ViewData("olaMenuHome") %></a>\<a class="xCN_LabelLink" href="<%=Url.Action("Index","cvcCNPanal") %>?ptMenuGrpName=Manage"><%=ViewData("olaMenuGroup") %></a>\<%=ViewData("olaMenuName")%></label> 
        </div>--%>
        <div class="xW_DivSearch">
            <div class='xW_DivPath'>
                <label>\\
                    <a class="xCN_LabelLink" href="<%=Url.Action("Index","Home") %>">
                        <%=ViewData("olaMenuHome") %>
                    </a>\
                    <a class="xCN_LabelLink" href="<%=Url.Action("Index","cvcCNPanal") %>?ptMenuGrpName=Manage">
                        <%=ViewData("olaMenuGroup") %>
                    </a>\
                    <%=ViewData("olaMenuName")%>
                </label>
            </div>
        </div>
    <%-------------------เมนูด้านบนสุด---------------------------%>
        <div id="odiMenuTop" class="xCN_DivMainMenuPage xCN_AllBorderColor">
            <div id="odiMenu" class="xW_DivMenu">
                <!-- ไปหน้าแรก *CH 02-10-2012 -->
                <div id="odiMenuHome" class="xCN_DivMenuHome" style="float: left;">
                    <a onclick="W_FRMxShowHome()" href="javascript:void(0)">
                        <div class="xCN_DivMenuHomeCaption">
                            <%=ViewData("olaMenuHome")%>
                        </div>
                    </a>
                </div>
                <!---------------------------->
                <div id="odiMenuNew" class="xCN_DivMenuNew" style="float: left;">
                    <a onclick="CreateNew()" href="javascript:void(0)">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaCreate")%>
                        </div> 
                    </a>
                </div>
                <div id="Div1" class="xCN_DivMenuSave" style="float: left;">
                    <a href="#" onclick="{document.getElementById('ocmSaveAndDeleteView').click();}">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaCanSave")%>
                        </div>
                    </a>
                </div>
                <div id="odiMenuDelete" class="xCN_DivMenuDelete" style="float: left;">
                    <a href="#" onclick="{document.getElementById('ocmDeleteView').click();}" >
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaCanDelete")%>
                        </div>
                    </a>
                </div>
                <!-- ไปเมนูการจัดการ *CH 02-10-2012 -->
                <div id="odiMenuExit" class="xCN_DivMenuLogOut" style="float: left;">
                    <a onclick="W_FRMxClose()" href="javascript:void(0)">
                        <div class="xCN_DivMenuLogOutCaption">
                            <%=ViewData("olaMenuExit")%>
                        </div>
                    </a>
                </div>
                <!---------------------------->
            </div>
        </div>
        <%-------------------ส่วนรายละเอียด-------------------------%>  
        <table class="x003Tree_Table xCN_AllBackgroundColor xCN_AllBorderColor xCN_DivMainMenuPage"><tr >
            <td valign ="top" style="width:50%;"><% Html.RenderPartial("C_ListZoneViewTree", ViewData("C_ListZoneViewTree"))%></td>
            <td valign ="top" ><% Html.RenderPartial("C_ListZoneView", ViewData("C_ListZoneView"))%></td></tr>
        </table>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J001_LoadAutoGenCode.js")%>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J002_General.js")%>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J003_SplashDialog.js")%>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J013_LoadChkBoxAll.js")%>"></script>
    <link type="text/css" rel="Stylesheet" href="<%=Url.Content("~/Content/AdaCss/Local/FCS_cvcManagement.css")%>" />
    <link href="<%=Url.Content("~/Content/AdaCss/Global/FCS_CNCenter.css")%>" rel="stylesheet" type="text/css" />.
    <link href="<%=Url.Content("~/Content/AdaCss/Local/FCS_cvcGeneralManage.css") %>" rel="stylesheet" type="text/css" />
    <link href="<%=Url.Content("~/Content/2010.3.1110/Global/telerik.forest.min.css")%>" rel="stylesheet" type="text/css" />
</asp:Content>