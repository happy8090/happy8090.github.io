<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ContentChannel.ascx.cs" Inherits="WangQi.ERP.Web.admin.ContentChannel" %>
    <div class="leftMenuTitle">
        <%=Request.Params["op"] == null ? "常用频道" : "稀用频道" %>
    </div>
    <asp:BulletedList ID="ContentMenuList" runat="server" CssClass="leftMenu" DisplayMode="HyperLink">
    </asp:BulletedList>
    