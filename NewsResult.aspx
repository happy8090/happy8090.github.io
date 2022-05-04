<%@ Page Language="C#" MasterPageFile="~/Master/Default/Page.master" AutoEventWireup="true" CodeBehind="NewsResult.aspx.cs" Inherits="WangQi.ERP.Web.NewsResult" Title="无标题页" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<%@ Register Src="~/Controls/MemberLogin.ascx" TagPrefix="UC" TagName="MemberLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Side" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="NoLoginPanel" runat="server" Visible="false" EnableViewState="False">
        <asp:Label ID="PlealseLogin" runat="server" CssClass="plealseLogin" Text="" ></asp:Label>
        <UC:MemberLogin ID="MemberLogin1" runat="server" EnableViewState="false" />
        <asp:HiddenField ID ="hidden" runat ="server" Value="" />
        </asp:Panel>
    <asp:Panel ID="LoginPanel" runat="server" EnableViewState="False">
        <asp:Repeater ID="ArticleList" runat="server" EnableViewState="False">
            <HeaderTemplate>
                <div class="mframe">
                <div class="tl"></div>
                <div class="tr"></div>
                <div class="tm"> <span class="tt">
                    <asp:Literal ID="ArticleListTitle" runat="server" Text='<%#articleListTitle%>'></asp:Literal>
                    </span></div>
                <div class="pack">
                <div class="ml"></div>
                <div class="mr"></div>
                <div class="mm">
                <ul class="nl">
            </HeaderTemplate>
            <ItemTemplate>
                <li>
                    <asp:Label ID="AddTime" CssClass="addTime" runat="server" Text='<%# Convert.ToDateTime(Eval("AddTime")).ToString(dateTimeFormat) %>'></asp:Label>
                    <asp:Label ID="ClassName" CssClass="className" runat="server" Text='<%# String.Format("[{0}]",Eval("className")) %>' ></asp:Label>
                    <asp:HyperLink ID="ArticleTitle" CssClass="articletitle" runat="server" NavigateUrl='<%# WangQi.ERP.WebsiteData.Website.IsURLRewriter() ? String.Format("D1-{0}-{2}/{1}"+WangQi.ERP.WebsiteData.Function.GetPostfixName(),Eval("ArticleId"),Eval("FileName"),WangQi.ERP.WebsiteData.Website.GetLanguage()) :String.Format("NewsDetail.aspx?Id={0}&FileName={1}&Language={2}",Eval("ArticleId"),Eval("FileName"),WangQi.ERP.WebsiteData.Website.GetLanguage()) %>' Text='<%# Eval("Title") %>'></asp:HyperLink>
                </li>
            </ItemTemplate>
            <FooterTemplate>
                </ul>
            </FooterTemplate>
        </asp:Repeater>
        <div class="pager">
            <webdiyer:AspNetPager ID="ArticleListPager" runat="server" AlwaysShow="True" UrlPaging="true" EnableUrlRewriting="false" OnPageChanged="ArticleListPager_PageChanged" ShowBoxThreshold="20" EnableViewState="False" InputBoxClass="pagerInputBox" OnPageChanging="ArticleListPager_PageChanging" SubmitButtonClass="pagerSubmitButton" CurrentPageButtonClass="current"> </webdiyer:AspNetPager>
        </div>
        <asp:Label ID="lbMessage" runat ="server" Text ="" meta:resourcekey="lbMessage" Visible ="false"></asp:Label>
    </div>
    </div>
    <div class="bl"></div>
    <div class="br"></div>
    <div class="bm"></div>
    </div>
    </asp:Panel>
</asp:Content>
