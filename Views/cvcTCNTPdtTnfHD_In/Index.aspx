<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage(Of Adasoft.WebPos.Models.cmlTCNTPdtTnfHD)" %>
<%@ Import Namespace="System.Drawing" %>
<%@ Import Namespace="System.Resources" %>
<%@ Import Namespace="AdaWebPos" %>

<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim oCurture = New System.Globalization.CultureInfo(System.Web.HttpContext.Current.Session("tVB_LastLang").ToString)
        AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.Culture = oCurture
        Resources.resGBMsg.Culture = oCurture
        Resources.resGBMenuName.Culture = oCurture
        
        ViewData("olaTittle") = Resources.resGBMenuName.omnPdtTIn
        
        ViewData("olaAdjustDate") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaAdjustDate
        ViewData("olaCancel") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaCancel
        ViewData("olaCanCopy") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaCanCopy
        ViewData("olaCanDelete") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaCanDelete
        ViewData("olaCanEdit") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaCanEdit
        ViewData("olaCanFind") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaCanFind
        ViewData("olaCanPost") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaCanPost
        ViewData("olaCanSave") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaCanSave
        ViewData("olaClose") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaClose
        ViewData("olaCreate") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaCreate
        ViewData("olaHelp") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaHelp
        ViewData("olaReport") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaReport
        ViewData("olaFCPthDis") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaFCPthDis
        ViewData("olaFCPthGndAE") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaFCPthGndAE
        ViewData("olaFCPthGrand") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaFCPthGrand
        ViewData("olaFCPthTotal") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaFCPthTotal
        ViewData("olaFCPthVat") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaFCPthVat
        ViewData("olaFCPthVatable") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaFCPthVatable
        ViewData("olaFDPthDocDate") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaFDPthDocDate
        ViewData("olaFDPthRefExtDate") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaFDPthRefExtDate
        ViewData("olaFNPthStaDocAct") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaFNPthStaDocAct
        ViewData("olaFTDptCode") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaFTDptCode
        ViewData("olaFTPthApvCode") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaFTPthApvCode
        ViewData("olaFTPthDocNo") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaFTPthDocNo
        ViewData("olaFTPthRefExt") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaFTPthRefExt
        ViewData("olaFTPthRmk") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaFTPthRmk
        ViewData("olaFCPthVat") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaFCPthVat
        ViewData("olaFTPthVATInOrEx") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaFTPthVATInOrEx
        ViewData("olaFTPthWhFrm") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaFTPthWhFrm
        ViewData("olaFTPthWhTo") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaFTPthWhTo
        ViewData("olaFTRteCode") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaFTRteCode
        ViewData("olaFTUsrCode") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaFTUsrCode
        ViewData("olaMenuName") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaMenuName
        ViewData("olaPdtDis") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaPdtDis
        ViewData("olaPdtCode") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaPdtCode
        ViewData("olaPdtName") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaPdtName
        ViewData("olaPdtNet") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaPdtNet
        ViewData("olaPdtQty") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaPdtQty
        ViewData("olaPdtUnit") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaPdtUnit
        ViewData("olaPdtUnitPrice") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaPdtUnitPrice
        ViewData("olaAutoSentTab") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaAutoSentTab
        ViewData("olaRowID") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaRowID
        ViewData("olaSplCode") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaSplCode
        ViewData("olaReason") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaReason
        ViewData("olaGrandText") = AdaWebPos.My.Resources.resLCcvcTCNTPdtTnfHD.olaGrandText
                               
        ViewData("olatMsgDoc_NonApp") = Resources.resGBMsg.tMsgDoc_NonApp
        ViewData("olatMsgNoEdit") = Resources.resGBMsg.tMsgNoEdit
        ViewData("olatMsgDoc_App") = Resources.resGBMsg.tMsgDoc_App
        ViewData("olatMsgErrorData") = Resources.resGBMsg.tMsgErrorData
        ViewData("olatMsgDoc_Cancel") = Resources.resGBMsg.tMsgDoc_Cancel
        ViewData("olatMsgDoc_Empty") = Resources.resGBMsg.tMsgDoc_Empty
        ViewData("olatMsgNoDelCancel") = Resources.resGBMsg.tMsgNoDelCancel
        ViewData("olatMsgNoDelApp") = Resources.resGBMsg.tMsgNoDelApp
        ViewData("olatMsgNoDelNoSave") = Resources.resGBMsg.tMsgNoDelNoSave
        ViewData("olatMsgNoCancelCancel") = Resources.resGBMsg.tMsgNoCancelCancel
        ViewData("olatMsgNoCancelApp") = Resources.resGBMsg.tMsgNoCancelApp
        ViewData("olatMsgNoCancelNoSave") = Resources.resGBMsg.tMsgNoCancelNoSave
        ViewData("olatMsgNoAppCancel") = Resources.resGBMsg.tMsgNoAppCancel
        ViewData("olatMsgNoAppApp") = Resources.resGBMsg.tMsgNoAppApp
        ViewData("olatMsgNoAppNoSave") = Resources.resGBMsg.tMsgNoAppNoSave
        ViewData("tMsgNoCoppyNoSave") = Resources.resGBMsg.tMsgNoCoppyNoSave
        ViewData("olatMsgChangeRate") = Resources.resGBMsg.tMsgChangeRate
        ViewData("olatMsgNonDataSpl") = Resources.resGBMsg.tMsgNonDataSpl
        ViewData("olatMsgNonDataRte") = Resources.resGBMsg.tMsgNonDataRte
        ViewData("olatMsgNonDataPdt") = Resources.resGBMsg.tMsgNonDataPdt
        ViewData("tMsgDAT_Notfound001") = Resources.resGBMsg.tMsgDAT_Notfound001
        ViewData("tMsgClearCstCode") = Resources.resGBMsg.tMsgClearCstCode
        ViewData("tMsgSave_Warning") = Resources.resGBMsg.tMsgSave_Warning
        ViewData("tMsgConfirmDelete") = Resources.resGBMsg.tMsgConfirmDelete
        ViewData("tMsgConfirmPost") = Resources.resGBMsg.tMsgConfirmPost
        ViewData("tMsgConfirmCancel") = Resources.resGBMsg.tMsgConfirmCancel
        ViewData("tMsgWahCode") = Resources.resGBMsg.tMsgWahCode
        ViewData("tMsgClearData") = Resources.resGBMsg.tMsgClearData
        ViewData("tMsgNotAuthorize") = Resources.resGBMsg.tMsgNotAuthorize
        ViewData("tMsgFromMoreThanTo") = Resources.resGBMsg.tMsgFromMoreThanTo
        ViewData("tMsgNoAppStaDocDonotAct") = Resources.resGBMsg.tMsgNoAppStaDocDonotAct
        ViewData("tMsgHasPdtNotChangeVatInOrEx") = Resources.resGBMsg.tMsgHasPdtNotChangeVatInOrEx
        ViewData("tMsgConfirmChangeSpl") = Resources.resGBMsg.tMsgConfirmChangeSpl
        ViewData("tMsgConfirmChangeWah") = Resources.resGBMsg.tMsgConfirmChangeWah
        ViewData("tMsgChangeRate") = Resources.resGBMsg.tMsgChangeRate
        ViewData("tMsgChkWahCode") = Resources.resGBMsg.tMsgChkWahCode 'รับได้เฉพาะ Retail, Wholesale
        
        ViewData("oimgAppv") = Url.Content(Resources.resGBImageList.oimgAppv)
        ViewData("oimgNoAppv") = Url.Content(Resources.resGBImageList.oimgNoAppv)
        ViewData("oimgPCRemove") = Url.Content(Resources.resGBImageList.oimgPCRemove)
        ViewData("oimgBrowse") = Url.Content(Resources.resGBImageList.oimgBrowse)
        ViewData("oimgGencode") = Url.Content(Resources.resGBImageList.oimgGencode)
        ViewData("oimgDump") = Url.Content(Resources.resGBImageList.oimgDump)
        
        ViewData("olaMenuExit") = Resources.resGBMenuName.omnExit '*ออก *CH 17-10-2012
        ViewData("olaMenuHome") = Resources.resGBMenuName.omnHome '*หน้าแรก *CH 17-10-2012
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	<%=ViewData("olaTittle")%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<% Using Html.BeginForm %>
    <input type="hidden" id="otbFTPthDocType" value ="<%= Model.FTPthDocType %>" />
    <input type="hidden" id="otbFTBchCode" value ="<%= Model.FTBchCode %>" />
    <%--Input box เก็บค่าเก่าของ object ต่าง ๆ--%>
    <input type="hidden" id="otbFTPthWhToOld" value ="" />
    <input type="hidden" id="otbFTSplCodeOld" value ="" />
    <input type="hidden" id="otbFTTrnCodeOld" value ="" />
    <input type="hidden" id="otbFTRteCodeOld" value ="<%=Model.FTRteCode %>" />
    <input type="hidden" id="otbPdtCodeOld" value ="" />
    <input type="hidden" id="otbSeq" value="" />
    <input type="hidden" id="otbStaEdit" name="otbStaEdit" />
    <input type="hidden" id="otbPdtSel"  />
    <input type="hidden" id="otbUnitCode" name="otbUnitCode"  />
    <input type="hidden" id="otbUnitName" name="otbUnitName"  />
    <input type="hidden" id="otbUnitFactor" name="otbUnitFactor"/>
    <input type="hidden" id="otbDis" name="otbDis"/>
    <input type="hidden" id="otbDisRte" name="otbDisRte"/>
    <input type="hidden" id="otbDisTxt"  />
    <input type="hidden" id="otbSetPrice" />
    <input type="hidden" id="otbFTPdtNoDis" />
    <input type="hidden" id="otbFCPthNonVat"  value="<%=Model.FCPthNonVat%>" />
    <input type="hidden" id="otbFCPthVatable"  value="<%=Model.FCPthVatable%>" />
    <input type="hidden" id="otbFCPthB4DisChg" value="<%=Model.FCPthB4DisChg%>" />
    <input type="hidden" id="otbFTUsrCode" value="<%=Model.FTUsrCode%>" />
    <input type="hidden" id="otbFTDptCode" value="<%=Model.FTDptCode%>" />
    <input type="hidden" id="otbFTPthApvCode" value="<%=Model.FTPthApvCode%>" />
    <input type="hidden" id="otbFTPthDocNoOld" value="<%=Model.FTPthDocNo %>" />
    <input type="hidden" id ="otbFTPthStaDoc" value="<%=Model.FTPthStaDoc %>"/>
    <input type="hidden" id="otbFTPdtSrn" value="" /> <!-- Serial *CH 07-02-2013 -->
    <input id="otbSerialList" name="otbSerialList" type="hidden" /><!-- Serial *CH 07-02-2013 -->
    
<% End Using%>

    <div  id="odiMain" class ="xCN_AllFontFamily xCN_AllFontSize xCN_AllFontColor xCN_DivMain">
        <%-------------------เมนูด้านบนสุด---------------------------%>
        <div id="odiMenuTop" class ="xCN_AllBorderColor xCN_DivMainMenu">
             <div id="odiMenu" class="xCN_DivMenu">
                <!-- ไปหน้าแรก *CH 17-10-2012 -->
                <div id="odiMenuHome" class="xCN_DivMenuHome" style="float: left;">
                    <a onclick="W_FRMxCloseDoc('1')" href="javascript:void(0)">
                        <div class="xCN_DivMenuHomeCaption">
                            <%=ViewData("olaMenuHome")%>
                        </div>
                    </a>
                </div>
                <!---------------------------->
                <div id ="odiMenuNew" class="xCN_DivMenuNew">
                    <a href="javascript:void(0)" onclick="W_FRMxNewDoc()">
                        <div class="xCN_DivMenuNewCaption" >
                            <%=ViewData("olaCreate")%>
                        </div>
                    </a>
                </div>  
                <div id ="odiMenuSave" class="xCN_DivMenuSave" style="float:left;">
                    <a href="javascript:void(0)" onclick="W_FRMxSaveDoc()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaCanSave")%>
                        </div>
                    </a>
                </div>
                <div id ="odiMenuSearch" class="xCN_DivMenuSearch" style="float:left;">
                    <a  href="javascript:void(0)" onclick="W_FRMxFindDoc()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaCanFind")%>
                        </div>
                    </a>
                </div>  
                <div id ="odiMenuDelete" class="xCN_DivMenuDelete" style="float:left;">
                    <a href="javascript:void(0)"  onclick="W_FRMxDelDoc()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaCanDelete")%>
                        </div>
                    </a>
                </div>
                <div id ="odiMenuCancel" class="xCN_DivMenuCancel" style="float:left;">
                    <a href="javascript:void(0)" onclick="W_FRMxCancelDoc()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaCancel")%>
                        </div>
                    </a>
                </div>  
                <div id ="odiMenuPost" class="xCN_DivMenuPost" style="float:left;">
                    <a href="javascript:void(0)" onclick="W_FRMxPostDoc()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaCanPost")%>
                        </div>
                    </a>
                </div>
                <div id ="odiMenuCoppy" class="xCN_DivMenuCoppy" style="float:left;">
                    <a href="javascript:void(0)" onclick="W_FRMxCopyDoc()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaCanCopy")%>
                        </div>
                    </a>
                </div>  
                <div id ="odiMenuRpt" class="xCN_DivMenuReport" style="float:left;">
                    <a href="javascript:void(0)" onclick="W_FRMxShwPrintDialog()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaReport")%>
                        </div>
                    </a>
                </div>
               <%-- <div id ="odiMenuHelp" class="xCN_DivMenuHelp" style="float:left;">
                    <a href="javascript:void(0)" onclick="W_FRMxHelpDoc()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaHelp")%>
                        </div>
                    </a>
                </div>  --%>
                <!--<div id ="odiMenuClose" class="xCN_DivMenuHome" style="float:left;">
                    <a href="javascript:void(0);" onclick="W_FRMxCloseDoc()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaClose")%>
                        </div>
                    </a>
                </div>-->
                <!-- ไปเมนูซื้อ *CH 26-12-2012 -->
                <div id="odiMenuExit" class="xCN_DivMenuLogOut" style="float: left;">
                    <a onclick="W_FRMxCloseDoc('2')" href="javascript:void(0)">
                        <div class="xCN_DivMenuLogOutCaption">
                            <%=ViewData("olaMenuExit")%>
                        </div>
                    </a>
                </div>
                <!---------------------------->
             </div>
          <%-------------------แสดงสถานะของเอกสาร------------------%>
             <div id="odiDocStatus" class="xCN_DivDocStatus">
                <div id="odiDocImage" class ="xCN_DivDocStatusDesc">
                    <div id="odiNoneApprove">
                        <img id="oimNoAppv" 
                             alt="" 
                             name="oimNoAppv" 
                             src='<%=ViewData("oimgNoAppv") %>' />
                        <label >
                             <%=ViewData("olatMsgDoc_NonApp")%>
                        </label>
                    </div>
                    <div id="odiApprove" class="xCN_DivTabDisplay">
                        <img id="oimAppv" 
                             alt="oimAppv" 
                             name="oimAppv" 
                             src='<%=ViewData("oimgAppv") %>' />
                        <label>
                             <%=ViewData("olatMsgDoc_App")%>
                        </label>
                    </div>
                    <div id="odiCancel" class="xCN_DivTabDisplay">
                        <img id="oimPCRemove" 
                             alt="" 
                             name="oimPCRemove" 
                             src='<%=ViewData("oimgPCRemove") %>' />
                        <label>
                                <%=ViewData("olatMsgDoc_Cancel")%>
                        </label>
                    </div>             
                </div>

             </div>
        </div>
        
        <%-------------------Detail HD---------------------------%>
        <div id="odiDetailHD" class="xCN_AllBackgroundColor xCN_AllBorderColor xCN_DivDetailHD">
                <%--ข้อมูลส่วนบน คอลัมน์ที่ 1--%>
                <div id="odiCstDetail" class ="xW_DivDetailHDColumn1">
                    <div style="margin:5px 5px 5px 10px;">
                        <div class="xW_DivCol1Row">
                            <div style="float:left;" class="xW_DivDetailHDColumn1PdtInfoCap">
                                <%=ViewData("olaFTPthWhFrm")%>
                            </div>
                            <div style="float:none;" class="">
                                <select id="ocbFTPthType" 
                                        class="xW_ComboSize" 
                                        onchange="W_SETxStausRemark()" ></select>
                            </div>
                        </div>
                        <div class="xW_DivCol1Row">
                            <div class="xCN_AllFontColorTextReq xW_DivDetailHDColumn1PdtInfoCap">
                                <%=ViewData("olaFTPthWhTo")%>
                            </div>
                            <input type="text" 
                                    id="otbFTPthWhTo" 
                                    maxlength="5"
                                    onfocus="J002_SETxKeepOldOnfocus('otbFTPthWhTo','otbFTPthWhToOld')"
                                    onkeydown="return otbFTPthWhTo_onkeydown(event.keyCode,event.which)"
                                    onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which)"
                                    onblur ="otbFTPthWhTo_onblur();"
                                    class="xW_InputTextSize2"  style="vertical-align:top;"
                                     value="<%=Model.FTPthWhTo%>"
                                    />
                            <img id="oimBrwWahCode" 
                                 onclick="oimBrwWahCode_onclick()"
                                 alt="" 
                                 class="xCN_ImgBrowData" 
                                 name="oimBrwWahCode" 
                                 src='<%=ViewData("oimgBrowse")%>'/>
                            
                            <input type="text" readonly="readonly" style="vertical-align:top;" id="otbFTPthWhToName" class="xCN_AllReadOnlyBGColor xW_InputTextSize1" />
                        </div>
                        <div class="xW_DivCol1Row">
                            <div style="float:left;" class="xCN_AllFontColorTextReq xW_DivDetailHDColumn1PdtInfoCap">
                                <%=ViewData("olaSplCode")%>
                            </div>
                            <input type="text" 
                                   id="otbFTSplCode" 
                                   maxlength="20"
                                   onfocus="J002_SETxKeepOldOnfocus('otbFTSplCode','otbFTSplCodeOld')"
                                   onblur ="otbFTSplCode_onblur();"
                                   onkeydown="return otbFTSplCode_onkeydown(event.keyCode,event.which)"
                                   onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which)"
                                   value="<%=Model.FTSplCode %>" style="vertical-align:top;" 
                                   class="xW_InputTextSize2" />
                            <img id="oimBrwSplCode" 
                                 alt="" 
                                 onclick="oimBrwSplCode_onclick();"
                                 class="xCN_ImgBrowData" 
                                 name="oimBrwSplCode" 
                                 src='<%=ViewData("oimgBrowse")%>' />
                            <input type="text" id="otbFTSplName" readonly="readonly" style="vertical-align:top;"  class="xCN_AllReadOnlyBGColor xW_InputTextSize1" />
                        </div>
                        <div class="xW_DivCol1Row">
                            <div class="xW_DivDetailHDColumn1PdtInfoCap">
                                <%=ViewData("olaFTPthRmk")%>
                            </div>
                            <textarea id="otbFTPthOther" 
                                      rows="1" 
                                      cols="1"
                                      onkeydown="return J002_SETxMaxLength(this, 100, event.keyCode, event.which);"
                                      onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which)"
                                      readonly="readonly" 
                                      style="width:370px;height:18px;margin:0px 0px 1px 0px;"
                                      class="xCN_AllReadOnlyBGColor"><%=Model.FTPthOther%></textarea>
                        </div>
                        <div class="xW_DivCol1Row">
                            <div style="float:left;" class="xCN_AllFontColorTextReq xW_DivDetailHDColumn1PdtInfoCap">
                                <%=ViewData("olaReason")%>
                            </div>
                            <input type="text" 
                                   id="otbFTTrnCode" 
                                   maxlength="3"
                                   onfocus="J002_SETxKeepOldOnfocus('otbFTTrnCode','otbFTTrnCodeOld')"
                                   onblur ="otbFTTrnCode_onblur();"
                                   onkeydown="return otbFTTrnCode_onkeydown(event.keyCode,event.which)"
                                   onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which)"
                                   value="<%=Model.FTTrnCode %>" style="vertical-align:top;" 
                                   class="xW_InputTextSize2" />
                            <img id="oimBrwTrnCode" 
                                 alt="" 
                                 onclick="oimBrwTrnCode_onclick()"
                                 class="xCN_ImgBrowData" 
                                 name="oimBrwTrnCode" 
                                 src='<%=ViewData("oimgBrowse")%>' />
                            <input type="text" id="otbFTTrnName" readonly="readonly" style="vertical-align:top;"  class="xCN_AllReadOnlyBGColor xW_InputTextSize1" />
                        </div>
                    </div>
                    <div class ="xW_DivDetailHDColumn1PdtLastUpdte" >
                        <div class="xW_DivDetailHDColumn1PdtLastUpdteCap">
                            <%=ViewData("olaAdjustDate")%>
                        </div>
                        <div class="xW_DivDetailHDColumn1PdtLastUpdteDate">
                             <%=Html.Telerik().DatePicker() _
                                .Name("odtXStartUpdatePdt") _
                                .Format("dd/MM/yyyy") _
                                .Value(Date.Now) _
                                .ButtonTitle("..") _
                                .InputHtmlAttributes(New With {.id = "odtStartUpdatePdt", .name = "odtStartUpdatePdt", .style = "height:16px;"}) _
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     .ShowButton(True)
                              %>    
                                                        
                              <%=Html.ValidationMessageFor(Function(model) model.FDPthDocDate)%>
                        </div>
                        
                        <div class="xW_DivDetailHDColumn1PdtLastUpdteDate">
                             <%=Html.Telerik().DatePicker() _
                                 .Name("odtXEndUpdatePdt") _
                                  .Format("dd/MM/yyyy") _
                                  .Value(Date.Now) _
                                  .ButtonTitle("..") _
                                  .InputHtmlAttributes(New With {.id = "odtEndUpdatePdt", .name = "odtEndUpdatePdt", .style = "height:16px;"}) _
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       .ShowButton(True)
                              %>    
                                                        
                              <%=Html.ValidationMessageFor(Function(model) model.FDPthDocDate)%>
                        </div>
                        <div class="xW_DivDetailHDColumn1PdtLastUpdteImportData">
                                <img id="oimImportData" 
                                     alt="" 
                                     class="xCN_ImgBrowData"
                                     onclick="W_GETxPdtLastUpdateToGrid()"
                                     name="oimImportData" 
                                     src="<%=ViewData("oimgDump")%>"/>
                        </div>              
                        
                    </div>

                </div>
                <%--ข้อมูลส่วนบน คอลัมน์ที่ 2--%>
                <div id="odiTabDetail" class ="xW_DivDetailHDColumn2">
                   <div class="xW_DivDetailHDColumn2Sub1">
                        <div class="xW_DivDetailHDColumn2Sub1Cap">
                            <%=ViewData("olaFTPthRefExt")%>
                        </div>
                        <div class="xW_DivDetailHDColumn2Sub1Cap">
                            <%=ViewData("olaFDPthRefExtDate")%>
                        </div>
                        <div class="xW_DivDetailHDColumn2Sub1Cap">
                            <%=ViewData("olaFTPthVATInOrEx")%>
                        </div>
                        <div class="xW_DivDetailHDColumn2Sub1Cap">
                            <%=ViewData("olaFTRteCode")%>
                        </div>
                   </div>
                   <div class="xW_DivDetailHDColumn2Sub2">
                        <div class="xW_DivDetailHDColumn2Sub2Input">
                            <div class="xW_DivDetailHDColumn2Sub2RefNo">
                                <input type="text" 
                                       id="otbFTPthRefExt" 
                                       onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which)"
                                       class="xW_InputTextSize93px" 
                                        value="<%=Model.FTPthRefExt %>"/> 
                            </div>
                                                    
                            <div class ="xCN_DivBrowData">
                                 <img id="oimBrwRefInt" 
                                 alt="" 
                                 onclick="W_DATxBrowseRefDoc('TCNTPdtReqHD')"
                                 class="xCN_ImgBrowData" 
                                 name="oimBrwRefInt" 
                                 src='<%=ViewData("oimgBrowse")%>' />
                              
                            </div> 
                        </div>
                        <div class="xW_DivDetailHDColumn2Sub2Input">
                             <%=Html.Telerik().DatePicker() _
                                 .Name("odtXFDPthRefExtDate") _
                                 .Format("dd/MM/yyyy") _
                                 .Value(Model.FDPthRefExtDate) _
                                 .ButtonTitle("..") _
                                 .InputHtmlAttributes(New With {.id = "odtFDPthRefExtDate", .name = "odtFDPthRefExtDate", .style = "height:14px;"}) _
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          .ShowButton(True)
                              %>    
                                                        
                              <%=Html.ValidationMessageFor(Function(model) model.FDPthDocDate)%>
                        </div>
                        <div class="xW_DivDetailHDColumn2Sub2Input">
                            <select id="ocbFTPthVATInOrEx" 
                                    onchange="ocbFTPthVATInOrEx_onchange()"
                                    class="xW_ComboSize" 
                                    style="padding:1px;" >
                            </select>
                        </div>
                        <div class="xW_DivDetailHDColumn2Sub2Input">
                             <div class="xW_DivForInputTextSize40px">
                                <input type="text" 
                                       id="otbFTRteCode" 
                                       onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which)"
                                       onkeydown="return otbFTRteCode_onkeydown(event.keyCode,event.which);"
                                       onblur="otbFTRteCode_onblur()"
                                       value="<%=Model.FTRteCode%>"
                                       class ="xW_InputTextSize40px"/>
                             </div>
                             <div class ="xCN_DivBrowData">
                                 <img id="oimBrwRte" 
                                         alt="" 
                                         onclick="W_DATxBrowseRte()"
                                         class="xCN_ImgBrowData" 
                                         name="oimBrwRte" 
                                         src='<%=ViewData("oimgBrowse")%>' />
                            </div> 
                            <div class="xW_DivForInputTextSize50px">
                                <input type="text" 
                                       id="otbFCPthRteFac" 
                                       readonly="readonly"
                                       value="<%=Model.FCPthRteFac %>"
                                       class ="xCN_AllReadOnlyBGColor xW_InputTextSize50px"/>
                             </div>
                        </div>
                        <div class ="xW_DivDetailHDColumn2Sub2CurrencyName">
                            <input type="text" 
                                    readonly="readonly"
                                   class="xCN_AllReadOnlyBGColor xW_InputTextSize120px" 
                                   id="otbFTRteName" />
                        </div>

                   </div>
                   <div class ="xW_DivDetailHDDocActive">
                        <div class="xCN_DivDetail3CheckBoxActiveDoc" style="padding:2px;">
                            <input id="ockFNPthStaDocAct" 
                               checked="checked" 
                               name="ockFNPthStaDocAct" 
                               type="checkbox" 
                               value="true" />
                        </div>
                        <div class ="xW_DivDetailHDColumn2Sub2">
                            <%=ViewData("olaFNPthStaDocAct")%>
                        </div>
                   </div>
                 </div>
                <%--Document---%>
                <div id="odiDocNo" class ="xCN_AllBorderColor xCN_DivDetailHDDocNo">
                    <div class="xCN_AllBackgroundColorMenu xCN_AllBorderColor xCN_AllMenuFontSize xCN_AllMenuFontColor xCN_DivDocName">
                        <div class="xCN_DivDocNameSub">
                           <label>
                                <%=ViewData("olaMenuName")%> 
                            </label>
                        </div>

                    </div>
                    <div class="xCN_DivDocNo">
                        <div class="xCN_DivDocNoColumn1">
                            <div class="xCN_DivDocNoColumn1Caption">
                                <%=ViewData("olaFTPthDocNo")%>
                            </div>
                            <div class="xCN_DivDocNoColumn1Caption">
                                <%=ViewData("olaFDPthDocDate")%>
                            </div>
                            <div class="xCN_DivDocNoColumn1Caption">
                                <%=ViewData("olaFTDptCode")%>
                            </div>
                            <div class="xCN_DivDocNoColumn1Caption">
                                <%=ViewData("olaFTUsrCode")%>
                            </div>
                            <div class="xCN_DivDocNoColumn1Caption">
                                <%=ViewData("olaFTPthApvCode")%>
                            </div>
                        </div>
                        <div class="xCN_DivDocNoColumn2">
                            <div class="xCN_DivDocNoColumn2Sub">
                                <input  id="otbFTPthDocNo" 
                                        class="xCN_AllReadOnlyBGColor" 
                                        maxlength='<%=ViewData("MaxLenght")%>' 
                                        name="otbFTPthDocNo" 
                                        readonly="readonly"
                                        onfocus="J002_SETxKeepOldOnfocus('otbFTPthDocNo','otbFTPthDocNoOld')" 
                                        onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which)"
                                        onkeydown="return otbFTPthDocNo_onkeydown(event.keyCode,event.which)" 
                                        onblur="otbFTPthDocNo_onblur()" 
                                        type="text" 
                                        value="<%=Model.FTPthDocNo%>" />
                                    
                                    <%=Html.ValidationMessageFor(Function(model) model.FTPthDocNo)%>
                            </div>
                            <div class="xCN_DivDocNoColumn2Sub">
                                 <%=Html.Telerik().DatePicker() _
                                      .Name("odtXFDPthDocDate") _
                                      .Format("dd/MM/yyyy") _
                                      .Value(Model.FDPthDocDate) _
                                      .ButtonTitle("..") _
                                      .InputHtmlAttributes(New With {.id = "odtFDPthDocDate", .name = "odtFDPthDocDate", .style = "height:16px;"}) _
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           .ShowButton(True)
                                  %>    
                                                            
                                  <%=Html.ValidationMessageFor(Function(model) model.FDPthDocDate)%>
                            
                            </div>
                            <div class="xCN_DivDocNoColumn2Sub">
                                 <input id="otbDptName" 
                                        class="xCN_AllReadOnlyBGColor" 
                                        name="otbDptName" 
                                        readonly="readonly" 
                                        type="text" />
                            </div>
                            <div class="xCN_DivDocNoColumn2Sub">
                                <input id="otbUsrName" 
                                       class="xCN_AllReadOnlyBGColor" 
                                       name="otbUsrName" 
                                       readonly="readonly" 
                                       type="text" />
                            </div>
                            <div class="xCN_DivDocNoColumn2Sub">
                                 <input id="otbApvUsr" 
                                        class="xCN_AllReadOnlyBGColor" 
                                        name="otbApvUsr" 
                                        readonly="readonly" 
                                        type="text" />
                            </div>
                        
                        </div>
                        <div class="xCN_DivDocNoColumn3">
                            <div class="xCN_DivBrowData xCN_DivBrowDataSetTopMargin">
                             
                                <img id="oimGetDocNo" 
                                     alt="" 
                                     onclick="W_GETtDocNo()"
                                     class="xCN_ImgBrowData" 
                                     name="oimGetDocNo" 
                                     src='<%=ViewData("oimgGencode")%>' />
                       
                            </div>
                            <%--<div class="xCN_DivBrowData xCN_DivBrowDataSetTopMargin">
                                <input id="ocmBrwOption" 
                                        class="xCN_InputBottomBrowse" 
                                        name="ocmBrwOption" 
                                        value="..."
                                        onclick="OpenMasterDialog(1,document.getElementById('FTWahRefCode'), document.getElementById('FTWahRefName'),'C_BrowseMaster', '600', '600','?ptCase=null','<%= AdaWebPos.cCNSP.SP_GETdDateTimeNow  %>')" 
                                        type="button" />
                            </div>--%>
                        </div>
                    </div>
                </div>
            </div>
        <%-------------------Detail DT---------------------------%>   
        <div class="xCN_AllBorderColor xCN_DivDetailDT">
                    
                <div id="odiDetailDT" class ="xCN_DivDetailDTSub" onload="__designer:mapid=&quot;a67&quot;">
                    <div id="odiGridDT" class ="xCN_DivGridDetail">
                              <%  
                                  Dim tW_Controller As String = "cvcTCNTPdtTnfHD_In"
                                  Dim tW_Table As String = "TCNTPdtTnfHD"
                                  Dim tW_MidHD As String = "Pth"
                                  Dim tW_MidDT As String = "Ptd"
                                  Dim tW_MidSN As String = "Pts"
                                  Dim nW_DecLength As Integer = Session("nVB_CNDecAmtForShw")
                                  'declare the grid and enable features
                                  Dim oDataDT As IEnumerable(Of Adasoft.WebPos.Models.cmlTCNTPdtTnfDT) = ViewData("DataDT")
                                  Dim gridBuilder = Html.Telerik().Grid(oDataDT) _
                                              .Name("ogdGridDT") _
                                              .HtmlAttributes(New With {.style = "width:99.8%;"}) _
                                              .Scrollable(Function(o) o.Height(130)) _
                                              .Scrollable.HtmlAttributes(New With {.style = "height:152px;"}) _
                                              .Footer(False) _
                                              .Selectable()
                                        
                                  gridBuilder.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                                        .Select("_SelectAjaxEditing", tW_Controller) _
                                        ))
                         
                               
                            'Add grid columns
                                  gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FNPtdSeqNo).Title(ViewData("olaRowID")).Width(45) _
                                .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                .HtmlAttributes(New With {.style = "text-align:left; font-size:10px;"}))
                                  gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTPdtCode).Title(ViewData("olaPdtCode")).Width(145) _
                                .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                .HtmlAttributes(New With {.style = "text-align:left; font-size:10px;"}))
                                  gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTPdtName).Title(ViewData("olaPdtName")).Width(150) _
                                .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                .HtmlAttributes(New With {.style = "text-align:left; font-size:10px;"}))
                                  gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTPtdUnitName).Title(ViewData("olaPdtUnit")).Width(60) _
                                .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                .HtmlAttributes(New With {.style = "text-align:left; font-size:10px;"}))
                                  gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FCPtdQty).Title(ViewData("olaPdtQty")).Width(100).Format("{0:#,##0." & StrDup(Session("nVB_CNDecAmtForShw"), "0") & "}") _
                                .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                .HtmlAttributes(New With {.style = "text-align:right; font-size:10px;"}))
                                  gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FCPtdSetPriceRte).Title(ViewData("olaPdtUnitPrice")).Width(100).Format("{0:#,##0." & StrDup(Session("nVB_CNDecAmtForShw"), "0") & "}") _
                                .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                .HtmlAttributes(New With {.style = "text-align:right; font-size:10px;"}))
                                  gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTPtdDisChgTxtRte).Title(ViewData("olaPdtDis")).Width(82) _
                                .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                .HtmlAttributes(New With {.style = "text-align:right; font-size:10px;"}))
                                  gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FCPtdNet).Title(ViewData("olaPdtNet")).Width(113).Format("{0:#,##0." & StrDup(Session("nVB_CNDecAmtForShw"), "0") & "}") _
                                .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                .HtmlAttributes(New With {.style = "text-align:right; font-size:10px;"}))
                                  gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTPunCode).Title("PunCode").Hidden(True))
                                  gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FCPtdFactor).Title("Factor").Hidden(True))
                                  gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FCPtdDis).Title("Dis").Hidden(True))
                                  gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FCPtdSetPrice).Title("SetPrice").Hidden(True))
                                  gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTPtdDisChgTxt).Title("DisTxt").Hidden(True))
                                  gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTSrnCode).Title("Serial").Hidden(True))
                                  gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTPdtNoDis).Title("PdtNoDis").Hidden(True))
                                  gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FCPtdDisRte).Title("DisRte").Hidden(True))
                                  gridBuilder.DataKeys(Function(Key) Key.Add(Function(model) model.FNPtdSeqNo))
                            
                                                                
                                  gridBuilder.ClientEvents(Function(Events) Events.OnRowSelect("W_GETxPdtOnRowSelected"))
                                  gridBuilder.RowAction(Function(row) (row.Selected = row.DataItem.FNPtdSeqNo.Equals(ViewData("id"))))
                            
                            'Render the grid
                            gridBuilder.Render()
                        %>
                         </div>
                </div>
                
            <%-------------------Add Product to Grid-----------------%>
             <div id="odiAddPdt" class ="xW_DivAddPdt">             
                <div class="xCN_AllBorderColor xW_DivAddPdtCodeMain">
                    <div class="xCN_AllMenuFontColor xCN_DivAddPdtCodeCap xCN_TableHeaderColorTelerik">
                        <%=ViewData("olaPdtCode")%>
                    </div>
                     <div class="xW_DivAddPdtCode">
                        <div class="xW_DivAddPdtCodeData">
                              <input id="otbPdtCode" 
                               maxlength='<%=ViewData("PdtMaxLenght")%>' 
                               name="otbPdtCode"
                               onfocus="otbPdtCode_onfocus()"
                               onblur="otbPdtCode_onblur()"
                               onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which)" 
                               onkeydown="return otbPdtCode_onkeydown(event.keyCode,event.which)"
                               class="wX_InputColumnPdtCode"
                               type="text" />      
                        
                        </div>
                        <div class="xCN_DivBrowData">
                            <img id="oimBrwPdt" 
                                 alt="" 
                                 onclick="W_DATxBrowsePdt()"
                                 class="xCN_DivBrowDataSetTopMargin xCN_ImgBrowData" 
                                 name="oimBrwPdt" 
                                 src='<%=ViewData("oimgBrowse")%>' />
                        </div>
                    </div>
               </div>
               
                <div class="xCN_AllBorderColor xW_DivAddPdtNameMain">
                    <div class="xCN_AllMenuFontColor xCN_DivAddPdtNameCap xCN_TableHeaderColorTelerik">
                        <%=ViewData("olaPdtName")%>
                    </div>
                     <div class="xW_DivAddPdtNameData">
                        <input id="otbPdtName" 
                               name="otbPdtName" 
                               type="text" 
                               class="xCN_AllReadOnlyBGColor"
                               readonly="readonly" />
                    </div>
                </div>
                
                 <div class="xCN_AllBorderColor xW_DivAddPdtUnitNameMain">
                    <div class="xCN_AllMenuFontColor xCN_DivAddPdtUnitNameCap xCN_TableHeaderColorTelerik">
                        <%=ViewData("olaPdtUnit")%>
                    </div>
                     <div class="xW_DivAddPdtUnitNameData">
                        <select id="ocbPdtUnit" 
                               name="ocbPdtUnit"
                                onchange="return ocbUnit_onchange()" 
                                onkeydown="return ocbUnit_onkeydown(event.keyCode,event.which)" >
                        </select>                               
                    </div>
                </div>
                
                <div class="xCN_AllBorderColor xW_DivAddPdtQtyMain">
                    <div class="xCN_AllMenuFontColor xCN_DivAddPdtQtyCap xCN_TableHeaderColorTelerik">
                        <%=ViewData("olaPdtQty")%>
                    </div>
                     <div class="xW_DivAddPdtQtyData">
                        <input id="otbPdtQty" 
                               name="otbPdtQty"
                               value=""
                               onblur="return otbPdtQty_onblur()" 
                               onkeydown="return otbPdtQty_onkeydown(event.keyCode,event.which)"
                               onkeypress="return J002_CHKbCheckNumOnly(this.value,event.keyCode,event.which)" />                               
                    </div>
                </div>
                
                <div class="xCN_AllBorderColor xW_DivAddPdtUnitPriceMain">
                    <div class="xCN_AllMenuFontColor xCN_DivAddPdtUnitPriceCap xCN_TableHeaderColorTelerik">
                        <%=ViewData("olaPdtUnitPrice")%>
                    </div>
                     <div class="xW_DivAddPdtUnitPriceData">
                        <input id="otbSetPriceRte" 
                               name="otbSetPriceRte"
                               onkeydown="return otbSetPriceRte_onkeydown(event.keyCode,event.which)" 
                               onblur="otbSetPriceRte_onblur()" 
                               onkeypress="return J002_CHKbCheckNumOnly(this.value,event.keyCode,event.which)" />                               
                    </div>
                </div>
                <div class="xCN_AllBorderColor xW_DivAddPdtDisMain">
                    <div class="xCN_AllMenuFontColor xCN_DivAddPdtDisCap xCN_TableHeaderColorTelerik">
                        <%=ViewData("olaPdtDis")%>
                    </div>
                     <div class="xW_DivAddPdtDis">
                        <div class="xW_DivAddPdtDisData">
                              <input id="otbDisTxtRte" 
                                     name ="otbDisTxtRte"
                                     maxlength='<%=ViewData("PdtMaxLenght")%>' 
                                     onblur="otbDisTxtRte_onblur()" 
                                     onkeypress="return J002_CHKbCheckDisTxtKey(this.value,event.keyCode,event.which)"
                                     onkeydown="return otbDisTxtRte_onkeydown(event.keyCode,event.which)" 
                                     type="text" />     
                        
                        </div>
                        <div class="xCN_DivBrowData">
                            <input type="button"  
                                   id="ocmPdtDis" 
                                   value="..."  
                                   onclick="W_DATxBrwPdtDis()"
                                   class="xCN_InputBottomBrowse" />
                        </div>
                    </div>
               </div>
                <div class="xCN_AllBorderColor xW_DivAddPdtAmountMain">
                    <div class="xCN_AllMenuFontColor xCN_DivAddPdtAmountCap xCN_TableHeaderColorTelerik">
                        <%=ViewData("olaPdtNet")%>
                    </div>
                     <div class="xW_DivAddPdtAmountData">
                        <input id="otbNet" 
                               name="otbNet" 
                               type="text" 
                               readonly="readonly" 
                               class="xCN_AllReadOnlyBGColor" />
                    </div>
                </div>
                <div class="xW_DivColumnAutoTab">
                    <div>
                        <input id="ockSendTab" type="checkbox" checked="checked" />
                        <label id="olaAutoTab"><%=ViewData("olaAutoSentTab")%></label>
                        <div>
                            <img id="ocmAdd" alt="" src="<%=Url.Content("~/Content/img/imgIcon16x16/accept16.png") %>" 
                                style ="width:20px;height:20px;cursor:pointer;"
                                onclick="ocmAdd_onClick()" 
                                onkeydown="return ocmAdd_onkeydown(event.keyCode,event.which)"  />
                            <img id="ocmDelete" alt="" src="<%=Url.Content("~/Content/img/imgIcon16x16/delete16.png") %>" 
                                style ="width:20px;height:20px;cursor:pointer;"
                                onclick="W_DELxPdtItem()" />
                        </div>
                    </div>
                </div>
               
            </div>
        </div>
        <%-------------------Detail Footer-----------------------%>
        <div id="odiDetailFooter" class ="xCN_AllBackgroundColor xCN_AllBorderColor xCN_DivDetailFooter">
        
            <%--ล่างซ้าย--%>
            <div id="odiHistory" class ="xW_DivDetailFooterHis">
                    <div id="odiRemark" class="xW_DivDetailFooterHisRemark">
                        <%--รายละเอียดแทป--%> 
                        <div class="xCN_DivTabDetailBottom">
                            <div class="xW_DivDetailFooterHisRemarkTop" >
                                <textarea id="otbFTPthRmk" 
                                          class="xW_TextAreaRemark" 
                                          onkeypress="return J002_SETxMaxLength(this,200,event.keyCode,event.which) && J002_CHKbCheckTxtKey(event.keyCode,event.which)" 
                                          rows="1"><%=Model.FTPthRmk%></textarea>
                            </div>
                            <div class="xW_DivDetailFooterHisRemarkBottom">
                                <label id="olaGndTxt"><%=ViewData("olaGrandText")%></label>
                            </div>
                        </div>
                        
                        <%--หัวแทปล่าง--%>
                        <div class="xCN_DivTabToppicBottom">
                            <a href="#">
                                <div id="odiHisRemark" class="xCN_DivTabBottomActive">
                                        <%=ViewData("olaFTPthRmk")%>
                                </div>
                            </a>
                        </div>
                        
                    </div>    
            </div>
            
            <%--ล่างขวา--%>
            <div id="odiDetailFooterCalNet" class ="xCN_DivDetailFooterCalNet">
                <div class="xCN_DivDetailFooterCalNetColumn1">
                    <div class="xCN_DivDetailFooterCalNetColumn1Sub">
                        <%=ViewData("olaFCPthTotal")%>
                    </div>
                    <div class="xCN_DivDetailFooterCalNetColumn1Sub">
                        <div class="xCN_DivDetailFooterCalNetDisCap" >
                            <%=ViewData("olaFCPthDis")%>                        
                        </div>
                        <div class="xCN_DivBrowData xCN_DivBrowDataSetTopMargin">
                           <input id="ocmFootDis" 
                                  class="xCN_InputBottomBrowse" 
                                  name="ocmFootDis" 
                                  value="..."
                                  onclick="W_DATxBrwFootDis()" 
                                  type="button" />                
                        </div>
                        <div class ="xCN_DivDetailFooterCalNetDisData">
                            <input id="otbFootDis" 
                                   class="xCN_AllReadOnlyBGColor" 
                                   readonly="readonly"
                                   value="<%=Model.FTPthDisChgTxt%>"
                                   type="text" />                      
                        </div>

                    </div>
                    <div class="xCN_DivDetailFooterCalNetColumn1Sub">
                        
                        <div class="xCN_DivDetailFooterCalNetGrandAECap" >
                            <%=ViewData("olaFCPthGndAE")%>                        
                        </div>
                        <div class="xCN_DivBrowData xCN_DivBrowDataSetTopMargin">
                           <input id="ocmGndAE" 
                                name="ocmGndAE" 
                                class="xCN_InputBottomBrowse"
                                value="..."
                                disabled="disabled"
                                onclick="W_SHWxBrwGndAE()" 
                                type="button" />                
                        </div>
                        <div class ="xCN_DivDetailFooterCalNetGrandAEData">
                            <input id="otbGndAE" 
                                   class="xCN_AllReadOnlyBGColor" 
                                   value="<%=Model.FCPthGndAE%>"
                                   readonly="readonly" 
                                   type="text" />                      
                        </div>
                    </div>
                    <div class="xCN_DivDetailFooterCalNetColumn1Sub">
                        <%=ViewData("olaFCPthVatable")%>
                    </div>
                    <div class="xCN_DivDetailFooterCalNetColumn1Sub">
                        <div class="wCN_DivDetailFooterCalNetVATCap" >
                            <%=ViewData("olaFCPthVat")%>                        
                        </div>
                        <div class="xCN_DivBrowData xCN_DivBrowDataSetTopMargin">
                           <input id="ocmBrwVAT" 
                                class="xCN_InputBottomBrowse" 
                                name="ocmBrwVAT" 
                                value="..."
                                disabled="disabled"
                                type="button" />                
                        </div>
                        <div class ="wCN_DivDetailFooterCalNetVATData">
                            <input id="otbVatRate" 
                                    onkeydown="otbVatRate_onkeydown(event.keyCode,event.which);"
                                    onblur="otbVatRate_onblur();"
                                   onkeypress="return J002_CHKbCheckNumOnly(this.value,event.keyCode,event.which);"
                                   value="<%=Model.FCPthVATRate%>" />
                           
                        </div>
                        <div class ="xCN_DivDetailFooterCalNetPersent">
                             <label>%</label>
                        </div>
                    </div>
                    <div class="xCN_DivDetailFooterCalNetColumn1Sub">
                        <%=ViewData("olaFCPthGrand")%>
                    </div>
         
                </div>
                <div class="xCN_DivDetailFooterCalNetNumberMain">
                    <div class="xCN_DivDetailFooterCalNetNumberSub">
                        <input id="otbFCPthTotal" 
                                   class="xCN_AllReadOnlyBGColor" 
                                   name="otbFCPthTotal" 
                                   readonly="readonly"
                                   type="text" 
                                   value="<%=Model.FCPthTotal%>" />
                    </div>
                    <div class="xCN_DivDetailFooterCalNetNumberSub">
                        <input id="otbFCPthDis" 
                               class="xCN_AllReadOnlyBGColor" 
                               name="otbFCPthDis" 
                               type="text" 
                               readonly="readonly"
                               value="<%=Model.FCPthDis%>" />
                    </div>
                    <div class="xCN_DivDetailFooterCalNetNumberSub">
                        <input id="otbFCPthGndAE" 
                               class="xCN_AllReadOnlyBGColor" 
                               name="otbFCXxhGndAE" 
                               type="text" 
                               readonly="readonly"
                               value="<%=Model.FCPthGndAE %>" />
                    </div>
                    <div class="xCN_DivDetailFooterCalNetNumberSub">
                        <input id="otbFCPthAftDisChg" 
                               class="xCN_AllReadOnlyBGColor" 
                               readonly="readonly"
                               name="otbFCPthAftDisChg" 
                               type="text" 
                               value="<%=Model.FCPthAftDisChg %>" />
                    </div>
                    <div class="xCN_DivDetailFooterCalNetNumberSub">
                        <input id="otbFCPthVat" 
                               class="xCN_AllReadOnlyBGColor" 
                               name="otbFCPthVat" 
                               type="text" 
                               readonly="readonly"
                               value="<%=Model.FCPthVat %>" />
                    </div>
                    <div class="xCN_DivDetailFooterCalNetNumberSub">
                        <input id="otbFCPthGrand" 
                               name="otbFCPthGrand"
                               class="xCN_AllReadOnlyBGColor" 
                               type="text" 
                               readonly="readonly"
                               value="<%=Model.FCPthGrand %>" />
                    </div>
                </div>
            </div>
            
        </div>
        <%--</div>--%>
    </div>
    <!-- Supplier -->
    <div id="odiBrwSpl" title='<%=ViewData("olaListData")%> : <%=ViewData("olaBrwSpl")%>' class="xCN_DivTabDisplay">
        <div style="height:auto">
            <%Html.RenderPartial("uBrowse\uBrwMaster", Session("oBrwSpl"))%>
        </div>
    </div>
    <!-- Rate -->
    <div id="odiBrwRate" title='<%=ViewData("olaListData")%> : <%=ViewData("olaBrwRate")%>' class="xCN_DivTabDisplay">
        <div style="height:auto">
            <%Html.RenderPartial("uBrowse\uBrwMasterRate", Session("oBrwRate"))%>
        </div>
    </div>
    <!-- Warehouse -->
    <div id="odiBrwWah" title='<%=ViewData("olaListData")%> : <%=ViewData("olaBrwWah")%>' class="xCN_DivTabDisplay">
        <div style="height:auto">
            <%Html.RenderPartial("uBrowse\uBrwMasterWah", Session("oBrwWah"))%>
        </div>
    </div>
    <!-- Tnf Reason -->
    <div id="odiBrwReason" title='<%=ViewData("olaListData")%> : <%=ViewData("olaBrwReason")%>' class="xCN_DivTabDisplay">
        <div style="height:auto">
            <%Html.RenderPartial("uBrowse\uBrwMasterRsn", Session("oBrwTnfRsn"))%>
        </div>
    </div>
    <!-- Discount -->
    <div id="odiBrwDis" title='<%=ViewData("olaListData")%> : <%=ViewData("olaFCXzhDis")%>' class="xCN_DivTabDisplay">
        <div style="height:auto">
            <%Html.RenderPartial("uBrowse\uBrwDis")%>
        </div>
    </div>

    <!-- Browse Product -->
    <div id="odiBrwPdt" title='<%=ViewData("olaListData")%> : <%=ViewData("olaBrwPdt")%>' class="xCN_DivTabDisplay">
        <div style="height:auto">
            <%Html.RenderPartial("uBrowse\uBrwProduct", ViewData("DataPdt"))%>
        </div>
    </div>

    <!-- Browse Doc -->
    <div id="odiBrwDoc" title='<%=ViewData("olaBrowse")%>' class="xCN_DivTabDisplay">
        <div style="height:auto">
            <%Html.RenderPartial("uBrowse\uBrwDoc", Session("CNBrwDoc"))%>
        </div>
    </div>
<script type="text/javascript">
    var nW_StaPrcDoc = 0;
    var nW_StaDocCancel = 0;
    var nW_StaDoc = 0;
    var oW_xmlHttp;
    var tW_Controller = "cvcTCNTPdtTnfHD_In";
    var tW_Table = "TCNTPdtTnfHD";
    var tW_MidHD = "Pth";
    var tW_MidDT = "Ptd";
    var tW_MidSN = "Xzs";
    var nW_DecLength = '<%=Session("nVB_CNDecAmtForShw") %>';
    var tW_WithOutPdt = '<%=ViewData("WithOutPdt")%>';
    var tW_PdtCodeBeFore;
    var tW_DocNoBeFore;
    var tW_StaAdd = '<%=ViewData("StaAdd")%>';
    var tW_StaEdit = '<%=ViewData("StaEdit")%>';
    var tW_StaFull = '<%=ViewData("StaFull")%>';
    var tW_PwdAllow = '<%=Session("bVB_CNPwdAllow")%>';
    var tW_Menu = 'omnPdtTIn';
    var tW_FieldDocNo = 'FTPthDocNo';
    var tW_BeforeEditData;
    var tW_RteCodeB4Edit;
    window.onload = function () {
        window_onload_Page();
    }
    function window_onload_Page() {
        try {
            J003_SHWxWaiting();
            W_FRMxIniatial();
        }
        catch (ex) {
            J002_SHWxMsgError("window_onload_Page", ex);
        }
        finally {
            J003_DISxWaiting();
        }
    }

    function W_CHKbPostOrDelStatus() {
        return (nW_StaDocCancel == 1 || nW_StaPrcDoc == 1)
    }

    function W_FRMxSaveDoc(pbNoReload) {

        try {
            J003_SHWxWaiting();
            var tAuthor = '';
            if (nW_StaDoc == 1) {
                tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Edit%>';
            }
            else {
                tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Add%>';
            }
            var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
            var tPwdAllow = '<%=Session("bVB_CNPwdAllow") %>';
            var bAllow = J002_CHKtCheckAuthorize(tW_Menu, tAuthor, tPwdAllow, tMsgNotAuthorize);
            if (bAllow == false) {
                J003_DISxWaiting();
                return false;
            }

            if (W_CHKbPostOrDelStatus() == true) {
                alert('<%=ViewData("olatMsgNoEdit")%>');
                return false
            }
            if (W_CHKbHasStrValue('otbFTPthWhTo') == false) {
                alert('<%=ViewData("olatMsgErrorData") %>');
                document.getElementById("otbFTPthWhTo").focus();
                return false;
            }
            if (W_CHKbHasStrValue("otbFTSplCode") == false && document.getElementById('ocbFTPthType').selectedIndex == 0) {
                alert('<%=ViewData("olatMsgErrorData") %>');
                document.getElementById("otbFTSplCode").focus();
                return false;
            }
            if (W_CHKbHasStrValue('otbFTTrnCode') == false) {
                alert('<%=ViewData("olatMsgErrorData") %>');
                document.getElementById("otbFTTrnCode").focus();
                return false;
            }
            if (W_CHKbHasStrValue("otbFTPthDocNo") == false) {
                alert('<%=ViewData("olatMsgErrorData") %>');
                document.getElementById("otbFTPthDocNo").focus();
                return false;
            }
            if (W_GETtPdtCount() < 1) {
                alert('<%=ViewData("olatMsgDoc_Empty") %>');
                return false;
            }
            J003_SHWxWaiting();
            var oModel = W_GEToModel();
            var url = '<%=Url.Action("C_FRMxSaveDoc",tW_Controller ) %>';
            oXmlHttp = J002_GEToXMLHttpRequest();
            oXmlHttp.open('Post', url, false);
            oXmlHttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            oXmlHttp.send(oModel);
            if (oXmlHttp.status != 200) {
                alert("Error:" + oXmlHttp.status);
            }
            var aArr = oXmlHttp.responseText.split("|");
            if (aArr[0] != null && aArr[0] != '') {
                alert(aArr[0]);
            }
            document.getElementById("otbFTPthDocNo").value = aArr[1];
            window.location = '<%=Url.Action("Index",tW_Controller) %>' + '?ptDocNo=' + document.getElementById('otbFTPthDocNo').value + '&ptAuthorRead=1';
        }
        catch (ex) {
            J002_SHWxMsgError("W_FRMxSaveDoc ", ex);
        }
        finally {
            J003_DISxWaiting();
        }

    }

    function W_GEToModel() {
        var tStaDocAct = '0';
        if (document.getElementById("ockFNPthStaDocAct").checked == true) {
            tStaDocAct = '1';
        }
        var tRefExtDate = J002_CONtDateTime(document.getElementById("odtFDPthRefExtDate").value)
        var tDocDate = J002_CONtDateTime(document.getElementById("odtFDPthDocDate").value)
        var oModel = "";
        oModel += "FTPthType=" + document.getElementById("ocbFTPthType").value;
        oModel += "&FTPthWhTo=" + document.getElementById("otbFTPthWhTo").value;
        oModel += "&FTSplCode=" + document.getElementById("otbFTSplCode").value;
        oModel += "&FTPthOther=" + document.getElementById("otbFTPthOther").value;
        oModel += "&FTPthRefExt=" + document.getElementById("otbFTPthRefExt").value;
        oModel += "&FDPthRefExtDate=" + tRefExtDate;
        oModel += "&FTPthVATInOrEx=" + document.getElementById("ocbFTPthVATInOrEx").value;
        oModel += "&FTRteCode=" + document.getElementById("otbFTRteCode").value;
        oModel += "&FCPthRteFac=" + J002_GETcNumber(document.getElementById("otbFCPthRteFac").value);
        oModel += "&FTPthStaDoc=" + document.getElementById("otbFTPthStaDoc").value;
        oModel += "&FTBchCode=" + document.getElementById("otbFTBchCode").value;
        oModel += "&FTPthDocNo=" + document.getElementById("otbFTPthDocNo").value;
        oModel += "&FDPthDocDate=" + tDocDate;
        oModel += "&FTPthDocType=" + document.getElementById("otbFTPthDocType").value;
        oModel += "&FTUsrCode=" + document.getElementById("otbFTUsrCode").value;
        oModel += "&FTDptCode=" + document.getElementById("otbFTDptCode").value;
        oModel += "&FTPthApvCode=" + document.getElementById("otbFTPthApvCode").value;
        oModel += "&FTWahCode=" + document.getElementById("otbFTPthWhTo").value;
        oModel += "&FCPthTotal=" + J002_GETcNumber(document.getElementById("otbFCPthTotal").value);
        oModel += "&FCPthDis=" + J002_GETcNumber(document.getElementById("otbFCPthDis").value);
        oModel += "&FCPthGndAE=" + J002_GETcNumber(document.getElementById("otbFCPthGndAE").value);
        oModel += "&FCPthAftDisChg=" + J002_GETcNumber(document.getElementById("otbFCPthAftDisChg").value);
        oModel += "&FCPthVat=" + J002_GETcNumber(document.getElementById("otbFCPthVat").value);
        oModel += "&FCPthVatable=" + J002_GETcNumber(document.getElementById("otbFCPthVatable").value);
        oModel += "&FCPthGrand=" + J002_GETcNumber(document.getElementById("otbFCPthGrand").value);
        oModel += "&FCPthVATRate=" + J002_GETcNumber(document.getElementById("otbVatRate").value);
        oModel += "&FTPthRmk=" + document.getElementById("otbFTPthRmk").value;
        oModel += "&FTPthGndText=" + document.getElementById("olaGndTxt").innerHTML;
        oModel += "&FTPthDisChgTxt=" + document.getElementById("otbFootDis").value;
        oModel += "&FCPthB4DisChg=" + J002_GETcNumber(document.getElementById("otbFCPthTotal").value);
        oModel += "&FCPthNonVat=" + J002_GETcNumber(document.getElementById("otbFCPthNonVat").value);
        oModel += "&FTTrnCode=" + document.getElementById("otbFTTrnCode").value;
        oModel += "&FNPthStaDocAct=" + tStaDocAct;
        return oModel;
    }

    function W_FRMxNewDoc() {

        try {
            J003_SHWxWaiting();
            var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Add%>';
            var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
            var tPwdAllow = '<%=Session("bVB_CNPwdAllow") %>';
            var bAllow = J002_CHKtCheckAuthorize(tW_Menu, tAuthor, tPwdAllow, tMsgNotAuthorize);
            if (bAllow == false) {
                return false;
            }
            var tStaChange = W_CHKbHasChangeData();
            if (tStaChange == true) {
                var tDialogResult = J003_SHWxConfirmDialog('<%=ViewData("tMsgSave_Warning") %>', oJ003_DialogType.DialogYesNoCancel);
                switch (tDialogResult) {
                    case oJ003_DialogResult.Yes:
                        var bComplete = W_FRMxSaveDoc(true);
                        if (bComplete == false) {
                            return false;
                        }
                        break;
                    case oJ003_DialogResult.Cancel: return false; break;
                }
            }
            var tUrl = '<%=Url.Action("Index",tW_Controller ) %>' + '?ptAuthorRead=1';
            window.location = tUrl;
        }
        catch (ex) {
            J002_SHWxMsgError("W_FRMxNewDoc ", ex);
        }
        finally {
            J003_DISxWaiting();
        }
    }

    function W_CHKbHasChangeData() {
        try {
            if (nW_StaPrcDoc == 1 || nW_StaDocCancel == 1) {
                return false;
            }
            var bStaChange = false;
            var tData = W_GETtDataHDString();
            if (tData != tW_BeforeEditData) {
                bStaChange = true;
            }
            if (bStaChange == false) {
                var bStaChangeDT = W_CHKbHasChangeDataDT();
                bStaChange = bStaChange || bStaChangeDT;
            }
            return bStaChange;
        }
        catch (ex) {
            J002_SHWxMsgError("W_CHKbHasChangeData", ex);
        }
    }

    function W_GETtDataHDString() {
        try {
            var tChk = '0';
            var tStr = '';
            tStr += document.getElementById('otbFTSplCode').value;
            tStr += document.getElementById('otbFTTrnCode').value;
            tStr += document.getElementById('otbFTPthWhTo').value;
            tStr += document.getElementById('otbFTPthOther').value;
            tStr += document.getElementById('otbFTPthRefExt').value;
            tStr += document.getElementById('odtFDPthRefExtDate').value;
            tStr += document.getElementById('otbFTRteCode').value;
            tStr += document.getElementById('ocbFTPthVATInOrEx').value;
            tStr += document.getElementById('otbFTPthDocNo').value;
            tStr += document.getElementById('odtFDPthDocDate').value;
            tStr += document.getElementById('otbFTPthRmk').value;
            tStr += document.getElementById('otbFootDis').value;
            tStr += document.getElementById('otbVatRate').value;
            if (document.getElementById('ockFNPthStaDocAct').checked == true) {
                tChk = "1"
            }
            tStr += tChk;
            return tStr;
        }
        catch (ex) {
            J002_SHWxMsgError("W_GETtDataHDString", ex);
        }
    }

    function W_CHKbHasChangeDataDT() {
        try {
            var tDate = J002_GETtTimeStamp();
            var tUrl = '';
            tUrl += '<%=Url.Action("C_CHKtHasChangeDataDT",tW_Controller) %>';
            tUrl += '?ptDateTimeNow=' + tDate;
            oW_xmlHttp = J002_GEToXMLHttpRequest();
            oW_xmlHttp.open('GET', encodeURI(tUrl), false);
            oW_xmlHttp.send(null);
            if (oW_xmlHttp.status != 200) {
                var tMsg = "Error" + oW_xmlHttp.stutus + "\n";
                tMsg += "Function : W_CHKbChangeDataDT \n";
                tMsg += oW_xmlHttp.responseText;
                alert(tMsg);
                return false;
            }
            var tReturn = oW_xmlHttp.responseText;
            var aArr = tReturn.split('|');
            if (aArr[0] != null && aArr[0] != '') {
                alert(aArr[0]);
                return false;
            }
            if (aArr[1] == '1') {
                return true;
            }
            else {
                return false;
            }
        }
        catch (ex) {
            J002_SHWxMsgError('W_CHKbChangeDataDT', ex);
        }
    }

    function W_FRMxPostDoc() {
        try {
            if (nW_StaDoc == 0) {
                alert('<%=ViewData("olatMsgNoAppNoSave")%>');
                return 0;
            }
            if (nW_StaDocCancel == 1) {
                alert('<%=ViewData("olatMsgNoAppCancel")%>');
                return 0;
            }
            if (nW_StaPrcDoc == 1) {
                alert('<%=ViewData("olatMsgNoAppApp")%>');
                return 0;
            }
            J003_SHWxWaiting();
            var oBchcode = document.getElementById('otbFTBchCode');
            var oDocType = document.getElementById('otbFTPthDocType');

            var tdate = J002_GETtTimeStamp();
            J004_FRMxPostDoc(tdate, 'C_FRMxPostDoc', tW_Controller, 'otbFTPthDocNo', 'odtFDPthDocDate', oDocType.value, oBchcode.value);
            if (tCN_LoadTranMenuRetStatus == '0') {
                nW_StaPrcDoc = 1;
                W_SHWxDocStatus('odiNoneApprove', 'odiApprove', 'odiCancel');
                W_CLRxTextBox();
                W_SETxDisableObjAll(true);
                document.getElementById('otbFTPthApvCode').value = document.getElementById('otbFTUsrCode').value
                W_GetApp();
            }

        }
        catch (ex) {
            J002_SHWxMsgError("W_FRMxPostDoc", ex);
        }
        finally {
            J003_DISxWaiting();
        }

    }
    function W_FRMxShwPrintDialog() {
        if (nW_StaDoc == 1) {
            var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Print %>';
            var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
            var tPwdAllow = '<%=Session("bVB_CNPwdAllow") %>';
            var bAllow = J002_CHKtCheckAuthorize(tW_Menu, tAuthor, tPwdAllow, tMsgNotAuthorize);
            if (bAllow == false) {
                return false;
            }
            var tLang = '<%=ViewData("Language")%>';
            var tDocNo = document.getElementById('otbFTPthDocNo').value;
            var tDocDate = document.getElementById('odtFDPthDocDate').value;
            var tLang = '<%=Session("tVB_LastLang") %>';
            var tSplOrCst = 'Supplier';
            var tDocType = document.getElementById("otbFTPthDocType").value;
            var tBchCode = document.getElementById("otbFTBchCode").value;
            var tTableName = tW_Table;
            var tFedCode = tW_FieldDocNo;
            var tRptType = '1';
            var tCstOrSplCode = document.getElementById('otbFTSplCode').value;
            J004_FRMxShwPrintForm(tDocNo, tDocDate, tLang, tSplOrCst, tDocType, tBchCode, tTableName, tFedCode, tRptType, tCstOrSplCode);
        }
    }

    function W_SETxDisableObjAll(pbStatus) {
        try {
            //------Text
            J002_SETxReadOnly('otbFTSplCode', pbStatus);
            J002_SETxReadOnly('otbFTPthRefExt', pbStatus);
            J002_SETxReadOnly('otbFTRteCode', pbStatus);
            J002_SETxReadOnly('FTPthDocNo', pbStatus);
            J002_SETxReadOnly('otbPdtCode', pbStatus);
            J002_SETxReadOnly('otbPdtQty', pbStatus);
            J002_SETxReadOnly('otbSetPriceRte', pbStatus);
            J002_SETxReadOnly('otbDisTxtRte', pbStatus);
            J002_SETxReadOnly('otbVatRate', pbStatus);
            J002_SETxReadOnly('otbFTPthWhTo', pbStatus);
            J002_SETxReadOnly('otbFTTrnCode', pbStatus);
            J002_SETxDisable('ocbFTPthType', pbStatus);
            J002_SETxReadOnly('otbFTPthOther', pbStatus);
            //------Text

            //------Button
            document.getElementById("oimGetDocNo").disabled = pbStatus;
            document.getElementById("oimBrwPdt").disabled = pbStatus;
            document.getElementById("ocmPdtDis").disabled = pbStatus;
            document.getElementById("ocmAdd").disabled = pbStatus;

            document.getElementById("ocmDelete").disabled = pbStatus;
            document.getElementById("ocmFootDis").disabled = pbStatus;
            document.getElementById("oimBrwRefInt").disabled = pbStatus;
            document.getElementById("ocbPdtUnit").disabled = pbStatus;
        }
        catch (ex) {
            J002_SHWxMsgError("W_SETxDisableObjAll", ex);
        }


    }

    function W_CLRxDocFlag() {
        nW_StaPrcDoc = 0;
        nW_StaDocCancel = 0;
        nW_StaDoc = 0;
    }

    function W_GETxUsrAndDptName() {
        try {

            var tDataTimeNow = J002_GETtTimeStamp;
            //            var tUsrCode = $("#FTUsrCode").val();
            var tUrl = '<%=Url.Action("C_GETxUsrAndDptName",tW_Controller ) %>' + "?ptDateTimeNow=" + tDataTimeNow;
            oW_xmlHttp = J002_GEToXMLHttpRequest();
            oW_xmlHttp.open("GET", encodeURI(tUrl), false);
            oW_xmlHttp.send(null);
            var valueFis = oW_xmlHttp.responseText;
            var mytool_array = valueFis.split("|");

            if (mytool_array[0] != null && mytool_array[0] != "") {
                alert(mytool_array[0]);
                return 0;
            }
            if (mytool_array.length > 1) {
                document.getElementById("otbUsrName").value = mytool_array[1];
                document.getElementById("otbDptName").value = mytool_array[2];

            }
        }

        catch (ex) {
            J002_SHWxMsgError("createXMLHttpRequest", ex);
        }

    }

    function W_FRMxCopyDoc() {

        try {
            J003_SHWxWaiting();
            if (nW_StaDoc == 0) {
                alert('<%=ViewData("tMsgNoCoppyNoSave")%>');
                return 0;
            }
            var tAuthor = '';
            tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Add%>';
            var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
            var tPwdAllow = '<%=Session("bVB_CNPwdAllow") %>';
            var bAllow = J002_CHKtCheckAuthorize(tW_Menu, tAuthor, tPwdAllow, tMsgNotAuthorize);
            if (bAllow == false) {
                J003_DISxWaiting();
                return false;
            }
            W_CLRxDocFlag();
            W_CLRxTextBox();
            W_SETxDisableObjAll(false);
            W_SHWxDocStatus('odiNoneApprove', 'odiApprove', 'odiCancel');
            //reset docNo
            document.getElementById("otbFTPthDocNo").value = '<%=ViewData("DocNoFormat")%>';
            document.getElementById('otbFTPthDocNoOld').value = '<%=ViewData("DocNoFormat")%>';
            J002_SETxReadOnly("otbFTPthDocNo", true);
            //reset User
            document.getElementById("otbFTUsrCode").value = '<%=ViewData("UsrCode")%>';
            document.getElementById("otbFTDptCode").value = '<%=ViewData("DptCode")%>';
            W_GETxUsrAndDptName();
            //reset Approve User
            document.getElementById("otbApvUsr").value = '';
            document.getElementById("otbFTPthApvCode").value = '';
            //            //clear sta doc
            //            document.getElementById("otbFTPthStaDoc").value = ''
            //reset date object
            document.getElementById("odtFDPthDocDate").value = J002_GETtDateNow();
            document.getElementById("odtFDPthRefExtDate").value = J002_GETtDateNow();
            document.getElementById('otbFTPthStaDoc').value = '';

            //Product Serial *CH 07-02-2013
            var nCountSN = W_GETtPdtSNCount();
            if (nCountSN > 0) {
                var bConfirm = confirm('<%=ViewData("tMsgConfirmDelPdtSN") %>');
                if (bConfirm == false) {
                    return false;
                }
                W_DELtPdtSerial();
                W_SETxRebindGrid();
            }
        }
        catch (ex) {
            J002_SHWxMsgError("W_FRMxCopyDoc", ex);
        }
        finally {
            J003_DISxWaiting();
        }
    }
    function W_DELtPdtSerial() {
        var tDataTimeNow = J002_GETtTimeStamp();
        var tSeq = document.getElementById("otbSeq").value;
        var tPdtCode = document.getElementById("otbPdtCode").value;
        var tUrl = '';
        tUrl += '<%=Url.Action("C_DELtPdtSerial",tW_Controller) %>';
        tUrl += "?ptDateTimeNow=" + tDataTimeNow;
        tUrl += "&ptPdtCode=" + tPdtCode;
        tUrl += "&ptSeq=" + tSeq; 
        oW_xmlHttp = J002_GEToXMLHttpRequest();
        oW_xmlHttp.open("GET", encodeURI(tUrl), false);
        oW_xmlHttp.send(null);
        return oW_xmlHttp.responseText; //return จำนวนรายการสินค้า ใน Grid
    }
    function W_GETtPdtSNCount() {
        var tDataTimeNow = J002_GETtTimeStamp();
        var tModelPdt = document.getElementById("otbPdtCode").value;
        var tUrl = '<%=Url.Action("C_GETtPdtSNCount",tW_Controller) %>' + "?ptDateTimeNow=" + tDataTimeNow;
        oW_xmlHttp = J002_GEToXMLHttpRequest();
        oW_xmlHttp.open("GET", encodeURI(tUrl), false);
        oW_xmlHttp.send(null);
        return oW_xmlHttp.responseText; //return จำนวนรายการสินค้า ใน Grid
    }
    function W_GETtPdtCount() {
        try {
            var tDataTimeNow = J002_GETtTimeStamp();
            var tModelPdt = document.getElementById("otbPdtCode").value;
            var tUrl = '<%=Url.Action("C_GETtPdtCount",tW_Controller  ) %>' + "?ptDateTimeNow=" + tDataTimeNow;
            oW_xmlHttp = J002_GEToXMLHttpRequest();
            oW_xmlHttp.open("GET", encodeURI(tUrl), false);
            oW_xmlHttp.send(null);
            return oW_xmlHttp.responseText; //return จำนวนรายการสินค้า ใน Grid
        }
        catch (ex) {
            J002_SHWxMsgError("W_GETtPdtCount ", ex);

        }

    }

    function W_SETxDisableDocNo(pbStatus) {
        try {
            J002_SETxReadOnly('otbFTPthDocNo', pbStatus);
            // document.getElementById("oimGetDocNo").disabled = pbStatus;
        }
        catch (ex) {
            J002_SHWxMsgError("W_SETxDisableDocNo", ex);
        }

    }

    function W_SETxDocDisplayStatus() {

        try {
            if ('<%=model.FTPthStaDoc%>' == '1') {
                nW_StaDoc = 1;
                W_SETxDisableDocNo(true);
            }
            if ('<%=model.FTPthStaDoc%>' == '3') {
                nW_StaDoc = 1;
                nW_StaDocCancel = 1;
                W_SETxDisableObjAll(true);
            }
            if ('<%=model.FTPthStaPrcDoc%>' == '1') {
                nW_StaDoc = 1;
                nW_StaPrcDoc = 1;
                W_SETxDisableObjAll(true);
            }
        }
        catch (ex) {
            J002_SHWxMsgError("W_SETxDocDisplayStatus", ex);
        }

    }

    function W_FRMxIniatial() {
        try {
            tJ002_VirtualDirectory = '<%=Session("VirtualDirectory") %>';
            tJ003_VirtualDirectory = '<%=Session("VirtualDirectory") %>';
            tJ004_VirtualDirectory = '<%=Session("VirtualDirectory") %>';
            if ('<%=ViewData("AuthorRead") %>' != '1') {
                var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Read%>';
                var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
                var tPwdAllow = '<%=Session("bVB_CNPwdAllow") %>';
                var bAllow = J002_CHKtCheckAuthorize(tW_Menu, tAuthor, tPwdAllow, tMsgNotAuthorize);
                if (bAllow == false) {
                    window.location = '<%=Url.Action("Index","cvcCNPanal", New With {.ptMenuGrpName = "Pdt"}) %>';
                    return false;
                }
            }
            J011_CLRxComboBox("ocbFTPthType");
            J011_SETxComboBox("ocbFTPthType", '<%=ViewData("PthWhFrm") %>');
            J011_SETxComboSelected("ocbFTPthType", '<%=Model.FTPthType %>')
            W_SETxStausRemark();
            J011_CLRxComboBox("ocbFTPthVATInOrEx");
            J011_SETxComboBox("ocbFTPthVATInOrEx", '<%=ViewData("PthVATInOrEx") %>');
            J002_GETxFieldName(tW_Controller, 'C_GETtFeildName', 'otbFTPthWhTo', 'otbFTPthWhToName', 'otbFTPthWhToOld', 'TCNMWaHouse', 'FTWahCode', 'FTWahName', '<%=ViewData("olaFTPthWhTo") %>');
            J002_GETxFieldName(tW_Controller, 'C_GETtFeildName', 'otbFTSplCode', 'otbFTSplName', 'otbFTSplCodeOld', 'TCNMSpl', 'FTSplCode', 'FTSplName', '<%=ViewData("olaSplCode") %>');
            J002_GETxFieldName(tW_Controller, 'C_GETtFeildName', 'otbFTTrnCode', 'otbFTTrnName', 'otbFTTrnCodeOld', 'TCNMTnfReason', 'FTTrnCode', 'FTTrnName');
            J002_GETxFieldName(tW_Controller, 'C_GETtFeildName', "otbFTUsrCode", "otbUsrName", null, "TSysUser", "FTUsrCode", "FTUsrName");
            J002_GETxFieldName(tW_Controller, 'C_GETtFeildName', "otbFTDptCode", "otbDptName", null, "TCNMDepart", "FTDptCode", "FTDptName");
            J002_GETxFieldName(tW_Controller, 'C_GETtFeildName', 'otbFTPthApvCode', "otbApvUsr", null, "TSysUser", "FTUsrCode", "FTUsrName");
            W_SETxDocDisplayStatus();
            W_SHWxDocStatus('odiNoneApprove', 'odiApprove', 'odiCancel');
            W_GETtRteDetail(true);
            W_SETxComboVATInOrEX();
            W_DATxCalFooter();
            W_SETbStaDocActive();
            tW_BeforeEditData = W_GETtDataHDString();
        }
        catch (ex) {
            J002_SHWxMsgError("W_FRMxIniatial", ex);
        }
    }

    function W_SHWxDocStatus(ptNonAppID, ptAppID, ptCancelID) {
        try {
            if (nW_StaPrcDoc + nW_StaDocCancel == 0) {
                document.getElementById(ptNonAppID).style.display = "block";
                document.getElementById(ptAppID).style.display = "none";
                document.getElementById(ptCancelID).style.display = "none";
            } else {
                if (nW_StaPrcDoc == 1) {
                    document.getElementById(ptNonAppID).style.display = "none";
                    document.getElementById(ptAppID).style.display = "block";
                    document.getElementById(ptCancelID).style.display = "none";
                } else {
                    document.getElementById(ptNonAppID).style.display = "none";
                    document.getElementById(ptAppID).style.display = "none";
                    document.getElementById(ptCancelID).style.display = "block";
                }
            }
        }
        catch (ex) {
            J002_SHWxMsgError("W_SHWxDocStatus", ex);
        }

    }

    function W_CHKbHasStrValue(ptObjName) {
        try {
            var tValue = document.getElementById(ptObjName).value;
            if ((tValue.replace(' ', '')) == '') {
                return false;
            }
            else {
                return true;
            }
        }
        catch (ex) {
            J002_SHWxMsgError("W_CHKbHasStrValue", ex);
        }

    }

    function W_DATxCalDis() {
        try {
            var oReturn;
            var cCost = J002_GETcNumber(document.getElementById("otbSetPriceRte").value);
            var cQty = J002_GETcNumber(document.getElementById("otbPdtQty").value);
            var cRteRate = J002_GETcNumber(document.getElementById("otbFCPthRteFac").value);
            var cTotal = cCost * cQty;
            var tInputDisTxt = document.getElementById("otbDisTxtRte").value;
            tInputDisTxt = J002_STRttrim(tInputDisTxt);
            oReturn = J002_DATxCalDis(cTotal, tInputDisTxt, cRteRate);
            document.getElementById("otbDisRte").value = oReturn.cDisRte;
            document.getElementById("otbDis").value = oReturn.cDis;
            document.getElementById("otbDisTxtRte").value = oReturn.tDisTxtRte;
            document.getElementById("otbDisTxt").value = oReturn.tDisTxt;
        }
        catch (ex) {
            J002_SHWxMsgError("W_DATxCalDis", ex);
        }
    }

    function W_DATxCalPdtNet() {
        try {
            if (W_CHKbHasStrValue("otbPdtCode") == false) {
                return false;
            }
            var oElement;
            var nCost = document.getElementById("otbSetPriceRte").value;
            var nQty = document.getElementById("otbPdtQty").value;
            var nDis = document.getElementById("otbDis").value;
            var nRteRate = document.getElementById('otbFCPthRteFac').value;
            oElement = document.getElementById("otbNet");
            nCost = J002_GETcNumber(nCost);
            nQty = J002_GETcNumber(nQty);
            nDis = J002_GETcNumber(nDis);
            nRteRate = J002_GETcNumber(nRteRate);
            var cNet = (nCost * nQty * nRteRate) - nDis;
            oElement.value = J002_DECcRound(cNet, nW_DecLength);
        }
        catch (ex) {
            J002_SHWxMsgError("W_DATxCalPdtNet", ex);
        }


    }

    function ocbPdtUnit_onChange() {
        var nIndex = document.getElementById('ocbPdtUnit').selectedIndex;
        var tValue = document.getElementById('ocbPdtUnit').options.item(nIndex).text;

        var aValue = tValue.split("|");
        document.getElementById("otbUnitCode").value = document.getElementById("ocbPdtUnit").value;
        document.getElementById("otbUnitName").value = aValue[0];
        document.getElementById("otbUnitFactor").value = aValue[1];
        //W_SETxComboBox("ocbFTPthVATInOrEx", '<%=ViewData("PthVATInOrEx") %>');
    }

    function otbSetPriceRte_onblur() {
        try {
            if (J002_CHKbIsBlankValue('otbPdtCode') == true) {
                return false;
            }
            var tSetPrice = document.getElementById('otbSetPriceRte').value;
            var tRteRate = document.getElementById('otbFCPthRteFac').value;
            tSetPrice = J002_GETcNumber(tSetPrice);
            tRteRate = J002_GETcNumber(tRteRate);
            document.getElementById('otbSetPrice').value = tSetPrice * tRteRate;
            J002_CHKbNumOutOfLength(document.getElementById('otbSetPriceRte'), 0, null, true);
            W_DATxCalPdtNet();
        }
        catch (ex) {
            J002_SHWxMsgError("otbSetPriceRte_onblur", ex);
        }

    }


    function otbPdtCode_onfocus() {
        tW_PdtCodeBeFore = document.getElementById("otbPdtCode").value;
    }
    function otbPdtCode_onblur() {
        if (document.getElementById('otbPdtCode').value == document.getElementById('otbPdtCodeOld').value) {
            return false;
        }
        W_GETxPdtDetail();
        if ($("#otbFTPdtSrn").val() == '1') {
            var tPdtCode = $('#otbPdtCode').val();
            var tPdtName = $('#otbPdtName').val();
            var tPdtFactor = $('#otbUnitFactor').val();
            var tUnitName = $('#otbUnitName').val();
            var tSeq = $('#otbPdtQty').val();
            var tDocNo = '';            
            if (nW_StaDoc == 1) {
                tDocNo = $("#otbFTPthDocNo").val();
            }
            //****** Browse Serial ******
            J003_SHWxWaiting();
            do {
                var tReturnedValue = J003_BRWxSerial(tW_Controller, 'C_BRWxSerial', tPdtCode, tPdtName, tPdtFactor, tUnitName, tSeq, oJ003_SNDialogMode.Purchase);
                var bConfirm = false;
                if (tReturnedValue == null || tReturnedValue == '') {
                    bConfirm = confirm('สินค้านี้เป็นสินค้า Serial ต้องทำการระบุ Serial \nคุณต้องการเลือกรายการ Serial หรือไม่?');
                }
            } while (bConfirm == true)
            $('#otbSerialList').val(tReturnedValue);
            if (tReturnedValue == null || tReturnedValue == '') {
                $('#otbPdtCode').val(tPdtCode);
                $("#otbPdtQty").val(tSeq);
                W_CLRxTextBox();
            }
            else {
                var nQty = tReturnedValue.split("|").length;
                $("#otbPdtQty").val(nQty);
                W_DATxCalPdtNet();
                W_SETxInputForSerial(true);
                //เมื่อเลือกแท็บอัตโนมัติให้นำสินค้าลงตารางโดยไม่ได้กำหนดสินค้า //*CH 27-05-2012
                if (document.getElementById("ockSendTab").checked == true) {
                    W_DATxCalPdtNet();
                    otbPdtQty_onblur();
                    W_DATxAddPdtToGrid();
                    W_CLRxTextBox();
                }
            }
            J003_DISxWaiting();
        } else {
            //var oEletent = document.getElementById("otbQty");
            //oEletent.value = J002_DECcRound(1, nW_DecLength);
            //W_DATxCalPdtNet();
            //เมื่อเลือกแท็บอัตโนมัติให้นำสินค้าลงตารางโดยไม่ได้กำหนดสินค้า //*CH 27-05-2012
            if (document.getElementById("ockSendTab").checked == true) {
                W_DATxCalPdtNet();
                otbPdtQty_onblur();
                W_DATxAddPdtToGrid();
                W_CLRxTextBox();
            } else if (document.getElementById('ockSendTab').checked == false) {
                W_DATxCalPdtNet();
                $('#otbPdtQty').focus()
            }
        }
        W_DATxCalPdtNet();
        return true;
    }
    function W_SETxInputForSerial(pbDisable) {
        J002_SETxDisable("ocbPdtUnit", pbDisable);
        J002_SETxReadOnly("otbPdtQty", pbDisable);
    }
    function otbPdtCode_onkeydown(ptKeyCode, ptWhich) {
        var tKey = ptKeyCode;
        if (ptWhich != null && ptWhich != '') {
            tKey = ptWhich;
        }
        if (W_CHKbHasStrValue('otbFTPthWhTo') == false) {
            return false;
        }
        if (W_CHKbHasStrValue('otbFTPthOther') == false && document.getElementById('ocbFTPthType').selectedIndex == 1) {
            return false;
        }
        if (W_CHKbHasStrValue("otbFTSplCode") == false && document.getElementById('ocbFTPthType').selectedIndex == 0) {
            return false;
        }
        if (tKey == 118) {//key F7 to delete
            W_DELxPdtItem();
            return false;
        }
        if (tKey == 13 || tKey == 9) {
            if (document.getElementById("ockSendTab").checked == true) {
                if (document.getElementById('otbPdtCode').value != '') {
                    if (document.getElementById('ocbPdtUnit').disabled == true) {//pdt serial
                        document.getElementById('otbSetPriceRte').focus();
                        document.getElementById('otbSetPriceRte').select();
                    }
                    else {
                        document.getElementById('ocbPdtUnit').focus();
                    }
                }
                else {
                    document.getElementById('otbPdtCode').focus();
                    document.getElementById('otbPdtCode').select();
                }
            }
            else {
                otbPdtCode_onblur();
                W_DATxAddPdtToGrid();
                W_CLRxTextBox();
                document.getElementById("otbPdtCode").value = "";
                document.getElementById("otbPdtCode").focus();
            }
            return !(tKey == 13 || tKey == 9);
        }
    }
    function ocbUnit_onchange() {
        var nIndex = document.getElementById("ocbPdtUnit").selectedIndex;
        var tStr = document.getElementById("ocbPdtUnit").options.item(nIndex).text;
        var oStr_Array = tStr.split("|");
        document.getElementById("otbUnitCode").value = document.getElementById("ocbPdtUnit").value;
        document.getElementById("otbUnitName").value = oStr_Array[0];
        document.getElementById("otbUnitFactor").value = oStr_Array[1];
    }
    function ocbUnit_onkeydown(ptKeyCode, ptWhich) {
        var tKey = ptKeyCode;
        if (ptWhich != null && ptWhich != '') {
            tKey = ptWhich;
        }
        if (tKey == 13) {
            document.getElementById("otbPdtQty").focus();
            document.getElementById("otbPdtQty").select();

        }
        return !(tKey == 13);
    }
    function otbSetPriceRte_onkeydown(ptKeyCode, ptWhich) {
        try {
            if (W_CHKbHasStrValue("otbPdtCode") == false) {
                return false;
            }

            var tKey = ptKeyCode;
            if (ptWhich != null && ptWhich != '') {
                tKey = ptWhich;
            }
            if (tKey == 13) {
                document.getElementById("otbDisTxtRte").focus();
                document.getElementById("otbDisTxtRte").select();
            }
            return !(tKey == 13);
        }
        catch (ex) {
            J002_SHWxMsgError("otbSetPriceRte_onkeydown", ex);
        }

    }
    function otbDisTxtRte_onkeydown(ptKeyCode, ptWhich) {
        try {
            if (W_CHKbHasStrValue("otbPdtCode") == false) {
                return false;
            }
            var tKey = ptKeyCode;
            if (ptWhich != null && ptWhich != '') {
                tKey = ptWhich;
            }
            var tPdtNoDis = document.getElementById("otbFTPdtNoDis").value;
            // alert(tPdtNoDis);
            if (tKey == 13) {
                otbDisTxtRte_onblur();
                W_DATxAddPdtToGrid();
                document.getElementById("otbPdtCode").focus();


            }
            return !(tKey == 13);
        }
        catch (ex) {
            J002_SHWxMsgError("otbDisTxtRte_onkeydown", ex);
        }

    }

    function otbDisTxtRte_onblur() {
        W_DATxCalDis();
        W_DATxCalPdtNet();
    }

    function W_CLRxComboBox(ptComboId) {
        try {
            var oElement = document.getElementById(ptComboId);
            while (oElement.length > 0) {
                oElement.remove(0);
            }
        }
        catch (ex) {
            J002_SHWxMsgError("W_CLRxComboBox", ex);
        }
    }

    function W_CLRxTextBox() {
        try {
            var oElement = document.getElementById('otbPdtCode');
            oElement.value = '';
            oElement = document.getElementById('otbPdtCodeOld');
            oElement.value = '';
            oElement = document.getElementById('otbPdtName');
            oElement.value = '';
            oElement = document.getElementById('otbPdtQty');
            oElement.value = '';
            oElement = document.getElementById('otbSetPriceRte');
            oElement.value = '';
            oElement = document.getElementById('otbDisTxtRte');
            oElement.value = '';
            oElement = document.getElementById('otbDisTxt');
            oElement.value = '';
            oElement = document.getElementById('otbDisRte');
            oElement.value = '';
            oElement = document.getElementById('otbDis');
            oElement.value = '';
            oElement = document.getElementById('otbNet');
            oElement.value = '';
            oElement = document.getElementById('ocbPdtUnit');
            oElement.value = '';
            oElement = document.getElementById('otbSeq');
            oElement.value = '';
            W_CLRxPdtUnitCombo();
            //*CH 07-02-2013
            $("#otbFTPdtSrn").val('');
            $("#otbSerialList").val('');
            W_SETxInputForSerial(false);

        }
        catch (ex) {
            J002_SHWxMsgError("W_CLRxTextBox", ex);
        }
    }

    function W_CLRxPdtUnitCombo() {
        var oElement = document.getElementById("ocbPdtUnit");
        //Clear combo
        while (oElement.length > 0) {
            oElement.remove(0);
        }
    }

    function W_GETtDocNo() {
        try {
            if (nW_StaDoc == 1) {
                return false;
            }
            J002_SETxReadOnly("otbFTPthDocNo", false);

            var oXmlHttp = J002_GEToXMLHttpRequest();
            var tDataTimeNow = J002_GETtTimeStamp();
            var tBchCode = document.getElementById("otbFTBchCode").value;
            var tDocNo = document.getElementById("otbFTPthDocNo").value;
            var tDocType = document.getElementById("otbFTPthDocType").value;
            var tUrl = '<%=Url.Action("C_GENtDocNo",tW_Controller  ) %>' + '?ptBchCode=' + tBchCode + '&ptDocNo=' + tDocNo + '&ptDocType=' + tDocType + '&ptDateTimeNow=' + tDataTimeNow;
            oXmlHttp.open("GET", encodeURI(tUrl), false);
            oXmlHttp.send(null);
            var valueFis = oXmlHttp.responseText;
            if (valueFis == null) {
                return 0;
            }
            var mytool_array = valueFis.split("|");

            if (mytool_array[0] != null && mytool_array[0] != "") {
                alert("C_GENtDocNo : " + mytool_array[0]);
                return false;
            }
            else {
                document.getElementById("otbFTPthDocNo").value = mytool_array[1];
                document.getElementById("otbFTPthDocNoOld").value = mytool_array[1];
            }

        }
        catch (ex) {
            J002_SHWxMsgError("W_GENxDocNo", ex);
        }
    }

    function W_GETtRteDetail(pbOnload) {
        try {
            var oXmlHttp = J002_GEToXMLHttpRequest();
            var tDateTimeNow = J002_GETtTimeStamp();
            var tRteCode = document.getElementById("otbFTRteCode").value;
            var tUrl = '<%=Url.Action("C_GETtRteData",tW_Controller) %>' + '?ptRtecode=' + tRteCode + '&ptDateTimeNow=' + tDateTimeNow;
            if (J002_STRttrim(tRteCode) == '') {
                document.getElementById("otbFTRteCode").value = document.getElementById('otbFTRteCodeOld').value;
                return false;
            }
            if (W_GETtPdtCount() > 0 && pbOnload != true) {
                if (confirm('<%=ViewData("tMsgChangeRate") %>') == false) {
                    document.getElementById("otbFTRteCode").value = document.getElementById('otbFTRteCodeOld').value;
                    document.getElementById("otbFTRteCode").focus();
                    return false;
                }
                W_CLRxDataDT();
            }

            oXmlHttp.open('GET', encodeURI(tUrl), false);
            oXmlHttp.send(null);

            var tReturn = oXmlHttp.responseText;
            var tValue = tReturn.split("|");
            if (tValue[1] == "") {
                document.getElementById("otbFTRteCode").value = document.getElementById('otbFTRteCodeOld').value;
                tW_RteCodeB4Edit = $('#otbFTRteCodeOld').val();
                return false;
            }
            if (tValue[0] != null && tValue[0] != "") {
                alert(tValue[0]);
                document.getElementById("otbFTRteCode").value = document.getElementById('otbFTRteCodeOld').value;
                return false;
            }
            document.getElementById("otbFTRteCode").value = tValue[1];
            document.getElementById("otbFTRteCodeOld").value = tValue[1];
            document.getElementById("otbFTRteName").value = tValue[2];
            document.getElementById('otbFCPthRteFac').value = tValue[3];
            tW_RteCodeB4Edit = tValue[1];
        }
        catch (ex) {
            J002_SHWxMsgError("W_GETtRteDetail ", ex);
        }

    }

    function W_GETxPdtDetail() {
        try {
            oW_xmlHttp = J002_GEToXMLHttpRequest();
            var tDateTimeNow = J002_GETtTimeStamp();

            var tPdtCode = document.getElementById('otbPdtCode').value;
            tPdtCode = J002_STRttrim(tPdtCode);
            if (tPdtCode == '') {
                W_CLRxTextBox();
                document.getElementById('otbPdtCode').focus();
                return false;
            }

            var tUrl = '<%=Url.Action("C_GEToPdtDetail",tW_Controller ) %>' + '?ptPdtCode=' + tPdtCode + '&ptDate=' + tDateTimeNow;
            oW_xmlHttp.open('GET', encodeURI(tUrl), false);
            oW_xmlHttp.send(null);
            var tValueFis = oW_xmlHttp.responseText;
            var aPdtValue = tValueFis.split("|");
            if (aPdtValue[0] != null && aPdtValue[0] != "") {
                alert(aPdtValue[0]);
                document.getElementById('otbPdtCode').focus();
                return 0;
            }
            if (aPdtValue[1] == null || aPdtValue[1] == "") {
                W_CLRxTextBox();
                document.getElementById('otbPdtCode').focus();
                return false;
            }
            document.getElementById("otbPdtCode").value = aPdtValue[1];
            document.getElementById("otbPdtName").value = aPdtValue[2];
            document.getElementById("otbSetPriceRte").value = J002_DECcRound(aPdtValue[3], nW_DecLength);
            document.getElementById("otbDis").value = J002_DECcRound(0, nW_DecLength); //default
            document.getElementById("otbDisRte").value = J002_DECcRound(0, nW_DecLength); //default
            document.getElementById("otbFTPdtNoDis").value = aPdtValue[4];
            document.getElementById("otbPdtQty").value = 1;
            $("#otbFTPdtSrn").val(aPdtValue[5]);

            var tSetPrice = document.getElementById('otbSetPriceRte').value;
            var tRteRate = document.getElementById('otbFCPthRteFac').value;
            if (J002_STRttrim(tSetPrice) != '') {
                document.getElementById('otbSetPrice').value = tSetPrice * tRteRate;
            }
            var tStr = new String;
            var aStr_Array;
            var i;

            var oElement = document.getElementById("ocbPdtUnit");

            while (oElement.length > 0) {
                oElement.remove(0);
            }
            var nComboIndex = -1;
            for (i = 6; i < 8; i++) {
                tStr = aPdtValue[i];
                if (tStr != null && tStr != '') {
                    aStr_Array = tStr.split(",");
                    var oNewOption = document.createElement('option');
                    if (aStr_Array[0] != null) {
                        oNewOption.value = aStr_Array[0]; //FTPunCode
                        oNewOption.text = aStr_Array[1] + '|' + aStr_Array[2];  //text display
                        if (navigator.appName == "Microsoft Internet Explorer") {
                            document.getElementById("ocbPdtUnit").add(oNewOption);
                        }
                        else {
                            document.getElementById("ocbPdtUnit").add(oNewOption, null);
                        }
                    }

                    if (aStr_Array[3] == 1) {
                        nComboIndex = document.getElementById("ocbPdtUnit").options.length - 1;
                    }
                }
            }
            if (nComboIndex < 0) {
                nComboIndex = document.getElementById("ocbPdtUnit").selectedIndex;
            }
            if (nComboIndex > -1) {
                document.getElementById("ocbPdtUnit").selectedIndex = nComboIndex;
                var tStr = document.getElementById("ocbPdtUnit").options.item(nComboIndex).text;
                var oStr_Array = tStr.split("|");
                //alert(oStr_Array);
                document.getElementById("otbUnitCode").value = document.getElementById("ocbPdtUnit").value;
                document.getElementById("otbUnitName").value = oStr_Array[0];
                document.getElementById("otbUnitFactor").value = oStr_Array[1];
                // alert(document.getElementById("otbUnitFactor").value);
            }
        }
        catch (ex) {
            J002_SHWxMsgError("W_GETxPdtDetail ", ex);
        }


    }

    function W_GETxObjectFieldName(ptController, ptAction, ptObjCodeId, ptObjNameId, ptObjCodeOldId, ptTblName, ptFieldCode, ptFieldName, ptMsgErr) {
        var tMsgNoData = '<%=ViewData("tMsgDAT_Notfound001")%>' + ptMsgErr;
        J002_GETxFieldName(ptController, ptAction, ptObjCodeId, ptObjNameId, ptObjCodeOldId, ptTblName, ptFieldCode, ptFieldName, tMsgNoData)

    }
    function W_GETtTimestamp() {
        var oDate = new Date;
        tDate = '' + oDate.getFullYear();
        tDate += oDate.getMonth();
        tDate += oDate.getDay();
        tDate += oDate.getHours();
        tDate += oDate.getMinutes();
        tDate += oDate.getSeconds();
        tDate += oDate.getMilliseconds();
        return tDate;
    }
    function W_DATxBrowseMaster(ptObjCode, ptObjName, ptCase) {
        try {
            var tDate = J002_GETtTimeStamp();
            var tUrl = '<%=Url.Action("C_BRWxMaster",tW_Controller) %>';
            J006_BRWxMaster(tUrl, '', ptObjCode, ptObjName, ptCase);
        }
        catch (ex) {
            J002_SHWxMsgError('W_DATxBrowseMaster', ex);
        }
    }

    function W_DATxBrowseRte() {
        // tCase = "RteCode";
        //var tDate = W_GETtTimestamp();
        //var tReturnedValue = showModalDialog('<%=Url.Action("C_BRWxMaster",tW_Controller) %>' + '?ptCase=' + tCase + '&ptDate=' + tDate, "Passed String", "dialogWidth:800px; dialogHeight:500px; status:no; center:yes;titlebar =0");
        //if (tReturnedValue != undefined) {
        //    if (tReturnedValue != '12233344445555566666677777778888888899999999900000000001223334444555556666667777777888888889999999990000000000') {
        //        document.getElementById("otbFTRteCode").value = tReturnedValue.split(";")[0];
        //        document.getElementById("otbFTRteName").value = tReturnedValue.split(";")[1];
        //        document.getElementById("otbFCPthRteFac").value = tReturnedValue.split(";")[2];
        //        document.getElementById("otbFTRteCode").focus();
        //    }
        //}
        W_SHWxOpenMasterDialog('otbFTRteCode', 'otbFTRteName', 'Rat'); //*CH 18-01-2013
    }

    function W_DATxBrwPdtDis() {
        try {
            //J003_SHWxWaiting();
            var tDisTxt = document.getElementById("otbDisTxtRte").value;
            var cPrice = J002_GETcNumber(document.getElementById("otbSetPriceRte").value);
            //var cQty = J002_GETcNumber(document.getElementById("otbPdtQty").value);
            //var tNet = cPrice * cQty;
            //var tDateTimeNow = J002_GETtTimeStamp();
            //var ReturnedValue = showModalDialog('<%=Url.Action("C_CNBrwDis",tW_Controller) %>' + '?ptDate=' + tDateTimeNow + '&ptNet=' + tNet + '&ptDisTxt=' + tDisTxt, "Passed String", "dialogWidth:355px; dialogHeight:325px; status:no; center:yes;titlebar =0;scroll=no");
            //document.getElementById("otbDisTxtRte").value = ReturnedValue;
            //W_DATxCalDis();
            //W_DATxCalPdtNet();
            if (cPrice > 0) {
                tW_FlagDis = '1';
                if (tDisTxt == '0.00') { tDisTxt = ''; }
                C_SETxValueNet(cPrice, tDisTxt); //ส่งข้อมูลไปหน้ากำหนดส่วนลด //*CH 21-01-2013
                $ui('#odiBrwDis').dialog('open');
            }
        }
        catch (ex) {
            J002_SHWxMsgError('W_DATxBrwPdtDis', ex);
        }
        finally {
            //J003_DISxWaiting();
        }
    }

    function W_DATxBrwFootDis() {
        try {
            //J003_SHWxWaiting();
            var tDisTxt = document.getElementById("otbFootDis").value;
            var tNet = J002_GETcNumber(document.getElementById('otbFCPthTotal').value);  // document.getElementById("otbFCPthB4DisChg").value;
            //var tDateTimeNow = W_GETtTimestamp();
            //var tReturnedValue = showModalDialog('<%=Url.Action("C_CNBrwDis",tW_Controller ) %>' + '?ptDate=' + tDateTimeNow + '&ptNet=' + tNet + '&ptDisTxt=' + tDisTxt, "Passed String", "dialogWidth:355px; dialogHeight:325px; status:no; center:yes;titlebar =0;scroll=no");
            //document.getElementById("otbFootDis").value = tReturnedValue;
            //W_DATxCalFootDis();
            //W_DATxCalFooter();

            if (tNet != '') {
                tW_FlagDis = '2';
                C_SETxValueNet(tNet, tDisTxt); //ส่งข้อมูลไปหน้ากำหนดส่วนลด //*CH 21-01-2013
                $ui('#odiBrwDis').dialog('open');
            }
        }
        catch (ex) {
            J002_SHWxMsgError("W_DATxBrwFootDis", ex);
        }
        finally {
            //J003_DISxWaiting();
        }
    }

    function W_DATxBrowsePdt() {
        try {
            if (W_CHKbHasStrValue('otbFTPthWhTo') == false) {
                return false;
            }
            if (W_CHKbHasStrValue('otbFTPthOther') == false && document.getElementById('ocbFTPthType').selectedIndex == 1) {
                return false;
            }
            if (W_CHKbHasStrValue("otbFTSplCode") == false && document.getElementById('ocbFTPthType').selectedIndex == 0) {
                return false;
            }
//            J003_SHWxWaiting();
//            var tDate = J002_GETtTimeStamp();
//            //   alert(document.URL );
//            var tReturnedValue = showModalDialog('<%=Url.Action("C_CNBrwPdt",tW_Controller ) %>' + '?ptDate=' + tDate + '&ptDocPosition=3', "Passed String", "dialogWidth:850px; dialogHeight:550px; status:no; center:yes;titlebar =0;scroll=no");
//            if (tReturnedValue == null || tReturnedValue == '12233344445555566666677777778888888899999999900000000001223334444555556666667777777888888889999999990000000000') {
//                return false;
//            }

//            document.getElementById('otbPdtCode').value = tReturnedValue;
//            if (document.getElementById('otbPdtCode').value != document.getElementById('otbPdtCodeOld').value) {
//                document.getElementById('otbSeq').value = '';
//            }
//            else {
//                return false;
//            }
//            if (W_GETxPdtDetail() == false) {
//                W_CLRxTextBox();
//                document.getElementById('otbPdtCode').focus();
//                return false;
//            }
//            W_DATxCalPdtNet();               // เพิ่มฟังก์ชั่นคำนวน Fotter
//            document.getElementById('otbPdtCode').focus();

            $ui("#odiBrwPdt").dialog("open"); //*CH 11-01-2013
        }
        catch (ex) {
            J002_SHWxMsgError("W_DATxBrowsePdt ", ex);

        }
        finally {
            //J003_DISxWaiting();
        }
    }

    function W_CHKtHasDocNo(ptDocNo) {
        var tDateTimeNow = J002_GETtTimeStamp();
        var tDocNo = document.getElementById("otbFTPthDocNo").value;
        var tBchCode = document.getElementById("otbFTBchCode").value;
        var tUrl = '<%=Url.Action("C_CHKtHasDocNo",tW_Controller ) %>' + '?ptDocNo=' + tDocNo + '&ptBchCode=' + tBchCode + '&ptDateTimeNow=' + tDateTimeNow;
        oW_xmlHttp = J002_GEToXMLHttpRequest();
        oW_xmlHttp.open("GET", encodeURI(tUrl), false);
        oW_xmlHttp.send(null);
        if (oW_xmlHttp.responseText == "0") {
            return false;
        }
        else {
            return true;
        }

    }
    function W_DATxBrowseDocNo() {
        try {
            //var tDate = J002_GETtTimeStamp();
            //var tCase = 'TCNTPDTTnfHD';
            //var tDocNo = '';
            var tStaChange = W_CHKbHasChangeData();
            if (tStaChange == true) {
                var tDialogResult = J003_SHWxConfirmDialog('<%=ViewData("tMsgSave_Warning") %>', oJ003_DialogType.DialogYesNoCancel);
                switch (tDialogResult) {
                    case oJ003_DialogResult.Yes:
                        var bComplete = W_FRMxSaveDoc(true);
                        if (bComplete == false) {
                            return false;
                        }
                        break;
                    case oJ003_DialogResult.Cancel: return false; break;
                }
            }
            //J004_FRMxFindDoc(tCase, tDate, 'C_BRWoDoc', tW_Controller, 'otbFTPthDocNo', '2');
            //var tOldDocNo = document.getElementById('otbFTPthDocNoOld').value;
            //tDocNo = document.getElementById('otbFTPthDocNo').value;
            //if (tDocNo == null || tDocNo == '' || tDocNo == tOldDocNo) {
            //    document.getElementById('otbFTPthDocNo').value = tOldDocNo;
            //    return false;
            //}
            //var tUrl = '<%=Url.Action("Index",tW_Controller ) %>' + '?ptDocNo=' + tDocNo + '&ptAuthorRead=1';
            //window.location = tUrl;

            //*CH 08-02-2013
            W_PRCxRebingGrid('PdtTnf');
            $ui("#odiBrwDoc").dialog("open");
        }
        catch (ex) {
            J002_SHWxMsgError("W_DATxBrowseDocNo ", ex);

        }
    }

    function otbFTPthDocNo_onkeydown(ptKeyCode, ptWhich) {
        var tKey = ptKeyCode;
        if (ptWhich != null && ptWhich != "") {
            tKey = ptWhich;
        }
        if (tKey == 13) {
            otbFTPthDocNo_onblur();
        }
        return !(tKey == 13);
    }
    function otbFTPthDocNo_onblur() {
        var tOldDocNo = document.getElementById('otbFTPthDocNoOld').value;
        tDocNo = document.getElementById('otbFTPthDocNo').value;
        if (tDocNo == null || tDocNo == '' || tDocNo == tOldDocNo) {
            document.getElementById('otbFTPthDocNo').value = tOldDocNo;
            return false;
        }
        if (W_CHKtHasDocNo(tDocNo) == false) {
            return false;
        }
        var tUrl = '<%=Url.Action("Index",tW_Controller ) %>' + '?ptDocNo=' + tDocNo;
        window.location = tUrl;
    }

    function W_DATxBrowseRefDoc(ptCase) {
        try {
            J003_SHWxWaiting();
            var tdate = J002_GETtTimeStamp();
            J004_FRMxFindDoc(ptCase, tdate, 'C_BRWoDoc', tW_Controller, 'otbFTPthRefExt', '2');
        }
        catch (ex) {
            J002_SHWxMsgError('W_DATxBrowseRefDoc', ex);
        }
        finally {
            J003_DISxWaiting();
        }
    }

    function otbFTPthWhTo_onkeydown(ptKeyCode, ptWhich) {
        var tKey = ptKeyCode;
        if (ptWhich != null && ptWhich == '') {
            tKey = ptWhich;
        }
        if (tKey == 13) {
            document.getElementById('otbFTSplCode').focus();
            document.getElementById('otbFTSplCode').select();
        }
        return !(tKey == 13);
    }
    function otbFTPthWhTo_onblur() {
        if (document.getElementById('otbFTPthWhTo').value == document.getElementById('otbFTPthWhToOld').value) {
            return false;
        }
        //Not Clear product List *CH 07-02-2013
        //if (W_GETtPdtCount() > 0) {
        //    if (confirm('<%=ViewData("tMsgConfirmChangeWah") %>') == false) {
        //        document.getElementById('otbFTPthWhTo').value = document.getElementById('otbFTPthWhToOld').value;
        //        return false;
        //    }
        //    W_CLRxDataDT();
        //}

        //Check WahCode isnot 001 and 002 *CH 07-02-2013
        if (($('#otbFTPthWhTo').val() == '001') || ($('#otbFTPthWhTo').val() == '002') || ($('#otbFTPthWhTo').val() == '')) {
            J002_GETxFieldName(tW_Controller, 'C_GETtFeildName', 'otbFTPthWhTo', 'otbFTPthWhToName', 'otbFTPthWhToOld', 'TCNMWaHouse', 'FTWahCode', 'FTWahName', '<%=ViewData("tMsgDAT_Notfound001") & ViewData("olaFTPthWhTo") %>');
        } else {
            alert('<%=ViewData("tMsgChkWahCode")%>');
            $('#otbFTPthWhTo').val($('#otbFTPthWhToOld').val());
            $('#otbFTPthWhTo').focus();
        return false;
        }
    }

    function otbFTSplCode_onkeydown(ptKeyCode, ptWhich) {
        var tKey = ptKeyCode;
        if (ptWhich != null && ptWhich == '') {
            tKey = ptWhich;
        }
        if (tKey == 13) {
            document.getElementById('otbFTTrnCode').focus();
            document.getElementById('otbFTTrnCode').select();
        }
        return !(tKey == 13);
    }
    function otbFTSplCode_onblur() {
        if (document.getElementById('otbFTSplCode').value == document.getElementById('otbFTSplCodeOld').value) {
            return false;
        }
        if (W_GETtPdtCount() > 0) {
            if (confirm('<%=ViewData("tMsgConfirmChangeSpl") %>') == false) {
                document.getElementById('otbFTSplCode').value = document.getElementById('otbFTSplCodeOld').value;
                return false;
            }
            W_CLRxDataDT();
        }
        J002_GETxFieldName(tW_Controller, 'C_GETtFeildName', 'otbFTSplCode', 'otbFTSplName', 'otbFTSplCodeOld', 'TCNMSpl', 'FTSplCode', 'FTSplName', '<%=ViewData("tMsgDAT_Notfound001") & ViewData("olaSplCode") %>');
        if ($("#otbFTSplCode").val() != '') { W_SETxSupplierVAT(); }
    }
    function W_CLRxDataDT() {
        oW_xmlHttp = J002_GEToXMLHttpRequest();
        var tDataTimeNow = Math.random();
        var tUrl = '<%=Url.Action("C_CLRxDataDT",tW_Controller) %>' + "?ptDateTimeNow=" + tDataTimeNow;
        oW_xmlHttp.open("GET", encodeURI(tUrl), false);
        oW_xmlHttp.send(null);
        W_DATxCalFootDis();
        W_DATxCalFooter();
        W_SETxRebindGrid();
        W_CLRxTextBox();
    }

    function W_SETxComboBox(ptComboId, ptStrCombo) {
        try {
            var oArr = ptStrCombo.split(",");
            for (i = 0; i < oArr.length; i++) {
                oStr_Array = oArr[i].split("|");
                var oNewOption = document.createElement('option');
                oNewOption.value = oStr_Array[0];
                if (oStr_Array.length > 1) {
                    oNewOption.text = oStr_Array[1];
                }
                if (navigator.appName == 'Microsoft Internet Explorer') { //IE
                    document.getElementById(ptComboId).add(oNewOption); // IE only
                } else { //firefox google
                    document.getElementById(ptComboId).add(oNewOption, null); // standards compliant; doesn't work in IE
                }
            }
        }
        catch (ex) {
            J002_SHWxMsgError("W_SETxComboBox", ex);
        }
    }

    function W_FRMxFindDoc() {
        try {
            J003_SHWxWaiting();
            W_DATxBrowseDocNo();
        }
        catch (ex) {
            J002_SHWxMsgError("W_FRMxFindDoc ", ex);
        }
        finally {
            J003_DISxWaiting();
        }
    }

    function W_SETxStausRemark() {
        var nIdex = document.getElementById('ocbFTPthType').selectedIndex;
        if (nIdex == 0) {
            J002_SETxReadOnly('otbFTPthOther', true)
            J002_SETxReadOnly('otbFTSplCode', false)
            document.getElementById('otbFTPthOther').value = "";
        }
        else {
            J002_SETxReadOnly('otbFTPthOther', false)
            J002_SETxReadOnly('otbFTSplCode', true)
            document.getElementById('otbFTSplCode').value = "";
            document.getElementById('otbFTSplCodeOld').value = "";
            document.getElementById('otbFTSplName').value = "";
        }
    }


    function W_GETxPdtLastUpdateToGrid() {
        try {
            if (W_CHKbPostOrDelStatus() == true) {
                alert('<%=ViewData("olatMsgNoEdit")%>');
                return false
            }
            if (W_CHKbHasStrValue('otbFTPthWhTo') == false) {
                alert('<%=ViewData("tMsgWahCode")%>');
                document.getElementById('otbFTPthWhTo').focus();
                return false;
            }
            if (W_CHKbHasStrValue('otbFTPthOther') == false && document.getElementById('ocbFTPthType').selectedIndex == 1) {
                alert('<%=ViewData("tMsgWahCode")%>');
                document.getElementById('otbFTPthOther').focus();
                return false;
            }
            if (W_CHKbHasStrValue("otbFTSplCode") == false && document.getElementById('ocbFTPthType').selectedIndex == 0) {
                alert('<%=ViewData("tMsgWahCode")%>');
                document.getElementById('otbFTSplCode').focus();
                return false;
            }

            var dStartDate = document.getElementById("odtStartUpdatePdt").value;
            var dEndDate = document.getElementById("odtEndUpdatePdt").value;
            //var oArray = dStartDate.split('/');
            var tDate = dStartDate.substring(0, 2);
            var tMonth = dStartDate.substring(3, 5);
            var tYear = dStartDate.substring(6, 10);

            dStartDate = tYear + '/' + tMonth + '/' + tDate;

            var tDate = dEndDate.substring(0, 2);
            var tMonth = dEndDate.substring(3, 5);
            var tYear = dEndDate.substring(6, 10);

            dEndDate = tYear + '/' + tMonth + '/' + tDate;

            if (dStartDate > dEndDate) {
                alert('<%=ViewData("tMsgFromMoreThanTo") %>');
                return false;
            }

            var nCountPdt = W_GETtPdtCount();
            if (nCountPdt > 0) {
                var bConfirm = confirm('<%=ViewData("tMsgClearData")%>');
                if (bConfirm == true) {
                    var oXmlHttp = J002_GEToXMLHttpRequest();
                    var tDate = J002_GETtTimeStamp();
                    var tAction = '<%=Url.Action("C_DATxClearGrid",tW_Controller ) %>' + '?ptDate=' + tDate;
                    oXmlHttp.open('GET', encodeURI(tAction), false);
                    oXmlHttp.send(null);
                }
            }

            oW_xmlHttp = J002_GEToXMLHttpRequest();
            var tDateTimeNow = J002_GETtTimeStamp();

            var tUrl = '<%=Url.Action("C_LODxPdtLastUpdate",tW_Controller  ) %>' + '?ptStartDate=' + dStartDate + '&ptEndDate=' + dEndDate + '&ptDate' + tDateTimeNow;
            oW_xmlHttp.open('GET', encodeURI(tUrl), false);
            oW_xmlHttp.send(null);

            var tReturn = oW_xmlHttp.responseText;
            if (tReturn == "|") {
                return false;
            }

            if (tReturn != '|') {
                var aArray = tReturn.split('|');
                if (aArray[0] != null && aArray[0] != "") {
                    alert(aArray[0]);
                    return false;
                }

                document.getElementById('otbFCPthTotal').value = aArray[1];
                document.getElementById('otbFCPthAftDisChg').value = aArray[1];
                document.getElementById('otbFCPthB4DisChg').value = aArray[2];

                W_SETxRebindGrid();
                W_DATxCalFootDis();
                W_DATxCalFooter();
                W_GETxPdtSrnLastUpdateToGrid();//*CH 07-02-2013
                return true;
            }

        }
        catch (ex) {
            J002_SHWxMsgError("W_GETxPdtLastUpdateToGrid ", ex);
        }
    }
    function W_GETxPdtSrnLastUpdateToGrid() {//*CH 07-02-2013 สินค้าที่กำหนด Serial
        oW_xmlHttp = J002_GEToXMLHttpRequest();
        var tDateTimeNow = J002_GETtTimeStamp();
        var tUrl = '<%=Url.Action("C_LODtPdtSrnLastUpdate",tW_Controller) %>' + '?ptDate' + tDateTimeNow;
        oW_xmlHttp.open('GET', encodeURI(tUrl), false);
        oW_xmlHttp.send(null);

        var tReturn = oW_xmlHttp.responseText;
        if (tReturn == "|") {
            return false;
        }

        if (tReturn != '|') {
            var aArray = tReturn.split('|');
            if (aArray[0] != null && aArray[0] != "") {
                alert(aArray[0]);
                return false;
            }
            for (nI = 1; nI < aArray.length; nI++) {
                var aPdtVal = aArray[nI].split(',');
                if (aPdtVal[0] != $('#otbPdtCodeOld').val()) {
                    $('#otbPdtCode').val(aPdtVal[0]);
                    //$('#otbPdtCodeOld').val(aPdtVal[0]);
                    $('#otbSetPriceRte').val(aPdtVal[1]);
                    otbPdtCode_onblur();
                }
            }
            return true;
        }
    }
    function W_SETbStaDocActive() {
        var nStaDocAct = '<%=Model.FNPthStaDocAct%>';
        if (nStaDocAct == '1') {
            document.getElementById('ockFNPthStaDocAct').checked = true;
        }
        else {
            document.getElementById('ockFNPthStaDocAct').checked = false;
        }
    }
    function W_DELxPdtItem() {
        var oEletent = document.getElementById('otbSeq');
        var tDateTimeNow = J002_GETtTimeStamp();
        var tUrl = '<%=Url.Action("C_DELtPdtItem",tW_Controller) %>' + '?ptSeq=' + oEletent.value;
        tUrl += '&ptDateTimeNow=' + tDateTimeNow;
        oW_xmlHttp = J002_GEToXMLHttpRequest();
        oW_xmlHttp.open("GET", encodeURI(tUrl), false);
        oW_xmlHttp.send(null);
        if (oW_xmlHttp.status == 200) {
            if (oW_xmlHttp.responseText != -1) {
                var oArr = oW_xmlHttp.responseText.split('|');
                var cTotal = oArr[0];
                var cNonVat = oArr[1];
                document.getElementById("otbFCPthTotal").value = cTotal;
                document.getElementById("otbFCPthNonVat").value = cNonVat;

            }
        }
        W_SETxRebindGrid();
        W_CLRxTextBox();
        document.getElementById("otbPdtCode").focus();
        W_DATxCalFootDis();
        W_DATxCalFooter();
    }
    function W_DATxAddPdtToGrid() {
        try {
            var tPdtCode = document.getElementById("otbPdtCode").value;
            var tQty = document.getElementById("otbPdtQty").value;
            var tUnitCode = document.getElementById("otbUnitCode").value;
            var tUnitName = document.getElementById("otbUnitName").value;
            var tFactor = document.getElementById("otbUnitFactor").value;
            var tSetPrice = document.getElementById("otbSetPrice").value;
            var tSetPriceRte = document.getElementById("otbSetPriceRte").value;
            var tDisText = document.getElementById("otbDisTxt").value;
            var tDisTextRte = document.getElementById("otbDisTxtRte").value;
            var tDis = document.getElementById("otbDis").value;
            var tDisRte = document.getElementById("otbDisRte").value;
            var tNet = document.getElementById("otbNet").value;
            var tPdtNoDis = document.getElementById("otbFTPdtNoDis").value;
            var tSerialList = $("#otbSerialList").val();
            tPdtCode = J002_STRttrim(tPdtCode);
            if (tPdtCode != null && tPdtCode != "") {
                var tDateTimeNow = J002_GETtTimeStamp();
                var tAction = '';
                var tParamSeq = '';
                var tSeq = document.getElementById("otbSeq").value;
                var tStaEdit = document.getElementById("otbStaEdit").value;
                var bAutoTab = document.getElementById("ockSendTab").checked;
                var tPdtcode = document.getElementById('otbPdtCode').value;
                if (J002_STRttrim(tPdtcode) == tW_PdtCodeBeFore && tSeq != '') {// && bAutoTab == true) {//edit
                    tAction = '<%=Url.Action("C_DATxEditItem",tW_Controller) %>';
                    tParamSeq = '&ptSeq=' + tSeq;
                }
                else {
                    tAction = '<%=Url.Action("C_DATxAddItem",tW_Controller) %>';
                }
                var tUrl = ''
                tUrl += tAction;
                tUrl += '?ptPdtcode=' + tPdtCode;
                tUrl += tParamSeq;
                tUrl += '&ptQty=' + tQty;
                tUrl += '&ptUnitCode=' + tUnitCode;
                tUrl += '&ptUnitName=' + tUnitName;
                tUrl += '&ptFactor=' + tFactor;
                tUrl += '&ptSetPrice=' + tSetPrice;
                tUrl += '&ptSetPriceRte=' + tSetPriceRte;
                tUrl += '&ptDisText=' + tDisText;
                tUrl += '&ptDisTextRte=' + tDisTextRte;
                tUrl += '&ptDis=' + tDis;
                tUrl += '&ptDisRte=' + tDisRte;
                tUrl += '&ptNet=' + tNet;
                tUrl += '&ptPdtNoDis=' + tPdtNoDis;
                tUrl += '&ptSerialList=' + tSerialList; //'*CH 07-02-2013
                tUrl += '&ptDateTimeNow=' + tDateTimeNow;
                oW_xmlHttp = J002_GEToXMLHttpRequest();
                oW_xmlHttp.open("GET", encodeURI(tUrl), false);
                oW_xmlHttp.onreadystatechange = W_SETxHandleStateChangeSetTotal;
                oW_xmlHttp.send(null);
                W_SETxRebindGrid();
                if (tStaEdit == '1') {
                    document.getElementById("otbStaEdit").value = '';
                    document.getElementById("ocmAdd").value = 'Add';
                }
            }
            W_CLRxTextBox();
            W_DATxCalFootDis();
            W_DATxCalFooter();
        }
        catch (ex) {
            J002_SHWxMsgError("W_DATxAddPdtToGrid", ex);
        }

    }

    function W_SETxHandleStateChangeSetTotal() {
        try {
            if (oW_xmlHttp.readyState == 4) {
                if (oW_xmlHttp.status == 200) {
                    if (oW_xmlHttp.responseText != -1) {
                        var oArr = oW_xmlHttp.responseText.split('|');
                        var cTotal = oArr[0];
                        var cNonVat = oArr[1];
                        var cB4DisChg = oArr[2];
                        document.getElementById("otbFCPthTotal").value = cTotal;
                        document.getElementById("otbFCPthNonVat").value = cNonVat;
                        document.getElementById("otbFCPthB4DisChg").value = cB4DisChg;
                    }
                }
            }
        }
        catch (ex) {
            J002_SHWxMsgError("W_SETxHandleStateChangeSetTotal", ex);
        }

    }


    function ocmAdd_onkeydown() {
        try {
            if (window.event.keyCode == 13) {
                W_DATxAddPdtToGrid();
                document.getElementById("otbPdtCode").focus();
                return !(window.event && window.event.keyCode == 13);
            }
        }
        catch (ex) {
            J002_SHWxMsgError("ocmAdd_onkeydown", ex);
        }

    }

    function ocmAdd_onClick() {
        try {
            W_DATxAddPdtToGrid();
            document.getElementById("otbPdtCode").focus();
        }
        catch (ex) {
            J002_SHWxMsgError("ocmAdd_onClick", ex);
        }

    }


    function W_DATxCalFootDis() {
        try {
            var cRteRate = J002_GETcNumber(document.getElementById('otbFCPthRteFac').value);
            var tInputDisTxt = document.getElementById("otbFootDis").value; var cRteRate = J002_GETcNumber(document.getElementById('otbFCPthRteFac').value);
            var cTotal = J002_GETcNumber(document.getElementById("otbFCPthTotal").value);
            var oReturn = J002_DATxCalDis(cTotal, tInputDisTxt, 1, true);
            document.getElementById("otbFCPthDis").value = oReturn.cDis;
        }
        catch (ex) {
            J002_SHWxMsgError("W_DATxCalFootDis", ex);
        }

    }

    function W_DATxCalFooter() {
        try {
            var cPntLength = nW_DecLength; // จุดทศนิยม 
            var cB4DisChg = J002_GETcNumber(document.getElementById("otbFCPthB4DisChg").value);
            var cNonVat = J002_GETcNumber(document.getElementById("otbFCPthNonVat").value);
            var cTotal = J002_GETcNumber(document.getElementById("otbFCPthTotal").value);
            var cDis;
            var cGndAE = J002_GETcNumber(document.getElementById("otbFCPthGndAE").value);
            var cAftDisChg = J002_GETcNumber(document.getElementById("otbFCPthAftDisChg").value);
            var cVat = J002_GETcNumber(document.getElementById("otbFCPthVat").value);
            var cVatable = J002_GETcNumber(document.getElementById("otbFCPthVatable").value);
            var cVatRate = J002_GETcNumber(document.getElementById("otbVatRate").value);
            var cFTXohVATInOrEx = J002_GETcNumber(document.getElementById("ocbFTPthVATInOrEx").value);
            var cGrand;

            cDis = document.getElementById("otbFCPthDis").value;
            if (cB4DisChg == null || cB4DisChg == '') { cB4DisChg = 0.0; }
            if (cVatable == null || cVatable == '') { cVatable = 0.0; }
            if (cNonVat == null || cNonVat == '') { cNonVat = 0.0; }
            if (cTotal == null || cTotal == '') { cTotal = 0.0; }
            if (cDis == null || cDis == '') { cDis = 0.0; }
            if (cGndAE == null || cGndAE == '') { cGndAE = 0.0; }
            if (cAftDisChg == null || cAftDisChg == '') { cAftDisChg = 0.0; }
            if (cVat == null || cVat == '') { cVat = 0.0; }
            if (cVatRate == null || cVatRate == '') {
                cVatRate = 0; //ถ้าไม่มีค่าให้ default VatRate=7 
            }
            else {
                cVatRate = Number(cVatRate); //แปลงค่าเป็นแบบตัวเลข
            }
            var tDateTimeNow = J002_GETtTimeStamp();
            var tUrl = '<%=Url.Action("C_DATtCalFooter",tW_Controller) %>';
            tUrl += "?pcDis=" + cDis;
            tUrl += "&pcChg=" + 0;
            tUrl += "&pcDis=" + cDis;
            tUrl += "&ptDisChgTxt=" + cDis;
            tUrl += "&pcAE=" + cGndAE;
            tUrl += "&pcVatRate=" + cVatRate;
            tUrl += "&ptNotCheckNoDis=1";
            tUrl += "&ptDateTimeNow=" + tDateTimeNow;
            tUrl += "&ptVatInOrEx=" + cFTXohVATInOrEx;
            oXmlHttp = J002_GEToXMLHttpRequest();
            oXmlHttp.open("GET", encodeURI(tUrl), false);
            oXmlHttp.send(null);
            if (oXmlHttp.status != 200) {
                alert("Error" + oXmlHttp.status + "\n" + oXmlHttp.responseText);
                return false;
            }
            var tResult = oXmlHttp.responseText;
            var aArr = tResult.split("|")
            if (aArr[0] != null && aArr[0] != "") {
                alert(aArr[0]);
                return false;
            }
            cTotal = aArr[1];
            cNonVat = aArr[2];
            cB4DisChg = aArr[3];
            cAftDisChg = aArr[4];
            cVat = aArr[5];
            cVatable = aArr[6];
            cGrand = aArr[7];

            cTotal = J002_DECcRound(cTotal, cPntLength, true);
            cDis = J002_DECcRound(cDis, cPntLength, true);
            cGndAE = J002_DECcRound(cGndAE, cPntLength, true);
            cAftDisChg = J002_DECcRound(cAftDisChg, cPntLength, true);
            cVat = J002_DECcRound(cVat, cPntLength, true);
            cVatRate = J002_DECcRound(cVatRate, cPntLength, true);
            cGrand = J002_DECcRound(cGrand, cPntLength, true);
            document.getElementById("otbFCPthB4DisChg").value = cB4DisChg;
            document.getElementById("otbFCPthVatable").value = cVatable;
            document.getElementById("otbFCPthTotal").value = cTotal;
            document.getElementById("otbFCPthDis").value = cDis;
            document.getElementById("otbFCPthGndAE").value = cGndAE;
            document.getElementById("otbFCPthAftDisChg").value = cAftDisChg;
            document.getElementById("otbFCPthVat").value = cVat;
            document.getElementById("otbVatRate").value = cVatRate;
            document.getElementById("otbFCPthGrand").value = cGrand;
            var tGndTxt = W_GETtGndTxt();
            document.getElementById("olaGndTxt").innerHTML = tGndTxt;
        }
        catch (ex) {
            J002_SHWxMsgError("W_DATxCalFooter", ex);
        }

    }

    function W_GETtGndTxt() {
        try {

            oW_xmlHttp = J002_GEToXMLHttpRequest();
            var tDataTimeNow = J002_GETtTimeStamp();
            var tGrand = $("#otbFCPthGrand").val();
            var tUrl = '<%=Url.Action("C_GETtMoneyText",tW_Controller ) %>' + '?ptDate=' + tDataTimeNow + '&ptMoney=' + tGrand;
            oW_xmlHttp.open("GET", encodeURI(tUrl), false);
            oW_xmlHttp.send(null);
            return oW_xmlHttp.responseText;
        }
        catch (ex) {
            J002_SHWxMsgError("W_GETtGndTxt", ex);
        }

    }

    function W_SETxRebindGrid() {
        try {
            // rebind the related grid
            var oGrid = $('#ogdGridDT').data('tGrid');
            oGrid.rebind();
            W_CLRxTextBox();
        }

        catch (ex) {
            J002_SHWxMsgError("W_SETxRebindGrid ", ex);
        }
    }

    function W_GETxPdtOnRowSelected(e) {
        try {
            if (e.row != null) {
                if (e.row.cells.length < 2) { return 0; }
                var tSeq = e.row.cells[0].innerHTML;
                var tPdtCode = e.row.cells[1].innerHTML;
                tW_PdtCodeBeFore = tPdtCode;
                var tPdtName = e.row.cells[2].innerHTML;
                var tUnitName = e.row.cells[3].innerHTML;
                var tQty = e.row.cells[4].innerHTML;
                var tSetPriceRte = e.row.cells[5].innerHTML;
                var tDisTxtRte = e.row.cells[6].innerHTML;
                var tNet = e.row.cells[7].innerHTML;
                var tUnitCode = e.row.cells[8].innerHTML;
                var tUnitFactor = e.row.cells[9].innerHTML;
                var tDis = e.row.cells[10].innerHTML;
                var tSetPrice = e.row.cells[11].innerHTML;
                var tDisTxt = e.row.cells[12].innerHTML;
                var tDocNo = document.getElementById("otbFTPthDocNo").value;
                var tPdtNoDis = e.row.cells[14].innerHTML;
                var tDisRte = e.row.cells[15].innerHTML;

                document.getElementById('otbSeq').value = tSeq - 1;
                document.getElementById('ocmAdd').value = 'Edit';
                document.getElementById('otbStaEdit').value = "1";
                document.getElementById('otbPdtCode').value = tPdtCode;
                document.getElementById('otbPdtCodeOld').value = tPdtCode;
                document.getElementById('otbPdtSel').value = tPdtCode;
                document.getElementById('otbPdtName').value = tPdtName;
                document.getElementById('otbUnitCode').value = tUnitCode;
                document.getElementById('otbUnitName').value = tUnitName;
                document.getElementById('otbUnitFactor').value = tUnitFactor;
                document.getElementById('otbPdtQty').value = tQty;
                document.getElementById('otbSetPriceRte').value = tSetPriceRte;
                document.getElementById('otbDisTxtRte').value = tDisTxtRte.replace('&nbsp;', '');
                document.getElementById('otbDis').value = tDis;
                document.getElementById('otbDisRte').value = tDisRte;
                document.getElementById('otbNet').value = tNet;
                document.getElementById('otbSetPrice').value = tSetPrice;
                document.getElementById('otbDisTxt').value = tDisTxt;
                document.getElementById('otbFTPdtNoDis').value = tPdtNoDis;
                document.getElementById('otbPdtCode').focus();

                W_GETxUnitCombo();

            }
        }
        catch (ex) {
            J002_SHWxMsgError("W_GETxPdtOnRowSelected", ex);
        }

    }



    function W_GETxUnitCombo() {
        try {
            oW_xmlHttp = J002_GEToXMLHttpRequest();
            var tDataTimeNow = J002_GETtTimeStamp();
            var tModelPdt = $("#otbPdtCode").val();

            var tUrl = '<%=Url.Action("C_GEToUnitDetail",tW_Controller ) %>' + "?ptPdtCode=" + tModelPdt + "&ptDateTimeNow=" + tDataTimeNow;
            oW_xmlHttp.open("GET", encodeURI(tUrl), false);
            oW_xmlHttp.send(null);

            var tValueFis = oW_xmlHttp.responseText;
            var aValue = tValueFis.split("|");

            if (aValue[0] != null && aValue[0] != "") {
                alert(aValue[0]);
                return false;
            }
            W_CLRxPdtUnitCombo()

            var tUnitDetail = '';
            var aUnitName = '';
            var i = 0;
            var nSelectIndex = 0;



            var tUnitCode = document.getElementById("otbUnitCode").value;
            var tUnitFactor = document.getElementById("otbUnitFactor").value;

            for (i = 1; i < 4; i++) {
                tUnitDetail = aValue[i];

                if (tUnitDetail != null && tUnitDetail != '') {
                    aUnitName = tUnitDetail.split(",");
                    var oNewOption = document.createElement('option');
                    oNewOption.value = aUnitName[0];
                    oNewOption.text = aUnitName[1] + '|' + aUnitName[2];
                    if (navigator.appName == 'Microsoft Internet Explorer') {
                        document.getElementById("ocbPdtUnit").add(oNewOption);
                    }
                    else {
                        document.getElementById("ocbPdtUnit").add(oNewOption, null);
                    }


                    //ตรวจสอบว่าถ้าเป็นหน่วยที่ทำการเลือก ให้เก็บค่า Index ไว้ทำการแสดงใน combo
                    if (tUnitCode == aUnitName[0] && tUnitFactor == aUnitName[2]) {
                        nSelectIndex = document.getElementById("ocbPdtUnit").options.length - 1;
                    }
                    var tStr = document.getElementById("ocbPdtUnit").options.item(nSelectIndex).text;
                    var oStr_Array = tStr.split("|");
                    document.getElementById("ocbPdtUnit").selectedIndex = nSelectIndex;
                    document.getElementById("otbUnitCode").value = document.getElementById("ocbPdtUnit").value;
                    document.getElementById("otbUnitName").value = oStr_Array[0];
                    document.getElementById("otbUnitFactor").value = oStr_Array[1];
                }
            }
        }
        catch (ex) {
            J002_SHWxMsgError("W_GETxUnitCombo", ex);
        }
    }

    function W_SETxComboVATInOrEX() {
        if ('<%=Model.FTPthVATInOrEx %>' == '2') {
            J011_SETxComboSelected('ocbFTPthVATInOrEx', '2')
        }
    }
    function W_FRMxCloseDoc(ptFlag) {
        var tStaChange = W_CHKbHasChangeData();
        if (tStaChange == true) {
            var tDialogResult = J003_SHWxConfirmDialog('<%=ViewData("tMsgSave_Warning") %>', oJ003_DialogType.DialogYesNoCancel);
            switch (tDialogResult) {
                case oJ003_DialogResult.Yes:
                    var bComplete = W_FRMxSaveDoc(true);
                    if (bComplete == false) {
                        return false;
                    }
                    break;
                case oJ003_DialogResult.Cancel: return false; break;
            }
        }
        //var tUrl = '<%=Url.Action("Index","cvcCNPanal", New With {.ptMenuGrpName = "Pdt"}) %>';
        //*CH 1 ไปรายการโปรด ; Not1 ไปหน้าซื้อ
        var tUrl;
        var tDataTimeNow = J002_GETtTimeStamp();
        if (ptFlag == '1') {
            tUrl = '<%=Url.Action("Index","Home") %>' + '?ptDate=' + tDataTimeNow;
        } else {
            tUrl = '<%=Url.Action("Index","cvcCNPanal") %>?ptMenuGrpName=Pdt';
        }
        window.location = tUrl;
    }
    function oimBrwSplCode_onclick() {
        if (document.getElementById('otbFTSplCode').readOnly == true) {
            return false;
        }
        //W_DATxBrowseMaster('otbFTSplCode', 'otbFTSplName', 'SplCode');
        //if (W_GETtPdtCount() > 0) {
        //    if (confirm('<%=ViewData("tMsgConfirmChangeSpl") %>') == false) {
        //        document.getElementById('otbFTSplCode').value = document.getElementById('otbFTSplCodeOld').value;
        //        J002_GETxFieldName(tW_Controller, 'C_GETtFeildName', 'otbFTSplCode', 'otbFTSplName', 'otbFTSplCodeOld', 'TCNMSpl', 'FTSplCode', 'FTSplName', '<%=ViewData("tMsgDAT_Notfound001") & ViewData("olaSplCode") %>');
        //        return false;
        //    }
        //    W_CLRxDataDT();
        //}
        //if (document.getElementById('otbFTSplCode').value != document.getElementById('otbFTSplCodeOld').value) {
        //    document.getElementById('otbFTSplCodeOld').value = document.getElementById('otbFTSplCode').value;
        //    W_SETxSupplierVAT();
        //}
        W_SHWxOpenMasterDialog('otbFTSplCode', 'otbFTSplName', 'Spl');
    }
    function W_SETxSupplierVAT() {
        try {
            var oXmlHttp = J002_GEToXMLHttpRequest();
            var tUrl = '';
            tUrl = '<%=Url.Action("C_GETtSupplierVAT",tW_ConTroller) %>';
            tUrl += '?ptSplcode=' + document.getElementById('otbFTSplCode').value;
            tUrl += '&ptRandom=' + Math.random();
            oXmlHttp.open('get', encodeURI(tUrl), false);
            oXmlHttp.send(null);
            if (oXmlHttp.status != 200) {
                alert('Error:' + oXmlHttp.status);
            }
            var tResult = oXmlHttp.responseText;
            var aArr = tResult.split("|")
            if (aArr[0] != null && aArr[0] != '') {
                alert(aArr[0]);
            }
            var tVatInOrEx = aArr[1];
            var tVatRate = aArr[2];
            if (tVatInOrEx != '2') {//Include
                document.getElementById('ocbFTPthVATInOrEx').selectedIndex = 0;
            }
            else {
                document.getElementById('ocbFTPthVATInOrEx').selectedIndex = 1;
            }
            document.getElementById('otbVatRate').value = tVatRate;
        }
        catch (ex) {
            J002_SHWxMsgError('W_SETxSupplierVAT', ex);
        }
    }
    function otbFTTrnCode_onkeydown(ptKeyCode, ptWhich) {
        var tKey = ptKeyCode;
        if (ptWhich != null && ptWhich == '') {
            tKey = ptWhich;
        }
        if (tKey == 13) {
            J002_GETxFieldName(tW_Controller, 'C_GETtFeildName', 'otbFTTrnCode', 'otbFTTrnName', 'otbFTTrnCodeOld', 'TCNMTnfReason', 'FTTrnCode', 'FTTrnName', '<%=ViewData("tMsgDAT_Notfound001") & ViewData("olaReason") %>');
            document.getElementById('otbPdtCode').focus();
        }
        return !(tKey == 13);
    }
    function otbFTTrnCode_onblur() {
        J002_GETxFieldName(tW_Controller, 'C_GETtFeildName', 'otbFTTrnCode', 'otbFTTrnName', 'otbFTTrnCodeOld', 'TCNMTnfReason', 'FTTrnCode', 'FTTrnName', '<%=ViewData("tMsgDAT_Notfound001") & ViewData("olaReason") %>');
    }
    function otbFTRteCode_onkeydown(ptKeyCode, ptWhich) {
        var tKey = ptKeyCode;
        if (ptWhich != null && ptWhich == '') {
            tKey = ptWhich;
        }
        if (tKey == 13) {
            document.getElementById('ockFNPthStaDocAct').focus();
        }
        return !(window.event && window.event.keycode == 13);
    }
    function otbFTRteCode_onblur() {
        if (document.getElementById('otbFTRteCode').value == document.getElementById('otbFTRteCodeOld').value) {
            return false;
        }
        W_GETtRteDetail();
    }
    function otbPdtQty_onkeydown(ptKeyCode, ptWhich) {
        var tKey = ptKeyCode;
        if (ptWhich != null && ptWhich != '') {
            tKey = ptWhich;
        }
        if (W_CHKbHasStrValue("otbPdtCode") == false) {
            return false;
        }
        if (tKey == 13) {
            document.getElementById("otbSetPriceRte").select();
            return !(tKey == 13);
        }
    }
    function otbPdtQty_onblur() {
        if (J002_CHKbIsBlankValue('otbPdtCode') == true) {
            return false;
        }
        J002_CHKbNumOutOfLength(document.getElementById('otbPdtQty'), 1, null, true);
        W_DATxCalPdtNet();
    }
    function oimBrwWahCode_onclick() {
        if (document.getElementById('otbFTPthWhTo').readOnly == true) {
            return false;
        }
        //W_DATxBrowseMaster('otbFTPthWhTo', 'otbFTPthWhToName', 'WahCode');
        //if (W_GETtPdtCount() > 0) {
        //    if (confirm('<%=ViewData("tMsgConfirmChangeWah") %>') == false) {
        //        document.getElementById('otbFTPthWhTo').value = document.getElementById('otbFTPthWhToOld').value;
        //        J002_GETxFieldName(tW_Controller, 'C_GETtFeildName', 'otbFTPthWhTo', 'otbFTPthWhToName', 'otbFTPthWhToOld', 'TCNMWaHouse', 'FTWahCode', 'FTWahName', '<%=ViewData("tMsgDAT_Notfound001") & ViewData("olaFTPthWhTo") %>');
        //        return false;
        //    }
        //    W_CLRxDataDT();
        //}
        //document.getElementById('otbFTPthWhToOld').value = document.getElementById('otbFTPthWhTo').value;
        W_SHWxOpenMasterDialog('otbFTPthWhTo', 'otbFTPthWhToName', 'Wah'); //*CH 07-02-2013
    }
    function oimBrwTrnCode_onclick() {
        if (document.getElementById('otbFTTrnCode').readOnly == true) {
            return false;
        }
        //W_DATxBrowseMaster('otbFTTrnCode', 'otbFTTrnName', 'TrnCode');
        W_SHWxOpenMasterDialog('otbFTTrnCode', 'otbFTTrnName', 'Trn'); //*CH 07-02-2013
    }
    function W_FRMxDelDoc() {
        try {
            J003_SHWxWaiting();
            var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Delete%>';
            var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
            var tPwdAllow = '<%=Session("bVB_CNPwdAllow") %>';
            var bAllow = J002_CHKtCheckAuthorize(tW_Menu, tAuthor, tPwdAllow, tMsgNotAuthorize);
            if (bAllow == false) {
                return false;
            }
            if (nW_StaDoc == 0) {
                alert('<%=ViewData("olatMsgNoDelNoSave") %>');
                return 0;
            }
            if (nW_StaDocCancel == 1) {
                alert('<%=ViewData("olatMsgNoDelCancel") %>');
                return 0;
            }
            if (nW_StaPrcDoc == 1) {
                alert('<%=ViewData("olatMsgNoDelApp") %>');
                return 0;
            }
            if (!confirm('<%=ViewData("tMsgConfirmDelete") %>')) {
                return false;
            }

            var oDoc = document.getElementById('otbFTPthDocNo');
            var oBchcode = document.getElementById('otbFTBchCode');
            var oDocType = document.getElementById('otbFTPthDocType');
            var tDocNo = oDoc.value;
            var aError = new Array();
            if (tDocNo != '') {
                var tdate = Math.random();
                var tReturn = J004_FRMxDelDoc(tdate, 'C_FRMxDelDoc', tW_Controller, 'otbFTPthDocNo', oDocType.value, oBchcode.value, aError);
                if (tReturn == '0') {
                    window.location = '<%=Url.Action("Index",tW_Controller) %>' + '?ptAuthorRead=1';
                }
                if (aError[0] != null && aError[0] != '') {
                    alert(aError[0]);
                }
            }
        }
        catch (ex) {
            J002_SHWxMsgError('W_FRMxDelDoc', ex);
        }
        finally {
            J003_DISxWaiting();
        }
    }

    function W_FRMxCancelDoc() {
        try {
            J003_SHWxWaiting();
            if (nW_StaDoc == 0) {
                alert('<%=ViewData("olatMsgNoCancelNoSave")%>');
                return 0;
            }
            if (nW_StaDocCancel == 1) {
                alert('<%=ViewData("olatMsgNoCancelCancel")%>');
                return 0;
            }
            if (nW_StaPrcDoc == 1) {
                alert('<%=ViewData("olatMsgNoCancelApp")%>');
                return 0;
            }
            if (!confirm('<%=ViewData("tMsgConfirmCancel") %>')) {
                return false;
            }
            var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Cancel%>';
            var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
            var tPwdAllow = '<%=Session("bVB_CNPwdAllow") %>';
            var bAllow = J002_CHKtCheckAuthorize(tW_Menu, tAuthor, tPwdAllow, tMsgNotAuthorize);
            if (bAllow == false) {
                return false;
            }
            var oBchcode = document.getElementById('otbFTBchCode');
            var oDocType = document.getElementById('otbFTPthDocType');
            var tdate = Math.random();
            var aError = new Array();
            var tReturn = J004_FRMxCancelDoc(tdate, 'C_FRMxCancelDoc', tW_Controller, 'otbFTPthDocNo', oDocType.value, oBchcode.value, aError);
            if (tReturn == '0') {
                nW_StaDocCancel = 1;
                nW_StaDoc = 3;
                W_SHWxDocStatus('odiNoneApprove', 'odiApprove', 'odiCancel');
                W_CLRxTextBox();
                W_SETxDisableObjAll(true);
                window.location = '<%=Url.Action("Index",tW_Controller) %>';
            }
            if (aError[0] != null && aError[0] != '') {
                alert(aError[0]);
            }
        }
        catch (ex) {
            J002_SHWxMsgError('W_FRMxCancelDoc', ex)
        }
        finally {
            J003_DISxWaiting();
        }
    }
    function W_FRMxPostDoc() {
        try {
            J003_SHWxWaiting();
            var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Approve%>';
            var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
            var tPwdAllow = '<%=Session("bVB_CNPwdAllow") %>';
            var aAlwUsrCode = new Array();
            var bAllow = J002_CHKtCheckAuthorize(tW_Menu, tAuthor, tPwdAllow, tMsgNotAuthorize, aAlwUsrCode);
            var tApvCode = aAlwUsrCode[0];
            if (tApvCode == null || tApvCode == '') {
                tApvCode = '<%=Model.FTUsrCode %>';
            }
            if (bAllow == false) {
                return false;
            }
            if (nW_StaDoc == 0) {
                alert('<%=ViewData("olatMsgNoAppNoSave")%>');
                return 0;
            }
            if (nW_StaDocCancel == 1) {
                alert('<%=ViewData("olatMsgNoAppCancel")%>');
                return 0;
            }
            if (nW_StaPrcDoc == 1) {
                alert('<%=ViewData("olatMsgNoAppApp")%>');
                return 0;
            }
            if ('<%=Model.FNPthStaDocAct %>' != '1') {
                alert('<%=ViewData("tMsgNoAppStaDocDonotAct")%>');
                return 0;
            }

            var tStaChange = W_CHKbHasChangeData();
            if (tStaChange == true) {
                var tDialogResult = J003_SHWxConfirmDialog('<%=ViewData("tMsgSave_Warning") %>', oJ003_DialogType.DialogYesNoCancel);
                switch (tDialogResult) {
                    case oJ003_DialogResult.Yes: C_FRMxSaveDoc(true); break;
                    case oJ003_DialogResult.Cancel: return false; break;
                }
            }
            if (!confirm('<%=ViewData("tMsgConfirmPost") %>')) {
                return false;
            }

            var oBchcode = document.getElementById('otbFTBchCode');
            var oDocType = document.getElementById('otbFTPthDocType');

            var tdate = Math.random();
            var tReturn = J004_FRMxPostDoc(tdate, 'C_FRMxPostDoc', tW_Controller, 'otbFTPthDocNo', 'odtFDPthDocDate', oDocType.value, oBchcode.value, tApvCode);
            if (tReturn == '0') {
                var tDocNo = document.getElementById("otbFTPthDocNo").value;
                var tUrl = '<%=Url.Action("Index",tW_Controller) %>' + '?ptDocNo=' + document.getElementById('otbFTPthDocNo').value + '&ptAuthorRead=1';
                window.location = tUrl;
            }
        }
        catch (ex) {
            J002_SHWxMsgError('W_FRMxPostDoc', ex)
        }
        finally {
            J003_DISxWaiting();
        }
    }
    function ocbFTPthVATInOrEx_onchange() {
        if (W_GETtPdtCount() < 1) {
            return false;
        }
        alert('<%=ViewData("tMsgHasPdtNotChangeVatInOrEx") %>');
        if (document.getElementById('ocbFTPthVATInOrEx').selectedIndex == 0) {
            document.getElementById('ocbFTPthVATInOrEx').selectedIndex = 1;
        }
        else {
            document.getElementById('ocbFTPthVATInOrEx').selectedIndex = 0;
        }
    }
    function otbVatRate_onkeydown(ptKeyCode, ptWhich) {
        var tKey = ptKeyCode;
        if (ptWhich != null && ptWhich != '') {
            tKey = ptWhich;
        }
        if (tKey == 13) {
            otbVatRate_onblur();
        }
        return !(tKey == 13);
    }
    function otbVatRate_onblur() {
        W_DATxCalFooter();
    }

    //#### Browse Master #####
    // ตัวแปรกลาง
    var tW_PassedValue;
    //Browse Supplier
    $ui("#odiBrwSpl").dialog({
        autoOpen: false,
        modal: true,
        resizable: false,
        height: 'auto',
        width: '425px'
    });
    //Browse Rate
    $ui("#odiBrwRate").dialog({
        autoOpen: false,
        modal: true,
        resizable: false,
        height: 'auto',
        width: '465px'
    });
    //Browse Warehouse
    $ui("#odiBrwWah").dialog({
        autoOpen: false,
        modal: true,
        resizable: false,
        height: 'auto',
        width: '425px'
    });
    //Browse Tnf Reason
    $ui("#odiBrwReason").dialog({
        autoOpen: false,
        modal: true,
        resizable: false,
        height: 'auto',
        width: '425px'
    });
    function W_SHWxOpenMasterDialog(ptObjCode, ptObjName, ptCase) {
        if (W_CHKbPostOrDelStatus() == true) {
            alert('<%=ViewData("olatMsgNoEdit")%>');
            return false;
        }
        switch (ptCase.toUpperCase()) {
            case 'Spl'.toUpperCase():
                W_PRCxFillData(); //*CH 18-01-2013 สั่งให้ Rebind ค่าในตารางใหม่ //Function ใน User Control
                GridMaster_onLoad()//*CH 22-01-2013
                C_SETxObjValue(ptObjCode, ptObjName);
                $ui('#odiBrwSpl').dialog('open');
                break;
            case 'Rat'.toUpperCase(): //สกุลเงิน
                W_PRCxFillRateData(); //*CH 18-01-2013 สั่งให้ Rebind ค่าในตารางใหม่ //Function ใน User Control
                GridMasterRate_onLoad();
                C_SETxObjValueRate(ptObjCode, ptObjName);
                $ui('#odiBrwRate').dialog('open');
                break;
            case 'Wah'.toUpperCase(): //คลังสินค้า
                W_PRCxFillWahData(); //*CH 18-01-2013 สั่งให้ Rebind ค่าในตารางใหม่ //Function ใน User Control
                GridMasterWah_onLoad();
                C_SETxObjValueWah(ptObjCode, ptObjName);
                $ui('#odiBrwWah').dialog('open');
                break;
            case 'Trn'.toUpperCase(): //เหตุผล
                W_PRCxFillRsnData(); //*CH 18-01-2013 สั่งให้ Rebind ค่าในตารางใหม่ //Function ใน User Control
                GridMasterRsn_onLoad();
                C_SETxObjValueRsn(ptObjCode, ptObjName);
                $ui('#odiBrwReason').dialog('open');
                break;
        }
    }
    //ใช้งานสำหรับหน้าจอค้่าหา Master
    function W_SETxSelectedDataMaster(ptObjCode, ptObjName, ptCase, ptSta) {//PtSta 1:Select Data, Not1:Select None
        switch (ptCase.toUpperCase()) {
            case 'Spl'.toUpperCase():
                if (ptSta == '1') {
                    if (W_DATxConfirmClearPdtList(ptCase) == true) {
                        J015_SETxSelectData(tJ015_ReturnValue, ptObjCode, ptObjName);
                        if ($('#otbFTSplCode').val() != $('#otbFTSplCodeOld').val()) {
                            $('#otbFTSplCodeOld').val($('#otbFTSplCode').val());
                            W_SETxSupplierVAT();
                        }
                    }
                }
                $ui('#odiBrwSpl').dialog('close');
                break;
            case 'Rat'.toUpperCase():
                if (ptSta == '1') {
                    var tRteCode = $("#otbFTRteCode").val();
                    var tRteName = $("#otbFTRteName").val();
                    var tRteFac = $("#otbFCPthRteFac").val();
                    J015_SETxSelectData(tJ015_ReturnValue, ptObjCode, ptObjName, 'otbFCPthRteFac', 'otbFCPthRteFac');
                    W_SETxDataRate(tRteCode, tRteFac, tRteName);
                    $('#otbFCPthRteFac').val(J002_DECcRound($('#otbFCPthRteFac').val(), nW_DecAmtForShw, true));
                }
                $ui('#odiBrwRate').dialog('close');
                break;
            case 'Wah'.toUpperCase():
                if (ptSta == '1') {
                    J015_SETxSelectData(tJ015_ReturnValue, ptObjCode, ptObjName);
                    $('#otbFTPthWhToOld').val($('#otbFTPthWhTo').val());
                }
                $ui('#odiBrwWah').dialog('close');
                break;
            case 'Trn'.toUpperCase():
                if (ptSta == '1') {
                    J015_SETxSelectData(tJ015_ReturnValue, ptObjCode, ptObjName);
                    //$('#otbFTPthWhToOld').val($('#otbFTPthWhTo').val());
                }
                $ui('#odiBrwReason').dialog('close');
                break;
        }
    }
    function W_SETxDataRate(ptOldRteCode, ptOldRteRate, ptOldRteName) {//*CH 18-01-2013
        try {
            var tRteCode = $("#otbFTRteCode").val();
            if (J002_STRttrim(tRteCode) == tW_RteCodeB4Edit) {
               return false;
            }
            if (W_DATxConfirmClearPdtList('Rat') == true) {
                tW_RteCodeB4Edit = J002_STRttrim($("#otbFTRteCode").val());
            } else {
                $("#otbFTRteCode").val(ptOldRteCode);
                $("#otbFCPthRteFac").val(ptOldRteRate);
                $("#otbFTRteName").val(ptOldRteName);
                tW_RteCodeB4Edit = ptOldRteCode;
            }
        }
        catch (ex) {
            J002_SHWxMsgError('W_SETxDataRate', ex);
        }
    }
    function W_DATxConfirmClearPdtList(ptCase) {
        var tMsg;
        switch (ptCase.toUpperCase()) {
            case 'Spl'.toUpperCase(): tMsg = '<%=ViewData("tMsgConfirmChangeSpl") %>'; break;
            case 'Rat'.toUpperCase(): tMsg = '<%=ViewData("olatMsgChangeRate") %>'; break;
        }

        if (W_GETtPdtCount() > 0) {
            if (confirm(tMsg) == true) {
                W_CLRxDataDT();
                return true;
            }
            else {
                return false;
            }
        }
        return true;
    }
    //#### END Browse Master #####

    //### DisCount ###
    //DisCount
    $ui('#odiBrwDis').dialog({
        autoOpen: false,
        modal: true,
        resizable: false,
        height: 'auto',
        width: '380px'
    });
    function W_SETxDiscount(ptNet, ptTxtDis) {
        switch (tW_FlagDis) {
            case '1':
                $("#otbDisTxtRte").val(ptTxtDis);
                W_DATxCalDis();
                W_DATxCalPdtNet();
                $ui('#odiBrwDis').dialog('close');
                break;
            case '2':
                $('#otbFootDis').val(ptTxtDis);
                W_DATxCalFootDis();
                W_DATxCalFooter();
                $ui('#odiBrwDis').dialog('close');
                break;
        }
        $("#otbDisTxtRte").focus();
    }
    //### End Dis Count ###

    //### Browse Product ###
    $ui("#odiBrwPdt").dialog({
        autoOpen: false,
        modal: true,
        resizable: false,
        height: "auto",
        width: "860px"
    });
    function W_CLSxCloseBrwPdt() {
        $ui("#odiBrwPdt").dialog("close");
    }
    function W_CHKxPdtSerial() {
        tW_PdtCodeBeFore = '';
        //otbPdtCode_onblur();
        $('#otbPdtQty').focus();
    }
    //### End Browse Product ###

    //### Browse Doc ###
    $ui("#odiBrwDoc").dialog({
        autoOpen: false,
        modal: true,
        resizable: false,
        height: "auto",
        width: "820px"
    });
    function GetPassedValue(ptVal) {
        tW_PassedValue = ptVal;
    }
    function W_PRCxSelectedDoc() {
        var tOldDocNo = tW_DocNoBeFore;
        $('#otbFTPthDocNo').val(tW_PassedValue);
        var tDocNo = $('#otbFTPthDocNo').val();
        if (tDocNo == null || tDocNo == '' || tDocNo == tOldDocNo) {
            $('#otbFTPthDocNo').val(tOldDocNo);
            return false;
        }
        $ui("#odiBrwDoc").dialog("close");
        otbFTPthDocNo_onblur();
    }
    function W_FRMxCloseBrwDocPo() { $ui("#odiBrwDoc").dialog("close"); }
    //### END Browse Doc ###
</script>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
    <link rel="Stylesheet" href="<%=Url.Content("~/Content/AdaCss/Local/FCS_cvcTCNTPdtTnfHD.css") %>" />
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J003_SplashDialog.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J004_LoadTransactionMenu.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J006_LoadBrowse.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J011_ComboBoxLibrary.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J015_UIBrowse.js") %>"></script>
</asp:Content>