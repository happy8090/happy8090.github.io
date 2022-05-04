<%@ Page Language="C#" MasterPageFile="~/Master/Default/Page.master" AutoEventWireup="true" CodeBehind="NoticeDetail.aspx.cs" Inherits="WangQi.ERP.Web.NoticeDetail" Title="无标题页" %>
<asp:Content ID="SideContent" ContentPlaceHolderID="Side" Runat="Server" EnableViewState="False">
    <asp:Label ID="SideMenuTitle" runat="server" Text="" Visible="false"></asp:Label>
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="siteMapPath" >
        <asp:Literal ID="SiteMapPath" runat="server" Text=""></asp:Literal>
    </div>
    <div class="mframe">
        <div class="tl"></div>
        <div class="tr"></div>
        <div class="tm"> <span class="tt"> 网站公告 </span></div>
        <div class="pack">
            <div class="ml"></div>
            <div class="mr"></div>
            <div class="mm">
                <div class="articleT">
                    <asp:Label ID="NoticeTitle" EnableViewState="False" runat="server" Text=""></asp:Label>
                </div>
                <div id="content">
                    <asp:Label ID="NoticeContent" EnableViewState="False" runat="server" Text=""></asp:Label>
                    <div class="highlight"><%=DownFile%></div>
                </div>
            </div>
        </div>
        <div class="bl"></div>
        <div class="br"></div>
        <div class="bm"></div>
    </div>
</asp:Content>
