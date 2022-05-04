<%@ Page Language="C#" MasterPageFile="~/Master/Default/Page.master" AutoEventWireup="true" CodeBehind="UserOfCompanyDetail.aspx.cs" Inherits="WangQi.ERP.Web.UserOfCompanyDetail" Title="无标题页" %>
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
            <asp:Literal ID="LiteralDesc" meta:resourcekey="LiteralDesc" runat="server"></asp:Literal>
            </span></div>
        <div class="pack">
            <div class="ml"></div>
            <div class="mr"></div>
            <div class="mm f14">
                <table width="100%" cellpadding="6" cellspacing="0" border="0">
                    <tr>
                        <td width="20%" align="right"><asp:Literal ID="UserName" meta:resourcekey="UserName" runat="server"></asp:Literal></td>
                        <td><asp:Literal ID="txtFullName" runat="server"></asp:Literal></td>
                    </tr>
                    <tr>
                        <td align="right"><asp:Literal ID="Department" meta:resourcekey="Department" runat="server"></asp:Literal></td>
                        <td><asp:Literal ID="txtDepartment" runat="server"></asp:Literal></td>
                    </tr>
                    <tr>
                        <td align="right"><asp:Literal ID="AddTime" meta:resourcekey="Addmine" runat="server"></asp:Literal></td>
                        <td><asp:Literal ID="txtRegTime" runat="server"></asp:Literal>
                            <br /></td>
                    </tr>
                    <tr>
                        <td align="right"><asp:Literal ID="StartTime" meta:resourcekey="StartTime" runat="server"></asp:Literal></td>
                        <td><input type="text" id="txtStartTime" name="txtStartTime" class="inputbg" />
                            <script type="text/javascript">
				DateInput('txtStartTime', 'YYYY-MM-DD', '<%=DateTime.Now.ToString("yyyy-MM-dd")%>');
        </script></td>
                    </tr>
                    <tr>
                        <td align="right"><asp:Literal ID="EndTime" meta:resourcekey="EndTime" runat="server"></asp:Literal></td>
                        <td><input type="text" id="txtEndTime" name="txtEndTime" class="inputbg" />
                            <script type="text/javascript">
				DateInput('txtEndTime', 'YYYY-MM-DD', '<%=DateTime.Now.AddDays(1).ToString("yyyy-MM-dd")%>');
        </script></td>
                    </tr>
                    <tr>
                        <td align="right"></td>
                        <td><asp:Button ID="btnSearch" meta:resourcekey="btnSearch" CssClass="btn" runat="server" Text="" OnClick="btnSearch_Click" /></td>
                    </tr>
                </table>
                <asp:Repeater ID="Repeater1" runat="server">
                    <HeaderTemplate>
                        <table width="100%" border="0" cellspacing="0" cellpadding="6" class="bor">
                        <tr>
                            <th><asp:Literal ID="BIndex" meta:resourcekey="BIndex" runat="server"></asp:Literal></th>
                            <th><asp:Literal ID="TimeS" meta:resourcekey="TimeS" runat="server"></asp:Literal></th>
                            <th><asp:Literal ID="IP" meta:resourcekey="IP" runat="server"></asp:Literal></th>
                            <th><asp:Literal ID="Done" meta:resourcekey="Done" runat="server"></asp:Literal></th>
                            <th><asp:Literal ID="Desc" meta:resourcekey="Desc" runat="server"></asp:Literal></th>
                        </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%# Container.ItemIndex+1 %></td>
                            <td><%# Eval("AddTime") %></td>
                            <td><%# Eval("IP") %></td>
                            <td><%# GetState(Eval("StateID"))%></td>
                            <td><%# GetStateDetail(Eval("ID"))%></td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
                <webdiyer:AspNetPager Class="pager" ID="MemberListPager" runat="server" AlwaysShow="True" UrlPaging="true" EnableUrlRewriting="false" ShowBoxThreshold="20" EnableViewState="False" InputBoxClass="pagerInputBox" OnPageChanging="MemberListPager_PageChanging" SubmitButtonClass="pagerSubmitButton" CurrentPageButtonClass="current" FirstPageText="<%$ Resources:WebResourcesGlobal, FirstPageText %>" LastPageText="<%$ Resources:WebResourcesGlobal, LastPageText %>" NextPageText="<%$ Resources:WebResourcesGlobal, NextPageText %>" PrevPageText="<%$ Resources:WebResourcesGlobal, PrevPageText %>" PageSize="10"> </webdiyer:AspNetPager>
            </div>
        </div>
    </div>
</asp:Content>
