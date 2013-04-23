<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage(Of Adasoft.WebPos.Models.cmlTPSTCoupon)" %>
<%@ Import Namespace="AdaWebPos" %>

<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tLastLang As String = Session("tVB_LastLang")
        If tLastLang Is Nothing AndAlso tLastLang = "" Then
            AdaWebPos.My.Resources.resLCcvcCoupon.Culture = New System.Globalization.CultureInfo("EN")
            Resources.resGBMsg.Culture = New System.Globalization.CultureInfo("EN")
        Else
            AdaWebPos.My.Resources.resLCcvcCoupon.Culture = New System.Globalization.CultureInfo(tLastLang)
            Resources.resGBMsg.Culture = New System.Globalization.CultureInfo(tLastLang)
        End If
        
        ViewData("olaRowID") = AdaWebPos.My.Resources.resLCcvcCoupon.olaRowID
        ViewData("olaCanEdit") = AdaWebPos.My.Resources.resLCcvcCoupon.olaCanEdit
        ViewData("olaCanSave") = AdaWebPos.My.Resources.resLCcvcCoupon.olaCanSave
        ViewData("olaCreate") = AdaWebPos.My.Resources.resLCcvcCoupon.olaCreate
        ViewData("olaFTCptCode") = AdaWebPos.My.Resources.resLCcvcCoupon.olaFCCpnBalance
        ViewData("olaFCCpnBalance") = AdaWebPos.My.Resources.resLCcvcCoupon.olaFCCpnSalePri
        ViewData("olaFCCpnValue") = AdaWebPos.My.Resources.resLCcvcCoupon.olaFCCpnValue
        ViewData("olaFDCpnExpired") = AdaWebPos.My.Resources.resLCcvcCoupon.olaFDCpnExpired
        ViewData("olaFTCpnBarCode") = AdaWebPos.My.Resources.resLCcvcCoupon.olaFTCpnBarCode
        ViewData("olaFTCpnCode") = AdaWebPos.My.Resources.resLCcvcCoupon.olaFTCpnCode
        ViewData("olaFTCpnDesc") = AdaWebPos.My.Resources.resLCcvcCoupon.olaFTCpnDesc
        ViewData("olaFTCpnStaActive") = AdaWebPos.My.Resources.resLCcvcCoupon.olaFTCpnStaActive
        ViewData("olaFTCpnStaBook") = AdaWebPos.My.Resources.resLCcvcCoupon.olaFTCpnStaBook
        ViewData("olaFTCpnStaSale") = AdaWebPos.My.Resources.resLCcvcCoupon.olaFTCpnStaSale
        ViewData("olaFTCptCode") = AdaWebPos.My.Resources.resLCcvcCoupon.olaFTCptCode
        ViewData("olaMenuName") = AdaWebPos.My.Resources.resLCcvcCoupon.olaMenuName
        ViewData("olaNotAccess") = AdaWebPos.My.Resources.resLCcvcCoupon.olaNotAccess
        ViewData("olaReport") = AdaWebPos.My.Resources.resLCcvcCoupon.olaReport
        ViewData("olaHeaderEdit") = AdaWebPos.My.Resources.resLCcvcCoupon.olaHeaderEdit
        ViewData("olaHeaderAdd") = AdaWebPos.My.Resources.resLCcvcCoupon.olaHeaderAdd
        ViewData("olaHeaderDetail") = AdaWebPos.My.Resources.resLCcvcCoupon.olaHeaderDetail
        ViewData("olaHeaderList") = AdaWebPos.My.Resources.resLCcvcCoupon.olaHeaderList
        ViewData("olaDetail") = AdaWebPos.My.Resources.resLCcvcCoupon.olaDetail
        ViewData("olaGenCode") = AdaWebPos.My.Resources.resLCcvcCoupon.olaGenCode
        ViewData("olaBrowse") = Resources.resGBMsg.tMsgBrowse
        ViewData("tMsgDAT_Notfound001") = Resources.resGBMsg.tMsgDAT_Notfound001
        ViewData("tMsgErrorData") = Resources.resGBMsg.tMsgErrorData
        ViewData("tMsgErroMaxGenCode")=Resources.resGBMsg.tMsgErroMaxGenCode
        
        ViewData("oimgSave") = Url.Content(Resources.resGBImageList.oimgSave)
        ViewData("oimgUndo") = Url.Content(Resources.resGBImageList.oimgUndo)
        ViewData("oimgGencode") = Url.Content(Resources.resGBImageList.oimgGencode)
        ViewData("oimgBrowse") = Url.Content(Resources.resGBImageList.oimgBrowse)
       
       'กำหนด format วันที่ให้กับ culture ของ thread
        Dim oSp As New cCNSP
        oSp.SP_SETxLanguageCulture()
    End Sub

</script> 

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    <%=ViewData("olaHeaderAdd")%></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  
<script type="text/javascript">

    window.onload = window_onload;
    function window_onload() {
        ////document.getElementById("loading").style.display = "none";
        changeTxt();
        tJ002_VirtualDirectory = '<%=Session("VirtualDirectory")%>';
        tJ001_VirtualDirectory = '<%=Session("VirtualDirectory")%>';
        tJ003_VirtualDirectory = '<%=Session("VirtualDirectory")%>'; //*CH 20-02-2013
        J002_SETxReadOnly("FTCpnCode", true);
        document.getElementById("FTCpnCode").onkeydown = function() { return false; };
    }

    //@Funtion: Generate Code
    //@Edit: Kriengkai (Kik)
    //@Since: 19/4/54 16:38
    function W_FRMxGenCode() {
        J001_GETtAutoGenCode('cvcCoupon', 'C_Create_GetAutoCode', document.getElementById('FTCpnCode'));
        J002_SETxReadOnly("FTCpnCode", false);
        document.getElementById("FTCpnCode").onkeydown = function() { return true; };

        var tCode = document.getElementById('FTCpnCode').value;
        if (tCode == "Adasoft.Abreast.MaxValue") {
            document.getElementById('FTCpnCode').value = "";
            document.getElementById('FTCpnCode').focus();
            alert('<%=ViewData("tMsgErroMaxGenCode")%>');
            return false;
        }
    }

    //@Funtion: Buttom Back
    //@Edit: Kriengkai (Kik)
    //@Since: 19/4/54 16:38
    function W_FRMxForwClose() {
        J003_SHWxWaiting();
        window.location = '<%=Url.Action("Index","cvcCoupon")%>';
    }

    //@Funtion: BrowseData
    //@Edit: Kriengkai (Kik)
    //@Since: 20/4/54 10:21
    function W_DATxBrwData(ptCase, pObjID, pObjName) {
        var tDate = J002_GETtTimeStamp();
        var tReturnedValue = showModalDialog('<%=Url.Action("C_BRWxMaster","cvcDistrict") %>' + '?ptCase=' + ptCase + '&ptDate=' + tDate, "Passed String", "dialogWidth:800px; dialogHeight:500px; status:no; center:yes;titlebar =0");
        //var tReturnedValue = showModalDialog('/cvcBranch' + '/C_BRWxMaster?ptCase=' + ptCase  + '&ptBchCode=' + tBchCode + '&ptDate=' + tDate, "Passed String", "dialogWidth:800px; dialogHeight:500px; status:no; center:yes;titlebar =0");
        if (tReturnedValue != undefined) {
            if (tReturnedValue != '12233344445555566666677777778888888899999999900000000001223334444555556666667777777888888889999999990000000000') {
                document.getElementById(pObjID).value = tReturnedValue.split(";")[0];
                document.getElementById(pObjName).value = tReturnedValue.split(";")[1];
            }
        }
    }

    function otbFTCptCode_OnKeyDown() {
        if (window.event.keyCode == 13) {
            W_FRMxGetFieldName('cvcCoupon', 'C_GETtFeildName', 'otbFTCptCode', 'otbFTCptName', 'otbFTCptCodeOld', 'TPSTCpnType', 'FTCptCode', 'FTCptName', '<%=ViewData("olaFTCptCode")%>');
            return !(window.event && window.event.keyCode == 13);
        }
    }
    function W_FRMxGetFieldName(ptController, ptAction, ptObjCodeId, ptObjNameId, ptObjCodeOldId, ptTblName, ptFieldCode, ptFieldName, ptMsgErr) {
        var tMsgNoData = '<%=ViewData("tMsgDAT_Notfound001")%>' + ptMsgErr;
        J002_GETxFieldName(ptController, ptAction, ptObjCodeId, ptObjNameId, ptObjCodeOldId, ptTblName, ptFieldCode, ptFieldName, tMsgNoData)

    }
    function otbFTCptCode_Onblur() {
        W_FRMxGetFieldName('cvcCoupon', 'C_GETtFeildName', 'otbFTCptCode', 'otbFTCptName', 'otbFTCptCodeOld', 'TPSTCpnType', 'FTCptCode', 'FTCptName', '<%=ViewData("olaFTCptCode")%>');
    }
    
    function change(){
//			alert('Hello');
         var aaa = document.getElementById('FTCpnStaActive');
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
		    if (document.getElementById('FTCpnStaActive').value == '1') {
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

    function W_FRMxSaveDocument() {
        var tCode = document.getElementById("FTCpnCode").value;
        var tName = J002_STRttrim(document.getElementById("FTCpnBarCode").value);
        var tDesc = J002_STRttrim(document.getElementById("FTCpnDesc").value);

        if (tCode == "" || tCode == null) {
            alert('<%=ViewData("tMsgErrorData")%>');
            document.getElementById("FTCpnCode").focus();
            return false;
        }

        if (tName == "" || tName == null) {
            alert('<%=ViewData("tMsgErrorData")%>');
            document.getElementById("FTCpnBarCode").focus();
            return false;
        }

        if (tDesc == "" || tDesc == null) {
            alert('<%=ViewData("tMsgErrorData")%>');
            document.getElementById("FTCpnDesc").focus();
            return false;
        }

        if (tCode == "CPYY-#####") {
            W_FRMxGenCode();
        }

        var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Add%>';
        var tPwdAllow = '<%=AdaWebPos.cCNVB.bVB_CNPwdAllow %>';
        var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
        var bAllow = J002_CHKtCheckAuthorize('omnMngCoupon', tAuthor, tPwdAllow, tMsgNotAuthorize);
        if (bAllow == false) {
            return false;
        }
        else {
            document.wCoupon.submit();
        }
    }
   
</script>

    <%--The line below is a workaround for a VB / ASPX designer bug--%>
    <%=""%>
    <% Using Html.BeginForm("C_Create", "cvcCoupon", FormMethod.Post, New With {.collection = "cmlCoupon", .ptValue = "Coupon_Create", .name = "wCoupon", .runat = "server"})%>
        <%-------------------ส่วนรายละเอียด-------------------------%>  
        <div class="xCN_DivMain xCN_AllFontFamily xCN_AllFontSize xCN_AllFontColor" >
            <div style="display:none">
                        <%= Html.HiddenFor(Function(model) model.FDDateUpd) %>
                        <%= Html.HiddenFor(Function(model) model.FTTimeUpd) %>
                        <%= Html.HiddenFor(Function(model) model.FTWhoUpd) %>
                        <%= Html.HiddenFor(Function(model) model.FDDateIns) %>
                        <%= Html.HiddenFor(Function(model) model.FTTimeIns) %>
                        <%= Html.HiddenFor(Function(model) model.FTWhoIns) %>
                        <input type ="hidden" id="otbFTCptCodeOld" />
            </div>
            <%-------------------ชื่อเอกสาร---------------------------%>   
            <div class="xW_DivSearch">
                <div class='xW_DivPath'>
                    <label id="olaTopicName" ><%=ViewData("olaHeaderAdd")%></label> 
                </div>    
            </div>
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
            <div class="xCN_DivMainMenuPage xCN_AllBackgroundColor xCN_AllBorderColor" style='height:525px;'>
                <div class="xW_DivCaption" style="width:120px">
                    <div class="xW_DivCaptionSub xCN_AllFontColorTextReq">
                        <label>* <%=ViewData("olaFTCpnCode")%></label>
                    </div>
                    <div class="xW_DivCaptionSub">
                        <label><%=ViewData("olaFTCpnBarCode")%></label>
                    </div>
                    <div class="xW_DivCaptionSub xCN_AllFontColorTextReq">
                        <label>* <%=ViewData("olaFTCpnDesc")%></label>
                    </div>
                    <div class="xW_DivCaptionSub">
                        <label><%=ViewData("olaFDCpnExpired")%></label>
                    </div>
                    <div class="xW_DivCaptionSub">
                        <label><%=ViewData("olaFTCptCode")%></label>
                    </div>
                    <div class="xW_DivCaptionSub" style="width:120px">
                        <label><%=ViewData("olaFTCpnStaActive")%></label>
                    </div>
                  
                </div>
                <div class="xW_DivData">
                    <div class="xW_DivDataSub">
                        <div>
                            <%=Html.TextBoxFor(Function(model) model.FTCpnCode, New With {.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)", .class = "xW_InputTextCode", .readonly = "readonly", .maxlength = "30"})%>
                        </div>
                        <div style="float:left">
                            <img src="<%=ViewData("oimgGencode")%>"
                                onclick="W_FRMxGenCode()" 
                                alt="<%=ViewData("olaGenCode")%>"  />                      
                        </div> 
                        <div>
                            <%=Html.ValidationMessageFor(Function(model) model.FTCpnCode)%>
                        </div>
                    </div>
                    <div class="xW_DivDataSub">
                        <div>
                            <%=Html.TextBoxFor(Function(model) model.FTCpnBarCode, New With {.maxlength = "30", .onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)"})%>
                            <%=Html.ValidationMessageFor(Function(model) model.FTCpnBarCode)%>
                        </div>
                    </div>
                    <div class="xW_DivDataSub">
                        <div>
                            <%=Html.TextBoxFor(Function(model) model.FTCpnDesc, New With {.maxlength = "255", .onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)"})%>
                            <%=Html.ValidationMessageFor(Function(model) model.FTCpnDesc)%>
                        </div>
                    </div>       
                    <div class="xW_DivDataSub">
                        <div>
                            <%=Html.Telerik().DatePicker().Format("dd/MM/yyyy") _
                                                                .Name("FDCpnExpired") _
                                                                .Value(Model.FDCpnExpired) _
                                                                .InputHtmlAttributes(New With {.id = "FDCpnExpired"}) _
                                                                .ButtonTitle("..") _
                                                                .ShowButton(True)
                            %>    
                            <%=Html.ValidationMessageFor(Function(model) model.FDCpnExpired)%>
                        </div>
                    </div>
                    <div class="xW_DivDataSub">
                        <div class="xW_DivCode">
                            <%=Html.TextBoxFor(Function(model) model.FTCptCode, New With {.class="xW_InputTextCode", .id = "otbFTCptCode", .onblur = "otbFTCptCode_Onblur()", .onfocus = "J002_SETxKeepOldOnfocus('otbFTCptCode','otbFTCptCodeOld')", .onkeydown = "otbFTCptCode_OnKeyDown()"})%>
                            <%=Html.ValidationMessageFor(Function(model) model.FTCptCode)%>
                            <input type="hidden" id="otbOldCptType" />
                        </div> 
                        <div class="xCN_DivBrowData">
                            <img src="<%=ViewData("oimgBrowse")%>" alt="<%=ViewData("olaBrowse").ToString%>"  onclick="W_DATxBrwData('Cpt','otbFTCptCode','otbFTCptName')"
                                style="border-style: none; border-color: inherit; border-top:0; border-width: 0; width:18px; height:18px; cursor:pointer;"  />
                        </div>
                        <div class="xW_InputTextCode">
                            <input type="text" id="otbFTCptName" readonly="readonly" class="xCN_AllReadOnlyBGColor" name="otbFTCptName" style="width:360px" />
                        </div> 
                    </div>
                    <div>
                        <div>
                            <%=Html.TextBoxFor(Function(model) model.FTCpnStaActive, New With {.style = "display: none; "})%>
                            <%=Html.ValidationMessageFor(Function(model) model.FTCpnStaActive)%>
                            <input type ="checkbox" id="ChkActive" onclick ="change()"/>
                        </div>
                    </div>
                </div>
            </div>
    </div> 
    <% End Using %>

    <% Html.Telerik().ScriptRegistrar().Globalization(True)%>

</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="HeadContent">
<script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J001_LoadAutoGenCode.js")%>"></script>
<script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J002_General.js")%>"></script>
<script type="text/javascript" src="<%=Url.Content("~/Scripts/jquery-1.3.2.js")%>"></script> 
<link type="text/css" rel="Stylesheet" href="<%=Url.Content("~/Content/AdaCss/Local/FCS_cvcManagementLocal.css")%>" />
<link href="<%=Url.Content("~/Content/AdaCss/Global/FCS_CNCenter.css")%>" rel="stylesheet" type="text/css" />
</asp:Content>  