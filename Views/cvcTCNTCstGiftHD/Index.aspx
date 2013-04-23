<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage(Of Adasoft.WebPos.Models.cmlTCNTCstGiftHD)" %>

<%@ Import Namespace="Adasoft.WebPos.Models" %>
<%@ Import Namespace="AdaWebPos" %>
<%@ Import Namespace="System.Resources" %>
<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        'Dim tLastLang As String = '<%=Session("bVB_CNPwdAllow")%>'.tVB_LastLang
        Dim oCulture As System.Globalization.CultureInfo '*CH 14-11-2012
        
        If Session("tVB_LastLang") Is Nothing AndAlso Session("tVB_LastLang") = "" Then
            oCulture = New System.Globalization.CultureInfo("EN")
            AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.Culture = New System.Globalization.CultureInfo("EN")
            Resources.resGBMsg.Culture = New System.Globalization.CultureInfo("EN")
            Resources.resGBMenuName.Culture = New System.Globalization.CultureInfo("EN")
            ViewData("ovd_tLastLang") = "EN"
        Else
            oCulture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
            AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.Culture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
            Resources.resGBMsg.Culture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
            Resources.resGBMenuName.Culture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
            ViewData("ovd_tLastLang") = Session("tVB_LastLang")
        End If
        'CH 14-11-2012
        AdaWebPos.My.Resources.resLCcvcCNBrw.Culture = oCulture
        ViewData("olaOK") = AdaWebPos.My.Resources.resLCcvcCNBrw.olaOK
        ViewData("olaFilter") = AdaWebPos.My.Resources.resLCcvcCNBrw.olaFilterBy
        ViewData("olaFilterBy") = AdaWebPos.My.Resources.resLCcvcCNBrw.olaFilterBy
        
        ViewData("olacancel") = AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.olaCancel
        ViewData("olacancopy") = AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.olaCanCopy
        ViewData("olacandelete") = AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.olaCanDelete
        ViewData("olacanedit") = AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.olaCanEdit
        ViewData("olacanfind") = AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.olaCanFind
        ViewData("olacanpost") = AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.olaCanPost
        ViewData("olacreate") = AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.olaCreate
        ViewData("olaHelp") = AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.olaHelp
        ViewData("olaReport") = AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.olaReport
        ViewData("olacansave") = AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.olaCanSave
        ViewData("olaclose") = AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.olaClose
        ViewData("olacreate") = AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.olaCreate
        ViewData("olaMenu") = AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.olaMenu
        ViewData("olaDocNo") = AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.olaDocNo
        ViewData("olaDocDate") = AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.olaDocDate
        ViewData("olaDepart") = AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.olaDepart
        ViewData("olaUserName") = AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.olaUserName
        ViewData("olaApproveName") = AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.olaApproveName
        ViewData("olaCstCode") = AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.olaCstCode
        ViewData("olaCstAddress") = AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.olaCstAddress
        ViewData("olaCstExchange") = AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.olaCstExchange
        ViewData("olaCstFax") = AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.olaCstFax
        ViewData("olaCstTel") = AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.olaCstTel
        ViewData("olaRemark") = AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.olaRemark
        ViewData("olaPointCurrent") = AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.olaPointCurrent
        ViewData("olaPointSave") = AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.olaPointSave
        ViewData("olaDocActive") = AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.olaDocActive
        ViewData("olaAutoTab") = AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.olaAutoTab
        ViewData("ovd_olaPointNormal") = AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.olaPointNormal
        ViewData("ovd_olaPointSpl") = AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.olaPointSpl
        ViewData("ovd_olaSplCode") = AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.olaSplCode
        
        ' Header Grid
        ViewData("olaSeqNo") = AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.olaSeqNo
        ViewData("olaPdtCode") = AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.olaPdtCode
        ViewData("olaPdtName") = AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.olaPdtName
        ViewData("olaUnitName") = AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.olaUnitName
        ViewData("olaPdtPoint") = AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.olaPdtPoint
        ViewData("olaPdtQty") = AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.olaPdtQty
        ViewData("olaPntAmt") = AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.olaPntAmt
        ViewData("olaPointPaid") = AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.olaPointPaid
        ViewData("olaTotalUse") = AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.olaTotalUse
        
        'Doc Status
        ViewData("olatMsgDoc_NonApp") = Resources.resGBMsg.tMsgDoc_NonApp
        ViewData("olatMsgDoc_App") = Resources.resGBMsg.tMsgDoc_App
        ViewData("olatMsgDoc_Cancel") = Resources.resGBMsg.tMsgDoc_Cancel
        
        'Message Error
        ViewData("tMsgDAT_Notfound001") = Resources.resGBMsg.tMsgDAT_Notfound001
        ViewData("tMsgDat_NotFountOrLessPoint") = Resources.resGBMsg.tMsgDat_NotFountOrLessPoint '*TW 54-04-29
        ViewData("tMsgQtyCannotEmpty") = Resources.resGBMsg.tMsgQtyCannotEmpty '*TW 54-05-11
        
        ViewData("tMsgErrorData") = Resources.resGBMsg.tMsgErrorData
        ViewData("tMsgSave_Warning") = Resources.resGBMsg.tMsgSave_Warning
        ViewData("tMsgNoEditCancel") = Resources.resGBMsg.tMsgNoEditCancel
        ViewData("tMsgNoEditApp") = Resources.resGBMsg.tMsgNoEditApp
        ViewData("olatMsgErrorData") = Resources.resGBMsg.tMsgErrorData
        ViewData("olatMsgDoc_Empty") = Resources.resGBMsg.tMsgDoc_Empty
        ViewData("tMsgSave_AfterDisChgIsZero") = Resources.resGBMsg.tMsgSave_AfterDisChgIsZero
        ViewData("tMsgCodeHasUsed") = Resources.resGBMsg.tMsgCodeHasUsed
        ViewData("tMsgCstGift_DocNotApprove") = Resources.resGBMsg.tMsgCstGift_DocNotApprove
        ViewData("tMsgNoCancelNoSave") = Resources.resGBMsg.tMsgNoCancelNoSave
        ViewData("tMsgNoCancelCancel") = Resources.resGBMsg.tMsgNoCancelCancel
        ViewData("tMsgNoCancelApp") = Resources.resGBMsg.tMsgNoCancelApp
        ViewData("tMsgConfirmCancel") = Resources.resGBMsg.tMsgConfirmCancel
        ViewData("tMsgDelcom") = Resources.resGBMsg.tMsgDelcom
        ViewData("tMsgDelNocom") = Resources.resGBMsg.tMsgDelNocom
        ViewData("tMsgNoDocLast") = Resources.resGBMsg.tMsgNoDocLast
        ViewData("tMsgNoDelCancel") = Resources.resGBMsg.tMsgNoDelCancel
        ViewData("tMsgNoDelApp") = Resources.resGBMsg.tMsgNoDelApp
        ViewData("tMsgNoDelNoSave") = Resources.resGBMsg.tMsgNoDelNoSave
        ViewData("tMsgConfirmDelete") = Resources.resGBMsg.tMsgConfirmDelete
        ViewData("tMsgNoAppStaDocDonotAct") = Resources.resGBMsg.tMsgNoAppStaDocDonotAct
        ViewData("tMsgConfirmPost") = Resources.resGBMsg.tMsgConfirmPost
        ViewData("tMsgSelectPdtSerial") = Resources.resGBMsg.tMsgSelectPdtSerial
        ViewData("tMsgClearCstCode") = Resources.resGBMsg.tMsgClearCstCode
        ViewData("tMsgCstPointLessThanPdtPoint") = Resources.resGBMsg.tMsgCstPointLessThanPdtPoint
        ViewData("tMsgCheckPdtDuplicate") = Resources.resGBMsg.tMsgCheckPdtDuplicate
        ViewData("tMsgNoAppNoSave") = Resources.resGBMsg.tMsgNoAppNoSave
        ViewData("tMsgNoAppCancel") = Resources.resGBMsg.tMsgNoAppCancel
        ViewData("tMsgNoAppApp") = Resources.resGBMsg.tMsgNoAppApp
        ViewData("tMsgCstGift_NotAppv") = Resources.resGBMsg.tMsgCstGift_NotAppv
        ViewData("tMsgCstGift_NotSave") = Resources.resGBMsg.tMsgCstGift_NotSave
        ViewData("tMsgCstPointChange") = Resources.resGBMsg.tMsgCstPointChange
        ViewData("tMsgPointOverNoPost") = Resources.resGBMsg.tMsgPointOverNoPost
        ViewData("tMsgNotShwRptNotAppv") = Resources.resGBMsg.tMsgNotShwRptNotAppv
        ViewData("ovd_tMsgSearchSpl") = Resources.resGBMsg.tMsgSearchSpl
        ViewData("tMsgHavPdtNotSelect")  = Resources.resGBMsg.tMsgHavPdtNotSelect
        ViewData("tMsgChkWantPdt") = Resources.resGBMsg.tMsgChkWantPdt

        ViewData("oimgAppv") = Url.Content(Resources.resGBImageList.oimgAppv)
        ViewData("oimgPCRemove") = Url.Content(Resources.resGBImageList.oimgPCRemove)
        ViewData("oimgNoAppv") = Url.Content(Resources.resGBImageList.oimgNoAppv)
        ViewData("oimgBrowse") = Url.Content(Resources.resGBImageList.oimgBrowse)
        ViewData("oimgGencode") = Url.Content(Resources.resGBImageList.oimgGencode)
        ViewData("tProgramName") = Url.Content(Resources.resGBMenuName.tProgramName)
        ViewData("olaMenuExit") = Resources.resGBMenuName.omnExit '*ออก *CH 17-10-2012
        ViewData("olaMenuHome") = Resources.resGBMenuName.omnHome '*หน้าแรก *CH 17-10-2012
        
        ViewData("VirtualDirectory") = W_GETtVirtualDirectory()
        
        'FootterLeft
        ViewData("ovd_olaRemarkCutPoint") = AdaWebPos.My.Resources.resLCcvcTCNTCstGiftHD.olaRemarkCutPoint '*CH 05-11-11
    End Sub
    Function W_GETtVirtualDirectory() As String
        Dim tReturn As String = ""
        Dim tStr As String = ""
        Dim nIndex As Integer = 0
        tStr = Url.Action("Index", "Home")
        nIndex = tStr.IndexOf("/Home")
        If nIndex > -1 Then
            tStr = tStr.Substring(0, nIndex)
            tReturn = tStr.Replace("/", "")
        End If
        Return tReturn
    End Function
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style ="display:none">
        <input type="hidden" id ="otbFTCstCodeOld" />
        <input type="hidden" id="otbFTBchCode" value="<%=model.FTBchCode%>" />
        <input type="hidden" id="otbSeq" value="" />
        <input type="hidden" id="otbPdtCodeOld" />
        <input type="hidden" id="otbUnitCode" />
        <input type="hidden" id="otbPdtBarCode1" />
        <input type="hidden" id="otbPdtStkCode" />
        <input type="hidden" id="otbStaEdit" value="" />
        <input type="hidden" id="otbPdtSel" />
        <input type="hidden" id ="otbPntAmtOld" value="0" />
        <input type="hidden" id ="otbPdtQtyOld" value="0" />
        <input type="hidden" id="otbFTCghDocNoOld" value="<%=model.FTCghDocNo%>" />
        <input type="hidden" id="otbFTDptCode" value="<%=model.FTDptCode%>" />
        <input type="hidden" id="otbFTUsrCode" value="<%=model.FTUsrCode%>" />
        <input type="hidden" id="otbFTCghDocType" value="<%=model.FTCghDocType %>" />
        <input type="hidden" id="otbFTWahCode" value="<%=model.FTWahCode %>" />
        <input type="hidden" id="otbFTCghApvCode" value="<%=model.FTCghApvCode %>" />
        <input type="hidden" id="otbFTCghStaDoc" value="<%=model.FTCghStaDoc %>" />
        <input type="hidden" id="otbSerialList" name="otbSerialList" />
        <input type="hidden" id="otbFTCghStaPrcDoc" value="<%=model.FTCghStaPrcDoc%>" />
        <input type="hidden" id="otbFNCghStaDocAct" value="<%=model.FNCghStaDocAct%>" />
        <input type="hidden" id="otbFTPdtSrn" value="" />
        <input type="hidden" id="otbUnitFactor" value="" />
        <input type="hidden" id="otbFTSplCodeOld" value="" />
    </div> 
    <div id="odiMain" class="xCN_AllFontFamily xCN_AllFontSize xCN_AllFontColor xCN_DivMain" >
      <%-------------------เมนูด้านบนสุด---------------------------%>
        <div id="odiMenuTop" class="xCN_AllBorderColor xCN_DivMainMenu">
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
                <div id="odiMenuNew" class="xCN_DivMenuNew">
                    <a onclick="W_FRMxNewDoc()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaCreate")%>
                        </div>
                    </a>
                </div>
                <div id="odiMenuSave" class="xCN_DivMenuSave" style="float: left;">
                    <a onclick="W_DATxSaveDocument()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaCanSave")%>
                        </div>
                    </a>
                </div>
                <div id="odiMenuSearch" class="xCN_DivMenuSearch" style="float: left;">
                    <a href="#" onclick="W_FRMxFindDoc()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaCanFind")%>
                        </div>
                    </a>
                </div>
                <div id="odiMenuDelete" class="xCN_DivMenuDelete" style="float: left;">
                    <a onclick="W_FRMxDelDoc()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaCanDelete")%>
                        </div>
                    </a>
                </div>
                <div id="odiMenuCancel" class="xCN_DivMenuCancel" style="float: left;">
                    <a onclick="W_FRMxCancelDoc()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaCancel")%>
                        </div>
                    </a>
                </div>
                <div id="odiMenuPost" class="xCN_DivMenuPost" style="float: left;">
                    <a onclick="W_FRMxPostDoc()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaCanPost")%>
                        </div>
                    </a>
                </div>
                <div id="odiMenuRpt" class="xCN_DivMenuReport" style="float: left;">
                    <a href="#" onclick="W_FRMxShwPrintDialog()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaReport")%>
                        </div>
                    </a>
                </div>
                <div id="odiMenuHelp" class="xCN_DivMenuHelp" style="float: left; display:none">
                    <a href="#" >
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaHelp")%>
                        </div>
                    </a>
                </div>
                <%--<div id="odiMenuClose" class="xCN_DivMenuHome" style="float: left;">
                    <a href="#" onclick="W_FRMxCloseDoc()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaClose")%>
                        </div>
                    </a>
                </div>--%>
                <!-- ไปเมนูระบบสมาชิก *CH 17-10-2012 -->
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
                <%  
                    Dim tClass As String
                    If ViewData("ovd_tLastLang") = "EN" Then
                        tClass = "xCN_DivDocStatusDescEN"
                    Else
                        tClass = "xCN_DivDocStatusDesc"
                    End If
                %>
                <div id="odiDocImage" class="<%=tClass%>">
                    <div id="odiNoneApprove">
                        <img id="oimNoAppv" alt="" name="oimNoAppv" src='<%=ViewData("oimgNoAppv") %>' />
                        <label>
                            <%=ViewData("olatMsgDoc_NonApp")%>
                        </label>
                    </div>
                    <div id="odiApprove" class="xCN_DivTabDisplay">
                        <img id="oimAppv" alt="" name="oimAppv" src='<%=ViewData("oimgAppv") %>' />
                        <label>
                            <%=ViewData("olatMsgDoc_App")%>
                        </label>
                    </div>
                    <div id="odiCancel" class="xCN_DivTabDisplay">
                        <img id="oimPCRemove" alt="" name="oimPCRemove" src='<%=ViewData("oimgPCRemove") %>' />
                        <label>
                            <%=ViewData("olatMsgDoc_Cancel")%>
                        </label>
                    </div>
                </div>
            </div>
        </div>
      <%-------------------Header---------------------------%>
      <div class="xW_DivHeader xCN_AllBorderColor">
        <div class="xW_DivHeaderDetail xCN_AllBackgroundColor">   
            <div class="xW_DivHeaderCstCap">
                <div class="xW_DivCstCap">
                    <%=ViewData("olaCstCode")%>
                </div>    
                <div class="xW_DivAddressCaption">
                    <%=ViewData("olaCstAddress")%>
                </div>   
                <div class="xW_DivCstCap">
                    <%=ViewData("olaCstTel")%>
                </div>    
                <%--<div class="xW_DivCstCap">
                    <%=ViewData("olaCstFax")%>
                </div> --%> 
                <div class="xW_DivCstCap">
                    <%=ViewData("olaRemark")%>
                </div>      
            </div>
            <div class="xW_DivHeaderCstDetail">
               <div class="xW_DivCstName">
                    <div class="xW_DivCstCode">
                        <input type ="text" 
                               id="otbFTCstCode" 
                               name="otbFTCstCode"
                               onfocus="J002_SETxKeepOldOnfocus('otbFTCstCode','otbFTCstCodeOld')"
                               onblur="FTCstCode_onblur()"
                               onkeydown="FTCstCode_onkeydown()"
                               onkeypress="return W_DATxNoEnter(event.keyCode,event.which,'otbFTCstCode')"
                               value="<%=model.FTCStCode%>"/>
                    </div>
                    <div class ="xCN_DivBrowData">
                        <a href="javascript:void(0);" onclick="">
                          <img id="oimBrwCst" 
                                alt=""                         
                                class="xCN_DivBrowDataSetTopMargin xCN_ImgBrowData"
                                name="oimBrwCst" 
                                src='<%=ViewData("oimgBrowse")%>' />                      
                        </a>

                    </div>
                    <div class="xW_DivCstFullName">
                        <input type="text" 
                                class="xCN_AllReadOnlyBGColor"
                               id ="otbFTCstName"
                               name ="otbFTCstName" 
                               onfocus="otbFTCstName_onfocus()"
                               readonly="readonly" />
                    </div>
               </div>
               <div class="xW_DivCstAddress">
                    <div class="xCN_AllBackgroundColor xW_DivTextAreaCstAddr">
                          <textarea id="otbFTCstAddr"                               
                                    name="otbFTCstAddr"
                                    class="xCN_AllReadOnlyBGColor xCN_AllFontSize xCN_AllFontColor " 
                                    cols="1" 
                                    onfocus="otbFTCstAddr_onfocus()"
                                    readonly="readonly" rows="1">
                          </textarea>
                    </div>
                    <div class="xW_DivCstTelAndFax">
                        <input type="text"
                               id="otbFTCstTel"
                               readonly="readonly"
                               class="xCN_AllReadOnlyBGColor"
                               onfocus="otbFTCstTel_onfocus()"
                               name="otbFTCstTel" />
                        <%--  Fax. ย้ายมาต่อท้าย Tel.--%>
                            <%=ViewData("olaCstFax")%>
                        <input type="text" style="float:right"
                               id="otbFTCstFax"
                               class="xCN_AllReadOnlyBGColor"
                               readonly="readonly"
                               onfocus="otbFTCstFax_onfocus()"
                               name="otbFTCstFax" />
                    </div>
                    <%--<div class="xW_DivCstTelAndFax">
                        <input type="text"
                               id="otbFTCstFax"
                               class="xCN_AllReadOnlyBGColor"
                               readonly="readonly"
                               name="otbFTCstFax" />
                    </div>--%>
               </div>
               <div class="xW_DivCstPoint">
                    <div class="xW_DivExchange">
                        <div class="xW_DivExchangeCap">
                            <%--<%=ViewData("olaPointSave")%>--%>
                            <%-- ใช้ชื่อใหม่ --%>
                            <%=ViewData("ovd_olaPointNormal")%>
                        </div>
                        <div class="xW_DivExchangeCap"><%-- Chuck 05102011 --%>
                            <%=ViewData("ovd_olaSplcode")%>
                        </div>
                        <div class="xW_DivExchangeCap"><%-- บรรทัดว่าง *Chuck 06102011 --%>
                        </div>
                        <div class="xW_DivExchangeCap"><%-- *Chuck 06012011 --%>
                            <%=ViewData("ovd_olaPointSpl")%>
                        </div>
                        <div class="xW_DivExchangeCap">
                            <%=ViewData("olaCstExchange")%>
                        </div>
                        <div class="xW_DivExchangeCap">
                            <%--<%=ViewData("olaPointCurrent")%>--%>
                        </div>
                    </div>
                    <div class="xW_DivExchangeDetail">
                        <div class="xW_DivExchangeData">
                            <input type="text"
                                   id="otbFCCghPntAtChe"
                                   name="otbFCCghPntAtChe"
                                   style="text-align:right;"
                                   value="<%=model.FCCghPntAtChe%>"
                                   readonly ="readonly" 
                                   onfocus="otbFCCghPntAtChe_onfocus()"
                                   class="xCN_AllReadOnlyBGColor" />
                        </div>
                        <div class="xW_DivExchangeSplData"><%-- Chuck 05102011 --%>
                            <input type="text"
                                   id="otbFTSplCode"
                                   name="otbFTSplCode"
                                   maxlength="20" 
                                   onfocus="J002_SETxKeepOldOnfocus('otbFTSplCode','otbFTSplCodeOld')"
                                   onblur="FTSplCode_onblur()"
                                   onkeydown="FTSplCode_onkeydown()"
                                   onkeypress="return W_DATxNoEnter(event.keyCode,event.which,'otbFTSplCode')"
                                   value="<%=model.FTSplCode%>" /><%-- แสดงรหัสผู้จำหน่าย *Chuck 06102011 --%>                        
                        </div>
                        <div class ="xCN_DivBrowData"><%-- ค้นหาผู้จำหน่าย *Chuck 06102011 --%>
                            <img alt=""  
                            id="oimBrwSpl"
                            onclick="W_DATxBrowseMaster('otbFTSplCode', 'otbFTSplName', 'TCNMSpl')" 
                            src="<%=ViewData("oimgBrowse")%>"  
                            class="xCN_DivBrowDataSetTopMargin xCN_ImgBrowData" />
                        </div>
                        <div class="xW_DivExchangeData"><%-- แสดงชื่อผู้จำหน่าย *Chuck 06102011 --%>
                            <input id="otbFTSplName" 
                            value="<%%>"  type="text" 
                            class="xCN_AllReadOnlyBGColor"
                            readonly="readonly" 
                            onfocus="otbFTSplCode_onfocus()"
                            value="<%=model.FTSplName%>" />
                        </div>
                        <div class="xW_DivExchangeData"><%-- แสดงแต้ม(ผู้จำหน่าย) *Chuck 06102011 --%>
                            <input id="otbFCPntSpl" 
                            value="<%=model.FCPntSpl%>"  type="text" 
                            class="xCN_AllReadOnlyBGColor"
                            style="text-align:right;" 
                            onfocus="otbFCPntSpl_onfocus()"
                            readonly="readonly" />
                        </div>
                        <div class="xW_DivExchangeData"  style="display:none"><%-- เก็บแต้มปัจจุบันก่อนมีการใช้แต้ม *Chuck 17102011 --%>
                            <input type="text"
                                    id="otbFCSplRetPoint"
                                    name="otbFCSplRetPoint" />
                        </div>
                        <div class="xW_DivExchangeCtrData">
                            <input type="text"
                                   id="otbFTCghCtrName"
                                   name="otbFTCghCtrName"
                                   maxlength="50" 
                                   onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which)"
                                   value="<%=model.FTCghCtrName %>" />
                        </div>
                        <div class="xW_DivExchangeData"  style="display:none">
                            <input type="text"
                                    id="otbFCCstRetPoint"
                                    name="otbFCCstRetPoint"
                                    style="text-align:right;"
                                    class="xCN_AllReadOnlyBGColor" />
                        </div>
                        <%--<div class="xW_DivExchangeData">--%>
                            <div class="xW_DivActiveDoc">
                                <input type="checkbox" checked="checked"  id="ockFNCghStaDocAct" onclick="W_SETxStaDocAct()"/>
                            </div>
                            <div class="xW_DivActiveDocCaption">
                                <%=ViewData("olaDocActive")%>
                            </div>
                        <%--</div>--%>
                    </div>
               </div>
               <div class="xW_DivRemark">
                    <input type="text" 
                            id="otbFTCghRmk"
                            name="otbFTCghRmk"
                            maxlength="200"
                            onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which)"
                            value ="<%=Html.Encode(model.FTCghRmk)%>" />
               </div>
            </div>
        </div>
        <div id="odiDocNo" class="xCN_AllBorderColor xW_DivDocumentNo xCN_AllBackgroundColor">
            <div class="xCN_AllBackgroundColorMenu xCN_AllBorderColor xCN_AllMenuFontSize xCN_AllMenuFontColor xW_DivDocumentMenuName">
                <div class="xCN_DivDocNameSub">
                    <label>
                        <%=ViewData("olaMenu")%>
                    </label>
                </div>
            </div>
            <div class="xW_DivDocDetail">
                <div class="xW_DivDocCaption">
                    <div class="xW_DivDocCaptionSub">
                        <%=ViewData("olaDocNo")%>
                    </div>
                    <div class="xW_DivDocCaptionSub">
                        <%=ViewData("olaDocDate")%>
                    </div>
                    <div class="xW_DivDocCaptionSub">
                        <%=ViewData("olaDepart")%>
                    </div>
                    <div class="xW_DivDocCaptionSub">
                        <%=ViewData("olaUserName")%>
                    </div>
                    <div class="xW_DivDocCaptionSub">
                        <%=ViewData("olaApproveName")%>
                    </div>
                </div>
                <div class="xW_DivDocData">
                    <div class="xW_DivDocDataSub">
                        <input id="otbFTCghDocNo" 
                               onblur="otbFTCghDocNo_onblur()"
                               onfocus="J002_SETxKeepOldOnfocus('otbFTCghDocNo','otbFTCghDocNoOld')"
                               onkeypress="W_DATxDocNoEnter(event.keyCode,event.which)"
                               class="xCN_AllReadOnlyBGColor" 
                               maxlength='<%=ViewData("MaxLenght")%>'
                               name="otbFTCghDocNo" 
                               type="text" readonly="readonly" 
                               value ="<%=Html.Encode(Model.FTCghDocNo)%>"/>
                        <%--<%=Html.ValidationMessageFor(Function(model) model.FTCghDocNo)%>--%>
                    </div>
                    <div class="xW_DivDocDataSub">
                         <%=Html.Telerik().DatePicker() _
                                 .Name("odtXFDCghDocDate") _
                                 .Min("2000/01/01") _
                                 .Max("2050/12/31") _
                                 .Format("dd/MM/yyyy") _
                                 .Value(Model.FDCghDocDate) _
                                 .ButtonTitle("Document Date") _
                                 .InputHtmlAttributes(New With {.id = "odtFDCghDocDate", .name = "odtFDCghDocDate", .style = "height:18px;width:80px;"}) _
                                 .ShowButton(True)
                        %>
                    </div>
                    <div class="xW_DivDocDataSub">
                        <input id="otbFTDepName" 
                                   class="xCN_AllReadOnlyBGColor" 
                                   maxlength='<%=ViewData("MaxLenght")%>'
                                   name="otbFTDepName" 
                                   type="text" readonly="readonly" />
                    </div>
                    <div class="xW_DivDocDataSub">
                        <input id="otbFTUsrName" 
                                   class="xCN_AllReadOnlyBGColor" 
                                   maxlength='<%=ViewData("MaxLenght")%>'
                                   name="otbFTUsrName" 
                                   type="text" readonly="readonly" />
                    </div>
                    <div class="xW_DivDocDataSub">
                        <input id="otbFTCghApvName" 
                                   class="xCN_AllReadOnlyBGColor" 
                                   maxlength='<%=ViewData("MaxLenght")%>'
                                   name="otbFTCghApvName" 
                                   type="text" readonly="readonly" />
                    </div>
                </div>
                <div class="xW_DivDocGenCode">
                        <div class="xCN_DivBrowData" style=" margin:1px 0px 0px 0px;">
                            <img id="oimGetDocNo" alt="" 
                                class="xCN_ImgBrowData" 
                                onclick="W_GETtDocNo()"
                                name="oimGetDocNo" 
                                src='<%=ViewData("oimgGencode")%>' />
                        </div>
                        <div class="xCN_DivBrowData xCN_DivBrowDataSetTopMargin">
                            <%--<input id="ocmBrwOption" 
                                   class="xCN_InputBottomBrowse" 
                                   name="ocmBrwOption" 
                                   value="..."
                                   type="button" />--%>
                        </div>
                </div>
           </div>  
        </div>      
      </div>
      <div class="xW_DivDetail xCN_AllBackgroundColor">
            <div id="odiGridDT" class="xW_DivGridDetail">
                <%  'declare the grid and enable features
                    Dim oDataDT As IEnumerable(Of Adasoft.WebPos.Models.cmlTCNTCstGiftDT) = ViewData("DataDT")
                    
                    'Dim oTempDT As New List(Of Adasoft.Abreast.Models.cmlTCNTCstGiftDT)
                    'If oDataDT.Count = 0 Then '*CH 03-11-11 New
                    '    oTempDT = CType(Session("oC_TempDT"), List(Of Adasoft.Abreast.Models.cmlTCNTCstGiftDT))
                    '    oDataDT = oTempDT
                    'End If
                    
                    Dim gridBuilder = Html.Telerik().Grid(oDataDT) _
                                .Name("ogdGridDT") _
                                .HtmlAttributes(New With {.style = "width:99.8%;"}) _
                                .Scrollable(Function(o) o.Height(176)) _
                                .Scrollable.HtmlAttributes(New With {.style = "height:200px;"}) _
                                .Footer(False) _
                                .Selectable()
                                    
                    gridBuilder.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                          .Select("C_DAToSelectAjaxEditing", "cvcTCNTCstGiftHD") _
                          ))
                      
                    'Add grid columns
                    gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FNCgdSeqNo).Title(ViewData("olaSeqNo")).Width(60) _
                           .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                           .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                    'gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTPdtCode).Title(ViewData("olaPdtCode")).Width(145) _
                    '       .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                    '       .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"})) '*TW 54-06-14 Old
                    gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTCgdBarCode).Title(ViewData("olaPdtCode")).Width(145) _
                           .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                           .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"})) '*TW 54-06-14
                    gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTPdtName).Title(ViewData("olaPdtName")).Width(150) _
                           .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                           .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                    gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTCgdUnitName).Title(ViewData("olaUnitName")).Width(60) _
                           .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                           .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                    gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FCCgdPdtPoint).Title(ViewData("olaPdtPoint")).Width(100).Format("{0:#,##0." & StrDup(Session("nVB_CNDecAmtForShw"), "0") & "}") _
                           .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                           .HtmlAttributes(New With {.style = "text-align:right; font-size:12px;"}))
                    gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FCPdtQty).Title(ViewData("olaPdtQty")).Width(82).Format("{0:#,##0." & StrDup(Session("nVB_CNDecAmtForShw"), "0") & "}") _
                           .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                           .HtmlAttributes(New With {.style = "text-align:right; font-size:12px;"}))
                    gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FCCgdPntAmt).Title(ViewData("olaPntAmt")).Width(113).Format("{0:#,##0." & StrDup(Session("nVB_CNDecAmtForShw"), "0") & "}") _
                           .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                           .HtmlAttributes(New With {.style = "text-align:right; font-size:12px;"}))
                    'gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTBchCode).Hidden())
                    'gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTCghDocNo).Hidden())
                    'gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FDCghDocDate).Hidden())
                    'gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTCgdBarCode).Hidden()) '*TW 54-06-14 Old
                    '*CH 10-11-11'
                    gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTPdtCode).Hidden(True)) '*TW 54-06-14
                    
                    'gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FDCghDocDate).Hidden())
                    '*CH 10-11-11'
                    gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTCgdStkCode).Hidden(True))
                    
                    'gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FDCghDocDate).Hidden())                 
                    '*CH 10-11-11'
                    gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTPunCode).Hidden(True))
                    
                    'gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTCstCode).Hidden())
                    'gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTWahCode).Hidden())
                    'gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTCgdStaPrcStk).Hidden())

                    'gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTCgdStaPrcStkCrd).Hidden())
                    '*CH 10-11-11'
                    gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTSrnCode).Hidden(True))
                    
                    'gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FNLogSegNo).Hidden())
                    
                    gridBuilder.DataKeys(Function(Key) Key.Add(Function(model) model.FNCgdSeqNo))
                        
                    gridBuilder.ClientEvents(Function(Events) Events.OnLoad("grid_onLoad"))
                    gridBuilder.ClientEvents(Function(Events) Events.OnRowSelect("W_GETxPdtOnRowSelected"))
                    gridBuilder.RowAction(Function(row) (row.Selected = row.DataItem.FNCgdSeqNo.Equals(ViewData("id"))))
                        
                    'Render the grid
                    gridBuilder.Render()
                     
                %>
            </div>
            <div class="xW_DivAddProduct xCN_AllBorderColor">
                <div class="xW_DivProductCode xCN_AllBorderColor">
                    <div class="xW_DivProductCodeCap xCN_AllBorderColor xCN_AllBackgroundColorMenu">
                        <label><%=ViewData("olaPdtCode")%></label>
                    </div>
                    <div class="xW_DivProductCodeSub">
                        <div class="xW_DivProductCodeValue">
                              <input type="text"
                                     id="otbFTPdtCode"
                                     onblur="otbPdtCode_onblur()"       
                                     onkeydown="return otbPdtCode_onKeyDown(event.keyCode,event.which)" 
                                     onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which)"                      
                                     onfocus="J002_SETxKeepOldOnfocus('otbFTPdtCode','otbPdtCodeOld')"
                                     name="otbFTPdtCode" />
                              
                        </div>

                        <div class="xCN_DivBrowData">
                              <img id="oimBrwPdt" 
                                alt="" 
                                onclick="" 
                                class="xCN_DivBrowDataSetTopMargin xCN_ImgBrowData"
                                name="oimBrwPdt" 
                                src='<%=ViewData("oimgBrowse")%>' />
                        </div>
                    </div>                   
                </div>
                <div class="xW_DivProductName">
                    <div class="xW_DivProductNameCap xCN_AllBorderColor xCN_AllBackgroundColorMenu">
                        <label><%=ViewData("olaPdtName")%></label>
                    </div>
                    <div class="xW_DivProductNameSub">
                        <input type="text"
                               id="otbPdtName"
                               class="xCN_AllReadOnlyBGColor"
                               readonly="readonly"
                               name="otbPdtName" />
                    </div>
                </div>
                <div class="xW_DivProductUnit xCN_AllBorderColor">
                    <div class="xW_DivProductUnitCap xCN_AllBorderColor xCN_AllBackgroundColorMenu">
                        <label><%=ViewData("olaUnitName")%></label>
                    </div>
                    <div class="xW_DivProductUnitSub">
                        <input type="text" 
                               id="otbUnitName"
                               class="xCN_AllReadOnlyBGColor"
                               readonly="readonly"
                               name="otbUnitName"/>
                    </div>                   
                </div>       
                <div class="xW_DivProductUnit xCN_AllBorderColor">
                    <div class="xW_DivProductUnitCap xCN_AllBorderColor xCN_AllBackgroundColorMenu">
                        <label><%=ViewData("olaPdtPoint")%></label>
                    </div>
                    <div class="xW_DivProductUnitSub">
                        <input type="text"
                                id="otbPdtPoint"
                                name="otbPdtPoint"
                                class="xCN_AllReadOnlyBGColor"
                                readonly="readonly"
                                style="text-align:right" />
                    </div>                   
                </div>
                <div class="xW_DivProductUnit xCN_AllBorderColor">
                    <div class="xW_DivProductUnitCap xCN_AllBorderColor xCN_AllBackgroundColorMenu">
                        <label><%=ViewData("olaPdtQty")%></label>
                    </div>
                    <div class="xW_DivProductUnitSub">
                        <input type="text"
                                id="otbPdtQty"
                                name="otbPdtQty"
                                onkeypress="return otbPdtQty_onkeypress(event.keyCode,event.which)"                                
                                onkeydown="otbPdtQty_onkeydown(event.keyCode,event.which)"
                                style="text-align:right" />
                    </div>                   
                </div>
                <div class="xW_DivProductUnit xCN_AllBorderColor">
                    <div class="xW_DivProductUnitCap xCN_AllBorderColor xCN_AllBackgroundColorMenu">
                        <label><%=ViewData("olaPntAmt")%></label>
                    </div>
                    <div class="xW_DivProductUnitSub">
                        <input type="text" 
                               id="otbPntAmt"
                               name="otbPntAmt" 
                               class="xCN_AllReadOnlyBGColor"
                               readonly="readonly"
                               style="text-align:right" />
                    </div>                   
                </div>
                 <div class="xW_DivColumnAutoTab xCN_AllBorderColor">
                    <div class ="xW_DivCheckBoxAutoTab">
                        <input id="ockSendTab" type="checkbox" checked="checked" />
                    </div>
                    <div class="xW_DivColumnAutoTabCap">
                        <%=ViewData("olaAutoTab")%>
                    </div>
                </div>
            </div>
            <div  class="xW_DivFootter xCN_AllBorderColor">
                <div class="xW_DivFootterLeft" style="padding:5px 0px 0px 0px;">
                    <%--<input type="text" />--%>
                    <label style="font-size:10px; color:Gray;" >
                        <%=ViewData("ovd_olaRemarkCutPoint")%>
                    </label>
                </div>
                <div class="xW_DivFootterCenter xCN_AllBorderColor">
                    <div class="xW_DivPointPaid">
                        <%=ViewData("olaPointPaid")%>
                    </div>
                    <div class="xW_DivPointValue">
                        <input type="text"
                                id="otbPointPaid"
                                name="otbPointPaid" 
                                class="xCN_AllReadOnlyBGColor"
                                readonly="readonly"
                                style="text-align:right" />
                    </div>
                </div>
                <div class="xW_DivFootterRight xCN_AllBorderColor">
                    <div class="xW_DivPointPaid">
                        <%=ViewData("olaTotalUse")%>
                    </div>
                    <div class="xW_DivPointValue">
                        <input type="text" 
                                id="otbFCCghPntUsed"
                                name="otbFCCghPntUsed"
                                 value="<%=model.FCCghPntUsed %>"
                                 readonly="readonly" 
                                 class="xCN_AllReadOnlyBGColor"
                                 style="text-align:right" />
                    </div>
                </div>
            </div>
      </div>
    </div>
    
    <!------ UI ------->
    <!------- Browse Customer ------>
    <div id="odiBrwCst" title='<%=ViewData("olaBrwCst")%>' class="xCN_DivTabDisplay">
        <div id="Div1" class="xW_DivGridDetail" style="height:auto">
            <%Dim mnuNumber As Integer
                Dim nWidth(9) As Integer
                Dim tCaption(9) As String
                Dim tField(9) As String
                Dim nCount As Integer
                For Each item In ViewData("BrowseFieldCst")
                    mnuNumber = mnuNumber + 1
                Next
                nCount = 0
                For Each item In ViewData("BrowseFieldCst")
                    tField(nCount) = item
                    nCount += 1
                Next
                nCount = 0
                For Each item In ViewData("WidthFieldCst")
                    nWidth(nCount) = CInt(item * 750 / 100)
                    'Response.Write("<script>alert('" & nWidth(nCount) & "')</script>")
                    nCount += 1
                Next
                
                nCount = 0
                For Each item In ViewData("Caption")
                    tCaption(nCount) = item
                    nCount += 1
                Next
                %>
            
            <table>
                <tr style="height:400px">
                    <td align="center" valign="top">
                    <% 
                        Dim tController As String = ViewData("CtrlName")
                        Dim oCst As IEnumerable(Of cmlCNBrowseMaster)
                        oCst = ViewData("oC_BrwModel")
                        Dim gridDataBuilder = Html.Telerik().Grid(oCst).HtmlAttributes(New With {.style = "table-layout: fixed;white-space:nowrap;font:Tahoma, Geneva, sans-serif;font-size:11px"})
                        gridDataBuilder.Name("GridCst")
                        gridDataBuilder.Pageable(Function(page) page.PageSize(Session("nVB_CNBrwTop")))
                        'gridBuilder.Sortable()
                        If 1 <= mnuNumber Then
                            gridDataBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField01).Title(tCaption(0)).Width(nWidth(0)).HeaderHtmlAttributes(New With {.align = "center"}).HtmlAttributes(New With {.align = "left"}))
                        End If
                        If 2 <= mnuNumber Then
                            gridDataBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField02).Title(tCaption(1)).Width(nWidth(1)).HtmlAttributes(New With {.align = "left"}).ToString) '.Format("{0:dd/MM/yyyy}")
                        End If
                        If 3 <= mnuNumber Then
                            gridDataBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField03).Title(tCaption(2)).Width(nWidth(2)).HtmlAttributes(New With {.align = "left"}))
                        End If
                        If 4 <= mnuNumber Then
                            gridDataBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField04).Title(tCaption(3)).Width(nWidth(3)).HtmlAttributes(New With {.align = "left"}))
                        End If
                        If 5 <= mnuNumber Then
                            gridDataBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField05).Title(tCaption(4)).Width(nWidth(4)).HtmlAttributes(New With {.align = "left"}))
                        End If
                        If 6 <= mnuNumber Then
                            gridDataBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField06).Title(tCaption(5)).Width(nWidth(5)).HtmlAttributes(New With {.align = "left"}))
                        End If
                        If 7 <= mnuNumber Then
                            gridDataBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField07).Title(tCaption(6)).Width(nWidth(6)).HtmlAttributes(New With {.align = "left"}))
                        End If
                        If 8 <= mnuNumber Then
                            gridDataBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField08).Title(tCaption(7)).Width(nWidth(7)).HtmlAttributes(New With {.align = "left"}))
                        End If
                        If 9 <= mnuNumber Then
                            gridDataBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField09).Title(tCaption(8)).Width(nWidth(8)).HtmlAttributes(New With {.align = "left"}))
                        End If
                        If 10 <= mnuNumber Then
                            gridDataBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField10).Title(tCaption(9)).Width(nWidth(9)).HtmlAttributes(New With {.align = "left"}))
                        End If
                        
                        gridDataBuilder.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                          .Select("ogdMaster_SelectAjaxEditing", tController, _
                                  New With {.ptDate = "", _
                                            .ptFilterField = ViewData("FilterField"), _
                                            .ptFilterValue = ViewData("FilterValue"), _
                                            .ptCase = "Cst"})))
                       
                        gridDataBuilder.DataKeys(Function(keys) (keys.Add(Function(c) c.FTField01)))
                        gridDataBuilder.Selectable()
                        gridDataBuilder.Scrollable(Function(Scroll) Scroll.Height(350))
                        gridDataBuilder.ClientEvents(Function(Events) Events.OnRowSelect("onRowSelected"))
                        gridDataBuilder.ClientEvents(Function(Events) Events.OnLoad("gridCst_onLoad"))
                        gridDataBuilder.Render()
                        %>
                    </td>
                </tr>
            </table>
           <script type="text/javascript">
                var tReturnValue ='';
                function onRowSelected(peParam) {
                    var customerID = peParam.row.cells[0].innerHTML;
                    for(i=1;i< <%=mnuNumber%>;i++)
                    {
                        customerID += ';' + peParam.row.cells[i].innerHTML;
                    }
                    
                    tReturnValue = customerID;
                }
                function gridCst_onLoad() {
                    var oFieldCst = document.getElementById('otbFieldNameCst');
                    var columnCst = $('#GridCst th').eq(0).text();
                    document.getElementById("olaFilter").innerHTML = '<%=ViewData("olaFilterBy")%> : ' + columnCst;
                    switch(columnCst){
                        <%For nI = 0 To 9 %>
                            case '<%=tCaption(nI)%>':oFieldCst.value = '<%=tField(nI)%>';break;
                        <%Next %>
                    }
                    $('#GridCst tr', this).live('dblclick', function(e) {
                        var $tr = $(this);
                        W_SETxCstData(tReturnValue);
                        $ui("#odiBrwCst").dialog("close");
                    });
                    $('#GridCst th', this.element).live('click', function(e) {
                        var td = this;
                        var oFieldName = document.getElementById('otbFieldNameCst');
                        var columnName = $('#GridCst th').eq(td.cellIndex).text();
                        document.getElementById("olaFilter").innerHTML = '<%=ViewData("olaFilterBy")%> : ' + columnName;
                        switch(columnName){
                            <%For nI = 0 To 9 %>
                                case '<%=tCaption(nI)%>':oFieldName.value = '<%=tField(nI)%>';break;
                            <%Next %>
                        }
                    });
                }
                function W_PRCxFillCstData() {
                    var oFilField = window.document.getElementById('otbFieldNameCst');
                    var oFilValue = window.document.getElementById('otbFilterCst');
                    var ogdHD = $('#GridCst').data('tGrid');
                    var tDate = W_GETtTimestamp();
                    var tParamV = '';
                    var tParamF = oFilField.value; 
                    if (oFilValue.value != '') {
                        tParamV = oFilValue.value;
                    }
                    ogdHD.rebind({
                    ptDate: tDate, ptFilterField: encodeURI(tParamF), ptFilterValue: encodeURI(tParamV)
                    ,ptCase: encodeURI('Cst')
                    });
                }
            </script>
            <table border="1" width="100%">
                <tr>
                    <td style="text-align:left">
                        <label id="olaFilter"><%=ViewData("olaFilterBy")%></label>
                    </td>
                    <td style="width:70px; text-align:center">
                        <input id="ocmSelectCst" type = "button"  
                            value = '<%=ViewData("olaOK") %>' 
                            onclick = "W_SETxCstData(tReturnValue)" 
                            style="width:55px;" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align:left">                            
                        <input type = "text" id="otbFilterCst" 
                                maxlength="400" style=" width:400px" 
                                name="otbFilter" 
                                onkeypress="return W_DATxNoEnter(event.keyCode,event.which,'otbFilterCst')"/>
                        <input type = "hidden" value = '<%=ViewData("CtrlName")%>' id="otbCtrlNameCst" name="otbCtrlNameCst"/>
                        <input type = "hidden" value = "" id="otbFieldNameCst" name="otbFieldNameCst" />
                        <input type = "button" value = '<%=ViewData("olaFilter") %>' onclick="W_PRCxFillCstData()" />                            
                    </td>
                    <td style="text-align:center">
                        <input id="ocmCancel" type = "button" 
                            value = '<%=ViewData("olaCancel")%>' 
                            style="width:55px;" />
                    </td>
                </tr>
                
            </table>
        </div>
    </div>    
    <!------- Browse Product ------>
    <div id="odiBrwPdt" title='<%=ViewData("olaBrwPdt")%>' class="xCN_DivTabDisplay">
        <div id="Div3" class="xW_DivGridDetail" style="height:auto">
            <%  Dim mnuProduct As Integer
                Dim nWidthPdt(9) As Integer
                Dim tCaptionPdt(9) As String
                Dim tFieldPdt(9) As String
                Dim nCountPdt As Integer
                For Each item In ViewData("BrowseFieldPdt")
                    mnuProduct = mnuProduct + 1
                Next
                nCountPdt = 0
                For Each item In ViewData("BrowseFieldPdt")
                    tFieldPdt(nCountPdt) = item
                    nCountPdt += 1
                Next
                nCountPdt = 0
                For Each item In ViewData("WidthFieldPdt")
                    nWidthPdt(nCountPdt) = CInt(item * 750 / 100)
                    'Response.Write("<script>alert('" & nWidth(nCount) & "')</script>")
                    nCountPdt += 1
                Next
                
                nCountPdt = 0
                For Each item In ViewData("CaptionPdt")
                    tCaptionPdt(nCountPdt) = item
                    nCountPdt += 1
                Next
                %>
            
            <table>
                <tr style="height:400px">
                    <td align="center" valign="top">
                    <%                             
                        Dim oPdt As IEnumerable(Of cmlCNBrowseMaster)
                        oPdt = ViewData("oC_BrwModelPdt")
                        Dim gridDataPdt = Html.Telerik().Grid(oPdt).HtmlAttributes(New With {.style = "table-layout: fixed;white-space:nowrap;font:Tahoma, Geneva, sans-serif;font-size:11px"})
                        gridDataPdt.Name("GridPdt")
                        gridDataPdt.Pageable(Function(page) page.PageSize(Session("nVB_CNBrwTop")))
                        'gridBuilder.Sortable()
                        If 1 <= mnuProduct Then
                            gridDataPdt.Columns(Function(columns) columns.Bound(Function(o) o.FTField01).Title(tCaption(0)).Width(nWidthPdt(0)).HeaderHtmlAttributes(New With {.align = "center"}).HtmlAttributes(New With {.align = "left"}))
                        End If
                        If 2 <= mnuProduct Then
                            gridDataPdt.Columns(Function(columns) columns.Bound(Function(o) o.FTField02).Title(tCaption(1)).Width(nWidthPdt(1)).HtmlAttributes(New With {.align = "left"}).ToString) '.Format("{0:dd/MM/yyyy}")
                        End If
                        If 3 <= mnuProduct Then
                            gridDataPdt.Columns(Function(columns) columns.Bound(Function(o) o.FTField03).Title(tCaption(2)).Width(nWidthPdt(2)).HtmlAttributes(New With {.align = "left"}))
                        End If
                        If 4 <= mnuProduct Then
                            gridDataPdt.Columns(Function(columns) columns.Bound(Function(o) o.FTField04).Title(tCaption(3)).Width(nWidthPdt(3)).HtmlAttributes(New With {.align = "left"}))
                        End If
                        If 5 <= mnuProduct Then
                            gridDataPdt.Columns(Function(columns) columns.Bound(Function(o) o.FTField05).Title(tCaption(4)).Width(nWidthPdt(4)).HtmlAttributes(New With {.align = "left"}))
                        End If
                        If 6 <= mnuProduct Then
                            gridDataPdt.Columns(Function(columns) columns.Bound(Function(o) o.FTField06).Title(tCaption(5)).Width(nWidthPdt(5)).HtmlAttributes(New With {.align = "left"}))
                        End If
                        If 7 <= mnuProduct Then
                            gridDataPdt.Columns(Function(columns) columns.Bound(Function(o) o.FTField07).Title(tCaption(6)).Width(nWidthPdt(6)).HtmlAttributes(New With {.align = "left"}))
                        End If
                        If 8 <= mnuProduct Then
                            gridDataPdt.Columns(Function(columns) columns.Bound(Function(o) o.FTField08).Title(tCaption(7)).Width(nWidthPdt(7)).HtmlAttributes(New With {.align = "left"}))
                        End If
                        If 9 <= mnuProduct Then
                            gridDataPdt.Columns(Function(columns) columns.Bound(Function(o) o.FTField09).Title(tCaption(8)).Width(nWidthPdt(8)).HtmlAttributes(New With {.align = "left"}))
                        End If
                        If 10 <= mnuProduct Then
                            gridDataPdt.Columns(Function(columns) columns.Bound(Function(o) o.FTField10).Title(tCaption(9)).Width(nWidthPdt(9)).HtmlAttributes(New With {.align = "left"}))
                        End If
                        
                        gridDataPdt.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                          .Select("ogdMaster_SelectAjaxEditing", tController, _
                                  New With {.ptDate = "", _
                                            .ptFilterField = ViewData("FilterField"), _
                                            .ptFilterValue = ViewData("FilterValue"), _
                                            .ptCase = "Pdt"})))
                       
                        gridDataPdt.DataKeys(Function(keys) (keys.Add(Function(c) c.FTField01)))
                        gridDataPdt.Selectable()
                        gridDataPdt.Scrollable(Function(Scroll) Scroll.Height(350))
                        gridDataPdt.ClientEvents(Function(Events) Events.OnRowSelect("onRowSelectedPdt"))
                        gridDataPdt.ClientEvents(Function(Events) Events.OnLoad("grid_onLoadPdt"))
                        gridDataPdt.Render()
                        %>
                    </td>
                </tr>
            </table>
           <script type="text/javascript">
                var tReturnPdt ='';
                function onRowSelectedPdt(peParam) {
                    var aProductID = peParam.row.cells[0].innerHTML;
                    for(i=1;i< <%=mnuProduct%>;i++)
                    {
                        aProductID += ';' + peParam.row.cells[i].innerHTML;
                    }
                    
                    tReturnPdt = aProductID;
                }
                function grid_onLoadPdt() {
                    var oFieldName = document.getElementById('otbFieldNamePdt');
                    var columnName = $('#GridPdt th').eq(0).text();
                    $("#olaFilterPdt").html('<%=ViewData("olaFilterBy")%> : ' + columnName);
                    switch(columnName){
                        <%For nI = 0 To 9 %>
                            case '<%=tCaptionPdt(nI)%>':oFieldName.value = '<%=tFieldPdt(nI)%>';break;
                        <%Next %>
                    }
                    $('#GridPdt tr', this).live('dblclick', function(e) {
                        var $tr = $(this);
                        C_SETxPdtData(tReturnPdt);
                        $ui("#odiBrwPdt").dialog("close");
                      })
                    $('#GridPdt th', this.element).live('click', function(e) {
                        var td = this;
                        var oFieldName = document.getElementById('otbFieldNamePdt');
                        var columnName = $('#GridPdt th').eq(td.cellIndex).text();
                        $("#olaFilterPdt").html('<%=ViewData("olaFilterBy")%> : ' + columnName);
                        switch(columnName){
                            <%For nI = 0 To 9 %>
                                case '<%=tCaptionPdt(nI)%>':oFieldName.value = '<%=tFieldPdt(nI)%>';break;
                            <%Next %>
                        }
                    })
                }
                function W_PRCxFillPdtData() {                       
                    var oFilField = window.document.getElementById('otbFieldNamePdt');
                    var oFilValue = window.document.getElementById('otbFilterPdt');
                    var ogdHD = $('#GridPdt').data('tGrid');                             
                    var tDate = W_GETtTimestamp();
                    var tParamV = '';
                    var tParamF = oFilField.value; 
                    if (oFilValue.value != '') {
                        tParamV = oFilValue.value;
                    }
                    var tWhe = W_SETtWherePdt();
                    ogdHD.rebind({
                    ptDate: tDate, ptFilterField: encodeURI(tParamF), ptFilterValue: encodeURI(tParamV)
                    ,ptCase: encodeURI('Pdt'), ptWhe: encodeURI(tWhe)
                    });
                }
            </script>
            <table border="1" width="100%">
                <tr>
                    <td style="text-align:left">
                        <label id="olaFilterPdt"><%=ViewData("olaFilterBy")%></label>
                    </td>
                    <td style="width:70px; text-align:center">
                        <input id="ocmSelectPdt" type = "button"  
                            value = '<%=ViewData("olaOK") %>' 
                            onclick = "C_SETxPdtData(tReturnPdt)" 
                            style="width:55px;" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align:left">                            
                        <input type="text" id="otbFilterPdt" 
                                maxlength="400" style=" width:400px" 
                                name="otbFilterPdt" 
                                onkeypress="return W_DATxNoEnter(event.keyCode,event.which,'otbFilterPdt')"/>
                        <input type="hidden" value='<%=ViewData("CtrlName")%>' 
                                id="otbCtrlNamePdt" name="otbCtrlNamePdt"/>
                        <input type="hidden" id="otbFieldNamePdt" name="otbFieldNamePdt" />
                        <input type="button" value='<%=ViewData("olaFilter") %>' 
                                onclick="W_PRCxFillPdtData()" />                            
                    </td>
                    <td style="text-align:center">
                        <input id="ocmCancelPdt" type = "button" 
                            value = '<%=ViewData("olaCancel")%>' 
                            style="width:55px;" />
                    </td>
                </tr>
                
            </table>
        </div>
    </div>    
    
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
    <link rel="Stylesheet" href="<%=Url.Content("~/Content/AdaCss/Local/FCS_cvcTCNTCstGiftHD.css") %>" />
<script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J002_General.js") %>"></script>
<script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J003_SplashDialog.js") %>"></script>
<script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J004_LoadTransactionMenu.js") %>"></script>
<link href="<%=Url.Content("~/Content/AdaCss/Local/FCS_UI_Grid.css") %>" rel="stylesheet" type="text/css" />
<script type="text/javascript">
    //------------------ตัวแปรกลาง-----------------
    var tW_Controller = 'cvcTCNTCstGiftHD';
    var nW_DecAmtForShw = '<%=Session("nVB_CNDecAmtForShw")%>';
    var nW_DecAmtForSav = '<%=Session("nVB_CNDecAmtForSav")%>';
    var nW_StaDoc = 0; // 1 : บันทึก
    var oW_xmlHttp;
    var nW_StaDocCancel = 0;
    var nW_StaPrcDoc = 0;
    var tW_MidHD = 'Cgh';
    var tW_Menu = 'omnPdtGiftPoint';
    var tW_BrowDoc = "1";
    var tW_ObjOldValue = '';
    var tW_CheckObj = 'odtFDCghDocDate|otbFTCstCode|otbFTCghCtrName|otbFTCghRmk|otbFCCghPntUsed|otbFNCghStaDocAct';
    var tW_RptDefName;
    var tW_RptUsrName;
    var tW_RptSel; // Jaruporn เก็บสถานะการเลือกดูรายงาน
    var tW_RptType = '0';
    var tCN_LoadTranMenuRetMessage; //*CH 25-05-2012
    var tCN_LoadTranMenuRetStatus; //*CH 25-05-2012
    var tCN_LoadTranMenuRetChkMsg; //*CH 25-05-2012
    var tW_StaSavDoc = '0'; //0 ยังไม่บันทึก,1 บันทึกแล้ว  //*CH 25-05-2012

    window.onload = W_FRMxIniatial;

    function W_FRMxIniatial() {
        try {
            tJ002_VirtualDirectory = '<%=ViewData("VirtualDirectory") %>';
            tJ003_VirtualDirectory = '<%=ViewData("VirtualDirectory") %>';
            tJ004_VirtualDirectory = '<%=ViewData("VirtualDirectory") %>';
            if ('<%=ViewData("AuthorRead") %>' != '1') {
                var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Read%>';
                var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
                var tPwdAllow = '<%=Session("bVB_CNPwdAllow")%>';
                var bAllow = J002_CHKtCheckAuthorize(tW_Menu, tAuthor, tPwdAllow, tMsgNotAuthorize);
                if (bAllow == false) {
                    window.location = '<%=Url.Action("Index","Home") %>';
                    return false;
                }
            }
            W_GETtCustomerData(true, "1"); //*CH 21/10/11 Old
            //W_GETtCustomerData(true, "2"); //*CH 21/10/11 New

            //W_GETtSplData(true, "1");//*CH 21/10/11 เก็บแต้มและชื่อผู้จำหน่าย
            W_GETxUsrAndDptName();
            document.getElementById('otbFCCghPntUsed').value = J002_DECcRound('<%=model.FCCghPntUsed %>', nW_DecAmtForShw, true);
            document.getElementById('otbFCCghPntAtChe').value = J002_DECcRound('<%=model.FCCghPntAtChe %>', nW_DecAmtForShw, true);
            W_DATxCalPointTotal();
            W_SETbStaDocActive();
            W_SETxDocDisplayStatus();
            W_SHWxDocStatus('odiNoneApprove', 'odiApprove', 'odiCancel');
            tW_ObjOldValue = '<%=ViewData("OldObjeValue")%>';
            W_SHWxWhoAppv(); //*CH 14-02-12 เมื่ออนุมัติให้แสดงชื่อผู้อนุมัติ
            //W_CALxPointPaid();
            W_CALxCurrentPoint();

            var tSplCode = document.getElementById('otbFTSplCode').value;
            if (tSplCode != "") {
                W_GETtSplData(true, "1"); //*CH 21/10/11 เก็บแต้มและชื่อผู้จำหน่าย
                W_CALxCurrentPointBySpl();
                document.getElementById('otbFCPntSpl').value = J002_DECcRound('<%=model.FCPntSpl %>', nW_DecAmtForShw, true); //*CH 29-1-11
            }
            //W_CALxPointPaidSavApp(); //*CH 21-10-11
            W_CALxPointPaid(); //*CH 29-12-11 ไว้หลังสุด
        }
        catch (ex) {
            J002_SHWxMsgError("W_FRMxIniatial", ex);
        }

    }

    function W_SHWxWhoAppv() {
        if (nW_StaPrcDoc == 1) {
            $("#otbFTCghApvName").val('<%=model.FTWhoUpd%>');
        }
    }

    function W_CALxPointPaidSavApp() {
        try {
            var nPointUse = document.getElementById("otbFCCghPntUsed").value;
            var nCurrPoint = 0;
            var nPointPaid = 0;

            // ดูว่าใช้แต้มของลูกค้าหรือว่าแต้มตามผู้จำหน่าย *CH 18-10-11
            var tSplCode = document.getElementById("otbFTSplCode").value;
            if (tSplCode != "") {
                nCurrPoint = document.getElementById("otbFCPntSpl").value;
            } else {
                nCurrPoint = document.getElementById("otbFCCghPntAtChe").value;
            }

            //*CH 21-10-11 แสดงแต้มคงเหลือตามการอนุมัติ
            if (nW_StaPrcDoc == "1") {
                nPointPaid = J002_GETcNumber(nCurrPoint);
            } else {
                nPointPaid = J002_GETcNumber(nCurrPoint) - J002_GETcNumber(nPointUse);
            }
            document.getElementById("otbPointPaid").value = J002_DECcRound(nPointPaid, nW_DecAmtForShw, true);
        }
        catch (ex) {
            J002_SHWxMsgError("W_CALxPointPaidSavApp", ex);
        }

    }

    function W_CALxPointPaid() {
        try {
            var nPointUse = document.getElementById("otbFCCghPntUsed").value;
            //var nCurrPoint = document.getElementById("otbFCCghPntAtChe").value; //*CH 18-10-11 Old
            //var nPointPaid = J002_GETcNumber(nCurrPoint) - J002_GETcNumber(nPointUse); //*CH 18-10-11 Old
            var nCurrPoint = 0;
            var nPointPaid = 0;

            // ดูว่าใช้แต้มของลูกค้าหรือว่าแต้มตามผู้จำหน่าย *CH 18-10-11
            var tSplCode = document.getElementById("otbFTSplCode").value;
            if (tSplCode != "") {
                nCurrPoint = document.getElementById("otbFCPntSpl").value;
            } else {
                nCurrPoint = document.getElementById("otbFCCghPntAtChe").value;
            }
            nPointPaid = J002_GETcNumber(nCurrPoint) - J002_GETcNumber(nPointUse);

            document.getElementById("otbPointPaid").value = J002_DECcRound(nPointPaid, nW_DecAmtForShw, true);
        }
        catch (ex) {
            J002_SHWxMsgError("W_CALxPointPaid", ex);
        }

    }

    function W_SETxStaDocAct() {
        if (document.getElementById('ockFNCghStaDocAct').checked == true) {
            document.getElementById('otbFNCghStaDocAct').value = '1';
        }
        else {
            document.getElementById('otbFNCghStaDocAct').value = '0';
        }
    }

    function W_CALxCurrentPoint() {
        try {

            if (!(nW_StaPrcDoc == '1' || nW_StaDoc == '1')) {

                var nPointAtChe = J002_GETcNumber(document.getElementById("otbFCCghPntAtChe").value);
                var nPointUsed = J002_GETcNumber(document.getElementById("otbFCCghPntUsed").value);
                //   alert(nPointAtChe + " ee " + nPointUsed);
                var nCurrPoint = nPointAtChe;
                document.getElementById("otbFCCstRetPoint").value = J002_DECcRound(nCurrPoint, nW_DecAmtForShw, true);
                document.getElementById("otbPointPaid").value = J002_DECcRound(nCurrPoint - nPointUsed, nW_DecAmtForShw, true);

                //*Chuck 14102011
                //document.getElementById('otbFTSplCode').value = "";
                //document.getElementById('otbFTSplName').value = "";
                //document.getElementById('otbFCPntSpl').value = J002_DECcRound(0, nW_DecAmtForShw, true);
            }
        }
        catch (ex) {
            J002_SHWxMsgError("W_CALxCurrentPoint", ex);
        }
    }

    // --เมื่อมีการดึงแต้มตามผู้จำหน่าย แต้มที่สามารถใช้ได้คือแต้มตามผู้จำหน่าย *Chuck 17102011
    function W_CALxCurrentPointBySpl() {
        try {
            if (!(nW_StaPrcDoc == '1' || nW_StaDoc == '1')) {
                var nPointAtCheBySpl = J002_GETcNumber(document.getElementById('otbFCPntSpl').value);
                var nPointUsedBySpl = J002_GETcNumber(document.getElementById('otbFCCghPntUsed').value);

                document.getElementById('otbFCSplRetPoint').value = J002_DECcRound(nPointAtCheBySpl, nW_DecAmtForShw, true);
                document.getElementById('otbPointPaid').value = J002_DECcRound(nPointAtCheBySpl - nPointUsedBySpl, nW_DecAmtForShw, true);
                document.getElementById('otbFTPdtCode').focus();

                //*CH 11-11-11 เมื่อไม่มีแต้มใม่ให้แสดง
                var nPointSpl = document.getElementById('otbFCSplRetPoint').value;
                if (nPointSpl == 0) {
                    document.getElementById('otbFTSplCode').value = "";
                    document.getElementById('otbFTSplName').value = "";
                    document.getElementById('otbFCSplRetPoint').value = J002_DECcRound(nPointAtCheBySpl, nW_DecAmtForShw, true);
                    alert('<%=ViewData("tMsgDAT_Notfound001") & ViewData("ovd_olaSplCode")%>');
                    W_CALxCurrentPoint();
                    document.getElementById('otbFTSplCode').focus();
                }
            }
        }
        catch (ex) {
            J002_SHWxMsgError("W_CALxCurrentPointBySpl", ex);
        }
    }

    //-------------------------------------------
    function W_DATxBrowseCst() {

        try {
            J003_SHWxWaiting();
            var tOldCode = document.getElementById("otbFTCstCodeOld").value; //*CH 05-11-11
            var ptCase = "CstCode";
            var tDate = J002_GETtTimeStamp()            
            var tUrl = '<%=Url.Action("C_BRWxMaster","cvcTCNTCstGiftHD") %>' + '?ptCase=' + ptCase + '&ptDate=' + tDate;
            var tReturnedValue = showModalDialog(encodeURI(tUrl), "Passed String", "dialogWidth:800px; dialogHeight:500px; status:no; center:yes;titlebar =0")
            if (tReturnedValue != undefined) {
                if (tReturnedValue != '12233344445555566666677777778888888899999999900000000001223334444555556666667777777888888889999999990000000000') {
                    var tCstCode = tReturnedValue.split(";")[0];
                    document.getElementById("otbFTCstCode").value = tCstCode;

                    //*CH 05-11-11 ตรวจสอบว่ารหัสลูกค้าใหม่
                    if (tOldCode != tCstCode) {
                        document.getElementById('otbFTSplCode').value = "";
                        document.getElementById('otbFTSplName').value = "";
                        document.getElementById('otbFCPntSpl').value = J002_DECcRound(0, nW_DecAmtForShw, true);
                    }

                    document.getElementById('otbFTSplCode').focus(); //*Chuck 14102011
                    var bConfirm;
                    var tOldCode = document.getElementById("otbFTCstCodeOld").value;
                    //                    if (tCstCode != "" && tCstCode != null) 
                    //                    {
                    //                       W_GETtCustomerData(false,"2");                             
                    //                        return true;
                    //                    }

                    var nPdtCount = W_GETtPdtCount();
                    if (tCstCode != "" && tCstCode != null) {
                        if ((tOldCode != null && tOldCode != "" && nPdtCount > 0) && (tCstCode != tOldCode)) {
                            bConfirm = confirm('<%= ViewData("tMsgClearCstCode") %>');
                            if (bConfirm == true) {
                                W_CLRxDataDT();

                            }
                            else {
                                return false;
                            }

                        }

                        W_GETtCustomerData(false, '2');
                        return true;
                    }
                }
            }
        }
        catch (ex) {
            J002_SHWxMsgError("W_DATxBrowseCst", ex);
        }
        finally {
            J003_DISxWaiting();
        }
    }
    function W_DATxBrowseMaster(ptObjCode, ptObjName, ptTblName) {
        //Chuck 06102011
        try {
            var tCstCode = document.getElementById('otbFTCstCode').value;
            var tCstName = escape(document.getElementById('otbFTCstName').value); //ทำให้อ่านภาษาไทยได้
            document.getElementById('otbFCPntSpl').value = J002_DECcRound(0, nW_DecAmtForShw, true); //*CH 05-11-11
            if (tCstCode != "") {
                J003_SHWxWaiting();
                var tDate = J002_GETtTimeStamp();
                var tUrl = '<%=Url.Action("C_BRWxSupplier","cvcTCNTCstGiftHD") %>';
                var tReturnedValue = showModalDialog(tUrl + '?ptTblName=' + ptTblName + '&ptDate=' + tDate + '&ptCstCode=' + tCstCode + '&ptCstName=' + tCstName, "Passed String", "dialogWidth:800px; dialogHeight:500px; status:no; center:yes;titlebar =0");
                var nPointSpl = 0;
                if (tReturnedValue != null) {
                    //                    alert(tReturnedValue);
                    if (tReturnedValue != '12233344445555566666677777778888888899999999900000000001223334444555556666667777777888888889999999990000000000') {
                        document.getElementById(ptObjCode).value = tReturnedValue.split(";")[0];
                        if (ptObjName != null && ptObjName != '') {
                            document.getElementById(ptObjName).value = tReturnedValue.split(";")[1];
                            nPointSpl = tReturnedValue.split(";")[2];
                            document.getElementById('otbFCPntSpl').value = J002_DECcRound(nPointSpl, nW_DecAmtForShw, true);
                        }
                        if (ptObjCode == 'otbFTSplCode' && J002_CHKbIsBlankValue('otbFCPntSpl') == true) {
                            //alert(tReturnedValue);
                            document.getElementById('otbFTSplCode').value = tReturnedValue.split(";")[0];
                            document.getElementById('otbFTSplName').value = tReturnedValue.split(";")[1];
                            //                            document.getElementById('otbFCPntSpl').value = tReturnedValue.split(";")[2];
                            nPointSpl = tReturnedValue.split(";")[2];
                            document.getElementById('otbFCPntSpl').value = J002_DECcRound(nPointSpl, nW_DecAmtForShw, true);
                        }
                        //                        document.getElementById('otbFCPntSpl').value = tReturnedValue.split(";")[2];
                        W_GETtSplData(false, '2');
                    }
                }
            }
            else {
                alert('<%=ViewData("ovd_tMsgSearchSpl")%>');
            }
        }
        catch (ex) {
            J002_SHWxMsgError('W_DATxBrowseMaster', ex);
        }
        finally {
            J003_DISxWaiting();
        }
    }
    function W_CLRxDataDT() {
        try {

            var tDataTimeNow = J002_GETtTimeStamp();
            var tUrl = '<%=Url.Action("C_CLRxDataDT","cvcTCNTCstGiftHD") %>' + "?ptDateTimeNow=" + tDataTimeNow;
            oW_xmlHttp = J002_GEToXMLHttpRequest();
            oW_xmlHttp.open("GET", encodeURI(tUrl), false);
            oW_xmlHttp.send(null);
            document.getElementById("otbPointPaid").value = 0;
            document.getElementById("otbFCCghPntUsed").value = 0;

            //*Chuck 14102011
            document.getElementById("otbFCPntSpl").value = 0;
            document.getElementById("otbFTSplCode").value = "";
            document.getElementById("otbFTSplName").value = "";
        }
        catch (ex) {
            J002_SHWxMsgError("W_CLRxDataDT", ex);
        }
    }
    function W_CHKbPointOver() {
        var tDocNo = document.getElementById('otbFTCghDocNo').value;
        var tUrl = '<%=Url.Action("C_CHKtUsePointOver","cvcTCNTCstGiftHD") %>' + "?ptDocNo=" + tDocNo + "&ptDateTimeNow=" + Math.random();
        oW_xmlHttp = J002_GEToXMLHttpRequest();
        oW_xmlHttp.open("GET", encodeURI(tUrl), false);
        oW_xmlHttp.send(null);
        var tReturn = oW_xmlHttp.responseText;
        tReturn = J002_GETcNumber(tReturn);
        if (tReturn == '1') {
            return true;
        }
        return false;
    }
    function W_CHKbPointChange() {
        var tCst = document.getElementById('otbFTCstCode').value;
        var tUrl = '<%=Url.Action("C_GETtCurrentCstPointClientSide","cvcTCNTCstGiftHD") %>' + "?ptCstCode=" + tCst + "&ptDateTimeNow=" + Math.random();
        oW_xmlHttp = J002_GEToXMLHttpRequest();
        oW_xmlHttp.open("GET", encodeURI(tUrl), false);
        oW_xmlHttp.send(null);
        var tReturn = oW_xmlHttp.responseText;
        var tPoint = document.getElementById('otbFCCghPntAtChe').value;
        tReturn = J002_GETcNumber(tReturn);
        tPoint = J002_GETcNumber(tPoint);
        if (tReturn != tPoint) {
            document.getElementById('otbFCCghPntAtChe').value = tReturn;
            W_DATxCalPointBalance();
            return true;
        }
        return false;
    }
    function W_DATxCalPointBalance() {
        try {
            var nPntUsed = J002_GETcNumber(document.getElementById("otbFCCghPntUsed").value);
            var nPntAtChe = J002_GETcNumber(document.getElementById("otbFCCghPntAtChe").value);
            var cBalance = nPntAtChe - nPntUsed;
            document.getElementById("otbPointPaid").value = J002_DECcRound(cBalance, nW_DecAmtForShw, true);
        }
        catch (ex) {
            J002_SHWxMsgError("W_DATxCalPointBalance", ex);
        }
    }

    function W_GETtCustomerData(pbOnload, ptFlag) {
        try {
            var tDataTimeNow = J002_GETtTimeStamp();
            var tCst = $("#otbFTCstCode").val();
            var tOldSpl = $("#otbFTCstCodeOld").val();
            var tFlag;
            if (ptFlag == null || ptFlag == "") {
                tFlag = "1"
            }
            else {
                tFlag = ptFlag;
            }
            var tUrl = '<%=Url.Action("C_GETxCustomerData","cvcTCNTCstGiftHD") %>' + "?ptCstCode=" + tCst + '&ptFindFlag=' + tFlag + "&ptDateTimeNow=" + tDataTimeNow;
            oW_xmlHttp = J002_GEToXMLHttpRequest();
            oW_xmlHttp.open("GET", encodeURI(tUrl), false);
            oW_xmlHttp.send(null);
            var valueFis = oW_xmlHttp.responseText;
            if (valueFis == "|Nothing") {
                document.getElementById("otbFCCghPntUsed").value = J002_DECcRound(0, nW_DecAmtForShw, true);
                document.getElementById("otbPointPaid").value = J002_DECcRound(0, nW_DecAmtForShw, true);
                document.getElementById("otbFCCstRetPoint").value = J002_DECcRound(0, nW_DecAmtForShw, true);
                document.getElementById("otbFCCghPntAtChe").value = J002_DECcRound(0, nW_DecAmtForShw, true);
                document.getElementById("otbFCPntSpl").value = J002_DECcRound(0, nW_DecAmtForShw, true);
                document.getElementById('otbFTCstCode').focus();

                return false;

            }

            if (pbOnload == false) {
                if (valueFis == "|DocNotApprove") {
                    alert('<%=ViewData("tMsgCstGift_DocNotApprove")%>');
                    document.getElementById('otbFTCstCode').value = '';
                    document.getElementById('otbFTCstCode').focus();

                    return false;

                }
            }


            var aCstData = valueFis.split("|");
            if (valueFis == "||") {
                alert('<%=ViewData("tMsgDAT_Notfound001") & ViewData("olaCstCode")%>');
                document.getElementById('otbFTCstCode').value = tOldSpl;
                document.getElementById('otbFTCstCode').focus();

                return false;
            }
            else {
                document.getElementById('otbFTCstCode').value = aCstData[1]; //*CH 03-11-11 แสดงรหัสลูกค้า และ เปลี่ยนตำแหน่ง aCstData ทั้งหมด            
                document.getElementById("otbFTCstName").value = aCstData[2];
                document.getElementById("otbFTCstAddr").value = aCstData[3];
                document.getElementById("otbFTCstTel").value = aCstData[4];
                document.getElementById("otbFTCstFax").value = aCstData[5];
                document.getElementById("otbFCCghPntAtChe").value = J002_DECcRound(aCstData[6], nW_DecAmtForShw, true);
                document.getElementById("otbFCCstRetPoint").value = J002_DECcRound(aCstData[6], nW_DecAmtForShw, true);
                document.getElementById("otbFCPntSpl").value = J002_DECcRound(0, nW_DecAmtForShw, true);

                // W_CALxPointPaid();

                W_CALxCurrentPoint();
            }

        }
        catch (ex) {
            J002_SHWxMsgError("W_GETtCustomerData ", ex);
        }
    }

    function W_GETtSplData(pbOnload, ptFlag) {
        //*Chuck 12102011
        try {
            var tDataTimeNow = J002_GETtTimeStamp();
            var tCst = $("#otbFTCstCode").val();
            var tSpl = $("#otbFTSplCode").val();
            var tOldSpl = $("#otbFTSplCodeOld").val();
            var tFlag;
            if (ptFlag == null || ptFlag == "") {
                tFlag = "1"
            }
            else {
                tFlag = ptFlag;
            }
            var tUrl = '<%=Url.Action("C_GETxSplData","cvcTCNTCstGiftHD") %>' + "?ptCstCode=" + tCst + "&ptSplCode=" + tSpl + '&ptFindFlag=' + tFlag + "&ptDateTimeNow=" + tDataTimeNow;
            oW_xmlHttp = J002_GEToXMLHttpRequest();
            oW_xmlHttp.open("GET", encodeURI(tUrl), false);
            oW_xmlHttp.send(null);
            var valueFis = oW_xmlHttp.responseText;
            if (valueFis == "|Nothing") {
                document.getElementById("otbFCPntSpl").value = J002_DECcRound(0, nW_DecAmtForShw, true);

                return false;

            }

            var aSplData = valueFis.split("|");
            if (valueFis == "||") {
                alert('<%=ViewData("tMsgDAT_Notfound001") & ViewData("olaSplCode")%>');
                document.getElementById('otbFTSplCode').value = tOldSpl;
                document.getElementById('otbFTCghCtrName').focus();
                alert("Error");
                return false;
            }
            else {
                var tSplCode = document.getElementById('otbFTSplCode').value = aSplData[1]; //*CH 03-11-11 แสดงรหัสผู้จำหน่ายจากฐานข้อมูล
                document.getElementById("otbFTSplName").value = aSplData[2];
                document.getElementById("otbFCPntSpl").value = J002_DECcRound(aSplData[3], nW_DecAmtForShw, true);

                // W_CALxPointPaid();
                if (tSplCode != "") {
                    W_CALxCurrentPointBySpl();
                } else if (tCst != "") {
                    W_CALxCurrentPoint();
                }
            }

        }
        catch (ex) {
            J002_SHWxMsgError("W_GETtSplData ", ex);
        }
    }

    function W_GETtDocNo() {
        try {
            if (nW_StaDoc == 1) {
                return false;
            }
            J002_SETxReadOnly("otbFTCghDocNo", false);
            var tDataTimeNow = J002_GETtTimeStamp();
            var tUrl = '<%=Url.Action("C_GENtDocumentNo","cvcTCNTCstGiftHD") %>' + "?tDataTimeNow=" + tDataTimeNow;
            var oXmlHttp = J002_GEToXMLHttpRequest();
            oXmlHttp.open("GET", encodeURI(tUrl), false);
            oXmlHttp.send(null);
            var tValue = oXmlHttp.responseText;
            if (tValue.split("|")[0] != "" && tValue.split("|")[0] != null) {
                alert(tValue.split("|")[0]);
                return false;
            }
            document.getElementById("otbFTCghDocNo").value = tValue.split("|")[1];
        }
        catch (ex) {
            J002_SHWxMsgError("W_GETtDocNo", ex);
        }
    }

    function W_FRMxNewDoc() {
        try {
            J003_SHWxWaiting();

            tW_BrowDoc = '1';
            var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Add%>';
            var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
            var tPwdAllow = '<%=Session("bVB_CNPwdAllow")%>';
            var bAllow = J002_CHKtCheckAuthorize(tW_Menu, tAuthor, tPwdAllow, tMsgNotAuthorize);

            if (bAllow == false) {
                return false;
            }
            var bDataChange = false;
            //alert(nW_StaDocCancel + ' - ' + nW_StaPrcDoc);
            bDataChange = W_CHKbDataChange(nW_StaDocCancel, nW_StaPrcDoc, tW_ObjOldValue, tW_CheckObj, '<%=Session("nVB_CNDecAmtForSav")%>');  // ตรวจสอบว่าข้อมูลมีการเปลี่ยนเแปลงหรือไม่
            if (bDataChange == true) {
                var tReturn;
                tReturn = J003_SHWxConfirmDialog('<%=ViewData("tMsgSave_Warning")%>', oJ003_DialogType.DialogYesNoCancel, '<%=ViewData("tProgramName")%>', oJ003_DialogIcon.Warning);
                switch (tReturn) {
                    case oJ003_DialogResult.Yes:
                        if (W_DATxSaveDocument('2') == false) {
                            return false;
                        }
                        break;
                    case oJ003_DialogResult.Cancel:
                        return false;
                        break;
                }
            }
            else {
                bDataChange = W_CHKbChangeDataDT();
                //alert(bDataChange);
                if (bDataChange == true) {
                    var tReturn = J003_SHWxConfirmDialog('<%=ViewData("tMsgSave_Warning")%>', oJ003_DialogType.DialogYesNoCancel, '<%=ViewData("tProgramName")%>');
                    switch (tReturn) {
                        case oJ003_DialogResult.Yes:
                            if (W_DATxSaveDocument('2') == false) {
                                return false;
                            }
                            break;
                        case oJ003_DialogResult.Cancel:
                            return false;
                            break;
                    }
                }
            }

            var tdate = J002_GETtTimeStamp();
            J004_FRMxNewDoc(tdate, 'Index' + '?ptAuthorRead=1', tW_Controller);
        }
        catch (ex) {
            J002_SHWxMsgError("W_FRMxNewDoc", ex);
        }
        finally {
            J003_DISxWaiting();
        }

    }

    function W_FRMxCancelDoc() {
        try {
            if (nW_StaDoc == 0) {
                alert('<%=ViewData("tMsgNoCancelNoSave")%>');
                return 0;
            }
            if (nW_StaDocCancel == 1) {
                alert('<%=ViewData("tMsgNoCancelCancel")%>');
                return 0;
            }
            if (nW_StaPrcDoc == 1) {
                alert('<%=ViewData("tMsgNoCancelApp")%>');
                return 0;
            }
            J003_SHWxWaiting();
            var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Cancel%>';
            var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
            var tPwdAllow = '<%=Session("bVB_CNPwdAllow")%>';
            var bAllow = J002_CHKtCheckAuthorize(tW_Menu, tAuthor, tPwdAllow, tMsgNotAuthorize);
            if (bAllow == false) {
                return false;
            }
            var bConfirm = confirm('<%=ViewData("tMsgConfirmCancel")%>');
            if (bConfirm == true) {
                var tBchcode = document.getElementById('otbFTBchCode').value;
                var tDocType = document.getElementById('otbFT' + tW_MidHD + 'DocType').value;
                var tdate = J002_GETtTimeStamp();
                J004_FRMxCancelDoc(tdate, 'C_FRMxCancelDoc', tW_Controller, 'otbFTCghDocNo', tDocType, tBchcode);
                nW_StaDocCancel = 1;
                nW_StaDoc = 3;
                W_SHWxDocStatus('odiNoneApprove', 'odiApprove', 'odiCancel');
                W_CLRxTextBox();
                W_SETxDisableAll(true);
            }
        }
        catch (ex) {
            J002_SHWxMsgError("W_FRMxCancelDoc", ex);
        }
        finally {
            J003_DISxWaiting();
        }

    }

    function W_FRMxDelDoc() {
        try {
            J003_SHWxWaiting();

            if (nW_StaDoc == 0) {
                alert('<%=ViewData("tMsgNoDelNoSave") %>');
                return 0;
            }
            if (nW_StaDocCancel == 1) {
                alert('<%=ViewData("tMsgNoDelCancel") %>');
                return 0;
            }
            if (nW_StaPrcDoc == 1) {
                alert('<%=ViewData("tMsgNoDelApp") %>');
                return 0;
            }

            var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Delete%>';
            var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
            var tPwdAllow = '<%=Session("bVB_CNPwdAllow")%>';
            var bAllow = J002_CHKtCheckAuthorize(tW_Menu, tAuthor, tPwdAllow, tMsgNotAuthorize);
            if (bAllow == false) {
                return false;
            }

            var tDateTimeNow = J002_GETtTimeStamp();
            var tDocNo = document.getElementById("otbFT" + tW_MidHD + "DocNo").value;
            var tBchCode = document.getElementById("otbFTBchCode").value;
            var tDocType = document.getElementById("otbFT" + tW_MidHD + "DocType").value;
            var tUrl;
            tUrl = '<%=Url.Action("C_DATbCheckLastDocNo","cvcTCNTCstGiftHD") %>' + '?ptDocNo=' + tDocNo + '&ptBchCode=' + tBchCode + '&ptDocType=' + tDocType + '&ptDate=' + tDateTimeNow;
            oW_xmlHttp = J002_GEToXMLHttpRequest();
            oW_xmlHttp.open("GET", encodeURI(tUrl), false);
            oW_xmlHttp.send(null);
            if (oW_xmlHttp.responseText == "1") {
                var bConfirm = confirm('<%=ViewData("tMsgConfirmDelete")%>');
                if (bConfirm == true) {
                    tUrl = '<%=Url.Action("C_DATbDeleteDocNo","cvcTCNTCstGiftHD") %>' + '?ptDocNo=' + tDocNo + '&ptBchCode=' + tBchCode + '&ptDocType=' + tDocType + '&ptDate=' + tDateTimeNow;
                    oW_xmlHttp = J002_GEToXMLHttpRequest();
                    oW_xmlHttp.open("GET", encodeURI(tUrl), false);
                    oW_xmlHttp.send(null);
                    if (oW_xmlHttp.responseText == "1") {
                        alert('<%=ViewData("tMsgDelcom")%>')
                        tUrl = '<%=Url.Action("Index","cvcTCNTCstGiftHD") %>' + '?ptAuthorRead=1';
                        window.location = tUrl;
                        return true;

                    }
                    else {
                        alert('<%=ViewData("tMsgDelNocom")%>')
                        return true;
                    }
                }

            }
            else {
                alert('<%=ViewData("tMsgNoDocLast")%>');
                return false;
            }
        }
        catch (ex) {
            J002_SHWxMsgError("W_FRMxDelDoc", ex);
        }
        finally {
            J003_DISxWaiting();
        }

    }


    function W_FRMxPostDoc() {
        try {
            if (nW_StaDoc == 0) {
                alert('<%=ViewData("tMsgNoAppNoSave")%>');
                return 0;
            }
            if (nW_StaDocCancel == 1) {
                alert('<%=ViewData("tMsgNoAppCancel")%>');
                return 0;
            }
            if (nW_StaPrcDoc == 1) {
                alert('<%=ViewData("tMsgNoAppApp")%>');
                return 0;
            }
            var bStaDocAct = document.getElementById('ockFNCghStaDocAct').checked;
            if (bStaDocAct == false) {
                alert('<%=ViewData("tMsgNoAppStaDocDonotAct")%>');
                return 0;
            }
            //            var cPointUsed = J002_GETcNumber(document.getElementById("otbFCCghPntUsed").value);
            //            var cPointCurrent = J002_GETcNumber(document.getElementById("otbFCCghPntAtChe").value);

            //            if (cPointUsed > cPointCurrent) {
            //                alert('<%=ViewData("tMsgCstGift_NotAppv")%>');
            //                return false;
            //            }

            if (W_CHKbCustomerPoint() == false) {
                alert('<%=ViewData("tMsgCstGift_NotAppv")%>');
                return false;
            }

            J003_SHWxWaiting();

            if (W_CHKbPointChange() == true) {
                var bResult = confirm('<%=ViewData("tMsgCstPointChange") %>');
                if (bResult == false) {
                    return false;
                }
            }
            var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Approve%>';
            var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
            var tPwdAllow = '<%=Session("bVB_CNPwdAllow")%>';
            var aAlwUsrCode = new Array();
            var bAllow = J002_CHKtCheckAuthorize(tW_Menu, tAuthor, tPwdAllow, tMsgNotAuthorize, aAlwUsrCode);
            var tApvCode = aAlwUsrCode[0];
            if (bAllow == false) {
                return false;
            }
            var bDataChange = false;
            bDataChange = W_CHKbDataChange(nW_StaDocCancel, nW_StaPrcDoc, tW_ObjOldValue, tW_CheckObj, '<%=Session("nVB_CNDecAmtForSav")%>');  // ตรวจสอบว่าข้อมูลมีการเปลี่ยนเแปลงหรือไม่
            if (bDataChange == true) {

                var tReturn = J003_SHWxConfirmDialog('<%=ViewData("tMsgSave_Warning")%>', oJ003_DialogType.DialogYesNoCancel, '<%=ViewData("tProgramName")%>');
                switch (tReturn) {
                    case oJ003_DialogResult.Yes:
                        if (W_DATxSaveDocument('1') == false) {
                            return false;
                        }
                        break;
                    case oJ003_DialogResult.Cancel:
                        return false;
                        break;
                }
            }
            else {
                bDataChange = W_CHKbChangeDataDT();
                if (bDataChange == true) {
                    var tReturn = J003_SHWxConfirmDialog('<%=ViewData("tMsgSave_Warning")%>', oJ003_DialogType.DialogYesNoCancel, '<%=ViewData("tProgramName")%>');
                    switch (tReturn) {
                        case oJ003_DialogResult.Yes:
                            if (W_DATxSaveDocument('1') == false) {
                                return false;
                            }
                            break;
                        case oJ003_DialogResult.Cancel:
                            return false;
                            break;
                    }
                }
            }
            var nStaDocAct = tW_ObjOldValue.split(",")[5];
            if (nStaDocAct == '1') {
                var bConfirm = confirm('<%=ViewData("tMsgConfirmPost")%>');
                if (bConfirm == true) {
                    var tBchcode = document.getElementById('otbFTBchCode').value;
                    var tDocType = document.getElementById('otbFT' + tW_MidHD + 'DocType').value;
                    var tSplCode = document.getElementById('otbFTSplCode').value; //*CH 21/10/11
                    var tdate = J002_GETtTimeStamp();
                    var tCstCode = document.getElementById("otbFTCstCode").value;
                    if (W_CHKbPointOver() == true) {
                        W_CHKbPointChange();
                        alert('<%=ViewData("tMsgPointOverNoPost") %>')
                        return false;
                    }
                    //J004_FRMxPostDoc(tdate, 'C_FRMxPostDoc', tW_Controller, 'otbFT' + tW_MidHD + 'DocNo', 'odtFD' + tW_MidHD + 'DocDate', tDocType, tBchcode, tApvCode, '&ptCstCode=' + tCstCode);
                    W_FRMxSendPostDoc(tdate, 'C_FRMxPostDoc', tW_Controller, 'otbFT' + tW_MidHD + 'DocNo', 'odtFD' + tW_MidHD + 'DocDate', tDocType, tBchcode, tApvCode, '&ptCstCode=' + tCstCode);
                    W_SETxHeaderDataOnPost();
                    W_CALxPointPaidApproved(); //*CH 27-12-11
                    var tBchCode = document.getElementById('otbFTBchCode').value;
                    var tDocNo = document.getElementById('otbFTCghDocNo').value;
                    //window.location = '<%=Url.Action("Index","cvcTCNTCstGiftHD") %>' + '?ptBchCode=' + tBchCode + '&ptDocNo=' + tDocNo + '&ptDate=' + Math.random() + '&ptAuthorRead=1';
                    return true;
                }
            }
            else {
                alert('<%=ViewData("tMsgNoAppStaDocDonotAct")%>');
                document.getElementById('otbFNCghStaDocAct').value = '0';
                document.getElementById('ockFNCghStaDocAct').checked = false;
                return false;
            }


        }
        catch (ex) {
            J002_SHWxMsgError("W_FRMxPostDoc", ex);
        }
        finally {
            J003_DISxWaiting();
        }
    }
    
    function W_FRMxPdtQtyNotEnough() {
        //----- จำนวนสินค้าในคลังไม่พอที่จะแลก -------// *CH 25-05-2012
        var tUrl = '';
        var tUsePoint = ''; 
        var tdate = J002_GETtTimeStamp();
        var bConfirm = confirm(tCN_LoadTranMenuRetMessage + '\n' + tCN_LoadTranMenuRetChkMsg);
        if (bConfirm == true) {
            if (tJ004_VirtualDirectory != null && tJ004_VirtualDirectory != '') {
                tUrl += '/' + tJ004_VirtualDirectory;
            }
            tUrl += "/" + tW_Controller + "/C_DELtPdtQtyNotEnough";
            oPC_xmlHttp.open("GET", encodeURI(tUrl), false);
            oPC_xmlHttp.send(null);
            tUsePoint = oPC_xmlHttp.responseText; //แต้มที่ได้ใช้ไป
            $('#otbFCCghPntUsed').val(J002_DECcRound(tUsePoint, nW_DecAmtForShw, true));
            W_SETxRebindGrid(); //Render Grid ใหม่
            W_CLRxTextBox(); //เคลียร์ TextBox
            $("#otbFTPdtCode").focus();
            W_CALxPointPaid(); //คำนวนแต้มใหม่
            W_DATxSaveDocument(); //บันทึก
            if (tW_StaSavDoc == '1') {
                W_FRMxPostDoc(); //อนุมัติ
            }
        } else {
            return false;
        }
    }

    function W_FRMxPost_handleStateChange() {
        if (oPC_xmlHttp.readyState == 4) {
            if (oPC_xmlHttp.status == 200) {
                var valueFis = oPC_xmlHttp.responseText;
                var mytool_array = valueFis.split(";");
                if (mytool_array.length == 1) {
                    tCN_LoadTranMenuRetStatus = 1
                    tCN_LoadTranMenuRetMessage = mytool_array[0];
                    alert(tCN_LoadTranMenuRetMessage);
                } else {
                    tCN_LoadTranMenuRetStatus = mytool_array[0];
                    tCN_LoadTranMenuRetMessage = mytool_array[1];
                    if (tCN_LoadTranMenuRetStatus == "0") {
                        //อนุมัติสำเร็จ
                        alert(tCN_LoadTranMenuRetMessage);
                    } else if (tCN_LoadTranMenuRetStatus == "1") {
                        //อนุมัติไม่สำเร็จ
                        alert(tCN_LoadTranMenuRetMessage);
                        return false;
                    } else if (tCN_LoadTranMenuRetStatus == "2") {
                        //จำนวนสินค้าในคลังแลกมีน้อยกว่าที่เลือก
                        tCN_LoadTranMenuRetChkMsg = mytool_array[2];
                        W_FRMxPdtQtyNotEnough();
                    }
                }
            }
        }
    }

    function W_FRMxSendPostDoc(ptDate, ptActionName, ptControllerName, ptDocNoIdName, ptDocDate, ptDocType, ptBchValue, ptApvCode, ptOtherPara) {
        J004_CRExXMLHttpRequest();
        var oDocNoObj = document.getElementById(ptDocNoIdName);
        var oDocDateObj = document.getElementById(ptDocDate);
        var tUrl = '';
        if (tJ004_VirtualDirectory != null && tJ004_VirtualDirectory != '') {
            tUrl += '/' + tJ004_VirtualDirectory;
        }
        tUrl += "/" + ptControllerName + "/" + ptActionName + "?ptDate=" + ptDate + "&ptDocNo=" + oDocNoObj.value + "&pdDocDate=" + oDocDateObj.value + "&ptDocType=" + ptDocType + "&ptBchValue=" + ptBchValue + "&ptApvCode=" + ptApvCode + '&' + ptOtherPara;
        oPC_xmlHttp.open("GET", encodeURI(tUrl), false);

        tPC_DocNoIDName = ptDocNoIdName;
        oPC_xmlHttp.onreadystatechange = W_FRMxPost_handleStateChange;
        oPC_xmlHttp.send(null);
 
    }
    
    function W_CALxPointPaidApproved() {
        try {
            var nPointUse = document.getElementById("otbFCCghPntUsed").value;
            var nCurrPoint = 0;
            var nPointPaid = 0;

            // ดูว่าใช้แต้มของลูกค้าหรือว่าแต้มตามผู้จำหน่าย *CH 18-10-11
            var tSplCode = document.getElementById("otbFTSplCode").value;
            if (tSplCode != "") {
                nCurrPoint = document.getElementById("otbFCPntSpl").value;
            } else {
                nCurrPoint = document.getElementById("otbFCCghPntAtChe").value;
            }

            //*CH 21-10-11 แสดงแต้มคงเหลือตามการอนุมัติ
            if (nW_StaPrcDoc == "1") {
                nPointPaid = J002_GETcNumber(nCurrPoint);
            } else {
                nPointPaid = J002_GETcNumber(nCurrPoint) - J002_GETcNumber(nPointUse);
            }
            //document.getElementById("otbFCPntSpl").value = J002_DECcRound(nPointPaid, nW_DecAmtForShw, true);
        }
        catch (ex) {
            J002_SHWxMsgError("W_CALxPointPaidApproved", ex);
        }
    }

    //ptFlag 1 ไปรายการโปรด ; 2 ไปหน้าระบบสมาชิก
    function W_FRMxCloseDoc(ptFlag) {
        try {
            //W_CHKbPointChange();return false; *TW 54-06-07 Programmer Test
            J003_SHWxWaiting();
            var bDataChange = false;
            bDataChange = J002_CHKbDataChange(nW_StaDocCancel, nW_StaPrcDoc, tW_ObjOldValue, tW_CheckObj, '<%=Session("nVB_CNDecAmtForSav")%>');  // ตรวจสอบว่าข้อมูลมีการเปลี่ยนเแปลงหรือไม่
            // alert(bDataChange);
            if (bDataChange == true) {
                var tReturn = J003_SHWxConfirmDialog('<%=ViewData("tMsgSave_Warning")%>', oJ003_DialogType.DialogYesNoCancel, '<%=ViewData("tProgramName")%>', oJ003_DialogIcon.Error);
                switch (tReturn) {
                    case oJ003_DialogResult.Yes:
                        if (W_DATxSaveDocument('2') == false) {
                            return false;
                        }
                        break;
                    case oJ003_DialogResult.Cancel:
                        return false;
                        break;
                }
            }
            else {
                bDataChange = W_CHKbChangeDataDT();
                if (bDataChange == true) {
                    var tReturn = J003_SHWxConfirmDialog('<%=ViewData("tMsgSave_Warning")%>', oJ003_DialogType.DialogYesNoCancel, '<%=ViewData("tProgramName")%>');
                    switch (tReturn) {
                        case oJ003_DialogResult.Yes:
                            if (W_DATxSaveDocument('2') == false) {
                                return false;
                            }
                            break;
                        case oJ003_DialogResult.Cancel:
                            return false;
                            break;
                    }
                }
            }
            var tDataTimeNow = J002_GETtTimeStamp();
            //*CH 17-10-2012
            var tUrl;
            if (ptFlag == '1') {
                tUrl = '<%=Url.Action("Index","Home") %>' + '?ptDate=' + tDataTimeNow;
            } else {
                tUrl = '<%=Url.Action("Index","cvcCNPanal") %>?ptMenuGrpName=CstPoint'; 
            }
            window.location = tUrl;
        }
        catch (ex) {
            J002_SHWxMsgError("W_FRMxCloseDoc", ex);
        }
    }

    function W_CHKbShwAlwReport() {
        //----- ตรวจสอบสถานะเอกสาร และการอนุญาติแสดงรายงานเอกสารที่ไม่อนุมัติ ------// *CH 09-02-12
        var tDate = J002_GETtTimeStamp();
        var tUrl = '<%=Url.Action("C_CHKbAlwReport","cvcTCNTCstGiftHD")%>';
        tUrl += '?ptDateTimeNow=' + tDate;
        oW_xmlHttp = J002_GEToXMLHttpRequest();
        oW_xmlHttp.open("GET", encodeURI(tUrl), false);
        oW_xmlHttp.send(null);
        var tRes = oW_xmlHttp.responseText;
        var bResponse = false;
        if (tRes.toUpperCase() == "true".toUpperCase()) {
            bResponse = true;
        }
        return bResponse;
    }

    function W_FRMxShwPrintDialog() {
        try {
            J003_SHWxWaiting();
            var bAlwShw = false;
            if (nW_StaPrcDoc != 1) {
                bAlwShw = W_CHKbShwAlwReport();
            } else if (nW_StaPrcDoc == 1) {
                bAlwShw = true;
            }
            if (bAlwShw) {
                if (nW_StaDoc == 1) {
                    var tDate = J002_GETtTimeStamp();
                    var tLang = '<%=Session("tVB_LastLang")%>';
                    var tUrl = '<%=Url.Action("C_GETtRptData","cvcPrintForm") %>';
                    W_FRMGetRptName(tUrl, 'TCNTCstGiftHD', tW_RptType);
                    var tCstCode = document.getElementById("otbFTCstCode").value;

                    //J004_FRMxShwPrintForm(document.getElementById('otbFT' + tW_MidHD + 'DocNo'), document.getElementById('odtFD' + tW_MidHD + 'DocDate'), tLang, tW_RptDefName, tW_RptUsrName, tW_RptSel, 'Customer', document.getElementById('otbFT' + tW_MidHD + 'DocType').value, document.getElementById("otbFTBchCode").value, 'TCNTCstGiftHD', 'FTCghDocNo', tDate, tW_RptType, tCstCode);
                    FRMxShwPrintForm(document.getElementById('otbFT' + tW_MidHD + 'DocNo'), document.getElementById('odtFD' + tW_MidHD + 'DocDate'), tLang, tW_RptDefName, tW_RptUsrName, tW_RptSel, 'Customer', document.getElementById('otbFT' + tW_MidHD + 'DocType').value, document.getElementById("otbFTBchCode").value, 'TCNTCstGiftHD', 'FTCghDocNo', tDate, tW_RptType, tCstCode); //*CH 11-11-11 New
                }
            } else {
                alert('<%=ViewData("tMsgNotShwRptNotAppv")%>');
            }
        }
        catch (ex) {
            J002_SHWxMsgError("W_FRMxShwPrintDialog", ex);
        }
        finally {
            J003_DISxWaiting();
        }
    }
    function FRMxShwPrintForm(ptDocNo, pdDocDate, ptLang, ptRptDefName, ptRptUsrName, ptRptMode, ptSplOrCstCode, ptDocType, ptBchCode, ptFTSatTblName, ptFTSatFedCode, ptDate, ptRptType, ptCstOrSplCode) {
        //*CH 11-11-11
        try {
            var tDocNo = ptDocNo.value;
            var tDocDate = pdDocDate.value;
            var tLang = J004_GETtLang(ptLang);
            var tSplCode = $('#otbFTSplCode').val();
            var cPointPaid = $('#otbFCPntSpl').val(); //$('#otbPointPaid').val();*CH 17-05-2012 ไม่ใช้แต้มที่ถูกใช้ไปแล้ว //document.getElementById('otbPointPaid').value; //
            var cCghPntUsed = $('#otbFCCghPntUsed').val(); //document.getElementById('otbFCCghPntUsed').value;  // 
            var cPointSpl = 0;
            if (ptCstOrSplCode == null) {
                ptCstOrSplCode = "";
            }
            var tUrl = '';
            if (tJ004_VirtualDirectory != null && tJ004_VirtualDirectory != '') {
                tUrl += '/' + tJ004_VirtualDirectory;
            }
            tUrl += '/cvcPrintForm/Index?ptDocNo=' + tDocNo + '&ptRptDefName=' + ptRptDefName + '&ptRptUsrName=' + ptRptUsrName + '&ptRptMode=' + ptRptMode + '&tSplOrCst=' + ptSplOrCstCode + '&ptDocDate=' + tDocDate + '&Lang=' + tLang + '&ptDocType=' + ptDocType + '&ptBchCode=' + ptBchCode + '&ptFTSatTblName=' + ptFTSatTblName + '&ptFTSatFedCode=' + ptFTSatFedCode + '&ptDate=' + ptDate + '&ptRptType=' + ptRptType + '&ptCstOrSplCode=' + ptCstOrSplCode;
     
            if (tSplCode != "" && tSplCode != null) {
                cPointSpl = cPointPaid;
                tUrl += '&pcPointSpl=' + cPointSpl;
            } else {
                tUrl += '&pcPointSpl=' + 0;
            }

            //showModalDialog(encodeURI(tUrl), "Passed String", "dialogWidth:800px; dialogHeight:350px; status:no; center:yes;titlebar=0; scroll:no;");
            //if (window.chrome) {
            //    open(tUrl, 'passed String', 'toolbar=0,scrollbars=0,location=0,statusbar=0\
            //                                ,menubar=0,resizable=0,width=828,height=378,center=yes\
            //                                ,top=160%,left=260%,');
            //} else {
                showModalDialog(encodeURI(tUrl), 'Passed String', 'unadorned:yes; resizable:1; \
                                dialogwidth:800px; dialogHeight:350px; scroll:no; status=no; \
                                center:yes; titlebar=0;');
            //}
        }
        catch (ex) {
            J004_SHWxMsgError("FRMxShwPrintForm", ex);
        }
    }

    function W_FRMGetRptName(ptUrl, ptTblName, ptRptType) {
        try {
            oW_xmlHttp = J002_GEToXMLHttpRequest();
            ptUrl += '?ptTblName=' + ptTblName + '&ptRptType=' + ptRptType;
            oW_xmlHttp.open('GET', encodeURI(ptUrl), false);
            oW_xmlHttp.onreadystatechange = W_FRMGetRptNameStateChage;
            oW_xmlHttp.send(null);
        }
        catch (ex) {
            J002_SHWxMsgError("W_FRMGetRptName", ex);
        }
    }

    function W_FRMGetRptNameStateChage() {
        try {
            if (oW_xmlHttp.readyState == 4) {
                if (oW_xmlHttp.status == 200) {
                    var valueFis = oW_xmlHttp.responseText;
                    //alert(valueFis);
                    if (valueFis.split("|")[0] != null && valueFis.split("|")[0] != "") {
                        alert(valueFis.split("|")[0]);
                        return 0;
                    }
                    tW_RptDefName = valueFis.split("|")[1].replace('.rpt', '.mrt');
                    tW_RptUsrName = valueFis.split("|")[2];
                    tW_RptSel = valueFis.split("|")[3];
                }
            }
        }
        catch (ex) {
            J002_SHWxMsgError("W_FRMGetRptNameStateChage", ex);
        }

    }
    function test() {
        var tdate = J002_GETtTimeStamp();
        alert(tdate);
        J004_test(tdate, "C_FRMxPostDoc", 'cvcTCNTCstGiftHD');
    }
    function W_SETxHeaderDataOnPost() {
        try {
            var tDataTimeNow = J002_GETtTimeStamp();
            var tBchcode = document.getElementById('otbFTBchCode').value;
            var tUrl = '<%=Url.Action("Index","cvcTCNTCstGiftHD") %>' + '?ptBchCode=' + tBchcode + '&ptDocNo=' + document.getElementById("otbFT" + tW_MidHD + "DocNo").value + '&ptDate=' + tDataTimeNow;
            window.location = encodeURI(tUrl);

        }
        catch (ex) {
            J002_SHWxMsgError("W_SETxHeaderDataOnPost", ex);
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

    function W_SETxDisableDocNo(pbStatus) {
        try {
            //Disable DocNo and redio CshOrCrd   
            J002_SETxReadOnly('otbFTCghDocNo', pbStatus);
            document.getElementById("oimGetDocNo").disabled = pbStatus;
        }
        catch (ex) {
            J002_SHWxMsgError("W_SETxDisableDocNo", ex);
        }
    }

    function W_SETxDocDisplayStatus() {
        try {

            if ('<%=Model.FTCghStaDoc%>' == '1') {
                nW_StaDoc = 1;
                W_SETxDisableDocNo(true);
            }
            if ('<%=Model.FTCghStaDoc%>' == '3') {
                nW_StaDoc = 1;
                nW_StaDocCancel = 1;
                W_SETxDisableAll(true);
            }
            if ('<%=Model.FTCghStaPrcDoc%>' == '1') {
                nW_StaDoc = 1;
                nW_StaPrcDoc = 1;
                W_SETxDisableAll(true);
            }
        }
        catch (ex) {
            J002_SHWxMsgError("W_SETxDocDisplayStatus", ex);
        }
    }



    function W_SETxDisableAll(pbStatus) {
        try {
            //------Text
            J002_SETxReadOnly('otbFTCstCode', pbStatus);
            J002_SETxReadOnly('otbFTCghCtrName', pbStatus);
            J002_SETxReadOnly('otbFTCghRmk', pbStatus);
            J002_SETxReadOnly('otbFTPdtCode', pbStatus);
            J002_SETxReadOnly('otbPdtQty', pbStatus);
            J002_SETxReadOnly('otbFTSplCode', pbStatus); //*CH 21-10-11

            //------Button
            document.getElementById("oimBrwCst").disabled = pbStatus;
            document.getElementById("oimBrwCst").disabled = pbStatus;
            document.getElementById('oimGetDocNo').disabled = pbStatus;
            document.getElementById('oimBrwPdt').disabled = pbStatus;
            document.getElementById('oimBrwSpl').disabled = pbStatus;

        }
        catch (ex) {
            J002_SHWxMsgError("W_SETxDisableAll", ex);
        }

    }

    function W_FRMxFindDoc() {
        try {
            J003_SHWxWaiting();
            var tDialogResult = oJ003_DialogResult.Yes;
            var bDataChange = false;
            bDataChange = W_CHKbDataChange(nW_StaDocCancel, nW_StaPrcDoc, tW_ObjOldValue, tW_CheckObj, '<%=Session("nVB_CNDecAmtForSav")%>'); // J002_CHKbDataChange(nW_StaDocCancel, nW_StaPrcDoc, tW_ObjOldValue, tW_CheckObj, '<%=Session("nVB_CNDecAmtForSav")%>');  // ตรวจสอบว่าข้อมูลมีการเปลี่ยนเแปลงหรือไม่
            if (bDataChange == true) {
                tDialogResult = J003_SHWxConfirmDialog('<%=ViewData("tMsgSave_Warning")%>', oJ003_DialogType.DialogYesNoCancel, '<%=ViewData("tProgramName")%>');

                switch (tDialogResult) {
                    case oJ003_DialogResult.Yes:
                        if (W_DATxSaveDocument('1') == false) {
                            return false;
                        }
                        break;
                    case oJ003_DialogResult.Cancel:
                        return false;
                        break;
                }
            }
            else {
                bDataChange = W_CHKbChangeDataDT();
                if (bDataChange == true) {
                    tDialogResult = J003_SHWxConfirmDialog('<%=ViewData("tMsgSave_Warning")%>', oJ003_DialogType.DialogYesNoCancel, '<%=ViewData("tProgramName")%>');
                    switch (tDialogResult) {
                        case oJ003_DialogResult.Yes:
                            if (W_DATxSaveDocument('1') == false) {
                                return false;
                            }
                            break;
                        case oJ003_DialogResult.Cancel:
                            return false;
                            break;
                    }
                }
            }
            var tdate = J002_GETtTimeStamp();
            // Flag Browse เอกสาร

            J004_FRMxFindDoc(tW_Controller, tdate, 'C_CNBrwDoc', tW_Controller, 'otbFT' + tW_MidHD + 'DocNo', '2');

            tW_BrowDoc = "2";

            if (tDialogResult == oJ003_DialogResult.Yes || tDialogResult == oJ003_DialogResult.No) {

                otbFTCghDocNo_onblur();
            }

        }
        catch (ex) {
            J002_SHWxMsgError("W_FRMxFindDoc", ex);
        }
        finally {
            J003_DISxWaiting();
        }

    }

    function otbFTCghDocNo_onblur() {
        try {
            J003_SHWxWaiting(); //*CH 06-03-12
            var tDocNo = document.getElementById("otbFT" + tW_MidHD + "DocNo").value;
            var tDocNoOld = document.getElementById("otbFT" + tW_MidHD + "DocNoOld").value;
            var tBchNo = document.getElementById("otbFTBchCode").value;
            if (tDocNo == null || tDocNo == tDocNoOld) {
                return false;
            }
            if (W_CHKtHasDocNo() == true) {
                var tUrl = '<%=Url.Action("Index","cvcTCNTCstGiftHD") %>' + '?ptDocNo=' + tDocNo + '&ptBchCode=' + tBchNo + '&ptAuthorRead=1';
                window.location = encodeURI(tUrl);
            }
        }
        catch (ex) {
            J002_SHWxMsgError("otbFTCghDocNo_onblur", ex);
        }
        finally { //*CH 06-03-12
            J003_DISxWaiting();
        }
    }

    function W_DATxDocNoEnter(ptKeyCode, ptWhich) {//*CH 06-03-12 ให้ Enter ค้นหาเอกสารได้
        var tKey;
        if (ptKeyCode != null) { tKey = ptKeyCode; }
        if (ptWhich != null) { tKey = ptWhich; }
        if (tKey == 13) {
            document.getElementById('otbFTCstCode').focus();
            otbFTCghDocNo_onblur();
        }
    }

    function W_DATxSaveDocument(ptReLoad) {
        try {

            J003_SHWxWaiting();
            if (nW_StaDocCancel == 1) {
                alert('<%=ViewData("tMsgNoEditCancel") %>');
                return 0;
            }

            if (nW_StaPrcDoc == 1) {
                alert('<%=ViewData("tMsgNoEditApp")%>');
                return 0;
            }

            var cPointUsed = J002_GETcNumber(document.getElementById("otbFCCghPntUsed").value);
            //var cPointCurrent = J002_GETcNumber(document.getElementById("otbFCCghPntAtChe").value); // *CH 18-10-11 Old

            //ตรวจสอบว่าใช้แต้มลูกค้าหรือว่าแต้มตามผู้จำหน่าย *CH 18-10-11
            var cPointCurrent = 0;
            var tSplCode = document.getElementById("otbFTSplCode").value;
            if (tSplCode != "" && tSplCode != null) {
                cPointCurrent = J002_GETcNumber(document.getElementById("otbFCPntSpl").value);
            } else {
                cPointCurrent = J002_GETcNumber(document.getElementById("otbFCCghPntAtChe").value);
            }

            if (cPointUsed > cPointCurrent) {
                alert('<%=ViewData("tMsgCstGift_NotSave")%>');
                return false;
            }

            var tAuthor;
            if (nW_StaDoc == 0) {
                tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Add%>';
            }
            else {
                tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Edit%>';
            }

            var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
            var tPwdAllow = '<%=Session("bVB_CNPwdAllow")%>';
            var bAllow = J002_CHKtCheckAuthorize(tW_Menu, tAuthor, tPwdAllow, tMsgNotAuthorize);
            if (bAllow == false) {
                return false;
            }


            if (J002_CHKbIsBlankValue("otbFTCstCode") == true) {
                alert('<%=ViewData("olatMsgErrorData") %>');
                return false;
            }

            if (J002_CHKbIsBlankValue("otbFT" + tW_MidHD + "DocNo") == true) {
                alert('<%=ViewData("olatMsgErrorData") %>');
                return false;
            }

            if (W_GETtPdtCount() < 1) {
                tW_StaSavDoc = '0'; //ไม่มีรายการสินค้าในรายการแล้ว *CH 25-05-2012
                alert('<%=ViewData("olatMsgDoc_Empty") %>');
                return false;
            } else {
                tW_StaSavDoc = '1'; //มีสินค้าในรายการอยู่ *CH 25-05-2012
            }

            var bAutoDocNo = document.getElementById("otbFT" + tW_MidHD + "DocNo").readOnly;
            if (bAutoDocNo == false) {
                var tDocNo = document.getElementById("otbFT" + tW_MidHD + "DocNo").value;
                if (W_CHKtHasDocNo(tDocNo) == true) {
                    if (!confirm('<%=ViewData("tMsgCodeHasUsed") %>')) {
                        return false;
                    }
                    J002_SETxReadOnly("otbFT" + tW_MidHD + "DocNo", true);
                }
            }

            //---- แสดงข้อความว่า มีสินค้าที่เลือกไว้ยังไม่ได้นำไปใช้งาน ----// /*CH 28-05-2012
            var bChkWantPdt = false;
            var tPdtCode = $('#otbFTPdtCode').val();
            if (tPdtCode != null && tPdtCode != "") {
                bChkWantPdt = confirm('<%=ViewData("tMsgHavPdtNotSelect")%>' + '\n' + '<%=ViewData("tMsgChkWantPdt")%>');
            }
            if (bChkWantPdt == true) { return 0; }

            if (W_CHKbCustomerPoint() == true) {
                var oModel = W_GEToModel();
                var url = '';
                url = '<%= Url.Action("C_DATxSaveDocument", "cvcTCNTCstGiftHD") %>';

                if (ptReLoad == '1' || ptReLoad == '' || ptReLoad == null) {
                    $.post(url, oModel, W_SETxHeaderData);
                }

                if (ptReLoad == '2') {
                    $.post(url, oModel);
                    return true;
                }
            }

            else {
                alert('Not enough point');

            }



        }
        catch (ex) {
            J002_SHWxMsgError("W_DATxSaveDocument", ex);
        }
        finally {
            J003_DISxWaiting();
        }
    }

    function W_GEToModel() {
        try {
            var tStaDocAct = '0';
            if (document.getElementById("ockFNCghStaDocAct").checked == true) {
                tStaDocAct = '1';
            }
            var oModel = {
                FTBchCode: document.getElementById("otbFTBchCode").value,
                FTCghDocNo: document.getElementById("otbFT" + tW_MidHD + "DocNo").value,
                FTCghDocType: document.getElementById("otbFT" + tW_MidHD + "DocType").value,
                FDCghDocDate: J002_CONtDateTime(document.getElementById("odtFD" + tW_MidHD + "DocDate").value),
                FTDptCode: document.getElementById("otbFTDptCode").value,
                FTDepName: document.getElementById("otbFTDepName").value,
                FTUsrCode: document.getElementById("otbFTUsrCode").value,
                FTUsrName: document.getElementById("otbFTUsrName").value,
                FTCstCode: document.getElementById("otbFTCstCode").value,
                FTWahCode: document.getElementById("otbFTWahCode").value,
                FTCghApvCode: document.getElementById("otbFT" + tW_MidHD + "ApvCode").value,
                FTCghCtrName: document.getElementById("otbFT" + tW_MidHD + "CtrName").value,
                FCCghPntAtChe: J002_GETcNumber(document.getElementById("otbFC" + tW_MidHD + "PntAtChe").value),
                FCCghPntUsed: J002_GETcNumber(document.getElementById("otbFC" + tW_MidHD + "PntUsed").value),
                FTCghStaDoc: document.getElementById("otbFT" + tW_MidHD + "StaDoc").value,
                FTCghStaPrcDoc: document.getElementById("otbFT" + tW_MidHD + "StaPrcDoc").value,
                FTCghRmk: document.getElementById("otbFT" + tW_MidHD + "Rmk").value,
                FNCghStaDocAct: tStaDocAct,
                FDDateIns: '<%=Model.FDDateIns%>',
                FTTimeIns: '<%=Model.FTTimeIns%>',
                FTWhoIns: '<%=Model.FTWhoIns%>',
                FCPntSpl: J002_GETcNumber(document.getElementById("otbFCPntSpl").value),
                FTSplCode: document.getElementById("otbFTSplCode").value
            };




            return oModel;
        }
        catch (ex) {
            J002_SHWxMsgError("W_GEToModel", ex);
        }

    }

    function W_CHKbCustomerPoint() {
        try {
            var tUrl = '';
            var cPoint = '';
            var tDate = J002_GETtTimeStamp();
            var CDocPoint = J002_GETcNumber(document.getElementById("otbFCCghPntUsed").value);
            var tSplCode = document.getElementById("otbFTSplCode").value;
            var cPointSpl = J002_GETcNumber(document.getElementById("otbFCPntSpl").value);
            tUrl = '<%= Url.Action("C_GETtCstPoint", "cvcTCNTCstGiftHD") %>';
            tUrl += '?ptCstCode=' + document.getElementById('otbFTCstCode').value + '&ptDate=' + tDate;
            oW_xmlHttp = J002_GEToXMLHttpRequest();
            oW_xmlHttp.open("GET", encodeURI(tUrl), false);
            oW_xmlHttp.send(null);
            cPoint = J002_GETcNumber(oW_xmlHttp.responseText);

            //*CH 21/10/11 ตรวจสอบว่ามาการดึงแต้มผู้จำหน่ายมาใช้รึไม่
            if (tSplCode != "" && tSplCode != null) {
                if (cPointSpl != "" || cPointSpl != null) {
                    if (cPointSpl < CDocPoint) {
                        document.getElementById("otbFCPntSpl").value = J002_DECcRound(cPointSpl, nW_DecAmtForShw, true);
                        return false;
                    } else {
                        return true;
                    }
                } else {
                    return false;
                }
            }
            else {
                if (cPoint != "" || cPoint != null) {
                    if (cPoint < CDocPoint) {
                        document.getElementById("otbFCCghPntAtChe").value = J002_DECcRound(cPoint, nW_DecAmtForShw, true);
                        return false;
                    }
                    else {
                        return true;
                    }

                }
                else {
                    return false;
                }
            }
        }
        catch (ex) {
            J002_SHWxMsgError("W_CHKbCustomerPoint", ex);
            return false;
        }

    }

    function W_GETtPdtCount() {
        try {
            var tDataTimeNow = J002_GETtTimeStamp();
            var tModelPdt = document.getElementById("otbFTPdtCode").value;
            var tUrl = '<%=Url.Action("C_GETtPdtCount","cvcTCNTCstGiftHD") %>' + "?ptDateTimeNow=" + tDataTimeNow;
            oW_xmlHttp = J002_GEToXMLHttpRequest();
            oW_xmlHttp.open("GET", encodeURI(tUrl), false);
            oW_xmlHttp.send(null);
            return oW_xmlHttp.responseText; //return จำนวนรายการสินค้า ใน Grid
        }
        catch (ex) {
            J002_SHWxMsgError("W_GETtPdtCount", ex);
        }
    }

    function W_SETxHeaderData(data) {
        try {
            var tDataTimeNow = J002_GETtTimeStamp();

            //var tSplCode = data.FTSplCode;
            //if (tSplCode == "") {
            //    var tUrl = '<%=Url.Action("Index","cvcTCNTCstGiftHD") %>' + '?ptBchCode=' + data.FTBchCode + '&ptDocNo=' + data.FTCghDocNo + '&ptDate=' + tDataTimeNow + '&ptAuthorRead=1'; //*CH 21/10/11 Old
            //} else {
            //    var tFTSplName = document.getElementById("otbFTSplName").value;
            //    var tUrl = '<%=Url.Action("Index","cvcTCNTCstGiftHD") %>' + '?ptBchCode=' + data.FTBchCode + '&ptDocNo=' + data.FTCghDocNo + '&ptDate=' + tDataTimeNow + '&ptAuthorRead=1'; //*CH 21/10/11 Old
            //    var tUrl = '<%=Url.Action("Index","cvcTCNTCstGiftHD") %>' + '?ptBchCode=' + data.FTBchCode + ";" + data.FTSplCode + '&ptDocNo=' + data.FTCghDocNo + '&ptDate=' + tDataTimeNow + '&ptAuthorRead=1' + '&ptSplCode=' + data.FTSplCode + '&ptPntSpl=' + data.FCPntSpl + '&ptSplName=' + tFTSplName; //*CH 21/10/11 New ส่งรหัสผู้จำหน่ายไปด้วย
            //}

            var tUrl = '<%=Url.Action("Index","cvcTCNTCstGiftHD") %>' + '?ptBchCode=' + data.FTBchCode + '&ptDocNo=' + data.FTCghDocNo + '&ptDate=' + tDataTimeNow + '&ptAuthorRead=1';
            window.location = encodeURI(tUrl);

        }
        catch (ex) {
            J002_SHWxMsgError("W_SETxHeaderData", ex);
        }
    }
    function W_CHKtHasDocNo() {
        try {
            var tDateTimeNow = J002_GETtTimeStamp();
            var tDocNo = document.getElementById("otbFT" + tW_MidHD + "DocNo").value;
            var tBchCode = document.getElementById("otbFTBchCode").value;
            var tUrl = '<%=Url.Action("C_CHKtHasDocNo","cvcTCNTCstGiftHD") %>' + '?ptDocNo=' + tDocNo + '&ptBchCode=' + tBchCode + '&ptDateTimeNow=' + tDateTimeNow;
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
        catch (ex) {
            J002_SHWxMsgError("W_CHKtHasDocNo", ex);
        }

    }


    function W_DATxBrowsePdt() {
        try {
            if (J002_CHKbIsBlankValue("otbFTCstCode") == true) {
                return false;
            }

            var ptCase = "PdtCode";
            //var nPoint = J002_GETcNumber(document.getElementById('otbFCCghPntAtChe').value);
            var nPoint = J002_GETcNumber($("#otbPointPaid").val()); //*TW 54-04-29
            if (nPoint <= 0) {
                alert('<%=ViewData("tMsgCstPointLessThanPdtPoint")%>');
                return false;
            }
            var tSplcode = $("#otbFTSplCode").val(); //*CH 18-10-11
            var tDate = J002_GETtTimeStamp()

            //*CH 18-10-11 ให้ค้นหาตามSupplier
            var tUrl = "";
            if (tSplcode != "") {
                tUrl = '<%=Url.Action("C_BRWxMaster","cvcTCNTCstGiftHD") %>' + '?ptCase=' + ptCase + '&pnPoint=' + nPoint + '&ptDate=' + tDate + '&ptSplCode=' + tSplcode;
            } else {
                tUrl = '<%=Url.Action("C_BRWxMaster","cvcTCNTCstGiftHD") %>' + '?ptCase=' + ptCase + '&pnPoint=' + nPoint + '&ptDate=' + tDate;
            }
            //var tUrl = '<%=Url.Action("C_BRWxMaster","cvcTCNTCstGiftHD") %>' + '?ptCase=' + ptCase + '&pnPoint=' + nPoint + '&ptDate=' + tDate;
            var tReturnedValue = showModalDialog(encodeURI(tUrl), "Passed String", "dialogWidth:800px; dialogHeight:500px; status:no; center:yes;titlebar =0")
            if (tReturnedValue != undefined) {
                if (tReturnedValue != '12233344445555566666677777778888888899999999900000000001223334444555556666667777777888888889999999990000000000') {
                    var tPdtCode = tReturnedValue.split(";")[0];
                    document.getElementById("otbFTPdtCode").value = tPdtCode;
                    var tCode = document.getElementById("otbFTPdtCode").value;
                    if (tCode != "" && tCode != null) {
                        if (W_GETtProductData(false) == false) {
                            W_CLRxTextBox();
                            document.getElementById("otbFTPdtCode").focus();
                            return false;
                        }

                        if (document.getElementById("otbFTPdtSrn").value == '1') {

                            //  document.getElementById("otbPdtQty").
                            J002_SETxReadOnly('otbPdtQty', true);
                            //var tPdtCode = document.getElementById("otbFTPdtCode").value;// *TW 54-06-14 Old
                            var tPdtCode = document.getElementById("otbPdtBarCode1").value; // *TW 54-06-14
                            var tPdtName = document.getElementById("otbPdtName").value;
                            var tPdtFactor = document.getElementById("otbUnitFactor").value;
                            var tUnitName = document.getElementById("otbUnitName").value;
                            var tSeq = document.getElementById("otbSeq").value;

                            //****** Browse Serial ******
                            do {
                                var tReturnedValue = J003_BRWxSerial(tW_Controller, 'C_BRWxSerial', tPdtCode, tPdtName, tPdtFactor, tUnitName, tSeq, oJ003_SNDialogMode.Sale);
                                var bConfirm = false;
                                if (tReturnedValue == null || tReturnedValue == '') {
                                    bConfirm = confirm('<%=ViewData("tMsgSelectPdtSerial")%>');
                                }
                            } while (bConfirm == true)
                            document.getElementById('otbSerialList').value = tReturnedValue;
                            if (tReturnedValue == null || tReturnedValue == '') {
                                //document.getElementById('otbFTPdtCode').value = tPdtCode; // *TW 54-06-14 Old
                                document.getElementById('otbPdtBarCode1').value = tPdtCode; // *TW 54-06-14
                                document.getElementById("otbSeq").value = tSeq;
                                W_CLRxTextBox();
                            }
                            else {
                                var nQty = tReturnedValue.split("|").length;
                                document.getElementById("otbPdtQty").value = nQty;
                                W_DATxCalPointTotal();
                                //document.getElementById("otbFTPdtCode").focus(); //*CH 22-05-2012 Old
                                $('#otbPdtQty').focus(); //*CH 22-05-2012
                            }
                        }
                        else {
                        //เมื่อเลือกแท็บอัตโนมัติให้นำสินค้าลงตารางโดยไม่ได้กำหนดสินค้า //*CH 27-05-2012
                            if (document.getElementById("ockSendTab").checked == true) {
                                W_DATxCalPointTotal();
                                W_ADDxAddPdtToGrid();
                                document.getElementById("otbFTPdtCode").focus();
                                W_CLRxTextBox();
                            } else if (document.getElementById('ockSendTab').checked == false) {
                                var oEletent = document.getElementById("otbPdtQty");
                                oEletent.value = 1;
                                W_DATxCalPointTotal();
                                document.getElementById("otbFTPdtCode").focus();
                                J002_SETxReadOnly('otbPdtQty', false);
                            }
                        }
                    }

                }
            }
        }
        catch (ex) {
            J002_SHWxMsgError("W_DATxBrowsePdt", ex);
        }
    }

    function W_GETtProductData(pbOnload) {
        try {

            var tDataTimeNow = J002_GETtTimeStamp();
            var tPdt = $("#otbFTPdtCode").val();
            var tOldPdt = $("#otbPdtCodeOld").val();
            //var tCstPoint = J002_GETcNumber($("#otbFCCghPntAtChe").val());
            var tCstPoint = J002_GETcNumber($("#otbPointPaid").val()); //*TW 54-04-29
            var tSplCode = $('#otbFTSplCode').val(); //*CH 18-05-2012
            var tUrl = '<%=Url.Action("C_GETxProductData","cvcTCNTCstGiftHD") %>' + "?ptPdtCode=" + tPdt + "&ptCstpoint=" + tCstPoint + "&ptDateTimeNow=" + tDataTimeNow;
            tUrl += "&ptSplCode=" + tSplCode;
            oW_xmlHttp = J002_GEToXMLHttpRequest();
            oW_xmlHttp.open("GET", encodeURI(tUrl), false);
            oW_xmlHttp.send(null);
            var valueFis = oW_xmlHttp.responseText;
            if (valueFis == "|Nothing") {
                document.getElementById('otbFTPdtCode').focus();
                return false;

            }
            else {
                var aCstData = valueFis.split("|");
                if (valueFis == "||") {
                    //alert('<%=ViewData("tMsgDAT_Notfound001") & ViewData("olaPdtCode")%>');
                    alert('<%=ViewData("tMsgDat_NotFountOrLessPoint")%>'); //*TW 54-04-29
                    document.getElementById('otbFTPdtCode').value = tOldPdt;
                    document.getElementById('otbFTPdtCode').focus();
                    return false;
                } else {
                    if (aCstData[0] != null && aCstData[0] != "") {
                        alert(aCstData[0]);
                        return false;
                    }

                    document.getElementById("otbFTPdtCode").value = aCstData[6]; //*TW 54-06-14
                    document.getElementById("otbPdtName").value = aCstData[2];
                    document.getElementById("otbUnitCode").value = aCstData[3];
                    document.getElementById("otbUnitName").value = aCstData[4];
                    document.getElementById("otbPdtPoint").value = J002_DECcRound(aCstData[5], nW_DecAmtForShw, true);
                    //document.getElementById("otbPdtBarCode1").value = aCstData[6];// *TW 54-06-14 Old
                    document.getElementById("otbPdtBarCode1").value = aCstData[1]; //*TW 54-06-14
                    document.getElementById("otbPdtStkCode").value = aCstData[7];
                    document.getElementById("otbFTPdtSrn").value = aCstData[8];
                    document.getElementById("otbUnitFactor").value = aCstData[9];
                    if (document.getElementById("otbFTPdtSrn").value == '1') {
                        document.getElementById("otbPdtQty").value = J002_DECcRound(document.getElementById("otbPdtQty").value, nW_DecAmtForShw, true);
                    }
                    else {
                        document.getElementById("otbPdtQty").value = J002_DECcRound("1", nW_DecAmtForShw, true);
                    }

                    return true;
                }
            }
        }
        catch (ex) {
            J002_SHWxMsgError("W_GETtCustomerData ", ex);
        }
    }


    function W_DATxCalPointTotal() {
        try {
            if (J002_CHKbIsBlankValue("otbFTPdtCode") == true) {
                return false;
            }
            var oElement;
            var nPdtPoint = J002_GETcNumber(document.getElementById("otbPdtPoint").value);
            var nQty = J002_GETcNumber(document.getElementById("otbPdtQty").value);

            oElement = document.getElementById("otbPntAmt");

            var cNet = nPdtPoint * nQty;
            oElement.value = J002_DECcRound(cNet, nW_DecAmtForShw, true);
        }
        catch (ex) {
            J002_SHWxMsgError("W_DATxCalPointTotal", ex);
        }

    }



    function W_CLRxTextBox() {
        try {
            var oElement = document.getElementById("otbFTPdtCode");
            oElement.value = "";
            oElement = document.getElementById("otbPdtName");
            oElement.value = "";
            oElement = document.getElementById("otbUnitName");
            oElement.value = "";
            oElement = document.getElementById("otbUnitCode");
            oElement.value = "";
            oElement = document.getElementById("otbPdtPoint");
            oElement.value = "";
            oElement = document.getElementById("otbPdtQty");
            oElement.value = "";
            oElement = document.getElementById('otbSeq');
            oElement.value = "";
            oElement = document.getElementById("otbPntAmt");
            oElement.value = "";
        }
        catch (ex) {
            J002_SHWxMsgError("W_CLRxTextBox", ex);
        }
    }

    function otbPdtQty_onkeydown(ptKeyCode, ptWitch) {
        try {
            if (J002_CHKbIsBlankValue("otbFTPdtCode") == true) {
                return false;
            }

            if (otbPdtQty_onkeypress() == false) {
                return false;
            }
            var tKey = ptKeyCode;
            if (ptWitch != null && ptWitch != '') { tKey = ptWitch; }

            if (tKey == 118) {
                W_DELxPdtItem();
                return false;
            }
            if (tKey == 13) {
                document.getElementById('otbFTPdtCode').focus(); //*CH 11-11-11   
                W_DATxCalPointTotal();
                W_ADDxAddPdtToGrid();
                return !(tKey == 13);
            }
        }
        catch (ex) {
            J002_SHWxMsgError("otbPdtQty_onkeydown", ex);
        }
    }

    function FTCstCode_onblur() {
        var bConfirm;
        var tCstCode = document.getElementById("otbFTCstCode").value;
        var tOldCode = document.getElementById("otbFTCstCodeOld").value;

        if (tCstCode != "" && tCstCode != null) {
            var tHasCst = W_CHKbHasCustomer();
            if (tHasCst == '0') {
                alert('<%=ViewData("tMsgDAT_Notfound001") & ViewData("olaCstCode")%>');
                document.getElementById('otbFTCstCode').value = tOldCode;
                document.getElementById('otbFTCstCode').focus();
                return false;
            }
            else if (tCstCode != tOldCode) {//ถ้ามีการเปลี่ยนลูกค้า *Chuck 14102011
                document.getElementById('otbFTSplCode').value = "";
                document.getElementById('otbFTSplName').value = "";
                document.getElementById('otbFCPntSpl').value = J002_DECcRound(0, nW_DecAmtForShw, true);

                document.getElementById('otbFTPdtCode').value = "";
                otbPdtCode_onblur();
            }
        }
        else if (tCstCode == "") {
            document.getElementById('otbFTCstCode').value = "";
            //document.getElementById('otbFTCstCode').focus(); //*CH 06-03-12 เพื่อให้ TextBox อื่นสามารถกำหนดค่าได้
            document.getElementById('otbFTCstName').value = "";
            document.getElementById('otbFTCstAddr').value = "";
            document.getElementById('otbFTCstTel').value = "";
            document.getElementById('otbFTCstFax').value = "";
            document.getElementById('otbFCCghPntAtChe').value = J002_DECcRound(0, nW_DecAmtForShw, true);
            document.getElementById('otbPointPaid').value = J002_DECcRound(0, nW_DecAmtForShw, true);

            document.getElementById('otbFTSplCode').value = "";
            document.getElementById('otbFTSplName').value = "";
            document.getElementById('otbFCPntSpl').value = J002_DECcRound(0, nW_DecAmtForShw, true);

            document.getElementById('otbFTPdtCode').value = "";
            otbPdtCode_onblur();
        }

        //        var nPdtCount = W_GETtPdtCount();
        if (tCstCode != "" && tCstCode != null) {
            //            if ((tOldCode != null && tOldCode != "" && nPdtCount > 0) && (tCstCode != tOldCode)) {

            //                bConfirm = confirm('<%= ViewData("tMsgClearCstCode") %>');
            //                if (bConfirm == true) {
            //                    W_CLRxDataDT();
            //                }
            //                else {
            //                    document.getElementById("otbFTCstCode").value = tOldCode;
            //                    return false;
            //                }
            //            }
            //            if (ptFlag == null || ptFlag == "") {
            //                ptFlag = "1";
            //            }
            //      alert(tW_BrowDoc);
            if (tW_BrowDoc == "2") {
                W_GETtCustomerData(false, '1');
            }
            else {
                W_GETtCustomerData(false, '2');
            }

            return false;
        }
        //*CH 05-11-11 เอาออกเพื่อให้เคลียร์รหัสลูกค้าได้
        //if (tOldCode != "" && tCstCode == "") {
        //    document.getElementById('otbFTCstCode').value = document.getElementById("otbFTCstCodeOld").value;
        //    //document.getElementById("otbFTCstCodeOld").value = '';
        //    W_GETtCustomerData(false,'2');
        //    return false;
        //}

    }

    function W_CHKbHasCustomer() {
        var tCode = document.getElementById('otbFTCstCode').value;
        var tDate = J002_GETtTimeStamp();
        var tUrl = '<%=Url.Action("C_CHKtHasCustomer","cvcTCNTCstGiftHD") %>' + '?ptCstCode=' + tCode + '&ptDate=' + tDate;
        var oHTTP = J002_GEToXMLHttpRequest();
        oHTTP.open("GET", encodeURI(tUrl), false);
        oHTTP.send(null);
        var valueFis = oHTTP.responseText;
        if (valueFis.split("|")[0] != "" && valueFis.split("|")[0] != null) {
            alert(' ' + valueFis.split("|")[0]);
            return false;
        }
        return valueFis.split("|")[1];

    }

    function FTSplCode_onblur() {
        //*Chuck 12102011
        var bConfirm;
        var tSplCode = document.getElementById("otbFTSplCode").value;
        var tOldCode = document.getElementById("otbFTSplCodeOld").value;
        var tCstCode = document.getElementById("otbFTCstCode").value;

        if (tCstCode != "") {

            if (tSplCode != "" && tSplCode != null) {
                var tHasCst = W_CHKbHasSupplier();
                if (tHasCst == '0') {
                    alert('<%=ViewData("tMsgDAT_Notfound001") & ViewData("ovd_olaSplCode")%>');
                    document.getElementById('otbFTSplCode').value = tOldCode;
                    document.getElementById('otbFTSplCode').focus();
                    return false;
                }
            }

            if (tSplCode != "" && tSplCode != null) {
                if (tW_BrowDoc == "2") {
                    W_GETtSplData(false, '1');
                }
                else {
                    W_GETtSplData(false, '2');
                }

                return false;
            }

            //*CH 05-11-11 เคลียร์ค่าผู้จำหน่าย
            if (tSplCode == "") {
                document.getElementById('otbFTSplCode').value = "";
                document.getElementById('otbFTSplName').value = "";

                W_GETtSplData();

                document.getElementById('otbFCPntSpl').value = J002_DECcRound(0, nW_DecAmtForShw, true);
            }
            //*CH 05-11-11 ไม่ใช้เพราะจะให้เคลียร์ค่าผู้จำหน่ายได้
            //if (tOldCode != "" && tSplCode == "") {
            //    document.getElementById('otbFTSplCode').value = document.getElementById("otbFTSplCodeOld").value;
            //    W_GETtSplData(false, '2');
            //    return false;
            //}
        }
        else {
            if (tSplCode != "") {
                alert('<%=ViewData("ovd_tMsgSearchSpl")%>');
                document.getElementById('otbFTSplCode').value = "";
            }
        }

    }
    function W_CHKbHasSupplier() {
        //*Chuck 12102011
        var tCode = document.getElementById('otbFTSplCode').value;
        var tDate = J002_GETtTimeStamp();
        var tUrl = '<%=Url.Action("C_CHKtHasSupplier","cvcTCNTCstGiftHD") %>' + '?ptSplCode=' + tCode + '&ptDate=' + tDate;
        var oHTTP = J002_GEToXMLHttpRequest();
        oHTTP.open("GET", encodeURI(tUrl), false);
        oHTTP.send(null);
        var valueFis = oHTTP.responseText;
        if (valueFis.split("|")[0] != "" && valueFis.split("|")[0] != null) {
            alert(' ' + valueFis.split("|")[0]);
            return false;
        }
        return valueFis.split("|")[1];

    }
    function FTSplCode_onkeydown() {
        if (window.event.keyCode == 13) {
            document.getElementById('otbFTCghCtrName').focus();
        }
        return !(window.event && window.event.keyCode == 13);
    }

    function otbPdtCode_onblur99999999() {
        try {

            var tPdtCodeOld = document.getElementById('otbPdtCodeOld').value;
            var tPdtCode = document.getElementById('otbFTPdtCode').value;

            if (tPdtCode == null || tPdtCode == "") {
                W_CLRxTextBox();
                return false;

            }

            var tCstCode = document.getElementById('otbFTCstCode').value;
            if (tCstCode != "" || tCstCode != null) {
                if (J002_CHKbIsBlankValue("otbFTCstCode") == true) {
                    alert('<%=ViewData("tMsgErrorData")%>');
                    W_CLRxTextBox();
                    return false;
                }
            }
            var nPoint = J002_GETcNumber(document.getElementById('otbFCCstRetPoint').value);
            if (nPoint == 0) {
                alert('<%=ViewData("tMsgCstPointLessThanPdtPoint")%>');
                W_CLRxTextBox();
                document.getElementById('otbFTPdtCode').focus();
                return false;
            }
            var tSeq = document.getElementById('otbSeq').value;
            if (tSeq != null && tSeq != "") {
                return false;
            }

            if (tPdtCode == tPdtCodeOld) {
                return false;
            }


            if (W_GETtProductData(false) == true) {
                var oEletent = document.getElementById("otbPdtQty");
                oEletent.value = J002_DECcRound(1, nW_DecAmtForShw, true);
                W_DATxCalPointTotal();
                return true;
            }
        }
        catch (ex) {
            J002_SHWxMsgError("otbPdtCode_onblur", ex);
        }
    }

    function FTCstCode_onkeydown() {
        if (window.event.keyCode == 13) {
            //              document.getElementById('otbFTCghCtrName').focus();
            document.getElementById('otbFTSplCode').focus(); //*Chuck 12102011
        }
        return !(window.event && window.event.keyCode == 13);
    }

    function otbPdtCode_onblur() {
        try {
            var tPdtCodeOld = document.getElementById('otbPdtCodeOld').value;
            var tPdtCode = document.getElementById('otbFTPdtCode').value;

            if (tPdtCode == tPdtCodeOld) {
                return false;
            }

            if (tPdtCode == null || tPdtCode == "") {
                W_CLRxTextBox();
                return false;

            }

            var tCstCode = document.getElementById('otbFTCstCode').value;
            if (tCstCode != "" || tCstCode != null) {
                if (J002_CHKbIsBlankValue("otbFTCstCode") == true) {
                    W_CLRxTextBox();
                    document.getElementById('otbFTPdtCode').focus()
                    return false;
                }
            }

            if (W_GETtProductData(false) == true) {
                var oEletent = document.getElementById("otbPdtQty");
                oEletent.value = J002_DECcRound(document.getElementById("otbPdtQty").value, nW_DecAmtForShw, true);
                W_DATxCalPointTotal();
                if (document.getElementById("ockSendTab").checked == false) {
                    W_DATxCalPointTotal(); 
                    W_ADDxAddPdtToGrid(); 
                    document.getElementById("otbFTPdtCode").focus();
                }
                else {
                    if (document.getElementById("otbFTPdtSrn").value == '1') {
                        //W_DATxCalPointTotal(); //*CH 22-05-2012 Old
                        //W_ADDxAddPdtToGrid(); //*CH 22-05-2012 Old
                        J002_SETxReadOnly('otbPdtQty', true);
                        $("#otbFTPdtCode").focus();
                        //*CH 22-05-2012 เมื่อสินค้าแลกเป็นสินค้าที่มี Serial
                        var tPdtCode = $("#otbPdtBarCode1").val(); 
                        var tPdtName = $("#otbPdtName").val();
                        var tPdtFactor = $("#otbUnitFactor").val();
                        var tUnitName = $("#otbUnitName").val();
                        var tSeq = $("#otbSeq").val();

                        //****** Browse Serial ****** '*CH 22-05-2012
                        do {
                            var tReturnedValue = J003_BRWxSerial(tW_Controller, 'C_BRWxSerial', tPdtCode, tPdtName, tPdtFactor, tUnitName, tSeq, oJ003_SNDialogMode.Sale);
                            var bConfirm = false;
                            if (tReturnedValue == null || tReturnedValue == '') {
                                bConfirm = confirm('<%=ViewData("tMsgSelectPdtSerial")%>');
                            }
                        } while (bConfirm == true)
                        $('#otbSerialList').val(tReturnedValue);
                        if (tReturnedValue == null || tReturnedValue == '') {
                            $('#otbFTPdtCode').val(tPdtCode);
                            $("#otbSeq").val(tSeq);
                            W_CLRxTextBox();
                        }
                        else {
                            var nQty = tReturnedValue.split("|").length;
                            $("#otbPdtQty").val(nQty);
                            W_DATxCalPointTotal();
                            $("#otbPdtQty").focus();
                        }
                        //******* End Browse Serial ********\\
                    }
                    else {
                        document.getElementById("otbPdtQty").focus();
                    }


                }
                return true;
            }
        }
        catch (ex) {
            J002_SHWxMsgError("otbPdtCode_onblur", ex);
        }
    }
    function otbPdtCode_onKeyDown(ptKeyCode, ptWitch) {
        try {
            var tKey = ptKeyCode;
            if (ptWitch != null && ptWitch != '') { tKey = ptWitch; }

            if (tKey == 118) {
                W_DELxPdtItem();
                return false;
            }

            if (tKey == 13) {
                //               document.getElementById('otbFTCstCode').focus();
                //                 var tCstCode = document.getElementById('otbFTCstCode').value;
                //                 if (tCstCode != "" || tCstCode != null) {
                //                     if (J002_CHKbIsBlankValue("otbFTCstCode") == true) {
                //                         W_CLRxTextBox();
                //                         document.getElementById('otbFTPdtCode').focus()
                //                         return false;
                //                     }
                //                 }  
                ////                var tSeq = document.getElementById('otbSeq').value;
                ////                if (tSeq != null && tSeq != "") {
                ////                    return false;
                ////                }
                //                var tPdtCodeOld = document.getElementById('otbPdtCodeOld').value;
                //                var tPdtCode = document.getElementById('otbFTPdtCode').value;
                //                if (tPdtCode == null || tPdtCode == "") {
                //                    W_CLRxTextBox();
                //                    return false;

                //                }
                //                              
                //                if (W_GETtProductData(false) == true) {
                //                    var oEletent = document.getElementById("otbPdtQty");
                //                    oEletent.value = J002_DECcRound(document.getElementById("otbPdtQty").value, nW_DecAmtForShw, true);
                //                    W_DATxCalPointTotal();
                //                    if (document.getElementById("ockSendTab").checked == false) {
                //                        W_DATxCalPointTotal();
                //                        W_ADDxAddPdtToGrid();
                //                        document.getElementById("otbFTPdtCode").focus();
                //                    }
                //                    else {
                //                        if (document.getElementById("otbFTPdtSrn").value == '1') {
                //                            W_DATxCalPointTotal();
                //                            W_ADDxAddPdtToGrid();
                //                            J002_SETxReadOnly('otbPdtQty', true);
                //                            document.getElementById("otbFTPdtCode").focus();
                //                        }
                //                        else {
                //                         document.getElementById("otbPdtQty").focus();                       
                //                        }
                //                        

                //                    }
                //                    return true;
                //                }
                document.getElementById('otbPdtQty').focus(); //*CH 11-11-11
            }
        }
        catch (ex) {
            J002_SHWxMsgError("otbPdtCode_onKeyDown", ex);
        }
    }

    function otbPdtQty_onkeypress(ptKeyCode, ptWitch) {
        var bNumber = J002_CHKbCheckNumOnly(document.getElementById('otbPdtQty').value, ptKeyCode, ptWitch);
        if (bNumber == true) {
            W_DATxCalPointTotal();
            return true;
        }
        else {
            return false;
        }

    }

    function W_ADDxAddPdtToGrid() {
        try {
            var cPntDif = 0;
            var tPdtCode = document.getElementById("otbFTPdtCode").value;

            var tPdtName = document.getElementById("otbPdtName").value;
            var tUnitCode = document.getElementById("otbUnitCode").value;
            var tUnitName = document.getElementById("otbUnitName").value;
            var cPdtPoint = document.getElementById("otbPdtPoint").value;
            var tPdtBarCode1 = document.getElementById("otbPdtBarCode1").value;

            var tPdtStkCode = document.getElementById("otbPdtStkCode").value;
            var cPdtQty = document.getElementById("otbPdtQty").value;
            var cPntAmt = document.getElementById("otbPntAmt").value;
            var tDocNo = document.getElementById("otbFTCghDocNo").value;
            var dDocDate = J002_CONtDateTime(document.getElementById("odtFDCghDocDate").value);
            //var dDocDate = document.getElementById("odtFDCghDocDate").value; 
            var tCstCode = document.getElementById("otbFTCstCode").value;
            var tPdtSrn = document.getElementById("otbFTPdtSrn").value;
            var tSplcode = document.getElementById("otbFTSplCode").value; //*CH 18-10-11

            tPdtCode = J002_STRttrim(tPdtCode);
            //*TW 54-05-11
            if ((tPdtCode != null && tPdtCode != "") && (cPdtQty == null || cPdtQty == "")) {
                alert('<%=ViewData("tMsgQtyCannotEmpty") %>');
                return false;
            }
            //if (tPdtCode != null && tPdtCode != "") { Old *TW 54-05-11
            if ((tPdtCode != null && tPdtCode != "") && (cPdtQty != null && cPdtQty != "")) {
                W_DATxCalPointTotal();
                var cPointUsed = J002_GETcNumber(document.getElementById("otbFCCghPntUsed").value);

                //ตรวจสอบว่า มีการดึกแต้มผู้จำหน่ายรึไม่ ถ้ามีให้ใช้แต้มตามผู้จำหน่าย *CH 18-10-11
                var nPointSpl = document.getElementById("otbFTSplCode").value;
                var nPointCurrent = 0;
                if (nPointSpl != "") {
                    nPointCurrent = J002_GETcNumber(document.getElementById("otbFCPntSpl").value); // แต้มตามผู้จำหน่าย *CH 18-10-11                
                } else {
                    nPointCurrent = J002_GETcNumber(document.getElementById("otbFCCghPntAtChe").value);  // แต้มของลูกค้า
                }

                var cPntAmtOld = J002_GETcNumber(document.getElementById("otbPntAmtOld").value);  // แต้มรวมเก่า
                var nPdtQtyOld = J002_GETcNumber(document.getElementById("otbPdtQtyOld").value);
                //ถ้าแต้มรวมที่ได้ทำการแก้ไขมากกว่าแต้มรวมเก่า
                if (J002_GETcNumber(cPntAmt) > J002_GETcNumber(cPntAmtOld)) {
                    cPntDif = J002_GETcNumber(cPntAmt) - J002_GETcNumber(cPntAmtOld); // หาผลต่างของแต้ม
                    cPointUsed = cPointUsed + cPntDif;
                    // เปรียบเทียบถ้าแต้มรวมด้านล่างน้อยกว่าแต้มที่ลูกค้ามีอยู่ให้แสดงข้อความแจ้ง
                    if (J002_GETcNumber(nPointCurrent) < cPointUsed) {
                        alert('<%=ViewData("tMsgCstPointLessThanPdtPoint")%>');

                        if (document.getElementById('otbStaEdit').value == "1") {

                            document.getElementById("otbPdtQty").value = nPdtQtyOld;

                        }
                        else {
                            // document.getElementById("otbPntAmt").value = cPntAmtOld;
                            document.getElementById("otbPdtQty").value = cPdtQty;
                        }

                        W_DATxCalPointTotal();

                        //         alert(document.getElementById("otbFTPdtSrn").value);
                        if (document.getElementById("otbFTPdtSrn").value == '1') {

                            J002_SETxReadOnly("otbPdtQty", true);
                            document.getElementById("otbFTPdtCode").focus();
                            return false;
                        }
                        else {
                            J002_SETxReadOnly("otbPdtQty", false);
                            document.getElementById("otbPdtQty").focus();
                        }

                        return false;
                    }

                }

                var tDateTimeNow = J002_GETtTimeStamp();
                var tAction = '';
                var tParamSeq = '';
                var tSeq = document.getElementById("otbSeq").value;
                var tStaEdit = document.getElementById("otbStaEdit").value;
                var bAutoTab = document.getElementById("ockSendTab").checked;
                //var tPdtcode = document.getElementById('otbFTPdtCode').value;
                var tPdtCodeOld = document.getElementById('otbPdtCodeOld').value;
                var tBchCode = document.getElementById('otbFTBchCode').value;
                //var tSerialList = document.getElementById("otbSerialList").value; //*CH 29-05-2012 Old
                var tSerialList = escape($('#otbSerialList').val()); //*CH 29-05-2012 New
                var tUrl = '';
                //if (J002_STRttrim(tPdtcode) == tPdtCodeOld && tSeq != '' && tSeq != null) {// && bAutoTab == true) {//edit//*TW 54-06-14 ตัวแปรซ้ำ + Case tPdtcode,tPdtCode
                if (J002_STRttrim(tPdtCode) == tPdtCodeOld && tSeq != '' && tSeq != null) {// && bAutoTab == true) {//edit
                    tUrl += '<%=Url.Action("C_DATxEditItem","cvcTCNTCstGiftHD") %>';
                    tParamSeq = '&ptSeq=' + tSeq;
                }
                else {
                    tUrl += '<%=Url.Action("C_DATxAddItem","cvcTCNTCstGiftHD") %>';
                }
                //tUrl += '?ptPdtcode=' + tPdtCode; //*TW 54-06-14
                //tUrl += '?ptPdtcode=' + tPdtBarCode1; //*TW 54-06-14 //*CH 28-05-2012 Old
                tUrl += '?ptPdtcode=' + $('#otbFTPdtCode').val();  //*CH 28-05-2012 New
                tUrl += tParamSeq;
                //                tUrl += '&ptPdtName=' + tPdtName;
                //                tUrl += '&ptUnitCode=' + tUnitCode;
                //                tUrl += '&ptUnitName=' + tUnitName;
                //                tUrl += '&pcPdtPoint=' + cPdtPoint;
                //tUrl += '&ptPdtBarCode1=' + tPdtBarCode1; //*TW 54-06-14
                tUrl += '&ptPdtBarCode1=' + tPdtCode; //*TW 54-06-14
                //                tUrl += '&ptPdtStkCode=' + tPdtStkCode;
                //                tUrl += '&pcPointAm=' + cPntAmt;
                //                tUrl += '&ptBchCode=' + tBchCode;
                //                tUrl += '&pcPdtQty=' + cPdtQty;
                //                tUrl += '&ptDocNo=' + tDocNo;
                tUrl += '&pdDocDate=' + dDocDate;
                tUrl += '&ptCstCode=' + tCstCode;
                tUrl += '&ptSerialList=' + tSerialList;
                tUrl += '&ptPdtSrn=' + tPdtSrn;
                tUrl += '&ptDateTimeNow=' + tDateTimeNow;
                tUrl += '&ptSplCode=' + tSplcode;

                //*CH 10-11-11 สลับที่แล้ว firefox ทำงานได้ ไม่กระทบกับ IE
                tUrl += '&ptPdtName=' + tPdtName;
                tUrl += '&ptUnitCode=' + tUnitCode;
                tUrl += '&ptUnitName=' + tUnitName;
                tUrl += '&pcPdtPoint=' + cPdtPoint;
                tUrl += '&ptPdtStkCode=' + tPdtStkCode;
                tUrl += '&pcPointAm=' + cPntAmt;
                tUrl += '&ptBchCode=' + tBchCode;
                tUrl += '&pcPdtQty=' + cPdtQty;
                tUrl += '&ptDocNo=' + tDocNo;

                tUrl = tUrl.replace('#', '*'); //** เปลี่ยน # เป็น * เพื่อให้โปรแกรมทำงานได้ //*CH 29-05-2012
                encodeURIComponent(tUrl); //*CH 10-11-11

                oW_xmlHttp = J002_GEToXMLHttpRequest();
                oW_xmlHttp.open("GET", encodeURI(tUrl), false);
                //oW_xmlHttp.open("GET", encodeURIComponent(tUrl), false);
                oW_xmlHttp.onreadystatechange = W_SETxHandleStateChangeSetTotal;
                oW_xmlHttp.send(null);
                if (oW_xmlHttp.status != 200) {
                    alert("error" + oW_xmlHttp.status + "\n" + oW_xmlHttp.responseText);
                }

                W_SETxRebindGrid();
                if (tStaEdit == '1') {
                    document.getElementById("otbStaEdit").value = '';
                }
            }
            $("#otbSerialList").val(''); //CH 24-05-2012
            W_CLRxTextBox();
            //W_DATxCalFooter();
        }
        catch (ex) {
            J002_SHWxMsgError("W_ADDxAddPdtToGrid", ex);
        }

    }
    function W_SETxHandleStateChangeSetTotal() {
        try {
            if (oW_xmlHttp.readyState == 4) {
                if (oW_xmlHttp.status == 200) {
                    if (oW_xmlHttp.responseText != -1) {
                        var oArr = oW_xmlHttp.responseText.split('|');
                        if (oArr[0] != null && oArr[0] != "") {
                            alert(oArr[0]);
                            return false;
                        }

                        if (oArr[2] != null && oArr[2] != "") {
                            alert('<%=ViewData("tMsgCheckPdtDuplicate")%>');
                            W_CLRxTextBox();
                            document.getElementById("otbFTPdtCode").focus();
                            return false;
                        }
                        var cPointPaid = J002_GETcNumber(oArr[1]);
                        var cCurrentPoint = J002_GETcNumber(document.getElementById('otbFCCstRetPoint').value);
                        document.getElementById("otbFCCghPntUsed").value = J002_DECcRound(cPointPaid, nW_DecAmtForShw, true);
                        W_CALxPointPaid()
                        //                        document.getElementById("otbPointPaid").value = J002_DECcRound(cCurrentPoint - cPointPaid, nW_DecAmtForShw, true);
                        return true;
                    }
                }
            }

        }
        catch (ex) {
            J002_SHWxMsgError("W_SETxHandleStateChangeSetTotal", ex);
        }

    }

    function W_SETxRebindGrid() {
        try {
            // rebind the related grid
            var oGrid = $('#ogdGridDT').data('tGrid');
            oGrid.rebind();
            W_CLRxVariable();
        }
        catch (ex) {
            J002_SHWxMsgError("W_SETxRebindGrid", ex);
        }

    }

    function W_CLRxVariable() {
        document.getElementById('otbFTPdtCode').value = "";

    }

    function W_GETxPdtOnRowSelected(e) {
        try {
            if (nW_StaPrcDoc == '1' || nW_StaDocCancel == '1') {
                return false;
            }
            if (e.row != null) {
                if (e.row.cells.length < 2) { return 0; }
                var tSeq = e.row.cells[0].innerHTML;
                //var tPdtCode = e.row.cells[1].innerHTML;//*TW 54-06-14 Old
                var tBarCode = e.row.cells[1].innerHTML; //*TW 54-06-14
                var tPdtName = e.row.cells[2].innerHTML;
                var tUnitName = e.row.cells[3].innerHTML;
                var cPdtPoint = e.row.cells[4].innerHTML;
                var cPdtQty = e.row.cells[5].innerHTML;
                var cPointAm = e.row.cells[6].innerHTML;
                //var tBarCode = e.row.cells[7].innerHTML; //*TW 54-06-14 Old
                var tPdtCode = e.row.cells[7].innerHTML; //*TW 54-06-14
                var tStkCode = e.row.cells[8].innerHTML;
                var tUnitCode = e.row.cells[9].innerHTML;
                var tSerial = e.row.cells[10].innerHTML;
                var tDateTimeNow = J002_GETtTimeStamp();
                if (tSerial == '1') {
                    J002_SETxReadOnly("otbPdtQty", true);
                }

                document.getElementById('otbSeq').value = tSeq;
                document.getElementById('otbStaEdit').value = "1";
                //document.getElementById('otbFTPdtCode').value = tPdtCode; //*TW 54-06-14 Old
                //document.getElementById('otbPdtCodeOld').value = tPdtCode; //*TW 54-06-14 Old
                //document.getElementById('otbPdtSel').value = tPdtCode; //*TW 54-06-14 Old
                document.getElementById('otbFTPdtCode').value = tBarCode; //*TW 54-06-14
                document.getElementById('otbPdtCodeOld').value = tBarCode; //*TW 54-06-14
                document.getElementById('otbPdtSel').value = tBarCode; //*TW 54-06-14
                document.getElementById('otbPdtName').value = tPdtName;
                document.getElementById('otbUnitCode').value = tUnitCode;
                document.getElementById('otbUnitName').value = tUnitName;
                document.getElementById('otbPdtQty').value = cPdtQty;
                document.getElementById('otbPdtQtyOld').value = cPdtQty;
                document.getElementById('otbPdtPoint').value = cPdtPoint;
                document.getElementById('otbPntAmt').value = cPointAm;
                document.getElementById("otbPntAmtOld").value = cPointAm;
                document.getElementById('otbFTPdtCode').focus();


                //Find Sum


                //                alert(parseFloat(cPointAm.replace(',','')));
                //                var oOldUsed = document.getElementById('otbFCCghPntUsed');
                //                var cResult = parseFloat(oOldUsed.value.replace(',', '')) - parseFloat(cPointAm.replace(',', ''));
                //                
                //                //*TW 54-05-10
                //                document.getElementById('otbFCCghPntUsed').value = cResult;
                //                W_CALxCurrentPoint();

            }
        }
        catch (ex) {
            J002_SHWxMsgError("W_GETxPdtOnRowSelected", ex);
        }
    }

    function W_GETxUsrAndDptName() {
        try {
            var tDataTimeNow = J002_GETtTimeStamp();
            var tUsrCode = $("#otbFTUsrCode").val();
            var tUrl = '<%=Url.Action("C_GETxUsrAndDptName","cvcTCNTCstGiftHD") %>' + "?ptUsrCode=" + tUsrCode + "&ptDateTimeNow=" + tDataTimeNow;
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
                document.getElementById("otbFTUsrName").value = mytool_array[1];
                document.getElementById("otbFTDepName").value = mytool_array[2];
            }
        }

        catch (ex) {
            J002_SHWxMsgError("W_GETxUsrAndDptName", ex);
        }

    }

    function W_SETbStaDocActive() {
        var nStaDocAct = document.getElementById('otbFNCghStaDocAct').value;
        if (nStaDocAct == '0') {
            document.getElementById('ockFN' + tW_MidHD + 'StaDocAct').checked = false;
        }
        else {
            document.getElementById('ockFN' + tW_MidHD + 'StaDocAct').checked = true;
        }
    }

    function grid_onLoad() {
        $('#ogdGridDT tr', this).live('dblclick', function(e) {
            if (nW_StaPrcDoc == 1 || nW_StaDocCancel == 1) {
                return false;
            }
            if ($('td', this).length < 2) { return 0; }
            var tMode = oJ003_SNDialogMode.Sale;
            if (nW_StaPrcDoc == 1) {
                tMode = oJ003_SNDialogMode.ReadOnly;
            }
            var tDocNo = document.getElementById("otbFT" + tW_MidHD + "DocNo").value;
            var tSeq = $('td', this).eq(0).text();
            var tPdtCode = $('td', this).eq(1).text();
            var tPdtName = $('td', this).eq(2).text();
            var tUnitName = $('td', this).eq(3).text();
            var tPdtFactor = $('td', this).eq(9).text();
            var tSerial = $('td', this).eq(10).text();
            // alert(tSerial);
            if (tSerial == '1') {
                if (nW_StaDoc == 1) {
                    tDocNo = document.getElementById("otbFT" + tW_MidHD + "DocNo").value;
                }
                //****** Browse Serial ******
                do {
                    var tReturnedValue = J003_BRWxSerial(tW_Controller, 'C_BRWxSerial', tPdtCode, tPdtName, tPdtFactor, tUnitName, tSeq, tMode,tDocNo);
                    var bConfirm = false;
                    if (tReturnedValue == null || tReturnedValue == '') {
                        bConfirm = confirm('<%=ViewData("tMsgSelectPdtSerial")%>');
                    }
                } while (bConfirm == true)
                document.getElementById('otbSerialList').value = tReturnedValue;
                if (tReturnedValue == null || tReturnedValue == '') {
                    document.getElementById('otbFTPdtCode').value = tPdtCode;
                    document.getElementById("otbSeq").value = tSeq;
                    W_DELtPdtSerial();
                    W_SETxRebindGrid();
                    W_CLRxTextBox();
                }
                else {
                    if (nW_StaPrcDoc != 1) {
                        var nQty = tReturnedValue.split("|").length;
                        document.getElementById("otbPdtQty").value = nQty;
                        W_DATxCalPointTotal();
                        // J002_SETxReadOnly('otbPdtQty', true);
                    }
                }
            }
        })
    }

    function W_DELtPdtSerial() {
        try {
            var tDataTimeNow = J002_GETtTimeStamp(); //W_GETtDateTimeNow(); //*CH 28-05-2012 Old
            var tSeq = document.getElementById("otbSeq").value;
            var tPdtCode = document.getElementById("otbFTPdtCode").value;
            var tUrl = '';
            tUrl += '<%=Url.Action("C_DELtPdtSerial","cvcTCNTCstGiftHD") %>';
            tUrl += "?ptDateTimeNow=" + tDataTimeNow;
            tUrl += "&ptPdtCode=" + tPdtCode;
            tUrl += "&ptSeq=" + tSeq;
            
            //oW_xmlHttp = J002_GEToXMLHttpRequest();
            //oW_xmlHttp.open("GET", encodeURI(tUrl), false);
            //oW_xmlHttp.send(null);
            //return oW_xmlHttp.responseText; //return จำนวนรายการสินค้า ใน Grid

        }
        catch (ex) {
            J002_SHWxMsgError("W_DELtPdtSerial", ex);
        }
    }

    function W_DELxPdtItem() {
        try {
            var oEletent = document.getElementById('otbSeq');
            var tDateTimeNow = J002_GETtTimeStamp();
            var tUrl = '<%=Url.Action("C_DELtDeletePdtItem","cvcTCNTCstGiftHD") %>' + '?ptSeq=' + oEletent.value;
            tUrl += '&ptDateTimeNow=' + tDateTimeNow;
            oW_xmlHttp = J002_GEToXMLHttpRequest();
            oW_xmlHttp.open("GET", encodeURI(tUrl), false);
            oW_xmlHttp.onreadystatechange = W_SETxHandleStateChangeSetTotal;
            oW_xmlHttp.send(null);
            W_SETxRebindGrid();
            W_CLRxTextBox();
            document.getElementById("otbFTPdtCode").focus();
            W_DATxCalPointTotal();
            W_CALxPointPaid();

        }
        catch (ex) {
            J002_SHWxMsgError("W_DELxPdtItem", ex);
        }


    }

    function W_CHKbChangeDataDT() {
        try {
            var tDate = J002_GETtTimeStamp();
            var tUrl = '';
            tUrl += '<%=Url.Action("C_CHKtChangeDataDT","cvcTCNTCstGiftHD") %>';
            tUrl += '?ptDateTimeNow=' + tDate;
            oW_xmlHttp = J002_GEToXMLHttpRequest();
            oW_xmlHttp.open('GET', encodeURI(tUrl), false);
            oW_xmlHttp.send(null);
            if (oW_xmlHttp.status != 200) {
                var tMsg = "Error" + oW_xmlHttp.stutus + "\n";
                tMsg += "Function : C_CHKtChangeDataDT \n";
                tMsg += oW_xmlHttp.responseText;
                alert(tMsg);
                return false;
            }
            var tReturn = oW_xmlHttp.responseText;
            //alert(tReturn);
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



    function W_CHKbDataChange(ptStaDocCancel, ptStaPrcDoc, ptObjOldValue, ptObjName, ptDecAmtForSav) {
        try {
            if (ptStaDocCancel == '1' || ptStaPrcDoc == '1') {
                return false;
            }

            var tBeforeValue = '';
            var tAfterValue = '';
            var tOldValue = '';
            var tNewValue = '';
            tBeforeValue = ptObjOldValue.split(",");
            tAfterValue = ptObjName.split("|");

            var nLoop = 0;
            nLoop = tBeforeValue.length;
            var i;
            if (tBeforeValue != null && tBeforeValue != "") {
                for (i = 0; i < nLoop; i++) {
                    tOldValue = tBeforeValue[i];
                    var tStr = tAfterValue[i].substring(0, 5);
                    if (tStr == 'otbFC') {
                        tNewValue = J002_GETcNumber(J002_DECcRound($("#" + tAfterValue[i]).val(), ptDecAmtForSav, false));
                    }
                    else {
                        tNewValue = document.getElementById(tAfterValue[i]).value;
                    }
                    if (tOldValue != tNewValue) {
                        //  alert(tOldValue + '- ' + tNewValue + ' - ' + i + ' ' + tAfterValue[i]);
                        return true;
                    }
                }
                return false;
            }
        }
        catch (ex) {
            J002_SHWxMsgError("J002_CHKbDataChange", ex);
        }


    }
    function window_onkeydown() {
        var tKey = event.keyCode;
        if (event.which != null && event.which != '') {
            tKey = event.which;
        }
        var bReturn = true;
        switch (tKey) {
            case 112: //F1
                break;
            case 113: //F2
                W_FRMxNewDoc();
                bReturn = false;
                break;
            case 114: //F3
                W_FRMxFindDoc()
                bReturn = false;
                break;
            case 115: //F4
                break;
            case 116: //F5
                break;
            case 117: //F6
                W_FRMxDelDoc();
                bReturn = false;
                break;
            case 118: //F7
                break;
            case 119: //F8
                W_FRMxDelDoc();
                bReturn = false;
                break;
            case 120: //F9
                W_DATxSaveDocument();
                bReturn = false;
                break;
            case 121: //F10
                W_FRMxShwPrintDialog()
                bReturn = false;
                break;
            case 122: //F11
                break;
            case 123: //F12
                break;
            case 27: //ESC
                W_FRMxCloseDoc('1');
                bReturn = false;
                break;
        }
        return bReturn;
    }

    function otbFTCstName_onfocus() {
        document.getElementById('otbFTCstAddr').focus();
    }
    function otbFTCstAddr_onfocus() {
        document.getElementById('otbFTCstTel').focus();
    }
    function otbFTCstTel_onfocus() {
        document.getElementById('otbFTCstFax').focus();
    }
    function otbFTCstFax_onfocus() {
        document.getElementById('otbFCCghPntAtChe').focus();
    }
    function otbFCCghPntAtChe_onfocus() {
        var oOtbSplCode = $('#otbFTSplCode').val(); //document.getElementById('otbFTSplCode').value;

        if (oOtbSplCode == "") {
            document.getElementById('otbFTSplCode').focus();
        } else if (oOtbSplCode != "") {
            document.getElementById('otbFTCghCtrName').focus();
        }
    }
    function otbFTSplCode_onfocus() {
        document.getElementById('otbFCPntSpl').focus();
    }
    function otbFCPntSpl_onfocus() {
        document.getElementById('otbFTCghCtrName').focus();
    }

    function W_DATxNoEnter(ptKeyCode, ptWhich, ptObjId) {//*CH 19-11-11
        var tKey;
        var brNum;
        var tCstCode = $('#otbFTCstCode').val();
        var tCstCodeOld = $('#otbFTCstCodeOld').val();
        if (ptKeyCode != null) { tKey = ptKeyCode; brNum = 1; }
        if (ptWhich != null) { tKey = ptWhich; brNum = 2; }
        if (tKey == 124 || tKey == 39 || tKey == 34 || tKey == 35) {// ' " | #
            return false;
        }
        if (tKey == 13) {
            switch (ptObjId) {
                case "otbFTCstCode":
                    if (tCstCode != tCstCodeOld) {
                        if (brNum == 2) {
                            document.getElementById('otbFTSplCode').focus();
                        }
                    }
                    //document.getElementById('otbFTCstName').focus();
                    //document.getElementById('otbFTCstName').blur();
                    break;
                case "otbFTSplCode":
                    if (brNum == 2) {
                        document.getElementById('otbFTCghCtrName').focus();
                    }
                    break;
                case "otbFilterCst":
                    //สำหรับการค้นหาลูกค้า
                    //W_PRCxFillData('Cst');
                    break;
                case "otbFilterPdt":
                    //สำหรับการค้นหาสินค้าแลกแต้ม
                    //W_PRCxFillData('Pdt');
                    break;
                default:
                    return false;
            }
            return true;
        }
    }
</script>
<script type="text/javascript">
    $ui(function() {
        //#### ค้นหาลูกค้า ####
        $ui("#oimBrwCst").click(function() {
            $ui("#odiBrwCst").dialog("open");
        });
        $ui("#odiBrwCst").dialog({
            autoOpen: false,
            modal: true,
            resizable: false,
            height: "auto",
            width: "800px"
        });
        //กดปุ่ม ยกเลิก
        $ui("#ocmCancel").click(function() {
            $ui("#odiBrwCst").dialog("close");
        });
        //กดปุ่ม ตกลง
        $ui("#ocmSelectCst").click(function() {
            $ui("#odiBrwCst").dialog("close");
        });

        //#### ค้นหาสินค้า ####
        $ui("#oimBrwPdt").click(function() {
            if (W_CHKbCstPoint()) {
                W_PRCxFillPdtData();
                $ui("#odiBrwPdt").dialog("open");
            }
        });
        $ui("#odiBrwPdt").dialog({
            autoOpen: false,
            modal: true,
            resizable: false,
            height: "auto",
            width: "800px"
        });
        //กดปุ่ม ยกเลิก
        $ui("#ocmCancelPdt").click(function() {
            $ui("#odiBrwPdt").dialog("close");
        });
        //กดปุ่ม ตกลง
        $ui("#ocmSelectPdt").click(function() {
            $ui("#odiBrwPdt").dialog("close");
        });
    });
    function W_CHKbCstPoint() {
        try {
            if (J002_CHKbIsBlankValue("otbFTCstCode") == true) {
                return false;
            }
            var ptCase = "PdtCode";
            var nPoint = J002_GETcNumber($("#otbPointPaid").val()); //*TW 54-04-29
            if (nPoint <= 0) {
                alert('<%=ViewData("tMsgCstPointLessThanPdtPoint")%>');
                return false;
            }
            //var tSplcode = $("#otbFTSplCode").val(); //*CH 18-10-11
            //var tDate = J002_GETtTimeStamp()
            //*CH 18-10-11 ให้ค้นหาตามSupplier
            //var tUrl = "";
            //if (tSplcode != "") {
            //    tUrl = '<%=Url.Action("C_BRWxMaster","cvcTCNTCstGiftHD") %>' + '?ptCase=' + ptCase + '&pnPoint=' + nPoint + '&ptDate=' + tDate + '&ptSplCode=' + tSplcode;
            //} else {
            //    tUrl = '<%=Url.Action("C_BRWxMaster","cvcTCNTCstGiftHD") %>' + '?ptCase=' + ptCase + '&pnPoint=' + nPoint + '&ptDate=' + tDate;
            //}
            //var tReturnedValue = showModalDialog(encodeURI(tUrl), "Passed String", "dialogWidth:800px; dialogHeight:500px; status:no; center:yes;titlebar =0")
            return true;
        }
        catch (ex) {
            J002_SHWxMsgError("W_DATxBrowsePdt", ex);
            return false;
        }
    }
    function W_SETtWherePdt() {
        var tSplCode = $("#otbFTSplCode").val();
        var nPoint = J002_GETcNumber($("#otbPointPaid").val());
        var tWahGiftCode = '<%=Session("tVB_CNWahWahGift")%>';
        var tWhe = "(FCPdtPointTime >0 AND FCPdtPointTime <=" + nPoint + ") "
        tWhe += "AND FTWahCode = ''" + tWahGiftCode + "'' "
        tWhe += "AND TCNMPdt.FTPdtCode = TCNTPdtInWha.FTPdtCode AND TCNTPdtInWha.FCWahQty > 0 "
        if ($("#otbFTSplCode").val() != "") {
            tWhe += "AND FTSplCode= ''" + $("#otbFTSplCode").val() + "'' " 
        }
        return tWhe;
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

    function W_SETxCstData(ptValue) {
        if (ptValue != undefined) {
            if (ptValue != '12233344445555566666677777778888888899999999900000000001223334444555556666667777777888888889999999990000000000') {
                var tCstCode = ptValue.split(";")[0];
                document.getElementById("otbFTCstCode").value = tCstCode;

                //*CH 05-11-11 ตรวจสอบว่ารหัสลูกค้าใหม่
                if (tOldCode != tCstCode) {
                    document.getElementById('otbFTSplCode').value = "";
                    document.getElementById('otbFTSplName').value = "";
                    document.getElementById('otbFCPntSpl').value = J002_DECcRound(0, nW_DecAmtForShw, true);
                }

                document.getElementById('otbFTSplCode').focus(); 
                var bConfirm;
                var tOldCode = document.getElementById("otbFTCstCodeOld").value;

                var nPdtCount = W_GETtPdtCount();
                if (tCstCode != "" && tCstCode != null) {
                    if ((tOldCode != null && tOldCode != "" && nPdtCount > 0) && (tCstCode != tOldCode)) {
                        bConfirm = confirm('<%= ViewData("tMsgClearCstCode") %>');
                        if (bConfirm == true) {
                            W_CLRxDataDT();
                        }
                        else {
                            return false;
                        }
                    }
                    W_GETtCustomerData(false, '2');
                    return true;
                }
            }
        }
    }

    function C_SETxPdtData(ptValue) {
        if (ptValue != undefined) {
            if (ptValue != '12233344445555566666677777778888888899999999900000000001223334444555556666667777777888888889999999990000000000') {
                var tPdtCode = ptValue.split(";")[0];
                $("#otbFTPdtCode").val(tPdtCode);
                var tCode = $("#otbFTPdtCode").val();
                if (tCode != "" && tCode != null) {
                    if (W_GETtProductData(false) == false) {
                        W_CLRxTextBox();
                        document.getElementById("otbFTPdtCode").focus();
                        return false;
                    }

                    if ($("#otbFTPdtSrn").val() == '1') {
                        J002_SETxReadOnly('otbPdtQty', true);
                        var tPdtCode = $("#otbPdtBarCode1").val(); 
                        var tPdtName = $("#otbPdtName").val();
                        var tPdtFactor = $("#otbUnitFactor").val();
                        var tUnitName = $("#otbUnitName").val();
                        var tSeq = $("#otbSeq").val();

                        //****** Browse Serial ******
                        do {
                            var ptValue = J003_BRWxSerial(tW_Controller, 'C_BRWxSerial', tPdtCode, tPdtName, tPdtFactor, tUnitName, tSeq, oJ003_SNDialogMode.Sale);
                            var bConfirm = false;
                            if (ptValue == null || ptValue == '') {
                                bConfirm = confirm('<%=ViewData("tMsgSelectPdtSerial")%>');
                            }
                        } while (bConfirm == true)
                        $('#otbSerialList').val(ptValue);
                        if (ptValue == null || ptValue == '') {
                            $('#otbPdtBarCode1').val(tPdtCode);
                            $('#otbSeq').val(tSeq);
                            W_CLRxTextBox();
                        }
                        else {
                            var nQty = ptValue.split("|").length;
                            $('#otbPdtQty').val(nQty);
                            W_DATxCalPointTotal();
                            $('#otbPdtQty').focus(); 
                        }
                    }
                    else {
                        //เมื่อเลือกแท็บอัตโนมัติให้นำสินค้าลงตารางโดยไม่ได้กำหนดสินค้า //*CH 27-05-2012
                        if (document.getElementById("ockSendTab").checked == true) {
                            W_DATxCalPointTotal();
                            W_ADDxAddPdtToGrid();
                            $('#otbFTPdtCode').focus();
                            W_CLRxTextBox();
                        } else if (document.getElementById('ockSendTab').checked == false) {
                            var oEletent = document.getElementById("otbPdtQty");
                            oEletent.value = 1;
                            W_DATxCalPointTotal();
                            $('#otbFTPdtCode').focus();
                            J002_SETxReadOnly('otbPdtQty', false);
                        }
                    }
                }

            }
        }
    }
</script>
</asp:Content>