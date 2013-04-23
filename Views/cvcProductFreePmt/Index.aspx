<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>
<%@ Import Namespace="System.Resources" %>
<%@ Import Namespace="AdaWebPos" %>
<%@ Import Namespace="Adasoft.WebPos.Models" %>
<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        'Dim tLastLang As String = cCNVB.tVB_LastLang
        

        If Session("tVB_LastLang") Is Nothing AndAlso Session("tVB_LastLang") = "" Then
            AdaWebPos.My.Resources.resLCcvcProductFreePmt.Culture = New System.Globalization.CultureInfo("EN")
            Resources.resGBMsg.Culture = New System.Globalization.CultureInfo("EN")
            Resources.resGBGridHeader.Culture = New System.Globalization.CultureInfo("EN")
            Resources.resGBMenuName.Culture = New System.Globalization.CultureInfo("EN")
        Else
            AdaWebPos.My.Resources.resLCcvcProductFreePmt.Culture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
            Resources.resGBMsg.Culture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
            Resources.resGBGridHeader.Culture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
            Resources.resGBMenuName.Culture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
        End If
        
      
        ViewData("olaCreate") = AdaWebPos.My.Resources.resLCcvcProductFreePmt.olaCreate
        ViewData("olaCanPost") = AdaWebPos.My.Resources.resLCcvcProductFreePmt.olaCanPost
        ViewData("olaClose") = AdaWebPos.My.Resources.resLCcvcProductFreePmt.olaClose
        ViewData("olaCurTrans") = AdaWebPos.My.Resources.resLCcvcProductFreePmt.olaCurTrans
        ViewData("olaDocDate") = AdaWebPos.My.Resources.resLCcvcProductFreePmt.olaDocDate
        ViewData("olaDocNo") = AdaWebPos.My.Resources.resLCcvcProductFreePmt.olaDocNo
        ViewData("olaFeePdtList") = AdaWebPos.My.Resources.resLCcvcProductFreePmt.olaFeePdtList
        ViewData("olaHelp") = AdaWebPos.My.Resources.resLCcvcProductFreePmt.olaHelp
        ViewData("olaPdtList") = AdaWebPos.My.Resources.resLCcvcProductFreePmt.olaPdtList
        ViewData("olaPrevTrans") = AdaWebPos.My.Resources.resLCcvcProductFreePmt.olaPrevTrans
        ViewData("olaRemarkCap") = AdaWebPos.My.Resources.resLCcvcProductFreePmt.olaRemarkCap
        ViewData("olaRemarkData") = AdaWebPos.My.Resources.resLCcvcProductFreePmt.olaRemarkData
        ViewData("olaTransType") = AdaWebPos.My.Resources.resLCcvcProductFreePmt.olaTransType
        
        ViewData("olaCode") = Resources.resGBGridHeader.olaCode
        ViewData("olaName") = Resources.resGBGridHeader.olaName
        ViewData("olaPdtUnit") = Resources.resGBGridHeader.olaPdtUnit
        ViewData("olaPdtUnitName") = Resources.resGBGridHeader.olaPdtUnitName
        ViewData("olaRowID") = Resources.resGBGridHeader.olaRowID
        '*TW 54-04-11 R5
        ViewData("tMsgConfirmPost") = Resources.resGBMsg.tMsgConfirmPost
        ViewData("tMsgCom") = Resources.resGBMsg.tMsgCom
        
        'Doc Status
        ViewData("olatMsgDoc_NonApp") = Resources.resGBMsg.tMsgDoc_NonApp
        ViewData("olatMsgDoc_App") = Resources.resGBMsg.tMsgDoc_App
        ViewData("olatMsgDoc_Cancel") = Resources.resGBMsg.tMsgDoc_Cancel
        ViewData("tMsgNoPdtFree") = Resources.resGBMsg.tMsgNoPdtFree
        ViewData("tMsgErrorData") = Resources.resGBMsg.tMsgErrorData
        
        ViewData("omnPdtFreePmt") = Resources.resGBMenuName.omnPdtFreePmt
        
        ViewData("oimgAppv") = Url.Content(Resources.resGBImageList.oimgAppv)
        ViewData("oimgPCRemove") = Url.Content(Resources.resGBImageList.oimgPCRemove)
        ViewData("oimgNoAppv") = Url.Content(Resources.resGBImageList.oimgNoAppv)
        ViewData("oimgBrowse") = Url.Content(Resources.resGBImageList.oimgBrowse)
        ViewData("oimgGencode") = Url.Content(Resources.resGBImageList.oimgGencode)
        ViewData("olaMenuExit") = Resources.resGBMenuName.omnExit '*ออก *CH 17-10-2012
        ViewData("olaMenuHome") = Resources.resGBMenuName.omnHome '*หน้าแรก *CH 17-10-2012
        
        ViewData("DocDate") = Format(Date.Now, "dd/MM/yyyy")
        ViewData("tDefualtDoc") = "S" & Right(Date.Now.Year.ToString, 2) & IIf(Date.Now.Month.ToString.Length > 1, Date.Now.Month.ToString, "0" & Date.Now.Month.ToString) & Session("tVB_CNBchCode") '& "001"'*TW 54-04-11 R5
    
        ViewData("VirtualDirectory") = W_GETtVirtualDirectory()
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

<div id="odiObjHidden" style="display:none">
    <input type="hidden" id="otbFTBchCode" value ="" />
</div> 
<div id="odiMain" class="xCN_AllFontFamily xCN_AllFontSize xCN_AllFontColor xCN_DivMain">
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
                <div id="odiMenuPost" class="xCN_DivMenuPost" style="float: left;">
                    <a onclick="W_FRMxPostDoc()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaCanPost")%>
                        </div>
                    </a>
                </div>
                <%--<div id="odiMenuHelp" class="xCN_DivMenuHelp" style="float: left;">
                    <a href="#" onclick="">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaHelp")%>
                        </div>
                    </a>
                </div>--%>
                <%--<div id="odiMenuClose" class="xCN_DivMenuHome" style="float: left;">
                    <a href="#" onclick="W_FRMxCloseDoc()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaClose")%>
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
    </div>
    <div class="xW_DivHeader xCN_AllBorderColor xCN_AllBackgroundColor">
       <div class="xW_DivHeaderLeft xCN_AllBorderColor">
            <div class="xW_DivRemark">
                <div class="xW_DivRemarkCap"><%=ViewData("olaRemarkCap")%></div>
                <div class="xW_DivRemarkData ">
                    <label ><%=ViewData("olaRemarkData")%></label>
                </div>
            </div>
            <div class="xW_DivDocType">
               <%-- <div class="xW_DivDocTypeSub">
                    <input type="radio" id="orbCurrent" name="orbTrans"  visible="false"  onclick ="W_SETxRadiobutton()" /><%=ViewData("olaCurTrans")%>           
                </div>
                <div class="xW_DivDocTypeSub">
                    <input type="radio" id="orbPrevios" name="orbTrans" visible="false" onclick="W_SETxRadiobutton()" /><%=ViewData("olaPrevTrans")%>
                </div>--%>
                <div class="xW_DivDocTypeFrom">
                       <div class="xW_DivDocCaption">
                            <%=ViewData("olaTransType")%>
                       </div>
                       <div class="xW_DivSelectFromBill">
                            <select id="ocbFromBill"  disabled="disabled" ></select>
                       </div>
                </div>
            </div>
       </div>
       <div id="odiDocNo" class="xCN_AllBorderColor xW_DivHeaderRight xCN_AllBackgroundColor">
            <div class="xCN_AllBackgroundColorMenu xCN_AllBorderColor xCN_AllMenuFontSize xCN_AllMenuFontColor xW_DivDocumentMenuName">
                <div class="xCN_DivDocNameSub">
                    <label>
                        <%=ViewData("omnPdtFreePmt")%>
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
                </div> 
                <div class="xW_DivDocData">
                    <div class="xW_DivDocDataSub">
                        <input id="otbFTDocNo" 
                               onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which)"
                               onkeydown="W_GEToPdtDetail(event.keyCode,event.witch)"
                               maxlength='<%=ViewData("MaxLenght")%>'
                               name="otbFTDocNo" 
                               type="text" 
                               value =""/>
                        <%--<%=Html.ValidationMessageFor(Function(model) model.FTCghDocNo)%>--%>
                    </div>
                    <div class="xW_DivDocDataSub">
                      <input id="otbDocDate" 
                                   name="otbDocDate" 
                                   type="text" 
                                   class="xCN_AllReadOnlyBGColor"
                                   value =""/>
                    </div>
               </div>                 
                
            </div>
   
       </div> 
       <div class="xW_DivTabProductList">
           <div class="xW_DivTabToppic"> 
                <div class="xCN_DivTabActive xW_DivTrasactionName"> 
                    <label><%=ViewData("olaPdtList")%></label>
               </div>
               
           </div>
           <div class="xW_DivDetail xCN_AllBackgroundColor">
                <div id="odiGridDT" class="xW_DivGridDetail">
                    <%  'declare the grid and enable features
                        Dim oDataDT As IEnumerable(Of Adasoft.Abreast.Models.cmlTPSTSalDT) = ViewData("DataDT")
                        Dim gridBuilder = Html.Telerik().Grid(oDataDT) _
                                    .Name("ogdGridDT") _
                                    .HtmlAttributes(New With {.style = "width:99.8%;"}) _
                                    .Scrollable(Function(o) o.Height(143)) _
                                    .Scrollable.HtmlAttributes(New With {.style = "height:165px;"}) _
                                    .Footer(False) _
                                    .Selectable()
                                        
                        gridBuilder.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                           .Select("C_DAToSelectProductList", "cvcProductFreePmt")))
                          
                        'Add grid columns
                        gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FNSdtSeqNo).Title(ViewData("olaRowID")).Width(80) _
                        .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                        .HtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}))
                                
                        gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTPdtCode).Title(ViewData("olaCode")).Width(200) _
                                    .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                    .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                     
                        gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTPdtName).Title(ViewData("olaName")).Width(400) _
                                    .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                    .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                        
                        gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTSdtUnitName).Title(ViewData("olaPdtUnitName")).Width(100) _
                .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                        
                        gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FCSdtQtyAll).Title(ViewData("olaPdtUnit")).Format("{0:#,##0." & StrDup(Session("nVB_CNDecAmtForShw"), "0") & "}") _
                 .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                 .HtmlAttributes(New With {.style = "text-align:right; font-size:12px;"}))
                        
                        gridBuilder.DataKeys(Function(Key) Key.Add(Function(model) model.FNSdtSeqNo))
                            
                        gridBuilder.RowAction(Function(row) (row.Selected = row.DataItem.FNSdtSeqNo.Equals(ViewData("id"))))
                            
                        gridBuilder.Render()
                         
                    %>
                </div>
        </div>        
       </div>  

      <div class="xW_DivTabProductList">
         <div class="xW_DivTabToppic"> 
             <div class="xCN_DivTabActive xW_DivTrasactionName">
                <label><%=ViewData("olaFeePdtList")%></label>
             </div>       
         </div>
         <div class="xW_DivDetail xCN_AllBackgroundColor">
            <div id="Div1" class="xW_DivGridDetail">
                <%  'declare the grid and enable features
                    Dim oDataFreePdt As IEnumerable(Of Adasoft.Abreast.Models.cmlTPSTSalDT) = ViewData("PdtFree")
                    Dim gridFreePdt = Html.Telerik().Grid(oDataFreePdt) _
                                .Name("ogdGridFreePdt") _
                                .HtmlAttributes(New With {.style = "width:99.8%;"}) _
                                .Scrollable(Function(o) o.Height(143)) _
                                .Scrollable.HtmlAttributes(New With {.style = "height:165px;"}) _
                                .Footer(False) _
                                .Selectable()
                                    
                    gridFreePdt.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                       .Select("C_DAToSelectProductFree", "cvcProductFreePmt")))
                      
                    'Add grid columns
                    
                    gridFreePdt.Columns(Function(columns) columns.Bound(Function(o) o.FNSdtSeqNo).Title(ViewData("olaRowID")).Width(80) _
                        .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                        .HtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}))
                    
                    gridFreePdt.Columns(Function(columns) columns.Bound(Function(o) o.FTPdtCode).Title(ViewData("olaCode")).Width(200) _
                                .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                 
                    gridFreePdt.Columns(Function(columns) columns.Bound(Function(o) o.FTPdtName).Title(ViewData("olaName")).Width(400) _
                                .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                    
                    gridFreePdt.Columns(Function(columns) columns.Bound(Function(o) o.FTSdtUnitName).Title(ViewData("olaPdtUnitName")).Width(100) _
                                .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
                                .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
                    
                    gridFreePdt.Columns(Function(columns) columns.Bound(Function(o) o.FCSdtQtyAll).Title(ViewData("olaPdtUnit")).Format("{0:#,##0." & StrDup(Session("nVB_CNDecAmtForShw"), "0") & "}") _
             .HeaderHtmlAttributes(New With {.style = "text-align:center; font-size:12px;"}) _
             .HtmlAttributes(New With {.style = "text-align:right; font-size:12px;"}))
                    
                    gridFreePdt.DataKeys(Function(Key) Key.Add(Function(model) model.FNSdtSeqNo))
                    gridFreePdt.RowAction(Function(row) (row.Selected = row.DataItem.FNSdtSeqNo.Equals(ViewData("id"))))                       
                    gridFreePdt.Render()
                     
                %>
            </div>
       </div>                
      </div>


    </div> 
 </div>
 
<%-- 
<script language="javascript" type="text/javascript" for="window" event="onload">
return W_FRMxOnLoad()
</script>--%>

 <script type="text/javascript">
     var tW_Controller = 'cvcProductFreePmt';
     var oW_HTTPXml = null;
     var tW_DefualtDoc = '<%=ViewData("tDefualtDoc")%>';


     window.onload = W_FRMxOnLoad;
    function W_SETxRebindGrid(ptGridName) {
        try {

            var oGrid = $('#' + ptGridName).data('tGrid');
            var tIdex = document.getElementById('ocbFromBill').selectedIndex;
            oGrid.rebind({ ptDocNo: document.getElementById('otbFTDocNo').value, ptFromBill : tIdex });
        }
        catch (ex) {
            J002_SHWxMsgError("W_SETxRebindGrid", ex);
        }

    }


    function W_GEToPdtDetail(ptKeyCode, ptWitch)
     {
         try 
         { 
             var tDocNo = document.getElementById('otbFTDocNo').value;
             var tdate = J002_GETtTimeStamp();
             var tUrl = '';
             var tValue = '';
             var tIndex = document.getElementById('ocbFromBill').selectedIndex.toString();
             var tKey = ptKeyCode;
             if (tDocNo != null && tDocNo != "")
              {

                  if (ptWitch != null && ptWitch != "") 
                  {
                      tKey = ptWitch;
                  }
                  if (tKey == 13) 
                 {
                     J003_SHWxWaiting();

                     tUrl ='<%=Url.Action("C_CHKbFreeProduct","cvcProductFreePmt") %>' + '?ptDocNo=' + tDocNo + '&ptDate=' + tdate + '&ptFromBill=' + tIndex;
                     oW_HTTPXml = J002_GEToXMLHttpRequest();
                     oW_HTTPXml.open("GET", encodeURI(tUrl), false);
                     oW_HTTPXml.send(null)
                     tValue = oW_HTTPXml.responseText;

                     if (tValue.split("|")[0] != null && tValue.split("|")[0] != "") 
                     {
                         alert(tValue.split("|")[0]);
                         return false;
                     }

                     if (tValue.split("|")[1] != "0") 
                     {

                         W_SETxRebindGrid('ogdGridDT');
                         W_SETxRebindGrid('ogdGridFreePdt');
                         W_GETtDocDate();
                         
                     }
                     else 
                     {
                         alert('<%=ViewData("tMsgNoPdtFree")%>');
                         W_SETxRebindGrid('ogdGridDT');
                         W_SETxRebindGrid('ogdGridFreePdt');
          
                     }

                     return !(window.event && window.event.keyCode == 13);
                 }
             }
         
         }
         catch (ex) {
             J002_SHWxMsgError("W_GEToPdtDetail", ex);
         }
         finally {
             J003_DISxWaiting();
         }
        

     }

     function W_SETxRadiobutton() 
     {
         if (document.getElementById("orbCurrent").checked  == true) {

             document.getElementById('otbFTDocNo').value = tW_DefualtDoc;
             document.getElementById("otbFTDocNo").focus();
         }
         else 
         {
             document.getElementById("otbFTDocNo").value = "";
             document.getElementById("otbFTDocNo").focus();
         }
         W_SETxRebindGrid('ogdGridDT');
         W_SETxRebindGrid('ogdGridFreePdt');
     }

     function W_FRMxNewDoc() {
         try {
             J003_SHWxWaiting();
             var tDate = J002_GETtTimeStamp();
             var tUrl = '<%=Url.Action("Index","cvcProductFreePmt") %>'+'?ptDate=' + tDate;
             window.location = encodeURI(tUrl);
         }
         catch (ex) {
             J002_SHWxMsgError("W_FRMxNewDoc", ex);
         }
         finally {
             J003_DISxWaiting();
         }

     }

     //ptFlag 1 ไปรายการโปรด ; 2 ไปหน้าโปรโมชั่น
     function W_FRMxCloseDoc(ptFlag) {
         try {
             J003_SHWxWaiting();
             //window.location = '<%=Url.Action("Index","Home") %>';
             var tUrl;
             if (ptFlag == '1') {
                 tUrl = '<%=Url.Action("Index","Home") %>';
             } else {
                 tUrl = '<%=Url.Action("Index","cvcCNPanal") %>?ptMenuGrpName=Promotion';
             }
             window.location = tUrl;
         }
         catch (ex) {
             J002_SHWxMsgError("W_FRMxCloseDoc", ex);
         }
         finally {
             J003_DISxWaiting();
         }

     }

     function W_GETtDocDate() {
         try {
             var tDate = J002_GETtTimeStamp();
             var tDocNo = document.getElementById('otbFTDocNo').value;
             var tIndex = document.getElementById('ocbFromBill').selectedIndex.toString();
             var tValue = "";
             oW_HTTPXml = null;
             oW_HTTPXml = J002_GEToXMLHttpRequest();
             oW_HTTPXml.open("GET", encodeURI('<%=Url.Action("C_GETtDocumentDate","cvcProductFreePmt") %>' + "?ptDocNo=" + tDocNo + "&ptDate=" + tDate + '&ptFromBill=' + tIndex ), false);
             oW_HTTPXml.send(null);
             tValue = oW_HTTPXml.responseText;
             if (tValue.split("|")[0] != null && tValue.split("|")[0] != "") {
                 alert(tValue.split("|")[0]);
                 return false;
             }
             document.getElementById('otbDocDate').value = tValue.split("|")[1];
             document.getElementById('otbFTBchCode').value = tValue.split("|")[2];
         }
         catch (ex) {
             J002_SHWxMsgError("W_GETtDocDate", ex);
         }
     }

     function W_UPDxUpdatePdtSerial() {
         try {
             var tDate = J002_GETtTimeStamp();
             var tDocNo = document.getElementById('otbFTDocNo').value;
             var tIndex = document.getElementById('ocbFromBill').selectedIndex.toString();
             var tValue = "";
             oW_HTTPXml = null;
             oW_HTTPXml = J002_GEToXMLHttpRequest();
             oW_HTTPXml.open("GET", encodeURI('<%=Url.Action("C_DATbUpdatePdtSerial","cvcProductFreePmt") %>'+ "?ptDocNo=" + tDocNo + "&ptDate=" + tDate + '&ptFromBill=' + tIndex), false);
             oW_HTTPXml.send(null);
             tValue = oW_HTTPXml.responseText;
             if (tValue.split("|")[0] != null && tValue.split("|")[0] != "") {
                 alert(tValue.split("|")[0]);
                 return false;
             }
         }
         catch (ex) {
             J002_SHWxMsgError("W_UPDxUpdatePdtSerial", ex);
         }
     }

     function W_FRMxPostDoc() {
         try {
             J003_SHWxWaiting();
             var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Approve%>';
             var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
             var tPwdAllow = '<%=Session("bVB_CNPwdAllow")%>';
             var aAlwUsrCode = new Array();
             var bAllow = J002_CHKtCheckAuthorize('omnReceiveFreePdt', tAuthor, tPwdAllow, tMsgNotAuthorize, aAlwUsrCode);
             var tApvCode = aAlwUsrCode[0];
             if (bAllow == false) {
                 return false;
             }
             var nPdt = W_GETtPdtCount();
             if (nPdt < 1) {
                 alert('<%=ViewData("tMsgErrorData")%>');
                 return false;
             }
             //TW 54-04-11 R5 
             if (!confirm('<%=ViewData("tMsgConfirmPost") %>')) {
                 return false;
             }
             
            var tDate = J002_GETtTimeStamp();
            var tDocNo = document.getElementById('otbFTDocNo').value;
            var tBchCode = document.getElementById('otbFTBchCode').value;
            var tIndex = document.getElementById('ocbFromBill').selectedIndex.toString();
            var tValue = "";
            oW_HTTPXml = null;
            oW_HTTPXml = J002_GEToXMLHttpRequest();
            oW_HTTPXml.open("GET", encodeURI('<%=Url.Action("C_DATtPostDoc","cvcProductFreePmt") %>'+ "?ptDocNo=" + tDocNo + "&ptDate=" + tDate + '&ptFromBill=' + tIndex + '&ptBchCode=' + tBchCode), false);
            oW_HTTPXml.send(null);
            tValue = oW_HTTPXml.responseText;
            if (tValue.split("|")[0] != null && tValue.split("|")[0] != "") {
                alert(tValue.split("|")[0]);
                return false;
            }
            else {
                
                alert('<%=ViewData("tMsgCom") %>');//*TW 54-04-11 R5
                var tUrl = '<%=Url.Action("Index","cvcProductFreePmt") %>'+ '?ptDate=' + tDate;
                window.location = encodeURI(tUrl) ;
            }
         }
         catch (ex) {
             J002_SHWxMsgError("W_FRMxPostDoc", ex);
         }
         finally {
             J003_DISxWaiting();
         }
     }

     function W_GETtPdtCount() {
         try {
             var tDataTimeNow = J002_GETtTimeStamp();
            // var tModelPdt = document.getElementById("otbFTPdtCode").value;
             var tUrl ='<%=Url.Action("C_GETtPdtCount","cvcProductFreePmt") %>' + "?ptDateTimeNow=" + tDataTimeNow;
             oW_xmlHttp = J002_GEToXMLHttpRequest();
             oW_xmlHttp.open("GET", encodeURI(tUrl), false);
             oW_xmlHttp.send(null);
             return oW_xmlHttp.responseText; //return จำนวนรายการสินค้า ใน Grid
         }
         catch (ex) {
             J002_SHWxMsgError("W_GETtPdtCount", ex);
         }
     
     }
     function W_FRMxOnLoad() {
         W_SETxInitial();
     }

     function W_SETxInitial() {
         try {

             J003_SHWxWaiting();
             tJ002_VirtualDirectory = '<%=ViewData("VirtualDirectory") %>';
             tJ003_VirtualDirectory = '<%=ViewData("VirtualDirectory") %>';
             tJ004_VirtualDirectory = '<%=ViewData("VirtualDirectory") %>'; 
             var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Read%>';
             var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
             var tPwdAllow = '<%=Session("bVB_CNPwdAllow")%>';
             var bAllow = J002_CHKtCheckAuthorize('omnReceiveFreePdt', tAuthor, tPwdAllow, tMsgNotAuthorize);
             if (bAllow == false) {
                 window.location = '<%=Url.Action("Index","Home") %>';
                 return false;
             }
             document.getElementById('otbFTDocNo').value = '<%=ViewData("DocNo") %>';
             document.getElementById('otbFTDocNo').focus();
             //  document.getElementById("orbCurrent").checked = true;
           
             J011_SETxComboBox('ocbFromBill', '<%=ViewData("BillFrom")%>');
             document.getElementById('otbDocDate').value = '<%=ViewData("DocDate")%>';
             document.getElementById('otbFTDocNo').value = tW_DefualtDoc;
          }
          catch (ex) {
              J002_SHWxMsgError("W_SETxInitial", ex);
          }
          finally {
              J003_DISxWaiting();
          }

     }

 </script>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
<link rel="Stylesheet" href='<%=Url.Content("~/Content/AdaCss/Local/FCS_cvcProductFreePmt.css") %>' />
<script type="text/javascript" src='<%=Url.Content("~/Scripts/AdaScript/J002_General.js") %>'></script>
<script type="text/javascript" src='<%=Url.Content("~/Scripts/AdaScript/J003_SplashDialog.js") %>'></script>
<script type="text/javascript" src='<%=Url.Content("~/Scripts/AdaScript/J004_LoadTransactionMenu.js") %>'></script>
<script type="text/javascript" src='<%=Url.Content("~/Scripts/AdaScript/J011_ComboBoxLibrary.js") %>'></script>
</asp:Content>
