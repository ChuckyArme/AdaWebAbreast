 <%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage(Of Adasoft.WebPos.Models.cmlTACTPzHD)" %>

<%@ Import Namespace="Adasoft.WebPos" %>

<%@ Import Namespace="System.Drawing" %>
<%@ Import Namespace="System.Resources" %>
<%@ Import Namespace="AdaWebPos" %>
<%@ Import Namespace="Adasoft.WebPos.Models" %>

<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim oCulture As System.Globalization.CultureInfo
        oCulture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
        AdaWebPos.My.Resources.resLCcvcTACTPqHD.Culture = oCulture
        AdaWebPos.My.Resources.resLCcvcSHWoDT.Culture = oCulture
        AdaWebPos.My.Resources.resLCcvcCNBrw.Culture = oCulture
        Resources.resGBMsg.Culture = oCulture
        Resources.resGBMenuName.Culture = oCulture
        Resources.resGBGridHeader.Culture = oCulture
                
        '------Document Status Image------
        ViewData("oimgAppv") = Url.Content(Resources.resGBImageList.oimgAppv)
        ViewData("oimgNoAppv") = Url.Content(Resources.resGBImageList.oimgNoAppv)
        ViewData("oimgPCRemove") = Url.Content(Resources.resGBImageList.oimgPCRemove)
        ViewData("oimgBrowse") = Url.Content(Resources.resGBImageList.oimgBrowse)
        ViewData("oimgBrowseLock") = Url.Content(Resources.resGBImageList.oimgBrwLock)
        ViewData("oimgGencode") = Url.Content(Resources.resGBImageList.oimgGencode)

        ViewData("olaAutoTab") = AdaWebPos.My.Resources.resLCcvcTACTPqHD.olaAutoTab
        ViewData("olaCancel") = AdaWebPos.My.Resources.resLCcvcTACTPqHD.olaCancel
        ViewData("olaCanCopy") = AdaWebPos.My.Resources.resLCcvcTACTPqHD.olaCanCopy
        ViewData("olaCanDelete") = AdaWebPos.My.Resources.resLCcvcTACTPqHD.olaCanDelete
        ViewData("olaCanEdit") = AdaWebPos.My.Resources.resLCcvcTACTPqHD.olaCanEdit
        ViewData("olaCanFind") = AdaWebPos.My.Resources.resLCcvcTACTPqHD.olaCanFind
        ViewData("olaCanPost") = AdaWebPos.My.Resources.resLCcvcTACTPqHD.olaCanPost
        ViewData("olaCanSave") = AdaWebPos.My.Resources.resLCcvcTACTPqHD.olaCanSave
        ViewData("olaClose") = AdaWebPos.My.Resources.resLCcvcTACTPqHD.olaClose
        ViewData("olaCreate") = AdaWebPos.My.Resources.resLCcvcTACTPqHD.olaCreate
        ViewData("olaDetail") = AdaWebPos.My.Resources.resLCcvcTACTPqHD.olaDetail
        ViewData("olaFCXqdQty") = AdaWebPos.My.Resources.resLCcvcTACTPqHD.olaFCXqdQty
        ViewData("olaFDXqhDocDate") = AdaWebPos.My.Resources.resLCcvcTACTPqHD.olaFDXqhDocDate
        ViewData("olaFNXqhStaDocAct") = AdaWebPos.My.Resources.resLCcvcTACTPqHD.olaFNXqhStaDocAct
        ViewData("olaFTDptCode") = AdaWebPos.My.Resources.resLCcvcTACTPqHD.olaFTDptCode
        ViewData("olaFTUsrCode") = AdaWebPos.My.Resources.resLCcvcTACTPqHD.olaFTUsrCode
        ViewData("olaFTXqdUnitName") = AdaWebPos.My.Resources.resLCcvcTACTPqHD.olaFTXqdUnitName
        ViewData("olaFTXqhApvCode") = AdaWebPos.My.Resources.resLCcvcTACTPqHD.olaFTXqhApvCode
        ViewData("olaFTXqhDocNo") = AdaWebPos.My.Resources.resLCcvcTACTPqHD.olaFTXqhDocNo
        ViewData("olaFTXqhStaDoc") = AdaWebPos.My.Resources.resLCcvcTACTPqHD.olaFTXqhStaDoc
        ViewData("olaGenCode") = AdaWebPos.My.Resources.resLCcvcTACTPqHD.olaGenCode
        ViewData("olaHelp") = AdaWebPos.My.Resources.resLCcvcTACTPqHD.olaHelp
        ViewData("olaMenuName") = AdaWebPos.My.Resources.resLCcvcTACTPqHD.olaMenuName
        ViewData("olaNotAccess") = AdaWebPos.My.Resources.resLCcvcTACTPqHD.olaNotAccess
        ViewData("olaReport") = AdaWebPos.My.Resources.resLCcvcTACTPqHD.olaReport
        ViewData("olaRowID") = AdaWebPos.My.Resources.resLCcvcTACTPqHD.olaRowID
        ViewData("olaTotal") = AdaWebPos.My.Resources.resLCcvcTACTPqHD.olaTotal
        ViewData("olatMsgNonDataPdt") = AdaWebPos.My.Resources.resLCcvcTACTPqHD.olatMsgNonDataPdt
        
        ViewData("olaRowID") = AdaWebPos.My.Resources.resLCcvcSHWoDT.olaRowID
        ViewData("olaPdtCode") = AdaWebPos.My.Resources.resLCcvcSHWoDT.olaPdtCode
        ViewData("olaPdtName") = AdaWebPos.My.Resources.resLCcvcSHWoDT.olaPdtName
        ViewData("olaPdtUnit") = AdaWebPos.My.Resources.resLCcvcSHWoDT.olaPdtUnit
        ViewData("olaPdtUnitPrice") = AdaWebPos.My.Resources.resLCcvcSHWoDT.olaPdtUnitPrice
        ViewData("olaPdtUnitName") = AdaWebPos.My.Resources.resLCcvcSHWoDT.olaPdtUnitName
        ViewData("olaDiscount") = AdaWebPos.My.Resources.resLCcvcSHWoDT.olaDiscount
        ViewData("olaAmount") = AdaWebPos.My.Resources.resLCcvcSHWoDT.olaAmount
                                     
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
        ViewData("olatMsgNonDataPdt") = Resources.resGBMsg.tMsgNonDataPdt
        
        ViewData("tMsgDAT_Notfound001") = Resources.resGBMsg.tMsgDAT_Notfound001
        ViewData("tMsgSave_Warning") = Resources.resGBMsg.tMsgSave_Warning
        ViewData("tMsgConfirmDelete") = Resources.resGBMsg.tMsgConfirmDelete
        ViewData("tMsgConfirmPost") = Resources.resGBMsg.tMsgConfirmPost
        ViewData("tMsgConfirmCancel") = Resources.resGBMsg.tMsgConfirmCancel
        ViewData("tMsgClearData") = Resources.resGBMsg.tMsgClearData
        ViewData("tMsgNotAuthorize") = Resources.resGBMsg.tMsgNotAuthorize
        ViewData("tMsgNoAppStaDocDonotAct") = Resources.resGBMsg.tMsgNoAppStaDocDonotAct
        ViewData("tMsgCom") = Resources.resGBMsg.tMsgCom
        ViewData("olaMenuExit") = Resources.resGBMenuName.omnExit '*ออก *CH 17-10-2012
        ViewData("olaMenuHome") = Resources.resGBMenuName.omnHome '*หน้าแรก *CH 17-10-2012
        
        ViewData("olaWarning") = Resources.resGBMsg.tMsgWarning
        ViewData("olaBrowse") = Resources.resGBGridHeader.olaBrowse
        ViewData("olaFTPdtUnit") = Resources.resGBGridHeader.olaPdtUnitName
        
        ViewData("olaOK") = AdaWebPos.My.Resources.resLCcvcCNBrw.olaOK
        ViewData("olaCancel") = AdaWebPos.My.Resources.resLCcvcCNBrw.olaCancel
        ViewData("olaNo") = AdaWebPos.My.Resources.resLCcvcCNBrw.olaNo
        
        '*CH 15-08-2012 '*RQ1208-17
        ViewData("ovd_tMsgNotFmtDate") = Resources.resGBMsg.tMsgNotFmtDate
        ViewData("ovd_tMsgYear") = Resources.resGBMsg.tMsgYear
        ViewData("ovd_tMsgMonth") = Resources.resGBMsg.tMsgMonth
        ViewData("ovd_tMsgDay") = Resources.resGBMsg.tMsgDay
        ViewData("ovd_tMsgNotEqual") = Resources.resGBMsg.tMsgNotEqual
        ViewData("ovd_tMsgNotLess") = Resources.resGBMsg.tMsgNotLess
        ViewData("ovd_tMsgNotexceed") = Resources.resGBMsg.tMsgNotexceed
        ViewData("ovd_tMsgAnd") = Resources.resGBMsg.tMsgAnd
        ViewData("ovd_tMsgMoreThen") = Resources.resGBMsg.tMsgMoreThen
        ViewData("ovd_tMsgOnlyNum") = Resources.resGBMsg.tMsgOnlyNum
        
        Dim oCM As New cmlPanal
        Dim oLM As New List(Of cmlPanal)
        Dim oM As IEnumerable(Of cmlPanal)
        oCM.FTMnuCount = ""
        oCM.FTMnuDesc = ""
        oCM.FTMnuDescEN = ""
        oCM.FTMnuDescTH = ""
        oCM.FTMnuGrpCode = ""
        oCM.FTMnuGrpName = ""
        oLM.Add(oCM)
        oM = oLM
        ViewData("PanalMenu") = oM
    End Sub
</script> 

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	<%=ViewData("olaMenuName")%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<% 
    Dim tW_Controller As String = "cvcTACTPqHD"
    Dim tW_Table As String = "TACTPqHD"
    Dim tW_MidHD As String = "Pqh"
    Dim tW_MidDT As String = "Pqd"
    Dim nW_DecLength As Integer = Session("nVB_CNDecAmtForShw")
%>
                
    <form id="ofmReload" action="<%=Url.Action("Index") %>" method="post">
        <input id="otbAuthorRead" type="hidden" name="ptAuthorRead" /> 
        <input id="otbPostDocNo" type="hidden" name="ptDocNo" /> 
    </form>
    
<%--The line below is a workaround for a VB / ASPX designer bug--%>
        
    <% Using Html.BeginForm()%> 
    
    <%--Hidden Object--%> 
    <input id="otbSeq" type="hidden" value=""  style ="width :550px"/>
    <input id="FTBchCode" type="hidden" value="<%=Model.FTBchCode%>" />
    <input id="FTXqhDocType" type="hidden" value="<%=Model.FTXzhDocType%>" />
    <input id="FTUsrCode" type="hidden" value="<%=Model.FTUsrCode%>" />
    <input id="FTDptCode" type="hidden" value="<%=Model.FTDptCode%>" />
    <input id="FTXqhStaType" type="hidden" value="<%=Model.FTXzhStaType%>" />
    <input id="FTXqhApvCode" type="hidden" value="<%=Model.FTXzhApvCode%>" />
    <input id="FTXqhStaDoc" type="hidden" value="<%=Model.FTXzhStaDoc%>" />
    
    <input type="hidden" id="otbUnitFactor" />
    <input type="hidden" id="otbUnitName" />
                                               
   
    <table cellspacing="0" cellpadding="0" class="x005MainTable">
        <tr><td class ="x005Menu">
            <%-------------------เมนูด้านบนสุด---------------------------%>
            <div id="odiMenuTop" class ="xCN_AllBorderColor xW_DivMainMenu">           
                <div id="odiMenu" class="xCN_DivMenu" style="width:500px">
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
                                <%=ViewData("olaCreate")%>
                            </div>
                        </a>
                    </div> 
                    <div id ="odiMenuSave" class="xCN_DivMenuSave" style="float:left;">
                        <a href="javascript:void(0);" onclick="W_DATxSaveDocument()">
                            <div class="xCN_DivMenuNewCaption">
                                <%=ViewData("olaCanSave")%>
                            </div>
                        </a>
                    </div>
                    <div id ="odiMenuSearch" class="xCN_DivMenuSearch" style="float:left;">
                        <a href="javascript:void(0);" onclick="W_FRMxFindDoc()">
                            <div class="xCN_DivMenuNewCaption">
                                <%=ViewData("olaCanFind")%>
                            </div>
                        </a>
                    </div>  
                    <div id ="odiMenuDelete" class="xCN_DivMenuDelete" style="float:left;">
                        <a href="javascript:void(0);"  onclick="W_FRMxDelDoc()">
                            <div class="xCN_DivMenuNewCaption">
                                <%=ViewData("olaCanDelete")%>
                            </div>
                        </a>
                    </div>
                    <div id ="Div2" class="xCN_DivMenuCancel" style="float:left;">
                        <a href="javascript:void(0);"  onclick="W_FRMxCancelDoc()">
                            <div class="xCN_DivMenuNewCaption">
                                <%=ViewData("olaCancel")%>
                            </div>
                        </a>
                    </div>
                    <div id ="odiMenuPost" class="xCN_DivMenuPost" style="float:left;">
                        <a href="javascript:void(0);" onclick="W_FRMxPostDoc()">
                            <div class="xCN_DivMenuNewCaption">
                                <%=ViewData("olaCanPost")%>
                            </div>
                        </a>
                    </div>
                    <div id ="odiMenuCoppy" class="xCN_DivMenuCoppy" style="float:left;">
                        <a href="javascript:void(0);" onclick="W_FRMxCopyDoc()">
                            <div class="xCN_DivMenuNewCaption">
                                <%=ViewData("olaCanCopy")%>
                            </div>
                        </a>
                    </div>
                    <%--<div id ="odiMenuStop" class="xCN_DivMenuReport" style="float:left;">
                        <a href="javascript:void(0);" onclick="W_FRMxShwPrintDialog()">
                            <div class="xCN_DivMenuNewCaption">
                                <%=ViewData("olaReport")%>
                            </div>
                        </a>
                    </div>--%><!-- *CH 05-01-2012 -->
                    <div id ="odiMenuStop" class="xCN_DivMenuReport" style="float:left;">
                        <a href="javascript:void(0);" onclick="W_SHWxShowPrintForm()">
                            <div class="xCN_DivMenuNewCaption">
                                <%=ViewData("olaReport")%>
                            </div>
                        </a>
                    </div>
                   <%-- <div id ="odiMenuHelp" class="xCN_DivMenuHelp" style="float:left;">
                        <a href="javascript:void(0);" onclick="W_FRMxHelpDoc()">
                            <div class="xCN_DivMenuNewCaption">
                                <%=ViewData("olaHelp")%>
                            </div>
                        </a>
                    </div>  --%>
                    <%--<div id ="odiMenuClose" class="xCN_DivMenuHome" style="float:left;">
                        <a href="javascript:void(0);" onclick="W_FRMxCloseDoc()">
                            <div class="xCN_DivMenuNewCaption">
                                <%=ViewData("olaClose")%>
                            </div>
                        </a>
                    </div>--%>
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
                        <div id="NoneApprove" class ="xW_DivDocStatus">
                            <img id="oimNoAppv" 
                                 alt="" 
                                 class="xW_ImgDocStatus" 
                                 name="oimNoAppv" 
                                 src='<%=ViewData("oimgNoAppv")%>' />
                            <label class="xW_LabelDocStatus">
                                 <%=ViewData("olatMsgDoc_NonApp")%>
                            </label>
                        </div>
                        <div id="Approve" class ="xW_DivDocStatus" style ="display:none;">
                            <img id="oimAppv" 
                                 alt="oimAppv" 
                                 class="xW_ImgDocStatus" 
                                 name="oimAppv" 
                                 src='<%=ViewData("oimgAppv") %>' />
                            <label class="xW_LabelDocStatus">
                                 <%=ViewData("olatMsgDoc_App")%>
                             </label>
                        </div>
                        <div id="Cancel" class ="xW_DivDocStatus" style ="display:none;">
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
            
        </td></tr>
        <tr>
            <%--ส่วนหัว คอลัมน์ที่ 1--%> 
           <td colspan ="2" width="100%"  valign="top" >
                 <table class="x005Table_PdtDetail">
                        <tr>
                           <td valign ="top">
                                  <table class="x005Table">
                                        <tr>
                                            <td>
                                                <div id="Div1" class ="x005Div_GridStyle" style='width:698px'>
                                                 <%  
                                                     Dim oDataDT As IEnumerable(Of Adasoft.WebPos.Models.cmlTACTPzDT) = ViewData("DataDT")

                                                     Dim gridBuilder = Html.Telerik().Grid(oDataDT) _
                                                                 .Name("GridDT") _
                                                                 .HtmlAttributes(New With {.style = "width:99.5%;"}) _
                                                     .Scrollable(Function(o) o.Height(415)) _
                                                     .Footer(False) _
                                                     .Selectable()
                                                    
                                                     gridBuilder.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                                                            .Select("_SelectAjaxEditing", "cvcTACTPqHD") _
                                                            ))
                                                 
                                                     gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FNXzdSeqNo).Title(ViewData("olaRowID")).Width(40) _
                                                          .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                                          .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                                                     gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTPdtCode).Title(ViewData("olaPdtCode")).Width(100) _
                                                          .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                                          .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                                                     gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTPdtName).Title(ViewData("olaPdtName")).Width(260) _
                                                          .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                                          .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                                                     gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTXzdUnitName).Title(ViewData("olaPdtUnitName")).Width(70) _
                                                          .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                                          .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                                                     gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FCXzdQty).Title(ViewData("olaPdtUnit")).Width(99).Format("{0:#,##0." & StrDup(Session("nVB_CNDecAmtForShw"), "0") & "}") _
                                                          .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                                          .HtmlAttributes(New With {.style = "text-align:right; font-size:12px;"}))
                                                     gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTPunCode).Title("PunCode").Width(0).Hidden(True))
                                                     gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FCXzdFactor).Title("Factor").Width(0).Hidden(True))
                                                     gridBuilder.DataKeys(Function(Key) Key.Add(Function(model) model.FNXzdSeqNo))
                                                     gridBuilder.ClientEvents(Function(Events) Events.OnRowSelect("onRowSelected"))
                                                     gridBuilder.RowAction(Function(row) (row.Selected = row.DataItem.FNXzdSeqNo.Equals(ViewData("id"))))
                                                     gridBuilder.Render()
                                                %>
                                                                                 
                                             </div>  
                                            </td>
                                        </tr>
                                        <tr>
                                           <td >
                                                <div style='width:698px'>
                                                    <input id="otbPdtCode" 
                                                          maxlength='<%=ViewData("PdtMaxLenght")%>' 
                                                          name="otbPdtCode"
                                                          onblur="return otbPdtCode_onblur()" 
                                                          onfocus="return otbPdtCode_onfocus()" 
                                                          onkeydown="return otbPdtCode_onkeydown()"
                                                          onkeypress="return TextAll_onkeypress()" 
                                                          style="width:150px;"
                                                          class="x002AddPdt_Textbox"
                                                          type="text" />
                                                      <a onclick="ocmBrwPdt_onclick();" href="javascript:void();">
                                                          <img id="ocmBrwPdt" 
                                                             alt="" 
                                                             style="vertical-align:top;"
                                                             class="xCN_ImgBrowData" 
                                                             name="ocmBrwPdt" 
                                                             src='<%=Url.Content(ViewData("oimgBrowse"))%>' />
                                                      </a>
                                                      <input id="otbPdtName" name="otbPdtName" 
                                                          type="text" readonly="readonly" 
                                                          style="width:300px"
                                                          class="xCN_AllReadOnlyBGColor" />
                                                      <select id="ocbUnit" name="ocbUnit" 
                                                          style="width:80px;"
                                                          class="x002AddPdt_Combo"
                                                          onchange="return ocbUnit_onchange()">
                                                      </select>
                                                      <input id="otbQty" name="otbQty" 
                                                              onkeydown="return otbQty_onkeydown()"
                                                              onblur="otbQty_onblur()"
                                                              onkeypress="return J002_CHKbCheckNumOnly(this.value,event.keyCode,event.which)" 
                                                              style="width:120px;float:right;text-align:right;"
                                                              class="x002AddPdt_Textbox_Number"
                                                              type="text" />
                                                </div>
                                                <div style="margin-top:3px;">
                                                    <input id="ockSendTab" name="ockSendTab" type="checkbox" checked="checked"  class="x005Checkbox"/>
                                                    <span id="Span1" style="font-size:12px;width:110px;" >
                                                        <label class="x002Caption" >
                                                            <%=ViewData("olaAutoTab")%>
                                                        </label>
                                                    </span>
                                                    <div style="float:right">
                                                        <label id="olaTotalQty" 
                                                            class="x002Caption">
                                                            &nbsp;<%=ViewData("olaTotal")%>
                                                        </label> 
                                                        <input id="otbNet" name="otbNet" type="hidden"/>
                                                        <input id="otbSumQty" type ="text" 
                                                               readonly="readonly" 
                                                               style="text-align:right;"
                                                               class="xCN_AllReadOnlyBGColor"  />
                                                        <input id="FCXqhTotal" type ="text" 
                                                               value="<%=Model.FCXzhTotal %>" 
                                                               readonly="readonly" 
                                                               style="text-align:right;display:none"
                                                               class="xCN_AllReadOnlyBGColor"  />
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>                                  
                                  </table>                                
                               
                           </td>
                            <%--ส่วนหัว คอลัมน์ที่ 2--%>
                            <td  valign ="top" >
                                <%--Document--%>
                                <div id="odiDocNo" style="float:left;" class ="xCN_AllBorderColor xW_DivDetailHDDocNo">
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
                                                <%=ViewData("olaFTXqhDocNo")%>
                                            </div>
                                            <div class="xW_DivDocNoColumn1Caption">
                                                <%=ViewData("olaFDXqhDocDate")%>
                                            </div>
                                            <div class="xW_DivDocNoColumn1Caption">
                                                <%=ViewData("olaFTDptCode")%>
                                            </div>
                                            <div class="xW_DivDocNoColumn1Caption">
                                                <%=ViewData("olaFTUsrCode")%>
                                            </div>
                                            <div class="xW_DivDocNoColumn1Caption">
                                                <%=ViewData("olaFTXqhApvCode")%>
                                            </div>
                                        </div>
                                        <div class="xW_DivDocNoColumn2">
                                            <div class="xW_DivDocNoColumn2Sub">
                                                <input type ="text" id="FTXqhDocNo" name="FTXqhDocNo" 
                                                    maxlength='20' 
                                                    class="xCN_AllReadOnlyBGColor xW_InputTextDocNo" 
                                                    readonly="readonly"
                                                    value="<%=Model.FTXzhDocNo%>" 
                                                    onblur = "FTXqhDocNo_onblur()" 
                                                    onkeydown = "FTXqhDocNo_onkeydown()" 
                                                    onfocus="FTXqhDocNo_onfocus()" />
                                            </div>
                                            <div class="xW_DivDocNoColumn2Sub">
                                                <%=Html.Telerik().DatePicker() _
                                                    .Name("X_FDXqhDocDate") _
                                                    .Value(Model.FDXzhDocDate) _
                                                    .ButtonTitle("..") _
                                                    .HtmlAttributes(New With {.style = "width:132px;"}) _
                                                    .InputHtmlAttributes(New With {.id = "FDXqhDocDate", .name = "FDXqhDocDate"}) _
                                                    .ShowButton(True)
                                                %>
                                            </div>
                                            <div class="xW_DivDocNoColumn2Sub">
                                                <input type="text" id="otbDptName" name="otbDptName" readonly="readonly"  
                                                            class="xCN_AllReadOnlyBGColor xW_InputTextShwDetailName"  />
                                            </div>
                                            <div class="xW_DivDocNoColumn2Sub">
                                                <input type="text" id="otbUsrName" 
                                                                    name="otbUsrName" 
                                                                    readonly="readonly"  
                                                                    class="xCN_AllReadOnlyBGColor xW_InputTextShwDetailName" />
                                            </div>
                                            <div class="xW_DivDocNoColumn2Sub">
                                                <input type="text" 
                                                                    id="otbApvUsr" name="otbApvUsr"
                                                                    readonly="readonly"  
                                                                    class="xCN_AllReadOnlyBGColor xW_InputTextShwDetailName" />
                                            </div>
                                        </div>
                                        <div class="xW_DivDocNoColumn3">
                                            <div class="xW_DivDocNoColumn3Sub">
                                                <a onclick="W_FRMtGenCode();" href="javascript:void()">
                                                    <img id="ocmGetDocNo" 
                                                         alt="" 
                                                         class="xCN_ImgBrowData" 
                                                         name="ocmGetDocNo" 
                                                         src='<%=Url.Content(ViewData("oimgGencode"))%>' />
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <textarea id="FTXqhRmk" cols ="1" name="FTXqhRmk" rows="1" class="xW_TextareaRmk"></textarea>
                                    </div>
                                    <div>
                                        <input id="FNXqhStaDocAct" 
                                                        name="FNXqhStaDocAct" 
                                                        type="checkbox" 
                                                        checked="checked" />
                                           <label id="olaFTXqhStaDocAct" >
                                                <%=ViewData("olaFNXqhStaDocAct")%>
                                           </label>
                                    </div>
                                </div>
                            
                                
                            </td>
                         </tr>        
                </table>                    
           </td>
        </tr>
    </table>

    <% End Using %>
    <!-- JQuery UI -->
    <!-- Save Warning -->
    <div id="odiSavWarning" title='' class="xCN_DivTabDisplay">
        <div class="xCN_DivTabDisplaySub" >
            <div class="xCN_DivDialogTop">
                <div id='odiImgSavWarning' class="xCN_DivShowIcon">
                    <a></a>
                </div>
                <div class='xCN_DivDialoglabel'><label id='olaMsgSavWarning' ></label></div>
            </div>       
        </div>
    </div>  
    <!-- End Save Warning -->
    <!-- Browse Product -->
    <div id="odiBrwPdt" title='<%=ViewData("olaBrowse")%>' class="xCN_DivTabDisplay">
        <div style="height:auto">
            <img alt="" id="oimSessionAlive" width="1" height="1" src="" style="display:none;"/>
            <%--Hidden Object--%>
            <input type="hidden" id="otbFilterValueOld" value="<%=Session("cvcCNBrwPdtLastFilter") %>" />
            <input type="hidden" id="otbFilterValueShwOld" value="<%=Session("cvcCNBrwPdtLastFilterTxt") %>" />
            <input type="hidden" id="otbFilterField" />
            
            <table style="text-align:center; width:100%" border="0" cellpadding="0" cellspacing="0" >
                
                <tr >
                    <td colspan="4" id="ofaShowHD" valign="top" width="100%">
                    
        <%
            Dim nFieldCountHD As Integer
            Dim nWidth(9) As Integer
            Dim tCaption(9) As String
            Dim tField(9) As String
            Dim tHidden(9) As String
            Dim nCount As Integer
            nFieldCountHD = 0
            For Each item In ViewData("BrowseField")
                tField(nFieldCountHD) = item
                nFieldCountHD += 1
            Next
            
            nCount = 0
            For Each item In ViewData("WidthField")
                nWidth(nCount) = CInt(item * 820 / 100)
                nCount += 1
            Next
            
            nCount = 0
            For Each item In ViewData("Caption")
                tCaption(nCount) = item
                nCount += 1
            Next

            nCount = 0
            For Each item In ViewData("Hidden")
                tHidden(nCount) = item
                nCount += 1
            Next
            
            Dim tController As String = ViewData("CtrlName")
            Dim oView = CType(ViewData("DataPdt"), IEnumerable(Of Models.cmlCNBrwPdt))
            Dim oData As IEnumerable(Of Models.cmlCNBrwPdt)
            oData = oView
            Dim gridBuilderPdt = Html.Telerik().Grid(oData)
            gridBuilderPdt.Name("GridPdt")
            gridBuilderPdt.Pageable(Function(page) page.PageSize(Session("nVB_CNBrwTop")))
            If 1 <= nFieldCountHD Then
                gridBuilderPdt.Columns(Function(columns) columns.Bound(Function(o) o.PdtCode).Hidden(tHidden(0) = "1").Title(tCaption(0)).Width(nWidth(0)).HeaderHtmlAttributes(New With {.align = "center"}).HtmlAttributes(New With {.align = "left", .Style = "height:20px"}))
            End If
            If 2 <= nFieldCountHD Then
                gridBuilderPdt.Columns(Function(columns) columns.Bound(Function(o) o.PdtName).Hidden(tHidden(1) = "1").Title(tCaption(1)).Width(nWidth(1)).HtmlAttributes(New With {.align = "left"}))
            End If
            If 3 <= nFieldCountHD Then
                gridBuilderPdt.Columns(Function(columns) columns.Bound(Function(o) o.PdtNameOth).Hidden(tHidden(2) = "1").Title(tCaption(2)).Width(nWidth(2)).HtmlAttributes(New With {.align = "left"}))
            End If
            If 4 <= nFieldCountHD Then
                gridBuilderPdt.Columns(Function(columns) columns.Bound(Function(o) o.PdtBarcode).Hidden(tHidden(3) = "1").Title(tCaption(3)).Width(nWidth(3)).HtmlAttributes(New With {.align = "left"}))
            End If
            If 5 <= nFieldCountHD Then
                gridBuilderPdt.Columns(Function(columns) columns.Bound(Function(o) o.PdtPriceRet).Hidden(tHidden(4) = "1").Title(tCaption(4)).Width(nWidth(4)).HtmlAttributes(New With {.align = "left"}).Format("{0:#,##0." & StrDup(Session("nVB_CNDecAmtForShw"), "0") & "}"))
            End If
            If 6 <= nFieldCountHD Then
                gridBuilderPdt.Columns(Function(columns) columns.Bound(Function(o) o.PdtQtyRet).Hidden(tHidden(5) = "1").Title(tCaption(5)).Width(nWidth(5)).HtmlAttributes(New With {.align = "left"}).Format("{0:#,##0." & StrDup(Session("nVB_CNDecAmtForShw"), "0") & "}"))
            End If
            If 7 <= nFieldCountHD Then
                gridBuilderPdt.Columns(Function(columns) columns.Bound(Function(o) o.PdtQtyBalance).Hidden(tHidden(6) = "1").Title(tCaption(6)).Width(nWidth(6)).HtmlAttributes(New With {.align = "left"}).Format("{0:#,##0." & StrDup(Session("nVB_CNDecAmtForShw"), "0") & "}"))
            End If
            If 8 <= nFieldCountHD Then
                gridBuilderPdt.Columns(Function(columns) columns.Bound(Function(o) o.PdtUnit).Hidden(tHidden(7) = "1").Title(tCaption(7)).Width(nWidth(7)).HtmlAttributes(New With {.align = "left"}))
            End If
            If 9 <= nFieldCountHD Then
                gridBuilderPdt.Columns(Function(columns) columns.Bound(Function(o) o.PdtFactor).Hidden(tHidden(8) = "1").Title(tCaption(8)).Width(nWidth(8)).HtmlAttributes(New With {.align = "left"}))
            End If
            gridBuilderPdt.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
             .Select("_SelectionClientSide_Pdt", tController)))
                      
            gridBuilderPdt.DataKeys(Function(keys) (keys.Add(Function(c) c.PdtBarcode)))
            gridBuilderPdt.Selectable()
            gridBuilderPdt.Scrollable(Function(o) o.Height(400))
            gridBuilderPdt.ClientEvents(Function(Events) Events.OnRowSelect("onRowSelectedPdt"))
            gridBuilderPdt.ClientEvents(Function(Events) Events.OnLoad("grid_onLoad"))
            gridBuilderPdt.Render()
            
        %>
                        
                    </td>
                </tr>
                <tr>
                    <td align="left" valign="top" width="22%">
                        <label id="olaFilterLabel"><%=ViewData("olaFilterBy") %></label>
                    </td>
                    <td align="left" valign="top"width="30%">
                        <input type="button" value='<%=ViewData("olaAnyPart") %>'  onclick="W_DATxRefresh(1);" />
                        <input type="button" value='<%=ViewData("olaFilter") %>' onclick="W_DATxRefresh(2);" />
                        <input type="button" value='<%=ViewData("olaLastFilter") %>' onclick="W_DATxRefresh(3);" />
                    </td>
                    <td align="left" valign="top"width="25%">
                        <select id="FTPdtBarCode" onchange="W_DATxRefresh();">
                            <option value="FTPdtBarCode1"><%=ViewData("olaBarcode1") %></option>
                            <option value="FTPdtBarCode2"><%=ViewData("olaBarcode2") %></option>
                            <option value="FTPdtBarCode3"><%=ViewData("olaBarcode3") %></option>
                        </select>
                    </td>
                    <td align="left" valign="top"width="25%">
                        <label id ="olaShowUnit">
                            <%=ViewData("olaFTPdtUnit") %>
                        </label>
                    </td>
                </tr>                
                <tr>
                    <td colspan="3" align="left" valign="middle">
                        <input type="text" onkeydown="otbFilterValue_onkeydown(event.keyCode,event.witch);"  style="max-width:418px; width:418px;" id="otbFilterValue" />
                    </td>
                    <td align="right" valign="middle">
                        <input type="button" value='<%=ViewData("olaOK") %>' onclick="{nStatus = 1;C_SETxProductData();}"/>
                        <input type="button" value='<%=ViewData("olaCancel") %>' id='ocmCloseBrwPdt'/>
                    </td>
                </tr>
            </table>
            <script type="text/javascript">
                var nOnclick=0;          
                var tW_PdtCodeBeFore;
                var tW_PassedValue; //ข้อมูลสินค้าที่ได้จากหน้าค้นหา      
                function grid_onLoad() {
                    var oFieldName = document.getElementById('otbFilterField');
                    var columnName = $('#GridPdt th').eq(0).text();
                    document.getElementById("olaFilterLabel").innerHTML = '<%=ViewData("olaFilterBy") %>' + columnName;
                    switch(columnName){
                        <%For nI = 0 To 9 %>
                            case '<%=tCaption(nI)%>':oFieldName.value = '<%=tField(nI)%>';break;
                        <%Next %>
                    }
                    $('tr', this).live('dblclick', function(e) {
                        var $tr = $(this);
                        nStatus = 1;
                        //window.close();
                        //*CH ข้อมูลสินค้าที่เลือก
                        C_SETxProductData();
                      });                      
                    $('#GridPdt tr:has(td) td', this.element).bind('click', function(e) {
                        var td = this;
                        var oFieldName = document.getElementById('otbFilterField');
                        var columnName = $('#GridPdt th').eq(td.cellIndex).text();
                        document.getElementById("olaFilterLabel").innerHTML = '<%=ViewData("olaFilterBy") %>' + columnName;
                        switch(columnName){
                            <%For nI = 0 To 9 %>
                                case '<%=tCaption(nI)%>':oFieldName.value = '<%=tField(nI)%>';break;
                            <%Next %>
                        }
                    });
                    $('#GridPdt th', this.element).live('click', function(e) {
                            var td = this;
                            var oFieldName = document.getElementById('otbFilterField');
                            var columnName = $('#GridPdt th').eq(td.cellIndex).text();
                            document.getElementById("olaFilterLabel").innerHTML = '<%=ViewData("olaFilterBy") %>' + columnName;
                            switch(columnName){
                                <%For nI = 0 To 9 %>
                                    case '<%=tCaption(nI)%>':oFieldName.value = '<%=tField(nI)%>';break;
                                <%Next %>
                            }
                        nOnclick=0;
                    });
                }
                function onRowSelectedPdt(e) {
                    nOnclick=1;
                    //var tCount='0';
                    //var tReturn;// = '12233344445555566666677777778888888899999999900000000001223334444555556666667777777888888889999999990000000000';
                    //<%For Each item In ViewData("PK")%>
                    //      tReturn=e.row.cells[<%=item%>].innerHTML;
                    //<%Next%>
                    var tDataID = e.row.cells[0].innerHTML; //*CH 29-12-2012 New เก็บรหัสสินค้าจากแถวที่เลือก
                    GetPassedValue(tDataID);
                    W_SHWxFilter(e.row.cells['<%=ViewData("ptPosUnit")%>'].innerHTML,e.row.cells['<%=ViewData("ptPosFactor")%>'].innerHTML)
                }
                
                function C_SETxProductData(){
                    $('#otbPdtCode').val(tW_PassedValue);
                    if ($('#otbPdtCode').val() != tW_PdtCodeBeFore) {
                        $('#otbSeq').val('');
                    }
                    else {
                        return false;
                    }
                    if (W_GETxPdtDetail() == false) {
                        W_CLRxTextBox();
                        alert('<%=ViewData("olatMsgNonDataPdt") %>');
                        $('#otbPdtCode').focus();
                        return false;
                    }
                    $('#otbPdtCode').focus();
                    $ui("#odiBrwPdt").dialog("close");
                }
            </script>
        </div>
    </div>
    <!-- End Browse Product -->
    <!-- Browse Doc -->
    <div id="odiBrwDoc" title='<%=ViewData("olaBrowse")%>' class="xCN_DivTabDisplay">
        <div style="height:auto">
            <img alt="" id="Img1" width="1" height="1" src="" style="display:none;"/>
            <table style="text-align:center; width:100%" border="0" cellpadding="0" cellspacing="0" >
                <tr>
                    <td align="left" valign="bottom"width="400px">
                    
                        <li><%=ViewData("olaHeader")%></li>
                    </td>
                    <td align="right" valign="middle"width="200px">
                        <label id="Label1"><%=ViewData("olaFilterBy")%></label>:
                        <label id="olaFilterBy"></label>&nbsp;&nbsp;&nbsp;
                    </td>
                    
                    <td align="left" valign="middle" width="200px">
                        <input type="hidden" id="otbFilterFieldDoc" />
                        <input type="text" style="max-width:100px" id="otbFilterValueDoc"  
                                onkeydown="return otbFilterValueDoc_onkeydown(event.keyCode,event.which)" 
                                onkeypress="return otbFilterValueDoc_onkeypress(event.keyCode,event.which)" />
                        
                    </td>
                </tr>
                <tr style="height:160px">
                    <td colspan="2" id="Td1" valign="top">
                    <%
                        Dim nFieldCountDocHD As Integer
                        Dim nWidthDocHD(11) As Integer
                        Dim tCaptionDocHD(11) As String
                        Dim tFieldDocHD(11) As String
                        Dim aFormatHD(11) As String
                        Dim nCountDocHD As Integer
                        Dim aTextAlignHD(11) As String
                        Dim aTextAlignDT(11) As String
                        Dim oTemp As New List(Of String)
            
                        nFieldCountDocHD = 0
                        For Each item In ViewData("BrowseFieldDocHD")
                            tFieldDocHD(nFieldCountDocHD) = item
                            nFieldCountDocHD += 1
                        Next
                        nCount = 0
                        For Each item In ViewData("WidthFieldDocHD")
                            nWidthDocHD(nCountDocHD) = CInt(item * 600 / 100)
                            nCountDocHD += 1
                        Next
                        nCountDocHD = 0
                        For Each item In ViewData("CaptionDocHD")
                            tCaptionDocHD(nCountDocHD) = item
                            nCountDocHD += 1
                        Next
                        nCountDocHD = 0
                        For Each item In ViewData("FormatHD")
                            aFormatHD(nCountDocHD) = item
                            nCountDocHD += 1
                        Next
                        nCountDocHD = 0
                        oTemp = ViewData("TextAlignHD")
                        For i As Integer = 0 To 11
                            If i >= oTemp.Count Then
                                aTextAlignHD(nCountDocHD) = "text-align:left"
                            Else
                                aTextAlignHD(nCountDocHD) = "text-align:" & oTemp(i)
                            End If
                            nCountDocHD += 1
                        Next
                        nCountDocHD = 0
                        oTemp = ViewData("TextAlignDT")
                        For i As Integer = 0 To 11
                            If i >= oTemp.Count Then
                                aTextAlignDT(nCountDocHD) = "text-align:left"
                            Else
                                aTextAlignDT(nCountDocHD) = "text-align:" & oTemp(i)
                            End If
                            nCountDocHD += 1
                        Next
            
                        Dim tControllerDoc As String = ViewData("CtrlNameBrwDoc")
                        Dim oViewDocHD = CType(ViewData("DataDocHD"), IEnumerable(Of Models.cmlCNBrowseMaster))
                        Dim oDataDocHD As IEnumerable(Of Models.cmlCNBrowseMaster)
                        oDataDocHD = oViewDocHD
                        'oData = From it In Models.cmlCNBrowseMaster(ViewData("DataHD")) Select it
                        Dim gridBuilderDocHD = Html.Telerik().Grid(oDataDocHD).HtmlAttributes(New With {.style = "width:618px;table-layout: fixed;white-space:nowrap; font:Tahoma, Geneva, sans-serif; font-size:11px"})
                        gridBuilderDocHD.Name("GridDocHD")
                        Dim oFieldIndex As List(Of Integer) = ViewData("FieldIndex")
                        gridBuilderDocHD.Pageable(Function(page) page.PageSize(10))
                        For n As Integer = 0 To oFieldIndex.Count - 1
                            Select Case oFieldIndex(n)
                                Case 1
                                    gridBuilderDocHD.Columns(Function(columns) columns.Bound(Function(o) o.FTField01).Title(tCaptionDocHD(n)).Width(nWidth(n)).Format(IIf(aFormatHD(n) = "", "", "{0:" & aFormatHD(n) & "}")) _
                                                            .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                            .HtmlAttributes(New With {.style = aTextAlignDT(0)}))
                                Case 2
                                    gridBuilderDocHD.Columns(Function(columns) columns.Bound(Function(o) o.FTField02).Title(tCaptionDocHD(n)).Width(nWidth(n)).Format(IIf(aFormatHD(n) = "", "", "{0:" & aFormatHD(n) & "}")) _
                                                            .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                            .HtmlAttributes(New With {.style = aTextAlignDT(1)}))
                                Case 3
                                    gridBuilderDocHD.Columns(Function(columns) columns.Bound(Function(o) o.FTField03).Title(tCaptionDocHD(n)).Width(nWidth(n)).Format(IIf(aFormatHD(n) = "", "", "{0:" & aFormatHD(n) & "}")) _
                                                            .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                            .HtmlAttributes(New With {.style = aTextAlignDT(2)}))
                                Case 4
                                    gridBuilderDocHD.Columns(Function(columns) columns.Bound(Function(o) o.FTField04).Title(tCaptionDocHD(n)).Width(nWidth(n)).Format(IIf(aFormatHD(n) = "", "", "{0:" & aFormatHD(n) & "}")) _
                                                            .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                            .HtmlAttributes(New With {.style = aTextAlignDT(3)}))
                                Case 5
                                    gridBuilderDocHD.Columns(Function(columns) columns.Bound(Function(o) o.FTField05).Title(tCaptionDocHD(n)).Width(nWidth(n)).Format(IIf(aFormatHD(n) = "", "", "{0:" & aFormatHD(n) & "}")) _
                                                            .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                            .HtmlAttributes(New With {.style = aTextAlignDT(4)}))
                                Case 6
                                    If 6 <= nFieldCountDocHD Then
                                        gridBuilderDocHD.Columns(Function(columns) columns.Bound(Function(o) o.FTField06).Title(tCaptionDocHD(n)).Width(nWidth(n)).Format(IIf(aFormatHD(n) = "", "", "{0:" & aFormatHD(n) & "}")) _
                                                                .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                                .HtmlAttributes(New With {.style = aTextAlignDT(5)}))
                                    End If
                                Case 7
                                    gridBuilderDocHD.Columns(Function(columns) columns.Bound(Function(o) o.FTField07).Title(tCaptionDocHD(n)).Width(nWidth(n)).Format(IIf(aFormatHD(n) = "", "", "{0:" & aFormatHD(n) & "}")) _
                                                            .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                            .HtmlAttributes(New With {.style = aTextAlignDT(6)}))
                                Case 8
                                    gridBuilderDocHD.Columns(Function(columns) columns.Bound(Function(o) o.FTField08).Title(tCaptionDocHD(n)).Width(nWidth(n)).Format(IIf(aFormatHD(n) = "", "", "{0:" & aFormatHD(n) & "}")) _
                                                            .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                            .HtmlAttributes(New With {.style = aTextAlignDT(7)}))
                                Case 9
                                    gridBuilderDocHD.Columns(Function(columns) columns.Bound(Function(o) o.FTField09).Title(tCaptionDocHD(n)).Width(nWidth(n)).Format(IIf(aFormatHD(n) = "", "", "{0:" & aFormatHD(n) & "}")) _
                                                            .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                            .HtmlAttributes(New With {.style = aTextAlignDT(8)}))
                                Case 10
                                    gridBuilderDocHD.Columns(Function(columns) columns.Bound(Function(o) o.FTField10).Title(tCaptionDocHD(n)).Width(nWidth(n)).Format(IIf(aFormatHD(n) = "", "", "{0:" & aFormatHD(n) & "}")) _
                                                            .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                            .HtmlAttributes(New With {.style = aTextAlignDT(9)}))
                                Case 11
                                    gridBuilderDocHD.Columns(Function(columns) columns.Bound(Function(o) o.FTField11).Title(tCaptionDocHD(n)).Width(nWidth(n)).Format(IIf(aFormatHD(n) = "", "", "{0:" & aFormatHD(n) & "}")) _
                                                            .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                            .HtmlAttributes(New With {.style = aTextAlignDT(10)}))
                                Case 12
                                    gridBuilderDocHD.Columns(Function(columns) columns.Bound(Function(o) o.FTField12).Title(tCaptionDocHD(n)).Width(nWidth(n)).Format(IIf(aFormatHD(n) = "", "", "{0:" & aFormatHD(n) & "}")) _
                                                            .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                            .HtmlAttributes(New With {.style = aTextAlignDT(11)}))
                            End Select
                        Next
                        gridBuilderDocHD.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                          .Select("_SelectionClientSide_HD", tControllerDoc)))
                        gridBuilderDocHD.DataKeys(Function(keys) (keys.Add(Function(c) c.FTField01)))
                        gridBuilderDocHD.Selectable()
                        gridBuilderDocHD.Footer(True)
                        gridBuilderDocHD.Sortable()
                        gridBuilderDocHD.Resizable(Function(o) o.Columns(True))
                        gridBuilderDocHD.Scrollable(Function(o) o.Height(200))
                        'gridBuilderDocHD.ClientEvents(Function(Events) Events.OnCellSelected("Yo"))
                        gridBuilderDocHD.ClientEvents(Function(Events) Events.OnRowSelect("onRowSelectedDocHD"))
                        gridBuilderDocHD.ClientEvents(Function(Events) Events.OnLoad("gridDocHD_onLoad"))
                        gridBuilderDocHD.ClientEvents(Function(Events) Events.OnDataBound("gridDocHD_onLoad"))
                        gridBuilderDocHD.Render()
                    %>
                    <% Html.Telerik().ScriptRegistrar().Globalization(true) %>
                    </td> 
                    <td valign="top" align="left" >
                        <table style = "table-layout: fixed;white-space:nowrap; font:Tahoma, Geneva, sans-serif; font-size:11px">
                            <tr>
                                <td colspan="2" style=" width:200px; text-align:center"><%=ViewData("olaFilterCondition") %></td>
                            </tr>
                            <tr>
                                <td colspan="2" style=" width:200px; text-align:left"><%=ViewData("olaFilterDocSta") %></td>
                            </tr>
                            <tr>
                                <td style=" width:100px"><%=ViewData("olaCapCon_Approve")%></td>
                                <td style=" width:100px">
                                    <input type="hidden" id="otbApprField" value='<%=ViewData("oApprField")%>' />
                                    <select id="ocbApprValue" <%=iif(ViewData("bC_EnableAppr")=false,"disabled","")%> style = "font:Tahoma, Geneva, sans-serif; font-size:11px; width:80px">
                                        <option value="1" <%=iif(ViewData("StaAppr")="1","selected","")%> ><%=ViewData("olaFilterStaAll") %></option>
                                        <option value="2" <%=iif(ViewData("StaAppr")="2","selected","")%> ><%=ViewData("olaFilterStaYes")%></option>
                                        <option value="3" <%=iif(ViewData("StaAppr")="3","selected","")%> ><%=ViewData("olaFilterStaNo")%></option>
                                    </select>
                                    
                                </td>
                            </tr>
                            <tr>
                                <td><%=ViewData("olaCapCon_Reference") %></td>
                                <td>
                                    <input type="hidden" id="otbRefField" value='<%=ViewData("oRefField")%>'/>
                                    <select id="ocbRefValue" <%=iif(ViewData("bC_EnableRef")=false,"disabled","")%> style = "font:Tahoma, Geneva, sans-serif; font-size:11px; width:80px">
                                        <option value="1" <%=iif(ViewData("StaRef")="1","selected","")%>><%=ViewData("olaFilterStaAll") %></option>
                                        <option value="2" <%=iif(ViewData("StaRef")="2","selected","")%>><%=ViewData("olaFilterStaYes")%></option>
                                        <option value="3" <%=iif(ViewData("StaRef")="3","selected","")%>><%=ViewData("olaFilterStaNo")%></option>
                                    </select>
                                    
                                </td>
                            </tr>
                            <tr>
                                <td><%=ViewData("olaCapCon_Active")%></td>
                                <td>
                                    <input type="hidden" id="otbActField" value='<%=ViewData("oActField")%>' />
                                    <select id="ocbActValue" <%=iif(ViewData("bC_EnableActive")=false,"disabled","")%> style = "font:Tahoma, Geneva, sans-serif; font-size:11px; width:80px">
                                        <option value="1" <%=iif(ViewData("StaActive")="1","selected","")%>><%=ViewData("olaFilterStaAll") %></option>
                                        <option value="2" <%=iif(ViewData("StaActive")="2","selected","")%>><%=ViewData("olaFilterStaYes")%></option>
                                        <option value="3" <%=iif(ViewData("StaActive")="3","selected","")%>><%=ViewData("olaFilterStaNo")%></option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td><%=ViewData("olaCapCon_Cancel")%></td>
                                <td>
                                    <input type="hidden" id="otbCalField" value='<%=ViewData("oCalField")%>' />
                                    <select id="ocbCalValue" <%=iif(ViewData("bC_EnableCancel")=false,"disabled","")%> style = "font:Tahoma, Geneva, sans-serif; font-size:11px; width:80px">
                                        <option value="1" <%=iif(ViewData("StaCancel")="1","selected","")%>><%=ViewData("olaFilterStaAll") %></option>
                                        <option value="2" <%=iif(ViewData("StaCancel")="2","selected","")%>><%=ViewData("olaFilterStaYes")%></option>
                                        <option value="3" <%=iif(ViewData("StaCancel")="3","selected","")%>><%=ViewData("olaFilterStaNo")%></option>
                                    </select>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td align="left" valign="bottom">
                        <li><%=ViewData("olaDetail")%></li>
                    </td>
                    <td align="right" valign="middle">
                        <%=ViewData("olaCapCon_Dept")%>&nbsp;&nbsp;
                        <!--<input type="hidden" id="otbDeptField" value='<%=ViewData("oDeptValue")%>' />
                        <input type="hidden" id="otbOldRefCode" name="otbOldRefCode" value="" />
                        <input type="text" id="otbDeptValue" style="max-width:50px" maxlength="5"  onkeydown="return otbDeptValue_onkeydown(event.keyCode,event.which)" onfocus="return otbDeptValue_onfocus()" onblur="return otbDeptValue_onblur()" onkeypress="return otbDeptValue_onkeypress(event.keyCode,event.which)" />
                        <input type="button" value='<%=ViewData("olaSelect") %>' onclick="W_DATxBrowseMaster('otbDeptValue', 'olaDeptName','TCNMDepart');" />&nbsp;&nbsp;&nbsp;-->
                        <select id="ocbDeptValue" <%=iif(ViewData("bC_EnableCancel")=false,"disabled","")%> style = "font:Tahoma, Geneva, sans-serif; font-size:11px; width:120px">
                            <option value="" <%=iif(ViewData("StaCancel")="1","selected","")%>><%=ViewData("olaCapCon_DeptAll")%></option>
                            <% For Each oItem In ViewData("ovd_Department")%>
                                <option value="<%=oItem.FTDptCode%>" <%=iif(ViewData("StaCancel")="2","selected","")%>><%=oItem.FTDptCode%> | <%=oItem.FTDptName%></option>
                            <% Next%>
                        </select>
                    </td>
                    <%--<td align="left" valign="middle">
                        <label id="olaDeptName"><%=ViewData("olaCapCon_DeptAll")%></label>
                    </td>--%>
                </tr>
                <tr style="height:100px">
                    <td colspan="3" id="ofaShowDT" valign="top">
                        <div style="width:799px">
                        <%  
                            Dim nCountFieldDT As Integer
                            Dim nWidthDT(9) As Integer
                            Dim tCaptionDT(9) As String
                            Dim tFieldDT(9) As String
                            Dim nCountDT As Integer

                            For Each item In ViewData("BrowseFieldDocDT")
                                nCountFieldDT = nCountFieldDT + 1
                                tFieldDT(nCountFieldDT - 1) = item
                            Next
                            nCountDT = 0
                            For Each item In ViewData("WidthFieldDocDT")
                                nWidthDT(nCountDT) = CInt(item * 770 / 100)
                                nCountDT += 1
                            Next
                            nCountDT = 0
                            For Each item In ViewData("CaptionDocDT")
                                tCaptionDT(nCountDT) = item
                                nCountDT += 1
                            Next
                            
                            
                            Dim oDataDocDT As IEnumerable(Of Models.cmlCNBrowseMaster) = ViewData("DataDocDT")
                            Dim gridBuilderDT = Html.Telerik().Grid(oDataDocDT).HtmlAttributes(New With {.style = "width:799;table-layout: fixed;white-space:nowrap; font:Tahoma, Geneva, sans-serif; font-size:11px"})
                            gridBuilderDT.Name("GridDocDT")
                            gridBuilderDT.Pageable(Function(page) page.PageSize(10))
                            If 1 <= nCountFieldDT Then
                                gridBuilderDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField01).Title(tCaptionDT(0)).Width(nWidthDT(0)) _
                                                          .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                          .HtmlAttributes(New With {.style = aTextAlignDT(0)}))
                            End If
                            If 2 <= nCountFieldDT Then
                                gridBuilderDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField02).Title(tCaptionDT(1)).Width(nWidthDT(1)) _
                                                          .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                          .HtmlAttributes(New With {.style = aTextAlignDT(1)}))
                            End If
                            If 3 <= nCountFieldDT Then
                                gridBuilderDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField03).Title(tCaptionDT(2)).Width(nWidthDT(2)) _
                                                          .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                          .HtmlAttributes(New With {.style = aTextAlignDT(2)}))
                            End If
                            If 4 <= nCountFieldDT Then
                                gridBuilderDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField04).Title(tCaptionDT(3)).Width(nWidthDT(3)) _
                                                          .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                          .HtmlAttributes(New With {.style = aTextAlignDT(3)}))
                            End If
                            If 5 <= nCountFieldDT Then
                                gridBuilderDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField05).Title(tCaptionDT(4)).Width(nWidthDT(4)) _
                                                          .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                          .HtmlAttributes(New With {.style = aTextAlignDT(4)}))
                            End If
                            If 6 <= nCountFieldDT Then
                                gridBuilderDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField06).Title(tCaptionDT(5)).Width(nWidthDT(5)) _
                                                          .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                          .HtmlAttributes(New With {.style = aTextAlignDT(5)}))
                            End If
                            If 7 <= nCountFieldDT Then
                                gridBuilderDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField07).Title(tCaptionDT(6)).Width(nWidthDT(6)) _
                                                          .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                          .HtmlAttributes(New With {.style = aTextAlignDT(6)}))
                            End If
                            If 8 <= nCountFieldDT Then
                                gridBuilderDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField08).Title(tCaptionDT(7)).Width(nWidthDT(7)) _
                                                          .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                          .HtmlAttributes(New With {.style = aTextAlignDT(7)}))
                            End If
                            If 9 <= nCountFieldDT Then
                                gridBuilderDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField09).Title(tCaptionDT(8)).Width(nWidthDT(8)) _
                                                          .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                          .HtmlAttributes(New With {.style = aTextAlignDT(8)}))
                            End If
                            If 10 <= nCountFieldDT Then
                                gridBuilderDT.Columns(Function(columns) columns.Bound(Function(o) o.FTField10).Title(tCaptionDT(9)).Width(nWidthDT(9)) _
                                                          .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                                                          .HtmlAttributes(New With {.style = aTextAlignDT(9)}))
                            End If
                                    
                            gridBuilderDT.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                              .Select("_SelectionClientSideRef_DT", tControllerDoc)))
                                      
                            gridBuilderDT.DataKeys(Function(keys) (keys.Add(Function(c) c.FTField01)))
                            gridBuilderDT.Scrollable(Function(o) o.Height(100))
                            gridBuilderDT.Footer(True)
                            gridBuilderDT.Resizable(Function(o) o.Columns(True))
                            gridBuilderDT.Sortable()
                            gridBuilderDT.Render()
                        %>
                        </div>  
                    </td>
                </tr>
                <tr>
                    <td colspan="3" align="right">
                        <input type="button" value='<%=ViewData("olaRefresh") %>' onclick="W_DATxRefreshDoc();" />
                        <input type="button" value='<%=ViewData("olaOK") %>' onclick="W_GETxSelectedDoc();"/>
                        <input type="button" value='<%=ViewData("olaCancel") %>' id='ocmCloseBrwDoc' />
                    </td>
                </tr>
            </table>            
        </div>
    </div>    
    <!-- End Browse Doc -->
    <!-- Show Print Form -->    
    <%--<input type="button" id='ocmShwPrintForm' onclick='W_SHWxShowPrintForm()'/>--%>
    <div id="odiPrintForm" title='' class="xCN_DivTabDisplay">
        <div style="height:auto">
            <%Html.RenderPartial("uPrintForm", Session("oSplOrCst"))%>
        </div>
    </div>  
    <!-- End Print Form -->    
    <%--<input type="button" id='ocmShwPrintForm' onclick='W_SHWxForm()'/>--%>
    
    <script type="text/javascript">
        var nW_StaPrcDoc = 0;
        var nW_StaDocCancel = 0;
        var nW_StaDoc = 0;
        var tW_DocNoBeFore = '<%=Model.FTXzhDocNo %>';
        var oW_xmlHttp;
        var tMenu = '';
        var tW_ReadOnlyColor = '#FC9';
        var tW_PdtCode; //*PP 10-05-12 เก็บรหัสสินค้า
        var tW_RptDefName; // Jaruporn เก็บชื่อรายงาน defualt
        var tW_RptUsrName; // Jaruporn เก็บชื่อรายงาน  User Defind
        var tW_RptSel; // Jaruporn เก็บสถานะการเลือกดูรายงาน
        var tW_Menu = "omnPurPQ";
        var tW_Controller = "cvcTACTPqHD";
        var tW_Table = "TACTPqHD";
        var tW_MidHD = "Xqh";
        var tW_MidDT = "Xqd";
        var nW_DecLength = '<%=Session("nVB_CNDecAmtForShw") %>';
        var tW_PwdAllow = '<%=Session("bVB_CNPwdAllow")%>';
        var tW_FieldDocNo = 'FTXqhDocNo';
        var tW_BeforeEditData;
        var tW_CompBchCode = '<%=Session("tVB_CNBchCode") %>';
        var tW_FlagFunc; //สถานะการทำงาน Function ==> 1 : NewDoc, 2 : FindDoc, 3 : DeleteDoc, 4 : Exit
        var tW_RptDefName;
        var tW_RptUsrName;
        var tW_RptMode;
        function W_FRMxReload(pbAuthorRead) {
            if (pbAuthorRead == true) {
                document.getElementById('otbAuthorRead').value = 1;
            }
            J003_SHWxWaiting();
            document.getElementById('otbPostDocNo').value = document.getElementById('FTXqhDocNo').value;
            document.getElementById('ofmReload').submit();
        }
        function W_FRMxIniatial() {
            try {
                //J003_SHWxWaiting(); //เปิดหน้าครั้งแรกไม่ต้องให้หน้าจอมึด (ทำให้ Reload หน้าให้แสดงหน้าจอดำ 2 รอบ) *CH 05-01-2012
                tJ001_VirtualDirectory = '<%=Session("VirtualDirectory") %>';
                tJ002_VirtualDirectory = '<%=Session("VirtualDirectory") %>';
                tJ003_VirtualDirectory = '<%=Session("VirtualDirectory") %>';
                tJ004_VirtualDirectory = '<%=Session("VirtualDirectory") %>';
                if ('<%=ViewData("AuthorRead") %>' != '1') {
                    var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Read%>';
                    var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
                    var tPwdAllow = '<%=Session("bVB_CNPwdAllow") %>';
                    var bAllow = J002_CHKtCheckAuthorize(tW_Menu, tAuthor, tPwdAllow, tMsgNotAuthorize);
                    if (bAllow == false) {
                        var tUrl = '<%=Url.Action("Index","cvcCNPanal", New With {.ptMenuGrpName = "Purchase"}) %>';
                        window.location = encodeURI(tUrl);
                        return false;
                    }
                }
                W_GETxUsrAndDptName();
                W_GetApp();
                W_SETxDocDisplayStatus();
                W_SHWxDocStatus('NoneApprove', 'Approve', 'Cancel');
                tW_BeforeEditData = W_GETtDataHDString();
                document.getElementById("otbSumQty").value = J002_DECcRound('<%=ViewData("SumQty") %>', nW_DecLength, true);
                $('#otbFilterField').val('<%=ViewData("BrowseField")(0)%>'); //*CH 28-12-2012 Browse UI
            }
            catch (ex) {
                J002_SHWxError('W_FRMxIniatial', ex);
            }
            finally {
                J003_DISxWaiting();
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

        window.onload = window_onload;
        function window_onload() {
            W_FRMxIniatial();
        }
        function W_FRMxNewDoc() {
            //J003_SHWxWaiting();
            var tStaChange = W_CHKbHasChangeData();
            //ถ้าหากไม่มีการแก้ไขเอกสารให้สร้างเอกสารใหม่ *CH 03-01-2013
            if (tStaChange == true) {
                //var tDialogResult = J003_SHWxConfirmDialog('<%=ViewData("tMsgSave_Warning") %>', oJ003_DialogType.DialogYesNoCancel);
                //switch (tDialogResult) {
                //    case oJ003_DialogResult.Yes:
                //        var bComplete = W_FRMxSaveDoc(true);
                //        if (bComplete == false) {
                //            J003_SHWxWaiting();
                //            return false;
                //        }
                //        break;
                //    case oJ003_DialogResult.Cancel:
                //        J003_SHWxWaiting();
                //        return false;
                //        break;
                //}
                //*CH 29-12-2012 New
                tW_FlagFunc = '1';
                $ui('#odiSavWarning').dialog('open');
            } else {
                W_SETxFromNewDoc();
            }
            //document.getElementById('FTXqhDocNo').value = '';
            //W_FRMxReload(true);
            
//            var tdate = W_GETtDateTimeNow();
//            J004_FRMxNewDoc(tdate, 'C_FRMxNewDoc', 'cvcTACTPqHD');
        }
        function W_SETxFromNewDoc(){
            J003_SHWxWaiting();
            $('#FTXqhDocNo').val('');
            W_FRMxReload(true);
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
        function W_SHWxFromFindDoc(){
            try{
                //var tDate = J002_GETtTimeStamp();
                //var tCase = 'TACTPqHD';
                //var tDocNo = '';
                //J004_FRMxFindDoc(tCase, tDate, 'C_BRWoDoc', tW_Controller, 'FTXqhDocNo', '2');
                //var tOldDocNo = tW_DocNoBeFore;
                //tDocNo = $('#FTXqhDocNo').val();
                //if (tDocNo == null || tDocNo == '' || tDocNo == tOldDocNo) {
                //    $('#FTXqhDocNo').val(tOldDocNo);
                //    return false;
                //}
                //W_FRMxReload(true);
                $ui("#odiBrwDoc").dialog("open");
            }catch (ex) { J002_SHWxMsgError("W_SHWxFromFindDoc ", ex); }
            finally {  J003_DISxWaiting(); }         
        }
        function W_DATxBrowseDocNo() {
            try {
                //var tDate = J002_GETtTimeStamp();
                //var tCase = 'TACTPqHD';
                //var tDocNo = '';
                //var tStaChange = W_CHKbHasChangeData();
                //if (tStaChange == true) {
                //    var tDialogResult = J003_SHWxConfirmDialog('<%=ViewData("tMsgSave_Warning") %>', oJ003_DialogType.DialogYesNoCancel);
                //    switch (tDialogResult) {
                //        case oJ003_DialogResult.Yes:
                //            var bComplete = W_FRMxSaveDoc(true);
                //            if (bComplete == false) {
                //                return false;
                //            }
                //            break;
                //        case oJ003_DialogResult.Cancel: return false; break;
                //    }
                //}                
                //*CH 29-12-2012 Check Change Data
                var tStaChange = W_CHKbHasChangeData();
                if (tStaChange == true) {
                    tW_FlagFunc = '2';
                    $ui('#odiSavWarning').dialog('open');
                } else {
                    J003_SHWxWaiting();
                    W_SHWxFromFindDoc();
                }
                //J004_FRMxFindDoc(tCase, tDate, 'C_BRWoDoc', tW_Controller, 'FTXqhDocNo', '2');
                //var tOldDocNo = tW_DocNoBeFore;
                //tDocNo = document.getElementById('FTXqhDocNo').value;
                //if (tDocNo == null || tDocNo == '' || tDocNo == tOldDocNo) {
                //    document.getElementById('FTXqhDocNo').value = tOldDocNo;
                //    return false;
                //}
                //W_FRMxReload(true);
            }
            catch (ex) {
                J002_SHWxMsgError("W_DATxBrowseDocNo ", ex);

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
                tStr += document.getElementById('FTXqhDocNo').value;
                tStr += document.getElementById('FDXqhDocDate').value;
                tStr += document.getElementById('FTXqhRmk').value;
                if (document.getElementById('FNXqhStaDocAct').checked == true) {
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
        function W_FRMxDelDoc() {
            try {
                J003_SHWxWaiting();
                var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Delete%>';
                var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
                var tPwdAllow = '<%=Session("bVB_CNPwdAllow") %>';
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
                var bAllow = J002_CHKtCheckAuthorize(tW_Menu, tAuthor, tPwdAllow, tMsgNotAuthorize);
                if (bAllow == false) {
                    return false;
                }
                var tUrl = '<%=Url.Action("C_FRMxDelDoc",tW_Controller ) %>';
                $ui.ajax({
                    url: tUrl
                    , async: false
                    , type: "POST"
                    , cache: false
                    , success: function(ptReturn) {
                        var aArr = ptReturn.split("|");
                        if (aArr[0] != null && aArr[0] != "") {
                            if (aArr[0] == "-1") {//session time out
                                window.location = '<%=Url.Action("Index","cvcLogin") %>';
                                return false;
                            }
                            alert(aArr[0]);
                            return false;
                        }
                        document.getElementById("FTXqhDocNo").value = "";
                        W_FRMxReload(true);
                    }
                });
            }
            catch (ex) {
                J002_SHWxMsgError('W_FRMxDelDoc', ex);
            }
            finally {
                J003_DISxWaiting();
            }
        }
        function W_FRMxCancelDoc() {
            try{
                if (nW_StaDoc == 0) {
                    alert('<%=ViewData("olatMsgNoCancelNoSave")%>');
                    return 0;
                }
                if (nW_StaDoc == 3) {
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
                var tUrl = '<%=Url.Action("C_FRMxCancelDoc",tW_Controller ) %>';
                $ui.ajax({
                    url: tUrl
                    , async: false
                    , type: "POST"
                    , cache: false
                    , success: function(ptReturn) {
                        var aArr = ptReturn.split("|");
                        if (aArr[0] != null && aArr[0] != "") {
                            if (aArr[0] == "-1") {//session time out
                                window.location = '<%=Url.Action("Index","cvcLogin") %>';
                                return false;
                            }
                            alert(aArr[0]);
                            return false;
                        }
                        document.getElementById('FTXqhDocNo').value = "";
                        W_FRMxReload(true);
                    }
                });
            }
            catch (ex) {
                J003_SHWxMsgError('W_FRMxCancelDoc', ex);
            }
            finally {
                J003_DISxWaiting();
            }
        }
        function W_FRMxPostDoc() {
            if (nW_StaDoc == 0) {
                alert('<%=ViewData("olatMsgNoAppNoSave")%>');
                return 0;
            }
            if (nW_StaDoc == 3) {
                alert('<%=ViewData("olatMsgNoAppCancel")%>');
                return 0;
            }
            if (nW_StaPrcDoc == 1) {
                alert('<%=ViewData("olatMsgNoAppApp")%>');
                return 0;
            }
            if ('<%=Model.FNXzhStaDocAct %>' != '1') {
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
            var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Approve%>';
            var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
            var tPwdAllow = '<%=Session("bVB_CNPwdAllow") %>';
            var aAlwUsrCode = new Array();
            var bAllow = J002_CHKtCheckAuthorize(tW_Menu, tAuthor, tPwdAllow, tMsgNotAuthorize, aAlwUsrCode);
            var tApvCode = aAlwUsrCode[0];
            if (tApvCode == null || tApvCode == '') {
                tApvCode = '<%=Model.FTUsrCode %>';
            }

            var tUrl = '<%=Url.Action("C_FRMxPostDoc",tW_Controller ) %>';
            $ui.ajax({
                url: tUrl
                , async: false
                , type: "POST"
                , cache: false
                , success: function(ptReturn) {
                    var aArr = ptReturn.split("|");
                    if (aArr[0] != null && aArr[0] != "") {
                        if (aArr[0] == "-1") {//session time out
                            window.location = '<%=Url.Action("Index","cvcLogin") %>';
                            return false;
                        }
                        alert(aArr[0]);
                        return false;
                    }
                    W_FRMxPostDocSuccess();
                }
            });
        }
        function W_FRMxPostDocSuccess() {
            alert('<%=ViewData("tMsgCom") %>');
            W_FRMxReload(true);
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
                W_SETxDisableAll(false);
                W_SHWxDocStatus('NoneApprove', 'Approve', 'Cancel');
                //reset docNo
                document.getElementById("FTXqhDocNo").value = '<%=ViewData("DocNoFormat")%>';
                J002_SETxReadOnly("FTXqhDocNo", true);
                //reset User
                document.getElementById("FTUsrCode").value = '<%=ViewData("UsrCode")%>';
                document.getElementById("FTDptCode").value = '<%=ViewData("DptCode")%>';
                W_GETxUsrAndDptName();
                //reset Approve User
                document.getElementById("otbApvUsr").value = '';
                document.getElementById("FTXqhApvCode").value = '';
                //clear sta doc
                document.getElementById("FTXqhStaDoc").value = '';
                //reset date object
                var tDate = W_GETtDateNow();
                document.getElementById("FDXqhDocDate").value = tDate;
            }
            catch (ex) {
                J002_SHWxMsgError("W_FRMxCopyDoc", ex);
            }
            finally {
                J003_DISxWaiting();
            }
        }
        function W_FRMGetRptNameStateChage() {

            if (oW_xmlHttp.readyState == 4) {
                if (oW_xmlHttp.status == 200) {
                    var valueFis = oW_xmlHttp.responseText;
                    //	                alert(valueFis);
                    tW_RptDefName = valueFis.split("|")[0];
                    tW_RptUsrName = valueFis.split("|")[1];
                    tW_RptSel = valueFis.split("|")[2];
                }
            }
        }
        function W_FRMGetRptName(ptControllerName, ptActionName, ptTblName, ptWhere) {
            createXMLHttpRequest();
            oW_xmlHttp.open('GET', '/' + ptControllerName + '/' + ptActionName + '?ptTblName=' + ptTblName + '&ptWhere=' + ptWhere, false);
            oW_xmlHttp.onreadystatechange = W_FRMGetRptNameStateChage;
            oW_xmlHttp.send(null);
        }
        function W_FRMxShwPrintDialog() {
            var bAlwShw = false;
            if (nW_StaPrcDoc != 1) {
                bAlwShw = W_CHKbShwAlwReport();
            } else if (nW_StaPrcDoc == 1) {
                bAlwShw = true;
            }
            if (bAlwShw) {
                if (nW_StaDoc == 1) {
                    var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Print %>';
                    var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
                    var tPwdAllow = '<%=Session("bVB_CNPwdAllow") %>';
                    var bAllow = J002_CHKtCheckAuthorize(tW_Menu, tAuthor, tPwdAllow, tMsgNotAuthorize);
                    if (bAllow == false) {
                        return false;
                    }
                    var tDocNo = document.getElementById('FTXqhDocNo').value;
                    var tDocDate = document.getElementById('FDXqhDocDate').value;
                    var tLang = '<%=Session("tVB_LastLang") %>';
                    var tSplOrCst = '';
                    var tDocType = '0';
                    var tBchCode = tW_CompBchCode;
                    var tTableName = tW_Table;
                    var tFedCode = tW_FieldDocNo;
                    var tRptType = '0';
                    var tCstOrSplCode = '';
                    J004_FRMxShwPreviewForm(tDocNo, tDocDate, tLang, tSplOrCst, tDocType, tBchCode, tTableName, tFedCode, tRptType, tCstOrSplCode);
                }
            }
        }
        function W_CHKbShwAlwReport() {
            //----- ตรวจสอบสถานะเอกสาร และการอนุญาติแสดงรายงานเอกสารที่ไม่อนุมัติ ------// *Chuck Intara
            var tDate = J002_GETtTimeStamp();
            var tUrl = '<%=Url.Action("C_CHKbAlwReport","cvcCenter")%>';
            tUrl += '?ptRptName=omnPurPQ';
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
        function W_FRMxHelpDoc() {
        }
        //ptFlag 1 ไปรายการโปรด ; 2 ไปหน้าซื้อ //Chuck Intara
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
            //var tUrl = '<%=Url.Action("Index","cvcCNPanal", New With {.ptMenuGrpName = "Purchase"}) %>';
            //window.location = encodeURI(tUrl);
            var tDataTimeNow = J002_GETtTimeStamp();
            //*CH 1 ไปรายการโปรด ; 2 ไปหน้าซื้อ
            var tUrl;
            if (ptFlag == '1') {
                tUrl = '<%=Url.Action("Index","Home") %>' + '?ptDate=' + tDataTimeNow;
            } else {
                tUrl = '<%=Url.Action("Index","cvcCNPanal") %>?ptMenuGrpName=Purchase';
            }
            window.location = encodeURI(tUrl);
        }
        function W_CHKbPostOrDelStatus() {
            return (nW_StaDocCancel == 1 || nW_StaPrcDoc == 1)
        }
        function W_CLRxDocFlag() {
            nW_StaPrcDoc = 0;
            nW_StaDocCancel = 0;
            nW_StaDoc = 0;
        }
        function W_SHWxOpenMasterDialog(pnNoRender, pobjTextCode, pobjTextName, pBrowseFile, ptWidth, ptHeight, ptParameter, ptDate, pobjTextName2, pobjTextName3, pobjTextName4) {
            if (W_CHKbPostOrDelStatus() == true) {
                alert('<%=ViewData("olatMsgNoEdit")%>');
                return false
            }
            OpenMasterDialog(pnNoRender, pobjTextCode, pobjTextName, pBrowseFile, ptWidth, ptHeight, ptParameter, ptDate, pobjTextName2, pobjTextName3, pobjTextName4);
        }
        function W_SETxDisableDocNo(pbStatus) {
            //Disable DocNo and redio CshOrCrd   
            J002_SETxReadOnly('FTXqhDocNo', pbStatus);
            document.getElementById("ocmGetDocNo").disabled = pbStatus;
        }

        function W_SETxDisableAll(pbStatus) {
            //------Text
            J002_SETxReadOnly('FTXqhDocNo', pbStatus);
            J002_SETxReadOnly('otbPdtCode', pbStatus);
            J002_SETxReadOnly('otbQty', pbStatus);
            J002_SETxReadOnly('otbDisTxtRte', pbStatus);
            J002_SETxReadOnly('otbVatRate', pbStatus);
            //------Text

            //------Button
            document.getElementById("ocmGetDocNo").disabled = pbStatus;
            document.getElementById("ocmBrwPdt").disabled = pbStatus;
            tBrwLock = pbStatus?'<%=Url.Content(ViewData("oimgBrowseLock"))%>':'<%=Url.Content(ViewData("oimgBrowse"))%>';
            $("#ocmBrwPdt").attr('src', tBrwLock);
            //------Button
            
            J002_SETxDisable('ocbUnit',pbStatus);
        }
        function createXMLHttpRequest() {
            if (window.ActiveXObject) {
                oW_xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
            }
            else if (window.XMLHttpRequest) {
                oW_xmlHttp = new XMLHttpRequest();
            }
        }
        function W_GETxUsrAndDptName() {
            createXMLHttpRequest();
            var tDataTimeNow = W_GETtDateTimeNow();
            var tUsrCode = $("#FTUsrCode").val();
            var tUrl = '<%=Url.Action("C_GETxUsrAndDptName","cvcTACTPqHD") %>' + "?ptUsrCode=" + tUsrCode + "&ptDateTimeNow=" + tDataTimeNow;
            oW_xmlHttp.open("GET", encodeURI(tUrl), false);
            oW_xmlHttp.send(null);
            var valueFis = oW_xmlHttp.responseText;
            var mytool_array = valueFis.split("|");
            document.getElementById("otbUsrName").value = mytool_array[0];
            document.getElementById("otbDptName").value = mytool_array[1];
        }
        function W_SHWxUnitCombo() {
            createXMLHttpRequest();
            var tDataTimeNow = W_GETtDateTimeNow();
            var tModelPdt = $("#otbPdtCode").val();
            var tUrl = '<%=Url.Action("C_GEToUnitDetail","cvcTACTPqHD") %>' + "?ptPdtCode=" + tModelPdt + "&ptDateTimeNow=" + tDataTimeNow;
            oW_xmlHttp.open("GET", encodeURI(tUrl), false);
            oW_xmlHttp.onreadystatechange = handleStateChangeUnit;
            oW_xmlHttp.send(null);
        }
        function handleStateChangeUnit() {
            if (oW_xmlHttp.readyState == 4) {
                if (oW_xmlHttp.status == 200) {
                    var valueFis = oW_xmlHttp.responseText;
                    var mytool_array = valueFis.split("|");
                    var tStr = new String;
                    var oStr_Array;
                    var i;
                    W_CLRxPdtCombo();
                    var selectedIndex = 0;
                    var ptUnitCode = document.getElementById("ocbUnit").value;
                    var ptUnitFactor = document.getElementById("otbUnitFactor").value;
                    for (i = 0; i < 3; i++) {
                        tStr = mytool_array[i];
                        if (tStr != null && tStr != '') {
                            oStr_Array = tStr.split(",");
                            var oNewOption = document.createElement('option');
                            oNewOption.value = oStr_Array[0];
                            oNewOption.text = oStr_Array[1] + '|' + oStr_Array[2];
                            document.getElementById("ocbUnit").add(oNewOption);
                            //ตรวจสอบว่าถ้าเป็นหน่วยที่ทำการเลือก ให้เก็บค่า Index ไว้ทำการแสดงใน combo
                            if (ptUnitCode == oStr_Array[0] && ptUnitFactor == oStr_Array[2]) {
                                selectedIndex = document.getElementById("ocbUnit").options.length - 1;
                            }
                        }
                    }
                    var tStr = document.getElementById("ocbUnit").options.item(selectedIndex).text;
                    var oStr_Array = tStr.split("|");
                    document.getElementById("ocbUnit").selectedIndex = selectedIndex;
                    document.getElementById("ocbUnit").value = document.getElementById("ocbUnit").value;
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
            J002_SETxReadOnly("FTXqhDocNo", false);
            createXMLHttpRequest();
            var tDataTimeNow = W_GETtDateTimeNow();
            var tBchCode = document.getElementById("FTBchCode").value;
            var tDocNo = document.getElementById("FTXqhDocNo").value;
            var tDocType = document.getElementById("FTXqhDocType").value;
            var tUrl = '<%=Url.Action("C_GENtDocNo","cvcTACTPqHD") %>' + "?ptBchCode=" + tBchCode + '&ptDocNo=' + tDocNo + '&ptDocType=' + tDocType;
            oW_xmlHttp.open("GET", encodeURI(tUrl), false);
            oW_xmlHttp.send(null);
            document.getElementById("FTXqhDocNo").value = oW_xmlHttp.responseText;
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
            createXMLHttpRequest();
            var tDataTimeNow = W_GETtDateTimeNow();
            var tModelPdt = document.getElementById("otbPdtCode").value;
            var tUrl = '<%=Url.Action("C_GETtPdtCount","cvcTACTPqHD") %>' + "?ptDateTimeNow=" + tDataTimeNow;
            oW_xmlHttp.open("GET", encodeURI(tUrl), false);
            oW_xmlHttp.send(null);
            return oW_xmlHttp.responseText; //return จำนวนรายการสินค้า ใน Grid
        }
        function W_GETxPdtDetail() {
            createXMLHttpRequest();
            var tDataTimeNow = W_GETtDateTimeNow();
            var tModelPdt = J002_STRttrim(document.getElementById("otbPdtCode").value);
            var tUrl = '<%=Url.Action("C_GEToPdtDetail", "cvcTACTPqHD") %>' + "?ptPdtCode=" + tModelPdt + "&ptDateTimeNow=" + tDataTimeNow;
            oW_xmlHttp.open("GET", encodeURI(tUrl), false);
            oW_xmlHttp.onreadystatechange = handleStateChange;
            oW_xmlHttp.send(null);
            return oW_xmlHttp.responseText != "||||";
        }
        function handleStateChange() {
            if (oW_xmlHttp.readyState == 4) {
                if (oW_xmlHttp.status == 200) {
                    var valueFis = oW_xmlHttp.responseText;
                    var mytool_array = valueFis.split("|");
                    document.getElementById("otbPdtCode").value = mytool_array[0];
                    document.getElementById("otbPdtName").value = mytool_array[1];
                    var tStr = new String;
                    var oStr_Array;
                    var i;
                    var oElement = document.getElementById("ocbUnit");
                    while (oElement.length > 0) {
                        oElement.remove(0);
                    }
                    var nComboIndex = -1;
                    for (i = 3; i < 6; i++) {
                        tStr = mytool_array[i];
                        if (tStr != null && tStr != '') {
                            oStr_Array = tStr.split(",");
                            var oNewOption = document.createElement('option');
                            oNewOption.value = oStr_Array[0]; //FTPunCode
                            oNewOption.text = oStr_Array[1] + '|' + oStr_Array[2];  //text display
                            document.getElementById("ocbUnit").add(oNewOption);
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
                        document.getElementById("ocbUnit").value = document.getElementById("ocbUnit").value;
                        document.getElementById("otbUnitName").value = oStr_Array[0];
                        document.getElementById("otbUnitFactor").value = oStr_Array[1];
                    }
                }
            }
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
        function onRowSelected(e) {
            if (e.row != null) {
                if (e.row.cells.length < 2) { return 0; }
                var tSeq = e.row.cells[0].innerHTML;
                var tPdtCode = e.row.cells[1].innerHTML;
                var tPdtName = e.row.cells[2].innerHTML;
                var tUnitName = e.row.cells[3].innerHTML;
                var tQty = e.row.cells[4].innerHTML;
                var tUnitCode = e.row.cells[5].innerHTML;
                var tUnitFactor = e.row.cells[6].innerHTML;
                document.getElementById('otbSeq').value = tSeq - 1;
                document.getElementById('otbPdtCode').value = tPdtCode;
                tW_PdtCode = tPdtCode; //*PP 10-05-12 เก็บค่ารหัสสินค้าตอนที่ Select Row
                document.getElementById('otbPdtName').value = tPdtName;
                document.getElementById('ocbUnit').value = tUnitCode;
                document.getElementById('otbQty').value = tQty;
                document.getElementById('otbUnitName').value = tUnitName;
                document.getElementById('otbUnitFactor').value = tUnitFactor;
                document.getElementById('otbPdtCode').focus();
                W_SHWxUnitCombo();
            }
        }
        function W_GETtDateTimeNow() {
            var dNow = new Date;
            var tDateTimeNow = dNow.getFullYear().toString() + dNow.getMonth().toString() + dNow.getDay().toString() + dNow.getHours().toString() + dNow.getMinutes().toString() + dNow.getSeconds().toString() + dNow.getMilliseconds().toString();
            return tDateTimeNow;
        }
        function W_ADDxAddPdtToGrid() {
            var tPdtCode = document.getElementById("otbPdtCode").value;
            var tQty = document.getElementById("otbQty").value;
            var tUnitCode = document.getElementById("ocbUnit").value;
            var tUnitName = document.getElementById("otbUnitName").value;
            var tFactor = document.getElementById("otbUnitFactor").value;
            //ning 03/06/2010
            var tNet = document.getElementById("otbNet").value;
            tPdtCode = J002_STRttrim(tPdtCode);
            if (tPdtCode != null && tPdtCode != "") {
                var tDateTimeNow = W_GETtDateTimeNow();
                var tParamSeq = '';
                var tUrl = '';
                var tSeq = document.getElementById("otbSeq").value;
                var bAutoTab = document.getElementById("ockSendTab").checked;
                var tPdtcode = document.getElementById('otbPdtCode').value;
                if (J002_STRttrim(tPdtcode) == tW_PdtCodeBeFore && tSeq != '') {// && bAutoTab == true) {//edit
                    tUrl = '<%=Url.Action("C_DATxEditItem","cvcTACTPqHD") %>';
                    tParamSeq = '&ptSeq=' + tSeq;
                }
                else {
                    tUrl = '<%=Url.Action("C_DATxAddItem","cvcTACTPqHD") %>';
                }
                tUrl += '?ptPdtcode=' + tPdtCode;
                tUrl += tParamSeq;
                tUrl += '&ptQty=' + tQty;
                tUrl += '&ptUnitCode=' + tUnitCode;
                tUrl += '&ptUnitName=' + tUnitName;
                tUrl += '&ptFactor=' + tFactor;
                tUrl += '&ptDateTimeNow=' + tDateTimeNow;
                createXMLHttpRequest();
                oW_xmlHttp.open("GET", encodeURI(tUrl), false);
                oW_xmlHttp.onreadystatechange = handleStateChangeSetTotal;
                oW_xmlHttp.send(null);
                W_SETxRebindGrid();
            }
            W_CLRxTextBox();
            //ning 03/06/2010
        }
        function handleStateChangeSetTotal() {
            if (oW_xmlHttp.readyState == 4) {
                if (oW_xmlHttp.status == 200) {
                    if (oW_xmlHttp.responseText != -1) {
                        //ning 03/06/2010
                        var oArr = oW_xmlHttp.responseText.split('|');
                        //                    alert(oArr);
                        var cTotal = oArr[0];
                        var cNonVat = oArr[1];
                        document.getElementById("FCXqhTotal").value = cTotal;
                        document.getElementById("otbSumQty").value = J002_DECcRound(oArr[2],nW_DecLength,true);
                    }
                }
            }
        }
        function W_DELxPdtItem() {
            var oEletent = document.getElementById('otbSeq');
            var tDateTimeNow = W_GETtDateTimeNow();
            var tUrl = '<%=Url.Action("_DeleteAjaxEditing","cvcTACTPqHD") %>' + '?ptSeq=' + oEletent.value;
            tUrl += '&ptDateTimeNow=' + tDateTimeNow;
            createXMLHttpRequest();
            oW_xmlHttp.open("GET", encodeURI(tUrl), false);
            oW_xmlHttp.onreadystatechange = handleStateChangeSetTotal;
            oW_xmlHttp.send(null);
            W_SETxRebindGrid();
            W_CLRxTextBox();
            document.getElementById("otbPdtCode").focus();
        }
        function ocmBrwPdt_onclick(ptObjName) {
            try {
                //เอกสารที่ยกเลิก หรือ อุนมัติไม่สามารถค้นหาสินค้าได้อีก //*CH 27-12-2012
                if (('<%=Model.FTXzhStaDoc%>' == '3') || ('<%=Model.FTXzhStaPrcDoc%>' == '1')) {
                    return false;
                }
                //J003_SHWxWaiting();
                //var tDate = J002_GETtTimeStamp();
                //var tReturnedValue = showModalDialog('<%=Url.Action("C_CNBrwPdt",tW_Controller ) %>' + '?ptDate=' + tDate + '&ptDocPosition=3', "Passed String", "dialogWidth:850px; dialogHeight:550px; status:no; center:yes;titlebar =0;scroll=no");
                //if (tReturnedValue == null || tReturnedValue == '12233344445555566666677777778888888899999999900000000001223334444555556666667777777888888889999999990000000000') {
                //    return false;
                //}

                //document.getElementById('otbPdtCode').value = tReturnedValue;
                //if (document.getElementById('otbPdtCode').value != tW_PdtCodeBeFore) {
                //    document.getElementById('otbSeq').value = '';
                //}
                //else {
                //    return false;
                //}
                //if (W_GETxPdtDetail() == false) {
                //    W_CLRxTextBox();
                //    alert('<%=ViewData("olatMsgNonDataPdt") %>');
                //    document.getElementById('otbPdtCode').focus();
                //    return false;
                //}
                //document.getElementById('otbPdtCode').focus();
                J003_SHWxWaiting();
                setTimeout(function() {
                    J003_DISxWaiting();
                    $ui("#odiBrwPdt").dialog("open");
                }, 2000);
            }
            catch (ex) {
                J002_SHWxMsgError("ocmBrwPdt_onclick ", ex);

            }
            finally {
                //J003_DISxWaiting();
            }
        }

        function W_CHKtHasDocNo(ptDocNo) {
            var tDateTimeNow = W_GETtDateTimeNow();
            var tDocNo = document.getElementById("FTXqhDocNo").value;
            var tUrl = '<%=Url.Action("C_CHKtHasDocNo","cvcTACTPqHD") %>' + '?ptDocNo=' + tDocNo + '&ptDateTimeNow=' + tDateTimeNow;
            createXMLHttpRequest();
            oW_xmlHttp.open("GET", encodeURI(tUrl), false);
            oW_xmlHttp.send(null);
            if (oW_xmlHttp.responseText == "0") {
                return false;
            }
            else {
                return true;
            }
        }

        function FTXqhDocNo_onfocus() {
            tW_DocNoBeFore = document.getElementById("FTXqhDocNo").value;
        }

        function FTXqhDocNo_onblur() {
            J003_SHWxWaiting();
            try{
                var tDocNo = document.getElementById("FTXqhDocNo").value;
                if (tDocNo == null || tDocNo == tW_DocNoBeFore) {
                    //            alert("FTXqhDocNo_onblur");
                    return false;
                }
                if (W_CHKtHasDocNo() == true) {
                    //            alert("FTXqhDocNo_onblur+W_CHKtHasDocNo");
                    var tUrl = '<%=Url.Action("Index","cvcTACTPqHD") %>' + '?ptDocNo=' + tDocNo;
                    window.location = tUrl;
                }
            }catch (ex) {
                J002_SHWxMsgError("FTXqhDocNo_onblur ", ex);
            }
        }
        function FTXqhDocNo_onkeydown() {
            if (window.event.keyCode == 13) {
                //FTXqhDocNo_onblur(); //*CH 03-01-2013 Old ทำงานช้า เกิดจาก ทำให้เกิดเข้าไป Controller 2 ครั้ง
                $('#otbDptName').focus();
                return !(window.event && window.event.keyCode == 13);
            }
        }
        function otbPdtCode_onkeydown() {
            //ning 03/06/2010
            //        if (W_CHKbHasStrValue("FTSplCode")==false){
            //            return false;
            //        }
            if (window.event.keyCode == 118) {//key F7 to delete
                W_DELxPdtItem();
                return false;
            }
            if (window.event.keyCode == 13 || window.event.keyCode == 9) {
                if (document.getElementById("ockSendTab").checked == true) {
                    W_SHWxPdtDetail();
                    //document.getElementById("otbQty").select();
                    $ui('#otbQty').focus();
                }
                else {
                    otbPdtCode_onblur();
                    W_ADDxAddPdtToGrid();
                    W_CLRxTextBox();
                    document.getElementById("otbPdtCode").value = "";
                    document.getElementById("otbPdtCode").focus();
                }
                return !(window.event && (window.event.keyCode == 13 || window.event.keyCode == 9));
            }
        }
        function otbPdtCode_onblur() {
            if (W_SHWxPdtDetail() == true) {
                var oEletent = document.getElementById("otbQty");
                oEletent.value = J002_DECcRound(1, nW_DecLength);
            }
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
            if (W_GETxPdtDetail() == false) {
                W_CLRxTextBox();
                alert('<%=ViewData("olatMsgNonDataPdt") %>');
                document.getElementById("otbPdtCode").focus();
                return false;
            }
            return true
        }
        function otbPdtCode_onfocus() {
            tW_PdtCodeBeFore = document.getElementById("otbPdtCode").value;
        }
        function otbQty_onblur() {
            if (document.getElementById('otbQty').value <= 0) {
                document.getElementById('otbQty').value = J002_DECcRound(1,nW_DecLength,true);
            }
        }
        function otbQty_onkeydown() {
            //ning 03/06/2010
            if (W_CHKbHasStrValue("otbPdtCode") == false) {
                return false;
            }
            if (window.event.keyCode == 13) {
                otbQty_onblur()
                W_ADDxAddPdtToGrid();
                document.getElementById("otbPdtCode").focus();
                //ning 03/06/2010
                document.getElementById("otbQty").select();
                return !(window.event && window.event.keyCode == 13);
            }
        }
        function W_CLRxTextBox() {
            var oElement = document.getElementById("otbPdtCode");
            tW_PdtCodeBeFore = null;
            oElement.value = "";
            oElement = document.getElementById("otbPdtName");
            oElement.value = "";
            oElement = document.getElementById("ocbUnit");
            oElement.value = "";
            oElement = document.getElementById("ocbUnit");
            oElement.value = "";
            oElement = document.getElementById("otbQty");
            oElement.value = "";
            oElement = document.getElementById("otbNet");
            oElement.value = "";
            document.getElementById('otbSeq').value = '';
            tW_DocNoBeFore = null;
            W_CLRxPdtCombo();
        }
        function ocmAdd_onkeydown() {
            if (window.event.keyCode == 13) {
                W_ADDxAddPdtToGrid();
                document.getElementById("otbPdtCode").focus();
                return !(window.event && window.event.keyCode == 13);
            }
        }
        function ocmAdd_onClick() {
            W_ADDxAddPdtToGrid();
            document.getElementById("otbPdtCode").focus();
        }
        function ocbUnit_onchange() {
            var nIndex = document.getElementById("ocbUnit").selectedIndex;
            var tStr = document.getElementById("ocbUnit").options.item(nIndex).text;
            var oStr_Array = tStr.split("|");
            document.getElementById("ocbUnit").value = document.getElementById("ocbUnit").value;
            document.getElementById("otbUnitName").value = oStr_Array[0];
            document.getElementById("otbUnitFactor").value = oStr_Array[1];
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
        function W_GETtLang(ptLang) {
            if (ptLang == '' || ptLang == 'TH') {
                return '1';
            }
            else {
                return '0';
            }
        }
        function C_GETtData2PrintDialog() {
            var tDoc = document.getElementById('FTXqhDocNo').value;
            var tDocDate = document.getElementById('FDXqhDocDate').value;
            var tLang = W_GETtLang('<%=ViewData("Language")%>');
            var tRptname = 'FRM_SQL_SFMBillPi.mrt';
            var tSplCode = document.getElementById('FTSplCode').value;
            var tValue = '<%=Url.Action("Index","cvcPrintDialog") %>' + '?DocNo=' + tDoc + '&RptName=' + tRptname + '&SplCode=' + tSplCode + '&DocDate=' + tDocDate + '&Lang=' + tLang;
            showModalDialog(tValue, "Passed String", "dialogWidth:" + "795px; dialogHeight:" + "405px; status:no; center:yes;titlebar =0");
        }
        function ocbUnit_onkeydown() {
            if (window.event.keyCode == 13) {
                document.getElementById("otbQty").focus();
                return !(window.event && window.event.keyCode == 13);
            }
        }

        function W_DATxSaveDocument(pbNoReload) {
            if (W_CHKbPostOrDelStatus() == true) {
                alert('<%=ViewData("olatMsgNoEdit")%>');
                return false
            }
            if (W_CHKbHasStrValue("FTXqhDocNo") == false) {
                alert('<%=ViewData("olatMsgErrorData") %>');
                return false;
            }
            if (W_GETtPdtCount() < 1) {
                alert('<%=ViewData("olatMsgDoc_Empty") %>');
                return false;
            }
            var oModel = W_GEToModel();
            var tUrl = '<%= Url.Action("C_DATxSaveDocument", "cvcTACTPqHD") %>';
            $ui.ajax({ url: tUrl
                , type: "POST"
                , async: false
                , cache: false
                , data: oModel
                , success: function(ptReturn) {
                    var aArr = ptReturn.split("|");
                    if (aArr[0] != null && aArr[0] != "") {
                        if (aArr[0] == "-1") {//session time out
                            window.location = '<%=Url.Action("Index","cvcLogin") %>';
                            return false;
                        }
                        alert(aArr[0]);
                        return false;
                    }
                    document.getElementById("FTXqhDocNo").value = aArr[1];
                    if (pbNoReload != true) {
                        W_FRMxReload(true);
                    }
                }
            });
        }
        function W_GEToModel() {
            var tStaDocAct = '0';
            if (document.getElementById("FNXqhStaDocAct").checked == true) {
                tStaDocAct = '1';
            }
            var oModel = {
                FTBchCode: document.getElementById("FTBchCode").value,
                FTXzhDocNo: document.getElementById("FTXqhDocNo").value,
                FDXzhDocDate: J002_CONtDateTime(document.getElementById("FDXqhDocDate").value),
                FTXzhDocType: '11',
                FTUsrCode: document.getElementById("FTUsrCode").value,
                FTDptCode: document.getElementById("FTDptCode").value,
                FTXzhRmk: document.getElementById("FTXqhRmk").value,
                FTXzhStaType: document.getElementById("FTXqhStaType").value,
                FTXzhStaDoc: document.getElementById("FTXqhStaDoc").value,
                FNXzhStaDocAct: tStaDocAct
            };
            return oModel;
        }
        function W_SETxHeaderData(data) {
            document.getElementById("FTXqhDocNo").value = data.FTXzhDocNo;
            document.getElementById("FTXqhDocType").value = data.FTXzhDocType;
            nW_StaDoc = 1;
            W_SHWxDocStatus('NoneApprove', 'Approve', 'Cancel');
            W_SETxDisableDocNo(true);
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
            createXMLHttpRequest();
            var tDataTimeNow = W_GETtDateTimeNow();
            var tUrl = '<%=Url.Action("C_CLRxDataDT","cvcTACTPqHD") %>' + "?ptDateTimeNow=" + tDataTimeNow;
            oW_xmlHttp.open("GET", encodeURI(tUrl), false);
            oW_xmlHttp.send(null);
            document.getElementById("FCXqhTotal").value = 0;
            W_SETxRebindGrid();
            W_CLRxTextBox();
        }
        function W_GetApp() {
            createXMLHttpRequest();
            var tDataTimeNow = W_GETtDateTimeNow();
            var tSpl = $("#FTXqhApvCode").val();
            var tUrl = '<%=Url.Action("C_GETxApp","cvcTACTPqHD") %>' + "?ptAppCode=" + tSpl + "&ptDateTimeNow=" + tDataTimeNow;
            oW_xmlHttp.open("GET", encodeURI(tUrl), false);
            oW_xmlHttp.send(null);
            var valueFis = oW_xmlHttp.responseText;
            var mytool_array = valueFis.split("|");
            document.getElementById("otbApvUsr").value = mytool_array[0];

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
        function TextAll_onkeypress() {
            J002_CHKbCheckTxtKey();
        }
        function W_FRMtGenCode() {
            try {
                if (nW_StaDoc == 1) {
                    return false;
                }
                var oXmlHttp = J002_GEToXMLHttpRequest();
                var tDataTimeNow = J002_GETtTimeStamp();
                var tUrl = '<%=Url.Action("C_Create_GetAutoCode",tW_Controller  ) %>' + '?ptDateTimeNow=' + tDataTimeNow;
                oXmlHttp.open("GET", encodeURI(tUrl), false);
                oXmlHttp.send(null);
                var valueFis = oXmlHttp.responseText;
                if (valueFis == null) {
                    return 0;
                }
                var mytool_array = valueFis.split("|");

                if (mytool_array[0] != null && mytool_array[0] != "") {
                    alert(mytool_array[0]);
                    return false;
                }
                else {
                    document.getElementById('FTXqhDocNo').value = mytool_array[1];
                    tW_DocNoBeFore = mytool_array[1];
                    J002_SETxReadOnly("FTXqhDocNo", false);
                }
            }
            catch (ex) {
                J002_SHWxMsgError("W_GENxDocNo", ex);
            }
        }

        //JQuery UI
        function otbFilterValue_onkeydown(ptKeyCode, ptWitch) {
            var tKey = ptKeyCode;
            if (ptWitch != null && ptWitch != '') {
                tKey = ptWitch;
            }
            if (tKey == 13) {
                W_DATxRefresh(1);
            }
            return !(tKey == 13)
        }
        function W_SHWxFilter(ptUnit, ptFactor) {
            var oShow = document.getElementById('olaShowUnit');
            oShow.innerHTML = '<%=ViewData("olaFTPdtUnit") %>' + ' : ' + ptUnit + '/' + ptFactor;
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
        function W_DATxRefresh(pnFilterType) {
            //var oController = window.document.getElementById(ptControllerId);
            nStatus = 0;
            var tParamVOld = document.getElementById('otbFilterValueOld').value;
            var tParamVShwOld = document.getElementById('otbFilterValueShwOld').value;
            var oFilField = window.document.getElementById('otbFilterField');
            var oFilValue = window.document.getElementById('otbFilterValue');
            var oSelect = document.getElementById('FTPdtBarCode');
            var nBarLevel = oSelect.selectedIndex;

            tParamF = oFilField.value;
            if (oFilValue.value != '') {
                tParamV = oFilValue.value;
            }
            else {
                tParamV = '';
            }
            if (tParamV != '') {
                switch (pnFilterType) {
                    case 1: //หาบางส่วน
                        tParamV = '%' + tParamV + '%';
                        break;
                    case 2: //กรองข้อมูล
                        tParamV = tParamV + '%';
                        break;
                    default:
                        tParamV = '%' + tParamV + '%';
                        break;
                }
                document.getElementById('otbFilterValueOld').value = tParamV;
                document.getElementById('otbFilterValueShwOld').value = oFilValue.value;
            }
            if (pnFilterType == 3) {//กรองล่าสุด
                tParamV = tParamVOld;
                document.getElementById('otbFilterValue').value = tParamVShwOld;
            }
            var tDate = W_GETtTimestamp();
            var ogdHD = $('#GridPdt').data('tGrid');
            ogdHD.rebind({
                ptDate: tDate, ptFilterF: encodeURI(tParamF), ptFilterV: encodeURI(tParamV), ptBarLevel: nBarLevel
                //,ptFilterVTxt: oFilValue.value //'*CH 30-11-11 Old
            , ptFilterVTxt: escape(oFilValue.value) //'*CH 31-11-11 New Encode
            });
        }
        function GetPassedValue(ptVal) {
            tW_PassedValue = ptVal;
        }
        
        var tW_StaLoad = "N";
        function gridDocHD_onLoad() {
            if (tW_StaLoad == "N"){
                var oFieldName = document.getElementById('otbFilterFieldDoc');
                var columnName = $('#GridDocHD th').eq(0).text();
                document.getElementById('olaFilterBy').innerHTML = columnName;                    
                switch(columnName){
                    <%For nI = 0 To 9 %>
                        case '<%=tCaptionDocHD(nI)%>':oFieldName.value = '<%=tFieldDocHD(nI)%>';break;
                    <%Next %>
                }
                tW_StaLoad = "Y";
            }
            $('tr', this).live('dblclick', function(e) {
                var $tr = $(this);
                //nStatus = 1;
                //window.close();
                //W_GETxSelectedDoc();
                alert( $tr.cellIndex);
              });
            $('#GridDocHD tr:has(td) td', this.element).bind('click', function(e) {
                var td = this;
                var oFieldName = document.getElementById('otbFilterFieldDoc');
                columnName = $('#GridDocHD th').eq(td.cellIndex).text();
                document.getElementById('olaFilterBy').innerHTML = columnName;                    
                switch(columnName){
                    <%For nI = 0 To 9 %>
                        case '<%=tCaptionDocHD(nI)%>':oFieldName.value = '<%=tFieldDocHD(nI)%>';break;
                    <%Next %>
                }
            });
        }        
        function onRowSelectedDocHD(e) {
            nOnclick=1;
            var ordersGrid = $('#GridDocDT').data('tGrid');
            var tKeyString = '';
            var nCount=0;
            tKeyString =  e.row.cells[0].innerHTML+ ',';
            tKeyString +=  e.row.cells[1].innerHTML;
            var tDocID = e.row.cells[1].innerHTML; //*CH 29-12-2012 New เก็บรหัสเอกสารจากแถวที่เลือก
            GetPassedValue(tDocID);
            var tDate = W_GETtTimestamp();
            ordersGrid.rebind({
                ptDate:tDate,ptKeyString: encodeURI(tKeyString)
            });
        }
//        function Yo(){}
        function otbFilterValueDoc_onkeypress(ptKeyCode,ptWhich) {
            return J002_CHKbCheckTxtKey(ptKeyCode,ptWhich);
        }       
        function otbFilterValueDoc_onkeydown(ptKeyCode, ptWitch) {
            var tKey = ptKeyCode;
            if (ptWitch != null && ptWitch != '') {
                tKey = ptWitch;
            }
            if (tKey == 13) {
                W_DATxRefreshDoc();
            }
            return !(tKey == 13)
        }
        function W_DATxRefreshDoc() {
            if ($('#olaFilterBy').html() == '') {
                alert('<%=ViewData("tMsgSelect") %>');
                return false;
            }
            nStatus = 0;
            var oApprField = window.document.getElementById('otbApprField'); var oApprValue = window.document.getElementById('ocbApprValue');
            var oRefField = window.document.getElementById('otbRefField'); var oRefValue = window.document.getElementById('ocbRefValue');
            var oActField = window.document.getElementById('otbActField'); var oActValue = window.document.getElementById('ocbActValue');
            var oCalField = window.document.getElementById('otbCalField'); var oCalValue = window.document.getElementById('ocbCalValue');
            //var oDeptField = window.document.getElementById('otbDeptField'); var oDeptValue = window.document.getElementById('otbDeptValue');
            var oDeptValue = document.getElementById('ocbDeptValue');
            var oFilField = window.document.getElementById('otbFilterFieldDoc'); var oFilValue = window.document.getElementById('otbFilterValueDoc');

            var tParamF = oApprField.value + ',' + oRefField.value + ',' + oActField.value + ',' + oCalField.value;
            var tParamV = oApprValue.value + ',' + oRefValue.value + ',' + oActValue.value + ',' + oCalValue.value;
            if (oDeptValue.value != '') {
                tParamF = tParamF + ',' + '<%=ViewData("oDeptValue")%>';//oDeptField.value;
                tParamV = tParamV + ',' + oDeptValue.value;
            }

            if (oFilValue.value != '') {
                tParamF = tParamF + ',' + oFilField.value;
                //tParamV = tParamV + ',' + "'" + oFilValue.value + "'"; //*CH 15-08-2012
                tParamV = tParamV + ',' + oFilValue.value; //*CH 15-08-2012
            }

            //**CH 15-08-2012 *RQ1208-17
            var tTypeField;
            if (oFilField.value.split(".").length == 2) {
                tTypeField = oFilField.value.split(".")[1];
            } else {
                tTypeField = oFilField.value;
            }
            tTypeField = tTypeField.charAt(1)
            if (tTypeField == "D") {
                var tValue = oFilValue.value;
                var nDay = 0;
                var nMonth = 0;
                var nYear = 0;
                if (tValue.split("/").length == 3) {
                    var aValue = tValue.split("/");
                    if (aValue[0].length != 2 | aValue[1].length != 2 | aValue[2].length != 4) {
                        alert('<%=ViewData("ovd_tMsgNotFmtDate")%>');
                        return false;
                    }
                    //*Check Number
                    if (isNaN(parseFloat(aValue[0]))) {
                        alert('<%=ViewData("ovd_tMsgDay")%>' + ' ' + '<%=ViewData("ovd_tMsgOnlyNum")%>');
                        return false;
                    } else { nDay = parseFloat(aValue[0]); }
                    if (isNaN(parseFloat(aValue[1]))) {
                        alert('<%=ViewData("ovd_tMsgMonth")%>' + ' ' + '<%=ViewData("ovd_tMsgOnlyNum")%>');
                        return false;
                    } else { nMonth = parseFloat(aValue[1]); }
                    if (isNaN(parseFloat(aValue[2]))) {
                        alert('<%=ViewData("ovd_tMsgYear")%>' + ' ' + '<%=ViewData("ovd_tMsgOnlyNum")%>');
                        return false;
                    } else { nYear = parseFloat(aValue[2]); }
                    
                    //*Check Day = 00 ; Month = 00,>12,<1 ; Year = 0000,<1800
                    if (aValue[0] == '00') {
                        alert('<%=ViewData("ovd_tMsgDay")%>' + ' ' + '<%=ViewData("ovd_tMsgNotEqual")%>' + ' 00.');
                        return false;
                    }  
                    if (aValue[1] == '00' | aValue[1] > '12') {
                        alert('<%=ViewData("ovd_tMsgMonth")%>' + ' ' + '<%=ViewData("ovd_tMsgNotEqual")%>' + ' 00\n' +
                        '<%=ViewData("ovd_tMsgAnd")%>' + ' ' + '<%=ViewData("ovd_tMsgNotexceed")%>' + ' 12.');
                        return false;
                    }
                    if (nMonth < 1) {
                        alert('<%=ViewData("ovd_tMsgMonth")%>' + ' ' + '<%=ViewData("ovd_tMsgNotLess")%>' + ' 1.');
                        return false;
                    }
                    if (aValue[2] == '0000' | aValue[2] < '1800') {
                        alert('<%=ViewData("ovd_tMsgYear")%>' + ' ' + '<%=ViewData("ovd_tMsgNotEqual")%>' + ' 0000\n' +
                        '<%=ViewData("ovd_tMsgAnd")%>' + ' ' + '<%=ViewData("ovd_tMsgNotLess")%>' + ' 1800.');
                        return false;
                    }

                    //*Check จำนวนวันในเดือนที่กรอก
                    if (aValue[1] == '01' | aValue[1] == '03' | aValue[1] == '05' | aValue[1] == '07' | aValue[1] == '08' | aValue[1] == '10' | aValue[1] == '12') {
                        if (aValue[0] > '31' | nDay < 1) {
                            alert('<%=ViewData("ovd_tMsgDay")%>' + ' ' + '<%=ViewData("ovd_tMsgNotexceed")%>' + ' 31\n' +
                            '<%=ViewData("ovd_tMsgAnd")%>' + ' ' + '<%=ViewData("ovd_tMsgMoreThen")%>' + ' 1.');
                            return false;
                        }
                    } else if (aValue[1] == '04' | aValue[1] == '06' | aValue[1] == '09' | aValue[1] == '11') {
                        if (aValue[0] > '30' | nDay < 1) {
                            alert('<%=ViewData("ovd_tMsgDay")%>' + ' ' + '<%=ViewData("ovd_tMsgNotexceed")%>' + ' 30\n' +
                            '<%=ViewData("ovd_tMsgAnd")%>' + ' ' + '<%=ViewData("ovd_tMsgMoreThen")%>' + ' 1.');
                            //รอ
                            return false;
                        }
                    } else {// Month 2
                        var nModYear = aValue[2] % 4;
                        if (nModYear == 0) {
                            if (aValue[0] > '29' | nDay < 1) {
                                alert('<%=ViewData("ovd_tMsgDay")%>' + ' ' + '<%=ViewData("ovd_tMsgNotexceed")%>' + ' 29\n' +
                                '<%=ViewData("ovd_tMsgAnd")%>' + ' ' + '<%=ViewData("ovd_tMsgMoreThen")%>' + ' 1.');
                                return false;
                            }
                        } else {
                            if (aValue[0] > '28' | nDay < 1) {
                                alert('<%=ViewData("ovd_tMsgDay")%>' + ' ' + '<%=ViewData("ovd_tMsgNotexceed")%>' + ' 28\n' +
                                '<%=ViewData("ovd_tMsgAnd")%>' + ' ' + '<%=ViewData("ovd_tMsgMoreThen")%>' + ' 1.');
                            return false;
                            }
                        }
                    }
                } else {
                    alert('<%=ViewData("ovd_tMsgNotFmtDate")%>');
                    return false;
                }
            }

            var tDate = W_GETtTimestamp();
            var ogdHD = $('#GridDocHD').data('tGrid');
            ogdHD.rebind({
                //ptDate: tDate, ptFilterF: tParamF, ptFilterV: encodeURI(tParamV)//*CH 16-08-2012 Old
                ptDate: tDate, ptFilterF: tParamF, ptFilterV: escape(tParamV)//*CH 16-08-2012 New Escape tParamV
            });
            var ordersGrid = $('#GridDocDT').data('tGrid');
            ordersGrid.rebind({
                ptDate: tDate, ptKeyString: ""
            });

        }
        function W_GETxSelectedDoc(){
            try{
                var tOldDocNo = tW_DocNoBeFore;
                $('#FTXqhDocNo').val(tW_PassedValue);
                var tDocNo = $('#FTXqhDocNo').val();
                if (tDocNo == null || tDocNo == '' || tDocNo == tOldDocNo) {
                    $('#FTXqhDocNo').val(tOldDocNo);
                    return false;
                }
                $ui("#odiBrwDoc").dialog("close");
                W_FRMxReload(true);
            }catch (ex) { J002_SHWxMsgError("W_GETxSelectedDoc ", ex); }       
        }

        //Browse Product
        $ui("#odiBrwPdt").dialog({
            autoOpen: false,
            modal: true,
            resizable: false,
            height: "auto",
            width: '855px',
        });
        $ui("#ocmCloseBrwPdt").click(function() {
            $ui("#odiBrwPdt").dialog("close");
        });
        
        //Save Warning
        $ui('#odiSavWarning').dialog({
            title: '<%=ViewData("olaWarning")%>',
            autoOpen: false,
            modal: true,
            resizable: false,
            height: 'auto',
            width: '300px',
            open: function() {
                $('#olaMsgSavWarning').html('<%=ViewData("tMsgSave_Warning")%>');
                $('#odiImgSavWarning').addClass('xCN_DivShowIconWarning');
            },
            buttons: {
                '<%=ViewData("olaOk")%>': function() {
                    $ui('#odiSavWarning').dialog("close");
                    var bComplete = W_DATxSaveDocument(true);
                    if (bComplete == false) { return false; }
                    if (tW_FlagFunc == '1') { W_SETxFromNewDoc(); return;} //สร้างเอกสารใหม่
                    if (tW_FlagFunc == '2') { W_SHWxFromFindDoc(); return;} //เปิดหน้าค้นหาเอกสาร
                },
                '<%=ViewData("olaNo")%>' : function() {
                    $ui('#odiSavWarning').dialog("close");
                    if (tW_FlagFunc == '1') { W_SETxFromNewDoc(); return;} //สร้างเอกสารใหม่
                    if (tW_FlagFunc == '2') { W_SHWxFromFindDoc(); return;} //เปิดหน้าค้นหาเอกสาร
                },
                '<%=ViewData("olaCancel")%>' : function() {
                    $ui('#odiSavWarning').dialog("close");
                },
            }
        });
        
        //Browse Doc
        $ui('#odiBrwDoc').dialog({
            autoOpen: false,
            modal: true,
            resizable: false,
            height: "auto",
            width: '826px',
        });
        $ui("#ocmCloseBrwDoc").click(function() {
            $ui("#odiBrwDoc").dialog("close");
            tW_PassedValue = '';
        });
        
        //Print Preview Form   
        $ui('#odiPrintForm').dialog({
            autoOpen: false,
            modal: true,
            resizable: false,
            height: "auto",
            width: 'auto',
            title: '<%=Session("tVB_LastLang")%>' == 'TH' ? 'พิมพ์' : 'Print',
        });     
        function W_CLSxColseBrwFrm(){
            //alert('Chuck 04-01-2012');
            $ui('#odiPrintForm').dialog('close');
        }
        function W_SHWxShowPrintForm() {
            //alert('chuck');
            //$('#odiPrintForm').html('');
            var tValue;
            var bAlwShw = false;
            if (nW_StaPrcDoc != 1) {
                bAlwShw = W_CHKbShwAlwReport();
            } else if (nW_StaPrcDoc == 1) {
                bAlwShw = true;
            }
            if (bAlwShw) {
                if (nW_StaDoc == 1) {
                    var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Print %>';
                    var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
                    var tPwdAllow = '<%=Session("bVB_CNPwdAllow") %>';
                    var bAllow = J002_CHKtCheckAuthorize(tW_Menu, tAuthor, tPwdAllow, tMsgNotAuthorize);
                    if (bAllow == false) { return false; }
                    var tDocNo = document.getElementById('FTXqhDocNo').value;
                    var tDocDate = document.getElementById('FDXqhDocDate').value;
                    var tLang = '<%=Session("tVB_LastLang")%>';
                    var tSplOrCst = '';
                    var tDocType = '0';
                    var tBchCode = tW_CompBchCode;
                    var tTableName = tW_Table;
                    var tFedCode = tW_FieldDocNo;
                    var tRptType = '0';
                    var tCstOrSplCode = '';
                    var tUrl = '<%=Url.Action("C_GETtRptData","cvcPrintForm") %>';
                    W_FRMGetRptName(tUrl, tW_Table, tRptType);
                    var tRes = J004_FRMtPreviewForm(tDocNo, tDocDate, tLang, tSplOrCst, tDocType, tBchCode, tTableName, tFedCode, tRptType, tCstOrSplCode);
                    tValue = tDocNo + '|' + tDocDate + ';'; //Document Data
                    tValue += tW_RptMode + '|' + tW_RptDefName + '|' + tW_RptUsrName + ';'; //Report Name
                    tValue += tRes + ';';//Customer Or Supplier Data
                    tValue += tLang + '|' + tSplOrCst + '|' + tDocType + '|' + tBchCode + '|';
                    tValue += tTableName + '|' + tFedCode + '|' + tRptType + '|' + tCstOrSplCode;
                    W_SETxObjValue(tValue);
                    $ui('#odiPrintForm').dialog('open');
                }
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
                    tW_RptMode = valueFis.split("|")[3];
                }
            }
        }
        catch (ex) {
            J002_SHWxMsgError("W_FRMGetRptNameStateChage", ex);
        }
    }
    
    //function W_SHWxForm() {
    //    var tUrl = '/' + '<%=Session("VirtualDirectory") %>' + '/wReport.aspx';        
    //    window.open(tUrl);
    //}
</script>

<script type="text/javascript">
    window.onunload = window_onunload
    function window_onunload() {
        J003_DISxWaiting();
    }
    function otbPdtCode_onkeypress() {

    }

    function otbRmk_onkeypress() {

    }
    function oimCancel_onclick() {

    }
//    $ui(function() {
//        $ui('Input:not([readonly="readonly"])').focus(function() {
//            this.select();
//        });
//    });
</script>


<% Html.Telerik().ScriptRegistrar().Globalization(True)%>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">

<%--Include the ASP.NET MVC Ajax JavaScript files in your view (ASPX)--%>
<script src="<%=Url.Content("~/Scripts/MicrosoftAjax.js") %>" type="text/javascript"></script>
<script src="<%=Url.Content("~/Scripts/MicrosoftMvcAjax.js") %>" type="text/javascript"></script>

<script src="<%=Url.Content("~/Scripts/AdaScript/J002_General.js") %>"  type="text/javascript"></script>
<script src="<%=Url.Content("~/Scripts/AdaScript/J009_ShowTab.js") %>"  type="text/javascript"></script>
<script src="<%=Url.Content("~/Scripts/AdaScript/J010_ShowTabData.js") %>"  type="text/javascript"></script>
<script src="<%=Url.Content("~/Scripts/AdaScript/J006_LoadBrowse.js") %>"  type="text/javascript"></script>
<script src="<%=Url.Content("~/Scripts/AdaScript/J005_KeepOldValue.js") %>"  type="text/javascript"></script>
<script src="<%=Url.Content("~/Scripts/AdaScript/J001_LoadAutoGenCode.js") %>"  type="text/javascript"></script>
<script src="<%=Url.Content("~/Scripts/AdaScript/J004_LoadTransactionMenu.js") %>"  type="text/javascript"></script>

<link rel="Stylesheet" href="<%=Url.Content("~/Content/AdaCss/Local/FCS_cvcTACTPqHD.css") %>" />
<link href="<%=Url.Content("~/Content/AdaCss/Global/FCS_CNDialog.css") %>" rel="stylesheet" type="text/css" />
</asp:Content>