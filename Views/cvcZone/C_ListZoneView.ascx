
<%@ Control Language="VB" Inherits="System.Web.Mvc.ViewUserControl(Of AdaWebPos.C_TCNMZone)" %>
<%@ Import Namespace="System.Resources" %>
<%@ Import Namespace="AdaWebPos" %>
<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tLastLang As String = Session("tVB_LastLang")

        If tLastLang Is Nothing AndAlso tLastLang = "" Then
            AdaWebPos.My.Resources.resLCcvcZone.Culture = New System.Globalization.CultureInfo("EN")
            Resources.resGBMsg.Culture = New System.Globalization.CultureInfo("EN")
        Else
            AdaWebPos.My.Resources.resLCcvcZone.Culture = New System.Globalization.CultureInfo(tLastLang)
            Resources.resGBMsg.Culture = New System.Globalization.CultureInfo(tLastLang)
        End If
        
        ViewData("olaRowID") = AdaWebPos.My.Resources.resLCcvcZone.olaRowID
        ViewData("olaCanEdit") = AdaWebPos.My.Resources.resLCcvcZone.olaCanEdit
        ViewData("olaCanSave") = AdaWebPos.My.Resources.resLCcvcZone.olaCanSave
        ViewData("olaCreate") = AdaWebPos.My.Resources.resLCcvcZone.olaCreate
        ViewData("olaFNZneLevel") = AdaWebPos.My.Resources.resLCcvcZone.olaFNZneLevel
        ViewData("olaFTZneChainName") = AdaWebPos.My.Resources.resLCcvcZone.olaFTZneChainName
        ViewData("olaFTZneCode") = AdaWebPos.My.Resources.resLCcvcZone.olaFTZneCode
        ViewData("olaFTZneID") = AdaWebPos.My.Resources.resLCcvcZone.olaFTZneID
        ViewData("olaFTZneName") = AdaWebPos.My.Resources.resLCcvcZone.olaFTZneName
        ViewData("olaFTZneParentID") = AdaWebPos.My.Resources.resLCcvcZone.olaFTZneParentID
        ViewData("olaFTZneRmk") = AdaWebPos.My.Resources.resLCcvcZone.olaFTZneRmk
        ViewData("olaGenCode") = AdaWebPos.My.Resources.resLCcvcZone.olaGenCode
        ViewData("olaMenuName") = AdaWebPos.My.Resources.resLCcvcZone.olaMenuName
        ViewData("olaNotAccess") = AdaWebPos.My.Resources.resLCcvcZone.olaNotAccess
        ViewData("olaReport") = AdaWebPos.My.Resources.resLCcvcZone.olaReport
        ViewData("olaHeaderEdit") = AdaWebPos.My.Resources.resLCcvcZone.olaHeaderEdit
        ViewData("olaHeaderAdd") = AdaWebPos.My.Resources.resLCcvcZone.olaHeaderAdd
        ViewData("olaHeaderDetail") = AdaWebPos.My.Resources.resLCcvcZone.olaHeaderDetail
        ViewData("olaHeaderList") = AdaWebPos.My.Resources.resLCcvcZone.olaHeaderList
        ViewData("olaDetail") = AdaWebPos.My.Resources.resLCcvcZone.olaDetail
        ViewData("olaShwAll") = AdaWebPos.My.Resources.resLCcvcZone.olaShwAll
        ViewData("olaMaximunNode") = Resources.resGBMsg.olaMaximunNode
        ViewData("tMsgErrorData") = Resources.resGBMsg.tMsgErrorData
        
    End Sub
</script>

<script type ="text/javascript" >

    var xmlHttp;
    var tValueReturn;
    var tMenu = '';
    function createXMLHttpRequest() {
        if (window.ActiveXObject) {
            xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        else if (window.XMLHttpRequest) {
            xmlHttp = new XMLHttpRequest();
        }
    }
    function startRequest(ptZoneCode) {
        createXMLHttpRequest();
        var future = new Date();
        xmlHttp.open("GET", '<%=Url.Action("C_GETtGetZoneChain","cvcZone")%>'+"?ptZoneCode=" + ptZoneCode + "&ptDate=" + future.getFullYear() + future.getMonth() + future.getDate() + future.getHours() + future.getMinutes() + future.getSeconds(), false);
        xmlHttp.onreadystatechange = handleStateChange;
        xmlHttp.send(null);
    }
    function handleStateChange() {
        if (xmlHttp.readyState == 4) {
            if (xmlHttp.status == 200) {
                var valueFis = xmlHttp.responseText;
                document.getElementById("otbValue").value = valueFis;
                //alert(valueFis);
                var mytool_array = valueFis.split("|");
                //alert(mytool_array.length);
                //alert(mytool_array[0] + " " + mytool_array[1] + " " + mytool_array[2]);
                document.getElementById("FTZneName").value = mytool_array[0];
                document.getElementById("FNZneLevel").value = mytool_array[1];
                document.getElementById("FTZneID").value = mytool_array[2];
                document.getElementById("FTZneChainName").value = mytool_array[3];
                document.getElementById("FTZneCode").value = mytool_array[4];
                document.getElementById("FTZneParentID").value = mytool_array[5];
                document.getElementById("FTZneRmk").value = mytool_array[6];

                document.getElementById("FTZneNameTmp").value = '';
                document.getElementById("FNZneLevelTmp").value = document.getElementById("FTZneID").value == '000' || document.getElementById("FTZneID").value == '' ? '0' : document.getElementById("FNZneLevel").value;
                document.getElementById("FTZneIDTmp").value = document.getElementById("FTZneID").value == '000' || document.getElementById("FTZneID").value == '' ? '000' : document.getElementById("FTZneID").value;
                document.getElementById("FTZneChainNameTmp").value = '';
                document.getElementById("FTZneCodeTmp").value = '';
                document.getElementById("FTZneParentIDTmp").value = '';
                document.getElementById("FTZneRmkTmp").value = '';

                document.getElementById("TreeValueSel").value = document.getElementById("TreeValueSel").value == '' ? document.getElementById("FTZneID").value : document.getElementById("TreeValueSel").value;

                //alert("sdaf" + xmlHttp.responseText);
            }
        }
    }

    function FunctionCall(ptValue, ptMenu) {
        tValueReturn = '';
        tMenu = ptMenu;  // ทำการเลือก OBJECT
        createXMLHttpRequest();
        var future = new Date();
        if (ptValue.indexOf("?") >= 0) {
            //alert(ptValue + "&ptDate=" + future.getFullYear() + future.getMonth() + future.getDate() + future.getHours() + future.getMinutes() + future.getSeconds());
            xmlHttp.open("GET", ptValue + "&ptDate=" + future.getFullYear() + future.getMonth() + future.getDate() + future.getHours() + future.getMinutes() + future.getSeconds(), true);
        } else {
            //alert(ptValue + "?ptDate=" + future.getFullYear() + future.getMonth() + future.getDate() + future.getHours() + future.getMinutes() + future.getSeconds());
            xmlHttp.open("GET", ptValue + "?ptDate=" + future.getFullYear() + future.getMonth() + future.getDate() + future.getHours() + future.getMinutes() + future.getSeconds(), true);
        }

        xmlHttp.onreadystatechange = handleFunctionCall;
        xmlHttp.send(null);
    }
    function handleFunctionCall() {
        if (xmlHttp.readyState == 4) {
            if (xmlHttp.status == 200) {
                tValueReturn = xmlHttp.responseText;
                
                document.getElementById("TmpValue").value = tValueReturn;
                var mytool_array = tValueReturn.split("|");
                if (mytool_array[2] == "xxx") {
                    J003_SHWxWaiting();
                    alert('<%=ViewData("olaMaximunNode")%>');
                    J003_DISxWaiting();
                    return false;
                }
                
                //alert(tValueReturn);
                switch (unescape(tMenu)) {
                    case "NEW":
                        {
                            document.getElementById("FNZneLevel").value = mytool_array[0];
                            document.getElementById("FTZneCode").value = mytool_array[1];
                            document.getElementById("FTZneID").value = mytool_array[2];
                            document.getElementById("FTZneParentID").value = mytool_array[3];
                            break;
                        }
                    case "DEL": { break; }

                }
            } else {
                //alert(xmlHttp.status); 
            }
        } else {
            //alert("4") 
        }
    }

    function OnChangePgpChainName() {
        var tValue = document.getElementById("FTZneChainName").value;
        if (document.getElementById("FTZneChainNameTmp").value != '' && document.getElementById("FTZneNameTmp").value != '') {
            if (document.getElementById("FTZneIDTmp").value == '000' || document.getElementById("FTZneIDTmp").value == '') {
                document.getElementById("FTZneChainName").value = document.getElementById("FTZneName").value;
            }
            else {
                document.getElementById("FTZneChainName").value = document.getElementById("FTZneChainNameTmp").value + Chr(92) + document.getElementById("FTZneName").value;
            }
        } else {
            var tValueTmp = tValue.split(Chr(92));
            var tValueFis = '';
            for (i = 0; i <= tValueTmp.length - 2; i++) { //(document.getElementById("FNPgpLevelTmp").value)
                if (tValueFis == '') {
                    tValueFis = tValueTmp[i];
                } else {
                    tValueFis = tValueFis + Chr(92) + tValueTmp[i];
                }
            }
            //document.getElementById("FTPgpChainName").value = tValueFis + Chr(92) + document.getElementById("FTPgpName").value; }
            if (document.getElementById("FTZneIDTmp").value == '000' || document.getElementById("FTZneIDTmp").value == '' || document.getElementById("FNZneLevelTmp").value <= 1) {
                document.getElementById("FTZneChainName").value = document.getElementById("FTZneName").value;
            } else {
                document.getElementById("FTZneChainName").value = tValueFis + Chr(92) + document.getElementById("FTZneName").value;
            }
        }
    }

    function OnFocusPgpChainName() {
        if (document.getElementById("FTZneChainNameTmp").value == '' && document.getElementById("FTZneChainName").value != '') {
            document.getElementById("FTZneChainName").value = document.getElementById("FTZneChainName").value
            document.getElementById("FTZneIDTmp").value = document.getElementById("FTZneID").value
            document.getElementById("FNZneLevelTmp").value = document.getElementById("FNZneLevel").value
        }
    }

    function OnClickDelete(ptMsgConfirm) {
        J003_SHWxWaiting();
        if (document.getElementById("FTZneID").value != undefined && document.getElementById("FTZneID").value != '') {
            var tValue = confirm(ptMsgConfirm);
            if (tValue == true) {
                document.location = '<%=Url.Action("C_Delete","cvcZone")%>' + "?ptValue=" + document.getElementById("FTZneCode").value;
            }
        }
        J003_DISxWaiting();
        return false;
    }
    function OnClickCreate(ptMsgConfirm) {
        J003_SHWxWaiting();
        var tName = J002_STRttrim(document.getElementById("FTZneName").value);
        if (tName == "" || tName == null) {
            document.getElementById("FTZneName").focus();
            alert('<%=ViewData("tMsgErrorData")%>');
            J003_DISxWaiting();
            return false;
        }

        if (document.getElementById("FTZneID").value == undefined || document.getElementById("FTZneID").value == '') {
            CreateNew();
            return false;
        }
        
        return (document.getElementById("FTZneID").value != undefined && document.getElementById("FTZneID").value != ''
            && document.getElementById("FTZneChainName").value != undefined && document.getElementById("FTZneChainName").value != '');
    }



    function Asc(String) {

        return String.charCodeAt(0);

    }

    function Chr(AsciiNum) {

        return String.fromCharCode(AsciiNum)
    }

    //<![CDATA[

    window.$console = {
        log: function(msg) {
            startRequest(msg);
            document.getElementById('otbValue').value = msg;
            //		$('<div />')
            //			    .html(msg)
            //				.css({
            //					'margin-top': -24,
            //					'background-color': '#ffffd0'
            //				})
            //				.prependTo('.event-log')
            //				.animate({ marginTop: 0 }, 'fast')
            //				.animate({ backgroundColor: '#ffffff' }, 800);

        }
    };

    //]]>


</script>
<%=""%>

 
<% Using Html.BeginForm("C_Save", "cvcZone", Model)%>
    <fieldset>
        <%--<legend></legend>--%>
              <table>
                <tr>
                    <td>
                           <%=ViewData("olaFTZneID")%> 
                    </td>
                    <td>
                           <%=Html.TextBoxFor(Function(model) model.FTZneID, New With {.readonly = "readonly", .class = "xCN_AllReadOnlyBGColor", .onChange = "OnChangePgpChainName();", .onFocus = "OnFocusPgpChainName();"})%>
                           <%=Html.ValidationMessageFor(Function(model) model.FTZneID)%>
 
                    </td>
                            
                </tr>
                
                <tr>
                    <td>
                            <%=ViewData("olaFTZneName")%> 
                    </td>
                    <td>
                    <%=Html.TextBoxFor(Function(model) model.FTZneName, New With {.maxlength = "100", .onkeypress = "return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)", .onChange = "OnChangePgpChainName();", .onFocus = "OnFocusPgpChainName();"})%>
                    <%=Html.ValidationMessageFor(Function(model) model.FTZneName)%>
                    </td>
                </tr>
                
                <tr>
                    <td>
                       <%=ViewData("olaFTZneRmk")%> 
                    </td>
                    <td>
                    <%=Html.TextBoxFor(Function(model) model.FTZneRmk, New With {.maxlength="200", .onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)", .onChange = "OnChangePgpChainName();", .onFocus = "OnFocusPgpChainName();"})%>
                    <%=Html.ValidationMessageFor(Function(model) model.FTZneRmk)%>
                    </td>
                </tr> 
                
                <tr>
                    <td>
                        <%=ViewData("olaFTZneChainName")%> 
                    </td>
                    <td>
                    <%=Html.TextBoxFor(Function(model) model.FTZneChainName, New With {.readonly = "readonly", .class = "xCN_AllReadOnlyBGColor", .onChange = "OnChangePgpChainName();", .onFocus = "OnFocusPgpChainName();"})%>
                    <%=Html.ValidationMessageFor(Function(model) model.FTZneChainName)%>
                    </td>
                </tr> 
        </table> 
         
        <%=Html.TextBoxFor(Function(model) model.FNZneLevel, New With {.onChange = "OnChangePgpChainName();", .onFocus = "OnFocusPgpChainName();", .style = "display: none; "})%>
        <%=Html.ValidationMessageFor(Function(model) model.FNZneLevel)%>

        <%=Html.TextBoxFor(Function(model) model.FTZneCode, New With {.onChange = "OnChangePgpChainName();", .onFocus = "OnFocusPgpChainName();", .style = "display: none; "})%>
        <%=Html.ValidationMessageFor(Function(model) model.FTZneCode)%>

        <%=Html.TextBoxFor(Function(model) model.FTZneParentID, New With {.style = "display: none; "})%>
        <%=Html.ValidationMessageFor(Function(model) model.FTZneParentID)%>

    </fieldset>
            <input type ="submit" value='<%=ViewData("olaCanSave") %>' id="ocmSaveAndDeleteView" onclick="return OnClickCreate('<%=ViewData("olaCHKSave")%>'); J003_DISxWaiting();" style="display: none; "/>
            <input type ="button" value='<%=ViewData("olaCanDelete") %>' id="ocmDeleteView" onclick="return OnClickDelete('<%=ViewData("olaCHKDel")%>'); J003_DISxWaiting();" style="display: none; "/>
            <input type ="hidden" id="otbStatusSave" name="otbStatusSave" value='Edit'/>
<% End Using %>
    <input type="text" id ="FTZneNameTmp" style="display: none; "/>
    <input type="text" id ="FNZneLevelTmp" style="display: none; "/>
    <input type="text" id ="FTZneIDTmp" style="display: none; "/>
    <input type="text" id ="FTZneChainNameTmp" style="display: none; "/>
    <input type="text" id ="FTZneCodeTmp" style="display: none; "/>
    <input type="text" id ="FTZneParentIDTmp" style="display: none; "/>
    <input type="text" id ="FTZneRmkTmp" style="display: none; "/>
    <input type="text" id ="TmpValue" style="display: none; "/>
    <input type="text" id ="otbValue" style="display: none; "/>

    <div id="XXXX" ></div>
    <div class="event-log"/>
     <input type ="checkbox" id="ExAndColl" onclick ="CheckExpandItemTreeView();" checked="checked" style="display:none" />
     <%--<span onclick ="{document.getElementById('ExAndColl').click();}" style="cursor:hand;"><%=ViewData("olaShwAll")%></span>--%>
     
<script type="text/javascript">

</script>