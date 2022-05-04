<%@ Page Language="C#" MasterPageFile="~/Master/Default/Page.master" AutoEventWireup="true" CodeBehind="Limit.aspx.cs" Inherits="WangQi.ERP.Web.Limit" Title="无标题页" %>
<%@ Register Src="~/Controls/MemberLogin.ascx" TagPrefix="UC" TagName="MemberLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Side" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="siteMapPath" >
        <asp:Literal ID="SiteMapPath" runat="server" EnableViewState="False" ></asp:Literal>
    </div>
    <asp:Label Font-Bold ="true" Font-Size ="Medium" ForeColor ="red" ID ="lbMessage" meta:resourcekey="lbMessage" Text ="" runat ="server" ></asp:Label>
</asp:Content>
