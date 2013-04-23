<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage(Of Adasoft.WebPos.Models.cmlTCNTPmtHD)" %>

<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
    '----- for test -----
    'Session("tVB_LastLang") = "EN"
    'Session("tVB_CNUserCode") = Nothing
    'Session("tVB_CNUserName") = Nothing
    'Session("tVB_CNUserLevel") = Nothing
    'Session("tVB_CNUserPwd") = Nothing
    'Session("tVB_CNDptCode") = Nothing
    'Session("tVB_CNBchCode") = Nothing
    'Session("tC_ChkCode") = Nothing
    'Session("tVB_CNWahRet") = Nothing
    'Session("tVB_CNWahWhs") = Nothing
    'Session("tVB_CNWahWahGift") = Nothing
    'Session("tVB_CNWahFreeCode") = Nothing
    'Session("ShowHomeFromLogin") = Nothing
    '--------------------
        Dim oCulture As System.Globalization.CultureInfo
        If Session("tVB_LastLang") Is Nothing OrElse Session("tVB_LastLang") = "" Then
            oCulture = New System.Globalization.CultureInfo("EN")
            ViewData("ovd_tLastLang") = "EN"
        Else
            oCulture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
            ViewData("ovd_tLastLang") = Session("tVB_LastLang")
        End If
        Resources.resGBMsg.Culture = oCulture
        AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.Culture = oCulture
        
        ViewData("olatMsgAdd") = Resources.resGBMsg.tMsgAdd
        ViewData("olatMsgSave") = Resources.resGBMsg.tMsgSave
        ViewData("olatMsgFind") = Resources.resGBMsg.tMsgFind
        ViewData("olatMsgDelete") = Resources.resGBMsg.tMsgDelete
        ViewData("olatMsgCancel") = Resources.resGBMsg.tMsgCancel
        ViewData("olatMsgPost") = Resources.resGBMsg.tMsgPost
        ViewData("olatMsgCopy") = Resources.resGBMsg.tMsgCopy
        ViewData("olatMsgReport") = Resources.resGBMsg.tMsgReport
        ViewData("olatMsgHelp") = Resources.resGBMsg.tMsgHelp
        ViewData("olatMsgClose") = Resources.resGBMsg.tMsgClose
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
        ViewData("olatMsgChangeRate") = Resources.resGBMsg.tMsgChangeRate
        ViewData("olatMsgNonDataCst") = Resources.resGBMsg.tMsgNonDataSpl
        ViewData("olatMsgNonDataRte") = Resources.resGBMsg.tMsgNonDataRte
        ViewData("olatMsgNonDataPdt") = Resources.resGBMsg.tMsgNonDataPdt
        ViewData("tMsgDAT_Notfound001") = Resources.resGBMsg.tMsgDAT_Notfound001
        ViewData("tMsgClearCstCode") = Resources.resGBMsg.tMsgClearCstCode
        ViewData("tMsgSave_Warning") = Resources.resGBMsg.tMsgSave_Warning
        ViewData("tMsgConfirmDelete") = Resources.resGBMsg.tMsgConfirmDelete
        ViewData("tMsgConfirmPost") = Resources.resGBMsg.tMsgConfirmPost
        ViewData("tMsgConfirmCancel") = Resources.resGBMsg.tMsgConfirmCancel
        ViewData("tMsgNotAuthorize") = Resources.resGBMsg.tMsgNotAuthorize
        ViewData("tMsgCodeHasUsed") = Resources.resGBMsg.tMsgCodeHasUsed
        ViewData("olatMsgNoCopyNoSave") = Resources.resGBMsg.tMsgNoCoppyNoSave
        ViewData("tMsgDAT_Notfound001") = Resources.resGBMsg.tMsgDAT_Notfound001
        ViewData("tMsgNoSpmCode") = Resources.resGBMsg.tMsgNoPmtType
        ViewData("tMsgNoPmdGrpName") = Resources.resGBMsg.tMsgNoPmtGrpName
        ViewData("olatMsgNoAppNoStop") = Resources.resGBMsg.tMsgNoApvNotStop
        ViewData("olatMsgNoAppNoPause") = Resources.resGBMsg.tMsgNoApvNotPause
        ViewData("tMsgConfirmStop") = Resources.resGBMsg.tMsgConfirmStop
        ViewData("tMsgConfirmPause") = Resources.resGBMsg.tMsgConfirmPause
        ViewData("tMsgConfirmUnPause") = Resources.resGBMsg.tMsgConfirmUnPause
        ViewData("olatMsgStopedNoPause") = Resources.resGBMsg.tMsgIsStopNoPause
        ViewData("olatMsgStopedNoStop") = Resources.resGBMsg.tMsgStopedNoStop
        ViewData("olatMsgStop") = Resources.resGBMsg.tMsgStop
        ViewData("olatMsgPause") = Resources.resGBMsg.tMsgPause
        ViewData("tMsgConfirmChangePmt") = Resources.resGBMsg.tMsgConfirmChangePmt
        ViewData("tMsgNoFilterCondition") = Resources.resGBMsg.tMsgNoFilterCondition
        ViewData("tMsgGrpNameDup") = Resources.resGBMsg.tMsgGrpNameDup
        ViewData("tMsgIncorrectDatePmt") = Resources.resGBMsg.tMsgIncorrectDatePmt
        ViewData("tMsgNoBchOrZone") = Resources.resGBMsg.tMsgNoBchOrZone
        ViewData("tMsgIncorrectTimeCond") = Resources.resGBMsg.tMsgIncorrectTimeCond
        ViewData("tMsgBuyAmtIsZero") = Resources.resGBMsg.tMsgBuyAmtIsZero
        ViewData("tMsgBuyQtyIsZero") = Resources.resGBMsg.tMsgBuyQtyIsZero
        ViewData("tMsgBuyMinIsZero") = Resources.resGBMsg.tMsgBuyMinIsZero
        ViewData("tMsgGetQtyIsZero") = Resources.resGBMsg.tMsgGetQtyIsZero
        ViewData("ovd_tMsgdExLessdSt") = Resources.resGBMsg.tMsgdExLessdSt '*CH 01-12-11
        ViewData("ovd_tMsgPdtOverLen") = Resources.resGBMsg.tMsgPdtOverLen '*CH 02-12-11
        ViewData("ovd_tMsgCHKChoice") = Resources.resGBMsg.tMsgCHKChoice '*CH 02-12-11
                        
        ViewData("olaGroup") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaGroup
        ViewData("olaPdtCode") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaPdtCode
        ViewData("olaPdtBarCode") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaPdtBarCode
        ViewData("olaPdtName") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaPdtName
        ViewData("olaPdtUnitName") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaPdtUnitName
        ViewData("olaPdtPrice") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaPdtPrice
        ViewData("olaBuyGet") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaBuyGet
        ViewData("olaPercent") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaPercent
        ViewData("olaBuyAmount") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaBuyAmount
        ViewData("olaBuyQty") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaBuyQty
        ViewData("olaBuyMin") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaBuyMin
        ViewData("olaBuyMax") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaBuyMax
        ViewData("olaCond") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaCond
        ViewData("olaValue") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaValue
        ViewData("olaQty") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaQty
        ViewData("olaGeneral") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaGeneral
        ViewData("olaDefineProduct") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaDefineProduct
        ViewData("olaPromotion") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaPromotion
        ViewData("olaPmtType") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaPmtType
        ViewData("olaRemark") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaRemark
        ViewData("olaZone") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaZone
        ViewData("olaBranch") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaBranch
        ViewData("olaBchAffect") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaBchAffect
        ViewData("olaDateTime") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaDateTime
        ViewData("olaAllow") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaAllow
        ViewData("olaMember") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaMember
        ViewData("olaFromDate") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaFromDate
        ViewData("olaToDate") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaToDate
        ViewData("olaFromTime") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaFromTime
        ViewData("olaToTime") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaToTime
        ViewData("olaPriceAffect") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaPriceAffect
        ViewData("olaPriceRet") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaPriceRet
        ViewData("olaPriceWhs") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaPriceWhs
        ViewData("olaExceptPmtPdt") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaExceptPmtPdt
        ViewData("olaGetFreeItemAt") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaGetFreeItemAt
        ViewData("olaAllowOffline") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaAllowOffline
        ViewData("olaLimitUsed") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaLimitUsed
        ViewData("olaLimit") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaLimit
        ViewData("olaTime") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaTime
        ViewData("olaDay") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaDay
        ViewData("olaMonth") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaMonth
        ViewData("olaYear") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaYear
        ViewData("olaPdtPmtGrpName") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaPdtPmtGrpName
        ViewData("olaPdtPmtGrp") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaPdtPmtGrp
        ViewData("olaBuyGroup") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaBuyGroup
        ViewData("olaGetGroup") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaGetGroup
        ViewData("olaBuyAndGetGroup") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaBuyAndGetGroup
        ViewData("olaExceptGroup") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaExceptGroup
        ViewData("olaMenuName") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaMenuName
        ViewData("olaDocNo") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaDocNo
        ViewData("olaDepartment") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaDepartment
        ViewData("olaUser") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaUser
        ViewData("olaStatus") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaStatus
        ViewData("olaPromotionPdt") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaPromotionPdt
        ViewData("olaExceptPdt") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaExceptPdt
        ViewData("olaMemberPmt") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaMemberPmt
        ViewData("olaBirthDayPmt") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaBirthDayPmt
        ViewData("olaPointGiving") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaPointGiving
        ViewData("olaX") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaX
        ViewData("olaBefore") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaBefore
        ViewData("olaAfter") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaAfter
        ViewData("olaFilterPdt") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaFilterPdt
        ViewData("olaAll") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaAll
        ViewData("olaDisAmt") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaDisAmt
        ViewData("olaDisPer") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaDisPer
        ViewData("olaAdjPrice") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaAdjPrice
        ViewData("olaGetPoint") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaGetPoint
        ViewData("olaBeforeUse") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaBeforeUse
        ViewData("olaInUse") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaInUse
        ViewData("olaExpire") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaExpire
        ViewData("olaPause") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaPause
        ViewData("olaStop") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaStop
        ViewData("olaAllPdt") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaAllPdt
        ViewData("olaPdtDupUsePrev") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaPdtDupUsePrev
        ViewData("olaNameSlip") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaNameSlip
        ViewData("olaFromCode") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaFromCode
        ViewData("olaToCode") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaToCode
        ViewData("olaDCS") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaDCS
        ViewData("olaDCSd") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaDCSd
        ViewData("olaDCSc") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaDCSc
        ViewData("olaDCSs") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaDCSs
        ViewData("olaUnUse") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaUnUse
        ViewData("olaUnActivePdt") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaUnActivePdt
        ViewData("olaActivePdt") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaActivePdt
        ViewData("olaMonth") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaMonth
        ViewData("olaPdt") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaPdt
        ViewData("olaSpl") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaSpl
        ViewData("olaBuyer") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaBuyer
        ViewData("olaPdtGrp") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaPdtGrp
        ViewData("olaActive") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaActive
        ViewData("olaBrand") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaBrand
        ViewData("olaFashion") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaFashion
        ViewData("olaRange") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaRange
        ViewData("olaRangeLevel") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaRangeLevel
        ViewData("olaRangeSize") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaRangeSize
        ViewData("olaRangeStart") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaRangeStart
        ViewData("olaRangeTimeSize") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaRangeTimeSize
        ViewData("olaRangeTimeStart") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaRangeTimeStart
        ViewData("olaBuyMinTime") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaBuyMinTime
        ViewData("olaBuyMaxTime") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaBuyMaxTime
        ViewData("olaNo") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaNo
        ViewData("olaShortcutKey") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaShortcutKey
        ViewData("olaComment") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaComment
        ViewData("olaFilterBy") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaFilterBy
        ViewData("olaBarcode1") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaBarcode1
        ViewData("olaBarcode2") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaBarcode2
        ViewData("olaBarcode3") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaBarcode3
        ViewData("ovd_olaSupplier") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaSupplier
        ViewData("ovd_olaSplCode") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaSplCode
        ViewData("ovd_olaActiveDate") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaActiveDate
        ViewData("ovd_olaExpiredDate") = AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.olaExpiredDate
               
        ViewData("oimgAppv") = Url.Content(Resources.resGBImageList.oimgAppv)
        ViewData("oimgNoAppv") = Url.Content(Resources.resGBImageList.oimgNoAppv)
        ViewData("oimgPCRemove") = Url.Content(Resources.resGBImageList.oimgPCRemove)
        ViewData("oimgGencode") = Url.Content(Resources.resGBImageList.oimgGencode)
        ViewData("oimgBrowse") = Url.Content(Resources.resGBImageList.oimgBrowse)
        ViewData("olaMenuExit") = Resources.resGBMenuName.omnExit '*ออก *CH 17-10-2012
        ViewData("olaMenuHome") = Resources.resGBMenuName.omnHome '*หน้าแรก *CH 17-10-2012
        
        ViewData("VirtualDirectory") = W_GETtVirtualDirectory()
        W_SETxLangCulture()       
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
    Sub W_SETxLangCulture()
        'set ภาษา ให้กับ Object Telerik
        Dim oDateTimeInfo As New Globalization.DateTimeFormatInfo
        oDateTimeInfo.ShortDatePattern = "dd/MM/yyyy"
        oDateTimeInfo.ShortTimePattern = "HH:mm:ss"
        oDateTimeInfo.Calendar = New Globalization.GregorianCalendar
        If Session("tVB_LastLang") Is Nothing OrElse Session("tVB_LastLang") = "" Then
            System.Threading.Thread.CurrentThread.CurrentCulture = System.Globalization.CultureInfo.CreateSpecificCulture("EN")
            System.Threading.Thread.CurrentThread.CurrentUICulture = New System.Globalization.CultureInfo("EN")
        Else
            System.Threading.Thread.CurrentThread.CurrentCulture = System.Globalization.CultureInfo.CreateSpecificCulture(Session("tVB_LastLang").ToString)
            System.Threading.Thread.CurrentThread.CurrentUICulture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
        End If
        'System.Threading.Thread.CurrentThread.CurrentCulture = System.Globalization.CultureInfo.CreateSpecificCulture(Session("tVB_LastLang").ToString)
        'System.Threading.Thread.CurrentThread.CurrentUICulture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
        System.Threading.Thread.CurrentThread.CurrentUICulture.DateTimeFormat = oDateTimeInfo
        System.Threading.Thread.CurrentThread.CurrentCulture.DateTimeFormat = oDateTimeInfo
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <input type="hidden" id="otbCfgFTSpmType" />
    <input type="hidden" id="otbCfgFTSpmStaGrpBuy" />
    <input type="hidden" id="otbCfgFTSpmStaBuy" />
    <input type="hidden" id="otbCfgFTSpmStaGrpRcv" />
    <input type="hidden" id="otbCfgFTSpmStaRcv" />
    <input type="hidden" id="otbCfgFTSpmStaGrpBoth" />
    <input type="hidden" id="otbCfgFTSpmStaGrpReject" />
    <input type="hidden" id="otbCfgFTSpmStaAllPdt" />
    <input type="hidden" id="otbCfgFTSpmStaExceptPmt" />
    <input type="hidden" id="otbCfgFTSpmStaGetNewPri" />
    <input type="hidden" id="otbCfgFTSpmStaGetDisAmt" />
    <input type="hidden" id="otbCfgFTSpmStaGetDisPer" />
    <input type="hidden" id="otbCfgFTSpmStaGetPoint" />
    <input type="hidden" id="otbCfgFTSpmStaRcvFree" />
    <input type="hidden" id="otbCfgFTSpmStaAlwOffline" />
    <input type="hidden" id="otbCfgFTSpmStaChkLimitGet" />
    <input type="hidden" id="otbCfgFTSpmStaChkCst" />
    <input type="hidden" id="otbCfgFTSpmStaChkCstDOB" />
    <input type="hidden" id="otbCfgFTSpmStaUseRange" value="<%=Model.FTSpmStaUseRange %>" />    
    <input type="hidden" id="otbCfgFNSpmLimitGrpRcv" />
    <input type="hidden" id="otbStaBuyGet" />    
    <input type="hidden" id="otbFTUsrCode" value="<%=Model.FTUsrCode %>" />
    <input type="hidden" id="otbFTDptCode" value="<%=Model.FTDptCode %>" />
    <input type="hidden" id="otbFTPmhApvCode" value="<%=Model.FTPmhApvCode %>" />
    <input type="hidden" id="otbFTSpmType" value="<%=Model.FTSpmType %>" />
    <%--<input type="hidden" id="otbFTSpmType" />--%>
    <input type="hidden" id="otbFTPmhCodeOld" value="<%=Model.FTPmhCode %>" />
    <input type="hidden" id="otbFTPmhClosed" value="<%=Model.FTPmhClosed %>"/>
    <input type="hidden" id="otbFNPmhStaAct" value="<%=Model.FNPmhStaAct %>" />
    <input type="hidden" id="otbFTBchCode" value="<%=Model.FTBchCode %>" />
    <input type="hidden" id="otbFTPmhBchToOld" value="<%=Model.FTPmhBchTo %>" />
    <input type="hidden" id="otbFTPmhZneToOld" value="<%=Model.FTPmhZneTo %>" />
    <input type="hidden" id="otbFTSpmCodeOld" value="<%=Model.FTSpmCode %>" />
    <input type="hidden" id="otbFTPmhStatus" value="<%=Model.FTPmhStatus %>" />
    <input type="hidden" id="otbFTPmhStaPrcDoc" value="<%=Model.FTPmhStaPrcDoc%>" />
    <input type="hidden" id="otbFTSplCodeOld" value="<%=Model.FTSplCode%>" />
    <input type="hidden" id="otbPdtGrp" />
    <input type="hidden" id="otbGridPdtSeq" />
    <input type="hidden" id="otbGridExceptSeq" />
    
    <div  id="odiMain" class ="xCN_AllFontFamily xCN_AllFontSize xCN_AllFontColor xW_DivMain">
        <%-------------------เมนูด้านบนสุด---------------------------%>
        <div id="odiMenuTop" class ="xCN_AllBorderColor xW_DivMainMenu">
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
                    <a href="javascript:void(0);" onclick="W_FRMxNewDoc()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olatMsgAdd")%>
                        </div>
                    </a>
                </div> 
                <div id ="odiMenuSave" class="xCN_DivMenuSave" style="float:left;">
                    <a href="javascript:void(0);" onclick="W_DATxSaveDocument()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olatMsgSave")%>
                        </div>
                    </a>
                </div>
                <div id ="odiMenuSearch" class="xCN_DivMenuSearch" style="float:left;">
                    <a href="javascript:void(0);" onclick="W_FRMxFindDoc()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olatMsgFind")%>
                        </div>
                    </a>
                </div>  
                <div id ="odiMenuDelete" class="xCN_DivMenuDelete" style="float:left;">
                    <a href="javascript:void(0);"  onclick="W_FRMxDelDoc()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olatMsgDelete")%>
                        </div>
                    </a>
                </div>
                <div id ="odiMenuPost" class="xCN_DivMenuPost" style="float:left;">
                    <a href="javascript:void(0);" onclick="W_FRMxPostDoc()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olatMsgPost")%>
                        </div>
                    </a>
                </div>
                <div id ="odiMenuCoppy" class="xCN_DivMenuCoppy" style="float:left;">
                    <a href="javascript:void(0);" onclick="W_FRMxCopyDoc()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olatMsgCopy")%>
                        </div>
                    </a>
                </div>
                <div id ="odiMenuStop" class="xCN_DivMenuCancel" style="float:left;">
                    <a href="javascript:void(0);" onclick="W_FRMxStopDoc()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olatMsgStop")%>
                        </div>
                    </a>
                </div>
                <div id ="odiPause" class="xCN_DivMenuCancel" style="float:left;">
                    <a href="javascript:void(0);" onclick="W_FRMxPauseDoc()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olatMsgPause")%>
                        </div>
                    </a>
                </div>  
                <%--<div id ="odiMenuHelp" class="xCN_DivMenuHelp" style="float:left;">
                    <a href="javascript:void(0);" onclick="W_FRMxHelpDoc()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olatMsgHelp")%>
                        </div>
                    </a>
                </div>--%>  
                <%--<div id ="odiMenuClose" class="xCN_DivMenuHome" style="float:left;">
                    <a href="javascript:void(0);" onclick="W_FRMxCloseDoc()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olatMsgClose")%>
                        </div>
                    </a>
                </div>--%>
                <!-- ไปเมนูโปรโมชั่น*CH 17-10-2012 -->
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
                <div id="odiDocImage" class ="<%=tClass %>">
                    <div id="odiNoneApprove" class ="xW_DivDocStatus">
                        <img id="oimNoAppv" 
                             alt="" 
                             class="xW_ImgDocStatus" 
                             name="oimNoAppv" 
                             src='<%=ViewData("oimgNoAppv") %>' />
                        <label class="xW_LabelDocStatus">
                             <%=ViewData("olatMsgDoc_NonApp")%>
                        </label>
                    </div>
                    <div id="odiApprove" class ="xW_DivDocStatus" style ="display:none;">
                        <img id="oimAppv" 
                             alt="oimAppv" 
                             class="xW_ImgDocStatus" 
                             name="oimAppv" 
                             src='<%=ViewData("oimgAppv") %>' />
                        <label class="xW_LabelDocStatus">
                             <%=ViewData("olatMsgDoc_App")%>
                         </label>
                    </div>
                    <div id="odiCancel" class ="xW_DivDocStatus" style ="display:none;">
                        <img id="oimPCRemove" 
                             alt="" 
                             class="xW_ImgDocStatus" 
                             name="oimPCRemove" 
                             src='<%=ViewData("oimgPCRemove") %>' />
                        <label class="xW_LabelDocStatus">
                                <%=ViewData("olatMsgDoc_Cancel")%>
                          </label>
                    </div>             
                </div>
             </div>
        </div>
        <%-------------------Detail HD---------------------------%>
        <div id="odiDetailHD" class="xCN_AllBackgroundColor xCN_AllBorderColor xW_DivDetailHD">
            <%--Div Tab General--%>
            <div class="xW_DivGeneral">
                <%--Div Tab Toppic--%>
                <div class="xCN_DivTabToppic" >
                    <a href="javascript:void(0);" 
                        onclick="{J010_SHWxTabData(0,'odiGeneral','odiDefinePdt');J009_SHWxTabTop(0,'odiDiv_Toppic1','odiDiv_Toppic2')}">
                        <div id="odiDiv_Toppic1" class="xCN_DivTabActive xW_DivTabToppicLabel" >
                            <%=ViewData("olaGeneral")%>
                        </div>
                    </a>
                    <a href="javascript:void(0);" 
                        onclick="{J010_SHWxTabData(1,'odiGeneral','odiDefinePdt');J009_SHWxTabTop(1,'odiDiv_Toppic1','odiDiv_Toppic2')}">
                        <div id="odiDiv_Toppic2" class="xCN_DivTabUnActive xW_DivTabToppicLabel" >
                            <%=ViewData("olaDefineProduct")%>
                        </div>
                    </a>
                </div>
                <%--   Div General--%>
                <div id="odiGeneral" class="xCN_DivTabDetail">
                    <div class="xCN_AllBackgroundColor xW_DivTabDetailSub">
                        <div class="xW_DivGeneralData">
                            <div class="xW_DivGeneralDataRow">
                                <div class="xW_DivGeneralLabel xCN_AllFontColorTextReq">
                                    <%=ViewData("olaPromotion")%>
                                </div>
                                <div class="xW_DivPmtName">
                                    <input id="otbFTPmhName" value="<%=Model.FTPmhName %>" maxlength="200" type="text" class="xW_InputGeneral xW_InputWidth01" onkeypress="return otbFTPmhName_onkeypress(event.keyCode,event.which)"/>
                                </div>
                            </div>
                            <div class="xW_DivGeneralDataRow">
                                <div class="xW_DivGeneralLabel xCN_AllFontColorTextReq">
                                    <%=ViewData("olaNameSlip")%>
                                </div>
                                <div class="xW_DivPmtName">
                                    <input id="otbFTPmhNameSlip" value="<%=Model.FTPmhNameSlip %>" maxlength="25" type="text" class="xW_InputGeneral xW_InputWidth01" onkeypress="return otbFTPmhNameSlip_onkeypressChkLen(event.keyCode,event.which)" />
                                </div>
                            </div>
                            <div class="xW_DivGeneralDataRow">
                                <div class="xW_DivGeneralLabel">
                                    <%=ViewData("olaPmtType")%>
                                </div>
                                <div class="xW_DivPmtName">
                                    <input id="otbFTSpmCode" value="<%=Model.FTSpmCode %>" maxlength="20"   type="text" class="xW_InputGeneral xW_InputWidth02" onblur="return otbFTSpmCode_onblur()" onfocus="return otbFTSpmCode_onfocus()" onkeydown="return otbFTSpmCode_onkeydown(event.keyCode,event.which)" onkeypress="return otbFTSpmCode_onkeypress(event.keyCode,event.which)" />
                                    <img alt="" onclick="W_DATxBrowsePmtType()" src="<%=ViewData("oimgBrowse")%>"  class="xCN_ImgBrowData xW_ImgBrowseData" />
                                    <input id="otbFTSpmName"  type="text" class="xCN_AllReadOnlyBGColor xW_InputGeneral xW_InputWidth03" readonly="readonly" />
                                </div>
                            </div>
                             <div class="xW_DivGeneralDataRow">
                                <div class="xW_DivGeneralLabel">
                                    <%=ViewData("olaZone")%>
                                </div>
                                <div class="xW_DivPmtName">
                                    <input maxlength="30" id="otbFTPmhZneTo" value="<%=Model.FTPmhZneTo%>" type="text" class="xW_InputGeneral xW_InputWidth04" onfocus="return otbFTPmhZneTo_onfocus()" onblur="return otbFTPmhZneTo_onblur()" onkeydown="return otbFTPmhZneTo_onkeydown(event.keyCode,event.which)" onkeypress="return otbFTPmhZneTo_onkeypress(event.keyCode,event.which)" />
                                    <img alt="" onclick="W_DATxBrowseMaster('otbFTPmhZneTo', 'otbFTPmhZneToName', 'TCNMZone')"  src="<%=ViewData("oimgBrowse")%>"  class="xCN_ImgBrowData xW_ImgBrowseData" />
                                    <input id="otbFTPmhZneToName" type="text" class="xCN_AllReadOnlyBGColor xW_InputGeneral xW_InputWidth05" readonly="readonly" />
                                </div>
                                <div class="xW_DivGeneralLabel2">
                                    <%=ViewData("olaBranch")%>
                                </div>
                                <div class="xW_DivPmtName">
                                    <input maxlength="3" id="otbFTPmhBchTo" value="<%=Model.FTPmhBchTo%>" type="text" class="xW_InputGeneral xW_InputWidth04" onfocus="return otbFTPmhBchTo_onfocus()" onblur="return otbFTPmhBchTo_onblur()" onkeydown="return otbFTPmhBchTo_onkeydown(event.keyCode,event.which)" onkeypress="return otbFTPmhBchTo_onkeypress(event.keyCode,event.which)" />
                                    <img alt="" onclick="W_DATxBrowseMaster('otbFTPmhBchTo', 'otbFTPmhBchToName', 'TCNMBranch')"  src="<%=ViewData("oimgBrowse")%>"  class="xCN_ImgBrowData xW_ImgBrowseData" />
                                    <input id="otbFTPmhBchToName" type="text" class="xCN_AllReadOnlyBGColor xW_InputGeneral xW_InputWidth05" readonly="readonly" />
                                </div>
                            </div>
                            <div class="xW_DivGeneralDataRow">
                                <div class="xW_DivGeneralLabel xCN_AllFontColorTextReq">
                                    <%=ViewData("olaBchAffect")%>
                                </div>
                                <div class="xW_DivPmtName">
                                    <input id="otbBchAffect"  type="text" class="xCN_AllReadOnlyBGColor xW_InputGeneral xW_InputWidth06" readonly="readonly" />
                                </div>
                            </div>
                            <div class="xW_DivGeneralDataRow">
                                <div class="xW_DivGeneralLabel">
                                    <%=ViewData("olaRemark")%>
                                </div>
                                <div class="xW_DivPmtName">
                                    <textarea id="otbFTPmhRmk" cols="1" rows="1" class="xW_InputWidth01 xW_InputHeight01" onkeypress="return otbFTPmhRmk_onkeypress(event.keyCode,event.which)"><%=Model.FTPmhRmk%></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="xW_DivAllow">
                            <%--Div Tab Toppic--%>
                            <div class="xCN_DivTabToppic">
                                <a href="javascript:void(0);" 
                                    onclick="{J010_SHWxTabData(0,'odiTime','odiAlw','odiMember','odiSupplier');J009_SHWxTabTop(0,'odiToppicTime','odiToppicAlw','odiToppicMember','odiToppicSupplier')}">
                                    <div id="odiToppicTime" class="xCN_DivTabActive xW_DivTabToppicLabel" >
                                        <%=ViewData("olaDateTime")%>
                                    </div>
                                </a>
                                <a href="javascript:void(0);" 
                                    onclick="{J010_SHWxTabData(1,'odiTime','odiAlw','odiMember','odiSupplier');J009_SHWxTabTop(1,'odiToppicTime','odiToppicAlw','odiToppicMember','odiToppicSupplier')}">
                                    <div id="odiToppicAlw" class="xCN_DivTabUnActive xW_DivTabToppicLabel" >
                                        <%=ViewData("olaAllow")%>
                                    </div>
                                </a>
                                <a href="javascript:void(0);" 
                                    onclick="{J010_SHWxTabData(2,'odiTime','odiAlw','odiMember','odiSupplier');J009_SHWxTabTop(2,'odiToppicTime','odiToppicAlw','odiToppicMember','odiToppicSupplier')}">
                                    <div id="odiToppicMember" class="xCN_DivTabUnActive xW_DivTabToppicLabel" >
                                        <%=ViewData("olaMember")%>
                                    </div>
                                </a>
                                <%--Chuck Add Tab Suppiler 04102011--%>
                                <a href="javascript:void(0);" 
                                    onclick="{J010_SHWxTabData(3,'odiTime','odiAlw','odiMember','odiSupplier');J009_SHWxTabTop(3,'odiToppicTime','odiToppicAlw','odiToppicMember','odiToppicSupplier')}">
                                    <div id="odiToppicSupplier" class="xCN_DivTabUnActive xW_DivTabToppicLabel" >
                                        <%=ViewData("ovd_olaSupplier")%>
                                    </div>
                                </a>
                            </div>
                            <%--   Div Time--%>
                            <div id="odiTime" class="xCN_DivTabDetail" >
                                <div class="xCN_AllBackgroundColor xW_DivAllowDetailSub" >
                                    <%--Div Set Time--%>
                                    <div class="xW_DivSetTime">
                                        <div class="xW_DivSetTimeRow">
                                            <div class="xW_DivSetTimeRowLabel">
                                                <%=ViewData("olaFromDate")%>
                                            </div>
                                            <div class="xW_DivSetTimeRowValue">
                                                <%=Html.Telerik.DatePicker().Name("DateFrom").Value(Model.FDPmhDStart).Format("dd/MM/yyyy").InputHtmlAttributes(New With {.id = "odtFDPmhDStart"})%>
                                            </div>    
                                        </div>
                                        <div class="xW_DivSetTimeRow">
                                            <div class="xW_DivSetTimeRowLabel">
                                                <%=ViewData("olaToDate")%>
                                            </div>
                                            <div class="xW_DivSetTimeRowValue">
                                                <%=Html.Telerik.DatePicker().Name("DateTo").Value(Model.FDPmhDStop).Format("dd/MM/yyyy").InputHtmlAttributes(New With {.id = "odtFDPmhDStop"})%>
                                            </div>    
                                        </div>
                                        <div class="xW_DivSetTimeRow">
                                            <div class="xW_DivSetTimeRowLabel">
                                                <%=ViewData("olaFromTime")%>
                                            </div>
                                            <div class="xW_DivSetTimeRowValue">
                                                <%=Html.Telerik.TimePicker().Name("TimeFrom").Value(Model.FDPmhTStart).Format("HH:mm:ss").InputHtmlAttributes(New With {.id = "odtFDPmhTStart", .style = "width:77px;"}).HtmlAttributes(New With {.style = "width:102px;"})%>
                                            </div>
                                        </div>
                                        <div class="xW_DivSetTimeRow">
                                            <div class="xW_DivSetTimeRowLabel">
                                                <%=ViewData("olaToTime")%>
                                            </div>
                                            <div class="xW_DivSetTimeRowValue">
                                                <%=Html.Telerik.TimePicker().Name("TimeTo").Value(Model.FDPmhTStop).Format("HH:mm:ss").InputHtmlAttributes(New With {.id = "odtFDPmhTStop", .style = "width:77px;"}).HtmlAttributes(New With {.style = "width:102px;"})%>
                                            </div>
                                        </div>
                                        <div class="xW_DivSetTimeRow">
                                            <div class="xW_DivSetTimeRowLabel">
                                                <%=ViewData("olaPriceAffect")%>
                                            </div>
                                            <div class="xW_DivSetTimeRowValue">
                                                <select id="ocbFTPmhRetOrWhs" disabled="disabled" style="width:102px;">
                                                    <option value="1" <%=IIf( Model.FTPmhRetOrWhs = "1", "selected=""selected""" ,"") %> ><%=ViewData("olaPriceRet")%></option>
                                                    <option value="2" <%=IIf( Model.FTPmhRetOrWhs = "2", "selected=""selected""" ,"") %> ><%=ViewData("olaPriceWhs")%></option>
                                                    <option value="3" <%=IIf( Model.FTPmhRetOrWhs = "3", "selected=""selected""" ,"") %> ><%=ViewData("olaAll")%></option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--   Div Allow--%>
                            <div id="odiAlw" class="xCN_DivTabDetail xCN_DivTabDisplay" >
                                <div class="xCN_AllBackgroundColor xW_DivAllowDetailSub" >
                                    <div>
                                        <input id="ockFTSpmStaExceptPmt" type="checkbox" 
                                            <%=IIf( Model.FTPmhStaExceptPmt = "2", "checked=""checked""" ,"") %> />
                                        <label><%=ViewData("olaExceptPmtPdt")%></label>
                                    </div>
                                    <div>
                                        <input id="ockFTSpmStaRcvFree" type="checkbox"
                                            <%=IIf( Model.FTSpmStaRcvFree = "1", "checked=""checked""" ,"") %> onclick="return ockFTSpmStaRcvFree_onclick()" />
                                        <label><%=ViewData("olaGetFreeItemAt")%></label>
                                    </div>
                                    <div>
                                        <input id="ockFTSpmStaAlwOffline" type="checkbox"
                                            <%=IIf( Model.FTSpmStaAlwOffline = "1", "checked=""checked""" ,"") %> />
                                        <label><%=ViewData("olaAllowOffline")%></label>
                                    </div>
                                    <div>
                                        <input id="ockFTSpmStaChkLimitGet" type="checkbox"
                                            <%=IIf( Model.FTSpmStaChkLimitGet = "1", "checked=""checked""" ,"") %> />
                                        <label><%=ViewData("olaLimitUsed")%></label>
                                    </div>
                                    <div style="padding-left:5px;">
                                        <label><%=ViewData("olaLimit")%></label>
                                        <%=Html.Telerik.IntegerTextBox().Name("FNPmhLimitNum").MinValue(1).MaxValue(999).Value(CInt(IIf(Model.FNPmhLimitNum < 1, 1, Model.FNPmhLimitNum))).InputHtmlAttributes(New With {.id = "otbFNPmhLimitNum", .style = "width:30px;"})%>
                                        <label><%=ViewData("olaTime")%>/</label>
                                        <select id="ocbFTPmhStaLimit" disabled="disabled">
                                            <option value='1' <%=IIf( Model.FTPmhStaLimit = "1", "selected=""selected""" ,"") %>><%=ViewData("olaDay")%></option>
                                            <option value='2' <%=IIf( Model.FTPmhStaLimit = "2", "selected=""selected""" ,"") %>><%=ViewData("olaMonth")%></option>
                                        </select>
                                        <label>/</label>
                                        <select id="ocbFTPmhStaLimitCst" disabled="disabled" onchange="return ocbFTPmhStaLimitCst_onchange()">
                                            <option value='1' <%=IIf( Model.FTPmhStaLimitCst = "1", "selected=""selected""" ,"") %> ><%=ViewData("olaAll")%></option>
                                            <option value='2' <%=IIf( Model.FTPmhStaLimitCst = "2", "selected=""selected""" ,"") %> ><%=ViewData("olaMember")%></option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <%--   Div Member--%>
                            <div id="odiMember" class="xCN_DivTabDetail xCN_DivTabDisplay" >
                                <div class="xCN_AllBackgroundColor xW_DivAllowDetailSub">
                                    <div>
                                        <div class="xW_DivBirthDayPmtCheckbox">
                                            <div class="xW_DivBirthDayPmt">
                                                <input id="ockFTSpmStaChkCst" type="checkbox"
                                                <%=IIf( Model.FTSpmStaChkCst = "1", "checked=""checked""" ,"") %> />
                                            </div>
                                            <div class="xW_DivBirthDayPmtLabel2" ><%=ViewData("olaMemberPmt")%></div>
                                        </div>
                                        <div id="odiCstNum" class="xW_DivBirthDayPmtData">
                                            <div class="xW_DivBirthDayPmtLabel" ><%=ViewData("olaPointGiving")%></div>
                                            <div class="xW_DivBirthDayPmtNumeric">
                                                <%=Html.Telerik.IntegerTextBox().Name("FNPmhCstNum") _
                                                                                .MinValue(0).MaxValue(999) _
                                                                                .Value(CInt(IIf(Model.FNPmhCstNum < 1, 1, Model.FNPmhCstNum))) _
                                                                                .InputHtmlAttributes(New With {.id = "otbFNPmhCstNum", .style = "width:30px;"}) _
                                                                                .ClientEvents(Function(e) e.OnChange("W_CHKnValPmhCstNum"))%>
                                            </div>
                                            <div class="xW_DivBirthDayPmtUnit"><%=ViewData("olaX")%></div>
                                        </div>   
                                    </div>
                                    <div>
                                        <div class="xW_DivMemberPmtCheckbox">
                                            <input id="ockFTSpmStaChkCstDOB" type="checkbox"
                                                <%=IIf( Model.FTSpmStaChkCstDOB = "1", "checked=""checked""" ,"") %> />
                                            <label><%=ViewData("olaBirthDayPmt")%></label>
                                        </div>
                                    </div>
                                    <div class="xW_DivMemberPmt">
                                        <div class="xW_DivMemberPmtData">
                                            <div class="xW_DivMemberPmtLabel"><%=ViewData("olaPointGiving")%></div>
                                            <div class="xW_DivMemberPmtNumeric">
                                                <%=Html.Telerik.IntegerTextBox().Name("FNPmhCstDobNum").MinValue(0).MaxValue(999).Value(CInt(IIf(Model.FNPmhCstDobNum, 1, Model.FNPmhCstDobNum))).InputHtmlAttributes(New With {.id = "otbFNPmhCstDobNum", .style = "width:30px;"})%>
                                            </div>
                                            <div class="xW_DivMemberPmtNumeric"><%=ViewData("olaX")%></div>
                                        </div>
                                        <div class="xW_DivMemberPmtData">
                                            <div class="xW_DivMemberPmtLabel"><%=ViewData("olaBefore")%></div>
                                            <div class="xW_DivMemberPmtNumeric">
                                                <%=Html.Telerik.IntegerTextBox().Name("FNPmhCstDobPrev").MinValue(0).MaxValue(12).Value(CInt(Model.FNPmhCstDobPrev)).InputHtmlAttributes(New With {.id = "otbFNPmhCstDobPrev", .style = "width:30px;"})%>
                                            </div>
                                            <div class="xW_DivMemberPmtUnit"><%=ViewData("olaMonth")%></div>
                                        </div>
                                        <div class="xW_DivMemberPmtData">
                                            <div class="xW_DivMemberPmtLabel"><%=ViewData("olaAfter")%></div>
                                            <div class="xW_DivMemberPmtNumeric">
                                                <%=Html.Telerik.IntegerTextBox().Name("FNPmhCstDobNext").MinValue(0).MaxValue(12).Value(CInt(Model.FNPmhCstDobNext)).InputHtmlAttributes(New With {.id = "otbFNPmhCstDobNext", .style = "width:30px;"})%>
                                            </div>
                                            <div class="xW_DivMemberPmtNumeric"><%=ViewData("olaMonth")%></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--   Div Supplier Chuck 04102011--%>
                            <div id="odiSupplier" class="xCN_DivTabDetail xCN_DivTabDisplay" >
                                <div class="xCN_AllBackgroundColor xW_DivAllowDetailSub">
                                    <div class="xW_DivSetSplRow">
                                        <div class="xW_DivSetSplRowLabel"><%=ViewData("ovd_olaSplCode")%></div>
                                        <div class="xW_DivSetSplRowValue">
                                            <input id="otbFTSplCode" value="<%=Model.FTSplCode%>" maxlength="20" type="text" class="xW_InputGeneral xW_InputWidth02" onblur="return otbFTSplCode_onblur()" onfocus="return otbFTSplCode_onfocus()" onkeydown="return otbFTSplCode_onkeydown(event.keyCode,event.which)" onkeypress="return otbSplFrom_onkeypress(event.keyCode,event.which)"/>
                                            <img alt=""  onclick="W_DATxBrowseMaster('otbFTSplCode', 'otbFTSplName', 'TCNMSpl')" src="<%=ViewData("oimgBrowse")%>"  class="xCN_ImgBrowData xW_ImgBrowseData" />
                                            <input id="otbFTSplName" value="<%=Model.FTSplName%>"  type="text" class="xCN_AllReadOnlyBGColor xW_InputGeneral xW_InputWidth07" readonly="readonly" />
                                        </div>
                                    </div>
                                    <div class="xW_DivSetSplRow">
                                        <div class="xW_DivSetSplRowLabel"><%=ViewData("ovd_olaActiveDate")%></div>
                                        <div class="xW_DivSetSplRowValue">
                                            <%=Html.Telerik.DatePicker().Name("DateStart").Value(Model.FDPntSplStart).Format("dd/MM/yyyy").InputHtmlAttributes(New With {.id = "odtFDPntSplDStart"})%>
                                        </div>
                                    </div>
                                    <div class="xW_DivSetSplRow">
                                        <div class="xW_DivSetSplRowLabel"><%=ViewData("ovd_olaExpiredDate")%></div>
                                        <div class="xW_DivSetSplRowValue">
                                            <%=Html.Telerik.DatePicker().Name("DateExpired").Value(Model.FDPntSplExpired).Format("dd/MM/yyyy").InputHtmlAttributes(New With {.id = "odtFDPntSplDExpired"})%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
                <%--   Define Product--%>
                <div id="odiDefinePdt" class="xCN_DivTabDetail xCN_DivTabDisplay">
                    <div class="xCN_AllBackgroundColor xW_DivTabDetailSub">
                        <div class="xW_DivDefinePdtData">
                            <div class="xW_DivDefinePdtDataRow">
                                <label><%=ViewData("olaPdtPmtGrpName")%></label>
                            </div>
                            <div class="xW_DivDefinePdtDataRow">
                                <input id="otbFTPmdGrpName" type="text" class="xW_InputDefineGrpName" onkeypress="return otbFTPmdGrpName_onkeypress(event.keyCode,event.which)" />
                            </div>
                            <div class="xW_DivDefinePdtDataRow">
                                <fieldset class="xW_FieldsetManageGrp">
                                    <legend><%=ViewData("olaPdtPmtGrp")%></legend>
                                    <div>
                                        <input id="orbFTSpmStaGrpBuy" name="orbPmtPdtGrp" type="radio" checked="checked" onclick="W_SETxPmtProductGrp();" />
                                        <label><%=ViewData("olaBuyGroup")%></label>
                                    </div>
                                    <div>
                                        <input id="orbFTSpmStaGrpRcv" name="orbPmtPdtGrp" type="radio" onclick="W_SETxPmtProductGrp();"/>
                                        <label><%=ViewData("olaGetGroup")%></label>
                                    </div>
                                    <div>
                                        <input id ="orbFTSpmStaGrpBoth" name="orbPmtPdtGrp" type="radio" onclick="W_SETxPmtProductGrp();"/>
                                        <label><%=ViewData("olaBuyAndGetGroup")%></label>
                                    </div>
                                    <div>
                                        <input id="orbFTSpmStaGrpReject" name="orbPmtPdtGrp" type="radio" onclick="W_SETxPmtProductGrp();"/>
                                        <label><%=ViewData("olaExceptGroup")%></label>
                                    </div>
                                </fieldset>
                            </div>
                        </div>
                        <div class="xW_DivInsertPdt">
                            <%--Div Tab Toppic 1--%>
                            <div id="odiTopicGrp1" class="xCN_DivTabToppic" >
                                <a href="javascript:void(0);" 
                                    onclick="W_SETxActiveTabInsertPdt(0);">
                                    <div id="odiTopicPdt" class="xCN_DivTabActive xW_DivTabToppicLabel" >
                                        <%=ViewData("olaPdt")%>
                                    </div>
                                </a>
                                <a href="javascript:void(0);" 
                                    onclick="W_SETxActiveTabInsertPdt(1);">
                                    <div id="odiTopicSpl" class="xCN_DivTabUnActive xW_DivTabToppicLabel" >
                                        <%=ViewData("olaSpl")%>
                                    </div>
                                </a>
                                <a href="javascript:void(0);" 
                                    onclick="W_SETxActiveTabInsertPdt(2);">
                                    <div id="odiTopicBuyer" class="xCN_DivTabUnActive xW_DivTabToppicLabel" >
                                        <%=ViewData("olaBuyer")%>
                                    </div>
                                </a>
                                <a href="javascript:void(0);" 
                                    onclick="W_SETxActiveTabInsertPdt(3);">
                                    <div id="odiTopicPdtGrp" class="xCN_DivTabUnActive xW_DivTabToppicLabel" >
                                        <%=ViewData("olaPdtGrp")%>
                                    </div>
                                </a>
                                <a href="javascript:void(0);" 
                                    onclick="W_SETxActiveTabInsertPdt(4);">
                                    <div id="odiTopicActive" class="xCN_DivTabUnActive xW_DivTabToppicLabel" >
                                        <%=ViewData("olaActive")%>
                                    </div>
                                </a>
                            </div>
                            <%--Div Tab Toppic 2--%>
                            <div id="odiTopicGrp2" class="xCN_DivTabToppic xCN_DivTabDisplay">
                                <a href="javascript:void(0);" 
                                    onclick="W_SETxActiveTabInsertPdt2(0);">
                                    <div id="odiTopicBrand" class="xCN_DivTabActive xW_DivTabToppicLabel" >
                                        <%=ViewData("olaBrand")%>
                                    </div>
                                </a>
                                <a href="javascript:void(0);" 
                                    onclick="W_SETxActiveTabInsertPdt2(1);">
                                    <div id="odiTopicFasion" class="xCN_DivTabUnActive xW_DivTabToppicLabel" >
                                        <%=ViewData("olaFashion")%>
                                    </div>
                                </a>
                                <a href="javascript:void(0);" 
                                    onclick="W_SETxActiveTabInsertPdt2(2);">
                                    <div id="odiTopicRange" class="xCN_DivTabUnActive xW_DivTabToppicLabel" >
                                        <%=ViewData("olaRange")%>
                                    </div>
                                </a>
                            </div>
                            <div class="xCN_DivTabTopicGrpNum" >
                                <div id="odiTopicGrpNum1" onclick="W_SETxActiveTabInsertPdtGrp(0);" class="xCN_DivTabTopicGrp xCN_DivTabActiveGrp" >1</div>
                                <div id="odiTopicGrpNum2" onclick="W_SETxActiveTabInsertPdtGrp(1);" class="xCN_DivTabTopicGrp xCN_DivTabUnActiveGrp" >2</div>
                            </div>
                               
                            <%--Tap Data Group 1--%>                           
                            <div id="odiTabDataGrp1">
                                <%--   Div Product--%>
                                <div id="odiPdt" name="odiPdt" class="xCN_DivTabDetail">
                                    <div class="xCN_AllBackgroundColor xW_DivTabInsertPdtSub" >
                                        <div class="xW_DivInsertPdtData">
                                            <div class="xW_DivInsertPdtRow">
                                                <div class="xW_DivInsertPdtLabel"><%=ViewData("olaFromCode") %></div>
                                                <div class="xW_DivInsertPdtInput">
                                                    <input id="otbPdtFrom" type="text" class="xW_InputInsertPdt" onkeypress="return otbPdtFrom_onkeypress(event.keyCode,event.which)" />
                                                    <a href="javascript:void(0);" >
                                                        <img alt="" onclick="W_BRWxProduct('otbPdtFrom')" class="xCN_ImgBrowData" src="<%=ViewData("oimgBrowse") %>" />
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="xW_DivInsertPdtRow">
                                                <div class="xW_DivInsertPdtLabel"><%=ViewData("olaToCode")%></div>
                                                <div class="xW_DivInsertPdtInput">
                                                    <input id="otbPdtTo" type="text" class="xW_InputInsertPdt" onkeypress="return otbPdtTo_onkeypress(event.keyCode,event.which)" />
                                                    <a href="javascript:void(0);" >
                                                        <img alt="" onclick="W_BRWxProduct('otbPdtTo')" class="xCN_ImgBrowData" src="<%=ViewData("oimgBrowse") %>" />
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div style="float:left;margin-left:5px;">
                                            <input id="ockFTSpmStaAllPdt" type="checkbox" />
                                            <label><%=ViewData("olaAllPdt")%></label>
                                        </div>
                                        <div style="float:left;margin-left:5px;">
                                            <input id="ockDupUsePrev" type="checkbox" checked="checked" />
                                            <label><%=ViewData("olaPdtDupUsePrev")%></label>
                                        </div>
                                        <div style="float:right;margin-right:5px;">
                                            <label><%=ViewData("olaFilterBy")%></label>
                                            <select id="ocbFilterBarcode">
                                                <option value='1' selected="selected"><%=ViewData("olaBarcode1")%></option>
                                                <option value='2' ><%=ViewData("olaBarcode2")%></option>
                                                <option value='3' ><%=ViewData("olaBarcode3")%></option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <%--   Div Supplier--%>
                                <div id="odiSpl" class="xCN_DivTabDetail xCN_DivTabDisplay">
                                    <div class="xCN_AllBackgroundColor xW_DivTabInsertPdtSub" >
                                        <div class="xW_DivInsertPdtData">
                                            <div class="xW_DivInsertPdtRow">
                                                <div class="xW_DivInsertPdtLabel"><%=ViewData("olaFromCode") %></div>
                                                <div class="xW_DivInsertPdtInput">
                                                    <input id="otbSplFrom" type="text" class="xW_InputInsertPdt" onkeypress="return otbSplFrom_onkeypress(event.keyCode,event.which)" />
                                                    <a href="javascript:void(0);" >
                                                        <img alt="" onclick="W_DATxBrowseMaster('otbSplFrom', '', 'TCNMSpl')" class="xCN_ImgBrowData" src="<%=ViewData("oimgBrowse") %>" />
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="xW_DivInsertPdtRow">
                                                <div class="xW_DivInsertPdtLabel"><%=ViewData("olaToCode")%></div>
                                                <div class="xW_DivInsertPdtInput">
                                                    <input id="otbSplTo" type="text" class="xW_InputInsertPdt" onkeypress="return otbSplTo_onkeypress(event.keyCode,event.which)" />
                                                    <a href="javascript:void(0);" >
                                                        <img alt="" onclick="W_DATxBrowseMaster('otbSplTo', '', 'TCNMSpl')" class="xCN_ImgBrowData" src="<%=ViewData("oimgBrowse") %>" />
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <%--   Div Buyer--%>
                                <div id="odiBuyer" class="xCN_DivTabDetail xCN_DivTabDisplay">
                                    <div class="xCN_AllBackgroundColor xW_DivTabInsertPdtSub" >
                                        <div class="xW_DivInsertPdtData">
                                            <div class="xW_DivInsertPdtRow">
                                                <div class="xW_DivInsertPdtLabel"><%=ViewData("olaFromCode") %></div>
                                                <div class="xW_DivInsertPdtInput">
                                                    <input id="otbBuyerFrom" type="text" class="xW_InputInsertPdt" onkeypress="return otbBuyerFrom_onkeypress(event.keyCode,event.which)" />
                                                    <a href="javascript:void(0);" >
                                                        <img alt="" onclick="W_DATxBrowseMaster('otbBuyerFrom', '', 'TSysUser')" class="xCN_ImgBrowData" src="<%=ViewData("oimgBrowse") %>" />
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="xW_DivInsertPdtRow">
                                                <div class="xW_DivInsertPdtLabel"><%=ViewData("olaToCode")%></div>
                                                <div class="xW_DivInsertPdtInput">
                                                    <input id="otbBuyerTo" type="text" class="xW_InputInsertPdt" onkeypress="return otbBuyerTo_onkeypress(event.keyCode,event.which)" />
                                                    <a href="javascript:void(0);" >
                                                        <img alt="" onclick="W_DATxBrowseMaster('otbBuyerTo', '', 'TSysUser')" class="xCN_ImgBrowData" src="<%=ViewData("oimgBrowse") %>" />
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <%--   Div ProductGrp--%>
                                <div id="odiPdtGrp" class="xCN_DivTabDetail xCN_DivTabDisplay">
                                    <div class="xCN_AllBackgroundColor xW_DivTabInsertPdtSub">
                                        <div class="xW_DivInsertPdtData">
                                            <div class="xW_DivInsertPdtRow">
                                                <input id="otbPdtGrpName" ondblclick="J002_CLRxClearObjValue('otbPdtGrp,otbPdtGrpName')" type="text" class="xW_InputInsertPdt xCN_AllReadOnlyBGColor" readonly="readonly" />
                                                <a href="javascript:void(0);" onclick="W_SHWxBrwPdtGrp();" >
                                                    <img alt="" class="xCN_ImgBrowData" src="<%=ViewData("oimgBrowse") %>" />
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <%--   Div Active--%>
                                <div id="odiActive" class="xCN_DivTabDetail xCN_DivTabDisplay">
                                    <div class="xCN_AllBackgroundColor xW_DivTabInsertPdtSub" >
                                        <div class="xW_DivActive">
                                            <input id="orbUnUse" name="orbMovement" type="radio" checked="checked" />
                                            <label><%=ViewData("olaUnUse")%></label>
                                            <br />
                                            <input id="orbUnActive" name="orbMovement" type="radio" />
                                            <label><%=ViewData("olaUnActivePdt")%></label>
                                            <br />
                                            <input id="orbActive" name="orbMovement" type="radio" />
                                            <label><%=ViewData("olaActivePdt")%></label>
                                            <%=Html.Telerik.NumericTextBox().Name("ActiveBefore").DecimalDigits(Session("nVB_CNDecAmtForShw")).MinValue(1).MaxValue(99).Value(1).InputHtmlAttributes(New With {.id = "otbActiveNum", .style = "width:50px;"})%>
                                            <label><%=ViewData("olaMonth")%></label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--Tap Group 2--%>                           
                            <div id="odiTabDataGrp2" class="xCN_DivTabDisplay">
                                <%--   Div Brand--%>
                                <div id="odiBrand" class="xCN_DivTabDetail">
                                    <div class="xCN_AllBackgroundColor xW_DivTabInsertPdtSub" >
                                        <div class="xW_DivInsertPdtData">
                                            <div class="xW_DivInsertPdtRow">
                                                <div class="xW_DivInsertPdtLabel"><%=ViewData("olaFromCode") %></div>
                                                <div class="xW_DivInsertPdtInput">
                                                    <input id="otbBrandFrom" type="text" class="xW_InputInsertPdt" onkeypress="return otbBrandFrom_onkeypress(event.keyCode,event.which)" />
                                                    <a href="javascript:void(0);" >
                                                        <img alt="" onclick="W_DATxBrowseMaster('otbBrandFrom', '', 'TCNMPdtBrand')" class="xCN_ImgBrowData" src="<%=ViewData("oimgBrowse") %>" />
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="xW_DivInsertPdtRow">
                                                <div class="xW_DivInsertPdtLabel"><%=ViewData("olaToCode")%></div>
                                                <div class="xW_DivInsertPdtInput">
                                                    <input id="otbBrandTo" type="text" class="xW_InputInsertPdt" onkeypress="return otbBrandTo_onkeypress(event.keyCode,event.which)" />
                                                    <a href="javascript:void(0);" >
                                                        <img alt="" onclick="W_DATxBrowseMaster('otbBrandTo', '', 'TCNMPdtBrand')" class="xCN_ImgBrowData" src="<%=ViewData("oimgBrowse") %>" />
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <%--   Div Fasion--%>
                                <div id="odiFasion" class="xCN_DivTabDetail xCN_DivTabDisplay">
                                    <div class="xCN_AllBackgroundColor xW_DivTabInsertPdtSub" >
                                        <div class="xW_DivInsertPdtData">
                                            <div class="xW_DivInsertPdtRow2">
                                                <div class="xW_DivInsertPdtLabel"><%=ViewData("olaDCS")%></div>
                                                <div class="xW_DivInsertPdtInput">
                                                    <input id="otbDCS" type="text" class="xW_InputInsertPdt2" onkeypress="return otbDCS_onkeypress(event.keyCode,event.which)" />
                                                    <a href="javascript:void(0);" >
                                                        <img alt="" onclick="W_DATxBrowseMaster('otbDCS', '', 'TCNMPdtDCS')" class="xCN_ImgBrowData" src="<%=ViewData("oimgBrowse") %>" />
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="xW_DivInsertPdtRow2">
                                                <div class="xW_DivInsertPdtLabel"><%=ViewData("olaDCSd")%></div>
                                                <div class="xW_DivInsertPdtInput">
                                                    <input id="otbDCSd" type="text" class="xW_InputInsertPdt2" onkeypress="return otbDCSd_onkeypress(event.keyCode,event.which)" />
                                                    <a href="javascript:void(0);" >
                                                        <img alt="" onclick="W_DATxBrowseMaster('otbDCSd', '', 'TCNMPdtDCSd')" class="xCN_ImgBrowData" src="<%=ViewData("oimgBrowse") %>" />
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="xW_DivInsertPdtRow2">
                                                <div class="xW_DivInsertPdtLabel"><%=ViewData("olaDCSc")%></div>
                                                <div class="xW_DivInsertPdtInput">
                                                    <input id="otbDCSc" type="text" class="xW_InputInsertPdt2" onkeypress="return otbDCSc_onkeypress(event.keyCode,event.which)" />
                                                    <a href="javascript:void(0);" >
                                                        <img alt="" onclick="W_DATxBrowseMaster('otbDCSc', '', 'TCNMPdtDCSc')" class="xCN_ImgBrowData" src="<%=ViewData("oimgBrowse") %>" />
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="xW_DivInsertPdtRow2">
                                                <div class="xW_DivInsertPdtLabel"><%=ViewData("olaDCSs")%></div>
                                                <div class="xW_DivInsertPdtInput">
                                                    <input id="otbDCSs" type="text" class="xW_InputInsertPdt2" onkeypress="return otbDCSs_onkeypress(event.keyCode,event.which)" />
                                                    <a href="javascript:void(0);" >
                                                        <img alt="" onclick="W_DATxBrowseMaster('otbDCSs', '', 'TCNMPdtDCSs')" class="xCN_ImgBrowData" src="<%=ViewData("oimgBrowse") %>" />
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <%--   Div Range--%>
                                <div id="odiRange" class="xCN_DivTabDetail xCN_DivTabDisplay">
                                    <div class="xCN_AllBackgroundColor xW_DivTabInsertPdtSub" >
                                        <div  class="xW_DivInsertPdtData">
                                            <div class="xW_DivInsertPdtRow3">
                                                <div class="xW_DivInsertPdtLabel"><%=ViewData("olaRangeLevel")%></div>
                                                <%=Html.Telerik.NumericTextBox().Name("RangeLevel").DecimalDigits(Session("nVB_CNDecAmtForShw")).MinValue(1).MaxValue(99).Value(1).InputHtmlAttributes(New With {.id = "otbRangeLevel", .style = "width:77px;"})%>
                                                <a href="javascript:void(0);" class="xCN_ABrowseData">
                                                    <img alt="" onclick="W_DATxAddPmtRange();" class="xCN_ImgBrowData" src="<%=Url.Content("~/Content/img/AdaTCNTPmtHD/AddRange.png") %>" />
                                                </a>
                                            </div>
                                            <div id="odiRangeValueSize" class="xW_DivInsertPdtRow3">
                                                <div class="xW_DivInsertPdtLabel"><%=ViewData("olaRangeSize")%></div>
                                                <div>
                                                    <%=Html.Telerik.NumericTextBox().Name("RangeSize").DecimalDigits(Session("nVB_CNDecAmtForShw")).MinValue(1).MaxValue(99).Value(1).InputHtmlAttributes(New With {.id = "otbRangeSize", .style = "width:77px;"})%>
                                                </div>
                                            </div>
                                            <div id="odiRangeValueStart" class="xW_DivInsertPdtRow3">
                                                <div class="xW_DivInsertPdtLabel"><%=ViewData("olaRangeStart")%></div>
                                                <input id="otbRangeStart" type="text" style="width:77px;" onkeypress="return otbRangeStart_onkeypress(event.keyCode,event.which)" onkeyup="otbRangeStart_onkeyup()" />
                                            </div>
                                            <div id="odiRangeTimeSize" class="xW_DivInsertPdtRow3 xCN_DivTabDisplay">
                                                <div class="xW_DivInsertPdtLabel"><%=ViewData("olaRangeTimeSize")%></div>
                                                <div>
                                                    <%=Html.Telerik.TimePicker().Name("RangeTimeSize").Value(CDate("01:00:00")).Format("HH:mm:ss").InputHtmlAttributes(New With {.id = "odtRangeTimeSize", .style = "width:77px;"}).HtmlAttributes(New With {.style = "width:102px;"})%>
                                                </div>
                                            </div>
                                            <div id="odiRangeTimeStart" class="xW_DivInsertPdtRow3 xCN_DivTabDisplay">
                                                <div class="xW_DivInsertPdtLabel"><%=ViewData("olaRangeTimeStart")%></div>
                                                <div>
                                                    <%=Html.Telerik.TimePicker().Name("RangeTimeStart").Value(CDate("00:00:01")).Format("HH:mm:ss").InputHtmlAttributes(New With {.id = "odtRangeTimeStart", .style = "width:77px;"}).HtmlAttributes(New With {.style = "width:102px;"})%>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="xW_DivGridRange" >
                                            <%  'declare the grid and enable features
                                                Dim oDataRange As New List(Of Adasoft.WebPos.Models.cmlPmtRange)
                                                oDataRange = Nothing
                                                Dim oGridRange = Html.Telerik().Grid(oDataRange) _
                                                            .Name("GridRange") _
                                                            .HtmlAttributes(New With {.style = "width:99.8%"}) _
                                                            .Scrollable(Function(o) o.Height(62)) _
                                                            .Footer(False) _
                                                            .Resizable(Function(o) o.Columns(True)) _
                                                            .Selectable()
                                        
                                                oGridRange.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                                                      .Select("C_DAToBindingGridRange", "cvcTCNTPmtHD") _
                                                      ))
                                     
                                           
                                                'Add grid columns
                                                oGridRange.Columns(Function(columns) columns.Bound(Function(o) o.FNSeq).Title("").Width(40) _
                                                        .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                                        .HtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}))
                                                oGridRange.Columns(Function(columns) columns.Bound(Function(o) o.FCFromValue).Title(ViewData("olaBuyMin")).Width(111).Format("{0:#,##0." & StrDup(Session("nVB_CNDecAmtForShw"), "0") & "}") _
                                                        .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                                        .HtmlAttributes(New With {.style = "text-align:right; font-size:12px;"}))
                                                oGridRange.Columns(Function(columns) columns.Bound(Function(o) o.FCToValue).Title(ViewData("olaBuyMax")).Width(111).Format("{0:#,##0." & StrDup(Session("nVB_CNDecAmtForShw"), "0") & "}") _
                                                    .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                                    .HtmlAttributes(New With {.style = "text-align:right; font-size:12px;"}))
                                                oGridRange.Columns(Function(columns) columns.Bound(Function(o) o.FDFromTime).Title(ViewData("olaBuyMinTime")).Width(111).Format("{0:HH:mm:ss}") _
                                                    .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                                    .HtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}))
                                                oGridRange.Columns(Function(columns) columns.Bound(Function(o) o.FDToTime).Title(ViewData("olaBuyMaxTime")).Width(111).Format("{0:HH:mm:ss}") _
                                                    .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                                    .HtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}))
                                                oGridRange.DataKeys(Function(Key) Key.Add(Function(model) model.FNSeq))
                                        
                                                'Render the grid
                                                oGridRange.Render()
                                            %>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--   Div Button--%>
                            <div class="xW_DivInsertButton">
                                <input onclick="W_DATxAddPdtToTable();" class="xW_InputInsertButton" type="button" value="<%=ViewData("olaFilterPdt") %>"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%--Document--%>
            <div id="odiDocNo" class ="xCN_AllBorderColor xW_DivDetailHDDocNo">
                <div class="xCN_AllBackgroundColorMenu xCN_AllBorderColor xCN_AllMenuFontSize xCN_AllMenuFontColor xCN_DivDocName">
                    <div class="xW_DivMenuNameSub">
                       <label class="xW_LabelMenuName">
                            <%=ViewData("olaMenuName")%>
                        </label>
                    </div>

                </div>
                <div class="xW_DivDocNo">
                    <div class="xW_DivDocNoColumn1">
                        <div class="xW_DivDocNoColumn1Caption">
                            <%=ViewData("olaDocNo")%>
                        </div>
                        <div class="xW_DivDocNoColumn1Caption">
                            <%=ViewData("olaDepartment")%>
                        </div>
                        <div class="xW_DivDocNoColumn1Caption">
                            <%=ViewData("olaUser")%>
                        </div>
                        <div class="xW_DivDocNoColumn1Caption">
                            <%=ViewData("olaStatus")%>
                        </div>
                    </div>
                    <div class="xW_DivDocNoColumn2">
                        <div class="xW_DivDocNoColumn2Sub">
                            <input  id="otbFTPmhCode" 
                                    class="xCN_AllReadOnlyBGColor xW_InputTextDocNo" 
                                    readonly="readonly"
                                    maxlength="20" 
                                    name="otbFTPmhCode" 
                                    onblur="otbFTPmhCode_onblur()" 
                                    onfocus="otbFTPmhCode_onfocus()" 
                                    onkeydown="otbFTPmhCode_onkeydown()" 
                                    type="text" 
                                    value="<%=Model.FTPmhCode%>" />
                        </div>
                        <div class="xW_DivDocNoColumn2Sub">
                             <input id="otbDptName" 
                                    class="xCN_AllReadOnlyBGColor xW_InputTextShwDetailName" 
                                    name="otbDptName" 
                                    readonly="readonly" 
                                    type="text" />
                        </div>
                        <div class="xW_DivDocNoColumn2Sub">
                            <input id="otbUsrName" 
                                   class="xCN_AllReadOnlyBGColor xW_InputTextShwDetailName" 
                                   name="otbUsrName" 
                                   readonly="readonly" 
                                   type="text" />
                        </div>
                        <div class="xW_DivDocNoColumn2Sub">
                             <input id="otbPmtStatus" 
                                    class="xCN_AllReadOnlyBGColor xW_InputTextShwDetailName" 
                                    name="otbPmtStatus" 
                                    readonly="readonly" 
                                    type="text" />
                        </div>
                    
                    </div>
                    <div class="xW_DivDocNoColumn3">
                        <div class="xW_DivDocNoColumn3Sub">
                            <a onclick="W_GETtDocNo();" href="#"">
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
        <%--Div Tab Product--%>
        <div class="xW_DivTabProduct">
            <%--Div Tab Toppic--%>
            <div class="xCN_DivTabToppic" >
                <a href="javascript:void(0);" 
                    id="oahGridPdt" 
                    onkeydown="return oahGridPdt_onkeydown(event.keyCode,event.which)"
                    onclick="{J010_SHWxTabData(0,'odiDiv_PdtSelect','odiDiv_PdtExcept');J009_SHWxTabTop(0,'odiDiv_ToppicPdtSelect','odiDiv_ToppicPdtExcept')}">
                    <div id="odiDiv_ToppicPdtSelect" class="xCN_DivTabActive xW_DivTabToppicLabel" >
                        <%=ViewData("olaPromotionPdt")%>
                    </div>
                </a>
                <a href="javascript:void(0);" 
                    id="oahGridExcept" 
                    onkeydown="return oahGridExcept_onkeydown(event.keyCode,event.which)"
                    onclick="{J010_SHWxTabData(1,'odiDiv_PdtSelect','odiDiv_PdtExcept');J009_SHWxTabTop(1,'odiDiv_ToppicPdtSelect','odiDiv_ToppicPdtExcept')}">
                    <div id="odiDiv_ToppicPdtExcept" class="xCN_DivTabUnActive xW_DivTabToppicLabel" >
                        <%=ViewData("olaExceptPdt")%>
                    </div>
                </a>
            </div>
            <%--   Div Select Product--%>
            <div id="odiDiv_PdtSelect" class="xW_DivTabDetail">
                <div class="xCN_AllBackgroundColor xW_DivTabProductSub">
                    <div>
                        <%  'declare the grid and enable features
                            Dim oDataDT As New List(Of Adasoft.WebPos.Models.cmlTCNTPmtDT)
                            oDataDT = ViewData("DataPdt")
                            Dim gridBuilder = Html.Telerik().Grid(oDataDT) _
                                        .Name("GridPdt") _
                                        .HtmlAttributes(New With {.style = "width:99.8%"}) _
                                        .Scrollable(Function(o) o.Height(118)) _
                                        .Footer(False) _
                                        .Resizable(Function(o) o.Columns(True)) _
                                        .Selectable()
                                
                            gridBuilder.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                                  .Select("C_DAToBindingGridPdt", "cvcTCNTPmtHD") _
                                  ))
                             
                                   
                            'Add grid columns
                            gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FNPmdSeqNo).Title(ViewData("olaNo")).Width(45) _
                                    .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                    .HtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}))
                            gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTPmdGrpName).Title(ViewData("olaGroup")).Width(200) _
                                    .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                    .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                            gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTPdtCode).Title(ViewData("olaPdtCode")).Width(150) _
                                .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                            gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTPmdBarCode).Title(ViewData("olaPdtBarCode")).Width(150) _
                                .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                            gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTPdtName).Title(ViewData("olaPdtName")).Width(300) _
                                .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                            gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTPmdUnitName).Title(ViewData("olaPdtUnitName")) _
                                    .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                    .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                            gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTSpmCode).Title("PunCode").Hidden())
                            gridBuilder.DataKeys(Function(Key) Key.Add(Function(model) model.FTPmhCode))
                                
                            'gridBuilder.ClientEvents(Function(Events) Events.OnLoad("grid_onLoad"))
                            gridBuilder.ClientEvents(Function(Events) Events.OnRowSelect("W_DATxGridPdtOnRowSelect"))
                            'gridBuilder.RowAction(Function(row) (row.Selected = row.DataItem.FTPmhCode.Equals(ViewData("id"))))
                                
                            'Render the grid
                            gridBuilder.Render()
                        %>
                    </div>
                </div>
            </div>
            <%--   Div Except Product--%>
            <div id="odiDiv_PdtExcept" class="xW_DivTabDetail xCN_DivTabDisplay">
                <div class="xCN_AllBackgroundColor xW_DivTabProductSub">
                    <div>
                        <%  'declare the grid and enable features
                            Dim oDataExcept As New List(Of Adasoft.WebPos.Models.cmlTCNTPmtDT)
                            oDataExcept = ViewData("DataExcept")
                            gridBuilder = Html.Telerik().Grid(oDataExcept) _
                                        .Name("GridExcept") _
                                        .HtmlAttributes(New With {.style = "width:99.8%"}) _
                                        .Scrollable(Function(o) o.Height(118)) _
                                        .Footer(False) _
                                        .Resizable(Function(o) o.Columns(True)) _
                                        .Selectable()
                                
                            gridBuilder.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                                  .Select("C_DAToBindingGridExcept", "cvcTCNTPmtHD") _
                                  ))
                             
                                   
                            'Add grid columns
                            gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FNPmdSeqNo).Title(ViewData("olaNo")).Width(45) _
                                   .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                   .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                            gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTPmdGrpName).Title(ViewData("olaGroup")).Width(200) _
                                    .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                    .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                            gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTPdtCode).Title(ViewData("olaPdtCode")).Width(150) _
                                .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                            gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTPmdBarCode).Title(ViewData("olaPdtBarCode")).Width(150) _
                                .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                            gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTPdtName).Title(ViewData("olaPdtName")).Width(300) _
                                .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                            gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTPmdUnitName).Title(ViewData("olaPdtUnitName")) _
                                    .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                    .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                            gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTPmhCode).Title("PunCode").Hidden())
                            gridBuilder.DataKeys(Function(Key) Key.Add(Function(model) model.FTPmhCode))
                                
                            'gridBuilder.ClientEvents(Function(Events) Events.OnLoad("grid_onLoad"))
                            gridBuilder.ClientEvents(Function(Events) Events.OnRowSelect("W_DATxGridExceptOnRowSelect"))
                            'gridBuilder.RowAction(Function(row) (row.Selected = row.DataItem.FTPmhCode.Equals(ViewData("id"))))
                                
                            'Render the grid
                            gridBuilder.Render()
                        %>
                    </div>
                </div>
            </div>
        </div>
        <%--Div Tab Condition--%>
        <div class="xW_DivTabCondition">
            <%--Div Tab Toppic--%>
            <div class="xCN_DivTabToppic" >
                <a href="javascript:void(0);" 
                    id="oahGridCond" 
                    onkeydown="return oahGridCond_onkeydown(event.keyCode,event.which)">
                    <div id="odiToppicCond" class="xCN_DivTabActive xW_DivTabToppicLabel" >
                        <%=ViewData("olaCond")%>
                    </div>
                </a>
            </div>
            <%--   Div Condition--%>
            <div id="odiCond" class="xW_DivTabDetail">
                <div class="xCN_AllBackgroundColor xW_DivTabConditionSub">
                    <div>
                        <%  'declare the grid and enable features
                            Dim oDataCD As New List(Of Adasoft.WebPos.Models.cmlTCNTPmtCD)
                            Dim oGridBuilderCD = Html.Telerik().Grid(oDataCD) _
                                        .Name("GridCond") _
                                        .HtmlAttributes(New With {.style = "width:99.8%"}) _
                                        .Scrollable(Function(o) o.Height(90)) _
                                        .Footer(False) _
                                        .Resizable(Function(o) o.Columns(True)) _ 
                                        .Selectable()
                                
                            oGridBuilderCD.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                                  .Select("C_DAToBindingGridCond", "cvcTCNTPmtHD") _
                                  ))
                             
                                   
                            'Add grid columns
                            oGridBuilderCD.Columns(Function(columns) columns.Bound(Function(o) o.FNPmcSeq).Title(ViewData("olaNo")).Width(45) _
                                    .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                    .HtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}))
                            oGridBuilderCD.Columns(Function(columns) columns.Bound(Function(o) o.FTPmcGrpName).Title(ViewData("olaGroup")).Width(130) _
                                    .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                    .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                            oGridBuilderCD.Columns(Function(columns) columns.Bound(Function(o) o.FTPmcStaGrpCondTxt).Title(ViewData("olaBuyGet")).Width(60) _
                                .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                            oGridBuilderCD.Columns(Function(columns) columns.Bound(Function(o) o.FCPmcPerAvgDis).Title(ViewData("olaPercent")).Width(60).Format("{0:#,##0." & StrDup(Session("nVB_CNDecAmtForShw"), "0") & "}") _
                                .HeaderHtmlAttributes(New With {.id = "otaHDPerAvgDis", .style = "text-align:center; font-size:12px;"}) _
                                .HtmlAttributes(New With {.style = "text-align:right; font-size:12px;"}))
                            oGridBuilderCD.Columns(Function(columns) columns.Bound(Function(o) o.FCPmcBuyAmt).Title(ViewData("olaBuyAmount")).Width(100).Format("{0:#,##0." & StrDup(Session("nVB_CNDecAmtForShw"), "0") & "}") _
                                .HeaderHtmlAttributes(New With {.id = "otaHDButAmt", .style = "text-align:center; font-size:12px;"}) _
                                .HtmlAttributes(New With {.style = "text-align:right; font-size:12px;"}))
                            oGridBuilderCD.Columns(Function(columns) columns.Bound(Function(o) o.FCPmcBuyQty).Title(ViewData("olaBuyQty")).Width(100).Format("{0:#,##0." & StrDup(Session("nVB_CNDecAmtForShw"), "0") & "}") _
                                    .HeaderHtmlAttributes(New With {.id = "otaHDBuyQty", .style = "text-align:center; font-size:12px;"}) _
                                    .HtmlAttributes(New With {.style = "text-align:right; font-size:12px;"}))
                            oGridBuilderCD.Columns(Function(columns) columns.Bound(Function(o) o.FCPmcBuyMinQty).Title(ViewData("olaBuyMin")).Width(100).Format("{0:#,##0." & StrDup(Session("nVB_CNDecAmtForShw"), "0") & "}") _
                                    .HeaderHtmlAttributes(New With {.id = "otaHDBuyMinQty", .style = "text-align:center; font-size:12px;"}) _
                                    .HtmlAttributes(New With {.style = "text-align:right; font-size:12px;"}))
                            oGridBuilderCD.Columns(Function(columns) columns.Bound(Function(o) o.FCPmcBuyMaxQty).Title(ViewData("olaBuyMax")).Width(100).Format("{0:#,##0." & StrDup(Session("nVB_CNDecAmtForShw"), "0") & "}") _
                                    .HeaderHtmlAttributes(New With {.id = "otaHDBuyMaxQty", .style = "text-align:center; font-size:12px;"}) _
                                    .HtmlAttributes(New With {.style = "text-align:right; font-size:12px;"}))
                            oGridBuilderCD.Columns(Function(columns) columns.Bound(Function(o) o.FDPmcBuyMinTime).Title(ViewData("olaBuyMinTime")).Width(100).Format("{0:HH:mm:ss}") _
                                    .HeaderHtmlAttributes(New With {.id = "otaHDBuyMinTime", .style = "text-align:center; font-size:12px;"}) _
                                    .HtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}))
                            oGridBuilderCD.Columns(Function(columns) columns.Bound(Function(o) o.FDPmcBuyMaxTime).Title(ViewData("olaBuyMaxTime")).Width(100).Format("{0:HH:mm:ss}") _
                                    .HeaderHtmlAttributes(New With {.id = "otaHDBuyMaxTime", .style = "text-align:center; font-size:12px;"}) _
                                    .HtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}))
                            oGridBuilderCD.Columns(Function(columns) columns.Bound(Function(o) o.FTPmcGetCondTxt).Title(ViewData("olaCond")).Width(70) _
                                    .HeaderHtmlAttributes(New With {.id = "otaHDGetCondTxt", .style = "text-align:center; font-size:12px;"}) _
                                    .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                            oGridBuilderCD.Columns(Function(columns) columns.Bound(Function(o) o.FCPmcGetValue).Title(ViewData("olaValue")).Width(90).Format("{0:#,##0." & StrDup(Session("nVB_CNDecAmtForShw"), "0") & "}") _
                                    .HeaderHtmlAttributes(New With {.id = "otaHDGetValue", .style = "text-align:center; font-size:12px;"}) _
                                    .HtmlAttributes(New With {.style = "text-align:right; font-size:12px;"}))
                            oGridBuilderCD.Columns(Function(columns) columns.Bound(Function(o) o.FCPmcGetQty).Title(ViewData("olaQty")).Width(90).Format("{0:#,##0." & StrDup(Session("nVB_CNDecAmtForShw"), "0") & "}") _
                                    .HeaderHtmlAttributes(New With {.id = "otaHDGetQty", .style = "text-align:center; font-size:12px;"}) _
                                    .HtmlAttributes(New With {.style = "text-align:right; font-size:12px;"}))
                            oGridBuilderCD.Columns(Function(columns) columns.Bound(Function(o) o.FTPmcStaGrpCond).Hidden(True))
                            oGridBuilderCD.Columns(Function(columns) columns.Bound(Function(o) o.FCPmcGetCond).Hidden(True))
                            oGridBuilderCD.DataKeys(Function(Key) Key.Add(Function(model) model.FNPmcSeq))
                                
                            'oGridBuilderCD.ClientEvents(Function(Events) Events.OnLoad("grid_onLoad"))
                            oGridBuilderCD.ClientEvents(Function(Events) Events.OnRowSelect("W_DATxGridCondOnRowSelect"))
                            'oGridBuilderCD.RowAction(Function(row) (row.Selected = row.DataItem.FTPmhCode.Equals(ViewData("id"))))
                                
                            'Render the grid
                            oGridBuilderCD.Render()
                        %>
                    </div>
                </div>
            </div>
            <%--   Div Input Grid Condition--%>
            <div class="xW_DivTabDetailInput">
                <div class="xW_DivInputHeight">
                    <div class="xW_DivInputGrid">
                        <input id="otbInpSeq" type="text" class="xW_InputWidthCond01 xCN_AllReadOnlyBGColor" readonly="readonly" />
                    </div>
                    <div class="xW_DivInputGrid">
                        <input id="otbInpGrpPmtPdt" type="text" class="xW_InputWidthCond02 xCN_AllReadOnlyBGColor" readonly="readonly" />
                    </div>
                    <div class="xW_DivInputGrid">
                        <input id="otbInpBuyGet" type="text" class="xW_InputWidthCond03 xCN_AllReadOnlyBGColor" readonly="readonly" />
                    </div>
                    <div class="xW_DivInputGrid">
                        <input id="otbInpPerAvg" type="text" class="xW_InputWidthCond04" onkeydown="return otbInpPerAvg_onkeydown(event.keyCode,event.which)" onkeypress="return otbInpPerAvg_onkeypress(event.keyCode,event.which)" onfocus="return otbInpPerAvg_onfocus()" onblur="return otbInpPerAvg_onblur()" />
                    </div>
                    <div class="xW_DivInputGrid">
                        <input id="otbInpBuyAmt" type="text" class="xW_InputWidthCond05" onkeydown="return otbInpBuyAmt_onkeydown(event.keyCode,event.which)" onkeypress="return otbInpBuyAmt_onkeypress(event.keyCode,event.which)"  onkeyup="return otbInpBuyAmt_onkeyup()" onfocus="return otbInpBuyAmt_onfocus()" onblur="return otbInpBuyAmt_onblur()" />
                    </div>
                    <div class="xW_DivInputGrid">
                        <input id="otbInpBuyQty" type="text" class="xW_InputWidthCond06" onkeydown="return otbInpBuyQty_onkeydown(event.keyCode,event.which)" onkeypress="return otbInpBuyQty_onkeypress(event.keyCode,event.which)" onkeyup="return otbInpBuyQty_onkeyup()" onfocus="return otbInpBuyQty_onfocus()" onblur="return otbInpBuyQty_onblur()" />
                    </div>
                    <div class="xW_DivInputGrid">
                        <input id="otbInpBuyMin" type="text" class="xW_InputWidthCond07" onkeydown="return otbInpBuyMin_onkeydown(event.keyCode,event.which)" onkeypress="return otbInpBuyMin_onkeypress(event.keyCode,event.which)" onkeyup="return otbInpBuyMin_onkeyup()" onfocus="return otbInpBuyMin_onfocus()" onblur="return otbInpBuyMin_onblur()" />
                        <div id ="odiInpBuyMinTime" class ="xCN_DivTabDisplay">
                            <%=Html.Telerik.TimePicker().Name("InpBuyMinTime").Format("HH:mm:ss").InputHtmlAttributes(New With {.id = "odtInpBuyMinTime", .onfocus = "odtInpBuyMinTime_onfocus()", .onblur = "odtInpBuyMinTime_onblur()", .onkeydown = "return odtInpBuyMinTime_onkeydown(event.keyCode,event.which)", .style = "width:82px"}).HtmlAttributes(New With {.style = "width:98px"})%>
                        </div>
                    </div>
                    <div class="xW_DivInputGrid">
                        <input id="otbInpBuyMax" type="text" class="xW_InputWidthCond08" onkeydown="return otbInpBuyMax_onkeydown(event.keyCode,event.which)" onkeypress="return otbInpBuyMax_onkeypress(event.keyCode,event.which)" onfocus="return otbInpBuyMax_onfocus()" onblur="return otbInpBuyMax_onblur()" />
                        <div id ="odiInpBuyMaxTime" class ="xCN_DivTabDisplay">
                            <%=Html.Telerik.TimePicker().Name("InpBuyMaxTime").Format("HH:mm:ss").InputHtmlAttributes(New With {.id = "odtInpBuyMaxTime", .onfocus = "odtInpBuyMaxTime_onfocus()", .onblur = "odtInpBuyMaxTime_onblur()", .onkeydown = "return odtInpBuyMaxTime_onkeydown(event.keyCode,event.which)", .style = "width:82px"}).HtmlAttributes(New With {.style = "width:98px"})%>
                        </div>
                    </div>
                    <div class="xW_DivInputGrid">
                        <select id="ocbInpGetCond" class="xW_InputWidthCond09 xW_InputGetCond" onkeydown="return ocbInpGetCond_onkeydown(event.keyCode,event.which)" onfocus="return ocbInpGetCond_onfocus()" onblur="return ocbInpGetCond_onblur()" onchange="return ocbInpGetCond_onchange()"></select>
                    </div>
                    <div class="xW_DivInputGrid">
                        <input id="otbInpGetValue" type="text" class="xW_InputWidthCond10" onkeydown="return otbInpGetValue_onkeydown(event.keyCode,event.which)" onkeypress="return otbInpGetValue_onkeypress(event.keyCode,event.which)" onfocus="return otbInpGetValue_onfocus()" onblur="return otbInpGetValue_onblur()" onkeyup="return otbInpGetValue_onkeyup()" />
                    </div>
                    <div class="xW_DivInputGrid">
                        <input id="otbInpGetQty" 
                            onkeydown="otbInpGetQty_onkeydown(event.keyCode,event.which);"
                            type="text" 
                            class="xW_InputWidthCond11" onkeypress="return otbInpGetQty_onkeypress(event.keyCode,event.which)" onfocus="return otbInpGetQty_onfocus()" onblur="return otbInpGetQty_onblur()" />
                    </div>
                    <div class="xW_DivInputGrid">
                        <input type="text" class="xW_InputWidthCond12 xCN_AllReadOnlyBGColor" readonly="readonly" />
                    </div>
                </div>
            </div>
            <div class="xW_DivComment" style="color:Purple">
                <label><%=ViewData("olaShortcutKey") %></label>&nbsp;&nbsp;&nbsp;
                <%--<label><%=ViewData("olaComment") %></label>--%>
            </div>
           
        </div>
        
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
    <link type="text/css" rel="Stylesheet" href="<%=Url.Content("~/Content/AdaCss/Local/FCS_cvcTCNTPdtPmtHD.css") %>"/>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J002_General.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J003_SplashDialog.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J004_LoadTransactionMenu.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J009_ShowTab.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J010_ShowTabData.js") %>"></script>
    <script type="text/javascript">
        //--------- ตัวแปรกลาง ---------
        var nW_StaPrcDoc = 0;
        var nW_StaDocCancel = 0;
        var nW_StaDoc = 0;
        var tW_PdtCodeBeFore;
        var tW_Menu = 'omnMngPmt';
        var nW_DecLength = '<%=Session("nVB_CNDecAmtForShw") %>';
        var tW_Controller = "cvcTCNTPmtHD";
        var tW_BeforeEditData = '';
        //var tW_TabID; //*CH 01-12-11 เก็บ IDtab การกรองสินค้า
        //var tW_TabID2; //*CH 05-04-12 IDtab ที่ 2 ยี่ห้อ แฟชั่น กำหนดช่วง
        //var tW_TabIDPdt; //*CH 05-04-12
        //--------- ตัวแปรกลาง ---------

        function W_CHKnValPmhCstNum(oEvent) {
            if (oEvent.newValue == null) {
                //oEvent.newValue = 0;
                //return oEvent
                //document.getElementById('otbFNPmhCstNum').value = 0;
                //document.getElementById('otbFNPmhCstNum').Value = 0;
            } else {
                //document.getElementById('otbFNPmhCstNum').value = 0;
                //tbyid = document.getElementById('otbFNPmhCstNum').value;// = 0;
                //oEvent.newValue = 0;
            }
        }
        
        function W_SETxActiveTabInsertPdt(ptTabIndex) {
            try {
                J010_SHWxTabData(ptTabIndex, 'odiPdt', 'odiSpl', 'odiBuyer', 'odiPdtGrp', 'odiActive'); //*CH 01-12-11 Old //*CH 09-04-2012 เปิดใช้งาน RQ1203-026
                //SHWxTabData(ptTabIndex, 'odiPdt', 'odiSpl', 'odiBuyer', 'odiPdtGrp', 'odiActive'); //*CH 01-12-11 New Get TabID
                J009_SHWxTabTop(ptTabIndex, 'odiTopicPdt', 'odiTopicSpl', 'odiTopicBuyer', 'odiTopicPdtGrp', 'odiTopicActive');
            }
            catch (ex) {
                J002_SHWxMsgError("W_SETxActiveTabInsertPdt", ex);
            }
        }
        /*function SHWxTabData(pnTabNo, ptTab0, ptTab1, ptTab2, ptTab3, ptTab4, ptTab5, ptTab6, ptTab7, ptTab8, ptTab9) {
            var tName = "";
            if (ptTab0 != undefined) tName += ptTab0;
            if (ptTab1 != undefined) tName += ";" + ptTab1;
            if (ptTab2 != undefined) tName += ";" + ptTab2;
            if (ptTab3 != undefined) tName += ";" + ptTab3;
            if (ptTab4 != undefined) tName += ";" + ptTab4;
            if (ptTab5 != undefined) tName += ";" + ptTab5;
            if (ptTab6 != undefined) tName += ";" + ptTab6;
            if (ptTab7 != undefined) tName += ";" + ptTab7;
            if (ptTab8 != undefined) tName += ";" + ptTab8;
            if (ptTab9 != undefined) tName += ";" + ptTab9;
            var tName_array = tName.split(";");

            for (nI = 0; nI < pnTabNo; nI++) {
                document.getElementById(tName_array[nI]).style.display = "none";
            }
            document.getElementById(tName_array[pnTabNo]).style.display = "block";
            tW_TabID = document.getElementById(tName_array[pnTabNo]).id;
            //For test *CH 05-04-12
            //alert("Tab1 / " + tW_TabID);
            for (nI = pnTabNo + 1; nI < tName_array.length; nI++) {
                document.getElementById(tName_array[nI]).style.display = "none";
            }
        }*/
        //*CH 05-04-12 สำหรับการกรองสินค้าใน Tab ที่2
        /*function SHWxTabData2(pnTabNo, ptTab0, ptTab1, ptTab2, ptTab3, ptTab4, ptTab5, ptTab6, ptTab7, ptTab8, ptTab9) {
            var tName = "";
            if (ptTab0 != undefined) tName += ptTab0;
            if (ptTab1 != undefined) tName += ";" + ptTab1;
            if (ptTab2 != undefined) tName += ";" + ptTab2;
            if (ptTab3 != undefined) tName += ";" + ptTab3;
            if (ptTab4 != undefined) tName += ";" + ptTab4;
            if (ptTab5 != undefined) tName += ";" + ptTab5;
            if (ptTab6 != undefined) tName += ";" + ptTab6;
            if (ptTab7 != undefined) tName += ";" + ptTab7;
            if (ptTab8 != undefined) tName += ";" + ptTab8;
            if (ptTab9 != undefined) tName += ";" + ptTab9;
            var tName_array = tName.split(";");

            for (nI = 0; nI < pnTabNo; nI++) {
                document.getElementById(tName_array[nI]).style.display = "none";
            }
            document.getElementById(tName_array[pnTabNo]).style.display = "block";
            tW_TabID2 = document.getElementById(tName_array[pnTabNo]).id;
            //For test *CH 05-04-12
            //alert("Tab2 / " + tW_TabID2);
            for (nI = pnTabNo + 1; nI < tName_array.length; nI++) {
                document.getElementById(tName_array[nI]).style.display = "none";
            }
        }*/
        function W_SETxActiveTabInsertPdt2(ptTabIndex) {
            try {
                var tUseRange = document.getElementById('otbCfgFTSpmStaUseRange').value;
                if (ptTabIndex == '2' && tUseRange != '1' && tUseRange != '2') {
                    return false;
                }
                J010_SHWxTabData(ptTabIndex, 'odiBrand', 'odiFasion', 'odiRange'); //*CH 09-04-2012 ปิดใช้งาน 
                //SHWxTabData2(ptTabIndex, 'odiBrand', 'odiFasion', 'odiRange'); //*CH 03-04-12 RQ1203-026
                J009_SHWxTabTop(ptTabIndex, 'odiTopicBrand', 'odiTopicFasion', 'odiTopicRange');
                if ('<%=Session("tVB_CNHpmOrFsh") %>' == '' || '<%=Session("tVB_CNHpmOrFsh") %>'.toUpperCase() == 'Hpm'.toUpperCase()) {
                    document.getElementById('odiFasion').style.display = 'none';
                    document.getElementById('odiTopicFasion').style.display = 'none';
                }
            }
            catch (ex) {
                J002_SHWxMsgError("W_SETxActiveTabInsertPdt2", ex);
            }
        }
        function W_SETxActiveTabInsertPdtGrp(ptTabIndex) {
            try {
                J010_SHWxTabDataGrp(ptTabIndex, 'odiTabDataGrp1', 'odiTabDataGrp2');
                J009_SHWxTabNumGrp(ptTabIndex, 'odiTopicGrpNum1', 'odiTopicGrpNum2');
                J009_SHWxTabTopicGrp(ptTabIndex, 'odiTopicGrp1', 'odiTopicGrp2');
                //tW_TabIDPdt = ptTabIndex; //*CH 05-04-12 //*CH 09-04-2012 RQ1203-026
            }
            catch (ex) {
                J002_SHWxMsgError("W_SETxActiveTabInsertPdtGrp", ex);
            }
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
                if (tStaChange == true){
                    var tDialogResult = J003_SHWxConfirmDialog('<%=ViewData("tMsgSave_Warning") %>', oJ003_DialogType.DialogYesNoCancel);
                    switch(tDialogResult) {
                        case oJ003_DialogResult.Yes : 
                            var bComplete = W_DATxSaveDocument(true); 
                            if (bComplete==false){
                                return false;
                            }
                            break;
                        case oJ003_DialogResult.Cancel : return false; break;
                    }
                }
                var tDate = J002_GETtTimeStamp();
                J004_FRMxNewDoc(tDate, 'Index?ptAuthorRead=1', tW_Controller);
            }
            catch (ex) {
                J002_SHWxMsgError("W_FRMxNewDoc", ex);
            }
            finally {
                J003_DISxWaiting();
            }
        }
        function W_FRMxFindDoc() {
            try {
                J003_SHWxWaiting();
                //----- ตรวจสอบสิทธิการใช้งานก่อน เผื่อ Session หมดอายุไปแล้ว ----- *CH 26-12-11
                var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Approve%>';
                var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
                var tPwdAllow = '<%=Session("bVB_CNPwdAllow") %>';
                var aAlwUsrCode = new Array();
                var bAllow = J002_CHKtCheckAuthorize(tW_Menu, tAuthor, tPwdAllow, tMsgNotAuthorize, aAlwUsrCode);
                var tApvCode = aAlwUsrCode[0];
                if (bAllow == false) {
                    return false;
                }
                //-----------------------------------------------------
                var tDialogResult = oJ003_DialogResult.Yes;
                var tStaChange = W_CHKbHasChangeData();
                if (tStaChange == true) {
                    tDialogResult = J003_SHWxConfirmDialog('<%=ViewData("tMsgSave_Warning") %>', oJ003_DialogType.DialogYesNoCancel);
                    
                    switch (tDialogResult) {
                        case oJ003_DialogResult.Yes: W_DATxSaveDocument(true); break;
                        case oJ003_DialogResult.Cancel: return false; break;
                    }
                }
                var tdate = J002_GETtTimeStamp();
                J004_FRMxFindDoc('TCNTPmtHD', tdate, 'C_BRWoDoc', tW_Controller, 'otbFTPmhCode', '2');
                if (tDialogResult == oJ003_DialogResult.Yes || tDialogResult == oJ003_DialogResult.No) {
                    var tDocNo = document.getElementById("otbFTPmhCode").value;
                    var tDocNoOld = document.getElementById("otbFTPmhCodeOld").value;
                    var tUrl = '';  
                    tUrl += '<%=Url.Action("Index","cvcTCNTPmtHD") %>'+'?ptDocNo=' + tDocNo + '&ptAuthorRead=1';
                    //if (tDocNo != tDocNoOld) { //*CH 01-12-11 เพื่อให้เรียกเอกสารเดิมโหลดข้อมูลมาใหม่
                        window.location = tUrl;
                    //}
                }
            }
            catch (ex) {
                J002_SHWxMsgError('W_FRMxFindDoc', ex);
            }
            finally {
                J003_DISxWaiting();
            }
        }
        function W_FRMxHelpDoc() {
            
//            W_GETxPmtStatus();
//            document.getElementById('oahGridPdt').focus();
//            var tInput = prompt("", "");
//            document.getElementById('otbCfgFTSpmStaUseRange').value = tInput;
//            W_SETxPmtObject();
        }

        //ptFlag 1 ไปรายการโปรด ; 2 ไปหน้าโปรโมชั่น
        function W_FRMxCloseDoc(ptFlag) {
            var tDialogResult = oJ003_DialogResult.Yes;
            var tStaChange = W_CHKbHasChangeData();
            if (tStaChange == true) {
                tDialogResult = J003_SHWxConfirmDialog('<%=ViewData("tMsgSave_Warning") %>', oJ003_DialogType.DialogYesNoCancel);
                switch (tDialogResult) {
                    case oJ003_DialogResult.Yes: W_DATxSaveDocument(true); break;
                    case oJ003_DialogResult.Cancel: return false; break;
                }
            }
            var tUrl;
            if (ptFlag == '1') {
                tUrl = '<%=Url.Action("Index","Home") %>';
            } else {
                tUrl = '<%=Url.Action("Index","cvcCNPanal") %>?ptMenuGrpName=Promotion'; 
            } 
            window.location = tUrl;
        }
        function W_CHKbPromotionDate() {
            try {
                var tDateFrom = document.getElementById('odtFDPmhDStart').value;
                var tDateTo = document.getElementById('odtFDPmhDStop').value;
                tDateFrom = J002_CONtDateTime(tDateFrom);
                tDateTo = J002_CONtDateTime(tDateTo);
                if (tDateFrom > tDateTo) {
                    return false;
                }
                return true;
            }
            catch (ex) {
                J002_SHWxMsgError('W_CHKbPromotionDate', ex);
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
                    return false;
                }
                if (W_CHKbPostOrDelStatus() == true) {
                    alert('<%=ViewData("olatMsgNoEdit")%>');
                    return false
                }
                if (J002_CHKbIsBlankValue("otbFTPmhCode") == true) {
                    alert('<%=ViewData("olatMsgErrorData") %>');
                    return false;
                }
                if (J002_CHKbIsBlankValue('otbFTPmhName') == true) {
                    alert('<%=ViewData("olatMsgErrorData") %>');
                    return false;
                }
                if (J002_CHKbIsBlankValue('otbFTPmhNameSlip') == true) {
                    alert('<%=ViewData("olatMsgErrorData") %>');
                    return false;
                }
                if (J002_CHKbIsBlankValue('otbFTPmhBchTo') == true && J002_CHKbIsBlankValue('otbFTPmhZneTo') == true) {
                    alert('<%=ViewData("tMsgNoBchOrZone") %>');
                    return false;
                }
                if (W_CHKbPromotionDate() == false) {
                    alert('<%=ViewData("tMsgIncorrectDatePmt") %>')
                    return false;
                }
                if (W_GETtDataCount() < 1) {
                    alert('<%=ViewData("olatMsgDoc_Empty") %>');
                    return false;
                }

                var bAutoDocNo = document.getElementById("otbFTPmhCode").readOnly;
                if (bAutoDocNo == false) {
                    var tDocNo = document.getElementById("otbFTPmhCode").value;
                    if (W_CHKtHasDocNo(tDocNo) == true) {
                        if (!confirm('<%=ViewData("tMsgCodeHasUsed") %>')) {
                            return false;
                        }
                        document.getElementById("otbFTPmhCode").value = '<%=ViewData("DocNoFormat") %>';
                        J002_SETxReadOnly("otbFTPmhCode", true);
                    }
                }
                var tUrl = '<%= Url.Action("C_DATxSaveDocument", "cvcTCNTPmtHD") %>';
                var tPostData = W_GETtPostData();
                var aPostData = tPostData.split("|"); //*CH 01-12-11 ใช้เช็คดู Error
                if (aPostData[0] != "") {
                    alert(aPostData[0]);
                    J010_SHWxTabData(3, 'odiTime', 'odiAlw', 'odiMember', 'odiSupplier');
                    J009_SHWxTabTop(3, 'odiToppicTime', 'odiToppicAlw', 'odiToppicMember', 'odiToppicSupplier')
                    return false;
                }
                
                var oXmlHttp = J002_GEToXMLHttpRequest();
                oXmlHttp.open('Post', encodeURI(tUrl), false);
                oXmlHttp.setRequestHeader ( "Content-type", "application/x-www-form-urlencoded" );
                //oXmlHttp.send(tPostData); //*CH 01-12-11 Old
                oXmlHttp.send(aPostData[1]);
                var tResult = oXmlHttp.responseText;
                var oArr = tResult.split('|');
                if (oArr[0] != null && oArr[0] != "") {
                    alert(oArr[0]);
                    return false;
                }
                if (pbNoReload != true) {
                    W_LODxReloadData(oArr[1]);
                }
             
                return true;
            }
            catch (ex) {
                J002_SHWxMsgError("W_DATxSaveDocument", ex);
            }
            finally {
                J003_DISxWaiting();
            }
        }
        function W_LODxReloadData(ptDocNo) {
            if (ptDocNo == null || ptDocNo == '' || ptDocNo == '<%=ViewData("DocNoFormat") %>') {
                return false;
            }
            var tUrl = '';
            tUrl += '<%=Url.Action("Index","cvcTCNTPmtHD") %>' + '?ptDocNo=' + ptDocNo + '&ptAuthorRead=1';
            window.location = tUrl;
        }
        function W_GETtDataCount() {
            var oXmlHttp = J002_GEToXMLHttpRequest();
            var tDataTimeNow = J002_GETtTimeStamp();
            var tUrl ='<%=Url.Action("C_GETtDataCount","cvcTCNTPmtHD") %>' + "?ptDateTimeNow=" + tDataTimeNow;
            oXmlHttp.open("GET", encodeURI(tUrl), false);
            oXmlHttp.send(null);
            return oXmlHttp.responseText; //return จำนวนรายการสินค้า ใน Grid
        }
        function W_CHKbPostOrDelStatus() {
            return (nW_StaDocCancel == 1 || nW_StaPrcDoc == 1)
        }
        function W_GETtPostData() {
            var tReturn = '';
            var tPmhStaLimit = document.getElementById('ocbFTPmhStaLimit').value;
            var tPmhStaLimitCst = document.getElementById('ocbFTPmhStaLimitCst').value;

            try {
                //*CH 01-12-11 รับค่าจาก Telerik.IntegerTextBox
                var nPmhLimitNum = document.getElementById('otbFNPmhLimitNum').value;
                var nPmhCstNum = document.getElementById('otbFNPmhCstNum').value;
                var nPmhCstDobNum = document.getElementById('otbFNPmhCstDobNum').value;
                var nPmhCstDobPrev = document.getElementById('otbFNPmhCstDobPrev').value;
                var nPmhCstDobNext = document.getElementById('otbFNPmhCstDobNext').value;
                
                //*CH 01-12-11 รับวันที่จาก Telerik
                var tSplCode = document.getElementById('otbFTSplCode').value;
                var dPntSplDStart = J002_CONtDateTime(document.getElementById('odtFDPntSplDStart').value);
                var dPntSplDExpired = J002_CONtDateTime(document.getElementById('odtFDPntSplDExpired').value);

                var tErr;
                if ((dPntSplDExpired < dPntSplDStart) && (tSplCode != "")) {
                    tErr = '<%=ViewData("ovd_tMsgdExLessdSt")%>';
                    tReturn += tErr + "|";
                    return tReturn;
                }

                var tUsedRange = document.getElementById('otbCfgFTSpmStaUseRange').value;
                tReturn += '|';
                tReturn += 'FTBchCode='+ document.getElementById('otbFTBchCode').value;
                tReturn += '&FTPmhCode='+ document.getElementById('otbFTPmhCode').value;
                tReturn += '&FTPmhName='+ document.getElementById('otbFTPmhName').value;
                tReturn += '&FTPmhNameSlip='+ document.getElementById('otbFTPmhNameSlip').value;
                tReturn += '&FTSpmCode=' + document.getElementById('otbFTSpmCode').value;
                tReturn += '&FTSpmType=' + document.getElementById('otbFTSpmType').value;
                tReturn += '&FDPmhDStart=' + J002_CONtDateTime(document.getElementById('odtFDPmhDStart').value);
                tReturn += '&FDPmhDStop=' + J002_CONtDateTime(document.getElementById('odtFDPmhDStop').value);
                tReturn += '&FDPmhTStart=' + document.getElementById('odtFDPmhTStart').value;
                tReturn += '&FDPmhTStop=' + document.getElementById('odtFDPmhTStop').value;
                tReturn += '&FTPmhClosed=' + (document.getElementById('otbFTPmhClosed').value == '1' ? '1' : '0');
                tReturn += '&FTPmhStatus=' + '2';
                tReturn += '&FTPmhRetOrWhs=' + document.getElementById('ocbFTPmhRetOrWhs').value;
                tReturn += '&FTPmhRmk=' + document.getElementById('otbFTPmhRmk').value;
                tReturn += '&FTPmhStaPrcDoc=' + '';
                tReturn += '&FNPmhStaAct=' + document.getElementById('otbFNPmhStaAct').value;
                tReturn += '&FTDptCode=' + document.getElementById('otbFTDptCode').value;
                tReturn += '&FTUsrCode=' + document.getElementById('otbFTUsrCode').value;
                tReturn += '&FTPmhApvCode=' + document.getElementById('otbFTPmhApvCode').value;
                tReturn += '&FTPmhBchTo=' + document.getElementById('otbFTPmhBchTo').value;
                tReturn += '&FTPmhZneTo=' + document.getElementById('otbFTPmhZneTo').value;
                tReturn += '&FTPmhStaExceptPmt=' + (document.getElementById('ockFTSpmStaExceptPmt').checked == true ? '2' : '1');
                tReturn += '&FTSpmStaRcvFree=' + (document.getElementById('ockFTSpmStaRcvFree').checked == true ? '1' : '2');
                tReturn += '&FTSpmStaAlwOffline=' + (document.getElementById('ockFTSpmStaAlwOffline').checked == true ? '1' : '2');
                tReturn += '&FTSpmStaChkLimitGet=' + (document.getElementById('ockFTSpmStaChkLimitGet').checked == true ? '1' : '2');

                //tReturn += '&FNPmhLimitNum=' + document.getElementById('otbFNPmhLimitNum').value; //*CH 01-12-11 Old
                if ((parseFloat(nPmhLimitNum) == parseInt(nPmhLimitNum)) && !isNaN(nPmhLimitNum)) {
                    tReturn += '&FNPmhLimitNum=' + nPmhLimitNum;
                } else {
                    tReturn += '&FNPmhLimitNum=1';
                }
                
                tReturn += '&FTPmhStaLimit=' + tPmhStaLimit;
                tReturn += '&FTPmhStaLimitCst=' + tPmhStaLimitCst;
                tReturn += '&FTSpmStaChkCst=' + (document.getElementById('ockFTSpmStaChkCst').checked == true ? '1' : '2');

                //tReturn += '&FNPmhCstNum=' + document.getElementById('otbFNPmhCstNum').value;
                //สำหรับสมาชิก ให้แต้ม x เท่า
                if ((parseFloat(nPmhCstNum) == parseInt(nPmhCstNum)) && !isNaN(nPmhCstNum)) {
                    tReturn += '&FNPmhCstNum=' + nPmhCstNum;
                } else {
                    tReturn += '&FNPmhCstNum=1';
                }
                
                tReturn += '&FTSpmStaChkCstDOB=' + (document.getElementById('ockFTSpmStaChkCstDOB').checked == true ? '1' : '2');

                //tReturn += '&FNPmhCstDobNum=' + document.getElementById('otbFNPmhCstDobNum').value;
                //สำหรับสมาชิกตรงกลับเดือนเกิด ให้แต้ม x เท่า
                if ((parseFloat(nPmhCstDobNum) == parseInt(nPmhCstDobNum)) && !isNaN(nPmhCstDobNum)) {
                    tReturn += '&FNPmhCstDobNum=' + nPmhCstDobNum;
                } else {
                    tReturn += '&FNPmhCstDobNum=1';
                }
                
                //tReturn += '&FNPmhCstDobPrev=' + document.getElementById('otbFNPmhCstDobPrev').value;
                if ((parseFloat(nPmhCstDobPrev) == parseInt(nPmhCstDobPrev)) && !isNaN(nPmhCstDobPrev)) {
                    tReturn += '&FNPmhCstDobPrev=' + nPmhCstDobPrev;
                } else {
                    tReturn += '&FNPmhCstDobPrev=0';
                }
                
                //tReturn += '&FNPmhCstDobNext=' + document.getElementById('otbFNPmhCstDobNext').value;
                if ((parseFloat(nPmhCstDobNext) == parseInt(nPmhCstDobNext)) && !isNaN(nPmhCstDobNext)) {
                    tReturn += '&FNPmhCstDobNext=' + nPmhCstDobNext;
                } else {
                    tReturn += '&FNPmhCstDobNext=0';
                }
                
                tReturn += '&FTSpmStaUseRange=' + (tUsedRange.length < 1 || tUsedRange == null ? '3' : tUsedRange);
                tReturn += '&FTSplCode=' + document.getElementById('otbFTSplCode').value;
                tReturn += '&FTSplName=' + document.getElementById('otbFTSplName').value;
                tReturn += '&FDPntSplStart=' + J002_CONtDateTime(document.getElementById('odtFDPntSplDStart').value);
                tReturn += '&FDPntSplExpired=' + J002_CONtDateTime(document.getElementById('odtFDPntSplDExpired').value);

                return tReturn;
            }
            catch (ex) {
                J002_SHWxMsgError('W_GETtPostData', ex);
            }
        }
        function W_DATxBrowseMaster(ptObjCode, ptObjName, ptCase) {
            try {
                J003_SHWxWaiting();
                var tDate = J002_GETtTimeStamp();
                var tWhere = "";
                if (ptCase == 'TCNMBranch') {
                    var tZneTo =document.getElementById('otbFTPmhZneTo').value;
                    if (tZneTo != null && tZneTo != '') {
                        tWhere = "FTZneCode='" + tZneTo + "'";
                    }
                }
                var tUrl = '<%=Url.Action("C_BRWxMaster","cvcTCNTPmtHD") %>';
                var tReturnedValue = showModalDialog(tUrl+'?ptCase=' + ptCase + '&ptWhere='+ tWhere + '&ptDate=' + tDate, "Passed String", "dialogWidth:800px; dialogHeight:500px; status:no; center:yes;titlebar =0");
                if (tReturnedValue != null) {
                    if (tReturnedValue != '12233344445555566666677777778888888899999999900000000001223334444555556666667777777888888889999999990000000000') {
                        document.getElementById(ptObjCode).value = tReturnedValue.split(";")[0];
                        if (ptObjName != null && ptObjName != '') {
                            document.getElementById(ptObjName).value = tReturnedValue.split(";")[1];
                        }
                        if (ptObjCode == 'otbBuyerFrom' && J002_CHKbIsBlankValue('otbBuyerTo')==true) {
                            document.getElementById('otbBuyerTo').value = tReturnedValue.split(";")[0];
                        }
                        if (ptObjCode == 'otbSplFrom' && J002_CHKbIsBlankValue('otbSplTo') == true) {
                            document.getElementById('otbSplTo').value = tReturnedValue.split(";")[0];
                        }
                        if (ptObjCode == 'otbBrandFrom' && J002_CHKbIsBlankValue('otbBrandTo') == true) {
                            document.getElementById('otbBrandTo').value = tReturnedValue.split(";")[0];
                        }
                        if (ptCase == 'TSysPmtConfig') {//*CH 21-02-2013 Tooltip
                            $("#" + ptObjName).attr({ title: $("#" + ptObjName).val() });
                        }
                        //*CH 09-07-2012 ไม่กำหนด Defalut ส่งรหัสผู้จำหน่ายในหน้ากรอง //*RQ1203-026
                        //*CH 30-11-11 ส่งรหัสผู้จำหน่ายในการกรองข้อมูลสินค้า
                        //if (ptObjCode == 'otbFTSplCode') {
                        //    document.getElementById('otbSplFrom').value = tReturnedValue.split(";")[0];
                        //    document.getElementById('otbSplTo').value = tReturnedValue.split(";")[0];
                        //}
                    }
                }
            }
            catch (ex) {
                J002_SHWxMsgError('W_DATxBrowseMaster', ex);
            }
            finally {
                J003_DISxWaiting();
            }
        }
        function W_DATxBrowsePmtType() {
            try {
                var tSpmCodeOld = document.getElementById('otbFTSpmCode').value;
                W_DATxBrowseMaster('otbFTSpmCode', 'otbFTSpmName', 'TSysPmtConfig');
                var tSpmCode = document.getElementById('otbFTSpmCode').value;
                if(tSpmCode == tSpmCodeOld){
                    return false;
                }
                var tCount = W_GETtDataCount();
                if (tCount > 0 ) {
                    //document.getElementById('otbFTSpmCode').value = tSpmCodeOld; //เพื่อไม่ให้เค้า event onblur ตอนแสดง message confirm
                    bConfirm = confirm('<%= ViewData("tMsgConfirmChangePmt") %>');
                    if (bConfirm == true) {
                        W_CLRxDataDTAndCD();
                        W_CLRxClearCondInput();
                    }
                    else {
                        document.getElementById('otbFTSpmCode').value = tSpmCodeOld;
                        var tFedSpmName = '';
                        if ('<%=Session("tVB_LastLang") %>'.toUpperCase() == 'EN') {
                            tFedSpmName = 'FTSpmNameEng';
                        }
                        else {
                            tFedSpmName = 'FTSpmNameTha';
                        }
                        J002_GETxFieldName(tW_Controller, 'C_GETtFeildName', 'otbFTSpmCode', 'otbFTSpmName', 'otbFTSpmCodeOld', 'TSysPmtConfig', 'FTSpmCode', tFedSpmName, '<%=ViewData("tMsgDAT_Notfound001")%>' + '<%=ViewData("olaPmtType")%>');
                        return false;
                    }
                }
                W_GETxPmtConfig();
                W_SETxPmtObject();
            }
            catch (ex) {
                J002_SHWxMsgError('W_DATxBrowsePmtType', ex);
            }
        }
        function W_GETxPmtConfig() {
            try {
                var oXmlHttp = J002_GEToXMLHttpRequest();
                var tDate = J002_GETtTimeStamp();
                var tPmtCode = document.getElementById("otbFTSpmCode").value;
                var tUrl = '<%=Url.Action("C_GETtPmtConfig","cvcTCNTPmtHD") %>';
                tUrl += '?ptDate=' + tDate;
                tUrl += '&ptPmtCode=' + tPmtCode;
                oXmlHttp.open("Get", encodeURI(tUrl), false);
                oXmlHttp.send(null);
                if (oXmlHttp.status != 200){
                    alert('Error' + oXmlHttp.status + '\n' + oXmlHttp.responseText);
                    return false;
                }
                var aArr = oXmlHttp.responseText.split("|");
                if (aArr[0] != null && aArr[0] != '') {
                    alert(aArr[0]);
                    return false;
                }
                document.getElementById('otbCfgFTSpmType').value = aArr[1];
                document.getElementById('otbCfgFTSpmStaGrpBuy').value = aArr[2];
                document.getElementById('otbCfgFTSpmStaBuy').value = aArr[3];
                document.getElementById('otbCfgFTSpmStaGrpRcv').value = aArr[4];
                document.getElementById('otbCfgFTSpmStaRcv').value = aArr[5];
                document.getElementById('otbCfgFTSpmStaGrpBoth').value = aArr[6];
                document.getElementById('otbCfgFTSpmStaGrpReject').value = aArr[7];
                document.getElementById('otbCfgFTSpmStaAllPdt').value = aArr[8];
                document.getElementById('otbCfgFTSpmStaExceptPmt').value = aArr[9];
                document.getElementById('otbCfgFTSpmStaGetNewPri').value = aArr[10];
                document.getElementById('otbCfgFTSpmStaGetDisAmt').value = aArr[11];
                document.getElementById('otbCfgFTSpmStaGetDisPer').value = aArr[12];
                document.getElementById('otbCfgFTSpmStaGetPoint').value = aArr[13];
                document.getElementById('otbCfgFTSpmStaRcvFree').value = aArr[14];
                document.getElementById('otbCfgFTSpmStaAlwOffline').value = aArr[15];
                document.getElementById('otbCfgFTSpmStaChkLimitGet').value = aArr[16];
                document.getElementById('otbCfgFTSpmStaChkCst').value = aArr[17];
                document.getElementById('otbCfgFTSpmStaChkCstDOB').value = aArr[18];
                document.getElementById('otbCfgFTSpmStaUseRange').value = aArr[19];
                document.getElementById('otbCfgFNSpmLimitGrpRcv').value = aArr[20];
                document.getElementById('otbFTSpmType').value = aArr[1];
                return true;                
            }
            catch (ex) {
                J002_SHWxMsgError('W_GETxPmtConfig', ex);
            }
        }
        function W_SETxPmtObject() {
            try {
                if (document.getElementById('otbCfgFTSpmStaGrpBuy').value == '1') {
                    document.getElementById('orbFTSpmStaGrpBuy').disabled = false;
                }
                else {
                    document.getElementById('orbFTSpmStaGrpBuy').disabled = true;
                }
                if (document.getElementById('otbCfgFTSpmStaGrpRcv').value == '1') {
                    document.getElementById('orbFTSpmStaGrpRcv').disabled = false;
                }
                else {
                    document.getElementById('orbFTSpmStaGrpRcv').disabled = true;
                }
                if (document.getElementById('otbCfgFTSpmStaGrpBoth').value == '1') {
                    document.getElementById('orbFTSpmStaGrpBoth').disabled = false;
                }
                else {
                    document.getElementById('orbFTSpmStaGrpBoth').disabled = true;
                }
                if (document.getElementById('otbCfgFTSpmStaGrpReject').value == '1') {
                    document.getElementById('orbFTSpmStaGrpReject').disabled = false;
                }
                else {
                    document.getElementById('orbFTSpmStaGrpReject').disabled = true;
                }
                W_SETxDefaultPmtProductGrp()

                if (document.getElementById('otbCfgFTSpmStaAllPdt').value == '1') {
                    document.getElementById('ockFTSpmStaAllPdt').disabled = false;
                }
                else {
                    document.getElementById('ockFTSpmStaAllPdt').disabled = true;
                }
                if (document.getElementById('otbCfgFTSpmStaExceptPmt').value == '1') {
                    document.getElementById('ockFTSpmStaExceptPmt').disabled = false;
                }
                else {
                    document.getElementById('ockFTSpmStaExceptPmt').disabled = true;
                }
                if (document.getElementById('otbCfgFTSpmStaRcvFree').value == '1') {
                    document.getElementById('ockFTSpmStaRcvFree').disabled = false;
                }
                else {
                    document.getElementById('ockFTSpmStaRcvFree').disabled = true;
                }
                if (document.getElementById('otbCfgFTSpmStaAlwOffline').value == '1') {
                    document.getElementById('ockFTSpmStaAlwOffline').disabled = false;
                }
                else {
                    document.getElementById('ockFTSpmStaAlwOffline').disabled = true;
                }
                if (document.getElementById('otbCfgFTSpmStaChkLimitGet').value == '1') {
                    document.getElementById('ockFTSpmStaChkLimitGet').disabled = false;
                    document.getElementById('ocbFTPmhStaLimit').disabled = false;
                    document.getElementById('ocbFTPmhStaLimitCst').disabled = false;
                }
                else {
                    document.getElementById('ockFTSpmStaChkLimitGet').disabled = true;
                    document.getElementById('ocbFTPmhStaLimit').disabled = true;
                    document.getElementById('ocbFTPmhStaLimitCst').disabled = true;
                }
                if (document.getElementById('otbCfgFTSpmStaChkCst').value == '1') {
                    document.getElementById('ockFTSpmStaChkCst').disabled = false;
                }
                else {
                    document.getElementById('ockFTSpmStaChkCst').disabled = true;
                }
                if (document.getElementById('otbCfgFTSpmStaChkCstDOB').value == '1') {
                    document.getElementById('ockFTSpmStaChkCstDOB').disabled = false;
                }
                else {
                    document.getElementById('ockFTSpmStaChkCstDOB').disabled = true;
                }
                if (document.getElementById('otbCfgFTSpmStaUseRange').value == '2') {
                    document.getElementById('odiRangeTimeSize').style.display = 'block';
                    document.getElementById('odiRangeTimeStart').style.display = 'block';
                    document.getElementById('odiRangeValueSize').style.display = 'none';
                    document.getElementById('odiRangeValueStart').style.display = 'none';
                }
                else {
                    document.getElementById('odiRangeTimeSize').style.display = 'none';
                    document.getElementById('odiRangeTimeStart').style.display = 'none';
                    document.getElementById('odiRangeValueSize').style.display = 'block';
                    document.getElementById('odiRangeValueStart').style.display = 'block';
                }
                if (document.getElementById('otbCfgFTSpmStaUseRange').value == '1' || document.getElementById('otbCfgFTSpmStaUseRange').value == '2') {
                    W_SETxActiveTabInsertPdtGrp(1);
                    W_SETxActiveTabInsertPdt(0);
                    W_SETxActiveTabInsertPdt2(2);
                }
                else {
                    W_SETxActiveTabInsertPdtGrp(0);
                    W_SETxActiveTabInsertPdt(0);
                    W_SETxActiveTabInsertPdt2(0);
                }
                return true;
            }
            catch (ex) {
                J002_SHWxMsgError('W_SETxPmtObject', ex);
            }
        }
        function W_SETxDefaultPmtProductGrp() {
            try{
                var aGrp = document.getElementsByName("orbPmtPdtGrp");
                var bChecked = false;
                var nLoop;
                for (nLoop = 0; nLoop < aGrp.length; nLoop++) {
                    if (aGrp[nLoop].disabled == false && bChecked == false) {
                        aGrp[nLoop].checked = true;
                        bChecked = true;
                    }
                    else {
                         aGrp[nLoop].checked = false;
                    }
                }
                W_SETxPmtProductGrp();
            }
            catch (ex) {
                J002_SHWxMsgError('W_SETxDefaultPmtProductGrp', ex);
            }
        }
        function W_SETxPmtProductGrp() {
            if (document.getElementById('orbFTSpmStaGrpBuy').checked == true) {
                document.getElementById('otbStaBuyGet').value = '1';
                return true;
            }
            if (document.getElementById('orbFTSpmStaGrpRcv').checked == true) {
                document.getElementById('otbStaBuyGet').value = '2';
                return true;
            }
            if (document.getElementById('orbFTSpmStaGrpBoth').checked == true) {
                document.getElementById('otbStaBuyGet').value = '3';
                return true;
            }
            document.getElementById('otbStaBuyGet').value = '';
        }
        function W_BRWxProduct(ptObjName){
            try {
                if (J002_CHKbIsBlankValue('otbFTSpmCode') == true) {
                    alert('<%=ViewData("tMsgNoSpmCode") %>');
                    return false;
                }
                var tDateTimeNow = J002_GETtTimeStamp();
                var tUrl = '<%=Url.Action("C_CNBrwPdt","cvcTCNTPmtHD") %>';
                tUrl += '?ptDate=' + tDateTimeNow + '&ptDocPosition=3';
                var ReturnedValue = showModalDialog(encodeURI(tUrl), "Passed String", "dialogWidth:850px; dialogHeight:550px; status:no; center:yes;titlebar =0;scroll=no");
                if (ReturnedValue == null || ReturnedValue == '12233344445555566666677777778888888899999999900000000001223334444555556666667777777888888889999999990000000000') {
                    return false;
                }
                document.getElementById(ptObjName).value = ReturnedValue;
                if (J002_STRttrim(document.getElementById('otbPdtTo').value) == '' && ptObjName =='otbPdtFrom') {
                    document.getElementById('otbPdtTo').value = ReturnedValue;
                }
//                if (document.getElementById("otbPdtCode").value != tW_PdtCodeBeFore) {
//                    document.getElementById('otbSeq').value = '';
//                }
//                else {
//                    return false;
//                }
            }
            catch (ex) {
                J002_SHWxMsgError('W_BRWxProduct', ex);
            }
        }
        function W_CHKbDataForAddPdt() {
            if (J002_CHKbIsBlankValue('otbFTSpmCode') == true) {
                alert('<%=ViewData("tMsgNoSpmCode") %>');
                return false;
            }
            if (J002_CHKbIsBlankValue("otbFTPmdGrpName") == true) {
                alert('<%=ViewData("tMsgNoPmdGrpName") %>');
                return false;
            }
        }
        function W_CHKbConditionForAddPdt() {
            if (document.getElementById("ockFTSpmStaAllPdt").checked == true && document.getElementById("ockFTSpmStaAllPdt").disabled == false) {
                return true;
            }
            if (J002_CHKbIsBlankValue('otbPdtFrom') == false) {
                return true;
            }
            if (J002_CHKbIsBlankValue("otbPdtTo") == false) {
                return true;
            }
            if (J002_CHKbIsBlankValue("otbSplFrom") == false) {
                return true;
            }
            if (J002_CHKbIsBlankValue("otbSplTo") == false) {
                return true;
            }
            if (J002_CHKbIsBlankValue("otbBuyerFrom") == false) {
                return true;
            }
            if (J002_CHKbIsBlankValue("otbBuyerTo") == false) {
                return true;
            }
            if (J002_CHKbIsBlankValue("otbPdtGrp") == false) {
                return true;
            }
            if (J002_CHKbIsBlankValue("otbDCS") == false) {
                return true;
            }
            if (J002_CHKbIsBlankValue("otbDCSd") == false) {
                return true;
            }
            if (J002_CHKbIsBlankValue("otbDCSc") == false) {
                return true;
            }
            if (J002_CHKbIsBlankValue("otbDCSs") == false) {
                return true;
            }
            if (J002_CHKbIsBlankValue("otbBrandFrom") == false) {
                return true;
            }
            if (J002_CHKbIsBlankValue("otbBrandTo") == false) {
                return true;
            }
            if (document.getElementById("orbUnUse").checked == false) {
                return true;
            }
            return false;
        }
        function W_GETtPdtDupUsePrev() {
            try {
                if (document.getElementById('ockDupUsePrev').checked == true) {
                    return '1';
                }
                return '0';
            }
            catch (ex) {
                J002_SHWxMsgError("W_GETtPdtDupUsePrev", ex);
            }
        }
        function W_GETtPmtGetCond() {
            try {
                var tPmcGetCond = "";
                if (document.getElementById('otbCfgFTSpmStaGetPoint').value == '1') {
                    tPmcGetCond = "4";
                }
                if (document.getElementById('otbCfgFTSpmStaGetNewPri').value == '1') {
                    tPmcGetCond = "3";
                }
                if (document.getElementById('otbCfgFTSpmStaGetDisPer').value == '1') {
                    tPmcGetCond = "2";
                }
                if (document.getElementById('otbCfgFTSpmStaGetDisAmt').value == '1') {
                    tPmcGetCond = "1";
                }
                return tPmcGetCond;
            }
            catch (ex) {
                J002_SHWxMsgError("W_GETtPmtGetCond", ex);
            }
        }
        function W_GETtStaAllPdt() {
            try {
                var tSpmStaAllPdt = "";
                if (document.getElementById('ockFTSpmStaAllPdt').checked == true && document.getElementById('ockFTSpmStaAllPdt').disabled == false) {
                    tSpmStaAllPdt = "1";
                }
                else {
                    tSpmStaAllPdt = "2";
                }
                return tSpmStaAllPdt;
            }
            catch (ex) {
                J002_SHWxMsgError("W_GETtStaAllPdt", ex);
            }
        }
        function W_GETtStaGrpCond() {
            try {
                var tPmcStaGrpCond = "";
                if (document.getElementById('orbFTSpmStaGrpBuy').checked == true) {
                    tPmcStaGrpCond = "1";
                }
                if (document.getElementById('orbFTSpmStaGrpRcv').checked == true) {
                    tPmcStaGrpCond = "2";
                }
                if (document.getElementById('orbFTSpmStaGrpBoth').checked == true) {
                    tPmcStaGrpCond = "3";
                }
                return tPmcStaGrpCond;
            }
            catch (ex) {
                J002_SHWxMsgError("W_GETtStaGrpCond", ex);
            }
        }
        function W_GETtGrpType() {
            try {
                var tPmdGrpType;
                if (document.getElementById('orbFTSpmStaGrpReject').checked == true) {
                    tPmdGrpType = '2';
                }
                else {
                    tPmdGrpType = '1';
                }
                return tPmdGrpType;
            }
            catch (ex) {
                J002_SHWxMsgError("W_GETtGrpType", ex);
            }
        }
        function W_GETtActivePdt() {
            try {
                var tActivePdt;
                if (document.getElementById('orbUnUse').checked == true) {
                    tActivePdt = '0';
                }
                else {
                    if (document.getElementById('orbActive').checked == true) {
                        tActivePdt = '1';
                    }
                    else {
                        tActivePdt = '2';
                    }
                }
                return tActivePdt;
            }
            catch (ex) {
                J002_SHWxMsgError("W_GETtActivePdt", ex);
            }
        }
        //function Check textbox as nothing //*CH 05-04-12
        function W_CHKbCondForAddPdt(ptObjName) {
            try {
                var tValue = $("#" + ptObjName).val();
                tValue = J002_STRttrim(tValue);
                if (tValue == null || tValue == '') {
                    alert('<%=ViewData("tMsgNoFilterCondition") %>');
                    return 'false';
                }
                return 'true';
            }
            catch (ex) {
                J002_SHWxMsgError("W_CHKbCondForAddPdt", ex);
            }
        }
        function W_DATxAddPdtToTable() {
            try {
                if (nW_StaPrcDoc == 1) {
                    return false;
                }
                if (W_CHKbDataForAddPdt() == false) {
                    return false;
                }
                if (W_CHKbConditionForAddPdt() == false) {
                    alert('<%=ViewData("tMsgNoFilterCondition") %>');
                    return false;
                }
                
                //----- *CH 01-12-11 เช็คว่าปัจจุบันอยู่Tabไหน เพื่อส่งข้อมูลกรองสินค้า -----
                var tPdtFrom = '';
                var tPdtTo = '';
                var tSplFrom = '';
                var tSplTo = '';
                var tBuyerFrom = '';
                var tBuyerTo = '';
                var tPgpChain = '';
                var tBrandFrom = '';
                var tBrandTo = '';
                /* CH 09-04-2012 RQ1203-026*/
                tPdtFrom = document.getElementById('otbPdtFrom').value;
                tPdtTo = document.getElementById('otbPdtTo').value;
                tSplFrom = document.getElementById('otbSplFrom').value;
                tSplTo = document.getElementById('otbSplTo').value;
                tSplFrom = document.getElementById('otbSplFrom').value;
                tSplTo = document.getElementById('otbSplTo').value;
                tBuyerFrom = document.getElementById('otbBuyerFrom').value;
                tBuyerTo = document.getElementById('otbBuyerTo').value;
                tPgpChain = document.getElementById('otbPdtGrp').value;
                tBrandFrom = document.getElementById('otbBrandFrom').value;
                tBrandTo = document.getElementById('otbBrandTo').value;
                

                //For test *CH 05-04-12
                //alert("TabID1 / " + tW_TabID + "\nTabID2 / " + tW_TabID2 + "\nTabPdt : " + tW_TabIDPdt);
                
                //*CH 05-04-12 เพิ่มเงื่อนไขว่า เลือกTab 1 หรือ 2
                /*if (tW_TabIDPdt == '0') {
                    if (tW_TabID == 'odiPdt') {
                        //*CH 05-04-12 เช็คว่ามีค่าว่างหรือไม่
                        if (W_CHKbCondForAddPdt('otbPdtFrom') == 'false') { return false; }
                        if (W_CHKbCondForAddPdt('otbPdtTo') == 'false') { return false; }
                        tPdtFrom = document.getElementById('otbPdtFrom').value;
                        tPdtTo = document.getElementById('otbPdtTo').value;

                    } else if (tW_TabID == 'odiSpl') {
                        //*CH 05-04-12 เช็คว่ามีค่าว่างหรือไม่
                        if (W_CHKbCondForAddPdt('otbSplFrom') == 'false') { return false; }
                        if (W_CHKbCondForAddPdt('otbSplTo') == 'false') { return false; }
                        tSplFrom = document.getElementById('otbSplFrom').value;
                        tSplTo = document.getElementById('otbSplTo').value;
                    } else if (tW_TabID == 'odiBuyer') {
                        //*CH 05-04-12 เช็คว่ามีค่าว่างหรือไม่
                        if (W_CHKbCondForAddPdt('otbBuyerFrom') == 'false') { return false; }
                        if (W_CHKbCondForAddPdt('otbBuyerTo') == 'false') { return false; }
                            tBuyerFrom = document.getElementById('otbBuyerFrom').value;
                        tBuyerTo = document.getElementById('otbBuyerTo').value;
                    } else if (tW_TabID == 'odiPdtGrp') {
                        //*CH 05-04-12 เช็คว่ามีค่าว่างหรือไม่
                        if (W_CHKbCondForAddPdt('otbPdtGrp') == 'false') { return false; }
                        tPgpChain = document.getElementById('otbPdtGrp').value;
                    }
                } else if (tW_TabIDPdt == '1') {
                    if (tW_TabID2 == 'odiBrand') { //*CH 03-04-12 RQ1203-026
                        //} else if (tW_TabID == 'odiActive') { //ผิด Tab *CH 03-04-12
                        //*CH 05-04-12 เช็คว่ามีค่าว่างหรือไม่
                        if (W_CHKbCondForAddPdt('otbBrandFrom') == 'false') { return false; }
                        if (W_CHKbCondForAddPdt('otbBrandTo') == 'false') { return false; }
                        tBrandFrom = document.getElementById('otbBrandFrom').value;
                        tBrandTo = document.getElementById('otbBrandTo').value;
                    }
                }*/
                //---------------------------------------------------------------
                
                var tDCS = document.getElementById('otbDCS').value;
                var tDCSd = document.getElementById('otbDCSd').value;
                var tDCSc = document.getElementById('otbDCSc').value;
                var tDCSs = document.getElementById('otbDCSs').value;
                var tSpmCode = document.getElementById('otbFTSpmCode').value;
                var tPmdGrpType = W_GETtGrpType();
                var tPmdGrpName = document.getElementById('otbFTPmdGrpName').value;
                var tPmcStaGrpCond = W_GETtStaGrpCond();
                var tSpmStaBuy = document.getElementById('otbCfgFTSpmStaBuy').value;
                var tSpmStaRcv = document.getElementById('otbCfgFTSpmStaRcv').value;
                var tSpmStaAllPdt = W_GETtStaAllPdt();
                var tPmcGetCond = W_GETtPmtGetCond();
                var tPdtDupUsePrev = W_GETtPdtDupUsePrev();
                var tActivePdt = W_GETtActivePdt();
                var tActivePdtNum = document.getElementById('otbActiveNum').value;
                var tSpmStaUseRange = document.getElementById('otbCfgFTSpmStaUseRange').value;
                var tSpmLimitGrpRcv = document.getElementById('otbCfgFNSpmLimitGrpRcv').value;
                var tFilterBarcode = document.getElementById('ocbFilterBarcode').value;
                

                tPmdGrpName = J002_STRttrim(tPmdGrpName);
                
                var tAddOldGrpItem = '';
                
                var bGrpNameDup = W_CHKbDupGrpName(tPmdGrpName);
                if (bGrpNameDup==true) {
                    var tDialogResult = J003_SHWxConfirmDialog('<%=ViewData("tMsgGrpNameDup")%>', oJ003_DialogType.DialogOkCancel);
                    switch (tDialogResult) {
                        case oJ003_DialogResult.Ok: tAddOldGrpItem='1'; break;
                        case oJ003_DialogResult.Cancel : return false; break;
                    }
                }
                
                var oXmlHttp = J002_GEToXMLHttpRequest();
                var tDateTimeNow = J002_GETtTimeStamp();
                var tUrl ='<%=Url.Action("C_DATtAddPdtToTable","cvcTCNTPmtHD") %>';
                tUrl += '?ptPdtFrom=' + tPdtFrom;
                tUrl += '&ptPdtTo=' + tPdtTo;
                tUrl += '&ptSplFrom=' + tSplFrom;
                tUrl += '&ptSplTo=' + tSplTo;
                tUrl += '&ptBuyerFrom=' + tBuyerFrom;
                tUrl += '&ptBuyerTo=' + tBuyerTo;
                tUrl += '&ptPgpChain=' + tPgpChain;
                tUrl += '&ptBrandFrom=' + tBrandFrom;
                tUrl += '&ptBrandTo=' + tBrandTo;
                tUrl += '&ptDCS=' + tDCS;
                tUrl += '&ptDCSd=' + tDCSd;
                tUrl += '&ptDCSc=' + tDCSc;
                tUrl += '&ptDCSs=' + tDCSs;
                tUrl += '&ptSpmCode=' + tSpmCode;
                tUrl += '&ptPmdGrpType=' + tPmdGrpType;
                tUrl += '&ptPmdGrpName=' + tPmdGrpName;
                tUrl += '&ptPmcStaGrpCond=' + tPmcStaGrpCond;
                tUrl += '&ptSpmStaBuy=' + tSpmStaBuy;
                tUrl += '&ptSpmStaRcv=' + tSpmStaRcv;
                tUrl += '&ptSpmStaAllPdt=' + tSpmStaAllPdt;
                tUrl += '&ptPmcGetCond=' + tPmcGetCond;
                tUrl += '&ptPdtDupUsePrev=' + tPdtDupUsePrev;
                tUrl += '&ptActivePdt=' + tActivePdt;
                tUrl += '&ptActivePdtNum=' + tActivePdtNum;
                tUrl += '&ptSpmStaUseRange=' + tSpmStaUseRange;
                tUrl += '&ptSpmLimitGrpRcv=' + tSpmLimitGrpRcv;
                tUrl += '&ptAddOldGrpItem=' + tAddOldGrpItem;
                tUrl += '&ptFilterBarcode=' + tFilterBarcode;
                tUrl += '&ptDateTimeNow=' + tDateTimeNow;
                oXmlHttp.open('GET', encodeURI(tUrl), false);
                oXmlHttp.send(null);
                var tResult = oXmlHttp.responseText;
                var oArr = tResult.split('|');
                if (oArr[0] != null && oArr[0] != "") {
                    alert(oArr[0]);
                    return false;
                }
                if (oArr.length > 1 && oArr[1] == 0) {
                    alert('<%=ViewData("olatMsgNonDataPdt")%>');
                    return false;
                }

                //----- *CH 02-12-11 แสดงเมื่อข้อมูลเกิน 4000 รายการ -----
                if (oArr.length > 1 && oArr[1] > 4000) {
                    var bConfirm = confirm('<%=ViewData("ovd_tMsgPdtOverLen")%> : ' + '<%=ViewData("ovd_tMsgCHKChoice")%>');
                    if (bConfirm == true) { }
                    //if (bConfirm == false) {
                    else {
                    //*CH 06-12-11 เคลียร์ค่า Model ข้อมูลสินค้า
                        var tUrl = '<%=Url.Action("C_CLRtDataDTAndCD","cvcTCNTPmtHD") %>';
                        oXmlHttp.open('POST', encodeURI(tUrl), false);
                        oXmlHttp.send(null);
                        var tResult = oXmlHttp.responseText;
                        var oArr = tResult.split('|');
                        if (oArr[0] != null && oArr[0] != "") {
                            alert(oArr[0]);
                            return false;
                        }
                        return false; 
                    }
                }
                //------------------------------------------------
                
                if (document.getElementById('orbFTSpmStaGrpReject').checked == true) {
                    W_SETxRebindGrid('GridExcept');
                }
                else {
                    W_SETxRebindGrid('GridPdt');
                }
                W_SETxRebindGrid('GridCond');
                document.getElementById('otbFTPmdGrpName').value = '';
                W_CLRxInsertPdtText();
            }
            catch (ex) {
                J002_SHWxMsgError("W_DATxAddPdtToTable", ex);
            }
        }
        function W_CHKbDupGrpName(ptPmdGrpName) {
            try {
                var oXmlHttp = J002_GEToXMLHttpRequest();
                var tDateTimeNow = J002_GETtTimeStamp();
                var tUrl = '<%=Url.Action("C_CHKtDupGrpName","cvcTCNTPmtHD") %>'; //'/' + tW_Controller + '/C_CHKtDupGrpName';
                tUrl += '?ptPmdGrpName=' + ptPmdGrpName;
                tUrl += '&ptDateTimeNow=' + tDateTimeNow;
                oXmlHttp.open('GET', encodeURI(tUrl), false);
                oXmlHttp.send(null);
                var tResult = oXmlHttp.responseText;
                var oArr = tResult.split('|');
                if (oArr[0] != null && oArr[0] != "") {
                    alert(oArr[0]);
                    return false;
                }
                if (oArr.length > 1 && oArr[1] == 1) {
                    return true;
                }
            }
            catch (ex) {
                J002_SHWxMsgError("W_CHKbDupGrpName", ex);
            }
        }
        function W_SETxRebindGrid(ptGridName) {
            var oGrid = $('#' + ptGridName).data('tGrid');
            oGrid.rebind();
            switch (ptGridName.toString().toUpperCase()) {
                case 'GridPdt'.toString().toUpperCase():
                    document.getElementById('otbGridPdtSeq').value;
                    break;
                //case 'GridPdt'.toString().toUpperCase(): //*CH 30-11-11 Old ซ้ำกับ Case แรก
                case 'GridExcept'.toString().toUpperCase(): //*CH 30-11-11 New
                    document.getElementById('otbGridExceptSeq').value;
                    break;
            }
        }
        function W_DATxGridCondOnRowSelect(e) {
            try{
                if(nW_StaPrcDoc == 1){
                    return false;
                }
                document.getElementById('otbInpSeq').value = e.row.cells[0].innerHTML;
                document.getElementById('otbInpGrpPmtPdt').value = e.row.cells[1].innerHTML;
                document.getElementById('otbInpBuyGet').value = e.row.cells[2].innerHTML;
                document.getElementById('otbInpPerAvg').value = e.row.cells[3].innerHTML;
                document.getElementById('otbInpBuyAmt').value = e.row.cells[4].innerHTML;
                document.getElementById('otbInpBuyQty').value = e.row.cells[5].innerHTML;
                document.getElementById('otbInpBuyMin').value = e.row.cells[6].innerHTML;
                document.getElementById('otbInpBuyMax').value = e.row.cells[7].innerHTML;
                document.getElementById('odtInpBuyMinTime').value = e.row.cells[8].innerHTML;
                document.getElementById('odtInpBuyMaxTime').value = e.row.cells[9].innerHTML;
                //10
                document.getElementById('otbInpGetValue').value = e.row.cells[11].innerHTML;
                document.getElementById('otbInpGetQty').value = e.row.cells[12].innerHTML;
                document.getElementById('otbStaBuyGet').value = e.row.cells[13].innerHTML;
                W_SETxComboInput(e.row.cells[14].innerHTML);


                W_SETxEnableInput(document.getElementById('otbStaBuyGet').value);
                W_CHKxInputValue();
                W_SETxInputValue();
                W_SETxSelectMember();
                W_SETxPmtCstNum();
                var bCheck = W_SETbFreePdtAndReceiveAtCounter();
                if (bCheck == true) {
                    document.getElementById('ocbInpGetCond').focus();
                }
                else {
                    document.getElementById('otbInpPerAvg').focus();
                    document.getElementById('otbInpPerAvg').select();
                }
            }
            catch (ex) {
                J002_SHWxMsgError('W_DATxGridCondOnRowSelect', ex);
            }
        }
        function W_DATxGridPdtOnRowSelect(e) {
            try {
                document.getElementById('otbGridPdtSeq').value = e.row.cells[0].innerHTML;
                document.getElementById('oahGridPdt').focus();
            }
            catch (ex) {
                J002_SHWxMsgError('W_DATxGridPdtOnRowSelect', ex);
            }
        }
        function W_DATxGridExceptOnRowSelect(e) {
            try {
                //document.getElementById('otbGridPdtSeq').value = e.row.cells[0].innerHTML; //*CH 30-11-11 Old 
                document.getElementById('otbGridExceptSeq').value = e.row.cells[0].innerHTML; //*CH 30-11-11 New เลือกตารางสินค้างดร่วมรายการ 
                document.getElementById('oahGridExcept').focus();
            }
            catch (ex) {
                J002_SHWxMsgError('W_DATxGridExceptOnRowSelect', ex);
            }
        }

        function W_SETxComboInput(ptComboVal) {
            try {
                var tComboStr = '';
                if (document.getElementById('otbCfgFTSpmStaGetDisAmt').value == '1') {
                    tComboStr += '1|' + '<%=ViewData("olaDisAmt") %>' + ',';
                }
                if (document.getElementById('otbCfgFTSpmStaGetDisPer').value == '1') {
                    tComboStr += '2|' + '<%=ViewData("olaDisPer") %>' + ',';
                }
                if (document.getElementById('otbCfgFTSpmStaGetNewPri').value == '1') {
                    tComboStr += '3|' + '<%=ViewData("olaAdjPrice") %>' + ',';
                }
                if (document.getElementById('otbCfgFTSpmStaGetPoint').value == '1') {
                    tComboStr += '4|' + '<%=ViewData("olaGetPoint") %>' + ',';
                }
                if (tComboStr.length > 0) {
                    tComboStr = tComboStr.substring(0, tComboStr.length - 1);
                }
                J011_CLRxComboBox('ocbInpGetCond');
                J011_SETxComboBox('ocbInpGetCond', tComboStr);
                J011_SETxComboSelected('ocbInpGetCond', ptComboVal);
            }
            catch (ex) {
                J002_SHWxMsgError('W_SETxComboInput', ex);
            }
            
        }
        function W_SETxEnableInput(ptStaBuyGet) {
            try{
                var tStaBuy = document.getElementById('otbCfgFTSpmStaBuy').value;
                var bBuyAmt = false ;
                var bBuyQty = false;
                var bBuy = false;
                var bGet = false;
                switch (ptStaBuyGet) {
                    case '1': //Buy
                        bBuy = true;
                        bGet = false;
                        if (tStaBuy == '1' || tStaBuy == '2') {
                            bBuyAmt = true;
                            bBuyQty = false;
                        }
                        else {
                            bBuyAmt = false;
                            bBuyQty = true;
                        }
                        break;
                    case '2': //Get
                        bBuy = false;
                        bGet = true;
                        bBuyAmt = false;
                        bBuyQty = false;
                        break;
                    case '3': //All
                        bBuy = true;
                        bGet = true;
                        if (tStaBuy == '1' || tStaBuy == '2') {
                            bBuyAmt = true;
                            bBuyQty = false;
                        }
                        else {
                            bBuyAmt = false;
                            bBuyQty = true;
                        }
                        break;
                }
                J002_SETxReadOnly('otbInpBuyAmt', !bBuyAmt);
                J002_SETxReadOnly('otbInpBuyQty', !bBuyQty);
                J002_SETxReadOnly('otbInpBuyMin', !bBuy);
                J002_SETxReadOnly('otbInpBuyMax', !bBuy);
                J002_SETxDisable('ocbInpGetCond', !bGet);
                J002_SETxReadOnly('otbInpGetValue', !bGet);
                J002_SETxReadOnly('otbInpGetQty', !bGet);
                var tUseRange =document.getElementById('otbCfgFTSpmStaUseRange').value;
                switch (tUseRange) {
                    case '1':
                        document.getElementById('otbInpBuyMin').style.display = 'block';
                        document.getElementById('otbInpBuyMax').style.display = 'block';
                        document.getElementById('odiInpBuyMaxTime').style.display = 'none';
                        document.getElementById('odiInpBuyMinTime').style.display = 'none';
                        J002_SETxReadOnly('otbInpBuyMin', true);
                        J002_SETxReadOnly('otbInpBuyMax', true);
                        J002_SETxReadOnly('otbInpBuyQty', true);
                        break;
                    case '2':
                        document.getElementById('otbInpBuyMin').style.display = 'none';
                        document.getElementById('otbInpBuyMax').style.display = 'none';
                        document.getElementById('odiInpBuyMaxTime').style.display = 'block';
                        document.getElementById('odiInpBuyMinTime').style.display = 'block';
                        break;
                    case '3':
                        document.getElementById('otbInpBuyMin').style.display = 'block';
                        document.getElementById('otbInpBuyMax').style.display = 'block';
                        document.getElementById('odiInpBuyMaxTime').style.display = 'none';
                        document.getElementById('odiInpBuyMinTime').style.display = 'none';
                        break;
                }
            }
            catch(ex){
                J002_SHWxMsgError('W_SETxEnableInput',ex);
            }
        }
        function W_DATxEditItem() {
            var tUseRange = document.getElementById('otbCfgFTSpmStaUseRange').value;
            if (tUseRange == '2') {
                var tDateFrom = document.getElementById('odtInpBuyMinTime').value;
                var tDateTo = document.getElementById('odtInpBuyMaxTime').value;
                tDateFrom = J002_CONtDateTime(tDateFrom);
                tDateTo = J002_CONtDateTime(tDateTo);
                if (tDateFrom > tDateTo) {
                    alert('<%=ViewData("tMsgIncorrectTimeCond") %>')
                    return false;
                }                
            }
            var tInpSeq = document.getElementById('otbInpSeq').value;
            var tInpGrpPmtPdt = document.getElementById('otbInpGrpPmtPdt').value;
            var tInpBuyGet = document.getElementById('otbInpBuyGet').value;
            var tInpPerAvg = J002_GETcNumber(document.getElementById('otbInpPerAvg').value);
            var tInpBuyAmt = J002_GETcNumber(document.getElementById('otbInpBuyAmt').value);
            var tInpBuyQty = J002_GETcNumber(document.getElementById('otbInpBuyQty').value);
            var tInpBuyMax = J002_GETcNumber(document.getElementById('otbInpBuyMax').value);
            var tInpBuyMin = J002_GETcNumber(document.getElementById('otbInpBuyMin').value);
            var tInpBuyMaxTime = document.getElementById('odtInpBuyMaxTime').value;
            var tInpBuyMinTime = document.getElementById('odtInpBuyMinTime').value;
            var tInpGetCond = document.getElementById('ocbInpGetCond').value;
            var tInpGetValue = J002_GETcNumber(document.getElementById('otbInpGetValue').value);
            var tInpGetQty = J002_GETcNumber(document.getElementById('otbInpGetQty').value);
            var tSpmStaBuy = document.getElementById('otbCfgFTSpmStaBuy').value;
            var tSpmStaRcv = document.getElementById('otbCfgFTSpmStaRcv').value;
            var tUseRange = document.getElementById('otbCfgFTSpmStaUseRange').value;
            if (tInpGrpPmtPdt != null && tInpGrpPmtPdt != "") {
                var tDateTimeNow = J002_GETtTimeStamp();
                var tUrl = '<%=Url.Action("C_DATtEditItem","cvcTCNTPmtHD") %>';
                tUrl += '?ptInpSeq=' + tInpSeq;
                tUrl += '&ptInpGrpPmtPdt=' + tInpGrpPmtPdt;
                tUrl += '&ptInpBuyGet=' + tInpBuyGet;
                tUrl += '&ptInpPerAvg=' + tInpPerAvg;
                tUrl += '&ptInpBuyAmt=' + tInpBuyAmt;
                tUrl += '&ptInpBuyQty=' + tInpBuyQty;
                tUrl += '&ptInpBuyMax=' + tInpBuyMax;
                tUrl += '&ptInpBuyMin=' + tInpBuyMin;
                tUrl += '&ptInpBuyMaxTime=' + tInpBuyMaxTime;
                tUrl += '&ptInpBuyMinTime=' + tInpBuyMinTime;
                tUrl += '&ptInpGetCond=' + tInpGetCond;
                tUrl += '&ptInpGetValue=' + tInpGetValue;
                tUrl += '&ptInpGetQty=' + tInpGetQty;
                tUrl += '&ptSpmStaBuy=' + tSpmStaBuy;
                tUrl += '&ptSpmStaRcv=' + tSpmStaRcv;
                tUrl += '&ptUseRange=' + tUseRange;
                tUrl += '&ptDateTimeNow=' + tDateTimeNow;
                var oXmlHttp = J002_GEToXMLHttpRequest();
                oXmlHttp.open("GET", encodeURI(tUrl), false);
                oXmlHttp.send(null);
                if (oXmlHttp.status != 200) {
                    alert('Error' + oXmlHttp.status + '\n' + oXmlHttp.responseText);
                    return false;
                }
                var aArr = oXmlHttp.responseText.split('|');
                if (aArr[0] != null && aArr[0] != '') {
                    alert(aArr[0]);
                    return false;
                }
                W_SETxRebindGrid('GridCond');
            }
            W_CLRxClearCondInput();
        }
        function W_CLRxClearCondInput() {
            document.getElementById('otbInpSeq').value='';
            document.getElementById('otbInpGrpPmtPdt').value='';
            document.getElementById('otbInpBuyGet').value='';
            document.getElementById('otbInpPerAvg').value='';
            document.getElementById('otbInpBuyAmt').value='';
            document.getElementById('otbInpBuyQty').value='';
            document.getElementById('otbInpBuyMax').value='';
            document.getElementById('otbInpBuyMin').value = '';
            document.getElementById('odtInpBuyMaxTime').value = '00:00:00';
            document.getElementById('odtInpBuyMinTime').value = '00:00:00';
            J011_CLRxComboBox('ocbInpGetCond');
            document.getElementById('otbInpGetValue').value='';
            document.getElementById('otbInpGetQty').value='';
        }
        function W_GETxUsrAndDptName() {
            var oXmlHttp = J002_GEToXMLHttpRequest();
            var tDataTimeNow = J002_GETtTimeStamp();
            var tUsrCode = document.getElementById("otbFTUsrCode").value;
            var tUrl = '<%=Url.Action("C_GETtUsrAndDptName","cvcTCNTPmtHD") %>';
            tUrl += "?ptUsrCode=" + tUsrCode;
            tUrl += "&ptDateTimeNow=" + tDataTimeNow;
            oXmlHttp.open("GET", encodeURI(tUrl), false);
            oXmlHttp.send(null);
            if (oXmlHttp.status != 200) {
                alert('Error' + oXmlHttp.status + '\n' + oXmlHttp.responseText);
                return false;
            }
            var aArr = oXmlHttp.responseText.split("|");
            if (aArr[0] != null && aArr[0] != ''){
                alert(aArr[0]);
            }
            document.getElementById("otbUsrName").value = aArr[1];
            document.getElementById("otbDptName").value = aArr[2];
        }
        function W_SETxPromotionStatus() {
            if (document.getElementById('otbFTPmhClosed').value =='1') {
                //document.getElementById('otbPmtStatus').value = '<%=ViewData("olaPause") %>';
                //----- โปรโมชั่นโดนหยุด และ สั่งจบภายหลัง -----*CH 27-12-11
                if (document.getElementById('otbFTPmhStatus').value == '4') {
                    document.getElementById('otbPmtStatus').value = '<%=ViewData("olaStop") %>';
                } else {
                    document.getElementById('otbPmtStatus').value = '<%=ViewData("olaPause") %>';
                }
                //-------------------------------------
                return true;
            }
            if (document.getElementById('otbFTPmhStaPrcDoc').value != '1') {
                document.getElementById('otbPmtStatus').value = '<%=ViewData("olaBeforeUse") %>';
                return true;
            }
            switch (document.getElementById('otbFTPmhStatus').value) {
                case '1':
                    document.getElementById('otbPmtStatus').value = '<%=ViewData("olaBeforeUse") %>';
                    break;
                case '2':
                    document.getElementById('otbPmtStatus').value = '<%=ViewData("olaInUse") %>';
                    break;
                case '3':
                    document.getElementById('otbPmtStatus').value = '<%=ViewData("olaExpire") %>';
                    break;
                case '4':
                    document.getElementById('otbPmtStatus').value = '<%=ViewData("olaStop") %>';
                    break;
            }
        }
        function W_CHKtHasDocNo(ptDocNo) {
            try {
                var tDateTimeNow = J002_GETtTimeStamp();
                var tDocNo = document.getElementById("otbFTPmhCode").value;
                var tUrl = '<%=Url.Action("C_CHKtHasDocNo","cvcTCNTPmtHD") %>';
                tUrl += '?ptDocNo=' + tDocNo 
                tUrl += '&ptDateTimeNow=' + tDateTimeNow;
                var oXmlHttp = J002_GEToXMLHttpRequest();
                oXmlHttp.open("GET", encodeURI(tUrl), false);
                oXmlHttp.send(null);
                if (oXmlHttp.responseText == "0") {
                    return false;
                }
                else {
                    return true;
                }
            }
            catch (ex) {
                J002_SHWxMsgError('W_CHKtHasDocNo', ex);
            }
        }
        function W_GETtDocNo() {
            try {
                if (nW_StaDoc == 1) {
                    return false;
                }
                J002_SETxReadOnly("otbFTPmhCode", false);
                var oXmlHttp = J002_GEToXMLHttpRequest();
                var tDataTimeNow = J002_GETtTimeStamp();
                var tBchCode = document.getElementById("otbFTBchCode").value;
                var tDocNo = document.getElementById("otbFTPmhCode").value;
                var tDocType = '0';
                var tUrl = '<%=Url.Action("C_GENtDocNo","cvcTCNTPmtHD") %>' + '?ptBchCode=' + tBchCode + '&ptDocNo=' + tDocNo + '&ptDocType=' + tDocType + '&ptDateTimeNow=' + tDataTimeNow;
                oXmlHttp.open("GET", encodeURI(tUrl), false);
                oXmlHttp.send(null);
                document.getElementById("otbFTPmhCode").value = oXmlHttp.responseText;
            }
            catch (ex) {
                J002_SHWxMsgError('W_GETtDocNo', ex);
            }
        }
        function W_SETxDocDisplayStatus() {
            if (document.getElementById('otbFNPmhStaAct').value == '1') {
                nW_StaDoc = 1;
                //W_SETxDisableDocNo(true);
            }
            if (document.getElementById('otbFTPmhStaPrcDoc').value == '1') {
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
        function W_FRMxPostDoc() {
            try {
                J003_SHWxWaiting();
                var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Approve%>';
                var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
                var tPwdAllow = '<%=Session("bVB_CNPwdAllow") %>';
                var aAlwUsrCode = new Array();
                var bAllow = J002_CHKtCheckAuthorize(tW_Menu, tAuthor, tPwdAllow, tMsgNotAuthorize, aAlwUsrCode);
                var tApvCode = aAlwUsrCode[0];
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
                var tStaChange = W_CHKbHasChangeData();
                if (tStaChange == true) {
                    var tDialogResult = J003_SHWxConfirmDialog('<%=ViewData("tMsgSave_Warning") %>', oJ003_DialogType.DialogYesNoCancel);
                    var tStaSave = true;
                    switch (tDialogResult) {
                        case oJ003_DialogResult.Yes: tStaSave=W_DATxSaveDocument(true); break;
                        case oJ003_DialogResult.Cancel: return false; break;
                    }
                    if (tStaSave == false) {
                        return false;
                    }
                }
                if (!confirm('<%=ViewData("tMsgConfirmPost") %>')) {
                    return false;
                }
                if (tApvCode == null || tApvCode == '') {
                    tApvCode = document.getElementById('otbFTUsrCode').value;
                }
                var tBchcode = document.getElementById('otbFTBchCode').value;
                var tDocNo = document.getElementById('otbFTPmhCode').value;
                var tDate = J002_GETtTimeStamp();
                var tUrl = '<%=Url.Action("C_FRMxPostDoc","cvcTCNTPmtHD") %>';
                tUrl += '?ptDate=' + tDate;
                tUrl += '&ptDocNo=' + tDocNo;
                tUrl += '&ptBchValue=' + tBchcode;
                tUrl += '&ptApvCode=' + tApvCode;
                var oXmlHttp = J002_GEToXMLHttpRequest();
                oXmlHttp.open('Get', encodeURI(tUrl), false);
                oXmlHttp.send(null);
                if (oXmlHttp.status != 200) {
                    alert('Error' + oXmlHttp.status + '\n' + oXmlHttp.responseText);
                    return false;
                }
                var aArr = oXmlHttp.responseText.split(';');
                if (aArr[0] == '1') {
                    alert(aArr[1]);
                    return false;
                }
//                nW_StaPrcDoc = 1;
//                document.getElementById('otbFTPmhStaPrcDoc').value = '1';
//                W_SHWxDocStatus('odiNoneApprove', 'odiApprove', 'odiCancel');
//                W_SETxDisableAll(true);
//                document.getElementById('otbFTPmhApvCode').value = tApvCode;
//                W_GETxPmtStatus();
                var tDocNo = document.getElementById("otbFTPmhCode").value;
                var tUrl = '';
                tUrl += '<%=Url.Action("Index","cvcTCNTPmtHD") %>' + '?ptDocNo=' + tDocNo + '&ptAuthorRead=1';
                window.location = tUrl;
            }
            catch (ex) {
                J002_SHWxMsgError('W_FRMxPostDoc', ex)
            }
            finally {
                J003_DISxWaiting();
            }
        }
        function W_SETxDisableAll(pbStatus) {
            try {
                //------Text
                J002_SETxReadOnly('otbFTPmhName', pbStatus);
                J002_SETxReadOnly('otbFTPmhNameSlip', pbStatus);
                J002_SETxReadOnly('otbFTPmdGrpName', pbStatus);
                J002_SETxReadOnly('otbFTSpmCode', pbStatus);
                J002_SETxReadOnly('otbFTPmhRmk', pbStatus);
                J002_SETxReadOnly('otbFTPmhBchTo', pbStatus);
                J002_SETxReadOnly('otbFTPmhZneTo', pbStatus);
                //------Text

                //------radio button
                document.getElementById('orbFTSpmStaGrpBoth').disabled = pbStatus;
                document.getElementById('orbFTSpmStaGrpBuy').disabled = pbStatus;
                document.getElementById('orbFTSpmStaGrpRcv').disabled = pbStatus;
                document.getElementById('orbFTSpmStaGrpReject').disabled = pbStatus;
                //------radio button

                //------Combo
                //document.getElementById('ocbFTPmhRetOrWhs').disabled = pbStatus;
                document.getElementById('ocbFTPmhStaLimit').disabled = pbStatus;
                document.getElementById('ocbFTPmhStaLimitCst').disabled = pbStatus;
                //------Combo
            }
            catch (ex) {
                J002_SHWxMsgError('W_SETxDisableAll', ex);
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

                var oDoc = document.getElementById('otbFTPmhCode');
                var oBchcode = document.getElementById('otbFTBchCode');
                var tDocNo = oDoc.value;
                if (tDocNo != '') {
                    var tDate = J002_GETtTimeStamp();
                    J004_FRMxDelDoc(tDate, 'C_FRMxDelDoc', tW_Controller, 'otbFTPmhCode', '', oBchcode.value);
                    if (tCN_LoadTranMenuRetStatus == '0') {
                        window.location = '<%=Url.Action("Index","cvcTCNTPmtHD") %>' + '?ptAuthorRead=1';
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
                W_CLRxDocFlag();
                W_CLRxClearCondInput();
                W_SETxDisableAll(false);
                W_SHWxDocStatus('odiNoneApprove', 'odiApprove', 'odiCancel');
                //reset docNo
                document.getElementById("otbFTPmhCode").value = '<%=ViewData("DocNoFormat")%>';
                document.getElementById("otbFTPmhCodeOld").value = '<%=ViewData("DocNoFormat")%>';
                J002_SETxReadOnly("otbFTPmhCode", true);
                //reset User
                document.getElementById("otbFTUsrCode").value = '<%=ViewData("UsrCode")%>';
                document.getElementById("otbFTDptCode").value = '<%=ViewData("DptCode")%>';
                document.getElementById("otbFTBchCode").value = '<%=ViewData("BchCode")%>';
                W_GETxUsrAndDptName();
                //reset odiApprove User
                document.getElementById('otbFTPmhStaPrcDoc').value = '';
                document.getElementById('otbFTPmhApvCode').value = '';
                //clear sta doc
                document.getElementById('otbFNPmhStaAct').value = '0';
                W_SETxPmtObject();
                //claer status promotion
                document.getElementById('otbFTPmhClosed').value = '';
                document.getElementById('otbFTPmhStatus').value = '1';
                W_SETxPromotionStatus();
            }
            catch (ex) {
                J002_SHWxMsgError('W_FRMxCopyDoc', ex)
            }
            finally {
                J003_DISxWaiting();
            }
        }
        function W_CLRxDocFlag() {
            nW_StaPrcDoc = 0;
            nW_StaDocCancel = 0;
            nW_StaDoc = 0;
        }
        function W_GETtDateNow() {
            try{
                var dNow = new Date();
                var tDay = dNow.getDate().toString();
                var tMonth = (dNow.getMonth() + 1).toString();
                var tYear = (dNow.getFullYear()).toString();
                if (tDay.length < 2) { tDay = '0' + tDay; }
                if (tMonth.length < 2) { tMonth = '0' + tMonth; }
                var tNow = String(tDay.toString() + '/' + tMonth.toString() + '/' + tYear.toString());
                return tNow;
            }
            catch (ex) {
                J002_SHWxMsgError('W_GETtDateNow', ex);
            }
        }
        function W_GETtTimeNow() {
            try {
                var dNow = new Date();
                var tHours = dNow.getHours().toString();
                var tMinutes = dNow.getMinutes().toString();
                var tSeconds = dNow.getSeconds().toString();
                if (tSeconds.length < 2) { tSeconds = '0' + tSeconds; }
                if (tMinutes.length < 2) { tMinutes = '0' + tMinutes; }
                if (tHours.length < 2) { tHours = '0' + tMinutes; }
                var tNow = String(tHours.toString() + ':' + tMinutes.toString() + ':' + tSeconds.toString());
                return tNow;
            }
            catch (ex) {
                J002_SHWxMsgError('W_GETtTimeNow', ex);
            }
        }
        function W_FRMxStopDoc() {
            try {
                J003_SHWxWaiting();
                if (nW_StaPrcDoc != 1) {
                    alert('<%=ViewData("olatMsgNoAppNoStop") %>')
                    return false;
                }
                if (document.getElementById('otbFTPmhStatus').value == '4') {
                    alert('<%=ViewData("olatMsgStopedNoStop") %>')
                    return false;
                }
                var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Edit%>';
                var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
                var tPwdAllow = '<%=Session("bVB_CNPwdAllow") %>';
                var bAllow = J002_CHKtCheckAuthorize(tW_Menu, tAuthor, tPwdAllow, tMsgNotAuthorize);
                if (bAllow == false) {
                    return false;
                }
                if (!confirm('<%=ViewData("tMsgConfirmStop") %>')) {
                    return false;
                }
                var oDoc = document.getElementById('otbFTPmhCode');
                var tBchcode = document.getElementById('otbFTBchCode').value;
                var tDocNo = oDoc.value;
                var tDate = J002_GETtTimeStamp();
                var tUrl = '<%=Url.Action("C_FRMxStopDoc","cvcTCNTPmtHD") %>';
                tUrl += '?ptDate=' + tDate;
                tUrl += '&ptDocNo=' + tDocNo;
                tUrl += '&ptBchValue=' + tBchcode;
                var oXmlHttp = J002_GEToXMLHttpRequest();
                oXmlHttp.open('Get', encodeURI(tUrl), false);
                oXmlHttp.send(null);
                if (oXmlHttp.status != 200) {
                    alert('Error' + oXmlHttp.status + '\n' + oXmlHttp.responseText);
                    return false;
                }
                var aArr = oXmlHttp.responseText.split('|');
                if (aArr[0] != null && aArr[0] != '') {
                    alert(aArr[0]);
                    return false;
                }
                document.getElementById('otbFTPmhStatus').value = '4';
                W_SETxPromotionStatus();
            }
            catch (ex) {
                J002_SHWxMsgError('W_FRMxStopDoc', ex);
            }
            finally {
                J003_DISxWaiting();
            }
        }
        function W_FRMxPauseDoc() {
            try {
                J003_SHWxWaiting();
                if (nW_StaPrcDoc != 1) {
                    alert('<%=ViewData("olatMsgNoAppNoPause") %>')
                    return false;
                }
                if (document.getElementById('otbFTPmhStatus').value == '4') {
                    alert('<%=ViewData("olatMsgStopedNoPause") %>')
                    return false;
                }
                var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Edit%>';
                var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
                var tPwdAllow = '<%=Session("bVB_CNPwdAllow") %>';
                var bAllow = J002_CHKtCheckAuthorize(tW_Menu, tAuthor, tPwdAllow, tMsgNotAuthorize);
                if (bAllow == false) {
                    return false;
                }
                var tStaClosed = document.getElementById('otbFTPmhClosed').value;
                var tMsgConfirm = '';
                if (tStaClosed == '1') {
                    tStaClosed = '0';
                    tMsgConfirm = '<%=ViewData("tMsgConfirmUnPause") %>';
                }
                else {
                    tStaClosed = '1';
                    tMsgConfirm = '<%=ViewData("tMsgConfirmPause") %>';
                }


                if (!confirm(tMsgConfirm)) {
                    return false;
                }


                var oDoc = document.getElementById('otbFTPmhCode');
                var tBchcode = document.getElementById('otbFTBchCode').value;
                var tDocNo = oDoc.value;
                var tDate = J002_GETtTimeStamp();
                var tUrl = '<%=Url.Action("C_FRMxPauseDoc","cvcTCNTPmtHD") %>';
                tUrl += '?ptDate=' + tDate;
                tUrl += '&ptDocNo=' + tDocNo;
                tUrl += '&ptBchValue=' + tBchcode;
                tUrl += '&ptStaClosed=' + tStaClosed;
                var oXmlHttp = J002_GEToXMLHttpRequest();
                oXmlHttp.open('Get', encodeURI(tUrl), false);
                oXmlHttp.send(null);
                if (oXmlHttp.status != 200) {
                    alert('Error' + oXmlHttp.status + '\n' + oXmlHttp.responseText);
                    return false;
                }
                var aArr = oXmlHttp.responseText.split('|');
                if (aArr[0] != null && aArr[0] != '') {
                    alert(aArr[0]);
                    return false;
                }
                document.getElementById('otbFTPmhClosed').value = tStaClosed;
                W_SETxPromotionStatus();
            }
            catch (ex) {
                J002_SHWxMsgError('W_FRMxPauseDoc', ex);
            }
            finally {
                J003_DISxWaiting();
            }
        }
        function W_SHWxBrwPdtGrp() {
            try {
                if (W_CHKbPostOrDelStatus() == true) {
                    alert('<%=ViewData("olatMsgNoEdit")%>');
                    return false;
                }
                var tDateTimeNow = J002_GETtTimeStamp();
                var tUrl = '<%=Url.Action("C_CNBrwPdtGrp","cvcTCNTPmtHD") %>';
                tUrl += '?ptDate=' + tDateTimeNow;
                var ReturnedValue = showModalDialog(encodeURI(tUrl), "Passed String", "dialogWidth:450px; dialogHeight:500px; status:no; center:yes;titlebar =0;scroll=no");
                if (ReturnedValue == null || ReturnedValue == '') {
                    return false;
                }
                W_GETxPdtGrp(ReturnedValue);
            }
            catch (ex) {
                J002_SHWxMsgError("W_SHWxBrwPdtGrp", ex);
            }
        }
        function W_GETxPdtGrp(ptGrpChain) {
            try {
                var oXmlHttp = J002_GEToXMLHttpRequest();
                var tDateTimeNow = J002_GETtTimeStamp();
                var tUrl = '<%=Url.Action("C_GETtPdtGrp","cvcTCNTPmtHD") %>' + '?ptGrpChain=' + ptGrpChain + '&ptDateTimeNow=' + tDateTimeNow;
                oXmlHttp.open('GET', encodeURI(tUrl), false);
                oXmlHttp.send(null);
                if (oXmlHttp.status != 200) {
                    alert('Error' + oXmlHttp.status + '\n' + oXmlHttp.responseText);
                    return 0;
                }
                var tReturn = oXmlHttp.responseText;
                if (tReturn == null) {
                    return 0;
                }
                var aArray = tReturn.split("|");
                if (aArray[0] != null && aArray[0] != "") {
                    alert(aArray[0]);
                }
                if (aArray.length > 1) {
                    document.getElementById("otbPdtGrp").value = ptGrpChain;
                    document.getElementById("otbPdtGrpName").value = aArray[1];
                }
            }
            catch (ex) {
                J002_SHWxMsgError("W_GETxPdtGrp", ex);
            }
        }
        function W_DATxAddPmtRange() {
            try {
                if (nW_StaPrcDoc == 1) {
                    return false;
                }

                if (isNaN(Number(document.getElementById("otbRangeSize").value))) {
                    document.getElementById("otbRangeSize").value = 1;
                }
                if (isNaN(Number(document.getElementById("otbRangeLevel").value))) {
                    document.getElementById("otbRangeLevel").value = 1;
                }
                
                var tRangeLevel = document.getElementById('otbRangeLevel').value;
                var tRangeSize = document.getElementById('otbRangeSize').value;
                var tRangeStart = document.getElementById('otbRangeStart').value;
                var tRangeTimeSize = document.getElementById('odtRangeTimeSize').value;
                var tRangeTimeStart = document.getElementById('odtRangeTimeStart').value;
                
                var tRangeType = document.getElementById('otbCfgFTSpmStaUseRange').value;
                
                
                var oXmlHttp = J002_GEToXMLHttpRequest();
                var tDateTimeNow = J002_GETtTimeStamp();
                var tUrl = '<%=Url.Action("C_DATtAddPmtRange","cvcTCNTPmtHD") %>';
                tUrl += '?ptRangeLevel=' + tRangeLevel;
                tUrl += '&ptRangeSize=' + tRangeSize;
                tUrl += '&ptRangeStart=' + tRangeStart;
                tUrl += '&ptRangeTimeSize=' + tRangeTimeSize;
                tUrl += '&ptRangeTimeStart=' + tRangeTimeStart;
                tUrl += '&ptRangeType=' + tRangeType;
                tUrl += '&ptDateTimeNow=' + tDateTimeNow;
                oXmlHttp.open('GET', encodeURI(tUrl), false);
                oXmlHttp.send(null);
                var tResult = oXmlHttp.responseText;
                var oArr = tResult.split('|');
                if (oArr[0] != null && oArr[0] != "") {
                    alert(oArr[0]);
                    return false;
                }
                W_SETxRebindGrid('GridRange');
            }
            catch (ex) {
                J002_SHWxMsgError("W_DATxAddPmtRange", ex);
            }
        }
        function W_DELxCondItem() {
            try{
                var tSeq = document.getElementById('otbInpSeq').value;
                var tDateTimeNow = J002_GETtTimeStamp();
                var tUrl = '<%=Url.Action("C_DELtCondItem","cvcTCNTPmtHD") %>' + '?ptSeq=' + tSeq;
                tUrl += '&ptDateTimeNow=' + tDateTimeNow;
                var oXmlHttp = J002_GEToXMLHttpRequest();
                oXmlHttp.open("GET", encodeURI(tUrl), false);
                oXmlHttp.send(null);
                var tResult = oXmlHttp.responseText;
                var oArr = tResult.split('|');
                if (oArr[0] != null && oArr[0] != "") {
                    alert(oArr[0]);
                    return false;
                }
                W_CLRxClearCondInput();
                W_SETxRebindGrid('GridCond');
                W_SETxRebindGrid('GridPdt');
            }
            catch (ex) {
                J002_SHWxMsgError("W_DELxCondItem", ex);
            }
        }
        function W_DELxPdtItem() {
            try {
                var tSeq = document.getElementById('otbGridPdtSeq').value;
                var tDateTimeNow = J002_GETtTimeStamp();
                var tUrl = '<%=Url.Action("C_DELtPdtItem","cvcTCNTPmtHD") %>' + '?ptSeq=' + tSeq;
                tUrl += '&ptDateTimeNow=' + tDateTimeNow;
                var oXmlHttp = J002_GEToXMLHttpRequest();
                oXmlHttp.open("GET", encodeURI(tUrl), false);
                oXmlHttp.send(null);
                var tResult = oXmlHttp.responseText;
                var oArr = tResult.split('|');
                if (oArr[0] != null && oArr[0] != "") {
                    alert(oArr[0]);
                    return false;
                }
                W_CLRxClearCondInput();
                W_SETxRebindGrid('GridCond');
                W_SETxRebindGrid('GridPdt');
            }
            catch (ex) {
                J002_SHWxMsgError("W_DELxPdtItem", ex);
            }
        }
        function W_DELxExceptItem() {
            try {
                var tSeq = document.getElementById('otbGridExceptSeq').value;
                var tDateTimeNow = J002_GETtTimeStamp();
                var tUrl = '<%=Url.Action("C_DELtExceptItem","cvcTCNTPmtHD") %>' + '?ptSeq=' + tSeq;
                tUrl += '&ptDateTimeNow=' + tDateTimeNow;
                var oXmlHttp = J002_GEToXMLHttpRequest();
                oXmlHttp.open("GET", encodeURI(tUrl), false);
                oXmlHttp.send(null);
                var tResult = oXmlHttp.responseText;
                var oArr = tResult.split('|');
                if (oArr[0] != null && oArr[0] != "") {
                    alert(oArr[0]);
                    return false;
                }
                W_CLRxClearCondInput();
                W_SETxRebindGrid('GridExcept');
            }
            catch (ex) {
                J002_SHWxMsgError("W_DELxExceptItem", ex);
            }
        }
        function W_CLRxDataDTAndCD() {
            try {
                var tDateTimeNow = J002_GETtTimeStamp();
                var tUrl = '<%=Url.Action("C_CLRtDataDTAndCD","cvcTCNTPmtHD") %>';
                tUrl += '?ptDateTimeNow=' + tDateTimeNow;
                var oXmlHttp = J002_GEToXMLHttpRequest();
                oXmlHttp.open("GET", encodeURI(tUrl), false);
                oXmlHttp.send(null);
                var tResult = oXmlHttp.responseText;
                var oArr = tResult.split('|');
                if (oArr[0] != null && oArr[0] != "") {
                    alert(oArr[0]);
                    return false;
                }
                W_SETxRebindGrid('GridPdt');
                W_SETxRebindGrid('GridExcept');
                W_SETxRebindGrid('GridCond');
            }
            catch (ex) {
                J002_SHWxMsgError("W_DELxExceptItem", ex);
            }
        }
        function W_CLRxInsertPdtText() {
            try {
                J002_CLRxClearObjValue('otbPdtFrom,otbPdtTo,otbSplFrom,otbSplTo,otbBuyerFrom,otbBuyerTo');
                J002_CLRxClearObjValue('otbPdtGrp,otbPdtGrpName,otbBrandFrom,otbBrandTo');
                J002_CLRxClearObjValue('otbDCS,otbDCSc,otbDCSd,otbDCSs');
                W_SETxDefaultFashion();
            }
            catch (ex) {
                J002_SHWxMsgError("W_CLRxInsertPdtText", ex);
            }
        }
        function W_SETxDefaultFashion() {
            try {
                document.getElementById('orbUnUse').checked = true;
                document.getElementById('orbActive').checked = false;
                document.getElementById('orbUnActive').checked = false;
            }
            catch (ex) {
                J002_SHWxMsgError("W_SETxDefaultFashion", ex);
            }
        }

        function W_GETtDataHDString() {
            try {
                var tStr = '';
                tStr += document.getElementById('otbFTPmhCode').value;
                tStr += document.getElementById('otbFTPmhName').value;
                tStr += document.getElementById('otbFTPmhNameSlip').value;
                tStr += document.getElementById('otbFTSpmCode').value;
                tStr += document.getElementById('otbFTPmhRmk').value;
                tStr += document.getElementById('otbFTPmhBchTo').value;
                tStr += document.getElementById('otbFTPmhZneTo').value;
                tStr += document.getElementById('ockFTSpmStaExceptPmt').checked == true ? '2' : '1';
                tStr += document.getElementById('ockFTSpmStaRcvFree').checked == true ? '1' : '2';
                tStr += document.getElementById('ockFTSpmStaAlwOffline').checked == true ? '1' : '2';
                tStr += document.getElementById('ockFTSpmStaChkLimitGet').checked == true ? '1' : '2';
                tStr += document.getElementById('otbFNPmhLimitNum').value;
                tStr += document.getElementById('ocbFTPmhStaLimit').value;
                tStr += document.getElementById('ocbFTPmhStaLimitCst').value;
                tStr += document.getElementById('ockFTSpmStaChkCst').checked == true ? '1' : '2';
                tStr += document.getElementById('ockFTSpmStaChkCstDOB').checked == true ? '1' : '2';
                tStr += document.getElementById('otbFNPmhCstNum').value;
                tStr += document.getElementById('otbFNPmhCstDobNum').value;
                tStr += document.getElementById('otbFNPmhCstDobPrev').value;
                tStr += document.getElementById('otbFNPmhCstDobNext').value;
                tStr += document.getElementById('odtFDPmhDStart').value;
                tStr += document.getElementById('odtFDPmhDStop').value;
                tStr += document.getElementById('odtFDPmhTStart').value;
                tStr += document.getElementById('odtFDPmhTStop').value;
                tStr += document.getElementById('ocbFTPmhRetOrWhs').value;
                tStr += document.getElementById('otbFTSplCode').value;
                tStr += document.getElementById('otbFTSplName').value;
                tStr += document.getElementById('odtFDPntSplDStart').value;
                tStr += document.getElementById('odtFDPntSplDExpired').value;
                return tStr;
            }
            catch (ex) {
                J002_SHWxMsgError("W_GETtDataHDString", ex);
            }
        }
        function W_CHKbHasChangeData() {
            try {
                if (nW_StaPrcDoc == 1 || nW_StaDocCancel == 1) {
                    return false;
                }
                var bStaChange = false;
                var tData = W_GETtDataHDString();
                if (tData != tW_BeforeEditData){
                    bStaChange = true;
                }
                if (bStaChange == false) {
                    var bStaChangeDT = W_CHKbHasChangeDataDT(); ;
                    bStaChange = bStaChange || bStaChangeDT;
                }
                return bStaChange;
            }
            catch (ex) {
                J002_SHWxMsgError("W_CHKbHasChangeData", ex);
            }
        }
        function W_CHKbHasChangeDataDT() {
            try {
                var tDate = J002_GETtTimeStamp();
                var tUrl = '<%=Url.Action("C_CHKtHasChangeDataDT","cvcTCNTPmtHD") %>';
                tUrl += '?ptDateTimeNow=' + tDate;
                var oXmlHttp = J002_GEToXMLHttpRequest();
                oXmlHttp.open('GET', encodeURI(tUrl), false);
                oXmlHttp.send(null);
                if (oXmlHttp.status != 200) {
                    var tMsg = "Error" + oXmlHttp.stutus + "\n";
                    tMsg += oXmlHttp.responseText;
                    alert(tMsg);
                    return false;
                }
                var tReturn = oXmlHttp.responseText;
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
        function W_GETxPmtStatus() {
            try {
                var tBchcode = document.getElementById('otbFTBchCode').value;
                var tDocNo = document.getElementById('otbFTPmhCode').value;
                var tDate = J002_GETtTimeStamp();
                var tUrl = '<%=Url.Action("C_GETtPromotionStatus","cvcTCNTPmtHD") %>';
                tUrl += '?ptDate=' + tDate;
                tUrl += '&ptDocNo=' + tDocNo;
                tUrl += '&ptBchValue=' + tBchcode;
                var oXmlHttp = J002_GEToXMLHttpRequest();
                oXmlHttp.open('Get', encodeURI(tUrl), false);
                oXmlHttp.send(null);
                if (oXmlHttp.status != 200) {
                    alert('Error' + oXmlHttp.status + '\n' + oXmlHttp.responseText);
                    return false;
                }
                var aArr = oXmlHttp.responseText.split('|');
                if (aArr[0] != null && aArr[0] != '') {
                    alert(aArr[0]);
                    return false;
                }
                document.getElementById('otbFTPmhStatus').value = aArr[1];
                W_SETxPromotionStatus();
            }
            catch (ex) {
                J002_SHWxMsgError('W_GETxPmtStatus', ex);
            }
            finally {
                J003_DISxWaiting();
            }
        }
        function W_SETxSelectedColor(ptObjID) {
            if (document.getElementById(ptObjID).style.color == 'blue') {
                document.getElementById(ptObjID).style.color = '';
                return false;
            }
            document.getElementById(ptObjID).style.color = 'blue';
        }
        function W_SETxBchAffect() {
            if (document.getElementById('otbFTPmhBchTo').value != '') {
                document.getElementById('otbBchAffect').value = document.getElementById('otbFTPmhBchToName').value;
                return true;
            }
            if (document.getElementById('otbFTPmhZneTo').value != '') {
                document.getElementById('otbBchAffect').value = '<%=ViewData("olaAll") %>';
                return true;
            }
            document.getElementById('otbBchAffect').value = '';
        }
        function W_GETxBchName() {
            try {
                var tCode = $("#otbFTPmhBchTo").val()
                tCode = J002_STRttrim(tCode);
                if (tCode == null || tCode == "") {
                    $("#otbFTPmhBchTo").val("");
                    $("#otbFTPmhBchToName").val("");
                    return false;
                }
                var oXmlHttp = J002_GEToXMLHttpRequest();
                var tDataTimeNow = J002_GETtTimeStamp();
                var tZone = document.getElementById('otbFTPmhZneTo').value;
                var tCode = document.getElementById('otbFTPmhBchTo').value;
                var tUrl = '';
                tUrl += '<%=Url.Action("C_GETtBchName","cvcTCNTPmtHD") %>' + "?ptCode=" + tCode + "&ptZone=" + tZone + "&ptDateTimeNow=" + tDataTimeNow;
                oXmlHttp.open("GET", encodeURI(tUrl), false);
                oXmlHttp.send(null);
                var valueFis = oXmlHttp.responseText;
                if (valueFis == null) {
                    return false;
                }
                var mytool_array = valueFis.split("|");
                if (mytool_array[0] != null && mytool_array[0] != "") {
                    alert('C_GETtBchName' + ' : ' + mytool_array[0]);
                }
                if (mytool_array.length > 1) {
                    if (mytool_array[1] == String.fromCharCode(29)) {
                        $("#otbFTPmhBchTo").val($("#otbFTPmhBchToOld").val());
                        alert('<%=ViewData("tMsgDAT_Notfound001")%>' + '<%=ViewData("olaBranch")%>');
                        return false;
                    }
                    $("#otbFTPmhBchToName").val(mytool_array[1]);
                    $("#otbFTPmhBchToOld").val($("#otbFTPmhBchTo").val());
                    return true;
                }
            }
            catch (ex) {
                J002_SHWxMsgError("W_GETxBchName", ex);
            }
        }
        function W_SETbFreePdtAndReceiveAtCounter() {
            try {

                var tStaBuyGet = document.getElementById('otbStaBuyGet').value;
                var bStaRcvFree = document.getElementById('ockFTSpmStaRcvFree').checked;
                var tGetCond = document.getElementById('ocbInpGetCond').value;
                var tGetValue = document.getElementById('otbInpGetValue').value;
                tGetValue = Number(tGetValue);
                if (tStaBuyGet=='2' && bStaRcvFree == false && tGetCond == '3' && tGetValue < 1) {
                    document.getElementById('otbInpPerAvg').value = 0;
                    J002_SETxReadOnly('otbInpPerAvg', true);
                    return true;
                }
                else {
                    J002_SETxReadOnly('otbInpPerAvg', false);
                    return false;
                }
            }
            catch (ex) {
                J002_SHWxMsgError("W_SETbFreePdtAndReceiveAtCounter", ex);
            }
        }
        function W_CHKxInputValue() {
            try {
                if (document.getElementById('ocbInpGetCond').value == '2') {//dis %
                    if (document.getElementById('otbInpGetValue').value >= 100) {
                        document.getElementById('otbInpGetValue').value = 99;
                    }
                }
                if (document.getElementById('ocbInpGetCond').value == '2' || document.getElementById('ocbInpGetCond').value == '1') {//dis %,dis amt
                    if (document.getElementById('otbInpGetValue').value < 1) {
                        document.getElementById('otbInpGetValue').value = 1;
                    }
                }
            }
            catch (ex) {
                J002_SHWxError("W_CHKxInputValue", ex);
            }
        }
        function W_SETxInputValue() {
            try {
                if (document.getElementById('ocbInpGetCond').value == '2') {//dis %
                    if (document.getElementById('otbInpGetValue').value >= 100) {
                        document.getElementById('otbInpGetValue').value = 99;
                    }
                }
                if (document.getElementById('ocbInpGetCond').value == '2' || document.getElementById('ocbInpGetCond').value == '1') {//dis %,dis amt
                    if (document.getElementById('otbInpGetValue').value < 1) {
                        document.getElementById('otbInpGetValue').value = 1;
                    }
                }
                var tInpGetCond = document.getElementById('ocbInpGetCond').value;
                if (tInpGetCond == '1' || tInpGetCond == '2' || tInpGetCond == '3') {
                    var tInpGetValue = document.getElementById('otbInpGetValue').value;
                    var aStrValue = tInpGetValue.split('.');
                    if (aStrValue.length == 1) {
                        document.getElementById('otbInpGetValue').value = J002_SETcNumber(document.getElementById('otbInpGetValue').value);
                    }
                    $('#otbInpGetQty').val(J002_SETcNumber($('#otbInpGetQty').val())); //*CH 20-02-2013
                    J002_SETxReadOnly('otbInpGetQty', false); //*CH 20-02-2013
                } else if (tInpGetCond == '4') { //Point
                    document.getElementById('otbInpGetValue').value = J002_GETnNumber(document.getElementById('otbInpGetValue').value);
                    $('#otbInpGetQty').val(J002_SETcNumber(1)); //*CH 20-02-2013
                    J002_SETxReadOnly('otbInpGetQty', true); //*CH 20-02-2013
                }
            }
            catch (ex) {
                J002_SHWxError("W_CHKxInputValue", ex);
            }
        }
        function W_SETxPmtCstNum() {
            try {
                if (document.getElementById('ocbInpGetCond').value == '4') {
                    document.getElementById('odiCstNum').style.display = 'block';
                }
                else {
                    document.getElementById('odiCstNum').style.display = 'none';
                }
            }
            catch (ex) {
                J002_SHWxError("W_SETxPmtCstNum", ex);
            }
        }
        function W_CHKbZeroValue(ptStaBuyGet) {
            try {
                var tStaBuy = document.getElementById('otbCfgFTSpmStaBuy').value;
                var bBuyAmt = false;
                var bBuyQty = false;
                var bBuy = false;
                var bGet = false;
                var bBuyMax = false;
                var bBuyMin = false;
                var bGetQty = false;
                
                switch (ptStaBuyGet) {
                    case '1': //Buy
                        bBuy = true;
                        bGet = false;
                        if (tStaBuy == '1' || tStaBuy == '2') {
                            bBuyAmt = true;
                            bBuyQty = false;
                        }
                        else {
                            bBuyAmt = false;
                            bBuyQty = true;
                        }
                        break;
                    case '2': //Get
                        bBuy = false;
                        bGet = true;
                        bBuyAmt = false;
                        bBuyQty = false;
                        break;
                    case '3': //All
                        bBuy = true;
                        bGet = true;
                        if (tStaBuy == '1' || tStaBuy == '2') {
                            bBuyAmt = true;
                            bBuyQty = false;
                        }
                        else {
                            bBuyAmt = false;
                            bBuyQty = true;
                        }
                        break;
                }
                bBuyMax = bBuy;
                bBuyMin = bBuy;
                bGetQty = bGet;
                
                var tUseRange = document.getElementById('otbCfgFTSpmStaUseRange').value;
                if (tUseRange == '1') {
                    bBuyMax = false;
                    bBuyMin = false;
                    bGetQty = false;
                }
                if (bBuyAmt == true && J002_GETcNumber(document.getElementById('otbInpBuyAmt').value) < 1) {
                    alert('<%=ViewData("tMsgBuyAmtIsZero")%>');
                    return true;
                }
                if (bBuyQty == true && J002_GETcNumber(document.getElementById('otbInpBuyQty').value) < 1) {
                    alert('<%=ViewData("tMsgBuyQtyIsZero")%>');
                    return true;
                }
                if (bBuyMin == true && J002_GETcNumber(document.getElementById('otbInpBuyMin').value) < 1) {
                    alert('<%=ViewData("tMsgBuyMinIsZero")%>');
                    return true;
                }
                //ไม่ตรวจสอบ Max เป็น 0 เนื่องจาก MAX เป็น 0 คือ ไม่จำกัดค่าสูงสุด
//                if (bBuyMax == true && document.getElementById('otbInpBuyMax').value < 1) {
//                    alert('Buy Max must more than zero');
//                    return true;
                //                }
                if (bGetQty == true && J002_GETcNumber(document.getElementById('otbInpGetQty').value) < 1) {
                    alert('<%=ViewData("tMsgGetQtyIsZero")%>');
                    return true;
                }
                return false;
            }
            catch (ex) {
                J002_SHWxMsgError('W_CHKxZeroValue', ex);
            }
        }
        
    </script>
    
    <script type="text/javascript">
        window.onload = window_onload;
        window.onunload = window_onunload;
        function window_onload() {
            try {
                J003_SHWxWaiting();
                tJ002_VirtualDirectory = '<%=ViewData("VirtualDirectory") %>';
                tJ003_VirtualDirectory = '<%=ViewData("VirtualDirectory") %>';
                tJ004_VirtualDirectory = '<%=ViewData("VirtualDirectory") %>'; 
                if ('<%=ViewData("AuthorRead") %>'!='1'){
                    var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Read%>';
                    var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
                    var tPwdAllow = '<%=Session("bVB_CNPwdAllow") %>';
                    var bAllow = J002_CHKtCheckAuthorize(tW_Menu, tAuthor, tPwdAllow, tMsgNotAuthorize);
                    if (bAllow == false) {
                        window.location = '<%=Url.Action("Index","Home") %>';
                        return false;
                    } 
                }
                
                var tFedSpmName = '';
                if ('<%=Session("tVB_LastLang") %>'.toUpperCase() == 'EN') {
                    tFedSpmName = 'FTSpmNameEng';
                }
                else {
                    tFedSpmName = 'FTSpmNameTha';
                }
                J002_GETxFieldName(tW_Controller, 'C_GETtFeildName', 'otbFTPmhBchTo', 'otbFTPmhBchToName', 'otbFTPmhBchToOld', 'TCNMBranch', 'FTBchCode', 'FTBchName', '<%=ViewData("tMsgDAT_Notfound001")%>' + '<%=ViewData("olaBranch")%>');
                J002_GETxFieldName(tW_Controller, 'C_GETtFeildName', 'otbFTPmhZneTo', 'otbFTPmhZneToName', 'otbFTPmhZneToOld', 'TCNMZone', 'FTZneCode', 'FTZneName', '<%=ViewData("tMsgDAT_Notfound001")%>' + '<%=ViewData("olaZone")%>');
                W_SETxBchAffect();
                J002_GETxFieldName(tW_Controller, 'C_GETtFeildName', 'otbFTSpmCode', 'otbFTSpmName', 'otbFTSpmCodeOld', 'TSysPmtConfig', 'FTSpmCode', tFedSpmName, '<%=ViewData("tMsgDAT_Notfound001")%>' + '<%=ViewData("olaPmtType")%>');
                
                W_GETxPmtConfig();
                W_SETxPmtObject();
                
                W_GETxUsrAndDptName();
                W_SETxPromotionStatus();
                W_SETxDocDisplayStatus();
                W_SHWxDocStatus('odiNoneApprove', 'odiApprove', 'odiCancel');

                tW_BeforeEditData = W_GETtDataHDString();
            }
            catch (ex) {
                J002_SHWxMsgError('window_onload', ex);
            }
            finally {
                J003_DISxWaiting();
            }
        }
        function window_onunload() {
            try {
                J003_SHWxWaiting();
                //check data change *CH 01-12-11
                //------------------------------------------
//                var tDialogResult = oJ003_DialogResult.Yes;
//                var tStaChange = W_CHKbHasChangeData();
//                if (tStaChange == true) {
//                    tDialogResult = J003_SHWxConfirmDialog('<%=ViewData("tMsgSave_Warning") %>', oJ003_DialogType.DialogYesNoCancel);
//                    switch (tDialogResult) {
//                        case oJ003_DialogResult.Yes: W_DATxSaveDocument(true); break;
//                        case oJ003_DialogResult.Cancel: return false; break;
//                    }
//                }
                //------------------------------------------
            }
            catch (ex) {
                J002_SHWxMsgError('window_onunload', ex);
            }
            finally {
                J003_DISxWaiting();
            }
        }
        function otbFTPmhCode_onblur() {
            if (document.getElementById('otbFTPmhCode').readOnly == true) {
                return false;
            }
            var tDocNo = document.getElementById('otbFTPmhCode').value;
            if (tDocNo == null || tDocNo == document.getElementById('otbFTPmhCodeOld').value) {
                return false;
            }
            if (W_CHKtHasDocNo() == true) {
                var tUrl = '<%=Url.Action("Index","cvcTCNTPmtHD") %>';
                tUrl += '?ptDocNo=' + tDocNo + '&ptAuthorRead=1';
                window.location = tUrl;
            }
        }
        function otbFTPmhCode_onfocus() {
            document.getElementById('otbFTPmhCodeOld').value = document.getElementById('otbFTPmhCodeOld').value; 
        }
        function otbFTPmhCode_onkeydown(ptKeyCode, ptWhich) {
            var tKey = ptKeyCode;
            if (ptWhich != null && ptWhich != '') {
                tKey = ptWhich;
            }
            if (tKey == 13) {
                otbFTPmhCode_onblur();
            }
            return !(tKey == 13);
        }
        function otbFTSpmCode_onblur() {
            var tSpmCode = document.getElementById('otbFTSpmCode').value;
            var tSpmCodeOld = document.getElementById('otbFTSpmCodeOld').value;
            if (tSpmCode == tSpmCodeOld) {
                return false;
            }
            var tCount = W_GETtDataCount();
            if (tCount > 0) {
                document.getElementById('otbFTSpmCode').value = tSpmCodeOld; //เพื่อไม่ให้เค้า event onblur ตอนแสดง message confirm
                bConfirm = confirm('<%= ViewData("tMsgConfirmChangePmt") %>');
                if (bConfirm == true) {
                    W_CLRxDataDTAndCD();
                    W_CLRxClearCondInput();
                }
                else {
                    return false;
                }
                document.getElementById('otbFTSpmCode').value = tSpmCode;
            }
            var tFedSpmName = '';
            if ('<%=Session("tVB_LastLang") %>'.toUpperCase() == 'EN') {
                tFedSpmName = 'FTSpmNameEng';
            }
            else {
                tFedSpmName = 'FTSpmNameTha';
            }
            J002_GETxFieldName(tW_Controller, 'C_GETtFeildName', 'otbFTSpmCode', 'otbFTSpmName', 'otbFTSpmCodeOld', 'TSysPmtConfig', 'FTSpmCode', tFedSpmName, '<%=ViewData("tMsgDAT_Notfound001")%>' + '<%=ViewData("olaPmtType")%>');
            $("#otbFTSpmName").attr({ title: $("#otbFTSpmName").val() }); //*CH 21-02-2013 Tooltip

            W_GETxPmtConfig();
            W_SETxPmtObject();
            var tStaGetNewPri = document.getElementById('otbCfgFTSpmStaGetNewPri').value ;
            var tStaGetDisAmt = document.getElementById('otbCfgFTSpmStaGetDisAmt').value ;
            var tStaGetDisPer = document.getElementById('otbCfgFTSpmStaGetDisPer').value;
            var tStaGetPoint = document.getElementById('otbCfgFTSpmStaGetPoint').value;
            //เป็นโปรโมชั่นที่ให้แต้มแก่สมาชิก ให้ Default สมาชิกไว้ให้เลย
            if (tStaGetNewPri == '2' && tStaGetDisAmt == '2' && tStaGetDisPer == '2' && tStaGetPoint == '1') {
                document.getElementById('ockFTSpmStaChkCst').checked = true;
                document.getElementById('ockFTSpmStaChkCst').disabled = true;
            }
        }
        
        function otbFTSpmCode_onfocus() {
            document.getElementById('otbFTSpmCodeOld').value = document.getElementById('otbFTSpmCode').value;
        }

        function otbFTSpmCode_onkeydown(ptKeyCode,ptWhich) {
            var tKey = ptKeyCode;
            if(ptWhich != null && ptWhich!=''){tKey = ptWhich;}
            if(tKey == 13){
                otbFTSpmCode_onblur();
            }
            return !(tKey == 13);
        }

        function otbFTSplCode_onblur() {
            //Chuck 06102011
            var tSplCode = document.getElementById('otbFTSplCode').value;
            var tSplCodeOld = document.getElementById('otbFTSplCodeOld').value;
            if (tSplCode == tSplCodeOld) {
                return false;
            }
            var tCount = W_GETtDataCount();
            if (tCount > 0) {
                document.getElementById('otbFTSplCode').value = tSplCodeOld; 
                document.getElementById('otbFTSplCode').value = tSplCode;
            }
            var tFedSplName = '';
            if ('<%=Session("tVB_LastLang") %>'.toUpperCase() == 'EN') {
                tFedSplName = 'FTSplName'; //'FTSplNameEng';
            }
            else {
                tFedSplName = 'FTSplName'; //'FTSpmNameTha';
            }
            J002_GETxFieldName(tW_Controller, 'C_GETtFeildName', 'otbFTSplCode', 'otbFTSplName', 'otbFTSplCodeOld', 'TCNMSpl', 'FTSplCode', tFedSplName, '<%=ViewData("tMsgDAT_Notfound001")%>' + '<%=ViewData("ovd_olaSplCode")%>');
            
            //*CH 09-07-2012 บังไว้ไม่ให้หน้ากรอง ใช้ Supplier Code ในส่วน Header เป็นค่า Defalut //*RQ1203-026
            //*CH 30-11-11 ส่งรหัสผู้จำหน่ายในการกรองข้อมูลสินค้า
            //document.getElementById('otbSplFrom').value = document.getElementById('otbFTSplCode').value;
            //document.getElementById('otbSplTo').value = document.getElementById('otbFTSplCode').value;

//            W_GETxPmtConfig();
//            W_SETxPmtObject();
//            var tStaGetNewPri = document.getElementById('otbCfgFTSpmStaGetNewPri').value;
//            var tStaGetDisAmt = document.getElementById('otbCfgFTSpmStaGetDisAmt').value;
//            var tStaGetDisPer = document.getElementById('otbCfgFTSpmStaGetDisPer').value;
//            var tStaGetPoint = document.getElementById('otbCfgFTSpmStaGetPoint').value;
//            //เป็นโปรโมชั่นที่ให้แต้มแก่สมาชิก ให้ Default สมาชิกไว้ให้เลย
//            if (tStaGetNewPri == '2' && tStaGetDisAmt == '2' && tStaGetDisPer == '2' && tStaGetPoint == '1') {
//                document.getElementById('ockFTSpmStaChkCst').checked = true;
//                document.getElementById('ockFTSpmStaChkCst').disabled = true;
//            }
        }
        function otbFTSplCode_onkeydown(ptKeyCode, ptWhich) {
            //Chuck 06102011
            var tKey = ptKeyCode;
            if (ptWhich != null && ptWhich != '') { tKey = ptWhich; }
            if (tKey == 13) {
                otbFTSplCode_onblur();
            }
            return !(tKey == 13);
        }
        function otbFTSplCode_onfocus() {
            document.getElementById('otbFTSplCodeOld').value = document.getElementById('otbFTSplCode').value;
        }
        
        function otbFTPmhBchTo_onfocus() {
            document.getElementById('otbFTPmhBchToOld').value = document.getElementById('otbFTPmhBchTo').value;
        }

        function otbFTPmhBchTo_onblur() {
            if (document.getElementById('otbFTPmhBchToOld').value == document.getElementById('otbFTPmhBchTo').value) {
                return false;
            }
            W_GETxBchName();
            W_SETxBchAffect();
        }
        function otbFTPmhBchTo_onkeydown(ptKeyCode, ptWhich) {
            var tKey = ptKeyCode;
            if (ptWhich != null && ptWhich != '') { tKey = ptWhich; }
            if (tKey == 13) {
                otbFTPmhBchTo_onblur();
            }
            return !(tKey == 13);
        }

        function otbFTPmhZneTo_onfocus() {
            document.getElementById('otbFTPmhZneToOld').value = document.getElementById('otbFTPmhZneTo').value;
        }

        function otbFTPmhZneTo_onblur() {
            if (document.getElementById('otbFTPmhZneToOld').value == document.getElementById('otbFTPmhZneTo').value) {
                return false;
            }
            J002_GETxFieldName(tW_Controller, 'C_GETtFeildName', 'otbFTPmhZneTo', 'otbFTPmhZneToName', 'otbFTPmhZneToOld', 'TCNMZone', 'FTZneCode', 'FTZneName', '<%=ViewData("tMsgDAT_Notfound001")%>' + '<%=ViewData("olaZone")%>');
            W_SETxBchAffect();
        }

        function otbFTPmhZneTo_onkeydown(ptKeyCode, ptWhich) {
            var tKey = ptKeyCode;
            if (ptWhich != null && ptWhich != '') { tKey = ptWhich; }
            if (tKey == 13) {
                otbFTPmhZneTo_onblur();
            }
            return !(tKey == 13);
        }

        function otbInpPerAvg_onkeydown(ptKeyCode, ptWhich) {
            var tKey = ptKeyCode;
            if (ptWhich != null && ptWhich != '') {
                tKey = ptWhich;
            }
            if (tKey == 118) {
                W_DELxCondItem();
                return false;
            }
            if (tKey == 13) {
                if (document.getElementById('otbInpBuyAmt').readOnly == false) {
                    document.getElementById('otbInpBuyAmt').focus();
                    document.getElementById('otbInpBuyAmt').select();
                }
                else {
                    if (document.getElementById('otbInpBuyQty').readOnly == false) {
                        document.getElementById('otbInpBuyQty').focus();
                        document.getElementById('otbInpBuyQty').select();
                    }
                    else {
                        document.getElementById('ocbInpGetCond').focus();
                    }
                }
            }
            return !(tKey == 13);
        }

        function otbInpBuyAmt_onkeydown(ptKeyCode, ptWhich) {
            var tKey = ptKeyCode;
            if (ptWhich != null && ptWhich != '') {
                tKey = ptWhich;
            }
            if (tKey == 118) {
                W_DELxCondItem();
                return false;
            }
            if (tKey == 13) {
                if (document.getElementById('otbInpBuyMin').style.display == "none") {
                    document.getElementById('odtInpBuyMinTime').focus();
                    document.getElementById('odtInpBuyMinTime').select();
                }
                else {
                    document.getElementById('otbInpBuyMin').focus();
                    document.getElementById('otbInpBuyMin').select();
                }
            }
            return !(tKey == 13);
        }

        function otbInpBuyQty_onkeydown(ptKeyCode, ptWhich) {
            var tKey = ptKeyCode;
            if (ptWhich != null && ptWhich != '') {
                tKey = ptWhich;
            }
            if (tKey == 118) {
                W_DELxCondItem();
                return false;
            }
            if (tKey == 13) {
                if (document.getElementById('otbInpBuyMin').style.display == "none") {
                    document.getElementById('odtInpBuyMinTime').focus();
                    document.getElementById('odtInpBuyMinTime').select();
                }
                else {
                    var tUseRange = document.getElementById('otbCfgFTSpmStaUseRange').value;
                    if (tUseRange == '1') {
                        document.getElementById('ocbInpGetCond').focus();
                    }
                    else {
                        document.getElementById('otbInpBuyMin').focus();
                        document.getElementById('otbInpBuyMin').select();
                    }
                }
            }
            return !(tKey == 13);
        }

        function otbInpBuyMin_onkeydown(ptKeyCode, ptWhich) {
            var tKey = ptKeyCode;
            if (ptWhich != null && ptWhich != '') {
                tKey = ptWhich;
            }
            if (tKey == 118) {
                W_DELxCondItem();
                return false;
            }
            if (tKey == 13) {
                document.getElementById('otbInpBuyMax').focus();
                document.getElementById('otbInpBuyMax').select();
            }
            return !(tKey == 13);
        }

        function otbInpBuyMax_onkeydown(ptKeyCode, ptWhich) {
            var tKey = ptKeyCode;
            if (ptWhich != null && ptWhich != '') {
                tKey = ptWhich;
            }
            if (tKey == 118) {
                W_DELxCondItem();
                return false;
            }
            if (tKey == 13) {
                if (document.getElementById('otbInpGetQty').readOnly == true) {
                    W_DATxEditItem()
                }
                else {
                    document.getElementById('ocbInpGetCond').focus();
                }
            }
            return !(tKey == 13);
        }
        
        function ocbInpGetCond_onkeydown(ptKeyCode, ptWhich) {
            var tKey = ptKeyCode;
            if (ptWhich != null && ptWhich != '') {
                tKey = ptWhich;
            }
            if (tKey == 118) {
                W_DELxCondItem();
                return false;
            }
            if (tKey == 13) {
                document.getElementById('otbInpGetValue').focus();
                document.getElementById('otbInpGetValue').select();
            }
            return !(tKey == 13);
        }

        function otbInpGetValue_onkeydown(ptKeyCode, ptWhich) {
            var tKey = ptKeyCode;
            if (ptWhich != null && ptWhich != '') {
                tKey = ptWhich;
            }
            if (tKey == 118) {
                W_DELxCondItem();
                return false;
            }
            if (tKey == 13) {
                // ใส่ทศนิยมไม่ได้ *CH 20-02-2013
                if ($('#ocbInpGetCond').val() == '4') {
                    $('#otbInpGetValue').val(J002_GETnNumber($('#otbInpGetValue').val()));
                    if (W_CHKbZeroValue(document.getElementById('otbStaBuyGet').value) == true) {
                        return false;
                    }
                    W_DATxEditItem();
                } else {
                    document.getElementById('otbInpGetQty').focus();
                    document.getElementById('otbInpGetQty').select();
                }
            }
            return !(tKey == 13);
        }
        function otbInpGetQty_onkeydown(ptKeyCode, ptWhich) {
            var tKey = ptKeyCode;
            if (ptWhich != null && ptWhich != '') {
                tKey = ptWhich;
            }
            if (tKey == 118) {
                var bConfrim = confirm('<%=ViewData("tMsgConfirmDelete") %>');
                if (bConfrim == false) {
                    return false;
                }
                W_DELxCondItem();
                return false;
            }
            if (tKey == 13) {
                if (W_CHKbZeroValue(document.getElementById('otbStaBuyGet').value) == true) {
                    return false;
                }
                W_DATxEditItem();
            }
            return !(tKey == 13);
        }
        function oahGridPdt_onkeydown(ptKeyCode, ptWhich) {
            var tKey = ptKeyCode;
            if (ptWhich != null && ptWhich != '') {
                tKey = ptWhich;
            }
            if (tKey == 118) {
                var bConfrim = confirm('<%=ViewData("tMsgConfirmDelete") %>');
                if (bConfrim == false) {
                    return false;
                }
                W_DELxPdtItem();
            }
            return !(tKey == 118);
        }
        function oahGridExcept_onkeydown(ptKeyCode, ptWhich) {
            var tKey = ptKeyCode;
            if (ptWhich != null && ptWhich != '') {
                tKey = ptWhich;
            }
            if (tKey == 118) {
                var bConfrim = confirm('<%=ViewData("tMsgConfirmDelete") %>');
                if (bConfrim == false) {
                    return false;
                }
                W_DELxExceptItem();
            }
            return !(tKey == 118);
        }
        function oahGridCond_onkeydown(ptKeyCode, ptWhich) {
            var tKey = ptKeyCode;
            if (ptWhich != null && ptWhich != '') {
                tKey = ptWhich;
            }
            if (tKey == 118) {
                var bConfrim = confirm('<%=ViewData("tMsgConfirmDelete") %>');
                if (bConfrim == false) {
                    return false;
                }
                W_DELxCondItem();
            }
            return !(tKey == 118);
        }
        function otbInpPerAvg_onkeypress(ptKeyCode, ptWhich) {
            return J002_CHKbCheckNumOnly(document.getElementById('otbInpPerAvg').value, ptKeyCode, ptWhich);
        }

        function otbInpBuyAmt_onkeypress(ptKeyCode, ptWhich) {
            return J002_CHKbCheckNumOnly(document.getElementById('otbInpBuyAmt').value, ptKeyCode, ptWhich);
        }

        function otbInpBuyQty_onkeypress(ptKeyCode, ptWhich) {
            return J002_CHKbCheckNumOnly(document.getElementById('otbInpBuyQty').value, ptKeyCode, ptWhich);
        }

        function otbInpBuyMax_onkeypress(ptKeyCode, ptWhich) {
            return J002_CHKbCheckNumOnly(document.getElementById('otbInpBuyMax').value, ptKeyCode, ptWhich);
        }

        function otbInpBuyMin_onkeypress(ptKeyCode, ptWhich) {
            return J002_CHKbCheckNumOnly(document.getElementById('otbInpBuyMin').value, ptKeyCode, ptWhich);
        }

        function otbInpGetValue_onkeypress(ptKeyCode, ptWhich) {
            return J002_CHKbCheckNumOnly(document.getElementById('otbInpGetValue').value, ptKeyCode, ptWhich);
        }

        function otbInpGetQty_onkeypress(ptKeyCode, ptWhich) {
            return J002_CHKbCheckNumOnly(document.getElementById('otbInpGetQty').value, ptKeyCode, ptWhich);
        }

        function otbRangeStart_onkeypress(ptKeyCode, ptWhich) {
            return J002_CHKbCheckNumOnly(document.getElementById('otbRangeStart').value, ptKeyCode, ptWhich);
        }

        function otbFTPmhName_onkeypress(ptKeyCode, ptWhich) {
            J002_SETxFocusObj(ptKeyCode, ptWhich, 'otbFTPmhNameSlip', ''); //*CH 18-06-2012
            return J002_CHKbCheckTxtKey(ptKeyCode, ptWhich);
        }

        function otbFTPmhNameSlip_onkeypress(ptKeyCode, ptWhich) {
            return J002_CHKbCheckTxtKey(ptKeyCode, ptWhich);
        }

        function otbFTSpmCode_onkeypress(ptKeyCode, ptWhich) {
            return J002_CHKbCheckTxtKey(ptKeyCode, ptWhich);
        }

        function otbFTPmhRmk_onkeypress(ptKeyCode, ptWhich) {
            return J002_CHKbCheckTxtKey(ptKeyCode, ptWhich);
        }

        function otbFTPmhZneTo_onkeypress(ptKeyCode, ptWhich) {
            return J002_CHKbCheckTxtKey(ptKeyCode, ptWhich);
        }

        function otbFTPmhBchTo_onkeypress(ptKeyCode, ptWhich) {
            return J002_CHKbCheckTxtKey(ptKeyCode, ptWhich);
        }

        function otbFTPmdGrpName_onkeypress(ptKeyCode, ptWhich) {
            return J002_CHKbCheckTxtKey(ptKeyCode, ptWhich);
        }

        function otbPdtFrom_onkeypress(ptKeyCode, ptWhich) {
            var tVal = $('#otbPdtFrom').val();
            J002_SETxFocusObj(ptKeyCode, ptWhich, 'otbPdtTo', tVal); //*CH 18-06-2012
            return J002_CHKbCheckTxtKey(ptKeyCode, ptWhich);
        }

        function otbPdtTo_onkeypress(ptKeyCode, ptWhich) {
            return J002_CHKbCheckTxtKey(ptKeyCode, ptWhich);
        }

        function otbSplFrom_onkeypress(ptKeyCode, ptWhich) {
            var tVal = $('#otbSplFrom').val();
            J002_SETxFocusObj(ptKeyCode, ptWhich, 'otbSptTo', tVal); //*CH 18-06-2012
            return J002_CHKbCheckTxtKey(ptKeyCode, ptWhich);
        }

        function otbSplTo_onkeypress(ptKeyCode, ptWhich) {
            return J002_CHKbCheckTxtKey(ptKeyCode, ptWhich);
        }

        function otbBuyerFrom_onkeypress(ptKeyCode, ptWhich) {
            var tVal = $('#otbBuyerFrom').val();
            J002_SETxFocusObj(ptKeyCode, ptWhich, 'otbBuyerTo', tVal); //*CH 18-06-2012
            return J002_CHKbCheckTxtKey(ptKeyCode, ptWhich);
        }

        function otbBuyerTo_onkeypress(ptKeyCode, ptWhich) {
            return J002_CHKbCheckTxtKey(ptKeyCode, ptWhich);
        }

        function otbBrandFrom_onkeypress(ptKeyCode, ptWhich) {
            var tVal = $('#otbBrandFrom').val();
            J002_SETxFocusObj(ptKeyCode, ptWhich, 'otbBrandTo', tVal); //*CH 18-06-2012
            return J002_CHKbCheckTxtKey(ptKeyCode, ptWhich);
        }

        function otbBrandTo_onkeypress(ptKeyCode, ptWhich) {
            return J002_CHKbCheckTxtKey(ptKeyCode, ptWhich);
        }

        function otbDCS_onkeypress(ptKeyCode, ptWhich) {
            return J002_CHKbCheckTxtKey(ptKeyCode, ptWhich);
        }

        function otbDCSc_onkeypress(ptKeyCode, ptWhich) {
            return J002_CHKbCheckTxtKey(ptKeyCode, ptWhich);
        }

        function otbDCSd_onkeypress(ptKeyCode, ptWhich) {
            return J002_CHKbCheckTxtKey(ptKeyCode, ptWhich);
        }

        function otbDCSs_onkeypress(ptKeyCode, ptWhich) {
            return J002_CHKbCheckTxtKey(ptKeyCode, ptWhich);
        }

        function otbInpBuyMin_onkeyup() {
            var tObjId = '';
            var tBuyMin =document.getElementById('otbInpBuyMin').value;
            if (document.getElementById('otbInpBuyAmt').readOnly == false) {
                tObjId = 'otbInpBuyAmt';
            }
            else {
                tObjId = 'otbInpBuyQty';
            }
            var tGetCond = document.getElementById('ocbInpGetCond').value;
            //if (tGetCond != '4') { //Point
                document.getElementById(tObjId).value = document.getElementById('otbInpBuyMin').value;
            //}
        }

        function otbInpBuyAmt_onkeyup() {
            var tGetCond = document.getElementById('ocbInpGetCond').value;
            //if (tGetCond != '4') { //Point
            //*CH 01-12-11 เพื่อให้ซื้อขั้นต่ำเปลี่ยนแปลงไปตามซื้อครบมูลค่า
                document.getElementById('otbInpBuyMin').value = document.getElementById('otbInpBuyAmt').value;
            //}
        }

        function otbInpBuyQty_onkeyup() {
            var tGetCond = document.getElementById('ocbInpGetCond').value;
            //if (tGetCond != '4') { //Point
                document.getElementById('otbInpBuyMin').value = document.getElementById('otbInpBuyQty').value;
            //}
        }

        function ocbFTPmhStaLimitCst_onchange() {
            if (document.getElementById('ocbFTPmhStaLimitCst').value == 2 && document.getElementById('ockFTSpmStaChkCst').disabled == false) {
                document.getElementById('ockFTSpmStaChkCst').checked = true;
            }
        }

        function otbInpPerAvg_onfocus() {
            W_SETxSelectedColor('otaHDPerAvgDis');
        }

        function otbInpPerAvg_onblur() {
            W_SETxSelectedColor('otaHDPerAvgDis');
        }

        function otbInpBuyAmt_onfocus() {
            W_SETxSelectedColor('otaHDButAmt');
        }

        function otbInpBuyAmt_onblur() {
            W_SETxSelectedColor('otaHDButAmt');
            var tBuyAmt = document.getElementById('otbInpBuyAmt').value;
            var tGetCond = document.getElementById('ocbInpGetCond').value;
            var tBuyMin = document.getElementById('otbInpBuyMin').value;
            if (tGetCond == '4') { //Point
                //if (Number(document.getElementById('otbInpBuyMin').value) < Number(tBuyAmt)) {
                if (Number(tBuyMin) < Number(tBuyAmt)) {
                    document.getElementById('otbInpBuyMin').value = tBuyAmt;
                }
            }
        }

        function otbInpBuyQty_onfocus() {
            W_SETxSelectedColor('otaHDBuyQty');
        }

        function otbInpBuyQty_onblur() {
            W_SETxSelectedColor('otaHDBuyQty');
            var tBuyQty = document.getElementById('otbInpBuyQty').value;
            var tGetCond = document.getElementById('ocbInpGetCond').value;
            if (tGetCond == '4') { //Point
                if (Number(document.getElementById('otbInpBuyMin').value) < Number(tBuyQty)) {
                    document.getElementById('otbInpBuyMin').value = tBuyQty;
                }
            }
        }

        function otbInpBuyMin_onfocus() {
            W_SETxSelectedColor('otaHDBuyMinQty');
        }

        function otbInpBuyMin_onblur() {
            W_SETxSelectedColor('otaHDBuyMinQty');
            var tObjId = '';
            var tBuyMin = document.getElementById('otbInpBuyMin').value;
            if (document.getElementById('otbInpBuyAmt').readOnly == false) {
                tObjId = 'otbInpBuyAmt';
            }
            else {
                tObjId = 'otbInpBuyQty';
            }
            var tGetCond = document.getElementById('ocbInpGetCond').value;
            if (tGetCond == '4') { //Point
                if (Number(document.getElementById(tObjId).value) > Number(tBuyMin)) {
                    document.getElementById(tObjId).value = tBuyMin;
                }
            }
        }

        function otbInpBuyMax_onfocus() {
            W_SETxSelectedColor('otaHDBuyMaxQty');
        }

        function otbInpBuyMax_onblur() {
            W_SETxSelectedColor('otaHDBuyMaxQty');
        }

        function odtInpBuyMinTime_onfocus() {
            W_SETxSelectedColor('otaHDBuyMinTime');
        }

        function odtInpBuyMinTime_onblur() {
            W_SETxSelectedColor('otaHDBuyMinTime');
        }

        function odtInpBuyMaxTime_onfocus() {
            W_SETxSelectedColor('otaHDBuyMaxTime');
        }

        function odtInpBuyMaxTime_onblur() {
            W_SETxSelectedColor('otaHDBuyMaxTime');
        }

        function ocbInpGetCond_onfocus() {
            W_SETxSelectedColor('otaHDGetCondTxt');
        }

        function ocbInpGetCond_onblur() {
            W_SETxSelectedColor('otaHDGetCondTxt');
        }

        function otbInpGetValue_onfocus() {
            W_SETxSelectedColor('otaHDGetValue');
        }

        function otbInpGetValue_onblur() {
            W_SETxSelectedColor('otaHDGetValue');
        }

        function otbInpGetQty_onfocus() {
            W_SETxSelectedColor('otaHDGetQty');
        }

        function otbInpGetQty_onblur() {
            W_SETxSelectedColor('otaHDGetQty');
        }
        function odtInpBuyMinTime_onkeydown(ptKeyCode,ptWhich) {
            var tKey = ptKeyCode;
            if (ptWhich != null && ptWhich != ''){
                tKey = ptWhich;
            }
            if (tKey == 13){
                document.getElementById("odtInpBuyMaxTime").focus();
                document.getElementById("odtInpBuyMaxTime").select();
            }
            return !(tKey == 13);
        }
        function odtInpBuyMaxTime_onkeydown(ptKeyCode, ptWhich) {
            var tKey = ptKeyCode;
            if (ptWhich != null && ptWhich != '') {
                tKey = ptWhich;
            }
            if (tKey == 13) {
                document.getElementById("ocbInpGetCond").focus();
            }
            return !(tKey == 13);
        }
        function otbRangeStart_onkeyup() {
            if (document.getElementById("otbRangeStart").value < 1) {
                document.getElementById("otbRangeStart").value = 1;
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
        function otbInpGetValue_onkeyup() {
            W_CHKxInputValue();
            W_SETbFreePdtAndReceiveAtCounter();
        }

        function W_SETxSelectMember() {
            if (document.getElementById('otbCfgFTSpmStaGetPoint').value == '1') {
                if (document.getElementById('ocbInpGetCond').value == '4') {//Point condition
                    document.getElementById('ockFTSpmStaChkCst').checked = true;
                    document.getElementById('ockFTSpmStaChkCst').disabled = true;
                }
                else {
                    document.getElementById('ockFTSpmStaChkCst').disabled = false;
                }
            }
        }

        function ocbInpGetCond_onchange() {
            W_CHKxInputValue();
            W_SETxInputValue();
            W_SETbFreePdtAndReceiveAtCounter();
            W_SETxSelectMember();
            W_SETxPmtCstNum();
            otbInpBuyMin_onkeyup();
        }

        function ockFTSpmStaRcvFree_onclick() {
            W_SETbFreePdtAndReceiveAtCounter();
        }

        function otbFTPmhNameSlip_onkeypressChkLen(ptKeyCode, ptWhich) {
            /*
            --------------------------------------------------------------------------------
            Cmt:   ฟังก์ชั่นสำหรับ ตรวจขนาดตัวอักษร และ ตัวอักขระพิเศษ
            Cmt:   false เป็นอักขระพิเศษห้ามคีย์ และ length > 25 True : ไม่เป็นอักขระพิเศษ และ length < 26
            --------------------------------------------------------------------------------
            */
            var tKeyCode;
            if (ptKeyCode != null) { tKeyCode = ptKeyCode; }
            if (ptWhich != null) { tKeyCode = ptWhich; }
            J002_SETxFocusObj(ptKeyCode, ptWhich, 'otbFTSpmCode', ''); //*CH 18-06-2012
            if (tKeyCode != 124 || tKeyCode != 39 || tKeyCode != 34 || tKeyCode != 35) {// ' " | #
                
                var tPmhNameSlip = document.getElementById('otbFTPmhNameSlip').value;
                var nPmhNameSlipLen = tPmhNameSlip.length
                //alert("ชื่อย่อ Len : " + nPmhNameSlipLen);

                if (nPmhNameSlipLen < 25) { return true; }
                else { return false; }
            }
            return false;
        }
    </script>
    
</asp:Content>

