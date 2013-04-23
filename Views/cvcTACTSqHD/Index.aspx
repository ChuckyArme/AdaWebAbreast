<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage(Of Adasoft.WebPos.Models.cmlTACTSzHD)" %>

<%@ Import Namespace="Adasoft.WebPos.Models" %>
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
        AdaWebPos.My.Resources.resLCcvcTACTSqHD.Culture = oCulture
        AdaWebPos.My.Resources.resLCcvcSHWoDT.Culture = oCulture
        AdaWebPos.My.Resources.resLCcvcCNBrw.Culture = oCulture
        Resources.resGBMsg.Culture = oCulture
        Resources.resGBTabCap.Culture = oCulture
        Resources.resGBMenuName.Culture = oCulture
        Resources.resGBButton.Culture = oCulture
        Resources.resGBBrowse.Culture = oCulture
                
        ViewData("olaRowID") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaRowID
        ViewData("olaCanEdit") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaCanEdit
        ViewData("olaCanSave") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaCanSave
        ViewData("olaCreate") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaCreate
        ViewData("olaCanDelete") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaCanDelete
        ViewData("olaFCXzhAftDisChg") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFCXzhAftDisChg
        ViewData("olaFCXzhB4DisChg") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFCXzhB4DisChg
        ViewData("olaFCXzhB4VatAfGP1") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFCXzhB4VatAfGP1
        ViewData("olaFCXzhB4VatAfGP2") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFCXzhB4VatAfGP2
        ViewData("olaFCXzhCcyExg") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFCXzhCcyExg
        ViewData("olaFCXzhChg") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFCXzhChg
        ViewData("olaFCXzhChn") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFCXzhChn
        ViewData("olaFCXzhDis") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFCXzhDis
        ViewData("olaFCXzhDiscGP1") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFCXzhDiscGP1
        ViewData("olaFCXzhDiscGP2") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFCXzhDiscGP2
        ViewData("olaFCXzhGndAE") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFCXzhGndAE
        ViewData("olaFCXzhGndCN") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFCXzhGndCN
        ViewData("olaFCXzhGndDN") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFCXzhGndDN
        ViewData("olaFCXzhGndTH") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFCXzhGndTH
        ViewData("olaFCXzhGrand") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFCXzhGrand
        ViewData("olaFCXzhLeft") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFCXzhLeft
        ViewData("olaFCXzhMnyChq") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFCXzhMnyChq
        ViewData("olaFCXzhMnyCls") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFCXzhMnyCls
        ViewData("olaFCXzhMnyCpn") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFCXzhMnyCpn
        ViewData("olaFCXzhMnyCrd") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFCXzhMnyCrd
        ViewData("olaFCXzhMnyCsh") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFCXzhMnyCsh
        ViewData("olaFCXzhMnyCtf") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFCXzhMnyCtf
        ViewData("olaFCXzhMnyCxx") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFCXzhMnyCxx
        ViewData("olaFCXzhNonVat") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFCXzhNonVat
        ViewData("olaFCXzhPaid") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFCXzhPaid
        ViewData("olaFCXzhReceive") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFCXzhReceive
        ViewData("olaFCXzhRnd") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFCXzhRnd
        ViewData("olaFCXzhRteFac") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFCXzhRteFac
        ViewData("olaFCXzhTotal") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFCXzhTotal
        ViewData("olaFCXzhVat") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFCXzhVat
        ViewData("olaFCXzhVatable") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFCXzhVatable
        ViewData("olaFCXzhVATRate") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFCXzhVATRate
        ViewData("olaFCXzhWpTax") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFCXzhWpTax
        ViewData("olaFDXzhBillDue") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFDXzhBillDue
        ViewData("olaFDXzhDocDate") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFDXzhDocDate
        ViewData("olaFDXzhDueDate") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFDXzhDueDate
        ViewData("olaFDXzhRefExtDate") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFDXzhRefExtDate
        ViewData("olaFDXzhRefIntDate") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFDXzhRefIntDate
        ViewData("olaFDXzhTnfDate") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFDXzhTnfDate
        ViewData("olaFNCspCode") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFNCspCode
        ViewData("olaFNLogSeqNo") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFNLogSeqNo
        ViewData("olaFNXzhCrTerm") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFNXzhCrTerm
        ViewData("olaFNXzhDocPrint") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFNXzhDocPrint
        ViewData("olaFNXzhSign") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFNXzhSign
        ViewData("olaFNXzhStaDocAct") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFNXzhStaDocAct
        ViewData("olaFNXzhStaRef") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFNXzhStaRef
        ViewData("olaFTAloCode") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTAloCode
        ViewData("olaFTAreCode") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTAreCode
        ViewData("olaFTBchCode") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTBchCode
        ViewData("olaFTCcyCode") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTCcyCode
        ViewData("olaFTCstCode") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTCstCode
        ViewData("olaFTCstStaClose") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTCstStaClose
        ViewData("olaFTDocControl") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTDocControl
        ViewData("olaFTDptCode") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTDptCode
        ViewData("olaFTLogCode") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTLogCode
        ViewData("olaFTPjcCode") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTPjcCode
        ViewData("olaFTPosCode") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTPosCode
        ViewData("olaFTPrdCode") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTPrdCode
        ViewData("olaFTRteCode") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTRteCode
        ViewData("olaFTShpCode") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTShpCode
        ViewData("olaFTSplCode") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTSplCode
        ViewData("olaFTSpnCode") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTSpnCode
        ViewData("olaFTUsrCode") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTUsrCode
        ViewData("olaFTWahCode") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTWahCode
        ViewData("olaFTXbhDocNo") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXbhDocNo
        ViewData("olaFTXzhApvCode") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhApvCode
        ViewData("olaFTXzhBchFrm") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhBchFrm
        ViewData("olaFTUsrCode") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTUsrCode
        ViewData("olaFTWahCode") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTWahCode
        ViewData("olaFTXbhDocNo") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXbhDocNo
        'ViewData("olaFTXzhApvCode") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhApvCode
        ViewData("olaFTXzhBchFrm") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhBchFrm
        ViewData("olaFTXzhBchTo") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhBchTo
        ViewData("olaFTXzhCsh") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhCsh
        ViewData("olaFTXzhCrd") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhCrd
        ViewData("olaFTXzhCstAddr") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhCstAddr
        ViewData("olaFTXzhCstName") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhCstName
        ViewData("olaFTXzhCtrName") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhCtrName
        ViewData("olaFTXzhDisChgTxt") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhDisChgTxt
        ViewData("olaFTXzhDocNo") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhDocNo
        ViewData("olaFTXzhDocRefMax") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhDocRefMax
        ViewData("olaFTXzhDocRefMin") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhDocRefMin
        ViewData("olaFTXzhDocTime") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhDocTime
        ViewData("olaFTXzhDocType") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhDocType
        ViewData("olaFTXzhDocVatFull") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhDocVatFull
        ViewData("olaFTXzhDstPaid") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhDstPaid
        ViewData("olaFTXzhGndText") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhGndText
        ViewData("olaFTXzhPosCN") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhPosCN
        ViewData("olaFTXzhRefAE") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhRefAE
        ViewData("olaFTXzhRefExt") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhRefExt
        ViewData("olaFTXzhRefInt") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhRefInt
        ViewData("olaFTXzhRefSaleTax") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhRefSaleTax
        ViewData("olaFTXzhRmk") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhRmk
        ViewData("olaFTXzhStaDoc") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhStaDoc
        ViewData("olaFTXzhStaPaid") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhStaPaid
        ViewData("olaFTXzhStaPost") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhStaPost
        ViewData("olaFTXzhStaPrcCst") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhStaPrcCst
        ViewData("olaFTXzhStaPrcDoc") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhStaPrcDoc
        ViewData("olaFTXzhStaPrcGL") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhStaPrcGL
        ViewData("olaFTXzhStaPrcLef") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhStaPrcLef
        ViewData("olaFTXzhStaPrcSpn") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhStaPrcSpn
        ViewData("olaFTXzhStaPrcStk") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhStaPrcStk
        ViewData("olaFTXzhStaRefund") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhStaRefund
        ViewData("olaFTXzhStaType") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhStaType
        ViewData("olaFTXzhStaVatSend") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhStaVatSend
        ViewData("olaFTXzhStaVatType") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhStaVatType
        ViewData("olaFTXzhStaVatUpld") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhStaVatUpld
        ViewData("olaFTXzhTnfID") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhTnfID
        ViewData("olaFTXzhUsrChecker") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhUsrChecker
        ViewData("olaFTXzhUsrEnter") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhUsrEnter
        ViewData("olaFTXzhUsrPacker") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhUsrPacker
        ViewData("olaFTXzhUsrSender") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhUsrSender
        ViewData("olaFTXzhVATInOrEx") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhVATInOrEx
        ViewData("olaFTXzhVehID") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhVehID
        ViewData("olaFTXzhWahFrm") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhWahFrm
        ViewData("olaFTXzhWahTo") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhWahTo
        ViewData("olaFTXphDocNo") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXphDocNo
        ViewData("olaFTXqhDocNoRef") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXqhDocNoRef
        ViewData("olaMenuName") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaMenuName
        ViewData("olaNotAccess") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaNotAccess
        ViewData("olaReport") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaReport
        ViewData("olaHeaderEdit") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaHeaderEdit
        ViewData("olaHeaderAdd") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaHeaderAdd
        ViewData("olaHeaderDetail") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaHeaderDetail
        ViewData("olaHeaderList") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaHeaderList
        ViewData("olaDetail") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaDetail
        ViewData("olaHisPo") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaHisPo
        ViewData("olaHisSale") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaHisSale
        ViewData("olaPriceOther") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaPriceOther
        ViewData("olaFTXzhTnfCost") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFTXzhTnfCost
        ViewData("olaHelp") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaHelp
        ViewData("olaCanCopy") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaCanCopy
        ViewData("olaCanFind") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaCanFind
        ViewData("olaCanPost") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaCanPost
        ViewData("olaClose") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaClose
        ViewData("olaCancel") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaCancel
        ViewData("olaAutoTab") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaAutoTab
        ViewData("olaTel") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaTel
        ViewData("olaFax") = AdaWebPos.My.Resources.resLCcvcTACTSqHD.olaFax
            
        ViewData("olaRowID") = AdaWebPos.My.Resources.resLCcvcSHWoDT.olaRowID
        ViewData("olaPdtCode") = AdaWebPos.My.Resources.resLCcvcSHWoDT.olaPdtCode
        ViewData("olaPdtName") = AdaWebPos.My.Resources.resLCcvcSHWoDT.olaPdtName
        ViewData("olaPdtUnit") = AdaWebPos.My.Resources.resLCcvcSHWoDT.olaPdtUnit
        ViewData("olaPdtUnitPrice") = AdaWebPos.My.Resources.resLCcvcSHWoDT.olaPdtUnitPrice
        ViewData("olaPdtUnitName") = AdaWebPos.My.Resources.resLCcvcSHWoDT.olaPdtUnitName
        ViewData("olaDiscount") = AdaWebPos.My.Resources.resLCcvcSHWoDT.olaDiscount
        ViewData("olaAmount") = AdaWebPos.My.Resources.resLCcvcSHWoDT.olaAmount
            
              
        ViewData("olatMsgConfirmChangeCst") = Resources.resGBMsg.tMsgConfirmChangeCst
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
        ViewData("olatMsgNonDataCst") = Resources.resGBMsg.tMsgNonDataCst
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
        ViewData("tMsgNoAppStaDocDonotAct") = Resources.resGBMsg.tMsgNoAppStaDocDonotAct
            
        'ning 30/06/2010
        ViewData("olaDetail1") = Resources.resGBTabCap.olaDetail1
        ViewData("olaDetail2") = Resources.resGBTabCap.olaDetail2
        ViewData("olaDetail3") = Resources.resGBTabCap.olaDetail3
        ViewData("olaHis_Cst") = Resources.resGBTabCap.olaHis_Cst
        ViewData("olaHis_OtherPrice") = Resources.resGBTabCap.olaHis_OtherPrice
        ViewData("olaHis_Remark") = Resources.resGBTabCap.olaHis_Remark
        ViewData("olaHis_Spl") = Resources.resGBTabCap.olaHis_Spl
                                                       
        ViewData("olaMenuExit") = Resources.resGBMenuName.omnExit '*ออก *CH 17-10-2012
        ViewData("olaMenuHome") = Resources.resGBMenuName.omnHome '*หน้าแรก *CH 17-10-2012
          
        'Button
        ViewData("tNext") = Resources.resGBButton.tNext
        ViewData("tBack") = Resources.resGBButton.tBack
        ViewData("tFinish") = Resources.resGBButton.tFinish
        ViewData("tRefresh") = Resources.resGBButton.tRefresh
        ViewData("tSelectAll") = Resources.resGBButton.tSelectAll
        ViewData("tSelectNone") = Resources.resGBButton.tSelectNone
        
        ViewData("olaFilterBy") = Resources.resGBBrowse.tFilterBy
        ViewData("olaOK") = Resources.resGBBrowse.tButton_OK
        
        ViewData("olaFil") = AdaWebPos.My.Resources.resLCcvcCNBrw.olaFil
        
        ViewData("nVB_CNDecAmtForShw") = Session("nVB_CNDecAmtForShw")
        ViewData("oimgBrowse") = Url.Content(Resources.resGBImageList.oimgBrowse)
        ViewData("oimgGencode") = Url.Content(Resources.resGBImageList.oimgGencode)
        
        ViewData("oimgAppv") = Url.Content(Resources.resGBImageList.oimgAppv)
        ViewData("oimgNoAppv") = Url.Content(Resources.resGBImageList.oimgNoAppv)
        ViewData("oimgPCRemove") = Url.Content(Resources.resGBImageList.oimgPCRemove)
        
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
    Dim tW_Controller As String = "cvcTACTSqHD"
    Dim tW_Table As String = "TACTSqHD"
    Dim tW_MidHD As String = "Xqh"
    Dim tW_MidDT As String = "Xqd"
    Dim tW_MidSN As String = "Xqs"
    Dim nW_DecLength As Integer = Session("nVB_CNDecAmtForShw")
    %>

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
        <input id="otbFNCstCrTerm" type="hidden" value="0"/>
        <input id="otbFNCstViaTime" type="hidden" value="0" />
        <input id="otbFTCstDiscWhs" type="hidden" value=""/>
        <input id="otbFTCstTspPaid" type="hidden" value="1"/>
        <input id="otbFTCstVATInOrEx" type="hidden" value="1"/>
        <input id="otbDisTxt" type="hidden" />
        <input id="otbSetPrice" type="hidden" />
        <input id="otbFTCstCodeOld" type="hidden" value="<%=Model.FTCstCode%>" />
        <input id="otbFormatDocNo" type ="hidden" name ="otbFormatDocNo" value=""/>
        <input id="otbFTPdtSrn" type="hidden" value="" />
        <input id="otbFTRteCodeOld" type="hidden" />
        <input id="otbPdtSel" type="hidden" />
        <input id="otbFTAreCodeOld" type="hidden" value="<%=Model.FTAreCode %>" />
        <input id="otbFTXzhUsrEnterOld" type="hidden" />
        <input id="otbSpnOld" type="hidden" />
        <input id="otbFTXzhUsrPackerOld" type="hidden" />
        <input id="otbFTXzhUsrCheckerOld" type="hidden" />
        <input id="otbFTXzhUsrSenderOld" type="hidden" />
        <input id="otbDis" name="otbDis" type="hidden" />
        <input id="otbDisRte" name="otbDisRte" type="hidden" />
        <input id="otbSerialList" name="otbSerialList" type="hidden" />
    </div>

    <div id="odiMain" class ="xCN_AllFontFamily xCN_AllFontSize xCN_AllFontColor xCN_DivMain">
        <%-------------------เมนูด้านบนสุด---------------------------%>
        <div id="odiMenuTop" class ="xCN_AllBorderColor xCN_DivMainMenu">
            <div id="odiMenu" class="xCN_DivMenu" style="width:560px">
                <div id="odiMenuHome" class="xCN_DivMenuHome" style="float: left;">
                    <a onclick="W_FRMxCloseDoc('1')" href="javascript:void(0)">
                        <div class="xCN_DivMenuHomeCaption">
                            <%=ViewData("olaMenuHome")%>
                        </div>
                    </a>
                </div>
                <div id ="odiMenuNew" class="xCN_DivMenuNew">
                    <a href="javascript:void();" onclick="W_FRMxNewDoc()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaCreate")%>
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
                <div id="odiMenuExit" class="xCN_DivMenuLogOut" style="float: left;">
                    <a onclick="W_FRMxCloseDoc('2')" href="javascript:void(0)">
                        <div class="xCN_DivMenuLogOutCaption">
                            <%=ViewData("olaMenuExit")%>
                        </div>
                    </a>
                </div>
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

        <%-------------------Customer---------------------------%>
        <div id="odiCustomer" class ="">
            <div class="xCN_AllBackgroundColor xCN_AllBorderColor xW_DivDetailHD">
                <div id="odiSplDetail" class ="xCN_AllBackgroundColor xCN_AllBorderColor xW_DivDetailSpl">
                    <div class =" xCN_AllBackgroundColorCustomer xW_DivSplMainCode xCN_AllBorderColor">
                        <div class ="xW_DivSplCaption xCN_AllMenuFontSize">
                                <label><%= ViewData("olaFTCstCode")%></label>
                        </div>                   
                    </div>                              
                    <div class="xW_DivCode">
                        <%= ViewData("olaFTCstCode")%>
                        <input id="otbFTCstCode" name="otbFTCstCode" 
                            type="text" 
                            maxlength='20>' 
                            onblur="W_GETxCstLoad()" 
                            onfocus="J005_SETxOldRefCode(document.getElementById('otbFTCstCodeOld'),document.getElementById('otbFTCstCode'))" 
                            onkeydown="return otbFTCstCode_onkeydown(event.keyCode,event.which)" 
                            onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which)" 
                            value="<%=Html.Encode(Model.FTCstCode)%>" />      
                                   
                            <a onclick="W_BrowseCst();" href="javascript:void();">
                                <img id="oimBrwCst" 
                                        alt="" 
                                        class="xCN_ImgBrowData" 
                                        name="oimBrwCst" 
                                        src='<%=ViewData("oimgBrowse")%>' />
                            </a> 

                            <input id="otbCstName" 
                            class="xCN_AllBackgroundColor xW_InputName" 
                            name="otbCstName"
                            readonly="readonly" 
                            type="text" />
                    </div>                       
                    <div  class="xCN_AllBackgroundColor xW_DivAddr">
                        <textarea id="otbCstAddr" 
                                    class="xCN_AllBackgroundColor" 
                                    cols="1" 
                                    name="otbCstAddr" 
                                    readonly="readonly"
                                    rows="1">
                        </textarea>
                    </div>
                    <div class="xCN_AllBackgroundColor xW_DivTelFaxMain">
                        <div class ="xCN_LableTelFaxCap">
                            <%=ViewData("olaTel")%>
                        </div>
                        <div class ="xCN_DivCstTelFaxMainSub">
                            <input id="otbFTCstTel" 
                                    class="xCN_AllBackgroundColor xW_DivTelFaxMainSub" 
                                    name="otbFTCstTel"
                                    readonly="readonly" type="text" />                        
                        </div>
                    </div>
                    <div class="xCN_AllBackgroundColor xW_DivTelFaxMain">
                        <div class ="xCN_LableTelFaxCap">
                                <%=ViewData("olaFax")%>
                        </div>
                        <div class ="xCN_DivCstTelFaxMainSub">
                            <input id="otbFTCstFax" 
                                    class="xCN_AllBackgroundColor xW_DivTelFaxMainSub" 
                                    name="otbFTCstFax"
                                    readonly="readonly" type="text" />                        
                        </div>
                    </div>
                </div>
                <%--Document--%>
                <div id="odiDocNo" class ="xCN_AllBorderColor xW_DivDetailHDDocNo">
                    <div class="xCN_AllBackgroundColorMenu xCN_AllMenuFontSize xCN_AllMenuFontColor xW_DivDocName">
                        <div class="xCN_DivDocNameSub">
                           <label><%=ViewData("olaMenuName")%></label>
                        </div>
                    </div>
                    <div class="xW_DivDocNo">
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
                                        onblur = "otbFTXzhDocNo_onblur()" 
                                        onkeydown = "return otbFTXzhDocNo_onkeydown(event.keyCode,event.which)" 
                                        onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which)"
                                        onfocus="otbFTXzhDocNo_onfocus()" />
                            </div>
                            <div class="xCN_DivDocNoColumn2Sub">
                                <%=Html.Telerik().DatePicker() _
                                        .Name("X_FDXzhDocDate") _
                                        .Value(Model.FDXzhDocDate) _
                                        .Format("dd/MM/yyyy") _
                                        .ButtonTitle("..") _
                                        .InputHtmlAttributes(New With {.id = "odtFDXzhDocDate", .name = "FDXzhDocDate", .onblur = "odtFDXzhDocDate_onblur()"}) _
                                        .ShowButton(True) _
                                        .ClientEvents(Function(e) e.OnChange("W_SETxDocDateOnChange"))
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
                        <div class="xCN_DivDocNoColumn3">
                            <div class="xCN_DivBrowData xCN_DivBrowDataSetTopMargin">
                                <a onclick="W_GETtDocNo();" href="javascript:void();">
                                    <img id="oimGetDocNo" 
                                         alt="" 
                                         class="xCN_ImgBrowData" 
                                         name="oimGetDocNo" 
                                         src='<%=ViewData("oimgGencode")%>' />
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <!-- Button Next -->
            <div  class="xW_DivBotton">
                <div style="float:right;margin-top:2px;">
                    <button id="ocmNext" style="cursor:pointer; 
                        width:130; height:25px;" 
                        title='<%=ViewData("tNext")%>' 
                        onclick="W_SHWxNextPage('1');W_SHWxBrwRefDocWithNextBtn();">
                        <img align="right" style="width:18px; height:18px;" 
                            src='<%=Url.Content("~/Content/img/imgIcon16x16/Next2_16x16.png")%>'alt="olaNext" />
                            <%=ViewData("tNext")%>
                    </button>
                </div>
            </div>
                        
            <!-- Browse Customer -->
            <div class="xCN_AllBorderColor xW_DivDetailDT">
                <div id="odiDetailDT" class ="xW_DivDetailDTSub xCN_DivDisplayNone" >
                    <div class ="xCN_DivGridDetail">
                        <div style="height:auto">
                            <%Html.RenderPartial("uBrowse\uBrwMaster", Session("oBrwCst"))%>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <%-------------------Customer---------------------------%>
                
        <%-------------------Document---------------------------%>
        <div id="odiDocument" class ="xCN_DivDisplayNone">
            <div class="xW_DivDetailHD xCN_AllBackgroundColor xCN_AllBorderColor">
                <!-- Detail 1 -->
                <div class="xCN_AllBackgroundColor xCN_AllBorderColor xW_DivTabDetailSub1">
                    <div class=" xCN_DivTabDetail1Column1">
                        <div class="xCN_DivTabDetail1CshOrCrd">
                            <div class="xCN_AllBackgroundColorCshOrCrd xCN_DivTabDetail1CshOrCrdSub">
                                <%= Html.RadioButtonFor(Function(model) model.FTXzhCshOrCrd, "1", _
                                                                        New With {.id = "orbCash", .onclick = "W_SETxFormatDocNo();"})%> 
                                    &nbsp;<%=ViewData("olaFTXzhCsh")%>  <br/>
                                <%= Html.RadioButtonFor(Function(model) model.FTXzhCshOrCrd, "2", _
                                                                        New With {.id = "orbCredit", .onclick = "{W_SETxFormatDocNo();}"})%> 
                                    &nbsp;<%=ViewData("olaFTXzhCrd")%>                                              
                            </div>
                            <div class="xCN_DivTabDetail1CreditTerm">
                                <div id="odiCshShow" class="xCN_DivCreditTermSub">
                                        <%=ViewData("olaFNXzhCrTerm")%><br/>                        
                                            <%= Html.Telerik.IntegerTextBox().Name("XFNXzhCrTermLock") _
                                                                                                .MinValue(0).MaxValue(100) _
                                                                                                .Value(CInt(0)) _
                                                                                                .InputHtmlAttributes(New With {.id = "otbXFNXzhCrTermLock", .name = "FNXzhCrTermLock", _
                                                                                                                               .style = "width:70px;", .disabled = "disabled"})%>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="xW_DivTabDetail1Column2 xW_DivTabDetail1Column2">
                        <div class ="xW_DivTabDetail1Caption">
                            <%=ViewData("olaFTXzhRefInt")%>
                        </div>
                        <div class ="xW_DivTabDetail1Caption">
                            <%=ViewData("olaFTXzhRefExt")%>
                        </div>
                        <div class ="xW_DivTabDetail1Caption">
                            <%=ViewData("olaFDXzhRefExtDate")%>
                        </div>
                        <div class ="xW_DivTabDetail1Caption">
                            <%=ViewData("olaFDXzhDueDate")%>
                        </div>
                    </div>
                    <div class="xCN_DivTabDetail1Column3">                                    
                        <div class ="xCN_DivTabDetail1InputData">
                            <div class="xW_DivTabDetail1InputRefNo">
                                    <input id="otbFTXzhRefInt" 
                                        maxlength="20" 
                                        name="otbFTXzhRefInt" 
                                        onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which)" 
                                        type="text" 
                                        value="<%=Html.Encode(Model.FTXzhRefInt)%>" />
                                        <%=Html.ValidationMessageFor(Function(model) model.FTXzhRefInt)%>
                            </div>
                            <div class="xCN_DivTabDetail1BrowseRefNo">
                                                        
                                    <a onclick="W_SHWxBrwRefDoc();" href="javascript:void();"">
                                    <img id="oimBrwRefDoc" 
                                            alt="" 
                                            class="xCN_ImgBrowData" 
                                            name="oimBrwRefDoc" 
                                            src='<%=ViewData("oimgBrowse")%>' />
                                </a>
                            </div>
                        </div>
                        <div class ="xCN_DivTabDetail1InputData">
                                    <input id="otbFTXzhRefExt" 
                                        class="xW_InputTextExOrInRefNo" 
                                        name="otbFTXzhRefExt" 
                                        maxlength="20"
                                        onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which)" 
                                        type="text"                                                                                     
                                        value="<%=Html.Encode(Model.FTXzhRefExt)%>" />
                                        <%=Html.ValidationMessageFor(Function(model) model.FTXzhRefExt)%>
                        </div>
                        <div class ="xW_DivTabDetail1InputData">
                            <%= Html.Telerik().DatePicker() _
                                        .Name("XFDXzhRefExtDate") _
                                        .Format("dd/MM/yyyy") _
                                        .Value(Model.FDXzhRefExtDate) _
                                        .InputHtmlAttributes(New With {.id = "odtFDXzhRefExtDate", .name = "FDXzhRefExtDate", .style = "height:14px;"}) _
                                        .ButtonTitle("..") _
                                        .ShowButton(True)%>    
                                <%=Html.ValidationMessageFor(Function(model) model.FDXzhRefExtDate)%> 
                        </div>
                        <div class ="xW_DivTabDetail1InputData">
                            <%= Html.Telerik().DatePicker() _
                                .Name("XFDXzhDueDate") _
                                .Format("dd/MM/yyyy") _
                                .Value(Model.FDXzhDueDate) _
                                .InputHtmlAttributes(New With {.id = "odtFDXzhDueDate", .name = "FDXzhDueDate", .style = "height:14px;", .disabled = "disabled"}) _
                                .ButtonTitle("..") _
                                .ShowButton(False)
                            %>
                            <%=Html.ValidationMessageFor(Function(model) model.FDXzhDueDate)%>
                        </div>
                    </div>
                </div>

                <!-- Detail 2 -->
                <div class="xCN_AllBackgroundColor xCN_AllBorderColor xW_DivTabDetailSub2">
                    <div class="xCN_DivTabDetail2Column1">
                        <div class ="xCN_DivTabDetail2Caption">
                            <%=ViewData("olaFTWahCode")%>
                        </div>
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
                        <div class ="xW_DivTabDetail3InputData">
                            <%=Html.DropDownListFor(Function(model) model.FTWahCode, CType(ViewData("WahCode"), SelectList), New With {.id = "ocbFTWahCode", .name = "ocbFTWahCode", .class = "xW_SelectInDetail"})%>
                        </div>
                        <div class ="xCN_DivTabDetail2InputData">
                            <%= Html.Telerik().DatePicker() _
                                    .Name("XFDXzhTnfDate") _
                                    .Format("dd/MM/yyyy") _
                                    .Value(Model.FDXzhTnfDate) _
                                    .InputHtmlAttributes(New With {.id = "odtFDXzhTnfDate", .name = "FDXzhTnfDate", .style = "height:14px;"}) _
                                    .ButtonTitle("..") _
                                    .ShowButton(True)
                            %>
                            <%=Html.ValidationMessageFor(Function(model) model.FDXzhTnfDate)%>
                        </div>
                        <div class ="xW_DivTabDetailInputData">
                            <%= Html.Telerik().DatePicker() _
                                    .Name("XFDXzhBillDue") _
                                    .Format("dd/MM/yyyy") _
                                    .Value(Model.FDXzhBillDue) _
                                    .InputHtmlAttributes(New With {.id = "odtFDXzhBillDue", .name = "FDXzhBillDue", .style = "height:14px;"}) _
                                    .ButtonTitle("..") _
                                    .ShowButton(True)
                            %>
                            <%=Html.ValidationMessageFor(Function(model) model.FDXzhBillDue)%>
                        </div>
                        <div class ="xW_DivTabDetail3InputData" >
                            <div class="xW_DivTabDetail2AreaCode">
                                <input type="text" 
                                    id="otbFTAreCode" 
                                    name="FTAreCode" 
                                    maxlength='<%=ViewData("ShpMaxLenght")%>' 
                                    value="<%=Html.Encode(Model.FTAreCode)%>" 
                                    onfocus = "J005_SETxOldRefCode(document.getElementById('otbFTAreCodeOld'),document.getElementById('otbFTAreCode'))"
                                    onblur="W_FRMxGetFieldName('<%=tW_ConTroller %>','C_GETtFeildName','otbFTAreCode','otbFTAreName','otbFTAreCodeOld','TCNMArea','FTAreCode','FTAreName','<%=ViewData("olaFTAreCode")%>')"
                                    onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which)" 
                                    onkeydown="return otbFTAreCode_onkeydown(event.keyCode,event.which)" />
                            </div>
                            <div class="xCN_DivBrowData">
                                <a href="javascript:void();" onclick="W_GETxDataMaster('otbFTAreCode', 'otbFTAreName','Are')" >
                                <img src="<%=ViewData("oimgBrowse")%>" 
                                        alt="<%=ViewData("olaCreate").ToString%>" 
                                        class="xCN_ImgBrowData"  /></a>         
                            </div>
                        </div>
                    </div>
                    <div style="width:60px;height:70px;margin:3px 0px 0px 0px;float:left;">
                        <div style="height:20px;width:77px;margin: 3px  0px 0px 5px;">
                            <%=ViewData("olaFTXzhVATInOrEx")%>
                        </div>
                        <div style="height:20px;width:77px;margin: 3px  0px 0px 5px;">
                            <%=ViewData("olaFTXzhDstPaid")%>
                        </div>
                    </div>
                    <div style="width:90px;height:70px;float:right;margin:3px 0px 0px 0px;">
                        <div style="height:20px;width:97px;padding:0px;margin:3px 0px 0px 0px;">
                            <%= Html.DropDownListFor(Function(model) model.FTXzhVATInOrEx, _
                                    CType(ViewData("XihVATInOrEx"), SelectList), _
                                    New With {.id = "ocbFTXzhVATInOrEx", .name = "FTXzhVATInOrEx", _
                                                .class = "xW_SelectInDetail3", .disabled = "disabled"})%>
                        </div>
                        <div class ="xCN_DivTabDetail2InputData">
                            <%= Html.DropDownListFor(Function(model) model.FTXzhDstPaid, _
                                    CType(ViewData("XihDstPaid"), SelectList), _
                                    New With {.id = "otbFTXzhDstPaid", .name = "FTXzhDstPaid", .class = "xW_SelectInDetail3"})%>
                        </div>  
                        <div class ="xCN_DivTabDetail2Caption"></div>                                   
                    </div>
                        <input type="text" 
                                id="otbFTAreName" 
                                name="otbFTAreName" 
                                readonly="readonly"
                                style="height:16px;width:150px;margin:2px 0px 0px 3px;"
                                class="xCN_AllReadOnlyBGColor" />
                    
                    <div style="height:20px;width:80px;border-width:1px;padding:0px;margin:3px 0px 0px 0px;">
                    </div> 
                </div>
                <!-- Detail 3 -->
                <div class="xCN_AllBackgroundColor xCN_AllBorderColor xW_DivTabDetailSub3">
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
                        <!-- Check Active -->
                        <div class ="xCN_DivDetail3CheckBoxActiveDoc">
                            <input id="FNXihStaDocAct" 
                                    checked="checked" 
                                    name="FNXihStaDocAct" 
                                    type="checkbox" 
                                    value="true" />
                        </div>
                        <div class ="xCN_DivDetail3ActiveDocCaption">
                            <%=ViewData("olaFNXzhStaDocAct")%>
                        </div>
                        <!-- END Check Active -->
                    </div>
                    <div class="xW_DivTabDetail3Column2">
                        <div class="xW_DivTabDetail3EmpCode">
                            <input type ="text" 
                                    id ="otbFTXzhUsrEnter" 
                                    name="FTXzhUsrEnter" 
                                    value="<%=Html.Encode(Model.FTXzhUsrEnter)%>"
                                    maxlength='<%=ViewData("UsrMaxLenght")%>'
                                    onfocus = "J005_SETxOldRefCode(document.getElementById('otbFTXzhUsrEnterOld'),document.getElementById('otbFTXzhUsrEnter'))"
                                    onblur="W_FRMxGetFieldName(tW_Controller,'C_GETtFeildName','otbFTXzhUsrEnter','otbUsrEnterName','otbFTXzhUsrEnterOld','TSysUser','FTUsrCode','FTUsrName','<%=ViewData("olaFTXzhUsrEnter")%>')"
                                    onkeydown="W_KEYxEnterCode(event.keyCode,event.which,'otbFTSpnCode')"
                                    onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which)" />
                        </div>
                        <div class="xW_DivTabDetail3EmpCode">
                                <input type ="text" 
                                    id="otbFTSpnCode" 
                                    name ="FTSpnCode" 
                                    maxlength='<%=ViewData("UsrMaxLenght")%>' 
                                    value="<%=Html.Encode(Model.FTSpnCode)%>" 
                                    onfocus = "J005_SETxOldRefCode(document.getElementById('otbSpnOld'),document.getElementById('otbFTSpnCode'))" 
                                    onblur="W_FRMxGetFieldName(tW_Controller,'C_GETtFeildName','otbFTSpnCode','otbSpnName','otbSpnOld','TCNMSpn','FTSpnCode','FTSpnName','<%=ViewData("olaFTSpnCode")%>')"
                                    onkeydown="W_KEYxEnterCode(event.keyCode,event.which,'otbFTXzhUsrPacker')"
                                    onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which)" />
                        </div>
                        <div class="xW_DivTabDetail3EmpCode">
                            <input type ="text" 
                                    id="otbFTXzhUsrPacker" 
                                    name="FTXzhUsrPacker" 
                                    maxlength='<%=ViewData("UsrMaxLenght")%>' 
                                    value="<%=Html.Encode(Model.FTXzhUsrPacker)%>" 
                                    onfocus = "J005_SETxOldRefCode(document.getElementById('otbFTXzhUsrPackerOld'),document.getElementById('otbFTXzhUsrPacker'))" 
                                    onblur="W_FRMxGetFieldName(tW_Controller,'C_GETtFeildName','otbFTXzhUsrPacker','otbUsrPackerName','otbFTXzhUsrPackerOld','TSysUser','FTUsrCode','FTUsrName','<%=ViewData("olaFTXzhUsrPacker")%>')"
                                    onkeydown="W_KEYxEnterCode(event.keyCode,event.which,'otbFTXzhUsrChecker')"
                                    onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which)" />
                        </div>
                        <div class="xW_DivTabDetail3EmpCode">
                            <input type ="text" 
                                    id="otbFTXzhUsrChecker" 
                                    maxlength='<%=ViewData("UsrMaxLenght")%>' 
                                    value="<%=Html.Encode(Model.FTXzhUsrChecker)%>" 
                                    onfocus = "J005_SETxOldRefCode(document.getElementById('otbFTXzhUsrCheckerOld'),document.getElementById('otbFTXzhUsrChecker'))" 
                                    onblur="W_FRMxGetFieldName(tW_Controller,'C_GETtFeildName','otbFTXzhUsrChecker','otbUsrCheckerName','otbFTXzhUsrCheckerOld','TSysUser','FTUsrCode','FTUsrName','<%=ViewData("olaFTXzhUsrChecker")%>')"
                                    onkeydown="W_KEYxEnterCode(event.keyCode,event.which,'otbFTXzhUsrSender')"
                                    onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which)" />
                        </div>
                        <div class="xW_DivTabDetail3EmpCode" style="margin-bottom:2px;">
                            <input type="text" 
                                    id="otbFTXzhUsrSender" 
                                    name="FTXzhUsrSender" 
                                    maxlength='<%=ViewData("UsrMaxLenght")%>' 
                                    value="<%=Html.Encode(Model.FTXzhUsrSender)%>" 
                                    onfocus = "J005_SETxOldRefCode(document.getElementById('otbFTXzhUsrSenderOld'),document.getElementById('otbFTXzhUsrSender'))" 
                                    onblur="W_FRMxGetFieldName(tW_Controller,'C_GETtFeildName','otbFTXzhUsrSender','otbUsrSenderName','otbFTXzhUsrSenderOld','TSysUser','FTUsrCode','FTUsrName','<%=ViewData("olaFTXzhUsrSender")%>')"
                                    onkeydown="W_KEYxEnterCode(event.keyCode,event.which,'otbFTXzhTnfID')"
                                    onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which)" />
                        </div>   
                        <div class="xCN_DivTabDetail3Caption">
                            <%= ViewData("olaFTXzhTnfID")%>
                        </div>                             
                        <div class="xCN_DivTabDetail3Caption">
                            <%=ViewData("olaFTXzhVehID")%>
                        </div>                                   
                    </div>
                    <!-- ปุ่ม -->
                    <div class="xCN_DivTabDetail3Column3">
                        <div class ="xCN_DivBrowData xCN_DivBrowDataSetTopMargin">
                            <input id="ocmUsrEnter" 
                                    class="xCN_InputBottomBrowse"  
                                    name="ocmUsrEnter" 
                                    value="..."                                   
                                    onclick="W_SETxStaBtnUsr('1');W_GETxDataMaster('otbFTXzhUsrEnter', 'otbUsrEnterName','Usr')" 
                                    type="button"/>
                        </div>
                        <div class ="xCN_DivBrowData xCN_DivBrowDataSetTopMargin">
                            <input id="ocmSpn" 
                                    class="xCN_InputBottomBrowse" 
                                    name="ocmSpn" 
                                    value="..."
                                    onclick="W_GETxDataMaster('otbFTSpnCode', 'otbSpnName','Spn')"
                                    type="button" />
                        </div>                                    
                        <div class ="xCN_DivBrowData xCN_DivBrowDataSetTopMargin">
                            <input id="ocmUsrPacker" 
                                    class="xCN_InputBottomBrowse"
                                    name="ocmUsrPacker" 
                                    value="..."
                                    onclick="W_SETxStaBtnUsr('2');W_GETxDataMaster('otbFTXzhUsrPacker', 'otbUsrPackerName','Usr')" 
                                    type="button" />
                        </div>                                    
                        <div class ="xCN_DivBrowData xCN_DivBrowDataSetTopMargin">
                            <input id="ocmUsrChecker"
                                    class="xCN_InputBottomBrowse" 
                                    name="ocmUsrChecker" 
                                    value="..."
                                    onclick="W_SETxStaBtnUsr('3');W_GETxDataMaster('otbFTXzhUsrChecker', 'otbUsrCheckerName','Usr')" 
                                    type="button" />
                        </div>                                    
                        <div class ="xCN_DivBrowData xCN_DivBrowDataSetTopMargin">
                            <input id="ocmUsrSender" 
                                    class="xCN_InputBottomBrowse" 
                                    name="ocmUsrSender" 
                                    value="..."
                                    onclick="W_SETxStaBtnUsr('4');W_GETxDataMaster('otbFTXzhUsrSender', 'otbUsrSenderName','Usr')" 
                                    type="button" />
                        </div>      
                    </div>
                    <!-- Name -->
                    <div class="xW_DivTabDetail3Column4">
                        <div class="xW_DivTabDetail3EmpName">
                            <input type="text" 
                                    id="otbUsrEnterName" 
                                    name="otbUsrEnterName" 
                                    readonly="readonly"  
                                    class="xCN_AllReadOnlyBGColor" />
                        </div>
                        <div class="xW_DivTabDetail3EmpName">
                            <input type="text" 
                                    id="otbSpnName" 
                                    name="otbSpnName" 
                                    readonly="readonly"  
                                    class="xCN_AllReadOnlyBGColor" />
                        </div>
                        <div class="xW_DivTabDetail3EmpName">
                            <input type="text" 
                                    id="otbUsrPackerName" 
                                    name="otbUsrPackerName" 
                                    readonly="readonly"  
                                    class="xCN_AllReadOnlyBGColor" />
                        </div>
                        <div class="xW_DivTabDetail3EmpName">
                            <input type="text" 
                                    id="otbUsrCheckerName" 
                                    name="otbUsrCheckerName" 
                                    readonly="readonly"  
                                    class="xCN_AllReadOnlyBGColor" />
                        </div>
                        <div class="xW_DivTabDetail3EmpName">
                            <input type="text" 
                                    id="otbUsrSenderName" 
                                    name="otbUsrSenderName" 
                                    readonly="readonly"  
                                    class="xCN_AllReadOnlyBGColor" />
                        </div>  
                        <!-- เลขที่ใบส่ง & เลขที่พาหานะ --> 
                        <div class="xW_DivTabDetail3EmpName">
                            <input type="text" 
                                    id="otbFTXzhTnfID" 
                                    name="otbFTXzhTnfID" style="height:16px;" />
                        </div>
                        <div class="xW_DivTabDetail3EmpName">
                            <input type="text" 
                                    id="otbFTXzhVehID" 
                                    name="otbFTXzhVehID" class="xW_TextBoxTnfVehID style="height:16px;" />
                        </div>                                  
                    </div> 
                </div><!-- detail 3 -->
            </div>
            
            <!-- Button Next & Back -->
            <div  class="xW_DivBotton">
                <div style="float:right;margin-top:2px;">
                    <button style="cursor:pointer; 
                        width:130; height:25px;" 
                        title='<%=ViewData("tBack")%>' 
                        onclick="W_SHWxNextPage('0')">
                        <img align="left" style="width:18px; height:18px;" 
                            src='<%=Url.Content("~/Content/img/imgIcon16x16/Back_16x16.png")%>'alt="olaBack" />
                            <%=ViewData("tBack")%>
                    </button>
                    <button style="cursor:pointer; 
                        width:130; height:25px;" 
                        title='<%=ViewData("tNext")%>' 
                        onclick="W_CHKxHaveCst()">
                        <img align="right" style="width:18px; height:18px;" 
                            src='<%=Url.Content("~/Content/img/imgIcon16x16/Next2_16x16.png")%>'alt="olaNext" />
                            <%=ViewData("tNext")%>
                    </button>
                </div>
            </div>

            <div class="xCN_AllBorderColor xW_DivDetailDT">
                <!-- Browse Document Sq -->
                <div id="odiBrwDocSq" class ="xW_DivDetailDTSub xW_DivMaginDT xCN_DivDisplayNone" >
                    <div class ="xCN_DivGridDetail">
                        <div style="height:auto">
                            <%Html.RenderPartial("uBrowse\uBrwDocPq", Session("CNBrwDocSq"))%>
                        </div>
                    </div>
                </div>

                <!-- Area -->
                <div id="odiBrwArea" class ="xW_DivDetailDTSub xW_DivMaginDT xCN_DivDisplayNone" >
                    <div class ="xCN_DivGridDetail">
                        <div style="height:auto">
                            <%Html.RenderPartial("uBrowse\uBrwMasterArea", Session("oBrwAre"))%>
                        </div>
                    </div>
                </div>

                <!-- User -->
                <div id="odiBrwUser" class ="xW_DivDetailDTSub xW_DivMaginDT xCN_DivDisplayNone" >
                    <div class ="xCN_DivGridDetail">
                        <div style="height:auto">
                            <%Html.RenderPartial("uBrowse\uBrwMasterRate", Session("oBrwUsr"))%>
                        </div>
                    </div>
                </div>

                <!-- Spn -->
                <div id="odiBrwSpn" class ="xW_DivDetailDTSub xW_DivMaginDT xCN_DivDisplayNone" >
                    <div class ="xCN_DivGridDetail">
                        <div style="height:auto">
                            <%Html.RenderPartial("uBrowse\uBrwMasterRsn", Session("oBrwSpn"))%>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <%-------------------Document---------------------------%>

        <%-------------------Product---------------------------%>
        <div id="odiProduct" class="xCN_DivDisplayNone">
            <div class="xCN_AllBackgroundColor xCN_AllBorderColor xCN_DivDetailDT">
                <div id="Div1" class ="xCN_DivDetailDTSub" onload="__designer:mapid=&quot;a67&quot;">
                    <div id="Div2" class ="xCN_DivGridDetail">
                        <%  'declare the grid and enable features
                            Dim oDataDT As IEnumerable(Of Adasoft.WebPos.Models.cmlTACTSzDT) = ViewData("DataDT")
                Dim gridBuilder = Html.Telerik().Grid(oDataDT) _
                            .Name("GridDT") _
                            .HtmlAttributes(New With {.style = "width:99.8%"}) _
                            .Scrollable(Function(o) o.Height(130)) _
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
                gridBuilder.ClientEvents(Function(Events) Events.OnRowSelect("onRowSelected"))
                gridBuilder.RowAction(Function(row) (row.Selected = row.DataItem.FNXzdSeqNo.Equals(ViewData("id"))))
                            
                'Render the grid
                gridBuilder.Render()
                        %>
                    </div>
                </div>
                <%-------------------Add Product to Grid-----------------%>
                <div id="odiAddPdt" class ="xW_DivAddPdt">
                    <div class="xW_DivColumnBorder xW_DivColumnPdtCode">
                        <div class="xCN_AllMenuFontColor xW_DivColumnHeader xCN_TableHeaderColorTelerik">
                            <%=ViewData("olaPdtCode")%>
                        </div>
                        <div id="odiPdtCode" class="xW_DivColumnData xW_AllBackgroundDefault">
                            <input id="otbPdtCode" 
                                 maxlength='<%=ViewData("PdtMaxLenght")%>' 
                                 name="otbPdtCode"
                                 onblur="return otbPdtCode_onblur()" 
                                 onfocus="return otbPdtCode_onfocus()" 
                                 onkeydown="return otbPdtCode_onkeydown(event.keyCode,event.which)"
                                 onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which)" 
                                 class="wX_InputColumnPdtCode"
                                 type="text" />
                            <input id="ocmBrwPdt" 
                                 name="ocmBrwPdt" 
                                 type="button" 
                                 class="xW_InputButtonPdtCode" 
                                 value="..." 
                                 onclick="ocmBrwPdt_onclick()" />
                        </div>
                    </div>
                    <div class="xW_DivColumnBorder xW_DivColumnPdtName">
                        <div class="xCN_AllMenuFontColor xW_DivColumnHeader xCN_TableHeaderColorTelerik">
                            <%=ViewData("olaPdtName")%>
                        </div>
                        <div class="xW_DivColumnData xCN_AllReadOnlyBGColor">
                            <input id="otbPdtName" 
                               name="otbPdtName" 
                               type="text" 
                               readonly="readonly" 
                               class="xCN_AllReadOnlyBGColor wX_InputColumnPdtName" />
                        </div>
                    </div>
                    <div class="xW_DivColumnBorder xW_DivColumnPdtUnit">
                        <div class="xCN_AllMenuFontColor xW_DivColumnHeader xCN_TableHeaderColorTelerik">
                            <%=ViewData("olaPdtUnitName")%>
                        </div>
                        <div class="xW_DivColumnData">
                            <select id="ocbUnit" 
                                    name="ocbUnit" 
                                    class="wX_InputColumnData" 
                                    onchange="return ocbUnit_onchange()" onkeydown="return ocbUnit_onkeydown(event.keyCode,event.which)">
                                
                            </select>
                            <input id="otbUnitCode" name="otbUnitCode" type="hidden" />
                            <input id="otbUnitName" name="otbUnitName" type="hidden" />
                            <input id="otbUnitFactor" name="otbUnitFactor" type="hidden"/>
                        </div>
                    </div>
                    <div class="xW_DivColumnBorder xW_DivColumnPdtQty">
                        <div class="xCN_AllMenuFontColor xW_DivColumnHeader xCN_TableHeaderColorTelerik">
                            <%=ViewData("olaPdtUnit")%>
                        </div>
                        <div id="odiQty" class="xW_DivColumnData xW_AllBackgroundDefault">
                            <input id="otbQty" 
                                    name="otbQty" 
                                    onblur="return otbQty_onblur()" 
                                    onkeydown="return otbQty_onkeydown(event.keyCode,event.which)"
                                    onkeypress="return J002_CHKbCheckNumOnly(this.value,event.keyCode,event.which)"
                                    class="wX_InputColumnData"
                                    type="text" />
                        </div>
                    </div>
                    <div class="xW_DivColumnBorder xW_DivColumnPdtPrice">
                        <div class="xCN_AllMenuFontColor xW_DivColumnHeader xCN_TableHeaderColorTelerik">
                            <%=ViewData("olaPdtUnitPrice")%>
                        </div>
                        <div id="odiSetPriceRte" class="xW_DivColumnData xW_AllBackgroundDefault">
                            <input id="otbSetPriceRte" 
                                           name="otbSetPriceRte" 
                                           onblur="return otbSetPriceRte_onblur()"
                                           onkeydown="return otbSetPriceRte_onkeydown(event.keyCode,event.which)" 
                                           onkeypress="return J002_CHKbCheckNumOnly(this.value,event.keyCode,event.which)"
                                           class="wX_InputColumnData" 
                                           type="text" />
                        </div>
                    </div>
                    <div class="xW_DivColumnBorder xW_DivColumnPdtDiscount">
                        <div class="xCN_AllMenuFontColor xW_DivColumnHeader xCN_TableHeaderColorTelerik">
                            <%=ViewData("olaDiscount")%>
                        </div>
                        <div id="odiDisTxtRte" class="xW_DivColumnData xW_AllBackgroundDefault">
                            <input  id="otbDisTxtRte" 
                                 name="otbDisTxtRte" 
                                 onblur="return otbDisTxtRte_onblur()"
                                 onkeydown="return otbDisTxtRte_onkeydown(event.keyCode,event.which)" 
                                 onkeypress="return J002_CHKbCheckDisTxtKey(this.value,event.keyCode,event.which)"
                                 class="wX_InputColumnPdtDiscount" 
                                 type="text" />
                            <input id="ocmDis" 
                                 name="ocmDis" 
                                 type="button" 
                                 value="..." 
                                 class="xW_InputButtonPdtDiscount"
                                 onclick="W_DATxBrwDis()" />
                        </div>
                    </div>
                    <div class="xW_DivColumnBorder xW_DivColumnPdtNet">
                        <div class="xCN_AllMenuFontColor xW_DivColumnHeader xCN_TableHeaderColorTelerik">
                            <%=ViewData("olaAmount")%>
                        </div>
                        <div class="xW_DivColumnData xCN_AllReadOnlyBGColor">
                            <input  id="otbNet" 
                                name="otbNet" 
                                type="text" 
                                readonly="readonly" 
                                class="xCN_AllReadOnlyBGColor wX_InputColumnData" />
                        </div>
                    </div>
                    <div class="xW_DivColumnAutoTab">
                        <div>
                            <input id="ockSendTab" 
                                   name="ockSendTab"
                                   type="checkbox" checked="checked" />
                            <label id="olaAutoTab"><%=ViewData("olaAutoTab")%></label>
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

            <div id="odiDetailFooter" class ="xCN_AllBackgroundColor xCN_AllBorderColor xCN_DivDetailFooter">
                <%--ล่างซ้าย--%>
                <div id="odiHistory" class ="xW_DivDetailFooterHis">
                    <div class="xW_DivRemark">
                        <%----------------------Div Bottom 1----------------------------%>
                        <div id="DivBottom1" class="xCN_DivTabDetailBottom">
                            <div class="xW_DivRemarkTop" style=" text-align:left;">
                                <textarea id="otbRmk" name="otbRmk"  rows ="1"  cols="1"
                                        class="xW_TextAreaRemark" 
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
                                onclick="{J010_SHWxTabData(0,'DivBottom1','DivBottom2','DivBottom3','DivBottom4');J009_SHWxTabBottom(0,'odiDivHis_Remark','DivHis_Spl','DivHis_OtherPrice','DivHis_Cst')}">
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
                            <div class="xCN_DivDetailFooterCalNetDisCap" >
                                <%=ViewData("olaFCXzhDis")%>                        
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
                                       readonly="readonly"
                                       onblur="W_DATxCalFootDis()" 
                                       onkeydown="return otbFootDis_onkeydown()"
                                       class="xCN_AllReadOnlyBGColor"
                                       value="<%=Model.FTXzhDisChgTxt%>" 
                                       type="text" />                 
                            </div>

                        </div>
                        <div class="xCN_DivDetailFooterCalNetColumn1Sub">
                        
                            <div class="xCN_DivDetailFooterCalNetGrandAECap" >
                                <%=ViewData("olaFCXzhGndAE")%>                        
                            </div>
                            <div class="xCN_DivBrowData xCN_DivBrowDataSetTopMargin">
                                <input type="button" 
                                    id="ocmGndAE" 
                                    value='...' 
                                    disabled="disabled"
                                    class="xCN_InputBottomBrowse"/>               
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
                                       onblur="otbVatRate_onblur()" 
                                       onkeydown="return otbVatRate_onkeydown(event.keyCode,event.which)"
                                       onkeypress="return otbVatRate_onkeypress(event.keyCode,event.which)" 
                                       class=""
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

            <!-- Button Finish & Back -->
            <div  class="xW_DivBotton">
                <div style="float:right;margin-top:2px;">
                    <button style="cursor:pointer; 
                        width:130; height:25px;" 
                        title='<%=ViewData("tBack")%>' 
                        onclick="W_SHWxNextPage('1')">
                        <img align="left" style="width:18px; height:18px;" 
                            src='<%=Url.Content("~/Content/img/imgIcon16x16/Back_16x16.png")%>'alt="olaBack" />
                            <%=ViewData("tBack")%>
                    </button>
                    <button style="cursor:pointer; 
                        width:130; height:25px;" 
                        title='<%=ViewData("tFinish")%>' 
                        onclick="W_DATxSaveDocument()">
                        <img align="right" style="width:18px; height:18px;" 
                            src='<%=Url.Content("~/Content/img/imgIcon16x16/Finish_16x16.png")%>'alt="olaFinish" />
                            <%=ViewData("tFinish")%>
                    </button>
                </div>
            </div>

            <div class="xCN_AllBorderColor xW_DivDetailDT">
                <!-- Browse Product -->
                <div id="odiBrwPdt" class ="xW_DivDetailDTSub xW_DivMaginDT xCN_DivDisplayNone" >
                    <div class ="xCN_DivGridDetail">
                        <div style="height:auto">
                            <%Html.RenderPartial("uBrowse\uBrwProduct", ViewData("DataPdt"))%>
                        </div>
                    </div>
                </div> 
            </div>

        </div>
        <%-------------------Product---------------------------%>
    </div>

    <!-- Discount -->
    <div id="odiBrwDis" title='<%=ViewData("olaFCXzhDis")%>' class="">
        <div style="height:auto">
            <%Html.RenderPartial("uBrowse\uBrwDis")%>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
    <%--CSS--%>
    <link rel="Stylesheet" type="text/css" href="<%=Url.Content("~/Content/AdaCss/Local/FCS_cvcTACTPoHD.css") %>" />
    <%--External Script--%>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J001_LoadAutoGenCode.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J004_LoadTransactionMenu.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J005_KeepOldValue.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J006_LoadBrowse.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J009_ShowTab.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J010_ShowTabData.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J011_ComboBoxLibrary.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J015_UIBrowse.js") %>" ></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J016_Wizard.js") %>" ></script>

    <script type="text/javascript">
        //### ตัวแปรกลาง ##//
        var oW_xmlHttp;
        var tW_BeforeEditData;
        var tW_Menu = 'omnSleSQ';
        var nW_StaPrcDoc = 0;
        var nW_StaDocCancel = 0;
        var nW_StaDoc = 0;
        var tW_ShwBrwCst = '0'; //สถานะการเปิดค้นหา Spl *CH 25-03-2013
        var tW_ShwBrwRefDoc = '0'; //สถานะการเปิดค้นหาเอกสารขอซื้อ *CH 25-03-2013
        var tW_ShwBrwArea = '0'; //สถานะการเปิดค้นหาเขตซื้อ *CH 25-03-2013
        var tW_ShwBrwUser = '0';
        var tW_ShwBrwSpn = '0';
        var tW_StaBtnUsr; //1 รับสั่งขาย, 2 จัดของ , 3 เช็คของ , 4 ส่งของ
        var tW_StaBtnUsrOld;
        var tW_Controller = 'cvcTACTSqHD';
        var tW_PassedValue; //รหัสที่ส่งมาจากหน้าค้นหา
        var tW_StaPagePdt = '1'; //0:odiBrwPdt , 1:odiDetailFooter //*CH 02-04-2013
        var nW_DecLength = '<%=ViewData("nVB_CNDecAmtForShw") %>';
        var tW_PdtFormGrid = "N"; //สถานะการเลือกสินค้าจากตารางที่เพิ่มแล้ว *CH 14-03-2013

        window.onload = function () {
            tJ002_VirtualDirectory = '<%=Session("VirtualDirectory") %>';
            tJ003_VirtualDirectory = '<%=Session("VirtualDirectory") %>';
            tJ004_VirtualDirectory = '<%=Session("VirtualDirectory") %>';

            try {
                J003_SHWxWaiting();
                if ('<%=ViewData("AuthorRead") %>' != '1') {
                    var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Read%>';
                    var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
                    var tPwdAllow = '<%=Session("bVB_CNPwdAllow") %>';
                    var bAllow = J002_CHKtCheckAuthorize(tW_Menu, tAuthor, tPwdAllow, tMsgNotAuthorize);
                    if (bAllow == false) {
                        var tUrl = '<%=Url.Action("Index","cvcCNPanal", New With {.ptMenuGrpName = "Sale"}) %>';
                        window.location = encodeURI(tUrl);
                        return false;
                    }
                }

                W_CRExXMLHttpRequest();
                tW_BeforeEditData = W_GETtDataHDString();
                W_GETxCstLoad(true);
                W_GETxUsrAndDptName();
                W_SETxDocDisplayStatus();
                W_SHWxDocStatus('odiNoneApprove', 'odiApprove', 'odiCancel');
                W_GETxValueMaster();
                setTimeout(function () {
                    W_BrowseCst();
                    J003_DISxWaiting();
                }, 1000);
            } catch (ex) {
                J002_SHWxMsgError('Window Onload', ex);
            }
        }

        function W_FRMxNewDoc() {
            try {
                J003_SHWxWaiting();
                var tdate = W_GETtDateTimeNow();
                var tUrl = '<%=Url.Action("C_CLRxClearSession","cvcTACTSqHD") %>' + "?ptDate=" + tdate;
                oW_xmlHttp.open("GET", encodeURI(tUrl), false);
                oW_xmlHttp.send(null);
                tUrl = '<%=Url.Action("Index","cvcTACTSqHD") %>';
                window.location = encodeURI(tUrl);
            } catch (ex) {
                J002_SHWxMsgError('W_FRMxNewDoc', ex);
            } finally {
                //J003_DISxWaiting();
            }
        }

        function W_FRMxFindDoc() {
            try {
                J003_SHWxWaiting();
                var tUrl = '<%=Url.Action("wBrwDoc","cvcCNBrwDoc") %>';
                window.location = encodeURI(tUrl);
            } catch (ex) {
                J002_SHWxMsgError('W_FRMxFindDoc', ex);
            } finally {
                //J003_DISxWaiting();
            }
        }

        function W_GETxValueMaster() {
            W_FRMxGetFieldName(tW_Controller, 'C_GETtFeildName', 'otbFTAreCode', 'otbFTAreName', 'otbFTAreCodeOld',
                                'TCNMArea', 'FTAreCode', 'FTAreName', '<%=ViewData("olaFTAreCode")%>');
            W_FRMxGetFieldName(tW_Controller, 'C_GETtFeildName', 'otbFTXzhUsrEnter', 'otbUsrEnterName', 'otbFTXzhUsrEnterOld',
                                'TSysUser', 'FTUsrCode', 'FTUsrName', '<%=ViewData("olaFTXzhUsrEnter")%>');
            W_FRMxGetFieldName(tW_Controller, 'C_GETtFeildName', 'otbFTSpnCode', 'otbSpnName', 'otbSpnOld',
                                'TCNMSpn', 'FTSpnCode', 'FTSpnName', '<%=ViewData("olaFTSpnCode")%>');
            W_FRMxGetFieldName(tW_Controller, 'C_GETtFeildName', 'otbFTXzhUsrPacker', 'otbUsrPackerName', 'otbFTXzhUsrPackerOld',
                                'TSysUser', 'FTUsrCode', 'FTUsrName', '<%=ViewData("olaFTXzhUsrPacker")%>');
            W_FRMxGetFieldName(tW_Controller, 'C_GETtFeildName', 'otbFTXzhUsrChecker', 'otbUsrCheckerName', 'otbFTXzhUsrCheckerOld',
                                'TSysUser', 'FTUsrCode', 'FTUsrName', '<%=ViewData("olaFTXzhUsrChecker")%>');
            W_FRMxGetFieldName(tW_Controller, 'C_GETtFeildName', 'otbFTXzhUsrSender', 'otbUsrSenderName', 'otbFTXzhUsrSenderOld',
                                'TSysUser', 'FTUsrCode', 'FTUsrName', '<%=ViewData("olaFTXzhUsrSender")%>');
        }

        function W_GETtDateTimeNow() {
            var dNow = new Date;
            var tDateTimeNow = dNow.getFullYear().toString() + dNow.getMonth().toString() + dNow.getDay().toString() + dNow.getHours().toString() + dNow.getMinutes().toString() + dNow.getSeconds().toString() + dNow.getMilliseconds().toString();
            return tDateTimeNow;
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
            var tUrl = '<%=Url.Action("C_GETxUsrAndDptName","cvcTACTSqHD") %>' + "?ptUsrCode=" + tUsrCode + "&ptDateTimeNow=" + tDataTimeNow;
            oW_xmlHttp.open("GET", encodeURI(tUrl), false);
            oW_xmlHttp.send(null);
            var valueFis = oW_xmlHttp.responseText;
            var mytool_array = valueFis.split("|");
            document.getElementById("otbUsrName").value = mytool_array[0];
            document.getElementById("otbDptName").value = mytool_array[1];
        }

        function W_FRMxGetFieldName(ptController, ptAction, ptObjCodeId, ptObjNameId, ptObjCodeOldId, ptTblName, ptFieldCode, ptFieldName, ptMsgErr) {
            var tMsgNoData = '<%=ViewData("tMsgDAT_Notfound001")%>' + ptMsgErr;
            J002_GETxFieldName(ptController, ptAction, ptObjCodeId, ptObjNameId, ptObjCodeOldId, ptTblName, ptFieldCode, ptFieldName, tMsgNoData);
        }

        function W_KEYxEnterCode(poKeyCode, poWhich, ptObjName) {
            var tKeycode = poKeyCode;
            if (poWhich != null) { tKeycode = poWhich; }
            if (tKeycode == 13) {
                $('#' + ptObjName).select();
            }
            return !(tKeycode == 13);
        }

        //ตรวจสอบว่ามีการเปลี่ยนแปลงข้อมูลหรือไม่
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
                var tStr = '';
                tStr += document.getElementById('otbFTCstCode').value;
                tStr += document.getElementById('orbCash').checked == true ? '1' : '2';
                //tStr += document.getElementById('otbFNXzhCrTerm').value;
                tStr += $('#otbXFNXzhCrTermLock').val(); //*CH 08-01-2013
                tStr += document.getElementById('otbFTXzhRefInt').value;
                tStr += document.getElementById('otbFTXzhRefExt').value;
                tStr += document.getElementById('odtFDXzhRefExtDate').value;
//                tStr += document.getElementById('otbFTRteCode').value;
                tStr += document.getElementById('ocbFTWahCode').value;
                tStr += document.getElementById('odtFDXzhTnfDate').value;
                tStr += document.getElementById('otbFTXzhTnfID').value;
//                tStr += document.getElementById('otbFTShpCode').value;
                tStr += document.getElementById('odtFDXzhDueDate').value;
                tStr += document.getElementById('ocbFTXzhVATInOrEx').value;
                tStr += document.getElementById('otbFTXzhDstPaid').value;
                tStr += document.getElementById('otbFTXzhVehID').value;
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

        function W_CHKbHasChangeDataDT() {
            try {
                var tDate = J002_GETtTimeStamp();
                var tUrl = '';
                tUrl += '<%=Url.Action("C_CHKtHasChangeDataDT","cvcTACTSqHD") %>';
                tUrl += '?ptDateTimeNow=' + tDate;
                W_CRExXMLHttpRequest();
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
        //ออกจากเมนูเสนอราคา
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
            var tDataTimeNow = J002_GETtTimeStamp();
            //*CH 1 ไปรายการโปรด ; Not1 ไปหน้าขาย
            var tUrl;
            if (ptFlag == '1') {
                tUrl = '<%=Url.Action("Index","Home") %>' + '?ptDate=' + tDataTimeNow;
            } else {
                tUrl = '<%=Url.Action("Index","cvcCNPanal") %>?ptMenuGrpName=Sale';
            }
            window.location = encodeURI(tUrl);
        }

        //วันที่เอกสาร
        function W_SETxDocDateOnChange() {
            document.getElementById('odtFDXzhDocDate').focus();
            setTimeout(function () {
                $('#otbDptName').focus();
            }, 500);
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

        function W_SETxDisableDocNo(pbStatus) {
            //Disable DocNo and redio CshOrCrd
            J002_SETxReadOnly('otbFTXzhDocNo', pbStatus);
            J002_SETxReadOnly('otbFTCstCode', pbStatus);
//            //J002_SETxReadOnly('otbFNXzhCrTerm', pbStatus);
            document.getElementById('orbCash').disabled = pbStatus;
            document.getElementById('orbCredit').disabled = pbStatus;
        }
        function W_SETxDisableAll(pbStatus) {
//            //------Text
            //J002_SETxReadOnly('otbFTSplCode', pbStatus);
            J002_SETxReadOnly('otbFTXzhRefInt', pbStatus);
            J002_SETxReadOnly('otbFTXzhRefExt', pbStatus);
            //J002_SETxReadOnly('otbFNXzhCrTerm', pbStatus);
            J002_SETxReadOnly('otbXFNXzhCrTermLock', pbStatus); //*CH 08-01-2012        
//            J002_SETxReadOnly('otbFTRteCode', pbStatus);
            J002_SETxReadOnly('otbFTXzhTnfID', pbStatus);
//            J002_SETxReadOnly('otbFTShpCode', pbStatus);
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
//            //------Text

//            //------Button
//            document.getElementById("ocmUsrEnter").disabled = pbStatus;
//            document.getElementById("ocmSpn").disabled = pbStatus;
//            document.getElementById("ocmUsrPacker").disabled = pbStatus;
//            document.getElementById("ocmUsrChecker").disabled = pbStatus;
//            document.getElementById("ocmUsrSender").disabled = pbStatus;
//            document.getElementById("ocmBrwPdt").disabled = pbStatus;
//            document.getElementById("ocmDis").disabled = pbStatus;
//            document.getElementById("ocmAdd").disabled = pbStatus;
//            document.getElementById("ocmDelete").disabled = pbStatus;
//            document.getElementById("ocmFootDis").disabled = pbStatus;
//            document.getElementById("ocmGndAE").disabled = pbStatus;
//            document.getElementById("ocmBrwVAT").disabled = pbStatus;
//            document.getElementById("oimBrwRefDoc").disabled = pbStatus;
//            //------Button

//            //------radio button
            document.getElementById("orbCash").disabled = pbStatus;
            document.getElementById("orbCredit").disabled = pbStatus;
//            //------radio button

//            //------Combo
            document.getElementById("ocbUnit").disabled = pbStatus;
            //------Combo
        }

        //สถานะเอกสาร
        function W_CHKbPostOrDelStatus() {
            return (nW_StaDocCancel == 1 || nW_StaPrcDoc == 1);
        }

        function W_LODxReloadData(ptDocNo) {
            var tUrl = '<%=Url.Action("wApvTACTSq","cvcTACTSqHD") %>' + '?ptDocNo=' + ptDocNo;
            window.location = tUrl;
        }

        function W_CHKtHasDocNo(ptDocNo) {
            var tDateTimeNow = W_GETtDateTimeNow();
            var tDocNo = document.getElementById("otbFTXzhDocNo").value;
            var tUrl = '<%=Url.Action("C_CHKtHasDocNo","cvcTACTSqHD") %>' + '?ptDocNo=' + tDocNo + '&ptDateTimeNow=' + tDateTimeNow;
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

        function W_DATxSaveDocument(pbNoReload) {
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
                if (nW_StaDocCancel == 1) {
                    alert('<%=ViewData("tMsgNoSaveCancel")%>');
                    J003_DISxWaiting();
                    return false
                }
                if (nW_StaPrcDoc == 1) {
                    alert('<%=ViewData("olatMsgNoEdit")%>');
                    J003_DISxWaiting();
                    return false
                }
                if (W_CHKbHasStrValue("otbFTCstCode") == false) {
                    alert('<%=ViewData("olatMsgErrorData") %>');
                    J003_DISxWaiting();
                    return false;
                }
                if (W_CHKbHasStrValue("otbFTXzhDocNo") == false) {
                    alert('<%=ViewData("olatMsgErrorData") %>');
                    J003_DISxWaiting();
                    return false;
                }
                if (W_GETtPdtCount() < 1) {
                    alert('<%=ViewData("olatMsgDoc_Empty") %>');
                    J003_DISxWaiting();
                    return false;
                }
                if (nW_StaDoc != 1) {
                    if (!confirm('<%=ViewData("tMsgConfirmSave") %>')) {
                        J003_DISxWaiting();
                        return false;
                    }
                }
                var bAutoDocNo = document.getElementById("otbFTXzhDocNo").readOnly;
                if (bAutoDocNo == false) {
                    var tDocNo = document.getElementById("otbFTXzhDocNo").value;
                    if (W_CHKtHasDocNo(tDocNo) == true) {
                        if (!confirm('<%=ViewData("tMsgCodeHasUsed") %>')) {
                            J003_DISxWaiting();
                            return false;
                        }
                        var bCash = document.getElementById("orbCash").checked;
                        if (bCash == true) {
                            document.getElementById("otbFTXzhDocNo").value = '<%=ViewData("FmtCash") %>';
                        }
                        else {
                            document.getElementById("otbFTXzhDocNo").value = '<%=ViewData("FmtCredit") %>';
                        }
                        J002_SETxReadOnly("otbFTXzhDocNo", true);
                    }
                }
                var tModel = W_GEToModel();
                var url = '<%= Url.Action("C_DATxSaveDocument", "cvcTACTSqHD") %>';
                var oXmlHttp = J002_GEToXMLHttpRequest();
                oXmlHttp.open("Post", url, false);
                oXmlHttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                oXmlHttp.send(tModel);

                if (oXmlHttp.status != 200) {
                    alert('Error' + oXmlHttp.status + '\n' + oXmlHttp.responseText);
                    J003_DISxWaiting();
                    return false;
                }
                var aArr = oXmlHttp.responseText.split('|');
                if (aArr[0] != null && aArr[0] != '') {
                    alert(aArr[0]);
                    J003_DISxWaiting();
                    return false;
                }
                if (pbNoReload != true) {
                    document.getElementById('otbFTXzhDocNo').value = aArr[1];
                    //W_FRMxReload(true);
                    W_LODxReloadData(aArr[1]);
                }

                return true;
            }
            catch (ex) {
                J002_SHWxMsgError("W_DATxSaveDocument", ex);
                J003_DISxWaiting();
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
            tModel += "&FTXzhVATInOrEx=" + document.getElementById("ocbFTXzhVATInOrEx").value;
            tModel += "&FTDptCode=" + document.getElementById("otbFTDptCode").value;
            tModel += "&FTUsrCode=" + document.getElementById("otbFTUsrCode").value;
            tModel += "&FTCstCode=" + document.getElementById("otbFTCstCode").value;
            tModel += "&FTAreCode=" + document.getElementById("otbFTAreCode").value;
            tModel += "&FTSpnCode=" + document.getElementById("otbFTSpnCode").value;
            tModel += "&FTPrdCode=" + document.getElementById("otbFTPrdCode").value;
            tModel += "&FTWahCode=" + document.getElementById("ocbFTWahCode").value;
            tModel += "&FNXzhCrTerm=" + $('#otbXFNXzhCrTermLock').val();
            tModel += "&FDXzhDueDate=" + J002_CONtDateTime(document.getElementById("odtFDXzhDueDate").value);
            tModel += "&FTXzhRefExt=" + document.getElementById("otbFTXzhRefExt").value;
            tModel += "&FDXzhRefExtDate=" + J002_CONtDateTime(document.getElementById("odtFDXzhRefExtDate").value);
            tModel += "&FTXzhRefInt=" + document.getElementById("otbFTXzhRefInt").value;
            tModel += "&FTXzhRefAE=" + document.getElementById("otbGndAE").value;
            tModel += "&FDXzhTnfDate=" + J002_CONtDateTime(document.getElementById("odtFDXzhTnfDate").value);
            tModel += "&FDXzhBillDue=" + J002_CONtDateTime(document.getElementById("odtFDXzhBillDue").value);
            tModel += "&FCXzhVATRate=" + J002_GETcNumber(document.getElementById("otbVatRate").value);
            tModel += "&FCXzhTotal=" + J002_GETcNumber(document.getElementById("otbFCXzhTotal").value);
            tModel += "&FCXzhNonVat=" + J002_GETcNumber(document.getElementById("otbFCXzhNonVat").value);
            tModel += "&FCXzhB4DisChg=" + J002_GETcNumber(document.getElementById("otbFCXzhB4DisChg").value);
            tModel += "&FTXzhDisChgTxt=" + document.getElementById("otbFootDis").value;
            tModel += "&FCXzhDis=" + J002_GETcNumber(document.getElementById("otbFCXzhDis").value);
            tModel += "&FCXzhAftDisChg=" + J002_GETcNumber(document.getElementById("otbFCXzhAftDisChg").value);
            tModel += "&FCXzhVat=" + J002_GETcNumber(document.getElementById("otbFCXzhVat").value);
            tModel += "&FCXzhVatable=" + J002_GETcNumber(document.getElementById("otbFCXzhVatable").value);
            tModel += "&FCXzhGrand=" + J002_GETcNumber(document.getElementById("otbFCXzhGrand").value);
            tModel += "&FTXzhGndText=" + document.getElementById("olaGndTxt").innerHTML;
            tModel += "&FCXzhGndAE=" + J002_GETcNumber(document.getElementById("otbFCXzhGndAE").value);
            tModel += "&FTXzhStaPaid=" + document.getElementById("otbFTXzhStaPaid").value;
            tModel += "&FTXzhStaRefund=" + document.getElementById("otbFTXzhStaRefund").value;
            tModel += "&FTXzhStaType=" + document.getElementById("otbFTXzhStaType").value;
            tModel += "&FTXzhStaDoc=" + document.getElementById("otbFTXzhStaDoc").value;
            tModel += "&FTXzhRmk=" + document.getElementById("otbRmk").value;
            tModel += "&FNXzhSign=" + document.getElementById("otbFNXzhSign").value;
            tModel += "&FTXzhCshOrCrd=" + tCshOrCrd;
            tModel += "&FTXzhDstPaid=" + document.getElementById("otbFTXzhDstPaid").value;
            tModel += "&FNXzhStaDocAct=" + tStaDocAct;
            tModel += "&FNXzhStaRef=" + document.getElementById("otbFNXzhStaRef").value;
            tModel += "&FTXzhUsrEnter=" + document.getElementById("otbFTXzhUsrEnter").value;
            tModel += "&FTXzhUsrPacker=" + document.getElementById("otbFTXzhUsrPacker").value;
            tModel += "&FTXzhUsrChecker=" + document.getElementById("otbFTXzhUsrChecker").value;
            tModel += "&FTXzhUsrSender=" + document.getElementById("otbFTXzhUsrSender").value;
            tModel += "&FTXzhTnfID=" + document.getElementById("otbFTXzhTnfID").value;
            tModel += "&FTXzhVehID=" + document.getElementById("otbFTXzhVehID").value;
            tModel += "&FTXzhStaVatSend=" + document.getElementById("otbFTXzhStaVatSend").value;
            tModel += "&FTXzhCstName=" + document.getElementById("otbCstName").value;
            tModel += "&FTXzhCstAddr=" + document.getElementById("otbCstAddr").value;
            //tModel += "&FTRteCode=" + document.getElementById("otbFTRteCode").value;
            //tModel += "&FCXzhRteFac=" + J002_GETcNumber(document.getElementById("otbRteRate").value);
            return tModel;
        }

        //ตรวจสอบว่ามีการเลือกลูกค้าหรือไม่
        function W_CHKxHaveCst() {
            if ($('#otbFTCstCode').val() != '') {
                W_SHWxNextPage('2');
            }
        }
        //เปิดหน้าถัดไป
        function W_SHWxNextPage(nPage) {
            //if ($('#otbFTSplCode').val() != '') { J016_SHWxNextPage(nPage, 'odiCustomer', 'odiDocument', 'odiProduct'); }
            J016_SHWxNextPage(nPage, 'odiCustomer', 'odiDocument', 'odiProduct');
        }
        function W_SHWxBrwRefDocWithNextBtn() {
            tW_ShwBrwRefDoc = '0';tW_ShwBrwArea = '0';tW_ShwBrwUser = '0';tW_ShwBrwSpn = '0';
            //J016_SHWxNextPage(0, 'odiBrwDocSq',  'odiBrwArea');
            W_SHWxBrwRefDoc(); 
        }
        function W_SHWxBrwRefDoc() {
            try {
                //สามารถ ค้นหาเอกสารโดยที่ไม่ได้เลือกลูกค้าได้
                //if ($('#otbFTCstCode').val() != '') {
                    C_SETxFieldVal("TACTSqHD.FTCstCode");
                    C_SETxSplCodeNCaseCode($('#otbFTCstCode').val(), 'Sq'); //*CH 28-01-2013
                    //$ui('#odiBrwDocPq').dialog('open');
                    switch (tW_ShwBrwRefDoc) {
                        case '0':
                            tW_ShwBrwRefDoc = '1';
                            tW_ShwBrwArea = '0';
                            tW_ShwBrwUser = '0';
                            tW_ShwBrwSpn = '0';
                            J016_SHWxNextPage(0, 'odiBrwDocSq', 'odiBrwArea', 'odiBrwUser', 'odiBrwSpn');
                            break;
                        case '1':
                            tW_ShwBrwRefDoc = '0';
                            tW_ShwBrwArea = '0';
                            tW_ShwBrwUser = '0';
                            tW_ShwBrwSpn = '0';
                            $('#odiBrwDocSq').addClass('xCN_DivDisplayNone');
                            break;
                    }
                //}
            } catch (ex) {
                J002_SHWxMsgError('W_SHWxBrwRefDoc', ex);
            } finally {
                J003_DISxWaiting();
            }
        }
        
        function otbFTCstCode_onkeydown(poKeyCode, poWhich) {
            var tKeycode = poKeyCode;
            if (poWhich != null) { tKeycode = poWhich; }
            if (tKeycode == 13) {
                W_GETxCstLoad();
            }
            return !(tKeycode == 13);
        }
        function W_GETxCstLoad(pbOnload) {
            var tCst = document.getElementById("otbFTCstCode").value;
            var tOldCst = document.getElementById("otbFTCstCodeOld").value;
            if (tCst == tOldCst && pbOnload != true) {
                return false;
            }
            if (tCst == null) {
                tCst = '';
            }
            tCst = J002_STRttrim(tCst);
            if (tCst == '') {
                if (tOldCst != null && tOldCst != '' && pbOnload != true) {
                    var nPdtCount = W_GETtPdtCount();
                    if (nPdtCount > 0) {
                        document.getElementById("otbFTCstCode").value = tOldCst; //เพื่อไม่ให้เค้า event onblur ตอนแสดง message confirm
                        bConfirm = confirm('<%= ViewData("olatMsgConfirmChangeCst") %>');
                        if (bConfirm == true) {
                            W_CLRxDataDT();
                        }
                        else {
                            document.getElementById("otbFTCstCode").value = tOldCst;
                            return false;
                        }
                    }
                }
                document.getElementById("otbFTCstCode").value = '';
                document.getElementById("otbFTCstCodeOld").value = '';
                document.getElementById("otbCstName").value = '';
                document.getElementById("otbCstAddr").value = '';
                document.getElementById("otbFTCstTel").value = '';
                document.getElementById("otbFTCstFax").value = '';
                return false;
            }            
            //W_CRExXMLHttpRequest();
            var tDataTimeNow = W_GETtDateTimeNow();
            var tUrl = '<%=Url.Action("C_GETxCst","cvcTACTSqHD") %>' + "?ptCstCode=" + tCst + "&ptDateTimeNow=" + tDataTimeNow;
            oW_xmlHttp.open("GET", encodeURI(tUrl), false);
            oW_xmlHttp.send(null);
            var valueFis = oW_xmlHttp.responseText;
            if (oW_xmlHttp.status != 200) {
                document.getElementById('otbFTCstCode').value = tOldCst;
                alert("Error" + oW_xmlHttp.status + "\n" + oW_xmlHttp.responseText);
                return false;
            }
            var aArr = valueFis.split("|");
            if (aArr[0] != null && aArr[0] != "") {
                document.getElementById('otbFTCstCode').value = tOldCst;
                alert(aArr[0]);
                return false;
            }
            if (aArr[1] == null || aArr[1] == "") {
                document.getElementById('otbFTCstCode').value = tOldCst;
                alert('<%= ViewData("olatMsgNonDataCst")%>');
                return false;
            }
            var bConfirm = true;
            if (tOldCst != null && tOldCst != '' && pbOnload != true) {
                var nPdtCount = W_GETtPdtCount();
                if (nPdtCount > 0) {
                    document.getElementById("otbFTCstCode").value = tOldCst; //เพื่อไม่ให้เค้า event onblur ตอนแสดง message confirm
                    bConfirm = confirm('<%= ViewData("olatMsgConfirmChangeCst") %>');
                    if (bConfirm == true) {
                        W_CLRxDataDT();
                    }
                    else {
                        return false;
                    }
                }
            }
            if (bConfirm == true) {
                document.getElementById("otbCstName").value = aArr[1];
                document.getElementById("otbCstAddr").value = aArr[2];
                document.getElementById("otbFTCstTel").value = aArr[3];
                document.getElementById("otbFTCstFax").value = aArr[4];
                document.getElementById("otbFNCstCrTerm").value = aArr[5];
                document.getElementById("otbFNCstViaTime").value = aArr[6];
                document.getElementById("otbFTCstDiscWhs").value = aArr[7];

                document.getElementById("otbFTCstCodeOld").value = tCst;
                document.getElementById("otbFTCstCode").value = tCst;

                if (pbOnload != true) {
                    document.getElementById("otbFTCstTspPaid").value = aArr[8];
                    document.getElementById("otbFTAreCode").value = aArr[9];
                    document.getElementById("otbFTAreCodeOld").value = aArr[9];
                    document.getElementById("otbFTCstVATInOrEx").value = aArr[10];
                    document.getElementById("otbFTSpnCode").value = aArr[11];
                    document.getElementById("otbSpnOld").value = aArr[11];

                    W_SETxCstDetail(pbOnload);
                    W_SETxResetDocNo();
                }
                W_SETxShowCreditTerm(pbOnload);
            }
        }

        function W_SETxCstDetail(pbOnload) {
            var tFTCstTspPaid = document.getElementById('otbFTCstTspPaid').value;
            var tFNCstCrTerm = document.getElementById('otbFNCstCrTerm').value;
            var tFTCstVATInOrEx = document.getElementById('otbFTCstVATInOrEx').value;
            var tFTShpCode = document.getElementById('otbFTAreCode').value;
            var tFNCstViaTime = document.getElementById('otbFNCstViaTime').value;
            var tFTCstDiscWhs = document.getElementById('otbFTCstDiscWhs').value;

            if (pbOnload == null || pbOnload == false) {
                document.getElementById('otbFTXzhDstPaid').value = tFTCstTspPaid;
                document.getElementById('otbXFNXzhCrTermLock').value = tFNCstCrTerm;
                if (tFNCstCrTerm > 0) {
                    document.getElementById('orbCredit').checked = true;
                }
                else {
                    document.getElementById('orbCash').checked = true;

                }
                document.getElementById('ocbFTXzhVATInOrEx').value = tFTCstVATInOrEx;
                document.getElementById('otbFTAreCode').value = tFTShpCode;
                var dDate = '<%=Format(Model.FDXzhTnfDate,"dd/MM/yyyy")%>';
                var tDate = W_SETtDateAdd(dDate, tFNCstViaTime);
                document.getElementById('odtFDXzhTnfDate').value = tDate;
                document.getElementById('otbFootDis').value = tFTCstDiscWhs;
                if (document.getElementById('otbFTAreCode').value != '' && document.getElementById('otbFTAreCode').value != null) {
                    W_FRMxGetFieldName(tW_Controller, 'C_GETtFeildName', 'otbFTAreCode', 'otbFTAreName', 'otbFTAreCodeOld', 'TCNMArea', 'FTAreCode', 'FTAreName', '<%=ViewData("olaFTAreCode")%>');
                }
                else {
                    document.getElementById('otbFTAreName').value = '';
                }
                if (document.getElementById('otbFTSpnCode').value != '' && document.getElementById('otbFTSpnCode').value != null) {
                    W_FRMxGetFieldName(tW_Controller, 'C_GETtFeildName', 'otbFTSpnCode', 'otbSpnName', 'otbSpnOld', 'TCNMSpn', 'FTSpnCode', 'FTSpnName', '<%=ViewData("olaFTSpnCode")%>');
                }
                else {
                    document.getElementById('otbSpnName').value = '';
                }
            }
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
                tCrTerm = 0;
            }
            else {
                tCrTerm = document.getElementById('otbFNCstCrTerm').value;
            }
            if (pbOnload != true) {
                document.getElementById("otbXFNXzhCrTermLock").value = tCrTerm;
                //W_CALxDueDate();
                //W_CALxTnfDate();
            }
        }

        function W_GETtPdtCount() {
            //W_CRExXMLHttpRequest();
            var tDataTimeNow = W_GETtDateTimeNow();
            var tModelPdt = document.getElementById("otbPdtCode").value;
            var tUrl = '<%=Url.Action("C_GETtPdtCount","cvcTACTSqHD") %>' + "?ptDateTimeNow=" + tDataTimeNow;
            oW_xmlHttp.open("GET", encodeURI(tUrl), false);
            oW_xmlHttp.send(null);
            return oW_xmlHttp.responseText; //return จำนวนรายการสินค้า ใน Grid
        }

        //ค้นหาลูกค้า
        function W_BrowseCst() {
            switch (tW_ShwBrwCst) {
                case '0':
                    tW_ShwBrwCst = '1';
                    W_GETxRefreshCst();
                    $('#odiDetailDT').removeClass('xCN_DivDisplayNone');
                    break;
                case '1':
                    tW_ShwBrwCst = '0';
                    $('#odiDetailDT').addClass('xCN_DivDisplayNone');
                    break;
            }
        }
        function W_GETxRefreshCst() {
            W_GETxDataMaster('otbFTCstCode', 'otbCstName', 'Cst');
        }

        function otbFTAreCode_onkeydown(ptKeyCode, ptWhich) {
            var tKey = ptKeyCode;
            if (ptWhich != null && ptWhich != '') {
                tKey = ptWhich;
            }
            if (tKey == 13) {
                W_FRMxGetFieldName(tW_Controller, 'C_GETtFeildName', 'otbFTAreCode', 'otbFTAreName', 'otbFTAreCodeOld', 'TCNMArea', 'FTAreCode', 'FTAreName', '<%=ViewData("olaFTAreCode")%>');
            }
            return !(tKey == 13);
        }


        function GetPassedValue(ptVal) {
            tW_PassedValue = ptVal;
        }
        function W_PRCxSelectedPqDoc(ptSeqNo) {
            $('#otbFTXzhRefInt').val(tW_PassedValue);
            W_ADDxRefDocData($('#otbFTXzhRefInt').val(), ptSeqNo, '1');
            W_SETxRebindGrid();
            W_DATxCalFooter(); //คำนวนส่วนลด ภาษี
            //$ui("#odiBrwDocPq").dialog("close");
            //otbFTXzhDocNo_onblur();
            tW_ShwBrwRefDoc = '0';
            tW_ShwBrwArea = '0';
            J016_DISxAllPage('odiBrwDocPq', 'odiBrwRate', 'odiBrwArea');
        }
        function W_ADDxRefDocData(ptDocNo, ptListSeq, ptReplace) {
            W_CRExXMLHttpRequest();
            var tDataTimeNow = W_GETtDateTimeNow();
            var tUrl = '<%=Url.Action("C_ADDxRefDocData","cvcTACTSqHD") %>' + "?ptRefDocNo=" + ptDocNo + '&ptListSeq=' + ptListSeq + '&ptReplace=' + ptReplace + '&ptDataTimeNow=' + tDataTimeNow;
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

        function W_SETxStaBtnUsr(ptSta) {
            tW_StaBtnUsr = ptSta;
        }
        function W_GETxDataMaster(ptObjCode, ptObjName, ptCase) {
            try {
                if (W_CHKbPostOrDelStatus() == true) {
                    alert('<%=ViewData("olatMsgNoEdit")%>');
                    return false;
                }
                switch (ptCase.toUpperCase()) {
                    case 'Cst'.toUpperCase():
                        W_PRCxFillData(); //*CH 18-01-2013 สั่งให้ Rebind ค่าในตารางใหม่ //Function ใน User Control
                        GridMaster_onLoad()//*CH 22-01-2013
                        C_SETxObjValue(ptObjCode, ptObjName);
                        break;
                    case 'Are'.toUpperCase():
                        switch (tW_ShwBrwArea) {
                            case '0':
                                tW_ShwBrwArea = '1';
                                tW_ShwBrwRefDoc = '0';
                                tW_ShwBrwUser = '0';
                                tW_ShwBrwSpn = '0';
                                W_PRCxFillAreaData(); //*CH 18-01-2013 สั่งให้ Rebind ค่าในตารางใหม่ //Function ใน User Control
                                GridMasterArea_onLoad();
                                C_SETxObjValueArea(ptObjCode, ptObjName);
                                J016_SHWxNextPage(1, 'odiBrwDocSq', 'odiBrwArea', 'odiBrwUser', 'odiBrwSpn');
                                //$('#odiBrwArea').removeClass('xCN_DivDisplayNone');
                                break;
                            case '1':
                                tW_ShwBrwRefDoc = '0';
                                tW_ShwBrwArea = '0';
                                tW_ShwBrwUser = '0';
                                tW_ShwBrwSpn = '0';
                                $('#odiBrwArea').addClass('xCN_DivDisplayNone');
                                break;
                        }
                        break;
                    case 'Usr'.toUpperCase():
                        if (tW_StaBtnUsr != tW_StaBtnUsrOld) {
                            tW_ShwBrwUser = '0';
                        }
                        switch (tW_ShwBrwUser) {
                            case '0':
                                tW_ShwBrwArea = '0';
                                tW_ShwBrwRefDoc = '0';
                                tW_ShwBrwUser = '1';
                                tW_ShwBrwSpn = '0';
                                tW_StaBtnUsrOld = tW_StaBtnUsr;
                                W_PRCxFillRateData(); //*CH 18-01-2013 สั่งให้ Rebind ค่าในตารางใหม่ //Function ใน User Control
                                GridMasterRate_onLoad();
                                C_SETxObjValueRate(ptObjCode, ptObjName);
                                J016_SHWxNextPage(2, 'odiBrwDocSq', 'odiBrwArea', 'odiBrwUser', 'odiBrwSpn');
                                //$('#odiBrwArea').removeClass('xCN_DivDisplayNone');
                                break;
                            case '1':
                                tW_ShwBrwRefDoc = '0';
                                tW_ShwBrwArea = '0';
                                tW_ShwBrwUser = '0';
                                tW_ShwBrwSpn = '0';
                                tW_StaBtnUsrOld = '0';
                                $('#odiBrwUser').addClass('xCN_DivDisplayNone');
                                break;
                        }
                        break;
                    case 'Spn'.toUpperCase():
                        switch (tW_ShwBrwSpn) {
                            case '0':
                                tW_ShwBrwArea = '0';
                                tW_ShwBrwRefDoc = '0';
                                tW_ShwBrwUser = '0';
                                tW_ShwBrwSpn = '1';
                                W_PRCxFillRsnData(); //*CH 18-01-2013 สั่งให้ Rebind ค่าในตารางใหม่ //Function ใน User Control
                                GridMasterRsn_onLoad();
                                C_SETxObjValueRsn(ptObjCode, ptObjName);
                                J016_SHWxNextPage(3, 'odiBrwDocSq', 'odiBrwArea', 'odiBrwUser', 'odiBrwSpn');
                                //$('#odiBrwArea').removeClass('xCN_DivDisplayNone');
                                break;
                            case '1':
                                tW_ShwBrwRefDoc = '0';
                                tW_ShwBrwArea = '0';
                                tW_ShwBrwUser = '0';
                                tW_ShwBrwSpn = '0';
                                $('#odiBrwSpn').addClass('xCN_DivDisplayNone');
                                break;
                        }
                        break;
                }
            } catch (ex) {
                J002_SHWxMsgError('W_GETxDataMaster', ex);
            } finally { J003_DISxWaiting(); }
        }

        //ใช้งานสำหรับหน้าจอค้่าหา Master
        function W_SETxSelectedDataMaster(ptObjCode, ptObjName, ptCase, ptSta) {//PtSta 1:Select Data, Not1:Select None
            switch (ptCase.toUpperCase()) {
                case 'Cst'.toUpperCase():
                    if (nW_StaDoc != 1) {
                        switch (ptSta) {
                            case '1':
                                J015_SETxSelectData(tJ015_ReturnValue, ptObjCode);
                                W_GETxCstLoad(); tW_ShwBrwCst = '0';
                                break;
                        }
                        //$ui('#odiBrwSpl').dialog('close');
                        tW_ShwBrwCst = '0';                        
                        $('#odiDetailDT').addClass('xCN_DivDisplayNone');
                    }
                    break;
                case 'Are'.toUpperCase():
                    if (ptSta == '1') {
                        J015_SETxSelectData(tJ015_ReturnValue, ptObjCode, ptObjName);
                    }
                    tW_ShwBrwRefDoc = '0';
                    tW_ShwBrwArea = '0';
                    tW_ShwBrwUser = '0';
                    tW_ShwBrwSpn = '0';
                    J016_DISxAllPage('odiBrwDocSq', 'odiBrwArea', 'odiBrwUser', 'odiBrwSpn');
                    //$ui('#odiBrwArea').dialog('close');
                    break;
                case 'Usr'.toUpperCase():
                    if (ptSta == '1') {
                        J015_SETxSelectData(tJ015_ReturnValue, ptObjCode, ptObjName);
                    }
                    tW_ShwBrwRefDoc = '0';
                    tW_ShwBrwArea = '0';
                    tW_ShwBrwUser = '0';
                    tW_ShwBrwSpn = '0';
                    J016_DISxAllPage('odiBrwDocSq', 'odiBrwArea', 'odiBrwUser', 'odiBrwSpn');
                    //$ui('#odiBrwArea').dialog('close');
                    break;
                case 'Spn'.toUpperCase():
                    if (ptSta == '1') {
                        J015_SETxSelectData(tJ015_ReturnValue, ptObjCode, ptObjName);
                    }
                    tW_ShwBrwRefDoc = '0';
                    tW_ShwBrwArea = '0';
                    tW_ShwBrwUser = '0';
                    tW_ShwBrwSpn = '0';
                    J016_DISxAllPage('odiBrwDocSq', 'odiBrwArea', 'odiBrwUser', 'odiBrwSpn');
                    break;
            }
        }

        function W_SETxFormatDocNo() {
            if (document.getElementById("otbFTXzhDocNo").readOnly == true && nW_StaDoc == 1) {
                return false;
            }
            var bCshChecked = document.getElementById("orbCash").checked;
            if (bCshChecked == true) {
                document.getElementById("otbFTXzhDocNo").value = '<%=ViewData("FmtCash") %>';
            }
            else {
                document.getElementById("otbFTXzhDocNo").value = '<%=ViewData("FmtCredit") %>';
            }
        }

        //GRID PRODUCT
        function grid_onLoad() {
            $('#GridDT tr', this).live('dblclick', function (e) {
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
            })
        }
        function onRowSelected(e) {
            if (e.row != null) {
                if (e.row.cells.length < 2) { return 0; }
                var tSeq = e.row.cells[0].innerHTML;
                var tPdtCode = e.row.cells[1].innerHTML;
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
                var tSerial = e.row.cells[13].innerHTML;
                var tDisRte = e.row.cells[14].innerHTML;
                var tDocNo = document.getElementById("otbFTXzhDocNo").value;
                var tDateTimeNow = W_GETtDateTimeNow();

                tW_PdtFormGrid = "Y"; //*CH 14-03-2013

                if (nW_StaPrcDoc == 1) {
                    return 0;
                }

                //            if (tSerial == '1') {
                //                W_SETxInputForSerial(true);
                //            }

                document.getElementById('otbSeq').value = tSeq;
                document.getElementById('otbPdtCode').value = tPdtCode;
                tW_PdtCode = tPdtCode; //*PP 10-05-12 เก็บค่ารหัสสินค้าตอนที่ Select Row
                document.getElementById('otbPdtSel').value = tPdtCode;
                document.getElementById('otbPdtName').value = tPdtName;
                document.getElementById('otbUnitCode').value = tUnitCode;
                document.getElementById('otbUnitName').value = tUnitName;
                document.getElementById('otbUnitFactor').value = tUnitFactor;
                document.getElementById('otbQty').value = tQty;
                document.getElementById('otbSetPriceRte').value = tSetPriceRte;
                document.getElementById('otbDisTxtRte').value = tDisTxtRte;
                document.getElementById('otbDis').value = tDis;
                document.getElementById('otbDisRte').value = tDisRte;
                document.getElementById('otbNet').value = tNet;
                document.getElementById('otbSetPrice').value = tSetPrice;
                document.getElementById('otbDisTxt').value = tDisTxt;
                document.getElementById('otbPdtCode').focus();

                W_SHWxUnitCombo();
                $('#otbQty').select();
            }
        }
        function W_SHWxUnitCombo() {
            W_CRExXMLHttpRequest();
            var tDataTimeNow = W_GETtDateTimeNow();
            var tModelPdt = $("#otbPdtCode").val();
            var tUrl = '<%=Url.Action("C_GEToUnitDetail","cvcTACTSqHD") %>' + "?ptPdtCode=" + tModelPdt + "&ptDateTimeNow=" + tDataTimeNow;
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
        function W_SETxInputForSerial(pbDisable) {
            J002_SETxDisable("ocbUnit", pbDisable);
            J002_SETxReadOnly("otbQty", pbDisable);
        }

        //OPEN BROWSE PRODUCT
        function ocmBrwPdt_onclick(ptObjName) {
            //if (W_CHKbHasStrValue("otbFTSplCode") == false) {
            //    return false;
            //}
            //J003_SHWxWaiting();
            try {
                //$ui("#odiBrwPdt").dialog("open");
                if (tW_StaPagePdt == '1') {
                    tW_StaPagePdt = '0';
                    J016_SHWxNextPage(0, 'odiBrwPdt', 'odiDetailFooter');
                } else {
                    tW_StaPagePdt = '1';
                    J016_SHWxNextPage(1, 'odiBrwPdt', 'odiDetailFooter');
                }
            } catch (ex) {
                J002_SHWxMsgError('ocmBrwPdt_onclick', ex);
            } finally {
                //J003_DISxWaiting();
            }
        }

        function W_GETxPdtDetail() {
            W_CRExXMLHttpRequest();
            var tDataTimeNow = W_GETtDateTimeNow();
            var tModelPdt = J002_STRttrim(document.getElementById("otbPdtCode").value);
            var tUrl = '<%=Url.Action("C_GEToPdtDetail","cvcTACTSqHD") %>' + "?ptPdtCode=" + tModelPdt + "&ptDateTimeNow=" + tDataTimeNow;
            oW_xmlHttp.open("GET", encodeURI(tUrl), false);
            oW_xmlHttp.send(null);
            if (oW_xmlHttp.status == 200) {
                var valueFis = oW_xmlHttp.responseText;
                var mytool_array = valueFis.split("|");

                //document.getElementById("otbPdtCode").value = mytool_array[0];
                document.getElementById("otbPdtName").value = mytool_array[1];
                document.getElementById("otbSetPriceRte").value = J002_DECcRound(mytool_array[2], nW_DecLength);
                document.getElementById("otbDis").value = J002_DECcRound(0, nW_DecLength); //default
                document.getElementById("otbDisRte").value = J002_DECcRound(0, nW_DecLength);
                document.getElementById("otbDisTxtRte").value = '';
                document.getElementById("otbFTPdtSrn").value = mytool_array[3];
                var tSetPrice = document.getElementById('otbSetPriceRte').value;
                //var tRteRate = document.getElementById('otbRteRate').value;
                if (J002_STRttrim(tSetPrice) != '') {
                    document.getElementById('otbSetPrice').value = tSetPrice;// * tRteRate;
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
                        if (oStr_Array.length > 1) {
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

        //Close Browse Product
        function W_CLSxCloseBrwPdt(ptFlag) { if (ptFlag == '2') { J016_SHWxNextPage(1, 'odiBrwPdt', 'odiDetailFooter'); tW_StaPagePdt = '1'; } }
        //Check Serial
        function W_CHKxPdtSerial() {
            //เมื่อเลือกแท็บอัตโนมัติให้นำสินค้าลงตารางโดยไม่ได้กำหนดสินค้า //*CH 27-05-2012
            if (document.getElementById("ockSendTab").checked == true) {
                if ($("#otbQty").val() == '') { $('#otbQty').val('1'); }
                otbQty_onblur();
                W_ADDxAddPdtToGrid();
                W_CLRxTextBox();
            } else if (document.getElementById('ockSendTab').checked == false) {
                if ($("#otbQty").val() == '') { $("#otbQty").val('1'); }
                $('#otbQty').select()
            }
            //        }
        }

        function otbQty_onblur() {
            if (document.getElementById('otbQty').value <= 0) {
                document.getElementById('otbQty').value = J002_DECcRound(1, nW_DecLength, true);
            }
            W_DATxCalDis();
            W_DATxCalPdtNet();
        }
        function otbQty_onkeydown(ptKeyCode, ptWhich) {
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

        function W_ADDxAddPdtToGrid() {
            var tPdtCode = document.getElementById("otbPdtCode").value;
            var tQty = document.getElementById("otbQty").value;
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
            var tSerialList = document.getElementById("otbSerialList").value;
            tPdtCode = J002_STRttrim(tPdtCode);
            if (tPdtCode != null && tPdtCode != "") {
                var tDateTimeNow = W_GETtDateTimeNow();
                var tParamSeq = '';
                var tSeq = document.getElementById("otbSeq").value;
                var bAutoTab = document.getElementById("ockSendTab").checked;
                var tPdtcode = document.getElementById('otbPdtCode').value;
                var tUrl = '';
                if (J002_STRttrim(tPdtcode) == tW_PdtCodeBeFore && tSeq != '') {// && bAutoTab == true) {//edit
                    tUrl += '<%=Url.Action("C_DATxEditItem","cvcTACTSqHD") %>';
                    tParamSeq = '&ptSeq=' + tSeq;
                }
                else {
                    tUrl += '<%=Url.Action("C_DATxAddItem","cvcTACTSqHD") %>';
                }
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
                tUrl += '&ptSerialList=' + tSerialList;
                tUrl += '&ptDateTimeNow=' + tDateTimeNow;
                W_CRExXMLHttpRequest();
                oW_xmlHttp.open("GET", encodeURI(tUrl), false);
                oW_xmlHttp.send(null);
                if (oW_xmlHttp.status == 200) {
                    if (oW_xmlHttp.responseText != -1) {
                        var oArr = oW_xmlHttp.responseText.split('|');
                        var cTotal = oArr[0];
                        var cNonVat = oArr[1];
                        document.getElementById("otbFCXzhTotal").value = cTotal;
                        document.getElementById("otbFCXzhNonVat").value = cNonVat;
                        //document.getElementById("otbFCXzhNonVat").value = cTotal;
                    }
                }
                W_SETxRebindGrid();

                var aDiv = document.getElementsByTagName("div");
                var oElement;
                for (var n = 0; n < aDiv.length; n++) {
                    if (aDiv.item(n).className == "t-grid-header") {
                        oElement = aDiv[n];
                    }
                }
                var nTop = oElement.scrollHeight;

                oElement.scrollTop = 20; //nTop;
            }
            W_CLRxTextBox();
            W_DATxCalFooter();
            setTimeout(function () {
                $('#GridDT .t-grid-content').scrollTop(5000); //*CH 02-04-2013
            }, 3000);
        }

        function otbPdtCode_onblur() {
            if (W_SHWxPdtDetail() == true) {
                //var oEletent = document.getElementById("otbQty");
                //oEletent.value = J002_DECcRound(1, nW_DecLength);
                W_DATxCalPdtNet();
                W_CHKxPdtSerial(); //*CH 17-01-2013 เช็คว่าเลือก แท็บอัตโนมัติ
            }
        }
        function otbPdtCode_onfocus() {
            tW_PdtCodeBeFore = $("#otbPdtCode").val();
        }
        function otbPdtCode_onkeydown(ptKeyCode, ptWhich) {
            var tKey = ptKeyCode;
            if (ptWhich != null && ptWhich != '') {
                tKey = ptWhich;
            }
            if (W_CHKbHasStrValue("otbFTCstCode") == false) {
                return false;
            }
            if (tKey == 118) {//key F7 to delete
                W_DELxPdtItem();
                return false;
            }
            if (tKey == 13 || tKey == 9) {
                if (document.getElementById("ockSendTab").checked == true) {
                    W_SHWxPdtDetail();
                    if (document.getElementById('otbPdtCode').value != '') {
                        if (document.getElementById('ocbUnit').disabled == true) {//pdt serial
                            document.getElementById('otbSetPriceRte').focus();
                            document.getElementById('otbSetPriceRte').select();
                        }
                        else {
                            document.getElementById('ocbUnit').focus();
                        }
                    }
                    else {
                        document.getElementById('otbPdtCode').focus();
                        document.getElementById('otbPdtCode').select();
                    }
                }
                else {
                    otbPdtCode_onblur();
                }
                return !(tKey == 13 || tKey == 9);
            }
        }

        function ocbUnit_onchange() {
            var nIndex = document.getElementById("ocbUnit").selectedIndex;
            var tStr = document.getElementById("ocbUnit").options.item(nIndex).text;
            var oStr_Array = tStr.split("|");
            document.getElementById("otbUnitCode").value = document.getElementById("ocbUnit").value;
            document.getElementById("otbUnitName").value = oStr_Array[0];
            document.getElementById("otbUnitFactor").value = oStr_Array[1];
        }
        function ocbUnit_onkeydown(ptKeyCode, ptWhich) {
            var tKey = ptKeyCode;
            if (ptWhich != null && ptWhich != '') {
                tKey = ptWhich;
            }
            if (tKey == 13) {
                document.getElementById("otbQty").focus();
                document.getElementById("otbQty").select();
                return !(tKey == 13);
            }
        }

        function otbSetPriceRte_onblur() {
            var tSetPrice = document.getElementById('otbSetPriceRte').value;
            //var tRteRate = document.getElementById('otbRteRate').value;
            if (J002_STRttrim(tSetPrice) != '') {
                document.getElementById('otbSetPrice').value = tSetPrice;// * tRteRate;
            }
            W_DATxCalDis();
            W_DATxCalPdtNet();
        }
        function otbSetPriceRte_onkeydown(ptKeyCode, ptWhich) {
            var tKey = ptKeyCode;
            if (ptWhich != null && ptWhich != '') {
                tKey = ptWhich;
            }
            if (W_CHKbHasStrValue("otbPdtCode") == false) {
                return false;
            }
            if (tKey == 13) {
                document.getElementById("otbDisTxtRte").select();
                return !(tKey == 13);
            }
        }

        function otbDisTxtRte_onblur() {
            W_DATxCalDis();
            W_DATxCalPdtNet();
        }
        function otbDisTxtRte_onkeydown(ptKeyCode, ptWhich) {
            var tKey = ptKeyCode;
            if (ptWhich != null && ptWhich != '') {
                tKey = ptWhich;
            }
            if (W_CHKbHasStrValue("otbPdtCode") == false) {
                return false;
            }
            if (tKey == 13) {
                otbDisTxtRte_onblur();
                W_ADDxAddPdtToGrid();
                document.getElementById("otbPdtCode").focus();
                return !(tKey == 13);
            }
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
            //var cRteRate = J002_GETcNumber(document.getElementById('otbRteRate').value);
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
                    cDis += Number(tDis);// * cRteRate;
                }
                else {
                    //cDis += (cNet * tDis * cRteRate) / 100.0;
                    cDis += (cNet * tDis) / 100.0;
                }
                cNet = cTotal - cDis;
            }
            if (cDis > cTotal) {
                cDis = cTotal;
            }
            document.getElementById("otbFCXzhDis").value = J002_DECcRound(cDis, nW_DecLength, true);
        }

        function W_SHWxPdtDetail() {
            var tPdtCode = document.getElementById("otbPdtCode").value;
            tPdtCode = J002_STRttrim(tPdtCode);
            if (tPdtCode == null || tPdtCode == '') {
                W_CLRxTextBox();
                return false;
            }

            var bAutoTab = document.getElementById("ockSendTab").checked;
            if (tPdtCode == tW_PdtCodeBeFore && bAutoTab == true) {//ถ้าเป็นการยิงbarcode ไม่ต้องตรวจสอบรหัสก่อนแก้ไข
                return false;
            }
            if (tW_PdtFormGrid == "N") {
                if (W_GETxPdtDetail() == false) {
                    W_CLRxTextBox();
                    alert('<%=ViewData("olatMsgNonData")%>');
                    document.getElementById("otbPdtCode").focus();
                    return false;
                }
            } else { tW_PdtFormGrid = "N"; }
            return true
        }

        function W_DATxCalDis() {
            var oElement;
            var bDisPer = false;
            var cDis;
            var cDisRte;
            var cDisTemp;
            var cDisRteTemp;
            var tDisTxt;
            var tDisTxtRte;
            var tDis;
            var cNet;
            var nCost = J002_GETcNumber(document.getElementById("otbSetPriceRte").value);
            var nQty = J002_GETcNumber(document.getElementById("otbQty").value);
            //var nRteFac = J002_GETcNumber(document.getElementById("otbRteRate").value);
            var tInputDisTxt = document.getElementById("otbDisTxtRte").value;
            tInputDisTxt = J002_STRttrim(tInputDisTxt);
            if (tInputDisTxt == '' || tInputDisTxt == null) {
                document.getElementById("otbDis").value = 0;
                document.getElementById("otbDisRte").value = 0;
                return false;
            }

            cDis = 0;
            cDisRte = 0;
            cDisTemp = 0;
            tDisTxtRte = '';
            tDisTxt = '';
            //cNet = nCost * nRteFac * nQty;
            cNet = nCost  * nQty;
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
                    cDisTemp = Number(tDis); //* nRteFac;
                    cDisRteTemp = Number(tDis);
                    tDisTxtRte += tDis + ',';
                    tDisTxt += cDisTemp + ',';
                }
                else {
                    //cDisTemp = (cNet * tDis * nRteFac) / 100.0;
                    cDisTemp = (cNet * tDis) / 100.0;
                    cDisRteTemp = (cNet * tDis) / 100.0;
                    tDisTxtRte += Number(tDis) + '%,';
                    tDisTxt += Number(tDis) + '%,';
                }
                cDis += Number(cDisTemp);
                cDisRte += Number(cDisRteTemp);
                cNet -= Number(cDisTemp);
            }
            tDisTxtRte = tDisTxtRte.substring(0, tDisTxtRte.length - 1);
            tDisTxt = tDisTxt.substring(0, tDisTxt.length - 1);
            document.getElementById("otbDis").value = cDis;
            document.getElementById("otbDisRte").value = cDisRte;
            document.getElementById("otbDisTxtRte").value = tDisTxtRte;
            document.getElementById("otbDisTxt").value = tDisTxt;
        }

        function W_DATxCalPdtNet() {
            if (W_CHKbHasStrValue("otbPdtCode") == false) {
                return false;
            }
            var oElement;
            var nCost = J002_GETcNumber(document.getElementById("otbSetPriceRte").value);
            var nQty = J002_GETcNumber(document.getElementById("otbQty").value);
            var nDis = J002_GETcNumber(document.getElementById("otbDis").value);
            //var nRteRate = J002_GETcNumber(document.getElementById('otbRteRate').value);
            //alert(nCost + ' ' + nQty + ' ' + nDis + ' ' + nRteRate);
            oElement = document.getElementById("otbNet");
            //var cNet = (nCost * nQty * nRteRate) - nDis;
            var cNet = (nCost * nQty) - nDis;
            oElement.value = J002_DECcRound(cNet, nW_DecLength);
        }
        function W_CHKbHasStrValue(ptObjName) {
            var tSplCode = document.getElementById(ptObjName).value;
            if (tSplCode.replace(' ', '') == '') {
                return false;
            }
            else {
                return true;
            }
        }

        //ADD PRODUCT
        function ocmAdd_onClick() {
            W_ADDxAddPdtToGrid();
            document.getElementById("otbPdtCode").focus();
        }
        //DELETE ITEM PRODUCT
        function W_DELxPdtItem() {
            var oEletent = document.getElementById('otbSeq');
            var tDateTimeNow = W_GETtDateTimeNow();
            var tUrl = '<%=Url.Action("_DeleteAjaxEditing","cvcTACTSqHD") %>' + '?ptSeq=' + oEletent.value;
            tUrl += '&ptDateTimeNow=' + tDateTimeNow;
            W_CRExXMLHttpRequest();
            oW_xmlHttp.open("GET", encodeURI(tUrl), false);
            oW_xmlHttp.send(null);
            if (oW_xmlHttp.status == 200) {
                if (oW_xmlHttp.responseText != -1) {
                    var oArr = oW_xmlHttp.responseText.split('|');
                    var cTotal = oArr[0];
                    var cNonVat = oArr[1];
                    document.getElementById("otbFCXzhTotal").value = cTotal;
                    document.getElementById("otbFCXzhNonVat").value = cNonVat;
                    //document.getElementById("otbFCXzhNonVat").value = cTotal;
                }
            }
            W_SETxRebindGrid();
            W_CLRxTextBox();
            document.getElementById("otbPdtCode").focus();
            W_DATxCalFooter();
        }

        //Rebind Grid Product
        function W_SETxRebindGrid() {
            // rebind the related grid
            var oGrid = $('#GridDT').data('tGrid');
            oGrid.rebind();
            W_CLRxVariable();
        }
        //Clear Textbox
        function W_CLRxVariable() { $('#otbPdtCode').val(""); }
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
            var tUrl = '<%=Url.Action("C_DATtCalFooter","cvcTACTSqHD") %>';
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
        //ข้อความเงิน
        function W_GETtGndTxt() {
            W_CRExXMLHttpRequest();
            var tDataTimeNow = W_GETtDateTimeNow();
            var tGrand = $("#otbFCXzhGrand").val();
            var tUrl = '<%=Url.Action("SP_GETtMoneyText","cvcTACTSqHD") %>' + "?ptDate=" + tDataTimeNow + "&ptMoney=" + tGrand;
            oW_xmlHttp.open("GET", encodeURI(tUrl), false);
            oW_xmlHttp.send(null);
            return oW_xmlHttp.responseText;
        }

        $ui(function () {
            $ui('#odiBrwDis').dialog({
                autoOpen: false,
                modal: true,
                resizable: false,
                height: 'auto',
                width: '380px'
            });
        });
        function W_DATxBrwDis() {
            try {
                J003_SHWxWaiting();
                var tDisTxt = document.getElementById("otbDisTxtRte").value;
                var tNet = J002_GETcNumber(document.getElementById("otbNet").value);
                var tPrice = $('#otbSetPriceRte').val();
                if (tNet > 0) {
                    tW_FlagDis = '1';
                    if (tDisTxt == '0.00') { tDisTxt = ''; }
                    C_SETxValueNet(tNet, tDisTxt); //ส่งข้อมูลไปหน้ากำหนดส่วนลด //*CH 21-01-2013
                    $ui('#odiBrwDis').dialog('open');
                    //J016_SHWxNextPage(1, 'odiBrwPdt', 'odiBrwDis');
                }
            }
            catch (ex) {
                J002_SHWxMsgError('W_DATxBrwDis', ex);
            }
            finally {
                J003_DISxWaiting();
            }
        }

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
                    tW_StaPagePdt = '1';
                    J016_SHWxNextPage(1, 'odiBrwPdt', 'odiDetailFooter');
                    break;
            }
        }

        function W_DATxBrwFootDis() {
            try {
                //J003_SHWxWaiting();
                var tDisTxt = document.getElementById("otbFootDis").value;
                var tNet = J002_GETcNumber(document.getElementById("otbFCXzhTotal").value);
                if (tNet != '') {
                    tW_FlagDis = '2';
                    C_SETxValueNet(tNet, tDisTxt); //ส่งข้อมูลไปหน้ากำหนดส่วนลด //*CH 21-01-2013
                    $ui('#odiBrwDis').dialog('open');
                }
            }
            catch (ex) {
                J002_SHWxMsgError('W_DATxBrwFootDis', ex);
            }
            finally {
                //J003_DISxWaiting();
            }
        }
    </script>
</asp:Content>
