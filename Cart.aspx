<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="WangQi.ERP.Web.Cart" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
<title meta:resourcekey="CartPageTtitle" ></title>
<link meta:resourcekey="CartCssFile" href="" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
    <div class="cartTtitle">
        <asp:Literal ID="CartTtitle" meta:resourcekey="CartTtitle"  runat="server"></asp:Literal>
    </div>
    <div class="goodsListBox">
        <asp:GridView ID="GoodsList" meta:resourcekey="GoodsList" runat="server" AutoGenerateColumns="False" CssClass="goodsList" DataKeyNames="ProductId" Width="100%" OnRowCommand="GoodsList_RowCommand" OnRowUpdating="GoodsList_RowUpdating" OnRowDeleting="GoodsList_RowDeleting">
            <Columns>
            <asp:TemplateField HeaderText="商品货号" SortExpression="ProMember">
                <EditItemTemplate> &nbsp; </EditItemTemplate>
                <HeaderTemplate>
                    <asp:Literal ID="ProductNumberHeader" meta:resourcekey="ProductNumberHeader" runat="server"></asp:Literal>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="ProductNumber" runat="server" Text='<%# Bind("ProductNumber") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="商品名称" SortExpression="ProductName">
                <EditItemTemplate> </EditItemTemplate>
                <ItemTemplate> &nbsp;
                    <asp:HyperLink ID="ProductName" runat="server" CssClass="productName" NavigateUrl='<%#WangQi.ERP.WebsiteData.Website.IsURLRewriter() ? String.Format("D3-{0}-{2}/{1}"+WangQi.ERP.WebsiteData.Function.GetPostfixName(),Eval("ProductId").ToString(),Eval("FileName").ToString(),WangQi.ERP.WebsiteData.Website.GetLanguage()) : String.Format("~/ProductDetail.aspx?id={0}&fileName={1}&Language={2}",Eval("ProductId").ToString(),Eval("FileName").ToString(),WangQi.ERP.WebsiteData.Website.GetLanguage())%>'
                            Text='<%# Eval("ProductName") %>'
                            ToolTip='<%# Eval("ProductName") %>' Target="_blank"></asp:HyperLink>
                </ItemTemplate>
                <HeaderTemplate>
                    <asp:Literal ID="ProductNameHeader" meta:resourcekey="ProductNameHeader" runat="server"></asp:Literal>
                </HeaderTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="商品价格" SortExpression="Price">
                <EditItemTemplate> &nbsp; </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Price" runat="server" Text='<%# _moneyUnit+Convert.ToSingle(Eval("Price")).ToString(".00") %>'></asp:Label>
                </ItemTemplate>
                <HeaderTemplate>
                    <asp:Literal ID="PriceHeader"  meta:resourcekey="PriceHeader" runat="server"></asp:Literal>
                </HeaderTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="数量" SortExpression="num">
                <EditItemTemplate> &nbsp; </EditItemTemplate>
                <ItemTemplate> &nbsp;
                    <asp:TextBox ID="GoodsNum" runat="server" CssClass="goodsNum" Text='<%#  WangQi.ERP.WebsiteData.CartObj.GetGoodsNum(Eval("ProductId").ToString()).ToString() %>'></asp:TextBox>
                    <asp:Button ID="GoodsNumChangeButton" CausesValidation="True" CommandName="Update" meta:resourcekey="GoodsNumChangeButton" runat="server" CssClass="goodsBt" />
                </ItemTemplate>
                <HeaderTemplate>
                    <asp:Literal ID="GoodsNumHeader" meta:resourcekey="GoodsNumHeader" runat="server"></asp:Literal>
                </HeaderTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="小计">
                <EditItemTemplate> &nbsp; </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Subtotal" runat="server" Text='<%# _moneyUnit+(WangQi.ERP.WebsiteData.CartObj.GetGoodsNum(Eval("ProductId").ToString())*Convert.ToSingle(Eval("Price"))).ToString(".00") %>'></asp:Label>
                </ItemTemplate>
                <HeaderTemplate>
                    <asp:Literal ID="SubtotalHeader" meta:resourcekey="SubtotalHeader" runat="server"></asp:Literal>
                </HeaderTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="删除">
                <ItemTemplate>
                    <asp:Button ID="DelButton" CommandName="Delete" runat="server" meta:resourcekey="Del" CausesValidation="false"
                            Text="" CssClass="goodsBt"  />
                </ItemTemplate>
                <HeaderTemplate>
                    <asp:Literal ID="DelHeader" meta:resourcekey="Del" runat="server"></asp:Literal>
                </HeaderTemplate>
            </asp:TemplateField>
            </Columns>
            <RowStyle CssClass="row" />
            <PagerStyle CssClass="pager" />
            <HeaderStyle CssClass="header" />
            <AlternatingRowStyle CssClass="alternatingRow" />
        </asp:GridView>
    </div>
    <div class="btBox">
        <asp:Label ID="Gross" CssClass="gross" runat="server" Text=""></asp:Label>
        <asp:Button ID="ExitButton" OnClientClick="window.opener = null;window.close(); return false;" meta:resourcekey="ExitButton" runat="server" Text="" />
        <asp:Button ID="CharButton" meta:resourcekey="CharButton" runat="server" Text="" OnClick="CharButton_Click" />
        <asp:Button ID="NextButton" meta:resourcekey="NextButton" runat="server" Text=""  OnClick ="NextButton_Click" />
        <%--        <asp:Button ID="NextButton" meta:resourcekey="NextButton" runat="server" Text=""/>
--%>
    </div>
</form>
</body>
</html>
