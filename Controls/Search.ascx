<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Search.ascx.cs" Inherits="WangQi.ERP.Web.Controls.Search" %>

<div class="Search">
    <asp:Label ID="message" runat ="server" Text ="" meta:resourcekey="Pmessage" Visible ="false"></asp:Label>
    <asp:Label ID ="lbpagemessage" runat ="server" Text=""  meta:resourcekey="lbpagemessage"></asp:Label>
    <asp:DropDownList ID="ddlCategory" runat="server" DataTextField ="CategoryName" DataValueField ="CategoryValue"> </asp:DropDownList>
    <asp:Panel ID="Product" runat="server">
        <table cellpadding="3" cellspacing="0" border="0">
            <tr>
                <td><asp:Label ID="lbPClass" runat ="server" Text ="" meta:resourcekey="lbPClass"></asp:Label>
                    <asp:DropDownList ID="ProductClass" runat="server"> </asp:DropDownList>
                    <asp:HiddenField ID="PSearch" runat="server" />
                </td>
                <td><asp:Label ID ="lbPContent" runat ="server" meta:resourcekey="lbPContent"></asp:Label>
                </td>
                <td><asp:TextBox CssClass="inputbg" ID="ProductContent" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rf1" ControlToValidate ="ProductContent" ValidationGroup ="1" runat="server" ErrorMessage="" meta:resourcekey="RequiredFieldValidator1" ></asp:RequiredFieldValidator>
                </td>
                <td><asp:Button CssClass="btn" ID="btnPsearch" runat="server" meta:resourcekey="btnPsearch" Text="" ValidationGroup ="1" OnClick="btnPsearch_Click" />
                </td>
            </tr>
        </table>
        </asp:Panel>
    <asp:Panel ID="News" runat="server">
        <table cellpadding="3" cellspacing="0" border="0">
            <tr>
                <td><asp:Label ID="lbNClass" runat ="server" Text ="" meta:resourcekey="lbPClass"></asp:Label>
                    <asp:DropDownList ID="NewsClass" runat="server"> </asp:DropDownList>
                    <asp:HiddenField ID="NSearch" runat="server" />
                </td>
                <td><asp:Label ID ="lbNContent" runat ="server" meta:resourcekey="lbNContent" ></asp:Label>
                </td>
                <td><asp:TextBox CssClass="inputbg" ID="NewsContent" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rf2"  ControlToValidate ="NewsContent" ValidationGroup ="2" runat="server" ErrorMessage="" meta:resourcekey="RequiredFieldValidator1"></asp:RequiredFieldValidator>
                </td>
                <td><asp:Button CssClass="btn" ID="btnNSearch" runat="server" ValidationGroup ="2" meta:resourcekey="btnNSearch" Text="" OnClick="btnNSearch_Click" /></td>
            </tr>
        </table>
        </asp:Panel>
    <asp:Panel ID="Pic" runat="server">
        <table cellpadding="3" cellspacing="0" border="0">
            <tr>
                <td><asp:Label ID="lbPicClass" runat ="server" Text ="" meta:resourcekey="lbPClass"></asp:Label>
                    <asp:DropDownList ID="PicClass" runat="server"> </asp:DropDownList>
                    <asp:HiddenField ID="PicSearch" runat="server" />
                </td>
                <td><asp:Label ID ="lbPicContent" runat ="server" meta:resourcekey="lbPicContent" ></asp:Label>
                </td>
                <td><asp:TextBox CssClass="inputbg" ID="PicContent" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rf3" ControlToValidate ="PicContent" ValidationGroup ="3" runat="server" ErrorMessage="" meta:resourcekey="RequiredFieldValidator1"></asp:RequiredFieldValidator>
                </td>
                <td><asp:Button CssClass="btn" ID="btnPicSearch" runat="server" Text=""  ValidationGroup ="3" meta:resourcekey="btnPicSearch" OnClick="btnPicSearch_Click" /></td>
            </tr>
        </table>
        </asp:Panel>
</div>
