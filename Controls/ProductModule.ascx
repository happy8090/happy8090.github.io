<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProductModule.ascx.cs" Inherits="WangQi.ERP.Web.Controls.ProductModule" %>
<%@ Register Src="More.ascx" TagName="More" TagPrefix="uc1" %>

<asp:DataList ID="ddlAllCategory" runat="server" DataKeyField="MenuId" OnItemDataBound="ddlAllCategory_ItemDataBound" Width="100%">
    <ItemTemplate>
        <div class="mframe">
            <div class="tl"></div>
            <div class="tr"></div>
            <div class="tm">
                <div class="more">
                    <uc1:More ID="More1" runat="server"  FileName ='<%#DataBinder.Eval(Container.DataItem,"FileName")%>' MyAttributer='<%#DataBinder.Eval(Container.DataItem,"Attributer")%>'/>
                </div>
                <h2 class="tt">
                <asp:Label ID="Label1" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"MenuName") %>'></asp:Label>
                <asp:HiddenField ID="hfMenuId" runat="server" Value ='<%#DataBinder.Eval(Container.DataItem,"MenuId") %>' />
                </h2> </div>
            <div class="pack">
                <div class="ml"></div>
                <div class="mr"></div>
                <div class="mm">
                    <asp:DataList ID="ddlCategory" runat="server" CssClass="productlist" EnableViewState="False" RepeatDirection ="Horizontal" Width="100%">
                        <ItemTemplate>
                            <div class="productImage"> <a href='<%#WangQi.ERP.WebsiteData.Website.IsURLRewriter() ? String.Format("/{1}-D3-{0}-{2}"+WangQi.ERP.WebsiteData.Function.GetPostfixName(),Eval("ProductId").ToString(),Eval("FileName").ToString(),WangQi.ERP.WebsiteData.Website.GetLanguage()) : String.Format("/ProductDetail.aspx?id={0}&fileName={1}&Language={2}",Eval("ProductId").ToString(),Eval("FileName").ToString(),WangQi.ERP.WebsiteData.Website.GetLanguage()) %>'>
                                 <%# DataBinder.Eval(Container.DataItem, "PicPathSmall").ToString().IndexOf("http://") > -1 ? "<img src='" + DataBinder.Eval(Container.DataItem, "PicPathSmall") + "' Width='" + new Unit(_width) + "' Height='" + new Unit(_height) + "' AlternateText='" + DataBinder.Eval(Container.DataItem, "ProductName") + "' />" : System.IO.File.Exists(System.Web.HttpContext.Current.Server.MapPath(DataBinder.Eval(Container.DataItem, "PicPathSmall").ToString())) ? "<img src='" + DataBinder.Eval(Container.DataItem, "PicPathSmall") + "' Width='" + new Unit(_width) + "' Height='" + new Unit(_height) + "' AlternateText='" + DataBinder.Eval(Container.DataItem, "ProductName") + "' />" : ""%></a> </div>
                            <div class="productText">
                                <div class="productNameBox">
                                    <asp:Label ID="ClassName" CssClass="productClassName" runat="server" Text='<%# String.Format("[{0}]",Eval("ClassName").ToString()) %>' Visible="<%# _showClassName %>"></asp:Label>
                                    <asp:HyperLink ID="ProductName" CssClass="productName" runat="server" NavigateUrl='<%#WangQi.ERP.WebsiteData.Website.IsURLRewriter() ? String.Format("~/{1}-D3-{0}-{2}"+WangQi.ERP.WebsiteData.Function.GetPostfixName(),Eval("ProductId").ToString(),Eval("FileName").ToString(),WangQi.ERP.WebsiteData.Website.GetLanguage()) : String.Format("~/ProductDetail.aspx?id={0}&fileName={1}&Language={2}",Eval("ProductId").ToString(),Eval("FileName").ToString(),WangQi.ERP.WebsiteData.Website.GetLanguage()) %>' Text='<%# WangQi.ERP.WebsiteData.Strings.CutLenStr(Eval("ProductName").ToString(),_titleLength) %>' ToolTip='<%# Eval("ProductName") %>' Target="_blank"></asp:HyperLink>
                                </div>
                                <div class="productNumberBox">
                                    <asp:Label ID="ProductNumberLabel" meta:resourcekey="ProductNumberLabel" CssClass="productNumberLabel" EnableViewState="False" runat="server" Text=""></asp:Label>
                                    <asp:Label ID="ProductNumber" runat="server" Text='<%# Eval("ProductNumber") %>' CssClass="productNumber" Visible="<%# _showProductNumber %>"></asp:Label>
                                </div>
                                <div class="priceBox">
                                    <asp:Label ID="PriceLabel" meta:resourcekey="PriceLabel" CssClass="priceLabel" EnableViewState="False" runat="server" Text="" Visible="<%# _isshowprice %>"></asp:Label>
                                    <asp:Label ID="Price" runat="server" Text='<%# _moneyUnit+Convert.ToSingle(Eval("Price")).ToString(".00") %>' CssClass="price" Visible="<%# _isshowprice %>"></asp:Label>
                                </div>
                                <div class="productShortContent">
                                    <asp:Literal ID="ProductShortContent" runat="server" Text='<%#WangQi.ERP.WebsiteData. Strings.CutLenStr(Eval("ProductShortContent").ToString(),_shortContentLength) %>'></asp:Literal>
                                </div>
                                <div class="cartButtonBox">
                                    <asp:Button ID="CartButton" OnClientClick='<%# String.Format("return CartOpen({0},{1});",Eval("ProductId").ToString(),WangQi.ERP .WebsiteData .Website .GetLanguage()) %>' meta:resourcekey="CartButton" CssClass="cartButton" runat="server" EnableViewState="False" CausesValidation="False" UseSubmitBehavior="False" Visible='<%#_isshowbuybutton%>' />
                                               <input type ="submit" onclick ='javascript:location.href=\"<%#WangQi.ERP.WebsiteData.Website.IsURLRewriter() ? String.Format("/{1}-D3-{0}-{2}"+WangQi.ERP.WebsiteData.Function.GetPostfixName(),Eval("ProductId").ToString(),Eval("FileName").ToString(),WangQi.ERP.WebsiteData.Website.GetLanguage()) : String.Format("/ProductDetail.aspx?id={0}&fileName={1}&Language={2}",Eval("ProductId").ToString(),Eval("FileName").ToString(),WangQi.ERP.WebsiteData.Website.GetLanguage()) %>\"' causesvalidation="false" enableviewstate ="false" class ="cartButton"  />  

                                </div>
                            </div>
                        </ItemTemplate>
                        <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
Font-Underline="False" CssClass="productItem" />
                        <AlternatingItemStyle CssClass="productAlternating" />
                        <SeparatorStyle CssClass="productSeparator" />
                        <HeaderStyle CssClass="productHeader" />
                    </asp:DataList>
                </div>
            </div>
            <div class="bl"></div>
            <div class="br"></div>
            <div class="bm"></div>
        </div>
    </ItemTemplate>
</asp:DataList>
