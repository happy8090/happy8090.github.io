<%@ Page Language="C#" MasterPageFile="~/Master/Default/Page.master" AutoEventWireup="true" CodeBehind="UserOfCompanyList.aspx.cs" Inherits="WangQi.ERP.Web.UserOfCompanyList" Title="无标题页" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<%@ Register Src="~/Controls/MemberLogin.ascx" TagPrefix="UC" TagName="MemberLogin" %>
<%@ Register Src="~/Controls/ArticleModule.ascx" TagPrefix="UC" TagName="ArticleModule" %>

<asp:Content ID="SideContent" runat="server" ContentPlaceHolderID="Side" EnableViewState="False">
    <div class="lframe" id="ClassList" runat="server">
        <div class="tl"></div>
        <div class="tr"></div>
        <div class="tm"> <span class="tt">
            <asp:Label ID="SideMenuTitle" runat="server" Text="" CssClass="sideMenuTitle" EnableViewState="False"></asp:Label>
            </span></div>
        <div class="pack">
            <div class="ml"></div>
            <div class="mr"></div>
            <div class="mm">
                <div id="sideMenuBox">
                    <!--<asp:Menu ID="SideMenu" runat="server" CssClass="sideMenuContent" EnableViewState="False" DynamicEnableDefaultPopOutImage="False" MaximumDynamicDisplayLevels="6" StaticEnableDefaultPopOutImage="False">
                        <StaticMenuStyle CssClass="staticMenu" />
                        <StaticMenuItemStyle CssClass="staticMenuItem" />
                        <DynamicHoverStyle CssClass="dynamicHover" />
                        <DynamicMenuStyle CssClass="dynamicMenu" />
                        <StaticSelectedStyle CssClass="staticSelected" />
                        <DynamicSelectedStyle CssClass="dynamicSelected" />
                        <DynamicMenuItemStyle CssClass="dynamicMenuItem" />
                        <StaticHoverStyle CssClass="staticHover" />
                    </asp:Menu>-->
                    <asp:TreeView ID="TreeView2" runat="server" NodeIndent="5" ShowLines="false" Width="70%">
                        <NodeStyle Height="20px" />
                    </asp:TreeView>
                </div>
            </div>
        </div>
        <div class="bl"></div>
        <div class="br"></div>
        <div class="bm"></div>
    </div>
</asp:Content>
<asp:Content ID="MainContent" runat="server" ContentPlaceHolderID="MainContent" EnableViewState="False">
    <div class="siteMapPath" >
        <asp:Literal ID="SiteMapPath" runat="server" Text="" EnableViewState="False"></asp:Literal>
    </div>
    <div class="mframe">
        <div class="tl"></div>
        <div class="tr"></div>
        <div class="tm"> <span class="tt">
            <asp:Literal ID="Literal1" meta:resourcekey="Literal1" runat="server"></asp:Literal>
            </span></div>
        <div class="pack">
            <div class="ml"></div>
            <div class="mr"></div>
            <div class="mm">
                <asp:Literal ID="Department" meta:resourcekey="Department" runat="server"></asp:Literal>
                <asp:DropDownList ID="ddlList" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"> </asp:DropDownList>
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" BorderWidth="1px" CssClass="bor">
                    <Columns>
                    <asp:TemplateField HeaderText="" >
                        <ItemTemplate> <%# Eval("FullName")%> </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="">
                        <ItemTemplate> <%# Eval("GroupName")%> </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="">
                        <ItemTemplate> <%# Eval("RegTime")%> </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="">
                        <ItemTemplate> <%# GetCompanyWorkTime(Eval("MemberId"))%> </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="">
                        <ItemTemplate> <a href='<%# GetUrl(Eval("MemberId"), Request["Language"])%>'>
                            <asp:Literal ID="GvSee" meta:resourcekey="GvSee" runat="server"></asp:Literal>
                            </a> </ItemTemplate>
                    </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <webdiyer:AspNetPager class="pager" ID="MemberListPager" runat="server" AlwaysShow="True" UrlPaging="true" EnableUrlRewriting="false" ShowBoxThreshold="20" EnableViewState="False" InputBoxClass="pagerInputBox" OnPageChanging="MemberListPager_PageChanging" SubmitButtonClass="pagerSubmitButton" CurrentPageButtonClass="current" FirstPageText="<%$ Resources:WebResourcesGlobal, FirstPageText %>" LastPageText="<%$ Resources:WebResourcesGlobal, LastPageText %>" NextPageText="<%$ Resources:WebResourcesGlobal, NextPageText %>" PrevPageText="<%$ Resources:WebResourcesGlobal, PrevPageText %>"> </webdiyer:AspNetPager>
            </div>
        </div>
        <div class="bl"></div>
        <div class="br"></div>
        <div class="bm"></div>
    </div>
</asp:Content>
