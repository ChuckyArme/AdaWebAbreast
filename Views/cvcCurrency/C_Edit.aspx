<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage(Of Adasoft.WebPos.Models.cmlTCNMRate)" %>
<%@ Import Namespace="System.Resources" %>
<%@ Import Namespace="AdaWebPos" %>
<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        AdaWebPos.My.Resources.resLCcvcCurrency.Culture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
        Resources.resGBMsg.Culture = New System.Globalization.CultureInfo(Session("tVB_LastLang").ToString)
        ViewData("olaRowID") = AdaWebPos.My.Resources.resLCcvcCurrency.olaRowID
        ViewData("olaCanEdit") = AdaWebPos.My.Resources.resLCcvcCurrency.olaCanEdit
        ViewData("olaCanDelete") = AdaWebPos.My.Resources.resLCcvcCurrency.olaCanDelete
        ViewData("olaCanSave") = AdaWebPos.My.Resources.resLCcvcCurrency.olaCanSave
        ViewData("olaCreate") = AdaWebPos.My.Resources.resLCcvcCurrency.olaCreate
        ViewData("olaFTRteCode") = AdaWebPos.My.Resources.resLCcvcCurrency.olaFTRteCode
        ViewData("olaFTRteName") = AdaWebPos.My.Resources.resLCcvcCurrency.olaFTRteName
        ViewData("olaFCRteFraction") = AdaWebPos.My.Resources.resLCcvcCurrency.olaFCRteFraction
        ViewData("olaFCRteRate") = AdaWebPos.My.Resources.resLCcvcCurrency.olaFCRteRate
        ViewData("olaFTRteDecLang1") = AdaWebPos.My.Resources.resLCcvcCurrency.olaFTRteDecLang1
        ViewData("olaFTRteDecLang2") = AdaWebPos.My.Resources.resLCcvcCurrency.olaFTRteDecLang2
        ViewData("olaFTRteNameLang1") = AdaWebPos.My.Resources.resLCcvcCurrency.olaFTRteNameLang1
        ViewData("olaFTRteNameLang2") = AdaWebPos.My.Resources.resLCcvcCurrency.olaFTRteNameLang2
        ViewData("olaFTRtePic") = AdaWebPos.My.Resources.resLCcvcCurrency.olaFTRtePic
        ViewData("olaFTRteShtName") = AdaWebPos.My.Resources.resLCcvcCurrency.olaFTRteShtName
        ViewData("olaFTRteSign") = AdaWebPos.My.Resources.resLCcvcCurrency.olaFTRteSign
        ViewData("olaFTRteStaLocal") = AdaWebPos.My.Resources.resLCcvcCurrency.olaFTRteStaLocal
        ViewData("olaFTRteStaUse") = AdaWebPos.My.Resources.resLCcvcCurrency.olaFTRteStaUse
        ViewData("olaFTRteType") = AdaWebPos.My.Resources.resLCcvcCurrency.olaFTRteType
        ViewData("olaFTRteTypeChg") = AdaWebPos.My.Resources.resLCcvcCurrency.olaFTRteTypeChg
        ViewData("olaMenuName") = AdaWebPos.My.Resources.resLCcvcCurrency.olaMenuName
        ViewData("olaNotAccess") = AdaWebPos.My.Resources.resLCcvcCurrency.olaNotAccess
        ViewData("olaReport") = AdaWebPos.My.Resources.resLCcvcCurrency.olaReport
        ViewData("olaHeaderEdit") = AdaWebPos.My.Resources.resLCcvcCurrency.olaHeaderEdit
        ViewData("olaHeaderAdd") = AdaWebPos.My.Resources.resLCcvcCurrency.olaHeaderAdd
        ViewData("olaHeaderDetail") = AdaWebPos.My.Resources.resLCcvcCurrency.olaHeaderDetail
        ViewData("olaHeaderList") = AdaWebPos.My.Resources.resLCcvcCurrency.olaHeaderList
        ViewData("olaDetail") = AdaWebPos.My.Resources.resLCcvcCurrency.olaDetail
        ViewData("olaDecimalFra") = AdaWebPos.My.Resources.resLCcvcCurrency.olaDecimalFra
        ViewData("olaDataEntry") = AdaWebPos.My.Resources.resLCcvcCurrency.olaDataEntry
        ViewData("olaSelectPic") = AdaWebPos.My.Resources.resLCcvcCurrency.olaSelectPic
        ViewData("oimgComingSoon") = Resources.resGBImageList.oimgComingSoon
        ViewData("tMsgBrwFile") = Resources.resGBMsg.tMsgBrwFile
        ViewData("tMsgErrorData") = Resources.resGBMsg.tMsgErrorData
        ViewData("tMsgBrwFileOnlyImage") = Resources.resGBMsg.tMsgBrwFileOnlyImage
        ViewData("tMsgBrwFileError") = Resources.resGBMsg.tMsgBrwFileError
        
        
        ViewData("oimgSave") = Url.Content(Resources.resGBImageList.oimgSave)
        ViewData("oimgUndo") = Url.Content(Resources.resGBImageList.oimgUndo)
        ViewData("oimgBrowse") = Url.Content(Resources.resGBImageList.oimgBrowse)
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    <%=ViewData("olaHeaderEdit")%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <script type="text/javascript">
    window.onload = window_onload;
    function window_onload() {
        //W_SETxComboLang();
        ////document.getElementById("loading").style.display = "none";
        W_SETxChangeTxtStaUse();
        W_SHWxShowPic();
        tJ002_VirtualDirectory = '<%=Session("VirtualDirectory") %>';
        tJ003_VirtualDirectory = '<%=Session("VirtualDirectory") %>';
        J002_SETxReadOnly("FTRteCode", true);
        document.getElementById("FTRteCode").onkeydown = function() { return false; };
    }
    
  function  W_FRMxForwClose() {
    J003_SHWxWaiting();
    window .location = '<%=Url.Action("Index","cvcCurrency")%>';
  }

  function W_SHWxShowPic() {

      var tImageName = '<%=model.FTRtePic%>';
      var oElement = document.getElementById('odiPic');
      if (tImageName != null && tImageName != "") {
          oElement.innerHTML = '<img id ="oimLogo" alt="" src="'+tImageName+'"  style="width:90%;height:90%;margin:5px 10px 10px 10px;overflow:hidden;"/>';
      }
      else {
          oElement.innerHTML = '<img id ="oimLogo" alt="" src="<%=Url.Content("~/Content/img/AdaPanal/imgNoImages.png")%>" style="width:90%;height:90%;margin:5px 10px 10px 10px;overflow:hidden;"/>';
      }
  }
  
    function W_SETxChangeStaUse() {
        //			alert('Hello');
        var tValue = document.getElementById('FTRteStaUse');
        if (document.getElementById('ChkStaUse').checked == true) {
            tValue.value = '1';
            return true;
        } else {
            tValue.value = '0';
            return false;
        }
    }
    function W_SETxChangeStaLocal() {
        var tValue = document.getElementById('FTRteStaLocal');
        if (document.getElementById('ChkStaLoacl').checked == true) {
            tValue.value = '1';
            return true;
        } else {
            tValue.value = '0';
            return false;
        }
    }

    function W_SETxChangeTxtStaUse() {
        var tValue = document.getElementById('ChkStaUse');
        if (document.getElementById('FTRteStaUse').value == '1') {
            tValue.checked = true;
        } else {
            tValue.checked = false;
        }


    }
    function W_SETxChangeTxtStaLocal() {
        var tValue = document.getElementById('ChkStaLocal');
        if (document.getElementById('FTRteStaLocal').value == '1') {
            tValue.checked = true;
        } else {
            tValue.checked = false;
        }
    }

    function W_FRMxSaveDocument() {
        var tCode = document.getElementById("FTRteCode").value;
        var tName = J002_STRttrim(document.getElementById("FTRteName").value);

        if (tCode == "" || tCode == null) {
            alert('<%=ViewData("tMsgErrorData")%>');
            document.getElementById("FTRteCode").focus();
            return false;
        }

        if (tName == "" || tName == null) {
            alert('<%=ViewData("tMsgErrorData")%>');
            document.getElementById("FTRteName").focus();
            return false;
        }

        var tAuthor = '<%=AdaWebPos.cCNSP.eTypeAuthor.Add%>';
        var tPwdAllow = '<%=AdaWebPos.cCNVB.bVB_CNPwdAllow %>';
        var tMsgNotAuthorize = '<%=ViewData("tMsgNotAuthorize") %>';
        var bAllow = J002_CHKtCheckAuthorize('omnMngExchg', tAuthor, tPwdAllow, tMsgNotAuthorize);
        if (bAllow == false) {
            return false;
        }
        else {
            document.wCurrency.submit();
        }
    }
   
</script>
     
            
    <%--The line below is a workaround for a VB / ASPX designer bug--%>
    <%=""%> 

     <% Using Html.BeginForm("C_Edit", "cvcCurrency", FormMethod.Post, New With {.collection = "dat_TCNMRate", .ID = "wCurrency", .name = "wCurrency", .enctype = "multipart/form-data"})%>
      <input type="hidden" id="otdFTRtePic" name="FTRtePic"  value ="<%=Model.FTRtePic %>"/> 
     <div class="xCN_DivMain xCN_AllFontFamily xCN_AllFontSize xCN_AllFontColor" >
    <div style="display:none">
                <%= Html.HiddenFor(Function(model) model.FDDateUpd) %>
                <%= Html.HiddenFor(Function(model) model.FTTimeUpd) %>
                <%= Html.HiddenFor(Function(model) model.FTWhoUpd) %>
                <%= Html.HiddenFor(Function(model) model.FDDateIns) %>
                <%= Html.HiddenFor(Function(model) model.FTTimeIns) %>
                <%= Html.HiddenFor(Function(model) model.FTWhoIns) %>
    </div>
    <%-------------------ชื่อเอกสาร---------------------------%>   
    <%--<div class="xCN_DivManageTopic xCN_AllMenuFontSize">--%>
    <div class="xW_DivSearch">
        <div class='xW_DivPath'>
            <label id="olaTopicName" ><%=ViewData("olaHeaderEdit")%></label> 
        </div>
    </div>
    <%--</div>--%>
    <%-------------------เมนู-------------------------------%>   
    <div id="odiMenuTop" class="xCN_DivMainMenuPage xCN_AllBorderColor">
          <div id="odiMenu" class="xW_DivMenu">
                <div id="odiMenuSave" class="xCN_DivMenuSave" style="float: left;">
                    <a onclick="W_FRMxSaveDocument()" href="javascript:void(0)">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaCanSave")%>
                        </div>
                    </a>
                </div>
                <div id="odiMenuClose" class="xCN_DivMenuHome" style="float: left;">
                    <a onclick = "W_FRMxForwClose()" href="javascript:void(0)">
                        <div class="xCN_DivMenuNewCaption">
                            <%=ViewData("olaHeaderList")%>
                        </div>
                    </a>
                </div>
          </div>
    </div>
    <%-------------------ส่วนรายละเอียด-------------------------%>  
    
    <%--<div class="xW_DivDetail xCN_AllBackgroundColor2 xCN_AllBorderColor">--%>
    <div class="xCN_AllBorderColor xCN_AllBackgroundColor xCN_DivMainMenuPage" style='height:525px;'>
            <div class="xCN_DivTabToppic">
                <a href="javascript:void(0);" onclick="{J009_SHWxTabTop(0,'odiDetail','odiFraction');J010_SHWxTabData(0,'odiDetailCap','odiFractionCap')}">
                    <div id="odiDetail" class="xCN_DivTabActive">
                         <%=ViewData("olaDataEntry")%>
                    </div>
                </a>
                <a href="javascript:void(0);" onclick="{J009_SHWxTabTop(1,'odiDetail','odiFraction');J010_SHWxTabData(1,'odiDetailCap','odiFractionCap')}">
                    <div id="odiFraction" class="xCN_DivTabUnActive">
                         <%=ViewData("olaDecimalFra")%>
                    </div>
                </a>
            </div>
            <div id="odiDetailCap" class ="xCN_DivTabDetail">
                <div class="xCN_AllBackgroundColor xW_DivDetailSub">
                    <div class="xW_DivCaption">
                        <div class="xW_DivCaptionSub xCN_AllFontColorTextReq">
                            <label>*<%=ViewData("olaFTRteCode")%></label>
                        </div>
                        <div class="xW_DivCaptionSub xCN_AllFontColorTextReq">
                            <label>*<%=ViewData("olaFTRteName")%></label>
                        </div>
                        <div class="xW_DivCaptionSub">
                            <label><%=ViewData("olaFTRteShtName")%></label>
                        </div>
                        <div class="xW_DivCaptionSub">
                            <label><%=ViewData("olaFTRteSign")%></label>
                        </div>
                        <div class="xW_DivCaptionSub">
                            <label><%=ViewData("olaFTRteType")%></label>
                        </div>
                        <div class="xW_DivCaptionSub">
                             <label><%=ViewData("olaFTRteTypeChg")%></label>
                        </div>
                          <div class="xW_DivCaptionSub">
                            <label><%=ViewData("olaFCRteRate")%></label>
                        </div>
                        <div class="xW_DivCaptionSub">
                            <label><%=ViewData("olaFCRteFraction")%></label>
                        </div>
                    
                     
                    </div>
   
                      <div class="xW_DivData">
                      <div class="xW_DivDataSub">
                        <div class="xW_DivCode ">
                            <input type="text" 
                                value="<%=model.FTRteCode%>" 
                                id="FTRteCode" 
                                name="FTRteCode" 
                                readonly="readonly"
                                class="xW_InputTextCode xCN_AllReadOnlyBGColor"
                                onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,true)"
                                maxlength = '<%=ViewData("MaxLenght") %>' />
                            <%=Html.ValidationMessageFor(Function(model) model.FTRteCode)%>
                        </div>               
                    </div>
 
                        
                   <div class="xW_DivDataSub">
                        <%=Html.TextBoxFor(Function(model) model.FTRteName, New With {.maxlength = "100",.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)"})%>
                        <%=Html.ValidationMessageFor(Function(model) model.FTRteName)%>
                    </div>
                   <div class="xW_DivDataSub">
                        <%=Html.TextBoxFor(Function(model) model.FTRteShtName, New With {.maxlength = "10",.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)"})%>
                        <%=Html.ValidationMessageFor(Function(model) model.FTRteShtName)%>
                    </div>
                   <div class="xW_DivDataSub">
                        <%=Html.TextBoxFor(Function(model) model.FTRteSign, New With {.maxlength = "10",.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)"})%>
                        <%=Html.ValidationMessageFor(Function(model) model.FTRteSign)%>
                    </div>
             
                   <div class="xW_DivDataSub">
                        <%=Html.DropDownListFor(Function(model) model.FTRteType, CType(ViewData("RteType"), SelectList))%>
                        <%=Html.ValidationMessageFor(Function(model) model.FTRteType)%>
                    </div>     
                   <div class="xW_DivDataSub">
                        <%=Html.DropDownListFor(Function(model) model.FTRteTypeChg, CType(ViewData("RteTypeChg"), SelectList))%>
                        <%=Html.ValidationMessageFor(Function(model) model.FTRteTypeChg)%>
                    </div>     
                   <div class="xW_DivDataSub">
                        <%=Html.TextBoxFor(Function(model) model.FCRteRate, New With {.onkeypress="return J002_CHKbCheckNumOnly('567',event.keyCode,false)"})%>
                        <%=Html.ValidationMessageFor(Function(model) model.FCRteRate)%>
                    </div>
                   <div class="xW_DivDataSub">
                        <%=Html.TextBoxFor(Function(model) model.FCRteFraction, New With {.onkeypress="return J002_CHKbCheckNumOnly('567',event.keyCode,false)"})%>
                        <%=Html.ValidationMessageFor(Function(model) model.FCRteFraction)%>
                    </div>                

        </div>
             
                    <div class ="xW_DivCaption">
                <div class ="xW_DivCaptionSub2 ">
                  <label><%=ViewData("olaFTRteStaLocal")%></label>
              </div>
                <div class ="xW_DivCaptionSub2 ">
                  <label><%=ViewData("olaFTRteStaUse")%></label>
              </div>
                <div class ="xW_DivCaptionSub2 ">
                 <label><%=ViewData("olaFTRteNameLang1")%></label>
              </div>
              <div class ="xW_DivCaptionSub2 ">
                 <label><%=ViewData("olaFTRteNameLang2")%></label>
              </div>
               <div class ="xW_DivCaptionSub2 ">
                  <label><%=ViewData("olaFTRteDecLang1")%></label>
              </div>
              <div class ="xW_DivCaptionSub2 ">
                 <label><%=ViewData("olaFTRteDecLang2")%></label>
              </div>
              <div class ="xW_DivCaptionSub2 ">
                 <label><%=ViewData("olaSelectPic")%></label>
              </div>
              </div>
                    <div class ="xW_DivDataEntry">
       
              <div class ="xW_DivDataEntrySub">
                    <input type ="checkbox" id="ChkStaLoacl" onclick ="W_SETxChangeStaLocal()"/>
                        <%=Html.TextBoxFor(Function(model) model.FTRteStaLocal, New With {.style = "visibility :hidden;"})%> 
                        <%=Html.ValidationMessageFor(Function(model) model.FTRteStaLocal)%>
                        
              </div>
              <div class ="xW_DivDataEntrySub ">
                        <input type ="checkbox" id="ChkStaUse" onclick ="W_SETxChangeStaUse()"/>
                        <%=Html.TextBoxFor(Function(model) model.FTRteStaUse, New With {.style = "visibility :hidden;"})%>                                             
                        <%=Html.ValidationMessageFor(Function(model) model.FTRteStaUse)%>
              </div>
              <div class ="xW_DivDataEntrySub ">
                         <%=Html.TextBoxFor(Function(model) model.FTRteNameLang1, New With {.maxlength = "50",.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)"})%>
                        <%=Html.ValidationMessageFor(Function(model) model.FTRteNameLang1)%>
              </div>
              <div class="xW_DivDataEntrySub">
                        <%=Html.TextBoxFor(Function(model) model.FTRteNameLang2, New With {.maxlength = "50",.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)"})%>
                        <%=Html.ValidationMessageFor(Function(model) model.FTRteNameLang2)%>
              </div>
              <div class="xW_DivDataEntrySub">
                        <%=Html.TextBoxFor(Function(model) model.FTRteDecLang1, New With {.maxlength = "50",.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)"})%>
                        <%=Html.ValidationMessageFor(Function(model) model.FTRteDecLang1)%>
                   </div> 
              <div class="xW_DivDataEntrySub">
                        <%=Html.TextBoxFor(Function(model) model.FTRteDecLang2, New With {.maxlength = "50",.onkeypress="return J002_CHKbCheckTxtKey(event.keyCode,event.which,false)"})%>
                        <%=Html.ValidationMessageFor(Function(model) model.FTRteDecLang2)%>
                   </div> 
              
                     <div class="xW_DivBrowseImage">
                    <input type="file" id="otbFilePath" name="otbFilePath" value="<%=model.FTRtePic%>"  style="width:100%"/>      
                </div>          
                  <div class="xW_DivUploadImage">
                    <input type="button" id="ocmUpLoadFile" value="Upload"  style="width:100%;height:21px; vertical-align:top;"/>
                </div>
                  <div class="xW_DivUploadImage">
                    <input type="button" id="ocmClearPath" value="Clear" style="width:100%;height:21px; vertical-align:top;"/>
                </div>
              
              
              </div>
              
              
                    <div class ="xW_DivImg">
              <div class ="xW_DivImgSub" id="odiPic">
                <img src="<%=ViewData("oimgComingSoon").ToString%>" alt="" />
              </div>
             
       </div>
           
       
      
                </div>
            </div>
            <div id="odiFractionCap" class ="xCN_DivTabDetail">
            <div class="xCN_AllBackgroundColor xW_DivDetailSub">
   <% 
       Dim tCaption(1) As String
       Dim tField(1) As String
 
       Dim oData As IEnumerable(Of Adasoft.WebPos.Models.cmlTCNMRateUnit) = ViewData("oC_Rate")
       Dim gridBuilder = Html.Telerik().Grid(Of Adasoft.WebPos.Models.cmlTCNMRateUnit)(oData)
       gridBuilder.Name("Grid")
       gridBuilder.Pageable(Function(page) page.PageSize(10))
       gridBuilder.Sortable().ToolBar(Function(commands) commands.Insert.HtmlAttributes( _
                 New With {.id = "ocmAdd"})) _
       .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"})
       gridBuilder.DataBinding(Function(dataBinding) (dataBinding.Ajax() _
                .Select("_SelectAjaxEditing", "cvcCurrency", New With {.ptCode = (Function(o) o.FTRtuCode)}) _
                .Update("_SaveAjaxEditing", "cvcCurrency") _
                .Delete("_DeleteAjaxEditing", "cvcCurrency", New With {.FNRtuSeq = (Function(o) o.FNRtuSeq)}) _
                .Insert("_InsertAjaxEditing", "cvcCurrency", New With {.ptCode = (Function(o) o.FTRtuCode)})))
       gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FNRtuSeq).Width(50) _
               .Title(ViewData("olaRowID")).ReadOnly(True) _
               .HeaderHtmlAttributes(New With {.name = "FNRtuSeq", .style = "text-align:center; font-size:14px;"}) _
               .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
       
       gridBuilder.Columns(Function(columns) columns.Bound(Function(o) o.FCRtuFac).Width(503) _
               .Title(ViewData("olaFCRteRate")) _
               .HeaderHtmlAttributes(New With {.name = "FCRtuFac", .style = "text-align:center; font-size:14px;"}) _
               .HtmlAttributes(New With {.style = "text-align:left; font-size:12px;"}))
          
       gridBuilder.DataKeys(Function(keys) (keys.Add(Function(c) c.FNRtuSeq)))
        
       
          
       gridBuilder.Columns(Function(columns) columns.Command(Function(commands) commands.Edit()) _
                               .Width(30).Title("Commands").Visible(False))
       gridBuilder.Columns(Function(columns) columns.Command(Function(commands) commands.Delete()) _
                               .Width(30).Title("Commands").Visible(False))
          
       Dim commandColumn As New GridActionColumn(Of Adasoft.WebPos.Models.cmlTCNMRateUnit) _
                                (gridBuilder.ToComponent())
       commandColumn.Title = ViewData("olaEdit")
       commandColumn.HeaderHtmlAttributes.Add("style", "text-align:center; font-size:13px;")
       commandColumn.HtmlAttributes.Add("style", "text-align:left; font-size:12px;")
       Dim objEdit As New GridEditActionCommand
       commandColumn.Commands.Add(objEdit)
       Dim objDelete As New GridDeleteActionCommand
       commandColumn.Commands.Add(objDelete)
            
       gridBuilder.Selectable()
       'gridBuilder.ClientEvents(Function(Events) Events.OnLoad("W_SETxFilterOnClick"))
       'gridBuilder.ClientEvents(Function(Events) Events.OnDataBound("W_SETxFilterOnClick"))
       'gridBuilder.ClientEvents(Function(Events) Events.OnEdit("W_CHKxStatus"))
       'gridBuilder.ClientEvents(Function(Events) Events.OnDelete("W_CHKxUserDeleteAuthorize"))
       'gridBuilder.ClientEvents(Function(Events) Events.OnSave("W_CHKxUserAuthorize"))
       gridBuilder.RowAction(Function(row) (row.Selected = row.DataItem.FNRtuSeq.Equals(ViewData("olaRowID"))))
       gridBuilder.ToComponent().Columns.Add(commandColumn)
       gridBuilder.Pageable(Function(page) page.Total(10))
                       
       'gridBuilder.Pageable()
         
       gridBuilder.Selectable()
       gridBuilder.Render()
                
        %>
 </div>
       
                          
            </div>
       
            
            </div>
        </div>
     
     
     

    <% End Using %>
    
   
    
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="HeadContent">

    <script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J001_LoadAutoGenCode.js")%>"></script>
<script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J003_SplashDialog.js")%>"></script>
<link type="text/css" rel="Stylesheet" href="<%=Url.Content("~/Content/AdaCss/Local/FCS_cvcCurrency.css")%>" />
<link href="<%=Url.Content("~/Content/AdaCss/Global/FCS_CNCenter.css")%>" rel="stylesheet" type="text/css" />  
<script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J009_ShowTab.js")%>"></script> 
<script type="text/javascript" src="<%=Url.Content("~/Scripts/AdaScript/J010_ShowTabData.js")%>"></script> 
<script type="text/javascript" src="<%=Url.Content("~/Scripts/jquery-1.4.2.min.js")%>"></script> 
<script type="text/javascript" src="<%=Url.Content("~/Scripts/jquery-1.3.2.js")%>"></script> 
<script language="javascript" type="text/javascript" >

    $(document).ready(function(e) {
        $("#ocmUpLoadFile").click(function() {
            $file = $("#otbFilePath");
            J003_SHWxWaiting();
            var $filePath = $.trim($file.val());
            if ($filePath == "") {
                alert('<%=ViewData("tMsgBrwFile")%>');
                return;
            }
            var $ext = $filePath.split(".").pop().toLowerCase();
            var $allow = new Array("gif", "png", "jpg", "jpeg");
            if ($.inArray($ext, $allow) == -1) {
                alert('<%=ViewData("tMsgBrwFileOnlyImage")%>');
                return;
            }

            $("#wCurrency").attr("action", '<%=Url.Action("C_DATxSaveImage","cvcCurrency")%>' + '?ptCase=C_Edit');

            try {
                $("#wCurrency").submit();
            } catch (err) {
                alert('<%=ViewData("tMsgBrwFileError")%>');
            }
        });

        $("#ocmClearPath").click(function() {
            $file = $("#otbFilePath");
            J003_SHWxWaiting();
            $("#wCurrency").attr("action", '<%=Url.Action("C_DATxClearImage","cvcCurrency")%>' + '?ptCase=C_Edit');

            try {
                $("#wCurrency").submit();
            } catch (err) {
                alert('<%=ViewData("tMsgBrwFileError")%>');
                J003_DISxWaiting();
            }
        });

    });

</script> 
</asp:Content>




