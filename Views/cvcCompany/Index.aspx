<%--<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" 
Inherits="System.Web.Mvc.ViewPage(Of Adasoft.Abreast.Models.cmlTCNMComp)" %>--%>
<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" 
Inherits="System.Web.Mvc.ViewPage(Of AdaWebPos.AdaWCFCstPoint.cmlTCNMComp)" %>
<%@ Import Namespace="System.Resources" %>
<%@ Import Namespace="AdaWebPos" %>
<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tLastLang As String = Session("tVB_LastLang")

        If tLastLang Is Nothing AndAlso tLastLang = "" Then
            AdaWebPos.My.Resources.resLCcvcCompany.Culture = New System.Globalization.CultureInfo("EN")
            Resources.resGBMsg.Culture = New System.Globalization.CultureInfo("EN")
        Else
            AdaWebPos.My.Resources.resLCcvcCompany.Culture = New System.Globalization.CultureInfo(tLastLang)
            Resources.resGBMsg.Culture = New System.Globalization.CultureInfo(tLastLang)
        End If
        
        'Caption
        ViewData("olaRowID") = AdaWebPos.My.Resources.resLCcvcCompany.olaRowID
        ViewData("olaCanEdit") = AdaWebPos.My.Resources.resLCcvcCompany.olaCanEdit
        ViewData("olaCanDelete ") = AdaWebPos.My.Resources.resLCcvcCompany.olaCanDelete
        ViewData("olaCanSave") = AdaWebPos.My.Resources.resLCcvcCompany.olaCanSave
        ViewData("olaCreate") = AdaWebPos.My.Resources.resLCcvcCompany.olaCreate
        ViewData("olaFCCmpVatAmt") = AdaWebPos.My.Resources.resLCcvcCompany.olaFCCmpVatAmt
        ViewData("olaFDDateUpd") = AdaWebPos.My.Resources.resLCcvcCompany.olaFDDateUpd
        ViewData("olaFTBchCode") = AdaWebPos.My.Resources.resLCcvcCompany.olaFTBchCode
        ViewData("olaFTCmpAddr") = AdaWebPos.My.Resources.resLCcvcCompany.olaFTCmpAddr
        ViewData("olaFTCmpBranch") = AdaWebPos.My.Resources.resLCcvcCompany.olaFTCmpBranch
        ViewData("olaFTCmpCode") = AdaWebPos.My.Resources.resLCcvcCompany.olaFTCmpCode
        ViewData("olaFTCmpDirector") = AdaWebPos.My.Resources.resLCcvcCompany.olaFTCmpDirector
        ViewData("olaFTCmpFax") = AdaWebPos.My.Resources.resLCcvcCompany.olaFTCmpFax
        ViewData("olaFTCmpLogo") = AdaWebPos.My.Resources.resLCcvcCompany.olaFTCmpLogo
        ViewData("olaFTCmpMap") = AdaWebPos.My.Resources.resLCcvcCompany.olaFTCmpMap
        ViewData("olaFTCmpName") = AdaWebPos.My.Resources.resLCcvcCompany.olaFTCmpName
        ViewData("olaFTCmpRetInOrEx") = AdaWebPos.My.Resources.resLCcvcCompany.olaFTCmpRetInOrEx
        ViewData("olaFTCmpRmk") = AdaWebPos.My.Resources.resLCcvcCompany.olaFTCmpRmk
        ViewData("olaFTCmpShop") = AdaWebPos.My.Resources.resLCcvcCompany.olaFTCmpShop
        ViewData("olaFTCmpTaxNo") = AdaWebPos.My.Resources.resLCcvcCompany.olaFTCmpTaxNo
        ViewData("olaFTCmpTel") = AdaWebPos.My.Resources.resLCcvcCompany.olaFTCmpTel
        ViewData("olaFTCmpWhsInOrEx") = AdaWebPos.My.Resources.resLCcvcCompany.olaFTCmpWhsInOrEx
        ViewData("olaFTCmpYearDisp") = AdaWebPos.My.Resources.resLCcvcCompany.olaFTCmpYearDisp
        ViewData("olaFTVatCode") = AdaWebPos.My.Resources.resLCcvcCompany.olaFTVatCode
        ViewData("olaMenuName") = AdaWebPos.My.Resources.resLCcvcCompany.olaMenuName
        ViewData("olaNotAccess") = AdaWebPos.My.Resources.resLCcvcCompany.olaNotAccess
        ViewData("olaReport") = AdaWebPos.My.Resources.resLCcvcCompany.olaReport
        ViewData("olaHeaderEdit") = AdaWebPos.My.Resources.resLCcvcCompany.olaHeaderEdit
        ViewData("olaHeaderAdd") = AdaWebPos.My.Resources.resLCcvcCompany.olaHeaderAdd
        ViewData("olaHeaderDetail") = AdaWebPos.My.Resources.resLCcvcCompany.olaHeaderDetail
        ViewData("olaHeaderList") = AdaWebPos.My.Resources.resLCcvcCompany.olaHeaderList
        ViewData("olaDetail") = AdaWebPos.My.Resources.resLCcvcCompany.olaDetail
        ViewData("olaGenCode") = AdaWebPos.My.Resources.resLCcvcCompany.olaGenCode
        ViewData("olaClose") = AdaWebPos.My.Resources.resLCcvcCompany.olaClose
        ViewData("olaTabDetail") = AdaWebPos.My.Resources.resLCcvcCompany.olaTabDetail
        ViewData("olaTabMap") = AdaWebPos.My.Resources.resLCcvcCompany.olaTabMap
        ViewData("tMsgErrorData") = Resources.resGBMsg.tMsgErrorData
        
        'Message
        ViewData("olaBrowse") = Resources.resGBMsg.tMsgBrowse
        ViewData("tMsgDAT_Notfound001") = Resources.resGBMsg.tMsgDAT_Notfound001
        ViewData("tMsgBrwFile") = Resources.resGBMsg.tMsgBrwFile
        ViewData("tMsgBrwFileError") = Resources.resGBMsg.tMsgBrwFileError
        ViewData("tMsgBrwFileOnlyImage") = Resources.resGBMsg.tMsgBrwFileOnlyImage
        ViewData("tMsgUpload") = Resources.resGBMsg.tMsgUpload
        ViewData("tMsgCancel") = Resources.resGBMsg.tMsgCancel
        ViewData("tMsgAlertWhsChange") = AdaWebPos.My.Resources.resLCcvcCompany.tMsgAlertWhsChange
        
        'Image List
        ViewData("oimgSave") = Resources.resGBImageList.oimgSave
        ViewData("oimgUndo") = Resources.resGBImageList.oimgUndo
        ViewData("oimgGencode") = Resources.resGBImageList.oimgGencode
        ViewData("oimgBrowse") = Resources.resGBImageList.oimgBrowse
        
        'Add New Header '*CH 02-11-2012
        Resources.resGBMenuName.Culture = New System.Globalization.CultureInfo(tLastLang)
        ViewData("olaMenuHome") = Resources.resGBMenuName.omnHome
        ViewData("olaMenuExit") = Resources.resGBMenuName.omnExit
        ViewData("olaMenuGroup") = Resources.resGBMenuName.omnMng
        
        ' Me.otbHidFileUploadAction.Value = "/Content/AdaImage"
        ' Me.otbHidImageBase.Value = "/Content/AdaImage/GetAFile"
  
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
<%=ViewData("olaHeaderAdd")%></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<script type="text/javascript">
     <!--    Begin
    window.onload = function() {
        tJ002_VirtualDirectory = '<%=Session("VirtualDirectory") %>';
        tJ003_VirtualDirectory = '<%=Session("VirtualDirectory") %>';
        //Check Exception
        var tExcep = '<%=ViewData("ovd_tException")%>';
        if (tExcep != '') { alert(tExcep) };
        //สิทธิในการเปิดเมนู
        var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
        var tBchHQUpCase = '<%=Session("bVB_CNIsBchHQ")%>';
        var tBchHQ = tBchHQUpCase.toUpperCase();
        //if (tBchHQ.toUpperCase !=  'true'.toUpperCase) {
        if (tBchHQ == "FALSE") {
            J003_SHWxWaiting();
            alert(tMsgNotAuthorize);
            window.location = '<%=Url.Action("Index","Home")%>';
        }

        //W_SETtGetValueName();
        tJ002_VirtualDirectory = '<%=ViewData("VirtualDirectory")%>';
        FTVatCode_onblur();
        if ('<%=ViewData("C_map")%>' == '1') {
            J010_SHWxTabData(1, 'odiDetail', 'odiMap');
            J009_SHWxTabTop(1, 'odiDetailCap', 'odiMapCap');
        }
        W_SHWxShowPic();
    }
     -->
</script>

<script type="text/javascript">

    var tW_Controller = 'cvcCompany';
    var tW_Menu = 'omnMngComp';

    function W_FRMxSaveDoc() {
    var tVatRate = document.getElementById("FTVatCode").value;
    if (tVatRate == "" || tVatRate == null) {
        alert('<%=ViewData("tMsgErrorData")%>');
        document.getElementById("FTVatCode").focus();
        return false;
    }

        try {
            J003_SHWxWaiting();
            var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Add%>';
            var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
            var tPwdAllow = '<%=Session("bVB_CNPwdAllow")%>';
            var bAllow = J002_CHKtCheckAuthorize(tW_Menu, tAuthor, tPwdAllow, tMsgNotAuthorize);
            if (bAllow == false) {
                J003_DISxWaiting();
                return false;
            }
            document.getElementById("wCompany").submit();
        }
        catch (ex) {
            J002_SHWxMsgError("W_FRMxNewDoc", ex);
        }
    }


// ning 24/11/2010
function W_SHWxShowPic() {
    
    var tImageName = '<%=model.FTCmpLogo%>';
    var oElement = document.getElementById('odiCompLogo');
    if (tImageName != null && tImageName != "") {
        oElement.innerHTML = '<img id ="oimLogo" alt="" src="<%=Url.Content("~/AdaImage/' + tImageName + '") %>"  style="width:90%;height:90%;margin:5px 10px 10px 10px;overflow:hidden;"/>';
    }
    else {
        oElement.innerHTML = '<img id ="oimLogo" alt="" src="<%=Url.Content("~/AdaImage/imgNoImages.png") %>" style="width:90%;height:90%;margin:5px 10px 10px 10px;overflow:hidden;"/>';
    }

    var tImageSourc = document.getElementById('oimLogo').getAttribute("src");
    //document.getElementById('FTCmpLogo').value = tImageSourc;
    // set company map
    tImageName = '<%=model.FTCmpMap%>';
    var oElementMap = document.getElementById('odiCompanyMap');
    if (tImageName != null && tImageName != "") {
        oElementMap.innerHTML = '<img id ="oimMap" alt="" src="<%=Url.Content("~/AdaImage/' + tImageName + '") %>"  style="width:97%;height:95%;margin:5px 10px 10px 10px;overflow:hidden;"/>';
    }
    else {

        oElementMap.innerHTML = '<img id ="oimMap" alt="" src="<%=Url.Content("~/AdaImage/imgNoImages.png") %>" style="width:95%;height:95%;margin:5px 10px 10px 10px;overflow:hidden;"/>';
    }

    tImageSourc = document.getElementById('oimMap').getAttribute("src");
    //document.getElementById('FTCmpMap').value = tImageSourc;

}

 function noenter(ptTarget) {
     var oTarget = document.getElementById(ptTarget);
     
    if (window.event.keyCode == 13) {
        if (ptTarget != undefined) {
            oTarget.focus();
        }
            return window.event.keyCode = 0;
//            return !(window.event && window.event.keyCode == 13);
        }
        if (window.event.keyCode == 10) {
            return window.event.keyCode = 13;
            //            return !(window.event && window.event.keyCode == 13);
        }
    }
    function W_FRMtGenCode(){
        JS001_GETtAutoGenCode('cvcCompany','C_Create_GetAutoCode',document.getElementById('FTCmpCode'));
    }
    
    function W_GETtDateTimeNow(){
        var dNow = new Date;
        var tDateTimeNow = dNow.getFullYear().toString() + dNow.getMonth().toString() + dNow.getDay().toString() + dNow.getHours().toString() + dNow.getMinutes().toString() + dNow.getSeconds().toString() + dNow.getMilliseconds().toString();
        return tDateTimeNow;
    }
    
    //ning 08/11/2010
    function W_DATbBrowseData(ptCase,ptObjID,ptObjName) 
    {
            var tDate = J002_GETtTimeStamp()
            var tReturnedValue = showModalDialog('<%=Url.Action("C_BRWxMaster","cvcCompany") %>' + '?ptCase=' + ptCase + '&ptDate=' + tDate, "Passed String", "dialogWidth:800px; dialogHeight:500px; status:no; center:yes;titlebar =0")
            if (tReturnedValue != undefined) 
            {
                if (tReturnedValue != '12233344445555566666677777778888888899999999900000000001223334444555556666667777777888888889999999990000000000') {
                     document.getElementById(ptObjID).value = tReturnedValue.split(";")[0]
                     document.getElementById(ptObjName).value = tReturnedValue.split(";")[1]
                    }
            }
    }
    
    function W_FRMxGetFieldName(ptController, ptAction, ptObjCodeId, ptObjNameId, ptObjCodeOldId, ptTblName, ptFieldCode, ptFieldName, ptMsgErr) 
    {
        var tMsgNoData = '<%=ViewData("tMsgDAT_Notfound001")%>' + ptMsgErr;
        J002_GETxFieldName(ptController, ptAction, ptObjCodeId, ptObjNameId, ptObjCodeOldId, ptTblName, ptFieldCode, ptFieldName, tMsgNoData)

    }
    
   function W_SETtGetValueName() 
   {
          //  W_FRMxGetFieldName(tW_Controller, 'C_GETtFeildName', 'FTBchCode' + 'FTCmpBranch', 'otbOldBchCode', 'TCNMBranch','FTBchCode', 'FTBchName', '<%=ViewData("olaFTBchCode")%>');
          //  W_FRMxGetFieldName(tW_Controller, 'C_GETtFeildName', 'FTVatCode' + 'FCCmpVatAmt', 'otbOldVatCode', 'TCNMVatRate', 'FTVatCode', 'FCVatRate', '<%=ViewData("olaFTVatCode")%>');
   }
    
    
  function FTVatCode_onblur()
  {
    W_FRMxGetFieldName(tW_Controller, 'C_GETtFeildName', 'FTVatCode', 'FCCmpVatAmt', 'otbOldVatCode', 'TCNMVatRate', 'FTVatCode', 'FCVatRate', '<%=ViewData("olaFTVatCode")%>');

  }
  
  
  function FTVatCode_onkeydown()
  {
    if (window.event.keyCode == 13)
    {
         W_FRMxGetFieldName(tW_Controller, 'C_GETtFeildName', 'FTVatCode', 'FCCmpVatAmt', 'otbOldVatCode', 'TCNMVatRate', 'FTVatCode', 'FCVatRate', '<%=ViewData("olaFTVatCode")%>');

    }
  }
  
    function FTBchCode_onblur()
  {
    W_FRMxGetFieldName(tW_Controller, 'C_GETtFeildName', 'FTBchCode', 'FTCmpBranch', 'otbOldBchCode', 'TCNMBranch', 'FTBchCode', 'FTBchName', '<%=ViewData("olaFTBchCode")%>');

  }
  
  
  function FTBchCode_onkeydown()
  {
    if (window.event.keyCode == 13)
    {
        W_FRMxGetFieldName(tW_Controller, 'C_GETtFeildName', 'FTBchCode', 'FTCmpBranch', 'otbOldBchCode', 'TCNMBranch', 'FTBchCode', 'FTBchName', '<%=ViewData("olaFTBchCode")%>');

    }
  }

  function W_AlertChange() {
      alert('<%=ViewData("tMsgAlertWhsChange")%>');
  }

  function W_FRMxCloseDoc() {
      J003_SHWxWaiting();
      window.location = '<%=Url.Action("Index","cvcCNPanal")%>' + '?ptMenuGrpName=Manage';
//        var tDataTimeNow = W_GETtDateTimeNow();
//        var tUrl = '/Home/Index?ptDate=' + tDataTimeNow;
//        window.location = tUrl;
   }

   function W_Clear_logo() {
       J003_SHWxWaiting();
       window.location = '<%=Url.Action("Index","cvcCompany")%>' + '?C_logo=1';
   }

   function W_Clear_map() {
       J003_SHWxWaiting();
       window.location = '<%=Url.Action("Index","cvcCompany")%>' + '?C_map=1';
   }

   //*CH 02-10-2012
   function W_FRMxShowHome() {
       J003_SHWxWaiting();
       window.location = '<%=Url.Action("Index","Home")%>';
   }
   function W_FRMxClose() {
       J003_SHWxWaiting();
       window.location = '<%=Url.Action("Index","cvcCNPanal") %>?ptMenuGrpName=Manage';
   }
</script>  

<%  Using Html.BeginForm("C_DATxSaveData", "cvcCompany", FormMethod.Post, New With {.collection = "cmlCompany", .ptValue = "Company", .name = "wCompany",.id="wCompany", .enctype = "multipart/form-data"})%>
<input type="hidden" id="otbOldVatCode" />  
<input type="hidden" id="otbOldBchCode" />
<input type="hidden" id="otbHidFileUploadAction" value = "/Content/AdaImage"/>
<input type="hidden" id="otbHidImageBase"  value = "/Content/AdaImage/GetAFile" />
<input type="hidden" id="FTCmpCode"  name ="FTCmpCode" value="<%=model.FTCmpCode%>" />
<input type="hidden" id="FTCmpYearDisp" name="FTCmpYearDisp"  value="<%=model.FTCmpYearDisp%>" /> 
<input type="hidden" id="FTCmpRmk" name="FTCmpRmk" value="<%=model.FTCmpRmk%>" /> 
<input type="hidden" id="FDDateUpd" name="FDDateUpd" value="<%=model.FDDateUpd%>" /> 
<input type="hidden" id="FTTimeUpd" name="FTTimeUpd" value="<%=model.FTTimeUpd%>" /> 
<input type="hidden" id="FTWhoUpd" name="FTWhoUpd" value="<%=model.FTWhoUpd%>" /> 
<input type="hidden" id="FDDateIns" name="FDDateIns" value="<%=model.FDDateIns%>" />
<input type="hidden" id="FTTimeIns" name="FTTimeIns" value="<%=model.FTTimeIns%>" />
<input type="hidden" id="FTWhoIns" name="FTWhoIns" value="<%=model.FTWhoIns%>" />
<input type="hidden" id="FTCmpLogo" name="FTCmpLogo" value="<%=model.FTCmpLogo%>" />
<input type="hidden" id="FTCmpMap" name="FTCmpMap" value="<%=model.FTCmpMap%>" />
<div class="xCN_DivMain xCN_AllBorderColor xCN_AllFontFamily xCN_AllFontSize xCN_AllFontColor" style="height:305px" >
    <%-------------------ชื่อเอกสาร---------------------------%>   
        <%--<div class="xCN_DivManageTopic xCN_AllMenuFontSize">
            <label id="olaTopicName" ><%=ViewData("olaHeaderAdd")%></label> 
        </div>--%>
    <!-------------------Path menu------------------------->
    <div class="xW_DivHeaderPath">
        <div class='xW_DivPath'>
            <label>\\
                <a class="xCN_LabelLink" onclick='J003_SHWxWaiting();' href="<%=Url.Action("Index","Home") %>">
                    <%=ViewData("olaMenuHome") %>
                </a>\
                <a class="xCN_LabelLink" onclick='J003_SHWxWaiting();' href="<%=Url.Action("Index","cvcCNPanal") %>?ptMenuGrpName=Manage">
                    <%=ViewData("olaMenuGroup") %>
                </a>\
                <%=ViewData("olaHeaderAdd") & " (Server)"%>
            </label>
        </div>
    </div>    
    <%-------------------เมนูด้านบนสุด---------------------------%>
        <div id="odiMenuTop" class="xCN_AllBorderColor xCN_DivMainMenu">
            <div id="odiMenu" class="xCN_DivMenu">
                <!-- ไปหน้าแรก *CH 02-10-2012 -->
                <div id="odiMenuHome" class="xCN_DivMenuHome" style="float: left;">
                    <a onclick="W_FRMxShowHome()" href="javascript:void(0)">
                        <div class="xCN_DivMenuHomeCaption">
                            <%=ViewData("olaMenuHome")%>
                        </div>
                    </a>
                </div>
                <!---------------------------->
                <div id="odiMenuSave" class="xCN_DivMenuSave" style="float: left;">
                    <a href="javascript:void();" onclick="W_FRMxSaveDoc();">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaCanSave")%>
                        </div>
                    </a>
                </div>
                <%--<div id="odiMenuClose" class="xCN_DivMenuHome" style="float: left;">
                    <a href="javascript:void();" onclick="W_FRMxCloseDoc()">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaClose")%>
                        </div>
                    </a>
                </div>--%>
                <!-- ไปเมนูการจัดการ *CH 02-10-2012 -->
                <div id="odiMenuExit" class="xCN_DivMenuLogOut" style="float: left;">
                    <a onclick="W_FRMxClose()" href="javascript:void(0)">
                        <div class="xCN_DivMenuLogOutCaption">
                            <%=ViewData("olaMenuExit")%>
                        </div>
                    </a>
                </div>
                <!---------------------------->
            </div>
       </div> 
       
    <%-------------------ส่วนรายละเอียด-------------------------%>  
    <div class='xCN_DivDetail xCN_AllBorderColor'>  
        <div class="xW_DivDetail">
            <div class="xCN_DivTabToppic">
                <a href="javascript:void(0)" onclick="{J010_SHWxTabData(0,'odiDetail','odiMap');J009_SHWxTabTop(0,'odiDetailCap','odiMapCap')}">
                    <div id="odiDetailCap" class="xCN_DivTabActive">
                        <%=ViewData("olaTabDetail")%>
                    </div>
                </a><a href="javascript:void(0)" onclick="{J010_SHWxTabData(1,'odiDetail','odiMap');J009_SHWxTabTop(1,'odiDetailCap','odiMapCap')}">
                    <div id="odiMapCap" class="xCN_DivTabUnActive">
                        <%=ViewData("olaTabMap")%>
                    </div></a> 
            </div>
            <div id="odiDetail" class ="xCN_DivTabDetail">
                <div class="xCN_AllBackgroundColor xW_DivDetailSub">
                    <div class="xW_DivCaption">
                        <div class="xW_DivCaptionSub">
                            <label><%=ViewData("olaFTCmpName")%></label>
                        </div>
                        <div class="xW_DivCaptionSub">
                            <label><%=ViewData("olaFTCmpDirector")%></label>
                        </div>
                        <div class="xW_DivCaptionSub">
                            <label><%=ViewData("olaFTCmpShop")%></label>
                        </div>
                        <div class="xW_DivCaptionAddress">
                            <label><%=ViewData("olaFTCmpAddr")%></label>
                        </div>
                        <div class="xW_DivCaptionSub">
                            <label><%=ViewData("olaFTCmpTel")%></label>
                        </div>
                        <div class="xW_DivCaptionSub">
                            <label><%=ViewData("olaFTCmpFax")%></label>
                        </div>
                        <div class="xW_DivCaptionSub">
                            <label><%=ViewData("olaFTCmpTaxNo")%></label>
                        </div>
                        <div class="xW_DivCaptionSub xCN_DivDisplayNone">
                            <label><%=ViewData("olaFTBchCode")%></label>
                        </div> 
                        <div class="xW_DivCaptionSub xCN_AllFontColorTextReq">
                            <label>*<%=ViewData("olaFTVatCode")%></label>
                        </div>
                        <div class="xW_DivCaptionSub">
                            <label><%=ViewData("olaFTCmpWhsInOrEx")%></label>
                        </div>
                        <div class="xW_DivCaptionSub">
                            <label><%=ViewData("olaFTCmpRetInOrEx")%></label>
                        </div>
                        <div class="xW_DivCaptionSub">
                            <label><%=ViewData("olaFTCmpLogo")%></label>
                        </div>

                    </div>
                    <div class="xW_DivData">
                        <div class="xW_DivDataSub">
                            <input type="text" style ="width:260px" value="<%=model.FTCmpName%>" id="FTCmpName" name="FTCmpName" maxlength ="200" onkeypress= "return J002_CHKbCheckTxtKey(event.keyCode, event.which);" />
                        </div>
                        <div class="xW_DivDataSub">
                            <input type="text" style ="width:260px"  value="<%=model.FTCmpDirector%>" id="FTCmpDirector" name="FTCmpDirector"  maxlength ="50" onkeypress= "return J002_CHKbCheckTxtKey(event.keyCode, event.which);" />
                        </div>
                        <div class="xW_DivDataSub">
                            <input type="text" style ="width:260px"  value="<%=model.FTCmpShop%>" id="FTCmpShop" name="FTCmpShop"  maxlength ="200" onkeypress= "return J002_CHKbCheckTxtKey(event.keyCode, event.which);" />
                        </div>
                        <div class="xW_DivDataAddress">
                            <textarea  
                                id="FTCmpAddr" 
                                name="FTCmpAddr" style ="width:260px; height:50px;"  
                                cols="0" 
                                rows="3" 
                                class="xW_TextAreaAddress"
                                onkeypress= "return J002_CHKbCheckTxtKey(event.keyCode, event.which);" ><%=model.FTCmpAddr%></textarea>
                        </div>
                        <div class="xW_DivDataBottom">
                            <div class="xW_DivDataBottomLeft">
                                <input type="text" style ="width:260px" 
                                    value="<%=model.FTCmpTel%>" 
                                    id="FTCmpTel" 
                                    name="FTCmpTel" 
                                    maxlength ="50" 
                                    class="xW_InputTextTelFaxTaxNo"
                                    onkeypress= "return J002_CHKbCheckTxtKey(event.keyCode, event.which);" />
                            </div>
                            <div class="xW_DivDataBottomLeft">
                                <input type="text" style ="width:260px" 
                                    value="<%=model.FTCmpFax%>" 
                                    id="FTCmpFax" 
                                    name="FTCmpFax" 
                                    maxlength ="50" 
                                    class="xW_InputTextTelFaxTaxNo"
                                    onkeypress= "return J002_CHKbCheckTxtKey(event.keyCode, event.which);" />
                            </div>            
                            <div class="xW_DivDataBottomLeft">
                                <input type="text" style ="width:260px" 
                                    value="<%=model.FTCmpTaxNo%>" 
                                    id="FTCmpTaxNo" 
                                    name="FTCmpTaxNo" 
                                    maxlength ="20"
                                    class="xW_InputTextTelFaxTaxNo"
                                    onkeypress= "return J002_CHKbCheckTxtKey(event.keyCode, event.which);" />
                            </div>
                            <div class="xW_DivDataBottomLeft xCN_DivDisplayNone">
                                <div class="xW_DivBchCode">
                                    <input type="text" 
                                            id="FTBchCode" 
                                            name="FTBchCode" 
                                            maxlength="3"
                                            class="xW_InputTextBchCode"
                                            value="<%=model.FTBchCode%>" 
                                            onfocus="J002_SETxKeepOldOnfocus('FTBchCode','otbOldBchCode')" 
                                            onblur="FTBchCode_onblur()" 
                                            onkeydown="FTBchCode_onkeydown()"
                                            onkeypress= "return J002_CHKbCheckTxtKey(event.keyCode, event.which);" />                    
                                </div>
                                <div class="xCN_DivBrowData">
                                     <img src="<%=Url.Content(ViewData("oimgBrowse"))%>" 
                                            alt="<%=ViewData("olaBrowse").ToString%>"
                                            class="xCN_ImgBrowData"
                                            onclick="W_DATbBrowseData('Branch','FTBchCode','FTCmpBranch')" />                      
                                </div>
                                <div class="xW_DivBchName">
                                    <input type="text" 
                                        id="FTCmpBranch" 
                                        name="FTCmpBranch" 
                                        value="<%=model.FTCmpBranch%>" 
                                        maxlength="100" 
                                        class="xW_InputTextBchName xCN_AllReadOnlyBGColor"
                                        readonly="readonly"
                                        style="width:150px"
                                        onkeydown = "return false;" />
                                        <%--** --%>   
                                </div>
                            </div>
                            <div class="xW_DivDataBottomLeft">
                                <div class="xW_DivVATCode">
                                    <input type="text" 
                                            id="FTVatCode" 
                                            name="FTVatCode" 
                                            maxlength="3"
                                            class="xW_InputTextVATCode"
                                            value="<%=model.FTVatCode%>" 
                                            onblur ="FTVatCode_onblur()" 
                                            onkeydown="FTVatCode_onkeydown()" 
                                            onfocus ="J002_SETxKeepOldOnfocus('FTVatCode','otbOldVatCode')"
                                            onkeypress= "return J002_CHKbCheckTxtKey(event.keyCode, event.which);" />                                                   
                                </div>
                                <div class="xCN_DivBrowData">
                                     <img src="<%=Url.Content(ViewData("oimgBrowse"))%>" 
                                            alt="<%=ViewData("olaBrowse").ToString%>"
                                            class="xCN_ImgBrowData"
                                            onclick="W_DATbBrowseData('VatRate','FTVatCode','FCCmpVatAmt')" />                      
                                </div>
                                <div class="xW_DivVATName">
                                    <input type="text" 
                                        id="FCCmpVatAmt" 
                                        name="FCCmpVatAmt"
                                        value="<%=model.FCCmpVatAmt%>" 
                                        style="width:50px"
                                        maxlength="100" 
                                        class="xW_InputTextVATName xCN_AllReadOnlyBGColor"
                                        readonly="readonly"
                                        onkeydown = "return false;" />%
                                        <%--** --%>   
                                </div>
                            </div>
                            <div class ="xW_DivDataBottomLeft">
                                <%=Html.DropDownListFor(Function(model) model.FTCmpWhsInOrEx, CType(ViewData("WhsInOrEx"), SelectList), New With {.class = "xW_DropDownList", .name = "FTCmpWhsInOrEx", .onChange = "W_AlertChange()" })%>
                            </div>
                            <div class ="xW_DivDataBottomLeft">
                               <%=Html.DropDownListFor(Function(model) model.FTCmpRetInOrEx, CType(ViewData("RetInOrEx"), SelectList), New With {.class = "xW_DropDownList", .name = "FTCmpRetInOrEx", .disabled = "disabled"})%>
                            </div> 
                            <div class ="xW_DivDataBottomLeft">   
                            <div class="xW_DivBrowseImage">                                                                                       
                                    <input type="file" id="otbFilePath" name="otbFilePath"  style="width:100%" />                                  
                            </div>            
                            <div class="xW_DivUploadImage">
                                <input type="button" id="ocmUpLoadFile" value="<%=ViewData("tMsgUpload") %>"  style="width:100%;"/>
                                </div>
                                <div class="xW_DivUploadImage">
                                <input type="button" id="ocmClearPath" value="<%=ViewData("tMsgCancel") %>" style="width:100%;" onclick="W_Clear_logo()"/>
                                </div>                              
                            </div>                        
                        </div>
                        <div class="xW_DivDataCompanyLogo" id="odiCompLogo"></div> 
                    </div>
                </div>
            </div>
            <div id="odiMap" class ="xCN_DivTabDetail">
                 <div class="xCN_AllBackgroundColor xW_DivDetailSub" >
                    <div class="xW_DivCompanyMap" id="odiCompanyMap">
                    </div>
                    <div class="xW_DivCaptionSub"  style="padding:0px 0px 0px 15px">
                        <label><%=ViewData("olaFTCmpMap")%></label>
                    </div>
                    <div class ="xW_DivDataBottomLeft">   
                        <div class="xW_DivBrowseImage">
                            <input type="file" id="otbMapPath" name="otbMapPath"  style="width:100%"/>
                        </div> 
                        <div class="xW_DivUploadImage">
                            <input type="button" id="ocmUploadMap" value="<%=ViewData("tMsgUpload")%>"  style="width:100%;"/>
                        </div>
                        <div class="xW_DivUploadImage">
                            <input type="reset" id="ocmClearMapPath" value="<%=ViewData("tMsgCancel")%>"  style="width:100%;" onclick="W_Clear_map()"/>
                        </div>
                    </div>
                 </div>
            </div>
        </div>
    </div>

<%End Using%>     
       
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="HeadContent">
<script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J002_General.js") %>"></script>
<link rel="Stylesheet" href="<%=Url.Content("~/Content/AdaCss/Local/FCS_cvcCompany.css") %>" />
<script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J009_ShowTab.js") %>"></script>
<script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J010_ShowTabData.js") %>"></script>
<script type="text/javascript" src="<%=Url.Content("~/Scripts/jquery-1.4.2.min.js") %>"></script>
<script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J001_LoadAutoGenCode.js") %>"></script>
<script type="text/javascript" src="<%=Url.Content("~/Scripts/jquery-1.3.2.js") %>"></script>

<script language="javascript" type="text/javascript" >
    $(document).ready(function(e) {
    $("#ocmUpLoadFile").click(function() {
            J003_SHWxWaiting();
            $file = $("#otbFilePath");

            var $filePath = $.trim($file.val());
            if ($filePath == "") {
                alert('<%=ViewData("tMsgBrwFile")%>');
                J003_DISxWaiting();
                return;
            }            
            var $ext = $filePath.split(".").pop().toLowerCase();
            var $allow = new Array("gif", "png", "jpg", "jpeg");
            if ($.inArray($ext, $allow) == -1) {
                alert('<%=ViewData("tMsgBrwFileOnlyImage")%>');
                J003_DISxWaiting();
                return;
            }

            $("#wCompany").attr("action", '<%=Url.Action("C_DATxSaveImage","cvcCompany") %>');
            //alert(565);

            try {
                $("#wCompany").submit();
                //alert('<%=Url.Action("C_DATxSaveImage","cvcCompany") %>');
            } catch (err) {
                alert('<%=ViewData("tMsgBrwFileError")%>');
            }
            //document.getElementById('FTCmpLogo').value = $filePath;
        });
        $("#ocmUploadMap").click(function() {
            J003_SHWxWaiting();
            $file = $("#otbMapPath");

            var $filePath = $.trim($file.val());
            if ($filePath == "") {
                alert('<%=ViewData("tMsgBrwFile")%>');
                J003_DISxWaiting();
                return;
            }
            var $ext = $filePath.split(".").pop().toLowerCase();
            var $allow = new Array("gif", "png", "jpg", "jpeg");
            if ($.inArray($ext, $allow) == -1) {
                alert('<%=ViewData("tMsgBrwFileOnlyImage")%>');
                J003_DISxWaiting();
                return;
            }

            $("#wCompany").attr("action", '<%=Url.Action("C_DATxSaveCompanyMap","cvcCompany")%>');

            try {
                $("#wCompany").submit();
            } catch (err) {
                alert('<%=ViewData("tMsgBrwFileError")%>');
            }
            //document.getElementById('FTCmpMap').value = $filePath;
        });
    });       

</script>
</asp:Content>


