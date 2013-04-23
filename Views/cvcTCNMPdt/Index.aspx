<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage(Of Adasoft.WebPos.Models.cmlTCNMPdt)" %>

<%@ Import Namespace="System.Resources" %>
<%@ Import Namespace="AdaWebPos" %>
<%@ Import Namespace="Adasoft.WebPos.Models" %>
<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim oCulture As System.Globalization.CultureInfo
        If Session("tVB_LastLang") Is Nothing OrElse Session("tVB_LastLang") = "" Then
            oCulture = New System.Globalization.CultureInfo("EN")
        Else
            oCulture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
        End If
        Resources.resGBMsg.Culture = oCulture
        Resources.resGBGridHeader.Culture = oCulture
        Resources.resGBChangeValue.Culture = oCulture
        Resources.resGBBrwPdtGrp.Culture = oCulture
        AdaWebPos.My.Resources.resLCcvcTCNTPdtPmtHD.Culture = oCulture
        AdaWebPos.My.Resources.resLCcvcPdt.Culture = oCulture
        AdaWebPos.My.Resources.resLCcvcProduct.Culture = oCulture
        AdaWebPos.My.Resources.resLCcvcCNBrw.Culture = oCulture
        
        'Message
        ViewData("tMsgDAT_Notfound001") = Resources.resGBMsg.tMsgDAT_Notfound001
        ViewData("tMsgDupKey") = Resources.resGBMsg.tMsgDupKey
        ViewData("tMsgChkDel") = Resources.resGBMsg.tMsgChkDel
        ViewData("tMsgYesOrNo") = Resources.resGBMsg.tMsgYesOrNo
        ViewData("tMsgErrorData") = Resources.resGBMsg.tMsgErrorData
        
        'Browse        
        ViewData("olaOK") = AdaWebPos.My.Resources.resLCcvcCNBrw.olaOK
        ViewData("olaCancel") = AdaWebPos.My.Resources.resLCcvcCNBrw.olaCancel
        ViewData("olaFilterBy") = AdaWebPos.My.Resources.resLCcvcCNBrw.olaFilterBy
        ViewData("olaFil") = AdaWebPos.My.Resources.resLCcvcCNBrw.olaFil
        
        ViewData("olaMenuName") = AdaWebPos.My.Resources.resLCcvcProduct.olaMenuName
        
        'Tab Master
        ViewData("olaSave1") = AdaWebPos.My.Resources.resLCcvcPdt.olaSave1
        ViewData("olaSave2") = AdaWebPos.My.Resources.resLCcvcPdt.olaSave2
        ViewData("olaPriceByBch") = AdaWebPos.My.Resources.resLCcvcPdt.olaPriceByBch
        
        'Tab Define
        ViewData("olaDefine1") = AdaWebPos.My.Resources.resLCcvcPdt.olaDefine1
        ViewData("olaDefine2") = AdaWebPos.My.Resources.resLCcvcPdt.olaDefine2
        ViewData("olaDefine3") = AdaWebPos.My.Resources.resLCcvcPdt.olaDefine3
                
        'ปุ่ม
        ViewData("olatMsgAdd") = Resources.resGBMsg.tMsgAdd
        ViewData("olatMsgSave") = Resources.resGBMsg.tMsgSave
        ViewData("olatMsgFind") = Resources.resGBMsg.tMsgFind
        ViewData("olatMsgDelete") = Resources.resGBMsg.tMsgDelete
        ViewData("olatMsgCancel") = Resources.resGBMsg.tMsgCancel
        ViewData("olatMsgPost") = Resources.resGBMsg.tMsgPost
        ViewData("olatMsgCopy") = Resources.resGBMsg.tMsgCopy
        ViewData("olaMenuExit") = Resources.resGBMenuName.omnExit
        ViewData("olaMenuHome") = Resources.resGBMenuName.omnHome
        ViewData("oimgGencode") = Url.Content(Resources.resGBImageList.oimgGencode)
        ViewData("oimgBrowse") = Url.Content(Resources.resGBImageList.oimgBrowse)
        ViewData("oimgGenLock") = Url.Content(Resources.resGBImageList.oimgGenLock)
        ViewData("oimgBrwLock") = Url.Content(Resources.resGBImageList.oimgBrwLock)
        
        'สถานะเอกสาร        
        ViewData("olatMsgDoc_NonApp") = Resources.resGBMsg.tMsgDoc_NonApp
        ViewData("olatMsgNoEdit") = Resources.resGBMsg.tMsgNoEdit
        ViewData("olatMsgDoc_App") = Resources.resGBMsg.tMsgDoc_App
        ViewData("oimgAppv") = Url.Content(Resources.resGBImageList.oimgAppv)
        ViewData("oimgNoAppv") = Url.Content(Resources.resGBImageList.oimgNoAppv)
        ViewData("oimgPCRemove") = Url.Content(Resources.resGBImageList.oimgPCRemove)
        
        'Label
        ViewData("olaFTPdtCode") = AdaWebPos.My.Resources.resLCcvcPdt.olaFTPdtCode
        ViewData("olaFTPdtName") = AdaWebPos.My.Resources.resLCcvcPdt.olaFTPdtName
        ViewData("olaFTPdtNameOth") = AdaWebPos.My.Resources.resLCcvcPdt.olaFTPdtNameOth
        ViewData("olaFTPgpChainName") = AdaWebPos.My.Resources.resLCcvcPdt.olaFTPgpChainName
        ViewData("olaFTPdtStkCode") = AdaWebPos.My.Resources.resLCcvcPdt.olaFTPdtStkCode
        ViewData("olaFCPdtStkFac") = AdaWebPos.My.Resources.resLCcvcPdt.olaFCPdtStkFac
        ViewData("olaFTPbnCode") = AdaWebPos.My.Resources.resLCcvcPdt.olaFTPbnCode
        ViewData("olaFTPmoCode") = AdaWebPos.My.Resources.resLCcvcPdt.olaFTPmoCode
        ViewData("olaFTPtyCode") = AdaWebPos.My.Resources.resLCcvcPdt.olaFTPtyCode
        ViewData("olaFTClrCode") = AdaWebPos.My.Resources.resLCcvcPdt.olaFTClrCode
        ViewData("olaFTPszCode") = AdaWebPos.My.Resources.resLCcvcPdt.olaFTPszCode
        ViewData("olaFTUsrCode") = AdaWebPos.My.Resources.resLCcvcPdt.olaFTUsrCode
        ViewData("olaFTPdtVatType") = AdaWebPos.My.Resources.resLCcvcPdt.olaFTPdtVatType
        ViewData("olaFTPdtStkControl") = AdaWebPos.My.Resources.resLCcvcPdt.olaFTPdtStkControl
        ViewData("olaFTPdtPoint") = AdaWebPos.My.Resources.resLCcvcPdt.olaFTPdtPoint
        ViewData("olaFTPdtNoDis") = AdaWebPos.My.Resources.resLCcvcPdt.olaFTPdtNoDis
        ViewData("olaFTPdtGrpControl") = AdaWebPos.My.Resources.resLCcvcPdt.olaFTPdtGrpControl
        ViewData("olaFTPdtConType") = AdaWebPos.My.Resources.resLCcvcPdt.olaFTPdtConType
        ViewData("olaFTPdtStaActive") = AdaWebPos.My.Resources.resLCcvcPdt.olaFTPdtStaActive
        ViewData("olaFTPdtStaTouch") = AdaWebPos.My.Resources.resLCcvcPdt.olaFTPdtStaTouch
        ViewData("olaFTPdtStaAlwBuy") = AdaWebPos.My.Resources.resLCcvcPdt.olaFTPdtStaAlwBuy
        ViewData("olaFTPdtSrn") = AdaWebPos.My.Resources.resLCcvcPdt.olaFTPdtSrn
        ViewData("olaFTPdtStaAlwRepack") = AdaWebPos.My.Resources.resLCcvcPdt.olaFTPdtStaAlwRepack
        ViewData("olaPdtPrice") = AdaWebPos.My.Resources.resLCcvcPdt.olaPrice
        ViewData("olaBarCode") = AdaWebPos.My.Resources.resLCcvcPdt.olaBarCode
        ViewData("olaUnitCode") = AdaWebPos.My.Resources.resLCcvcPdt.olaUnitCode
        ViewData("olaUnitName") = AdaWebPos.My.Resources.resLCcvcPdt.olaUnitName
        ViewData("olaPdtCodeRef") = AdaWebPos.My.Resources.resLCcvcPdt.olaPdtCodeRef
        ViewData("olaFCPdtSFactor") = AdaWebPos.My.Resources.resLCcvcPdt.olaFCPdtSFactor
        ViewData("olaFCPdtRetPriS1") = AdaWebPos.My.Resources.resLCcvcPdt.olaFCPdtRetPriS1
        ViewData("olaFCPdtRetPriS2") = AdaWebPos.My.Resources.resLCcvcPdt.olaFCPdtRetPriS2
        ViewData("olaFCPdtRetPriS3") = AdaWebPos.My.Resources.resLCcvcPdt.olaFCPdtRetPriS3
        ViewData("olaFCPdtWhsPriS1") = AdaWebPos.My.Resources.resLCcvcPdt.olaFCPdtWhsPriS1
        ViewData("olaFCPdtWhsPriS2") = AdaWebPos.My.Resources.resLCcvcPdt.olaFCPdtWhsPriS2
        ViewData("olaFCPdtWhsPriS3") = AdaWebPos.My.Resources.resLCcvcPdt.olaFCPdtWhsPriS3
        ViewData("olaFCPdtWhsPriS4") = AdaWebPos.My.Resources.resLCcvcPdt.olaFCPdtWhsPriS4
        ViewData("olaFCPdtWhsPriS5") = AdaWebPos.My.Resources.resLCcvcPdt.olaFCPdtWhsPriS5
        ViewData("olaRetPrice") = AdaWebPos.My.Resources.resLCcvcPdt.olaRetPrice
        ViewData("olaWhsPrice") = AdaWebPos.My.Resources.resLCcvcPdt.olaWhsPrice
        ViewData("olaCreate") = AdaWebPos.My.Resources.resLCcvcPdt.olaCreate
                
        'Image 
        ViewData("oimgCreate") = Url.Content(Resources.resGBImageList.oimgCreate)
        ViewData("oimDelete") = Url.Content(Resources.resGBImageList.oimDelete)
        ViewData("oimNo") = Url.Content(Resources.resGBImageList.oimNo)
        ViewData("oimYes") = Url.Content(Resources.resGBImageList.oimYes)
        ViewData("oimgCreateLock") = Url.Content(Resources.resGBImageList.oimgCreateLock)
        ViewData("oimgChangeValue") = Url.Content(Resources.resGBImageList.oimgChangeValue)
        
        'Header Browse Grid
        ViewData("olaBrowse") = Resources.resGBGridHeader.olaBrowse
        ViewData("olaChangeValue") = Resources.resGBGridHeader.olaChangeValue
        ViewData("olaExpand") = Resources.resGBBrwPdtGrp.olaExpand
        ViewData("olaBrwPdtGrp") = Resources.resGBBrwPdtGrp.olaTitle
        
        'Change Value
        ViewData("olaOldValue") = Resources.resGBChangeValue.olaOldValue
        ViewData("olaNewValue") = Resources.resGBChangeValue.olaNewValue
        ViewData("olaNewValueCal") = Resources.resGBChangeValue.olaNewValueCal
        ViewData("olaDecreaseAmt") = Resources.resGBChangeValue.olaDecreaseAmt
        ViewData("olaDecreasePercent") = Resources.resGBChangeValue.olaDecreasePercent
        ViewData("olaIncreaseAmt") = Resources.resGBChangeValue.olaIncreaseAmt
        ViewData("olaIncreasePercent") = Resources.resGBChangeValue.olaIncreasePercent
        
        W_SETxLangCulture()
    End Sub
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
        System.Threading.Thread.CurrentThread.CurrentUICulture.DateTimeFormat = oDateTimeInfo
        System.Threading.Thread.CurrentThread.CurrentCulture.DateTimeFormat = oDateTimeInfo
    End Sub
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	<%=ViewData("olaMenuName")%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <input id="otbFTPdtCodeOld" type="hidden" />
    <input id="otbFTPbnCodeOld" type="hidden" />
    <input id='otbFTPmoCodeOld' type="hidden" />
    <input id='otbFTPtyCodeOld' type="hidden" />
    <input id='otbFTClrCodeOld' type="hidden" />
    <input id='otbFTPszCodeOld' type="hidden" />
    <input id='otbFTUsrCodeOld' type="hidden" />
    <input id='otbFTPgpChain' type="hidden" />
    <div  id="odiMain" class ="xCN_AllFontFamily xCN_AllFontSize xCN_AllFontColor xW_DivMain">
        <%-------------------เมนูด้านบนสุด---------------------------%>
        <div id="odiMenuTop" class ="xCN_AllBorderColor xW_DivMainMenu">
            <div id="odiMenu" class="xCN_DivMenu">
                <div id="odiMenuHome" class="xCN_DivMenuHome" style="float: left;">
                    <a onclick="W_FRMxClose('1')" href="javascript:void(0)">
                        <div class="xCN_DivMenuHomeCaption">
                            <%=ViewData("olaMenuHome")%>
                        </div>
                    </a>
                </div>
                <div id ="odiMenuNew" class="xCN_DivMenuNew">
                    <a href="javascript:void(0);" onclick="W_FRWxNewProduct()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olatMsgAdd")%>
                        </div>
                    </a>
                </div> 
                <div id ="odiMenuSave" class="xCN_DivMenuSave" style="float:left;">
                    <a href="javascript:void(0);" onclick="W_DATxSavePdt()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olatMsgSave")%>
                        </div>
                    </a>
                </div>
                <div id ="odiMenuSearch" class="xCN_DivMenuSearch" style="float:left;">
                    <a href="javascript:void(0);" onclick="W_FRMxFindPdt()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olatMsgFind")%>
                        </div>
                    </a>
                </div>  
                <div id ="odiMenuDelete" class="xCN_DivMenuDelete" style="float:left;">
                    <a href="javascript:void(0);"  onclick="W_FRMxDelPdt()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olatMsgDelete")%>
                        </div>
                    </a>
                </div>
                <div id ="odiMenuCoppy" class="xCN_DivMenuCoppy" style="float:left;">
                    <a href="javascript:void(0);" onclick="W_FRMxCopyPdt()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olatMsgCopy")%>
                        </div>
                    </a>
                </div>
                <div id="odiMenuExit" class="xCN_DivMenuLogOut" style="float: left;">
                    <a onclick="W_FRMxClose('2')" href="javascript:void(0)">
                        <div class="xCN_DivMenuLogOutCaption">
                            <%=ViewData("olaMenuExit")%>
                        </div>
                    </a>
                </div>
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
                    <div id="odiNoneApprove" class ="xW_DivDocStatus" style ="display:none;">
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
        <%------------------- Master ---------------------------%>
        <div id="odiMaster" class="xCN_AllBackgroundColor xW_DivMaster">
            <!-- Tab Menu -->
            <div class="xCN_DivTabToppic xW_DivSize100 xW_Margin1" style="margin:4px 0px 0px 4px" >
                <!-- บันทึก1 -->
                <a href="javascript:void(0);" 
                    onclick="{J010_SHWxTabData(0,'odiSave1','odiSave2','odiPrice');
                        J009_SHWxTabTop(0,'odiDiv_Toppic1','odiDiv_Toppic2','odiDiv_Toppic3')}">
                    <div id="odiDiv_Toppic1" class="xCN_DivTabActive xW_DivTabToppicLabel" >
                        <%=ViewData("olaSave1")%>
                    </div>
                </a>
                <!-- บันทึก2 -->
                <a href="javascript:void(0);" 
                    onclick="W_DISxDisplayNone('odiSave2');{J010_SHWxTabData(1,'odiSave1','odiSave2','odiPrice');
                        J009_SHWxTabTop(1,'odiDiv_Toppic1','odiDiv_Toppic2','odiDiv_Toppic3')}">
                    <div id="odiDiv_Toppic2" class="xCN_DivTabUnActive xW_DivTabToppicLabel" >
                        <%=ViewData("olaSave2")%>
                    </div>
                </a>
                <!-- ราคาตามสาขา -->
                <a href="javascript:void(0);" 
                    onclick="W_DISxDisplayNone('odiPrice');{J010_SHWxTabData(2,'odiSave1','odiSave2','odiPrice');
                        J009_SHWxTabTop(2,'odiDiv_Toppic1','odiDiv_Toppic2','odiDiv_Toppic3')}">
                    <div id="odiDiv_Toppic3" class="xCN_DivTabUnActive xW_DivTabToppicLabel" >
                        <%=ViewData("olaPriceByBch")%>
                    </div>
                </a>
            </div>
            <div class='xCN_AllBackgroundColor xCN_AllBorderColor xCN_DivMainMenuPage xW_DivHeight1'>
                <!-- บันทึก1 -->
                <div id='odiSave1' class='xCN_DivTabDetail xW_Margin2'>
                    <div class="xCN_AllBackgroundColor xW_DivTabMaster">
                        <div class='xW_DivMasterData xCN_AllBackgroundColor xCN_AllBorderColor'>
                            <!-- div Master _01 -->
                            <div class='xW_DivMasterData xW_DivWidthMaster1 xCN_AllBackgroundColor xCN_AllBorderColor' >
                                <!-- รหัส -->
                                <div class="xW_DivMasterDataRow">
                                    <div class="xW_DivMasterLabel xCN_AllFontColorTextReq">
                                        <%=ViewData("olaFTPdtCode")%>
                                    </div>
                                    <div class="xW_DivPdtData">
                                        <input id="otbFTPdtCode"
                                            type="text" 
                                            class="xW_InputGeneral xW_InputWidth02 xCN_AllReadOnlyBGColor"
                                            readonly="readonly" 
                                            onfocus="J002_SETxKeepOldOnfocus('otbFTPdtCode','otbFTPdtCodeOld')"
                                            onkeypress="W_DATxPdtCodeEnter(event.keyCode,event.which)"
                                            onblur="otbFTPdtCode_onblur()"/>
                                        <img id="oimGenPdtCode" alt="" 
                                            class="xCN_ImgBrowData xW_ImgBrowseData" 
                                            onclick="W_GENxProductCode()"
                                            name="oimGenPdtCode" 
                                            src='<%=ViewData("oimgGencode")%>' />
                                    </div>
                                </div>
                                <!-- ชื่อ -->
                                <div class="xW_DivMasterDataRow">
                                    <div class="xW_DivMasterLabel xCN_AllFontColorTextReq">
                                        <%=ViewData("olaFTPdtName")%>
                                    </div>
                                    <div class="xW_DivPdtData">
                                        <input id="otbFTPdtName" value="" 
                                            type="text" 
                                            class="xW_InputGeneral xW_InputWidth01"
                                            onkeypress="W_DATxPdtNameEnter(event.keyCode,event.which)"
                                            onblur="otbFTPdtName_onblur()" />
                                    </div>
                                </div>
                                <!-- ชื่ออื่น -->
                                <div class="xW_DivMasterDataRow">
                                    <div class="xW_DivMasterLabel">
                                        <%=ViewData("olaFTPdtNameOth")%>
                                    </div>
                                    <div class="xW_DivPdtData">
                                        <input id="otbPdtnameOth"
                                            type="text" 
                                            class="xW_InputGeneral xW_InputWidth01" />
                                    </div>
                                </div>
                                <!-- กลุ่มสินค้า -->
                                <div class="xW_DivMasterDataRow">
                                    <div class="xW_DivMasterLabel">
                                        <%=ViewData("olaFTPgpChainName")%>
                                    </div>
                                    <div class="xW_DivPdtData">
                                        <input id="otbFTPgpChainName" value="" 
                                            type="text" 
                                            class="xW_InputGeneral xW_InputWidth02 xCN_AllReadOnlyBGColor"
                                            readonly="readonly" />
                                        <img id="oimBrwPdtGrp" alt="" 
                                            class="xCN_ImgBrowData xW_ImgBrowseData" 
                                            onclick=""
                                            name="oimBrwPdtGrp" 
                                            src='<%=ViewData("oimgBrowse")%>' />
                                    </div>
                                </div>
                                <!-- รหัสตัดสต๊อก -->
                                <div class="xW_DivMasterDataRow">
                                    <div class="xW_DivMasterLabel">
                                        <%=ViewData("olaFTPdtStkCode")%>
                                    </div>
                                    <div class="xW_DivPdtData">
                                        <input id="otbFTPdtStkCode" value="" 
                                            type="text" 
                                            class="xW_InputGeneral xW_InputWidth02 xCN_AllReadOnlyBGColor"
                                            readonly="readonly" />
                                        <img id="oimBrwStk" alt="" 
                                            class="xCN_ImgBrowData xW_ImgBrowseData" 
                                            onclick=""
                                            name="oimBrwStk" 
                                            src='<%=ViewData("oimgBrowse")%>' />
                                        <%--<button class='xW_ImageButton'></button>--%>
                                    </div>
                                </div>
                                <!-- อัตราส่วน -->
                                <div class="xW_DivMasterDataRow">
                                    <div class="xW_DivMasterLabel">
                                        <%=ViewData("olaFCPdtStkFac")%>
                                    </div>
                                    <div class="xW_DivPdtData"  style="margin-bottom:5px">
                                        <input id="otbFCPdtStkFac" value="" 
                                            type="text" 
                                            class="xW_InputGeneral xW_InputWidth02 xW_InputAlignRight xCN_AllReadOnlyBGColor"
                                            readonly="readonly" />
                                        <img id="oimgChangeValue" alt="" 
                                            class="xCN_ImgBrowData xW_ImgBrowseData" 
                                            onclick="W_SHWxShowDialogChangeVal('otbFCPdtStkFac')"
                                            name="oimgChangeValue" 
                                            src='<%=ViewData("oimgChangeValue")%>' />
                                    </div>
                                </div>
                            </div>
                            <!-- div Master_02 -->
                            <div class='xW_DivMasterData xW_DivWidthMaster2 xCN_AllBackgroundColor xCN_AllBorderColor'>
                                <!-- ยี่ห้อ -->
                                <div class="xW_DivMasterDataRow">
                                    <div class="xW_DivMasterLabel">
                                        <%=ViewData("olaFTPbnCode")%>
                                    </div>
                                    <div class="xW_DivPdtData2">
                                        <input id="otbFTPbnCode" value="" 
                                            type="text"
                                            onfocus="J002_SETxKeepOldOnfocus('otbFTPbnCode','otbFTPbnCodeOld')"
                                            onkeydown="otbFTPbnCode_onkeyDown(event.keyCode,event.which)" 
                                            onblur="otbFTPbnCode_onblur()"
                                            class="xW_InputGeneral xW_InputWidth03" />
                                        <img id="oimGetPdtBrand" alt="" 
                                            class="xCN_ImgBrowData xW_ImgBrowseData" 
                                            onclick=""
                                            name="oimGetPdtBrand" 
                                            src='<%=ViewData("oimgBrowse")%>' />
                                        <input id="otbFTPbnName"
                                            type="text" 
                                            class="xW_InputGeneral xW_InputWidth04 xCN_AllReadOnlyBGColor"
                                            readonly="readonly" />
                                    </div>
                                </div>
                                <!-- รุ่น -->
                                <div class="xW_DivMasterDataRow">
                                    <div class="xW_DivMasterLabel">
                                        <%=ViewData("olaFTPmoCode")%>
                                    </div>
                                    <div class="xW_DivPdtData2">
                                        <input id="otbFTPmoCode" value="" 
                                            type="text" 
                                            onfocus="J002_SETxKeepOldOnfocus('otbFTPmoCode','otbFTPmoCodeOld')"
                                            onkeydown="otbFTPmoCode_onkeyDown(event.keyCode,event.which)" 
                                            onblur="otbFTPmoCode_onblur()"
                                            class="xW_InputGeneral xW_InputWidth03" />
                                        <img id="oimGetPdtModel" alt="" 
                                            class="xCN_ImgBrowData xW_ImgBrowseData" 
                                            onclick=""
                                            name="oimGetPdtModel" 
                                            src='<%=ViewData("oimgBrowse")%>' />
                                        <input id="otbFTPmoName"
                                            type="text" 
                                            class="xW_InputGeneral xW_InputWidth04 xCN_AllReadOnlyBGColor"
                                            readonly="readonly" />
                                    </div>
                                </div>
                                <!-- ประเภท -->
                                <div class="xW_DivMasterDataRow">
                                    <div class="xW_DivMasterLabel">
                                        <%=ViewData("olaFTPtyCode")%>
                                    </div>
                                    <div class="xW_DivPdtData2">
                                        <input id="otbFTPtyCode" value="" 
                                            type="text"                                             
                                            onfocus="J002_SETxKeepOldOnfocus('otbFTPtyCode','otbFTPtyCodeOld')"
                                            onkeydown="otbFTPtyCode_onkeyDown(event.keyCode,event.which)" 
                                            onblur="otbFTPtyCode_onblur()"
                                            class="xW_InputGeneral xW_InputWidth03" />
                                        <img id="oimGetPdtType" alt="" 
                                            class="xCN_ImgBrowData xW_ImgBrowseData" 
                                            onclick=""
                                            name="oimGetPdtType" 
                                            src='<%=ViewData("oimgBrowse")%>' />
                                        <input id="otbFTPtyName"
                                            type="text" 
                                            class="xW_InputGeneral xW_InputWidth04 xCN_AllReadOnlyBGColor"
                                            readonly="readonly" />
                                    </div>
                                </div>
                                <!-- สี -->
                                <div class="xW_DivMasterDataRow">
                                    <div class="xW_DivMasterLabel">
                                        <%=ViewData("olaFTClrCode")%>
                                    </div>
                                    <div class="xW_DivPdtData2">
                                        <input id="otbFTClrCode" value="" 
                                            type="text" 
                                            onfocus="J002_SETxKeepOldOnfocus('otbFTClrCode','otbFTClrCodeOld')"
                                            onkeydown="otbFTClrCode_onkeyDown(event.keyCode,event.which)" 
                                            onblur="otbFTClrCode_onblur()"
                                            class="xW_InputGeneral xW_InputWidth03" />
                                        <img id="oimGetColor" alt="" 
                                            class="xCN_ImgBrowData xW_ImgBrowseData" 
                                            onclick=""
                                            name="oimGetColor" 
                                            src='<%=ViewData("oimgBrowse")%>' />
                                        <input id="otbFTClrName"
                                            type="text" 
                                            class="xW_InputGeneral xW_InputWidth04 xCN_AllReadOnlyBGColor"
                                            readonly="readonly" />
                                    </div>
                                </div>
                                <!-- ขนาด -->
                                <div class="xW_DivMasterDataRow">
                                    <div class="xW_DivMasterLabel">
                                        <%=ViewData("olaFTPszCode")%>
                                    </div>
                                    <div class="xW_DivPdtData2">
                                        <input id="otbFTPszCode" value="" 
                                            type="text" 
                                            onfocus="J002_SETxKeepOldOnfocus('otbFTPszCode','otbFTPszCodeOld')"
                                            onkeydown="otbFTPszCode_onkeyDown(event.keyCode,event.which)" 
                                            onblur="otbFTPszCode_onblur()"
                                            class="xW_InputGeneral xW_InputWidth03" />
                                        <img id="oimGetPdtSize" alt="" 
                                            class="xCN_ImgBrowData xW_ImgBrowseData" 
                                            onclick=""
                                            name="oimGetPdtSize" 
                                            src='<%=ViewData("oimgBrowse")%>' />
                                        <input id="otbFTPszName"
                                            type="text" 
                                            class="xW_InputGeneral xW_InputWidth04 xCN_AllReadOnlyBGColor"
                                            readonly="readonly" />
                                    </div>
                                </div>
                                <!-- ผู้จัดซื้อ -->
                                <div class="xW_DivMasterDataRow">
                                    <div class="xW_DivMasterLabel">
                                        <%=ViewData("olaFTUsrCode")%>
                                    </div>
                                    <div class="xW_DivPdtData2">
                                        <input id="otbFTUsrCode" value="" 
                                            type="text" 
                                            onfocus="J002_SETxKeepOldOnfocus('otbFTUsrCode','otbFTUsrCodeOld')"
                                            onkeydown="otbFTUsrCode_onkeyDown(event.keyCode,event.which)" 
                                            onblur="otbFTUsrCode_onblur()"
                                            class="xW_InputGeneral xW_InputWidth03" />
                                        <img id="oimGetBuyer" alt="" 
                                            class="xCN_ImgBrowData xW_ImgBrowseData" 
                                            onclick=""
                                            name="oimGetBuyer" 
                                            src='<%=ViewData("oimgBrowse")%>' />
                                        <input id="otbFTUsrName"
                                            type="text" 
                                            class="xW_InputGeneral xW_InputWidth04 xCN_AllReadOnlyBGColor"
                                            readonly="readonly" />
                                    </div>
                                </div>
                            </div>
                            <!-- div Master_03 -->
                            <div class='xW_DivMasterData xW_DivWidthMaster3 xCN_AllBackgroundColor xCN_AllBorderColor'>
                                <!-- Tab Menu -->
                                <div class="xCN_DivTabToppic xW_DivSize100" >
                                    <!-- กำหนด1 -->
                                    <a href="javascript:void(0);" 
                                        onclick="{J010_SHWxTabData(0,'odiSet1','odiSet2','odiSet3');
                                            J009_SHWxTabTop(0,'odiDiv_Set1','odiDiv_Set2','odiDiv_Set3')}">
                                        <div id="odiDiv_Set1" class="xCN_DivTabActive xW_DivTabToppicLabel" >
                                            <%=ViewData("olaDefine1")%>
                                        </div>
                                    </a>
                                    <!-- กำหนด2 -->
                                    <a href="javascript:void(0);" 
                                        onclick="W_DISxDisplayNone('odiSet2');{J010_SHWxTabData(1,'odiSet1','odiSet2','odiSet3');
                                            J009_SHWxTabTop(1,'odiDiv_Set1','odiDiv_Set2','odiDiv_Set3')}">
                                        <div id="odiDiv_Set2" class="xCN_DivTabUnActive xW_DivTabToppicLabel" >
                                            <%=ViewData("olaDefine2")%>
                                        </div>
                                    </a>
                                    <!-- กำหนด3 -->
                                    <a href="javascript:void(0);" 
                                        onclick="W_DISxDisplayNone('odiSet3');{J010_SHWxTabData(2,'odiSet1','odiSet2','odiSet3');
                                            J009_SHWxTabTop(2,'odiDiv_Set1','odiDiv_Set2','odiDiv_Set3')}">
                                        <div id="odiDiv_Set3" class="xCN_DivTabUnActive xW_DivTabToppicLabel" >
                                            <%=ViewData("olaDefine3")%>
                                        </div>
                                    </a>
                                </div>
                                <!-- กำหนด1 -->
                                <div id='odiSet1' class='xCN_DivTabDetail xW_DivSize95'>
                                    <div class='xCN_AllBackgroundColor xCN_AllBorderColor'>
                                        <div class='xW_Margin4'>
                                            <input type="checkbox" id='ocbFTPdtVatType' checked="checked" />
                                            <label><%=ViewData("olaFTPdtVatType")%></label>
                                        </div>
                                        <div class='xW_Margin4'>
                                            <input type="checkbox" id='ocbFTPdtStkControl' checked="checked" />
                                            <label><%=ViewData("olaFTPdtStkControl")%></label>
                                        </div>
                                        <div class='xW_Margin4'>
                                            <input type="checkbox" id='ocbFTPdtPoint' checked="checked" />
                                            <label><%=ViewData("olaFTPdtPoint")%></label>
                                        </div>
                                        <div class='xW_Margin4'>
                                            <input type="checkbox" id='ocbFTPdtNoDis' />
                                            <label><%=ViewData("olaFTPdtNoDis")%></label>
                                        </div>
                                        <div class='xW_Margin4'> 
                                            <input type="checkbox" id='ocbFTPdtGrpControl' />
                                            <label><%=ViewData("olaFTPdtGrpControl")%></label>
                                        </div>
                                    </div>
                                </div>
                                <!-- กำหนด2 -->
                                <div id='odiSet2' class='xCN_DivTabDetail xW_DivSize95 xCN_DivDisplayNone'>
                                    <div class='xCN_AllBackgroundColor xCN_AllBorderColor'>
                                        <div class='xW_Margin4'>
                                            <input type="checkbox" id='ocbFTPdtConType' />
                                            <label><%=ViewData("olaFTPdtConType")%></label>
                                        </div>
                                        <div class='xW_Margin4'>
                                            <input type="checkbox" id='ocbFTPdtStaActive' 
                                                checked="checked"
                                                class='xW_ImgBrowseData' />
                                            <label><%=ViewData("olaFTPdtStaActive")%></label>
                                        </div>
                                        <div class='xW_Margin4'>
                                            <input type="checkbox" id='ocbFTPdtStaTouch' 
                                                class='xW_ImgBrowseData'/>
                                            <label><%=ViewData("olaFTPdtStaTouch")%></label>
                                        </div>
                                        <div class='xW_Margin4'>
                                            <input type="checkbox" id='ocbFTPdtStaAlwBuy' 
                                                checked="checked" 
                                                class='xW_ImgBrowseData'/>
                                            <label><%=ViewData("olaFTPdtStaAlwBuy")%></label>
                                        </div>
                                        <div class='xW_Margin4'> 
                                            <input type="checkbox" id='ocbFTPdtSrn'
                                                class='xW_ImgBrowseData' />
                                            <label><%=ViewData("olaFTPdtSrn")%></label>
                                        </div>
                                    </div>
                                </div>
                                <!-- กำหนด3 -->
                                <div id='odiSet3' class='xCN_DivTabDetail xW_DivSize95 xCN_DivDisplayNone'>
                                    <div class='xCN_AllBackgroundColor xCN_AllBorderColor'>
                                        <div class='xW_Margin4' style='height:111px'>
                                            <input type="checkbox" id='ocbFTPdtStaAlwRepack' checked="checked" 
                                                    class='xW_ImgBrowseData' />
                                            <label><%=ViewData("olaFTPdtStaAlwRepack")%></label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Detail -->
                <%--<div id="odiDetail" class="xCN_AllBackgroundColor xW_DivDetail">--%>
                    <!-- Tab Menu -->
                    <div class="xCN_DivTabToppic xW_DivSize100 xW_Margin5" >
                        <!-- ราคาสินค้า -->
                        <a href="javascript:void(0);" 
                            onclick="{J010_SHWxTabData(0,'odiPricePdt');
                                J009_SHWxTabTop(0,'odiDiv_Detail')}">
                            <div id="odiDiv_Detail" class="xCN_DivTabActive xW_DivTabToppicLabel" >
                                <%=ViewData("olaPdtPrice")%>
                            </div>
                        </a>
                        <!-- ข้อมูลทั่วไป -->
                        <!-- สินค้าชุด -->
                        <!-- ประวัติการซื้อ/รับเข้า -->
                        <!-- ประวัติการขาย -->
                        <!-- สินค้าคงคลัง -->
                        <!-- การเคลื่อนไหว -->
                        <!-- Serial Nummber -->
                        <!-- กำหนดช่วงไม่อนุญาตขาย -->
                    </div>
                    <!-- ราคาสินค้า -->
                    <div id='odiPricePdt' class='xCN_DivTabDetail xW_Margin2'>
                        <div class="xCN_AllBackgroundColor xW_DivTabMaster">                            
                            <div class='xCN_AllBackgroundColor' style="height:45px;width:100%;float:left;">                                
                                <div id ="odiInsRow" class="xW_DivAddBarCode" style="float:left;">
                                    <a href="javascript:void(0);" onclick="W_FRMxInsertRow()">
                                        <div class="xW_DivAddBarCodeCaption">
                                            <%=ViewData("olaCreate")%>
                                        </div>
                                    </a>
                                </div>
                                <div id ="odiSaveBarCode" class="xCN_DivDisplayNone xW_DivSaveBarCode" style="float:left;">
                                    <a href="javascript:void(0);" onclick="W_SAVxBarCodeRow()">
                                        <div class="xW_DivSaveBarCodeCaption">
                                            <%=ViewData("olatMsgSave")%>
                                        </div>
                                    </a>
                                </div>
                                <div id ="odiDeleteBarCode" class="xCN_DivDisplayNone xW_DivDeleteBarCode" style="float:left;">
                                    <a href="javascript:void(0);" id='oaDelPdt' onclick="">
                                        <div class="xW_DivAddBarCodeCaption">
                                            <%=ViewData("olatMsgDelete")%>
                                        </div>
                                    </a>
                                </div>
                                <div id ="odiCancelBarCode" class="xCN_DivDisplayNone xW_DivCancelBarCode" style="float:left;">
                                    <a href="javascript:void(0);" onclick="W_FRMxCancleBarCode()">
                                        <div class="xW_DivCancelBarCodeCaption">
                                            <%=ViewData("olatMsgCancel")%>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class='xW_DivMasterData xCN_AllBackgroundColor xCN_AllBorderColor'>
                                 <% 
                                     'Dim gridBuilder = Html.Telerik().Grid(Of Adasoft.Abreast.Models.cmlTCNMPdt)(Model)
                                     Dim oDTPdt As New List(Of cmlTCNMPdt)
                                     oDTPdt = ViewData("oListPdt")
                                     Dim gridBuilder = Html.Telerik().Grid(oDTPdt)
                                     gridBuilder.Name("Grid")
                                     gridBuilder.Pageable(Function(page) page.PageSize(6))
                                     gridBuilder.Pageable(Function(page) page.Total(150))
                                     'ปิดไว้ใช้ปุ่มที่สร้างเอง
                                     'gridBuilder.Sortable().ToolBar(Function(commands) _
                                     '                                   commands.Insert.HtmlAttributes(New With {.colspan = "13", .id = "ocmAdd"})) _
                                     '                                   .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"})
                                     gridBuilder.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                                               .Select("C_DAToBindingGrid", "cvcTCNMPdt") _
                                               .Update("_SaveAjaxEditing", "cvcTCNMPdt") _
                                               .Delete("_DeleteAjaxEditing", "cvcTCNMPdt", New With {.id = (Function(o) o.FTPdtBarCode1)}) _
                                               .Insert("_InsertAjaxEditing", "cvcTCNMPdt")))
                                     
                                     '###Add grid columns
                                     'gridBuilder.Columns(Function(columns) columns.Add(Function(o) o.RowID).Width(100))
                                     gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTPdtBarCode1).Width(120).Title(ViewData("olaBarCode")) _
                                                             .HeaderHtmlAttributes(New With {.name = "FTPdtBarCode1", .style = "display:none; text-align:center; font-size:14px;"}) _
                                                             .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                                     gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTPdtSUnit).Width(80).Title(ViewData("olaUnitCode")) _
                                                             .HeaderHtmlAttributes(New With {.name = "FTPdtSUnit", .style = "display:none; text-align:center; font-size:13px;"}) _
                                                             .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                                     gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTPunName).Width(60).Title(ViewData("olaUnitName")) _
                                                             .HeaderHtmlAttributes(New With {.name = "FTPunName", .style = "display:none; text-align:center; font-size:14px;"}) _
                                                             .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                                     gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FCPdtSFactor).Width(60).Title(ViewData("olaFCPdtSFactor")) _
                                                             .Format("{0:#,##0." & StrDup(Session("nVB_CNDecAmtForShw"), "0") & "}") _
                                                             .HeaderHtmlAttributes(New With {.name = "FCPdtSFactor", .style = "display:none; text-align:center; font-size:14px;"}) _
                                                             .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                                     gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTPdtCode).Width(116).Title(ViewData("olaPdtCodeRef")) _
                                                             .HeaderHtmlAttributes(New With {.name = "FTPdtCode", .style = "display:none; text-align:center; font-size:14px;"}) _
                                                             .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                                     '### ระดับราคาขายปลีก
                                     gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FCPdtRetPriS1).Width(60).Title(ViewData("olaFCPdtRetPriS1")) _
                                                             .Format("{0:#,##0." & StrDup(Session("nVB_CNDecAmtForShw"), "0") & "}") _
                                                             .HeaderHtmlAttributes(New With {.name = "FCPdtRetPriS1", .style = "text-align:center; font-size:13px;"}) _
                                                             .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                                     gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FCPdtRetPriS2).Width(60).Title(ViewData("olaFCPdtRetPriS2")) _
                                                             .Format("{0:#,##0." & StrDup(Session("nVB_CNDecAmtForShw"), "0") & "}") _
                                                             .HeaderHtmlAttributes(New With {.name = "FCPdtRetPriS2", .style = "text-align:center; font-size:13px;"}) _
                                                             .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                                     gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FCPdtRetPriS3).Width(60).Title(ViewData("olaFCPdtRetPriS3")) _
                                                             .Format("{0:#,##0." & StrDup(Session("nVB_CNDecAmtForShw"), "0") & "}") _
                                                             .HeaderHtmlAttributes(New With {.name = "FCPdtRetPriS3", .style = "text-align:center; font-size:13px;"}) _
                                                             .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                                     '### ระดับราคาขายส่ง                                                             
                                     gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FCPdtWhsPriS1).Width(60).Title(ViewData("olaFCPdtWhsPriS1")) _
                                                             .Format("{0:#,##0." & StrDup(Session("nVB_CNDecAmtForShw"), "0") & "}") _
                                                             .HeaderHtmlAttributes(New With {.name = "FCPdtWhsPriS1", .style = "text-align:center; font-size:13px;"}) _
                                                             .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                                     gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FCPdtWhsPriS2).Width(60).Title(ViewData("olaFCPdtWhsPriS2")) _
                                                             .Format("{0:#,##0." & StrDup(Session("nVB_CNDecAmtForShw"), "0") & "}") _
                                                             .HeaderHtmlAttributes(New With {.name = "FCPdtWhsPriS2", .style = "text-align:center; font-size:13px;"}) _
                                                             .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                                     gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FCPdtWhsPriS3).Width(60).Title(ViewData("olaFCPdtWhsPriS3")) _
                                                             .Format("{0:#,##0." & StrDup(Session("nVB_CNDecAmtForShw"), "0") & "}") _
                                                             .HeaderHtmlAttributes(New With {.name = "FCPdtWhsPriS3", .style = "text-align:center; font-size:13px;"}) _
                                                             .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                                     gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FCPdtWhsPriS4).Width(60).Title(ViewData("olaFCPdtWhsPriS4")) _
                                                             .Format("{0:#,##0." & StrDup(Session("nVB_CNDecAmtForShw"), "0") & "}") _
                                                             .HeaderHtmlAttributes(New With {.name = "FCPdtWhsPriS4", .style = "text-align:center; font-size:13px;"}) _
                                                             .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                                     gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FCPdtWhsPriS5).Width(60).Title(ViewData("olaFCPdtWhsPriS5")) _
                                                             .Format("{0:#,##0." & StrDup(Session("nVB_CNDecAmtForShw"), "0") & "}") _
                                                             .HeaderHtmlAttributes(New With {.name = "FCPdtWhsPriS5", .style = "text-align:center; font-size:13px;"}) _
                                                             .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                                     'Seq
                                     gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.PdtSeq).Width(0) _
                                                             .HeaderHtmlAttributes(New With {.name = "PdtSeq", .style = "display:none"}).Hidden(True))
                                     'BarCode Old
                                     gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTPdtBarCodeOld).Width(0) _
                                                             .HeaderHtmlAttributes(New With {.name = "FTPdtBarCodeOld", .style = "display:none"}).Hidden(True))
                                     'UnitCode Old
                                     gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTPdtSUnitOld).Width(0) _
                                                             .HeaderHtmlAttributes(New With {.name = "FTPdtSUnitOld", .style = "display:none"}).Hidden(True))
                                     
                                     'RefPdtCode Old
                                     gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTRefPdtCodeOld).Width(0) _
                                                             .HeaderHtmlAttributes(New With {.name = "FTRefPdtCodeOld", .style = "display:none"}).Hidden(True))
                                     
                                     'gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FCPdtSFactor).Width(150).Title(ViewData("olaFCPdtSFactor")) _
                                     '                        .HeaderHtmlAttributes(New With {.name = "FCPdtSFactor", .style = "text-align:center; font-size:14px;"}) _
                                     '                        .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                                     'gridBuilder.Columns(Function(columns) columns.Bound(sub
                                     'Title(ViewData("olaPdtCodeRef")).ToString()
                                     
                                     gridBuilder.DataKeys(Function(keys) (keys.Add(Function(c) c.FTPdtBarCode1)))
                
                                     gridBuilder.Columns(Function(columns) columns.Command(Function(commands) commands.Edit()).Width(30).Title("Commands").Visible(False))
                                     gridBuilder.Columns(Function(columns) columns.Command(Function(commands) commands.Delete()).Width(30).Title("Commands").Visible(False))
                  
                                     'Dim commandColumn As New GridActionColumn(Of Adasoft.Abreast.Models.cmlTCNMPdt)(gridBuilder.ToComponent())
                                     'commandColumn.Title = ViewData("olaEdit")
                                     'commandColumn.HeaderHtmlAttributes.Add("style", "text-align:center; font-size:13px;") 'New With {.style = "text-align:center;"})
                                     'commandColumn.HtmlAttributes.Add("style", "text-align:left; font-size:12px;")
                                     'Dim objEdit As New GridEditActionCommand
                                     'commandColumn.Commands.Add(objEdit)
                                     'Dim objDelete As New GridDeleteActionCommand
                                     'commandColumn.Commands.Add(objDelete)

                                     'gridBuilder.ClientEvents(Function(Events) Events.OnLoad("W_SETxFilterOnClick"))
                                     gridBuilder.ClientEvents(Function(Events) Events.OnLoad("grid_onLoad"))
                                     'gridBuilder.ClientEvents(Function(Events) Events.OnDataBound("W_SETxFilterOnClick"))
                                     gridBuilder.ClientEvents(Function(Events) Events.OnEdit("W_CHKxStatus"))
                                     gridBuilder.ClientEvents(Function(Events) Events.OnDelete("W_CHKxUserDeleteAuthorize"))
                                     gridBuilder.ClientEvents(Function(Events) Events.OnSave("W_CHKxUserAuthorize"))
                                     'gridBuilder.RowAction(Function(row) (row.Selected = row.DataItem.FTPdtCode.Equals(ViewData("id"))))
                   
                                     'gridBuilder.ToComponent().Columns.Add(commandColumn)
                                     gridBuilder.HtmlAttributes(New With {.style = "width:99.8%"})
                                     'gridBuilder.Scrollable(Function(Scroll) Scroll.Height(150))
                                     'gridBuilder.Footer(False)
                                     gridBuilder.Render()
                                %>
                                <% Html.Telerik().ScriptRegistrar().Globalization(true) %>
                            </div>
                        </div>     
                    </div>
                <%--</div>--%>
                <!-- บันทึก2 -->
                <div id='odiSave2' class='xCN_DivTabDetail xCN_DivDisplayNone'>
                    
                </div>
                <!-- ราคาตามสาขา -->
                <div id='odiPrice' class='xCN_DivTabDetail xCN_DivDisplayNone'>
                
                </div>
                
            </div>
        </div>
    </div>
    <!-- Script สำหรับแท็บราคาสินค้า -->
    <script type="text/javascript">
        var tW_CmdMode = '';
        var nW_StaGen = 0;
        var tW_StaDel = 'N';
        function grid_onLoad() {
            $('#Grid tr', this).live('click', function(e) {
                var $tr = $(this);
                var oGrid = $("#Grid").data('tGrid');
                if (tW_CmdMode == '') {
                    oGrid.editRow($tr);
                    $('#odiInsRow').addClass('xCN_DivDisplayNone');
                    $('#odiCancelBarCode').removeClass('xCN_DivDisplayNone');
                    $('#odiSaveBarCode').removeClass('xCN_DivDisplayNone');
                    $('#odiDeleteBarCode').removeClass('xCN_DivDisplayNone');
                    $('#FTPdtBarCodeOld').val($('#FTPdtBarCode1').val());
                    var tPdtSeq = $('#PdtSeq').val();
                    if (tPdtSeq == 1) {
                        J002_SETxReadOnly('FCPdtSFactor', true);
                        J002_SETxReadOnly('FTPdtCode', true);
                    } else {
                        J002_SETxReadOnly('FCPdtSFactor', false);
                        J002_SETxReadOnly('FTPdtCode', false);
                    }
                    $('#FCPdtSFactor').val(J002_DECcRound($('#FCPdtSFactor').val(), nW_DecAmtForShw, true));
                    $('#FCPdtRetPriS1').val(J002_DECcRound($('#FCPdtRetPriS1').val(), nW_DecAmtForShw, true));
                    $('#FCPdtRetPriS2').val(J002_DECcRound($('#FCPdtRetPriS2').val(), nW_DecAmtForShw, true));
                    $('#FCPdtRetPriS3').val(J002_DECcRound($('#FCPdtRetPriS3').val(), nW_DecAmtForShw, true));
                    $('#FCPdtWhsPriS1').val(J002_DECcRound($('#FCPdtWhsPriS1').val(), nW_DecAmtForShw, true));
                    $('#FCPdtWhsPriS2').val(J002_DECcRound($('#FCPdtWhsPriS2').val(), nW_DecAmtForShw, true));
                    $('#FCPdtWhsPriS3').val(J002_DECcRound($('#FCPdtWhsPriS3').val(), nW_DecAmtForShw, true));
                    $('#FCPdtWhsPriS4').val(J002_DECcRound($('#FCPdtWhsPriS4').val(), nW_DecAmtForShw, true));
                    $('#FCPdtWhsPriS5').val(J002_DECcRound($('#FCPdtWhsPriS5').val(), nW_DecAmtForShw, true));
                    tW_StaDel = 'Y';
                    W_SETxStyleDeleteBarCode();
                }
            });
            $ui('#FTPdtSUnit', this).live('dblclick', function() {
                //alert("Intara");
                $ui("#odiBrwData").dialog("open"); //Open Browse Unit
            });
            //$('#Grid tr:has(td) td', this.element).bind('click', function(e) {
            //    var td = this;
            //    if (td.cellIndex == 1) {
            //        alert("Chuck");
            //    }
                //if (td.cellIndex > 1) {
                //    return true;
                //}
                //    var $tr = $(this);
                //    var oGrid = $("#Grid").data('tGrid');
                //    if (tW_CmdMode == '') {
                //        oGrid.editRow($tr);
                //    }
            //});
            $(this).find('thead').prepend('<tr>' +
                //BarCode
                '<th class="t-header" rowspan="2" style="text-align:center; font-size:13px;">' +
                    '<%=ViewData("olaBarCode")%>' +
                '</th>' +
                //รหัสหน่วยนับ
                '<th class="t-header" rowspan="2" style="text-align:center; font-size:13px;">' +
                    '<%=ViewData("olaUnitCode")%>' +
                '</th>' +
                //ชื่อหน่วยนับ 
                '<th class="t-header" rowspan="2" style="text-align:center; font-size:13px;">' +
                    '<%=ViewData("olaUnitName")%>' +
                '</th>' +
                //อัตรา
                '<th class="t-header" rowspan="2" style="text-align:center; font-size:13px;">' +
                    '<%=ViewData("olaFCPdtSFactor")%>' +
                '</th>' +
                //รหัสสินค้าอ้างอิง
                '<th class="t-header" rowspan="2" style="text-align:center; font-size:13px;">' +
                    '<%=ViewData("olaPdtCodeRef")%>' +
                '</th>' +
                //ราคาขายปลีก
                '<th class="t-header" colspan="3" style="text-align:center; font-size:13px;">' +
                     '<%=ViewData("olaRetPrice")%>' +
                '</th>' +
                //ราคาขายส่ง
                '<th class="t-header" colspan="5" style="text-align:center; font-size:13px;">' +
                    '<%=ViewData("olaWhsPrice")%>' +
                '</th>' +
            '</tr>' 
            );
        }

        function W_FRMxInsertRow() {
            if (nW_StaGen == 0) { return false; }
            var oGrid = $("#Grid").data('tGrid');
            oGrid.addRow();
            tW_StaDel = 'N';
            $('#odiInsRow').addClass('xCN_DivDisplayNone');
            $('#odiCancelBarCode').removeClass('xCN_DivDisplayNone');
            $('#odiSaveBarCode').removeClass('xCN_DivDisplayNone');
            $('#odiDeleteBarCode').removeClass('xCN_DivDisplayNone'); 
            $('#FCPdtSFactor').val(J002_DECcRound($('#FCPdtSFactor').val(), nW_DecAmtForShw, true));
            $('#FCPdtSFactor').val(J002_DECcRound(1, nW_DecAmtForShw, true));
            $('#FCPdtRetPriS1').val(J002_DECcRound($('#FCPdtRetPriS1').val(), nW_DecAmtForShw, true));
            $('#FCPdtRetPriS2').val(J002_DECcRound($('#FCPdtRetPriS2').val(), nW_DecAmtForShw, true));
            $('#FCPdtRetPriS3').val(J002_DECcRound($('#FCPdtRetPriS3').val(), nW_DecAmtForShw, true));
            $('#FCPdtWhsPriS1').val(J002_DECcRound($('#FCPdtWhsPriS1').val(), nW_DecAmtForShw, true));
            $('#FCPdtWhsPriS2').val(J002_DECcRound($('#FCPdtWhsPriS2').val(), nW_DecAmtForShw, true));
            $('#FCPdtWhsPriS3').val(J002_DECcRound($('#FCPdtWhsPriS3').val(), nW_DecAmtForShw, true));
            $('#FCPdtWhsPriS4').val(J002_DECcRound($('#FCPdtWhsPriS4').val(), nW_DecAmtForShw, true));
            $('#FCPdtWhsPriS5').val(J002_DECcRound($('#FCPdtWhsPriS5').val(), nW_DecAmtForShw, true));
            W_SETxStyleDeleteBarCode();
            var nBarCode = W_GETtBarCodeCount()
            var nPdtSeq = (nBarCode / 1) + 1;
            $('#PdtSeq').val(nPdtSeq);
            if (nBarCode < 1) {
                $('#FTPdtBarCode1').val($('#otbFTPdtCode').val());
                $('#PdtSeq').val(0);
            }
            if (nBarCode < 3) {
                $('#FTPdtCode').val($('#otbFTPdtCode').val());
                $('#FTRefPdtCodeOld').val($('#otbFTPdtCode').val());
            } else {
            var nPack = nBarCode / 3;
            nPack = Math.floor(nPack);
                //var nSub = (nBarCode % 3) + 1;
                var tRefPdtCode = $('#otbFTPdtCode').val();
                tRefPdtCode += nPack.toString();
                //tRefPdtCode += nSub.toString();
                $('#FTPdtCode').val(tRefPdtCode);
                $('#FTRefPdtCodeOld').val(tRefPdtCode);
            }
            
            
            //var otdPdtSUnit = $('#FTPdtSUnit');
            //var ocmBrwPdtUnit = $('<button/>',
                //{
                //    text: '',
                //    id: 'oimBrwPdtUnit',
                //    Class: 'xW_ImageButton xCN_ImgBrowData xW_ImgBrowseData',
                //    click: function() { C_SHWxBrwPdtUnit(); }
                //});
                //otdPdtSUnit.after(ocmBrwPdtUnit);
                
                //otdPdtSUnit.addClass("xW_ImageButton");
                //otdPdtSUnit.html('<%=ViewData("tHtmlImg")%>');
                $('#FTPdtBarCode1').addClass('xW_InputWidth01');
        }
        //$ui(function() {
        //    $ui("#oimBrwPdtUnit").click(function() {
        //        $ui("#odiBrwData").dialog("open");
        //    });
        //});
        //function C_SHWxBrwPdtUnit() {
        //    //alert("Browse Product Unit");
        //    //$('#FTPdtSUnit').focus();
        //    //$ui("#odiBrwData").dialog("open");
        //    $ui("#oimBrwPdtUnit").click(function() {
        //        //$ui("#odiBrwData").dialog("open");
        //    });
        //}
        
        function W_FRMxCancleBarCode() {
            tW_CmdMode = '';
            var oGrid = $("#Grid").data('tGrid');
            oGrid.cancel();
            $('#odiSaveBarCode').addClass('xCN_DivDisplayNone');
            $('#odiCancelBarCode').addClass('xCN_DivDisplayNone');
            $('#odiDeleteBarCode').addClass('xCN_DivDisplayNone');
            $('#odiInsRow').removeClass('xCN_DivDisplayNone');
        }

        function W_SAVxBarCodeRow() {
            var ptCode = document.getElementById('FTPdtBarCode1').value;
            var ptCode = document.getElementById('FTPdtCode').value;
            var nPdtSeq = document.getElementById('PdtSeq').value;
            //Check Duplicate Key
            if (W_CHKbVerifyInsertData()) {
                $('#FTPdtBarCode1').val($('#FTPdtBarCodeOld').val());
                $('#FTPdtBarCode1').focus();
                return false;
            }
            if ($('#FTPdtSUnit').val() == '') { $ui('#odiDupBarCode').dialog('open'); return false; }
            if (!W_CHKbRefPdtCode($('#FTPdtCode').val(), $('#PdtSeq').val())) {
                $('#FTPdtCode').select(); return false; 
            }

            //if (tW_CmdMode == 'insert') {

            //} else {

            //}
            W_INSbBarCode()
        }
        function W_INSbBarCode() {
            var tBarCode = $('#FTPdtBarCode1').val();
            var tPdtSUnit = $('#FTPdtSUnit').val();
            var tPunName = $('#FTPunName').val();
            var cPdtSFactor = $('#FCPdtSFactor').val();
            var tPdtCode = $('#FTPdtCode').val();
            var cPdtRetPriS1 = $('#FCPdtRetPriS1').val();
            var cPdtRetPriS2 = $('#FCPdtRetPriS2').val();
            var cPdtRetPriS3 = $('#FCPdtRetPriS3').val();
            var cPdtWhsPriS1 = $('#FCPdtWhsPriS1').val();
            var cPdtWhsPriS2 = $('#FCPdtWhsPriS2').val();
            var cPdtWhsPriS3 = $('#FCPdtWhsPriS3').val();
            var cPdtWhsPriS4 = $('#FCPdtWhsPriS4').val();
            var cPdtWhsPriS5 = $('#FCPdtWhsPriS5').val();
            var nPdtSeq = $('#PdtSeq').val();
            var tUrl = '<%=Url.Action("C_SAVtBarCode","cvcTCNMPdt") %>';
            tUrl += '?pnPdtSeq=' + nPdtSeq;
            tUrl += '&ptBarCode=' + tBarCode;
            tUrl += '&ptPdtSUnit=' + tPdtSUnit;
            tUrl += '&ptPunName=' + tPunName;
            tUrl += '&pcPdtSFactor=' + cPdtSFactor;
            tUrl += '&ptPdtCode=' + tPdtCode;
            tUrl += '&pcPdtRetPriS1=' + cPdtRetPriS1;
            tUrl += '&pcPdtRetPriS2=' + cPdtRetPriS2;
            tUrl += '&pcPdtRetPriS3=' + cPdtRetPriS3;
            tUrl += '&pcPdtWhsPriS1=' + cPdtWhsPriS1;
            tUrl += '&pcPdtWhsPriS2=' + cPdtWhsPriS2;
            tUrl += '&pcPdtWhsPriS3=' + cPdtWhsPriS3;
            tUrl += '&pcPdtWhsPriS4=' + cPdtWhsPriS4;
            tUrl += '&pcPdtWhsPriS5=' + cPdtWhsPriS5;
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
            W_SETxRebindGrid('Grid');
            $('#odiInsRow').removeClass('xCN_DivDisplayNone');
            $('#odiCancelBarCode').addClass('xCN_DivDisplayNone');
            $('#odiSaveBarCode').addClass('xCN_DivDisplayNone');
            $('#odiDeleteBarCode').addClass('xCN_DivDisplayNone');
            W_FRMxCancleBarCode();
        }
        function W_SETxRebindGrid(ptGridName) {
            var oGrid = $('#' + ptGridName).data('tGrid');
            oGrid.rebind();
        }
//        function W_PRCxDelBarCode() {
//            try {
//                if (tW_StaDel == "Y") {
//                    var tBarCode = $('#FTPdtBarCode1').val();
//                    $ui('#odiDelGrid').dialog('open');
//                    $ui('#odiDelGrid').dialog({
//                    title: '<%=ViewData("olatMsgDelete")%><%=ViewData("olaBarCode")%>',
//                        autoOpen: false,
//                        modal: true,
//                        resizable: false,
//                        height: '200',
//                        width: '300',
//                        open: function() {
//                        $('#olaMsgErr').html('<%=ViewData("tMsgChkDel")%><%=ViewData("olaBarCode")%> "' + tBarCode + '" <%=ViewData("tMsgYesOrNo")%>');
//                        },
//                        buttons: {
//                            '<%=ViewData("olaOk")%>': function() {
//                                var tPdtSeq = $('#PdtSeq').val();
//                                var tDateTimeNow = J002_GETtTimeStamp();
//                                var tUrl = '<%=Url.Action("C_DELxDeleteBarCodeItem","cvcTCNMPdt") %>' + '?ptPdtSeq=' + tPdtSeq;
//                                oW_xmlHttp = J002_GEToXMLHttpRequest();
//                                oW_xmlHttp.open("GET", encodeURI(tUrl), false);
//                                //oW_xmlHttp.onreadystatechange = W_SETxHandleStateChangeSetTotal;
//                                oW_xmlHttp.send(null);                    
//                                //setTimeout(function() {
//                                W_SETxRebindGrid('Grid');
//                                //}, 2000);
//                                $('#odiInsRow').removeClass('xCN_DivDisplayNone');
//                                $('#odiCancelBarCode').addClass('xCN_DivDisplayNone');
//                                $('#odiSaveBarCode').addClass('xCN_DivDisplayNone');
//                                $('#odiDeleteBarCode').addClass('xCN_DivDisplayNone');
//                                W_FRMxCancleBarCode();
//                                $ui('#odiDelGrid').dialog("close");
//                            },
//                            '<%=ViewData("olaCancel")%>': function() { $uiA('#odiDelGrid').dialog("close"); }
//                        }
//                    });
////                        button: function() {
////                            $uiA('#ocmCancelAlert').click(function() { $uiA('#odiDelGrid').dialog('close'); });
////                        }

//                }
//            }
//            catch (ex) {
//                J002_SHWxMsgError("W_PRCxDelBarCode", ex);
//            }
//        }
        function W_CHKxStatus(e) {
            tW_CmdMode = e.mode;           
            $('#FTPdtBarCode1').focus();
            //$('#FTPdtBarCode1').width(nWidth);
            //document.getElementById('FTPdtBarCode1').onblur = function() { W_CHKbVerifyInsertData(); };
            $('#FTPdtBarCode1').blur(function() {
                if (($('#FTPdtBarCode1').val() != $('#FTPdtBarCodeOld').val()) && ($('#FTPdtBarCode1').val() != '')) {
                    if (W_CHKbVerifyInsertData()) {
                        $('#FTPdtBarCode1').val($('#FTPdtBarCodeOld').val());
                        $('#FTPdtBarCode1').focus();
                    } else {
                        $('#FTPdtBarCodeOld').val($('#FTPdtBarCode1').val());
                    }
                }
            });
            //หน่วย
            $('#FTPdtSUnit').blur(function() {
                if ($('#FTPdtSUnit').val() != $('#FTPdtSUnitOld').val()) {
                    //$('#FTPunName').val('Chuck');
                    if ($('#FTPdtSUnit').val() == '') {
                        $('#FTPdtSUnitOld').val('');
                        $('#FTPunName').val('');
                    } else {
                        W_GETxDataByCode('FTPdtSUnit', 'FTPdtSUnitOld', 'FTPunName', 'Pun');
                    }
                }
            });
            //รหัสสินค้าอ้างอิง
            $('#FTPdtCode').blur(function() {
            //if (($('#FTPdtCode').val() != '') && ($('#PdtSeq').val() > 3)) {
                if ($('#FTPdtCode').val() != '') {
                    W_CHKbRefPdtCode($('#FTPdtCode').val(), $('#PdtSeq').val());
                }
            });
            //อัตรา
            $('#FCPdtSFactor').blur(function() {
                if ($('#PdtSeq').val() != '1') { $('#FCPdtSFactor').val(W_DECcRound($('#FCPdtSFactor').val(), nW_DecAmtForShw, true)); }
            });
            //ระดับราคาขายปลีก
            $('#FCPdtRetPriS1').blur(function() {
                $('#FCPdtRetPriS1').val(J002_DECcRound($('#FCPdtRetPriS1').val(), nW_DecAmtForShw, true));
            });
            $('#FCPdtRetPriS2').blur(function() {
                $('#FCPdtRetPriS2').val(J002_DECcRound($('#FCPdtRetPriS2').val(), nW_DecAmtForShw, true));
            });
            $('#FCPdtRetPriS3').blur(function() {
                $('#FCPdtRetPriS3').val(J002_DECcRound($('#FCPdtRetPriS3').val(), nW_DecAmtForShw, true));
            });

            //ระดับราคาขายส่ง
            $('#FCPdtWhsPriS1').blur(function() {
                $('#FCPdtWhsPriS1').val(J002_DECcRound($('#FCPdtWhsPriS1').val(), nW_DecAmtForShw, true));
            });
            $('#FCPdtWhsPriS2').blur(function() {
                $('#FCPdtWhsPriS2').val(J002_DECcRound($('#FCPdtWhsPriS2').val(), nW_DecAmtForShw, true));
            });
            $('#FCPdtWhsPriS3').blur(function() {
                $('#FCPdtWhsPriS3').val(J002_DECcRound($('#FCPdtWhsPriS3').val(), nW_DecAmtForShw, true));
            });
            $('#FCPdtWhsPriS4').blur(function() {
                $('#FCPdtWhsPriS4').val(J002_DECcRound($('#FCPdtWhsPriS4').val(), nW_DecAmtForShw, true));
            });
            $('#FCPdtWhsPriS5').blur(function() {
                $('#FCPdtWhsPriS5').val(J002_DECcRound($('#FCPdtWhsPriS5').val(), nW_DecAmtForShw, true));
            });
        }
        function W_DECcRound(ptNumber, pnDecimals, pbShowComma) {
            var newString; // The new rounded number
            if (ptNumber == null || ptNumber == '') { ptNumber = 0; }
            pnDecimals = Number(pnDecimals);
            if (pnDecimals < 1) {
                newString = (Math.round(ptNumber)).toString();
            } else {
                var numString = ptNumber.toString();
                if (numString.lastIndexOf(".") == -1) {// If there is no decimal point
                    numString += "."; // give it one at the end
                }
                var cutoff = numString.lastIndexOf(".") + pnDecimals - 1; // The point at which to truncate the number
                var d1 = Number(numString.substring(cutoff, cutoff + 1)); // The value of the last decimal place that we'll end up with
                var d2 = Number(numString.substring(cutoff + 1, cutoff + 2)); // The next decimal, after the last one we want
                //if (d2 >= 5) {// Do we need to round up at all? If not, the string will just be truncated
                if (d1 < 5 && cutoff > 0) { d1 = 0; }
                if (d1 >= 5 && cutoff > 0) {// If the last digit is 9, find a new cutoff point
                    while (cutoff > 0 && (d1 >= 5 || isNaN(d1))) {
                        if (d1 != ".") {
                            cutoff -= 1;
                            d1 = Number(numString.substring(cutoff, cutoff + 1));
                        } else {
                            cutoff -= 1;
                        }
                    }
                    d1 += 1;
                }
                //}
                //if (d1 == 10) {
                //    numString = numString.substring(0, numString.lastIndexOf(".")) + '.';
                //    var roundedNum = Number(numString) + 1;
                //    newString = roundedNum.toString()+ '.';
                //} else {
                    newString = numString.substring(0, cutoff) + d1.toString();
                //}
                if (pbShowComma == true) {//insert comma in String Number ex. 12,500.00
                    var tNumber = newString.toString().substring(0, numString.lastIndexOf("."));
                    var tDecimal = newString.toString().substring(numString.lastIndexOf("."), numString.length);
                    var nCount = 0;
                    var tStr = "";
                    var i;
                    var tSign = '';
                    if (tNumber.charAt(0) == '-') {
                        tSign = '-';
                        tNumber = tNumber.replace('-', '');
                    }

                    for (i = tNumber.toString().length - 1; i > -1; i--) {
                        if (nCount > 2) {
                            tStr = "," + tStr;
                            nCount = 0;
                        }
                        tStr = tNumber.toString().charAt(i) + tStr;
                        nCount++;
                    }
                    newString = tSign + tStr + tDecimal;
                }
            }
            if (newString.lastIndexOf(".") == -1) {// Do this again, to the new string
                newString += ".";
            }
            var decs = (newString.substring(newString.lastIndexOf(".") + 1)).length;
            for (var i = 0; i < pnDecimals - decs; i++) newString += "0";
            //var newNumber = Number(newString);// make it a number if you like
            return newString; // Output the result to the form field (change for your purposes)
        }

        function W_CHKxUserAuthorize() {
            if (tW_CmdMode == 'insert') {
                var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Add%>';
            }
            else {
                var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Edit%>';
            }
            var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
            var tPwdAllow = '<%=Session("bVB_CNPwdAllow") %>';
            //            var bAllow = J002_CHKtCheckAuthorize('omnMngGen', tAuthor, tPwdAllow, tMsgNotAuthorize);
            //            if (bAllow == false) {
            //                return e.preventDefault();
            //            }
            var ptCode = document.getElementById('FTPdtBarCode1').value; 
            if (tW_CmdMode == 'insert') {
                //Check Duplicate Key
                //                var tErrMsg = W_CHKbVerifyInsertData();
                //                if (tErrMsg != null && tErrMsg != '') {
                //                    alert(tErrMsg);
                //                    document.getElementById('FTPunCode').focus();
                //                    document.getElementById('FTPunCode').select();
                //                    return e.preventDefault();
                //                }
            }
        }
        //เช็คว่ารหัสบาร์โค้ดซ้ำหรือไม่
        function W_CHKbVerifyInsertData() {
            var oXmlHttp = J002_GEToXMLHttpRequest();
            var tDataTimeNow = J002_GETtTimeStamp();
            var tBarCode = document.getElementById("FTPdtBarCode1").value;
            var tPdtCode = document.getElementById("FTPdtCode").value;
            if (tBarCode == '') { $ui('#odiDupBarCode').dialog('open'); return true; } //Popup Alert
            var tUrl = '<%=Url.Action("C_CHKtVerifyInsertData","cvcTCNMPdt") %>' 
            tUrl += "?ptPdtCode=" + tPdtCode;
            tUrl += "&ptBarCode=" + tBarCode;
            oXmlHttp.open("GET", encodeURI(tUrl), false);
            oXmlHttp.send(null);
            if (oXmlHttp.responseText != '') {
                alert(oXmlHttp.responseText);
                return true;
            }
            return false;
        }
        function W_GETtBarCodeCount() {
            try {
                var tUrl = '<%=Url.Action("C_GETtBarCodeCount","cvcTCNMPdt") %>';
                oW_xmlHttp = J002_GEToXMLHttpRequest();
                oW_xmlHttp.open("GET", encodeURI(tUrl), false);
                oW_xmlHttp.send(null);
                return oW_xmlHttp.responseText; //return จำนวนรายการสินค้า ใน Grid
            }
            catch (ex) {
                J002_SHWxMsgError("W_GETtBarCodeCount", ex);
            }
        }
        function W_CHKbRefPdtCode(ptRefPdtCode,ptPdtSeq) {//เช็คว่ามีการใช้รหัสสินค้าเกิน 3 รายการหรือไม่
            try {
                var tUrl = '<%=Url.Action("C_CHKtRefPdtCode","cvcTCNMPdt") %>';
                tUrl += '?ptRefPdtCode=' + ptRefPdtCode;
                tUrl += '&ptPdtSeq=' + ptPdtSeq;
                oW_xmlHttp = J002_GEToXMLHttpRequest();
                oW_xmlHttp.open("GET", encodeURI(tUrl), false);
                oW_xmlHttp.send(null);
                var tMessage = oW_xmlHttp.responseText; //จำนวนรายการรหัสสินค้า ใน Grid
                if (tMessage != '') {
                    var tRec = '<%=Session("tVB_LastLang")%>' == 'TH' ? 'รายการ' : 'Record';
                    alert(tMessage + '\n[<%=ViewData("olaPdtCodeRef")%> > 3 ' + tRec + ']');
                    $('#FTPdtCode').val($('#FTRefPdtCodeOld').val());
                    return false;
                } else { $('#FTRefPdtCodeOld').val($('#FTPdtCode').val()); }
                return true;
            }
            catch (ex) {
                J002_SHWxMsgError("W_CHKbRefPdtCode", ex);
                return false;
            }
        }

        function W_CHKxUserDeleteAuthorize(e) {
            if (document.getElementById('FTPdtBarCode1') != null) {
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

        function W_SETxFilterOnClick() {
            //            //W_SETxCommandCaption();
            //            $('#Grid tr:has(td) td', this.element).bind('click', function(e) {
            //                var td = this;
            //                if (td.cellIndex > 1) {
            //                    return true;
            //                }

            //                var aCaption = $('#Grid th').eq(td.cellIndex).text();
            //                document.getElementById("olaFilterCaption").innerHTML = '<%=ViewData("olaFindPdtUnit")%>' + ' ' + aCaption;
            //                var tColName = $('#Grid th').eq(td.cellIndex).attr("name");
            //                document.getElementById('otbFilterField').value = tColName;
            //                //set caption
            //                document.getElementById('otbtexaField').value = '<%=ViewData("olaFindPdtUnit")%>' + ' ' + aCaption;
            //            })
        }
    </script>
    <!------ UI ------->
    <!-- ค้นหาหน่วย Browse Unit Master -->
    <div id="odiBrwData" title='<%=ViewData("olaBrowse")%>' class="xCN_DivTabDisplay">
        <div class="xW_DivGridDetail" style="height:auto">
            <%                                          
                Dim nData As Integer
                Dim nWidth(9) As Integer
                Dim aCaption(9) As String
                Dim aField(9) As String
                Dim nCount As Integer
                For Each item In ViewData("BrowseData")
                    nData = nData + 1
                Next
                nCount = 0
                For Each item In ViewData("BrowseData")
                    aField(nCount) = item
                    nCount += 1
                Next
                nCount = 0
                For Each item In ViewData("Width")
                    nWidth(nCount) = CInt(item * 750 / 100)
                    nCount += 1
                Next
                
                nCount = 0
                For Each item In ViewData("Caption")
                    aCaption(nCount) = item
                    nCount += 1
                Next
                %>
            
            <table>
                <tr style="height:400px">
                    <td align="center" valign="top">
                    <% 
                        Dim tController As String = ViewData("CtrlName")
                        Dim oData As IEnumerable(Of cmlCNBrowseMaster)
                        oData = ViewData("oC_BrwModel")
                        Dim gridDataBuilder = Html.Telerik().Grid(oData).HtmlAttributes(New With {.style = "table-layout: fixed;white-space:nowrap;font:Tahoma, Geneva, sans-serif;font-size:11px"})
                        gridDataBuilder.Name("GridBrw")
                        gridDataBuilder.Pageable(Function(page) page.PageSize(Session("nVB_CNBrwTop")))
                        'gridBuilder.Sortable()
                        If 1 <= nData Then
                            gridDataBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField01).Title(aCaption(0)).Width(nWidth(0)).HeaderHtmlAttributes(New With {.align = "center"}).HtmlAttributes(New With {.align = "left"}))
                        End If
                        If 2 <= nData Then
                            gridDataBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField02).Title(aCaption(1)).Width(nWidth(1)).HtmlAttributes(New With {.align = "left"}).ToString) '.Format("{0:dd/MM/yyyy}")
                        End If
                        If 3 <= nData Then
                            gridDataBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField03).Title(aCaption(2)).Width(nWidth(2)).HtmlAttributes(New With {.align = "left"}))
                        End If
                        If 4 <= nData Then
                            gridDataBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField04).Title(aCaption(3)).Width(nWidth(3)).HtmlAttributes(New With {.align = "left"}))
                        End If
                        If 5 <= nData Then
                            gridDataBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField05).Title(aCaption(4)).Width(nWidth(4)).HtmlAttributes(New With {.align = "left"}))
                        End If
                        If 6 <= nData Then
                            gridDataBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField06).Title(aCaption(5)).Width(nWidth(5)).HtmlAttributes(New With {.align = "left"}))
                        End If
                        If 7 <= nData Then
                            gridDataBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField07).Title(aCaption(6)).Width(nWidth(6)).HtmlAttributes(New With {.align = "left"}))
                        End If
                        If 8 <= nData Then
                            gridDataBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField08).Title(aCaption(7)).Width(nWidth(7)).HtmlAttributes(New With {.align = "left"}))
                        End If
                        If 9 <= nData Then
                            gridDataBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField09).Title(aCaption(8)).Width(nWidth(8)).HtmlAttributes(New With {.align = "left"}))
                        End If
                        If 10 <= nData Then
                            gridDataBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField10).Title(aCaption(9)).Width(nWidth(9)).HtmlAttributes(New With {.align = "left"}))
                        End If
                        
                        gridDataBuilder.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                          .Select("ogdMaster_SelectAjaxEditing", tController, _
                                  New With {.ptDate = "", _
                                            .ptFilterField = ViewData("FilterField"), _
                                            .ptFilterValue = ViewData("FilterValue"), _
                                            .ptCase = "PdtUnit"})))
                       
                        gridDataBuilder.DataKeys(Function(keys) (keys.Add(Function(c) c.FTField01)))
                        gridDataBuilder.Selectable()
                        gridDataBuilder.Scrollable(Function(Scroll) Scroll.Height(350))
                        gridDataBuilder.ClientEvents(Function(Events) Events.OnRowSelect("onRowSelected"))
                        gridDataBuilder.ClientEvents(Function(Events) Events.OnLoad("GridUnit_onLoad"))
                        gridDataBuilder.Render()
                        %>
                    </td>
                </tr>
            </table>
            <table border="1" width="100%">
                <tr>
                    <td style="text-align:left">
                        <label id="olaFilter"><%=ViewData("olaFilterBy")%></label>
                    </td>
                    <td style="width:70px; text-align:center">
                        <input id="ocmSelectData" type = "button"  
                            value = '<%=ViewData("olaOK") %>' 
                            onclick = "W_SETxUnitData()" 
                            style="width:55px;" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align:left">                            
                        <input type = "text" id="otbFilterData" 
                                maxlength="400" style=" width:77.5%" 
                                onkeydown="otbFilterData_onkeyDown(event.keyCode,event.which)" 
                                name="otbFilterData" />
                        <input type = "hidden" value = '<%=ViewData("CtrlName")%>' id="otbCtrlData" name="otbCtrlData"/>
                        <input type = "hidden" value = "" id="otbFieldName" name="otbFieldName" />
                        <input type = "button" value = '<%=ViewData("olaFil") %>' onclick="W_PRCxFillData()" />                            
                    </td>
                    <td style="text-align:center">
                        <input id="ocmCancelData" type = "button" 
                            value = '<%=ViewData("olaCancel")%>' 
                            style="width:55px;" />
                    </td>
                </tr>
                
            </table>
            <script type="text/javascript">
                var aCap = [];
                var aField = [];
                function onRowSelected(peParam) {
                    aCap = [];
                    aField = [];
                    <%For nI = 0 To 9 %>
                        aCap['<%=nI%>'] = '<%=aCaption(nI)%>';
                        aField['<%=nI%>'] = '<%=aField(nI)%>';
                    <%Next %>  
                    J015_SETxFieldFilter('GridBrw','otbFieldName','olaFilter',
                                         '<%=ViewData("olaFilterBy")%>',aCap,aField);
                    J015_onRowSelected(peParam, '<%=nData%>');                                                
                }
                function GridUnit_onLoad() {
                    aCap = [];
                    aField = [];
                    <%For nI = 0 To 9 %>
                        aCap['<%=nI%>'] = '<%=aCaption(nI)%>';
                        aField['<%=nI%>'] = '<%=aField(nI)%>';
                    <%Next %>                        
                    $('#GridBrw tr', this.element).live('dblclick', function(e) {
                        var $tr = $(this);
                        J015_SETxSelectData(tJ015_ReturnValue,'FTPdtSUnit','FTPunName');
                        $('#FTPdtSUnitOld').val($('#FTPdtSUnit').val());
                        $ui("#odiBrwData").dialog("close");
                    });
                    J015_GridBrwUI_onLoad('GridBrw','otbFieldName','olaFilter',
                                          '<%=ViewData("olaFilterBy")%>',aCap,aField);                        
                }   
                function W_PRCxFillData(){
                    J015_PRCxFillData('GridBrw','otbFieldName','otbFilterData','PdtUnit');                        
                }
            </script>
        </div>
    </div>
    <!-- ค้นหาหน่วย Browse Stock Code -->
    <div id="odiBrwStkData" title='<%=ViewData("olaBrowse")%>' class="xCN_DivTabDisplay">
        <div class="xW_DivGridDetail" style="height:auto">
            <%  Dim nStkData As Integer
                Dim nStkWidth(9) As Integer
                Dim aStkCaption(9) As String
                Dim aStkField(9) As String
                nCount = 0
                For Each item In ViewData("BrowseDataStk")
                    aStkField(nCount) = item
                    nCount += 1
                    nStkData += 1
                Next
                nCount = 0
                For Each item In ViewData("WidthStk")
                    nStkWidth(nCount) = CInt(item * 750 / 100)
                    nCount += 1
                Next
                
                nCount = 0
                For Each item In ViewData("CaptionStk")
                    aStkCaption(nCount) = item
                    nCount += 1
                Next
                %>
            
            <table>
                <tr style="height:400px">
                    <td align="center" valign="top">
                    <% 
                        Dim oStkData As IEnumerable(Of cmlCNBrowseMaster)
                        oStkData = ViewData("oC_BrwModelStk")
                        Dim gridStkDataBuilder = Html.Telerik().Grid(oStkData).HtmlAttributes(New With {.style = "table-layout: fixed;white-space:nowrap;font:Tahoma, Geneva, sans-serif;font-size:11px"})
                        gridStkDataBuilder.Name("GridStk")
                        gridStkDataBuilder.Pageable(Function(page) page.PageSize(Session("nVB_CNBrwTop")))
                        'gridBuilder.Sortable()
                        If 1 <= nStkData Then
                            gridStkDataBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField01).Title(aStkCaption(0)).Width(nStkWidth(0)).HeaderHtmlAttributes(New With {.align = "center"}).HtmlAttributes(New With {.align = "left"}))
                        End If
                        If 2 <= nStkData Then
                            gridStkDataBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTField02).Title(aStkCaption(1)).Width(nStkWidth(1)).HtmlAttributes(New With {.align = "left"}).ToString) '.Format("{0:dd/MM/yyyy}")
                        End If
                        
                        gridStkDataBuilder.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                          .Select("ogdMaster_SelectAjaxEditing", tController, _
                                  New With {.ptDate = "", _
                                            .ptFilterField = ViewData("FilterField"), _
                                            .ptFilterValue = ViewData("FilterValue"), _
                                            .ptCase = "Stk"})))
                       
                        gridStkDataBuilder.DataKeys(Function(keys) (keys.Add(Function(c) c.FTField01)))
                        gridStkDataBuilder.Selectable()
                        gridStkDataBuilder.Scrollable(Function(Scroll) Scroll.Height(350))
                        gridStkDataBuilder.ClientEvents(Function(Events) Events.OnRowSelect("C_STKxOnRowSelected"))
                        gridStkDataBuilder.ClientEvents(Function(Events) Events.OnLoad("GridStk_onLoad"))
                        gridStkDataBuilder.Render()
                        %>
                    </td>
                </tr>
            </table>
            <table border="1" width="100%">
                <tr>
                    <td style="text-align:left">
                        <label id="olaStkFilter"><%=ViewData("olaFilterBy")%></label>
                    </td>
                    <td style="width:70px; text-align:center">
                        <input id="ocmSelectStk" type = "button"  
                            value = '<%=ViewData("olaOK") %>' 
                            onclick = "W_SETxStkData()" 
                            style="width:55px;" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align:left">                            
                        <input type = "text" id="otbFilterStkData" 
                                maxlength="400" style=" width:77.5%" 
                                onkeydown="otbFilterStkData_onkeyDown(event.keyCode,event.which)" 
                                name="otbFilterStkData" />
                        <input type = "hidden" value = '<%=ViewData("CtrlName")%>' id="otbCtrlStkData" name="otbCtrlStkData"/>
                        <input type = "hidden" value = "" id="otbFieldStkName" name="otbFieldStkName" />
                        <input type = "button" value = '<%=ViewData("olaFil") %>' onclick="C_PRCxFillStkData()" />                            
                    </td>
                    <td style="text-align:center">
                        <input id="ocmStkCancel" type = "button" 
                            value = '<%=ViewData("olaCancel")%>' 
                            style="width:55px;" />
                    </td>
                </tr>
                
            </table>
            <script type="text/javascript">
                var aCapStk = [];
                var aFieldStk = [];
                function C_STKxOnRowSelected(peParam) {
                    aCapStk = [];
                    aFieldStk = [];
                    <%For nI = 0 To 9 %>
                         aCapStk['<%=nI%>'] = '<%=aStkCaption(nI)%>';
                         aFieldStk['<%=nI%>'] = '<%=aStkField(nI)%>';
                    <%Next %>
                    J015_SETxFieldFilter('GridStk','otbFieldStkName','olaStkFilter',
                                         '<%=ViewData("olaFilterBy")%>',aCapStk,aFieldStk)
                    J015_onRowSelected(peParam, '<%=nStkData%>');
                }
                function GridStk_onLoad() {
                    aCapStk = [];
                    aFieldStk = [];
                    <%For nI = 0 To 9 %>
                         aCapStk['<%=nI%>'] = '<%=aStkCaption(nI)%>';
                         aFieldStk['<%=nI%>'] = '<%=aStkField(nI)%>';
                    <%Next %>
                    $('#GridStk tr', this.element).live('dblclick', function(e) {
                        var $tr = $(this);
                        J015_SETxSelectData(tJ015_ReturnValue,'otbFTPdtStkCode');
                        $ui("#odiBrwStkData").dialog("close");
                    });
                    J015_GridBrwUI_onLoad('GridStk','otbFieldStkName','olaStkFilter',
                                          '<%=ViewData("olaFilterBy")%>',aCapStk,aFieldStk);                        
                }     
                function C_PRCxFillStkData(){
                    J015_PRCxFillData('GridStk','otbFieldStkName','otbFilterStkData','Stk');                        
                }               
            </script>
        </div> 
    </div>   
    <!-- ค้นหาหน่วย Browse Brand -->
    <div id="odiBrwBrand" title='<%=ViewData("olaBrowse")%>' class="xCN_DivTabDisplay">
        <div class="xW_DivGridDetail" style="height:auto">
            <%  Dim nDataBrd As Integer
                Dim nWidthBrd(9) As Integer
                Dim aCaptionBrd(9) As String
                Dim aFieldBrd(9) As String
                nCount = 0
                For Each item In ViewData("BrowseDataBrd")
                    aFieldBrd(nCount) = item
                    nCount += 1
                    nDataBrd += 1
                Next
                nCount = 0
                For Each item In ViewData("WidthBrd")
                    nWidthBrd(nCount) = CInt(item * 750 / 100)
                    nCount += 1
                Next
                
                nCount = 0
                For Each item In ViewData("CaptionBrd")
                    aCaptionBrd(nCount) = item
                    nCount += 1
                Next
                %>
            
            <table>
                <tr style="height:400px">
                    <td align="center" valign="top">
                    <% 
                        Dim oDataBrd As IEnumerable(Of cmlCNBrowseMaster)
                        oDataBrd = ViewData("oC_BrwModelBrd")
                        Dim gridDataBuilderBrd = Html.Telerik().Grid(oDataBrd).HtmlAttributes(New With {.style = "table-layout: fixed;white-space:nowrap;font:Tahoma, Geneva, sans-serif;font-size:11px"})
                        gridDataBuilderBrd.Name("GridBrd")
                        gridDataBuilderBrd.Pageable(Function(page) page.PageSize(Session("nVB_CNBrwTop")))
                        'gridBuilder.Sortable()
                        If 1 <= nDataBrd Then
                            gridDataBuilderBrd.Columns(Function(columns) columns.Bound(Function(o) o.FTField01).Title(aCaptionBrd(0)).Width(nWidthBrd(0)).HeaderHtmlAttributes(New With {.align = "center"}).HtmlAttributes(New With {.align = "left"}))
                        End If
                        If 2 <= nDataBrd Then
                            gridDataBuilderBrd.Columns(Function(columns) columns.Bound(Function(o) o.FTField02).Title(aCaptionBrd(1)).Width(nWidthBrd(1)).HtmlAttributes(New With {.align = "left"}).ToString) '.Format("{0:dd/MM/yyyy}")
                        End If
                        
                        gridDataBuilderBrd.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                          .Select("ogdMaster_SelectAjaxEditing", tController, _
                                  New With {.ptDate = "", _
                                            .ptFilterField = ViewData("FilterField"), _
                                            .ptFilterValue = ViewData("FilterValue"), _
                                            .ptCase = "Brd"})))
                       
                        gridDataBuilderBrd.DataKeys(Function(keys) (keys.Add(Function(c) c.FTField01)))
                        gridDataBuilderBrd.Selectable()
                        gridDataBuilderBrd.Scrollable(Function(Scroll) Scroll.Height(350))
                        gridDataBuilderBrd.ClientEvents(Function(Events) Events.OnRowSelect("C_BRDxOnRowSelected"))
                        gridDataBuilderBrd.ClientEvents(Function(Events) Events.OnLoad("GridBrd_onLoad"))
                        gridDataBuilderBrd.Render()
                        %>
                    </td>
                </tr>
            </table>
            <table border="1" width="100%">
                <tr>
                    <td style="text-align:left">
                        <label id="olaFilterBrdBy" name='olaFilterBrdBy'><%=ViewData("olaFilterBy")%></label>
                    </td>
                    <td style="width:70px; text-align:center">
                        <input id="ocmSelectBrd" type = "button"  
                            name='ocmSelectBrd'
                            value = '<%=ViewData("olaOK") %>' 
                            onclick = "W_SETxBrdData()" 
                            style="width:55px;" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align:left">                            
                        <input type="text" id="otbFilBrdValue" 
                                maxlength="400" style=" width:77.5%" 
                                onkeydown="otbFilBrdValue_onkeyDown(event.keyCode,event.which)" 
                                name="otbFilBrdValue" />
                        <%--<input type = "hidden" value = '<%=ViewData("CtrlName")%>' id="otbCtrlBrdValue" name="otbCtrlBrdValue"/>--%>
                        <input type = "hidden" value = "" id="otbFieldBrdName" name="otbFieldBrdName" />
                        <input type = "button" value = '<%=ViewData("olaFil") %>' onclick="C_PRCxFillBrd()" />                            
                    </td>
                    <td style="text-align:center">
                        <input id="ocmCancelBrd" type = "button"
                            name='ocmCancelBrd' 
                            value = '<%=ViewData("olaCancel")%>' 
                            style="width:55px;" />
                    </td>
                </tr>
                
            </table>
            <script type="text/javascript">
                var aCapBrd = [];
                var aFieldBrd = [];
                function C_BRDxOnRowSelected(peParam) {
                    aCapBrd = [];
                    aFieldBrd = [];
                    <%For nI = 0 To 9 %>
                         aCapBrd['<%=nI%>'] = '<%=aCaptionBrd(nI)%>';
                         aFieldBrd['<%=nI%>'] = '<%=aFieldBrd(nI)%>';
                    <%Next %>
                    J015_SETxFieldFilter('GridBrd','otbFieldBrdName','olaFilterBrdBy',
                                         '<%=ViewData("olaFilterBy")%>',aCapBrd,aFieldBrd)
                    J015_onRowSelected(peParam, '<%=nDataBrd%>');
                }
                function GridBrd_onLoad() {
                    aCapBrd = [];
                    aFieldBrd = [];
                    <%For nI = 0 To 9 %>
                         aCapBrd['<%=nI%>'] = '<%=aCaptionBrd(nI)%>';
                         aFieldBrd['<%=nI%>'] = '<%=aFieldBrd(nI)%>';
                    <%Next %>
                    $('#GridBrd tr', this.element).live('dblclick', function(e) {
                        var $tr = $(this);
                        J015_SETxSelectData(tJ015_ReturnValue,'otbFTPbnCode','otbFTPbnName');
                        $ui("#odiBrwBrand").dialog("close");
                    });
                    J015_GridBrwUI_onLoad('GridBrd','otbFieldBrdName','olaFilterBrdBy',
                                         '<%=ViewData("olaFilterBy")%>',aCapBrd,aFieldBrd)                       
                }     
                function C_PRCxFillBrd(){
                    J015_PRCxFillData('GridBrd','otbFieldBrdName','otbFilBrdValue','Brd');                        
                }               
            </script>
        </div> 
    </div> 
    <!-- ค้นหาหน่วย Browse Model -->
    <div id="odiBrwModel" title='<%=ViewData("olaBrowse")%>' class="xCN_DivTabDisplay">
        <div class="xW_DivGridDetail" style="height:auto">
            <%  Dim nDataPmo As Integer
                Dim nWidthPmo(9) As Integer
                Dim aCaptionPmo(9) As String
                Dim aFieldPmo(9) As String
                nCount = 0
                For Each item In ViewData("BrowseDataPmo")
                    aFieldPmo(nCount) = item
                    nCount += 1
                    nDataPmo += 1
                Next
                nCount = 0
                For Each item In ViewData("WidthPmo")
                    nWidthPmo(nCount) = CInt(item * 750 / 100)
                    nCount += 1
                Next
                
                nCount = 0
                For Each item In ViewData("CaptionPmo")
                    aCaptionPmo(nCount) = item
                    nCount += 1
                Next
                %>
            
            <table>
                <tr style="height:400px">
                    <td align="center" valign="top">
                    <% 
                        Dim oDataPmo As IEnumerable(Of cmlCNBrowseMaster)
                        oDataPmo = ViewData("oC_BrwModelPmo")
                        Dim gridDataBuilderPmo = Html.Telerik().Grid(oDataPmo).HtmlAttributes(New With {.style = "table-layout: fixed;white-space:nowrap;font:Tahoma, Geneva, sans-serif;font-size:11px"})
                        gridDataBuilderPmo.Name("GridPmo")
                        gridDataBuilderPmo.Pageable(Function(page) page.PageSize(Session("nVB_CNBrwTop")))
                        'gridBuilder.Sortable()
                        If 1 <= nDataPmo Then
                            gridDataBuilderPmo.Columns(Function(columns) columns.Bound(Function(o) o.FTField01).Title(aCaptionPmo(0)).Width(nWidthPmo(0)).HeaderHtmlAttributes(New With {.align = "center"}).HtmlAttributes(New With {.align = "left"}))
                        End If
                        If 2 <= nDataPmo Then
                            gridDataBuilderPmo.Columns(Function(columns) columns.Bound(Function(o) o.FTField02).Title(aCaptionPmo(1)).Width(nWidthPmo(1)).HtmlAttributes(New With {.align = "left"}).ToString) '.Format("{0:dd/MM/yyyy}")
                        End If
                        
                        gridDataBuilderPmo.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                          .Select("ogdMaster_SelectAjaxEditing", tController, _
                                  New With {.ptDate = "", _
                                            .ptFilterField = ViewData("FilterField"), _
                                            .ptFilterValue = ViewData("FilterValue"), _
                                            .ptCase = "Pmo"})))
                       
                        gridDataBuilderPmo.DataKeys(Function(keys) (keys.Add(Function(c) c.FTField01)))
                        gridDataBuilderPmo.Selectable()
                        gridDataBuilderPmo.Scrollable(Function(Scroll) Scroll.Height(350))
                        gridDataBuilderPmo.ClientEvents(Function(Events) Events.OnRowSelect("C_PMOxOnRowSelected"))
                        gridDataBuilderPmo.ClientEvents(Function(Events) Events.OnLoad("GridPmo_onLoad"))
                        gridDataBuilderPmo.Render()
                        %>
                    </td>
                </tr>
            </table>
            <table border="1" width="100%">
                <tr>
                    <td style="text-align:left">
                        <label id="olaFilterPmoBy" name='olaFilterPmoBy'><%=ViewData("olaFilterBy")%></label>
                    </td>
                    <td style="width:70px; text-align:center">
                        <input id="ocmSelectPmo" type = "button"  
                            name='ocmSelectPmo'
                            value = '<%=ViewData("olaOK") %>' 
                            onclick = "W_SETxBrdData()" 
                            style="width:55px;" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align:left">                            
                        <input type="text" id="otbFilPmoValue" 
                                maxlength="400" style=" width:77.5%" 
                                onkeydown="otbFilPmoValue_onkeyDown(event.keyCode,event.which)" 
                                name="otbFilPmoValue" />
                        <input type = "hidden" value = "" id="otbFieldPmoName" name="otbFieldPmoName" />
                        <input type = "button" value = '<%=ViewData("olaFil") %>' onclick="C_PRCxFillPmo()" />                            
                    </td>
                    <td style="text-align:center">
                        <input id="ocmCancelPmo" type = "button"
                            name='ocmCancelPmo' 
                            value = '<%=ViewData("olaCancel")%>' 
                            style="width:55px;" />
                    </td>
                </tr>
                
            </table>
            <script type="text/javascript">
                var aCapPmo = [];
                var aFieldPmo = [];
                function C_PMOxOnRowSelected(peParam) {
                    aCapPmo = [];
                    aFieldPmo = [];
                    <%For nI = 0 To 9 %>
                         aCapPmo['<%=nI%>'] = '<%=aCaptionPmo(nI)%>';
                         aFieldPmo['<%=nI%>'] = '<%=aFieldPmo(nI)%>';
                    <%Next %>
                    J015_SETxFieldFilter('GridPmo','otbFieldPmoName','olaFilterPmoBy',
                                         '<%=ViewData("olaFilterBy")%>',aCapPmo,aFieldPmo)
                    J015_onRowSelected(peParam, '<%=nDataBrd%>');
                }
                function GridPmo_onLoad() {
                    aCapPmo = [];
                    aFieldPmo = [];
                    <%For nI = 0 To 9 %>
                         aCapPmo['<%=nI%>'] = '<%=aCaptionPmo(nI)%>';
                         aFieldPmo['<%=nI%>'] = '<%=aFieldPmo(nI)%>';
                    <%Next %>
                    $('#GridPmo tr', this.element).live('dblclick', function(e) {
                        var $tr = $(this);
                        J015_SETxSelectData(tJ015_ReturnValue,'otbFTPmoCode','otbFTPmoName');
                        $ui("#odiBrwModel").dialog("close");
                    });
                    J015_GridBrwUI_onLoad('GridPmo','otbFieldPmoName','olaFilterPmoBy',
                                         '<%=ViewData("olaFilterBy")%>',aCapPmo,aFieldPmo)                       
                }     
                function C_PRCxFillPmo(){
                    J015_PRCxFillData('GridPmo','otbFieldPmoName','otbFilPmoValue','Pmo');                        
                }               
            </script>
        </div> 
    </div>
    <!-- ค้นหาหน่วย Browse Type -->
    <div id="odiBrwType" title='<%=ViewData("olaBrowse")%>' class="xCN_DivTabDisplay">
        <div class="xW_DivGridDetail" style="height:auto">
            <%  Dim nDataPty As Integer
                Dim nWidthPty(9) As Integer
                Dim aCaptionPty(9) As String
                Dim aFieldPty(9) As String
                nCount = 0
                For Each item In ViewData("BrowseDataPty")
                    aFieldPty(nCount) = item
                    nCount += 1
                    nDataPty += 1
                Next
                nCount = 0
                For Each item In ViewData("WidthPty")
                    nWidthPty(nCount) = CInt(item * 750 / 100)
                    nCount += 1
                Next
                
                nCount = 0
                For Each item In ViewData("CaptionPty")
                    aCaptionPty(nCount) = item
                    nCount += 1
                Next
                %>
            
            <table>
                <tr style="height:400px">
                    <td align="center" valign="top">
                    <% 
                        Dim oDataPty As IEnumerable(Of cmlCNBrowseMaster)
                        oDataPty = ViewData("oC_BrwModelPty")
                        Dim gridDataBuilderPty = Html.Telerik().Grid(oDataPty).HtmlAttributes(New With {.style = "table-layout: fixed;white-space:nowrap;font:Tahoma, Geneva, sans-serif;font-size:11px"})
                        gridDataBuilderPty.Name("GridPty")
                        gridDataBuilderPty.Pageable(Function(page) page.PageSize(Session("nVB_CNBrwTop")))
                        'gridBuilder.Sortable()
                        If 1 <= nDataPty Then
                            gridDataBuilderPty.Columns(Function(columns) columns.Bound(Function(o) o.FTField01).Title(aCaptionPty(0)).Width(nWidthPty(0)).HeaderHtmlAttributes(New With {.align = "center"}).HtmlAttributes(New With {.align = "left"}))
                        End If
                        If 2 <= nDataPty Then
                            gridDataBuilderPty.Columns(Function(columns) columns.Bound(Function(o) o.FTField02).Title(aCaptionPty(1)).Width(nWidthPty(1)).HtmlAttributes(New With {.align = "left"}).ToString) '.Format("{0:dd/MM/yyyy}")
                        End If
                        
                        gridDataBuilderPty.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                          .Select("ogdMaster_SelectAjaxEditing", tController, _
                                  New With {.ptDate = "", _
                                            .ptFilterField = ViewData("FilterField"), _
                                            .ptFilterValue = ViewData("FilterValue"), _
                                            .ptCase = "Pty"})))
                       
                        gridDataBuilderPty.DataKeys(Function(keys) (keys.Add(Function(c) c.FTField01)))
                        gridDataBuilderPty.Selectable()
                        gridDataBuilderPty.Scrollable(Function(Scroll) Scroll.Height(350))
                        gridDataBuilderPty.ClientEvents(Function(Events) Events.OnRowSelect("C_PTYxOnRowSelected"))
                        gridDataBuilderPty.ClientEvents(Function(Events) Events.OnLoad("GridPty_onLoad"))
                        gridDataBuilderPty.Render()
                        %>
                    </td>
                </tr>
            </table>
            <table border="1" width="100%">
                <tr>
                    <td style="text-align:left">
                        <label id="olaFilterPtyBy" name='olaFilterPtyBy'><%=ViewData("olaFilterBy")%></label>
                    </td>
                    <td style="width:70px; text-align:center">
                        <input id="ocmSelectPty" type = "button"  
                            name='ocmSelectPty'
                            value = '<%=ViewData("olaOK") %>' 
                            onclick = "W_SETxPtyData()" 
                            style="width:55px;" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align:left">                            
                        <input type="text" id="otbFilPtyValue" 
                                maxlength="400" style=" width:77.5%" 
                                onkeydown="otbFilPtyValue_onkeyDown(event.keyCode,event.which)" 
                                name="otbFilPtyValue" />
                        <input type = "hidden" value = "" id="otbFieldPtyName" name="otbFieldPtyName" />
                        <input type = "button" value = '<%=ViewData("olaFil") %>' onclick="C_PRCxFillPty()" />                            
                    </td>
                    <td style="text-align:center">
                        <input id="ocmCancelPty" type = "button"
                            name='ocmCancelPty' 
                            value = '<%=ViewData("olaCancel")%>' 
                            style="width:55px;" />
                    </td>
                </tr>
                
            </table>
            <script type="text/javascript">
                var aCapPty = [];
                var aFieldPty = [];
                function C_PTYxOnRowSelected(peParam) {
                    aCapPty = [];
                    aFieldPty = [];
                    <%For nI = 0 To 9 %>
                         aCapPty['<%=nI%>'] = '<%=aCaptionPty(nI)%>';
                         aFieldPty['<%=nI%>'] = '<%=aFieldPty(nI)%>';
                    <%Next %>
                    J015_SETxFieldFilter('GridPty','otbFieldPtyName','olaFilterPtyBy',
                                         '<%=ViewData("olaFilterBy")%>',aCapPty,aFieldPty)
                    J015_onRowSelected(peParam, '<%=nDataBrd%>');
                }
                function GridPty_onLoad() {
                    aCapPty = [];
                    aFieldPty = [];
                    <%For nI = 0 To 9 %>
                         aCapPty['<%=nI%>'] = '<%=aCaptionPty(nI)%>';
                         aFieldPty['<%=nI%>'] = '<%=aFieldPty(nI)%>';
                    <%Next %>
                    $('#GridPty tr', this.element).live('dblclick', function(e) {
                        var $tr = $(this);
                        J015_SETxSelectData(tJ015_ReturnValue,'otbFTPtyCode','otbFTPtyName');
                        $ui("#odiBrwType").dialog("close");
                    });
                    J015_GridBrwUI_onLoad('GridPty','otbFieldPtyName','olaFilterPtyBy',
                                         '<%=ViewData("olaFilterBy")%>',aCapPty,aFieldPty)                       
                }     
                function C_PRCxFillPty(){
                    J015_PRCxFillData('GridPty','otbFieldPtyName','otbFilPtyValue','Pty');                        
                }               
            </script>
        </div> 
    </div>
    <!-- ค้นหาหน่วย Browse Color -->
    <div id="odiBrwColor" title='<%=ViewData("olaBrowse")%>' class="xCN_DivTabDisplay">
        <div class="xW_DivGridDetail" style="height:auto">
            <%  Dim nDataClr As Integer
                Dim nWidthClr(9) As Integer
                Dim aCaptionClr(9) As String
                Dim aFieldClr(9) As String
                nCount = 0
                For Each item In ViewData("BrowseDataClr")
                    aFieldClr(nCount) = item
                    nCount += 1
                    nDataClr += 1
                Next
                nCount = 0
                For Each item In ViewData("WidthClr")
                    nWidthClr(nCount) = CInt(item * 750 / 100)
                    nCount += 1
                Next
                
                nCount = 0
                For Each item In ViewData("CaptionClr")
                    aCaptionClr(nCount) = item
                    nCount += 1
                Next
                %>
            
            <table>
                <tr style="height:400px">
                    <td align="center" valign="top">
                    <% 
                        Dim oDataClr As IEnumerable(Of cmlCNBrowseMaster)
                        oDataClr = ViewData("oC_BrwModelClr")
                        Dim gridDataBuilderClr = Html.Telerik().Grid(oDataClr).HtmlAttributes(New With {.style = "table-layout: fixed;white-space:nowrap;font:Tahoma, Geneva, sans-serif;font-size:11px"})
                        gridDataBuilderClr.Name("GridClr")
                        gridDataBuilderClr.Pageable(Function(page) page.PageSize(Session("nVB_CNBrwTop")))
                        'gridBuilder.Sortable()
                        If 1 <= nDataClr Then
                            gridDataBuilderClr.Columns(Function(columns) columns.Bound(Function(o) o.FTField01).Title(aCaptionClr(0)).Width(nWidthClr(0)).HeaderHtmlAttributes(New With {.align = "center"}).HtmlAttributes(New With {.align = "left"}))
                        End If
                        If 2 <= nDataClr Then
                            gridDataBuilderClr.Columns(Function(columns) columns.Bound(Function(o) o.FTField02).Title(aCaptionClr(1)).Width(nWidthClr(1)).HtmlAttributes(New With {.align = "left"}).ToString) '.Format("{0:dd/MM/yyyy}")
                        End If
                        
                        gridDataBuilderClr.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                          .Select("ogdMaster_SelectAjaxEditing", tController, _
                                  New With {.ptDate = "", _
                                            .ptFilterField = ViewData("FilterField"), _
                                            .ptFilterValue = ViewData("FilterValue"), _
                                            .ptCase = "Clr"})))
                       
                        gridDataBuilderClr.DataKeys(Function(keys) (keys.Add(Function(c) c.FTField01)))
                        gridDataBuilderClr.Selectable()
                        gridDataBuilderClr.Scrollable(Function(Scroll) Scroll.Height(350))
                        gridDataBuilderClr.ClientEvents(Function(Events) Events.OnRowSelect("C_SETxOnRowSelectedClr"))
                        gridDataBuilderClr.ClientEvents(Function(Events) Events.OnLoad("GridClr_onLoad"))
                        gridDataBuilderClr.Render()
                        %>
                    </td>
                </tr>
            </table>
            <table border="1" width="100%">
                <tr>
                    <td style="text-align:left">
                        <label id="olaFilterClrBy" name='olaFilterClrBy'><%=ViewData("olaFilterBy")%></label>
                    </td>
                    <td style="width:70px; text-align:center">
                        <input id="ocmSelectClr" type = "button"  
                            name='ocmSelectClr'
                            value = '<%=ViewData("olaOK") %>' 
                            onclick = "W_SETxClrData()" 
                            style="width:55px;" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align:left">                            
                        <input type="text" id="otbFilClrValue" 
                                maxlength="400" style=" width:77.5%" 
                                onkeydown="otbFilClrValue_onkeyDown(event.keyCode,event.which)" 
                                name="otbFilClrValue" />
                        <input type = "hidden" value = "" id="otbFieldClrName" name="otbFieldClrName" />
                        <input type = "button" value = '<%=ViewData("olaFil") %>' onclick="C_PRCxFillClr()" />                            
                    </td>
                    <td style="text-align:center">
                        <input id="ocmCancelClr" type = "button"
                            name='ocmCancelClr' 
                            value = '<%=ViewData("olaCancel")%>' 
                            style="width:55px;" />
                    </td>
                </tr>
                
            </table>
            <script type="text/javascript">
                var aCapClr = [];
                var aFieldClr = [];
                function C_SETxOnRowSelectedClr(peParam) {
                    aCapClr = [];
                    aFieldClr = [];
                    <%For nI = 0 To 9 %>
                         aCapClr['<%=nI%>'] = '<%=aCaptionClr(nI)%>';
                         aFieldClr['<%=nI%>'] = '<%=aFieldClr(nI)%>';
                    <%Next %>
                    J015_SETxFieldFilter('GridClr','otbFieldClrName','olaFilterClrBy',
                                         '<%=ViewData("olaFilterBy")%>',aCapClr,aFieldClr)
                    J015_onRowSelected(peParam, '<%=nDataClr%>');
                }
                function GridClr_onLoad() {
                    aCapClr = [];
                    aFieldClr = [];
                    <%For nI = 0 To 9 %>
                         aCapClr['<%=nI%>'] = '<%=aCaptionClr(nI)%>';
                         aFieldClr['<%=nI%>'] = '<%=aFieldClr(nI)%>';
                    <%Next %>
                    $('#GridClr tr', this.element).live('dblclick', function(e) {
                        var $tr = $(this);
                        J015_SETxSelectData(tJ015_ReturnValue,'otbFTClrCode','otbFTClrName');
                        $ui("#odiBrwColor").dialog("close");
                    });
                    J015_GridBrwUI_onLoad('GridClr','otbFieldClrName','olaFilterClrBy',
                                         '<%=ViewData("olaFilterBy")%>',aCapClr,aFieldClr)                       
                }     
                function C_PRCxFillClr(){
                    J015_PRCxFillData('GridClr','otbFieldClrName','otbFilClrValue','Clr');                        
                }               
            </script>
        </div> 
    </div>
    <!-- ค้นหาหน่วย Browse Size -->
    <div id="odiBrwSize" title='<%=ViewData("olaBrowse")%>' class="xCN_DivTabDisplay">
        <div class="xW_DivGridDetail" style="height:auto">
            <%  Dim nDataPsz As Integer
                Dim nWidthPsz(9) As Integer
                Dim aCaptionPsz(9) As String
                Dim aFieldPsz(9) As String
                nCount = 0
                For Each item In ViewData("BrowseDataPsz")
                    aFieldPsz(nCount) = item
                    nCount += 1
                    nDataPsz += 1
                Next
                nCount = 0
                For Each item In ViewData("WidthPsz")
                    nWidthPsz(nCount) = CInt(item * 750 / 100)
                    nCount += 1
                Next
                
                nCount = 0
                For Each item In ViewData("CaptionPsz")
                    aCaptionPsz(nCount) = item
                    nCount += 1
                Next
                %>
            
            <table>
                <tr style="height:400px">
                    <td align="center" valign="top">
                    <% 
                        Dim oDataPsz As IEnumerable(Of cmlCNBrowseMaster)
                        oDataPsz = ViewData("oC_BrwModelPsz")
                        Dim gridDataBuilderPsz = Html.Telerik().Grid(oDataPsz).HtmlAttributes(New With {.style = "table-layout: fixed;white-space:nowrap;font:Tahoma, Geneva, sans-serif;font-size:11px"})
                        gridDataBuilderPsz.Name("GridPsz")
                        gridDataBuilderPsz.Pageable(Function(page) page.PageSize(Session("nVB_CNBrwTop")))
                        'gridBuilder.Sortable()
                        If 1 <= nDataPsz Then
                            gridDataBuilderPsz.Columns(Function(columns) columns.Bound(Function(o) o.FTField01).Title(aCaptionPsz(0)).Width(nWidthPsz(0)).HeaderHtmlAttributes(New With {.align = "center"}).HtmlAttributes(New With {.align = "left"}))
                        End If
                        If 2 <= nDataPsz Then
                            gridDataBuilderPsz.Columns(Function(columns) columns.Bound(Function(o) o.FTField02).Title(aCaptionPsz(1)).Width(nWidthPsz(1)).HtmlAttributes(New With {.align = "left"}).ToString) '.Format("{0:dd/MM/yyyy}")
                        End If
                        
                        gridDataBuilderPsz.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                          .Select("ogdMaster_SelectAjaxEditing", tController, _
                                  New With {.ptDate = "", _
                                            .ptFilterField = ViewData("FilterField"), _
                                            .ptFilterValue = ViewData("FilterValue"), _
                                            .ptCase = "Psz"})))
                       
                        gridDataBuilderPsz.DataKeys(Function(keys) (keys.Add(Function(c) c.FTField01)))
                        gridDataBuilderPsz.Selectable()
                        gridDataBuilderPsz.Scrollable(Function(Scroll) Scroll.Height(350))
                        gridDataBuilderPsz.ClientEvents(Function(Events) Events.OnRowSelect("C_SETxOnRowSelectedPsz"))
                        gridDataBuilderPsz.ClientEvents(Function(Events) Events.OnLoad("GridPsz_onLoad"))
                        gridDataBuilderPsz.Render()
                        %>
                    </td>
                </tr>
            </table>
            <table border="1" width="100%">
                <tr>
                    <td style="text-align:left">
                        <label id="olaFilterPszBy" name='olaFilterPszBy'><%=ViewData("olaFilterBy")%></label>
                    </td>
                    <td style="width:70px; text-align:center">
                        <input id="ocmSelectPsz" type = "button"  
                            name='ocmSelectPsz'
                            value = '<%=ViewData("olaOK") %>' 
                            onclick = "W_SETxPszData()" 
                            style="width:55px;" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align:left">                            
                        <input type="text" id="otbFilPszValue" 
                                maxlength="400" style=" width:77.5%" 
                                onkeydown="otbFilPszValue_onkeyDown(event.keyCode,event.which)" 
                                name="otbFilPszValue" />
                        <input type = "hidden" value = "" id="otbFieldPszName" name="otbFieldPszName" />
                        <input type = "button" value = '<%=ViewData("olaFil") %>' onclick="C_PRCxFillPsz()" />                            
                    </td>
                    <td style="text-align:center">
                        <input id="ocmCancelPsz" type = "button"
                            name='ocmCancelPsz' 
                            value = '<%=ViewData("olaCancel")%>' 
                            style="width:55px;" />
                    </td>
                </tr>
                
            </table>
            <script type="text/javascript">
                var aCapPsz = [];
                var aFieldPsz = [];
                function C_SETxOnRowSelectedPsz(peParam) {
                    aCapPsz = [];
                    aFieldPsz = [];
                    <%For nI = 0 To 9 %>
                         aCapPsz['<%=nI%>'] = '<%=aCaptionPsz(nI)%>';
                         aFieldPsz['<%=nI%>'] = '<%=aFieldPsz(nI)%>';
                    <%Next %>
                    J015_SETxFieldFilter('GridPsz','otbFieldPszName','olaFilterPszBy',
                                         '<%=ViewData("olaFilterBy")%>',aCapPsz,aFieldPsz)
                    J015_onRowSelected(peParam, '<%=nDataPsz%>');
                }
                function GridPsz_onLoad() {
                    aCapPsz = [];
                    aFieldPsz = [];
                    <%For nI = 0 To 9 %>
                         aCapPsz['<%=nI%>'] = '<%=aCaptionPsz(nI)%>';
                         aFieldPsz['<%=nI%>'] = '<%=aFieldPsz(nI)%>';
                    <%Next %>
                    $('#GridPsz tr', this.element).live('dblclick', function(e) {
                        var $tr = $(this);
                        J015_SETxSelectData(tJ015_ReturnValue,'otbFTPszCode','otbFTPszName');
                        $ui("#odiBrwSize").dialog("close");
                    });
                    J015_GridBrwUI_onLoad('GridPsz','otbFieldPszName','olaFilterPszBy',
                                         '<%=ViewData("olaFilterBy")%>',aCapPsz,aFieldPsz)                       
                }     
                function C_PRCxFillPsz(){
                    J015_PRCxFillData('GridPsz','otbFieldPszName','otbFilPszValue','Psz');                        
                }               
            </script>
        </div> 
    </div>
    <!-- ค้นหาหน่วย Browse Buyer -->
    <div id="odiBrwBuyer" title='<%=ViewData("olaBrowse")%>' class="xCN_DivTabDisplay">
        <div class="xW_DivGridDetail" style="height:auto">
            <%  Dim nDataUsr As Integer
                Dim nWidthUsr(9) As Integer
                Dim aCaptionUsr(9) As String
                Dim aFieldUsr(9) As String
                nCount = 0
                For Each item In ViewData("BrowseDataUsr")
                    aFieldUsr(nCount) = item
                    nCount += 1
                    nDataUsr += 1
                Next
                nCount = 0
                For Each item In ViewData("WidthUsr")
                    nWidthUsr(nCount) = CInt(item * 750 / 100)
                    nCount += 1
                Next
                
                nCount = 0
                For Each item In ViewData("CaptionUsr")
                    aCaptionUsr(nCount) = item
                    nCount += 1
                Next
                %>
            
            <table>
                <tr style="height:400px">
                    <td align="center" valign="top">
                    <% 
                        Dim oDataUsr As IEnumerable(Of cmlCNBrowseMaster)
                        oDataUsr = ViewData("oC_BrwModelUsr")
                        Dim gridDataBuilderUsr = Html.Telerik().Grid(oDataUsr).HtmlAttributes(New With {.style = "table-layout: fixed;white-space:nowrap;font:Tahoma, Geneva, sans-serif;font-size:11px"})
                        gridDataBuilderUsr.Name("GridUsr")
                        gridDataBuilderUsr.Pageable(Function(page) page.PageSize(Session("nVB_CNBrwTop")))
                        'gridBuilder.Sortable()
                        If 1 <= nDataUsr Then
                            gridDataBuilderUsr.Columns(Function(columns) columns.Bound(Function(o) o.FTField01).Title(aCaptionUsr(0)).Width(nWidthUsr(0)).HeaderHtmlAttributes(New With {.align = "center"}).HtmlAttributes(New With {.align = "left"}))
                        End If
                        If 2 <= nDataUsr Then
                            gridDataBuilderUsr.Columns(Function(columns) columns.Bound(Function(o) o.FTField02).Title(aCaptionUsr(1)).Width(nWidthUsr(1)).HtmlAttributes(New With {.align = "left"}).ToString) '.Format("{0:dd/MM/yyyy}")
                        End If
                        
                        gridDataBuilderUsr.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                          .Select("ogdMaster_SelectAjaxEditing", tController, _
                                  New With {.ptDate = "", _
                                            .ptFilterField = ViewData("FilterField"), _
                                            .ptFilterValue = ViewData("FilterValue"), _
                                            .ptCase = "Usr"})))
                       
                        gridDataBuilderUsr.DataKeys(Function(keys) (keys.Add(Function(c) c.FTField01)))
                        gridDataBuilderUsr.Selectable()
                        gridDataBuilderUsr.Scrollable(Function(Scroll) Scroll.Height(350))
                        gridDataBuilderUsr.ClientEvents(Function(Events) Events.OnRowSelect("C_SETxOnRowSelectedUsr"))
                        gridDataBuilderUsr.ClientEvents(Function(Events) Events.OnLoad("GridUsr_onLoad"))
                        gridDataBuilderUsr.Render()
                        %>
                    </td>
                </tr>
            </table>
            <table border="1" width="100%">
                <tr>
                    <td style="text-align:left">
                        <label id="olaFilterUsrBy" name='olaFilterUsrBy'><%=ViewData("olaFilterBy")%></label>
                    </td>
                    <td style="width:70px; text-align:center">
                        <input id="ocmSelectUsr" type = "button"  
                            name='ocmSelectUsr'
                            value = '<%=ViewData("olaOK") %>' 
                            onclick = "W_SETxUsrData()" 
                            style="width:55px;" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align:left">                            
                        <input type="text" id="otbFilUsrValue" 
                                maxlength="400" style=" width:77.5%" 
                                onkeydown="otbFilUsrValue_onkeyDown(event.keyCode,event.which)" 
                                name="otbFilUsrValue" />
                        <input type = "hidden" value = "" id="otbFieldUsrName" name="otbFieldUsrName" />
                        <input type = "button" value = '<%=ViewData("olaFil") %>' onclick="C_PRCxFillUsr()" />                            
                    </td>
                    <td style="text-align:center">
                        <input id="ocmCancelUsr" type = "button"
                            name='ocmCancelUsr' 
                            value = '<%=ViewData("olaCancel")%>' 
                            style="width:55px;" />
                    </td>
                </tr>
                
            </table>
            <script type="text/javascript">
                var aCapUsr = [];
                var aFieldUsr = [];
                function C_SETxOnRowSelectedUsr(peParam) {
                    aCapUsr = [];
                    aFieldUsr = [];
                    <%For nI = 0 To 9 %>
                         aCapUsr['<%=nI%>'] = '<%=aCaptionUsr(nI)%>';
                         aFieldUsr['<%=nI%>'] = '<%=aFieldUsr(nI)%>';
                    <%Next %>
                    J015_SETxFieldFilter('GridUsr','otbFieldUsrName','olaFilterUsrBy',
                                         '<%=ViewData("olaFilterBy")%>',aCapUsr,aFieldUsr)
                    J015_onRowSelected(peParam, '<%=nDataUsr%>');
                }
                function GridUsr_onLoad() {
                    aCapUsr = [];
                    aFieldUsr = [];
                    <%For nI = 0 To 9 %>
                         aCapUsr['<%=nI%>'] = '<%=aCaptionUsr(nI)%>';
                         aFieldUsr['<%=nI%>'] = '<%=aFieldUsr(nI)%>';
                    <%Next %>
                    $('#GridUsr tr', this.element).live('dblclick', function(e) {
                        var $tr = $(this);
                        J015_SETxSelectData(tJ015_ReturnValue,'otbFTUsrCode','otbFTUsrName');
                        $ui("#odiBrwBuyer").dialog("close");
                    });
                    J015_GridBrwUI_onLoad('GridUsr','otbFieldUsrName','olaFilterUsrBy',
                                         '<%=ViewData("olaFilterBy")%>',aCapUsr,aFieldUsr)                       
                }     
                function C_PRCxFillUsr(){
                    J015_PRCxFillData('GridUsr','otbFieldUsrName','otbFilUsrValue','Usr');                        
                }               
            </script>
        </div> 
    </div>
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
                    <input id="ocmCancel" type="button" style="width:100%" value="<%=ViewData("olaCancel") %>" />
                </div>
            </div>
        </div>
    </div>    
    <!-- Product Group -->
    <div id="odiBrwPdtGrp" title='<%=ViewData("olaBrwPdtGrp")%>' class="xCN_DivTabDisplay">
        <div class="xW_DivGridDetail" style="height:auto">
            <input type ="hidden" id="TreeValueSel" name="TreeValueSel" />
            <div style="overflow:scroll;height:400px;">
	            <%  	                
	                Dim oTreeView As Telerik.Web.Mvc.UI.TreeView = Html.Telerik().TreeView(). _
	                                                                ClientEvents(Function(Even) _
	                                                                                 Even.OnSelect("onSelect"))
		            oTreeView.Name = "TreeViewPDTGrp"
		            oTreeView.ShowLines = True
		            Dim oo As New Telerik.Web.Mvc.UI.TreeViewClientEvents
		            Dim oTmp As New Telerik.Web.Mvc.UI.TreeViewItem
		            Dim bFirst As Boolean = False
	                Dim oSub As New Telerik.Web.Mvc.UI.TreeViewItem
	                Dim oPdtGrp As New List(Of cmlCNBrwPdtGrp)
	                oPdtGrp = ViewData("BrwPdtGrp")
	                For Each item In oPdtGrp
	                    oSub = New Telerik.Web.Mvc.UI.TreeViewItem
	                    oSub.Text = item.FTPgpName & " (" & item.FTPgpChain.Trim & ")"
	                    oSub.Expanded = True
	                    oSub.Value = item.FTPgpChain
	                    oSub.ImageUrl = ("~/Content/img/AdaBrwPdtGrp/foldersList.gif")
	                    Dim oOBJ As Telerik.Web.Mvc.UI.TreeViewItem
	                    If item.FNPgpLevel = 1 Then
	                        oOBJ = oTmp
	                    Else
	                        oOBJ = AdaWebPos.cCNSP.C_GEToGETObject(oTreeView, _
	                                                                            Mid(item.FTPgpChain, 1, _
	                                                                                item.FTPgpChain.Length - item.FTPgpCode.Length), _
	                                                                                item.FNPgpLevel)
	                    End If
                        
	                    If bFirst = False Then
	                        oTmp = oSub
	                    End If
	                    Dim qry = From ItemSel In oPdtGrp Where ItemSel.FTSelect = True Select ItemSel
	                    If qry.Count > 0 AndAlso qry.FirstOrDefault.FTPgpChain.ToUpper.Trim.Equals(item.FTPgpChain.Trim.ToUpper) Then
	                        oSub.Selected = True
	                    End If
                                   
	                    If bFirst = False Or oOBJ Is Nothing Then
	                        oTreeView.Items.Add(oSub)
	                        bFirst = True
	                    ElseIf oOBJ IsNot Nothing Then
	                        oOBJ.Items.Add(oSub)
                           
	                    End If
	                Next
		            oTreeView.Effects.OpenDuration = 100
		            oTreeView.Effects.CloseDuration = 100
		            oTreeView.ExpandAll = True
	                oTreeView.Render()
	            %>
            </div>
            <div>
	            <input id="ockExpand" type="checkbox" checked="checked" onclick="CheckExpandItemTreeView()"></input>
	            <span><%=ViewData("olaExpand")%></span>
            </div>
            <div>
	            <input id="ocmCancelPdtGrp" type="button" value="<%=ViewData("olaCancel")%>" style="float:right;width:70;"></input>
	            <input id="ocmSelectPdtGrp" type="button" value="<%=ViewData("olaOK")%>" onclick="W_DATxOk()" style="float:right;width:70;"></input>
            </div>
            <script type="text/javascript">
                function onSelect(e) {
                    var treeView = $("#TreeViewPDTGrp").data("tTreeView");
                    var tNodeValue = treeView.getItemValue(e.item);
                    $('#TreeValueSel').val(tNodeValue);
                }
                function onCollapse(e) {
                    var item = $(e.item);
                    $('#TreeValueSel').val(item.text);
                }
                function onExpand(e) {
                    var item = $(e.item);
                    $('#TreeValueSel').val(item.text);
                }
                function ExpandItem() {
                    var treeView = $("#TreeViewPDTGrp").data("tTreeView");
                    for (i = 0; i <= 100; i++) {
                        var item = $("> ul > li > ul > li", treeView.element)[i];
                        treeView.expand(item);
                    }
                }
                function CollpaseItem() {
                    var treeView = $("#TreeViewPDTGrp").data("tTreeView");
                    for (i = 0; i <= 100; i++) {
                        var item = $("> ul > li > ul > li", treeView.element)[i];
                        treeView.collapse(item);
                    }
                }
                function FormOnload() {
                    var QueryStr = GetParaQueryStr('ptPgpChain');
                    if (QueryStr != '') {
                        startRequest(QueryStr)
                    };
                }
                function GetParaQueryStr(ptname) {  //Get ค่าของ Query String
                    ptname = ptname.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
                    var regexS = "[\\?&]" + ptname + "=([^&#]*)";
                    var regex = new RegExp(regexS);
                    var results = regex.exec(window.location.href);
                    if (results == null)
                        return "";
                    else
                        return results[1];
                }
                function CheckExpandItemTreeView() {
                    if ($('#ockExpand').attr('checked')) {
                        ExpandItem();
                    } else {
                        CollpaseItem();
                    }
                }    
            </script>
        </div>
    </div>
    
    <!-- Delete Grid -->
    <div id="odiDelGrid" title='' class="xCN_DivTabDisplay">
        <div class="xCN_DivTabDisplaySub" >
            <div class="xCN_DivDialogTop">
                <div id='odiImgMsg' class="xCN_DivShowIcon">
                    <a></a>
                </div>
                <div class='xCN_DivDialoglabel'><label id='olaMsgErr' ></label></div>
            </div>       
        </div>
    </div>  
    <!-- Show Duplicate BarCode -->
    <div id="odiDupBarCode" title='' class="xCN_DivTabDisplay">
        <div class="xCN_DivTabDisplaySub" >
            <div class="xCN_DivDialogTop">
                <div id='odiImgMessage' class="xCN_DivShowIcon">
                    <a></a>
                </div>
                <div class='xCN_DivDialoglabel'><label id='olaMessage' ></label></div>
            </div>       
        </div>
    </div> 
    <!-- Dialog Show Message When Save Product -->
    <div id="odiMsgWhenSavePdt" title='' class="xCN_DivTabDisplay">
        <div class="xCN_DivTabDisplaySub" >
            <div class="xCN_DivDialogTop">
                <div id='odiImgSavePdt' class="xCN_DivShowIcon">
                    <a></a>
                </div>
                <div class='xCN_DivDialoglabel'><label id='olaMsgSavePdt' ></label></div>
            </div>       
        </div>
    </div>       
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
    <link type="text/css" rel="Stylesheet" href="<%=Url.Content("~/Content/AdaCss/Local/FCS_cvcTCNMPdt.css") %>"/>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J002_General.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J003_SplashDialog.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J009_ShowTab.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J010_ShowTabData.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J015_UIBrowse.js") %>"></script>
    <link type="text/css" rel="Stylesheet" href="<%=Url.Content("~/Content/AdaCss/Local/FCS_cvcManagementLocal.css")%>" />
    <link href="<%=Url.Content("~/Content/AdaCss/Global/FCS_CNDialog.css") %>" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        //#### ตัวแปรกลาง ####
        var nW_DecAmtForShw = '<%=Session("nVB_CNDecAmtForShw")%>';
        var nW_Sta = 0; //0 หน้าใหม่, 1 แก้ไข
        var tW_ObjOldValue; //id textbox ที่สามารถปรับเปลี่ยนค่าได้
        //#################
        
        window.onload = W_FRMxIniatial;
        function W_FRMxIniatial() {
            tJ003_VirtualDirectory = '<%=Session("VirtualDirectory")%>';
            W_DATxDefault();
            W_SETxStatusProduct();
            W_SETxStyleAddBarCode();
            W_CHKxCheckDataMaster();
        }

        function W_DATxDefault() {
            $('#otbFTPdtCode').val('<%=Model.FTPdtCode%>');
            $('#otbFTPdtName').val('<%=Model.FTPdtName%>');
            $('#otbPdtnameOth').val('<%=Model.FTPdtNameOth%>');
            $('#otbFTPgpChain').val('<%=Model.FTPgpChain%>');
            $('#otbFTPgpChainName').val('<%=Model.FTPgpChainName%>');
            $('#otbFTPdtStkCode').val('<%=Model.FTPdtStkCode%>');
            $('#otbFCPdtStkFac').val('<%=Model.FCPdtStkFac%>');
            $('#otbFTPbnCode').val('<%=Model.FTPbnCode%>');
            $('#otbFTPmoCode').val('<%=Model.FTPmoCode%>');
            $('#otbFTPtyCode').val('<%=Model.FTPtyCode%>');
            $('#otbFTClrCode').val('<%=Model.FTClrCode%>');
            $('#otbFTPszCode').val('<%=Model.FTPszCode%>');
            $('#otbFTUsrCode').val('<%=Model.FTUsrCode%>');
            $('#otbFCPdtStkFac').val(J002_DECcRound('<%=Model.FCPdtStkFac%>', nW_DecAmtForShw, true));
            $('#otbFTPbnName').val('<%=Model.FTPbnName%>');
            $('#otbFTPtyName').val('<%=Model.FTPtyName%>');
            $('#otbFTPmoName').val('<%=Model.FTPmoName%>');
            $('#otbFTClrName').val('<%=Model.FTClrName%>');
            $('#otbFTPszName').val('<%=Model.FTPszName%>');
            $('#otbFTUsrName').val('<%=Model.FTUsrName%>');
        }
        function W_SETxStatusProduct() {
            if ('<%=Model.FTPdtSta%>' == '0') {
                nW_Sta = 0;
            } else {
                nW_Sta = 1;
                nW_StaGen = 1;
                W_SETxLockButtonGen("oimGenPdtCode");
                $('#otbFTPdtCodeOld').val('<%=Model.FTPdtCode%>');
            }
        }
        function W_CHKxCheckDataMaster() {
            W_CHKxDataMaster('otbFTPbnCode', 'otbFTPbnName');
            W_CHKxDataMaster('otbFTPmoCode', 'otbFTPmoName');
            W_CHKxDataMaster('otbFTPtyCode', 'otbFTPtyName');
            W_CHKxDataMaster('otbFTClrCode', 'otbFTClrName');
            W_CHKxDataMaster('otbFTPszCode', 'otbFTPszName');
            W_CHKxDataMaster('otbFTUsrCode', 'otbFTUsrName');
            W_CHKxDataMaster('otbFTPgpChain', 'otbFTPgpChainName');
            W_CHKxDataMaster('otbFTPbnCode', 'otbFTPbnName');
            W_CHKxDataMaster('otbFTPmoCode', 'otbFTPmoName');
            W_CHKxDataMaster('otbFTPtyCode', 'otbFTPtyName');
            W_CHKxDataMaster('otbFTClrCode', 'otbFTClrName');
            W_CHKxDataMaster('otbFTPszCode', 'otbFTPszName');
            W_CHKxDataMaster('otbFTUsrCode', 'otbFTUsrName'); 
        }
        function W_CHKxDataMaster(ptCodeObj, ptValObj) {
            if ($('#' + ptValObj).val() == '' && $('#' + ptCodeObj).val() != '') {
                alert("ไม่พบข้อมุล");
                $('#' + ptCodeObj).val(''); 
            }
        }
        
        
        //LOCK BUTTON GEN
        function W_SETxLockButtonGen(ptBtnName) {
            //$('#' + ptBtnName).attr('src', '<%=ViewData("oimgGenLock")%>');
            $('#' + ptBtnName).attr({ src: '<%=ViewData("oimgGenLock")%>' });
        }
        //LOCK BUTTON BROWSE
        function W_SETxLockButtonBrw(ptBtnName) {
            $('#' + ptBtnName).attr('src', '<%=ViewData("oimgBrwLock")%>');
        }
        //RemoveClass xCN_DivDisplayNone
        function W_DISxDisplayNone(ptObjName) {
            $('#' + ptObjName).removeClass('xCN_DivDisplayNone');
        }
        //SET CSS NEW BARCODE BUTTON
        function W_SETxStyleAddBarCode() {
            if (nW_StaGen == 0) {
                $('#odiInsRow').removeClass('xW_DivAddBarCode');
                $('#odiInsRow').addClass('xW_DivAddBarCodeLock');
            } else {
                $('#odiInsRow').removeClass('xW_DivAddBarCodeLock');
                $('#odiInsRow').addClass('xW_DivAddBarCode');
            }
        }
        function W_SETxStyleDeleteBarCode() {
            if (tW_StaDel == "N") {
                $('#odiDeleteBarCode').removeClass('xW_DivDeleteBarCode');
                $('#odiDeleteBarCode').addClass('xW_DivDeleteBarCodeLock');
            } else {
                $('#odiDeleteBarCode').removeClass('xW_DivDeleteBarCodeLock');
                $('#odiDeleteBarCode').addClass('xW_DivDeleteBarCode');
            }
        }
        
        //NEW PRODUCT
        function W_FRWxNewProduct() {
            J003_SHWxWaiting();
            var tUrl = '<%=Url.Action("Index","cvcTCNMPdt") %>' + '?ptPdtCode=';
            window.location = encodeURI(tUrl);
        }

        //SAVE PRODUCT
        function W_DATxSavePdt() {
            //CHECK PDTCODE IS NULL
            //CHECK PDTNAME IS NULL
            //CHECK BARCODE
            $ui('#odiMsgWhenSavePdt').dialog('open');
        }
        function W_FRMxSaveProduct() {
            var oModel = W_GEToModel();
            var url = '';
            url = '<%= Url.Action("C_DAToSaveProduct", "cvcTCNMPdt") %>';
            $.post(url, oModel, W_SETxHeaderData);
        }
        function W_GEToModel() {
            try {
                var tFTPdtVatType = $('#ocbFTPdtVatType').val()
                if ($('#ocbFTPdtVatType:checked').val()) { tFTPdtVatType = '1'; };
                var oModel = {
                    FTPdtCode : $('#otbFTPdtCode').val(),
                    FTPdtName : $('#otbFTPdtName').val(),
                    FTPdtNameOth : $('#otbPdtnameOth').val(),
                    FTPgpChain : $('#otbFTPgpChain').val(),
                    FTPdtStkCode : $('#otbFTPdtStkCode').val(),
                    FTPdtStkFac : $('#otbFCPdtStkFac').val(),
                    FTPbnCode : $('#otbFTPbnCode').val(),
                    FTPmoCode : $('#otbFTPmoCode').val(),
                    FTPtyCode : $('#otbFTPtyCode').val(),
                    FTClrCode : $('#otbFTClrCode').val(),
                    FTPszCode : $('#otbFTPszCode').val(),
                    FTUsrCode : $('#otbFTUsrCode').val(),
                    FTPdtVatType : $('#ocbFTPdtVatType:checked').val()?'1':'0',
                    FTPdtStkControl : $('#ocbFTPdtStkControl:checked').val() ? '1' : '0',
                    FTPdtPoint : $('#ocbFTPdtPoint:checked').val() ? '1' : '0',
                    FTPdtNoDis : $('#ocbFTPdtNoDis:checked').val() ? '1' : '0',
                    FTPdtGrpControl : $('#ocbFTPdtGrpControl:checked').val() ? '1' : '0',
                    FTPdtConType : $('#ocbFTPdtConType:checked').val() ? '1' : '0',
                    FTPdtStaActive : $('#ocbFTPdtStaActive:checked').val() ? '1' : '0',
                    FTPdtStaTouch : $('#ocbFTPdtStaTouch:checked').val() ? '1' : '0',
                    FTPdtStaAlwBuy : $('#ocbFTPdtStaAlwBuy:checked').val() ? '1' : '0',
                    FTPdtSrn: $('#ocbFTPdtSrn:checked').val() ? '1' : '0',
                    FTPdtStaAlwRepack : $('#ocbFTPdtStaAlwRepack:checked').val() ? '1' : '0'
                };
                return oModel;
            }
            catch (ex) {
                J002_SHWxMsgError("W_GEToModel", ex);
            }
        }
        function W_SETxHeaderData(data) {
            try{
                //$('#otbFTPdtCode').val(data.FTPdtCode);
                //otbFTPdtCode_onblur();
                var tDataTimeNow = J002_GETtTimeStamp();
                var tUrl;
                if (data.FTPdtCode != '' && data.FTPdtName != '') {
                    tUrl = '<%=Url.Action("Index","cvcTCNMPdt") %>' + '?ptPdtCode=' + data.FTPdtCode
                    tUrl += '&ptDate=' + tDataTimeNow;
                    window.location = encodeURI(tUrl);
                }
            } catch (ex) {
                J002_SHWxMsgError("W_SETxHeaderData", ex);
            }
        }
        
        //GEN PRODUCT CODE
        function W_GENxProductCode() {
            try {
                if (nW_Sta == 1) { return false; }
                if (nW_StaGen == 1) { return false; }
                var tDataTimeNow = J002_GETtTimeStamp();
                var tUrl = '<%=Url.Action("C_GENtProductCode","cvcTCNMPdt") %>';
                var oXmlHttp = J002_GEToXMLHttpRequest();
                oXmlHttp.open("GET", encodeURI(tUrl), false);
                oXmlHttp.send(null);
                var tValue = oXmlHttp.responseText;
                if (tValue.split("|")[0] != "" && tValue.split("|")[0] != null) {
                    alert(tValue.split("|")[0]);
                    return false;
                }
                $("#otbFTPdtCode").val(tValue.split("|")[1]);
                J002_SETxReadOnly("otbFTPdtCode", false);
                W_SETxLockButtonGen("oimGenPdtCode");
                nW_StaGen = 1;
                $("#otbFTPdtCode").select();
                $('#otbFTPdtStkCode').val($("#otbFTPdtCode").val());
                W_SETxStyleAddBarCode();
            }
            catch (ex) {
                J002_SHWxMsgError("W_GENxProductCode", ex);
            }
        }
        
        //ค้นหาสินค้าด้วยการ Enter
        function W_DATxPdtCodeEnter(ptKeyCode, ptWhich) {//*CH 06-03-12 ให้ Enter ค้นหาสินค้า
            var tKey;
            if (ptKeyCode != null) { tKey = ptKeyCode; }
            if (ptWhich != null) { tKey = ptWhich; }
            if (tKey == 13) {
                //otbFTPdtCode_onblur();
                $('#otbFTPdtName').focus();
            }
        }
        function otbFTPdtCode_onblur() {
            try {
                var tPdtCode = $("#otbFTPdtCode").val();
                var tPdtCodeOld = $("#otbFTPdtCodeOld").val();
                if (tPdtCode == '') { $("#otbFTPdtCodeOld").val(tPdtCode); return false; }
                if (tPdtCode == null || tPdtCode == tPdtCodeOld) {
                    return false;
                }
                if (W_CHKtHasProduct() == true) {
                    J003_SHWxWaiting(); 
                    var tUrl = '<%=Url.Action("Index","cvcTCNMPdt") %>' + '?ptPdtCode=' + tPdtCode;
                    window.location = encodeURI(tUrl);
                } else {
                //var tMsg = '<%=ViewData("tMsgDAT_Notfound001")%>' + '<%=ViewData("olaFTPdtCode")%> "' + tPdtCode + '"'
                //alert(tMsg);
                //$('#otbFTPdtCode').val(tPdtCodeOld);
                //$('#otbFTPdtCode').focus();
                $('#otbFTPdtStkCode').val(tPdtCode);
                }
            }
            catch (ex) {
                J002_SHWxMsgError("otbFTPdtCode_onblur", ex);
            }
        }
        function W_CHKtHasProduct() {
            try {
                var tPdtCode = $("#otbFTPdtCode").val();
                var tUrl = '<%=Url.Action("C_CHKtHasProductByPdtCode","cvcTCNMPdt") %>';
                tUrl += '?ptPdtCode=' + tPdtCode;
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
                J002_SHWxMsgError("W_CHKtHasProduct", ex);
            }
        }

        function W_DATxPdtNameEnter(ptKeyCode, ptWhich) {
            var tKey;
            if (ptKeyCode != null) { tKey = ptKeyCode; }
            if (ptWhich != null) { tKey = ptWhich; }
            if (tKey == 13) {
                otbFTPdtName_onblur();
                $('#otbPdtnameOth').focus();
            }
        }
        function otbFTPdtName_onblur() {
            var tPdtName = $('#otbFTPdtName').val();
            var tPdtNameOth = $('#otbPdtnameOth').val();
            if (tPdtName != '' && tPdtNameOth == '') {
                $('#otbPdtnameOth').val($('#otbFTPdtName').val());
            }
        }
        
        //ptFlag 1 ไปรายการโปรด ; 2 ไปหน้าคลังสินค้า
        function W_FRMxClose(ptFlag) {
            //ตรวจสอบการแก้ไข
            //var tDialogResult = oJ003_DialogResult.Yes;
            //var tStaChange = W_CHKbHasChangeData();
            //if (tStaChange == true) {
            //    tDialogResult = J003_SHWxConfirmDialog('<%=ViewData("tMsgSave_Warning") %>', oJ003_DialogType.DialogYesNoCancel);
            //    switch (tDialogResult) {
            //        case oJ003_DialogResult.Yes: W_DATxSaveDocument(true); break;
            //        case oJ003_DialogResult.Cancel: return false; break;
            //    }
            //}
            var tUrl;
            if (ptFlag == '1') {
                tUrl = '<%=Url.Action("Index","Home") %>';
            } else {
                tUrl = '<%=Url.Action("Index","cvcCNPanal") %>?ptMenuGrpName=Pdt';
            } 
            window.location = tUrl;
        }

        //## Change value
        function W_SHWxShowDialogChangeVal(ptObjValueId) {
            tW_ObjOldValue = ptObjValueId;
            $('#otbOldValue').val(J002_DECcRound($('#' + ptObjValueId).val(), nW_DecAmtForShw, true));
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

        //## Product Group
        function W_DATxOk() {
            var tValue = $('#TreeValueSel').val();
            W_GETxPdtGrp(tValue);
            $ui('#odiBrwPdtGrp').dialog('close');
            //var treeView = $("#TreeViewPDTGrp").data("tTreeView");
        }
        function W_GETxPdtGrp(ptGrpChain) {
            try {
                var oXmlHttp = J002_GEToXMLHttpRequest();
                var tDateTimeNow = J002_GETtTimeStamp();
                var tUrl = '<%=Url.Action("C_GETtPdtGrp","cvcCNBrw") %>' + '?ptGrpChain=' + ptGrpChain + '&ptDateTimeNow=' + tDateTimeNow;
                oXmlHttp.open('GET', encodeURI(tUrl), false);
                oXmlHttp.send(null);
                if (oXmlHttp.status != 200) {
                    alert('Error' + oXmlHttp.status + '\n' + oXmlHttp.responseText);
                    return;
                }
                var tReturn = oXmlHttp.responseText;
                if (tReturn == null) {
                    return;
                }
                var aArray = tReturn.split("|");
                if (aArray[0] != null && aArray[0] != "") {
                    alert(aArray[0]); //SHOW ERROR MESSAGE
                    return;
                }
                if (aArray.length > 1) {
                    document.getElementById("otbFTPgpChain").value = ptGrpChain;
                    document.getElementById("otbFTPgpChainName").value = aArray[1];
                }
            }
            catch (ex) {
                J002_SHWxMsgError("W_GETxPdtGrp", ex);
            }
        }
        //## End Product Group
        
        //## onblur keydown
        function W_GETxDataByCode(ptObjCode,ptObjCodeOld,ptObjSetVal,ptCase){
            try {
                var tCode = $('#' + ptObjCode).val();
                var tCodeOld = $('#' + ptObjCodeOld).val();
                var tMsg = '<%=ViewData("tMsgDAT_Notfound001")%> "' + tCode + '"';
                //J003_SHWxWaiting();
                var tUrl = '<%=Url.Action("C_GETxDataByCode","cvcTCNMPdt") %>' + '?ptCode=' + tCode;
                tUrl += '&ptCase=' + ptCase;
                oW_xmlHttp = J002_GEToXMLHttpRequest();
                oW_xmlHttp.open("GET", encodeURI(tUrl), false);
                oW_xmlHttp.send(null);
                var valueFis = oW_xmlHttp.responseText;
                if (valueFis == "|Nothing") {
                    alert(tMsg);
                    $('#' + ptObjCode).focus();
                    $('#' + ptObjCode).val(tCodeOld);
                    return false;
                } else {
                    var aData = valueFis.split("|");
                    if (valueFis == "||") {
                        alert(tMsg);
                        $('#' + ptObjCode).focus();
                        $('#' + ptObjCode).val(tCodeOld);
                        return false;
                    } else {
                        if (aData[0] != null && aData[0] != "") {
                            alert(aData[0]); //Message Error
                            return false;
                        }
                        $('#' + ptObjSetVal).val(aData[1]);
                        $('#' + ptObjCodeOld).val($('#' + ptObjCode).val());
                    }
                }
            }
            catch (ex) {
                J002_SHWxMsgError("otbFTPdtCode_onblur", ex);
            } finally {
                //J003_DISxWaiting();
            }
        }
        //Brand
        function otbFTPbnCode_onkeyDown(ptKey, ptWhich) {
            var tKey = ptKey;
            var tCode = $('#otbFTPbnCode').val();            
            if (ptWhich != null && ptWhich != '') { tKey = ptWhich; }
            if (tKey == 13) {
                if (tCode == '') { J002_CLRxClearObjValue('otbFTPbnName'); }
                $('#otbFTPmoCode').focus(); 
                } 
        }
        function otbFTPbnCode_onblur() {
            var tCode = $('#otbFTPbnCode').val();
            var tCodeOld = $('#otbFTPbnCodeOld').val();
            if (tCode == '') { 
                J002_CLRxClearObjValue('otbFTPbnName');
            } else {
                if (tCode != tCodeOld ){
                    W_GETxDataByCode('otbFTPbnCode','otbFTPbnCodeOld','otbFTPbnName','Pbn');
                }
            }
        }
        //Model
        function otbFTPmoCode_onkeyDown(ptKey, ptWhich) {
            var tKey = ptKey;
            var tCode = $('#otbFTPmoCode').val();
            if (ptWhich != null && ptWhich != '') { tKey = ptWhich; }
            if (tKey == 13) {
                if (tCode == '') { J002_CLRxClearObjValue('otbFTPmoName'); }
                $('#otbFTPtyCode').focus();
            }
        }
        function otbFTPmoCode_onblur() {
            var tCode = $('#otbFTPmoCode').val();
            var tCodeOld = $('#otbFTPmoCodeOld').val();
            if (tCode == '') {
                J002_CLRxClearObjValue('otbFTPmoName');
            } else {
                if (tCode != tCodeOld) {
                    W_GETxDataByCode('otbFTPmoCode', 'otbFTPmoCodeOld', 'otbFTPmoName', 'Pmo');
                }
            }
        }
        //Type
        function otbFTPtyCode_onkeyDown(ptKey, ptWhich) {
            var tKey = ptKey;
            var tCode = $('#otbFTPtyCode').val();
            if (ptWhich != null && ptWhich != '') { tKey = ptWhich; }
            if (tKey == 13) {
                if (tCode == '') { J002_CLRxClearObjValue('otbFTPtyName'); }
                $('#otbFTClrCode').focus();
            }
        }
        function otbFTPtyCode_onblur() {
            var tCode = $('#otbFTPtyCode').val();
            var tCodeOld = $('#otbFTPtyCodeOld').val();
            if (tCode == '') {
                J002_CLRxClearObjValue('otbFTPtyName');
            } else {
                if (tCode != tCodeOld) {
                    W_GETxDataByCode('otbFTPtyCode', 'otbFTPtyCodeOld', 'otbFTPtyName', 'Pty');
                }
            }
        }
        //Color
        function otbFTClrCode_onkeyDown(ptKey, ptWhich) {
            var tKey = ptKey;
            var tCode = $('#otbFTClrCode').val();
            if (ptWhich != null && ptWhich != '') { tKey = ptWhich; }
            if (tKey == 13) {
                if (tCode == '') { J002_CLRxClearObjValue('otbFTClrName'); }
                $('#otbFTPszCode').focus();
            }
        }
        function otbFTClrCode_onblur() {
            var tCode = $('#otbFTClrCode').val();
            var tCodeOld = $('#otbFTClrCodeOld').val();
            if (tCode == '') {
                J002_CLRxClearObjValue('otbFTClrCode');
            } else {
                if (tCode != tCodeOld) {
                    W_GETxDataByCode('otbFTClrCode', 'otbFTClrCodeOld', 'otbFTClrName', 'Clr');
                }
            }
        }
        //Size
        function otbFTPszCode_onkeyDown(ptKey, ptWhich) {
            var tKey = ptKey;
            var tCode = $('#otbFTPszCode').val();
            if (ptWhich != null && ptWhich != '') { tKey = ptWhich; }
            if (tKey == 13) {
                if (tCode == '') { J002_CLRxClearObjValue('otbFTPszCode'); }
                $('#otbFTPszCode').focus();
            }
        }
        function otbFTPszCode_onblur() {
            var tCode = $('#otbFTPszCode').val();
            var tCodeOld = $('#otbFTPszCodeOld').val();
            if (tCode == '') {
                J002_CLRxClearObjValue('otbFTPszCode');
            } else {
                if (tCode != tCodeOld) {
                    W_GETxDataByCode('otbFTPszCode', 'otbFTPszCodeOld', 'otbFTPszName', 'Clr');
                }
            }
        }
        //Buyer
        function otbFTUsrCode_onkeyDown(ptKey, ptWhich) {
            var tKey = ptKey;
            var tCode = $('#otbFTUsrCode').val();
            if (ptWhich != null && ptWhich != '') { tKey = ptWhich; }
            if (tKey == 13) {
                if (tCode == '') { J002_CLRxClearObjValue('otbFTUsrCode'); }
                $('#otbFTUsrCode').focus();
            }
        }
        function otbFTUsrCode_onblur() {
            var tCode = $('#otbFTUsrCode').val();
            var tCodeOld = $('#otbFTUsrCodeOld').val();
            if (tCode == '') {
                J002_CLRxClearObjValue('otbFTUsrCode');
            } else {
                if (tCode != tCodeOld) {
                    W_GETxDataByCode('otbFTUsrCode', 'otbFTUsrCodeOld', 'otbFTUsrName', 'Usr');
                }
            }
        }
        //## End keydown onblur
    </script>
    
    <!-- Script For UI Browse -->
    <script type="text/javascript">
        var tWidth = '425px';
        var tTitel;
        $ui(function() {
            //### Browse Unit
            $ui("#oimBrwPdtUnit").click(function() {
                $ui("#odiBrwData").dialog("open");
            });
            $ui("#odiBrwData").dialog({
                autoOpen: false,
                modal: true,
                resizable: false,
                height: "auto",
                width: tWidth
            });
            //กดปุ่ม ยกเลิก
            $ui("#ocmCancelData").click(function() {
                $ui("#odiBrwData").dialog("close");
            });
            //กดปุ่ม ตกลง
            $ui("#ocmSelectUnit").click(function() {
                $ui("#odiBrwData").dialog("close");
            });

            //### Browse Stock
            $ui('#oimBrwStk').click(function() {
                J003_SHWxWaiting();
                setTimeout(function() {
                    $ui('#odiBrwStkData').dialog('open');
                    J003_DISxWaiting();
                }, 1000);
            });
            $ui("#odiBrwStkData").dialog({
                autoOpen: false,
                modal: true,
                resizable: false,
                height: "auto",
                width: tWidth
            });
            $ui("#ocmSelectStk").click(function() {
                $ui("#odiBrwStkData").dialog("close");
            });
            $ui("#ocmStkCancel").click(function() {
                $ui("#odiBrwStkData").dialog("close");
            });

            //### Browse Brand
            $ui('#oimGetPdtBrand').click(function() {
                $ui('#odiBrwBrand').dialog('open');
            });
            $ui("#odiBrwBrand").dialog({
                autoOpen: false,
                modal: true,
                resizable: false,
                height: "auto",
                width: tWidth
            });
            $ui("#ocmSelectBrd").click(function() {
                $ui("#odiBrwBrand").dialog("close");
            });
            $ui("#ocmCancelBrd").click(function() {
                $ui("#odiBrwBrand").dialog("close");
            });

            //### Browse Model
            $ui('#oimGetPdtModel').click(function() {
                $ui('#odiBrwModel').dialog('open');
            });
            $ui("#odiBrwModel").dialog({
                autoOpen: false,
                modal: true,
                resizable: false,
                height: "auto",
                width: tWidth
            });
            $ui("#ocmSelectPmo").click(function() {
                $ui("#odiBrwModel").dialog("close");
            });
            $ui("#ocmCancelPmo").click(function() {
                $ui("#odiBrwModel").dialog("close");
            });

            //### Browse Type
            $ui('#oimGetPdtType').click(function() {
                $ui('#odiBrwType').dialog('open');
            });
            $ui("#odiBrwType").dialog({
                autoOpen: false,
                modal: true,
                resizable: false,
                height: "auto",
                width: tWidth
            });
            $ui("#ocmSelectPty").click(function() {
                $ui("#odiBrwType").dialog("close");
            });
            $ui("#ocmCancelPty").click(function() {
                $ui("#odiBrwType").dialog("close");
            });

            //### Browse Color
            $ui('#oimGetColor').click(function() {
                $ui('#odiBrwColor').dialog('open');
            });
            $ui("#odiBrwColor").dialog({
                autoOpen: false,
                modal: true,
                resizable: false,
                height: "auto",
                width: tWidth
            });
            $ui("#ocmSelectClr").click(function() {
                $ui("#odiBrwColor").dialog("close");
            });
            $ui("#ocmCancelClr").click(function() {
                $ui("#odiBrwColor").dialog("close");
            });

            //### Browse Size
            $ui('#oimGetPdtSize').click(function() {
                $ui('#odiBrwSize').dialog('open');
            });
            $ui("#odiBrwSize").dialog({
                autoOpen: false,
                modal: true,
                resizable: false,
                height: "auto",
                width: tWidth
            });
            $ui("#ocmSelectPsz").click(function() {
                $ui("#odiBrwSize").dialog("close");
            });
            $ui("#ocmCancelPsz").click(function() {
                $ui("#odiBrwSize").dialog("close");
            });
            //### Browse Buyer
            $ui('#oimGetBuyer').click(function() {
                $ui('#odiBrwBuyer').dialog('open');
            });
            $ui("#odiBrwBuyer").dialog({
                autoOpen: false,
                modal: true,
                resizable: false,
                height: "auto",
                width: tWidth
            });
            $ui("#ocmSelectUsr").click(function() {
                $ui("#odiBrwBuyer").dialog("close");
            });
            $ui("#ocmCancelUsr").click(function() {
                $ui("#odiBrwBuyer").dialog("close");
            });

            //### Change Value
            $ui("#odiChangeValue").dialog({
                autoOpen: false,
                modal: true,
                resizable: false,
                height: "auto",
                width: 'auto',
                open: function() { $('#otbNewValue').focus(); }
            });
            $ui("#ocmCancel").click(function() {
                $ui("#odiChangeValue").dialog("close");
            });

            //### Product Group
            $ui('#oimBrwPdtGrp').click(function() {
                J003_SHWxWaiting();
                setTimeout(function() {
                    $ui('#odiBrwPdtGrp').dialog('open');
                    J003_DISxWaiting();
                }, 500);
            });
            $ui('#odiBrwPdtGrp').dialog({
                autoOpen: false,
                modal: true,
                resizable: false,
                height: "auto",
                width: tWidth
            });
            $ui('#ocmCancelPdtGrp').click(function() {
                $ui('#odiBrwPdtGrp').dialog('close');
            });

            //Popup check save
            $ui('#oaDelPdt').click(function() { $ui('#odiDelGrid').dialog('open'); });
            $ui('#odiDelGrid').dialog({
                title: '<%=ViewData("olatMsgDelete")%><%=ViewData("olaBarCode")%>',
                autoOpen: false,
                modal: true,
                resizable: false,
                height: 'auto',
                width: '300px',
                open: function() {
                    var tBarCode = $('#FTPdtBarCode1').val();
                    $('#olaMsgErr').html('<%=ViewData("tMsgChkDel")%><%=ViewData("olaBarCode")%> "' + tBarCode + '" <%=ViewData("tMsgYesOrNo")%>');
                    $('#odiImgMsg').addClass('xCN_DivShowIconQuestion');
                },
                buttons: {
                    '<%=ViewData("olaOk")%>': function() {
                        if (tW_StaDel == "Y") {
                            var tPdtSeq = $('#PdtSeq').val();
                            var tDateTimeNow = J002_GETtTimeStamp();
                            var tUrl = '<%=Url.Action("C_DELxDeleteBarCodeItem","cvcTCNMPdt") %>' + '?ptPdtSeq=' + tPdtSeq;
                            oW_xmlHttp = J002_GEToXMLHttpRequest();
                            oW_xmlHttp.open("GET", encodeURI(tUrl), false);
                            //oW_xmlHttp.onreadystatechange = W_SETxHandleStateChangeSetTotal;
                            oW_xmlHttp.send(null);
                            W_SETxRebindGrid('Grid');
                            $('#odiInsRow').removeClass('xCN_DivDisplayNone');
                            $('#odiCancelBarCode').addClass('xCN_DivDisplayNone');
                            $('#odiSaveBarCode').addClass('xCN_DivDisplayNone');
                            $('#odiDeleteBarCode').addClass('xCN_DivDisplayNone');
                            W_FRMxCancleBarCode();
                            $ui('#odiDelGrid').dialog("close");
                        }
                    },
                    '<%=ViewData("olaCancel")%>': function() { $ui('#odiDelGrid').dialog("close"); }
                }
            });

            //Duplicate Barcode
            $ui('#odiDupBarCode').dialog({
                title: '<%=ViewData("tMsgErrorData")%>',
                autoOpen: false,
                modal: true,
                resizable: false,
                height: 'auto',
                width: '300px',
                open: function() {
                    if ($('#FTPdtBarCode1').val() == '') {
                        $('#olaMessage').html('<%=ViewData("tMsgErrorData")%><BR>[<%=ViewData("olaBarCode")%>]');
                    } else if ($('#FTPdtSUnit').val() == '') {
                        $('#olaMessage').html('<%=ViewData("tMsgErrorData")%><BR>[<%=ViewData("olaUnitCode")%>]');
                    }
                    $('#odiImgMessage').addClass('xCN_DivShowIconWarning');
                },
                buttons: {
                    '<%=ViewData("olaOk")%>': function() {
                        $ui('#odiDupBarCode').dialog("close");
                    }
                }
            });

            //Check When Save
            $ui('#odiMsgWhenSavePdt').dialog({
                title: '<%=ViewData("tMsgErrorData")%>',
                autoOpen: false,
                modal: true,
                resizable: false,
                height: 'auto',
                width: '300px',
                open: function() {
                    if ($('#otbFTPdtCode').val() == '') {
                        $('#olaMsgSavePdt').html('<%=ViewData("tMsgErrorData")%><BR>[<%=ViewData("olaFTPdtCode")%>]');
                    } else if ($('#otbFTPdtName').val() == '') {
                        $('#olaMsgSavePdt').html('<%=ViewData("tMsgErrorData")%><BR>[<%=ViewData("olaFTPdtName")%>]');
                    } else {
                        if (W_GETtBarCodeCount() > 0) {
                            W_FRMxSaveProduct();
                            $ui('#odiMsgWhenSavePdt').dialog("close");
                        } else {
                            $('#olaMsgSavePdt').html('<%=ViewData("tMsgErrorData")%><BR>[<%=ViewData("olaBarCode")%>]');
                        }
                    }
                    $('#odiImgSavePdt').addClass('xCN_DivShowIconWarning');
                },
                buttons: {
                    '<%=ViewData("olaOk")%>': function() {
                        $ui('#odiMsgWhenSavePdt').dialog("close");
                        if ($('#otbFTPdtCode').val() == '') {
                            $('#otbFTPdtCode').focus();
                        } else if ($('#otbFTPdtName').val() == '') {
                            $('#otbFTPdtName').focus();
                        }
                    }
                }
            });
        });
        
    //### Select Data    
    function W_SETxUnitData() {
        J015_SETxSelectData(tJ015_ReturnValue, 'FTPdtSUnit', 'FTPunName');
        $('#FTPdtSUnitOld').val($('#FTPdtSUnit').val());
        $ui("#odiBrwData").dialog("close");
    }
    function W_SETxStkData() {
        J015_SETxSelectData(tJ015_ReturnValue, 'otbFTPdtStkCode');
        $ui("#odiBrwStkData").dialog("close");
    }
    function W_SETxBrdData() {
        J015_SETxSelectData(tJ015_ReturnValue, 'otbFTPbnCode','otbFTPbnName');
        $ui("#odiBrwBrand").dialog("close");
    }
    function W_SETxPmoData() {
        J015_SETxSelectData(tJ015_ReturnValue, 'otbFTPmoCode', 'otbFTPmoName');
        $ui("#odiBrwModel").dialog("close");
    }
    function W_SETxPtyData() {
        J015_SETxSelectData(tJ015_ReturnValue, 'otbFTPtyCode', 'otbFTPtyName');
        $ui("#odiBrwType").dialog("close");
    }
    function W_SETxClrData() {
        J015_SETxSelectData(tJ015_ReturnValue, 'otbFTClrCode', 'otbFTClrName');
        $ui("#odiBrwColor").dialog("close");
    }
    function W_SETxPszData() {
        J015_SETxSelectData(tJ015_ReturnValue, 'otbFTPszCode', 'otbFTPszName');
        $ui("#odiBrwSize").dialog("close");
    }
    function W_SETxUsrData() {
        J015_SETxSelectData(tJ015_ReturnValue, 'otbFTUsrCode', 'otbFTUsrName');
        $ui("#odiBrwSize").dialog("close");
    }
    
    //### KeyDown & OnBlur
    function otbFilterData_onkeyDown(ptKeyCode, ptWhich) {
        var tKey = ptKeyCode;
        if (ptWhich != null && ptWhich != '') { tKey = ptWhich; }
        if (tKey == 13) { W_PRCxFillData(); } //กรองข้อมูล
    } 
    //Stock
    function otbFilterStkData_onkeyDown(ptKeyCode, ptWhich) {
        var tKey = ptKeyCode;
        if (ptWhich != null && ptWhich != '') { tKey = ptWhich;  }
        if (tKey == 13) {  C_PRCxFillStkData(); } //กรองข้อมูล
    }
    //Brand 
    function otbFilBrdValue_onkeyDown(ptKeyCode, ptWhich) {
        var tKey = ptKeyCode;
        if (ptWhich != null && ptWhich != '') { tKey = ptWhich; }
        if (tKey == 13) { C_PRCxFillBrd(); } //กรองข้อมูล
    }
    //Model
    function otbFilPmoValue_onkeyDown(ptKeyCode, ptWhich) {
        var tKey = ptKeyCode;
        if (ptWhich != null && ptWhich != '') { tKey = ptWhich; }
        if (tKey == 13) { C_PRCxFillPmo(); } //กรองข้อมูล
    }
    //Type
    function otbFilPtyValue_onkeyDown(ptKeyCode, ptWhich) {
        var tKey = ptKeyCode;
        if (ptWhich != null && ptWhich != '') { tKey = ptWhich; }
        if (tKey == 13) { C_PRCxFillPty(); } //กรองข้อมูล
    }
    //Color
    function otbFilClrValue_onkeyDown(ptKeyCode, ptWhich) {
        var tKey = ptKeyCode;
        if (ptWhich != null && ptWhich != '') { tKey = ptWhich; }
        if (tKey == 13) { C_PRCxFillClr(); }//กรองข้อมูล
    }
    //Size
    function otbFilPszValue_onkeyDown(ptKeyCode, ptWhich) {
        var tKey = ptKeyCode;
        if (ptWhich != null && ptWhich != '') { tKey = ptWhich; }
        if (tKey == 13) { C_PRCxFillPsz(); } //กรองข้อมูล
    }
    //Buyer
    function otbFilUsrValue_onkeyDown(ptKeyCode, ptWhich) {
        var tKey = ptKeyCode;
        if (ptWhich != null && ptWhich != '') { tKey = ptWhich; }
        if (tKey == 13) { C_PRCxFillUsr(); } //กรองข้อมูล
    }
    </script>
</asp:Content>
