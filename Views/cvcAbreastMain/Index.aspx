<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/SiteMain.Master" Inherits="System.Web.Mvc.ViewPage" %>

<script runat="server">    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tAbreast = "Abreast"
        Dim tMsg = "ถูกออกแบบมาเพื่อเป็นผู้ช่วย ในการบริหารจัดการธุรกิจค้าปลีกโดยตรง</br>"
        tMsg &= "โดยมีการพัฒนามาจากความรู้ความสามารถและประสบการณ์</br>"
        tMsg &= "อย่างต่อเนื่องของทีมงานของเรา เพื่อขจัดความยุ่งยากและข้อผิดพลาด</br>"
        tMsg &= "ที่มีอยู่แต่เดิมให้เป็นความง่ายและสะดวกในการใช้งาน</br>"
        tMsg &= "มีความรวดเร็วในการบริการงานขายให้กับลูกค้า อีกทั้งมีความถูกต้องแม่นยำ</br>"
        tMsg &= "นอกจากนั้นยังได้มีการนำข้อมูลเกิดจากการขายมาวิเคราะห์</br>เพื่อที่ก่อให้เกิดประโยชน์สูงสุดต่อการดำเนินงานของธุรกิจ"
        ViewData("tAbreast") = tAbreast
        ViewData("tMsg") = tMsg
    End Sub
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Abreast
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class='xW_DivDetail'>
        <div class="xW_DivImage">
            <a href="javascript:void(0)">  
                <label id="olaAbreast" class='xW_FontAbreastStyle'></label>
                <label id="olaMessage" class='xW_FontStyle' style="margin-left:19px"></label>
            </a>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
<script type="text/javascript">
    //var tHeigth;
    //var tWidth;
    window.moveTo(0, 0);
    window.onload = W_FRMxOnload;
    function W_FRMxOnload() {
        //alert('<%=ViewData("tMsg")%>');
        //$('olaMessage').html('<%=ViewData("tMsg")%>');
        //document.getElementById('olaMessage').innerHTML() = <%=ViewData("tMsg")%>;
        //$('olaMessage').html('Chuck Intara');
        document.getElementById('olaMessage').innerHTML = '<%=ViewData("tMsg")%>';
        document.getElementById('olaAbreast').innerHTML = '<%=ViewData("tAbreast")%>';
        //tHeigth = screen.height;
        //tWidth = screen.width;
        tW_StaPage = '1';
        $('#odiDetailMaster').removeClass("xW_DivDetail1");
        $('#odiDetailMaster').addClass("xW_DivDetail2");
    }
//    window.onload = function () {
//        //alert('<%=ViewData("tMsg")%>');
//        //$('olaMessage').html('<%=ViewData("tMsg")%>');
//        //document.getElementById('olaMessage').innerHTML() = <%=ViewData("tMsg")%>;
//        //$('olaMessage').html('Chuck Intara');
//        document.getElementById('olaMessage').innerHTML = '<%=ViewData("tMsg")%>';
//    }
</script>
</asp:Content>
