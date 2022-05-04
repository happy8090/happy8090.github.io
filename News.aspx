<%@ Page Language="C#" MasterPageFile="~/Master/Default/Page.master"  AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="WangQi.ERP.Web.News" Title="ÎÞ±êÌâÒ³" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<%@ Register Src="~/Controls/MemberLogin.ascx" TagPrefix="UC" TagName="MemberLogin" %>
<%@ Register Src="~/Controls/ArticleModule.ascx" TagPrefix="UC" TagName="ArticleModule" %>

<asp:Content ID="SideContent" ContentPlaceHolderID="Side" Runat="Server">
    <div class="panel" id="ClassList" runat="server">
        <script type="text/javascript" src="js/dwnTree.js"></script>
        <div id="dwnTree" class="dwnTree"></div>
        <script type="text/javascript">
   //<![CDATA[
     new dwnTree('js/dwnTree.xml','dwnTree',{name:'dwnTree2Cookie'});
   //]]>
   </script>
    </div>
</asp:Content>
<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="siteMapPath" >
        <asp:Literal ID="SiteMapPath" runat="server" EnableViewState="False"></asp:Literal>
    </div>
    <asp:Panel ID="NoLoginPanel" runat="server" Visible="false" EnableViewState="False">
        <asp:Label ID="PlealseLogin" runat="server" CssClass="plealseLogin" Text="" ></asp:Label>
        <UC:MemberLogin ID="MemberLogin1" runat="server" EnableViewState="false" />
        <asp:HiddenField ID ="hidden" runat ="server" Value="" />
        </asp:Panel>
    <asp:Panel ID="LoginPanel" runat="server" EnableViewState="False">
        <div class="mframe">
            <asp:Repeater ID="ArticleList" runat="server" EnableViewState="False">
                <headertemplate>
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
                </headertemplate>
                <ItemTemplate>
                    <li>
                        <asp:Label ID="AddTime" CssClass="addTime" runat="server" Text='<%# Convert.ToDateTime(Eval("AddTime")).ToString(dateTimeFormat) %>'></asp:Label>
                        <asp:Label ID="ClassName" CssClass="className" runat="server" Text='<%# String.Format("[{0}]",Eval("className")) %>' ></asp:Label>
                        <a href='<%# WangQi.ERP.WebsiteData.Website.IsURLRewriter() ? String.Format("{1}-D1-{0}-{2}"+WangQi.ERP.WebsiteData.Function.GetPostfixName(),Eval("ArticleId"),Eval("FileName"),WangQi.ERP.WebsiteData.Website.GetLanguage()) :String.Format("NewsDetail.aspx?Id={0}&FileName={1}&Language={2}",Eval("ArticleId"),Eval("FileName"),WangQi.ERP.WebsiteData.Website.GetLanguage())%>' class='<%# Eval("IsNew").ToString()=="1"?"highlight":"" %>'><%# CutTitle(Eval("Title")) %></a><%# Eval("IsTop").ToString() == "1" ? "&nbsp;<img src='images/up.gif' align='absmiddle' alt='top' />" : ""%> </li>
                </ItemTemplate>
            </asp:Repeater>
            </ul>
            <div class="pager">
                <webdiyer:AspNetPager ID="ArticleListPager" runat="server" AlwaysShow="True" UrlPaging="true" EnableUrlRewriting="false" OnPageChanged="ArticleListPager_PageChanged" ShowBoxThreshold="20" EnableViewState="False" InputBoxClass="pagerInputBox" OnPageChanging="ArticleListPager_PageChanging" SubmitButtonClass="pagerSubmitButton" CurrentPageButtonClass="current" FirstPageText="<%$ Resources:WebResourcesGlobal, FirstPageText %>" LastPageText="<%$ Resources:WebResourcesGlobal, LastPageText %>" NextPageText="<%$ Resources:WebResourcesGlobal, NextPageText %>" PrevPageText="<%$ Resources:WebResourcesGlobal, PrevPageText %>"> </webdiyer:AspNetPager>
            </div>
        </div>
    </div>
    <div class="bl"></div>
    <div class="br"></div>
    <div class="bm"></div>
    </div>
    </asp:Panel>
</asp:Content>
