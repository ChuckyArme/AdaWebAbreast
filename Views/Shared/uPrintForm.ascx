<%@ Control Language="VB" Inherits="System.Web.Mvc.ViewUserControl(Of Adasoft.WebPos.Models.cmlGetSplOrCst)" %>
<%@ Import Namespace="System.Resources" %>
<%@ Import Namespace="AdaWebPos" %>
<%@ Import Namespace ="System.IO" %>
<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim oSP As New cCNSP
        ViewData("DocNo") = Request.QueryString("ptDocNo")
        ViewData("DocDate") = Request.QueryString("ptDocDate")
        ViewData("RptDefName") = Request.QueryString("ptRptDefName")
        ViewData("RptUsrName") = Request.QueryString("ptRptUsrName")
        ViewData("RptMode") = Request.QueryString("ptRptMode")
        ViewData("DocType") = Request.QueryString("ptDocType")
        ViewData("RptType") = Request.QueryString("ptRptType")
        ViewData("Lang") = Request.QueryString("Lang")
        ViewData("SplOrCstCode") = Request.QueryString("tSplOrCst")
        ViewData("BchCode") = Request.QueryString("ptBchCode")
        ViewData("FTSatTblName") = Request.QueryString("ptFTSatTblName")
        ViewData("FTSatFedCode") = Request.QueryString("ptFTSatFedCode")
        ViewData("CountDec") = Session("nVB_CNDecAmtForShw")
        ViewData("BarCode") = Session("tVB_CNShwBarOrPdt")
        ViewData("Fsh") = Session("nVB_CNVersion")
        ViewData("Factor") = IIf(cCNVB.cVB_CNAMnyFactor = 0, 1, cCNVB.cVB_CNAMnyFactor)
        ViewData("ComName") = Session("tVB_CNComName")
        ViewData("tGetDataFrom") = Request.QueryString("ptCstOrSplCode")
        ViewData("ovd_cPointSpl") = Request.QueryString("pcPointSpl") '*CH 11-11-11
        Dim tLastLang As String = Session("tVB_LastLang")

        If tLastLang Is Nothing AndAlso tLastLang = "" Then
            AdaWebPos.My.Resources.resLCcvcPrintForm.Culture = New System.Globalization.CultureInfo("EN")
        Else
            AdaWebPos.My.Resources.resLCcvcPrintForm.Culture = New System.Globalization.CultureInfo(tLastLang)
        End If
       
        ViewData("olaDocDate") = AdaWebPos.My.Resources.resLCcvcPrintForm.olaDocDate
        ViewData("olaCstAddr") = AdaWebPos.My.Resources.resLCcvcPrintForm.olaCstAddr
        ViewData("olaCstCode") = AdaWebPos.My.Resources.resLCcvcPrintForm.olaCstCode
        ViewData("olaCstFax") = AdaWebPos.My.Resources.resLCcvcPrintForm.olaCstFax
        ViewData("olaCstName") = AdaWebPos.My.Resources.resLCcvcPrintForm.olaCstName
        ViewData("olaCstTel") = AdaWebPos.My.Resources.resLCcvcPrintForm.olaCstTel
        ViewData("olaEdit") = AdaWebPos.My.Resources.resLCcvcPrintForm.olaEdit
        ViewData("olaDocNo") = AdaWebPos.My.Resources.resLCcvcPrintForm.olaDocNo
        ViewData("olaPreview") = AdaWebPos.My.Resources.resLCcvcPrintForm.olaPreview
        ViewData("olaPrint") = AdaWebPos.My.Resources.resLCcvcPrintForm.olaPrint
        ViewData("olaRptDefault") = AdaWebPos.My.Resources.resLCcvcPrintForm.olaRptDefault
        ViewData("olaRptUsrGet") = AdaWebPos.My.Resources.resLCcvcPrintForm.olaRptUsrGet
        ViewData("olaMenu") = AdaWebPos.My.Resources.resLCcvcPrintForm.olaMenu
        ViewData("olaSave") = AdaWebPos.My.Resources.resLCcvcPrintForm.olaSave
        ViewData("olaCancel") = AdaWebPos.My.Resources.resLCcvcPrintForm.olaCancel
        ViewData("olaGrpCstOrSpl") = AdaWebPos.My.Resources.resLCcvcPrintForm.olaGrpCstOrSpl
        ViewData("olaGrpDoc") = AdaWebPos.My.Resources.resLCcvcPrintForm.olaGrpDoc
        ViewData("olaGrpRpt") = AdaWebPos.My.Resources.resLCcvcPrintForm.olaGrpRpt
        ViewData("olaPrintComfirm") = AdaWebPos.My.Resources.resLCcvcPrintForm.olaPrintComfirm
          
        ViewData("oimgBrowse") = Url.Content(Resources.resGBImageList.oimgBrowse)
        ViewData("olaPrint") = IIf (tLastLang = "TH" , "พิมพ์","Print")
    End Sub
</script>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <script type="text/javascript" src = "<%=Url.Content("~/Scripts/AdaScript/J002_General.js") %>"></script>
    <script type ="text/ecmascript" src ="<%=Url.Content("~/Scripts/AdaScript/J003_SplashDialog.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J004_LoadTransactionMenu.js") %>"></script>
    <%--<link rel="Stylesheet" type ="text/css" href="<%=Url.Content("~/Content/AdaCss/Local/FCS_cvcPrintForm.css") %>"/>--%>
    <link rel="Stylesheet" type ="text/css" href="<%=Url.Content("~/Content/AdaCss/Local/FCS_uPrintForm.css") %>"/>
    <link rel="Stylesheet" type ="text/css" href="<%=Url.Content("~/Content/AdaCss/Global/FCS_CNCenter.css") %>"/>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/jquery-1.4.2.min.js") %>"></script>

<title ><%=ViewData("olaMenu")%></title>
<script type ="text/javascript" > 
 var tW_BchCode = '<%=ViewData("BchCode")%>';
 var tW_DocType ='<%=ViewData("DocType")%>';
 var tW_TblName ='<%=ViewData("FTSatTblName")%>';
 var tW_RptType='<%=ViewData("RptType")%>';
 var tW_Controller ='cvcPrintForm';
 var tW_SplOrCst = '<%=ViewData("SplOrCstCode")%>';
 var tW_FTSatFedCode = '<%=ViewData("FTSatFedCode")%>';
 var tW_CstOrSplCode;
 var nW_Lang;
    
function W_SETxDisbleBttn(){
    var tTbleName = tW_TblName;  //'<%=ViewData("FTSatTblName") %>';
    if (tTbleName.toUpperCase() =='TACTPQHD'.toUpperCase()){
        document.getElementById("ocmEdit").disabled =true ;
        document.getElementById("ocmSave").disabled=true;
        document.getElementById("ocmCancelEdit").disabled=true;
    }
    else {
        document.getElementById("ocmEdit").disabled=false ;
        document.getElementById("ocmSave").disabled=true;
        document.getElementById("ocmCancelEdit").disabled=true;    
    }
}

function W_GETtDateTimeNow(){
   var dNow = new Date;
   var tDateTimeNow = dNow.getFullYear().toString() + dNow.getMonth().toString() + dNow.getDay().toString() + dNow.getHours().toString() + dNow.getMinutes().toString() + dNow.getSeconds().toString() + dNow.getMilliseconds().toString();
   return tDateTimeNow;
}
    
var oW_XmlHttp;
var tResult;
function Rpt_createXMLHttpRequest() {
    if (window.ActiveXObject) {
        oW_XmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    else if (window.XMLHttpRequest) {
        oW_XmlHttp = new XMLHttpRequest();
    }
}

//function W_FRMxHandleStateChange() {
//    
//    if (oW_XmlHttp.readyState == 4) {
//        if (oW_XmlHttp.status == 200) {
//            var valueFis = oW_XmlHttp.responseText;
//            alert (valueFis);
//        }
//    }
//}

function W_FRMxSaveSplorCstData() {
    Rpt_createXMLHttpRequest();
    //W_GETtDateTimeNow(),'C_DATxSaveDocument','cvcPrintDialog'
    var tFTSplOrCstCode = document.getElementById('otbFTSplOrCstCode').value;
	var tFTSplOrCstName = document.getElementById('otbFTSplOrCstName').value;
	var tFTSplOrCstAddr = document.getElementById('otbFTSplOrCstAddr').value;
    var tFTSplOrCstTel = document.getElementById('otbFTSplOrCstTel').value;
	var tFTSplOrCstFax = document.getElementById('otbFTSplOrCstFax').value;
	//var tTblName ='<%=ViewData("FTSatTblName") %>';
	var tDocNo = document.getElementById("otbDocNo").value;
	var tDate = J002_GETtTimeStamp();
	//var tAction = 'C_DATxSaveCstOrSplData';
	var tController= 'cvcPrintForm';
	var tSplOrCst = tW_SplOrCst; //'<%=ViewData("SplOrCstCode")%>';
	var tUrl="";
	if (tW_TblName == "TCNTCstGiftHD")
	{
    	tUrl ='<%=Url.Action("C_DATxSaveDocument","cvcPrintForm") %>' + "?ptDate=" + tDate + "&ptFTSplOrCstCode=" + tFTSplOrCstCode + '&ptFTSplOrCstName=' + tFTSplOrCstName + '&ptFTSplOrCstAddr=' + tFTSplOrCstAddr + '&ptFTSplOrCstTel=' + tFTSplOrCstTel + '&ptFTSplOrCstFax=' + tFTSplOrCstFax + '&ptSplOrCst=Customer';	
	}
	else{
    	 tUrl = '<%=Url.Action("C_DATxSaveCstOrSplData","cvcPrintForm") %>' + "?ptDate=" + tDate + "&ptFTSplOrCstCode=" + tFTSplOrCstCode + '&ptFTSplOrCstName=' + tFTSplOrCstName + '&ptFTSplOrCstAddr=' + tFTSplOrCstAddr + '&ptTblName=' + tW_TblName + '&ptBchCode=' + tW_BchCode + '&ptDocType=' + tW_DocType + '&ptDocNo=' + tDocNo ;	
	}
    oW_XmlHttp.open("GET", encodeURI(tUrl), false);
    oW_XmlHttp.onreadystatechange = W_FRMxHandleStateChange;
    oW_XmlHttp.send(null);
    W_SETxDisableSpl();
}

function W_SETxHeaderData(data) {
    document.getElementById('otbFTSplOrCstCode').value= data.FTSplOrCstCode;
    document.getElementById('otbFTSplOrCstName').value=data.FTSplOrCstName;
    document.getElementById('otbFTSplOrCstAddr').value=data.FTSplOrCstAddr;
    document.getElementById('otbFTSplOrCstTel').value=data.FTSplOrCstTel;
    document.getElementById('otbFTSplOrCstFax').value=data.FTSplOrCstFax;        
}

function W_SETxDisableSpl(){
    document.getElementById("ocmEdit").disabled=false;
    document.getElementById("ocmSave").disabled=true;
    document.getElementById("ocmCancelEdit").disabled=true;
    document.getElementById('otbFTSplOrCstName').disabled=true;
    document.getElementById('otbFTSplOrCstAddr').disabled=true;
    document.getElementById('otbFTSplOrCstTel').disabled=true;
    document.getElementById('otbFTSplOrCstFax').disabled=true;
    $("#otbFTSplOrCstName").addClass("xCN_AllReadOnlyBGColor");
    $("#otbFTSplOrCstAddr").addClass("xCN_AllReadOnlyBGColor");
    $("#otbFTSplOrCstTel").addClass("xCN_AllReadOnlyBGColor");
    $("#otbFTSplOrCstFax").addClass("xCN_AllReadOnlyBGColor");
}

function W_SETxEnableSpl(){
    document.getElementById("ocmEdit").disabled=true;
    document.getElementById("ocmSave").disabled=false;
    document.getElementById("ocmCancelEdit").disabled=false;
    document.getElementById('otbFTSplOrCstName').disabled=false;
    document.getElementById('otbFTSplOrCstAddr').disabled=false;
    if (tW_TblName == "TCNTCstGiftHD")
    {
        document.getElementById('otbFTSplOrCstTel').disabled=false;
        document.getElementById('otbFTSplOrCstFax').disabled=false;
        $("#otbFTSplOrCstTel").removeClass("xCN_AllReadOnlyBGColor");
        $("#otbFTSplOrCstFax").removeClass("xCN_AllReadOnlyBGColor");
    }

    $("#otbFTSplOrCstName").removeClass("xCN_AllReadOnlyBGColor");
    $("#otbFTSplOrCstAddr").removeClass("xCN_AllReadOnlyBGColor");
//    $("#otbFTSplOrCstTel").removeClass("xCN_AllReadOnlyBGColor");
//    $("#otbFTSplOrCstFax").removeClass("xCN_AllReadOnlyBGColor");
}
 
 function W_FRMxGetRptType(){
   var tDefValue = document.getElementById('ordSysDef').checked;
   var tRptName ;
   if (tDefValue== true){
        tRptName = document.getElementById('otbDefRpt').value;
        return tRptName;
    }
    else{
       tRptName = document.getElementById('otbUsrDefined').value;
        return tRptName;
    }
 } 
 
 function W_FRMtRptModePrint(){
  if (confirm ('<%=ViewData("olaPrintComfirm")%>')== true) {
      var tTblName = '<%=ViewData("FTSatTblName")%>';
      var tUrl = '<%=Url.Action("C_DATbUpdatRptPrintCount","cvcPrintForm") %>';
      W_FRMxUpdateRptPrnCount(tUrl,document.getElementById('otbDocNo').value,'<%=ViewData("BchCode")%>',tTblName,tW_DocType)
      W_FRMxCheckRptUse();
      var tDefValue = document.getElementById('ordSysDef').checked;
          if (tDefValue== true){
               var tRptName = document.getElementById('otbDefRpt').value;
               if (tRptName != '' ){
                   W_FRMtSentPar2Rpt('Print');
                   return true;
               }         
           }
          else{
             var tRptName = document.getElementById('otbUsrDefined').value;
              if (tRptName != '' ) {
                  W_FRMtSentPar2Rpt('Print');
                  return true;
              }
           }
       }
 }
 
  function W_FRMtRptModePreview(){
      W_FRMxCheckRptUse();      
      var tDefValue = document.getElementById('ordSysDef').checked;        
      if (tDefValue== true){
      
           var tRptName = document.getElementById('otbDefRpt').value;
           if (tRptName != '' ){
               W_FRMtSentPar2Rpt('Preview');
               return true;
           }         
       }
      else{
      
         var tRptName = document.getElementById('otbUsrDefined').value;
          if (tRptName != '' ) {
              W_FRMtSentPar2Rpt('Preview');
              return true;
          }
       }
    }
 
 function W_FRMxHandleStateChange() {

    if (oW_XmlHttp.readyState == 4) {
        if (oW_XmlHttp.status == 200) 
        {
            var valueFis = oW_XmlHttp.responseText;
            var tValue = valueFis.split("|");
            if ( tValue[0] != "0")
            {
                alert(tValue[1]);
                document.getElementById('otbFTSplOrCstName').value = document.getElementById("otbOldName").value;
                document.getElementById('otbFTSplOrCstAddr').value = document.getElementById("otbOldAddress").value;
                return false;
            }
            else 
            {
                alert(tValue[1]);
                return true;
            }
        }
    }
       
}

  function W_DATxBrowseDoc(ptObjCode, ptObjDocDate) {
        var tCase = "FindDoc";
        var tDate = J002_GETtTimeStamp ();
        var tDocType = tW_DocType; //'<%=ViewData("DocType")%>';
        var tBchCode = tW_BchCode; //'<%=ViewData("BchCode")%>';
        var tTblName = tW_TblName; //'<%=ViewData("FTSatTblName")%>';
        var tUrl = '<%=Url.Action("C_BRWxMaster","cvcPrintForm") %>';
        tUrl +='?ptCase=' + tCase + '&ptDocType=' + tDocType + '&ptBchCode=' + tBchCode + '&ptTblName=' + tTblName + '&ptDate=' + tDate ;
        var tReturnedValue = showModalDialog(encodeURI(tUrl), "Passed String", "dialogWidth:800px; dialogHeight:500px; status:no; center:yes;titlebar =0")
        if (tReturnedValue != undefined) {
            if (tReturnedValue != '12233344445555566666677777778888888899999999900000000001223334444555556666667777777888888889999999990000000000') {
                document.getElementById(ptObjCode).value = tReturnedValue.split(";")[0];
                document.getElementById(ptObjDocDate).value = tReturnedValue.split(";")[1];
            }
        }
    }

function W_FRMxGetNewDocNo() {
   // OpenMasterDialog(3,document.getElementById('tBchCode'), document.getElementById('otbDocNo'),'C_BrowseMaster', '600', '600','?ptCase=<%=ViewData("FTSatTblName")%>','<%= AdaWebPos.cCNSP.SP_GETdDateTimeNow  %>',document.getElementById('otbDocDate'),document.getElementById('FTSplOrCstCode'))
    W_DATxBrowseDoc('otbDocNo','otbDocDate');
    Rpt_createXMLHttpRequest();
    var tDocNo = document.getElementById ("otbDocNo").value;
    var tDocType = tW_DocType; //'<%=ViewData("DocType")%>';
    var tBchCode = tW_BchCode; //'<%=ViewData("BchCode")%>';
    var tTblName = tW_TblName; //'<%=ViewData("FTSatTblName")%>';
    var tSplOrCst = tW_SplOrCst; //'<%=ViewData("SplOrCstCode")%>';
    var tGetDataFrom = tW_CstOrSplCode; //'<%=ViewData("tGetDataFrom")%>';
    var tDate = J002_GETtTimeStamp();
    var tGetData ='?ptDocNo=' + tDocNo + '&ptDocType=' + tDocType + '&ptBchCode=' + tBchCode + '&ptTblName=' + tTblName + '&ptSplorCst=' + tSplOrCst + '&ptDate=' + tDate  + '&ptGetDataFrom=' + tGetDataFrom;
    var tUrl ='<%=Url.Action("C_GETtSplorCstData","cvcPrintForm") %>' + tGetData ;
    oW_XmlHttp.open('GET',encodeURI(tUrl),false);     
    oW_XmlHttp.send(null);
    var valueFis = oW_XmlHttp.responseText;
    //alert(valueFis);
     var tValue = valueFis.split("|");
                if ( tValue[0] != "" && tValue[0] != null )
                {
                    return false;
                }
                document.getElementById('otbFTSplOrCstCode').value = tValue[1];
                document.getElementById('otbFTSplOrCstName').value = tValue[2];
                document.getElementById('otbFTSplOrCstAddr').value = tValue[3];
                document.getElementById('otbFTSplOrCstTel').value = tValue[4];
                document.getElementById('otbFTSplOrCstFax').value = tValue[5];
    
}
 
  function W_FRMxBrowseRpt(ptObjCode, ptObjDocDate) {
        var tCase = "RptForm";
        var tDate = J002_GETtTimeStamp ();
        var tUrl ='<%=Url.Action("C_BRWxMaster","cvcPrintForm") %>' + '?ptCase=' + tCase + '&ptDate=' + tDate ;
        var tReturnedValue = showModalDialog(tUrl, "Passed String", "dialogWidth:800px; dialogHeight:500px; status:no; center:yes;titlebar =0")
        if (tReturnedValue != undefined) {
            if (tReturnedValue != '12233344445555566666677777778888888899999999900000000001223334444555556666667777777888888889999999990000000000') {
                document.getElementById('otbUsrDefined').value = tReturnedValue.split(";")[0];
                document.getElementById('ordUsrDef').checked = true;

            }
        }
    }
 
  function W_FRMxUpdateRptStateChange() {

    if (oW_XmlHttp.readyState == 4) {
        if (oW_XmlHttp.status == 200) {
            var valueFis = oW_XmlHttp.responseText;               

        }
    }
       
}
 function W_FRMxUpdateRptSel(ptUrl, ptTblName, ptFedName, ptDocType, ptRptSel, ptRptName ) {
    Rpt_createXMLHttpRequest();
    var tDate = J002_GETtTimeStamp ();
    var tUrl = ptUrl;
    oW_XmlHttp.open('GET',encodeURI(tUrl) ,false);     
    oW_XmlHttp.onreadystatechange = W_FRMxUpdateRptStateChange;
    oW_XmlHttp.send(null);
}


function W_FRMxCheckRptUse (){
   var tDefValue = document.getElementById('ordSysDef').checked;
   var tRptMode;
   var tRptName ;


   if (tDefValue== false){
       tRptName = document.getElementById('otbUsrDefined').value;
       tRptMode='1';
       var tUrl = '<%=Url.Action("C_DATbUpdatTSysAuto","cvcPrintForm") %>';
       W_FRMxUpdateRptSel(tUrl,tW_TblName,tW_FTSatFedCode,tW_RptType,tRptMode,tRptName);
    }
    else {
       tRptName = document.getElementById('otbDefRpt').value;
       tRptMode='0';
       var tUrl = '<%=Url.Action("C_DATbUpdatTSysAuto","cvcPrintForm") %>';
       W_FRMxUpdateRptSel(tUrl,tW_TblName,tW_FTSatFedCode,tW_RptType,tRptMode,tRptName);
    
    }
}
 
 function W_FRMtSentPar2Rpt(Mode){
    var tDoc = document.getElementById('otbDocNo').value;
    var tRptname = W_FRMxGetRptType();
    var nLang = nW_Lang; //'<%=ViewData("Lang")%>'; 
    //alert(nLang); 
    var tSqlCode = document.getElementById('otbFTSplOrCstCode').value;
    var tBchCode = document.getElementById('tBchCode').value;
    var tBarCode = '<%=ViewData("BarCode")%>'; 
    var tFsh = '<%=ViewData("Fsh")%>'; 
    var nFactor= '<%=ViewData("Factor")%>'; 
    var tRptMode =  Mode;
    var tComName ='<%=ViewData("ComName")%>';   
    var nCountDec ='<%=ViewData("CountDec")%>';  
    var cPointSpl = '<%=ViewData("ovd_cPointSpl")%>';  //*CH 11-11-11
    var tUrl = '<%=Url.Action("C_PostData","cvcPrintForm") %>';  //+ '?tDocNo=' + tDoc + '&tRptName=' + tRptname + '&nLang=' + nLang + '&tSplCode=' + tSqlCode + '&tBchCode=' + tBchCode + '&tBarCode=' + tBarCode + '&tFsh=' + tFsh + '&nFactor=' + nFactor + '&tComName=' + tComName + '&tRptMode=' + tRptMode + '&nCountDec=' + nCountDec + '&cPointSpl=' + cPointSpl; //*CH 11-11-11 New
    //var tUrl = '/' + '<%=Session("VirtualDirectory") %>' + '/wReport.aspx';
    tUrl += '?tDocNo=' + tDoc + '&tRptName=' + tRptname + '&nLang=' + nLang;
    tUrl += '&tSplCode=' + tSqlCode + '&tBchCode=' + tBchCode + '&tBarCode=' + tBarCode;
    tUrl += '&tFsh=' + tFsh + '&nFactor=' + nFactor + '&tComName=' + tComName;  
    tUrl += '&tRptMode=' + tRptMode + '&nCountDec=' + nCountDec + '&cPointSpl=' + cPointSpl;
    //window.location =encodeURI(tUrl) ;
    window.open(tUrl);
    //showModalDialog(encodeURI(tUrl), "Passed String", "dialogWidth:auto; dialogHeight:auto; status:no; center:yes;titlebar=0; scroll:no;");
    W_CLSxColseBrwFrm();
 }
 
  function W_FRMxUpdateRptPrnCount(ptUrl, ptDocNo, ptBchCode, ptFTSatTblName,ptDocType ) {
    Rpt_createXMLHttpRequest();
    var tDate = J002_GETtTimeStamp();
    var tUrl = ptUrl + '?ptDocNo=' + ptDocNo + '&ptBchCode=' + ptBchCode + '&ptTblName=' + tW_TblName + '&ptDocType=' + ptDocType + '&ptDate=' + tDate  ;
    oW_XmlHttp.open('GET',encodeURI(tUrl) , false);     
    oW_XmlHttp.onreadystatechange = W_FRMxUpdateRptStateChange;
    oW_XmlHttp.send(null);
}
function W_SETxObjValue(ptValue) {
    //alert("Chuck Intara");
    var tDocVal = ptValue.split(';')[0]; //Document Data
    var tRptVal = ptValue.split(';')[1]; //Report Name
    var tCstOrSplVal = ptValue.split(';')[2]; //Customer Or Supplier Data
    var tFlagVal = ptValue.split(';')[3];

    $('#otbDocNo').val(tDocVal.split('|')[0]);
    $('#otbDocDate').val(tDocVal.split('|')[1]);

    var tRptMode = tRptVal.split('|')[0];
    if (tRptMode == '0') {
        $('#ordSysDef').attr('checked', 'checked');
    } else {
        //.getElementById('ordUsrDef').checked = true;
        $('#ordUsrDef').attr('checked', 'checked');
    }
    $('#otbDefRpt').val(tRptVal.split('|')[1]);
    $('#otbUsrDefined').val(tRptVal.split('|')[2]);

    $('#otbFTSplOrCstCode').val(tCstOrSplVal.split('|')[0]);
    $('#otbFTSplOrCstName').val(tCstOrSplVal.split('|')[1]);
    $('#otbFTSplOrCstAddr').val(tCstOrSplVal.split('|')[2]);
    $('#otbFTSplOrCstTel').val(tCstOrSplVal.split('|')[3]);
    $('#otbFTSplOrCstFax').val(tCstOrSplVal.split('|')[4]);

    nW_Lang = J004_GETtLang(tFlagVal.split('|')[0]);
    tW_BchCode = tFlagVal.split('|')[3];
    tW_DocType = tFlagVal.split('|')[2];
    tW_TblName = tFlagVal.split('|')[4];
    tW_RptType = tFlagVal.split('|')[6];
    tW_SplOrCst = tFlagVal.split('|')[1];
    tW_FTSatFedCode = tFlagVal.split('|')[5];
    tW_CstOrSplCode = tFlagVal.split('|')[7];
    $('#nLang').val(nW_Lang);
    $('#tBchCode').val(tW_BchCode);
    W_SETxDisableSpl();
    W_SETxDisbleBttn();
}
</script>
<script type="text/javascript" >
    function W_SETxSessionAlive() {
        // Gets reference of image
        var img = document.getElementById("oimSessionAlive");

        // Set new src value, which will cause request to server, so 
        // session will stay alive
        img.src = '<%=Url.Action("C_SETxSessionAlive","cvcCenter") %>' + "?c=" + Math.random(); //counter;
    }

    // Run function for a first time
    window.setInterval("W_SETxSessionAlive()", 60000);
    </script>
</head>
<body >
<img alt="" id="oimSessionAlive" width="1" height="1" src="" style="display:none;"/>
                                              
<input type="hidden" id = "nLang" name ="nLang" value ='<%=ViewData("Lang")%>'/>
<input type="hidden" id ="tBchCode" name ="tBchCode" value ='<%=ViewData("BchCode")%>'/>
<input type="hidden" id ="tBarcode" name ="tBarcode" value ='<%=ViewData("BarCode")%>'/>
<input type="hidden" id ="tFsh" name ="tFsh" value ='<%=ViewData("Fsh")%>'/>
<input type="hidden" id ="nFactor" name ="nFactor" value ='<%=ViewData("Factor")%>'/>
<input type="hidden" id ="tConn" name ="tConn" value ='<%=ViewData("Conn")%>'/>
<input type="hidden" id ="nCountDec" name ="nCountDec" value ='<%=ViewData("CountDec")%>'/>
<input type ="hidden" id="otbOldName" />
<input type ="hidden" id="otbOldAddress" />

  <div class="xCN_AllFontFamily xCN_AllFontSize xCN_AllFontColor xW_DivMain xCN_AllBackgroundColor">
    <div class="xW_DivMainTop">
        <div class="xW_DivMainTopLeft">
            <fieldset class ="xW_FieldSetBorderColor">
                <legend class ="xCN_AllFontFamily xCN_AllFontSize xCN_AllFontGroupColor">
                    <%=ViewData("olaGrpDoc") %>
                </legend>
                <div class ="xW_DivMainTopLeftSub">
                    <div class="xW_DivDocNoCap">
                        <%=ViewData("olaDocNo")%>
                    </div>
                    <div class="xW_DivRptNo">
                        <input type="text" name ="tDocNo" id="otbDocNo" value ='<%=ViewData("DocNo")%>' />
                    </div>
                    <div class ="xCN_DivBrowData">
                        <img id="oimBrwCode" 
                         onclick="W_FRMxGetNewDocNo()"
                         alt="" 
                         class="xCN_ImgBrowData xCN_DivBrowDataSetTopMargin" 
                         name="oimBrwWahCode" 
                         src='<%=ViewData("oimgBrowse")%>'/>
                    </div>
                </div>

                <div class ="xW_DivMainTopLeftSub">
                    <div class="xW_DivDocNoCap">
                        <%=ViewData("olaDocDate")%>
                    </div>
                    <div class="xW_DivDocDate">
                        <input type="text" 
                            id="otbDocDate"  
                            class="xCN_AllReadOnlyBGColor xW_DivDocDate"
                            value ='<%=ViewData("DocDate")%>' 
                            readonly="readonly"   />                       
                    </div>
                </div>
            </fieldset>
        </div>
        <div class="xW_DivMainTopRight">
            <fieldset class="xW_FieldSetBorderColor">
                <legend class =" xCN_AllFontFamily xCN_AllFontSize xCN_AllFontGroupColor">
                    <%=ViewData("olaGrpRpt")%>
                </legend>
                <div class="xW_DivMainTopRightSub">
                    <div class="xW_DivRptCap">
                        <%=Html.RadioButton("ordDefual", True, True, New With {.id = "ordSysDef"})%> &nbsp;<%=ViewData("olaRptDefault")%>
                    </div>
                    <div class="xW_DivRptDefaultName">
                        <input type="text" 
                               id="otbDefRpt"  
                               class="xCN_AllReadOnlyBGColor"/>
                    </div>
                </div>
                <div class="xW_DivMainTopRightSub">
                    <div class="xW_DivRptCap">
                        <%=Html.RadioButton("ordDefual", False, New With {.id = "ordUsrDef"})%> &nbsp;<%=ViewData("olaRptUsrGet")%>
                    </div>
                    <div class="xW_DivRptUserDefindName">
                        <input type="text" 
                                id="otbUsrDefined" 
                                class="xCN_AllReadOnlyBGColor"/>
                    </div>
                    <div class ="xCN_DivBrowData">
                        <img id="oimUsrDefined" 
                         onclick="W_FRMxBrowseRpt()"
                         alt="" 
                         class="xCN_ImgBrowData xCN_DivBrowDataSetTopMargin" 
                         name="oimBrwWahCode" 
                         src='<%=ViewData("oimgBrowse")%>'/>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
    <div class="xW_DivMainBottom">
        <div class="xW_DivMainBottomLeft">
            <fieldset class="xW_DivMainBottomLeftfieldset xW_FieldSetBorderColor">
                <legend class="xCN_AllFontFamily xCN_AllFontSize xCN_AllFontGroupColor">
                    <%=ViewData("olaGrpCstOrSpl")%>
                </legend>
                <div class="xW_DivMainBottomLeftSub">
                    <div class ="xW_DivMainBottomCst">
                        <div class="xW_DivMainBottomCstCap">
                            <%=ViewData("olaCstCode")%>    
                        </div>
                        <div class="xW_DivMainBottomCstCap">
                            <%=ViewData("olaCstName")%>
                        </div>
                        <div class="xW_DivMainBottomLeftAddrCaption">
                            <%=ViewData("olaCstAddr")%>       
                        </div>
                        <div class="xW_DivMainBottomCstCap">
                            <%=ViewData("olaCstTel")%>        
                        </div>
                    </div>
                    
                    <div class="xW_DivMainBottomCstDetail">
                        <div class="xW_DivMainBottomCstDetailSub">
                            <div class="xW_DivCstCode">
                               <input type="text" 
                                        id="otbFTSplOrCstCode" 
                                        class="xCN_AllReadOnlyBGColor"
                                        value ='<%=Model.FTSplOrCstCode%>'   
                                        disabled ="disabled" />
                            </div>
                            <div class="xW_DivButton">
                                <input type="button" 
                                        id="ocmEdit" 
                                        onclick="W_SETxEnableSpl()"
                                        value ='<%=ViewData("olaEdit")%>'/>
                            </div>
                            <div class="xW_DivButton">
                                <input type="button" 
                                        id="ocmSave"   
                                        onclick ="W_FRMxSaveSplorCstData()"
                                        value ='<%=ViewData("olaSave")%>'/>
                            </div>
                            <div class="xW_DivButton">
                                <input type="button" 
                                        id="ocmCancelEdit"  
                                        onclick="W_SETxDisableSpl()" 
                                        value ='<%=ViewData("olaCancel")%>'/>
                            </div>
                        </div>
                        <div class="xW_DivMainBottomCstName">
                            <input type="text" 
                                    id="otbFTSplOrCstName" 
                                    class="xCN_AllReadOnlyBGColor"   
                                    onfocus ="J002_SETxKeepOldOnfocus('otbFTSplOrCstName','otbOldName')"                         
                                    value ='<%=Model.FTSplOrCstName%>' />
                        </div>
                        <div class="xW_DivMainBottomCstAddress">
                            <textarea id="otbFTSplOrCstAddr"  
                                    name="otbFTSplOrCstAddr" 
                                    onfocus ="J002_SETxKeepOldOnfocus('otbFTSplOrCstAddr','otbOldAddress')" 
                                    class="xW_DivMainBottomCstAddressTextarea xCN_AllReadOnlyBGColor"
                                    rows="3" style="resize:none"
                                    cols="1"><%=Model.FTSplOrCstAddr%></textarea>

                        </div>
                        <div class="xW_DivMainBottomCstDetailSub">
                            <div class ="xW_DivCstTelorFax">
                                <input type="text" 
                                        id="otbFTSplOrCstTel"  
                                        class="xCN_AllReadOnlyBGColor"
                                        value ='<%=Model.FTSplOrCstTel%>' />
                            </div>
                            <div class ="xW_DivCstFaxCap">
                                <%=ViewData("olaCstFax")%>
                            </div>
                            <div class ="xW_DivCstTelorFax">
                                <input type="text" 
                                        id="otbFTSplOrCstFax"  
                                        class="xCN_AllReadOnlyBGColor"
                                        value ='<%=Model.FTSplorCstFax%>'  />
                            </div>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
        <div class="xW_DivMainBottomRight">
            <fieldset class="xW_DivMainBottomRightFiedSet xW_FieldSetBorderColor" >
                <legend class="xCN_AllFontFamily xCN_AllFontSize xCN_AllFontGroupColor">
                    <%=ViewData("olaPrint")%>
                </legend>
                <div class="xW_DivRptAction">
                    <input type="submit" 
                            id ="ocmPreview"
                            onclick ="return W_FRMtRptModePreview()"
                            value ='<%=ViewData("olaPreview")%>' />
                </div>
                <div class="xW_DivRptAction">
                    <input type="submit" 
                            id ="ocmPrint"
                            onclick ="return W_FRMtRptModePrint()"
                            value ='<%=ViewData("olaPrint")%>' />
                </div>
                <div class="xW_DivRptSample">
                    <img  alt ="" src="<%=Url.Content("~/Content/img/imgIcon64x64/Report.png") %>" />
                </div>
                <div class="xW_DivRptAction">
                    <input type="submit"
                            id ="Submit1"
                            onclick ="W_FRMxCloseDoc()"
                            value ='<%=ViewData("olaCancel")%>' />
                </div>
            </fieldset>
        </div>    
    </div>
  </div>
</body>
</html> 