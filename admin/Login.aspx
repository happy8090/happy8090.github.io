<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WangQi.ERP.Web.admin.Login" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
<title>管理员登录</title>
<link href="style/style.css" rel="stylesheet" type="text/css" />
<script language ="javascript" type="text/javascript" src="../../js/WebResource1.js"></script>
<script language ="javascript" type="text/javascript" src="../../js/WebResource2.js"></script>
<style type="text/css">
<!--
#loginBox { background: url(style/LoginBg.gif) no-repeat; height: 175px; width: 327px;margin:120px auto auto auto}
body { text-align: center; background:#fff ; margin: auto; padding: 0px; color: #000;}
#loginDiv { margin: 0px; padding:45px 0 0 85px;}
#loginDiv td { height:30px; }
.userInput, .code { background: #fff; border: 1px solid #9e9787; height: 14px; width: 116px; }
.code { width: 40px; }
.loginBt { color: #000; background: url(style/loginBtn.gif) no-repeat; border:none;height: 25px; width: 58px; vertical-align: middle; }
-->
</style>
<script type="text/javascript">
  function location()
  {
    var obj=document.getElementById("UserName");
    obj.focus();
  }
</script>
</head>
<body class="loginBody" onload="javascript:location()">
<form id="form1" runat="server">
    <div id="loginBox">
        <div id="loginDiv">
            <table width="224" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="68" align="center" valign="middle">用户名:</td>
                    <td width="156" align="left" class="td">&nbsp;
                        <asp:TextBox ID="UserName" runat="server" CssClass="userInput" onmouseover="this.focus()"></asp:TextBox></td>
                </tr>
                <tr>
                    <td align="center" valign="middle">密&nbsp;&nbsp;&nbsp;&nbsp;码:</td>
                    <td align="left" class="td">&nbsp;
                        <asp:TextBox ID="Password" runat="server" CssClass="userInput" TextMode="Password" onmouseover="this.focus()">wangqi</asp:TextBox></td>
                </tr>
                <tr>
                    <td align="center" valign="middle">验&nbsp;&nbsp;&nbsp;&nbsp;证:</td>
                    <td align="left" class="td">&nbsp;
                        <asp:TextBox ID="Code" runat="server" CssClass="code" MaxLength="4" onmouseover="this.focus()"></asp:TextBox>
                        &nbsp;
                        <asp:Image ID="CodeImage" runat="server" ImageAlign="Middle" ImageUrl="~/admin/Code.aspx"  CssClass="CodeImage" />
                       </td>
                </tr>
                <tr>
                    <td align="center"><asp:Button ID="LoginBt" runat="server" CssClass="loginBt" Text="登 录" OnClick="LoginBt_Click" /></td>
                    <td align="left" class="td">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName"
                          Display="Dynamic" EnableClientScript="False">管理员名不能为空</asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password"
                          Display="Dynamic" ErrorMessage="RequiredFieldValidator" EnableClientScript="False">密码不能为空</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="管理员名不合法" ControlToValidate="UserName" Display="Dynamic" EnableClientScript="False" ValidationExpression="[a-zA-Z0-9]{0,12}"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Code"
                          Display="Dynamic" ErrorMessage="RequiredFieldValidator" EnableClientScript="False">验证码不能为空</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Code"
                          Display="Dynamic" ErrorMessage="验证码应为数字" ValidationExpression="\d+" EnableClientScript="False"></asp:RegularExpressionValidator>
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="Code"
                          Display="Dynamic" ErrorMessage="验证码错误" OnServerValidate="CustomValidator1_ServerValidate" EnableClientScript="False"></asp:CustomValidator>
                        <asp:Label ID="ShowErr" runat="server" ForeColor="Red" Text="错误信息"></asp:Label>
                    
                    
                    
                    
                        </td>
                </tr>
                
                
            </table>
        </div>
    </div>
</form>
</body>
</html>
