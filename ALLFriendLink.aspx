<%@ Page Language="C#" MasterPageFile="~/Master/Default/Page.master" AutoEventWireup="true" CodeBehind="ALLFriendLink.aspx.cs" Inherits="WangQi.ERP.Web.ALLFriendLink" Title="无标题页" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Side" runat="server"></asp:Content>

<asp:Content ID ="Content2" ContentPlaceHolderID ="MainContent" runat ="server" >
    <div class="siteMapPath" >
        <asp:Literal ID="SiteMapPath" runat="server" EnableViewState="False"></asp:Literal>
    </div>
    <div class="mframe">
        <div class="tl"></div>
        <div class="tr"></div>
        <div class="tm"> <span class="tt">
            <asp:Literal ID="PageMainContentTitle" runat="server" EnableViewState="False"></asp:Literal>
            </span></div>
        <div class="pack">
            <div class="ml"></div>
            <div class="mr"></div>
            <div class="mm">
            
                    <asp:GridView ID="gvfriendlink" runat="server" AutoGenerateColumns="False" Width ="100%" PageSize ="8" AllowPaging ="false" CssClass="bor" OnPageIndexChanging="gvfriendlink_PageIndexChanging">
                        <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="Url" DataTextField="Title" HeaderText="<%$ Resources:WebResourcesGlobal, AllFriendLinkUrl %>" />
                        <asp:TemplateField HeaderText="Logo">
                            <ItemTemplate> <%#System.IO.File.Exists(Server.MapPath(DataBinder.Eval(Container.DataItem, "LogoPath").ToString())) ? "<img id=\"igPic\" runat=\"server\" src ='" +VirtualPathUtility.ToAbsolute(DataBinder.Eval(Container.DataItem, "LogoPath").ToString()) + "'/>" : ""%> </ItemTemplate>
                        </asp:TemplateField>
                        </Columns>
                        
                        <PagerSettings FirstPageText="" LastPageText="" NextPageText="" PreviousPageText=""/>
                        <PagerStyle CssClass="pager" />
                    </asp:GridView>

            </div>
        </div>
        <div class="bl"></div>
        <div class="br"></div>
        <div class="bm"></div>
    </div>
</asp:Content>