<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage(Of Adasoft.WebPos.Models.cmlTCNMAcPrd)" %>
<%@ Import Namespace="System.Resources" %>
<%@ Import Namespace="AdaWebPos" %>
<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        AdaWebPos.My.Resources.resLCcvcPeriod.Culture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
        Resources.resGBMsg.Culture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
      
        ViewData("olaRowID") = AdaWebPos.My.Resources.resLCcvcPeriod.olaRowID
        ViewData("olaCanDelete") = AdaWebPos.My.Resources.resLCcvcPeriod.olaCanDelete
        ViewData("olaCanEdit") = AdaWebPos.My.Resources.resLCcvcPeriod.olaCanEdit
        ViewData("olaCanSave") = AdaWebPos.My.Resources.resLCcvcPeriod.olaCanSave
        ViewData("olaCreate") = AdaWebPos.My.Resources.resLCcvcPeriod.olaCreate
        ViewData("olaFTPrdCode") = AdaWebPos.My.Resources.resLCcvcPeriod.olaFTPrdCode
        ViewData("olaFTPrdName") = AdaWebPos.My.Resources.resLCcvcPeriod.olaFTPrdName
        ViewData("olaFDPrdEnd") = AdaWebPos.My.Resources.resLCcvcPeriod.olaFDPrdEnd
        ViewData("olaFDPrdStart") = AdaWebPos.My.Resources.resLCcvcPeriod.olaFDPrdStart
        ViewData("olaFTPrdStatus") = AdaWebPos.My.Resources.resLCcvcPeriod.olaFTPrdStatus
        ViewData("olaFTPrdUsed") = AdaWebPos.My.Resources.resLCcvcPeriod.olaFTPrdUsed
        ViewData("olaMenuName") = AdaWebPos.My.Resources.resLCcvcPeriod.olaMenuName
        ViewData("olaNotAccess") = AdaWebPos.My.Resources.resLCcvcPeriod.olaNotAccess
        ViewData("olaHeaderEdit") = AdaWebPos.My.Resources.resLCcvcPeriod.olaHeaderEdit
        ViewData("olaHeaderAdd") = AdaWebPos.My.Resources.resLCcvcPeriod.olaHeaderAdd
        ViewData("olaHeaderDetail") = AdaWebPos.My.Resources.resLCcvcPeriod.olaHeaderDetail
        ViewData("olaHeaderList") = AdaWebPos.My.Resources.resLCcvcPeriod.olaHeaderList
        ViewData("olaDetail") = AdaWebPos.My.Resources.resLCcvcPeriod.olaDetail
        ViewData("olaGenCode") = AdaWebPos.My.Resources.resLCcvcPeriod.olaGenCode
        ViewData("tMsgErrorData")=Resources.resGBMsg.tMsgErrorData
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
  window.onload = window_onload_Page;
  function window_onload_Page() 
  {
    tJ001_VirtualDirectory = '<%=Session("VirtualDirectory")%>';
    tJ002_VirtualDirectory = '<%=Session("VirtualDirectory")%>';
    tJ003_VirtualDirectory = '<%=Session("VirtualDirectory")%>'; //*CH 20-02-2013
    J002_SETxReadOnly("FTPrdCode", true);
    //W_SETxComboLang();
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
       J001_GETtAutoGenCode('cvcPeriod', 'C_Create_GetAutoCode', document.getElementById('FTPrdCode'));
       J002_SETxReadOnly("FTPrdCode", false);

       var tCode = document.getElementById('FTPrdCode').value;
       if (tCode == "Adasoft.Abreast.MaxValue") {
           document.getElementById('FTPrdCode').value = "";
           document.getElementById('FTPrdCode').focus();
           alert('<%=ViewData("tMsgErroMaxGenCode")%>');
           return false;
       }
       return true;
    }
    function W_DATxSaveDocument() {
        J003_SHWxWaiting();
        if (document.getElementById("FTPrdCode").value == "" || document.getElementById("FTPrdCode").value == null) {
            alert('<%=ViewData("tMsgErrorData")%>');
            document.getElementById("FTPrdCode").focus();
            J003_DISxWaiting();
            return false;
        }

        var tName = J002_STRttrim(document.getElementById("FTPrdName").value);

        if (tName == "" || tName == null) {
            alert('<%=ViewData("tMsgErrorData")%>');
            document.getElementById("FTPrdName").focus();
            J003_DISxWaiting();
            return false;
        }
        
        if (document.getElementById("FTPrdCode").value == "###") {
            if (!W_FRMxGenCode()) {
                J003_DISxWaiting();
                return false;
            }
        }
   
        try {
            var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Add%>';
            var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
            var tPwdAllow = '<%=Session("bVB_CNPwdAllow")%>';
            var bAllow = J002_CHKtCheckAuthorize('omnMngPeriod', tAuthor, tPwdAllow, tMsgNotAuthorize);
            if (bAllow == false) {
                J003_DISxWaiting();
                return false;
            }
//            var tCode = document.getElementById("FTPrdCode").value;
//            var tName = document.getElementById("FTPrdName").value;
//            var tDateStart = document.getElementById("FDPrdStart").value;
//            tDateStart = J002_CONtDateTime(tDateStart);
//            var tDateEnd = document.getElementById("FDPrdEnd").value;
//            tDateEnd = J002_CONtDateTime(tDateEnd);
//            var tUrl;
//            tUrl = '<%=Url.Action("C_Create","cvcPeriod")%>' + "?ptDate=" + Math.random();
//            var oW_xmlHttp;
//            var tSendData;
//            tSendData = "FTPrdCode=" + tCode + "&" + "FTPrdName=" + tName + "&" + "FDPrdStart=" + tDateStart + "&" + "FDPrdEnd=" + tDateEnd;
//            oW_xmlHttp = J002_GEToXMLHttpRequest();
//            oW_xmlHttp.open("Post", encodeURI(tUrl), false);
//            oW_xmlHttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
//            oW_xmlHttp.send(tSendData);
//            window.location = '<%=Url.Action("Index","cvcPeriod")%>';
            document.getElementById("Period_Create").submit();
        }
        catch (ex) {
            J002_SHWxMsgError("W_DATxSaveDocument", ex);
            J003_DISxWaiting();
        }
    }

    //@Funtion: Buttom Back
    //@Edit: Kriengkai (Kik)
    //@Since: 19/4/54 16:38
    function W_FRMxForwClose() {
        J003_SHWxWaiting();
        window.location = '<%=Url.Action("Index","cvcPeriod")%>';
    }

</script>

<script language="javascript" type="text/javascript" for="window" event="onload">
// <!CDATA[
return window_onload_Page()
// ]]>
</script>
<% Using Html.BeginForm("C_Create", "cvcPeriod", FormMethod.Post, New With {.collection = "cmlPeriod", .name = "Period_Create", .id = "Period_Create"})%>  
<div class="xCN_DivMain xCN_AllFontFamily xCN_AllFontSize xCN_AllFontColor" >
    
    <%-------------------ชื่อเอกสาร---------------------------%>   
      <%--<div class="xCN_DivManageTopic xCN_AllMenuFontSize">--%>
      <div class="xW_DivSearch">
        <div class='xW_DivPath'>
            <label id="Label1" ><%=ViewData("olaHeaderAdd")%></label>
        </div>
      </div> 
        <%--</div>--%>
    <%-------------------เมนูด้านบนสุด---------------------------%>     
        <div id="odiMenu" class="xCN_DivMainMenuPage xCN_AllBorderColor">
            <div id="odiMenuSave" class="xCN_DivMenu">
                <div id="odiMenuSave" class="xCN_DivMenuSave">
                    <a onclick="W_DATxSaveDocument()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaCanSave")%>
                        </div>
                    </a>
                </div>
                <div id="odiMenuClose" class="xCN_DivMenuHome">
                    <a onclick="W_FRMxForwClose()">
                        <div class="xCN_DivMenuNewCaption">
                           <%=ViewData("olaHeaderList")%> 
                        </div>
                    </a>                               
                </div>
            </div>        
      </div>
    
    <%-------------------ส่วนรายละเอียด-------------------------%>  
    <div class="xCN_AllBorderColor xCN_AllBackgroundColor xCN_DivMainMenuPage" style='height:525px;'>
         <div class="xW_DivDetail">
         <div class="xW_DivCaption">
            <div class="xW_DivCaptionSub xCN_AllFontColorTextReq">
                 <label> *<%=ViewData("olaFTPrdCode")%></label>
                 
            </div>
            <div class="xW_DivCaptionSub xCN_AllFontColorTextReq">
                <label>*<%=ViewData("olaFTPrdName")%></label>
            </div>
            <div class="xW_DivCaptionSub">
               <label> <%=ViewData("olaFDPrdStart")%></label>
            </div>
            <div class="xW_DivCaptionSub">
               <label> <%=ViewData("olaFDPrdEnd")%></label>
            </div>
      
        </div>
         <div class="xW_DivData">
      
                     <div class="xW_DivDataSub" style="width:450px">
                        <div class="xW_DivCode" style="float:left">
                            <%=Html.TextBoxFor(Function(model) model.FTPrdCode, New With {.maxlength = "5", .id = "FTPrdCode",.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)"})%>
                        </div>
                        <div class="xCN_DivBrowData ">
                            <img src="<%=ViewData("oimgGencode")%>" 
                                onclick="W_FRMxGenCode()" 
                                alt="<%=ViewData("olaGenCode")%>"  />                      
                        </div>  
                        <div>
                            <%=Html.ValidationMessageFor(Function(model) model.FTPrdCode)%>
                        </div>                
                    </div>
           
               <div class="xW_DivDataSub">
                <div style="float:left">
                   <%=Html.TextBoxFor(Function(model) model.FTPrdName, New With {.maxlength = "50",.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)"})%>
                   </div>
                <div>
                   <%=Html.ValidationMessageFor(Function(model) model.FTPrdName)%>
                </div>
             </div>
               <div class="xW_DivDataSub">

                <%=Html.Telerik().DatePicker().Format("dd/MM/yyyy").Name("FDPrdStart").Value(Model.FDPrdStart).InputHtmlAttributes(New With {.id = "FDPrdStart", .name = "FDPrdStart"}).ButtonTitle("..").ShowButton(True)%>
                               
               <%--<%=Html.ValidationMessageFor(Function(model) model.FDPrdStart)%>--%>
                         
               </div>
               
               <div class="xW_DivDataSub">

                    <%=Html.Telerik().DatePicker().Format("dd/MM/yyyy").Name("FDPrdEnd").Value(Model.FDPrdEnd).InputHtmlAttributes(New With {.id = "FDPrdEnd", .name = "FDPrdEnd"}).Format("dd/MM/yyyy").ButtonTitle("..").ShowButton(True)%>    
                         <%--<%=Html.ValidationMessageFor(Function(model) model.FDPrdEnd)%>--%>

               </div>
               
                <%=Html.HiddenFor(Function(model) model.FDDateUpd) %>
                <%=Html.HiddenFor(Function(model) model.FTTimeUpd)%>
                <%=Html.HiddenFor(Function(model) model.FTWhoUpd)%>
                <%=Html.HiddenFor(Function(model) model.FDDateIns)%>
                <%=Html.HiddenFor(Function(model) model.FTTimeIns)%>
                <%=Html.HiddenFor(Function(model) model.FTWhoIns)%>
         </div>        
         
     </div>             
    </div>
                
    <% End Using %>  
      
</div>      
      
</asp:Content>

<asp:content ID="Content3" contentPlaceHolderID="HeadContent" runat="server">    
<script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J001_LoadAutoGenCode.js")%>"></script>
<script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J002_General.js")%>"></script>
<link rel="Stylesheet" href="<%=Url.Content("~/Content/AdaCss/Local/FCS_cvcPeriod.css")%>" />
<link href="<%=Url.Content("~/Content/AdaCss/Global/FCS_CNCenter.css")%>" rel="stylesheet" type="text/css" />      

  
</asp:content>