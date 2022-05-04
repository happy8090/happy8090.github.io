<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ReplyControl.ascx.cs" Inherits="WangQi.ERP.Web.Controls.ReplyControl" %>
<asp:Repeater ID="ReplyRepeater" runat="server" EnableViewState="False">
<ItemTemplate>
<div class="listbor">
<table width="100%" cellpadding="6" cellspacing="0" border="0"><tr><td width="60">
<asp:Literal ID="SendName" runat="server" meta:resourcekey="SendName"></asp:Literal></td><td class="14"><b><%# Eval("Reply")%></b>
</td><td align="right">
<asp:Literal ID="SendIP" runat="server" meta:resourcekey="SendIP"></asp:Literal><%# Eval("ReplyIP")%>&nbsp;&nbsp;<asp:Literal ID="SendTime" runat="server" meta:resourcekey="SendTime"></asp:Literal><%# Eval("ReplyTime")%>
</td></tr><tr><td>
<asp:Literal ID="SendContent" runat="server" meta:resourcekey="SendContent"></asp:Literal>
</td><td class="f14" colspan="2"><%# Eval("ReplyText")%>
</td></tr></table>
</div>
</ItemTemplate>
</asp:Repeater>
<asp:TextBox ID="txtReplyContent" runat="server" TextMode="MultiLine" EnableViewState="False" CssClass="inputbg" Width="100%" Height="100px"></asp:TextBox>
<br /><br />
<asp:Button ID="btnSend" meta:resourcekey="btnSend" runat="server" EnableViewState="False" OnClick="btnSend_Click" CssClass="btn" />