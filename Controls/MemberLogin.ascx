<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MemberLogin.ascx.cs" Inherits="WangQi.ERP.Web.Controls.MemberLogin" %>

<asp:Panel ID="LoginPanel" runat="server">
<ul class='memberLoginUl<%=Type %>'>
<li>
    <asp:Label ID="MemberNameLabel" runat="server" meta:resourcekey="MemberNameLabel" EnableViewState="False"></asp:Label>
    :
    <asp:TextBox ID="MemberName" runat="server" MaxLength="16" meta:resourcekey="MemberName" EnableViewState="False" CssClass="inputbg" Width="80px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="MemberNameRequired" runat="server" Display="Dynamic" ControlToValidate="MemberName" meta:resourcekey="MemberNameRequired" EnableClientScript="False" EnableViewState="False" ValidationGroup="MemberLogin">*</asp:RequiredFieldValidator>
    </li><li>
    <asp:Label ID="PasswordLabel" runat="server" meta:resourcekey="PasswordLabel" EnableViewState="False"></asp:Label>
    :
    <asp:TextBox ID="Password" runat="server" MaxLength="16" meta:resourcekey="Password" EnableViewState="False" TextMode="Password" CssClass="inputbg" Width="80px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
              Display="Dynamic" meta:resourcekey="PasswordRequired" EnableClientScript="False" ValidationGroup="MemberLogin">*</asp:RequiredFieldValidator>
              </li><li>
    <span id="CodeValide" runat="server">
    <asp:Label ID="CodeLabel" runat="server" meta:resourcekey="CodeLabel" EnableViewState="False"></asp:Label>
    :
    <asp:TextBox ID="Code" runat="server" Columns="4" CssClass="inputbg" MaxLength="4" meta:resourcekey="Code" EnableViewState="False"></asp:TextBox>
    <asp:RequiredFieldValidator ID="CodeRequired" runat="server" ControlToValidate="Code"
              Display="Dynamic" EnableClientScript="False" meta:resourcekey="CodeRequired" ValidationGroup="MemberLogin">*</asp:RequiredFieldValidator>
    <asp:Image ID="CodeImg" runat="server" ImageUrl="~/Code.aspx" meta:resourcekey="CodeImg" CssClass="codeImg" />
    <asp:CustomValidator ID="CodeCustom" runat="server" Display="Dynamic" OnServerValidate="CodeCustom_ServerValidate" meta:resourcekey="CodeCustom" ControlToValidate="Code" ValidationGroup="MemberLogin">*</asp:CustomValidator>
    </span>
    </li><li>
    <asp:Button ID="LoginBt" runat="server" meta:resourcekey="LoginBt"  CssClass="btn" EnableViewState="False" OnClick="LoginBt_Click" ValidationGroup="MemberLogin" />
    <asp:CustomValidator ID="LoginCustom" runat="server" Display="Dynamic" meta:resourcekey="LoginCustom"   OnServerValidate="LoginCustom_ServerValidate" ValidationGroup="MemberLogin">*</asp:CustomValidator>
    <asp:ValidationSummary ID="LoginErrorSummary" runat="server" meta:resourcekey="LoginErrorSummary" CssClass="loginErrorSummary" ForeColor="" EnableViewState="False" ValidationGroup="MemberLogin" />
    <asp:Button ID="RegMembers" runat="server" meta:resourcekey="RegMembers" CssClass="btn" OnClick="RegMembers_Click" Visible="False" />
    <asp:HyperLink ID="LostPaw" runat="server" meta:resourcekey="LostPaw" CssClass="LostPaw" Visible="False"></asp:HyperLink>
    </li></ul>
    </asp:Panel>
<asp:Panel ID="LoginBoxPanel" runat="server">
        <ul class='memberLoginUl<%=Type %>'>
            <li>
                <asp:Label ID="LoginBoxTitle" runat="server" meta:resourcekey="LoginOutTitle"></asp:Label>
            </li>
            <li>
                <asp:Label ID="LoginName" runat="server" meta:resourcekey="LoginName"></asp:Label>
            </li>
            <li>
                <asp:HyperLink ID="MemberControlLink" runat="server" meta:resourcekey="MemberControlLink"></asp:HyperLink>
            </li>
            <li>
                <asp:HyperLink ID="AdminLink" runat="server" Target ="_blank" meta:resourcekey="AdminLink" NavigateUrl ="~/admin/Login.aspx"></asp:HyperLink>
            </li>
            <li>
                <asp:LinkButton ID="OutLinkButton" runat="server" meta:resourcekey="OutLinkButton" CausesValidation="false" OnClick="OutLinkButton_Click" CssClass="outLinkButton"></asp:LinkButton>
            </li>
        </ul>
    </asp:Panel>
