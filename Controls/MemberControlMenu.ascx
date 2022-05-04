<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MemberControlMenu.ascx.cs" Inherits="WangQi.ERP.Web.Controls.MemberControlMenu" %>

<div class="lframe">
    <div class="tl"></div>
    <div class="tr"></div>
    <div class="tm"> <span class="tt">
        <asp:Label ID="SideMemberControlTitle" runat="server" meta:resourcekey="SideMemberControlTitle" CssClass="sideMemberControlTitle"></asp:Label>
        </span></div>
    <div class="pack">
        <div class="ml"></div>
        <div class="mr"></div>
        <div class="mm">
            <ul class="sideList">
                <li>
                    <asp:HyperLink ID="EditLink" meta:resourcekey="EditLink" runat="server" NavigateUrl=""></asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="OrderLink" meta:resourcekey="OrderLink" runat="server" NavigateUrl=""></asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="MessageLink" meta:resourcekey="MessageLink" runat="server" NavigateUrl=""></asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="UserLink" meta:resourcekey="UsersLink" runat="server" NavigateUrl=""></asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="UserView" meta:resourcekey="UserView" runat="server" NavigateUrl=""></asp:HyperLink>
                </li>
                <li>
                    <asp:LinkButton ID="EditLinkButton" meta:resourcekey="EditLinkButton" CausesValidation="false" runat="server" OnClick="EditLinkButton_Click"></asp:LinkButton>
                </li>
            </ul>
        </div>
    </div>
    <div class="bl"></div>
    <div class="br"></div>
    <div class="bm"></div>
</div>
