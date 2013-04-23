<%@ Page Language="VB" %>
<%@ Import Namespace="AdaWebPos" %>


<html xmlns="http://www.w3.org/1999/xhtml" >
<head><title ></title>
<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim oSP As New cCNSP
        Dim tRptName As String = ""
        ViewData("Lang") = Request.QueryString("nLang")
        ViewData("DocNo") = Request.QueryString("tDocNo")
        ViewData("BarCode") = Request.QueryString("tBarCode")
        ViewData("BchCode") = Request.QueryString("tBchCode")
        ViewData("Factor") = Request.QueryString("nFactor")
        ViewData("Fsh") = Request.QueryString("tFsh")
        ViewData("RptMode") = Request.QueryString("tRptMode")
        ViewData("RptName") = Request.QueryString("tRptName")
        'tRptName = Request.QueryString("tRptName")
        'ViewData("RptName") = tRptName.Replace(".rpt", ".mrt")
        ViewData("SplCode") = Request.QueryString("tSplCode")
        ViewData("ComName") = Request.QueryString("tComName")
        ViewData("nCountDec") = Request.QueryString("nCountDec")
        ViewData("ovd_cPointSpl") = Request.QueryString("cPointSpl") '*CH 11-11-11
        'ViewData("Conn") = oSP.SP_GETtStrConn
        
        'ning 17/02/2011 ยกเลิกการอ่าน Url ของ AdaReportForm จาก WebConfig ให้อ่านจาก AdaIni.Xada
        'ViewData("AdaReportURL") = System.Configuration.ConfigurationManager.ConnectionStrings("AdaReportURL").ConnectionString
        'ViewData("AdaReportURL") = "/" & Session("RptFormVirtualDir") & "/wMain.aspx" '*CH 05-01-2012 Old
        ViewData("AdaReportURL") = "/" & Session("VirtualDirectory") & "/wReport.aspx" '*CH 05-01-2012
    End Sub
    
    
</script>
<script type ="text/javascript" >

    function window_onload() {
        //window.PostDetail.submit();
        document.getElementById('PostDetail').submit();//*CH 22-05-2012 New
        window.moveTo(0, 0);
        window.resizeTo(1024, 768);
    }

</script>
</head>

    
<body onload="return window_onload()">
<%--<body>--%>

<form name="PostDetail" id="PostDetail" method ="post" action ="<%=ViewData("AdaReportURL")%>">


<%--<form name="PostDetail" id="PostDetail" method ="post" action ="http://192.168.0.59:3000/Report/wMain.aspx">--%>


   <input type ="text" name="tDocNo" value ='<%=viewdata("DocNo")%>' style ="visibility :hidden;" />
    <input type ="text" name="nLang" value ='<%=viewdata("Lang")%>' style ="visibility :hidden;"/>
    <input type ="text" name="tBarCode" value ='<%=viewdata("BarCode")%>' style ="visibility :hidden;"/>
    <input type ="text" name="tBchCode" value ='<%=viewdata("BchCode")%>'style ="visibility :hidden;" />
    <input type ="text" name="nFactor" value ='<%=viewdata("Factor")%>' style ="visibility :hidden;"/>
    <input type ="text" name="tFsh" value ='<%=viewdata("Fsh")%>' style ="visibility :hidden;"/>
    <input type ="text" name="tConn" value ='<%=viewdata("Conn")%>' style ="visibility :hidden;"/>
    <input type ="text" name="tRptName" value ='<%=viewdata("RptName")%>' style ="visibility :hidden;"/>
    <input type ="text" name="tSplCode" value ='<%=viewdata("SplCode")%>' style ="visibility :hidden;"/>
    <input type ="text" name="tComName" value ='<%=viewdata("ComName")%>' style ="visibility :hidden;"/>
    <input type ="text" name="tRptMode" value ='<%=viewdata("RptMode")%>' style ="visibility :hidden;"/>
    <input type ="text" name="nCountDec" value ='<%=viewdata("nCountDec")%>' style ="visibility :hidden;"/>
    <input type="text" name="cPointSpl" value ='<%=ViewData("ovd_cPointSpl")%>' style ="visibility :hidden;"/> <!-- *CH 11-11-11 -->
    
    <%--tDocNo<input type ="text" name="tDocNo" value ='<%=viewdata("DocNo")%>' /></br>
    nLang<input type ="text" name="nLang" value ='<%=viewdata("Lang")%>' /></br>
    tBarCode<input type ="text" name="tBarCode" value ='<%=viewdata("BarCode")%>' /></br>
    tBchCode<input type ="text" name="tBchCode" value ='<%=viewdata("BchCode")%>'/></br>
    nFactor<input type ="text" name="nFactor" value ='<%=viewdata("Factor")%>' /></br>
    tFsh<input type ="text" name="tFsh" value ='<%=viewdata("Fsh")%>' /></br>
    tConn<input type ="text" name="tConn" value ='<%=viewdata("Conn")%>' /></br>
    tRptName<input type ="text" name="tRptName" value ='<%=viewdata("RptName")%>' /></br>
    tSplCode<input type ="text" name="tSplCode" value ='<%=viewdata("SplCode")%>' /></br>
    tComName<input type ="text" name="tComName" value ='<%=viewdata("ComName")%>' /></br>
    tRptMode<input type ="text" name="tRptMode" value ='<%=viewdata("RptMode")%>' /></br>
    nCountDec<input type ="text" name="nCountDec" value ='<%=viewdata("nCountDec")%>'/></br>
     URL<input type ="text" name="tUrl" value ='<%=viewdata("AdaReportURL")%>'/></br>
    <input type ="submit" value ="submit" />--%>
    
</form>

</body>
</html>