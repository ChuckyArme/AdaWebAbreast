<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage(Of AdaWebPos.C_TCNMPdtGroup)" %>
<%@ Import Namespace="System.Resources" %>
<%@ Import Namespace="AdaWebPos" %>
<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        AdaWebPos.My.Resources.resLCcvcPdtGrop.Culture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
        Resources.resGBMsg.Culture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
        ViewData("olaRowID") = AdaWebPos.My.Resources.resLCcvcPdtGrop.olaRowID
        ViewData("olaCanEdit") = AdaWebPos.My.Resources.resLCcvcPdtGrop.olaCanEdit
        ViewData("olaCanSave") = AdaWebPos.My.Resources.resLCcvcPdtGrop.olaCanSave
        ViewData("olaCreate") = AdaWebPos.My.Resources.resLCcvcPdtGrop.olaCreate
        ViewData("olaCanDelete") = AdaWebPos.My.Resources.resLCcvcPdtGrop.olaCanDelete
        ViewData("olaMenuName") = AdaWebPos.My.Resources.resLCcvcPdtGrop.olaMenuName
        ViewData("olaClear") = AdaWebPos.My.Resources.resLCcvcPdtGrop.olaClear
        
        ViewData("oimgSave") = Resources.resGBImageList.oimgSave
        ViewData("oimgUndo") = Resources.resGBImageList.oimgUndo
        ViewData("oimgGencode") = Resources.resGBImageList.oimgGencode
        ViewData("oimgBrowse") = Resources.resGBImageList.oimgBrowse
        ViewData("oimgDelete") = Resources.resGBImageList.oimgDelete
        ViewData("oimgNew") = Resources.resGBImageList.oimgNew
        ViewData("olaCHKDel") = Resources.resGBMsg.tMsgBoxCHKDel
        ViewData("olaCHKSave") = Resources.resGBMsg.tMsgBoxCHKSave
        ViewData("tMsgDataNotFound") = Resources.resGBMsg.tMsgDataNotFound
        ViewData("olaMaximunLevel") = Resources.resGBMsg.olaMaximunLevel
        
        ViewData("tMsgBrwFile") = Resources.resGBMsg.tMsgBrwFile
        ViewData("tMsgBrwFileError") = Resources.resGBMsg.tMsgBrwFileError
        ViewData("tMsgBrwFileOnlyImage") = Resources.resGBMsg.tMsgBrwFileOnlyImage
        
        
        ViewData("olaMenuExit") = Resources.resGBMenuName.omnExit '*ออก *CH 17-10-2012
        ViewData("olaMenuHome") = Resources.resGBMenuName.omnHome '*หน้าแรก *CH 17-10-2012
        
        'Add New Header
        Resources.resGBMenuName.Culture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
        ViewData("olaMenuHome") = Resources.resGBMenuName.omnHome
        ViewData("olaMenuGroup") = Resources.resGBMenuName.omnPdt
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	<%=ViewData("olaMenuName")%></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server" >

	<script type="text/javascript">
	    var tW_UploadImg = '<%=ViewData("UploadImg") %>';
	    var ptStaUploadImg = '<%=ViewData("ptStaUploadImg")%>';
	    window.onload = function () {
	        tJ003_VirtualDirectory = '<%=Session("VirtualDirectory")%>';
	        FormOnload();
	        W_SHWxShowPic();
	        if ('<%=ViewData("tfound_data")%>' != '' && '<%=ViewData("tfound_data")%>' != null) {
	            alert('<%=ViewData("tMsgDataNotFound")%>');
	        }



	        if (ptStaUploadImg == 1) {
	            ptStaUploadImg = 0;
	            document.getElementById("FTPgpChain").value = '<%=Model.FTPgpChain%>';
	            document.getElementById('FTPgpCode').value = '<%=Model.FTPgpCode%>';
	            document.getElementById('FTPgpName').value = '<%=Model.FTPgpName%>';
	            document.getElementById('FTPgpRmk').value = '<%=Model.FTPgpRmk%>';
	            document.getElementById('FTPgpChainName').value = '<%=Model.FTPgpChainName.replace("\","\\")%>';
	            document.getElementById('FNPgpLevel').value = '<%=Model.FNPgpLevel%>';
	            document.getElementById("FTPgpPic").value = '<%=Model.FTPgpPic%>';
	            document.getElementById("FTPgpParent").value = '<%=Model.FTPgpParent%>';
	            document.getElementById("otbStatusSave").value = '<%=ViewData("otbStatusSave")%>';

	            document.getElementById("FTPgpNameTmp").value = '<%=ViewData("FTPgpNameTmp")%>';
	            document.getElementById("FTPgpChainTmp").value = '<%=ViewData("FTPgpChainTmp")%>';
	            document.getElementById("FTPgpChainNameTmp").value = '<%=ViewData("FTPgpChainNameTmp")%>';
	        }

	    }

	    // ning 24/11/2010
	    function W_SHWxShowPic() {
	        if (tW_UploadImg != '') {
	            document.getElementById('FTPgpPic').value = '<%=ViewData("UploadImg")%>';
	            document.getElementById('oimPic').src = '<%=Url.Content("~/AdaImage/" & ViewData("UploadImg")) %>';
	            tW_UploadImg = '';
	            return false;
	        }
	        var tImageName = document.getElementById("FTPgpPic").value;
	        if (tImageName != null && tImageName != "") {
	            document.getElementById('oimPic').src = '<%=Url.Content("~/AdaImage") %>/' + tImageName;
	        }
	        else {
	            document.getElementById('oimPic').src = '<%=Url.Content("~/Content/img/AdaBrwPdtGrp/NoImage.png")%>';
	        }

	        var tImageSourc = document.getElementById('oimPic').getAttribute("src");
	        //document.getElementById('FTCmpLogo').value = tImageSourc;
	    }

	    function W_SHWxClearPic() {
	        document.getElementById('oimPic').src = '<%=Url.Content("~/AdaImage/imgNoImages.png")%>';
	        document.getElementById('otbFTBntPic').src = "";
	    }

	    function CreateNew() {
	        document.getElementById("otbStatusSave").value = 'New';
	        var TreeValueSel = document.getElementById("TreeValueSel").value;

	        if (TreeValueSel.length > 27) {
	            J003_SHWxWaiting();
	            alert('<%=ViewData("olaMaximunLevel")%>');
	            J003_DISxWaiting();
	        }

	        //alert(TreeValueSel);
	        if (TreeValueSel != '000' || TreeValueSel != '' || TreeValueSel == '') {
	            startRequest(TreeValueSel);  // Clear DAta
	            if (TreeValueSel == '000' || TreeValueSel == '') {
	                document.getElementById("FTPgpNameTmp").value = '000';
	                document.getElementById("FNPgpLevelTmp").value = '0';
	                document.getElementById("FTPgpChainTmp").value = '000';
	                document.getElementById("FTPgpChainNameTmp").value = '000';
	                document.getElementById("FTPgpCodeTmp").value = '000';
	                document.getElementById("FTPgpPicTmp").value = '';
	                document.getElementById("FTPgpParentTmp").value = '000';
	                document.getElementById("FTPgpRmkTmp").value = '';
	            }
	            else {
	                document.getElementById("FTPgpNameTmp").value = document.getElementById("FTPgpName").value;
	                document.getElementById("FNPgpLevelTmp").value = document.getElementById("FNPgpLevel").value;
	                document.getElementById("FTPgpChainTmp").value = document.getElementById("FTPgpChain").value;
	                document.getElementById("FTPgpChainNameTmp").value = document.getElementById("FTPgpChainName").value;
	                document.getElementById("FTPgpCodeTmp").value = document.getElementById("FTPgpCode").value;
	                document.getElementById("FTPgpPicTmp").value = document.getElementById("FTPgpPic").value;
	                document.getElementById("FTPgpParentTmp").value = document.getElementById("FTPgpParent").value;
	                document.getElementById("FTPgpRmkTmp").value = document.getElementById("FTPgpRmk").value;

	            }
	            document.getElementById("FTPgpName").value = '';
	            document.getElementById("FNPgpLevel").value = '';
	            document.getElementById("FTPgpChain").value = '';
	            document.getElementById("FTPgpChainName").value = '';
	            document.getElementById("FTPgpCode").value = '';
	            document.getElementById("FTPgpPic").value = '';
	            document.getElementById("ocmGetPic").value = '';
	            document.getElementById("FTPgpParent").value = '';
	            document.getElementById("FTPgpRmk").value = '';
	            var tpath = '<%=Url.Action("C_GETtGetPgpChainNew","cvcPdtGroup")%>' + "?ptPgpChain=" + TreeValueSel;
	            FunctionCall(tpath, "NEW");
	        }
	    }

	    //ptFlag 1 ไปรายการโปรด ; 2 ไปหน้าระบบสมาชิก
	    function W_FRMxClose(ptFlag) {
	        try {
	            var tDataTimeNow = J002_GETtTimeStamp();
	            var tUrl;
	            if (ptFlag == '1') {
	                tUrl = '<%=Url.Action("Index","Home") %>' + '?ptDate=' + tDataTimeNow;
	            } else {
	                tUrl = '<%=Url.Action("Index","cvcCNPanal") %>?ptMenuGrpName=Pdt';
	            }
	            window.location = tUrl;
	        }
	        catch (ex) {
	            J002_SHWxMsgError("W_FRMxClose", ex);
	        }
	    }
	</script>
	
    <div class="xCN_DivMain xCN_AllFontFamily xCN_AllFontSize xCN_AllFontColor" >
	<%-------------------ชื่อเอกสาร---------------------------%>
	<%--<div class="xCN_DivMain xCN_AllBorderColor xCN_AllBackgroundColor xCN_AllFontFamily xCN_AllFontSize xCN_AllFontColor" >   
        <div class="xW_DivToppic xCN_AllMenuFontSize" style="float:none">
            <label>\\<a class="xCN_LabelLink" href="<%=Url.Action("Index","Home") %>"><%=ViewData("olaMenuHome") %></a>\<a class="xCN_LabelLink" href="<%=Url.Action("Index","cvcCNPanal") %>?ptMenuGrpName=Pdt"><%=ViewData("olaMenuGroup") %></a>\<%=ViewData("olaMenuName")%></label> 
        </div>--%>
        <div class="xW_DivSearch">
            <div class='xW_DivPath'>
                <label>\\
                    <a class="xCN_LabelLink" href="<%=Url.Action("Index","Home") %>">
                        <%=ViewData("olaMenuHome") %>
                    </a>\
                    <a class="xCN_LabelLink" href="<%=Url.Action("Index","cvcCNPanal") %>?ptMenuGrpName=Pdt">
                        <%=ViewData("olaMenuGroup")%>
                    </a>\
                    <%=ViewData("olaMenuName")%>
                </label>
            </div>
        </div>
        <%-------------------เมนูด้านบนสุด---------------------------%>
        <div id="odiMenuTop" class="xCN_DivMainMenuPage xCN_AllBorderColor">
            <div id="odiMenu" class="xW_DivMenu">
                <!-- ไปหน้าแรก *CH 17-10-2012 -->
                <div id="odiMenuHome" class="xCN_DivMenuHome" style="float: left;">
                    <a onclick="W_FRMxClose('1')" href="javascript:void(0)">
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
                <div id="odiMenuDelete" class="xCN_DivMenuDelete">
                    <a href="#" onclick="{document.getElementById('ocmDeleteView').click();}">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaCanDelete")%>
                        </div>
                    </a>
                </div>
                <!-- ไปเมนูระบบสมาชิก *CH 17-10-2012 -->
                <div id="odiMenuExit" class="xCN_DivMenuLogOut" style="float: left;">
                    <a onclick="W_FRMxClose('2')" href="javascript:void(0)">
                        <div class="xCN_DivMenuLogOutCaption">
                            <%=ViewData("olaMenuExit")%>
                        </div>
                    </a>
                </div>
                <!---------------------------->
            </div>
        </div>
        <div  class='xCN_DivMainMenuPage xCN_AllBackgroundColor xCN_AllBorderColor' style="height:555px; overflow:auto;">
            <table style="font-family: tahoma; font-size: 12px" ><tr >
                <td valign ="top" width="30%" ><% Html.RenderPartial("C_ListPdtGrpViewTree", ViewData("C_ListPdtGrpViewTree"))%></td>
                <td valign ="top" width="70%"><% Html.RenderPartial("C_ListPdtGrpView", ViewData("C_ListPdtGrpView"))%></td></tr>
            </table>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J001_LoadAutoGenCode.js")%>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J002_General.js")%>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J003_SplashDialog.js")%>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J013_LoadChkBoxAll.js")%>"></script>
    <link type="text/css" rel="Stylesheet" href="<%=Url.Content("~/Content/AdaCss/Global/FCS_CNCenter.css")%>" />
    <link type="text/css" rel="Stylesheet" href="<%=Url.Content("~/Content/AdaCss/Local/FCS_cvcManagementLocal.css")%>" />
    <link href="<%=Url.Content("~/Content/AdaCss/Global/FCS_CNCenter.css")%>" rel="stylesheet" type="text/css" />
    <link href="<%=Url.Content("~/Content/AdaCss/Local/FCS_cvcGeneralManage.css") %>" rel="stylesheet" type="text/css" />
    <link href="<%=Url.Content("~/Content/2010.3.1110/Global/telerik.forest.min.css")%>" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/jquery-1.4.2.min.js") %>"></script>
</asp:Content>