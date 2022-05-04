<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WangQi.ERP.Web.login" %>
<%@ Register Src="Controls/MemberLogin.ascx" TagName="MemberLogin" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<title>会员登录</title>
<style type="text/css">
<!--
*{ font-size:14px;}
ul{ list-style:none outside none; line-height:30px;}
input{ border: 1px solid #aaccef;}
.loginErrorSummary { display: none;}
-->
</style>
</head>
<body>


<div style="position:absolute; top:10%; left:50%; margin-left:-175px; width:350px;border: 1px solid #aaccef; background:#f6f9fe; padding:10px;">
<table width="100%"><tr><td><b>会员登录</b></td><td align="right"><a href='<%=index_str %>'>返回首页</a></td></tr></table>
<hr />
            <form id="form1" runat="server">
                    <uc1:MemberLogin ID="MemberLogin1" runat="server" />
            </form>
</div>

</body>
</html>
