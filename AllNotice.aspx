<%@ Page Language="C#" MasterPageFile="~/Master/Default/Page.master" AutoEventWireup="true" CodeBehind="AllNotice.aspx.cs" Inherits="WangQi.ERP.Web.AllNotice" Title="无标题页" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<%@ Register Src="~/Controls/MemberLogin.ascx" TagPrefix="UC" TagName="MemberLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Side" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="siteMapPath" >
        <asp:Literal ID="SiteMapPath" runat="server" EnableViewState="False"></asp:Literal>
    </div>
    <asp:Panel ID="NoLoginPanel" runat="server" Visible="false" EnableViewState="False">
        <asp:Label ID="PlealseLogin" runat="server" CssClass="plealseLogin" Text="" ></asp:Label>
        <UC:MemberLogin ID="MemberLogin1" runat="server" EnableViewState="false" />
        <asp:HiddenField ID ="hidden" runat ="server" Value="" />
        </asp:Panel>
    <asp:Panel ID="LoginPanel" runat="server" EnableViewState="False">
        <asp:Repeater ID="NoticeList" runat="server" EnableViewState="False">
            <HeaderTemplate>
                <div class="mframe">
                <div class="tl"></div>
                <div class="tr"></div>
                <div class="tm"> <span class="tt">
                    <asp:Literal ID="NoticeTitleLiteral" runat="server" Text='<%#NoticeTitle%>'></asp:Literal>
                    </span></div>
                <div class="pack">
                <div class="ml"></div>
                <div class="mr"></div>
                <div class="mm">
                <ul class="nl">
            </HeaderTemplate>
            <ItemTemplate>
                <li>
                    <asp:HyperLink ID="NoticeTitle" runat="server" NavigateUrl='<%# WangQi.ERP.WebsiteData.Website.IsURLRewriter() ? String.Format("{0}-{1}/NoticeDetail"+WangQi.ERP.WebsiteData.Function.GetPostfixName(),Eval("NoticeId"),WangQi.ERP.WebsiteData.Website.GetLanguage()) :String.Format("NoticeDetail.aspx?Id={0}&Language={1}",Eval("NoticeId"),WangQi.ERP.WebsiteData.Website.GetLanguage()) %>' Text='<%# Eval("Title") %>' ToolTip='<%# Eval("Title") %>'></asp:HyperLink>
                </li>
            </ItemTemplate>
            <FooterTemplate>
                </ul>
            </FooterTemplate>
        </asp:Repeater>
        <div class="pager">
            <webdiyer:AspNetPager ID="NoticeListPager" runat="server" AlwaysShow="True" UrlPaging="true" EnableUrlRewriting="false" OnPageChanged="ArticleListPager_PageChanged" ShowBoxThreshold="20" EnableViewState="False" InputBoxClass="pagerInputBox" OnPageChanging="ArticleListPager_PageChanging" SubmitButtonClass="pagerSubmitButton" CurrentPageButtonClass="current"> </webdiyer:AspNetPager>
        </div>
    </div>
    </div>
    <div class="bl"></div>
    <div class="br"></div>
    <div class="bm"></div>
    </div>
    </asp:Panel>
</asp:Content>
