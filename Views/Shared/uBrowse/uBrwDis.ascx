<%@ Control Language="VB" Inherits="System.Web.Mvc.ViewUserControl" %>
    <script runat="server">
        Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
            Dim tLang As String = Session("tVB_LastLang")
            If tLang Is Nothing OrElse tLang = "" Then
                tLang = "EN"
            End If
        
            Dim oCulture = New System.Globalization.CultureInfo(tLang)
            Resources.resGBMsg.Culture = oCulture
            
            ViewData("olaNo") = Resources.resGBMsg.tMsgDiscNo
            ViewData("B4") = Resources.resGBMsg.tMsgDiscB4
            ViewData("olaCal") = Resources.resGBMsg.tMsgDiscCal
            ViewData("olaAf") = Resources.resGBMsg.tMsgDiscAf
            ViewData("olaType") = Resources.resGBMsg.tMsgDiscType
            ViewData("olaDisc") = Resources.resGBMsg.tMsgDiscDisc
            ViewData("olaTitle") = Resources.resGBMsg.tMsgDiscTitle
            ViewData("OK") = Resources.resGBMsg.tMsgDiscOK
            ViewData("Cancel") = Resources.resGBMsg.tMsgDiscCancel
            ViewData("olaTypeVal") = Resources.resGBMsg.tMsgDiscTypeVal
        End Sub
    </script>
<table class='xW_TableHead'>
    <tr class='xW_TrHead'>
    	<form id="Discount">
        <td valign="top" colspan="2">
        <%--<td class='xW_TdHead'>--%>
        <div id="odiScroll" class='xW_DivTableDetail'>
            <%--<table id='otbDisCount' width="300px" border="1" cellspacing="0" cellpadding="0" style='border-collapse:collapse;'>--%>
            <table id='otbDisCount' class='xW_TableDetail' border="1" cellspacing="0" cellpadding="0">
              <tr id="R0" align="center">
                <th class='xW_TblDataDT'>
                    <%=ViewData("olaNo")%>
                </th>
                <th class='xW_TblDataDT'><%=ViewData("B4")%></th>
                <th class='xW_TblDataDT'><%=ViewData("olaCal")%></th>
                <th class='xW_TblDataDT'><%=ViewData("olaAf")%></th>
                <th class='xW_TblDataDT'><%=ViewData("olaType")%></th>
                <th class='xW_TblDataDT'><%=ViewData("olaDisc")%></th>
              </tr>
              <tr id="R1">
                <td class='xW_TblDataDT' align="center">
                	<label id="No1">1</label>
                </td>
                <td class='xW_TblDataDT'>
                	<input type="text" id="B1" class="xCN_AllReadOnlyBGColor xW_otbColB" readonly="readonly"/>
                </td>
                <td class='xW_TblDataDT'>
                	<input type="text" id="C1" class="xCN_AllReadOnlyBGColor xW_otbColC" readonly="readonly"/>
                </td>
                <td class='xW_TblDataDT'>
                	<input type="text" id="A1" class="xCN_AllReadOnlyBGColor xW_otbColA" readonly="readonly"/>
                 </td>
                <td class='xW_TblDataDT'>
                	<input type="text" id="D1" class="xCN_AllReadOnlyBGColor xW_otbColD" readonly="readonly"/>
                </td>
                <td class='xW_TblDataDT'>
                	<input type="text" id="S1" class='xW_otbColS' 
                            onkeypress="return W_FRMxDisOnKeyPress(1,event.keyCode,event.which);" 
                            onfocus="W_SETxByFocus(this);" onblur="W_FRMxDisOnBlur(1)"/>
                 </td>
              </tr>              
            </table>
        </div>
        </td>
        </form>
    </tr>
    <tr>
    	<td>
        	<input type="text" id="otbResult" class="xCN_AllReadOnlyBGColor" style="width:100px" value='<%=ViewData("tDisText")%>' readonly="readonly" />
        </td>
       
        <td align="center">
        	<input type="button" value='<%=ViewData("OK")%>' style=" width:60px" onclick="W_GETxPassedValue()" />
            <input type="button" value='<%=ViewData("Cancel")%>' style="width:60px" onclick="W_CancelPassedValue" />
        </td>
    </tr>
</table>

<link href="<%=Url.Content("~/Content/AdaCss/Local/FCS_uBrwDis.css") %>" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J002_General.js") %>"></script>
<script type="text/javascript">
    var nW_DecAmtForShw = '<%=Session("nVB_CNDecAmtForShw")%>';
    var cW_Net = 0;
    function W_SETxByFocus(poThis) {
        tW_OldText = poThis.value;
        poThis.select();
    }

    function W_FRMxDisOnKeyPress(pnRow, ptKeyCode, ptWhich) {
        tW_OldText = '';
        var tKey = ptKeyCode;
        if (ptWhich != null && ptWhich) {
            tKey = ptWhich;
        }
        var tDisText = document.getElementById('S' + pnRow).value;
        var tReturn = J002_CHKbCheckDisTxtKey(tDisText, ptKeyCode, ptWhich);
        if (tReturn == false) {
            return false;
        }

        if (tKey == 13) {
            var nNewRow = pnRow + 1;


            //if (pnRow >= 9) {
            //    var oFocus2 = document.getElementById('S' + pnRow);
            //    newRow = pnRow;
            //    var oType = document.getElementById('D' + pnRow);
            //    oType.value = '';
            //    Recal();
            //    tW_OldText = oFocus2.value;
            //}                
            //var oFocus = document.getElementById('S' + newRow);
            //oFocus.focus();
            //oFocus.select();
            var nBVal = parseFloat($('#B' + pnRow).val().replace(',',''));
            var nSVal = parseFloat($('#S' + pnRow).val());
            var table = document.getElementById('otbDisCount');
            var rowCount = table.rows.length;
            rowCount = rowCount - 1;
            if (nBVal > nSVal) {
                if (pnRow == rowCount) {
                    if ($('#S' + pnRow).val() != '') { C_AddColumnDis(); }
                } else {
                    if ($('#S' + pnRow).val() == '') { $('#S' + pnRow).val('0'); }
                    var oFocus = document.getElementById('S' + nNewRow);
                    oFocus.focus();
                    oFocus.select();
                }
            }
        }
        return !(tKey == 13);
    }
    function C_DELxColumnDis() {
        try {
            var table = document.getElementById('otbDisCount');
            var rowCount = table.rows.length;

            for (var i = 2; i < rowCount; i++) {
                table.deleteRow(i);
                rowCount--;
                i--;
            }
        } catch (e) {
            alert(e);
        }
    }
    function C_AddColumnDis() {
        var table = document.getElementById('otbDisCount');
        var rowCount = table.rows.length;
        var row = table.insertRow(rowCount);
        var colCount = table.rows[0].cells.length;
        var nNewRow = rowCount;
        rowCount = rowCount - 1;
        for (var i = 0; i < colCount; i++) {

            var newcell = row.insertCell(i);
            var tNewCell = table.rows[1].cells[i].innerHTML;
            tNewCell = tNewCell.replace("No1", "No" + nNewRow);
            tNewCell = tNewCell.replace("B1", "B" + nNewRow);
            tNewCell = tNewCell.replace("C1", "C" + nNewRow);
            tNewCell = tNewCell.replace("A1", "A" + nNewRow);
            tNewCell = tNewCell.replace("D1", "D" + nNewRow);
            tNewCell = tNewCell.replace("S1", "S" + nNewRow);
            tNewCell = tNewCell.replace("(1,", "(" + nNewRow + ',');
            newcell.innerHTML = tNewCell;
            //newcell.innerHTML = table.rows[0].cells[i].innerHTML;
            //alert(newcell.childNodes);
            switch (newcell.childNodes[0].type) {
                case undefined:
                    //newcell.outerHTML = "<td class='xW_TblDataDT' align='center'>" + newcell.innerHTML + "</td>";
                    //newcell.nodeName = "td class='xW_TblDataDT' align='center'";
                    newcell.align = 'center';
                    newcell.className = 'xW_TblDataDT';
                    newcell.childNodes[0].innerHTML = nNewRow;
                    //document.getElementById('No1').
                    break;
                case "text":
                    newcell.className = 'xW_TblDataDT';
                    newcell.childNodes[0].value = "";
                    break;
            }
        }
        var oFocus = document.getElementById('S' + nNewRow);
        oFocus.focus();
        oFocus.select();
    }

    function W_FRMxDisOnBlur(pnRow) {
        var oSource = document.getElementById('S' + pnRow);
        var oType = document.getElementById('D' + pnRow);
        if (oSource.value == '' || tW_OldText != oSource.value) {
            oType.value = '';
            W_PRCxCalDiscount();
        }
    }
    function W_PRCxCalDiscount() {
        W_SETxStoreText();
        var oResult = document.getElementById('otbResult');
        var aSplitDis = oResult.value.split(",");
        W_FRMxClearAll();
        
        var cBefore = cW_Net;
        for (var nI = 0; nI <= aSplitDis.length - 1; nI++) {
            if (aSplitDis[nI] == null || aSplitDis[nI] <= 0) {
                break;
            }
            var oSource = document.getElementById('S' + (nI + 1));
            oSource.value = aSplitDis[nI];
            W_PRCxCalDisc(nI + 1, cBefore);
            var oAfter = document.getElementById('A' + (nI + 1));
            var oBefore = document.getElementById('B' + (nI + 2));
            cBefore = oAfter.value.replace(',',''); //Replace *CH 21-01-2013
            if (cBefore < 0) {
                W_SETxStoreText();
                break;
            }
            if (oBefore != null) {
                oBefore.value = J002_DECcRound(cBefore, nW_DecAmtForShw, true);
            }
        }
        if (oResult.value == '') {
            document.getElementById('B' + (nI + 1)).value = J002_DECcRound(cW_Net, nW_DecAmtForShw, true);
        }
        W_SETxStoreText();
        oResult.value = oResult.value.replace('-', '%');
    }
    function W_SETxStoreText() {
        var table = document.getElementById('otbDisCount');
        var rowCount = table.rows.length;
        var oResult = document.getElementById('otbResult');
        oResult.value = '';
        for (var nI = 1; nI <= rowCount - 1; nI++) {
            if (document.getElementById('S' + nI).value == '' || document.getElementById('S' + nI).value <= 0) {
                continue;
            } else {
                var oType = document.getElementById('D' + nI);
                var tType = '';
                if (oType.value == '%') {
                    tType = oType.value;
                }
                if (oResult.value == '') {
                    oResult.value = document.getElementById('S' + nI).value + tType;
                } else {
                    oResult.value = oResult.value + ',' + document.getElementById('S' + nI).value + tType;
                }
            }
        }
    }
    function W_FRMxClearAll() {
        var oForm = document.getElementById('Discount');
        for (var i = 0; i < oForm.elements.length; i++) {
            oForm.elements[i].value = '';
        }
    }
    function W_PRCxCalDisc(pnRow, pcNet) {
        var bDisPer = false;
        var cDis;
        var tType;
        var cBefore;
        var cCal;
        var cAfter;
        var oDis = document.getElementById('S' + pnRow);
        var oBefore = document.getElementById('B' + pnRow);
        var oBeforeNext = document.getElementById('B' + (pnRow + 1));
        var oCal = document.getElementById('C' + pnRow);
        var oAfter = document.getElementById('A' + pnRow);
        var oType = document.getElementById('D' + pnRow);

        var tKey = oDis.value;
        cBefore = pcNet;

        if (oDis.value == '') {
            return false;
        }

        if (tKey.charAt(tKey.length - 1) == '-' || tKey.charAt(tKey.length - 1) == '%') {
            tKey = tKey.substring(0, tKey.length - 1);
            bDisPer = true;
        }
        if (bDisPer == false) {
            cDis = parseFloat(tKey);
            tType = '<%=ViewData("olaTypeVal")%>';
        } else {
            cDis = (cBefore * parseFloat(tKey)) / 100.0;
            tType = '%';
        }
        cCal = cDis;
        cAfter = cBefore - cCal;
        if (cAfter >= 0 && cBefore > 0) {
            oDis.value = tKey;
            oBefore.value = J002_DECcRound(cBefore, nW_DecAmtForShw, true); //W_DATnRound(cBefore, 2);
            oCal.value = J002_DECcRound(cCal, nW_DecAmtForShw, true); //W_DATnRound(cCal, 2);
            oAfter.value = J002_DECcRound(cAfter, nW_DecAmtForShw, true); // W_DATnRound(cAfter, 2);
            oType.value = tType;
            if (oBeforeNext != null) {
                oBeforeNext.value = oAfter.value;
            }
        } else {
            oBefore.value = J002_DECcRound(cBefore, nW_DecAmtForShw, true); // W_DATnRound(cBefore, 2);
            oDis.value = '';
        }
    }

    function C_SETxValueNet(ptNet, ptDisCount) { //สำหรับหน้าวิว ส่งข้อมูลมาให้
        var aRow = ptDisCount.split(',');
        cW_Net = parseFloat(ptNet);
        W_FRMxClearAll();
        C_DELxColumnDis();
        C_ADDxColumnDis(aRow.length);
        //$('#otbResult').val(ptDisCount);
        document.getElementById('otbResult').value = ptDisCount;
        W_DATxCalDiscount();
    }
    function W_DATxCalDiscount() {
        var oResult = document.getElementById('otbResult');
        var aSplitDis = oResult.value.split(",");

        var cBefore = cW_Net;
        for (var nI = 0; nI <= aSplitDis.length - 1; nI++) {
            if (aSplitDis[nI] == null || aSplitDis[nI] <= 0) {
                break;
            }
            var oSource = document.getElementById('S' + (nI + 1));
            oSource.value = aSplitDis[nI];
            W_PRCxCalDisc(nI + 1, cBefore);
            var oAfter = document.getElementById('A' + (nI + 1));
            var oBefore = document.getElementById('B' + (nI + 2));
            cBefore = oAfter.value.replace(',', ''); //Replace *CH 21-01-2013
            if (cBefore < 0) {
                W_SETxStoreText();
                break;
            }
            if (oBefore != null) {
                oBefore.value = J002_DECcRound(cBefore, nW_DecAmtForShw, true);
            }
        }
        if (oResult.value == '') {
            document.getElementById('B' + (nI + 1)).value = J002_DECcRound(cW_Net, nW_DecAmtForShw, true);
        }
        W_SETxStoreText();
        oResult.value = oResult.value.replace('-', '%');
    }
    function C_ADDxColumnDis(pnRow) { //เพิ่มแถวให้เหมาะสำหรับแสดงข้อมูลที่หน้าวิวส่งมาให้
        var table = document.getElementById('otbDisCount');
        for (var nRow = 0; nRow < pnRow; nRow++) {
            var rowCount = table.rows.length;
            var row = table.insertRow(rowCount);
            var colCount = table.rows[0].cells.length;
            var nNewRow = rowCount;
            rowCount = rowCount - 1;
            for (var i = 0; i < colCount; i++) {

                var newcell = row.insertCell(i);
                var tNewCell = table.rows[1].cells[i].innerHTML;
                tNewCell = tNewCell.replace("No1", "No" + nNewRow);
                tNewCell = tNewCell.replace("B1", "B" + nNewRow);
                tNewCell = tNewCell.replace("C1", "C" + nNewRow);
                tNewCell = tNewCell.replace("A1", "A" + nNewRow);
                tNewCell = tNewCell.replace("D1", "D" + nNewRow);
                tNewCell = tNewCell.replace("S1", "S" + nNewRow);
                tNewCell = tNewCell.replace("(1,", "(" + nNewRow + ',');
                newcell.innerHTML = tNewCell;
                switch (newcell.childNodes[0].type) {
                    case undefined:
                        newcell.align = 'center';
                        newcell.className = 'xW_TblDataDT';
                        newcell.childNodes[0].innerHTML = nNewRow;
                        break;
                    case "text":
                        newcell.className = 'xW_TblDataDT';
                        newcell.childNodes[0].value = "";
                        break;
                }
            }
            //var oFocus = document.getElementById('S' + nNewRow);
            //oFocus.focus();
            //oFocus.select();
        }
    }

    function W_GETxSendValue(ptNet, ptDis) {//ส่งข้อมูลการตั้งส่วนลดไปหน้า View
        //*ฟังก์ใชั้นนี้ต้องมีที่หน้า View สำหรับรับข้อมูล
        W_SETxDiscount(ptNet, ptDis);
    }
    function W_CancelPassedValue() {
        W_GETxSendValue('0', '');
    }
    function W_GETxPassedValue() {
        var table = document.getElementById('otbDisCount');
        var rowCount = table.rows.length - 1;
        var tNet = $('#B' + rowCount).val();
        var tDisValue = $('#otbResult').val();
        W_GETxSendValue(tNet, tDisValue);
    }
</script>