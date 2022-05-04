<%@ Page Language="C#" MasterPageFile="~/Master/Default/Page.master" AutoEventWireup="true" CodeBehind="SinglePage.aspx.cs" Inherits="WangQi.ERP.Web.SinglePage" Title="无标题页" %>
<%@ Register Src="~/Controls/MemberLogin.ascx" TagPrefix="UC" TagName="MemberLogin" %>
<%@ Register Src="~/Controls/ArticleModule.ascx" TagPrefix="UC" TagName="ArticleModule" %>

<asp:Content ID="SideContent" runat="server" ContentPlaceHolderID="Side" EnableViewState="False">
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
<asp:Content ID="MainContent" runat="server" ContentPlaceHolderID="MainContent" EnableViewState="False">
    <div class="siteMapPath" >
        <asp:Literal ID="SiteMapPath" runat="server" Text="" EnableViewState="False"></asp:Literal>
    </div>
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
                <div class="mm f14">
                    <asp:Literal ID="PageMainContent"  runat="server" EnableViewState="False"></asp:Literal>
                </div>
            </div>
            <div class="bl"></div>
            <div class="br"></div>
            <div class="bm"></div>
        </div>
        </asp:Panel>
</asp:Content>
