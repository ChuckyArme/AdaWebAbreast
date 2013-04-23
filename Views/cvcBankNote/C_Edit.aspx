<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage(Of Adasoft.WebPos.Models.cmlTCNMBankNote)" %>
<%@ Import Namespace="System.Resources" %>
<%@ Import Namespace="AdaWebPos" %>
<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tLastLang As String = Session("tVB_LastLang")
        
        If tLastLang Is Nothing AndAlso tLastLang = "" Then
            AdaWebPos.My.Resources.resLCcvcBankNote.Culture = New System.Globalization.CultureInfo("EN")
            Resources.resGBMsg.Culture = New System.Globalization.CultureInfo("EN")
        Else
            AdaWebPos.My.Resources.resLCcvcBankNote.Culture = New System.Globalization.CultureInfo(tLastLang)
            Resources.resGBMsg.Culture = New System.Globalization.CultureInfo(tLastLang)
        End If
             
        ViewData("olaCanDelete") = AdaWebPos.My.Resources.resLCcvcBankNote.olaCanDelete
        ViewData("olaCanEdit") = AdaWebPos.My.Resources.resLCcvcBankNote.olaCanEdit
        ViewData("olaCanSave") = AdaWebPos.My.Resources.resLCcvcBankNote.olaCanSave
        ViewData("olaCreate") = AdaWebPos.My.Resources.resLCcvcBankNote.olaCreate
        ViewData("olaDetail") = AdaWebPos.My.Resources.resLCcvcBankNote.olaDetail
        ViewData("olaHeaderAdd") = AdaWebPos.My.Resources.resLCcvcBankNote.olaHeaderAdd
        ViewData("olaHeaderDetail") = AdaWebPos.My.Resources.resLCcvcBankNote.olaHeaderDetail
        ViewData("olaHeaderEdit") = AdaWebPos.My.Resources.resLCcvcBankNote.olaHeaderEdit
        ViewData("olaHeaderList") = AdaWebPos.My.Resources.resLCcvcBankNote.olaHeaderList
        ViewData("olaMenuName") = AdaWebPos.My.Resources.resLCcvcBankNote.olaMenuName
        ViewData("olaNotAccess") = AdaWebPos.My.Resources.resLCcvcBankNote.olaNotAccess
        ViewData("olaReport") = AdaWebPos.My.Resources.resLCcvcBankNote.olaReport
        ViewData("olaRowID") = AdaWebPos.My.Resources.resLCcvcBankNote.olaRowID
        ViewData("olaFTBntCode") = AdaWebPos.My.Resources.resLCcvcBankNote.olaFTBntCode
        ViewData("olaFTBntNameEng") = AdaWebPos.My.Resources.resLCcvcBankNote.olaFTBntNameEng
        ViewData("olaFTBntNameTha") = AdaWebPos.My.Resources.resLCcvcBankNote.olaFTBntNameTha
        ViewData("olaFTBntStaShw") = AdaWebPos.My.Resources.resLCcvcBankNote.olaFTBntStaShw
        ViewData("olaFCBntRateAmt") = AdaWebPos.My.Resources.resLCcvcBankNote.olaFCBntRateAmt
        ViewData("olaFTBntPic") = AdaWebPos.My.Resources.resLCcvcBankNote.olaFTBntPic
        ViewData("olaFDDateUpd") = AdaWebPos.My.Resources.resLCcvcBankNote.olaFDDateUpd
        ViewData("tMsgErrorData") = Resources.resGBMsg.tMsgErrorData
        ViewData("tMsgBrwFile") = Resources.resGBMsg.tMsgBrwFile
        ViewData("tMsgBrwFileOnlyImage") = Resources.resGBMsg.tMsgBrwFileOnlyImage
        ViewData("tMsgBrwFileError") = Resources.resGBMsg.tMsgBrwFileError
        
        ViewData("oimgSave") = Url.Content(Resources.resGBImageList.oimgSave)
        ViewData("oimgUndo") = Url.Content(Resources.resGBImageList.oimgUndo)
        ViewData("oimgBrowse") = Url.Content(Resources.resGBImageList.oimgBrowse)
        
        ViewData("tMsgUpload") = Resources.resGBMsg.tMsgUpload
        ViewData("tMsgCancel") = Resources.resGBMsg.tMsgCancel
        
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	<%=ViewData("olaHeaderEdit")%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<script type="text/javascript">
    window.onload = window_onload;
    function window_onload() {
        ////document.getElementById("loading").style.display = "none";
        changeTxt();
        tJ002_VirtualDirectory = '<%=Session("VirtualDirectory")%>';
        tJ003_VirtualDirectory = '<%=Session("VirtualDirectory")%>'; //*CH 20-02-2013
        J002_SETxReadOnly("FTBntCode", true);
        document.getElementById("FTBntCode").onkeydown = function() { return false; };
        W_SHWxShowPic();
    }  
      
    function LoadShowPic(ptFile,pobjImage)
    {
        document.getElementById(pobjImage).src =ptFile;
    }

    // ning 24/11/2010
    function W_SHWxShowPic() {

        var tImageName = '<%=model.FTBntPic%>';
        if (tImageName != null && tImageName != "") {
            document.getElementById('oimBnt').src = '<%=Url.Content("~/AdaImage/' + tImageName + '") %>';
        }
        else {
            document.getElementById('oimBnt').src = '<%=Url.Content("~/Content/img/AdaBrwPdtGrp/NoImage.png")%>';
        }

        var tImageSourc = document.getElementById('oimBnt').getAttribute("src");
        //document.getElementById('FTCmpLogo').value = tImageSourc;
    }

    function W_SHWxClearPic() {
        document.getElementById('oimBnt').src = '<%=Url.Content("~/AdaImage/imgNoImages.png")%>';
        document.getElementById('otbFTBntPic').src = "";
    }

    function change() {
        //			alert('Hello');
        var aaa = document.getElementById('FTBntStaShw');
        if (document.getElementById('ChkActive').checked == true) {
            aaa.value = '1';
        } else {
            aaa.value = '0';
        }
    }

    function changeTxt() {
        //			alert('Hello');
        var bbb = document.getElementById('ChkActive');
        if (document.getElementById('FTBntStaShw').value == '1') {
            bbb.checked = true;
        } else {
            bbb.checked = false;
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

    function W_FRMxForwClose() {
        J003_SHWxWaiting();
        window.location = '<%=Url.Action("Index","cvcBankNote")%>';
    }

    function W_FRMxSaveDocument() {
        var tCode = document.getElementById("FTBntCode").value;
        var tNameOth = J002_STRttrim(document.getElementById("FTBntNameEng").value);
        var tName = J002_STRttrim(document.getElementById("FTBntNameTha").value);

        if (tCode == "" || tCode == null) {
            alert('<%=ViewData("tMsgErrorData")%>');
            document.getElementById("FTBntCode").focus();
            return false;
        }

        if (tNameOth == "" || tNameOth == null) {
            alert('<%=ViewData("tMsgErrorData")%>');
            document.getElementById("FTBntNameEng").focus();
            return false;
        }

        if (tName == "" || tName == null) {
            alert('<%=ViewData("tMsgErrorData")%>');
            document.getElementById("FTBntNameTha").focus();
            return false;
        }

        var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Add%>';
        var tPwdAllow = '<%=AdaWebPos.cCNVB.bVB_CNPwdAllow %>';
        var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
        var bAllow = J002_CHKtCheckAuthorize('omnMngBankNote', tAuthor, tPwdAllow, tMsgNotAuthorize);
        if (bAllow == false) {
            return false;
        }
        else {
            document.WBankNote.submit();
        }
    }

</script>

    <% Using Html.BeginForm("C_Edit", "cvcBankNote", FormMethod.Post, New With {.collection = "dat_TCNMBankNote", .ptValue = "BankNote_Edit", .name = "WBankNote", .ID = "WBankNote", .enctype = "multipart/form-data"})%>
     <div class="xCN_DivMain xCN_AllFontFamily xCN_AllFontSize xCN_AllFontColor" >
        <div style="display:none">
                    <%= Html.HiddenFor(Function(model) model.FDDateUpd) %>
                    <%= Html.HiddenFor(Function(model) model.FTTimeUpd) %>
                    <%= Html.HiddenFor(Function(model) model.FTWhoUpd) %>
                    <%= Html.HiddenFor(Function(model) model.FDDateIns) %>
                    <%= Html.HiddenFor(Function(model) model.FTTimeIns) %>
                    <%= Html.HiddenFor(Function(model) model.FTWhoIns) %>
        </div>
        <%-------------------ชื่อเอกสาร---------------------------%>   
        <div class="xW_DivSearch">
            <div class='xW_DivPath'>
                <label id="olaTopicName" ><%=ViewData("olaHeaderEdit")%></label> 
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
                      
        <div class="xCN_AllBorderColor xCN_AllBackgroundColor xCN_DivMainMenuPage" style='height:525px;'>
            <div class="xW_DivCaption">
                <div class="xW_DivCaptionSub xCN_AllFontColorTextReq">
                    <label>*<%=ViewData("olaFTBntCode")%></label>
                </div>
                <div class="xW_DivCaptionSub xCN_AllFontColorTextReq">
                    <label>*<%=ViewData("olaFTBntNameEng")%></label>
                </div>
                <div class="xW_DivCaptionSub xCN_AllFontColorTextReq">
                    <label>*<%=ViewData("olaFTBntNameTha")%></label>
                </div>
                <div class="xW_DivCaptionSub">
                    <label><%=ViewData("olaFCBntRateAmt")%></label>
                </div>
                <div class="xW_DivCaptionSub">
                    <label><%=ViewData("olaFTBntPic")%></label>
                </div>
                <div class="xW_DivCaptionSub">
                    <label><%=ViewData("olaFTBntStaShw")%></label>
                </div>
              
            </div>
            <div class="xW_DivData">
                <div class="xW_DivDataSub">
                    <div class="xW_DivCode">
                        <input type="text" 
                            value="<%=model.FTBntCode%>" 
                            id="FTBntCode" 
                            name="FTBntCode" 
                            class="xW_InputTextCode"
                            maxlength = '5' />
                        <%=Html.ValidationMessageFor(Function(model) model.FTBntCode)%>
                    </div>                 
                </div>
                <div class="xW_DivDataSub">
                    <%=Html.TextBoxFor(Function(model) model.FTBntNameEng, New With {.maxlength = "100",.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)"})%>
                    <%=Html.ValidationMessageFor(Function(model) model.FTBntNameEng)%>
                </div>
                <div class="xW_DivDataSub">
                    <%=Html.TextBoxFor(Function(model) model.FTBntNameTha, New With {.maxlength = "100",.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)"})%>
                    <%=Html.ValidationMessageFor(Function(model) model.FTBntNameTha)%>
                </div>
                <div class="xW_DivDataSub">
                    <%=Html.TextBoxFor(Function(model) model.FCBntRateAmt, New With {.onkeypress="return J002_CHKbCheckNumOnly('567',event.keyCode,false)"})%>
                    <%=Html.ValidationMessageFor(Function(model) model.FCBntRateAmt)%>
                </div>
                <%--<div class="xW_DivDataSub">
                    
                        <%=Html.TextBoxFor(Function(model) model.FTBntPic, New With {.maxlength = "255"})%>
                        <%=Html.ValidationMessageFor(Function(model) model.FTBntPic)%>
                    
                </div> --%>
                <div class="xW_DivDataSub">
                        <div style="float:left;">
                            <input type="hidden" id="FTBntPic" name="FTBntPic" value="<%=model.FTBntPic%>" />
                            <input type="file" id="otbFTBntPic" name="otbFTBntPic" style="width:205px;"/>
                        </div>
                        <div style="float:left">
                            <input type="button" id="obUploadPic" style="width:100px;" value="<%=ViewData("tMsgUpload")%>"/>
                        </div>
                        <div>
                            <input type="button" id="obClearPic" style="width:100px;" value="<%=ViewData("tMsgCancel")%>" onclick="W_SHWxClearPic();"/>
                        </div>
                    </div>      
                <div>
                    <%=Html.TextBoxFor(Function(model) model.FTBntStaShw, New With {.style = "display: none; "})%>
                    <%=Html.ValidationMessageFor(Function(model) model.FTBntStaShw)%>
                    <input type ="checkbox" id="ChkActive" onclick ="change()"/>
                </div>
                <div>
                        <img id ="oimBnt" alt="" src="<%=Url.Content("~/AdaImage/imgNoImages.png") %>"  style="width:150px;height:150px;margin:5px 10px 10px 10px;overflow:hidden;"/>
                    </div>
        </div>
        </div>
    </div>
    <% End Using %>
  
  <script language="javascript" type="text/javascript" >
      $(document).ready(function(e) {
          $("#obUploadPic").click(function() {
              J003_SHWxWaiting();
              $file = $("#otbFTBntPic");
              var $filePath = $.trim($file.val());
              if ($filePath == "") {
                  alert('<%=ViewData("tMsgBrwFile")%>');
                  J003_DISxWaiting();
                  return;
              }
              var $ext = $filePath.split(".").pop().toLowerCase();
              var $allow = new Array("gif", "png", "jpg", "jpeg");
              if ($.inArray($ext, $allow) == -1) {
                  alert('<%=ViewData("tMsgBrwFileOnlyImage")%>');
                  J003_DISxWaiting();
                  return;
              }

              $("#WBankNote").attr("action", '<%=Url.Action("C_DATxSaveImage","cvcBankNote") %>');
              //alert(565);

              try {
                  $("#WBankNote").submit();
                  //alert('<%=Url.Action("C_DATxSaveImage","cvcCompany") %>');
              } catch (err) {
                  alert('<%=ViewData("tMsgBrwFileError")%>');
              }
              //document.getElementById('FTCmpLogo').value = $filePath;
          });
      });       

</script>
  
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J001_LoadAutoGenCode.js")%>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/jquery-1.4.2.min.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J002_General.js")%>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J003_SplashDialog.js")%>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J013_LoadChkBoxAll.js")%>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/jquery-1.3.2.js")%>"></script> 
    <link href="<%=Url.Content("~/Content/AdaCss/Global/FCS_CNCenter.css")%>" rel="stylesheet" type="text/css" /> 
    <link type="text/css" rel="Stylesheet" href="<%=Url.Content("~/Content/AdaCss/Local/FCS_cvcManagementLocal.css")%>" />
</asp:Content>

