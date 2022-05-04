<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsertWMV.aspx.cs" Inherits="WangQi.Adv.Web.wbTextBox.InsertWMV" %>

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
    <TABLE border="0" cellPadding="0" cellSpacing="10" align="center" style="PADDING-LEFT:10px">
			<TBODY>
				<TR>
					<TD align="center" colSpan="2"><font class="title">插入媒体文件</font>
						<hr width="100%">
						扩展名： avi, wmv, asf, mov,mp3</TD>
				</TR>
				<TR>
					<TD align="center" colSpan="2">
                        文件地址：<asp:FileUpload ID="myFile" runat="server" /></TD>
				</TR>
				<TR>
					<TD align="center">宽度：<INPUT id="width" size="7" value="480" ONKEYPRESS="event.returnValue=IsDigit();" runat="server"></TD>
				</TR>
				<TR>
					<TD>
						<p align="center">宽度：<INPUT id="height" size="7" value="360" ONKEYPRESS="event.returnValue=IsDigit();" runat="server"></p>
					</TD>
				<TR>
					<TD align="center" colSpan="2">
						<asp:Button runat="server" ID="btnSumbit" OnClick="btnSumbit_Click" Text="确定" />
						<BUTTON onclick="window.close();" type="button">取消</BUTTON></TD>
				</TR>
			</TBODY></TABLE>
    </div>
    </form>
</body>
</html>
