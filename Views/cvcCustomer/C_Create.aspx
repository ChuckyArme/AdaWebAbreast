<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage(Of Adasoft.WebPos.Models.cmlTCNMCst)" %>

<%@ Import Namespace="Adasoft.WebPos.Models" %>

<%@ Import Namespace="Adasoft.WebPos.DataAccess" %>
<%@ Import Namespace="System.Resources" %>
<%@ Import Namespace="AdaWebPos" %>
<%@ Import Namespace="Telerik.Web.UI"%>
<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        AdaWebPos.My.Resources.resLCcvcCustomer.Culture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
        Resources.resGBMsg.Culture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
        Resources.resGBMenuName.Culture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
        AdaWebPos.My.Resources.resLCcvcTACTSqHD.Culture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
        Resources.resGBChangeValue.Culture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
        Resources.resGBGridHeader.Culture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
        AdaWebPos.My.Resources.resLCcvcCNBrw.Culture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)

        ViewData("tVB_LastLang") = Session("tVB_LastLang").ToString.toUpper
        
        ViewData("olaClose") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaClose
        ViewData("olaGenCode") = AdaWebPos.My.Resources.resLCcvcCustomer.olaGenCode
        ViewData("olaCanDelete") = AdaWebPos.My.Resources.resLCcvcCustomer.olaCanDelete
        ViewData("olaCanEdit") = AdaWebPos.My.Resources.resLCcvcCustomer.olaCanEdit
        ViewData("olaCanSave") = AdaWebPos.My.Resources.resLCcvcCustomer.olaCanSave
        ViewData("olaCreate") = AdaWebPos.My.Resources.resLCcvcCustomer.olaCreate
        ViewData("olaDetail") = AdaWebPos.My.Resources.resLCcvcCustomer.olaDetail
        ViewData("olaFCCstAmtLeft") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFCCstAmtLeft
        ViewData("olaFTCstCode") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstCode
        ViewData("olaFCCstChqLeft") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFCCstChqLeft
        ViewData("olaFCCstChqRet") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFCCstChqRet
        ViewData("olaFCCstCrLimit") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFCCstCrLimit
        ViewData("olaFCCstDailyAmt") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFCCstDailyAmt
        ViewData("olaFCCstDailyPoint") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFCCstDailyPoint
        ViewData("olaFCCstGrandDebit") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFCCstGrandDebit
        ViewData("olaFCCstRetAmt") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFCCstRetAmt
        ViewData("olaFCCstRetPoint") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFCCstRetPoint
        ViewData("olaFCCstShrAddAmt") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFCCstShrAddAmt
        ViewData("olaFCCstShrAddQty") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFCCstShrAddQty
        ViewData("olaFCCstShrBgnAmt") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFCCstShrBgnAmt
        ViewData("olaFCCstShrBgnQty") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFCCstShrBgnQty
        ViewData("olaFCCstWhsAmt") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFCCstWhsAmt
        ViewData("olaFCCstWhsPoint") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFCCstWhsPoint
        ViewData("olaFCRteFraction") = "xx" 'AdaWebPos.My.Resources.resLCcvcCustomer.olaFCRteFraction
        ViewData("olaFCRteRate") = "xx" 'AdaWebPos.My.Resources.resLCcvcCustomer.olaFCRteRate
        ViewData("olaFDCstApply") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFDCstApply
        ViewData("olaFDCstCrdExpire") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFDCstCrdExpire
        ViewData("olaFDCstCrdIssue") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFDCstCrdIssue
        ViewData("olaFDCstDob") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFDCstDob
        ViewData("olaFDCstLastCta") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFDCstLastCta
        ViewData("olaFDCstLastPay") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFDCstLastPay
        ViewData("olaFDCstLastPoint") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFDCstLastPoint
        ViewData("olaFDCstShrAddDate") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFDCstShrAddDate
        ViewData("olaFDCstShrBgnDate") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFDCstShrBgnDate
        ViewData("olaFDDateUpd") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFDDateUpd
        ViewData("olaFNCstCrTerm") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFNCstCrTerm
        ViewData("olaFNCstViaTime") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFNCstViaTime
        ViewData("olaFTAccCode") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTAccCode
        ViewData("olaFTAreCode") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTAreCode
        ViewData("olaFTBchCode") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTBchCode
        ViewData("olaFTCgpCode") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCgpCode
        ViewData("olaFTClvCode") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTClvCode
        ViewData("olaFTCstAddr") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstAddr
        ViewData("olaFTCstAddrNo") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstAddrNo
        ViewData("olaFTCstBillRmk") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstBillRmk
        ViewData("olaFTCstBillVat") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstBillVat
        ViewData("olaFTCstBrand1") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstBrand1
        ViewData("olaFTCstBrand2") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstBrand2
        ViewData("olaFTCstBrand3") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstBrand3
        ViewData("olaFTCstBusiness") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstBusiness
        ViewData("olaFTCstCardID") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstCardID
        ViewData("olaFTCstCode") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstCode
        ViewData("olaFTCstCountry") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstCountry
        ViewData("olaFTCstCrdNo") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstCrdNo
        ViewData("olaFTCstDayCta") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstDayCta
        ViewData("olaFTCstDiscRet") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstDiscRet
        ViewData("olaFTCstDiscWhs") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstDiscWhs
        ViewData("olaFTCstDstCode") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstDstCode
        ViewData("olaFTCstEmail") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstEmail
        ViewData("olaFTCstFax") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstFax
        ViewData("olaFTCstMailAddr") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstMailAddr
        ViewData("olaFTCstMailTo") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstMailTo
        ViewData("olaFTCstName") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstName
        ViewData("olaFTCstNameOth") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstNameOth
        ViewData("olaFTCstPayRmk") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstPayRmk
        ViewData("olaFTCstPic") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstPic
        ViewData("olaFTCstPostCode") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstPostCode
        ViewData("olaFTCstPriLevRet") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstPriLevRet
        ViewData("olaFTCstPriLevWhs") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstPriLevWhs
        ViewData("olaFTCstPvnCode") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstPvnCode
        ViewData("olaFTCstResTel") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstResTel
        ViewData("olaFTCstRmk") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstRmk
        ViewData("olaFTCstRoad") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstRoad
        ViewData("olaFTCstSex") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstSex
        ViewData("olaFTCstSize") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstSize
        ViewData("olaFTCstSoi") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstSoi
        ViewData("olaFTCstStaActive") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstStaActive
        ViewData("olaFTCstStaAge") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstStaAge
        ViewData("olaFTCstStaApv") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstStaApv
        ViewData("olaFTCstStaClose") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstStaClose
        ViewData("olaFTCstStaff1") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstStaff1
        ViewData("olaFTCstStaff2") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstStaff2
        ViewData("olaFTCstStaff3") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstStaff3
        ViewData("olaFTCstSubDist") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstSubDist
        ViewData("olaFTCstTaxNo") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstTaxNo
        ViewData("olaFTCstTel") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstTel
        ViewData("olaFTCstTspPaid") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstTspPaid
        ViewData("olaFTCstTtlName") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstTtlName
        ViewData("olaFTCstVATInOrEx") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstVATInOrEx
        ViewData("olaFTCstViaRmk") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstViaRmk
        ViewData("olaFTCstVillage") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstVillage
        ViewData("olaFTCstWebsite") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCstWebsite
        ViewData("olaFTCtyCode") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTCtyCode
        ViewData("olaFTDstCode") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTDstCode
        ViewData("olaFTOcpCode") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTOcpCode
        ViewData("olaFTPvnCode") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTPvnCode
        ViewData("olaFTShpCode") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTShpCode
        ViewData("olaFTSpnCode") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTSpnCode
        ViewData("olaFTUsrCode") = AdaWebPos.My.Resources.resLCcvcCustomer.olaFTUsrCode
        'ViewData("olaHeaderAdd") = AdaWebPos.My.Resources.resLCcvcCustomer.olaHeaderAdd
        ViewData("olaHeaderDetail") = AdaWebPos.My.Resources.resLCcvcCustomer.olaHeaderDetail
        'ViewData("olaHeaderEdit") = AdaWebPos.My.Resources.resLCcvcCustomer.olaHeaderEdit
        If Session("ptChkSta") = "C_Create" Then
            ViewData("olaHeaderAdd") = AdaWebPos.My.Resources.resLCcvcCustomer.olaHeaderAdd
        Else
            ViewData("olaHeaderAdd") = AdaWebPos.My.Resources.resLCcvcCustomer.olaHeaderEdit
        End If
        ViewData("olaHeaderList") = AdaWebPos.My.Resources.resLCcvcCustomer.olaHeaderList
        ViewData("olaMenuName") = AdaWebPos.My.Resources.resLCcvcCustomer.olaMenuName
        ViewData("olaBrowseData") = AdaWebPos.My.Resources.resLCcvcCustomer.olaBrowseData
        ViewData("olaAge") = AdaWebPos.My.Resources.resLCcvcCustomer.olaAge
        ViewData("olaBrowse") = Resources.resGBMsg.tMsgBrowse
        ViewData("olaNotfound") = Resources.resGBMsg.tMsgDAT_Notfound001
        '*PP 10-06-10 
        ViewData("olaTabGeneral") = AdaWebPos.My.Resources.resLCcvcCustomer.olaTabGeneral
        ViewData("olaTabOthData") = AdaWebPos.My.Resources.resLCcvcCustomer.olaTabOthData
        ViewData("olaTabContractor") = AdaWebPos.My.Resources.resLCcvcCustomer.olaTabContractor
        ViewData("olaTabShipPlace") = AdaWebPos.My.Resources.resLCcvcCustomer.olaTabShipPlace
        ViewData("olaTabWholesaleHis") = AdaWebPos.My.Resources.resLCcvcCustomer.olaTabWholesaleHis
        ViewData("olaTabRetailHis") = AdaWebPos.My.Resources.resLCcvcCustomer.olaTabRetailHis
        ViewData("olaTabShare") = AdaWebPos.My.Resources.resLCcvcCustomer.olaTabShare
        ViewData("olaTabCN_DN_Oth") = AdaWebPos.My.Resources.resLCcvcCustomer.olaTabCN_DN_Oth
        ViewData("olaTabCreditNote") = AdaWebPos.My.Resources.resLCcvcCustomer.olaTabCreditNote
        ViewData("olaTabDebitNote") = AdaWebPos.My.Resources.resLCcvcCustomer.olaTabDebitNote
        ViewData("olaTabOthDoc") = AdaWebPos.My.Resources.resLCcvcCustomer.olaTabOthDoc
        ViewData("olaTabDataEntry") = AdaWebPos.My.Resources.resLCcvcCustomer.olaTabDataEntry
        ViewData("olaTabOptional") = AdaWebPos.My.Resources.resLCcvcCustomer.olaTabOptional
        ViewData("olaTabQuestion") = AdaWebPos.My.Resources.resLCcvcCustomer.olaTabQuestion
        ViewData("olaGrpPrice") = AdaWebPos.My.Resources.resLCcvcCustomer.olaGrpPrice

        ViewData("olaFTCstGrp") = AdaWebPos.My.Resources.resLCcvcCustomerGroup.olaFTCgpCode
        
        ViewData("olaSelectPic") = AdaWebPos.My.Resources.resLCcvcSupplier.olaSelectPic 'ปุ่มเลือกไฟล์ภาพ
        
        ViewData("tMsgErrorData") = Resources.resGBMsg.tMsgErrorData
        ViewData("tMsgErroMaxGenCode") = Resources.resGBMsg.tMsgErroMaxGenCode

        '******************************************************************
        ViewData("oimgSave") = Url.Content(Resources.resGBImageList.oimgSave)
        ViewData("oimgNew") = Url.Content(Resources.resGBImageList.oimgNew)
        ViewData("oimgUndo") = Url.Content(Resources.resGBImageList.oimgUndo)
        'Path Images
        ViewData("oimgBrowse") = Url.Content(Resources.resGBImageList.oimgBrowse)
        ViewData("oimgGencode") = Url.Content(Resources.resGBImageList.oimgGencode)
        ViewData("oimgSelectPic") = Url.Content(Resources.resGBImageList.oimgSelectPic)
        ViewData("oimgComingSoon") = Url.Content(Resources.resGBImageList.oimgComingSoon)
        ViewData("oimgCalculate") = Url.Content("~/Content/img/imgBttn/calculator.png")
        ViewData("olaFTBntPic") = AdaWebPos.My.Resources.resLCcvcBankNote.olaFTBntPic
        
        ViewData("tMsgBrwFile") = Resources.resGBMsg.tMsgBrwFile
        ViewData("tMsgBrwFileOnlyImage") = Resources.resGBMsg.tMsgBrwFileOnlyImage
        ViewData("tMsgBrwFileError") = Resources.resGBMsg.tMsgBrwFileError
        ViewData("tMsgUpload") = Resources.resGBMsg.tMsgUpload
        ViewData("tMsgCancel") = Resources.resGBMsg.tMsgCancel
        ViewData("tMsgSave_Warning") = Resources.resGBMsg.tMsgSave_Warning
        
        ViewData("olaMenuHome") = Resources.resGBMenuName.omnHome
        ViewData("olaMenuGroup") = Resources.resGBMenuName.omnMng
        ViewData("olaMenuExit") = Resources.resGBMenuName.omnExit
        If Model.FTCstPic = "" Then
            ViewData("olaSelectPic") = Resources.resGBMsg.tMsgUpload
            ViewData("Clear_img") = 0
        Else
            ViewData("olaSelectPic") = Resources.resGBMsg.tMsgCancel
            ViewData("Clear_img") = 1
        End If
                
        
        'Browse        
        ViewData("olaOK") = AdaWebPos.My.Resources.resLCcvcCNBrw.olaOK
        ViewData("olaCancel") = AdaWebPos.My.Resources.resLCcvcCNBrw.olaCancel
        
        'Header UI
        ViewData("olaChangeValue") = Resources.resGBGridHeader.olaChangeValue
        
        'Change Value
        ViewData("olaOldValue") = Resources.resGBChangeValue.olaOldValue
        ViewData("olaNewValue") = Resources.resGBChangeValue.olaNewValue
        ViewData("olaNewValueCal") = Resources.resGBChangeValue.olaNewValueCal
        ViewData("olaDecreaseAmt") = Resources.resGBChangeValue.olaDecreaseAmt
        ViewData("olaDecreasePercent") = Resources.resGBChangeValue.olaDecreasePercent
        ViewData("olaIncreaseAmt") = Resources.resGBChangeValue.olaIncreaseAmt
        ViewData("olaIncreasePercent") = Resources.resGBChangeValue.olaIncreasePercent
        
        'Grid
        ViewData("olaName") = Resources.resGBGridHeader.olaName
        ViewData("olaTel") = Resources.resGBGridHeader.olaTel
        ViewData("olaAddr") = Resources.resGBGridHeader.olaAddr
        ViewData("olaPosi") = Resources.resGBGridHeader.olaPosi
        ViewData("olaDep") = Resources.resGBGridHeader.olaDep
        ViewData("olaPic") = Resources.resGBGridHeader.olaPic
        ViewData("olaShipping") = Resources.resGBGridHeader.olaShipping
        ViewData("olaRecDocNo") = Resources.resGBGridHeader.olaRecDocNo
        ViewData("olaRecDocDate") = Resources.resGBGridHeader.olaRecDocDate
        ViewData("olaDueDate") = Resources.resGBGridHeader.olaDueDate
        ViewData("olaPoint") = Resources.resGBGridHeader.olaPoint
        ViewData("olaTotal") = Resources.resGBGridHeader.olaTotal
        ViewData("olaRemain") = Resources.resGBGridHeader.olaRemain
        ViewData("olaPaid") = Resources.resGBGridHeader.olaPaid
        ViewData("olaCode") = Resources.resGBGridHeader.olaCode
        ViewData("olaDateStart") = Resources.resGBGridHeader.olaDateStart
        ViewData("olaDateStop") = Resources.resGBGridHeader.olaDateStop
        ViewData("olaTimeStart") = Resources.resGBGridHeader.olaTimeStart
        ViewData("olaTimeStop") = Resources.resGBGridHeader.olaTimeStop
        ViewData("olaSta") = Resources.resGBGridHeader.olaSta

        'กำหนด format วันที่ให้กับ culture ของ thread
        Dim oSp As New cCNSP
        oSp.SP_SETxLanguageCulture()
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
        <%=ViewData("olaHeaderAdd")%></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <% Using Html.BeginForm("C_Create", "cvcCustomer", FormMethod.Post, New With {.id = "Cst_Create", .name = "Cst_Create", .collection = "cmlCst", .ptChkSta = "document.getElementById('ohdChkSta').value", .enctype = "multipart/form-data"})%>
    <input type="hidden" id="hiddenText" name="hiddenText" />
    <input type="hidden" id="FTCstVATInOrEx" name="FTCstVATInOrEx" value = "<%=Model.FTCstVATInOrEx%>"/>
    <input type="hidden" id="FTCstMailTo" name="FTCstMailTo" value = "<%=Model.FTCstMailTo%>"/>
    <input type="hidden" id="FTCstBillVat" name="FTCstBillVat" value = "<%=Model.FTCstBillVat%>"/>
    <input type="hidden" id="FTCstPic" name="FTCstPic" value='<%=Model.FTCstPic%>' />
    <input type="hidden" id="tImg_Clear" name="tImg_Clear" />
    
    <%--- ส่วนป้ายชื่อเมนู ---%>
    <div class="xDiv_Toppic_Layout  xCN_AllFontColor xCN_AllFontFamily xCN_AllToppicFontSize xCN_DivDisplayNone" >
        <%=ViewData("olaHeaderAdd")%>
    </div>
    
    <div class="xW_DivSearch">
        <div class='xW_DivPath'>
            <label>\\
                <a class="xCN_LabelLink" onclick=J003_SHWxWaiting();' href="<%=Url.Action("Index","Home") %>">
                    <%=ViewData("olaMenuHome") %>
                </a>\
                <a class="xCN_LabelLink" onclick='J003_SHWxWaiting();' href="<%=Url.Action("Index","cvcCNPanal") %>?ptMenuGrpName=Manage">
                    <%=ViewData("olaMenuGroup") %>
                </a>\
                <%= ViewData("olaHeaderAdd")%>
            </label> 
        </div>
        <% 
        Dim tClass As String
        If Session("tVB_LastLang") = "TH" Then
            tClass = "xW_DivSearchCap"
        Else
            tClass = "xW_DivSearchCapPrd"
        End If
        %>
    </div>

    <%--- ส่วนเมนู ---%>
    <div id="odiMenuTop" class="xCN_DivMainMenuPage xCN_AllBorderColor">
        <div id="odiMenu" class="xW_DivMenu">
            <div id="odiMenuHome" class="xCN_DivMenuHome" style="float: left;">
                <a onclick="W_FRMxCloseDoc('1')" href="javascript:void(0)">
                    <div class="xCN_DivMenuHomeCaption">
                        <%=ViewData("olaMenuHome")%>
                    </div>
                </a>
            </div>
            <div id ="Div4" class="xCN_DivMenuNew">
                <a href="javascript:void();" onclick="W_FRMxNewDoc()">
                    <div class="xCN_DivMenuNewCaption">
                        <%=ViewData("olaCreate")%>
                    </div>
                </a>
            </div>  
            <div id="odiMenuSave" class="xCN_DivMenuSave" style="float: left;">
                <a onclick="W_FRMxSaveDocument()" href="javascript:void(0)">
                    <div class="xCN_DivMenuNewCaption">
                        <%=ViewData("olaCanSave")%>
                    </div>
                </a>
            </div>
            <div id="odiMenuDelete" class="xCN_DivMenuDelete" style="display:none; float: left;">
                <a onclick = "W_FRMxDeleteDoc()" href="javascript:void(0)">
                    <div class="xCN_DivMenuNewCaption">
                        <%=ViewData("olaCanDelete")%>
                    </div>
                </a>
            </div>
            <div id ="odiMenuClose" class="xCN_DivMenuHome" style="float:left;">
                <a href="javascript:void();" onclick="W_FRMxCloseDoc('2')">
                    <div class="xCN_DivMenuNewCaption">
                        <%=ViewData("olaClose")%>
                    </div>
                </a>
            </div>
        </div>
    </div>
    
    <%--- ส่วนรายละเอียด ---%>
    <div class="xDiv_Detail_Layout xCN_AllFontColor xCN_AllFontFamily xCN_AllFontSize xCN_AllBorderColor xCN_AllBackgroundColor xCN_DivMainMenuPage" style='height:550px;'>
    
        <%--- ส่วนป้ายชื่อแทป ---%>              
        <div id="xW_DivDataEntry">
            <div class="xCN_DivTabToppic">
                <div class="xCN_DivTabActive xW_DivDataEntry">
                    <%=ViewData("olaTabDataEntry").ToString%>
                </div>
            </div>
        </div>
        
        <%--- ส่วนรายละเอียดชื่อแทป ---%>
        <div class="xW_DivDataEntryC">
            <div class="xW_DivTabDetail">
                <div class="xW_DivTabDataEntryC">
                    <%------------------------ ส่วนบน  ------------------------%>
                    <div class="xW_DivTabDataEntryTopC" style="margin-top:5px">
                        <%--- ส่วนซ้าย ---%> 
                        <div class="xW_DivDataEntryLeftC" style="float:left">
                            <div id="odiLeftLine1" class="xW_DIVLayOut">
                                <div class="xW_DIVfDataS xW_FloatLeft xCN_AllFontColorTextReq">
                                    *<%=ViewData("olaFTCstCode")%>
                                </div>
                                <div class="xW_FloatLeft">
                                    <%= Html.TextBoxFor(Function(model) model.FTCstCode, New With {.onkeypress = "W_DATxCstOndown(event.keyCode,event.which,true);return J002_CHKbCheckTxtKey(event.keyCode,event.which,true);", _
                                                                                                    .onblur = "W_DATxCstOnblur()", _
                                                                                                    .maxlength = "20", .style = "width:100px"})%> 
                                    <%=Html.ValidationMessageFor(Function(model) model.FTCstCode)%>
                                </div>
                                <div class="xW_FloatLeft">
                                    <img src="<%=ViewData("oimgGencode")%>" id="imgGenCode"
                                        onclick="W_FRMxGenCode()" 
                                        style="cursor:pointer;"
                                        alt="<%=ViewData("olaGenCode")%>"  />                      
                                </div>
                                <div class="xW_FloatRight xW_LeftMargin">
                                    <div class="xW_DIVfDataL xW_FloatLeft">
                                        <%=ViewData("olaFTCstCardID")%>
                                    </div> 
                                    <div class="xW_FloatRight xW_LeftMargin"> 
                                        <%=Html.TextBoxFor(Function(model) model.FTCstCardID, New With {.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)", .maxlength = "20", .style = "width:100px"})%> 
                                        <%=Html.ValidationMessageFor(Function(model) model.FTCstCardID)%>
                                    </div>
                                </div> 
                            </div>
                            
                            <div id="odiLeftLine2" class="xW_DIVLayOut">
                                <div class="xW_DIVfDataS xW_FloatLeft xCN_AllFontColorTextReq">
                                    *<%=ViewData("olaFTCstName")%>
                                </div>
                                <div class="xW_FloatLeft">
                                    <%=Html.TextBoxFor(Function(model) model.FTCstName, New With {.onkeypress = "return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)", .maxlength = "200", .style = "width:150px"})%> 
                                    <%--<%=Html.ValidationMessageFor(Function(model) model.FTCstName)%>--%>
                                </div>
                                <div class="xW_FloatRight">
                                    <div class="xW_DIVfDataL xW_FloatLeft xW_RightMangin">
                                        <%=ViewData("olaFTCstCountry")%>
                                    </div>
                                    <div class="xW_FloatRight">
                                        <%=Html.TextBoxFor(Function(model) model.FTCstCountry, New With {.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)", .maxlength = "255", .style = "width:100px"})%> 
                                        <%=Html.ValidationMessageFor(Function(model) model.FTCstCountry)%>
                                    </div>
                                </div>
                            </div>
                            
                            <div id="odiLeftLine3" class="xW_DIVLayOut">
                                <div class="xW_DIVfDataS xW_FloatLeft">
                                    <%=ViewData("olaFTCstNameOth")%>
                                </div>
                                <div class="">
                                    <%=Html.TextBoxFor(Function(model) model.FTCstNameOth, New With {.onkeypress = "return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)", .maxlength = "200", .style = "width:150px"})%> 
                                    <%=Html.ValidationMessageFor(Function(model) model.FTCstNameOth)%>
                                </div>
                            </div>
                            
                            <div id="odiLeftLine4" class="xW_DIVLayOut">
                                <div class="xW_DIVfDataS xW_FloatLeft">
                                    <%=ViewData("olaFTCstAddrNo")%>
                                </div>
                                <div class="xW_FloatLeft">
                                    <%=Html.TextBoxFor(Function(model) model.FTCstAddrNo, New With {.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)", .maxlength = "30", .style = "width:150px"})%> 
                                    <%=Html.ValidationMessageFor(Function(model) model.FTCstAddrNo)%>
                                </div>
                                <div class="xW_FloatRight">
                                    <div class="xW_DIVfDataL xW_FloatLeft xW_RightMangin">
                                        <%=ViewData("olaFTCstVillage")%>
                                    </div>
                                    <div class="xW_FloatRight">
                                        <%=Html.TextBoxFor(Function(model) model.FTCstVillage, New With {.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)", .maxlength = "70", .style = "width:100px"})%> 
                                        <%=Html.ValidationMessageFor(Function(model) model.FTCstVillage)%>
                                    </div>
                                </div>
                            </div>
                            
                            <div id="odiLeftLine5" class="xW_DIVLayOut">
                                <div class="xW_DIVfDataS xW_FloatLeft">
                                    <%=ViewData("olaFTCstSoi")%>
                                </div>
                                <div class="xW_FloatLeft">
                                    <%=Html.TextBoxFor(Function(model) model.FTCstSoi, New With {.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)", .maxlength = "30", .style = "width:150px"})%> 
                                    <%=Html.ValidationMessageFor(Function(model) model.FTCstSoi)%>
                                </div>
                                <div class="xW_FloatRight">
                                    <div class="xW_DIVfDataL xW_FloatLeft xW_RightMangin">
                                        <%=ViewData("olaFTCstRoad")%>
                                    </div>
                                    <div class="xW_FloatRight">
                                        <%=Html.TextBoxFor(Function(model) model.FTCstRoad, New With {.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)", .maxlength = "30", .style = "width:100px"})%> 
                                        <%=Html.ValidationMessageFor(Function(model) model.FTCstRoad)%>
                                    </div>
                                </div>
                            </div>
                            
                            <div id="odiLeftLine6" class="xW_DIVLayOut">
                                <div class="xW_DIVfDataS xW_FloatLeft">
                                    <%=ViewData("olaFTCstSubDist")%>
                                </div>
                                <div class="xW_FloatLeft">
                                    <%=Html.TextBoxFor(Function(model) model.FTCstSubDist, New With {.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)", .maxlength = "30", .style = "width:150px"})%> 
                                    <%=Html.ValidationMessageFor(Function(model) model.FTCstSubDist)%>
                                </div>
                                <div class="xW_FloatRight">
                                    <div class="xW_DIVfDataL xW_FloatLeft">
                                        <%=ViewData("olaFTCstDstCode")%>
                                    </div>
                                    <div class="xW_FloatLeft xW_RightMangin">
                                        <%=Html.TextBoxFor(Function(model) model.FTCstDstCode, New With {.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)", .type = "hidden"})%> 
                                        <%=Html.ValidationMessageFor(Function(model) model.FTCstDstCode)%>
                                    </div>
                                    <div class="xW_FloatRight">
                                        <div class="xW_FloatLeft">
                                            <input type="text" id="otbCstDst" name="otbCstDst" style = "width:80px" onblur = "W_GETxValue('FTCstDstCode')" onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)"/>  
                                            <input type="hidden" id="otbCstDstCode" />
                                        </div>
                                        <div class="xW_FloatRight">
                                            <img src="<%=ViewData("oimgBrowse")%>" 
                                                onclick="W_DATxBrwData('District','FTCstDstCode','otbCstDst')"
                                                style="cursor:pointer;"
                                                alt="<%=ViewData("olaBrowse")%>"  />                      
                                        </div>  
                                    </div>
                                </div>
                            </div>
                            
                            <div id="odiLeftLine7" class="xW_DIVLayOut">
                                <div class="xW_DIVfDataS xW_FloatLeft">
                                    <%=ViewData("olaFTCstPvnCode")%>
                                </div>
                                <div class="xW_FloatLeft">
                                    <%=Html.TextBoxFor(Function(model) model.FTCstPvnCode, New With {.type = "hidden"})%> 
                                    <%=Html.ValidationMessageFor(Function(model) model.FTCstPvnCode)%>
                                    <div class="xW_FloatLeft">
                                        <input type="text" id="otbCstPvn" name="otbCstPvn" style = "width:130px" onblur = "W_GETxValue('FTCstPvnCode')" onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)"/>  
                                        <input type="hidden" id="otbCstPvnCode" />
                                    </div>
                                    <div class="xW_FloatLeft">
                                        <img src="<%=ViewData("oimgBrowse")%>" 
                                            onclick="W_DATxBrwData('Province','FTCstPvnCode','otbCstPvn')"
                                            style="cursor:pointer;"
                                            alt="<%=ViewData("olaBrowse")%>"  />                      
                                    </div> 
                                </div>
                                <div class="xW_FloatRight">
                                    <div class="xW_DIVfDataL xW_FloatLeft xW_RightMangin">
                                        <%=ViewData("olaFTCstPostCode")%>
                                    </div>
                                    <div class="xW_FloatRight">
                                        <%=Html.TextBoxFor(Function(model) model.FTCstPostCode, New With {.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)", .maxlength = "5", .style = "width:100px" })%> 
                                        <%=Html.ValidationMessageFor(Function(model) model.FTCstPostCode)%>
                                    </div>
                                </div>
                            </div>
                            
                            <div id="odiLeftLine8" class="xW_DIVLayOut">
                                <div class="xW_DIVfDataS xW_FloatLeft">
                                    <%=ViewData("olaFTCstWebsite")%>
                                </div>
                                <div  class="xW_FloatLeft">
                                    <%=Html.TextBoxFor(Function(model) model.FTCstWebsite, New With {.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)", .maxlength = "255", .style = "width:410px"})%> 
                                    <%=Html.ValidationMessageFor(Function(model) model.FTCstWebsite)%>
                                </div>
                            </div> 
                        </div>
                        <%--- ส่วนขวา ---%> 
                        <div class="xW_DivDataEntryRightC">
                            <div id="odiRightLine1" class="xW_DIVLayOut2">
                                <div class="xW_DIVfDataS xW_FloatLeft">
                                    <%=ViewData("olaFTCstTel")%>
                                </div>
                                <div class="xW_FloatRight">
                                    <%=Html.TextBoxFor(Function(model) model.FTCstTel, New With {.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)", .maxlength = "50", .style = "width:160px"})%> 
                                    <%=Html.ValidationMessageFor(Function(model) model.FTCstTel)%>
                                </div>
                            </div>
                            
                            <div id="odiRightLine2" class="xW_DIVLayOut2">
                                <div class="xW_DIVfDataS xW_FloatLeft">
                                    <%=ViewData("olaFTCstFax")%>
                                </div>
                                <div class="xW_FloatRight">
                                    <%=Html.TextBoxFor(Function(model) model.FTCstFax, New With {.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)", .maxlength = "50", .style = "width:160px"})%> 
                                    <%=Html.ValidationMessageFor(Function(model) model.FTCstFax)%>
                                </div>
                            </div>
                            
                            <div id="odiRightLine3" class="xW_DIVLayOut2">
                                <div class="xW_DIVfDataS xW_FloatLeft">
                                    <%=ViewData("olaFTCstEmail")%>
                                </div>
                                <div class="xW_FloatRight">
                                    <%=Html.TextBoxFor(Function(model) model.FTCstEmail, New With {.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)", .maxlength = "100", .style = "width:160px"})%> 
                                    <%=Html.ValidationMessageFor(Function(model) model.FTCstEmail)%>
                                </div>
                            </div>
                            
                            <div id="odiRightLine4" class="xW_DIVLayOut2">
                                <div class="xW_DIVfDataS xW_FloatLeft">
                                    <%=ViewData("olaFDCstDob")%>
                                </div>
                                <div class="xW_FloatRight">
                                    <input type="text" id="otbCstAge" name="otbCstAge" style="width:20px" onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)" onblur="W_CalDateTime()" />
                                </div>
                                <div class="xW_FloatRight" style="width:30px; margin-left:5px; margin-right:5px">
                                    <%=ViewData("olaAge")%>
                                </div>
                                <div class="xW_FloatRight">
                                    <%=Html.Telerik().DatePicker().Name("X_FDCstDob").ClientEvents(Function(e) e.OnChange("W_Focus")).Value(Model.FDCstDob).Format("dd/MM/yyyy").InputHtmlAttributes(New With {.id = "FDCstDob", .Name = "FDCstDob", .onblur = "W_CalDateTime()", .Style = "width:70px"}).ButtonTitle("..").ShowButton(True)%>
                                </div>
                            </div>
                            
                            <div id="odiRightLine5" class="xW_DIVLayOut2">
                                <div class="xW_DIVfDataS xW_FloatLeft">
                                    <%=ViewData("olaFTCstRmk")%>
                                </div>
                                <div  class="xW_FloatRight">
                                    <%=Html.TextAreaFor(Function(model) model.FTCstRmk, New With {.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)", .onkeydown="return J002_SETxMaxLength(FTCstRmk,200,event.keyCode,event.which)", .style = "width:160px; height:40px"})%>
                                    <%=Html.ValidationMessageFor(Function(model) model.FTCstRmk)%>
                                </div>
                            </div>
                            
                            <div id="odiRightLine6" class="xW_DIVLayOut2">
                                <div class="xW_DIVfDataL xW_FloatLeft">
                                    <%=ViewData("olaFTCstMailAddr")%>
                                </div> 
                                <div class="xW_FloatRight">
                                    <%=Html.TextBoxFor(Function(model) model.FTCstMailAddr, New With {.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)", .maxlength = "50", .style = "width:160px"})%>
                                    <%=Html.ValidationMessageFor(Function(model) model.FTCstMailAddr)%>
                                </div>
                            </div>
                            
                            <div id="odiRightLine7" class="xW_DIVLayOut2">
                                <div class="xW_DIVfDataL xW_FloatLeft">
                                        <%=ViewData("olaFTBntPic")%>
                                </div>
                                <div style="overflow:visible" class="xW_FloatRight">
                                    <%--<input type="button" id="otcUploadPic" value='<%=ViewData("olaSelectPic")%>' style="width:98px;height:32px;" onclick="W_DATxSaveimage()"/>--%>
                                    <div style ="border:solid 1px transparent; float:left;">
                                        <input type="file" id="otbFilePath" name="otbFilePath" style="height:22px; width:190px;"/>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                        <div class="xW_DivDataEntryRightC2">
                            <div class="xW_DIVLayOut3">
                                <div class="xW_DivRW98H136 xW_FloatLeft">
                                    <img src="<%=ViewData("oimgComingSoon").ToString%>" alt="" id="odiCompLogo" style="width:98px; height:136px;" />
                                </div> 
                            </div>
                            <div>
                                <input type="button" id="otcUploadPic" value='<%=ViewData("olaSelectPic")%>' style="width:98px;height:32px;"/>
                            </div> 
                        </div>
                    </div>
                    <%------------------------ ส่วนล่าง ------------------------%>
                    <div class="xW_DivTabDataEntryBottomC">
                        <div class="xCN_DivTabToppic">
                            <a onclick ="{J010_SHWxTabData(0,'DivxGeneral','DivxOtherData','DivxContractor','DivxShipPlace','DivxWholesaleHis','DivxRetailHis','DivxCNDNOther','DivxGrpPrice');
                                        J009_SHWxTabTop(0,'Div_General','Div_Other','Div_Contact','Div_BuyHist','Div_WholeHis','odiRetailHis','Div_CNDNOth','Div_GrpPrice');}" href="#" >
                                <div id="Div_General" class="xCN_DivTabActive">
                                    <%=ViewData("olaTabGeneral").ToString%>
                                </div>
                            </a>
                                
                            <a onclick ="{J010_SHWxTabData(1,'DivxGeneral','DivxOtherData','DivxContractor','DivxShipPlace','DivxWholesaleHis','DivxRetailHis','DivxCNDNOther','DivxGrpPrice');
                                        J009_SHWxTabTop(1,'Div_General','Div_Other','Div_Contact','Div_BuyHist','Div_WholeHis','odiRetailHis','Div_CNDNOth','Div_GrpPrice');}" href="#" >
                                <div id="Div_Other" class="xCN_DivTabUnActive">
                                    <%=ViewData("olaTabOthData").ToString%>
                                </div>
                            </a>
                               
                            <a onclick ="{J010_SHWxTabData(2,'DivxGeneral','DivxOtherData','DivxContractor','DivxShipPlace','DivxWholesaleHis','DivxRetailHis','DivxCNDNOther','DivxGrpPrice');
                                        J009_SHWxTabTop(2,'Div_General','Div_Other','Div_Contact','Div_BuyHist','Div_WholeHis','odiRetailHis','Div_CNDNOth','Div_GrpPrice');
                                        W_GETxTopLeft('Ctr');}" href="#" >
                                <div id="Div_Contact" class="xCN_DivTabUnActive">
                                    <%=ViewData("olaTabContractor").ToString%>
                                </div>
                            </a>
                            
                            <a onclick ="{J010_SHWxTabData(3,'DivxGeneral','DivxOtherData','DivxContractor','DivxShipPlace','DivxWholesaleHis','DivxRetailHis','DivxCNDNOther','DivxGrpPrice');
                                        J009_SHWxTabTop(3,'Div_General','Div_Other','Div_Contact','Div_BuyHist','Div_WholeHis','odiRetailHis','Div_CNDNOth','Div_GrpPrice');
                                        W_GETxTopLeft('Csp');}" href="#" >
                                <div id="Div_BuyHist" class="xCN_DivTabUnActive">
                                    <%=ViewData("olaTabShipPlace").ToString%>
                                </div>
                            </a>
                                
                            <a onclick ="{J010_SHWxTabData(4,'DivxGeneral','DivxOtherData','DivxContractor','DivxShipPlace','DivxWholesaleHis','DivxRetailHis','DivxCNDNOther','DivxGrpPrice');
                                        J009_SHWxTabTop(4,'Div_General','Div_Other','Div_Contact','Div_BuyHist','Div_WholeHis','odiRetailHis','Div_CNDNOth','Div_GrpPrice');
                                        W_SETxRebindGridSal('GridSi','TACTSiHD');}" href="#" >
                                <div id="Div_WholeHis" class="xCN_DivTabUnActive">
                                   <%=ViewData("olaTabWholesaleHis").ToString%>
                                </div>
                            </a>
                            
                            <a onclick ="{J010_SHWxTabData(5,'DivxGeneral','DivxOtherData','DivxContractor','DivxShipPlace','DivxWholesaleHis','DivxRetailHis','DivxCNDNOther','DivxGrpPrice');
                                        J009_SHWxTabTop(5,'Div_General','Div_Other','Div_Contact','Div_BuyHist','Div_WholeHis','odiRetailHis','Div_CNDNOth','Div_GrpPrice');
                                        W_SETxRebindGridSal('GridSal','TACTSiHD');}" href="#" >
                                <div id="odiRetailHis" class="xCN_DivTabUnActive" >
                                   <%=ViewData("olaTabRetailHis").ToString%>
                                </div>
                            </a>
                            
                            <a onclick ="{J010_SHWxTabData(6,'DivxGeneral','DivxOtherData','DivxContractor','DivxShipPlace','DivxWholesaleHis','DivxRetailHis','DivxCNDNOther','DivxGrpPrice');
                                        J009_SHWxTabTop(6,'Div_General','Div_Other','Div_Contact','Div_BuyHist','Div_WholeHis','odiRetailHis','Div_CNDNOth','Div_GrpPrice');
                                        W_SETxRebindGridSal('GridCN','CN');}" href="#" >
                                <div id="Div_CNDNOth" class="xCN_DivTabUnActive">
                                   <%= ViewData("olaTabCN_DN_Oth").ToString%>
                                </div>
                            </a>
                            
                            <a onclick ="{J010_SHWxTabData(7,'DivxGeneral','DivxOtherData','DivxContractor','DivxShipPlace','DivxWholesaleHis','DivxRetailHis','DivxCNDNOther','DivxGrpPrice');
                                        J009_SHWxTabTop(7,'Div_General','Div_Other','Div_Contact','Div_BuyHist','Div_WholeHis','odiRetailHis','Div_CNDNOth','Div_GrpPrice');
                                        W_SETxRebindGrid('GridCstP');}" href="#" >
                                <div id="Div_GrpPrice" class="xCN_DivTabUnActive">
                                   <%= ViewData("olaGrpPrice").ToString%>
                                </div>
                            </a>
                        </div>
                        <div class="xCN_DivTabDetail">
                            <div class="xW_DivTabDetailSubC xCN_AllBackgroundColor xCN_AllFontFamily xCN_AllFontSize xCN_AllFontColor">
                                <%------------------------ ข้อมูลทั่วไป ------------------------%>
                                <div id="DivxGeneral" class="xW_DivTabSubAllC">
                                    <div style="border-width:1px; border-color:Black";>
                                        <%--- เริ่มส่วนข้อมูลทั่วไป-ซ้าย ---%>
                                        <div class="xW_DivTabGeneral">
                                            <div id="odiBtmLeftLine1" class="xW_DIVLayOut">
                                                <div class="xW_DIVfDataM xW_FloatLeft">
                                                    <%=ViewData("olaFTCgpCode")%>
                                                </div>
                                                <div class="xW_FloatLeft">
                                                    <%=Html.TextBoxFor(Function(model) model.FTCgpCode, New With {.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)", .maxlength = "5", .style = "width:50px", .onblur = "W_GETxValue('FTCgpCode')"})%> 
                                                    <%=Html.ValidationMessageFor(Function(model) model.FTCgpCode)%>
                                                    <input type="hidden" id="otbOldFTCgpCode"/> 
                                                </div>
                                                <div class="xW_FloatLeft">
                                                    <img src="<%=ViewData("oimgBrowse")%>" 
                                                        onclick="W_DATxBrwData('CstGrp','FTCgpCode','otbCustomerGroup')"
                                                        style="cursor:pointer;"
                                                        alt="<%=ViewData("oimgBrowse")%>"  />                      
                                                </div>
                                                <div>
                                                    <input type="text" id="otbCustomerGroup" name="FTCgpName" style="width:60px" onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)"/>
                                                    <%=Html.ValidationMessageFor(Function(model) model.FTCgpCode)%> 
                                                </div> 
                                            </div>
                                            
                                            <div id="odiBtmLeftLine2" class="xW_DIVLayOut">
                                                <div class="xW_DIVfDataM xW_FloatLeft">
                                                    <%=ViewData("olaFTCtyCode")%>
                                                </div>
                                                <div class="xW_FloatLeft">
                                                    <%=Html.TextBoxFor(Function(model) model.FTCtyCode, New With {.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)", .maxlength = "5", .style = "width:50px", .onblur = "W_GETxValue('FTCtyCode')"})%> 
                                                    <%=Html.ValidationMessageFor(Function(model) model.FTCtyCode)%>
                                                    <input type="hidden" id = "olbFTCtyCode" />
                                                </div>
                                                <div class="xW_FloatLeft">
                                                    <img src="<%=ViewData("oimgBrowse")%>" 
                                                        onclick="W_DATxBrwData('CstType','FTCtyCode','otbCustomerType')"
                                                        style="cursor:pointer;"
                                                        alt="<%=ViewData("oimgBrowse")%>"  />                      
                                                </div>
                                                <div>
                                                    <input type="text" id="otbCustomerType" name="FTCtyName" style="width:60px" onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)"/>
                                                    <%=Html.ValidationMessageFor(Function(model) model.FTCgpCode)%> 
                                                </div> 
                                            </div>
                                            
                                            <div id="odiBtmLeftLine3" class="xW_DIVLayOut">
                                                <div class="xW_DIVfDataM xW_FloatLeft">
                                                    <%=ViewData("olaFTClvCode")%>
                                                </div>
                                                <div class="xW_FloatLeft">
                                                    <%=Html.TextBoxFor(Function(model) model.FTClvCode, New With {.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)", .maxlength = "5", .style = "width:50px", .onblur = "W_GETxValue('FTClvCode')"})%> 
                                                    <%=Html.ValidationMessageFor(Function(model) model.FTClvCode)%>
                                                    <input type="hidden" id="otbFTClvCode" />
                                                </div>
                                                <div class="xW_FloatLeft">
                                                    <img src="<%=ViewData("oimgBrowse")%>" 
                                                        onclick="W_DATxBrwData('CstLev','FTClvCode','otbCstLev')"
                                                        style="cursor:pointer;"
                                                        alt="<%=ViewData("oimgBrowse")%>"  />                      
                                                </div>
                                                <div>
                                                    <input type="text" id="otbCstLev" name="FTClvName" style="width:60px" onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)"/>
                                                    <%=Html.ValidationMessageFor(Function(model) model.FTClvCode)%> 
                                                </div> 
                                            </div>
                                            
                                            <div id="odiBtmLeftLine4" class="xW_DIVLayOut">
                                                <div class="xW_DIVfDataM xW_FloatLeft">
                                                    <%=ViewData("olaFTAreCode")%>
                                                </div>
                                                <div class="xW_FloatLeft">
                                                    <%=Html.TextBoxFor(Function(model) model.FTAreCode, New With {.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)", .maxlength = "5", .style = "width:50px", .onblur = "W_GETxValue('FTAreCode')"})%> 
                                                    <%=Html.ValidationMessageFor(Function(model) model.FTAreCode)%>
                                                    <input type="hidden" id="otbFTAreCode" />
                                                </div>
                                                <div class="xW_FloatLeft">
                                                    <img src="<%=ViewData("oimgBrowse")%>" 
                                                        onclick="W_DATxBrwData('Area','FTAreCode','otbArea')"
                                                        style="cursor:pointer;"
                                                        alt="<%=ViewData("oimgBrowse")%>"  />                      
                                                </div>
                                                <div>
                                                    <input type="text" id="otbArea" name="FTAreName" style="width:60px" onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)"/>
                                                    <%=Html.ValidationMessageFor(Function(model) model.FTAreCode)%> 
                                                </div> 
                                            </div>
                                            
                                            <div id="odiBtmLeftLine5" class="xW_DIVLayOut">
                                                <div class="xW_DIVfDataM xW_FloatLeft">
                                                    <%=ViewData("olaFTDstCode")%>
                                                </div>
                                                <div class="xW_FloatLeft">
                                                    <%=Html.TextBoxFor(Function(model) model.FTDstCode, New With {.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)", .maxlength = "5", .style = "width:50px", .onblur = "W_GETxValue('FTDstCode')"})%> 
                                                    <%=Html.ValidationMessageFor(Function(model) model.FTDstCode)%>
                                                    <input type="hidden" id="otbFTDstCode" />
                                                </div>
                                                <div class="xW_FloatLeft">
                                                    <img src="<%=ViewData("oimgBrowse")%>" 
                                                        onclick="W_DATxBrwData('District','FTDstCode','otbDistrict')"
                                                        style="cursor:pointer;"
                                                        alt="<%=ViewData("oimgBrowse")%>"  />                      
                                                </div>
                                                <div>
                                                    <input type="text" id="otbDistrict" name="otbDistrict" style="width:60px" onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)" />
                                                    <%=Html.ValidationMessageFor(Function(model) model.FTDstCode)%> 
                                                </div> 
                                            </div>
                                            
                                            <div id="odiBtmLeftLine6" class="xW_DIVLayOut">
                                                <div class="xW_DIVfDataM xW_FloatLeft">
                                                    <%=ViewData("olaFTPvnCode")%>
                                                </div>
                                                <div class="xW_FloatLeft">
                                                    <%=Html.TextBoxFor(Function(model) model.FTPvnCode, New With {.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)", .maxlength = "5", .style = "width:50px", .onblur = "W_GETxValue('FTPvnCode')"})%> 
                                                    <%=Html.ValidationMessageFor(Function(model) model.FTPvnCode)%>
                                                    <input type="hidden" id="olaFTPvnCode" />
                                                </div>
                                                <div class="xW_FloatLeft">
                                                    <img src="<%=ViewData("oimgBrowse")%>" 
                                                        onclick="W_DATxBrwData('Province','FTPvnCode','otbProvince')"
                                                        style="cursor:pointer;"
                                                        alt="<%=ViewData("oimgBrowse")%>"  />                      
                                                </div>
                                                <div>
                                                    <input type="text" id="otbProvince" name="FTPvnName" style="width:60px" onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)"/>
                                                    <%=Html.ValidationMessageFor(Function(model) model.FTPvnCode)%> 
                                                </div> 
                                            </div>
                                            
                                            <div id="odiBtmLeftLine7" class="xW_DIVLayOut">
                                                <div class="xW_DIVfDataM xW_FloatLeft">
                                                    <%=ViewData("olaFTAccCode")%>
                                                </div>
                                            </div>
                                            
                                            <div id="odiBtmLeftLine8" class="xW_DIVLayOut">
                                                <div class="xW_FloatLeft">
                                                    <%=Html.TextBoxFor(Function(model) model.FTAccCode, New With {.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)", .maxlength = "20", .style = "width:50px", .onblur = "W_GETxValue('FTAccCode')"})%> 
                                                    <%=Html.ValidationMessageFor(Function(model) model.FTAccCode)%>
                                                    <input type="hidden" id="olaFTAccCode" />
                                                </div>
                                                <div class="xW_FloatLeft">
                                                    <img src="<%=ViewData("oimgBrowse")%>" 
                                                        onclick="W_DATxBrwData('ChtAcc','FTAccCode','otbChtAcc')"
                                                        style="cursor:pointer;"
                                                        alt="<%=ViewData("oimgBrowse")%>"  />                      
                                                </div>
                                                <div>
                                                    <input type="text" id="otbChtAcc" name="FTAccName01" style="width:60px" onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)"/>
                                                    <%=Html.ValidationMessageFor(Function(model) model.FTAccCode)%> 
                                                </div> 
                                            </div>
                                        </div>
                                        <%--- เริ่มส่วนข้อมูลทั่วไป-กลาง ---%>
                                        <div class="xW_DivTabGeneral">
                                            <div id="odiBtmMinLine1" class="xW_DIVLayOut">
                                                <div class="xW_DIVfDataXL xW_FloatLeft">
                                                    <%=ViewData("olaFDCstLastCta")%>
                                                </div>
                                                <div class="xW_FloatLeft">
                                                    <%=Html.Telerik().DatePicker().Name("X_FDCstLastCta").Format("dd/MM/yyyy").Value(Model.FDCstLastCta).InputHtmlAttributes(New With {.id = "FDCstLastCta", .Name = "FDCstLastCta"}).ButtonTitle("..").ShowButton(True)%>    
                                                    <%--<%=Html.ValidationMessageFor(Function(model) model.FDCstLastCta)%>--%>
                                                </div>
                                            </div>
                                            
                                            <div id="odiBtmMinLine2" class="xW_DIVLayOut">
                                                <div class="xW_DIVfDataXL xW_FloatLeft">
                                                    <%=ViewData("olaFTCstDayCta")%>
                                                </div>
                                                <div class="xW_FloatLeft">
                                                    <%=Html.DropDownListFor(Function(model) model.FTCstDayCta, CType(ViewData("CstDayCta"), SelectList), New With {.style = "width:100px"})%>
                                                    <%=Html.ValidationMessageFor(Function(model) model.FTCstDayCta)%>
                                                </div>
                                            </div>
                                            
                                            <div id="odiBtmMinLine3" class="xW_DIVLayOut">
                                                <div class="xW_DIVfDataXL xW_FloatLeft">
                                                    <%=ViewData("olaFTCstBusiness")%>
                                                </div>
                                                <div class="xW_FloatLeft">
                                                    <%=Html.DropDownListFor(Function(model) model.FTCstBusiness, CType(ViewData("CstBusiness"), SelectList), New With {.style = "width:100px"})%>
                                                    <%=Html.ValidationMessageFor(Function(model) model.FTCstBusiness)%>
                                                </div>
                                            </div>
                                            
                                            <div id="odiBtmMinLine4" class="xW_DIVLayOut">
                                                <div class="xW_DIVfDataXL xW_FloatLeft">
                                                    <%=ViewData("olaFTCstTaxNo")%>
                                                </div>
                                                <div class="xW_FloatLeft">
                                                    <%=Html.TextBoxFor(Function(model) model.FTCstTaxNo, New With {.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)", .maxlength = "20", .style = "width:100px"})%>
                                                    <%=Html.ValidationMessageFor(Function(model) model.FTCstTaxNo)%>
                                                </div>
                                            </div>
                                            
                                            <div id="odiBtmMinLine5" class="xW_DIVLayOut">
                                                <div class="xW_DIVfDataXL xW_FloatLeft">
                                                    <%=ViewData("olaFTCstStaActive")%>
                                                </div>
                                                <div class="xW_FloatLeft">
                                                    <%=Html.DropDownListFor(Function(model) model.FTCstStaActive, CType(ViewData("CstStaActive"), SelectList), New With {.style = "width:100px"})%>
                                                    <%=Html.ValidationMessageFor(Function(model) model.FTCstTaxNo)%>
                                                </div>
                                            </div>
                                        </div>
                                        <%--- เริ่มส่วนข้อมูลทั่วไป-ขวา ---%>
                                        <div class="xW_DivTabGeneral">
                                            <div id="odiBtmRightLine1" class="xW_DIVLayOut">
                                                <div class="xW_DIVfDataXL xW_FloatLeft">
                                                    <%=ViewData("olaFDCstApply")%>
                                                </div>
                                                <div class="xW_FloatLeft">
                                                    <%=Html.Telerik().DatePicker().Name("X_FDCstApply").Format("dd/MM/yyyy").Value(Model.FDCstApply).InputHtmlAttributes(New With {.id = "FDCstApply", .Name = "FDCstApply"}).ButtonTitle("..").ShowButton(True)%>    
                                                    <%--<%=Html.ValidationMessageFor(Function(model) model.FDCstApply)%>--%>
                                                </div>
                                            </div>
                                            
                                            <div id="odiBtmRightLine2" class="xW_DIVLayOut">
                                                <div class="xW_DIVfDataXL xW_FloatLeft">
                                                    <%=ViewData("olaFDCstCrdIssue")%>
                                                </div>
                                                <div class="xW_FloatLeft">
                                                    <%=Html.Telerik().DatePicker().Name("X_FDCstCrdIssue").Format("dd/MM/yyyy").Value(Model.FDCstCrdIssue).InputHtmlAttributes(New With {.id = "FDCstCrdIssue", .Name = "FDCstCrdIssue"}).ButtonTitle("..").ShowButton(True)%>    
                                                    <%--<%=Html.ValidationMessageFor(Function(model) model.FDCstCrdIssue)%>--%>
                                                </div>
                                            </div>
                                            
                                            <div id="odiBtmRightLine3" class="xW_DIVLayOut">
                                                <div class="xW_DIVfDataXL xW_FloatLeft">
                                                    <%=ViewData("olaFDCstCrdExpire")%>
                                                </div>
                                                <div class="xW_FloatLeft">
                                                    <%=Html.Telerik().DatePicker().Name("X_FDCstCrdExpire").Format("dd/MM/yyyy").Value(Model.FDCstCrdExpire).InputHtmlAttributes(New With {.id = "FDCstCrdExpire", .Name = "FDCstCrdExpire"}).ButtonTitle("..").ShowButton(True)%>    
                                                    <%--<%=Html.ValidationMessageFor(Function(model) model.FDCstCrdExpire)%>--%>
                                                </div>
                                            </div>
               
                                            <div id="odiBtmRightLine4" class="xW_DIVLayOut">
                                                <div class="xW_DIVfDataXL xW_FloatLeft">
                                                    <%=ViewData("olaFTCstSex")%>
                                                </div>
                                                <div class="xW_FloatLeft">
                                                    <%=Html.DropDownListFor(Function(model) model.FTCstSex, CType(ViewData("CstSex"), SelectList), New With {.style = "width:100px"})%>
                                                    <%=Html.ValidationMessageFor(Function(model) model.FTCstSex) %>
                                                </div>
                                            </div>
                                            
                                            <div id="odiBtmRightLine5" class="xW_DIVLayOut">
                                                <div class="xW_DIVfDataXL xW_FloatLeft">
                                                    <%=ViewData("olaFTCstCrdNo")%>
                                                </div>
                                                <div class="xW_FloatLeft">
                                                    <%=Html.TextBoxFor(Function(model) model.FTCstCrdNo, New With {.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)", .maxlength = "30", .style = "width:100px"})%>
                                                    <%=Html.ValidationMessageFor(Function(model) model.FTCstCrdNo)%>
                                                </div>
                                            </div>
                                            
                                            <div id="odiBtmRightLine6" class="xW_DIVLayOut">
                                                <div class="xW_DIVfDataXL xW_FloatLeft">
                                                    <%=ViewData("olaFTBchCode")%>
                                                </div>

                                                <div class="xW_FloatLeft">
                                                    <input type="text" id="otbBranch" name="FTBchName" style="width:60px"/>
                                                    <%=Html.TextBoxFor(Function(model) model.FTBchCode, New With {.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)", .maxlength = "3", .type = "hidden"})%>                                     
                                                    <%=Html.ValidationMessageFor(Function(model) model.FTBchCode)%>
                                                    <input type="hidden" id="olaFTBchCode" /> 
                                                </div>
                                                
                                                <div>
                                                    <img src="<%=ViewData("oimgBrowse")%>" 
                                                        onclick="W_DATxBrwData('Branch','FTBchCode','otbBranch')"
                                                        style="cursor:pointer;"
                                                        alt="<%=ViewData("oimgBrowse")%>"  />  
                                                    <input type="hidden" id="otbFTBchCode" />                    
                                                </div> 
                                            </div>
                                            
                                            <div id="odiBtmRightLine7" class="xW_DIVLayOut">
                                                <div class="xW_DIVfDataXL xW_FloatLeft">
                                                    <%=ViewData("olaFTOcpCode")%>
                                                </div>
                                            </div>
                                            
                                            <div id="odiBtmRightLine8" class="xW_DIVLayOut">

                                                <div class="xW_FloatLeft">
                                                    <%=Html.TextBoxFor(Function(model) model.FTOcpCode, New With {.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)", .maxlength = "5", .onblur = "W_GETxValue('FTOcpCode')", .style = "width:80px"})%> 
                                                </div>

                                                <div class="xW_FloatLeft">
                                                    <img src="<%=ViewData("oimgBrowse")%>" 
                                                        onclick="W_DATxBrwData('Ocp','FTOcpCode','otbFTOcpCode')"
                                                        style="cursor:pointer;"
                                                        alt="<%=ViewData("oimgBrowse")%>"  />                      
                                                </div>
                                                    <input type="hidden" id="oldotbFTOcpCode" /> 
                                                    <input type="text" id="otbFTOcpCode" readonly="readonly" name="FTBchName" style="width:80px" onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)" />                         
                                                    <%=Html.ValidationMessageFor(Function(model) model.FTOcpCode)%>
                                                </div> 
                                            </div>
                                        </div>
                                    </div>
                                
                                    <%------------------------ ข้อมูลอื่นๆ ------------------------%>
                                    <div id="DivxOtherData" class="xW_DivTabSubAllC">
                                        <div style="border-width:1px; border-color:Black";>
                                            <%--- เริ่มส่วนข้อมูลอื่นๆ-ซ้าย ---%>
                                            <div class="xW_DivTabGeneral">
                                                <div id="odiOthLeftLine1" class="xW_DIVLayOut">
                                                    <div class="xW_DIVfDataM xW_FloatLeft">
                                                        <%=ViewData("olaFCCstCrLimit")%>
                                                    </div>
                                                    <div class="xW_FloatLeft">
                                                        <%=Html.TextBox("FCCstCrLimit", Format(Model.FCCstCrLimit,"#,##0."& StrDup(Session("nVB_CNDecAmtForShw"),"0")), New With {.onkeypress = "return J002_CHKbCheckNumOnly(this.value,event.keyCode,false)", .style = "width:100px"})%>
                                                        <%--<%=Html.ValidationMessageFor(Function(model) model.FCCstCrLimit)%>--%>
                                                    </div>
                                                    <div>
                                                        <img src="<%=ViewData("oimgCalculate")%>" alt="<%=ViewData("olaBrowse").ToString%>" onclick="W_SHWxShowDialogChangeVal('FCCstCrLimit');" 
                                                                style="border-style: none; border-color: inherit; border-top:0; border-width: 0; width:18px; height:18px; cursor:pointer;" />  
                                                    </div>
                                                </div>
                                                
                                                <div id="odiOthLeftLine2" class="xW_DIVLayOut">
                                                    <div class="xW_DIVfDataM xW_FloatLeft">
                                                        <%=ViewData("olaFNCstCrTerm")%>
                                                    </div>
                                                    <div class="xW_FloatLeft">
                                                        <%=Html.TextBox("FNCstCrTerm", Format(Model.FNCstCrTerm,"#,##0."& StrDup(Session("nVB_CNDecAmtForShw"),"0")), New With {.onkeypress = "return J002_CHKbCheckNumOnly(this.value,event.keyCode,false)", .style = "width:100px"})%>
                                                        <%--<%=Html.ValidationMessageFor(Function(model) model.FNCstCrTerm)%>--%>
                                                    </div>
                                                    <div>
                                                        <img src="<%=ViewData("oimgCalculate")%>" alt="<%=ViewData("olaBrowse").ToString%>" onclick="W_SHWxShowDialogChangeVal('FNCstCrTerm');" 
                                                                style="border-style: none; border-color: inherit; border-top:0; border-width: 0; width:18px; height:18px; cursor:pointer;" />  
                                                    </div>
                                                </div>
                                                
                                                <div id="odiOthLeftLine3" class="xW_DIVLayOut">
                                                    <div class="xW_DIVfDataM xW_FloatLeft">
                                                        <%=ViewData("olaFNCstViaTime")%>
                                                    </div>
                                                    <div class="xW_FloatLeft">
                                                        <%=Html.TextBox("FNCstViaTime", Format(model.FNCstViaTime,"#,##0."& StrDup(Session("nVB_CNDecAmtForShw"),"0")), New With {.id = "FNCstViaTime", .onkeypress = "return J002_CHKbCheckNumOnly(this.value,event.keyCode,false)", .style = "width:100px; display:none"})%>
                                                        <%=Html.Telerik.NumericTextBox().InputHtmlAttributes(New With {.id = "otbFNCstViaTime", .style = "width:119px;"}) _
                                                            .Name("otbFNCstViaTime") _
                                                            .MinValue(0) _
                                                            .Value(Format(Model.FNCstViaTime,"#,##0."& StrDup(Session("nVB_CNDecAmtForShw"),"0")))
                                                        %>
                                                        <%--<%=Html.ValidationMessageFor(Function(model) model.FNCstViaTime)%>--%>
                                                    </div>
                                                </div>
                                                
                                                <div id="odiOthLeftLine4" class="xW_DIVLayOut">
                                                    <div class="xW_DIVfDataM xW_FloatLeft">
                                                        <%=ViewData("olaFTCstDiscWhs")%>
                                                    </div>
                                                    <div class="xW_FloatLeft">
                                                        <%=Html.TextBoxFor(Function(model) model.FTCstDiscWhs, New With {.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)", .maxlength = "50", .style = "width:100px"})%>
                                                        <%=Html.ValidationMessageFor(Function(model) model.FTCstDiscWhs)%>
                                                    </div>
                                                </div>
                                                
                                                <div id="odiOthLeftLine5" class="xW_DIVLayOut">
                                                    <div class="xW_DIVfDataM xW_FloatLeft">
                                                        <%=ViewData("olaFDCstLastPay")%>
                                                    </div>
                                                    <div class="xW_FloatLeft">
                                                        <%=Html.Telerik().DatePicker().Name("X_FDCstLastPay").Format("dd/MM/yyyy").Value(Model.FDCstLastPay).InputHtmlAttributes(New With {.id = "FDCstLastPay", .Name = "FDCstLastPay"}).ButtonTitle("..").ShowButton(True)%> 
                                                        <%--<%=Html.ValidationMessageFor(Function(model) model.FDCstLastPay)%>--%>
                                                    </div>
                                                </div>
                                                
                                                <%--<div class="xW_DIVLayOut" style="display:none">
                                                    <div class="xW_DIVfDataM xW_FloatLeft">
                                                        <%=ViewData("olaFNCstViaTime")%>
                                                    </div>
                                                    <div class="xW_FloatLeft">
                                                        <%=Html.TextBoxFor(Function(model) model.FNCstViaTime, New With {.onkeypress = "return J002_CHKbCheckNumOnly(this.value,event.keyCode,false)", .style = "width:100px"})%>
                                                        <%=Html.ValidationMessageFor(Function(model) model.FNCstViaTime)%>
                                                    </div>
                                                </div>--%>
                                                
                                                <div id="odiOthLeftLine6" class="xW_DIVLayOut">
                                                    <div class="xW_DIVfDataM xW_FloatLeft">
                                                        <%=ViewData("olaFTUsrCode")%>
                                                    </div>
                                                </div>
                                                <div id="odiOthLeftLine7" class="xW_DIVLayOut">
                                                    <div class="xW_FloatLeft">
                                                        <input type="hidden" id="hiddenFTUsrCode" name="hiddenFTUserCode" />
                                                        <%=Html.TextBoxFor(Function(model) model.FTUsrCode, New With {.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)", .maxlength = "20", .onfocus = "", .onblur = "W_GETxValue('FTUsrCode')", .style = "width:80px"})%>
                                                        <%=Html.ValidationMessageFor(Function(model) model.FTUsrCode)%>
                                                    </div>
                                                    <div class="xW_FloatLeft">
                                                        <img src="<%=ViewData("oimgBrowse")%>" 
                                                            onclick="W_DATxBrwData('User','FTUsrCode','otbUser')"
                                                            style="cursor:pointer;"
                                                            alt="<%=ViewData("oimgBrowse")%>"  /> 
                                                    </div>
                                                    <div>
                                                        <input type="text" id="otbUser" name="FTUsrName" style="width:80px" onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)" />
                                                    </div>
                                                </div>
                                                
                                                <div id="odiOthLeftLine8" class="xW_DIVLayOut">
                                                    <%=ViewData("olaFTSpnCode")%>
                                                </div>
                                                <div id="odiOthLeftLine9" class="xW_DIVLayOut">
                                                    <div class="xW_FloatLeft">
                                                        <input type="hidden" id="hidden1" name="hiddenFTSpnCode" />
                                                        <%=Html.TextBoxFor(Function(model) model.FTSpnCode, New With {.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)", .maxlength = "5", .onfocus = "", .onblur = "W_GETxValue('FTSpnCode')", .style = "width:80px"})%>                                                    
                                                        <input type="hidden" id="otbOldFTSpnCode" />
                                                        <%=Html.ValidationMessageFor(Function(model) model.FTSpnCode)%>
                                                    </div>
                                                    <div class="xW_FloatLeft">
                                                        <img src="<%=ViewData("oimgBrowse")%>" 
                                                            onclick="W_DATxBrwData('Spn','FTSpnCode','otbSpn')"
                                                            style="cursor:pointer;"
                                                            alt="<%=ViewData("oimgBrowse")%>"  /> 
                                                    </div>
                                                    <div>
                                                        <input type="text" id="otbSpn" name="FTSpnName" style="width:80px" onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)" />
                                                    </div>
                                                </div>
                                                
                                            </div>
                                            <%--- เริ่มส่วนข้อมูลอื่นๆ-กลาง ---%>
                                            <div class="xW_DivTabGeneral">
                                                <div id="odiOthMinLine1" class="xW_DIVLayOut">
                                                    <div class="xW_DIVfDataM xW_FloatLeft">
                                                        <%=ViewData("olaFCCstAmtLeft")%>
                                                    </div>
                                                    <div class="xW_FloatLeft">
                                                        <%=Html.TextBox("FCCstAmtLeft", Format(model.FCCstAmtLeft,"#,##0."& StrDup(Session("nVB_CNDecAmtForShw"),"0")), New With {.onkeypress = "return J002_CHKbCheckNumOnly(this.value,event.keyCode,false)",.style = "width:80px"})%>
                                                        <%=Html.ValidationMessageFor(Function(model) model.FCCstAmtLeft)%>
                                                    </div>
                                                    <div>
                                                        <img src="<%=ViewData("oimgCalculate")%>" alt="<%=ViewData("olaBrowse").ToString%>" onclick="W_SHWxShowDialogChangeVal('FCCstAmtLeft');" 
                                                                style="border-style: none; border-color: inherit; border-top:0; border-width: 0; width:18px; height:18px; cursor:pointer;" />  
                                                    </div>
                                                </div>
                                                
                                                <div id="odiOthEmpLine1" class="xW_DIVLayOut">
                                                    <div class="xW_DIVfDataM xW_FloatLeft">
                                                        &nbsp;
                                                    </div>
                                                </div>
                                                <div id="odiOthEmpLine2" class="xW_DIVLayOut">
                                                    <div class="xW_DIVfDataM xW_FloatLeft">
                                                        &nbsp;
                                                    </div>
                                                </div>
                                                <div id="odiOthEmpLine3" class="xW_DIVLayOut">
                                                    <div class="xW_DIVfDataM xW_FloatLeft">
                                                        &nbsp;
                                                    </div>
                                                </div>
                                                <div id="odiOthEmpLine4" class="xW_DIVLayOut">
                                                    <div class="xW_DIVfDataM xW_FloatLeft">
                                                        &nbsp;
                                                    </div>
                                                </div>
                                                
                                                <div id="odiOthMinLine2" class="xW_DIVLayOut">
                                                    <div class="xW_DIVfDataM xW_FloatLeft">
                                                        <%=ViewData("olaFTCstBillRmk")%>
                                                    </div>
                                                    <div class="xW_FloatLeft">
                                                        <%=Html.TextBoxFor(Function(model) model.FTCstBillRmk, New With {.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)", .maxlength = "100", .style = "width:80px"})%>
                                                        <%=Html.ValidationMessageFor(Function(model) model.FTCstBillRmk)%>
                                                    </div>
                                                </div>
                                                
                                                <div id="odiOthMinLine3" class="xW_DIVLayOut">
                                                    <div class="xW_DIVfDataM xW_FloatLeft">
                                                        <%=ViewData("olaFTCstPayRmk")%>
                                                    </div>
                                                    <div class="xW_FloatLeft">
                                                        <%=Html.TextBoxFor(Function(model) model.FTCstPayRmk, New With {.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)", .maxlength = "100", .style = "width:80px"})%>
                                                        <%=Html.ValidationMessageFor(Function(model) model.FTCstPayRmk)%>
                                                    </div>
                                                </div>
                                                
                                                <div id="odiOthMinLine4" class="xW_DIVLayOut">
                                                    <div class="xW_DIVfDataM xW_FloatLeft">
                                                        <%=ViewData("olaFTCstViaRmk")%>
                                                    </div>
                                                    <div class="xW_FloatLeft">
                                                        <%=Html.TextBoxFor(Function(model) model.FTCstViaRmk, New With {.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)", .maxlength = "100", .style = "width:80px"})%>
                                                        <%=Html.ValidationMessageFor(Function(model) model.FTCstViaRmk)%>
                                                    </div>
                                                </div>
                                                
                                                <div id="odiOthMinLine5" class="xW_DIVLayOut">
                                                    <div class="xW_DIVfDataM xW_FloatLeft">
                                                        <%=ViewData("olaFTShpCode")%>
                                                    </div>
                                                    <div class="xW_FloatLeft">
                                                        <input type="hidden" id="hidden2" name="hiddenFTShpCode" />
                                                        <%=Html.TextBoxFor(Function(model) model.FTShpCode, New With {.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)", .maxlength = "5", .onfocus = "", .onblur = "W_GETxValue('FTShpCode')", .style = "width:80px"})%>                                                         
                                                        <input type="hidden" id="otbOldFTShpCode" />
                                                    </div>
                                                    <div class="xW_FloatLeft">
                                                        <img src="<%=ViewData("oimgBrowse")%>" 
                                                            onclick="W_DATxBrwData('ShipVia','FTShpCode','otbShipVia')"
                                                            style="cursor:pointer;"
                                                            alt="<%=ViewData("oimgBrowse")%>"  /> 
                                                    </div>
                                                    <div>
                                                        <input type="text" id="otbShipVia" name="FTShpName" style = "width:80px" onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)" />
                                                        <%=Html.ValidationMessageFor(Function(model) model.FTShpCode)%>
                                                    </div>
                                                </div>
                                                
                                                <div id="odiOthMinLine6" class="xW_DIVLayOut">
                                                    <div class="xW_DIVfDataM xW_FloatLeft">
                                                        <%=ViewData("olaFTCstTspPaid")%>
                                                    </div>
                                                    <div class="xW_FloatLeft">
                                                        <%=Html.DropDownListFor(Function(model) model.FTCstTspPaid, CType(ViewData("CstTspPaid"), SelectList), New With {.style = "width:80px"})%>
                                                        <%=Html.ValidationMessageFor(Function(model) model.FTCstTspPaid)%>
                                                    </div>
                                                </div>
                                            </div>
                                            <%--- เริ่มส่วนข้อมูลอื่นๆ-ขวา ---%>
                                            <div class="xW_DivTabGeneral">
                                                <div id="odiOthRightLine1" class="xW_DIVLayOut">
                                                    <div class="xW_DIVfDataXL xW_FloatLeft">
                                                        <%=ViewData("olaFTCstPriLevWhs")%>
                                                    </div>
                                                    <div class="xW_FloatLeft">
                                                        <%=Html.DropDownListFor(Function(model) model.FTCstPriLevWhs, CType(ViewData("CstPriLevWhs"), SelectList), New With {.class = "x001Cst_OTB_W20H20_Enable"})%>
                                                        <%=Html.ValidationMessageFor(Function(model) model.FTCstPriLevWhs)%>
                                                    </div>
                                                </div>
                                                
                                                <div id="odiOthRightLine2" class="xW_DIVLayOut">
                                                    <div class="xW_DIVfDataXL xW_FloatLeft">
                                                        <%=ViewData("olaFTCstPriLevRet")%>
                                                    </div>
                                                    <div class="xW_FloatLeft">
                                                        <%=Html.DropDownListFor(Function(model) model.FTCstPriLevRet, CType(ViewData("CstPriLevRet"), SelectList), New With {.class = "x001Cst_OTB_W20H20_Enable"})%>
                                                        <%=Html.ValidationMessageFor(Function(model) model.FTCstPriLevRet)%>
                                                    </div>
                                                </div>
                                                
                                                <div id="odiOthRightLine3" class="xW_DIVLayOut">
                                                    <div class="xW_DIVfDataXL xW_FloatLeft">
                                                        <%=ViewData("olaFCCstRetAmt")%>
                                                    </div>
                                                    <div class="xW_FloatLeft">
                                                        <%= Html.TextBox("FCCstRetAmt", Format(Model.FCCstRetAmt, "#,##0." & StrDup(Session("nVB_CNDecAmtForShw"), "0")), New With {.onkeypress = "return J002_CHKbCheckNumOnly(this.value,event.keyCode,false)", .class = "x001Cst_OTB_W70H20_Disable"})%>
                                                        <%=Html.ValidationMessageFor(Function(model) model.FCCstRetAmt)%>
                                                    </div>
                                                </div>
                                                
                                                <div id="odiOthRightLine4" class="xW_DIVLayOut">
                                                    <div class="xW_DIVfDataXL xW_FloatLeft">
                                                        <%=ViewData("olaFCCstRetPoint")%>
                                                    </div>
                                                    <div class="xW_FloatLeft">                                                        
                                                        <%= Html.TextBox("FCCstRetPoint", Format(Model.FCCstRetPoint, "#,##0." & StrDup(Session("nVB_CNDecAmtForShw"), "0")), New With {.onkeypress = "return J002_CHKbCheckNumOnly(this.value,event.keyCode,false)", .class = "x001Cst_OTB_W70H20_Disable"})%>
                                                        <%=Html.ValidationMessageFor(Function(model) model.FCCstRetPoint)%>
                                                    </div>
                                                </div>
                                                
                                                <div id="odiOthRightLine5" class="xW_DIVLayOut">
                                                    <div class="xW_DIVfDataXL xW_FloatLeft">
                                                        <%=ViewData("olaFDCstLastPoint")%>
                                                    </div>
                                                    <div class="xW_FloatLeft">
                                                        <%=Html.Telerik().DatePicker().Name("X_FDCstLastPoint").Format("dd/MM/yyyy").Value(Model.FDCstLastPoint).InputHtmlAttributes(New With {.id = "FDCstLastPoint", .Name = "FDCstLastPoint"}).ButtonTitle("..").ShowButton(True)%>    
                                                        <%--<%=Html.ValidationMessageFor(Function(model) model.FDCstLastPoint)%>--%>
                                                    </div>
                                                </div>
                                                
                                                <div id="odiOthRightLine6" class="xW_DIVLayOut">
                                                    <div class="xW_DIVfDataXL xW_FloatLeft">
                                                        <%=ViewData("olaFTCstDiscRet")%>
                                                    </div>
                                                    <div class="xW_FloatLeft">
                                                        <%=Html.TextBoxFor(Function(model) model.FTCstDiscRet, New With {.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)", .maxlength = "50", .class = "x001Cst_OTB_W70H20_Enable"})%>
                                                        <%=Html.ValidationMessageFor(Function(model) model.FTCstDiscRet)%>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <%------------------------ ข้อมูลติดต่อ ------------------------%>
                                    <div id="DivxContractor" class="xW_DivTabSubAllC">
                                        <div style="border-width:1px; border-color:Black";>
                                            <div class="xCN_DivDisplayNone">
                                                <input type='button' id='ocmUpCtrPic' 
                                                    name='ocmUpCtrPic' 
                                                    value='<%=ViewData("tMsgUpload") %>' 
                                                    style='width:80px;height:24px;'
                                                    onClick="W_UPDxUploadCtrPic()" />
                                            </div>
                                            <div class="xW_DivTabContractor">
                                                <% 
                                                    Dim oModels As IEnumerable(Of cmlTCNTCTractor)
                                                    'Dim oListField As New List(Of String)
                                                    'oListField.Add("FTPtyCode")
                                                    'oListField.Add("FTPtyName")
                                                    oModels = ViewData("oC_ModelCtr")
                                                    
                                                    Dim gridBuilder = Html.Telerik().Grid(Of Adasoft.WebPos.Models.cmlTCNTCTractor)(oModels)
                                                    gridBuilder.Name("Grid")
                                                    gridBuilder.Pageable(Function(page) page.PageSize(5))
                                                    
                                                    'gridBuilder.Sortable().ToolBar(Function(commands) commands.Insert.HtmlAttributes(New With {.id = "ocmAdd"})).HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"})
                                                    
                                                    'gridBuilder.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                                                    '          .Update("_SaveAjaxEditing", "cvcCustomer") _
                                                    '          .Insert("_InsertAjaxEditing", "cvcCustomer") _
                                                    '          .Select("_SelectAjaxEditing", "cvcCustomer", New With {.ptCstCode = Model.FTCstCode}) _
                                                    '          .Delete("_DeleteAjaxEditing", "cvcCustomer", New With {.id = (Function(o) o.FTCtrApArCode), .ptCtrSeq = (Function(o) o.FNCtrSeq)})))
                                                    gridBuilder.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                                                             .Select("_SelectAjaxEditing", "cvcCustomer", New With {.ptCstCode = Model.FTCstCode})))
                                                                                                        
                                                    'gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTCtrApArCode).Hidden(True))
                                                    gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTCtrName).Width(100).Title(ViewData("olaName")) _
                                                            .HeaderHtmlAttributes(New With {.id = "FTCtrName", .name = "FTCtrName", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                                                    gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTCtrTel).Width(100).Title(ViewData("olaTel")) _
                                                            .HeaderHtmlAttributes(New With {.id = "FTCtrTel", .name = "FTCtrTel", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                                                    gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTCtrAddr).Width(200).Title(ViewData("olaAddr")) _
                                                            .HeaderHtmlAttributes(New With {.id = "FTCtrAddr", .name = "FTCtrAddr", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                                                    gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTCtrPosition).Width(75).Title(ViewData("olaPosi")) _
                                                            .HeaderHtmlAttributes(New With {.id = "FTCtrPosition", .name = "FTCtrPosition", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                                                    gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTCtrDept).Width(75).Title(ViewData("olaDep")) _
                                                            .HeaderHtmlAttributes(New With {.id = "FTCtrDept", .name = "FTCtrDept", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                                                    gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTCtrPic).Width(103).Title(ViewData("olaPic")) _
                                                            .HeaderHtmlAttributes(New With {.id = "FTCtrPic", .name = "FTCtrPic", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                                                    'gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTCtrPic).Width(103).Title(ViewData("olaPic")) _
                                                    '        .HeaderHtmlAttributes(New With {.name = "FTCtrPic", .style = "text-align:center; font-size:14px;"}) _
                                                    '        .ClientTemplate("<input type='file' id='otbCtrPic' name='otbCtrPic' style='height:22px; width:100px;' /><input type='button' id='otbUpCtrPic' name='otbUpCtrPic' value='" & ViewData("tMsgUpload") & "' style='width:80px;height:24px;'/>"))
                                                                             
                                                    '<input type='checkbox' disabled='disabled' name='FTCtrPic' <#= FTCtrPic == '1'? checked='checked' : '' #> />
                                                    
                                                    gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FNCtrSeq).Width(0).Hidden(True))
                                                    
                                                    gridBuilder.DataKeys(Function(keys) (keys.Add(Function(c) c.FTCtrApArCode)))
                                                    
                                                    'gridBuilder.Columns(Function(columns) columns.Command(Function(commands) commands.Edit()).Width(30).Title("Commands").Visible(False))
                                                    'gridBuilder.Columns(Function(columns) columns.Command(Function(commands) commands.Delete()).Width(30).Title("Commands").Visible(False))
                                                    'Dim commandColumn As New GridActionColumn(Of Adasoft.WebPos.Models.cmlTCNTCTractor)(gridBuilder.ToComponent())
                                                    'commandColumn.Title = ViewData("olaEdit")
                                                    'commandColumn.HeaderHtmlAttributes.Add("style", "text-align:center; font-size:13px;") 'New With {.style = "text-align:center;"})
                                                    'commandColumn.HtmlAttributes.Add("style", "text-align:left; font-size:12px;")
                                                    'Dim objEdit As New GridEditActionCommand
                                                    'commandColumn.Commands.Add(objEdit)
                                                    'Dim objDelete As New GridDeleteActionCommand
                                                    'commandColumn.Commands.Add(objDelete)
                                                    
                                                    'gridBuilder.ToComponent().Columns.Add(commandColumn)
                                                    
                                                    gridBuilder.ClientEvents(Function(Events) Events.OnLoad("W_SETxFilterOnClick"))
                                                    'gridBuilder.ClientEvents(Function(Events) Events.OnEdit("W_CHKxStatus"))
                                                    'gridBuilder.ClientEvents(Function(Events) Events.OnDelete("W_CHKxUserDeleteAuthorize"))
                                                    'gridBuilder.ClientEvents(Function(Events) Events.OnSave("W_CHKxUserAuthorize"))
                                                    gridBuilder.ClientEvents(Function(Events) Events.OnRowSelect("W_DATxGridCtrOnRowSelect"))
                                                    gridBuilder.Scrollable(Function(o) o.Height(140))
                                                    gridBuilder.Resizable(Function(o) o.Columns(True))
                                                    gridBuilder.Selectable()
                                                    
                                                    gridBuilder.Render()
                                                    %>
                                                <%--   Div Input Grid   --%>
                                                <div class="xW_DivTabDetailInput">
                                                    <div class="xW_DivInputHeight">
                                                        <div class="xCN_DivDisplayNone">
                                                            <input type="text" id="otbCtrSeq" name="otbCtrSeq" />
                                                        </div>
                                                        <div class="xW_DivInputGrid">
                                                            <input id="otbName" name="otbName" type="text" class="xW_InputWidthCtr01"
                                                                onfocus="return W_SETxHeaderGridColor('name','Ctr')" 
                                                                onblur="return W_SETxHeaderGridColor('name','Ctr')"
                                                                onkeydown="otbName_onkeydown(event.keyCode,event.which)"  />
                                                        </div>
                                                        <div class="xW_DivInputGrid">
                                                            <input id="otbTel" name="otbTel" type="text" class="xW_InputWidthCtr01"
                                                                onfocus="return W_SETxHeaderGridColor('tel','Ctr')"
                                                                onblur="return W_SETxHeaderGridColor('tel','Ctr')"
                                                                onkeydown="otbTel_onkeydown(event.keyCode,event.which)" />
                                                        </div>
                                                        <div class="xW_DivInputGrid">
                                                            <input id="otbAddr" name="otbAddr" type="text" class="xW_InputWidthCtr02"
                                                                onfocus="return W_SETxHeaderGridColor('addr','Ctr')"
                                                                onblur="return W_SETxHeaderGridColor('addr','Ctr')"
                                                                onkeydown="otbAddr_onkeydown(event.keyCode,event.which)"/>
                                                        </div>                                                        
                                                        <div class="xW_DivInputGrid">
                                                            <input id="otbPosition" name="otbPosition" type="text" class="xW_InputWidthCtr03"
                                                                onfocus="return W_SETxHeaderGridColor('posi','Ctr')"
                                                                onblur="return W_SETxHeaderGridColor('posi','Ctr')"
                                                                onkeydown="otbPosition_onkeydown(event.keyCode,event.which)" />
                                                        </div>                                                        
                                                        <div class="xW_DivInputGrid">
                                                            <input id="otbDept" name="otbDept" type="text" class="xW_InputWidthCtr03"
                                                                onfocus="return W_SETxHeaderGridColor('dept','Ctr')"
                                                                onblur="return W_SETxHeaderGridColor('dept','Ctr')"
                                                                onkeydown="otbDept_onkeydown(event.keyCode,event.which)" />
                                                        </div>                                        
                                                        <div class="xW_DivInputGrid">        
                                                            <!-- Hiden input file -->
                                                            <input type='file' id='otbCtrPic' name='otbCtrPic'
                                                                onchange='W_SETxPathCtrPic()' 
                                                                class="xCN_HideInputFile xW_InputWidthCtr04"
                                                                onfocus="return W_SETxHeaderGridColor('pic','Ctr')"
                                                                onblur="return W_SETxHeaderGridColor('pic','Ctr')" />    
                                                            <!-- Fake input file -->
                                                            <input id="otbPicCtr" name="otbPicCtr" type="text" 
                                                                class="xW_InputWidthCtr04 xCN_FakeInputFile"
                                                                onkeydown="otbPicCtr_onkeydown(event.keyCode,event.which)"/>
                                                        </div>                                                        
                                                        <div class="xW_DivInputGrid">
                                                            <input type="text" class="xW_InputWidthCtr05 xCN_AllReadOnlyBGColor" 
                                                                readonly="readonly" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="xW_DivPicCtr">
                                                <div class="xW_DIVLayOut3">
                                                    <div class="xW_FloatLeft">
                                                        <img src="<%=ViewData("oimgComingSoon").ToString%>" 
                                                            alt="" id="oimCtrPic" 
                                                            style="width:98px; height:170px;" />
                                                    </div> 
                                                </div>
                                                <div class="xW_DIVLayOut3">&nbsp</div>
                                                <div class="xW_DIVLayOut3">&nbsp</div>
                                                <div class="xW_DIVLayOut3">
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
                                    
                                    <%------------------------ ข้อมูลส่งของ ------------------------%>
                                    <div id="DivxShipPlace" class="xW_DivTabSubAllC">
                                        <div style="border-width:1px; border-color:Black";>
                                            <div class="xW_DivTabContractor">
                                                <% 
                                                    Dim oModelCsp As IEnumerable(Of cmlTCNTCstShip)
                                                    oModelCsp = ViewData("oC_ModelCsp")
                                                    Dim gridBuilderCsp = Html.Telerik().Grid(Of Adasoft.WebPos.Models.cmlTCNTCstShip)(oModelCsp)
                                                    gridBuilderCsp.Name("GridCsp")
                                                    gridBuilderCsp.Pageable(Function(page) page.PageSize(5))
                                                    
                                                    gridBuilderCsp.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                                                             .Select("ogdCsp_SelectAjaxEditing", "cvcCustomer")))
                                                                                                        
                                                    gridBuilderCsp.Columns(Function(columns) columns.Bound(Function(o) o.FTCspName).Width(100).Title(ViewData("olaShipping")) _
                                                            .HeaderHtmlAttributes(New With {.id = "FTCspName", .name = "FTCspName", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                                                    gridBuilderCsp.Columns(Function(columns) columns.Bound(Function(o) o.FTCspAddr).Width(200).Title(ViewData("olaAddr")) _
                                                            .HeaderHtmlAttributes(New With {.id = "FTCspAddr", .name = "FTCspAddr", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                                                    gridBuilderCsp.Columns(Function(columns) columns.Bound(Function(o) o.FTCspTel).Width(100).Title(ViewData("olaTel")) _
                                                            .HeaderHtmlAttributes(New With {.id = "FTCspTel", .name = "FTCspTel", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                                                    gridBuilderCsp.Columns(Function(columns) columns.Bound(Function(o) o.FTCspPic).Width(103).Title(ViewData("olaPic")) _
                                                            .HeaderHtmlAttributes(New With {.id = "FTCspPic", .name = "FTCspPic", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                                                    gridBuilderCsp.Columns(Function(columns) columns.Bound(Function(o) o.FNCspCode).Width(0).Hidden(True))
                                                    
                                                    gridBuilderCsp.DataKeys(Function(keys) (keys.Add(Function(c) c.FTCstCode)))
                                                    
                                                    gridBuilderCsp.ClientEvents(Function(Events) Events.OnLoad("W_SETxPicGridCspOnload"))
                                                    gridBuilderCsp.ClientEvents(Function(Events) Events.OnRowSelect("W_DATxGridCspOnRowSelect"))
                                                    gridBuilderCsp.Scrollable(Function(o) o.Height(140))
                                                    gridBuilderCsp.Resizable(Function(o) o.Columns(True))
                                                    gridBuilderCsp.Selectable()
                                                    
                                                    gridBuilderCsp.Render()
                                                %>
                                            <%--   Div Input Grid   --%>
                                                <div class="xW_DivTabDetailInput">
                                                    <div class="xW_DivInputHeight">
                                                        <div class="xCN_DivDisplayNone">
                                                            <input type="text" id="otbCspCode" name="otbCspCode" />
                                                        </div>
                                                        <div class="xW_DivInputGrid">
                                                            <input id="otbCspName" name="otbCspName" type="text" class="xW_InputWidthCtr06"
                                                                onfocus="return W_SETxHeaderGridColor('name','Csp')" 
                                                                onblur="return W_SETxHeaderGridColor('name','Csp')"
                                                                onkeydown="otbCspName_onkeydown(event.keyCode,event.which)"  />
                                                        </div>
                                                        <div class="xW_DivInputGrid">
                                                            <input id="otbCspAddr" name="otbCspAddr" type="text" class="xW_InputWidthCtr07"
                                                                onfocus="return W_SETxHeaderGridColor('addr','Csp')"
                                                                onblur="return W_SETxHeaderGridColor('addr','Csp')"
                                                                onkeydown="otbCspAddr_onkeydown(event.keyCode,event.which)"/>
                                                        </div>
                                                        <div class="xW_DivInputGrid">
                                                            <input id="otbCspTel" name="otbCspTel" type="text" class="xW_InputWidthCtr08"
                                                                onfocus="return W_SETxHeaderGridColor('tel','Csp')"
                                                                onblur="return W_SETxHeaderGridColor('tel','Csp')"
                                                                onkeydown="otbCspTel_onkeydown(event.keyCode,event.which)" />
                                                        </div>                                               
                                                        <div class="xW_DivInputGrid">        
                                                            <!-- Hiden input file -->
                                                            <input type='file' id='otbCspPic' name='otbCspPic'
                                                                onchange='W_SETxPathCspPic()' 
                                                                class="xCN_HideInputFile xW_InputWidthCtr08"
                                                                onfocus="return W_SETxHeaderGridColor('pic','Csp')"
                                                                onblur="return W_SETxHeaderGridColor('pic','Csp')" />    
                                                            <!-- Fake input file -->
                                                            <input id="otbCspPicFake" name="otbCspPicFake" type="text" 
                                                                class="xW_InputWidthCtr08 xCN_FakeInputFile"
                                                                onkeydown="otbCspPicFake_onkeydown(event.keyCode,event.which)"/>
                                                        </div>                                                        
                                                        <div class="xW_DivInputGrid">
                                                            <input type="text" class="xW_InputWidthCtr05 xCN_AllReadOnlyBGColor" 
                                                                readonly="readonly" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="xW_DivPicCtr">
                                                <div class="xW_DIVLayOut3">
                                                    <div class="xW_FloatLeft">
                                                        <img src="<%=ViewData("oimgComingSoon").ToString%>" 
                                                            alt="" id="oimCspPic" 
                                                            style="width:98px; height:170px;" />
                                                    </div> 
                                                </div>
                                                <div class="xW_DIVLayOut3">&nbsp</div>
                                                <div class="xW_DIVLayOut3">&nbsp</div>
                                                <div class="xW_DIVLayOut3">
                                                    <div>
                                                        <img id="ocmAddCsp" alt="" src="<%=Url.Content("~/Content/img/imgIcon16x16/accept16.png") %>" 
                                                            style ="width:20px;height:20px;cursor:pointer;"
                                                            onclick="W_ADDxAddCspToGrid()" 
                                                            onkeydown="return ocmAdd_onkeydown(event.keyCode,event.which)"  />
                                                        <img id="ocmDelCsp" alt="" src="<%=Url.Content("~/Content/img/imgIcon16x16/delete16.png") %>" 
                                                            style ="width:20px;height:20px;cursor:pointer;"
                                                            onclick="W_DELxCspItem()" /> 
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <%------------------------ ข้อมูลขายส่ง ------------------------%>
                                    <div id="DivxWholesaleHis" class="xW_DivTabSubAllC">
                                        <div style="border-width:1px; border-color:Black";>
                                            <% 
                                                Dim oModelSi As IEnumerable(Of cmlTACTSiHD)
                                                oModelSi = ViewData("oC_TACTSiHD")
                                                Dim tDecForShw As String = "#,##0." & StrDup(Session("nVB_CNDecAmtForShw"), "0")
                                                Dim gridBuilderSi = Html.Telerik().Grid(Of Adasoft.WebPos.Models.cmlTACTSiHD)(oModelSi)
                                                gridBuilderSi.Name("GridSi")
                                                gridBuilderSi.Pageable(Function(page) page.PageSize(15))
                                                    
                                                gridBuilderSi.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                                                             .Select("ogdSale_SelectAjaxEditing", "cvcCustomer", _
                                                                     New With {.ptCase = "StSi", .ptCstCode = Model.FTCstCode})))
                                                
                                                gridBuilderSi.Columns(Function(columns) columns.Bound(Function(o) o.FTXihDocNo).Width(150).Title(ViewData("olaRecDocNo")) _
                                                            .HeaderHtmlAttributes(New With {.id = "FTXihDocNo", .name = "FTXihDocNo", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                                                gridBuilderSi.Columns(Function(columns) columns.Bound(Function(o) o.FDXihDocDate).Width(100).Title(ViewData("olaRecDocDate")) _
                                                            .Format("{0:dd/MM/yyyy}") _
                                                            .HeaderHtmlAttributes(New With {.id = "FDXihDocDate", .name = "FDXihDocDate", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}))
                                                gridBuilderSi.Columns(Function(columns) columns.Bound(Function(o) o.FDXihDueDate).Width(100).Title(ViewData("olaDueDate")) _
                                                            .Format("{0:dd/MM/yyyy}") _
                                                            .HeaderHtmlAttributes(New With {.id = "FDXihDueDate", .name = "FDXihDueDate", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}))
                                                gridBuilderSi.Columns(Function(columns) columns.Bound(Function(o) o.FCXihMnyCxx).Width(80).Title(ViewData("olaPoint")) _
                                                            .HeaderHtmlAttributes(New With {.id = "FCXihMnyCxx", .name = "FCXihMnyCxx", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:right; font-size:12px;"}))
                                                gridBuilderSi.Columns(Function(columns) columns.Bound(Function(o) o.FCXihGrand).Width(110).Title(ViewData("olaTotal")) _
                                                            .Format("{0:" & tDecForShw & "}") _
                                                            .HeaderHtmlAttributes(New With {.id = "FCXihGrand", .name = "FCXihGrand", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:right; font-size:12px;"}))
                                                gridBuilderSi.Columns(Function(columns) columns.Bound(Function(o) o.FCXihLeft).Width(110).Title(ViewData("olaRemain")) _
                                                            .Format("{0:" & tDecForShw & "}") _
                                                            .HeaderHtmlAttributes(New With {.id = "FCXihLeft", .name = "FCXihLeft", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:right; font-size:12px;"}))
                                                gridBuilderSi.Columns(Function(columns) columns.Bound(Function(o) o.FCXihPaid).Width(110).Title(ViewData("olaPaid")) _
                                                            .Format("{0:" & tDecForShw & "}") _
                                                            .HeaderHtmlAttributes(New With {.id = "FCXihPaid", .name = "FCXihPaid", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:right; font-size:12px;"}))
                                                    
                                                gridBuilderSi.DataKeys(Function(keys) (keys.Add(Function(c) c.FTCstCode)))
                                                    
                                                'gridBuilderSi.ClientEvents(Function(Events) Events.OnLoad("W_SETxPicGridSiOnload"))
                                                'gridBuilderSi.ClientEvents(Function(Events) Events.OnRowSelect("W_DATxGridSiOnRowSelect"))
                                                gridBuilderSi.Scrollable(Function(o) o.Height(170))
                                                gridBuilderSi.Resizable(Function(o) o.Columns(True))
                                                    
                                                gridBuilderSi.Render()
                                                %>
                                        </div>
                                    </div>
                                    
                                    <%------------------------ ข้อมูลขายปลีก------------------------%>
                                    <div id="DivxRetailHis" class="xW_DivTabSubAllC">
                                        <div style="border-width:1px; border-color:Black";>
                                            <% 
                                                Dim oModelSal As IEnumerable(Of cmlTPSTSalHD)
                                                oModelSal = ViewData("oC_TPSTSalHD")
                                                Dim gridBuilderSal = Html.Telerik().Grid(Of Adasoft.WebPos.Models.cmlTPSTSalHD)(oModelSal)
                                                gridBuilderSal.Name("GridSal")
                                                gridBuilderSal.Pageable(Function(page) page.PageSize(15))
                                                    
                                                gridBuilderSal.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                                                             .Select("ogdSale_SelectAjaxEditing", "cvcCustomer", _
                                                                     New With {.ptCase = "StSal", .ptCstCode = Model.FTCstCode})))
                                                
                                                gridBuilderSal.Columns(Function(columns) columns.Bound(Function(o) o.FTShdDocNo).Width(150).Title(ViewData("olaRecDocNo")) _
                                                            .HeaderHtmlAttributes(New With {.id = "FTShdDocNo", .name = "FTShdDocNo", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                                                gridBuilderSal.Columns(Function(columns) columns.Bound(Function(o) o.FDShdDocDate).Width(100).Title(ViewData("olaRecDocDate")) _
                                                            .Format("{0:dd/MM/yyyy}") _
                                                            .HeaderHtmlAttributes(New With {.id = "FDShdDocDate", .name = "FDShdDocDate", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}))
                                                gridBuilderSal.Columns(Function(columns) columns.Bound(Function(o) o.FDShdDueDate).Width(100).Title(ViewData("olaDueDate")) _
                                                            .Format("{0:dd/MM/yyyy}") _
                                                            .HeaderHtmlAttributes(New With {.id = "FDShdDueDate", .name = "FDShdDueDate", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}))
                                                gridBuilderSal.Columns(Function(columns) columns.Bound(Function(o) o.FCShdMnyCxx).Width(80).Title(ViewData("olaPoint")) _
                                                            .HeaderHtmlAttributes(New With {.id = "FCShdMnyCxx", .name = "FCShdMnyCxx", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:right; font-size:12px;"}))
                                                gridBuilderSal.Columns(Function(columns) columns.Bound(Function(o) o.FCShdGrand).Width(110).Title(ViewData("olaTotal")) _
                                                            .Format("{0:" & tDecForShw & "}") _
                                                            .HeaderHtmlAttributes(New With {.id = "FCShdGrand", .name = "FCShdGrand", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:right; font-size:12px;"}))
                                                gridBuilderSal.Columns(Function(columns) columns.Bound(Function(o) o.FCShdLeft).Width(110).Title(ViewData("olaRemain")) _
                                                            .Format("{0:" & tDecForShw & "}") _
                                                            .HeaderHtmlAttributes(New With {.id = "FCShdLeft", .name = "FCShdLeft", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:right; font-size:12px;"}))
                                                gridBuilderSal.Columns(Function(columns) columns.Bound(Function(o) o.FCShdPaid).Width(110).Title(ViewData("olaPaid")) _
                                                            .Format("{0:" & tDecForShw & "}") _
                                                            .HeaderHtmlAttributes(New With {.id = "FCShdPaid", .name = "FCShdPaid", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:right; font-size:12px;"}))
                                                    
                                                gridBuilderSal.DataKeys(Function(keys) (keys.Add(Function(c) c.FTCstCode)))
                                                    
                                                gridBuilderSal.Scrollable(Function(o) o.Height(170))
                                                gridBuilderSal.Resizable(Function(o) o.Columns(True))
                                                    
                                                gridBuilderSal.Render()
                                                %>
                                        </div>
                                    </div>
                                    
                                    <%------------------------ ข้อมูลใบลดหนี้/เพิ่มหนี้/อื่นๆ------------------------%>
                                    <div id="DivxCNDNOther" class="xW_DivTabSubAllC">
                                        <div style="border-width:1px; border-color:Black";>
                                            <!-- Tab -->
                                            <a onclick ="{J010_SHWxTabData(0,'DivCreadit','DivDebit','DivOthDoc');
                                                        J009_SHWxTabTop(0,'Div_Creadit','Div_Debit','Div_OthDoc');
                                                        W_SETxRebindGridSal('GridCN','CN');}" href="#" >
                                                <div id="Div_Creadit" class="xCN_DivTabUnActive">
                                                    <%= ViewData("olaTabCreditNote").ToString%>
                                                </div>
                                            </a>

                                            <a onclick ="{J010_SHWxTabData(1,'DivCreadit','DivDebit','DivOthDoc');
                                                        J009_SHWxTabTop(1,'Div_Creadit','Div_Debit','Div_OthDoc');
                                                        W_SETxRebindGridSal('GridDN','DN');}" href="#" >
                                                <div id="Div_Debit" class="xCN_DivTabUnActive">
                                                    <%= ViewData("olaTabDebitNote").ToString%>
                                                </div>
                                            </a>

                                            <a onclick ="{J010_SHWxTabData(2,'DivCreadit','DivDebit','DivOthDoc');
                                                        J009_SHWxTabTop(2,'Div_Creadit','Div_Debit','Div_OthDoc');
                                                        W_SETxRebindGridSal('GridOth','Oth');}" href="#" >
                                                <div id="Div_OthDoc" class="xCN_DivTabUnActive">
                                                    <%= ViewData("olaTabOthDoc").ToString%>
                                                </div>
                                            </a>
                                                                                        
                                            <!-- ใบลดหนี้ -->
                                            <div id="DivCreadit"  class="xW_DivTabSubCDDNOth">
                                                <div style="border-width:1px; border-color:Black";>
                                                    <% 
                                                        Dim oModelStCN As IEnumerable(Of cmlTACTStHD)
                                                        oModelStCN = ViewData("oC_TACTStHDCN")
                                                        Dim gridBuilderCN = Html.Telerik().Grid(Of Adasoft.WebPos.Models.cmlTACTStHD)(oModelStCN)
                                                        gridBuilderCN.Name("GridCN")
                                                        gridBuilderCN.Pageable(Function(page) page.PageSize(15))
                                                    
                                                        gridBuilderCN.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                                                             .Select("ogdCNDNOth_SelectAjaxEditing", "cvcCustomer", _
                                                                     New With {.ptCase = "St", .ptCstCode = Model.FTCstCode})))
                                                
                                                        gridBuilderCN.Columns(Function(columns) columns.Bound(Function(o) o.FTXthDocNo).Width(150).Title(ViewData("olaRecDocNo")) _
                                                            .HeaderHtmlAttributes(New With {.id = "FTXthDocNo", .name = "FTXthDocNo", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                                                        gridBuilderCN.Columns(Function(columns) columns.Bound(Function(o) o.FDXthDocDate).Width(100).Title(ViewData("olaRecDocDate")) _
                                                            .Format("{0:dd/MM/yyyy}") _
                                                            .HeaderHtmlAttributes(New With {.id = "FDXthDocDate", .name = "FDXthDocDate", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}))
                                                        gridBuilderCN.Columns(Function(columns) columns.Bound(Function(o) o.FDXthDueDate).Width(100).Title(ViewData("olaDueDate")) _
                                                            .Format("{0:dd/MM/yyyy}") _
                                                            .HeaderHtmlAttributes(New With {.id = "FDXthDueDate", .name = "FDXthDueDate", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}))
                                                        gridBuilderCN.Columns(Function(columns) columns.Bound(Function(o) o.FCXthGrand).Width(110).Title(ViewData("olaTotal")) _
                                                            .Format("{0:" & tDecForShw & "}") _
                                                            .HeaderHtmlAttributes(New With {.id = "FCXthGrand", .name = "FCXthGrand", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:right; font-size:12px;"}))
                                                        gridBuilderCN.Columns(Function(columns) columns.Bound(Function(o) o.FCXthLeft).Width(110).Title(ViewData("olaRemain")) _
                                                            .Format("{0:" & tDecForShw & "}") _
                                                            .HeaderHtmlAttributes(New With {.id = "FCXthLeft", .name = "FCXthLeft", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:right; font-size:12px;"}))
                                                        gridBuilderCN.Columns(Function(columns) columns.Bound(Function(o) o.FCXthPaid).Width(110).Title(ViewData("olaPaid")) _
                                                            .Format("{0:" & tDecForShw & "}") _
                                                            .HeaderHtmlAttributes(New With {.id = "FCXthPaid", .name = "FCXthPaid", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:right; font-size:12px;"}))
                                                    
                                                        gridBuilderCN.DataKeys(Function(keys) (keys.Add(Function(c) c.FTCstCode)))
                                                    
                                                        gridBuilderCN.Scrollable(Function(o) o.Height(160))
                                                        gridBuilderCN.Resizable(Function(o) o.Columns(True))
                                                    
                                                        gridBuilderCN.Render()
                                                %>
                                                </div>
                                            </div>

                                            <!-- เพิ่มหนี้ -->
                                            <div id="DivDebit"  class="xW_DivTabSubCDDNOth">
                                                <div style="border-width:1px; border-color:Black";>
                                                    <% 
                                                        Dim oModelStDN As IEnumerable(Of cmlTACTStHD)
                                                        oModelStDN = ViewData("oC_TACTStHDDN")
                                                        Dim gridBuilderDN = Html.Telerik().Grid(Of Adasoft.WebPos.Models.cmlTACTStHD)(oModelStDN)
                                                        gridBuilderDN.Name("GridDN")
                                                        gridBuilderDN.Pageable(Function(page) page.PageSize(15))
                                                    
                                                        gridBuilderDN.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                                                             .Select("ogdCNDNOth_SelectAjaxEditing", "cvcCustomer", _
                                                                     New With {.ptCase = "St", .ptCstCode = Model.FTCstCode})))
                                                
                                                        gridBuilderDN.Columns(Function(columns) columns.Bound(Function(o) o.FTXthDocNo).Width(150).Title(ViewData("olaRecDocNo")) _
                                                            .HeaderHtmlAttributes(New With {.id = "FTXthDocNo", .name = "FTXthDocNo", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                                                        gridBuilderDN.Columns(Function(columns) columns.Bound(Function(o) o.FDXthDocDate).Width(100).Title(ViewData("olaRecDocDate")) _
                                                            .Format("{0:dd/MM/yyyy}") _
                                                            .HeaderHtmlAttributes(New With {.id = "FDXthDocDate", .name = "FDXthDocDate", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}))
                                                        gridBuilderDN.Columns(Function(columns) columns.Bound(Function(o) o.FDXthDueDate).Width(100).Title(ViewData("olaDueDate")) _
                                                            .Format("{0:dd/MM/yyyy}") _
                                                            .HeaderHtmlAttributes(New With {.id = "FDXthDueDate", .name = "FDXthDueDate", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}))
                                                        gridBuilderDN.Columns(Function(columns) columns.Bound(Function(o) o.FCXthGrand).Width(110).Title(ViewData("olaTotal")) _
                                                            .Format("{0:" & tDecForShw & "}") _
                                                            .HeaderHtmlAttributes(New With {.id = "FCXthGrand", .name = "FCXthGrand", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:right; font-size:12px;"}))
                                                        gridBuilderDN.Columns(Function(columns) columns.Bound(Function(o) o.FCXthLeft).Width(110).Title(ViewData("olaRemain")) _
                                                            .Format("{0:" & tDecForShw & "}") _
                                                            .HeaderHtmlAttributes(New With {.id = "FCXthLeft", .name = "FCXthLeft", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:right; font-size:12px;"}))
                                                        gridBuilderDN.Columns(Function(columns) columns.Bound(Function(o) o.FCXthPaid).Width(110).Title(ViewData("olaPaid")) _
                                                            .Format("{0:" & tDecForShw & "}") _
                                                            .HeaderHtmlAttributes(New With {.id = "FCXthPaid", .name = "FCXthPaid", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:right; font-size:12px;"}))
                                                    
                                                        gridBuilderDN.DataKeys(Function(keys) (keys.Add(Function(c) c.FTCstCode)))
                                                    
                                                        gridBuilderDN.Scrollable(Function(o) o.Height(160))
                                                        gridBuilderDN.Resizable(Function(o) o.Columns(True))
                                                    
                                                        gridBuilderDN.Render()
                                                    %>
                                                </div>
                                            </div>

                                            <!-- เอกสารอื่นๆ -->
                                            <div id="DivOthDoc"  class="xW_DivTabSubCDDNOth">
                                                <div style="border-width:1px; border-color:Black";>
                                                    <% 
                                                        Dim oModelStOth As IEnumerable(Of cmlTACTSxHD)
                                                        oModelStOth = ViewData("oC_TACTStHDOth")
                                                        Dim gridBuilderOth = Html.Telerik().Grid(Of Adasoft.WebPos.Models.cmlTACTSxHD)(oModelStOth)
                                                        gridBuilderOth.Name("GridOth")
                                                        gridBuilderOth.Pageable(Function(page) page.PageSize(15))
                                                    
                                                        gridBuilderOth.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                                                             .Select("ogdCNDNOth_SelectAjaxEditing", "cvcCustomer", _
                                                                     New With {.ptCase = "St", .ptCstCode = Model.FTCstCode})))
                                                
                                                        gridBuilderOth.Columns(Function(columns) columns.Bound(Function(o) o.FTXxhDocNo).Width(150).Title(ViewData("olaRecDocNo")) _
                                                            .HeaderHtmlAttributes(New With {.id = "FTXxhDocNo", .name = "FTXxhDocNo", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                                                        gridBuilderOth.Columns(Function(columns) columns.Bound(Function(o) o.FDXxhDocDate).Width(100).Title(ViewData("olaRecDocDate")) _
                                                            .Format("{0:dd/MM/yyyy}") _
                                                            .HeaderHtmlAttributes(New With {.id = "FDXxhDocDate", .name = "FDXxhDocDate", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}))
                                                        gridBuilderOth.Columns(Function(columns) columns.Bound(Function(o) o.FDXxhDueDate).Width(100).Title(ViewData("olaDueDate")) _
                                                            .Format("{0:dd/MM/yyyy}") _
                                                            .HeaderHtmlAttributes(New With {.id = "FDXxhDueDate", .name = "FDXxhDueDate", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}))
                                                        gridBuilderOth.Columns(Function(columns) columns.Bound(Function(o) o.FCXxhGrand).Width(110).Title(ViewData("olaTotal")) _
                                                            .Format("{0:" & tDecForShw & "}") _
                                                            .HeaderHtmlAttributes(New With {.id = "FCXxhGrand", .name = "FCXxhGrand", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:right; font-size:12px;"}))
                                                        gridBuilderOth.Columns(Function(columns) columns.Bound(Function(o) o.FCXxhLeft).Width(110).Title(ViewData("olaRemain")) _
                                                            .Format("{0:" & tDecForShw & "}") _
                                                            .HeaderHtmlAttributes(New With {.id = "FCXxhLeft", .name = "FCXxhLeft", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:right; font-size:12px;"}))
                                                        gridBuilderOth.Columns(Function(columns) columns.Bound(Function(o) o.FCXxhPaid).Width(110).Title(ViewData("olaPaid")) _
                                                            .Format("{0:" & tDecForShw & "}") _
                                                            .HeaderHtmlAttributes(New With {.id = "FCXxhPaid", .name = "FCXxhPaid", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:right; font-size:12px;"}))
                                                    
                                                        gridBuilderOth.DataKeys(Function(keys) (keys.Add(Function(c) c.FTCstCode)))
                                                    
                                                        gridBuilderOth.Scrollable(Function(o) o.Height(160))
                                                        gridBuilderOth.Resizable(Function(o) o.Columns(True))
                                                    
                                                        gridBuilderOth.Render()
                                                    %>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <%------------------------ ข้อมูลใบลดหนี้------------------------%>
                                    <div id="DivxGrpPrice" class="xW_DivTabSubAllC">
                                        <div style="border-width:1px; border-color:Black";>
                                            <% 
                                                Dim oModelCstP As IEnumerable(Of cmlTCNTCstPriceHD)
                                                oModelCstP = ViewData("oC_CstPrice")
                                                Dim gridBuilderCstP = Html.Telerik().Grid(Of Adasoft.WebPos.Models.cmlTCNTCstPriceHD)(oModelCstP)
                                                gridBuilderCstP.Name("GridCstP")
                                                gridBuilderCstP.Pageable(Function(page) page.PageSize(15))
                                                    
                                                gridBuilderCstP.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                                                             .Select("ogdCstPrice_SelectAjaxEditing", "cvcCustomer")))
                                                
                                                gridBuilderCstP.Columns(Function(columns) columns.Bound(Function(o) o.FTCphDocNo).Width(150).Title(ViewData("olaCode")) _
                                                            .HeaderHtmlAttributes(New With {.id = "FTCphDocNo", .name = "FTCphDocNo", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                                                gridBuilderCstP.Columns(Function(columns) columns.Bound(Function(o) o.FTCphName).Width(100).Title(ViewData("olaName")) _
                                                            .HeaderHtmlAttributes(New With {.id = "FTCphName", .name = "FTCphName", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                                                gridBuilderCstP.Columns(Function(columns) columns.Bound(Function(o) o.FDCphDStart).Width(100).Title(ViewData("olaDateStart")) _
                                                            .Format("{0:dd/MM/yyyy}") _
                                                            .HeaderHtmlAttributes(New With {.id = "FDCphDStart", .name = "FDCphDStart", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}))
                                                gridBuilderCstP.Columns(Function(columns) columns.Bound(Function(o) o.FDCphDEnd).Width(100).Title(ViewData("olaDateStop")) _
                                                            .Format("{0:dd/MM/yyyy}") _
                                                            .HeaderHtmlAttributes(New With {.id = "FDCphDEnd", .name = "FDCphDEnd", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}))
                                                gridBuilderCstP.Columns(Function(columns) columns.Bound(Function(o) o.FDCphTStart).Width(100).Title(ViewData("olaTimeStart")) _
                                                            .Format("{0:HH:mm:ss}") _
                                                            .HeaderHtmlAttributes(New With {.id = "FDCphTStart", .name = "FDCphTStart", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}))
                                                gridBuilderCstP.Columns(Function(columns) columns.Bound(Function(o) o.FDCphTEnd).Width(100).Title(ViewData("olaTimeStop")) _
                                                            .Format("{0:HH:mm:ss}") _
                                                            .HeaderHtmlAttributes(New With {.id = "FDCphTEnd", .name = "FDCphTEnd", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}))
                                                gridBuilderCstP.Columns(Function(columns) columns.Bound(Function(o) o.FTCphStatus).Width(80).Title(ViewData("olaSta")) _
                                                            .HeaderHtmlAttributes(New With {.id = "FTCphStatus", .name = "FTCphStatus", .style = "text-align:center; font-size:14px;"}) _
                                                            .HtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}))
                                                    
                                                gridBuilderCstP.DataKeys(Function(keys) (keys.Add(Function(c) c.FTCphDocNo)))
                                                    
                                                gridBuilderCstP.Scrollable(Function(o) o.Height(170))
                                                gridBuilderCstP.Resizable(Function(o) o.Columns(True))
                                                    
                                                gridBuilderCstP.Render()
                                                %>
                                        </div>
                                    </div>
                            </div>
                        </div>                     
                    </div>
                </div>
            </div>  
        </div>
    </div>      
    
    <% End Using %>
    
    <!-- Change Value -->
    <div id="odiChangeValue" title='<%=ViewData("olaChangeValue")%>' class="xCN_DivTabDisplay">
        <div class="xW_DivGridDetail" style="height:195px">
            <div class="xCN_AllBackgroundColor" style="float:left;width:350px;height:99%;border:solid 1px green;" >
                <div style="width:100%;margin:5px 5px 5px 5px;float:left;">
                    <div style="float:left;width:120px;margin:0px 5px 0px 5px;">
                        <%=ViewData("olaOldValue")%>
                    </div>
                    <div style="float:left;">
                        <input id="otbOldValue" type="text" class="xCN_AllReadOnlyBGColor" style="width:200px;" readonly="readonly" />
                    </div>
                </div>
                <div style="width:100%;margin:5px 5px 5px 5px;float:left;">
                    <div style="float:left;width:120px;margin:0px 5px 0px 5px;">
                        <%=ViewData("olaNewValue")%>
                    </div>
                    <div style="float:left;">
                        <input id="otbNewValue" type="text" style="width:200px;" onkeydown="return otbNewValue_onkeydown(event.keyCode,event.which)" onkeypress="return otbNewValue_onkeypress(event.keyCode,event.which)" onblur="return otbNewValue_onblur()" />
                    </div>
                </div>
                <div style="width:336px;border-top:solid 1px black;margin:5px 5px 5px 5px;float:left;">
                    <%=ViewData("olaNewValueCal")%>
                </div>
                <div style="width:100%;margin:5px 5px 5px 5px;float:left;">
                    <input id="ocmDisAmt" type="button" style="width:80px;" value="<%=ViewData("olaDecreaseAmt") %>" onclick="return ocmDisAmt_onclick()" />
                    <input id="ocmDisPer" type="button" style="width:80px;" value="<%=ViewData("olaDecreasePercent") %>" onclick="return ocmDisPer_onclick()" />
                    <input id="ocmChgAmt" type="button" style="width:80px;" value="<%=ViewData("olaIncreaseAmt") %>" onclick="return ocmChgAmt_onclick()" />
                    <input id="ocmChgPer" type="button" style="width:80px;" value="<%=ViewData("olaIncreasePercent") %>" onclick="return ocmChgPer_onclick()" />
                </div>
                <div style="width:100%;margin:5px 5px 5px 5px;float:left;">
                    <%=ViewData("olaRemark")%>
                </div>
                <div style="width:100%;margin:5px 5px 5px 5px;float:left;">
                    <input id="otbNewValueCal" type="text" style="width:330px;" onkeydown="return otbNewValueCal_onkeydown(event.keyCode,event.which)" onkeypress="return otbNewValueCal_onkeypress(event.keyCode,event.which)" onblur="return otbNewValueCal_onblur()" />
                </div>
            </div>
            <div class="xCN_AllBackgroundColor" style="float:right;width:100px;height:99%;border:solid 1px green;">
                <div style="width:90px;margin:5px 5px 5px 5px;">
                    <input id="ocmOk" type="button" style="width:100%" value="<%=ViewData("olaOk") %>" onclick="ocmOk_onclick()" />
                </div>
                <div style="width:90px;margin:5px 5px 5px 5px;">
                    <input id="ocmCancel" type="button" style="width:100%" value="<%=ViewData("olaCancel")%>" onclick="ocmCancel_onClick()" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
    <%-- PP 10-03-09 --%>
    <%--<link rel="stylesheet" type="text/css" href="../../Content/csshorizontalmenu.css" /> 
    <script 
        type="text/javascript" src="../../Scripts/csshorizontalmenu.js">
    </script>--%>
    <%--<link rel="stylesheet" type="text/css" href="../../Content/cssverticalmenu.css" />
    <script type="text/javascript" src="../../Scripts/cssverticalmenu.js"></script>--%>
    
    <%-- PP 10-02-24 --%>
    <%--<body style="filter:progid:DXImageTransform.Microsoft.Gradient(endColorstr='#CCFFCC',startColorstr='#99CC00', gradienttype=0);">--%>
    <%--<%=Html.Telerik().StyleSheetRegistrar().DefaultGroup(Group >= Group.Add("telerik.examples.css").Add("telerik.common.css").Add("telerik." + Html.GetCurrentTheme() + ".css").Combined(True).Compress(True))%>  --%>
    
    <%--'*PP 10-07-02--%>
    <!--[if IE]>
    <link rel="stylesheet" type="text/css" href="/style/ie-lte-6.css" />
    <![endif]-->

    <script type="text/javascript" src="<%=Url.Content("~/Scripts/jquery-1.4.2.min.js")%>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/jquery-1.3.2.js")%>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J001_LoadAutoGenCode.js")%>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J002_General.js")%>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J003_SplashDialog.js")%>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J005_KeepOldValue.js")%>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J009_ShowTab.js")%>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J010_ShowTabData.js")%>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Shared/LoadBrowse.js")%>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Shared/LoadMasterLostFocus.js")%>"></script>
    
    <link type="text/css" rel="Stylesheet" href="<%=Url.Content("~/Content/AdaCss/Local/FCS_cvcManagementLocal.css")%>" />
    <link type="text/css" rel="stylesheet" href="<%=Url.Content("~/Content/AdaCss/Global/FCS_CNCenter.css")%>" />
    <link type="text/css" rel="stylesheet" href="<%=Url.Content("~/Content/AdaCss/Local/FCS_cvcCustomer.css") %>" />

    <linktype="text/css" rel="stylesheet"  href="<%=Url.Content("~/Content/2010.3.1110/Global/telerik.forest.min.css")%>" />

        <script type="text/javascript">
        //#### ตัวแปรกลาง ####
        var nW_DecAmtForShw = '<%=Session("nVB_CNDecAmtForShw")%>';
        var tW_Top;
        var tW_Left;
        var oW_xmlHttp;
        var tW_BeforeEditData = "";
        var tW_CstCodeDefalut = "";

            window.onload = function() { window_onload_Page(); }
                     
            function window_onload_Page() {

                tJ003_VirtualDirectory = '<%=Session("VirtualDirectory")%>';
                tJ002_VirtualDirectory = '<%=Session("VirtualDirectory")%>';
                tJ001_VirtualDirectory = '<%=Session("VirtualDirectory")%>';

                W_SHWxShowPic();

                J010_SHWxTabData(0, 'DivxGeneral', 'DivxOtherData', 'DivxContractor', 'DivxShipPlace', 'DivxWholesaleHis', 'DivxRetailHis', 'DivxCNDNOther', 'DivxGrpPrice');
                J009_SHWxTabTop(0, 'Div_General', 'Div_Other', 'Div_Contact', 'Div_BuyHist', 'Div_WholeHis', 'odiRetailHis', 'Div_CNDNOth', 'Div_GrpPrice');

                //แทปใน แทปใบลดหนี้/เพิ่มหนี้/เอกสารอื่นๆ
                J010_SHWxTabData(0, 'DivCreadit', 'DivDebit', 'DivOthDoc');
                J009_SHWxTabTop(0, 'Div_Creadit', 'Div_Debit', 'Div_OthDoc');

                document.getElementById("otbFNCstViaTime").value = document.getElementById("FNCstViaTime").value;
                document.getElementById("tImg_Clear").value = '<%=ViewData("Clear_img")%>';

                J002_SETxReadOnly("FTCstCode", true);
                J002_SETxReadOnly("otbCstDst", true);
                J002_SETxReadOnly("otbCstPvn", true);
                J002_SETxReadOnly("otbCustomerGroup", true);
                J002_SETxReadOnly("otbCustomerType", true);
                J002_SETxReadOnly("otbCstLev", true);
                J002_SETxReadOnly("otbArea", true);
                J002_SETxReadOnly("otbDistrict", true);
                J002_SETxReadOnly("otbProvince", true);
                J002_SETxReadOnly("otbChtAcc", true);
                J002_SETxReadOnly("otbFTOcpCode", true);
                J002_SETxReadOnly("otbUser", true);
                J002_SETxReadOnly("otbSpn", true);
                J002_SETxReadOnly("otbShipVia", true);
                J002_SETxReadOnly("otbBranch", true);
                J002_SETxReadOnly("FCCstCrLimit", true);
                J002_SETxReadOnly("FNCstCrTerm", true);
                J002_SETxReadOnly("FCCstAmtLeft", true);
                J002_SETxReadOnly("FCCstRetAmt", true);
                J002_SETxReadOnly("FCCstRetPoint", true);
                J002_SETxReadOnly("otbCstAge", true);

                if ('<%=Viewdata("ChkSta")%>' == 'C_Edit') {
                    document.getElementById("imgGenCode").setAttribute("style", "display:none;");
                }
                W_CalDateTime();
                
                W_GETxValue("FTCgpCode");
                W_GETxValue("FTCstDstCode");
                W_GETxValue("FTCstPvnCode");
                W_GETxValue("FTCtyCode");
                W_GETxValue("FTClvCode");
                W_GETxValue("FTAreCode");
                W_GETxValue("FTDstCode");
                W_GETxValue("FTPvnCode");
                W_GETxValue("FTAccCode");
                W_GETxValue("FTOcpCode");
                W_GETxValue("FTUsrCode");
                W_GETxValue("FTSpnCode");
                W_GETxValue("FTShpCode");
                W_GETxValue("PvnCode");
                W_GETxValue("DstCode");
                W_GETxValue("Branch");

                document.getElementById("FTCstVATInOrEx").value = "2";
                document.getElementById("FTCstMailTo").value = "1";
                document.getElementById("FTCstBillVat").value = "1";

                W_SETxCssForChorme(); //Set Css for Browser not IE
                tW_BeforeEditData = W_GETtDataString();  //Data from Before Edit
                var tStaGrid = '<%=Session("tC_StaRebindGrid")%>';
                switch (tStaGrid.toUpperCase()) {
                    case 'CTR':
                        W_SETxRebindGrid('Grid');
                        W_GETxTopLeft('Ctr'); //เก็บตำแหน่ง input file Ctr และ กำหนดตำแหน่ง input fake
                        W_SETxValueCtr(); //แสดงข้อมูล
                        break;
                    case 'CSP':
                        W_SETxRebindGrid('GridCsp');
                        W_GETxTopLeft('Csp'); //เก็บตำแหน่ง input file Ctr และ กำหนดตำแหน่ง input fake
                        W_SETxValueCsp(); //แสดงข้อมูล
                        break;
                }
                if ('<%=Session("tC_StaRebindGrid")%>' != "N") {                    
                    W_SETxTabIndex(); //แสดงแทปที่ทำงานค้างไว้
                }
            }

            //เก็บตำแหน่ง input file Ctr
            function W_GETxTopLeft(ptCase) {
                J003_SHWxWaiting();
                var tObjPic;
                var tObjFakePic;
                switch (ptCase.toUpperCase()) {
                    case 'CTR':
                        tObjPic = 'otbCtrPic';
                        tObjFakePic = 'otbPicCtr';
                        break;
                    case 'CSP':
                        tObjPic = 'otbCspPic';
                        tObjFakePic = 'otbCspPicFake';
                        break;
                }
                setTimeout(function () {           
                    var offsets = document.getElementById(tObjPic).getBoundingClientRect();
                    var tTop = offsets.top;
                    var tLeft = offsets.left;
                    tW_Top = tTop;
                    tW_Left = tLeft;
                    //alert(tW_Top + ' : ' + tW_Left);
                    W_SETxStyleInputFak(tObjFakePic);
                    J003_DISxWaiting();
                }, 200); 
            }
            //กำหนดตำแหน่ง input fake
            function W_SETxStyleInputFak(ptObjName) {
                $('#' + ptObjName).css({
                    top: tW_Top,
                    left: tW_Left,
                    position: 'absolute',
                    zIndex: '1'
                })
                $('#' + ptObjName).select();
            }
            //แสดงข้อมูล Ctr
            function W_SETxValueCtr() {
                $('#otbCtrSeq').val('<%=Session("tCtrSeq")%>');
                $('#otbName').val('<%=Session("tCtrName")%>');
                $('#otbTel').val('<%=Session("tCtrTel")%>');
                $('#otbAddr').val('<%=Session("tCtrAddr")%>');
                $('#otbPosition').val('<%=Session("tCtrPosi")%>');
                $('#otbDept').val('<%=Session("tCtrDept")%>');
                $('#otbPicCtr').val('<%=Session("tCtrPic")%>');
                //setTimeout(function () { $('#otbPicCtr').val('<%=Session("tCtrDept")%>'); }, 5000);
                var tImageName = $('#otbPicCtr').val();
                if (tImageName != null && tImageName != "") {
                    document.getElementById('oimCtrPic').src = '<%=Url.Content("~/AdaImage/' + tImageName + '")%>';
                }
            }
            //แสดงแทปที่ทำงานค้างไว้
            function W_SETxTabIndex() {
                J010_SHWxTabData('<%=Session("nTabIndex")%>', 'DivxGeneral', 'DivxOtherData', 'DivxContractor', 'DivxShipPlace', 'DivxWholesaleHis', 'DivxRetailHis', 'DivxCNDNOther', 'Div_GrpPrice');
                J009_SHWxTabTop('<%=Session("nTabIndex")%>', 'Div_General', 'Div_Other', 'Div_Contact', 'Div_BuyHist', 'Div_WholeHis', 'odiRetailHis', 'Div_CNDNOth', 'Div_GrpPrice');
            }
            //Set Css for Browser not IE
            function W_SETxCssForChorme(){
                if (navigator.appName == 'Microsoft Internet Explorer') {}
                else{
                    $('#odiLeftLine1').addClass("xW_LeftMargin");
                    $('#odiLeftLine2').addClass("xW_LeftMargin");
                    $('#odiLeftLine3').addClass("xW_LeftMargin");
                    $('#odiLeftLine4').addClass("xW_LeftMargin");
                    $('#odiLeftLine5').addClass("xW_LeftMargin");
                    $('#odiLeftLine6').addClass("xW_LeftMargin");
                    $('#odiLeftLine7').addClass("xW_LeftMargin");
                    $('#odiLeftLine8').addClass("xW_LeftMargin");

                    $('#odiRightLine1').addClass("xW_LeftMargin");
                    $('#odiRightLine2').addClass("xW_LeftMargin");
                    $('#odiRightLine3').addClass("xW_LeftMargin");
                    $('#odiRightLine4').addClass("xW_LeftMargin");
                    $('#odiRightLine5').addClass("xW_LeftMargin");
                    $('#odiRightLine6').addClass("xW_LeftMargin");
                    $('#odiRightLine7').addClass("xW_LeftMargin");

                    $('#odiBtmLeftLine1').addClass("xW_LeftMargin");
                    $('#odiBtmLeftLine2').addClass("xW_LeftMargin");
                    $('#odiBtmLeftLine3').addClass("xW_LeftMargin");
                    $('#odiBtmLeftLine4').addClass("xW_LeftMargin");
                    $('#odiBtmLeftLine5').addClass("xW_LeftMargin");
                    $('#odiBtmLeftLine6').addClass("xW_LeftMargin");
                    $('#odiBtmLeftLine7').addClass("xW_LeftMargin");
                    $('#odiBtmLeftLine8').addClass("xW_LeftMargin");

                    $('#odiBtmMinLine1').addClass("xW_LeftMargin");
                    $('#odiBtmMinLine2').addClass("xW_LeftMargin");
                    $('#odiBtmMinLine3').addClass("xW_LeftMargin");
                    $('#odiBtmMinLine4').addClass("xW_LeftMargin");
                    $('#odiBtmMinLine5').addClass("xW_LeftMargin");

                    $('#odiBtmRightLine1').addClass("xW_LeftMargin");
                    $('#odiBtmRightLine2').addClass("xW_LeftMargin");
                    $('#odiBtmRightLine3').addClass("xW_LeftMargin");
                    $('#odiBtmRightLine4').addClass("xW_LeftMargin");
                    $('#odiBtmRightLine5').addClass("xW_LeftMargin");
                    $('#odiBtmRightLine6').addClass("xW_LeftMargin");
                    $('#odiBtmRightLine7').addClass("xW_LeftMargin");
                    $('#odiBtmRightLine8').addClass("xW_LeftMargin");
                    
                    $('#odiOthLeftLine1').addClass("xW_LeftMargin");
                    $('#odiOthLeftLine2').addClass("xW_LeftMargin");
                    $('#odiOthLeftLine3').addClass("xW_LeftMargin");
                    $('#odiOthLeftLine4').addClass("xW_LeftMargin");
                    $('#odiOthLeftLine5').addClass("xW_LeftMargin");
                    $('#odiOthLeftLine6').addClass("xW_LeftMargin");
                    $('#odiOthLeftLine7').addClass("xW_LeftMargin");
                    $('#odiOthLeftLine8').addClass("xW_LeftMargin");
                    $('#odiOthLeftLine9').addClass("xW_LeftMargin");

                    $('#odiOthMinLine1').addClass("xW_LeftMargin");
                    $('#odiOthMinLine2').addClass("xW_LeftMargin");
                    $('#odiOthMinLine3').addClass("xW_LeftMargin");
                    $('#odiOthMinLine4').addClass("xW_LeftMargin");
                    $('#odiOthMinLine5').addClass("xW_LeftMargin");
                    $('#odiOthMinLine6').addClass("xW_LeftMargin");                    
                    $('#odiOthEmpLine1').addClass("xW_LeftMargin");
                    $('#odiOthEmpLine2').addClass("xW_LeftMargin");
                    $('#odiOthEmpLine3').addClass("xW_LeftMargin");
                    $('#odiOthEmpLine4').addClass("xW_LeftMargin");

                    $('#odiOthRightLine1').addClass("xW_LeftMargin");
                    $('#odiOthRightLine2').addClass("xW_LeftMargin");
                    $('#odiOthRightLine3').addClass("xW_LeftMargin");
                    $('#odiOthRightLine4').addClass("xW_LeftMargin");
                    $('#odiOthRightLine5').addClass("xW_LeftMargin");
                    $('#odiOthRightLine6').addClass("xW_LeftMargin");

	            }
            }

            //@Funtion: Buttom Back
            //@Edit: Kriengkai (Kik)
            //@Since: 19/4/54 16:38
            function W_FRMxForwClose() {
                J003_SHWxWaiting();
                window.location = '<%=Url.Action("Index","cvcCustomer")%>';
            }

            //@Gobal Variable for function
            var tW_Menu = 'omnApSup';
            var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize")%>';

            //@Funtion: Create
            //@Edit: Kriengkai (Kik)
            //@Since: 19/4/54 14:20
            //@Check Authorize before open C_Create
            function W_FRMxNewDoc() {
                var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Add%>';
                var tPwdAllow = '<%=Session("bVB_CNPwdAllow")%>';
                var bAllow = J002_CHKtCheckAuthorize(tW_Menu, tAuthor, tPwdAllow, tMsgNotAuthorize);
                if (bAllow == false) {
                    return false;
                }
                else {
                    //window.location = '<%=Url.Action("C_GEToDataSplToView","cvcCustomer")%>' + '?ptChkSta=C_Create&ptCode=' + '';
                    var tStaChange = W_CHKbHasChangeData();
                    if (tStaChange == true) {
                        var tDialogResult = J003_SHWxConfirmDialog('<%=ViewData("tMsgSave_Warning") %>', oJ003_DialogType.DialogYesNoCancel);
                        switch (tDialogResult) {
                            case oJ003_DialogResult.Yes:
                                W_SETxStatusForm('1', '');
                                W_FRMxSaveDocument();
                                return false;
                                break;
                            case oJ003_DialogResult.Cancel: return false; break;
                        }
                    }
                    window.location = '<%=Url.Action("C_Create","cvcCustomer")%>' + "?ptChkSta=C_Create" + '&ptValue=' + '';
                }

            }

            function createXMLHttpRequest() {
                if (window.ActiveXObject) {
                    xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
                }
                else if (window.XMLHttpRequest) {
                    xmlHttp = new XMLHttpRequest();
                }
            }


            function W_DATxBrwData(ptCase, pObjID, pObjName) {
                var tDate = J002_GETtTimeStamp();
                var tBchCode = '';
                if (ptCase == 'StkCode') {
                    var tBchCode = document.getElementById('otbFTBchWheStk').value;
                }
                var tReturnedValue = showModalDialog('<%=Url.Action("C_BrowseMaster","cvcSupplier") %>' + '?ptCase=' + ptCase + '&ptBchCode=' + tBchCode + '&ptDate=' + tDate, "Passed String", "dialogWidth:800px; dialogHeight:500px; status:no; center:yes;titlebar =0");
                //var tReturnedValue = showModalDialog('/cvcBranch' + '/C_BRWxMaster?ptCase=' + ptCase  + '&ptBchCode=' + tBchCode + '&ptDate=' + tDate, "Passed String", "dialogWidth:800px; dialogHeight:500px; status:no; center:yes;titlebar =0");
                if (tReturnedValue != undefined) {
                    if (tReturnedValue != '12233344445555566666677777778888888899999999900000000001223334444555556666667777777888888889999999990000000000') {
                        document.getElementById(pObjID).value = tReturnedValue.split(";")[0];
                        document.getElementById(pObjName).value = tReturnedValue.split(";")[1];
                    }
                }

            }

            //*PP 10-08-16 onblur
            function W_GETxSplValue() {
                //Get ค่ามาเก็บไว้
                var tSplCode = document.getElementById("otbFTCstPvnCodeNew").value;   //Get ค่า SplCode
                var tOldSplCode = document.getElementById("otbOldFTCstPvnCode").value;   //Get ค่า SplCode ก่อนแก้ไข
                var tUrl = '<%=Url.Action("C_GEToDataSplToView","cvcCustomer")%>' + '?ptChkSta=Edit&ptCode=' + tSplCode;

                //เช็คว่ามีข้อมูลรหัสผู้จำหน่ายไหมหรือเป็นรหัสผู้จำหน่ายเดิมไหม
                if (tSplCode == null || tSplCode == tOldSplCode) {
                    return false;
                }

                if (W_CHKtSplValue() == 'True') {
                    window.location = tUrl;
                }
            }

            //ตรวจสอบข้อมูลว่ามีข้อมูลในเบสหรือไม่ส่งค่ามาเป็น True False
            function W_CHKtSplValue() {
                var tSplCode = document.getElementById('otbFTCstPvnCodeNew').value;
                var tDateTimeNow = W_GETtDateTimeNow();
                createXMLHttpRequest();
                xmlHttp.open("Get", '<%=Url.Action("C_CHKtSplValue","cvcCustomer")%>' + "?ptCode=" + tSplCode + "&ptDateTimeNow=" + tDateTimeNow, false);
                xmlHttp.onreadystatechange = handleStateChangeUnit;
                xmlHttp.send(null);
                return xmlHttp.responseText;

            }

            function FTCstPvnCode_onkeydown() {
                if (window.event.keyCode == 13) {
                    W_GETxSplValue();
                }
                return !(window.event && window.event.keyCode == 13); //คืนค่า
            }


            function TextAll_onkeypress() //กำหนดไม่ให้คีย์อักขระพิเศษ
            {
                J002_CHKbCheckTxtKey();
            }

            function W_CHKxCheckNumOnly_onkeypress(ptObjName) //กำหนดไม่ให้คีย์ตัวอักษร
            {
                var tObjValue = document.getElementById(ptObjName).value;
                if (tObjValue == "0") {
                    document.getElementById(ptObjName).value = "";
                }

                J002_CHKbCheckNumOnly(document.getElementById(ptObjName).value);
            }

            function W_CHKxCheckNumOnly_onblur(ptObjName) //กำหนดไม่ให้คีย์ตัวอักษร
            {
                var tObjValue = document.getElementById(ptObjName).value;
                if (tObjValue.toString().charAt(0) == "0") {
                    while (tObjValue.toString().charAt(0) == "0") {
                        tObjValue = tObjValue.substr(1, tObjValue.length);
                    }
                    document.getElementById(ptObjName).value = tObjValue;

                }
            }

            //'*PP10-08-24
            function onRowSelected(e) {
                if (e.row != null) {
                    //กำหนดตัวแปร
                    var tRowNo = e.row.cells[0].innerHTML;
                    var tCtrName = e.row.cells[1].innerHTML;
                    var tCtrTel = e.row.cells[2].innerHTML;
                    var tCtrAddr = e.row.cells[3].innerHTML;
                    var tCtrPosition = e.row.cells[4].innerHTML;
                    var tCtrDept = e.row.cells[5].innerHTML;
                    var tCtrPic = e.row.cells[6].innerHTML;
                    var tCtrSeq = e.row.cells[7].innerHTML;
                    var tKeyEdit = e.row.cells[8].innerHTML;
                    //var tDateTimeNow = W_GETtDateTimeNow();

                    document.getElementById('otbRowNo').value = tRowNo;
                    document.getElementById('otbCtrName').value = tCtrName;
                    document.getElementById('otbCtrTel').value = tCtrTel;
                    document.getElementById('otbCtrAddr').value = tCtrAddr;
                    document.getElementById('otbCtrPosition').value = tCtrPosition;
                    document.getElementById('otbCtrDept').value = tCtrDept;
                    document.getElementById('otbCtrPic').value = tCtrPic;
                    document.getElementById('otbCtrSeq').value = tCtrSeq;
                    document.getElementById('otbKeyEdit').value = tKeyEdit;
                }
            }
            

            function handleStateChangeSetTotal() {
                if (xmlHttp.readyState == 4) {
                    if (xmlHttp.status == 200) {
                        if (xmlHttp.responseText != -1) {
                            var oArr = xmlHttp.responseText.split('|');
                            var cTotal = oArr[0];
                            var cNonVat = oArr[1];
                        }
                    }
                }
            }


            function W_OBJxDelDataCTrToGrid() {
                // PP 10-08-25
                // ฟังก์ชันใช้ในการส่งข้อมูลที่จะลบส่งไปที่คอนโทรลเลอร์ แล้วรับค่ากลับมาแสดงที่กริด

                //กำหนดตัวแปร
                var tSplCode = document.getElementById("otbFTCstPvnCode").value;
                var tRowNo = document.getElementById("otbRowNo").value;
                var tCtrName = document.getElementById("otbCtrName").value;
                var tCtrTel = document.getElementById("otbCtrTel").value;
                var tCtrAddr = document.getElementById("otbCtrAddr").value;
                var tCtrPosition = document.getElementById("otbCtrPosition").value;
                var tCtrDept = document.getElementById("otbCtrDept").value;
                var tCtrPic = document.getElementById("otbCtrPic").value;
                var tCtrSeq = document.getElementById("otbCtrSeq").value;
                var tKeyEdit = document.getElementById("otbKeyEdit").value; //1:ค่าเดิมในเบส;2:แก้ไข;3:เพิ่มข้อมูล;4:ลบข้อมูล
                var tDateTimeNow = W_GETtDateTimeNow();
                var tStaValue = '';

                tStaValue = 'Edit';

                if (tKeyEdit == '1') {
                    tKeyEdit = '4';
                }


                tStaValue = 'Delete';
                //กำหนด URL
                var tUrl = '<%=Url.Action("C_GRDxCtrValue","cvcCustomer")%>';
                tUrl += '?ptStaValue=' + tStaValue;
                tUrl += '&ptCode=' + tSplCode;
                tUrl += '&ptRowNo=' + tRowNo;
                tUrl += '&ptCtrName=' + tCtrName;
                tUrl += '&ptCtrTel=' + tCtrTel;
                tUrl += '&ptCtrAddr=' + tCtrAddr;
                tUrl += '&ptCtrPosition=' + tCtrPosition;
                tUrl += '&ptCtrDept=' + tCtrDept;
                tUrl += '&ptCtrPic=' + tCtrPic;
                tUrl += '&ptCtrSeq=' + tCtrSeq;
                tUrl += '&ptKeyEdit=' + tKeyEdit;
                tUrl += '&ptDateTimeNow=' + tDateTimeNow;

                createXMLHttpRequest();
                xmlHttp.open("GET", encodeURI(tUrl), false);
                xmlHttp.onreadystatechange = handleStateChangeSetTotal;
                xmlHttp.send(null);
                W_SETxRebindGrid(); //ส่งค่าไปแสดงในกริด

                W_CLRxCtrValue();   //เคลียร์ค่าที่ Objecrt Textbox
            }

            function W_OBJxAddDataCTrToGrid() {
                // PP 10-08-25
                // ฟังก์ชันใช้ในการส่งข้อมูลที่จะเพิ่มเติมหรือแก้ไขส่งไปที่คอนโทรลเลอร์ แล้วรับค่ากลับมาแสดงที่กริด

                //กำหนดตัวแปร
                var tSplCode = document.getElementById("otbFTCstPvnCode").value;
                var tRowNo = document.getElementById("otbRowNo").value;
                var tCtrName = document.getElementById("otbCtrName").value;
                var tCtrTel = document.getElementById("otbCtrTel").value;
                var tCtrAddr = document.getElementById("otbCtrAddr").value;
                var tCtrPosition = document.getElementById("otbCtrPosition").value;
                var tCtrDept = document.getElementById("otbCtrDept").value;
                var tCtrPic = document.getElementById("otbCtrPic").value;
                var tCtrSeq = document.getElementById("otbCtrSeq").value;
                var tKeyEdit = document.getElementById("otbKeyEdit").value; //1:ค่าเดิมในเบส;2:แก้ไข;3:เพิ่มข้อมูล;4:ลบข้อมูล
                var tDateTimeNow = W_GETtDateTimeNow();
                var tStaValue = '';

                if (tCtrName == '' || tCtrName == null) {
                    alert('<%=ViewData("tMsgNonDataCtrName") %>');
                    return;
                }

                if (tKeyEdit == '' || tKeyEdit == null) {
                    tStaValue = 'Add';
                    tKeyEdit = '3';
                }
                else {
                    tStaValue = 'Edit';
                    //ปรับสถานะการกระทำกับข้อมูลเมือบันทึก
                    if (tKeyEdit == '1') {
                        tKeyEdit = '2';
                    }
                    else {
                        tKeyEdit = '3';
                    }
                }

                //กำหนด URL
                var tUrl = '<%=Url.Action("C_GRDxCtrValue","cvcCustomer")%>';
                tUrl += '?ptStaValue=' + tStaValue;
                tUrl += '&ptCode=' + tSplCode;
                tUrl += '&ptRowNo=' + tRowNo;
                tUrl += '&ptCtrName=' + tCtrName;
                tUrl += '&ptCtrTel=' + tCtrTel;
                tUrl += '&ptCtrAddr=' + tCtrAddr;
                tUrl += '&ptCtrPosition=' + tCtrPosition;
                tUrl += '&ptCtrDept=' + tCtrDept;
                tUrl += '&ptCtrPic=' + tCtrPic;
                tUrl += '&ptCtrSeq=' + tCtrSeq;
                tUrl += '&ptKeyEdit=' + tKeyEdit;
                tUrl += '&ptDateTimeNow=' + tDateTimeNow;

                createXMLHttpRequest();
                xmlHttp.open("GET", encodeURI(tUrl), false);
                xmlHttp.onreadystatechange = handleStateChangeSetTotal;
                xmlHttp.send(null);
                W_SETxRebindGrid(); //ส่งค่าไปแสดงในกริด

                W_CLRxCtrValue();   //เคลียร์ค่าที่ Objecrt Textbox
            }


            function W_CLRxCtrValue() {
                // PP 10-08-25
                // เคลียร์ค่าที่ Object Textbox

                var oElement = document.getElementById("otbRowNo");
                oElement.value = "";
                oElement = document.getElementById("otbCtrName");
                oElement.value = "";
                oElement = document.getElementById("otbCtrTel");
                oElement.value = "";
                oElement = document.getElementById("otbCtrAddr");
                oElement.value = "";
                oElement = document.getElementById("otbCtrPosition");
                oElement.value = "";
                oElement = document.getElementById("otbCtrDept");
                oElement.value = "";
                oElement = document.getElementById("otbCtrPic");
                oElement.value = "";
                oElement = document.getElementById("otbCtrSeq");
                oElement.value = "";
                oElement = document.getElementById("otbKeyEdit");
                oElement.value = "";
            }


            // ตรวจสอบค่าว่าง
            function W_CHKbHasStrValue(ptObjName) {
                var tSplCode = document.getElementById(ptObjName).value;
                if (tSplCode.replace(' ', '') == '') {
                    return false;
                }
                else {
                    return true;
                }
            }

            function W_Focus() {
                document.getElementById("FDCstDob").focus();
            }


            // keydown
            function W_OBJxKeydown(ptObjName) {
                if (window.event.keyCode == 13 || window.event.keyCode == 9) {
                    switch (ptObjName) {
                        case "otbFTCstPvnCode":
                            document.getElementById("FTCstName").focus();
                            break;
                        case "otbFTCstPvnCodeNew":
                            document.getElementById("FTCstName").focus();
                            break;
                        case "FTCstName":
                            document.getElementById("FTCstNameOth").focus();
                            break;
                        case "FTCstNameOth":
                            document.getElementById("FTCstAddr").focus();
                            break;
                        case "FTCstTel":
                            document.getElementById("FTCstFax").focus();
                            break;
                        case "FTCstFax":
                            document.getElementById("FTCstEmail").focus();
                            break;
                        case "FTCstEmail":
                            document.getElementById("FDCstDob").focus();
                            break;
                        case "FDCstDob":
                            document.getElementById("FTCstRmk").focus();
                            break;
                        case "otbSgpCode":
                            document.getElementById("otbStyCode").focus();
                            break;
                        case "otbStyCode":
                            document.getElementById("otbSlvCode").focus();
                            break;
                        case "otbSlvCode":
                            document.getElementById("otbAreCode").focus();
                            break;
                        case "otbAreCode":
                            document.getElementById("otbDstCode").focus();
                            break;
                        case "otbDstCode":
                            document.getElementById("otbPvnCode").focus();
                            break;
                        case "otbPvnCode":
                            document.getElementById("otbAccCode").focus();
                            break;
                        case "otbAccCode":
                            document.getElementById("FDCstLastCta").focus();
                            break;
                        case "FDCstLastCta":
                            document.getElementById("FTCstDayCta").focus();
                            break;
                        case "FTCstDayCta":
                            document.getElementById("FTCstBusiness").focus();
                            break;
                        case "FTCstBusiness":
                            document.getElementById("otbSplTaxNo").focus();
                            break;
                        case "otbSplTaxNo":
                            document.getElementById("FTCstVATInOrEx").focus();
                            break;
                        case "FTCstVATInOrEx":
                            document.getElementById("FTCstStaActive").focus();
                            break;
                        case "FTCstStaActive":
                            document.getElementById("odpAvgDay").focus();
                            break;
                        case "odpAvgDay":
                            document.getElementById("FCCstCrLimit").focus();
                            break;
                        case "FCCstCrLimit":
                            document.getElementById("FNCstCrTerm").focus();
                            break;
                        case "FNCstCrTerm":
                            document.getElementById("FNCstViaTime").focus();
                            break;

                        case "FNCstViaTime":
                            document.getElementById("FTCstDiscWhs").focus();
                            break;
                        case "FTCstDiscWhs":
                            document.getElementById("FDCstLastPay").focus();
                            break;
                        case "FDCstLastPay":
                            document.getElementById("otbUsrCode").focus();
                            break;
                        case "otbUsrCode":
                            document.getElementById("FTCstBillRmk").focus();
                            break;
                        case "FTCstBillRmk":
                            document.getElementById("FTCstPayRmk").focus();
                            break;
                        case "FTCstPayRmk":
                            document.getElementById("FTCstViaRmk").focus();
                            break;
                        case "FTCstViaRmk":
                            document.getElementById("otbShpCode").focus();
                            break;
                        case "otbShpCode":
                            document.getElementById("FTCstTspPaid").focus();
                            break;
                        case "FTCstTspPaid":
                            document.getElementById("FTCstTspPaid").focus();
                            break;
                        case "otbCtrSeq":
                            document.getElementById("otbCtrName").focus();
                            break;
                        case "otbCtrName":
                            document.getElementById("otbCtrTel").focus();
                            break;
                        case "otbCtrTel":
                            document.getElementById("otbCtrAddr").focus();
                            break;
                        case "otbCtrAddr":
                            document.getElementById("otbCtrPosition").focus();
                            break;
                        case "otbCtrPosition":
                            document.getElementById("otbCtrDept").focus();
                            break;
                        case "otbCtrDept":
                            document.getElementById("otbCtrPic").focus();
                            break;
                        case "otbCtrPic":
                            document.getElementById("omgInsDatatoGrid").focus();
                            break;
                    }
                }
            }

            function W_CalDateTime() {
                var dNow = new Date;
                var nThisYear = Number(dNow.getFullYear());
                var nThisMonth = Number(dNow.getMonth());
                var nThisDay = Number(dNow.getDay());

                var selectDate = document.getElementById("FDCstDob").value;
                var tBDate = selectDate.split("/");

                var nBYear = tBDate[2];
                var nBMonth = tBDate[1];
                var nBDay = tBDate[0];

                var Age = 0;
                Age = nThisYear - nBYear;
                if (nThisMonth > nBMonth) {
                    if (nThisDay > nBDay) {
                        Age = Age + 1;
                    }
                }

                document.getElementById("otbCstAge").value = Age;
            }

            //--------------------------------------------------

            //ning 14/07/2010
            function W_SETtGetValueName() {
                W_FRMGetFieldName('cvcCustomer', 'C_GETtFeildName', 'otbSgpCode', 'otbSgpName', 'otbOldFTCgpCode', 'TCNMSplGrp', 'FTCgpCode', 'FTCgpName', '<%=ViewData("olaFTCgpCode")%>');
                W_FRMGetFieldName('cvcCustomer', 'C_GETtFeildName', 'otbStyCode', 'otbStyName', 'otbOldFTCtyCode', 'TCNMSplType', 'FTCtyCode', 'FTCtyName', '<%=ViewData("olaFTCtyCode")%>');
                W_FRMGetFieldName('cvcCustomer', 'C_GETtFeildName', 'otbSlvCode', 'otbSlvName', 'otbOldFTClvCode', 'TCNMSplLev', 'FTClvCode', 'FTClvName', '<%=ViewData("olaFTClvCode")%>');
                W_FRMGetFieldName('cvcCustomer', 'C_GETtFeildName', 'otbAreCode', 'otbAreName', 'otbOldFTAreCode', 'TCNMArea', 'FTAreCode', 'FTAreName', '<%=ViewData("olaFTAreCode")%>');
                W_FRMGetFieldName('cvcCustomer', 'C_GETtFeildName', 'otbDstCode', 'otbDstName', 'otbOldFTDstCode', 'TCNMDistrict', 'FTDstCode', 'FTDstName', '<%=ViewData("olaFTDstCode")%>');
                W_FRMGetFieldName('cvcCustomer', 'C_GETtFeildName', 'otbPvnCode', 'otbPvnName', 'otbOldFTPvnCode', 'TCNMProvince', 'FTPvnCode', 'FTPvnName', '<%=ViewData("olaFTPvnCode")%>')
                W_FRMGetFieldName('cvcCustomer', 'C_GETtFeildName', 'otbAccCode', 'otbAccName', 'otbOldFTAccCode', 'TGLMChtAcc', 'FTAccCode', '<%=ViewData("FTAccName")%>', '<%=ViewData("olaFTPvnCode")%>');
                W_FRMGetFieldName('cvcCustomer', 'C_GETtFeildName', 'otbShpCode', 'otbShpName', 'otbOldFTShpCode', 'TCNMShipVia', 'FTShpCode', 'FTShpName', '<%=ViewData("olaFTShpCode")%>');
                W_FRMGetFieldName('cvcCustomer', 'C_GETtFeildName', 'otbUsrCode', 'otbUsrName', 'otbOldFTUsrCode', 'TSysUser', 'FTUsrCode', 'FTUsrName', '<%=ViewData("olaFTClvCode")%>');
            }

            function W_GETxValue(ptCase) {
                switch (ptCase) {
                    case "FTCgpCode":
                        W_FRMGetFieldName('cvcSupplier', 'C_GETtFeildName', 'FTCgpCode', 'otbCustomerGroup', 'otbOldFTCgpCode', 'TCNMCstGrp', 'FTCgpCode', 'FTCgpName', '<%=ViewData("olaFTCstGrp")%>');
                        break;
                    case "FTCstDstCode":
                        W_FRMGetFieldName('cvcSupplier', 'C_GETtFeildName', 'otbCstDstCode', 'otbCstDst', 'otbCstDstCode', 'TCNMDistrict', 'FTDstCode', 'FTDstName', '<%=ViewData("olaFTDstCode")%>');
                        break;
                    case "FTCstPvnCode":
                        W_FRMGetFieldName('cvcSupplier', 'C_GETtFeildName', 'otbCstPvnCode', 'otbCstPvn', 'otbCstPvnCode', 'TCNMProvince', 'FTPvnCode', 'FTPvnName', '<%=ViewData("olaFTPvnCode")%>');
                        break;
                    case "FTCtyCode":
                        W_FRMGetFieldName('cvcSupplier', 'C_GETtFeildName', 'FTCtyCode', 'otbCustomerType', 'olbFTCtyCode', 'TCNMCstType', 'FTCtyCode', 'FTCtyName', '<%=ViewData("olaFTCstGrp")%>');
                        break;
                    case "FTClvCode":
                        W_FRMGetFieldName('cvcSupplier', 'C_GETtFeildName', 'FTClvCode', 'otbCstLev', 'otbFTClvCode', 'TCNMCstLev', 'FTClvCode', 'FTClvName', '<%=ViewData("olaFTCstGrp")%>');
                        break;
                    case "FTAreCode":
                        W_FRMGetFieldName('cvcSupplier', 'C_GETtFeildName', 'FTAreCode', 'otbArea', 'otbFTAreCode', 'TCNMArea', 'FTAreCode', 'FTAreName', '<%=ViewData("olaFTCstGrp")%>');
                        break;
                    case "FTDstCode":
                        W_FRMGetFieldName('cvcSupplier', 'C_GETtFeildName', 'FTDstCode', 'otbDistrict', 'otbFTDstCode', 'TCNMDistrict', 'FTDstCode', 'FTDstName', '<%=ViewData("olaFTCstGrp")%>');
                        break;
                    case "FTPvnCode":
                        W_FRMGetFieldName('cvcSupplier', 'C_GETtFeildName', 'FTPvnCode', 'otbProvince', 'olaFTPvnCode', 'TCNMProvince', 'FTPvnCode', 'FTPvnName', '<%=ViewData("olaFTCstGrp")%>');
                        break;
                    case "FTAccCode":
                        if ('<%=ViewData("tVB_LastLang")%>' == 'TH') {
                            W_FRMGetFieldName('cvcSupplier', 'C_GETtFeildName', 'FTAccCode', 'otbChtAcc', 'olaFTAccCode', 'TGLMChtAcc', 'FTAccCode', 'FTAccName01', '<%=ViewData("olaFTCstGrp")%>');
                        } else {
                            W_FRMGetFieldName('cvcSupplier', 'C_GETtFeildName', 'FTAccCode', 'otbChtAcc', 'olaFTAccCode', 'TGLMChtAcc', 'FTAccCode', 'FTAccName02', '<%=ViewData("olaFTCstGrp")%>');
                        }
                        break;
                    case "FTBchName":
                        W_FRMGetFieldName('cvcSupplier', 'C_GETtFeildName', 'FTBchName', 'otbBranch', 'FTBchCode', 'TCNMBranch', 'FTBchCode', 'FTBchName', '<%=ViewData("olaFTCstGrp")%>');
                        break;
                    case "FTOcpCode":
                        W_FRMGetFieldName('cvcSupplier', 'C_GETtFeildName', 'FTOcpCode', 'otbFTOcpCode', 'oldotbFTOcpCode', 'TCNMOcp', 'FTOcpCode', 'FTOcpName', '<%=ViewData("olaFTCstGrp")%>');
                        break;
                    case "FTUsrCode":
                        W_FRMGetFieldName('cvcSupplier', 'C_GETtFeildName', 'FTUsrCode', 'otbUser', 'hiddenFTUsrCode', 'TSysUser', 'FTUsrCode', 'FTUsrName', '<%=ViewData("olaFTCstGrp")%>');
                        break;
                    case "FTSpnCode":
                        W_FRMGetFieldName('cvcSupplier', 'C_GETtFeildName', 'FTSpnCode', 'otbSpn', 'hiddenFTSpnCode', 'TCNMSpn', 'FTSpnCode', 'FTSpnName', '<%=ViewData("olaFTCstGrp")%>');
                        break;
                    case "FTShpCode":
                        W_FRMGetFieldName('cvcSupplier', 'C_GETtFeildName', 'FTShpCode', 'otbShipVia', 'hiddenFTShpCode', 'TCNMShipVia', 'FTShpCode', 'FTShpName', '<%=ViewData("olaFTShpCode")%>');
                        break;
                    case "PvnCode":
                        W_FRMGetFieldName('cvcSupplier', 'C_GETtFeildName', 'FTCstPvnCode', 'otbCstPvn', 'hiddenText', 'TCNMProvince', 'FTPvnCode', 'FTPvnName', '<%=ViewData("olaFTPvnCode")%>');
                        break;
                    case "DstCode":
                        W_FRMGetFieldName('cvcSupplier', 'C_GETtFeildName', 'FTCstDstCode', 'otbCstDst', 'hiddenText', 'TCNMDistrict', 'FTDstCode', 'FTDstName', '<%=ViewData("olaFTDstCode")%>');
                        break;
                    case "Branch":
                        W_FRMGetFieldName('cvcSupplier', 'C_GETtFeildName', 'FTBchCode', 'otbBranch', 'hiddenText', 'TCNMBranch', 'FTBchCode', 'FTBchName', '<%=ViewData("olaFTBchCode")%>');
                        break;
                }
            }


            function W_FRMGetFieldName(ptController, ptAction, ptObjCodeId, ptObjNameId, ptObjCodeOldId, ptTblName, ptFieldCode, ptFieldName, ptMsgErr) {
                try {
                    //            J003_SHWxWaiting();
                    var tMsgNoData = '<%=ViewData("tMsgDAT_Notfound001")%>' + ptMsgErr;
                    J002_GETxFieldName(ptController, ptAction, ptObjCodeId, ptObjNameId, ptObjCodeOldId, ptTblName, ptFieldCode, ptFieldName, tMsgNoData)


                }
                catch (ex) {
                    J002_SHWxMsgError("W_FRMGetFieldName", ex);
                }
                //        finally {
                //            J003_DISxWaiting();
                //        }
            }

            //*PP 10-07-29
            function W_GetDataBuyHistory(ptSplCode, ptDateTime) {
                var tString = '';
                tString = '<%=Url.Action("C_SHWxHistory","cvcCustomer") %>' + "?ptSplCode=" + ptSplCode + "&ptDocType=BuyHistory&ptDateTime=" + ptDateTime;
                $('#Div_SHWxBuyHistory').load(tString);
            }
            //*PP 10-07-29
            function W_GetDataCreditNote(ptSplCode, ptDateTime) {
                var tString = '';
                tString = '<%=Url.Action("C_SHWxHistory","cvcCustomer") %>' + "?ptSplCode=" + ptSplCode + "&ptDocType=CreditNote&ptDateTime=" + ptDateTime;
                $('#Div_SHWxCreditNote').load(tString);
            }
            //*PP 10-07-29
            function W_GetDataDebitNote(ptSplCode, ptDateTime) {
                var tString = '';
                tString = '<%=Url.Action("C_SHWxHistory","cvcCustomer") %>' + "?ptSplCode=" + ptSplCode + "&ptDocType=DebitNote&ptDateTime=" + ptDateTime;
                $('#Div_SHWxDebitNote').load(tString);
            }
            //*PP 10-07-29
            function W_GetDataOtherDoc(ptSplCode, ptDateTime) {
                var tString = '';
                tString = '<%=Url.Action("C_SHWxHistory","cvcCustomer") %>' + "?ptSplCode=" + ptSplCode + "&ptDocType=OtherDoc&ptDateTime=" + ptDateTime;
                $('#Div_SHWxOtherDoc').load(tString);
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


            //@Funtion: Generate Code
            //@Edit: Kriengkai (Kik)
            //@Since: 19/4/54 16:38
            function W_FRMxGenCode() {
                J001_GETtAutoGenCode('cvcCustomer', 'C_Create_GetAutoCode', document.getElementById('FTCstCode'));
                J002_SETxReadOnly("FTCstCode", false);
                document.getElementById("FTCstCode").onkeydown = function() { return true; };

                var tCode = document.getElementById('FTCstCode').value;
                if (tCode == "Adasoft.Abreast.MaxValue") {
                    document.getElementById('FTCstCode').value = "";
                    document.getElementById('FTCstCode').focus();
                    alert('<%=ViewData("tMsgErroMaxGenCode")%>');
                    return false;
                }

                return true;
            }

            function W_FRMtGenCode() {
                JS001_GETtAutoGenCode('cvcCustomer', 'C_Create_GetAutoCode', document.getElementById('FTCstPvnCode'));
            }

            function CaseUporIn(Case) {
                document.getElementById('ohdChkSta').value = Case;
            }

            //@Function: Save
            function W_FRMxSaveDocument() {
                J003_SHWxWaiting();
                var tCode = document.getElementById("FTCstCode").value;
                var tName = J002_STRttrim(document.getElementById("FTCstName").value);

                if (tCode == "" || tCode == null || tCode == "ARBCH-######") {
                    if (!W_FRMxGenCode()) {
                        J003_DISxWaiting();
                        return false;
                    }
                }
                if (tName == "" || tName == null) {
                    alert('<%=ViewData("tMsgErrorData")%>');
                    document.getElementById("FTCstName").focus();
                    J003_DISxWaiting();
                    return false;
                }

                var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Add%>';
                var tPwdAllow = '<%=AdaWebPos.cCNVB.bVB_CNPwdAllow %>';
                var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
                var bAllow = J002_CHKtCheckAuthorize(tW_Menu, tAuthor, tPwdAllow, tMsgNotAuthorize);
                if (bAllow == false) {
                    J003_DISxWaiting();
                    return false;
                }
                else {
                    document.Cst_Create.submit();
                }
            }


            function handleStateChangeUnit() {
                if (xmlHttp.readyState == 4) {
                    if (xmlHttp.status == 200) {
                        if (xmlHttp.responseText == 'True') {
                            var tDocNo = document.getElementById('FTCstPvnCode').value;
                            window.location = '<%=Url.Action("C_Create","cvcCustomer")%>' + '?ptChkSta=C_Edit&ptValue=' + tDocNo;
                        } else {

                        }
                    }
                }
            }

            function W_GETtDateTimeNow() {
                var dNow = new Date;
                var tDateTimeNow = dNow.getFullYear().toString() + dNow.getMonth().toString() + dNow.getDay().toString() + dNow.getHours().toString() + dNow.getMinutes().toString() + dNow.getSeconds().toString() + dNow.getMilliseconds().toString();
                return tDateTimeNow;
            }

            function FTCstPvnCode() {
                createXMLHttpRequest();
                var code = document.getElementById('FTCstPvnCode').value;
                var tUrl = '<%=Url.Action("C_GetDataBrowse","cvcCustomer")%>'+"?ptCode=" + code + "&ptDateTimeNow=" + '<%=AdaWebPos.cCNSP.SP_GETdDateTimeNow%>' + "&ptCase=Province";
                xmlHttp.open("GET", encodeURI(tUrl), false);
                xmlHttp.send(null);
                var valueFis = xmlHttp.responseText;
                if (valueFis == "nothing") {
                    return false;
                }
                if (valueFis == "|") {
                    alert('<%=ViewData("olaNotfound") %>' + '<%=ViewData("olaFTCstPvnCode") %>');
                    return false;
                } else {
                    var mytool_array = valueFis.split("|");
                    document.getElementById("otbCstPvn").value = mytool_array[0];
                }
            }

            function FTCstDstCode() {
                createXMLHttpRequest();
                var code = document.getElementById('FTCstDstCode').value;
                var tUrl = '<%=Url.Action("C_GetDataBrowse","cvcCustomer")%>'+"?ptCode=" + code + "&ptDateTimeNow=" + '<%=AdaWebPos.cCNSP.SP_GETdDateTimeNow%>' + "&ptCase=District";
                xmlHttp.open("GET", encodeURI(tUrl), false);
                xmlHttp.send(null);
                var valueFis = xmlHttp.responseText;
                if (valueFis == "nothing") {
                    return false;
                }
                if (valueFis == "|") {
                    alert('<%=ViewData("olaNotfound") %>' + '<%=ViewData("olaFTCstDstCode") %>');
                    return false;
                } else {
                    var mytool_array = valueFis.split("|");
                    document.getElementById("otbCstDst").value = mytool_array[0];
                }
            }

            function FTCgpCode() {
                createXMLHttpRequest();
                var code = document.getElementById('FTCgpCode').value;
                var tUrl = '<%=Url.Action("C_GetDataBrowse","cvcCustomer")%>'+"?ptCode=" + code + "&ptDateTimeNow=" + '<%=AdaWebPos.cCNSP.SP_GETdDateTimeNow%>' + "&ptCase=CstGrp";
                xmlHttp.open("GET", encodeURI(tUrl), false);
                xmlHttp.send(null);
                var valueFis = xmlHttp.responseText;
                if (valueFis == "nothing") {
                    return false;
                }
                if (valueFis == "|") {
                    alert('<%=ViewData("olaNotfound") %>' + '<%=ViewData("olaFTCgpCode") %>');
                    return false;
                } else {
                    var mytool_array = valueFis.split("|");
                    document.getElementById("otbCustomerGroup").value = mytool_array[0];
                }
            }

            function FTCtyCode() {
                createXMLHttpRequest();
                var code = document.getElementById('FTCtyCode').value;
                var tUrl = '<%=Url.Action("C_GetDataBrowse","cvcCustomer")%>'+"?ptCode=" + code + "&ptDateTimeNow=" + '<%=AdaWebPos.cCNSP.SP_GETdDateTimeNow%>' + "&ptCase=CstType";
                xmlHttp.open("GET", encodeURI(tUrl), false);
                xmlHttp.send(null);
                var valueFis = xmlHttp.responseText;
                if (valueFis == "nothing") {
                    return false;
                }
                if (valueFis == "|") {
                    alert('<%=ViewData("olaNotfound") %>' + '<%=ViewData("olaFTCtyCode") %>');
                    return false;
                } else {
                    var mytool_array = valueFis.split("|");
                    document.getElementById("otbCustomerType").value = mytool_array[0];
                }
            }

            function FTClvCode() {
                createXMLHttpRequest();
                var code = document.getElementById('FTClvCode').value;
                var tUrl = '<%=Url.Action("C_GetDataBrowse","cvcCustomer")%>'+"?ptCode=" + code + "&ptDateTimeNow=" + '<%=AdaWebPos.cCNSP.SP_GETdDateTimeNow%>' + "&ptCase=CstLev";
                xmlHttp.open("GET", encodeURI(tUrl), false);
                xmlHttp.send(null);
                var valueFis = xmlHttp.responseText;
                if (valueFis == "nothing") {
                    return false;
                }
                if (valueFis == "|") {
                    alert('<%=ViewData("olaNotfound") %>' + '<%=ViewData("olaFTClvCode") %>');
                    return false;
                } else {
                    var mytool_array = valueFis.split("|");
                    document.getElementById("otbCstLev").value = mytool_array[0];
                }
            }

            function FTAreCode() {
                createXMLHttpRequest();
                var code = document.getElementById('FTAreCode').value;
                var tUrl = '<%=Url.Action("C_GetDataBrowse","cvcCustomer")%>'+"?ptCode=" + code + "&ptDateTimeNow=" + '<%=AdaWebPos.cCNSP.SP_GETdDateTimeNow%>' + "&ptCase=Area";
                xmlHttp.open("GET", encodeURI(tUrl), false);
                xmlHttp.send(null);
                var valueFis = xmlHttp.responseText;
                if (valueFis == "nothing") {
                    return false;
                }
                if (valueFis == "|") {
                    alert('<%=ViewData("olaNotfound") %>' + '<%=ViewData("olaFTAreCode") %>');
                    return false;
                } else {
                    var mytool_array = valueFis.split("|");
                    document.getElementById("otbArea").value = mytool_array[0];
                }
            }


            function FTDstCode() {
                createXMLHttpRequest();
                var code = document.getElementById('FTDstCode').value;
                var tUrl = '<%=Url.Action("C_GetDataBrowse","cvcCustomer")%>'+"?ptCode=" + code + "&ptDateTimeNow=" + '<%=AdaWebPos.cCNSP.SP_GETdDateTimeNow%>' + "&ptCase=District";
                xmlHttp.open("GET", encodeURI(tUrl), false);
                xmlHttp.send(null);
                var valueFis = xmlHttp.responseText;
                if (valueFis == "nothing") {
                    return false;
                }
                if (valueFis == "|") {
                    alert('<%=ViewData("olaNotfound") %>' + '<%=ViewData("olaFTDstCode") %>');
                    return false;
                } else {
                    var mytool_array = valueFis.split("|");
                    document.getElementById("otbDistrict").value = mytool_array[0];
                }
            }

            function FTPvnCode() {
                createXMLHttpRequest();
                var code = document.getElementById('FTPvnCode').value;
                var tUrl = '<%=Url.Action("C_GetDataBrowse","cvcCustomer")%>'+"?ptCode=" + code + "&ptDateTimeNow=" + '<%=AdaWebPos.cCNSP.SP_GETdDateTimeNow%>' + "&ptCase=Province";
                xmlHttp.open("GET", encodeURI(tUrl), false);
                xmlHttp.send(null);
                var valueFis = xmlHttp.responseText;
                if (valueFis == "nothing") {
                    return false;
                }
                if (valueFis == "|") {
                    alert('<%=ViewData("olaNotfound") %>' + '<%=ViewData("olaFTPvnCode") %>');
                    return false;
                } else {
                    var mytool_array = valueFis.split("|");
                    document.getElementById("otbProvince").value = mytool_array[0];
                }
            }



            function FTBchCode() {
                createXMLHttpRequest();
                var code = document.getElementById('FTBchCode').value;
                var tUrl = '<%=Url.Action("C_GetDataBrowse","cvcCustomer")%>'+"?ptCode=" + code + "&ptDateTimeNow=" + '<%=AdaWebPos.cCNSP.SP_GETdDateTimeNow%>' + "&ptCase=Branch";
                xmlHttp.open("GET", encodeURI(tUrl), false);
                xmlHttp.send(null);
                var valueFis = xmlHttp.responseText;
                if (valueFis == "nothing") {
                    return false;
                }
                if (valueFis == "|") {
                    alert('<%=ViewData("olaNotfound") %>' + '<%=ViewData("olaFTBchCode") %>');
                    return false;
                } else {
                    var mytool_array = valueFis.split("|");
                    document.getElementById("otbBranch").value = mytool_array[0];
                }
            }


            function FTOcpCode() {
                createXMLHttpRequest();
                var code = document.getElementById('FTOcpCode').value;
                var tUrl = '<%=Url.Action("C_GetDataBrowse","cvcCustomer")%>'+"?ptCode=" + code + "&ptDateTimeNow=" + '<%=AdaWebPos.cCNSP.SP_GETdDateTimeNow%>' + "&ptCase=Ocp";
                xmlHttp.open("GET", encodeURI(tUrl), false);
                xmlHttp.send(null);
                var valueFis = xmlHttp.responseText;
                if (valueFis == "nothing") {
                    return false;
                }
                if (valueFis == "|") {
                    alert('<%=ViewData("olaNotfound") %>' + '<%=ViewData("olaFTOcpCode") %>');
                    return false;
                } else {
                    var mytool_array = valueFis.split("|");
                    document.getElementById("otbFTOcpCode").value = mytool_array[0];
                }
            }


            function FTAccCode() {
                createXMLHttpRequest();
                var code = document.getElementById('FTAccCode').value;
                var tUrl = '<%=Url.Action("C_GetDataBrowse","cvcCustomer")%>'+"?ptCode=" + code + "&ptDateTimeNow=" + '<%=AdaWebPos.cCNSP.SP_GETdDateTimeNow%>' + "&ptCase=ChtAcc";
                xmlHttp.open("GET", encodeURI(tUrl), false);
                xmlHttp.send(null);
                var valueFis = xmlHttp.responseText;
                if (valueFis == "nothing") {
                    return false;
                }
                if (valueFis == "|") {
                    alert('<%=ViewData("olaNotfound") %>' + '<%=ViewData("olaFTAccCode") %>');
                    return false;
                } else {
                    var mytool_array = valueFis.split("|");
                    document.getElementById("otbChtAcc").value = mytool_array[0];
                }
            }


            function FTUsrCode() {
                createXMLHttpRequest();
                var code = document.getElementById('FTUsrCode').value;
                var tUrl = '<%=Url.Action("C_GetDataBrowse","cvcCustomer")%>'+"?ptCode=" + code + "&ptDateTimeNow=" + '<%=AdaWebPos.cCNSP.SP_GETdDateTimeNow%>' + "&ptCase=User";
                xmlHttp.open("GET", encodeURI(tUrl), false);
                xmlHttp.send(null);
                var valueFis = xmlHttp.responseText;
                if (valueFis == "nothing") {
                    return false;
                }
                if (valueFis == "|") {
                    alert('<%=ViewData("olaNotfound") %>' + '<%=ViewData("olaFTUsrCode") %>');
                    return false;
                } else {
                    var mytool_array = valueFis.split("|");
                    document.getElementById("otbUser").value = mytool_array[0];
                }
            }

            function FTShpCode() {
                createXMLHttpRequest();
                var code = document.getElementById('FTShpCode').value;
                var tUrl = '<%=Url.Action("C_GetDataBrowse","cvcCustomer")%>'+"?ptCode=" + code + "&ptDateTimeNow=" + '<%=AdaWebPos.cCNSP.SP_GETdDateTimeNow%>' + "&ptCase=ShipVia";
                xmlHttp.open("GET", encodeURI(tUrl), false);
                xmlHttp.send(null);
                var valueFis = xmlHttp.responseText;
                if (valueFis == "nothing") {
                    return false;
                }
                if (valueFis == "|") {
                    alert('<%=ViewData("olaNotfound") %>' + '<%=ViewData("olaFTShpCode") %>');
                    return false;
                } else {
                    var mytool_array = valueFis.split("|");
                    document.getElementById("otbShipVia").value = mytool_array[0];
                }
            }


            function FTSpnCode() {
                createXMLHttpRequest();
                var code = document.getElementById('FTSpnCode').value;
                var tUrl = '<%=Url.Action("C_GetDataBrowse","cvcCustomer")%>'+"?ptCode=" + code + "&ptDateTimeNow=" + '<%=AdaWebPos.cCNSP.SP_GETdDateTimeNow%>' + "&ptCase=Spn";
                xmlHttp.open("GET", encodeURI(tUrl), false);
                xmlHttp.send(null);
                var valueFis = xmlHttp.responseText;
                if (valueFis == "nothing") {
                    return false;
                }
                if (valueFis == "|") {
                    alert('<%=ViewData("olaNotfound") %>' + '<%=ViewData("olaFTSpnCode") %>');
                    return false;
                } else {
                    var mytool_array = valueFis.split("|");
                    document.getElementById("otbSpn").value = mytool_array[0];
                }
            }

            function W_BRWxChangeValue(ptObjValueId) {
                var tReturn = J003_BRWxChangeValue(document.getElementById(ptObjValueId).value);
                if (tReturn != null) {
                    document.getElementById(ptObjValueId).value = tReturn;
                }
            }

            // ning 24/11/2010
            function W_SHWxShowPic() {

                var tImageName = '<%=model.FTCstPic%>';
                //var oElement = document.getElementById('odiCompLogo');
                if (tImageName != null && tImageName != "") {
                    //oElement.innerHTML = '<img id ="oimLogo" alt="" src="<%=Url.Content("~/AdaImage/' + tImageName + '") %>"  style="width:90%;height:90%;margin:5px 10px 10px 10px;overflow:hidden;"/>';
                    document.getElementById('odiCompLogo').src = '<%=Url.Content("~/AdaImage/' + tImageName + '")%>';
                }
                else {
                    //oElement.innerHTML = '<img id ="oimLogo" alt="" src="<%=Url.Content("~/AdaImage/imgNoImages.png") %>" style="width:90%;height:90%;margin:5px 10px 10px 10px;overflow:hidden;"/>';
                    document.getElementById('odiCompLogo').src = '<%=Url.Content("~/Content/img/ComingSoon.png")%>';
                }

                var tImageSourc = document.getElementById('odiCompLogo').getAttribute("src");
                //document.getElementById('FTCmpLogo').value = tImageSourc;

            }

    </script>
    
    <script language="javascript" type="text/javascript" >

        $(document).ready(function(e) {
            $("#otcUploadPic").click(function() {
                J003_SHWxWaiting();
                if (document.getElementById("tImg_Clear").value == 1) {
                    document.getElementById('odiCompLogo').src = '<%=Url.Content("~/Content/img/AdaBrwPdtGrp/NoImage.png")%>';
                    document.getElementById('otcUploadPic').value = '<%=ViewData("tMsgUpload")%>';
                    document.getElementById('FTCstPic').value = "";
                    document.getElementById("tImg_Clear").value = 0;
                    J003_DISxWaiting();
                } else {
                    $file = $("#otbFilePath");
                    //$file = $("#otbCtrPic"); 
                    //document.getElementById("otbFileImagePath").value = document.getElementById("otbFilePath").value;

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

                    $("#Cst_Create").attr("action", '<%=Url.Action("C_DATxSaveImage","cvcCustomer")%>');
                    //alert(565);
                    try {
                        $("#Cst_Create").submit();
                        //alert('<%=Url.Action("C_DATxSaveImage","cvcCompany") %>');
                    } catch (err) {
                        alert('<%=ViewData("tMsgBrwFileError")%>');
                        J003_DISxWaiting();
                    }
                    //document.getElementById('FTCmpLogo').value = $filePath;
                }
            });
        });

        function W_FRMxCloseDoc(ptFlag) {
            //var tUrl = '<%=Url.Action("wApvTACTPo","cvcCNPanal", New With {.ptMenuGrpName = "Purchase"}) %>';
            //window.location = tUrl;
            var tDataTimeNow = J002_GETtTimeStamp();
            var tStaChange = W_CHKbHasChangeData();
            if (tStaChange == true) {
                var tDialogResult = J003_SHWxConfirmDialog('<%=ViewData("tMsgSave_Warning") %>', oJ003_DialogType.DialogYesNoCancel);
                switch (tDialogResult) {
                    case oJ003_DialogResult.Yes:
                        W_SETxStatusForm('2', ptFlag);
                        W_FRMxSaveDocument();
                        return false;
                        break;
                    case oJ003_DialogResult.Cancel: return false; break;
                }
            }
            //*CH 1 ไปรายการโปรด ; Not1 ไปหน้าการจัดการ
            var tUrl;
            if (ptFlag == '1') {
                tUrl = '<%=Url.Action("Index","Home") %>' + '?ptDate=' + tDataTimeNow;
            } else {
                tUrl = '<%=Url.Action("Index","cvcCNPanal") %>?ptMenuGrpName=Manage';
            }
            window.location = encodeURI(tUrl);
        }

        //@Funtion: Delete
        //@Edit: Kriengkai (Kik)
        //@Since: 19/4/54 14:20
        //@Check Authorize before open function W_DATxDelete
        function W_FRMxDeleteDoc() {
            J003_SHWxWaiting();
            var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Delete%>';
            var tPwdAllow = '<%=Session("bVB_CNPwdAllow")%>';
            var bAllow = J002_CHKtCheckAuthorize(tW_Menu, tAuthor, tPwdAllow, tMsgNotAuthorize);
            if (bAllow == false) {
                return false;
            }
            else {
                W_DATxDelete('ofm', 'ocmMark');
            }
            J003_DISxWaiting();
        }

        $ui(function () {
            //### Change Value Create UI
            $ui("#odiChangeValue").dialog({
                autoOpen: false,
                modal: true,
                resizable: false,
                height: "auto",
                width: 'auto',
                open: function () { $('#otbNewValue').focus(); }
            });
        });
        $ui("#ocmCancel").click(function () {
            $ui("#odiChangeValue").dialog("close");
        });

        //## Change value
        function W_SHWxShowDialogChangeVal(ptObjValueId) {
            tW_ObjOldValue = ptObjValueId;
            $('#otbOldValue').val(J002_DECcRound($('#' + ptObjValueId).val(), nW_DecAmtForShw, true));
            $('#otbNewValue').val('');
            $('#otbNewValueCal').val('');
            $ui('#odiChangeValue').dialog("open");
        }
        function ocmOk_onclick() {
            var tNewValue = $('#otbNewValue').val();
            tNewValue = J002_STRttrim(tNewValue);
            if (tNewValue == '') {
                tNewValue = null;
            }
            $('#' + tW_ObjOldValue).val(tNewValue);
            tW_ObjOldValue = '';
            $ui("#odiChangeValue").dialog("close");
        }
        function ocmCancel_onClick() { $ui("#odiChangeValue").dialog("close"); }
        function otbNewValue_onkeydown(ptKeyCode, ptWhich) {
            var tKey = ptKeyCode;
            if (ptWhich != null && ptWhich != '') {
                tKey = ptWhich;
            }
            if (tKey == 13) {
                $('#ocmOk').focus();
            }
            return !(tKey == 13);
        }
        function otbNewValue_onkeypress(ptKeyCode, ptWhich) {
            var tValue = $('#otbNewValue').val();
            return J002_CHKbCheckNumOnly(tValue, ptKeyCode, ptWhich);
        }
        function otbNewValue_onblur() {
            var tDecShow = '<%=Session("nVB_CNDecAmtForShw") %>';
            tDecShow = J002_GETcNumber(tDecShow);
            var tNewValue = $('#otbNewValue').val();
            tNewValue = J002_GETcNumber(tNewValue);
            $('#otbNewValue').val(J002_DECcRound(tNewValue, tDecShow, true));
        }
        function otbNewValueCal_onkeydown(ptKeyCode, ptWhich) {
            var tKey = ptKeyCode;
            if (ptWhich != null && ptWhich != '') {
                tKey = ptWhich;
            }
            if (tKey == 13) {
                $('#ocmOk').focus();
            }
            return !(tKey == 13);
        }
        function otbNewValueCal_onkeypress(ptKeyCode, ptWhich) {
            var tValue = $('#otbNewValueCal').val();
            return J002_CHKbCheckNumOnly(tValue, ptKeyCode, ptWhich);
        }
        function otbNewValueCal_onblur() {
            var tDecShow = '<%=Session("nVB_CNDecAmtForShw") %>';
            tDecShow = J002_GETcNumber(tDecShow);
            var tNewValueCal = $('#otbNewValueCal').val();
            tNewValueCal = J002_GETcNumber(tNewValueCal);
            $('#otbNewValueCal').val(J002_DECcRound(tNewValueCal, tDecShow, true));
        }
        function ocmDisAmt_onclick() {
            var tNewValue = '';
            var tOldValue = $('#otbOldValue').val();
            var tNewValueCal = $('#otbNewValueCal').val();
            var tDecShow = '<%=Session("nVB_CNDecAmtForShw") %>';
            tDecShow = J002_GETcNumber(tDecShow);
            if (tNewValueCal == null || tNewValueCal == '') {
                return false;
            }
            tOldValue = J002_GETcNumber(tOldValue);
            tNewValueCal = J002_GETcNumber(tNewValueCal);
            tNewValue = tOldValue - tNewValueCal;
            $('#otbNewValue').val(J002_DECcRound(tNewValue, tDecShow, true));
        }
        function ocmDisPer_onclick() {
            var tNewValue = '';
            var tOldValue = $('#otbOldValue').val();
            var tNewValueCal = $('#otbNewValueCal').val();
            var tDecShow = '<%=Session("nVB_CNDecAmtForShw") %>';
            tDecShow = J002_GETcNumber(tDecShow);
            if (tNewValueCal == null || tNewValueCal == '') {
                return false;
            }
            tOldValue = J002_GETcNumber(tOldValue);
            tNewValueCal = J002_GETcNumber(tNewValueCal);
            tNewValue = tOldValue - (tOldValue * tNewValueCal / 100);
            $('#otbNewValue').val(J002_DECcRound(tNewValue, tDecShow, true));
        }
        function ocmChgAmt_onclick() {
            var tNewValue = '';
            var tOldValue = $('#otbOldValue').val();
            var tNewValueCal = $('#otbNewValueCal').val();
            var tDecShow = '<%=Session("nVB_CNDecAmtForShw") %>';
            tDecShow = J002_GETcNumber(tDecShow);
            if (tNewValueCal == null || tNewValueCal == '') {
                return false;
            }
            tOldValue = J002_GETcNumber(tOldValue);
            tNewValueCal = J002_GETcNumber(tNewValueCal);
            tNewValue = tOldValue + tNewValueCal;
            $('#otbNewValue').val(J002_DECcRound(tNewValue, tDecShow, true));
        }
        function ocmChgPer_onclick() {
            var tNewValue = '';
            var tOldValue = $('#otbOldValue').val();
            var tNewValueCal = $('#otbNewValueCal').val();
            var tDecShow = '<%=Session("nVB_CNDecAmtForShw") %>';
            tDecShow = J002_GETcNumber(tDecShow);
            if (tNewValueCal == null || tNewValueCal == '') {
                return false;
            }
            tOldValue = J002_GETcNumber(tOldValue);
            tNewValueCal = J002_GETcNumber(tNewValueCal);
            tNewValue = tOldValue + (tOldValue * tNewValueCal / 100);
            $('#otbNewValue').val(J002_DECcRound(tNewValue, tDecShow, true));
        }
        //## End Change Value

        //## Grid Contractor
        var tW_CmdMode = '';
        //var nW_Item = 0;

        function W_SETxRebindGrid(ptGridName) {
            var oGrid = $('#' + ptGridName).data('tGrid');
            oGrid.rebind();
        }

        function W_CHKxStatus(e) {
            tW_CmdMode = e.mode;
            //document.getElementById('FTCtrApArCode').onkeypress = function () { return J002_CHKbCheckTxtKey(event.keyCode, event.which) };
            document.getElementById('FTCtrName').onkeypress = function () { return J002_CHKbCheckTxtKey(event.keyCode, event.which) };
            if (tW_CmdMode == 'edit') {
                //J002_SETxReadOnly("FTCtrApArCode", true);
                //document.getElementById("FTCtrApArCode").onkeydown = function () { return false; };
                document.getElementById('FTCtrName').focus();
                document.getElementById('FTCtrName').select();
            } else {
                //document.getElementById('FTCtrApArCode').focus();
                document.getElementById('FTCtrName').focus();
            }
            //alert(e.row.rowIndex);
            //nW_Item = e.dataItem.FNCtrSeq - 1;
        }

        //สิทธิการลบข้อมูล
        function W_CHKxUserDeleteAuthorize(e) {

            if (document.getElementById('FTCtrApArCode') != null) {
                e.preventDefault();
                return false;
            }

            var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Delete%>';
            var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
            var tPwdAllow = '<%=Session("bVB_CNPwdAllow") %>';
            var bAllow = J002_CHKtCheckAuthorize('omnMngGen', tAuthor, tPwdAllow, tMsgNotAuthorize);
            if (bAllow == false) {
                return e.preventDefault();
            }
        }

        //สิทธิการเพิ่มข้อมูล
        function W_CHKxUserAuthorize(e) {
            if (tW_CmdMode == 'insert') {
                var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Add%>';
            }
            else {
                var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Edit%>';
            }
            var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
            var tPwdAllow = '<%=Session("bVB_CNPwdAllow") %>';
            var bAllow = J002_CHKtCheckAuthorize('omnMngGen', tAuthor, tPwdAllow, tMsgNotAuthorize);
            if (bAllow == false) {
                return e.preventDefault();
            }

//            if (tW_CmdMode == 'insert') {
//                //Check Duplicate Key
//                var tErrMsg = W_CHKxVerifyInsertData();
//                if (tErrMsg != null && tErrMsg != '') {
//                    alert(tErrMsg);
//                    document.getElementById('FTCtrCode').focus();
//                    document.getElementById('FTCtrCode').select();
//                    return e.preventDefault();
//                }
//            }

            //บันทึกข้อมูล
            //var oXmlHttp = J002_GEToXMLHttpRequest();
            //if (tW_CmdMode == "edit") {
            //    //            var tDataTimeNow = J002_GETtTimeStamp();
            //    //            var tCode = document.getElementById("FTCtrCode").value;
            //    var tUrl = '<%=Url.Action("C_SAVbEditing","cvcCustomer") %>';//  + "?ptDateTimeNow=" + tDataTimeNow + "&ptCode=" + tCode;
            //    oXmlHttp.open("GET", encodeURI(tUrl), false);
            //    oXmlHttp.send(null);
            //    return oXmlHttp.responseText;
            //} else {

            //}

//            $("#Cst_Create").attr("action", '<%=Url.Action("C_DATxSaveImgCtr","cvcCustomer")%>');
//            //alert(565);
//            try {
//                $("#Cst_Create").submit();
//                //alert('<%=Url.Action("C_DATxSaveImage","cvcCompany") %>');
//            } catch (err) {
//                alert('<%=ViewData("tMsgBrwFileError")%>');
//                J003_DISxWaiting();
//            }

            //$("#otcUploadPic").click();
        }
        function W_CHKxVerifyInsertData() {
//            var oXmlHttp = J002_GEToXMLHttpRequest();
//            var tDataTimeNow = J002_GETtTimeStamp();
//            var tCode = document.getElementById("FTCtrCode").value;
//            var tUrl = '<%=Url.Action("C_CHKtVerifyInsertData","cvcCustomer") %>' + "?ptDateTimeNow=" + tDataTimeNow + "&ptCode=" + tCode;
//            oXmlHttp.open("GET", encodeURI(tUrl), false);
//            oXmlHttp.send(null);
//            return oXmlHttp.responseText;
        }
        
        function W_SETxFilterOnClick() {
            //W_SETxCommandCaption();
            $('#Grid tr:has(td) td', this.element).bind('click', function (e) {
                var td = this;
                if (td.cellIndex > 1) {
                    return true;
                }

                //var tCaption = $('#Grid th').eq(td.cellIndex).text();
                //document.getElementById("olaFilterCaption").innerHTML = '<%=ViewData("olaFindPdtType")%>' + ' ' + tCaption;
                //var tColName = $('#Grid th').eq(td.cellIndex).attr("name");
                //document.getElementById('otbFilterField').value = tColName;
                ////set caption
                //document.getElementById('otbtextField').value = '<%=ViewData("olaFindPdtType")%>' + ' ' + tCaption;                
            });

            J002_SETxReadOnly('FTCtrPic', true);
            $ui('#FTCtrPic', this).live('dblclick', function () {
                //alert("Intara");
                //$ui("#odiBrwData").dialog("open"); //Open Browse Unit
                //$("#otbCtrPic").trigger('click');
                var oNode = document.getElementsByName('otbCtrPic'); // [nW_Item];
                //var oEvt = document.createEvent("MouseEvents");
                //oEvt.initEvent("click", true, false);
                //oNode.dispatchEvent(oEvt);
                //$('#' + oNode[nW_Item]).click();
                //$('#otbFilePath').click(); 
                //oNode[nW_Item].onClick();
                $('#otbCtrPic').click(); 
            });
        }

        //onChange input file (ContractorPic)
        function W_SETxPathCtrPic() {
            // fire the upload here
            var tFileName = $('#otbCtrPic').val();
            tFileName = tFileName.replace('/', '\\');
            tFileName = tFileName.split('\\')[tFileName.split('\\').length - 1];
            //$('#FTCtrPic').val(tFileName);
            $('#otbPicCtr').val(tFileName);
            //set the next siblings (the span) text to the input value 
            //$('#otbCtrPic').next().text($('#otbCtrPic').val());
            W_UPDxUploadCtrPic();
        };
        
        function W_UPDxUploadCtrPic() {
            J003_SHWxWaiting();
            $file = $("#otbCtrPic");
            //document.getElementById("otbFileImagePath").value = document.getElementById("otbFilePath").value;

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

            $("#Cst_Create").attr("action", '<%=Url.Action("C_DATxSaveImgCtr","cvcCustomer")%>');
            try {
                $("#Cst_Create").submit();
            } catch (err) {
                alert('<%=ViewData("tMsgBrwFileError")%>');
            } finally {
                J003_DISxWaiting();
            }

//            var tUrl = '<%= Url.Action("C_DATxSaveImgCtr", "cvcCustomer") %>';
//                tUrl += '?otbCtrPic=' + document.getElementById('otbCtrPic');
//                $.post(tUrl);
//                J003_DISxWaiting();
        }

        function W_SETxHeaderGridColor(ptCase, ptGrid) {
            var tMid;
            switch (ptGrid.toUpperCase()) {
                case 'CTR': tMid = 'Ctr'; break;
                case 'CSP': tMid = 'Csp'; break;
            }
            switch (ptCase) {
                case "name": W_SETxSelectedColor('FT' + tMid + 'Name'); break;
                case "tel": W_SETxSelectedColor('FT' + tMid + 'Tel'); break;
                case "addr": W_SETxSelectedColor('FT' + tMid + 'Addr'); break;
                case "posi": W_SETxSelectedColor('FT' + tMid + 'Position'); break;
                case "dept": W_SETxSelectedColor('FT' + tMid + 'Dept'); break;
                case "pic": W_SETxSelectedColor('FT' + tMid + 'Pic'); break;
            }
        }
        function W_SETxSelectedColor(ptObjID) {
            if (document.getElementById(ptObjID).style.color == 'blue') {
                document.getElementById(ptObjID).style.color = '';
                return false;
            }
            document.getElementById(ptObjID).style.color = 'blue';
        }

        function W_DATxGridCtrOnRowSelect(e) {
            try {
                $('#otbName').val(e.row.cells[0].innerText);
                $('#otbTel').val(e.row.cells[1].innerText);
                $('#otbAddr').val(e.row.cells[2].innerText);
                $('#otbPosition').val(e.row.cells[3].innerText);
                $('#otbDept').val(e.row.cells[4].innerText);
                $('#otbPicCtr').val(e.row.cells[5].innerText);
                $('#otbCtrSeq').val(e.row.cells[6].innerText);

                var tImageName = $('#otbPicCtr').val();
                if (tImageName != null && tImageName != "") {
                    document.getElementById('oimCtrPic').src = '<%=Url.Content("~/AdaImage/' + tImageName + '")%>';
                }
                else {
                    document.getElementById('oimCtrPic').src = '<%=Url.Content("~/Content/img/ComingSoon.png")%>';
                }            
            }
            catch (ex) {
                J002_SHWxMsgError('W_DATxGridCtrOnRowSelect', ex);
            }
        }

        //ondblClick Open Dialog input file
        function W_SHWxDialogFile() { $('#otbCtrPic').click(); }

        //ADD Data Contractor
        function ocmAdd_onClick() {
            W_ADDxAddPdtToGrid();
            document.getElementById("otbName").focus();
        }
        function W_ADDxAddPdtToGrid() {
            try {
                var tCtrSeq = $('#otbCtrSeq').val();
                var tName = $('#otbName').val();
                var tTel = $('#otbTel').val();
                var tAddr = $('#otbAddr').val();
                var tPosition = $('#otbPosition').val();
                var tDept = $('#otbDept').val();
                var tPicCtr = $('#otbPicCtr').val();
                
                if ((tName != null && tName != "") || (tTel != null && tTel != "") ||
                    (tAddr != null && tAddr != "") || (tPosition != null && tPosition != "") ||
                    (tDept != null && tDept != "") || (tPicCtr != null && tPicCtr != "")) {
                       
                    var tDateTimeNow = J002_GETtTimeStamp();
                    var tUrl;
                    if (tCtrSeq != '' && tCtrSeq != null) {
                        tUrl = '<%=Url.Action("C_DATxEditItem","cvcCustomer") %>';
                    }
                    else {
                        tUrl = '<%=Url.Action("C_DATxAddItem","cvcCustomer") %>';
                    }
                    tUrl += '?=ptDateTimeNow' + tDateTimeNow;
                    tUrl += '&ptCtrSeq=' + tCtrSeq;
                    tUrl += '&ptName=' + tName;
                    tUrl += '&ptTel=' + tTel;
                    tUrl += '&ptAddr=' + tAddr;
                    tUrl += '&ptPosition=' + tPosition;
                    tUrl += '&ptDept=' + tDept;
                    tUrl += '&ptPicCtr=' + tPicCtr;
                    encodeURIComponent(tUrl); 

                    oW_xmlHttp = J002_GEToXMLHttpRequest();
                    oW_xmlHttp.open("GET", encodeURI(tUrl), false);
                    //oW_xmlHttp.open("GET", encodeURIComponent(tUrl), false);
                    //oW_xmlHttp.onreadystatechange = W_SETxHandleStateChangeSetTotal;
                    oW_xmlHttp.send(null);
                    if (oW_xmlHttp.status != 200) {
                        alert("error" + oW_xmlHttp.status + "\n" + oW_xmlHttp.responseText);
                    }

                    if (oW_xmlHttp.responseText.split("|")[0] != "") {
                        alert("error \n" + oW_xmlHttp.responseText.split("|")[0]);
                    }

                    W_SETxRebindGrid('Grid');
                    W_CLRxTextBox();
                }
            }
            catch (ex) {
                J002_SHWxMsgError("W_ADDxAddPdtToGrid", ex);
            }

        }

        function W_CLRxTextBox() {
            $('#otbCtrSeq').val('');
            $('#otbName').val('');
            $('#otbTel').val('');
            $('#otbAddr').val('');
            $('#otbPosition').val('');
            $('#otbDept').val('');
            $('#otbPicCtr').val('');
        }

        function otbName_onkeydown(ptKeyCode, ptWitch) {
            try {
                var tKey = ptKeyCode;
                if (ptWitch != null && ptWitch != '') { tKey = ptWitch; }
                switch (tKey) {
                    case 118: W_DELxPdtItem(); break;
                    case 13: $('#otbTel').select(); break;
                }
                return false;
            } catch (ex) { J002_SHWxMsgError("otbName_onkeydown", ex); }
        }        
        function otbTel_onkeydown(ptKeyCode, ptWitch) {
            try {
                var tKey = ptKeyCode;
                if (ptWitch != null && ptWitch != '') { tKey = ptWitch; }
                switch (tKey) {
                    case 118: W_DELxPdtItem(); break;
                    case 13: $('#otbAddr').select(); break;
                }
            } catch (ex) { J002_SHWxMsgError("otbTel_onkeydown", ex); }
        }
        function otbAddr_onkeydown(ptKeyCode, ptWitch) {
            try {
                var tKey = ptKeyCode;
                if (ptWitch != null && ptWitch != '') { tKey = ptWitch; }
                switch (tKey) {
                    case 118: W_DELxPdtItem(); break;
                    case 13: $('#otbPosition').select(); break;
                }
            } catch (ex) { J002_SHWxMsgError("otbAddr_onkeydown", ex); }
        }
        function otbPosition_onkeydown(ptKeyCode, ptWitch) {
            try {
                var tKey = ptKeyCode;
                if (ptWitch != null && ptWitch != '') { tKey = ptWitch; }
                switch (tKey) {
                    case 118: W_DELxPdtItem(); break;
                    case 13: $('#otbDept').select(); break;
                }
            } catch (ex) { J002_SHWxMsgError("otbPosition_onkeydown", ex); }
        }
        function otbDept_onkeydown(ptKeyCode, ptWitch) {
            try {
                var tKey = ptKeyCode;
                if (ptWitch != null && ptWitch != '') { tKey = ptWitch; }
                switch (tKey) {
                    case 118: W_DELxPdtItem(); break;
                    case 13: $('#otbPicCtr').select(); break;
                }
            } catch (ex) { J002_SHWxMsgError("otbDept_onkeydown", ex); }
        }
        function otbPicCtr_onkeydown(ptKeyCode, ptWitch) {
            try {
                var tKey = ptKeyCode;
                if (ptWitch != null && ptWitch != '') { tKey = ptWitch; }
                switch (tKey) {
                    case 118: W_DELxPdtItem(); break;
                    case 13: W_ADDxAddPdtToGrid(); break;
                }
            } catch (ex) { J002_SHWxMsgError("otbPicCtr_onkeydown", ex); }
        }
        function W_DELxPdtItem() {
            try {
                var tCtrSeq = $('#otbCtrSeq').val();
                if (tCtrSeq != null && tCtrSeq != "") {
                    var tDateTimeNow = J002_GETtTimeStamp();
                    var tUrl = '<%=Url.Action("C_DATtDeleteItem","cvcCustomer") %>' + '?ptSeq=' + tCtrSeq;
                    tUrl += '&ptDateTimeNow=' + tDateTimeNow;
                    oW_xmlHttp = J002_GEToXMLHttpRequest();
                    oW_xmlHttp.open("GET", encodeURI(tUrl), false);
                    //oW_xmlHttp.onreadystatechange = W_SETxHandleStateChangeSetTotal;
                    oW_xmlHttp.send(null);
                    W_SETxRebindGrid('Grid');
                    W_CLRxTextBox();
                }
                //$('#otbPicCtr').val('chuck'); //for Test
            } catch (ex) {
                J002_SHWxMsgError("W_DELxPdtItem", ex);
            }
        }
        //## End Grid Contractor

        //## Grid Customer Shipping
        function W_SETxPicGridCspOnload() {
            $('#GridCst tr:has(td) td', this.element).bind('click', function (e) {
                var td = this;
                if (td.cellIndex > 1) {
                    return true;
                }
            });

            $ui('#FTCtrPic', this).live('dblclick', function () {$('#otbCtrPic').click();});
        }

        function W_DATxGridCspOnRowSelect(e) {
            try {
                $('#otbCspName').val(e.row.cells[0].innerText);
                $('#otbCspAddr').val(e.row.cells[1].innerText);
                $('#otbCspTel').val(e.row.cells[2].innerText);
                $('#otbCspPicFake').val(e.row.cells[3].innerText);
                $('#otbCspCode').val(e.row.cells[4].innerText);

                var tImageName = $('#otbCspPicFake').val();
                if (tImageName != null && tImageName != "") {
                    document.getElementById('oimCspPic').src = '<%=Url.Content("~/AdaImage/' + tImageName + '")%>';
                }
                else {
                    document.getElementById('oimCspPic').src = '<%=Url.Content("~/Content/img/ComingSoon.png")%>';
                }
            }
            catch (ex) {
                J002_SHWxMsgError('W_DATxGridCspOnRowSelect', ex);
            }
        }

        //Event input shipper
        function otbCspName_onkeydown(ptKeyCode, ptWitch) {
            try {
                var tKey = ptKeyCode;
                if (ptWitch != null && ptWitch != '') { tKey = ptWitch; }
                switch (tKey) {
                    case 118: W_DELxCspItem(); break;
                    case 13: $('#otbCspAddr').select(); break;
                }
                return false;
            } catch (ex) { J002_SHWxMsgError("otbCspName_onkeydown", ex); }
        }
        function otbCspAddr_onkeydown(ptKeyCode, ptWitch) {
            try {
                var tKey = ptKeyCode;
                if (ptWitch != null && ptWitch != '') { tKey = ptWitch; }
                switch (tKey) {
                    case 118: W_DELxCspItem(); break;
                    case 13: $('#otbCspTel').select(); break;
                }
                return false;
            } catch (ex) { J002_SHWxMsgError("otbCspAddr_onkeydown", ex); }
        }
        function otbCspTel_onkeydown(ptKeyCode, ptWitch) {
            try {
                var tKey = ptKeyCode;
                if (ptWitch != null && ptWitch != '') { tKey = ptWitch; }
                switch (tKey) {
                    case 118: W_DELxCspItem(); break;
                    case 13: $('#otbCspPicFake').select(); break;
                }
                return false;
            } catch (ex) { J002_SHWxMsgError("otbCspTel_onkeydown", ex); }
        }
        function otbCspPicFake_onkeydown(ptKeyCode, ptWitch) {
            try {
                var tKey = ptKeyCode;
                if (ptWitch != null && ptWitch != '') { tKey = ptWitch; }
                switch (tKey) {
                    case 118: W_DELxCspItem(); break;
                    case 13: W_ADDxAddCspToGrid(); break;
                }
            } catch (ex) { J002_SHWxMsgError("otbCspPicFake_onkeydown", ex); }
        }

        //Add Shipping in Grid
        function W_ADDxAddCspToGrid() {
            try {
                var tCspCode = $('#otbCspCode').val();
                var tCspName = $('#otbCspName').val();
                var tCspTel = $('#otbCspTel').val();
                var tCspAddr = $('#otbCspAddr').val();
                var tCspPic = $('#otbCspPicFake').val();

                if ((tCspName != null && tCspName != "") || (tCspTel != null && tCspTel != "") ||
                    (tCspAddr != null && tCspAddr != "") || (tCspPic != null && tCspPic != "")) {

                    var tDateTimeNow = J002_GETtTimeStamp();
                    var tUrl;
                    if (tCspCode != '' && tCspCode != null) {
                        tUrl = '<%=Url.Action("C_DATxEditCspItem","cvcCustomer") %>';
                    }
                    else {
                        tUrl = '<%=Url.Action("C_DATxAddCspItem","cvcCustomer") %>';
                    }
                    tUrl += '?=ptDateTimeNow' + tDateTimeNow;
                    tUrl += '&ptCspCode=' + tCspCode;
                    tUrl += '&ptCspName=' + tCspName;
                    tUrl += '&ptCspTel=' + tCspTel;
                    tUrl += '&ptCspAddr=' + tCspAddr;
                    tUrl += '&ptCspPic=' + tCspPic;
                    encodeURIComponent(tUrl);

                    oW_xmlHttp = J002_GEToXMLHttpRequest();
                    oW_xmlHttp.open("GET", encodeURI(tUrl), false);
                    //oW_xmlHttp.open("GET", encodeURIComponent(tUrl), false);
                    //oW_xmlHttp.onreadystatechange = W_SETxHandleStateChangeSetTotal;
                    oW_xmlHttp.send(null);
                    if (oW_xmlHttp.status != 200) {
                        alert("error" + oW_xmlHttp.status + "\n" + oW_xmlHttp.responseText);
                    }

                    if (oW_xmlHttp.responseText.split("|")[0] != "") {
                        alert("error \n" + oW_xmlHttp.responseText.split("|")[0]);
                    }

                    W_SETxRebindGrid('GridCsp');
                    W_CLRxTextBoxCsp();
                }
            }
            catch (ex) {
                J002_SHWxMsgError("W_ADDxAddCspToGrid", ex);
            }
        }
        function W_CLRxTextBoxCsp() {
            $('#otbCspCode').val('');
            $('#otbCspName').val('');
            $('#otbCspTel').val('');
            $('#otbCspAddr').val('');
            $('#otbCspPicFake').val('');
        }
        //Delete item Csp
        function W_DELxCspItem() {
            try {
                var tCspCode = $('#otbCspCode').val();
                if (tCspCode != null && tCspCode != "") {
                    var tDateTimeNow = J002_GETtTimeStamp();
                    var tUrl = '<%=Url.Action("C_DATtDeleteCspItem","cvcCustomer") %>' + '?ptCspCode=' + tCspCode;
                    tUrl += '&ptDateTimeNow=' + tDateTimeNow;
                    oW_xmlHttp = J002_GEToXMLHttpRequest();
                    oW_xmlHttp.open("GET", encodeURI(tUrl), false);
                    //oW_xmlHttp.onreadystatechange = W_SETxHandleStateChangeSetTotal;
                    oW_xmlHttp.send(null);
                    W_SETxRebindGrid('GridCsp');
                    W_CLRxTextBoxCsp();
                }
                //$('#otbPicCtr').val('chuck'); //for Test
            } catch (ex) {
                J002_SHWxMsgError("W_DELxCspItem", ex);
            }
        }

        //onChange input file (ContractorPic)
        function W_SETxPathCspPic() {
            // fire the upload here
            var tFileName = $('#otbCspPic').val(); 
            tFileName = tFileName.replace('/', '\\');
            tFileName = tFileName.split('\\')[tFileName.split('\\').length - 1];
            $('#otbCspPicFake').val(tFileName); 
            W_UPDxUploadCspPic();
        };

        function W_UPDxUploadCspPic() {
            J003_SHWxWaiting();
            $file = $("#otbCspPic");

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

            $("#Cst_Create").attr("action", '<%=Url.Action("C_DATxSaveImgCsp","cvcCustomer")%>');
            try {
                $("#Cst_Create").submit();
            } catch (err) {
                alert('<%=ViewData("tMsgBrwFileError")%>');
            } finally {
                J003_DISxWaiting();
            }
        }

        function W_SETxValueCsp() {
            $('#otbCspCode').val('<%=Session("tCspCode")%>');
            $('#otbCspName').val('<%=Session("tCspName")%>');
            $('#otbCspTel').val('<%=Session("tCspTel")%>');
            $('#otbCspAddr').val('<%=Session("tCspAddr")%>');
            $('#otbCspPicFake').val('<%=Session("tCspPic")%>');
            //setTimeout(function () { $('#otbPicCtr').val('<%=Session("tCtrDept")%>'); }, 5000);
            var tImageName = $('#otbCspPicFake').val();
            if (tImageName != null && tImageName != "") {
                document.getElementById('oimCspPic').src = '<%=Url.Content("~/AdaImage/' + tImageName + '")%>';
            }
        }
        //## End Grid Customer Shipping

        //## Grid TACTSiHD & TACTStHD & TACTSxHD
        function W_SETxRebindGridSal(ptGridName, ptCase) {
            var tCstCode = '<%=Model.FTCstCode%>';
            var oGrid = $('#' + ptGridName).data('tGrid');
            oGrid.rebind({
                ptCase: ptCase, ptCstCode: tCstCode
            });
        }
        //## End Grid TACTSiHD

        function W_DATxCstOndown(ptKeyCode, ptWitch) {
            try {
                var tKey = ptKeyCode;
                if (ptWitch != null && ptWitch != '') { tKey = ptWitch; }
                if (tKey == 13) {$('#FTCstCardID').focus(); }
            } catch (ex) { J002_SHWxMsgError("otbCspAddr_onkeydown", ex); }
        }

        function W_DATxCstOnblur() {
        var tCstCode;
        var tUrl;
        var tRes = "0";
        var tDateTimeNow = J002_GETtTimeStamp();
        try {
            tCstCode = $('#FTCstCode').val();
            if (tCstCode != '') {
                tUrl = '<%=Url.Action("C_CHKtCheckHaveCst","cvcCustomer") %>';
                tUrl += '?=ptDateTimeNow' + tDateTimeNow;
                tUrl += '&ptCstCode=' + tCstCode;
                encodeURIComponent(tUrl);

                oW_xmlHttp = J002_GEToXMLHttpRequest();
                oW_xmlHttp.open("GET", encodeURI(tUrl), false);
                oW_xmlHttp.send(null);
                tRes = oW_xmlHttp.responseText;
                if (tRes == "1") {
                    var tStaChange = W_CHKbHasChangeData();
                    if (tStaChange == true) {
                        var tDialogResult = J003_SHWxConfirmDialog('<%=ViewData("tMsgSave_Warning") %>', oJ003_DialogType.DialogYesNoCancel);
                        switch (tDialogResult) {
                            case oJ003_DialogResult.Yes:
                                W_FRMxSaveDocument();
                                break;
                            case oJ003_DialogResult.Cancel: return false; break;
                        }
                    }
                    tUrl = '<%=Url.Action("C_Create","cvcCustomer") %>';
                    tUrl += '?ptChkSta=C_Edit';
                    tUrl += '&ptValue=' + tCstCode;
                    J003_SHWxWaiting();
                    window.location = encodeURI(tUrl);
                }
            }
        } catch (ex) {
            J002_SHWxMsgError("W_DATxCstOnblur", ex);
        }
    }

    function W_SETxStatusForm(ptStaFrm, ptGoto) {
        var tDateTimeNow = J002_GETtTimeStamp();
        var tUrl;
        tUrl = '<%=Url.Action("C_SETxStatusForm","cvcCustomer") %>';
        tUrl += '?ptDateTimeNow=' + tDateTimeNow;
        tUrl += '&ptStaFrm=' + ptStaFrm;
        tUrl += '&ptGoto=' + ptGoto;
        //encodeURIComponent(tUrl);

        oW_xmlHttp = J002_GEToXMLHttpRequest();
        oW_xmlHttp.open("GET", encodeURI(tUrl), false);
        oW_xmlHttp.send(null);
        var tRes = oW_xmlHttp.responseText;
    }

    //ตรวจสอบว่ามีการเปลี่ยนแปลงข้อมูลหรือไม่
    function W_CHKbHasChangeData() {
        try {
            if (tW_CstCodeDefalut != '<%=Session("tChkCode")%>') {
                var bStaChange = false;
                var tData = W_GETtDataString();
                if (tData != tW_BeforeEditData) {
                    bStaChange = true;
                }
                if (bStaChange == false) {
                    var bStaChangeDT = W_CHKbHasChangeDataCtrCsp();
                    bStaChange = bStaChange || bStaChangeDT;
                }
                return bStaChange;
            }
        }
        catch (ex) {
            J002_SHWxMsgError("W_CHKbHasChangeData", ex);
        }
    }

    function W_GETtDataString() {
        try {
            var tStr = '';
            tW_CstCodeDefalut = $('#FTCstCode').val();
            tStr += $('#FTCstCode').val();
            tStr += $('#FTCstName').val();
            tStr += $('#FTCstNameOth').val();
            tStr += $('#FTCstTel').val();
            tStr += $('#FTCstFax').val();
            tStr += $('#FTCstEmail').val();
            tStr += $('#FTCstTaxNo').val();
            tStr += $('#FTCstSex').val();
            tStr += $('#FDCstDob').val();
            tStr += $('#FCCstAmtLeft').val();
            tStr += $('#FCCstChqLeft').val();
            tStr += $('#FCCstChqRet').val();
            tStr += $('#FTCstVATInOrEx').val();
            tStr += $('#FNCstCrTerm').val();
            tStr += $('#FCCstCrLimit').val();
            tStr += $('#FTCstDiscWhs').val();
            tStr += $('#FTCstDayCta').val();
            tStr += $('#FDCstLastCta').val();
            tStr += $('#FDCstLastPay').val();
            tStr += $('#FTCstPayRmk').val();
            tStr += $('#FTCstBillRmk').val();
            tStr += $('#FNCstViaTime').val();
            tStr += $('#FTCstViaRmk').val();
            tStr += $('#FTShpCode').val();
            tStr += $('#FTCgpCode').val();
            tStr += $('#FTCtyCode').val();
            tStr += $('#FTCstBusiness').val();
            tStr += $('#FTAccCode').val();
            tStr += $('#FTCstPic').val();
            tStr += $('#FDCstApply').val();
            tStr += $('#FTCstCrdNo').val();
            tStr += $('#FTBchCode').val();
            tStr += $('#FDCstCrdIssue').val();
            tStr += $('#FDCstCrdExpire').val();
            tStr += $('#FTOcpCode').val();
            tStr += $('#FTAreCode').val();
            tStr += $('#FTDstCode').val();
            tStr += $('#FTPvnCode').val();
            tStr += $('#FTSpnCode').val();
            tStr += $('#FTClvCode').val();
            tStr += $('#FCCstWhsAmt').val();
            tStr += $('#FCCstWhsPoint').val();
            tStr += $('#FCCstRetAmt').val();
            tStr += $('#FCCstRetPoint').val();
            tStr += $('#FTCstDiscRet').val();
            tStr += $('#FTCstPriLevWhs').val();
            tStr += $('#FTCstPriLevRet').val();
            tStr += $('#FTCstStaAge').val();
            tStr += $('#FTCstStaActive').val();
            tStr += $('#FTCstRmk').val();
            tStr += $('#FTUsrCode').val();
            tStr += $('#FTCstMailAddr').val();
            tStr += $('#FTCstMailTo').val();
            tStr += $('#FCCstShrBgnQty').val();
            tStr += $('#FCCstShrBgnAmt').val();
            tStr += $('#FDCstShrBgnDate').val();
            tStr += $('#FCCstShrAddQty').val();
            tStr += $('#FCCstShrAddAmt').val();
            tStr += $('#FDCstShrAddDate').val();
            tStr += $('#FTCstTspPaid').val();
            tStr += $('#FTCstBillVat').val();
            tStr += $('#FCCstDailyAmt').val();
            tStr += $('#FCCstDailyPoint').val();
            tStr += $('#FTCstTtlName').val();
            tStr += $('#FTCstResTel').val();
            tStr += $('#FTCstSize').val();
            tStr += $('#FTCstStaApv').val();
            tStr += $('#FTCstStaff1').val();
            tStr += $('#FTCstStaff2').val();
            tStr += $('#FTCstStaff3').val();
            tStr += $('#FTCstBrand1').val();
            tStr += $('#FTCstBrand2').val();
            tStr += $('#FTCstBrand3').val();
            tStr += $('#FCCstGrandDebit').val();
            tStr += $('#FTCstStaClose').val();
            tStr += $('#FTCstCardID').val();
            tStr += $('#FTCstAddrNo').val();
            tStr += $('#FTCstSoi').val();
            tStr += $('#FTCstVillage').val();
            tStr += $('#FTCstRoad').val();
            tStr += $('#FTCstSubDist').val();
            tStr += $('#FTCstDstCode').val();
            tStr += $('#FTCstPvnCode').val();
            tStr += $('#FTCstPostCode').val();
            tStr += $('#FTCstWebsite').val();
            tStr += $('#FTCstCountry').val();
            tStr += $('#FDCstLastPoint').val(); 
            return tStr;
        }
        catch (ex) {
            J002_SHWxMsgError("W_GETtDataString", ex);
        }
    }

    function W_CHKbHasChangeDataCtrCsp() {
        try {
            var tDate = J002_GETtTimeStamp();
            var tUrl = '';
            tUrl += '<%=Url.Action("C_CHKtHasChangeDataCtrCsp","cvcCustomer") %>';
            tUrl += '?ptDateTimeNow=' + tDate;

            oW_xmlHttp = J002_GEToXMLHttpRequest();
            oW_xmlHttp.open('GET', encodeURI(tUrl), false);
            oW_xmlHttp.send(null);
            if (oW_xmlHttp.status != 200) {
                var tMsg = "Error" + oW_xmlHttp.stutus + "\n";
                tMsg += "Function : W_CHKbHasChangeDataCtrCsp \n";
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
            J002_SHWxMsgError('W_CHKbHasChangeDataCtrCsp', ex);
        }
    }
    </script>
</asp:Content>