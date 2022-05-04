<%@ Page Language="C#" MasterPageFile="~/Master/Default/Page.master" AutoEventWireup="true" CodeBehind="UserOfCompany.aspx.cs" Inherits="WangQi.ERP.Web.UserOfCompany" Title="无标题页" %>
<%@ Register TagPrefix="uc" TagName="MemberControlMenu" Src="~/Controls/MemberControlMenu.ascx"%>
<asp:Content ID="SideContent" ContentPlaceHolderID="Side" Runat="Server">
    <uc:MemberControlMenu ID="MemberControlMenu1" runat="server" />
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="siteMapPath" >
        <asp:Literal ID="SiteMapPath" runat="server" Text="" ></asp:Literal>
    </div>
    <div class="mframe">
        <div class="tl"></div>
        <div class="tr"></div>
        <div class="tm"> <span class="tt">
            <asp:Literal ID="MyLibrary" meta:resourcekey="MyLibrary" runat="server"></asp:Literal>
            </span></div>
        <div class="pack">
            <div class="ml"></div>
            <div class="mr"></div>
            <div class="mm f14">
                <asp:Label ID="Message"  meta:resourcekey="Message" CssClass="highlight" runat="server" Text=""></asp:Label>
                <table width="100%" cellpadding="6" cellspacing="0" border="0">
                    <tr>
                        <td width="20%" align="right"><asp:Literal ID="LiteralUserName" meta:resourcekey="LiteralUserName" runat="server"></asp:Literal></td>
                        <td><asp:Literal ID="txtFullName" runat="server"></asp:Literal></td>
                    </tr>
                    <tr>
                        <td align="right"><asp:Literal ID="LiteralDepart" meta:resourcekey="LiteralDepart" runat="server"></asp:Literal></td>
                        <td><asp:Literal ID="txtDepartment" runat="server"></asp:Literal></td>
                    </tr>
                    <tr>
                        <td align="right"><asp:Literal ID="LiteralTime" meta:resourcekey="LiteralTime" runat="server"></asp:Literal></td>
                        <td><%=DateTime.Now.ToShortDateString() %></td>
                    </tr>
                    <tr>
                        <td align="right"><asp:Literal ID="LiteralDesc" meta:resourcekey="LiteralDesc" runat="server"></asp:Literal></td>
                        <td><asp:RadioButtonList ID="rblMemberState" runat="server" RepeatDirection="Horizontal"
            RepeatLayout="Flow"> </asp:RadioButtonList></td>
                    </tr>
                    <tr>
                        <td align="right"></td>
                        <td><asp:Button ID="btnSave" meta:resourcekey="btnSave" CssClass="btn" runat="server" OnClick="btnSave_Click" Text="" /></td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="bl"></div>
        <div class="br"></div>
        <div class="bm"></div>
    </div>
</asp:Content>
