<%@ Control Language="VB" Inherits="System.Web.Mvc.ViewUserControl(Of AdaWebPos.C_TCNMPdtGroup)" %>
<%@ Import Namespace="System.Resources" %>
<%@ Import Namespace="AdaWebPos" %>
<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        AdaWebPos.My.Resources.resLCcvcPdtGrop.Culture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
        Resources.resGBMsg.Culture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
        ViewData("olaCanDelete") = AdaWebPos.My.Resources.resLCcvcPdtGrop.olaCanDelete
        ViewData("olaCanEdit") = AdaWebPos.My.Resources.resLCcvcPdtGrop.olaCanEdit
        ViewData("olaCanSave") = AdaWebPos.My.Resources.resLCcvcPdtGrop.olaCanSave
        ViewData("olaCreate") = AdaWebPos.My.Resources.resLCcvcPdtGrop.olaCreate
        ViewData("olaDetail") = AdaWebPos.My.Resources.resLCcvcPdtGrop.olaDetail
        ViewData("olaHeaderAdd") = AdaWebPos.My.Resources.resLCcvcPdtGrop.olaHeaderAdd
        ViewData("olaHeaderDetail") = AdaWebPos.My.Resources.resLCcvcPdtGrop.olaHeaderDetail
        ViewData("olaHeaderEdit") = AdaWebPos.My.Resources.resLCcvcPdtGrop.olaHeaderEdit
        ViewData("olaHeaderList") = AdaWebPos.My.Resources.resLCcvcPdtGrop.olaHeaderList
        ViewData("olaMenuName") = AdaWebPos.My.Resources.resLCcvcPdtGrop.olaMenuName
        ViewData("olaNotAccess") = AdaWebPos.My.Resources.resLCcvcPdtGrop.olaNotAccess
        ViewData("olaReport") = AdaWebPos.My.Resources.resLCcvcPdtGrop.olaReport
        ViewData("olaRowID") = AdaWebPos.My.Resources.resLCcvcPdtGrop.olaRowID
        ViewData("olaGenCode") = AdaWebPos.My.Resources.resLCcvcPdtGrop.olaGenCode
        ViewData("olaFTPgpCode") = AdaWebPos.My.Resources.resLCcvcPdtGrop.olaFTPgpCode
        ViewData("olaFTPgpName") = AdaWebPos.My.Resources.resLCcvcPdtGrop.olaFTPgpName
        ViewData("olaFTPgpRmk") = AdaWebPos.My.Resources.resLCcvcPdtGrop.olaFTPgpRmk
        ViewData("olaFTPgpChainName") = AdaWebPos.My.Resources.resLCcvcPdtGrop.olaFTPgpChainName
        ViewData("olaFTPgpPic") = AdaWebPos.My.Resources.resLCcvcPdtGrop.olaFTPgpPic
        
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
    function startRequest(ptPgpChain) {
            createXMLHttpRequest();
            var future=new Date ();
            xmlHttp.open("GET", '<%=Url.Action("C_GETtGetPgpChain","cvcPdtGroup")%>' + "?ptPgpChain=" + ptPgpChain + "&ptDate=" + future.getFullYear() + future.getMonth() + future.getDate() + future.getHours() + future.getMinutes() + future.getSeconds(), false);
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
                  document.getElementById("FTPgpName").value = mytool_array[0] ;
                  document.getElementById("FNPgpLevel").value = mytool_array[1] ;
                  document.getElementById("FTPgpChain").value = mytool_array[2];
                  document.getElementById("FTPgpChainName").value = mytool_array[3];
                  document.getElementById("FTPgpCode").value = mytool_array[4];
                  document.getElementById("FTPgpPic").value = mytool_array[5];
                  document.getElementById("ocmGetPic").value = mytool_array[5];
                  document.getElementById("FTPgpParent").value = mytool_array[6];
                  document.getElementById("FTPgpRmk").value = mytool_array[7];

                  document.getElementById("FTPgpNameTmp").value = '';
                  document.getElementById("FNPgpLevelTmp").value = document.getElementById("FTPgpChain").value=='000' || document.getElementById("FTPgpChain").value=='' ?'0':document.getElementById("FNPgpLevel").value;
                  document.getElementById("FTPgpChainTmp").value = document.getElementById("FTPgpChain").value=='000' || document.getElementById("FTPgpChain").value=='' ?'000':document.getElementById("FTPgpChain").value;
                  document.getElementById("FTPgpChainNameTmp").value = '';
                  document.getElementById("FTPgpCodeTmp").value = '';
                  document.getElementById("FTPgpPicTmp").value = '';
                  document.getElementById("FTPgpParentTmp").value = '';
                  document.getElementById("FTPgpRmkTmp").value = '';

                  document.getElementById("TreeValueSel").value = document.getElementById("TreeValueSel").value == '' ? document.getElementById("FTPgpChain").value : document.getElementById("TreeValueSel").value;
                                    
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
                        alert('<%=ViewData("olaMaximunNode")%>');
                        return false;
                    }
                    
                    //alert(tValueReturn);
                    switch (unescape(tMenu)) {
                        case "NEW":
                            {
                                document.getElementById("FNPgpLevel").value = mytool_array[0];
                                document.getElementById("FTPgpChain").value = mytool_array[1];
                                document.getElementById("FTPgpCode").value = mytool_array[2];
                                document.getElementById("FTPgpParent").value = mytool_array[3];
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

        function OnBlurPgpName() {
            //เมื่อมีการลดโฟกัสที่ Textbox ชื่อ
            if ($('#FTPgpName').val() != '') { OnChangePgpChainName(); }
        }

        function OnChangePgpChainName() {
            var tValue = document.getElementById("FTPgpChainName").value;
            if (document.getElementById("FTPgpChainNameTmp").value != '' && document.getElementById("FTPgpNameTmp").value != '') {
                //alert("A");
                 if (document.getElementById("FTPgpChainTmp").value == '000' || document.getElementById("FTPgpChainTmp").value == '') {
                    document.getElementById("FTPgpChainName").value =  document.getElementById("FTPgpName").value;
                }
                else {
                    document.getElementById("FTPgpChainName").value = document.getElementById("FTPgpChainNameTmp").value + Chr(92) + document.getElementById("FTPgpName").value;
                }
            } else {
            //alert("B");
            var tValueTmp = tValue.split(Chr(92));
            var tValueFis = '';
            for (i = 0; i <= tValueTmp.length -2 ; i++) { //(document.getElementById("FNPgpLevelTmp").value)
                if (tValueFis == '') {
                    tValueFis =  tValueTmp[i];
                } else {
                    tValueFis = tValueFis + Chr(92) + tValueTmp[i];
                }
            }
            //alert(tValueFis);
            //document.getElementById("FTPgpChainName").value = tValueFis + Chr(92) + document.getElementById("FTPgpName").value; }
            if (document.getElementById("FTPgpChainTmp").value == '000' || document.getElementById("FTPgpChainTmp").value == '' || document.getElementById("FNPgpLevelTmp").value <= 1) {
                document.getElementById("FTPgpChainName").value =  document.getElementById("FTPgpName").value;
            } else {
             document.getElementById("FTPgpChainName").value = tValueFis + Chr(92) + document.getElementById("FTPgpName").value; }
            }
        }

        function OnFocusPgpChainName() {
            if (document.getElementById("FTPgpChainNameTmp").value == '' && document.getElementById("FTPgpChainName").value !='') {
                document.getElementById("FTPgpChainNameTmp").value = document.getElementById("FTPgpChainName").value
                document.getElementById("FTPgpChainTmp").value = document.getElementById("FTPgpChain").value
                document.getElementById("FNPgpLevelTmp").value = document.getElementById("FNPgpLevel").value
            }
        }

        function OnClickDelete(ptMsgConfirm) {
            J003_SHWxWaiting();
            if (document.getElementById("FTPgpChain").value != undefined && document.getElementById("FTPgpChain").value != '') {
                var tValue = confirm(ptMsgConfirm);
                if (tValue == true) {
                    document.location = '<%=Url.Action("C_Delete","cvcPdtGroup")%>' + "?ptPgpChain=" + document.getElementById("FTPgpChain").value;
                }
            }
            J003_DISxWaiting();
            return false;
        }
        function OnClickCreate(ptMsgConfirm) {
            J003_SHWxWaiting();
            var tName = J002_STRttrim(document.getElementById("FTPgpName").value);
            if (tName == "" || tName == null) {
                document.getElementById("FTPgpName").focus();
                alert('<%=ViewData("tMsgErrorData")%>');
                J003_DISxWaiting();
                return false;
            }

            if (document.getElementById("FTPgpChain").value == undefined || document.getElementById("FTPgpChain").value == '') {
                CreateNew();
                return false;
            }

            var nReturn = (document.getElementById("FTPgpChain").value != undefined && document.getElementById("FTPgpChain").value != ''
            && document.getElementById("FTPgpChainName").value != undefined && document.getElementById("FTPgpChainName").value != '');

            return (document.getElementById("FTPgpChain").value != undefined && document.getElementById("FTPgpChain").value != ''
            && document.getElementById("FTPgpChainName").value != undefined && document.getElementById("FTPgpChainName").value != '');
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
        function ocmUpload_onclick() {


            $file = $("#ocmGetPic");

            var $filePath = $.trim($file.val());
            if ($filePath == "") {
                alert('<%=ViewData("tMsgBrwFile")%>');
                J003_DISxWaiting();
                return false;
            }
            var $ext = $filePath.split(".").pop().toLowerCase();
            var $allow = new Array("gif", "png", "jpg", "jpeg");
            if ($.inArray($ext, $allow) == -1) {
                alert('<%=ViewData("tMsgBrwFileOnlyImage")%>');
                J003_DISxWaiting();
                return false;
            }
        
            if (document.getElementById('ocmGetPic').value == '') {
                return false;
            }
            document.getElementById('otbStaUploadImg').value = '1';
            document.getElementById('ofmPost').submit();
        }
        function ocmClear_onclick() {
            var tPic = $('#FTPgpPic').val();
            document.getElementById('FTPgpPic').value = '';
            document.getElementById('oimPic').src = '<%=Url.Content("~/Content/img/AdaBrwPdtGrp/NoImage.png")%>';
        }
</script>
    <%--The line below is a workaround for a VB / ASPX designer bug--%>
    <%=""%>

    <% Using Html.BeginForm( "C_Save", "cvcPdtGroup", Model, FormMethod.Post, New With {.id="ofmPost",.enctype = "multipart/form-data"})%>

        <fieldset>
              <legend> <%=ViewData("olaHeaderDetail")%></legend>
            <div style="float: left; width:auto;height:450px;">                        
              <table>
                <tr>                   
                    <td>
                           <%=ViewData("olaFTPgpCode")%>
                    </td>
                    <td>
                           <%=Html.TextBoxFor(Function(model) model.FTPgpCode, New With {.readonly = "readonly", .class = "xCN_AllReadOnlyBGColor", .onChange = "OnChangePgpChainName();", .onFocus = "OnFocusPgpChainName();"})%>
                           <%= Html.ValidationMessageFor(Function(model) model.FTPgpCode) %> 
                    </td>
                </tr>                            
                <tr>                  
                    <td>
                         <%=ViewData("olaFTPgpName")%>
                    </td>
                    <td>
                        <%=Html.TextBoxFor(Function(model) model.FTPgpName, _
                            New With {.onkeypress = "return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)", _
                                      .onChange = "OnChangePgpChainName();", _
                                      .onFocus = "OnFocusPgpChainName();", _
                                      .onBlur = "OnBlurPgpName();"})%>
                        <%= Html.ValidationMessageFor(Function(model) model.FTPgpName) %>
                    </td>
                </tr>
                <tr>                   
                    <td>
                    <%=ViewData("olaFTPgpRmk")%>
                    </td>
                    <td>
                    <%=Html.TextBoxFor(Function(model) model.FTPgpRmk, New With {.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)", .onChange = "OnChangePgpChainName();", .onFocus = "OnFocusPgpChainName();"})%>
                    <%= Html.ValidationMessageFor(Function(model) model.FTPgpRmk) %>
                    </td>
                </tr>   
                <tr>                   
                    <td>
                     <%=ViewData("olaFTPgpChainName")%>
                    </td>
                    <td>
                    <%=Html.TextBoxFor(Function(model) model.FTPgpChainName, New With {.readonly = "readonly", .class = "xCN_AllReadOnlyBGColor", .onChange = "OnChangePgpChainName();", .onFocus = "OnFocusPgpChainName();"})%>
                    <%= Html.ValidationMessageFor(Function(model) model.FTPgpChainName) %>
                    </td>
                </tr>  
                <tr>                   
                    <td>
                    <%=ViewData("olaFTPgpPic")%>
                    </td>
                    <td>
                <%--<%=Html.TextBoxFor(Function(model) model.FTPgpPic, New With {.readonly = "readonly", .class = "xCN_AllReadOnlyBGColor", .onChange = "OnChangePgpChainName();document.getElementById('ocmGetPic').value= document.getElementById('FTPgpPic').value;", .onFocus = "OnFocusPgpChainName();;document.getElementById('ocmGetPic').value= document.getElementById('FTPgpPic').value;"})%>--%>
                <input type ="hidden" id ="FTPgpPic" name ="FTPgpPic" value="<%=Model.FTPgpPic %>" />
                <input type="file" value ="..." id="ocmGetPic" name="ocmGetPic" onchange="ocmUpload_onclick();"  class = "xCN_AllReadOnlyBGColor" />
                <input type="button" value ="<%=ViewData("olaClear") %>" id="ocmClear" onclick="ocmClear_onclick();" />
                <%= Html.ValidationMessageFor(Function(model) model.FTPgpPic) %>
                    </td>
                </tr>
                <tr>
                    <td>
                    
                    </td>
                    <td>
                        <input type="button" value ="Upload" id="ocmUpload" onclick="ocmUpload_onclick();" style="display:none;" />
                    </td>
                </tr>    
            </table> 
                <%--<%= Html.LabelFor(Function(model) model.FNPgpLevel) %>--%>
                <%=Html.TextBoxFor(Function(model) model.FNPgpLevel, New With {.onChange = "OnChangePgpChainName();", .onFocus = "OnFocusPgpChainName();", .style = "display: none; "})%>
                <%= Html.ValidationMessageFor(Function(model) model.FNPgpLevel) %>

                <%--<%= Html.LabelFor(Function(model) model.FTPgpChain) %>--%>

                <%=Html.TextBoxFor(Function(model) model.FTPgpChain, New With {.onChange = "OnChangePgpChainName();", .onFocus = "OnFocusPgpChainName();", .style = "display: none; "})%>
                <%= Html.ValidationMessageFor(Function(model) model.FTPgpChain) %>

                <%--<%=Html.LabelFor(Function(model) model.FTPgpParent)%>--%>

                <%=Html.TextBoxFor(Function(model) model.FTPgpParent, New With {.style = "display: none; "})%>
                <%=Html.ValidationMessageFor(Function(model) model.FTPgpParent)%>
                                                                                    
               </div>
                <img id ="oimPic" alt="" src="<%=Url.Content("~/Content/img/AdaBrwPdtGrp/NoImage.png") %>" style="width:150px;height:150px;margin:5px 10px 10px 10px;overflow:hidden;"/>
        </fieldset>
           <input type ="submit" value="Save" id="ocmSaveAndDeleteView" onclick="return OnClickCreate('<%=ViewData("olaCHKSave")%>'); J003_DISxWaiting();" style="display: none; "/>
           <input type ="button" value="Delete" id="ocmDeleteView" onclick="return OnClickDelete('<%=ViewData("olaCHKDel")%>'); J003_DISxWaiting();" style="display: none; "/>
           <input type ="hidden" id="otbStatusSave" name="otbStatusSave" value=''/>
           <input type ="hidden" id="otbStaUploadImg" name="otbStaUploadImg" value='Edit'/>
           <input type ="hidden" id="otbLastSelect" name="otbLastSelect" value='' />
           
           <input type="text" id ="FTPgpChainTmp" name="FTPgpChainTmp" style="display: none; "/>
           <input type="text" id ="FTPgpChainNameTmp" name="FTPgpChainNameTmp" style="display: none; "/>
           <input type="text" id ="FTPgpNameTmp" name="FTPgpNameTmp" style="display: none; "/>
               <% End Using %>
    
    <input type="text" id ="FNPgpLevelTmp" style="display: none; "/>
    <input type="text" id ="FTPgpCodeTmp" style="display: none; "/>
    <input type="text" id ="FTPgpPicTmp" style="display: none; "/>
    <input type="text" id ="FTPgpParentTmp" style="display: none; "/>
    <input type="text" id ="FTPgpRmkTmp" style="display: none; "/>
    <input type="text" id ="TmpValue"  style="display: none; "/>
    <input type="text" id ="otbValue"  style="display: none; "/>

    <div id="XXXX" ></div>
    <div class="event-log"/>
     <input type ="checkbox" id="ExAndColl" onclick ="CheckExpandItemTreeView();" checked="checked" style="display:none" />
     <%--<span onclick ="{document.getElementById('ExAndColl').click();}" style="cursor:hand;">แสดงทั้งหมด</span>--%>
<script type="text/javascript">
</script>