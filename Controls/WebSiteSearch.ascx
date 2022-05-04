<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebSiteSearch.ascx.cs" Inherits="WangQi.ERP.Web.Controls.WebSiteSearch" %>       
<asp:Literal ID="Content" runat="server" meta:resourcekey="Content"></asp:Literal>
        <br />
<asp:Literal ID="KeyWord" runat="server" meta:resourcekey="KeyWord"></asp:Literal>
<asp:TextBox runat="server" ID="txtKeyWord" CssClass="inputbg" Width="300px"></asp:TextBox>
        <asp:RadioButtonList ID="rbtnSearchType" runat="server" RepeatDirection="Horizontal">
        </asp:RadioButtonList>   
 
         <asp:Button ID="BTSearch" runat="server" meta:resourcekey="BTSearch" CausesValidation="False" OnClick="Button1_Click" CssClass="btn" />