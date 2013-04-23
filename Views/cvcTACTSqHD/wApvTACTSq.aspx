<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage(Of Adasoft.WebPos.Models.cmlTACTSzHD)" %>

<%@ Import Namespace="Adasoft.WebPos" %>
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
                <div id ="odiMenuCoppy" class="xCN_DivMenuCoppy" style="float:left;">
                    <a href="javascript:void();" onclick="W_FRMxCopyDoc()">
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
                <div id ="odiMenuClose" class="xCN_DivMenuHome" style="float:left;">
                    <a href="javascript:void();" onclick="W_FRMxCloseDoc('2')">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaClose")%>
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

        <%-------------------Detail HD---------------------------%>
        <div id="odiDetailHD" class="xCN_AllBackgroundColor xCN_AllBorderColor xCN_DivDetailHD">
            <!-- Customer -->
            <div id="odiCstDetail" class ="xCN_AllBackgroundColor xCN_AllBorderColor xCN_DivDetailHDCustomer">
                   <div class =" xCN_AllBackgroundColorCustomer xCN_DivCstMainCode">
                        <div class ="xCN_DivCstCaption"><%=ViewData("olaFTCstCode")%></div>                        
                        <div class="xCN_DivCstCode">
                           <input id="otbFTCstCode" name="otbFTCstCode" 
                                type="text" 
                                maxlength='20' 
                                readonly="readonly"
                                class="xCN_AllBackgroundColor" 
                                value="<%=Html.Encode(Model.FTCstCode)%>" />
                        </div> 
                   </div>                   
                   <div  class="xCN_AllBackgroundColor xCN_DivCstNameMain">
                               <input id="otbCstName" 
                               class="xCN_AllBackgroundColor" 
                               name="otbCstName" 
                               readonly="readonly" 
                               type="text"
                               value="<%=Html.Encode(Model.FTXzhCstName)%>" />
                   </div>                   
                   <div  class="xCN_AllBackgroundColor xCN_DivCstAddrMain">
                        <textarea id="otbCstAddr" 
                                  class="xCN_AllBackgroundColor" 
                                  cols="1" 
                                  name="otbCstAddr" 
                                  readonly="readonly"
                                  rows="1">
                        </textarea>
                   </div>
                   <div class="xCN_AllBackgroundColor xCN_DivCstTelFaxMain">
                        <div class ="xCN_LableTelFaxCap"><%=ViewData("olaTel")%></div>
                        <div class ="xCN_DivCstTelFaxMainSub">
                            <input id="otbFTCstTel" 
                                    class="xCN_AllBackgroundColor xCN_InputTextCstTelFax" 
                                    name="otbFTCstTel" 
                                    readonly="readonly" type="text" />
                        </div>
                   </div>
                   <div class="xCN_AllBackgroundColor xCN_DivCstTelFaxMain">
                        <div class ="xCN_LableTelFaxCap"><%=ViewData("olaFax")%></div>
                        <div class ="xCN_DivCstTelFaxMainSub">
                            <input id="otbFTCstFax" 
                                   class="xCN_AllBackgroundColor xCN_InputTextCstTelFax" 
                                   name="otbFTCstFax" 
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
                                                <%= Html.RadioButtonFor(Function(model) model.FTXzhCshOrCrd, "1", _
                                                                                                        New With {.id = "orbCash", _
                                                                                                                  .disabled = "disabled"})%> 
                                                    &nbsp;<%=ViewData("olaFTXzhCsh")%><br/>
                                                <%= Html.RadioButtonFor(Function(model) model.FTXzhCshOrCrd, "2", _
                                                        New With {.id = "orbCredit", _
                                                                    .disabled = "disabled"})%> 
                                                    &nbsp;<%=ViewData("olaFTXzhCrd")%>                                              
                                            </div>
                                         </div>
                                         <div class="xCN_DivTabDetail1CreditTerm">
                                            <div class="xCN_DivTabDetail1CreditTermSub">
                                                <%=ViewData("olaFNXzhCrTerm")%><br/>
                                                <input id="otbFNXzhCrTerm" 
                                                    class="xCN_AllReadOnlyBGColor" 
                                                    name="otbFNXzhCrTerm" 
                                                    readonly="readonly" 
                                                    type="text" 
                                                    value="<%=Html.Encode(Model.FNXzhCrTerm)%>" />
                                            </div>
                                         </div>                                         
                                    </div>
                                    <div class="xCN_DivTabDetail1Column2">
                                        <div class ="xCN_DivTabDetail1Caption">
                                             <%=ViewData("olaFTXzhRefInt")%>
                                        </div>
                                        <div class ="xCN_DivTabDetail1Caption">
                                             <%=ViewData("olaFTXzhRefExt")%>
                                        </div>
                                        <div class ="xCN_DivTabDetail1Caption">
                                             <%=ViewData("olaFDXzhRefExtDate")%>
                                        </div>
                                        <div class ="xCN_DivTabDetail1Caption" style="display:none;">
                                            <%=ViewData("olaFTRteCode")%>
                                        </div>
                                        <div class ="xCN_DivTabDetail1Caption">
                                            <%=ViewData("olaFDXzhDueDate")%>
                                       </div>
                                    </div>
                                    <div class="xCN_DivTabDetail1Column3">
                                    
                                        <div class ="xCN_DivTabDetail1InputData">
                                            <div class="xCN_DivTabDetail1InputRefNo">
                                                 <input id="otbFTXzhRefInt" 
                                                        maxlength="20" 
                                                        name="otbFTXzhRefInt" 
                                                        type="text" 
                                                        readonly="readonly" class="xCN_AllReadOnlyBGColor"
                                                        value="<%=Html.Encode(Model.FTXzhRefInt)%>" />
                                                        <%=Html.ValidationMessageFor(Function(model) model.FTXzhRefInt)%>
                                            </div>
                                            <div class="xCN_DivTabDetail1BrowseRefNo"></div>
                                        </div>
                                        <div class ="xCN_DivTabDetail1InputData">
                                                 <input id="otbFTXzhRefExt" 
                                                        name="otbFTXzhRefExt" 
                                                        maxlength="20"
                                                        type="text"        
                                                        readonly="readonly" class="xCN_AllReadOnlyBGColor xCN_InputTextExOrInRefNo"                                                                             
                                                        value="<%=Html.Encode(Model.FTXzhRefExt)%>" />
                                                        <%=Html.ValidationMessageFor(Function(model) model.FTXzhRefExt)%>
                                        </div>
                                        <div class ="xCN_DivTabDetail1InputData">
                                            <%= Html.Telerik().DatePicker() _
                                                        .Name("XFDXzhRefExtDate") _
                                                        .Format("dd/MM/yyyy") _
                                                        .Value(Model.FDXzhRefExtDate) _
                                                        .InputHtmlAttributes(New With {.id = "odtFDXzhRefExtDate", .name = "FDXzhRefExtDate", _
                                                                                       .style = "height:14px;", _
                                                                                       .disabled = "disabled", _
                                                                                       .class = "xCN_AllReadOnlyBGColor"}) _
                                                        .ButtonTitle("..") _
                                                        .ShowButton(False)%>    
                                             <%=Html.ValidationMessageFor(Function(model) model.FDXzhRefExtDate)%> 
                                        </div>
                                        <div class ="xCN_DivTabDetail1InputData" style="display:none;">
                                            <input type ="text" 
                                                  id="otbFTRteCode" 
                                                  name="FTRteCode"  
                                                  maxlength='<%=ViewData("VatMaxLenght")%>' 
                                                  readonly="readonly"
                                                  class = "wX_InputRteCode xCN_AllReadOnlyBGColor"
                                                  value="<%=Html.Encode(Model.FTRteCode)%>" />
                                            <input type="text" 
                                                   id="otbRteRate" 
                                                   name="otbRteRate" 
                                                   value="<%=Model.FCXzhRteFac%>" 
                                                   readonly="readonly"
                                                   style = "font:Tahoma;font-size: 12px;text-align :center;width:30px;height:16px;"
                                                   class="xCN_AllReadOnlyBGColor" />
                                            <input type="text" 
                                                   id="otbRateName" 
                                                   name="otbRateName" 
                                                   readonly="readonly" 
                                                   value=""
                                                   style = "font:Tahoma;font-size: 12px;text-align :center;width:50px;height:16px;"
                                                   class="xCN_AllReadOnlyBGColor" />
                                        </div>
                                        <div class ="xCN_DivTabDetail2InputData">
                                            <%= Html.Telerik().DatePicker() _
                                                .Name("XFDXzhDueDate") _
                                                .Format("dd/MM/yyyy") _
                                                .Value(Model.FDXzhDueDate) _
                                                .InputHtmlAttributes(New With {.id = "odtFDXzhDueDate", .name = "FDXzhDueDate", _
                                                                                .style = "height:14px;", _
                                                                                .class = "xCN_AllReadOnlyBGColor", _
                                                                                .disabled = "disabled"}) _
                                                .ButtonTitle("..") _
                                                .ShowButton(False)
                                            %>
                                            <%=Html.ValidationMessageFor(Function(model) model.FDXzhDueDate)%>
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
                                      <div class ="xCN_DivTabDetail2InputData">
                                            <%= Html.DropDownListFor(Function(model) model.FTWahCode, _
                                                CType(ViewData("WahCode"), SelectList), _
                                                New With {.id = "ocbFTWahCode", .name = "ocbFTWahCode", _
                                                            .class = "xCN_SelectInDetail2 xCN_AllReadOnlyBGColor", _
                                                            .style = "height:18px;", _
                                                            .disabled = "disabled"})%>
                                      </div>
                                      <div class ="xCN_DivTabDetail2InputData">
                                            <%= Html.Telerik().DatePicker() _
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
                                      <div class ="xCN_DivTabDetail2InputData">
                                            <%= Html.Telerik().DatePicker() _
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
                                            <%=Html.ValidationMessageFor(Function(model) model.FDXzhBillDue)%>
                                      </div>
                                      <div class ="xCN_DivTabDetail2InputData" >
                                          <div class="xCN_DivTabDetail2AreaCode">
                                                <input type="text" 
                                                 style="width:78px;"
                                                 id="otbFTAreCode" 
                                                 name="FTAreCode" 
                                                 maxlength='<%=ViewData("ShpMaxLenght")%>' 
                                                 value="<%=Html.Encode(Model.FTAreCode)%>"
                                                 readonly="readonly" class="xCN_AllReadOnlyBGColor" />
                                          </div>
                                          <div class="xCN_DivBrowData"></div>
                                      </div>                                      
                                  </div>
                                    
                                  <div class="xCN_DivTabDetail2Column3">
                                       <div class ="xCN_DivTabDetail2Caption">
                                            <%=ViewData("olaFTXzhVATInOrEx")%>
                                       </div>
                                       <div class ="xCN_DivTabDetail2Caption">
                                            <%=ViewData("olaFTXzhDstPaid")%>
                                       </div>
                                       <div class ="xCN_DivTabDetail2Caption">
                                       </div>
                                       <div class ="xCN_DivTabDetail2AreaName">
                                            <input type="text" 
                                                   id="otbFTAreName" 
                                                   name="otbFTAreName" 
                                                   readonly="readonly" 
                                                   class="xCN_AllReadOnlyBGColor" />
                                       </div>

                                  </div>
                                  <div class="xCN_DivTabDetail2Column4">
                                      <div class ="xCN_DivTabDetail2InputData">
                                            <%= Html.DropDownListFor(Function(model) model.FTXzhVATInOrEx, _
                                                                                                CType(ViewData("XihVATInOrEx"), SelectList), _
                                                                                                New With {.id = "ocbFTXzhVATInOrEx", _
                                                                                                          .name = "FTXzhVATInOrEx", _
                                                                                                          .class = "xCN_SelectInDetail2 xCN_AllReadOnlyBGColor", _
                                                                                                          .disabled = "disabled"})%>
                                      </div>
                                      <div class ="xCN_DivTabDetail2InputData">
                                            <%= Html.DropDownListFor(Function(model) model.FTXzhDstPaid, _
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
                                               value="<%=Html.Encode(Model.FTXzhUsrEnter)%>"
                                               maxlength='<%=ViewData("UsrMaxLenght")%>'
                                               readonly="readonly" class="xCN_AllReadOnlyBGColor" />
                                    </div>
                                    <div class="xCN_DivTabDetail3EmpCode">
                                         <input type ="text" 
                                               id="otbFTSpnCode" 
                                               name ="FTSpnCode" 
                                               maxlength='<%=ViewData("UsrMaxLenght")%>' 
                                               value="<%=Html.Encode(Model.FTSpnCode)%>" 
                                               readonly="readonly" class="xCN_AllReadOnlyBGColor" />
                                    </div>
                                    <div class="xCN_DivTabDetail3EmpCode">
                                        <input type ="text" 
                                               id="otbFTXzhUsrPacker" 
                                               name="FTXzhUsrPacker" 
                                               maxlength='<%=ViewData("UsrMaxLenght")%>' 
                                               value="<%=Html.Encode(Model.FTXzhUsrPacker)%>" 
                                               readonly="readonly" class="xCN_AllReadOnlyBGColor"  />
                                    </div>
                                    <div class="xCN_DivTabDetail3EmpCode">
                                        <input type ="text" 
                                               id="otbFTXzhUsrChecker" 
                                               maxlength='<%=ViewData("UsrMaxLenght")%>' 
                                               value="<%=Html.Encode(Model.FTXzhUsrChecker)%>" 
                                               readonly="readonly" class="xCN_AllReadOnlyBGColor"  />
                                    </div>
                                    <div class="xCN_DivTabDetail3EmpCode">
                                        <input type="text" 
                                               id="otbFTXzhUsrSender" 
                                               name="FTXzhUsrSender" 
                                               maxlength='<%=ViewData("UsrMaxLenght")%>' 
                                               value="<%=Html.Encode(Model.FTXzhUsrSender)%>" 
                                               readonly="readonly" class="xCN_AllReadOnlyBGColor"  />
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
                                               value="..."
                                               disabled="disabled"
                                               type="button" />
                                    </div>
                                    
                                    <div class ="xCN_DivBrowData xCN_DivBrowDataSetTopMargin">
                                        <input id="ocmUsrPacker" 
                                               class="xCN_InputBottomBrowse"
                                               name="ocmUsrPacker" 
                                               value="..."
                                               disabled="disabled"
                                               type="button" />
                                    </div>
                                    
                                    <div class ="xCN_DivBrowData xCN_DivBrowDataSetTopMargin">
                                        <input id="ocmUsrChecker"
                                               class="xCN_InputBottomBrowse" 
                                               name="ocmUsrChecker" 
                                               value="..."
                                               disabled="disabled"
                                               type="button" />
                                    </div>
                                    
                                    <div class ="xCN_DivBrowData xCN_DivBrowDataSetTopMargin">
                                        <input id="ocmUsrSender" 
                                               class="xCN_InputBottomBrowse" 
                                               name="ocmUsrSender" 
                                               value="..."
                                               disabled="disabled"
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
                                                   <%=iif(Model.FNXzhStaDocAct = 1,"checked='checked'","") %>
                                                   name="FNXihStaDocAct" 
                                                   type="checkbox" 
                                                   readonly="readonly" class="xCN_AllReadOnlyBGColor" 
                                                   value="true" />
                                        </div>
                                        <div class ="xCN_DivDetail3ActiveDocCaption">
                                            <%=ViewData("olaFNXzhStaDocAct")%>
                                        </div>
                                    </div>
                                    <div class ="xW_DivTabDetail3Caption">
                                        <%=ViewData("olaFTXzhTnfID")%>
                                    </div>
                                    <div>
                                        <input type ="text" 
                                               id="otbFTXzhTnfID" 
                                               name="FTXzhTnfID" 
                                               value="<%=Model.FTXzhTnfID %>"
                                               readonly="readonly"
                                               class = "xCN_DivTabDetail2FTXphDocNo xCN_AllReadOnlyBGColor"/>
                                    </div>
                                    <div class ="xW_DivTabDetail3Caption">
                                        <%=ViewData("olaFTXzhVehID")%>
                                    </div>
                                    <div>
                                        <input type ="text" 
                                               id="otbFTXzhVehID" 
                                               name="FTXzhVehID" 
                                               value="<%=Model.FTXzhVehID %>"
                                               readonly="readonly"
                                               class = "xCN_DivTabDetail2FTXphDocNo xCN_AllReadOnlyBGColor"/>
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
                                    value="<%=Model.FTXzhDocNo%>"  />
                        </div>
                        <div class="xCN_DivDocNoColumn2Sub">
                            <%= Html.Telerik().DatePicker() _
                                                        .Name("X_FDXzhDocDate") _
                                                        .Value(Model.FDXzhDocDate) _
                                                        .Format("dd/MM/yyyy") _
                                                        .ButtonTitle("..") _
                                                        .InputHtmlAttributes(New With {.id = "odtFDXzhDocDate", .name = "FDXzhDocDate", _
                                                                                        .style = "height:18px;", _
                                                                                        .disabled = "disabled", _
                                                                                        .class = "xCN_AllReadOnlyBGColor"}) _
                                                        .ShowButton(False)
                        
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
        <%-------------------Detail DT---------------------------%>   
        <div class="xCN_AllBorderColor xCN_DivDetailDT">
            <div id="odiDetailDT" class ="xCN_DivDetailDTSub" onload="__designer:mapid=&quot;a67&quot;">
                <div id="Div1" class ="xCN_DivGridDetail">
                    <%  'declare the grid and enable features
                        Dim oDataDT As IEnumerable(Of Models.cmlTACTSzDT) = ViewData("DataDT")
                        Dim gridBuilder = Html.Telerik().Grid(oDataDT) _
                                    .Name("GridDT") _
                                    .HtmlAttributes(New With {.style = "width:99.8%"}) _
                                    .Scrollable(Function(o) o.Height(175)) _
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
                         gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTPunCode).Title("PunCode").Hidden())
                         gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FCXzdFactor).Title("Factor").Hidden(True))
                         gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FCXzdDis).Title("Dis").Hidden(True))
                         gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FCXzdSetPrice).Title("SetPrice").Hidden())
                         gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTXzdDisChgTxt).Title("DisTxt").Hidden())
                        gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTSrnCode).Title("Serial").Hidden())
                        gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FCXzdDisRte).Title("DisRte").Hidden())
                        gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTPdtNoDis).Title("NoDis").Hidden())
                         gridBuilder.DataKeys(Function(Key) Key.Add(Function(model) model.FNXzdSeqNo))
                            
                        'gridBuilder.ClientEvents(Function(Events) Events.OnLoad("grid_onLoad"))
                        'gridBuilder.ClientEvents(Function(Events) Events.OnRowSelect("onRowSelected"))
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
                                        class="xW_TextAreaRemark xCN_AllReadOnlyBGColor" readonly="readonly" ><%=Model.FTXzhRmk %></textarea>
                            </div>
                            <div class="xW_DivRemarkBottom">
                                <label id="olaGndTxt" class="xW_LabelGrandText" ><%=Model.FTXzhGndText %></label>
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
                        <div class="xCN_DivDetailFooterCalNetDisCap" ><%=ViewData("olaFCXzhDis")%></div>
                        <div class="xCN_DivBrowData xCN_DivBrowDataSetTopMargin">
                            <input id="ocmFootDis" 
                                    class="xCN_InputBottomBrowse" 
                                    name="ocmFootDis" 
                                    value="..."
                                    disabled="disabled"
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
                        <div class="xCN_DivDetailFooterCalNetGrandAECap" ><%=ViewData("olaFCXzhGndAE")%></div>
                        <div class="xCN_DivBrowData xCN_DivBrowDataSetTopMargin">
                            <input type="button" 
                                id="ocmGndAE" 
                                disabled="disabled"
                                value='...' 
                                class="xCN_InputBottomBrowse" 
                                onclick="W_SHWxBrwGndAE()" />               
                        </div>
                        <div class ="xCN_DivDetailFooterCalNetGrandAEData">
                            <input id="otbGndAE" 
                                    readonly="readonly" 
                                    type="text" 
                                    value="<%=Model.FTXzhRefAE %>" 
                                    class="xCN_AllReadOnlyBGColor" />                   
                        </div>
                    </div>
                    <div class="xCN_DivDetailFooterCalNetColumn1Sub"><%=ViewData("olaFCXzhVatable")%></div>
                    <div class="xCN_DivDetailFooterCalNetColumn1Sub">
                        <div class="wCN_DivDetailFooterCalNetVATCap" ><%=ViewData("olaFCXzhVat")%></div>
                        <div class="xCN_DivBrowData xCN_DivBrowDataSetTopMargin">
                            <input type="button" 
                                id="ocmBrwVAT" 
                                disabled="disabled"
                                value='...' 
                                class="xCN_InputBottomBrowse" 
                                onclick="ocmBrwVAT_onclick();" />
                        </div>
                        <div class ="wCN_DivDetailFooterCalNetVATData">
                            <input id="otbVatRate" 
                                    onblur="W_DATxCalFooter()" 
                                    readonly="readonly"
                                    class="xCN_AllReadOnlyBGColor"
                                    value="<%=Model.FCXzhVATRate%>" />
                           
                        </div>
                        <div class ="xCN_DivDetailFooterCalNetPersent"><label>%</label></div>
                    </div>
                    <div class="xCN_DivDetailFooterCalNetColumn1Sub"><%=ViewData("olaFCXzhGrand")%></div>
         
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
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
    <%--CSS--%>
    <link rel="Stylesheet" type="text/css" href="<%=Url.Content("~/Content/AdaCss/Local/FCS_cvcTACTSiHD.css") %>" />
    <%--<link rel="Stylesheet" type="text/css" href="<%=Url.Content("~/Content/AdaCss/Local/FCS_cvcTACTPiHD.css") %>" />--%>
    <%--External Script--%>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J001_LoadAutoGenCode.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J004_LoadTransactionMenu.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J005_KeepOldValue.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J006_LoadBrowse.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J009_ShowTab.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J010_ShowTabData.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J011_ComboBoxLibrary.js") %>"></script>

    <script type="text/javascript">
        //### ตัวแปรกลาง ##//
        var oW_xmlHttp;
        var nW_StaPrcDoc = 0;
        var nW_StaDocCancel = 0;
        var nW_StaDoc = 0;
        var tW_Menu = 'omnSleSQ';
        var tW_Controller = 'cvcTACTSqHD';

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
                //tW_BeforeEditData = W_GETtDataHDString();
                W_GETxCstLoad();
                W_GETxUsrAndDptName();
                W_GETxApvName();
                W_SETxDocDisplayStatus();
                W_SHWxDocStatus('odiNoneApprove', 'odiApprove', 'odiCancel');
                W_GETxValueMaster();
            } catch (ex) {
                J002_SHWxMsgError('Window Onload', ex);
            } finally {
                J003_DISxWaiting();
            }
        }

        function W_CRExXMLHttpRequest() {
            if (window.ActiveXObject) {
                oW_xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
            }
            else if (window.XMLHttpRequest) {
                oW_xmlHttp = new XMLHttpRequest();
            }
        }

        function W_GETtDateTimeNow() {
            var dNow = new Date;
            var tDateTimeNow = dNow.getFullYear().toString() + dNow.getMonth().toString() + dNow.getDay().toString() + dNow.getHours().toString() + dNow.getMinutes().toString() + dNow.getSeconds().toString() + dNow.getMilliseconds().toString();
            return tDateTimeNow;
        }

        function W_GETxCstLoad() {
            var tCst = $("#otbFTCstCode").val();
            if (tCst == null) {
                tCst = '';
            }
            tCst = J002_STRttrim(tCst);
            if (tCst == '') {
                $("#otbFTCstCode").val('');
                $("#otbCstName").val('');
                $("#otbCstAddr").val('');
                $("#otbFTCstTel").val('');
                $("#otbFTCstFax").val('');
                return false;
            }
            //W_CRExXMLHttpRequest();
            var tDataTimeNow = W_GETtDateTimeNow();
            var tUrl = '<%=Url.Action("C_GETxCst","cvcTACTSqHD") %>' + "?ptCstCode=" + tCst + "&ptDateTimeNow=" + tDataTimeNow;
            oW_xmlHttp.open("GET", encodeURI(tUrl), false);
            oW_xmlHttp.send(null);
            var valueFis = oW_xmlHttp.responseText;
            if (oW_xmlHttp.status != 200) {
                alert("Error" + oW_xmlHttp.status + "\n" + oW_xmlHttp.responseText);
                return false;
            }
            var aArr = valueFis.split("|");
            if (aArr[0] != null && aArr[0] != "") {
                alert(aArr[0]);
                return false;
            }
            if (aArr[1] == null || aArr[1] == "") {
                alert('<%= ViewData("olatMsgNonDataCst")%>');
                return false;
            }
            $('#otbCstName').val(aArr[1]);
            $('#otbCstAddr').val(aArr[2]);
            $('#otbFTCstTel').val(aArr[3]);
            $('#otbFTCstFax').val(aArr[4]);
            $('#otbFNCstCrTerm').val(aArr[5]);
            $('#otbFNCstViaTime').val(aArr[6]);
            $('#otbFTCstDiscWhs').val(aArr[7]);
            $('#otbFTCstCode').val(tCst);
        }

        function W_GETxUsrAndDptName() {
            //W_CRExXMLHttpRequest();
            var tDataTimeNow = W_GETtDateTimeNow();
            var tUsrCode = '<%=Model.FTUsrCode%>';  //$("#otbFTUsrCode").val();
            var tUrl = '<%=Url.Action("C_GETxUsrAndDptName","cvcTACTSqHD") %>' + "?ptUsrCode=" + tUsrCode + "&ptDateTimeNow=" + tDataTimeNow;
            oW_xmlHttp.open("GET", encodeURI(tUrl), false);
            oW_xmlHttp.send(null);
            var valueFis = oW_xmlHttp.responseText;
            var mytool_array = valueFis.split("|");
            document.getElementById("otbUsrName").value = mytool_array[0];
            document.getElementById("otbDptName").value = mytool_array[1];
        }

        function W_GETxApvName() {
            var tDataTimeNow = W_GETtDateTimeNow();
            var tUsrCode = '<%=Model.FTUsrCode%>';
            var tUrl = '<%=Url.Action("C_GETxUsrAndDptName","cvcTACTSqHD") %>' + "?ptUsrCode=" + tUsrCode + "&ptDateTimeNow=" + tDataTimeNow;
            oW_xmlHttp.open("GET", encodeURI(tUrl), false);
            oW_xmlHttp.send(null);
            var valueFis = oW_xmlHttp.responseText;
            var mytool_array = valueFis.split("|");
            $('#otbApvUsr').val(mytool_array[1]);
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

        function W_FRMxGetFieldName(ptController, ptAction, ptObjCodeId, ptObjNameId, ptObjCodeOldId, ptTblName, ptFieldCode, ptFieldName, ptMsgErr) {
            var tMsgNoData = '<%=ViewData("tMsgDAT_Notfound001")%>' + ptMsgErr;
            J002_GETxFieldName(ptController, ptAction, ptObjCodeId, ptObjNameId, ptObjCodeOldId, ptTblName, ptFieldCode, ptFieldName, tMsgNoData);
        }

        function W_SETxDocDisplayStatus() {
            if ('<%=Model.FTXzhStaDoc%>' == '1') {
                nW_StaDoc = 1;
            }
            if ('<%=Model.FTXzhStaDoc%>' == '3') {
                nW_StaDoc = 1;
                nW_StaDocCancel = 1;
            }
            if ('<%=Model.FTXzhStaPrcDoc%>' == '1') {
                nW_StaDoc = 1;
                nW_StaPrcDoc = 1;
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

        //ปุ่มบนสุด
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
                    document.getElementById('otbFTXzhDocNo').value = '';
                    W_FRMxReload(true);
                }
                if (aError[0] != null && aError[0] != '') {
                    //alert(aError[0]);
                    W_LODxReloadData($('#otbFTXzhDocNo').val());
                }
            }
            catch (ex) {
                J002_SHWxMsgError('W_FRMxCancelDoc', ex);
            }
            finally {
                J003_DISxWaiting();
            }
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
                        document.getElementById('otbFTXzhDocNo').value = '';
                        W_FRMxReload(true);
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

        function W_LODxOpenEditView(ptDocNo) {
            var tUrl = '<%=Url.Action("Index","cvcTACTSqHD") %>';
            window.location = tUrl;
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
                if ('<%=Model.FNXzhStaDocAct %>' != '1') {
                    alert('<%=ViewData("tMsgNoAppStaDocDonotAct") %>');
                    J003_DISxWaiting();
                    return false;
                }
                
                var oBchcode = document.getElementById('otbFTBchCode');
                var oDocType = document.getElementById('otbFTXzhDocType');

                var tdate = W_GETtDateTimeNow();
                var tReturn = J004_FRMxPostDoc(tdate, 'C_FRMxPostDoc', tW_Controller, 'otbFTXzhDocNo', 'odtFDXzhDocDate', oDocType.value, oBchcode.value, tApvCode);
                if (tReturn == '0') {
                    //W_FRMxReload(true);
                    W_LODxReloadData($('#otbFTXzhDocNo').val());
                }
            }
            catch (ex) {
                J002_SHWxMsgError('W_FRMxPostDoc', ex)
            }
            finally {
                J003_DISxWaiting();
            }
        }

        function W_LODxReloadData(ptDocNo) {
            var tUrl = '<%=Url.Action("wApvTACTSq","cvcTACTSqHD") %>' + '?ptDocNo=' + ptDocNo;
            window.location = tUrl;
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

        function W_FRMxCloseDoc(ptFlag) {
            //var tUrl = '<%=Url.Action("wApvTACTPo","cvcCNPanal", New With {.ptMenuGrpName = "Purchase"}) %>';
            //window.location = tUrl;
            var tDataTimeNow = J002_GETtTimeStamp();
            //*CH 1 ไปรายการโปรด ; Not1 ไปหน้าซื้อ
            var tUrl;
            if (ptFlag == '1') {
                tUrl = '<%=Url.Action("Index","Home") %>' + '?ptDate=' + tDataTimeNow;
            } else {
                tUrl = '<%=Url.Action("Index","cvcCNPanal") %>?ptMenuGrpName=Sale';
            }
            window.location = encodeURI(tUrl);
        }
    </script>
</asp:Content>
