<%@ Page Language="C#" MasterPageFile="~/Master/Default/Page.master" AutoEventWireup="true" CodeBehind="Message.aspx.cs" Inherits="WangQi.ERP.Web.Message" Title="无标题页" %>
<%@ Register Src="~/Controls/MemberLogin.ascx" TagPrefix="UC" TagName="MemberLogin" %>

<asp:Content ID="SideContent" ContentPlaceHolderID="Side" Runat="Server">
    <div class="lframe">
        <div class="tl"></div>
        <div class="tr"></div>
        <div class="tm"> <span class="tt">
            <asp:Label ID="SideMenuTitle" runat="server" Text="" CssClass="sideMenuTitle"></asp:Label>
            </span></div>
        <div class="pack">
            <div class="ml"></div>
            <div class="mr"></div>
            <div class="mm">
                <ul class="sideList">
                    <li class="thislist">
                        <asp:HyperLink ID="AddMessage" meta:resourcekey="AddMessage" runat="server" NavigateUrl="~/Message.aspx">HyperLink</asp:HyperLink>
                    </li>
                    <li runat="server" id="MessageListLi">
                        <asp:HyperLink ID="MessageList" meta:resourcekey="MessageList" runat="server" NavigateUrl="~/MessageList.aspx">HyperLink</asp:HyperLink>
                    </li>
                </ul>
            </div>
        </div>
        <div class="bl"></div>
        <div class="br"></div>
        <div class="bm"></div>
    </div>
</asp:Content>
<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="siteMapPath" >
        <asp:Literal ID="SiteMapPath" runat="server" Text="" EnableViewState="False"></asp:Literal>
    </div>
    <asp:Panel ID="NoLoginPanel" runat="server" Visible="false" EnableViewState="False">
        <asp:Label ID="PlealseLogin" runat="server" CssClass="plealseLogin" Text="" ></asp:Label>
        <asp:Label ID="lbMessage" runat="server" Text="对不起,您所在的会员组无权访问该频道" Visible ="false" CssClass="plealseLogin"></asp:Label>
        <br />
        <UC:MemberLogin ID="MemberLogin1" runat="server" EnableViewState="false" />
        <asp:HiddenField ID ="hidden" runat ="server" Value="" />
        </asp:Panel>
    <asp:Panel ID="LoginPanel" runat="server">
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
                    <asp:Table ID="MessageTable" runat="server">
                        <asp:TableRow ID="TableRow1" runat="server">
                            <asp:TableCell ID="TableCell1" runat="server">
                                <asp:Label ID="RequiredLabel1" meta:resourcekey="RequiredLabel" CssClass="highlight" runat="server" Text="Label"></asp:Label>
                                &nbsp;
                                <asp:Literal ID="MessageTitleLiteral" meta:resourcekey="MessageTitleLiteral" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell2" runat="server">
                                <asp:TextBox ID="MessageTitle" CssClass="messageinp" meta:resourcekey="MessageTitle" MaxLength ="25" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="MessageTitleRequired"  meta:resourcekey="MessageTitleRequired" Display="Dynamic" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="MessageTitle"></asp:RequiredFieldValidator>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="TableRow2" runat="server">
                            <asp:TableCell ID="TableCell3" runat="server">
                                <asp:Label ID="RequiredLabel2" meta:resourcekey="RequiredLabel" CssClass="highlight" runat="server" Text="Label"></asp:Label>
                                &nbsp;
                                <asp:Literal ID="MessageContentLiteral" meta:resourcekey="MessageContentLiteral" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell4" runat="server">
                                <asp:TextBox ID="MessageContent" CssClass="messagebox" meta:resourcekey="MessageContent" MaxLength ="150" TextMode="MultiLine" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="MessageContentRequired"  meta:resourcekey="MessageContentRequired" Display="Dynamic" runat="server" ErrorMessage="RequiredFieldValidator"　ControlToValidate="MessageContent"></asp:RequiredFieldValidator>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="TableRow3" runat="server">
                            <asp:TableCell ID="TableCell5" runat="server">
                                <asp:HiddenField ID="FieldNum" runat="server"/>
                                <asp:HiddenField ID="MenuId" runat="server" />
                                <span id="messageSubmitSpan">
                                <asp:HiddenField ID="IsMessageSubmit" runat="server"/>
                                </span> </asp:TableCell>
                            <asp:TableCell ID="TableCell6" runat="server">
                                <asp:Button ID="SubmitButton" meta:resourcekey="SubmitButton" OnClientClick="MessageSubmit();" CssClass="btn" runat="server" Text="Button" OnClick="SubmitButton_Click"  />
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <asp:Panel ID="MessageSendPanel" runat="server" Visible="false" EnableViewState="False">
                        <div class="sendMsgBox">
                            <asp:Literal ID="SendMsgLiteral" meta:resourcekey="SendMsgLiteral" runat="server"></asp:Literal>
                        </div>
                        </asp:Panel>
                </div>
            </div>
            <div class="bl"></div>
            <div class="br"></div>
            <div class="bm"></div>
        </div>
        </asp:Panel>
</asp:Content>
