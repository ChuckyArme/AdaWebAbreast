<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage(Of Adasoft.WebPos.Models.cmlTSysUser)" %>
<%@ Import Namespace="System.Resources" %>
<%@ Import Namespace="AdaWebPos" %>
<%@ Import Namespace ="Adasoft.WebPos.Models" %>
<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        AdaWebPos.My.Resources.resLCcvcUser.Culture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
        Resources.resGBMsg.Culture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
        
        ViewData("olaRowID") = AdaWebPos.My.Resources.resLCcvcUser.olaRowID
        ViewData("olaCanEdit") = AdaWebPos.My.Resources.resLCcvcUser.olaCanEdit
        ViewData("olaCanSave") = AdaWebPos.My.Resources.resLCcvcUser.olaCanSave
        ViewData("olaCreate") = AdaWebPos.My.Resources.resLCcvcUser.olaCreate
        ViewData("olaFTDptCode") = AdaWebPos.My.Resources.resLCcvcUser.olaFTDptCode
        ViewData("olaFTUsrAddr") = AdaWebPos.My.Resources.resLCcvcUser.olaFTUsrAddr
        ViewData("olaFTUsrBCom") = AdaWebPos.My.Resources.resLCcvcUser.olaFTUsrBCom
        ViewData("olaFTUsrBNow") = AdaWebPos.My.Resources.resLCcvcUser.olaFTUsrBNow
        ViewData("olaFTUsrCode") = AdaWebPos.My.Resources.resLCcvcUser.olaFTUsrCode
        ViewData("olaFTUsrEncript") = AdaWebPos.My.Resources.resLCcvcUser.olaFTUsrEncript
        ViewData("olaFTUsrFCom") = AdaWebPos.My.Resources.resLCcvcUser.olaFTUsrFCom
        ViewData("olaFTUsrFNow") = AdaWebPos.My.Resources.resLCcvcUser.olaFTUsrFNow
        ViewData("olaFTUsrLng") = AdaWebPos.My.Resources.resLCcvcUser.olaFTUsrLng
        ViewData("olaFTUsrName") = AdaWebPos.My.Resources.resLCcvcUser.olaFTUsrName
        ViewData("olaFTUsrPic") = AdaWebPos.My.Resources.resLCcvcUser.olaFTUsrPic
        ViewData("olaFTUsrPwd") = AdaWebPos.My.Resources.resLCcvcUser.olaFTUsrPwd
        ViewData("olaFTUsrTel") = AdaWebPos.My.Resources.resLCcvcUser.olaFTUsrTel
        ViewData("olaGenCode") = AdaWebPos.My.Resources.resLCcvcUser.olaGenCode
        ViewData("olaMenuName") = AdaWebPos.My.Resources.resLCcvcUser.olaMenuName
        ViewData("olaNotAccess") = AdaWebPos.My.Resources.resLCcvcUser.olaNotAccess
        ViewData("olaChangePwd") = AdaWebPos.My.Resources.resLCcvcUser.olaChangePwd
        ViewData("olaNewFTUsrPwd") = AdaWebPos.My.Resources.resLCcvcUser.olaNewFTUsrPwd
        ViewData("olaOldFTUsrPwd") = AdaWebPos.My.Resources.resLCcvcUser.olaOldFTUsrPwd
        ViewData("olaCnfFTUsrPwd") = AdaWebPos.My.Resources.resLCcvcUser.olaCnfFTUsrPwd
        'ViewData("olaHeaderEdit") = AdaWebPos.My.Resources.resLCcvcUser.olaHeaderEdit
        'ViewData("olaHeaderAdd") = AdaWebPos.My.Resources.resLCcvcUser.olaHeaderAdd
        if ViewDatA("ptCase") = "C_Create" then
            ViewData("olaHeaderAdd") = AdaWebPos.My.Resources.resLCcvcUser.olaHeaderAdd
        Else
            ViewData("olaHeaderAdd") = AdaWebPos.My.Resources.resLCcvcUser.olaHeaderEdit
        End If
        ViewData("olaHeaderDetail") = AdaWebPos.My.Resources.resLCcvcUser.olaHeaderDetail
        
        ViewData("olaCancel") = AdaWebPos.My.Resources.resLCcvcUser.olaCancel
        ViewData("olaHeaderList") = AdaWebPos.My.Resources.resLCcvcUser.olaHeaderList
        ViewData("olaDetail") = AdaWebPos.My.Resources.resLCcvcUser.olaDetail
        ViewData("olaReport") = AdaWebPos.My.Resources.resLCcvcUser.olaReport
        ViewData("olaCanDelete") = AdaWebPos.My.Resources.resLCcvcUser.olaCanDelete
        ViewData("olaFNUsrLevel") = AdaWebPos.My.Resources.resLCcvcUser.olaFNUsrLevel
        ViewData("olaBrowse") = Resources.resGBMsg.tMsgBrowse

        ViewData("tMsgErrorData") = Resources.resGBMsg.tMsgErrorData
        ViewData("tMsgErroMaxGenCode")=Resources.resGBMsg.tMsgErroMaxGenCode
        ViewData("tMsgNotAuthorize") = Resources.resGBMsg.tMsgNotAuthorize
        ViewData("oimgSave") = Url.Content(Resources.resGBImageList.oimgSave)
        ViewData("oimgUndo") = Url.Content(Resources.resGBImageList.oimgUndo)
        ViewData("oimgGencode") = Url.Content(Resources.resGBImageList.oimgGencode)
        ViewData("oimgBrowse") = Url.Content(Resources.resGBImageList.oimgBrowse)
        
        ViewData("olaFTUserPwdNmath") = AdaWebPos.My.Resources.resLCcvcUser.olaFTUserPwdNmath
        
        Dim oSp As New cCNSP
        oSp.SP_SETxLanguageCulture()
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    <%=ViewData("olaHeaderAdd")%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<script type="text/javascript">

    window.onload = window_onload_Page;
    function window_onload_Page() {
        tJ003_VirtualDirectory = '<%=Session("VirtualDirectory")%>';
        tJ002_VirtualDirectory = '<%=Session("VirtualDirectory")%>';
        tJ001_VirtualDirectory = '<%=Session("VirtualDirectory")%>';
        //Lock User ID
        if ('<%=ViewData("ptCase")%>' == "C_Edit") {
            J002_SETxReadOnly("otbFTUsrCode", true);
        }
        J002_SETxReadOnly("otbFTUsrBNow", true);
        J002_SETxReadOnly("otbFTUsrBCom", true);
        J002_SETxReadOnly("otbFTUsrFNow", true);
        J002_SETxReadOnly("otbFTUsrFCom", true);
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
    
     function W_FRMtGenCode(){
         //JS001_GETtAutoGenCode('cvcUser','C_Create_GetAutoCode',document.getElementById('FTUsrCode'));
         J001_GETtAutoGenCode('cvcSaleperson', 'C_GETxAutoGenCode', document.getElementById('otbFTSpnCode'));
         J002_SETxReadOnly("otbFTSpnCode", false);

         var tCode = document.getElementById('otbFTSpnCode').value;
         if (tCode == "Adasoft.Abreast.MaxValue") {
             document.getElementById('otbFTSpnCode').value = "";
             document.getElementById('otbFTSpnCode').focus();
             alert('<%=ViewData("tMsgErroMaxGenCode")%>');
             return false;
         }
     }

     //@Gobal Variable for function
     var tW_Menu = 'omnMngUser';

     //@Function: Call Function Create New User
     //@author: Kriengkai (kik)
     //@Since: 12/4/54 11:14
     function W_FRMxSaveDocument() {

         if ('<%=ViewData("ptCase")%>' == "C_Create") {

             document.getElementById("otbFTUsrPwd").value = document.getElementById("otbFTUsrPwd2").value
             var tPwd = J002_STRttrim(document.getElementById("otbFTUsrPwd").value);
             if (tPwd == "" || tPwd == null) {
                 alert('<%=ViewData("tMsgErrorData")%>');
                 document.getElementById("otbFTUsrPwd2").focus();
                 return false;
             }
         
             if (document.getElementById("otbFTUsrPwd2").value != document.getElementById("otbFTUsrCnfPwd").value) {
                 alert('<%=ViewData("olaFTUserPwdNmath")%>');
                 return false;
             }
             document.getElementById("otbFTUsrPwd").value = document.getElementById("otbFTUsrPwd2").value
         } else {
            if (document.getElementById("FlagPwd").value == "1") {

                var tPwd = J002_STRttrim(document.getElementById("Password2").value);
                if (tPwd == "" || tPwd == null) {
                    alert('<%=ViewData("tMsgErrorData")%>');
                    document.getElementById("Password2").focus();
                    return false;
                }
             
                 if (!ConfirmChangePwd()) {
                     return false;
                 }
             }
         }

         J003_SHWxWaiting();
         var tName = J002_STRttrim(document.getElementById("otbFTUsrName").value);
         var tCode = document.getElementById("otbFTUsrCode").value;

         if (tName == "" || tName == null || tCode == "" || tCode == null) {
             alert('<%=ViewData("tMsgErrorData")%>');
             document.getElementById("otbFTUsrName").focus();
             J003_DISxWaiting();
             return false;
         }

         var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Edit%>';
         var tPwdAllow = '<%=Session("bVB_CNPwdAllow")%>';
         var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
         var bAllow = J002_CHKtCheckAuthorize(tW_Menu, tAuthor, tPwdAllow, tMsgNotAuthorize);
         if (bAllow == false) {
             return false;
         }
         else {
             document.User_Create.submit();
         }

     }
     //Function Buttom Back
     function W_FRMxForwClose() {
         J003_SHWxWaiting();
         window.location = '<%=Url.Action("Index","cvcUser")%>';
     }
     //Function Generate Code
     function W_FRMxGenCode() {
         J001_GETtAutoGenCode('cvcUser', 'C_Create_GetAutoCode', document.getElementById('otbFTUsrCode'));
         J002_SETxReadOnly("otbFTUsrCode", false);
     }
     //Function Show List Department
     function W_OpenListDptCode() {
         J003_SHWxWaiting();
         try {
             var ptCase = "DptCode";
             var tDate = J002_GETtTimeStamp();
             var tReturnedValue = showModalDialog('<%=Url.Action("C_BRWxMaster","cvcDistrict") %>' + '?ptCase=' + ptCase + '&ptDate=' + tDate, "Passed String", "dialogWidth:800px; dialogHeight:500px; status:no; center:yes;titlebar =0");
             if (tReturnedValue != undefined) {
                 if (tReturnedValue != '12233344445555566666677777778888888899999999900000000001223334444555556666667777777888888889999999990000000000') {
                     document.getElementById("otbFTDptCode").value = tReturnedValue.split(";")[0];
                     document.getElementById("otbFTDptName").value = tReturnedValue.split(";")[1];
                 }
             }
         } catch (ex) {
         } finally {
            J003_DISxWaiting();
         }
     }

     function ChangePwd() {
        if(document.getElementById("FlagPwd").value == 0){
             document.getElementById("ocmChangePwd").value = '<%=ViewData("olaCancel")%>';
            
             document.getElementById("div_lbPwd1").style.display = "";
             document.getElementById("div_lbPwd2").style.display = "";
             document.getElementById("div_lbPwd3").style.display = "";

             document.getElementById("div_tbPwd1").style.display = "";
             document.getElementById('div_tbPwd1').className = 'xW_DivDataSub';
             document.getElementById("div_tbPwd2").style.display = "";
             document.getElementById("div_tbPwd3").style.display = "";

             document.getElementById("ocmConfirmPwd").style.display = "";
             
             document.getElementById("FlagPwd").value = 1;
        }else{
             document.getElementById("ocmChangePwd").value = '<%=ViewData("olaChangePwd")%>';
             document.getElementById("div_lbPwd1").style.display = "none";
             document.getElementById("div_lbPwd2").style.display = "none";
             document.getElementById("div_lbPwd3").style.display = "none";

             document.getElementById("div_tbPwd1").style.display = "none";
             document.getElementById("div_tbPwd2").style.display = "none";
             document.getElementById("div_tbPwd3").style.display = "none";

             document.getElementById("ocmConfirmPwd").style.display = "none";
             
             document.getElementById("FlagPwd").value = 0;
        }
    }

    function ConfirmChangePwd() {
        if (document.getElementById("otbFTUsrPwd").value != document.getElementById("Password1").value) {
            alert('<%=ViewData("olaFTUserPwdNmath")%>');
            return false;
        }

        if (document.getElementById("Password2").value != document.getElementById("Password3").value) {
            alert('<%=ViewData("olaFTUserPwdNmath")%>');
            return false;
        }
        document.getElementById("otbFTUsrPwd").value = document.getElementById("Password3").value
        return true;
    }
    
</script>

<% Using Html.BeginForm("C_Create", "cvcUser", FormMethod.Post, New With {.collection = "cmlUser", .ptValue = "User_Create", .name = "User_Create"})%>
    <!-- เอา class xCN_AllBackgroundColor xCN_AllBorderColor ออก -->
    <div class="xW_DivMain xCN_AllFontFamily xCN_AllFontSize xCN_AllFontColor" >
        <div style="display:none">
            <input type="hidden" value="<%=model.FDDateUpd%>" name="FDDateUpd" />
            <input type="hidden" value="<%=model.FTTimeUpd%>" name="FTTimeUpd" />
            <input type="hidden" value="<%=model.FTWhoUpd%>" name="FTWhoUpd" />
            <input type="hidden" value="<%=model.FDDateIns%>" name="FDDateIns" />
            <input type="hidden" value="<%=model.FTTimeIns%>" name="FTTimeIns" />
            <input type="hidden" value="<%=model.FTWhoIns%>" name="FTWhoIns" />
            <input type="hidden" value="0" id="FlagPwd" name="FlagPwd" />
            <input type="hidden" value="0" id="OnPwdChange" name="OnPwdChange" />
        </div>
        <%-------------------ชื่อเอกสาร---------------------------%>   
        <%--<div class="xCN_DivManageTopic xCN_AllMenuFontSize">--%>
        <div class="xW_DivSearch">
            <div class='xW_DivPath'>
                <label id="olaTopicName"><%=ViewData("olaHeaderAdd")%></label> 
            </div>
        </div>
        <%--</div>--%>
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
                    <div id="odiMenuDelete" class="xCN_DivMenuLogOut" style="float: left;">
                        <a onclick = "W_FRMxForwClose()" href="javascript:void(0)">
                            <div class="xCN_DivMenuNewCaption">
                                <%=ViewData("olaHeaderList")%>
                            </div>
                        </a>
                    </div>
              </div>
        </div>
        <%-------------------ส่วนรายละเอียด-------------------------%>  
        <div class="xCN_AllBorderColor xCN_AllBackgroundColor xCN_DivMainMenuPage" style='height:525px;'>
                <div class="xW_DivCaption" style = "width:150px">
                    <div class="xW_DivCaptionSub xCN_AllFontColorTextReq">
                        <label>*<%=ViewData("olaFTUsrCode")%></label>
                    </div>
                    <div class="xW_DivCaptionSub xCN_AllFontColorTextReq">
                        <label>*<%=ViewData("olaFTUsrName")%></label>
                    </div>
                    <div class="xW_DivCaptionSub" style="width:150px">
                        <label><%=ViewData("olaFTDptCode")%></label>
                    </div>
                    <div class="xW_DivCaptionSub" style="width:150px">
                        <label><%=ViewData("olaFNUsrLevel")%></label>
                    </div>
                    <div class="xW_DivCaptionAddress" style="width:150px">
                        <label><%=ViewData("olaFTUsrAddr")%></label>
                    </div>
                    <div class="xW_DivCaptionSub" style="width:150px">
                        <label><%=ViewData("olaFTUsrTel")%></label>
                    </div>
                    <div class="xW_DivCaptionSub" style="width:150px">
                        <label><%=ViewData("olaFTUsrPic")%></label>
                    </div>
                    <div class="xW_DivCaptionSub xCN_AllFontColorTextReq" style="width:150px">
                        <label><%=ViewData("olaFTUsrPwd")%></label>
                    </div>
                    <%if ViewData("ptCase") <> "C_Edit" then %>
                        <div class="xW_DivCaptionSub xCN_AllFontColorTextReq" id="div_cmfPwd" style="width:150px;">
                            <label><%=ViewData("olaCnfFTUsrPwd")%></label>
                        </div>
                    <% end if %>
                    <div class="xW_DivCaptionSub xCN_AllFontColorTextReq" id="div_lbPwd1" style="width:150px; display:none;">
                        <label><%=ViewData("olaOldFTUsrPwd")%></label>
                    </div>
                    <div class="xW_DivCaptionSub xCN_AllFontColorTextReq" id="div_lbPwd2" style="width:150px; display:none;">
                        <label><%=ViewData("olaNewFTUsrPwd")%></label>
                    </div>
                    <div class="xW_DivCaptionSub xCN_AllFontColorTextReq" id="div_lbPwd3" style="width:150px; display:none;">
                        <label><%=ViewData("olaCnfFTUsrPwd")%></label>
                    </div>
                    <div class="xW_DivCaptionSub" style="width:150px; display:none;">
                        <label><%=ViewData("olaFTUsrEncript")%></label>
                    </div>
                    <div class="xW_DivCaptionSub" style="width:150px; display:none;">
                        <label><%=ViewData("olaFTUsrLng")%></label>
                    </div>
                    <div class="xW_DivCaptionSub" style="width:150px">
                        <label><%=ViewData("olaFTUsrBNow")%></label>
                    </div>
                    <div class="xW_DivCaptionSub" style="width:150px">
                        <label><%=ViewData("olaFTUsrBCom")%></label>
                    </div>
                    <div class="xW_DivCaptionSub" style="width:150px">
                        <label><%=ViewData("olaFTUsrFNow")%></label>
                    </div>
                    <div class="xW_DivCaptionSub" style="width:150px">
                        <label><%=ViewData("olaFTUsrFCom")%></label>
                    </div>
                  
                </div>
                <div class="xW_DivData">
                    <div class="xW_DivDataSub">
                        <div class="xW_DivCode" style="float:left">
                            <input type="text" style="width :100px"
                                value="<%=model.FTUsrCode%>" 
                                id="otbFTUsrCode" 
                                name="FTUsrCode" 
                                class="xW_InputTextCode"
                                onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)"
                                maxlength = '20' />
                        </div>
                        <div>
                            <%=Html.ValidationMessageFor(Function(model) model.FTUsrCode)%>
                        </div>
                        <%--<div>
                            <img src="<%=ViewData("oimgGencode")%>" 
                                onclick="W_FRMxGenCode()" 
                                alt="<%=ViewData("olaGenCode")%>"  />                      
                        </div>  --%>                
                    </div>
                    <div class="xW_DivDataSub">
                        <div style="float:left">
                            <input type="text" value="<%=model.FTUsrName%>" 
                                id="otbFTUsrName" style="width :200px"
                                name="FTUsrName"  
                                onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)"
                                maxlength ="50" />
                        </div>
                        <div>
                            <%=Html.ValidationMessageFor(Function(model) model.FTUsrName)%>
                        </div>
                    </div>
                    <div class="xW_DivDataSub">
                        <div style="float:left">
                                <input type = "text" style="width :80px"  
                                    id="otbFTDptCode" 
                                    name="FTDptCode"
                                    class="xW_InputTextCode"
                                    onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)"
                                    maxlength = '5' />
                                 <%=Html.ValidationMessageFor(Function(model) model.FTDptCode)%>
                        </div>
                        <div style="float:left" class="xCN_DivBrowData">
                                 <img src="<%=ViewData("oimgBrowse")%>" 
                                        onclick="W_OpenListDptCode()"
                                        alt="<%=ViewData("oimgBrowse")%>"/>
                        </div>
                        <div>
                            <input type="hidden" id="Hidden1" name="otbOldDpt" value="" />
                            <input type="text" name="otbFTDptName" 
                                               id="otbFTDptName" 
                                               readonly="readonly" class="xW_InputTextCode xCN_AllReadOnlyBGColor"/>
                        </div>                    
                    </div>
                    <%--<div class="xW_DivDataSub">
                        <input type="text" style="width :200px"
                            value="<%=model.FNUsrLevel%>" 
                            id="otbFNUsrLevel" 
                            name="FNUsrLevel"
                            onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)"
                            maxlength ="50" />                                                                    
                        <%=Html.ValidationMessageFor(Function(model) model.FNUsrLevel)%>
                    </div>--%>
                    <div class="xW_TelerikIngeter">
                    <%=Html.Telerik.IntegerTextBox().Name("FNUsrLevel") _
                                                                            .MinValue(1).MaxValue(8) _
                                                                            .Value(CInt(Model.FNUsrLevel)) _
                                                                            .InputHtmlAttributes(New With {.id = "otbFNUsrLevel", .style = "width:100px;"})%>    
                    </div>
                    <div class="xW_DivDataAddress">
                        <textarea  
                            id="otbFTUsrAddr" style="width :198px; height:50px" 
                            name="FTUsrAddr" 
                            cols="0" 
                            rows="3" 
                            onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)"
                            maxlength = '100'
                            class="xW_TextAreaAddress" ><%=Model.FTUsrAddr%></textarea>
                        <%=Html.ValidationMessageFor(Function(model) model.FTUsrAddr)%>
                    </div>            
                    <div class="xW_DivDataSub">
                        <input type="text" style="width :200px"
                            value="<%=model.FTUsrTel%>" 
                            id="otbFTUsrTel" 
                            name="FTUsrTel" 
                            onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)"
                            maxlength ="50" />
                        <%=Html.ValidationMessageFor(Function(model) model.FTUsrTel)%>
                    </div>
                    <div class="xW_DivDataSub">
                        <input type="text" style="width :200px"
                            value="<%=model.FTUsrPic%>" 
                            id="otbFTUsrPic" 
                            name="FTUsrPic" 
                            onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)"
                            maxlength ="200" />
                        <%=Html.ValidationMessageFor(Function(model) model.FTUsrPic)%>
                    </div>
                    <div class="xW_DivDataSub">
                        <input type="hidden" style="width :200px"
                            value="<%=model.FTUsrPwd%>" 
                            id="otbFTUsrPwd" 
                            name="FTUsrPwd" 
                            onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)"
                            maxlength ="50" />
                        <%=Html.ValidationMessageFor(Function(model) model.FTUsrPwd)%>
                        <%if ViewData("ptCase") = "C_Edit" then %>
                            <input type="hidden" id="ocmConfirmPwd" name="ocmConfirmPwd" onclick="ConfirmChangePwd()" style="width:150px; height:22px; display:none;" value="Ok" />
                            <input type="button" id="ocmChangePwd" name="ocmChangePwd" onclick="ChangePwd()" style="width:150px; height:22px;" value="<%=ViewData("olaChangePwd")%>" />
                        <%else %>
                            <input type="password" style="width :200px" 
                                id="otbFTUsrPwd2" 
                                name="otbFTUsrPwd2" 
                                onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)"
                                maxlength ="50" />
                        <%end if%>
                    </div>
                    <%if ViewData("ptCase") <> "C_Edit" then %>
                    <div class="xW_DivDataSub">
                        <input type="password" style="width :200px" 
                                    id="otbFTUsrCnfPwd" 
                                    name="otbFTUsrCnfPwd" 
                                    onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)"
                                    maxlength ="50" />
                    </div>
                    <% end if %>
                    <div class="xW_DivDataSub" id="div_tbPwd1" style="display:none">
                        <input type="password" style="width :200px"
                                id="Password1" 
                                name="FTUsrPwd"
                                onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)"
                                maxlength ="50" />
                    </div>
                    <div class="xW_DivDataSub" id="div_tbPwd2" style="display:none">
                        <input type="password" style="width :200px"
                                id="Password2" 
                                name="FTUsrPwd" 
                                onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)"
                                maxlength ="50" />
                    </div>
                    <div class="xW_DivDataSub" id="div_tbPwd3" style="display:none">
                        <input type="password" style="width :200px"
                                id="Password3" 
                                name="FTUsrPwd" 
                                onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)"
                                maxlength ="50" />
                    </div>
                    
                    
                    <div class="xW_DivDataSub" style="display:none;">
                        <input type="text" style="width :200px"
                            value="<%=model.FTUsrEncript%>" 
                            id="otbFTUsrEncript" 
                            name="FTUsrEncript" 
                            onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)"
                            maxlength ="1" />
                        <%=Html.ValidationMessageFor(Function(model) model.FTUsrEncript)%>
                    </div>
                    <div class="xW_DivDataSub" style="display:none;">
                        <input type="text" style="width :200px"
                            value="<%=model.FTUsrLng%>" 
                            id="otbFTUsrLng" 
                            name="FTUsrLng" 
                            onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)"
                            maxlength ="1" />
                        <%=Html.ValidationMessageFor(Function(model) model.FTUsrLng)%>
                    </div>
                    <div class="xW_DivDataSub">
                        <input type="text" style="width :200px"
                            value="<%=model.FTUsrBNow%>" 
                            id="otbFTUsrBNow" 
                            name="FTUsrBNow" 
                            onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)"
                            maxlength ="1" />
                        <%=Html.ValidationMessageFor(Function(model) model.FTUsrBNow)%>
                    </div>
                    <div class="xW_DivDataSub">
                        <input type="text" style="width :200px"
                            value="<%=model.FTUsrBCom%>" 
                            id="otbFTUsrBCom" 
                            name="FTUsrBCom" 
                            onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)"
                            maxlength ="50" />
                        <%=Html.ValidationMessageFor(Function(model) model.FTUsrBCom)%>
                    </div>
                    <div class="xW_DivDataSub">
                        <input type="text" style="width :200px"
                            value="<%=model.FTUsrFNow%>" 
                            id="otbFTUsrFNow" 
                            name="FTUsrFNow" 
                            onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)"
                            maxlength ="1" />
                        <%=Html.ValidationMessageFor(Function(model) model.FTUsrFNow)%>
                    </div>
                    <div class="xW_DivDataSub">
                        <input type="text" style="width :200px"
                            value="<%=model.FTUsrFCom%>" 
                            id="otbFTUsrFCom" 
                            name="FTUsrFCom" 
                            onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)"
                            maxlength ="50" />
                        <%=Html.ValidationMessageFor(Function(model) model.FTUsrFCom)%>
                    </div>
            </div>
        </div>
</div>
<% End Using %>

 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">

    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J001_LoadAutoGenCode.js")%>"></script>
 <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J002_General.js")%>"></script>
 <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J013_LoadChkBoxAll.js")%>"></script>
 <link type="text/css" rel="Stylesheet" href="<%=Url.Content("~/Content/AdaCss/Local/FCS_cvcManagementLocal.css")%>" />
   
</asp:Content>