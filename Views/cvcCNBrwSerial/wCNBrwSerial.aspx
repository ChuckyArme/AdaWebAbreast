<%@ Page Language="VB" Inherits="System.Web.Mvc.ViewPage" %>
<%@ Import Namespace="Adasoft.WebPos.Models" %>
<%@ Import Namespace="AdaWebPos" %>
<%@ Import Namespace="Adasoft.WebPos" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
       
        
        Dim oCulture As System.Globalization.CultureInfo
        If Session("tVB_LastLang") Is Nothing OrElse Session("tVB_LastLang") = "" Then
            oCulture = New System.Globalization.CultureInfo("EN")
        Else
            oCulture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
        End If
        Resources.resGBMsg.Culture =oCulture
        Resources.resGBBrwSN.Culture =oCulture
        
        ViewData("olaTitle") = Resources.resGBBrwSN.olaTitle
        ViewData("olaPdtCode") = Resources.resGBBrwSN.olaPdtCode
        ViewData("olaQty") = Resources.resGBBrwSN.olaQty
        ViewData("olaPrice") = Resources.resGBBrwSN.olaPrice
        ViewData("olaDisc") = Resources.resGBBrwSN.olaDisc
        ViewData("olaTabDefineSN") = Resources.resGBBrwSN.olaTabDefineSN
        ViewData("olaTabGenSN") = Resources.resGBBrwSN.olaTabGenSN
        ViewData("olaSrnCode") = Resources.resGBBrwSN.olaSrnCode
        ViewData("olaButtonAdd") = Resources.resGBBrwSN.olaButtonAdd
        ViewData("olaButtonGen") = Resources.resGBBrwSN.olaButtonGen
        ViewData("olaPrefix") = Resources.resGBBrwSN.olaPrefix
        ViewData("olaStart") = Resources.resGBBrwSN.olaStart
        ViewData("olaEnd") = Resources.resGBBrwSN.olaEnd
        ViewData("olaQtyGen") = Resources.resGBBrwSN.olaQtyGen
        ViewData("olaGrdNo") = Resources.resGBBrwSN.olaGrdNo
        ViewData("olaGrdSerial") = Resources.resGBBrwSN.olaGrdSerial
        ViewData("olaOK") = Resources.resGBBrwSN.olaOK
        ViewData("olaNotEnoughSN") = Resources.resGBBrwSN.olaNotEnoughSN
        ViewData("olaButtonDel") = Resources.resGBBrwSN.olaButtonDel
        ViewData("olaButtonBrw") = Resources.resGBBrwSN.olaButtonBrw
        ViewData("olaCancel") = Resources.resGBBrwSN.olaCancel
        ViewData("olaCapPdtName") = Resources.resGBBrwSN.olaCapPdtName
        ViewData("olaDetail1") = Resources.resGBBrwSN.olaDetail1
        ViewData("olaDetail2") = Resources.resGBBrwSN.olaDetail2
      
        W_SETxLangCulture() '*CH 22-05-2012
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

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title><%=ViewData("olaTitle") %></title>
    <%=Html.Telerik().StyleSheetRegistrar().DefaultGroup(Function(group) group.Add("Site.css")).DefaultGroup(Function(group) _
                                                                          group.Add("telerik.common.css")).DefaultGroup(Function(group) group.Add("telerik.forest.css"))%>
    <link rel="stylesheet" type="text/css" href="<%=Url.Content("~/Content/AdaCss/Local/FCS_cvcTCNMCst.css") %>"/>
    <link rel="Stylesheet" type="text/css" href="<%=Url.Content("~/Content/AdaCss/Global/FCS_CNCenter.css") %>" />
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/MicrosoftAjax.js") %>" ></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/MicrosoftMvcAjax.js") %>" ></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J002_General.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J009_ShowTab.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J010_ShowTabData.js") %>"></script>
    
    <script type="text/javascript">
        var xmlW_HttpSaveSN;
        var tW_ResultSaveSN;
        returnValue = null;
        function W_CreateXMLHttpRequest_SaveSN() {
            if (window.ActiveXObject) {
                xmlW_HttpSaveSN = new ActiveXObject("Microsoft.XMLHTTP");
            }
            else if (window.XMLHttpRequest) {
                xmlW_HttpSaveSN = new XMLHttpRequest();
            }
        }

        function IsNumeric(ptText) {
           var tValidChars = "0123456789.";
           var bIsNumber=true;
           var tChar;

		   if (ptText == null || ptText ==''){
				return false;
		   }
           for (i = 0; i < ptText.length && bIsNumber == true; i++) 
           { 
              tChar = ptText.charAt(i); 
              if (tValidChars.indexOf(tChar) == -1) 
              {
                 bIsNumber = false;
              }
           }
           return bIsNumber;
        }
        
        function W_DATxCancel(){
            returnValue = '<%=ViewData("OldData") %>';
			window.close();
        }
        function W_DATtSaveSN() {
			try
			{	
				if (W_CHKnNotEnoughSN()==true){
					alert('<%=ViewData("olaNotEnoughSN")%>');
					return false;
	            } 
				W_CreateXMLHttpRequest_SaveSN();
				var tDateTimeNow = J002_GETtTimeStamp();
				var tUrl = '<%=Url.Action("C_DATtSaveSN","cvcCNBrwSerial") %>';
				tUrl += "?ptDateTimeNow=" + tDateTimeNow ;
				xmlW_HttpSaveSN.open("GET", encodeURI(tUrl),false);
				xmlW_HttpSaveSN.send(null);
				if (xmlW_HttpSaveSN.status != 200) {
				    alert('Error' + xmlW_HttpSaveSN.status + '\n' + xmlW_HttpSaveSN.responseText);
				    return false;
				}
	          	var valueFis = xmlW_HttpSaveSN.responseText;
	          	var aArr = valueFis.split('|');
	          	if (aArr[0] != null && aArr[0] != '') {
                    alert(aArr[0]);
	          	}
	          	returnValue = valueFis.substring(1, valueFis.length);
                window.close();
            }
            catch (ex)
            {	J002_SHWxMsgError('W_DATtSaveSN',ex)
            }
        }
        
        function W_CHKnNotEnoughSN(){
			try
			{	
				var cFactor = '<%=ViewData("FCPdtFactor")%>';
				cFactor = Number(cFactor);
				var cSNCount = document.getElementById('FCPdtQty').value;
				cSNCount = Number(cSNCount);
				if ((cSNCount%cFactor)>0){
					return true;
				}
				return false;
			}
            catch (ex)
            {	J002_SHWxMsgError('W_CHKnNotEnoughSN',ex)
            }
        }
       
        function W_GETtSerialCount() {
			W_CreateXMLHttpRequest_SaveSN();
			var tDateTimeNow = J002_GETtTimeStamp();
			var tUrl = '<%=Url.Action("C_GETtSerialCount","cvcCNBrwSerial") %>' + "?ptDateTimeNow=" + tDateTimeNow;
            xmlW_HttpSaveSN.open("GET", encodeURI(tUrl) , false);
            xmlW_HttpSaveSN.send(null);
            var valueFis = xmlW_HttpSaveSN.responseText;
            tW_ResultSaveSN = valueFis;
            document.getElementById('FCPdtQty').value = tW_ResultSaveSN;
        }
        
        function ocmAdd_onclick() {
			try
			{	
				W_DATxAddSerialItem();
				return true;
            }
            catch (ex)
            {	J002_SHWxMsgError('W_CHKbHasSerial',ex)
            }
            finally
            {	document.getElementById('otbSN').value="";
            }
        }

        function W_DATxAddSerialItem(ptSrnList) {
			try
			{
			    var tSrnCode;
			    if (ptSrnList != null && ptSrnList != "") {
			        tSrnCode = ptSrnList;
			    }
			    else {
			        tSrnCode = document.getElementById('otbSN').value;
			    }
				var tSeqNo = '<%=ViewData("SeqNo")%>';
				tSrnCode = J002_STRttrim(tSrnCode);
				if (tSrnCode==null || tSrnCode == ''){
					return false;
				}
				var oXmlHttp = J002_GEToXMLHttpRequest();
				var tDateTimeNow = J002_GETtTimeStamp();
				var tUrl = '<%=Url.Action("C_DATxAddSerialItem","cvcCNBrwSerial") %>' ;
				//tUrl += '?ptSrnCode=' + tSrnCode;
				tUrl += '?ptSrnCode=' + escape(tSrnCode); //*CH 29-05-2012
				tUrl += '&ptSeqNo=' + tSeqNo ;
				tUrl += '&ptDateTimeNow=' + tDateTimeNow;
				if (ptSrnList != null && ptSrnList != "") {
                    tUrl += '&ptMulti=1' ;
                }
                oXmlHttp.open('GET',encodeURI(tUrl),false);
				oXmlHttp.send(null);
				var tErr = oXmlHttp.responseText;
				if (tErr != null && tErr != ""){
				    alert(tErr);
				    return false;
				}
				W_SETxRebindGrid();
				W_GETtSerialCount();
			}
            catch (ex)
            {	J002_SHWxMsgError('W_DATxAddSerialItem',ex)
            }
        }
        
       	function W_DATxDelSerialItem(){
			try
			{	
				var tSeqItem = document.getElementById('otbSeqNo').value;
				tSeqItem = J002_STRttrim(tSeqItem);
				if (tSeqItem==null || tSeqItem == ''){
					return false;
				}
				var oXmlHttp = J002_GEToXMLHttpRequest();
				var tDateTimeNow = J002_GETtTimeStamp();
				var tUrl = '<%=Url.Action("C_DATxDelSerialItem","cvcCNBrwSerial") %>';
				tUrl += '?ptSeqNo=' + tSeqItem ;
				tUrl += '&ptDateTimeNow=' + tDateTimeNow;
				//alert(tUrl);
				oXmlHttp.open('GET',encodeURI(tUrl),false);
				oXmlHttp.send(null);
				var tErr = oXmlHttp.responseText;
				if (tErr != null && tErr != ""){
				    alert(tErr);
				}
				W_SETxRebindGrid();
				W_GETtSerialCount();
			}
            catch (ex)
            {	J002_SHWxMsgError('W_DATxDelSerialItem',ex)
            }
		}
		
		function W_SETxRebindGrid(){
			try
			{	
				var oGrid = $('#GridSN').data('tGrid');
				oGrid.rebind();
			}
			catch(ex)
			{	J002_SHWxMsgError("W_SETxRebindGrid",ex);
			}
		}
        
        function W_CHKbHasSerial(){
			try
			{
				W_CreateXMLHttpRequest_SaveSN();
				var tDataTimeNow = J002_GETtTimeStamp();
				var tPdtCode = '<%=ViewData("FTPdtCode")%>';
				var tSrnCode = document.getElementById('otbSN').value;
				var tUrl = '<%=Url.Action("C_CHKtHasSerial","cvcCNBrwSerial") %>' + "?ptPdtcode=" + tPdtCode + "&ptSrnCode=" + tSrnCode + "&ptDateTimeNow=" + tDataTimeNow;
				xmlW_HttpSaveSN.open("GET", encodeURI(tUrl) , false);
				xmlW_HttpSaveSN.send(null);
				var tReturn = xmlW_HttpSaveSN.responseText;
				var oArr = tReturn.split("|");
				if (oArr[0] != null && oArr[0] != ''){
					alert('C_CHKtHasSerial : '+ oArr[0]);
				}
				if (oArr[1] != ''){
					return true;
				}
				return false;
            }
            catch (ex)
            {	J002_SHWxMsgError('W_CHKbHasSerial',ex)
            }
            
        }

        function otbSN_onkeypress($char, $mozChar)
        {
            var nKeyCode;
            if($mozChar != null)
            {
    	        nKeyCode = $mozChar;
    	    } else
            {
    	        nKeyCode = $char;
            }
            if (nKeyCode == 13) {
                ocmAdd_onclick()
            }
           
        }
       
        function ocmAddMulti_onclick() {
            W_ADJxLength();
            W_GETnQty();
            var oPrefix = document.getElementById('otbPrefix');
            var oFrom = document.getElementById('otbStartNum');
            var oTo = document.getElementById('otbEndNum');
            var oQty = document.getElementById('otbSrnQty');
            var nLenFrom = (oFrom.value + '').length ;
            var nStartValue = Number(oFrom.value);
            var tSN;
            var tSrnCode
            var tSrnList='';
            for(i=0;i<Number(oQty.value);i++)
            {
                tSN=String(nStartValue);
                var nLenSN=tSN.length;
                for (j=1;j<=nLenFrom-nLenSN;j++)
                {
                    tSN = "0" + tSN;
                }
                tSrnCode = oPrefix.value + tSN;
                tSrnList += tSrnCode + '|';
                
                nStartValue=nStartValue+1;
            }
            if (tSrnList.length > 0) {
                tSrnList = tSrnList.substring(0, tSrnList.length-1);
            }
            W_DATxAddSerialItem(tSrnList);
        }
        
        function W_ADJxLength()
        {
            var oFrom = document.getElementById('otbStartNum');
            var oTo = document.getElementById('otbEndNum');
            var nLenFrom = (oFrom.value + '').length ;
            var nLenTo = oTo.value.length ;
            if (nLenFrom > nLenTo)
            {
                for (i=1;i<=nLenFrom-nLenTo;i++)
                {
                    oTo.value = "0" + oTo.value;
                }
            } else {
                if (nLenFrom < nLenTo)
                for (i=1;i<=nLenFrom-nLenTo;i++)
                {
                    oFrom.value = "0" + oFrom.value;
                }
            }
        
        }
        
        function W_GETnQty()
        {
            var oFrom = document.getElementById('otbStartNum');
            var oTo = document.getElementById('otbEndNum');
            var nStartValue = Number(oFrom.value);
            var nEndValue = Number(oTo.value);
            if((nStartValue != null) && (nEndValue != null))
            {
                if((nEndValue-nStartValue+1)>0) 
                {
                    return nEndValue-nStartValue+1;
                } else {
                    return 0;
                }
            } else {
                return 0;
            }            
        }

        function onRowSelected(e) {
            try {
                document.getElementById("otbSeqNo").value = e.row.cells[0].innerHTML;
            }
            catch (ex) {
                alert(ex)
            }
        }

        function otbStartNum_onblur() 
        {
            var oQty = document.getElementById('otbSrnQty');
            oQty.value = W_GETnQty();
        }

        function otbEndNum_onblur() 
        {
            var oQty = document.getElementById('otbSrnQty');
            oQty.value = W_GETnQty();
        }

        function otbSrnQty_onblur() 
        {
            var oFrom = document.getElementById('otbStartNum');
            var oTo = document.getElementById('otbEndNum');
            var oQty = document.getElementById('otbSrnQty');
            var nStartValue = Number(oFrom.value);
            if (Number(oQty.value) > 0)
            {
                oTo.value = nStartValue + Number(oQty.value) - 1
                W_ADJxLength()
            }
        }

        function otbPrefix_onkeypress($char, $mozChar)
        {
            var nKeyCode;
            if($mozChar != null)
            {
    	        nKeyCode = $mozChar;
    	    } else
            {
    	        nKeyCode = $char;
            }
            if (nKeyCode == 13) {
                var o = document.getElementById('otbStartNum');
                o.select();
            }
        }

        function otbStartNum_onkeypress($char, $mozChar) 
        {
            var nKeyCode;
            if($mozChar != null)
            {
    	        nKeyCode = $mozChar;
    	    } else
            {
    	        nKeyCode = $char;
            }
            if (nKeyCode == 13) {
                var o = document.getElementById('otbEndNum');
                o.select();
            }
       

        }

        function otbEndNum_onkeypress($char, $mozChar) 
        {
            var nKeyCode;
            if($mozChar != null)
            {
    	        nKeyCode = $mozChar;
    	    } else
            {
    	        nKeyCode = $char;
            }
            if (nKeyCode == 13) {
                var o = document.getElementById('otbSrnQty');
                o.select();
            }
        }

        function otbSrnQty_onkeypress($char, $mozChar) 
        {
            var nKeyCode;
            if($mozChar != null)
            {
    	        nKeyCode = $mozChar;
    	    } else
            {
    	        nKeyCode = $char;
            }
            if (nKeyCode == 13) 
            {
                ocmAddMulti_onclick()
            }

        }
        function W_SETxDiableAll() {
            J002_SETxDisable("otbSN", true);
            J002_SETxDisable("ocmBrw", true);
            J002_SETxDisable("ocmAdd", true);
            J002_SETxDisable("ocmDelete", true);
        }
        function W_BRWxSerialSub() {
            var tDate = J002_GETtTimeStamp();
            var tPdtCode = $('#otbPdtCodeHidden').val();
            var tUrl = '<%=Url.Action("wCNBrwSerialSub","cvcCNBrwSerial") %>' + '?ptDate=' + tDate + '&ptPdtCode=' + tPdtCode;
            var tReturnedValue = showModalDialog(encodeURI(tUrl), "Passed String", "dialogWidth:500px; dialogHeight:400px; status:no; center:yes;titlebar =0");
            
            if (tReturnedValue != null && tReturnedValue != '') {
                W_DATxAddSerialItem(tReturnedValue);
            }
        }
    </script>
    
    <script type="text/javascript">
     <!--    Begin
    window.onload = function() {
        W_GETtSerialCount();
        if (window.chrome) {
            //ตั้งค่าขนาดหน้าจอใหม่ สำหรับ Chrome
            window.resizeTo(515, 450);
        }
        switch ('<%=ViewData("SerialType")%>') {
            case '0': //case Purchase
                J002_SETxDisable("ocmBrw", true); break;
            case '1': //case Check stock
                document.getElementById("odiDiv_Detail2").style.display = "none"; break;
            case '2': //case Sale
                document.getElementById("odiDiv_Detail2").style.display = "none"; break;
            case '3': //case ReadOnly
                W_SETxDiableAll();
                document.getElementById("odiDiv_Detail2").style.display = "none"; break;
        }
    }
      // End -->
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
<body style="background-color:#f9fdef;">
    <img alt="" id="oimSessionAlive" width="1" height="1" src="" style="display:none;"/>
	<%--Hidden Object--%>
	<input id="FCPdtQty"  type="hidden"  />
    <input id="otbSeqNo" type="hidden" />
	<input id="otbPdtCodeHidden" type="hidden" value="<%=ViewData("PdtCode")%>" />
	
	
	<div style="width:480px;height:100%;margin: 10px 10px 10px 10px;">
	    <%--Div Product Name--%>
	    <div style="margin:15px auto 10px auto;font-weight:bold;">
	        <label><%=ViewData("olaCapPdtName") %> : (<%=ViewData("UnitName") %> x <%=ViewData("PdtFactor") %>) <%=ViewData("PdtName") %> </label>
	    </div>
	    
	    <%--Div Tab--%>
	    <div class ="xCN_DivDetailHDTabDetail123Sub" style="width:100%;height:auto;">
            <%--   Div TabToppic--%>
            <div class="xCN_DivTabToppic">
                <a href="#" 
                    onclick="{J010_SHWxTabData(0,'odiDiv1','odiDiv2');J009_SHWxTabTop(0,'odiDiv_Detail1','odiDiv_Detail2')}">
                    <div id="odiDiv_Detail1" class="xCN_DivTabActive">
                        <%=ViewData("olaDetail1")%>
                    </div>
                </a>
                <a href="#" 
                    onclick="{J010_SHWxTabData(1,'odiDiv1','odiDiv2');J009_SHWxTabTop(1,'odiDiv_Detail1','odiDiv_Detail2')}">
                    <div id="odiDiv_Detail2" class="xCN_DivTabUnActive">
                        <%=ViewData("olaDetail2")%>
                    </div>
                </a>
            </div>
            <%--   Div Detail 1--%>
            <div id="odiDiv1" >
                <div class="xCN_DivTabDetail" >
                      <div class="xCN_AllBackgroundColor xCN_DivTabDetailSub" style="width:465px;height:70px;">
                            <div style="width:auto;height:auto;margin:25px auto auto 40px;">
                                <div style="float:left">
                                    <label><%=ViewData("olaSrnCode")%></label>
                                </div>
                                <div style="float:left;margin-left:5px;">
                                    <input id="otbSN" type="text" maxlength="50" style=" max-width:300" onkeypress="return otbSN_onkeypress(event.keyCode, event.which)" />
                                </div>
                                <div style="float:left;margin-left:5px;">
                                    <input id="ocmAdd" type="button" value='<%=ViewData("olaButtonAdd") %>' onclick="return ocmAdd_onclick()" />
                                            <input id ="ocmDelete" type="button" value='<%=ViewData("olaButtonDel")%>' onclick="W_DATxDelSerialItem();" />
                                            <input id="ocmBrw" type="button" value='<%=ViewData("olaButtonBrw")%>' onclick="W_BRWxSerialSub();" />
                                </div>  
                            </div>
                      </div> 
                </div>
                       
            </div>
            <%--   Div Detail 2--%>
            <div id="odiDiv2" class="xCN_DivTabDisplay">
                <div class="xCN_DivTabDetail">
                     <div class="xCN_AllBackgroundColor xCN_DivTabDetailSub" style="width:465px;height:70px;">
                            <div style="width:auto;height:auto;margin:15px auto auto 40px;">
                                <div  style="float:left;">
                                    <div>
                                        <label><%=ViewData("olaPrefix") %></label>
                                    </div>
                                    <div>
                                        <input id="otbPrefix" type="text" style="width:220px; max-width:100px" onkeypress="return otbPrefix_onkeypress(event.keyCode, event.which)" />
                                    </div>
                                </div >
                                <div style="float:left;">
                                    <div>
                                        <label><%=ViewData("olaStart") %></label>
                                    </div>
                                    <div>
                                        <input id="otbStartNum" type="text" style="width:65px; max-width:75px" onblur="return otbStartNum_onblur()" onkeypress="return otbStartNum_onkeypress(event.keyCode, event.which)" />
                                    </div>
                                </div>
                                <div style="float:left;">
                                    <div>
                                        <label><%=ViewData("olaEnd") %></label>
                                    </div>
                                    <div>
                                        <input id="otbEndNum" onblur="return otbEndNum_onblur()" onkeypress="return otbEndNum_onkeypress(event.keyCode, event.which)"
                                        style="width: 65px; max-width: 75px" type="text" />
                                    </div>
                                </div>
                                <div style="float:left;">
                                    <div>
                                        <label><%=ViewData("olaQtyGen") %></label>
                                    </div>
                                    <div>
                                        <input id="otbSrnQty" onblur="return otbSrnQty_onblur()" onkeypress="return otbSrnQty_onkeypress(event.keyCode, event.which)"
                                        style="width: 65px; max-width: 75px" type="text" />
                                        <input id="ocmAddMulti" style="vertical-align:top;" type="button" value='<%=ViewData("olaButtonGen") %>' onclick="return ocmAddMulti_onclick()" />
                                    </div>
                                </div>
                            </div>
                     </div> 
                </div>
            </div><%--Div2--%>
        </div>
        
        <%--Div Grid--%>
        <div style="width:auto;">
            <%
                Dim tController As String = ViewData("CtrlName")
                Dim oData As IEnumerable(Of cmlBrwSN) = ViewData("SNData")
                Dim gridBuilder = Html.Telerik().Grid(oData).HtmlAttributes(New With {.style = "table-layout: fixed;white-space:nowrap; font:Tahoma, Geneva, sans-serif; font-size:11px"})
                gridBuilder.Name("GridSN")
                gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FNSeqNo).Title(ViewData("olaGrdNo")).Width("20%") _
                    .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                    .HtmlAttributes(New With {.style = "text-align:center"}))
                gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FTSrnCode).Title(ViewData("olaGrdSerial")).Width("80%") _
                    .HeaderHtmlAttributes(New With {.style = "text-align:center"}) _
                    .HtmlAttributes(New With {.style = "text-align:left"}))
                gridBuilder.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                   .Select("_Refresh_SN", tController)))
                gridBuilder.DataKeys(Function(keys) (keys.Add(Function(c) c.FTSrnCode)))
                gridBuilder.Selectable()
                gridBuilder.Footer(False)
                gridBuilder.Scrollable(Function(o) o.Height(160))
                gridBuilder.ClientEvents(Function(Events) Events.OnRowSelect("onRowSelected"))
                gridBuilder.Render()
            %>
        </div>
        
        <%--Div Button--%>
        <div style="float:right;margin-top:10px;width:auto;">
            <input type="button" value='<%=ViewData("olaOK") %>' style="width: 75px;" onclick="W_DATtSaveSN();" />
            <input type="button" value='<%=ViewData("olaCancel") %>' style="width: 75px;" onclick="W_DATxCancel()" />
        </div>
    </div>
	
	
    
    <%  
        Html.Telerik().ScriptRegistrar() _
            .DefaultGroup(Function(group) group.Add("telerik.examples.js") _
            .Compress(True)) _
            .OnDocumentReady("prettyPrint") _
            .Render()
    %>  
</body>
</html>
