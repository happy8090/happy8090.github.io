<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="HotNewsModule.ascx.cs" Inherits="WangQi.ERP.Web.Controls.HotNewsModule" %>

<div class="mframe">
    <div class="tl"></div>
    <div class="tr"></div>
    <div class="tm"><h2 class="tt">热门新闻</h2></div>
    <div class="pack">
        <div class="ml"></div>
        <div class="mr"></div>
        <div class="mm">
            <asp:Literal ID="HotNewsList" runat="server" Text="" EnableViewState="false"></asp:Literal>
        </div>
    </div>
    <div class="bl"></div>
    <div class="br"></div>
    <div class="bm"></div>
</div>
