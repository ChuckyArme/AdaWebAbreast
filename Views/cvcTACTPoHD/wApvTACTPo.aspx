<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage(Of Adasoft.WebPos.Models.cmlTACTPzHD)" %>
<%@ Import Namespace="System.Drawing" %>
<%@ Import Namespace="System.Resources" %>
<%@ Import Namespace="AdaWebPos" %>
<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tLang As String = Session("tVB_LastLang")
        If tLang Is Nothing OrElse tLang = "" Then
            tLang = "EN"
        End If
        
        Dim oCulture = New System.Globalization.CultureInfo(tLang)
        AdaWebPos.My.Resources.resLCcvcTACTPoHD.Culture = oCulture
        AdaWebPos.My.Resources.resLCcvcSHWoDT.Culture = oCulture
        AdaWebPos.My.Resources.resLCcvcCNBrw.Culture = oCulture
        Resources.resGBMsg.Culture = oCulture
        Resources.resGBTabCap.Culture = oCulture
        Resources.resGBGridHeader.Culture = oCulture
        Resources.resGBMenuName.Culture = oCulture
        
        ViewData("olaBrowse") = Resources.resGBGridHeader.olaBrowse
        ViewData("olaFil") = AdaWebPos.My.Resources.resLCcvcCNBrw.olaFil
                
        ViewData("olaRowID") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaRowID
        ViewData("olaCanEdit") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaCanEdit
        ViewData("olaCanSave") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaCanSave
        ViewData("olaCreate") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaCreate
        ViewData("olaCanDelete") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaCanDelete
        ViewData("olaFCXzhAftDisChg") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFCXzhAftDisChg
        ViewData("olaFCXzhB4DisChg") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFCXzhB4DisChg
        ViewData("olaFCXzhB4VatAfGP1") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFCXzhB4VatAfGP1
        ViewData("olaFCXzhB4VatAfGP2") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFCXzhB4VatAfGP2
        ViewData("olaFCXzhCcyExg") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFCXzhCcyExg
        ViewData("olaFCXzhChg") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFCXzhChg
        ViewData("olaFCXzhChn") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFCXzhChn
        ViewData("olaFCXzhDis") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFCXzhDis
        ViewData("olaFCXzhDiscGP1") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFCXzhDiscGP1
        ViewData("olaFCXzhDiscGP2") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFCXzhDiscGP2
        ViewData("olaFCXzhGndAE") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFCXzhGndAE
        ViewData("olaFCXzhGndCN") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFCXzhGndCN
        ViewData("olaFCXzhGndDN") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFCXzhGndDN
        ViewData("olaFCXzhGndTH") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFCXzhGndTH
        ViewData("olaFCXzhGrand") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFCXzhGrand
        ViewData("olaFCXzhLeft") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFCXzhLeft
        ViewData("olaFCXzhMnyChq") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFCXzhMnyChq
        ViewData("olaFCXzhMnyCls") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFCXzhMnyCls
        ViewData("olaFCXzhMnyCpn") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFCXzhMnyCpn
        ViewData("olaFCXzhMnyCrd") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFCXzhMnyCrd
        ViewData("olaFCXzhMnyCsh") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFCXzhMnyCsh
        ViewData("olaFCXzhMnyCtf") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFCXzhMnyCtf
        ViewData("olaFCXzhMnyCxx") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFCXzhMnyCxx
        ViewData("olaFCXzhNonVat") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFCXzhNonVat
        ViewData("olaFCXzhPaid") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFCXzhPaid
        ViewData("olaFCXzhReceive") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFCXzhReceive
        ViewData("olaFCXzhRnd") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFCXzhRnd
        ViewData("olaFCXzhRteFac") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFCXzhRteFac
        ViewData("olaFCXzhTotal") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFCXzhTotal
        ViewData("olaFCXzhVat") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFCXzhVat
        ViewData("olaFCXzhVatable") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFCXzhVatable
        ViewData("olaFCXzhVATRate") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFCXzhVATRate
        ViewData("olaFCXzhWpTax") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFCXzhWpTax
        ViewData("olaFDXzhBillDue") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFDXzhBillDue
        ViewData("olaFDXzhDocDate") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFDXzhDocDate
        ViewData("olaFDXzhDueDate") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFDXzhDueDate
        ViewData("olaFDXzhRefExtDate") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFDXzhRefExtDate
        ViewData("olaFDXzhRefIntDate") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFDXzhRefIntDate
        ViewData("olaFDXzhTnfDate") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFDXzhTnfDate
        ViewData("olaFNCspCode") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFNCspCode
        ViewData("olaFNLogSeqNo") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFNLogSeqNo
        ViewData("olaFNXzhCrTerm") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFNXzhCrTerm
        ViewData("olaFNXzhDocPrint") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFNXzhDocPrint
        ViewData("olaFNXzhSign") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFNXzhSign
        ViewData("olaFNXzhStaDocAct") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFNXzhStaDocAct
        ViewData("olaFNXzhStaRef") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFNXzhStaRef
        ViewData("olaFTAloCode") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTAloCode
        ViewData("olaFTAreCode") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTAreCode
        ViewData("olaFTBchCode") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTBchCode
        ViewData("olaFTCcyCode") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTCcyCode
        ViewData("olaFTCstCode") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTCstCode
        ViewData("olaFTCstStaClose") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTCstStaClose
        ViewData("olaFTDocControl") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTDocControl
        ViewData("olaFTDptCode") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTDptCode
        ViewData("olaFTLogCode") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTLogCode
        ViewData("olaFTPjcCode") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTPjcCode
        ViewData("olaFTPosCode") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTPosCode
        ViewData("olaFTPrdCode") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTPrdCode
        ViewData("olaFTRteCode") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTRteCode
        ViewData("olaFTShpCode") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTShpCode
        ViewData("olaFTSplCode") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTSplCode
        ViewData("olaFTSpnCode") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTSpnCode
        ViewData("olaFTUsrCode") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTUsrCode
        ViewData("olaFTWahCode") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTWahCode
        ViewData("olaFTXbhDocNo") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXbhDocNo
        ViewData("olaFTXzhApvCode") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhApvCode
        ViewData("olaFTXzhBchFrm") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhBchFrm
        ViewData("olaFTUsrCode") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTUsrCode
        ViewData("olaFTWahCode") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTWahCode
        ViewData("olaFTXbhDocNo") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXbhDocNo
        'ViewData("olaFTXzhApvCode") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhApvCode
        ViewData("olaFTXzhBchFrm") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhBchFrm
        ViewData("olaFTXzhBchTo") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhBchTo
        ViewData("olaFTXzhCsh") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhCsh
        ViewData("olaFTXzhCrd") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhCrd
        ViewData("olaFTXzhCstAddr") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhCstAddr
        ViewData("olaFTXzhCstName") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhCstName
        ViewData("olaFTXzhCtrName") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhCtrName
        ViewData("olaFTXzhDisChgTxt") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhDisChgTxt
        ViewData("olaFTXzhDocNo") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhDocNo
        ViewData("olaFTXzhDocRefMax") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhDocRefMax
        ViewData("olaFTXzhDocRefMin") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhDocRefMin
        ViewData("olaFTXzhDocTime") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhDocTime
        ViewData("olaFTXzhDocType") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhDocType
        ViewData("olaFTXzhDocVatFull") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhDocVatFull
        ViewData("olaFTXzhDstPaid") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhDstPaid
        ViewData("olaFTXzhGndText") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhGndText
        ViewData("olaFTXzhPosCN") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhPosCN
        ViewData("olaFTXzhRefAE") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhRefAE
        ViewData("olaFTXzhRefExt") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhRefExt
        ViewData("olaFTXzhRefInt") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhRefInt
        ViewData("olaFTXzhRefSaleTax") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhRefSaleTax
        ViewData("olaFTXzhRmk") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhRmk
        ViewData("olaFTXzhStaDoc") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhStaDoc
        ViewData("olaFTXzhStaPaid") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhStaPaid
        ViewData("olaFTXzhStaPost") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhStaPost
        ViewData("olaFTXzhStaPrcCst") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhStaPrcCst
        ViewData("olaFTXzhStaPrcDoc") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhStaPrcDoc
        ViewData("olaFTXzhStaPrcGL") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhStaPrcGL
        ViewData("olaFTXzhStaPrcLef") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhStaPrcLef
        ViewData("olaFTXzhStaPrcSpn") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhStaPrcSpn
        ViewData("olaFTXzhStaPrcStk") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhStaPrcStk
        ViewData("olaFTXzhStaRefund") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhStaRefund
        ViewData("olaFTXzhStaType") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhStaType
        ViewData("olaFTXzhStaVatSend") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhStaVatSend
        ViewData("olaFTXzhStaVatType") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhStaVatType
        ViewData("olaFTXzhStaVatUpld") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhStaVatUpld
        ViewData("olaFTXzhTnfID") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhTnfID
        ViewData("olaFTXzhUsrChecker") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhUsrChecker
        ViewData("olaFTXzhUsrEnter") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhUsrEnter
        ViewData("olaFTXzhUsrPacker") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhUsrPacker
        ViewData("olaFTXzhUsrSender") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhUsrSender
        ViewData("olaFTXzhVATInOrEx") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhVATInOrEx
        ViewData("olaFTXzhVehID") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhVehID
        ViewData("olaFTXzhWahFrm") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhWahFrm
        ViewData("olaFTXzhWahTo") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhWahTo
        ViewData("olaFTXphDocNo") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXphDocNo
        ViewData("olaFTXqhDocNoRef") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXqhDocNoRef
        ViewData("olaMenuName") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaMenuName
        ViewData("olaNotAccess") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaNotAccess
        ViewData("olaReport") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaReport
        ViewData("olaHeaderEdit") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaHeaderEdit
        ViewData("olaHeaderAdd") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaHeaderAdd
        ViewData("olaHeaderDetail") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaHeaderDetail
        ViewData("olaHeaderList") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaHeaderList
        ViewData("olaDetail") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaDetail
        ViewData("olaHisPo") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaHisPo
        ViewData("olaHisSale") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaHisSale
        ViewData("olaPriceOther") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaPriceOther
        ViewData("olaFTXzhTnfCost") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFTXzhTnfCost
        ViewData("olaHelp") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaHelp
        ViewData("olaCanCopy") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaCanCopy
        ViewData("olaCanFind") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaCanFind
        ViewData("olaCanPost") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaCanPost
        ViewData("olaClose") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaClose
        ViewData("olaCancel") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaCancel
        ViewData("olaAutoTab") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaAutoTab
        ViewData("olaTel") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaTel
        ViewData("olaFax") = AdaWebPos.My.Resources.resLCcvcTACTPoHD.olaFax
            
        ViewData("olaRowID") = AdaWebPos.My.Resources.resLCcvcSHWoDT.olaRowID
        ViewData("olaPdtCode") = AdaWebPos.My.Resources.resLCcvcSHWoDT.olaPdtCode
        ViewData("olaPdtName") = AdaWebPos.My.Resources.resLCcvcSHWoDT.olaPdtName
        ViewData("olaPdtUnit") = AdaWebPos.My.Resources.resLCcvcSHWoDT.olaPdtUnit
        ViewData("olaPdtUnitPrice") = AdaWebPos.My.Resources.resLCcvcSHWoDT.olaPdtUnitPrice
        ViewData("olaPdtUnitName") = AdaWebPos.My.Resources.resLCcvcSHWoDT.olaPdtUnitName
        ViewData("olaDiscount") = AdaWebPos.My.Resources.resLCcvcSHWoDT.olaDiscount
        ViewData("olaAmount") = AdaWebPos.My.Resources.resLCcvcSHWoDT.olaAmount
            
              
        ViewData("olatMsgConfirmChangeSpl") = Resources.resGBMsg.tMsgConfirmChangeSpl
        ViewData("olatMsgNonData") = Resources.resGBMsg.tMsgNonDataPdt
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
        ViewData("olatMsgNoCopyNoSave") = Resources.resGBMsg.tMsgNoCoppyNoSave
        ViewData("olatMsgChangeRate") = Resources.resGBMsg.tMsgChangeRate
        ViewData("olatMsgNonDataSpl") = Resources.resGBMsg.tMsgNonDataSpl
        ViewData("olatMsgNonDataRte") = Resources.resGBMsg.tMsgNonDataRte
        ViewData("olatMsgNonDataPdt") = Resources.resGBMsg.tMsgNonDataPdt
        ViewData("tMsgDAT_Notfound001") = Resources.resGBMsg.tMsgDAT_Notfound001
        ViewData("tMsgNotGenDoc") = Resources.resGBMsg.tMsgNotGenDoc
        ViewData("tMsgConfirmSave") = Resources.resGBMsg.tMsgConfirmSave
        ViewData("tMsgCodeHasUsed") = Resources.resGBMsg.tMsgCodeHasUsed
        ViewData("tMsgConfirmDelete") = Resources.resGBMsg.tMsgConfirmDelete
        ViewData("tMsgConfirmCancel") = Resources.resGBMsg.tMsgConfirmCancel
        ViewData("tMsgConfirmPost") = Resources.resGBMsg.tMsgConfirmPost
        ViewData("tMsgConfirmDelPdtSN") = Resources.resGBMsg.tMsgConfirmDelPdtSN
        ViewData("tMsgClearData") = Resources.resGBMsg.tMsgClearData
        ViewData("tMsgSave_Warning") = Resources.resGBMsg.tMsgSave_Warning
        ViewData("tMsgNotAuthorize") = Resources.resGBMsg.tMsgNotAuthorize
        ViewData("tMsgNoSaveCancel") = Resources.resGBMsg.tMsgNoSaveCancel
            
        'ning 30/06/2010
        ViewData("olaDetail1") = Resources.resGBTabCap.olaDetail1
        ViewData("olaDetail2") = Resources.resGBTabCap.olaDetail2
        ViewData("olaDetail3") = Resources.resGBTabCap.olaDetail3
        ViewData("olaHis_Cst") = Resources.resGBTabCap.olaHis_Cst
        ViewData("olaHis_OtherPrice") = Resources.resGBTabCap.olaHis_OtherPrice
        ViewData("olaHis_Remark") = Resources.resGBTabCap.olaHis_Remark
        ViewData("olaHis_Spl") = Resources.resGBTabCap.olaHis_Spl
        
        ViewData("nVB_CNDecAmtForShw") = Session("nVB_CNDecAmtForShw")
        ViewData("oimgBrowse") = Url.Content(Resources.resGBImageList.oimgBrowse)
        ViewData("oimgGencode") = Url.Content(Resources.resGBImageList.oimgGencode)
        
        ViewData("oimgAppv") = Url.Content(Resources.resGBImageList.oimgAppv)
        ViewData("oimgNoAppv") = Url.Content(Resources.resGBImageList.oimgNoAppv)
        ViewData("oimgPCRemove") = Url.Content(Resources.resGBImageList.oimgPCRemove)
                
        ViewData("olaMenuExit") = Resources.resGBMenuName.omnExit '*ออก *CH 17-10-2012
        ViewData("olaMenuHome") = Resources.resGBMenuName.omnHome '*หน้าแรก *CH 17-10-2012
       'กำหนด format วันที่ให้กับ culture ของ thread
        Dim oSp As New cCNSP
        oSp.SP_SETxLanguageCulture()
    End Sub
</script> 

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	<%=ViewData("olaMenuName")%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<% 
    Dim tW_Controller As String = "cvcTACTPoHD"
    Dim tW_Table As String = "TACTPoHD"
    Dim tW_MidHD As String = "Xzh"
    Dim tW_MidDT As String = "Xzd"
    Dim tW_MidSN As String = "Xzs"
    Dim nW_DecLength As Integer = ViewData("nVB_CNDecAmtForShw")
%>
<% Using Html.BeginForm()%> 
    
    <%--Hidden Object--%> 
    <div style="display:none">
        <input id="otbSeq" type="hidden" value="" />
        <input id="otbFTBchCode" type="hidden" value="<%=Model.FTBchCode%>" />
        <input id="otbFTXzhDocType" type="hidden" value="<%=Model.FTXzhDocType%>" />
        <input id="otbFTUsrCode" type="hidden" value="<%=Model.FTUsrCode%>" />
        <input id="otbFTDptCode" type="hidden" value="<%=Model.FTDptCode%>" />
        <input id="otbFTXzhStaType" type="hidden" value="<%=Model.FTXzhStaType%>" />
        <input id="otbFTXzhStaPaid" type="hidden" value="<%=Model.FTXzhStaPaid%>" />
        <input id="otbFTXzhStaRefund" type="hidden" value="<%=Model.FTXzhStaRefund%>" />
        <input id="otbFNXzhSign" type="hidden" value="<%=Model.FNXzhSign%>" />
        <input id="otbFTXzhStaVatSend" type="hidden" value="<%=Model.FTXzhStaVatSend%>" />
        <input id="otbFNXzhStaRef" type="hidden" value="<%=Model.FNXzhStaRef%>" />
        <input id="otbFTXzhApvCode" type="hidden" value="<%=Model.FTXzhApvCode%>" />
        <input id="otbFTXzhStaDoc" type="hidden" value="<%=Model.FTXzhStaDoc%>" />
        <input id="otbFTPrdCode" type="hidden" value="<%=Model.FTPrdCode%>" />
        <input id="otbFCXzhNonVat" type="hidden" value="<%=Model.FCXzhNonVat%>" />
        <input id="otbFCXzhVatable" type="hidden" value="<%=Model.FCXzhVatable%>" />
        <input id="otbFCXzhB4DisChg" type="hidden" value="<%=Model.FCXzhB4DisChg%>" />
        <input id="otbFNSplCrTerm" type="hidden" value="0"/>
        <input id="otbFNSplViaTime" type="hidden" value="0" />
        <input id="otbFTSplDiscWhs" type="hidden" value=""/>
        <input id="otbFTSplTspPaid" type="hidden" value="1"/>
        <input id="otbFTSplVATInOrEx" type="hidden" value="1"/>
        <input id="otbDisTxt" type="hidden" />
        <input id="otbSetPrice" type="hidden" />
        <input id="otbFTSplCodeOld" type="hidden" />
        <input id="otbFormatDocNo" type ="hidden" name ="otbFormatDocNo" value=""/>
        <input id="otbFTPdtSrn" type="hidden" value="" />
        <input id="otbFTRteCodeOld" type="hidden" />
        <input id="otbPdtSel" type="hidden" />
        <input id="otbFTShpCodeOld" type="hidden"  />
        <input id="otbFTXzhUsrEnterOld" type="hidden" />
        <input id="otbSpnOld" type="hidden" />
        <input id="otbFTXzhUsrPackerOld" type="hidden" />
        <input id="otbFTXzhUsrCheckerOld" type="hidden" />
        <input id="otbFTXzhUsrSenderOld" type="hidden" />
        <input id="otbDis" name="otbDis" type="hidden" />
        <input id="otbDisRte" name="otbDisRte" type="hidden" />
        <input id="otbSerialList" name="otbSerialList" type="hidden" />
        <input id="otbFTAreCodeOld" type="hidden"  />
    </div>
    
    <div id="odiMain" class ="xCN_AllFontFamily xCN_AllFontSize xCN_AllFontColor xCN_DivMain">
        <%-------------------เมนูด้านบนสุด---------------------------%>
        <div id="odiMenuTop" class ="xCN_AllBorderColor xCN_DivMainMenu">
            <div id="odiMenu" class="xCN_DivMenu" style="width:560px">
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
                    <a href="javascript:void();" onclick="W_FRMxNewDoc()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaCreate")%>
                        </div>
                    </a>
                </div>  
                <div id ="odiMenuDelete" class="xCN_DivMenuDelete" style="float:left;">
                    <a href="javascript:void();"  onclick="W_FRMxDelDoc()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaCanDelete")%>
                        </div>
                    </a>
                </div>
                <div id ="odiMenuCancel" class="xCN_DivMenuCancel" style="float:left;">
                    <a href="javascript:void();" onclick="W_FRMxCancelDoc()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaCancel")%>
                        </div>
                    </a>
                </div>  
                <div id ="odiMenuPost" class="xCN_DivMenuPost" style="float:left;">
                    <a href="javascript:void();" onclick="W_FRMxPostDoc()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaCanPost")%>
                        </div>
                    </a>
                </div>
                <div id ="odiMenuSearch" class="xCN_DivMenuSearch" style="float:left;">
                    <a href="javascript:void();" onclick="W_FRMxFindDoc()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaCanFind")%>
                        </div>
                    </a>
                </div>
                <!-- *CH 24-01-2013 -->
                <div id ="odiMenuCoppy" class="xCN_DivMenuCoppy" style="float:left;">
                    <a href="javascript:void(0);" onclick="W_FRMxCopyDoc()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaCanCopy")%>
                        </div>
                    </a>
                </div>
                <div id ="odiMenuRpt" class="xCN_DivMenuReport" style="float:left;">
                    <a href="javascript:void();" onclick="W_FRMxShwPrintDialog()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaReport")%>
                        </div>
                    </a>
                </div>
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
            <%--   Supplier--%>
            <div id="odiCstDetail" class ="xCN_AllBackgroundColor xCN_AllBorderColor xCN_DivDetailHDCustomer">
                   <div class =" xCN_AllBackgroundColorCustomer xCN_DivCstMainCode">
                        <div class ="xCN_DivCstCaption">
                             <%=ViewData("olaFTSplCode")%>
                        </div>
                        
                        <div class="xCN_DivCstCode">
                           <input id="otbFTSplCode" name="FTSplCode" 
                                type="text" 
                                readonly="readonly"
                                class="xCN_AllBackgroundColor" 
                                value="<%=Html.Encode(Model.FTSplCode)%>" />
                        </div>                        
                   </div>                   
                   <div  class="xCN_AllBackgroundColor xCN_DivCstNameMain">
                               <input id="otbSplName" 
                               class="xCN_AllBackgroundColor" 
                               name="otbSplName" 
                               readonly="readonly" 
                               type="text" />
                   </div>                   
                   <div  class="xCN_AllBackgroundColor xCN_DivCstAddrMain">
                        <textarea id="otbSplAddr" 
                                  class="xCN_AllBackgroundColor" 
                                  cols="1" 
                                  name="otbSplAddr" 
                                  readonly="readonly"
                                  rows="1">
                        </textarea>
                   </div>
                   <div class="xCN_AllBackgroundColor xCN_DivCstTelFaxMain">
                        <div class ="xCN_LableTelFaxCap">
                            <%=ViewData("olaTel")%>
                        </div>
                        <div class ="xCN_DivCstTelFaxMainSub">
                            <input id="otbFTSplTel" 
                                    class="xCN_AllBackgroundColor xCN_InputTextCstTelFax" 
                                    name="otbFTSplTel" 
                                    readonly="readonly" type="text" />
                        
                        </div>
                   </div>
                   <div class="xCN_AllBackgroundColor xCN_DivCstTelFaxMain">
                        <div class ="xCN_LableTelFaxCap">
                                <%=ViewData("olaFax")%>
                        </div>
                        <div class ="xCN_DivCstTelFaxMainSub">
                            <input id="otbFTSplFax" 
                                   class="xCN_AllBackgroundColor xCN_InputTextCstTelFax" 
                                   name="otbFTSplFax" 
                                   readonly="readonly" type="text" />
                        
                        </div>
                   </div>
            </div>
            <%--   Div Tab Detail 123--%>
            <div id="odiTabDetail" class ="xCN_DivDetailHDTabDetail123">
                <div class ="xCN_DivDetailHDTabDetail123Sub" >
                    <%--   Div TabToppic--%>
                    <div class="xCN_DivTabToppic">
                        <a href="javascript:void();" 
                            onclick="{J010_SHWxTabData(0,'odiDiv1','odiDiv2','odiDiv3');J009_SHWxTabTop(0,'odiDiv_Detail1','odiDiv_Detail2','odiDiv_Detail3')}">
                            <div id="odiDiv_Detail1" class="xCN_DivTabActive">
                                <%=ViewData("olaDetail1")%>
                            </div>
                        </a>
                        <a href="javascript:void();" 
                            onclick="{J010_SHWxTabData(1,'odiDiv1','odiDiv2','odiDiv3');J009_SHWxTabTop(1,'odiDiv_Detail1','odiDiv_Detail2','odiDiv_Detail3')}">
                            <div id="odiDiv_Detail2" class="xCN_DivTabUnActive">
                                <%=ViewData("olaDetail2")%>
                            </div>
                        </a>
                        <a href="javascript:void();" 
                            onclick="{J010_SHWxTabData(2,'odiDiv1','odiDiv2','odiDiv3');J009_SHWxTabTop(2,'odiDiv_Detail1','odiDiv_Detail2','odiDiv_Detail3')}">
                            <div id="odiDiv_Detail3" class="xCN_DivTabUnActive">
                                <%=ViewData("olaDetail3")%>
                            </div>
                        </a>
                    </div>
                    <%--   Div Detail 1--%>
                    <div id="odiDiv1">
                        <div class="xCN_DivTabDetail">
                              <div class="xCN_AllBackgroundColor xCN_DivTabDetailSub">                                
                                    <div class=" xCN_DivTabDetail1Column1">
                                         <div class="xCN_DivTabDetail1CshOrCrd">
                                              <div class="xCN_AllBackgroundColorCshOrCrd xCN_DivTabDetail1CshOrCrdSub">
                                                   <%=Html.RadioButtonFor(Function(model) model.FTXzhCshOrCrd, "1", _
                                                        New With {.id = "orbCash", .onclick = "{W_SETxShowCreditTerm();}"})%> 
                                                        &nbsp;<%=ViewData("olaFTXzhCsh")%><br/>
                                                   <%=Html.RadioButtonFor(Function(model) model.FTXzhCshOrCrd, "2", _
                                                        New With {.id = "orbCredit", .onclick = "{W_SETxShowCreditTerm();}"})%> 
                                                        &nbsp;<%=ViewData("olaFTXzhCrd")%>   
                                              </div>
                                         </div>
                                         <div class="xCN_DivTabDetail1CreditTerm">
                                            <div id="odiCrdShow" class="xCN_DivCreditTermSub">
                                                    <%=ViewData("olaFNXzhCrTerm")%><br/>
                                                     <%=Html.Telerik.IntegerTextBox().Name("XFNXzhCrTerm") _
                                                           .MinValue(0).MaxValue(100) _
                                                           .Value(Model.FNXzhCrTerm) _
                                                           .InputHtmlAttributes(New With {.id = "otbXFNXzhCrTerm", _
                                                                                          .name = "FNXzhCrTerm", _
                                                                                          .style = "width:70px;", _
                                                                                          .disabled = "disabled", _
                                                                                          .class = "xCN_AllReadOnlyBGColor"})%>                                                    
                                            </div>
                                            <div id="odiCshShow" class="xCN_DivCreditTermSub xCN_DivTabDisplay">
                                                    <%=ViewData("olaFNXzhCrTerm")%><br/>                        
                                                     <%=Html.Telerik.IntegerTextBox().Name("XFNXzhCrTermLock") _
                                                           .MinValue(0).MaxValue(100) _
                                                           .Value(CInt(0)) _
                                                           .InputHtmlAttributes(New With {.id = "otbXFNXzhCrTermLock", _
                                                                                          .name = "FNXzhCrTermLock", _
                                                                                          .style = "width:70px;", _
                                                                                          .disabled = "disabled", _
                                                                                          .class = "xCN_AllReadOnlyBGColor"})%>
                                            </div>
                                         </div>
                                    </div>
                                    <div class="xCN_DivTabDetail1Column2 xW_DivTabDetail1Column2">
                                        <div class ="xCN_DivTabDetail1Caption">
                                             <%=ViewData("olaFTXzhRefInt")%>
                                        </div>
                                        <div class ="xCN_DivTabDetail1Caption">
                                            <%=ViewData("olaFDXzhDueDate")%>
                                        </div>
                                        <div class ="xCN_DivTabDetail1Caption">
                                            <%=ViewData("olaFTRteCode")%>
                                        </div>
                                    </div>
                                    <div class="xCN_DivTabDetail1Column3">                                    
                                        <div class ="xCN_DivTabDetail1InputData">
                                            <div class="xCN_DivTabDetail1InputRefNo">
                                                 <input id="otbFTXzhRefInt" 
                                                        maxlength="20" 
                                                        name="otbFTXzhRefInt" 
                                                        readonly="readonly"
                                                        type="text" 
                                                        class="xCN_AllReadOnlyBGColor"
                                                        value="<%=Html.Encode(Model.FTXzhRefInt)%>" />
                                                        <%=Html.ValidationMessageFor(Function(model) model.FTXzhRefInt)%>
                                            </div>
                                        </div>
                                        <div class ="xCN_DivTabDetail2InputData" >
                                            <%=Html.Telerik().DatePicker() _
                                                .Name("XFDXzhDueDate") _
                                                .Format("dd/MM/yyyy") _
                                                .Value(Model.FDXzhDueDate) _
                                                .InputHtmlAttributes(New With {.id = "odtFDXzhDueDate", _
                                                                               .name = "FDXzhDueDate", _
                                                                               .style = "height:14px;", _
                                                                               .disabled = "disabled", _
                                                                               .class = "xCN_AllReadOnlyBGColor"}) _
                                                .ButtonTitle("..") _
                                                .ShowButton(False)
                                            %>
                                            <%=Html.ValidationMessageFor(Function(model) model.FDXzhTnfDate)%>
                                        </div>
                                        <div class ="xCN_DivTabDetail1InputData">
                                            <input type ="text" 
                                                  id="otbFTRteCode" 
                                                  name="FTRteCode" 
                                                  readonly="readonly" 
                                                  maxlength='<%=ViewData("VatMaxLenght")%>' 
                                                  class = "wX_InputRteCode xCN_AllReadOnlyBGColor"
                                                  style="width:65px;"
                                                  value="<%=Html.Encode(Model.FTRteCode)%>" />
                                            <input type="text" 
                                                   id="otbRteRate" 
                                                   name="otbRteRate" 
                                                   value="<%=Model.FCXzhRteFac%>" 
                                                   readonly="readonly"
                                                   style = "font:Tahoma;font-size: 12px;text-align :center;width:80px;height:16px;"
                                                   class="xCN_AllReadOnlyBGColor" />
                                            <input type="text" 
                                                   id="otbRateName" 
                                                   name="otbRateName" 
                                                   readonly="readonly" 
                                                   value=""
                                                   style = "font:Tahoma;font-size: 12px;text-align :center;width:154px;height:16px; margin-top:3px;"
                                                   class="xCN_AllReadOnlyBGColor" />
                                        </div>                                    
                                    </div>
                              </div> 
                        </div>                               
                    </div>
                    <%--   Div Detail 2--%>
                    <div id="odiDiv2" class="xCN_DivTabDisplay">
                        <div class="xCN_DivTabDetail">
                             <div class="xCN_AllBackgroundColor xCN_DivTabDetailSub">
                                  <div class="xCN_DivTabDetail2Column1">
                                       <div class ="xCN_DivTabDetail2Caption">
                                            <%=ViewData("olaFDXzhTnfDate")%>
                                       </div>
                                       <div class ="xCN_DivTabDetail2Caption">
                                            <%=ViewData("olaFDXzhBillDue")%>
                                       </div>
                                       <div class ="xCN_DivTabDetail2Caption">
                                            <%=ViewData("olaFTAreCode")%>
                                       </div>
                                       
                                  </div>
                                  <div class="xCN_DivTabDetail2Column2">
                                      <div class ="xCN_DivTabDetail2InputData" >
                                            <%=Html.Telerik().DatePicker() _
                                                .Name("XFDXzhTnfDate") _
                                                .Format("dd/MM/yyyy") _
                                                .Value(Model.FDXzhTnfDate) _
                                                .InputHtmlAttributes(New With {.id = "odtFDXzhTnfDate", _
                                                                               .name = "FDXzhTnfDate", _
                                                                               .style = "height:14px;", _
                                                                               .disabled = "disabled", _
                                                                               .class = "xCN_AllReadOnlyBGColor"}) _
                                                .ButtonTitle("..") _
                                                .ShowButton(False)
                                            %>
                                            <%=Html.ValidationMessageFor(Function(model) model.FDXzhTnfDate)%>
                                      </div>
                                      <div class ="xCN_DivTabDetail2InputData" >
                                            <%=Html.Telerik().DatePicker() _
                                                .Name("XFDXzhBillDue") _
                                                .Format("dd/MM/yyyy") _
                                                .Value(Model.FDXzhBillDue) _
                                                .InputHtmlAttributes(New With {.id = "odtFDXzhBillDue", _
                                                                               .name = "FDXzhBillDue", _
                                                                               .style = "height:14px;", _
                                                                               .disabled = "disabled", _
                                                                               .class = "xCN_AllReadOnlyBGColor"}) _
                                                .ButtonTitle("..") _
                                                .ShowButton(False)
                                            %>
                                            <%=Html.ValidationMessageFor(Function(model) model.FDXzhTnfDate)%>
                                      </div>
                                      
                                      <div class ="xCN_DivTabDetail2InputData" >
                                          <div class="xCN_DivTabDetail2AreaCode">
                                                <input type="text" 
                                                 id="otbFTAreCode" 
                                                 name="FTAreCode" 
                                                 maxlength='5'
                                                 style="width:79px;"
                                                 readonly="readonly"
                                                 class="xCN_AllReadOnlyBGColor"
                                                 value="<%=Html.Encode(Model.FTAreCode)%>" />
                                          </div>
                                      </div>
                                      <div class ="xCN_DivTabDetail2InputData" style="display:none;"><%--ซ่อนไว้ไม่ทำการแสดง--%>
                                          <div class="xCN_DivTabDetail2AreaCode">
                                                <input type="text" 
                                                 id="otbFTShpCode" 
                                                 name="FTShpCode" 
                                                 maxlength='<%=ViewData("ShpMaxLenght")%>' 
                                                 value="<%=Html.Encode(Model.FTShpCode)%>" 
                                                 onfocus = "J005_SETxOldRefCode(document.getElementById('otbFTShpCodeOld'),document.getElementById('otbFTShpCode'))"
                                                 onblur="W_FRMxGetFieldName('<%=tW_ConTroller %>','C_GETtFeildName','otbFTShpCode','otbFTShpName','otbFTShpCodeOld','TCNMShipVia','FTShpCode','FTShpName','<%=ViewData("olaFTShpCode")%>')"
                                                 onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which)" />
                                          </div>
                                          <div class="xCN_DivBrowData">
                                                <a href="javascript:void();" >
                                                <img src="<%=ViewData("oimgBrowse")%>" 
                                                     alt="<%=ViewData("olaCreate").ToString%>" 
                                                     class="xCN_ImgBrowData"  /></a>         
                                          </div>
                                      </div>
                                      
                                  </div>
                                    
                                  <div class="xCN_DivTabDetail2Column3">
                                       <div class ="xCN_DivTabDetail2Caption">
                                            <%=ViewData("olaFTXzhVATInOrEx")%>
                                       </div>
                                       <div class ="xCN_DivTabDetail2Caption">
                                            <%=ViewData("olaFTXzhDstPaid")%>
                                       </div>
                                       <div class ="xCN_DivTabDetail2AreaName">
                                            <input type="text" 
                                                   id="otbFTAreName" 
                                                   name="otbFTAreName"
                                                   style="height:16px;" 
                                                   readonly="readonly" 
                                                   class="xCN_AllReadOnlyBGColor" />
                                       </div>
                                       <div class ="xCN_DivTabDetail2AreaName" style="display:none"><%--ซ่อนไว้ไม่ทำการแสดง--%>
                                            <input type="text" 
                                                   id="otbFTShpName" 
                                                   name="otbFTShpName" 
                                                   readonly="readonly" 
                                                   class="xCN_AllReadOnlyBGColor" />
                                       </div>
                                  </div>
                                  <div class="xCN_DivTabDetail2Column4">
                                      <div class ="xCN_DivTabDetail2InputData">
                                            <%=Html.DropDownListFor(Function(model) model.FTXzhVATInOrEx, _
                                                                    CType(ViewData("XihVATInOrEx"), SelectList), _
                                                                    New With {.id = "ocbFTXzhVATInOrEx", _
                                                                              .name = "FTXzhVATInOrEx", _
                                                                              .class = "xCN_SelectInDetail2 xCN_AllReadOnlyBGColor", _
                                                                              .disabled = "disabled"})%>
                                      </div>
                                      <div class ="xCN_DivTabDetail2InputData">
                                            <%=Html.DropDownListFor(Function(model) model.FTXzhDstPaid, _
                                                                    CType(ViewData("XihDstPaid"), SelectList), _
                                                                    New With {.id = "otbFTXzhDstPaid", _
                                                                              .name = "FTXzhDstPaid", _
                                                                              .class = "xCN_SelectInDetail2 xCN_AllReadOnlyBGColor", _
                                                                              .disabled = "disabled"})%>
                                      </div>
                                  </div>
                             </div> 
                        </div>
                    </div><%--Div2--%>
                    <%--  Div Detail 3--%>
                    <div id="odiDiv3" class ="xCN_DivTabDisplay">
                        <div class="xCN_DivTabDetail">
                            <div class="xCN_AllBackgroundColor xCN_DivTabDetailSub">
                                <div class="xCN_DivTabDetail3Column1">
                                    <div class="xCN_DivTabDetail3Caption">
                                        <%=ViewData("olaFTXzhUsrEnter")%>
                                    </div>                               
                                    <div class="xCN_DivTabDetail3Caption">
                                        <%=ViewData("olaFTSpnCode")%>
                                    </div>
                                    <div class="xCN_DivTabDetail3Caption">
                                        <%=ViewData("olaFTXzhUsrPacker")%>
                                    </div>
                                    <div class="xCN_DivTabDetail3Caption">
                                        <%=ViewData("olaFTXzhUsrChecker")%>
                                    </div>
                                    
                                    <div class="xCN_DivTabDetail3Caption">
                                        <%=ViewData("olaFTXzhUsrSender")%>
                                    </div>
                                </div>
                                <div class="xCN_DivTabDetail3Column2">
                                    <div class="xCN_DivTabDetail3EmpCode">
                                        <input type ="text" 
                                               id ="otbFTXzhUsrEnter" 
                                               name="FTXzhUsrEnter" 
                                               disabled="disabled"
                                               class="xCN_AllReadOnlyBGColor"
                                               value="<%=Html.Encode(Model.FTXzhUsrEnter)%>"
                                               maxlength='<%=ViewData("UsrMaxLenght")%>' />
                                    </div>
                                    <div class="xCN_DivTabDetail3EmpCode">
                                         <input type ="text" 
                                               id="otbFTSpnCode" 
                                               name ="FTSpnCode" 
                                               disabled="disabled"
                                               class="xCN_AllReadOnlyBGColor"
                                               maxlength='<%=ViewData("UsrMaxLenght")%>' 
                                               value="<%=Html.Encode(Model.FTSpnCode)%>" />
                                    </div>
                                    <div class="xCN_DivTabDetail3EmpCode">
                                        <input type ="text" 
                                               id="otbFTXzhUsrPacker" 
                                               name="FTXzhUsrPacker" 
                                               disabled="disabled"
                                               class="xCN_AllReadOnlyBGColor"
                                               maxlength='<%=ViewData("UsrMaxLenght")%>' 
                                               value="<%=Html.Encode(Model.FTXzhUsrPacker)%>" />
                                    </div>
                                    <div class="xCN_DivTabDetail3EmpCode">
                                        <input type ="text" 
                                               id="otbFTXzhUsrChecker" 
                                               disabled="disabled"
                                               class="xCN_AllReadOnlyBGColor"
                                               maxlength='<%=ViewData("UsrMaxLenght")%>' 
                                               value="<%=Html.Encode(Model.FTXzhUsrChecker)%>" />
                                    </div>
                                    <div class="xCN_DivTabDetail3EmpCode">
                                        <input type="text" 
                                               id="otbFTXzhUsrSender" 
                                               name="FTXzhUsrSender" 
                                               disabled="disabled"
                                               class="xCN_AllReadOnlyBGColor"
                                               maxlength='<%=ViewData("UsrMaxLenght")%>' 
                                               value="<%=Html.Encode(Model.FTXzhUsrSender)%>" />
                                    </div>
                                    
                                </div>
                                <div class="xCN_DivTabDetail3Column3">
                                    <div class ="xCN_DivBrowData xCN_DivBrowDataSetTopMargin">
                                        <input id="ocmUsrEnter" 
                                              class="xCN_InputBottomBrowse"  
                                              name="ocmUsrEnter" 
                                              disabled="disabled"
                                              value="..."
                                              type="button"/>
                                    </div>
                                    <div class ="xCN_DivBrowData xCN_DivBrowDataSetTopMargin">
                                        <input id="ocmSpn" 
                                               class="xCN_InputBottomBrowse" 
                                               name="ocmSpn" 
                                               disabled="disabled"
                                               value="..."
                                               type="button" />
                                    </div>
                                    
                                    <div class ="xCN_DivBrowData xCN_DivBrowDataSetTopMargin">
                                        <input id="ocmUsrPacker" 
                                               class="xCN_InputBottomBrowse"
                                               name="ocmUsrPacker" 
                                               disabled="disabled"
                                               value="..."
                                               type="button" />
                                    </div>
                                    
                                    <div class ="xCN_DivBrowData xCN_DivBrowDataSetTopMargin">
                                        <input id="ocmUsrChecker"
                                               class="xCN_InputBottomBrowse" 
                                               name="ocmUsrChecker" 
                                               disabled="disabled"
                                               value="..."
                                               type="button" />
                                    </div>
                                    
                                    <div class ="xCN_DivBrowData xCN_DivBrowDataSetTopMargin">
                                        <input id="ocmUsrSender" 
                                               class="xCN_InputBottomBrowse" 
                                               name="ocmUsrSender" 
                                               disabled="disabled"
                                               value="..."
                                               type="button" />
                                    </div>
                                    
                                    
                                </div>
                                <div class="xCN_DivTabDetail3Column4">
                                    <div class="xCN_DivTabDetail3EmpName">
                                        <input type="text" 
                                               id="otbUsrEnterName" 
                                               name="otbUsrEnterName" 
                                               readonly="readonly"  
                                               class="xCN_AllReadOnlyBGColor" />
                                    </div>
                                    <div class="xCN_DivTabDetail3EmpName">
                                        <input type="text" 
                                               id="otbSpnName" 
                                               name="otbSpnName" 
                                               readonly="readonly"  
                                               class="xCN_AllReadOnlyBGColor" />
                                    </div>
                                    <div class="xCN_DivTabDetail3EmpName">
                                        <input type="text" 
                                               id="otbUsrPackerName" 
                                               name="otbUsrPackerName" 
                                               readonly="readonly"  
                                               class="xCN_AllReadOnlyBGColor" />
                                    </div>
                                    <div class="xCN_DivTabDetail3EmpName">
                                        <input type="text" 
                                               id="otbUsrCheckerName" 
                                               name="otbUsrCheckerName" 
                                               readonly="readonly"  
                                               class="xCN_AllReadOnlyBGColor" />
                                    </div>
                                    <div class="xCN_DivTabDetail3EmpName">
                                        <input type="text" 
                                               id="otbUsrSenderName" 
                                               name="otbUsrSenderName" 
                                               readonly="readonly"  
                                               class="xCN_AllReadOnlyBGColor" />
                                    </div>
                                    
                                </div>
                                <div class="xCN_DivTabDetail3Column5">
                                    <div class="xCN_DivDetail3ActiveDoc">
                                        <div class ="xCN_DivDetail3CheckBoxActiveDoc">
                                            <input id="FNXihStaDocAct" 
                                                   checked="checked" 
                                                   disabled="disabled"
                                                   name="FNXihStaDocAct" 
                                                   type="checkbox" 
                                                   value="true" />
                                        </div>
                                        <div class ="xCN_DivDetail3ActiveDocCaption">
                                            <%=ViewData("olaFNXzhStaDocAct")%>
                                        </div>
                                    </div>
                                    
                                </div>
                            
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
            <%--Document--%>
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
                                <%=ViewData("olaFTXzhDocNo")%>
                            </div>
                            <div class="xCN_DivDocNoColumn1Caption">
                                <%=ViewData("olaFDXzhDocDate")%>
                            </div>
                            <div class="xCN_DivDocNoColumn1Caption">
                                <%=ViewData("olaFTDptCode")%>
                            </div>
                            <div class="xCN_DivDocNoColumn1Caption">
                                <%=ViewData("olaFTUsrCode")%>
                            </div>
                            <div class="xCN_DivDocNoColumn1Caption">
                                <%=ViewData("olaFTXzhApvCode")%>
                            </div>
                        </div>
                        <div class="xCN_DivDocNoColumn2">
                            <div class="xCN_DivDocNoColumn2Sub">
                                <input type ="text" id="otbFTXzhDocNo" name="FTXzhDocNo" 
                                        maxlength='<%=ViewData("MaxLenght")%>' 
                                        readonly="readonly" 
                                        class="xCN_AllReadOnlyBGColor"
                                        value="<%=Model.FTXzhDocNo%>" 
                                        onfocus="otbFTXzhDocNo_onfocus()" />
                            </div>
                            <div class="xCN_DivDocNoColumn2Sub">
                                <%=Html.Telerik().DatePicker() _
                                        .Name("X_FDXzhDocDate") _
                                        .Value(Model.FDXzhDocDate) _
                                        .Format("dd/MM/yyyy") _
                                        .ButtonTitle("..") _
                                        .ShowButton(False) _
                                        .InputHtmlAttributes(New With {.id = "odtFDXzhDocDate", _
                                                                       .name = "FDXzhDocDate", _
                                                                       .disabled = "disabled", _
                                                                       .style = "width:110px;", _
                                                                       .class = "xCN_AllReadOnlyBGColor"})
                                %>    
                            </div>
                            <div class="xCN_DivDocNoColumn2Sub">
                                 <input id="otbDptName" class="xCN_AllReadOnlyBGColor" name="otbDptName"
                                        readonly="readonly" type="text" />
                            </div>
                            <div class="xCN_DivDocNoColumn2Sub">
                                <input type="text" id="otbUsrName" 
                                        name="otbUsrName" 
                                        readonly="readonly"  
                                        class="xCN_AllReadOnlyBGColor" />
                            </div>
                            <div class="xCN_DivDocNoColumn2Sub">
                                 <input type="text" 
                                        id="otbApvUsr" name="otbApvUsr"
                                        readonly="readonly"  
                                        class="xCN_AllReadOnlyBGColor" />
                            </div>
                        
                        </div>
                    </div>
                </div>
        </div>
        <%-------------------Detail DT---------------------------%>   
        <div class="xCN_AllBorderColor xCN_DivDetailDT">
            <div id="odiDetailDT" class ="xCN_DivDetailDTSub" onload="__designer:mapid=&quot;a67&quot;">
                <div id="Div1" class ="xCN_DivGridDetail">
                    <%  'declare the grid and enable features
                        Dim oDataDT As IEnumerable(Of Adasoft.WebPos.Models.cmlTACTPzDT) = ViewData("DataDT")
                        Dim gridBuilder = Html.Telerik().Grid(oDataDT) _
                                    .Name("GridDT") _
                                    .HtmlAttributes(New With {.style = "width:99.8%"}) _
                                    .Scrollable(Function(o) o.Height(170)) _
                                    .Footer(False) _
                                    .Selectable()
                            
                        gridBuilder.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                              .Select("C_DAToBindingGridDT", tW_Controller) _
                              ))
                         
                               
                            'Add grid columns
                        gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FNXzdSeqNo).Title(ViewData("olaRowID")).Width(50) _
                                .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                            gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTPdtCode).Title(ViewData("olaPdtCode")).Width(150) _
                                .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                            gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTPdtName).Title(ViewData("olaPdtName")).Width(150) _
                                .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                        gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTXzdUnitName).Title(ViewData("olaPdtUnitName")).Width(60) _
                                .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                        gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FCXzdQty).Title(ViewData("olaPdtUnit")).Width(90).Format("{0:#,##0." & StrDup(nW_DecLength, "0") & "}") _
                                .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                .HtmlAttributes(New With {.style = "text-align:right; font-size:12px;"}))
                        gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FCXzdSetPriceRte).Title(ViewData("olaPdtUnitPrice")).Width(100).Format("{0:#,##0." & StrDup(nW_DecLength, "0") & "}") _
                                .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                .HtmlAttributes(New With {.style = "text-align:right; font-size:12px;"}))
                        gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTXzdDisChgTxtRte).Title(ViewData("olaDiscount")).Width(92).Format("{0:#,##0." & StrDup(nW_DecLength, "0") & "}") _
                                .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                .HtmlAttributes(New With {.style = "text-align:right; font-size:12px;"}))
                        gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FCXzdNet).Title(ViewData("olaAmount")).Width(113).Format("{0:#,##0." & StrDup(nW_DecLength, "0") & "}") _
                                .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                .HtmlAttributes(New With {.style = "text-align:right; font-size:12px;"}))
                        gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTPunCode).Title("PunCode").Hidden(True))
                         gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FCXzdFactor).Title("Factor").Hidden(True))
                         gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FCXzdDis).Title("Dis").Hidden(True))
                        gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FCXzdSetPrice).Title("SetPrice").Hidden(True))
                        gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTXzdDisChgTxt).Title("DisTxt").Hidden(True))
                        gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTSrnCode).Title("Serial").Hidden(True))
                        gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FCXzdDisRte).Title("DisRte").Hidden(True))
                         gridBuilder.DataKeys(Function(Key) Key.Add(Function(model) model.FNXzdSeqNo))
                            
                        gridBuilder.ClientEvents(Function(Events) Events.OnLoad("grid_onLoad"))
                        gridBuilder.RowAction(Function(row) (row.Selected = row.DataItem.FNXzdSeqNo.Equals(ViewData("id"))))
                            
                            'Render the grid
                            gridBuilder.Render()
                    %>
                </div>
            </div>
        </div>
        <%-------------------Detail Footer-----------------------%>
        <div id="odiDetailFooter" class ="xCN_AllBackgroundColor xCN_AllBorderColor xCN_DivDetailFooter">
        
            <%--ล่างซ้าย--%>
            <div id="odiHistory" class ="xW_DivDetailFooterHis">
                    <div class="xW_DivRemark">
                        <%----------------------Div Bottom 1----------------------------%>
                        <div id="DivBottom1" class="xCN_DivTabDetailBottom">
                            <div class="xW_DivRemarkTop" style=" text-align:left;">
                                <textarea id="otbRmk" name="otbRmk"  rows ="1"  cols="1"
                                        disabled="disabled"
                                        class="xW_TextAreaRemark xCN_AllReadOnlyBGColor" 
                                        onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which)"
                                ><%=Model.FTXzhRmk %></textarea>
                            </div>
                            <div class="xW_DivRemarkBottom">
                                <label id="olaGndTxt" class="xW_LabelGrandText" >
                                    <%=Model.FTXzhGndText %>
                                </label>
                            </div>
                        </div>                        
                        <%--หัวแทปล่าง--%>
                        <div class="xCN_DivTabToppicBottom">
                            <a href="javascript:void();"
                                onclick="{J010_SHWxTabData(0,'DivBottom1');J009_SHWxTabBottom(0,'odiDivHis_Remark')}">
                                <div id="odiDivHis_Remark" class="xCN_DivTabBottomActive">
                                        <%=ViewData("olaHis_Remark")%>
                                </div>
                            </a>
                        </div>                        
                    </div>    
            </div>
            
            <%--ล่างขวา--%>
            <div id="odiDetailFooterCalNet" class ="xCN_DivDetailFooterCalNet">
                <div class="xCN_DivDetailFooterCalNetColumn1">
                    <div class="xCN_DivDetailFooterCalNetColumn1Sub">
                        <%=ViewData("olaFCXzhTotal")%>
                    </div>
                    <div class="xCN_DivDetailFooterCalNetColumn1Sub">
                        <div class="xCN_DivDetailFooterCalNetDisCap" style="margin-right:20px;" >
                            <%=ViewData("olaFCXzhDis")%>                        
                        </div>
                        <div class ="xCN_DivDetailFooterCalNetDisData">
                           <input id="otbFootDis" 
                                   readonly="readonly"
                                   onkeydown="return otbFootDis_onkeydown()"
                                   class="xCN_AllReadOnlyBGColor"
                                   value="<%=Model.FTXzhDisChgTxt%>" 
                                   type="text" />                 
                        </div>

                    </div>
                    <div class="xCN_DivDetailFooterCalNetColumn1Sub">                        
                        <div class="xCN_DivDetailFooterCalNetGrandAECap" style="margin-right:20px;">
                            <%=ViewData("olaFCXzhGndAE")%>                        
                        </div>
                        <div class ="xCN_DivDetailFooterCalNetGrandAEData">
                           <input id="otbGndAE" 
                                    readonly="readonly" 
                                    ondblclick="{this.value='';W_DATxCalGndAE()}" 
                                    type="text" 
                                    value="<%=Model.FTXzhRefAE %>" 
                                    class="xCN_AllReadOnlyBGColor" />                   
                        </div>
                    </div>
                    <div class="xCN_DivDetailFooterCalNetColumn1Sub">
                        <%=ViewData("olaFCXzhVatable")%>
                    </div>
                    <div class="xCN_DivDetailFooterCalNetColumn1Sub">
                        <div class="wCN_DivDetailFooterCalNetVATCap" >
                            <%=ViewData("olaFCXzhVat")%>                        
                        </div>
                        <div class="xCN_DivBrowData xCN_DivBrowDataSetTopMargin xCN_DivTabDisplay">
                           <input type="button" 
                               id="ocmBrwVAT" 
                               value='...' 
                               class="xCN_InputBottomBrowse" 
                               onclick="ocmBrwVAT_onclick();" />
                        </div>
                        <div class ="wCN_DivDetailFooterCalNetVATData">
                           <input id="otbVatRate"
                                   readonly="readonly"
                                   class="xCN_AllReadOnlyBGColor"
                                   value="<%=Model.FCXzhVATRate%>" />
                           
                        </div>
                        <div class ="xCN_DivDetailFooterCalNetPersent">
                             <label>%</label>
                        </div>
                    </div>
                    <div class="xCN_DivDetailFooterCalNetColumn1Sub">
                        <%=ViewData("olaFCXzhGrand")%>
                    </div>
         
                </div>
                <div class="xCN_DivDetailFooterCalNetNumberMain">
                    <div class="xCN_DivDetailFooterCalNetNumberSub">
                        <input id="otbFCXzhTotal" 
                                   class="xCN_AllReadOnlyBGColor" 
                                   name="FCXzhTotal" 
                                   readonly="readonly"
                                   type="text" 
                                   value="<%=Model.FCXzhTotal%>" />
                    </div>
                    <div class="xCN_DivDetailFooterCalNetNumberSub">
                       <input type="text" 
                               id="otbFCXzhDis"
                               name="FCXzhDis" 
                               readonly="readonly"
                               value="<%=Model.FCXzhDis%>" 
                               class = "xCN_AllReadOnlyBGColor"/>
                    </div>
                    <div class="xCN_DivDetailFooterCalNetNumberSub">
                        <input type="text" 
                               id="otbFCXzhGndAE" 
                               name="FCXzhGndAE" 
                               readonly="readonly"
                               value="<%=Model.FCXzhGndAE %>" 
                               class = "xCN_AllReadOnlyBGColor"/>
                    </div>
                    <div class="xCN_DivDetailFooterCalNetNumberSub">
                       <input type ="text" 
                             id="otbFCXzhAftDisChg" 
                             name="FCXzhAftDisChg" 
                             readonly="readonly"
                             value="<%=Model.FCXzhAftDisChg %>" 
                             class="xCN_AllReadOnlyBGColor"/>
                    </div>
                    <div class="xCN_DivDetailFooterCalNetNumberSub">
                       <input type ="text" 
                             id="otbFCXzhVat"  
                             name ="FCXzhVat" 
                             readonly="readonly"
                             value="<%=Model.FCXzhVat %>" 
                             class = "xCN_AllReadOnlyBGColor"/>
                    </div>
                    <div class="xCN_DivDetailFooterCalNetNumberSub">
                         <input  type ="text" 
                                  id="otbFCXzhGrand" 
                                  readonly="readonly"
                                  value="<%=Model.FCXzhGrand %>" 
                                  class= "xCN_AllReadOnlyBGColor"/>
                    </div>
                </div>
            </div>
            
        </div>
    </div>
    <% End Using %>
<%--    </form>--%>
<% Html.Telerik().ScriptRegistrar().Globalization(True)%>

<script type="text/javascript">
    var nW_StaPrcDoc = 0;
    var nW_StaDocCancel = 0;
    var nW_StaDoc = 0;
    var tW_PdtCodeBeFore;
    var tW_DocNoBeFore = '<%=Model.FTXzhDocNo %>';
    var oW_xmlHttp;
    var tValueReturn;
    var tW_Menu = 'omnPurPO';
    var tW_ReadOnlyColor = '#FC9';
    var nW_DecLength = '<%=ViewData("nVB_CNDecAmtForShw") %>';
    var tW_RteCodeB4Edit;
    var tW_PdtCode; //*PP 10-05-12 เก็บรหัสสินค้า
    var tW_RptDefName; // Jaruporn เก็บชื่อรายงาน defualt
    var tW_RptUsrName; // Jaruporn เก็บชื่อรายงาน  User Defind
    var tW_RptSel; // Jaruporn เก็บสถานะการเลือกดูรายงาน
    var tW_Controller = "cvcTACTPoHD";
    var tW_BeforeEditData;
    var tW_Table = "TACTPoHD";
    var tW_FieldDocNo = 'FTXohDocNo';
    var tW_RptType = '0';
    var tW_TableHDRef = 'TACTPqHD';
    var tW_PassedValue; //ข้อมูลที่ได้จากหน้าค้นหา *CH 16-01-2013
    var tW_FlagDis; //1 Grid, 2 Footer *CH 21-01-2013

    function W_DATxBrowseMaster(ptObjCode, ptObjName, ptCase) {
        try {
            //var ptCase = "AreaCode";
            var tDate = J002_GETtTimeStamp();
            var tReturnedValue = showModalDialog('<%=Url.Action("C_BRWxMaster",tW_Controller) %>' + '?ptCase=' + ptCase + '&ptDate=' + tDate, "Passed String", "dialogWidth:800px; dialogHeight:500px; status:no; center:yes;titlebar =0");
            if (tReturnedValue != null) {
                if (tReturnedValue != '12233344445555566666677777778888888899999999900000000001223334444555556666667777777888888889999999990000000000') {
                    document.getElementById(ptObjCode).value = tReturnedValue.split(";")[0];
                    document.getElementById(ptObjName).value = tReturnedValue.split(";")[1];
                }
            }
        }
        catch (ex) {
            J002_SHWxMsgError('W_DATxBrowseMaster', ex);
        }
    }
    function W_FRMxGetFieldName(ptController, ptAction, ptObjCodeId, ptObjNameId, ptObjCodeOldId, ptTblName, ptFieldCode, ptFieldName, ptMsgErr) {
        var tMsgNoData = '<%=ViewData("tMsgDAT_Notfound001")%>' + ptMsgErr;
        J002_GETxFieldName(ptController, ptAction, ptObjCodeId, ptObjNameId, ptObjCodeOldId, ptTblName, ptFieldCode, ptFieldName, tMsgNoData);
    }

    function W_FRMxIniatial() {
        tJ002_VirtualDirectory = '<%=Session("VirtualDirectory") %>';
        tJ003_VirtualDirectory = '<%=Session("VirtualDirectory") %>';
        tJ004_VirtualDirectory = '<%=Session("VirtualDirectory") %>';
        //J011_SETxComboSelected("ocbFTXzhVATInOrEx", '<%=Model.FTXzhVATInOrEx %>');
        //J011_SETxComboSelected("ocbFTXzhDstPaid", '<%=Model.FTXzhDstPaid %>');
        W_GETxUsrAndDptName();
        W_GETbRteDetail(true);
        W_GetApp();
        W_GetSplload(true);
        W_FRMxGetFieldName(tW_Controller, 'C_GETtFeildName', 'otbFTAreCode', 'otbFTAreName', 'otbFTAreCodeOld', 'TCNMArea', 'FTAreCode', 'FTAreName', '<%=ViewData("olaFTAreCode")%>');
        W_SETxDocDisplayStatus();
        W_SHWxDocStatus('odiNoneApprove', 'odiApprove', 'odiCancel');
        J010_SHWxTabData(0, 'odiDiv1', 'odiDiv2', 'odiDiv3');
        J010_SHWxTabData(0, 'DivBottom1');
        J009_SHWxTabBottom(0, 'DivHis_Remark');
        W_DATxCalFooter();
        var tDateTimeNow = W_GETtDateTimeNow();
        //W_GetDataPi('', '', tDateTimeNow);
        W_SETtGetValueName();
        tW_BeforeEditData = W_GETtDataHDString();
    }
    function W_GETtDataHDString() {
        try {
            var tStr = '';
            tStr += document.getElementById('otbFTSplCode').value;
            tStr += document.getElementById('orbCash').checked == true ? '1' : '2';
            //tStr += document.getElementById('otbFNXzhCrTerm').value;
            tStr += $('#otbXFNXzhCrTerm').val();//*CH 08-01-2013
            tStr += document.getElementById('otbFTXzhRefInt').value;
            tStr += document.getElementById('otbFTRteCode').value;
            tStr += document.getElementById('odtFDXzhTnfDate').value;
            tStr += document.getElementById('otbFTShpCode').value;
            tStr += document.getElementById('odtFDXzhDueDate').value;
            tStr += document.getElementById('ocbFTXzhVATInOrEx').value;
            tStr += document.getElementById('otbFTXzhDstPaid').value;
            tStr += document.getElementById('FNXihStaDocAct').value;
            tStr += document.getElementById('otbFTXzhDocNo').value;
            tStr += document.getElementById('odtFDXzhDocDate').value;
            tStr += document.getElementById('otbRmk').value;
            tStr += document.getElementById('otbFootDis').value;
            tStr += document.getElementById('otbGndAE').value;
            tStr += document.getElementById('otbVatRate').value;
            return tStr;
        }
        catch (ex) {
            J002_SHWxMsgError("W_GETtDataHDString", ex);
        }
    }

    function W_SETxDocDisplayStatus() {
        if ('<%=Model.FTXzhStaDoc%>' == '1') {
            nW_StaDoc = 1;
            W_SETxDisableDocNo(true);
        }
        if ('<%=Model.FTXzhStaDoc%>' == '3') {
            nW_StaDoc = 1;
            nW_StaDocCancel = 1;
            W_SETxDisableAll(true);
        }
        if ('<%=Model.FTXzhStaPrcDoc%>' == '1') {
            nW_StaDoc = 1;
            nW_StaPrcDoc = 1;
            W_SETxDisableAll(true);
        }
    }

    function W_SHWxDocStatus(ptNonAppID, ptAppID, ptCancelID) {
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

    //ning 14/07/2010
    function W_SETtGetValueName() {

        W_FRMxGetFieldName(tW_Controller, 'C_GETtFeildName', 'otbFTXzhUsrSender', 'otbUsrSenderName', 'otbFTXzhUsrSenderOld', 'TSysUser', 'FTUsrCode', 'FTUsrName', '<%=ViewData("olaFTXzhUsrSender")%>');
        W_FRMxGetFieldName(tW_Controller, 'C_GETtFeildName', 'otbFTXzhUsrChecker', 'otbUsrCheckerName', 'otbFTXzhUsrCheckerOld', 'TSysUser', 'FTUsrCode', 'FTUsrName', '<%=ViewData("olaFTXzhUsrChecker")%>');
        W_FRMxGetFieldName(tW_Controller, 'C_GETtFeildName', 'otbFTXzhUsrPacker', 'otbUsrPackerName', 'otbFTXzhUsrPackerOld', 'TSysUser', 'FTUsrCode', 'FTUsrName', '<%=ViewData("olaFTXzhUsrPacker")%>');
        W_FRMxGetFieldName(tW_Controller, 'C_GETtFeildName', 'otbFTSpnCode', 'otbSpnName', 'otbSpnOld', 'TCNMSpn', 'FTSpnCode', 'FTSpnName', '<%=ViewData("olaFTSpnCode")%>');
        W_FRMxGetFieldName(tW_Controller, 'C_GETtFeildName', 'otbFTXzhUsrEnter', 'otbUsrEnterName', 'otbFTXzhUsrEnterOld', 'TSysUser', 'FTUsrCode', 'FTUsrName', '<%=ViewData("olaFTXzhUsrEnter")%>');
        W_FRMxGetFieldName(tW_Controller, 'C_GETtFeildName', 'otbFTShpCode', 'otbFTShpName', 'otbFTShpCodeOld', 'TCNMShipVia', 'FTShpCode', 'FTShpName', '<%=ViewData("olaFTShpCode")%>');
    }



    //*PP 10-05-12
    function W_GetDataPi(ptDocNo, ptPdtCode, ptDateTime) {
        //alert(ptDocNo + ',' + ptPdtCode + ',' + ptDateTime);//return false;
        //        var tString = '<%=Url.Action("C_SHWxHistoryBySpl",tW_Controller) %>' + "?ptDocNo=" + ptDocNo + "&ptPdtCode=" + ptPdtCode + "&ptDateTime=" + ptDateTime;
        //        $('#divSpl').load(tString);

        //        var tString = '<%=Url.Action("C_SHWxHistoryByCst",tW_Controller) %>' + "?ptDocNo=" + ptDocNo + "&ptPdtCode=" + ptPdtCode + "&ptDateTime=" + ptDateTime;
        //        $('#divPiCst').load(tString);

        //        var tString = '<%=Url.Action("C_SHWxOthersPrice",tW_Controller) %>' + "?ptPdtCode=" + ptPdtCode + "&ptDateTime=" + ptDateTime;
        //        $('#divOthersPrice').load(tString);
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
            var tdate = W_GETtDateTimeNow();
            J004_FRMxNewDoc(tdate, 'C_FRMxNewDoc', tW_Controller);
        }
        catch (ex) {
            J002_SHWxMsgError('W_FRMxNewDoc', ex);
        }
        finally {
            J003_DISxWaiting();
        }
    }

    function W_FRMxSaveDoc() {
        var tdate = W_GETtDateTimeNow();
        J004_FRMxSaveDoc(tdate, 'wApvTACTPo');
        nW_StaDoc = 1;
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

            var oDoc = document.getElementById('otbFTXzhDocNo');
            var oBchcode = document.getElementById('otbFTBchCode');
            var oDocType = document.getElementById('otbFTXzhDocType');
            var tDocNo = oDoc.value;
            var aError = new Array();
            if (tDocNo != '') {
                var tdate = W_GETtDateTimeNow();
                var tReturn = J004_FRMxDelDoc(tdate, 'C_FRMxDelDoc', tW_Controller, 'otbFTXzhDocNo', oDocType.value, oBchcode.value, aError);
                if (tReturn == '0') {
                    window.location = '<%=Url.Action("wApvTACTPo",tW_Controller) %>';
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
            var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Cancel%>';
            var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
            var tPwdAllow = '<%=Session("bVB_CNPwdAllow") %>';
            var bAllow = J002_CHKtCheckAuthorize(tW_Menu, tAuthor, tPwdAllow, tMsgNotAuthorize);
            if (bAllow == false) {
                return false;
            }
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

            var oBchcode = document.getElementById('otbFTBchCode');
            var oDocType = document.getElementById('otbFTXzhDocType');
            var tdate = W_GETtDateTimeNow();
            var aError = new Array();
            var tReturn = J004_FRMxCancelDoc(tdate, 'C_FRMxCancelDoc', tW_Controller, 'otbFTXzhDocNo', oDocType.value, oBchcode.value, aError);
            if (tReturn == '0') {
                nW_StaDocCancel = 1;
                nW_StaDoc = 3;
                W_SHWxDocStatus('odiNoneApprove', 'odiApprove', 'odiCancel');
                W_CLRxTextBox();
                W_SETxDisableAll(true);
            }
            if (aError[0] != null && aError[0] != '') {
                alert(aError[0]);
            }
        }
        catch (ex) {
            J002_SHWxMsgError('W_FRMxCancelDoc', ex);
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
            if (!confirm('<%=ViewData("tMsgConfirmPost") %>')) {
                return false;
            }

            var oBchcode = document.getElementById('otbFTBchCode');
            var oDocType = document.getElementById('otbFTXzhDocType');

            var tdate = W_GETtDateTimeNow();
            var tReturn = J004_FRMxPostDoc(tdate, 'C_FRMxPostDoc', tW_Controller, 'otbFTXzhDocNo', 'odtFDXzhDocDate', oDocType.value, oBchcode.value, tApvCode);
            if (tReturn == '0') {
                nW_StaPrcDoc = 1;
                W_SHWxDocStatus('odiNoneApprove', 'odiApprove', 'odiCancel');
                W_CLRxTextBox();
                W_SETxDisableAll(true);
                document.getElementById('otbFTXzhApvCode').value = document.getElementById('otbFTUsrCode').value;
                W_GetApp();
            }
        }
        catch (ex) {
            J002_SHWxMsgError('W_FRMxPostDoc', ex)
        }
        finally {
            J003_DISxWaiting();
        }
    }

    function W_FRMxCopyDoc() {
        try {
            var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Add%>';
            var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
            var tPwdAllow = '<%=Session("bVB_CNPwdAllow") %>';
            var bAllow = J002_CHKtCheckAuthorize(tW_Menu, tAuthor, tPwdAllow, tMsgNotAuthorize);
            if (bAllow == false) {
                return false;
            }
            if (nW_StaDoc == 0) {
                alert('<%=ViewData("olatMsgNoCopyNoSave")%>');
                return 0;
            }
            var nCountSN = W_GETtPdtSNCount();
            if (nCountSN > 0) {
                var bConfirm = confirm('<%=ViewData("tMsgConfirmDelPdtSN") %>');
                if (bConfirm == false) {
                    return false;
                }
                W_DELtPdtSerial();
                W_SETxRebindGrid();
            }
            W_CLRxDocFlag();
            W_CLRxTextBox();
            W_SETxDisableAll(false);
            W_SHWxDocStatus('odiNoneApprove', 'odiApprove', 'odiCancel');
            //reset docNo
            document.getElementById("otbFTXzhDocNo").value = '<%=ViewData("DocNoFormat")%>';
            J002_SETxReadOnly("otbFTXzhDocNo", true);
            //reset User
            document.getElementById("otbFTUsrCode").value = '<%=ViewData("UsrCode")%>';
            document.getElementById("otbFTDptCode").value = '<%=ViewData("DptCode")%>';
            W_GETxUsrAndDptName();
            //reset odiApprove User
            document.getElementById("otbApvUsr").value = '';
            document.getElementById("otbFTXzhApvCode").value = '';
            //clear sta doc
            document.getElementById("otbFTXzhStaDoc").value = '';
            //reset date object
            var tDate = W_GETtDateNow();
            document.getElementById("odtFDXzhDocDate").value = tDate;
            document.getElementById("odtFDXzhTnfDate").value = tDate;
            document.getElementById("odtFDXzhDueDate").value = tDate;
        }
        catch (ex) {
            J002_SHWxMsgError('W_FRMxCopyDoc', ex);
        }
        finally {
            J003_DISxWaiting();
        }
    }


    function W_FRMGetRptNameStateChage() {

        if (oW_xmlHttp.readyState == 4) {
            if (oW_xmlHttp.status == 200) {
                var valueFis = oW_xmlHttp.responseText;
                //alert("line 707 " + valueFis);
                if (valueFis.split("|")[0] != null && valueFis.split("|")[0] != "") {
                    alert(valueFis.split("|")[0]);
                    return 0;
                }
                tW_RptDefName = valueFis.split("|")[1];
                tW_RptUsrName = valueFis.split("|")[2];
                tW_RptSel = valueFis.split("|")[3];
            }
        }
    }


    function W_FRMGetRptName(ptControllerName, ptActionName, ptTblName, ptWhere) {
        W_CRExXMLHttpRequest();
        oW_xmlHttp.open('GET', '/' + ptControllerName + '/' + ptActionName + '?ptTblName=' + ptTblName + '&ptWhere=' + ptWhere, false);
        oW_xmlHttp.onreadystatechange = W_FRMGetRptNameStateChage;
        oW_xmlHttp.send(null);
    }

    function W_FRMxShwPrintDialog() {
        if (nW_StaDoc == 1) {
            var tLang = '<%=ViewData("Language")%>';
            var tDocNo = document.getElementById('otbFTXzhDocNo').value;
            var tDocDate = document.getElementById('odtFDXzhDocDate').value;
            var tLang = '<%=Session("tVB_LastLang") %>';
            var tSplOrCst = 'Supplier';
            var tDocType = document.getElementById("otbFTXzhDocType").value;
            var tBchCode = document.getElementById("otbFTBchCode").value;
            var tTableName = tW_Table;
            var tFedCode = tW_FieldDocNo;
            var tRptType = tW_RptType;

            var tCstOrSplCode = document.getElementById('otbFTSplCode').value;
            J004_FRMxShwPrintForm(tDocNo, tDocDate, tLang, tSplOrCst, tDocType, tBchCode, tTableName, tFedCode, tRptType, tCstOrSplCode);
        }
    }

    function W_FRMxCloseDoc(ptFlag) {
        //var tUrl = '<%=Url.Action("wApvTACTPo","cvcCNPanal", New With {.ptMenuGrpName = "Purchase"}) %>';
        //window.location = tUrl;
        var tDataTimeNow = J002_GETtTimeStamp();
        //*CH 1 ไปรายการโปรด ; Not1 ไปหน้าซื้อ
        var tUrl;
        if (ptFlag == '1') {
            tUrl = '<%=Url.Action("Index","Home") %>' + '?ptDate=' + tDataTimeNow;
        } else {
            tUrl = '<%=Url.Action("Index","cvcCNPanal") %>?ptMenuGrpName=Purchase';
        }
        window.location = encodeURI(tUrl);
    }

    function W_CHKbPostOrDelStatus() {
        return (nW_StaDocCancel == 1 || nW_StaPrcDoc == 1);
    }

    function W_CLRxDocFlag() {
        nW_StaPrcDoc = 0;
        nW_StaDocCancel = 0;
        nW_StaDoc = 0;
    }

    function W_SHWxOpenMasterDialog(ptObjCode, ptObjName, ptCase) {
        if (W_CHKbPostOrDelStatus() == true) {
            alert('<%=ViewData("olatMsgNoEdit")%>');
            return false;
        }
        //var tDate = J002_GETtTimeStamp();
        //var tWhere = "";
        //var tUrl = '<%=Url.Action("C_BRWxMaster",tW_Controller) %>';
        //var tReturnedValue = J006_BRWxMaster(tUrl, tWhere, ptObjCode, ptObjName, ptCase);
        //var tReturnedValue = showModalDialog(tUrl + '?ptCase=' + ptCase + '&ptWhere=' + tWhere + '&ptDate=' + tDate, "Passed String", "dialogWidth:800px; dialogHeight:500px; status:no; center:yes;titlebar =0");
        //OpenMasterDialog(pnNoRender, pobjTextCode, pobjTextName, pBrowseFile, ptWidth, ptHeight, ptParameter, ptDate, pobjTextName2, pobjTextName3, pobjTextName4);
        
    }


    function W_SETxDisableDocNo(pbStatus) {
        //Disable DocNo and redio CshOrCrd
        J002_SETxReadOnly('otbFTXzhDocNo', pbStatus);
        J002_SETxReadOnly('otbFTSplCode', pbStatus);
        //J002_SETxReadOnly('otbFNXzhCrTerm', pbStatus);
        document.getElementById('orbCash').disabled = pbStatus;
        document.getElementById('orbCredit').disabled = pbStatus;
    }

    function W_SETxDisableAll(pbStatus) {
        //------Text
        J002_SETxReadOnly('otbFTSplCode', pbStatus);
        J002_SETxReadOnly('otbFTXzhRefInt', pbStatus);
        //J002_SETxReadOnly('otbFNXzhCrTerm', pbStatus);
        J002_SETxReadOnly('otbXFNXzhCrTerm', pbStatus);//*CH 08-01-2012        
        J002_SETxReadOnly('otbFTRteCode', pbStatus);
        J002_SETxReadOnly('otbFTShpCode', pbStatus);
        J002_SETxReadOnly('otbFTXzhUsrEnter', pbStatus);
        J002_SETxReadOnly('otbFTSpnCode', pbStatus);
        J002_SETxReadOnly('otbFTXzhUsrPacker', pbStatus);
        J002_SETxReadOnly('otbFTXzhUsrChecker', pbStatus);
        J002_SETxReadOnly('otbFTXzhUsrSender', pbStatus);
        J002_SETxReadOnly('otbFTXzhDocNo', pbStatus);
        J002_SETxReadOnly('otbPdtCode', pbStatus);
        J002_SETxReadOnly('otbQty', pbStatus);
        J002_SETxReadOnly('otbSetPriceRte', pbStatus);
        J002_SETxReadOnly('otbDisTxtRte', pbStatus);
        J002_SETxReadOnly('otbVatRate', pbStatus);
        //------Text

        //------Button
        document.getElementById("ocmUsrEnter").disabled = pbStatus;
        document.getElementById("ocmSpn").disabled = pbStatus;
        document.getElementById("ocmUsrPacker").disabled = pbStatus;
        document.getElementById("ocmUsrChecker").disabled = pbStatus;
        document.getElementById("ocmUsrSender").disabled = pbStatus;
        //document.getElementById("ocmBrwPdt").disabled = pbStatus;
        //document.getElementById("ocmDis").disabled = pbStatus;
        //document.getElementById("ocmAdd").disabled = pbStatus;
        //document.getElementById("ocmDelete").disabled = pbStatus;
        //document.getElementById("ocmFootDis").disabled = pbStatus;
        //document.getElementById("ocmGndAE").disabled = pbStatus;
        document.getElementById("ocmBrwVAT").disabled = pbStatus;
        //document.getElementById("oimBrwRefDoc").disabled = pbStatus;
        //------Button

        //------radio button
        document.getElementById("orbCash").disabled = pbStatus;
        document.getElementById("orbCredit").disabled = pbStatus;
        //------radio button

        //------Combo
        //document.getElementById("ocbUnit").disabled = pbStatus;
        //------Combo

    }

    function W_CRExXMLHttpRequest() {
        if (window.ActiveXObject) {
            oW_xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        else if (window.XMLHttpRequest) {
            oW_xmlHttp = new XMLHttpRequest();
        }
    }

    function W_GETxUsrAndDptName() {
        W_CRExXMLHttpRequest();
        var tDataTimeNow = W_GETtDateTimeNow();
        var tUsrCode = $("#otbFTUsrCode").val();
        var tUrl = '<%=Url.Action("C_GETxUsrAndDptName",tW_Controller) %>' + "?ptUsrCode=" + tUsrCode + "&ptDateTimeNow=" + tDataTimeNow;
        oW_xmlHttp.open("GET", encodeURI(tUrl), false);
        oW_xmlHttp.send(null);
        var valueFis = oW_xmlHttp.responseText;
        var mytool_array = valueFis.split("|");
        document.getElementById("otbUsrName").value = mytool_array[0];
        document.getElementById("otbDptName").value = mytool_array[1];
    }

    function W_SHWxUnitCombo() {
        W_CRExXMLHttpRequest();
        var tDataTimeNow = W_GETtDateTimeNow();
        var tModelPdt = $("#otbPdtCode").val();
        var tUrl = '<%=Url.Action("C_GEToUnitDetail",tW_Controller) %>' + "?ptPdtCode=" + tModelPdt + "&ptDateTimeNow=" + tDataTimeNow;
        oW_xmlHttp.open("GET", encodeURI(tUrl), false);
        //oW_xmlHttp.onreadystatechange = handleStateChangeUnit;
        oW_xmlHttp.send(null);
        if (oW_xmlHttp.status == 200) {
            var valueFis = oW_xmlHttp.responseText;
            var mytool_array = valueFis.split("|");

            var tStr = new String;
            var oStr_Array;
            var i;

            W_CLRxPdtCombo();

            var selectedIndex = 0;

            var ptUnitCode = document.getElementById("otbUnitCode").value;
            var ptUnitFactor = document.getElementById("otbUnitFactor").value;

            for (i = 0; i < 3; i++) {
                tStr = mytool_array[i];

                if (tStr != null && tStr != '') {
                    oStr_Array = tStr.split(",");
                    var oNewOption = document.createElement('option');
                    oNewOption.value = oStr_Array[0];
                    oNewOption.text = oStr_Array[1] + '|' + oStr_Array[2];
                    document.getElementById("ocbUnit").add(oNewOption, null);
                    //ตรวจสอบว่าถ้าเป็นหน่วยที่ทำการเลือก ให้เก็บค่า Index ไว้ทำการแสดงใน combo
                    if (ptUnitCode == oStr_Array[0] && ptUnitFactor == oStr_Array[2]) {
                        selectedIndex = document.getElementById("ocbUnit").options.length - 1;
                    }
                }
            }
            if (document.getElementById("ocbUnit").options.length > 0) {
                var tStr = document.getElementById("ocbUnit").options.item(selectedIndex).text;
                var oStr_Array = tStr.split("|");
                document.getElementById("ocbUnit").selectedIndex = selectedIndex;
                document.getElementById("otbUnitCode").value = document.getElementById("ocbUnit").value;
                document.getElementById("otbUnitName").value = oStr_Array[0];
                document.getElementById("otbUnitFactor").value = oStr_Array[1];
            }
        }
    }


    function W_CLRxPdtCombo() {
        var oElement = document.getElementById("ocbUnit");
        //Clear combo
        while (oElement.length > 0) {
            oElement.remove(0);
        }
    }

    function W_GETtDocNo() {
        if (nW_StaDoc == 1) {
            return false;
        }
        var bAutoFormat = document.getElementById('otbFTXzhDocNo').readOnly;
        var nPdtCount = W_GETtPdtCount();
        if (bAutoFormat == true && nPdtCount > 0) {
            alert('<%=ViewData("tMsgNotGenDoc") %>');
            return false;
        }
        J002_SETxReadOnly("otbFTXzhDocNo", false);
        W_CRExXMLHttpRequest();
        var tDataTimeNow = W_GETtDateTimeNow();
        var tBchCode = document.getElementById("otbFTBchCode").value;
        var tDocNo = document.getElementById("otbFTXzhDocNo").value;
        var tDocType = document.getElementById("otbFTXzhDocType").value;
        var tUrl = '<%=Url.Action("C_GENtDocNo",tW_Controller) %>' + '?ptBchCode=' + tBchCode + '&ptDocType=' + tDocType + '&ptDateTimeNow=' + tDataTimeNow;
        oW_xmlHttp.open("GET", encodeURI(tUrl), false);
        oW_xmlHttp.send(null);
        document.getElementById("otbFTXzhDocNo").value = oW_xmlHttp.responseText;
    }

    function trim(stringToTrim) {
        return stringToTrim.replace(/^\s+|\s+$/g, "");
    }
    function ltrim(stringToTrim) {
        return stringToTrim.replace(/^\s+/, "");
    }
    function rtrim(stringToTrim) {
        return stringToTrim.replace(/\s+$/, "");
    }

    function W_GETtPdtCount() {
        W_CRExXMLHttpRequest();
        var tDataTimeNow = W_GETtDateTimeNow();
        var tModelPdt = document.getElementById("otbPdtCode").value;
        var tUrl = '<%=Url.Action("C_GETtPdtCount",tW_Controller) %>' + "?ptDateTimeNow=" + tDataTimeNow;
        oW_xmlHttp.open("GET", encodeURI(tUrl), false);
        oW_xmlHttp.send(null);
        return oW_xmlHttp.responseText; //return จำนวนรายการสินค้า ใน Grid
    }
    function W_GETtPdtSNCount() {
        W_CRExXMLHttpRequest();
        var tDataTimeNow = W_GETtDateTimeNow();
        var tModelPdt = document.getElementById("otbPdtCode").value;
        var tUrl = '<%=Url.Action("C_GETtPdtSNCount",tW_Controller) %>' + "?ptDateTimeNow=" + tDataTimeNow;
        oW_xmlHttp.open("GET", encodeURI(tUrl), false);
        oW_xmlHttp.send(null);
        return oW_xmlHttp.responseText; //return จำนวนรายการสินค้า ใน Grid
    }
    function W_DELtPdtSerial() {
        W_CRExXMLHttpRequest();
        var tDataTimeNow = W_GETtDateTimeNow();
        var tSeq = document.getElementById("otbSeq").value;
        var tPdtCode = document.getElementById("otbPdtCode").value;
        var tUrl = '';
        tUrl += '<%=Url.Action("C_DELtPdtSerial",tW_Controller) %>';
        tUrl += "?ptDateTimeNow=" + tDataTimeNow;
        tUrl += "&ptPdtCode=" + tPdtCode;
        tUrl += "&ptSeq=" + tSeq;
        oW_xmlHttp.open("GET", encodeURI(tUrl), false);
        oW_xmlHttp.send(null);
        return oW_xmlHttp.responseText; //return จำนวนรายการสินค้า ใน Grid
    }

    function W_GETxPdtDetail() {
        W_CRExXMLHttpRequest();
        var tDataTimeNow = W_GETtDateTimeNow();
        var tModelPdt = J002_STRttrim(document.getElementById("otbPdtCode").value);
        var tUrl = '<%=Url.Action("C_GEToPdtDetail",tW_Controller) %>' + "?ptPdtCode=" + tModelPdt + "&ptDateTimeNow=" + tDataTimeNow;
        oW_xmlHttp.open("GET", encodeURI(tUrl), false);
        oW_xmlHttp.send(null);
        if (oW_xmlHttp.status == 200) {
            var valueFis = oW_xmlHttp.responseText;
            var mytool_array = valueFis.split("|");

            document.getElementById("otbPdtCode").value = mytool_array[0];
            document.getElementById("otbPdtName").value = mytool_array[1];
            document.getElementById("otbSetPriceRte").value = J002_DECcRound(mytool_array[2], nW_DecLength);
            document.getElementById("otbDis").value = J002_DECcRound(0, nW_DecLength); //default
            document.getElementById("otbDisRte").value = J002_DECcRound(0, nW_DecLength);
            document.getElementById("otbDisTxtRte").value = '';
            document.getElementById("otbFTPdtSrn").value = mytool_array[3];
            var tSetPrice = document.getElementById('otbSetPriceRte').value;
            var tRteRate = document.getElementById('otbRteRate').value;
            if (J002_STRttrim(tSetPrice) != '') {
                document.getElementById('otbSetPrice').value = tSetPrice * tRteRate;
            }

            var tStr = new String;
            var oStr_Array;
            var i;

            var oElement = document.getElementById("ocbUnit");

            while (oElement.length > 0) {
                oElement.remove(0);
            }
            var nComboIndex = -1;
            for (i = 4; i < 7; i++) {
                tStr = mytool_array[i];
                if (tStr != null && tStr != '') {
                    oStr_Array = tStr.split(",");
                    var oNewOption = document.createElement('option');
                    oNewOption.value = oStr_Array[0]; //FTPunCode
                    oNewOption.text = oStr_Array[1] + '|' + oStr_Array[2];  //text display
                    if (navigator.appName == 'Microsoft Internet Explorer') { //IE
                        document.getElementById("ocbUnit").add(oNewOption); ; // IE only
                    } else { //firefox google
                        document.getElementById("ocbUnit").add(oNewOption, null); // standards compliant; doesn't work in IE
                    }
                    if (oStr_Array[3] == 1) {
                        nComboIndex = document.getElementById("ocbUnit").options.length - 1;
                    }
                }
            }
            if (nComboIndex < 0) {
                nComboIndex = document.getElementById("ocbUnit").selectedIndex;
            }
            if (nComboIndex > -1) {
                document.getElementById("ocbUnit").selectedIndex = nComboIndex;
                var tStr = document.getElementById("ocbUnit").options.item(nComboIndex).text;
                var oStr_Array = tStr.split("|");
                document.getElementById("otbUnitCode").value = document.getElementById("ocbUnit").value;
                document.getElementById("otbUnitName").value = oStr_Array[0];
                document.getElementById("otbUnitFactor").value = oStr_Array[1];
            }

        }
        return oW_xmlHttp.responseText != "||||";
    }
    function W_SETxRebindGrid() {
        // rebind the related grid
        var oGrid = $('#GridDT').data('tGrid');
        oGrid.rebind();
        W_CLRxVariable();
    }

    function W_CLRxVariable() {
        document.getElementById('otbPdtCode').value = "";
    }
    function grid_onLoad() {
        $('#GridDT tr', this).live('dblclick', function(e) {
            if ($('td', this).length < 2) { return 0; }
            var tMode = oJ003_SNDialogMode.Purchase;
            if (nW_StaPrcDoc == 1) {
                tMode = oJ003_SNDialogMode.ReadOnly;
            }
            var tDocNo = document.getElementById("otbFTXzhDocNo").value;
            var tSeq = $('td', this).eq(0).text();
            var tPdtCode = $('td', this).eq(1).text();
            var tPdtName = $('td', this).eq(2).text();
            var tUnitName = $('td', this).eq(3).text();
            var tPdtFactor = $('td', this).eq(9).text();
            var tSerial = $('td', this).eq(13).text();


            //$('td', $('#GridDT tr').eq(tSeq)).eq(0).text();

            //            if (tSerial == '1') {
            //                if (nW_StaDoc == 1) {
            //                    tDocNo = document.getElementById("otbFTXzhDocNo").value;
            //                }
            //                //****** Browse Serial ******
            //                do {
            //                    var tReturnedValue = J003_BRWxSerial(tW_Controller, 'C_BRWxSerial', tPdtCode, tPdtName, tPdtFactor, tUnitName, tSeq, tMode);
            //                    var bConfirm = false;
            //                    if (tReturnedValue == null || tReturnedValue == '') {
            //                        bConfirm = confirm('สินค้านี้เป็นสินค้า Serial ต้องทำการระบุ Serial \nคุณต้องการเลือกรายการ Serial หรือไม่?');
            //                    }
            //                } while (bConfirm == true)
            //                document.getElementById('otbSerialList').value = tReturnedValue;
            //                if (tReturnedValue == null || tReturnedValue == '') {
            //                    document.getElementById('otbPdtCode').value = tPdtCode;
            //                    document.getElementById("otbSeq").value = tSeq;
            //                    W_DELtPdtSerial();
            //                    W_SETxRebindGrid();
            //                    W_CLRxTextBox();
            //                }
            //                else {
            //                    if (nW_StaPrcDoc != 1) {
            //                        var nQty = tReturnedValue.split("|").length;
            //                        document.getElementById("otbQty").value = nQty;
            //                        W_DATxCalPdtNet();
            //                        W_SETxInputForSerial(true);
            //                    }
            //                }
            //            }
        })
    }

    function W_SETxInputForSerial(pbDisable) {
        J002_SETxDisable("ocbUnit", pbDisable);
        J002_SETxReadOnly("otbQty", pbDisable);
    }
    
    function W_GETtDateTimeNow() {
        var dNow = new Date;
        var tDateTimeNow = dNow.getFullYear().toString() + dNow.getMonth().toString() + dNow.getDay().toString() + dNow.getHours().toString() + dNow.getMinutes().toString() + dNow.getSeconds().toString() + dNow.getMilliseconds().toString();
        return tDateTimeNow;
    }

    function W_DATxCalFooter() {
        //var cPntLength = 2; // จุดทศนิยม 2 ตำแหน่ง
        var cB4DisChg = J002_GETcNumber(document.getElementById("otbFCXzhB4DisChg").value);
        var cNonVat = J002_GETcNumber(document.getElementById("otbFCXzhNonVat").value);
        var cTotal = J002_GETcNumber(document.getElementById("otbFCXzhTotal").value);
        var cDis;
        var cGndAE = J002_GETcNumber(document.getElementById("otbFCXzhGndAE").value);
        var cAftDisChg = J002_GETcNumber(document.getElementById("otbFCXzhAftDisChg").value);
        var cVat = J002_GETcNumber(document.getElementById("otbFCXzhVat").value);
        var cVatable = J002_GETcNumber(document.getElementById("otbFCXzhVatable").value);
        var cVatRate = J002_GETcNumber(document.getElementById("otbVatRate").value);
        var cFTXihVATInOrEx = document.getElementById("ocbFTXzhVATInOrEx").value;
        var cGrand;

        W_DATxCalFootDis();
        cDis = J002_GETcNumber(document.getElementById("otbFCXzhDis").value);

        if (cB4DisChg == null || cB4DisChg == '') { cB4DisChg = 0.0; }
        if (cVatable == null || cVatable == '') { cVatable = 0.0; }
        if (cNonVat == null || cNonVat == '') { cNonVat = 0.0; }
        if (cTotal == null || cTotal == '') { cTotal = 0.0; }
        if (cDis == null || cDis == '') { cDis = 0.0; }
        if (cGndAE == null || cGndAE == '') { cGndAE = 0.0; }
        if (cAftDisChg == null || cAftDisChg == '') { cAftDisChg = 0.0; }
        if (cVat == null || cVat == '') { cVat = 0.0; }
        if (cVatRate == null || String(cVatRate) == '') {
            cVatRate = 7.0; //ถ้าไม่มีค่าให้ default VatRate=7 
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
        tUrl += "&ptVatInOrEx=" + cFTXihVATInOrEx;
        W_CRExXMLHttpRequest();
        oW_xmlHttp.open("GET", encodeURI(tUrl), false);
        oW_xmlHttp.send(null);
        if (oW_xmlHttp.status != 200) {
            alert("Error" + oW_xmlHttp.status + "\n" + oW_xmlHttp.responseText);
            return false;
        }
        var tResult = oW_xmlHttp.responseText;
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


        cTotal = J002_DECcRound(cTotal, nW_DecLength, true);
        cDis = J002_DECcRound(cDis, nW_DecLength, true);
        cGndAE = J002_DECcRound(cGndAE, nW_DecLength, true);
        cAftDisChg = J002_DECcRound(cAftDisChg, nW_DecLength, true);
        cVat = J002_DECcRound(cVat, nW_DecLength, true);
        cVatRate = J002_DECcRound(cVatRate, nW_DecLength, true);
        cGrand = J002_DECcRound(cGrand, nW_DecLength, true);
        document.getElementById("otbFCXzhNonVat").value = cNonVat;
        document.getElementById("otbFCXzhB4DisChg").value = cB4DisChg;
        document.getElementById("otbFCXzhVatable").value = cVatable;
        document.getElementById("otbFCXzhTotal").value = cTotal;
        document.getElementById("otbFCXzhDis").value = cDis;
        document.getElementById("otbFCXzhGndAE").value = cGndAE;
        document.getElementById("otbFCXzhAftDisChg").value = cAftDisChg;
        document.getElementById("otbFCXzhVat").value = cVat;
        document.getElementById("otbVatRate").value = cVatRate;
        document.getElementById("otbFCXzhGrand").value = cGrand;
        var tGndTxt = W_GETtGndTxt();
        document.getElementById("olaGndTxt").innerHTML = tGndTxt;
    }

    function W_GETtGndTxt() {
        W_CRExXMLHttpRequest();
        var tDataTimeNow = W_GETtDateTimeNow();
        var tGrand = $("#otbFCXzhGrand").val();
        var tUrl = '<%=Url.Action("SP_GETtMoneyText",tW_Controller) %>' + "?ptDate=" + tDataTimeNow + "&ptMoney=" + tGrand;
        oW_xmlHttp.open("GET", encodeURI(tUrl), false);
        oW_xmlHttp.send(null);
        return oW_xmlHttp.responseText;
    }

    function W_CHKtHasDocNo(ptDocNo) {
        var tDateTimeNow = W_GETtDateTimeNow();
        var tDocNo = document.getElementById("otbFTXzhDocNo").value;
        var tUrl = '<%=Url.Action("C_CHKtHasDocNo",tW_Controller) %>' + '?ptDocNo=' + tDocNo + '&ptDateTimeNow=' + tDateTimeNow;
        W_CRExXMLHttpRequest();
        oW_xmlHttp.open("GET", encodeURI(tUrl), false);
        oW_xmlHttp.send(null);
        if (oW_xmlHttp.responseText == "0") {
            return false;
        }
        else {
            return true;
        }
    }

    function W_CLRxTextBox() {
        var oElement = document.getElementById("otbPdtCode");
        tW_PdtCodeBeFore = null;
        oElement.value = "";
        oElement = document.getElementById("otbPdtName");
        oElement.value = "";
        oElement = document.getElementById("otbUnitCode");
        oElement.value = "";
        oElement = document.getElementById("ocbUnit");
        oElement.value = "";
        oElement = document.getElementById("otbQty");
        oElement.value = "";
        oElement = document.getElementById("otbSetPriceRte");
        oElement.value = "";
        oElement = document.getElementById("otbDisTxtRte");
        oElement.value = "";
        oElement = document.getElementById("otbDis");
        oElement.value = 0;
        oElement = document.getElementById("otbDisRte");
        oElement.value = 0;
        oElement = document.getElementById("otbNet");
        oElement.value = "";
        //        document.getElementById("ocmDis").style.visibility = 'hidden';
        document.getElementById('otbSeq').value = '';
        document.getElementById('otbFTPdtSrn').value = '';
        document.getElementById("otbSerialList").value = '';
        W_CLRxPdtCombo();
        W_SETxInputForSerial(false);
    }

    function otbFootDis_onkeydown() {
        if (window.event.keyCode == 13) {
            W_DATxCalFootDis();
            return !(window.event && window.event.keyCode == 13);
        }
    }

    function W_DATxCalFootDis() {
        var bDisPer = false;
        var cDis;
        var tDis;
        var cNet;
        var cRteRate = J002_GETcNumber(document.getElementById('otbRteRate').value);
        var cTotal = J002_GETcNumber(document.getElementById("otbFCXzhTotal").value);
        var tInputDisTxt = document.getElementById("otbFootDis").value;

        cNet = cTotal;
        tInputDisTxt = J002_STRttrim(tInputDisTxt);
        if (tInputDisTxt == '' || tInputDisTxt == null) {
            document.getElementById("otbFCXzhDis").value = J002_DECcRound(0, nW_DecLength, true);
            return false;
        }

        cDis = 0;
        var oArrDisTxt = tInputDisTxt.split(',');
        for (var i = 0; i < oArrDisTxt.length; i++) {
            tDis = oArrDisTxt[i];
            //เป็นการลดแบบ เปอร์เซ็นหรือไม่
            bDisPer = false;
            if (tDis.charAt(tDis.length - 1) == '-' || tDis.charAt(tDis.length - 1) == '%') {
                tDis = tDis.substring(0, tDis.length - 1);
                bDisPer = true;
            }

            if (bDisPer == false) {
                cDis += Number(tDis) * cRteRate;
            }
            else {
                cDis += (cNet * tDis * cRteRate) / 100.0;
            }
            cNet = cTotal - cDis;
        }
        if (cDis > cTotal) {
            cDis = cTotal;
        }
        document.getElementById("otbFCXzhDis").value = J002_DECcRound(cDis, nW_DecLength, true);
    }

    function otbGndAE_onkeydown() {
        if (window.event.keyCode == 13) {
            W_DATxCalGndAE();
            return !(window.event && window.event.keyCode == 13);
        }
    }      
    
    function W_GETtLang(ptLang) {
        if (ptLang == '' || ptLang == 'TH') {
            return '1';
        }
        else {
            return '0';
        }
    }

    function W_GEToModel() {
        var tStaDocAct = '0';
        if (document.getElementById("FNXihStaDocAct").checked == true) {
            tStaDocAct = '1';
        }
        var tCshOrCrd = '1';
        var bCshChecked = document.getElementById("orbCash").checked;
        if (bCshChecked == true) {
            tCshOrCrd = '1';
        }
        else {
            tCshOrCrd = '2';
        }
        var tModel = '';

        tModel += "FTBchCode=" + document.getElementById("otbFTBchCode").value;
        tModel += "&FTXzhDocNo=" + document.getElementById("otbFTXzhDocNo").value;
        tModel += "&FTXzhDocType=" + document.getElementById("otbFTXzhDocType").value;
        tModel += "&FDXzhDocDate=" + J002_CONtDateTime(document.getElementById("odtFDXzhDocDate").value);
        //FTXzhDocTime
        tModel += "&FTXzhVATInOrEx=" + document.getElementById("ocbFTXzhVATInOrEx").value;
        tModel += "&FTDptCode=" + document.getElementById("otbFTDptCode").value;
        tModel += "&FTUsrCode=" + document.getElementById("otbFTUsrCode").value;
        tModel += "&FTSplCode=" + document.getElementById("otbFTSplCode").value;
        //FTCstCode
        tModel += "&FTAreCode=" + document.getElementById("otbFTAreCode").value;
        tModel += "&FTSpnCode=" + document.getElementById("otbFTSpnCode").value;
        tModel += "&FTPrdCode=" + document.getElementById("otbFTPrdCode").value;
        //FTXzhApvCode
        tModel += "&FTShpCode=" + document.getElementById("otbFTShpCode").value;
        //FNCspCode
        //tModel += "&FNXzhCrTerm=" + document.getElementById("otbFNXzhCrTerm").value;
        tModel += "&FNXzhCrTerm=" + $('#otbXFNXzhCrTerm').val(); //*CH 08-01-2013
        tModel += "&FDXzhDueDate=" + J002_CONtDateTime(document.getElementById("odtFDXzhDueDate").value);
        tModel += "&FTXzhRefInt=" + document.getElementById("otbFTXzhRefInt").value;
        //FDXzhRefIntDate
        tModel += "&FTXzhRefAE=" + document.getElementById("otbGndAE").value;
        tModel += "&FDXzhTnfDate=" + J002_CONtDateTime(document.getElementById("odtFDXzhTnfDate").value);
        tModel += "&FDXzhBillDue=" + J002_CONtDateTime(document.getElementById("odtFDXzhBillDue").value);
        //FTXzhCtrName
        //FNXzhDocPrint
        tModel += "&FCXzhVATRate=" + J002_GETcNumber(document.getElementById("otbVatRate").value);
        tModel += "&FCXzhTotal=" + J002_GETcNumber(document.getElementById("otbFCXzhTotal").value);
        tModel += "&FCXzhNonVat=" + J002_GETcNumber(document.getElementById("otbFCXzhNonVat").value);
        tModel += "&FCXzhB4DisChg=" + J002_GETcNumber(document.getElementById("otbFCXzhB4DisChg").value);
        tModel += "&FTXzhDisChgTxt=" + document.getElementById("otbFootDis").value;
        tModel += "&FCXzhDis=" + J002_GETcNumber(document.getElementById("otbFCXzhDis").value);
        //FCXzhChg
        tModel += "&FCXzhAftDisChg=" + J002_GETcNumber(document.getElementById("otbFCXzhAftDisChg").value);
        tModel += "&FCXzhVat=" + J002_GETcNumber(document.getElementById("otbFCXzhVat").value);
        tModel += "&FCXzhVatable=" + J002_GETcNumber(document.getElementById("otbFCXzhVatable").value);
        tModel += "&FCXzhGrand=" + J002_GETcNumber(document.getElementById("otbFCXzhGrand").value);
        //FCXzhRnd
        //FCXzhWpTax
        //FCXzhReceive
        //FCXzhChn
        tModel += "&FTXzhGndText=" + document.getElementById("olaGndTxt").innerHTML;
        //FCXzhLeft
        //FCXzhMnyCsh
        //FCXzhMnyChq
        //FCXzhMnyCrd
        //FCXzhMnyCtf
        //FCXzhMnyCpn
        //FCXzhMnyCls
        //FCXzhMnyCxx
        //FCXzhGndCN
        //FCXzhGndDN
        tModel += "&FCXzhGndAE=" + J002_GETcNumber(document.getElementById("otbFCXzhGndAE").value);
        //FCXzhGndTH
        tModel += "&FTXzhStaPaid=" + document.getElementById("otbFTXzhStaPaid").value;
        tModel += "&FTXzhStaRefund=" + document.getElementById("otbFTXzhStaRefund").value;
        tModel += "&FTXzhStaType=" + document.getElementById("otbFTXzhStaType").value;
        tModel += "&FTXzhStaDoc=" + document.getElementById("otbFTXzhStaDoc").value;
        //FTXzhStaPrcDoc
        //FTXzhStaPrcSpn
        //FTXzhStaPrcCst
        //FTXzhStaPrcGL
        //FTXzhStaPost
        //FTPjcCode
        //FTAloCode
        //FTCcyCode
        //FCXzhCcyExg
        //FTPosCode
        //FTXzhPosCN
        //FTLogCode
        tModel += "&FTXzhRmk=" + document.getElementById("otbRmk").value;
        tModel += "&FNXzhSign=" + document.getElementById("otbFNXzhSign").value;
        tModel += "&FTXzhCshOrCrd=" + tCshOrCrd;
        //FCXihPaid
        tModel += "&FTXzhDstPaid=" + document.getElementById("otbFTXzhDstPaid").value;
        //FTXbhDocNo
        //FTXphDocNo
        tModel += "&FNXzhStaDocAct=" + tStaDocAct;
        tModel += "&FNXzhStaRef=" + document.getElementById("otbFNXzhStaRef").value;
        tModel += "&FTXzhUsrEnter=" + document.getElementById("otbFTXzhUsrEnter").value;
        tModel += "&FTXzhUsrPacker=" + document.getElementById("otbFTXzhUsrPacker").value;
        tModel += "&FTXzhUsrChecker=" + document.getElementById("otbFTXzhUsrChecker").value;
        tModel += "&FTXzhUsrSender=" + document.getElementById("otbFTXzhUsrSender").value;
        //FTXzhStaPrcStk
        //FTXzhStaPrcLef
        //FTXzhStaVatType
        tModel += "&FTXzhStaVatSend=" + document.getElementById("otbFTXzhStaVatSend").value;
        //FTXzhStaVatUpld
        //FTXzhDocVatFull
        //FTXqhDocNoRef
        //FTXzhRefSaleTax
        //FTCstStaClose
        //FTXzhBchFrm
        //FTXzhBchTo
        //FTXzhWahFrm
        //FTXzhWahTo
        tModel += "&FTXzhCstName=" + document.getElementById("otbSplName").value;
        tModel += "&FTXzhCstAddr=" + document.getElementById("otbSplAddr").value;
        //FCXzhDiscGP1
        //FCXzhDiscGP2
        //FCXzhB4VatAfGP1
        //FCXzhB4VatAfGP2
        //FTXzhDocRefMin
        //FTXzhDocRefMax
        tModel += "&FTRteCode=" + document.getElementById("otbFTRteCode").value;
        tModel += "&FCXzhRteFac=" + J002_GETcNumber(document.getElementById("otbRteRate").value);
        //FNLogSeqNo
        //FDDateUpd
        //FTTimeUpd
        //FTWhoUpd
        //FDDateIns
        //FTTimeIns
        //FTWhoIns

        return tModel;
    }
    function W_LODxReloadData(ptDocNo) {
        var tUrl = '<%=Url.Action("wApvTACTPo",tW_Controller) %>' + '?ptDocNo=' + ptDocNo;
        window.location = tUrl;
    }
        
    function W_GETbRteDetail(pbOnload) {
        var tOldData = tW_RteCodeB4Edit;
        W_CRExXMLHttpRequest();
        var tDataTimeNow = W_GETtDateTimeNow();
        var tRteCode = document.getElementById("otbFTRteCode").value;
        var tUrl = '<%=Url.Action("C_GETtRteDetail",tW_Controller) %>' + "?ptRteCode=" + tRteCode + "&ptDateTimeNow=" + tDataTimeNow;
        oW_xmlHttp.open("GET", encodeURI(tUrl), false);
        oW_xmlHttp.send(null);
        var valueFis = oW_xmlHttp.responseText;
        var mytool_array = valueFis.split("|");
        if (valueFis == "|") {
            document.getElementById("otbFTRteCode").value = tOldData;
            tW_RteCodeB4Edit = tOldData;
            alert('<%=ViewData("olatMsgNonDataRte")%>');
            return false;
        }
        var bConfirm = true;
        if (pbOnload != true) {
            bConfirm = W_DATxConfirmClearPdtList();
        }
        if (bConfirm == true) {
            document.getElementById("otbRteRate").value = J002_DECcRound(mytool_array[0], nW_DecLength, true);
            document.getElementById("otbRateName").value = mytool_array[1];
            document.getElementById("otbFTRteCode").value = mytool_array[2];
            tW_RteCodeB4Edit = mytool_array[2];
            return true;
        }
        else {
            document.getElementById("otbFTRteCode").value = tOldData;
            tW_RteCodeB4Edit = tOldData;
            return false;
        }
    }
    function W_FRMxGetFieldName(ptController, ptAction, ptObjCodeId, ptObjNameId, ptObjCodeOldId, ptTblName, ptFieldCode, ptFieldName, ptMsgErr) {
        var tMsgNoData = '<%=ViewData("tMsgDAT_Notfound001")%>' + ptMsgErr;
        J002_GETxFieldName(ptController, ptAction, ptObjCodeId, ptObjNameId, ptObjCodeOldId, ptTblName, ptFieldCode, ptFieldName, tMsgNoData);
    }
    function W_DATxConfirmClearPdtList() {
        var nCountDT = W_GETtPdtCount();
        if (nCountDT > 0) {
            if (confirm('<%= ViewData("olatMsgChangeRate") %>') == true) {
                W_CLRxDataDT();
                return true;
            }
            else {
                return false;
            }
        }
        return true;
    }

    function W_CLRxDataDT() {
        W_CRExXMLHttpRequest();
        var tDataTimeNow = W_GETtDateTimeNow();
        var tUrl = '<%=Url.Action("C_CLRxDataDT",tW_Controller) %>' + "?ptDateTimeNow=" + tDataTimeNow;
        oW_xmlHttp.open("GET", encodeURI(tUrl), false);
        oW_xmlHttp.send(null);
        document.getElementById("otbFCXzhTotal").value = 0;
        W_DATxCalFooter();
        W_SETxRebindGrid();
        W_CLRxTextBox();
    }
    
    function W_SETxDataRate(ptOldRteCode, ptOldRteRate, ptOldRteName) {//*CH 18-01-2013
        try {
            var tRteCode = $("#otbFTRteCode").val();
            if (J002_STRttrim(tRteCode) == tW_RteCodeB4Edit) {
                return false;
            }
            if (W_DATxConfirmClearPdtList() == true) {
                tW_RteCodeB4Edit = J002_STRttrim($("#otbFTRteCode").val());
            } else {
            $("#otbFTRteCode").val(ptOldRteCode);
            $("#otbRteRate").val(ptOldRteRate);
            $("#otbRateName").val(ptOldRteName);
                tW_RteCodeB4Edit = ptOldRteCode;
            }
        }
        catch (ex) {
            J002_SHWxMsgError('W_SETxDataRate', ex);
        }
    }

    function W_DATxBrwDis() {
        try {
            //J003_SHWxWaiting();
            var tDisTxt = document.getElementById("otbDisTxtRte").value;
            var tNet = J002_GETcNumber(document.getElementById("otbNet").value);
            var tPrice = $('#otbSetPriceRte').val();
            //var tDateTimeNow = W_GETtDateTimeNow();
            //var ReturnedValue = showModalDialog('<%=Url.Action("C_CNBrwDis",tW_Controller) %>' + '?ptDate=' + tDateTimeNow + '&ptNet=' + tNet + '&ptDisTxt=' + tDisTxt, "Passed String", "dialogWidth:355px; dialogHeight:325px; status:no; center:yes;titlebar =0;scroll=no");
            //document.getElementById("otbDisTxtRte").value = ReturnedValue;
            //W_DATxCalDis();
            //W_DATxCalPdtNet();

        }
        catch (ex) {
            J002_SHWxMsgError('W_DATxBrwDis', ex);
        }
        finally {
            //J003_DISxWaiting();
        }
    }


    function W_GetApp() {
        W_CRExXMLHttpRequest();
        var tDataTimeNow = W_GETtDateTimeNow();
        var tSpl = $("#otbFTXzhApvCode").val();
        var tUrl = '<%=Url.Action("C_GETxApp",tW_Controller) %>' + "?ptAppCode=" + tSpl + "&ptDateTimeNow=" + tDataTimeNow;
        oW_xmlHttp.open("GET", encodeURI(tUrl), false);
        oW_xmlHttp.send(null);
        var valueFis = oW_xmlHttp.responseText;
        var mytool_array = valueFis.split("|");
        document.getElementById("otbApvUsr").value = mytool_array[0];
    }
    function W_GetSplload(pbOnload) {
        var tSpl = document.getElementById("otbFTSplCode").value;
        var tOldSpl = document.getElementById("otbFTSplCodeOld").value;
        if (tSpl == tOldSpl && pbOnload != true) {
            return false;
        }
        if (tSpl == null) {
            tSpl = '';
        }
        tSpl = J002_STRttrim(tSpl);
        if (tSpl == '') {
            document.getElementById("otbFTSplCode").value = '';
            document.getElementById("otbFTSplCodeOld").value = '';
            document.getElementById("otbSplName").value = '';
            document.getElementById("otbSplAddr").value = '';
            document.getElementById("otbFTSplTel").value = '';
            document.getElementById("otbFTSplFax").value = '';
            return false;
        }
        W_CRExXMLHttpRequest();
        var tDataTimeNow = W_GETtDateTimeNow();
        var tUrl = '<%=Url.Action("C_GETxSpl",tW_Controller) %>' + "?ptSplCode=" + tSpl + "&ptDateTimeNow=" + tDataTimeNow;
        oW_xmlHttp.open("GET", encodeURI(tUrl), false);
        oW_xmlHttp.send(null);
        var valueFis = oW_xmlHttp.responseText;
        if (oW_xmlHttp.status != 200) {
            document.getElementById('otbFTSplCode').value = tOldSpl;
            alert("Error" + oW_xmlHttp.status + "\n" + oW_xmlHttp.responseText);
            return false;
        }
        var aArr = valueFis.split("|");
        if (aArr[0] != null && aArr[0] != "") {
            document.getElementById('otbFTSplCode').value = tOldSpl;
            alert(aArr[0]);
            return false;
        }
        if (aArr[1] == null || aArr[1] == "") {
            document.getElementById('otbFTSplCode').value = tOldSpl;
            alert('<%= ViewData("olatMsgNonDataSpl")%>');
            return false;
        }
        var bConfirm = true;
        if (tOldSpl != null && tOldSpl != '' && pbOnload != true) {
            var nPdtCount = W_GETtPdtCount();
            if (nPdtCount > 0) {
                document.getElementById("otbFTSplCode").value = tOldSpl; //เพื่อไม่ให้เค้า event onblur ตอนแสดง message confirm
                bConfirm = confirm('<%= ViewData("olatMsgConfirmChangeSpl") %>');
                if (bConfirm == true) {
                    W_CLRxDataDT();
                }
                else {
                    return false;
                }
            }
        }
        if (bConfirm == true) {
            document.getElementById("otbSplName").value = aArr[1];
            document.getElementById("otbSplAddr").value = aArr[2];
            document.getElementById("otbFTSplTel").value = aArr[3];
            document.getElementById("otbFTSplFax").value = aArr[4];
            document.getElementById("otbFNSplCrTerm").value = aArr[5];
            document.getElementById("otbFNSplViaTime").value = aArr[6];
            document.getElementById("otbFTSplDiscWhs").value = aArr[7];
            document.getElementById("otbFTSplTspPaid").value = aArr[8];
            document.getElementById("otbFTShpCode").value = aArr[9];
            document.getElementById("otbFTSplVATInOrEx").value = aArr[10];
            document.getElementById("otbFTSplCodeOld").value = tSpl;
            document.getElementById("otbFTSplCode").value = tSpl;

            if (pbOnload != true) {
                //ไม่ใช้งานภาษีตามผู้จำหน่าย ใช้ภาษีตามบริษัท
                //document.getElementById("otbVatRate").value = J002_DECcRound(aArr[11], nW_DecLength);
                W_SETxSplDetail(pbOnload);
                W_SETxResetDocNo();
            }
            W_SETxShowCreditTerm(pbOnload);
        }
    }
    function W_BrowseSpl() {
        if (nW_StaDoc == 1) {
            return false;
        }
        W_SHWxOpenMasterDialog('otbFTSplCode', 'otbSplName', 'Spl');
        //W_GetSplload(); //ปิดได้ไปใช้ที่ W_SETxSelectedDataMaster *CH 18-01-2013
    }

    function W_SETxSplDetail(pbOnload) {
        var tFTSplTspPaid = document.getElementById('otbFTSplTspPaid').value;
        var tFNSplCrTerm = document.getElementById('otbFNSplCrTerm').value;
        var tFTSplVATInOrEx = document.getElementById('otbFTSplVATInOrEx').value;
        var tFTShpCode = document.getElementById('otbFTShpCode').value;
        var tFNSplViaTime = document.getElementById('otbFNSplViaTime').value;
        var tFTSplDiscWhs = document.getElementById('otbFTSplDiscWhs').value;

        if (pbOnload == null || pbOnload == false) {
            document.getElementById('otbFTXzhDstPaid').value = tFTSplTspPaid;
            //document.getElementById('otbFNXzhCrTerm').value = tFNSplCrTerm;
            $('#otbXFNXzhCrTerm').val(tFNSplCrTerm); //*CH 08-01-2013
            $('#otbXFNXzhCrTermLock').val(tFNSplCrTerm); //*CH 08-01-2013
            if (tFNSplCrTerm > 0) {
                document.getElementById('orbCredit').checked = true;
                //J002_SETxReadOnly('otbFNXzhCrTerm', false);
                J002_SETxReadOnly('otbXFNXzhCrTerm', false); //*CH 08-01-2013
            }
            else {
                document.getElementById('orbCash').checked = true;
                //J002_SETxReadOnly('otbFNXzhCrTerm', true);
                J002_SETxReadOnly('otbXFNXzhCrTerm', true); //*CH 08-01-2013
            }
            document.getElementById('ocbFTXzhVATInOrEx').value = tFTSplVATInOrEx;
            document.getElementById('otbFTShpCode').value = tFTShpCode;
            var dDate = '<%=Format(Model.FDXzhTnfDate,"dd/MM/yyyy")%>';
            var tDate = W_SETtDateAdd(dDate, tFNSplViaTime);
            document.getElementById('odtFDXzhTnfDate').value = tDate;
            document.getElementById('otbFootDis').value = tFTSplDiscWhs;
            if (document.getElementById('otbFTShpCode').value != '' && document.getElementById('otbFTShpCode').value != null) {
                W_FRMxGetFieldName(tW_Controller, 'C_GETtFeildName', 'otbFTShpCode', 'otbFTShpName', 'otbFTShpCodeOld', 'TCNMShipVia', 'FTShpCode', 'FTShpName', '<%=ViewData("olaFTShpCode")%>')
            }
            else {
                document.getElementById('otbFTShpName').value = '';
            }
        }
    }

    function W_GETtShpName() {
        W_CRExXMLHttpRequest();
        var tDataTimeNow = W_GETtDateTimeNow();
        var tShp = $("#otbFTShpCode").val();
        var tUrl = '<%=Url.Action("C_GETtShpName",tW_Controller) %>' + "?ptShpCode=" + tShp + "&ptDateTimeNow=" + tDataTimeNow;
        oW_xmlHttp.open("GET", encodeURI(tUrl), false);
        oW_xmlHttp.send(null);
        document.getElementById("otbFTShpName").value = oW_xmlHttp.responseText;
    }

    function W_SETtDateAdd(ptDate, pnAddDay) {
        var oArr = ptDate.split('/');
        ptDate = oArr[1] + '/' + oArr[0] + '/' + oArr[2];
        var d = new Date(ptDate);
        d.setDate(d.getDate() + Number(pnAddDay));
        var tMonth = d.getMonth() + 1;
        tMonth = new String(tMonth);
        if (tMonth.length == 1) {
            tMonth = "0" + tMonth;
        }
        var tDay = d.getDate();
        tDay = new String(tDay);
        if (tDay.length == 1) {
            tDay = "0" + tDay;
        }
        var tYear = d.getFullYear();
        return tDay + "/" + tMonth + "/" + tYear;
    }
    
    function W_SETxResetDocNo() {
        var bCshChecked = document.getElementById("orbCash").checked;
        if (bCshChecked == true) {
            document.getElementById("otbFTXzhDocNo").value = '<%=ViewData("FmtCash") %>';
        }
        else {
            document.getElementById("otbFTXzhDocNo").value = '<%=ViewData("FmtCredit") %>';
        }
        J002_SETxReadOnly("otbFTXzhDocNo", true);
    }

    function W_SETxShowCreditTerm(pbOnload) {
        var bCshChecked = document.getElementById("orbCash").checked;
        var tCrTerm = '';
        if (bCshChecked == true) {
            //J002_SETxReadOnly("otbFNXzhCrTerm", true);
            J002_SETxReadOnly("otbXFNXzhCrTerm", true);
            tCrTerm = 0;
            $('#odiCshShow').removeClass('xCN_DivTabDisplay');
            $('#odiCrdShow').addClass('xCN_DivTabDisplay');
        }
        else {
            //J002_SETxReadOnly("otbFNXzhCrTerm", false);
            J002_SETxReadOnly("otbXFNXzhCrTerm", false);
            tCrTerm = document.getElementById('otbFNSplCrTerm').value;
            $('#odiCshShow').addClass('xCN_DivTabDisplay');
            $('#odiCrdShow').removeClass('xCN_DivTabDisplay');
        }
        if (pbOnload != true) {
            document.getElementById("otbXFNXzhCrTerm").value = tCrTerm;
            W_CALxDueDate();
            W_CALxTnfDate();
        }
    }

    function W_CALxDueDate() {
        try {
            //tCrTerm = document.getElementById("otbFNXzhCrTerm").value;
            //var dDate = document.getElementById("odtFDXzhDocDate").value;
            //var tDate = J002_SETtDateAdd(dDate, tCrTerm);
            //document.getElementById('odtFDXzhDueDate').value = tDate;
            
            var nCrTerm = $('#otbXFNXzhCrTerm').val();
            var tDate = W_SETtDueDate(nCrTerm, $('#odtFDXzhDocDate').val());
            $("#odtFDXzhDueDate").val(tDate); 
        }
        catch (ex) {
            J002_SHWxMsgError('W_CALxDueDate', ex);
        }
    }
    function W_CALxTnfDate() {
        try {
            var tFNSplViaTime = document.getElementById("otbFNSplViaTime").value;
            var dDate = document.getElementById("odtFDXzhDocDate").value;
            var tDate = J002_SETtDateAdd(dDate, tFNSplViaTime);
            document.getElementById('odtFDXzhTnfDate').value = tDate;
        }
        catch (ex) {
            J002_SHWxMsgError('W_CALxTnfDate', ex);
        }
    }
    
    function W_DATxCalGndAE() {
        W_CRExXMLHttpRequest();
        var tDataTimeNow = W_GETtDateTimeNow();
        var tAEDocNo = $("#otbGndAE").val();
        var tVatInOrEx = $("#ocbFTXzhVATInOrEx").val();
        var tTotal = $("#otbFCXzhTotal").val();
        var tDis = $("#otbFCXzhDis").val();
        var tAftDis = Number(tTotal) + Number(tDis);
        if (tAEDocNo == null || tAEDocNo == '') {
            document.getElementById('otbFCXzhGndAE').value = J002_DECcRound(0, nW_DecLength);
            return false;
        }

        var tUrl = '<%Url.Action("C_CALtDeposit",tW_Controller) %>' + "?ptDate=" + tDataTimeNow + '&ptAEDocNo=' + tAEDocNo + '&ptDocVatType=' + tVatInOrEx + '&ptMaxValue=' + tAftDis;
        oW_xmlHttp.open("GET", encodeURI(tUrl), false);
        oW_xmlHttp.send(null);
        var oArr = oW_xmlHttp.responseText.split('|');
        if (oArr[0] != null && oArr[0] != '') {
            alert(oArr[0])
        }
        document.getElementById('otbFCXzhGndAE').value = oArr[1];
    }   
    
    function W_GETaRefDocDetail(ptRefDocNo) {
        try {
            if (ptRefDocNo == null || ptRefDocNo == '') {
                return '';
            }
            var tDateTimeNow = J002_GETtTimeStamp();
            var tUrl = '';
            tUrl += '<%=Url.Action("C_GETtRefDocSplCode",tW_Controller) %>';
            tUrl += '?ptDateTimeNow=' + tDateTimeNow;
            tUrl += '&ptRefDocNo=' + ptRefDocNo;
            W_CRExXMLHttpRequest();
            oW_xmlHttp.open("GET", encodeURI(tUrl), false);
            oW_xmlHttp.send(null);
            if (oW_xmlHttp.status != 200) {
                var tMsg = 'Error' + oW_xmlHttp.status + "\n";
                tMsg += 'Function : W_GETaRefDocDetail \n';
                tMsg += oW_xmlHttp.responseText;
                alert(tMsg);
                return '';
            }
            var tResult = oW_xmlHttp.responseText;
            var aArr = tResult.split("|");
            if (aArr[0] != null && aArr[0] != '') {
                alert(aArr[0]);
                return '';
            }
            var aReturn = new Array();
            var n;
            for (n = 1; n < aArr.length; n++) {
                aReturn[n - 1] = aArr[n];
            }
            return aReturn;
        }
        catch (ex) {
            J002_SHWxMsgError('W_CALxTnfDate', ex);
            return '';
        }
    }

    function W_ADDxRefDocData(ptDocNo, ptListSeq, ptReplace) {
        W_CRExXMLHttpRequest();
        var tDataTimeNow = W_GETtDateTimeNow();
        var tUrl = '<%=Url.Action("C_ADDxRefDocData",tW_Controller) %>' + "?ptRefDocNo=" + ptDocNo + '&ptListSeq=' + ptListSeq + '&ptReplace=' + ptReplace + '&ptDataTimeNow=' + tDataTimeNow;
        //alert(tUrl);
        oW_xmlHttp.open("GET", encodeURI(tUrl), false);
        oW_xmlHttp.send(null);
        var aArr = oW_xmlHttp.responseText.split("|");
        document.getElementById('otbFCXzhTotal').value = aArr[0];
        var aReturn = new Array();
        aReturn[0] = aArr[1];
        aReturn[1] = aArr[2];
        return aReturn;
    }

    function W_GETtDateNow() {
        var dNow = new Date();
        var tDay = dNow.getDate().toString();
        var tMonth = (dNow.getMonth() + 1).toString();
        var tYear = (dNow.getFullYear()).toString();
        if (tDay.length < 2) { tDay = '0' + tDay; }
        if (tMonth.length < 2) { tMonth = '0' + tMonth; }
        var tNow = String(tDay.toString() + '/' + tMonth.toString() + '/' + tYear.toString());
        return tNow;
    }

    function W_SETtDueDate(pnAddDay, pdDocDate) { return J002_SETtDateAdd(pdDocDate, pnAddDay); }

    function W_FRMxFindDoc() {
        try {
            J003_SHWxWaiting();
            var tUrl = '<%=Url.Action("Index","cvcCNBrwDoc") %>';
            window.location = encodeURI(tUrl);
        } catch (ex) {
            J002_SHWxMsgError('W_FRMxFindDoc', ex);
        } finally {
            J003_DISxWaiting();
        }
    }
</script>

<script type="text/javascript">
    window.onload = function () { W_FRMxIniatial(); };
</script>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
    <%--CSS--%>
    <link rel="Stylesheet" type="text/css" href="<%=Url.Content("~/Content/AdaCss/Local/FCS_cvcTACTPiHD.css") %>" />
    <%--External Script--%>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J001_LoadAutoGenCode.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J004_LoadTransactionMenu.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J005_KeepOldValue.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J006_LoadBrowse.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J009_ShowTab.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J010_ShowTabData.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J011_ComboBoxLibrary.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J015_UIBrowse.js") %>" ></script>
</asp:Content>
