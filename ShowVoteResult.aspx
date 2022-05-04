<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowVoteResult.aspx.cs" Inherits="WangQi.ERP.Web.ShowVoteResult" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<link rel="stylesheet" type="text/css" href="Master/zh-CN/style/default.css" />
<title><%=HttpContext.GetGlobalResourceObject("WebResourcesGlobal", "ShowVoteResultTitle")%></title>
</head>
<body>
<form id="form1" runat="server">
    <asp:Panel ID="ShowPanel" runat="server">
        <div class="mframe" style=" margin:10px;">
            <div class="tl"></div>
            <div class="tr"></div>
            <div class="tm"> <span class="tt">
                <asp:Label ID="ShowTitle" runat="server"></asp:Label>
                </span></div>
            <div class="pack">
                <div class="ml"></div>
                <div class="mr"></div>
                <div class="mm">
                        <asp:Literal ID="ShowVoteList" runat="server" Text="" ></asp:Literal>
                </div>
            </div>
            <div class="bl"></div>
            <div class="br"></div>
            <div class="bm"></div>
        </div>
        </asp:Panel>
</form>
</body>
</html>
