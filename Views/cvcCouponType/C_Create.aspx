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
        ViewData("olaGenCode") = AdaWebPos.My.Resources.resLCcvcCouponType.olaGenCode
        ViewData("tMsgErrorData")=Resources.resGBMsg.tMsgErrorData
        ViewData("tMsgErroMaxGenCode")=Resources.resGBMsg.tMsgErroMaxGenCode
                  
        ViewData("oimgSave") = url.content(Resources.resGBImageList.oimgSave)
        ViewData("oimgUndo") = url.content(Resources.resGBImageList.oimgUndo)
        ViewData("oimgGencode") = Url.Content(Resources.resGBImageList.oimgGencode)
        ViewData("oimgBrowse") = Url.Content(Resources.resGBImageList.oimgBrowse)
        
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    <%=ViewData("olaHeaderAdd")%></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<script type="text/javascript" >
    window.onload = window_onload;
    function window_onload() {       
        ////document.getElementById("loading").style.display = "none";
        changeTxt();
        tJ001_VirtualDirectory = '<%=Session("VirtualDirectory") %>';
        tJ002_VirtualDirectory = '<%=Session("VirtualDirectory") %>';
        tJ003_VirtualDirectory = '<%=Session("VirtualDirectory")%>'; //*CH 20-02-2013
        J002_SETxReadOnly("FTCptCode", true);              
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
	 function noenter(ptTarget) {
     var oTarget = document.getElementById(ptTarget);
     
    if (window.event.keyCode == 13) {
        if (ptTarget != undefined) {
            oTarget.focus();
        }
            return window.event.keyCode = 0;
//            return !(window.event && window.event.keyCode == 13);
        }
        if (window.event.keyCode == 10) {
            return window.event.keyCode = 13;
            //            return !(window.event && window.event.keyCode == 13);
        }
    }
    function W_FRMxGenCode() {
        J001_GETtAutoGenCode('cvcCouponType', 'C_Create_GetAutoCode', document.getElementById('FTCptCode'));
        J002_SETxReadOnly("FTCptCode", false);
        document.getElementById("FTCptCode").onkeydown = function() { return true; };

        var tCode = document.getElementById('FTCptCode').value;
        if (tCode == "Adasoft.Abreast.MaxValue") {
            document.getElementById('FTCptCode').value = "";
            document.getElementById('FTCptCode').focus();
            alert('<%=ViewData("tMsgErroMaxGenCode")%>');
            return false;
        }
        return true;
    }

    function W_FRMxForwClose() {
        J003_SHWxWaiting();
        window.location = '<%=Url.Action("Index","cvcCouponType")%>';
    }

    function W_FRMxSaveDocument() {
        var tCode = document.getElementById("FTCptCode").value;
        var tName = J002_STRttrim(document.getElementById("FTCptName").value);

        if (tCode == "" || tCode == null) {
            alert('<%=ViewData("tMsgErrorData")%>');
            document.getElementById("FTCptCode").focus();
            return false;
        }
        
        if (tName == "" || tName == null) {
            alert('<%=ViewData("tMsgErrorData")%>');
            document.getElementById("FTCptName").focus();
            return false;
        } 

        if (tCode == "###") {
            if (!W_FRMxGenCode()) {
                return false;
            }
        }

        var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Add%>';
        var tPwdAllow = '<%=AdaWebPos.cCNVB.bVB_CNPwdAllow %>';
        var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
        var bAllow = J002_CHKtCheckAuthorize('omnMngCouponType', tAuthor, tPwdAllow, tMsgNotAuthorize);
        if (bAllow == false) {
            return false;
        }
        else {
            document.wCouponType.submit();
        }
    }

  </script>

    <% Using Html.BeginForm("C_Create", "cvcCouponType", FormMethod.Post, New With {.collection = "cmlCouponType", .ptValue = "wCouponType", .name = "wCouponType"})%>
    <div class="xW_DivMain xCN_AllFontFamily xCN_AllFontSize xCN_AllFontColor" >
        <div style="display:none">
            <%= Html.HiddenFor(Function(model) model.FDDateUpd) %>
            <%= Html.HiddenFor(Function(model) model.FTTimeUpd) %>
            <%= Html.HiddenFor(Function(model) model.FTWhoUpd) %>
            <%= Html.HiddenFor(Function(model) model.FDDateIns) %>
            <%= Html.HiddenFor(Function(model) model.FTTimeIns) %>
            <%= Html.HiddenFor(Function(model) model.FTWhoIns) %>
        </div>
        <%-------------------ชื่อเอกสาร---------------------------%>  
        <!--<div class="xCN_DivManageTopic xCN_AllMenuFontSize">-->
        <div class="xW_DivSearch">
            <div class='xW_DivPath'>
                <label id="olaTopicName" ><%=ViewData("olaHeaderAdd")%></label> 
            </div>
        </div>        
        <!--</div>-->
        <%-------------------เมนู-------------------------------%>     
        <div id="odiMenuTop" class="xCN_DivMainMenuPage xCN_AllBorderColor">
              <div id="odiMenu" class="xW_DivMenu">
                    <div id="odiMenuSave" class="xCN_DivMenuSave" style="float: left;">
                        <a onclick="W_FRMxSaveDocument()" href="javascript:void(0)">
                            <div class="xCN_DivMenuNewCaption">
                                <%=ViewData("olaCanSave")%>
                            </div>
                        </a>
                    </div>
                    <div id="odiMenuClose" class="xCN_DivMenuHome" style="float: left;">
                        <a onclick = "W_FRMxForwClose()" href="javascript:void(0)">
                            <div class="xCN_DivMenuNewCaption">
                                <%=ViewData("olaHeaderList")%>
                            </div>
                        </a>
                    </div>
              </div>
            </div>
            <%-------------------รายละเอียด-------------------------------%> 
            <!--<div class="xW_DivDetail xCN_AllBackgroundColor2 xCN_AllBorderColor">-->
            <div class="xCN_DivMainMenuPage xCN_AllBackgroundColor xCN_AllBorderColor" style='height:525px'>
                <div class="xW_DivCaption">
                    <div class="xW_DivCaptionSub xCN_AllFontColorTextReq">
                        <label>*<%=ViewData("olaFTCptCode")%></label>
                    </div>
                    <div class="xW_DivCaptionSub xCN_AllFontColorTextReq">
                        <label>*<%=ViewData("olaFTCptName")%></label>
                    </div>
                    <div class="xW_DivCaptionSubEdit">
                        <label><%=ViewData("olaFTCptStaActive")%></label>
                    </div>

                </div>
                <div class="xW_DivData">
                    <div class="xW_DivDataSub">
                        <div class="xW_DivCode">
                            <%=Html.TextBoxFor(Function(model) model.FTCptCode, New With {.maxlength = "5",.style="width:200px",.Class="xW_InputTextCode",.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)"})%>
                        </div>
                        <div style="float:left">
                            <img src="<%=ViewData("oimgGencode")%>" 
                                onclick="W_FRMxGenCode()" 
                                alt="<%=ViewData("olaGenCode")%>"  />                      
                        </div>
                        <div>
                            <%=Html.ValidationMessageFor(Function(model) model.FTCptCode)%>
                        </div>                  
                    </div>
                    <div class="xW_DivDataSub">
                        <div>
                            <%=Html.TextBoxFor(Function(model) model.FTCptName, New With {.maxlength = "100", .style = "width:150px", .onkeypress = "return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)"})%>
                        </div>
                        <div>
                            <%=Html.ValidationMessageFor(Function(model) model.FTCptName)%>
                        </div>
                    </div>   
                    <div>
                        <div>
                            <%=Html.TextBoxFor(Function(model) model.FTCptStaActive, New With {.style = "display: none; ",.onkeypress="return W_CHKBCheckType(event.keyCode,event.which)"})%>
                            <%=Html.ValidationMessageFor(Function(model) model.FTCptStaActive)%>
                            <input type ="checkbox" id="ChkActive" onclick ="change()" />
                        </div>
                    </div>   
            </div>
        </div>
        
    </div>  
    
    <% End Using %>   
        
    
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="HeadContent">
 <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J001_LoadAutoGenCode.js")%>"></script>
 <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J002_General.js")%>"></script>
 <link type="text/css" rel="Stylesheet" href="<%=Url.Content("~/Content/AdaCss/Local/FCS_cvcManagementLocal.css")%>" />
 <link href="<%=Url.Content("~/Content/AdaCss/Global/FCS_CNCenter.css")%>" rel="stylesheet" type="text/css" />
</asp:Content>  
