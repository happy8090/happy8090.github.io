<%@ Page Language="C#" MasterPageFile="~/Master/Default/Page.master" AutoEventWireup="true" CodeBehind="SiteMap.aspx.cs" Inherits="WangQi.ERP.Web.SiteMap" Title="无标题页" %>
<%@ Register Src="~/Controls/MenuMap.ascx" TagPrefix="UC" TagName="MenuMap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="mframe">
        <div class="tl"></div>
        <div class="tr"></div>
        <div class="tm"> <span class="tt"> <asp:Literal ID="Literal1" runat="server" meta:resourcekey="Literal1"></asp:Literal> </span></div>
        <div class="pack">
            <div class="ml"></div>
            <div class="mr"></div>
            <div class="mm">
                <UC:MenuMap ID="MenuMap1" runat="server" />
            </div>
        </div>
        <div class="bl"></div>
        <div class="br"></div>
        <div class="bm"></div>
    </div>
</asp:Content>
