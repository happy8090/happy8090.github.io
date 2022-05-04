<%@ Page Language="C#" MasterPageFile="~/Master/Default/Page.master" AutoEventWireup="true" CodeBehind="ProductResult.aspx.cs" Inherits="WangQi.ERP.Web.ProductResult" Title="无标题页" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<%@ Register Src="~/Controls/MemberLogin.ascx" TagPrefix="UC" TagName="MemberLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Side" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="NoLoginPanel" runat="server" Visible="false" EnableViewState="False">
        <asp:Label ID="PlealseLogin" runat="server" CssClass="plealseLogin" Text="" ></asp:Label>
        <UC:MemberLogin ID="MemberLogin1" runat="server" EnableViewState="false" />
        <asp:HiddenField ID ="hidden" runat ="server" Value="" />
        </asp:Panel>
    <asp:Panel ID="LoginPanel" runat="server" EnableViewState="False">
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
                    <asp:DataList ID="ProductList" runat="server" EnableViewState="False" CssClass="productList" Width="100%">
                        <HeaderTemplate>
                            <asp:Label ID="ProductListTitle" runat="server" CssClass="productListTitle"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <div class="productImage"> <a href ='<%#WangQi.ERP.WebsiteData. Website.IsURLRewriter() ? String.Format("/D3-{0}-{2}/{1}"+WangQi.ERP.WebsiteData.Function.GetPostfixName(),Eval("ProductId").ToString(),Eval("FileName").ToString(),WangQi.ERP.WebsiteData. Website.GetLanguage()) : String.Format("ProductDetail.aspx?id={0}&fileName={1}&Language={2}",Eval("ProductId").ToString(),Eval("FileName").ToString(),WangQi.ERP.WebsiteData. Website.GetLanguage()) %>'>
                                <asp:Image ID="SmallImage" CssClass="productImage" Width="<%# new Unit(_width)%>" Height="<%# new Unit(_height)%>"  runat="server" ImageUrl='<%# Bind("PicPathSmall") %>' AlternateText='<%# Bind("ProductName") %>'  />
                                </a> </div>
                            <div class="productText">
                                <div class="productNameBox">
                                    <asp:Label ID="ClassName" CssClass="productClassName" runat="server" Text='<%# String.Format("[{0}]",Eval("ClassName").ToString()) %>'></asp:Label>
                                    <asp:HyperLink ID="ProductName" CssClass="productName" runat="server" NavigateUrl='<%#WangQi.ERP.WebsiteData. Website.IsURLRewriter() ? String.Format("D3-{0}-{2}/{1}"+WangQi.ERP.WebsiteData.Function.GetPostfixName(),Eval("ProductId").ToString(),Eval("FileName").ToString(),WangQi.ERP.WebsiteData. Website.GetLanguage()) : String.Format("~/ProductDetail.aspx?id={0}&fileName={1}&Language={2}",Eval("ProductId").ToString(),Eval("FileName").ToString(),WangQi.ERP.WebsiteData. Website.GetLanguage()) %>' Text='<%# WangQi.ERP.WebsiteData.Strings.CutLenStr(Eval("ProductName").ToString(),_titleLength) %>' ToolTip='<%# Eval("ProductName") %>'></asp:HyperLink>
                                </div>
                                <div  class="productNumberBox">
                                    <asp:Label ID="ProductNumberLabel" meta:resourcekey="ProductNumberLabel" CssClass="productNumberLabel" EnableViewState="False" runat="server" Text=""></asp:Label>
                                    <asp:Label ID="ProductNumber" runat="server" Text='<%# Eval("ProductNumber") %>' CssClass="productNumber" ></asp:Label>
                                </div>
                                <div  class="priceBox">
                                    <asp:Label ID="PriceLabel" meta:resourcekey="PriceLabel" CssClass="priceLabel" EnableViewState="False" runat="server" Text="" Visible='<%#_isshowprice%>'></asp:Label>
                                    <asp:Label ID="Price" runat="server" Text='<%# _moneyUnit+Convert.ToSingle(Eval("Price")).ToString(".00") %>' CssClass="price" Visible='<%#_isshowprice%>'></asp:Label>
                                </div>
                                <div class="productShortContentBox">
                                    <asp:Label ID="ProductShortContent" CssClass="productShortContent" runat="server" Text='<%# WangQi.ERP.WebsiteData.Strings.CutLenStr(Eval("ProductShortContent").ToString(),_shortContentLength) %>'></asp:Label>
                                </div>
                                <div class="cartButtonBox">
                                    <asp:Button ID="CartButton" OnClientClick='<%# String.Format("return CartOpen({0},{1});",Eval("ProductId").ToString(),WangQi.ERP.WebsiteData. Website.GetLanguage()) %>' meta:resourcekey="CartButton" CssClass="cartButton" runat="server" EnableViewState="False" CausesValidation="False" UseSubmitBehavior="False" Visible='<%#_isshowbuybutton%>' />
                                </div>
                            </div>
                        </ItemTemplate>
                        <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
            Font-Underline="False" CssClass="productItem" />
                        <AlternatingItemStyle CssClass="productAlternating" />
                        <SeparatorStyle CssClass="productSeparator" />
                        <HeaderStyle CssClass="productHeader" />
                    </asp:DataList>
                    <div class="pager">
                        <webdiyer:AspNetPager ID="ProductListPager" runat="server" AlwaysShow="True" UrlPaging="true" EnableUrlRewriting="false" OnPageChanged="ProductListPager_PageChanged" ShowBoxThreshold="20" EnableViewState="False" InputBoxClass="pagerInputBox" OnPageChanging="ProductListPager_PageChanging" SubmitButtonClass="pagerSubmitButton" CurrentPageButtonClass="current"> </webdiyer:AspNetPager>
                    </div>
                    <asp:Label ID="lbMessage" runat ="server" Text ="" meta:resourcekey="lbMessage" Visible ="false"></asp:Label>
                </div>
            </div>
            <div class="bl"></div>
            <div class="br"></div>
            <div class="bm"></div>
        </div>
        </asp:Panel>
</asp:Content>
