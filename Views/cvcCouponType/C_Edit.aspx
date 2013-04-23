<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage(Of Adasoft.WebPos.Models.cmlTPSTCpnType)" %>
<%@ Import Namespace="System.Resources" %>
<%@ Import Namespace="AdaWebPos" %>
<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tLastLang As String = Session("tVB_LastLang")

        If tLastLang Is Nothing AndAlso tLastLang = "" Then
            AdaWebPos.My.Resources.resLCcvcCouponType.Culture = New System.Globalization.CultureInfo("EN")
            Resources.resGBMsg.Culture = New System.Globalization.CultureInfo("EN")
        Else
            AdaWebPos.My.Resources.resLCcvcCouponType.Culture = New System.Globalization.CultureInfo(tLastLang)
            Resources.resGBMsg.Culture = New System.Globalization.CultureInfo(tLastLang)
        End If
       
        ViewData("olaRowID") = AdaWebPos.My.Resources.resLCcvcCouponType.olaRowID
        ViewData("olaCanEdit") = AdaWebPos.My.Resources.resLCcvcCouponType.olaCanEdit
        ViewData("olaCanSave") = AdaWebPos.My.Resources.resLCcvcCouponType.olaCanSave
        ViewData("olaCreate") = AdaWebPos.My.Resources.resLCcvcCouponType.olaCreate
        ViewData("olaFTCptCode") = AdaWebPos.My.Resources.resLCcvcCouponType.olaFTCptCode
        ViewData("olaFTCptName") = AdaWebPos.My.Resources.resLCcvcCouponType.olaFTCptName
        'ViewData("olaFTCptStaActive") = AdaWebPos.My.Resources.resLCcvcCouponType.olaFTCptStaActive '*CH 06-10-2012 Old
        ViewData("olaFTCptStaActive") = AdaWebPos.My.Resources.resLCcvcCouponType.olaStaActive '*CH 06-10-2012 สถานะการใช้งาน
        ViewData("olaMenuName") = AdaWebPos.My.Resources.resLCcvcCouponType.olaMenuName
        ViewData("olaNotAccess") = AdaWebPos.My.Resources.resLCcvcCouponType.olaNotAccess
        ViewData("olaReport") = AdaWebPos.My.Resources.resLCcvcCouponType.olaReport
        ViewData("olaHeaderEdit") = AdaWebPos.My.Resources.resLCcvcCouponType.olaHeaderEdit
        ViewData("olaHeaderAdd") = AdaWebPos.My.Resources.resLCcvcCouponType.olaHeaderAdd
        ViewData("olaHeaderDetail") = AdaWebPos.My.Resources.resLCcvcCouponType.olaHeaderDetail
        ViewData("olaHeaderList") = AdaWebPos.My.Resources.resLCcvcCouponType.olaHeaderList
        ViewData("olaDetail") = AdaWebPos.My.Resources.resLCcvcCouponType.olaDetail
        ViewData("tMsgErrorData") = Resources.resGBMsg.tMsgErrorData
        
        ViewData("oimgSave") =url.content( Resources.resGBImageList.oimgSave)
        ViewData("oimgUndo") = Url.Content(Resources.resGBImageList.oimgUndo)
        ViewData("oimgBrowse") = Url.Content(Resources.resGBImageList.oimgBrowse)
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    <%=ViewData("olaHeaderEdit")%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<script type="text/javascript" >
    window.onload = window_onload;
    function window_onload() {
        tJ002_VirtualDirectory = '<%=Session("VirtualDirectory") %>';
        tJ003_VirtualDirectory = '<%=Session("VirtualDirectory")%>'; //*CH 20-02-2013
        ////document.getElementById("loading").style.display = "none";
        changeTxt();
        document.getElementById("FTCptCode").onkeydown = function() { return false; };
    }
  
     function change(){
    //			alert('Hello');
         var aaa = document.getElementById('FTCptStaActive');
         if (document.getElementById('ChkActive').checked == true) {
			aaa.value='1';
		} else
		{
			aaa.value='0';
		}
				
	}
	
    function changeTxt(){
    //			alert('Hello');
		        var bbb = document.getElementById('ChkActive');
		        if (document.getElementById('FTCptStaActive').value == '1') {
			    bbb.checked=true;
		    } else
		    {
			    bbb.checked=false;
		    }
    }

    function W_FRMxSaveDocument() {
        var tName = J002_STRttrim(document.getElementById("FTCptName").value);
        if (tName == "" || tName == null) {
            alert('<%=ViewData("tMsgErrorData")%>');
            document.getElementById("FTCptName").focus();
            return false;
        }

        var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Edit%>';
        var tPwdAllow = '<%=AdaWebPos.cCNVB.bVB_CNPwdAllow %>';
        var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
        var bAllow = J002_CHKtCheckAuthorize('omnMngCouponType', tAuthor, tPwdAllow, tMsgNotAuthorize);
        if (bAllow == false) {
            return false;
        }
        else {
            document.wEditCouponType.submit();
        }
    }

    function W_FRMxFormClose() {
        window.location = '<%=Url.Action("Index","cvcCouponType") %>';
    }
	
  </script>

    <%  ViewData("wName") = "Edit"%>
    
    
    <%--The line below is a workaround for a VB / ASPX designer bug--%>

     <% Using Html.BeginForm("C_Edit", "cvcCouponType", FormMethod.Post, New With {.collection = "dat_TPSTCpnType", .ID = "CouponType_Edit", .name = "wEditCouponType"})%>
    <div class="xCN_DivMain xCN_AllFontFamily xCN_AllFontSize xCN_AllFontColor" >
        <div style="display:none">
        <input type="hidden" value="<%=model.FDDateUpd%>" name="FDDateUpd" />
        <input type="hidden" value="<%=model.FTTimeUpd%>" name="FTTimeUpd" />
        <input type="hidden" value="<%=model.FTWhoUpd%>" name="FTWhoUpd" />
        <input type="hidden" value="<%=model.FDDateIns%>" name="FDDateIns" />
        <input type="hidden" value="<%=model.FTTimeIns%>" name="FTTimeIns" />
        <input type="hidden" value="<%=model.FTWhoIns%>" name="FTWhoIns" />
        <input type="hidden" id="otbFTPvnCodeOld" />
        </div>
        <%-------------------ชื่อเอกสาร---------------------------%>   
        <!--<div class="xCN_DivManageTopic xCN_AllMenuFontSize">-->
        <div class="xW_DivSearch">
            <div class='xW_DivPath'>
                <label id="olaTopicName" ><%=ViewData("olaHeaderEdit")%></label> 
            </div>
        </div>        
        <!--</div>-->
                <%-------------------เมนู-------------------------------%>   
        <div id="odiMenuTop" class="xCN_DivMainMenuPage xCN_AllBorderColor">
          <div id="odiMenu" class="xW_DivMenu">
                <div id="odiMenuNew" class="xCN_DivMenuSave" style="float: left;">
                    <a onclick="W_FRMxSaveDocument()" href="javascript:void(0)">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaCanSave")%>
                        </div>
                    </a>
                </div>
                <div id="odiMenuDelete" class="xCN_DivMenuHome" style="float: left;">
                    <a onclick = "W_FRMxFormClose()" href="javascript:void(0)">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaHeaderList")%>
                        </div>
                    </a>
                </div>
          </div>
        </div>
            
        <!--<div class="xW_DivDetail xCN_AllBackgroundColor2 xCN_AllBorderColor">-->
        <div class='xW_DivMainMenuPage xCN_AllBackgroundColor xCN_AllBorderColor' style='height:525px;'>
                 <div class="xW_DivCaption">
                    <div class="xW_DivCaptionSub xCN_AllFontColorTextReq">
                        <label>*<%=ViewData("olaFTCptCode")%></label>
                    </div>
                    <div class="xW_DivCaptionSub xCN_AllFontColorTextReq ">
                        <label>*<%=ViewData("olaFTCptName")%></label>
                    </div>
                    <div class="xW_DivCaptionSubEdit">
                        <label><%=ViewData("olaFTCptStaActive")%></label>
                    </div>

                </div>
                <div class="xW_DivData">
                    <div class="xW_DivDataSub">
                        <div class="xW_DivCode">
                            <%=Html.TextBoxFor(Function(model) model.FTCptCode, New With {.readonly = "readonly", .class = "xCN_AllReadOnlyBGColor"})%>
                            <%=Html.ValidationMessageFor(Function(model) model.FTCptCode)%>
                        </div>                 
                    </div>
                    <div class="xW_DivDataSub">
                        <div>
                            <%=Html.TextBoxFor(Function(model) model.FTCptName, New With {.maxlength = "100",.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)"})%>
                            <%=Html.ValidationMessageFor(Function(model) model.FTCptName)%>
                        </div>
                    </div>   
                    <div>
                        <div>
                            <%=Html.TextBoxFor(Function(model) model.FTCptStaActive, New With {.style = "display: none; "})%>
                            <%=Html.ValidationMessageFor(Function(model) model.FTCptStaActive)%>
                             <input type ="checkbox" id="ChkActive" onclick ="change()" />
                        </div>
                </div> 
            </div>
        </div>            
            
    </div>
    <% End Using %>
    
   
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
 <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J001_LoadAutoGenCode.js")%>"></script>
 <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J002_General.js")%>"></script>
 <link type="text/css" rel="Stylesheet" href="<%=Url.Content("~/Content/AdaCss/Local/FCS_cvcManagementLocal.css")%>" />
 <link href="<%=Url.Content("~/Content/AdaCss/Global/FCS_CNCenter.css")%>" rel="stylesheet" type="text/css" />
</asp:Content>




