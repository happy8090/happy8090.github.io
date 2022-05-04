<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsertFlash.aspx.cs" Inherits="WangQi.Adv.Web.wbTextBox.InsertFlash" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    
    <script language="javascript">
    function IsDigit()
    {
      return ((event.keyCode >= 48) && (event.keyCode <= 57));
    }
    </script>
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <TABLE border=0 cellPadding=0 cellSpacing=10 align="center" style="padding-left:10px">
      <TBODY>
      <TR>
        <TD align=middle colSpan=2>
        <font class=title>插入FLASH文件</font>
        <hr width=100% >
	    扩展名：swf<br>
	    地址：<asp:FileUpload runat="server" ID="myFile" />
        </TD></TR>
       <TR>
        <TD align="middle">宽度：<INPUT id="selrow" size="7" value="480" ONKEYPRESS="event.returnValue=IsDigit();" runat="server"></TD></TR>
      <TR>
        <TD>
        <p align="center">高度：<INPUT id="selcol" size="7" value="360" ONKEYPRESS="event.returnValue=IsDigit();"  runat="server"></TD>
      <TR>
        <TD align=middle colSpan=2>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确定" /><BUTTON onclick=window.close();>取消</BUTTON>
            </TD></TR></TBODY></TABLE>    </div>
    </form>
</body>
</html>
