<%@ Page Language="C#" MasterPageFile="~/Master/Default/Page.master" AutoEventWireup="true" CodeBehind="PicResult.aspx.cs" Inherits="WangQi.ERP.Web.PicResult" Title="无标题页" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<%@ Register Src="~/Controls/MemberLogin.ascx" TagPrefix="UC" TagName="MemberLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Side" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="NoLoginPanel" runat="server" Visible="false" EnableViewState="False">
        <asp:Label ID="PlealseLogin" runat="server" CssClass="plealseLogin" Text="" ></asp:Label>
        <asp:HiddenField ID ="hidden" runat ="server" Value="" />
        <UC:MemberLogin ID="MemberLogin1" runat="server" EnableViewState="false" />
        </asp:Panel>
    <asp:Panel ID="LoginPanel" runat="server" EnableViewState="False">
        <div class="mframe">
            <div class="tl"></div>
            <div class="tr"></div>
            <div class="tm"> <span class="tt">
                <asp:Literal ID="PageMainContentTitle" runat="server" EnableViewState="False"></asp:Literal>
                </span></div>
            <div class="pack">
                <div class="ml"></div>
                <div class="mr"></div>
                <div class="mm">
                    <asp:DataList ID="PicList" runat="server" EnableViewState="False" CssClass="picList" Width="100%">
                        <HeaderTemplate>
                            <asp:Label ID="PicListTitle" runat="server" CssClass="picListTitle"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <div class="picImg"> <a href='<%# WangQi.ERP.WebsiteData.Website.IsURLRewriter() ? String.Format("/D2-{0}-{2}/{1}"+WangQi.ERP.WebsiteData.Function.GetPostfixName(),Eval("PicId").ToString(),Eval("FileName").ToString(),WangQi.ERP.WebsiteData.Website.GetLanguage()) : String.Format("PicDetail.aspx?id={0}&fileName={1}&Language={2}",Eval("PicId").ToString(),Eval("FileName").ToString(),WangQi.ERP.WebsiteData.Website.GetLanguage()) %>'>
                                <asp:Image ID="SmallImage" CssClass="picImage" Width="<%# new Unit(_width)%>" Height="<%# new Unit(_height)%>"  runat="server" ImageUrl='<%# Bind("PicPathSmall") %>' AlternateText='<%# Bind("Title") %>' />
                                </a> </div>
                            <div class="picText">
                                <asp:Label ID="ClassName" CssClass="picClassName" runat="server" Text='<%# String.Format("[{0}]",Eval("ClassName").ToString()) %>' ></asp:Label>
                                <asp:HyperLink ID="PicTitle" CssClass="picTitle" runat="server" NavigateUrl='<%# WangQi.ERP.WebsiteData.Website.IsURLRewriter() ? String.Format("D2-{0}-{2}/{1}"+WangQi.ERP.WebsiteData.Function.GetPostfixName(),Eval("PicId").ToString(),Eval("FileName").ToString(),WangQi.ERP.WebsiteData.Website.GetLanguage()) : String.Format("~/PicDetail.aspx?id={0}&fileName={1}&Language={2}",Eval("PicId").ToString(),Eval("FileName").ToString(),WangQi.ERP.WebsiteData.Website.GetLanguage()) %>' Text='<%# WangQi.ERP.WebsiteData.Strings.CutLenStr(Eval("Title").ToString(),_titleLength) %>' ToolTip='<%# Eval("Title") %>' ></asp:HyperLink>
                                <asp:Label ID="PicShortContent" CssClass="picShortContent" runat="server" Text='<%# WangQi.ERP.WebsiteData.Strings.CutLenStr(Eval("PicShortContent").ToString(),_shortContentLength) %>'></asp:Label>
                            </div>
                        </ItemTemplate>
                        <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
            Font-Underline="False" CssClass="picItem" />
                        <AlternatingItemStyle CssClass="picAlternating" />
                        <SeparatorStyle CssClass="picSeparator" />
                        <HeaderStyle CssClass="picHeader" />
                    </asp:DataList>
                    <div class="pager">
                        <webdiyer:AspNetPager ID="PicListPager" runat="server" AlwaysShow="true" UrlPaging="true" EnableUrlRewriting="false" OnPageChanged="PicListPager_PageChanged" ShowBoxThreshold="20" EnableViewState="False" InputBoxClass="pagerInputBox" OnPageChanging="PicListPager_PageChanging" SubmitButtonClass="pagerSubmitButton" CurrentPageButtonClass="current"> </webdiyer:AspNetPager>
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
